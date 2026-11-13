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
    /* 0x00D8 */ void (*unkD8)();                   /* inferred */
    /* 0x00DC */ char padDC[4];
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
    /* 0x010A */ char pad10A[0xA36];                /* maybe part of unk108[0x51C]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x358];               /* maybe part of currentVertex[0x36]? */
    /* 0x2E58 */ s8 unk2E58;                        /* inferred */
    /* 0x2E59 */ char pad2E59[0x8F];                /* maybe part of unk2E58[0x90]? */
} gl_wstate;                                        /* size = 0x2EE8 */

extern ? sub_0f030000;

s32 gl_g_getmatrix(s64 arg0) {
    s64 sp20;
    gl_wstate *temp_s0;

    temp_s0 = gl_wstatep;
    gl_n_pushmatrix(temp_s0->unk108);
    if ((bitwise s32) temp_s0->modelviewStack.stack[0][1][0] == 1) {
        if (temp_s0->unk108 == 1) {
            sp20 = M2C_ERROR(/* Read from unset register $v0 */);
            __iglooRestoreUsrMat((gl_wstate *)1);
            temp_s0->modelviewStack.stack[0][1][1] = 1e-45f;
            temp_s0->unkD8 = slowBegin;
        }
    }
    return __iglooGetMatrix(M2C_ERROR(/* Read from unset register $v0 */), subroutine_arg0);
}

void gl_matrixmode(s16 arg0) {
    s64 sp8;
    s64 sp0;

    sp8 = (s64) gl_wstatep;
    if (gl_wstatep->unk108 == arg0) {
        return;
    }
    gl_n_pushmatrix(arg0);
    sp0 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
        if ((arg0 == 0) || (sp8->unk108 == 0)) {
            gl_g_polarview((? *)0x1700);
            gl_g_polarview((? *)0x1701);
            gl_g_polarview((? *)0x1702);
        }
        sp8->unk108 = arg0;
        __iglooMatrixMode(sp0, sp8);
    } else {
        gl_ErrorHandler(0x62, 2, saved_reg_gp - 0x3DB8);
    }
}

void gl_i_mmode(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_matrixmode((s16) arg0);
}

void gl_c_mmode(s16 arg0) {
    if (saved_reg_gp->unk-4D04 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5168);
        saved_reg_gp->unk-4D04 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_mmode(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_matrixmode(*arg0);
}

s32 gl_g_getmmode(void) {
    return (s32) (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0421C)->unk-5B00)->unk108;
}

void igl_loadMatrix(s32 arg0) {
    f32 *temp_s2;
    f32 var_a1;
    s16 temp_s1;
    s32 temp_v0;

    unksp8 = (s64) gl_wstatep;
    gl_wstatep->unk2E58 = 0;
    temp_s2 = gl_wstatep->modelviewStack.stack[0][1];
    temp_s1 = gl_wstatep->unk108;
    temp_v0 = __iglooGetPickingMatrix();
    if ((temp_v0 != 0) && (temp_s1 != 2) && (temp_s1 != 3)) {
        __iglooLoadMatrix(temp_v0);
        __iglooMultMatrix(arg0);
        return;
    }
    var_a1 = temp_s2->unk0;
    if ((bitwise s32) var_a1 == 1) {
        if (temp_s1 != 3) {
            __iglooRestoreUsrMat();
            var_a1 = 1e-45f;
            temp_s2->unk4 = 1;
            unksp8->unkD8 = slowBegin;
        }
    }
    __iglooLoadMatrix(arg0, var_a1);
}

void gl_i_loadmatrix(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    igl_loadMatrix((s32) arg0);
}

void gl_c_loadmatrix(s64 arg0, s64 arg2) {
    ? sp4;
    s64 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4D00 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5158);
        var_a2 = 1;
        saved_reg_gp->unk-4D00 = (s32) 1;
    }
    gl_g_polarview(&sp4, arg0, var_a2);
    gl_compile(0x22, sp);
}

