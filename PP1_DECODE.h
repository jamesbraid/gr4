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

#endif
