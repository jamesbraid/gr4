/* generated from devices/re4/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 4 */
/* input sha256 9f940ddb6e51059fceca251c397fccef034b17eb9de32a8586cd8a332a742e4b */
/* raster engine register contract for the Impact graphics */
#ifndef RE_GEN_H
#define RE_GEN_H

#include <stdint.h>


/* tri_x_major: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_TRI_X_MAJOR_OFFSET                        0xe000u /* inferred */

/* tri_x_upper: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_TRI_X_UPPER_OFFSET                        0xe001u /* inferred */

/* tri_x_lower: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_TRI_X_LOWER_OFFSET                        0xe002u /* inferred */

/* tri_y_top: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_TRI_Y_TOP_OFFSET                          0xe003u /* inferred */

/* tri_y_mid: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_TRI_Y_MID_OFFSET                          0xe004u /* inferred */

/* tri_y_bottom: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_TRI_Y_BOTTOM_OFFSET                       0xe005u /* inferred */

/* tri_slope_major_hi: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TRI_SLOPE_MAJOR_HI_OFFSET                 0xe006u /* inferred */

/* tri_slope_major_lo: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TRI_SLOPE_MAJOR_LO_OFFSET                 0xe007u /* inferred */

/* tri_slope_upper_hi: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TRI_SLOPE_UPPER_HI_OFFSET                 0xe008u /* inferred */

/* tri_slope_upper_lo: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TRI_SLOPE_UPPER_LO_OFFSET                 0xe009u /* inferred */

/* tri_slope_lower_hi: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TRI_SLOPE_LOWER_HI_OFFSET                 0xe00au /* inferred */

/* tri_slope_lower_lo: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TRI_SLOPE_LOWER_LO_OFFSET                 0xe00bu /* inferred */

/* aaline_x_start: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_AALINE_X_START_OFFSET                     0xe00cu /* inferred */

/* aaline_y_start: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_AALINE_Y_START_OFFSET                     0xe00du /* inferred */

/* aaline_x_end: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_AALINE_X_END_OFFSET                       0xe00eu /* inferred */

/* aaline_y_end: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_AALINE_Y_END_OFFSET                       0xe00fu /* inferred */

/* aaline_dx: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_AALINE_DX_OFFSET                          0xe010u /* inferred */

/* aaline_dy: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_AALINE_DY_OFFSET                          0xe011u /* inferred */

/* aaline_adjust: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_AALINE_ADJUST_OFFSET                      0xe012u /* inferred */

/*
 * Instruction register. A write that asks for execution runs the primitive
 * it selects after the value lands. A second number reaches the same
 * register for the 2D primitives.
 */
/* instr: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_INSTR_OFFSET                              0xe013u /* established */
#define RE_INSTR_SETUP_SHIFT                         4 /* established */
#define RE_INSTR_SETUP_MASK                          0x1u
#define RE_INSTR_SETUP_INPLACE (RE_INSTR_SETUP_MASK << RE_INSTR_SETUP_SHIFT)
#define RE_INSTR_OPCODE_SHIFT                        0 /* established */
#define RE_INSTR_OPCODE_MASK                         0xfu
#define RE_INSTR_OPCODE_INPLACE (RE_INSTR_OPCODE_MASK << RE_INSTR_OPCODE_SHIFT)
#define RE_INSTR_OPCODE_AREA_LEFT_TO_RIGHT           0 /* established */
#define RE_INSTR_OPCODE_AREA_RIGHT_TO_LEFT           1 /* established */
#define RE_INSTR_OPCODE_AALINE                       2 /* established */
#define RE_INSTR_OPCODE_POINT                        4 /* established */
#define RE_INSTR_OPCODE_LINE                         5 /* established */
#define RE_INSTR_OPCODE_BLOCK                        8 /* established */

/* line_xy_start: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_LINE_XY_START_OFFSET                      0xe040u /* inferred */

/* line_xy_end: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_LINE_XY_END_OFFSET                        0xe041u /* inferred */

/* line_step_a: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_LINE_STEP_A_OFFSET                        0xe042u /* inferred */

/* line_step_b: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_LINE_STEP_B_OFFSET                        0xe043u /* inferred */

/* line_error_octant: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_LINE_ERROR_OCTANT_OFFSET                  0xe044u /* inferred */

/*
 * The public driver writes 0x18 here with the execute mark to start a rectangle
 * fill or to arm a glyph rectangle, which is the block primitive above.
 * Software
 * expectation; what the board does with the alias is not decoded here.
 */
/* instr_alias: w32, space re4_regs, reset unknown; OpenBSD impact(4) driver
 * register header */
#define RE_INSTR_ALIAS_OFFSET                        0xe045u /* established */

/*
 * Start corner of a 2D block as the public driver packs it: x in bits 31:16 and
 * y in bits 15:0. Software expectation.
 */
/* block_xy_start: w32, space re4_regs, reset unknown; OpenBSD impact(4) driver
 * register header */
#define RE_BLOCK_XY_START_OFFSET                     0xe046u /* inferred */
#define RE_BLOCK_XY_START_X_SHIFT                    16 /* inferred */
#define RE_BLOCK_XY_START_X_MASK                     0xffffu
#define RE_BLOCK_XY_START_X_INPLACE (RE_BLOCK_XY_START_X_MASK << RE_BLOCK_XY_START_X_SHIFT)
#define RE_BLOCK_XY_START_Y_SHIFT                    0 /* inferred */
#define RE_BLOCK_XY_START_Y_MASK                     0xffffu
#define RE_BLOCK_XY_START_Y_INPLACE (RE_BLOCK_XY_START_Y_MASK << RE_BLOCK_XY_START_Y_SHIFT)

