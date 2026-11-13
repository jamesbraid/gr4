# MGRAS visual buffers

What the published Octane graphics report says about the frame buffer building
blocks, the visuals built from them, and the stereo modes. These are the
report's tables, not measurements of a board. The page has no register facts,
so nothing in [devices/](../) changes for it.

## Sources and grades

The source is the OCTANE Graphics Architecture technical report, copyright 1997
Silicon Graphics, stored unmodified as [octane-technical-report.pdf](../../references/documents/octane-technical-report.pdf).
Page citations use the printed page numbers, with PDF page numbers in brackets.
Each fact is graded **established** as a published statement. Where the report
only says what a model offers, that is all the fact claims.

## Building blocks

The frame buffer is built from two kinds of block: 36-bit buffers and 9-bit
buffers (section 4.4.14, p. 4-20 [PDF 87]). Every visual is some combination of
them. **Established.**

Each 36-bit buffer can take one of these identities (p. 4-20 [PDF 87]):

- 12/12/12 RGB, single buffer
- 8/8/8/8 RGBA, single buffer
- 5/5/5/1 RGBA, double buffer
- 4/4/4/4 RGBA, double buffer
- 12-bit colour index, double buffer
- 24-bit depth and 8-bit stencil (ZST)

The 9-bit buffer is used only for an 8-bit colour-index overlay (p. 4-21 [PDF 88]).

The bits that a buffer's identity does not use are spare. The report says they
identify screen regions that need special interpretation at scan-out, and they
carry tagged fast clears. It does not give their register encoding or their
physical layout. **Established** for the uses; the encoding is unknown.

A 12/12/12 buffer uses all 36 bits for colour. It gets none of the spare-bit
features and clears more slowly. A double-buffered 12/12/12 visual at 1280 by
1024 leaves no spare bits at all. Buffers that the visuals do not use can serve
as pbuffers (pp. 4-20 and 4-21 [PDF 87 and 88]).

## Visuals at 1280 by 1024

Table 4.3 (p. 4-22 [PDF 89]) lists the visuals each model offers at each
resolution. These are the 1280 by 1024 rows with double buffering or depth and
stencil of interest here. Every row in this table has refresh rates of 50, 60,
72 and 76 Hz, and no stereo. **Established.**

| Printed model | Colour R/G/B/A | Depth / stencil | Double buffer |
| --- | --- | --- | --- |
| SI/SSI | CI 12 | 24 / 8 | yes |
| SI/SSI | 4/4/4/4 | 24 / 8 | yes |
| SI/SSI | 5/5/5/1 | 24 / 8 | yes |
| SI/SSI | 12/12/12/0 | 24 / 8 | no |
| SSI | 12/12/12/0 | 24 / 8 | yes |
| SI/SSI, footnote 2 | 8/8/8/8 | 24 / 8 | no |
| SI | 8/8/8/8 | 0 / 0 | yes |
| SSI | 8/8/8/8 | 24 / 8 | yes |
| SI, footnote 2 | 8/8/8/0 | 0 / 8 | yes |

At this size the double-buffered 12/12/12 visual is listed for SSI only. The
SI/SSI row for it is printed as "No".

Two footnotes qualify rows (p. 4-22 [PDF 89] and p. 4-23 [PDF 90]):

- Footnote 1, on rows marked with superscript 1 at 1024 by 768 and 1600 by 1200:
  available in patch 1105 for IRIX 5.3 and IRIX 6.2. **Established.**
- Footnote 2, on rows marked with superscript 2 at 1280 by 1024: these visuals
  "can only be accessed by using `setmon 1280x1024_xx_32db`". **Established.**

## Stereo

- Window stereo at 1024 by 768 and 96 Hz, on the CI 12 double-buffer row and the
  4/4/4/4 double-buffer row for SI/SSI (p. 4-22 [PDF 89]). **Established.**
- Full-screen stereo at 1280 by 492 and 120 Hz. The RGBA rows at that size list
  it, including single-buffered ones. Which colour formats fit depends on the
  frame buffer storage left (p. 4-23 [PDF 90]). The CI 12 rows at that size
  have no stereo. **Established.**

## Other published feature statements

- Pixel texturing (section 4.4.16, p. 4-24 [PDF 91]): each RGBA pixel of the
  pixel path is the STRQ coordinate of a lookup into a four-dimensional texture.
  The report advertises the feature. It gives no upload, filter or
  fourth-coordinate encoding. **Established** as advertised only.

## Limits and open conflicts

- A table row says what a model offers at a resolution. It does not say that the
  visual renders correctly on a board. **Established** as a limit of the source.
- The report gives no differences for the ESI, ESI+T, ESSI or EMXI revisions.
  It does not say that an Octane visual table carries over to Origin 2000 or
  Onyx2. **Established** as an absence.
- The overview feature list (section 4.1, p. 4-1 [PDF 68]) says 1600 by 1200
  and HDTV resolution are supported only on the Maximum Impact (MXI)
  configuration. Table 4.3 lists rows at those sizes for SI1, SSI1 and SSI, with
  footnote 1. The report does not resolve this. Do not add those rows to any
  board description without release-specific evidence. **Unresolved.**
