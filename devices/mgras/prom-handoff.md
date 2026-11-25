# What the PROM leaves in an IMPACT board

What the Origin's I/O PROM and the Octane's PROM do to an IMPACT board before the operating system starts, what state
the text console leaves, and what changes with `console=d`. This is the state a boot-display backend can rely on, and
the list of registers a driver such as OpenBSD's rewrites after the firmware. The register names are in
[registers.toml](registers.toml) and the numeric-FIFO write form in
[2d-transactions.md](../re4/2d-transactions.md).

## Sources and grades

- IRIX 6.5.7 source tree, PROM graphics library: `stand/arcs/lib/libsk/graphics/MGRAS/mgras_init.c`, `mgras_tport.c`,
  `mgras_timing.c`; the textport selection in `stand/arcs/lib/libsk/graphics/gfx.c` and `htport.c`; the Origin install path
  `stand/arcs/lib/libsk/io/klgraphics.c`; the Octane power-on diagnostics `stand/arcs/ide/IP30/pon/pon_gfx.c`,
  `pon_more.c`. These are the 6.5.7-era sources of both PROMs' graphics code (the Origin `IO6prom` and the Octane
  `IP30prom` link the same library; the IP27 branch of `mgras_install` is marked "IP27 PROM ONLY" in the file).
- The shipped 6.5.30 PROMs: the IO6 PROM 6.156 (`io6prom.img`, decompressed payload `io6prom.bin`, SHA-256
  `bf341a71821541233cb96459f6b99f6f4ecd2cf90f7e9321d918686ee6c25047`) and the Octane PROM 4.17 (`IP30prom.bin`, SHA-256
  `ee4722ca6f9b821ffadf156346c4d69bf5be71fc4b911cee75e36a1f51a49972`). What was checked in them is string presence only
  (below). The source predates both images, so every behavioural claim here is a statement about the source, and carries
  that limit.
- The 6.5.30 IP27 kernel object `mgras_init.o` (`MgrasInitXMAP`), read as disassembly, for one constant.

