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

? glVertex2i(s32, s32);                             /* extern */
? glVertex2s(s16, s16);                             /* extern */
? glVertex3fv(s32);                                 /* extern */
? glVertex3i(s32, s32, s32);                        /* extern */
? glVertex3iv(s32);                                 /* extern */
? glVertex3s(s16, s16, s16);                        /* extern */
extern ? sub_0f030000;

void gl_i_poly2s(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s5;
    s64 var_ra;
    void *var_s2;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(3);
            __iglooSetMoveDraw(1);
            sp0->unk2CE0 = (s32) arg1->unk0;
            sp0->unk2CDC = 2;
            sp0->unk2CE4 = (s32) arg1->unk2;
            sp0->unk2CE8 = 0;
            glVertex3iv(sp0 + 0x2CE0);
            var_s2 = arg1 + 4;
            var_s5 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    var_s5 -= 1;
                    glVertex2s(var_s2->unk0, var_s2->unk2);
                    var_s2 += 4;
                } while (var_s5 != 0);
            }
            if (gl_inMoveDraw != 0) {
                __iglooSetMoveDraw(0);
                glEnd();
            }
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-60FC);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-60FC);
}

void gl_c_poly2s(s32 arg0, s16 *arg1) {
    s64 sp428;
    s64 sp420;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *temp_a6;
    s16 *var_a1_2;
    s16 *var_a3;
    s16 *var_a4_2;
    s16 *var_a7;
    s16 temp_at;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;
    void *var_a4;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FC0 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp428 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108);
        var_ra = sp420;
        saved_reg_gp->unk-4FC0 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = arg1;
        if (arg0 >= 0) {
            var_a2 = var_a4->unkC;
            if (arg0 < 0x101) {
                var_a4_2 = &sp8;
                sp0 = gl_n_poly2s;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            temp_at = *var_a3;
                            var_a0 -= 1;
                            var_a3 += 4;
                            *var_a4_2 = temp_at;
                            var_a4_2 += 4;
                            var_a2 = (s32) var_a3->unk-2;
                            var_a1 -= 1;
                            var_a4_2->unk-2 = (s16) var_a2;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    temp_a6 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a0_2 = var_a0;
                        var_a3 = var_a7;
                        var_a1_2 = temp_a6;
                        do {
                            var_a3->unk0 = var_a1_2->unk0;
                            var_a3->unk2 = (s16) var_a1_2->unk2;
                            var_a3->unk4 = (s16) var_a1_2->unk4;
                            var_a3->unk6 = (s16) var_a1_2->unk6;
                            var_a3->unk8 = (s16) var_a1_2->unk8;
                            var_a3->unkA = (s16) var_a1_2->unkA;
                            var_a2 = (s32) var_a1_2->unkC;
                            var_a1_2 += 0x10;
                            var_a3->unkC = (s16) var_a2;
                            var_a3 += 0x10;
                            var_a0_2 -= 4;
                            var_a3->unk-2 = (s16) var_a1_2->unk-2;
                        } while (var_a0_2 != 0);
                    }
                    sp420 = var_ra;
                }
                sp420 = var_ra;
                gl_compile((arg0 * 2) + 4, sp, (s16) var_a2, var_a3);
                return;
            }
            sp420 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        sp420 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unkC, var_a3);
    }
}

void gl_n_poly2s(void *arg0) {
    s32 temp_s2;
    s32 var_s2;
    void *var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s2 = arg0->unk0;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk4;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk6;
    subroutine_arg0->unk2CE8 = 0;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
    var_s1 = arg0 + 8;
    var_s2 = temp_s2 - 1;
    if (var_s2 >= 0) {
        do {
            var_s2 -= 1;
            glVertex2s(var_s1->unk0, var_s1->unk2);
            var_s1 += 4;
        } while (var_s2 != -1);
    }
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0, gl_inMoveDraw);
        glEnd();
    }
}

void gl_i_poly2i(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s5;
    s64 var_ra;
    void *var_s2;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(3);
            __iglooSetMoveDraw(1);
            sp0->unk2CE0 = (s32) arg1->unk0;
            sp0->unk2CDC = 2;
            sp0->unk2CE4 = (s32) arg1->unk4;
            sp0->unk2CE8 = 0;
            glVertex3iv(sp0 + 0x2CE0);
            var_s2 = arg1 + 8;
            var_s5 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    var_s5 -= 1;
                    glVertex2i(var_s2->unk0, var_s2->unk4);
                    var_s2 += 8;
                } while (var_s5 != 0);
            }
            if (gl_inMoveDraw != 0) {
                __iglooSetMoveDraw(0);
                glEnd();
            }
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-60EC);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-60EC);
}

void gl_c_poly2i(s32 arg0, s16 *arg1) {
    s64 sp828;
    s64 sp820;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *temp_a6;
    s16 *var_a1_2;
    s16 *var_a3;
    s16 *var_a4_2;
    s16 *var_a7;
    s32 temp_at;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;
    void *var_a4;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FBC != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp828 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x10);
        var_ra = sp820;
        saved_reg_gp->unk-4FBC = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = arg1;
        if (arg0 >= 0) {
            var_a2 = var_a4->unk1C;
            if (arg0 < 0x101) {
                var_a4_2 = &sp8;
                sp0 = gl_n_poly2i;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            temp_at = *var_a3;
                            var_a0 -= 1;
                            var_a3 += 8;
                            *var_a4_2 = temp_at;
                            var_a4_2 += 8;
                            var_a2 = var_a3->unk-4;
                            var_a1 -= 1;
                            var_a4_2->unk-4 = var_a2;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    temp_a6 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a0_2 = var_a0;
                        var_a3 = var_a7;
                        var_a1_2 = temp_a6;
                        do {
                            var_a3->unk0 = (s32) var_a1_2->unk0;
                            var_a3->unk4 = (s32) var_a1_2->unk4;
                            var_a3->unk8 = (s32) var_a1_2->unk8;
                            var_a3->unkC = (s32) var_a1_2->unkC;
                            var_a3->unk10 = (s32) var_a1_2->unk10;
                            var_a3->unk14 = (s32) var_a1_2->unk14;
                            var_a2 = var_a1_2->unk18;
                            var_a1_2 += 0x20;
                            var_a3->unk18 = var_a2;
                            var_a3 += 0x20;
                            var_a0_2 -= 4;
                            var_a3->unk-4 = (s32) var_a1_2->unk-4;
                        } while (var_a0_2 != 0);
                    }
                    sp820 = var_ra;
                }
                sp820 = var_ra;
                gl_compile((arg0 * 4) + 4, sp, (s16) var_a2, var_a3);
                return;
            }
            sp820 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        sp820 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk1C, var_a3);
    }
}

