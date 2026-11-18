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
- **Dither.** The residual is not noise: it is a fixed 4 by 4 pattern. Treating the stored value as `floor(v + T)` where `v` is
  the plane value in 0..255 units, every pixel is consistent with one threshold `T(x mod 4, y mod 4)` per position
  (0 contradictions over 516 channel samples). Intervals for T by table row mod 4 (rows) and column mod 4:

| row mod 4 | col 0 | col 1 | col 2 | col 3 |
|---|---|---|---|---|
| 0 | [0.957, 1.0) | [0.370, 0.630) | [0.826, 1.0) | [0.109, 0.413) |
| 1 | [0.087, 0.435) | [0.717, 0.804) | [0.0, 0.174) | [0.543, 0.587) |
| 2 | [0.609, 0.913) | [0.239, 0.283) | [0.870, 1.0) | [0.413, 0.457) |
| 3 | [0.0, 0.043) | [0.5, 0.5] | [0.0, 0.174) | [0.587, 0.891) |

  No classic 4 by 4 Bayer matrix fits under any of 16 shifts, transposition and offsets of 0, 0.5 or 1 sixteenth; the intervals
  are the fact, the matrix is not recovered. Constants show the same thing: a constant 0.75 (191.25) alternates `0xc0`/`0xbf` in a
  checkerboard of rows, and the vertical purple line of the lines table (0.5 = 127.5) alternates `0x80`/`0x7f` by row.
- This is a fit to stored images; it assumes the plane values are exact. Slope quantisation was not modelled, so the
  intervals are wider than the real thresholds.

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

## Replay readiness for a model's acceptance tests

Criterion for "runnable": every input decoded to values, namely vertices and attributes, every register and rendering state
written, the region, the read-back format and mask, and the stored expected table with address and size. **No test meets it
yet.** Every test reaches the board through diagnostic library routines whose register values are computed at run time from
floats (clear `0x20835714`, triangle setup `0x208671f4`, line draw `0x20897638`). Their register numbers are decoded below;
their value arithmetic was not. A harness can either port those routines or wait for the values. The tests below are
ordered by how little is missing.

### Closest to runnable

Common to all: region read back from `(0, 0)`, rows and columns as given, draw-buffer page pointer `0x240` (default of the
`-b` option, global `0x2095869c`), read-back mode argument 1, compare mask `0xffffffff`, expected words `0xAABBGGRR` (software
expectation, all items below).

| Test | Primitives (decoded) | Expected table | Still missing |
|---|---|---|---|
| `mg_color_tri` red, green, blue (check calls `0x2081cba8`, `0x2081cdc8`, `0x2081cfe4`) | Vertices V0 (0,15), V1 (23,7), V2 (0,0), z 0, w 1; colour of the swept channel 1.0/0.5/0.0 (red), 0/0.5/1 (green), 0.5/1/0 (blue) at V0/V1/V2, other channels 0, alpha 1 | `0x20953380`, `0x20953980`, `0x20953f80`; 16 rows by 24 columns, 1536 bytes each; stored sums `0x54005595`, `0x5455be00`, `0xa7180000` | Register values: the clear is two calls of `0x20835714` per triangle, first with a float colour argument (0.4 in the second component and 0.1 in the fourth in all three blocks, the first and third components 0.2/0.8 with the triangle's own channel zeroed, as read), then with (0, 0, 0, 0); this routine writes registers 0x110, 0x161, 0x167, 0x174, 0x176, 0x46, 0x47 and others, values not decoded. The setup routine writes registers 0x00 to 0x0b, 0x5c to 0x67, 0x68, 0x6a, 0x6c and 12 more through `0x2083609c` (offsets 0x80 to 0x8a, 0xc0 to 0xca), values not decoded. Fill mode and pixel format words not decoded |
| `mg_lines` (check call `0x2081f244`) | Five lines through `0x20897638` (arguments: end vertex, start vertex, a flag, a pattern, two more flags; their meaning is unknown). Vertex layout x, y, z, w, then two RGBA sets. (1) (4,16) to (0,0) red 1,0,0,1, flag 0. (2) (9,16) to (5,0) green, third flag 1. (3) (5,5) to (0,5) blue, flag 1, pattern `0xa9876543`. (4) (10,5) to (5,5) blue, flag 1, same pattern. (5) (12,10) to (12,0) colour (0.5, 0, 0.5, 1), fourth flag 1. Inferred meaning: line 3 and 4 are stippled, 2 and 5 are antialiased or wide, and the table agrees (a dotted blue row at y = 5, a one-pixel vertical purple line, weighted green pixels) | `0x20954b80`, 17 rows by 14 columns, 952 bytes, sum `0xc584ed6b` | Meaning of the three flags, line register writes inside `0x20897638`, the line-width and stipple state words, clear state as above |
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
