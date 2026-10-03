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
    /* 0x0100 */ char pad100[0xA10];                /* maybe part of screenState[0x285]? */
    /* 0x0B10 */ ? unkB10;                          /* inferred */
    /* 0x0B10 */ char padB10[0x30];
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

extern ? sub_0f020000;

void gl_clear(void) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp18;
    f32 sp8;
    s32 sp4;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 var_v0;
    void *temp_v0;

    sp28 = (s64) gl_wstatep;
    sp30 = (s64) gl_wstatep->modelviewStack.stack[0][1];
    sp38 = (s64) (*(void **)0x1004)->unk14->unk10;
    if (__iglooGetRenderMode() == 0x1C00) {
        temp_v0 = sp28->unk114;
        if ((temp_v0 == NULL) || (var_v0 = 1, (temp_v0->unkC == 0))) {
            var_v0 = 0;
        }
        if ((var_v0 == 0) || (__iglooGetRenderMode(0x1C00) != 0x1C00)) {
            temp_a3 = sp30->unk0;
            if (sp38 != 0) {
                if (temp_a3 != 0) {
                    glClearColor(sp28->unkC30, sp28->unkC38, (bitwise f32) sp38, (bitwise f32) temp_a3);
                } else {
                    __iglooGetFloatv(0xB00, &sp8, sp38, temp_a3);
                    glClearColor(sp8, sp10, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
                }
            } else if (temp_a3 != 0) {
                glClearIndex(sp30->unk60);
            } else {
                __iglooGetFloatv(0xB01, &sp8, sp38, temp_a3);
                glClearIndex(sp8);
            }
            glClear(0x4000U);
        } else {
            sp18 = __iglooGetMatrixMode();
            __iglooMatrixMode(0x1700);
            __iglooPushMatrix();
            __iglooLoadIdentity();
            __iglooMatrixMode(0x1701);
            __iglooPushMatrix();
            __iglooLoadIdentity();
            if (sp38 != 0) {
                __iglooGetAndSetEnable(0x6FE7, 0, sp);
                if (sp30->unk0 != 0) {
                    sp28->unk98(sp28, sp28 + 0xC30);
                }
                __iglooSetSavedEnable(0x6FE7, 0, subroutine_arg0);
            } else {
                __iglooGetAndSetEnable(0x1FE7, 0, &sp4);
                if (sp30->unk0 != 0) {
                    sp28->unkB0(sp28);
                }
                __iglooSetSavedEnable(0x1FE7, 0, sp4);
            }
            glRecti(-1, -1, 1, 1);
            temp_a3_2 = sp30->unk0;
            if (sp38 != 0) {
                if (temp_a3_2 != 0) {
                    sp28->unk98(sp28, sp30 + 8, sp38, temp_a3_2);
                }
            } else if (temp_a3_2 != 0) {
                glIndexi((s32) sp28->unkB80);
            }
            __iglooMatrixMode(0x1700);
            __iglooPopMatrix();
            __iglooMatrixMode(0x1701);
            __iglooPopMatrix();
            __iglooMatrixMode(sp18);
        }
    }
}

void gl_i_clear(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_i_gl_scrrect();
}

void gl_c_clear(void) {
    if (saved_reg_gp->unk-5204 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7230);
        saved_reg_gp->unk-5204 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_clear(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_i_gl_scrrect();
}

void gl_i_zclear(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glClearDepth(1.0);
    glClear(0x100U);
}

void gl_c_zclear(void) {
    if (saved_reg_gp->unk-5200 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7240);
        saved_reg_gp->unk-5200 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_zclear(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glClearDepth(1.0);
    glClear(0x100U);
}

void gl_i_sclear(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    glClearStencil((s32) arg0);
    glClear(0x400U);
}

void gl_c_sclear(s32 arg0) {
    if (saved_reg_gp->unk-51FC == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7250);
        saved_reg_gp->unk-51FC = 1;
    }
    gl_compile(4, sp);
}

void gl_n_sclear(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glClearStencil(*subroutine_arg0);
    glClear(0x400U);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x28, 0x2c, 0x30, 0x34], gap at: 0x20. */
void _czclear(u64 arg0, s64 arg1) {
    s32 sp8;
    ? *temp_s0;
    s64 temp_a2;
    u8 temp_v0;

    temp_v0 = (*(void **)0x1004)->unk14->unk13;
    unksp18 = arg1;
    temp_s0 = &gl_wstatep->unkB10;
    unksp20 = (s64) temp_v0;
    if (temp_v0 != 1) {
        sp8 = 0;
        __iglooGetIndexMask(&sp8);
        __iglooIndexMask(-1);
        glClearIndex((f32) ((u64) (arg0 << 0x20) >> 0x20));
    } else {
        __iglooGetColorMask(sp);
        __iglooColorMask(1U, 1U, 1U, 1U);
        temp_a2 = arg0 & 0xFF;
        glClearColor((f32) temp_a2 / 255.0f, (f32) ((arg0 >> 0x10) & 0xFF) / 255.0f, (bitwise f32) temp_a2, (bitwise f32) (arg0 >> 0x18));
    }
    if (temp_s0->unkC == 0) {
        __iglooDepthMask(1);
    }
    glClearDepth(temp_s0->unk30 + (second half of f64));
    glClear(0x4100U);
    if (temp_s0->unkC == 0) {
        __iglooDepthMask(0);
    }
    if (unksp20 != 1) {
        __iglooIndexMask(sp8);
    } else {
        __iglooColorMask(subroutine_arg0, subroutine_arg0, subroutine_arg0, subroutine_arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_czclear(s64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_sclear(arg0, arg1);
}

void gl_c_czclear(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-51F8 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f020000 + 0x7260, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-51F8 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_czclear(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_sclear((s64) arg0->unk0, (s64) arg0->unk4);
}
