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
    /* 0x0100 */ char pad100[0x10];                 /* maybe part of screenState[5]? */
    /* 0x0110 */ s32 unk110;                        /* inferred */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0x9F8];                /* maybe part of unk114[0x27F]? */
    /* 0x0B10 */ ? unkB10;                          /* inferred */
    /* 0x0B10 */ char padB10[0x28];
    /* 0x0B38 */ f64 unkB38;                        /* inferred */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x1EC];               /* maybe part of currentVertex[0x1F]? */
    /* 0x2CEC */ s32 unk2CEC;                       /* inferred */
    /* 0x2CF0 */ char pad2CF0[0x1F8];               /* maybe part of unk2CEC[0x7F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glColor4fv(f32 *);                                /* extern */
? glFogf(?, u16);                                   /* extern */
? glFogfv(?, f32 *);                                /* extern */
? glFogi(?, ?);                                     /* extern */
? glIndexf(f32, s32, s32, s32);                     /* extern */
? glIndexs(s64, s32, void (*)());                   /* extern */
extern s32 gl_zrangemap;
extern ? sub_0f020000;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x40, 0x44, 0x50, 0x54, 0x58, 0x5c], gap at: 0x48. */
void __iglooRestoreUsrMat(void) {
    s64 sp60;
    f32 *temp_a0;
    gl_wstate *temp_s0;
    s32 var_v0;

    temp_s0 = gl_wstatep;
    if ((gl_wstatep->unkBA8 != GLUE_F64(saved_reg_f31, 0U)) || (gl_wstatep->unkBB0 != GLUE_F64(saved_reg_f31, 0U))) {
        temp_a0 = gl_wstatep->modelviewStack.stack[0][1];
        unksp48 = (s64) temp_a0;
        var_v0 = __iglooGetMatrixMode(temp_a0);
        if (temp_s0->unkBB0 != GLUE_F64(saved_reg_f31, 0U)) {
            sp60 = (s64) var_v0;
            __iglooGetMatrix(1.4733e-320, sp);
            __iglooMatrixMode(0x1700);
            __iglooLoadIdentity();
            __iglooTranslate(0, (f32) -unksp48->unk58, unksp48);
            __iglooMultMatrix(sp);
            unksp48->unk58 = (f64) GLUE_F64(saved_reg_f31, 0U);
        }
        if (temp_s0->unkBA8 != GLUE_F64(saved_reg_f31, 0U)) {
            sp60 = (s64) var_v0;
            __iglooMatrixMode(0x1701);
            __iglooTranslate(0, (f32) -unksp48->unk50);
            unksp48->unk50 = (f64) GLUE_F64(saved_reg_f31, 0U);
        }
        __iglooMatrixMode((s64) var_v0);
        if (unksp48->unk0 == 1) {
            unksp48->unk4 = 1;
            temp_s0->unkD8 = slowBegin;
        }
    }
}

