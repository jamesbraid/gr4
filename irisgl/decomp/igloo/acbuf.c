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
    /* 0x0100 */ char pad100[0x14];                 /* maybe part of screenState[6]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0xA28];                /* maybe part of unk114[0x28B]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glAccum(?, f32, gl_wstate *, s64, s64, s32);      /* extern */
? glClearAccum(f32, f32, gl_wstate *, gl_wstate *); /* extern */
? perror(void *, ?);                                /* extern */
extern ? sub_0f020000;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_acbuf(f64 arg1, s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg0;
        unksp8 = arg1;
        __iglooNCloseMoveDraw();
    }
    gl_n_acbuf(arg0);
}

void gl_c_acbuf(f32 arg1, s32 arg0) {
    if (saved_reg_gp->unk-52B0 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6EC8);
        saved_reg_gp->unk-52B0 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_acbuf(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_acbuf((s64) arg0->unk0);
}

void __igloo_acbuf(f64 arg1, s32 arg0) {
    s64 sp10;
    f32 temp_f4;
    f32 var_f5;
    gl_wstate *temp_s1;
    s32 temp_a3;
    s32 temp_s0;
    s32 temp_s1_2;
    s32 temp_v0;
    void *temp_a0;

    temp_s1 = gl_wstatep;
    sp10 = __iglooGetGraphicsType();
    temp_v0 = __iglooGetVisualInfo();
    temp_a0 = temp_s1->unk114;
    if ((temp_a0->unk24 == 0) || (temp_a3 = temp_v0->unk38, (temp_a3 == 0)) || (temp_a0->unk38 != 0x10)) {
        gl_ErrorHandler(0x62, 2, &sub_0f020000 + 0x2020);
        return;
    }
    if (sp10 != 2) {
        temp_s1_2 = (1 << (temp_a3 - 1)) - 1;
        switch (arg0) {                             /* irregular */
        default:
            perror(&sub_0f020000 + 0x2038, 0x10);
            break;
        case 0:
            temp_f4 = (bitwise f32) subroutine_arg2 / (f32) temp_s1_2;
            var_f5 = -1.0f;
            if (temp_f4 < -1.0f) {

            } else {
                var_f5 = temp_f4;
                if (temp_f4 > 1.0f) {
                    var_f5 = 1.0f;
                }
            }
            glClearAccum(var_f5, var_f5, (gl_wstate *)2, (gl_wstate *)0x10);
            glClear(0x200U);
            break;
        case 1:
            if ((bitwise f32) subroutine_arg2 < (second half of f64)) {

            } else if ((bitwise f32) subroutine_arg2 > 256.0f) {

            }
            glAccum(0x100, 2.2e-44f);
            break;
        case 2:
            if ((bitwise f32) subroutine_arg2 < (second half of f64)) {

            } else if ((bitwise f32) subroutine_arg2 > 256.0f) {

            }
            glAccum(0x101, 2.2e-44f);
            break;
        case 5:
            glAccum(second half of f64, (f32) temp_s1_2 * 0.00390625f, (gl_wstate *)0x104, 0x10);
            break;
        case 3:
            if ((bitwise f32) subroutine_arg2 < (second half of f64)) {

            } else if ((bitwise f32) subroutine_arg2 > 1.0f) {

            }
            if ((sp10 == 3) || (sp10 == 4)) {
                temp_s0 = __iglooIsEnabled(0xB71, sp10, sp10, temp_a3) & 0xFF;
                if (temp_s0 != 0) {
                    __iglooSetEnable(0xB71, 0);
                }
                glAccum(second half of f64, (f32) temp_s1_2 * 0.00390625f, (gl_wstate *)0x102);
                if (temp_s0 != 0) {
                    __iglooSetEnable(0xB71, 1);
                }
            } else {
                glAccum(second half of f64, (f32) temp_s1_2 * 0.00390625f, (gl_wstate *)0x102, sp10, sp10, temp_a3);
            }
            break;
        case 4:
            glAccum(second half of f64, 3.63e-43f, (gl_wstate *)0x10);
            break;
        }
        return;
    }
    gl_n_acbuf(second half of f64, arg0, 0x10);
}

void __igloo_acbuf_hw(f32 arg1, s32 arg0) {
    s64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    s64 sp10;
    f64 sp8;
    f64 sp0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f9;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    gl_wstate *temp_a2;
    s32 temp_cond;
    s32 temp_cond_2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_a2 = gl_wstatep;
    switch (arg0) {                                 /* irregular */
    default:
        gl_ErrorHandler(0x6E, 2, &sub_0f020000 + 0x2058, gl_wstatep);
        break;
    case 5:
        temp_f5 = arg1 * 0.00390625f;
        temp_f6 = gl_wstatep->unk2F74;
        if (arg1 < 0.0f) {
            if (temp_f6 > 0.0f) {
                if (temp_f6 > 1.0f) {
                    sp8 = (f64) (temp_f6 / (temp_f6 + -1.0f));
                } else {
                    sp8 = GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0x3F800000U);
                }
                sp10 = (s64) temp_a2;
                if ((f64) gl_wstatep->unk2F78 != 1.0) {
                    sp18 = (bitwise f64) (1.0f / (second half of f64));
                    sp28 = (bitwise f64) temp_f5;
                    glAccum(0x103, 6e-45f, temp_a2, (s64) gl_wstatep);
                }
                glAccum(0x104);
                sp10->unk2F7C = (f32) (sp10->unk2F7C * (f32) sp8);
                sp10->unk2F70 = (f32) (second half of f64);
                sp10->unk2F74 = (f32) (sp10->unk2F74 + -1.0f);
                sp10->unk2F78 = 1.0f;
            } else {
                glAccum(0x104, 6e-45f, temp_a2, (s64) gl_wstatep);
            }
        } else {
            gl_wstatep->unk2F74 = (f32) (temp_f6 + 1.0f);
            temp_f9 = temp_a2->unk2F78;
            temp_f8 = temp_a2->unk2F74;
            temp_a2->unk2F70 = (f32) ((temp_a2->unk2F70 * temp_f9) + 1.0f);
            if ((second half of f64) < (f64) temp_f8) {
                temp_f0 = ((temp_f8 + -1.0f) / temp_f8) * temp_f9;
                temp_f13 = temp_a2->unk2F7C * temp_f0;
                temp_cond = temp_f13 < 1.0f;
                temp_a2->unk2F7C = 1.0f;
                if (!temp_cond) {
                    if (temp_f13 > 1.0f) {
                        temp_a2->unk2F7C = temp_f13;
                    }
                } else {
                    sp28 = (bitwise f64) temp_f5;
                    sp18 = (bitwise f64) (1.0f - temp_f0);
                    glAccum(0x103, 6e-45f, temp_a2, (s64) gl_wstatep);
                    var_ra = sp30;
                }
                sp30 = var_ra;
            }
            sp30 = var_ra;
            glAccum(0x104);
        }
        break;
    case 1:
        var_f5 = -256.0f;
        if (arg1 < -256.0f) {

        } else {
            var_f5 = arg1;
            if (arg1 > 256.0f) {
                var_f5 = 256.0f;
            }
        }
        temp_f6_2 = gl_wstatep->unk2F74;
        if (arg1 < 0.0f) {
            if (temp_f6_2 > 0.0f) {
                if (temp_f6_2 > 1.0f) {
                    sp0 = (f64) (temp_f6_2 / (temp_f6_2 + -1.0f));
                } else {
                    sp0 = GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0x3F800000U);
                }
                sp10 = (s64) temp_a2;
                if ((f64) gl_wstatep->unk2F78 != 1.0) {
                    sp18 = (bitwise f64) (1.0f / (second half of f64));
                    sp20 = (bitwise f64) var_f5;
                    glAccum(0x103, (bitwise f32) temp_a2, gl_wstatep);
                }
                glAccum(0x100);
                temp_f0_2 = (sp10->unk2F70 + -1.0f) / sp10->unk2F78;
                sp10->unk2F74 = (f32) (second half of f64);
                sp10->unk2F78 = 1.0f;
                sp10->unk2F7C = (f32) (sp10->unk2F7C * (f32) sp0);
                sp10->unk2F70 = temp_f0_2;
            } else {
                glAccum(0x100, (bitwise f32) temp_a2, gl_wstatep);
            }
        } else {
            gl_wstatep->unk2F74 = (f32) (temp_f6_2 + 1.0f);
            temp_f8_2 = temp_a2->unk2F74;
            temp_a2->unk2F70 = (f32) ((second half of f64) + (second half of f64));
            if ((f64) temp_f8_2 > 1.0) {
                temp_f0_3 = ((temp_f8_2 + -1.0f) / temp_f8_2) * temp_a2->unk2F78;
                temp_f13_2 = temp_a2->unk2F7C * temp_f0_3;
                temp_cond_2 = temp_f13_2 < 1.0f;
                temp_a2->unk2F7C = 1.0f;
                if (!temp_cond_2) {
                    if (temp_f13_2 > 1.0f) {
                        temp_a2->unk2F7C = temp_f13_2;
                    }
                } else {
                    sp10 = (s64) temp_a2;
                    sp20 = (bitwise f64) var_f5;
                    sp18 = (bitwise f64) (1.0f - temp_f0_3);
                    glAccum(0x103, (bitwise f32) temp_a2, gl_wstatep);
                    var_ra = sp30;
                }
                sp30 = var_ra;
            }
            sp30 = var_ra;
            temp_a2->unk2F78 = 1.0f;
            glAccum(0x100);
        }
        break;
    case 0:
        var_f5_2 = -256.0f;
        gl_wstatep->unk2F70 = 0.0f;
        temp_a2->unk2F74 = 0.0f;
        temp_a2->unk2F78 = 1.0f;
        temp_a2->unk2F7C = 1.0f;
        if (arg1 < -256.0f) {

        } else {
            var_f5_2 = arg1;
            if (arg1 > 256.0f) {
                var_f5_2 = 256.0f;
            }
        }
        glClearAccum(var_f5_2, var_f5_2, temp_a2, gl_wstatep);
        glClear(0x200U);
        break;
    case 3:
        if (arg1 < 0.0f) {
            var_f4 = 0.0f;
        } else {
            var_f5_3 = arg1;
            if (arg1 > 1.0f) {
                var_f5_3 = 1.0f;
            }
            var_f4 = var_f5_3;
        }
        temp_f6_3 = gl_wstatep->unk2F70;
        if (temp_f6_3 != 0.0f) {
            var_f4_2 = temp_f6_3 * var_f4;
        } else {
            var_f4_2 = var_f4;
        }
        temp_f5_2 = gl_wstatep->unk2F7C * (gl_wstatep->unk2F78 * var_f4_2);
        if (!(temp_f5_2 < -4.0f)) {
            if (temp_f5_2 > 3.99999f) {

            }
        }
        glAccum(0x102, 6e-45f, temp_a2, (s64) gl_wstatep);
        break;
    case 2:
        gl_wstatep->unk2F70 = 1.0f;
        temp_a2->unk2F7C = 1.0f;
        temp_a2->unk2F78 = 1.0f;
        temp_a2->unk2F74 = 1.0f;
        if (arg1 < -256.0f) {

        } else if (arg1 > 256.0f) {

        }
        glAccum(0x101, (bitwise f32) temp_a2, gl_wstatep);
        break;
    case 4:
        gl_wstatep->unk2F78 = (f32) (gl_wstatep->unk2F78 * arg1);
        break;
    }
}
