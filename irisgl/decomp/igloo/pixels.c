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
    /* 0x2B00 */ char pad2B00[0x310];               /* maybe part of currentVertex[0x32]? */
    /* 0x2E10 */ f32 unk2E10;                       /* inferred */
    /* 0x2E14 */ f32 unk2E14;                       /* inferred */
    /* 0x2E18 */ s32 unk2E18;                       /* inferred */
    /* 0x2E1C */ u32 unk2E1C;                       /* inferred */
    /* 0x2E20 */ u32 unk2E20;                       /* inferred */
    /* 0x2E24 */ u32 unk2E24;                       /* inferred */
    /* 0x2E28 */ u32 unk2E28;                       /* inferred */
    /* 0x2E2C */ u32 unk2E2C;                       /* inferred */
    /* 0x2E30 */ u32 unk2E30;                       /* inferred */
    /* 0x2E34 */ u32 unk2E34;                       /* inferred */
    /* 0x2E38 */ char pad2E38[8];                   /* maybe part of unk2E34[3]? */
    /* 0x2E40 */ ? unk2E40;                         /* inferred */
    /* 0x2E40 */ char pad2E40[4];
    /* 0x2E44 */ ? unk2E44;                         /* inferred */
    /* 0x2E44 */ char pad2E44[0xC];
    /* 0x2E50 */ ? unk2E50;                         /* inferred */
    /* 0x2E50 */ char pad2E50[4];
    /* 0x2E54 */ ? unk2E54;                         /* inferred */
    /* 0x2E54 */ char pad2E54[0x94];
} gl_wstate;                                        /* size = 0x2EE8 */

? glCopyPixels(s32, s32, s64, s64);                 /* extern */
? glDrawPixels(s32, s32, s32, s32);                 /* extern */
? glReadPixels(s32, s32, s64, s64);                 /* extern */
? perror(void *);                                   /* extern */
? sprintf(void *, void *, s32, u32);                /* extern */
? zfunction(s32);                                   /* extern */
extern ? __iglooMatrixRgb2Bgr;
extern ? sub_0f020000;
extern ? sub_0f030000;

void __iglooDummyRevMem(void) {

}

void __iglooRevMemGLuint(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_t0;
    void *var_a0;
    void *var_a0_2;
    void *var_a3_2;
    void *var_a4;

    var_a0 = arg0;
    var_a2 = arg2;
    temp_a5 = var_a2;
    var_a4 = (arg1 * 4) + var_a0;
    if (var_a2 != 0) {
        var_a3 = var_a2 & 3;
        var_t0 = var_a2;
        if (var_a3 != 0) {
            do {
                var_a4 -= 4;
                var_a0 += 4;
                var_a2 -= 1;
                var_a3 -= 1;
                temp_at = var_a0->unk-4;
                var_a0->unk-4 = (s32) var_a4->unk4;
                var_a4->unk4 = temp_at;
            } while (var_a3 != 0);
            var_t0 = var_a2;
        }
        var_a3_2 = var_a4;
        if ((temp_a5 >> 2) != 0) {
            var_a2_2 = var_t0;
            var_a0_2 = var_a0;
            do {
                temp_v0 = var_a0_2->unk0;
                var_a0_2->unk0 = (s32) var_a3_2->unk0;
                var_a3_2->unk0 = temp_v0;
                temp_at_2 = var_a3_2->unk-4;
                temp_a1 = var_a0_2->unk4;
                var_a3_2 -= 0x10;
                var_a0_2->unk4 = temp_at_2;
                var_a3_2->unkC = temp_a1;
                temp_v0_2 = var_a0_2->unk8;
                var_a0_2 += 0x10;
                var_a0_2->unk-8 = (s32) var_a3_2->unk8;
                var_a3_2->unk8 = temp_v0_2;
                var_a2_2 -= 4;
                temp_a1_2 = var_a0_2->unk-4;
                var_a0_2->unk-4 = (s32) var_a3_2->unk4;
                var_a3_2->unk4 = temp_a1_2;
            } while (var_a2_2 != 0);
        }
    }
}

void __iglooPickRevMemProc(s32 arg0) {
    if ((arg0 != 0x1406) && (arg0 != 0x1908) && (arg0 != 0x8000)) {

    }
}

void gl_g_rectzoom(f32 arg0, f32 arg1) {
    gl_wstatep->unk2E14 = arg1;
    gl_wstatep->unk2E10 = arg0;
    __iglooPixelZoom();
}

void gl_g_readRGB(s64 arg0, s8 *arg1, void *arg2, void *arg3) {
    s32 *var_s4;
    s32 temp_at;
    s64 temp_v1;
    s64 var_s0;
    s8 *var_s2;
    void *var_s1;
    void *var_s3;

    arg0.unk-98 = (s64) saved_reg_fp;
    arg0.unk-78 = (s64) saved_reg_s2;
    var_s2 = arg1;
    arg0.unk-80 = (s64) saved_reg_s0;
    arg0.unk-68 = (s64) saved_reg_s1;
    var_s1 = arg3;
    arg0.unk-70 = (s64) saved_reg_s3;
    arg0.unk-90 = (s64) saved_reg_gp;
    var_s3 = arg2;
    arg0.unk-58 = (s64) saved_reg_ra;
    arg0.unk-60 = (s64) gl_wstatep;
    __iglooGetBooleanv(0xB08, &arg0 - 0x29);
    if (arg0.unk-29 != 0) {
        arg0.unk-A0 = (s64) saved_reg_s4;
        var_s4 = sp - (((arg0 * 4) + 0xF) & ~0xF);
        if (__iglooGetRenderMode() != 0x1C00) {

        } else {
            arg0.unk-88 = arg0;
            __iglooPixelStorei(0xD05, 4);
            __iglooPixelStorei(0xD02, 0);
            __iglooPixelZoom(1.0f);
            if (__iglooGetGraphicsType() != 8) {
                __iglooGetIntegerv(0xB07, &arg0 - 0x50);
                glReadPixels(arg0.unk-50, arg0.unk-4C, arg0, 1);
            } else {
                __iglooGetFloatv(0xB07, &arg0 - 0x40);
                glReadPixels((s32) ((f64) arg0.unk-40 + 0.5 + -0.0001), (s32) (second half of f64), arg0, 1);
            }
            __iglooPixelZoom(arg0.unk-60->unk2E10);
            var_s0 = (s64) ((arg0 - 1) << 0x30) >> 0x30;
            if (arg0 != 0) {
                do {
                    temp_at = *var_s4;
                    var_s1 += 1;
                    var_s4 += 4;
                    *var_s2 = (s8) temp_at;
                    var_s3 += 1;
                    var_s2 += 1;
                    var_s3->unk-1 = (s8) ((u32) var_s4->unk-4 >> 8);
                    temp_v1 = var_s0;
                    var_s0 = (s64) ((var_s0 - 1) << 0x30) >> 0x30;
                    var_s1->unk-1 = (s8) ((u32) var_s4->unk-4 >> 0x10);
                } while (temp_v1 != 0);
            }
        }
    } else {
        arg0.unk-A0 = (s64) saved_reg_s4;
    }
}

