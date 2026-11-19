/* generated from devices/te1/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 13f53acf9b97e4eaa1c0e9c42d6ae6bb94348a4f7f842d8c919098013fc9f000 */
/* texture engine and texture RAM registers of the Impact graphics subsystem */
#ifndef TE_GEN_H
#define TE_GEN_H

#include <stdint.h>


/*
 * Texture mode for the drawn texture: component depth, filters, wrap and the
 * no-border flag. The diagnostic's mask is 25 bits. The field positions are the
 * client's encodings, graded per field; what the board does with each field is
 * inferred. Bit 16 is set on every texture the client has been seen to draw with,
 * and its meaning is unknown. Formerly texmode2.
 */
/* texture_mode_drawn: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_MODE_DRAWN_OFFSET                 0xf180u /* inferred */
#define TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_COPY_SHIFT 19 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_COPY_MASK 0x1u
#define TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_COPY_INPLACE (TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_COPY_MASK << TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_COPY_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_NO_BORDER_SHIFT        16 /* unknown */
#define TE_TEXTURE_MODE_DRAWN_NO_BORDER_MASK         0x1u
#define TE_TEXTURE_MODE_DRAWN_NO_BORDER_INPLACE      (TE_TEXTURE_MODE_DRAWN_NO_BORDER_MASK << TE_TEXTURE_MODE_DRAWN_NO_BORDER_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_CLAMP_IS_GL_CLAMP_SHIFT 14 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_CLAMP_IS_GL_CLAMP_MASK 0x1u
#define TE_TEXTURE_MODE_DRAWN_CLAMP_IS_GL_CLAMP_INPLACE (TE_TEXTURE_MODE_DRAWN_CLAMP_IS_GL_CLAMP_MASK << TE_TEXTURE_MODE_DRAWN_CLAMP_IS_GL_CLAMP_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_R_CLAMP_SHIFT          13 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_R_CLAMP_MASK           0x1u
#define TE_TEXTURE_MODE_DRAWN_R_CLAMP_INPLACE        (TE_TEXTURE_MODE_DRAWN_R_CLAMP_MASK << TE_TEXTURE_MODE_DRAWN_R_CLAMP_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_T_CLAMP_SHIFT          12 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_T_CLAMP_MASK           0x1u
#define TE_TEXTURE_MODE_DRAWN_T_CLAMP_INPLACE        (TE_TEXTURE_MODE_DRAWN_T_CLAMP_MASK << TE_TEXTURE_MODE_DRAWN_T_CLAMP_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_S_CLAMP_SHIFT          11 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_S_CLAMP_MASK           0x1u
#define TE_TEXTURE_MODE_DRAWN_S_CLAMP_INPLACE        (TE_TEXTURE_MODE_DRAWN_S_CLAMP_MASK << TE_TEXTURE_MODE_DRAWN_S_CLAMP_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_MIN_WITHIN_LEVEL_SHIFT 8 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_MIN_WITHIN_LEVEL_MASK  0x1u
#define TE_TEXTURE_MODE_DRAWN_MIN_WITHIN_LEVEL_INPLACE (TE_TEXTURE_MODE_DRAWN_MIN_WITHIN_LEVEL_MASK << TE_TEXTURE_MODE_DRAWN_MIN_WITHIN_LEVEL_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_MAG_LINEAR_SHIFT       7 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_MAG_LINEAR_MASK        0x1u
#define TE_TEXTURE_MODE_DRAWN_MAG_LINEAR_INPLACE     (TE_TEXTURE_MODE_DRAWN_MAG_LINEAR_MASK << TE_TEXTURE_MODE_DRAWN_MAG_LINEAR_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_MIN_BETWEEN_LEVELS_SHIFT 6 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_MIN_BETWEEN_LEVELS_MASK 0x1u
#define TE_TEXTURE_MODE_DRAWN_MIN_BETWEEN_LEVELS_INPLACE (TE_TEXTURE_MODE_DRAWN_MIN_BETWEEN_LEVELS_MASK << TE_TEXTURE_MODE_DRAWN_MIN_BETWEEN_LEVELS_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_SHIFT    5 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_MASK     0x1u
#define TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_INPLACE  (TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_MASK << TE_TEXTURE_MODE_DRAWN_MIPMAP_ACTIVE_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_MULTIBUFFER_HINT_SHIFT 4 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_MULTIBUFFER_HINT_MASK  0x1u
#define TE_TEXTURE_MODE_DRAWN_MULTIBUFFER_HINT_INPLACE (TE_TEXTURE_MODE_DRAWN_MULTIBUFFER_HINT_MASK << TE_TEXTURE_MODE_DRAWN_MULTIBUFFER_HINT_SHIFT)
#define TE_TEXTURE_MODE_DRAWN_DEPTH_CODE_SHIFT       2 /* inferred */
#define TE_TEXTURE_MODE_DRAWN_DEPTH_CODE_MASK        0x3u
#define TE_TEXTURE_MODE_DRAWN_DEPTH_CODE_INPLACE     (TE_TEXTURE_MODE_DRAWN_DEPTH_CODE_MASK << TE_TEXTURE_MODE_DRAWN_DEPTH_CODE_SHIFT)

