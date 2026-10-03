#ifndef __GLCORE_MGRAS_H__
#define __GLCORE_MGRAS_H__

/*
 * glcore_mgras.h - SGI Impact / Mardi Gras (MGRAS) OpenGL Driver Context & Structures
 * Authoritative header for Silicon Graphics Impact Graphics subsystem.
 */

#include "glcore_types.h"
#include "../../MGRAS.h"
#include "../../HQ3.h"
#include "../../GE11.h"
#include "../../RE4.h"
#include "../../PP1.h"
#include "../../TE1.h"
#include "../../VC3.h"
#include "../../CMAP.h"

/* MGRAS Board Capabilities */
typedef struct __glMgrasCapsRec {
    u32 num_re;             /* Number of RE4 chips: 1 (Solid Impact) or 2 (High/Max) */
    u32 num_te;             /* Number of TE1 chips: 0 (Solid), 1 (High), 2 (Max) */
    u32 num_pp;             /* Number of PP1 chips: 1 or 2 */
    u32 tram_size;          /* TETRAM size in bytes: 1MB or 4MB */
    u32 has_tbuf;           /* Texture buffer installed (TRAM option) */
    u32 dram_type;          /* Framebuffer RDRAM type and channel count */
    u32 board_rev;          /* Board revision from HQ3 config */
    u32 dcb_mode;           /* DCB bus mode */
} __glMgrasCaps;

/* MGRAS Driver Private Context (__glMgrasContext: 47688 bytes = 0xBA48) */
typedef struct __glMgrasContextRec {
    __GLcontext         gc;                 /* 0x0000 - 0x7B77 (Base OpenGL Context) */
    char                pad_base[0x1B18];   /* 0x7B78 - 0x968F (Driver Private State) */

    /* 0x9690: MGRAS Hardware Register Aperture */
    mgras_hw            *hw;                /* 0x9690: Pointer to memory-mapped ASIC apertures */
    __glMgrasCaps       caps;               /* 0x9694: Board capability flags */

    /* 0x96B4: FIFO & Command Queue State */
    u32                 cfifo_hw_free;      /* Current free words in HQ3 CFIFO */
    u32                 dfifo_hw_free;      /* Current free words in HQ3 DFIFO */
    u32                 dcb_ctrl;           /* DCB bus control shadow */

    /* 0x96C0: RE4 Rasterizer Mode Registers */
    u32                 re_mode1;           /* 0x96C0: RE4 MODE1 shadow */
    u32                 re_mode2;           /* 0x96C4: RE4 MODE2 shadow */
    u32                 re_fillmode;        /* 0x96C8: RE4 FILLMODE shadow */
    u32                 re_viewport;        /* 0x96CC: RE4 packed viewport (X << 16 | (X + W - 1)) */
    u32                 re_viewport_y;      /* 0x96D0: RE4 packed viewport Y */
    u32                 re_ir_opcode;       /* 0x96D4: Iteration request opcode */
    char                pad_re[0xC4];       /* 0x96D8 - 0x979B */

    /* 0x979C: Scissor / Screen Window Limits */
    u32                 scissor_xmax;       /* 0x979C: Default 1279 */
    u32                 scissor_ymax;       /* 0x97A0: Default 1023 */
    u32                 scissor_boxes[8];   /* 0x97A4 - 0x97C3: 4 hardware scissor boxes */

    /* 0x97C4 - 0xBA47: Remaining Context Tail */
    char                pad_tail[0x2284];   /* 0x97C4 - 0xBA47 */
} __glMgrasContext;

#endif /* __GLCORE_MGRAS_H__ */
