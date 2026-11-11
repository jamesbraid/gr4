# SGI Impact Graphics (GR4 / MGRAS) Reverse Engineering Project

This project reverse-engineers the historic **SGI Impact Graphics** (internal architecture name **MGRAS** / **Mardi Gras**, hardware designation **GR4**) subsystem.
The goal is documenting the architecture for the vintage SGI enthusiast and FPGA recreation communities.

---

## 1. Historical & Architectural Significance

Introduced in 1995 for the SGI Indigo2 (and later Octane), Impact Graphics was a landmark milestone in workstation 3D computer graphics:
- **First Desktop Hardware Texture Mapping**: Provided real-time trilinear mipmapped 2D and 3D texture mapping via dedicated Texture Engine (TE1) and Rambus Texture RAM (TRAM).
- **High-Performance Geometry Pipeline**: 1 or 2 Geometry Engine ASICs (GE11) delivering 480 MFLOPS per GE11, 960 for two (published peak, established: product guide, `docs/IMPACT_BOARD_FACTS.md` fact 1) of dedicated floating-point coordinate transformations, lighting, and clipping.
- **Rambus RDRAM Framebuffer Architecture**: Interleaved Rambus DRAM accessed via two Pixel Processors (PP1) per Raster Engine: two on High IMPACT, four on Maximum IMPACT (established count, product guide; the per-RE split is inferred, fact 1 and the contradictions list), achieving unprecedented fill rates and bandwidth.
- **Complete Native OpenGL 1.1 Implementation**: The flagship hardware target for Silicon Graphics' advanced OpenGL capabilities.
- **Dual Display Subsystems**: High-resolution video timings driven by the VC3 Video Controller and true-color / multi-layer compositing via XMAP and CMAP RAMDACs.

Subsystem Configurations:
| Model | Board ID | GE11 Count | RE4 Count | TRAM Size | Color Depth | Typical Host |
|---|---|---|---|---|---|---|
| **Solid Impact (SI / SIO)** | GR4, product field 1 | 1 GE11 | 1 RE4 | None | 24-bit RGB + Z | Indigo2 / Octane |
| **High Impact (HI / HIO)** | GR4 | 1 GE11 | 1 RE4 | 1 MB or 4 MB | 24-bit RGB + Z + Tex | Indigo2 / Octane |
| **Maximum Impact (MaxI / EMX)** | GR4 | 2 GE11 | 2 RE4 (dual RSS) | 1 TRAM; 4 with the option | 24-bit RGB + Z + Tex | Indigo2 / Octane |

Board ID grades. Solid Impact is told from High and Maximum by the product field (bits 6:5 of the second board-version byte) reading 1: established, read in the board-information routine of the 6.5.0 graphics kernel object (sha256 `8369b6d4a250d395123793a8dd339bfa0f158caa32cbf218fdb76a904725c9d7`, `mgras_init.o`), which takes a one-engine, no-second-board path for that value. An earlier label "GR4 rev <3" for Solid is withdrawn: `MGRAS.h` records the below-3 test as the colormap revision, a voltage-margin rule for early pixel processors, not a product split. How board revision numbers map to products stays inferred (`docs/OPEN_QUESTIONS.md`, entry 5).

---

## 2. Hardware Subsystems & ASICs

