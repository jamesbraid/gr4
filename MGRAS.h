/*
 * MGRAS.h - Silicon Graphics Impact (GR4 / MGRAS / Mardi Gras) Graphics Subsystem
 *
 * Historic 3D Graphics Architecture for SGI Indigo2 (IP22/IP26/IP28)
 * and Octane (IP30).
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Synthesized from:
 *   - SGI IRIX PROM (stand/arcs/lib/libsk/graphics/MGRAS)
 *   - SGI IDE diagnostics (stand/arcs/ide/isddevices/graphics/MGRAS)
 *   - IRIX 6.5.0 kernel modules (mgras.o, mgras_init.o, mgras_dma.o, rrm.o)
 *   - SGI OpenGL core driver (libGLcore.so) DWARF metadata
 *   - SGI IrisGL compatibility library ("igloo" libgl.so)
 *   - SGI X11 DDX driver (impactpc.so)
 *   - Existing IRIS emulator implementation (~/gits/iris/src/dev/mgras)
 *   - OpenBSD / NetBSD sgi/sgimips driver sources
 */

#ifndef _SGI_MGRAS_H_
#define _SGI_MGRAS_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * ============================================================================
 * MULTI-WIDTH REGISTER UNIONS & PRIMITIVE TYPES
 * ============================================================================
 *
 * SGI hardware registers are mapped in GIO/XIO spaces on word or doubleword boundaries,
 * but CPU instructions access them with byte, halfword, word, or doubleword operations.
 */
#ifndef _GR4_REG32_T_DEFINED
#define _GR4_REG32_T_DEFINED
typedef union {
    volatile uint32_t w;
    volatile uint16_t h;
    volatile uint8_t  b;
} gr4_reg32_t;

typedef union {
    volatile uint64_t d;
    volatile uint32_t w[2];
    volatile uint16_t h[4];
    volatile uint8_t  b[8];
} gr4_reg64_t;
#endif

#ifndef BIT
#define BIT(n)  (1U << (n))
#endif

/*
 * ============================================================================
 * ARCHITECTURE OVERVIEW: THE HISTORIC SGI IMPACT SUBSYSTEM
 * ============================================================================
 *
 * SGI Impact Graphics (internal codename "Mardi Gras" or "MGRAS", hardware designation
 * "GR4") was introduced in 1995 for the SGI Indigo2 (and later Octane). It represents
 * a monumental milestone in computer graphics history:
 *
 * 1. FIRST DESKTOP HARDWARE TEXTURE MAPPING:
 *    Impact was the first workstation desktop system capable of real-time trilinear
 *    mipmapped 2D and 3D texture mapping via dedicated custom ASICs (TE1 & TR1)
 *    and specialized high-speed Rambus Texture RAM (TETRAM).
 *
 * 2. DEDICATED GEOMETRY VECTOR PROCESSORS (GE11):
 *    Equipped with 1 or 2 GE11 Geometry Engine ASICs running custom microcode (ge11.bin),
 *    evaluating matrix transforms, clipping, and lighting models at 1-2 GFLOPS.
 *
 * 3. INTERLEAVED RAMBUS RDRAM FRAMEBUFFER:
 *    The Raster Subsystem (RSS) drives 4 or 5 Pixel Processor ASICs (PP1), each
 *    managing an independent 9-bit Rambus channel to RDRAM, delivering unprecedented
 *    fill rates, hardware 24-bit depth buffering, 8-bit stencil, and fast clears.
 *
 * 4. FULL HARDWARE OPENGL 1.1 IMPLEMENTATION:
 *    Impact served as Silicon Graphics' flagship architecture for OpenGL 1.1,
 *    introducing texture objects, vertex arrays, texture formats (GL_EXT_texture3D,
 *    GL_EXT_subtexture, GL_EXT_copy_texture), and advanced blending.
 *
 * Subsystem Configurations:
 * ----------------------------------------------------------------------------
 *  Model            Board ID    GE11 Count  RE4 Count  TRAM Size   Color Depth
 * ----------------------------------------------------------------------------
 *  Solid Impact     GR4 rev <3      1           1        None       24-bit + Z
 *  High Impact      GR4             1           1       1 or 4MB    24-bit + Z + Tex
 *  Maximum Impact   GR4             2           2 (dual) 4 MB       24-bit + Z + Tex
 * ----------------------------------------------------------------------------
 *
 * How the drivers tell them apart (libsk MgrasGatherInfo, MgrasFillBoardID):
 * BDVERS1 gives the board revision, the GE count and the product ID
 * (MGRAS_PRODUCT for High/Max, MGRAS_PRODUCT_MG10 for Solid). For
 * MGRAS_PRODUCT, BDVERS0's RB revision field (6:4) says whether the second
 * raster board (RB) is fitted: anything but 7 (MGRAS_BV0_RB_NOT_INSTALLED, or
 * its BAD_BIT2 twin) means RBPresent and NumREs = 2, with RB TRAMs in 3:2 and
 * RA TRAMs in 1:0. Kernel options mgras_numge / mgras_numre override both
 * counts. The PROM names 2 GEs + 2 REs + TRAMs "Maximum Impact", 2 GEs + 1
 * RE "High-AA Impact". The RA revision gfxinfo prints is CMAP1's revision
 * register (MGRAS_CMAP_RA_REV); RARev < 3 makes the IP22/IP28 kernel lower
 * the HPC3 voltage margin (rev B PP1s). Board IDs iris uses (BDVERS0,
 * BDVERS1): Solid 0x70, 0x21; High 0x72, 0x01; Max 0x0A, 0x02. 6.5.22 on
 * IP28 then reports "2 GEs, 2 REs, 4 TRAMs" for Max; the IP28 kernel names
 * every IMPACT "IMPACTPC" (a string in its mgras_init.o).
 *
 * Octane (HQ4) boards, as the 6.5.22 IP30 kernel's board probe decodes them
 * (disassembled) and the PROM names them: BDVERS1 bits 1:0 NumGEs, 4:2 board
 * revision, 6:5 product (0 High/Max, 1 Solid MG10 on the Indigo2; the
 * Octane's GM10 and GM20 are 2 and, by inference, 3). For GM10/GM20,
 * BDVERS0 bits 1:0 are the RA TRAM field and 3:2 the RB one, each 3 = none
 * and anything else = 4 TRAMs; NumREs = NumGEs and RBPresent stays 0.
 * Names: 1 GE no TRAM "SI", 1 GE + TRAMs "SI with texture option", 2 GEs no
 * TRAM "SSI", 2 GEs + TRAMs "MXI", each prefixed "E" when the GE11 revision
 * is above 2. The serial-number record's name is GM10 for one RE and GM20
 * for two; texture comes on mezzanines (TMEZZ: one for SI, two for MXI).
 * Board IDs iris uses (BDVERS0, BDVERS1): SI 0x0F, 0x45; SI with texture
 * 0x0C, 0x45; MXI 0x00, 0x66. gfxinfo then reports "Product ID 0x2, 1 GE,
 * 1 RE, 4 TRAMs" and "Product ID 0x3, 2 GEs, 2 REs, 4 TRAMs".
 *
 * Subsystem Block Diagram:
 *
 *            CPU / GIO64 (Indigo2) or XIO Crossbar (Octane)
 *                                  │
 *                                  ▼
 *                      ┌───────────────────────┐
 *                      │       HQ3 / HQ4       │  Host Interface &
 *                      │    Command Engine     │  Command FIFO (CFIFO)
 *                      └───────────┬───────────┘
 *                                  │
 *          ┌───────────────────────┴───────────────────────┐
 *          ▼                                               ▼
 *  ┌───────────────┐  Private FIFO                 ┌───────────────┐
 *  │  GE11 ASIC 0  │ (Geometry FIFO)               │ DCB Slow Bus  │ (0x1F060000)
 *  │Geometry Engine│                               └───────┬───────┘
 *  └───────┬───────┘                                       │
 *          │                                               ├─► VC3 (Video / Timing / Cursor)
 *          │ (Optional 2nd GE11 on Maximum Impact)          ├─► CMAP0 / CMAP1 (Colormaps)
 *          ▼                                               ├─► DAC (TrueColor RAMDAC)
 *  ┌──────────────────────────────────────────┐            ├─► XMAP (PP1 Window Routing)
 *  │          Raster Subsystem (RSS)          │            └─► BDVERS / I2C / Corona
 *  ├──────────────────────────────────────────┤
 *  │  RE4: Raster Engine                      │
 *  │       Autonomous triangle & line raster, │
 *  │       span interpolation, 2D setup, clip │
 *  ├──────────────────────────────────────────┤
 *  │  TE1: Texture Engine (HI / MaxI only)    │
 *  │       TETRAM controller, mipmapping,     │
 *  │       3D texturing, trilinear filtering  │
 *  ├──────────────────────────────────────────┤
 *  │  PP1: Pixel Processors (x4 or x5)        │
 *  │       Rambus RDRAM & RAC interface,      │
 *  │       logic ops, blend, depth, stencil   │
 *  └───────────────────┬──────────────────────┘
 *                      │
 *                      ▼
 *             Rambus RDRAM Framebuffer
 *                      │
 *                      ▼
 *                 Video Stream (VC3 / CMAP / DAC)
 */

