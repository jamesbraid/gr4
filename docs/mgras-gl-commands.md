# MGRAS GL command stream

What the IRIX OpenGL client library writes to the Impact board's command port,
what the kernel writes around it, and how those words frame. This page covers
the wire format and the register offsets the client polls. It does not say what
the board's own microcode does with the words; those programs are not read here.

Related pages: [client selection mode](mgras-client-selection-feedback.md) (the
selection words), [two-engine boards](mgras-two-re.md) (the command window and
the second engine). The register and word facts are in
[defs/hq3.toml](../defs/hq3.toml) and [defs/mgras.toml](../defs/mgras.toml).

## Sources and grades

- **Client library.** The IRIX 6.5.30 `libGLcore.so` for `IP27GR532`, 3,567,976
  bytes, SHA-256 `626d6d94fb5ee207139a1dc234bfc0b94e9c9d0d6d0441b43e4c1c9df2fc9d0d`.
  Read as machine code. It has no symbol table, only dynamic symbols, so the
  routine names below are dynamic-symbol names or the listing's own labels.
- **Kernel.** The graphics object `mgras.o` in the IRIX 6.5.30 IP27boot
  `mgras.a` archive (member SHA-256 begins `6a65e70d3cdc`), and the `unix.IP27`
  kernel (SHA-256 begins `cbdb02ea5d33`). Read as machine code at the addresses
  named below. The archive digests are given as recorded, not in full.
- **Grades.** Everything here shows what software sends, or what the kernel
  expects the board to accept. A listing is a software expectation, so every
  fact is graded **inferred**, even where the listing is unambiguous. It says
  what the software sends, not what the board does with it. None of it is a
  register manual, a board measurement or a bus trace.

## Port and status offsets

The client stores each command word to process address `0x124400`, always as a
32-bit store. The kernel writes its own command words through the board's command
window at offset `0x120400` (see [two-engine boards](mgras-two-re.md)). The client
reaches the status and flag words through a pointer to an aperture base, so the
offsets below are relative to that base. Whether `0x124400` maps to `0x120400` is
not established; it would need the process mapping base to be `0x4000`.

| Offset | Defs name | Use | Grade |
| --- | --- | --- | --- |
| `0x020000` | `HQ_GL_STATUS_OFFSET` | status word; bit 1 is the pipe-idle sense the client's finish and the kernel's raster idle wait both poll; bit 0 is polled before pixel-read traffic | inferred |
| `0x020010` | `HQ_GL_FLAGS_OFFSET` | flags word: bit 16 sync complete, bit 17 query ready, bit 20 flush | inferred |
| `0x020018` | `HQ_GL_FLAG_CLEAR_OFFSET` | the client writes a flag mask here to clear those flags | inferred |
| `0x020200` | `HQ_GL_DMA_STATUS_OFFSET` | DMA status; after a DMA read the client waits until `& 0x1eff` is zero | inferred |
| `0x028004` | `HQ_GL_QUERY_ANSWER_OFFSET` | answer word read after the query-ready flag sets | inferred |

The client only uses 32-bit stores. The kernel mixes widths. A 64-bit store to
the port is two stream words, high word first. The kernel's bank-token path
shows this: it writes header `0x00009808` in the high word, the first payload
word in the low word, and the second payload word with a 32-bit store.

## Word framing

Three header forms, all read from the client's emitters:

| Form | Test | Layout | Words taken |
| --- | --- | --- | --- |
| General | bit 31 clear | class in bits 31:16 (zero for opcodes), opcode in bits 15:8, payload bytes in bits 7:0 | `ceil(bytes / 4)` |
| Inline block | bit 31 set | payload bytes in bits 19:0, offset of the first payload byte in bits 23:22 | `(offset + bytes + 3) / 4` |
| Zero word | `0x00000000` | class 0, opcode 0, no payload | 0 |

- A three-byte colour takes one word and a six-byte short vertex takes two. The
  client's byte and short emitters write the header, then the packed words.
