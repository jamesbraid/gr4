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
    /* 0x003C */ char pad3C[0x70];                  /* maybe part of currentNormal[0xA]? */
    /* 0x00AC */ ? (*unkAC)(gl_wstate *, u16);      /* inferred */
    /* 0x00B0 */ char padB0[0x28];                  /* maybe part of unkAC[0xB]? */
    /* 0x00D8 */ ? (*unkD8)(?);                     /* inferred */
    /* 0x00DC */ ? (*unkDC)(gl_wstate *);           /* inferred */
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

extern ? sub_0f030000;

void gl_i_splf2s(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp30;
    s64 sp8;
    s16 sp2;
    s16 sp0;
    gl_wstate *temp_a0;
    gl_wstate *var_a0;
    gl_wstate *var_s7;
    s64 var_ra;
    u16 *var_s0;
    void *var_s5;

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
            gl_wstatep->unkAC(gl_wstatep, *arg2);
            sp8 = (s64) gl_wstatep;
            var_s0 = arg2 + 2;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp8->unk2CE0 = (s32) arg1->unk0;
            sp8->unk2CDC = 2;
            sp8->unk2CE4 = (s32) arg1->unk2;
            sp8->unk2CE8 = 0;
            sp8->unk1C(sp8 + 0x2CE0);
            var_s5 = arg1 + 4;
            var_a0 = arg0 - 1;
            var_s7 = var_a0;
            if (arg0 >= 2) {
                temp_a0 = gl_wstatep;
                do {
                    var_s7 -= 1;
                    temp_a0->unkAC(temp_a0, *var_s0);
                    sp0 = var_s5->unk0;
                    sp2 = var_s5->unk2;
                    var_s5 += 4;
                    var_s0 += 2;
                    ((? (*)(void *)) gl_wstatep->bufferMode)(sp);
                    var_a0 = gl_wstatep;
                } while (var_s7 != NULL);
            }
            gl_wstatep->unkDC(var_a0);
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-568C);
        return;
    }
    sp30 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-568C);
}

void gl_c_splf2s(s32 arg0, s16 *arg1, u16 *arg2) {
    s64 sp630;
    s64 sp628;
    u16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 *var_a2_2;
    s16 *var_a4_2;
    s16 *var_a7;
    s16 temp_at;
    s16 temp_at_2;
    s32 temp_a1;
    s32 temp_a3;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s64 var_ra;
    u16 *var_a0_2;
    u16 *var_a2;
    u16 *var_a4_3;
    u16 *var_s1;
    void *var_a4;

    var_ra = saved_reg_ra;
    var_s1 = arg2;
    if (saved_reg_gp->unk-4E08 != 0) {
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp630 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5698);
        var_ra = sp628;
        saved_reg_gp->unk-4E08 = 1;
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a2 = &sp8;
        if (arg0 >= 0) {
            if (arg0 >= 0x101) {
                sp628 = var_ra;
                gl_ErrorHandler(0x61, 2, var_a4->unkC);
                return;
            }
            sp0 = gl_n_splf2s;
            var_a4_2 = arg1;
            sp4 = arg0 - 1;
            if (arg0 > 0) {
                var_a1 = arg0 & 3;
                var_a7 = var_a4_2;
                if (var_a1 != 0) {
                    do {
                        *var_a2 = *var_s1;
                        var_a0 -= 1;
                        temp_at = *var_a4_2;
                        var_a4_2 += 4;
                        var_a2 += 6;
                        var_a2->unk-4 = temp_at;
                        var_s1 += 2;
                        var_a1 -= 1;
                        var_a2->unk-2 = (s16) var_a4_2->unk-2;
                    } while (var_a1 != 0);
                    var_a7 = var_a4_2;
                }
                var_a0_2 = var_a2;
                if ((arg0 >> 2) != 0) {
                    var_a1_2 = var_a0;
                    var_a2_2 = var_a7;
                    var_a4_3 = var_s1;
                    do {
                        var_a0_2->unk0 = var_a4_3->unk0;
                        var_a0_2->unk2 = (s16) var_a2_2->unk0;
                        var_a0_2->unk4 = (s16) var_a2_2->unk2;
                        var_a0_2->unk6 = (u16) var_a4_3->unk2;
                        var_a0_2->unk8 = (s16) var_a2_2->unk4;
                        var_a0_2->unkA = (s16) var_a2_2->unk6;
                        var_a0_2->unkC = (u16) var_a4_3->unk4;
                        var_a0_2->unkE = (s16) var_a2_2->unk8;
                        var_a0_2->unk10 = (s16) var_a2_2->unkA;
                        var_a0_2->unk12 = (u16) var_a4_3->unk6;
                        temp_at_2 = var_a2_2->unkC;
                        var_a2_2 += 0x10;
                        var_a0_2 += 0x18;
                        var_a0_2->unk-4 = temp_at_2;
                        var_a4_3 += 8;
                        var_a1_2 -= 4;
                        var_a0_2->unk-2 = (s16) var_a2_2->unk-2;
                    } while (var_a1_2 != 0);
                    var_a2 = var_a0_2;
                }
            }
            temp_a1 = arg0 * 3;
            var_a0_3 = temp_a1 + 4;
            temp_a3 = var_a0_3 & 1;
            if (temp_a3 != 0) {
                sp628 = var_ra;
                var_a0_3 = temp_a1 + 5;
                *var_a2 = 0;
            }
            sp628 = var_ra;
            gl_compile(var_a0_3, sp, var_a2, temp_a3);
            return;
        }
        sp628 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unkC);
    }
}

