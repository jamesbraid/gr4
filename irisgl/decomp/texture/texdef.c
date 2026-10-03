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
    /* 0x2DC0 */ char pad2DC0[0x78];                /* maybe part of unk2DBC[0x1F]? */
    /* 0x2E38 */ s32 unk2E38;                       /* inferred */
    /* 0x2E3C */ s32 unk2E3C;                       /* inferred */
    /* 0x2E40 */ char pad2E40[0xA8];                /* maybe part of unk2E3C[0x2B]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? exit(?);                                          /* extern */
? glBindTextureEXT(?, s32, s32, ?);                 /* extern */
? glDeleteLists(s32, ?);                            /* extern */
? glDeleteTexturesEXT(?, void *);                   /* extern */
s32 glGenLists(?);                                  /* extern */
? glGenTexturesEXT(?, s32);                         /* extern */
? glGetError(s64, s32 *);                           /* extern */
? glGetTexLevelParameteriv(?, s32, ?, s32 *);       /* extern */
? glTexImage2D(?, s32, s32, u16 *);                 /* extern */
? glTexImage3DEXT(?, s64, s32, s64);                /* extern */
? glTexParameteri(?, ?, s32);                       /* extern */
? sprintf(? *, void *, s32, void *);                /* extern */
extern ? gl_texturetab;
extern ? sub_0f020000;
extern ? sub_0f030000;

void __iglooTBMReleaseOld(void) {

}

void __iglooTBMBindNew(void *arg0) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v0;

    if (gl_iglooUseTexObj == 1) {
        glGenTexturesEXT(1, arg0 + 0xC);
        temp_a1 = arg0->unkC;
        if (__iglooIsExtensionSupported(0xC) == 1) {
            temp_a2 = arg0->unk1C;
            if (temp_a2 != 3) {
                glBindTextureEXT(0xDE1, temp_a1, temp_a2);
            } else {
                glBindTextureEXT(0x806F, temp_a1, temp_a2);
            }
        } else {
            glBindTextureEXT(0xDE1, temp_a1);
        }
    } else {
        temp_v0 = glGenLists(1);
        arg0->unk14 = temp_v0;
        __iglooNewList(temp_v0, 0x1300);
    }
}

void __iglooTBMReleaseNew(void) {
    if (gl_iglooUseTexObj == 0) {
        __iglooEndList();
    }
}

void __iglooTBMRestoreOld(s64 arg0, s32 arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    gl_wstate *temp_a4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s64 var_v0;
    s64 var_v0_2;

    var_v0 = arg0;
    temp_a4 = gl_wstatep;
    if (arg1 != 0) {
        if (gl_iglooUseTexObj == 0) {
            sp8 = var_v0;
            sp10 = (s64) temp_a4;
            glCallList(var_v0->unk14);
            var_v0 = sp8;
        }
        temp_a4->unk2DBC->unk8 = (s32) var_v0->unk8;
    } else {
        temp_a1 = gl_wstatep->unk2DBC->unk4;
        if (temp_a1 != 0) {
            var_v0_2 = gl_find(&gl_texturetab, temp_a1, gl_iglooUseTexObj);
            if (gl_iglooUseTexObj == 1) {
                sp0 = var_v0_2;
                temp_a1_2 = sp0->unkC;
                if (__iglooIsExtensionSupported(0xC) == 1) {
                    temp_a2 = sp0->unk1C;
                    if (temp_a2 != 3) {
                        glBindTextureEXT(0xDE1, temp_a1_2, temp_a2, 3);
                        var_v0_2 = sp0;
                    } else {
                        glBindTextureEXT(0x806F, temp_a1_2, temp_a2, 3);
                        var_v0_2 = sp0;
                    }
                } else {
                    glBindTextureEXT(0xDE1, temp_a1_2, 1);
                    var_v0_2 = sp0;
                }
            }
            __iglooNotTexObjList(var_v0_2);
        } else {
            if (gl_iglooUseTexObj == 1) {
                glBindTextureEXT(0xDE1, 0, gl_iglooUseTexObj);
                glBindTextureEXT(0x806F, 0);
            }
            __iglooSetEnable(0xDE1, 0);
            if (__iglooIsExtensionSupported(0xC) == 1) {
                __iglooSetEnable(0x806F, 0);
            }
        }
    }
}

void gl_g_texdef2d(u16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp58;
    s64 sp48;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    gl_wstate *temp_a7;
    s64 var_ra;
    u16 *temp_s0;
    u16 *temp_v0;
    u16 *var_s2;

    var_ra = saved_reg_ra;
    sp28 = M2C_ERROR(/* Read from unset register $a6 */);
    sp0 = M2C_ERROR(/* Read from unset register $a5 */);
    sp8 = M2C_ERROR(/* Read from unset register $a4 */);
    sp10 = arg3;
    sp18 = arg2;
    sp20 = arg1;
    var_s2 = NULL;
    temp_a7 = gl_wstatep;
    if (arg0 != NULL) {
        if (gl_wstatep->unk2DBC == NULL) {
            sp58 = (s64) temp_a7;
            gl_init_texturing(gl_wstatep);
            var_ra = sp48;
        }
        if (temp_a7->unk2DBC->unk4 == arg0) {
            sp48 = var_ra;
            var_s2 = (u16 *)1;
        }
        sp48 = var_ra;
        temp_v0 = gl_remove(&gl_texturetab, arg0);
        if (temp_v0 != NULL) {
            gl_g_texdef3d(temp_v0);
        }
        gl_g_texdef3d((u16 *)2);
        temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
        M2C_ERROR(/* Read from unset register $v0 */)->unk1C = 2;
        M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg0;
        __iglooGetIntegerv(0xD33, M2C_ERROR(/* Read from unset register $v0 */) + 0x30);
        gl_insert(&gl_texturetab, temp_s0);
        __iglooPixelStorei(0xCF5, 1);
        __iglooPixelStorei(0xCF2, 0);
        gl_limgzoom(temp_s0, var_s2);
        gl_g_texdef2d(temp_s0, sp20, sp18, sp10);
        gl_limgzoom(temp_s0, var_s2);
        return;
    }
    gl_ErrorHandler(0x37, 2, sub_0f030000.unk-5410);
}

void gl_freemip(u16 *arg0) {
    s64 sp8;
    s64 var_ra;
    u16 *temp_a0;

    var_ra = saved_reg_ra;
    if (arg0 != NULL) {
        temp_a0 = arg0->unk14;
        if (temp_a0 != NULL) {
            gl_free(temp_a0, saved_reg_gp->unk-3840);
            var_ra = sp8;
        }
        if (arg0 != NULL) {
            sp8 = var_ra;
            gl_free(arg0, saved_reg_gp->unk-3840);
        }
    }
}

s32 __iglooGetPixmodes(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3;
    s32 var_v0;

    temp_a2 = arg0->unk88;
    var_v0 = 0x1000;
    if ((temp_a2 == 0xF00) || (temp_a2 == 0x1000)) {
        temp_a3 = arg0->unk80;
        var_v0 = 0x730;
        if (temp_a3 != 0x3000) {
            if (temp_a3 != 0x710) {
                if (temp_a3 != 0x720) {
                    if (temp_a3 == 0x730) {
                        temp_a2_2 = arg0->unk20;
                        var_v0 = 2;
                        switch (temp_a2_2) {        /* switch 3; irregular */
                        case 1:                     /* switch 3 */
                            arg0->unk154 = 4;
                            break;
                        case 2:                     /* switch 3 */
                            arg0->unk154 = 5;
                            break;
                        case 3:                     /* switch 3 */
                            arg0->unk154 = 1;
                            break;
                        case 4:                     /* switch 3 */
                            arg0->unk154 = 0;
                            break;
                        }
                        arg0->unk155 = 4;
                    }
                } else {
                    temp_a2_3 = arg0->unk20;
                    var_v0 = 2;
                    switch (temp_a2_3) {            /* switch 2; irregular */
                    case 1:                         /* switch 2 */
                        var_v0 = 4;
                        arg0->unk154 = 4;
                        break;
                    case 2:                         /* switch 2 */
                        arg0->unk154 = 5;
                        break;
                    case 3:                         /* switch 2 */
                        arg0->unk154 = 1;
                        break;
                    case 4:                         /* switch 2 */
                        arg0->unk154 = 0;
                        break;
                    }
                    arg0->unk155 = 6;
                }
            } else {
                temp_a2_4 = arg0->unk20;
                switch (temp_a2_4) {                /* switch 1; irregular */
                case 1:                             /* switch 1 */
                    arg0->unk154 = 4;
                    break;
                case 2:                             /* switch 1 */
                    arg0->unk154 = 5;
                    break;
                case 3:                             /* switch 1 */
                    arg0->unk154 = 1;
                    break;
                case 4:                             /* switch 1 */
                    arg0->unk154 = 0;
                    break;
                }
                arg0->unk155 = 2;
            }
        } else {
            var_v0 = gl_wstatep->unk2E3C;
            arg0->unk154 = (s8) var_v0;
            arg0->unk155 = (s8) gl_wstatep->unk2E38;
        }
        arg0->unk174 = 0;
    }
    return var_v0;
}

