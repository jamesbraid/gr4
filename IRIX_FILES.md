# Required IRIX 6.5.0 Distribution Files for MGRAS Reverse Engineering

This document lists the proprietary Silicon Graphics (SGI) binaries and files required for reverse engineering the historic **SGI Impact Graphics (GR4 / MGRAS)** subsystem.

For legal and clean-room licensing reasons, proprietary SGI binaries are **not tracked in source control**. Instead, users must copy them from an authentic **IRIX 6.5.0** installation, CD distribution, or sysgen tree into the local `root/` subdirectory.

Top-level subdirectories (`ddx/`, `libglcore/`, `irisgl/`, `mgras_kernel/`, `ge11dump/`, `ucode/`) use relative symbolic links pointing to their respective targets under `root/`.

---

## 1. Directory Structure Overview

All files should be installed into `root/` mirroring their authentic IRIX paths:

```
root/
├── unix                                       <- IRIX kernel binary (IP28 or IP22)
├── unix.map                                   <- Kernel symbol map
├── usr/
│   ├── gfx/
│   │   ├── arch/
│   │   │   ├── IP28GR432/
│   │   │   │   ├── libGLcore.so               <- OpenGL Core Driver (N32 with DWARF symbols)
│   │   │   │   └── libGL.so                   <- OpenGL API Library (N32 with DWARF symbols)
│   │   │   ├── IGLOO32/
│   │   │   │   └── libgl.so                   <- IrisGL Compatibility Library (N32 with DWARF)
│   │   │   └── GENERIC/
│   │   │       └── Xsgi                       <- SGI X11 Server
│   │   ├── MGRAS/
│   │   │   └── ge11dump                       <- GE11 Diagnostic & register dump utility
│   │   └── ucode/
│   │       ├── ge11.bin                       <- GE11 ASIC microcode binary
│   │       ├── hq3.bin                        <- HQ3 Host Interface microcode binary
│   │       ├── MGRAS/
│   │       │   └── hq3.u                      <- HQ3 microcode assembler listing
│   │       ├── MG/
│   │       │   ├── mgras_ge.hex               <- GE11 microcode hex dump
│   │       │   ├── mgras_ge.u                 <- GE11 microcode assembler listing
│   │       │   └── mgras_geif.u               <- GE11 Interface microcode assembler listing
│   │       └── MGRAS/vof/                     <- Video Output Format (VOF) timing binaries
│   ├── lib/
│   │   └── X11/dyDDX/
│   │       ├── impactpc.so                    <- X11 MGRAS DDX Driver
│   │       └── glx.so                         <- X11 GLX extension module
│   └── lib32/
│       └── libfm.so                           <- IrisGL Font Manager library (N32)
└── var/
    └── sysgen/
        ├── boot/
        │   ├── mgras.a                        <- MGRAS driver module archive
        │   ├── gfx.o                          <- Core gfx module (DWARF symbols)
        │   ├── rrm.o                          <- Rendering Resource Manager (DWARF symbols)
        │   └── mgras_*.o                      <- 14 extracted driver modules (see below)
        └── master.d/
            ├── mgras                          <- Device configuration
            └── mgrasstubs                     <- Stub configuration
```

---

## 2. File Checklist

### A. Kernel Driver Modules (`mgras_kernel/`)
Extracted from `root/var/sysgen/boot/mgras.a` or installed in `root/var/sysgen/boot/`:

| File | Source Path in IRIX | Symlink in Repository | DWARF Status |
|---|---|---|---|
| `gfx.o` | `/var/sysgen/boot/gfx.o` | `mgras_kernel/gfx.o` | Full DWARF-2 |
| `rrm.o` | `/var/sysgen/boot/rrm.o` | `mgras_kernel/rrm.o` | Full DWARF-2 |
| `mgras.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras.o` | Full DWARF-2 |
| `mgras_init.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_init.o` | Full DWARF-2 |
| `mgras_dma.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_dma.o` | Full DWARF-2 |
| `mgras_ccv.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_ccv.o` | Full DWARF-2 |
| `mgras_retrace.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_retrace.o` | Full DWARF-2 |
| `mgras_timing.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_timing.o` | Full DWARF-2 |
| `mgras_tport.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_tport.o` | Full DWARF-2 |
| `mgras_tex.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_tex.o` | Full DWARF-2 |
| `mgras_texsr.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_texsr.o` | Full DWARF-2 |
| `mgras_tex_io.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_tex_io.o` | Full DWARF-2 |
| `mgras_corona_i2c.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_corona_i2c.o` | Full DWARF-2 |
| `mgras_mco.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_mco.o` | Full DWARF-2 |
| `mgras_share.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_share.o` | Full DWARF-2 |
| `mgras_pipeend.o` | inside `/var/sysgen/boot/mgras.a` | `mgras_kernel/mgras_pipeend.o` | Full DWARF-2 |