void gl_n_poly2i(void *arg0) {
    s32 temp_s2;
    s32 var_s2;
    void *var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s2 = arg0->unk0;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk4;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk8;
    subroutine_arg0->unk2CE8 = 0;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
    var_s1 = arg0 + 0xC;
    var_s2 = temp_s2 - 1;
    if (var_s2 >= 0) {
        do {
            var_s2 -= 1;
            glVertex2i(var_s1->unk0, var_s1->unk4);
            var_s1 += 8;
        } while (var_s2 != -1);
    }
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0, gl_inMoveDraw);
        glEnd();
    }
}

void gl_i_poly2(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s5;
    s64 var_ra;
    void *var_s2;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(3);
            __iglooSetMoveDraw(1);
            sp0->unk2CE0 = (f32) arg1->unk0;
            sp0->unk2CDC = 1;
            sp0->unk2CE8 = 0.0f;
            sp0->unk2CE4 = (f32) arg1->unk4;
            glVertex3fv(sp0 + 0x2CE0);
            var_s2 = arg1 + 8;
            var_s5 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    var_s5 -= 1;
                    glVertex2f(var_s2->unk0, M2C_ERROR(/* Read from unset register $f14 */));
                    var_s2 += 8;
                } while (var_s5 != 0);
            }
            if (gl_inMoveDraw != 0) {
                __iglooSetMoveDraw(0);
                glEnd();
            }
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-60DC);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-60DC);
}

void gl_c_poly2(s32 arg0, s16 *arg1) {
    s64 sp828;
    s64 sp820;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    f32 temp_f1;
    f32 temp_f3;
    s16 *temp_a6;
    s16 *var_a1_2;
    s16 *var_a3;
    s16 *var_a4_2;
    s16 *var_a7;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;
    void *var_a4;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FB8 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp828 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x20);
        var_ra = sp820;
        saved_reg_gp->unk-4FB8 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = arg1;
        if (arg0 >= 0) {
            var_a2 = var_a4->unk2C;
            if (arg0 < 0x101) {
                var_a4_2 = &sp8;
                sp0 = gl_n_poly2;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            temp_f1 = *var_a3;
                            var_a0 -= 1;
                            var_a3 += 8;
                            *var_a4_2 = temp_f1;
                            var_a4_2 += 8;
                            var_a1 -= 1;
                            var_a4_2->unk-4 = (f32) var_a3->unk-4;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a2 = arg0 >> 2;
                    temp_a6 = var_a3;
                    if (var_a2 != 0) {
                        var_a0_2 = var_a0;
                        var_a3 = var_a7;
                        var_a1_2 = temp_a6;
                        do {
                            var_a3->unk0 = (f32) var_a1_2->unk0;
                            var_a3->unk4 = (f32) var_a1_2->unk4;
                            var_a3->unk8 = (f32) var_a1_2->unk8;
                            var_a3->unkC = (f32) var_a1_2->unkC;
                            var_a3->unk10 = (f32) var_a1_2->unk10;
                            var_a3->unk14 = (f32) var_a1_2->unk14;
                            temp_f3 = var_a1_2->unk18;
                            var_a1_2 += 0x20;
                            var_a3->unk18 = temp_f3;
                            var_a3 += 0x20;
                            var_a0_2 -= 4;
                            var_a3->unk-4 = (f32) var_a1_2->unk-4;
                        } while (var_a0_2 != 0);
                    }
                    sp820 = var_ra;
                }
                sp820 = var_ra;
                gl_compile((arg0 * 4) + 4, sp, (s16) var_a2, var_a3);
                return;
            }
            sp820 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        sp820 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk2C, var_a3);
    }
}

void gl_n_poly2(void *arg0) {
    s32 temp_s2;
    s32 var_s2;
    void *var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s2 = arg0->unk0;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk4;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = 0.0f;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk8;
    glVertex3fv(subroutine_arg0 + 0x2CE0);
    var_s1 = arg0 + 0xC;
    var_s2 = temp_s2 - 1;
    if (var_s2 >= 0) {
        do {
            var_s2 -= 1;
            glVertex2f(var_s1->unk0, M2C_ERROR(/* Read from unset register $f14 */));
            var_s1 += 8;
        } while (var_s2 != -1);
    }
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0);
        glEnd();
    }
}

void gl_i_polys(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s5;
    s64 var_ra;
    void *var_s2;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(3);
            __iglooSetMoveDraw(1);
            sp0->unk2CE0 = (s32) arg1->unk0;
            sp0->unk2CE4 = (s32) arg1->unk2;
            sp0->unk2CE8 = (s32) arg1->unk4;
            sp0->unk2CDC = 2;
            glVertex3iv(sp0 + 0x2CE0);
            var_s2 = arg1 + 6;
            var_s5 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    glVertex3s(var_s2->unk0, var_s2->unk2, var_s2->unk4);
                    var_s5 -= 1;
                    var_s2 += 6;
                } while (var_s5 != 0);
            }
            if (gl_inMoveDraw != 0) {
                __iglooSetMoveDraw(0);
                glEnd();
            }
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-60CC);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-60CC);
}

