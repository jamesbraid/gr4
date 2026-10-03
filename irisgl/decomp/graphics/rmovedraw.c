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
    /* 0x2B00 */ char pad2B00[0x1DC];               /* maybe part of currentVertex[0x1E]? */
    /* 0x2CDC */ s32 unk2CDC;                       /* inferred */
    /* 0x2CE0 */ s32 unk2CE0;                       /* inferred */
    /* 0x2CE4 */ s32 unk2CE4;                       /* inferred */
    /* 0x2CE8 */ f32 unk2CE8;                       /* inferred */
    /* 0x2CEC */ char pad2CEC[0x1FC];               /* maybe part of unk2CE8[0x80]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glVertex3fv(s32 *);                               /* extern */
? glVertex3iv(s32 *, s32);                          /* extern */
extern ? sub_0f030000;

void gl_i_rmv2s(s32 arg0, s64 arg1) {
    gl_wstate *temp_s7;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    if (temp_s7->unk2CDC != 1) {
        var_v1 = temp_s7->unk2CE0 + arg0;
        temp_s7->unk2CE4 += subroutine_arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
    }
    temp_s7->unk2CE0 = var_v1;
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0);
}

void gl_c_rmv2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4F48 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5EF8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4F48 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_rmv2s(void *arg0) {
    gl_wstate *temp_s7;
    s16 temp_a0;
    s32 var_a1;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        var_a1 = temp_s7->unk2CE4;
        var_v1 = arg0->unk2 + var_a1;
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        var_a1 = (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk2);
        temp_s7->unk2CE8 = (bitwise f32) var_a1;
    }
    temp_s7->unk2CE4 = var_v1;
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, var_a1);
}

void gl_i_rmv2i(s32 arg0, s64 arg1) {
    gl_wstate *temp_s7;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    if (temp_s7->unk2CDC != 1) {
        var_v1 = temp_s7->unk2CE0 + arg0;
        temp_s7->unk2CE4 += subroutine_arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
    }
    temp_s7->unk2CE0 = var_v1;
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0);
}

void gl_c_rmv2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4F44 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5EE8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4F44 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_rmv2i(void *arg0) {
    gl_wstate *temp_s7;
    s32 temp_a0;
    s32 var_a1;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        var_a1 = temp_s7->unk2CE4;
        var_v1 = arg0->unk4 + var_a1;
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        var_a1 = (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk4);
        temp_s7->unk2CE8 = (bitwise f32) var_a1;
    }
    temp_s7->unk2CE4 = var_v1;
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, var_a1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c], gap at: 0x8. */
void gl_i_rmv2(f32 arg0, f64 arg1) {
    gl_wstate *temp_s7;

    unksp8 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = (f32) temp_s7->unk2CE8;
        temp_s7->unk2CE4 = (bitwise s32) ((f32) temp_s7->unk2CE4 + (bitwise f32) unksp8);
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + arg0);
    } else {
        temp_s7->unk2CE4 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE4 + (bitwise f32) unksp8);
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + arg0);
    }
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

void gl_c_rmv2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4F40 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5ED8);
        saved_reg_gp->unk-4F40 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_rmv2(void *arg0) {
    f32 temp_f4;
    f32 var_f0;
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    temp_f4 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (f32) temp_s7->unk2CE4;
        temp_s7->unk2CE8 = (f32) temp_s7->unk2CE8;
    } else {
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (bitwise f32) temp_s7->unk2CE4;
    }
    temp_s7->unk2CE4 = (bitwise s32) var_f0;
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

void gl_i_rmvs(s32 arg0, s64 arg1, s64 arg2) {
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = (bitwise f32) ((bitwise s32) temp_s7->unk2CE8 + subroutine_arg2);
        temp_s7->unk2CE4 += subroutine_arg0;
        temp_s7->unk2CE0 += arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) subroutine_arg2);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
    }
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, 2);
}