void gl_texdef(u16 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    f32 *var_a7;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f3_2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f9;
    f64 temp_f2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_at;
    s32 temp_f0_3;
    s32 temp_f2_2;
    s32 temp_f2_3;
    s32 temp_f3;
    s32 temp_t0;
    s32 temp_t9;
    s32 var_a1;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;

    var_a1 = arg1;
    arg0->unk70 = 0;
    arg0->unk74 = 0;
    arg0->unk1A8 = 0;
    arg0->unk18 = (s32) M2C_ERROR(/* Read from unset register $a5 */);
    arg0->unk28 = arg3;
    arg0->unk24 = arg2;
    arg0->unk20 = var_a1;
    arg0->unk2C = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    arg0->unk7C = (s32) (arg3 - 1);
    arg0->unk78 = (s32) (arg2 - 1);
    if (M2C_ERROR(/* Read from unset register $a4 */) < 2) {
        arg0->unk1C = 2;
        arg0->unk3C = 0x220;
        arg0->unk38 = 0x220;
        arg0->unk34 = 0x124;
    } else {
        arg0->unk38 = 0x270;
        arg0->unk34 = 0x270;
        arg0->unk1C = 3;
    }
    arg0->unk188 = 0;
    arg0->unk88 = 0;
    arg0->unk1AC = 0;
    arg0->unk18C = 0;
    arg0->unk184 = 0;
    arg0->unk180 = 0;
    arg0->unk80 = 0x710;
    arg0->unk54 = 0x301;
    arg0->unk58 = 0x301;
    arg0->unk5C = 0x301;
    switch (var_a1) {                               /* irregular */
    case 1:
        arg0->unk84 = 0x610;
        break;
    case 2:
        arg0->unk84 = 0x620;
        break;
    case 3:
        arg0->unk84 = 0x660;
        break;
    case 4:
        arg0->unk84 = 0x660;
        break;
    }
    arg0->unk100 = 0;
    arg0->unk140 = (f64) (second half of f64);
    arg0->unk108 = (f64) (second half of f64);
    arg0->unkC0 = (f64) (second half of f64);
    arg0->unkE0 = (f64) (second half of f64);
    arg0->unk138 = -0.03125;
    arg0->unk110 = -0.03125;
    arg0->unk128 = 0.48125;
    arg0->unk120 = 0.48125;
    arg0->unkE8 = 3.0;
    arg0->unkC8 = (f64) (second half of f64);
    arg0->unkF8 = 6.5;
    arg0->unk130 = 0.05;
    arg0->unk118 = 0.05;
    arg0->unkD8 = 6.5;
    arg0->unkA8 = 6.5;
    arg0->unkF0 = 4.0;
    arg0->unkD0 = 4.0;
    if (M2C_ERROR(/* Read from unset register $a7 */) != 0) {
        var_a1 = 0x230;
        if ((s32) *M2C_ERROR(/* Read from unset register $a7 */) != 0) {
loop_13:
            temp_f3 = (s32) *M2C_ERROR(/* Read from unset register $a7 */);
            var_a7 = M2C_ERROR(/* Read from unset register $a7 */) + 4;
            if (temp_f3 >= 0x900) {
                if (temp_f3 >= 0x901) {
                    if (temp_f3 >= 0xE00) {
                        if (temp_f3 >= 0xE01) {
                            if (temp_f3 >= 0x2000) {
                                if (temp_f3 >= 0x2001) {
                                    if (temp_f3 == 0x4000) {
                                        arg0->unk9C = (f32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                                        temp_f0 = var_a7->unk4;
                                        var_a7 += 8;
                                        arg0->unkA0 = temp_f0;
                                        goto block_11;
                                    }
                                    /* Duplicate return node #78. Try simplifying control flow for better match */
                                    gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                                    return;
                                }
                                arg0->unk88 = 0xF00;
                                goto block_11;
                            }
                            if (temp_f3 >= 0x1000) {
                                if (temp_f3 < 0x1001) {
                                    arg0->unk88 = 0x1000;
                                    arg0->unk8C = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                                    arg0->unk94 = (s32) var_a7->unk4;
                                    arg0->unk90 = (s32) var_a7->unk8;
                                    temp_a4 = (s32) var_a7->unkC;
                                    var_a7 += 0x10;
                                    arg0->unk98 = temp_a4;
                                    goto block_11;
                                }
                                /* Duplicate return node #78. Try simplifying control flow for better match */
                                gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                                return;
                            }
                            if (temp_f3 == 0xF00) {
                                arg0->unk88 = 0xF00;
                                goto block_11;
                            }
                            /* Duplicate return node #78. Try simplifying control flow for better match */
                            gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                            return;
                        }
                        arg0->unk188 = 1;
                        arg0->unk40 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                        arg0->unk44 = (s32) var_a7->unk4;
                        arg0->unk48 = (s32) var_a7->unk8;
                        arg0->unk4C = (s32) var_a7->unkC;
                        var_t0 = 0;
                        var_a7 += 0x14;
                        if (var_a7->unk10 != 0.0f) {
                            var_t0 = 1;
                        }
                        arg0->unk50 = var_t0;
                        goto block_11;
                    }
                    if (temp_f3 >= 0xC00) {
                        if (temp_f3 < 0xC01) {
                            temp_t0 = arg0->unk100;
                            if (temp_t0 < 4) {
                                ((temp_t0 * 8) + arg0)->unkC0 = (f64) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                                temp_at = arg0->unk100 + 1;
                                arg0->unk100 = temp_at;
                                var_a7 += 8;
                                ((temp_at * 8) + arg0)->unkD8 = (f64) var_a7->unk-4;
                            } else {
                                var_a7 += 8;
                            }
                            goto block_11;
                        }
                        if (temp_f3 == 0xD00) {
                            var_a7 += 4;
                            arg0->unkA8 = (f64) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                            goto block_11;
                        }
                        /* Duplicate return node #78. Try simplifying control flow for better match */
                        gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                        return;
                    }
                    if (temp_f3 >= 0xB00) {
                        var_a7 += 4;
                        if (temp_f3 < 0xB01) {
                            arg0->unk3C = 0x220;
                            goto block_11;
                        }
                        /* Duplicate return node #78. Try simplifying control flow for better match */
                        gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                        return;
                    }
                    if (temp_f3 == 0xA00) {
                        var_a7 += 4;
                        arg0->unk38 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                        goto block_11;
                    }
                    /* Duplicate return node #78. Try simplifying control flow for better match */
                    gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                    return;
                }
                arg0->unk108 = (f64) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                arg0->unk110 = (f64) var_a7->unk4;
                arg0->unk118 = (f64) var_a7->unk8;
                arg0->unk120 = (f64) var_a7->unkC;
                arg0->unk128 = (f64) var_a7->unk10;
                arg0->unk130 = (f64) var_a7->unk14;
                arg0->unk138 = (f64) var_a7->unk18;
                temp_f2 = (f64) var_a7->unk1C;
                var_a7 += 0x20;
                arg0->unk140 = temp_f2;
                goto block_11;
            }
            if (temp_f3 >= 0x330) {
                if (temp_f3 >= 0x331) {
                    if (temp_f3 >= 0x600) {
                        if (temp_f3 >= 0x601) {
                            if (temp_f3 == 0x700) {
                                var_a7 += 4;
                                arg0->unk80 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                                goto block_11;
                            }
                            /* Duplicate return node #78. Try simplifying control flow for better match */
                            gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                            return;
                        }
                        var_a7 += 4;
                        arg0->unk84 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                        goto block_11;
                    }
                    if (temp_f3 >= 0x500) {
                        if (temp_f3 < 0x501) {
                            arg0->unk60 = (f32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                            arg0->unk64 = (f32) var_a7->unk4;
                            arg0->unk68 = (f32) var_a7->unk8;
                            var_a7 += 0x10;
                            arg0->unk194 = 0;
                            arg0->unk19C = 0;
                            arg0->unk198 = arg3;
                            arg0->unk190 = arg2;
                            arg0->unk18C = 1;
                            arg0->unk184 = 1;
                            arg0->unk6C = (f32) var_a7->unk-4;
                            goto block_11;
                        }
                        /* Duplicate return node #78. Try simplifying control flow for better match */
                        gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                        return;
                    }
                    if (temp_f3 == 0x400) {
                        temp_f9 = M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                        temp_f6 = var_a7->unkC;
                        var_a7 += 0x10;
                        temp_f5 = var_a7->unk-8;
                        temp_f4 = var_a7->unk-C;
                        if (((f64) temp_f9 <= 1.0) && ((f64) temp_f4 <= 1.0) && ((f64) temp_f5 <= 1.0) && ((f64) temp_f6 <= 1.0)) {
                            temp_f0_2 = (f32) arg3;
                            temp_f3_2 = (f32) arg2;
                            var_t0_2 = (s32) (temp_f0_2 * temp_f4);
                            var_t1 = (s32) (temp_f3_2 * temp_f9);
                            arg0->unk74 = var_t0_2;
                            var_t3 = (s32) ((temp_f0_2 * temp_f6) + -1.0f);
                            arg0->unk70 = var_t1;
                            var_t2 = (s32) ((temp_f3_2 * temp_f5) + -1.0f);
                            arg0->unk7C = var_t3;
                            arg0->unk78 = var_t2;
                        } else {
                            var_t1 = (s32) temp_f9;
                            var_t3 = (s32) temp_f6;
                            var_t0_2 = (s32) temp_f4;
                            var_t2 = (s32) temp_f5;
                            arg0->unk7C = var_t3;
                            arg0->unk74 = var_t0_2;
                            arg0->unk78 = var_t2;
                            arg0->unk70 = var_t1;
                        }
                        temp_a4_2 = (var_t2 - var_t1) + 1;
                        temp_t9 = (var_t3 - var_t0_2) + 1;
                        arg0->unk18C = 1;
                        M2C_TRAP_IF(temp_t9 == 0);
                        arg0->unk198 = temp_t9;
                        M2C_TRAP_IF(temp_a4_2 == 0);
                        arg0->unk190 = temp_a4_2;
                        arg0->unk194 = (s32) (var_t1 / temp_a4_2);
                        arg0->unk19C = (s32) (var_t0_2 / temp_t9);
                        if ((temp_a4_2 == arg2) && (temp_t9 == arg3)) {
                            arg0->unk18C = 0;
                        }
                        goto block_11;
                    }
                    /* Duplicate return node #78. Try simplifying control flow for better match */
                    gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                    return;
                }
                var_a7 += 4;
                arg0->unk5C = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                goto block_11;
            }
            if (temp_f3 >= 0x300) {
                if (temp_f3 >= 0x301) {
                    if (temp_f3 >= 0x320) {
                        if (temp_f3 < 0x321) {
                            var_a7 += 4;
                            arg0->unk58 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                            goto block_11;
                        }
                        /* Duplicate return node #78. Try simplifying control flow for better match */
                        gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                        return;
                    }
                    if (temp_f3 == 0x310) {
                        var_a7 += 4;
                        arg0->unk54 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                        goto block_11;
                    }
                    /* Duplicate return node #78. Try simplifying control flow for better match */
                    gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                    return;
                }
                temp_f2_2 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                var_a7 += 4;
                arg0->unk54 = temp_f2_2;
                arg0->unk58 = temp_f2_2;
                arg0->unk5C = temp_f2_2;
                goto block_11;
            }
            if (temp_f3 >= 0x200) {
                if (temp_f3 < 0x201) {
                    temp_f2_3 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                    var_a7 += 4;
                    arg0->unk38 = temp_f2_3;
                    arg0->unk3C = temp_f2_3;
                    if ((temp_f2_3 == 0x230) || (temp_f2_3 == 0x2A0) || (temp_f2_3 == 0x290)) {
                        arg0->unk180 = 1;
                    }
                    goto block_11;
                }
                /* Duplicate return node #78. Try simplifying control flow for better match */
                gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
                return;
            }
            if (temp_f3 == 0x100) {
                temp_f0_3 = (s32) M2C_ERROR(/* Read from unset register $a7 */)->unk4;
                var_a7 += 4;
                arg0->unk34 = temp_f0_3;
                if ((temp_f0_3 == 0x230) || (temp_f0_3 == 0x2A0) || (temp_f0_3 == 0x290)) {
                    arg0->unk180 = 1;
                }
block_11:
                if ((var_a7 != NULL) && ((s32) *var_a7 != 0)) {
                    goto loop_13;
                }
                goto block_28;
            }
            gl_ErrorHandler(0x16, 2, sub_0f030000.unk-5414);
            return;
        }
        goto block_27;
    }
block_27:
block_28:
    gl_g_texdef2d(arg0, (s64) var_a1);
    gl_g_texdef3d(arg0);
    if (arg0->unk88 != 0xF00) {
        gl_g_texdef3d(arg0);
    }
    gl_limgzoom(arg0);
    SetOglFormatAndComps(arg0);
    gl_limgzoom(arg0);
}

void gl_g_texdef3d(u16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp60;
    s64 sp50;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    gl_wstate *temp_t2;
    s64 var_ra;
    u16 *temp_s0;
    u16 *temp_v0;
    u16 *var_s2;

    var_ra = saved_reg_ra;
    sp0 = M2C_ERROR(/* Read from unset register $a7 */);
    sp30 = M2C_ERROR(/* Read from unset register $a6 */);
    sp8 = M2C_ERROR(/* Read from unset register $a5 */);
    sp10 = M2C_ERROR(/* Read from unset register $a4 */);
    sp18 = arg3;
    sp20 = arg2;
    sp28 = arg1;
    var_s2 = NULL;
    temp_t2 = gl_wstatep;
    if (arg0 != NULL) {
        if (gl_wstatep->unk2DBC == NULL) {
            sp60 = (s64) temp_t2;
            gl_init_texturing(gl_wstatep);
            var_ra = sp50;
        }
        if (temp_t2->unk2DBC->unk4 == arg0) {
            sp50 = var_ra;
            var_s2 = (u16 *)1;
        }
        sp50 = var_ra;
        temp_v0 = gl_remove(&gl_texturetab, arg0);
        if (temp_v0 != NULL) {
            gl_g_texdef3d(temp_v0);
        }
        gl_g_texdef3d((u16 *)3);
        temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
        M2C_ERROR(/* Read from unset register $v0 */)->unk1C = 3;
        M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg0;
        __iglooGetIntegerv(0xD33, M2C_ERROR(/* Read from unset register $v0 */) + 0x30);
        gl_insert(&gl_texturetab, temp_s0);
        __iglooPixelStorei(0xCF5, 1);
        __iglooPixelStorei(0xCF2, 0);
        gl_limgzoom(temp_s0, var_s2);
        gl_g_texdef2d(temp_s0, sp28, sp20, sp18);
        gl_limgzoom(temp_s0, var_s2);
        return;
    }
    gl_ErrorHandler(0x37, 2, sub_0f030000.unk-5410);
}

void verifyParams(void *arg0) {
    s64 sp158;
    ? spF0;
    ? spA0;
    ? sp50;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v1;
    s64 var_ra;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *var_a3;

    var_ra = saved_reg_ra;
    if (arg0->unk1C == 3) {
        temp_a0 = arg0->unk34;
        if (temp_a0 != 0x110) {
            goto block_30;
        }
        if (temp_a0 != 0x220) {
block_30:
            arg0->unk34 = 0x220;
        }
    }
    temp_a3 = arg0->unk54;
    if ((temp_a3 == (void *)0x303) || (arg0->unk58 == (void *)0x303) || (arg0->unk5C == 0x303)) {
        temp_at = arg0->unk70;
        temp_v1 = (arg0->unk78 - temp_at) + 1;
        temp_at_2 = arg0->unk74;
        temp_a1 = (arg0->unk7C - temp_at_2) + 1;
        M2C_TRAP_IF(temp_v1 == 0);
        arg0->unk190 = temp_v1;
        M2C_TRAP_IF(temp_a1 == 0);
        arg0->unk198 = temp_a1;
        arg0->unk194 = (s32) (temp_at / temp_v1);
        arg0->unk18C = 1;
        arg0->unk19C = (s32) (temp_at_2 / temp_a1);
    }
    if ((temp_a3 != (void *)0x301) && (temp_a3 != (void *)0x302) && (temp_a3 != (void *)0x303)) {
        sprintf(sp, &sub_0f020000 + 0x5688, (&sub_0f030000 - 0x55B8)->unk1A4, temp_a3);
        gl_ErrorHandler(0x5B, 2, sp);
        arg0->unk54 = (void *)0x301;
        var_ra = sp158;
    }
    var_a3 = arg0->unk58;
    if ((var_a3 != (void *)0x301) && (var_a3 != (void *)0x302) && (var_a3 != (void *)0x303)) {
        sp158 = var_ra;
        sprintf(&sp50, &sub_0f020000 + 0x56B0, (&sub_0f030000 - 0x55B8)->unk1A4, var_a3);
        gl_ErrorHandler(0x5B, 2, &sp50);
        var_ra = sp158;
        var_a3 = (void *)0x301;
        arg0->unk58 = (void *)0x301;
    }
    temp_a0_2 = arg0->unk5C;
    if ((temp_a0_2 != 0x301) && (temp_a0_2 != 0x302) && (temp_a0_2 != 0x303)) {
        sp158 = var_ra;
        sprintf(&spA0, &sub_0f020000 + 0x56D8, (&sub_0f030000 - 0x55B8)->unk1A4, var_a3);
        gl_ErrorHandler(0x5B, 2, &spA0);
        arg0->unk5C = 0x301;
        var_ra = sp158;
    }
    if (arg0->unk180 != 0) {
        temp_a0_3 = arg0->unk20;
        if (temp_a0_3 != 1) {
            if (temp_a0_3 != 2) {
                if (temp_a0_3 == 3) {
                    temp_a3_2 = arg0->unk84;
                    if (temp_a3_2 != (void *)0x680) {
                        sp158 = var_ra;
                        sprintf(&spF0, &sub_0f020000 + 0x5700, (&sub_0f030000 - 0x55B8)->unk1A4, temp_a3_2);
                        gl_ErrorHandler(0x5B, 2, &spF0);
                        arg0->unk84 = (void *)0x680;
                    }
                } else if (temp_a0_3 == 4) {
                    temp_a3_3 = arg0->unk84;
                    if (temp_a3_3 != (void *)0x670) {
                        sp158 = var_ra;
                        sprintf(&spF0, &sub_0f020000 + 0x5700, (&sub_0f030000 - 0x55B8)->unk1A4, temp_a3_3);
                        gl_ErrorHandler(0x5B, 2, &spF0);
                        arg0->unk84 = (void *)0x670;
                    }
                }
            } else {
                temp_a3_4 = arg0->unk84;
                if (temp_a3_4 != (void *)0x650) {
                    sp158 = var_ra;
                    sprintf(&spF0, &sub_0f020000 + 0x5700, (&sub_0f030000 - 0x55B8)->unk1A4, temp_a3_4);
                    gl_ErrorHandler(0x5B, 2, &spF0);
                    arg0->unk84 = (void *)0x650;
                }
            }
        } else {
            temp_a3_5 = arg0->unk84;
            if (temp_a3_5 != (void *)0x610) {
                sp158 = var_ra;
                sprintf(&spF0, &sub_0f020000 + 0x5700, (&sub_0f030000 - 0x55B8)->unk1A4, temp_a3_5);
                gl_ErrorHandler(0x5B, 2, &spF0);
                arg0->unk84 = (void *)0x610;
            }
        }
    }
}

void lg(u32 arg0) {
    u32 temp_a3;
    u32 temp_a3_2;
    u32 var_a3;

    var_a3 = arg0 >> 1;
    if (var_a3 != 0) {
loop_1:
        temp_a3 = var_a3 >> 1;
        if (temp_a3 != 0) {
            temp_a3_2 = temp_a3 >> 1;
            if (temp_a3_2 != 0) {
                var_a3 = temp_a3_2 >> 1;
                if (var_a3 != 0) {
                    goto loop_1;
                }
            }
        }
    }
}

void gl_newtexture(s32 arg0) {
    s32 temp_v0_2;
    u16 *temp_a2;
    void *temp_v0;

    temp_a2 = &sub_0f030000 - 0x55B8;
    temp_v0 = gl_malloc(0x1B0, ((arg0 * 4) + temp_a2)->unk1A0, temp_a2);
    if (temp_v0 == NULL) {
        exit(1);
    }
    temp_v0_2 = __iglooGetId();
    temp_v0->unk14 = 0;
    temp_v0->unkC = 0;
    temp_v0->unk8 = temp_v0_2;
}

void gl_freetexture(void *arg0) {
    s64 sp8;
    s64 var_ra;
    void *temp_a2;

    var_ra = saved_reg_ra;
    if (arg0->unkC != 0) {
        goto block_1;
    }
    if (arg0->unk14 != 0) {
block_1:
        if (gl_iglooUseTexObj != 1) {
            glDeleteLists(arg0->unk14, 1);
            arg0->unk14 = 0;
        } else {
            glDeleteTexturesEXT(1, arg0 + 0xC);
            arg0->unkC = 0;
        }
        var_ra = sp8;
    }
    temp_a2 = arg0->unk1AC;
    sp8 = var_ra;
    if (temp_a2 != NULL) {
        free(temp_a2->unk14);
        free(arg0->unk1AC);
    }
    free(arg0);
}

void verifyImage(u16 *arg0) {
    s32 sp8;
    s32 sp4;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    u16 *temp_v0_3;

    temp_s2 = arg0->unk2C;
    temp_s1 = arg0->unk28;
    temp_s3 = arg0->unk24;
    temp_v0 = __iglooGetGraphicsType();
    var_a0 = temp_s3;
    if (arg0->unk1C != 2) {
        sp8 = temp_s2;
        sp4 = temp_s1;
        goto block_2;
    }
    switch (temp_v0) {                              /* irregular */
    default:
        gl_g_texdef3d(arg0, (s64) temp_s3, (s64) temp_s1, (s64) temp_s2);
        break;
    case 3:
    case 4:
        if ((*(void **)0x1004)->unk14->unk10 != 0) {
            gl_g_texdef3d(arg0, (s64) temp_s3, (s64) temp_s1, (s64) temp_s2);
        } else {
            gl_g_texdef3d(arg0, (s64) temp_s3, (s64) temp_s1, (s64) temp_s2);
        }
        break;
    case 5:
        gl_g_texdef3d(arg0, (s64) temp_s3, (s64) temp_s1, (s64) temp_s2);
        break;
    }
    var_a0 = subroutine_arg0;
    if (temp_s3 == var_a0) {
block_2:
        if ((sp4 != temp_s1) || (sp8 != temp_s2) || ((temp_v0_2 = arg0->unk20, (temp_v0_2 != 4)) && (temp_v0_2 != 1))) {
            goto block_6;
        }
        return;
    }
block_6:
    if (arg0->unk80 == 0x710) {
        if (arg0->unk18 != NULL) {
            temp_v0_3 = gl_limgalloc(var_a0, sp4, arg0->unk20);
            gl_limgzoom(arg0->unk18, temp_v0_3, arg0->unk24, arg0->unk28);
            if (arg0->unk1A8 != 0) {
                gl_free(arg0->unk18, &sub_0f020000 + 0x5738);
            }
            arg0->unk18 = temp_v0_3;
            var_a0 = subroutine_arg0;
        }
        arg0->unk24 = var_a0;
        arg0->unk28 = sp4;
        arg0->unk78 = (s32) (subroutine_arg0 - 1);
        arg0->unk1A8 = 1;
        arg0->unk7C = (s32) (sp4 - 1);
    } else {
        gl_ErrorHandler(0x5B, 2, &sub_0f020000 + 0x5638);
    }
}

void __iglooProxyQueryAllMipMapLevels(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 sp10;
    s32 sp4;
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a0;
    s32 var_a1;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;

    var_s2 = arg0;
    var_s1 = arg1;
    var_s0 = 0;
    if ((arg0 >= 2) || (var_s1 >= 2)) {
        var_s4 = arg2 * 2;
loop_5:
        sp4 = 0;
        glTexImage2D(0x8064, var_s0, arg3, var_s4 + var_s2);
        glGetTexLevelParameteriv(0x8064, var_s0, 0x1000, &sp10);
        if (sp10 != 0) {
            var_s0 += 1;
            temp_a1 = (s32) (((u32) var_s2 >> 0x1F) + var_s2) >> 1;
            temp_a2 = (s32) (((u32) var_s1 >> 0x1F) + var_s1) >> 1;
            if (temp_a1 >= 2) {
                var_a0 = temp_a1;
            } else {
                var_a0 = 1;
            }
            var_s2 = var_a0;
            if (temp_a2 >= 2) {
                var_a1 = temp_a2;
            } else {
                var_a1 = 1;
            }
            var_s1 = var_a1;
            if (var_a0 >= 2) {
                goto loop_5;
            }
            if (var_s1 < 2) {
                goto block_14;
            }
            goto loop_5;
        }
        return;
    }
    var_s4 = arg2 * 2;
block_14:
    sp4 = 0;
    glTexImage2D(0x8064, var_s0, arg3, var_s4 + 1);
    glGetTexLevelParameteriv(0x8064, var_s0, 0x1000, &sp10);
    if (sp10 != 0) {

    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74], gap at: 0x18. */
void compute_new_image_sizeRE(void *arg0, u16 *arg1, u16 *arg2, u16 *arg3) {
    s32 *temp_s7;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_s0;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_s0;
    s32 var_s2;
    s32 var_s6;
    s32 var_s8;
    s32 var_t0;
    s32 var_v0;
    s64 temp_a1;
    u32 temp_at;

    unksp48 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s7 = M2C_ERROR(/* Read from unset register $a5 */);
    gl_g_texdef3d(arg1);
    var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_texdef3d(arg2);
    unksp28 = M2C_ERROR(/* Read from unset register $a6 */);
    var_s2 = M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_texdef3d(arg3);
    temp_a1 = M2C_ERROR(/* Read from unset register $v0 */);
    unksp20 = M2C_ERROR(/* Read from unset register $v0 */);
    var_s6 = 1 << var_s0;
    temp_a0 = var_s6 * 2;
    var_s8 = 1 << var_s2;
    temp_v0 = var_s8 * 2;
    if ((temp_a0 - arg1) < (arg1 - var_s6)) {
        var_s6 = temp_a0;
        var_s0 += 1;
    }
    if ((temp_v0 - arg2) < (arg2 - var_s8)) {
        var_s8 = temp_v0;
        var_s2 += 1;
    }
    unksp18 = 1 << temp_a1;
    temp_s4 = var_s0 + var_s2 + temp_a1;
    gl_g_texdef3d(arg0->unk30, temp_a1);
    temp_a1_2 = arg0->unk84;
    temp_a2 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_a3 = M2C_ERROR(/* Read from unset register $v0 */);
    if (temp_a1_2 >= 0x650) {
        if (temp_a1_2 < 0x651) {
            goto block_6;
        }
        if (temp_a1_2 >= 0x680) {
            if (temp_a1_2 >= 0x681) {
                var_a1 = subroutine_arg0;
                if (temp_a1_2 == 0x690) {
                    goto block_37;
                }
            } else {
                goto block_44;
            }
        } else if (temp_a1_2 >= 0x670) {
            var_a1 = subroutine_arg0;
            if (temp_a1_2 < 0x671) {
block_44:
                var_a1 = 2;
            }
        } else {
            var_a1 = subroutine_arg0;
            if (temp_a1_2 == 0x660) {
block_6:
                var_a1 = 1;
            }
        }
    } else if (temp_a1_2 >= 0x630) {
        if ((temp_a1_2 < 0x631) || (var_a1 = subroutine_arg0, (temp_a1_2 == 0x640))) {
            goto block_37;
        }
    } else if (temp_a1_2 >= 0x620) {
        var_a1 = subroutine_arg0;
        if (temp_a1_2 < 0x621) {
            goto block_37;
        }
    } else {
        var_a1 = subroutine_arg0;
        if (temp_a1_2 == 0x610) {
block_37:
            var_a1 = 0;
        }
    }
    var_a0 = (M2C_ERROR(/* Read from unset register $v0 */) + M2C_ERROR(/* Read from unset register $v0 */)) - var_a1;
    if ((arg0->unk38 == 0x240) || (arg0->unk3C == 0x240) || (temp_a1_3 = arg0->unk34, (temp_a1_3 == 0x121)) || (temp_a1_3 == 0x122) || (temp_a1_3 == 0x123) || (temp_a1_3 == 0x124) || (temp_a1_3 == 0x280) || (var_t0 = var_s2 < temp_a2, (temp_a1_3 == 0x120))) {
        var_a0 -= 1;
        var_t0 = var_s2 < temp_a2;
    }
    temp_at = temp_s4 - var_a0;
    if (var_a0 >= temp_s4) {
        if (var_s0 < M2C_ERROR(/* Read from unset register $v0 */)) {
            var_a0_2 = 1 << var_s0;
        } else {
            var_a0_2 = 1 << M2C_ERROR(/* Read from unset register $v0 */);
        }
        if (var_t0 != 0) {
            var_v0 = 1 << var_s2;
        } else {
            var_v0 = 1 << temp_a2;
        }
        if (unksp20 < temp_a3) {
            var_a1_2 = 1 << unksp20;
        } else {
            var_a1_2 = 1 << temp_a3;
        }
        *unksp48 = var_a0_2;
        *temp_s7 = var_v0;
        *unksp28 = var_a1_2;
        return;
    }
    temp_v1 = (s32) ((temp_at >> 0x1F) + temp_at) >> 1;
    temp_s0 = var_s0 - temp_v1;
    temp_s2 = var_s2 - (temp_at - temp_v1);
    if (temp_s0 >= 0) {
        if (temp_s2 >= 0) {
            if (temp_a2 < temp_s2) {
                temp_v0_2 = 1 << (var_a0 - temp_a2);
                if (temp_v0_2 < var_s6) {
                    var_a0_3 = temp_v0_2;
                } else {
                    var_a0_3 = var_s6;
                }
                *unksp48 = var_a0_3;
                *temp_s7 = 1 << temp_a2;
                *unksp28 = (s32) unksp18;
                return;
            }
            if (M2C_ERROR(/* Read from unset register $v0 */) < temp_s0) {
                temp_a1_4 = 1 << (var_a0 - M2C_ERROR(/* Read from unset register $v0 */));
                if (temp_a1_4 < var_s8) {
                    var_a0_4 = temp_a1_4;
                } else {
                    var_a0_4 = var_s8;
                }
                *unksp48 = (s32) (1 << M2C_ERROR(/* Read from unset register $v0 */));
                *temp_s7 = var_a0_4;
                *unksp28 = (s32) unksp18;
                return;
            }
            *unksp48 = (s32) (1 << temp_s0);
            *temp_s7 = 1 << temp_s2;
            *unksp28 = (s32) unksp18;
            return;
        }
        if (var_s6 < var_s8) {
            var_a1_3 = 1 << (var_a0 - M2C_ERROR(/* Read from unset register $v0 */));
        } else {
            var_a1_3 = var_s8;
        }
        *unksp48 = (s32) (1 << M2C_ERROR(/* Read from unset register $v0 */));
        *temp_s7 = var_a1_3;
        *unksp28 = (s32) unksp18;
        return;
    }
    temp_v0_3 = 1 << (var_a0 - temp_a2);
    if (temp_v0_3 < var_s6) {
        var_a0_5 = temp_v0_3;
    } else {
        var_a0_5 = var_s6;
    }
    *unksp48 = var_a0_5;
    *temp_s7 = 1 << temp_a2;
    *unksp28 = (s32) unksp18;
}

void __iglooDoMipMap(void *arg0) {
    s32 temp_a2;

    temp_a2 = arg0->unk34;
    if (arg0->unk88 != 0xF00) {
        if (arg0->unk1C != 3) {
            if ((arg0->unk38 != 0x240) && (arg0->unk3C != 0x240) && (temp_a2 != 0x121) && (temp_a2 != 0x122) && (temp_a2 != 0x123) && (temp_a2 != 0x124) && (temp_a2 != 0x280) && (temp_a2 != 0x120)) {

            }
        }
    }
}

void __iglooNeedsBorder(void *arg0) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;

    temp_v0 = __iglooGetGraphicsType();
    if (temp_v0 != 8) {
        if (temp_v0 != 2) {
            if (arg0->unk18 != 0) {
                if (arg0->unk1C != 3) {
                    temp_v0_2 = arg0->unk54;
                    if ((temp_v0_2 != 0x303) && (temp_v0_2 != 0x302)) {
                        temp_v0_3 = arg0->unk58;
                        if ((temp_v0_3 != 0x303) && (temp_v0_3 != 0x302)) {
                            return;
                        }
                    }
                    if (subroutine_arg0->unk2F4C != 0) {

                    }
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x48, 0x4c, 0x58, 0x5c, 0x60, 0x64, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0xb8, 0xbc, 0xd0, 0xd4], gap at: 0x70. */
void compute_new_image_size(u16 *arg0, u16 *arg1, u16 *arg2, u16 *arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 sp18;
    s32 sp14;
    ? *sp10;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_lo;
    s32 temp_s3;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s5;
    s32 var_v0;
    s64 temp_at;
    s64 var_a0;
    s64 var_a0_3;

    unksp50 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp68 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_v0 = __iglooGetGraphicsType();
    unksp90 = 0;
    gl_g_texdef3d(arg1);
    unksp88 = (s64) temp_v0;
    var_s5 = M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_texdef3d(arg2);
    var_s2 = M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_texdef3d(arg3);
    var_s1 = 1 << var_s5;
    temp_a0 = var_s1 * 2;
    var_s3 = 1 << var_s2;
    if ((temp_a0 - arg1) < (arg1 - var_s1)) {
        var_s1 = temp_a0;
        var_s5 += 1;
    }
    temp_a0_2 = var_s3 * 2;
    if ((temp_a0_2 - arg2) < (arg2 - var_s3)) {
        var_s3 = temp_a0_2;
        var_s2 += 1;
    }
    var_a0 = 0;
    if ((arg0->unk38 != 0x240) && (arg0->unk3C != 0x240) && (temp_a1 = arg0->unk34, (temp_a1 != 0x121)) && (temp_a1 != 0x122) && (temp_a1 != 0x123) && (temp_a1 != 0x124) && (temp_a1 != 0x280) && (temp_a1 != 0x120)) {

    } else if (arg0->unk1C == 2) {
        var_a0 = 1;
    }
    if (arg0->unk80 != 0x710) {
        unksp70 = var_a0;
        unksp80 = 0x1403;
    } else {
        unksp70 = var_a0;
        unksp80 = 0x1401;
    }
    SetOglFormatAndComps(arg0->unk20, arg0->unk84, &sp10, &sp14);
    gl_g_texdef3d(arg0);
    sp40 = M2C_ERROR(/* Read from unset register $v0 */);
    if (arg0->unk1C == 2) {
        if (unksp70 != 0) {
            temp_at = var_s3 < var_s1;
            unksp78 = temp_at;
            if (temp_at != 0) {
                M2C_TRAP_IF(var_s3 == 0);
                var_s0 = var_s2;
                unkspC0 = (s64) (var_s1 / var_s3);
            } else {
                M2C_TRAP_IF(var_s1 == 0);
                var_s0 = var_s5;
                unkspC0 = (s64) (var_s3 / var_s1);
            }
            sp18 = 0;
            temp_s3 = sp40 * 2;
            sp28 = temp_s3 + unkspC0;
loop_21:
            if ((unksp88 != 3) && (unksp88 != 4)) {
                glTexImage2D(0x8064, var_s0, sp14, temp_s3 + 1);
                glGetTexLevelParameteriv(0x8064, var_s0, 0x1000, &sp18);
            } else {
                temp_a0_3 = 1 << var_s0;
                gl_g_texdef3d((u16 *) temp_a0_3, temp_a0_3 * unkspC0, sp40, (s64) sp14);
                sp18 = M2C_ERROR(/* Read from unset register $v0 */);
            }
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                var_s0 -= 1;
                unksp90 = 1;
                if ((M2C_ERROR(/* Read from unset register $v0 */) == 0) && (var_s0 > 0)) {
                    goto loop_21;
                }
            }
            temp_a0_4 = 1 << var_s0;
            temp_lo = temp_a0_4 * unkspC0;
            var_s3 = temp_a0_4;
            if (unksp78 != 0) {
                var_s1 = temp_lo;
            } else {
                var_s1 = temp_a0_4;
                var_s3 = temp_lo;
            }
        } else {
            sp38 = (s64) var_s1;
            sp30 = (s64) var_s3;
            sp18 = 0;
            sp20 = M2C_ERROR(/* Read from unset register $v0 */) * 2;
loop_52:
            glTexImage2D(0x8064, 0, sp14, sp20 + sp38);
            glGetTexLevelParameteriv(0x8064, 0, 0x1000, &sp18);
            var_s1 = (s32) sp38;
            if (sp18 == 0) {
                temp_a1_2 = (s32) (((u32) sp38 >> 0x1F) + sp38) >> 1;
                var_a0_2 = 1;
                if (temp_a1_2 >= 2) {
                    var_a0_2 = temp_a1_2;
                }
                temp_a1_3 = (s32) (((u32) sp30 >> 0x1F) + sp30) >> 1;
                sp38 = (s64) var_a0_2;
                if (temp_a1_3 >= 2) {
                    var_a0_3 = (s64) temp_a1_3;
                } else {
                    var_a0_3 = 1;
                }
                sp30 = var_a0_3;
                unksp90 = 1;
                if ((sp18 != 0) || (sp38 < 2) || (sp30 < 2)) {
                    var_s1 = (s32) sp38;
                } else {
                    goto loop_52;
                }
            }
            var_s3 = (s32) sp30;
        }
        if (unksp90 == 1) {
            if (var_s3 < 0x201) {
                if (var_s1 >= 0x201) {
                    goto loop_40;
                }
            } else {
loop_40:
                var_v0 = 1;
                do {
                    if (var_s3 >= 3) {
                        var_v0 = (s32) (((u32) var_s3 >> 0x1F) + var_s3) >> 1;
                    }
                    var_s3 = var_v0;
                    if (var_s1 >= 3) {
                        var_a0_4 = (s32) (((u32) var_s1 >> 0x1F) + var_s1) >> 1;
                    } else {
                        var_a0_4 = 1;
                    }
                    var_s1 = var_a0_4;
                    if (var_v0 >= 0x201) {
                        goto loop_40;
                    }
                    var_v0 = 1;
                } while (var_s1 >= 0x201);
            }
        }
    } else {
        sp18 = 0;
        if (__iglooIsExtensionSupported(0xC) == 1) {
            glTexImage3DEXT(0x8070, 0, sp14, (s64) var_s1);
            glGetTexLevelParameteriv(0x8070, 0, 0x1000, &sp18);
        }
    }
    *(s32 *) unksp50 = var_s1;
    *M2C_ERROR(/* Read from unset register $a5 */) = var_s3;
    *unksp68 = (s32) (1 << M2C_ERROR(/* Read from unset register $v0 */));
    glGetError(unksp68, (s32 *) unksp50);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x18, 0x1c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x28. */
void compute_new_image_sizeCI(u16 *arg0, u16 *arg1, u16 *arg2, u16 *arg3) {
    s64 sp60;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1_2;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_at;
    s32 var_at_2;
    s32 var_s4;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a1;
    s64 temp_a2;
    s64 var_s1;

    unksp20 = M2C_ERROR(/* Read from unset register $a5 */);
    gl_g_texdef3d(arg1);
    gl_g_texdef3d(arg2);
    sp60 = M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_texdef3d(arg3);
    temp_a1 = M2C_ERROR(/* Read from unset register $v0 */);
    var_s1 = 1 << M2C_ERROR(/* Read from unset register $v0 */);
    temp_a2 = var_s1 * 2;
    if ((temp_a2 - arg1) < (arg1 - var_s1)) {
        var_s1 = temp_a2;
    }
    var_s5 = 1 << temp_a1;
    var_s4 = 1 << sp60;
    temp_v0 = var_s4 * 2;
    if ((temp_v0 - arg2) < (arg2 - var_s4)) {
        var_s4 = temp_v0;
    }
    if ((arg0->unk38 != 0x240) && (arg0->unk3C != 0x240) && (temp_a0 = arg0->unk34, (temp_a0 != 0x121)) && (temp_a0 != 0x122) && (temp_a0 != 0x123) && (temp_a0 != 0x124) && (temp_a0 != 0x280) && (temp_a0 != 0x120)) {
        unksp10 = 0;
    } else {
        unksp10 = 0;
        if (arg0->unk1C == 2) {
            unksp10 = 1;
        }
    }
    gl_g_texdef3d(arg0, temp_a1, temp_a2);
    temp_a1_2 = M2C_ERROR(/* Read from unset register $v0 */);
    unksp28 = M2C_ERROR(/* Read from unset register $v0 */);
    if (arg0->unk1C == 2) {
        temp_a0_2 = temp_a1_2 * 2;
        var_a2 = temp_a0_2 + var_s4;
        if (unksp10 != 0) {
            var_v0 = 0x40000;
        } else {
            var_v0 = 0x100000;
        }
        if (var_v0 < ((temp_a0_2 + var_s1) * var_a2)) {
            var_at = var_s1 < 2;
loop_28:
            if (var_at == 0) {
                var_s1 = (s64) ((s32) (((u32) var_s1 >> 0x1F) + var_s1) >> 1);
                if (var_s4 >= 2) {
                    var_s4 = (s32) (((u32) var_s4 >> 0x1F) + var_s4) >> 1;
                } else {
                    var_s4 = 1;
                }
                var_a2 = temp_a0_2 + var_s4;
            } else {
                var_s1 = 1;
            }
            var_at = var_s1 < 2;
            if (var_v0 < ((temp_a0_2 + var_s1) * var_a2)) {
                goto loop_28;
            }
        }
    } else if (__iglooIsExtensionSupported(0xC, temp_a1_2) == 1) {
        if (unksp10 != 0) {
            var_v0_2 = 0x400000;
        } else {
            var_v0_2 = 0x800000;
        }
        temp_a0_3 = unksp28 * 2;
        var_a1 = temp_a0_3 + var_s4;
        var_a2_2 = temp_a0_3 + var_s5;
        if (var_v0_2 < ((temp_a0_3 + var_s1) * var_a1 * var_a2_2)) {
            var_at_2 = var_s1 < 2;
loop_35:
            if (var_at_2 == 0) {
                var_s1 = (s64) ((s32) (((u32) var_s1 >> 0x1F) + var_s1) >> 1);
                if (var_s4 >= 2) {
                    var_s4 = (s32) (((u32) var_s4 >> 0x1F) + var_s4) >> 1;
                    if (var_s5 >= 2) {
                        var_s5 = (s32) (((u32) var_s5 >> 0x1F) + var_s5) >> 1;
                    } else {
                        var_s5 = 1;
                    }
                    var_a2_2 = temp_a0_3 + var_s5;
                } else {
                    var_s4 = 1;
                }
                var_a1 = temp_a0_3 + var_s4;
            } else {
                var_s1 = 1;
            }
            var_at_2 = var_s1 < 2;
            if (var_v0_2 < ((temp_a0_3 + var_s1) * var_a1 * var_a2_2)) {
                goto loop_35;
            }
        }
    }
    *(s32 *) subroutine_arg0 = (s32) var_s1;
    *(s32 *) unksp20 = var_s4;
    *M2C_ERROR(/* Read from unset register $a6 */) = var_s5;
    glGetError();
}

void To4Texel(void *arg0) {
    s64 sp150;
    s64 sp148;
    s64 sp140;
    ? spF0;
    ? spA0;
    ? sp50;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v1_7;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_t1_2;
    s64 temp_v0_7;
    s64 temp_v1_8;
    s64 var_t8;
    s64 var_t8_2;
    s64 var_t8_3;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a0_3;
    u16 temp_a0_4;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v0_4;
    u16 temp_v0_5;
    u16 temp_v0_6;
    u16 temp_v1;
    u32 temp_a0_5;
    u32 temp_at;
    u8 temp_at_2;
    u8 temp_at_3;
    u8 temp_at_4;
    u8 temp_at_5;
    u8 temp_at_6;
    u8 temp_v1_2;
    u8 temp_v1_3;
    u8 temp_v1_4;
    u8 temp_v1_5;
    u8 temp_v1_6;
    void *var_a3;
    void *var_a4;
    void *var_t1;

    temp_a6 = arg0->unk2C;
    temp_t8 = arg0->unk28;
    temp_t3 = arg0->unk24;
    temp_a2 = arg0->unk20;
    temp_a5 = arg0->unk80;
    var_t1 = arg0->unk18;
    var_a3 = arg0->unk1AC->unk14;
    var_a4 = var_t1;
    if (temp_a5 != 0x710) {
        if (temp_a5 != 0x720) {
            if (temp_a5 == 0x730) {
                sp150 = (s64) temp_a6;
                var_t1_2 = temp_a6;
                if (temp_a6 != 0) {
                    temp_lo = temp_a2 * temp_t3;
                    sp140 = (s64) temp_t8;
loop_5:
                    var_t8 = sp140;
                    if (sp140 != 0) {
loop_6:
                        var_a1 = temp_t3;
                        if (temp_t3 != 0) {
loop_10:
                            if (temp_a2 == 4) {
                                temp_a0 = var_a4->unk0;
                                var_a3->unk0 = (s16) ((temp_a0 * 0x10) | ((s32) (temp_a0 & 0xF00) >> 8));
                                temp_v0 = var_a4->unk2;
                                var_a3->unk2 = (s16) ((temp_v0 * 0x10) | ((s32) (temp_v0 & 0xF00) >> 8));
                                temp_a0_2 = var_a4->unk4;
                                var_a3->unk4 = (s16) ((temp_a0_2 * 0x10) | ((s32) (temp_a0_2 & 0xF00) >> 8));
                                temp_v0_2 = var_a4->unk6;
                                var_a4 += 8;
                                var_a3->unk6 = (s16) ((temp_v0_2 * 0x10) | ((s32) (temp_v0_2 & 0xF00) >> 8));
                                goto block_9;
                            }
                            if (temp_a2 == 3) {
                                temp_v0_3 = var_a4->unk0;
                                var_a3->unk4 = (s16) ((temp_v0_3 * 0x10) | ((s32) (temp_v0_3 & 0xF00) >> 8));
                                temp_a0_3 = var_a4->unk2;
                                var_a3->unk2 = (s16) ((temp_a0_3 * 0x10) | ((s32) (temp_a0_3 & 0xF00) >> 8));
                                temp_v0_4 = var_a4->unk4;
                                var_a4 += 6;
                                var_a3->unk6 = 0xFFFF;
                                var_a3->unk0 = (s16) ((temp_v0_4 * 0x10) | ((s32) (temp_v0_4 & 0xF00) >> 8));
                                goto block_9;
                            }
                            if (temp_a2 == 2) {
                                temp_v0_5 = var_a4->unk0;
                                var_a3->unk2 = (s16) ((temp_v0_5 * 0x10) | ((s32) (temp_v0_5 & 0xF00) >> 8));
                                var_a4 += 4;
                                temp_a0_4 = var_a4->unk-2;
                                var_a3->unk6 = 0;
                                var_a3->unk4 = 0;
                                var_a3->unk0 = (s16) ((temp_a0_4 * 0x10) | ((s32) (temp_a0_4 & 0xF00) >> 8));
                                goto block_9;
                            }
                            var_a4 += 2;
                            if (temp_a2 != 1) {
                                sprintf(&spA0, &sub_0f020000 + 0x5748, temp_a2, var_a3);
                                gl_ErrorHandler(0x5B, 2, &spA0);
                                return;
                            }
                            var_a3->unk6 = 0;
                            var_a3->unk4 = 0;
                            var_a3->unk2 = 0;
block_9:
                            var_a1 -= 1;
                            var_a3 += 8;
                            if (var_a1 != 0) {
                                goto loop_10;
                            }
                            goto block_24;
                        }
block_24:
                        var_t8 -= 1;
                        temp_a0_5 = temp_lo + 1;
                        var_a4 += ((((s32) ((temp_a0_5 >> 0x1F) + temp_a0_5) >> 1) * 2) - temp_lo) * 2;
                        if (var_t8 == 0) {
                            goto block_25;
                        }
                        goto loop_6;
                    }
block_25:
                    var_t1_2 -= 1;
                    if (var_t1_2 == 0) {

                    } else {
                        goto loop_5;
                    }
                }
            } else {
                sprintf(&spF0, &sub_0f020000 + 0x5790, temp_a2, var_a3);
                gl_ErrorHandler(0x5B, 2, &spF0);
            }
        } else {
            sp150 = (s64) temp_a6;
            if (temp_a6 != 0) {
                temp_lo_2 = temp_a2 * temp_t3;
                sp140 = (s64) temp_t8;
                sp148 = (s64) temp_a6;
loop_55:
                var_t8_2 = sp140;
                if (sp140 != 0) {
loop_56:
                    var_a1_2 = temp_t3;
                    if (temp_t3 != 0) {
loop_60:
                        if (temp_a2 == 4) {
                            var_a3->unk0 = (u16) var_a4->unk0;
                            var_a3->unk2 = (u16) var_a4->unk2;
                            var_a3->unk4 = (u16) var_a4->unk4;
                            temp_v0_6 = var_a4->unk6;
                            var_a4 += 8;
                            var_a3->unk6 = temp_v0_6;
                            goto block_59;
                        }
                        if (temp_a2 == 3) {
                            var_a3->unk6 = 0xFFFFU;
                            var_a3->unk4 = (u16) var_a4->unk0;
                            var_a3->unk2 = (u16) var_a4->unk2;
                            temp_v1 = var_a4->unk4;
                            var_a4 += 6;
                            var_a3->unk0 = temp_v1;
                            goto block_59;
                        }
                        if (temp_a2 == 2) {
                            var_a3->unk2 = (u16) var_a4->unk0;
                            var_a4 += 4;
                            var_a3->unk6 = 0U;
                            var_a3->unk4 = 0U;
                            var_a3->unk0 = (u16) var_a4->unk-2;
                            goto block_59;
                        }
                        var_a4 += 2;
                        if (temp_a2 == 1) {
                            var_a3->unk6 = 0U;
                            var_a3->unk4 = 0U;
                            var_a3->unk2 = 0U;
                            var_a3->unk0 = (u16) var_a4->unk-2;
block_59:
                            var_a1_2 -= 1;
                            var_a3 += 8;
                            if (var_a1_2 != 0) {
                                goto loop_60;
                            }
                            goto block_73;
                        }
                        sprintf(&sp50, &sub_0f020000 + 0x5748, temp_a2, var_a3);
                        gl_ErrorHandler(0x5B, 2, &sp50);
                        return;
                    }
block_73:
                    var_t8_2 -= 1;
                    temp_at = temp_lo_2 + 1;
                    var_a4 += ((((s32) ((temp_at >> 0x1F) + temp_at) >> 1) * 2) - temp_lo_2) * 2;
                    if (var_t8_2 == 0) {
                        goto block_74;
                    }
                    goto loop_56;
                }
block_74:
                temp_v0_7 = sp148 - 1;
                sp148 = temp_v0_7;
                if (temp_v0_7 == 0) {

                } else {
                    goto loop_55;
                }
            }
        }
    } else {
        sp150 = (s64) temp_a6;
        if (temp_a6 != 0) {
            temp_lo_3 = temp_a2 * temp_t3;
            sp140 = (s64) temp_t8;
            sp148 = (s64) temp_a6;
loop_31:
            var_t8_3 = sp140;
            if (sp140 != 0) {
loop_32:
                var_a1_3 = temp_t3;
                if (temp_t3 != 0) {
loop_36:
                    if (temp_a2 == 4) {
                        temp_at_2 = var_t1->unk0;
                        var_a3->unk0 = (s16) ((temp_at_2 << 8) | temp_at_2);
                        temp_v1_2 = var_t1->unk1;
                        var_a3->unk2 = (s16) ((temp_v1_2 << 8) | temp_v1_2);
                        temp_at_3 = var_t1->unk2;
                        var_a3->unk4 = (s16) ((temp_at_3 << 8) | temp_at_3);
                        temp_v1_3 = var_t1->unk3;
                        var_t1 += 4;
                        var_a3->unk6 = (s16) ((temp_v1_3 << 8) | temp_v1_3);
                        goto block_35;
                    }
                    if (temp_a2 == 3) {
                        temp_at_4 = var_t1->unk0;
                        var_a3->unk0 = (s16) ((temp_at_4 << 8) | temp_at_4);
                        temp_v1_4 = var_t1->unk1;
                        var_a3->unk2 = (s16) ((temp_v1_4 << 8) | temp_v1_4);
                        temp_at_5 = var_t1->unk2;
                        var_t1 += 3;
                        var_a3->unk6 = 0xFFFF;
                        var_a3->unk4 = (s16) ((temp_at_5 << 8) | temp_at_5);
                        goto block_35;
                    }
                    if (temp_a2 == 2) {
                        temp_at_6 = var_t1->unk0;
                        var_a3->unk0 = (s16) ((temp_at_6 << 8) | temp_at_6);
                        var_t1 += 2;
                        temp_v1_5 = var_t1->unk-1;
                        var_a3->unk6 = 0;
                        var_a3->unk4 = 0;
                        var_a3->unk2 = (s16) ((temp_v1_5 << 8) | temp_v1_5);
                        goto block_35;
                    }
                    var_t1 += 1;
                    if (temp_a2 == 1) {
                        temp_v1_6 = var_t1->unk-1;
                        var_a3->unk6 = 0;
                        var_a3->unk4 = 0;
                        var_a3->unk2 = 0;
                        var_a3->unk0 = (s16) ((temp_v1_6 << 8) | temp_v1_6);
block_35:
                        var_a1_3 -= 1;
                        var_a3 += 8;
                        if (var_a1_3 != 0) {
                            goto loop_36;
                        }
                        goto block_49;
                    }
                    sprintf(sp, &sub_0f020000 + 0x5748, temp_a2, var_a3);
                    gl_ErrorHandler(0x5B, 2, sp);
                    return;
                }
block_49:
                var_t8_3 -= 1;
                temp_v1_7 = temp_lo_3 + 3;
                var_t1 += (((s32) (((u32) (temp_v1_7 >> 1) >> 0x1E) + temp_v1_7) >> 2) * 4) - temp_lo_3;
                if (var_t8_3 == 0) {
                    goto block_50;
                }
                goto loop_32;
            }
block_50:
            temp_v1_8 = sp148 - 1;
            sp148 = temp_v1_8;
            if (temp_v1_8 == 0) {

            } else {
                goto loop_31;
            }
        }
    }
}

void extractFrom4Texel(s32 arg0, s32 arg1, s32 arg2, u16 *arg3) {
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a2_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t1_3;
    u16 *var_a1_4;
    u16 *var_a2_3;
    u16 *var_a3;
    u16 *var_a3_2;
    u16 *var_a3_5;
    u16 temp_a5;
    u16 temp_a5_2;
    u16 temp_a5_3;
    u16 temp_at;
    u16 temp_at_2;
    u16 temp_v0;
    u16 temp_v1;
    void *temp_a4;
    void *var_a2;
    void *var_a2_4;
    void *var_a3_3;
    void *var_a3_4;
    void *var_t0;

    var_a3 = arg3;
    switch (arg0) {                                 /* irregular */
    case 4:
        temp_lo = arg1 * arg2;
        var_a6 = 0;
        if (temp_lo > 0) {
            var_a1 = temp_lo & 3;
            var_t1 = 0;
            if (var_a1 != 0) {
                do {
                    *M2C_ERROR(/* Read from unset register $a4 */) = var_a3->unk0;
                    M2C_ERROR(/* Read from unset register $a4 */)->unk2 = (u16) var_a3->unk2;
                    temp_v0 = var_a3->unk4;
                    var_a6 += 1;
                    var_a3 += 8;
                    M2C_ERROR(/* Read from unset register $a4 */)->unk4 = temp_v0;
                    var_a1 -= 1;
                    (M2C_ERROR(/* Read from unset register $a4 */) + 8)->unk-2 = (u16) var_a3->unk-2;
                } while (var_a1 != 0);
                var_t1 = var_a6;
            }
            var_a2 = M2C_ERROR(/* Read from unset register $a4 */);
            if ((temp_lo >> 2) != 0) {
                var_a1_2 = var_t1;
                var_a3_2 = var_a3;
                do {
                    var_a2->unk0 = (u16) var_a3_2->unk0;
                    var_a2->unk2 = (u16) var_a3_2->unk2;
                    var_a2->unk4 = (u16) var_a3_2->unk4;
                    var_a2->unk6 = (u16) var_a3_2->unk6;
                    var_a2->unk8 = (u16) var_a3_2->unk8;
                    var_a2->unkA = (u16) var_a3_2->unkA;
                    var_a2->unkC = (u16) var_a3_2->unkC;
                    var_a2->unkE = (u16) var_a3_2->unkE;
                    var_a2->unk10 = (u16) var_a3_2->unk10;
                    var_a2->unk12 = (u16) var_a3_2->unk12;
                    var_a2->unk14 = (u16) var_a3_2->unk14;
                    var_a2->unk16 = (u16) var_a3_2->unk16;
                    var_a2->unk18 = (u16) var_a3_2->unk18;
                    var_a2->unk1A = (u16) var_a3_2->unk1A;
                    temp_v1 = var_a3_2->unk1C;
                    var_a3_2 += 0x20;
                    var_a2->unk1C = temp_v1;
                    var_a2 += 0x20;
                    var_a1_2 += 4;
                    var_a2->unk-2 = (u16) var_a3_2->unk-2;
                } while (temp_lo != var_a1_2);
            }
            return;
        }
        return;
    case 1:
        temp_lo_2 = arg1 * arg2;
        var_a6_2 = 0;
        if (temp_lo_2 > 0) {
            var_a1_3 = temp_lo_2 & 3;
            var_t1_2 = 0;
            if (var_a1_3 != 0) {
                do {
                    var_a6_2 += 1;
                    var_a3 += 8;
                    var_a1_3 -= 1;
                    (M2C_ERROR(/* Read from unset register $a4 */) + 2)->unk-2 = (u16) var_a3->unk-8;
                } while (var_a1_3 != 0);
                var_t1_2 = var_a6_2;
            }
            var_a1_4 = var_a3;
            if ((temp_lo_2 >> 2) != 0) {
                var_a2_2 = var_t1_2;
                var_a3_3 = M2C_ERROR(/* Read from unset register $a4 */);
                do {
                    var_a3_3->unk0 = (u16) var_a1_4->unk0;
                    var_a3_3->unk2 = (u16) var_a1_4->unk8;
                    temp_at = var_a1_4->unk10;
                    var_a1_4 += 0x20;
                    var_a3_3->unk4 = temp_at;
                    var_a3_3 += 8;
                    var_a2_2 += 4;
                    var_a3_3->unk-2 = (u16) var_a1_4->unk-8;
                } while (temp_lo_2 != var_a2_2);
            }
            return;
        }
        break;
    case 2:
        temp_lo_3 = arg1 * arg2;
        var_a6_3 = 0;
        if (temp_lo_3 > 0) {
            var_a1_5 = temp_lo_3 & 3;
            var_t0 = M2C_ERROR(/* Read from unset register $a4 */);
            if (var_a1_5 != 0) {
                do {
                    temp_at_2 = *var_a3;
                    var_a6_3 += 1;
                    var_a3 += 8;
                    *M2C_ERROR(/* Read from unset register $a4 */) = temp_at_2;
                    temp_a4 = M2C_ERROR(/* Read from unset register $a4 */) + 4;
                    var_a1_5 -= 1;
                    temp_a4->unk-2 = (u16) var_a3->unk-6;
                } while (var_a1_5 != 0);
                var_t0 = temp_a4;
            }
            if ((temp_lo_3 >> 2) != 0) {
                var_a1_6 = var_a6_3;
                var_a3_4 = var_t0;
                var_a2_3 = var_a3;
                do {
                    var_a3_4->unk0 = (u16) var_a2_3->unk0;
                    var_a3_4->unk2 = (u16) var_a2_3->unk2;
                    var_a3_4->unk4 = (u16) var_a2_3->unk8;
                    var_a3_4->unk6 = (u16) var_a2_3->unkA;
                    var_a3_4->unk8 = (u16) var_a2_3->unk10;
                    var_a3_4->unkA = (u16) var_a2_3->unk12;
                    temp_a5 = var_a2_3->unk18;
                    var_a2_3 += 0x20;
                    var_a3_4->unkC = temp_a5;
                    var_a3_4 += 0x10;
                    var_a1_6 += 4;
                    var_a3_4->unk-2 = (u16) var_a2_3->unk-6;
                } while (temp_lo_3 != var_a1_6);
            }
            return;
        }
        break;
    case 3:
        temp_lo_4 = arg1 * arg2;
        var_a6_4 = 0;
        if (temp_lo_4 > 0) {
            var_a1_7 = temp_lo_4 & 3;
            var_t1_3 = 0;
            if (var_a1_7 != 0) {
                do {
                    *M2C_ERROR(/* Read from unset register $a4 */) = var_a3->unk0;
                    temp_a5_2 = var_a3->unk2;
                    var_a6_4 += 1;
                    var_a3 += 8;
                    M2C_ERROR(/* Read from unset register $a4 */)->unk2 = temp_a5_2;
                    var_a1_7 -= 1;
                    (M2C_ERROR(/* Read from unset register $a4 */) + 6)->unk-2 = (u16) var_a3->unk-4;
                } while (var_a1_7 != 0);
                var_t1_3 = var_a6_4;
            }
            var_a2_4 = M2C_ERROR(/* Read from unset register $a4 */);
            if ((temp_lo_4 >> 2) != 0) {
                var_a1_8 = var_t1_3;
                var_a3_5 = var_a3;
                do {
                    var_a2_4->unk0 = (u16) var_a3_5->unk0;
                    var_a2_4->unk2 = (u16) var_a3_5->unk2;
                    var_a2_4->unk4 = (u16) var_a3_5->unk4;
                    var_a2_4->unk6 = (u16) var_a3_5->unk8;
                    var_a2_4->unk8 = (u16) var_a3_5->unkA;
                    var_a2_4->unkA = (u16) var_a3_5->unkC;
                    var_a2_4->unkC = (u16) var_a3_5->unk10;
                    var_a2_4->unkE = (u16) var_a3_5->unk12;
                    var_a2_4->unk10 = (u16) var_a3_5->unk14;
                    var_a2_4->unk12 = (u16) var_a3_5->unk18;
                    temp_a5_3 = var_a3_5->unk1A;
                    var_a3_5 += 0x20;
                    var_a2_4->unk14 = temp_a5_3;
                    var_a2_4 += 0x18;
                    var_a1_8 += 4;
                    var_a2_4->unk-2 = (u16) var_a3_5->unk-4;
                } while (temp_lo_4 != var_a1_8);
            }
            return;
        }
        break;
    }
}

void copyBCWholeRow(s32 arg0, u16 *arg1, s32 arg2, void *arg3) {
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a1_4;
    s32 var_a4;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a7;
    s32 var_v0;
    s32 var_v1;
    u16 *var_a0_6;
    u16 *var_a1;
    u16 *var_a1_2;
    u16 *var_a1_3;
    u16 *var_a1_5;

    var_a1 = arg1;
    var_a5 = arg2 & 3;
    switch (arg0) {                                 /* irregular */
    case 4:
        var_a0 = 0;
        if (arg2 > 0) {
            var_v0 = arg2 >> 1;
            if (arg2 & 1) {
                var_a1->unk0 = arg3->unk0;
                var_a1->unk2 = (u16) arg3->unk2;
                var_a1->unk4 = (u16) arg3->unk4;
                var_a0 = 1;
                var_a1 += 8;
                var_a1->unk-2 = (u16) arg3->unk6;
                var_v0 = arg2 >> 1;
            }
            if (var_v0 != 0) {
                var_a0_2 = var_a0;
                var_a1_2 = var_a1;
                do {
                    var_a1_2->unk0 = arg3->unk0;
                    var_a1_2->unk2 = (u16) arg3->unk2;
                    var_a1_2->unk4 = (u16) arg3->unk4;
                    var_a1_2->unk6 = (u16) arg3->unk6;
                    var_a1_2->unk8 = (u16) arg3->unk0;
                    var_a1_2->unkA = (u16) arg3->unk2;
                    var_a1_2->unkC = (u16) arg3->unk4;
                    var_a1_2 += 0x10;
                    var_a0_2 += 2;
                    var_a1_2->unk-2 = (u16) arg3->unk6;
                } while (arg2 != var_a0_2);
            }
            return;
        }
        return;
    case 1:
        var_a0_3 = 0;
        if (arg2 > 0) {
            var_a5_2 = arg2 & 3;
            var_a4 = arg2 >> 2;
            if (var_a5_2 != 0) {
                do {
                    var_a0_3 += 1;
                    var_a1 += 2;
                    var_a5_2 -= 1;
                    var_a1->unk-2 = (u16) arg3->unk0;
                } while (var_a5_2 != 0);
                var_a4 = arg2 >> 2;
            }
            if (var_a4 != 0) {
                var_a0_4 = var_a0_3;
                var_a1_3 = var_a1;
                do {
                    var_a1_3->unk0 = arg3->unk0;
                    var_a1_3->unk2 = (u16) arg3->unk0;
                    var_a1_3->unk4 = (u16) arg3->unk0;
                    var_a1_3 += 8;
                    var_a0_4 += 4;
                    var_a1_3->unk-2 = (u16) arg3->unk0;
                } while (arg2 != var_a0_4);
            }
            return;
        }
        break;
    case 2:
        var_a0_5 = 0;
        if (arg2 > 0) {
            var_a7 = 0;
            if (var_a5 != 0) {
                do {
                    var_a0_5 += 1;
                    *var_a1 = arg3->unk0;
                    var_a1 += 4;
                    var_a5 -= 1;
                    var_a1->unk-2 = (u16) arg3->unk2;
                } while (var_a5 != 0);
                var_a7 = var_a0_5;
            }
            if ((arg2 >> 2) != 0) {
                var_a1_4 = var_a7;
                var_a0_6 = var_a1;
                do {
                    var_a0_6->unk0 = arg3->unk0;
                    var_a0_6->unk2 = (u16) arg3->unk2;
                    var_a0_6->unk4 = (u16) arg3->unk0;
                    var_a0_6->unk6 = (u16) arg3->unk2;
                    var_a0_6->unk8 = (u16) arg3->unk0;
                    var_a0_6->unkA = (u16) arg3->unk2;
                    var_a0_6->unkC = (u16) arg3->unk0;
                    var_a0_6 += 0x10;
                    var_a1_4 += 4;
                    var_a0_6->unk-2 = (u16) arg3->unk2;
                } while (arg2 != var_a1_4);
            }
            return;
        }
        break;
    case 3:
        var_a0_7 = 0;
        if (arg2 > 0) {
            var_a5_3 = arg2 & 3;
            var_v1 = arg2 >> 2;
            if (var_a5_3 != 0) {
                do {
                    var_a1->unk0 = arg3->unk0;
                    var_a0_7 += 1;
                    var_a1->unk2 = (u16) arg3->unk2;
                    var_a1 += 6;
                    var_a5_3 -= 1;
                    var_a1->unk-2 = (u16) arg3->unk4;
                } while (var_a5_3 != 0);
                var_v1 = arg2 >> 2;
            }
            if (var_v1 != 0) {
                var_a0_8 = var_a0_7;
                var_a1_5 = var_a1;
                do {
                    var_a1_5->unk0 = arg3->unk0;
                    var_a1_5->unk2 = (u16) arg3->unk2;
                    var_a1_5->unk4 = (u16) arg3->unk4;
                    var_a1_5->unk6 = (u16) arg3->unk0;
                    var_a1_5->unk8 = (u16) arg3->unk2;
                    var_a1_5->unkA = (u16) arg3->unk4;
                    var_a1_5->unkC = (u16) arg3->unk0;
                    var_a1_5->unkE = (u16) arg3->unk2;
                    var_a1_5->unk10 = (u16) arg3->unk4;
                    var_a1_5->unk12 = (u16) arg3->unk0;
                    var_a1_5->unk14 = (u16) arg3->unk2;
                    var_a1_5 += 0x18;
                    var_a0_8 += 4;
                    var_a1_5->unk-2 = (u16) arg3->unk4;
                } while (arg2 != var_a0_8);
            }
            return;
        }
        break;
    }
}

void copyBCEdgesRow(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s32 temp_a6;
    s32 var_a5;
    s32 var_at;
    u16 var_at_2;
    void *var_a1;
    void *var_a2;

    var_a1 = arg1;
    var_a2 = arg2;
    temp_a6 = arg0->unk20;
    var_a5 = 0;
    if (temp_a6 != 1) {
        if (temp_a6 != 2) {
            if (temp_a6 != 3) {
                if (temp_a6 == 4) {
                    var_a1->unk0 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
                    var_a1->unk2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk2;
                    var_a1->unk4 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk4;
                    var_a1 += 8;
                    var_a1->unk-2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk6;
                }
            } else {
                var_a1->unk0 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
                var_a1->unk2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk2;
                var_a1 += 6;
                var_a1->unk-2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk4;
            }
        } else {
            var_a1->unk0 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
            var_a1 += 4;
            var_a1->unk-2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk2;
        }
    } else {
        var_a1 += 2;
        var_a1->unk-2 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
    }
    if (arg3 > 0) {
        var_at = arg3 >> 1;
        if (arg3 & 1) {
            if (temp_a6 == 1) {
                var_a1 += 2;
                var_a1->unk-2 = (u16) var_a2->unk0;
            } else if (temp_a6 == 2) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1 += 4;
                var_a1->unk-2 = (u16) var_a2->unk2;
            } else if (temp_a6 == 3) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1 += 6;
                var_a1->unk-2 = (u16) var_a2->unk4;
            } else if (temp_a6 == 4) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1->unk4 = (u16) var_a2->unk4;
                var_a1 += 8;
                var_a1->unk-2 = (u16) var_a2->unk6;
            }
            var_a5 = 1;
            var_a2 += 8;
            var_at = arg3 >> 1;
        }
        if (var_at != 0) {
loop_46:
            if (temp_a6 == 1) {
                var_at_2 = var_a2->unk0;
                var_a1 += 2;
                goto block_34;
            }
            if (temp_a6 == 2) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_at_2 = var_a2->unk2;
                var_a1 += 4;
block_34:
                var_a1->unk-2 = var_at_2;
                goto block_35;
            }
            if (temp_a6 == 3) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1 += 6;
                var_a1->unk-2 = (u16) var_a2->unk4;
                goto block_35;
            }
            if (temp_a6 == 4) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1->unk4 = (u16) var_a2->unk4;
                var_a1 += 8;
                var_a1->unk-2 = (u16) var_a2->unk6;
                if (temp_a6 == 1) {
                    goto block_57;
                }
                goto block_36;
            }
block_35:
            if (temp_a6 != 1) {
block_36:
                if (temp_a6 == 2) {
                    var_a1->unk0 = (u16) var_a2->unk8;
                    var_a1 += 4;
                    var_a1->unk-2 = (u16) var_a2->unkA;
                } else if (temp_a6 == 3) {
                    var_a1->unk0 = (u16) var_a2->unk8;
                    var_a1->unk2 = (u16) var_a2->unkA;
                    var_a1 += 6;
                    var_a1->unk-2 = (u16) var_a2->unkC;
                } else if (temp_a6 == 4) {
                    var_a1->unk0 = (u16) var_a2->unk8;
                    var_a1->unk2 = (u16) var_a2->unkA;
                    var_a1->unk4 = (u16) var_a2->unkC;
                    var_a1 += 8;
                    var_a1->unk-2 = (u16) var_a2->unkE;
                }
            } else {
block_57:
                var_a1 += 2;
                var_a1->unk-2 = (u16) var_a2->unk8;
            }
            var_a5 += 2;
            var_a2 += 0x10;
            if (arg3 != var_a5) {
                goto loop_46;
            }
        }
    }
    if (temp_a6 != 1) {
        if (temp_a6 == 2) {
            var_a1->unk0 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
            var_a1->unk2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk2;
            return;
        }
        if (temp_a6 == 3) {
            var_a1->unk0 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
            var_a1->unk2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk2;
            var_a1->unk4 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk4;
            return;
        }
        if (temp_a6 == 4) {
            var_a1->unk0 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
            var_a1->unk2 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk2;
            var_a1->unk4 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk4;
            var_a1->unk6 = (u16) M2C_ERROR(/* Read from unset register $a4 */)->unk6;
            return;
        }
        return;
    }
    var_a1->unk0 = (u16) *M2C_ERROR(/* Read from unset register $a4 */);
}

