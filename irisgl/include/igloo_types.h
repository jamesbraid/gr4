#ifndef __IGLOO_TYPES_H__
#define __IGLOO_TYPES_H__

/* Standard integer types */
typedef signed char         s8;
typedef unsigned char       u8;
typedef short               s16;
typedef unsigned short      u16;
typedef int                 s32;
typedef unsigned int        u32;
typedef long long           s64;
typedef unsigned long long  u64;
typedef float               f32;
typedef double              f64;

/* Authentic IrisGL Primitive Types */
typedef char                Boolean;
typedef short               Colorindex;
typedef unsigned long       RGBvalue;
typedef float               Coord;
typedef long                Icoord;
typedef short               Scoord;
typedef short               Screencoord;
typedef float               Matrix[4][4];
typedef unsigned short      Angle;
typedef long                Object;
typedef long                Tag;
typedef unsigned short      Pattern[16];
typedef unsigned short      Linestyle;
typedef unsigned long       Device;

/* X11 & GLX Stub Types */
typedef void *              Display;
typedef unsigned long       Window;
typedef unsigned long       Colormap;
typedef unsigned long       VisualID;
typedef unsigned long       Pixmap;
typedef void *              Visual;
typedef void *              GLXContext;
typedef unsigned long       GLXDrawable;

typedef struct {
    Visual *visual;
    VisualID visualid;
    int screen;
    int depth;
    int class;
    unsigned long red_mask;
    unsigned long green_mask;
    unsigned long blue_mask;
    int colormap_size;
    int bits_per_rgb;
} XVisualInfo;

/* OpenGL Standard Types */
typedef unsigned int        GLenum;
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

#endif /* __IGLOO_TYPES_H__ */