- A glBitmap image uses an inline block whose offset is the low two bits of the
  image pointer. Its word count is one more than the byte count gives when the
  offset is not zero.
- The client writes a zero word after each of its five geometry-engine table
  loads, the last one included. Its effect is unknown. Reading it as a no-op is
  inferred.
- Nothing closes a stream. The kernel's context switch ends with `0x0000f400`
  only when it switches to the default context.

Reconciling with `CFIFO_CTL` in [defs/hq3.toml](../defs/hq3.toml): that word
reads the command field as bits 20:8. The client's headers put a class in bits
31:16. For class-zero headers the two readings agree. For the classes below with
bits 19:16 set, they do not. `0x00080404` reads as command `0x804` under
`CFIFO_CTL` and as register `0x04`, four bytes, in class `0x0008` under the
client's form. Which field the board decodes is not settled. Both readings stay
in the defs, and `CFIFO_INLINE` is added beside `CFIFO_CTL` in the same unit.

## Header classes

| Class (bits 31:16) | Meaning | Grade |
| --- | --- | --- |
| `0x0000` | opcode in bits 15:8; state, primitive, query and pixel commands | inferred |
| `0x0008` | host-memory DMA descriptor bank; register in bits 15:8. Registers `0x00`, `0x04`, `0x05`, `0x06`, `0x07`, `0x08` and `0x0b` are written, one word each | inferred |
| `0x000a` | second DMA bank, used by the pixel read path. Registers `0x02`, `0x03`, `0x04`, `0x05`, `0x06` and `0x07` are written; what `0x02`, `0x03`, `0x04` and `0x06` do on a read is unknown | inferred |
| `0x000e` | synchronisation. Register `0x04` is a write fence that sets flag bit 16 when earlier writes finish. Register `0x01` is a DMA-read sync, followed by the DMA-status poll | inferred |
| bit 31 set | inline data block (see above) | inferred |

Vertex, normal, colour, index, texture-coordinate and raster-position headers
use the attribute classes in the table below. The class names the source format.
Bits 15:13 give the component count, bits 12:8 the source type, and bit 7 marks
byte-sized components. That reading is inferred from the table, not from a
board.

## Attribute headers

Entry points inside `glBegin`/`glEnd`, and raster positions outside them. The
client converts nothing; the words are the application's values as written.

| Entry point | Header | Payload |
| --- | --- | --- |
| `glVertex2f`, `3f`, `4f` | `0x40000008`, `0x2000000c`, `0x00000010` | floats |
| `glVertex2d`, `3d`, `4d` | `0x52000010`, `0x32000018`, `0x12000020` | doubles |
| `glVertex2i`, `3i`, `4i` | `0x58000008`, `0x3800000c`, `0x18000010` | ints |
| `glVertex2s`, `3s`, `4s` | `0x59000004`, `0x39000006`, `0x19000008` | shorts, packed |
| `glColor3f`, `4f` | `0x2000020c`, `0x00000210` | floats |
| `glColor3d`, `4d` | `0x32000218`, `0x12000220` | doubles |
| `glColor3ub`, `4ub` | `0x34800203`, `0x14800204` | bytes, packed |
| `glColor3b`, `4b` | `0x3c800203`, `0x1c800204` | bytes, packed |
| `glColor3i`, `4i` | `0x3c00020c`, `0x1c000210` | ints |
| `glColor3ui`, `4ui` | `0x3400020c`, `0x14000210` | ints |
| `glColor3s`, `4s` | `0x3d000206`, `0x1d000208` | shorts, packed |
| `glColor3us`, `4us` | `0x35000206`, `0x15000208` | shorts, packed |
| `glIndexf`, `glIndexi` | `0x00000204`, `0x18000204` | one float or int |
| `glIndexs` | `0x19000202` | short in bits 31:16, zero below |
| `glIndexd` | `0x12000208` | one double, as a 64-bit store |
| `glNormal3f` | `0x0000070c` | three floats |
| `glTexCoord2f` | `0x40000808` | two floats |
| `glTexCoord3i` | `0x3800080c` | three ints |
| `glTexCoord4f` | `0x00000810` | four floats |
| `glRasterPos2f`, `3f` | `0x40003808`, `0x2000380c` | floats |
| `glRasterPos2i`, `3i` | `0x58003808`, `0x3800380c` | ints |

