/*
 * CMAP.h - Silicon Graphics Impact Graphics (MGRAS) CMAP, DAC & XMAP Subsystems
 *
 * Colormap ASICs (CMAP0, CMAP1), TrueColor RAMDAC, and XMAP Display Router for SGI Impact (GR4).
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Synthesized from:
 *   - SGI IRIX PROM (stand/arcs/lib/libsk/graphics/MGRAS)
 *   - SGI IDE diagnostics (stand/arcs/ide/isddevices/graphics/MGRAS/mgras_cmap.c, mgras_dac.c, mgras_xmap.c)
 *   - IRIX 6.5.0 kernel modules (mgras.o, mgras_init.o)
 *   - Existing IRIS emulator implementation (~/gits/iris/src/dev/mgras/dcb.rs)
 */

#ifndef _SGI_CMAP_H_
#define _SGI_CMAP_H_

#include <stdint.h>
#include "MGRAS.h"

#ifdef __cplusplus
extern "C" {
#endif

/*
 * ============================================================================
 * ARCHITECTURE OVERVIEW: CMAP, RAMDAC & XMAP
 * ============================================================================
 *
 * The Impact display backend combines multi-layer colormaps, high-speed RAMDACs,
 * and a per-pixel window routing engine (XMAP) to drive CRT and video outputs:
 *
 * Data Path:
 *   [RDRAM Framebuffer] -> [PP1 / XMAP Router] --(CI Index)--> [CMAP0/1 8Kx24 CLUT] --(24b RGB)--> [ADV7161/2 RAMDAC] -> Analog RGB
 *                                              --(Direct RGB)-----------------------------> (Global 256x10 Gamma LUT)
 *
 * Major Subsystems & Exact Hardware Roles:
 *
 * 1. DUAL CMAP ASICs (CMAP0 & CMAP1, Devices 4 & 5: 0x61000, 0x61400; Broadcast Device 3: 0x60C00):
 *    - Dual 8,192-entry (8K) x 24-bit palette ASICs (8-bit Red, 8-bit Green, 8-bit Blue).
 *    - Translates Color Index pixels (8-bit CI, 12-bit CI, overlay planes, popup planes)
 *      into 24-bit RGB (8:8:8).
 *    - Outputs 24-bit RGB to the video multiplexer (VIO) / RAMDAC.
 *    - NOTE: CMAP does NOT perform global gamma; it translates index to RGB.
 *
 * 2. TRUECOLOR RAMDAC (Analog Devices ADV7161 / ADV7162, Device 6: 0x61800):
 *    - Triple 10-bit high-speed D/A converters driving analog RGB outputs up to 220 MHz.
 *    - Integrated programmable PLL generates pixel dot clocks for all video formats.
 *    - Contains the GLOBAL SCREEN-WIDE GAMMA LOOK-UP TABLE (LUT):
 *        * Triple 256-entry x 10-bit RAM (RedGamma[256], GrnGamma[256], BluGamma[256]).
 *        * Programmed via dac.pal by the IRIX kernel (MgrasSetGammaRamp) or IDE (GammaTableLoad).
 *        * Translates 8-bit R, G, B channel inputs (from either TrueColor RGB or CMAP CI lookup)
 *          into 10-bit gamma-corrected DAC levels (0..1023).
 *        * Applies uniformly across the entire display to all windows, visuals, and planes.
 *
 * 3. PP1 XMAP DISPLAY ROUTER (Device 7: 0x61C00):
 *    - Integrated directly into each PP1 (Pixel Processor) ASIC; controls RDRAM scanout.
 *    - Driven on a per-pixel basis by Window Identifiers (WIDs / DIDs 0..31) from VC3.
 *    - Selects buffer sources: Front buffer vs Back buffer, Buffer A vs Buffer B (BUF_SELECT).
 *    - Configures visual mode per WID (MAIN_MODE):
 *        * Color Index modes (8-bit CI, 12-bit CI): Routes index bits to CMAP chips.
 *        * RGB TrueColor modes (12-bit RGB, 24-bit RGB): Routes raw RGB bits to backend.
 *    - Controls overlay/underlay plane display per WID (OVERLAY_MODE).
 *    - Controls Display Interface Buffer (DIB) scanout bursts and RAC memory refresh.
 *    - NOTE: XMAP does NOT perform gamma correction and contains NO color look-up tables.
 */

/*
 * ============================================================================
 * CMAP DCB REGISTERS (Devices 3, 4, 5)
 * ============================================================================
 */
#define CMAP_DCB_OFFSET_ALL         0x60C00     /* Broadcast write to CMAP0 & CMAP1 (Device 3) */
#define CMAP_DCB_OFFSET_0           0x61000     /* CMAP ASIC 0 (Device 4) */
#define CMAP_DCB_OFFSET_1           0x61400     /* CMAP ASIC 1 (Device 5) */

#define CMAP_REG_ADDRLO             (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_1)
#define CMAP_REG_ADDR               (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_2 | MGRAS_DCB_ENCRSINC)
#define CMAP_REG_ADDRHI             (MGRAS_DCB_CRS(1) | MGRAS_DCB_DATAWIDTH_1)
#define CMAP_REG_PAL                (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_3)
#define CMAP_REG_CMD                (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_1)
#define CMAP_REG_STATUS             (MGRAS_DCB_CRS(4) | MGRAS_DCB_DATAWIDTH_1)
#define CMAP_REG_REV                (MGRAS_DCB_CRS(6) | MGRAS_DCB_DATAWIDTH_1)
#define CMAP_REG_RESERVED           (MGRAS_DCB_CRS(7) | MGRAS_DCB_DATAWIDTH_1)

#define MGRAS_CMAP_TOTAL_ENTRIES    8192        /* 8K palette entries per chip */
#define MGRAS_CMAP_RAM_MASK         0x1FFF

/* CMAP Silicon Revisions */
#define CMAP_REV_D                  0x2
#define CMAP_REV_E                  0x3
#define CMAP_REV_F                  0x4

/* Standard Colormap Palette Ramps (for CI visuals) */
#define CMAP_PAL_RAMP_LINEAR_0      0x0AAD
#define CMAP_PAL_RAMP_LINEAR_1      0x0BAD
#define CMAP_PAL_RAMP_LINEAR_ALL    0x0DAD
#define CMAP_PAL_RAMP_COLORBARS     0x0DFB
#define CMAP_RAMP_LINEAR_0          CMAP_PAL_RAMP_LINEAR_0      /* Backward-compat alias */
#define CMAP_RAMP_LINEAR_1          CMAP_PAL_RAMP_LINEAR_1
#define CMAP_RAMP_LINEAR_ALL        CMAP_PAL_RAMP_LINEAR_ALL
#define CMAP_RAMP_COLORBARS         CMAP_PAL_RAMP_COLORBARS

/*
 * ============================================================================
 * TRUECOLOR RAMDAC (ADV7161 / ADV7162) & GLOBAL GAMMA TABLE (Device 6: 0x61800)
 * ============================================================================
 */
#define DAC_DCB_OFFSET              0x61800     /* TrueColor RAMDAC (Device 6) */

#define DAC_REG_ADDR                (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_2)
#define DAC_REG_PAL                 (MGRAS_DCB_CRS(1) | MGRAS_DCB_DATAWIDTH_2)
#define DAC_REG_CMD                 (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_1)
#define DAC_REG_MODE                (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_1)

/*
 * Global Screen-Wide Gamma Table Architecture:
 * - 256 entries for Red, Green, Blue channels.
 * - Each entry is 10 bits [0..1023] representing linear analog voltage levels.
 * - Programmed sequentially into DAC_REG_PAL as R, G, B triplets:
 *     base->dac.pal = ((r & 0x3FC) << 6) | (r & 0x3);
 *     base->dac.pal = ((g & 0x3FC) << 6) | (g & 0x3);
 *     base->dac.pal = ((b & 0x3FC) << 6) | (b & 0x3);
 * - All pixels (TrueColor RGB and CMAP Color Index) pass through this table
 *   to ensure uniform screen-wide gamma calibration across the entire display.
 */
#define DAC_GAMMA_TOTAL_ENTRIES     256
#define DAC_GAMMA_BITS              10
#define DAC_GAMMA_MAX_VAL           0x3FF

#define DAC_PACK_GAMMA(comp)        ((((comp) & 0x3FC) << 6) | ((comp) & 0x03))
#define DAC_UNPACK_GAMMA(raw)       ((((raw) & 0xFF00) >> 6) | ((raw) & 0x03))

/* Internal DAC Indirect Register Addresses */
#define DAC_ADDR_ID                 0x03        /* Product ID (0x76 = ADV7161 Old, 0x79 = ADV7162 New) */
#define DAC_ADDR_PIXMASK            0x04        /* Pixel read mask (0xFF = all planes active, 0 = blank) */
#define DAC_ADDR_CMD1               0x05        /* Command register 1 (pixel port mode & true color format) */
#define DAC_ADDR_CMD2               0x06        /* Command register 2 (sync on green & pedestal setup) */
#define DAC_ADDR_CMD3               0x07        /* Command register 3 (pixel multiplexing, 4:1 mux) */
#define DAC_ADDR_CMD4               0x08        /* Command register 4 (sync control) */
#define DAC_ADDR_PLL_CTL            0x09        /* Pixel clock PLL control */
#define DAC_ADDR_STATUS             0x0A        /* Status & PLL lock flag */
#define DAC_ADDR_REV                0x0B        /* Silicon revision */
#define DAC_ADDR_PLL_R              0x0C        /* PLL reference divisor */
#define DAC_ADDR_PLL_V              0x0F        /* PLL VCO multiplier */
#define DAC_ADDR_CURS               0x204       /* Cursor palette address */

/* Default DAC Initialization Values */
#define DAC_INIT_MODE               0x23        /* Standard RGB 24-bit TrueColor */
#define DAC_INIT_PIXMASK            0xFF        /* All 8 bitplanes active */
#define DAC_INIT_CMD1               0xC9        /* 8-bit DAC resolution, bypass */
#define DAC_INIT_CMD2               0xE4        /* Sync on Green enabled */
#define DAC_INIT_CMD3               0xC0
#define DAC_INIT_CMD4               0x06
#define DAC_INIT_CURS_DISABLE       0x01

#define DAC_ID_OLD                  0x76
#define DAC_ID_NEW                  0x79

/*
 * ============================================================================
 * PP1 XMAP DISPLAY ROUTER & BUFFER SELECTOR (Device 7: 0x61C00)
 * ============================================================================
 *
 * NOTE ON GAMMA & COLOR:
 *   XMAP DOES NOT APPLY GAMMA CORRECTION. It contains NO gamma ramps and NO
 *   color lookup tables.
 *
 *   XMAP's role is strictly digital scanout multiplexing:
 *   1. WID Decoding: Maps the 5-bit Window ID (0..31) from VC3 to window attributes.
 *   2. Buffer Selection: Routes Front Buffer vs Back Buffer to the scanout pipe.
 *   3. Visual Mode Selection: Formats bitplanes as Color Index (routed to CMAP)
 *      or TrueColor RGB (routed directly to the DAC).
 *   4. Overlay Switching: Controls overlay plane transparency and display.
 *   5. DIB Timing: Paces scanout bursts from RDRAM into the display FIFO.
 */
#define XMAP_DCB_OFFSET             0x61C00

#define XMAP_REG_PP1_SELECT         (MGRAS_DCB_CRS(0) | MGRAS_DCB_DATAWIDTH_1)
#define XMAP_REG_INDEX              (MGRAS_DCB_CRS(1) | MGRAS_DCB_DATAWIDTH_1)
#define XMAP_REG_CONFIG             (MGRAS_DCB_CRS(2) | MGRAS_DCB_DATAWIDTH_4)
#define XMAP_REG_REV                0x24
#define XMAP_REG_FIFO_CAP           0x28
#define XMAP_REG_BUF_SELECT         (MGRAS_DCB_CRS(3) | MGRAS_DCB_DATAWIDTH_4)
#define XMAP_REG_MAIN_MODE          (MGRAS_DCB_CRS(4) | MGRAS_DCB_DATAWIDTH_4)
#define XMAP_REG_OVERLAY_MODE       (MGRAS_DCB_CRS(5) | MGRAS_DCB_DATAWIDTH_4)
#define XMAP_REG_DIB                (MGRAS_DCB_CRS(6) | MGRAS_DCB_DATAWIDTH_4)
#define XMAP_REG_DIB_DW             (MGRAS_DCB_CRS(6) | MGRAS_DCB_DATAWIDTH_4 | MGRAS_DCB_ENDATAPACK)
#define XMAP_REG_RE_RAC             (MGRAS_DCB_CRS(7) | MGRAS_DCB_DATAWIDTH_4)

/* XMAP Configuration Bits (XMAP_REG_CONFIG) */
#define XMAP_CFG_CURSOR_MSB_MASK    0x000003FF  /* Cursor plane bitmask */
#define XMAP_CFG_CONST_ALPHA_MASK   (0xFF << 11)/* Constant alpha blend value */
#define XMAP_CFG_AUTOINC            BIT(19)     /* Auto-increment index register */
#define XMAP_CFG_NUM_RSS_MASK       (0x3 << 20) /* Active RSS count */

#define XMAP_CONFIG_DEFAULT(numRE)  (0x3FF | (0xFF << 11) | XMAP_CFG_AUTOINC | (((numRE) & 3) << 20))

/* XMAP Visual Modes (XMAP_REG_MAIN_MODE, per WID 0..31) */
#define XMAP_VISUAL_CI8             0x0         /* 8-bit Color Index */
#define XMAP_VISUAL_RGB12           0x1         /* 12-bit RGB (4:4:4) */
#define XMAP_VISUAL_TRUECOLOR24     0x2         /* 24-bit TrueColor */
#define XMAP_VISUAL_CI12            0x3         /* 12-bit Color Index */

#define XMAP_BUF_FRONT              0x0         /* Display Front Buffer */
#define XMAP_BUF_BACK               0x1         /* Display Back Buffer */

/* Display Interface Buffer (DIB) Scanout Control (CRS 6) */
#define DIB_REG_POINTER             0x0
#define DIB_REG_TOPSCAN             0x4
#define DIB_REG_SKIP                0x8
#define DIB_REG_CTL0                0xC
#define DIB_REG_CTL1                0x10
#define DIB_REG_CTL2                0x14
#define DIB_REG_CTL3                0x18
#define DIB_REG_RETRY               0x1C
#define DIB_REG_REFCTL              0x20

/* PP1 DRAM Refresh Configuration */
#define PP1_REF_ENABLE              BIT(0)
#define PP1_REF_START(start)        (((start) & 0x3FF) << 1)
#define PP1_REF_END(end)            (((end) & 0x3FF) << 11)
#define PP1_REF_LINE_CNT(cnt)       (((cnt) & 0x7F) << 21)
#define PP1_REF_BURST_CNT(cnt)      (((cnt) & 0x7F) << 21)

#define PP1_REF_DEFAULT             (PP1_REF_ENABLE | PP1_REF_START(0) | PP1_REF_END(1023) | \
                                     PP1_REF_LINE_CNT(1) | PP1_REF_BURST_CNT(1))

#ifdef __cplusplus
}
#endif

#endif /* _SGI_CMAP_H_ */
