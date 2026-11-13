/* generated from devices/pp1/registers.toml by defs-gen - do not edit, change the source */
/* display read buffer registers of the Impact graphics */
#ifndef PP_GEN_H
#define PP_GEN_H

#include <stdint.h>


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
#define PP_DRB_SIZE_XTILES36_SHIFT                   2 /* established */
#define PP_DRB_SIZE_XTILES36_MASK                    0xfu
#define PP_DRB_SIZE_XTILES36_INPLACE                 (PP_DRB_SIZE_XTILES36_MASK << PP_DRB_SIZE_XTILES36_SHIFT)
#define PP_DRB_SIZE_XTILES9_SHIFT                    0 /* established */
#define PP_DRB_SIZE_XTILES9_MASK                     0x3u
#define PP_DRB_SIZE_XTILES9_INPLACE                  (PP_DRB_SIZE_XTILES9_MASK << PP_DRB_SIZE_XTILES9_SHIFT)

#define PP_DRB_POINTERS_COMMAND_WORD                 0x196d04u /* established */
#define PP_DRB_SIZE_COMMAND_WORD                     0x196e04u /* established */

#endif /* PP_GEN_H */