void gl_c_rmvs(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4F3C == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5EC8);
        saved_reg_gp->unk-4F3C = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_rmvs(void *arg0) {
    gl_wstate *temp_s7;
    s16 temp_a0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        temp_s7->unk2CE4 += arg0->unk2;
        temp_s7->unk2CE8 = (bitwise f32) (arg0->unk4 + (bitwise s32) temp_s7->unk2CE8);
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk2);
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) arg0->unk4);
    }
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, 2);
}

void gl_i_rmvi(s32 arg0, s64 arg1, s64 arg2) {
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = (bitwise f32) ((bitwise s32) temp_s7->unk2CE8 + subroutine_arg2);
        temp_s7->unk2CE4 += subroutine_arg0;
        temp_s7->unk2CE0 += arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) subroutine_arg2);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
    }
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, 2);
}

void gl_c_rmvi(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4F38 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5EB8);
        saved_reg_gp->unk-4F38 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_rmvi(void *arg0) {
    gl_wstate *temp_s7;
    s32 temp_a0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        temp_s7->unk2CE4 += arg0->unk4;
        temp_s7->unk2CE8 = (bitwise f32) (arg0->unk8 + (bitwise s32) temp_s7->unk2CE8);
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk4);
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) arg0->unk8);
    }
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, 2);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void gl_i_rmv(f32 arg0, f64 arg1) {
    gl_wstate *temp_s7;

    unksp8 = arg1;
    unksp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = second half of f64;
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + arg0);
        temp_s7->unk2CE4 = (bitwise s32) ((f32) temp_s7->unk2CE4 + (bitwise f32) unksp10);
    } else {
        temp_s7->unk2CE8 += (bitwise f32) unksp8;
        temp_s7->unk2CE0 = second half of f64;
        temp_s7->unk2CE4 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE4 + (bitwise f32) unksp10);
    }
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_rmv(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4F34 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5EA8);
        saved_reg_gp->unk-4F34 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_rmv(void *arg0) {
    f32 temp_f4;
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(3);
    __iglooSetMoveDraw(1);
    temp_f4 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + temp_f4);
        temp_s7->unk2CE4 = (bitwise s32) (arg0->unk4 + (f32) temp_s7->unk2CE4);
        temp_s7->unk2CE8 = arg0->unk8 + (f32) temp_s7->unk2CE8;
    } else {
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + temp_f4);
        temp_s7->unk2CE4 = (bitwise s32) (arg0->unk4 + (bitwise f32) temp_s7->unk2CE4);
        temp_s7->unk2CE8 += arg0->unk8;
    }
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

void gl_i_rdr2s(s32 arg0, s64 arg1) {
    s64 sp20;
    gl_wstate *temp_s0;
    s32 var_v1;

    sp20 = arg1;
    temp_s0 = gl_wstatep;
    __iglooCheckDrawRestart();
    if (temp_s0->unk2CDC != 1) {
        var_v1 = temp_s0->unk2CE0 + arg0;
        temp_s0->unk2CE4 += sp20;
    } else {
        temp_s0->unk2CE8 = (bitwise f32) (s32) temp_s0->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s0->unk2CE0 + (f32) arg0);
        temp_s0->unk2CE4 = (s32) ((bitwise f32) temp_s0->unk2CE4 + (f32) sp20);
    }
    temp_s0->unk2CE0 = var_v1;
    temp_s0->unk2CDC = 2;
    glVertex3iv(&temp_s0->unk2CE0);
}

void gl_c_rdr2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4F30 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5E98, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4F30 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_rdr2s(void *arg0) {
    gl_wstate *temp_s7;
    s16 temp_a0;
    s32 var_a1;
    s32 var_v1;

    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        var_a1 = temp_s7->unk2CE4;
        var_v1 = arg0->unk2 + var_a1;
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        var_a1 = (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk2);
        temp_s7->unk2CE8 = (bitwise f32) var_a1;
    }
    temp_s7->unk2CE4 = var_v1;
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, var_a1);
}