/*
 * Inclusive end corner of a 2D block, x in bits 31:16 and y in bits 15:0. The
 * public driver sends the last column and row the block covers, so a block of
 * width w ends at x + w - 1. Software expectation.
 */
/* block_xy_end: w32, space re4_regs, reset unknown; OpenBSD impact(4) driver
 * register header */
#define RE_BLOCK_XY_END_OFFSET                       0xe047u /* inferred */
#define RE_BLOCK_XY_END_X_SHIFT                      16 /* inferred */
#define RE_BLOCK_XY_END_X_MASK                       0xffffu
#define RE_BLOCK_XY_END_X_INPLACE (RE_BLOCK_XY_END_X_MASK << RE_BLOCK_XY_END_X_SHIFT)
#define RE_BLOCK_XY_END_Y_SHIFT                      0 /* inferred */
#define RE_BLOCK_XY_END_Y_MASK                       0xffffu
#define RE_BLOCK_XY_END_Y_INPLACE (RE_BLOCK_XY_END_Y_MASK << RE_BLOCK_XY_END_Y_SHIFT)

/* block_xy_move: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_BLOCK_XY_MOVE_OFFSET                      0xe048u /* inferred */

/* block_saved_octant: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_BLOCK_SAVED_OCTANT_OFFSET                 0xe049u /* inferred */

/*
 * Packed colour the public driver uses for rectangle fills and glyph
 * foreground.
 * Software expectation.
 */
/* color_packed: w32, space re4_regs, reset unknown; OpenBSD impact(4) driver
 * register header */
#define RE_COLOR_PACKED_OFFSET                       0xe05bu /* inferred */
#define RE_COLOR_PACKED_BLUE_SHIFT                   16 /* inferred */
#define RE_COLOR_PACKED_BLUE_MASK                    0xffu
#define RE_COLOR_PACKED_BLUE_INPLACE (RE_COLOR_PACKED_BLUE_MASK << RE_COLOR_PACKED_BLUE_SHIFT)
#define RE_COLOR_PACKED_GREEN_SHIFT                  8 /* inferred */
#define RE_COLOR_PACKED_GREEN_MASK                   0xffu
#define RE_COLOR_PACKED_GREEN_INPLACE (RE_COLOR_PACKED_GREEN_MASK << RE_COLOR_PACKED_GREEN_SHIFT)
#define RE_COLOR_PACKED_RED_SHIFT                    0 /* inferred */
#define RE_COLOR_PACKED_RED_MASK                     0xffu
#define RE_COLOR_PACKED_RED_INPLACE (RE_COLOR_PACKED_RED_MASK << RE_COLOR_PACKED_RED_SHIFT)

/* color_red: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_COLOR_RED_OFFSET                          0xe05cu /* inferred */

/* color_green: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_COLOR_GREEN_OFFSET                        0xe05du /* inferred */

/* color_blue: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_COLOR_BLUE_OFFSET                         0xe05eu /* inferred */

/* color_alpha: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_COLOR_ALPHA_OFFSET                        0xe05fu /* inferred */

/* color_red_edge: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_RED_EDGE_OFFSET                     0xe060u /* inferred */

/* color_red_span: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_RED_SPAN_OFFSET                     0xe061u /* inferred */

/* color_green_edge: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_GREEN_EDGE_OFFSET                   0xe062u /* inferred */

/* color_green_span: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_GREEN_SPAN_OFFSET                   0xe063u /* inferred */

/* color_blue_edge: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_BLUE_EDGE_OFFSET                    0xe064u /* inferred */

/* color_blue_span: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_BLUE_SPAN_OFFSET                    0xe065u /* inferred */

/* color_alpha_edge: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_ALPHA_EDGE_OFFSET                   0xe066u /* inferred */

/* color_alpha_span: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_COLOR_ALPHA_SPAN_OFFSET                   0xe067u /* inferred */

/* depth_hi: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_DEPTH_HI_OFFSET                           0xe068u /* inferred */

/* depth_lo: w32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_DEPTH_LO_OFFSET                           0xe069u /* inferred */

/* depth_span_hi: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_DEPTH_SPAN_HI_OFFSET                      0xe06au /* inferred */

/* depth_span_lo: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_DEPTH_SPAN_LO_OFFSET                      0xe06bu /* inferred */

/* depth_edge_hi: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_DEPTH_EDGE_HI_OFFSET                      0xe06cu /* inferred */

/* depth_edge_lo: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_DEPTH_EDGE_LO_OFFSET                      0xe06du /* inferred */

/*
 * Glyph row data for console bitmaps. For widths one through eight the driver
 * arms one rectangle and executes this register once per row, with the row byte
 * in bits 31:24. For widths nine through sixteen it stages the 16-bit row
 * shifted
 * left 16 bits without executing, so the row's leftmost eight columns sit in
 * bits
 * 31:24. Software expectation; the column order and the one-row advance per
 * execute are inferred from the driver loop.
 */
/* glyph_hi: w32, space re4_regs, reset unknown; OpenBSD impact(4) driver
 * register header */
