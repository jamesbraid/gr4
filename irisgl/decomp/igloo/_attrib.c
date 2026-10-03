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
    /* 0x0118 */ ? unk118;                          /* inferred */
    /* 0x0118 */ char pad118[0x8E8];
    /* 0x0A00 */ ? unkA00;                          /* inferred */
    /* 0x0A00 */ char padA00[0x140];
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glPassThrough(f32, s32, ?, ?);                    /* extern */
extern ? sub_0f020000;

void gl_g_pushattributes(void) {
    if (saved_reg_gp->unk-52B8 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6EA8);
        saved_reg_gp->unk-52B8 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_pushattributes(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_popattributes();
}

void gl_g_popattributes(void) {
    if (saved_reg_gp->unk-52B4 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6EB8);
        saved_reg_gp->unk-52B4 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_popattributes(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_n_popattributes();
}

void _pushattributes(void) {
    s32 *temp_a1;
    s32 *temp_at;
    s32 temp_a1_2;
    s32 var_a0;
    s32 var_a2;
    void *temp_a0;
    void *temp_a3;
    void *temp_s3;

    temp_s3 = gl_wstatep->unk114;
    if (&gl_wstatep->unkA00 != temp_s3) {
        gl_dm_save(gl_wstatep);
        var_a0 = 0x39;
        var_a2 = 0;
        temp_a3 = temp_s3 + 0xE4;
        do {
            temp_at = var_a2 + temp_a3;
            temp_a1 = var_a2 + temp_s3;
            var_a2 += 4;
            temp_a1_2 = *temp_a1;
            var_a0 -= 1;
            *temp_at = temp_a1_2;
        } while (var_a0 > 0);
        temp_a0 = temp_s3 + 0xE4;
        subroutine_arg0->unk114 = temp_a0;
        gl_set_drawfb(temp_a0, temp_a1_2, subroutine_arg0, temp_a3);
    } else {
        gl_ErrorHandler(0x2F, 2, sub_0f020000.unk6EB4);
    }
}

void _copy_unpushed_fbdata(void *arg0, void *arg1) {
    arg0->unk30 = (s32) arg1->unk30;
}

void _popattributes(void) {
    gl_wstate *temp_s3;
    void *var_s0;

    temp_s3 = gl_wstatep;
    var_s0 = temp_s3->unk114;
    if (&temp_s3->unk118 != var_s0) {
        var_s0 -= 0xE4;
    } else {
        gl_ErrorHandler(0x30, 2, sub_0f020000.unk6EC4);
    }
    temp_s3->unk114 = var_s0;
    gl_n_popattributes((s64) (var_s0 + 0x44), var_s0 + 0x128);
    gl_n_popattributes((s64) (var_s0 + 0x94), var_s0 + 0x178);
    gl_n_popattributes((s64) var_s0, var_s0 + 0xE4);
}

void _loadattribs(void *arg0, void *arg1, s32 arg2) {
    s64 sp30;
    s64 sp8;
    s16 sp2;
    s8 sp1;
    s8 sp0;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f12;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_f2;
    s32 var_a2;
    s64 var_ra;
    u16 temp_a1;
    void *temp_s2;
    void *temp_s4;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    temp_s4 = arg1->unk3C;
    temp_a3 = arg0->unk38;
    temp_s2 = arg0->unk3C;
    sp8 = (s64) gl_wstatep;
    if ((arg1->unk38 != temp_a3) || (var_a2 = temp_s4->unk4, (temp_s2->unk4 != var_a2))) {
        gl_set_drawmode(temp_a3, var_a2, temp_a3);
        var_ra = sp30;
    }
    if (arg0->unk48 != arg1->unk48) {
        sp30 = var_ra;
        gl_set_displaymode();
    }
    temp_a1 = temp_s4->unk34;
    temp_a3_2 = temp_s2->unk34 & 1;
    if ((temp_a1 & 1) != temp_a3_2) {
        sp30 = var_ra;
        gl_backbuffer(temp_a3_2 != 0, temp_a1);
    }
    temp_a3_3 = temp_s2->unk34 & 2;
    temp_a2 = temp_s4->unk34 & 2;
    if (temp_a2 != temp_a3_3) {
        sp30 = var_ra;
        gl_frontbuffer(temp_a3_3 != 0, temp_s4->unk34, temp_a2, temp_a3_3);
    }
    temp_a3_4 = temp_s2->unk34 & 4;
    if ((temp_s4->unk34 & 4) != temp_a3_4) {
        sp30 = var_ra;
        gl_zdraw(temp_a3_4 != 0, temp_s4->unk34);
    }
    temp_a1_2 = arg0->unk4;
    if (arg1->unk4 != temp_a1_2) {
        sp30 = var_ra;
        gl_setlinestyle((s64) ((s64) temp_a1_2 << 0x30) >> 0x30, temp_a1_2);
    }
    temp_f4 = arg0->unk10;
    if (arg1->unk10 != temp_f4) {
        gl_wstatep->unk114->unk10 = temp_f4;
        temp_f4_2 = arg0->unk10;
        var_f12 = temp_f4_2;
        if (temp_f4_2 == 0.0f) {
            sp30 = var_ra;
            var_f12 = 1.0f;
        } else {
            sp30 = var_ra;
        }
        __iglooLineWidth(var_f12);
        var_ra = sp30;
        if (__iglooGetRenderMode() == 0x1C01) {
            temp_f2 = (s32) (arg0->unk10 * 128.0f);
            sp0 = 0x3F;
            sp1 = 5;
            sp2 = (s16) temp_f2;
            glPassThrough((f32) sp0, temp_f2, 5, 0x3F);
            var_ra = sp30;
        }
    }
    temp_a0 = arg0->unk8;
    if (arg1->unk8 != temp_a0) {
        sp30 = var_ra;
        gl_lsrepeat(temp_a0);
    }
    temp_a1_3 = arg0->unkC;
    if (arg1->unkC != temp_a1_3) {
        sp30 = var_ra;
        gl_setpattern((s64) ((s64) temp_a1_3 << 0x30) >> 0x30, temp_a1_3);
    }
    temp_a0_2 = arg0->unk0;
    if (arg1->unk0 != temp_a0_2) {
        sp30 = var_ra;
        gl_findfont(temp_a0_2);
    }
    temp_a0_3 = arg0->unk14;
    sp30 = var_ra;
    if (arg1->unk14 != temp_a0_3) {
        gl_shademodel(temp_a0_3);
    }
    gl_dm_load(sp8);
}
