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
    /* 0x0100 */ char pad100[0x9E4];                /* maybe part of screenState[0x27A]? */
    /* 0x0AE4 */ s32 unkAE4;                        /* inferred */
    /* 0x0AE8 */ char padAE8[4];
    /* 0x0AEC */ s32 unkAEC;                        /* inferred */
    /* 0x0AF0 */ s32 unkAF0;                        /* inferred */
    /* 0x0AF4 */ s32 unkAF4;                        /* inferred */
    /* 0x0AF8 */ s32 unkAF8;                        /* inferred */
    /* 0x0AFC */ s32 unkAFC;                        /* inferred */
    /* 0x0B00 */ s32 unkB00;                        /* inferred */
    /* 0x0B04 */ s32 unkB04;                        /* inferred */
    /* 0x0B08 */ s32 unkB08;                        /* inferred */
    /* 0x0B0C */ char padB0C[0x34];                 /* maybe part of unkB08[0xE]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glAlphaFunc(s32, s32);                            /* extern */
? glBlendColorEXT(f64, f64);                        /* extern */
extern ? sub_0f020000;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_blendfunction(s64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_blendfunction(arg0, arg1);
}

void gl_c_blendfunction(s32 arg0, s32 arg1, f32 arg2) {
    s64 sp28;
    f32 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5274 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7020, (s64) arg1);
        var_a2 = 1e-45f;
        saved_reg_gp->unk-5274 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_blendfunction(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_blendfunction((s64) arg0->unk0, (s64) arg0->unk4);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c], gap at: 0x10. */
void gl_i_blendcolor(f64 arg0, f64 arg1, f64 arg3) {
    f64 var_f5;
    f64 var_f7;

    var_f5 = arg1;
    var_f7 = arg0;
    if (gl_inMoveDraw != 0) {
        unksp20 = arg3;
        unksp18 = var_f5;
        unksp10 = arg1;
        unksp8 = var_f7;
        __iglooNCloseMoveDraw();
        var_f7 = second half of f64;
        var_f5 = second half of f64;
    }
    glBlendColorEXT(var_f7, var_f5);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x40, 0x44], gap at: 0x30. */
void gl_c_blendcolor(f32 arg0, f64 arg1, f32 arg3) {
    if (saved_reg_gp->unk-5270 == 0) {
        unksp38 = arg1;
        unksp30 = arg1;
        unksp28 = (bitwise f64) arg3;
        gl_intrptab_insert(&sub_0f020000 + 0x7030);
        saved_reg_gp->unk-5270 = 1;
    }
    gl_compile(0xA, sp, arg3);
}

void gl_n_blendcolor(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glBlendColorEXT((bitwise f64) arg0->unk0, (bitwise f64) arg0->unk8);
}

void gl_i_logicop(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_logicop(arg0);
}

