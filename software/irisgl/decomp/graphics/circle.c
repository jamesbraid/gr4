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

? glVertex2fv(void *);                              /* extern */
? glVertex2i(?, ?);                                 /* extern */
? gl_sincos(s64, void *, f32 *, void *);            /* extern */
? popmatrix();                                      /* extern */
? pushmatrix();                                     /* extern */
? scale(f32, ?);                                    /* extern */
? translate(f32, ?);                                /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void circle_init(void) {
    f32 sp4;
    s32 var_s7;
    s64 var_s1;
    void *var_s5;

    var_s1 = 0;
    var_s7 = 0x50;
    var_s5 = &sub_0f030000 - 0x3B8;
    do {
        var_s5 += 8;
        var_s7 -= 1;
        gl_sincos(var_s1, sp, &sp4);
        var_s1 += 0x2D;
        var_s5->unk-8 = sp4;
        var_s5->unk-4 = (f32) subroutine_arg0;
    } while (var_s7 != 0);
    saved_reg_gp->unk-5238 = 1;
}

void gl_n_circ_draw(s64 arg0) {
    gl_wstate *temp_s8;
    s32 var_s7;
    void *var_s5;

    temp_s8 = gl_wstatep;
    unksp10 = arg0;
    var_s5 = &sub_0f030000 - 0x3B8;
    temp_s8->unkD8(2);
    var_s7 = 0x50;
    do {
        var_s7 -= 1;
        glVertex2fv(var_s5);
        var_s5 += 8;
    } while (var_s7 != 0);
    temp_s8->unkDC();
    popmatrix();
}

void gl_n_circf_draw(s64 arg0) {
    s64 sp20;
    gl_wstate *temp_s1;
    s32 var_s5;
    void *var_s2;

    temp_s1 = gl_wstatep;
    sp20 = arg0;
    var_s2 = &sub_0f030000 - 0x3B8;
    temp_s1->unkD8(6);
    ((? (*)(?)) temp_s1->flags)(0);
    var_s5 = 0x50;
    do {
        var_s5 -= 1;
        ((? (*)(void *)) temp_s1->drawMode)(var_s2);
        var_s2 += 8;
    } while (var_s5 != 0);
    ((? (*)(void *)) temp_s1->drawMode)(&sub_0f030000 - 0x3B8);
    temp_s1->unkDC();
    popmatrix();
}

void gl_n_circF_setup(void *arg0) {
    f32 temp_f24;

    temp_f24 = arg0->unk8;
    pushmatrix();
    translate(arg0->unk0, 0);
    scale(temp_f24, 0);
}

void gl_g_circs(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s16 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64, s64, s64, s64);
    s64 var_a2;
    s64 var_a4;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    var_a4 = arg1;
    if (saved_reg_gp->unk-5234 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_intrptab_insert(&sub_0f020000 + 0x7170);
        var_ra = sp28;
        saved_reg_gp->unk-5234 = 1;
    }
    sp28 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_i_mswapbuffers();
    }
    sp10 = 0;
    sp0 = gl_n_circs;
    spC = (f32) var_a2;
    sp8 = (f32) var_a4;
    sp4 = (f32) arg0;
    gl_compile(8, sp, gl_n_circs);
}

void gl_n_circs(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_circ_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_circi(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64, s64, s64, s64);
    s64 var_a2;
    s64 var_a4;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    var_a4 = arg1;
    if (saved_reg_gp->unk-5230 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_intrptab_insert(&sub_0f020000 + 0x7180);
        var_ra = sp28;
        saved_reg_gp->unk-5230 = 1;
    }
    sp28 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_i_mswapbuffers();
    }
    sp0 = gl_n_circi;
    spC = (f32) var_a2;
    sp8 = (f32) var_a4;
    sp4 = (f32) arg0;
    gl_compile(8, sp, gl_n_circi);
}

void gl_n_circi(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_circ_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_circ(f32 arg0, f32 arg1) {
    s64 sp38;
    f64 sp30;
    f64 sp28;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64, s64, s64, s64);
    f32 var_f4;
    f32 var_f5;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_f5 = arg1;
    var_f4 = arg1;
    if (saved_reg_gp->unk-522C == 0) {
        sp30 = (f64) var_f4;
        sp28 = (f64) var_f5;
        gl_intrptab_insert(&sub_0f020000 + 0x7190);
        var_f5 = second half of f64;
        saved_reg_gp->unk-522C = 1;
        var_ra = sp38;
    }
    sp38 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp30 = (f64) var_f4;
        sp28 = (f64) var_f5;
        gl_i_mswapbuffers();
        var_f5 = second half of f64;
    }
    spC = var_f5;
    sp8 = var_f4;
    sp4 = arg0;
    sp0 = gl_n_circ;
    gl_compile(8, sp, gl_n_circ);
}

