# MGRAS two-engine boards

How the two-raster-engine boards (SSI and MXI) split the screen between their
engines, how software picks one pixel processor or one engine, and how the two
geometry engines are loaded and checked. The register addresses and fields are
in [defs/mgras.toml](../defs/mgras.toml); this page holds the reasoning and the
open questions.

## Sources and grades

- The OCTANE Graphics Architecture technical report, stored unmodified as
  [octane-technical-report.pdf](octane-technical-report.pdf) (SHA-256
  `248e73ee94f53c7e49e548503180b4f361d3ed19c4183cfcaa42edddc812aff0`). Cited by
  its section number and printed page.
- The IRIX 6.5.30 IP27 kernel graphics archive `mgras.a` (SHA-256
  `c3b1faac9a98280b117cd9f054c4c737d1f9844d697b8ed17bfd7e70b8e7134f`), its
  initialisation, retrace and colour-control members, read as disassembly.
- The graphics module of the IRIX 6.5.30 X server, `impactsr.so` (SHA-256
  `726dc1e25b711df84ff67ee9139dc4269551ec41bfe5191e34e2626882602d29`), read as
  disassembly, for which registers it writes.
- The Octane IDE graphics diagnostic, `ide.IP30` 6.5.30 (SHA-256
  `19d7a194cb417330475df9a187379404d413c72433cfc97fc9e238f0fe170d69`), read as
  disassembly.
- Register names from the public OpenBSD `impact(4)` driver. Not checked against
  that file when this page was written.

Grades used here:

- **Established**: the report states it, or a shipped binary's code writes or
  reads the value. That is a fact about what the software does, not a
  measurement of the silicon.
- **Inferred**: what the hardware does with a value, and what the diagnostic
  expects of the hardware. A diagnostic's checks are a software expectation.
- **Unknown**: nothing held settles it. The last section says what would.

## Counts

SSI and MXI carry two geometry engines (GE11), two raster engines (RE4), four
pixel processors (PP1) and 24 MB of pixel memory. The SI board, with one of
each engine, has two pixel processors. Table 4.1 of the report. **Established.**

## Which engine draws which rows

- The report says that on SSI one raster engine processes even horizontal
  lines and the other odd ones. On SI one engine does both. Section 4.3,
  Figure 4.7 text, p. 4-12. **Established** as the report's statement.
- The report also says the second raster engine handles alternate spans of the
  frame buffer, and that each engine walks its spans in the negative Y
  direction. Section 4.2.3, pp. 4-7 and 4-8. **Established** as the report's
  statement.
- The IDE diagnostic places each pixel with these rules, where `n` is the
  raster engine count and `r` is the row divided by `n`. It draws through the
  normal pixel path and then reads back the word the rules name, so a board
  that split pixels another way would fail its own tests. **Inferred**: a
  diagnostic's expectation, not a measurement.
  - Raster engine: row modulo `n`, so engine 0 takes row 0.
  - Span: one full row of the diagnostic's 1344 by 1024 framebuffer, seven
    192-pixel tiles across.
  - Pixel processor within the engine: the low bit of `x`.
  - RDRAM device within the pixel processor: `((x >> 2) mod 3 + r mod 3) mod 3`.
  - RDRAM word: the pixel processor number in the top bits, then the device
    plus 4, then the tile, then `r mod 16`, then the column, where the column is
    `2 * ((x mod 192) / 12) + ((x >> 1) & 1)`. The diagnostic also reads the
    word after each pixel's address. What one address unit holds is unknown.

## Selecting a pixel processor

The register at `PP1_SELECT_ADDR` picks which pixel processor the XMAP registers
reach. The public driver calls it PP1SELECT. XMAP registers are reached through
the index byte at `XMAP_INDEX_ADDR` and the data registers it selects.

| Value | Meaning | Grade |
| --- | --- | --- |
| 0, 2, 4, 6 | One pixel processor. Bit 2 is the raster engine number, bit 1 the pixel processor within it: 0 is engine 0's first, 2 engine 0's second, 4 engine 1's first, 6 engine 1's second. | Established as the encoding the kernel and the diagnostic compute. How the selected chip responds is inferred. |
| 1 | Every pixel processor. | Established that the kernel writes 1 before writes every pixel processor must take, and leaves 1 when it finishes. That the hardware then broadcasts is inferred. |
| Bits 7:3 | Not seen in use. | Unknown. The kernel, the diagnostic and the OpenBSD driver never set them. |

- The X server never writes this register. Its XMAP writes therefore reach
  whatever the kernel left selected, which is 1 after every kernel path.
  **Established** from the server's register list and the kernel's exits.
- Per pixel processor, as software sees it: the XMAP index byte and every
  register it reaches. The kernel reads the last of those back under each
  single-chip selection and waits until that chip's bits 3:0 equal its bits 11:8.
  **Inferred** as a software expectation.
- Shared, as software sees it: the host interface registers, the command FIFO,
  the video controller, the colour maps, the DACs and the display control bus
  are one register set each. How many physical chips sit behind each is unknown.
- In the XMAP register reached with index 0, bits 21:20 carry the raster engine
  count less one. The kernel writes this to every pixel processor when it
  initialises the board. That the pixel processor uses the field to learn it
  shares the screen is inferred. See `PP1_CONFIG` in defs.

## Scanout and window select bits

What the kernel and the X server do, as software:

