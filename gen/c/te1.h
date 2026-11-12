/* generated from defs/te1.toml by defs-gen - do not edit, change the source */
/* texture engine and texture RAM registers of the Impact graphics subsystem */
#ifndef TE_GEN_H
#define TE_GEN_H

#include <stdint.h>


/*
 * Texture mode for the drawn texture: component depth, filters, wrap and the
 * no-border flag. The diagnostic's mask is 25 bits. The field positions are the
 * client's encodings, graded per field; what the board does with each field is
 * inferred. Bit 16 is set on every texture the client has been seen to draw with,
 * and its meaning is unknown.
 */
/* texmode2: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXMODE2_OFFSET                           0xf180u /* inferred */
#define TE_TEXMODE2_MIPMAP_ACTIVE_COPY_SHIFT         19 /* established */
#define TE_TEXMODE2_MIPMAP_ACTIVE_COPY_MASK          0x1u
#define TE_TEXMODE2_MIPMAP_ACTIVE_COPY_INPLACE       (TE_TEXMODE2_MIPMAP_ACTIVE_COPY_MASK << TE_TEXMODE2_MIPMAP_ACTIVE_COPY_SHIFT)
#define TE_TEXMODE2_NO_BORDER_SHIFT                  16 /* unknown */
#define TE_TEXMODE2_NO_BORDER_MASK                   0x1u
#define TE_TEXMODE2_NO_BORDER_INPLACE                (TE_TEXMODE2_NO_BORDER_MASK << TE_TEXMODE2_NO_BORDER_SHIFT)
#define TE_TEXMODE2_CLAMP_IS_GL_CLAMP_SHIFT          14 /* established */
#define TE_TEXMODE2_CLAMP_IS_GL_CLAMP_MASK           0x1u
#define TE_TEXMODE2_CLAMP_IS_GL_CLAMP_INPLACE        (TE_TEXMODE2_CLAMP_IS_GL_CLAMP_MASK << TE_TEXMODE2_CLAMP_IS_GL_CLAMP_SHIFT)
#define TE_TEXMODE2_R_CLAMP_SHIFT                    13 /* established */
#define TE_TEXMODE2_R_CLAMP_MASK                     0x1u
#define TE_TEXMODE2_R_CLAMP_INPLACE                  (TE_TEXMODE2_R_CLAMP_MASK << TE_TEXMODE2_R_CLAMP_SHIFT)
#define TE_TEXMODE2_T_CLAMP_SHIFT                    12 /* established */
#define TE_TEXMODE2_T_CLAMP_MASK                     0x1u
#define TE_TEXMODE2_T_CLAMP_INPLACE                  (TE_TEXMODE2_T_CLAMP_MASK << TE_TEXMODE2_T_CLAMP_SHIFT)
#define TE_TEXMODE2_S_CLAMP_SHIFT                    11 /* established */
#define TE_TEXMODE2_S_CLAMP_MASK                     0x1u
#define TE_TEXMODE2_S_CLAMP_INPLACE                  (TE_TEXMODE2_S_CLAMP_MASK << TE_TEXMODE2_S_CLAMP_SHIFT)
#define TE_TEXMODE2_MIN_WITHIN_LEVEL_SHIFT           8 /* established */
#define TE_TEXMODE2_MIN_WITHIN_LEVEL_MASK            0x1u
#define TE_TEXMODE2_MIN_WITHIN_LEVEL_INPLACE         (TE_TEXMODE2_MIN_WITHIN_LEVEL_MASK << TE_TEXMODE2_MIN_WITHIN_LEVEL_SHIFT)
#define TE_TEXMODE2_MAG_LINEAR_SHIFT                 7 /* established */
#define TE_TEXMODE2_MAG_LINEAR_MASK                  0x1u
#define TE_TEXMODE2_MAG_LINEAR_INPLACE               (TE_TEXMODE2_MAG_LINEAR_MASK << TE_TEXMODE2_MAG_LINEAR_SHIFT)
#define TE_TEXMODE2_MIN_BETWEEN_LEVELS_SHIFT         6 /* established */
#define TE_TEXMODE2_MIN_BETWEEN_LEVELS_MASK          0x1u
#define TE_TEXMODE2_MIN_BETWEEN_LEVELS_INPLACE       (TE_TEXMODE2_MIN_BETWEEN_LEVELS_MASK << TE_TEXMODE2_MIN_BETWEEN_LEVELS_SHIFT)
#define TE_TEXMODE2_MIPMAP_ACTIVE_SHIFT              5 /* established */
#define TE_TEXMODE2_MIPMAP_ACTIVE_MASK               0x1u
#define TE_TEXMODE2_MIPMAP_ACTIVE_INPLACE            (TE_TEXMODE2_MIPMAP_ACTIVE_MASK << TE_TEXMODE2_MIPMAP_ACTIVE_SHIFT)
#define TE_TEXMODE2_MULTIBUFFER_HINT_SHIFT           4 /* established */
#define TE_TEXMODE2_MULTIBUFFER_HINT_MASK            0x1u
#define TE_TEXMODE2_MULTIBUFFER_HINT_INPLACE         (TE_TEXMODE2_MULTIBUFFER_HINT_MASK << TE_TEXMODE2_MULTIBUFFER_HINT_SHIFT)
#define TE_TEXMODE2_DEPTH_CODE_SHIFT                 2 /* established */
#define TE_TEXMODE2_DEPTH_CODE_MASK                  0x3u
#define TE_TEXMODE2_DEPTH_CODE_INPLACE               (TE_TEXMODE2_DEPTH_CODE_MASK << TE_TEXMODE2_DEPTH_CODE_SHIFT)