void copyFatRow(s32 arg0, void *arg1, void *arg2, s32 arg3) {
    s32 var_a5;
    s32 var_at;
    u16 var_at_2;
    void *temp_a2;
    void *var_a1;
    void *var_a2;

    var_a1 = arg1;
    var_a2 = arg2;
    switch (arg0) {                                 /* irregular */
    case 1:
        var_a1 += 2;
        var_a1->unk-2 = (u16) var_a2->unk0;
        break;
    case 2:
        var_a1->unk0 = (u16) var_a2->unk0;
        var_a1 += 4;
        var_a1->unk-2 = (u16) var_a2->unk2;
        break;
    case 3:
        var_a1->unk0 = (u16) var_a2->unk0;
        var_a1->unk2 = (u16) var_a2->unk2;
        var_a1 += 6;
        var_a1->unk-2 = (u16) var_a2->unk4;
        break;
    case 4:
        var_a1->unk0 = (u16) var_a2->unk0;
        var_a1->unk2 = (u16) var_a2->unk2;
        var_a1->unk4 = (u16) var_a2->unk4;
        var_a1 += 8;
        var_a1->unk-2 = (u16) var_a2->unk6;
        break;
    }
    var_a5 = 0;
    if (arg3 > 0) {
        var_at = arg3 >> 1;
        if (arg3 & 1) {
            if (arg0 == 1) {
                var_a1 += 2;
                var_a1->unk-2 = (u16) var_a2->unk0;
            } else if (arg0 == 2) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1 += 4;
                var_a1->unk-2 = (u16) var_a2->unk2;
            } else if (arg0 == 3) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1 += 6;
                var_a1->unk-2 = (u16) var_a2->unk4;
            } else if (arg0 == 4) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1->unk4 = (u16) var_a2->unk4;
                var_a1 += 8;
                var_a1->unk-2 = (u16) var_a2->unk6;
            }
            var_a5 = 1;
            var_a2 += 8;
            var_at = arg3 >> 1;
        }
        if (var_at != 0) {
loop_44:
            if (arg0 == 1) {
                var_at_2 = var_a2->unk0;
                var_a1 += 2;
                goto block_32;
            }
            if (arg0 == 2) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_at_2 = var_a2->unk2;
                var_a1 += 4;
block_32:
                var_a1->unk-2 = var_at_2;
            } else if (arg0 == 3) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1 += 6;
                var_a1->unk-2 = (u16) var_a2->unk4;
            } else if (arg0 == 4) {
                var_a1->unk0 = (u16) var_a2->unk0;
                var_a1->unk2 = (u16) var_a2->unk2;
                var_a1->unk4 = (u16) var_a2->unk4;
                var_a1 += 8;
                var_a1->unk-2 = (u16) var_a2->unk6;
            }
            var_a5 += 2;
            temp_a2 = var_a2 + 8;
            if (arg0 != 1) {
                if (arg0 == 2) {
                    var_a1->unk0 = (u16) var_a2->unk8;
                    var_a1 += 4;
                    var_a1->unk-2 = (u16) temp_a2->unk2;
                } else if (arg0 == 3) {
                    var_a1->unk0 = (u16) var_a2->unk8;
                    var_a1->unk2 = (u16) temp_a2->unk2;
                    var_a1 += 6;
                    var_a1->unk-2 = (u16) temp_a2->unk4;
                } else if (arg0 == 4) {
                    var_a1->unk0 = (u16) var_a2->unk8;
                    var_a1->unk2 = (u16) temp_a2->unk2;
                    var_a1->unk4 = (u16) temp_a2->unk4;
                    var_a1 += 8;
                    var_a1->unk-2 = (u16) temp_a2->unk6;
                }
            } else {
                var_a1 += 2;
                var_a1->unk-2 = (u16) var_a2->unk8;
            }
            var_a2 = temp_a2 + 8;
            if (arg3 != var_a5) {
                goto loop_44;
            }
        }
    }
    if (arg0 != 1) {
        if (arg0 == 2) {
            var_a1->unk0 = (u16) var_a2->unk-8;
            var_a1->unk2 = (u16) var_a2->unk-6;
            return;
        }
        if (arg0 == 3) {
            var_a1->unk0 = (u16) var_a2->unk-8;
            var_a1->unk2 = (u16) var_a2->unk-6;
            var_a1->unk4 = (u16) var_a2->unk-4;
            return;
        }
        if (arg0 == 4) {
            var_a1->unk0 = (u16) var_a2->unk-8;
            var_a1->unk2 = (u16) var_a2->unk-6;
            var_a1->unk4 = (u16) var_a2->unk-4;
            var_a1->unk6 = (u16) var_a2->unk-2;
            return;
        }
        return;
    }
    var_a1->unk0 = (u16) var_a2->unk-8;
}