```
                         CPU Host Interface (GIO64 / XIO)
                                        │
                                        ▼
                             ┌──────────────────────┐
                             │      HQ3 / HQ4       │  Host Interface &
                             │    Command Engine    │  Command FIFO (CFIFO)
                             └──────────┬───────────┘
                                        │
                    ┌───────────────────┴───────────────────┐
                    ▼                                       ▼
         ┌─────────────────────┐                 ┌─────────────────────┐
         │     GE11 ASIC 0     │                 │   DCB Slow Bus      │
         │   Geometry Engine   │                 │ (0x1F060000 window) │
         └──────────┬──────────┘                 └──────────┬──────────┘
                    │                                       │
                    ▼                                       ├─► VC3 (Video / Cursor / DID)
         ┌─────────────────────┐                            ├─► CMAP0 / CMAP1 (CLUTs)
         │  Raster Subsystem   │                            ├─► DAC (Brooktree / ADV)
         │        (RSS)        │                            ├─► XMAP (PP1 Window Routing)
         ├─────────────────────┤                            └─► BDVERS / I2C / Corona
         │  RE4: Raster Engine │ Setup, span, line, z-test, blend, logic ops
         │  TE1: Texture Engine│ Mipmaps, 3D texturing, filtering, LOD
         │  PP1: Pixel Proc x2 │ Framebuffer RAMBUS (RDRAM) controllers
         └─────────────────────┘
```