void gl_i_rdr2i(s32 arg0, s64 arg1) {
    s64 sp20;
    gl_wstate *temp_s0;
    s32 var_v1;

    sp20 = arg1;
    temp_s0 = gl_wstatep;
    __iglooCheckDrawRestart();
    if (temp_s0->unk2CDC != 1) {
        var_v1 = temp_s0->unk2CE0 + arg0;
        temp_s0->unk2CE4 += sp20;
    } else {
        temp_s0->unk2CE8 = (bitwise f32) (s32) temp_s0->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s0->unk2CE0 + (f32) arg0);
        temp_s0->unk2CE4 = (s32) ((bitwise f32) temp_s0->unk2CE4 + (f32) sp20);
    }
    temp_s0->unk2CE0 = var_v1;
    temp_s0->unk2CDC = 2;
    glVertex3iv(&temp_s0->unk2CE0);
}

void gl_c_rdr2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4F2C == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5E88, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4F2C = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_rdr2i(void *arg0) {
    gl_wstate *temp_s7;
    s32 temp_a0;
    s32 var_a1;
    s32 var_v1;

    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        var_a1 = temp_s7->unk2CE4;
        var_v1 = arg0->unk4 + var_a1;
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        var_a1 = (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk4);
        temp_s7->unk2CE8 = (bitwise f32) var_a1;
    }
    temp_s7->unk2CE4 = var_v1;
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, var_a1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void gl_i_rdr2(f32 arg0, f64 arg1) {
    gl_wstate *temp_s7;

    unksp8 = arg1;
    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = (f32) temp_s7->unk2CE8;
        temp_s7->unk2CE4 = (bitwise s32) ((f32) temp_s7->unk2CE4 + (bitwise f32) unksp8);
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + arg0);
    } else {
        temp_s7->unk2CE4 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE4 + (bitwise f32) unksp8);
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + arg0);
    }
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

void gl_c_rdr2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4F28 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5E78);
        saved_reg_gp->unk-4F28 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_rdr2(void *arg0) {
    f32 temp_f4;
    f32 var_f0;
    gl_wstate *temp_s7;

    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_f4 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (f32) temp_s7->unk2CE4;
        temp_s7->unk2CE8 = (f32) temp_s7->unk2CE8;
    } else {
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (bitwise f32) temp_s7->unk2CE4;
    }
    temp_s7->unk2CE4 = (bitwise s32) var_f0;
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

void gl_i_rdrs(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    gl_wstate *temp_s0;

    sp20 = arg2;
    sp28 = arg1;
    temp_s0 = gl_wstatep;
    __iglooCheckDrawRestart();
    if (temp_s0->unk2CDC != 1) {
        temp_s0->unk2CE8 = (bitwise f32) ((bitwise s32) temp_s0->unk2CE8 + sp20);
        temp_s0->unk2CE4 += sp28;
        temp_s0->unk2CE0 += arg0;
    } else {
        temp_s0->unk2CE8 = (bitwise f32) (s32) (temp_s0->unk2CE8 + (f32) sp20);
        temp_s0->unk2CE4 = (s32) ((bitwise f32) temp_s0->unk2CE4 + (f32) sp28);
        temp_s0->unk2CE0 = (s32) ((bitwise f32) temp_s0->unk2CE0 + (f32) arg0);
    }
    temp_s0->unk2CDC = 2;
    glVertex3iv(&temp_s0->unk2CE0, 2);
}

void gl_c_rdrs(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4F24 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5E68);
        saved_reg_gp->unk-4F24 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_rdrs(void *arg0) {
    gl_wstate *temp_s7;
    s16 temp_a0;

    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        temp_s7->unk2CE4 += arg0->unk2;
        temp_s7->unk2CE8 = (bitwise f32) (arg0->unk4 + (bitwise s32) temp_s7->unk2CE8);
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk2);
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) arg0->unk4);
    }
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, 2);
}

