# VC3 cursor, display-ID tables and window IDs

How the shipped software programs the VC3 hardware cursor and the display-ID (DID) tables that tell the pixel path which window format each screen pixel uses, and how window and clip IDs are given out. Register numbers, ports and SRAM constants are in [registers.md](registers.md).

## Sources and grades

- IRIX 6.5.7 `stand/arcs/lib/libsk/graphics/MGRAS/mgras_init.c` (`MgrasInitVC3`, `MgrasSetVC3Timing`, `MgrasInitCursor`, `MgrasInitXMAP`), the PROM and kernel library; the numeric values of its `VC3_*` constants are not in the tree and come from [registers.toml](registers.toml).
- 6.5.0 kernel object `usr/cpu/sysgen/IP28boot/mgras_retrace.o` (`MgrasPositionCursor`, `0x1598`).
- 6.5.0 X server `usr/lib/X11/dyDDX/impactpc.so`, decompiled routines under `software/xsgi/decomp/` (`mgrasInstallCursor`, `mgrasCursorOn`, `mgrasInitDIDState`, `mgrasNeedCID`, `FindFreeCID`), read for constants and calls only.

Established means a store or constant read in the source or an object. Inferred is a reading of what those say.

## Cursor

The glyph is 256 bytes (128 sixteen-bit SRAM words) at SRAM word `0x400` (`SRAM_CURS_GLYPH`): two planes of 128 bytes, plane 0 first. Each plane is 32 rows of four bytes, a 32-pixel row. The PROM's pointer fills the first two bytes of 16 rows (a 16 by 16 shape in the top left) and leaves the rest zero, so the field is 32 by 32 with two bits per pixel. **Established** for the layout the PROM and X server load; that plane 0 and plane 1 are the shape and the outline (the source names the buffers `ptr` and `ptr_ol`) is inferred. The 64 by 64 glyph the constants allow (control bit 3, glyph aligned to 256 words) is not used by any shipped code read.

Programming order, as the PROM does it (`MgrasInitCursor`, **established**):

1. Write `0` to the cursor control register (`0x1d`): cursor off.
2. Load the 128 words into SRAM at `0x400` through the ram port.
3. Write the cursor entry point (register 1) with `0x400`, and the position registers (2 and 3) with `0`.
4. Load eight colours into the colour map at the cursor's index base (the base constant is not held) and set the XMAP configuration word.
5. Write `3` to the control register (function enable, bit 0, and display enable, bit 1). The hosted build of the same routine leaves the cursor off and the X server turns it on.

