typedef struct __gl_sstateRec {
    /* 0x000 */ void **display;
    /* 0x004 */ s32 screen;
    /* 0x008 */ u32 root;
    /* 0x00C */ u32 colormap;
    /* 0x010 */ void **visual;
    /* 0x014 */ char pad14[8];                      /* maybe part of visual[3]? */
    /* 0x01C */ s32 unk1C;                          /* inferred */
    /* 0x020 */ char pad20[0xF0];                   /* maybe part of unk1C[0x3D]? */
    /* 0x110 */ s32 graphicsType;
} gl_sstate;                                        /* size = 0x114 */

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
    /* 0x003C */ char pad3C[0x5C];                  /* maybe part of currentNormal[8]? */
    /* 0x0098 */ ? (*unk98)(gl_wstate *, void *, s32); /* inferred */
    /* 0x009C */ char pad9C[0x2C];                  /* maybe part of unk98[0xC]? */
    /* 0x00C8 */ ? (*unkC8)(?);                     /* inferred */
    /* 0x00CC */ char padCC[0x14];                  /* maybe part of unkC8[6]? */
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ s32 unk100;                        /* inferred */
    /* 0x0104 */ char pad104[0x10];                 /* maybe part of unk100[5]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0x9FC];                /* maybe part of unk114[0x280]? */
    /* 0x0B14 */ u8 unkB14;                         /* inferred */
    /* 0x0B15 */ char padB15[3];                    /* maybe part of unkB14[4]? */
    /* 0x0B18 */ s32 unkB18;                        /* inferred */
    /* 0x0B1C */ char padB1C[0x24];                 /* maybe part of unkB18[0xA]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glPassThrough(f32, s32, ?, ?);                    /* extern */
? sprintf(void *, void *, void *);                  /* extern */
extern s32 __iglooMixedModel;
extern s32 __iglooSoftPupMask;
extern s32 __iglooSoftPupPlanes;
extern s32 __iglooSoftPupShift;
extern ? sub_0f020000;
extern ? sub_0f030000;
extern ? sub_0f040000;

s32 gl_g_getcmmode(void) {
    return 1;
}

s32 gl_g_getdisplaymode(void) {
    s32 temp_a3;
    s32 var_v0;
    void *temp_a4;

    temp_a4 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF43AE4)->unk-5B00)->unk114->unk3C;
    temp_a3 = temp_a4->unk0;
    var_v0 = 0;
    if (temp_a3 != 1) {
        if (temp_a3 == 2) {
            var_v0 = 2;
            if (temp_a4->unk4 != 0) {
                /* Duplicate return node #4. Try simplifying control flow for better match */
                return var_v0;
            }
            return 5;
        }
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return var_v0;
    }
    var_v0 = 1;
    if (temp_a4->unk4 != 0) {
        return var_v0;
    }
    return 0;
}

void _fb_initmodes(void *arg0) {
    arg0->unk30 = 0;
    arg0->unk18 = 1;
    arg0->unk0 = 1;
    arg0->unk4 = 1;
    arg0->unk1C = 1;
    arg0->unk28 = (s32) arg0->unk10;
    arg0->unk34 = 2;
    arg0->unk8 = 0;
    arg0->unk2C = (s32) arg0->unk14;
    arg0->unk24 = (s32) arg0->unkC;
    arg0->unk20 = (s32) arg0->unk8;
}

void _fb_initcolors(void *arg0) {
    f32 temp_f0;

    arg0->unk4B = 1;
    arg0->unk4A = 1;
    arg0->unk49 = 1;
    temp_f0 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF43A24)->unk-4CD0;
    arg0->unk48 = 1;
    arg0->unk4C = -1;
    arg0->unk44 = temp_f0;
    arg0->unk40 = temp_f0;
    arg0->unk3C = temp_f0;
    arg0->unk38 = temp_f0;
}

s32 gl_g_getdrawmode(void) {
    return (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF439E4)->unk-5B00)->unk114->unk38;
}