void gl_c_polys(s32 arg0, void *arg1) {
    s64 sp628;
    s64 sp620;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *var_a0_2;
    s16 *var_a3;
    s16 temp_a2;
    s16 temp_at;
    s16 temp_at_2;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s64 var_ra;
    void *var_a3_2;
    void *var_a4;
    void *var_a4_2;
    void *var_a7;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FB4 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp628 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x30);
        var_ra = sp620;
        saved_reg_gp->unk-4FB4 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = &sp8;
        if (arg0 >= 0) {
            if (arg0 < 0x101) {
                sp0 = gl_n_polys;
                var_a4_2 = arg1;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            var_a3->unk0 = var_a4_2->unk0;
                            temp_at = var_a4_2->unk2;
                            var_a0 -= 1;
                            var_a4_2 += 6;
                            var_a3->unk2 = temp_at;
                            var_a3 += 6;
                            var_a1 -= 1;
                            var_a3->unk-2 = (s16) var_a4_2->unk-2;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a0_2 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a1_2 = var_a0;
                        var_a3_2 = var_a7;
                        do {
                            var_a0_2->unk0 = var_a3_2->unk0;
                            var_a0_2->unk2 = (s16) var_a3_2->unk2;
                            var_a0_2->unk4 = (s16) var_a3_2->unk4;
                            var_a0_2->unk6 = (s16) var_a3_2->unk6;
                            var_a0_2->unk8 = (s16) var_a3_2->unk8;
                            var_a0_2->unkA = (s16) var_a3_2->unkA;
                            var_a0_2->unkC = (s16) var_a3_2->unkC;
                            var_a0_2->unkE = (s16) var_a3_2->unkE;
                            var_a0_2->unk10 = (s16) var_a3_2->unk10;
                            var_a0_2->unk12 = (s16) var_a3_2->unk12;
                            temp_at_2 = var_a3_2->unk14;
                            var_a3_2 += 0x18;
                            var_a0_2->unk14 = temp_at_2;
                            var_a0_2 += 0x18;
                            var_a1_2 -= 4;
                            var_a0_2->unk-2 = (s16) var_a3_2->unk-2;
                        } while (var_a1_2 != 0);
                        var_a3 = var_a0_2;
                    }
                }
                temp_a1 = arg0 * 3;
                var_a0_3 = temp_a1 + 4;
                temp_a2 = var_a0_3 & 1;
                if (temp_a2 != 0) {
                    sp620 = var_ra;
                    var_a0_3 = temp_a1 + 5;
                    *var_a3 = 0;
                }
                sp620 = var_ra;
                gl_compile(var_a0_3, sp, temp_a2, var_a3);
                return;
            }
            sp620 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a4->unk3C, var_a3);
            return;
        }
        sp620 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk3C, var_a3);
    }
}

void gl_n_polys(void *arg0) {
    s32 temp_s2;
    s32 var_s2;
    void *var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s2 = arg0->unk0;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk4;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk6;
    subroutine_arg0->unk2CE8 = (s32) arg0->unk8;
    subroutine_arg0->unk2CDC = 2;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
    var_s1 = arg0 + 0xA;
    var_s2 = temp_s2 - 1;
    if (var_s2 >= 0) {
        do {
            var_s2 -= 1;
            glVertex3s(var_s1->unk0, var_s1->unk2, var_s1->unk4);
            var_s1 += 6;
        } while (var_s2 != -1);
    }
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0, gl_inMoveDraw);
        glEnd();
    }
    if ((s32) var_s1 & 3) {

    }
}

void gl_i_polyi(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s5;
    s64 var_ra;
    void *var_s2;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(3);
            __iglooSetMoveDraw(1);
            sp0->unk2CE0 = (s32) arg1->unk0;
            sp0->unk2CE4 = (s32) arg1->unk4;
            sp0->unk2CE8 = (s32) arg1->unk8;
            sp0->unk2CDC = 2;
            glVertex3iv(sp0 + 0x2CE0);
            var_s2 = arg1 + 0xC;
            var_s5 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    glVertex3i(var_s2->unk0, var_s2->unk4, var_s2->unk8);
                    var_s5 -= 1;
                    var_s2 += 0xC;
                } while (var_s5 != 0);
            }
            if (gl_inMoveDraw != 0) {
                __iglooSetMoveDraw(0);
                glEnd();
            }
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-60BC);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-60BC);
}

void gl_c_polyi(s32 arg0, void *arg1) {
    s64 spC28;
    s64 spC20;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *var_a0_2;
    s16 *var_a3;
    s16 temp_a2;
    s32 temp_a1;
    s32 temp_at;
    s32 temp_at_2;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s64 var_ra;
    void *var_a3_2;
    void *var_a4;
    void *var_a4_2;
    void *var_a7;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FB0 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        spC28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x40);
        var_ra = spC20;
        saved_reg_gp->unk-4FB0 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = &sp8;
        if (arg0 >= 0) {
            if (arg0 < 0x101) {
                sp0 = gl_n_polyi;
                var_a4_2 = arg1;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            var_a3->unk0 = (s32) var_a4_2->unk0;
                            temp_at = var_a4_2->unk4;
                            var_a0 -= 1;
                            var_a4_2 += 0xC;
                            var_a3->unk4 = temp_at;
                            var_a3 += 0xC;
                            var_a1 -= 1;
                            var_a3->unk-4 = (s32) var_a4_2->unk-4;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a0_2 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a1_2 = var_a0;
                        var_a3_2 = var_a7;
                        do {
                            var_a0_2->unk0 = (s32) var_a3_2->unk0;
                            var_a0_2->unk4 = (s32) var_a3_2->unk4;
                            var_a0_2->unk8 = (s32) var_a3_2->unk8;
                            var_a0_2->unkC = (s32) var_a3_2->unkC;
                            var_a0_2->unk10 = (s32) var_a3_2->unk10;
                            var_a0_2->unk14 = (s32) var_a3_2->unk14;
                            var_a0_2->unk18 = (s32) var_a3_2->unk18;
                            var_a0_2->unk1C = (s32) var_a3_2->unk1C;
                            var_a0_2->unk20 = (s32) var_a3_2->unk20;
                            var_a0_2->unk24 = (s32) var_a3_2->unk24;
                            temp_at_2 = var_a3_2->unk28;
                            var_a3_2 += 0x30;
                            var_a0_2->unk28 = temp_at_2;
                            var_a0_2 += 0x30;
                            var_a1_2 -= 4;
                            var_a0_2->unk-4 = (s32) var_a3_2->unk-4;
                        } while (var_a1_2 != 0);
                        var_a3 = var_a0_2;
                    }
                }
                temp_a1 = arg0 * 6;
                var_a0_3 = temp_a1 + 4;
                temp_a2 = var_a0_3 & 1;
                if (temp_a2 != 0) {
                    spC20 = var_ra;
                    var_a0_3 = temp_a1 + 5;
                    *var_a3 = 0;
                }
                spC20 = var_ra;
                gl_compile(var_a0_3, sp, temp_a2, var_a3);
                return;
            }
            spC20 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a4->unk4C, var_a3);
            return;
        }
        spC20 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk4C, var_a3);
    }
}