/*
 * ============================================================================
 * GLX VISUALS AND PBUFFER CONFIGS (IRIX 6.5.22, HighImpact, 1024x768)
 * ============================================================================
 *
 * As glXGetConfig / glXGetFBConfigAttribSGIX report them (glprim
 * --listvisuals in iris, 2026-10-10; not yet compared with a real board):
 *   CI8     z24s8 or none, single-buffered; level 1 (overlay) visuals too
 *   CI12    z24s8 or none; single, double, double stereo
 *   RGBA 4,4,4,4   double-buffered only, z24s8 or none, accum 16, stereo
 *   RGBA 5,5,5,1   the same
 *   RGBA 8,8,8,8   single and double, z24s8 or none, accum 16
 *   RGBA 12,12,12,0  single and double, z24s8 or none, accum 16
 * There is no 3,3,2, 10,10,10,2 or 12,12,12,12, and no depth layout but
 * z24s8. The 12-bit RGBA visuals double-buffer in word halves (PP1.h).
 *
 * Pbuffers (GLX_SGIX_pbuffer): max 1024x768. Asked for RGBA|CI, only four
 * configs come back (0x49-0x4C: 12-bit, render type RGBA and CI, red
 * size 12, green and blue 0; sb/db, z24s8 or none). Asked for RGBA, more
 * (e.g. 0x50 4,4,4,4 db, 0x54 5,5,5,1 db, 0x57-0x5E 8,8,8,8 and 12-bit
 * RGB). A 400x300 glXCreateGLXPbufferSGIX succeeded only for 8,8,8,8 sb,
 * 4,4,4,4 db, 5,5,5,1 db and the 12-bit sb config; every z24s8 config,
 * 8,8,8,8 db and 12,12,12 failed with BadAlloc. Our reading: the X
 * server has offscreen room for one 24-bit buffer at 1024x768 and no
 * offscreen ZST (unconfirmed).
 *
 * A pbuffer's GL window (the context image's words 2-15) has origin
 * (0, 468), i.e. the bottom 300 rows, and DRBpointers 0xA8000000: page
 * fields 0, so it lives in the aux/ZST pages (top byte 0xA8 unknown). A
 * double-buffered pbuffer draws GL_BACK as DRAW_BUFFER [2, 1] (12-bit) like
 * a window, but glXSwapBuffers on it produced no board traffic at all: no
 * VALIDATE_BANKS or SCHEDULE_SWAP, image words 16-17 stayed 1, 1, and the
 * X server's context switched in and wrote nothing. The front buffer is
 * never drawn, so glprim's front reads of a double-buffered pbuffer return
 * whatever was there before. Whether a real board swaps them is untested.
 */

/*
 * ============================================================================
 * GIO BUS IDENTIFICATION & SLOTS
 * ============================================================================
 */

/* GIO Graphics Slots (Indigo2 / IP22 / IP26 / IP28) */
#define MGRAS_SLOT_GFX_BASE     0x1F000000  /* Slot 0 base physical address */
#define MGRAS_SLOT_GFX_SIZE     0x00400000  /* 4 MB slot decode window */
#define MGRAS_MAP_SIZE          0x00100000  /* 1 MB active register window */

#define MGRAS_BASE0_PHYS        0x1F000000  /* Pipe 0 base address */
#define MGRAS_BASE1_PHYS        0x1F400000  /* Pipe 1 base address (multi-pipe systems) */
#define MGRAS_PX_RE4_PHYS       0x1F040000

#define MGRAS_MAXBOARDS         2           /* Maximum boards in system */

/*
 * GIO ID Register at offset 0x00000:
 * Product 0x10, 32-bit ID, revision 1, GIO64, no ROM, manufacturer 1 (SGI).
 * Value: 0x00050190
 */
#define MGRAS_GIO_ID_ADDR       0x00000
#define MGRAS_GIO_ID            0x00050190

/* Board Revision & Type Extraction */
#define MGRAS_REV_MASK          0x000000F0
#define MGRAS_PRODUCT_MASK      0xFFFFFF00

/* Board revision helper macros from BDVERS register */
#define MGRAS_BOARD_REV(data)   (((data) & 0x1C) >> 2)
#define MGRAS_NUMTRAM(x)        ((x) == 0 ? 1 : ((x) == 1 ? 2 : ((x) == 2 ? 4 : 0)))
#define MGRAS_NUMTRAM_HW(x)     ((x) == 1 ? 0 : ((x) == 2 ? 1 : ((x) == 4 ? 2 : 3)))

/*
 * ============================================================================
 * GIO REGISTER WINDOW OFFSETS (Within 1 MB Window)
 * ============================================================================
 */
#define MGRAS_OFFSET_GIO_ID     0x00000     /* GIO identification word */
#define MGRAS_OFFSET_UCODE      0x40000     /* HQ3 microcode RAM (0x40000-0x45FFF) */
#define MGRAS_OFFSET_HQPC       0x46000     /* HQ3 program counter */
#define MGRAS_OFFSET_CP_DATA    0x47000     /* Command processor data */
#define MGRAS_OFFSET_RSS_DIAG   0x4C000     /* RSS diagnostic access */
#define MGRAS_OFFSET_PRIV_REGS  0x50000     /* HQ3 Privileged control registers */
#define MGRAS_OFFSET_PRIV_CFIFO 0x50080     /* Privileged command FIFO port (64-bit; word at +4) */
#define MGRAS_OFFSET_DCB        0x60000     /* Display Control Bus (DCB) devices */
#define MGRAS_OFFSET_DCB_CTRL   0x68000     /* DCB per-device protocol registers */
#define MGRAS_OFFSET_USER_REGS  0x70000     /* User status, flags, FIFOs */
#define MGRAS_OFFSET_USER_CFIFO 0x70080     /* User command FIFO port (64-bit; word at +4) */
#define MGRAS_OFFSET_RSS_REG    0x7C000     /* Direct RSS register write (no execute) */
#define MGRAS_OFFSET_RSS_EXEC   0x7D000     /* Direct RSS register write + EXECUTE IR */
#define MGRAS_OFFSET_CFIFO_CMD  0x80000     /* Fast Command FIFO window (to 0xFFFFF) */