void gl_n_splf2s(void *arg0) {
    gl_wstate *temp_a0;
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkAC(gl_wstatep, arg0->unk4);
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    var_s0 = arg0 + 0xA;
    subroutine_arg2->unk2CE0 = (s32) arg0->unk6;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE4 = (s32) var_s0->unk-2;
    subroutine_arg2->unk2CE8 = 0;
    subroutine_arg2->unk1C(subroutine_arg2 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        temp_a0 = gl_wstatep;
        do {
            var_s1 -= 1;
            temp_a0->unkAC(temp_a0, var_s0->unk0);
            var_s0 += 6;
            ((? (*)(void *)) gl_wstatep->bufferMode)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
    if ((s32) var_s0 & 3) {

    }
}

void gl_i_splf2i(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp30;
    s64 sp8;
    s32 sp4;
    s32 sp0;
    gl_wstate *temp_a0;
    gl_wstate *var_a0;
    gl_wstate *var_s7;
    s64 var_ra;
    u16 *var_s0;
    void *var_s5;

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
            gl_wstatep->unkAC(gl_wstatep, *arg2);
            sp8 = (s64) gl_wstatep;
            var_s0 = arg2 + 2;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp8->unk2CE0 = (s32) arg1->unk0;
            sp8->unk2CDC = 2;
            sp8->unk2CE4 = (s32) arg1->unk4;
            sp8->unk2CE8 = 0;
            sp8->unk1C(sp8 + 0x2CE0);
            var_s5 = arg1 + 8;
            var_a0 = arg0 - 1;
            var_s7 = var_a0;
            if (arg0 >= 2) {
                temp_a0 = gl_wstatep;
                do {
                    var_s7 -= 1;
                    temp_a0->unkAC(temp_a0, *var_s0);
                    sp0 = var_s5->unk0;
                    sp4 = var_s5->unk4;
                    var_s5 += 8;
                    var_s0 += 2;
                    ((? (*)(void *)) gl_wstatep->colorMode)(sp);
                    var_a0 = gl_wstatep;
                } while (var_s7 != NULL);
            }
            gl_wstatep->unkDC(var_a0);
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-567C);
        return;
    }
    sp30 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-567C);
}

