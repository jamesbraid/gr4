/*
 * RE4_DECODE.h - raster engine register contract for the Impact graphics
 * subsystem (publish-safe decode header)
 *
 *   REG:   <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>
 *   ENUM:  <target> <value> <label> <grade>
 *   TESTVEC: <value> as <BLOCK.name> => field=val, ...
 *
 * Offsets. The raster engine is programmed through a window of numbered
 * registers. A REG offset here is a fixed bias plus the register number: the bias
 * keeps this header's registers clear of the other decode headers in this
 * repository (the check refuses overlap across them) and is bookkeeping, not
 * hardware. No byte address is stated: how a number maps to a byte address
 * inside the window is not settled (the highest numbers are above what a 1 KB
 * window of word-spaced registers would hold).
 *
 * Derivation. Register numbers, field positions and the opcode values were
 * recovered from the behaviour of the shipped graphics drivers and the
 * microcode that feeds this chip, and from observed traffic from the desktop
 * display server and the OpenGL library. Names are descriptive and chosen
 * here. Grades: established = seen consistently in the drivers and traffic;
 * inferred = a reading that fits what was seen; unknown = a bit that is
 * known to exist but is not placed.
 *
 * Triangle setup (summary of what the writers do). Positions are single
 * precision floats biased so that the integer part and an 8-bit fraction land
 * in fixed mantissa bits; edge slopes are 64-bit signed values scaled by 2^24
 * split over a high and low register; colour and depth gradients are fixed
 * point. The engine walks the whole triangle after one write of the
 * instruction register with the setup bit clear. Lines and blocks may set the
 * setup bit and let the chip derive increments from their start and end.
 */
#ifndef RE4_DECODE_H
#define RE4_DECODE_H

#include <stdint.h>

/* REG: RE.tri_x_major 0xe000 w32 reset=unknown inferred */
/* REG: RE.tri_x_upper 0xe001 w32 reset=unknown inferred */
/* REG: RE.tri_x_lower 0xe002 w32 reset=unknown inferred */
/* REG: RE.tri_y_top 0xe003 w32 reset=unknown inferred */
/* REG: RE.tri_y_mid 0xe004 w32 reset=unknown inferred */
/* REG: RE.tri_y_bottom 0xe005 w32 reset=unknown inferred */
/* REG: RE.tri_slope_major_hi 0xe006 w32 reset=unknown inferred */
/* REG: RE.tri_slope_major_lo 0xe007 w32 reset=unknown inferred */
/* REG: RE.tri_slope_upper_hi 0xe008 w32 reset=unknown inferred */
/* REG: RE.tri_slope_upper_lo 0xe009 w32 reset=unknown inferred */
/* REG: RE.tri_slope_lower_hi 0xe00a w32 reset=unknown inferred */
/* REG: RE.tri_slope_lower_lo 0xe00b w32 reset=unknown inferred */

/* REG: RE.aaline_x_start 0xe00c w32 reset=unknown inferred */
/* REG: RE.aaline_y_start 0xe00d w32 reset=unknown inferred */
/* REG: RE.aaline_x_end 0xe00e w32 reset=unknown inferred */
/* REG: RE.aaline_y_end 0xe00f w32 reset=unknown inferred */
/* REG: RE.aaline_dx 0xe010 w32 reset=unknown inferred */
/* REG: RE.aaline_dy 0xe011 w32 reset=unknown inferred */
/* REG: RE.aaline_adjust 0xe012 w32 reset=unknown inferred */

/*
 * Instruction register. A write that asks for execution runs the primitive
 * it selects after the value lands. A second number reaches the same
 * register for the 2D primitives.
 */
/* REG: RE.instr 0xe013 w32 reset=unknown established */
/* FIELD: RE.instr.opcode 3:0 established */
#define RE_INSTR_OPCODE_SHIFT 0
#define RE_INSTR_OPCODE_MASK  0xfu
/* ENUM: RE.instr.opcode 0 area_left_to_right established */
#define RE_INSTR_OPCODE_AREA_LEFT_TO_RIGHT 0
/* ENUM: RE.instr.opcode 1 area_right_to_left established */
#define RE_INSTR_OPCODE_AREA_RIGHT_TO_LEFT 1
/* ENUM: RE.instr.opcode 2 aaline established */
#define RE_INSTR_OPCODE_AALINE 2
/* ENUM: RE.instr.opcode 4 point established */
#define RE_INSTR_OPCODE_POINT 4
/* ENUM: RE.instr.opcode 5 line established */
#define RE_INSTR_OPCODE_LINE 5
/* ENUM: RE.instr.opcode 8 block established */
#define RE_INSTR_OPCODE_BLOCK 8
/* FIELD: RE.instr.setup 4:4 established */
#define RE_INSTR_SETUP_SHIFT 4
#define RE_INSTR_SETUP_MASK  0x1u