/*
 * ============================================================================
 * DISPLAY CONTROL BUS (DCB) SUBSYSTEM
 * ============================================================================
 *
 * Reached through a 32 KB window at offset 0x60000.
 * Each device owns a 1 KB window: (0x60000 + dev * 0x400).
 * Address encoding within device window (bits 9:0):
 *   bits [9:7]: Chip register select (CRS line, 0..7)
 *   bit  [6]  : Data packing enable (ENDATAPACK)
 *   bit  [5]  : Address increment enable (ENCRSINC)
 *   bits [4:3]: Transfer width in bytes (0 = 4 bytes, 1 = 1B, 2 = 2B, 3 = 3B)
 *   bits [2:0]: Sub-byte / alignment padding
 */

#define MGRAS_DCB_BASE          0x60000
#define MGRAS_DCB_DEV_SIZE      0x400
#define MGRAS_DCB_DEV_OFFSET(d) (MGRAS_DCB_BASE + ((d) * MGRAS_DCB_DEV_SIZE))

/* DCB Device Numbers (Verified against IRIX driver binary disassembly of MgrasInitDCBctrl, MgrasInitXMAP, MgrasInitDac, MgrasInitCMAP) */
#define MGRAS_DCB_DEV_CMAP_ALL  3   /* Broadcast write to CMAP0 & CMAP1 (0x60C00, dcbctrl[3]: 0x6800C) */
#define MGRAS_DCB_DEV_CMAP0     4   /* Colormap DAC 0 (0x61000, dcbctrl[4]: 0x68010) */
#define MGRAS_DCB_DEV_CMAP1     5   /* Colormap DAC 1 (0x61400, dcbctrl[5]: 0x68014) */
#define MGRAS_DCB_DEV_DAC       6   /* TrueColor RAMDAC (0x61800, dcbctrl[6]: 0x68018) */
#define MGRAS_DCB_DEV_PP1_XMAP  7   /* PP1 XMAP interface (0x61C00, dcbctrl[7]: 0x6801C) */
#define MGRAS_DCB_DEV_XMAP      7   /* Convenience alias */
#define MGRAS_DCB_DEV_VC3       8   /* VC3 Video Controller (0x62000, dcbctrl[8]: 0x68020) */
#define MGRAS_DCB_DEV_BDVERS    9   /* Board version / strapping resistors (0x62400, dcbctrl[9]: 0x68024) */
#define MGRAS_DCB_DEV_I2C       11  /* Corona / DDC I2C bus controller (0x62C00, dcbctrl[11]: 0x6802C) */
/*
 * Device 11 is shared by two parts. The Corona I2C controller takes its
 * data and control bytes at CRS 0 and CRS 1 (6.5.7
 * stand/arcs/lib/libsk/graphics/MGRAS/mgras_corona_i2c.c). The multi-channel
 * option (MCO) board takes an index byte at CRS 2 and data bytes at CRS 3,
 * a 16-bit value as two bytes, high first: the kernel's mgras_mco.o and the
 * X server write the pair (impactpc.so mgrasAttachXvc and mgrasBlankScreen,
 * found by a Ghidra scan for stores into the board window). The X server
 * sets device 11's DCB timing to 0x6319 first. mgrasBlankScreen has two
 * branches. Both write 0x0400 to indices 0x20 and 0x30. One then writes
 * 0x0000 to 0x22 and 0x32, the byte 0x32 to 0x06 and 0x16 and 0 to 0x02
 * and 0x12; the other writes 0xFFFF, 0x30 and 0xFF to the same indices.
 * What the MCO indices control is not known from these sources.
 */
#define MGRAS_DCB_DEV_MCO       11
#define MGRAS_MCO_INDEX         (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_1)  /* 0x62D08 */
#define MGRAS_MCO_DATA          (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_1)  /* 0x62D88 */
#define MGRAS_DCBCTRL_MCO       0x6319      /* Dev 11 (0x6802C), set by the X server */

/* DCB Address Encoding Macros */
#define MGRAS_DCB_CRS(x)        (((x) & 0x7) << 7)
#define MGRAS_DCB_ENDATAPACK    BIT(6)
#define MGRAS_DCB_ENCRSINC      BIT(5)
#define MGRAS_DCB_DATAWIDTH_4   (0x0 << 3)
#define MGRAS_DCB_DATAWIDTH_1   (0x1 << 3)
#define MGRAS_DCB_DATAWIDTH_2   (0x2 << 3)
#define MGRAS_DCB_DATAWIDTH_3   (0x3 << 3)

/* DCB Protocol Control Bits (Offset 0x68000 + dev*4) */
#define MGRAS_DCB_ENSYNCACK     BIT(0)
#define MGRAS_DCB_ENASYNCACK    BIT(1)
#define MGRAS_DCB_CSWIDTH(x)    (((x) & 0x7) << 2)
#define MGRAS_DCB_CSHOLD(x)     (((x) & 0x7) << 6)
#define MGRAS_DCB_CSSETUP(x)    (((x) & 0x7) << 10)

/* Standard DCB Protocol Settings (as programmed by MgrasInitDCBctrl) */
#define MGRAS_DCBCTRL_CMAPALL   0x108C      /* Dev 3 (0x6800C) */
#define MGRAS_DCBCTRL_CMAP0     0x108C      /* Dev 4 (0x68010) */
#define MGRAS_DCBCTRL_CMAP1     0x108C      /* Dev 5 (0x68014) */
#define MGRAS_DCBCTRL_DAC       0x1084      /* Dev 6 (0x68018) */
#define MGRAS_DCBCTRL_PP1       0x318C      /* Dev 7 (0x6801C) */
#define MGRAS_DCBCTRL_XMAP      0x318C      /* Dev 7 alias */
#define MGRAS_DCBCTRL_VC3       0x210A      /* Dev 8 (0x68020) */
#define MGRAS_DCBCTRL_BDVERS    0x1090      /* Dev 9 (0x68024) */

/*
 * Flexdata union for 64-bit aligned DCB and FIFO access.
 * Big-endian packing places 8-bit, 16-bit, and 32-bit data in high or low positions.
 */
typedef union {
    struct {
        volatile uint64_t data;
    } bydouble;
    struct {
        volatile uint32_t pad;
        volatile uint32_t data;
    } byword;
    struct {
        volatile uint16_t pad[3];
        volatile uint16_t data;
    } byshort;
    struct {
        volatile uint8_t  pad[7];
        volatile uint8_t  data;
    } bybyte;
} dcbdata64, mgras_dcbdata64_t;

/*
 * ============================================================================
 * DCB SUB-DEVICE APERTURE STRUCTURES
 * ============================================================================
 */

/*
 * PP1 XMAP DCB Interface (0x1F060000 - Device 0)
 *
 * Integrated into each PP1 (Pixel Processor) ASIC.
 * Provides per-pixel Window ID (WID / DID 0..31) decoding, buffer selection
 * (Front vs Back, A vs B), visual mode routing (Color Index to CMAP vs TrueColor
 * RGB to DAC), overlay switching, and DIB scanout control.
 *
 * NOTE: XMAP does NOT perform gamma correction and has no gamma/color tables.
 */
