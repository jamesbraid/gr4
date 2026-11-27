# MGRAS GL command stream

What the IRIX OpenGL client library writes to the Impact board's command port,
what the kernel writes around it, and how those words frame. This page covers
the wire format and the register offsets the client polls. It does not say what
the board's own microcode does with the words; those programs are not read here.

Related pages: [client selection mode](client-selection-feedback.md) (the
selection words), [two-engine boards](../../devices/mgras/two-re.md) (the command window and
the second engine). The register and word facts are in
[devices/hq3/registers.toml](../../devices/hq3/registers.toml) and [devices/mgras/registers.toml](../../devices/mgras/registers.toml).

## Sources and grades

- **Client library.** The IRIX 6.5.30 `libGLcore.so` for `IP27GR532`, 3,567,976
  bytes, SHA-256 `626d6d94fb5ee207139a1dc234bfc0b94e9c9d0d6d0441b43e4c1c9df2fc9d0d`.
  Read as machine code. It has no symbol table, only dynamic symbols, so the
  routine names below are dynamic-symbol names or the listing's own labels.
- **Kernel.** The graphics members of the IRIX 6.5.30 IP27boot `mgras.a`
  archive (SHA-256 `c3b1faac9a98280b117cd9f054c4c737d1f9844d697b8ed17bfd7e70b8e7134f`)
  and the 6.5.30 `unix.IP27` kernel (SHA-256 `567474674eaa83d3...`; an earlier
  version of this page cited a `unix.IP27` with digest `cbdb02ea5d33...` that is
  not held). Read as machine code at the addresses named below.
- **Re-read status.** The `IP27GR532` client is not in this checkout, so most of
  its addresses were not rechecked. The sections that say "re-read" below were
  read again in the shipped file (SHA-256 above, from the 6.5.30 install media).
  The header words in this page's tables were
  compared with the 6.5.0 `IP28GR432` client listing (`software/opengl/asm/MGRAS/`):
  138 of the 154 eight-digit words appear as immediates there. The 16 that do not
  are the kernel's `0x9808`, `0xf400`, texture and eviction tokens, which the kernel
  builds from a base and a size, and a few client words (`0x0000df00` among them)
  that the 6.5.0 client does not contain as literals. Those are taken from the
  6.5.30 listing as recorded and were not independently confirmed.
- **Grades.** Everything here shows what software sends, or what the kernel
  expects the board to accept. A listing is a software expectation, so every
  fact is graded **inferred**, even where the listing is unambiguous. It says
  what the software sends, not what the board does with it. None of it is a
  register manual, a board measurement or a bus trace.

## Port and status offsets

The client stores each command word to process address `0x124400`, always as a
32-bit store. The kernel writes its own command words through the board's command
window at offset `0x120400` (see [two-engine boards](../../devices/mgras/two-re.md)). The client
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
- Nothing closes a stream. What the board does with a command that stops short, and what IRIX does about it, is in [hq4-host-interface.md](../kernel/hq4-host-interface.md#a-command-cut-short). The kernel's context switch ends with `0x0000f400`
  only when it switches to the default context.

Reconciling with `CFIFO_CTL` in [devices/hq3/registers.toml](../../devices/hq3/registers.toml): that word
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

**Register numbers from 0x200 up.** The IDE diagnostic's register table names
registers in the `0x200` to `0x2ca` range, in the groups below. Each entry sits `0x200` above the first register
of a `0x0xx` pair and takes that register's mask. Entries exist at `0x200` to
`0x210`, `0x242`, `0x244`, `0x25c`, `0x25e` and `0x260` to `0x26c` (raster
engine), and at `0x280` to `0x28a` and `0x2c0` to `0x2ca` (texture engine).
For example, `0x268` is named `Z_HI_LOW`, mask `0x7ff`, over `0x068` (`Z_HI`)
and `0x069` (`Z_LOW`). The table is **established** as the diagnostic's
content. Whether a write to a `0x2xx` register reaches the pair, and how wide
that write is, is **unknown**.

## Batched register blocks and table loads

Re-read in the `IP27GR532` client. **Established** as what the routines store;
none of it says what the board does with the words.

- **Triple records, `0x00007c08`.** `__glMgrasWrite` (`0xd9a15f0`) appends three
  words per call: a register or token number, a value, and a third word the
  caller loads from a table in the library's data (for example register `0x181`,
  value `0xd6d6`, at `0xd99fc5c`; what the third word is for is unknown). A
  fourth argument forces a flush; otherwise it flushes once the buffer holds 400
  or more words. The flush routine at `0xd9a1560` writes the header `0x00007c08`
  (opcode `0x7c`, eight payload bytes), then the record count (words divided by
  three, rounded down, by a multiply with `0xaaaaaaab` at `0xd9a167c` to
  `0xd9a1690`), then the
  word count rounded up to even, then an inline block header
  (`0x80000000 | words * 4`, masked to 20 bits) and that many words. When the
  count is odd, the last word of the block is not a record: it is whatever the
  buffer held from an earlier batch. 33 calls (99 words) go out as 33 records
  and 100 words.
