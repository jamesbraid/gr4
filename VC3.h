/*
 * VC3.h - Silicon Graphics Impact Graphics (MGRAS) VC3 Video Controller
 *
 * Video Controller 3 (VC3), Video Timing, Cursor, and DID Frame Composition for SGI Impact (GR4).
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Synthesized from:
 *   - SGI IRIX PROM (stand/arcs/lib/libsk/graphics/MGRAS)
 *   - SGI IDE diagnostics (stand/arcs/ide/isddevices/graphics/MGRAS/mgras_vc3.c, mgras_vc3_register.c)
 *   - IRIX 6.5.0 kernel modules (mgras_retrace.o, mgras_timing.o, mgras_init.o)
 *   - Existing IRIS emulator implementation (~/gits/iris/src/dev/mgras/dcb.rs)
 */

#ifndef _SGI_VC3_H_
#define _SGI_VC3_H_

#include <stdint.h>
#include "MGRAS.h"

#ifdef __cplusplus
extern "C" {
#endif

/*
 * ============================================================================
 * ARCHITECTURE OVERVIEW: VC3 VIDEO CONTROLLER
 * ============================================================================
 *
 * Gate Count:      ~80,000 gates
 * Dot Clock:       Up to 220 MHz (drives ADV7125 / Brooktree RAMDAC)
 * SRAM Capacity:   32,768 x 16-bit words (64 KB total internal SRAM)
 *
 * VC3 is the master video timing generator, hardware cursor engine, and display
 * compositing controller for Impact graphics. It resides on the Display Control Bus
 * (DCB device 8 at slot offset 0x62000).
 *
 * Major Functional Subsystems:
 *
 * 1. PROGRAMMABLE VIDEO TIMING GENERATOR (VTG):
 *    - Microcoded state machine executing instructions stored in internal SRAM.
 *    - Horizontal Line Tables (VC3_VID_LINETAB_ADDR at 0x000): 768 words specifying
 *      exact clock cycle durations for active video, front porch, HSync, back porch,
 *      blanking, and equalization pulses.
 *    - Vertical Frame Tables (VC3_VID_FRAMETAB_ADDR at 0x380): 128 words looping line
 *      table sequences to construct fields and frames (active scanlines, VBlank, VSync).
 *    - Generates master HSync, VSync, Composite Blanking, and Genlock synchronization.
 *
 * 2. 64x64 HARDWARE CURSOR ENGINE:
 *    - Stored in VC3 SRAM at address 0x400 (aligned on a 256-word boundary).
 *    - 2 bits per pixel defining 4 states: Transparent, Cursor Color 0, Cursor Color 1,
 *      or Inverted Background.
 *    - Hardware Hotspot Offset Compensation: Hardware expects screen coordinates offset
 *      by (X - 31, Y - 31).
 *    - Built-in crosshair cursor generator spanning the entire display width/height.
 *
 * 3. DISPLAY IDENTIFIER (DID) COMPOSITOR:
 *    - Manages double-buffered DID line tables (DID_LINETAB1, DID_LINETAB2) and
 *      frame tables (DID_FRAMETAB1, DID_FRAMETAB2).
 *    - For each scanline, run-length encoded DID instructions select the active visual
 *      from XMAP, routing pixels between 8-bit CI, 24-bit TrueColor, overlays, and popup
 *      planes with per-pixel clipping.
 */

/*
 * ============================================================================
 * DCB REGISTER ACCESS (Device 8, Base Offset 0x62000)
 * ============================================================================
 */
#define VC3_DCB_OFFSET              0x62000

#define VC3_REG_INDEX               (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_1)
#define VC3_REG_INDEXDATA           (MGRAS_DCB_CRS(0) | MGRAS_DCB_ENCRSINC | MGRAS_DCB_DATAWIDTH_3)
#define VC3_REG_DATA                (MGRAS_DCB_CRS(1) | MGRAS_DCB_ENCRSINC | MGRAS_DCB_DATAWIDTH_2)
#define VC3_REG_RAM                 (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_2)
#define VC3_REG_RAM64               (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_4)

/*
 * ============================================================================
 * VC3 INTERNAL REGISTER INDICES
 * ============================================================================
 */
#define VC3_VID_EP                  0x00        /* Video timing execution pointer */
#define VC3_CURS_EP                 0x01        /* Cursor execution pointer */
#define VC3_CURS_X_LOC              0x02        /* Cursor horizontal screen coordinate */
#define VC3_CURS_Y_LOC              0x03        /* Cursor vertical screen coordinate */
#define VC3_DID_EP1                 0x04        /* DID table 1 execution pointer */
#define VC3_DID_EP2                 0x05        /* DID table 2 execution pointer */
#define VC3_SCAN_LENGTH             0x06        /* Scan line length in dot clocks */
#define VC3_RAM_ADDR                0x07        /* Internal SRAM address register */
#define VC3_VT_FRAME_TBL_PTR        0x08        /* Video timing frame table pointer */
#define VC3_VT_LINE_SEQ_PTR         0x09        /* Video timing line sequence pointer */
#define VC3_VT_LINES_RUN            0x0A        /* Video timing active scanline run count */
#define VC3_VERT_LINE_COUNT         0x0B        /* Current raster vertical scanline */
#define VC3_CURS_TBL_PTR            0x0C        /* Cursor table pointer */
#define VC3_WORKING_CURS_Y          0x0D        /* Active working cursor Y line */
#define VC3_CUR_CURSOR_X            0x0E        /* Current active cursor X coordinate */
#define VC3_DID_FRAMETAB1           0x10        /* DID Frame Table 1 pointer */
#define VC3_DID_LINETAB1            0x11        /* DID Line Table 1 pointer */
#define VC3_DID_FRAMETAB2           0x12        /* DID Frame Table 2 pointer */
#define VC3_DID_LINETAB2            0x13        /* DID Line Table 2 pointer */
#define VC3_CURS_CONTROL            0x1D        /* Cursor display control register */
#define VC3_DISPLAY_CONTROL         0x1E        /* Main display control register */
#define VC3_CONFIG                  0x1F        /* VC3 master configuration register */

/*
 * ============================================================================
 * VC3 INTERNAL SRAM ALLOCATION MAP (16-Bit Short Addresses: 0x0000 - 0x7FFF)
 * ============================================================================
 */
#define VC3_RAMSIZE                 8192        /* 8K shorts accessible per bank (32K total) */
#define VC3_RAM_MASK                0x7FFE      /* Mask for short word alignment */

#define VC3_VID_LINETAB_ADDR        0x0000      /* Line table entries (0x000 - 0x2FF, 768 words) */
#define VC3_VID_FRAMETAB_ADDR       0x0380      /* Frame table sequences (0x380 - 0x3FF, 128 words) */
#define VC3_CURS_GLYPH_ADDR         0x0400      /* 64x64 cursor glyph (0x400 - 0x4FF, 256 words) */

#define VC3_MAX_DID_FRAME_LEN_SHORT 1086        /* Up to 1085 scanlines + EOF */
#define VC3_DID_FRAMETAB1_BASE      0x0500      /* DID Frame Table 1 */
#define VC3_DID_FRAMETAB2_BASE      (VC3_DID_FRAMETAB1_BASE + VC3_MAX_DID_FRAME_LEN_SHORT)
#define VC3_DID_LINETAB1_BASE       (VC3_DID_FRAMETAB2_BASE + VC3_MAX_DID_FRAME_LEN_SHORT)
#define VC3_DID_LINETAB1_END        (VC3_DID_LINETAB1_BASE + ((0x8000 - VC3_DID_LINETAB1_BASE) / 2))
#define VC3_DID_LINETAB2_BASE       VC3_DID_LINETAB1_END
#define VC3_DID_LINETAB2_END        0x8000

/*
 * ============================================================================
 * REGISTER BIT DEFINITIONS & MASKS
 * ============================================================================
 */

/* Master Config Register (VC3_CONFIG: Index 0x1F) */
#define VC3_CFG_UNRESET             BIT(0)      /* 1 = Run normal operation, 0 = Hold in reset */
#define VC3_CFG_SLOW_CLOCK          BIT(1)      /* 1 = Half-speed pixel dot clock */
#define VC3_CFG_CURS_ERR            BIT(2)      /* Cursor FIFO underflow error flag */
#define VC3_CFG_DID_ERR1            BIT(3)      /* DID Table 1 buffer collision error */
#define VC3_CFG_DID_ERR2            BIT(4)      /* DID Table 2 buffer collision error */
#define VC3_CFG_VTG_ERR             BIT(5)      /* Video timing generator sync error */
#define VC3_CFG_REV_SHIFT           6           /* Silicon revision bits [7:6] */

/* Display Control Register (VC3_DISPLAY_CONTROL: Index 0x1E) */
#define VC3_DISP_VINTR              BIT(0)      /* Vertical retrace interrupt asserted */
#define VC3_DISP_BLACKOUT           BIT(1)      /* Force screen blackout (blank video) */
#define VC3_DISP_VIDEO_ENAB         BIT(2)      /* Master video scanout enable */
#define VC3_DISP_DID_ENAB1          BIT(3)      /* Enable DID visual routing table 1 */
#define VC3_DISP_DID_ENAB2          BIT(4)      /* Enable DID visual routing table 2 */
#define VC3_DISP_GENSYNC            BIT(5)      /* Genlock sync output enable */
#define VC3_DISP_GENLOCK            BIT(6)      /* External genlock slave enable */
#define VC3_DISP_INTERLACED         BIT(7)      /* 1 = Interlaced video, 0 = Progressive */
#define VC3_DISP_FIELD_ONLY         BIT(8)      /* Display single field only */
#define VC3_DISP_ODD_FIELD          BIT(9)      /* Current active field is odd */
#define VC3_DISP_ODD_FIELD_TIMING   BIT(10)     /* Odd field timing select */

/* Cursor Control Register (VC3_CURS_CONTROL: Index 0x1D) */
#define VC3_CURS_ENA_FUNCTION       BIT(0)      /* Master cursor logic enable */
#define VC3_CURS_ENA_DISPLAY        BIT(1)      /* Show cursor on active video */
#define VC3_CURS_CROSSHAIR          BIT(2)      /* Full-screen crosshair cursor enable */
#define VC3_CURS_GLYPH_64           BIT(3)      /* 1 = 64x64 glyph, 0 = 32x32 glyph */

/* Hardware Cursor Hotspot Offsets */
#define VC3_CURS_XOFF               31          /* Hardware subtracts 31 from X */
#define VC3_CURS_YOFF               31          /* Hardware subtracts 31 from Y */

/*
 * ============================================================================
 * STANDARD VIDEO TIMING CODES (mgras_const.h & PROM)
 * ============================================================================
 */
#define VC3_TIMING_1600_1200_60     0x159       /* 1600x1200 @ 60Hz */
#define VC3_TIMING_1600_1200_60_SI  0x156       /* 1600x1200 @ 60Hz (Solid Impact) */
#define VC3_TIMING_1280_1024_76     0x139       /* 1280x1024 @ 76Hz (Default IRIX desktop) */
#define VC3_TIMING_1280_1024_72     0x130       /* 1280x1024 @ 72Hz */
#define VC3_TIMING_1280_1024_60     0x107       /* 1280x1024 @ 60Hz */
#define VC3_TIMING_1280_1024_50     0x88        /* 1280x1024 @ 50Hz */
#define VC3_TIMING_1280_492_120ST   0x1074      /* 1280x492 @ 120Hz Stereo 3D */
#define VC3_TIMING_1280_1024_30I    0x54        /* 1280x1024 @ 30Hz Interlaced */
#define VC3_TIMING_1024_768_60      0x64        /* 1024x768 @ 60Hz */
#define VC3_TIMING_1024_768_60P     0x58        /* 1024x768 @ 60Hz Progressive */
#define VC3_TIMING_1024_768_100ST   0x108       /* 1024x768 @ 100Hz Stereo */
#define VC3_TIMING_1920_1035_60FI   0x149       /* HDTV 1920x1035 @ 60Hz */
#define VC3_TIMING_NTSC             0x195       /* NTSC Composite Video */
#define VC3_TIMING_PAL              0x236       /* PAL Composite Video */

#ifdef __cplusplus
}
#endif

#endif /* _SGI_VC3_H_ */