/*
 * Log2 sizes of the base level and the detail level code. The diagnostic's mask
 * is 23 bits. The client writes the width and height fields twice, in the low and
 * high nibbles of each pair, with the same value. Formerly txsize.
 */
/* texture_size: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_SIZE_OFFSET                       0xf181u /* inferred */
#define TE_TEXTURE_SIZE_DEPTH_LOG2_SHIFT             19 /* inferred */
#define TE_TEXTURE_SIZE_DEPTH_LOG2_MASK              0xfu
#define TE_TEXTURE_SIZE_DEPTH_LOG2_INPLACE           (TE_TEXTURE_SIZE_DEPTH_LOG2_MASK << TE_TEXTURE_SIZE_DEPTH_LOG2_SHIFT)
#define TE_TEXTURE_SIZE_DETAIL_LEVEL_CODE_SHIFT      16 /* inferred */
#define TE_TEXTURE_SIZE_DETAIL_LEVEL_CODE_MASK       0x7u
#define TE_TEXTURE_SIZE_DETAIL_LEVEL_CODE_INPLACE    (TE_TEXTURE_SIZE_DETAIL_LEVEL_CODE_MASK << TE_TEXTURE_SIZE_DETAIL_LEVEL_CODE_SHIFT)
#define TE_TEXTURE_SIZE_HEIGHT_LOG2_COPY_SHIFT       12 /* inferred */
#define TE_TEXTURE_SIZE_HEIGHT_LOG2_COPY_MASK        0xfu
#define TE_TEXTURE_SIZE_HEIGHT_LOG2_COPY_INPLACE     (TE_TEXTURE_SIZE_HEIGHT_LOG2_COPY_MASK << TE_TEXTURE_SIZE_HEIGHT_LOG2_COPY_SHIFT)
#define TE_TEXTURE_SIZE_WIDTH_LOG2_COPY_SHIFT        8 /* inferred */
#define TE_TEXTURE_SIZE_WIDTH_LOG2_COPY_MASK         0xfu
#define TE_TEXTURE_SIZE_WIDTH_LOG2_COPY_INPLACE      (TE_TEXTURE_SIZE_WIDTH_LOG2_COPY_MASK << TE_TEXTURE_SIZE_WIDTH_LOG2_COPY_SHIFT)
#define TE_TEXTURE_SIZE_HEIGHT_LOG2_SHIFT            4 /* inferred */
#define TE_TEXTURE_SIZE_HEIGHT_LOG2_MASK             0xfu
#define TE_TEXTURE_SIZE_HEIGHT_LOG2_INPLACE          (TE_TEXTURE_SIZE_HEIGHT_LOG2_MASK << TE_TEXTURE_SIZE_HEIGHT_LOG2_SHIFT)
#define TE_TEXTURE_SIZE_WIDTH_LOG2_SHIFT             0 /* inferred */
#define TE_TEXTURE_SIZE_WIDTH_LOG2_MASK              0xfu
#define TE_TEXTURE_SIZE_WIDTH_LOG2_INPLACE           (TE_TEXTURE_SIZE_WIDTH_LOG2_MASK << TE_TEXTURE_SIZE_WIDTH_LOG2_SHIFT)

