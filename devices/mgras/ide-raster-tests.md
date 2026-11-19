# What the Octane diagnostic's raster tests settle

What the shipped standalone diagnostic (`ide`, IP30 build) says about IMPACT raster arithmetic, test by test. Every
statement is a **software expectation** unless marked otherwise: it is what the diagnostic stores, computes or compares,
not a measurement of a board. Grades are the ones in [raster-reference.md](raster-reference.md). Nothing in
`refs/irix-source/` or the `irix-657m-src` submodule was opened, and no restricted search hit was seen.

## The binary

- Build: IRIX 6.4 for Origin, Onyx2 and OCTANE disc image, `usr/stand/ide`. The banner string reads `SGI Version 6.4 IP30 IDE
  field  Feb  5, 1997`. sha256 `43237354b4ad84ab9a8328d8b2109b1fccd115c9b00d8f6b5e0f8a10e747659e`, 1,516,224 bytes, big-endian
  MIPS-IV ELF64, statically linked, **stripped**. There are no function symbols: the 81 `mg*` names are strings.
- Addresses below are the low 32 bits of the ELF's 64-bit virtual addresses (`0xa800000020xxxxxx`), so `0x2081c608` means
  `0xa80000002081c608`. Load segments: text `0x20800180`, read-only data `0x20917000`, data `0x20949000`.
- Read with Capstone (a host-side decoder run on a copy of the file); nothing was executed.
- The test dispatch table is in data from `0x20949ca8`: 32-byte entries of name pointer, routine pointer, the constant
  `0x100000000`, usage-string pointer. Routine addresses (established, from the table):

| Test | Routine | Test | Routine |
|---|---|---|---|
| `mg_re_internal_ram` | `0x2081a670` | `mg_logicop` | `0x208694fc` |
| `mg_color_tri` | `0x2081c608` | `mg_dither` | `0x2086a15c` |
| `mg_z_tri` | `0x2081e030` (calls `0x2081d530`) | `mg_tex_poly` | `0x2086b4b4` |
| `mg_points` | `0x2081e438` | `mg_notex_poly` | `0x2086b9bc` |
| `mg_lines` | `0x2081eacc` | `mg_tex_load` | `0x208747dc` |
| `mg_stip_tri` | `0x2081f2f8` | `mg_tex_lut4d` | `0x2087715c` |
| `mg_xblock` | `0x2081fa48` | `mg_tex_mddma` | `0x2087769c` |
| `mg_chars` | `0x2082000c` | `mg_notex_line` | `0x20821434` |

The alpha-blend and per-pixel-processor scene tests the IDE guide describes were not located by name; the strings
`Color Triangle Test: Alpha Triangle` and `Z Triangle Test: Triangle %d of 15` belong to `mg_color_tri` and `0x2081d530`.

## How a test passes or fails (answer to the first question)

**Stored expected data compared against a read-back image, not a reference model.** No routine read computes pixel values
from a model of the board. The diagnostic draws a primitive, reads the framebuffer region back, and compares it with data
stored in the program.

- **One shared check routine**, `0x2081bd5c`, is called from 33 sites across the raster and texture tests. Its arguments are
  rows, columns, a pointer to the expected words, a read mode, two descriptor structures, an expected-sum word and a sum
  index (a 0-based test number: 0 to 3 for the four colour triangles, `0x14` points, `0x15` lines, `0x16` stipple
  triangle, `0x17` block, `0x18` characters, `0x19` textured polygon, `0x1a` untextured polygon, `0x26` logic op, `0x27`
  dither). It copies the expected words to a buffer, reads the region back by DMA (`_mgras_hqdma_redma_read_compare`,
  `0x20827a04`) or PIO (`_mgras_hqpio_redma_read_compare`, `0x2082fc30`), and compares word by word in `0x20831254`.
- **Comparison.** `(read & mask) == (expected & mask)` per 32-bit pixel word. The mask is all ones, except `0xfff0fff0`
  when a pixel-format global (`0x20958698`) holds `0xcccccccc`, which clears bits 3:0 and 19:16 of each word (inferred: the 4-4-4-4 format). A
  mismatch prints the failing pixel's position, expected word and read word. Option `-c` skips the compare. The read-back
  buffer is host memory, so the comparison is on what the hardware stored and the DMA returned, not on video output.
- **Stored sum, option `-d`.** With `-d` the routine also calls `_check_crc_sig` (`0x2084b994`, string `CRC Check`), which
  reads a signature from the board and compares it with a 32-bit value passed by the test. **That stored value is the
  plain wrapping 32-bit sum of every expected pixel word of the test's table, not a CRC.** It reproduces exactly for
  every table checked: colour triangles 0 to 3 give `0x54005595`, `0x5455be00`, `0xa7180000`, `0xf1563e81`; lines (17 rows by
  14 columns) `0xc584ed6b`; stipple triangle (16 by 24) `0xaa0055aa`. Standard CRC-32 and CRC-32C settings (both byte orders,
  both reflections, init and xor-out 0 or all ones, masks 0xffffffff and 0x00ffffff) were tried on the colour tables and none
  matches. Whether the board's signature register accumulates exactly this sum is unknown; the diagnostic only compares
  it with the sum of its own table.
- **A second, host-side checksum** at `0x20831560` (used for texture-engine revision detection, strings `te_rev
  checksum`) accumulates a 64-bit value over the read-back words as `c = (c >> 1) + (c & 1 ? 0x8000 : 0); c += word`.
  The three values the revision test compares are `0x2aa70d210` (revision D), `0xbdfc48fc` (revision B, one TRAM) and
  `0x236379000` (revision B, four TRAMs). Read from the instruction words, the one-TRAM value is `0xbdfc48fc`; `devices/te1/registers.toml`
  carries `0x0bdf48fc` for it, two hex digits transposed.
