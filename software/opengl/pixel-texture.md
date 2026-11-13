# MGRAS pixel texture state

The words the IRIX OpenGL client writes when pixel texture is on, plus what its
code says about the colour-table upload and the fourth texture coordinate. This
page covers what the client sends. It does not say what the board does with it.
Nothing here is checked on a physical board, and no independent review has been
done yet.

Related pages: [GL command stream](gl-commands.md) (word framing and texture
transfers), [IMPACT board facts](../../devices/mgras/board-facts.md), facts 29 to 32 (the
published pixel texture text), and [devices/re4/registers.toml](../../devices/re4/registers.toml) (the
`texmode1` field).

## Sources and grades

- **Client library.** The IRIX 6.5.30 public `libGLcore.so` for `IP27GR532`,
  SHA-256 `626d6d94fb5ee207139a1dc234bfc0b94e9c9d0d6d0441b43e4c1c9df2fc9d0d`.
  Read as machine code at the addresses named below. This is a different build
  from the 6.5.0 `IP28GR432` library the rest of the repository reads, so the
  addresses do not carry over.
- **Re-read status.** The `IP27GR532` library is not in this checkout, so the
  addresses below could not be rechecked. The pixel texture control word logic was
  re-read in the 6.5.0 `IP28GR432` library (`mgras_pixel.s`, the draw routine
  at `0x0da87dc8` to `0x0da88250`): the flag word at offset `0x58` of the bound
  texture object, bit 0 set before the send and cleared after it (`and` with `-2`),
  bit 1 set on a condition, bit 22 set from the alpha setting, the Q filter test
  against `0x8185` and `0x8186` with mask `0xfff3ffff` and OR `0x00040000`, and
  register number `0x18a` passed to the record writer. Those facts hold in both
  builds. Statements about the bind routine, the record writer's buffering, the
  colour table sender and the 4D image path were not re-read and are graded
  inferred until they are.
- **Public API text.** The Khronos registry texts for `SGIX_pixel_texture` and
  `SGIX_impact_pixel_texture` are stored in `references/documents/opengl-extensions/`.
  They name the modes and enum values. They are not hardware sources.
  The Khronos text for `SGIS_texture4D` is not stored here.
- **Grades.** A word that the client's code emits is **established** as code,
  the same grade the [texture transfers section](gl-commands.md#texture-transfers)
  gives words a routine shows. What a bit means is **inferred** or **unknown**.
  A listing shows what software sends, not what the board does with it.

## Pixel texture control record

The client emits register record `0x18a` each time it changes the pixel texture
control word. Each record carries a register number, a value and a third word.
The third word comes from a client lookup table. Its values are not decoded here.
The record is framed by the client's existing `0x7c08` header and an inline data
block. Whether `0x7c` is the raster triple command that
[devices/hq3/registers.toml](../../devices/hq3/registers.toml) names is not shown.

The control word is the object flag word at offset `0x58` of the bound texture
object. The client changes it in these places:

- **Enable and clear bracket.** Before an enabled pixel send, the client sets bit
  0 and emits `0x18a` with the word (code at `0xd96a004` to `0xd96a068`). After
  the send, it clears bit 0 and emits `0x18a` again (code at `0xd96a1ec` to
  `0xd96a210`). A successful enabled draw is bracketed by a set record and a
  clear record. The code is established (re-read in `IP28GR432`). Calling bit 0 the pixel texture enable
  is **inferred** from that bracket.
- **Alpha bit.** When the client's alpha setting is nonzero (the setting the
  least-significant alpha token produces), the DrawPixels path sets bit 22 (code
  at `0xd96a03c`). When the setting is zero, the path leaves the word as it was.
  The code shows no path that clears bit 22 in the draw routine.
  Whether another path clears it is not shown. The bit's meaning is **inferred**.