void gl_i_rdri(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    gl_wstate *temp_s0;

    sp20 = arg2;
    sp28 = arg1;
    temp_s0 = gl_wstatep;
    __iglooCheckDrawRestart();
    if (temp_s0->unk2CDC != 1) {
        temp_s0->unk2CE8 = (bitwise f32) ((bitwise s32) temp_s0->unk2CE8 + sp20);
        temp_s0->unk2CE4 += sp28;
        temp_s0->unk2CE0 += arg0;
    } else {
        temp_s0->unk2CE8 = (bitwise f32) (s32) (temp_s0->unk2CE8 + (f32) sp20);
        temp_s0->unk2CE4 = (s32) ((bitwise f32) temp_s0->unk2CE4 + (f32) sp28);
        temp_s0->unk2CE0 = (s32) ((bitwise f32) temp_s0->unk2CE0 + (f32) arg0);
    }
    temp_s0->unk2CDC = 2;
    glVertex3iv(&temp_s0->unk2CE0, 2);
}

void gl_c_rdri(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4F20 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5E58);
        saved_reg_gp->unk-4F20 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_rdri(void *arg0) {
    gl_wstate *temp_s7;
    s32 temp_a0;

    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        temp_s7->unk2CE4 += arg0->unk4;
        temp_s7->unk2CE8 = (bitwise f32) (arg0->unk8 + (bitwise s32) temp_s7->unk2CE8);
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk4);
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) arg0->unk8);
    }
    temp_s7->unk2CDC = 2;
    glVertex3iv(&temp_s7->unk2CE0, 2);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c], gap at: 0x8. */
void gl_i_rdr(f32 arg0, f64 arg1) {
    gl_wstate *temp_s7;

    unksp8 = arg1;
    unksp10 = arg1;
    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = second half of f64;
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + arg0);
        temp_s7->unk2CE4 = (bitwise s32) ((f32) temp_s7->unk2CE4 + (bitwise f32) unksp10);
    } else {
        temp_s7->unk2CE8 += (bitwise f32) unksp8;
        temp_s7->unk2CE0 = second half of f64;
        temp_s7->unk2CE4 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE4 + (bitwise f32) unksp10);
    }
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_rdr(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4F1C == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5E48);
        saved_reg_gp->unk-4F1C = 1;
    }
    gl_compile(8, sp);
}

void gl_n_rdr(void *arg0) {
    f32 temp_f4;
    gl_wstate *temp_s7;

    temp_s7 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_f4 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + temp_f4);
        temp_s7->unk2CE4 = (bitwise s32) (arg0->unk4 + (f32) temp_s7->unk2CE4);
        temp_s7->unk2CE8 = arg0->unk8 + (f32) temp_s7->unk2CE8;
    } else {
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + temp_f4);
        temp_s7->unk2CE4 = (bitwise s32) (arg0->unk4 + (bitwise f32) temp_s7->unk2CE4);
        temp_s7->unk2CE8 += arg0->unk8;
    }
    temp_s7->unk2CDC = 1;
    glVertex3fv(&temp_s7->unk2CE0);
}

void gl_i_rpmv2s(s32 arg0, s64 arg1) {
    gl_wstate *temp_s7;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    if (temp_s7->unk2CDC != 1) {
        var_v1 = temp_s7->unk2CE0 + arg0;
        temp_s7->unk2CE4 += subroutine_arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
    }
    temp_s7->unk2CE0 = var_v1;
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *)) temp_s7->zfunction)(&temp_s7->unk2CE0);
}

void gl_c_rpmv2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4F18 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5E38, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4F18 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_rpmv2s(void *arg0) {
    gl_wstate *temp_s7;
    s16 temp_a0;
    s32 var_a1;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        var_a1 = temp_s7->unk2CE4;
        var_v1 = arg0->unk2 + var_a1;
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        var_a1 = (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk2);
        temp_s7->unk2CE8 = (bitwise f32) var_a1;
    }
    temp_s7->unk2CE4 = var_v1;
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *, s32)) temp_s7->zfunction)(&temp_s7->unk2CE0, var_a1);
}