void gl_g_lrectwrite(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp58;
    void *sp10;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_v0;
    void *temp_v0_2;

    sp88 = arg3;
    sp80 = arg2;
    sp78 = arg1;
    sp70 = arg0;
    sp90 = M2C_ERROR(/* Read from unset register $a4 */);
    sp98 = (s64) gl_wstatep;
    if (M2C_ERROR(/* Read from unset register $a4 */) & 3) {
        gl_ErrorHandler(0x6F, 5, &sub_0f020000 + 0x4C48);
        return;
    }
    if (__iglooGetRenderMode() != 0x1C00) {
        return;
    }
    sp10 = (void *) sp90;
    __iglooAdjustPosition(sp98, sp70, sp78, sp80);
    sp68 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
    gl_g_readsource(sp98, sp, 1);
    gl_g_readsource((s64) sp);
    if (sp31 == 1) {
        temp_a3 = sp98->unk2E34;
        if (temp_a3 != 0) {
            sp60 = (s64) temp_a3;
        } else {
            temp_v0 = sp98->unk2E30 + (sp98->unk2E2C * subroutine_arg2) + 0x1F;
            sp60 = (s64) ((s32) (((u32) (temp_v0 >> 4) >> 0x1B) + temp_v0) >> 5);
        }
        temp_v0_2 = __iglooMalloc(subroutine_arg3 * subroutine_arg2 * 4, subroutine_arg3, subroutine_arg2, temp_a3);
        sp10 = temp_v0_2;
        __iglooAdjustPosition((s64) temp_v0_2, sp90, (s64) subroutine_arg2, (s64) subroutine_arg3);
    }
    temp_a3_2 = sp98->unk2E1C;
    if (temp_a3_2 != 0) {
        __iglooAdjustPosition((s64) sp10, (s64) subroutine_arg2, (s64) subroutine_arg3, (s64) temp_a3_2);
    } else if (sp32 != 1) {
        if (sp30 == 1) {
            __iglooAdjustPosition((s64) subroutine_arg2, (s64) subroutine_arg3, (s64) sp10, (s64) temp_a3_2);
        }
    } else {
        sp58 = __iglooGetMatrixMode();
        __iglooMatrixMode(0x1800);
        __iglooLoadMatrix(&__iglooMatrixRgb2Bgr);
    }
    if (((void *) sp98)->unk2E18 & 1) {
        __iglooAdjustPosition((s64) subroutine_arg2, (s64) subroutine_arg3, (s64) sp10);
    }
    if (sp98->unk2E28 != 0) {
        __iglooAdjustPosition((s64) subroutine_arg2, (s64) subroutine_arg3, (s64) sp10);
    }
    if (sp20 == 0x1902) {
        __iglooPixelTransferf(0xD1E);
    }
    __iglooWindowRasterPos((f32) subroutine_arg0, subroutine_arg1);
    if (sp68 != 0) {
        __iglooPixelZoom(sp14);
        glDrawPixels(subroutine_arg2, subroutine_arg3, sp20, sp24);
        __iglooPixelZoom(sp98->unk2E10);
    } else {
        glDrawPixels(subroutine_arg2, subroutine_arg3, sp20, sp24);
    }
    if (sp20 == 0x1902) {
        __iglooPixelTransferf(0xD1E);
    }
    gl_g_readsource((s64) sp);
    if (sp32 == 1) {
        __iglooLoadIdentity(1);
        __iglooMatrixMode(sp58);
    }
    if (sp31 == 1) {
        __iglooFree(sp10);
    }
}

void gl_g_rectwrite(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 temp_a2;
    s64 temp_a5;
    s64 temp_a6;
    s64 temp_v0;
    s64 var_v0;

    sp58 = arg3;
    sp50 = arg2;
    sp60 = arg1;
    sp38 = M2C_ERROR(/* Read from unset register $a4 */);
    sp68 = arg0;
    sp40 = M2C_ERROR(/* Read from unset register $a4 */);
    sp48 = (s64) gl_wstatep;
    if (M2C_ERROR(/* Read from unset register $a4 */) & 1) {
        gl_ErrorHandler(0x6F, 5, &sub_0f020000 + 0x4C58);
        return;
    }
    if (__iglooGetRenderMode(M2C_ERROR(/* Read from unset register $a4 */)) != 0x1C00) {
        return;
    }
    if (sp50 < sp68) {
        temp_a5 = sp50;
        sp50 = sp68;
        sp68 = temp_a5;
    }
    if (sp58 < sp60) {
        temp_a6 = sp58;
        sp58 = sp60;
        sp60 = temp_a6;
    }
    var_v0 = 0x1902;
    if (!(sp48->unk114->unk3C->unk34 & 4)) {
        var_v0 = 0x1900;
    }
    sp20 = var_v0;
    sp28 = sp58 - sp60;
    sp30 = (sp50 - sp68) + 1;
    if (sp48->unk2F50 != 0) {
        temp_a2 = sp28 + 1;
        sp18 = temp_a2;
        temp_v0 = __iglooMalloc(sp30 * temp_a2 * 2, (s32) sp30, (s32) temp_a2);
        sp10 = temp_v0;
        sp40 = temp_v0;
        memcpy((void *) temp_v0, (void *) sp38, (u32) subroutine_arg2);
        __iglooAdjustPosition(sp10, sp30, temp_a2, (s64) sp48->unk2F50);
    }
    __iglooPixelStorei(0xCF5, 2);
    __iglooPixelStorei(0xCF2, 0);
    __iglooGetAndSetEnable(0xFDF, 0, sp);
    __iglooWindowRasterPos((f32) sp68);
    glDrawPixels((s32) sp30, sp28 + 1, (s32) sp20, 0x1403);
    __iglooSetSavedEnable(0xFDF, 0, subroutine_arg0);
    if ((sp40 != 0) && (sp38 != sp40)) {
        __iglooFree((void *) sp40);
    }
}

void gl_g_rectread(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a7;
    s64 temp_a2;
    s64 temp_a5;
    s64 temp_v1;

    sp28 = arg3;
    sp40 = arg2;
    sp30 = arg1;
    sp38 = arg0;
    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    sp20 = (s64) gl_wstatep;
    if (M2C_ERROR(/* Read from unset register $a4 */) & 1) {
        gl_ErrorHandler(0x6F, 5, &sub_0f020000 + 0x4C68);
        return;
    }
    if (__iglooGetRenderMode() != 0x1C00) {
        return;
    }
    if (sp20->unk114->unk3C->unk30 != 3) {

    }
    if (sp40 < sp38) {
        temp_v1 = sp40;
        sp40 = sp38;
        sp38 = temp_v1;
    }
    if (sp28 < sp30) {
        temp_a5 = sp28;
        sp28 = sp30;
        sp30 = temp_a5;
    }
    __iglooPixelStorei(0xD05, 2);
    __iglooPixelStorei(0xD02, 0);
    temp_a2 = (sp40 - sp38) + 1;
    sp10 = temp_a2;
    glReadPixels((s32) sp38, (s32) sp30, temp_a2, (sp28 - sp30) + 1);
    temp_a7 = sp20->unk2F50;
    if (temp_a7 != 0) {
        __iglooAdjustPosition(sp18, sp10, subroutine_arg2, (s64) -temp_a7);
    }
}

