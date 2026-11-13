# MGRAS texture path

The texture option on Impact boards: the texture engine (TE1), its texture RAM
(TRAM), the words the IRIX software sends to drive them, and the encodings those
words carry. Register offsets, widths and field positions are in
[devices/te1/registers.toml](../devices/te1/registers.toml), with the TEXMODE1 fields in
[devices/re4/registers.toml](../devices/re4/registers.toml). The generated reference is
[devices/te1/registers.md](../devices/te1/registers.md). This page is the prose and the open
questions.

Each fact carries one of the grades in [AGENTS.md](../AGENTS.md). Established
means a published document, a shipped binary's routine or a diagnostic transcript
shows it directly. Inferred means the evidence supports it and another reading
survives. Unknown means nothing held settles it, and the table at the end says
what would.

## Sources and what they cover

- OCTANE Technical Report, [docs/octane-technical-report.pdf](octane-technical-report.pdf),
  section 4: the texture option adds one texture engine and 4 MB of texture RAM
  to each raster path; SI with texture ("SI+T") has one raster path, MXI has two
  (Table 4.1, sections 4.1.2 and 4.1.4). Established. The report lists stored
  texel components of 4, 8 or 12 bits, one to four components each (its page 84),
  and perspective correction for one- and two-dimensional textures only.
- Octane IDE Reference Guide 108-0217-002, sections 7.1.10, 8 and A.1
  ([sources index](sources/INDEX.md)): the diagnostic's sample output reports
  "numTRAMS : 4" and "RSS-0, Testing 4 TRAMS" on a textured path, and "No Texture
  Subsystem in the Graphics Board" on a board without one. Established as
  published output.
- OpenGL on Silicon Graphics Systems 007-2392-002, chapter 16: the hardware
  texturing configurations and the recommended texture features. Established as
  published guidance.
- Shipped software. The IRIX GL client library and kernel objects were read for
  the words they send and the arithmetic they do. A routine's own code shows the
  word, so those words are established. What a word means to the board is
  inferred. The client's routines appear here by role, not by name.
- The diagnostic's texture register table: names, offsets, widths and test masks
  read from the shipped diagnostic. That table is a software expectation, not a
  measurement, so its register numbers and widths are graded inferred.
- OpenGL 1.2.1 and the SGI extension specifications define the filter, wrap and
  environment arithmetic. Where this page gives that arithmetic, it is an
  approximation of what the board does. It is not a claim about the silicon.

None of the above was re-read for this page. The client and kernel readings come
from the IRIX binaries as recorded in the source notes, and the register table
from the diagnostic.

## Where texture state lives

- No routine reads or writes a texture register through memory-mapped access.
  The kernel's texture code uses the command FIFO and the HQ status and flag
  words, and the client's texture code uses the command FIFO. Established.
- Texture registers are numbered in the raster register space and reached as
  command words, in the framing that [mgras-gl-commands.md](mgras-gl-commands.md)
  describes. Inferred that the diagnostic reaches them by the same command path.
- Unknown: whether a textured board also decodes texture registers somewhere in
  the two-megabyte aperture. What would settle it: the diagnostic's register
  trace on a textured board, or a physical read of the candidate offsets.
- Three kinds of word carry texture state on the FIFO: raster register writes
  (register, value and the geometry engine's shadow address for that register),
  indexed table writes (one index-register write, then four-word packets, one
  per table entry), and class-0 tokens. Established. That the index advances
  after each packet is inferred.

## Texture RAM size and blocks

- Each raster path's texture RAM is divided into 256 blocks. A block is the
  unit count shifted left 12 bits, so four units give 4 MiB in 16 KiB blocks.
  Established: the kernel's block table has 256 entries, and the save buffer is
  allocated at the unit count shifted left 20 bits.
- Physical device count per path is unresolved. The report says "One TRAM ASIC
  is standard with each texture engine. The TRAM ASIC contains 4MB" (section
  4.2.5), and its Figure 4.5 draws four TRAM blocks per texture engine, one each
  for alpha, blue, green and red. The diagnostic's four TRAMs per path agree with
  the figure. Inferred: four devices of 1 MB per path, one per colour component.
  What would settle it: a photograph of the original texture daughterboard, or the
  diagnostic run on a single-path board.
