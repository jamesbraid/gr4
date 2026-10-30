# SGI Impact Graphics (GR4 / MGRAS) Reverse Engineering Project

This project reverse-engineers the historic **SGI Impact Graphics** (internal architecture name **MGRAS** / **Mardi Gras**, hardware designation **GR4**) subsystem.
The primary goal is developing cycle-accurate and behavioral emulation in the SGI Indy / Indigo2 / Octane emulator (`iris`), and documenting the architecture for the vintage SGI enthusiast and FPGA recreation communities.

---

## 1. Historical & Architectural Significance

Introduced in 1995 for the SGI Indigo2 (and later Octane), Impact Graphics was a landmark milestone in workstation 3D computer graphics:
- **First Desktop Hardware Texture Mapping**: Provided real-time trilinear mipmapped 2D and 3D texture mapping via dedicated Texture Engine (TE1) and Rambus Texture RAM (TRAM).
- **High-Performance Geometry Pipeline**: 1 or 2 Geometry Engine ASICs (GE11) delivering 1-2 GFLOPS of dedicated floating-point coordinate transformations, lighting, and clipping.
- **Rambus RDRAM Framebuffer Architecture**: Interleaved Rambus DRAM accessed via 4-5 Pixel Processors (PP1), achieving unprecedented fill rates and bandwidth.
- **Complete Native OpenGL 1.1 Implementation**: The flagship hardware target for Silicon Graphics' advanced OpenGL capabilities.
- **Dual Display Subsystems**: High-resolution video timings driven by the VC3 Video Controller and true-color / multi-layer compositing via XMAP and CMAP RAMDACs.

Subsystem Configurations:
| Model | Board ID | GE11 Count | RE4 Count | TRAM Size | Color Depth | Typical Host |
|---|---|---|---|---|---|---|
| **Solid Impact (SI / SIO)** | GR4 rev <3 | 1 GE11 | 1 RE4 | None | 24-bit RGB + Z | Indigo2 / Octane |
| **High Impact (HI / HIO)** | GR4 | 1 GE11 | 1 RE4 | 1 MB or 4 MB | 24-bit RGB + Z + Tex | Indigo2 / Octane |
| **Maximum Impact (MaxI / EMX)** | GR4 | 2 GE11 | 2 RE4 (dual RSS) | 4 MB TRAM | 24-bit RGB + Z + Tex | Indigo2 / Octane |

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
         │  PP1: Pixel Proc x4 │ Framebuffer RAMBUS (RDRAM) controllers
         └─────────────────────┘
```

### Major ASIC Roles:
1. **HQ3 / HQ4**: Host interface, privileged / user command FIFOs (`CFIFO`), direct raster bypass, DMA controller, microcode sequencer (`hq3.bin`), and Display Control Bus (`DCB`) master.
2. **GE11**: Geometry Engine microcoded vector processor (`ge11.bin`, `mgras_ge.hex`). Evaluates matrix stacks, lighting equations, primitive assembly, and feeds commands into the RSS.
3. **RE4 (Raster Engine 4)**: High-speed rasterization, edge walking, triangle setup, line generation, screen masks, scissors, window offsets, dithering, and logic ops.
4. **TE1 / TR1 (Texture Engine & Texture RAM controller)**: Bilinear and trilinear texture filtering, 3D textures, perspective correction, texture LOD calculation, and TETRAM memory management.
5. **PP1 (Pixel Processor 1)**: Memory interface to Rambus DRAM (RDRAM) and RAC cell, stencil/depth testing, blending, dithering, pixel packing/unpacking, and multi-buffer synchronization.
6. **VC3 (Video Controller 3)**: Master video timing generator, horizontal/vertical sync, cursor positioning/bitmap, and Display ID (DID) frame composition.
7. **CMAP, RAMDAC & XMAP**:
   - **XMAP (inside PP1s)**: Per-pixel Window ID (WID/DID) decoding, front/back buffer selection, overlay plane switching, and visual format routing (Color Index to CMAP vs raw RGB to DAC); contains no gamma tables.
   - **CMAP0 / CMAP1**: Dual 8K x 24-bit color lookup tables (CLUTs) translating Color Index and overlay pixels to 24-bit RGB.
   - **RAMDAC (ADV7161 / ADV7162)**: Triple 10-bit 220 MHz DAC with video PLL and screen-wide 256x10-bit Global Gamma Look-Up Table (LUT) correcting all display pixels before analog output.

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

1. **`MGRAS.h`**: Overall memory map, GIO64 (`0x1F000000`) and XIO widget windows, board identification, DCB register transaction decode, and common types (`gr4_reg32_t`).
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
- **Extraction Scripts (`scripts/`)**:
  - `extract_mgras_kernel.py`: Parses kernel `.o` DWARF and disassembles functions.
  - `extract_libglcore_mgras.py`: Extracts OpenGL driver CUs, types, and functions.
  - `extract_impact_ddx.py`: Extracts X11 DDX symbols, GOT dispatch tables, and drawing operations.
  - `extract_irisgl.py`: Extracts "igloo" IrisGL layer types and translation calls.
- **Ghidra (`ghidra/`, entry point [ghidra/README.md](ghidra/README.md))**:
  - `ghidra/scripts/`: the shared headless scripts for IRIX MIPS binaries (`IrixGp`, `IrixJumpTables`, `FindWindowStores`, `DumpCallEdges`, `ApplyStruct`, `DecompileFunctions`) and [their guide](ghidra/scripts/README.md): when to use Ghidra rather than `m2c`, and what each tool gets wrong. Run `IrixGp.java` and `IrixJumpTables.java` before trusting any switch or global in Ghidra's output.
  - `ghidra/processors/ge11/`: a processor module for GE11 microcode. It loads `mgras_ge*.u`, `mgras_ge*.hex`, `ge11*.bin` and the 6.5.7 diagnostic program, decompiles routines, and labels source modules, `mgras_geif.u` entries and diagnostic labels. Words that come without their decoded records go through `data/ge11_decode.tsv` (`tools/ge11_decode.py`). The instruction word itself is in `GE11.h`.
