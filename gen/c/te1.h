/* generated from defs/te1.toml by defs-gen - do not edit, change the source */
/* texture RAM revision words of the Impact graphics subsystem */
#ifndef TE_GEN_H
#define TE_GEN_H

#include <stdint.h>


/* tx_mipmap: w32, space te1_regs, reset unknown; driver readings */
#define TE_TX_MIPMAP_OFFSET                          0xf191u /* established */
#define TE_TX_MIPMAP_BANK_SHIFT                      8 /* inferred */
#define TE_TX_MIPMAP_BANK_MASK                       0xffu
#define TE_TX_MIPMAP_BANK_INPLACE                    (TE_TX_MIPMAP_BANK_MASK << TE_TX_MIPMAP_BANK_SHIFT)
#define TE_TX_MIPMAP_PAGE_SHIFT                      0 /* inferred */
#define TE_TX_MIPMAP_PAGE_MASK                       0xffu
#define TE_TX_MIPMAP_PAGE_INPLACE                    (TE_TX_MIPMAP_PAGE_MASK << TE_TX_MIPMAP_PAGE_SHIFT)

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

/* tl_spec: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_SPEC_OFFSET                            0xf1a2u /* established */

/* tl_addr: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_ADDR_OFFSET                            0xf1a3u /* inferred */

/* tl_mipmap: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_MIPMAP_OFFSET                          0xf1a4u /* inferred */

/* tl_border: w32, space te1_regs, reset unknown; driver readings */
#define TE_TL_BORDER_OFFSET                          0xf1a5u /* inferred */

#define TE_TRAM_REV_WORD0                            0x1c011401u /* established */
#define TE_TRAM_REV_WORD0_HIGH_HALF                  0x1c01u /* established */
#define TE_TRAM_REV_WORD0_LOW_HALF                   0x1401u /* established */
#define TE_TRAM_REV_WORD1                            0xc000400u /* established */
#define TE_TRAM_TEXTURE_BYTES                        0x400000u /* established */

#endif /* TE_GEN_H */
