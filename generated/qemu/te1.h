/* generated from devices/te1/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 a9842ec1f6b06506b2107ec53cb941f3493ff2fb8ec249fe4ac5ddcd1d8488ef */
/* texture engine and texture RAM registers of the Impact graphics subsystem */
/* Names are MGRAS_TE1_*; name source: imported-unchecked. */
/* Offsets are bytes; registers of a register-indexed space are written as index * size. */
#ifndef HW_SGI_GPU_MGRAS_TE1_REGS_H
#define HW_SGI_GPU_MGRAS_TE1_REGS_H

#include "hw/core/registerfields.h"

REG32(MGRAS_TE1_TEXMODE2, 0x3c600) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, MIPMAP_ACTIVE_COPY, 19, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, NO_BORDER, 16, 1) /* unknown */
FIELD(MGRAS_TE1_TEXMODE2, CLAMP_IS_GL_CLAMP, 14, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, R_CLAMP, 13, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, T_CLAMP, 12, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, S_CLAMP, 11, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, MIN_WITHIN_LEVEL, 8, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, MAG_LINEAR, 7, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, MIN_BETWEEN_LEVELS, 6, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, MIPMAP_ACTIVE, 5, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, MULTIBUFFER_HINT, 4, 1) /* inferred */
FIELD(MGRAS_TE1_TEXMODE2, DEPTH_CODE, 2, 2) /* inferred */

REG32(MGRAS_TE1_TXSIZE, 0x3c604) /* inferred */
FIELD(MGRAS_TE1_TXSIZE, DEPTH_LOG2, 19, 4) /* inferred */
FIELD(MGRAS_TE1_TXSIZE, DETAIL_LEVEL_CODE, 16, 3) /* inferred */
FIELD(MGRAS_TE1_TXSIZE, HEIGHT_LOG2_COPY, 12, 4) /* inferred */
FIELD(MGRAS_TE1_TXSIZE, WIDTH_LOG2_COPY, 8, 4) /* inferred */
FIELD(MGRAS_TE1_TXSIZE, HEIGHT_LOG2, 4, 4) /* inferred */
FIELD(MGRAS_TE1_TXSIZE, WIDTH_LOG2, 0, 4) /* inferred */

REG32(MGRAS_TE1_TXTILE, 0x3c608) /* inferred */

REG32(MGRAS_TE1_TXLOD, 0x3c60c) /* inferred */
FIELD(MGRAS_TE1_TXLOD, MIN_LOD_64THS, 16, 10) /* inferred */
FIELD(MGRAS_TE1_TXLOD, CONTEXT_BITS, 10, 6) /* unknown */
FIELD(MGRAS_TE1_TXLOD, LAST_LEVEL, 0, 4) /* inferred */

REG32(MGRAS_TE1_TXBCOLOR_RG, 0x3c610) /* inferred */
FIELD(MGRAS_TE1_TXBCOLOR_RG, GREEN, 12, 12) /* inferred */
FIELD(MGRAS_TE1_TXBCOLOR_RG, RED, 0, 12) /* inferred */

REG32(MGRAS_TE1_TXBCOLOR_BA, 0x3c614) /* inferred */
FIELD(MGRAS_TE1_TXBCOLOR_BA, ALPHA, 12, 12) /* inferred */
FIELD(MGRAS_TE1_TXBCOLOR_BA, BLUE, 0, 12) /* inferred */

REG32(MGRAS_TE1_TXBASE, 0x3c618) /* inferred */
FIELD(MGRAS_TE1_TXBASE, BASE_BLOCK, 0, 8) /* inferred */

REG32(MGRAS_TE1_TRAM_CNTRL, 0x3c61c) /* inferred */

REG32(MGRAS_TE1_MAX_PIXEL_RG, 0x3c620) /* inferred */

REG32(MGRAS_TE1_MAX_PIXEL_BA, 0x3c624) /* inferred */

REG32(MGRAS_TE1_MDDMA_CNTRL, 0x3c628) /* inferred */
FIELD(MGRAS_TE1_MDDMA_CNTRL, DEPTH_TERM, 26, 4) /* inferred */
FIELD(MGRAS_TE1_MDDMA_CNTRL, BLOCK_PAIR_LOG2, 23, 3) /* inferred */
FIELD(MGRAS_TE1_MDDMA_CNTRL, SIZE3_LOG2, 14, 4) /* inferred */
FIELD(MGRAS_TE1_MDDMA_CNTRL, SIZE2_LOG2, 10, 4) /* inferred */
FIELD(MGRAS_TE1_MDDMA_CNTRL, SIZE1_LOG2, 6, 4) /* inferred */
FIELD(MGRAS_TE1_MDDMA_CNTRL, SIZE0_LOG2, 2, 4) /* inferred */

REG32(MGRAS_TE1_TEXRBUFFER, 0x3c62c) /* inferred */
FIELD(MGRAS_TE1_TEXRBUFFER, BUFFER, 0, 1) /* inferred */

REG32(MGRAS_TE1_TXCLAMPSIZE, 0x3c630) /* established */
FIELD(MGRAS_TE1_TXCLAMPSIZE, CLAMP_WIDTH, 13, 13) /* inferred */
FIELD(MGRAS_TE1_TXCLAMPSIZE, CLAMP_HEIGHT, 0, 13) /* inferred */