void extractFrom4TexelBorder(u16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s32 temp_s3;
    s32 temp_s7;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s7;
    s64 temp_a2;
    s64 temp_s0;
    s64 temp_s0_2;
    s64 temp_s1;
    s64 temp_s1_2;
    s64 temp_s4;
    s64 var_s0;
    s64 var_s0_2;
    s64 var_s1;

    temp_s3 = arg0->unk20;
    temp_s4 = arg1 + 2;
    sp38 = arg2;
    var_s1 = arg3;
    sp30 = (temp_s4 * temp_s3 * 2) + M2C_ERROR(/* Read from unset register $a4 */);
    if (arg0->unk184 != 0) {
        switch (temp_s3) {                          /* irregular */
        case 1:
            sp0 = (s16) (s32) (arg0->unk60 * 65535.0f);
            break;
        case 2:
            sp0 = (s16) (s32) (arg0->unk60 * 65535.0f);
            sp2 = (s16) (s32) (arg0->unk64 * 65535.0f);
            break;
        case 3:
            sp0 = (s16) (s32) (arg0->unk60 * 65535.0f);
            sp2 = (s16) (s32) (arg0->unk64 * 65535.0f);
            sp4 = (s16) (s32) (arg0->unk68 * 65535.0f);
            break;
        case 4:
            sp0 = (s16) (s32) (arg0->unk6C * 65535.0f);
            sp2 = (s16) (s32) (arg0->unk68 * 65535.0f);
            sp4 = (s16) (s32) (arg0->unk64 * 65535.0f);
            sp6 = (s16) (s32) (arg0->unk60 * 65535.0f);
            break;
        }
        gl_g_texdef3d((u16 *) temp_s3, M2C_ERROR(/* Read from unset register $a4 */), temp_s4, (s64) sp);
        var_s0 = sp30;
        var_s6 = 0;
        if (sp38 > 0) {
            temp_s7 = arg1 * 8;
            if (sp38 & 1) {
                sp50 = sp38;
                temp_a2 = var_s1;
                var_s1 += temp_s7;
                gl_g_texdef3d(arg0, var_s0, temp_a2, arg1);
                var_s6 = 1;
                var_s0 += temp_s4 * temp_s3 * 2;
            }
            if ((sp38 >> 1) != 0) {
                do {
                    temp_s1 = temp_s7 + var_s1;
                    gl_g_texdef3d(arg0, var_s0, var_s1, arg1);
                    var_s6 += 2;
                    temp_s0 = (temp_s4 * temp_s3 * 2) + var_s0;
                    gl_g_texdef3d(arg0, temp_s0, temp_s1, arg1);
                    var_s1 = temp_s7 + temp_s1;
                    var_s0 = (temp_s4 * temp_s3 * 2) + temp_s0;
                } while (sp38 != var_s6);
            }
        }
        gl_g_texdef3d((u16 *) temp_s3, var_s0, temp_s4, (s64) sp);
    } else {
        gl_g_texdef3d((u16 *) temp_s3, M2C_ERROR(/* Read from unset register $a4 */), var_s1, arg1);
        var_s0_2 = sp30;
        var_s6_2 = 0;
        if (sp38 > 0) {
            var_s7 = arg1 * 8;
            if (sp38 & 1) {
                sp40 = sp38;
                gl_g_texdef3d((u16 *) temp_s3, var_s0_2, var_s1, arg1);
                var_s6_2 = 1;
                var_s1 += var_s7;
                var_s0_2 += temp_s4 * temp_s3 * 2;
            }
            if ((sp38 >> 1) != 0) {
                do {
                    temp_s1_2 = var_s7 + var_s1;
                    gl_g_texdef3d((u16 *) temp_s3, var_s0_2, var_s1, arg1);
                    var_s6_2 += 2;
                    temp_s0_2 = (temp_s4 * temp_s3 * 2) + var_s0_2;
                    gl_g_texdef3d((u16 *) temp_s3, temp_s0_2, temp_s1_2, arg1);
                    var_s1 = var_s7 + temp_s1_2;
                    var_s0_2 = (temp_s4 * temp_s3 * 2) + temp_s0_2;
                } while (sp38 != var_s6_2);
            }
        } else {
            var_s7 = arg1 * 8;
        }
        gl_g_texdef3d((u16 *) temp_s3, var_s0_2, var_s1 - var_s7, arg1);
    }
}