void gl_n_circ(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_circ_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_circfs(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s16 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64, s64, s64, s64);
    s64 var_a2;
    s64 var_a4;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    var_a4 = arg1;
    if (saved_reg_gp->unk-5228 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_intrptab_insert(&sub_0f020000 + 0x71A0);
        var_ra = sp28;
        saved_reg_gp->unk-5228 = 1;
    }
    sp28 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_i_mswapbuffers();
    }
    sp10 = 0;
    sp0 = gl_n_circfs;
    spC = (f32) var_a2;
    sp8 = (f32) var_a4;
    sp4 = (f32) arg0;
    gl_compile(8, sp, gl_n_circfs);
}

void gl_n_circfs(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_circf_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_circfi(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64, s64, s64, s64);
    s64 var_a2;
    s64 var_a4;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    var_a4 = arg1;
    if (saved_reg_gp->unk-5224 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_intrptab_insert(&sub_0f020000 + 0x71B0);
        var_ra = sp28;
        saved_reg_gp->unk-5224 = 1;
    }
    sp28 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp38 = var_a4;
        sp30 = var_a2;
        gl_i_mswapbuffers();
    }
    sp0 = gl_n_circfi;
    spC = (f32) var_a2;
    sp8 = (f32) var_a4;
    sp4 = (f32) arg0;
    gl_compile(8, sp, gl_n_circfi);
}

void gl_n_circfi(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_circf_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_circf(f32 arg0, f32 arg1) {
    s64 sp38;
    f64 sp30;
    f64 sp28;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64, s64, s64, s64);
    f32 var_f4;
    f32 var_f5;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_f5 = arg1;
    var_f4 = arg1;
    if (saved_reg_gp->unk-5220 == 0) {
        sp30 = (f64) var_f4;
        sp28 = (f64) var_f5;
        gl_intrptab_insert(&sub_0f020000 + 0x71C0);
        var_f5 = second half of f64;
        saved_reg_gp->unk-5220 = 1;
        var_ra = sp38;
    }
    sp38 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp30 = (f64) var_f4;
        sp28 = (f64) var_f5;
        gl_i_mswapbuffers();
        var_f5 = second half of f64;
    }
    spC = var_f5;
    sp8 = var_f4;
    sp4 = arg0;
    sp0 = gl_n_circf;
    gl_compile(8, sp, gl_n_circf);
}

