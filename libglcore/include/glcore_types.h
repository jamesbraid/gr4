#ifndef __GLCORE_TYPES_H__
#define __GLCORE_TYPES_H__

/* Primitive integer and floating point types */
typedef signed char         s8;
typedef unsigned char       u8;
typedef signed short        s16;
typedef unsigned short      u16;
typedef signed int          s32;
typedef unsigned int        u32;
typedef signed long long    s64;
typedef unsigned long long  u64;
typedef float               f32;
typedef double              f64;
typedef unsigned int        size_t;

/* Standard OpenGL 1.1 types and enums */
#include "gl_enums.h"
typedef unsigned char       GLboolean;
typedef unsigned int        GLbitfield;
typedef signed char         GLbyte;
typedef short               GLshort;
typedef int                 GLint;
typedef int                 GLsizei;
typedef unsigned char       GLubyte;
typedef unsigned short      GLushort;
typedef unsigned int        GLuint;
typedef float               GLfloat;
typedef float               GLclampf;
typedef double              GLdouble;
typedef double              GLclampd;
typedef void                GLvoid;

/* Forward declarations */
struct __GLcontextRec;
typedef struct __GLcontextRec __GLcontext;
struct __GLattributeRec;
typedef struct __GLattributeRec __GLattribute;

/* Basic geometric structures */
typedef struct __GLcoordRec {
    GLfloat x, y, z, w;
} __GLcoord;

typedef struct __GLcolorRec {
    GLfloat r, g, b, a;
} __GLcolor;

struct __GLmatrixRec;
typedef struct __GLmatrixRec __GLmatrix;

struct __GLmatrixRec {
    GLfloat matrix[4][4];
    GLenum  matrixType;
    GLshort width, height;
    void (*xf2)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    void (*xf3)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    void (*xf4)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    char pad[4];
};

typedef struct __GLtransformRec {
    __GLmatrix matrix;
    __GLmatrix inverseTranspose;
    __GLmatrix mvp;
    GLuint sequence;
    GLboolean updateInverse;
    char pad[3];
    GLfloat rescaleFactor;
} __GLtransform;

typedef struct __GLvertexRec {
    GLuint                   flagBits;
    GLuint                   pad4;
    void                     (*validate)(struct __GLcontextRec *gc, struct __GLvertexRec *v);
    GLuint                   pad0C;
    __GLcoord                obj;
    __GLcoord                normal;
    __GLcoord                texture[1];
    char                     pad40[0x20];
    __GLcoord                eye;
    __GLcoord                clip;
    __GLcoord                window;
    __GLcolor                colors[2];
    char                     padB0[0x10];
} __GLvertex;

typedef struct __GLimportsRec {
    void *(*malloc)(__GLcontext *gc, size_t size);
    void *(*calloc)(__GLcontext *gc, size_t numElem, size_t elemSize);
    void *(*realloc)(__GLcontext *gc, void *oldAddr, size_t newSize);
    void (*free)(__GLcontext *gc, void *addr);
    void (*warning)(__GLcontext *gc, char *fmt);
    void (*fatal)(__GLcontext *gc, char *fmt);
    char *(*getenv)(__GLcontext *gc, const char *var);
    int (*atoi)(__GLcontext *gc, const char *str);
    int (*sprintf)(__GLcontext *gc, char *str, const char *fmt, ...);
    void *(*fopen)(__GLcontext *gc, const char *path, const char *mode);
    int (*fclose)(__GLcontext *gc, void *stream);
    int (*fprintf)(__GLcontext *gc, void *stream, const char *fmt, ...);
    void *(*getDrawablePrivate)(__GLcontext *gc);
    void *wscx;
    void *other;
    char pad[16];
} __GLimports;

