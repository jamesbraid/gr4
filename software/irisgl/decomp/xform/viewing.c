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
    /* 0x0100 */ char pad100[8];                    /* maybe part of screenState[3]? */
    /* 0x0108 */ s16 unk108;                        /* inferred */
    /* 0x010A */ char pad10A[2];
    /* 0x010C */ s32 unk10C;                        /* inferred */
    /* 0x0110 */ char pad110[0xA30];                /* maybe part of unk10C[0x28D]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? getsize(void *, s32 *);                           /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void gl_savemmode(void) {
    if (saved_reg_gp->unk-4D68 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5348);
        saved_reg_gp->unk-4D68 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_gl_savemmode(s32 arg0) {
    s16 temp_v0;

    temp_v0 = gl_wstatep->unk108;
    gl_wstatep->unk10C = (s32) gl_wstatep->unk108;
    if (temp_v0 != 2) {
        if (temp_v0 == 3) {
            goto block_4;
        }
    } else {
block_4:
        gl_matrixmode(1, gl_wstatep, 0xFFF0E4FC);
    }
}

void gl_restoremmode(void) {
    if (saved_reg_gp->unk-4D64 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5338);
        saved_reg_gp->unk-4D64 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_gl_restoremmode(f32 *arg0) {
    s32 temp_v0;

    temp_v0 = gl_wstatep->unk10C;
    if (temp_v0 != 2) {
        if (temp_v0 == 3) {
            gl_matrixmode(3, (gl_wstate *)3);
        }
    } else {
        gl_matrixmode(2);
    }
}

void __iglooFudgeOrtho(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp4;
    f32 temp_f4;
    s64 var_ra;
    s8 *var_v0;

    var_ra = saved_reg_ra;
    sp20 = arg0;
    var_v0 = saved_reg_gp->unk-3828;
    sp10 = arg1;
    sp8 = arg2;
    sp18 = arg3;
    if (var_v0 == (s8 *)-1) {
        var_v0 = getenv(&sub_0f020000 + 0x5850);
        saved_reg_gp->unk-3828 = var_v0;
        var_ra = sp28;
    }
    if (var_v0 != NULL) {
        sp28 = var_ra;
        getsize(sp, &sp4);
        temp_f4 = *sp20;
        if ((temp_f4 == -0.5f) && (*sp8 == -0.5f) && ((f32) sp0 == (*sp10 + 0.5f)) && ((f32) sp4 == (*sp18 + 0.5f))) {
            *sp20 = (f32) (temp_f4 + 0.5f);
            *sp10 = (f32) (*sp10 + 0.5f);
            *sp8 = (f32) (*sp8 + 0.5f);
            *sp18 = (f32) (*sp18 + 0.5f);
        }
    }
}

void gl_g_ortho(f32 arg0, f32 arg1, f32 arg3) {
    f32 spA8;
    f32 spA0;
    f32 sp98;
    f32 sp90;
    f64 sp58;
    f64 sp50;
    s32 sp44;
    void (*sp40)();
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f1;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f4;

    temp_f24 = M2C_ERROR(/* Read from unset register $f17 */);
    temp_f22 = M2C_ERROR(/* Read from unset register $f16 */);
    spA8 = arg3;
    spA0 = arg1;
    sp98 = arg1;
    sp90 = arg0;
    gl_n_gl_restoremmode(&sp90, &sp98, &spA0, &spA8);
    temp_f4 = spA8 - spA0;
    temp_f1 = sp98 - sp90;
    sp58 = (bitwise f64) temp_f1;
    sp50 = (bitwise f64) temp_f4;
    if (temp_f1 != 0.0f) {
        if (temp_f4 != 0.0f) {
            if ((temp_f24 - temp_f22) == 0.0f) {
                goto block_5;
            }
        } else {
            goto block_5;
        }
    } else {
block_5:
        gl_ErrorHandler(4, 2, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0E29C)->unk-3824);
    }
    gl_g_window(sp);
    temp_f14 = 1.0f / (bitwise f32) sp50;
    temp_f12 = (second half of f64) * -2.0f;
    if (gl_nonprim_checkspace(temp_f12, temp_f14, 0x2A, temp_f14 * 2.0f, temp_f12, -((sp90 + sp98) * (1.0f / (bitwise f32) sp58)), -((spA0 + spA8) * temp_f14), -((temp_f22 + temp_f24) * (second half of f64))) == 0) {
        return;
    }
    sp44 = 0x2A;
    sp40 = gl_n_nonprim;
    gl_compile(4, &sp40);
    gl_savemmode();
    __GLloadmatrix(sp);
    gl_restoremmode();
}