#define RE_GLYPH_HI_OFFSET                           0xe070u /* inferred */

/*
 * Second glyph word. For widths nine through sixteen the driver writes the row
 * shifted left 24 bits here and executes it to draw that one row, so the top
 * byte
 * carries columns eight through fifteen. Software expectation; the column
 * mapping
 * is inferred from the driver's packing.
 */
/* glyph_lo: w32, space re4_regs, reset unknown; OpenBSD impact(4) driver
 * register header */
#define RE_GLYPH_LO_OFFSET                           0xe071u /* inferred */

/* xfer_abort: w32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_XFER_ABORT_OFFSET                         0xe100u /* inferred */

/* xfer_control: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_XFER_CONTROL_OFFSET                       0xe102u /* inferred */
#define RE_XFER_CONTROL_BUSY_SHIFT                   4 /* inferred */
#define RE_XFER_CONTROL_BUSY_MASK                    0x1u
#define RE_XFER_CONTROL_BUSY_INPLACE (RE_XFER_CONTROL_BUSY_MASK << RE_XFER_CONTROL_BUSY_SHIFT)
#define RE_XFER_CONTROL_READ_SHIFT                   3 /* inferred */
#define RE_XFER_CONTROL_READ_MASK                    0x1u
#define RE_XFER_CONTROL_READ_INPLACE (RE_XFER_CONTROL_READ_MASK << RE_XFER_CONTROL_READ_SHIFT)
#define RE_XFER_CONTROL_DEVICE_SHIFT                 2 /* inferred */
#define RE_XFER_CONTROL_DEVICE_MASK                  0x1u
#define RE_XFER_CONTROL_DEVICE_INPLACE (RE_XFER_CONTROL_DEVICE_MASK << RE_XFER_CONTROL_DEVICE_SHIFT)
#define RE_XFER_CONTROL_DEVICE_FRAMEBUFFER           0 /* inferred */
#define RE_XFER_CONTROL_DEVICE_TEXTURE_MEMORY        1 /* inferred */
#define RE_XFER_CONTROL_PIO_START_SHIFT              1 /* inferred */
#define RE_XFER_CONTROL_PIO_START_MASK               0x1u
#define RE_XFER_CONTROL_PIO_START_INPLACE (RE_XFER_CONTROL_PIO_START_MASK << RE_XFER_CONTROL_PIO_START_SHIFT)
#define RE_XFER_CONTROL_DMA_START_SHIFT              0 /* inferred */
#define RE_XFER_CONTROL_DMA_START_MASK               0x1u
#define RE_XFER_CONTROL_DMA_START_INPLACE (RE_XFER_CONTROL_DMA_START_MASK << RE_XFER_CONTROL_DMA_START_SHIFT)

/*
 * Fill mode. Bits 3, 4, 5, 6, 7 and 10 and the block type are placed from
 * the drivers; the enables for shading, rounding, depth iteration and the
 * antialiasing of lines and points exist but are not placed.
 */
/* fill_mode: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_FILL_MODE_OFFSET                          0xe110u /* inferred */
#define RE_FILL_MODE_BLOCK_TYPE_SHIFT                22 /* inferred */
#define RE_FILL_MODE_BLOCK_TYPE_MASK                 0x7u
#define RE_FILL_MODE_BLOCK_TYPE_INPLACE (RE_FILL_MODE_BLOCK_TYPE_MASK << RE_FILL_MODE_BLOCK_TYPE_SHIFT)
#define RE_FILL_MODE_BLOCK_TYPE_GLYPH_DATA           0 /* inferred */
#define RE_FILL_MODE_BLOCK_TYPE_STIPPLED_BLOCK       1 /* inferred */
#define RE_FILL_MODE_BLOCK_TYPE_PIO_READ             2 /* inferred */
#define RE_FILL_MODE_BLOCK_TYPE_PIO_WRITE            3 /* inferred */
#define RE_FILL_MODE_BLOCK_TYPE_DMA_READ             4 /* inferred */
#define RE_FILL_MODE_BLOCK_TYPE_DMA_WRITE            5 /* inferred */
#define RE_FILL_MODE_FAST_FILL_SHIFT                 20 /* inferred */
#define RE_FILL_MODE_FAST_FILL_MASK                  0x1u
#define RE_FILL_MODE_FAST_FILL_INPLACE (RE_FILL_MODE_FAST_FILL_MASK << RE_FILL_MODE_FAST_FILL_SHIFT)
#define RE_FILL_MODE_SKIP_LAST_PIXEL_SHIFT           10 /* inferred */
#define RE_FILL_MODE_SKIP_LAST_PIXEL_MASK            0x1u
#define RE_FILL_MODE_SKIP_LAST_PIXEL_INPLACE (RE_FILL_MODE_SKIP_LAST_PIXEL_MASK << RE_FILL_MODE_SKIP_LAST_PIXEL_SHIFT)
#define RE_FILL_MODE_LINE_ADVANCE_SHIFT              7 /* inferred */
#define RE_FILL_MODE_LINE_ADVANCE_MASK               0x1u
#define RE_FILL_MODE_LINE_ADVANCE_INPLACE (RE_FILL_MODE_LINE_ADVANCE_MASK << RE_FILL_MODE_LINE_ADVANCE_SHIFT)
#define RE_FILL_MODE_LINE_OPAQUE_SHIFT               6 /* inferred */
#define RE_FILL_MODE_LINE_OPAQUE_MASK                0x1u
#define RE_FILL_MODE_LINE_OPAQUE_INPLACE (RE_FILL_MODE_LINE_OPAQUE_MASK << RE_FILL_MODE_LINE_OPAQUE_SHIFT)
#define RE_FILL_MODE_LINE_STIPPLE_SHIFT              5 /* inferred */
#define RE_FILL_MODE_LINE_STIPPLE_MASK               0x1u
#define RE_FILL_MODE_LINE_STIPPLE_INPLACE (RE_FILL_MODE_LINE_STIPPLE_MASK << RE_FILL_MODE_LINE_STIPPLE_SHIFT)
#define RE_FILL_MODE_GLYPH_OPAQUE_SHIFT              4 /* inferred */
#define RE_FILL_MODE_GLYPH_OPAQUE_MASK               0x1u
#define RE_FILL_MODE_GLYPH_OPAQUE_INPLACE (RE_FILL_MODE_GLYPH_OPAQUE_MASK << RE_FILL_MODE_GLYPH_OPAQUE_SHIFT)
#define RE_FILL_MODE_GLYPH_STIPPLE_SHIFT             3 /* inferred */
#define RE_FILL_MODE_GLYPH_STIPPLE_MASK              0x1u
#define RE_FILL_MODE_GLYPH_STIPPLE_INPLACE (RE_FILL_MODE_GLYPH_STIPPLE_MASK << RE_FILL_MODE_GLYPH_STIPPLE_SHIFT)
#define RE_FILL_MODE_POLY_STIPPLE_SHIFT              0 /* inferred */
#define RE_FILL_MODE_POLY_STIPPLE_MASK               0x1u
#define RE_FILL_MODE_POLY_STIPPLE_INPLACE (RE_FILL_MODE_POLY_STIPPLE_MASK << RE_FILL_MODE_POLY_STIPPLE_SHIFT)