typedef struct __GLexportsRec {
    GLboolean (*destroyContext)(__GLcontext *gc);
    GLboolean (*loseCurrent)(__GLcontext *gc);
    GLboolean (*makeCurrent)(__GLcontext *gc);
    GLboolean (*shareContext)(__GLcontext *gc, __GLcontext *gcShare);
    GLboolean (*copyContext)(__GLcontext *dst, const __GLcontext *src, GLuint mask);
    GLboolean (*forceCurrent)(__GLcontext *gc);
    GLboolean (*notifyResize)(__GLcontext *gc);
    void (*notifyDestroy)(__GLcontext *gc);
    void (*notifySwapBuffers)(__GLcontext *gc);
    void *(*dispatchExec)(__GLcontext *gc);
    void (*beginDispatchOverride)(__GLcontext *gc);
    void (*endDispatchOverride)(__GLcontext *gc);
    char pad[24];
} __GLexports;

typedef struct __GLcontextModesRec {
    GLint       visualID;
    GLboolean   rgbMode;
    GLboolean   colorIndexMode;
    GLboolean   doubleBufferMode;
    GLboolean   stereoMode;
    GLboolean   haveAccumBuffer;
    GLboolean   haveDepthBuffer;
    GLboolean   haveStencilBuffer;
    GLboolean   pad0;
    GLint       accumRedBits;
    GLint       accumGreenBits;
    GLint       accumBlueBits;
    GLint       accumAlphaBits;
    GLint       depthBits;
    GLint       stencilBits;
    GLint       indexBits;
    GLint       redBits;
    GLint       greenBits;
    GLint       blueBits;
    GLint       alphaBits;
    GLuint      redMask;
    GLuint      greenMask;
    GLuint      blueMask;
    GLuint      alphaMask;
    GLint       rgbBits;
    GLint       level;
    GLint       numAuxBuffers;
    GLint       maxAuxBuffers;
} __GLcontextModes;

typedef struct __GLbufferRec {
    __GLcontext         *gc;
    void                *drawableBuf;
    void                *other;
    void                (*resize)();
    void                (*makeCurrent)();
    void                (*loseCurrent)();
    void                (*free)();
} __GLbuffer;

typedef struct __GLcolorBufferRec __GLcolorBuffer;
struct __GLcolorBufferRec {
    __GLbuffer          buf;
    GLint               redMax, greenMax, blueMax;
    GLboolean           needColorFragmentOps;
    char                pad29[3];
    GLubyte             *alphaTestFuncTable;
    GLfloat             redScale, greenScale, blueScale;
    GLint               iRedScale, iGreenScale, iBlueScale;
    GLint               redShift, greenShift, blueShift, alphaShift;
    GLfloat             alphaScale;
    GLint               iAlphaScale;
    GLfloat             oneOverRedScale, oneOverGreenScale, oneOverBlueScale, oneOverAlphaScale;
    GLuint              sourceMask, destMask;
    void                (*pick)();
    GLint               (*getDisplayMasks)();
    void                (*store)();
    void                (*fetch)();
    void                (*readColor)();
    GLboolean           (*readSpan)();
    void                (*returnSpan)();
    void                *storeSpan;
    void                *storeStippledSpan;
    void                *storeLine;
    void                *storeStippledLine;
    void                *fetchSpan;
    void                *fetchStippledSpan;
    void                *fetchLine;
    void                *fetchStippledLine;
    char                padB4[36];
    void                (*clear)(__GLcolorBuffer *cfb);
};

typedef struct __GLstencilBufferRec {
    __GLbuffer          buf;
    char                pad1C[88];
    void                (*clear)(struct __GLstencilBufferRec *sfb, s64 mask, __GLcontext *gc);
} __GLstencilBuffer;

typedef struct __GLdepthBufferRec {
    __GLbuffer          buf;
    char                pad1C[48];
    GLuint              scale;
    char                pad50[40];
    void                (*clear)(struct __GLdepthBufferRec *dfb, s64 mask, __GLcontext *gc);
    char                pad7C[8];
} __GLdepthBuffer;

typedef struct __GLaccumBufferRec {
    __GLbuffer          buf;
    char                pad1C[80];
    void                (*clear)(struct __GLaccumBufferRec *afb);
} __GLaccumBuffer;