The vertex header values match the ones [OPEN_QUESTIONS.md](OPEN_QUESTIONS.md)
lists for the same entry points, from the same client listing.

## Commands

Zero-payload commands are written as the header alone. Grades are inferred unless
the row says otherwise.

### Context setup and state

| Command | Header and payload |
| --- | --- |
| context opener | `0x00000600` |
| context configuration | `0x00008c04` and one int (a per-board configuration byte shifted right by one) |
| geometry-engine table load | `0x00008204` and a size-class int (`0x20`, `0x40` or `0x27`); then an inline block of five descriptor words and that many data words; then a zero word |
| colour-index setup | `0x00000a04` and the visual's colour-index width in bits |
| RGBA setup | `0x00000900` |
| `glViewport` | `0x00003310` and four ints: x, y, width, height |
| `glScissor` | `0x00003910` and four ints: x, width less one, y, height less one |
| `glDepthRange` | `0x00004808` and two floats |
| `glMatrixMode` | `0x00002a04` and the enumerant |
| `glLoadMatrixf`, `glMultMatrixf` | `0x00002b40`, `0x00002d40`, then sixteen floats |
| `glLoadIdentity` | `0x00002c00` |
| `glTranslatef`, `glScalef`, `glRotatef` | `0x0000320c`, `0x0000310c`, `0x00003010` |
| `glShadeModel` | `0x00004704` and the enumerant |
| `glDepthFunc`, `glDepthMask` | `0x00004304` with `f - 0x200`; `0x00003c04` |
| `glCullFace` | `0x00007404` and the enumerant |
| `glFrontFace` | `0x00005604` and `0x900` (CW) or `0x901` (CCW) |
| cull face enable, disable | `0x00007200`, `0x00007300` |
| enable tokens | depth test `0x6604`, dither `0x6704`, alpha test `0x6404`, blend `0x6504`, fog `0x6804`, line smooth `0x6904`, line stipple `0x6a04`, logic op `0x6b04`, point smooth `0x6c04`, polygon stipple `0x6d04`, scissor `0x6e04`, stencil `0x6f04`; each with 1 or 0, except dither, which enables with 3 |
| lighting enable, disable | `0x00000d00`, `0x00000e00` |
| light enable, disable | `0x00007104`, `0x0000a004`, then the light index |
| normalise enable, disable | `0x0000a304` with 1 or 0 |
| `glAlphaFunc` | `0x00003e08`, `func - 0x200`, then the reference as a 12-bit fraction |
| `glStencilFunc` | `0x0000410c`, `func - 0x200`, reference, mask |
| `glStencilOp` | `0x0000420c` and three operation numbers (keep 0, zero 1, replace 2, incr 3, decr 4, invert 5) |
| `glStencilMask` | `0x00003a04` and the mask |
| `glClearStencil` | `0x0000be04` and the value |
| `glBlendFunc`, `glBlendEquationEXT` | `0x00003f08`, `0x00006004` |
| `glBlendColorEXT` | `0x0000d910` and four floats |
| `glLogicOp` | `0x00004004` and `op - 0x1500` |
| `glColorMask` | `0x00003b04` and one word, red in bit 0, green 1, blue 2, alpha 3 |
| `glFog` parameters | colour `0x0000b410`; start, end, density `0x0000b504`, `0x0000b604`, `0x0000b704`; index and mode `0x0000b804`, `0x0000b904` |
| `glPolygonOffset`, `glPolygonOffsetEXT` | `0x0000e70c` with factor, then bias or units, then a third word (1.0 or 1.1, meaning unknown) |
| `glClipPlane` | `0x0000a514`, the plane enumerant, four floats |
| clip plane enable, disable | `0x0000a604`, `0x0000a704` with the enumerant |
| `glLineWidth`, `glPointSize` | `0x00004504`, `0x00004d04`, then a float |
| `glLineStipple` | `0x00004608`, factor less one, and the 16-bit pattern reversed |
| `glPolygonMode` | `0x0000a808` and the two enumerants |
| `glMapGrid1f`, `glMapGrid2f`, `glClearAccum` | `0x0000ae10`, `0x0000af20`, `0x0000bb10` |
| `glClearColor` | `0x0000ba10` and four floats |
| `glClearDepth` | `0x0000bc04` and a 24-bit integer, the depth scaled by 16777215 |
| `glClearIndex` | `0x0000bd04` and a float |
| `glIndexMask` | `0x00003d04` and the mask |
| `glIglooInterfaceSGIX` | `0x00010200` turns on IRIS GL's colour-after-normal rule, `0x0000df00` and `0x0000de00` turn it off, `0x0000dd00` changes nothing; meaning inferred from the library's flag logic |
| `glFlush` | `0x00003600` |
| clear | `0x00001500` for colour, `0x00004c00` for stencil, `0x00004a00` for depth, one per selected bit |

