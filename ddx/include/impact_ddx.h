#ifndef __IMPACT_DDX_H__
#define __IMPACT_DDX_H__

/*
 * impact_ddx.h - SGI Impact / Mardi Gras X11 DDX Acceleration Structures
 * Reverse engineered from ddx/impactpc.so and IRIX 6.5 graphics subsystem.
 */

#include <stdint.h>
#include "../../MGRAS.h"
#include "../../HQ3.h"
#include "../../GE11.h"
#include "../../RE4.h"
#include "../../PP1.h"
#include "../../TE1.h"
#include "../../VC3.h"
#include "../../CMAP.h"

/* Primitive types */
typedef int32_t     Bool;
typedef uint32_t    Pixel;
typedef uint32_t    CARD32;
typedef uint16_t    CARD16;
typedef uint8_t     CARD8;
typedef int16_t     INT16;
typedef int32_t     INT32;

/* Forward declarations */
typedef struct _Screen      *ScreenPtr;
typedef struct _Window      *WindowPtr;
typedef struct _GCPrivate   *GCPtr;
typedef struct _Box         BoxRec, *BoxPtr;
typedef struct _Region      RegionRec, *RegionPtr;

struct _Box {
    INT16 x1, y1, x2, y2;
};

/* DDX Screen Private Structure (mgrasScreenRec) */
typedef struct mgrasScreenRec {
    /* 0x00: Hardware Register Base */
    mgras_hw                *hw;                /* 0x00: Memory-mapped hardware ASIC apertures */
    int32_t                 fd;                 /* 0x04: Kernel device file descriptor (/dev/gfx) */
    int32_t                 boardIndex;         /* 0x08: Graphics board index (0 for pipe 0) */
    int32_t                 boardRev;           /* 0x0C: Board revision */

    /* 0x10: Display Configuration */
    int32_t                 width;              /* 0x10: Screen width in pixels (e.g. 1280) */
    int32_t                 height;             /* 0x14: Screen height in pixels (e.g. 1024) */
    int32_t                 mmWidth;            /* 0x18: Width in millimeters */
    int32_t                 mmHeight;           /* 0x1C: Height in millimeters */
    int32_t                 depth;              /* 0x20: Screen depth (8, 12, or 24) */
    int32_t                 bitsPerPixel;       /* 0x24: Framebuffer bits per pixel */

    /* 0x28: Board Capabilities */
    uint32_t                numRE;              /* Number of RE4 chips: 1 or 2 */
    uint32_t                numTE;              /* Number of TE1 chips: 0, 1, or 2 */
    uint32_t                numPP;              /* Number of PP1 chips: 1 or 2 */
    uint32_t                tramSize;           /* TETRAM size in bytes (1MB or 4MB) */
    uint32_t                hasTbuf;            /* Texture buffer option installed */

    /* 0x3C: Shadowed ASIC State */
    uint32_t                re_mode1;           /* Current RE4 MODE1 */
    uint32_t                re_fillmode;        /* Current RE4 FILLMODE */
    uint32_t                re_viewport;        /* Current packed viewport */
    uint32_t                pp_fillmode;        /* Current PP1 FILLMODE (mgrasPP_Fillmode) */
    uint32_t                pp_rdfillmode;      /* Current PP1 RD_FILLMODE (mgrasPP_RdFillmode) */
    uint32_t                rd_dma_brkeven;     /* Read DMA break-even width */
    uint32_t                wr_dma_brkeven;     /* Write DMA break-even width */

    /* 0x58: Visual & Colormap Management */
    int32_t                 numVisuals;         /* Number of visual formats supported */
    void                    *allVisuals;        /* Pointer to mgrasAllVisuals array */
    void                    *allVisualPrivs;    /* Pointer to mgrasAllVisualPrivs */
    int32_t                 numHWCmaps;         /* Number of hardware colormaps (mgrasNumHWCmaps) */
    void                    *hwCmaps;           /* Hardware colormap structures */

    /* 0x6C: Cursor & DID Management */
    int32_t                 cursorOn;           /* Hardware cursor state (1=active) */
    int32_t                 cursorX;            /* Hardware cursor X position */
    int32_t                 cursorY;            /* Hardware cursor Y position */
    uint32_t                currentDID;         /* Active DID table index */
    uint32_t                didMode;            /* DID routing mode */

    /* 0x80: RRM Linkage */
    void                    *rrmPriv;           /* Rendering Resource Manager private */
    void                    *glxScreenPriv;     /* GLX screen private pointer */
} mgrasScreenRec, *mgrasScreenPtr;