- The kernel's display-mode routine takes a window ID below 40 and a mode word.
  IDs 0 to 31 write the word, with bit 30 cleared, to the main mode file at
  `WINDOW_MODE_MAIN_ADDR`. IDs 32 to 39 write to the overlay file at
  `WINDOW_MODE_OVERLAY_ADDR`. Both use the index byte `(ID & 0x1f) << 2`.
  **Established.**
- Bit 30 is not stored in the mode file. It sets or clears the window's bit in a
  software mask, and the swap task writes that mask to `WINDOW_SELECT_ADDR`
  after a retrace wait. Overlay IDs use index 4. **Established.**
- A buffer swap in the X server sets or clears bit 30 and sends the word. The
  GL client never swaps; it names colour buffers only. **Established.**
- Neither the kernel's display-mode path nor the X server's swap path names a
  pixel bank or a colour slot. **Established.**

What a select bit shows is **unknown** for every visual. The report's visual
tables give the buffer counts, and [mgras-visual-buffers.md](mgras-visual-buffers.md)
covers them. Settling the slot mapping needs a real board, with a known pattern
written to each slot and the displayed image read back.

## Raster engine select and RDRAM access

Software reaches one raster engine through the raster register at
`RSS_RE_SELECT_REG` (0x112). The diagnostic writes it through the programmed I/O
window at `RSS_RE_SELECT_PIO_ADDR`, and does not use the pixel processor select
or an address bit to choose an engine.

- The diagnostic selects engine `k` by writing `k`, then reads the RDRAM through
  `RDRAM_ADDR_PORT_ADDR` (address), `RDRAM_DATA_PORT_ADDR` (data) and
  `RDRAM_BUFFER_PORT_ADDR` (buffer pointer). The pixel processor is address bit
  28. **Inferred** from the diagnostic.
- After selecting engine `k` it requires the status word `RE4_STATUS` to show
  `k` in bits 3:2 and the engine count less one in bits 1:0. **Inferred.** The
  diagnostic also writes 4 to the select register on several paths. What bit 2
  means is unknown.
- At initialisation the kernel selects engine 0 and then engine 1 through the
  select register, in two loops over the engine count. Under each it reads the
  RDRAM data port and tests bit 0 and bits 31:16. It leaves 4 selected afterwards.
  **Established** as the kernel's code. What each engine returns is unknown.
- The client and the X server never select an engine. Their pixel read-back
  comes back as one image, assembled from both engines' rows. How the board
  assembles it is unknown. Row interleaving is the natural reading.
  **Inferred.**

## Geometry engines

- The kernel loads engine 0 through `GE0_UPLOAD_PORT_A` and `GE0_UPLOAD_PORT_B`,
  and engine 1 through `GE1_UPLOAD_PORT_A` and `GE1_UPLOAD_PORT_B`. It sets the
  geometry engine select field of `HQ_GE_SELECT` to 2 for engine 0 and 3 for
  engine 1, and restores the old word afterwards. A one-engine board uses the
  first pair alone. **Established.**
- It verifies each engine through the shared read-back ports
  `GE_READBACK_PORT_A` and `GE_READBACK_PORT_B`, after rewinding that engine's
  control port. A failed check makes the kernel record geometry engine revision
  0xff. **Established** as the kernel's code.
- After the download, host software reaches both engines through one command
  FIFO and one DMA path. No kernel, X server or GL client code addresses one
  engine separately. **Established** as the software view.
- The report says the host interface balances load across the geometry engines
  by how full each engine's command FIFO is. Section 4.2.1, p. 4-7.
  **Established** as the report's statement. The balancing rule, the ordering
  and the completion behaviour are unknown.
- Which engine answers the revision read at the GE revision words in
  [defs/mgras.toml](../defs/mgras.toml) is unknown.

## Unknowns

| Question | What would settle it |
| --- | --- |
| Which pixel processor answers an XMAP read while every pixel processor is selected | A read from a real two-engine board after writing 1, or a diagnostic routine that does so, read from its disassembly |
| What selecting a pixel processor the board lacks does (on a one-engine board) | The same test on a one-engine board |
| The reset value of the pixel processor select register | A read before any write on real hardware |
| Bits 7:3 of the pixel processor select register | Hardware, or a diagnostic routine that sets them |
| Which raster registers are per engine, other than the RDRAM data port | A bus trace of a real two-engine board. The RDRAM data port is per engine as IRIX uses it |
| What each engine returns from the RDRAM data port | The diagnostic's read with an engine selected, or a bus trace |
| Bit 2 of the raster select register, and bits 11:3 of the value the kernel writes there | The same sources. The X server writes 0xcac there, which is not explained |
| Which colour slot a select bit shows, for each visual | A real board's scanout of known contents in each slot |
| How the two engines' rows are assembled on read-back | A read-back from a real board |
| The load-balancing rule and completion order of the two geometry engines | A bus trace of a real board |
| Which geometry engine answers the revision read | A real board |
| Whether the command FIFO is at the address the kernel's packet writes use (0x120400) or at the normal FIFO address of the public driver (0x020400, in [defs/mgras.toml](../defs/mgras.toml)) | Which address the kernel's command writes reach on a board, checked against the driver's packet layout |

## Not on this page

- Board identity words and product codes:
  [mgras-board-identity.md](mgras-board-identity.md).
- Visual buffer tables and stereo modes:
  [mgras-visual-buffers.md](mgras-visual-buffers.md).
- The timing table set for two-engine boards: [OPEN_QUESTIONS.md](OPEN_QUESTIONS.md).