void gl_i_rpmv2i(s32 arg0, s64 arg1) {
    gl_wstate *temp_s7;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    if (temp_s7->unk2CDC != 1) {
        var_v1 = temp_s7->unk2CE0 + arg0;
        temp_s7->unk2CE4 += subroutine_arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
    }
    temp_s7->unk2CE0 = var_v1;
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *)) temp_s7->zfunction)(&temp_s7->unk2CE0);
}

void gl_c_rpmv2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4F14 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5E28, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4F14 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_rpmv2i(void *arg0) {
    gl_wstate *temp_s7;
    s32 temp_a0;
    s32 var_a1;
    s32 var_v1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        var_a1 = temp_s7->unk2CE4;
        var_v1 = arg0->unk4 + var_a1;
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        var_a1 = (s32) temp_s7->unk2CE8;
        var_v1 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk4);
        temp_s7->unk2CE8 = (bitwise f32) var_a1;
    }
    temp_s7->unk2CE4 = var_v1;
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *, s32)) temp_s7->zfunction)(&temp_s7->unk2CE0, var_a1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c], gap at: 0x8. */
void gl_i_rpmv2(f32 arg0, f64 arg1) {
    gl_wstate *temp_s7;

    unksp8 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = (f32) temp_s7->unk2CE8;
        temp_s7->unk2CE4 = (bitwise s32) ((f32) temp_s7->unk2CE4 + (bitwise f32) unksp8);
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + arg0);
    } else {
        temp_s7->unk2CE4 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE4 + (bitwise f32) unksp8);
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + arg0);
    }
    temp_s7->unk2CDC = 1;
    ((? (*)(s32 *)) temp_s7->zbuffer)(&temp_s7->unk2CE0);
}

void gl_c_rpmv2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4F10 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5E18);
        saved_reg_gp->unk-4F10 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_rpmv2(void *arg0) {
    f32 temp_f4;
    f32 var_f0;
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    temp_f4 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (f32) temp_s7->unk2CE4;
        temp_s7->unk2CE8 = (f32) temp_s7->unk2CE8;
    } else {
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (bitwise f32) temp_s7->unk2CE4;
    }
    temp_s7->unk2CE4 = (bitwise s32) var_f0;
    temp_s7->unk2CDC = 1;
    ((? (*)(s32 *)) temp_s7->zbuffer)(&temp_s7->unk2CE0);
}

void gl_i_rpmvs(s32 arg0, s64 arg1, s64 arg2) {
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = (bitwise f32) ((bitwise s32) temp_s7->unk2CE8 + subroutine_arg2);
        temp_s7->unk2CE4 += subroutine_arg0;
        temp_s7->unk2CE0 += arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) subroutine_arg2);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
    }
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *, ?)) temp_s7->zfunction)(&temp_s7->unk2CE0, 2);
}

void gl_c_rpmvs(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4F0C == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5E08);
        saved_reg_gp->unk-4F0C = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_rpmvs(void *arg0) {
    gl_wstate *temp_s7;
    s16 temp_a0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        temp_s7->unk2CE4 += arg0->unk2;
        temp_s7->unk2CE8 = (bitwise f32) (arg0->unk4 + (bitwise s32) temp_s7->unk2CE8);
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk2);
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) arg0->unk4);
    }
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *, ?)) temp_s7->zfunction)(&temp_s7->unk2CE0, 2);
}

void gl_i_rpmvi(s32 arg0, s64 arg1, s64 arg2) {
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = (bitwise f32) ((bitwise s32) temp_s7->unk2CE8 + subroutine_arg2);
        temp_s7->unk2CE4 += subroutine_arg0;
        temp_s7->unk2CE0 += arg0;
    } else {
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) subroutine_arg2);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) subroutine_arg0);
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) arg0);
    }
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *, ?)) temp_s7->zfunction)(&temp_s7->unk2CE0, 2);
}