/* REG: RE.line_xy_start 0xe040 w32 reset=unknown inferred */
/* REG: RE.line_xy_end 0xe041 w32 reset=unknown inferred */
/* REG: RE.line_step_a 0xe042 w32 reset=unknown inferred */
/* REG: RE.line_step_b 0xe043 w32 reset=unknown inferred */
/* REG: RE.line_error_octant 0xe044 w32 reset=unknown inferred */
/* REG: RE.instr_alias 0xe045 w32 reset=unknown established */
/* REG: RE.block_xy_start 0xe046 w32 reset=unknown inferred */
/* REG: RE.block_xy_end 0xe047 w32 reset=unknown inferred */
/* REG: RE.block_xy_move 0xe048 w32 reset=unknown inferred */
/* REG: RE.block_saved_octant 0xe049 w32 reset=unknown inferred */

/* REG: RE.color_packed 0xe05b w32 reset=unknown inferred */
/* REG: RE.color_red 0xe05c w32 reset=unknown inferred */
/* REG: RE.color_green 0xe05d w32 reset=unknown inferred */
/* REG: RE.color_blue 0xe05e w32 reset=unknown inferred */
/* REG: RE.color_alpha 0xe05f w32 reset=unknown inferred */
/* REG: RE.color_red_edge 0xe060 w32 reset=unknown inferred */
/* REG: RE.color_red_span 0xe061 w32 reset=unknown inferred */
/* REG: RE.color_green_edge 0xe062 w32 reset=unknown inferred */
/* REG: RE.color_green_span 0xe063 w32 reset=unknown inferred */
/* REG: RE.color_blue_edge 0xe064 w32 reset=unknown inferred */
/* REG: RE.color_blue_span 0xe065 w32 reset=unknown inferred */
/* REG: RE.color_alpha_edge 0xe066 w32 reset=unknown inferred */
/* REG: RE.color_alpha_span 0xe067 w32 reset=unknown inferred */
/* REG: RE.depth_hi 0xe068 w32 reset=unknown inferred */
/* REG: RE.depth_lo 0xe069 w32 reset=unknown inferred */
/* REG: RE.depth_span_hi 0xe06a w32 reset=unknown inferred */
/* REG: RE.depth_span_lo 0xe06b w32 reset=unknown inferred */
/* REG: RE.depth_edge_hi 0xe06c w32 reset=unknown inferred */
/* REG: RE.depth_edge_lo 0xe06d w32 reset=unknown inferred */
/* REG: RE.glyph_hi 0xe070 w32 reset=unknown inferred */
/* REG: RE.glyph_lo 0xe071 w32 reset=unknown inferred */

/* REG: RE.xfer_abort 0xe100 w32 reset=unknown inferred */

/* Pixel transfer control. */
/* REG: RE.xfer_control 0xe102 rw32 reset=unknown inferred */
/* FIELD: RE.xfer_control.dma_start 0:0 inferred */
#define RE_XFER_CONTROL_DMA_START_SHIFT 0
#define RE_XFER_CONTROL_DMA_START_MASK  0x1u
/* FIELD: RE.xfer_control.pio_start 1:1 inferred */
#define RE_XFER_CONTROL_PIO_START_SHIFT 1
#define RE_XFER_CONTROL_PIO_START_MASK  0x1u
/* FIELD: RE.xfer_control.device 2:2 inferred */
#define RE_XFER_CONTROL_DEVICE_SHIFT 2
#define RE_XFER_CONTROL_DEVICE_MASK  0x1u
/* ENUM: RE.xfer_control.device 0 framebuffer inferred */
#define RE_XFER_CONTROL_DEVICE_FRAMEBUFFER 0
/* ENUM: RE.xfer_control.device 1 texture_memory inferred */
#define RE_XFER_CONTROL_DEVICE_TEXTURE_MEMORY 1
/* FIELD: RE.xfer_control.read 3:3 inferred */
#define RE_XFER_CONTROL_READ_SHIFT 3
#define RE_XFER_CONTROL_READ_MASK  0x1u
/* FIELD: RE.xfer_control.busy 4:4 inferred */
#define RE_XFER_CONTROL_BUSY_SHIFT 4
#define RE_XFER_CONTROL_BUSY_MASK  0x1u

