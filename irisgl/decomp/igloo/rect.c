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
    /* 0x00DC */ char padDC[4];
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

? glVertex2i(s64, s64);                             /* extern */
? glVertex2s(s64, s64);                             /* extern */
extern ? sub_0f030000;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c, 0x30, 0x34], gap at: 0x8. */
void gl_i_rect(f32 arg0, f64 arg1, f64 arg3) {
    unksp8 = arg3;
    unksp10 = arg1;
    unksp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    unksp20 = (s64) &gl_wstatep->flags;
    gl_wstatep->unkD8(2);
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    unksp20->unkD8();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x40, 0x44], gap at: 0x30. */
void gl_c_rect(f32 arg0, f64 arg1, f32 arg3) {
    if (saved_reg_gp->unk-4F78 == 0) {
        unksp38 = arg1;
        unksp30 = arg1;
        unksp28 = (bitwise f64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5FE8);
        saved_reg_gp->unk-4F78 = 1;
    }
    gl_compile(0xA, sp, arg3);
}

void gl_n_rect(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    subroutine_arg0->unkD8();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c, 0x30, 0x34], gap at: 0x8. */
void gl_i_sbox(f32 arg0, f64 arg1, f64 arg3) {
    unksp8 = arg3;
    unksp10 = arg1;
    unksp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    unksp20 = (s64) &gl_wstatep->flags;
    gl_wstatep->unkD8(2);
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(second half of f64, M2C_ERROR(/* Read from unset register $f14 */));
    unksp20->unkD8();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x40, 0x44], gap at: 0x30. */
void gl_c_sbox(f32 arg0, f64 arg1, f32 arg3) {
    if (saved_reg_gp->unk-4F74 == 0) {
        unksp38 = arg1;
        unksp30 = arg1;
        unksp28 = (bitwise f64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5FD8);
        saved_reg_gp->unk-4F74 = 1;
    }
    gl_compile(0xA, sp, arg3);
}

void gl_n_sbox(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    subroutine_arg0->unkD8();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
void gl_i_recti(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    unksp18 = arg3;
    unksp20 = arg2;
    unksp28 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2i(arg0, unksp28);
    glVertex2i(unksp20, unksp28);
    glVertex2i(unksp20, unksp18);
    glVertex2i(arg0, unksp18);
    subroutine_arg0->unkD8();
}

void gl_c_recti(s32 arg0, s64 arg1, f32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4F70 == 0) {
        sp40 = arg1;
        sp38 = (bitwise s64) arg2;
        sp30 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5FC8);
        saved_reg_gp->unk-4F70 = 1;
    }
    gl_compile(0xA, sp, arg2, arg3, arg3);
}

void gl_n_recti(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unkC);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unkC);
    subroutine_arg0->unkD8();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
void gl_i_sboxi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    unksp18 = arg3;
    unksp20 = arg2;
    unksp28 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2i(arg0, unksp28);
    glVertex2i(unksp20, unksp28);
    glVertex2i(unksp20, unksp18);
    glVertex2i(arg0, unksp18);
    subroutine_arg0->unkD8();
}

void gl_c_sboxi(s32 arg0, s64 arg1, f32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4F6C == 0) {
        sp40 = arg1;
        sp38 = (bitwise s64) arg2;
        sp30 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5FB8);
        saved_reg_gp->unk-4F6C = 1;
    }
    gl_compile(0xA, sp, arg2, arg3, arg3);
}

void gl_n_sboxi(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unkC);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unkC);
    subroutine_arg0->unkD8();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
void gl_i_rects(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    unksp18 = arg3;
    unksp20 = arg2;
    unksp28 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2s(arg0, unksp28);
    glVertex2s(unksp20, unksp28);
    glVertex2s(unksp20, unksp18);
    glVertex2s(arg0, unksp18);
    subroutine_arg0->unkD8();
}

void gl_c_rects(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4F68 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        sp28 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5FA8);
        saved_reg_gp->unk-4F68 = 1;
    }
    gl_compile(6, sp, (bitwise f32) arg2, (s32) arg3);
}

void gl_n_rects(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk6);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk6);
    subroutine_arg0->unkD8();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
void gl_i_sboxs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    unksp18 = arg3;
    unksp20 = arg2;
    unksp28 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2s(arg0, unksp28);
    glVertex2s(unksp20, unksp28);
    glVertex2s(unksp20, unksp18);
    glVertex2s(arg0, unksp18);
    subroutine_arg0->unkD8();
}

void gl_c_sboxs(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4F64 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        sp28 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5F98);
        saved_reg_gp->unk-4F64 = 1;
    }
    gl_compile(6, sp, (bitwise f32) arg2, (s32) arg3);
}

void gl_n_sboxs(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(2);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk6);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk6);
    subroutine_arg0->unkD8();
}

