# Packed colour and the visual a console driver assumes

The pixel path OpenBSD's `impact(4)` driver relies on after the firmware: how a packed colour word reaches the screen,
what component order and alpha it has, and whether it draws into the buffer the screen is showing. The numeric-FIFO write
sequences are in [2d-transactions.md](../re4/2d-transactions.md); what the PROM leaves behind is in
[prom-handoff.md](prom-handoff.md); the visuals IRIX offers are in [visual-buffers.md](visual-buffers.md).

## Sources and grades

- OpenBSD `sys/arch/sgi/dev/impact.c` and `impactreg.h`, revision `2df91d80c104636deeef8124252ddd5951b55fbf` of
  [the-machine-hall/openbsd-sgi](https://github.com/the-machine-hall/openbsd-sgi): what the driver writes (software
  expectation for the board; the driver runs on Octane hardware).
- IRIX 6.5.7 source tree: `stand/arcs/lib/libsk/graphics/MGRAS/mgras_init.c` (PROM raster init) and
  `stand/arcs/ide/isddevices/graphics/MGRAS/mgras_hqpio_redma.c` (host pixel transfer test, the component-order field).
- The 6.5.22 X server and libGLcore traces recorded in [PP1.h](../pp1/PP1.h) and [CMAP.h](../cmap/CMAP.h): they are the evidence for
  the pixel-type and main-mode fields, graded in those headers.

Grades follow [AGENTS.md](../../AGENTS.md#7-published-documents). Nothing here was observed on a board.

## The visual, word by word

| What | Value the driver writes | Meaning | Grade |
| --- | --- | --- | --- |
| Screen | 1280 x 1024, 32 bits per pixel | fixed in the driver; the PROM's default timing is the same size ([prom-handoff.md](prom-handoff.md)) | software expectation |
| XMAP main mode, window ID 0 | `0x000007a4` (PP1 select 1, XMAP index 0) | format field (bits 4:0) 4; colour-map block (bits 9:5) 29; bit 10 set | software expectation |
| PP1 fill mode | `0x6300` or `0x6304`, with the logic operation in bits 29:26 (3 copy, 6 xor): `0x0c006300`, `0x18006304` | pixel type (bits 10:8) 3, bit 13 set (the "36-bit RGB" type, used here with 24 planes), draw-buffer field (bits 20:14) 1 = buffer A, bit 2 enables the logic op | software expectation; field names inferred from PP1.h's traces of the X server, which writes `0x0c006304` for a 24-bit window |
| Fill mode | 0 | | software expectation |
| Packed colour | red in 7:0, green in 15:8, blue in 23:16 | the driver builds `00BBGGRR` and says so in its comments; the console palette it uses puts red in the low byte | software expectation |
| Alpha | not written (register `0x5f`), packed colour bits 31:24 not used | no alpha in this visual | software expectation |
| Colour masks | `ColorMaskLSBsA = ColorMaskLSBsB = 0xffffff`, `ColorMaskMSBs = 0`, transfer masks `0xffffff` | 24 planes drawn, the 12 upper planes of the 36-bit pixel untouched | software expectation |
| Draw buffer pointers | `DRBpointers = 0xc8240` | bits 9:0 `0x240`: the main buffer page; bits 19:10 `0x320`: the second page | software expectation |
| Config | `0xcac` | not decoded | unknown |
| Window origin | `XYWIN = (0, 0x3ff)` | | software expectation |

The same fill mode with the same colour order is what the 6.5.22 X server uses for 24-bit windows (the PP1.h trace: fill
mode `0xc006304`, mask `0xffffff`, main mode words for RGB windows naming colour-map block 29), so the pixel-processor side is the
board's ordinary 24-bit RGB path, not a private driver mode. Inferred, from the match of two independent software
sources. The match covers the fill mode and the colour-map block only: no held trace gives the X server's single-buffered
24-bit main-mode format, so that the display side (format 4) is the ordinary single-buffered window is not shown.

## Component order, alpha, buffers

- **Order.** Packed colour red 7:0, green 15:8, blue 23:16. The host-image transfer path uses an order field that the
  diagnostic sets to 0 and names ABGR: bytes of a pixel in host memory are alpha, blue, green, red, so a big-endian 32-bit
  read of the pixel is `0xAABBGGRR` with red in the low byte. That agrees with the packed colour (inferred: the two names
  describe the same word, and both are from IRIX or OpenBSD software, not from the board). IRIX's own formatter has a swizzle bit
  for the opposite order ([HQ3.h](../hq3/HQ3.h)).
- **Alpha.** None in this visual. The XMAP configuration word the PROM writes carries a constant alpha of `0xff` (config
  default, bits 18:11), which belongs to the display side and is not a pixel. For a driver's shadow buffer: treat the top byte
  of each 32-bit pixel as unused on the way out and write zero.
- **Scanout routing.** The pixel is 24 planes drawn into the main buffer's pages. XMAP window ID 0 with main mode `0x7a4` shows the
  frame buffer as colour (format 4 is undecoded; that it is an RGB format is inferred from the driver working on Octane hardware); the board's gamma table sits after the XMAP in the DAC and is the PROM's ramp
  ([prom-handoff.md](prom-handoff.md)); whether the colour map is in the path for an RGB window is not shown by any held source.
  The PROM loads all 8,192 colour-map entries with an identity ramp, which would make the block-29 name harmless either way
  (inferred).
- **Displayed buffer.** OpenBSD is single-buffered: its draw field is 1, buffer A, `DRBpointers` bits 9:0, which are page
  `0x240`, the same page as the main pointer of the PROM's scanout word (`0x1c0c8240`). So it draws into the buffer being
  displayed. That is a statement about the sequence: the driver never writes the buffer-select register, and the PROM's board
  init writes it once for the main buffer and once for the overlay with a named default whose value is in a header not held.
  The 6.5.30 IP27 kernel object's copy of that routine stores 0 for both, which is the unswapped state (inferred for the
  PROM: same source routine, different build).
  A double-buffered 24-bit visual (the X server's format `0x15`) draws to the other page (draw field 4 or 5, `DRBpointers`
  bits 19:10) and is shown only after a swap through the buffer-select register. A boot-display backend and a miniport shadow
  should not use it.
- **`DRBpointers` is the DIB word's low 20 bits.** `0xc8240` is the same number as the low 20 bits of the PROM's DIB word
  `0x1c0c8240`. The 6.5.22 notes in [PP1.h](../pp1/PP1.h) give `0x90240` for a one-raster-engine board's X drawing; the two differ
  only in bits 19:10, which a draw field of 1 does not read. So the driver's constant is safe on a one-engine board for buffer A
  and a driver should not copy it for buffer B.

## Byte order

All values above are as IRIX and OpenBSD, both big-endian, issue them. A little-endian CPU needs the bus or formatter
byte swap for the host-image paths and the 64-bit numeric-FIFO words; this is a platform question and not answered here.

## Open questions

- What format 4 means exactly, and what bit 10 of the main mode word encodes ([CMAP.h](../cmap/CMAP.h) lists format 4 as seen
  and not decoded).
- Whether the buffer-select value 0 the kernel object's init stores (the PROM's own constant is not held) selects the main
  buffer for window ID 0.
- Whether the PP1-select value 1 that OpenBSD writes before the main mode word reaches both pixel processors on a
  two-engine board (the PROM writes with select 0, all).
- Decoding of `Config = 0xcac`.