/*
 * Log2 sizes of the base level and the detail level code. The diagnostic's mask
 * is 23 bits. The client writes the width and height fields twice, in the low and
 * high nibbles of each pair, with the same value.
 */
/* txsize: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXSIZE_OFFSET                             0xf181u /* inferred */
#define TE_TXSIZE_DEPTH_LOG2_SHIFT                   19 /* established */
#define TE_TXSIZE_DEPTH_LOG2_MASK                    0xfu
#define TE_TXSIZE_DEPTH_LOG2_INPLACE                 (TE_TXSIZE_DEPTH_LOG2_MASK << TE_TXSIZE_DEPTH_LOG2_SHIFT)
#define TE_TXSIZE_DETAIL_LEVEL_CODE_SHIFT            16 /* established */
#define TE_TXSIZE_DETAIL_LEVEL_CODE_MASK             0x7u
#define TE_TXSIZE_DETAIL_LEVEL_CODE_INPLACE          (TE_TXSIZE_DETAIL_LEVEL_CODE_MASK << TE_TXSIZE_DETAIL_LEVEL_CODE_SHIFT)
#define TE_TXSIZE_HEIGHT_LOG2_COPY_SHIFT             12 /* established */
#define TE_TXSIZE_HEIGHT_LOG2_COPY_MASK              0xfu
#define TE_TXSIZE_HEIGHT_LOG2_COPY_INPLACE           (TE_TXSIZE_HEIGHT_LOG2_COPY_MASK << TE_TXSIZE_HEIGHT_LOG2_COPY_SHIFT)
#define TE_TXSIZE_WIDTH_LOG2_COPY_SHIFT              8 /* established */
#define TE_TXSIZE_WIDTH_LOG2_COPY_MASK               0xfu
#define TE_TXSIZE_WIDTH_LOG2_COPY_INPLACE            (TE_TXSIZE_WIDTH_LOG2_COPY_MASK << TE_TXSIZE_WIDTH_LOG2_COPY_SHIFT)
#define TE_TXSIZE_HEIGHT_LOG2_SHIFT                  4 /* established */
#define TE_TXSIZE_HEIGHT_LOG2_MASK                   0xfu
#define TE_TXSIZE_HEIGHT_LOG2_INPLACE                (TE_TXSIZE_HEIGHT_LOG2_MASK << TE_TXSIZE_HEIGHT_LOG2_SHIFT)
#define TE_TXSIZE_WIDTH_LOG2_SHIFT                   0 /* established */
#define TE_TXSIZE_WIDTH_LOG2_MASK                    0xfu
#define TE_TXSIZE_WIDTH_LOG2_INPLACE                 (TE_TXSIZE_WIDTH_LOG2_MASK << TE_TXSIZE_WIDTH_LOG2_SHIFT)