void MakeOneBorderLevel(u16 *arg0) {
    s32 sp14;
    ? *sp10;
    s32 temp_a2;
    s32 temp_lo;
    s32 temp_s1;
    s32 temp_s2;
    u16 *temp_s3;

    temp_s2 = arg0->unk28;
    temp_s1 = arg0->unk24;
    gl_g_texdef3d((u16 *)1);
    arg0->unk1AC = (u16 *) M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_texdef3d(arg0);
    temp_lo = arg0->unk20 * (temp_s1 + 2);
    temp_a2 = temp_s2 + 2;
    temp_s3 = gl_malloc(temp_a2 * temp_lo * 2, sub_0f030000.unk-5410, (u16 *) temp_a2, temp_lo);
    gl_g_texdef3d(arg0, (s64) temp_s1, (s64) temp_s2, (s64) arg0->unk1AC->unk14);
    SetOglFormatAndComps((u16 *) arg0->unk20, arg0->unk84, &sp10, &sp14);
    glTexImage2D(0xDE1, 0, arg0->unk20, temp_s1 + 2);
    gl_g_texdef2d(arg0->unk1AC);
    arg0->unk1AC = NULL;
    gl_free(temp_s3, &sub_0f020000 + 0x57B8);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x70, 0x74], gap at: 0x38. */
