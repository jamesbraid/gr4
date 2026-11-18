/* generated from devices/hq3/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 252bc2bf46f613252ee264e8764327c27b46c980c303b9ec0c18d8bf3775b0df */
/* host interface and command processor registers for the Impact graphics subsystem */
/* Names are MGRAS_HQ3_*; name source: ours. */
/* Offsets are bytes; registers of a register-indexed space are written as index * size. */
#ifndef HW_SGI_GPU_MGRAS_HQ3_REGS_H
#define HW_SGI_GPU_MGRAS_HQ3_REGS_H

#include "hw/core/registerfields.h"

REG32(MGRAS_HQ3_PC, 0x6000) /* inferred */

REG32(MGRAS_HQ3_CP_DATA, 0x7000) /* inferred */

REG32(MGRAS_HQ3_RSS_DIAG, 0xc000) /* inferred */

REG32(MGRAS_HQ3_CONFIG, 0x10000) /* inferred */
FIELD(MGRAS_HQ3_CONFIG, DIAG_LOOPBACK, 7, 1) /* inferred */
FIELD(MGRAS_HQ3_CONFIG, DIAG_ROUTE, 4, 2) /* inferred */
FIELD(MGRAS_HQ3_CONFIG, UCODE_STALL, 3, 1) /* inferred */
FIELD(MGRAS_HQ3_CONFIG, BIG_ENDIAN, 2, 1) /* inferred */

REG32(MGRAS_HQ3_FLAG_CTX, 0x10004) /* inferred */

REG32(MGRAS_HQ3_FLAG_SET_PRIV, 0x10008) /* established */

REG32(MGRAS_HQ3_FLAG_CLR_PRIV, 0x1000c) /* inferred */

REG32(MGRAS_HQ3_FLAG_ENAB_SET, 0x10010) /* established */

REG32(MGRAS_HQ3_FLAG_ENAB_CLR, 0x10014) /* inferred */

REG32(MGRAS_HQ3_INTR_ENAB_SET, 0x10018) /* established */
FIELD(MGRAS_HQ3_INTR_ENAB_SET, DFIFO_BELOW_LOW, 31, 1) /* established */
FIELD(MGRAS_HQ3_INTR_ENAB_SET, DFIFO_ABOVE_HIGH, 30, 1) /* established */
FIELD(MGRAS_HQ3_INTR_ENAB_SET, CFIFO_BELOW_LOW, 27, 1) /* established */
FIELD(MGRAS_HQ3_INTR_ENAB_SET, CFIFO_ABOVE_HIGH, 26, 1) /* established */

REG32(MGRAS_HQ3_INTR_ENAB_CLR, 0x1001c) /* inferred */

REG32(MGRAS_HQ3_CFIFO_HIWATER, 0x10020) /* inferred */

REG32(MGRAS_HQ3_CFIFO_LOWATER, 0x10024) /* inferred */

REG32(MGRAS_HQ3_CFIFO_DELAY, 0x10028) /* inferred; name source: public (OpenBSD impact(4) driver register header) */

REG32(MGRAS_HQ3_DFIFO_HIWATER, 0x1002c) /* inferred */

REG32(MGRAS_HQ3_DFIFO_LOWATER, 0x10030) /* inferred */

REG32(MGRAS_HQ3_DFIFO_DELAY, 0x10034) /* inferred; name source: public (OpenBSD impact(4) driver register header) */

REG32(MGRAS_HQ3_GE0_DIAG_DATA, 0x10040) /* inferred */

REG32(MGRAS_HQ3_GE0_DIAG_INDEX, 0x10044) /* inferred */

REG32(MGRAS_HQ3_GE1_DIAG_DATA, 0x10048) /* inferred */

REG32(MGRAS_HQ3_GE1_DIAG_INDEX, 0x1004c) /* inferred */

REG32(MGRAS_HQ3_CTX_SWITCH, 0x10050) /* inferred */

REG64(MGRAS_HQ3_CFIFO_PRIV, 0x20100) /* inferred */

REG32(MGRAS_HQ3_CTX_DATA, 0x10100) /* inferred */

REG32(MGRAS_HQ3_BFIFO_HIWATER, 0x10108) /* inferred */

REG32(MGRAS_HQ3_BFIFO_LOWATER, 0x1010c) /* inferred */

REG32(MGRAS_HQ3_BFIFO_DELAY, 0x10110) /* inferred */