- **Pair records, `0x00007f08`.** `__glMgrasSet` (`0xd9a1700`) is the same shape
  with two words per call, its own buffer and counter, and the force flag as its
  third data argument. The header is `0x00007f08`, then the pair count (words
  divided by two), the word count, and the inline block. Three calls (six
  words) go out as three pairs.
- Both go through the inline-block rule above, so a parser that follows the
  lengths stays aligned. What a record or pair means to the board is unknown.
- **Table loads.** The routine at `0xd94edf0` loads five tables, each as
  `0x00008204`, a size word, an inline block, then a zero word. The inline
  header is `0x80000214` (532 bytes: five descriptor words and 128 data words),
  `0x80000414` (1,044 bytes: five and 256) or `0x80000284` (644 bytes: five and
  156). The three `0x80000284` blocks follow the first two. The size word is the
  data word count divided by four (`0x20`, `0x40`, `0x27`). The descriptors are
  0, the data bytes, a destination word read from a table of values the library
  keeps (offsets 776, 780, 980, 984 and 988), 0, and the data word count. The
  128 data words are the floats `exp(-i / 16)` and the 256 are `exp(-i / 4096)`;
  the three blocks of 156 are copied unchanged from a 1,872-byte constant table
  in the library's data. The routine is `InitTables` in the 6.5.30 file's own
  debug names (`0xd94edf0` to `0xd94f03c`). The routine it calls in the loop is
  reached through the global offset table slot at gp-0x4548, which the dynamic
  symbol table binds to the libm import `exp`, and the two multipliers are the
  doubles 0.0625 and 0.000244140625 in the literal pool. The 6.5.0 `IP28GR432`
  client has the same routine at `0xda6e488` with the same constants and loop
  counts. What the destinations are is unknown.

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
| `glIndexub` | `0x10800201` | one byte, packed |
| `glIndexs` | `0x19000202` | short in bits 31:16, zero below |
| `glIndexd` | `0x12000208` | one double, as a 64-bit store |
| `glNormal3f` | `0x0000070c` | three floats |
| `glNormal3d`, `3i` | `0x12000718`, `0x1c00070c` | doubles, ints |
| `glNormal3s`, `3b` | `0x1d000706`, `0x1c800703` | shorts, bytes, packed |
| `glTexCoord2f` | `0x40000808` | two floats |
| `glTexCoord3i` | `0x3800080c` | three ints |
| `glTexCoord4f` | `0x00000810` | four floats |
| `glRasterPos2f`, `3f` | `0x40003808`, `0x2000380c` | floats |
| `glRasterPos2i`, `3i` | `0x58003808`, `0x3800380c` | ints |

The vertex header values match the ones [questions/README.md](../../questions/README.md)
lists for the same entry points, from the same client listing.

**Packed colour words.** Re-read in the `IP27GR532` client. The byte forms put
the components in one word with red in bits 31:24, green in 23:16, blue in 15:8
and alpha in 7:0. `__glMgrim_Color3ub` (`0xdac7b44`) sends `r << 24 | g << 16 |
b << 8`, low byte zero. `__glMgrim_Color4ub` (`0xdac7df8`) adds alpha in bits 7:0.
`__glMgrim_Color4ubv` (`0xdac7e38`) loads the four bytes as one big-endian word
and sends it unchanged, so byte 0 is red. The short form `__glMgrim_Color3s`
(`0xdac7aec`) sends `r << 16 | g` and then `b << 16`. **Established** as what the
routines store; how the board reads the word is unknown.

## Commands

Zero-payload commands are written as the header alone. Grades are inferred unless
the row says otherwise.

### Context setup and state