void gl_g_writeRGB(s64 arg0, u8 *arg1, u8 *arg2, u8 *arg3) {
    s64 temp_a1;
    s64 temp_at;
    s64 temp_v0;
    s64 var_a1;
    s64 var_a2;
    u8 *var_s0;
    u8 *var_s1;
    u8 *var_s2;

    arg0.unk-40 = (s64) saved_reg_s2;
    var_s2 = arg3;
    arg0.unk-50 = (s64) saved_reg_s0;
    var_s0 = arg2;
    arg0.unk-48 = (s64) saved_reg_s1;
    var_s1 = arg1;
    arg0.unk-38 = (s64) saved_reg_ra;
    arg0.unk-68 = (s64) saved_reg_fp;
    arg0.unk-70 = (s64) saved_reg_gp;
    arg0.unk-58 = arg0;
    arg0.unk-60 = (s64) (sp - (((arg0 * 4) + 0xF) & ~0xF));
    if (__iglooGetRenderMode(0xFFF381E8) == 0x1C00) {
        temp_at = arg0.unk-58;
        var_a2 = arg0.unk-60;
        var_a1 = (s64) ((temp_at - 1) << 0x30) >> 0x30;
        if (temp_at != 0) {
loop_2:
            temp_a1 = (s64) ((var_a1 - 1) << 0x30) >> 0x30;
            *var_a2 = (s32) (*var_s1 | (*var_s0 << 8) | (*var_s2 << 0x10));
            temp_v0 = temp_a1;
            if (var_a1 != 0) {
                var_a2 += 8;
                var_s2 += 2;
                var_s0 += 2;
                var_s1 += 2;
                var_a1 = (s64) ((temp_a1 - 1) << 0x30) >> 0x30;
                var_a2->unk-4 = (s32) (var_s1->unk-1 | (var_s0->unk-1 << 8) | (var_s2->unk-1 << 0x10));
                if (temp_v0 != 0) {
                    goto loop_2;
                }
            }
        }
        __iglooPixelStorei(0xCF5, 4, (s32 *) var_a2);
        __iglooPixelStorei(0xCF2, 0);
        __iglooGetAndSetEnable(0xFDF, 0, &arg0 - 0x2C);
        glDrawPixels((s32) arg0.unk-58, 1, 0x8000, 0x1401);
        __iglooSetSavedEnable(0xFDF, 0, arg0.unk-2C);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x30, 0x34], gap at: 0x18. */
void gl_g_writepixels(s64 arg0, s64 arg1) {
    unksp28 = arg1;
    unksp10 = arg0;
    unksp20 = (s64) gl_wstatep;
    if ((__iglooGetRenderMode() == 0x1C00) && (unksp10 > 0)) {
        if (unksp20->unk114->unk3C->unk30 != 3) {
            unksp18 = 0x1900;
        } else {
            unksp18 = 0x1902;
        }
        __iglooPixelStorei(0xCF5, 2);
        __iglooPixelStorei(0xCF2, 0);
        __iglooGetAndSetEnable(0xFDF, 0, sp);
        glDrawPixels((s32) unksp10, 1, (s32) unksp18, 0x1403);
        __iglooSetSavedEnable(0xFDF, 0, subroutine_arg0);
    }
}

void gl_g_lrectread(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp58;
    void *sp10;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_s2;
    s32 var_s4;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_v0;
    s64 temp_v1;
    s64 var_s1;
    u32 temp_a5;
    void *temp_a0;
    void *var_a1;
    void *var_s0;
    void *var_v0_3;

    spA8 = arg3;
    spA0 = arg2;
    spB0 = arg1;
    sp98 = M2C_ERROR(/* Read from unset register $a4 */);
    spB8 = (s64) gl_wstatep;
    if (M2C_ERROR(/* Read from unset register $a4 */) & 3) {
        gl_ErrorHandler(0x6F, 5, &sub_0f020000 + 0x4C78);
        return;
    }
    if (__iglooGetRenderMode() != 0x1C00) {
        return;
    }
    sp10 = (void *) sp98;
    __iglooAdjustPosition(spB8, arg0, spB0, spA0);
    sp60 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
    gl_g_readsource(spB8, sp, 0);
    if (sp20 == (void *)0x1902) {
        temp_v0 = __iglooGetGraphicsType();
        spD0 = temp_v0;
        if ((temp_v0 == 3) || (var_v0 = 0, (spD0 == 4))) {
            var_v0 = 1;
        }
        sp58 = var_v0;
        if (var_v0 == 0) {
            __iglooPixelTransferf(0xD1E);
        }
    }
    if (sp60 != 0) {
        var_a4 = spB8->unk2E18;
        if (var_a4 & 2) {
            temp_v0_2 = spB8->unk2E34;
            var_s1 = spB0;
            var_s2 = subroutine_arg3;
            if (temp_v0_2 != 0) {
                var_s4 = temp_v0_2 * 4;
            } else {
                gl_g_readsource((s64) subroutine_arg2, sp20, sp24, subroutine_arg3);
                var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                var_a4 = spB8->unk2E18;
            }
            var_s0 = sp10 + ((var_s2 - 1) * var_s4);
            if (var_a4 & 4) {
                spC0 = subroutine_arg2 - 1;
                spC8 = (s64) ((s32) (((u32) subroutine_arg2 >> 0x1F) + subroutine_arg2) >> 1);
                __iglooRestorePickFeedState(sp20);
                spD0 = M2C_ERROR(/* Read from unset register $v0 */);
                if (var_s2 != 0) {
                    do {
                        glReadPixels((s32) arg0, (s32) var_s1, (s64) subroutine_arg2, 1);
                        var_s2 -= 1;
                        temp_a0 = var_s0;
                        var_s0 -= var_s4;
                        ((? (*)(void *, s64, s64)) spD0)(temp_a0, spC0, spC8);
                        var_s1 += 1;
                    } while (var_s2 != 0);
                }
            } else if (var_s2 != 0) {
                do {
                    var_s2 -= 1;
                    glReadPixels((s32) arg0, (s32) var_s1, (s64) subroutine_arg2, 1);
                    var_s1 += 1;
                } while (var_s2 != 0);
            }
        } else {
            sp80 = (s64) subroutine_arg3;
            sp88 = spB0;
            sp78 = subroutine_arg2 - 1;
            temp_a3 = (s32) (((u32) subroutine_arg2 >> 0x1F) + subroutine_arg2) >> 1;
            sp70 = (s64) temp_a3;
            gl_g_readsource((s64) subroutine_arg2, sp20, sp24, temp_a3);
            sp68 = M2C_ERROR(/* Read from unset register $v0 */);
            sp90 = (s64) sp10;
            __iglooRestorePickFeedState(sp20);
            spD0 = M2C_ERROR(/* Read from unset register $v0 */);
            if (sp80 != 0) {
                do {
                    glReadPixels((s32) arg0, (s32) sp88, (s64) subroutine_arg2, 1);
                    ((? (*)(s64, s64, s64)) spD0)(sp90, sp78, sp70);
                    temp_v1 = sp80 - 1;
                    sp90 += sp68;
                    sp80 = temp_v1;
                    sp88 += 1;
                } while (temp_v1 != 0);
            }
        }
    } else {
        glReadPixels((s32) arg0, (s32) spB0, (s64) subroutine_arg2, (s64) subroutine_arg3);
    }
    if (sp20 != (void *)0x1902) {
        if (sp30 == 1) {
            __iglooAdjustPosition((s64) subroutine_arg2, (s64) subroutine_arg3, (s64) sp10);
        }
    } else if (sp58 != 0) {
        var_v0_2 = subroutine_arg2 * subroutine_arg3;
        var_a1 = sp10;
        if (var_v0_2 != 0) {
            var_a2 = var_v0_2 & 3;
            temp_a3_2 = var_v0_2;
            if (var_a2 != 0) {
                do {
                    var_a1 += 4;
                    var_v0_2 -= 1;
                    var_a2 -= 1;
                    var_a1->unk-4 = (u32) ((u32) var_a1->unk-4 >> spB8->unkB48);
                } while (var_a2 != 0);
            }
            if ((temp_a3_2 >> 2) != 0) {
                var_a1_2 = var_v0_2;
                var_v0_3 = var_a1;
                do {
                    var_v0_3->unk0 = (u32) ((u32) var_v0_3->unk0 >> spB8->unkB48);
                    var_v0_3->unk4 = (u32) ((u32) var_v0_3->unk4 >> spB8->unkB48);
                    var_v0_3->unk8 = (u32) ((u32) var_v0_3->unk8 >> spB8->unkB48);
                    temp_a5 = var_v0_3->unkC;
                    var_v0_3 += 0x10;
                    var_a1_2 -= 4;
                    var_v0_3->unk-4 = (u32) (temp_a5 >> spB8->unkB48);
                } while (var_a1_2 != 0);
            }
        }
    } else {
        __iglooPixelTransferf(0xD1E, subroutine_arg2);
    }
    temp_v0_3 = spB8->unk2E1C;
    if (temp_v0_3 != 0) {
        __iglooAdjustPosition((s64) sp10, (s64) subroutine_arg2, (s64) subroutine_arg3, (s64) -temp_v0_3);
    }
}

void gl_g_readpixels(s64 arg0, s64 arg1) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp18;
    s64 sp8;

    sp40 = arg1;
    sp28 = arg0;
    sp38 = (s64) gl_wstatep;
    __iglooGetBooleanv(0xB08, sp);
    if (__iglooGetRenderMode() == 0x1C00) {
        if (sp28 > 0) {
            if (subroutine_arg0 != 0) {
                if (sp38->unk114->unk3C->unk30 != 3) {
                    sp30 = 0x1900;
                } else {
                    sp30 = 0x1902;
                }
                __iglooPixelStorei(0xD05, 2);
                __iglooPixelStorei(0xD02, 0);
                if (__iglooGetGraphicsType() != 8) {
                    __iglooGetIntegerv(0xB07, &sp18);
                    glReadPixels((s32) sp18, unksp1C, sp28, 1);
                } else {
                    __iglooGetFloatv(0xB07, &sp8);
                    glReadPixels((s32) ((f64) (bitwise f32) sp8 + 0.5 + -0.0001), (s32) (second half of f64), sp28, 1);
                }
            }
        }
    }
}