void gl_c_splf2i(s32 arg0, s32 *arg1, u16 *arg2) {
    s64 spC30;
    s64 spC28;
    u16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s32 *var_a2_2;
    s32 *var_a4_2;
    s32 *var_a7;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_at;
    s32 temp_at_2;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s64 var_ra;
    u16 *var_a0_2;
    u16 *var_a2;
    u16 *var_a4_3;
    u16 *var_s1;
    void *var_a4;

    var_ra = saved_reg_ra;
    var_s1 = arg2;
    if (saved_reg_gp->unk-4E04 != 0) {
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        spC30 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5698 + 0x10);
        var_ra = spC28;
        saved_reg_gp->unk-4E04 = 1;
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a2 = &sp8;
        if (arg0 >= 0) {
            if (arg0 >= 0x101) {
                spC28 = var_ra;
                gl_ErrorHandler(0x61, 2, var_a4->unk1C);
                return;
            }
            sp0 = gl_n_splf2i;
            var_a4_2 = arg1;
            sp4 = arg0 - 1;
            if (arg0 > 0) {
                var_a1 = arg0 & 3;
                var_a7 = var_a4_2;
                if (var_a1 != 0) {
                    do {
                        var_a2->unk0 = *var_s1;
                        var_a2->unk2 = 0;
                        var_a0 -= 1;
                        temp_at = *var_a4_2;
                        var_a4_2 += 8;
                        var_a2 += 0xC;
                        var_a2->unk-8 = temp_at;
                        var_s1 += 2;
                        var_a1 -= 1;
                        var_a2->unk-4 = (s32) var_a4_2->unk-4;
                    } while (var_a1 != 0);
                    var_a7 = var_a4_2;
                }
                var_a0_2 = var_a2;
                if ((arg0 >> 2) != 0) {
                    var_a1_2 = var_a0;
                    var_a2_2 = var_a7;
                    var_a4_3 = var_s1;
                    do {
                        var_a0_2->unk0 = var_a4_3->unk0;
                        var_a0_2->unk2 = 0;
                        var_a0_2->unk4 = (s32) var_a2_2->unk0;
                        var_a0_2->unk8 = (s32) var_a2_2->unk4;
                        var_a0_2->unkC = (u16) var_a4_3->unk2;
                        var_a0_2->unkE = 0;
                        var_a0_2->unk10 = (s32) var_a2_2->unk8;
                        var_a0_2->unk14 = (s32) var_a2_2->unkC;
                        var_a0_2->unk18 = (u16) var_a4_3->unk4;
                        var_a0_2->unk1A = 0;
                        var_a0_2->unk1C = (s32) var_a2_2->unk10;
                        var_a0_2->unk20 = (s32) var_a2_2->unk14;
                        var_a0_2->unk24 = (u16) var_a4_3->unk6;
                        var_a0_2->unk26 = 0;
                        temp_at_2 = var_a2_2->unk18;
                        var_a2_2 += 0x20;
                        var_a0_2 += 0x30;
                        var_a0_2->unk-8 = temp_at_2;
                        var_a4_3 += 8;
                        var_a1_2 -= 4;
                        var_a0_2->unk-4 = (s32) var_a2_2->unk-4;
                    } while (var_a1_2 != 0);
                    var_a2 = var_a0_2;
                }
            }
            temp_a1 = arg0 * 6;
            var_a0_3 = temp_a1 + 4;
            temp_a3 = var_a0_3 & 1;
            if (temp_a3 != 0) {
                spC28 = var_ra;
                var_a0_3 = temp_a1 + 5;
                *var_a2 = 0;
            }
            spC28 = var_ra;
            gl_compile(var_a0_3, sp, var_a2, temp_a3);
            return;
        }
        spC28 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk1C);
    }
}

void gl_n_splf2i(void *arg0) {
    gl_wstate *temp_a0;
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkAC(gl_wstatep, arg0->unk4);
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    var_s0 = arg0 + 0x10;
    subroutine_arg2->unk2CE0 = (s32) arg0->unk8;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk2CE4 = (s32) var_s0->unk-4;
    subroutine_arg2->unk2CE8 = 0;
    subroutine_arg2->unk1C(subroutine_arg2 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        temp_a0 = gl_wstatep;
        do {
            var_s1 -= 1;
            temp_a0->unkAC(temp_a0, var_s0->unk0);
            var_s0 += 0xC;
            ((? (*)(void *)) gl_wstatep->colorMode)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
    if ((s32) var_s0 & 3) {

    }
}

void gl_i_splf2(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp28;
    s64 sp0;
    f32 temp_f12;
    gl_wstate *temp_a0;
    gl_wstate *var_a0;
    gl_wstate *var_s7;
    s64 var_ra;
    u16 *var_s0;
    void *var_s5;

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
            gl_wstatep->unkAC(gl_wstatep, *arg2);
            sp0 = (s64) gl_wstatep;
            var_s0 = arg2 + 2;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp0->unk2CE0 = (f32) arg1->unk0;
            sp0->unk2CDC = 1;
            sp0->unk2CE8 = 0.0f;
            sp0->unk2CE4 = (f32) arg1->unk4;
            sp0->unk18(sp0 + 0x2CE0);
            var_s5 = arg1 + 8;
            var_a0 = arg0 - 1;
            var_s7 = var_a0;
            if (arg0 >= 2) {
                temp_a0 = gl_wstatep;
                do {
                    var_s7 -= 1;
                    temp_a0->unkAC(temp_a0, *var_s0);
                    temp_f12 = var_s5->unk0;
                    var_s5 += 8;
                    var_s0 += 2;
                    ((? (*)(f32)) gl_wstatep->flags)(temp_f12);
                    var_a0 = gl_wstatep;
                } while (var_s7 != NULL);
            }
            gl_wstatep->unkDC(var_a0);
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-566C);
        return;
    }
    sp28 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-566C);
}