/*
 * Written only by the client's texture-manager initialisation. The diagnostic's
 * mask is 26 bits. Its meaning is unknown.
 */
/* txtile: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXTILE_OFFSET                             0xf182u /* inferred */

/*
 * Level-of-detail clamp. The minimum level is sent as the level times 64, with six
 * fraction bits. The diagnostic's mask is 21 bits, so bits 25 to 21 of the client's
 * word are outside the mask and their meaning is unknown.
 */
/* txlod: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXLOD_OFFSET                              0xf183u /* inferred */
#define TE_TXLOD_MIN_LOD_64THS_SHIFT                 16 /* established */
#define TE_TXLOD_MIN_LOD_64THS_MASK                  0x3ffu
#define TE_TXLOD_MIN_LOD_64THS_INPLACE               (TE_TXLOD_MIN_LOD_64THS_MASK << TE_TXLOD_MIN_LOD_64THS_SHIFT)
#define TE_TXLOD_CONTEXT_BITS_SHIFT                  10 /* unknown */
#define TE_TXLOD_CONTEXT_BITS_MASK                   0x3fu
#define TE_TXLOD_CONTEXT_BITS_INPLACE                (TE_TXLOD_CONTEXT_BITS_MASK << TE_TXLOD_CONTEXT_BITS_SHIFT)
#define TE_TXLOD_LAST_LEVEL_SHIFT                    0 /* established */
#define TE_TXLOD_LAST_LEVEL_MASK                     0xfu
#define TE_TXLOD_LAST_LEVEL_INPLACE                  (TE_TXLOD_LAST_LEVEL_MASK << TE_TXLOD_LAST_LEVEL_SHIFT)

/*
 * Texture border colour, red and green, 12 bits a component, laid out like the
 * environment colour.
 */
/* txbcolor_rg: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXBCOLOR_RG_OFFSET                        0xf184u /* inferred */
#define TE_TXBCOLOR_RG_GREEN_SHIFT                   12 /* established */
#define TE_TXBCOLOR_RG_GREEN_MASK                    0xfffu
#define TE_TXBCOLOR_RG_GREEN_INPLACE                 (TE_TXBCOLOR_RG_GREEN_MASK << TE_TXBCOLOR_RG_GREEN_SHIFT)
#define TE_TXBCOLOR_RG_RED_SHIFT                     0 /* established */
#define TE_TXBCOLOR_RG_RED_MASK                      0xfffu
#define TE_TXBCOLOR_RG_RED_INPLACE                   (TE_TXBCOLOR_RG_RED_MASK << TE_TXBCOLOR_RG_RED_SHIFT)

/*
 * Texture border colour, blue and alpha, 12 bits a component, laid out like the
 * environment colour.
 */
/* txbcolor_ba: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXBCOLOR_BA_OFFSET                        0xf185u /* inferred */
#define TE_TXBCOLOR_BA_ALPHA_SHIFT                   12 /* established */
#define TE_TXBCOLOR_BA_ALPHA_MASK                    0xfffu
#define TE_TXBCOLOR_BA_ALPHA_INPLACE                 (TE_TXBCOLOR_BA_ALPHA_MASK << TE_TXBCOLOR_BA_ALPHA_SHIFT)
#define TE_TXBCOLOR_BA_BLUE_SHIFT                    0 /* established */
#define TE_TXBCOLOR_BA_BLUE_MASK                     0xfffu
#define TE_TXBCOLOR_BA_BLUE_INPLACE                  (TE_TXBCOLOR_BA_BLUE_MASK << TE_TXBCOLOR_BA_BLUE_SHIFT)

/*
 * Per-context base block in texture RAM. The client does not write it. The
 * kernel's base write is inferred to land here.
 */
