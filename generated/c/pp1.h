/* generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 e1a18a4b96ad72e5bdae304875b0f08c335204cf50091e4966771a1c1d3a89c5 */
/* display read buffer registers of the Impact graphics */
#ifndef PP_GEN_H
#define PP_GEN_H

#include <stdint.h>


/*
 * Pixel command: starts a pixel-processor operation. Role inferred from the hand-written header, not measured.
 */
/* pixel_command: w32, space pp1_regs, reset unknown; driver readings */
#define PP_PIXEL_COMMAND_OFFSET                      0xf160u /* inferred */

/*
 * Source and destination blend factors. Source in bits 3:0, destination in bits 7:4; the encodings are inferred. Role inferred from the hand-written header, not measured.
 */
/* blend_factor: w32, space pp1_regs, reset unknown; driver readings */
#define PP_BLEND_FACTOR_OFFSET                       0xf165u /* inferred */

/*
 * Stencil test function and operations. Role inferred from the hand-written header, not measured.
 */
/* stencil_mode: w32, space pp1_regs, reset unknown; driver readings */
#define PP_STENCIL_MODE_OFFSET                       0xf166u /* inferred */

/*
 * Stencil read and write mask. Role inferred from the hand-written header, not measured.
 */
/* stencil_mask: w32, space pp1_regs, reset unknown; driver readings */
#define PP_STENCIL_MASK_OFFSET                       0xf167u /* inferred */

/*
 * Depth test function and depth write enable. Role inferred from the hand-written header, not measured.
 */
/* depth_mode: w32, space pp1_regs, reset unknown; driver readings */
#define PP_DEPTH_MODE_OFFSET                         0xf168u /* inferred */

/*
 * Alpha test function and reference value. Role inferred from the hand-written header, not measured.
 */
/* alpha_test_mode: w32, space pp1_regs, reset unknown; driver readings */
#define PP_ALPHA_TEST_MODE_OFFSET                    0xf169u /* inferred */

/*
 * Accumulation buffer control. Role inferred from the hand-written header, not measured.
 */
/* accumulation_mode: w32, space pp1_regs, reset unknown; driver readings */
#define PP_ACCUMULATION_MODE_OFFSET                  0xf16au /* inferred */

/*
 * Constant blend colour, red and green. Role inferred from the hand-written header, not measured.
 */
/* blend_color_rg: w32, space pp1_regs, reset unknown; driver readings */
#define PP_BLEND_COLOR_RG_OFFSET                     0xf16bu /* inferred */

/*
 * Constant blend colour, blue and alpha. Role inferred from the hand-written header, not measured.
 */
/* blend_color_ba: w32, space pp1_regs, reset unknown; driver readings */
#define PP_BLEND_COLOR_BA_OFFSET                     0xf16cu /* inferred */

/* drb_pointers: w32, space pp1_regs, reset unknown; driver readings */
#define PP_DRB_POINTERS_OFFSET                       0xf16du /* inferred */
#define PP_DRB_POINTERS_PAGE_B_SHIFT                 10 /* established */
#define PP_DRB_POINTERS_PAGE_B_MASK                  0x3ffu
#define PP_DRB_POINTERS_PAGE_B_INPLACE               (PP_DRB_POINTERS_PAGE_B_MASK << PP_DRB_POINTERS_PAGE_B_SHIFT)
#define PP_DRB_POINTERS_PAGE_A_SHIFT                 0 /* established */
#define PP_DRB_POINTERS_PAGE_A_MASK                  0x3ffu
#define PP_DRB_POINTERS_PAGE_A_INPLACE               (PP_DRB_POINTERS_PAGE_A_MASK << PP_DRB_POINTERS_PAGE_A_SHIFT)

/* drb_size: w32, space pp1_regs, reset unknown; driver readings */
#define PP_DRB_SIZE_OFFSET                           0xf16eu /* inferred */
#define PP_DRB_SIZE_AUTO_FLUSH_OFF_SHIFT             10 /* inferred */
#define PP_DRB_SIZE_AUTO_FLUSH_OFF_MASK              0x1u
#define PP_DRB_SIZE_AUTO_FLUSH_OFF_INPLACE           (PP_DRB_SIZE_AUTO_FLUSH_OFF_MASK << PP_DRB_SIZE_AUTO_FLUSH_OFF_SHIFT)
#define PP_DRB_SIZE_DMA_LINE_COUNT_MASK_SHIFT        8 /* inferred */
#define PP_DRB_SIZE_DMA_LINE_COUNT_MASK_MASK         0x3u
#define PP_DRB_SIZE_DMA_LINE_COUNT_MASK_INPLACE      (PP_DRB_SIZE_DMA_LINE_COUNT_MASK_MASK << PP_DRB_SIZE_DMA_LINE_COUNT_MASK_SHIFT)
#define PP_DRB_SIZE_RASTER_ENGINES_MINUS_1_SHIFT     6 /* established */
#define PP_DRB_SIZE_RASTER_ENGINES_MINUS_1_MASK      0x3u
#define PP_DRB_SIZE_RASTER_ENGINES_MINUS_1_INPLACE   (PP_DRB_SIZE_RASTER_ENGINES_MINUS_1_MASK << PP_DRB_SIZE_RASTER_ENGINES_MINUS_1_SHIFT)
#define PP_DRB_SIZE_TILE_COLUMNS_36BIT_SHIFT         2 /* established */
#define PP_DRB_SIZE_TILE_COLUMNS_36BIT_MASK          0xfu
#define PP_DRB_SIZE_TILE_COLUMNS_36BIT_INPLACE       (PP_DRB_SIZE_TILE_COLUMNS_36BIT_MASK << PP_DRB_SIZE_TILE_COLUMNS_36BIT_SHIFT)
#define PP_DRB_SIZE_TILE_COLUMNS_9BIT_SHIFT          0 /* established */
#define PP_DRB_SIZE_TILE_COLUMNS_9BIT_MASK           0x3u
#define PP_DRB_SIZE_TILE_COLUMNS_9BIT_INPLACE        (PP_DRB_SIZE_TILE_COLUMNS_9BIT_MASK << PP_DRB_SIZE_TILE_COLUMNS_9BIT_SHIFT)