### Primitives

`glBegin` writes one of the begin tokens and `glEnd` writes the matching end
token, both zero-length.

| Mode | Begin | End |
| --- | --- | --- |
| `GL_POINTS` | `0x1600` | `0x2000` |
| `GL_LINES` | `0x1700` | `0x2100` |
| `GL_LINE_STRIP` | `0x1800` | `0x2200` |
| `GL_LINE_LOOP` | `0x1900` | `0x2300` |
| `GL_TRIANGLES` | `0x1a00` | `0x2400` |
| `GL_TRIANGLE_STRIP` | `0x1b00` | `0x2500` |
| `GL_TRIANGLE_FAN` | `0x1c00` | `0x2600` |
| `GL_QUADS` | `0x1d00` | `0x2700` |
| `GL_QUAD_STRIP` | `0x1e00` | `0x2800` |
| `GL_POLYGON` | `0x1f00` | `0x2900` |

Inside a triangle strip the client can write `0x0000dc00` (IRIS GL's
swaptmesh). The client keeps the mesh itself only when a context flag is set;
otherwise the token goes to the board, which then does the exchange. What the
board does with the token is unknown.

### Queries, fences and transfers

- **Query.** Clear flag `0x20000` (write to `0x020018`). Write `0x0000a20c` and
  three int words. Poll flags bit 17 until set. Read the answer at `0x028004`.
  Which answer each query index expects is unknown. The client's query routine is
  called from more than a hundred sites.
- **Fence.** Write `0x000e0400` and poll flags bit 16 until set.
- **DMA-read sync.** Write `0x000e0100`, then poll `0x020200` until `& 0x1eff`
  is zero.
- **Readback bracket.** `0x00009600` opens a pixel read and `0x00009700` closes it
  (inferred from their position). These are the readback tokens `TOKEN_READBACK_BEGIN` and `TOKEN_READBACK_END`
  in [defs/hq3.toml](../defs/hq3.toml). `0x0000da00` (`TOKEN_TRANSFER_DONE`)
  follows a DMA read's kick.
- **Flush.** After `0x00003600`, the client sets flags bit 20 itself. See the
  open questions below.

### Host-to-board DMA

The client's DMA setup writes the bank `0x0008` descriptor, one word per
register, then the kick, then the fence token. The routine clears flags bit 16
right after the `0x00080b04` header.

| Header | Payload |
| --- | --- |
| `0x00080004` | `0x80000000` |
| `0x00080404` | descriptor pitch |
| `0x00080504` | zero |
| `0x00080604` | destination offset |
| `0x00080704` | row count |
| `0x00080804` | bytes a row |
| `0x00080b04` | kick byte `(slot << 1) \| 0xa1`, then the fence `0x000e0400` |

Bit 4 of the kick byte is clear for transfers the geometry engine runs. Its
meaning for the board is inferred from that split, not confirmed.

### Pixel images