void gl_n_loadmatrix(s32 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    igl_loadMatrix(arg0);
}

void gl_i_multmatrix(s32 arg0) {
    s64 sp10;
    s16 temp_a1;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp10;
    }
    sp10 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        temp_a1 = gl_wstatep->unk108;
        sp10 = var_ra;
        if (temp_a1 == 1) {
            gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
            gl_wstatep->unkD8 = slowBegin;
            __iglooRestoreUsrMat(gl_wstatep, temp_a1, 1, slowBegin);
        }
    }
    __iglooMultMatrix(arg0);
}

void gl_c_multmatrix(s64 arg0, s64 arg2) {
    ? sp4;
    s64 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4CFC == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5148);
        var_a2 = 1;
        saved_reg_gp->unk-4CFC = (s32) 1;
    }
    gl_g_polarview(&sp4, arg0, var_a2);
    gl_compile(0x22, sp);
}

void gl_n_multmatrix(s32 arg0) {
    s64 sp10;
    s16 temp_a1;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp10;
    }
    sp10 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        temp_a1 = gl_wstatep->unk108;
        sp10 = var_ra;
        if (temp_a1 == 1) {
            gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
            gl_wstatep->unkD8 = slowBegin;
            __iglooRestoreUsrMat(gl_wstatep, temp_a1, 1, slowBegin);
        }
    }
    __iglooMultMatrix(arg0);
}

void gl_i_popmatrix(void) {
    s64 sp8;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp8;
    }
    sp8 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
        gl_wstatep->unkD8 = slowBegin;
        __iglooRestoreUsrMat();
    }
    __iglooPopMatrix();
}

void gl_c_popmatrix(void) {
    if (saved_reg_gp->unk-4CF8 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5138);
        saved_reg_gp->unk-4CF8 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_popmatrix(s32 arg0) {
    s64 sp10;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp10;
    }
    sp10 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
        gl_wstatep->unkD8 = slowBegin;
        __iglooRestoreUsrMat((gl_wstate *)1);
    }
    __iglooPopMatrix();
}

void gl_i_pushmatrix(void) {
    s64 sp18;
    s64 sp8;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    sp18 = var_ra;
    sp0 = (s64) gl_wstatep;
    sp8 = (s64) gl_wstatep->modelviewStack.stack[0][1];
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        __iglooRestoreUsrMat((gl_wstate *)1);
        sp8->unk4 = 1;
        sp0->unkD8 = slowBegin;
    }
    __iglooPushMatrix(1);
}

void gl_c_pushmatrix(void) {
    if (saved_reg_gp->unk-4CF4 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5128);
        saved_reg_gp->unk-4CF4 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_pushmatrix(s16 arg0) {
    s64 sp20;
    s64 sp8;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    sp20 = var_ra;
    sp0 = (s64) gl_wstatep;
    sp8 = (s64) gl_wstatep->modelviewStack.stack[0][1];
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        __iglooRestoreUsrMat();
        sp8->unk4 = 1;
        sp0->unkD8 = slowBegin;
    }
    __iglooPushMatrix();
}

void IglToOglMatrixMode(s32 arg0) {
    switch (arg0) {                                 /* irregular */
    case 1:
        return;
    case 0:
        /* fallthrough */
    case 2:
        return;
    case 3:
        return;
    }
}

void mmodeToMatrixName(s32 arg0) {
    switch (arg0) {                                 /* irregular */
    case 1:
        return;
    case 0:
        /* fallthrough */
    case 2:
        return;
    case 3:
        return;
    }
}