void gl_c_rpmvi(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4F08 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5DF8);
        saved_reg_gp->unk-4F08 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_rpmvi(void *arg0) {
    gl_wstate *temp_s7;
    s32 temp_a0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    temp_a0 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 += temp_a0;
        temp_s7->unk2CE4 += arg0->unk4;
        temp_s7->unk2CE8 = (bitwise f32) (arg0->unk8 + (bitwise s32) temp_s7->unk2CE8);
    } else {
        temp_s7->unk2CE0 = (s32) ((bitwise f32) temp_s7->unk2CE0 + (f32) temp_a0);
        temp_s7->unk2CE4 = (s32) ((bitwise f32) temp_s7->unk2CE4 + (f32) arg0->unk4);
        temp_s7->unk2CE8 = (bitwise f32) (s32) (temp_s7->unk2CE8 + (f32) arg0->unk8);
    }
    temp_s7->unk2CDC = 2;
    ((? (*)(s32 *, ?)) temp_s7->zfunction)(&temp_s7->unk2CE0, 2);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void gl_i_rpmv(f32 arg0, f64 arg1) {
    gl_wstate *temp_s7;

    unksp8 = arg1;
    unksp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE8 = second half of f64;
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + arg0);
        temp_s7->unk2CE4 = (bitwise s32) ((f32) temp_s7->unk2CE4 + (bitwise f32) unksp10);
    } else {
        temp_s7->unk2CE8 += (bitwise f32) unksp8;
        temp_s7->unk2CE0 = second half of f64;
        temp_s7->unk2CE4 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE4 + (bitwise f32) unksp10);
    }
    temp_s7->unk2CDC = 1;
    ((? (*)(s32 *)) temp_s7->zbuffer)(&temp_s7->unk2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_rpmv(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4F04 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5DE8);
        saved_reg_gp->unk-4F04 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_rpmv(void *arg0) {
    f32 temp_f4;
    gl_wstate *temp_s7;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s7 = gl_wstatep;
    temp_s7->unkD8(9);
    __iglooSetMoveDraw(0);
    temp_f4 = arg0->unk0;
    if (temp_s7->unk2CDC != 1) {
        temp_s7->unk2CE0 = (bitwise s32) ((f32) temp_s7->unk2CE0 + temp_f4);
        temp_s7->unk2CE4 = (bitwise s32) (arg0->unk4 + (f32) temp_s7->unk2CE4);
        temp_s7->unk2CE8 = arg0->unk8 + (f32) temp_s7->unk2CE8;
    } else {
        temp_s7->unk2CE0 = (bitwise s32) ((bitwise f32) temp_s7->unk2CE0 + temp_f4);
        temp_s7->unk2CE4 = (bitwise s32) (arg0->unk4 + (bitwise f32) temp_s7->unk2CE4);
        temp_s7->unk2CE8 += arg0->unk8;
    }
    temp_s7->unk2CDC = 1;
    ((? (*)(s32 *)) temp_s7->zbuffer)(&temp_s7->unk2CE0);
}

void gl_i_rpdr2s(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a2;

    var_a2 = arg2;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 += arg0;
        gl_wstatep->unk2CE4 += arg1;
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) arg0);
        var_a2 = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg1);
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) gl_wstatep->unk2CE8;
        gl_wstatep->unk2CE4 = var_a2;
    }
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, ?, s32, gl_wstate *)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, 2, var_a2, gl_wstatep);
}

void gl_c_rpdr2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4F00 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5DD8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4F00 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_rpdr2s(void *arg0) {
    s16 temp_a3;
    s32 var_at;

    temp_a3 = arg0->unk0;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 += temp_a3;
        var_at = arg0->unk2 + gl_wstatep->unk2CE4;
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) temp_a3);
        var_at = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg0->unk2);
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) gl_wstatep->unk2CE8;
    }
    gl_wstatep->unk2CE4 = var_at;
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, ?, gl_wstate *, s16)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, 2, gl_wstatep, temp_a3);
}

void gl_i_rpdr2i(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a2;

    var_a2 = arg2;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 += arg0;
        gl_wstatep->unk2CE4 += arg1;
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) arg0);
        var_a2 = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg1);
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) gl_wstatep->unk2CE8;
        gl_wstatep->unk2CE4 = var_a2;
    }
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, ?, s32, gl_wstate *)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, 2, var_a2, gl_wstatep);
}