`glDrawPixels` and the rectangle write calls use the geometry engine to convert
the image. The client never sends the format or type. It loads a program and its
parameters, then sends the image.

1. **Parameter loads.** A block `0x00008000 | len` with `len = 0x20 + 4 (a + b)`
   bytes, for the first list (`a` words) and the second list (`b` words). A
   second block, `0x0000cd00 | len`, loads the same way with the parameter
   counts divided by four. Whether the two loads address one memory is unknown.
2. **Program.** At `0x13b`: pairs of (routine, parameter address), up to a last
   routine that the client also loads at `0x19b`. The routine numbers and
   parameter addresses are geometry-engine addresses, passed as opaque words.
3. **Destination.** At `0xe34`: `x0`, `y0`, `x1`, `y1`, `height << 16 | width`,
   then `1`. The rectangle is the image's own; the raster position is added by
   the engine. That addition is inferred.
4. **Zoom.** At `0x191` and `0x192`: a y offset and `1 / |y zoom|`, as floats.
5. **HQ pixel format.** Header `0x000c0004` and a format word before the draw,
   and `0x000c0004` with `0x00000e00` after it. The word's bits 1:0 give the
   element size, bits 3:2 the unpack alignment, bit 6 a context flag (inferred to
   be swap bytes) and bit 7 the `GL_ABGR_EXT` format.
6. **Draw.** Header `0x00008d20` and eight words: words per row (inferred from
   the image widths), `0`, `0`, a pass count, a row-group count, `1`, the engine
   routine `0x49d0`, and flags (`0x99` for DMA, `0x18` inline).
7. **Image.** Inline, one block per row: `0x80000000 | offset << 22 | words * 4`,
   with a zero word after an odd count. Or by DMA, with the kick byte above.
8. **Brackets.** `0x0000d214` and five words, `0x0000d300`; `0x0000e910` and
   four words, `0x0000ea00`; `0x0000d700` alone.

Pixel reads by DMA go through the bank `0x0008` and `0x000a` descriptors. The
read path writes the raster records `0x153` (size), `0x158` (counters), `0x159`
(transfer mode), `0x46` and `0x47` (block start and end), then `0xdb04`, then the
format word, then the flush `0x0000f200`. It writes the bank descriptors, kicks
with `(slot << 1) | 0xb9`, sends `0x000a0504` with the slot (what that selects is
unknown) and the fence `0x000e0400`. It then sends the DMA-read sync
`0x000e0100`, polls the DMA status, polls status bit 1, and sends `0x0000da00`.
The data-port read uses `0x00008f08` and two zeros, polls status
bit 0 and the raster status register at `0x02c578` bit 8, then reads units from
`0x02d1c0` and `0x02c1c4`. Several of these register meanings are unknown; the
pixel-read words are software expectations only.

## Kernel context image and eviction

The kernel keeps a 63-word image per GL context and writes it at each switch.
Facts below come from the kernel listing.

