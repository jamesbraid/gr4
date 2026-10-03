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
    /* 0x0100 */ char pad100[0xA40];                /* maybe part of screenState[0x291]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x358];               /* maybe part of currentVertex[0x36]? */
    /* 0x2E58 */ s8 unk2E58;                        /* inferred */
    /* 0x2E59 */ char pad2E59[3];                   /* maybe part of unk2E58[4]? */
    /* 0x2E5C */ f32 unk2E5C;                       /* inferred */
    /* 0x2E60 */ f32 unk2E60;                       /* inferred */
    /* 0x2E64 */ f32 unk2E64;                       /* inferred */
    /* 0x2E68 */ char pad2E68[0x80];                /* maybe part of unk2E64[0x21]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glRasterPos2f(f32);                               /* extern */
? glRasterPos2i(s32, s64);                          /* extern */
? glRasterPos2s(s16, s64);                          /* extern */
? glRasterPos3f(f32, f64);                          /* extern */
? glRasterPos3i(s32, s64, s64);                     /* extern */
? glRasterPos3s(s16, s64, s64);                     /* extern */
extern ? sub_0f020000;

void saveCmov(f32 arg0, f32 arg1) {
    gl_wstatep->unk2E64 = arg1;
    gl_wstatep->unk2E60 = arg1;
    gl_wstatep->unk2E5C = arg0;
    gl_wstatep->unk2E58 = 1;
}

void gl_i_cmov2s(s16 arg0, s64 arg1) {
    unksp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos2s(arg0, unksp10);
    gl_g_isobj((f32) arg0, 0.0f);
}

void gl_c_cmov2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-51F0 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7280, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-51F0 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_cmov2s(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos2s(arg0->unk0, (s64) arg0->unk2);
    gl_g_isobj((f32) arg0->unk0, 0.0f);
}

void gl_i_cmov2i(s32 arg0, s64 arg1) {
    unksp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos2i(arg0, unksp10);
    gl_g_isobj((f32) arg0, 0.0f);
}

void gl_c_cmov2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-51EC == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7290, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-51EC = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_cmov2i(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos2i(arg0->unk0, (s64) arg0->unk4);
    gl_g_isobj((f32) arg0->unk0, 0.0f);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c], gap at: 0x8. */
void gl_i_cmov2(f32 arg0, f64 arg1) {
    unksp8 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos2f(second half of f64);
    gl_g_isobj(second half of f64, 0.0f);
}

void gl_c_cmov2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-51E8 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x72A0);
        saved_reg_gp->unk-51E8 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_cmov2(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos2f(arg0->unk0);
    gl_g_isobj(arg0->unk0, 0.0f);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void gl_i_cmovs(s16 arg0, s64 arg1, s64 arg2) {
    unksp10 = arg2;
    unksp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos3s(arg0, unksp18, unksp10);
    gl_g_isobj((f32) arg0, (f32) unksp10);
}

void gl_c_cmovs(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-51E4 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f020000 + 0x72B0);
        saved_reg_gp->unk-51E4 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_cmovs(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos3s(arg0->unk0, (s64) arg0->unk2, (s64) arg0->unk4);
    gl_g_isobj((f32) arg0->unk0, (f32) arg0->unk4);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void gl_i_cmovi(s32 arg0, s64 arg1, s64 arg2) {
    unksp10 = arg2;
    unksp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos3i(arg0, unksp18, unksp10);
    gl_g_isobj((f32) arg0, (f32) unksp10);
}

void gl_c_cmovi(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-51E0 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f020000 + 0x72C0);
        saved_reg_gp->unk-51E0 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_cmovi(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos3i(arg0->unk0, (s64) arg0->unk4, (s64) arg0->unk8);
    gl_g_isobj((f32) arg0->unk0, (f32) arg0->unk8);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void gl_i_cmov(f32 arg0, f64 arg1) {
    unksp8 = arg1;
    unksp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos3f(second half of f64, unksp8);
    gl_g_isobj(second half of f64, (bitwise f32) unksp8);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_cmov(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-51DC == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x72D0);
        saved_reg_gp->unk-51DC = 1;
    }
    gl_compile(8, sp);
}

void gl_n_cmov(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRasterPos3f(arg0->unk0, (bitwise f64) arg0->unk8);
    gl_g_isobj(arg0->unk0, arg0->unk8);
}
