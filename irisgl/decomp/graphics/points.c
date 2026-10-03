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
    /* 0x003C */ char pad3C[0x9C];                  /* maybe part of currentNormal[0xE]? */
    /* 0x00D8 */ ? (*unkD8)(?);                     /* inferred */
    /* 0x00DC */ ? (*unkDC)();                      /* inferred */
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
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glVertex2i(s32, s32);                             /* extern */
? glVertex2s(s32, s32);                             /* extern */
? glVertex3fv(s32);                                 /* extern */
? glVertex3i(s32, s32, s32);                        /* extern */
? glVertex3iv(s32);                                 /* extern */
? glVertex3s(s16, s16, s16);                        /* extern */
extern ? sub_0f030000;

void gl_i_pnt2s(s32 arg0, s32 arg1) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex2s(arg0, arg1);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE8 = 0;
    subroutine_arg2->unk2CE4 = arg1;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE0 = arg0;
    glVertex3iv(subroutine_arg2 + 0x2CE0);
}

void gl_c_pnt2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4FD8 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6168, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4FD8 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_pnt2s(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex2s((s32) arg0->unk0, (s32) arg0->unk2);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE4 = (s32) arg0->unk2;
    subroutine_arg2->unk2CE8 = 0;
    glVertex3iv(subroutine_arg2 + 0x2CE0);
}

void gl_i_pnt2i(s32 arg0, s32 arg1) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex2i(arg0, arg1);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE8 = 0;
    subroutine_arg2->unk2CE4 = arg1;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE0 = arg0;
    glVertex3iv(subroutine_arg2 + 0x2CE0);
}

void gl_c_pnt2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4FD4 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6158, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4FD4 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_pnt2i(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex2i(arg0->unk0, arg0->unk4);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE4 = (s32) arg0->unk4;
    subroutine_arg2->unk2CE8 = 0;
    glVertex3iv(subroutine_arg2 + 0x2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24, 0x28, 0x2c], gap at: 0x10. */
void gl_i_pnt2(f32 arg0, f32 arg1) {
    gl_wstate *temp_t9;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_t9 = gl_wstatep;
    unksp10 = (s64) temp_t9;
    temp_t9->unkD8(0);
    glVertex2f(arg0, M2C_ERROR(/* Read from unset register $f14 */));
    temp_t9->unkDC();
    unksp18 = (s64) gl_wstatep;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    unksp18->unk2CE4 = arg1;
    unksp18->unk2CE0 = arg0;
    unksp18->unk2CDC = 1;
    unksp18->unk2CE8 = 0.0f;
    glVertex3fv(unksp18 + 0x2CE0);
}

void gl_c_pnt2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4FD0 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6148);
        saved_reg_gp->unk-4FD0 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_pnt2(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE0 = (f32) arg0->unk0;
    subroutine_arg2->unk2CDC = 1;
    subroutine_arg2->unk2CE8 = 0.0f;
    subroutine_arg2->unk2CE4 = (f32) arg0->unk4;
    glVertex3fv(subroutine_arg2 + 0x2CE0);
}

void gl_i_pnts(s16 arg0, s16 arg1, s16 arg2) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex3s(arg0, arg1, arg2);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CDC = 1;
    subroutine_arg2->unk2CE8 = (f32) arg2;
    subroutine_arg2->unk2CE4 = (f32) arg1;
    subroutine_arg2->unk2CE0 = (f32) arg0;
    glVertex3fv(subroutine_arg2 + 0x2CE0);
}

void gl_c_pnts(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4FCC == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x6138);
        saved_reg_gp->unk-4FCC = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_pnts(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex3s(arg0->unk0, arg0->unk2, arg0->unk4);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE0 = (f32) arg0->unk0;
    subroutine_arg2->unk2CE4 = (f32) arg0->unk2;
    subroutine_arg2->unk2CDC = 1;
    subroutine_arg2->unk2CE8 = (f32) arg0->unk4;
    glVertex3fv(subroutine_arg2 + 0x2CE0);
}

void gl_i_pnti(s32 arg0, s32 arg1, s32 arg2) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex3i(arg0, arg1, arg2);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE8 = arg2;
    subroutine_arg2->unk2CE4 = arg1;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE0 = arg0;
    glVertex3iv(subroutine_arg2 + 0x2CE0);
}

void gl_c_pnti(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4FC8 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x6128);
        saved_reg_gp->unk-4FC8 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_pnti(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex3i(arg0->unk0, arg0->unk4, arg0->unk8);
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg2->unk2CE4 = (s32) arg0->unk4;
    subroutine_arg2->unk2CE8 = (s32) arg0->unk8;
    subroutine_arg2->unk2CDC = 2;
    glVertex3iv(subroutine_arg2 + 0x2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x28, 0x2c, 0x30, 0x34], gap at: 0x18. */
void gl_i_pnt(f32 arg0, f32 arg1) {
    gl_wstate *temp_t9;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_t9 = gl_wstatep;
    unksp18 = (s64) temp_t9;
    temp_t9->unkD8(0);
    glVertex3f(arg0, arg1, M2C_ERROR(/* Read from unset register $a2 */));
    temp_t9->unkDC();
    unksp20 = (s64) gl_wstatep;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    unksp20->unk2CE8 = arg1;
    unksp20->unk2CE4 = arg1;
    unksp20->unk2CDC = 1;
    unksp20->unk2CE0 = arg0;
    glVertex3fv(unksp20 + 0x2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_pnt(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4FC4 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6118);
        saved_reg_gp->unk-4FC4 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_pnt(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(0);
    glVertex3f(arg0->unk0, arg0->unk8, M2C_ERROR(/* Read from unset register $a2 */));
    subroutine_arg0->unkDC();
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg2->unk2CE0 = (f32) arg0->unk0;
    subroutine_arg2->unk2CE4 = (f32) arg0->unk4;
    subroutine_arg2->unk2CDC = 1;
    subroutine_arg2->unk2CE8 = (f32) arg0->unk8;
    glVertex3fv(subroutine_arg2 + 0x2CE0);
}