/*
 * Texture mode, first word. The client clears bits 15 to 12 before it chooses
 * the
 * colour table format. Its RGB-compatible table path then writes 0xe in that
 * field.
 * Only that value is read from the client's code; the other values of the field
 * are not known. Formerly texmode1.
 */
/* texture_mode_first: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TEXTURE_MODE_FIRST_OFFSET                 0xe111u /* inferred */
#define RE_TEXTURE_MODE_FIRST_DEPTH_TERM_SHIFT       16 /* inferred */
#define RE_TEXTURE_MODE_FIRST_DEPTH_TERM_MASK        0x7u
#define RE_TEXTURE_MODE_FIRST_DEPTH_TERM_INPLACE (RE_TEXTURE_MODE_FIRST_DEPTH_TERM_MASK << RE_TEXTURE_MODE_FIRST_DEPTH_TERM_SHIFT)
#define RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_SHIFT     12 /* inferred */
#define RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_MASK      0xfu
#define RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_INPLACE (RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_MASK << RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_SHIFT)
#define RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_NONE      0 /* inferred */
#define RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_ALPHA     1 /* inferred */
/* inferred */
#define RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_INTENSITY_OR_LUMINANCE_ALPHA 9
#define RE_TEXTURE_MODE_FIRST_COLOUR_TABLE_RGB_LOOKUP 14 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_SHIFT      9 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_MASK       0x7u
#define RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_INPLACE (RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_MASK << RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_SHIFT)
#define RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_ALPHA      1 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_LUMINANCE  2 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_INTENSITY  3 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXEL_CLASS_COLOUR     4 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SELECT_SHIFT 7 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SELECT_MASK 0x3u
#define RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SELECT_INPLACE (RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SELECT_MASK << RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SELECT_SHIFT)
#define RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SIZE_CODE_SHIFT 5 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SIZE_CODE_MASK 0x3u
#define RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SIZE_CODE_INPLACE (RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SIZE_CODE_MASK << RE_TEXTURE_MODE_FIRST_TEXTURE_RAM_SIZE_CODE_SHIFT)
#define RE_TEXTURE_MODE_FIRST_LAYOUT_SHIFT           3 /* inferred */
#define RE_TEXTURE_MODE_FIRST_LAYOUT_MASK            0x3u
#define RE_TEXTURE_MODE_FIRST_LAYOUT_INPLACE (RE_TEXTURE_MODE_FIRST_LAYOUT_MASK << RE_TEXTURE_MODE_FIRST_LAYOUT_SHIFT)
#define RE_TEXTURE_MODE_FIRST_LAYOUT_ONE_COMPONENT   0 /* inferred */
#define RE_TEXTURE_MODE_FIRST_LAYOUT_TWO_COMPONENT   1 /* inferred */
#define RE_TEXTURE_MODE_FIRST_LAYOUT_RGB             2 /* inferred */
#define RE_TEXTURE_MODE_FIRST_LAYOUT_RGBA            3 /* inferred */
#define RE_TEXTURE_MODE_FIRST_ENVIRONMENT_SHIFT      1 /* inferred */
#define RE_TEXTURE_MODE_FIRST_ENVIRONMENT_MASK       0x3u
#define RE_TEXTURE_MODE_FIRST_ENVIRONMENT_INPLACE (RE_TEXTURE_MODE_FIRST_ENVIRONMENT_MASK << RE_TEXTURE_MODE_FIRST_ENVIRONMENT_SHIFT)
#define RE_TEXTURE_MODE_FIRST_ENVIRONMENT_MODULATE   0 /* inferred */
#define RE_TEXTURE_MODE_FIRST_ENVIRONMENT_DECAL      1 /* inferred */
#define RE_TEXTURE_MODE_FIRST_ENVIRONMENT_BLEND      2 /* inferred */
#define RE_TEXTURE_MODE_FIRST_ENVIRONMENT_ALPHA_ONLY 3 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXTURE_ENABLE_SHIFT   0 /* inferred */
#define RE_TEXTURE_MODE_FIRST_TEXTURE_ENABLE_MASK    0x1u
#define RE_TEXTURE_MODE_FIRST_TEXTURE_ENABLE_INPLACE (RE_TEXTURE_MODE_FIRST_TEXTURE_ENABLE_MASK << RE_TEXTURE_MODE_FIRST_TEXTURE_ENABLE_SHIFT)