s32 gl_g_getplanes(void) {
    s32 temp_v0;
    s32 var_v0;

    if (gl_wstatep->unk114->unk38 != 0x100) {
        temp_v0 = __iglooGetVisualInfo();
        if (temp_v0 != 0) {
            if (temp_v0->unk10 == 0) {
                var_v0 = temp_v0->unk8;
                if ((temp_v0->unkC > 0) && (__iglooMixedModel == 0)) {
                    if (__iglooSoftPupShift != 0) {
                        var_v0 = __iglooSoftPupShift;
                    }
                }
            } else {
                var_v0 = temp_v0->unk20 + temp_v0->unk24 + (temp_v0->unk28 + temp_v0->unk2C);
            }
        } else {
            var_v0 = sp0;
        }
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

void gl_g_singlebuffer(void) {
    (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4390C)->unk-5B00)->unk114->unk3C->unk18 = 1;
}

void gl_g_doublebuffer(void) {
    (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF438E4)->unk-5B00)->unk114->unk3C->unk18 = 2;
}

void gl_g_cmode(void) {
    (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF438BC)->unk-5B00)->unk114->unk3C->unk1C = 1;
}

void gl_g_RGBmode(void) {
    (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF43894)->unk-5B00)->unk114->unk3C->unk1C = 0;
}

void gl_g_onemap(void) {

}

void gl_g_multimap(void) {

}

void gl_g_monobuffer(void) {
    (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF43860)->unk-5B00)->unk114->unk3C->unk20 = 0;
}

void gl_g_stereobuffer(void) {
    (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4383C)->unk-5B00)->unk114->unk3C->unk20 = 1;
}

void gl_g_mssize(s32 arg0, s32 arg1, s32 arg2) {
    void *temp_v0;

    temp_v0 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF43814)->unk-5B00;
    temp_v0->unk114->unk2C = arg0;
    temp_v0->unk114->unk30 = arg1;
    temp_v0->unk114->unk34 = arg2;
}

void gl_set_displaymode(void) {
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a2;
    void *temp_a3;
    void *temp_a3_2;

    temp_a3 = gl_wstatep->unk114;
    temp_a2 = gl_wstatep->unk100 & ~4;
    gl_wstatep->unk100 = temp_a2;
    temp_a3_2 = temp_a3 + 0x44;
    if (temp_a3->unk44 != 1) {
        var_a2 = temp_a2 | 2;
    } else {
        var_a2 = temp_a2 & ~2;
    }
    gl_wstatep->unk100 = var_a2;
    temp_a1 = var_a2 | 1;
    if (temp_a3_2->unk4 != 0) {
        gl_wstatep->unk100 = var_a2 & ~1;
    } else {
        gl_wstatep->unk100 = temp_a1;
    }
    gl_ws_displaymode(gl_wstatep, temp_a1, var_a2, temp_a3_2);
}

void gl_gconfig(void) {
    s64 sp18;
    s64 sp10;
    gl_wstate *temp_s0;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_s2;
    void *temp_s3;

    temp_s0 = gl_wstatep;
    temp_s3 = temp_s0->unk114;
    temp_a0 = temp_s3 + 0x94;
    sp18 = (s64) temp_a0;
    _fb_initmodes(temp_a0);
    temp_s2 = &sub_0f040000 - 0x7878;
    _fb_initmodes(temp_s2);
    _fb_initmodes(temp_s2 + 0x50);
    temp_a0_2 = temp_s2 + 0xA0;
    sp10 = (s64) temp_a0_2;
    _fb_initmodes(temp_a0_2);
    gl_set_drawmode();
    temp_a0_3 = temp_s3->unk60;
    temp_a1 = temp_s3->unk64;
    temp_a3 = temp_s3->unk6C;
    temp_a2 = temp_s3->unk68;
    temp_s3->unk58 = (s32) temp_s3->unk70;
    temp_s3->unk54 = temp_a3;
    temp_s3->unk50 = temp_a2;
    temp_s3->unk4C = temp_a1;
    temp_s3->unk48 = temp_a0_3;
    temp_s3->unk44 = (s32) temp_s3->unk5C;
    temp_s3->unk78 = (u16) (temp_s3->unk78 & ~4);
    gl_set_displaymode(temp_a0_3, temp_a1, temp_a2, temp_a3);
    gl_set_drawmode(0x10U);
    if (temp_s3->unk44 != 1) {
        gl_frontbuffer(0);
        gl_backbuffer(1);
    } else {
        gl_frontbuffer(1);
    }
    _fb_initcolors(temp_s3 + 0x44);
    _fb_initcolors((void *) sp18);
    _fb_initcolors(temp_s2);
    _fb_initcolors((void *) subroutine_arg2);
    _fb_initcolors((void *) sp10);
    __iglooColorMask(1U, 1U, 1U, 1U);
    temp_a1_2 = (*(void *)0x1004)->unk14->unk10;
    if (temp_a1_2 != 0) {
        __iglooIndexMask(-1, temp_a1_2);
    } else {
        temp_a1_3 = subroutine_arg0->unk14->unk8;
        __iglooIndexMask(~(-1 << temp_a1_3), temp_a1_3);
    }
    __GLreadsource(0);
    temp_s0->unkC8(1);
    __GLzfunction(temp_s0->unkB18);
    __iglooSaveDepthBufferScaleFactor(temp_s0);
}

