# Documentation index

One line per tracked document. Descriptions come from each document's own
opening heading or first sentence.

## Top level

- [AGENTS.md](AGENTS.md): Reverse-engineering project to document the SGI Impact Graphics (GR4/MGRAS) subsystem.
- [IRIX_FILES.md](IRIX_FILES.md): Checklist of proprietary IRIX 6.5.0 binaries needed for MGRAS reverse engineering.

## docs/

- [docs/IMPACT_BOARD_FACTS.md](docs/IMPACT_BOARD_FACTS.md): Facts from published SGI documents the headers did not yet carry.
- [docs/OPEN_QUESTIONS.md](docs/OPEN_QUESTIONS.md): Ledger of header unknowns and what shipped software settles.
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
