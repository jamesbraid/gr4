# gr4

## Start here

- To use the definitions in code, go to [generated/c](generated/c/) and [generated/rust](generated/rust/). Python, JSON and XML forms are in [generated/](generated/).
- To understand one unit, open its directory under [devices/](devices/): a README on how the hardware works, the hand-edited `registers.toml`, the generated `registers.md` table and the commented C header for the chip.
- How IRIX drives the hardware (kernel, OpenGL client, X driver, IrisGL, microcode) is under [software/](software/). The routine readings are in the `readings/` directory of each subject.
- What is covered, and how well, is the summary table [generated/inventory/summary.tsv](generated/inventory/summary.tsv). Open questions, each with what would settle it, are in [questions/](questions/README.md). The published documents the notes cite are indexed in [references/documents/](references/documents/INDEX.md).

Reverse-engineering notes for the SGI Impact Graphics (GR4 / MGRAS) subsystem of the Indigo2 and Octane, read from the shipped IRIX binaries and the published documents. [AGENTS.md](AGENTS.md) has the scope, the evidence rules and the finish line. The IRIX files themselves are not tracked; [references/irix-files.md](references/irix-files.md) says which to copy into the ignored `root/` directory.

## Documentation index

One line per tracked document. Descriptions come from each document's own
opening heading or first sentence.

### Top level and references

- [AGENTS.md](AGENTS.md): Reverse-engineering project to document the SGI Impact Graphics (GR4/MGRAS) subsystem.
- [references/irix-files.md](references/irix-files.md): Checklist of proprietary IRIX 6.5.0 binaries needed for MGRAS reverse engineering.
- [questions/README.md](questions/README.md): Ledger of header unknowns and what shipped software settles.

### Devices (`devices/`)

- [devices/mgras/board-facts.md](devices/mgras/board-facts.md): Facts from published SGI documents the headers did not yet carry.
- [devices/mgras/raster-reference.md](devices/mgras/raster-reference.md): The raster arithmetic of the IMPACT pipeline stage by stage (setup, edges, interpolation, depth, stencil, blend, fog, texture, lines, dither), with grades and what would settle each unknown.
- [devices/mgras/ide-raster-tests.md](devices/mgras/ide-raster-tests.md): What the shipped Octane diagnostic's raster tests store, compare and settle, test by test, with the table layout, stored sums and fits to the stored images.
- [devices/mgras/antialiasing.md](devices/mgras/antialiasing.md): What the published Octane description says the board does for antialiased points and lines, with grades and open questions.
- [devices/mgras/board-identity.md](devices/mgras/board-identity.md): How IRIX reads the IMPACT board identity words, the product and revision codes, and what captured boards read back.
- [devices/mgras/prom-handoff.md](devices/mgras/prom-handoff.md): What the Origin's I/O PROM and the Octane's PROM do to an IMPACT board before the operating system starts, the state the text console leaves, and what changes with console=d.
- [devices/mgras/two-re.md](devices/mgras/two-re.md): How the two-raster-engine boards split the screen, select a pixel processor and reach their two geometry engines, with grades and open questions.
- [devices/mgras/visual-buffers.md](devices/mgras/visual-buffers.md): The published Octane frame buffer building blocks, the 1280 by 1024 visuals per model and the stereo modes.
- [devices/mgras/video-sync.md](devices/mgras/video-sync.md): What the IMPACT graphics side offers for swap and sync, external status, video into the framebuffer, and what the shipped diagnostic checks, with a list of what a model must do to pass.
- [devices/te1/texture-path.md](devices/te1/texture-path.md): The texture engine and texture RAM: block sizes, the texel formats the client maps to, the filter, wrap and environment encodings, the save and restore words and the open questions, with grades.
- [devices/re4/2d-transactions.md](devices/re4/2d-transactions.md): The write sequences the public OpenBSD driver uses for RE4 rectangle fills and console glyph rows, with grades and open questions.
- [devices/ge11/program-format.md](devices/ge11/program-format.md): What the shipped GE11 microcode images show about the 72-bit instruction word, with grades and the conflicts with GE11.h.
- [devices/ge11/geometry-tokens.md](devices/ge11/geometry-tokens.md): Each GE11 protocol token from the header, its value and what the repository states about its use.

### Software (`software/`)

- [software/kernel/display-timing.md](software/kernel/display-timing.md): How the IRIX kernel programs MGRAS video timing, the PLL and VC3 clock arithmetic, and the stock 1280 by 1024 retrace rate.
- [software/kernel/hq4-host-interface.md](software/kernel/hq4-host-interface.md): The HQ4 host interface as the IRIX software drives it: the interrupt block and sources, the context-switch handshake, the swap command, the status waits, the FIFO thresholds and the Octane page-list layout, with grades and open questions.
- [software/kernel/hq4-image-write.md](software/kernel/hq4-image-write.md): How a host pushes pixels into an IMPACT board's raster engine: the page-list DMA sequence on an Origin (IP27) host against an Octane (IP30) host, and the inline writes that need no DMA and no geometry microcode.
- [software/kernel/ioctl-requests.md](software/kernel/ioctl-requests.md): Each ioctl request number from the graphics device driver, as the code sends it, with the sender and what it means.
- [software/opengl/client-selection-feedback.md](software/opengl/client-selection-feedback.md): How the IRIX GL client runs selection mode, the command forms it writes and how it reads hit records back.
- [software/opengl/gl-commands.md](software/opengl/gl-commands.md): The word framing and command forms the IRIX GL client writes to the command port, the status and flag offsets it polls, and the kernel's context image and clip words.
- [software/opengl/pixel-texture.md](software/opengl/pixel-texture.md): The words the IRIX GL client writes for pixel texture (record 0x18a and its bits), its colour-table upload and the four-dimensional image path, with grades and open questions.
- [software/opengl/tram-corruption-analysis.md](software/opengl/tram-corruption-analysis.md): TRAM page desynchronization and texture corruption analysis for libGLcore.

### Published documents (`references/documents/`)

- [references/documents/octane-technical-report.pdf](references/documents/octane-technical-report.pdf): Octane technical report, stored unmodified; source and checksum in the sources index.
- [references/documents/INDEX.md](references/documents/INDEX.md): Index of stored published documents with SHA-256 and source URLs.

Not listed one by one:

- `references/documents/`: 73 more stored documents (44 PDF, 22 HTML, 7 other files) and their `SHA256SUMS`. Use [references/documents/INDEX.md](references/documents/INDEX.md).
- `generated/inventory/*.tsv`: generated extraction tables, not documents.
- `*/readings/`: the routine readings, one page per binary.

## Hardware definitions

- [devices/](devices/): the hardware facts, one `registers.toml` per unit. Each register, field, word and constant has a grade and a source. Edit facts here.
- [generated/](generated/): generated from the `registers.toml` files and committed; never edit by hand. Each unit's reference page, `registers.md`, sits next to its source in [devices/](devices/).

## Other

- [tools/ghidra/README.md](tools/ghidra/README.md): Ghidra tooling; everything that runs inside Ghidra lives here.