void gl_g_drawmode(u32 arg0) {
    gl_wstate *temp_s0;

    temp_s0 = gl_wstatep;
    if (__iglooGetCurrentContextInfo() != 0) {
        gl_dm_save(temp_s0);
    }
    gl_set_drawmode(arg0);
    gl_dm_load(temp_s0);
}

void gl_set_drawfb(void *arg0) {
    s32 temp_a3;
    void *temp_at;

    temp_a3 = arg0->unk38;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF434CC;
    switch (temp_a3) {                              /* irregular */
    case 0x80:
        arg0->unk3C = (void *) (temp_at->unk-7FA0 - 0x7828);
        return;
    case 0x10:
        arg0->unk3C = (void *) (arg0 + 0x44);
        return;
    case 0x40:
        arg0->unk3C = (void *) (temp_at->unk-7FA0 - 0x77D8);
        return;
    case 0x100:
        arg0->unk3C = (void *) (temp_at->unk-7FA0 - 0x7878);
        return;
    case 0x20:
        arg0->unk3C = (void *) (arg0 + 0x94);
        return;
    }
}

void reloadAttribs(void *arg0) {
    f32 temp_f4;
    f32 var_f12;

    gl_setlinestyle(arg0->unk6);
    gl_wstatep->unk114->unk10 = (f32) arg0->unk10;
    temp_f4 = arg0->unk10;
    var_f12 = temp_f4;
    if (temp_f4 == 0.0f) {
        var_f12 = 1.0f;
    }
    __iglooLineWidth(var_f12);
    if (__iglooGetRenderMode() == 0x1C01) {
        glPassThrough(subroutine_arg0, (s32) (arg0->unk10 * 128.0f), 5, 0x3F);
    }
    gl_lsrepeat(arg0->unk8);
    gl_setpattern(arg0->unkE);
    gl_findfont(arg0->unk0);
    gl_shademodel(arg0->unk14);
}

void gl_set_drawmode(u32 arg0) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    u32 temp_a1;
    u32 var_s0;
    void *temp_s2;

    var_s0 = arg0;
    if (arg0 < 5U) {
        sp10 = (s64) gl_wstatep;
        var_s0 = *((var_s0 * 4) + (&sub_0f030000 - 0x64A0));
    }
    sp10 = (s64) gl_wstatep;
    temp_s2 = gl_wstatep->unk114;
    sp8 = (s64) gl_wstatep->active;
    temp_s2->unk38 = var_s0;
    sp0 = (s64) gl_sstatep->unk1C;
    gl_set_drawfb(temp_s2, gl_wstatep, gl_wstatep);
    temp_a1 = temp_s2->unk38;
    switch (temp_a1) {                              /* irregular */
    default:
        gl_ErrorHandler(0x62, 2, &sub_0f020000 + 0x44E0);
        /* fallthrough */
    case 0x10:
    case 0x100:
block_8:
        gl_wmdrawmode(var_s0);
        gl_wmfullscrn((sp8->unk20 & 1) != 0);
        gl_dm_save((gl_wstate *) sp10, var_s0);
        gl_set_drawfb(temp_s2);
        return;
    case 0x40:
        if (__iglooSoftPupPlanes == 0) {
            if (sp0->unk3C == 0) {
                gl_set_drawmode(0x40U, temp_a1, 0x100);
                return;
            }
            /* Duplicate return node #9. Try simplifying control flow for better match */
            gl_wmdrawmode(var_s0);
            gl_wmfullscrn((sp8->unk20 & 1) != 0);
            gl_dm_save((gl_wstate *) sp10, var_s0);
            gl_set_drawfb(temp_s2);
            return;
        }
        goto block_8;
    case 0x20:
        if (sp0->unk14 == 0) {
            gl_set_drawmode(0x20U, temp_a1, 0x100);
            return;
        }
        /* Duplicate return node #9. Try simplifying control flow for better match */
        gl_wmdrawmode(var_s0);
        gl_wmfullscrn((sp8->unk20 & 1) != 0);
        gl_dm_save((gl_wstate *) sp10, var_s0);
        gl_set_drawfb(temp_s2);
        return;
    case 0x80:
        if (sp0->unk54 == 0) {
            gl_set_drawmode(0x80U, temp_a1, 0x100);
            return;
        }
        /* Duplicate return node #9. Try simplifying control flow for better match */
        gl_wmdrawmode(var_s0);
        gl_wmfullscrn((sp8->unk20 & 1) != 0);
        gl_dm_save((gl_wstate *) sp10, var_s0);
        gl_set_drawfb(temp_s2);
        return;
    }
}

