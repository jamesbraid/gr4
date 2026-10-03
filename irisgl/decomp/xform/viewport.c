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
    /* 0x0100 */ char pad100[0xA20];                /* maybe part of screenState[0x289]? */
    /* 0x0B20 */ s32 unkB20;                        /* inferred */
    /* 0x0B24 */ s32 unkB24;                        /* inferred */
    /* 0x0B28 */ f64 unkB28;                        /* inferred */
    /* 0x0B30 */ f64 unkB30;                        /* inferred */
    /* 0x0B38 */ f64 unkB38;                        /* inferred */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x368];               /* maybe part of currentVertex[0x37]? */
    /* 0x2E68 */ s16 unk2E68;                       /* inferred */
    /* 0x2E6A */ s16 unk2E6A;                       /* inferred */
    /* 0x2E6C */ s16 unk2E6C;                       /* inferred */
    /* 0x2E6E */ s16 unk2E6E;                       /* inferred */
    /* 0x2E70 */ void *unk2E70;                     /* inferred */
    /* 0x2E74 */ ? unk2E74;                         /* inferred */
    /* 0x2E74 */ char pad2E74[0x74];
} gl_wstate;                                        /* size = 0x2EE8 */

extern ? sub_0f020000;
extern ? sub_0f030000;

s32 gl_g_getscrmask(s16 *arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
    s16 temp_v0;
    void *temp_v0_2;

    temp_v0_2 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0DB4C)->unk-5B00;
    *arg0 = temp_v0_2->unk2E68;
    *arg1 = temp_v0_2->unk2E6A;
    *arg2 = temp_v0_2->unk2E6C;
    temp_v0 = temp_v0_2->unk2E6E;
    *arg3 = temp_v0;
    return (s32) temp_v0;
}

void iglooScrMask(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 var_s0;
    s16 var_s1;
    s16 var_s2;
    s16 var_s4;

    var_s4 = arg3;
    var_s2 = arg2;
    var_s1 = arg1;
    var_s0 = arg0;
    gl_wstatep->unk2E6E = var_s4;
    gl_wstatep->unk2E6C = var_s2;
    gl_wstatep->unk2E6A = var_s1;
    gl_wstatep->unk2E68 = var_s0;
    sp8 = (s64) gl_wstatep->active;
    __GLgetviewport(sp, &sp2, &sp4, &sp6);
    if (var_s0 < subroutine_arg0) {
        var_s0 = subroutine_arg0;
    }
    if (sp2 < var_s1) {
        var_s1 = sp2;
    }
    if (var_s2 < sp4) {
        var_s2 = sp4;
    }
    if (sp6 < var_s4) {
        var_s4 = sp6;
    }
    if ((var_s1 < var_s0) || (var_s4 < var_s2)) {
        __iglooScissor(0, 0, 0, 0);
    } else {
        __iglooScissor(sp8->unkAC + var_s0, sp8->unkB0 + var_s2, (var_s1 - var_s0) + 1, (var_s4 - var_s2) + 1);
    }
    __iglooSetEnable(0xC11, 1);
}

void gl_g_scrmask(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-4D60 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        sp28 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5328);
        saved_reg_gp->unk-4D60 = 1;
    }
    gl_compile(6, sp, arg2, arg3);
}

void gl_n_scrmask(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_g_getscrmask((s16 *) arg0->unk0, (s16 *) arg0->unk2, (s16 *) arg0->unk4, (s16 *) arg0->unk6);
}

void gl_do_viewport(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    gl_wstate *temp_s7;

    temp_s7 = gl_wstatep;
    __iglooExtViewport(arg2, (arg1 - arg0) + 1, (arg3 - arg2) + 1);
    if ((bitwise s32) temp_s7->modelviewStack.stack[0][1][0] == 1) {
        temp_s7->modelviewStack.stack[0][1][1] = 1e-45f;
        temp_s7->unkD8 = slowBegin;
    }
}

void gl_g_viewport(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-4D5C == 0) {
        sp40 = (s64) arg1;
        sp38 = (s64) arg2;
        sp30 = (s64) arg3;
        gl_intrptab_insert(&sub_0f030000 - 0x5318);
        saved_reg_gp->unk-4D5C = 1;
    }
    gl_compile(0xA, sp, arg2, arg3, arg1, arg3);
}

