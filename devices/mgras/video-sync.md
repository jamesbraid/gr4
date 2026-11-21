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