/*
 * Written only by the client's texture-manager initialisation. The diagnostic's
 * mask is 26 bits. Its meaning is unknown. Formerly txtile.
 */
/* texture_manager_init: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_MANAGER_INIT_OFFSET               0xf182u /* inferred */

/*
 * Level-of-detail clamp. The minimum level is sent as the level times 64, with six
 * fraction bits. The diagnostic's mask is 21 bits, so bits 25 to 21 of the client's
 * word are outside the mask and their meaning is unknown. Formerly txlod.
 */
/* texture_lod: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOD_OFFSET                        0xf183u /* inferred */
#define TE_TEXTURE_LOD_MIN_LOD_64THS_SHIFT           16 /* inferred */
#define TE_TEXTURE_LOD_MIN_LOD_64THS_MASK            0x3ffu
#define TE_TEXTURE_LOD_MIN_LOD_64THS_INPLACE         (TE_TEXTURE_LOD_MIN_LOD_64THS_MASK << TE_TEXTURE_LOD_MIN_LOD_64THS_SHIFT)
#define TE_TEXTURE_LOD_CONTEXT_BITS_SHIFT            10 /* unknown */
#define TE_TEXTURE_LOD_CONTEXT_BITS_MASK             0x3fu
#define TE_TEXTURE_LOD_CONTEXT_BITS_INPLACE          (TE_TEXTURE_LOD_CONTEXT_BITS_MASK << TE_TEXTURE_LOD_CONTEXT_BITS_SHIFT)
#define TE_TEXTURE_LOD_LAST_LEVEL_SHIFT              0 /* inferred */
#define TE_TEXTURE_LOD_LAST_LEVEL_MASK               0xfu
#define TE_TEXTURE_LOD_LAST_LEVEL_INPLACE            (TE_TEXTURE_LOD_LAST_LEVEL_MASK << TE_TEXTURE_LOD_LAST_LEVEL_SHIFT)

/*
 * Texture border colour, red and green, 12 bits a component, laid out like the
 * environment colour. Formerly txbcolor_rg.
 */
/* texture_border_color_rg: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_BORDER_COLOR_RG_OFFSET            0xf184u /* inferred */
#define TE_TEXTURE_BORDER_COLOR_RG_GREEN_SHIFT       12 /* inferred */
#define TE_TEXTURE_BORDER_COLOR_RG_GREEN_MASK        0xfffu
#define TE_TEXTURE_BORDER_COLOR_RG_GREEN_INPLACE     (TE_TEXTURE_BORDER_COLOR_RG_GREEN_MASK << TE_TEXTURE_BORDER_COLOR_RG_GREEN_SHIFT)
#define TE_TEXTURE_BORDER_COLOR_RG_RED_SHIFT         0 /* inferred */
#define TE_TEXTURE_BORDER_COLOR_RG_RED_MASK          0xfffu
#define TE_TEXTURE_BORDER_COLOR_RG_RED_INPLACE       (TE_TEXTURE_BORDER_COLOR_RG_RED_MASK << TE_TEXTURE_BORDER_COLOR_RG_RED_SHIFT)

/*
 * Texture border colour, blue and alpha, 12 bits a component, laid out like the
 * environment colour. Formerly txbcolor_ba.
 */
/* texture_border_color_ba: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_BORDER_COLOR_BA_OFFSET            0xf185u /* inferred */
#define TE_TEXTURE_BORDER_COLOR_BA_ALPHA_SHIFT       12 /* inferred */
#define TE_TEXTURE_BORDER_COLOR_BA_ALPHA_MASK        0xfffu
#define TE_TEXTURE_BORDER_COLOR_BA_ALPHA_INPLACE     (TE_TEXTURE_BORDER_COLOR_BA_ALPHA_MASK << TE_TEXTURE_BORDER_COLOR_BA_ALPHA_SHIFT)
#define TE_TEXTURE_BORDER_COLOR_BA_BLUE_SHIFT        0 /* inferred */
#define TE_TEXTURE_BORDER_COLOR_BA_BLUE_MASK         0xfffu
#define TE_TEXTURE_BORDER_COLOR_BA_BLUE_INPLACE      (TE_TEXTURE_BORDER_COLOR_BA_BLUE_MASK << TE_TEXTURE_BORDER_COLOR_BA_BLUE_SHIFT)