void gl_n_circf(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_circf_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void endpt_cmplr(void *arg0, s64 arg1, s64 arg2) {
    f32 sp4;
    s32 temp_lo;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a3;
    s32 var_a4;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_a0_4;
    s64 var_s0;
    s64 var_s2;
    void *temp_a3;

    var_s2 = arg1;
    var_s0 = arg2;
    if (arg1 >= 0xE10) {
        M2C_TRAP_IF(0xE10 == 0);
        if ((var_s2 / 3600) & 1) {
            var_s2 = (s64) ((var_s2 - 0xE10) << 0x30) >> 0x30;
        }
        if ((var_s2 / 7200) != 0) {
            var_a0 = var_s2;
            do {
                var_a0 = (s64) ((((s64) ((var_a0 - 0xE10) << 0x30) >> 0x30) - 0xE10) << 0x30) >> 0x30;
            } while (var_a0 >= 0xE10);
            var_s2 = var_a0;
        }
    }
    if (var_s2 < 0) {
        temp_v0 = 0xE0F - var_s2;
        M2C_TRAP_IF(0xE10 == 0);
        if ((temp_v0 / 3600) & 1) {
            var_s2 = (s64) ((var_s2 + 0xE10) << 0x30) >> 0x30;
        }
        if ((temp_v0 / 7200) != 0) {
            var_a0_2 = var_s2;
            do {
                var_a0_2 = (s64) ((((s64) ((var_a0_2 + 0xE10) << 0x30) >> 0x30) + 0xE10) << 0x30) >> 0x30;
            } while (var_a0_2 < 0);
            var_s2 = var_a0_2;
        }
    }
    var_a3 = var_s0 < 0xE10;
    if (var_a3 == 0) {
        M2C_TRAP_IF(0xE10 == 0);
        if ((var_s0 / 3600) & 1) {
            var_s0 = (s64) ((var_s0 - 0xE10) << 0x30) >> 0x30;
        }
        if ((var_s0 / 7200) != 0) {
            var_a0_3 = var_s0;
            do {
                var_a0_3 = (s64) ((((s64) ((var_a0_3 - 0xE10) << 0x30) >> 0x30) - 0xE10) << 0x30) >> 0x30;
            } while (var_a0_3 >= 0xE10);
            var_s0 = var_a0_3;
        }
    }
    if (var_s0 < 0) {
        var_a3 = 0xE10;
        temp_v0_2 = 0xE0F - var_s0;
        M2C_TRAP_IF(0xE10 == 0);
        if ((temp_v0_2 / 3600) & 1) {
            var_s0 = (s64) ((var_s0 + 0xE10) << 0x30) >> 0x30;
        }
        if ((temp_v0_2 / 7200) != 0) {
            var_a0_4 = var_s0;
            do {
                var_a0_4 = (s64) ((((s64) ((var_a0_4 + 0xE10) << 0x30) >> 0x30) + 0xE10) << 0x30) >> 0x30;
            } while (var_a0_4 < 0);
            var_s0 = var_a0_4;
        }
    }
    gl_sincos(var_s2, sp, &sp4, (void *) var_a3);
    temp_lo = var_s2 / 45;
    M2C_TRAP_IF(0x2D == 0);
    arg0->unk0 = sp4;
    M2C_TRAP_IF(0x2D == 0);
    arg0->unk4 = sp0;
    temp_a3 = (temp_lo * 8) + (&sub_0f030000 - 0x3B8) + 8;
    var_a4 = (var_s0 / 45) - temp_lo;
    arg0->unk8 = temp_a3;
    if (var_a4 <= 0) {
        if (var_a4 >= 0) {
            if (var_s0 < var_s2) {
                var_a4 = 0x50;
            }
        } else {
            var_a4 += 0x50;
        }
    }
    arg0->unkC = var_a4;
    gl_sincos(var_s0, sp, &sp4, temp_a3);
    arg0->unk10 = sp4;
    arg0->unk14 = sp0;
}

void gl_n_arc_draw(void *arg0) {
    gl_wstate *temp_s8;
    s32 var_s1;
    u32 var_s0;
    void *temp_s7;

    temp_s8 = gl_wstatep;
    temp_s8->unkD8(3);
    glVertex2fv(arg0);
    var_s1 = arg0->unkC;
    var_s0 = arg0->unk8;
    if (var_s1 > 0) {
        temp_s7 = &sub_0f030000 - 0x3B8;
loop_3:
        if ((u32) (temp_s7 + 0x27C) < var_s0) {
            var_s0 = (u32) temp_s7;
        }
        var_s1 -= 1;
        glVertex2fv((void *) var_s0);
        var_s0 += 8;
        if (var_s1 != 0) {
            goto loop_3;
        }
    }
    glVertex2fv(arg0 + 0x10);
    temp_s8->unkDC();
    popmatrix();
}

void gl_n_arcf_draw(void *arg0) {
    gl_wstate *temp_s8;
    s32 var_s1;
    u32 var_s0;
    void *temp_s7;

    temp_s8 = gl_wstatep;
    temp_s8->unkD8(6);
    glVertex2i(0, 0);
    glVertex2f(arg0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
    var_s1 = arg0->unkC;
    var_s0 = arg0->unk8;
    if (var_s1 > 0) {
        temp_s7 = &sub_0f030000 - 0x3B8;
loop_3:
        if ((u32) (temp_s7 + 0x27C) < var_s0) {
            var_s0 = (u32) temp_s7;
        }
        var_s1 -= 1;
        glVertex2f(var_s0->unk0, M2C_ERROR(/* Read from unset register $f14 */));
        var_s0 += 8;
        if (var_s1 != 0) {
            goto loop_3;
        }
    }
    glVertex2f(arg0->unk10, M2C_ERROR(/* Read from unset register $f14 */));
    temp_s8->unkDC();
    popmatrix();
}

void gl_g_arcs(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    ? sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64);
    s64 var_a3;
    s64 var_a6;
    s64 var_a7;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a7 = arg2;
    var_a6 = arg1;
    if (saved_reg_gp->unk-521C == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_intrptab_insert(&sub_0f020000 + 0x71D0);
        var_ra = sp40;
        saved_reg_gp->unk-521C = 1;
    }
    sp40 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_i_mswapbuffers();
    }
    sp0 = gl_n_arcs;
    spC = (f32) var_a7;
    sp8 = (f32) var_a6;
    sp4 = (f32) arg0;
    gl_n_circf((s64) &sp10, var_a3, M2C_ERROR(/* Read from unset register $a4 */), var_a3);
    gl_compile(0x14, sp);
}

void gl_n_arcs(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_arc_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_arci(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    ? sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64);
    s64 var_a3;
    s64 var_a6;
    s64 var_a7;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a7 = arg2;
    var_a6 = arg1;
    if (saved_reg_gp->unk-5218 == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_intrptab_insert(&sub_0f020000 + 0x71E0);
        var_ra = sp40;
        saved_reg_gp->unk-5218 = 1;
    }
    sp40 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_i_mswapbuffers();
    }
    sp0 = gl_n_arci;
    spC = (f32) var_a7;
    sp8 = (f32) var_a6;
    sp4 = (f32) arg0;
    gl_n_circf((s64) &sp10, var_a3, M2C_ERROR(/* Read from unset register $a4 */), var_a3);
    gl_compile(0x14, sp);
}

