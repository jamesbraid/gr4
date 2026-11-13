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
    /* 0x2B00 */ char pad2B00[0x1EC];               /* maybe part of currentVertex[0x1F]? */
    /* 0x2CEC */ s32 unk2CEC;                       /* inferred */
    /* 0x2CF0 */ ? unk2CF0;                         /* inferred */
    /* 0x2CF0 */ char pad2CF0[0x14];
    /* 0x2D04 */ s32 unk2D04;                       /* inferred */
    /* 0x2D08 */ ? unk2D08;                         /* inferred */
    /* 0x2D08 */ char pad2D08[0xAE];
    /* 0x2DB6 */ s16 unk2DB6;                       /* inferred */
    /* 0x2DB8 */ s16 unk2DB8;                       /* inferred */
    /* 0x2DBA */ char pad2DBA[0x12E];               /* maybe part of unk2DB8[0x98]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? endselect();                                      /* extern */
? getorigin(void *, s32 *);                         /* extern */
s64 getvaluator(?);                                 /* extern */
? glFeedbackBuffer(s32, s32, void *, ?);            /* extern */
? glInitNames();                                    /* extern */
? glLoadName(s64);                                  /* extern */
? glPassThrough(f32, s64, ?);                       /* extern */
? glPopName();                                      /* extern */
? glPushName(s16, void *, s32);                     /* extern */
? glRenderMode(s64);                                /* extern */
? glSelectBuffer(?, s64, ?, s32);                   /* extern */
? gselect(s64, s64);                                /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void __iglooOverflowPending(void *arg0) {
    s32 temp_a2;
    s32 var_a3;

    temp_a2 = arg0->unk28;
    var_a3 = 1;
    if (temp_a2 != 0) {
        var_a3 = temp_a2;
    }
    arg0->unk1C = (s32) (arg0->unk1C + var_a3 + 3);
}

s32 __iglooGetPickState(void) {
    return (s32) &gl_wstatep->unk2D08;
}

void __iglooReloadNames(void *arg0) {
    s16 *temp_a0;
    s32 var_s1;
    s32 var_s7;

    glInitNames();
    var_s7 = 0;
    if (arg0->unk28 > 0) {
        var_s1 = 0;
        do {
            var_s7 += 1;
            temp_a0 = arg0->unk20 + var_s1;
            var_s1 += 2;
            glPushName(*temp_a0);
        } while (var_s7 < arg0->unk28);
    }
}