/* txbase: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXBASE_OFFSET                             0xf186u /* inferred */
#define TE_TXBASE_BASE_BLOCK_SHIFT                   0 /* inferred */
#define TE_TXBASE_BASE_BLOCK_MASK                    0xffu
#define TE_TXBASE_BASE_BLOCK_INPLACE                 (TE_TXBASE_BASE_BLOCK_MASK << TE_TXBASE_BASE_BLOCK_SHIFT)

/*
 * Texture RAM control, 20 bits in the diagnostic's mask. Its meaning is unknown.
 */
/* tram_cntrl: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TRAM_CNTRL_OFFSET                         0xf187u /* inferred */

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
 * single volume load and is inferred.
 */
/* mddma_cntrl: rw32, space te1_regs, reset unknown; driver readings */
#define TE_MDDMA_CNTRL_OFFSET                        0xf18au /* inferred */
#define TE_MDDMA_CNTRL_DEPTH_TERM_SHIFT              26 /* inferred */
#define TE_MDDMA_CNTRL_DEPTH_TERM_MASK               0xfu
#define TE_MDDMA_CNTRL_DEPTH_TERM_INPLACE            (TE_MDDMA_CNTRL_DEPTH_TERM_MASK << TE_MDDMA_CNTRL_DEPTH_TERM_SHIFT)
#define TE_MDDMA_CNTRL_BLOCK_PAIR_LOG2_SHIFT         23 /* inferred */
#define TE_MDDMA_CNTRL_BLOCK_PAIR_LOG2_MASK          0x7u
#define TE_MDDMA_CNTRL_BLOCK_PAIR_LOG2_INPLACE       (TE_MDDMA_CNTRL_BLOCK_PAIR_LOG2_MASK << TE_MDDMA_CNTRL_BLOCK_PAIR_LOG2_SHIFT)
#define TE_MDDMA_CNTRL_SIZE3_LOG2_SHIFT              14 /* inferred */
#define TE_MDDMA_CNTRL_SIZE3_LOG2_MASK               0xfu
#define TE_MDDMA_CNTRL_SIZE3_LOG2_INPLACE            (TE_MDDMA_CNTRL_SIZE3_LOG2_MASK << TE_MDDMA_CNTRL_SIZE3_LOG2_SHIFT)
#define TE_MDDMA_CNTRL_SIZE2_LOG2_SHIFT              10 /* inferred */
#define TE_MDDMA_CNTRL_SIZE2_LOG2_MASK               0xfu
#define TE_MDDMA_CNTRL_SIZE2_LOG2_INPLACE            (TE_MDDMA_CNTRL_SIZE2_LOG2_MASK << TE_MDDMA_CNTRL_SIZE2_LOG2_SHIFT)
#define TE_MDDMA_CNTRL_SIZE1_LOG2_SHIFT              6 /* inferred */
#define TE_MDDMA_CNTRL_SIZE1_LOG2_MASK               0xfu
#define TE_MDDMA_CNTRL_SIZE1_LOG2_INPLACE            (TE_MDDMA_CNTRL_SIZE1_LOG2_MASK << TE_MDDMA_CNTRL_SIZE1_LOG2_SHIFT)
#define TE_MDDMA_CNTRL_SIZE0_LOG2_SHIFT              2 /* inferred */
#define TE_MDDMA_CNTRL_SIZE0_LOG2_MASK               0xfu
#define TE_MDDMA_CNTRL_SIZE0_LOG2_INPLACE            (TE_MDDMA_CNTRL_SIZE0_LOG2_MASK << TE_MDDMA_CNTRL_SIZE0_LOG2_SHIFT)

/*
 * Texture read buffer select, one bit. The client writes it together with the
 * complement in the loader's write-buffer register. The board's use is inferred
 * from the register name.
 */
/* texrbuffer: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TEXRBUFFER_OFFSET                         0xf18bu /* inferred */
#define TE_TEXRBUFFER_BUFFER_SHIFT                   0 /* inferred */
#define TE_TEXRBUFFER_BUFFER_MASK                    0x1u
#define TE_TEXRBUFFER_BUFFER_INPLACE                 (TE_TEXRBUFFER_BUFFER_MASK << TE_TEXRBUFFER_BUFFER_SHIFT)