void gl_n_arci(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_arc_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_arc(f32 arg0, f32 arg1, s64 arg3) {
    s64 sp60;
    s64 sp58;
    f64 sp50;
    f64 sp48;
    ? sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64);
    f32 var_f4;
    f32 var_f5;
    s64 var_a2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a2 = M2C_ERROR(/* Read from unset register $a4 */);
    var_f5 = arg1;
    var_f4 = arg1;
    if (saved_reg_gp->unk-5214 == 0) {
        sp60 = var_a2;
        sp50 = (f64) var_f4;
        sp48 = (f64) var_f5;
        gl_intrptab_insert(&sub_0f020000 + 0x71F0, var_a2);
        var_f5 = second half of f64;
        var_ra = sp58;
        saved_reg_gp->unk-5214 = 1;
    }
    sp58 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp60 = var_a2;
        sp50 = (f64) var_f4;
        sp48 = (f64) var_f5;
        gl_i_mswapbuffers();
        var_f5 = second half of f64;
    }
    spC = var_f5;
    sp8 = var_f4;
    sp4 = arg0;
    sp0 = gl_n_arc;
    gl_n_circf((s64) &sp10, arg3, var_a2, (s64) gl_n_arc);
    gl_compile(0x14, sp);
}

void gl_n_arc(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_arc_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_arcfs(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    ? sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64);
    s64 var_a3;
    s64 var_a6;
    s64 var_a7;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a7 = arg2;
    var_a6 = arg1;
    if (saved_reg_gp->unk-5210 == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_intrptab_insert(&sub_0f020000 + 0x7200);
        var_ra = sp40;
        saved_reg_gp->unk-5210 = 1;
    }
    sp40 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_i_mswapbuffers();
    }
    sp0 = gl_n_arcfs;
    spC = (f32) var_a7;
    sp8 = (f32) var_a6;
    sp4 = (f32) arg0;
    gl_n_circf((s64) &sp10, var_a3, M2C_ERROR(/* Read from unset register $a4 */), var_a3);
    gl_compile(0x14, sp);
}

void gl_n_arcfs(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_arcf_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_arcfi(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    ? sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64);
    s64 var_a3;
    s64 var_a6;
    s64 var_a7;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a7 = arg2;
    var_a6 = arg1;
    if (saved_reg_gp->unk-520C == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_intrptab_insert(&sub_0f020000 + 0x7210);
        var_ra = sp40;
        saved_reg_gp->unk-520C = 1;
    }
    sp40 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp60 = var_a6;
        sp58 = var_a7;
        sp50 = var_a3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_i_mswapbuffers();
    }
    sp0 = gl_n_arcfi;
    spC = (f32) var_a7;
    sp8 = (f32) var_a6;
    sp4 = (f32) arg0;
    gl_n_circf((s64) &sp10, var_a3, M2C_ERROR(/* Read from unset register $a4 */), var_a3);
    gl_compile(0x14, sp);
}

void gl_n_arcfi(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_arcf_draw(M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_g_arcf(f32 arg0, f32 arg1, s64 arg3) {
    s64 sp60;
    s64 sp58;
    f64 sp50;
    f64 sp48;
    ? sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    void (*sp0)(s64);
    f32 var_f4;
    f32 var_f5;
    s64 var_a2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a2 = M2C_ERROR(/* Read from unset register $a4 */);
    var_f5 = arg1;
    var_f4 = arg1;
    if (saved_reg_gp->unk-5208 == 0) {
        sp60 = var_a2;
        sp50 = (f64) var_f4;
        sp48 = (f64) var_f5;
        gl_intrptab_insert(&sub_0f020000 + 0x7220, var_a2);
        var_f5 = second half of f64;
        var_ra = sp58;
        saved_reg_gp->unk-5208 = 1;
    }
    sp58 = var_ra;
    if (saved_reg_gp->unk-5238 == 0) {
        sp60 = var_a2;
        sp50 = (f64) var_f4;
        sp48 = (f64) var_f5;
        gl_i_mswapbuffers();
        var_f5 = second half of f64;
    }
    spC = var_f5;
    sp8 = var_f4;
    sp4 = arg0;
    sp0 = gl_n_arcf;
    gl_n_circf((s64) &sp10, arg3, var_a2, (s64) gl_n_arcf);
    gl_compile(0x14, sp);
}

void gl_n_arcf(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_circF_setup((void *) arg0);
    gl_n_arcf_draw(M2C_ERROR(/* Read from unset register $v0 */));
}