void gl_depthcue(s64 arg0, s32 arg1) {
    f32 *temp_s1;
    gl_wstate *temp_s0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_f14;

    temp_s1 = gl_wstatep->modelviewStack.stack[0][1];
    temp_s0 = gl_wstatep;
    if (((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == arg0) && (arg1 != 1)) {
        return;
    }
    gl_wstatep->modelviewStack.stack[0][1][0] = (bitwise f32) arg0;
    if (arg0 != 0) {
        __iglooSetEnable(0xB60, 1, gl_wstatep);
        glFogi(0xB65, 0x2601);
        temp_s1->unk4 = 1;
        temp_s0->unkD8 = slowBegin;
        if ((*(void **)0x1004)->unk14->unk10 != 0) {
            glColor4fv(temp_s1 + 8);
            glFogfv(0xB66, temp_s1 + 0x18);
        } else {
            __iglooGetFloatv(0xB01, temp_s1 + 0x60, 1);
            temp_f14 = (s32) temp_s1->unk60;
            temp_a1 = temp_s0->unk2F50;
            temp_a0 = (s32) (temp_f14 & 0xFFFF) >> temp_a1;
            temp_s1->unk60 = (f32) temp_a0;
            glIndexf((f32) (temp_s1->unk28 << temp_s0->unk2F50), temp_f14, temp_a0, temp_a1);
            glFogf(0xB61, temp_s1->unk2A);
            if (gl_iglooGouraudCIDepthCue != 0) {
                __iglooShadeModel(0x1D01);
            }
        }
        __iglooSetColorProcsToDepthCue(temp_s0);
        if ((bitwise s32) temp_s0->modelviewStack.stack[2][3][3] != 0) {
            __iglooSetEnable(0xB50, 0);
        }
    } else {
        __iglooSetEnable(0xB60, 0, gl_wstatep);
        __iglooRestoreUsrMat();
        temp_s1->unk4 = 0;
        __iglooSyncLmcolor(temp_s0);
        glColor4fv(&temp_s0->modelviewStack.stack[3][2][2]);
        glIndexf((f32) (((s32) temp_s1->unk60 & 0xFFFF) << temp_s0->unk2F50));
        if (gl_iglooGouraudCIDepthCue != 0) {
            if ((*(void *)0x1004)->unk14->unk10 == 0) {
                if (temp_s0->unk114->unk14 == 0) {
                    __iglooShadeModel(0x1D00);
                }
            }
        }
        if ((bitwise s32) temp_s0->modelviewStack.stack[2][3][3] != 0) {
            __iglooOglLightingOn(temp_s0);
        }
    }
}

void gl_i_depthcue(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_depthcue(arg0, 0);
}

void gl_c_depthcue(s32 arg0) {
    if (saved_reg_gp->unk-5168 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x79B0);
        saved_reg_gp->unk-5168 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_depthcue(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_depthcue((s64) *arg0, 0);
}

void gl_g_shaderange(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-5164 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        sp28 = (s64) arg3;
        gl_intrptab_insert(&sub_0f020000 + 0x79C0);
        saved_reg_gp->unk-5164 = 1;
    }
    gl_compile(6, sp, arg2, arg3);
}

void gl_n_shaderange(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_lshaderange(arg0->unk0, arg0->unk2, arg0->unk4, arg0->unk6);
}

void gl_g_lshaderange(s16 arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-5160 == 0) {
        sp40 = arg1;
        sp38 = (s64) arg2;
        sp30 = (s64) arg3;
        gl_intrptab_insert(&sub_0f020000 + 0x79D0);
        saved_reg_gp->unk-5160 = 1;
    }
    gl_compile(8, sp, (s16) arg2, (s16) arg3);
}

void gl_n_lshaderange(void *arg0) {
    s64 sp18;
    s32 var_s1;
    s32 var_s2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    sp18 = var_ra;
    var_s2 = arg0->unk8;
    var_s1 = arg0->unk4;
    if (gl_zrangemap != 0) {
        var_s1 = gl_mapzrange(var_s1);
        var_s2 = gl_mapzrange(var_s2);
    }
    gl_lshaderange(arg0->unk0, arg0->unk2, (s16) var_s1, (s16) var_s2);
}

void gl_g_RGBrange(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-515C == 0) {
        sp60 = arg1;
        sp58 = (s64) arg2;
        sp50 = (s64) arg3;
        sp48 = M2C_ERROR(/* Read from unset register $a4 */);
        sp40 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp30 = M2C_ERROR(/* Read from unset register $a7 */);
        gl_intrptab_insert(&sub_0f020000 + 0x79E0);
        saved_reg_gp->unk-515C = 1;
    }
    gl_compile(0xA, sp, arg2, arg3, M2C_ERROR(/* Read from unset register $a6 */), M2C_ERROR(/* Read from unset register $a7 */));
}

void gl_n_RGBrange(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_lRGBrange(arg0->unk0, arg0->unk2, arg0->unk4, arg0->unk6);
}