void invalidDrawmode(s32 arg0) {
    void *var_a2;

    if (arg0 != 0x40) {
        if (arg0 != 0x20) {
            var_a2 = saved_reg_gp - 0x4360;
            if (arg0 != 0x80) {

            } else {
                var_a2 = &sub_0f020000 + 0x4508;
            }
        } else {
            var_a2 = saved_reg_gp - 0x4368;
        }
    } else {
        var_a2 = &sub_0f020000 + 0x44F8;
    }
    sprintf(sp, &sub_0f020000 + 0x4518, var_a2);
    gl_ErrorHandler(0x62, 2, sp);
}

void gl_matchaux(s32 arg1) {
    if ((gl_sstatep->unk1C + (arg1 * 8))->unk14 != 0) {

    }
}

void gl_auxconfig(void) {
    s64 sp10;
    s32 temp_a2;
    u32 temp_a3;
    void *temp_a0;

    temp_a0 = gl_wstatep->unk114;
    sp10 = (s64) temp_a0;
    gl_set_drawmode(temp_a0->unk1C, 5U);
    temp_a2 = (s32) gl_wstatep->display & 0xFF;
    if (M2C_ERROR(/* Read from unset register $v0 */) != 5) {
        if (M2C_ERROR(/* Read from unset register $v0 */) != temp_a2) {
            temp_a3 = gl_wstatep->active;
            if ((temp_a3->unk2C != 5) && (temp_a2 != 0) && (temp_a2 != 5)) {
                temp_a3->unk20 = (s32) (temp_a3->unk20 | 0x1000);
            }
        }
    }
    gl_wstatep->display = M2C_ERROR(/* Read from unset register $v0 */);
    gl_set_drawmode(sp10->unk20, 8U, temp_a2);
    gl_wstatep->display = (void **) ((s32) gl_wstatep->display | (M2C_ERROR(/* Read from unset register $v0 */) << 8));
}

void gl_dm_save(gl_wstate *arg0) {
    void *temp_s7;

    temp_s7 = arg0->unk114->unk3C;
    if (temp_s7->unk4 != 0) {
        temp_s7->unk38 = (f32) __GLgetcolor();
    } else {
        __iglooGetFloatv(0xB00, temp_s7 + 0x38);
    }
    __iglooGetColorMask(temp_s7 + 0x48);
    temp_s7->unk4C = __GLgetwritemask();
}

void __iglooRebindCtx(void *arg0, s32 arg1) {
    if (arg1 == 0x10) {
        __GLzbuffer(arg0->unkB14);
        gl_depthcue(arg0->unkB58, 1);
        __iglooRebindLightdata(arg0);
        __iglooRebindBlendLogicopData(arg0);
        if ((*(void **)0x1004)->unk14->unk10 != 0) {
            gl_texbind(0, arg0->unk2DBC->unk4, 1);
            gl_tevbind(0, arg0->unk2DBC->unk14);
        }
    }
    gl_linesmooth(arg0->unkBC0);
    gl_dither(arg0->unkBC4);
}

