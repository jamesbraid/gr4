# HQ4 image writes: DMA and inline

How a host pushes pixels into an IMPACT board's raster engine: the page-list DMA sequence on an Origin (IP27)
host against an Octane (IP30) host, and the inline (programmed I/O) writes that need no DMA and no geometry
microcode. The HQ4 interrupt, status and context-switch behaviour is in [hq4-host-interface.md](hq4-host-interface.md).
The HAG register names are in [HQ3.h](../../devices/hq3/HQ3.h).

## Sources and grades

- IRIX 6.5.7 source tree, the standalone diagnostic's host-DMA and programmed-I/O tests
  (`stand/arcs/ide/isddevices/graphics/MGRAS/mgras_hqdma_redma.c`, `mgras_hqpio_redma.c`, `mgras_host_hqdma.c`),
  their HQ4 branches, which are the Octane build. They state what the test writes, in which order, and what it waits for.
- IRIX 6.5.7 source tree, the PROM graphics library (`stand/arcs/lib/libsk/graphics/MGRAS/mgras_init.c`,
  `mgras_tport.c`), for what the PROM does with no microcode loaded.
- IRIX 6.5.7 source tree, the crosstalk DMA address functions of the two hosts (`irix/kern/ml/SN/io.c`,
  `irix/kern/io/heart.c`, `irix/kern/sys/SN/SN0/addrs.h`, `irix/kern/sys/RACER/heart.h`).
- IRIX 6.5.30 `usr/cpu/sysgen/IP27boot/mgras.a` (SHA-256 `c3b1faac9a98280b117cd9f054c4c737d1f9844d697b8ed17bfd7e70b8e7134f`)
  and `IP30boot/mgras.a` (`32a535dc595727594b6ddf50897d87fced83202f5f78d271d22d97ab330f4614`), member `mgras_dma.o`,
  read as disassembly: `MgrasInitDMA`, `MgrasInstallTxTbl_Kern`, `mgrasFillTxTbl`. The kernel driver's own source is not in the tree.