/*
 * Fill mode. Bits 3, 4, 5, 6, 7 and 10 and the block type are placed from
 * the drivers; the enables for shading, rounding, depth iteration and the
 * antialiasing of lines and points exist but are not placed.
 */
/* REG: RE.fill_mode 0xe110 rw32 reset=unknown inferred */
/* FIELD: RE.fill_mode.poly_stipple 0:0 inferred */
#define RE_FILL_MODE_POLY_STIPPLE_SHIFT 0
#define RE_FILL_MODE_POLY_STIPPLE_MASK  0x1u
/* FIELD: RE.fill_mode.glyph_stipple 3:3 inferred */
#define RE_FILL_MODE_GLYPH_STIPPLE_SHIFT 3
#define RE_FILL_MODE_GLYPH_STIPPLE_MASK  0x1u
/* FIELD: RE.fill_mode.glyph_opaque 4:4 inferred */
#define RE_FILL_MODE_GLYPH_OPAQUE_SHIFT 4
#define RE_FILL_MODE_GLYPH_OPAQUE_MASK  0x1u
/* FIELD: RE.fill_mode.line_stipple 5:5 inferred */
#define RE_FILL_MODE_LINE_STIPPLE_SHIFT 5
#define RE_FILL_MODE_LINE_STIPPLE_MASK  0x1u
/* FIELD: RE.fill_mode.line_opaque 6:6 inferred */
#define RE_FILL_MODE_LINE_OPAQUE_SHIFT 6
#define RE_FILL_MODE_LINE_OPAQUE_MASK  0x1u
/* FIELD: RE.fill_mode.line_advance 7:7 inferred */
#define RE_FILL_MODE_LINE_ADVANCE_SHIFT 7
#define RE_FILL_MODE_LINE_ADVANCE_MASK  0x1u
/* FIELD: RE.fill_mode.skip_last_pixel 10:10 inferred */
#define RE_FILL_MODE_SKIP_LAST_PIXEL_SHIFT 10
#define RE_FILL_MODE_SKIP_LAST_PIXEL_MASK  0x1u
/* FIELD: RE.fill_mode.fast_fill 20:20 inferred */
#define RE_FILL_MODE_FAST_FILL_SHIFT 20
#define RE_FILL_MODE_FAST_FILL_MASK  0x1u
/* FIELD: RE.fill_mode.block_type 24:22 inferred */
#define RE_FILL_MODE_BLOCK_TYPE_SHIFT 22
#define RE_FILL_MODE_BLOCK_TYPE_MASK  0x7u
/* ENUM: RE.fill_mode.block_type 0 glyph_data inferred */
#define RE_FILL_MODE_BLOCK_TYPE_GLYPH_DATA 0
/* ENUM: RE.fill_mode.block_type 1 stippled_block inferred */
#define RE_FILL_MODE_BLOCK_TYPE_STIPPLED_BLOCK 1
/* ENUM: RE.fill_mode.block_type 2 pio_read inferred */
#define RE_FILL_MODE_BLOCK_TYPE_PIO_READ 2
/* ENUM: RE.fill_mode.block_type 3 pio_write inferred */
#define RE_FILL_MODE_BLOCK_TYPE_PIO_WRITE 3
/* ENUM: RE.fill_mode.block_type 4 dma_read inferred */
#define RE_FILL_MODE_BLOCK_TYPE_DMA_READ 4
/* ENUM: RE.fill_mode.block_type 5 dma_write inferred */
#define RE_FILL_MODE_BLOCK_TYPE_DMA_WRITE 5

/* REG: RE.texmode1 0xe111 rw32 reset=unknown inferred */