/*
 * Per-context base block in texture RAM. The client does not write it. The
 * kernel's base write is inferred to land here. Formerly txbase.
 */
/* texture_base: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_BASE_OFFSET                       0xf186u /* inferred */
#define TE_TEXTURE_BASE_BASE_BLOCK_SHIFT             0 /* inferred */
#define TE_TEXTURE_BASE_BASE_BLOCK_MASK              0xffu
#define TE_TEXTURE_BASE_BASE_BLOCK_INPLACE           (TE_TEXTURE_BASE_BASE_BLOCK_MASK << TE_TEXTURE_BASE_BASE_BLOCK_SHIFT)

/*
 * Texture RAM control, 20 bits in the diagnostic's mask. Its meaning is unknown. Formerly tram_cntrl.
 */
/* texture_ram_control: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_RAM_CONTROL_OFFSET                0xf187u /* inferred */

/*
 * Maximum pixel clamp, red and green, 24 bits in the diagnostic's mask. The
 * client writes it once in its texture-manager initialisation. Its meaning is
 * unknown.
 */
/* max_pixel_rg: rw32, space te1_regs, reset unknown; driver readings */
#define TE_MAX_PIXEL_RG_OFFSET                       0xf188u /* inferred */

/*
 * Maximum pixel clamp, blue and alpha, 24 bits in the diagnostic's mask. Its
 * meaning is unknown.
 */
/* max_pixel_ba: rw32, space te1_regs, reset unknown; driver readings */
#define TE_MAX_PIXEL_BA_OFFSET                       0xf189u /* inferred */

/*
 * Multi-dimensional texture addressing, 29 bits in the diagnostic's mask. Used
 * for volume and four-dimensional textures only. The field layout is fitted to a
 * single volume load and is inferred. Formerly mddma_cntrl.
 */
/* multi_dimensional_texture_addressing: rw32, space te1_regs, reset unknown; driver readings */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_OFFSET 0xf18au /* inferred */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_DEPTH_TERM_SHIFT 26 /* inferred */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_DEPTH_TERM_MASK 0xfu
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_DEPTH_TERM_INPLACE (TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_DEPTH_TERM_MASK << TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_DEPTH_TERM_SHIFT)
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_BLOCK_PAIR_LOG2_SHIFT 23 /* inferred */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_BLOCK_PAIR_LOG2_MASK 0x7u
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_BLOCK_PAIR_LOG2_INPLACE (TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_BLOCK_PAIR_LOG2_MASK << TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_BLOCK_PAIR_LOG2_SHIFT)
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE3_LOG2_SHIFT 14 /* inferred */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE3_LOG2_MASK 0xfu
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE3_LOG2_INPLACE (TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE3_LOG2_MASK << TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE3_LOG2_SHIFT)
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE2_LOG2_SHIFT 10 /* inferred */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE2_LOG2_MASK 0xfu
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE2_LOG2_INPLACE (TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE2_LOG2_MASK << TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE2_LOG2_SHIFT)
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE1_LOG2_SHIFT 6 /* inferred */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE1_LOG2_MASK 0xfu
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE1_LOG2_INPLACE (TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE1_LOG2_MASK << TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE1_LOG2_SHIFT)
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE0_LOG2_SHIFT 2 /* inferred */
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE0_LOG2_MASK 0xfu
#define TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE0_LOG2_INPLACE (TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE0_LOG2_MASK << TE_MULTI_DIMENSIONAL_TEXTURE_ADDRESSING_SIZE0_LOG2_SHIFT)

/*
 * Texture read buffer select, one bit. The client writes it together with the
 * complement in the loader's write-buffer register. The board's use is inferred
 * from the register name. Formerly texrbuffer.
 */