/* DDX Window Private Structure (mgrasWinPriv) */
typedef struct mgrasWinPrivRec {
    int32_t                 wid;                /* Window ID (WID) assigned by RRM */
    int32_t                 cid;                /* Colormap ID (CID) assigned by RRM */
    uint32_t                did;                /* Display ID table index */
    uint32_t                planeMask;          /* Active planemask */
    int32_t                 doubleBuffer;       /* 1 if double buffered */
    int32_t                 readBuffer;         /* Read buffer selection */
    int32_t                 drawBuffer;         /* Draw buffer selection */
    BoxRec                  clipBox;            /* Current window bounds */
} mgrasWinPrivRec, *mgrasWinPrivPtr;

/* DDX GC Private Structure (mgrasGCPriv) */
typedef struct mgrasGCPrivRec {
    uint32_t                planemask;          /* Active planemask */
    uint32_t                fgColor;            /* Foreground color / pixel value */
    uint32_t                bgColor;            /* Background color / pixel value */
    uint32_t                alu;                /* ROP logic op (0..15) */
    uint32_t                fillStyle;          /* Fill style: Solid, Tiled, Stippled */
    void                    *ops;               /* Active acceleration ops pointer */
} mgrasGCPrivRec, *mgrasGCPrivPtr;

/* Function Prototypes */
Bool mgrasProbe(void);
Bool mgrasInit(int index, ScreenPtr pScreen, int argc, char **argv);
Bool mgrasCloseScreen(int index, ScreenPtr pScreen);
void mgrasResetProc(ScreenPtr pScreen);

/* 2D Drawing Acceleration */
void mgrasDrawSolidRects(void *pDrawable, void *pGC, int nBox, BoxPtr pBox);
void mgrasTileRects(void *pDrawable, void *pGC, int nBox, BoxPtr pBox);
void mgrasSolidSpans(void *pDrawable, void *pGC, int nPoints, void *pPoints, int *pWidths, int fSorted);
void mgrasPolyFillRectSolid(void *pDrawable, void *pGC, int nRects, void *pRects);
void mgrasLineSS(void *pDrawable, void *pGC, int mode, int npt, void *pptInit);
void mgrasLineSD(void *pDrawable, void *pGC, int mode, int npt, void *pptInit);

/* Pixel / Image Transfers */
void mgrasDrawImage(void *pDrawable, void *pGC, int depth, int x, int y, int w, int h, int leftPad, int format, char *pImage);
void mgrasReadImage(void *pDrawable, int x, int y, int w, int h, int format, unsigned long planeMask, char *pImage);
void mgrasCopyRect8(void *pSrc, void *pDst, void *pGC, BoxPtr pBox);
void mgrasCopyRect12(void *pSrc, void *pDst, void *pGC, BoxPtr pBox);
void mgrasCopyRect24(void *pSrc, void *pDst, void *pGC, BoxPtr pBox);
void mgrasCopyWindow(WindowPtr pWin, void *ptOldOrg, RegionPtr prgnSrc);

/* Colormaps & Video Controller */
void mgrasInstallNormalMap(void *pColormap);
void mgrasInstallOverlayMap(void *pColormap);
void mgrasInstall24Map(void *pColormap);
void mgrasStoreColors(void *pColormap, int nColors, void *pColors);
void mgrasChangeDIDCmap(void *pColormap);
void vc3LoadSRAM(mgras_hw *hw, uint32_t addr, uint32_t count, const uint32_t *data);
void mgrasBlankScreen(ScreenPtr pScreen, int on);

/* Hardware Cursor */
void mgrasCursorOn(ScreenPtr pScreen);
void mgrasDisplayCursor(ScreenPtr pScreen, void *pCursor);
void mgrasInstallCursor(ScreenPtr pScreen, void *pCursor);

#endif /* __IMPACT_DDX_H__ */
