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
    /* 0x0100 */ char pad100[0x14];                 /* maybe part of screenState[6]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0xA28];                /* maybe part of unk114[0x28B]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glStencilFunc(s32, s64, s64);                     /* extern */
? glStencilMask(s64);                               /* extern */
? glStencilOp(s32, s32, s32);                       /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void stencilOpTranslate(s32 *arg0, s64 arg1) {
    switch (arg1) {                                 /* irregular */
    default:
        printf(&sub_0f020000 + 0x52D0, 3);
        break;
    case 5:
        *arg0 = 0x150A;
        break;
    case 0:
        *arg0 = 0x1E00;
        break;
    case 1:
        *arg0 = 0;
        break;
    case 2:
        *arg0 = 0x1E01;
        break;
    case 3:
        *arg0 = 0x1E02;
        break;
    case 4:
        *arg0 = 0x1E03;
        break;
    }
}

void __gl_stencil(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp8;
    s32 sp4;

    if (gl_wstatep->unk114->unk38 == 0x10) {
        sp10 = (s64) gl_wstatep;
        sp18 = arg2;
        sp20 = arg1;
        sp28 = M2C_ERROR(/* Read from unset register $a6 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = arg3;
        if (arg0 != 0) {
            stencilOpTranslate(sp, M2C_ERROR(/* Read from unset register $a4 */));
            stencilOpTranslate(&sp4, sp30);
            stencilOpTranslate(&sp8, sp28);
            glStencilOp(sp0, sp4, sp8);
            glStencilFunc(sp18 + 0x200, sp20, sp38);
            __iglooSetEnable(0xB90, 1);
            sp10->unkAE8 = 1;
        } else {
            __iglooSetEnable(0xB90, 0);
            sp10->unkAE8 = 1;
        }
    }
}

void gl_i_swritemask(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    glStencilMask(arg0);
}

void gl_c_swritemask(s32 arg0) {
    if (saved_reg_gp->unk-4DF0 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x55F8);
        saved_reg_gp->unk-4DF0 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_swritemask(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glStencilMask((s64) *arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x40, 0x44], gap at: 0x10. */
void gl_i_stencil(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    if (gl_inMoveDraw != 0) {
        unksp38 = arg3;
        unksp30 = arg2;
        unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
        unksp20 = arg1;
        unksp18 = M2C_ERROR(/* Read from unset register $a6 */);
        unksp10 = M2C_ERROR(/* Read from unset register $a5 */);
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_stencil(arg0, arg1, arg2, arg3);
}

void gl_c_stencil(s32 arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;

    if (saved_reg_gp->unk-4DEC == 0) {
        sp68 = arg1;
        sp60 = (s64) arg2;
        sp58 = (s64) arg3;
        sp50 = M2C_ERROR(/* Read from unset register $a4 */);
        sp48 = M2C_ERROR(/* Read from unset register $a5 */);
        sp40 = M2C_ERROR(/* Read from unset register $a6 */);
        gl_intrptab_insert(&sub_0f030000 - 0x55E8);
        saved_reg_gp->unk-4DEC = 1;
    }
    gl_compile(0x10, sp, arg2, arg3, arg3, M2C_ERROR(/* Read from unset register $a4 */), M2C_ERROR(/* Read from unset register $a5 */), M2C_ERROR(/* Read from unset register $a6 */));
}

void gl_n_stencil(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_stencil((s64) arg0->unk0, (s64) arg0->unk4, (s64) arg0->unk8, (s64) arg0->unkC);
}
