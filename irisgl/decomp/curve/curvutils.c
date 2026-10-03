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
    /* 0x2B00 */ char pad2B00[0x2C0];               /* maybe part of currentVertex[0x2D]? */
    /* 0x2DC0 */ s32 unk2DC0;                       /* inferred */
    /* 0x2DC4 */ s16 unk2DC4;                       /* inferred */
    /* 0x2DC6 */ char pad2DC6[2];
    /* 0x2DC8 */ s32 unk2DC8;                       /* inferred */
    /* 0x2DCC */ s32 unk2DCC;                       /* inferred */
    /* 0x2DD0 */ s16 unk2DD0;                       /* inferred */
    /* 0x2DD2 */ s16 unk2DD2;                       /* inferred */
    /* 0x2DD4 */ s16 unk2DD4;                       /* inferred */
    /* 0x2DD6 */ s16 unk2DD6;                       /* inferred */
    /* 0x2DD8 */ char pad2DD8[0x110];               /* maybe part of unk2DD6[0x89]? */
} gl_wstate;                                        /* size = 0x2EE8 */

extern ? sub_0f020000;

void gl_findb(s32 arg0, s32 arg1) {
    ? *temp_a6;
    ? *var_a5;
    ? *var_v0;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF91094;
    temp_a6 = temp_at->unk-5184;
    var_a5 = temp_a6;
    var_v0 = temp_a6;
    if (arg1 != 0) {
        if ((temp_a6 != NULL) && (temp_a6->unk8 != arg0)) {
loop_3:
            var_a5 = var_v0;
            var_v0 = *var_v0;
            if (var_v0 != NULL) {
                if (var_v0->unk8 == arg0) {
                    goto block_5;
                }
                goto loop_3;
            }
        } else {
            goto block_5;
        }
    } else if (var_v0 != NULL) {
        if (var_v0->unk4 != arg0) {
loop_11:
            var_a5 = var_v0;
            var_v0 = *var_v0;
            if (var_v0 != NULL) {
                if (var_v0->unk4 == arg0) {
                    goto block_5;
                }
                goto loop_11;
            }
        } else {
block_5:
            if ((var_v0 != NULL) && (var_a5 != var_v0)) {
                temp_at->unk-5184 = var_v0;
                *var_a5 = *var_v0;
                *var_v0 = temp_a6;
            }
        }
    }
}

void gl_findbasis(void) {
    gl_findb();
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        gl_ErrorHandler(8, 2, &sub_0f020000 + 0x2408);
    }
}

void gl_g_defbasis(s64 arg0, void *arg1) {
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f3_3;
    f32 temp_f3_4;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a4;
    void *temp_a6;
    void *temp_at;
    void *temp_v0;
    void *var_a1;
    void *var_a7;

    gl_findb(0);
    var_a7 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        goto block_1;
    }
    temp_v0 = gl_malloc(0x4C, saved_reg_gp->unk-3B9C);
    temp_at = saved_reg_gp->unk-5184;
    var_a7 = temp_v0;
    if (temp_v0 != NULL) {
        saved_reg_gp->unk-5184 = temp_v0;
        temp_v0->unk0 = temp_at;
        temp_v0->unk4 = (s32) subroutine_arg0;
block_1:
        var_a0 = 0;
        var_a4 = 0;
        var_a1 = &sub_0f020000 + 0x7898;
        temp_v1 = saved_reg_gp->unk-5180 + 1;
        saved_reg_gp->unk-5180 = temp_v1;
        var_a7->unk8 = (s32) (temp_v1 - 1);
        do {
            temp_f6 = var_a1->unk5C;
            temp_f5 = var_a1->unk58;
            temp_f7 = var_a1->unk54;
            temp_f4 = var_a1->unk50;
            temp_a6 = (var_a0 * 4) + var_a7;
            temp_f3 = arg1->unk0 * temp_f4;
            temp_a6->unkC = temp_f3;
            temp_f2 = (arg1->unk10 * temp_f7) + temp_f3;
            temp_a6->unkC = temp_f2;
            temp_f1 = (arg1->unk20 * temp_f5) + temp_f2;
            temp_a6->unkC = temp_f1;
            temp_a6->unkC = (f32) ((arg1->unk30 * temp_f6) + temp_f1);
            temp_f3_2 = arg1->unk4 * temp_f4;
            temp_a6->unk10 = temp_f3_2;
            temp_f2_2 = (arg1->unk14 * temp_f7) + temp_f3_2;
            temp_a6->unk10 = temp_f2_2;
            temp_f1_2 = (arg1->unk24 * temp_f5) + temp_f2_2;
            temp_a6->unk10 = temp_f1_2;
            temp_a6->unk10 = (f32) ((arg1->unk34 * temp_f6) + temp_f1_2);
            temp_f3_3 = arg1->unk8 * temp_f4;
            temp_a6->unk14 = temp_f3_3;
            temp_f2_3 = (arg1->unk18 * temp_f7) + temp_f3_3;
            temp_a6->unk14 = temp_f2_3;
            temp_f1_3 = (arg1->unk28 * temp_f5) + temp_f2_3;
            temp_a6->unk14 = temp_f1_3;
            temp_a6->unk14 = (f32) ((arg1->unk38 * temp_f6) + temp_f1_3);
            temp_f3_4 = arg1->unkC * temp_f4;
            temp_a6->unk18 = temp_f3_4;
            temp_f2_4 = (arg1->unk1C * temp_f7) + temp_f3_4;
            temp_a6->unk18 = temp_f2_4;
            temp_f1_4 = (arg1->unk2C * temp_f5) + temp_f2_4;
            temp_a6->unk18 = temp_f1_4;
            var_a1 += 0x10;
            var_a4 += 1;
            var_a0 += 4;
            temp_a6->unk18 = (f32) ((arg1->unk3C * temp_f6) + temp_f1_4);
        } while (var_a4 != 4);
    }
}

