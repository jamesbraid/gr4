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
    /* 0x2B00 */ char pad2B00[0x1DC];               /* maybe part of currentVertex[0x1E]? */
    /* 0x2CDC */ s32 unk2CDC;                       /* inferred */
    /* 0x2CE0 */ s32 unk2CE0;                       /* inferred */
    /* 0x2CE4 */ f32 unk2CE4;                       /* inferred */
    /* 0x2CE8 */ f32 unk2CE8;                       /* inferred */
    /* 0x2CEC */ char pad2CEC[0x1FC];               /* maybe part of unk2CE8[0x80]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? pclos();                                          /* extern */
extern ? sub_0f030000;

void gl_i_pmv2s(s64 arg0, s64 arg1) {
    s64 sp10;

    sp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE8 = 0;
    subroutine_arg0->unk2CE4 = (s32) sp10;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0);
}

void gl_c_pmv2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-500C == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6238, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-500C = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_pmv2s(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk2;
    subroutine_arg0->unk2CE8 = 0;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0);
}

void gl_i_pmv2i(s64 arg0, s64 arg1) {
    s64 sp10;

    sp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE8 = 0;
    subroutine_arg0->unk2CE4 = (s32) sp10;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0);
}

void gl_c_pmv2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5008 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6228, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5008 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_pmv2i(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk4;
    subroutine_arg0->unk2CE8 = 0;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0);
}

void gl_i_pmv2(f64 arg0, f64 arg1) {
    s64 sp10;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    sp10 = (s64) gl_wstatep;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    sp10->unk2CE4 = (f32) subroutine_arg2;
    sp10->unk2CE0 = (f32) subroutine_arg0;
    sp10->unk2CDC = 1;
    sp10->unk2CE8 = (f32) (second half of f64);
    sp10->unk18(sp10 + 0x2CE0);
}

void gl_c_pmv2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-5004 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6218);
        saved_reg_gp->unk-5004 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_pmv2(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk0;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = 0.0f;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk4;
    subroutine_arg0->unk18(subroutine_arg0 + 0x2CE0);
}

void gl_i_pmvs(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;

    sp10 = arg2;
    sp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE8 = (s32) sp10;
    subroutine_arg0->unk2CE4 = (s32) sp18;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0, sp10);
}

void gl_c_pmvs(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-5000 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x6208);
        saved_reg_gp->unk-5000 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_pmvs(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk2;
    subroutine_arg0->unk2CE8 = (s32) arg0->unk4;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0);
}

void gl_i_pmvi(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;

    sp10 = arg2;
    sp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE8 = (s32) sp10;
    subroutine_arg0->unk2CE4 = (s32) sp18;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0, sp10);
}

void gl_c_pmvi(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4FFC == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x61F8);
        saved_reg_gp->unk-4FFC = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_pmvi(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk4;
    subroutine_arg0->unk2CE8 = (s32) arg0->unk8;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk1C(subroutine_arg0 + 0x2CE0);
}