- **Reading the tables in place.** The binary's second load segment starts at file offset `0x107000` and virtual address
  `0x20917000`, so a data address maps to the file offset `0x107000 + (address - 0x20917000)`: the data base `0x20953380` is file
  offset `0x143380`, the lines table `0x20954b80` is `0x144b80`. Words are big-endian. A wrapping sum of each table's words was checked
  against the stored sum for the red, lines and stipple tables. The binary is in the extracted IRIX 6.4 disc image named above
  (local, never committed).
- **Expected tables live in data** at `0x20953380` (the table area ends at `0x5244` bytes in, where flags begin). Words are
  `0xAABBGGRR`. Known layout:

| Table | Offset | Shape (rows by columns) | Used by |
|---|---|---|---|
| red, green, blue, alpha triangles | `0`, `0x600`, `0xc00`, `0x1200` | 16 by 24 | `mg_color_tri` |
| lines | `0x1800` | 17 by 14 | `mg_lines` |
| stipple triangle | `0x1bb8` | 16 by 24 | `mg_stip_tri` |
| characters | `0x21b8` | 16 by 40 | `mg_chars` (sum `0x920e01d2`) |
| further runs | `0x46d8` to `0x5238` | not decoded | texture tests and others |

- **Tests whose expected array is not in data.** `mg_points` (4 rows by 6 columns, sum `0xfd4fbe7c`), `mg_xblock` (sum
  `0x3fffff40`), `mg_logicop` (3 by 16 words, sum `0x188eecb0`), `mg_dither` and the polygon tests pass the address of an array
  in the caller's stack frame. A scan of each routine finds no store of a constant into that range, so where those words
  come from is **unknown**; their stored sums were read from the call site. `mg_z_tri` (`0x2081d530`) builds a 15-entry
  list on its stack (index, a 32-bit value such as `0x80403f80`, `0xc03fffc0`, `0xc07fbfc0`, a table pointer) and checks 16 by 16
  words; the entries were not decoded.

## `mg_color_tri` (`0x2081c608`)

Four triangles, one per colour channel, each drawn by the host-side setup routine `0x208671f4` and checked against its
stored 16 by 24 table. The window-coordinate vertices are the same four times (single-precision floats stored by the routine
from constants in read-only data):

| Vertex | x | y |
|---|---|---|
| V0 | 0 | 15 |
| V1 | 23 | 7 |
| V2 | 0 | 0 |

Per-vertex colour, as the stores place it: red triangle red 1.0, 0.5, 0.0 at V0, V1, V2; green triangle green 0.0, 0.5, 1.0;
blue triangle blue 0.5, 1.0, 0.0; each other channel 0 and alpha 1. These agree with the stored tables (red rises by `0x11`
per row, green falls by `0x11`, blue rises by 8.5 per column and per row). The alpha triangle's stored table has red `0xbf`
or `0xc0` (0.75), green falling `0xee` to `0x11` by `0x11` a row, and an alpha channel that falls non-linearly with y (`0xff`,
`0xef`, `0xd3`, `0xb8`, `0xa2`, `0x8b`, `0x79`, `0x66`, `0x59`, `0x4b`, `0x42`, `0x39`, `0x35`, `0x30` on the first pixel of rows 0
to 13). The blend state of that triangle was not decoded, so the non-linear alpha is unexplained.

### What the stored images show (fit, inferred)

Fitting the three ramp tables (172 covered pixels each) against the exact plane through the three vertices:

- **Coverage.** Per-row pixel counts (3, 7, 10, 13, 16, 20, 23, 20, 17, 14, 11, 9, 6, 3, 0, 0 for the red table) match all
  sixteen rows when a pixel is covered if its centre `col + 0.5` lies strictly left of the right edge evaluated at the integer
  scanline `y = row + 1`, with the left vertical edge at x = 0 covering centre 0.5. The row where the right edge falls exactly on
  a centre (x = 11.5 at y = 11) has 11 pixels, so **an exact tie on the right edge is excluded**. The apex row (y = 15) has no
  pixels. Which table row is screen row 0, and the y of the base vertex, are not pinned.
- **Colour sampling.** The channel values fit the unrounded plane evaluated at `x = col`, `y = row + 1` with mean residual
  within 0.05 of a level on all three channels (zero bias) and no pixel off by more than one level.
- **Dither.** The residual is not noise: it is a fixed 4 by 4 pattern. The iterated value is the register accumulation
  `start - dy * (row + 1 - 15) + dx * col` in the 12.12 register format, where `start`, `dy` and `dx` are the values listed in the replay
  spec below and `15` is the base vertex's y. Round it to 12 bits (add `0x800` to the 24-bit sum, then drop 12 bits to get `x`), scale
  with the diagnostic's own routine `y = x - (x >> 8)`, and keep `y >> 4` as the level and `y & 15` as the fraction. The stored byte is
  the level plus one when the fraction is greater than a threshold `T(row mod 4, col mod 4)`, with `row` and `col` the table indices
  (framebuffer origin at the table origin). **inferred (fit to the stored tables)**: with this arithmetic all 516 channel samples of
  the three ramps (172 covered pixels each) reproduce with 0 mismatches, and the thresholds are:

