# RE4 2D transactions in the public OpenBSD driver

The public OpenBSD driver drives the RE4 raster engine for rectangle fills
and console glyph rows through a fixed set of numeric FIFO writes. This page
gives those write sequences, what each one is for, and what is still open.
The register offsets, widths and fields are in
[defs/re4.toml](../defs/re4.toml), and the FIFO packet framing is in
[defs/mgras.toml](../defs/mgras.toml). Nothing here was measured on a board.

## Sources and grades

- OpenBSD `sys/arch/sgi/dev/impact.c`, `impactreg.h` and `gl.h`, public
  revision `2df91d80c104636deeef8124252ddd5951b55fbf` on branch
  `sgi-is-alive-at-7.9` of
  [the-machine-hall/openbsd-sgi](https://github.com/the-machine-hall/openbsd-sgi).
  The fill, glyph and repaint routines in `impact.c` are the source of the
  sequences below.

Grades follow the legend in [AGENTS.md](../AGENTS.md#7-published-documents).
Which registers the driver writes, their values, their widths and the order
of the writes are software expectations taken from the driver source. What a
write does to pixels is inferred from the driver's own use of it. Nothing
here is a register manual or a bus measurement.

## Numeric FIFO packets

Each command is one 64-bit write to the normal command FIFO at offset
`0x020400`. The payload is the low 32 bits. The register selector sits in
bits 47:40, and bit 50 is the execute mark. The framing constant and selector
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
execute arms the rectangle without painting it.

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
  seven, and the top byte of CHAR_L covers columns eight through fifteen.
  Padding past the width is clipped. The driver then moves to the next row and
  arms again.
- Underline. The driver substitutes an all-ones row (`0xff` or `0xffff`) for
  the glyph row.

The background is packed as 12-bit components with the low four bits zero.
For the colour word `0x00d0b0a0`, the driver sends BKGRD_RG `0x00b00a00`
(green in bits 23:12, red in bits 11:0) and BKGRD_BA `0x00000d00` (blue in
bits 11:0). Whether the board expands each component from those 12 bits
in the same way is unknown.

## Open questions

- Physical reset state and retention of a half-written glyph or armed
  rectangle. The driver does not show these.
- Completion timing for the alias execute, and whether a second execute can
  be issued before the first finishes.
- Glyph widths above sixteen, and glyph or fill traversal in reverse or
  off-screen. The driver does not use them in the paths above.
- Expansion of the 12-bit background components on the board, and whether a
  set bit in a glyph row always selects the foreground.
- Interrupts, DMA and the native bank and address routing of these writes.
  None of the paths above depend on them, so they are not described here.