void gl_n_polyi(void *arg0) {
    s32 temp_s2;
    s32 var_s2;
    void *var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s2 = arg0->unk0;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk4;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk8;
    subroutine_arg0->unk2CE8 = (s32) arg0->unkC;
    subroutine_arg0->unk2CDC = 2;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
    var_s1 = arg0 + 0x10;
    var_s2 = temp_s2 - 1;
    if (var_s2 >= 0) {
        do {
            var_s2 -= 1;
            glVertex3i(var_s1->unk0, var_s1->unk4, var_s1->unk8);
            var_s1 += 0xC;
        } while (var_s2 != -1);
    }
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0, gl_inMoveDraw);
        glEnd();
    }
    if ((s32) var_s1 & 3) {

    }
}

void gl_i_poly(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s5;
    s64 var_ra;
    void *var_s2;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(3);
            __iglooSetMoveDraw(1);
            sp0->unk2CE0 = (f32) arg1->unk0;
            sp0->unk2CE4 = (f32) arg1->unk4;
            sp0->unk2CDC = 1;
            sp0->unk2CE8 = (f32) arg1->unk8;
            glVertex3fv(sp0 + 0x2CE0);
            var_s2 = arg1 + 0xC;
            var_s5 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    glVertex3f(var_s2->unk0, var_s2->unk8, M2C_ERROR(/* Read from unset register $a2 */));
                    var_s5 -= 1;
                    var_s2 += 0xC;
                } while (var_s5 != 0);
            }
            if (gl_inMoveDraw != 0) {
                __iglooSetMoveDraw(0);
                glEnd();
            }
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-60AC);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-60AC);
}

void gl_c_poly(s32 arg0, void *arg1) {
    s64 spC28;
    s64 spC20;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    f32 temp_f0;
    f32 temp_f1;
    s16 *var_a0_2;
    s16 *var_a3;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s64 var_ra;
    void *var_a3_2;
    void *var_a4;
    void *var_a4_2;
    void *var_a7;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FAC != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        spC28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x50);
        var_ra = spC20;
        saved_reg_gp->unk-4FAC = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = &sp8;
        if (arg0 >= 0) {
            var_a2 = var_a4->unk5C;
            if (arg0 < 0x101) {
                sp0 = gl_n_poly;
                var_a4_2 = arg1;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            var_a3->unk0 = (f32) var_a4_2->unk0;
                            temp_f1 = var_a4_2->unk4;
                            var_a0 -= 1;
                            var_a4_2 += 0xC;
                            var_a3->unk4 = temp_f1;
                            var_a3 += 0xC;
                            var_a1 -= 1;
                            var_a3->unk-4 = (f32) var_a4_2->unk-4;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a2 = arg0 >> 2;
                    var_a0_2 = var_a3;
                    if (var_a2 != 0) {
                        var_a1_2 = var_a0;
                        var_a3_2 = var_a7;
                        do {
                            var_a0_2->unk0 = (f32) var_a3_2->unk0;
                            var_a0_2->unk4 = (f32) var_a3_2->unk4;
                            var_a0_2->unk8 = (f32) var_a3_2->unk8;
                            var_a0_2->unkC = (f32) var_a3_2->unkC;
                            var_a0_2->unk10 = (f32) var_a3_2->unk10;
                            var_a0_2->unk14 = (f32) var_a3_2->unk14;
                            var_a0_2->unk18 = (f32) var_a3_2->unk18;
                            var_a0_2->unk1C = (f32) var_a3_2->unk1C;
                            var_a0_2->unk20 = (f32) var_a3_2->unk20;
                            var_a0_2->unk24 = (f32) var_a3_2->unk24;
                            temp_f0 = var_a3_2->unk28;
                            var_a3_2 += 0x30;
                            var_a0_2->unk28 = temp_f0;
                            var_a0_2 += 0x30;
                            var_a1_2 -= 4;
                            var_a0_2->unk-4 = (f32) var_a3_2->unk-4;
                        } while (var_a1_2 != 0);
                        var_a3 = var_a0_2;
                    }
                }
                temp_a1 = arg0 * 6;
                var_a0_3 = temp_a1 + 4;
                if (var_a0_3 & 1) {
                    spC20 = var_ra;
                    var_a0_3 = temp_a1 + 5;
                    *var_a3 = 0;
                }
                spC20 = var_ra;
                gl_compile(var_a0_3, sp, (s16) var_a2, var_a3);
                return;
            }
            spC20 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        spC20 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk5C, var_a3);
    }
}

void gl_n_poly(void *arg0) {
    s32 temp_s2;
    s32 var_s2;
    void *var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s2 = arg0->unk0;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk4;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk8;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = (f32) arg0->unkC;
    glVertex3fv(subroutine_arg0 + 0x2CE0);
    var_s1 = arg0 + 0x10;
    var_s2 = temp_s2 - 1;
    if (var_s2 >= 0) {
        do {
            var_s2 -= 1;
            glVertex3f(var_s1->unk0, var_s1->unk8, M2C_ERROR(/* Read from unset register $a2 */));
            var_s1 += 0xC;
        } while (var_s2 != -1);
    }
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0);
        glEnd();
    }
    if ((s32) var_s1 & 3) {

    }
}