void gl_i_curvebasis(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_findbasis(arg0, 0);
    gl_wstatep->unk2DC0 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
}

void gl_c_curvebasis(s16 arg0) {
    if (saved_reg_gp->unk-517C == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7928);
        saved_reg_gp->unk-517C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_curvebasis(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_findbasis((s64) *arg0, 0);
    gl_wstatep->unk2DC0 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
}

void gl_i_curveprecision(s64 arg0) {
    s64 sp8;

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unk2DC4 = (s16) arg0;
}

void gl_c_curveprecision(s16 arg0) {
    if (saved_reg_gp->unk-5178 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7938);
        saved_reg_gp->unk-5178 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_curveprecision(s64 arg0) {
    s64 sp8;

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unk2DC4 = *arg0;
}

void gl_i_patchprecision(s64 arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;

    if (gl_inMoveDraw != 0) {
        sp10 = arg1;
        sp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unk2DD0 = (s16) arg0;
    gl_wstatep->unk2DD2 = (s16) arg1;
}

void gl_c_patchprecision(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5174 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7948, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5174 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_patchprecision(s64 arg0) {
    s64 sp8;

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unk2DD0 = (s16) arg0->unk0;
    gl_wstatep->unk2DD2 = (s16) arg0->unk4;
}

void gl_i_patchbasis(s64 arg0, s64 arg1) {
    s64 sp18;

    if (gl_inMoveDraw != 0) {
        sp18 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_findbasis(arg0, 0);
    gl_wstatep->unk2DC8 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
    gl_findbasis(arg1, 0, gl_wstatep);
    gl_wstatep->unk2DCC = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
}

void gl_c_patchbasis(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5170 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7958, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5170 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_patchbasis(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_findbasis((s64) arg0->unk0, 0);
    gl_wstatep->unk2DC8 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
    gl_findbasis((s64) arg0->unk4, 0);
    gl_wstatep->unk2DCC = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
}

void gl_i_patchcurves(s64 arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;

    if (gl_inMoveDraw != 0) {
        sp10 = arg1;
        sp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unk2DD4 = (s16) arg0;
    gl_wstatep->unk2DD6 = (s16) arg1;
}

void gl_c_patchcurves(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-516C == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7968, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-516C = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_patchcurves(s64 arg0) {
    s64 sp8;

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unk2DD4 = (s16) arg0->unk0;
    gl_wstatep->unk2DD6 = (s16) arg0->unk4;
}

void gl_init_curves(void *arg0) {
    arg0->unk2DCC = 0;
    arg0->unk2DC8 = 0;
    arg0->unk2DC0 = 0;
    arg0->unk2DD6 = 2;
    arg0->unk2DD4 = 2;
    arg0->unk2DD2 = 0xA;
    arg0->unk2DD0 = 0xA;
    arg0->unk2DC4 = 0xA;
}

void gl_free_bases(void) {
    ? *temp_s7;
    ? *var_a0;

    var_a0 = saved_reg_gp->unk-5184;
    if (var_a0 != NULL) {
        do {
            temp_s7 = *var_a0;
            gl_free(var_a0, saved_reg_gp->unk-3B98);
            var_a0 = temp_s7;
        } while (temp_s7 != NULL);
    }
    saved_reg_gp->unk-5184 = NULL;
}
