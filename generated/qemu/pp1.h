/* generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 e1a18a4b96ad72e5bdae304875b0f08c335204cf50091e4966771a1c1d3a89c5 */
/* display read buffer registers of the Impact graphics */
/* Names are MGRAS_PP1_*; name source: ours. */
/* Offsets are bytes; registers of a register-indexed space are written as index * size. */
#ifndef HW_SGI_GPU_MGRAS_PP1_REGS_H
#define HW_SGI_GPU_MGRAS_PP1_REGS_H

#include "hw/core/registerfields.h"

REG32(MGRAS_PP1_PIXEL_COMMAND, 0x3c580) /* inferred */

REG32(MGRAS_PP1_BLEND_FACTOR, 0x3c594) /* inferred */

REG32(MGRAS_PP1_STENCIL_MODE, 0x3c598) /* inferred */

REG32(MGRAS_PP1_STENCIL_MASK, 0x3c59c) /* inferred */

REG32(MGRAS_PP1_DEPTH_MODE, 0x3c5a0) /* inferred */

REG32(MGRAS_PP1_ALPHA_TEST_MODE, 0x3c5a4) /* inferred */

REG32(MGRAS_PP1_ACCUMULATION_MODE, 0x3c5a8) /* inferred */

REG32(MGRAS_PP1_BLEND_COLOR_RG, 0x3c5ac) /* inferred */

REG32(MGRAS_PP1_BLEND_COLOR_BA, 0x3c5b0) /* inferred */

REG32(MGRAS_PP1_DRB_POINTERS, 0x3c5b4) /* inferred */
FIELD(MGRAS_PP1_DRB_POINTERS, PAGE_B, 10, 10) /* established */
FIELD(MGRAS_PP1_DRB_POINTERS, PAGE_A, 0, 10) /* established */

REG32(MGRAS_PP1_DRB_SIZE, 0x3c5b8) /* inferred */
FIELD(MGRAS_PP1_DRB_SIZE, AUTO_FLUSH_OFF, 10, 1) /* inferred */
FIELD(MGRAS_PP1_DRB_SIZE, DMA_LINE_COUNT_MASK, 8, 2) /* inferred */
FIELD(MGRAS_PP1_DRB_SIZE, RASTER_ENGINES_MINUS_1, 6, 2) /* established */
FIELD(MGRAS_PP1_DRB_SIZE, TILE_COLUMNS_36BIT, 2, 4) /* established */
FIELD(MGRAS_PP1_DRB_SIZE, TILE_COLUMNS_9BIT, 0, 2) /* established */

REG32(MGRAS_PP1_TAG_MODE, 0x3c5bc) /* inferred */

REG32(MGRAS_PP1_TAG_DATA_RED, 0x3c5c0) /* inferred */

REG32(MGRAS_PP1_TAG_DATA_GREEN, 0x3c5c4) /* inferred */

REG32(MGRAS_PP1_TAG_DATA_BLUE, 0x3c5c8) /* inferred */

REG32(MGRAS_PP1_TAG_DATA_ALPHA, 0x3c5cc) /* inferred */

REG32(MGRAS_PP1_TAG_DATA_DEPTH, 0x3c5d0) /* inferred */

REG32(MGRAS_PP1_PIXEL_COORDINATE, 0x3c5d4) /* inferred */

REG32(MGRAS_PP1_PIXEL_COLOR_RED, 0x3c5d8) /* inferred */

REG32(MGRAS_PP1_PIXEL_COLOR_GREEN, 0x3c5dc) /* inferred */

REG32(MGRAS_PP1_PIXEL_COLOR_BLUE, 0x3c5e0) /* inferred */

REG32(MGRAS_PP1_PIXEL_COLOR_ALPHA, 0x3c5e4) /* inferred */

REG32(MGRAS_PP1_PIXEL_COLOR_ACCUMULATION, 0x3c5e8) /* inferred */

REG32(MGRAS_PP1_WINDOW_MODE, 0x3c5ec) /* inferred */

REG32(MGRAS_PP1_MAIN_BUFFER_SELECT, 0x3c5f8) /* inferred */

REG32(MGRAS_PP1_OVERLAY_BUFFER_SELECT, 0x3c5fc) /* inferred */

#define MGRAS_PP1_DRB_POINTERS_COMMAND_WORD 0x196d04u /* established */
#define MGRAS_PP1_DRB_SIZE_COMMAND_WORD 0x196e04u /* established */

#endif /* HW_SGI_GPU_MGRAS_PP1_REGS_H */