The X server (`mgrasInstallCursor`, **established** from the decompiled stores): clear bits 1:0 of its saved control word and write it to register `0x1d`; load the 128 words at `0x400`; wait for display-bus room (low five bits of `0x070100` clear); write register 1 with `0x0400` (the packed store `0x01040000`); write the saved control word back. After the load, when a per-screen flag is set, it polls register `0x0b` (the vertical line count) until it reads 0 before it writes the entry point, so the switch happens at the top of the frame (inferred from the register's name). `mgrasCursorOn` only sets or clears bits 1:0 of the saved word and writes it. Each register write is one 32-bit store of `(register << 24) | (value << 8)` to the index-data port (`0x062038` on the Indigo2 board map used by this object).

Position (`MgrasPositionCursor`, **established**): under the board mutex, wait until the display-bus room field is below 5, then store register 2 with `x - hotspot_x + 31` and register 3 with `y - hotspot_y + 31`, in that order; the hot-spot words are at +392 and +396 of the kernel's board record, and the arguments are saved at +400 and +404. So `CURS_HOTSPOT_OFFSET` (31) is the amount the kernel adds to both axes, **established**. For one video format, a board word at +1880 equal to 16, the routine first re-maps the y value through the timing record's line count and its first word's bit 2; that is a field-interleaved mode and the mapping is not decoded here (**unknown**).

## Display-ID tables

The PROM builds the tables in `MgrasInitVC3`, after the timing tables are loaded (**established**):

- Two sets, one per display-ID entry point: the main set (entry point register `0x04`, set by `MgrasSetVC3Timing` to the main frame table's SRAM base) and the overlay set (register `0x05`). SRAM starts: main frame table `0x500`, room `0x43e` words for each frame table; the line tables fill the SRAM above them, to word `0x2000` (the constants in [registers.md](registers.md)).
- A frame table has one 16-bit entry per scanline of the timing format (its line count): the SRAM address of that scanline's line table. The last entry after the lines is `0xffff` (the source's "end of frame table"). The PROM points every line at one shared line table.
- A line table is a list of 16-bit entries. The PROM's is `{0x0000, 0x7ff << 5}`: DID 0 from x = 0, then an end-of-line entry. The source comment reads the second as the end-of-line flag shifted left by 5, so the entry is the x position in bits 15:5 and the window ID in bits 4:0 (**inferred** from that comment and from 32 main IDs fitting five bits; x = `0x7ff` ends the line).
- `MgrasSetVC3Timing` writes the display control register (`0x1e`) with video, both DID enables and blackout (bits 2, 3, 4 and 1), and the interlace and genlock bits from the format.

A second window format on the screen therefore needs three things. A free ID: the XMAP holds a main-mode word for each of 32 main IDs and 8 overlay IDs, which the PROM programs in two loops (`MgrasInitXMAP`: all 32 to 12-bit RGB, all 8 overlay IDs off), and the X server's per-screen ID state expects 40 entries and prints a mismatch otherwise (`mgrasInitDIDState`, bound `0x28`; **established**). That ID's XMAP main-mode word set to the new pixel format (`mgras_xmapSetMainMode`; the word's fields are in [devices/cmap](../cmap/registers.md)). And line tables: for each scanline where the window appears, a line table that switches to the ID at the window's left edge and back at its right, with the frame table entry for that scanline pointing at it. The X server loads them in `vc3LoadDIDTable`, which reports "Too many transitions in line table" when a scanline would need more entries than fit; the limit is not read here (**unknown**).

## Window IDs and clip IDs

- **Window (display) IDs.** Reserved ID 0 is the default; the X server reserves IDs through `rrmSetReservedDID` and sets a window's through `SetDIDMode`, with `cmapDID` choosing the colour-map ID. The decompiled allocator was not followed, so the policy for picking a free ID is **unknown**. **Settled by:** reading `SetDIDMode`, `cmapDID` and `rrmSetReservedDID` in `software/xsgi/decomp/other/other.c` and `rrm/rrm.c`.
- **Clip-ID plane.** There is one clip-ID plane for the whole screen, two bits per pixel, so IDs 1 to 3 (0 is "no clip"). A window gets an ID when its visible region needs more rectangles than the four screen masks of the raster engine hold: `FindFreeCID` picks the first free ID, `mgrasNeedCID` decides the need (returns 1 outright for more than 16 visible boxes and 0 for one box or none; the cases between were not decoded), `mgrasDrawCID` paints the region with the ID. The details of the fill and of the match word the kernel gives GL windows are in [PP1.h](../pp1/PP1.h) ("Clip IDs"). **Inferred** from the X server's calls and the PP1 fill mode it writes; where the IDs live in the RDRAM is unknown.

## Unknown, and what would settle it

| Unknown | What would settle it |
|---|---|
| Which plane of the glyph is the shape | Draw a glyph with one plane set on a board, or a model run |
| The cursor colour-map base index and the eight colours | The value of the cursor colour-map constant (not in the held headers), or the PROM's data table |
| The field-interleaved cursor y mapping | Decode the branch at `mgras_retrace.o` `0x16a8` with the timing record's layout |
| The line-table entry limit and the transition encoding | Disassembly of `vc3LoadDIDTable`, or a captured table |
| ID allocation | The decompiled allocator, as above |
