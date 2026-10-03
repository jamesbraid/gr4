typedef struct __gl_wstateRec {
    /* 0x0000 */ gl_wstate *next;
    /* 0x0004 */ u32 flags;
    /* 0x0008 */ s32 drawMode;
    /* 0x000C */ s32 colorMode;
    /* 0x0010 */ s32 bufferMode;
    /* 0x0014 */ s32 shadingModel;
    /* 0x0018 */ s32 zbuffer;
    /* 0x001C */ s32 zfunction;
    /* 0x0020 */ s32 blendSrc;
    /* 0x0024 */ s32 blendDst;
    /* 0x0028 */ s16 currentColor;
    /* 0x002A */ char pad2A[2];
    /* 0x002C */ u32 currentRGB;
    /* 0x0030 */ f32 currentNormal[3];
    /* 0x003C */ char pad3C[0xA4];                  /* maybe part of currentNormal[0xE]? */
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ char pad100[0xA10];                /* maybe part of screenState[0x285]? */
    /* 0x0B10 */ ? unkB10;                          /* inferred */
    /* 0x0B10 */ char padB10[0x30];
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glBitmap(?, ?);                                   /* extern */
? glRasterPos4f(f32, f32);                          /* extern */

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x28, 0x2c, 0x30, 0x34], gap at: 0x20. */
void __iglooWindowRasterPos(f32 arg0, f64 arg1) {
    f32 sp8;

    unksp20 = arg1;
    __iglooGetBooleanv(0xB08, sp);
    if (subroutine_arg0 != 0) {
        __iglooGetFloatv(0xB07, &sp8);
        glBitmap(0, 0);
    } else {
        glLoadRasterPosSGIXXX(second half of f64, 0.0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x90, 0x94, 0xb0, 0xb4, 0xc0, 0xc4, 0xc8, 0xcc], gap at: 0x98. */
void glLoadRasterPosSGIXXX(f64 arg0, f64 arg1, f64 arg3) {
    ? sp50;
    ? sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    ? *temp_s8;

    unkspA8 = arg3;
    unksp98 = arg1;
    unkspA0 = arg0;
    temp_s8 = &gl_wstatep->unkB10;
    unkspB8 = __iglooGetMatrixMode();
    __iglooGetViewport(sp, &sp4, &sp8, &spC);
    __iglooGetMatrix(0xBA6, &sp10);
    __iglooGetMatrix(0xBA7, &sp50);
    __iglooMatrixMode(0x1700);
    __iglooLoadIdentity();
    __iglooMatrixMode(0x1701);
    __iglooLoadIdentity();
    __iglooViewport(0, 0, 2, 2);
    __iglooDepthRange(0.0);
    glRasterPos4f(-(bitwise f32) unkspA8, (((f32) arg1 * 2.0f) + -1.0f) * (bitwise f32) unkspA8);
    glBitmap(0, 0);
    __iglooDepthRange(temp_s8->unk18);
    __iglooLoadMatrix(&sp50);
    __iglooMatrixMode(0x1700);
    __iglooLoadMatrix(&sp10);
    __iglooMatrixMode(unkspB8);
    __iglooViewport(subroutine_arg0, sp4, sp8, spC);
}