void copyNameStack(s64 arg0) {
    s32 *var_a0_2;
    s32 *var_a4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a4_2;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_ra_3;
    s32 var_ra_4;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    void *temp_s1;
    void *temp_v0;
    void *var_a1_3;
    void *var_t1;

    temp_v0 = __iglooGetCurrentContextInfo();
    temp_s1 = temp_v0->unk2C + 0x2CEC;
    if (temp_s1->unk2C != 0) {
        if (arg0 != 0x1C00) {

        } else {
            goto block_44;
        }
    } else {
block_44:
        __iglooRenderMode(arg0, temp_v0);
    }
    temp_a4 = temp_s1->unk44;
    var_a1 = temp_s1->unk24;
    temp_a6 = temp_s1->unk20;
    if (saved_reg_gp->unk-5034 >= temp_a4) {
        var_v0 = M2C_ERROR(/* Read from unset register $v0 */) - 1;
        var_a4 = temp_s1->unk30;
        if (var_v0 != -1) {
            var_t0 = temp_s1->unk2C;
            if (var_t0 == 0) {
loop_23:
                temp_a0 = *var_a4;
                var_v0 -= 1;
                var_a4 += 0xC;
                if ((var_a1 + temp_a0) < temp_a6) {
                    var_a1 += 1;
                    var_ra = var_a1 * 2;
                    (temp_s1->unk1C + var_ra)->unk-2 = (s16) temp_a0;
                    var_a0 = temp_a0 - 1;
                    if (var_a0 != -1) {
                        var_t2 = (var_a0 + 1) & 3;
                        temp_t0 = var_a0;
                        if (var_t2 != 0) {
                            do {
                                var_a0 -= 1;
                                var_a4 += 4;
                                var_t2 -= 1;
                                var_ra += 2;
                                (temp_s1->unk1C + var_ra)->unk-2 = (s16) var_a4->unk-4;
                            } while (var_t2 != 0);
                        }
                        if (((s64) subroutine_arg0 >> 2) != 0) {
                            var_a1_2 = var_ra;
                            var_a4_2 = var_a0;
                            var_a0_2 = var_a4;
                            do {
                                temp_a1 = var_a1_2 + 2;
                                (temp_s1->unk1C + temp_a1)->unk-2 = (s16) var_a0_2->unk0;
                                temp_a1_2 = temp_a1 + 2;
                                (temp_s1->unk1C + temp_a1_2)->unk-2 = (s16) var_a0_2->unk4;
                                var_a0_2 += 0x10;
                                temp_a1_3 = temp_a1_2 + 2;
                                (temp_s1->unk1C + temp_a1_3)->unk-2 = (s16) var_a0_2->unk-8;
                                var_a4_2 -= 4;
                                var_a1_2 = temp_a1_3 + 2;
                                (temp_s1->unk1C + var_a1_2)->unk-2 = (s16) var_a0_2->unk-4;
                            } while (var_a4_2 != -1);
                            var_a4 = var_a0_2;
                        }
                        var_a1 = temp_t0 + var_a1 + 1;
                    }
                    temp_s1->unk28 = (s32) (temp_s1->unk28 + 1);
                } else {
                    if (temp_a6 == var_a1) {
                        var_t0 = 1;
                        temp_s1->unk2C = 1;
                    }
                    if (var_t0 == 0) {
                        var_a1 += 1;
                        (temp_s1->unk1C + (var_a1 * 2))->unk-2 = (s16) temp_a0;
                    }
                    var_a0_3 = temp_a0 - 1;
                    if (var_a0_3 != -1) {
                        var_ra_2 = var_a1 * 2;
                        if (temp_s1->unk2C == 0) {
loop_38:
                            if (var_ra_2 != (temp_a6 * 2)) {
                                var_a1 += 1;
                                var_a4 += 4;
                                var_ra_2 += 2;
                                (temp_s1->unk1C + var_ra_2)->unk-2 = (s16) var_a4->unk-4;
                            } else {
                                temp_s1->unk2C = 1;
                            }
                            var_a0_3 -= 1;
                            if ((var_a0_3 != -1) && (temp_s1->unk2C == 0)) {
                                goto loop_38;
                            }
                        }
                    }
                }
                if (var_v0 != -1) {
                    var_t0 = temp_s1->unk2C;
                    if (var_t0 == 0) {
                        goto loop_23;
                    }
                }
            }
        }
    } else {
        var_t1 = temp_s1->unk3C;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_t0_2 = temp_s1->unk2C;
            if (var_t0_2 == 0) {
                if ((var_a1 + temp_a4) < temp_a6) {
                    var_a1 += 1;
                    var_ra_3 = var_a1 * 2;
                    (temp_s1->unk1C + var_ra_3)->unk-2 = (s16) temp_a4;
                    var_a0_4 = temp_a4 - 1;
                    temp_a7 = var_a0_4;
                    if (var_a0_4 != -1) {
                        temp_a4_2 = var_a0_4 + 1;
                        var_v0_2 = temp_a4_2 & 3;
                        if (var_v0_2 != 0) {
                            do {
                                var_a0_4 -= 1;
                                var_t1 += 2;
                                var_v0_2 -= 1;
                                var_ra_3 += 2;
                                (temp_s1->unk1C + var_ra_3)->unk-2 = (s16) var_t1->unk-2;
                            } while (var_v0_2 != 0);
                        }
                        if ((temp_a4_2 >> 2) != 0) {
                            var_v0_3 = var_a0_4;
                            var_a0_5 = var_ra_3;
                            var_a1_3 = var_t1;
                            do {
                                temp_a0_2 = var_a0_5 + 2;
                                (temp_s1->unk1C + temp_a0_2)->unk-2 = (s16) var_a1_3->unk0;
                                temp_a0_3 = temp_a0_2 + 2;
                                (temp_s1->unk1C + temp_a0_3)->unk-2 = (s16) var_a1_3->unk2;
                                var_a1_3 += 8;
                                temp_a0_4 = temp_a0_3 + 2;
                                (temp_s1->unk1C + temp_a0_4)->unk-2 = (s16) var_a1_3->unk-4;
                                var_v0_3 -= 4;
                                var_a0_5 = temp_a0_4 + 2;
                                (temp_s1->unk1C + var_a0_5)->unk-2 = (s16) var_a1_3->unk-2;
                            } while (var_v0_3 != -1);
                        }
                        var_a1 = temp_a7 + var_a1 + 1;
                    }
                    temp_s1->unk28 = (s32) (temp_s1->unk28 + 1);
                } else {
                    if (temp_a6 == var_a1) {
                        var_t0_2 = 1;
                        temp_s1->unk2C = 1;
                    }
                    if (var_t0_2 == 0) {
                        var_a1 += 1;
                        (temp_s1->unk1C + (var_a1 * 2))->unk-2 = (s16) temp_a4;
                    }
                    var_a0_6 = temp_a4 - 1;
                    if ((var_a0_6 != -1) && (temp_s1->unk2C == 0)) {
                        var_ra_4 = var_a1 * 2;
loop_67:
                        if (var_ra_4 != (temp_a6 * 2)) {
                            var_a1 += 1;
                            var_t1 += 2;
                            var_ra_4 += 2;
                            (temp_s1->unk1C + var_ra_4)->unk-2 = (s16) var_t1->unk-2;
                        } else {
                            temp_s1->unk2C = 1;
                        }
                        var_a0_6 -= 1;
                        if ((var_a0_6 != -1) && (temp_s1->unk2C == 0)) {
                            goto loop_67;
                        }
                    }
                }
            }
        }
    }
    temp_s1->unk24 = var_a1;
    temp_s1->unk38 = 4;
    if (arg0 == 0x1C02) {
        if (temp_s1->unk2C == 0) {
            temp_a2 = temp_s1->unk44;
            if (saved_reg_gp->unk-5034 >= temp_a2) {
                gl_n_setpattern(temp_s1 + 0x1C, var_a1, temp_a2, 0x1C02);
            }
        }
    }
}

void igl_initnames(void) {
    s64 sp0;
    ? *temp_a0;

    temp_a0 = &gl_wstatep->unk2D08;
    sp0 = (s64) temp_a0;
    if (gl_wstatep->unk2CEC == 2) {
        gl_n_setpattern(temp_a0);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            gl_n_setpattern((? *)0x1C02);
        }
        sp0->unk28 = 0;
        sp0->unk24 = (s32) (sp0->unk20 - 2);
        if (sp0->unk10 == 0) {
            glInitNames();
        }
    }
}

void igl_popname(void) {
    s64 sp0;
    ? *temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_a2;

    temp_a0 = &gl_wstatep->unk2D08;
    sp0 = (s64) temp_a0;
    if (gl_wstatep->unk2CEC == 2) {
        gl_n_setpattern(temp_a0);
        if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) || (var_a2 = sp0->unk28, ((saved_reg_gp->unk-5034 < var_a2) != 0))) {
            gl_n_setpattern((? *)0x1C02);
            var_a2 = sp0->unk28;
        }
        if (var_a2 > 0) {
            temp_a2 = var_a2 - 1;
            sp0->unk28 = temp_a2;
            sp0->unk24 = (s32) (sp0->unk24 - 2);
            if (sp0->unk10 == 0) {
                temp_a3 = saved_reg_gp->unk-5034;
                if (temp_a2 != temp_a3) {
                    if (temp_a2 < temp_a3) {
                        glPopName();
                    }
                } else {
                    gl_n_setpattern((? *) sp0);
                }
            }
        }
    }
}