- Board-version decode, which decides whether a path has texture RAM at all, is
  in [mgras-board-identity.md](mgras-board-identity.md) and
  [mgras-two-re.md](mgras-two-re.md).
- Texture base: the client asks for a block count once per context. The kernel
  places a run of blocks for it, saves any overlapping contexts' blocks, and
  writes the new base with the base token. Established as the software sequence.
  The base register is inferred to be the per-context base (TXBASE). How the
  hardware adds the base to the block numbers in the level tables is unknown.
  Adding it is inferred, and it is the reading that makes per-context bases work.
- A one- or two-dimensional level occupies `max(w' >> 5, 1) * max(h' >> 5, 1)`
  blocks, where `w'` is half its width (shifted further for packed formats) and
  `h'` its height. Volumes use the full width and multiply by half the depth.
  Established as the client's arithmetic. That a block is a 32-by-32 tile of
  two-texel units is inferred. Each level's first block goes to the level table
  (TXMIPMAP, or TL_MIPMAP for a load) and its border block to the border table.
  Small levels share one block.

## Texel formats

The client maps each requested internal format to one kept format, with a layout,
a depth code and a class for the draw. Established: the mapping was taken by
running the client's conversion over every enum.

| Requested | Kept | Layout | Depth | Class | Host bytes a texel |
| --- | --- | --- | --- | --- | --- |
| `GL_ALPHA`, `GL_ALPHA8` | `ALPHA8` | 0 | 1 | 1 | 1 |
| `GL_ALPHA4` | `ALPHA4` | 0 | 0 | 1 | 1 |
| `GL_ALPHA12`, `GL_ALPHA16` | `ALPHA12` | 0 | 2 | 1 | 2 |
| `GL_LUMINANCE`, `GL_LUMINANCE8` | `LUMINANCE8` | 0 | 1 | 2 | 1 |
| `GL_LUMINANCE4` | `LUMINANCE4` | 0 | 0 | 2 | 1 |
| `GL_LUMINANCE12`, `GL_LUMINANCE16` | `LUMINANCE12` | 0 | 2 | 2 | 2 |
| `GL_INTENSITY`, `GL_INTENSITY8` | `INTENSITY8` | 0 | 1 | 3 | 1 |
| `GL_INTENSITY4` | `INTENSITY4` | 0 | 0 | 3 | 1 |
| `GL_INTENSITY12`, `GL_INTENSITY16` | `INTENSITY12` | 0 | 2 | 3 | 2 |
| `GL_LUMINANCE_ALPHA`, `GL_LUMINANCE8_ALPHA8`, `GL_LUMINANCE6_ALPHA2` | `LUMINANCE8_ALPHA8` | 1 | 1 | 2 | 2 |
| `GL_LUMINANCE4_ALPHA4` | same | 1 | 0 | 2 | 2 |
| `GL_LUMINANCE12_ALPHA12`, `GL_LUMINANCE16_ALPHA16` | `LUMINANCE16_ALPHA16`, kept at 12 bits | 1 | 2 | 2 | 4 |
| `GL_RGB`, `GL_RGB8`, `GL_RGB5` | `RGB8` | 2 | 1 | 4 | 3 |
| `GL_RGB4` | `RGB4` | 2 | 0 | 4 | 3 |
| `GL_RGB10`, `GL_RGB12`, `GL_RGB16` | `RGB12` | 2 | 2 | 4 | 6 |
| `GL_RGBA`, `GL_RGBA8`, `GL_RGB5_A1` | `RGBA8` | 3 | 1 | 4 | 4 |
| `GL_RGBA2`, `GL_RGBA4` | `RGBA4` | 3 | 0 | 4 | 4 |
| `GL_RGB10_A2`, `GL_RGBA12`, `GL_RGBA16` | `RGBA12` | 3 | 2 | 4 | 8 |