REG32(MGRAS_HQ3_GIO_CONFIG, 0x10114) /* inferred */
FIELD(MGRAS_HQ3_GIO_CONFIG, FIFO_HIGH_WATER, 12, 1) /* inferred */
FIELD(MGRAS_HQ3_GIO_CONFIG, BUS_BYPASS, 6, 1) /* inferred */
FIELD(MGRAS_HQ3_GIO_CONFIG, TLB_UPDATE, 3, 1) /* inferred */
FIELD(MGRAS_HQ3_GIO_CONFIG, EXT_PIPE_REGISTER, 2, 1) /* inferred */
FIELD(MGRAS_HQ3_GIO_CONFIG, DISPLAY_BUS_BIG_ENDIAN, 1, 1) /* inferred */
FIELD(MGRAS_HQ3_GIO_CONFIG, HOST_BIG_ENDIAN, 0, 1) /* inferred */

REG32(MGRAS_HQ3_REG_4080, 0x10200) /* inferred */
#define MGRAS_HQ3_REG_4080_COUNT 64
#define MGRAS_HQ3_REG_4080_STRIDE 0x4

REG32(MGRAS_HQ3_REG_40C0, 0x10300) /* inferred */
#define MGRAS_HQ3_REG_40C0_COUNT 128
#define MGRAS_HQ3_REG_40C0_STRIDE 0x4

REG32(MGRAS_HQ3_REG_4140, 0x10500) /* inferred */
#define MGRAS_HQ3_REG_4140_COUNT 64
#define MGRAS_HQ3_REG_4140_STRIDE 0x4

REG32(MGRAS_HQ3_GIO_CTX, 0x10600) /* inferred */
#define MGRAS_HQ3_GIO_CTX_COUNT 64
#define MGRAS_HQ3_GIO_CTX_STRIDE 0x4

REG32(MGRAS_HQ3_TLB_ENTRIES, 0x10800) /* inferred */
#define MGRAS_HQ3_TLB_ENTRIES_COUNT 32
#define MGRAS_HQ3_TLB_ENTRIES_STRIDE 0x4

REG32(MGRAS_HQ3_TLB_FAULT_PAGE, 0x10880) /* inferred */

REG32(MGRAS_HQ3_TLB_VALID, 0x10900) /* inferred */

REG32(MGRAS_HQ3_STATUS, 0x30000) /* inferred */
FIELD(MGRAS_HQ3_STATUS, DFIFO_BELOW_LOW, 8, 1) /* inferred */
FIELD(MGRAS_HQ3_STATUS, DFIFO_ABOVE_HIGH, 7, 1) /* inferred */
FIELD(MGRAS_HQ3_STATUS, CFIFO_BELOW_LOW, 4, 1) /* inferred */
FIELD(MGRAS_HQ3_STATUS, CFIFO_ABOVE_HIGH, 3, 1) /* inferred */
FIELD(MGRAS_HQ3_STATUS, PIPE_IDLE, 1, 1) /* inferred */
FIELD(MGRAS_HQ3_STATUS, COMMANDS_DONE, 0, 1) /* inferred */

REG32(MGRAS_HQ3_FIFO_STATUS, 0x30004) /* inferred */
FIELD(MGRAS_HQ3_FIFO_STATUS, CFIFO_HIWATER_MARK, 22, 7) /* inferred */
FIELD(MGRAS_HQ3_FIFO_STATUS, DFIFO_DEPTH, 15, 7) /* inferred */
FIELD(MGRAS_HQ3_FIFO_STATUS, CFIFO_VALID, 7, 8) /* inferred */
FIELD(MGRAS_HQ3_FIFO_STATUS, CFIFO_DEPTH, 0, 7) /* inferred */

REG32(MGRAS_HQ3_FLAG_SET, 0x30008) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, CONTEXT_SAVED, 19, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, GE_DIAG, 18, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, GE_DATA, 17, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, DONE, 16, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, DMA_ACCESS_OR_STACK_OVERFLOW, 15, 1) /* established */
FIELD(MGRAS_HQ3_FLAG_SET, CFIFO_PRIVILEGE_VIOLATION, 14, 1) /* established */
FIELD(MGRAS_HQ3_FLAG_SET, DMA_ADDRESS_ERROR, 13, 1) /* established */
FIELD(MGRAS_HQ3_FLAG_SET, BUFFER_SWAP, 10, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, UCODE_ERROR, 9, 1) /* established */
FIELD(MGRAS_HQ3_FLAG_SET, TLB_MISS, 7, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, CONTEXT_LOADED, 6, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, DMA_DONE, 4, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, DFIFO_LOWATER, 3, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, CFIFO_HIWATER, 2, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, CFIFO_LOWATER, 1, 1) /* inferred */
FIELD(MGRAS_HQ3_FLAG_SET, RETRACE, 0, 1) /* inferred */