void gl_c_splf2(s32 arg0, f32 *arg1, u16 *arg2) {
    s64 spC30;
    s64 spC28;
    u16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    f32 *var_a2_2;
    f32 *var_a4_2;
    f32 *var_a7;
    f32 temp_f1;
    f32 temp_f3;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s64 var_ra;
    u16 *var_a0_2;
    u16 *var_a2;
    u16 *var_a4_3;
    u16 *var_s1;
    void *var_a4;

    var_ra = saved_reg_ra;
    var_s1 = arg2;
    if (saved_reg_gp->unk-4E00 != 0) {
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        spC30 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5698 + 0x20);
        var_ra = spC28;
        saved_reg_gp->unk-4E00 = 1;
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg0;
        var_a2 = &sp8;
        if (arg0 >= 0) {
            if (arg0 >= 0x101) {
                spC28 = var_ra;
                gl_ErrorHandler(0x61, 2, var_a4->unk2C);
                return;
            }
            sp0 = gl_n_splf2;
            var_a4_2 = arg1;
            sp4 = arg0 - 1;
            if (arg0 > 0) {
                var_a1 = arg0 & 3;
                var_a7 = var_a4_2;
                if (var_a1 != 0) {
                    do {
                        var_a2->unk0 = *var_s1;
                        var_a2->unk2 = 0;
                        var_a0 -= 1;
                        temp_f1 = *var_a4_2;
                        var_a4_2 += 8;
                        var_a2 += 0xC;
                        var_a2->unk-8 = temp_f1;
                        var_s1 += 2;
                        var_a1 -= 1;
                        var_a2->unk-4 = (f32) var_a4_2->unk-4;
                    } while (var_a1 != 0);
                    var_a7 = var_a4_2;
                }
                var_a0_2 = var_a2;
                if ((arg0 >> 2) != 0) {
                    var_a1_2 = var_a0;
                    var_a2_2 = var_a7;
                    var_a4_3 = var_s1;
                    do {
                        var_a0_2->unk0 = var_a4_3->unk0;
                        var_a0_2->unk2 = 0;
                        var_a0_2->unk4 = (f32) var_a2_2->unk0;
                        var_a0_2->unk8 = (f32) var_a2_2->unk4;
                        var_a0_2->unkC = (u16) var_a4_3->unk2;
                        var_a0_2->unkE = 0;
                        var_a0_2->unk10 = (f32) var_a2_2->unk8;
                        var_a0_2->unk14 = (f32) var_a2_2->unkC;
                        var_a0_2->unk18 = (u16) var_a4_3->unk4;
                        var_a0_2->unk1A = 0;
                        var_a0_2->unk1C = (f32) var_a2_2->unk10;
                        var_a0_2->unk20 = (f32) var_a2_2->unk14;
                        var_a0_2->unk24 = (u16) var_a4_3->unk6;
                        var_a0_2->unk26 = 0;
                        temp_f3 = var_a2_2->unk18;
                        var_a2_2 += 0x20;
                        var_a0_2 += 0x30;
                        var_a0_2->unk-8 = temp_f3;
                        var_a4_3 += 8;
                        var_a1_2 -= 4;
                        var_a0_2->unk-4 = (f32) var_a2_2->unk-4;
                    } while (var_a1_2 != 0);
                    var_a2 = var_a0_2;
                }
            }
            temp_a1 = arg0 * 6;
            var_a0_3 = temp_a1 + 4;
            if (var_a0_3 & 1) {
                spC28 = var_ra;
                var_a0_3 = temp_a1 + 5;
                *var_a2 = 0;
            }
            spC28 = var_ra;
            gl_compile(var_a0_3, sp, var_a2);
            return;
        }
        spC28 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk2C);
    }
}

void gl_n_splf2(void *arg0) {
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkAC(gl_wstatep, arg0->unk4);
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk8;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = 0.0f;
    subroutine_arg0->unk2CE4 = (f32) arg0->unkC;
    var_s0 = arg0 + 0x10;
    subroutine_arg0->unk18(subroutine_arg0 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            gl_wstatep->unkAC(gl_wstatep, var_s0->unk0);
            ((? (*)(f32)) gl_wstatep->flags)(var_s0->unk4);
            var_s0 += 0xC;
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
    if ((s32) var_s0 & 3) {

    }
}

void gl_i_splfs(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp30;
    s64 sp8;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    gl_wstate *temp_a0;
    gl_wstate *var_a0;
    gl_wstate *var_s7;
    s64 var_ra;
    u16 *var_s0;
    void *var_s5;

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
            gl_wstatep->unkAC(gl_wstatep, *arg2);
            sp8 = (s64) gl_wstatep;
            var_s0 = arg2 + 2;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp8->unk2CE0 = (s32) arg1->unk0;
            var_s5 = arg1 + 6;
            sp8->unk2CE4 = (s32) arg1->unk2;
            sp8->unk2CE8 = (s32) arg1->unk4;
            sp8->unk2CDC = 2;
            sp8->unk1C(sp8 + 0x2CE0);
            var_a0 = arg0 - 1;
            var_s7 = var_a0;
            if (arg0 >= 2) {
                temp_a0 = gl_wstatep;
                do {
                    var_s7 -= 1;
                    temp_a0->unkAC(temp_a0, *var_s0);
                    sp0 = var_s5->unk0;
                    sp2 = var_s5->unk2;
                    sp4 = var_s5->unk4;
                    var_s5 += 6;
                    var_s0 += 2;
                    ((? (*)(void *)) gl_wstatep->blendSrc)(sp);
                    var_a0 = gl_wstatep;
                } while (var_s7 != NULL);
            }
            gl_wstatep->unkDC(var_a0);
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-565C);
        return;
    }
    sp30 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-565C);
}