/* config: rw32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_CONFIG_OFFSET                             0xe112u /* inferred */
#define RE_CONFIG_LINE_ROUND_SHIFT                   4 /* inferred */
#define RE_CONFIG_LINE_ROUND_MASK                    0x1u
#define RE_CONFIG_LINE_ROUND_INPLACE (RE_CONFIG_LINE_ROUND_MASK << RE_CONFIG_LINE_ROUND_SHIFT)
#define RE_CONFIG_Y_FLIP_SHIFT                       3 /* inferred */
#define RE_CONFIG_Y_FLIP_MASK                        0x1u
#define RE_CONFIG_Y_FLIP_INPLACE (RE_CONFIG_Y_FLIP_MASK << RE_CONFIG_Y_FLIP_SHIFT)
#define RE_CONFIG_TARGET_RASTER_SHIFT                0 /* inferred */
#define RE_CONFIG_TARGET_RASTER_MASK                 0x1u
#define RE_CONFIG_TARGET_RASTER_INPLACE (RE_CONFIG_TARGET_RASTER_MASK << RE_CONFIG_TARGET_RASTER_SHIFT)

/* scissor_x: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_SCISSOR_X_OFFSET                          0xe113u /* inferred */

/* scissor_y: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_SCISSOR_Y_OFFSET                          0xe114u /* inferred */

/*
 * Window origin (XYWIN). OpenBSD's impact(4) header packs it as (y << 16) | x,
 * so
 * x is the low half and y the high half. That is a software expectation from
 * the
 * public driver, not a board measurement. The driver's one write sets x to 0
 * and
 * y to 0x3ff (1023). How the origin shifts RE_POINT and RE_LINE, and which way
 * y
 * counts, is not settled here.
 */
/* window_origin: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_WINDOW_ORIGIN_OFFSET                      0xe115u /* inferred */
#define RE_WINDOW_ORIGIN_Y_SHIFT                     16 /* inferred */
#define RE_WINDOW_ORIGIN_Y_MASK                      0xffffu
#define RE_WINDOW_ORIGIN_Y_INPLACE (RE_WINDOW_ORIGIN_Y_MASK << RE_WINDOW_ORIGIN_Y_SHIFT)
#define RE_WINDOW_ORIGIN_X_SHIFT                     0 /* inferred */
#define RE_WINDOW_ORIGIN_X_MASK                      0xffffu
#define RE_WINDOW_ORIGIN_X_INPLACE (RE_WINDOW_ORIGIN_X_MASK << RE_WINDOW_ORIGIN_X_SHIFT)

/*
 * Colours shared with the texture engine and double buffered. Opaque
 * stipples draw their zero bits in the background colour: in RGB modes it is
 * twelve bits per component, red lowest like the packed colour, green and
 * red in the first register and blue in the second; in colour-index modes
 * the index sits in the low twelve bits of the first.
 */
/* background_rg: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_BACKGROUND_RG_OFFSET                      0xe140u /* inferred */

/* background_ba: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_BACKGROUND_BA_OFFSET                      0xe141u /* inferred */

/* texenv_rg: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_TEXENV_RG_OFFSET                          0xe142u /* inferred */

/* texenv_b: rw32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_TEXENV_B_OFFSET                           0xe143u /* inferred */

/* fog_rg: rw32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_FOG_RG_OFFSET                             0xe144u /* inferred */

/* fog_b: rw32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_FOG_B_OFFSET                              0xe145u /* inferred */

/* aaline_config: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_AALINE_CONFIG_OFFSET                      0xe146u /* inferred */
#define RE_AALINE_CONFIG_WIDTH_SHIFT                 1 /* inferred */
#define RE_AALINE_CONFIG_WIDTH_MASK                  0x7fu
#define RE_AALINE_CONFIG_WIDTH_INPLACE (RE_AALINE_CONFIG_WIDTH_MASK << RE_AALINE_CONFIG_WIDTH_SHIFT)
#define RE_AALINE_CONFIG_SMOOTH_SHIFT                0 /* inferred */
#define RE_AALINE_CONFIG_SMOOTH_MASK                 0x1u
#define RE_AALINE_CONFIG_SMOOTH_INPLACE (RE_AALINE_CONFIG_SMOOTH_MASK << RE_AALINE_CONFIG_SMOOTH_SHIFT)

/*
 * Screen mask 1, x range, written as x1 << 16 | (x2 - 1): x1 is the first
 * column
 * and x2 the column past the last. The IRIX kernel writes this word for
 * each rectangle of a window's visible region, and the X server writes it for
 * each clip box. Established as those words. That the raster engine discards
 * pixels outside the box is inferred.
 */