- Layout codes: 0 one component, 1 two (luminance and alpha), 2 RGB, 3 RGBA.
  Depth codes: 0 for 4-bit, 1 for 8-bit, 2 for 12-bit components. Class codes
  are the TEXMODE1 bits 11:9 values: 1 alpha, 2 luminance, 3 intensity, 4 colour.
- The class is set at draw time. Load-time storage holds one component layout and
  depth, so alpha, luminance and intensity differ only in the class bits of the
  draw. Established as the client's words.
- The class numbering above is the table's and matches the diagnostic. A prose
  line in the source material numbered the classes 0 luminance, 1 alpha, 2
  intensity. That disagrees with its own table, so the table is followed here.
- Mezzanine fallback. With TRAM size code 0 (one unit a path) the client keeps
  every RGB and RGBA request at four bits, and luminance-alpha at eight bits or
  fewer. The one-component 12-bit formats stay. Established as the client's test.
  That code 0 means no mezzanine is inferred. The published report says the
  mezzanine option is needed for three- and four-component 8-bit texels and for
  two-, three- and four-component 12-bit texels.
- Host layout. The client passes the kept format's base format and type to its
  pixel descriptor builder. Those are unsigned bytes for 4- and 8-bit kept formats
  and unsigned shorts for 12-bit ones. Established by running the client's
  helpers over each kept format. Components are in R, G, B, A (or L, A) order,
  packed with no padding. Established for RGBA bytes. The other formats are
  inferred.
- Narrowing: a 4-bit kept format arrives as bytes and is rounded to four bits. A
  12-bit format arrives as halfwords and its top 12 bits are kept. The board's own
  rounding is unknown.
- Texel layout in texture RAM is unknown. The client's footprint arithmetic is
  established, but how the board places each texel in a block is not.

### TRAM select for one- and two-component textures

TEXMODE1 bits 8:7 and TL_MODE bits 4:3 carry a select for one- and two-component
textures, not only for the texture-select formats. Established from the client:

- The select comes from a per-texture byte of the allocation. The client sets it
  only when the context's TRAM size code is nonzero and the layout is one or two
  components.
- For an RGB or RGBA texture the client sends an undefined value in bits 8:7.
- A texture-save routine puts the texture's select in TEXMODE1 bits 8:7, and a
  different select in TL_MODE bits 4:3. A restore routine puts the texture's own
  select in TL_MODE bits 4:3.

Inferred: on a four-unit board one 8-bit one-component texel occupies one of four
devices, so four such textures can share a block location and the select names
the device. The board ignores bits 8:7 for three- and four-component layouts.
Unknown: which device each select names, how 4-bit and 12-bit one- and two-component
textures use the select, and whether the board honours bits 8:7 for RGB and RGBA.
What would settle them: a published texture RAM specification for the matching
revision, or a physical save after loading four one-component textures into one
block with selects 0 to 3.

## Filtering and wrap encodings

Established as the client's encodings, from its routines that build the mode word.
The board's arithmetic is inferred from OpenGL 1.2.1 and graded as an approximation.

TEXMODE2 bits, for the drawn texture:

- Bits 3:2: kept depth (0 for 4-bit, 1 for 8-bit, 2 for 12-bit).
- Bit 4: set only for a 4- or 8-bit kept format while the multi-buffer hint is
  fastest. Its use is unknown.
- Bits 5 and 19: set when the minification filter is a mipmap filter and more than
  one level is drawn.
- Bit 6: the minification filter blends between levels (nearest-mipmap-linear,
  linear-mipmap-linear). Also set for linear on a volume.
- Bit 7: magnification is linear.
- Bit 8: the minification filter blends within a level (linear, and the two
  linear-mipmap filters).