/* texture_read_buffer: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_READ_BUFFER_OFFSET                0xf18bu /* inferred */
#define TE_TEXTURE_READ_BUFFER_BUFFER_SHIFT          0 /* inferred */
#define TE_TEXTURE_READ_BUFFER_BUFFER_MASK           0x1u
#define TE_TEXTURE_READ_BUFFER_BUFFER_INPLACE        (TE_TEXTURE_READ_BUFFER_BUFFER_MASK << TE_TEXTURE_READ_BUFFER_BUFFER_SHIFT)

/*
 * Clamp limits in texels: the base level's width and height without a border,
 * shifted left by the first level. The client computes the word as the width
 * shifted left 13 bits, OR'd with the height. The height field is 13 bits wide,
 * so a height of 8192 reads back as zero. Formerly txclampsize.
 */
/* texture_clamp_size: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_CLAMP_SIZE_OFFSET                 0xf18cu /* established */
#define TE_TEXTURE_CLAMP_SIZE_CLAMP_WIDTH_SHIFT      13 /* inferred */
#define TE_TEXTURE_CLAMP_SIZE_CLAMP_WIDTH_MASK       0x1fffu
#define TE_TEXTURE_CLAMP_SIZE_CLAMP_WIDTH_INPLACE    (TE_TEXTURE_CLAMP_SIZE_CLAMP_WIDTH_MASK << TE_TEXTURE_CLAMP_SIZE_CLAMP_WIDTH_SHIFT)
#define TE_TEXTURE_CLAMP_SIZE_CLAMP_HEIGHT_SHIFT     0 /* inferred */
#define TE_TEXTURE_CLAMP_SIZE_CLAMP_HEIGHT_MASK      0x1fffu
#define TE_TEXTURE_CLAMP_SIZE_CLAMP_HEIGHT_INPLACE   (TE_TEXTURE_CLAMP_SIZE_CLAMP_HEIGHT_MASK << TE_TEXTURE_CLAMP_SIZE_CLAMP_HEIGHT_SHIFT)

/*
 * Texture engine soft-reset strobe, 3 bits in the diagnostic's mask. The client
 * does not write it. Formerly te_reset.
 */
/* texture_engine_reset: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_ENGINE_RESET_OFFSET               0xf18eu /* inferred */

/*
 * Index into the level tables. The client writes zero before it streams a table
 * through the indexed-write token, and advances one entry per table write. The
 * diagnostic's mask is 5 bits. Formerly txaddr.
 */
/* texture_level_table_index: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LEVEL_TABLE_INDEX_OFFSET          0xf190u /* inferred */
#define TE_TEXTURE_LEVEL_TABLE_INDEX_INDEX_SHIFT     0 /* inferred */
#define TE_TEXTURE_LEVEL_TABLE_INDEX_INDEX_MASK      0x1fu
#define TE_TEXTURE_LEVEL_TABLE_INDEX_INDEX_INPLACE   (TE_TEXTURE_LEVEL_TABLE_INDEX_INDEX_MASK << TE_TEXTURE_LEVEL_TABLE_INDEX_INDEX_SHIFT)

/*
 * First block of the detail texture, 9 bits in the diagnostic's mask. Formerly txdetail.
 */
/* texture_detail_block: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_DETAIL_BLOCK_OFFSET               0xf192u /* inferred */
#define TE_TEXTURE_DETAIL_BLOCK_BLOCK_SHIFT          0 /* inferred */
#define TE_TEXTURE_DETAIL_BLOCK_BLOCK_MASK           0x1ffu
#define TE_TEXTURE_DETAIL_BLOCK_BLOCK_INPLACE        (TE_TEXTURE_DETAIL_BLOCK_BLOCK_MASK << TE_TEXTURE_DETAIL_BLOCK_BLOCK_SHIFT)

/*
 * Border block of each level, streamed through the level table with the index
 * register. The diagnostic's mask is 9 bits. Formerly txborder.
 */