void gl_c_splfs(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp830;
    s64 sp828;
    u16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s16 temp_at;
    s16 temp_v0;
    s32 var_a1;
    s32 var_a4_2;
    s32 var_t0;
    s64 var_ra;
    u16 *var_a0_2;
    u16 *var_a1_2;
    u16 *var_a2;
    u16 *var_s1;
    void *var_a0;
    void *var_a4;
    void *var_a4_3;

    var_ra = saved_reg_ra;
    var_s1 = arg2;
    if (saved_reg_gp->unk-4DFC != 0) {
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp830 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5698 + 0x30);
        var_ra = sp828;
        saved_reg_gp->unk-4DFC = 1;
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg1;
        var_a2 = &sp8;
        if (arg0 >= 0) {
            if (arg0 >= 0x101) {
                sp828 = var_ra;
                gl_ErrorHandler(0x61, 2, var_a4->unk3C);
                return;
            }
            var_a4_2 = arg0;
            sp0 = gl_n_splfs;
            sp4 = arg0 - 1;
            if (arg0 > 0) {
                var_a1 = arg0 & 3;
                var_t0 = var_a4_2;
                if (var_a1 != 0) {
                    do {
                        var_a2->unk0 = *var_s1;
                        var_a2->unk2 = (s16) var_a0->unk0;
                        var_a4_2 -= 1;
                        temp_at = var_a0->unk2;
                        var_a0 += 6;
                        var_a2 += 8;
                        var_a2->unk-4 = temp_at;
                        var_s1 += 2;
                        var_a1 -= 1;
                        var_a2->unk-2 = (s16) var_a0->unk-2;
                    } while (var_a1 != 0);
                    var_t0 = var_a4_2;
                }
                var_a1_2 = var_a2;
                var_a4_3 = var_a0;
                if ((arg0 >> 2) != 0) {
                    var_a0_2 = var_s1;
                    var_a2 = (u16 *) var_t0;
                    do {
                        var_a1_2->unk0 = var_a0_2->unk0;
                        var_a1_2->unk2 = (s16) var_a4_3->unk0;
                        var_a1_2->unk4 = (s16) var_a4_3->unk2;
                        var_a1_2->unk6 = (s16) var_a4_3->unk4;
                        var_a1_2->unk8 = (u16) var_a0_2->unk2;
                        var_a1_2->unkA = (s16) var_a4_3->unk6;
                        var_a1_2->unkC = (s16) var_a4_3->unk8;
                        var_a1_2->unkE = (s16) var_a4_3->unkA;
                        var_a1_2->unk10 = (u16) var_a0_2->unk4;
                        var_a1_2->unk12 = (s16) var_a4_3->unkC;
                        var_a1_2->unk14 = (s16) var_a4_3->unkE;
                        var_a1_2->unk16 = (s16) var_a4_3->unk10;
                        var_a1_2->unk18 = (u16) var_a0_2->unk6;
                        var_a1_2->unk1A = (s16) var_a4_3->unk12;
                        temp_v0 = var_a4_3->unk14;
                        var_a4_3 += 0x18;
                        var_a1_2 += 0x20;
                        var_a1_2->unk-4 = temp_v0;
                        var_a0_2 += 8;
                        var_a2 -= 4;
                        var_a1_2->unk-2 = (s16) var_a4_3->unk-2;
                    } while (var_a2 != NULL);
                }
                sp828 = var_ra;
            }
            sp828 = var_ra;
            gl_compile((arg0 * 4) + 4, sp, var_a2);
            return;
        }
        sp828 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk3C);
    }
}