*Note*: If you only have `mgras.a`, extract it into `root/var/sysgen/boot/`:
```bash
cd root/var/sysgen/boot && ar x mgras.a
```

### B. OpenGL Core Driver (`libglcore/`)
| File | Source Path in IRIX | Symlink in Repository | DWARF Status |
|---|---|---|---|
| `libGLcore.so` | `/usr/gfx/arch/IP28GR432/libGLcore.so` | `libglcore/libGLcore.so` | Full DWARF-2 (62 CUs) |
| `libGL.so` | `/usr/gfx/arch/IP28GR432/libGL.so` | `libglcore/libGL.so` | Full DWARF-2 |

### C. IrisGL Compatibility Layer (`irisgl/`)
| File | Source Path in IRIX | Symlink in Repository | DWARF Status |
|---|---|---|---|
| `libgl.so` | `/usr/gfx/arch/IGLOO32/libgl.so` | `irisgl/libgl.so` | Full DWARF-2 (159 CUs) |
| `libfm.so` | `/usr/lib32/libfm.so` | `irisgl/libfm.so` | Full DWARF-2 |

### D. X11 DDX Driver (`ddx/`)
| File | Source Path in IRIX | Symlink in Repository | Symbols |
|---|---|---|---|
| `impactpc.so` | `/usr/lib/X11/dyDDX/impactpc.so` | `ddx/impactpc.so` | Dynamic symbols & relocs |
| `glx.so` | `/usr/lib/X11/dyDDX/glx.so` | `ddx/glx.so` | Dynamic symbols & relocs |

### E. Diagnostic & Microcode Binaries
| File | Source Path in IRIX | Symlink in Repository |
|---|---|---|
| `ge11dump` | `/usr/gfx/MGRAS/ge11dump` | `ge11dump/ge11dump` |
| `ge11.bin` | `/usr/gfx/ucode/ge11.bin` | `ucode/ge11.bin` |
| `hq3.bin` | `/usr/gfx/ucode/hq3.bin` | `ucode/hq3.bin` |
| `hq3.u` | `/usr/gfx/ucode/MGRAS/hq3.u` | `ucode/hq3.u` |
| `mgras_ge.hex` | `/usr/gfx/ucode/MG/mgras_ge.hex` | `ucode/mgras_ge.hex` |
| `mgras_ge.u` | `/usr/gfx/ucode/MG/mgras_ge.u` | `ucode/mgras_ge.u` |
| `mgras_geif.u` | `/usr/gfx/ucode/MG/mgras_geif.u` | `ucode/mgras_geif.u` |

### F. GE11 Diagnostic Program (optional, `ghidra/processors/ge11` tests)
Not part of the IRIX distribution: these come from the IDE diagnostic sources of the IRIX 6.5.7 source tree. Place them under `root/irix-6.5.7-src/` at their own paths:

| File | Source Path | Used For |
|---|---|---|
| `mgras_ge.hex` | `stand/arcs/ide/isddevices/graphics/MGRAS/mgras_ge.hex` | the diagnostic GE11 program, words only |
| `ge11symtab.h` | `stand/arcs/ide/isddevices/graphics/MGRAS/ge11symtab.h` | its 82 labels |
| `ge_inst.h` | `stand/arcs/ide/isddevices/graphics/MGRAS/ge_inst.h` | the 172 words its instruction test expects |

The decode table (`ghidra/processors/ge11/tools/ge11_decode.py`) is learnt from all six `mgras_ge*.hex` / `mgras_ge*.u` pairs in `/usr/gfx/ucode/MG`, so copy that directory whole.

---

## 3. How to Populate `root/` from an IRIX 6.5 System or CD

From a running IRIX 6.5.0 system with Impact Graphics installed:

```bash
# 1. On IRIX host, create tar archive of the required paths:
tar -cvf /tmp/mgras_root.tar \
    /unix /unix.map \
    /usr/lib/X11/dyDDX/impactpc.so \
    /usr/lib/X11/dyDDX/glx.so \
    /usr/lib32/libfm.so \
    /usr/gfx/arch/IP28GR432/libGLcore.so \
    /usr/gfx/arch/IP28GR432/libGL.so \
    /usr/gfx/arch/IGLOO32/libgl.so \
    /usr/gfx/MGRAS/ge11dump \
    /usr/gfx/ucode/ge11*.bin \
    /usr/gfx/ucode/hq3*.bin \
    /usr/gfx/ucode/MGRAS \
    /usr/gfx/ucode/MG \
    /var/sysgen/boot/mgras.a \
    /var/sysgen/boot/gfx.o \
    /var/sysgen/boot/rrm.o

# 2. Extract into root/ in the repository:
cd ignore/gr4/root
tar -xvf /path/to/mgras_root.tar

# 3. Extract the mgras.a kernel archive:
cd var/sysgen/boot && ar x mgras.a
```
