# MGRAS video and sync hooks

What the IMPACT graphics side offers for swap and sync, external status, video into the framebuffer, and what the shipped
diagnostic checks. It is written for someone modelling the board so that SGI's own diagnostic and the shipped drivers run.
Everything here is a **software expectation** (what shipped code writes, reads, waits for or prints) unless a line says
otherwise; no board was read. Grades are the repository's: established, software expectation, inferred, unknown. The video
board side (VGI1, the TMI and CSC paths, the Digital Video driver) is in chips `devices/octane-digital-video/` and is
referred to, not repeated.

## Sources

| Short name | Object | Where it is held (not committed) | sha256 |
|---|---|---|---|
| kernel objects | `mgras.o`, `mgras_init.o`, `mgras_tex.o`, `mgras_retrace.o` in `usr/cpu/sysgen/IP30boot/mgras.a`, and `rrm.o` beside it | the `6.5-base` tree of the extracted "IRIX 6.4 for Origin, Onyx2 and OCTANE" disc image | archive `6b6c19b5db366331489e36f461a5fbd03211ad96deed89957564f44b990772bc`; `mgras_init.o` `a8be0178ab325dd7...`, `mgras.o` `0381500045ddfe73...`, `mgras_tex.o` `326954dc91f36cef...`, `mgras_retrace.o` `21699d9d22c3cb56...`, `rrm.o` `46c7d2bfd0c46e57...` |
| diagnostic | `usr/stand/ide`, IP30 build of Feb 5, 1997 | same tree | `43237354b4ad84ab9a8328d8b2109b1fccd115c9b00d8f6b5e0f8a10e747659e` (addresses are the low 32 bits of the ELF's virtual addresses; file offset = `0x107000 + address - 0x20917000` for data, `address - 0x20800000` for text) |
| X server | `usr/lib/X11/dyDDX/impactpc.so`, `glx.so` | same tree | `impactpc.so` `1170547ecffb6c5246192c3e0e46dd2d2abaf64cb6f5888e1d0ef920a16985af`, `glx.so` `e66d346c787a5a1d62392fbc21e60050ca8404ed2993e55aa0596f2cecb5d3aa` |
| video driver | `srv.a` of the 6.5.30 `impactvideo` overlay (`IP30boot/srv.a`) | `owner-media/irix-6.5.30-ovl2/impactvideo_6530m` | `829bae1f9d5c57535068db5196960c641387792439cdfea764f9f2854d6f59fe` |

Kernel object addresses are text offsets within the named object. The Origami firmware registry was not consulted, so no
registry entry names are given; the paths and hashes above identify the images. The older gr4 pages cite the IP27 and IP28
builds of the same objects; the routines read here agree with them where both were read.

## 1. Swap and sync

### 1.1 What exists

| Feature | Present on IMPACT? | Grade | Basis |
|---|---|---|---|
| Swap at retrace | yes, by software ordering plus the XMAP buffer select | established | gr4 [HQ4 host interface](../../software/kernel/hq4-host-interface.md#buffer-swap-command) and [retrace](../../software/kernel/hq4-host-interface.md#retrace-interrupt) |
| A hardware swap-ready line or swap barrier | no sign of one | inferred | `glxQueryMaxSwapBarriersSGIX` (`glx.so` `0x5feebf78`) compares four characters of a name in the screen record with `kona` (the compare routine is called through the GOT and was not identified, so a string compare is inferred) and reports one barrier on a match, zero otherwise; no MGRAS routine reads or writes a swap-ready status |
| Swap groups | software only, in the X server's double-buffer layer | inferred | `glx.so` advertises `GLX_SGIX_swap_group`; `impactpc.so` imports `dbcNoticeSwapInitiated` and `dbcDelayedSwapBufferDone` from the server core (the call sites were not read); no routine of the driver names a group |
| Video sync counter (`GLX_SGI_video_sync`) | yes, served from the retrace handler | software expectation | `rrm.o` `RRM_WaitVideoSync` and `rrmWaitVideoSync` queue a waiter with a count and a remainder; `rrmValidateVideoSync` wakes it, and `MgrasRetraceHandler` (`mgras_retrace.o` `0xc4`) calls it from both of its validation paths (`0x4ec`, `0x638`) |
| Genlock (slave to an external reference) and sync output | yes, one request | established | below |
| Framelock across boards | only the same request, driven by the X video-channel extension | inferred | below |
| External sync input status (locked or not) | no readable status found | unknown | below |

### 1.2 The genlock request

- **Request number.** `0x6d670014`. The X server names it in an error string, `MGRAS_SET_GENLOCK Failed %d`, in
  `mgrasSetScrnGlock` (`impactpc.so` `0x5e2c3534`). Established: the kernel's request switch compares against it and
  branches to a handler that copies in eight bytes (`mgras.o` `0x6170` to `0x6198`) and calls `MgrasSetGenlock`
  (`mgras.o` `0x6d38`) under the board mutex (id `0x19`).
- **Argument record.** Two words. The first is 1 when the caller's second argument is not -1 and 0 otherwise; the second is
  the screen's "framelock source" and must be 0 or 1, otherwise the X server logs `Illegal framelock_source specified` and
  sends nothing (`impactpc.so` `0x5e2c3570` to `0x5e2c3590`, `0x5e2c35d8`). The source value is held in the video-channel
  private record of the screen and is set through a pair of get and set entries for parameter 0 (`mgrasSetPltParam` and
  `mgrasQryPltParam`, 8-byte records). Which Xvc request reaches them is not read here. Software expectation.
- **Kernel meaning.** `MgrasSetGenlock(board, a1, a2)` (`mgras_init.o` `0x6c24`): `a1` nonzero sets bit 5 of the kernel's
  16-bit shadow of VC3 register `0x1e`, zero clears it; `a2` does the same for bit 6. It waits for display-bus room
  (`0x020100` bits 4:0, the `(n + 1) >> 1 < 8` test the other VC3 writers use), writes the shadow to the VC3 register through
  the index-data port at `0x072038` as `0x1e000000 | (shadow << 8)`, then, again after room, writes the board configuration
  word at `0x072408`: `0x64000000` when `a1` is nonzero, `0x60000000` when it is zero. Established as the routine's words.
  So the first word of the record is the sync-output side (VC3 bit 5) and the second is the genlock-slave side (VC3 bit 6).
  What the X server's value 1 for the second word means on the wire (lock to the external input) follows from that and is
  inferred.
- **Names of the two VC3 bits.** [VC3.h](../vc3/VC3.h) calls bit 5 `GENSYNC` and bit 6 `GENLOCK`. The diagnostic prints
  those two names when it reads the bits back (below), which makes the names a software expectation rather than only a header
  reading; what the bits do inside the chip is unknown.

### 1.3 VC3 display control, as the software uses it

All writes are 32-bit stores of `0x1e000000 | (value << 8)` to `0x072038` (index in the top byte, the 16-bit value in bits
23:8; the same port the retrace enable uses, `HQ_VC3_RETRACE_OFFSET`). The kernel keeps the value in a global shadow and
never reads the register back (it reads only index `0x0b`, section 4); the diagnostic reads it back with a byte write of `0x1e` to `0x072008` and a 16-bit read of `0x0720b0`.

| Bit | Value | Who sets it | Notes | Grade |
|---|---|---|---|---|
| 0 | `0x01` | `MgrasEnableRetraceInterrupts` (`mgras_init.o` `0x6a98`, called from attach, `mgras.o` `0x2b6c`, and from a request handler at `0x6704`) | skipped when the kernel variable `SuppressRetraceIntr` is nonzero; [VC3.h](../vc3/VC3.h) calls it the retrace interrupt bit; that it gates a once-per-frame message is inferred in the HQ4 page | software expectation |
| 1 | `0x02` | `MgrasBlackoutTiming(board, flag)` (`0x6b18`) sets it for a nonzero flag and clears it for zero; the diagnostic's start-timing sets it with bits 4:2 | the routine's name says blackout; the diagnostic's start-timing sets the same bit with the other timing bits, so the polarity of the name is **unknown** | software expectation (writer), unknown (polarity) |
| 4:1 | `0x1e` | diagnostic start-timing (`ide` `0x20846050`) writes the whole nibble; stop-timing (`0x208460e0`) clears it with the mask `0xffe1` | with `0x1d000000` (cursor control 0) written last in both | software expectation |
| 5 | `0x20` | `MgrasSetGenlock` (`a1`); diagnostic genlock helper `0x208cbe40` (its second argument) | read back and printed `VC3 GENSYNC is set` | software expectation |
| 6 | `0x40` | `MgrasSetGenlock` (`a2`); diagnostic helper (its third argument) | read back and printed `VC3 GENLOCK is set` | software expectation |
| all | `0x00` | `MgrasEnableVideoTiming(board, 0)` (`0x6b94`) writes zero; a nonzero flag writes the shadow | called from `MgrasSetTiming` and `MgrasSetRSSTiming` (`mgras_init.o` `0x1630`, `0x1de8`, `0x1f28`) | software expectation |

VC3 index `0x1f` takes `0x0100`-form writes too: the diagnostic's PLL setup ends with `0x1f000100` and prints `VC3 Config
register is set to 1`, bit 0 being the unreset bit of [VC3.h](../vc3/VC3.h) (`ide` `0x208621ac`). Index `0x0b` is the vertical line
counter (section 4).

### 1.4 The board configuration word at `0x072408`

The word read for the product ID (see [board identity](board-identity.md)) also takes writes; the diagnostic's own command
`mg_cfg_wr -v[value]` stores `value << 24` there (`ide` `0x2084af4c`), and its string table calls the routine
`mgras_brdcfg_write`. Writers seen:

| Writer | Values (top byte shown) | Role | Grade |
|---|---|---|---|
| kernel timing set-up | `0xc8`, then `0xe8` or `0xe9` | display-clock set-up, see [display timing](../../software/kernel/display-timing.md) | established as words |
| kernel `MgrasSetGenlock` | `0x64` or `0x60` | after the VC3 bit write | established as words |
| diagnostic genlock helper (`ide` `0x208cbf30` to `0x208cbf44`) | `0x20` when its genlock argument is nonzero, `0x24` when zero | after the VC3 bit write | established as words |
| diagnostic pixel-clock programming (`ide` `0x20864270` and neighbours) | `0x62` then `0x60`, each followed by a short delay call (argument 50) | strobes bit 25 around serial writes to the pixel-clock doubler | inferred |

What each bit does is unknown except one: the diagnostic prints `Bit 3 is set to 1 -> DGTL_SYNC_OUT pulled up` in its DAC
PLL set-up (`ide` `0x20861f08`), and the kernel's two timing-time values both have top-byte bit 3 set. Reading: bit 27 of the
word is the digital sync output pull-up, **inferred** from the message text only. The kernel's and the diagnostic's genlock
writes disagree on bit 30 and on which argument drives bit 26, and neither shows a reason; which of them the board follows
is **unknown** (see the open questions below).

**Comparing the writers' values bit by bit** (top byte; every other byte of the word is zero in all writes seen):

| Value | Bits set | Who, when |
|---|---|---|
| `0x40` | 6 | kernel, start of timing set-up (`mgras_init.o` `0x1540`) and in `MgrasInitHQ` (`0x111c`) |
| `0xc8`, `0xe8`, `0xe9` | 7 6 3 / 7 6 5 3 / 7 6 5 3 0 | the IP27 kernel build's timing writes (see [display timing](../../software/kernel/display-timing.md)); not in this IP30 archive |
| `0x09` | 3 0 | diagnostic, NTSC/PAL token path (`ide` `0x20844f58`); bit 3 matches the `DGTL_SYNC_OUT pulled up` message |
| `0x60`, `0x62` | 6 5 / 6 5 1 | both: running value; the `0x62` pulses clock the pixel-clock doubler's serial program (`ide` `0x20864284`, kernel `0x71b4`) |
| `0x64` | 6 5 2 | kernel genlock, sync output on |
| `0x20`, `0x24` | 5 / 5 2 | diagnostic genlock, genlock input on / off |

Bit 29 (`0x20`) is set in every running value (`0x60`, `0x62`, `0x64`, `0x20`, `0x24`) and clear in the set-up values `0x40` and `0x09`. Bit 25 (`0x02`) is a strobe. Bit 26 (`0x04`) is the only bit the genlock writes vary. The two writers differ in two ways
the code does not explain: the kernel keeps bit 30 (`0x40`, set in the running value) and the diagnostic clears it, and
the kernel drives bit 26 from its **sync-output** argument (set when on) while the diagnostic drives it from its **genlock** argument
(set when off). The first difference is not a different board revision in any evidence read here (both routines come from
the same IP30 build family and neither tests a revision); the diagnostic is dated February 1997, the kernel archive 1998,
so a change of the field's meaning between board generations is possible but unsupported. Neither write is masked (each
stores the whole word). Verdict: **unknown**, graded so; settling it needs the register's behaviour on an IMPACT board, and
James's Octane2 is a VPro, not IMPACT, so no capture is possible on his systems.

### 1.5 Interrupts and the X and kernel paths

- The retrace interrupt, the swap-finish source and the swap command are in the HQ4 page and are not repeated: retrace is one
  of the four crosstalk interrupts the attach path connects, enabled by VC3 bit 0; swap goes through the CFIFO token `0x37`
  and the bit 10 source of the HQ4 interrupt block.
- The X server's swap path is `mgrasInitiateBufferSwap` (`impactpc.so` `0x5e2a4f84`) and `mgrasValidateSwapbuf`
  (`0x5e2a69c0`), with `RRM_MGR_SWAPBUF` as the kernel request. Swap groups and the delayed-swap logic live in the server core
  (the `dbc` entries above), so a group of windows on one board swaps through the same retrace-ordered path as a single window.
- No interrupt source is documented for external sync loss or acquisition, and none of the four connected handlers reads a
  sync status. Unknown whether the board has one.

### 1.6 What swap-group software and the diagnostic expect

- Swap-group software: nothing hardware-specific. Joining a group is a server-side list; the kernel sees ordinary swap requests.
  `glxQueryMaxSwapBarriersSGIX` returning zero on this board means clients are told there are no barriers.
- The diagnostic: no swap command and no interrupt. Its only frame-synchronous behaviour is the line-counter spins in
  section 4, which stand in for a retrace wait.

## 2. External status

What the engine exposes about video, sync and option boards, and who reads it. The kernel reads all of it once, at attach
(`MgrasGatherInfo`, `mgras_init.o` `0xadc`), except the option-board registers, which the option code reads at its own
probe. There is no polled or interrupt-driven external status line: nothing the kernel or the diagnostic reads changes with
the state of an external sync input, a video cable or a signal lock (software expectation from the full set of reads below;
a line the board has but the software never reads would not appear here).

| Address (board base +) | Access | Bits | What it reports | Read by | Grade |
|---|---|---|---|---|---|
| `0x071308` | byte | 7:4 | monitor ID: sense lines on the monitor connector; 0 means none identified; picks the default timing | kernel (`mgras_init.o` `0xdbc`, stored in the board record at +0x29); diagnostic `ide` `0x2082a81c` | software expectation |
| `0x071308` | byte | 2:0 | CMAP revision (the diagnostic checks it against `0x071708`) | diagnostic only | software expectation |
| `0x071708` | byte | 2:0 | CMAP revision | kernel (+0x3d), diagnostic `0x2082a828` | software expectation |
| `0x071708` | byte | 6:4 | RA board revision | kernel (+0x32), diagnostic `0x20849fdc` (printed as `RA Board version` when nonzero) | software expectation |
| `0x071708` | byte | 7 | clear when an option board is attached: the kernel stores `bit 7 == 0` at +0x35 of the board record | kernel `mgras_init.o` `0xde4` to `0xdfc` | software expectation |
| `0x071708` | byte | 6 | the diagnostic prints `MGRAS video board not installed` when it is set and `MGRAS video board found.` when clear | diagnostic `0x2084a024` to `0x2084a05c` | software expectation; conflicts with the row above, see open question 3 |
| `0x072488` | word | top byte | GE count, product ID, MGRAS revision ([board identity](board-identity.md)); bit 7 is read by neither | kernel, diagnostic `0x2084a0cc` | software expectation |
| `0x072408` | word | top byte | RE count, TRAM fields, RB revision (reads); the same address takes the board configuration writes of section 1.4 | kernel, diagnostic | software expectation |
| `0x070008` | byte | high nibble | after a `0xff` write to `0x072c08`, the option board's ID nibble, accepted when it is 4 (single-read builds) | option probe, see [questions](../../questions/README.md#1-multi-channel-option-register-map) | established as the routine's words |
| `0x072c08` | byte | all | option board data port; the probe in this archive's IP30 build (`mgras_mco.o` `0x0`, an older shape than the 6.5.22 and 6.5.30 IP30 builds, which use the single read above) writes `0xff`, reads, writes 0, reads, requires equal reads and accepts 1 or a high nibble of `0xa`, returning the low nibble | `mgras_mco_probe` | established as the routine's words |
| `0x070008` | byte | all | the Digital Video driver's presence byte: `0x11` is a video board, `0xff` none (chips section 8.3); the option probe reads the same byte | srv probe, not the graphics driver | established for the reader, inferred for the byte |
| VC3 index `0x0b`, 16 bit | read via `0x072008` and `0x0720b0` | all | vertical line counter, read by the Digital Video driver and the diagnostic | srv `_srvWaitForVertLineCnt`; `mgras_tex.o` `MgrasGetVertLineCnt` (`0x810`); diagnostic spins (section 4) | software expectation |
| `0x020100` | word | 4:0 | display-bus room (not a status of the outside world; every VC3 and XMAP write waits for it) | kernel, diagnostic | established as the kernel's wait |

### 2.1 The option bit and what it selects

At attach the kernel's board record has three related bytes: +0x35, the option-attached flag from bit 7 above; +0x49, a flat-panel
type; +0x40, the multi-channel option's presence. The sequence (`mgras_init.o` `0xe44` to `0xeb4`), established as the routine's
words:

1. If the option flag is **set** (bit 7 clear): +0x49 becomes `0xff` and `mgras_mco_probe` (which first sets the device's display-bus control word) runs; its result goes to +0x40.
2. If it is **clear**: `mgras_fp_probe` runs first. It probes an I2C bus on the same device window as the option (below). A panel
   ID of 3 sets +0x49 to `0x82`, and 4 sets it to `0x83`. Any other ID sets it to 0. When the bus probe itself fails the routine returns before touching +0x49. A found or
   changed panel is also recorded in the hardware inventory (class `0x11`), which `hinv` shows.
   - Panel found (+0x49 not 0 or `0xff`): the option flag is cleared, the monitor ID at +0x29 is **replaced** by the panel type
     (`0x82` or `0x83`), and +0x40 is cleared. `0x82` is the monitor type that [display timing](../../software/kernel/display-timing.md)
     lists as using the 1024 by 768 timing.
   - No panel: `mgras_mco_probe` runs anyway.
3. If the option probe finds a board (+0x40 nonzero): the option flag is cleared and +0x36 is set to 1.

**Reconciling bit 7 (kernel) with bit 6 (diagnostic).** The kernel's RA revision is bits 6:4 and the diagnostic prints the same three
bits as `RA Board version` when they are nonzero, then separately tests bit 6 for its video-board message. Both cannot be right
if bit 6 is also the top bit of a revision field that takes values of 4 or more. The consistent reading is that bit 6 and bit 7 are
two separate absent lines, bit 6 for the video board the diagnostic names and bit 7 for the option connector the kernel probes
(multi-channel option or flat panel), and that the RA revision field is really bits 5:4 on the boards seen (so bit 6 never
carries a revision). That reading explains why the diagnostic's own messages never conflict, and why a kernel with no video board
still probes the option. It is **inferred** from the code only; the other reading (one line, one of the two routines wrong for
some board revision) cannot be excluded, and no board value is held. Unknown, with no IMPACT capture possible on James's systems.

So the byte at `0x071708` bit 7 is a hint the kernel confirms by probing; a model that always reports "no option" with an
unanswered probe (reads back unequal) gets a plain single-monitor board.

Two request handlers test +0x35: one returns error 19 (`ENODEV`) when it is set (`mgras.o` `0x5e68`), another calls
`mgras_fp_reinit` when it is clear (`0x620c`). Their request numbers were not read; the flat-panel and option requests are
unexamined here.

### 2.2 The flat-panel I2C bus

Software expectation, `mgras_corona_i2c.o` of the same archive. It shares the option's device window:

- Set-up: `0x2128` to the display-bus control word at `+0x061058`, then the probe writes `0` to `+0x072c08` and `0x40` to
  `+0x072c88`, writes `0x55` to `+0x072c08` and `0x40` to `+0x072c88`, reads `+0x072c88` and requires `+0x072c08` to read back
  `0x55`, then repeats with `0xaa`; each access is followed by a 1 microsecond delay. So `+0x072c08` echoes what is written
  while the bus is idle (the probe's own test), and `+0x072c88` is a control byte written `0x40` after each data write.
- Panel ID: an I2C read from address `0x70` (a read of device `0x70 | 1` through `mgras_i2cStart`, `Receive`, `Stop`); the ID is
  bits 7:5 of the byte (`mgras_i2cPanelID`, `0x620`).
- Other entries (panel on and off, backlight up and down, audio volume, bass, treble and switch) use the same bus. They are not
  external status and are not read here.

A model with no panel must make the probe fail: leave `+0x072c08` unreadable as `0x55`, so `mgras_i2cProbe` returns 0.

### 2.3 What is not exposed

- **External sync lock:** no register, bit or interrupt source reads it. Unknown whether the board has one.
- **Genlock input present, house sync, composite sync status:** none read. The Digital Video driver reads VC3's line counter
  to align to the video field instead (section 3).
- **Video cable or capture-board presence beyond the option byte:** the Digital Video driver's own presence check is on its board
  (see chips section 11), not on MGRAS.
- **Monitor-detect timing:** the monitor ID is a static sense value; whether it changes on hot-plug is unknown.

## 3. Video into the framebuffer, from the graphics side

The video board, its VGI1 channels, the TMI, CSC and GAL registers and the Digital Video driver's own paths are in chips
`devices/octane-digital-video/` (sections 2.3, 8.3, 10, 13, 14 and 16). This section records only the boundary on the graphics
side: what the graphics kernel, the X server and the GL library do, and the HQ4 and TE1 registers that carry the pixels. It
adds nothing about the video board's registers.

### 3.1 There is no direct video-to-framebuffer path

No graphics-kernel routine writes the pixel processors' framebuffer from the video side. Video reaches the framebuffer in
two steps, both through texture memory, or through a separate DMA that does not carry pixels:

1. **Video to texture** (the capture path). The video board's TMI chip writes frames into the texture RAM through the TE1's
   loader. The graphics kernel exposes it as ioctl `0x6d670016`.
2. **Texture to framebuffer.** An ordinary GL copy-texture or textured draw (`mgrTM_DoCopyTex` in libGLcore.so, `0xdabb960`)
   moves it onward; nothing in this path is video-specific.
3. **The HQ4 video DMA** (`+0x081000` block, below) is used by the video driver for the CSC tables and for `putframe`
   output, not for capture into the framebuffer. Its pixels never touch the raster engines.

### 3.2 The video-texture request (`0x6d670016`)

- **Kernel entry.** `MgrasVidTextureXfer` (`mgras_tex.o` `0x658`). It copies in a 0x28-byte record, calls the video driver's
  `srvVidTextureXfer`, and copies the record back. Established.
  - If the word at +4 is zero, it calls the driver at once with a zero second argument (a query: the driver reports the board's
    current state, below). Established.
  - If it is nonzero, it validates the window's fault state (`RRM_CheckValidFault`), takes a per-board semaphore at +0x7a8 of
    the device structure (priority `0x51a`) and calls the driver with a small record (device, board, and the user record's
    last word at +0x24). If taking the semaphore is interrupted it retries in one-tick timeouts, and it fails with -1 when a
    flag in the board's block (+0x44 of the block at +0xc8) is set. The semaphore is released by `MgrasVidTextureXferDone`
    (`0x890`), which the driver calls when the transfer finishes. Established as the routine's words; the flag's meaning is
    unknown.
- **What the driver checks** (`srv_tmi.o` `srvVidTextureXfer`, `0x192c`): the record's words +8, +0xc, +0x10 and +0x14 must equal
  the driver's current TMI geometry (start and size words from its channel, a bit from its register `0xfe`, and the GL type for
  its pixel format); +0x18 must be zero. On a mismatch it writes a status into +0x20: 2 board or TMI not ready, 3 start or
  size mismatch, 4 the register-`0xfe` word, 5 format, 6 a nonzero +0x18; success is 7, or 0 when the query finds no transfer
  running. The routine returns -1 for any other status, which the kernel turns into error 22 (`EINVAL`). +0x1c reports a
  board field (`0x23f8`). Software expectation for the structure; the meaning of each geometry word is inferred.
- **Start and finish hooks.** The driver starts the capture by calling `MgrasVidTextureXferStart` (`mgras_tex.o` `0x838`), after
  setting bit 0 of the HQ4 word at `+0x081018` by read-modify-write (`srv_tmi.o` `0xd6c` to `0xd74`). The start writes either
  the raster command-FIFO word `0x9300` to `+0x120400`, when the record's last word (+0x24) is nonzero, or the TE1 loader
  register `0x1a6` (`texture_loader_video_capture_start`) with 1 through `__glMgrasSet`, when it is zero. So the last word
  chooses between starting the capture in order with queued rendering (command FIFO, token `0x93`, not in gr4's token list) and
  starting it at once. Established for the two writes; the choice rule is inferred.
- **Line alignment.** The driver aligns a transfer to a scanline of the graphics display: `_srvWaitForVertLineCnt` (`srv_tmi.o`
  `0x290`) reads VC3's line counter (`MgrasGetVertLineCnt`, below) until it is outside the window of 5 lines either side of a reference
  line of 27 or 34 (`_srvCheckVertLineCnt`, `0x260`: 27 when a flag byte in its board record at +0x104 is nonzero, 34 when zero),
  retrying every 10 microseconds for at most `gal15itimeout` times 20 milliseconds, then logging a timeout and returning 0.
  The effect is that a transfer is not started while the graphics scan is within five lines of that line. Software
  expectation. A counter that sits inside the window forever makes this wait expire.

### 3.3 The line counter

`MgrasGetVertLineCnt` (`mgras_tex.o` `0x810`): a byte write of `0x0b` to `+0x072008`, then a 16-bit read of `+0x0720b0`; it
returns the value shifted so that the line number is in the low bits (`dsra32` by 16 of the 16-bit load). So VC3 index `0x0b`
must read as a counter that advances with display timing. Its range is not stated by any code seen: the driver compares with
27 or 34 and the diagnostic with 0 and 200 (section 4), so the counter runs at least from 0 to 200. Established for the
access; the counter's exact line origin and wrap are unknown (see [display timing](../../software/kernel/display-timing.md)).

### 3.4 The HQ4 video DMA block

Registers (all 32-bit stores except the descriptor), written by the Digital Video driver in `srv_hq4_vdma`
(`srv_hq4_dma.o` `0x168`) in this order, after the page list is built by `srv_hq4_setup_vdma`; constants are in
[registers.toml](registers.toml) (`HQ_VIDEO_DMA_*`):

1. `+0x011028` takes `0x02000000` (interrupt pending clear).
2. `+0x060018` takes a word built from three caller fields.
3. `+0x081018` takes a mode word; the driver forces the low nibble to `0xc`.
4. `+0x081000` takes a 64-bit descriptor: flag bits 25, 24, 23 and 19 and the low 48 bits of the buffer's physical address.
5. `+0x081010` takes the control word with bits 0 and 4 set, which starts the transfer.
6. `_srv_hq4_wait_dma` polls the 32-bit word at `+0x020000` for bit 12 clear, up to 200 times, 500 microseconds apart on
   board revision 1 (with a write of `0x55` to `+0x070808` every other pass at that interval), or a short nanosecond delay
   otherwise. On timeout it stores `2` to `+0x081010` and logs.

Callers: `srv_clut.o` (the CSC table load, via `_srv_csc_hq4_tdma`) and `srv_cc1_putframe.o` (two sites). The graphics kernel
objects write none of these registers that I found. Grades: the order and values are software expectations; the roles of the
words are inferred (see the HQ3 README).

### 3.5 Who uses it

- Kernel: the Digital Video driver (`srv`), through four graphics-driver entries it imports: `MgrasWriteBfifo` (its DCB writes,
  41 call sites), `MgrasGetVertLineCnt`, `MgrasVidTextureXferStart` and `MgrasVidTextureXferDone`.
- GL: `mgrTM_VidTexWait` (libGLcore.so `0xdab49cc`) sends `0x6d670016` only when the cached video-texture bytes change;
  `mgrTM_DoCopyTex` sends it on its copy path; `__glMgrIsCurrentGLXReadVideo` (`0xda9387c`) says whether the current read
  drawable is a video source. libGL.so creates `GLX_SGIX_video_source` objects (`glXCreateGLXVideoSourceSGIX`) through libvl
  (`vlGetControl`), and `glx.so` advertises `GLX_SGIX_video_source`, `GLX_SGIX_video_resize` and `GLX_SGI_video_sync`.
- VL: the `impact` VL device and its nodes are created by the video overlay's `mgv.so` (chips section 10.8), not by anything
  in the graphics driver.
- Applications named in the shipped overlay documentation (Smoke, Flame) reach it through VL; their specifics are chips'.

## 4. What the diagnostic tests

The diagnostic is `usr/stand/ide` (IP30, Feb 5, 1997). Its field script defines the suites; the video, timing and sync
behaviour is in the **back end** suite (`bkend`) and the VC3, DAC and CMAP suites it calls. Every statement is a software
expectation; the diagnostic has no genlock, swap or interrupt test, and no test prints a pass for those features.

### 4.1 The sequence

`bkend` (script text in the program's read-only data) runs, stopping at the first nonzero status:

1. `mg_setboard`, then `mg_hqfifoinit`.
2. `dactest`: DAC reset and mode, address and palette tests, each separated by `mg_dacreset`.
3. `vc3test`: `mg_vc3reset`, `mg_vc3internalreg`, `mg_vc3addrsbus`, `mg_vc3databus`, `mg_vc3addrsuniq`, `mg_vc3patrn`: register
   and SRAM walking tests; no timing is running.
4. `cmaptest`: `mg_vc3init -t 0x107` (timing token `0x107`, 1280 by 1024 at 60 Hz, see [VC3.h](../vc3/VC3.h)) first, then the CMAP
   revision, data bus, pattern and address tests for CMAP 0 and 1.
5. `mg_reset`, then `mg_dcbdma_tests` (enable the DCB DMA path, repeat `dactest` and `vc3test`, disable it).
6. `mg_xmapdcbreg 0` and `1`, and `2` and `3` when `mg_setnumre4s -q` reports two raster engines.
7. **The video-timing walk:** `mg_starttiming`, `mg_crcwalk`; `mg_vc3init -t 0x139` (1280 by 1024 at 76 Hz), `mg_crcwalk`,
   `mg_reset`; `mg_stoptiming`, `mg_vc3init -t 0x159` (1600 by 1200 at 60 Hz), `mg_starttiming`, `mg_crcwalk`.
8. `mg_xmapinit`, four delays, then `mg_vc3cursorposition`.

### 4.2 What each step needs of the video side

| Step | Behaviour the model must provide | Hangs or fails if absent |
|---|---|---|
| `mg_vc3init -t TOKEN` | the DAC PLL programming (R 2, V 4 and control `0x91` to the DAC registers `0xc`, `0xf`, `0x9`, the 1280 by 1024 at 60 Hz values, then the token's own values), settle delays (arguments `0x1e` and `0xc350` to the delay routine at `0x208d6984`), then VC3 index `0x1f` written with `0x0100` (`ide` `0x208621ac`) and the timing tables loaded; prints `Video Timing Starting`, `Started Video Timing`; an unknown token prints `Unknown Timing Token Selected` and fails | a PLL that does not accept the writes is not detected; an unknown token is |
| `mg_starttiming` (`0x20846050`) | accepts VC3 index `0x1e` data `0x1e` and index `0x1d` data 0 as plain writes | none |
| `mg_stoptiming` (`0x208460e0`) | reads index `0x1e` back (byte index write to `0x072008`, 16-bit read at `0x0720b0`), clears bits 4:1, writes it back, then writes index `0x1d` zero | a read-back that does not return the written value changes what is written back |
| `mg_crcwalk` (`0x20852600`) | six repetitions, each of: a frame-boundary XMAP and buffer-select update (`0x2084daec`), clearing its own host-memory result words (`0x2084d930`), a frame-synchronous wait that also brackets a DAC command write (`0x2084d158`), a read of DAC registers `0x10`, `0x11`, `0x12` as 16-bit values (`0x2084cf74`, printed as `i = R G B`) and a comparison (`0x2082b5c0`) | the frame wait never ends |
| `mg_vc3cursorposition` (`0x20843a14`) | after writing cursor X (index 2) and Y (index 3), the line counter passes 200 and returns to 0 twice, then index `0x0e` (current cursor X) reads back the X that was written | the line wait never ends; a mismatch prints the written and read values |

The frame waits are the dominant hazard. They are unbounded loops that select VC3 index `0x0b` through `+0x072008` and read the
16-bit line count at `+0x0720b0` on every pass:

- `0x2084d174`: waits until the count reads 0, writes DAC register 8 (command register 4 in the ADV7162 numbering of the
  option pages) with `0xa0` and then `0xe0` through the DAC address halfword at `+0x071810` and data byte at `+0x071910`, waits
  until the count is at least 200, waits for 0 again, writes `0xc0` to the same register, then sets the address to `0x10`, `0x11`
  and `0x12` and reads each with a 16-bit load at `+0x071910`. Software expectation.
- `0x2084daec`: waits for 0, writes the XMAP words at `+0x071f00`, `+0x071c88` (index 0) and `+0x071d80` (the buffer-select
  word, three bytes packed), waits for 0 again between writes. Software expectation. This is the diagnostic's version of the
  retrace-ordered buffer flip the kernel does at its retrace interrupt.
- `mg_vc3cursorposition`: waits for at least 200, then 0, twice.

So the model's line counter must start from a value that reaches 0 within a frame, pass 200 within a frame, and wrap, for
every timing token above; a counter held at a constant, or one that never reads 0, hangs the suite.

### 4.3 The signature check

**Datasheet.** The ADV7160/ADV7162 data sheet (Analog Devices, Rev. 0, 1995; Library manifest path
`graphics/analog-devices/adv7160_7162.pdf`, sha256 `c8fa1a6dfc222d72655b9a33298198eae8675add875e96690e719b0dec713c24`, held in the
Origami Library cache and resolving through the Library's `origami-docs` root as `library/cache/graphics/analog-devices/adv7160_7162.pdf`;
it was already a `have` row, so nothing was fetched) has a signature analyzer in the pixel datapath, just before the DAC
decoders (page 40, Appendix 5, and the Command Register 4 description on page 29). Established from the data sheet:

- **Width and inputs.** 33 cells S0 to S32. The 30-bit pixel (10 bits each of blue, green and red) is the parallel input:
  cell S1 to S10 take B0 to B9, S11 to S20 take G0 to G9, S21 to S30 take R0 to R9, S31 and S32 take 0, and S0 takes cell S19.
  It sees the pixel after the palette and gamma stages (it is "just before the DAC decoders"), so it sees the 10-bit
  values, not the framebuffer bytes.
- **Structure.** Each cell is the exclusive-or of its input with the NAND of the feedback enable and the previous cell (cell 0's
  previous cell is S32): a rotating chain with the single extra tap S19 into S0, so the feedback polynomial has taps at stages 33
  and 20. The figure labels the enable `CR42` where the text says CR47; the text is used here. Whether the gate after the NAND is an
  exclusive-or or its complement is not readable from the figure.
- **Clocking.** It accumulates only during active display, while BLANK is high.
- **Control, Command Register 4 (DAC register 8).** CR45 (`0x20`) enables the signature clock; CR46 (`0x40`) taken low and then high
  resets the analyzer; CR47 (`0x80`) high enables the feedback, low latches the pixel straight in. The data sheet's procedure: set
  CR45 and CR47 during vertical retrace and toggle CR46; the signature is acquired over the next active screen; clear CR45 in the
  following retrace (allow at least 20 clocks for the pipeline) and read it.
- **Readout.** Registers `0x10` (red: S30 to S21), `0x11` (green: S20 to S11), `0x12` (blue: S10 to S1) and `0x13` (S32, S31 and
  S0 in bits 2:0), each read-only and 10 bits wide, read through the same address and data ports as the palette.

**The diagnostic follows that procedure exactly** (software expectation, `ide` `0x2084d158`): wait for line count 0 (retrace); write
register 8 with `0xa0` (CR47 and CR45 high, CR46 low) and then `0xe0` (CR46 high: reset released, accumulating); wait for the line
count to pass 200 and return to 0 (one full frame); write `0xc0` (CR45 low, clock off); set the address to `0x10`, `0x11` and
`0x12` and read each as a 16-bit value (in 8-bit-bus mode the top two bits come from bits 15:14 of the 16-bit read). It never
reads `0x13`. The three 10-bit values are stored into one host word as `(S30..S21) << 1 | (S20..S11) << 11 | (S10..S1) << 21`
(`0x2084d3b4` to `0x2084d478`), and `0x2084cf74` compares that word field by field against an expected word and returns the
number of fields that differ.

**What it compares against.** Not frame against frame, and not the stored table sums:

- The raster tests' `-d` option and `mg_crcwalk` each take their expected words from a table of 8-byte entries in host memory at
  `0x20a17970` (entry word at +8), indexed by the test's sum index. That table is not in the file: it is filled at run time by
  the routine at `0x2084b1f8` (called at `0x20848480` and `0x20849a78`), whose stores are immediate constants, so the expected
  values are **fixed numbers carried in the code**, 42 entries, bit 31 and bit 0 clear in all of them. Several entries repeat
  (in pairs and fours), which suggests the same displayed frame at different sum indexes. The values are not recorded here.
- They are not the 32-bit sums that the tests pass as their first argument (`0xc584ed6b` for the lines table and so on): the passed
  word is only printed (`0x2082b5c0` shows its fields on a mismatch). The two numbers are unrelated by the arithmetic of the
  data sheet; the sums stay what [the raster page](ide-raster-tests.md) says: the plain wrapping sum of the expected table words.
- `mg_crcwalk` is different: it builds a walking-one colour for each of red, green and blue (`(1 << k) & 0x3ff`, ORed with
  `0x300c03`), sets it through the XMAP, and obtains its expected word by running a large generated routine
  (`0x2084dc80` to `0x20852600`, about 19 kilobytes) before the same field comparison. That routine is the software model of the
  analyzer for a whole frame, so its expectation is computed, not stored. It was not run here.

**Reproduction attempt (not reproduced).** The analyzer above, with the enable gate read both ways, both reset states (all zeros and
all ones) and an all-black input, was clocked for every pixel count from 1 to 4,000,000 and the packed result compared with all 42
stored words. One chance-level hit came out (a 1 in 2 to 3 expectation for that many tries), so nothing is reproduced. The
displayed frames in the tests are not black and depend on XMAP, colour map and gamma state (the colour-map tests load a linear
ramp) and the timing's active area; those inputs are not pinned, so a model should implement the data sheet's analyzer on the
actual 10-bit pixel stream, not copy the stored words.

### 4.4 The genlock helper

The helper that sets and prints the genlock state (`ide` `0x208461a4`, usage `GenLockVal GenSyncVal`) calls the routine at
`0x208cbe40` (the diagnostic's `MgrasSetGenlock`), reads VC3 index `0x1e` back and prints whether bit 5 (`VC3 GENSYNC is set`)
and bit 6 (`VC3 GENLOCK is set`) are set. It is not in the 75-entry command table I read and has no direct call site, so it is
reached some other way or not at all; no suite in the field script calls it. Its only expectation is that bits 5 and 6 read
back as written.

## 5. What a model must do to pass the diagnostic

Not a hardware claim: this is the list of things the shipped diagnostic and the shipped drivers wait for, so a model that
provides them gets the video and sync parts of the suites to finish. Items marked (U) are unknown in detail.

1. **VC3 ports.** A byte write to `+0x072008` selects a register index; a 16-bit read at `+0x0720b0` returns that register; a
   32-bit write at `+0x072038` stores a 16-bit value (bits 23:8) at the index in bits 31:24. Registers `0x1d`, `0x1e` and `0x1f`
   must read back what was written.
2. **Line counter (index `0x0b`).** Advances with the display lines of the running timing, reaches at least 200 each frame, reads
   0 at the start of each frame, and wraps. It must do so for the tokens `0x107`, `0x139` and `0x159`, and also move on a
   board whose timing the kernel has started (the Digital Video driver's wait window is 5 lines either side of line 27 or 34).
3. **Cursor latch (index `0x0e`).** The current cursor X takes the written X at a frame boundary.
4. **Display control (index `0x1e`).** Bits 4:1 settable and clearable by the start and stop sequences; bit 0 settable (retrace
   enable); bits 5 and 6 settable by genlock requests and read back. No effect on the model's timing is needed for the
   diagnostic. For the kernel, bit 0 must make the retrace interrupt fire once per frame (inferred).
5. **Board configuration word (`+0x072408`).** Accepts writes of the values in section 1.4 without side effects the diagnostic
   observes; its reads still return the product word.
6. **Display-bus room (`+0x020100` bits 4:0).** Reads low enough that the `(n + 1) >> 1 < 8` test passes, or every VC3 and
   XMAP write stalls.
7. **Status bytes.** `+0x071308` and `+0x071708` bits 2:0 equal and at least 2 (CMAP revisions), bit 7 of `+0x071708` set for no
   option, the option probe at `+0x072c08` failing (reads that differ or an ID outside the accepted set) and `+0x072c08`
   not echoing `0x55` so the flat-panel probe fails.
8. **DAC signature analyzer.** DAC registers `0x10`, `0x11` and `0x12` return the data sheet's signature of the 10-bit pixel stream
   over one frame, with Command Register 4 (`0x20`, `0x40`, `0x80`) controlling it as in section 4.3, and the diagnostic's
   expected words depend on the exact displayed frame (unreproduced here). Without the analyzer the colour walk and every
   raster test with `-d` fail.
9. **For the Digital Video driver:** the HQ4 busy bit at `+0x020000` bit 12 clears within 200 polls after the DMA start stores,
   and the video-texture request's status codes of section 3.2.
10. **Not needed:** genlock lock status, swap-ready, external sync inputs, video-in signal detect. Nothing the diagnostic or
    kernel reads reports them.