/*
 * Tag readback mode control. Role inferred from the hand-written header, not measured.
 */
/* tag_mode: w32, space pp1_regs, reset unknown; driver readings */
#define PP_TAG_MODE_OFFSET                           0xf16fu /* inferred */

/*
 * Tag readback data, red. Role inferred from the hand-written header, not measured.
 */
/* tag_data_red: r32, space pp1_regs, reset unknown; driver readings */
#define PP_TAG_DATA_RED_OFFSET                       0xf170u /* inferred */

/*
 * Tag readback data, green. Role inferred from the hand-written header, not measured.
 */
/* tag_data_green: r32, space pp1_regs, reset unknown; driver readings */
#define PP_TAG_DATA_GREEN_OFFSET                     0xf171u /* inferred */

/*
 * Tag readback data, blue. Role inferred from the hand-written header, not measured.
 */
/* tag_data_blue: r32, space pp1_regs, reset unknown; driver readings */
#define PP_TAG_DATA_BLUE_OFFSET                      0xf172u /* inferred */

/*
 * Tag readback data, alpha. Role inferred from the hand-written header, not measured.
 */
/* tag_data_alpha: r32, space pp1_regs, reset unknown; driver readings */
#define PP_TAG_DATA_ALPHA_OFFSET                     0xf173u /* inferred */

/*
 * Tag readback data, depth. Role inferred from the hand-written header, not measured.
 */
/* tag_data_depth: r32, space pp1_regs, reset unknown; driver readings */
#define PP_TAG_DATA_DEPTH_OFFSET                     0xf174u /* inferred */

/*
 * Coordinate of the pixel that the direct pixel colour registers address, y in the high half and x in the low half. Role inferred from the hand-written header, not measured.
 */
/* pixel_coordinate: w32, space pp1_regs, reset unknown; driver readings */
#define PP_PIXEL_COORDINATE_OFFSET                   0xf175u /* inferred */

/*
 * Direct pixel colour write, red. Role inferred from the hand-written header, not measured.
 */
/* pixel_color_red: w32, space pp1_regs, reset unknown; driver readings */
#define PP_PIXEL_COLOR_RED_OFFSET                    0xf176u /* inferred */

/*
 * Direct pixel colour write, green. Role inferred from the hand-written header, not measured.
 */
/* pixel_color_green: w32, space pp1_regs, reset unknown; driver readings */
#define PP_PIXEL_COLOR_GREEN_OFFSET                  0xf177u /* inferred */

/*
 * Direct pixel colour write, blue. Role inferred from the hand-written header, not measured.
 */
/* pixel_color_blue: w32, space pp1_regs, reset unknown; driver readings */
#define PP_PIXEL_COLOR_BLUE_OFFSET                   0xf178u /* inferred */

/*
 * Direct pixel colour write, alpha. Role inferred from the hand-written header, not measured.
 */
/* pixel_color_alpha: w32, space pp1_regs, reset unknown; driver readings */
#define PP_PIXEL_COLOR_ALPHA_OFFSET                  0xf179u /* inferred */

/*
 * Direct pixel colour write, accumulation. Role inferred from the hand-written header, not measured.
 */
/* pixel_color_accumulation: w32, space pp1_regs, reset unknown; driver readings */
#define PP_PIXEL_COLOR_ACCUMULATION_OFFSET           0xf17au /* inferred */

/*
 * Pixel-processor window mode. Role inferred from the hand-written header, not measured.
 */
/* window_mode: w32, space pp1_regs, reset unknown; driver readings */
#define PP_WINDOW_MODE_OFFSET                        0xf17bu /* inferred */

/*
 * Front or back selection of the main display buffer. Role inferred from the hand-written header, not measured.
 */
/* main_buffer_select: w32, space pp1_regs, reset unknown; driver readings */
#define PP_MAIN_BUFFER_SELECT_OFFSET                 0xf17eu /* inferred */

/*
 * Buffer selection of the overlay display buffer. Role inferred from the hand-written header, not measured.
 */
/* overlay_buffer_select: w32, space pp1_regs, reset unknown; driver readings */
#define PP_OVERLAY_BUFFER_SELECT_OFFSET              0xf17fu /* inferred */

#define PP_DRB_POINTERS_COMMAND_WORD                 0x196d04u /* established */
#define PP_DRB_SIZE_COMMAND_WORD                     0x196e04u /* established */

#endif /* PP_GEN_H */