void gl_g_lRGBrange(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;

    if (saved_reg_gp->unk-5158 == 0) {
        sp68 = arg1;
        sp60 = (s64) arg2;
        sp58 = (s64) arg3;
        sp50 = M2C_ERROR(/* Read from unset register $a4 */);
        sp48 = M2C_ERROR(/* Read from unset register $a5 */);
        sp40 = M2C_ERROR(/* Read from unset register $a6 */);
        sp38 = M2C_ERROR(/* Read from unset register $a7 */);
        gl_intrptab_insert(&sub_0f020000 + 0x79F0);
        saved_reg_gp->unk-5158 = 1;
    }
    gl_compile(0xC, sp, arg2, arg3, (s16) M2C_ERROR(/* Read from unset register $a6 */), (s16) M2C_ERROR(/* Read from unset register $a7 */));
}

void gl_n_lRGBrange(void *arg0) {
    s64 sp18;
    s32 temp_s2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    sp18 = var_ra;
    temp_s2 = arg0->unk10;
    if (gl_zrangemap != 0) {
        gl_mapzrange(arg0->unkC);
        gl_mapzrange(temp_s2);
    }
    gl_lRGBrange(arg0->unk0, arg0->unk2, arg0->unk4, arg0->unk6);
}

void gl_lshaderange(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    ? *temp_a5;
    f32 *temp_s0;
    f64 temp_f4;
    f64 temp_f5;
    f64 var_f6;
    f64 var_f7;
    s32 temp_a1;

    temp_f5 = (f64) (second half of f64);
    temp_s0 = gl_wstatep->modelviewStack.stack[0][1];
    temp_a5 = &gl_wstatep->unkB10;
    if (arg0 < arg1) {
        var_f7 = temp_f5;
        var_f6 = second half of f64;
        gl_wstatep->unkB80 = arg0;
        temp_s0->unk2A = (u16) (arg1 - arg0);
    } else {
        var_f6 = temp_f5;
        var_f7 = second half of f64;
        gl_wstatep->unkB80 = arg1;
        temp_s0->unk2A = (u16) (arg0 - arg1);
    }
    temp_f4 = temp_a5->unk28 * var_f7;
    if (gl_zrangemap != 0) {
        temp_s0->unk30 = temp_f4;
        temp_s0->unk38 = (f64) (temp_a5->unk28 * var_f6);
    } else {
        temp_s0->unk30 = (f64) (temp_a5->unk30 + temp_f4);
        temp_s0->unk38 = (f64) (temp_a5->unk30 + (temp_a5->unk28 * var_f6));
    }
    if ((bitwise s32) temp_s0->unk0 == 1) {
        temp_s0->unk4 = 1;
        gl_wstatep->unkD8 = slowBegin;
        temp_a1 = gl_wstatep->unk2F50;
        glIndexs((s64) ((temp_s0->unk28 << temp_a1) << 0x30) >> 0x30, temp_a1, slowBegin);
        glFogf(0xB61);
    }
}

void gl_lRGBrange(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    ? *temp_t2;
    f32 *temp_s0;
    f64 temp_f5;
    f64 var_f0;

    temp_t2 = &gl_wstatep->unkB10;
    temp_s0 = gl_wstatep->modelviewStack.stack[0][1];
    temp_f5 = gl_wstatep->unkB38 * (f64) M2C_ERROR(/* Read from unset register $a6 */);
    if (gl_zrangemap != 0) {
        gl_wstatep->unkB88 = temp_f5;
        var_f0 = temp_t2->unk28 * (second half of f64);
    } else {
        gl_wstatep->unkB88 = (f64) (gl_wstatep->unkB40 + temp_f5);
        var_f0 = temp_t2->unk30 + (second half of f64);
    }
    temp_s0->unk38 = var_f0;
    temp_s0->unk20 = (f32) ((f32) arg2 / 255.0f);
    temp_s0->unk1C = (f32) ((f32) arg1 / 255.0f);
    temp_s0->unk18 = (f32) ((f32) arg0 / 255.0f);
    temp_s0->unk10 = (f32) ((f32) M2C_ERROR(/* Read from unset register $a5 */) / 255.0f);
    temp_s0->unkC = (f32) ((f32) M2C_ERROR(/* Read from unset register $a4 */) / 255.0f);
    temp_s0->unk8 = (f32) ((f32) arg3 / 255.0f);
    if ((bitwise s32) temp_s0->unk0 == 1) {
        temp_s0->unk4 = 1;
        gl_wstatep->unkD8 = slowBegin;
        glColor4fv(temp_s0 + 8);
        glFogfv(0xB66, temp_s0 + 0x18);
    }
}