/* texture_border_block: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_BORDER_BLOCK_OFFSET               0xf193u /* inferred */
#define TE_TEXTURE_BORDER_BLOCK_BLOCK_SHIFT          0 /* inferred */
#define TE_TEXTURE_BORDER_BLOCK_BLOCK_MASK           0xffu
#define TE_TEXTURE_BORDER_BLOCK_BLOCK_INPLACE        (TE_TEXTURE_BORDER_BLOCK_BLOCK_MASK << TE_TEXTURE_BORDER_BLOCK_BLOCK_SHIFT)

/*
 * Detail weight by level of detail: a 32-entry table of 6-bit values, filled
 * through the indexed-write token. The client's default fills the table with 31,
 * 31, 31, 29, 28 down to 1. The diagnostic's mask is 6 bits.
 */
/* detailscale: rw32, space te1_regs, reset unknown; driver readings */
#define TE_DETAILSCALE_OFFSET                        0xf194u /* inferred */
#define TE_DETAILSCALE_VALUE_SHIFT                   0 /* inferred */
#define TE_DETAILSCALE_VALUE_MASK                    0x3fu
#define TE_DETAILSCALE_VALUE_INPLACE                 (TE_DETAILSCALE_VALUE_MASK << TE_DETAILSCALE_VALUE_SHIFT)

/*
 * Texture engine revision, 29 bits in the diagnostic's mask. The client does not
 * write it. The diagnostic identifies revisions by a render checksum instead, see
 * the checksum constants below. Formerly tevers.
 */
/* texture_engine_revision: r32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_ENGINE_REVISION_OFFSET            0xf196u /* inferred */

/*
 * Texture loader write-buffer select, one bit. The client writes it with the
 * complement of the read-buffer bit. Formerly tl_wbuffer.
 */
/* texture_loader_write_buffer: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_WRITE_BUFFER_OFFSET        0xf1a0u /* inferred */
#define TE_TEXTURE_LOADER_WRITE_BUFFER_BUFFER_SHIFT  0 /* inferred */
#define TE_TEXTURE_LOADER_WRITE_BUFFER_BUFFER_MASK   0x1u
#define TE_TEXTURE_LOADER_WRITE_BUFFER_BUFFER_INPLACE (TE_TEXTURE_LOADER_WRITE_BUFFER_BUFFER_MASK << TE_TEXTURE_LOADER_WRITE_BUFFER_BUFFER_SHIFT)

/*
 * Formerly tl_mode.
 */
/* texture_loader_mode: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_MODE_OFFSET                0xf1a1u /* established */
#define TE_TEXTURE_LOADER_MODE_FIXED_SHIFT           16 /* established */
#define TE_TEXTURE_LOADER_MODE_FIXED_MASK            0x7u
#define TE_TEXTURE_LOADER_MODE_FIXED_INPLACE         (TE_TEXTURE_LOADER_MODE_FIXED_MASK << TE_TEXTURE_LOADER_MODE_FIXED_SHIFT)
#define TE_TEXTURE_LOADER_MODE_FIELD_14_SHIFT        14 /* inferred */
#define TE_TEXTURE_LOADER_MODE_FIELD_14_MASK         0x1u
#define TE_TEXTURE_LOADER_MODE_FIELD_14_INPLACE      (TE_TEXTURE_LOADER_MODE_FIELD_14_MASK << TE_TEXTURE_LOADER_MODE_FIELD_14_SHIFT)
#define TE_TEXTURE_LOADER_MODE_ENABLES_SHIFT         9 /* inferred */
#define TE_TEXTURE_LOADER_MODE_ENABLES_MASK          0xfu
#define TE_TEXTURE_LOADER_MODE_ENABLES_INPLACE       (TE_TEXTURE_LOADER_MODE_ENABLES_MASK << TE_TEXTURE_LOADER_MODE_ENABLES_SHIFT)
#define TE_TEXTURE_LOADER_MODE_FIELD_8_SHIFT         8 /* inferred */
#define TE_TEXTURE_LOADER_MODE_FIELD_8_MASK          0x1u
#define TE_TEXTURE_LOADER_MODE_FIELD_8_INPLACE       (TE_TEXTURE_LOADER_MODE_FIELD_8_MASK << TE_TEXTURE_LOADER_MODE_FIELD_8_SHIFT)
#define TE_TEXTURE_LOADER_MODE_COMPONENT_DEPTH_SHIFT 5 /* inferred */
#define TE_TEXTURE_LOADER_MODE_COMPONENT_DEPTH_MASK  0x3u
#define TE_TEXTURE_LOADER_MODE_COMPONENT_DEPTH_INPLACE (TE_TEXTURE_LOADER_MODE_COMPONENT_DEPTH_MASK << TE_TEXTURE_LOADER_MODE_COMPONENT_DEPTH_SHIFT)
#define TE_TEXTURE_LOADER_MODE_CELL_SLOT_SHIFT       3 /* inferred */
#define TE_TEXTURE_LOADER_MODE_CELL_SLOT_MASK        0x3u
#define TE_TEXTURE_LOADER_MODE_CELL_SLOT_INPLACE     (TE_TEXTURE_LOADER_MODE_CELL_SLOT_MASK << TE_TEXTURE_LOADER_MODE_CELL_SLOT_SHIFT)
#define TE_TEXTURE_LOADER_MODE_COMPONENTS_MINUS_1_SHIFT 1 /* inferred */
#define TE_TEXTURE_LOADER_MODE_COMPONENTS_MINUS_1_MASK 0x3u
#define TE_TEXTURE_LOADER_MODE_COMPONENTS_MINUS_1_INPLACE (TE_TEXTURE_LOADER_MODE_COMPONENTS_MINUS_1_MASK << TE_TEXTURE_LOADER_MODE_COMPONENTS_MINUS_1_SHIFT)