/* REG: RE.config 0xe112 rw32 reset=unknown inferred */
/* FIELD: RE.config.target_raster 0:0 inferred */
#define RE_CONFIG_TARGET_RASTER_SHIFT 0
#define RE_CONFIG_TARGET_RASTER_MASK  0x1u
/* FIELD: RE.config.y_flip 3:3 inferred */
#define RE_CONFIG_Y_FLIP_SHIFT 3
#define RE_CONFIG_Y_FLIP_MASK  0x1u
/* FIELD: RE.config.line_round 4:4 inferred */
#define RE_CONFIG_LINE_ROUND_SHIFT 4
#define RE_CONFIG_LINE_ROUND_MASK  0x1u

/* REG: RE.scissor_x 0xe113 rw32 reset=unknown inferred */
/* REG: RE.scissor_y 0xe114 rw32 reset=unknown inferred */
/* REG: RE.window_origin 0xe115 rw32 reset=unknown inferred */

/*
 * Colours shared with the texture engine and double buffered. Opaque
 * stipples draw their zero bits in the background colour: in RGB modes it is
 * twelve bits per component, red lowest like the packed colour, green and
 * red in the first register and blue in the second; in colour-index modes
 * the index sits in the low twelve bits of the first.
 */
/* REG: RE.background_rg 0xe140 rw32 reset=unknown inferred */
/* REG: RE.background_ba 0xe141 rw32 reset=unknown inferred */
/* REG: RE.texenv_rg 0xe142 rw32 reset=unknown inferred */
/* REG: RE.texenv_b 0xe143 rw32 reset=unknown inferred */
/* REG: RE.fog_rg 0xe144 rw32 reset=unknown inferred */
/* REG: RE.fog_b 0xe145 rw32 reset=unknown inferred */

/* REG: RE.aaline_config 0xe146 rw32 reset=unknown inferred */
/* FIELD: RE.aaline_config.smooth 0:0 inferred */
#define RE_AALINE_CONFIG_SMOOTH_SHIFT 0
#define RE_AALINE_CONFIG_SMOOTH_MASK  0x1u
/* FIELD: RE.aaline_config.width 7:1 inferred */
#define RE_AALINE_CONFIG_WIDTH_SHIFT 1
#define RE_AALINE_CONFIG_WIDTH_MASK  0x7fu

/* Four screen masks, each a range pair per axis: (low << 16) | high. */
/* REG: RE.screen_mask1_x 0xe147 rw32 reset=unknown inferred */
/* REG: RE.screen_mask1_y 0xe148 rw32 reset=unknown inferred */
/* REG: RE.screen_mask2_x 0xe149 rw32 reset=unknown inferred */
/* REG: RE.screen_mask2_y 0xe14a rw32 reset=unknown inferred */
/* REG: RE.screen_mask3_x 0xe14b rw32 reset=unknown inferred */
/* REG: RE.screen_mask3_y 0xe14c rw32 reset=unknown inferred */
/* REG: RE.screen_mask4_x 0xe14d rw32 reset=unknown inferred */
/* REG: RE.screen_mask4_y 0xe14e rw32 reset=unknown inferred */

/*
 * Window mode: per mask n (1 to 4) an enable at bit n-1 and an inside/outside
 * select at bit n+3. Only mask 1 has been seen used (value 0x11: enabled, keep
 * pixels inside); the positions for masks 2 to 4 follow by pattern.
 */
/* REG: RE.window_mode 0xe14f rw32 reset=unknown inferred */
/* FIELD: RE.window_mode.enable1 0:0 inferred */
#define RE_WINDOW_MODE_ENABLE1_SHIFT 0
#define RE_WINDOW_MODE_ENABLE1_MASK  0x1u
/* FIELD: RE.window_mode.enable2 1:1 inferred */
#define RE_WINDOW_MODE_ENABLE2_SHIFT 1
#define RE_WINDOW_MODE_ENABLE2_MASK  0x1u
/* FIELD: RE.window_mode.enable3 2:2 inferred */
#define RE_WINDOW_MODE_ENABLE3_SHIFT 2
#define RE_WINDOW_MODE_ENABLE3_MASK  0x1u
/* FIELD: RE.window_mode.enable4 3:3 inferred */
#define RE_WINDOW_MODE_ENABLE4_SHIFT 3
#define RE_WINDOW_MODE_ENABLE4_MASK  0x1u
/* FIELD: RE.window_mode.inside1 4:4 inferred */
#define RE_WINDOW_MODE_INSIDE1_SHIFT 4
#define RE_WINDOW_MODE_INSIDE1_MASK  0x1u
/* FIELD: RE.window_mode.inside2 5:5 inferred */
#define RE_WINDOW_MODE_INSIDE2_SHIFT 5
#define RE_WINDOW_MODE_INSIDE2_MASK  0x1u
/* FIELD: RE.window_mode.inside3 6:6 inferred */
#define RE_WINDOW_MODE_INSIDE3_SHIFT 6
#define RE_WINDOW_MODE_INSIDE3_MASK  0x1u
/* FIELD: RE.window_mode.inside4 7:7 inferred */
#define RE_WINDOW_MODE_INSIDE4_SHIFT 7
#define RE_WINDOW_MODE_INSIDE4_MASK  0x1u