void gl_n_splfs(void *arg0) {
    gl_wstate *temp_a0;
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkAC(gl_wstatep, arg0->unk4);
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg2->unk2CE0 = (s32) arg0->unk6;
    var_s0 = arg0 + 0xC;
    subroutine_arg2->unk2CE4 = (s32) arg0->unk8;
    subroutine_arg2->unk2CE8 = (s32) var_s0->unk-2;
    subroutine_arg2->unk2CDC = 2;
    subroutine_arg2->unk1C(subroutine_arg2 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        temp_a0 = gl_wstatep;
        do {
            var_s1 -= 1;
            temp_a0->unkAC(temp_a0, var_s0->unk0);
            var_s0 += 8;
            ((? (*)(void *)) gl_wstatep->blendSrc)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
}

void gl_i_splfi(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp38;
    s64 sp10;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    gl_wstate *temp_a0;
    gl_wstate *var_a0;
    gl_wstate *var_s7;
    s64 var_ra;
    u16 *var_s0;
    void *var_s5;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp38;
    }
    if (arg0 == 0) {
        return;
    }
    if (arg0 >= 0) {
        sp38 = var_ra;
        if (arg0 < 0x101) {
            gl_wstatep->unkAC(gl_wstatep, *arg2);
            sp10 = (s64) gl_wstatep;
            var_s0 = arg2 + 2;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp10->unk2CE0 = (s32) arg1->unk0;
            var_s5 = arg1 + 0xC;
            sp10->unk2CE4 = (s32) arg1->unk4;
            sp10->unk2CE8 = (s32) arg1->unk8;
            sp10->unk2CDC = 2;
            sp10->unk1C(sp10 + 0x2CE0);
            var_a0 = arg0 - 1;
            var_s7 = var_a0;
            if (arg0 >= 2) {
                temp_a0 = gl_wstatep;
                do {
                    var_s7 -= 1;
                    temp_a0->unkAC(temp_a0, *var_s0);
                    sp0 = var_s5->unk0;
                    sp4 = var_s5->unk4;
                    sp8 = var_s5->unk8;
                    var_s5 += 0xC;
                    var_s0 += 2;
                    ((? (*)(void *)) gl_wstatep->zfunction)(sp);
                    var_a0 = gl_wstatep;
                } while (var_s7 != NULL);
            }
            gl_wstatep->unkDC(var_a0);
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-564C);
        return;
    }
    sp38 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-564C);
}

void gl_c_splfi(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp1030;
    s64 sp1028;
    u16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s32 temp_at;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a4_2;
    s32 var_t0;
    s64 var_ra;
    u16 *var_a0_2;
    u16 *var_a1_2;
    u16 *var_a2;
    u16 *var_s1;
    void *var_a0;
    void *var_a4;
    void *var_a4_3;

    var_ra = saved_reg_ra;
    var_s1 = arg2;
    if (saved_reg_gp->unk-4DF8 != 0) {
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp1030 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5698 + 0x40);
        var_ra = sp1028;
        saved_reg_gp->unk-4DF8 = 1;
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg1;
        var_a2 = &sp8;
        if (arg0 >= 0) {
            if (arg0 >= 0x101) {
                sp1028 = var_ra;
                gl_ErrorHandler(0x61, 2, var_a4->unk4C);
                return;
            }
            var_a4_2 = arg0;
            sp0 = gl_n_splfi;
            sp4 = arg0 - 1;
            if (arg0 > 0) {
                var_a1 = arg0 & 3;
                var_t0 = var_a4_2;
                if (var_a1 != 0) {
                    do {
                        var_a2->unk0 = *var_s1;
                        var_a2->unk2 = 0;
                        var_a2->unk4 = (s32) var_a0->unk0;
                        var_a4_2 -= 1;
                        temp_at = var_a0->unk4;
                        var_a0 += 0xC;
                        var_a2 += 0x10;
                        var_a2->unk-8 = temp_at;
                        var_s1 += 2;
                        var_a1 -= 1;
                        var_a2->unk-4 = (s32) var_a0->unk-4;
                    } while (var_a1 != 0);
                    var_t0 = var_a4_2;
                }
                var_a1_2 = var_a2;
                var_a4_3 = var_a0;
                if ((arg0 >> 2) != 0) {
                    var_a0_2 = var_s1;
                    var_a2 = (u16 *) var_t0;
                    do {
                        var_a1_2->unk0 = var_a0_2->unk0;
                        var_a1_2->unk2 = 0;
                        var_a1_2->unk4 = (s32) var_a4_3->unk0;
                        var_a1_2->unk8 = (s32) var_a4_3->unk4;
                        var_a1_2->unkC = (s32) var_a4_3->unk8;
                        var_a1_2->unk10 = (u16) var_a0_2->unk2;
                        var_a1_2->unk12 = 0;
                        var_a1_2->unk14 = (s32) var_a4_3->unkC;
                        var_a1_2->unk18 = (s32) var_a4_3->unk10;
                        var_a1_2->unk1C = (s32) var_a4_3->unk14;
                        var_a1_2->unk20 = (u16) var_a0_2->unk4;
                        var_a1_2->unk22 = 0;
                        var_a1_2->unk24 = (s32) var_a4_3->unk18;
                        var_a1_2->unk28 = (s32) var_a4_3->unk1C;
                        var_a1_2->unk2C = (s32) var_a4_3->unk20;
                        var_a1_2->unk30 = (u16) var_a0_2->unk6;
                        var_a1_2->unk32 = 0;
                        var_a1_2->unk34 = (s32) var_a4_3->unk24;
                        temp_v0 = var_a4_3->unk28;
                        var_a4_3 += 0x30;
                        var_a1_2 += 0x40;
                        var_a1_2->unk-8 = temp_v0;
                        var_a0_2 += 8;
                        var_a2 -= 4;
                        var_a1_2->unk-4 = (s32) var_a4_3->unk-4;
                    } while (var_a2 != NULL);
                }
                sp1028 = var_ra;
            }
            sp1028 = var_ra;
            gl_compile((arg0 * 8) + 4, sp, var_a2);
            return;
        }
        sp1028 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk4C);
    }
}