/*
 * Level being loaded: its number and its log2 width and height. The client sends
 * the level's own size here, not the destination corners of the transfer. Formerly tl_spec.
 */
/* texture_loader_level_spec: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_LEVEL_SPEC_OFFSET          0xf1a2u /* established */
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_HEIGHT_SHIFT 8 /* inferred */
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_HEIGHT_MASK 0xfu
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_HEIGHT_INPLACE (TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_HEIGHT_MASK << TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_HEIGHT_SHIFT)
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_WIDTH_SHIFT 4 /* inferred */
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_WIDTH_MASK 0xfu
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_WIDTH_INPLACE (TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_WIDTH_MASK << TE_TEXTURE_LOADER_LEVEL_SPEC_LOG2_WIDTH_SHIFT)
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LEVEL_SHIFT     0 /* inferred */
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LEVEL_MASK      0xfu
#define TE_TEXTURE_LOADER_LEVEL_SPEC_LEVEL_INPLACE   (TE_TEXTURE_LOADER_LEVEL_SPEC_LEVEL_MASK << TE_TEXTURE_LOADER_LEVEL_SPEC_LEVEL_SHIFT)

/*
 * Formerly tl_addr.
 */
/* texture_loader_index: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_INDEX_OFFSET               0xf1a3u /* inferred */
#define TE_TEXTURE_LOADER_INDEX_INDEX_SHIFT          0 /* inferred */
#define TE_TEXTURE_LOADER_INDEX_INDEX_MASK           0xfu
#define TE_TEXTURE_LOADER_INDEX_INDEX_INPLACE        (TE_TEXTURE_LOADER_INDEX_INDEX_MASK << TE_TEXTURE_LOADER_INDEX_INDEX_SHIFT)

/*
 * First block of a level, with a per-image flag bit. The diagnostic's mask is 9
 * bits. The client's copy path sends it; an ordinary load does not. Formerly tl_mipmap.
 */
/* texture_loader_mipmap_block: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_MIPMAP_BLOCK_OFFSET        0xf1a4u /* inferred */
#define TE_TEXTURE_LOADER_MIPMAP_BLOCK_FLAG_SHIFT    8 /* inferred */
#define TE_TEXTURE_LOADER_MIPMAP_BLOCK_FLAG_MASK     0x1u
#define TE_TEXTURE_LOADER_MIPMAP_BLOCK_FLAG_INPLACE  (TE_TEXTURE_LOADER_MIPMAP_BLOCK_FLAG_MASK << TE_TEXTURE_LOADER_MIPMAP_BLOCK_FLAG_SHIFT)
#define TE_TEXTURE_LOADER_MIPMAP_BLOCK_BLOCK_SHIFT   0 /* inferred */
#define TE_TEXTURE_LOADER_MIPMAP_BLOCK_BLOCK_MASK    0xffu
#define TE_TEXTURE_LOADER_MIPMAP_BLOCK_BLOCK_INPLACE (TE_TEXTURE_LOADER_MIPMAP_BLOCK_BLOCK_MASK << TE_TEXTURE_LOADER_MIPMAP_BLOCK_BLOCK_SHIFT)

