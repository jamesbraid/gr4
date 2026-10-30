/*
 * GE11.h - Silicon Graphics Impact Graphics (MGRAS) GE11 Geometry Engine
 *
 * Geometry Engine 11 (GE11) Vector Floating-Point Processor for SGI Impact (GR4).
 *
 * Reverse-engineered documentation and single source of truth for IRIS emulator.
 * Synthesized from:
 *   - SGI IRIX PROM (stand/arcs/lib/libsk/graphics/MGRAS)
 *   - SGI IDE diagnostics (stand/arcs/ide/isddevices/graphics/MGRAS/mgras_ge11.c, ge11symtab.h, ge_inst.h, cp_ge_sim_tokens.h)
 *   - IRIX 6.5.7 stand/arcs/ide/isddevices/graphics/MGRAS/: mgras_ge11_main.c (host
 *     tests and their expected replies), mgras_ge.hex (the diagnostic program),
 *     mgrashw.h.diag and mgras_const.h (GE11 register map), doc/diag_docs/ge_desc
 *     (memory description); stand/arcs/lib/libsk/graphics/MGRAS/mgras_init.c
 *     (production loader)
 *   - GE11 microcode binaries and symbols (ucode/ge11.bin, ucode/mgras_ge.hex,
 *     ucode/mgras_ge.u with its line table, ucode/mgras_geif.u), IRIX 6.5.0,
 *     decoded with ghidra/processors/ge11
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
 *    - Microcode RAM: 256K words x 72 bits (GE11_UCODERAM_LEN, mgrashw.h.diag;
 *      18-bit breakpoint address). gfxinit loads ge11.bin; the 6.5.0 program
 *      uses 0x0000-0xD5D8. See MICROCODE INSTRUCTION WORD.
 *    - CRAM (Constant RAM): 512 words of 32 bits, one bank with a single port,
 *      for data all the cores read at once (ge_desc): matrix identities,
 *      lighting constants and the like.
 *    - ERAM (External RAM): NOT on chip. 64K words of RAM behind each GE11 (the
 *      kernel addresses it up to 0xDDEB on a 6.5.22 Maximum Impact). It holds the
 *      saved GE state of each GL context (fixed-size slots) and resources
 *      libGLcore loads (imaging tables etc.). See "ERAM AND CONTEXT SWITCHING".
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
 * MICROCODE INSTRUCTION WORD
 * ============================================================================
 *
 * The GE11 runs the 72-bit instruction set of the InfiniteReality (KONA)
 * geometry engine; the full field-by-field reading, with the evidence for
 * each field, is the KONA repository's ucode/ge_isa.md and ucode/ge_ops.md.
 * What ties the two chips together:
 *   - the 6.5.7 diagnostic's 172 expected words (ge_inst.h) are, in order,
 *     the 172 words the KONA diagnostic irsaudit expects, and 931 words of
 *     mgras_ge.hex equal KONA diagnostic words in the same order (one
 *     ge_inst.s assembled for both);
 *   - where the two production programs hold the same 72-bit word (9133
 *     words), the assembler wrote the same 256-bit decoded record for 9132
 *     of them; the other, 782001d7c000000000, differs in two bits of a
 *     group no known field uses.
 * So every field and operation below applies to the GE11 as it does to
 * KONA. Labels: ESTABLISHED (read from the files or the host tests),
 * INFERRED (with the reason), UNKNOWN.
 *
 * Files (ESTABLISHED, IRIX 6.5.0):
 *   mgras_ge.hex       one word a line: 4-digit address, 18 hex digits (W).
 *   mgras_ge.u         the same program as 256-bit decoded records (magic
 *                      0x45900003), plus a line table naming 142 source
 *                      files; the record is what the module reads, and the
 *                      decode from W to record is not known as logic
 *                      (ghidra/processors/ge11/data/ge11_decode.tsv learns
 *                      it from the six programs that ship both forms).
 *   ge11.bin           what gfxinit loads: 12-byte words, W bits 31-0,
 *                      63-32, then 71-64 in the low byte; 0xE800 words,
 *                      the addresses the program leaves unused filled with
 *                      FEBAADCAFEBAADCAFE. Equal to mgras_ge.hex word for
 *                      word. _revB, _revB_HQ4 and the _DB builds alike.
 *   mgras_geif.u       512 big-endian 32-bit words; 90 are nonzero, each an
 *                      address inside the program (see VERTEX PATH MODULES).
 *                      No 6.5.0 binary names the file; its reader is UNKNOWN.
 *   6.5.7 diagnostic   stand/arcs/ide/isddevices/graphics/MGRAS/mgras_ge.hex,
 *                      12836 words, labels in ge11symtab.h.
 *
 * Loading and starting (ESTABLISHED, mgras_init.c, mgrashw.h.diag): word n
 * goes to diagnostic window 0x200000 + 4n as three 32-bit writes, bits 31-0,
 * 63-32, then 71-64 (read-back masked to 8 bits). Word 0 is written again to
 * reset the PC, then execution control 0x40000 gets GE11_GO with bit 4 clear:
 * microcode latency four (GE11_EXEC_UCODE_LAT_4).
 *
 * Word layout (ESTABLISHED by wiring: each record field equals a W bit in
 * every word of a form):
 *   W[70:67]   form, 15 layouts (4 never occurs). 6.5.0 non-padding words
 *              per form: 0:2891 1:63 2:481 3:787 5:1618 6:39 7:1107 8:507
 *              9:671 10:601 11:1480 12:4227 13:7996 14:13760 15:4088.
 *   W[71]      thread B (INFERRED: the diagnostic's vol_aalu3_cond_B repeats
 *              the thread-A flag test with W71 set and reads FPU_COND_B;
 *              the six per-thread output-FIFO status registers, 0x40020-
 *              0x40034, ESTABLISH two threads). 1909 words carry it.
 *   immediates form 14: W[17:0], sign-extended; form 15: W[31:0], also
 *              IEEE single constants; form 5: W[40:31].
 *   operands   A, B, C, G (5 bits) and D, E, F (6 bits) at fixed record
 *              places, fed from W by form. A+D read, B+E write (an address
 *              register and an offset, INFERRED); 0x1F is the command input,
 *              0x1E the word's own immediate.
 *
 * Execution (ESTABLISHED for both chips unless marked):
 *   - two arithmetic units: unit 1 (adds, logic, compares, conversions) and
 *     unit 2 (multiplies, Newton-Raphson steps), plus a seed unit (reciprocal
 *     and reciprocal-square-root seeds, read by unit 2 two words later);
 *   - a result is forwarded to a later word 4 to 7 words after it is made;
 *   - the condition word (FPU_COND_A, low nibble unit 1, high nibble unit 2)
 *     is tested twelve words after the word that sets it;
 *   - a transfer takes effect after four delay words, a return after eight
 *     (Send_data_to_HQ: its store is the eighth word after the return);
 *     calls are group-0 transfers, returns R88 transfers in group 4.
 *
 * GE11-only facts (ESTABLISHED by the 6.5.7 host tests, mgras_ge11_main.c;
 * KONA's software never exercises them):
 *   - integer add (unit-1 code 0x40) saturates: iadd expects 0x7FFFFFFF +
 *     0x7FFFFFFF = 0x7FFFFFFF;
 *   - the address unit (F = 0x3F adds A and C) is 18 bits and wraps: aalu3
 *     expects 0x3FFFE + 2 = 0 and 0x3FFFF + 0x3FFFF = 0x3FFFE. Programs keep
 *     0xFFFE0000 (special registers) and 0xFFFF0000 (output window) as
 *     18-bit values with bit 17 set;
 *   - special register 6, CHIP_REV, is read at 0xFFFE0018 by the revision
 *     program the kernel loads before the real microcode (gevers_ucode,
 *     mgras_init.c reads the reply into GE11Rev);
 *   - integer multiply (unit-2 code 0x0F) keeps the low 32 bits of the
 *     product (imul: 0x123 * 0x123 = 0x14AC9, 0x7FFFFFFF squared = 1). Its
 *     two rows with negative operands expect the first operand back; the
 *     table is compiled only for manufacturing and never run, so those rows
 *     are INFERRED to be wrong, not the chip.
 *
 * Operation codes, unit 1 (M[6:0]; 0x7F idle) with their 6.5.0 production
 * counts. Each is ESTABLISHED by a word of the shared instruction test whose
 * reply ge_inst.h gives, unless marked:
 *   0x20 dadd 100   0x22 dsub 28    0x40 iadd 376   0x42 isub 431
 *   0x4A mov 7674   0x4B movb 14    0x50 and 714 (INFERRED)
 *   0x54 or 458 (INFERRED)          0x56 xor 72 (INFERRED)    0x58 not 27
 *   0x5B sra 62, 0x5D srl 286, 0x5F sll 325 (INFERRED, shift by operand 2)
 *   0x60 fadd 3608  0x62 fsub 934 (operand 1 - operand 2)
 *   0x66 fmin 173, 0x68 fmax 172 (INFERRED)   0x71 ftoi 224 (INFERRED)
 *   0x73 itof 259   0x7C clamp to [0, 1] 139
 *   UNKNOWN: 0x23 (44), 0x2A, 0x35, 0x41, 0x44, 0x46, 0x4C (78), 0x4E,
 *   0x51 (150), 0x55, 0x57, 0x63 (91), 0x69, 0x6A (112), 0x6B, 0x6C, 0x6D,
 *   0x6E, 0x70, 0x72, 0x74, 0x75, 0x76, 0x77 (69), 0x79, 0x7B (63), 0x7D,
 *   0x08, 0x0B.
 * Unit 2 (M[10:7] = k; 0xD idle):
 *   k 0 dmul 224    k 1 imul 169 (low 32 bits, see above)
 *   k 4 fmov 305    k 6 dmov 45      k 8 fmul 5234
 *   k 9 2 - a*b 149 (reciprocal Newton-Raphson step)
 *   k 10 (3 - a*b) / 2 98 (reciprocal square root step)
 *   UNKNOWN: k 5 (393; returns operand 2 in the shared test), k 7 (6),
 *   k 11 (98).
 * The 41 operations the instruction test fixes all decode as listed in the
 * 6.5.7 diagnostic (ghidra/processors/ge11/tests/check.py, test c).
 */