#define MGRAS_XMAP_PP1_SELECT   (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_XMAP_INDEX        (MGRAS_DCB_CRS(1) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_XMAP_CONFIG       (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_4)
#define MGRAS_XMAP_BUF_SELECT   (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_4)
#define MGRAS_XMAP_MAIN_MODE    (MGRAS_DCB_CRS(4) | MGRAS_DCB_DATAWIDTH_4)
#define MGRAS_XMAP_OVERLAY_MODE (MGRAS_DCB_CRS(5) | MGRAS_DCB_DATAWIDTH_4)
#define MGRAS_XMAP_DIB          (MGRAS_DCB_CRS(6) | MGRAS_DCB_DATAWIDTH_4)
#define MGRAS_XMAP_DIB_DW       (MGRAS_DCB_CRS(6) | MGRAS_DCB_DATAWIDTH_4 | MGRAS_DCB_ENDATAPACK)
#define MGRAS_XMAP_RE_RAC       (MGRAS_DCB_CRS(7) | MGRAS_DCB_DATAWIDTH_4)
/* The kernel's mgras_update_pp1ccv (mgras_retrace.o) writes CONFIG one
 * byte at a time (0x61D08): */
#define MGRAS_XMAP_CONFIG_BYTE  (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_1)

typedef struct {
    uint8_t             pad0[MGRAS_XMAP_PP1_SELECT];
    volatile uint8_t    pp1_sel;
    uint8_t             pad1[MGRAS_XMAP_INDEX - MGRAS_XMAP_PP1_SELECT - 1];
    volatile uint8_t    index;
    uint8_t             pad2[MGRAS_XMAP_CONFIG - MGRAS_XMAP_INDEX - 1];
    volatile uint32_t   config;
    uint8_t             pad3[MGRAS_XMAP_BUF_SELECT - MGRAS_XMAP_CONFIG - 4];
    volatile uint32_t   buf_sel;
    uint8_t             pad4[MGRAS_XMAP_MAIN_MODE - MGRAS_XMAP_BUF_SELECT - 4];
    volatile uint32_t   main_mode;
    uint8_t             pad5[MGRAS_XMAP_OVERLAY_MODE - MGRAS_XMAP_MAIN_MODE - 4];
    volatile uint32_t   ovl_mode;
    uint8_t             pad6[MGRAS_XMAP_DIB - MGRAS_XMAP_OVERLAY_MODE - 4];
    volatile uint32_t   dib;
    uint8_t             pad7[MGRAS_XMAP_DIB_DW - MGRAS_XMAP_DIB - 4];
    volatile uint64_t   dib_dw;
    uint8_t             pad8[MGRAS_XMAP_RE_RAC - MGRAS_XMAP_DIB_DW - 8];
    volatile uint32_t   re_rac;
    uint8_t             pad9[0x400 - MGRAS_XMAP_RE_RAC - 4];
} _pp1xmap;

/* CMAP DCB Interface (0x1F061400, 0x1F061800, 0x1F061C00) */
#define MGRAS_CMAP_ADDRLO       (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_CMAP_ADDR         (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_2 | MGRAS_DCB_ENCRSINC)
#define MGRAS_CMAP_ADDRHI       (MGRAS_DCB_CRS(1) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_CMAP_PAL          (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_3)
#define MGRAS_CMAP_CMD          (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_CMAP_STATUS       (MGRAS_DCB_CRS(4) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_CMAP_REV          (MGRAS_DCB_CRS(6) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_CMAP_RESERVED     (MGRAS_DCB_CRS(7) | MGRAS_DCB_DATAWIDTH_1)

typedef struct {
    uint8_t             pad0[MGRAS_CMAP_ADDRLO];
    volatile uint8_t    addrlo;
    uint8_t             pad1[MGRAS_CMAP_ADDR - MGRAS_CMAP_ADDRLO - 1];
    volatile uint16_t   addr;
    uint8_t             pad2[MGRAS_CMAP_ADDRHI - MGRAS_CMAP_ADDR - 2];
    volatile uint8_t    addrhi;
    uint8_t             pad3[MGRAS_CMAP_PAL - MGRAS_CMAP_ADDRHI - 1];
    volatile uint32_t   pal;
    uint8_t             pad4[MGRAS_CMAP_CMD - MGRAS_CMAP_PAL - 4];
    volatile uint8_t    cmd;
    uint8_t             pad5[MGRAS_CMAP_STATUS - MGRAS_CMAP_CMD - 1];
    volatile uint8_t    status;
    uint8_t             pad6[MGRAS_CMAP_REV - MGRAS_CMAP_STATUS - 1];
    volatile uint8_t    rev;
    uint8_t             pad7[MGRAS_CMAP_RESERVED - MGRAS_CMAP_REV - 1];
    volatile uint8_t    reserved;
    uint8_t             pad8[0x400 - MGRAS_CMAP_RESERVED - 1];
} _MScmap;

/*
 * TrueColor RAMDAC DCB Interface (0x1F061000 - Device 4)
 *
 * Analog Devices ADV7161 / ADV7162 TrueColor 220 MHz triple 10-bit video RAMDAC.
 * Contains:
 *   - Video clock generation PLL (registers 0x09, 0x0C, 0x0F)
 *   - GLOBAL SCREEN-WIDE GAMMA LOOK-UP TABLE (LUT):
 *       * Triple 256-entry x 10-bit RAM for Red, Green, and Blue channels.
 *       * Programmed via 'pal' register as sequential R, G, B 10-bit values.
 *       * Corrects all pixels uniformly (TrueColor RGB and CMAP-translated CI)
 *         before D/A conversion to analog RGB outputs.
 */
#define MGRAS_DAC_ADDR          (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_2)
#define MGRAS_DAC_PAL           (MGRAS_DCB_CRS(1) | MGRAS_DCB_DATAWIDTH_2)
#define MGRAS_DAC_CMD           (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_DAC_MODE          (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_1)
/* After the MCO sequence (device 11 above) the X server's mgrasBlankScreen
 * writes 4 to byte 1 of ADDR (0x61811), then 0 or 0xFF, by branch, to CRS 2
 * as a 16-bit access (0x61910). Which DAC register that reaches is not
 * known. */

typedef struct {
    uint8_t             pad0[MGRAS_DAC_ADDR];
    volatile uint16_t   addr;
    uint8_t             pad1[MGRAS_DAC_PAL - MGRAS_DAC_ADDR - 2];
    volatile uint16_t   pal;
    uint8_t             pad2[MGRAS_DAC_CMD - MGRAS_DAC_PAL - 2];
    volatile uint8_t    cmd;
    uint8_t             pad3[MGRAS_DAC_MODE - MGRAS_DAC_CMD - 1];
    volatile uint8_t    mode;
    uint8_t             pad4[0x400 - MGRAS_DAC_MODE - 1];
} _ADVdac;

/* VC3 Video Controller DCB Interface (0x1F062000) */
#define MGRAS_VC3_INDEX         (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_1)
#define MGRAS_VC3_INDEXDATA     (MGRAS_DCB_CRS(0) | MGRAS_DCB_ENCRSINC | MGRAS_DCB_DATAWIDTH_3)
#define MGRAS_VC3_DATA          (MGRAS_DCB_CRS(1) | MGRAS_DCB_ENCRSINC | MGRAS_DCB_DATAWIDTH_2)
#define MGRAS_VC3_RAM_64BIT     (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_4)
#define MGRAS_VC3_RAM           (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_2)

typedef struct {
    uint8_t             pad0[MGRAS_VC3_INDEX];
    volatile uint8_t    index;
    uint8_t             pad1[MGRAS_VC3_INDEXDATA - MGRAS_VC3_INDEX - 1];
    volatile uint32_t   indexdata;
    uint8_t             pad2[MGRAS_VC3_DATA - MGRAS_VC3_INDEXDATA - 4];
    volatile uint16_t   data;
    uint8_t             pad3[MGRAS_VC3_RAM_64BIT - MGRAS_VC3_DATA - 2];
    volatile uint64_t   ram64;
    uint8_t             pad4[MGRAS_VC3_RAM - MGRAS_VC3_RAM_64BIT - 8];
    volatile uint16_t   ram;
    uint8_t             pad5[0x400 - MGRAS_VC3_RAM - 2];
} _vc3;

