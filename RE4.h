/*
 * RE4.h - Silicon Graphics Impact Graphics (MGRAS) RE4 Raster Engine
 *
 * Raster Engine 4 (RE4) and Raster Subsystem (RSS) Architecture for SGI Impact (GR4).
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Synthesized from:
 *   - SGI IRIX PROM (stand/arcs/lib/libsk/graphics/MGRAS)
 *   - SGI IDE diagnostics (stand/arcs/ide/isddevices/graphics/MGRAS/mgras_re4.c, mgras_re4func.c, mgras_rss_utils.c)
 *   - IRIX 6.5.0 kernel modules (mgras.o, mgras_init.o, mgras_dma.o)
 *   - Existing IRIS emulator implementation (~/gits/iris/src/dev/mgras/raster.rs)
 */

#ifndef _SGI_RE4_H_
#define _SGI_RE4_H_

#include <stdint.h>
#include "MGRAS.h"

#ifdef __cplusplus
extern "C" {
#endif

/*
 * ============================================================================
 * ARCHITECTURE OVERVIEW: RE4 RASTER ENGINE
 * ============================================================================
 *
 * Gate Count:      300,000 gates (Indigo2 IMPACT Product Guide)
 * Operating Clock: 50 MHz
 * Pipeline Depth:  30-50 stages
 *
 * RE4 is the primary 2D and 3D rasterization ASIC within the Raster Subsystem (RSS).
 * It receives primitive setup parameters directly from the CPU (via HQ3 GIO/XIO bypass)
 * or from the GE11 Geometry Engines, computes edge equations, and walks spans across
 * the framebuffer, feeding fragments into the PP1 Pixel Processors.
 *
 * Key Capabilities:
 *
 * 1. DUAL EXECUTION MODES:
 *    - Register Write (Offset 0x7C000): Writes register value into pipeline buffer.
 *    - Write + Execute (Offset 0x7D000, or CFIFO 0x1400): Writes register value and
 *      immediately fires the primitive currently loaded into the Instruction Register (IR).
 *
 * 2. PRIMITIVE ENGINES:
 *    - Triangles ("areas"): edge positions as biased floats, s.24 edge
 *      slopes, iterated colour/Z (see TRIANGLE SETUP below).
 *    - Bresenham Lines: Integer start/end, error increments (inc1, inc2), and octant codes.
 *    - Anti-Aliased Lines: Sub-pixel fractional lines (gline_*) with coverage evaluation.
 *    - Rectangular Blocks: Window-coordinate block blits and solid clears.
 *    - Character Glyphs: 64-bit monochrome bitmap font stamping with opaque/transparent background.
 *
 * 3. COORDINATE SYSTEMS & TRANSFORMATIONS:
 *    - Window Origin: xywin (Y << 16 | X) is added to all incoming primitive coordinates.
 *    - Y-Axis Inversion: When CFG_YFLIP is set in the config register, Y grows downward
 *      (standard X11 window coordinates); physical RDRAM framebuffer row 0 is at the bottom.
 *
 * 4. MULTI-LEVEL SCISSOR & SCREEN MASKS:
 *    - Primary scissor rectangle (scissorx, scissory).
 *    - 4 independent hardware screen masks (scrmsk1..4) for complex multi-window clipping.
 *    - Window mode register (winmode) selects inside/outside clipping and CID comparison.
 *
 * 5. PIXEL TRANSFERS (DMA & PIO):
 *    - Hardware scaling/zooming via xfrinitfactor and xfrfactor.
 *    - Bit/byte skipping for unaligned host memory transfers.
 *    - Stride skipping for 2D sub-rectangle transfers directly into RDRAM or TETRAM.
 */

/*
 * ============================================================================
 * RE4 REGISTER BYTE OFFSETS (Within RSS Space 0x7C000 - 0x7C3FF)
 * ============================================================================
 */

/* Double-Buffered Shared RE/TE Registers */
#define RE4_REG_TRI_X0              0x0000      /* Major edge x at y = floor(ymax) (biased float) */
#define RE4_REG_TRI_X1              0x0001      /* Upper minor edge x at y = floor(ymax) (biased float) */
#define RE4_REG_TRI_X2              0x0002      /* Lower minor edge x at y = floor(ymid) (biased float) */
#define RE4_REG_TRI_YMAX            0x0003      /* Top vertex y (biased float) */
#define RE4_REG_TRI_YMID            0x0004      /* Middle vertex y (biased float) */
#define RE4_REG_TRI_YMIN            0x0005      /* Bottom vertex y (biased float) */
#define RE4_REG_TRI_DXDY0           0x0006      /* Major edge slope, s.24 high word */
#define RE4_REG_TRI_DXDY0_LOW       0x0007      /* Major edge slope, low word */
#define RE4_REG_TRI_DXDY1_HI        0x0008      /* Upper minor edge slope, high word */
#define RE4_REG_TRI_DXDY1_LOW       0x0009      /* Upper minor edge slope, low word */
#define RE4_REG_TRI_DXDY2_HI        0x000A      /* Lower minor edge slope, high word */
#define RE4_REG_TRI_DXDY2_LOW       0x000B      /* Lower minor edge slope, low word */
#define RE4_REG_GLINE_XSTARTF       0x000C      /* Fractional line X start */
#define RE4_REG_GLINE_YSTARTF       0x000D      /* Fractional line Y start */
#define RE4_REG_GLINE_XENDF         0x000E      /* Fractional line X end */
#define RE4_REG_GLINE_YENDF         0x000F      /* Fractional line Y end */
#define RE4_REG_GLINE_DX            0x0010      /* Fractional line DX */
#define RE4_REG_GLINE_DY            0x0011      /* Fractional line DY */
#define RE4_REG_GLINE_ADJUST        0x0012      /* Subpixel adjustment factor */
#define RE4_REG_IR                  0x0013      /* Instruction Register (IR) */

/* Double-Buffered RE Registers */
#define RE4_REG_XLINE_XYSTARTI      0x0040      /* Integer line start (Y:16, X:16) */
#define RE4_REG_XLINE_XYENDI        0x0041      /* Integer line end (Y:16, X:16) */
#define RE4_REG_XLINE_INC1          0x0042      /* Bresenham error increment 1 */
#define RE4_REG_XLINE_INC2          0x0043      /* Bresenham error increment 2 */
#define RE4_REG_XLINE_ERROR_OCT     0x0044      /* Initial error & octant code */
#define RE4_REG_IR_ALIAS            0x0045      /* IR alias register */
#define RE4_REG_BLOCK_XYSTARTI      0x0046      /* Block start coordinate (Y:16, X:16) */
#define RE4_REG_BLOCK_XYENDI        0x0047      /* Block end coordinate (Y:16, X:16) */
#define RE4_REG_BLOCK_XYMOVE        0x0048      /* Block move delta (dY:16, dX:16) */
#define RE4_REG_BLOCK_XSAVEOCT      0x0049      /* Block saved octant */

/* Color & Depth Iterators */
#define RE4_REG_PACKED_COLOR        0x005B      /* Packed RGBA (8:8:8:8) */
#define RE4_REG_RED                 0x005C      /* Red start value */
#define RE4_REG_GREEN               0x005D      /* Green start value */
#define RE4_REG_BLUE                0x005E      /* Blue start value */
#define RE4_REG_ALPHA               0x005F      /* Alpha start value */
#define RE4_REG_DRE                 0x0060      /* dRed/dEdge slope */
#define RE4_REG_DRX                 0x0061      /* dRed/dX span slope */
#define RE4_REG_DGE                 0x0062      /* dGreen/dEdge slope */
#define RE4_REG_DGX                 0x0063      /* dGreen/dX span slope */
#define RE4_REG_DBE                 0x0064      /* dBlue/dEdge slope */
#define RE4_REG_DBX                 0x0065      /* dBlue/dX span slope */
#define RE4_REG_DAE                 0x0066      /* dAlpha/dEdge slope */
#define RE4_REG_DAX                 0x0067      /* dAlpha/dX span slope */
#define RE4_REG_Z_HI                0x0068      /* Z depth start (high 16 bits) */
#define RE4_REG_Z_LOW               0x0069      /* Z depth start (low 16 bits) */
#define RE4_REG_DZX_HI              0x006A      /* dZ/dX span slope (high) */
#define RE4_REG_DZX_LOW             0x006B      /* dZ/dX span slope (low) */
#define RE4_REG_DZE_HI              0x006C      /* dZ/dEdge slope (high) */
#define RE4_REG_DZE_LOW             0x006D      /* dZ/dEdge slope (low) */

/* Character Bitmap Ports */
#define RE4_REG_CHAR_H              0x0070      /* Character bitmap high 32 bits */
#define RE4_REG_CHAR_L              0x0071      /* Character bitmap low 32 bits */

/* Single-Buffered Shared & Mode Control */
#define RE4_REG_XFRABORT            0x0100      /* Abort active pixel transfer */
#define RE4_REG_XFRCONTROL          0x0102      /* Pixel transfer control */
#define RE4_REG_FILLMODE            0x0110      /* Primitive fill mode */
#define RE4_REG_TEXMODE1            0x0111      /* Texture blend mode 1 */
#define RE4_REG_CONFIG              0x0112      /* Master RE4 config (YFLIP, etc.) */
#define RE4_REG_SCISSORX            0x0113      /* Scissor X range (Xmin:16, Xmax:16) */
#define RE4_REG_SCISSORY            0x0114      /* Scissor Y range (Ymin:16, Ymax:16) */
#define RE4_REG_XYWIN               0x0115      /* Window origin (Y:16, X:16) */

/* Background, Fog, and Screen Masks */
#define RE4_REG_BKGRD_RG            0x0140      /* Background color Red & Green */
#define RE4_REG_BKGRD_BA            0x0141      /* Background color Blue & Alpha */
/*
 * BKGRD_RG/BA: the colour opaque line/char stipples draw for their 0 bits.
 * RGB modes: 12-bit components, red lowest like PACKEDCOLOR:
 *   BKGRD_RG = G[23:12] | R[11:0], BKGRD_BA = B[11:0] (alpha above, unseen).
 * CI modes: the index in BKGRD_RG[11:0]. Confirmed by the desktop's 50%
 * icon dithers (syserrpanel: fg red 0xf0 on RG 0x700C00 / BA 0x700, a red
 * sign on hardware; accessibility: fg blue on RG 0x700700 / BA 0xC00).
 */
#define RE4_REG_TXENV_RG            0x0142      /* Texture environment color RG */
#define RE4_REG_TXENV_B             0x0143      /* Texture environment color B */
#define RE4_REG_FOG_RG              0x0144      /* Fog color Red & Green */
#define RE4_REG_FOG_B               0x0145      /* Fog color Blue */
#define RE4_REG_GLINECONFIG         0x0146      /* Antialiased line configuration */
#define RE4_REG_SCRMSK1X            0x0147      /* Screen Mask 1 X bounds */
#define RE4_REG_SCRMSK1Y            0x0148      /* Screen Mask 1 Y bounds */
#define RE4_REG_SCRMSK2X            0x0149      /* Screen Mask 2 X bounds */
#define RE4_REG_SCRMSK2Y            0x014A      /* Screen Mask 2 Y bounds */
#define RE4_REG_SCRMSK3X            0x014B      /* Screen Mask 3 X bounds */
#define RE4_REG_SCRMSK3Y            0x014C      /* Screen Mask 3 Y bounds */
#define RE4_REG_SCRMSK4X            0x014D      /* Screen Mask 4 X bounds */
#define RE4_REG_SCRMSK4Y            0x014E      /* Screen Mask 4 Y bounds */
#define RE4_REG_WINMODE             0x014F      /* Window clipping mode */

/* Pixel Transfer Registers */
#define RE4_REG_XFRSIZE             0x0153      /* Transfer size (lines:16, width:16) */
#define RE4_REG_XFRINITFACTOR       0x0154      /* Zoom initial factor */
#define RE4_REG_XFRFACTOR           0x0155      /* Zoom step factor */
/* XFRFACTOR / XFRINITFACTOR: 17 bits testable (IDE mgras_re4.c). Values
 * libGLcore sent for glDrawPixels: 0x101423AC / 0 at zoom (1, -1) (Mirai),
 * 0x3BFC00 / 0x1010090 at zoom 1 (Avid Matador). Encoding not known. The
 * zoom direction also shows in the GE's pixel block (HQ3.h, ERAM 0xDA8). */
#define RE4_REG_XFRMASKLOW          0x0156      /* Transfer mask low word */
#define RE4_REG_XFRMASKHIGH         0x0157      /* Transfer mask high word */
#define RE4_REG_XFRCOUNTERS         0x0158      /* Current transfer line & pixel count */
#define RE4_REG_XFRMODE             0x0159      /* Transfer format & byte skip */
#define RE4_REG_LSPAT               0x015A      /* Line stipple pattern (16 bits) */
#define RE4_REG_LSCRL               0x015B      /* Line stipple repeat count */
#define RE4_REG_DEVICE_ADDR         0x015C      /* Indirect device register address */
#define RE4_REG_DEVICE_DATA         0x015D      /* Indirect device register data */
#define RE4_REG_STATUS              0x015E      /* RE4 internal status */
#define RE4_REG_RE_TOGGLECNTX       0x015F      /* Toggle context pointer */

/*
 * ============================================================================
 * REGISTER BIT DEFINITIONS & MASKS
 * ============================================================================
 */

/*
 * Instruction Register (RE4_REG_IR: 0x0013, alias 0x0045). A register write
 * with "execute" (direct window +0x1000, or HQ_CMD_RSS_EXECUTE) runs the IR
 * after the write lands. SGI's field names: Opcode (bits 3:0), Setup
 * (bit 4: compute the primitive's setup from its start/end registers),
 * EPF_First / EPF_Last (line endpoint flags, positions not known yet).
 *
 * Opcodes, from SGI's diagnostics (IR_OP_* names), X server, and GE11 ucode:
 *   0x0  IR_OP_AREA_LTOR: 3D triangle area fill whose spans walk Left-to-Right
 *        (major edge on the left). Dispatched with Setup = 0.
 *   0x1  IR_OP_AREA_RTOL: 3D triangle area fill whose spans walk Right-to-Left
 *        (major edge on the right). Dispatched with Setup = 0.
 *   0x2  IR_OP_GL_LINE: sub-pixel OpenGL line interpolated from the gline_*
 *        registers, Setup = 0.
 *   0x4  IR_OP_POINT (or IR_OP_X_POINT): each execute of xline_xystarti draws
 *        one pixel there (X PolyPoint writes ir_alias = 0x4, then xline_xystarti + execute).
 *   0x5  IR_OP_X_LINE: 2D integer line, used with Setup (ir_alias = 0x15):
 *        RE4's hardware setup unit computes integer Bresenham increments and
 *        octant codes directly from xline_xystarti to xline_xyendi.
 *   0x8  IR_OP_BLOCK: 2D rectangular block, used with Setup (0x18):
 *        RE4's hardware setup unit computes dimensions directly from
 *        block_xystarti to block_xyendi; mode is chosen by the fill mode.
 *
 * ============================================================================
 * TRIANGLE RASTERIZATION & SETUP: GE11 vs. RE4 DIVISION OF LABOR
 * ============================================================================
 *
 * A key architectural characteristic of the SGI Impact (GR4) pipeline is how
 * triangle primitive setup and rasterization are partitioned between the
 * Geometry Engine (GE11) and the Raster Engine (RE4 / RSS):
 *
 * 1. RE4 RASTERIZES THE ENTIRE TRIANGLE AUTONOMOUSLY:
 *    The RE4 is NOT a per-span or per-pixel slave to the GE11. Once the GE11
 *    (or host CPU) loads the triangle setup registers and dispatches a single
 *    kickoff write to the Instruction Register (IR = IR_OP_AREA_LTOR or
 *    IR_OP_AREA_RTOL, with Setup = 0), RE4 hardware executes the ENTIRE
 *    triangle rasterization autonomously to completion:
 *      - RE4 steps scanlines down the XZ plane in the -Y direction from ymax to ymin.
 *      - RE4's internal 64-bit slope DDAs track the major edge (C->A) and upper minor
 *        edge (C->B), automatically transitioning to the lower minor edge (B->A) at
 *        ymid without any GE11 or CPU intervention.
 *      - RE4 generates horizontal spans at a peak rate of 1 span per clock cycle.
 *      - RE4's internal fixed-point iterators walk along each span pixel-by-pixel,
 *        interpolating RGBA (12.12 fixed point), Depth Z (24-bit fixed point), and
 *        texture coordinates (S, T, W), generating fragments for the PP1 ASICs.
 *
 * 2. GE11 PERFORMS FLOATING-POINT TRIANGLE SETUP:
 *    While RE4 autonomously rasterizes the whole triangle, RE4 contains NO
 *    floating-point division unit. Arbitrary 3D triangle setup requires division:
 *      - Edge slope calculations: dx/dy = (x_b - x_a) / (y_b - y_a)
 *      - 2D attribute plane equations: gradients dRx, dRe, dZx, dZe, dSx, dSe...
 *    Therefore, the GE11's 32-bit floating-point vector ALUs and reciprocal seed
 *    generator compute all edge slopes, start coordinates, and plane derivatives.
 *    The GE11 microcode then streams these precalculated parameters into RE4's
 *    register file via the OFIFO and kicks off the rasterization.
 *    (When bypassing GE11 in diagnostic or direct CPU mode, as in SGI's _mg0_FillTriangle,
 *    the host CPU performs these exact same floating-point setup calculations).
 *
 * 3. CONTRAST WITH 2D PRIMITIVES (HARDWARE SETUP ENGINE):
 *    The RE4 has an on-chip hardware Setup engine enabled via IR_SETUP (bit 4):
 *      - For integer Bresenham lines (IR_OP_X_LINE = 0x5, IR = 0x15):
 *        RE4's hardware setup unit calculates error increments (inc1, inc2), initial
 *        error, and octant codes directly from xline_xystarti and xline_xyendi.
 *      - For rectangular blocks (IR_OP_BLOCK = 0x8, IR = 0x18):
 *        RE4's hardware setup unit derives span widths, heights, and fill parameters
 *        directly from block_xystarti and block_xyendi.
 *    Because 2D lines and blocks only require simple integer differences and comparisons
 *    (no division), RE4's hardware setup handles them natively. Triangles, requiring
 *    floating-point division, have their setup performed by GE11 and are dispatched
 *    with Setup = 0.
 *
 * 4. TRIANGLE SETUP REGISTER SPECIFICATION:
 *    (Synthesized from SGI IDE _mg0_FillTriangle and GE11 microcode).
 *    Vertices are sorted by window Y (Y up: top C, middle B, bottom A; cw.y >= bw.y >= aw.y):
 *    - Positions: Written as IEEE-754 single-precision floats biased by +49151.5.
 *      In the range [32768, 65536), a float's 23-bit mantissa aligns such that the
 *      integer part occupies bits 22:8 and the lower 8 bits provide subpixel fraction.
 *      The RE4 hardware directly extracts this 24.8 fixed-point position.
 *    - tri_ymid (0x0004), tri_ymin (0x0005): bw.y + 49151.5, aw.y + 49151.5.
 *    - tri_x2 (0x0002), tri_ymax (0x0003): x2 + 49151.5, cw.y + 49151.5.
 *    - tri_x0 (0x0000), tri_x1 (0x0001): x0 + 49151.5, x1 + 49151.5.
 *    - Slopes (dx per unit Y stepping down in -Y): Signed 64-bit value * 2^24
 *      (hi 32 bits, lo 32 bits):
 *        * dxdy0 (0x0006, 0x0007): Major edge C -> A = (aw.x - cw.x) / (cw.y - aw.y).
 *        * dxdy1 (0x0008, 0x0009): Upper minor edge C -> B = (bw.x - cw.x) / (cw.y - bw.y).
 *        * dxdy2 (0x000A, 0x000B): Lower minor edge B -> A = (aw.x - bw.x) / (bw.y - aw.y).
 *    - Edge X starting positions at integer scanline y = floor(cw.y):
 *        * x0 = cw.x + dxdy0 * (cw.y - floor(cw.y))
 *        * x1 = cw.x + dxdy1 * (cw.y - floor(cw.y))
 *        * x2 = bw.x + dxdy2 * (bw.y - floor(bw.y)) (at y = floor(bw.y))
 *    - Direction & Opcode:
 *        * Major edge x at bw.y: xmid = cw.x + ((cw.y - bw.y)/(cw.y - aw.y)) * (aw.x - cw.x).
 *        * If xmid <= bw.x: Direction is Left-to-Right -> IR_OP_AREA_LTOR (opcode 0x0).
 *        * If xmid > bw.x:  Direction is Right-to-Left -> IR_OP_AREA_RTOL (opcode 0x1).
 *    - Colour & Gradient Registers (0x005C-0x0067, 12.12 fixed: value * 0xFFF000):
 *        * Starting colour at first pixel: x = ceil(x0) (for LTOR) or floor(x0) (for RTOL),
 *          y = floor(cw.y). Written to RE_RED, RE_GREEN, RE_BLUE, RE_ALPHA.
 *        * drx (span derivative): delta colour per pixel along span (negated if RTOL).
 *        * dre (edge derivative): delta colour per scanline down major edge:
 *          dre = dr/dy + trunc(dxdy0) * drx, less drx when direction and sign(dxdy0) disagree.
 *        * Pairs written to (dre, drx) at 0x60/0x61, (dge, dgx), (dbe, dbx), (dae, dax).
 *    - Depth Z (z_hi/lo 0x68/0x69, dzx 0x6A/0x6B, dze 0x6C/0x6D, value * 0x1000, 64-bit):
 *      Follows the same 2D plane equation and major edge stepping rules as colour.
 *    - Kickoff: IR is written with opcode = direction, Setup = 0, with execute flag set.
 */
#define RE4_IR_OPCODE_MASK          0x0000000F
#define RE4_IR_SETUP                BIT(4)
#define RE4_IR_OP_AREA_LTOR         0x0         /* Triangle area: Left-to-Right spans */
#define RE4_IR_OP_AREA_RTOL         0x1         /* Triangle area: Right-to-Left spans */
#define RE4_IR_OP_GL_LINE           0x2         /* OpenGL subpixel line */
#define RE4_IR_OP_POINT             0x4         /* Single pixel point */
#define RE4_IR_OP_X_LINE            0x5         /* Integer Bresenham line */
#define RE4_IR_OP_BLOCK             0x8         /* 2D block / rectangle fill / DMA / PIO */

/* Master Config Register (RE4_REG_CONFIG: 0x0112) */
#define RE4_CFG_DEST_RE             BIT(0)      /* 1 = Target RE4 rasterizer */
#define RE4_CFG_YFLIP               BIT(3)      /* 1 = Invert Y coordinates (top-down) */
#define RE4_CFG_BRES_RND            BIT(4)      /* Bresenham line rounding mode */

/*
 * Fill Mode Register (RE4_REG_FILLMODE: 0x0110). SGI's field names:
 * PolyStipEn, CharStipEn, LineStipEn, LineStipAdv, FastFill, BlockType,
 * ShadeEN, RoundEN, ZiterEN, LineAA, PointAA. Positions below are from SGI's
 * diagnostic mgrashw.h; ShadeEN, RoundEN, ZiterEN, LineAA and PointAA are
 * not placed yet. Seen from the X server:
 *   0x00018000  glyph blocks: block type 0 with bits 15 and 16, then the
 *               glyph bits through char_h / char_l
 *   0x00418008  block type 1 with CharStipEn and bit 15
 *   0x10100000  fast fill with bit 28; 0x10C00000 PIO write with bit 28
 *   0x00000400  lines that skip their last pixel (X cap style)
 */
#define RE4_FM_POLY_STIP_EN         BIT(0)      /* Enable 32x32 polygon stipple */
#define RE4_FM_CHAR_STIP_EN         BIT(3)      /* Enable glyph character stipple */
#define RE4_FM_CHAR_OPAQUE          BIT(4)      /* Opaque character background */
#define RE4_FM_LINE_STIP_EN         BIT(5)      /* Enable line stipple pattern */
#define RE4_FM_LINE_OPAQUE          BIT(6)      /* Opaque line background */
#define RE4_FM_LINE_ADVANCE         BIT(7)      /* Advance line stipple counter */
#define RE4_FM_LINE_SKIP_LAST       BIT(10)     /* Skip drawing last endpoint pixel */
#define RE4_FM_FAST_FILL            BIT(20)     /* Fast solid fill using fill colors */
#define RE4_FM_BLOCK_TYPE_MASK      (0x7 << 22) /* Block primitive operation type */
#define RE4_FM_BLOCK_CHAR           (0 << 22)   /* Filled by the char data that follows (X glyphs) */
#define RE4_FM_BLOCK_NORMAL         (1 << 22)   /* Char-stippled block (with CharStipEn) */
#define RE4_FM_BLOCK_PIO_READ       (2 << 22)   /* PIO readback through char regs */
#define RE4_FM_BLOCK_PIO_WRITE      (3 << 22)   /* PIO write through char regs */
#define RE4_FM_BLOCK_DMA_READ       (4 << 22)   /* Host DMA readback */
#define RE4_FM_BLOCK_DMA_WRITE      (5 << 22)   /* Host DMA download */

/* Transfer Control Register (RE4_REG_XFRCONTROL: 0x0102) */
#define RE4_XFR_DMA_START           BIT(0)      /* Trigger DMA transfer */
#define RE4_XFR_PIO_START           BIT(1)      /* Trigger PIO transfer */
#define RE4_XFR_DEVICE_RDRAM        (0 << 2)    /* Target: RDRAM framebuffer */
#define RE4_XFR_DEVICE_TETRAM       (1 << 2)    /* Target: TETRAM texture memory */
#define RE4_XFR_DIR_WRITE           (0 << 3)    /* Host to graphics */
#define RE4_XFR_DIR_READ            (1 << 3)    /* Graphics to host readback */
#define RE4_XFR_STATUS_BUSY         BIT(4)      /* Transfer currently active */

/*
 * Transfer Mode Register (RE4_REG_XFRMODE: 0x0159). SGI's fields:
 * PixelCompType (3:0), PixelFormat (7:4), BeginSkipBytes (10:8),
 * BeginSkipBits (13:11), StrideSkipBytes (22:14), BitMapOpaque (23), and
 * RGBorder, UnpackLSBfirst, EnableZoom, EnableDecimate, EnableReadMask
 * (positions not known). Format/type pairs the X server and kernel use,
 * with the bytes per pixel the model gives them: (0,0) 1, (0,1) 2,
 * (8,8) 2 (4-4-4-4), (8,10) 2 (5-5-5), (8,0) 4, (7,1) 6. SGI names
 * formats XFRMODE_CI1, _L1, _RGB3, _RGBA4 and types XFRMODE_1U, _2U, _4444U.
 * The format values below are earlier guesses.
 *
 * As libGLcore uses it (traced with test/gltest/pixtest.c, 6.5.22):
 *   3:0   component type: 0 u8, 1 u16, 3 u32, 4 s8, 5 s16, 7 s32,
 *         8 / 10 packed (4-4-4-4, 5-5-5; the X server's)
 *   7:4   format: 0 colour index, 1 stencil, 2 depth, 3 R, 4 G, 5 B, 6 A,
 *         7 RGB, 8 RGBA, 9 one-component texel, 10 two-component texel
 *   10:8  begin skip, bytes
 *   17:14 stride skip, bytes (the GL row padding; up to 6 seen)
 *   18    PIO reads in the DMA component order. Only the X server sets
 *         it (XGetImage reads with 0x40080 and takes the pixel word as
 *         0x00BBGGRR); libGLcore never does. Our reading from both
 *         clients' unpacking code; SGI's StrideSkipBytes (22:14) cannot
 *         be right, since RGBorder sits at 22.
 *   19    zoom: scale by XFRFACTOR
 *   20    decimate (zoom below 1)
 *   22    RGBorder: 1 = red first in host memory, 0 = ABGR
 *   23    always set for pixel draws (BitMapOpaque in SGI's list)
 * Host components are the framebuffer's top bits (no rounding) when
 * reading wider than the framebuffer stores, and truncated when writing.
 * A PIO read (character registers) delivers RGB(A) in the reverse of the
 * DMA order unless bit 18 is set: see HQ3.h "PIXEL OPERATIONS".
 *
 * Zoom (XFRFACTOR 0x155, XFRINITFACTOR 0x154): the factor is 8.8 fixed
 * point (256 = 1). The GE does the y zoom (1 / zoom_y) and the integer
 * part of an x replication; the raster engine samples source pixel
 * floor((2j + 1) * f / 512) for destination column j (pixel centres),
 * zooming or decimating. The direction and extents of the destination
 * come from ERAM 0xDA8 (HQ3.h): a negative zoom shows there as x1 < x0
 * or y1 < y0.
 */
#define RE4_XFRMODE_COMP_TYPE_MASK  (0xF << 0)
#define RE4_XFRMODE_FORMAT_MASK     (0xF << 4)
#define RE4_XFRMODE_FORMAT_CI8      (0 << 4)    /* 8-bit Color Index */
#define RE4_XFRMODE_FORMAT_RGBA16   (1 << 4)    /* 16-bit RGBA (5551 or 4444) */
#define RE4_XFRMODE_FORMAT_RGBA32   (2 << 4)    /* 32-bit RGBA / TrueColor */
#define RE4_XFRMODE_FORMAT_1B_GLYPH (3 << 4)    /* 1-bit monochrome glyph */
#define RE4_XFRMODE_BEGIN_SKIP_B(b) (((b) & 0x7) << 8)
#define RE4_XFRMODE_BEGIN_SKIP_BITS(b) (((b) & 0x7) << 11)
#define RE4_XFRMODE_STRIDE_SKIP_B(b) (((b) & 0x1FF) << 14)
#define RE4_XFRMODE_BITMAP_OPAQUE   BIT(23)

/* Status Register (RE4_REG_STATUS: 0x015E) */
#define RE4_STATUS_COUNT_MASK       0x03        /* Number of active RE4 chips */
#define RE4_STATUS_NUMBER_MASK      0x0C        /* Board RSS index */
#define RE4_STATUS_VERSION_MASK     0xF0        /* RE4 silicon revision */
#define RE4_STATUS_FIFO_EMPTY       BIT(8)      /* Command FIFO empty */
#define RE4_STATUS_RE4_BUSY         BIT(9)      /* Rasterizer actively running */
#define RE4_STATUS_PP1_BUSY         BIT(10)     /* Backend pixel processors busy */
#define RE4_STATUS_IDLE             (RE4_STATUS_FIFO_EMPTY | (1 << 4))

/*
 * Window mode (RE4_REG_WINMODE: 0x014F): the four screen masks
 * (scrmskNx/scrmskNy, each min << 16 | max in screen coordinates). SGI's
 * fields: WinMaskEn1..4 and WinMaskInOut1..4. The X server writes 0x11
 * (mask 1 on, drawing kept inside it) or 0; positions of masks 2-4 follow
 * the same pattern by assumption.
 */
#define RE4_WINMODE_EN(n)           BIT((n) - 1)        /* n = 1..4 */
#define RE4_WINMODE_INSIDE(n)       BIT((n) + 3)        /* keep pixels inside mask n */

/* Antialiased Line Config (RE4_REG_GLINECONFIG: 0x0146) */
#define RE4_GLINECFG_SMOOTH_EN      BIT(0)      /* Antialiased line smoothing */
#define RE4_GLINECFG_WIDTH_MASK     0x000000FE  /* Line width in subpixel units */

#ifdef __cplusplus
}
#endif

#endif /* _SGI_RE4_H_ */