REG32(MGRAS_TE1_TE_RESET, 0x3c638) /* inferred */

REG32(MGRAS_TE1_TXADDR, 0x3c640) /* inferred */
FIELD(MGRAS_TE1_TXADDR, INDEX, 0, 5) /* inferred */

REG32(MGRAS_TE1_TXDETAIL, 0x3c648) /* inferred */
FIELD(MGRAS_TE1_TXDETAIL, BLOCK, 0, 9) /* inferred */

REG32(MGRAS_TE1_TXBORDER, 0x3c64c) /* inferred */
FIELD(MGRAS_TE1_TXBORDER, BLOCK, 0, 8) /* inferred */

REG32(MGRAS_TE1_DETAILSCALE, 0x3c650) /* inferred */
FIELD(MGRAS_TE1_DETAILSCALE, VALUE, 0, 6) /* inferred */

REG32(MGRAS_TE1_TEVERS, 0x3c658) /* inferred */

REG32(MGRAS_TE1_TL_WBUFFER, 0x3c680) /* inferred */
FIELD(MGRAS_TE1_TL_WBUFFER, BUFFER, 0, 1) /* inferred */

REG32(MGRAS_TE1_TL_MODE, 0x3c684) /* established */
FIELD(MGRAS_TE1_TL_MODE, FIXED, 16, 3) /* established */
FIELD(MGRAS_TE1_TL_MODE, BIT14, 14, 1) /* inferred */
FIELD(MGRAS_TE1_TL_MODE, ENABLES, 9, 4) /* inferred */
FIELD(MGRAS_TE1_TL_MODE, FLAG8, 8, 1) /* inferred */
FIELD(MGRAS_TE1_TL_MODE, COMPONENT_DEPTH, 5, 2) /* inferred */
FIELD(MGRAS_TE1_TL_MODE, CELL_SLOT, 3, 2) /* inferred */
FIELD(MGRAS_TE1_TL_MODE, COMPONENTS_MINUS_1, 1, 2) /* inferred */

REG32(MGRAS_TE1_TL_SPEC, 0x3c688) /* established */
FIELD(MGRAS_TE1_TL_SPEC, LOG2_HEIGHT, 8, 4) /* inferred */
FIELD(MGRAS_TE1_TL_SPEC, LOG2_WIDTH, 4, 4) /* inferred */
FIELD(MGRAS_TE1_TL_SPEC, LEVEL, 0, 4) /* inferred */

REG32(MGRAS_TE1_TL_ADDR, 0x3c68c) /* inferred */
FIELD(MGRAS_TE1_TL_ADDR, INDEX, 0, 4) /* inferred */

REG32(MGRAS_TE1_TL_MIPMAP, 0x3c690) /* inferred */
FIELD(MGRAS_TE1_TL_MIPMAP, FLAG, 8, 1) /* inferred */
FIELD(MGRAS_TE1_TL_MIPMAP, BLOCK, 0, 8) /* inferred */

REG32(MGRAS_TE1_TL_BORDER, 0x3c694) /* inferred */
FIELD(MGRAS_TE1_TL_BORDER, BLOCK, 0, 8) /* inferred */

REG32(MGRAS_TE1_TL_VIDCNTRL, 0x3c698) /* inferred */

REG32(MGRAS_TE1_TL_BASE, 0x3c69c) /* inferred */
FIELD(MGRAS_TE1_TL_BASE, BASE_BLOCK, 0, 8) /* inferred */

REG32(MGRAS_TE1_TL_S_SIZE, 0x3c6a4) /* inferred */

REG32(MGRAS_TE1_TL_T_SIZE, 0x3c6a8) /* inferred */

REG32(MGRAS_TE1_TL_S_LEFT, 0x3c6ac) /* inferred */

REG32(MGRAS_TE1_TL_T_BOTTOM, 0x3c6b0) /* inferred */

#define MGRAS_TE1_TE_REV_B_1TRAM_CHECKSUM 0xbdfc48fcu /* inferred */
#define MGRAS_TE1_TE_REV_B_4TRAM_CHECKSUM 0x236379000ull /* inferred */
#define MGRAS_TE1_TE_REV_D_CHECKSUM 0x2aa70d210ull /* inferred */
#define MGRAS_TE1_TRAM_BLOCKS_PER_PATH 0x100u /* established */
#define MGRAS_TE1_TRAM_BLOCK_SIZE_SHIFT 0xcu /* established */
#define MGRAS_TE1_TRAM_REV_WORD0 0x1c011401u /* established */
#define MGRAS_TE1_TRAM_REV_WORD0_HIGH_HALF 0x1c01u /* established */
#define MGRAS_TE1_TRAM_REV_WORD0_LOW_HALF 0x1401u /* established */
#define MGRAS_TE1_TRAM_REV_WORD1 0xc000400u /* established */
#define MGRAS_TE1_TRAM_TEXTURE_BYTES 0x400000u /* established */

#endif /* HW_SGI_GPU_MGRAS_TE1_REGS_H */