void gl_dm_load(gl_wstate *arg0) {
    s64 sp0;
    s32 temp_a2;
    s32 var_a1;
    void *temp_s1;
    void *temp_s1_2;

    temp_s1 = arg0->unk114;
    temp_a2 = temp_s1->unk38;
    temp_s1_2 = temp_s1->unk3C;
    if (temp_a2 != 0x20) {
        if ((__iglooSoftPupPlanes == 0) || (var_a1 = -1, (temp_a2 != 0x40))) {
            var_a1 = -1;
            arg0->unk2F50 = 0;
            goto block_4;
        }
        arg0->unk2F50 = 0;
        arg0->unk2F54 = (s32) ((1 << __iglooSoftPupPlanes) - 1);
    } else {
        arg0->unk2F50 = (s32) __iglooSoftPupShift;
        var_a1 = __iglooSoftPupMask;
block_4:
        arg0->unk2F54 = var_a1;
    }
    sp0 = (s64) temp_a2;
    if (temp_s1_2->unk4 != 0) {
        __GLcolor((s32) temp_s1_2->unk38 & 0xFFFF, var_a1, temp_a2);
    } else {
        arg0->unk98(arg0, temp_s1_2 + 0x38, temp_a2);
    }
    __iglooColorMask(temp_s1_2->unk48, temp_s1_2->unk49, temp_s1_2->unk4A, temp_s1_2->unk4B);
    __GLwritemask(temp_s1_2->unk4E);
    if (sp0 == 0x10) {
        if (arg0->unkB14 != 1) {
            __iglooSetEnable(0xB71, 0);
        } else {
            __GLzfunction(arg0->unkB18, sp0);
            __iglooSetEnable(0xB71, 1);
        }
    }
}

