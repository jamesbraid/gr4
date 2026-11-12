# Documentation index

One line per tracked document. Descriptions come from each document's own
opening heading or first sentence.

## Top level

- [AGENTS.md](AGENTS.md): Reverse-engineering project to document the SGI Impact Graphics (GR4/MGRAS) subsystem.
- [IRIX_FILES.md](IRIX_FILES.md): Checklist of proprietary IRIX 6.5.0 binaries needed for MGRAS reverse engineering.

## docs/

- [docs/IMPACT_BOARD_FACTS.md](docs/IMPACT_BOARD_FACTS.md): Facts from published SGI documents the headers did not yet carry.
- [docs/mgras-board-identity.md](docs/mgras-board-identity.md): How IRIX reads the IMPACT board identity words, the product and revision codes, and what captured boards read back.
- [docs/mgras-client-selection-feedback.md](docs/mgras-client-selection-feedback.md): How the IRIX GL client runs selection mode, the command forms it writes and how it reads hit records back.
- [docs/mgras-display-timing.md](docs/mgras-display-timing.md): How the IRIX kernel programs MGRAS video timing, the PLL and VC3 clock arithmetic, and the stock 1280 by 1024 retrace rate.
- [docs/mgras-gl-commands.md](docs/mgras-gl-commands.md): The word framing and command forms the IRIX GL client writes to the command port, the status and flag offsets it polls, and the kernel's context image and clip words.
- [docs/mgras-hq4.md](docs/mgras-hq4.md): The HQ4 host interface as the IRIX software drives it: the interrupt block and sources, the context-switch handshake, the swap command, the status waits, the FIFO thresholds and the Octane page-list layout, with grades and open questions.
- [docs/mgras-pixel-texture.md](docs/mgras-pixel-texture.md): The words the IRIX GL client writes for pixel texture (record 0x18a and its bits), its colour-table upload and the four-dimensional image path, with grades and open questions.
- [docs/mgras-two-re.md](docs/mgras-two-re.md): How the two-raster-engine boards split the screen, select a pixel processor and reach their two geometry engines, with grades and open questions.
- [docs/mgras-visual-buffers.md](docs/mgras-visual-buffers.md): The published Octane frame buffer building blocks, the 1280 by 1024 visuals per model and the stereo modes.
- [docs/re4-2d-transactions.md](docs/re4-2d-transactions.md): The write sequences the public OpenBSD driver uses for RE4 rectangle fills and console glyph rows, with grades and open questions.
- [docs/OPEN_QUESTIONS.md](docs/OPEN_QUESTIONS.md): Ledger of header unknowns and what shipped software settles.
- [docs/ge11-program-format.md](docs/ge11-program-format.md): What the shipped GE11 microcode images show about the 72-bit instruction word, with grades and the conflicts with GE11.h.
- [docs/TRAM_CORRUPTION_ANALYSIS.md](docs/TRAM_CORRUPTION_ANALYSIS.md): TRAM page desynchronization and texture corruption analysis for libGLcore.
- [docs/octane-technical-report.pdf](docs/octane-technical-report.pdf): Octane technical report, stored unmodified; source and checksum in the sources index.
- [docs/sources/INDEX.md](docs/sources/INDEX.md): Index of stored published documents with SHA-256 and source URLs.

Not listed one by one:

- `docs/sources/`: 73 more stored documents (44 PDF, 22 HTML, 7 other files) and their `SHA256SUMS`. Use [docs/sources/INDEX.md](docs/sources/INDEX.md).
- `docs/inventory/*.tsv`: generated extraction tables, not documents.

## Hardware definitions

- [defs/](defs/): the hardware facts, one TOML file per unit. Each register, field, word and constant has a grade and a source. Edit facts here.
- [gen/](gen/): generated from `defs/` and committed; never edit by hand. [gen/docs/](gen/docs/) has the reference page for each unit.
- `*_DECODE.h` at the top level: forwarding headers that include `gen/c/`.

## Other

- [ghidra/README.md](ghidra/README.md): Ghidra tooling; everything that runs inside Ghidra lives here.