- **Q filter bits.** The client reads the texture's Q filter before the send
  (code at `0xd96a044`). Round and floor both clear bits 18 and 19 and then set
  bit 18, with mask `0xfff3ffff` and OR `0x00040000` (code at `0xd96a048` and
  `0xd96a050`). Ceiling skips that update. The code is established (re-read in `IP28GR432`). Why round
  and floor give the same bits, and what ceiling leaves in bits 18 and 19, is
  **unknown**.
- **Bit 1.** Depending on client state, the draw path can set bit 1 (code at
  `0xd96a024`). The alpha setter also accepts the reserved values `0x8187` and
  `0x8188` and updates the field that drives that bit. Bit 1's meaning is
  **unknown**.
- **Bind routine (inferred, not re-read).** The general texture-binding routine reads the same word and
  emits `0x18a` (code at `0xd99e300` and `0xd99e304`). The record is written
  outside the pixel path too. Which of the word's bits have pixel texture
  meanings is **unknown**.

The record writer stores the register number, the value and the third word in a
client buffer, and the flush sends them with the header above (code at
`0xd9a15f0`). No indirect object alias is needed to link the flag word to the
emitted record. Inferred: this part was not re-read.

The chip that receives record `0x18a` is not known. The same low 12 bits name
registers in more than one block: `texmode1` is `0xe111` in the RE4 block, and
`tl_mode` is `0xf1a1` in the TE1 block. So no `devices/` entry is made for `0x18a`.

## Colour table upload

Everything in this section is **inferred**: it was not re-read from a binary
reachable in this checkout.

The client's sender for a colour table (code at `0xd9a53b4` to `0xd9a54fc`)
works like this:

- It sends a selector word first, then the red, green and blue planes, one
  after another. The selector's value is not read from the code here.
- For each plane, an input entry becomes `floor(256 / width)` byte writes. After
  the client's format conversion, input entries are three bytes apart. At width
  256, each plane gets one byte per entry. A 256-entry table is then 768 bytes.
- The path writes no fourth plane, so it carries no alpha table data. Whether an
  RGBA table's alpha lookup works is **unknown**.
- Other selector values, partial uploads and widths that do not divide 256 are
  not qualified.

The sender clears `texmode1` bits 15 to 12 before it chooses the table format
(code at `0xd99ef00`). Its RGB-compatible path then writes `0xe` in that field
(code at `0xd99ef6c` and the send at `0xd99efbc`). That is the only field value
read from the client. The field is in [devices/re4/registers.toml](../../devices/re4/registers.toml). Its
other values are **unknown**.

## Four-dimensional images

The target values and the callback behaviour below are **inferred**, not re-read.
The `glTexImage4DSGIS` entry point exists in the 6.5.0 `IP28GR432` library
(`g_api.s`), but its upload path was not followed.

- The client accepts the target values `0x8134` and `0x8135` in
  `TexImage4DSGIS`. It keeps the depth and the extent argument apart in the image
  description. Both go through indirect callbacks in the upload path. Those
  callbacks did not resolve to emitted record fields. No packet field for the
  extent is known, so its encoding for the board is **unknown**.
- The Khronos text marks the 4D extension as incomplete and does not write its
  rasterization rule. The 4D filtering rule is therefore **unknown**.
- In a pixel send, the pixel's alpha is the public Q input. The client emits the
  control record around that send. How the selected Q value reaches a separate
  emitted field is not established. That is **unknown**.

## Open questions

- The meaning of bits 0, 1, 18, 19 and 22 of record `0x18a` on the board.
  Settling it needs a register manual or board tests of enabled and cleared
  draws with each alpha token and Q filter.
- The chip that receives record `0x18a`. See above.
- Why round and floor set the same bits, and the ceiling case.
- The encoding of the 4D extent, the physical layout of a volume texture in
  texture RAM, and the storage limit per texture. No source here gives them.
- The alpha lookup of an RGBA colour table, and the meaning of the other
  `texmode1` colour table values.