void gl_hwd_getconfig(s32 arg0, void *arg1, s32 arg2, void *arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a5;
    s32 temp_a5_10;
    s32 temp_a5_11;
    s32 temp_a5_12;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a5_7;
    s32 temp_a5_8;
    s32 temp_a5_9;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a7;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8;
    s64 var_t9;
    void *var_a1;
    void *var_a3;
    void *var_a6;

    var_a1 = arg1;
    var_a3 = arg3;
    var_t8 = 0;
    var_t3 = 0;
    var_t2 = 0;
    sp10 = 0;
    var_t9 = 0;
    var_a7 = arg0 - 3;
    var_a6 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF42D5C)->unk-7E70)->unk1C;
    if (var_a7 >= 0) {
        sp18 = (s64) var_a6;
        var_t9 = sp10;
        var_a5 = (s32) (var_a7 + 3) / 3;
        M2C_TRAP_IF(3 == 0);
        if (var_a5 & 1) {
            sp8 = (s64) var_a5;
            temp_a5 = var_a1->unk4;
            var_a7 -= 3;
            if (temp_a5 != 4) {
                if (temp_a5 == 2) {
                    if (var_a1->unk0 == 0x2000) {
                        var_t9 = (s64) var_a1->unk8;
                    }
                }
            } else {
                temp_a5_2 = var_a1->unk0;
                switch (temp_a5_2) {                /* switch 3; irregular */
                case 0x1000:                        /* switch 3 */
                    break;
                case 0x3000:                        /* switch 3 */
                    var_t8 = var_a1->unk8;
                    break;
                case 0x2000:                        /* switch 3 */
                    var_t2 = var_a1->unk8;
                    break;
                case 0x4000:                        /* switch 3 */
                    var_t3 = var_a1->unk8;
                    break;
                }
            }
            var_a1 += 0xC;
            var_a5 = (s32) sp8;
        }
        if ((var_a5 >> 1) != 0) {
loop_78:
            temp_a5_3 = var_a1->unk4;
            var_a7 -= 6;
            if (temp_a5_3 != 4) {
                if ((temp_a5_3 == 2) && (var_a1->unk0 == 0x2000)) {
                    var_t9 = (s64) var_a1->unk8;
                }
            } else {
                temp_a5_4 = var_a1->unk0;
                switch (temp_a5_4) {                /* switch 1; irregular */
                case 0x1000:                        /* switch 1 */
                    break;
                case 0x2000:                        /* switch 1 */
                    var_t2 = var_a1->unk8;
                    break;
                case 0x4000:                        /* switch 1 */
                    var_t3 = var_a1->unk8;
                    break;
                case 0x3000:                        /* switch 1 */
                    var_t8 = var_a1->unk8;
                    break;
                }
            }
            temp_a5_5 = var_a1->unk10;
            if (temp_a5_5 != 4) {
                if (temp_a5_5 == 2) {
                    if (var_a1->unkC == 0x2000) {
                        var_t9 = (s64) var_a1->unk14;
                    }
                }
            } else {
                temp_a5_6 = var_a1->unkC;
                switch (temp_a5_6) {                /* switch 2; irregular */
                case 0x1000:                        /* switch 2 */
                    break;
                case 0x3000:                        /* switch 2 */
                    var_t8 = var_a1->unk14;
                    break;
                case 0x2000:                        /* switch 2 */
                    var_t2 = var_a1->unk14;
                    break;
                case 0x4000:                        /* switch 2 */
                    var_t3 = var_a1->unk14;
                    break;
                }
            }
            var_a1 += 0x18;
            if (var_a7 >= 0) {
                goto loop_78;
            }
        }
        var_a6 = (void *) sp18;
    }
    if (var_t8 != 0) {
        if (var_a6->unk14 != 0) {
            var_a1_2 = (*var_a6->unk18)->unkC;
        } else {
            var_a1_2 = 0;
        }
        var_t8 = var_a1_2;
    }
    if (var_t2 != 0) {
        if (var_a6->unk3C != 0) {
            var_a1_3 = (*var_a6->unk40)->unkC;
        } else {
            var_a1_3 = 0;
        }
        var_t2 = var_a1_3;
    }
    if (var_t3 != 0) {
        if (var_a6->unk54 != 0) {
            var_a1_4 = (*var_a6->unk58)->unkC;
        } else {
            var_a1_4 = 0;
        }
        var_t3 = var_a1_4;
    }
    var_a2 = arg2 - 3;
    if (var_a2 >= 0) {
        var_a5_2 = (s32) (var_a2 + 3) / 3;
        M2C_TRAP_IF(3 == 0);
        if (var_a5_2 & 1) {
            sp0 = (s64) var_a5_2;
            temp_a5_7 = var_a3->unk0;
            var_a2 -= 3;
            if (temp_a5_7 != 0x1000) {
                if (temp_a5_7 == 0x2000) {
                    temp_a5_8 = var_a3->unk4;
                    if (temp_a5_8 != 4) {
                        if (temp_a5_8 != 2) {
                            var_a3->unk8 = 0;
                        } else {
                            var_a3->unk8 = (s32) var_t9;
                        }
                    } else {
                        var_a3->unk8 = var_t2;
                    }
                } else if (temp_a5_7 == 0x4000) {
                    if (var_a3->unk4 != 4) {
                        var_a3->unk8 = 0;
                    } else {
                        var_a3->unk8 = var_t3;
                    }
                } else if (temp_a5_7 == 0x3000) {
                    if (var_a3->unk4 != 4) {
                        var_a3->unk8 = 0;
                    } else {
                        var_a3->unk8 = var_t8;
                    }
                }
            }
            var_a3 += 0xC;
            var_a5_2 = (s32) sp0;
        }
        if ((var_a5_2 >> 1) != 0) {
loop_40:
            temp_a5_9 = var_a3->unk0;
            var_a2 -= 6;
            if (temp_a5_9 != 0x1000) {
                if (temp_a5_9 == 0x2000) {
                    temp_a5_10 = var_a3->unk4;
                    if (temp_a5_10 != 4) {
                        if (temp_a5_10 != 2) {
                            var_a3->unk8 = 0;
                        } else {
                            var_a3->unk8 = (s32) var_t9;
                        }
                    } else {
                        var_a3->unk8 = var_t2;
                    }
                } else if (temp_a5_9 == 0x4000) {
                    if (var_a3->unk4 != 4) {
                        var_a3->unk8 = 0;
                    } else {
                        var_a3->unk8 = var_t3;
                    }
                } else if (temp_a5_9 == 0x3000) {
                    if (var_a3->unk4 != 4) {
                        var_a3->unk8 = 0;
                    } else {
                        var_a3->unk8 = var_t8;
                    }
                }
            }
            temp_a5_11 = var_a3->unkC;
            if (temp_a5_11 != 0x1000) {
                if (temp_a5_11 == 0x2000) {
                    temp_a5_12 = var_a3->unk10;
                    if (temp_a5_12 != 4) {
                        if (temp_a5_12 != 2) {
                            goto block_38;
                        }
                        var_a3->unk14 = (s32) var_t9;
                    } else {
                        var_a3->unk14 = var_t2;
                    }
                } else if (temp_a5_11 == 0x4000) {
                    if (var_a3->unk10 != 4) {
                        goto block_38;
                    }
                    var_a3->unk14 = var_t3;
                } else if (temp_a5_11 == 0x3000) {
                    if (var_a3->unk10 != 4) {
block_38:
                        var_a3->unk14 = 0;
                    } else {
                        var_a3->unk14 = var_t8;
                    }
                }
            }
            var_a3 += 0x18;
            if (var_a2 >= 0) {
                goto loop_40;
            }
        }
    }
}