/* REG: RE.xfer_size 0xe153 rw32 reset=unknown inferred */
/* FIELD: RE.xfer_size.width 15:0 inferred */
#define RE_XFER_SIZE_WIDTH_SHIFT 0
#define RE_XFER_SIZE_WIDTH_MASK  0xffffu
/* FIELD: RE.xfer_size.lines 31:16 inferred */
#define RE_XFER_SIZE_LINES_SHIFT 16
#define RE_XFER_SIZE_LINES_MASK  0xffffu

/* REG: RE.xfer_zoom_init 0xe154 rw32 reset=unknown inferred */
/* REG: RE.xfer_zoom_step 0xe155 rw32 reset=unknown inferred */
/*
 * Zoom encoding: both registers hold 8.8 fixed point, 0x100 meaning a factor of
 * 1.0 (no zoom). Established: the library's host-to-raster setup routines write
 * the pair this way, and the no-zoom path stores 0x100 in both. The magnifying
 * and shrinking arithmetic that derives other values is inferred and not
 * stated here.
 */
#define RE_XFER_ZOOM_UNITY 0x100 /* established */

/* REG: RE.xfer_mask_lo 0xe156 rw32 reset=unknown inferred */
/* REG: RE.xfer_mask_hi 0xe157 rw32 reset=unknown inferred */
/* REG: RE.xfer_counters 0xe158 r32 reset=unknown inferred */

/*
 * Transfer mode. Placed from what the drivers write: component type in 3:0,
 * pixel format in 7:4, begin skip bytes in 10:8, begin skip bits in 13:11,
 * stride skip bytes in 16:14 (three bits in every writer read), zoom in 19,
 * decimate in 20, RGB order in 22, and bit 23 set for every pixel draw.
 * Bits 17 and 18 are one-bit flags the shipped library sets or clears (it
 * sets 18 in its default state and clears 17 to 20 in the copy paths); what
 * they do is not known, and the unpack-order and read-mask flags are among
 * bits 17, 18 and 21. Bit 21 is never written by software examined.
 */
