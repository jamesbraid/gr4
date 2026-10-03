/*
 * GE11.h - Silicon Graphics Impact Graphics (MGRAS) GE11 Geometry Engine
 *
 * Geometry Engine 11 (GE11) Vector Floating-Point Processor for SGI Impact (GR4).
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Synthesized from:
 *   - SGI IRIX PROM (stand/arcs/lib/libsk/graphics/MGRAS)
 *   - SGI IDE diagnostics (stand/arcs/ide/isddevices/graphics/MGRAS/mgras_ge11.c, ge11symtab.h, ge_inst.h, cp_ge_sim_tokens.h)
 *   - GE11 microcode binaries and symbols (ucode/ge11.bin, ucode/mgras_ge.hex)
 *   - SGI OpenGL Core driver (libGLcore.so) DWARF metadata (mgras_xform.c, mgras_lighting.c)
 */

#ifndef _SGI_GE11_H_
#define _SGI_GE11_H_

#include <stdint.h>
#include "MGRAS.h"

#ifdef __cplusplus
extern "C" {
#endif

/*
 * ============================================================================
 * ARCHITECTURE OVERVIEW: GE11 GEOMETRY ENGINE
 * ============================================================================
 *
 * The GE11 ASIC is a specialized 32-bit floating-point vector processor engineered
 * by Silicon Graphics to handle high-throughput 3D coordinate transformations,
 * lighting equation evaluation, homogeneous volume clipping, and primitive assembly.
 *
 * Subsystem Configurations:
 *   - Solid Impact (SI / SIO) : 1x GE11 ASIC (~1.0 GFLOPS peak)
 *   - High Impact (HI / HIO)   : 1x GE11 ASIC (~1.0 GFLOPS peak)
 *   - Maximum Impact (MaxI/EMX): 2x GE11 ASICs (~2.0 GFLOPS peak), splitting vertex
 *     processing across alternating primitives in round-robin fashion.
 *
 * Internal Execution Units:
 * 1. FLOATING-POINT VECTOR ALU & MULTIPLIER:
 *    - 32-bit IEEE-754 single-precision floating point.
 *    - Pipelined multiply-accumulate (FMAC / MADD) executing in 3-4 clock cycles.
 *    - Matrix operations: Transforms 4-component vectors (x, y, z, w) by 4x4 matrix
 *      stacks (ModelView, Projection, Texture) in 16 cycles.
 *
 * 2. ADDRESS ALU 3 (AALU3):
 *    - Dedicated integer and pointer arithmetic engine for table lookups and loop indices.
 *    - Implements condition code evaluation: equal, not equal, greater than, less than
 *      or equal (`aalu3_gt`, `aalu3_le`, `aalu3_flag`).
 *
 * 3. RECIPROCAL & INVERSE SQUARE ROOT SEED GENERATOR:
 *    - Hardware seed ROM and Newton-Raphson approximation unit for high-speed
 *      perspective division (1/w) and normal vector normalization (1/sqrt(x^2+y^2+z^2)).
 *
 * 4. ON-CHIP SRAM STORES:
 *    - Microcode RAM: 64K to 256K words x 64 bits (loaded at boot from ge11.bin / mgras_ge.hex).
 *    - CRAM (Constant RAM): 1,024 words storing standard matrix identities, lighting constants,
 *      trigonometric tables, and material parameters.
 *    - ERAM (Extended RAM): 2,048 words storing user clip planes, light source properties,
 *      and active viewport scales.
 *    - WRAM (Working RAM): 2,048 words buffering transformed vertices, intermediate lighting
 *      results, and clipping flags.
 *    - Output FIFOs (OFIFO 0, 1, 2): 64-word multi-threaded FIFOs streaming setup packets
 *      directly into the Raster Subsystem (RSS / RE4).
 */

/*
 * ============================================================================
 * GE11 MICROCODE & CONTROL REGISTERS (Offset 0x40000 - 0x4003C)
 * ============================================================================
 */
#define GE11_UCODE_BASE                 0x200000    /* Microcode physical load address */
#define GE11_UCODE_SIZE                 (64 * 1024) /* 64K words standard */
#define GE11_UCODE_MAX_SIZE             (256 * 1024)/* 256K words maximum */

/* Control & Status Register Offsets */
#define GE11_REG_EXECUTION_CONTROL      0x40000     /* Master execution run/stop/latency */
#define GE11_REG_BREAKPOINT_ADDR        0x40004     /* Microcode PC breakpoint address */
#define GE11_REG_RAMSCAN_CONTROL        0x40008     /* RAM scan test mode control */
#define GE11_REG_WRT_SYNC_FIFO_CONTROL  0x4000C     /* Write synchronization FIFO control */
#define GE11_REG_DIAG_SEL               0x40010     /* Diagnostic routing & backpressure */
#define GE11_REG_ENABLE_MASK            0x40014     /* Functional unit enable mask */
#define GE11_REG_CM_OFIFO_TAG_CONFIG    0x40018     /* Output FIFO tag configuration */
#define GE11_REG_MICROCODE_ERROR        0x4001C     /* Microcode exception / error latch */
#define GE11_REG_OFIFO_0_TH_A_STATUS    0x40020     /* Output FIFO 0 Thread A status */
#define GE11_REG_OFIFO_0_TH_B_STATUS    0x40024     /* Output FIFO 0 Thread B status */
#define GE11_REG_OFIFO_1_TH_A_STATUS    0x40028     /* Output FIFO 1 Thread A status */
#define GE11_REG_OFIFO_1_TH_B_STATUS    0x4002C     /* Output FIFO 1 Thread B status */
#define GE11_REG_OFIFO_2_TH_A_STATUS    0x40030     /* Output FIFO 2 Thread A status */
#define GE11_REG_OFIFO_2_TH_B_STATUS    0x40034     /* Output FIFO 2 Thread B status */
#define GE11_REG_OUTPUT_FIFO_CNTL       0x40038     /* Output FIFO watermark & mode */

/* RAMSCAN & Diagnostic Memories */
#define GE11_RAMSCAN_BASE               0x41000     /* RAM scan aperture */
#define GE11_OFIFO_0_BASE               0x42000     /* Output FIFO 0 buffer */
#define GE11_OFIFO_1_BASE               0x42800     /* Output FIFO 1 buffer */
#define GE11_OFIFO_2_BASE               0x43000     /* Output FIFO 2 buffer */

/*
 * ============================================================================
 * CONTROL REGISTER BITS & MASKS
 * ============================================================================
 */

/* Execution Control Register (0x40000) */
#define GE11_EXEC_GO                    BIT(0)      /* 1 = Start / run microcode execution */
#define GE11_EXEC_UCODE_LAT_3           BIT(4)      /* 1 = 3-cycle instruction latency */
#define GE11_EXEC_UCODE_LAT_4           0           /* 0 = 4-cycle instruction latency */
#define GE11_EXEC_BREAKPOINT_EN         BIT(5)      /* Enable hardware breakpoint */
#define GE11_EXEC_SINGLE_STEP           BIT(6)      /* Single-step one micro-instruction */
#define GE11_EXEC_RESET                 BIT(7)      /* Reset GE11 pipeline state */

/* RAMSCAN Control Register (0x40008) */
#define GE11_RAMSCAN_FASTMODE           BIT(17)     /* Fast RAM scan */
#define GE11_RAMSCAN_SCANMODE           BIT(18)     /* Enable scan test path */
#define GE11_RAMSCAN_CONTROL_MASK       0x0007FFFF

/* Write Sync FIFO Control Register (0x4000C) */
#define GE11_WSYNC_FIFO_DISABLE         BIT(0)      /* 1 = Disable write sync FIFO */
#define GE11_WSYNC_FIFO_WM_MASK         0x000000F0  /* Watermark threshold */
#define GE11_WSYNC_FIFO_WM_DEF          0x10

/* Diagnostic Select Register (0x40010) */
#define GE11_DIAGSEL_BPSTALL            BIT(5)      /* Stall on breakpoint */
#define GE11_DIAGSEL_INPUT              BIT(8)      /* Diagnostic input select */
#define GE11_DIAGSEL_READ               BIT(18)     /* Enable diagnostic readback */

/* Output FIFO Control Register (0x40038) */
#define GE11_OFIFO_DIAG_MODE            BIT(0)      /* Route output FIFO to diagnostic port */
#define GE11_OFIFO_WM_DEF               (56 << 1)   /* High watermark (56 entries) */
#define GE11_ROUTE_RE_TO_HQ             BIT(8)      /* Loop RSS output back to HQ3 */

/*
 * ============================================================================
 * KEY MICROCODE ENTRY POINTS (ge11symtab.h)
 * ============================================================================
 */
#define GE11_SYM_RESET_ENTRY            0x00000000  /* "HereWeGo" boot vector */
#define GE11_SYM_MAIN_LOOP              0x000020C2  /* "MAIN_LOOP" token dispatch */
#define GE11_SYM_CMDFIFO_DRAIN          0x000028B7  /* "CMDFIFO" processing loop */
#define GE11_SYM_SEND_DATA_TO_HQ        0x00002D1C  /* "Send_data_to_HQ" readback */
#define GE11_SYM_SWITCH_GE              0x00002D00  /* Context switch dispatch */
#define GE11_SYM_REPORT_PASSED          0x00002D13  /* Diagnostic pass flag (0xCAFE) */
#define GE11_SYM_REPORT_FAILED          0x00002D0A  /* Diagnostic fail flag (0xBAADCAFE) */

#define GE11_DIAG_PASSED_SIG            0x0000CAFE
#define GE11_DIAG_FAILED_SIG            0xBAADCAFE

/*
 * ============================================================================
 * CP-TO-GE & GE-TO-RSS PROTOCOL TOKENS
 * ============================================================================
 */

/* Primitive Delimiters */
#define GE11_TOKEN_BGNLINE              0xE9        /* Begin Line */
#define GE11_TOKEN_LINEVERTEX           0xE8        /* Line Vertex */
#define GE11_TOKEN_ENDLINE              0xE7        /* End Line */
#define GE11_TOKEN_BGNTRIS              0xE6        /* Begin Triangles */
#define GE11_TOKEN_TRISVERTEX           0xE5        /* Triangle Vertex */
#define GE11_TOKEN_ENDTRIS              0xE4        /* End Triangles */

/* Matrix & Transform Commands */
#define GE11_CMD_LOAD_MATRIX            0xC0        /* Load 4x4 matrix into top of stack */
#define GE11_CMD_MULT_MATRIX            0xC1        /* Post-multiply current matrix */
#define GE11_CMD_PUSH_MATRIX            0xC2        /* Push matrix stack */
#define GE11_CMD_POP_MATRIX             0xC3        /* Pop matrix stack */
#define GE11_CMD_VIEWPORT               0xC4        /* Viewport scale and translation */
#define GE11_CMD_DEPTH_RANGE            0xC5        /* Near and far depth scaling */

/* Lighting & Material Commands */
#define GE11_CMD_MATERIAL               0xC8        /* Ambient, diffuse, specular, emission */
#define GE11_CMD_LIGHT_SOURCE           0xC9        /* Position, direction, ambient, diffuse */
#define GE11_CMD_LIGHT_MODEL            0xCA        /* Ambient scene, local viewer, two-sided */
#define GE11_CMD_COLOR_MATERIAL         0xCB        /* Enable color tracking of material */

/* Clipping & Plane Commands */
#define GE11_CMD_CLIP_PLANE             0xD0        /* User clipping plane equation */
#define GE11_CMD_CLIP_MASK              0xD1        /* Enable mask for clip planes */

/* High-Level Simulation & Diagnostic Tokens (cp_ge_sim_tokens.h) */
#define CP_PASS_THROUGH_GE_FIFO         0xFE        /* Bypass GE11 processing, queue to RSS */
#define CP_PASS_THROUGH_GE_WRAM         0xFD        /* Write directly to GE11 WRAM */
#define CP_PASS_THROUGH_GE_WRAM_DELAYED 0xFC
#define CP_PASS_THROUGH_GE_FIFO_3       0xFB
#define CP_PASS_THROUGH_GE_WRAM_4       0xFA
#define CP_PASS_THROUGH_GE_WRAM_5       0xF9
#define CP_SET_CP_FLAGS                 0xF8
#define CP_DELAY                        0xF7
#define CP_GE_DMA_HEADER_SIZE           0xF6
#define CP_GE_FTOF_1GE                  0xF5

/* Sub-commands dispatched to GE11 */
#define GE11_SUB_REAL_COMMAND           0
#define GE11_SUB_SET_REBUS_SYNC         1
#define GE11_SUB_FB_FB_COPY             2
#define GE11_SUB_SAVE_RE_REGS           3
#define GE11_SUB_COMMENT                4
#define GE11_SUB_WRITE_RE_REG           5
#define GE11_SUB_SET_GE_FLAGS           6
#define GE11_SUB_RESET_WRAM_WRPTR       7
#define GE11_SUB_WRITE_HQ_REG           8

/*
 * ============================================================================
 * TRIANGLE SETUP & RSS PRIMITIVE DISPATCH PIPELINE
 * ============================================================================
 *
 * In the SGI Impact graphics pipeline, primitive processing is partitioned
 * between the floating-point vector hardware of GE11 and the fixed-point
 * rasterization hardware of RE4:
 *
 * 1. WHY GE11 PERFORMS TRIANGLE SETUP:
 *    The RE4 raster engine contains fixed-point DDAs for stepping scanlines and
 *    spans, but has NO floating-point division hardware. Evaluating arbitrary
 *    3D triangle edge slopes and 2D attribute gradients across a polygon requires
 *    floating-point division:
 *      - Edge slopes: dx/dy = (x_b - x_a) / (y_b - y_a)
 *      - Attribute gradients: dc/dx, dc/dy, dz/dx, dz/dy, ds/dx, ds/dy...
 *    GE11 contains three pipelined floating-point vector cores, an address ALU,
 *    and a hardware reciprocal seed generator (using Newton-Raphson approximation),
 *    making it the dedicated setup engine for all 3D primitives.
 *
 * 2. GE11 MICROCODE TRIANGLE PIPELINE STEPS:
 *    - Assembly & Clipping: Primitive assembly from vertex tokens (GE11_TOKEN_BGNTRIS,
 *      TRISVERTEX, ENDTRIS). Evaluates user clip planes and view frustum bounds;
 *      clips geometry using Sutherland-Hodgman polygon clipping in homogeneous space.
 *    - Perspective Division & Viewport Transform:
 *      Computes 1/w via reciprocal seed ROM, transforms normalized coordinates into
 *      window space using viewport scales (GE11_CMD_VIEWPORT) and depth range.
 *    - Vertex Y Sorting: Sorts the 3 triangle vertices by window Y (cw.y >= bw.y >= aw.y,
 *      top C, middle B, bottom A).
 *    - Subpixel Biasing: Adds coordinate bias POS_BIAS (+49151.5) to X and Y coordinates.
 *      In IEEE single-precision floating point, values in [32768, 65536) align such that
 *      the 23-bit mantissa contains a 15-bit integer and an 8-bit subpixel fraction (24.8),
 *      which RE4 parses directly.
 *    - Slope Calculations:
 *      Computes major edge slope dxdy0 = (aw.x - cw.x) / (cw.y - aw.y) and minor edge
 *      slopes dxdy1 = (bw.x - cw.x) / (cw.y - bw.y) and dxdy2 = (aw.x - bw.x) / (bw.y - aw.y).
 *      Formats slopes as signed 64-bit s.24 fixed-point numbers.
 *    - 2D Attribute Gradient Equations:
 *      Solves plane equations for Gouraud RGBA colors, depth Z, and perspective texture
 *      coordinates (S, T, W). Computes span derivatives (dc/dx, dz/dx, ds/dx) and major
 *      edge stepping derivatives (dc/de, dz/de, ds/de).
 *    - RE4 Register Streaming (OFIFO):
 *      Streams setup registers directly into RE4 space (0x7C000):
 *        * TRI_YMID (0x0004), TRI_YMIN (0x0005)
 *        * TRI_DXDY0 (0x0006/7), TRI_DXDY1 (0x0008/9), TRI_DXDY2 (0x000A/B)
 *        * TRI_X0 (0x0000), TRI_X1 (0x0001), TRI_X2 (0x0002), TRI_YMAX (0x0003)
 *        * Starting color (0x005C-0x005F) and gradients DRE/DRX (0x0060-0x0067)
 *        * Starting Z (0x0068/9) and depth gradients DZX (0x006A/B), DZE (0x006C/D)
 *        * Texture coordinate start values and derivatives (when texturing enabled)
 *    - Autonomous Kickoff:
 *      Determines scan direction: Left-to-Right (IR_OP_AREA_LTOR = 0x0) or
 *      Right-to-Left (IR_OP_AREA_RTOL = 0x1). Writes IR with opcode and execute
 *      bit set (Setup = 0).
 *
 * 3. AUTONOMOUS RE4 RASTERIZATION:
 *    Once kicked off by GE11, GE11 does NOT feed individual spans to RE4.
 *    RE4 rasterizes the ENTIRE triangle autonomously from ymax down to ymin:
 *    walking edges with its 64-bit slope DDAs, switching minor edges at ymid,
 *    generating spans at 1 span per clock, interpolating fragments pixel-by-pixel,
 *    and streaming fragment packets to PP1.
 */

#ifdef __cplusplus
}
#endif

#endif /* _SGI_GE11_H_ */
