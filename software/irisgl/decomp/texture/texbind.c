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
    /* 0x2B00 */ char pad2B00[0x2BC];               /* maybe part of currentVertex[0x2C]? */
    /* 0x2DBC */ void *unk2DBC;                     /* inferred */
    /* 0x2DC0 */ char pad2DC0[0x128];               /* maybe part of unk2DBC[0x4B]? */
} gl_wstate;                                        /* size = 0x2EE8 */

s32 glAreTexturesResidentEXT(?, s32, void *);       /* extern */
? glBindTextureEXT(?, s32);                         /* extern */
? glTexImage2D(?, ?, s32, s32);                     /* extern */
? glTexSubImage2DEXT(?, ?, s64, s64);               /* extern */
extern ? __iglooTexCMatAL2LA;
extern ? __iglooTexCMatBGR2RGB;
extern ? gl_texturetab;
extern ? sub_0f030000;

void gl_g_istexloaded(s32 arg0) {
    s64 sp8;
    s8 sp0;
    s32 temp_v0;

    sp8 = 0;
    if (arg0 != 0) {
        return;
    }
    temp_v0 = gl_find(&gl_texturetab);
    if (temp_v0 != 0) {
        if (gl_iglooUseTexObj == 1) {
            sp0 = 0;
            sp8 = (glAreTexturesResidentEXT(1, temp_v0 + 0xC, sp) & 0xFF) == 1;
        }
    }
}

