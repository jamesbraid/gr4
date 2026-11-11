/*
 * PP1_DECODE.h - display read buffer registers of the Impact graphics
 * subsystem (publish-safe decode header)
 *
 *   REG:   <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>
 *   TESTVEC: <value> as <BLOCK.name> => field=val, ...
 *
 * Offsets. The pixel processors are programmed through the same window of
 * numbered registers as the raster engine. A REG offset here is a fixed bias
 * plus the register number; the bias keeps this header clear of the other
 * decode headers (the check refuses overlap across them) and is bookkeeping,
 * not hardware. No byte address is stated.
 *
 * Derivation. The register numbers and the size register's field positions
 * were read from the graphics kernel module's timing routine: it builds the
 * size value from the screen width and the raster engine count, then writes
 * the size and pointer registers each as one 64-bit store into the board's
 * command window, the upper word being a fixed command word naming the
 * register. Names are descriptive and chosen here.
 *
 * The routine builds bits 10:0 only. Bits 31:11 of the written value are
 * whatever an earlier call left in a stack word (inferred from the code of two
 * kernel builds), so no field is placed there and whether the chip latches
 * them is unknown.
 */
#ifndef PP1_DECODE_H
#define PP1_DECODE_H

#include <stdint.h>

/* REG: PP.drb_pointers 0xf16d w32 reset=unknown inferred */
/* REG: PP.drb_size 0xf16e w32 reset=unknown inferred */

/* Upper word of the 64-bit store that writes each register: a fixed command word. */
#define PP_DRB_SIZE_COMMAND_WORD 0x00196e04u /* established, kernel constant table */
#define PP_DRB_POINTERS_COMMAND_WORD 0x00196d04u /* established, kernel constant table */

/*
 * Pointer word. Bits 9:0 and 19:10 are two 10-bit page pointers; the software
 * that builds the word treats them so (established): the display server's
 * frame-buffer read routine masks a page with 0x3FF, places it in bits 9:0 and
 * a copy in bits 19:10, and keeps bits 31:20 of the previous word, and the
 * kernel's routine for GL windows composes the word as page A | page B << 10
 * under the mask 0xFFF003FF. The display server holds two prebuilt words per
 * screen mode, main and overlay, read from the mode's video format file; which
 * one it writes picks the planes, there is no plane select in the word (see
 * docs/OPEN_QUESTIONS.md entry 15). Page A is the buffer drawn and read, page
 * B the second buffer of a double-buffered window (inferred from the
 * values: B is A plus the buffer size, or a copy of A when there is no second
 * buffer). Bits 31:20 are not placed: no format file sets them and the kernel
 * routine leaves them as stack residue (inferred), so whether the pixel
 * processor latches them is unknown.
 */
/* FIELD: PP.drb_pointers.page_a 9:0 established */
#define PP_DRB_POINTERS_PAGE_A_SHIFT 0
#define PP_DRB_POINTERS_PAGE_A_MASK  0x3ffu
/* FIELD: PP.drb_pointers.page_b 19:10 established */
#define PP_DRB_POINTERS_PAGE_B_SHIFT 10
#define PP_DRB_POINTERS_PAGE_B_MASK  0x3ffu

/* FIELD: PP.drb_size.xtiles9 1:0 established */
#define PP_DRB_SIZE_XTILES9_SHIFT 0
#define PP_DRB_SIZE_XTILES9_MASK  0x3u
/* FIELD: PP.drb_size.xtiles36 5:2 established */
#define PP_DRB_SIZE_XTILES36_SHIFT 2
#define PP_DRB_SIZE_XTILES36_MASK  0xfu
/* FIELD: PP.drb_size.raster_engines_minus_1 7:6 established */
#define PP_DRB_SIZE_RASTER_ENGINES_MINUS_1_SHIFT 6
#define PP_DRB_SIZE_RASTER_ENGINES_MINUS_1_MASK  0x3u
/* FIELD: PP.drb_size.dma_line_count_mask 9:8 inferred */
#define PP_DRB_SIZE_DMA_LINE_COUNT_MASK_SHIFT 8
#define PP_DRB_SIZE_DMA_LINE_COUNT_MASK_MASK  0x3u
/* FIELD: PP.drb_size.auto_flush_off 10:10 inferred */
#define PP_DRB_SIZE_AUTO_FLUSH_OFF_SHIFT 10
#define PP_DRB_SIZE_AUTO_FLUSH_OFF_MASK  0x1u

/*
 * Field meanings. xtiles9 is the screen width in 768-pixel tiles rounded up and
 * xtiles36 the width in 192-pixel tiles rounded up. The routine fixes each
 * field's position (established); the tile sizes are inferred from the
 * board's tile layout. auto_flush_off set means auto flush is disabled
 * (inferred from traced values).
 *
 * The two values below are what the routine computes for a 1024-pixel width
 * with one and with two raster engines (re-read in the held kernel object:
 * width 768 and 192 divisors, the raster-engine count compare, and the
 * line-count-mask field taking 3 for any count but two and 2 for two). Both
 * are established as the low bits the routine produces. The full words the
 * boards were seen to carry also hold the stack-leftover top bits and come
 * from a trace this header does not re-read.
 *
 * TESTVEC: 0x31a as PP.drb_size => xtiles9=2, xtiles36=6, raster_engines_minus_1=0, dma_line_count_mask=3, auto_flush_off=0
 * TESTVEC: 0x25a as PP.drb_size => xtiles9=2, xtiles36=6, raster_engines_minus_1=1, dma_line_count_mask=2, auto_flush_off=0
 */

/*
 * Pointer words from the video format files for 1280 x 1024 at 60 Hz, one
 * raster engine and two (the files are the same in the two releases compared;
 * established, read at the field offsets the files' own tables give).
 *
 * TESTVEC: 0x90240 as PP.drb_pointers => page_a=576, page_b=576
 * TESTVEC: 0x101c0 as PP.drb_pointers => page_a=448, page_b=64
 * TESTVEC: 0xc8240 as PP.drb_pointers => page_a=576, page_b=800
 * TESTVEC: 0x380e0 as PP.drb_pointers => page_a=224, page_b=224
 */

#endif