| Command | Header and payload |
| --- | --- |
| context opener | `0x00000600` |
| context configuration | `0x00008c04` and one int (a per-board configuration byte shifted right by one) |
| geometry-engine table load | `0x00008204` and a size word (`0x20`, `0x40` or `0x27`); then an inline block of five descriptor words and 128, 256 or 156 data words; then a zero word (see [batched blocks](#batched-register-blocks-and-table-loads)) |
| colour-index setup | `0x00000a04` and the visual's colour-index width in bits. `__glMgrInitCI` (`0xd94e830`, re-read) stores `0xa04` and then the context word at `+3252`, the same word it turns into the index mask `(1 << width) - 1` and the format routine compares with 5 and 9 |
| RGBA setup | `0x00000900` |
| buffer format words | `0x00009a08` and two words, written at context setup, not by `glRenderMode` (see [format words](#format-words-0x00009a08)) |
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
| `glPolygonStipple` upload | `0x00004e80` and 32 words, one per row of the pattern (128 bytes); the client's `__glMgrLoadPolygonStippleRAM`; re-read in the 6.5.0 `IP28GR432` client at `0x0da8bab0` to `0x0da8baf4`, which stores `0x4e80` then 32 words in eight groups of four; the 6.5.30 addresses `0xd96d9b0` to `0xd96d9ec` were not rechecked |
| `glPolygonMode` | `0x0000a808` and the two enumerants |
| `glMapGrid1f`, `glMapGrid2f`, `glClearAccum` | `0x0000ae10`, `0x0000af20`, `0x0000bb10` |
| `glClearColor` | `0x0000ba10` and four floats |
| `glClearDepth` | `0x0000bc04` and a 24-bit integer, the depth scaled by 16777215 |
| `glClearIndex` | `0x0000bd04` and a float |
| `glIndexMask` | `0x00003d04` and the mask |
| `glIglooInterfaceSGIX` | `0x00010200` turns on IRIS GL's colour-after-normal rule, `0x0000df00` and `0x0000de00` turn it off, `0x0000dd00` changes nothing; meaning inferred from the library's flag logic |
| `glFlush` | `0x00003600` |
| clear | `0x00001500` for colour, `0x00004c00` for stencil, `0x00004a00` for depth, one per selected bit |

### Format words, 0x00009a08

An earlier version of this page put `0x00009a08` in `glRenderMode`. The 6.5.30
client loads `0x9a08` at three places (`0xd950558`, `0xd9505c4`, `0xd9507d4`), all in
one routine that runs from `0xd9504d0` to about `0xd9508a0` (re-read). That
range lies after the end of `__glMgrim_RenderMode` (`0xd94f130`, 0x5f4 bytes),
whose name the disassembly carries over it. `RenderMode` stores no `0x9a08`.
The 6.5.30 file's own debug names give the routine as `InitFormatValues`
(`0xd9504d0` to `0xd9508a4`), the routine before it as `InitBuffers` (`0xd9502f0`
to `0xd9504c8`) and the function around the call as `MakeCurrentRead`
(`0xd950930` to `0xd95317c`). The routine is called once, at `0xd951dec`, right
after the call to `InitBuffers` at `0xd951ddc`. The 6.5.0 `IP28GR432` client has
an `InitFormatValues` (`0xda6fc1c`) with the same constants but one `0x9a08`
store (`0xda6fcbc`) where the 6.5.30 one has three. **Established** for the
stores, the words, the names and the caller. What the words mean on the board is
unknown.

The two payload words are computed, not literals. Each is the format code of
one buffer, built from a block of context fields: the first word from the block
at `+3380`, the second from the block at `+3220`. The blocks have the same shape
and the same rules:

- An RGB flag byte (`+3220` or `+3380`) set: a component size at `+3256` or
  `+3416` of 4, 5, 8 or 12 gives `0`, `0x100`, `0x2200` and `0x2300`. For 12 the
  code is `0x2400` instead when two further words (`+3260` and `+3268`, or `+3420`
  and `+3428`) are both zero. Any other size gives 0. The sizes read as the
  4-4-4-4, 5-5-5-1, 8-8-8-8 and 12-12-12-12 visuals (**inferred**); for 5 the plane
  masks the routine stores (`0x40007fff`, `0xbfff8000`) are the 5-5-5-1 masks
  [PP1.h](../../devices/pp1/PP1.h) records.
- Otherwise a colour-index flag byte (`+3221` or `+3381`) set: the index width
  (`+3252` or `+3412`) gives `0x600` below 5 bits, `0x500` for 5 to 8 and `0x400`
  from 9. For 5 to 8 bits the code ORs in `0x2000` when another word (`+3300` or
  `+3460`) is set, giving `0x2500`. The routine uses the same word to pick plane
  masks, so it probably means double buffering (**inferred**).
- Neither flag set: the word is 0.

After the stores the routine copies bits 10:8 and bit 13 of the second word into a
shadow word in the context. A single-buffered visual with an 8-bit colour index
on both sides therefore sends `0x9a08, 0x500, 0x500`. What the opcode does on the
board is unknown.

### Lighting, materials and further state

Read in the `IP27GR532` client (the immediate-mode `__glMgrim_` routines; the
display-list and `__glMgrlc_` twins store the same headers). Every header, and the
light, face and parameter words after it, is **established** as what those routines
store. The payload length is the header's low byte (see word framing), so a float
count here follows from it; that every payload word of a scalar parameter is a float
is **inferred**. A light number is the application's enumerant less `GL_LIGHT0`
(`0x4000`).

| Command | Header and payload | Routine |
| --- | --- | --- |
| `glLightfv`, `glLightiv` `GL_AMBIENT`, `GL_DIFFUSE`, `GL_SPECULAR` | `0x00001214`, `0x00001314`, `0x00001414`, the light number, four floats | `__glMgrim_Lightfv` (`0xd954680`), whose jump table runs in parameter order from `0x1200` |
| `GL_POSITION` | `0x00004f14`, the light number, four floats | same |
| `GL_SPOT_DIRECTION` | `0x00005010`, the light number, three floats | same |
| `GL_SPOT_EXPONENT`, `GL_SPOT_CUTOFF`, `GL_CONSTANT_ATTENUATION`, `GL_LINEAR_ATTENUATION`, `GL_QUADRATIC_ATTENUATION` | `0x00005108`, `0x00005208`, `0x00005308`, `0x00005408`, `0x00005508`, the light number, one float; `glLightf` and `glLighti` send the same words | `__glMgrim_Lightf` (`0xd954550`) |
| `GL_LIGHT_MODEL_AMBIENT` | `0x0000570c` and three floats | `__glMgrim_LightModelfv` |
| `GL_LIGHT_MODEL_LOCAL_VIEWER`, `GL_LIGHT_MODEL_TWO_SIDE` | `0x00005804`, `0x00005904`, one word | `__glMgrim_LightModelf` |
| `glMaterialfv`, `glMaterialf` and the int forms | `0x00001118`, the face (`0x404` front, `0x405` back, `0x408` both), the parameter enumerant, then four floats; a one-value parameter (`GL_SHININESS`) sends the value then three zeros | `__glMgrim_Materialf` (`0xd955230`) |
| `glColorMaterial` | `0x0000bf04` front, `0x0000c004` back, `0x0000c104` both, then the mode enumerant (`0x1200`, `0x1201`, `0x1202`, `0x1600`, `0x1602`) | `__glMgrim_ColorMaterial` (`0xd980cc0`) |
| `GL_COLOR_MATERIAL` enable, disable | `0x0000c200`, `0x0000c300` | `__glMgrim_Enable`, `__glMgrim_Disable` |
| `glGetLightfv`, `glGetMaterialfv` | `0x0000ef08` with the light number and parameter; `0x0000ee08` with the face and parameter. The client then reads the answer back, one float word at a time, through its return-mode routine (`__Mgr_ReturnMode`) | `__glMgrim_GetLightfv` (`0xd995e50`), `__glMgrim_GetMaterialfv` (`0xd9963f0`) |
| `glEdgeFlag` | `0x00000f00` for true, `0x00001000` for false, no payload | `__glMgrim_EdgeFlag` (`0xd97c120`) |
| `glPushMatrix`, `glPopMatrix` | `0x00002f00`, `0x00002e00` | `__glMgrim_PushMatrix`, `__glMgrim_PopMatrix` |
| `glOrtho`, `glFrustum` | `0x00003518`, `0x00003418` and six floats, the arguments narrowed from doubles, in argument order | `__glMgrim_Ortho` (`0xd97cb60`), `__glMgrim_Frustum` |
| `glRenderMode` | leaving feedback `0x0000c800` (only when a context flag at `+0x85d8` is set) and leaving selection `0x0000c900`, no payload; entering feedback `0x0000ca08` and entering selection `0x0000cb04`, with two words and one word that were not decoded; entering `GL_RENDER` stores no header | `__glMgrim_RenderMode` (`0xd94f130`, 0x5f4 bytes) |
| `glBitmap` | `0x00009420`, eight words; the fields were not decoded here | `__glMgrim_Bitmap`, `__glMgrRenderBitmap` |
| swap | `0x00003700`, sent by the kernel's swap scheduler to the command port after it writes `0x400` to `0x011040`; what the board does is unknown | `MgrasSchedSwapBuf` (6.5.30 `mgras.a`) |

**Matrix stack depth.** `__glMgrim_PushMatrix` (`0xd97ccc0`) and `PopMatrix` test a
state word (raising `GL_INVALID_OPERATION` when it is 1, probably inside
`glBegin`) and otherwise store their token (`0x2f00`, `0x2e00`). The client keeps no
depth count and raises no overflow or underflow error. It does report limits to
`glGet`. Context creation in the 6.5.30 `IP27GR532` client stores 32 at `+3788`,
64 at `+3784`, 16 at `+3780` and `+3776` and 2 at `+3792` to `+3800`
(`0xd9535a8` to `0xd9535f8`). `glGet` returns `+3788` for
`GL_MAX_MODELVIEW_STACK_DEPTH` (`0xd36`, at `0xd992da0`) and `+3792` for
`GL_MAX_PROJECTION_STACK_DEPTH` (`0xd38`, at `0xd9926f4`). The 6.5.0 `IP28GR432`
client stores the same values 296 bytes earlier (modelview 32 at `+3492`, name stack
64 at `+3488`, attribute stack 16 at `+3480`) and its `glGet` returns them for
`0xd36`, `0xd37` and `0xd35`. So IRIX tells applications the modelview stack is 32
deep and the projection stack 2. That is the library's own value (**established**
as software); the depth of the board's stack, and what happens past it, are
unknown.

No store of `0x0000ff04` is in the 6.5.30 client, in the 6.5.30 `mgras.a` kernel
members or in the 6.5.0 kernel objects held here, so a name for it (an earlier
tool labelled it "GE count") has no support in the shipped software: **unknown**,
routes tried as listed. `0x0000fd04`, `0x0000fb08` and `0x0000fa00` are the kernel's
geometry-engine memory write words, in [Kernel context image and
eviction](#kernel-context-image-and-eviction).

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
  `__Mgr_ReturnMode` (`0xd990d10`, re-read) does the first two steps and then
  calls the poll routine. It is called from more than a hundred sites.
- **Poll routine** (`0xd9917e0`, re-read). It reads flags `0x020010` and tests bit
  17. If the bit is clear it reads again up to four more times on a counter that
  starts at 5, then once more: six reads of `0x020010` with no call between them.
  If the bit is still clear it loops without bound, each pass calling an
  imported `sginap` (global offset table slot at gp-0x4528, bound by the dynamic
  symbol table) with argument 0, which gives up the processor, and reading the flags
  again. Once the bit is set it reads the answer at `0x028004`.
- **Attribute query, `0x0000a104`.** The routine at `0xd9917a0` (re-read) clears
  flag `0x20000` the same way, writes `0x0000a104` and one word (an index), and
  enters the poll routine. All thirteen call sites are in `__Mgr_GetCurrentAttrState`
  (`0xd9918a0`), which asks for index 4 to 7 for `GL_CURRENT_COLOR` (`0xb00`),
  index 4 for `GL_CURRENT_INDEX` (`0xb01`), 8 to 10 for `GL_CURRENT_NORMAL`
  (`0xb02`), 11 to 14 for `GL_CURRENT_TEXTURE_COORDS` (`0xb03`) and 15 for
  `GL_EDGE_FLAG` (`0xb43`). Each answer but the last is stored as a float; the
  edge flag is true when `answer & 0x01c00000` is nonzero. No call site uses an
  index below 4. This is what the client expects the board to answer
  (**inferred**: a software expectation); what the board answers for each index
  is unknown.
- **Answer halves.** The client reads an answer word as two signed halves, low and
  high, and sign-extends each one. With pixel texture enabled it makes two such
  queries, both with arguments 1 and 1, and uses the second answer to crop the input
  in Y. **Inferred**: client code in the library listed under
  [sources and grades](#sources-and-grades). The index values it uses are not
  settled here. See [two-engine boards](../../devices/mgras/two-re.md) for the crop arithmetic.
- **Fence.** Write `0x000e0400` and poll flags bit 16 until set.
- **DMA-read sync.** Write `0x000e0100`, then poll `0x020200` until `& 0x1eff`
  is zero.
- **Readback bracket.** `0x00009600` opens a pixel read and `0x00009700` closes it
  (inferred from their position). These are the readback tokens `TOKEN_READBACK_BEGIN` and `TOKEN_READBACK_END`
  in [devices/hq3/registers.toml](../../devices/hq3/registers.toml). `0x0000da00` (`TOKEN_TRANSFER_DONE`)
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

### Raster DMA read start

These are the orders the software uses to arm and kick a read or write through
the raster side. They show what the software does. They do not show which event
starts the transfer on the board.

**Established**, from the X server module `impactpc.so` (SHA-256 prefix
`e501c75dc120`), the read routine at `0x5e4a0544` to `0x5e4a05e8`:

- Read: the host kick `0xbf` (slot 3) is sent first, in one 64-bit packet. Then
  FILLMODE `0x01000000`, register 6 `0xa`, XFRCONTROL (`0x102`) `8`,
  GLINE_XSTARTF `1`, the IR_ALIAS execute `0x18`, and XFRCONTROL `9`. The
  routine polls the DMA status until its masked bits clear, then waits for HQ
  status bit 1, and later writes XFRCONTROL `0`.
- Write, same module: register 6 `0xc`, GLINE_XSTARTF `1`, IR_ALIAS `0x18`,
  XFRCONTROL `1`, the descriptor and page-list words, then the kick `0xb7` with
  the sync token `0x000e0400`. The server then writes `0x10000` to window offset
  `0x7000c` and polls `0x70008` for bit 16.
- Write, public X.Org IMPACT 0.2.0 driver: IR_ALIAS `0x18`, XFRCONTROL `1`, the
  page-list words, the kick `(p << 1) | 0xb1`, then the sync token.

Register 6 is the DMA type word. The public driver writes `0xc` for a
host-to-board transfer. The read paths above write `0xa`, and the listings
write `0xc` for writes. What the bits select is **unknown**.

**Inferred**, from those orders alone: the transfer runs once both the host kick
and the raster-side start have happened, whichever comes last. A read ends on
the XFRCONTROL `9` start, or on the GL client's register 5 write (see the
client's read above). A write ends on the kick.

**Unknown:** what XFRCONTROL `9` does when no kick came before it, or after a
transfer has already run. The status bits the software tests (`0x162f` for the
Indigo2 module's read, `0x1f` for done) have no stated meaning.

## Texture transfers

Texture memory moves two ways: the kernel saves and restores it in 16 KiB blocks
through host DMA, and the client reads it back and restores it through the
geometry engine. The words below are as the kernel and client routines send
them. They are graded **established** where the routine's code shows the word,
an exception to the page's rule that listing facts are inferred: each entry
says which routine it came from, so a reviewer can downgrade it. What the words
do to texture memory is in [two-engine boards](../../devices/mgras/two-re.md#texture-memory-on-two-engine-boards).

- **Base write.** The kernel writes `TOKEN_TEX_BASE_WRITE` (`0x0000eb04`) with
  the base in its low half, once with base 0 and then with the new base when it
  adds a texture space. The restore path uses the same routine. Which texture
  copy a base reaches is in the two-engine page.
- **Header decode.** Under the framing above, `0x0000e50c` is opcode `0xe5` with
  12 payload bytes, which are three words: a row count, a format word and
  `0x0000400d`. The `0x400d` is the third payload word, not a separate token.
- **Block save.** The kernel sends:
  1. register pairs for the texture state (TXSIZE `0xd6d6`, TXLOD 0,
     TXCLAMPSIZE `0x80000`, TL_MODE, TEXMODE1, TEXMODE2 and TXADDR 0);
  2. `0x0000d214` with `-1, 0x1001000, 0x1fc0ff, 0, 0`;
  3. `TOKEN_TEX_READ_SETUP` with the block's row count (the save record's
     `+0xc`), a format word `0x400000 | table[+0x23] << 4 | (+0x24 & 0xf)`, and
     `0x0000400d`;
  4. a DMA read kick on slot 2, byte `0xbd` (`(slot << 1) | 0xb9`);
  5. `0x000a0704` with 0, `0x000c0004` with `0xe00`, `0x0000da00` and
     `0x0000d300`.
  A save block is 64 words wide and 64 rows tall at 4 bytes a word, so 16 KiB.
  **Established.**
- **Block restore.** The kernel sends:
  1. register writes for TL_MODE, TL_WBUFFER, TEXRBUFFER, TEXMODE2, TEXMODE1,
     TL_ADDR 0, TL_MIPMAP (the block) and TL_SPEC `0xd60`;
  2. `0x0000d214` with `-1, 0x1400000, 0, 0, 3`;
  3. TL_S_SIZE 64, TL_T_SIZE (the record's rows), TL_S_LEFT 0, TL_T_BOTTOM 0,
     XFRMODE, and XFRSIZE and XFRCOUNTERS both `rows << 16 | 64`;
  4. `TOKEN_TEX_RESTORE_PREP` (`0x0000e300`);
  5. `TOKEN_TEX_WRITE_SETUP` (`0x0000d80c`), with the word count
     `(record +8) / 4 × rows` split into three 9-bit parts;
  6. clears HQ flag 16, then a DMA write kick on slot 2, byte `0xa5`
     (`(slot << 1) | 0xa1`);
  7. the fence `0x000e0400`, then a poll of flags bit 16;
  8. XFRMASKLOW `-1`, then `0x0000d300`.
  **Established.** Among the sixteen graphics members read, `0xe300` and `0xd80c`
  occur as immediates only in the kernel's texture member.
- **Client read-back.** Each pass runs `0x0000d214`, then asks the kernel for
  `0x0000e50c` with the pass's rows, a format word and `0x0000400d`, and a DMA
  read of those rows. After it the client sends `0x000a0704` with 0, then
  `0x000c0004` with `0xe00`, polls HQ status bit 1, and sends `0x0000da00` and
  `0x0000d300`. The pass limit per engine count is in the two-engine page.
  **Established.**
- **Client restore.** The client sends `TOKEN_CLIENT_GE_DMA_SETUP` (`0x00009d10`)
  and four words, then the descriptor words `0x00080010` (four words),
  `0x00080504`, `0x00080804`, `0x00080904`, `0x00080704` and `0x00080b04`, then
  kick `0xa3` with the fence `0x000e0400` and flag `0x10000`. The kick byte is
  slot 1 under the framing above, which is **inferred**. The `0x00080xxx` words
  are the same DMA descriptor bank as the table above.

## Kernel context image and eviction

The kernel keeps a 63-word image per GL context and writes it at each switch.
Facts below come from the kernel listing.

- **Allocation.** For a new context the kernel zeroes the entry, sets word 0 to
  `-1` (no slot in the geometry engine's memory), and ORs `0xc0000000` into word
  1 (`unix.IP27` at `0xc0000000003f38c8` to `0xc0000000003f395c`). `CTX_W1` in
  [devices/hq3/registers.toml](../../devices/hq3/registers.toml) names bits 31 and 30 as first load and
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
  [two-engine boards](../../devices/mgras/two-re.md) and the open question there.
- **Flags bit 20.** The kernel's buffer-swap path reads and clears it, and what
  raises it is open in [questions/README.md](../../questions/README.md). The client
  sets it itself after `glFlush`. Both can be true; the client's write does not
  show what else raises it.
- **Address `0x028004`.** It is the query answer here and the GE revision read
  after a download in [devices/mgras/registers.toml](../../devices/mgras/registers.toml). Software reads it
  for two purposes; which answer the board gives for each index is unknown.
- **Bank words.** `CTX_BANK_WORD_FIRST` and `CTX_BANK_WORD_SECOND` (`0x10`,
  `0x11`) name the image words the kernel reloads at each switch. This page does
  not add to them.
- **Library object.** The client facts are from `libGLcore.so` for `IP27GR532`.
  The tools' own copy is `IP28GR432`, a different build. Whether the two differ
  in these routines is not checked.

## Open questions

- The board's answer to each query index. The client's use of the `0x0000a104`
  indices is above; settling the board's side takes the answer word read after
  each query on a board.
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
- Whether client revisions other than the IP27GR532 build listed above send the
  same `0x4e80` polygon-stipple upload. The listing shows what that build sends,
  not what the board does with the 32 words.