void gl_i_rectf(f32 arg0, f32 arg1, f32 arg3) {
    s32 temp_a1;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRectf(arg0, arg1, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
    glBegin(2U);
    glVertex2f(arg0, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg1, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg1, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0, M2C_ERROR(/* Read from unset register $f14 */));
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a1 = temp_a2->unk30;
        switch (temp_a1) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x40, 0x44], gap at: 0x30. */
void gl_c_rectf(f32 arg0, f64 arg1, f32 arg3) {
    if (saved_reg_gp->unk-4F60 == 0) {
        unksp38 = arg1;
        unksp30 = arg1;
        unksp28 = (bitwise f64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5F88);
        saved_reg_gp->unk-4F60 = 1;
    }
    gl_compile(0xA, sp, arg3);
}

void gl_n_rectf(void *arg0) {
    s32 temp_a0;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRectf(arg0->unk0, arg0->unk8, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
    glBegin(2U);
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a0 = temp_a2->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_i_sboxf(f32 arg0, f32 arg1, f32 arg3) {
    s32 temp_a1;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRectf(arg0, arg1, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
    glBegin(2U);
    glVertex2f(arg0, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg1, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg1, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0, M2C_ERROR(/* Read from unset register $f14 */));
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a1 = temp_a2->unk30;
        switch (temp_a1) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x40, 0x44], gap at: 0x30. */
void gl_c_sboxf(f32 arg0, f64 arg1, f32 arg3) {
    if (saved_reg_gp->unk-4F5C == 0) {
        unksp38 = arg1;
        unksp30 = arg1;
        unksp28 = (bitwise f64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5F78);
        saved_reg_gp->unk-4F5C = 1;
    }
    gl_compile(0xA, sp, arg3);
}

void gl_n_sboxf(void *arg0) {
    s32 temp_a0;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRectf(arg0->unk0, arg0->unk8, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
    glBegin(2U);
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk8, M2C_ERROR(/* Read from unset register $f14 */));
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a0 = temp_a2->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_i_rectfi(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a0;
    void *temp_a1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRecti(arg0, arg1, arg2, arg3);
    glBegin(2U);
    glVertex2i((s64) arg0, (s64) arg1);
    glVertex2i((s64) arg2, (s64) arg1);
    glVertex2i((s64) arg2, (s64) arg3);
    glVertex2i((s64) arg0, (s64) arg3);
    glEnd();
    temp_a1 = *(void **)0x1004;
    if (temp_a1 != NULL) {
        temp_a0 = temp_a1->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_c_rectfi(s32 arg0, s64 arg1, f32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4F58 == 0) {
        sp40 = arg1;
        sp38 = (bitwise s64) arg2;
        sp30 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5F68);
        saved_reg_gp->unk-4F58 = 1;
    }
    gl_compile(0xA, sp, arg2, arg3, arg3);
}

void gl_n_rectfi(void *arg0) {
    s32 temp_a0;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRecti(arg0->unk0, arg0->unk4, arg0->unk8, arg0->unkC);
    glBegin(2U);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unkC);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unkC);
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a0 = temp_a2->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_i_sboxfi(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a0;
    void *temp_a1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRecti(arg0, arg1, arg2, arg3);
    glBegin(2U);
    glVertex2i((s64) arg0, (s64) arg1);
    glVertex2i((s64) arg2, (s64) arg1);
    glVertex2i((s64) arg2, (s64) arg3);
    glVertex2i((s64) arg0, (s64) arg3);
    glEnd();
    temp_a1 = *(void **)0x1004;
    if (temp_a1 != NULL) {
        temp_a0 = temp_a1->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_c_sboxfi(s32 arg0, s64 arg1, f32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4F54 == 0) {
        sp40 = arg1;
        sp38 = (bitwise s64) arg2;
        sp30 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5F58);
        saved_reg_gp->unk-4F54 = 1;
    }
    gl_compile(0xA, sp, arg2, arg3, arg3);
}

void gl_n_sboxfi(void *arg0) {
    s32 temp_a0;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRecti(arg0->unk0, arg0->unk4, arg0->unk8, arg0->unkC);
    glBegin(2U);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unk4);
    glVertex2i((s64) arg0->unk8, (s64) arg0->unkC);
    glVertex2i((s64) arg0->unk0, (s64) arg0->unkC);
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a0 = temp_a2->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_i_rectfs(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    s32 temp_a0;
    void *temp_a1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRects(arg0, arg1, arg2, arg3);
    glBegin(2U);
    glVertex2s((s64) arg0, (s64) arg1);
    glVertex2s((s64) arg2, (s64) arg1);
    glVertex2s((s64) arg2, (s64) arg3);
    glVertex2s((s64) arg0, (s64) arg3);
    glEnd();
    temp_a1 = *(void **)0x1004;
    if (temp_a1 != NULL) {
        temp_a0 = temp_a1->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_c_rectfs(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4F50 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        sp28 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5F48);
        saved_reg_gp->unk-4F50 = 1;
    }
    gl_compile(6, sp, (bitwise f32) arg2, (s32) arg3);
}

void gl_n_rectfs(void *arg0) {
    s32 temp_a0;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRects(arg0->unk0, arg0->unk2, arg0->unk4, arg0->unk6);
    glBegin(2U);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk6);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk6);
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a0 = temp_a2->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_i_sboxfs(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    s32 temp_a0;
    void *temp_a1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRects(arg0, arg1, arg2, arg3);
    glBegin(2U);
    glVertex2s((s64) arg0, (s64) arg1);
    glVertex2s((s64) arg2, (s64) arg1);
    glVertex2s((s64) arg2, (s64) arg3);
    glVertex2s((s64) arg0, (s64) arg3);
    glEnd();
    temp_a1 = *(void **)0x1004;
    if (temp_a1 != NULL) {
        temp_a0 = temp_a1->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}

void gl_c_sboxfs(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4F4C == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        sp28 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5F38);
        saved_reg_gp->unk-4F4C = 1;
    }
    gl_compile(6, sp, (bitwise f32) arg2, (s32) arg3);
}

void gl_n_sboxfs(void *arg0) {
    s32 temp_a0;
    void *temp_a2;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glRects(arg0->unk0, arg0->unk2, arg0->unk4, arg0->unk6);
    glBegin(2U);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk2);
    glVertex2s((s64) arg0->unk4, (s64) arg0->unk6);
    glVertex2s((s64) arg0->unk0, (s64) arg0->unk6);
    glEnd();
    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        temp_a0 = temp_a2->unk30;
        switch (temp_a0) {                          /* irregular */
        case 0x400:
        case 0x401:
            /* fallthrough */
        case 0x404:
        case 0x408:
            glFlush();
            break;
        }
    }
}