/* Board Version DCB Interface (0x1F062400) */
typedef struct {
    volatile uint8_t    bdvers0;
    uint8_t             pad0;
    volatile uint8_t    bdvers1;
    uint8_t             pad1[0x400 - 3];
} _mgrasbd;

/*
 * ============================================================================
 * RASTER SUBSYSTEM (RSS) REGISTER STRUCTS (Single, Paired, Extended)
 * ============================================================================
 */

/* Single RSS register file (32-bit word view: 0x0000 - 0x01AF) */
typedef struct {
    /* Double buffered shared RE/TE registers */
    volatile uint32_t   tri_x0;             /* 0x0000 */
    volatile uint32_t   tri_x1;             /* 0x0001 */
    volatile uint32_t   tri_x2;             /* 0x0002 */
    volatile uint32_t   tri_ymax;           /* 0x0003 */
    volatile uint32_t   tri_ymid;           /* 0x0004 */
    volatile uint32_t   tri_ymin;           /* 0x0005 */
    volatile uint32_t   tri_dxdy0;          /* 0x0006 */
    volatile uint32_t   tri_dxdy0_low;      /* 0x0007 */
    volatile uint32_t   tri_dxdy1_hi;       /* 0x0008 */
    volatile uint32_t   tri_dxdy1_low;      /* 0x0009 */
    volatile uint32_t   tri_dxdy2_hi;       /* 0x000A */
    volatile uint32_t   tri_dxdy2_low;      /* 0x000B */
    volatile uint32_t   gline_xstartf;      /* 0x000C */
    volatile uint32_t   gline_ystartf;      /* 0x000D */
    volatile uint32_t   gline_xendf;        /* 0x000E */
    volatile uint32_t   gline_yendf;        /* 0x000F */
    volatile uint32_t   gline_dx;           /* 0x0010 */
    volatile uint32_t   gline_dy;           /* 0x0011 */
    volatile uint32_t   gline_adjust;       /* 0x0012 */
    volatile uint32_t   ir;                 /* 0x0013 */
    volatile uint32_t   _pad014[0x40 - 0x14];

    /* Double buffered RE registers */
    volatile uint32_t   xline_xystarti;     /* 0x0040 */
    volatile uint32_t   xline_xyendi;       /* 0x0041 */
    volatile uint32_t   xline_inc1;         /* 0x0042 */
    volatile uint32_t   xline_inc2;         /* 0x0043 */
    volatile uint32_t   xline_error_oct;    /* 0x0044 */
    volatile uint32_t   ir_alias;           /* 0x0045 */
    volatile uint32_t   block_xystarti;     /* 0x0046 */
    volatile uint32_t   block_xyendi;       /* 0x0047 */
    volatile uint32_t   block_xymove;       /* 0x0048 */
    volatile uint32_t   block_xsaveoct;     /* 0x0049 */
    volatile uint32_t   _pad04a[0x5B - 0x4A];
    volatile uint32_t   packed_color;       /* 0x005B */
    volatile uint32_t   red;                /* 0x005C */
    volatile uint32_t   green;              /* 0x005D */
    volatile uint32_t   blue;               /* 0x005E */
    volatile uint32_t   alpha;              /* 0x005F */
    volatile uint32_t   dre;                /* 0x0060 */
    volatile uint32_t   drx;                /* 0x0061 */
    volatile uint32_t   dge;                /* 0x0062 */
    volatile uint32_t   dgx;                /* 0x0063 */
    volatile uint32_t   dbe;                /* 0x0064 */
    volatile uint32_t   dbx;                /* 0x0065 */
    volatile uint32_t   dae;                /* 0x0066 */
    volatile uint32_t   dax;                /* 0x0067 */
    volatile uint32_t   z_hi;               /* 0x0068 */
    volatile uint32_t   z_low;              /* 0x0069 */
    volatile uint32_t   dzx_hi;             /* 0x006A */
    volatile uint32_t   dzx_low;            /* 0x006B */
    volatile uint32_t   dze_hi;             /* 0x006C */
    volatile uint32_t   dze_low;            /* 0x006D */
    volatile uint32_t   _pad06e[0x70 - 0x6E];
    volatile uint32_t   char_h;             /* 0x0070 */
    volatile uint32_t   char_l;             /* 0x0071 */
    volatile uint32_t   _pad072[0x80 - 0x72];

    /* Double buffered TE registers */
    union {
        /* Non-warp (WARP_ENABLE = 0) */
        struct {
            volatile uint32_t sw_u;         /* 0x0080 */
            volatile uint32_t sw_l;         /* 0x0081 */
            volatile uint32_t tw_dtx_u;     /* 0x0082 */
            volatile uint32_t tw_dtx_l;     /* 0x0083 */
            volatile uint32_t wi_u;         /* 0x0084 */
            volatile uint32_t wi_l;         /* 0x0085 */
            volatile uint32_t dwie_u;       /* 0x0086 */
            volatile uint32_t dwie_l;       /* 0x0087 */
            volatile uint32_t dwix_u;       /* 0x0088 */
            volatile uint32_t dwix_l;       /* 0x0089 */
            volatile uint32_t dwiy_u;       /* 0x008A */
            volatile uint32_t dwiy_l;       /* 0x008B */
            volatile uint32_t txscale;      /* 0x008C */
            volatile uint32_t _pad08d[0xC0 - 0x8D];
            volatile uint32_t dswe_u;       /* 0x00C0 */
            volatile uint32_t dswe_l;       /* 0x00C1 */
            volatile uint32_t dtwe_u;       /* 0x00C2 */
            volatile uint32_t dtwe_l;       /* 0x00C3 */
            volatile uint32_t dswx_u;       /* 0x00C4 */
            volatile uint32_t dswx_l;       /* 0x00C5 */
            volatile uint32_t dtwx_u;       /* 0x00C6 */
            volatile uint32_t dtwx_l;       /* 0x00C7 */
            volatile uint32_t dswy_u;       /* 0x00C8 */
            volatile uint32_t dswy_l;       /* 0x00C9 */
            volatile uint32_t dtwy_u;       /* 0x00CA */
            volatile uint32_t dtwy_l;       /* 0x00CB */
            volatile uint32_t _pad0cc[0x100 - 0xCC];
        } nw;
        /* Warp enabled (WARP_ENABLE = 1) */
        struct {
            volatile uint32_t dsx_u;        /* 0x0080 */
            volatile uint32_t dsx_l;        /* 0x0081 */
            volatile uint32_t dtx_u;        /* 0x0082 */
            volatile uint32_t dtx_l;        /* 0x0083 */
            volatile uint32_t swarp_u;      /* 0x0084 */
            volatile uint32_t swarp_l;      /* 0x0085 */
            volatile uint32_t dse_u;        /* 0x0086 */
            volatile uint32_t dse_l;        /* 0x0087 */
            volatile uint32_t dte_u;        /* 0x0088 */
            volatile uint32_t dte_l;        /* 0x0089 */
            volatile uint32_t twarp_u;      /* 0x008A */
            volatile uint32_t twarp_l;      /* 0x008B */
            volatile uint32_t _pad08c[0xC0 - 0x8C];
            volatile uint32_t dsxe_u;       /* 0x00C0 */
            volatile uint32_t dsxe_l;       /* 0x00C1 */
            volatile uint32_t dtxe_u;       /* 0x00C2 */
            volatile uint32_t dtxe_l;       /* 0x00C3 */
            volatile uint32_t dsxx_u;       /* 0x00C4 */
            volatile uint32_t dsxx_l;       /* 0x00C5 */
            volatile uint32_t dtxx_u;       /* 0x00C6 */
            volatile uint32_t dtxx_l;       /* 0x00C7 */
            volatile uint32_t dsee_u;       /* 0x00C8 */
            volatile uint32_t dsee_l;       /* 0x00C9 */
            volatile uint32_t dtee_u;       /* 0x00CA */
            volatile uint32_t dtee_l;       /* 0x00CB */
            volatile uint32_t dsex_u;       /* 0x00CC */
            volatile uint32_t dsex_l;       /* 0x00CD */
            volatile uint32_t dtex_u;       /* 0x00CE */
            volatile uint32_t dtex_l;       /* 0x00CF */
            volatile uint32_t _pad0d0[0x100 - 0xD0];
        } w;
    } warp;

    /* Single buffered shared RE/TE registers */
    volatile uint32_t   xfrabort;           /* 0x0100 */
    volatile uint32_t   _pad101;
    volatile uint32_t   xfrcontrol;         /* 0x0102 */
    volatile uint32_t   _pad103[0x110 - 0x103];
    volatile uint32_t   fillmode;           /* 0x0110 */
    volatile uint32_t   texmode1;           /* 0x0111 */
    volatile uint32_t   config;             /* 0x0112 */
    volatile uint32_t   scissorx;           /* 0x0113 */
    volatile uint32_t   scissory;           /* 0x0114 */
    volatile uint32_t   xywin;              /* 0x0115 */
    volatile uint32_t   _pad116[0x140 - 0x116];

    /* Single buffered RE registers */
    volatile uint32_t   bkgrd_rg;           /* 0x0140 */
    volatile uint32_t   bkgrd_ba;           /* 0x0141 */
    volatile uint32_t   txenv_rg;           /* 0x0142 */
    volatile uint32_t   txenv_b;            /* 0x0143 */
    volatile uint32_t   fog_rg;             /* 0x0144 */
    volatile uint32_t   fog_b;              /* 0x0145 */
    volatile uint32_t   glineconfig;        /* 0x0146 */
    volatile uint32_t   scrmsk1x;           /* 0x0147 */
    volatile uint32_t   scrmsk1y;           /* 0x0148 */
    volatile uint32_t   scrmsk2x;           /* 0x0149 */
    volatile uint32_t   scrmsk2y;           /* 0x014A */
    volatile uint32_t   scrmsk3x;           /* 0x014B */
    volatile uint32_t   scrmsk3y;           /* 0x014C */
    volatile uint32_t   scrmsk4x;           /* 0x014D */
    volatile uint32_t   scrmsk4y;           /* 0x014E */
    volatile uint32_t   winmode;            /* 0x014F */
    volatile uint32_t   _pad150[0x153 - 0x150];
    volatile uint32_t   xfrsize;            /* 0x0153 */
    volatile uint32_t   xfrinitfactor;      /* 0x0154 */
    volatile uint32_t   xfrfactor;          /* 0x0155 */
    volatile uint32_t   xfrmasklow;         /* 0x0156 */
    volatile uint32_t   xfrmaskhigh;        /* 0x0157 */
    volatile uint32_t   xfrcounters;        /* 0x0158 */
    volatile uint32_t   xfrmode;            /* 0x0159 */
    volatile uint32_t   lspat;              /* 0x015A */
    volatile uint32_t   lscrl;              /* 0x015B */
    volatile uint32_t   device_addr;        /* 0x015C */
    volatile uint32_t   device_data;        /* 0x015D */
    volatile uint32_t   status;             /* 0x015E */
    volatile uint32_t   re_togglecntx;      /* 0x015F */
    volatile uint32_t   PixCmd;             /* 0x0160 */
    volatile uint32_t   pp1fillmode;        /* 0x0161 */
    volatile uint32_t   ColorMaskMSBs;      /* 0x0162 */
    volatile uint32_t   ColorMaskLSBsA;     /* 0x0163 */
    volatile uint32_t   ColorMaskLSBsB;     /* 0x0164 */
    volatile uint32_t   BlendFactor;        /* 0x0165 */
    volatile uint32_t   Stencilmode;        /* 0x0166 */
    volatile uint32_t   Stencilmask;        /* 0x0167 */
    volatile uint32_t   Zmode;              /* 0x0168 */
    volatile uint32_t   Afuncmode;          /* 0x0169 */
    volatile uint32_t   Accmode;            /* 0x016A */
    volatile uint32_t   BlendcolorRG;       /* 0x016B */
    volatile uint32_t   BlendcolorBA;       /* 0x016C */
    volatile uint32_t   DRBpointers;        /* 0x016D */
    volatile uint32_t   DRBsize;            /* 0x016E */
    volatile uint32_t   TAGmode;            /* 0x016F */
    volatile uint32_t   TAGdata_R;          /* 0x0170 */
    volatile uint32_t   TAGdata_G;          /* 0x0171 */
    volatile uint32_t   TAGdata_B;          /* 0x0172 */
    volatile uint32_t   TAGdata_A;          /* 0x0173 */
    volatile uint32_t   TAGdata_Z;          /* 0x0174 */
    volatile uint32_t   PixCoordinate;      /* 0x0175 */
    volatile uint32_t   PIXcolorR;          /* 0x0176 */
    volatile uint32_t   PIXcolorG;          /* 0x0177 */
    volatile uint32_t   PIXcolorB;          /* 0x0178 */
    volatile uint32_t   PIXcolorA;          /* 0x0179 */
    volatile uint32_t   PIXcolorAcc;        /* 0x017A */
    volatile uint32_t   pp1winmode;         /* 0x017B */
    volatile uint32_t   _pad17c[0x17E - 0x17C];
    volatile uint32_t   MainBufSel;         /* 0x017E */
    volatile uint32_t   OlayBufSel;         /* 0x017F */

    /* Single buffered TE registers */
    volatile uint32_t   texmode2;           /* 0x0180 */
    volatile uint32_t   txsize;             /* 0x0181 */
    volatile uint32_t   txtile;             /* 0x0182 */
    volatile uint32_t   txlod;              /* 0x0183 */
    volatile uint32_t   txbcolor_rg;        /* 0x0184 */
    volatile uint32_t   txbcolor_ba;        /* 0x0185 */
    volatile uint32_t   txbase;             /* 0x0186 */
    volatile uint32_t   tram_cntrl;         /* 0x0187 */
    volatile uint32_t   max_pixel_rg;       /* 0x0188 */
    volatile uint32_t   max_pixel_ba;       /* 0x0189 */
    volatile uint32_t   mddma_cntrl;        /* 0x018A */
    volatile uint32_t   texrbuffer;         /* 0x018B */
    volatile uint32_t   txclampsize;        /* 0x018C */
    volatile uint32_t   _pad18d[0x190 - 0x18D];
    volatile uint32_t   txaddr;             /* 0x0190 */
    volatile uint32_t   txmipmap;           /* 0x0191 */
    volatile uint32_t   txdetail;           /* 0x0192 */
    volatile uint32_t   txborder;           /* 0x0193 */
    volatile uint32_t   detailscale;        /* 0x0194 */
    volatile uint32_t   te_togglecntx;      /* 0x0195 */
    volatile uint32_t   teversion;          /* 0x0196 */
    volatile uint32_t   _pad197[0x1A0 - 0x197];
    volatile uint32_t   tl_wbuffer;         /* 0x01A0 */
    volatile uint32_t   tl_mode;            /* 0x01A1 */
    volatile uint32_t   tl_spec;            /* 0x01A2 */
    volatile uint32_t   tl_addr;            /* 0x01A3 */
    volatile uint32_t   tl_mipmap;          /* 0x01A4 */
    volatile uint32_t   tl_border;          /* 0x01A5 */
    volatile uint32_t   tl_vidcntrl;        /* 0x01A6 */
    volatile uint32_t   tl_base;            /* 0x01A7 */
    volatile uint32_t   tl_vidabort;        /* 0x01A8 */
    volatile uint32_t   tl_s_size;          /* 0x01A9 */
    volatile uint32_t   tl_t_size;          /* 0x01AA */
    volatile uint32_t   tl_s_left;          /* 0x01AB */
    volatile uint32_t   tl_t_bottom;        /* 0x01AC */
    volatile uint32_t   _pad1ad[0x1AF - 0x1AD];
    volatile uint32_t   reserved;           /* 0x01AF */
} rss_single;

