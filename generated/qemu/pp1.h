/* generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 c422a74e11aec753e45bdef3c968ff2db9d9523c7fc347cf50bf63260674922c */
/* display read buffer registers of the Impact graphics */
/* Names are MGRAS_PP1_*; name source: ours. */
/* Offsets are bytes; registers of a register-indexed space are written as index * size. */
#ifndef HW_SGI_GPU_MGRAS_PP1_REGS_H
#define HW_SGI_GPU_MGRAS_PP1_REGS_H

#include "hw/core/registerfields.h"

REG32(MGRAS_PP1_DRB_POINTERS, 0x3c5b4) /* inferred */
FIELD(MGRAS_PP1_DRB_POINTERS, PAGE_B, 10, 10) /* established */
FIELD(MGRAS_PP1_DRB_POINTERS, PAGE_A, 0, 10) /* established */

REG32(MGRAS_PP1_DRB_SIZE, 0x3c5b8) /* inferred */
FIELD(MGRAS_PP1_DRB_SIZE, AUTO_FLUSH_OFF, 10, 1) /* inferred */
FIELD(MGRAS_PP1_DRB_SIZE, DMA_LINE_COUNT_MASK, 8, 2) /* inferred */
FIELD(MGRAS_PP1_DRB_SIZE, RASTER_ENGINES_MINUS_1, 6, 2) /* established */
FIELD(MGRAS_PP1_DRB_SIZE, TILE_COLUMNS_36BIT, 2, 4) /* established */
FIELD(MGRAS_PP1_DRB_SIZE, TILE_COLUMNS_9BIT, 0, 2) /* established */

#define MGRAS_PP1_DRB_POINTERS_COMMAND_WORD 0x196d04u /* established */
#define MGRAS_PP1_DRB_SIZE_COMMAND_WORD 0x196e04u /* established */

#endif /* HW_SGI_GPU_MGRAS_PP1_REGS_H */