void SyncDepthCueGeom(void) {
    f64 sp88;
    f64 sp80;
    s64 sp60;
    f64 sp58;
    f64 sp50;
    ? sp10;
    f64 sp8;
    f64 temp_f11;
    f64 temp_f13;
    f64 temp_f14;
    f64 temp_f6;
    f64 temp_f6_2;
    f64 temp_f9;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    gl_wstate *temp_s0;

    temp_s0 = gl_wstatep;
    __iglooRestoreUsrMat();
    sp58 = second half of f64;
    sp50 = temp_s0->unkB88;
    __iglooGetDepthRange(sp, &sp8);
    __iglooGetMatrix(1.474e-320, &sp10);
    if (sp8 != (second half of f64)) {
        temp_f6 = (f64) sp3C;
        temp_f9 = (f64) (second half of f64);
        temp_f11 = temp_f9 - (temp_f6 * (((sp50 * 2.0) - (sp8 + (second half of f64))) / (sp8 - (second half of f64))));
        if (temp_f11 != GLUE_F64(M2C_ERROR(/* Read from unset register $f13 */), 0U)) {
            temp_f14 = (((second half of f64) * 2.0) - (second half of f64)) / (second half of f64);
            temp_f13 = temp_f9 - (temp_f6 * temp_f14);
            if (temp_f13 != (second half of f64)) {
                temp_f6_2 = (((second half of f64) * temp_f14) - (second half of f64)) / temp_f13;
                var_f5 = temp_f6_2;
                var_f4 = second half of f64;
                if ((((second half of f64) < ((((f64) sp4C * (second half of f64)) - (f64) sp48) / temp_f11)) || ((second half of f64) < temp_f6_2)) && (temp_s0->unk2CEC != 2) && !(temp_s0->unk110 & 0x3F)) {
                    if (!(var_f5 < (second half of f64))) {
                        sp88 = second half of f64;
                        sp80 = var_f5;
                        var_f6 = var_f5;
                    } else {
                        sp88 = second half of f64;
                        sp80 = var_f5;
                        var_f6 = second half of f64;
                    }
                    temp_s0->unkBA8 = var_f6;
                    temp_s0->unkBB0 = (f64) -var_f6;
                    __iglooGetMatrix(second half of f64, (bitwise ? *) temp_f14, 0xBA6, &sp10);
                    sp60 = __iglooGetMatrixMode();
                    __iglooMatrixMode(0x1701);
                    __iglooTranslate(0, (f32) temp_s0->unkBA8);
                    __iglooMatrixMode(0x1700);
                    __iglooLoadIdentity();
                    __iglooTranslate(0, (f32) temp_s0->unkBB0);
                    __iglooMultMatrix(&sp10);
                    __iglooMatrixMode(sp60);
                    var_f4 = (second half of f64) - temp_s0->unkBA8;
                    var_f5 = second half of f64;
                }
                temp_s0->unkBA0 = (f64) -var_f5;
                temp_s0->unkB98 = (f64) -var_f4;
                glFogf(0xB63);
                glFogf(second half of f64, 0xB64U);
            }
        }
    }
}

s32 gl_g_getdcm(void) {
    return (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF8EFD8)->unk-5B00)->unkB58;
}