/* Paired 64-bit RSS register view */
typedef struct {
    volatile uint64_t   tri_x1_x0;          /* 0x0000 */
    volatile uint64_t   tri_ymax_x2;        /* 0x0002 */
    volatile uint64_t   tri_ymin_ymid;      /* 0x0004 */
    volatile uint64_t   tri_dxdy0;          /* 0x0006 */
    volatile uint64_t   tri_dxdy1;          /* 0x0008 */
    volatile uint64_t   tri_dxdy2;          /* 0x000A */
    volatile uint64_t   gline_ystartf_xstartf; /* 0x000C */
    volatile uint64_t   gline_yendf_xendf;  /* 0x000E */
    volatile uint64_t   gline_dy_dx;        /* 0x0010 */
    volatile uint32_t   _pad012[0x42 - 0x12];
    volatile uint64_t   xline_inc2_inc1;    /* 0x0042 */
    volatile uint64_t   ir_xline_error_oct; /* 0x0044 */
    volatile uint32_t   _pad046[0x5C - 0x46];
    volatile uint64_t   green_red;          /* 0x005C */
    volatile uint64_t   alpha_blue;         /* 0x005E */
    volatile uint64_t   drx_dre;            /* 0x0060 */
    volatile uint64_t   dgx_dge;            /* 0x0062 */
    volatile uint64_t   dbx_dbe;            /* 0x0064 */
    volatile uint64_t   dax_dae;            /* 0x0066 */
} rss_paired;