void gl_c_rpdr2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4EFC == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5DC8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4EFC = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_rpdr2i(void *arg0) {
    s32 temp_a3;
    s32 var_at;

    temp_a3 = arg0->unk0;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 += temp_a3;
        var_at = arg0->unk4 + gl_wstatep->unk2CE4;
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) temp_a3);
        var_at = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg0->unk4);
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) gl_wstatep->unk2CE8;
    }
    gl_wstatep->unk2CE4 = var_at;
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, ?, gl_wstate *, s32)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, 2, gl_wstatep, temp_a3);
}

void gl_i_rpdr2(f32 arg0, f32 arg1) {
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 = (bitwise s32) ((f32) gl_wstatep->unk2CE0 + arg0);
        gl_wstatep->unk2CE8 = (f32) gl_wstatep->unk2CE8;
        gl_wstatep->unk2CE4 = (bitwise s32) ((f32) gl_wstatep->unk2CE4 + arg1);
    } else {
        gl_wstatep->unk2CE0 = (bitwise s32) ((bitwise f32) gl_wstatep->unk2CE0 + arg0);
        gl_wstatep->unk2CE4 = (bitwise s32) ((bitwise f32) gl_wstatep->unk2CE4 + arg1);
    }
    gl_wstatep->unk2CDC = 1;
    ((? (*)(s32 *, gl_wstate *, gl_wstate *, ?)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0, gl_wstatep, gl_wstatep, 1);
}

void gl_c_rpdr2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4EF8 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5DB8);
        saved_reg_gp->unk-4EF8 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_rpdr2(void *arg0) {
    f32 temp_f4;
    f32 var_f0;

    temp_f4 = arg0->unk0;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 = (bitwise s32) ((f32) gl_wstatep->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (f32) gl_wstatep->unk2CE4;
        gl_wstatep->unk2CE8 = (f32) gl_wstatep->unk2CE8;
    } else {
        gl_wstatep->unk2CE0 = (bitwise s32) ((bitwise f32) gl_wstatep->unk2CE0 + temp_f4);
        var_f0 = arg0->unk4 + (bitwise f32) gl_wstatep->unk2CE4;
    }
    gl_wstatep->unk2CE4 = (bitwise s32) var_f0;
    gl_wstatep->unk2CDC = 1;
    ((? (*)(s32 *, gl_wstate *, gl_wstate *)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0, gl_wstatep, gl_wstatep);
}

void gl_i_rpdrs(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_a3;

    var_a3 = arg3;
    if (gl_wstatep->unk2CDC != 1) {
        var_a3 = gl_wstatep->unk2CE0 + arg0;
        gl_wstatep->unk2CE0 = var_a3;
        gl_wstatep->unk2CE8 = (bitwise f32) ((bitwise s32) gl_wstatep->unk2CE8 + arg2);
        gl_wstatep->unk2CE4 += arg1;
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) arg0);
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) (gl_wstatep->unk2CE8 + (f32) arg2);
        gl_wstatep->unk2CE4 = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg1);
    }
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, s32)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, var_a3);
}

void gl_c_rpdrs(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4EF4 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5DA8);
        saved_reg_gp->unk-4EF4 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_rpdrs(void *arg0) {
    s16 temp_a3;
    s32 var_a1;

    temp_a3 = arg0->unk0;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 += temp_a3;
        var_a1 = gl_wstatep->unk2CE4;
        gl_wstatep->unk2CE4 = arg0->unk2 + var_a1;
        gl_wstatep->unk2CE8 = (bitwise f32) (arg0->unk4 + (bitwise s32) gl_wstatep->unk2CE8);
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) temp_a3);
        gl_wstatep->unk2CE4 = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg0->unk2);
        var_a1 = (s32) arg0->unk4;
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) (gl_wstatep->unk2CE8 + (f32) var_a1);
    }
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, s32, gl_wstate *, s16)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, var_a1, gl_wstatep, temp_a3);
}