/* REG: RE.xfer_mode 0xe159 rw32 reset=unknown inferred */
/* FIELD: RE.xfer_mode.comp_type 3:0 inferred */
#define RE_XFER_MODE_COMP_TYPE_SHIFT 0
#define RE_XFER_MODE_COMP_TYPE_MASK  0xfu
/* FIELD: RE.xfer_mode.format 7:4 inferred */
#define RE_XFER_MODE_FORMAT_SHIFT 4
#define RE_XFER_MODE_FORMAT_MASK  0xfu
/* ENUM: RE.xfer_mode.format 0 color_index inferred */
#define RE_XFER_MODE_FORMAT_COLOR_INDEX 0
/* ENUM: RE.xfer_mode.format 1 stencil inferred */
#define RE_XFER_MODE_FORMAT_STENCIL 1
/* ENUM: RE.xfer_mode.format 2 depth inferred */
#define RE_XFER_MODE_FORMAT_DEPTH 2
/* ENUM: RE.xfer_mode.format 7 rgb inferred */
#define RE_XFER_MODE_FORMAT_RGB 7
/* ENUM: RE.xfer_mode.format 8 rgba inferred */
#define RE_XFER_MODE_FORMAT_RGBA 8
/* FIELD: RE.xfer_mode.begin_skip_bytes 10:8 inferred */
#define RE_XFER_MODE_BEGIN_SKIP_BYTES_SHIFT 8
#define RE_XFER_MODE_BEGIN_SKIP_BYTES_MASK  0x7u
/* FIELD: RE.xfer_mode.begin_skip_bits 13:11 inferred */
#define RE_XFER_MODE_BEGIN_SKIP_BITS_SHIFT 11
#define RE_XFER_MODE_BEGIN_SKIP_BITS_MASK  0x7u
/* FIELD: RE.xfer_mode.stride_skip_bytes 16:14 inferred */
#define RE_XFER_MODE_STRIDE_SKIP_BYTES_SHIFT 14
#define RE_XFER_MODE_STRIDE_SKIP_BYTES_MASK  0x7u
/* FIELD: RE.xfer_mode.flag17 17:17 inferred */
#define RE_XFER_MODE_FLAG17_SHIFT 17
#define RE_XFER_MODE_FLAG17_MASK  0x1u
/* FIELD: RE.xfer_mode.flag18 18:18 inferred */
#define RE_XFER_MODE_FLAG18_SHIFT 18
#define RE_XFER_MODE_FLAG18_MASK  0x1u
/* FIELD: RE.xfer_mode.zoom 19:19 inferred */
#define RE_XFER_MODE_ZOOM_SHIFT 19
#define RE_XFER_MODE_ZOOM_MASK  0x1u
/* FIELD: RE.xfer_mode.decimate 20:20 inferred */
#define RE_XFER_MODE_DECIMATE_SHIFT 20
#define RE_XFER_MODE_DECIMATE_MASK  0x1u
/* FIELD: RE.xfer_mode.rgb_order 22:22 inferred */
#define RE_XFER_MODE_RGB_ORDER_SHIFT 22
#define RE_XFER_MODE_RGB_ORDER_MASK  0x1u
/* FIELD: RE.xfer_mode.opaque 23:23 inferred */
#define RE_XFER_MODE_OPAQUE_SHIFT 23
#define RE_XFER_MODE_OPAQUE_MASK  0x1u

/* REG: RE.line_stipple_pattern 0xe15a rw32 reset=unknown inferred */
/* REG: RE.line_stipple_repeat 0xe15b rw32 reset=unknown inferred */
/* REG: RE.device_addr 0xe15c rw32 reset=unknown inferred */
/* REG: RE.device_data 0xe15d rw32 reset=unknown inferred */

/* Status. The low byte describes the chips present; the rest is activity. */
/* REG: RE.status 0xe15e r32 reset=unknown inferred */
/* FIELD: RE.status.chip_count 1:0 inferred */
#define RE_STATUS_CHIP_COUNT_SHIFT 0
#define RE_STATUS_CHIP_COUNT_MASK  0x3u
/* FIELD: RE.status.board_index 3:2 inferred */
#define RE_STATUS_BOARD_INDEX_SHIFT 2
#define RE_STATUS_BOARD_INDEX_MASK  0x3u
/* FIELD: RE.status.revision 7:4 inferred */
#define RE_STATUS_REVISION_SHIFT 4
#define RE_STATUS_REVISION_MASK  0xfu
/* FIELD: RE.status.fifo_empty 8:8 inferred */
#define RE_STATUS_FIFO_EMPTY_SHIFT 8
#define RE_STATUS_FIFO_EMPTY_MASK  0x1u
/* FIELD: RE.status.raster_busy 9:9 inferred */
#define RE_STATUS_RASTER_BUSY_SHIFT 9
#define RE_STATUS_RASTER_BUSY_MASK  0x1u
/* FIELD: RE.status.pixel_busy 10:10 inferred */
#define RE_STATUS_PIXEL_BUSY_SHIFT 10
#define RE_STATUS_PIXEL_BUSY_MASK  0x1u

/* REG: RE.toggle_context 0xe15f w32 reset=unknown inferred */

/*
 * Worked values: the instruction words the drivers write for a
 * hardware-setup line and block, and a fill mode a display server writes for
 * a stippled block.
 */
/*
 * TESTVEC: 0x15 as RE.instr => opcode=5, setup=1
 */
/*
 * TESTVEC: 0x18 as RE.instr => opcode=8, setup=1
 */
/*
 * TESTVEC: 0x00418008 as RE.fill_mode => glyph_stipple=1, block_type=1
 */
/*
 * TESTVEC: 0x00040080 as RE.xfer_mode => comp_type=0, format=8, flag18=1, stride_skip_bytes=0
 */

#endif