The diagnostic is an Octane program. Its numbers are for the IP30 build. Where the kernel objects of the two hosts
differ, the table below says so. Grades follow the legend in [AGENTS.md](../../AGENTS.md#7-published-documents). A diagnostic
that writes a value is established as what software does, and a software expectation for the board. Nothing here is a
measurement from a board or from a running emulator.

## Two builds, one engine: what differs

The same routines in the two kernel builds differ in three places. Everything else in the DMA setup (the order of the
control commands, the pool registers, the page list) is the same code.

| Item | IP27 build (Origin, Onyx2) | IP30 build (Octane) | Grade |
| --- | --- | --- | --- |
| Width of one translation-table entry | 8 bytes (64-bit stores, index scaled by 8) | 4 bytes (32-bit stores, index scaled by 4) | established |
| Value the init routine writes at board offset `0x040918` | `0x00200000` plus the master hub's widget number in bits 19:16 (`0x00290000` when that is 9) | `0x00680000` | established |
| Value written at `0x040920` | `0x80200000` plus the hub widget number in bits 19:16 | `0x80280000` | established |
| Value written at `0x040928` | 0 | 0 | established |
| Payload the install routine writes to HAG register `0x4b + pool` | `0x00100000` plus the hub widget number in bits 19:16 | `0x00180000` | established |
| Payload the init routine writes to HAG registers `0x4b` to `0x4f` (and, once, to `0x4a`) | `0x4b` to `0x4f`: the widget number in bits 19:16 only; `0x4a`: `0x00100000` plus the widget number | `0x4b` to `0x4f`: `0x00080000`; `0x4a`: `0x00180000` | established |

Reading these against the diagnostic, whose IP30 branch builds the same fields from named registers:

- `0x040918` is the graphics TLB mode register, `0x040920` DMA mode A and `0x040928` DMA mode B (inferred; the diagnostic
  names the registers and builds a value of the same shape for each, and the offsets match the three words the kernel
  writes at init in that order. The structure that carries the names is in a header not held here).
- Bits 19:16 of the first two words name the widget that receives the board's DMA requests: the Octane's HEART is
  widget 8 (the `0x8` in `0x680000` and `0x80280000`), and the IP27 build reads the master hub's widget number from a
  kernel global (`sn0_global_masterid`, masked to four bits in the init routine). Established for the code, inferred for
  the meaning.
- Bit 22 of the TLB mode word is set only in the IP30 build. The diagnostic's own text calls the bit a compatibility
  mode, and builds the word it writes for that register as "bits above the table base, bit 22, widget number". The
  IP30 table has 32-bit entries and the IP27 table 64-bit entries. So the answer to "what selects the entry size" is
  most likely bit 22 of `0x040918`: clear selects 64-bit entries, set selects 32-bit entries with the extra page-number
  bits held in DMA mode B. Inferred: both builds' code agrees with the reading, and no board was read.
- Bit 21 (`0x00200000`) is set in both builds' words and is not in the diagnostic's value. Meaning unknown.

Page-list entry contents:

- IP30: each entry is a 4 KiB page frame number of the host physical address, 22 bits at most. The diagnostic puts the
  bits above 22 of the first page's frame number in DMA mode B and expects every page of one transfer to share them
  (established for the diagnostic; the kernel writes 0 there at init). The table's own physical address is split: low 32
  bits and the next 8 into the table-base control command (a 64-bit payload), and the 8 bits above those into bits 31:24 of
  the TLB mode word.
- IP27: each entry is a whole 64-bit page frame number, copied from the kernel's page walk and incremented by one for each
  physically contiguous page. The driver does not translate it. Established for the driver.

Host address form the board must present, by host:

- IP27. The kernel's Hub DMA translation returns its input unchanged and its comment says the Hub has no DMA mapping
  registers: a widget's crosstalk address for host memory is the system physical address itself, with the node number in
  the address (`irix/kern/ml/SN/io.c`, `hub_dmatrans_addr`; node field position in `irix/kern/sys/SN/SN0/addrs.h`, shift 31
  with 9 node bits when the source is built for N mode, shift 32 with 8 bits in the default M mode; which one the shipped
  kernels use is not checked). Established for the kernel's rule. This is why the entries are 64 bits.
- IP30. HEART's translation adds `0x20000000` to a physical address below its alias size and returns an address already at or
  above it unchanged (`irix/kern/io/heart.c`, `heart_addr_phys_to_xio`). Memory sits from `0x20000000`. So the page
  frame number of a K0/K1 address is already the crosstalk page number. Established.
- Neither host's board-side attribute bits (coherence, barrier) appear in the table entries: the entry is the page number
  and nothing else. Whether bit 20 of the per-pool word (`0x100000`, set in both builds) or bit 21 above carries one is unknown.

## Host to board image write, the sequence

This is the diagnostic's host-to-raster-engine write with the Octane constants, followed by what changes for IP27. The
order is the diagnostic's. Every "control command" is a 64-bit store to the privileged command FIFO of the board: a header
word in the high half and a payload word in the low half. The header is `0x00400000 | (0x800 + register) << 8 | length`,
with the length in bytes, for a HAG register (the diagnostic's builder sets bit 22 whatever its "privileged" argument says;
the kernel objects load the same constant `0x00400000`). The kernel's table commands go to board offset `0x130400` (established from the objects).

The diagnostic's order is: program the raster engine (step 1), then everything the host interface needs, ending with the
kick, so the raster engine is ready before the first byte moves.

1. Program the raster engine for the write: the registers of the next section, including the scan-width and DMA-type control
   commands. (The diagnostic sets the formatter first, to the canonical mode with the invalidate-trailing bit cleared for a
   DMA write.)
2. Fill the translation table, one entry per 4 KiB page of the host buffer, and write the DMA mode B and DMA mode A words
   (IP30 diagnostic: the remaining page-number bits, and the widget number in bits 19:16).
3. Clear all privileged flags, write zero to the TLB valid mask to drop every entry, then set the "HQ updates the TLB" bit in
   the GIO configuration word.
4. Control commands to the HAG context, in this order: table base (64-bit physical address of the table, register `0x26` for
   the GL pool; on IP30 the diagnostic then writes the TLB mode word with the table address's upper bits), page granularity
   (`0x2a`, payload 0 for 4 KiB), pool page count and pointer limit (`0x2e` and `0x33` for the GL pool; for the same pool
   registers the kernel writes `0xa` to the page-range word and its fourth argument to the limit, where the diagnostic
   writes 2 and 505).
5. Flush the data cache; the board cannot read it.
6. Page list and shape of the transfer: `IM_PG_LIST1` (the diagnostic writes `0x80000000`; the bit meanings are not stated),
   page width, row offset, row start address, line count, first and last span width (equal, in bytes), Y decimation 0,
   state remainder 0.
7. Flush again, then kick: write the DMA control and status word of the HAG (`0x0b`). The diagnostic's value for a write sets
   run (bit 0), the pool number from bit 1, destination raster engine (bit 4) and scan-packed (bit 5), and leaves direction
   (bit 3), decimate (bit 6) and the conditional-start bit (bit 7) clear. Bit 3 is set for a read back. The diagnostic's own
   field comments are the only source for these bit meanings.

IP27 differences: widget number from the master hub; 64-bit table entries; bit 22 of `0x040918` clear. The kernel's install
routine takes a pool index below 5 (image pools 0 to 2, GL 3, display list 4, from the register numbering above).

Completion, from the diagnostic and consistent with the kernel's waits recorded in the interrupt-and-status page:

- Write a "set the CD flag" control command into the command FIFO, then poll the privileged flag word until the CD bit
  is set, then clear it. This orders the wait behind every command already queued.
- Then poll the DMA busy word (`0x020200` on the HQ4 layout, inferred from the kernel's use of that offset) until the
  raster-engine DMA-active bit (bit 11, from [HQ3.h](../../devices/hq3/HQ3.h)) is clear for a write, or the HAG DMA (bit 12) and
  master DMA (bit 9) bits are clear for a read.
- Then poll the HQ status word until the raster-side idle bit (bit 1) is set.

The programmed-I/O write mode (below) waits differently: poll the busy word until its host-interface-sync, host-interface,
command-FIFO, CD and raster-interface busy bits are all clear, then the same status bit 1. It sends no CD-flag command.

No interrupt is used. The kernel's own wait masks are in [hq4-host-interface.md](hq4-host-interface.md). Whether bit 12 of
the busy word means the same on a write is unknown: the diagnostic waits on bit 11 for writes and on bits 12 and 9 for reads.

## Raster-engine setup for a host write

Registers written through the numeric command FIFO (the same path OpenBSD uses for fills, see
[2d-transactions.md](../../devices/re4/2d-transactions.md)), in the order of the diagnostic's setup routine. The values are
for a 32-bit RGBA host image to the main frame buffer; the diagnostic's default is a 36-bit RGB image (3 components of 16 bits)
instead, selected by a global.

| Register | Value |
| --- | --- |
| XFRMASKLOW, XFRMASKHIGH | all ones |
| FILLMODE, block type field | 3 for programmed I/O write, 5 for burst write (bit 0 write, bit 1 programmed I/O, bit 2 burst) |
| XFRSIZE, XFRCOUNTERS | rows in 31:16, columns in 15:0 |
| XFRMODE | the diagnostic's `RGBA4` pixel format, default (1-byte unsigned) component type, component order 0 (named ABGR), no skips |
| scan width (reif) | bytes per row |
| DMA type (reif) | 4 for a write, 2 for a read |
| BLOCK_XYSTARTI, BLOCK_XYENDI | x in 31:16, y in 15:0; the end is inclusive |
| PP pixel command | 3 for a write, 2 for a read |
| PP1 fill mode | pixel type RGBA8888, buffer count 0, buffer size 1, logic op 3 (source), draw buffer 1 |
| DRB pointers, DRB size | the screen's own values (the diagnostic uses 0 and its tile counts) |
| colour masks | all ones |
| XYWIN | 0 |
| XFRCONTROL (not started) | device PP1, direction write, no start bit |
| IR alias | the block-mode opcode with setup set |
| XFRCONTROL (start) | as above with the DMA-start bit (burst) or the programmed-I/O start bit; the write starts the transfer |

The diagnostic waits for the raster engine to report idle before the final write, but only warns when it does not on a write.

## Inline writes: no DMA

Three ways exist to put host pixels in without the page list. All three go through the same raster-engine setup above.
None involves the geometry engine (GE11) or its microcode, which the pixel-transfer tests never load.

| Mode | What the host writes | Rate | Grade |
| --- | --- | --- | --- |
| Rectangle runs (OpenBSD, the PROM's rectangle) | six numeric-FIFO writes per run, see [2d-transactions.md](../../devices/re4/2d-transactions.md) | one write per run | software expectation |
| Programmed-I/O block write | after the setup above with block type 3 and the programmed-I/O start bit, pairs of numeric-FIFO writes to CHAR_H (stage) then CHAR_L (execute); each write carries one 32-bit pixel | 1 pixel per 64-bit FIFO write; a 1280 x 1024 frame is 1.31 million writes | established for the diagnostic's code |
| Burst write | the setup with block type 5 and the DMA-start bit; then per row a pixel command header (byte count) and 64-bit data words stored straight into the command FIFO | 2 pixels per 64-bit store, 655,360 stores and 1,024 headers a frame | established for the diagnostic's code |

Does it need the geometry engine's microcode? No evidence says so: the diagnostic's pixel-transfer routines take their data
from the host and write the raster engine directly, call no geometry-engine download and send no geometry command (the
geometry-engine initialisation in their setup routine is compiled out). The PROM text console draws with the same CHAR_H and CHAR_L stores and no microcode of any
kind (see [prom-handoff.md](../../devices/mgras/prom-handoff.md)).

What stays unknown: whether the two control commands that set the scan width and the DMA type (host-interface registers,
not raster-engine registers) need the host-interface microcode. The PROM sends one control command before any microcode
exists, the formatter mode write in its host-interface initialisation (through the command FIFO), so the formatter at least is
hardware. The scan-width
and DMA-type commands are not sent by the PROM. The diagnostic runs after it has loaded the host-interface microcode.
A trace of the host-interface microcode's handling of those two registers, or a run of the programmed-I/O path with the
microcode left unloaded, would settle it.

## Open questions

- Entry-size selector: bit 22 of `0x040918` is the strong candidate (above); a run that flips only that bit with both entry
  widths would settle it.
- The meaning of bits 21 and 20 of the mode and pool words that both builds set.
- Whether a Hub accepts page numbers above the node field's reach the way a HEART-style 22-bit entry plus DMA mode B does;
  the IP27 driver never uses mode B.
- Why the kernel's page-range word is `0xa` and the diagnostic's is 2 for the same register.
- How the driver completes a transfer: the kernel's wait masks are known (hq4-host-interface) but the routine that
  decides a transfer is done was not read here.