/*
 * Border block of a level, 9 bits in the diagnostic's mask. Formerly tl_border.
 */
/* texture_loader_border_block: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_BORDER_BLOCK_OFFSET        0xf1a5u /* inferred */
#define TE_TEXTURE_LOADER_BORDER_BLOCK_BLOCK_SHIFT   0 /* inferred */
#define TE_TEXTURE_LOADER_BORDER_BLOCK_BLOCK_MASK    0xffu
#define TE_TEXTURE_LOADER_BORDER_BLOCK_BLOCK_INPLACE (TE_TEXTURE_LOADER_BORDER_BLOCK_BLOCK_MASK << TE_TEXTURE_LOADER_BORDER_BLOCK_BLOCK_SHIFT)

/*
 * Video-to-texture capture start, one bit. The client does not write it; the
 * kernel's video path does. Formerly tl_vidcntrl.
 */
/* texture_loader_video_capture_start: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_VIDEO_CAPTURE_START_OFFSET 0xf1a6u /* inferred */

/*
 * Base block of the texture being loaded, 8 bits in the diagnostic's mask. Formerly tl_base.
 */
/* texture_loader_base_block: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_BASE_BLOCK_OFFSET          0xf1a7u /* inferred */
#define TE_TEXTURE_LOADER_BASE_BLOCK_BASE_BLOCK_SHIFT 0 /* inferred */
#define TE_TEXTURE_LOADER_BASE_BLOCK_BASE_BLOCK_MASK 0xffu
#define TE_TEXTURE_LOADER_BASE_BLOCK_BASE_BLOCK_INPLACE (TE_TEXTURE_LOADER_BASE_BLOCK_BASE_BLOCK_MASK << TE_TEXTURE_LOADER_BASE_BLOCK_BASE_BLOCK_SHIFT)

/*
 * Copy rectangle width for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_s_size.
 */
/* texture_loader_copy_width: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_COPY_WIDTH_OFFSET          0xf1a9u /* inferred */

/*
 * Copy rectangle height for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_t_size.
 */
/* texture_loader_copy_height: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_COPY_HEIGHT_OFFSET         0xf1aau /* inferred */

/*
 * Copy rectangle left edge for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_s_left.
 */
/* texture_loader_copy_left: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_COPY_LEFT_OFFSET           0xf1abu /* inferred */

/*
 * Copy rectangle bottom edge for a framebuffer copy, 14 bits in the diagnostic's mask. Formerly tl_t_bottom.
 */
/* texture_loader_copy_bottom: w32, space te1_regs, reset unknown; driver readings */
#define TE_TEXTURE_LOADER_COPY_BOTTOM_OFFSET         0xf1acu /* inferred */

#define TE_TE_REV_B_1TRAM_CHECKSUM                   0xbdfc48fcu /* inferred */
#define TE_TE_REV_B_4TRAM_CHECKSUM                   0x236379000ull /* inferred */
#define TE_TE_REV_D_CHECKSUM                         0x2aa70d210ull /* inferred */
#define TE_TRAM_BLOCKS_PER_PATH                      0x100u /* established */
#define TE_TRAM_BLOCK_SIZE_SHIFT                     0xcu /* established */
#define TE_TRAM_TEXTURE_BYTES                        0x400000u /* established */
#define TE_TRAM_WORD_0                               0x1c011401u /* established */
#define TE_TRAM_WORD_0_HIGH_HALF                     0x1c01u /* established */
#define TE_TRAM_WORD_0_LOW_HALF                      0x1401u /* established */
#define TE_TRAM_WORD_1                               0xc000400u /* established */

#endif /* TE_GEN_H */