typedef struct __GLprocsRec {
    void (*validate)(__GLcontext *gc);
    void (*finish)(__GLcontext *gc);
    void (*flush)(__GLcontext *gc);
    void (*applyColor)(__GLcontext *gc);
    void *table[128];
    char pad[324];
} __GLprocs;

/* Base OpenGL Context structure (__GLcontextRec) */
struct __GLcontextRec {
    __GLimports             imports;            /* 0x0000 - 0x004B (76 bytes) */
    __GLexports             exports;            /* 0x004C - 0x0093 (72 bytes) */
    GLint                   gcState;            /* 0x0094 - 0x0097 (4 bytes) */
    char                    pad_state[2936];    /* 0x0098 - 0x0C0F (Attributes) */
    u32                     beginMode;          /* 0x0C10 - 0x0C13 (4 bytes) */
    GLenum                  renderMode;         /* 0x0C14 - 0x0C17 (4 bytes) */
    GLint                   error;              /* 0x0C18 - 0x0C1B (4 bytes) */
    __GLcontextModes        modes;              /* 0x0C1C - 0x0C73 (88 bytes) */
    __GLcontextModes        readModes;          /* 0x0C74 - 0x0CCB (88 bytes) */
    GLboolean               yInverted;          /* 0x0CCC (1 byte) */
    char                    pad_yinv[3];        /* 0x0CCD - 0x0CCF (3 bytes) */
    char                    pad_const[8380];    /* 0x0CD0 - 0x2DEF */
    GLuint                  validateMask;       /* 0x2DF0 (11760) */
    GLuint                  dirtyMask;          /* 0x2DF4 (11764) */
    __GLcolorBuffer         *drawBuffer;        /* 0x2DF8 (11768) */
    __GLcolorBuffer         *readBuffer;        /* 0x2DFC (11772) */
    char                    pad_proc[16];       /* 0x2E00 - 0x2E0F */
    void                    (*validate)(__GLcontext *gc); /* 0x2E10 (11792) */
    char                    pad_proc2[28];      /* 0x2E14 - 0x2E2F */
    __GLprocs               procs;              /* 0x2E30 (11824) */
    char                    pad_mid[19060];     /* 0x3184 - 0x77C3 */
    __GLcolorBuffer         *front;             /* 0x77C4 (30660) */
    __GLcolorBuffer         *back;              /* 0x77C8 (30664) */
    __GLcolorBuffer         frontBuffer;        /* 0x77CC (30668, 220 bytes) */
    __GLcolorBuffer         backBuffer;         /* 0x78A8 (30888, 220 bytes) */
    __GLcolorBuffer         *auxBuffer;         /* 0x7984 (31108) */
    __GLstencilBuffer       stencilBuffer;      /* 0x7988 (31112, 120 bytes) */
    __GLdepthBuffer         depthBuffer;        /* 0x7A00 (31232, 132 bytes) */
    __GLaccumBuffer         accumBuffer;        /* 0x7A84 (31364, 112 bytes) */
    char                    pad_bufend[28];     /* 0x7AF4 - 0x7B0F (28 bytes) */
    GLint                   fd;                 /* 0x7B10 (graphics device fd) */
    GLint                   boardIndex;         /* 0x7B14 (board index) */
    GLint                   zDepth;             /* 0x7B18 (bits of Z: 24) */
    GLint                   stencilDepth;       /* 0x7B1C (bits of stencil: 4) */
    char                    rendererString[40]; /* 0x7B20 - 0x7B47 (40 bytes) */
    GLuint                  swapInterval;       /* 0x7B48 (buffer swap interval) */
    u8                      hwFlags;            /* 0x7B4C */
    u8                      haveZ;              /* 0x7B4D */
    u8                      haveStencil;        /* 0x7B4E */
    u8                      fastMode;           /* 0x7B4F */
    void                    (*primitiveProcs[10])(__GLcontext *gc); /* 0x7B50 - 0x7B77 */
};

extern __GLcontext *__glCurrentContext;
extern u32 __glBeginMode;
void __glSetError(GLenum code);

#endif /* __GLCORE_TYPES_H__ */