/* Extended RSS register view (0x0200+) */
typedef struct {
    volatile uint64_t   z;                  /* 0x0268 */
    volatile uint64_t   dzx;                /* 0x026A */
    volatile uint64_t   dze;                /* 0x026C */
    volatile uint32_t   _pad26e[0x280 - 0x26E];
    union {
        struct {
            volatile uint64_t sw;           /* 0x0280 */
            volatile uint64_t tw_dtx;       /* 0x0282 */
            volatile uint64_t wi;           /* 0x0284 */
            volatile uint64_t dwie;         /* 0x0286 */
            volatile uint64_t dwix;         /* 0x0288 */
            volatile uint64_t dwiy;         /* 0x028A */
            volatile uint32_t _pad28c[0x2C0 - 0x28C];
            volatile uint64_t dswe;         /* 0x02C0 */
            volatile uint64_t dtwe;         /* 0x02C2 */
            volatile uint64_t dswx;         /* 0x02C4 */
            volatile uint64_t dtwx;         /* 0x02C6 */
            volatile uint64_t dswy;         /* 0x02C8 */
            volatile uint64_t dtwy;         /* 0x02CA */
        } nw;
        struct {
            volatile uint64_t dsx;          /* 0x0280 */
            volatile uint64_t dtx;          /* 0x0282 */
            volatile uint64_t swarp;        /* 0x0284 */
            volatile uint64_t dse;          /* 0x0286 */
            volatile uint64_t dte;          /* 0x0288 */
            volatile uint64_t twarp;        /* 0x028A */
            volatile uint32_t _pad28c[0x2C0 - 0x28C];
            volatile uint64_t dsxe;         /* 0x02C0 */
            volatile uint64_t dtxe;         /* 0x02C2 */
            volatile uint64_t dsxx;         /* 0x02C4 */
            volatile uint64_t dtxx;         /* 0x02C6 */
            volatile uint64_t dsee;         /* 0x02C8 */
            volatile uint64_t dtee;         /* 0x02CA */
            volatile uint64_t dsex;         /* 0x02CC */
            volatile uint64_t dtex;         /* 0x02CE */
        } w;
    } warp;
} rss_extended;

/* Combined Raster Subsystem address map */
typedef struct {
    union {
        rss_single      s;
        rss_paired      p;
    } n;                                    /* 0x0000 */
    volatile uint8_t    pad[4 * 0x200 - sizeof(rss_single)];
    rss_extended        x;                  /* 0x0200 */
} raster;

/*
 * ============================================================================
 * COMPLETE BOARD MEMORY MAP (mgras_hw)
 * ============================================================================
 */