void gl_texbind(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;
    ? var_a0;
    void *temp_a0;
    void *var_v0;

    sp10 = (s64) gl_wstatep;
    var_v0 = gl_find(&gl_texturetab);
    switch (arg0) {                                 /* irregular */
    case 0:
        temp_a0 = sp10->unk2DBC;
        if (var_v0 == NULL) {
            temp_a0->unk4 = 0;
            sp10->unk2DBC->unk8 = 0;
            if (sp10->unk2DBC->unk0 != 0) {
                gl_notexturing(temp_a0);
            }
            return;
        }
        if ((temp_a0->unk4 == subroutine_arg2) && (temp_a0->unk8 == var_v0->unk8)) {
            if (subroutine_arg0 == 1) {
                goto block_12;
            }
        } else {
block_12:
            temp_a0->unk4 = (s32) var_v0->unk4;
            sp10->unk2DBC->unk8 = (s32) var_v0->unk8;
            if (gl_iglooUseTexObj == 1) {
                if (var_v0->unk1C == 3) {
                    sp18 = (s64) var_v0;
                    var_a0 = 0x806F;
                } else {
                    sp18 = (s64) var_v0;
                    var_a0 = 0xDE1;
                }
                glBindTextureEXT(var_a0, sp18->unkC);
            } else {
                sp18 = (s64) var_v0;
                __iglooPixelStorei(0xCF5, 1);
                __iglooPixelStorei(0xCF2, 0);
                glCallList(sp18->unk14);
            }
            __iglooNotTexObjList(sp18);
            gl_dotexturing();
            var_v0 = (void *) sp18;
        }
        if (var_v0->unk88 == 0xF00) {
            if (var_v0->unk80 != 0x3000) {
                gl_n_texbind(var_v0);
            } else {
                gl_n_texbind(var_v0);
            }
        }
        return;
    case 1:
        return;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_texbind(s64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_texbind(arg0, arg1, 0);
}

void gl_c_texbind(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4DE4 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x55C8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4DE4 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_texbind(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_texbind((s64) arg0->unk0, (s64) arg0->unk4, 0);
}

void __iglooDownLoadPixmodeTex(void *arg0) {
    void *sp20;
    s32 sp1C;
    void *sp18;
    s32 sp14;
    s32 sp10;
    s32 temp_v0;
    s64 temp_s1;

    temp_s1 = arg0->unk18 != 0;
    temp_v0 = __iglooGetGraphicsType();
    if ((temp_v0 != 3) && (temp_v0 != 4)) {
        goto block_2;
    }
    if (temp_s1 == 0) {
        return;
    }
block_2:
    SetOglFormatAndComps(arg0->unk20, arg0->unk84, &sp10, &sp14);
    gl_n_texbind((void *) arg0->unk154, temp_s1, &sp10, &sp18);
    gl_n_texbind((void *) arg0->unk155, temp_s1, &sp1C, &sp20);
    glTexImage2D(0xDE1, 0, sp14, arg0->unk24);
    if (sp18 != NULL) {
        gl_n_texbind(sp18);
    }
    if ((bitwise f32) sp20 != 1.0f) {
        gl_n_texbind(sp20);
    }
}

void __iglooDownLoadPixmodeSubTex(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    void *sp20;
    s32 sp1C;
    void *sp18;
    s32 sp14;
    s32 sp10;
    s32 temp_s0;
    s32 temp_v0;
    s64 temp_a1;
    void *temp_v0_2;

    sp48 = arg0;
    sp30 = arg1;
    sp38 = arg2;
    sp40 = arg3;
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    sp50 = (s64) gl_wstatep;
    temp_v0 = __iglooGetGraphicsType();
    if ((temp_v0 != 3) && (temp_v0 != 4)) {
        goto block_2;
    }
    if (temp_s0 == 0) {
        return;
    }
block_2:
    temp_v0_2 = gl_find(&gl_texturetab, sp50->unk2DBC->unk4);
    if (temp_v0_2 == NULL) {
        return;
    }
    SetOglFormatAndComps(temp_v0_2->unk20, temp_v0_2->unk84, &sp10, &sp14);
    temp_a1 = temp_s0 != 0;
    sp28 = temp_a1;
    gl_n_texbind((void *) temp_v0_2->unk154, temp_a1, &sp10, &sp18);
    gl_n_texbind((void *) temp_v0_2->unk155, sp28, &sp1C, &sp20);
    glTexSubImage2DEXT(0xDE1, 0, sp48, sp30);
    if (sp18 != NULL) {
        gl_n_texbind(sp18);
    }
    if ((bitwise f32) sp20 != 1.0f) {
        gl_n_texbind(sp20);
    }
}

void __iglooDownLoadTex(void *arg0) {
    f64 sp20;
    s32 sp14;
    s32 sp10;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_v0;
    s32 var_s0;

    var_s0 = 0;
    sp20 = GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0x3F800000U);
    temp_s3 = __iglooGetGraphicsType();
    SetOglFormatAndComps(arg0->unk20, arg0->unk84, &sp10, &sp14);
    if (arg0->unk18 != 0) {
        temp_v0 = arg0->unk20;
        if (temp_v0 != 2) {
            if (temp_v0 == 3) {
                var_s0 = __iglooGetMatrixMode();
                __iglooMatrixMode(0x1800);
                __iglooLoadMatrix(&__iglooTexCMatBGR2RGB);
            }
        } else {
            var_s0 = __iglooGetMatrixMode();
            __iglooMatrixMode(0x1800);
            __iglooLoadMatrix(&__iglooTexCMatAL2LA);
        }
        goto block_3;
    }
    if ((temp_s3 == 3) || (temp_s3 == 4)) {
        return;
    }
block_3:
    temp_s3_2 = arg0->unk80;
    switch (temp_s3_2) {                            /* irregular */
    case 0x710:
        break;
    case 0x720:
        break;
    case 0x730:
        unksp40 = 0x1403;
        sp20 = GLUE_F64(M2C_ERROR(/* Read from unset register $f13 */), 0x41800000U);
        gl_n_texbind((void *)0x41800000);
        break;
    }
    glTexImage2D(0xDE1, 0, sp14, arg0->unk24);
    if (var_s0 != 0) {
        gl_n_texbind((void *) var_s0);
    }
    if ((f32) sp20 != 1.0f) {
        gl_n_texbind((bitwise void *) sp20);
    }
}

void __iglooPixmodeFmt(u32 arg0, s32 arg1, s32 *arg2, s32 *arg3) {
    s64 sp0;
    s32 var_a0;

    *arg3 = 0;
    switch (arg0) {
    case 3:
        var_a0 = 0x1907;
block_3:
        *arg2 = var_a0;
        break;
    case 0:
        *arg2 = 0x8000;
        break;
    case 2:
        *arg2 = 0x1908;
        break;
    case 4:
        *arg2 = 0x1909;
        break;
    case 6:
        var_a0 = 0x1906;
        goto block_3;
    case 5:
        sp0 = (s64) arg3;
        *arg2 = 0x190A;
        if (arg1 != 0) {
            *sp0 = __iglooGetMatrixMode();
            __iglooMatrixMode(0x1800);
            __iglooLoadMatrix(&__iglooTexCMatAL2LA);
        }
        break;
    case 1:
        sp0 = (s64) arg3;
        *arg2 = 0x1907;
        if (arg1 != 0) {
            *sp0 = __iglooGetMatrixMode(0x1907);
            __iglooMatrixMode(0x1800, sp0);
            __iglooLoadMatrix(&__iglooTexCMatBGR2RGB);
        }
        break;
    }
}

void __iglooClearColMat(s64 arg0) {
    s64 sp0;

    sp0 = arg0;
    if (arg0 != 0) {
        __iglooLoadIdentity();
        __iglooMatrixMode(sp0);
    }
}

void __iglooPixmodeType(u32 arg0, s32 arg1, s32 *arg2, f32 *arg3) {
    s32 var_a0;

    *arg3 = 1.0f;
    switch (arg0) {
    case 8:
        var_a0 = 0x1405;
block_3:
        *arg2 = var_a0;
        break;
    case 2:
        *arg2 = 0x1401;
        break;
    case 6:
        *arg2 = 0x1403;
        break;
    case 9:
        *arg2 = 0x1406;
        break;
    case 0:
        var_a0 = 0x1A00;
        goto block_3;
    case 7:
        *arg2 = 0x1404;
        break;
    case 1:
        *arg2 = 0x1400;
        break;
    case 5:
        *arg2 = 0x1402;
        break;
    case 3:
        *arg2 = 0x1402;
        if (arg1 != 0) {
            *arg3 = 16.0f;
            gl_n_texbind((void *)0x41800000, 0x1402);
        }
        break;
    case 4:
        *arg2 = 0x1403;
        if (arg1 != 0) {
            *arg3 = 16.0f;
            gl_n_texbind((void *)0x41800000);
        }
        break;
    }
}

void __iglooColScale(f32 arg0) {
    __iglooPixelTransferf(0xD1C);
    __iglooPixelTransferf(0xD14);
    __iglooPixelTransferf(0xD18);
    __iglooPixelTransferf(0xD1A);
}

void __iglooNotTexObjList(s64 arg0) {
    s64 sp8;
    s64 sp0;
    ? var_a0;
    ? var_a0_2;
    s32 temp_a5;

    sp0 = (s64) gl_wstatep;
    sp8 = arg0;
    if (gl_wstatep->unk2DBC->unk14 != 0) {
        temp_a5 = sp8->unk1C;
        if (__iglooIsExtensionSupported(0xC) != 1) {
            if (temp_a5 == 2) {
                __iglooSetEnable(0xDE1, 1);
            }
        } else {
            var_a0 = 0xDE1;
            if (temp_a5 == 3) {
                var_a0 = 0x806F;
            }
            __iglooSetEnable(var_a0, 1);
            var_a0_2 = 0xDE1;
            if (sp8->unk1C == 2) {
                var_a0_2 = 0x806F;
            }
            __iglooSetEnable(var_a0_2, 0);
        }
        *sp0->unk2DBC = 1;
    }
}

void gl_g_fbsubtexload(void) {

}

void __iglooigl2OglTexture(void *arg0, s64 arg1, s32 *arg2, void **arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *sp4;
    s16 *temp_v0_3;
    s16 *var_a4_4;
    s16 *var_t1_3;
    s16 temp_a7;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_t0;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a4_3;
    s32 var_a4_5;
    s32 var_a4_7;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a6;
    s32 var_a6_3;
    s32 var_a6_5;
    s32 var_a6_8;
    s32 var_t1_2;
    s32 var_t1_4;
    s32 var_t1_6;
    s32 var_t8;
    s32 var_t9;
    s32 var_t9_2;
    s32 var_t9_3;
    u8 *temp_v0_5;
    u8 *var_a1_2;
    u8 *var_a6_7;
    u8 temp_at_3;
    u8 temp_at_4;
    u8 temp_t0_2;
    u8 temp_t0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_4;
    void *var_a4_2;
    void *var_a4_6;
    void *var_a4_8;
    void *var_a6_2;
    void *var_a6_4;
    void *var_a6_6;
    void *var_s2;
    void *var_s2_2;
    void *var_s2_3;
    void *var_s2_4;
    void *var_t1;
    void *var_t1_5;

    temp_v0 = M2C_ERROR(/* Read from unset register $a6 */);
    if (M2C_ERROR(/* Read from unset register $a4 */) != 0x710) {
        if (M2C_ERROR(/* Read from unset register $a4 */) != 0x720) {
            if (M2C_ERROR(/* Read from unset register $a4 */) == 0x3000) {
                gl_n_texbind(arg0, arg1, arg2, arg3);
            }
        } else if (M2C_ERROR(/* Read from unset register $a5 */) != 1) {
            if (M2C_ERROR(/* Read from unset register $a5 */) != 2) {
                if (M2C_ERROR(/* Read from unset register $a5 */) != 3) {
                    if (M2C_ERROR(/* Read from unset register $a5 */) == 4) {
                        sp4 = temp_v0;
                        glTexSubImage2DEXT(0xDE1, 0, (s64) arg0, arg1);
                    }
                } else {
                    temp_lo = (s32) arg2 * (s32) arg3;
                    sp20 = arg1;
                    sp18 = (s64) arg0;
                    var_s2 = temp_v0;
                    temp_v0_2 = gl_malloc(temp_lo * 6, saved_reg_gp->unk-3848, temp_lo);
                    var_t1 = temp_v0_2;
                    sp10 = (s64) temp_v0_2;
                    var_a5 = 0;
                    if ((s32) arg3 > 0) {
loop_62:
                        var_a4 = 0;
                        if ((s32) arg2 > 0) {
                            var_a6 = (s32) arg2 & 3;
                            var_t9 = 0;
                            if (var_a6 != 0) {
                                do {
                                    var_t1->unk0 = (s16) var_s2->unk4;
                                    temp_at = var_s2->unk2;
                                    var_a4 += 1;
                                    var_s2 += 6;
                                    var_t1->unk2 = temp_at;
                                    var_t1 += 6;
                                    var_a6 -= 1;
                                    var_t1->unk-2 = (s16) var_s2->unk-6;
                                } while (var_a6 != 0);
                                var_t9 = var_a4;
                            }
                            if (((s32) arg2 >> 2) != 0) {
                                var_a4_2 = var_t1;
                                var_t1_2 = var_t9;
                                var_a6_2 = var_s2;
                                do {
                                    var_a4_2->unk0 = (s16) var_a6_2->unk4;
                                    var_a4_2->unk2 = (s16) var_a6_2->unk2;
                                    var_a4_2->unk4 = (s16) var_a6_2->unk0;
                                    var_a4_2->unk6 = (s16) var_a6_2->unkA;
                                    var_a4_2->unk8 = (s16) var_a6_2->unk8;
                                    var_a4_2->unkA = (s16) var_a6_2->unk6;
                                    var_a4_2->unkC = (s16) var_a6_2->unk10;
                                    var_a4_2->unkE = (s16) var_a6_2->unkE;
                                    var_a4_2->unk10 = (s16) var_a6_2->unkC;
                                    var_a4_2->unk12 = (s16) var_a6_2->unk16;
                                    temp_at_2 = var_a6_2->unk14;
                                    var_a6_2 += 0x18;
                                    var_a4_2->unk14 = temp_at_2;
                                    var_a4_2 += 0x18;
                                    var_t1_2 += 4;
                                    var_a4_2->unk-2 = (s16) var_a6_2->unk-6;
                                } while (arg2 != var_t1_2);
                                var_t1 = var_a4_2;
                                var_s2 = var_a6_2;
                            }
                        }
                        var_a5 += 1;
                        if (arg3 != var_a5) {
                            goto loop_62;
                        }
                    }
                    sp4 = (void *) sp10;
                    glTexSubImage2DEXT(0xDE1, 0, sp18, sp20);
                    gl_free(sp10, saved_reg_gp->unk-3848);
                }
            } else {
                sp20 = arg1;
                sp18 = (s64) arg0;
                var_s2_2 = temp_v0;
                temp_v0_3 = gl_malloc((s32) arg2 * (s32) arg3 * 4, saved_reg_gp->unk-3848);
                var_t1_3 = temp_v0_3;
                sp10 = (s64) temp_v0_3;
                var_a5_2 = 0;
                if ((s32) arg3 > 0) {
loop_50:
                    var_a4_3 = 0;
                    if ((s32) arg2 > 0) {
                        var_a6_3 = (s32) arg2 & 3;
                        var_t9_2 = 0;
                        if (var_a6_3 != 0) {
                            do {
                                temp_t0 = var_s2_2->unk2;
                                var_a4_3 += 1;
                                var_s2_2 += 4;
                                *var_t1_3 = temp_t0;
                                var_t1_3 += 4;
                                var_a6_3 -= 1;
                                var_t1_3->unk-2 = (s16) var_s2_2->unk-4;
                            } while (var_a6_3 != 0);
                            var_t9_2 = var_a4_3;
                        }
                        if (((s32) arg2 >> 2) != 0) {
                            var_a4_4 = var_t1_3;
                            var_t1_4 = var_t9_2;
                            var_a6_4 = var_s2_2;
                            do {
                                var_a4_4->unk0 = var_a6_4->unk2;
                                var_a4_4->unk2 = (s16) var_a6_4->unk0;
                                var_a4_4->unk4 = (s16) var_a6_4->unk6;
                                var_a4_4->unk6 = (s16) var_a6_4->unk4;
                                var_a4_4->unk8 = (s16) var_a6_4->unkA;
                                var_a4_4->unkA = (s16) var_a6_4->unk8;
                                temp_a7 = var_a6_4->unkE;
                                var_a6_4 += 0x10;
                                var_a4_4->unkC = temp_a7;
                                var_a4_4 += 0x10;
                                var_t1_4 += 4;
                                var_a4_4->unk-2 = (s16) var_a6_4->unk-4;
                            } while (arg2 != var_t1_4);
                            var_t1_3 = var_a4_4;
                            var_s2_2 = var_a6_4;
                        }
                    }
                    var_a5_2 += 1;
                    if (arg3 != var_a5_2) {
                        goto loop_50;
                    }
                }
                sp4 = (void *) sp10;
                glTexSubImage2DEXT(0xDE1, 0, sp18, sp20);
                gl_free(sp10, saved_reg_gp->unk-3848);
            }
        } else {
            sp4 = temp_v0;
            glTexSubImage2DEXT(0xDE1, 0, (s64) arg0, arg1);
        }
    } else if (M2C_ERROR(/* Read from unset register $a5 */) != 1) {
        if (M2C_ERROR(/* Read from unset register $a5 */) != 2) {
            if (M2C_ERROR(/* Read from unset register $a5 */) != 3) {
                if (M2C_ERROR(/* Read from unset register $a5 */) == 4) {
                    sp4 = temp_v0;
                    glTexSubImage2DEXT(0xDE1, 0, (s64) arg0, arg1);
                }
            } else {
                temp_lo_2 = (s32) arg2 * (s32) arg3;
                sp20 = arg1;
                sp18 = (s64) arg0;
                var_s2_3 = temp_v0;
                temp_v0_4 = gl_malloc(temp_lo_2 * 3, saved_reg_gp->unk-3848, temp_lo_2);
                var_t1_5 = temp_v0_4;
                sp10 = (s64) temp_v0_4;
                var_a5_3 = 0;
                if ((s32) arg3 > 0) {
loop_37:
                    var_a4_5 = 0;
                    if ((s32) arg2 > 0) {
                        var_a6_5 = (s32) arg2 & 3;
                        var_t9_3 = 0;
                        if (var_a6_5 != 0) {
                            do {
                                var_t1_5->unk0 = (u8) var_s2_3->unk2;
                                temp_t0_2 = var_s2_3->unk1;
                                var_a4_5 += 1;
                                var_s2_3 += 3;
                                var_t1_5->unk1 = temp_t0_2;
                                var_t1_5 += 3;
                                var_a6_5 -= 1;
                                var_t1_5->unk-1 = (u8) var_s2_3->unk-3;
                            } while (var_a6_5 != 0);
                            var_t9_3 = var_a4_5;
                        }
                        if (((s32) arg2 >> 2) != 0) {
                            var_a6_6 = var_t1_5;
                            var_t1_6 = var_t9_3;
                            var_a4_6 = var_s2_3;
                            do {
                                var_a6_6->unk0 = (u8) var_a4_6->unk2;
                                var_a6_6->unk1 = (u8) var_a4_6->unk1;
                                var_a6_6->unk2 = (u8) var_a4_6->unk0;
                                var_a6_6->unk3 = (u8) var_a4_6->unk5;
                                var_a6_6->unk4 = (u8) var_a4_6->unk4;
                                var_a6_6->unk5 = (u8) var_a4_6->unk3;
                                var_a6_6->unk6 = (u8) var_a4_6->unk8;
                                var_a6_6->unk7 = (u8) var_a4_6->unk7;
                                var_a6_6->unk8 = (u8) var_a4_6->unk6;
                                var_a6_6->unk9 = (u8) var_a4_6->unkB;
                                temp_t0_3 = var_a4_6->unkA;
                                var_a4_6 += 0xC;
                                var_a6_6->unkA = temp_t0_3;
                                var_a6_6 += 0xC;
                                var_t1_6 += 4;
                                var_a6_6->unk-1 = (u8) var_a4_6->unk-3;
                            } while (arg2 != var_t1_6);
                            var_t1_5 = var_a6_6;
                            var_s2_3 = var_a4_6;
                        }
                    }
                    var_a5_3 += 1;
                    if (arg3 != var_a5_3) {
                        goto loop_37;
                    }
                }
                sp4 = (void *) sp10;
                glTexSubImage2DEXT(0xDE1, 0, sp18, sp20);
                gl_free(sp10, saved_reg_gp->unk-3848);
            }
        } else {
            sp20 = arg1;
            sp18 = (s64) arg0;
            var_s2_4 = temp_v0;
            temp_v0_5 = gl_malloc((s32) arg2 * (s32) arg3 * 2, saved_reg_gp->unk-3848);
            var_a6_7 = temp_v0_5;
            sp10 = (s64) temp_v0_5;
            var_a5_4 = 0;
            if ((s32) arg3 > 0) {
loop_23:
                var_a4_7 = 0;
                if ((s32) arg2 > 0) {
                    var_a1 = (s32) arg2 & 3;
                    var_t8 = 0;
                    if (var_a1 != 0) {
                        do {
                            temp_at_3 = var_s2_4->unk1;
                            var_a4_7 += 1;
                            var_s2_4 += 2;
                            *var_a6_7 = temp_at_3;
                            var_a6_7 += 2;
                            var_a1 -= 1;
                            var_a6_7->unk-1 = (u8) var_s2_4->unk-2;
                        } while (var_a1 != 0);
                        var_t8 = var_a4_7;
                    }
                    if (((s32) arg2 >> 2) != 0) {
                        var_a1_2 = var_a6_7;
                        var_a6_8 = var_t8;
                        var_a4_8 = var_s2_4;
                        do {
                            var_a1_2->unk0 = var_a4_8->unk1;
                            var_a1_2->unk1 = (u8) var_a4_8->unk0;
                            var_a1_2->unk2 = (u8) var_a4_8->unk3;
                            var_a1_2->unk3 = (u8) var_a4_8->unk2;
                            var_a1_2->unk4 = (u8) var_a4_8->unk5;
                            var_a1_2->unk5 = (u8) var_a4_8->unk4;
                            temp_at_4 = var_a4_8->unk7;
                            var_a4_8 += 8;
                            var_a1_2->unk6 = temp_at_4;
                            var_a1_2 += 8;
                            var_a6_8 += 4;
                            var_a1_2->unk-1 = (u8) var_a4_8->unk-2;
                        } while (arg2 != var_a6_8);
                        var_a6_7 = var_a1_2;
                        var_s2_4 = var_a4_8;
                    }
                }
                var_a5_4 += 1;
                if (arg3 != var_a5_4) {
                    goto loop_23;
                }
            }
            sp4 = (void *) sp10;
            glTexSubImage2DEXT(0xDE1, 0, sp18, sp20);
            gl_free(sp10, saved_reg_gp->unk-3848);
        }
    } else {
        sp4 = temp_v0;
        glTexSubImage2DEXT(0xDE1, 0, (s64) arg0, arg1);
    }
}

void gl_g_subtexload(f64 arg1, f64 arg3, s64 arg0) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 temp_f5;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_v0;
    u32 temp_v0_2;
    void *temp_a0;
    void *temp_s0;

    sp28 = M2C_ERROR(/* Read from unset register $a7 */);
    sp10 = M2C_ERROR(/* Read from unset register $f17 */);
    sp18 = arg3;
    sp20 = arg1;
    sp38 = arg0;
    sp30 = (s64) gl_wstatep;
    temp_v0 = __iglooGetGraphicsType();
    if ((temp_v0 != 4) && (temp_v0 != 3)) {
        if (gl_iglooUseTexObj != 0) {
            if (sp38 != 0) {

            } else {
                temp_a0 = sp30->unk2DBC;
                temp_s0 = gl_find(&gl_texturetab, (bitwise s32) sp20, 3, gl_iglooUseTexObj);
                if (temp_a0->unk0 != 0) {
                    temp_a1 = temp_a0->unk4;
                    if (temp_a1 == (bitwise s32) sp20) {
                        temp_a3 = temp_s0->unk8;
                        if (temp_a3 != temp_a0->unk8) {
                            gl_texbind(0, (s64) temp_a1, 1, temp_a3);
                        }
                        temp_f5 = (f32) temp_s0->unk24;
                        temp_f1 = (s32) ((f32) temp_s0->unk28 * (second half of f64));
                        temp_v0_2 = (bitwise u32) arg1;
                        temp_f0 = (s32) (temp_f5 * (bitwise f32) subroutine_arg0);
                        if (temp_v0_2 != 1) {
                            if (temp_v0_2 == 2) {
                                __iglooigl2OglTexture((void *) temp_f0, (s64) temp_f1, (s32 *)0x80, (void **)0x80);
                            } else if (temp_v0_2 >= 3U) {
                                if (temp_v0_2 >= 6U) {
                                    goto block_17;
                                }
                            } else {
block_17:
                                __iglooigl2OglTexture((void *) temp_f0, (s64) temp_f1, (s32 *) (s32) ((temp_f5 * (f32) sp18) - (f32) temp_f0), (void **) (s32) (((second half of f64) * (bitwise f32) sp10) - (f32) temp_f1));
                            }
                        } else {
                            __iglooigl2OglTexture((void *) temp_f0, (s64) temp_f1, (s32 *)0x40, (void **)0x40);
                        }
                    }
                }
            }
        }
    }
}