void gl_i_polf2s(s32 arg0, void *arg1) {
    s64 sp28;
    s64 sp8;
    s16 sp2;
    s16 sp0;
    s32 var_s4;
    s64 var_ra;
    void *var_s0;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp28;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp28 = var_ra;
        if (arg0 < 0x101) {
            sp8 = (s64) gl_wstatep;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp8->unk2CE0 = (s32) arg1->unk0;
            sp8->unk2CDC = 2;
            sp8->unk2CE4 = (s32) arg1->unk2;
            sp8->unk2CE8 = 0;
            sp8->unk1C(sp8 + 0x2CE0);
            var_s0 = arg1 + 4;
            var_s4 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    sp0 = var_s0->unk0;
                    sp2 = var_s0->unk2;
                    var_s4 -= 1;
                    var_s0 += 4;
                    ((? (*)(void *)) gl_wstatep->bufferMode)(sp);
                } while (var_s4 != 0);
            }
            gl_wstatep->unkDC();
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-609C);
        return;
    }
    sp28 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-609C);
}

void gl_c_polf2s(s32 arg0, s16 *arg1) {
    s64 sp428;
    s64 sp420;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *temp_a6;
    s16 *var_a1_2;
    s16 *var_a3;
    s16 *var_a4_2;
    s16 *var_a7;
    s16 temp_at;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;
    void *var_a4;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FA8 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp428 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x60);
        var_ra = sp420;
        saved_reg_gp->unk-4FA8 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = arg1;
        if (arg0 >= 0) {
            var_a2 = var_a4->unk6C;
            if (arg0 < 0x101) {
                var_a4_2 = &sp8;
                sp0 = gl_n_polf2s;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            temp_at = *var_a3;
                            var_a0 -= 1;
                            var_a3 += 4;
                            *var_a4_2 = temp_at;
                            var_a4_2 += 4;
                            var_a2 = (s32) var_a3->unk-2;
                            var_a1 -= 1;
                            var_a4_2->unk-2 = (s16) var_a2;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    temp_a6 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a0_2 = var_a0;
                        var_a3 = var_a7;
                        var_a1_2 = temp_a6;
                        do {
                            var_a3->unk0 = var_a1_2->unk0;
                            var_a3->unk2 = (s16) var_a1_2->unk2;
                            var_a3->unk4 = (s16) var_a1_2->unk4;
                            var_a3->unk6 = (s16) var_a1_2->unk6;
                            var_a3->unk8 = (s16) var_a1_2->unk8;
                            var_a3->unkA = (s16) var_a1_2->unkA;
                            var_a2 = (s32) var_a1_2->unkC;
                            var_a1_2 += 0x10;
                            var_a3->unkC = (s16) var_a2;
                            var_a3 += 0x10;
                            var_a0_2 -= 4;
                            var_a3->unk-2 = (s16) var_a1_2->unk-2;
                        } while (var_a0_2 != 0);
                    }
                    sp420 = var_ra;
                }
                sp420 = var_ra;
                gl_compile((arg0 * 2) + 4, sp, (s16) var_a2, var_a3);
                return;
            }
            sp420 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        sp420 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk6C, var_a3);
    }
}

void gl_n_polf2s(void *arg0) {
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg2->unk2CE0 = (s32) arg0->unk4;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE4 = (s32) arg0->unk6;
    subroutine_arg2->unk2CE8 = 0;
    subroutine_arg2->unk1C(subroutine_arg2 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            ((? (*)(void *)) gl_wstatep->bufferMode)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
}

void gl_i_polf2i(s32 arg0, void *arg1) {
    s64 sp28;
    s64 sp8;
    s32 sp4;
    s32 sp0;
    s32 var_s4;
    s64 var_ra;
    void *var_s0;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp28;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp28 = var_ra;
        if (arg0 < 0x101) {
            sp8 = (s64) gl_wstatep;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp8->unk2CE0 = (s32) arg1->unk0;
            sp8->unk2CDC = 2;
            sp8->unk2CE4 = (s32) arg1->unk4;
            sp8->unk2CE8 = 0;
            sp8->unk1C(sp8 + 0x2CE0);
            var_s0 = arg1 + 8;
            var_s4 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    sp0 = var_s0->unk0;
                    sp4 = var_s0->unk4;
                    var_s4 -= 1;
                    var_s0 += 8;
                    ((? (*)(void *)) gl_wstatep->colorMode)(sp);
                } while (var_s4 != 0);
            }
            gl_wstatep->unkDC();
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-608C);
        return;
    }
    sp28 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-608C);
}

void gl_c_polf2i(s32 arg0, s16 *arg1) {
    s64 sp828;
    s64 sp820;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *temp_a6;
    s16 *var_a1_2;
    s16 *var_a3;
    s16 *var_a4_2;
    s16 *var_a7;
    s32 temp_at;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;
    void *var_a4;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FA4 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp828 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x70);
        var_ra = sp820;
        saved_reg_gp->unk-4FA4 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = arg1;
        if (arg0 >= 0) {
            var_a2 = var_a4->unk7C;
            if (arg0 < 0x101) {
                var_a4_2 = &sp8;
                sp0 = gl_n_polf2i;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            temp_at = *var_a3;
                            var_a0 -= 1;
                            var_a3 += 8;
                            *var_a4_2 = temp_at;
                            var_a4_2 += 8;
                            var_a2 = var_a3->unk-4;
                            var_a1 -= 1;
                            var_a4_2->unk-4 = var_a2;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    temp_a6 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a0_2 = var_a0;
                        var_a3 = var_a7;
                        var_a1_2 = temp_a6;
                        do {
                            var_a3->unk0 = (s32) var_a1_2->unk0;
                            var_a3->unk4 = (s32) var_a1_2->unk4;
                            var_a3->unk8 = (s32) var_a1_2->unk8;
                            var_a3->unkC = (s32) var_a1_2->unkC;
                            var_a3->unk10 = (s32) var_a1_2->unk10;
                            var_a3->unk14 = (s32) var_a1_2->unk14;
                            var_a2 = var_a1_2->unk18;
                            var_a1_2 += 0x20;
                            var_a3->unk18 = var_a2;
                            var_a3 += 0x20;
                            var_a0_2 -= 4;
                            var_a3->unk-4 = (s32) var_a1_2->unk-4;
                        } while (var_a0_2 != 0);
                    }
                    sp820 = var_ra;
                }
                sp820 = var_ra;
                gl_compile((arg0 * 4) + 4, sp, (s16) var_a2, var_a3);
                return;
            }
            sp820 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        sp820 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk7C, var_a3);
    }
}