void igl_pushname(s64 arg0) {
    s64 sp8;
    s64 sp0;
    ? *temp_a2;
    s32 var_a2;
    s32 var_at;
    void *temp_a1;
    void *temp_a1_2;

    sp0 = arg0;
    temp_a2 = &gl_wstatep->unk2D08;
    sp8 = (s64) temp_a2;
    if (gl_wstatep->unk2CEC == 2) {
        gl_n_setpattern(temp_a2, (s32) temp_a2);
        if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) || (var_a2 = sp8->unk28, var_at = var_a2 < 0x402, ((var_a2 < saved_reg_gp->unk-5034) == 0))) {
            gl_n_setpattern((? *)0x1C02);
            var_a2 = sp8->unk28;
            var_at = var_a2 < 0x402;
        }
        if (var_at != 0) {
            temp_a1 = sp8->unk24;
            sp8->unk28 = (s32) (var_a2 + 1);
            temp_a1_2 = temp_a1 + 2;
            sp8->unk24 = temp_a1_2;
            temp_a1->unk2 = (s16) sp0;
            if ((sp8->unk10 == 0) && (saved_reg_gp->unk-5034 >= sp8->unk28)) {
                glPushName((s16) sp0, temp_a1_2, var_a2);
            }
        }
    }
}

void igl_loadname(s64 arg0) {
    s64 sp8;
    s64 sp0;
    ? *temp_a2;
    s16 *var_a3;
    s32 temp_a4;
    s32 var_a2;

    sp0 = arg0;
    temp_a2 = &gl_wstatep->unk2D08;
    sp8 = (s64) temp_a2;
    if (gl_wstatep->unk2CEC == 2) {
        gl_n_setpattern(temp_a2, (s32) temp_a2);
        if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) || (var_a2 = sp8->unk28, ((saved_reg_gp->unk-5034 < var_a2) != 0))) {
            gl_n_setpattern((? *)0x1C02);
            var_a2 = sp8->unk28;
        }
        temp_a4 = ((void *) sp8)->unk10;
        if (var_a2 != 0) {
            if (temp_a4 != 0) {

            } else if (saved_reg_gp->unk-5034 >= var_a2) {
                glLoadName(sp0);
            }
            goto block_8;
        }
        sp8->unk28 = (s32) (var_a2 + 1);
        var_a3 = sp8->unk24 + 2;
        sp8->unk24 = var_a3;
        if (temp_a4 == 0) {
            glPushName((s16) sp0);
block_8:
            var_a3 = ((void *) sp8)->unk24;
        }
        *var_a3 = (s16) sp0;
    }
}

void gl_g_gselect(s64 arg0, s64 arg1) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    void *temp_a2;
    void *temp_a2_2;
    void *var_a5;

    sp18 = arg1;
    temp_v0 = __iglooGetCurrentContextInfo();
    sp28 = temp_v0;
    var_a5 = temp_v0->unk2C;
    sp10 = temp_v0;
    if (var_a5->unkB58 == 1) {
        __iglooRestoreUsrMat();
        var_a5 = sp28->unk2C;
    }
    sp20 = (s64) (var_a5 + 0x2CEC);
    temp_a2 = saved_reg_gp->unk-38F8;
    if (var_a5->unk2CEC != 0) {
        gl_ErrorHandler(0x10, 2, temp_a2);
        return;
    }
    temp_v0_2 = gl_malloc(0x2000, temp_a2, temp_a2);
    sp28 = temp_v0_2;
    temp_a2_2 = saved_reg_gp->unk-38F8;
    if (temp_v0_2 != 0) {
        sp20->unk30 = (s32) sp28;
        sp20->unk2C = 0;
        sp20->unk28 = 0;
        sp20->unk24 = 0;
        sp20->unk20 = (s32) sp18;
        sp20->unk1C = (s32) subroutine_arg2;
        sp20->unk38 = 4;
        sp20->unk34 = 0x800;
        sp20->unk0 = 2;
        sp20->unk3C = gl_malloc(0x802, temp_a2_2, (void *)0x800, 4);
        if (saved_reg_gp->unk-5034 != 0) {

        } else {
            __iglooGetIntegerv(0xD37, saved_reg_gp - 0x5034);
            temp_v0_3 = __iglooGetGraphicsType();
            sp28 = temp_v0_3;
            if ((temp_v0_3 == 3) || (sp28 == 4)) {
                saved_reg_gp->unk-5034 = (s32) ((s32) saved_reg_gp->unk-5034 >> 1);
            }
        }
        glSelectBuffer(0x800, subroutine_arg0);
        __iglooRenderMode(0x1C02, (void *) sp10);
        gl_n_setpattern();
        return;
    }
    gl_ErrorHandler(2, 2, temp_a2_2);
}