void gl_n_viewport(s64 arg0) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s16 temp_a2;
    s16 temp_a3;

    sp20 = arg0;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_a3 = sp20->unk6;
    temp_a2 = sp20->unk4;
    sp18 = (s64) temp_a3;
    sp10 = (s64) temp_a2;
    gl_do_viewport(sp20->unk0, sp20->unk2, temp_a2, temp_a3);
    gl_g_getscrmask((s16 *) subroutine_arg0, (s16 *) subroutine_arg2, (s16 *) temp_a2, (s16 *) temp_a3);
}

void __iglooExtViewport(s16 arg0, s32 arg1) {
    __iglooViewport(arg0 + M2C_ERROR(/* Read from unset register $a4 */), arg1 + M2C_ERROR(/* Read from unset register $a5 */));
}

s32 __iglooGetExtViewport(s32 *arg0, s64 arg1) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;

    sp18 = M2C_ERROR(/* Read from unset register $a5 */);
    sp20 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg1;
    __iglooGetViewport();
    *arg0 -= sp20;
    temp_v0 = *sp28 - sp18;
    *sp28 = temp_v0;
    return temp_v0;
}

void gl_g_reshapeviewport(void) {
    s32 sp4;

    __GLgetsize(sp, &sp4);
    __GLviewport(0, (s64) ((subroutine_arg0 - 1) << 0x30) >> 0x30, 0, (s64) ((sp4 - 1) << 0x30) >> 0x30);
}

void gl_g_screenspace(void) {
    s64 var_a5;
    s64 var_a6;
    u32 temp_a1;

    temp_a1 = gl_wstatep->active;
    var_a6 = 0;
    var_a5 = 0;
    if (temp_a1->unk20 & 1) {

    } else {
        var_a5 = (s64) temp_a1->unk34;
        var_a6 = (s64) temp_a1->unk30;
    }
    __GLviewport((s64) (var_a6 * -0x1000000000000) >> 0x30, (s64) ((gl_sstatep->display - var_a6) << 0x30) >> 0x30, (s64) (var_a5 * -0x1000000000000) >> 0x30, (s64) ((gl_sstatep->screen - var_a5) << 0x30) >> 0x30);
    __GLortho2(-0.5f, -0.5f);
}

void gl_mapzrange(s32 arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0D518;
    if ((*temp_at->unk-5B00)->unkB38 != temp_at->unk-3D98) {

    }
}

void __iglooCalcDepthExtrema(s32 arg0, s32 *arg1, s32 *arg2) {
    s64 sp18;
    s64 sp10;
    s32 temp_a4;
    s32 var_v0_2;
    s8 *var_v0;

    var_v0 = saved_reg_gp->unk-3818;
    if (var_v0 == (s8 *)-1) {
        sp18 = (s64) arg1;
        sp10 = (s64) arg2;
        var_v0 = getenv(&sub_0f020000 + 0x58B8);
        saved_reg_gp->unk-3818 = var_v0;
    }
    if (var_v0 != NULL) {
        var_v0_2 = -1 << arg0;
        if (arg0 >= 0x20) {
            var_v0_2 = 0;
        }
        temp_a4 = 1 << (arg0 - 1);
        *arg1 = temp_a4 | var_v0_2;
        *arg2 = ~(temp_a4 | var_v0_2);
    } else {
        *arg1 = 0;
        if (arg0 < 0x20) {
            *arg2 = ~(-1 << arg0);
        } else {
            *arg2 = -1;
        }
    }
}