void gl_n_polf2i(void *arg0) {
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg2->unk2CE0 = (s32) arg0->unk4;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE4 = (s32) arg0->unk8;
    subroutine_arg2->unk2CE8 = 0;
    subroutine_arg2->unk1C(subroutine_arg2 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            ((? (*)(void *)) gl_wstatep->colorMode)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
}

void gl_i_polf2(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s4;
    s64 var_ra;
    void *var_s0;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp0->unk2CE0 = (f32) arg1->unk0;
            sp0->unk2CDC = 1;
            sp0->unk2CE8 = 0.0f;
            sp0->unk2CE4 = (f32) arg1->unk4;
            sp0->unk18(sp0 + 0x2CE0);
            var_s0 = arg1 + 8;
            var_s4 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    var_s4 -= 1;
                    ((? (*)(f32)) gl_wstatep->flags)(var_s0->unk0);
                    var_s0 += 8;
                } while (var_s4 != 0);
            }
            gl_wstatep->unkDC();
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-607C);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-607C);
}

void gl_c_polf2(s32 arg0, s16 *arg1) {
    s64 sp828;
    s64 sp820;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    f32 temp_f1;
    f32 temp_f3;
    s16 *temp_a6;
    s16 *var_a1_2;
    s16 *var_a3;
    s16 *var_a4_2;
    s16 *var_a7;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;
    void *var_a4;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4FA0 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp828 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x80);
        var_ra = sp820;
        saved_reg_gp->unk-4FA0 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = arg1;
        if (arg0 >= 0) {
            var_a2 = var_a4->unk8C;
            if (arg0 < 0x101) {
                var_a4_2 = &sp8;
                sp0 = gl_n_polf2;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            temp_f1 = *var_a3;
                            var_a0 -= 1;
                            var_a3 += 8;
                            *var_a4_2 = temp_f1;
                            var_a4_2 += 8;
                            var_a1 -= 1;
                            var_a4_2->unk-4 = (f32) var_a3->unk-4;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a2 = arg0 >> 2;
                    temp_a6 = var_a3;
                    if (var_a2 != 0) {
                        var_a0_2 = var_a0;
                        var_a3 = var_a7;
                        var_a1_2 = temp_a6;
                        do {
                            var_a3->unk0 = (f32) var_a1_2->unk0;
                            var_a3->unk4 = (f32) var_a1_2->unk4;
                            var_a3->unk8 = (f32) var_a1_2->unk8;
                            var_a3->unkC = (f32) var_a1_2->unkC;
                            var_a3->unk10 = (f32) var_a1_2->unk10;
                            var_a3->unk14 = (f32) var_a1_2->unk14;
                            temp_f3 = var_a1_2->unk18;
                            var_a1_2 += 0x20;
                            var_a3->unk18 = temp_f3;
                            var_a3 += 0x20;
                            var_a0_2 -= 4;
                            var_a3->unk-4 = (f32) var_a1_2->unk-4;
                        } while (var_a0_2 != 0);
                    }
                    sp820 = var_ra;
                }
                sp820 = var_ra;
                gl_compile((arg0 * 4) + 4, sp, (s16) var_a2, var_a3);
                return;
            }
            sp820 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        sp820 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk8C, var_a3);
    }
}

void gl_n_polf2(void *arg0) {
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk4;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = 0.0f;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk8;
    subroutine_arg0->unk18(subroutine_arg0 + 0x2CE0);
    var_s0 = arg0 + 0xC;
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            ((? (*)(f32)) gl_wstatep->flags)(var_s0->unk0);
            var_s0 += 8;
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
}

void gl_i_polfs(s32 arg0, void *arg1) {
    s64 sp28;
    s64 sp8;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s32 var_s4;
    s64 var_ra;
    void *var_s0;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp28;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp28 = var_ra;
        if (arg0 < 0x101) {
            sp8 = (s64) gl_wstatep;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp8->unk2CE0 = (s32) arg1->unk0;
            var_s0 = arg1 + 6;
            sp8->unk2CE4 = (s32) arg1->unk2;
            sp8->unk2CE8 = (s32) arg1->unk4;
            sp8->unk2CDC = 2;
            sp8->unk1C(sp8 + 0x2CE0);
            var_s4 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    sp0 = var_s0->unk0;
                    sp2 = var_s0->unk2;
                    sp4 = var_s0->unk4;
                    var_s4 -= 1;
                    var_s0 += 6;
                    ((? (*)(void *)) gl_wstatep->blendSrc)(sp);
                } while (var_s4 != 0);
            }
            gl_wstatep->unkDC();
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-606C);
        return;
    }
    sp28 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-606C);
}