/* screen_mask1_x: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK1_X_OFFSET                     0xe147u /* inferred */

/*
 * Screen mask 1, y range, written as (H - y2) << 16 | (H - 1 - y1): H is the
 * screen height (1024 in the X server's listing), y1 the first row and y2 the
 * row
 * past the last, counted from the top. The high half counts rows from the
 * bottom.
 * Established as the kernel's and the X server's words. That the raster engine
 * discards pixels outside the box is inferred.
 */
/* screen_mask1_y: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK1_Y_OFFSET                     0xe148u /* inferred */

/*
 * Screen mask 2, x range, same encoding as screen_mask1_x. The kernel writes
 * masks 1 to 4 with this encoding (established as its words); the X server's
 * listing shows mask 1 only.
 */
/* screen_mask2_x: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK2_X_OFFSET                     0xe149u /* inferred */

/*
 * Screen mask 2, y range, same encoding as screen_mask1_y. Established for
 * masks
 * 1 to 4 as the kernel's words, as for the x range.
 */
/* screen_mask2_y: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK2_Y_OFFSET                     0xe14au /* inferred */

/*
 * Screen mask 3, x range, same encoding as screen_mask1_x. Established as the
 * kernel's words for mask 3.
 */
/* screen_mask3_x: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK3_X_OFFSET                     0xe14bu /* inferred */

/*
 * Screen mask 3, y range, same encoding as screen_mask1_y. Established as the
 * kernel's words for mask 3.
 */
/* screen_mask3_y: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK3_Y_OFFSET                     0xe14cu /* inferred */

/*
 * Screen mask 4, x range, same encoding as screen_mask1_x. The kernel's
 * register
 * shadow holds mask 4 at 0x14d and 0x14e. Established as the kernel's words.
 */
/* screen_mask4_x: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK4_X_OFFSET                     0xe14du /* inferred */

/*
 * Screen mask 4, y range, same encoding as screen_mask1_y. Established as the
 * kernel's words for mask 4.
 */
/* screen_mask4_y: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_SCREEN_MASK4_Y_OFFSET                     0xe14eu /* inferred */

/*
 * Window mode. Bits 3:0 enable masks 1 to 4, mask n at bit n-1. The kernel's
 * clip
 * validation writes 0x11, 0x13, 0x17 or 0x1f for one to four visible
 * rectangles,
 * so bit 4 is set for every count and bits 7:4 hold 1 (established, kernel
 * words).
 * When a window field is zero the kernel writes 0x23 instead: masks 1 and 2,
 * with
 * mode 2 in bits 7:4 (established; what mode 2 does is unknown). The X server
 * draws each primitive once per clip box, with 0x11 written here for each box
 * and
 * 0 after the last one (established, X server listing). That the raster engine
 * keeps only pixels inside the enabled boxes is inferred from that redraw.
 * The per-mask inside flags in the fields below are not settled. The kernel
 * sets
 * only bit 4 when four masks are enabled, which fits one mode field in bits 7:4
 * better.
 */
/* window_mode: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_WINDOW_MODE_OFFSET                        0xe14fu /* inferred */
#define RE_WINDOW_MODE_INSIDE4_SHIFT                 7 /* inferred */
#define RE_WINDOW_MODE_INSIDE4_MASK                  0x1u
#define RE_WINDOW_MODE_INSIDE4_INPLACE (RE_WINDOW_MODE_INSIDE4_MASK << RE_WINDOW_MODE_INSIDE4_SHIFT)
#define RE_WINDOW_MODE_INSIDE3_SHIFT                 6 /* inferred */
#define RE_WINDOW_MODE_INSIDE3_MASK                  0x1u
#define RE_WINDOW_MODE_INSIDE3_INPLACE (RE_WINDOW_MODE_INSIDE3_MASK << RE_WINDOW_MODE_INSIDE3_SHIFT)
#define RE_WINDOW_MODE_INSIDE2_SHIFT                 5 /* inferred */
#define RE_WINDOW_MODE_INSIDE2_MASK                  0x1u
#define RE_WINDOW_MODE_INSIDE2_INPLACE (RE_WINDOW_MODE_INSIDE2_MASK << RE_WINDOW_MODE_INSIDE2_SHIFT)
#define RE_WINDOW_MODE_INSIDE1_SHIFT                 4 /* inferred */
#define RE_WINDOW_MODE_INSIDE1_MASK                  0x1u
#define RE_WINDOW_MODE_INSIDE1_INPLACE (RE_WINDOW_MODE_INSIDE1_MASK << RE_WINDOW_MODE_INSIDE1_SHIFT)
#define RE_WINDOW_MODE_ENABLE4_SHIFT                 3 /* inferred */
#define RE_WINDOW_MODE_ENABLE4_MASK                  0x1u
#define RE_WINDOW_MODE_ENABLE4_INPLACE (RE_WINDOW_MODE_ENABLE4_MASK << RE_WINDOW_MODE_ENABLE4_SHIFT)
#define RE_WINDOW_MODE_ENABLE3_SHIFT                 2 /* inferred */
#define RE_WINDOW_MODE_ENABLE3_MASK                  0x1u
#define RE_WINDOW_MODE_ENABLE3_INPLACE (RE_WINDOW_MODE_ENABLE3_MASK << RE_WINDOW_MODE_ENABLE3_SHIFT)
#define RE_WINDOW_MODE_ENABLE2_SHIFT                 1 /* inferred */
#define RE_WINDOW_MODE_ENABLE2_MASK                  0x1u
#define RE_WINDOW_MODE_ENABLE2_INPLACE (RE_WINDOW_MODE_ENABLE2_MASK << RE_WINDOW_MODE_ENABLE2_SHIFT)
#define RE_WINDOW_MODE_ENABLE1_SHIFT                 0 /* inferred */
#define RE_WINDOW_MODE_ENABLE1_MASK                  0x1u
#define RE_WINDOW_MODE_ENABLE1_INPLACE (RE_WINDOW_MODE_ENABLE1_MASK << RE_WINDOW_MODE_ENABLE1_SHIFT)

