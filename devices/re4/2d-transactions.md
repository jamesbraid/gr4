# RE4 2D transactions in the public OpenBSD driver

The public OpenBSD driver drives the RE4 raster engine for rectangle fills
and console glyph rows through a fixed set of numeric FIFO writes. This page
gives those write sequences, what each one is for, and what is still open.
The register offsets, widths and fields are in
[devices/re4/registers.toml](registers.toml), and the FIFO packet framing is in
[devices/mgras/registers.toml](../mgras/registers.toml). Nothing here was measured on a board.

## Sources and grades

- OpenBSD `sys/arch/sgi/dev/impact.c`, `impactreg.h` and `gl.h`, public
  revision `2df91d80c104636deeef8124252ddd5951b55fbf` on branch
  `sgi-is-alive-at-7.9` of
  [the-machine-hall/openbsd-sgi](https://github.com/the-machine-hall/openbsd-sgi).
  The fill, glyph and repaint routines in `impact.c` are the source of the
  sequences below.

Grades follow the legend in [AGENTS.md](../../AGENTS.md#7-published-documents).
Which registers the driver writes, their values, their widths and the order
of the writes are software expectations taken from the driver source. What a
write does to pixels is inferred from the driver's own use of it. Nothing
here is a register manual or a bus measurement.

## Numeric FIFO packets

Each command is one 64-bit write to the normal command FIFO at offset
`0x020400`. The payload is the low 32 bits. The register selector is shifted
left 40 bits, so it occupies bits 48:40 for the nine-bit selectors the driver uses
(`impactreg.h` gives `IMPACTSR_CFIFO_REG_SHIFT` as 40 and the largest selector it
writes is `0x161`), and bit 50 is the execute mark. The framing constant and selector
values are recorded in `HQ4_NUMERIC_PACKET` and the RE4 register table. The
execute mark records the driver's request to run the primitive. It does not
say when the operation finishes.

## Rectangle fill

The driver stages these writes in order, and the alias write with execute is
the only one that paints:

1. PP1FILLMODE, `0x0c006300` for a copy fill or `0x18006304` for an XOR fill.
2. FILLMODE, zero.
3. PACKEDCOLOR, red in bits 7:0, green in 15:8 and blue in 23:16.
4. BLOCKXYSTARTI, x in bits 31:16 and y in bits 15:0.
5. BLOCKXYENDI, the inclusive last column and row. A block of width `w` and
   height `h` ends at `(x + w - 1, y + h - 1)`.
6. IR_ALIAS, `0x18`, with the execute mark.

A copy replaces the covered colour bits. An XOR combines the source with the
destination, so the same XOR fill applied twice restores the original pixels.
Writes that come before the alias execute only set up the operation. The
driver repaints its own software copy of the screen for the affected rows and
columns, so this path does not need a framebuffer block copy.

## Console glyph rows

For a console glyph the driver writes PP1FILLMODE `0x0c006300`, FILLMODE
`0x00400018` (glyph opaque and glyph stipple, block type 1), PACKEDCOLOR for
the foreground, and BKGRD_RG and BKGRD_BA for the background. Each rectangle
uses the same inclusive coordinates as a fill. The alias write `0x18` with
execute is the same write the fill uses; that it arms the rectangle without
painting it is **inferred** from the driver's later CHAR_H and CHAR_L executes,
which supply the row bits.

Glyph rows then depend on the width:

- Widths one through eight. The driver arms the full glyph rectangle once.
  Each CHAR_H execute carries the next row byte in bits 31:24, and the row
  moves down by one after each execute. The driver stops at the final row.
  Set bits take the foreground colour and clear bits take the background.
  Column order is most significant bit first, and bits past the width are
  clipped. The one-row advance and the bit order are inferred from the
  driver loop; the driver keeps the coordinates unchanged between executes.
- Widths nine through sixteen. The driver arms a one-row rectangle for each
  row. It writes CHAR_H with the 16-bit row shifted left 16 bits, without
  executing. It then executes CHAR_L with the row shifted left 24 bits, which
  draws the row once. The top byte of CHAR_H covers columns zero through
  seven, and the top byte of CHAR_L covers columns eight through fifteen
  (**inferred** from the shifts; the driver does not say). Padding past the
  width is clipped, also inferred. The driver then moves to the next row and
  arms again.
- Underline. The driver substitutes an all-ones row (`0xff` or `0xffff`) for
  the glyph row.

The driver's own comment calls this a 4:8:4 background: red and blue keep only
their high nibble and green keeps all eight bits, each placed in a 12-bit
component with the low four bits zero.
For the colour word `0x00d0b0a0`, the driver sends BKGRD_RG `0x00b00a00`
(green in bits 23:12, red in bits 11:0) and BKGRD_BA `0x00000d00` (blue in
bits 11:0). Whether the board expands each component from those 12 bits
in the same way is unknown.

## What the IRIX text port does with glyphs

Source: IRIX 6.5.7 `stand/arcs/lib/libsk/graphics/MGRAS/mgras_tport.c` (`MgrasTpDrawbitmap`, which the kernel text port is built from), and the 6.5.0 kernel object `usr/cpu/sysgen/IP28boot/mgras_tport.o` (`MgrasTpDrawbitmap` at `0x358`), whose literal pool holds the packets. Established as what software writes; what the board does with it is inferred.

- **Background left alone.** The text port writes FILLMODE `0x00418008` before every bitmap (packet `0x0019100400418008` in the object's literal pool): glyph-stipple (bit 3) and block type 1, with the glyph-opaque bit (bit 4) clear. The routine sets no background colour. So a glyph that draws only its set bits is FILLMODE with bit 3 and not bit 4; OpenBSD's `0x00400018` sets both. That clearing bit 4 leaves the zero bits untouched is inferred from the two writers. The vector `0x418008` is in the `fill_mode` tests of [registers.toml](registers.toml).
- **Glyphs over 16 wide.** The text port arms the block once for the whole bitmap and then sends the rows in order, never re-arming per row, whatever the width. A row is `shorts per row` 16-bit values (the bitmap's own count, rows padded to a short). For each four shorts it stores `CHAR_H` (first two shorts, high half first, stage) then `CHAR_L` (next two, execute); a remainder of three shorts is `CHAR_H` (two) then `CHAR_L` (the third in the high half); two or one shorts are a single `CHAR_H` execute. The library reports a large-bitmap capability, and its object returns it as 1. So the hardware takes up to 64 columns per execute, and wraps to the next row itself when the block's width is used up (inferred: no per-row set-up exists in the code). The driver in OpenBSD never goes past 16. Where the bits for columns beyond the block width go is not shown; the code pads rows only to a short.
- **Order of bits.** Most significant bit first within each 16-bit short, shorts in left-to-right order. Inferred from the packing.

## Background colour word

Two writers are known. OpenBSD puts each 8-bit component in bits 11:4 of a 12-bit field (blue in the second register, green and red in the first: green in bits 23:12, red in bits 11:0), low nibble zero. The IRIX desktop's 50 percent icon dither is recorded in [RE4.h](RE4.h) with the same layout (green `0x700`, red `0xC00` for 8-bit `0x70` and `0xC0`). The "4:8:4" in the driver's comment describes the 12-bit field the driver builds, not an expansion the board does. Whether the board replicates the high nibble into the low when it draws is unknown; no IRIX source writes `BKGRD` (the PROM and the 6.5.7 diagnostic never set it). **Settled by:** an opaque glyph drawn in a background of `0x0f0` and read back, against `0x0ff`.

## Copies

No board-to-board (frame buffer to frame buffer) copy is documented. The OpenBSD driver says so in its header comment: framebuffer-to-framebuffer operations are, according to the author of the earlier Linux reverse engineering, "not reliable", and IRIX's X server does not use them, so the driver repaints from its own copy. That is hearsay with no mechanism: it names no failing case and cites no measurement. The shipped software agrees on the second half: `glCopyPixels` goes through host memory in the client (read in strips by host DMA, drawn back, see [HQ3.h](../hq3/HQ3.h)), and the X server's screen copy `mgrasCopyPixels` writes only host-address-generator registers and a start word (`0xB9` and `0xB1`, one read and one write direction, [questions](../../questions/README.md)). No held source or diagnostic copies one region of the frame buffer to another inside the board; the diagnostic's "block" tests are fills. What "unreliable" means on hardware is unknown. **Settled by:** a raster-engine copy attempt on a board, or the host-interface program's `copypixels` module (`hq3copypixels.uc` is one of its source names) once decoded.

## Open questions

- Physical reset state and retention of a half-written glyph or armed
  rectangle. The driver does not show these.
- Completion timing for the alias execute, and whether a second execute can
  be issued before the first finishes.
- Glyph or fill traversal in reverse or off-screen. The driver does not use them in the paths above.
- Whether a set bit in a glyph row always selects the foreground.
- Interrupts, DMA and the native bank and address routing of these writes.
  None of the paths above depend on them, so they are not described here.