void MakeMipMapsBorder(u16 *arg0) {
    s32 sp14;
    ? *sp10;
    s32 temp_lo;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s5;
    s32 var_s6;
    s32 var_s6_2;
    s64 temp_a1;
    u16 *temp_a0;
    u16 *temp_a2;
    u16 *temp_s7;
    void *temp_a2_2;

    gl_g_texdef3d(arg0->unk2C);
    gl_g_texdef3d(arg0->unk24);
    gl_g_texdef3d(arg0->unk28);
    if (M2C_ERROR(/* Read from unset register $v0 */) >= M2C_ERROR(/* Read from unset register $v0 */)) {
        gl_g_texdef3d(arg0->unk28);
    } else {
        gl_g_texdef3d(arg0->unk24);
    }
    if (M2C_ERROR(/* Read from unset register $v0 */) >= M2C_ERROR(/* Read from unset register $v0 */)) {
        gl_g_texdef3d(arg0->unk24);
        gl_g_texdef3d(arg0->unk28);
        if (M2C_ERROR(/* Read from unset register $v0 */) >= M2C_ERROR(/* Read from unset register $v0 */)) {
            gl_g_texdef3d(arg0->unk28);
        } else {
            gl_g_texdef3d(arg0->unk24);
        }
        var_s6 = M2C_ERROR(/* Read from unset register $v0 */);
    } else {
        gl_g_texdef3d(arg0->unk2C);
        var_s6 = M2C_ERROR(/* Read from unset register $v0 */);
    }
    SetOglFormatAndComps(arg0->unk20, arg0->unk84, &sp10, &sp14);
    temp_a1 = var_s6 + 1;
    unksp38 = temp_a1;
    gl_g_texdef3d(arg0, temp_a1);
    temp_lo = (s32) arg0->unk20 * (s32) (arg0->unk24 + 2);
    temp_a2 = arg0->unk28 + 2;
    arg0->unk1AC = (u16 *) M2C_ERROR(/* Read from unset register $v0 */);
    temp_s7 = gl_malloc((s32) temp_a2 * temp_lo * 2, sub_0f030000.unk-5410, temp_a2, temp_lo);
    gl_g_texdef3d(arg0);
    gl_g_texdef3d(arg0, (s64) arg0->unk24, (s64) arg0->unk28, (s64) arg0->unk1AC->unk14);
    glTexImage2D(0xDE1, 0, (s32) arg0->unk20, arg0->unk24 + 2);
    temp_a0 = arg0->unk1AC;
    var_s5 = 1;
    var_s3 = temp_a0->unk8;
    var_s1 = temp_a0->unk4;
    unksp40 = (s64) temp_a0->unkC;
    if (var_s6 > 0) {
        var_s0 = 0x14;
        unksp30 = (s64) (arg0 + 0x108);
loop_19:
        temp_a2_2 = arg0->unk1AC + var_s0;
        gl_g_texdef3d((u16 *) unksp30, (s64) temp_a2_2->unk0, (s64) temp_a2_2->unk14, (s64) var_s1);
        var_s2 = var_s1 >> 1;
        if (var_s1 < 2) {
            var_s2 = 1;
        }
        var_s1 = var_s2;
        if (var_s3 >= 2) {
            var_s6_2 = var_s3 >> 1;
        } else {
            var_s6_2 = 1;
        }
        var_s3 = var_s6_2;
        gl_g_texdef3d(arg0, (s64) var_s2, (s64) var_s6_2, (s64) (arg0->unk1AC + var_s0)->unk14);
        var_s0 += 0x14;
        glTexImage2D(0xDE1, var_s5, (s32) arg0->unk20, var_s2 + 2);
        var_s5 += 1;
        if (unksp38 != var_s5) {
            goto loop_19;
        }
    }
    gl_g_texdef2d(arg0->unk1AC);
    arg0->unk1AC = NULL;
    gl_free(temp_s7, &sub_0f020000 + 0x57B8);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x70, 0x74], gap at: 0x40. */
void MakeMipMaps(u16 *arg0) {
    s64 sp78;
    s64 sp18;
    s32 sp14;
    ? *sp10;
    s32 temp_a1_2;
    s32 temp_lo;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5_2;
    s32 var_s7;
    s32 var_v0;
    s64 temp_a1;
    s64 temp_s0;
    s64 var_s5;
    u16 *temp_a0;
    u16 *temp_a2;
    u16 *temp_s8;
    void *temp_a2_2;

    var_s5 = saved_reg_s5;
    gl_g_texdef3d(arg0->unk2C);
    gl_g_texdef3d(arg0->unk24);
    gl_g_texdef3d(arg0->unk28);
    if (M2C_ERROR(/* Read from unset register $v0 */) >= M2C_ERROR(/* Read from unset register $v0 */)) {
        gl_g_texdef3d(arg0->unk28);
    } else {
        gl_g_texdef3d(arg0->unk24);
    }
    if (M2C_ERROR(/* Read from unset register $v0 */) >= M2C_ERROR(/* Read from unset register $v0 */)) {
        gl_g_texdef3d(arg0->unk24);
        gl_g_texdef3d(arg0->unk28);
        if (M2C_ERROR(/* Read from unset register $v0 */) >= M2C_ERROR(/* Read from unset register $v0 */)) {
            var_s5 = unksp40;
            gl_g_texdef3d(arg0->unk28);
        } else {
            var_s5 = unksp40;
            gl_g_texdef3d(arg0->unk24);
        }
    } else {
        gl_g_texdef3d(arg0->unk2C);
    }
    temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    SetOglFormatAndComps(arg0->unk20, arg0->unk84, &sp10, &sp14);
    temp_a1 = temp_s0 + 1;
    unksp38 = temp_a1;
    gl_g_texdef3d(arg0, temp_a1);
    temp_lo = (s32) arg0->unk20 * (s32) arg0->unk24;
    temp_a2 = arg0->unk28;
    arg0->unk1AC = (u16 *) M2C_ERROR(/* Read from unset register $v0 */);
    temp_s8 = gl_malloc((s32) temp_a2 * temp_lo * 2, sub_0f030000.unk-5410, temp_a2, temp_lo);
    gl_g_texdef3d(arg0);
    gl_g_texdef3d(arg0->unk20, (s64) arg0->unk24, (s64) arg0->unk28, (s64) arg0->unk1AC->unk14);
    unksp40 = var_s5;
    glTexImage2D(0xDE1, 0, (s32) arg0->unk20, arg0->unk24);
    sp78 = temp_s0;
    temp_a0 = arg0->unk1AC;
    var_s7 = 1;
    var_s5_2 = temp_a0->unkC;
    var_s4 = temp_a0->unk8;
    var_s3 = temp_a0->unk4;
    if (temp_s0 > 0) {
        var_s0 = 0x14;
        sp18 = (s64) (arg0 + 0x108);
loop_18:
        temp_a2_2 = arg0->unk1AC + var_s0;
        gl_g_texdef3d((u16 *) sp18, (s64) temp_a2_2->unk0, (s64) temp_a2_2->unk14, (s64) var_s3);
        var_s2 = 1;
        if (var_s3 >= 2) {
            var_s2 = var_s3 >> 1;
        }
        var_s3 = var_s2;
        if (var_s4 >= 2) {
            var_s1 = var_s4 >> 1;
        } else {
            var_s1 = 1;
        }
        var_s4 = var_s1;
        if (var_s5_2 >= 2) {
            var_v0 = var_s5_2 >> 1;
        } else {
            var_v0 = 1;
        }
        var_s5_2 = var_v0;
        gl_g_texdef3d(arg0->unk20, (s64) var_s2, (s64) var_s1, (s64) (arg0->unk1AC + var_s0)->unk14);
        temp_a1_2 = var_s7;
        var_s7 += 1;
        glTexImage2D(0xDE1, temp_a1_2, (s32) arg0->unk20, (u16 *) var_s2);
        var_s0 += 0x14;
        if (unksp38 != var_s7) {
            goto loop_18;
        }
    }
    gl_g_texdef2d(arg0->unk1AC);
    arg0->unk1AC = NULL;
    gl_free(temp_s8, &sub_0f020000 + 0x57B8);
}