/*
 * Clamp limits in texels: the base level's width and height without a border,
 * shifted left by the first level. The client computes the word as the width
 * shifted left 13 bits, OR'd with the height. The height field is 13 bits wide,
 * so a height of 8192 reads back as zero.
 */
/* txclampsize: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXCLAMPSIZE_OFFSET                        0xf18cu /* established */
#define TE_TXCLAMPSIZE_CLAMP_WIDTH_SHIFT             13 /* established */
#define TE_TXCLAMPSIZE_CLAMP_WIDTH_MASK              0x1fffu
#define TE_TXCLAMPSIZE_CLAMP_WIDTH_INPLACE           (TE_TXCLAMPSIZE_CLAMP_WIDTH_MASK << TE_TXCLAMPSIZE_CLAMP_WIDTH_SHIFT)
#define TE_TXCLAMPSIZE_CLAMP_HEIGHT_SHIFT            0 /* established */
#define TE_TXCLAMPSIZE_CLAMP_HEIGHT_MASK             0x1fffu
#define TE_TXCLAMPSIZE_CLAMP_HEIGHT_INPLACE          (TE_TXCLAMPSIZE_CLAMP_HEIGHT_MASK << TE_TXCLAMPSIZE_CLAMP_HEIGHT_SHIFT)

/*
 * Texture engine soft-reset strobe, 3 bits in the diagnostic's mask. The client
 * does not write it.
 */
/* te_reset: w32, space te1_regs, reset unknown; driver readings */
#define TE_TE_RESET_OFFSET                           0xf18eu /* inferred */

/*
 * Index into the level tables. The client writes zero before it streams a table
 * through the indexed-write token, and advances one entry per table write. The
 * diagnostic's mask is 5 bits.
 */
/* txaddr: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXADDR_OFFSET                             0xf190u /* inferred */
#define TE_TXADDR_INDEX_SHIFT                        0 /* inferred */
#define TE_TXADDR_INDEX_MASK                         0x1fu
#define TE_TXADDR_INDEX_INPLACE                      (TE_TXADDR_INDEX_MASK << TE_TXADDR_INDEX_SHIFT)

/*
 * First block of the detail texture, 9 bits in the diagnostic's mask.
 */
/* txdetail: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXDETAIL_OFFSET                           0xf192u /* inferred */
#define TE_TXDETAIL_BLOCK_SHIFT                      0 /* inferred */
#define TE_TXDETAIL_BLOCK_MASK                       0x1ffu
#define TE_TXDETAIL_BLOCK_INPLACE                    (TE_TXDETAIL_BLOCK_MASK << TE_TXDETAIL_BLOCK_SHIFT)

/*
 * Border block of each level, streamed through the level table with the index
 * register. The diagnostic's mask is 9 bits.
 */
/* txborder: rw32, space te1_regs, reset unknown; driver readings */
#define TE_TXBORDER_OFFSET                           0xf193u /* inferred */
#define TE_TXBORDER_BLOCK_SHIFT                      0 /* inferred */
#define TE_TXBORDER_BLOCK_MASK                       0xffu
#define TE_TXBORDER_BLOCK_INPLACE                    (TE_TXBORDER_BLOCK_MASK << TE_TXBORDER_BLOCK_SHIFT)

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
 * the checksum constants below.
 */
/* tevers: r32, space te1_regs, reset unknown; driver readings */
#define TE_TEVERS_OFFSET                             0xf196u /* inferred */

/*
 * Texture loader write-buffer select, one bit. The client writes it with the
 * complement of the read-buffer bit.
 */
/* tl_wbuffer: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_WBUFFER_OFFSET                         0xf1a0u /* inferred */
#define TE_TL_WBUFFER_BUFFER_SHIFT                   0 /* inferred */
#define TE_TL_WBUFFER_BUFFER_MASK                    0x1u
#define TE_TL_WBUFFER_BUFFER_INPLACE                 (TE_TL_WBUFFER_BUFFER_MASK << TE_TL_WBUFFER_BUFFER_SHIFT)