void gl_g_rectcopy(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    gl_wstate *temp_s6;
    s32 temp_t0;
    s32 temp_v1;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s64 temp_s4;
    s64 temp_s5;
    s64 temp_v0;

    var_s3 = arg2;
    var_s0 = arg1;
    var_s2 = arg3;
    var_s1 = arg0;
    temp_s6 = gl_wstatep;
    if (arg2 < arg0) {
        temp_v1 = var_s1;
        var_s1 = var_s3;
        var_s3 = temp_v1;
    }
    temp_t0 = var_s0;
    if (var_s2 < var_s0) {
        var_s0 = var_s2;
        var_s2 = temp_t0;
    }
    __iglooGetAndSetEnable(0xFDF, 0, sp);
    __iglooWindowRasterPos((f32) M2C_ERROR(/* Read from unset register $a4 */));
    temp_s5 = (s64) (((var_s2 - var_s0) + 1) << 0x30) >> 0x30;
    temp_s4 = (s64) (((var_s3 - var_s1) + 1) << 0x30) >> 0x30;
    if (temp_s6->unk114->unk3C->unk30 == 3) {
        temp_v0 = __iglooMalloc(temp_s4 * temp_s5 * 4);
        unksp30 = temp_v0;
        if (temp_v0 != 0) {
            __iglooPixelStorei(0xD02, 0);
            __iglooPixelStorei(0xD05, 4);
            __iglooPixelTransferf(0xD1E);
            glReadPixels(var_s1, var_s0, temp_s4, temp_s5);
            __iglooPixelTransferf(0xD14);
            __iglooPixelStorei(0xCF2, 0);
            __iglooPixelStorei(0xCF5, 4);
            glDrawPixels((s32) temp_s4, (s32) temp_s5, 0x1903, 0x1405);
            __iglooPixelTransferf(0xD14);
            __iglooFree((void *) unksp30);
        }
    } else {
        glCopyPixels(var_s1, var_s0, temp_s4, temp_s5);
    }
    __iglooSetSavedEnable(0xFDF, 0, sp0);
}