REG32(MGRAS_HQ3_FLAG_CLR, 0x3000c) /* inferred */

REG32(MGRAS_HQ3_REG_C004, 0x30010) /* inferred */

REG32(MGRAS_HQ3_REG_C005, 0x30014) /* inferred */

REG64(MGRAS_HQ3_CFIFO_USER, 0x60100) /* inferred */

REG32(MGRAS_HQ3_GIO_STATUS, 0x30100) /* inferred */
FIELD(MGRAS_HQ3_GIO_STATUS, DISPLAY_BUS_BUSY, 5, 1) /* inferred */
FIELD(MGRAS_HQ3_GIO_STATUS, BFIFO_DEPTH, 0, 5) /* inferred */

REG32(MGRAS_HQ3_DMA_BUSY, 0x30104) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, ADDRESS_GEN_DMA, 12, 1) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, RASTER_DMA, 11, 1) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, MASTER_DMA, 9, 1) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, RASTER_IF, 4, 1) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, FIELD_3, 3, 1) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, CFIFO, 2, 1) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, HOST_IF, 1, 1) /* inferred */
FIELD(MGRAS_HQ3_DMA_BUSY, SYNC, 0, 1) /* inferred */

REG64(MGRAS_HQ3_CFIFO_GL, 0x68100) /* inferred */

#define MGRAS_HQ3_CFIFO_CTL_WIDTH 32 /* inferred; word */
FIELD(MGRAS_HQ3_CFIFO_CTL, PIXEL, 31, 1) /* established */
FIELD(MGRAS_HQ3_CFIFO_CTL, PAD_FLAG, 30, 1) /* inferred */
FIELD(MGRAS_HQ3_CFIFO_CTL, CONVERT, 23, 7) /* established */
FIELD(MGRAS_HQ3_CFIFO_CTL, KERNEL, 22, 1) /* established */
FIELD(MGRAS_HQ3_CFIFO_CTL, SYNC, 21, 1) /* established */
FIELD(MGRAS_HQ3_CFIFO_CTL, COMMAND, 8, 13) /* established */
FIELD(MGRAS_HQ3_CFIFO_CTL, BYTES, 0, 8) /* established */

#define MGRAS_HQ3_CFIFO_INLINE_WIDTH 32 /* inferred; word */
FIELD(MGRAS_HQ3_CFIFO_INLINE, INLINE, 31, 1) /* inferred */
FIELD(MGRAS_HQ3_CFIFO_INLINE, FIRST_OFFSET, 22, 2) /* inferred */
FIELD(MGRAS_HQ3_CFIFO_INLINE, LENGTH, 0, 20) /* inferred */

#define MGRAS_HQ3_CTX_FLAGS_WORD_WIDTH 32 /* unknown; word */
FIELD(MGRAS_HQ3_CTX_FLAGS_WORD, FIRST_LOAD, 31, 1) /* inferred */
FIELD(MGRAS_HQ3_CTX_FLAGS_WORD, NOTHING_SAVED, 30, 1) /* inferred */
FIELD(MGRAS_HQ3_CTX_FLAGS_WORD, WINDOW_CHANGED, 29, 1) /* inferred */
FIELD(MGRAS_HQ3_CTX_FLAGS_WORD, FIELD_28, 28, 1) /* unknown */
FIELD(MGRAS_HQ3_CTX_FLAGS_WORD, XSERVER_SHADOW, 27, 1) /* established */
FIELD(MGRAS_HQ3_CTX_FLAGS_WORD, BANKS_CHANGED, 26, 1) /* established */