Grades follow the legend in [AGENTS.md](../../AGENTS.md#7-published-documents). "Established" here means the source
or object says the code does it. Nothing was read from a board.

## What the code does, in order

`mgrasInitBoard` is the whole bring-up. It is reached the same way on both PROMs (through `MgrasProbeAll` on the Octane,
`mgras_install` on the Origin).

1. Reset. Origin: the crossbow link to the widget is reset, held for 1 ms, and the link control and the widget's own
   control word are restored; the hub's input-pipe register for that widget is set to fire-and-forget with the crossbow
   credit count. Octane: the same link reset on the crossbow port. Then the DCB device-control words are written and the
   raster-engine and pixel-processor reset bit is released through the board-control register. Established.
2. Host interface initialisation with **zero geometry engines**: the HQ config word is written with the engine count forced to
   0, then the FIFO thresholds and delays, the formatter mode, the flag registers, all interrupt enables cleared. Established.
   The library says in a comment that geometry-engine microcode cannot be loaded this early.
3. Raster back end: DAC reset and set to 24-bit true colour with a 256-entry gamma ramp; raster-engine and pixel-processor
   synchronisation and RDRAM sync; screen blanked; the video timing table loaded; VC3 display-ID tables initialised and
   the cursor cleared; XMAP configured; raster-state registers initialised; the colour map loaded with an identity ramp over
   all 8,192 entries; screen unblanked. Established.
4. Raster state (the "RSS" init): colour masks all ones (`ColorMaskLSBsA/B = 0xffffffff`, MSBs 0), transfer masks all ones,
   screen masks and scissors to the full screen, `xywin` 0, `winmode` 0, `pp1winmode` 0, Z, stencil, blend, alpha and
   texture modes to defaults, then the whole screen cleared to black with a PP1 fill mode of `0x00004203` (pixel type
   RGBA8888, from [PP1.h](../pp1/PP1.h)), and left at fill mode `0x00005000` / PP1 fill mode `0x0c004203`. Established.
5. Textport (only when a text console is used, below): screen masks to the screen size, `pp1winmode` 0, PP1 fill mode for 8-bit
   colour index, **XMAP window ID 0 set to 8-bit colour index (main mode 0)**, display enabled in the DIB control word,
   the cursor enabled (`VC3_CURS_CONTROL` function and display bits), then glyphs drawn with `CHAR_H`/`CHAR_L` stores and
   rectangles drawn with `BLOCK_XYSTARTI`/`BLOCK_XYENDI` and `IR`. The palette is the 8-bit colour map. Established.

## State left in the board

| Item | Left by the PROM | Grade |
| --- | --- | --- |
| HQ and GE microcode | none loaded. The PROM library compiles its download routines out of the standalone build (`#ifndef _STANDALONE`) and calls the host-interface init with 0 geometry engines. The firmware reads the geometry engine revision from the board's serial record instead of from microcode | established (source) |
| Video timing | the default table for the monitor ID read at probe: 1280 x 1024 at 60 Hz for most IDs and unknown, 1280 x 1024 at 72 Hz for the 19-inch and 21-inch multiscan IDs 1, 9 and 11, 1024 x 768 only for the presenter IDs 130. Pixel clock 107 MHz for the 60 Hz table. The standalone build compiles the two-engine tables out and points the two-engine array at the one-engine tables, so a two-engine board is also timed from them | established (source) |
| Scanout pointers | DIB pointers `0x1c0c8240` in the 1280 x 1024 tables (60 Hz, 72 Hz and the presenter table): main buffer page `0x240`, second page `0x320`, overlay page `0x1c0`. The raster side's `DRBpointers` is written with the table's main word, `0x240` (the table's overlay `0x1c0` and aux 0 words are recorded, not written there). The 1024 x 768 presenter table uses DIB `0x280002e0` instead | established (source) |
| Pixel format of the displayed window | window ID 0: 8-bit colour index into colour-map block 0 (main mode 0). All other window IDs: the format the library names "12-bit RGB"; the kernel build of the same routine writes 8 into every main-mode word, so the constant is 8 (observed in the 6.5.30 IP27 `mgras_init.o`) | established (source; object for the value) |
| Colour map | all 8,192 entries hold an identity ramp (entry value = index modulo 256 in each channel), then the text colours are written at the low entries when the console starts | established (source) |
| DAC | 24-bit RGB true colour, 4:1 mux, a 256-entry ramp in the gamma table (10-bit value = index x 4 + 2) | established (source) |
| Cursor | enabled by the textport init (the standalone build) | established (source) |
| Raster registers | those of the RSS init above | established (source) |
| Screen contents | cleared to black; with a graphics console, the text background | established (source) |
| Video | on, if a graphics console is open; see below for the Octane without one | inferred |

The default 1280 x 1024 board of an Origin 2000 or an Octane therefore comes out of the PROM with window ID 0 in 8-bit
colour index mode. A driver that wants 24-bit RGB (OpenBSD, an NT HAL) must switch window ID 0 itself.

## What a 24-bit-RGB driver rewrites, and whether the PROM state already covers it

OpenBSD's setup (`impact_setup` in `sys/arch/sgi/dev/impact.c`, read from the public tree) against what the PROM leaves:

| OpenBSD write | PROM state | Needed? |
| --- | --- | --- |
| command and data FIFO thresholds (`0x47`/`0x14`/`0x64`, `0x40`/`0x10`/`0`) | the PROM writes the same six registers with constants from a header not held here | not decided; the values may equal; unknown |
| cursor off (VC3 index word `0x1d000100`) | cursor on | yes, if the cursor is to stay off |
| `ColorMaskLSBsA/B = 0xffffff`, `ColorMaskMSBs = 0` | LSBs all ones, MSBs 0 | no (the same planes) |
| `XfrMaskLo/Hi = 0xffffff` | `0xffffffff` | no |
| `DRBpointers = 0xc8240` | `0x240` in bits 9:0 and 0 above (one-engine table); the DIB word carries the same `0x240` and `0x320` | the draw buffer field of OpenBSD's fills selects bits 9:0, which are identical; no |
| `Config = 0xcac` | DestRE all, Y flip bottom-to-top, as in the RSS init; the word's value is not decoded here | unknown |
| `XYWIN = (0, 0x3ff)` | 0 | yes, if the window origin matters; the y word differs |
| XMAP PP1 select 1, index 0, main mode `0x7a4` | PP1 select 0 (all), main mode 0 (8-bit colour index) | yes. Only the main mode word matters for the format change; see [packed-colour.md](packed-colour.md) |

So the minimum a driver must rewrite for 24-bit RGB with the PROM's state is: the XMAP main mode of window ID 0, the
PP1 fill mode and fill mode of each draw (OpenBSD writes both per rectangle), `PackedColor`, and, if it wants no cursor, the
VC3 cursor control. The thresholds, the colour masks and `DRBpointers` are already usable. Inferred: the Octane and Origin PROM
states are the same because the library is shared.

## `console=d`

- **Origin (IO6 PROM).** `kl_graphics_install` returns before it looks for a board when the first character of `console` is `d`
  or `D`. `mgras_install`, and with it `mgrasInitBoard`, runs only from that function, so on a serial console the PROM does
  **not** reset, initialise or load a timing table into the board at all. What state the board is in then (the crossbow link
  and credits the I/O PROM and the node PROM leave for any widget; unconfigured video) is outside this library. An NT
  backend on an Origin must bring the board up from the power-on state, or give up. Established for the source.
  Corroboration: the 6.5.30 `io6prom.bin` holds the strings "Installing Graphics Console... ", "mgras_install: Bad news,
  too many MGRAS Boards!" and "mgras_probe: should not be called before mgras_install" (file offset `0x9ab00` for the first).
  The string xref and the console test in the shipped image were not located (the string is reached through the global
  pointer; a decompiled xref in Ghidra would settle it).
- **Octane (IP30 PROM).** The power-on diagnostics call `pon_graphics` without looking at `console`; a comment in its caller
  (`pon_morediags`) notes that with a serial console the "running diagnostics" message is printed first because graphics
  takes long. `pon_graphics` probes every board, runs `mgrasInitBoard` on each, runs the board self-test, and then calls
  `_init_htp`, which initialises the textport on the console board and paints it. `htp_init` ends with the textport state "video off"
  and `htp_gfx_init` blanks the screen after the textport init. So with `console=d` the Octane's board is fully initialised
  as above but **blanked** (display-enable bit clear in the DIB control word) and the textport has painted the PROM
  background into memory. A driver unblanks it with the display-enable bit of DIB control 0. Established for the source
  reading; the shipped PROM 4.17 shows the strings ("Solid Impact", "IMPACTSR") and was not traced.
  A power-on failure (`FAIL_BADGRAPHICS`) leaves the board as the failure found it.

## Open questions

- Whether the shipped 6.5.30 IO6 PROM 6.156 and Octane PROM 4.17 still behave as the 6.5.7 library does for `console=d`. A
  trace of the console test in `io6prom.bin` and of `pon_morediags` in `IP30prom.bin` would settle it.
- The numeric values of the PROM's FIFO thresholds, and whether OpenBSD's equal them: the constants live in a kernel header
  that is not in the tree.
- The decoded meaning of `Config = 0xcac` and of main-mode bit 10.
- What the Origin PROM does to the board before `mgras_install` when `console` is not `d`, in the widget discovery
  (the I/O PROM's classification pass reads the identity words; it writes none that this library shows).
- Whether the PROM-loaded identity colour map is also what makes block 29 of main mode `0x7a4` an identity for RGB windows
  (inferred, [packed-colour.md](packed-colour.md)).