void gl_n_splfi(void *arg0) {
    s64 sp10;
    gl_wstate *temp_a0;
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkAC(gl_wstatep, arg0->unk4);
    sp10 = (s64) gl_wstatep;
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    sp10->unk2CE0 = (s32) arg0->unk8;
    var_s0 = arg0 + 0x14;
    sp10->unk2CE4 = (s32) arg0->unkC;
    sp10->unk2CE8 = (s32) var_s0->unk-4;
    sp10->unk2CDC = 2;
    sp10->unk1C(sp10 + 0x2CE0);
    var_s1 = temp_s1 - 1;
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        temp_a0 = gl_wstatep;
        do {
            var_s1 -= 1;
            temp_a0->unkAC(temp_a0, var_s0->unk0);
            var_s0 += 0x10;
            ((? (*)(void *)) gl_wstatep->zfunction)(sp);
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
}

void gl_i_splf(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp28;
    s64 sp0;
    gl_wstate *temp_a0;
    gl_wstate *var_a0;
    gl_wstate *var_s7;
    s64 var_ra;
    u16 *var_s0;
    void *var_s5;

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
            gl_wstatep->unkAC(gl_wstatep, *arg2);
            sp0 = (s64) gl_wstatep;
            var_s0 = arg2 + 2;
            gl_wstatep->unkD8(9);
            __iglooSetMoveDraw(0);
            sp0->unk2CE0 = (f32) arg1->unk0;
            var_s5 = arg1 + 0xC;
            sp0->unk2CE4 = (f32) arg1->unk4;
            sp0->unk2CDC = 1;
            sp0->unk2CE8 = (f32) arg1->unk8;
            sp0->unk18(sp0 + 0x2CE0);
            var_a0 = arg0 - 1;
            var_s7 = var_a0;
            if (arg0 >= 2) {
                temp_a0 = gl_wstatep;
                do {
                    var_s7 -= 1;
                    temp_a0->unkAC(temp_a0, *var_s0);
                    var_s0 += 2;
                    ((? (*)(f32, f32)) gl_wstatep->shadingModel)(var_s5->unk0, var_s5->unk8);
                    var_s5 += 0xC;
                    var_a0 = gl_wstatep;
                } while (var_s7 != NULL);
            }
            gl_wstatep->unkDC(var_a0);
            return;
        }
        gl_ErrorHandler(0x61, 2, sub_0f030000.unk-563C);
        return;
    }
    sp28 = var_ra;
    gl_ErrorHandler(3, 2, sub_0f030000.unk-563C);
}

void gl_c_splf(s32 arg0, void *arg1, u16 *arg2) {
    s64 sp1030;
    s64 sp1028;
    u16 sp8;
    s32 sp4;
    void (*sp0)(void *);
    f32 temp_f0;
    f32 temp_f1;
    s32 var_a1;
    s32 var_a4_2;
    s32 var_t0;
    s64 var_ra;
    u16 *var_a0_2;
    u16 *var_a1_2;
    u16 *var_a2;
    u16 *var_s1;
    void *var_a0;
    void *var_a4;
    void *var_a4_3;

    var_ra = saved_reg_ra;
    var_s1 = arg2;
    if (saved_reg_gp->unk-4DF4 != 0) {
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 != 0) {
            goto block_2;
        }
    } else {
        sp1030 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5698 + 0x50);
        var_ra = sp1028;
        saved_reg_gp->unk-4DF4 = 1;
        var_a4 = &sub_0f030000 - 0x5698;
        if (arg0 == 0) {
            return;
        }