void gl_c_polfs(s32 arg0, void *arg1) {
    s64 sp628;
    s64 sp620;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *var_a0_2;
    s16 *var_a3;
    s16 temp_a2;
    s16 temp_at;
    s16 temp_at_2;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s64 var_ra;
    void *var_a3_2;
    void *var_a4;
    void *var_a4_2;
    void *var_a7;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4F9C != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp628 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0x90);
        var_ra = sp620;
        saved_reg_gp->unk-4F9C = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = &sp8;
        if (arg0 >= 0) {
            if (arg0 < 0x101) {
                sp0 = gl_n_polfs;
                var_a4_2 = arg1;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            var_a3->unk0 = var_a4_2->unk0;
                            temp_at = var_a4_2->unk2;
                            var_a0 -= 1;
                            var_a4_2 += 6;
                            var_a3->unk2 = temp_at;
                            var_a3 += 6;
                            var_a1 -= 1;
                            var_a3->unk-2 = (s16) var_a4_2->unk-2;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a0_2 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a1_2 = var_a0;
                        var_a3_2 = var_a7;
                        do {
                            var_a0_2->unk0 = var_a3_2->unk0;
                            var_a0_2->unk2 = (s16) var_a3_2->unk2;
                            var_a0_2->unk4 = (s16) var_a3_2->unk4;
                            var_a0_2->unk6 = (s16) var_a3_2->unk6;
                            var_a0_2->unk8 = (s16) var_a3_2->unk8;
                            var_a0_2->unkA = (s16) var_a3_2->unkA;
                            var_a0_2->unkC = (s16) var_a3_2->unkC;
                            var_a0_2->unkE = (s16) var_a3_2->unkE;
                            var_a0_2->unk10 = (s16) var_a3_2->unk10;
                            var_a0_2->unk12 = (s16) var_a3_2->unk12;
                            temp_at_2 = var_a3_2->unk14;
                            var_a3_2 += 0x18;
                            var_a0_2->unk14 = temp_at_2;
                            var_a0_2 += 0x18;
                            var_a1_2 -= 4;
                            var_a0_2->unk-2 = (s16) var_a3_2->unk-2;
                        } while (var_a1_2 != 0);
                        var_a3 = var_a0_2;
                    }
                }
                temp_a1 = arg0 * 3;
                var_a0_3 = temp_a1 + 4;
                temp_a2 = var_a0_3 & 1;
                if (temp_a2 != 0) {
                    sp620 = var_ra;
                    var_a0_3 = temp_a1 + 5;
                    *var_a3 = 0;
                }
                sp620 = var_ra;
                gl_compile(var_a0_3, sp, temp_a2, var_a3);
                return;
            }
            sp620 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a4->unk9C, var_a3);
            return;
        }
        sp620 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk9C, var_a3);
    }
}

void gl_n_polfs(void *arg0) {
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg2->unk2CE0 = (s32) arg0->unk4;
    subroutine_arg2->unk2CE4 = (s32) arg0->unk6;
    subroutine_arg2->unk2CE8 = (s32) arg0->unk8;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk1C(subroutine_arg2 + 0x2CE0);
    var_s0 = arg0 + 0xA;
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            var_s0 += 6;
            ((? (*)(void *)) gl_wstatep->blendSrc)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
    if ((s32) var_s0 & 3) {

    }
}

void gl_i_polfi(s32 arg0, void *arg1) {
    s64 sp30;
    s64 sp10;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 var_s4;
    s64 var_ra;
    void *var_s0;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp30;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp30 = var_ra;
        if (arg0 < 0x101) {
            sp10 = (s64) gl_wstatep;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp10->unk2CE0 = (s32) arg1->unk0;
            var_s0 = arg1 + 0xC;
            sp10->unk2CE4 = (s32) arg1->unk4;
            sp10->unk2CE8 = (s32) arg1->unk8;
            sp10->unk2CDC = 2;
            sp10->unk1C(sp10 + 0x2CE0);
            var_s4 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    sp0 = var_s0->unk0;
                    sp4 = var_s0->unk4;
                    sp8 = var_s0->unk8;
                    var_s4 -= 1;
                    var_s0 += 0xC;
                    ((? (*)(void *)) gl_wstatep->zfunction)(sp);
                } while (var_s4 != 0);
            }
            gl_wstatep->unkDC();
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-605C);
        return;
    }
    sp30 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-605C);
}

void gl_c_polfi(s32 arg0, void *arg1) {
    s64 spC28;
    s64 spC20;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *var_a0_2;
    s16 *var_a3;
    s16 temp_a2;
    s32 temp_a1;
    s32 temp_at;
    s32 temp_at_2;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s64 var_ra;
    void *var_a3_2;
    void *var_a4;
    void *var_a4_2;
    void *var_a7;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4F98 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        spC28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0xA0);
        var_ra = spC20;
        saved_reg_gp->unk-4F98 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = &sp8;
        if (arg0 >= 0) {
            if (arg0 < 0x101) {
                sp0 = gl_n_polfi;
                var_a4_2 = arg1;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            var_a3->unk0 = (s32) var_a4_2->unk0;
                            temp_at = var_a4_2->unk4;
                            var_a0 -= 1;
                            var_a4_2 += 0xC;
                            var_a3->unk4 = temp_at;
                            var_a3 += 0xC;
                            var_a1 -= 1;
                            var_a3->unk-4 = (s32) var_a4_2->unk-4;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a0_2 = var_a3;
                    if ((arg0 >> 2) != 0) {
                        var_a1_2 = var_a0;
                        var_a3_2 = var_a7;
                        do {
                            var_a0_2->unk0 = (s32) var_a3_2->unk0;
                            var_a0_2->unk4 = (s32) var_a3_2->unk4;
                            var_a0_2->unk8 = (s32) var_a3_2->unk8;
                            var_a0_2->unkC = (s32) var_a3_2->unkC;
                            var_a0_2->unk10 = (s32) var_a3_2->unk10;
                            var_a0_2->unk14 = (s32) var_a3_2->unk14;
                            var_a0_2->unk18 = (s32) var_a3_2->unk18;
                            var_a0_2->unk1C = (s32) var_a3_2->unk1C;
                            var_a0_2->unk20 = (s32) var_a3_2->unk20;
                            var_a0_2->unk24 = (s32) var_a3_2->unk24;
                            temp_at_2 = var_a3_2->unk28;
                            var_a3_2 += 0x30;
                            var_a0_2->unk28 = temp_at_2;
                            var_a0_2 += 0x30;
                            var_a1_2 -= 4;
                            var_a0_2->unk-4 = (s32) var_a3_2->unk-4;
                        } while (var_a1_2 != 0);
                        var_a3 = var_a0_2;
                    }
                }
                temp_a1 = arg0 * 6;
                var_a0_3 = temp_a1 + 4;
                temp_a2 = var_a0_3 & 1;
                if (temp_a2 != 0) {
                    spC20 = var_ra;
                    var_a0_3 = temp_a1 + 5;
                    *var_a3 = 0;
                }
                spC20 = var_ra;
                gl_compile(var_a0_3, sp, temp_a2, var_a3);
                return;
            }
            spC20 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a4->unkAC, var_a3);
            return;
        }
        spC20 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unkAC, var_a3);
    }
}