/*
 * ============================================================================
 * VERTEX PATH MODULES (6.5.0 mgras_ge.u line table, mgras_geif.u)
 * ============================================================================
 *
 * The program is 142 source files laid end to end; the line table gives the
 * first word of each. The vertex path (ESTABLISHED by file name and
 * address; what each computes is INFERRED from the name unless a decompile
 * is cited):
 *   0x0B7A utexgen.s   0x0C6B ucull.s      0x0CBB udecompose.s
 *   0x0D30 udecompose2.s  0x0D61 ulight.s  0x0E09 umath.s
 *   0x0E58 umatrix.s   0x1004 umemove.s    0x107A uscreen.s
 *   0x10AF uscreen2.s  0x114E uxform.s     0x27A5 linegeom.s
 *   0x28B9 linetex.s   0x2956 triflatz.s   0x298F trigeom.s
 *   0x2A4C trirgbz.s   0x2B3A tritex.s     0x2D1A tritex1d.s
 *   0x2D43 tritex3d.s  0x305F pointgeom.s  0x309D pointwidegeom.s
 *   0x31A6 pointtex.s  0xB95E pntclip.S    0xBC09 linclip.S
 *   0xBF24 clip.S      0xC648 mxform.S     0xC960 mlight.S
 *   0xC9EF mcull.S     0xCA60 mscreen.S    0xCADA mtexgen.S
 * The lower-case u*.s files sit at the bottom of the program next to the
 * evaluators and pixel modules; the m*.S files are their counterparts in the
 * command half (entry.S, ge.S, attrib.S, ...).
 *
 * mgras_geif.u, nonzero words by index (ESTABLISHED; that the index is a
 * module number the pipeline is assembled from is INFERRED from the
 * grouping):
 *   0x082 ucull.s      0x083 0x085 ulight.s     0x086-0x08B uxform.s (six
 *   entries: 0x114E 0x1182 0x11C9 0x1234 0x1292 0x125B)
 *   0x08D uscreen.s    0x08E 0x08F uscreen2.s   0x07E trigeom.s
 *   0x077 linegeom.s   0x07B pointgeom.s        0x07F pointwidegeom.s
 *   0x07D polymode.S   0x066-0x071 udecompose*.s, mdecompose*.S
 *   0x004 0x005 linclip.S   0x006 pntclip.S     0x008 0x009 0x012 0x055 clip.S
 *   0x047 0x049 0x04A 0x053 umatrix.s   0x045 0x046 0x048 0x04B 0x04D 0x013
 *   matrix.S   0x017-0x042 and 0x084 lighting (primmtrllight.S,
 *   generallight*.S, material.S, lightsource.S, lightsubroutines.S)   0x05A-0x062 the evaluators (ueval*.s)
 *   0x002 0x00A 0x00F mmemove.S   0x00B 0x010 0x011 memove.S
 *   0x00E 0x04C 0x050 ge.S   0x00C 0x063 0x08C fluff.S   0x043 fog.S
 *   0x056 umath.s   0x058 0x059 umemove.s
 * These indices are not the HQ token numbers (HQ3.h HQ_TOK_*): token 0x002
 * is COLOR4F, index 0x002 a copy routine.
 *
 * trigeom.s (0x298F, decompiled with ghidra/processors/ge11): it reads
 * vertex records through address registers, words 0x23 and 0x24 of each
 * (INFERRED x and y), forms differences of word 0x24 between records, and
 * takes the reciprocal of each as a seed refined by one Newton-Raphson step
 * (x0 * (2 - x0 * d), unit-2 k 9): the 1/dy the slope setup needs. The
 * rest of the module mixes the UNKNOWN unit-1 codes 0x63, 0x6A, 0x70, 0x72,
 * 0x77, 0x79, 0x7B and unit-2 k 5 with integer adds and shifts; reading
 * those codes is the next step to the setup words it sends the raster
 * engine (TRIANGLE SETUP below).
 */

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
/* IRIX uses the next four for ERAM, not WRAM (MgrasEramRead / MgrasEramWrite,
 * names from the diagnostics): */