void gl_c_logicop(s32 arg0) {
    if (saved_reg_gp->unk-526C == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7040);
        saved_reg_gp->unk-526C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_logicop(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_logicop((s64) *arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_afunction(s64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_alphafunc(arg0, arg1);
}

void gl_c_afunction(s32 arg0, s32 arg1, f32 arg2) {
    s64 sp28;
    f32 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5268 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7050, (s64) arg1);
        var_a2 = 1e-45f;
        saved_reg_gp->unk-5268 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_afunction(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_alphafunc((s64) arg0->unk0, (s64) arg0->unk4);
}

void gl_alphafunc(s64 arg0, s64 arg1) {
    s32 temp_a1;
    s32 temp_s8;

    temp_s8 = arg1 + 0x200;
    gl_wstatep->unkAE4 = temp_s8;
    if (arg1 != 7) {
        __iglooSetEnable(0xBC0, 1);
    } else {
        __iglooSetEnable(0xBC0, 0);
    }
    temp_a1 = arg0 & ~0xFF;
    if (temp_a1 != 0) {
        if (arg0 >= 0) {

        }
    }
    glAlphaFunc(temp_s8, temp_a1);
}

void __iglooRebindBlendLogicopData(gl_wstate *arg0) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;

    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        temp_a0 = arg0->unkAEC;
        if (temp_a0 != 0) {
            if (arg0->unkAF0 != 0) {
                if (arg0->unkB08 == 0xBE2) {
                    __iglooSetEnable(0xBE2, 1);
                    __iglooBlendEquationEXT(arg0->unkAF4);
                    temp_a0_2 = arg0->unkAF4;
                    if ((temp_a0_2 != 0x8007) && (temp_a0_2 != 0x8008)) {
                        __iglooBlendFunc(arg0->unkAF8, arg0->unkAFC);
                    }
                } else {
                    __iglooSetEnable(0xBE2, 1);
                    __iglooLogicOp(arg0->unkB04);
                    __iglooBlendEquationEXT(0xBF1);
                }
            } else if (temp_a0 != 0) {
                __iglooSetEnable(0xBE2, 1);
                __iglooBlendEquationEXT(arg0->unkAF4);
                temp_a0_3 = arg0->unkAF4;
                if ((temp_a0_3 != 0x8007) && (temp_a0_3 != 0x8008)) {
                    __iglooBlendFunc(arg0->unkAF8, arg0->unkAFC);
                }
            } else {
                goto block_12;
            }
        } else {
block_12:
            if (arg0->unkAF0 != 0) {
                __iglooSetEnable(0xBE2, 1);
                __iglooLogicOp(arg0->unkB04);
                __iglooBlendEquationEXT(0xBF1);
            } else {
                __iglooSetEnable(0xBE2, 0);
            }
        }
    } else if (arg0->unkAF0 != 0) {
        __iglooLogicOp(arg0->unkB04);
        __iglooSetEnable(0xBF1, 1);
    } else {
        __iglooSetEnable(0xBF1, 0);
    }
}

void gl_blendfunction(s64 arg0, s64 arg1) {
    s64 sp20;
    gl_wstate *temp_s1;
    s32 var_a2;
    s64 var_ra;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_s1 = gl_wstatep;
    if ((arg0 < 0xF) && (arg0 >= 0)) {
        if (arg1 < 0xD) {
            if (arg1 < 0) {
                goto block_4;
            }
        } else {
            goto block_5;
        }
    } else {
block_4:
block_5:
        gl_ErrorHandler(0x6E, 2, &sub_0f020000 + 0x2120);
        var_ra = sp20;
    }
    temp_s1->unkB08 = 0xBE2;
    if (arg0 != 1) {
        var_a2 = arg0 * 4;
        goto block_8;
    }
    var_a2 = arg0 * 4;
    if (arg1 == 0) {
        sp20 = var_ra;
        temp_s1->unkAEC = 0;
    } else {
block_8:
        temp_s1->unkAEC = 1;
        if (arg0 != 0xD) {
            if (arg0 != 0xE) {
                sp20 = var_ra;
                temp_v1 = &sub_0f020000 + 0x6FA8;
                temp_s1->unkAF4 = 0x8006;
                temp_s1->unkAFC = ((arg1 * 4) + temp_v1)->unk40;
                temp_s1->unkAF8 = *(var_a2 + temp_v1);
            } else {
                sp20 = var_ra;
                temp_s1->unkAFC = 0;
                temp_s1->unkAF8 = 1;
                temp_s1->unkAF4 = 0x8008;
            }
        } else {
            sp20 = var_ra;
            temp_s1->unkAFC = 0;
            temp_s1->unkAF8 = 1;
            temp_s1->unkAF4 = 0x8007;
        }
    }
    __iglooRebindBlendLogicopData(temp_s1);
}

void gl_logicop(s64 arg0) {
    gl_wstate *temp_s8;
    s32 temp_a1;
    s32 temp_at;

    temp_at = arg0 & 0xF;
    temp_s8 = gl_wstatep;
    temp_a1 = temp_at != 3;
    temp_s8->unkAF0 = temp_a1;
    temp_s8->unkB04 = temp_at + 0x1500;
    temp_s8->unkB00 = temp_at;
    temp_s8->unkB08 = 0xBF1;
    if (temp_at == 3) {
        __iglooLogicOp(0x1503, temp_a1);
    }
    __iglooRebindBlendLogicopData(temp_s8);
}