typedef struct mgras_hw_s {
    /* 0x00000 - 0x3FFFF: Unmapped / GIO ID */
    volatile uint32_t   gio_id;                                 /* 0x00000 */
    volatile uint8_t    _pad_id[0x40000 - 4];

    /* 0x40000 - 0x45FFF: HQ3 Microcode RAM (24-bit words) */
    volatile uint32_t   hquc[0x6000 / 4];                       /* 0x40000 */

    /* 0x46000 - 0x4FFFF: HQ3 Control / Diagnostics */
    volatile uint32_t   hqpc;                                   /* 0x46000 */
    volatile uint8_t    _pad_pc[0x47000 - 0x46004];
    volatile uint32_t   cp_data;                                /* 0x47000 */
    volatile uint8_t    _pad_cp[0x4C000 - 0x47004];
    volatile uint32_t   rss_diag[(0x50000 - 0x4C000) / 4];      /* 0x4C000 */

    /* 0x50000 - 0x5FFFF: HQ3 Privileged Registers */
    volatile uint32_t   hq_config;                              /* 0x50000 */
    volatile uint32_t   flag_ctx;                               /* 0x50004 */
    volatile uint32_t   flag_set_priv;                          /* 0x50008 */
    volatile uint32_t   flag_clr_priv;                          /* 0x5000C */
    volatile uint32_t   flag_enab_set;                          /* 0x50010 */
    volatile uint32_t   flag_enab_clr;                          /* 0x50014 */
    volatile uint32_t   intr_enab_set;                          /* 0x50018 */
    volatile uint32_t   intr_enab_clr;                          /* 0x5001C */
    volatile uint32_t   cfifo_hw;                               /* 0x50020 */
    volatile uint32_t   cfifo_lw;                               /* 0x50024 */
    volatile uint32_t   cfifo_delay;                            /* 0x50028 */
    volatile uint32_t   dfifo_hw;                               /* 0x5002C */
    volatile uint32_t   dfifo_lw;                               /* 0x50030 */
    volatile uint32_t   dfifo_delay;                            /* 0x50034 */
    volatile uint8_t    _pad_fifo[8];
    volatile uint32_t   ge0_diag_d;                             /* 0x50040 */
    volatile uint32_t   ge0_diag_a;                             /* 0x50044 */
    volatile uint32_t   ge1_diag_d;                             /* 0x50048 */
    volatile uint32_t   ge1_diag_a;                             /* 0x5004C */
    /*
     * Context switch request: the IRIX 6.5 kernel writes the microcode
     * address of the switch routine here (e.g. 0x4FC). The 1994 diagnostic
     * mgrashw.h put it at 0x500F8 and the privileged FIFO at 0x500F0;
     * production drivers use the addresses below.
     */
    volatile uint32_t   ctxsw;                                  /* 0x50050 */
    volatile uint8_t    _pad_diag[0x50080 - 0x50054];
    /*
     * Privileged command FIFO: a 64-bit port. A doubleword store at 0x50080
     * pushes two words (high first); a word store at 0x50084 pushes one.
     */
    dcbdata64           cfifo_priv;                             /* 0x50080 */
    volatile uint8_t    _pad_ctx[0x50100 - 0x50088];
    volatile uint32_t   ctx_data;                               /* 0x50100 */
    volatile uint8_t    _pad_ctx2[4];
    volatile uint32_t   bfifo_hw;                               /* 0x50108 */
    volatile uint32_t   bfifo_lw;                               /* 0x5010C */
    volatile uint32_t   bfifo_delay;                            /* 0x50110 */
    volatile uint32_t   gio_config;                             /* 0x50114 */
    volatile uint8_t    _pad_cfg[0x50200 - 0x50118];
    volatile uint32_t   reif_ctx[(0x300 - 0x200) / 4];          /* 0x50200 */
    volatile uint32_t   hag_ctx[(0x500 - 0x300) / 4];           /* 0x50300 */
    volatile uint32_t   hif_ctx[(0x600 - 0x500) / 4];           /* 0x50500 */
    volatile uint32_t   gio_ctx[(0x700 - 0x600) / 4];           /* 0x50600 */
    volatile uint8_t    _pad_ctx3[0x800 - 0x700];
    volatile uint32_t   tlb[(0x880 - 0x800) / 4];               /* 0x50800 */
    volatile uint32_t   tlb_curr_addr;                          /* 0x50880 */
    volatile uint8_t    _pad_tlb[0x900 - 0x884];
    volatile uint32_t   tlb_valids;                             /* 0x50900 */
    volatile uint8_t    _pad_priv_end[0x60000 - 0x50904];

    /*
     * 0x60000 - 0x67FFF: Display Control Bus (DCB) windows, 1 KB per device
     * (MGRAS_DCB_DEV_*). The 1994 diagnostic mgrashw.h listed these in a
     * different order; the order below is the production one, confirmed by
     * the per-device timing words the kernel programs (dcbctrl_* below) and
     * by the X server's accesses.
     */
    volatile uint8_t    _dcbdev0_2[3 * 0x400];                  /* 0x60000 devices 0-2: unused */
    _MScmap             cmapall;                                /* 0x60C00 device 3: CMAP0 + CMAP1 */
    _MScmap             cmap0;                                  /* 0x61000 device 4 */
    _MScmap             cmap1;                                  /* 0x61400 device 5 */
    _ADVdac             dac;                                    /* 0x61800 device 6 */
    _pp1xmap            xmap;                                   /* 0x61C00 device 7: XMAP in the PP1s */
    _vc3                vc3;                                    /* 0x62000 device 8 */
    _mgrasbd            bdvers;                                 /* 0x62400 device 9 */
    volatile uint8_t    _dcbdev10_15[6 * 0x400];                /* 0x62800 devices 10-15 (11: I2C) */
    volatile uint8_t    _pad_dcb_win[0x8000 - 0x4000];

    /*
     * 0x68000 - 0x6FFFF: DCB protocol timing, one word per device. Values the
     * IRIX 6.5 kernel (MgrasInitBoardGfx) writes: 0x108C for the three CMAP
     * targets, 0x1084 DAC, 0x318C XMAP, 0x210A VC3 (async ack), 0x1090 BDVERS.
     */
    volatile uint32_t   dcbctrl_0;                              /* 0x68000 */
    volatile uint32_t   dcbctrl_1;                              /* 0x68004 */
    volatile uint32_t   dcbctrl_2;                              /* 0x68008 */
    volatile uint32_t   dcbctrl_cmapall;                        /* 0x6800C */
    volatile uint32_t   dcbctrl_cmap0;                          /* 0x68010 */
    volatile uint32_t   dcbctrl_cmap1;                          /* 0x68014 */
    volatile uint32_t   dcbctrl_dac;                            /* 0x68018 */
    volatile uint32_t   dcbctrl_xmap;                           /* 0x6801C */
    volatile uint32_t   dcbctrl_vc3;                            /* 0x68020 */
    volatile uint32_t   dcbctrl_bdvers;                         /* 0x68024 */
    volatile uint32_t   dcbctrl_10;                             /* 0x68028 */
    volatile uint32_t   dcbctrl_i2c;                            /* 0x6802C */
    volatile uint32_t   dcbctrl_12;                             /* 0x1F068030 */
    volatile uint32_t   dcbctrl_13;                             /* 0x1F068034 */
    volatile uint32_t   dcbctrl_14;                             /* 0x1F068038 */
    volatile uint32_t   dcbctrl_15;                             /* 0x1F06803C */
    volatile uint8_t    _pad_dcb_ctrl_end[0x70000 - 0x68040];

    /* 0x70000 - 0x7BFFF: User Space Registers & Status */
    volatile uint32_t   status;                                 /* 0x1F070000 */
    volatile uint32_t   fifo_status;                            /* 0x1F070004 */
    volatile uint32_t   flag_set;                               /* 0x1F070008 */
    volatile uint32_t   flag_clr;                               /* 0x1F07000C */
    volatile uint32_t   rebus_read_hi;                          /* 0x1F070010 */
    volatile uint32_t   rebus_read_lo;                          /* 0x1F070014 */
    volatile uint8_t    _pad_user[0x70080 - 0x70018];
    /*
     * User command FIFO: a 64-bit port like cfifo_priv. The X server and the
     * kernel store doublewords at 0x70080 and words at 0x70084.
     */
    dcbdata64           cfifo;                                  /* 0x70080 */
    volatile uint8_t    _pad_user2[0x70100 - 0x70088];
    volatile uint32_t   gio_status;                             /* 0x70100 */
    volatile uint32_t   busy_dma;                               /* 0x70104 */
    volatile uint8_t    _pad_user3[0x74080 - 0x70108];
    /*
     * libGLcore's immediate-mode path stores its command words (GL tokens,
     * HQ3.h "COMMAND SPACE") as 32-bit words here. Assumed to be another
     * view of the user command FIFO; not yet seen on a running system.
     */
    volatile uint32_t   cfifo_gl;                               /* 0x74080 */
    volatile uint8_t    _pad_user_end[0x7C000 - 0x74084];

    /* 0x7C000 - 0x7FFFF: Raster Subsystem Direct Access (Single / Paired / Extended) */
    raster              rss;                                    /* 0x1F07C000 */
    volatile uint8_t    _pad_rss_end[0x4000 - sizeof(raster)];

    /* 0x80000 - 0xFFFFF: Fast Command FIFO Window (512 KB) */
    dcbdata64           cfifo_cmd[0x80000 / 8];                 /* 0x1F080000 */
} mgras_hw;

/*
 * ============================================================================
 * BOARD DESCRIPTOR & REVISION STRUCTURES
 * ============================================================================
 */
typedef struct mgras_info_s {
    uint32_t            board_type;         /* Board type flag (SI, HI, MaxI) */
    uint32_t            board_rev;          /* Board revision number */
    uint32_t            ge_count;           /* Number of GE11 ASICs (1 or 2) */
    uint32_t            re_count;           /* Number of RE4 ASICs (1 or 2) */
    uint32_t            pp1_count;          /* Number of PP1 ASICs (4 or 5) */
    uint32_t            tram_count;         /* Number of TRAM chips (0, 1, or 4) */
    uint32_t            tram_size_mb;       /* Texture memory in MB (0, 1, or 4) */
    uint32_t            has_zbuffer;        /* Z-buffer present flag */
    uint32_t            video_timing;       /* Active video timing code */
} mgras_info_t;

#ifdef __cplusplus
}
#endif

#endif /* _SGI_MGRAS_H_ */