void gl_n_polfi(void *arg0) {
    s64 sp10;
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    sp10 = (s64) gl_wstatep;
    temp_s1 = arg0->unk0;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    sp10->unk2CE0 = (s32) arg0->unk4;
    sp10->unk2CE4 = (s32) arg0->unk8;
    sp10->unk2CE8 = (s32) arg0->unkC;
    sp10->unk2CDC = 2;
    sp10->unk1C(sp10 + 0x2CE0);
    var_s0 = arg0 + 0x10;
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            var_s0 += 0xC;
            ((? (*)(void *)) gl_wstatep->zfunction)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
    if ((s32) var_s0 & 3) {

    }
}

void gl_i_polf(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 var_s4;
    s64 var_ra;
    void *var_s0;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp20;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp20 = var_ra;
        if (arg0 < 0x101) {
            sp0 = (s64) gl_wstatep;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp0->unk2CE0 = (f32) arg1->unk0;
            sp0->unk2CE4 = (f32) arg1->unk4;
            sp0->unk2CDC = 1;
            sp0->unk2CE8 = (f32) arg1->unk8;
            sp0->unk18(sp0 + 0x2CE0);
            var_s0 = arg1 + 0xC;
            var_s4 = arg0 - 1;
            if (arg0 >= 2) {
                do {
                    var_s4 -= 1;
                    ((? (*)(f32, f32)) gl_wstatep->shadingModel)(var_s0->unk0, var_s0->unk8);
                    var_s0 += 0xC;
                } while (var_s4 != 0);
            }
            gl_wstatep->unkDC();
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-604C);
        return;
    }
    sp20 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-604C);
}

void gl_c_polf(s32 arg0, void *arg1) {
    s64 spC28;
    s64 spC20;
    s16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    f32 temp_f0;
    f32 temp_f1;
    s16 *var_a0_2;
    s16 *var_a3;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s64 var_ra;
    void *var_a3_2;
    void *var_a4;
    void *var_a4_2;
    void *var_a7;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4F94 != 0) {
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        spC28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6108 + 0xB0);
        var_ra = spC20;
        saved_reg_gp->unk-4F94 = 1;
        var_a4 = &sub_0f030000 - 0x6108;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a3 = &sp8;
        if (arg0 >= 0) {
            var_a2 = var_a4->unkBC;
            if (arg0 < 0x101) {
                sp0 = gl_n_polf;
                var_a4_2 = arg1;
                sp4 = arg0 - 1;
                if (arg0 > 0) {
                    var_a1 = arg0 & 3;
                    var_a7 = var_a4_2;
                    if (var_a1 != 0) {
                        do {
                            var_a3->unk0 = (f32) var_a4_2->unk0;
                            temp_f1 = var_a4_2->unk4;
                            var_a0 -= 1;
                            var_a4_2 += 0xC;
                            var_a3->unk4 = temp_f1;
                            var_a3 += 0xC;
                            var_a1 -= 1;
                            var_a3->unk-4 = (f32) var_a4_2->unk-4;
                        } while (var_a1 != 0);
                        var_a7 = var_a4_2;
                    }
                    var_a2 = arg0 >> 2;
                    var_a0_2 = var_a3;
                    if (var_a2 != 0) {
                        var_a1_2 = var_a0;
                        var_a3_2 = var_a7;
                        do {
                            var_a0_2->unk0 = (f32) var_a3_2->unk0;
                            var_a0_2->unk4 = (f32) var_a3_2->unk4;
                            var_a0_2->unk8 = (f32) var_a3_2->unk8;
                            var_a0_2->unkC = (f32) var_a3_2->unkC;
                            var_a0_2->unk10 = (f32) var_a3_2->unk10;
                            var_a0_2->unk14 = (f32) var_a3_2->unk14;
                            var_a0_2->unk18 = (f32) var_a3_2->unk18;
                            var_a0_2->unk1C = (f32) var_a3_2->unk1C;
                            var_a0_2->unk20 = (f32) var_a3_2->unk20;
                            var_a0_2->unk24 = (f32) var_a3_2->unk24;
                            temp_f0 = var_a3_2->unk28;
                            var_a3_2 += 0x30;
                            var_a0_2->unk28 = temp_f0;
                            var_a0_2 += 0x30;
                            var_a1_2 -= 4;
                            var_a0_2->unk-4 = (f32) var_a3_2->unk-4;
                        } while (var_a1_2 != 0);
                        var_a3 = var_a0_2;
                    }
                }
                temp_a1 = arg0 * 6;
                var_a0_3 = temp_a1 + 4;
                if (var_a0_3 & 1) {
                    spC20 = var_ra;
                    var_a0_3 = temp_a1 + 5;
                    *var_a3 = 0;
                }
                spC20 = var_ra;
                gl_compile(var_a0_3, sp, (s16) var_a2, var_a3);
                return;
            }
            spC20 = var_ra;
            gl_ErrorHandler(0x61, 2, var_a2, var_a3);
            return;
        }
        spC20 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unkBC, var_a3);
    }
}

void gl_n_polf(void *arg0) {
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk4;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk8;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = (f32) arg0->unkC;
    var_s0 = arg0 + 0x10;
    subroutine_arg0->unk18(subroutine_arg0 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            ((? (*)(f32, f32)) gl_wstatep->shadingModel)(var_s0->unk0, var_s0->unk8);
            var_s0 += 0xC;
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
    if ((s32) var_s0 & 3) {

    }
}