#define MGRAS_HQ3_BFIFO_DELAY_DEFAULT 0x64u /* established */
#define MGRAS_HQ3_BFIFO_HIWATER_DEFAULT 0x8u /* established */
#define MGRAS_HQ3_BFIFO_LOWATER_DEFAULT 0x2u /* established */
#define MGRAS_HQ3_BFIFO_MAX 0x10u /* inferred */
#define MGRAS_HQ3_CFIFO_CLASS_DMA_BANK_HOST 0x8u /* inferred */
#define MGRAS_HQ3_CFIFO_CLASS_DMA_BANK_SECOND 0xau /* inferred */
#define MGRAS_HQ3_CFIFO_CLASS_SYNC 0xeu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_BITMAP 0x94u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_CLEAR_COLOUR 0x15u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_CLEAR_DEPTH 0x4au /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_CLEAR_STENCIL 0x4cu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_CONTEXT_CONFIG 0x8cu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_CONTEXT_OPEN 0x6u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_FILLER 0xe1u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_FLUSH 0x36u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_GE_MEMORY_READ 0xfcu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_GE_MEMORY_WRITE_ADDR 0xfbu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_GE_MEMORY_WRITE_CHUNK 0xfdu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_GE_MEMORY_WRITE_END 0xfau /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_GE_TABLE_LOAD 0x82u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_QUERY 0xa2u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_RASTER_PAIRS 0x7fu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_RASTER_TRIPLES 0x7cu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_RESULT_BEGIN 0x61u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_RESULT_END 0x62u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SCISSOR 0x39u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SELECTION_NAME_POP 0xc6u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SELECTION_NAME_PUSH 0xc7u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SELECTION_NAME_REPLACE 0xc5u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SELECTION_NAME_STACK_INIT 0xc4u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SELECT_ENTER 0xcbu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SELECT_EXIT 0xc9u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_SWAP_TMESH 0xdcu /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_VIEWPORT 0x33u /* inferred */
#define MGRAS_HQ3_CFIFO_CMD_WINDOW_CLIP_PACKET 0xe4u /* inferred */
#define MGRAS_HQ3_CFIFO_DELAY_DEFAULT 0x64u /* established */
#define MGRAS_HQ3_CFIFO_HIWATER_DEFAULT 0x28u /* established */
#define MGRAS_HQ3_CFIFO_LOWATER_DEFAULT 0x14u /* established */
#define MGRAS_HQ3_CTX_BANK_WORD_FIRST 0x10u /* established */
#define MGRAS_HQ3_CTX_BANK_WORD_SECOND 0x11u /* established */
#define MGRAS_HQ3_CTX_XSERVER_WORD_FIRST 0x12u /* inferred */
#define MGRAS_HQ3_CTX_XSERVER_WORD_LAST 0x27u /* inferred */
#define MGRAS_HQ3_DFIFO_DELAY_DEFAULT 0x64u /* established */
#define MGRAS_HQ3_DFIFO_HIWATER_DEFAULT 0x28u /* established */
#define MGRAS_HQ3_DFIFO_LOWATER_DEFAULT 0x14u /* established */
#define MGRAS_HQ3_INIT_BFIFO_DELAY 0x8cu /* established */
#define MGRAS_HQ3_INIT_BFIFO_HIWATER 0x6u /* established */
#define MGRAS_HQ3_INIT_BFIFO_LOWATER 0x2u /* established */
#define MGRAS_HQ3_INIT_CFIFO_DELAY 0x64u /* established */
#define MGRAS_HQ3_INIT_CFIFO_HIWATER 0x20u /* established */
#define MGRAS_HQ3_INIT_CFIFO_LOWATER 0x14u /* established */
#define MGRAS_HQ3_INIT_CONFIG 0x7e8cu /* established */
#define MGRAS_HQ3_INIT_DFIFO_DELAY 0xfffu /* established */
#define MGRAS_HQ3_INIT_DFIFO_HIWATER 0x28u /* established */
#define MGRAS_HQ3_INIT_DFIFO_LOWATER 0x14u /* established */
#define MGRAS_HQ3_INIT_FLAG_ENABLE 0x11000fu /* established */
#define MGRAS_HQ3_INIT_GIO_CONFIG 0x765b900fu /* established */
#define MGRAS_HQ3_INIT_INTR_ENABLE 0x4400e200u /* established */
#define MGRAS_HQ3_TLB_ENTRIES 0x20u /* established */
#define MGRAS_HQ3_TLB_PAGE_SHIFT 0xcu /* established */
#define MGRAS_HQ3_TOKEN_CLIENT_GE_DMA_SETUP 0x9du /* established */
#define MGRAS_HQ3_TOKEN_CLIENT_POLYGON_STIPPLE_LOAD 0x4eu /* inferred */
#define MGRAS_HQ3_TOKEN_READBACK_BEGIN 0x96u /* established */
#define MGRAS_HQ3_TOKEN_READBACK_END 0x97u /* established */
#define MGRAS_HQ3_TOKEN_SECOND_TEXMODE 0x5fu /* established */
#define MGRAS_HQ3_TOKEN_TEX_BASE_WRITE 0xebu /* established */
#define MGRAS_HQ3_TOKEN_TEX_READ_SETUP 0xe5u /* established */
#define MGRAS_HQ3_TOKEN_TEX_RESTORE_PREP 0xe3u /* established */
#define MGRAS_HQ3_TOKEN_TEX_WRITE_SETUP 0xd8u /* established */
#define MGRAS_HQ3_TOKEN_TRANSFER_DONE 0xdau /* established */

#endif /* HW_SGI_GPU_MGRAS_HQ3_REGS_H */