void Filter(f32 arg1, void *arg0, s64 arg2, s32 arg3) {
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    u64 spD8;                                       /* compiler-managed */
    s64 spB8;
    s64 spB0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    u64 sp78;                                       /* compiler-managed */
    s64 sp70;
    s64 sp68;
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
    s64 sp8;
    s64 sp0;
    f64 *var_a2;
    f64 *var_a2_2;
    f64 temp_f1;
    f64 temp_f2;
    f64 temp_f2_2;
    f64 temp_f9;
    f64 temp_f9_2;
    f64 var_f11;
    f64 var_f4;
    f64 var_f4_2;
    f64 var_f5;
    f64 var_f5_2;
    f64 var_f6;
    f64 var_f6_2;
    f64 var_f7;
    f64 var_f7_2;
    s16 var_v1_2;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_at_3;
    s32 temp_s8;
    s32 temp_v1_3;
    s32 var_s5;
    s64 temp_a5;
    s64 temp_at_2;
    s64 temp_at_4;
    s64 temp_s4;
    s64 temp_s6;
    s64 temp_t0;
    s64 temp_t0_2;
    s64 temp_t0_3;
    s64 temp_t3;
    s64 temp_v0_2;
    s64 temp_v1_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_s0_2;
    s64 var_s0_3;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s2;
    s64 var_s2_2;
    s64 var_s3;
    s64 var_s8;
    s64 var_t1;
    s64 var_t1_2;
    s64 var_t2;
    s64 var_t2_2;
    s64 var_t3;
    s64 var_t3_2;
    s64 var_v1;
    void *temp_a2_2;
    void *temp_t1;
    void *temp_v0;
    void *temp_v1;
    void *var_ra_2;
    void *var_ra_3;

    var_s0 = saved_reg_s0;
    var_s2 = saved_reg_s2;
    var_ra = saved_reg_ra;
    var_s8 = saved_reg_fp;
    sp100 = 5;
    var_s5 = 5;
    sp150 = -3;
    sp138 = 5;
    sp110 = -3;
    sp130 = arg2;
    sp108 = -3;
    if (arg0->unk0 == GLUE_F64(arg1, 0U)) {
        var_a2 = arg0 + 8;
loop_2:
        sp108 += 1;
        sp150 += 1;
        sp110 += 1;
        if (*var_a2 == GLUE_F64(arg1, 0U)) {
            var_a2 += 8;
            if ((arg0 + 0x20) != var_a2) {
                goto loop_2;
            }
        }
    }
    if (arg0->unk38 == GLUE_F64(arg1, 0U)) {
        var_a2_2 = (arg0 + 0x38) - 8;
loop_6:
        var_s5 -= 1;
        sp100 -= 1;
        sp138 -= 1;
        if (*var_a2_2 == GLUE_F64(arg1, 0U)) {
            var_a2_2 -= 8;
            if ((arg0 + 0x18) != var_a2_2) {
                goto loop_6;
            }
        }
    }
    if (M2C_ERROR(/* Read from unset register $a5 */) < 2) {
        sp98 = 0;
        if (M2C_ERROR(/* Read from unset register $a4 */) > 0) {
            temp_s6 = M2C_ERROR(/* Read from unset register $a4 */) - 1;
            temp_s4 = arg3 - 1;
            sp148 = sp150;
            sp160 = sp108 * 8;
            temp_a2 = sp100 - sp108;
            spB8 = var_s5 - sp150;
            sp20 = sp150 < var_s5;
            sp140 = sp150 * 8;
            sp0 = sp108 < sp100;
            spB0 = arg3 + 1;
loop_99:
            sp78 = 0;
            if (arg3 > 0) {
                var_s1 = sp100;
                temp_at = (s32) (((u32) arg3 >> 0x1F) + arg3) >> 1;
                sp168 = sp108;
                sp90 = (s64) temp_at;
                sp88 = (s64) ((s32) (((u32) sp98 >> 0x1F) + sp98) >> 1);
loop_103:
                if (temp_at > 1) {
                    var_s3 = sp90;
                } else {
                    var_s3 = 1;
                }
                var_f6 = GLUE_F64(arg1, 0U);
                var_f7 = second half of f64;
                var_f4 = GLUE_F64(arg1, 0U);
                var_f5 = second half of f64;
                sp8 = sp150;
                if (sp20 != 0) {
                    var_s0_2 = sp148;
                    sp50 = sp140;
loop_108:
                    var_t3 = sp168;
                    if (sp0 != 0) {
                        temp_s8 = var_s0_2 >= M2C_ERROR(/* Read from unset register $a4 */);
                        var_ra_2 = sp160 + arg0;
                        if (temp_a2 & 1) {
                            var_t2 = var_t3;
                            var_t1 = var_s0_2;
                            if (M2C_ERROR(/* Read from unset register $a6 */) != 0x301) {
                                if (var_t2 >= 0) {
                                    if (var_t2 >= arg3) {
                                        var_t2 = temp_s4;
                                    }
                                } else {
                                    var_t2 = 0;
                                }
                                goto block_114;
                            }
                            if (var_t3 >= 0) {
                                if (var_t3 >= arg3) {
                                    var_t2 = (s64) (var_t3 % arg3);
                                    M2C_TRAP_IF(arg3 == 0);
                                    if (M2C_ERROR(/* Read from unset register $a7 */) == 0x301) {
                                        goto block_161;
                                    }
                                    goto block_115;
                                }
                                goto block_114;
                            }
                            M2C_TRAP_IF(arg3 == 0);
                            var_t2 = ((var_t3 % arg3) + arg3) - 1;
block_114:
                            if (M2C_ERROR(/* Read from unset register $a7 */) != 0x301) {
block_115:
                                if (var_t1 >= 0) {
                                    if (var_t1 >= M2C_ERROR(/* Read from unset register $a4 */)) {
                                        var_t1 = temp_s6;
                                    }
                                } else {
                                    var_t1 = 0;
                                }
                            } else {
block_161:
                                if (var_s0_2 >= 0) {
                                    if (temp_s8 != 0) {
                                        var_t1 = (s64) (var_s0_2 % (s32) M2C_ERROR(/* Read from unset register $a4 */));
                                        M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
                                    }
                                } else {
                                    M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
                                    var_t1 = ((var_s0_2 % (s32) M2C_ERROR(/* Read from unset register $a4 */)) + M2C_ERROR(/* Read from unset register $a4 */)) - 1;
                                }
                            }
                            temp_v1 = (var_t2 * 8) + ((arg3 * var_t1 * 8) + (bitwise s32) arg1);
                            temp_f9 = var_ra_2->unk18;
                            var_f6 = ((f64) temp_v1->unk2 * (second half of f64) * temp_f9) + (second half of f64);
                            var_f7 = second half of f64;
                            var_t3 += 1;
                            var_ra_2 += 8;
                            var_f4 = ((f64) temp_v1->unk0 * (second half of f64) * temp_f9) + (second half of f64);
                            var_f5 = second half of f64;
                        }
                        if ((temp_a2 >> 1) != 0) {
loop_123:
                            if (M2C_ERROR(/* Read from unset register $a6 */) != 0x301) {
                                if (var_t3 >= 0) {
                                    if (var_t3 >= arg3) {

                                    }
                                }
                                goto block_127;
                            }
                            if (var_t3 >= 0) {
                                if (var_t3 >= arg3) {
                                    M2C_TRAP_IF(arg3 == 0);
                                    if (M2C_ERROR(/* Read from unset register $a7 */) == 0x301) {
                                        goto block_142;
                                    }
                                    goto block_128;
                                }
                                goto block_127;
                            }
                            M2C_TRAP_IF(arg3 == 0);
block_127:
                            if (M2C_ERROR(/* Read from unset register $a7 */) != 0x301) {
block_128:
                                if (var_s0_2 >= 0) {
                                    if (var_s0_2 >= M2C_ERROR(/* Read from unset register $a4 */)) {

                                    }
                                }
                            } else {
block_142:
                                if (var_s0_2 >= 0) {
                                    if (temp_s8 != 0) {
                                        M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
                                    }
                                } else {
                                    M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
                                }
                            }
                            temp_t3 = var_t3 + 1;
                            var_t2_2 = temp_t3;
                            var_t1_2 = var_s0_2;
                            if (M2C_ERROR(/* Read from unset register $a6 */) != 0x301) {
                                if (var_t2_2 >= 0) {
                                    if (var_t2_2 >= arg3) {
                                        var_t2_2 = temp_s4;
                                    }
                                } else {
                                    var_t2_2 = 0;
                                }
                                goto block_135;
                            }
                            if (temp_t3 >= 0) {
                                if (temp_t3 >= arg3) {
                                    var_t2_2 = (s64) (temp_t3 % arg3);
                                    M2C_TRAP_IF(arg3 == 0);
                                    if (M2C_ERROR(/* Read from unset register $a7 */) == 0x301) {
                                        goto block_148;
                                    }
                                    goto block_136;
                                }
                                goto block_135;
                            }
                            M2C_TRAP_IF(arg3 == 0);
                            var_t2_2 = ((temp_t3 % arg3) + arg3) - 1;
block_135:
                            if (M2C_ERROR(/* Read from unset register $a7 */) != 0x301) {
block_136:
                                if (var_t1_2 >= 0) {
                                    if (var_t1_2 >= M2C_ERROR(/* Read from unset register $a4 */)) {
                                        var_t1_2 = temp_s6;
                                    }
                                } else {
                                    var_t1_2 = 0;
                                }
                            } else {
block_148:
                                if (var_s0_2 >= 0) {
                                    if (temp_s8 != 0) {
                                        var_t1_2 = (s64) (var_s0_2 % (s32) M2C_ERROR(/* Read from unset register $a4 */));
                                        M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
                                    }
                                } else {
                                    M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
                                    var_t1_2 = ((var_s0_2 % (s32) M2C_ERROR(/* Read from unset register $a4 */)) + M2C_ERROR(/* Read from unset register $a4 */)) - 1;
                                }
                            }
                            temp_v0 = (var_t2_2 * 8) + ((arg3 * var_t1_2 * 8) + (bitwise s32) arg1);
                            temp_f9_2 = var_ra_2->unk20;
                            temp_f2 = (f64) temp_v0->unk2 * (second half of f64) * temp_f9_2;
                            temp_f1 = (f64) temp_v0->unk0 * (second half of f64) * temp_f9_2;
                            var_ra_2 += 0x10;
                            var_f6 = temp_f2 + (second half of f64);
                            var_f7 = second half of f64;
                            var_t3 = temp_t3 + 1;
                            var_f4 = temp_f1 + (second half of f64);
                            var_f5 = second half of f64;
                            if (var_t3 != var_s1) {
                                goto loop_123;
                            }
                        }
                    }
                    var_s0_2 += 1;
                    temp_v1_2 = sp8 + 1;
                    sp50 += 8;
                    sp8 = temp_v1_2;
                    if (var_s5 != temp_v1_2) {
                        goto loop_108;
                    }
                }
                temp_t1 = (((s32) ((sp78 >> 0x1F) + sp78) >> 1) * 8) + ((var_s3 * sp88 * 8) + sp130);
                if (var_f4 > 65535.0) {
                    temp_t1->unk0 = 0xFFFF;
                } else if (!(var_f4 < GLUE_F64(arg1, 0U))) {
                    temp_t1->unk0 = (s16) (s32) var_f4;
                } else {
                    temp_t1->unk0 = 0;
                }
                if (!(var_f6 > 65535.0)) {
                    if (!(var_f6 < GLUE_F64(arg1, 0U))) {
                        temp_t1->unk2 = (s16) (s32) var_f6;
                    } else {
                        temp_t1->unk2 = 0;
                    }
                } else {
                    temp_t1->unk2 = 0xFFFF;
                }
                if (!(var_f7 > 65535.0)) {
                    if (!(var_f7 < GLUE_F64(arg1, 0U))) {
                        temp_t1->unk4 = (s16) (s32) var_f7;
                    } else {
                        temp_t1->unk4 = 0;
                    }
                } else {
                    temp_t1->unk4 = 0xFFFF;
                }
                if (!(var_f5 > 65535.0)) {
                    if (!(var_f5 < GLUE_F64(arg1, 0U))) {
                        temp_t1->unk6 = (s16) (s32) var_f5;
                    } else {
                        temp_t1->unk6 = 0;
                    }
                } else {
                    temp_t1->unk6 = 0xFFFF;
                }
                var_s1 += 2;
                temp_a5 = sp78 + 2;
                sp78 = temp_a5;
                sp168 += 2;
                if (temp_a5 < arg3) {
                    goto loop_103;
                }
            }
            temp_t0 = sp98 + 2;
            sp98 = temp_t0;
            sp148 += 2;
            if (temp_t0 < M2C_ERROR(/* Read from unset register $a4 */)) {
                goto loop_99;
            }
        }
    } else {
        spD8 = 0;
        if (M2C_ERROR(/* Read from unset register $a5 */) > 0) {
            var_f11 = 65535.0;
            spE8 = sp110;
            spE0 = sp110 * 8;
            sp160 = sp108 * 8;
            sp0 = sp108 < sp100;
            sp68 = sp100 - sp108;
            sp20 = sp150 < var_s5;
            sp140 = sp150 * 8;
            spB8 = var_s5 - sp150;
            spF0 = sp110 < sp138;
            sp48 = M2C_ERROR(/* Read from unset register $a4 */) + 1;
            sp58 = sp138 - sp110;
            spB0 = arg3 + 1;
            do {
                sp98 = 0;
                if (M2C_ERROR(/* Read from unset register $a4 */) > 0) {
                    sp148 = sp150;
                    do {
                        sp78 = 0;
                        if (arg3 > 0) {
                            sp80 = var_s2;
                            sp10 = var_ra;
                            sp18 = var_s8;
                            sp70 = var_s0;
                            var_s1_2 = sp100;
                            temp_at_3 = (s32) (((u32) arg3 >> 0x1F) + arg3) >> 1;
                            sp90 = (s64) temp_at_3;
                            sp168 = sp108;
                            temp_v1_3 = (s32) (((u32) M2C_ERROR(/* Read from unset register $a4 */) >> 0x1F) + M2C_ERROR(/* Read from unset register $a4 */)) >> 1;
                            sp38 = (s64) temp_v1_3;
                            sp88 = (s64) ((s32) (((u32) sp98 >> 0x1F) + sp98) >> 1);
                            sp30 = (s64) ((s32) ((spD8 >> 0x1F) + spD8) >> 1);
                            sp28 = temp_at_3 > 1;
                            spF8 = temp_v1_3 > 1;
loop_20:
                            sp80 = var_s2;
                            sp10 = var_ra;
                            sp18 = var_s8;
                            sp70 = var_s0;
                            if (spF8 != 0) {
                                var_s0 = sp70;
                                var_s8 = sp18;
                                var_ra = sp10;
                                sp118 = sp38;
                                if (sp28 != 0) {
                                    goto block_22;
                                }
                                goto block_94;
                            }
                            var_s8 = sp18;
                            var_ra = sp10;
                            sp118 = 1;
                            var_s0 = sp70;
                            if (sp28 == 0) {
block_94:
                                sp120 = 1;
                                if (sp28 == 0) {
                                    goto block_95;
                                }
                                goto block_23;
                            }
block_22:
                            sp120 = sp90;
                            if (sp28 != 0) {
block_23:
                                var_v1 = sp90;
                            } else {
block_95:
                                var_v1 = 1;
                            }
                            sp128 = var_v1;
                            var_f6_2 = GLUE_F64(arg1, 0U);
                            var_f7_2 = second half of f64;
                            var_f4_2 = GLUE_F64(arg1, 0U);
                            var_f5_2 = second half of f64;
                            sp40 = sp110;
                            if (spF0 != 0) {
                                var_s2_2 = spE8;
                                sp158 = spE0;
loop_27:
                                sp8 = sp150;
                                if (sp20 != 0) {
                                    var_s0_3 = sp148;
                                    sp50 = sp140;
loop_30:
                                    var_t3_2 = sp168;
                                    if (sp0 != 0) {
                                        var_ra_3 = sp160 + arg0;
                                        var_f11 = second half of f64;
loop_34:
                                        if (M2C_ERROR(/* Read from unset register $a6 */) != 0x301) {
                                            if (var_t3_2 >= 0) {
                                                if (var_t3_2 >= arg3) {

                                                }
                                            }
                                            goto block_38;
                                        }
                                        if (var_t3_2 >= 0) {
                                            if (var_t3_2 >= arg3) {
                                                M2C_TRAP_IF(arg3 == 0);
                                                if (M2C_ERROR(/* Read from unset register $a7 */) == 0x301) {
                                                    goto block_49;
                                                }
                                                goto block_39;
                                            }
                                            goto block_38;
                                        }
                                        M2C_TRAP_IF(arg3 == 0);
block_38:
                                        if (M2C_ERROR(/* Read from unset register $a7 */) != 0x301) {
block_39:
                                            if (var_s0_3 >= 0) {
                                                if (var_s0_3 >= M2C_ERROR(/* Read from unset register $a4 */)) {

                                                }
                                            }
                                            goto block_42;
                                        }
block_49:
                                        if (var_s0_3 >= 0) {
                                            if (var_s0_3 >= M2C_ERROR(/* Read from unset register $a4 */)) {
                                                M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
                                                if ((bitwise s32) arg1 == 0x301) {
                                                    goto block_52;
                                                }
                                                goto block_43;
                                            }
                                            goto block_42;
                                        }
                                        M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a4 */) == 0);
block_42:
                                        if ((bitwise s32) arg1 != 0x301) {
block_43:
                                            if (var_s2_2 >= 0) {
                                                if (var_s2_2 >= M2C_ERROR(/* Read from unset register $a5 */)) {

                                                }
                                            }
                                        } else {
block_52:
                                            if (var_s2_2 >= 0) {
                                                if (var_s2_2 >= M2C_ERROR(/* Read from unset register $a5 */)) {
                                                    M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a5 */) == 0);
                                                }
                                            } else {
                                                M2C_TRAP_IF(M2C_ERROR(/* Read from unset register $a5 */) == 0);
                                            }
                                        }
                                        temp_f2_2 = (second half of f64) * var_ra_3->unk18;
                                        var_ra_3 += 8;
                                        var_f6_2 = temp_f2_2 + (second half of f64);
                                        var_f7_2 = second half of f64;
                                        var_t3_2 += 1;
                                        var_f4_2 = (second half of f64) + (second half of f64);
                                        var_f5_2 = second half of f64;
                                        if (var_t3_2 != var_s1_2) {
                                            goto loop_34;
                                        }
                                    }
                                    var_s0_3 += 1;
                                    temp_at_4 = sp8 + 1;
                                    sp50 += 8;
                                    sp8 = temp_at_4;
                                    if (var_s5 != temp_at_4) {
                                        goto loop_30;
                                    }
                                }
                                var_s2_2 += 1;
                                var_s8 = sp18;
                                var_ra = sp10;
                                temp_t0_2 = sp40 + 1;
                                sp40 = temp_t0_2;
                                sp158 += 8;
                                var_s0 = sp70;
                                if (sp138 != temp_t0_2) {
                                    goto loop_27;
                                }
                            }
                            var_s2 = sp80;
                            temp_a2_2 = ((((s32) ((sp78 >> 0x1F) + sp78) >> 1) + (sp128 * sp88)) * 8) + ((sp120 * (sp118 * sp30) * 8) + sp130);
                            if (var_f11 < var_f4_2) {
                                temp_a2_2->unk0 = 0xFFFF;
                            } else if (!(var_f4_2 < GLUE_F64(arg1, 0U))) {
                                temp_a2_2->unk0 = (s16) (s32) var_f4_2;
                            } else {
                                temp_a2_2->unk0 = 0;
                            }
                            if (!(var_f11 < var_f6_2)) {
                                if (!(var_f6_2 < GLUE_F64(arg1, 0U))) {
                                    temp_a2_2->unk2 = (s16) (s32) var_f6_2;
                                } else {
                                    temp_a2_2->unk2 = 0;
                                }
                            } else {
                                temp_a2_2->unk2 = 0xFFFF;
                            }
                            if (!(var_f11 < var_f7_2)) {
                                if (!(var_f7_2 < GLUE_F64(arg1, 0U))) {
                                    temp_a2_2->unk4 = (s16) (s32) var_f7_2;
                                } else {
                                    temp_a2_2->unk4 = 0;
                                }
                            } else {
                                temp_a2_2->unk4 = 0xFFFF;
                            }
                            if (!(var_f11 < var_f5_2)) {
                                if (!(var_f5_2 < GLUE_F64(arg1, 0U))) {
                                    var_v1_2 = (s16) (s32) var_f5_2;
                                    goto block_18;
                                }
                                temp_a2_2->unk6 = 0;
                            } else {
                                var_v1_2 = 0xFFFF;
block_18:
                                temp_a2_2->unk6 = var_v1_2;
                            }
                            var_s1_2 += 2;
                            temp_t0_3 = sp78 + 2;
                            sp78 = temp_t0_3;
                            sp168 += 2;
                            if (temp_t0_3 < arg3) {
                                goto loop_20;
                            }
                        }
                        temp_at_2 = sp98 + 2;
                        sp98 = temp_at_2;
                        sp148 += 2;
                    } while (temp_at_2 < M2C_ERROR(/* Read from unset register $a4 */));
                }
                sp80 = var_s2;
                sp10 = var_ra;
                sp18 = var_s8;
                sp70 = var_s0;
                temp_v0_2 = spD8 + 2;
                spD8 = temp_v0_2;
                spE8 += 2;
            } while (temp_v0_2 < M2C_ERROR(/* Read from unset register $a5 */));
        }
    }
}

void *mallocMipMap(void *arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_lo;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_v0;
    s32 var_v0_2;
    u16 *temp_a2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s5;
    void *var_s5_2;
    void *var_v0_3;

    temp_v0 = gl_malloc(0x144, (&sub_0f030000 - 0x55B8)->unk1A8);
    if (temp_v0 == NULL) {
        exit(1);
    }
    var_a5 = 0;
    var_a4 = arg1;
    var_s5 = temp_v0 + 4;
    var_v0 = arg0->unk2C;
    var_a0 = arg0->unk28;
    var_a1 = arg0->unk24;
    temp_v0->unk0 = arg1;
    if (arg1 != 0) {
loop_5:
        temp_lo = var_a1 * var_a0 * var_v0;
        var_s5->unk8 = var_v0;
        var_s5->unk4 = var_a0;
        var_s5->unk0 = var_a1;
        var_a6 = 1;
        var_a5 += temp_lo;
        var_s5->unkC = temp_lo;
        if (var_a1 >= 2) {
            var_a6 = var_a1 >> 1;
        }
        var_a1 = var_a6;
        if (var_a0 >= 2) {
            var_a6_2 = var_a0 >> 1;
        } else {
            var_a6_2 = 1;
        }
        var_s5 += 0x14;
        var_a0 = var_a6_2;
        if (var_v0 >= 2) {
            var_a6_3 = var_v0 >> 1;
        } else {
            var_a6_3 = 1;
        }
        var_a4 -= 1;
        var_v0 = var_a6_3;
        if (var_a4 != 0) {
            goto loop_5;
        }
    }
    var_s5_2 = temp_v0 + 4;
    temp_a2 = &sub_0f030000 - 0x55B8;
    temp_v0_2 = gl_malloc(var_a5 * 8, ((arg0->unk1C * 4) + temp_a2)->unk1A0, temp_a2);
    temp_v0->unk14 = temp_v0_2;
    if (temp_v0_2 == NULL) {
        exit(1);
    }
    var_a4_2 = 0;
    if (arg1 >= 2) {
        temp_a1 = arg1 - 1;
        var_v0_2 = temp_a1 & 3;
        if (var_v0_2 != 0) {
            do {
                var_s5_2 += 0x14;
                var_a4_2 += 1;
                var_v0_2 -= 1;
                var_s5_2->unk10 = (s32) (var_s5_2->unk-4 + (var_s5_2->unk-8 * 8));
            } while (var_v0_2 != 0);
        }
        var_v0_3 = var_s5_2;
        if ((temp_a1 >> 2) != 0) {
            var_a0_2 = var_a4_2;
            do {
                var_v0_3 += 0x50;
                var_a0_2 += 4;
                temp_a3 = var_v0_3->unk-40 + (var_v0_3->unk-44 * 8);
                var_v0_3->unk-2C = temp_a3;
                temp_a3_2 = temp_a3 + (var_v0_3->unk-30 * 8);
                var_v0_3->unk-18 = temp_a3_2;
                temp_a3_3 = temp_a3_2 + (var_v0_3->unk-1C * 8);
                var_v0_3->unk-4 = temp_a3_3;
                var_v0_3->unk10 = (s32) (temp_a3_3 + (var_v0_3->unk-8 * 8));
            } while (temp_a1 != var_a0_2);
        }
    }
    return temp_v0;
}