void gl_i_rpdri(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_a3;

    var_a3 = arg3;
    if (gl_wstatep->unk2CDC != 1) {
        var_a3 = gl_wstatep->unk2CE0 + arg0;
        gl_wstatep->unk2CE0 = var_a3;
        gl_wstatep->unk2CE8 = (bitwise f32) ((bitwise s32) gl_wstatep->unk2CE8 + arg2);
        gl_wstatep->unk2CE4 += arg1;
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) arg0);
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) (gl_wstatep->unk2CE8 + (f32) arg2);
        gl_wstatep->unk2CE4 = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg1);
    }
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, s32)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, var_a3);
}

void gl_c_rpdri(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4EF0 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5D98);
        saved_reg_gp->unk-4EF0 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_rpdri(void *arg0) {
    s32 temp_a3;
    s32 var_a1;

    temp_a3 = arg0->unk0;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 += temp_a3;
        var_a1 = gl_wstatep->unk2CE4;
        gl_wstatep->unk2CE4 = arg0->unk4 + var_a1;
        gl_wstatep->unk2CE8 = (bitwise f32) (arg0->unk8 + (bitwise s32) gl_wstatep->unk2CE8);
    } else {
        gl_wstatep->unk2CE0 = (s32) ((bitwise f32) gl_wstatep->unk2CE0 + (f32) temp_a3);
        gl_wstatep->unk2CE4 = (s32) ((bitwise f32) gl_wstatep->unk2CE4 + (f32) arg0->unk4);
        var_a1 = arg0->unk8;
        gl_wstatep->unk2CE8 = (bitwise f32) (s32) (gl_wstatep->unk2CE8 + (f32) var_a1);
    }
    gl_wstatep->unk2CDC = 2;
    ((? (*)(s32 *, s32, gl_wstate *, s32)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, var_a1, gl_wstatep, temp_a3);
}

void gl_i_rpdr(f32 arg0, f32 arg1) {
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 = (bitwise s32) ((f32) gl_wstatep->unk2CE0 + arg0);
        gl_wstatep->unk2CE8 = (f32) gl_wstatep->unk2CE8 + arg1;
        gl_wstatep->unk2CE4 = (bitwise s32) ((f32) gl_wstatep->unk2CE4 + arg1);
    } else {
        gl_wstatep->unk2CE0 = (bitwise s32) ((bitwise f32) gl_wstatep->unk2CE0 + arg0);
        gl_wstatep->unk2CE8 += arg1;
        gl_wstatep->unk2CE4 = (bitwise s32) ((bitwise f32) gl_wstatep->unk2CE4 + arg1);
    }
    gl_wstatep->unk2CDC = 1;
    ((? (*)(s32 *, gl_wstate *, gl_wstate *, ?)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0, gl_wstatep, gl_wstatep, 1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_rpdr(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4EEC == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5D88);
        saved_reg_gp->unk-4EEC = 1;
    }
    gl_compile(8, sp);
}

void gl_n_rpdr(void *arg0) {
    f32 temp_f4;

    temp_f4 = arg0->unk0;
    if (gl_wstatep->unk2CDC != 1) {
        gl_wstatep->unk2CE0 = (bitwise s32) ((f32) gl_wstatep->unk2CE0 + temp_f4);
        gl_wstatep->unk2CE4 = (bitwise s32) (arg0->unk4 + (f32) gl_wstatep->unk2CE4);
        gl_wstatep->unk2CE8 = arg0->unk8 + (f32) gl_wstatep->unk2CE8;
    } else {
        gl_wstatep->unk2CE0 = (bitwise s32) ((bitwise f32) gl_wstatep->unk2CE0 + temp_f4);
        gl_wstatep->unk2CE4 = (bitwise s32) (arg0->unk4 + (bitwise f32) gl_wstatep->unk2CE4);
        gl_wstatep->unk2CE8 += arg0->unk8;
    }
    gl_wstatep->unk2CDC = 1;
    ((? (*)(s32 *, gl_wstate *, gl_wstate *)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0, gl_wstatep, gl_wstatep);
}