- Bits 11, 12 and 13: the S, T and R wrap is a clamp mode (not repeat).
- Bit 14: the last clamp mode set was GL_CLAMP rather than clamp-to-border. It is
  one flag for all three axes.
- Bit 16: set on every texture the client has drawn with. Unknown in meaning.

| Minification filter | Bit 8 | Bit 6 | Bits 5 and 19 |
| --- | --- | --- | --- |
| `NEAREST` | 0 | 0 | 0 |
| `LINEAR` | 1 | 0 | 0 |
| `NEAREST_MIPMAP_NEAREST` | 0 | 0 | 1 |
| `LINEAR_MIPMAP_NEAREST` | 1 | 0 | 1 |
| `NEAREST_MIPMAP_LINEAR` | 0 | 1 | 1 |
| `LINEAR_MIPMAP_LINEAR` | 1 | 1 | 1 |

The client refuses GL_CLAMP_TO_EDGE and the sharpen and edge-clamp filters with
GL_INVALID_ENUM. It has no encoding for them. The volume's minification mipmap
filters are refused too.

Wrap, per axis: GL_REPEAT leaves the bit clear. GL_CLAMP sets the bit and bit 14.
GL_CLAMP_TO_BORDER sets the bit and clears bit 14. Established.

Semantics, approximated from OpenGL 1.2.1 section 3.8.4: repeat takes
`floor(s * width) mod width`. A clamp with nearest filtering takes the edge
texel. The border colour is the fallback for a clamp-to-border fetch outside the
texture. The border colour is reduced to the texture's own format by class.

Level of detail, approximated from OpenGL 1.2.1 section 3.8.5:

- TXLOD bits 25:16 hold the minimum level of detail times 64, with six fraction
  bits. Bits 3:0 hold the last level for a mipmap filter. For a non-mipmap filter
  the client writes 1 there, which is unexplained.
- Level `k` of a texture is `max(1, width >> k)` by `max(1, height >> k)`.
  Established as the client's arithmetic for the sizes it sends.
- The board derives its own level of detail from the perspective iterators. The
  client sends no per-vertex or per-primitive value. How the board computes it,
  rounds it and blends between levels is unknown. The detail-level code in TXSIZE
  is `clamp(L + 6, 0, 4)` for a detail level L, default 2. Established.

## Texture environment and colour

- Environment mode in TEXMODE1 bits 2:1: 0 modulate, 1 decal, 2 blend. Established.
- GL_REPLACE reaches the board as modulate. The client stores replace as modulate
  before it sends anything, and no other reader of the stored mode exists in the
  texture code. Established. Whether the board gives replace its own result by
  another route is unknown. The two results agree only when the fragment colour is
  white.
- GL_ADD is refused by the client with GL_INVALID_ENUM. The board has no add mode.
- A texture of the alpha class forces TEXMODE1 bits 2:1 to 3, whatever the
  environment mode. Established. The OpenGL 1.2.1 alpha functions give that result
  for modulate and blend. Reading code 3 as exactly that function is inferred.
- Environment colour, in TXENV_RG (red in 11:0, green in 23:12) and TXENV_B (blue
  in 11:0): 12 bits a component. The client converts each component as
  `trunc(clamp(c) * 16777215) >> 12`. Alpha is never sent. Established. The board
  having no environment alpha is inferred from the width.
- Border colour: TXBCOLOR_RG and TXBCOLOR_BA, laid out the same way, 12 bits a
  component, alpha included. Established as the client's encoding.
- Colour table (SGI_texture_color_table): three 256-entry, 8-bit tables, red,
  green, then blue, written through the device-address and device-data ports. The
  client writes the device address `0x90000000` and then 768 bytes, 256 for each
  channel. Established as the words. The device address layout (channel and index
  in the low bits) is inferred. The base format of the table selects TEXMODE1 bits
  15:12: 0 for no table, 1 for alpha, 9 for intensity or luminance-alpha, 14 for
  anything else. Established as the words. The table is applied after filtering
  and shares the fog table, so the two cannot be used together (report, page 75).