/* xfer_size: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_XFER_SIZE_OFFSET                          0xe153u /* inferred */
#define RE_XFER_SIZE_LINES_SHIFT                     16 /* inferred */
#define RE_XFER_SIZE_LINES_MASK                      0xffffu
#define RE_XFER_SIZE_LINES_INPLACE (RE_XFER_SIZE_LINES_MASK << RE_XFER_SIZE_LINES_SHIFT)
#define RE_XFER_SIZE_WIDTH_SHIFT                     0 /* inferred */
#define RE_XFER_SIZE_WIDTH_MASK                      0xffffu
#define RE_XFER_SIZE_WIDTH_INPLACE (RE_XFER_SIZE_WIDTH_MASK << RE_XFER_SIZE_WIDTH_SHIFT)

/* xfer_zoom_init: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_XFER_ZOOM_INIT_OFFSET                     0xe154u /* inferred */

/* xfer_zoom_step: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_XFER_ZOOM_STEP_OFFSET                     0xe155u /* inferred */

/*
 * Zoom encoding: both registers hold 8.8 fixed point, 0x100 meaning a factor of
 * 1.0 (no zoom). Established: the library's host-to-raster setup routines write
 * the pair this way, and the no-zoom path stores 0x100 in both. The magnifying
 * and shrinking arithmetic that derives other values is inferred and not
 * stated here.
 *
 * #define RE_XFER_ZOOM_UNITY 0x100 / * established
 */
/* xfer_mask_lo: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_XFER_MASK_LO_OFFSET                       0xe156u /* inferred */

/* xfer_mask_hi: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_XFER_MASK_HI_OFFSET                       0xe157u /* inferred */

/* xfer_counters: r32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_XFER_COUNTERS_OFFSET                      0xe158u /* inferred */

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
/* xfer_mode: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_XFER_MODE_OFFSET                          0xe159u /* inferred */
#define RE_XFER_MODE_OPAQUE_SHIFT                    23 /* inferred */
#define RE_XFER_MODE_OPAQUE_MASK                     0x1u
#define RE_XFER_MODE_OPAQUE_INPLACE (RE_XFER_MODE_OPAQUE_MASK << RE_XFER_MODE_OPAQUE_SHIFT)
#define RE_XFER_MODE_RGB_ORDER_SHIFT                 22 /* inferred */
#define RE_XFER_MODE_RGB_ORDER_MASK                  0x1u
#define RE_XFER_MODE_RGB_ORDER_INPLACE (RE_XFER_MODE_RGB_ORDER_MASK << RE_XFER_MODE_RGB_ORDER_SHIFT)
#define RE_XFER_MODE_DECIMATE_SHIFT                  20 /* inferred */
#define RE_XFER_MODE_DECIMATE_MASK                   0x1u
#define RE_XFER_MODE_DECIMATE_INPLACE (RE_XFER_MODE_DECIMATE_MASK << RE_XFER_MODE_DECIMATE_SHIFT)
#define RE_XFER_MODE_ZOOM_SHIFT                      19 /* inferred */
#define RE_XFER_MODE_ZOOM_MASK                       0x1u
#define RE_XFER_MODE_ZOOM_INPLACE (RE_XFER_MODE_ZOOM_MASK << RE_XFER_MODE_ZOOM_SHIFT)
#define RE_XFER_MODE_FIELD_18_SHIFT                  18 /* inferred */
#define RE_XFER_MODE_FIELD_18_MASK                   0x1u
#define RE_XFER_MODE_FIELD_18_INPLACE (RE_XFER_MODE_FIELD_18_MASK << RE_XFER_MODE_FIELD_18_SHIFT)
#define RE_XFER_MODE_FIELD_17_SHIFT                  17 /* inferred */
#define RE_XFER_MODE_FIELD_17_MASK                   0x1u
#define RE_XFER_MODE_FIELD_17_INPLACE (RE_XFER_MODE_FIELD_17_MASK << RE_XFER_MODE_FIELD_17_SHIFT)
#define RE_XFER_MODE_STRIDE_SKIP_BYTES_SHIFT         14 /* inferred */
#define RE_XFER_MODE_STRIDE_SKIP_BYTES_MASK          0x7u
#define RE_XFER_MODE_STRIDE_SKIP_BYTES_INPLACE (RE_XFER_MODE_STRIDE_SKIP_BYTES_MASK << RE_XFER_MODE_STRIDE_SKIP_BYTES_SHIFT)
#define RE_XFER_MODE_BEGIN_SKIP_BITS_SHIFT           11 /* inferred */
#define RE_XFER_MODE_BEGIN_SKIP_BITS_MASK            0x7u
#define RE_XFER_MODE_BEGIN_SKIP_BITS_INPLACE (RE_XFER_MODE_BEGIN_SKIP_BITS_MASK << RE_XFER_MODE_BEGIN_SKIP_BITS_SHIFT)
#define RE_XFER_MODE_BEGIN_SKIP_BYTES_SHIFT          8 /* inferred */
#define RE_XFER_MODE_BEGIN_SKIP_BYTES_MASK           0x7u
#define RE_XFER_MODE_BEGIN_SKIP_BYTES_INPLACE (RE_XFER_MODE_BEGIN_SKIP_BYTES_MASK << RE_XFER_MODE_BEGIN_SKIP_BYTES_SHIFT)
#define RE_XFER_MODE_FORMAT_SHIFT                    4 /* inferred */
#define RE_XFER_MODE_FORMAT_MASK                     0xfu
#define RE_XFER_MODE_FORMAT_INPLACE (RE_XFER_MODE_FORMAT_MASK << RE_XFER_MODE_FORMAT_SHIFT)
#define RE_XFER_MODE_FORMAT_COLOR_INDEX              0 /* inferred */
#define RE_XFER_MODE_FORMAT_STENCIL                  1 /* inferred */
#define RE_XFER_MODE_FORMAT_DEPTH                    2 /* inferred */
#define RE_XFER_MODE_FORMAT_RGB                      7 /* inferred */
#define RE_XFER_MODE_FORMAT_RGBA                     8 /* inferred */
#define RE_XFER_MODE_COMP_TYPE_SHIFT                 0 /* inferred */
#define RE_XFER_MODE_COMP_TYPE_MASK                  0xfu
#define RE_XFER_MODE_COMP_TYPE_INPLACE (RE_XFER_MODE_COMP_TYPE_MASK << RE_XFER_MODE_COMP_TYPE_SHIFT)

