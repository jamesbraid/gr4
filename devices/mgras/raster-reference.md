# MGRAS raster arithmetic reference

What the held material says about the arithmetic of the IMPACT raster path (RE4 setup and span walk, PP1 pixel
operations, TE1 and TRAM texturing) and what it leaves open, one row per pipeline stage. It records facts
only. It does not say how to build a model.

Grades. **Established**: a published SGI document states it, or a shipped binary shows it directly.
**Software expectation**: what shipped software or a shipped diagnostic assumes the board does (a value written, a
mask tested, a comparison made); it is not a measurement. **Inferred**: follows from the above by stated
reasoning and another reading survives. **Unknown**: nothing held settles it. The project legend in
[AGENTS.md](../../AGENTS.md#7-published-documents) has no separate software-expectation grade; the rows
here would be "established" there when read from a binary, and this page keeps them apart because the claim is about the
software, not the silicon. "Header" below means a comment in the named `devices/` header, whose own grade applies.

Scope. Indigo2 IMPACT and Octane MGRAS boards (RE4 raster engine, PP1 pixel processor, TE1 texture engine with TRAM).
Facts about other families (InfiniteReality, VPro) do not transfer and none is used. No physical board was read.
Nothing in `refs/irix-source/` or the `irix-657m-src` submodule was opened for this page; the repository's own
earlier pages and headers were taken as they stand, and their grades were not re-derived.

## Sources

- Octane Technical Report, [octane-technical-report.pdf](../../references/documents/octane-technical-report.pdf),
  chapter 4 (printed pages 4-8 to 4-17). Cited as "Octane report".
- Octane IDE Reference Guide 108-0217-002 ([hardware-references](../../references/documents/INDEX.md)), the
  diagnostic transcript on printed pages 7-12 to 7-14. Cited as "IDE guide".
- OpenGL on Silicon Graphics Systems 007-2392-002, chapter 16 (printed pages 378-384). Cited as "OpenGL guide".
- Repository headers and pages: [RE4.h](../re4/RE4.h), [PP1.h](../pp1/PP1.h), [TE1.h](../te1/TE1.h),
  [GE11.h](../ge11/GE11.h), [HQ3.h](../hq3/HQ3.h), [antialiasing.md](antialiasing.md),
  [texture-path.md](../te1/texture-path.md), [2d-transactions.md](../re4/2d-transactions.md),
  [gl-commands.md](../../software/opengl/gl-commands.md), [board-facts.md](board-facts.md).

## Table

Settling routes name what is cheapest first. "Diag" is the shipped Octane standalone diagnostic (`ide`, IP30 build), whose
test routines are named in the IDE guide transcript (`mg_color_tri`, `mg_z_tri`, `mg_points`, `mg_lines`,
`mg_stip_tri`, `mg_logicop`, `mg_dither`, `mg_tex_poly`, `mg_notex_poly`, the alpha-blend and scene tests with
per-PP1 CRC checks). The diag binary is not held in this repository's `root/` extraction, so none of its expected values is
tabulated here. The one set of diagnostic expected values already carried is the three TE1 render checksums
(`TE_REV_B_1TRAM_CHECKSUM`, `TE_REV_B_4TRAM_CHECKSUM`, `TE_REV_D_CHECKSUM` in
[te1/registers.toml](../te1/registers.toml), graded inferred there).

### 1. Vertex snap and setup

| Fact | Grade | Source | Settle |
|---|---|---|---|
| RE4 computes X and Y with 8 bits of subpixel precision; vertices keep 8 fraction bits after projection | established | Octane report 4.2.3 p. 4-8, 4.4.1 p. 4-13; [board-facts.md](board-facts.md) fact 27 | n/a |
| Window X, Y reach the RE4 as single-precision floats biased by +49151.5, so the 23-bit mantissa holds a 24.8 fixed-point position | inferred | [RE4.h:286-296](../re4/RE4.h), [GE11.h:459-462](../ge11/GE11.h); read from GE11 microcode only, the header says the bias itself is unknown as to evidence | Operand-level trace of the triangle setup module (`trigeom`, [GE11.h:299](../ge11/GE11.h)) with a known vertex; or the setup register writes for one triangle |
| The add of the bias rounds to the 1/256 grid in the float ALU; the ALU rounding mode (nearest, truncate) | unknown | none held | Same trace, with a vertex at an exact half step (n + 1/512) |
| What the +0.5 of the bias means (pixel centre convention, or a rounding offset) | unknown | none held | Same trace, plus a diag primitive at a known sub-pixel position |
| Edge slopes are signed 64-bit s.24 values, computed by the GE as `(dx)/(dy)` with float division from a reciprocal seed | inferred | [RE4.h:296-299](../re4/RE4.h), [GE11.h:447, 455, 468](../ge11/GE11.h) | Microcode trace; reciprocal seed table accuracy needs the ROM, not held |
| 2D integer lines and blocks take integer coordinates; a block's end register is the inclusive last column and row | software expectation | [2d-transactions.md:45](../re4/2d-transactions.md) (public OpenBSD driver) | n/a for the 2D path |

### 2. Edge and tie rule

| Fact | Grade | Source | Settle |
|---|---|---|---|
| Spans are walked down in -Y from the top vertex; the top scanline is `floor(cw.y)` and each edge starts at `x = cw.x + dxdy * (cw.y - floor(cw.y))` | inferred | [RE4.h:301-304](../re4/RE4.h) (microcode reading) | Setup-write trace plus one triangle readback |
| First pixel of a span is `ceil(x0)` for left-to-right spans and `floor(x0)` for right-to-left | inferred | [RE4.h:310-311](../re4/RE4.h) | Same |
| Which end of a span is exclusive, and which of a shared left, right, top or bottom edge owns an exact-centre sample | unknown | none held; no diag or manual statement | Two adjacent triangles sharing an edge through a pixel centre, read back (diag `mg_color_tri` / `mg_z_tri` expected checksums would also settle it once the scene is replayed) |
| Each RE4 owns alternate scanlines (`y % numRE4s`) | software expectation | [PP1.h pixel memory layout](../pp1/PP1.h); [two-re.md](two-re.md) | n/a |

### 3. Colour and alpha interpolation

| Fact | Grade | Source | Settle |
|---|---|---|---|
| R, G, B and A are iterated in 12 bits | established | Octane report 4.2.3 p. 4-8 | n/a |
| Register format 12.12: start value is `c * 0xFFF000` (12-bit integer part, 12 fraction bits) | inferred | [RE4.h:309](../re4/RE4.h) (GE11 microcode reading) | Setup-write trace for a constant-colour triangle |
| Colour is a screen-space plane equation (`dre = dr/dy + trunc(dxdy0) * drx`, minus `drx` when direction and slope sign disagree); no per-pixel 1/w for colour | inferred | [RE4.h:309-314](../re4/RE4.h); [GE11.h:468](../ge11/GE11.h) | Setup trace of a triangle with unequal w; readback of a wide triangle |
| Reduction of the 12-bit iterated value to an 8-bit store (truncate or round); clamp behaviour at the ends | unknown | none held. The 12-bit pair format used for 4-bit visuals stores `component >> 4` for X fills ([PP1.h](../pp1/PP1.h) comment, software expectation), which is the host-fill path, not the iterator | Diag `mg_color_tri` expected CRC against a replay with each reduction; or a ramp readback |
| Alpha is iterated like colour | inferred | [RE4.h:309-314](../re4/RE4.h) (`dae`, `dax` in the same list) | Same trace |

### 4. Depth interpolation, store, rounding

| Fact | Grade | Source | Settle |
|---|---|---|---|
| Z is iterated in 24 bits | established | Octane report 4.2.3 p. 4-8 | n/a |
| Z registers hold the value times `0x1000` as a 64-bit pair, with the same plane-equation stepping as colour | inferred | [RE4.h:316-318](../re4/RE4.h) | Setup-write trace |
| Stored form: a 32-bit ZST word, depth in bits 23:0, stencil in 31:24; `glReadPixels` depth returns `Z << 8 | Z >> 16` | software expectation | [PP1.h](../pp1/PP1.h) ZST comment; read from the 6.5.22 library and kernel | n/a |
| Depth clear value is a 24-bit integer | software expectation | [GE11.h:720](../ge11/GE11.h) (state address 0xB86) | n/a |
| Rounding of the float-derived Z start and slopes to 24 bits, and of per-pixel accumulation | unknown | none held | Diag `mg_z_tri` expected CRC; or a depth readback of a slanted plane at known coefficients |
| Depth comparison encodings (NEVER..ALWAYS 0-7); depth write enable | software expectation | [PP1.h Z mode](../pp1/PP1.h), [GE11.h:703](../ge11/GE11.h) | n/a |
| Whether depth can be stored as float (the PP1.h pipeline comment says "24-bit integer or floating Z") | unknown | the comment has no cited source | Search the library's Z mode writer for a second format |
| Polygon offset arithmetic (the token carries a factor and a bias, plus a third word of unknown meaning) | unknown | [gl-commands.md](../../software/opengl/gl-commands.md) glPolygonOffset row | Depth readback of an offset triangle against a plain one |

### 5. Stencil

| Fact | Grade | Source | Settle |
|---|---|---|---|
| 8 stencil bits per pixel, held in the depth buffer word | established | Octane report 4.4.10 p. 4-17, p. 4-12; the word layout is in the next row | n/a |
| Function 0-7 and op encodings KEEP 0, ZERO 1, REPLACE 2, INCR 3, DECR 4, INVERT 5; reference 8 bits, value mask and write mask 8 bits | software expectation | [PP1.h](../pp1/PP1.h) stencil constants; [GE11.h:699-702](../ge11/GE11.h); [gl-commands.md](../../software/opengl/gl-commands.md) | n/a |
| INCR and DECR saturate or wrap at 255 and 0 | unknown | none held | Diag stencil step in `mg_z_tri` or a 256-pass readback |
| Order of stencil, depth and alpha tests, and what each failure writes | inferred | [PP1.h:51-53](../pp1/PP1.h) lists alpha, stencil, depth in that order; the Octane report p. 4-12 names the PP1 operations without an order | A pass that fails alpha but would pass stencil, read back |

### 6. Alpha test

| Fact | Grade | Source | Settle |
|---|---|---|---|
| The pixel processor performs the alpha test | established | Octane report p. 4-12 | n/a |
| Reference value is sent as a 12-bit fraction (`/4095`), function 3 bits (`func - 0x200`) | software expectation | [GE11.h:705](../ge11/GE11.h), [gl-commands.md](../../software/opengl/gl-commands.md) | n/a |
| Compare is made against the 12-bit iterated alpha or an 8-bit reduction; whether the comparison for equal values includes the least bit | unknown | none held | Diag alpha-blend scene against a replay; or a ramp readback with reference values around a step |

### 7. Blending

| Fact | Grade | Source | Settle |
|---|---|---|---|
| Source and destination alpha blending with user-chosen factors; extended equations: min, max, subtract, reverse subtract, logic op as an equation; constant colour and constant alpha as factors | established | Octane report 4.4.2 p. 4-13 | n/a |
| Blend factor encodings 0x0-0xC (zero, one, dst colour, ... constant alpha), source in bits 3:0, destination in 7:4 | inferred | [PP1.h](../pp1/PP1.h) header, no binary citation there | Library blend-factor writer; diag alpha-blend test setup |
| Constant colour held in two registers (0x16B red and green, 0x16C blue and alpha); width per component | unknown | [PP1.h:76-77](../pp1/PP1.h) names them; width not placed | Library `glBlendColorEXT` token handling in the geometry microcode |
| There are more 8-bit than 12-bit internal blenders, so 12-bit components blend at a lower rate; fog uses the same blenders | established | Octane report 4.2.3 p. 4-8 | n/a |
| Which chip blends: the report says the RE4 does texture-environment, fog and alpha blending (4.2.4 p. 4-9) and the PP1 does blending (p. 4-12) | unknown (the two published statements disagree) | Octane report | A diag trace that shows which register set the alpha-blend test programs ([PP1.h](../pp1/PP1.h) places the factors in the PP1 range) |
| Multiply width, rounding of `(a * b) / 255` or `/ 4095`, and clamp | unknown | none held | Diag alpha-blend CRC, replayed with each rounding; or a readback with source and destination values chosen to split the rounding rules |

### 8. Logic ops

| Fact | Grade | Source | Settle |
|---|---|---|---|
| Sixteen operations in fill-mode bits 29:26 with an enable at bit 2 (0 clear, 3 copy, 5 no-op, 6 xor, 0xA invert, 0xF set, and the rest of the standard set) | software expectation | [PP1.h:140, 241-257](../pp1/PP1.h); GL op is sent as `op - 0x1500` ([gl-commands.md](../../software/opengl/gl-commands.md)) | n/a |
| Logic op is also a blend equation that applies a bitwise operation to each source and destination component | established | Octane report 4.4.2 p. 4-13 | n/a |
| Whether the op acts on the 8-bit component, the 12-bit component or the stored bits, and how it interacts with blend and the write mask | unknown | none held | Diag `mg_logicop` (pass/fail only in the IDE guide transcript, p. 7-13); read its expected value in the shipped diag |

### 9. Fog

| Fact | Grade | Source | Settle |
|---|---|---|---|
| Fog is computed per pixel in hardware with 8 bits of precision and blended with the pixel colour from span iteration; linear, exponential and exponential-squared run at the same speed | established | Octane report 4.4.8 p. 4-16 | n/a |
| The texture colour tables (three 256-entry, 8-bit) are shared with the fog look-up table, so they cannot be used together | established | Octane report 4.2.3 p. 4-8 | n/a |
| Fog is looked up from a table per pixel, driven by an iterated value | inferred | [TE1.h:409-411](../te1/TE1.h) (reading of the report) | Library or microcode search for a 256-entry fog table write |
| The client sends only fog mode, density, start, end, colour and index tokens (0x068, 0x0B4-0x0B9) and the geometry engine keeps them (state 0xB42-0xB4A); there is a `fog` microcode module (index 0x043 of `mgras_geif.u`). So the factor or table is built in the geometry engine, not by the host | inferred | [HQ3.h:1036-1051](../hq3/HQ3.h), [GE11.h:294, 718-719](../ge11/GE11.h) | Decode the module 0x043 microcode with the GE11 Ghidra processor, looking for exp, exp2 and the output register |
| Fog colour sits in RE4 registers 0x144, 0x145, with the layout of the background colour (12 bits a component) | inferred | [RE4.h:143-157](../re4/RE4.h) | Library fog-colour writer |
| Whether the factor is per vertex and iterated, or per pixel from Z; the table index width and clamp; rounding of the final blend | unknown | none held | Module 0x043 trace; diag fog scene if one exists |

### 10. Texture coordinate interpolation and LOD (TE1)

| Fact | Grade | Source | Settle |
|---|---|---|---|
| The texture engine interpolates texture coordinates, does the perspective division, computes LOD and sends addresses to the TRAM | established | Octane report 4.2.4 p. 4-9 | n/a |
| Perspective correction covers 1D and 2D textures only; 3D textures are neither perspective-corrected nor mipmapped | established | Octane report 4.4.9.2 p. 4-16 | n/a |
| Iterated quantities are S/W, T/W and 1/W (R/W absent), with edge, X and Y derivatives, written as upper and lower register halves | inferred | [TE1.h:37-41, 524-552](../te1/TE1.h); [TE1.h:119](../te1/TE1.h) | Setup-write trace of one textured triangle |
| Width and fixed-point format of the S/W, T/W and 1/W iterators, and precision of the division | unknown | The diagnostic's register masks give widths (25-bit upper halves, 26-bit lower halves) in Origami's reading of the shipped diag; that reading is a lead here, not a source | Read the diag register table; trace one textured triangle's setup words |
| LOD is derived from the screen derivatives of the iterators; the client sends only a minimum LOD (times 64, six fraction bits) and a last level | inferred | [texture-path.md:218-227](../te1/texture-path.md) | n/a |
| LOD arithmetic: derivative estimate, log2 approximation, fraction bits, rounding between levels | unknown | none held | Diag LOD and magnification checksums (te1 registers.toml carries the three render checksums only); a trilinear ramp readback |
| Repeat and clamp wrap per axis; wrap addressing arithmetic is the client's description, not the board's | inferred | [texture-path.md:213-216](../te1/texture-path.md) | Texture readback at coordinates just past an edge |

### 11. Texture filtering (TRAM)

| Fact | Grade | Source | Settle |
|---|---|---|---|
| Linear, bilinear and trilinear: four and eight texels a pixel; the TRAM fetches, filters and returns up to two filtered texels a clock | established | Octane report 4.2.4-4.2.5 pp. 4-9 to 4-10 | n/a |
| Texels are 1-4 components of 4, 8 or 12 bits; texture colour tables are three 256-entry 8-bit tables applied after filtering | established | Octane report 4.4.9.2 p. 4-17 | n/a |
| Texture environment (modulate, decal, blend, replace through modulate) is applied in the RE4, with 12-bit environment colour | software expectation | [texture-path.md:230-247](../te1/texture-path.md) | n/a |
| Filter weight width and rounding; whether trilinear is bilinear in two levels then linear; the RE4 texture-modulate multiply width | unknown | none held | Diag texture render checksums against a replay (the three values in te1 registers.toml); a trilinear ramp readback |
| How 8-bit host components reduce to a 4-bit kept format, and 16-bit halfwords to 12 bits | unknown (the client's own rounding is software expectation) | [texture-path.md:147-149, 343](../te1/texture-path.md) | Physical render of a texture whose components differ only in low bits |

### 12. Line and point rules

| Fact | Grade | Source | Settle |
|---|---|---|---|
| Antialiased point: 2 by 2 block of pixels weighted by distance in sub-pixel space | established | Octane report 4.4.3 p. 4-13; [antialiasing.md](antialiasing.md) | n/a |
| Antialiased line: two pixels wide, weights by minor-axis distance, slope correction, end-point filter along the major axis; colour-index lines replace the low four index bits with the weight | established | Octane report 4.4.4 p. 4-14; [antialiasing.md](antialiasing.md) | n/a |
| Weight direction for points, quantisation of the four-bit weight, slope-correction and end-fade shapes | unknown | [antialiasing.md](antialiasing.md) open table | Diag `mg_points` and `mg_lines` expected values; readbacks at known sub-pixel offsets |
| Wide antialiased lines are not done in hardware; wide antialiased points are | established | OpenGL guide p. 379; [board-facts.md](board-facts.md) fact 19 | n/a |
| Smoothed GL lines use fractional start and end registers plus a sub-pixel adjust; smooth enable at bit 0 and line width in subpixel units at bits 7:1 of the config register | inferred | [RE4.h:87-93, 456-457](../re4/RE4.h) | Library writer for `GLINECONFIG` |
| Integer lines: Bresenham with a rounding option bit in the master config (bit 4) and a skip-last-pixel option (fill mode bit 10) the X server sets for cap style | software expectation | [RE4.h:332, 353](../re4/RE4.h) | n/a |
| Diamond-exit or other pixel-ownership rule for aliased GL lines; point footprint for aliased points of size above one | unknown | none held | Diag `mg_lines` and `mg_points` expected values; a readback of a line crossing a diamond boundary |
| Line stipple repeats per pattern bit; polygon stipple is 32 by 32 | inferred | [RE4.h:347-351](../re4/RE4.h), [GE11.h:695, 729](../ge11/GE11.h) | Diag `mg_stip_tri` |

### 13. Dither

| Fact | Grade | Source | Settle |
|---|---|---|---|
| The pixel processor performs dithering | established | Octane report p. 4-12 | n/a |
| GL dither enable is state 0x1FC bit 0 in the geometry engine; the enable token carries 3 to enable and 0 to disable | software expectation | [GE11.h:697](../ge11/GE11.h), [HQ3.h:996](../hq3/HQ3.h), [gl-commands.md](../../software/opengl/gl-commands.md) | n/a |
| No pixel-processor fill-mode bit for dither has been found | inferred | [PP1.h:194-197](../pp1/PP1.h) (header) | Library token handler for 0x067 and the registers it writes |
| The dither pattern, its size, and which pixel types (8-8-8-8, 12-bit, 4-4-4-4) it applies to | unknown. The header names a 4 by 4 matrix from another board family as the nearest analogy, which is not evidence | PP1.h:195-197 | Diag `mg_dither` ("RSS, PP1, DITHER Test passed", IDE guide p. 7-13): read its expected pixel values from the shipped `ide`; or a gradient readback |

## What a model can and cannot take from this page

- Established with numbers: 8 subpixel bits, 12-bit colour iteration, 24-bit depth, 8-bit stencil, 8-bit fog
  precision, 8 versus 12 bit blenders, perspective-correct 1D and 2D textures only, trilinear filtering through
  TRAM, 2 by 2 antialiased points and 2-wide antialiased lines.
- Software expectations: the register and token encodings, the ZST word, the alpha reference format, the 16
  logic ops, the 2D inclusive block end.
- Every rounding, tie and reduction rule (setup snap, edge ownership, 12-to-8-bit store, blend multiply, LOD
  and filter weights, fog, dither) is unknown. The held diagnostics are the cheapest source for most of them, but their
  expected values are not extracted yet.

## Open items

Listed with their settling route in [questions/README.md](../../questions/README.md), entry 21.