## Detail texture

- DETAILSCALE is a 32-entry table of 6-bit values, filled through the indexed-write
  token. The client's default is 31, 31, 31, 29, 28 down to 1. The detail
  extension (glDetailTexFuncSGIS) replaces the table. Established as the client's
  defaults and writes. The table's use by the board is inferred from the detail
  extension's specification.
- TXDETAIL holds the first block of the detail texture. Inferred from its name and
  the level-table pattern.
- Only GL_ADD is accepted for the detail texture mode, and nothing is sent for it.
  Established.

## Volume and multi-dimensional textures

- MDDMA_CNTRL is used for volume and four-dimensional textures only. Its four
  4-bit size fields hold log2 of the four sizes, bits 25:23 hold the log2 of the
  blocks a pair of slices takes, and bits 29:26 hold that plus the log2 depth, less
  one. Inferred: the layout is fitted to one volume load, and no other load was
  read.
- A volume loads one slice per bracket (`0x9b00` to `0x9c00`). The client keeps a
  parity bit and advances its block word after each odd slice. Established from
  the client's loop. What places each slice in the block is unknown.
- On a volume the client refuses the mipmap minification filters. GL_LINEAR sets
  bits 6 and 8. Established.

## Texture RAM save and restore

- A texture save reads a 64-row by 64-word block through host DMA slot 2, with
  read kick byte `0xbd`. A restore writes it back with kick `0xa5`, after a
  geometry-engine DMA set-up word. Established as the words. The client's read
  format gives 4 bytes a location for RGBA and 3 for RGB. Established. The
  page-list and fence details are in
  [mgras-gl-commands.md](mgras-gl-commands.md#texture-transfers) and
  [mgras-hq4.md](mgras-hq4.md).
- A client restore goes through the geometry engine's texture-load routine, under
  the 64-by-8192 level shape. Its bytes come from a page list
  kicked `0xa3` on slot 1. Established as the words. Whether a page-list entry
  indexes the slot's page list is inferred.
- The kernel's save and restore run with no client context loaded and base 0, so
  they leave a client's texture state alone. Established.
- Texture RAM is treated as lost across kernel reinitialisation. That is software
  policy, not a claim about retention.

## Texture coordinates

- Texture generation comes as `0x5a0c` (mode), `0x5b08` (plane selector: `0x2501`
  object, `0x2502` eye), `0x5c10` followed by four floats (plane coefficients), and
  `0x7504`/`0x7604` (enable and disable, for S to Q). Established. The eye plane is
  sent untransformed, so the geometry engine transforms it. Inferred from the
  OpenGL 1.2.1 eye-plane definition.
- The texture matrix is loaded with the ordinary matrix words. Established.
- Texture coordinates travel as vertex attributes. The geometry engine owns
  coordinate generation and the texture matrix. The texture engine receives only
  the per-triangle iterators. Inferred from the register map.

## Texture tokens

The class-0 tokens are named in [devices/hq3/registers.toml](../devices/hq3/registers.toml) and HQ3.h.
Their texture meanings, from the client's and kernel's listings:

| Token | Use | Grade |
| --- | --- | --- |
| `0x0b00`, `0x0c00` | texturing on and off, with TEXMODE1 bit 0 | established as form |
| `0x5f04` | one float: the texture offset, 0, or plus or minus 0.25 over the height for a framebuffer copy | established as values |
| `0x9b00`, `0x9c00` | bracket of each level's pixel transfer, opened and closed | established as form and place; load start and end inferred |
| `0xe910`, `0xea00` | save and restore of the texture mode words | established as form |
| `0xec10` | four-word indexed table write | established |
| `0xeb04` | texture base write | established as form; register inferred |
| `0x9300` | video-to-texture transfer start | established as form |

## Reset

- Attaching the board builds the kernel's texture manager. The widget reset
  touches no texture register. Established.
- What a board reset does to the texture engine's state and to texture RAM
  contents is unknown. What would settle it: a known texture written on a physical
  textured board, a reset, and a read-back through the kernel's save path.

## Unknowns

| Unknown | What would settle it |
| --- | --- |
| Whether any texture register decodes in the two-megabyte aperture, including the texture RAM revision register's access path | the diagnostic's TRAM test with its `-r` option, or a physical read |
| Physical device count per path (four 1 MB devices is inferred) | a photograph of the original texture daughterboard, or the diagnostic run on a single-path board |
| How texels are laid out in texture RAM | a physical capture through the save path |
| Host layout of formats and types other than RGBA bytes | the pixel program each format's load uses, read from the client |
| How the board reduces an 8-bit host component to 4 bits, or a 16-bit halfword to 12 bits | a physical render of a texture whose components differ only in their low bits |
| The board's level-of-detail arithmetic, rounding and blend precision | a physical render of a trilinear ramp, or the diagnostic's LOD and magnification checksums once their expected values match |
| Whether the board or the geometry engine gives GL_REPLACE its result | a physical render of replace against modulate on one quad |
| What TEXMODE2 bit 4, TL_MODE bit 8, TEXRBUFFER and TL_WBUFFER do at draw time | a physical multi-buffer hint draw, and the client's writer for the buffer words |
| Bits outside the diagnostic's masks: TEXMODE1 bit 19, TL_MODE bits 17:16 and 7 and 9 to 11, TXLOD bits 25:21 and 15:10, TEXMODE2 bit 16 | the diagnostic's register tests read on a textured board, or a physical read-back |
| TXTILE, TRAM_CNTRL, MAX_PIXEL, TEVERSION contents | the client's and diagnostic's writers, read in full; a physical read-back |
| Border colour reduction per class, and whether the board samples uploaded border texels | a render with a coloured border on a clamped alpha or luminance texture, and a revision-matched specification |
| What TXBORDER names physically, and where the board stores border texels | a published layout specification, or controlled texture RAM read-back with a known pattern |
| What the board does with a wide-level load branch in the client | a physical capture of the same load |
| Which texture RAM device each select value names for one- and two-component textures | the revision-matched specification, or a physical save after loading four one-component textures to one block with selects 0 to 3 |
| How the board places each slice of a volume, and the slice layout | a physical texture RAM save of a loaded volume |
| Placement of a level inside a shared block (TXMIPMAP bit 8) | a physical texture RAM save after loading a mipmapped texture |
| Words the fast pixel path sends for its own texture load (not read) | reading that routine's set-up in the client, then its use on a physical board |
| Board-side reset of texture state and texture RAM contents | a physical write, reset and read-back |

## Conflicts with the existing headers

These are for the next reviewer. This page follows the client's encodings where
the two disagree. The headers are not changed here.

- TE1.h gives TEXMODE2 the clamp bits at 2 to 4 and the dimension at bits 9:8, and
  its comment puts the mip-mode field at bits 6:5. The client's encodings above put
  the clamps at 11 to 13, the mip flags at 5, 6 and 19, and the minification
  filter at 8. TE1.h's own caution calls the TEXMODE2, TXSIZE and TXLOD bit
  positions guesses.
- TE1.h describes TXCLAMPSIZE as the T size in bits 11:0 and twice the S size from
  bit 12. The client's arithmetic is width shifted left 13 bits, OR'd with the
  height, so the height is in bits 12:0 and the width in bits 25:13. The client's
  arithmetic is followed here.
- TE1.h defines the TXSIZE repeat field 11:8 as log2 R. The client repeats the width
  there, so the field is a copy of the width, not a depth.
- devices/te1/registers.toml grades TXMIPMAP bits 15:8 as a bank. Its mask is 9 bits, and bit 8
  is a per-image flag whose placement is unknown. The bank field is left as it is.
  Correcting it would change an existing inferred field.