/* tl_mode: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_MODE_OFFSET                            0xf1a1u /* established */
#define TE_TL_MODE_FIXED_SHIFT                       16 /* established */
#define TE_TL_MODE_FIXED_MASK                        0x7u
#define TE_TL_MODE_FIXED_INPLACE                     (TE_TL_MODE_FIXED_MASK << TE_TL_MODE_FIXED_SHIFT)
#define TE_TL_MODE_BIT14_SHIFT                       14 /* inferred */
#define TE_TL_MODE_BIT14_MASK                        0x1u
#define TE_TL_MODE_BIT14_INPLACE                     (TE_TL_MODE_BIT14_MASK << TE_TL_MODE_BIT14_SHIFT)
#define TE_TL_MODE_ENABLES_SHIFT                     9 /* inferred */
#define TE_TL_MODE_ENABLES_MASK                      0xfu
#define TE_TL_MODE_ENABLES_INPLACE                   (TE_TL_MODE_ENABLES_MASK << TE_TL_MODE_ENABLES_SHIFT)
#define TE_TL_MODE_FLAG8_SHIFT                       8 /* inferred */
#define TE_TL_MODE_FLAG8_MASK                        0x1u
#define TE_TL_MODE_FLAG8_INPLACE                     (TE_TL_MODE_FLAG8_MASK << TE_TL_MODE_FLAG8_SHIFT)
#define TE_TL_MODE_COMPONENT_DEPTH_SHIFT             5 /* inferred */
#define TE_TL_MODE_COMPONENT_DEPTH_MASK              0x3u
#define TE_TL_MODE_COMPONENT_DEPTH_INPLACE           (TE_TL_MODE_COMPONENT_DEPTH_MASK << TE_TL_MODE_COMPONENT_DEPTH_SHIFT)
#define TE_TL_MODE_CELL_SLOT_SHIFT                   3 /* inferred */
#define TE_TL_MODE_CELL_SLOT_MASK                    0x3u
#define TE_TL_MODE_CELL_SLOT_INPLACE                 (TE_TL_MODE_CELL_SLOT_MASK << TE_TL_MODE_CELL_SLOT_SHIFT)
#define TE_TL_MODE_COMPONENTS_MINUS_1_SHIFT          1 /* inferred */
#define TE_TL_MODE_COMPONENTS_MINUS_1_MASK           0x3u
#define TE_TL_MODE_COMPONENTS_MINUS_1_INPLACE        (TE_TL_MODE_COMPONENTS_MINUS_1_MASK << TE_TL_MODE_COMPONENTS_MINUS_1_SHIFT)

/*
 * Level being loaded: its number and its log2 width and height. The client sends
 * the level's own size here, not the destination corners of the transfer.
 */
/* tl_spec: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_SPEC_OFFSET                            0xf1a2u /* established */
#define TE_TL_SPEC_LOG2_HEIGHT_SHIFT                 8 /* established */
#define TE_TL_SPEC_LOG2_HEIGHT_MASK                  0xfu
#define TE_TL_SPEC_LOG2_HEIGHT_INPLACE               (TE_TL_SPEC_LOG2_HEIGHT_MASK << TE_TL_SPEC_LOG2_HEIGHT_SHIFT)
#define TE_TL_SPEC_LOG2_WIDTH_SHIFT                  4 /* established */
#define TE_TL_SPEC_LOG2_WIDTH_MASK                   0xfu
#define TE_TL_SPEC_LOG2_WIDTH_INPLACE                (TE_TL_SPEC_LOG2_WIDTH_MASK << TE_TL_SPEC_LOG2_WIDTH_SHIFT)
#define TE_TL_SPEC_LEVEL_SHIFT                       0 /* established */
#define TE_TL_SPEC_LEVEL_MASK                        0xfu
#define TE_TL_SPEC_LEVEL_INPLACE                     (TE_TL_SPEC_LEVEL_MASK << TE_TL_SPEC_LEVEL_SHIFT)

/* tl_addr: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_ADDR_OFFSET                            0xf1a3u /* inferred */
#define TE_TL_ADDR_INDEX_SHIFT                       0 /* inferred */
#define TE_TL_ADDR_INDEX_MASK                        0xfu
#define TE_TL_ADDR_INDEX_INPLACE                     (TE_TL_ADDR_INDEX_MASK << TE_TL_ADDR_INDEX_SHIFT)