block_2:
        var_a0 = arg1;
        var_a2 = &sp8;
        if (arg0 >= 0) {
            if (arg0 >= 0x101) {
                sp1028 = var_ra;
                gl_ErrorHandler(0x61, 2, var_a4->unk5C);
                return;
            }
            var_a4_2 = arg0;
            sp0 = gl_n_splf;
            sp4 = arg0 - 1;
            if (arg0 > 0) {
                var_a1 = arg0 & 3;
                var_t0 = var_a4_2;
                if (var_a1 != 0) {
                    do {
                        var_a2->unk0 = *var_s1;
                        var_a2->unk2 = 0;
                        var_a2->unk4 = (f32) var_a0->unk0;
                        var_a4_2 -= 1;
                        temp_f1 = var_a0->unk4;
                        var_a0 += 0xC;
                        var_a2 += 0x10;
                        var_a2->unk-8 = temp_f1;
                        var_s1 += 2;
                        var_a1 -= 1;
                        var_a2->unk-4 = (f32) var_a0->unk-4;
                    } while (var_a1 != 0);
                    var_t0 = var_a4_2;
                }
                var_a1_2 = var_a2;
                var_a4_3 = var_a0;
                if ((arg0 >> 2) != 0) {
                    var_a0_2 = var_s1;
                    var_a2 = (u16 *) var_t0;
                    do {
                        var_a1_2->unk0 = var_a0_2->unk0;
                        var_a1_2->unk2 = 0;
                        var_a1_2->unk4 = (f32) var_a4_3->unk0;
                        var_a1_2->unk8 = (f32) var_a4_3->unk4;
                        var_a1_2->unkC = (f32) var_a4_3->unk8;
                        var_a1_2->unk10 = (u16) var_a0_2->unk2;
                        var_a1_2->unk12 = 0;
                        var_a1_2->unk14 = (f32) var_a4_3->unkC;
                        var_a1_2->unk18 = (f32) var_a4_3->unk10;
                        var_a1_2->unk1C = (f32) var_a4_3->unk14;
                        var_a1_2->unk20 = (u16) var_a0_2->unk4;
                        var_a1_2->unk22 = 0;
                        var_a1_2->unk24 = (f32) var_a4_3->unk18;
                        var_a1_2->unk28 = (f32) var_a4_3->unk1C;
                        var_a1_2->unk2C = (f32) var_a4_3->unk20;
                        var_a1_2->unk30 = (u16) var_a0_2->unk6;
                        var_a1_2->unk32 = 0;
                        var_a1_2->unk34 = (f32) var_a4_3->unk24;
                        temp_f0 = var_a4_3->unk28;
                        var_a4_3 += 0x30;
                        var_a1_2 += 0x40;
                        var_a1_2->unk-8 = temp_f0;
                        var_a0_2 += 8;
                        var_a2 -= 4;
                        var_a1_2->unk-4 = (f32) var_a4_3->unk-4;
                    } while (var_a2 != NULL);
                }
                sp1028 = var_ra;
            }
            sp1028 = var_ra;
            gl_compile((arg0 * 8) + 4, sp, var_a2);
            return;
        }
        sp1028 = var_ra;
        gl_ErrorHandler(3, 2, var_a4->unk5C);
    }
}

void gl_n_splf(void *arg0) {
    gl_wstate *temp_t9;
    s32 temp_s1;
    s32 var_s1;
    void *var_s0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_s1 = arg0->unk0;
    gl_wstatep->unkAC(gl_wstatep, arg0->unk4);
    gl_wstatep->unkD8(9);
    __iglooSetMoveDraw(0);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk8;
    var_s0 = arg0 + 0x14;
    subroutine_arg0->unk2CE4 = (f32) arg0->unkC;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = (f32) var_s0->unk-4;
    var_s1 = temp_s1 - 1;
    subroutine_arg0->unk18(subroutine_arg0 + 0x2CE0);
    temp_t9 = gl_wstatep;
    if (var_s1 >= 0) {
        do {
            var_s1 -= 1;
            gl_wstatep->unkAC(gl_wstatep, var_s0->unk0);
            ((? (*)(f32, f32)) gl_wstatep->shadingModel)(var_s0->unk4, var_s0->unkC);
            var_s0 += 0x10;
        } while (var_s1 != -1);
    }
    temp_t9->unkDC();
}