- **Allocation.** For a new context the kernel zeroes the entry, sets word 0 to
  `-1` (no slot in the geometry engine's memory), and ORs `0xc0000000` into word
  1 (`unix.IP27` at `0xc0000000003f38c8` to `0xc0000000003f395c`). `CTX_W1` in
  [defs/hq3.toml](../defs/hq3.toml) names bits 31 and 30 as first load and
  nothing saved, both inferred. This listing shows the allocator sets both bits
  for a new context.
- **Switch.** `MgrasCtxsw` writes exactly 63 words. After writing, it clears bit
  27 of word 1 in every image, and clears bits 31, 30, 29 and 26 in every image
  except the default context's. `CTX_W1` names bit 27 from the kernel's writes;
  this listing shows the routine clears it after the write, so the two readings
  describe different moments. The default-context test is inferred.
- **Clip words.** `MgrasValidateClip` (`mgras.o`, listing `0x61d8` to `0x67b4`)
  fills words 2 to 15 from the window and its visible rectangles. Word 3 is
  `(mode << 4) | enables`, and enable bit i selects rectangle i. Rectangle 0 is
  words 11 and 12, rectangle 1 words 9 and 10, rectangle 2 words 7 and 8,
  rectangle 3 words 5 and 6. Each word is `first << 16 | last`, inclusive, with
  rows counted up from the screen's bottom. All four pairs are stored on every
  call, so a pair with its bit clear holds stale data.
  - One to four visible rectangles: mode 1, one enable bit each.
  - No visible rectangle but a window of nonzero width: mode 1, rectangle 0 is
    the window clamped to the screen.
  - Five or more visible rectangles: mode 1, no enables (`0x10`). What bounds
    such a window is unknown.
  - Null clip: mode 2, rectangles 0 and 1 both the whole screen (`0x23`), and
    word 2 `0x04000000`.
  - When the window record has a clip ID, word 4 is `(x & 3) | (y & 3) << 2 |
    1 << (4 + ID)`. The ID is in the window record. Word 4 is inferred to load
    register `0x17b`.
  The kernel sends a changed clip as one `0xe43c` packet to a loaded context
  (`CFIFO_CMD_CLIP_BIND`). That the board treats mode 1 as inside the rectangles
  and mode 2 as outside is inferred.
- **Eviction.** When it needs geometry-engine memory, the kernel reads a context
  out and later writes it back. `MgrasEramRead` (`.text` `0xf18`) builds a DMA
  read descriptor, kicks it, then sends `0x0000fc08` with the ERAM address and
  word count, then `0x00000100`. `MgrasEramWrite` (`.text` `0x11f0`) writes the
  image back in chunks of at most `0x384` words: `0x0000fd04` with the count, the
  descriptor and a kick with bit 4 clear; then `0x0000fb08` with the ERAM address
  and count. It ends with `0x0000fa00`. The kernel stores and returns the image
  unchanged, which is inferred from the code.

## Reconciling with other pages

- **Command field.** `CFIFO_CTL` and the client's header form disagree for
  classes with bits 19:16 set (see Word framing).
- **Command window.** The kernel's `0x120400` and the client's `0x124400` are
  one window only if the mapping base is `0x4000`, which is not established. The
  normal FIFO at `0x020400` in the OpenBSD driver is a third address; see
  [two-engine boards](mgras-two-re.md) and the open question there.
- **Flags bit 20.** The kernel's buffer-swap path reads and clears it, and what
  raises it is open in [docs/OPEN_QUESTIONS.md](OPEN_QUESTIONS.md). The client
  sets it itself after `glFlush`. Both can be true; the client's write does not
  show what else raises it.
- **Address `0x028004`.** It is the query answer here and the GE revision read
  after a download in [defs/mgras.toml](../defs/mgras.toml). Software reads it
  for two purposes; which answer the board gives for each index is unknown.
- **Bank words.** `CTX_BANK_WORD_FIRST` and `CTX_BANK_WORD_SECOND` (`0x10`,
  `0x11`) name the image words the kernel reloads at each switch. This page does
  not add to them.
- **Library object.** The client facts are from `libGLcore.so` for `IP27GR532`.
  The tools' own copy is `IP28GR432`, a different build. Whether the two differ
  in these routines is not checked.

## Open questions

- The board's answer to each query index, and what the client does with it.
  Settling it takes the answer word read after each query on a board.
- The meaning of the opcodes `0x82`, `0x8c`, `0x06` and `0x9a` on the board.
- What registers `0x02`, `0x03`, `0x04` and `0x06` of the `0x000a` bank do on a
  read, and what selects the `0x000a0504` slot word.
- Which bits of the DMA status word the `0x1eff` mask covers.
- What the zero word after each table load does, if anything.
- Whether the board decodes the command field as bits 20:8 or as the client's
  class and opcode fields.
- What bounds a window with five or more visible rectangles, and how the board
  treats mode 2.
- What raises flags bit 20, and whether the client's write to it is the only
  source.
- The third word of the polygon-offset header (1.0 or 1.1): its effect on the
  board's bias or units.