void SetOglFormatAndComps(u16 *arg0, void *arg1, ? *arg2, s32 *arg3) {
    switch (arg0) {                                 /* switch 1; irregular */
    default:                                        /* switch 1 */
        gl_ErrorHandler(0x5B, 2, &sub_0f020000 + 0x5668);
        break;
    case 4:                                         /* switch 1 */
        *arg2 = (? *)0x8000;
        switch (arg1) {                             /* switch 2; irregular */
        default:                                    /* switch 2 */
            *arg3 = 0x1908;
            break;
        case 0x670:                                 /* switch 2 */
            *arg3 = 0x805A;
            break;
        case 0x640:                                 /* switch 2 */
            *arg3 = 0x8056;
            break;
        case 0x660:                                 /* switch 2 */
            *arg3 = 0x8058;
            break;
        }
        break;
    case 1:                                         /* switch 1 */
        *arg2 = (? *)0x1909;
        if (arg1 != (void *)0x690) {
            *arg3 = 0x1909;
        } else {
            *arg3 = 0x804D;
        }
        break;
    case 2:                                         /* switch 1 */
        *arg2 = (? *)0x190A;
        switch (arg1) {                             /* switch 3; irregular */
        default:                                    /* switch 3 */
            *arg3 = 0x190A;
            break;
        case 0x610:                                 /* switch 3 */
            *arg3 = 0x8046;
            break;
        case 0x620:                                 /* switch 3 */
            *arg3 = 0x8045;
            break;
        case 0x650:                                 /* switch 3 */
            *arg3 = 0x8047;
            break;
        }
        break;
    case 3:                                         /* switch 1 */
        *arg2 = (? *)0x1907;
        if (arg1 != (void *)0x630) {
            if (arg1 != (void *)0x680) {
                *arg3 = 0x1907;
            } else {
                *arg3 = 0x8053;
            }
        } else {
            *arg3 = 0x8050;
        }
        break;
    }
}

void __iglooDownLoad3dTexture(s64 arg0, s64 arg1, s32 arg2, void *arg3) {
    s64 sp18;
    s64 sp10;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a5;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_t3;
    u16 *temp_v0_2;
    u16 *temp_v0_3;
    u16 *temp_v0_4;
    u16 *temp_v0_5;
    u16 *var_a0;
    u16 *var_a0_3;
    u16 *var_a0_5;
    u16 *var_a1_2;
    u16 *var_a1_4;
    u16 *var_a1_6;
    u16 *var_a5_2;
    u16 *var_t1;
    u16 *var_t1_2;
    u16 *var_t1_4;
    u16 temp_at;
    u16 temp_at_2;
    u16 temp_t0;
    u16 temp_t0_2;
    u8 temp_a6;
    u8 temp_at_3;
    u8 temp_t0_3;
    u8 temp_t0_4;
    void *temp_s5;
    void *temp_s5_2;
    void *temp_s5_3;
    void *temp_s5_4;
    void *var_a0_2;
    void *var_a0_4;
    void *var_a0_6;
    void *var_a1;
    void *var_a1_3;
    void *var_a1_5;
    void *var_a5_3;
    void *var_t1_3;

    sp10 = arg1;
    sp18 = arg0;
    if (__iglooIsExtensionSupported(0xC) != 0) {
        temp_a3 = arg3->unk24;
        temp_a5 = arg3->unk2C;
        temp_a4 = arg3->unk28;
        temp_v0 = arg3->unk80;
        if (temp_v0 != 0x710) {
            if (temp_v0 == 0x720) {
                switch (arg2) {                     /* switch 1; irregular */
                case 0x1907:                        /* switch 1 */
                    temp_lo = temp_a3 * temp_a5 * temp_a4;
                    temp_s5 = arg3->unk18;
                    temp_v0_2 = gl_malloc(temp_lo * 6, (&sub_0f030000 - 0x55B8)->unk1A8, (u16 *) (temp_lo * 2), temp_a3);
                    var_a0 = temp_v0_2;
                    var_a3 = 0;
                    if (temp_a5 > 0) {
loop_18:
                        var_a4 = 0;
                        if (temp_a4 > 0) {
loop_26:
                            var_a1 = temp_s5;
                            if (temp_a3 > 0) {
                                var_a7 = temp_a3 & 3;
                                var_t1 = var_a0;
                                if (var_a7 != 0) {
                                    do {
                                        var_a0->unk0 = var_a1->unk4;
                                        temp_at = var_a1->unk2;
                                        var_a1 += 4;
                                        var_a0->unk2 = temp_at;
                                        var_a0 += 6;
                                        var_a7 -= 1;
                                        var_a0->unk-2 = (u16) var_a1->unk-4;
                                    } while (var_a7 != 0);
                                    var_t1 = var_a0;
                                }
                                if ((temp_a3 >> 2) != 0) {
                                    var_a1_2 = var_t1;
                                    var_a0_2 = var_a1;
                                    do {
                                        var_a1_2->unk0 = var_a0_2->unk4;
                                        var_a1_2->unk2 = (u16) var_a0_2->unk2;
                                        var_a1_2->unk4 = (u16) var_a0_2->unk0;
                                        var_a1_2->unk6 = (u16) var_a0_2->unk8;
                                        var_a1_2->unk8 = (u16) var_a0_2->unk6;
                                        var_a1_2->unkA = (u16) var_a0_2->unk4;
                                        var_a1_2->unkC = (u16) var_a0_2->unkC;
                                        var_a1_2->unkE = (u16) var_a0_2->unkA;
                                        var_a1_2->unk10 = (u16) var_a0_2->unk8;
                                        var_a1_2->unk12 = (u16) var_a0_2->unk10;
                                        var_a1_2->unk14 = (u16) var_a0_2->unkE;
                                        var_a1_2 += 0x18;
                                        temp_t0 = var_a0_2->unkC;
                                        var_a0_2 += 0x10;
                                        var_a1_2->unk-2 = temp_t0;
                                    } while (var_a0_2 != ((temp_a3 * 4) + temp_s5));
                                    var_a0 = var_a1_2;
                                }
                            }
                            var_a4 += 1;
                            if (temp_a4 != var_a4) {
                                goto loop_26;
                            }
                        }
                        var_a3 += 1;
                        if (temp_a5 != var_a3) {
                            goto loop_18;
                        }
                    }
                    glTexImage3DEXT(0x806F, sp18, (s32) sp10, (s64) temp_a3);
                    gl_free(temp_v0_2, (&sub_0f030000 - 0x55B8)->unk1A8);
                    break;
                case 0x190A:                        /* switch 1 */
                    temp_lo_2 = temp_a3 * temp_a5;
                    temp_s5_2 = arg3->unk18;
                    temp_v0_3 = gl_malloc(temp_lo_2 * temp_a4 * 4, (&sub_0f030000 - 0x55B8)->unk1A8, (u16 *) temp_lo_2, temp_a3);
                    var_a0_3 = temp_v0_3;
                    var_a3_2 = 0;
                    if (temp_a5 > 0) {
loop_48:
                        var_a4_2 = 0;
                        if (temp_a4 > 0) {
loop_55:
                            var_a1_3 = temp_s5_2;
                            if (temp_a3 > 0) {
                                var_a7_2 = temp_a3 & 3;
                                if (var_a7_2 != 0) {
                                    do {
                                        temp_at_2 = var_a1_3->unk2;
                                        var_a1_3 += 4;
                                        *var_a0_3 = temp_at_2;
                                        var_a0_3 += 4;
                                        var_a7_2 -= 1;
                                        var_a0_3->unk-2 = (u16) var_a1_3->unk-4;
                                    } while (var_a7_2 != 0);
                                }
                                if ((temp_a3 >> 2) != 0) {
                                    var_a1_4 = var_a0_3;
                                    var_a0_4 = var_a1_3;
                                    do {
                                        var_a1_4->unk0 = var_a0_4->unk2;
                                        var_a1_4->unk2 = (u16) var_a0_4->unk0;
                                        var_a1_4->unk4 = (u16) var_a0_4->unk6;
                                        var_a1_4->unk6 = (u16) var_a0_4->unk4;
                                        var_a1_4->unk8 = (u16) var_a0_4->unkA;
                                        var_a1_4->unkA = (u16) var_a0_4->unk8;
                                        var_a1_4->unkC = (u16) var_a0_4->unkE;
                                        var_a1_4 += 0x10;
                                        temp_t0_2 = var_a0_4->unkC;
                                        var_a0_4 += 0x10;
                                        var_a1_4->unk-2 = temp_t0_2;
                                    } while (var_a0_4 != ((temp_a3 * 4) + temp_s5_2));
                                    var_a0_3 = var_a1_4;
                                }
                            }
                            var_a4_2 += 1;
                            if (temp_a4 != var_a4_2) {
                                goto loop_55;
                            }
                        }
                        var_a3_2 += 1;
                        if (temp_a5 != var_a3_2) {
                            goto loop_48;
                        }
                    }
                    glTexImage3DEXT(0x806F, sp18, (s32) sp10, (s64) temp_a3);
                    gl_free(temp_v0_3, (&sub_0f030000 - 0x55B8)->unk1A8);
                    break;
                case 0x1909:                        /* switch 1 */
                case 0x8000:                        /* switch 1 */
                    glTexImage3DEXT(0x806F, sp18, (s32) sp10, (s64) temp_a3);
                    break;
                }
            }
        } else {
            switch (arg2) {                         /* switch 2; irregular */
            case 0x1907:                            /* switch 2 */
                temp_lo_3 = temp_a3 * temp_a5 * temp_a4;
                temp_s5_3 = arg3->unk18;
                temp_v0_4 = gl_malloc(temp_lo_3 * 3, (&sub_0f030000 - 0x55B8)->unk1A8, (u16 *) temp_lo_3, temp_a3);
                var_a0_5 = temp_v0_4;
                var_a3_3 = 0;
                if (temp_a5 > 0) {
loop_32:
                    var_a4_3 = 0;
                    if (temp_a4 > 0) {
loop_41:
                        var_a1_5 = temp_s5_3;
                        if (temp_a3 > 0) {
                            var_a5 = temp_a3 & 3;
                            var_t1_2 = var_a0_5;
                            if (var_a5 != 0) {
                                do {
                                    var_a0_5->unk0 = (u8) var_a1_5->unk2;
                                    temp_t0_3 = var_a1_5->unk1;
                                    var_a1_5 += 2;
                                    var_a0_5->unk1 = temp_t0_3;
                                    var_a0_5 += 3;
                                    var_a5 -= 1;
                                    var_a0_5->unk-1 = (u8) var_a1_5->unk-2;
                                } while (var_a5 != 0);
                                var_t1_2 = var_a0_5;
                            }
                            if ((temp_a3 >> 2) != 0) {
                                var_a1_6 = var_t1_2;
                                var_a0_6 = var_a1_5;
                                do {
                                    var_a1_6->unk0 = (u8) var_a0_6->unk2;
                                    var_a1_6->unk1 = (u8) var_a0_6->unk1;
                                    var_a1_6->unk2 = (u8) var_a0_6->unk0;
                                    var_a1_6->unk3 = (u8) var_a0_6->unk4;
                                    var_a1_6->unk4 = (u8) var_a0_6->unk3;
                                    var_a1_6->unk5 = (u8) var_a0_6->unk2;
                                    var_a1_6->unk6 = (u8) var_a0_6->unk6;
                                    var_a1_6->unk7 = (u8) var_a0_6->unk5;
                                    var_a1_6->unk8 = (u8) var_a0_6->unk4;
                                    var_a1_6->unk9 = (u8) var_a0_6->unk8;
                                    var_a1_6->unkA = (u8) var_a0_6->unk7;
                                    var_a1_6 += 0xC;
                                    temp_a6 = var_a0_6->unk6;
                                    var_a0_6 += 8;
                                    var_a1_6->unk-1 = temp_a6;
                                } while (var_a0_6 != ((temp_a3 * 2) + temp_s5_3));
                                var_a0_5 = var_a1_6;
                            }
                        }
                        var_a4_3 += 1;
                        if (temp_a4 != var_a4_3) {
                            goto loop_41;
                        }
                    }
                    var_a3_3 += 1;
                    if (temp_a5 != var_a3_3) {
                        goto loop_32;
                    }
                }
                glTexImage3DEXT(0x806F, sp18, (s32) sp10, (s64) temp_a3);
                gl_free(temp_v0_4, (&sub_0f030000 - 0x55B8)->unk1A8);
                break;
            case 0x190A:                            /* switch 2 */
                temp_lo_4 = temp_a3 * temp_a5;
                temp_s5_4 = arg3->unk18;
                temp_v0_5 = gl_malloc(temp_lo_4 * temp_a4 * 2, (&sub_0f030000 - 0x55B8)->unk1A8, (u16 *) temp_lo_4, temp_a3);
                var_a5_2 = temp_v0_5;
                var_a3_4 = 0;
                if (temp_a5 > 0) {
loop_64:
                    var_a4_4 = 0;
                    if (temp_a4 > 0) {
loop_71:
                        var_t1_3 = temp_s5_4;
                        if (temp_a3 > 0) {
                            var_t3 = temp_a3 & 3;
                            if (var_t3 != 0) {
                                do {
                                    temp_at_3 = var_t1_3->unk1;
                                    var_t1_3 += 2;
                                    *var_a5_2 = temp_at_3;
                                    var_a5_2 += 2;
                                    var_t3 -= 1;
                                    var_a5_2->unk-1 = (u8) var_t1_3->unk-2;
                                } while (var_t3 != 0);
                            }
                            if ((temp_a3 >> 2) != 0) {
                                var_t1_4 = var_a5_2;
                                var_a5_3 = var_t1_3;
                                do {
                                    var_t1_4->unk0 = (u8) var_a5_3->unk1;
                                    var_t1_4->unk1 = (u8) var_a5_3->unk0;
                                    var_t1_4->unk2 = (u8) var_a5_3->unk3;
                                    var_t1_4->unk3 = (u8) var_a5_3->unk2;
                                    var_t1_4->unk4 = (u8) var_a5_3->unk5;
                                    var_t1_4->unk5 = (u8) var_a5_3->unk4;
                                    var_t1_4->unk6 = (u8) var_a5_3->unk7;
                                    var_t1_4 += 8;
                                    temp_t0_4 = var_a5_3->unk6;
                                    var_a5_3 += 8;
                                    var_t1_4->unk-1 = temp_t0_4;
                                } while (var_a5_3 != ((temp_a3 * 2) + temp_s5_4));
                                var_a5_2 = var_t1_4;
                            }
                        }
                        var_a4_4 += 1;
                        if (temp_a4 != var_a4_4) {
                            goto loop_71;
                        }
                    }
                    var_a3_4 += 1;
                    if (temp_a5 != var_a3_4) {
                        goto loop_64;
                    }
                }
                glTexImage3DEXT(0x806F, sp18, (s32) sp10, (s64) temp_a3);
                gl_free(temp_v0_5, (&sub_0f030000 - 0x55B8)->unk1A8);
                break;
            case 0x1909:                            /* switch 2 */
            case 0x8000:                            /* switch 2 */
                glTexImage3DEXT(0x806F, sp18, (s32) sp10, (s64) temp_a3);
                break;
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x38, 0x3c], gap at: 0x28. */
void __UserTextureToOpenGLTextureObject(u16 *arg0) {
    s32 sp14;
    ? *sp10;
    u16 *sp4;
    ? var_s4;
    u16 *temp_s5;
    u16 *temp_v0;
    void *temp_s2;
    void *temp_s3;

    if (arg0->unk1C != 3) {
        var_s4 = 0xDE1;
    } else {
        var_s4 = 0x806F;
    }
    gl_g_texdef3d(arg0);
    temp_s5 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_s2 = &sub_0f030000 - 0x55B8;
    SetOglFormatAndComps((bitwise u16 *) (f32) arg0->unk38, temp_s2 + 0x150);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        glTexParameteri(var_s4, 0x2800, M2C_ERROR(/* Read from unset register $v0 */)->unkC);
    }
    SetOglFormatAndComps((bitwise u16 *) (f32) arg0->unk34, temp_s2 + 0xB0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        glTexParameteri(var_s4, 0x2801, M2C_ERROR(/* Read from unset register $v0 */)->unkC);
    }
    temp_s3 = temp_s2 + 0x190;
    SetOglFormatAndComps((bitwise u16 *) (f32) arg0->unk54, temp_s3);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        glTexParameteri(var_s4, 0x2802, M2C_ERROR(/* Read from unset register $v0 */)->unkC);
    }
    SetOglFormatAndComps((bitwise u16 *) (f32) arg0->unk58, temp_s3);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        glTexParameteri(var_s4, 0x2803, M2C_ERROR(/* Read from unset register $v0 */)->unkC);
    }
    SetOglFormatAndComps((bitwise u16 *) (f32) arg0->unk5C, temp_s3);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        glTexParameteri(var_s4, 0x8072, M2C_ERROR(/* Read from unset register $v0 */)->unkC);
    }
    gl_g_texdef3d(arg0);
    if (temp_s5 != NULL) {
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            gl_g_texdef3d(arg0);
        } else {
            gl_g_texdef3d(arg0);
        }
    } else if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gl_g_texdef3d(arg0);
        gl_g_texdef2d(arg0->unk1AC);
        arg0->unk1AC = NULL;
    } else {
        SetOglFormatAndComps(arg0->unk20, arg0->unk84, &sp10, &sp14);
        if (arg0->unk1C != 3) {
            temp_v0 = arg0->unk18;
            if ((temp_v0 != NULL) && (arg0->unk88 != 0xF00)) {
                if (arg0->unk80 == 0x710) {

                }
                sp4 = temp_v0;
                glTexImage2D(0xDE1, 0, sp14, arg0->unk24);
            }
        } else {
            SetOglFormatAndComps(temp_s5, (void *) sp14, sp10, (s32 *) arg0);
        }
    }
    if (arg0->unk1A8 != 0) {
        gl_free(arg0->unk18, &sub_0f020000 + 0x57B8);
    }
    arg0->unk1A8 = 0;
}

void MatchParams(f32 arg0, void *arg1) {
    s32 temp_at;
    s32 var_a3;
    void *var_s7;

    temp_at = arg1->unk4;
    var_s7 = arg1->unk8;
    var_a3 = temp_at;
    if (temp_at != 0) {
loop_1:
        var_a3 -= 1;
        if (var_s7->unk0 != arg0) {
            var_s7 += 0x10;
            if (var_a3 == 0) {
                return;
            }
            goto loop_1;
        }
        if (var_s7->unk8 != 1) {
            sprintf(sp, saved_reg_gp - 0x3E70, arg1->unk0, var_s7->unk4);
        }
    }
}