void gl_i_scale(f32 arg0, f64 arg1) {
    s64 sp20;
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_f5 = arg1;
    if (gl_inMoveDraw != 0) {
        sp18 = arg1;
        sp10 = var_f5;
        __iglooNCloseMoveDraw();
        var_f5 = second half of f64;
        var_ra = sp20;
    }
    sp20 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        sp20 = var_ra;
        if (gl_wstatep->unk108 == 1) {
            sp18 = arg1;
            sp10 = var_f5;
            gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
            gl_wstatep->unkD8 = slowBegin;
            __iglooRestoreUsrMat();
            var_f5 = second half of f64;
        }
    }
    __iglooScale(arg0, var_f5);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_scale(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4CF0 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5118);
        saved_reg_gp->unk-4CF0 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_scale(void *arg0) {
    s64 sp10;
    s16 temp_a1;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp10;
    }
    sp10 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        temp_a1 = gl_wstatep->unk108;
        sp10 = var_ra;
        if (temp_a1 == 1) {
            gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
            gl_wstatep->unkD8 = slowBegin;
            __iglooRestoreUsrMat(gl_wstatep, temp_a1, 1, slowBegin);
        }
    }
    __iglooScale(arg0->unk0, (bitwise f64) arg0->unk8);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14], gap at: 0x8. */
void gl_i_translate(f32 arg0, f64 arg1) {
    s64 sp28;
    f64 sp20;
    f64 sp18;
    f64 var_f5;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_f5 = arg1;
    if (gl_inMoveDraw != 0) {
        sp20 = arg1;
        sp18 = var_f5;
        __iglooNCloseMoveDraw();
        var_f5 = second half of f64;
        var_ra = sp28;
    }
    sp28 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        sp28 = var_ra;
        unksp8 = (s64) gl_wstatep;
        if (gl_wstatep->unk108 == 1) {
            sp20 = arg1;
            sp18 = var_f5;
            __iglooRestoreUsrMat();
            var_f5 = second half of f64;
            unksp8->unkB5C = 1;
            unksp8->unkD8 = slowBegin;
        }
    }
    __iglooTranslate(arg0, var_f5);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_translate(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-4CEC == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5108);
        saved_reg_gp->unk-4CEC = 1;
    }
    gl_compile(8, sp);
}

void gl_n_translate(void *arg0) {
    s64 sp18;
    s64 sp0;
    s16 temp_a1;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    sp18 = var_ra;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        temp_a1 = gl_wstatep->unk108;
        sp18 = var_ra;
        sp0 = (s64) gl_wstatep;
        if (temp_a1 == 1) {
            __iglooRestoreUsrMat(gl_wstatep, temp_a1, 1);
            sp0->unkB5C = 1;
            sp0->unkD8 = slowBegin;
        }
    }
    __iglooTranslate(arg0->unk0, (bitwise f64) arg0->unk8);
}

void gl_rotatex_multmat(f32 arg0, f32 arg1, f32 arg3) {
    __GLmultmatrix(sp, 0.0f, arg0, arg1, 0.0f, 0.0f, arg1, arg3, 0.0f, 0.0f, 0.0f, 5.263544247e-315);
}

void gl_rotatey_multmat(f32 arg0, f32 arg1, f32 arg3) {
    __GLmultmatrix(sp, 0.0f, (bitwise f32) 0.0078125, 0.0f, arg1, 0.0f, arg3, 0.0f, 0.0f, 0.0f, 0.0f, 5.263544247e-315);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x50, 0x54, 0x58, 0x5c], gap at: 0x48. */