/*
 * First block of a level, with a per-image flag bit. The diagnostic's mask is 9
 * bits. The client's copy path sends it; an ordinary load does not.
 */
/* tl_mipmap: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_MIPMAP_OFFSET                          0xf1a4u /* inferred */
#define TE_TL_MIPMAP_FLAG_SHIFT                      8 /* inferred */
#define TE_TL_MIPMAP_FLAG_MASK                       0x1u
#define TE_TL_MIPMAP_FLAG_INPLACE                    (TE_TL_MIPMAP_FLAG_MASK << TE_TL_MIPMAP_FLAG_SHIFT)
#define TE_TL_MIPMAP_BLOCK_SHIFT                     0 /* inferred */
#define TE_TL_MIPMAP_BLOCK_MASK                      0xffu
#define TE_TL_MIPMAP_BLOCK_INPLACE                   (TE_TL_MIPMAP_BLOCK_MASK << TE_TL_MIPMAP_BLOCK_SHIFT)

/*
 * Border block of a level, 9 bits in the diagnostic's mask.
 */
/* tl_border: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_BORDER_OFFSET                          0xf1a5u /* inferred */
#define TE_TL_BORDER_BLOCK_SHIFT                     0 /* inferred */
#define TE_TL_BORDER_BLOCK_MASK                      0xffu
#define TE_TL_BORDER_BLOCK_INPLACE                   (TE_TL_BORDER_BLOCK_MASK << TE_TL_BORDER_BLOCK_SHIFT)

/*
 * Video-to-texture capture start, one bit. The client does not write it; the
 * kernel's video path does.
 */
/* tl_vidcntrl: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_VIDCNTRL_OFFSET                        0xf1a6u /* inferred */

/*
 * Base block of the texture being loaded, 8 bits in the diagnostic's mask.
 */
/* tl_base: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_BASE_OFFSET                            0xf1a7u /* inferred */
#define TE_TL_BASE_BASE_BLOCK_SHIFT                  0 /* inferred */
#define TE_TL_BASE_BASE_BLOCK_MASK                   0xffu
#define TE_TL_BASE_BASE_BLOCK_INPLACE                (TE_TL_BASE_BASE_BLOCK_MASK << TE_TL_BASE_BASE_BLOCK_SHIFT)

/*
 * Copy rectangle width for a framebuffer copy, 14 bits in the diagnostic's mask.
 */
/* tl_s_size: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_S_SIZE_OFFSET                          0xf1a9u /* inferred */

/*
 * Copy rectangle height for a framebuffer copy, 14 bits in the diagnostic's mask.
 */
/* tl_t_size: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_T_SIZE_OFFSET                          0xf1aau /* inferred */

/*
 * Copy rectangle left edge for a framebuffer copy, 14 bits in the diagnostic's mask.
 */
/* tl_s_left: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_S_LEFT_OFFSET                          0xf1abu /* inferred */

/*
 * Copy rectangle bottom edge for a framebuffer copy, 14 bits in the diagnostic's mask.
 */
/* tl_t_bottom: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_T_BOTTOM_OFFSET                        0xf1acu /* inferred */

#define TE_TE_REV_B_1TRAM_CHECKSUM                   0xbdf48fcu /* inferred */
#define TE_TE_REV_B_4TRAM_CHECKSUM                   0x236379000ull /* inferred */
#define TE_TE_REV_D_CHECKSUM                         0x2aa70d210ull /* inferred */
#define TE_TRAM_BLOCKS_PER_PATH                      0x100u /* established */
#define TE_TRAM_BLOCK_SIZE_SHIFT                     0xcu /* established */
#define TE_TRAM_REV_WORD0                            0x1c011401u /* established */
#define TE_TRAM_REV_WORD0_HIGH_HALF                  0x1c01u /* established */
#define TE_TRAM_REV_WORD0_LOW_HALF                   0x1401u /* established */
#define TE_TRAM_REV_WORD1                            0xc000400u /* established */
#define TE_TRAM_TEXTURE_BYTES                        0x400000u /* established */

#endif /* TE_GEN_H */