DCB window address. The display-bus windows start 0x60000 above the board base (established for that offset: the option probe's byte accesses at +0x62C08 and the board-version read at +0x62488 land in the device 11 and device 9 windows of the layout in `MGRAS.h`). The absolute address in the diagram, 0x1F060000, adds the Indigo2 slot base 0x1F000000 and is inferred.

### Major ASIC Roles:
1. **HQ3 / HQ4**: (the product guide names only HQ3; HQ4 is inferred as the Octane-side host interface, from the shipped geometry-microcode file names that carry `HQ4` and the Octane board-probe comments in `MGRAS.h`; no data sheet or guide names it) Host interface, privileged / user command FIFOs (`CFIFO`), direct raster bypass, DMA controller, microcode sequencer (`hq3.bin`), and Display Control Bus (`DCB`) master.
2. **GE11**: Geometry Engine microcoded vector processor (`ge11.bin`, `mgras_ge.hex`). Evaluates matrix stacks, lighting equations, primitive assembly, and feeds commands into the RSS.
3. **RE4 (Raster Engine 4)**: High-speed rasterization, edge walking, triangle setup, line generation, screen masks, scissors, window offsets, dithering, and logic ops.
4. **TE1 / TR1 (Texture Engine & Texture RAM controller)**: Bilinear and trilinear texture filtering, 3D textures, perspective correction, texture LOD calculation, and TETRAM memory management.
5. **PP1 (Pixel Processor 1)**: Memory interface to Rambus DRAM (RDRAM) and RAC cell, stencil/depth testing, blending, dithering, pixel packing/unpacking, and multi-buffer synchronization.
6. **VC3 (Video Controller 3)**: Master video timing generator, horizontal/vertical sync, cursor positioning/bitmap, and Display ID (DID) frame composition.
7. **CMAP, RAMDAC & XMAP**:
   - **XMAP (inside PP1s)**: Per-pixel Window ID (WID/DID) decoding, front/back buffer selection, overlay plane switching, and visual format routing (Color Index to CMAP vs raw RGB to DAC); contains no gamma tables.
   - **CMAP0 / CMAP1**: Dual 8K x 24-bit color lookup tables (CLUTs; 8192 entries established by the diagnostic's 0-8191 range, the 24-bit width inferred) translating Color Index and overlay pixels to 24-bit RGB.
   - **RAMDAC (ADV7161 / ADV7162)**: Triple 10-bit DAC with video PLL (220 MHz is the part's quoted rate, unverified: no data sheet held; settling test: retrieve the ADV7161 and ADV7162 data sheets through the Library acquisition tooling by part number and read the pixel-clock rating of the speed grade the boards use, or take the highest pixel clock in the kernel's video timing tables and check that it does not exceed 220 MHz, which would refute it as the PLL ceiling) and screen-wide 256x10-bit (established: the option's DAC loader writes 256 ten-bit entries per colour) Global Gamma Look-Up Table (LUT) correcting all display pixels before analog output.

---

## 3. Project Binaries & Evidence

For licensing and clean-room reasons, proprietary SGI binaries are **not checked into source control** (the local `root/` tree is gitignored). Instead, users copy them from an authentic IRIX 6.5.0 distribution into `root/` following the checklist in [IRIX_FILES.md](IRIX_FILES.md).

The subdirectories below contain relative symbolic links resolving into `root/`:

| Directory | Symlinked Files | Target in `root/` | DWARF Status |
|---|---|---|---|
| `mgras_kernel/` | 16 `.o` files (`mgras.o`, `mgras_init.o`, `mgras_dma.o`, `rrm.o`, `gfx.o`, etc.) | `root/var/sysgen/boot/` | **Full DWARF-2 debug symbols & relocations** |
| `libglcore/` | `libGLcore.so`, `libGL.so` | `root/usr/gfx/arch/IP28GR432/` | **Full DWARF debug symbols** (62 MGRAS CUs) |
| `irisgl/` | `libgl.so`, `libfm.so` | `root/usr/gfx/arch/IGLOO32/`, `root/usr/lib32/` | **Full DWARF debug symbols** (159 CUs) |
| `ddx/` | `impactpc.so`, `glx.so` | `root/usr/lib/X11/dyDDX/` | Stripped `.symtab`, **1,012 dynamic symbols** & internal clones |
| `ge11dump/` | `ge11dump` | `root/usr/gfx/MGRAS/` | Diagnostic and register dump utility |
| `ucode/` | `ge11.bin`, `hq3.bin`, `hq3.u`, `mgras_ge.hex`, etc. | `root/usr/gfx/ucode/` | ASIC Microcode binaries & listings |

---

## 4. Deliverables: The Hardware Headers

Our primary documentation output is a set of authoritative C header files mirroring the structure established in `gr2`. **The code is the document.**

1. **`MGRAS.h`**: Overall memory map, GIO64 (`0x1F000000`, inferred: the host's graphics-slot map, not read from the graphics binaries, which take the board base as a runtime argument) and XIO widget windows, board identification, DCB register transaction decode, and common types (`gr4_reg32_t`).
2. **`HQ3.h`**: Host interface registers, privileged and user command FIFOs, interrupt management, DMA channels, microcode control, and DCB bus protocol.
3. **`GE11.h`**: Geometry Engine instruction formats, microcode layout, FIFO token definitions, primitive opcodes, matrix / vertex registers.
4. **`RE4.h`**: Raster Engine registers, triangle setup parameters, edge iterators, line drawing parameters, screen masks, clipping registers, and fill modes.
5. **`PP1.h`**: Pixel Processor registers, RDRAM / RAC memory mapping, pixel packing formats, logic ops, blend factors, stencil, and z-mode control.
6. **`TE1.h`**: Texture Engine registers, TETRAM layout, texture formats, mipmapping parameters, wrap/clamp modes, texture environments, and texture DMA.
7. **`VC3.h`**: Video Controller registers, video timing generators, cursor memory/positioning, DID table registers, and frame synchronization.
8. **`CMAP.h`**: Colormap palette registers (CMAP0/1), ADV7161/7162 RAMDAC control and screen-wide 256x10-bit Global Gamma LUT, and PP1 XMAP per-pixel WID scanout routing.

---

## 5. Software Driver Headers

In addition to hardware ASIC headers, we generate local headers capturing internal driver structures:
- `mgras_kernel/include/mgras_kern.h`: Kernel driver structs (`mgras_info_t`, `mgras_data_t`, DMA ring buffers, ioctls).
- `libglcore/include/glcore_mgras.h`: OpenGL driver state (`__glMgrasContext`, hardware state shadowing, vertex array dispatch).
- `ddx/include/impact_ddx.h`: X11 DDX private structures, visuals, colormap groups, RRM (Rendering Resource Manager) bindings.
- `irisgl/include/igloo.h`: IrisGL emulation layer tokens, window state, and wrapper dispatch.

---

## 6. Reverse Engineering Toolchain & Pipeline

- **`dwarfdump`**: Native build of `libdwarf-code` (`libdwarf-code/build/src/bin/dwarfdump/dwarfdump`) capable of parsing SGI MIPS DWARF-2.
- **`mips-unknown-linux-gnu-`**: Cross-compilation and inspection toolchain (`objdump`, `readelf`, `nm`, `gcc`).
- **`m2c`**: Assembly-to-C decompiler configured for MIPS IDO C / N32 / 64-bit (`m2c/m2c.py`).
- **Extraction Scripts (`retools/tools/gr4/`)**: run from the repository root; they find this workspace from the current directory (or `--repo`, or `$ORIGAMI_RE_WORKSPACE`). Run them in the build image: `retools/tools/re-run python3 retools/tools/gr4/NAME.py`.
  - `extract_libglcore_mgras.py`: Extracts OpenGL driver CUs, types, and functions.
  - `extract_impact_ddx.py`: Extracts X11 DDX symbols, GOT dispatch tables, and drawing operations.
  - `extract_irisgl.py`: Extracts "igloo" IrisGL layer types and translation calls.
  - `generate_gl_headers.py`: Generates the GL header set.
- **Shared tooling (`retools/`)**: the container definitions, wrappers (`retools/tools/re-run`), Ghidra scripts and processors, and extractors are the `retools/` submodule (sgi-retools). Shared tools are `retools/tools/NAME`, gr4's own are `retools/tools/gr4/NAME`; nothing under `tools/` or `scripts/` here links into it. `scripts/` holds only this repository's own data and config (`inventory-config.json`, `inventory-root.sha256`, `leak-allow.txt`). `ghidra/processors/ge11` is a link into `retools/ghidra/processors/ge11` so the Ghidra tests run by that workspace path. The leak, claim and copy checks are no longer part of the shared tooling. `tools/setup-clone.sh` prepares a fresh clone.
- **Ghidra (`ghidra/`, entry point [ghidra/README.md](ghidra/README.md))**:
  - `retools/ghidra/scripts/`: the shared headless scripts for IRIX MIPS binaries (`IrixGp`, `IrixJumpTables`, `FindWindowStores`, `DumpCallEdges`, `ApplyStruct`, `DecompileFunctions`) and [their guide](retools/ghidra/scripts/README.md): when to use Ghidra rather than `m2c`, and what each tool gets wrong. Run `IrixGp.java` and `IrixJumpTables.java` before trusting any switch or global in Ghidra's output.
  - `ghidra/processors/ge11/`: a processor module for GE11 microcode. It loads `mgras_ge*.u`, `mgras_ge*.hex`, `ge11*.bin` and the 6.5.7 diagnostic program, decompiles routines, and labels source modules, `mgras_geif.u` entries and diagnostic labels. Words that come without their decoded records go through `data/ge11_decode.tsv` (`tools/ge11_decode.py`). The instruction word itself is in `GE11.h`.

---

## 7. Published Documents

Grades in this project's documents use one legend. **Established**: read directly from a shipped binary, a published SGI document, or a diagnostic transcript or capture. **Secondary**: taken from a published secondary source, such as a third-party page quoting SGI text, not first-hand. **Inferred**: follows from established facts or from the binaries by stated reasoning. **Unknown**: not derived; [docs/OPEN_QUESTIONS.md](docs/OPEN_QUESTIONS.md) says what would settle it.

Every published SGI document, white paper and public web page found that bears on IMPACT is stored in full under `docs/sources/`, with its SHA-256 and source URL in [docs/sources/INDEX.md](docs/sources/INDEX.md) (`sha256sum -c SHA256SUMS` verifies the set). Facts taken from them, each labelled with a grade from the legend above and cited by page, are in [docs/IMPACT_BOARD_FACTS.md](docs/IMPACT_BOARD_FACTS.md). Cite a document by its file name and printed page. What the headers still mark unknown, and what would settle each, is kept in [docs/OPEN_QUESTIONS.md](docs/OPEN_QUESTIONS.md). No register-level manual for any IMPACT chip has been found; chip behaviour still comes from the binaries and source in sections 3 and 6.