void gl_g_setdepth(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4D58 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x5308, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4D58 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_g_lsetdepth(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4D54 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x52F8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4D54 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_setdepth(void *arg0) {
    f64 temp_f12;
    f64 temp_f14;
    s16 temp_a0;
    s16 temp_a1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_a1 = arg0->unk2;
    temp_a0 = arg0->unk0;
    temp_f14 = gl_wstatep->unkB40;
    gl_wstatep->unkB24 = (s32) temp_a1;
    temp_f12 = (second half of f64) + temp_f14;
    gl_wstatep->unkB20 = (s32) temp_a0;
    gl_wstatep->unkB30 = second half of f64;
    gl_wstatep->unkB28 = temp_f12;
    __iglooDepthRange(temp_f12, temp_f14, temp_a0, temp_a1);
    if (subroutine_arg0->unkB58 == 1) {
        subroutine_arg0->unkB5C = 1;
        subroutine_arg0->unkD8 = slowBegin;
    }
}

void gl_n_lsetdepth(void *arg0) {
    f64 temp_f12;
    f64 temp_f14;
    s32 temp_a0;
    s32 temp_a1;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_a1 = arg0->unk4;
    temp_a0 = arg0->unk0;
    temp_f14 = gl_wstatep->unkB40;
    gl_wstatep->unkB24 = temp_a1;
    temp_f12 = (second half of f64) + temp_f14;
    gl_wstatep->unkB20 = temp_a0;
    gl_wstatep->unkB30 = second half of f64;
    gl_wstatep->unkB28 = temp_f12;
    __iglooDepthRange(temp_f12, temp_f14, (s16) temp_a0, (s16) temp_a1);
    if (subroutine_arg0->unkB58 == 1) {
        subroutine_arg0->unkB5C = 1;
        subroutine_arg0->unkD8 = slowBegin;
    }
}

s32 gl_g_getdepth(s16 *arg0, s16 *arg1) {
    f64 temp_f0;
    void *temp_a4;
    void *temp_a5;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0D164;
    temp_a5 = *temp_at->unk-5B00;
    temp_f0 = temp_at->unk-3D98;
    temp_a4 = temp_a5 + 0xB10;
    if (temp_a5->unkB38 != temp_f0) {
        *arg0 = (s16) (s32) (temp_a5->unkB40 + (second half of f64));
        *arg1 = (s16) (s32) (temp_a4->unk30 + (temp_a4->unk20 / (second half of f64)));
        return second half of f64;
    }
    *arg0 = 0;
    *arg1 = 0;
    return (bitwise s32) temp_f0;
}

void gl_g_pushviewport(void) {
    if (saved_reg_gp->unk-4D50 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x52E8);
        saved_reg_gp->unk-4D50 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_pushviewport(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    im_pushviewport();
}

void im_pushviewport(void) {
    s32 temp_ra;
    void *temp_a5;

    temp_a5 = gl_wstatep->unk2E70;
    if ((gl_wstatep + 0x2F34) == temp_a5) {
        gl_ErrorHandler(0x33, 2, sub_0f030000.unk-52DC);
        return;
    }
    __GLgetviewport(temp_a5, temp_a5 + 2, temp_a5 + 4, temp_a5 + 6);
    __GLgetscrmask(subroutine_arg0 + 8, subroutine_arg0 + 0xA, subroutine_arg0 + 0xC, subroutine_arg0 + 0xE);
    subroutine_arg0->unk10 = (s32) subroutine_arg2->unkB20;
    temp_ra = subroutine_arg2->unkB24;
    subroutine_arg0->unk1C = (s32) subroutine_arg0->unk4;
    subroutine_arg0->unk18 = (s32) subroutine_arg0->unk0;
    subroutine_arg0->unk14 = temp_ra;
    subroutine_arg0->unk24 = (s32) subroutine_arg0->unkC;
    subroutine_arg0->unk2C = temp_ra;
    subroutine_arg0->unk20 = (s32) subroutine_arg0->unk8;
    subroutine_arg0->unk28 = (s32) subroutine_arg0->unk10;
    subroutine_arg2->unk2E70 = (s32) (subroutine_arg2->unk2E70 + 0x18);
}

void gl_g_popviewport(void) {
    if (saved_reg_gp->unk-4D4C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x52D8);
        saved_reg_gp->unk-4D4C = 1;
    }
    gl_compile(2, sp);
}

void gl_n_popviewport(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    im_popviewport();
}

void im_popviewport(void) {
    void *temp_a0;
    void *temp_a5;

    temp_a5 = gl_wstatep->unk2E70;
    if (&gl_wstatep->unk2E74 == temp_a5) {
        gl_ErrorHandler(0x34, 2, sub_0f030000.unk-52CC);
        return;
    }
    gl_wstatep->unk2E70 = temp_a5 - 0x18;
    temp_a0 = gl_wstatep->unk2E70;
    __GLviewport((s64) temp_a0->unk0, (s64) temp_a0->unk2, (s64) temp_a0->unk4, (s64) temp_a0->unk6);
    __GLscrmask(subroutine_arg0->unk8, subroutine_arg0->unkA, subroutine_arg0->unkC, subroutine_arg0->unkE);
    __GLlsetdepth(subroutine_arg0->unk10, subroutine_arg0->unk14);
}