| row mod 4 | col 0 | col 1 | col 2 | col 3 |
|---|---|---|---|---|
| 0 | 0 | 8 | 2 | 10 |
| 1 | 12 | 4 | 14 | 6 |
| 2 | 3 | 11 | 1 | 9 |
| 3 | 15 | 7 | 13 | 5 |

  That is the classic 4 by 4 Bayer matrix, unshifted and untransposed. The stored tables pin cells (0,0)=0, (1,3)=6, (2,3)=9, (3,0)=15
  and (3,1)=7 exactly, (0,1) to 6..9 and (1,1) to 3..4; the remaining cells are bounded to a few values by the same samples, so the matrix
  is the canonical member of a small family that the samples allow, not the only one (every cell lies inside its allowed interval).
  The 0.5 rounding is what the earlier fit lacked: without it, cells need contradictory thresholds and no classic matrix fits. A constant
  0.5 colour (start `0x7ff800`, the lines table's purple column at x = 12) gives level `0x7f`, fraction 8, so rows 0 to 3 store
  `0x80`, `0x7f`, `0x80`, `0x7f`, as the table does. A constant 0.75 alternates by row in the same way. The earlier version of this
  page reported threshold intervals from a plane evaluated without the 12-bit rounding and concluded that no classic matrix fits.
- This is a fit to stored images. Slope quantisation in the real setup was not modelled (the registers are used as written), and the
  rounding is fitted: an offset of minus half a 12-bit step also fits, with every threshold one lower (carry when the fraction is
  not less than the Bayer value), so the split between bias and compare is not pinned (inferred).

## Host-side setup arithmetic seen in the diagnostic

The diagnostic does its own triangle setup in floating point (`0x208671f4` and helpers), then writes register values through
`0x2082ae2c`, which sends the header `((reg + 0x1800) & 0x1fff) << 8 | 0x400004` and a masked data word.

- **Window-coordinate bias.** x and y are converted to double, `49151.5` (a constant in read-only data at `0x20932190`) is added,
  and the sum is converted back to single precision and sent as the float's bit pattern (`0x208673a0` to `0x208673c8`). So the
  value written is `float32(x + 49151.5)`, rounded by the host FPU in whatever mode is current; no mode change is made in the
  routine. Software expectation for the bias; the same constant the GE microcode reading found (see [RE4.h](../re4/RE4.h)).
- **Colour start scale.** The same routine's constant pool holds `16773120.0` (`0xFFF000`) and `16777216.0` (2^24), matching the
  `c * 0xFFF000` colour start format in [RE4.h](../re4/RE4.h).
- **Constant colour words.** The colour-programming routine `0x20835714` takes four floats, clamps each to 1.0, forms
  `x = trunc(c * 4095.0)` (truncation, `trunc.l.s`), then `y = x - (x >> 8)`, and packs three fields per component: `y >> 4`,
  `(y >> 4) + 1` and the four fraction bits `y & 0xf`. That is an 8.4 fixed-point value with the next level beside it, the shape a
  4-bit ordered-dither threshold compare needs (inferred). The destination registers were not followed.
- **Logic op.** `mg_logicop` loops 48 times (16 operations, 3 combinations). It clears bits 29:26 of the fill-mode word with the
  mask `0xc3ffffff` and sets the operation there, matching [PP1.h](../pp1/PP1.h), and compares the read-back words under the mask
  `0x00ffffff`, so alpha is not part of the logic-op check.

## What the tests do not settle

Depth rounding, stencil saturation, alpha-test width, blend arithmetic and which chip blends, fog, texture LOD and filter
weights, point footprints and line ownership rules are not settled by anything extracted here. Their expected tables or arrays
were either not located (`mg_points`, `mg_logicop`, `mg_dither`, `mg_xblock`), not decoded (`mg_z_tri`, texture tests), or
decoded without the primitive coordinates (`mg_lines`: a steep aliased red line that moves one column every four rows, a purple
vertical line at column 12, and antialiased green segments with weights such as `0x3f`/`0x7f` and `0x8f`/`0xbf`).

## Replay

The stored sums can be recomputed from the stored tables with a one-line sum, which is how they were checked here. Replaying
the images against candidate rules needs a small model (setup, edge walk, plane iteration, dither) and the three or four
vertices per test; the colour triangles are fully specified above. No model or replay tool for MGRAS, RE4 or PP1 exists in this
repository or in `retools/`.

## Register values the diagnostic writes (decoded by running its routines)

Method, for all of this section: the three library routines were run on a host with an emulator (Unicorn, MIPS64) from the
shipped binary, with board access stubbed to a log and status polls returning zero. Inputs were the vertices and colours the
tests use. Formulas were then fitted to many probe triangles and checked against the logged values. Grade: **software
expectation** (what the diagnostic writes), derived by execution, not by reading every instruction; where a formula was
fitted it says so. Register numbers are the ones the diagnostic's write helper `0x2082ae2c` takes; the command header it sends
is `((reg + 0x1800) & 0x1fff) << 8 | 0x400004`, then the 32-bit value. Values below are 32-bit words.

### Triangle setup `0x208671f4` (arguments: three vertex records, a flag)

A vertex record is 12 floats: x, y, z, w, then two RGBA sets (the tests give both sets the same colours). The routine does
not sort the vertices: it expects them listed top (largest y), middle, bottom, with the middle vertex to the right of the long
edge, which is how every test lists them. Other orders and windings take other branches (a swap of order changes the sign of the
colour deltas and which slope registers hold which edge); those branches were not decoded. `B` is 49151.5.

| Register | Value |
|---|---|
| 0x03, 0x04, 0x05 | `float32(y_top + B)`, `float32(y_mid + B)`, `float32(y_bottom + B)`, written as the float's bit pattern |
| 0x06 (high), 0x07 (low) | slope of the long edge (top to bottom), a signed 64-bit s.24 value: `-(dx/dy) * 2^24` for that edge, split into high and low words |
| 0x08, 0x09 | the same for the top-to-middle edge |
| 0x0a, 0x0b | the same for the bottom-to-middle edge |
| 0x00, 0x01 | `float32(B + x_top + s * frac(y_top))` with `s` the long-edge slope (register 0x00) and the top-to-middle slope (register 0x01), `frac` the fractional part of the top y |
| 0x02 | `float32(B + x_mid + s * frac(y_mid))` with `s` the bottom-to-middle slope |
| 0x5c to 0x5f | red, green, blue, alpha start: `trunc(C(ceil(x0'), floor(y_top)) * 0xFFF000)` where `C` is the plane through the three vertex colours and `x0'` is the value written to register 0x00 minus `B` (fitted; exact when the top vertex is on integer coordinates) |
| 0x60/0x61, 0x62/0x63, 0x64/0x65, 0x66/0x67 | per colour, `-trunc(dC/dy * 0xFFF000)` then `trunc(dC/dx * 0xFFF000)` (fitted; the long-edge slope contributes only when its integer part is nonzero, not tested) |
| 0x445 | the flag argument (0 for the triangles here) |

Rounding. Slopes and deltas are computed in single precision and then scaled, so the low bits carry single-precision error:
the bottom-to-middle slope of the red triangle is `-3.2857143879` (error 1e-7), not `-23/7`. The coordinate writes are
`float32(double + 49151.5)`, i.e. nearest to 1/256. The order of the operations was not read instruction by instruction, so the
low bits of slopes for other inputs cannot be derived from this formula; use the logged values or port the routine.

**Worked example, red triangle** (vertices (0,15), (23,7), (0,0); colours red 1.0, 0.5, 0.0; alpha 1; writes in this order, 4
to 0xb, then 0 to 3, then colours, then the flag):
`0x4=0x47400680 0x5=0x473fff80 0x6=0 0x7=0 0x8=0 0x9=0x02e00000 0xa=0xffffffff 0xb=0xfcb6db6c 0x0=0x473fff80 0x1=0x473fff80
0x2=0x47401680 0x3=0x47400e80`, then `0x5c=0x00fff000 0x5d=0 0x5e=0 0x5f=0x00fff000 0x60=0xffeef000 0x61=0x00005ef4`
and `0x62` to `0x67` zero, then `0x445=0`. (Note the register order: 0x4 and 0x5 are the mid and bottom y here, as the table
shows.) The full lists for the other draws:

- green (V0 to V2 green 0, 0.5, 1): same 0x4 to 0x3; `0x5c..0x5f = 0 0 0 0x00fff000`, `0x62=0x00111000`, `0x63=0xffffa10c`, others zero.
- blue (0.5, 1, 0): `0x5e=0x007ff800`, `0x5f=0x00fff000`, `0x64=0xfff77800`, `0x65=0x000887ff`, others zero.
- alpha first draw (red 1, alpha 0.25 at all vertices): `0x5c=0x00fff000`, `0x5f=0x003ffc00`, deltas zero.
- alpha second draw (green 1, alpha 0, 0.5, 1): `0x5d=0x00fff000`, `0x66=0x00111000`, `0x67=0xffffa10c`, others zero.

For the first draw of the alpha block the vertex colours were read from a partial emulation of the block and the two colour
sets differ at one vertex (second set alpha 0 at the top vertex); which set the routine uses was not isolated, so that draw is
**not fully specified**.

### Clear `0x20835714` (arguments: 1, red, green, blue, alpha floats, start x 0, start y 0, width 0x540, height 0x400)

Per component: `x = trunc(min(c, 1) * 4095)`, `y = x - (x >> 8)`, with `hi = y >> 4`, `next = hi + 1`, `frac = y & 15`. The fast-fill
registers 0x176 to 0x179 (red, green, blue, alpha) get one word each built from these three fields and 0x170 to 0x173 get the
companion words; the logged values are below. Then 0x110 gets `0x100000`, 0x161 (fill mode) gets `0x4203` (read-modify-write
starting from the image's initial shadow, zero), 0x46 gets the start (0), 0x47 gets `(width << 16) | height` = `0x5400400`,
0x445 gets `0x18` (the trigger), 0x110 gets `0x5000` and 0x161 gets `0x4203` again.

- Clear colour (0.2, 0.4, 0.8, 0.1): `0x176=0x03400330 0x177=0x00067660 0x178=0x000cdcc0 0x179=0x1991a198 0x170=0x3433 0x171=0x6766 0x172=0xcdcc 0x173=0x00081a19`.
- Clear colour (0, 0, 0, 0): `0x176=0x00100000 0x177=0x1000 0x178=0x1000 0x179=0x1000 0x170=0x100 0x171=0x100 0x172=0x100 0x173=0x100`.
- The two clears run before the green, blue and alpha triangles (not before the red one).

### Board state before the red triangle and the lines

Neither `mg_color_tri` nor `mg_lines` writes any board state before its first primitive: the routine `0x20832308` that
`mg_color_tri` calls only validates the raster-engine number (and selects a board when asked to, which the tests do not). The
state those primitives need is the one the diagnostic's pixel-processor initialisation `0x20849548` (test name
`mg_initppregs`) sets; that this runs before these tests is **inferred** (it is the only routine that writes the pixel-processor
defaults, and the table's zero background needs a cleared buffer, which this page cannot confirm). Its writes, in order, with
the page pointer global `0x2095869c` at 0x240: `0x112=0x4`, `0x160=0`, `0x161=0x4200`, `0x162=0xff`, `0x163=0xffffffff`,
`0x164=0xffffffff`, `0x165=0x58840000`, `0x166=0x7`, `0x167=0xffff`, `0x168=0x0ffffff1`, `0x169=0x7`, `0x16a=0`, `0x16d=0x000c8240`,
`0x16e=0x25e`, `0x16f=0`, `0x68=0`, `0x69=0`, `0x176=0x01a08190`, `0x177=0x000807f8`, `0x178=0x000807f8`, `0x179=0xfff00ff0`,
`0x170=0x00081a19`, `0x171=0x0008807f`, `0x172=0x0008807f`, `0x173=0xff`, `0x17b=0`. Registers `0x16b` and `0x16c` are not written
(software expectation, run of the routine).

### Line draw `0x20897638`

**Correction.** An earlier version of this section came from running the routine on its own with guessed arguments, and labelled
the arguments wrongly. This version reads the routine and its five call sites in `mg_lines` (`0x2081efc4`, `0x2081f078`,
`0x2081f0f4`, `0x2081f14c`, `0x2081f1e0`) statically. Everything below is a **software expectation** from those instructions unless
marked. The earlier writes, in particular `0x15b` = pattern and `0x15a` = 0, the smooth line being line 5, and the logged fill mode
`0x0c00000b`, are withdrawn.

Arguments, in the order the 64-bit calling convention passes them (eight in registers, two on the stack):

| Arg | Role | Evidence |
|---|---|---|
| 1, 2 | start vertex and end vertex (pointers) | the first vertex's x and y go to registers `0x0c` and `0x0d`, the second's to `0x0e` and `0x0f`; the step registers are second minus first (`0x20897830`, `0x2089784c`) |
| 3 | stipple enable | selects the stipple block that writes `0x110 = 0x70a0` (`0x7000` with bits 5 and 7) and the two stipple registers |
| 4 | **repeat and control word**, written to `0x15b` (`0x20897cec`) | value is `(w & 0xfff00000)`, with `0x000f0000` ORed in and bits 15:8 cleared for the stippled lines; `w` is a diagnostic variable that is zero in the image and filled at run time |
| 5 | **stipple pattern**, written to `0x15a` (`0x20897cf8`) | `0xa9876543` on the stippled lines |
| 6 | smooth (antialiased) line enable | when set, the routine calls the filter-table loader `0x2083bccc` (the `0x15c`/`0x15d` writes) and writes the blend factor `0x7880c8c4` |
| 7 | integer-endpoint line | when set, the routine skips the float endpoint and step writes (registers `0x0c` to `0x0f`, `0x10`, `0x12`) and instead writes registers `0x40` and `0x41` with the truncated integer coordinates (x in the high half, the two vertices in argument order), then rejoins at the colour setup; see the integer line note below |
| 8 | mode select | zero in all five calls; non-zero changes the trigger word's low bits (`0xb` against `3`) and the trigger routine; meaning inferred only |
| 9 | zero | never read |
| 10 | pointer to a context | stack argument |

The stipple stores are made only when argument 3 is set, in the order `0x15b` then `0x15a`. So **the pattern lives in `0x15a`, the
repeat and control word in `0x15b`**, which agrees with `line_stipple_pattern` and `line_stipple_repeat` in
[registers.toml](../re4/registers.toml) and with a real IRIX 6.5.30 recording (a 32-bit pattern in `0x15a` and `0x000f0000` in
`0x15b`, reported by the iris engine work). The earlier decode swapped arguments 4 and 5. The purple line also receives the
pattern, but its stipple enable is off, so nothing is stored. Bits 19:16 are set to `0xf`; what the field means
(repeat count less one is the natural reading, inferred from the client's repeat-minus-one encoding in [HQ3.h](../hq3/HQ3.h)) and what the
other bits do is unknown.

Order of writes per line, unchanged where the earlier run agreed:

- Endpoints: `0x0c`, `0x0d` = `float32(B + x, B + y)` of the **start** vertex (first argument), `0x0e`, `0x0f` = the same for the **end** vertex (second argument)
  (`B` = 49151.5). Registers `0x10`, `0x11` = per-step x and y increments in s.24, normalised to 1.0 on the major axis
  (`0x10 = 0x400000` for dx/dy = 0.25 with y major, `0x1000000, 0` for x major, `0, 0x1000000` for a vertical line); the
  the steps are end minus start, so all five lines run toward larger coordinates and the steps are non-negative here (the sign of a negative step was not seen). An earlier version of this page had the vertex roles reversed; the register names `aaline_x_start` and so on in [registers.toml](../re4/registers.toml) were right. `0x12 = 0`.
- `0x110 = 0x7000`, then (stipple) `0x110 = 0x70a0`, `0x15b`, `0x15a`.
- `0x60`, `0x62`, `0x64`, `0x66` = 0 (colour deltas), then `0x5c` to `0x5f` = colour times `0xFFF000` (red, green, blue, alpha),
  `0x116 = 0`, then the trigger, a write of 3 to the register at offset `0x2c114` of the host window.
- Smooth path (line 2 only): `0x15c = 0xb0000000` then the 64 values `0xff` down to `0x03` in steps of 4, twice, on `0x15d` (written by
  `0x2083bccc`), `0x15c = 0xb0000080` and 32 writes of `0x100`, `0x110 = 0x7100`, blend factors `0x80000074` then `0x7880c8c4`, the fill
  mode, `0x116 = 1`, and a trigger word with `0x60` ORed in. The values come from the earlier run; the loader's own constants
  (`0xb0000000`, then `0xff`, `0xfb`, `0xf7` and on) were seen in the binary, the rest was not rechecked.
- **Fill mode.** The smooth path builds the fill-mode word by read-modify-write on a shadow: the routine copies six 32-bit
  shadow words from globals into its frame on entry (`0x2096d308` to `0x2096d330`), all zero in the image and filled at run time.
  It sets bits 1:0 and 3, clears bit 5, and ORs in `0x200` or `0x500` by a pixel-type global. So the earlier logged `0x0c00000b` is an
  artefact of replaying from zero shadows: only the written bits are known, the rest come from the register's prior value. The
  upper bits could not be derived from the routine. Software expectation for the written bits, unknown for the rest.
- Argument 5 on lines 1 and 2 is 0 and the unused stack argument 9 is 0 in every call.

The five calls (start to end, flags), with the corrected roles:

| Line | Vertices | Arguments set |
|---|---|---|
| 1 red | (0,0) to (4,16) | none (`0xc=0x473fff80 0xd=0x473fff80 0xe=0x47400380 0xf=0x47400f80 0x10=0x400000 0x11=0x1000000`, colour `0x5c=0xfff000 0x5f=0xfff000`) |
| 2 green | (5,0) to (9,16) | smooth (argument 6 = 1): `0xc=0x47400480 0xd=0x473fff80 0xe=0x47400880 0xf=0x47400f80`, `0x5d=0xfff000` |
| 3 blue | (0,5) to (5,5) | stipple, repeat word, pattern `0xa9876543`: `0xc=0x473fff80 0xd=0x47400480 0xe=0x47400480 0xf=0x47400480 0x10=0x1000000 0x11=0`, `0x5e=0xfff000` |
| 4 blue | (5,5) to (10,5) | as line 3: `0xc=0x47400480 0xd=0x47400480 0xe=0x47400980 0xf=0x47400480` |
| 5 purple | (12,0) to (12,10) | argument 7 = 1 only (pattern passed but stipple off): `0xc=0x47400b80 0xd=0x473fff80 0xe=0x47400b80 0xf=0x47400980 0x10=0 0x11=0x1000000`, `0x5c=0x7ff800 0x5e=0x7ff800 0x5f=0xfff000` |

What the stored lines table (17 by 14) shows, with the corrected roles:

- **The green weights (inferred, fit to the table: 27 of 27 pixels reproduce).** The loader `0x2083bccc` writes `0x15c = 0xb0000000`
  and then 64 values to `0x15d`, counting down from `0xff` in steps of 4 (`0xff`, `0xfb`, ... `0x03`), and does that twice (two
  loops, read from the instructions). Read as a linear cross-section filter indexed by distance in 1/64 pixel (`k = 64 * d`), the
  weight is `a = 255 - 4 * k`. The green line runs from the start vertex (5, 0) with x = 5 + 0.25 * row sampled at integer rows,
  and a pixel is covered when its centre `p + 0.5` is within one pixel of that x, so each row holds two pixels at distances
  that are multiples of 0.25, giving `a` = `0xff`, `0xbf`, `0x7f`, `0x3f`. A stored pixel then follows from a blend of a unit
  green source with source alpha `a` onto a zero destination, in 12 bits and dithered like the triangles:
  `a' = a + (a >> 7)` (so 255 becomes 256), green = `4095 * a' >> 8`, alpha = `4095 * a' * a' >> 16`, each reduced with
  `y = x - (x >> 8)` and carried by the Bayer matrix. This reproduces every green-line word (alpha and green) except the one
  pixel the blue line overwrites. The earlier readings (interpolation, plain dither, `c` squared from a 255 scale) were close but
  miss the one-level differences; the `>> 8` scale, not `/ 255`, is what makes 255 exact and 127 land at `0x7e`/`0x7f`.
  Which index the loader's table uses at a distance that is not a multiple of 1/64 (rounding) and the second 64-entry table's use
  are **unknown**.
- **Blend factors and the blue overwrite (inferred, one pixel).** The blend state written by the smooth line stays on for the two
  stippled lines after it. At (5, 5) the blue stipple pixel lands on a green pixel of stored green `0x3f` and alpha `0x10`; the
  stored result is blue `0xff`, alpha `0xff` and green `0x3b`, which is `63 * (255 - 16) / 255` = 59: the destination factor
  `0xc` acts as one minus the destination alpha, the source factor as source alpha. That is the reading the alpha triangle needs
  (see its blend-factor note) and it agrees; both rest on arithmetic over stored pixels, not on a register definition.
- **Stipple dot order (inferred, one of two readings).** With the vertex roles corrected (start first), line 3 runs from x = 0 to 5 and
  stores x = 0, 2, 4; line 4 runs from x = 5 to 10 and stores x = 5 (the pixel the green line also touches), 7, 9. The end pixel of each
  is not drawn (float-endpoint lines stop short). So counted from the start, even pixel indices are on and odd are off: 1, 0, 1, 0, 1, 0.
  In `0xa9876543` that six-bit run occurs at bits 31 down to 26 (the top of the word, read most significant first) and at bits 6
  up to 11 (read least significant first). The first is the simpler reading, a pattern consumed from bit 31 downward with the repeat
  count of one; the `0xf` in bits 19:16 of the repeat word is not explained by either. Neither is excluded by this table. The repeat-word
  fields stay **unknown**. (An earlier version of this note counted the lines from the wrong end and called the order unknown.)
- The purple line (colour 0.5, 0.0, 0.5, alpha 1, not smooth) stores `0x80` and `0x7f` by row exactly as the dither predicts.
- **Integer-endpoint line and its last pixel (argument 7; inferred).** The two words the routine stores at `+0x13400` are not a
  point or pixel-write command. They are the ordinary one-register write the diagnostic uses everywhere (the shared helper `0x2082ae2c`
  sends the same pair to the same address): a header `((reg + 0x1800) & 0x1fff) << 8 | 0x400004` followed by the data word. The
  headers are `0x00584004`, which is register `0x40`, and `0x00584104`, register `0x41`. (The earlier row and an earlier
  note wrote the first as `0x58004004`, a misplaced digit.) The window at `+0x13400` is the host interface's command-word
  window, the same one every register write goes through; the unit behind it is the host interface (HQ3), which passes the write on to
  the raster engine. Registers `0x40` and `0x41` are the raster engine's integer line start and end ([RE4.h](../re4/RE4.h):
  `line_xy_start` and `line_xy_end` in [registers.toml](../re4/registers.toml)), so argument 7 selects the integer line primitive.
  The trigger is the same write of 3. Nothing in the routine adds a pixel or lengthens the line: it passes the two vertices unchanged.
  The extra pixel is therefore the primitive's own rule: an integer line draws **both end pixels** unless the fill mode's skip-last bit
  (bit 10, the X cap-style option in [RE4.h](../re4/RE4.h)) is set, and the routine's fill mode `0x7000` leaves bit 10 clear. The table agrees:
  (12, 0) to (12, 10) stores 11 pixels, rows 0 to 10, while the float-endpoint lines (registers `0x0c` to `0x0f`, arguments 7 clear) stop one
  row short of their end vertex (the red and green lines stop at y = 15 for an end at y = 16). Rating: inferred (from the register
  decode, the clear skip-last bit and the table; no source states the inclusive rule). The packed order is x high, y low as the routine
  builds it; the gloss "Y:16, X:16" on `RE4_REG_XLINE_XYSTARTI` reads the other way and is unchecked.

### The alpha triangle, resolved

- **Colour set.** The setup routine reads the **second** colour set of each vertex record (floats 8 to 11) for all four channels;
  the first set is ignored (run with the sets differing: only the second changes the start and delta registers). Corrected
  vertex colours: first draw: red 1, green 0, blue 0, alpha 0.25 at all three vertices; second draw: (0, 1, 0, alpha) with alpha
  0, 0.5, 1 at the top, middle and bottom vertex. (Two stores in jump delay slots, which an earlier pass missed, set the top
  vertex's second-set red to 0 in the second draw and alpha to 0.25 in the first.)
- **Register values.** First draw: `0x5c=0x00fff000`, `0x5f=0x003ffc00`, deltas 0. Second draw: `0x5d=0x00fff000`, `0x66=0x00111000`,
  `0x67=0xffffa10c`, others 0 (both with the common `0x4` to `0xb`, `0x0` to `0x3` of the red example, then `0x445=0`).
- **Order.** Two clears (as the green triangle), draw 1, then `0x165=0x80000074`, `0x165=0x7880c8c4`, `0x161=0x0c00420b`, then draw 2.
- **Blend factor.** The same two writes to `0x165` and a fill mode with the same low bits (`0x0c00000b`) are made by the line routine
  for a smooth line, so `0x7880c8c4` is the diagnostic's standard "blend on" setting, not an alpha-triangle special. The stored image
  needs a destination factor of 0.75 (the earlier fit; one minus the first draw's alpha of 0.25). No write to `0x16b` or `0x16c` exists anywhere in the program path
  (initialisation, clears, setup, lines, test), so a constant-alpha reading of the destination nibble `0xc` would need a constant
  nobody sets. Reading: **inferred** that the destination encoding `0xc` means one minus destination alpha, or that the encoding
  table in PP1.h (which is itself unsourced) is wrong for the destination nibble. A model that reproduces the stored image
  settles it. Blend enable is inferred to be among bits 3 and 1:0 of fill mode `0x161`, the only bits changed in the blend writes
  (both the triangle and the smooth line set them).

## Replay readiness for a model's acceptance tests

Criterion for "runnable": every input decoded to values, namely vertices and attributes, every register and rendering state
written, the region, the read-back format and mask, and the stored expected table with address and size. **Two tests meet it**
(the green and blue colour triangles), under the conditions listed. The register values come from the previous section, which were
obtained by running the routines, not by reading every instruction; the formulas there are fitted for one vertex order. The
remaining tests are ordered by how little is missing.

### Runnable now

Three: `mg_color_tri` red (`0x2081cba8`), green (`0x2081cdc8`) and blue (`0x2081cfe4`). Conditions, all assumptions about initial
state: the image's initial words are in effect (shadows at `0x209585f0`, `0x209585f8` zero; page pointer `0x2095869c` is 0x240), board
status polls complete at once, the framebuffer starts cleared to zero for the red triangle (nothing in the test clears it; **inferred**, and
the test's pixel-processor initialisation `0x20849548` is assumed run first), and the clears cover the whole 0x540 by 0x400 area.
Grade: software expectation for every register value (obtained by running the routines); the initial-state assumptions are inferred.

Replay spec:

0. Red only: the initialisation writes listed under "Board state before the red triangle and the lines", then no clear.
1. Green and blue only. Clear (colour 0.2, 0.4, 0.8, 0.1, start (0,0), size 0x540 by 0x400): `0x176=0x03400330`, `0x177=0x00067660`,
   `0x178=0x000cdcc0`, `0x179=0x1991a198`, `0x170=0x3433`, `0x171=0x6766`, `0x172=0xcdcc`, `0x173=0x00081a19`, `0x110=0x100000`,
   `0x161=0x4203`, `0x46=0`, `0x47=0x05400400`, `0x445=0x18`, `0x110=0x5000`, `0x161=0x4203`.
2. Green and blue only. Clear (0,0,0,0): `0x176=0x100000`, `0x177` to `0x179=0x1000`, `0x170` to `0x173=0x100`, then the same tail.
3. Triangle, vertices (0,15), (23,7), (0,0), z 0, w 1, alpha 1: `0x4=0x47400680 0x5=0x473fff80 0x6=0 0x7=0 0x8=0 0x9=0x02e00000
   0xa=0xffffffff 0xb=0xfcb6db6c 0x0=0x473fff80 0x1=0x473fff80 0x2=0x47401680 0x3=0x47400e80`, then colour registers: red (colour
   1, 0.5, 0) `0x5c=0x00fff000 0x5f=0x00fff000 0x60=0xffeef000 0x61=0x00005ef4`; green (0, 0.5, 1) `0x5f=0x00fff000 0x62=0x00111000
   0x63=0xffffa10c`; blue (0.5, 1, 0) `0x5e=0x007ff800 0x5f=0x00fff000 0x64=0xfff77800 0x65=0x000887ff`; unlisted `0x5c` to `0x67` zero;
   then `0x445=0`.
4. Read back 16 rows by 24 columns from (0,0), draw page 0x240, mask `0xffffffff`; compare with the table (1536 bytes, `0xAABBGGRR`):
   red `0x20953380` sum `0x54005595`; green `0x20953980` sum `0x5455be00`; blue `0x20953f80` sum `0xa7180000`.

Not fully runnable: **`mg_lines`** and the **alpha triangle**. For lines, the argument roles are now read from the call sites (see
above) and the green weights are explained, but the stipple dot sequence, the field meaning of the repeat word, the pixel-type bits of the
fill mode and the sign of `0x10`/`0x11` are undecoded, and the stream logged earlier used mislabelled arguments (smooth on the wrong line,
stipple registers swapped), so it must be redone from the table above before replaying: read back 17 rows by 14 columns from (0,0) at
`0x20954b80`, sum `0xc584ed6b`, with the red triangle's initialisation. For the alpha triangle,
the blend-factor reading (destination 0.75 against the written nibble `0xc`) is unresolved and enable bits are inferred, so a model
may reproduce the table only under one of the two readings.

### Closest to runnable (the rest)

Common to all: region read back from `(0, 0)`, rows and columns as given, draw-buffer page pointer `0x240` (default of the
`-b` option, global `0x2095869c`), read-back mode argument 1, compare mask `0xffffffff`, expected words `0xAABBGGRR` (software
expectation, all items below).

| Test | Primitives (decoded) | Expected table | Still missing |
|---|---|---|---|
| `mg_color_tri` red (check call `0x2081cba8`) | As in the previous section; table `0x20953380`, sum `0x54005595` | (moved to Runnable now) |
| `mg_lines` (check call `0x2081f244`) | Five lines through `0x20897638`; argument roles and the call table are in the line draw section above (stipple enable, repeat word to `0x15b`, pattern to `0x15a`, smooth enable, an integer-start flag and a mode select). Line 2 (green) is the smooth line; lines 3 and 4 (blue) are stippled; line 5 (purple) has the integer-start flag. Vertex layout x, y, z, w, then two RGBA sets | `0x20954b80`, 17 rows by 14 columns, 952 bytes, sum `0xc584ed6b` | Stipple dot order and the repeat word's fields; the fill mode's pixel-type bits; sign of `0x10`/`0x11`; the integer-start flag's purpose; clear state |
| `mg_color_tri` alpha (check call `0x2081d448`) | Same vertices; the draw is followed by blend writes. Register 0x165 (blend factors, source bits 3:0, destination 7:4): first a read-modify-write that forces bits 7:0 to `0x74` (source alpha, one-minus-destination-alpha) and sets bit 31, then a write of `0x7880c8c4` (source alpha, one-minus-constant-alpha). Register 0x161 (fill mode) is modified: bits 10:8 set to 2 (8-8-8-8), bit 9 set, bits 18:14 cleared and `0x0c004008` ORed in (operation field 3, copy). A second draw follows | `0x20954580`, 16 by 24, 1536 bytes, sum `0xf1563e81` | Starting values for the read-modify-writes (shadow copies maintained by the library), per-vertex colours of both draws, the blend-enable bit, constant colour registers 0x16b and 0x16c (no write found in this block), and why the stored alpha falls non-linearly |
| `mg_stip_tri` (check call `0x2081f99c`) | Not decoded (vertices, stipple pattern) | `0x20954f38`, 16 by 24, 1536 bytes, sum `0xaa0055aa` | Primitive, pattern, state |

### Missing

| Test | What is missing |
|---|---|
| `mg_z_tri` (`0x2081d530`) | Fifteen records on its stack (index `0x11` to `0x1f`, a 32-bit value such as `0x80403f80`, a table pointer) were not decoded: vertices, depth state, depth function sequence, the 16 by 16 tables and their sums. |
| `mg_points` | Primitives and state not decoded; expected 4 by 6 array is a stack array with no stored constants found, so its provenance is unknown. Sum `0xfd4fbe7c`. |
| `mg_xblock` | Same: stack array, sum `0x3fffff40`, primitives not decoded. |
| `mg_logicop` | 16 operations by 3 inputs, 48 words compared under `0x00ffffff`; draw values and expected array not found (stack array, sum `0x188eecb0`). |
| `mg_dither` | Draw and expected array not found; sum not read reliably. |
| `mg_chars` | Table at `0x20955538` (16 by 40, sum `0x920e01d2`) is stored, glyph draw sequence not decoded. |
| `mg_notex_line`, `mg_tex_poly`, `mg_notex_poly`, `mg_tex_load`, `mg_tex_lut4d`, `mg_tex_mddma` | Draw sequence, state and expected data not decoded; the stored tables from data offset `0x46d8` are unexamined. Sums read at call sites: `mg_tex_poly` `0xf6afae79`, `mg_notex_poly` `0x639c0` (not verified). |
| Alpha-blend and per-pixel-processor scene tests the IDE guide describes | Not located; no string or table entry names them. |

Table addresses above are the data base `0x20953380` plus the offsets in the table earlier on this page.
