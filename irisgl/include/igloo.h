#ifndef __IGLOO_H__
#define __IGLOO_H__

#include "igloo_types.h"

/*
 * ============================================================================
 * IRISGL / IGLOO CONSTANTS & TOKENS
 * ============================================================================
 */

/* Standard Colors */
#define BLACK               0
#define RED                 1
#define GREEN               2
#define YELLOW              3
#define BLUE                4
#define MAGENTA             5
#define CYAN                6
#define WHITE               7

/* Display Modes */
#define NORMALDRAW          0
#define PUPDRAW             1
#define OVERDRAW            2
#define UNDERDRAW           3
#define CURSORDRAW          4

/* Buffering Modes */
#define SINGLEBUFFER        0
#define DOUBLEBUFFER        1

/* Color Modes */
#define CMAPMODE            0
#define RGBMODE             1

/* Matrix Modes */
#define MSINGLE             0
#define MPROJECTION         1
#define MVIEWING            2
#define MTEXTURE            3

/* Shading Modes */
#define FLAT                0
#define GOURAUD             1

/* Z-Buffer Comparison Functions */
#define ZF_NEVER            0
#define ZF_LESS             1
#define ZF_EQUAL            2
#define ZF_LEQUAL           3
#define ZF_GREATER          4
#define ZF_NOTEQUAL         5
#define ZF_GEQUAL           6
#define ZF_ALWAYS           7

/* Blend Functions */
#define BF_ZERO             0
#define BF_ONE              1
#define BF_DC               2
#define BF_MDC              3
#define BF_SA               4
#define BF_MSA              5
#define BF_DA               6
#define BF_MDA              7
#define BF_MIN_CA           8
#define BF_MIN_SA_MDA       9
#define BF_SC               10
#define BF_MSC              11

/* Logic Ops */
#define LO_ZERO             0
#define LO_AND              1
#define LO_ANDR             2
#define LO_SRC              3
#define LO_ANDI             4
#define LO_NOP              5
#define LO_XOR              6
#define LO_OR               7
#define LO_NOR              8
#define LO_XNOR             9
#define LO_INVERT           10
#define LO_ORR              11
#define LO_NSRC             12
#define LO_ORI              13
#define LO_NAND             14
#define LO_ONE              15

/* Lighting & Material */
#define LMNULL              0.0f
#define DEFMATERIAL         0
#define DEFLIGHT            1
#define DEFLMODEL           2
#define LCOLOR              0x1001
#define MATERIAL            0x1002
#define BACKMATERIAL        0x1003

/* Device Query Tokens (getgdesc) */
#define GD_XPMAX            0
#define GD_YPMAX            1
#define GD_XMMAX            2
#define GD_YMMAX            3
#define GD_ZMIN             4
#define GD_ZMAX             5
#define GD_BITS_NORM_SNG_RGB 6
#define GD_BITS_NORM_DBL_RGB 7
#define GD_BITS_NORM_SNG_CMODE 8
#define GD_BITS_NORM_DBL_CMODE 9
#define GD_BITS_OVERLAY     10
#define GD_BITS_UNDERLAY    11
#define GD_BITS_PUP         12
#define GD_BITS_ZBUFFER     13
#define GD_BITS_STENCIL     14

/* SGI Internal Igloo SGIX Tokens (passed to libGL / MGRAS) */
#define IGLOO_FULLSCREEN_SGIX       0x819E
#define IGLOO_VIEWPORT_OFFSET_SGIX  0x819F
#define IGLOO_SWAPTMESH_SGIX        0x81A0
#define IGLOO_COLORNORMAL_SGIX      0x81A1
#define IGLOO_IRISGL_MODE_SGIX      0x81A2
#define IGLOO_LMC_COLOR_SGIX        0x81A3
#define IGLOO_TMESHMODE_SGIX        0x81A4

/*
 * ============================================================================
 * IGLOO INTERNAL STATE STRUCTURES
 * ============================================================================
 */

/* Matrix Stack */
typedef struct {
    int         depth;
    int         max_depth;
    Matrix      stack[32];
} IglooMatrixStack;

/* Window State (gl_wstate) - Total size 12,160 bytes (0x2F80) */
typedef struct __gl_wstateRec {
    struct __gl_wstateRec *next;        /* 0x0000: Next context */
    u32                 flags;          /* 0x0004: State flags */
    GLint               drawMode;       /* 0x0008: NORMALDRAW, PUPDRAW, etc. */
    GLint               colorMode;      /* 0x000C: CMAPMODE or RGBMODE */
    GLint               bufferMode;     /* 0x0010: SINGLEBUFFER or DOUBLEBUFFER */
    GLint               shadingModel;   /* 0x0014: FLAT or GOURAUD */
    GLint               zbuffer;        /* 0x0018: Z-buffer enabled flag */
    GLint               zfunction;      /* 0x001C: ZF_LEQUAL, etc. */
    GLint               blendSrc;       /* 0x0020: Blend source */
    GLint               blendDst;       /* 0x0024: Blend destination */
    Colorindex          currentColor;   /* 0x0028: Current CI */
    RGBvalue            currentRGB;     /* 0x002C: Current RGB */
    f32                 currentNormal[3];/* 0x0030: Normal x, y, z */
    char                pad_header[164];/* 0x003C - 0x00DF */
    u32                 active;         /* 0x00E0: Context active / bound */
    u32                 valid;          /* 0x00E4: Context valid flag (1) */
    char                pad_win[4];     /* 0x00E8 */
    Window              xwindow;        /* 0x00EC: X11 Window ID */
    GLXContext          glxcx;          /* 0x00F0: GLX Context */
    Display             *display;       /* 0x00F4: X11 Display */
    u32                 screen;         /* 0x00F8: Screen number */
    void                *screenState;   /* 0x00FC: Pointer to gl_sstate */
    char                pad_mid[2624];  /* 0x0100 - 0x0B3F */
    IglooMatrixStack    modelviewStack; /* Modelview matrix stack */
    IglooMatrixStack    projStack;      /* Projection matrix stack */
    char                pad_matrices[4000];
    Coord               currentVertex[4];/* 0x2CD4 - 0x2CE4: Current vertex */
    char                pad_tail[1000];
} gl_wstate;

/* Shared / Screen State (gl_sstate) */
typedef struct __gl_sstateRec {
    Display             *display;       /* 0x0000: X Display */
    int                 screen;         /* 0x0004: Screen index */
    Window              root;           /* 0x0008: Root window */
    Colormap            colormap;       /* 0x000C: Colormap */
    Visual              *visual;        /* 0x0010: Visual */
    char                pad[252];       /* 0x0014 - 0x010F */
    s32                 graphicsType;   /* 0x0110: Hardware type (2=GR2, 4=MGRAS, etc.) */
} gl_sstate;

/* Global state pointers defined in libgl.so */
extern gl_wstate *gl_wstatep;
extern gl_sstate *gl_sstatep;
extern s32 gl_inMoveDraw;
extern s32 gl_iglooGouraudCIDepthCue;
extern s32 gl_iglooUseTexObj;

#endif /* __IGLOO_H__ */