#define CP_PASS_THROUGH_GE_WRAM         0xFD        /* ERAM write: word count; data follows */
#define CP_PASS_THROUGH_GE_WRAM_DELAYED 0xFC        /* ERAM read: address, count -> host DMA */
#define CP_PASS_THROUGH_GE_FIFO_3       0xFB        /* ERAM write: address, count (place it) */
#define CP_PASS_THROUGH_GE_WRAM_4       0xFA        /* ERAM write: end of this GE's set */
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
 * ERAM AND CONTEXT SWITCHING (one or two GE11s)
 * ============================================================================
 *
 * From IRIX 6.5.22 traces: slots and switches on High and Maximum Impact,
 * the two-GE transfers on a Maximum Impact (Indigo2, Avid Matador session).
 * The microcode's own record layout is unknown.
 *
 * Working state vs saved state:
 *   The microcode runs on state inside the GE11 (WRAM, CRAM, registers).
 *   ERAM is where a context's state is saved. Each GL context (and the
 *   kernel and X server) owns a slot of 0x17C7 words, slots from 0xA9B up
 *   (0xA9B the kernel's, 0x2262 the X server's, then 0x3A29, 0x51F0, ...).
 *   On a context switch (HQ3 context switch, image word 0 = the incoming
 *   context's slot), the outgoing state is saved to its slot and the
 *   incoming one's loaded from its slot. An ordinary switch moves no GE
 *   state over the bus. Before the first switch after boot the GE has its
 *   on-chip state, which no slot owns yet.
 *
 * Eviction (no free slot):
 *   The kernel copies a resident context's slot to host memory and frees
 *   it. When that context returns, the kernel copies the slot into a free
 *   one (often a different slot) before switching to it. It runs in the
 *   kernel's own context, sends CP_GE_NOSAVE_NEXT_SWITCH first, and moves
 *   the data by HQ DMA through the kernel's page table:
 *     save:    arm a board-to-host DMA, then 0xFC (address, count)
 *     restore: 0xFD (count), the words by host-to-board DMA, 0xFB
 *              (address, count) per 900-word chunk, 0xFA after the last
 *
 * Two GE11s (Maximum Impact):
 *   Each GE11 has its own ERAM, and the kernel does every transfer once per
 *   GE, GE0 first. No token selects the GE; order alone does. Traced
 *   eviction of slot S:
 *     save:    0xFC (S,     0x17C8) -> DMA 0x17C7 words to host buffer [0]
 *              0xFC (S - 1, 0x17C8) -> DMA 0x17C7 words to host buffer [0x17C7]
 *     restore: buffer [0]      -> S (7 chunks), 0xFA
 *              buffer [0x17C7] -> S (7 chunks), 0xFA
 *   GE1 is read from one word below the slot, yet both halves go back to
 *   the same address. So GE1's read output evidently arrives one word late
 *   (inferred from the kernel's offset). The extra word requested (0x17C8
 *   against a 0x17C7-word slot and DMA) covers that delay.
 *   Both GEs receive every state command, so their saved GL attribute state
 *   should be identical. Per-GE scratch (vertices in flight from the
 *   alternating primitives) is drained by the switch. Unverified on
 *   hardware.
 *   A one-GE board presumably does each transfer once; not traced.
 *
 * Emulator (iris, hq3.rs): one GE HLE with one live state. A switch copies
 *   it into and out of GE0's ERAM slot, as the microcode does. GE1 gets its
 *   own ERAM array: a transfer repeating GE0's last one is GE1's (a read at
 *   one below GE0's last address with the same count, or a write set
 *   starting where GE0's set started), and GE1's reads are offset by one
 *   word. Nothing reads GE1's copy. Before this, GE1's half (read at S - 1)
 *   landed on GE0's copy one word off and shifted the restored state by a
 *   field. Avid Matador came back from being iconified with its RGB context
 *   flagged colour-index (PP1 fill mode format 6, colour mask 0xFFF).
 *   Possible later: serve GE1 reads from GE0's ERAM and drop GE1's writes
 *   (rules/mgras/eram-state-ideas.md).
 */

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

/*
 * ============================================================================
 * IMAGING ENGINE: THE GE PIXEL PIPELINE
 * ============================================================================
 *
 * Mapped 2026-10 from IRIX 6.5.22 libGLcore with test/gltest/pixtest.c
 * (one GL call a case; recorded with `mgras rec`, decoded with
 * tools/mgras-pixdecode.py --summary --ucode mgras_ge.u). Our model is
 * src/dev/mgras/pixpipe.rs. The HQ side (tokens, payloads, readbacks) is
 * in HQ3.h "PIXEL OPERATIONS", the raster side (XFRMODE) in RE4.h.
 *
 * Who does what, per GL call:
 *   glDrawPixels, glCopyPixels (draw half), glTexImage / glTexSubImage,
 *   glBitmap: the host elements go through a GE microcode program (the
 *   pixel transfer: conversion, scale/bias, maps, index shift/offset,
 *   format expansion, y zoom), then to the raster engine in the transfer
 *   format XFRMODE names. The raster engine does the x zoom / decimation
 *   and writes the pixels (or texels, for loads into TRAM).
 *   glReadPixels, glGetTexImage, glCopyPixels (read half): the raster
 *   engine alone, no GE program. libGLcore applies no read-side pixel
 *   transfer at all (GL_RED_SCALE and the maps are ignored by
 *   glReadPixels) and packs the packed types itself on the CPU.
 *
 * The program, GE address 0x13B (PIXEL_STATE, count prog_len words):
 *   pairs (microcode entry, state address); module k's state address is
 *   the second word of pair k + 1, the first pair's second word is 0, the
 *   last module (always pipecontrol) has its state in the last pair.
 *   Entries are the routines of the microcode's line table (mgras_ge.u,
 *   identical in the revB and HQ4 microcode):
 *     0x156A clamp        0x1655 expand       0x1865 shiftadd
 *     0x1A3E mask         0x1AC4 LUT          0x1E3E scalebias
 *     0x1F44 inttofloat   0x24D7 bitmaptofloat 0x352D pipecontrol
 *     0x3663 / 0x3715 / 0x374A zoom            0x3874 unpack
 *     0x399A compress     0x3E65 colmatrix    0x3EF5 xzoom
 *   States live in GE memory (0x100-0x1FF, PIXEL_STATE) or in ERAM
 *   (0xC00 up, INIT_PIXEL_STATE_ERAM 0x0CD); a module does not care which.
 *
 * The modules work on one row at a time, in batches of 24 components,
 * through working RAM. State words 0-4 are pointers and batch counts
 * (input, ?, output, whole batches, remainder); the parameters start at
 * word 5. Any per-component parameter cycles with the component's place
 * in the row's stream, so an RGBA row with 12 cycling slots repeats every
 * 3 pixels.
 *   inttofloat  [5] scale: 1/255 (ubyte), 2/255 (byte, then a bias),
 *               1/65535, 2/65535, 2^-31 ... Input element type comes from
 *               ERAM 0xDBB: 0 s8, 1 u8, 2 s16, 3 u16, 4 32-bit.
 *   shiftadd    [5] signed shift (left when positive, right when
 *               negative), [6] integer add. GL's INDEX_SHIFT and
 *               INDEX_OFFSET. UNSIGNED_INT colour data ahead of a signed
 *               inttofloat comes through it with shift -1.
 *   mask        [5] AND mask (stencil: 0x1FF seen; colour index: the
 *               map size - 1; a colour-index glDrawPixels from the host
 *               with no maps: 0xFFFFFFFF, state at 0x1D6).
 *               glCopyPixels on a colour-index visual (libGLcore's
 *               __glMgrFastCopyPixels) loads the program [mask 0x1D6,
 *               pipecontrol] but never the mask state, nor the element
 *               type at ERAM 0xDBB: __glMgrInitPixelPipe, which sends the
 *               module states, does not run on that path. The copy relies
 *               on whatever the GE already holds there (traced 2026-10-15,
 *               test/gltest/cicopy.c and PowerAnimator 9's front/back
 *               copies; nothing on a fresh boot ever writes 0x1D6). Where
 *               a real GE gets those words from is not known; our model
 *               passes the indices through when they were never loaded.
 *   scalebias   12 (bias, scale) pairs from [5], cycling. GL's
 *               c * scale + bias (*_SCALE / *_BIAS), and libGLcore folds
 *               the signed types' 2/255 + (-1) correction into it.
 *   expand      [5] which components the host format has: 0 A, 1 B, 2 G,
 *               3 R (the absent ones take fill values [7..] in order,
 *               starting after the present one), 4 L (fill alpha [7]),
 *               5 LA, 6 RGB (fill alpha [7]), 7 one index copied to all
 *               four slots (before the I_TO_R/G/B/A maps). The fills
 *               carry any scale/bias that ran before expand.
 *   unpack      packed types (5_6_5, 4_4_4_4 ...): [5] element size
 *               (0 16-bit, 1 32-bit, 2 8-bit), [6..9] per-field scales,
 *               [10..13] masks, [14..17] right shifts.
 *   LUT         glPixelMap: [5] cycle length in components (12 on RGBA
 *               pipelines; but 14 on a 12-bit colour-index visual, which
 *               still has six offsets), [6] table id (0xC0D), then table
 *               offsets, one word per component pair, up to the 2^23 word
 *               (the float-to-int trick) that ends the list. Table words
 *               (INIT_COLOR_TABLE 0x089 payloads: [?, bytes, 0xC0D, ?,
 *               offset, count, entries]) each hold two 16-bit results:
 *               high half for the pair's first component, low half for
 *               its second; I_TO_I maps repeat the entry in both halves.
 *               An index looks up its entry directly; a colour is scaled
 *               to the map size by a clamp first. A 4096-entry I_TO_I map
 *               (12-bit visual) comes as 16 INIT_COLOR_TABLE blocks of
 *               256 at offsets 0x000..0xF00. The table memory is the
 *               board's, not the context's (4096 words would not fit the
 *               kernel's 0x17C7-word context slot); libGLcore sends the
 *               tables before each pixel operation that uses them.
 *   clamp       12 cycling output scales from [5]; the value is clamped to
 *               [0, 1], then scaled: 255 for bytes, 127 signed, 65535,
 *               2^32 - 1, or a LUT's size - 1 when a LUT follows.
 *   compress    texture loads: [5] picks the internal format's
 *               components out of RGBA: 0 A, 1 R (luminance, intensity),
 *               2 R and A, 4 RGB. The input is always four components.
 *   bitmaptofloat  GL_BITMAP data (stencil and index draws): a bit a
 *               pixel, most significant first, to 0.0 / 1.0.
 *   bitmaptoint 0x25A0: the same as integers 0 / 1, on colour-index
 *               visuals (then shiftadd for INDEX_OFFSET, mask).
 *   colmatrix   SGI_color_matrix; libGLcore always puts one in an RGBA
 *               pipeline. With an identity (a 5-word state) it passes
 *               the data through.
 *   zoom        GE 0x18E state; [4] = 1 / zoom_y. The GE repeats or
 *               drops rows; 0x192 holds 1 / zoom too (see HQ3.h).
 *   xzoom       x replication for |zoom_x| > 1: an index table from [7];
 *               the replication count is the length of its first run of
 *               zeros (ceil(zoom_x)). The raster engine then does the
 *               exact fraction (RE4.h XFRFACTOR).
 *   pipecontrol the hand-off to the raster engine (last module).
 *   A pipeline whose first module is none of the converters (inttofloat,
 *   shiftadd, unpack, mask, bitmaptofloat) takes 32-bit elements as IEEE
 *   floats (GL_FLOAT).
 *
 * The element type word ERAM 0xDBB misleads for stencil and colour-index
 * draws of byte data; the row geometry (bytes a row / width) is the
 * reliable element size there.
 *
 * Typical programs (traced):
 *   RGBA UNSIGNED_BYTE, no transfer:  inttofloat -> colmatrix -> clamp
 *                                      -> pipecontrol
 *   + scale/bias:   inttofloat -> scalebias -> colmatrix -> clamp -> ...
 *   + MAP_COLOR:    ... -> clamp(map size - 1) -> LUT -> ...
 *   LUMINANCE:      inttofloat -> expand(4) -> colmatrix -> clamp -> ...
 *   FLOAT:          colmatrix -> clamp -> pipecontrol (no converter)
 *   COLOR_INDEX on an RGBA visual: shiftadd -> mask -> (LUT) -> ...
 *   COLOR_INDEX on a CI visual: mask -> pipecontrol; with a map
 *                   mask -> inttofloat -> LUT -> mask -> pipecontrol;
 *                   GL_BITMAP bitmaptoint -> shiftadd -> mask -> ...
 *   STENCIL_INDEX:  shiftadd -> mask(0x1FF) -> pipecontrol
 *   texture load into L/LA/A/I/RGB: ... -> compress -> clamp -> ...
 *   5_6_5 etc.:     unpack -> ... (the fields as components)
 *
 * Output: the last module's components go to the raster engine as the
 * XFRMODE component type (bytes, shorts, ints), clamped. Colour and
 * stencil indices keep their low bits instead (GL masks them by the
 * write mask / plane count); the raster engine stores the low byte.
 */

/*
 * ============================================================================
 * STATE READBACK: WHERE glGet* FINDS EACH PIECE OF GL STATE
 * ============================================================================
 *
 * Mapped 2026-10-13 with test/gltest/glstate.c (every queryable GL state
 * set to a non-default value and read back; markers split the recording,
 * tools/mgras-statemap.py) and `mgras probe` runs (the GE answers chosen
 * words, tools/mgras-probe-states.py, which show how libGLcore decodes
 * them). IRIX 6.5.22 libGLcore. Our model: src/dev/mgras/glquery.rs.
 *
 * Selection (glRenderMode(GL_SELECT); libGLcore 6.5.22, disassembled and
 * traced): the GE keeps the name stack and the hit records. Tokens: 0x0CB
 * (1 word) enters select mode; 0x0C4 INIT_NAMES, 0x0C5 LOAD_NAME (name),
 * 0x0C6 POP_NAME, 0x0C7 PUSH_NAME (name); 0x0C9 RENDER_MODE leaves it.
 * libGLcore then reads the records: __MGR_RETURN_MODE of word 0xC60 (the
 * record words held), then of each record word i with 0xFFFFFFFF as the
 * second word. A record is [sequence, name count, z min, z max, names...],
 * the depths floats in [0, 1] that libGLcore scales by 2^32 - 1. On a
 * two-GE board it reads GE 0's list, sends 0x061, reads GE 1's, and merges
 * them by sequence (equal sequences are one hit seen by both GEs: z range
 * widened); 0x062 ends the read and empties the lists. libGLcore counts
 * record words itself (4 + depth a name change) and reads early before
 * about 2000. GL_NAME_STACK_DEPTH reads word 0xC59 as an integer. (Octane
 * HQ4 addresses 0x8C higher: 0xCE5, 0xCEC.)
 *
 * glGetTexImage (libGLcore 6.5.22): the TE returns the texture's own
 * components (XFRMODE format 9 one, 0xA two, 7 RGB, 8 RGBA), and
 * __glMgr_FormatTexels expands them by component count alone: one
 * component to red, two to red and alpha, missing components 0. So an
 * ALPHA texture reads back (A, 0, 0, 0), LUMINANCE and INTENSITY (L, 0, 0,
 * 0), RGB (R, G, B, 0) where GL 1.1 wants (0, 0, 0, A), (L, 0, 0, 1) and
 * (R, G, B, 1). A libGLcore departure, not the board's.
 *
 * How libGLcore asks:
 *   __MGR_RETURN_MODE (HQ token 0x0A2: address, count, flag) and
 *   SPIN_AND_RETURN (0x0A1: address): the GE writes the word at that state
 *   address to the readback register (HQ3.h, GE_DATA flag). GET_LIGHTFV
 *   (0x0EF: light, pname) and GET_MATERIALFV (0x0EE: face, pname) first
 *   copy the parameter into scratch words 0x32E..0x331, which are then
 *   read with RETURN_MODE. glGetError reads 0x2A0 (the GE's error word):
 *   answering anything but small values there makes libGLcore loop.
 *   glPushAttrib reads much of this state back too (so a probe must keep
 *   the push outside what it measures).
 *
 * Answered by libGLcore from its own shadow (no readback): most enables
 * (lighting, lights, colour material, depth test, cull, logic ops,
 * texturing, texgen, evaluators, normalize, smooth points / polygons,
 * polygon offset fill, the SGI imaging enables), draw / read buffers,
 * clear values of accumulation, pixel store and transfer, pixel maps,
 * zoom, texture objects and parameters, texture environment, hints,
 * limits, lists, matrix / attribute stack depths of client state.
 *
 * Read from the GE (address: contents, format):
 *   0x004-0x007  current colour, floats (SPIN_AND_RETURN)
 *   0x008-0x00A  current normal; 0x00B-0x00E current texture coordinates;
 *                0x00F edge flag (format not probed)
 *   0x029        matrix mode - 0x1700
 *   0x03A-0x049  modelview top (OpenGL order; IRIS GL getmatrix reads the
 *                current mode's matrix here)
 *   0x04A-0x059  projection top; 0x06A-0x079 texture top;
 *   0x1B9-0x1C8  SGI colour matrix top
 *   0x083 / 0x896 / 0x897  modelview / projection / texture stack pointers
 *                (0x899 + 16 * depth, 0xA99 + ..., 0xAB9 + ...)
 *   0x1FA        enables: polygon stipple bit 0, line stipple bit 5, fog
 *                bit 17
 *   0x1FC        dither bit 0, stencil test bit 4, alpha test bit 6, logic
 *                op 29:26 (PP1 fill mode's field)
 *   0x23A        stencil: func 2:0, fail op 5:3, depth-fail op 8:6,
 *                depth-pass op 11:9 (KEEP ZERO REPLACE INCR DECR INVERT),
 *                ref 19:12
 *   0x23C        stencil value mask 7:0, write mask 15:8
 *   0x23E        depth func 2:0; depth write mask true when the 24-bit mask
 *                field (27:4) is all set
 *   0x240        alpha func 2:0, reference 14:3 (12 bits, / 4095)
 *                (compare functions: 0x200 + index, NEVER..ALWAYS)
 *   0x29F        colour write mask bits 0-3 R G B A (index mask in CI)
 *   0x2A0        error word
 *   0x2BF        raster distance (eye space); 0x2C4 raster w;
 *   0x2C5-0x2C8  raster colour (as glRasterPos latched it);
 *   0x2C9-0x2CC  raster texture coordinates; 0x2CD-0x2CF raster x, y
 *                (+49151.5), z; 0x2D0 valid (bit 2)
 *   0x32E-0x331  GET_LIGHTFV / GET_MATERIALFV results
 *   0x4D2-0x4D5  light model ambient (libGLcore sends RGB only)
 *   0x4DF / 0x4E0  colour material parameter / face, GL enums
 *   0x0AFB-0xB00 clip plane 0-5 enable, bit 31; 0xB01-0xB18 the planes,
 *                eye space, 4 floats each
 *   0xB42        fog mode (GL enum); 0xB43 density, 0xB44 start, 0xB45 end,
 *   0xB46-0xB49  fog colour; 0xB4A fog index (integer)
 *   0xB7E-0xB81  colour clear value; 0xB86 depth clear (24-bit integer);
 *                0xB87 index clear; 0xB88 stencil clear
 *   0xB8B / 0xB8C  polygon mode front / back; 0xB8D shade model; 0xB8E
 *                local viewer; 0xB8F two side (GL enums / non-zero)
 *   0xB91-0xB94  viewport; 0xB95-0xB96 depth range; 0xB98-0xB9B scissor
 *                (x, y, xmax, ymax); 0xB9C scissor test (non-zero)
 *   0xBA4        line smooth (non-zero)
 *   0xBB1 point size; 0xBB2 line width; 0xBB3 cull face mode; 0xBB4 front
 *                face (GL enums)
 *   0xBBA / 0xBBB  line stipple as LINE_STIPPLE sends it: the pattern
 *                bit-reversed, repeat - 1
 *   0xBBE blend (non-zero); 0xBBF / 0xBC0 blend src / dst; 0xBC1 blend
 *                equation (GL enums)
 *   0xC16 / 0xC18  polygon offset factor / units
 *   0xC59 / 0xC60  selection name stack (GET_FEEDBACK_DATA 0x061; not
 *                modelled)
 *
 * libGLcore's own departures (glstate XFAIL): glGetBooleanv of
 * POLYGON_OFFSET_LINE / POINT and TEXTURE_4D_SGIS is GL_INVALID_ENUM;
 * CLAMP_TO_EDGE_SGIS is rejected; GL_TEXTURE_RESIDENT writes nothing;
 * TEXTURE_LUMINANCE_SIZE of an RGBA8 level reads 8 and INTENSITY_SIZE is
 * GL_INVALID_VALUE; REPLACE is sent as MODULATE; the texture environment
 * colour and the light model ambient go out without alpha; glBlendColorEXT
 * is sent but its query answers zeros; glGetMap returns control points
 * transposed.
 */

#ifdef __cplusplus
}
#endif

#endif /* _SGI_GE11_H_ */