void gl_i_pmv(f64 arg0, f64 arg1) {
    s64 sp18;
    f64 sp10;

    sp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    sp18 = (s64) gl_wstatep;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    sp18->unk2CE8 = (bitwise f32) sp10;
    sp18->unk2CE4 = (f32) subroutine_arg2;
    sp18->unk2CDC = 1;
    sp18->unk2CE0 = (f32) (second half of f64);
    sp18->unk18(sp18 + 0x2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_pmv(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4FF8 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x61E8);
        saved_reg_gp->unk-4FF8 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_pmv(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk0;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk4;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = (f32) arg0->unk8;
    subroutine_arg0->unk18(subroutine_arg0 + 0x2CE0);
}

void gl_i_pdr2s(s32 arg0, f32 arg1) {
    gl_wstatep->unk2CE0 = arg0;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = 0.0f;
    gl_wstatep->unk2CE4 = arg1;
    ((? (*)(s32 *)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0);
}

void gl_c_pdr2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4FF4 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x61D8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4FF4 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_pdr2s(void *arg0) {
    s16 temp_a1;

    temp_a1 = arg0->unk0;
    gl_wstatep->unk2CE0 = (s32) temp_a1;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = 0.0f;
    gl_wstatep->unk2CE4 = (bitwise f32) arg0->unk2;
    ((? (*)(s32 *, s16)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, temp_a1);
}

void gl_i_pdr2i(s32 arg0, f32 arg1) {
    gl_wstatep->unk2CE0 = arg0;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = 0.0f;
    gl_wstatep->unk2CE4 = arg1;
    ((? (*)(s32 *)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0);
}

void gl_c_pdr2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4FF0 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x61C8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4FF0 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_pdr2i(void *arg0) {
    s32 temp_a1;

    temp_a1 = arg0->unk0;
    gl_wstatep->unk2CE0 = temp_a1;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = 0.0f;
    gl_wstatep->unk2CE4 = arg0->unk4;
    ((? (*)(s32 *, s32)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, temp_a1);
}

void gl_i_pdr2(f32 arg0, f32 arg1) {
    gl_wstatep->unk2CDC = 1;
    gl_wstatep->unk2CE8 = 0.0f;
    gl_wstatep->unk2CE4 = arg1;
    gl_wstatep->unk2CE0 = (bitwise s32) arg0;
    ((? (*)(s32 *)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0);
}

void gl_c_pdr2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4FEC == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x61B8);
        saved_reg_gp->unk-4FEC = 1;
    }
    gl_compile(6, sp);
}

void gl_n_pdr2(void *arg0) {
    gl_wstatep->unk2CE0 = arg0->unk0;
    gl_wstatep->unk2CDC = 1;
    gl_wstatep->unk2CE8 = 0.0f;
    gl_wstatep->unk2CE4 = arg0->unk4;
    ((? (*)(s32 *)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0);
}

void gl_i_pdrs(s32 arg0, f32 arg1, f32 arg2) {
    gl_wstatep->unk2CE0 = arg0;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = arg2;
    gl_wstatep->unk2CE4 = arg1;
    ((? (*)(s32 *)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0);
}

void gl_c_pdrs(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4FE8 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x61A8);
        saved_reg_gp->unk-4FE8 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_pdrs(void *arg0) {
    s16 temp_a1;
    s16 temp_a2;

    temp_a2 = arg0->unk0;
    gl_wstatep->unk2CE0 = (s32) temp_a2;
    temp_a1 = arg0->unk2;
    gl_wstatep->unk2CE4 = (bitwise f32) temp_a1;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = (bitwise f32) arg0->unk4;
    ((? (*)(s32 *, s16, s16)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, temp_a1, temp_a2);
}

void gl_i_pdri(s32 arg0, f32 arg1, f32 arg2) {
    gl_wstatep->unk2CE0 = arg0;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = arg2;
    gl_wstatep->unk2CE4 = arg1;
    ((? (*)(s32 *)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0);
}

void gl_c_pdri(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4FE4 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x6198);
        saved_reg_gp->unk-4FE4 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_pdri(void *arg0) {
    f32 temp_a1;
    s32 temp_a2;

    temp_a2 = arg0->unk0;
    gl_wstatep->unk2CE0 = temp_a2;
    temp_a1 = arg0->unk4;
    gl_wstatep->unk2CE4 = temp_a1;
    gl_wstatep->unk2CDC = 2;
    gl_wstatep->unk2CE8 = arg0->unk8;
    ((? (*)(s32 *, f32, s32)) gl_wstatep->zfunction)(&gl_wstatep->unk2CE0, temp_a1, temp_a2);
}

void gl_i_pdr(f32 arg0, f32 arg1) {
    gl_wstatep->unk2CDC = 1;
    gl_wstatep->unk2CE8 = arg1;
    gl_wstatep->unk2CE4 = arg1;
    gl_wstatep->unk2CE0 = (bitwise s32) arg0;
    ((? (*)(s32 *)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_pdr(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4FE0 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6188);
        saved_reg_gp->unk-4FE0 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_pdr(void *arg0) {
    gl_wstatep->unk2CE0 = arg0->unk0;
    gl_wstatep->unk2CE4 = arg0->unk4;
    gl_wstatep->unk2CDC = 1;
    gl_wstatep->unk2CE8 = arg0->unk8;
    ((? (*)(s32 *)) gl_wstatep->zbuffer)(&gl_wstatep->unk2CE0);
}

void gl_i_pclos(void) {
    gl_wstatep->unkDC();
}

void gl_c_pclos(void) {
    if (saved_reg_gp->unk-4FDC == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6178);
        saved_reg_gp->unk-4FDC = 1;
    }
    gl_compile(2, sp);
}

void gl_n_pclos(s32 arg0) {
    gl_wstatep->unkDC();
}

void gl_g_spclos(void) {
    pclos();
}