void gl_g_ortho2(f32 arg0, f32 arg1, f32 arg3) {
    f32 sp88;
    f32 sp80;
    f32 sp78;
    f32 sp70;
    f64 sp58;
    f64 sp50;
    s32 sp44;
    void (*sp40)();
    f32 temp_f12;
    f32 temp_f5;
    f32 temp_f6;

    sp88 = arg3;
    sp80 = arg1;
    sp78 = arg1;
    sp70 = arg0;
    gl_n_gl_restoremmode(&sp70, &sp78, &sp80, &sp88);
    temp_f6 = sp88 - sp80;
    temp_f5 = sp78 - sp70;
    if ((temp_f5 == 0.0f) || (sp50 = (bitwise f64) temp_f6, sp58 = (bitwise f64) temp_f5, (temp_f6 == 0.0f))) {
        sp50 = (bitwise f64) temp_f6;
        sp58 = (bitwise f64) temp_f5;
        gl_ErrorHandler(4, 2, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0E0C4)->unk-3820);
    }
    gl_g_window(sp);
    temp_f12 = 1.0f / (bitwise f32) sp50;
    if (gl_nonprim_checkspace(-1.0f, sp78, 0x2A, temp_f12 * 2.0f, -1.0f, -((sp70 + sp78) * (1.0f / (bitwise f32) sp58)), -((sp80 + sp88) * temp_f12)) == 0) {
        return;
    }
    sp44 = 0x2A;
    sp40 = gl_n_nonprim;
    gl_compile(4, &sp40);
    gl_savemmode();
    __GLloadmatrix(sp);
    gl_restoremmode();
}

void gl_g_perspective(f32 arg1, f32 arg3, s32 arg0) {
    f64 sp58;
    s32 sp4C;
    void (*sp48)();
    f32 sp44;
    f32 sp40;
    f32 sp34;
    f32 sp30;
    f32 sp1C;
    f32 sp8;
    f32 sp4;
    f32 temp_f0;

    if ((arg0 >= 2) && (arg0 < 0x709)) {
        if (arg1 != 0.0f) {
            temp_f0 = arg3 - arg1;
            sp58 = (bitwise f64) temp_f0;
            if (temp_f0 == 0.0f) {
                /* Duplicate return node #5. Try simplifying control flow for better match */
                gl_ErrorHandler(4, 2, saved_reg_gp->unk-381C);
                return;
            }
            __GLgl_sincos((s64) ((s64) ((s32) (((u32) arg0 >> 0x1F) + arg0) >> 1) << 0x30) >> 0x30, sp, &sp4);
            sp4 /= sp0;
            gl_g_window(&sp8);
            sp44 = 0.0f;
            sp1C = second half of f64;
            sp34 = -1.0f;
            sp8 = sp4 / arg1;
            sp30 = -(arg1 + arg3) / (bitwise f32) sp58;
            sp40 = (arg1 * -2.0f * arg3) / (bitwise f32) sp58;
            if (gl_nonprim_checkspace(5.9e-44f) == 0) {
                return;
            }
            sp4C = 0x2A;
            sp48 = gl_n_nonprim;
            gl_compile(4, &sp48);
            gl_savemmode();
            __GLloadmatrix(&sp8);
            gl_restoremmode();
            return;
        }
        gl_ErrorHandler(4, 2, saved_reg_gp->unk-381C);
        return;
    }
    gl_ErrorHandler(7, 2, 0);
}

void gl_g_window(f64 arg0, f64 arg1, f64 arg3) {
    f64 sp70;
    f64 sp68;
    f64 sp60;
    f64 sp58;
    f64 sp50;
    s32 sp44;
    void (*sp40)();
    f32 sp3C;
    f32 sp38;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp14;
    f32 sp0;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f7;
    f32 temp_f8;
    f32 var_f28;

    sp58 = arg1;
    sp60 = arg0;
    temp_f20 = M2C_ERROR(/* Read from unset register $f17 */);
    temp_f22 = M2C_ERROR(/* Read from unset register $f16 */);
    temp_f0 = (f32) arg1 - (f32) arg0;
    sp68 = arg3;
    sp50 = arg1;
    temp_f24 = (f32) arg3 - (f32) arg1;
    sp70 = (bitwise f64) temp_f0;
    if (temp_f0 != 0.0f) {
        var_f28 = temp_f20 - temp_f22;
        if (temp_f24 != 0.0f) {
            if (var_f28 == 0.0f) {
                goto block_5;
            }
        } else {
            goto block_5;
        }
    } else {
        var_f28 = temp_f20 - temp_f22;
block_5:
        gl_ErrorHandler(4, 2, saved_reg_gp - 0x3E48);
    }
    gl_g_window(sp);
    temp_f3 = 1.0f / temp_f24;
    temp_f7 = 1.0f / (bitwise f32) sp70;
    temp_f8 = 1.0f / var_f28;
    temp_f2 = temp_f22 * 2.0f;
    sp3C = 0.0f;
    sp2C = -1.0f;
    sp38 = temp_f22 * -2.0f * temp_f20 * temp_f8;
    sp24 = ((f32) sp50 + (f32) sp68) * temp_f3;
    sp20 = ((second half of f64) + (f32) sp58) * temp_f7;
    sp14 = temp_f2 * temp_f3;
    sp0 = temp_f2 * temp_f7;
    sp28 = -((temp_f22 + temp_f20) * temp_f8);
    if (gl_nonprim_checkspace(5.9e-44f) == 0) {
        return;
    }
    sp44 = 0x2A;
    sp40 = gl_n_nonprim;
    gl_compile(4, &sp40);
    gl_savemmode();
    __GLloadmatrix(sp);
    gl_restoremmode();
}

void gl_identifymatrix(void *arg0) {
    arg0->unk38 = 5.263544247e-315;
    arg0->unk34 = 0.0f;
    arg0->unk30 = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk24 = 5.263544247e-315;
    arg0->unk20 = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk10 = 5.263544247e-315;
    arg0->unkC = 0.0f;
    arg0->unk8 = 0.0f;
    arg0->unk4 = 0.0f;
    arg0->unk0 = 1.0f;
}