void gl_g_lookat(f32 arg0, f32 arg1, f64 arg3) {
    f64 sp18;
    f64 sp10;
    f32 temp_f0;
    f32 temp_f26;
    f32 temp_f26_2;
    f32 temp_f28;
    f32 temp_f30;
    f32 temp_f5;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 var_f15;
    f32 var_f15_2;
    f32 var_f6;
    f32 var_f6_2;

    unksp48 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_f28 = M2C_ERROR(/* Read from unset register $f17 */);
    temp_f30 = M2C_ERROR(/* Read from unset register $f16 */);
    sp18 = arg3;
    if (gl_nonprim_checkspace(0x54) != 0) {
        gl_compile(4, sp);
        __GLrotate((s64) (unksp48 * -0x1000000000000) >> 0x30, 0x7A);
        temp_f0 = temp_f28 - arg1;
        temp_f5 = (f32) sp18 - arg0;
        temp_f7 = temp_f30 - arg1;
        temp_f26 = (temp_f5 * temp_f5) + (temp_f0 * temp_f0);
        temp_f7_2 = sqrtf((temp_f7 * temp_f7) + temp_f26);
        temp_f26_2 = sqrtf(temp_f26);
        if (temp_f7_2 != 0.0f) {
            var_f15 = temp_f26_2 / temp_f7_2;
            sp10 = (bitwise f64) temp_f5;
            var_f6 = (arg1 - temp_f30) / temp_f7_2;
        } else {
            var_f15 = 1.0f;
            sp10 = (bitwise f64) temp_f5;
            var_f6 = 0.0f;
        }
        gl_rotatex_multmat(var_f15, -var_f6);
        var_f15_2 = 1.0f;
        var_f6_2 = 0.0f;
        if (temp_f26_2 != 0.0f) {
            var_f6_2 = (bitwise f32) sp10 / temp_f26_2;
            var_f15_2 = (arg1 - temp_f28) / temp_f26_2;
        }
        gl_rotatey_multmat(var_f15_2, var_f6_2);
        __GLtranslate(-arg0, -arg1);
    }
}

void gl_g_polarview(f64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    f64 sp10;

    sp18 = arg3;
    sp20 = arg2;
    sp28 = arg1;
    sp10 = arg0;
    if (gl_nonprim_checkspace(0x18) == 0) {
        return;
    }
    gl_compile(4, sp);
    __GLtranslate(0.0f, -(f32) sp10);
    __GLrotate((s64) (sp18 * -0x1000000000000) >> 0x30, 0x7A);
    __GLrotate((s64) (sp20 * -0x1000000000000) >> 0x30, 0x78);
    __GLrotate((s64) (sp28 * -0x1000000000000) >> 0x30, 0x7A);
}

void gl_copymatrix4dEx(void *arg0, void *arg1) {
    arg0->unk0 = (f32) arg1->unk0;
    arg0->unk4 = (f32) arg1->unk4;
    arg0->unk8 = (f32) arg1->unk8;
    arg0->unkC = (f32) arg1->unkC;
    arg0->unk10 = (f32) arg1->unk10;
    arg0->unk14 = (f32) arg1->unk14;
    arg0->unk18 = (f32) arg1->unk18;
    arg0->unk1C = (f32) arg1->unk1C;
    arg0->unk20 = (f32) arg1->unk20;
    arg0->unk24 = (f32) arg1->unk24;
    arg0->unk28 = (f32) arg1->unk28;
    arg0->unk2C = (f32) arg1->unk2C;
    arg0->unk30 = (f32) arg1->unk30;
    arg0->unk34 = (f32) arg1->unk34;
    arg0->unk38 = (f32) arg1->unk38;
    arg0->unk3C = (f32) arg1->unk3C;
}

void InitMatrix(s32 arg0) {
    s32 var_a0;
    s32 var_s3;

    __iglooMatrixMode();
    if (arg0 != 0x1700) {
        if (arg0 != 0x1701) {
            var_a0 = subroutine_arg0;
            if (arg0 == 0x1702) {
                var_a0 = subroutine_arg2->unkC0;
            }
        } else {
            var_a0 = subroutine_arg2->unkB4;
        }
    } else {
        var_a0 = subroutine_arg2->unkA8;
    }
    var_s3 = var_a0;
    if (var_a0 != 0) {
        do {
            var_s3 -= 1;
            __iglooPopMatrix();
        } while (var_s3 != 0);
    }
    __iglooLoadIdentity();
}