void gl_pixmode(u32 arg0, u32 arg1) {
    s64 sp58;
    u32 var_a0;

    if (arg0 < 0xFU) {
        sp58 = (s64) gl_wstatep;
        switch (arg0) {                             /* switch 1 */
        case 0:                                     /* switch 1 */
            var_a0 = arg1;
            if ((s32) arg1 <= 0) {
                var_a0 = (u32) -(s32) arg1;
            }
            switch (var_a0) {                       /* switch 2 */
            case 0:                                 /* switch 2 */
            case 1:                                 /* switch 2 */
            case 4:                                 /* switch 2 */
            case 8:                                 /* switch 2 */
            case 12:                                /* switch 2 */
            case 16:                                /* switch 2 */
            case 24:                                /* switch 2 */
                gl_wstatep->unk2E1C = arg1;
                break;
            default:                                /* switch 2 */
                sprintf(sp, &sub_0f020000 + 0x4D30, saved_reg_gp - 0x38E8, arg1);
                gl_ErrorHandler(0x62, 2, sp);
                break;
            }
            break;
        case 1:                                     /* switch 1 */
            if (arg1 != 0) {
                if (arg1 != 1) {
                    sprintf(sp, &sub_0f020000 + 0x4D50, saved_reg_gp - 0x38E8, arg1);
                    gl_ErrorHandler(0x62, 2, sp);
                } else {
                    gl_wstatep->unk2E18 |= 1;
                }
            } else {
                gl_wstatep->unk2E18 &= ~1;
            }
            break;
        case 2:                                     /* switch 1 */
            gl_wstatep->unk2E20 = arg1;
            break;
        case 3:                                     /* switch 1 */
            gl_wstatep->unk2E24 = arg1;
            break;
        case 4:                                     /* switch 1 */
            gl_wstatep->unk2E28 = arg1;
            break;
        case 8:                                     /* switch 1 */
            if (arg1 != 0) {
                if (arg1 != 1) {
                    sprintf(sp, &sub_0f020000 + 0x4D78, saved_reg_gp - 0x38E8, arg1);
                    gl_ErrorHandler(0x62, 2, sp);
                } else {
                    gl_wstatep->unk2E18 |= 2;
                }
            } else {
                gl_wstatep->unk2E18 &= ~2;
            }
            break;
        case 9:                                     /* switch 1 */
            if (arg1 != 0) {
                if (arg1 != 1) {
                    sprintf(sp, &sub_0f020000 + 0x4D98, saved_reg_gp - 0x38E8, arg1);
                    gl_ErrorHandler(0x62, 2, sp);
                } else {
                    gl_wstatep->unk2E18 |= 4;
                }
            } else {
                gl_wstatep->unk2E18 &= ~4;
            }
            break;
        case 11:                                    /* switch 1 */
            gl_n_pixmode(arg1, &gl_wstatep->unk2E44, gl_wstatep);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp58->unk2E3C = arg1;
            } else {
                perror(&sub_0f020000 + 0x4DB8);
            }
            break;
        case 12:                                    /* switch 1 */
            gl_n_pixmode(arg1, &gl_wstatep->unk2E40, gl_wstatep);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp58->unk2E38 = arg1;
            } else {
                perror(&sub_0f020000 + 0x4DE0);
            }
            break;
        case 13:                                    /* switch 1 */
            gl_n_pixmode(arg1, &gl_wstatep->unk2E54, gl_wstatep);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp58->unk2E4C = arg1;
            } else {
                perror(&sub_0f020000 + 0x4E08);
            }
            break;
        case 14:                                    /* switch 1 */
            gl_n_pixmode(arg1, &gl_wstatep->unk2E50, gl_wstatep);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp58->unk2E48 = arg1;
            } else {
                perror(&sub_0f020000 + 0x4E38);
            }
            break;
        case 5:                                     /* switch 1 */
            switch (arg1) {                         /* switch 3 */
            case 0x1:                               /* switch 3 */
            case 0x8:                               /* switch 3 */
            case 0xC:                               /* switch 3 */
            case 0x10:                              /* switch 3 */
            case 0x18:                              /* switch 3 */
            case 0x20:                              /* switch 3 */
            case 0x40:                              /* switch 3 */
                gl_wstatep->unk2E2C = arg1;
                break;
            default:                                /* switch 3 */
                sprintf(sp, &sub_0f020000 + 0x4F68, saved_reg_gp - 0x38E8, arg1);
                gl_ErrorHandler(0x62, 2, sp);
                break;
            }
            break;
        case 6:                                     /* switch 1 */
            if (((s32) arg1 < 0x21) && ((s32) arg1 >= 0)) {
                gl_wstatep->unk2E30 = arg1;
            } else {
                sprintf(sp, &sub_0f020000 + 0x4F88, saved_reg_gp - 0x38E8, arg1);
                gl_ErrorHandler(0x62, 2, sp);
            }
            break;
        case 7:                                     /* switch 1 */
            if ((s32) arg1 >= 0) {
                gl_wstatep->unk2E34 = arg1;
            } else {
                sprintf(sp, &sub_0f020000 + 0x4FB0, saved_reg_gp - 0x38E8, arg1);
                gl_ErrorHandler(0x62, 2, sp);
            }
            break;
        case 10:                                    /* switch 1 */
            if (arg1 != 0) {
                if (arg1 != 1) {
                    sprintf(sp, &sub_0f020000 + 0x4FD8, saved_reg_gp - 0x38E8, arg1);
                    gl_ErrorHandler(0x62, 2, sp);
                } else {
                    gl_wstatep->unk2E18 |= 8;
                }
            } else {
                gl_wstatep->unk2E18 &= ~8;
            }
            break;
        }
    } else {
        sprintf(sp, &sub_0f020000 + 0x4FF8, saved_reg_gp - 0x38E8, arg1);
        gl_ErrorHandler(0x62, 2, sp);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_pixmode(s64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_g_rectcopy((s32) arg0, (s32) arg1);
}

void gl_c_pixmode(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5014 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6258, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5014 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_pixmode(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_g_rectcopy(arg0->unk0, arg0->unk4);
}

void iglToOglFormat(u32 arg0, s32 *arg1) {
    switch (arg0) {
    default:
        return;
    case 0:
        *arg1 = 0x8000;
        return;
    case 1:
        *arg1 = 0x1907;
        return;
    case 2:
        *arg1 = 0x1908;
        return;
    case 3:
        *arg1 = 0x1907;
        return;
    case 4:
        *arg1 = 0x1909;
        return;
    case 5:
        *arg1 = 0x190A;
        return;
    case 6:
        *arg1 = 0x1906;
        return;
    }
}

void iglToOglType(u32 arg0, s32 *arg1) {
    switch (arg0) {
    default:
        return;
    case 0:
        *arg1 = 0x1A00;
        return;
    case 1:
        *arg1 = 0x1400;
        return;
    case 2:
        *arg1 = 0x1401;
        return;
    case 5:
        *arg1 = 0x1402;
        return;
    case 6:
        *arg1 = 0x1403;
        return;
    case 7:
        *arg1 = 0x1404;
        return;
    case 8:
        *arg1 = 0x1405;
        return;
    case 9:
        *arg1 = 0x1406;
        return;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_pixmodef(f64 arg1, s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg0;
        unksp8 = arg1;
        __iglooNCloseMoveDraw();
    }
    gl_g_rectcopy((s32) arg0, (s32) arg1);
}

void gl_c_pixmodef(f32 arg1, s32 arg0) {
    if (saved_reg_gp->unk-5010 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6248);
        saved_reg_gp->unk-5010 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_pixmodef(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_g_rectcopy(arg0->unk0, (s32) arg0->unk4);
}

void gl_g_readsource(s32 arg0) {
    s32 temp_a2_2;
    s32 temp_a3;
    s32 var_a0;
    s32 var_a5;
    void *temp_a2;
    void *temp_s7;

    temp_a2 = gl_wstatep->unk114;
    var_a5 = 2;
    temp_s7 = temp_a2->unk3C;
    temp_a2_2 = temp_a2->unk38;
    temp_a3 = temp_s7->unk8 == 1;
    if (arg0 != 0) {
        var_a0 = arg0;
        if (arg0 != 1) {
            goto block_2;
        }
        goto block_11;
    }
    if (temp_s7->unk0 == 1) {
        var_a5 = 1;
    }
    var_a0 = var_a5;
    if (var_a5 == 1) {
block_11:
        if (temp_a2_2 == 0x10) {
            if (temp_a3 != 0) {
                __iglooReadBuffer(0x400, 9, temp_a2_2, temp_a3);
            } else {
                goto block_20;
            }
        } else {
block_20:
            __iglooReadBuffer(0x404, 9, temp_a2_2, temp_a3);
        }
        /* Duplicate return node #8. Try simplifying control flow for better match */
        temp_s7->unk30 = arg0;
        return;
    }
block_2:
    if (var_a0 != 2) {
        if (var_a0 == 3) {
            if (temp_a2_2 != 0x10) {
                return;
            }
            /* Duplicate return node #8. Try simplifying control flow for better match */
            temp_s7->unk30 = arg0;
            return;
        }
        if (var_a0 != 8) {
            if (var_a0 == 9) {
                __iglooReadBuffer(0x403, 9, temp_a2_2, temp_a3);
            }
        } else {
            __iglooReadBuffer(0x401, 9, temp_a2_2, temp_a3);
        }
        /* Duplicate return node #8. Try simplifying control flow for better match */
        temp_s7->unk30 = arg0;
        return;
    }
    if (temp_a2_2 == 0x10) {
        if (temp_a3 != 0) {
            __iglooReadBuffer(0x402, 9, temp_a2_2, temp_a3);
        } else {
            goto block_22;
        }
    } else {
block_22:
        __iglooReadBuffer(0x405, 9, temp_a2_2, temp_a3);
    }
    temp_s7->unk30 = arg0;
}

void __iglooBeginPixelOperation(void *arg0) {
    s64 sp8;
    s64 sp0;
    u8 temp_a3;
    void *temp_a0;
    void *temp_s0;

    temp_s0 = arg0 + 0x38;
    if (arg0->unk20 == 0x1902) {
        temp_a3 = (*(void **)0x1004)->unk14->unk13;
        temp_a0 = gl_wstatep->unk114->unk3C;
        arg0->unk48 = temp_a3;
        if (!(temp_a0->unk34 & 3)) {
            sp0 = (s64) gl_wstatep;
            sp8 = (s64) temp_a0;
            arg0->unk3C = 1;
            __iglooDrawBuffer(0x404, gl_wstatep, temp_a3);
            if (arg0->unk48 == 0) {
                goto block_14;
            }
            goto block_6;
        }
        sp8 = (s64) temp_a0;
        sp0 = (s64) gl_wstatep;
        arg0->unk3C = 0;
        if (temp_a3 != 0) {
block_6:
            __iglooColorMask(0U, 0U, 0U, 0U);
            arg0->unk3D = (u8) sp8->unk48;
            arg0->unk3E = (u8) sp8->unk49;
            arg0->unk3F = (u8) sp8->unk4A;
            arg0->unk40 = (u8) sp8->unk4B;
        } else {
block_14:
            __iglooIndexMask(0);
            arg0->unk44 = (s32) sp8->unk4C;
        }
        if (arg0->unk51 == 1) {
            __iglooGetAndSetEnable(0xFDD, 0, temp_s0);
        } else {
            __iglooGetAndSetEnable(0xFDF, 2, temp_s0);
        }
        arg0->unk4C = (s32) sp0->unkB18;
        zfunction(7);
    } else {
        __iglooGetAndSetEnable(0xFDF, 0, temp_s0);
    }
}

void __iglooEndPixelOperation(void *arg0) {
    s32 temp_a2;

    if (arg0->unk20 == 0x1902) {
        zfunction(arg0->unk4C);
        temp_a2 = arg0->unk38;
        if (arg0->unk51 != 1) {
            __iglooSetSavedEnable(0xFDF, 2, temp_a2);
        } else {
            __iglooSetSavedEnable(0xFDD, 0, temp_a2);
        }
        if (arg0->unk3C == 1) {
            __iglooDrawBuffer(0);
        }
        if (arg0->unk48 != 0) {
            __iglooColorMask(arg0->unk3D, arg0->unk3E, arg0->unk3F, arg0->unk40);
        } else {
            __iglooIndexMask(arg0->unk44);
        }
    } else {
        __iglooSetSavedEnable(0xFDF, 0, arg0->unk38);
    }
}

void __iglooSetPixelFormat(void *arg0, void *arg1, s32 arg2) {
    s64 sp108;
    s64 sp100;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_f0;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_s3;
    s32 var_s5;
    s64 temp_a0;
    s64 temp_a1_2;
    s64 var_s4;
    void *temp_v0_3;

    var_s3 = 0;
    sp108 = (s64) (*(void **)0x1004)->unk14->unk10;
    temp_a1 = arg0->unk2E30;
    var_s5 = 0;
    temp_a0 = __iglooIsExtensionSupported(0x15) & 0xFF;
    if (temp_a1 != 0) {
        temp_v1 = arg0->unk2E2C;
        M2C_TRAP_IF(temp_v1 == 0);
        if ((temp_a1 % temp_v1) == 0) {
            var_s5 = 1;
        }
    }
    arg1->unk32 = 0;
    arg1->unk31 = 0U;
    arg1->unk30 = 0;
    arg1->unk51 = 0;
    arg1->unk1C = arg2;
    temp_v0 = arg0->unk2E1C + arg0->unk2F50;
    arg1->unk34 = temp_v0;
    if (arg0->unk2E30 != 0) {
        if (var_s5 == 0) {
            arg1->unk31 = 1U;
        } else {
            goto block_6;
        }
    } else {
block_6:
        if ((arg2 == 1) || (arg2 == 0)) {
            if (arg0->unk2E28 != 0) {
                goto block_29;
            }
            if ((temp_v0 == 0) && !(arg0->unk2E18 & 1)) {
                unksp118 = temp_a0;
                if (arg0->unk2E2C == 0x18) {
                    temp_v0_2 = __iglooGetGraphicsType(temp_a0, 1);
                    if (arg2 != 0) {
                        var_a0 = arg0->unk2E3C;
                        if (sp108 != 0) {
                            goto block_54;
                        }
                        goto block_85;
                    }
                    var_a0 = arg0->unk2E4C;
                    if (sp108 == 0) {
block_85:
                        arg1->unk31 = 1U;
                    } else {
block_54:
                        if (unksp118 != 0) {
                            if (arg2 != 0) {
                                goto block_56;
                            }
                            if (temp_v0_2 != 3) {
block_56:
                                if (temp_v0_2 != 4) {
                                    if (var_a0 != 3) {
                                        arg1->unk32 = 1;
                                    }
                                } else {
                                    goto block_86;
                                }
                            } else {
                                goto block_86;
                            }
                        } else {
block_86:
                            if (var_a0 != 3) {
                                arg1->unk31 = 1U;
                            }
                        }
                    }
                }
            } else {
block_29:
                if (arg0->unk2E2C != 0x40) {
                    arg1->unk31 = 1U;
                }
            }
        }
    }
    temp_v0_3 = arg0->unk114->unk3C;
    if (arg2 != 0) {
        if (!(temp_v0_3->unk34 & 4)) {
            if (arg0->unk2E18 & 8) {
                arg1->unk51 = 1;
                goto block_13;
            }
        } else {
block_13:
            var_s3 = 1;
        }
        var_s4 = 0xCF5;
        unksp148 = 0xCF2;
    } else {
        if (temp_v0_3->unk30 == 3) {
            var_s3 = 1;
        }
        var_s4 = 0xD05;
        unksp148 = 0xD02;
    }
    __iglooPixelStorei(var_s4, 4);
    if (var_s3 != 0) {
        arg1->unk24 = 0x1405;
        var_a0_2 = 0x1902;
        goto block_17;
    }
    if (sp108 != 0) {
        if (arg2 != 0) {
            goto block_33;
        }
        temp_v0_4 = arg0->unk2E54;
        var_a0_2 = temp_v0_4;
        if (temp_v0_4 != 0x8000) {
            arg1->unk20 = temp_v0_4;
            arg1->unk31 = 0U;
            arg1->unk24 = (s32) arg0->unk2E50;
        } else {
block_33:
            if (arg2 != 1) {
                goto block_34;
            }
            temp_v0_5 = arg0->unk2E44;
            if (temp_v0_5 != 0x8000) {
                arg1->unk20 = temp_v0_5;
                var_a0_2 = temp_v0_5;
                arg1->unk31 = 0U;
                arg1->unk24 = (s32) arg0->unk2E40;
            } else {
block_34:
                var_a0_2 = 0x8000;
                if (arg1->unk31 != 1) {
                    temp_a2 = arg0->unk2E2C;
                    switch (temp_a2) {              /* switch 1; irregular */
                    default:                        /* switch 1 */
                        sprintf(sp, &sub_0f020000 + 0x5058, temp_a2, 0x18U);
                        gl_ErrorHandler(0x6E, 2, sp);
                        var_a0_2 = arg1->unk20;
                        break;
                    case 0x40:                      /* switch 1 */
                        arg1->unk24 = 0x1403;
                        var_a0_2 = 0x8000;
block_17:
                        arg1->unk20 = var_a0_2;
                        break;
                    case 0x1:                       /* switch 1 */
                        arg1->unk24 = 0x1A00;
                        var_a0_2 = 0x1903;
                        goto block_17;
                    case 0x8:                       /* switch 1 */
                        arg1->unk24 = 0x1401;
                        var_a0_2 = 0x1903;
                        goto block_17;
                    case 0x18:                      /* switch 1 */
                        var_a0_2 = 0x1907;
                        arg1->unk30 = 1;
                        arg1->unk24 = 0x1401;
                        goto block_17;
                    case 0x20:                      /* switch 1 */
                        arg1->unk24 = 0x1401;
                        var_a0_2 = 0x8000;
                        goto block_17;
                    }
                } else {
                    arg1->unk20 = 0x8000;
                    arg1->unk24 = 0x1401;
                }
            }
        }
    } else {
        var_a0_2 = 0x1900;
        arg1->unk20 = 0x1900;
        if (arg1->unk31 != 1) {
            temp_a2_2 = arg0->unk2E2C;
            switch (temp_a2_2) {                    /* switch 2; irregular */
            default:                                /* switch 2 */
                sprintf(sp, &sub_0f020000 + 0x5058, temp_a2_2, 0x10U);
                gl_ErrorHandler(0x6E, 2, sp);
                var_a0_2 = arg1->unk20;
                break;
            case 0x40:                              /* switch 2 */
                arg1->unk24 = 0x1405;
                break;
            case 0x1:                               /* switch 2 */
                arg1->unk24 = 0x1A00;
                break;
            case 0x8:                               /* switch 2 */
                arg1->unk24 = 0x1401;
                break;
            case 0x10:                              /* switch 2 */
                arg1->unk24 = 0x1403;
                break;
            case 0x20:                              /* switch 2 */
                arg1->unk24 = 0x1405;
                break;
            }
        } else {
            arg1->unk24 = 0x1405;
        }
    }
    gl_g_readsource((s64) var_a0_2);
    arg1->unk28 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_readsource((s64) arg1->unk24);
    arg1->unk2C = (f32) M2C_ERROR(/* Read from unset register $f0 */);
    if (arg1->unk31 == 0) {
        temp_v0_6 = arg0->unk2E34;
        if (temp_v0_6 != 0) {
            temp_f0 = (s32) ((f32) arg1->unk28 * M2C_ERROR(/* Read from unset register $f0 */));
            temp_lo = (s32) (temp_v0_6 * 4) / temp_f0;
            M2C_TRAP_IF(temp_f0 == 0);
            unksp128 = (s64) temp_lo;
            __iglooPixelStorei(unksp148, temp_lo);
            temp_ra = unksp128 >> 0x1F;
            temp_a4 = unksp128 >> 0x1F;
            temp_ra_2 = arg0->unk2E30;
            arg1->unk10 = (s32) (arg1->unk10 + ((s32) (((u32) (temp_ra_2 >> 2) >> 0x1D) + temp_ra_2) >> 3));
            if ((((((unksp128 ^ temp_ra) - temp_ra) & 3) ^ temp_a4) - temp_a4) != 0) {
                __iglooPixelStorei(var_s4, 1);
            }
        } else if (var_s5 != 0) {
            temp_a3 = arg0->unk2E30;
            temp_a2_3 = (s32) (((u32) (temp_a3 >> 2) >> 0x1D) + temp_a3) >> 3;
            temp_a1_2 = arg1->unk8 + temp_a2_3;
            sp100 = temp_a1_2;
            __iglooPixelStorei(unksp148, (s32) temp_a1_2, (s32 *) temp_a2_3, temp_a3);
            temp_lo_2 = arg0->unk2E2C * sp100;
            temp_s0 = temp_lo_2 >> 0x1F;
            temp_a4_2 = temp_lo_2 >> 0x1F;
            if ((((((temp_lo_2 ^ temp_s0) - temp_s0) & 0x1F) ^ temp_a4_2) - temp_a4_2) != 0) {
                __iglooPixelStorei(var_s4, 1);
            }
        } else {
            __iglooPixelStorei(unksp148, 0);
        }
    } else {
        __iglooPixelStorei(unksp148, 0);
    }
}

void __iglooElementsPerGroup(s32 arg0) {
    switch (arg0) {                                 /* irregular */
    case 0x1908:
    case 0x8000:
        return;
    case 0x1907:
        return;
    case 0x190A:
        return;
    }
}

void __iglooBytesPerElement(u32 arg0) {
    switch (arg0) {                                 /* irregular */
    case 0x1403:
        return;
    case 0x1400:
        return;
    case 0x8033:
        return;
    case 0x8036:
        return;
    }
}

void __iglooCalcSpanByteSize(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp18;

    gl_g_readsource(arg1);
    if (arg2 == 0x1A00) {

    } else {
        sp18 = M2C_ERROR(/* Read from unset register $v0 */);
        gl_g_readsource(arg2);
    }
}

void __iglooAdjustPosition(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 var_f4;
    f32 var_f5;
    f32 var_f5_2;
    s32 temp_a7;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    void *temp_at;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF36174;
    if (var_a3 < var_a1) {
        temp_a7 = var_a1;
        var_a1 = var_a3;
        var_a3 = temp_a7;
    }
    temp_t1 = var_a2;
    if (M2C_ERROR(/* Read from unset register $a4 */) < var_a2) {
        var_a2 = M2C_ERROR(/* Read from unset register $a4 */);
    }
    *M2C_ERROR(/* Read from unset register $a5 */) = var_a1;
    M2C_ERROR(/* Read from unset register $a5 */)->unk4 = var_a2;
    temp_v0 = (M2C_ERROR(/* Read from unset register $a4 */) - var_a2) + 1;
    temp_t9 = (var_a3 - var_a1) + 1;
    M2C_ERROR(/* Read from unset register $a5 */)->unk8 = temp_t9;
    M2C_ERROR(/* Read from unset register $a5 */)->unkC = temp_v0;
    temp_t8 = arg0->unk2E18;
    if (temp_t8 & 2) {
        if (M2C_ERROR(/* Read from unset register $a6 */) != 0) {
            temp_f5 = arg0->unk2E14;
            var_f4 = temp_f5;
            if (!(temp_at->unk-4CD0 < temp_f5)) {
                var_f4 = -temp_f5;
            }
            M2C_ERROR(/* Read from unset register $a5 */)->unk4 = (s32) (((s64) ((f32) temp_v0 * var_f4) << 0) + var_a2);
        }
        M2C_ERROR(/* Read from unset register $a5 */)->unk18 = (f32) -arg0->unk2E14;
        if (arg0->unk2E18 & 4) {
            if (M2C_ERROR(/* Read from unset register $a6 */) != 0) {
                temp_f4 = arg0->unk2E10;
                var_f5 = temp_f4;
                if (!(temp_at->unk-4CD0 < temp_f4)) {
                    var_f5 = -temp_f4;
                }
                *M2C_ERROR(/* Read from unset register $a5 */) = ((s64) ((f32) temp_t9 * var_f5) << 0) + var_a1;
            }
            M2C_ERROR(/* Read from unset register $a5 */)->unk14 = (f32) -arg0->unk2E10;
            return;
        }
        M2C_ERROR(/* Read from unset register $a5 */)->unk14 = (f32) arg0->unk2E10;
        return;
    }
    if (temp_t8 & 4) {
        if (M2C_ERROR(/* Read from unset register $a6 */) != 0) {
            temp_f4_2 = arg0->unk2E10;
            var_f5_2 = temp_f4_2;
            if (!(temp_at->unk-4CD0 < temp_f4_2)) {
                var_f5_2 = -temp_f4_2;
            }
            *M2C_ERROR(/* Read from unset register $a5 */) = ((s64) ((f32) temp_t9 * var_f5_2) << 0) + var_a1;
        }
        M2C_ERROR(/* Read from unset register $a5 */)->unk14 = (f32) -arg0->unk2E10;
        M2C_ERROR(/* Read from unset register $a5 */)->unk18 = (f32) arg0->unk2E14;
    }
}

void __iglooShift32(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a4;
    s32 temp_lo;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    void *var_a0;
    void *var_a0_3;
    void *var_a2_2;

    var_a0 = arg0;
    temp_lo = arg1 * arg2;
    temp_a4 = -arg3;
    var_a2 = 0;
    var_a6 = temp_lo & 3;
    if (arg3 >= 0) {
        if (temp_lo != 0) {
            var_a4 = temp_lo & 3;
            var_a7 = 0;
            if (var_a4 != 0) {
                do {
                    var_a0 += 4;
                    var_a2 += 1;
                    var_a4 -= 1;
                    var_a0->unk-4 = (s32) (var_a0->unk-4 << arg3);
                } while (var_a4 != 0);
                var_a7 = var_a2;
            }
            if ((temp_lo >> 2) != 0) {
                var_a0_2 = var_a7;
                var_a2_2 = var_a0;
                do {
                    var_a2_2 += 0x10;
                    var_a0_2 += 4;
                    var_a2_2->unk-4 = (s32) (var_a2_2->unk-4 << arg3);
                    var_a2_2->unk-8 = (s32) (var_a2_2->unk-8 << arg3);
                    var_a2_2->unk-C = (s32) (var_a2_2->unk-C << arg3);
                    var_a2_2->unk-10 = (s32) (var_a2_2->unk-10 << arg3);
                } while (temp_lo != var_a0_2);
            }
        }
    } else {
        var_a2_3 = 0;
        if (temp_lo != 0) {
            if (var_a6 != 0) {
                do {
                    var_a0 += 4;
                    var_a2_3 += 1;
                    var_a6 -= 1;
                    var_a0->unk-4 = (u32) ((u32) var_a0->unk-4 >> temp_a4);
                } while (var_a6 != 0);
            }
            if ((temp_lo >> 2) != 0) {
                var_a2_4 = var_a2_3;
                var_a0_3 = var_a0;
                do {
                    var_a0_3 += 0x10;
                    var_a2_4 += 4;
                    var_a0_3->unk-4 = (u32) ((u32) var_a0_3->unk-4 >> temp_a4);
                    var_a0_3->unk-8 = (u32) ((u32) var_a0_3->unk-8 >> temp_a4);
                    var_a0_3->unk-C = (u32) ((u32) var_a0_3->unk-C >> temp_a4);
                    var_a0_3->unk-10 = (u32) ((u32) var_a0_3->unk-10 >> temp_a4);
                } while (temp_lo != var_a2_4);
            }
        }
    }
}

void __iglooRgb2Bgr(s32 arg0, s32 arg1, void *arg2) {
    s32 temp_lo;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a4;
    s32 var_v1;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_at;
    u8 temp_v0;
    u8 temp_v0_2;
    void *var_a2;
    void *var_a2_2;

    var_a2 = arg2;
    temp_lo = arg0 * arg1;
    var_a4 = temp_lo;
    if (temp_lo != 0) {
        var_a1 = temp_lo & 3;
        var_v1 = temp_lo >> 2;
        if (var_a1 != 0) {
            do {
                var_a2 += 3;
                var_a4 -= 1;
                var_a1 -= 1;
                temp_at = var_a2->unk-1;
                var_a2->unk-1 = (u8) var_a2->unk-3;
                var_a2->unk-3 = temp_at;
            } while (var_a1 != 0);
            var_v1 = temp_lo >> 2;
        }
        if (var_v1 != 0) {
            var_a1_2 = var_a4;
            var_a2_2 = var_a2;
            do {
                var_a2_2 += 0xC;
                var_a1_2 -= 4;
                temp_v0 = var_a2_2->unk-1;
                var_a2_2->unk-1 = (u8) var_a2_2->unk-3;
                var_a2_2->unk-3 = temp_v0;
                temp_a0 = var_a2_2->unk-4;
                var_a2_2->unk-4 = (u8) var_a2_2->unk-6;
                var_a2_2->unk-6 = temp_a0;
                temp_v0_2 = var_a2_2->unk-7;
                var_a2_2->unk-7 = (u8) var_a2_2->unk-9;
                var_a2_2->unk-9 = temp_v0_2;
                temp_a0_2 = var_a2_2->unk-A;
                var_a2_2->unk-A = (u8) var_a2_2->unk-C;
                var_a2_2->unk-C = temp_a0_2;
            } while (var_a1_2 != 0);
        }
    }
}

void __iglooShift16(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a4;
    s32 temp_lo;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    void *var_a0;
    void *var_a0_3;
    void *var_a2_2;

    var_a0 = arg0;
    temp_lo = arg1 * arg2;
    temp_a4 = -arg3;
    var_a2 = 0;
    var_a6 = temp_lo & 3;
    if (arg3 >= 0) {
        if (temp_lo != 0) {
            var_a4 = temp_lo & 3;
            var_a7 = 0;
            if (var_a4 != 0) {
                do {
                    var_a0 += 2;
                    var_a2 += 1;
                    var_a4 -= 1;
                    var_a0->unk-2 = (u16) (var_a0->unk-2 << arg3);
                } while (var_a4 != 0);
                var_a7 = var_a2;
            }
            if ((temp_lo >> 2) != 0) {
                var_a0_2 = var_a7;
                var_a2_2 = var_a0;
                do {
                    var_a2_2 += 8;
                    var_a0_2 += 4;
                    var_a2_2->unk-2 = (u16) (var_a2_2->unk-2 << arg3);
                    var_a2_2->unk-4 = (u16) (var_a2_2->unk-4 << arg3);
                    var_a2_2->unk-6 = (u16) (var_a2_2->unk-6 << arg3);
                    var_a2_2->unk-8 = (u16) (var_a2_2->unk-8 << arg3);
                } while (temp_lo != var_a0_2);
            }
        }
    } else {
        var_a2_3 = 0;
        if (temp_lo != 0) {
            if (var_a6 != 0) {
                do {
                    var_a0 += 2;
                    var_a2_3 += 1;
                    var_a6 -= 1;
                    var_a0->unk-2 = (u16) ((u16) var_a0->unk-2 >> temp_a4);
                } while (var_a6 != 0);
            }
            if ((temp_lo >> 2) != 0) {
                var_a2_4 = var_a2_3;
                var_a0_3 = var_a0;
                do {
                    var_a0_3 += 8;
                    var_a2_4 += 4;
                    var_a0_3->unk-2 = (u16) ((u16) var_a0_3->unk-2 >> temp_a4);
                    var_a0_3->unk-4 = (u16) ((u16) var_a0_3->unk-4 >> temp_a4);
                    var_a0_3->unk-6 = (u16) ((u16) var_a0_3->unk-6 >> temp_a4);
                    var_a0_3->unk-8 = (u16) ((u16) var_a0_3->unk-8 >> temp_a4);
                } while (temp_lo != var_a2_4);
            }
        }
    }
}

void __iglooUnpack(void *arg0, u32 *arg1, s32 arg2, s32 arg3) {
    s64 sp18;
    s64 sp0;
    s32 temp_t2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_at_2;
    s32 var_t0_2;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t9;
    s64 var_t0;
    u32 *var_a1;
    u32 *var_t1;
    u32 temp_a7;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_t9 = 0;
    temp_a7 = gl_wstatep->unk2E2C;
    if (arg3 > 0) {
        sp0 = M2C_ERROR(/* Read from unset register $a4 */) * 4;
        sp18 = arg2 > 0;
loop_5:
        var_t1 = var_a1;
        var_a6 = 0;
        var_a4 = 0x20 - gl_wstatep->unk2E30;
        if (arg2 > 0) {
            var_t0 = sp18;
            var_at = var_a4 < (s32) temp_a7;
loop_7:
            var_at_2 = var_a4 < (s32) temp_a7;
            if ((var_at ^ 1) != 0) {
                var_at_2 = var_a4 < (s32) temp_a7;
                if (var_t0 != 0) {
                    var_a5 = var_a4 - temp_a7;
loop_13:
                    var_a6 += 1;
                    var_a0 += 4;
                    if ((s32) temp_a7 < 0x20) {
                        var_t0_2 = ~(-1 << temp_a7);
                    } else {
                        var_t0_2 = -1;
                    }
                    var_a4 -= temp_a7;
                    var_t0 = var_a6 < arg2;
                    var_a0->unk-4 = (s32) (((u32) *var_t1 >> var_a5) & var_t0_2);
                    if (var_a4 == 0) {
                        var_a4 = 0x20;
                        var_t1 += 4;
                    }
                    if (var_a4 >= (s32) temp_a7) {
                        var_a5 = var_a4 - temp_a7;
                        if (var_t0 != 0) {
                            goto loop_13;
                        }
                    }
                    var_at_2 = var_a4 < (s32) temp_a7;
                }
            }
            if (var_at_2 != 0) {
                if (var_t0 != 0) {
                    var_t1 += 4;
loop_25:
                    var_t3 = -1;
                    var_a0 += 4;
                    if (var_a4 < 0x20) {
                        var_t3 = ~(-1 << var_a4);
                    }
                    temp_t2 = temp_a7 - var_a4;
                    var_a4 = 0x20 - temp_t2;
                    var_a0->unk-4 = (s32) ((var_t1->unk-4 & var_t3) << temp_t2);
                    if (temp_t2 < 0x20) {
                        var_t3_2 = ~(-1 << temp_t2);
                    } else {
                        var_t3_2 = -1;
                    }
                    var_a6 += 1;
                    var_t0 = var_a6 < arg2;
                    var_a0->unk-4 = (s32) (var_a0->unk-4 | (((u32) var_t1->unk0 >> var_a4) & var_t3_2));
                    if (var_a4 < (s32) temp_a7) {
                        var_t1 += 4;
                        if (var_t0 != 0) {
                            goto loop_25;
                        }
                    } else {
                        goto block_2;
                    }
                }
            } else {
block_2:
                var_at = var_a4 < (s32) temp_a7;
                if (var_t0 == 0) {

                } else {
                    goto loop_7;
                }
            }
        }
        var_t9 += 1;
        var_a1 += sp0;
        if (arg3 != var_t9) {
            goto loop_5;
        }
    }
}

void __iglooExpand(s32 arg0, s32 arg1, u32 *arg2) {
    s32 temp_lo;
    s32 var_a4;
    s32 var_v1;
    u32 *var_a2;
    u32 temp_a5;
    u32 temp_a7;

    var_a2 = arg2;
    temp_lo = arg0 * arg1;
    var_a4 = 0;
    temp_a5 = gl_wstatep->unk2E24;
    temp_a7 = gl_wstatep->unk2E20;
    if (temp_lo > 0) {
        var_v1 = temp_lo >> 1;
        if (temp_lo & 1) {
            var_a4 = 1;
            if (*var_a2 & 1) {
                *var_a2 = temp_a5;
            } else {
                *var_a2 = temp_a7;
            }
            var_a2 += 4;
            var_v1 = temp_lo >> 1;
        }
        if (var_v1 != 0) {
loop_11:
            var_a4 += 2;
            if (var_a2->unk0 & 1) {
                var_a2->unk0 = temp_a5;
            } else {
                var_a2->unk0 = temp_a7;
            }
            if (var_a2->unk4 & 1) {
                var_a2->unk4 = temp_a5;
            } else {
                var_a2->unk4 = temp_a7;
            }
            var_a2 += 8;
            if (temp_lo != var_a4) {
                goto loop_11;
            }
        }
    }
}

void __iglooAdd24(s32 arg0, s32 arg1, s32 *arg2) {
    s32 *var_a1;
    s32 *var_a2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_lo;
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a2_2;
    s32 var_a7;
    u32 temp_a6;

    var_a2 = arg2;
    temp_lo = arg0 * arg1;
    var_a7 = 0;
    temp_a6 = gl_wstatep->unk2E28;
    if (temp_lo > 0) {
        if (temp_lo & 1) {
            temp_v1 = *var_a2;
            var_a2 += 4;
            var_a7 = 1;
            temp_v1_2 = temp_a6 + temp_v1;
            var_a2->unk-4 = (s32) (((temp_v1_2 - temp_a6) & 0xFF000000) | (0xFFFFFF & temp_v1_2));
        }
        if ((temp_lo >> 1) != 0) {
            var_a2_2 = var_a7;
            var_a1 = var_a2;
            do {
                temp_a0 = var_a1->unk4;
                var_a1 += 8;
                var_a2_2 += 2;
                temp_a0_2 = temp_a6 + temp_a0;
                var_a1->unk-4 = (s32) (((temp_a0_2 - temp_a6) & 0xFF000000) | (0xFFFFFF & temp_a0_2));
                temp_v0 = temp_a6 + var_a1->unk-8;
                var_a1->unk-8 = (s32) (((temp_v0 - temp_a6) & 0xFF000000) | (0xFFFFFF & temp_v0));
            } while (temp_lo != var_a2_2);
        }
    }
}