/* line_stipple_pattern: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_LINE_STIPPLE_PATTERN_OFFSET               0xe15au /* inferred */

/* line_stipple_repeat: rw32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_LINE_STIPPLE_REPEAT_OFFSET                0xe15bu /* inferred */

/* device_addr: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_DEVICE_ADDR_OFFSET                        0xe15cu /* inferred */

/* device_data: rw32, space re4_regs, reset unknown; driver and traffic readings
 */
#define RE_DEVICE_DATA_OFFSET                        0xe15du /* inferred */

/* status: r32, space re4_regs, reset unknown; driver and traffic readings */
#define RE_STATUS_OFFSET                             0xe15eu /* inferred */
#define RE_STATUS_PIXEL_BUSY_SHIFT                   10 /* inferred */
#define RE_STATUS_PIXEL_BUSY_MASK                    0x1u
#define RE_STATUS_PIXEL_BUSY_INPLACE (RE_STATUS_PIXEL_BUSY_MASK << RE_STATUS_PIXEL_BUSY_SHIFT)
#define RE_STATUS_RASTER_BUSY_SHIFT                  9 /* inferred */
#define RE_STATUS_RASTER_BUSY_MASK                   0x1u
#define RE_STATUS_RASTER_BUSY_INPLACE (RE_STATUS_RASTER_BUSY_MASK << RE_STATUS_RASTER_BUSY_SHIFT)
#define RE_STATUS_FIFO_EMPTY_SHIFT                   8 /* inferred */
#define RE_STATUS_FIFO_EMPTY_MASK                    0x1u
#define RE_STATUS_FIFO_EMPTY_INPLACE (RE_STATUS_FIFO_EMPTY_MASK << RE_STATUS_FIFO_EMPTY_SHIFT)
#define RE_STATUS_REVISION_SHIFT                     4 /* inferred */
#define RE_STATUS_REVISION_MASK                      0xfu
#define RE_STATUS_REVISION_INPLACE (RE_STATUS_REVISION_MASK << RE_STATUS_REVISION_SHIFT)
#define RE_STATUS_BOARD_INDEX_SHIFT                  2 /* inferred */
#define RE_STATUS_BOARD_INDEX_MASK                   0x3u
#define RE_STATUS_BOARD_INDEX_INPLACE (RE_STATUS_BOARD_INDEX_MASK << RE_STATUS_BOARD_INDEX_SHIFT)
#define RE_STATUS_CHIP_COUNT_SHIFT                   0 /* inferred */
#define RE_STATUS_CHIP_COUNT_MASK                    0x3u
#define RE_STATUS_CHIP_COUNT_INPLACE (RE_STATUS_CHIP_COUNT_MASK << RE_STATUS_CHIP_COUNT_SHIFT)

/* toggle_context: w32, space re4_regs, reset unknown; driver and traffic
 * readings */
#define RE_TOGGLE_CONTEXT_OFFSET                     0xe15fu /* inferred */

/*
 * Pixel-processor fill mode, written through the normal command FIFO under its
 * own
 * selector. The public driver writes 0x0c006300 for a copy fill and 0x18006304
 * for an
 * XOR fill, each before the fill's execute. The bits those values set are not
 * decoded here.
 */
/* pp1_fill_mode: w32, space re4_regs, reset unknown; OpenBSD impact(4) driver
 * register header */
#define RE_PP1_FILL_MODE_OFFSET                      0xe161u /* inferred */

#define RE_XFER_ZOOM_UNITY                           0x100u /* established */

#endif /* RE_GEN_H */