void gl_g_endselect(void) {
    ? *temp_s3;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3A7CC;
    temp_s3 = &gl_wstatep->unk2D08;
    if (gl_wstatep->unk2CEC != 2) {
        gl_ErrorHandler(0x11, 2, temp_gp->unk-38F4);
        return;
    }
    gl_n_setpattern((? *)0x1C00);
    *subroutine_arg0 = 0;
    gl_free(temp_s3->unk14, temp_gp->unk-38F4);
    gl_free(temp_s3->unk20, temp_gp->unk-38F4);
    if (subroutine_arg2->unkB58 == 1) {
        subroutine_arg2->unkB5C = 1;
        subroutine_arg2->unkD8 = slowBegin;
    }
    if (temp_s3->unk10 != 0) {
        temp_s3->unk10 = 0;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void gl_g_pick(s64 arg0, s64 arg1) {
    s32 *temp_s3;

    unksp10 = arg1;
    unksp18 = arg0;
    temp_s3 = &gl_wstatep->unk2CEC;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        __iglooRestoreUsrMat(1);
    }
    temp_s3->unkC8 = 1;
    __iglooGetPickingMatrix();
    gselect(unksp18, unksp10);
}

void gl_g_endpick(void) {
    s32 *temp_s8;

    temp_s8 = &gl_wstatep->unk2CEC;
    endselect();
    temp_s8->unkC8 = 0;
}

void gl_g_picksize(s16 arg0, s16 arg1) {
    if ((arg0 != 0) && (arg1 != 0)) {
        gl_wstatep->unk2DB8 = arg1;
        gl_wstatep->unk2DB6 = arg0;
        return;
    }
    gl_ErrorHandler(0x12, 2, &sub_0f020000 + 0x4B88);
}

void gl_i_loadname(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern((? *) arg0);
}

void gl_c_loadname(s16 arg0) {
    if (saved_reg_gp->unk-5028 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x62A8);
        saved_reg_gp->unk-5028 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_loadname(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern((? *) *arg0);
}

void gl_i_pushname(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern((? *) arg0);
}

void gl_c_pushname(s16 arg0) {
    if (saved_reg_gp->unk-5024 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6298);
        saved_reg_gp->unk-5024 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_pushname(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern((? *) *arg0);
}

void gl_i_popname(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern();
}

void gl_c_popname(void) {
    if (saved_reg_gp->unk-5020 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6288);
        saved_reg_gp->unk-5020 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_popname(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern();
}

void gl_i_initnames(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern();
}

void gl_c_initnames(void) {
    if (saved_reg_gp->unk-501C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6278);
        saved_reg_gp->unk-501C = 1;
    }
    gl_compile(2, sp);
}

void gl_n_initnames(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_setpattern();
}

s32 __iglooGetPickingMatrix(void) {
    void *temp_a3;

    temp_a3 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3A128)->unk-5B00;
    if (temp_a3->unk2DB4 != 0) {
        return (s32) (temp_a3 + 0x2D34);
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x38, 0x3c, 0x40, 0x44, 0x50, 0x54], gap at: 0x20. */
void gl_makepickmat(void) {
    s32 sp8;
    s32 sp4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    s64 temp_a2;
    s64 temp_ra;
    s64 temp_v0;
    s64 temp_v0_2;
    void *temp_s0;

    gl_n_setpattern();
    temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    getorigin(sp, &sp4);
    unksp30 = (bitwise f64) (f32) sp4;
    unksp48 = getvaluator(0x110);
    temp_v0 = getvaluator(0x111);
    temp_s0->unk30 = 0.0f;
    temp_s0->unk34 = 0.0f;
    temp_s0->unk38 = 0.0f;
    temp_s0->unk3C = 0.0f;
    temp_s0->unk44 = 0.0f;
    temp_s0->unk48 = 0.0f;
    temp_s0->unk4C = 0.0f;
    temp_s0->unk50 = 0.0f;
    temp_s0->unk58 = 0.0f;
    temp_s0->unk64 = 0.0f;
    unksp20 = (bitwise f64) (f32) temp_s0->unkB0;
    unksp28 = (bitwise f64) (f32) temp_s0->unkAE;
    __iglooGetViewport(&sp8, &sp8 + 4, &sp8 + 8, &sp8 + 0xC);
    temp_v0_2 = (sp10 + sp8) - 1;
    temp_f6 = (f32) ((((s64) (temp_v0_2 << 0x30) >> 0x30) - ((s64) ((s64) sp8 << 0x30) >> 0x30)) + 1) / (bitwise f32) unksp28;
    temp_ra = (s64) ((s64) spC << 0x30) >> 0x30;
    temp_a2 = (s64) (((sp14 + spC) - 1) << 0x30) >> 0x30;
    temp_f5 = (f32) ((temp_a2 - temp_ra) + 1) / (bitwise f32) unksp20;
    temp_f8 = ((f32) ((s64) (temp_v0_2 << 0x30) >> 0x30) + ((f32) ((s64) ((s64) sp8 << 0x30) >> 0x30) + (((f32) subroutine_arg0 * 2.0f) + (f32) (unksp48 * -2)))) / (second half of f64);
    temp_f7 = ((f32) temp_a2 + ((f32) temp_ra + (((bitwise f32) unksp30 * 2.0f) + (f32) (temp_v0 * -2)))) / (bitwise f32) unksp20;
    temp_s0->unk2C = temp_f6;
    temp_s0->unk40 = temp_f5;
    temp_s0->unk68 = 1.0f;
    temp_s0->unk54 = 1.0f;
    temp_s0->unkA8 = 1.0f;
    temp_s0->unk94 = 1.0f;
    temp_s0->unk6C = (f32) (second half of f64);
    temp_s0->unkA4 = 0.0f;
    temp_s0->unk98 = 0.0f;
    temp_s0->unk90 = 0.0f;
    temp_s0->unk8C = 0.0f;
    temp_s0->unk88 = 0.0f;
    temp_s0->unk84 = 0.0f;
    temp_s0->unk7C = 0.0f;
    temp_s0->unk78 = 0.0f;
    temp_s0->unk74 = 0.0f;
    temp_s0->unk70 = 0.0f;
    temp_s0->unk80 = (f32) ((second half of f64) / (f64) temp_f5);
    temp_s0->unk5C = temp_f8;
    temp_s0->unk60 = temp_f7;
    temp_s0->unk9C = (f32) (-temp_f8 / temp_f6);
    temp_s0->unkA0 = (f32) (-temp_f7 / temp_f5);
}

void gl_g_feedback(s64 arg0, s32 arg1) {
    s64 sp30;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_v0;
    s64 temp_v0_3;
    s64 var_a4;
    s64 var_ra;
    void *temp_a2;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v0_4;

    var_ra = saved_reg_ra;
    temp_s0 = *(void **)0x1004;
    if (saved_reg_gp->unk-5030 == 0) {
        sp0 = arg0;
        temp_v0 = __iglooGetGraphicsType();
        var_ra = sp30;
        if (temp_v0 != 7) {
            if (temp_v0 != 5) {
                saved_reg_gp->unk-502C = 0x602;
                saved_reg_gp->unk-5030 = 1;
            } else {
                saved_reg_gp->unk-502C = 0x603;
                saved_reg_gp->unk-5030 = 2;
            }
        } else {
            saved_reg_gp->unk-502C = 0x602;
            saved_reg_gp->unk-5030 = 1;
        }
    }
    temp_v0_2 = temp_s0->unk2C;
    temp_v0_3 = temp_v0_2 + 0x2CEC;
    temp_a3 = arg0 >> 0x1F;
    var_a4 = arg1 * 2;
    temp_a2 = saved_reg_gp->unk-38F0;
    if (temp_v0_2->unk2CEC != 0) {
        sp30 = var_ra;
        gl_ErrorHandler(0x44, 2, temp_a2, temp_a3);
        return;
    }
    temp_a3_2 = arg0 >> 0x1F;
    if ((((((arg0 ^ temp_a3) - temp_a3) & 3) ^ temp_a3_2) - temp_a3_2) != 0) {
        sp30 = var_ra;
        gl_ErrorHandler(0x44, 2, temp_a2, temp_a3_2);
        return;
    }
    if (arg1 < 0) {
        sp30 = var_ra;
        sp0 = arg0;
        sp8 = temp_v0_3;
        var_a4 = arg1 * -2;
    } else {
        sp30 = var_ra;
        sp0 = arg0;
        sp8 = temp_v0_3;
    }
    sp10 = var_a4;
    temp_v0_4 = gl_malloc((sp10 * 4) + 8, temp_a2, temp_a2, temp_a3_2);
    if (temp_v0_4 == NULL) {
        gl_ErrorHandler(2, 2, saved_reg_gp->unk-38F0);
        return;
    }
    sp8->unk18 = 0;
    sp8->unk14 = temp_v0_4;
    sp8->unkC = temp_v0_4;
    sp8->unk8 = arg1;
    sp8->unk4 = (s32) sp0;
    temp_a0 = sp10 + 2;
    sp8->unk10 = temp_a0;
    sp8->unk0 = 1;
    glFeedbackBuffer(temp_a0, saved_reg_gp->unk-502C, temp_v0_4, 1);
    __iglooRenderMode(0x1C01, temp_s0);
}

void __iglooFreeFBdata(void *arg0) {
    s64 sp0;
    s32 temp_a3;

    temp_a3 = arg0->unk10;
    sp0 = (s64) arg0;
    if (temp_a3 != 0) {
        gl_free(temp_a3, saved_reg_gp->unk-38EC, temp_a3);
        sp0->unkC = 0;
        sp0->unk14 = 0;
        sp0->unk10 = 0;
        sp0->unk8 = 0;
    }
}

void gl_g_endfeedback(void) {
    s64 sp20;
    s64 sp18;
    s32 sp10;
    f32 sp8;
    s32 sp4;
    f32 *var_a1;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f2;
    f32 temp_f9;
    s32 temp_a4;
    s32 temp_f0;
    s32 temp_f0_4;
    s32 temp_f1;
    s32 temp_f1_2;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a6;
    s32 var_a7;
    u32 temp_a6;
    u32 var_v0;
    u8 temp_a5;
    void *temp_a1;
    void *temp_s0;
    void *temp_s0_2;
    void *var_a0;
    void *var_a1_2;
    void *var_a1_3;
    void *var_a1_4;
    void *var_a1_5;
    void *var_a1_6;
    void *var_v0_2;
    void *var_v0_3;
    void *var_v0_4;
    void *var_v0_5;
    void *var_v0_6;

    temp_a1 = *(void **)0x1004;
    temp_s0 = temp_a1->unk2C;
    temp_s0_2 = temp_s0 + 0x2CEC;
    if (temp_s0->unk2CEC != 1) {
        gl_ErrorHandler(0x11, 2, saved_reg_gp->unk-38EC);
        return;
    }
    __iglooRenderMode(0x1C00, temp_a1);
    sp18 = M2C_ERROR(/* Read from unset register $v0 */);
    sp20 = M2C_ERROR(/* Read from unset register $v0 */);
    getorigin(sp, &sp4);
    temp_s0->unk2CEC = 0;
    if (sp18 != -1) {
        if (temp_s0_2->unk18 > 0) {
            if (sp20 > 0) {
                __iglooRenderMode(sp20, NULL);
            }
            var_v0 = temp_s0_2->unk14;
            var_a6 = temp_s0_2->unk18 * 4;
        } else {
            var_v0 = temp_s0_2->unkC;
            var_a6 = sp20 * 4;
        }
        temp_a6 = var_a6 + var_v0;
        temp_a4 = var_v0 < temp_a6;
        var_a7 = 0;
        var_a1 = temp_s0_2->unk4;
        temp_a5 = (*(void *)0x1004)->unk14->unk13;
        if (saved_reg_gp->unk-5030 != 2) {
            var_a0 = temp_s0_2 + 4;
            if (temp_a4 != 0) {
loop_15:
                temp_f0 = (s32) *var_v0;
                var_v0 += 4;
                if ((u32) (temp_f0 - 0x700) < 8U) {
                    var_a4 = 4;
                    switch (temp_f0) {              /* switch 1 */
                    case 0x704:                     /* switch 1 */
                    case 0x705:                     /* switch 1 */
                    case 0x706:                     /* switch 1 */
                        if (temp_a5 == 0) {
                            var_a4 = 1;
                        }
                        var_v0 = (var_a4 * 4) + var_v0 + 0xC;
                        break;
                    case 0x701:                     /* switch 1 */
                        var_a7 += 7;
                        if (temp_s0_2->unk8 >= var_a7) {
                            var_a1->unk0 = 95.0f;
                            var_a1->unk4 = (f32) (var_v0->unk0 + (f32) subroutine_arg0);
                            var_a1->unk8 = (f32) (var_v0->unk4 + (f32) sp4);
                            var_a1->unkC = (f32) ((var_v0->unk8 + -0.5f) * 8.388607e6f * 2.0f);
                            if (temp_a5 != 0) {
                                var_a1->unk10 = (f32) (var_v0->unkC * 255.0f);
                                var_a1->unk14 = (f32) (var_v0->unk10 * 255.0f);
                                temp_f0_2 = var_v0->unk14 * 255.0f;
                                var_v0 += 0x1C;
                                var_a1 += 0x1C;
                                var_a1->unk-4 = temp_f0_2;
                            } else {
                                temp_f2 = var_v0->unkC;
                                var_a1 += 0x1C;
                                var_v0 += 0x10;
                                var_a1->unk-C = temp_f2;
                                var_a1->unk-8 = 0.0f;
                                var_a1->unk-4 = 0.0f;
                            }
                        } else {
                            sp20 = -1;
                        }
                        break;
                    case 0x702:                     /* switch 1 */
                    case 0x707:                     /* switch 1 */
                        var_a7 += 0xE;
                        if (temp_s0_2->unk8 < var_a7) {
                            sp20 = -1;
                        } else {
                            var_a1->unk0 = 103.0f;
                            var_a1->unk4 = (f32) (var_v0->unk0 + (f32) subroutine_arg0);
                            var_a1->unk8 = (f32) (var_v0->unk4 + (f32) sp4);
                            var_a1->unkC = (f32) ((var_v0->unk8 + -0.5f) * 8.388607e6f * 2.0f);
                            if (temp_a5 != 0) {
                                var_a1->unk10 = (f32) (var_v0->unkC * 255.0f);
                                var_a1->unk14 = (f32) (var_v0->unk10 * 255.0f);
                                var_v0_2 = var_v0 + 0x1C;
                                var_a1_2 = var_a1 + 0x1C;
                                var_a1_2->unk-4 = (f32) (var_v0->unk14 * 255.0f);
                            } else {
                                var_a1_2 = var_a1 + 0x1C;
                                var_v0_2 = var_v0 + 0x10;
                                var_a1_2->unk-C = (f32) var_v0->unkC;
                                var_a1_2->unk-8 = 0.0f;
                                var_a1_2->unk-4 = 0.0f;
                            }
                            var_a1_2->unk0 = 113.0f;
                            var_a1_2->unk4 = (f32) (var_v0_2->unk0 + (f32) subroutine_arg0);
                            var_a1_2->unk8 = (f32) (var_v0_2->unk4 + (f32) sp4);
                            var_a1_2->unkC = (f32) ((var_v0_2->unk8 + -0.5f) * 8.388607e6f * 2.0f);
                            if (temp_a5 != 0) {
                                var_a1_2->unk10 = (f32) (var_v0_2->unkC * 255.0f);
                                var_a1_2->unk14 = (f32) (var_v0_2->unk10 * 255.0f);
                                var_v0 = (u32) (var_v0_2 + 0x1C);
                                var_a1 = var_a1_2 + 0x1C;
                                var_a1->unk-4 = (f32) (var_v0_2->unk14 * 255.0f);
                            } else {
                                var_a1 = var_a1_2 + 0x1C;
                                var_v0 = (u32) (var_v0_2 + 0x10);
                                var_a1->unk-C = (f32) var_v0_2->unkC;
                                var_a1->unk-8 = 0.0f;
                                var_a1->unk-4 = 0.0f;
                            }
                        }
                        break;
                    case 0x703:                     /* switch 1 */
                        temp_f1 = (s32) var_v0->unk0;
                        temp_t0 = temp_f1 * 6;
                        var_a7 = temp_t0 + var_a7 + 2;
                        var_v0 += 4;
                        if (temp_s0_2->unk8 < var_a7) {
                            sp20 = -1;
                        } else {
                            var_a1 += 8;
                            var_a1->unk-8 = 72.0f;
                            var_a4_2 = temp_f1 - 1;
                            var_a1->unk-4 = (f32) temp_t0;
                            if (var_a4_2 >= 0) {
loop_41:
                                var_a1->unk0 = var_v0->unk0 + (f32) subroutine_arg0;
                                var_a1->unk4 = (f32) (var_v0->unk4 + (f32) sp4);
                                var_a4_2 -= 1;
                                var_a1->unk8 = (f32) ((var_v0->unk8 + -0.5f) * 8.388607e6f * 2.0f);
                                if (temp_a5 == 0) {
                                    var_a1 += 0x18;
                                    var_v0 += 0x10;
                                    var_a1->unk-8 = 0.0f;
                                    var_a1->unk-4 = 0.0f;
                                    var_a1->unk-C = (f32) var_v0->unk-4;
                                } else {
                                    var_a1->unkC = (f32) (var_v0->unkC * 255.0f);
                                    var_a1->unk10 = (f32) (var_v0->unk10 * 255.0f);
                                    temp_f0_3 = var_v0->unk14 * 255.0f;
                                    var_v0 += 0x1C;
                                    var_a1 += 0x18;
                                    var_a1->unk-4 = temp_f0_3;
                                }
                                if (var_a4_2 != -1) {
                                    goto loop_41;
                                }
                            }
                        }
                        break;
                    case 0x700:                     /* switch 1 */
                        var_v0 += 4;
                        var_a7 += 2;
                        sp8 = var_v0->unk-4;
                        if (temp_s0_2->unk8 < var_a7) {
                            sp20 = -1;
                        } else {
                            switch (unksp9) {       /* switch 2 */
                            case 2:                 /* switch 2 */
                                var_a1->unk0 = 76.0f;
block_45:
                                var_a1 += 4;
                                break;
                            case 0:                 /* switch 2 */
                                var_a1->unk0 = 176.0f;
                                goto block_45;
                            case 1:                 /* switch 2 */
                                var_a1->unk0 = 46.0f;
                                goto block_45;
                            case 3:                 /* switch 2 */
                                var_a1->unk0 = 133.0f;
                                goto block_45;
                            case 4:                 /* switch 2 */
                            case 5:                 /* switch 2 */
                                var_a1->unk0 = 77.0f;
                                goto block_45;
                            case 6:                 /* switch 2 */
                                var_a1->unk0 = 90.0f;
                                goto block_45;
                            }
                            temp_f9 = (f32) unkspA;
                            if (unksp9 != 5) {
                                *var_a1 = temp_f9;
                                var_a1 += 4;
                            } else {
                                var_a1 += 4;
                                var_a1->unk-4 = (f32) (temp_f9 * 0.0078125f);
                            }
                        }
                        break;
                    }
                }
                if (var_v0 < temp_a6) {
                    goto loop_15;
                }
                sp10 = var_a7;
            } else {
                sp10 = 0;
            }
        } else {
            var_a0 = temp_s0_2 + 4;
            if (temp_a4 != 0) {
loop_55:
                temp_f0_4 = (s32) *var_v0;
                var_v0 += 4;
                if ((u32) (temp_f0_4 - 0x700) < 8U) {
                    var_a4_3 = 4;
                    switch (temp_f0_4) {            /* switch 3 */
                    case 0x704:                     /* switch 3 */
                    case 0x705:                     /* switch 3 */
                    case 0x706:                     /* switch 3 */
                        if (temp_a5 == 0) {
                            var_a4_3 = 1;
                        }
                        var_v0 = (var_a4_3 * 4) + var_v0 + 0x1C;
                        break;
                    case 0x701:                     /* switch 3 */
                        var_a7 += 0xD;
                        if (temp_s0_2->unk8 < var_a7) {
                            sp20 = -1;
                        } else {
                            var_a1->unk0 = 95.0f;
                            var_a1->unk4 = 11.0f;
                            var_a1->unk8 = (f32) (var_v0->unk0 + (f32) subroutine_arg0);
                            var_a1->unkC = (f32) (var_v0->unk4 + (f32) sp4);
                            var_a1->unk10 = (f32) ((var_v0->unk8 + -0.5f) * 8.388607e6f * 2.0f);
                            if (temp_a5 != 0) {
                                var_a1->unk14 = (f32) (var_v0->unkC * 255.0f);
                                var_a1->unk18 = (f32) (var_v0->unk10 * 255.0f);
                                var_a1->unk1C = (f32) (var_v0->unk14 * 255.0f);
                                var_a1_3 = var_a1 + 0x24;
                                var_v0_3 = var_v0 + 0x1C;
                                var_a1_3->unk-4 = (f32) (var_v0->unk18 * 255.0f);
                            } else {
                                var_a1_3 = var_a1 + 0x24;
                                var_v0_3 = var_v0 + 0x10;
                                var_a1_3->unk-10 = (f32) var_v0->unkC;
                                var_a1_3->unk-C = 0.0f;
                                var_a1_3->unk-8 = 0.0f;
                                var_a1_3->unk-4 = 0.0f;
                            }
                            var_a1_3->unk0 = (f32) var_v0_3->unk0;
                            var_a1_3->unk4 = (f32) var_v0_3->unk4;
                            var_a1_3->unk8 = (f32) var_v0_3->unk8;
                            var_a1 = var_a1_3 + 0x10;
                            var_v0 = (u32) (var_v0_3 + 0x10);
                            var_a1->unk-4 = (f32) var_v0_3->unkC;
                        }
                        break;
                    case 0x702:                     /* switch 3 */
                    case 0x707:                     /* switch 3 */
                        var_a7 += 0x18;
                        if (temp_s0_2->unk8 < var_a7) {
                            sp20 = -1;
                        } else {
                            var_a1->unk0 = 113.0f;
                            var_a1->unk4 = 22.0f;
                            var_a1->unk8 = (f32) (var_v0->unk0 + (f32) subroutine_arg0);
                            var_a1->unkC = (f32) (var_v0->unk4 + (f32) sp4);
                            var_a1->unk10 = (f32) ((var_v0->unk8 + -0.5f) * 8.388607e6f * 2.0f);
                            if (temp_a5 != 0) {
                                var_a1->unk14 = (f32) (var_v0->unkC * 255.0f);
                                var_a1->unk18 = (f32) (var_v0->unk10 * 255.0f);
                                var_a1->unk1C = (f32) (var_v0->unk14 * 255.0f);
                                var_a1_4 = var_a1 + 0x24;
                                var_v0_4 = var_v0 + 0x1C;
                                var_a1_4->unk-4 = (f32) (var_v0->unk18 * 255.0f);
                            } else {
                                var_a1_4 = var_a1 + 0x24;
                                var_v0_4 = var_v0 + 0x10;
                                var_a1_4->unk-10 = (f32) var_v0->unkC;
                                var_a1_4->unk-C = 0.0f;
                                var_a1_4->unk-8 = 0.0f;
                                var_a1_4->unk-4 = 0.0f;
                            }
                            var_a1_4->unk0 = (f32) var_v0_4->unk0;
                            var_a1_4->unk4 = (f32) var_v0_4->unk4;
                            var_a1_4->unk8 = (f32) var_v0_4->unk8;
                            var_a1_4->unkC = (f32) var_v0_4->unkC;
                            var_a1_4->unk10 = (f32) (var_v0_4->unk10 + (f32) subroutine_arg0);
                            var_a1_4->unk14 = (f32) (var_v0_4->unk14 + (f32) sp4);
                            var_a1_4->unk18 = (f32) ((var_v0_4->unk18 + -0.5f) * 8.388607e6f * 2.0f);
                            if (temp_a5 != 0) {
                                var_a1_4->unk1C = (f32) (var_v0_4->unk1C * 255.0f);
                                var_a1_4->unk20 = (f32) (var_v0_4->unk20 * 255.0f);
                                var_a1_4->unk24 = (f32) (var_v0_4->unk24 * 255.0f);
                                var_a1_5 = var_a1_4 + 0x2C;
                                var_v0_5 = var_v0_4 + 0x2C;
                                var_a1_5->unk-4 = (f32) (var_v0_4->unk28 * 255.0f);
                            } else {
                                var_a1_5 = var_a1_4 + 0x2C;
                                var_v0_5 = var_v0_4 + 0x20;
                                var_a1_5->unk-10 = (f32) var_v0_4->unk1C;
                                var_a1_5->unk-C = 0.0f;
                                var_a1_5->unk-8 = 0.0f;
                                var_a1_5->unk-4 = 0.0f;
                            }
                            var_a1_5->unk0 = (f32) var_v0_5->unk0;
                            var_a1_5->unk4 = (f32) var_v0_5->unk4;
                            var_a1_5->unk8 = (f32) var_v0_5->unk8;
                            var_a1 = var_a1_5 + 0x10;
                            var_v0 = (u32) (var_v0_5 + 0x10);
                            var_a1->unk-4 = (f32) var_v0_5->unkC;
                        }
                        break;
                    case 0x703:                     /* switch 3 */
                        temp_f1_2 = (s32) var_v0->unk0;
                        temp_t0_2 = temp_f1_2 * 0xB;
                        var_a7 = temp_t0_2 + var_a7 + 2;
                        var_v0 += 4;
                        if (temp_s0_2->unk8 < var_a7) {
                            sp20 = -1;
                        } else {
                            var_a1 += 8;
                            var_a4_4 = temp_f1_2 - 1;
                            var_a1->unk-8 = 72.0f;
                            var_a1->unk-4 = (f32) temp_t0_2;
                            if (var_a4_4 >= 0) {
loop_82:
                                var_a1->unk0 = var_v0->unk0 + (f32) subroutine_arg0;
                                var_a1->unk4 = (f32) (var_v0->unk4 + (f32) sp4);
                                var_a4_4 -= 1;
                                var_a1->unk8 = (f32) ((var_v0->unk8 + -0.5f) * 8.388607e6f * 2.0f);
                                if (temp_a5 == 0) {
                                    var_a1_6 = var_a1 + 0x1C;
                                    var_v0_6 = var_v0 + 0x10;
                                    var_a1_6->unk-C = 0.0f;
                                    var_a1_6->unk-8 = 0.0f;
                                    var_a1_6->unk-4 = 0.0f;
                                    var_a1_6->unk-10 = (f32) var_v0_6->unk-4;
                                } else {
                                    var_a1->unkC = (f32) (var_v0->unkC * 255.0f);
                                    var_a1->unk10 = (f32) (var_v0->unk10 * 255.0f);
                                    var_a1->unk14 = (f32) (var_v0->unk14 * 255.0f);
                                    var_a1_6 = var_a1 + 0x1C;
                                    var_v0_6 = var_v0 + 0x1C;
                                    var_a1_6->unk-4 = (f32) (var_v0->unk18 * 255.0f);
                                }
                                var_a1_6->unk0 = (f32) var_v0_6->unk0;
                                var_a1_6->unk4 = (f32) var_v0_6->unk4;
                                var_a1_6->unk8 = (f32) var_v0_6->unk8;
                                var_a1 = var_a1_6 + 0x10;
                                var_v0 = (u32) (var_v0_6 + 0x10);
                                var_a1->unk-4 = (f32) var_v0_6->unkC;
                                if (var_a4_4 != -1) {
                                    goto loop_82;
                                }
                            }
                        }
                        break;
                    case 0x700:                     /* switch 3 */
                        sp8 = var_v0->unk0;
                        var_v0 += 4;
                        if (unksp9 == 0) {
                            var_a7 += 3;
                            if (temp_s0_2->unk8 < var_a7) {
                                sp20 = -1;
                            } else {
                                var_a1 += 8;
                                var_a1->unk-8 = 176.0f;
                                var_a1->unk-4 = (f32) unkspA;
                            }
                        }
                        break;
                    }
                }
                if (var_v0 < temp_a6) {
                    goto loop_55;
                }
                sp10 = var_a7;
            } else {
                sp10 = 0;
            }
        }
    } else {
        memset(temp_s0_2->unk4, 0, temp_s0_2->unk8 * 4);
        var_a0 = temp_s0_2 + 4;
    }
    gl_g_feedback((s64) var_a0);
    if (sp20 != -1) {

    }
}

s32 __iglooGetRenderMode(void) {
    s32 temp_a2;
    s32 var_v0;

    temp_a2 = (*(void **)0x1004)->unk60;
    var_v0 = 0x1C00;
    if (temp_a2 & 2) {
        var_v0 = 0x1C01;
        /* Duplicate return node #2. Try simplifying control flow for better match */
        return var_v0;
    }
    if (temp_a2 & 4) {
        return 0x1C02;
    }
    return var_v0;
}

void gl_i_passthrough(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    if (__iglooGetRenderMode() == 0x1C01) {
        glPassThrough(subroutine_arg0, subroutine_arg2, 0x3F);
    }
}

void gl_c_passthrough(s16 arg0) {
    if (saved_reg_gp->unk-5018 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6268);
        saved_reg_gp->unk-5018 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_passthrough(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    if (__iglooGetRenderMode() == 0x1C01) {
        glPassThrough(subroutine_arg0, (s64) *arg0, 0x3F);
    }
}

void __iglooRenderMode(s64 arg0, void *arg1) {
    s32 var_a0;

    if (arg1 != NULL) {
        glRenderMode(arg0);
        var_a0 = arg1->unk60 & ~6;
        if (arg0 != 0x1C01) {
            if (arg0 == 0x1C02) {
                var_a0 |= 4;
            }
        } else {
            var_a0 |= 2;
        }
        arg1->unk60 = var_a0;
    }
}

void saveFBBuffer(s64 arg0, s32 arg1) {
    s64 sp10;
    s64 sp0;
    ? *temp_s3;
    s32 temp_a3;
    void *temp_a0;
    void *temp_v0;
    void *var_a4;

    temp_s3 = &gl_wstatep->unk2CF0;
    gl_wstatep->unk2D04 += arg0;
    var_a4 = temp_s3->unk8;
    if (arg1 == 1) {
        sp10 = arg0;
        temp_a0 = temp_s3->unk10;
        temp_a3 = (s32) (var_a4 - temp_a0) >> 2;
        sp0 = (s64) temp_a3;
        temp_v0 = gl_realloc(temp_a0, (temp_s3->unkC + temp_s3->unk14) * 4, saved_reg_gp->unk-38EC, temp_a3);
        temp_s3->unk10 = temp_v0;
        temp_s3->unkC = (s32) (temp_s3->unkC + temp_s3->unk14);
        var_a4 = (sp0 * 4) + temp_v0;
        temp_s3->unk8 = var_a4;
    }
    temp_s3->unk8 = (void *) ((arg0 * 4) + var_a4);
}

void __iglooSavePickFeedState(void *arg0) {
    s32 temp_a2;

    temp_a2 = arg0->unk2C->unk2CEC;
    if ((temp_a2 != 1) && (temp_a2 == 2)) {
        gl_n_setpattern((? *)0x1C00, temp_a2);
    }
}

void __iglooRestorePickFeedState(void *arg0) {
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_a1;
    void *temp_a1_2;

    temp_a1 = arg0->unk2C;
    temp_a1_2 = temp_a1 + 0x2CEC;
    temp_a3 = temp_a1->unk2CEC;
    if ((temp_a3 != 1) && (temp_a3 == 2)) {
        sp0 = (s64) temp_a1_2;
        sp8 = (s64) arg0;
        if (temp_a1_2->unk2C == 0) {
            glSelectBuffer(0x800, (s64) sp0->unk30, 2, temp_a3);
            __iglooRenderMode(0x1C02, (void *) sp8);
            temp_a2 = saved_reg_gp->unk-5034 < sp0->unk44;
            if (temp_a2 == 0) {
                gl_n_setpattern(sp0 + 0x1C, (s32) sp0, temp_a2);
            }
        }
    }
}
