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
    /* 0x0114 */ s32 *unk114;                       /* inferred */
    /* 0x0118 */ char pad118[0xA28];                /* maybe part of unk114[0x28B]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? bcopy(s64, s64, s64);                             /* extern */
? fclose(s64);                                      /* extern */
s64 fopen(s32);                                     /* extern */
? fread(s16 *, s32, ?, s32);                        /* extern */
? glBitmap(s32, s16, s16, s16);                     /* extern */
? glDeleteLists(s32, s32);                          /* extern */
s32 glGenLists(s64);                                /* extern */
? sprintf(? *, void *, s64);                        /* extern */
s16 strlen(s32 *);                                  /* extern */
extern s32 gl_DisplayListCharStr;
extern s32 gl_openobjhdr;
extern ? sub_0f020000;
extern ? sub_0f030000;
extern ? sub_0f090000;
extern ? sub_0f0a0000;

void gl_i_charstr(s32 arg0) {
    if (arg0 == 0) {
        return;
    }
    gl_c_charstr((s32 *)1, arg0);
}

void gl_c_charstr(s32 *arg0) {
    if (arg0 == NULL) {
        return;
    }
    gl_i_lcharstr(0, arg0, strlen(arg0));
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    gl_ecallfunc(&sub_0f090000 + 0x7E7C, &sub_0f0a0000 - 0x5CA0, 1, M2C_ERROR(/* Read from unset register $v0 */));
}

void drawcharstr(u8 *arg1) {
    s64 sp28;
    s64 sp0;
    gl_wstate *temp_s2;
    s32 temp_a0;
    s64 var_ra;
    u32 temp_s3;
    u8 *var_s2;
    u8 var_a3;
    void *temp_at;

    var_ra = saved_reg_ra;
    temp_s2 = gl_wstatep;
    if ((bitwise s32) temp_s2->modelviewStack.stack[2][0][0] == 0) {
        gl_free_fonts();
        var_ra = sp28;
    }
    temp_at = temp_s2->modelviewStack.stack[2][0][0]->unk8;
    unksp18 = (s64) temp_at;
    sp28 = var_ra;
    if (temp_at->unk14 != 0) {
        __GLlcharstr(0, arg1);
    } else {
        __GLgl_beginstring();
        temp_a0 = temp_s2->modelviewStack.stack[2][0][0]->unkC;
        temp_s3 = unksp18->unkC;
        sp0 = (s64) unksp18->unk8;
        if (temp_a0 != 0) {
            __igloo_outcharmaps(temp_a0, arg1);
        } else {
            var_a3 = *arg1;
            var_s2 = arg1 + 1;
            if (var_a3 != 0) {
loop_10:
                if (var_a3 < temp_s3) {
                    __GLgl_outcharmap((var_a3 * 0x14) + sp0, 0, sp0, var_a3);
                }
                var_a3 = *var_s2;
                var_s2 += 1;
                if (var_a3 != 0) {
                    goto loop_10;
                }
            }
        }
        __GLgl_endstring();
    }
}

void gl_g_charst(s32 *arg0, s16 arg1, ? arg3) {
    s64 sp208;
    s64 sp200;
    ? var_a3;
    s32 *var_a1_2;
    s32 *var_a6;
    s32 temp_t0;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_t2;
    u8 *var_a0_2;
    u8 *var_a1;

    var_a3 = arg3;
    var_a6 = arg0;
    if (arg0 != NULL) {
        if (gl_openobjhdr == 0) {
            var_a3 = -1;
            if (arg1 < 0x1FF) {
                var_a1 = sp;
                var_a2 = arg1 - 1;
                temp_t0 = var_a2 + 1;
                if (var_a2 != -1) {
                    var_a0 = temp_t0 & 3;
                    var_t2 = var_a2;
                    if (var_a0 != 0) {
                        do {
                            var_a2 -= 1;
                            var_a1 += 1;
                            var_a6 += 1;
                            var_a0 -= 1;
                            var_a1->unk-1 = (u8) var_a6->unk-1;
                        } while (var_a0 != 0);
                        var_t2 = var_a2;
                    }
                    var_a0_2 = var_a1;
                    if ((temp_t0 >> 2) != 0) {
                        var_a2_2 = var_t2;
                        var_a1_2 = var_a6;
                        do {
                            var_a0_2->unk0 = var_a1_2->unk0;
                            var_a0_2->unk1 = (u8) var_a1_2->unk1;
                            var_a0_2 += 4;
                            var_a0_2->unk-2 = (u8) var_a1_2->unk2;
                            var_a1_2 += 4;
                            var_a2_2 -= 4;
                            var_a0_2->unk-1 = (u8) var_a1_2->unk-1;
                        } while (var_a2_2 != -1);
                        var_a1 = var_a0_2;
                    }
                }
                *var_a1 = 0;
                sp208 = 0;
                if (gl_openobjhdr == 0) {
                    goto block_12;
                }
                goto block_17;
            }
            goto block_15;
        }
block_15:
        gl_i_lcharstr(0, var_a6, arg1, var_a3);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            sp208 = 1;
            if (gl_openobjhdr != 0) {
block_17:
                gl_ecallfunc(&sub_0f090000 + 0x7E7C, &sub_0f0a0000 - 0x5CA0, 1, M2C_ERROR(/* Read from unset register $v0 */));
            } else {
block_12:
                sp200 = M2C_ERROR(/* Read from unset register $v0 */);
                gl_c_charstr((s32 *)1, M2C_ERROR(/* Read from unset register $v0 */));
                if (sp208 != 0) {
                    gl_free(sp200, saved_reg_gp->unk-3C7C);
                }
            }
        }
    }
}

void gl_findfont(s32 arg0) {
    s64 sp10;
    s32 var_v0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_v0 = 0;
    if (arg0 != 0) {
        var_v0 = gl_find(&sub_0f030000 - 0x5B8, arg0);
        var_ra = sp10;
    }
    if (var_v0 != 0) {
        gl_wstatep->modelviewStack.stack[2][0][0] = (bitwise f32) var_v0;
        *gl_wstatep->unk114 = arg0;
    } else {
        sp10 = var_ra;
        gl_free_fonts();
    }
}

s32 gl_g_getfont(void) {
    f32 var_a2;

    var_a2 = gl_wstatep->modelviewStack.stack[2][0][0];
    if ((bitwise s32) var_a2 == 0) {
        gl_free_fonts(var_a2);
        var_a2 = gl_wstatep->modelviewStack.stack[2][0][0];
    }
    return var_a2->unk4;
}

s32 gl_g_getheight(void) {
    f32 var_a2;

    var_a2 = gl_wstatep->modelviewStack.stack[2][0][0];
    if ((bitwise s32) var_a2 == 0) {
        gl_free_fonts(var_a2);
        var_a2 = gl_wstatep->modelviewStack.stack[2][0][0];
    }
    return (s32) var_a2->unk8->unk4;
}

s32 gl_g_getdescender(void) {
    f32 var_a2;

    var_a2 = gl_wstatep->modelviewStack.stack[2][0][0];
    if ((bitwise s32) var_a2 == 0) {
        gl_free_fonts(var_a2);
        var_a2 = gl_wstatep->modelviewStack.stack[2][0][0];
    }
    return (s32) *var_a2->unk8;
}

void gl_i_font(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_findfont((s32) arg0);
}

void gl_c_font(s16 arg0) {
    if (saved_reg_gp->unk-523C == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7160);
        saved_reg_gp->unk-523C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_font(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_findfont((s32) *arg0);
}

void gl_g_strwidth(u8 *arg0) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    gl_wstate *temp_v0;
    s32 temp_a2;
    s64 var_ra;
    u8 *var_a4;
    u8 var_a0;
    void *temp_a6;

    var_ra = saved_reg_ra;
    temp_v0 = gl_wstatep;
    if (arg0 != NULL) {
        if ((bitwise s32) gl_wstatep->modelviewStack.stack[2][0][0] == 0) {
            sp10 = (s64) arg0;
            sp8 = (s64) temp_v0;
            gl_free_fonts((bitwise f32) arg0);
            var_ra = sp18;
        }
        temp_a6 = temp_v0->modelviewStack.stack[2][0][0]->unk8;
        temp_a2 = temp_a6->unk14;
        var_a4 = arg0 + 1;
        if (temp_a2 == 0) {
            var_a0 = *arg0;
            if (var_a0 != 0) {
loop_6:
                if (var_a0 < (u32) temp_a6->unkC) {

                }
                var_a0 = *var_a4;
                var_a4 += 1;
                if (var_a0 != 0) {
                    goto loop_6;
                }
            }
        } else {
            sp18 = var_ra;
            __GLlstrwidth(0, arg0, temp_a2);
        }
    }
}

void gl_g_strwid(u8 *arg0, s32 arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    gl_wstate *temp_v0;
    s32 temp_a2;
    s32 temp_a7;
    s32 var_s0;
    s64 var_ra;
    u8 *var_a0;
    u8 temp_a1_2;
    u8 temp_a1_3;
    void *temp_a1;

    var_ra = saved_reg_ra;
    temp_v0 = gl_wstatep;
    if (arg0 != NULL) {
        if ((bitwise s32) gl_wstatep->modelviewStack.stack[2][0][0] == 0) {
            sp18 = (s64) arg0;
            sp10 = (s64) temp_v0;
            gl_free_fonts((bitwise f32) gl_wstatep, (s16 *)0xFFF9AD44);
            var_ra = sp20;
        }
        temp_a1 = temp_v0->modelviewStack.stack[2][0][0]->unk8;
        var_a0 = arg0;
        if (temp_a1->unk14 == 0) {
            var_s0 = arg1 - 1;
            if (var_s0 >= 0) {
                temp_a2 = temp_a1->unkC;
                temp_a7 = var_s0 + 1;
                if (temp_a7 & 1) {
                    temp_a1_2 = *var_a0;
                    var_s0 -= 1;
                    var_a0 += 1;
                    if ((s32) temp_a1_2 < temp_a2) {

                    }
                }
                if ((temp_a7 >> 1) != 0) {
loop_12:
                    var_s0 -= 2;
                    if ((s32) var_a0->unk0 < temp_a2) {

                    }
                    temp_a1_3 = var_a0->unk1;
                    var_a0 += 2;
                    if ((s32) temp_a1_3 < temp_a2) {

                    }
                    if (var_s0 != -1) {
                        goto loop_12;
                    }
                }
            }
        } else {
            sp20 = var_ra;
            __GLlstwid(0, arg0, arg1);
        }
    }
}

void gl_g_defrasterfont(s32 arg0, s64 arg1, s32 arg2, void *arg3) {
    s64 sp18;
    s64 sp10;
    s16 *temp_a1;
    s16 *temp_a1_2;
    s16 var_a2_2;
    s16 var_t1;
    s16 var_t8;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_s1;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_v0;
    s32 var_a2_3;
    s32 var_s4;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s7;
    s32 var_t0;
    s64 temp_t0;
    s64 temp_t0_2;
    s64 var_a2;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_a5_2;
    s64 var_s5;
    s64 var_v0;
    u16 temp_a4;
    u16 temp_a4_2;
    u16 temp_a4_3;
    u16 temp_a6;
    u8 temp_a5;
    void *temp_at;
    void *var_a5;
    void *var_s0;
    void *var_s3;

    sp10 = arg1;
    var_s0 = arg3;
    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s1 = M2C_ERROR(/* Read from unset register $a5 */);
    if (arg0 != 0) {
        if ((gl_find(&sub_0f030000 - 0x5B8, arg0) == 0) && (arg2 != 0)) {
            goto block_3;
        }
        gl_remove(&sub_0f030000 - 0x5B8, arg0);
        gl_free_fonts(M2C_ERROR(/* Read from unset register $v0 */));
        if (arg2 == 0) {
            return;
        }
block_3:
        var_a5 = var_s0;
        var_a3 = 0;
        var_s6 = 0;
        var_a2 = sp18 * 2;
        if (arg2 > 0) {
            if (arg2 & 1) {
                temp_lo = ((s32) (var_a5->unk2 + 0xF) >> 4) * var_a5->unk3;
                temp_a4 = var_a5->unk0;
                if (var_a2 < (temp_a4 * 2)) {
                    var_a2 = (temp_lo + temp_a4) * 2;
                }
                var_s6 = 1;
                var_a5 += 8;
                var_a3 = temp_lo * 2;
            }
            if ((arg2 >> 1) != 0) {
loop_19:
                temp_a4_2 = var_a5->unk0;
                temp_v0 = ((s32) (var_a5->unk2 + 0xF) >> 4) * var_a5->unk3;
                if (var_a2 < (temp_a4_2 * 2)) {
                    var_a2 = (temp_v0 + temp_a4_2) * 2;
                }
                temp_lo_2 = ((s32) (var_a5->unkA + 0xF) >> 4) * var_a5->unkB;
                var_s6 += 2;
                var_a5 += 0x10;
                temp_a4_3 = var_a5->unk-8;
                if (var_a2 < (temp_a4_3 * 2)) {
                    var_a2 = (temp_lo_2 + temp_a4_3) * 2;
                }
                var_a3 = (temp_lo_2 * 2) + ((temp_v0 * 2) + var_a3);
                if (arg2 != var_s6) {
                    goto loop_19;
                }
            }
        }
        if (var_a2 < var_a3) {
            var_a2 = var_a3;
        }
        gl_free_fonts((bitwise f32) arg2, NULL, var_a2, var_a3);
        unksp48 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_s7 = unksp48->unkC;
            var_s4 = 0;
            var_s3 = unksp48->unk8->unk8;
            if (var_s7 != 0) {
                __iglooPixelStorei(0xCF5, 2);
                __iglooPixelStorei(0xCF2, 0);
            }
            var_s6_2 = 0;
            if (arg2 > 0) {
                var_s5 = 0;
loop_22:
                var_s3->unk4 = (s16) var_s0->unk2;
                var_s3->unk6 = (s16) var_s0->unk3;
                var_s3->unk8 = (s16) -var_s0->unk4;
                var_s3->unkA = (s16) -var_s0->unk5;
                var_s3->unkE = 0;
                var_s3->unkC = (s16) var_s0->unk6;
                temp_a7 = (s32) (var_s0->unk2 + 0xF) >> 4;
                temp_t0 = (s64) ((s64) temp_a7 << 0x30) >> 0x30;
                var_s3->unk10 = (s16) temp_t0;
                temp_a5 = var_s0->unk3;
                var_a3_2 = unksp48;
                var_a2_2 = 0;
                var_s6_2 += 1;
                if ((temp_a7 * temp_a5) != 0) {
                    temp_lo_3 = temp_t0 * temp_a5;
                    var_a3_2 = var_s5 + *var_a3_2->unk8->unk10;
                    var_s3->unk0 = (s32) var_a3_2;
                    if (temp_lo_3 > 0) {
                        var_t0 = temp_lo_3 & 3;
                        var_t1 = 0;
                        if (var_t0 != 0) {
                            do {
                                var_a3_2 += 2;
                                var_s5 += 2;
                                var_s4 += 1;
                                var_t0 -= 1;
                                temp_a6 = *(((var_s0->unk0 + var_a2_2) * 2) + temp_s1);
                                var_a2_2 += 1;
                                var_a3_2->unk-2 = temp_a6;
                            } while (var_t0 != 0);
                            var_t1 = var_a2_2;
                        }
                        temp_t0_2 = var_a3_2;
                        var_a3_2 = var_s5;
                        var_a5_2 = temp_t0_2;
                        if ((temp_lo_3 >> 2) != 0) {
                            var_a2_3 = var_s4;
                            var_t8 = var_t1;
                            do {
                                var_a5_2->unk0 = (u16) *(((var_s0->unk0 + var_t8) * 2) + temp_s1);
                                temp_t8 = var_t8 + 1;
                                var_a5_2->unk2 = (u16) *(((var_s0->unk0 + temp_t8) * 2) + temp_s1);
                                temp_t8_2 = temp_t8 + 1;
                                var_a5_2 += 8;
                                var_a5_2->unk-4 = (u16) *(((var_s0->unk0 + temp_t8_2) * 2) + temp_s1);
                                var_a3_2 += 8;
                                var_a2_3 += 4;
                                temp_t8_3 = temp_t8_2 + 1;
                                var_t8 = temp_t8_3 + 1;
                                var_a5_2->unk-2 = (u16) *(((var_s0->unk0 + temp_t8_3) * 2) + temp_s1);
                            } while (temp_lo_3 != var_t8);
                            var_s4 = var_a2_3;
                            var_s5 = var_a3_2;
                        }
                    }
                    var_a2_2 = 0;
                    if (var_s4 & 1) {
                        var_s5 += 2;
                        var_s4 += 1;
                    }
                    if ((s32) var_s0->unk3 > 0) {
                        var_a3_2 = temp_t0 * 2;
                        var_v0 = var_a3_2;
                        do {
                            temp_at = var_s3->unk0 + var_v0;
                            temp_at->unk-2 = (u16) (temp_at->unk-2 & *((((temp_t0 * 0x10) - var_s0->unk2) * 2) + (&sub_0f020000 + 0x7140)));
                            var_a2_2 += 1;
                            var_v0 += var_a3_2;
                        } while (var_a2_2 < (s32) var_s0->unk3);
                    }
                } else {
                    var_s3->unk0 = 0;
                }
                if (var_s7 != 0) {
                    __iglooNewList(var_s7, 0x1300, var_a2_2, var_a3_2);
                    var_s7 += 1;
                    glBitmap(var_s3->unk10 * 0x10, var_s3->unk6, var_s3->unk8, var_s3->unkA);
                    __iglooEndList();
                }
                var_s0 += 8;
                var_s3 += 0x14;
                if (arg2 != var_s6_2) {
                    goto loop_22;
                }
            }
            unksp48->unk8->unk4 = (s16) sp10;
            temp_a1 = unksp48->unk8;
            temp_a1->unkC = arg2;
            gl_free_fonts((bitwise f32) unksp48->unk8, temp_a1);
            temp_a1_2 = subroutine_arg2->unk8;
            temp_a1_2->unk2 = (s16) M2C_ERROR(/* Read from unset register $v0 */);
            gl_free_fonts((bitwise f32) subroutine_arg2->unk8, temp_a1_2);
            *subroutine_arg2->unk8 = M2C_ERROR(/* Read from unset register $v0 */);
            subroutine_arg2->unk4 = (s32) subroutine_arg0;
            gl_insert(&sub_0f030000 - 0x5B8, subroutine_arg2);
            return;
        }
        return;
    }
    gl_ErrorHandler(0x37, 2, saved_reg_gp->unk-3C78);
}

void gl_g_deflfont(s32 arg0, s64 arg1, void *arg2, s64 arg3) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 var_s2;
    s16 temp_a7;
    s32 temp_a2_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_s1;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a1_2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_t0;
    s32 var_t1;
    s32 var_t8;
    s64 temp_t0;
    s64 temp_t0_2;
    s64 temp_v0_3;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_a7;
    s64 var_s6;
    s64 var_v0;
    u16 temp_a5;
    u32 temp_a2;
    u32 var_s3;
    void *temp_a1;
    void *temp_a5_2;
    void *var_a1;
    void *var_a2;
    void *var_s0;
    void *var_s3_2;

    var_a2 = arg2;
    var_a3 = arg3;
    var_s0 = var_a2;
    temp_s1 = M2C_ERROR(/* Read from unset register $a4 */);
    if (arg0 != 0) {
        var_a1 = var_s0;
        if (arg1 != 0) {
            var_a0 = 0;
            var_s3 = var_a3 * 2;
            var_s5 = 0;
            if (arg1 > 0) {
                var_a3 = arg1;
                if (arg1 & 1) {
                    temp_lo = var_a1->unkA * ((s32) (var_a1->unk8 + 0xF) >> 4);
                    var_a2 = (void *) (var_a1->unk4 * 2);
                    if (var_s3 < (u32) var_a2) {
                        var_s3 = (u32) ((temp_lo * 2) + var_a2);
                    }
                    var_s5 = 1;
                    var_a1 += 0x14;
                    var_a0 = temp_lo * 2;
                }
                if ((var_a3 >> 1) != 0) {
loop_16:
                    var_s5 += 2;
                    temp_a2 = var_a1->unk4 * 2;
                    temp_v0 = var_a1->unkA * ((s32) (var_a1->unk8 + 0xF) >> 4) * 2;
                    if (var_s3 < temp_a2) {
                        var_s3 = temp_v0 + temp_a2;
                    }
                    temp_lo_2 = var_a1->unk1E * ((s32) (var_a1->unk1C + 0xF) >> 4);
                    temp_a2_2 = var_a1->unk18;
                    var_a1 += 0x28;
                    var_a2 = (void *) (temp_a2_2 * 2);
                    temp_v0_2 = temp_lo_2 * 2;
                    if (var_s3 < (u32) var_a2) {
                        var_s3 = (u32) (temp_v0_2 + var_a2);
                    }
                    var_a0 = temp_v0_2 + (temp_v0 + var_a0);
                    if (arg1 != var_s5) {
                        goto loop_16;
                    }
                }
            }
            if ((s32) var_s3 < var_a0) {
                var_s3 = (u32) var_a0;
            }
            temp_v0_3 = gl_find(&sub_0f030000 - 0x5B8, arg0, (u32) var_a2, var_a3);
            sp0 = temp_v0_3;
            if (temp_v0_3 == 0) {
                sp8 = 1;
                gl_free_fonts(0.0f, (s16 *) arg1, (s64) var_s3);
                sp0 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    var_s2 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
                    goto block_19;
                }
                return;
            }
            var_s2 = temp_v0_3->unk8;
            gl_free_fonts(var_s2, NULL, arg1, (s64) var_s3);
            sp8 = 0;
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
block_19:
                sp10 = (s64) arg0;
                var_s4 = 0;
                var_s5_2 = 0;
                var_s3_2 = var_s2->unk10->unk4;
                if (arg1 > 0) {
                    var_s6 = 0;
loop_33:
                    var_s3_2->unk0 = 0;
                    var_s3_2->unkC = (s16) var_s0->unk8;
                    var_s3_2->unkE = (s16) var_s0->unkA;
                    var_a1_2 = var_s0->unk0;
                    var_s3_2->unk4 = var_a1_2;
                    var_s3_2->unk10 = (s16) -var_s0->unkC;
                    var_s3_2->unk12 = (s16) -var_s0->unkE;
                    var_s3_2->unk14 = (s16) var_s0->unk10;
                    var_s3_2->unk16 = (s16) var_s0->unk12;
                    temp_t0 = (s64) ((s64) ((s32) (var_s0->unk8 + 0xF) >> 4) << 0x30) >> 0x30;
                    var_s3_2->unk18 = (s16) temp_t0;
                    temp_a7 = var_s0->unkA;
                    var_a3_2 = sp0;
                    var_a2_2 = 0;
                    var_s5_2 += 1;
                    if ((temp_a7 != 0) && (var_s0->unk8 != 0)) {
                        temp_lo_3 = temp_a7 * temp_t0;
                        var_a3_2 = var_s6 + *var_a3_2->unk8->unk10;
                        var_s3_2->unk8 = (s32) var_a3_2;
                        if (temp_lo_3 > 0) {
                            var_t0 = temp_lo_3 & 3;
                            var_t1 = 0;
                            if (var_t0 != 0) {
                                do {
                                    var_a3_2 += 2;
                                    var_s6 += 2;
                                    var_s4 += 1;
                                    var_t0 -= 1;
                                    temp_a5 = *(((var_s0->unk4 + var_a2_2) * 2) + temp_s1);
                                    var_a2_2 += 1;
                                    var_a3_2->unk-2 = temp_a5;
                                } while (var_t0 != 0);
                                var_t1 = var_a2_2;
                            }
                            temp_t0_2 = var_a3_2;
                            var_a3_2 = var_s6;
                            var_a7 = temp_t0_2;
                            if ((temp_lo_3 >> 2) != 0) {
                                var_a2_3 = var_s4;
                                var_t8 = var_t1;
                                do {
                                    var_a7->unk0 = (u16) *(((var_s0->unk4 + var_t8) * 2) + temp_s1);
                                    temp_t8 = var_t8 + 1;
                                    var_a7->unk2 = (u16) *(((var_s0->unk4 + temp_t8) * 2) + temp_s1);
                                    temp_t8_2 = temp_t8 + 1;
                                    var_a7 += 8;
                                    var_a7->unk-4 = (u16) *(((var_s0->unk4 + temp_t8_2) * 2) + temp_s1);
                                    var_a3_2 += 8;
                                    var_a2_3 += 4;
                                    temp_t8_3 = temp_t8_2 + 1;
                                    var_t8 = temp_t8_3 + 1;
                                    var_a7->unk-2 = (u16) *(((var_s0->unk4 + temp_t8_3) * 2) + temp_s1);
                                } while (temp_lo_3 != var_t8);
                                var_s4 = var_a2_3;
                                var_s6 = var_a3_2;
                            }
                        }
                        if (var_s4 & 1) {
                            var_s6 += 2;
                            var_s4 += 1;
                        }
                        var_a2_2 = 0;
                        if (var_s0->unkA > 0) {
                            var_a3_2 = temp_t0 * 2;
                            var_v0 = var_a3_2;
                            do {
                                temp_a5_2 = var_s3_2->unk8 + var_v0;
                                temp_a5_2->unk-2 = (u16) (temp_a5_2->unk-2 & *((((temp_t0 * 0x10) - var_s0->unk8) * 2) + (&sub_0f020000 + 0x7140)));
                                var_a2_2 += 1;
                                var_v0 += var_a3_2;
                            } while (var_a2_2 < var_s0->unkA);
                        }
                        var_a1_2 = var_s3_2->unk4;
                    } else {
                        var_s3_2->unk8 = 0;
                    }
                    gl_remove(var_s2->unk14, var_a1_2, var_a2_2, (s32) var_a3_2);
                    temp_a1 = var_s3_2;
                    var_s3_2 += 0x1C;
                    gl_insert(var_s2->unk14, (s64) temp_a1);
                    var_s0 += 0x14;
                    if (arg1 != var_s5_2) {
                        goto loop_33;
                    }
                }
                var_s2->unkC = 0;
                gl_free_fonts(var_s2);
                var_s2->unk0 = (s16) M2C_ERROR(/* Read from unset register $v0 */);
                gl_free_fonts(var_s2);
                var_s2->unk2 = (s16) M2C_ERROR(/* Read from unset register $v0 */);
                gl_free_fonts(var_s2);
                var_s2->unk4 = (s16) M2C_ERROR(/* Read from unset register $v0 */);
                if (sp8 != 0) {
                    sp0->unk4 = (s32) sp10;
                    gl_insert(&sub_0f030000 - 0x5B8, sp0);
                }
                return;
            }
            return;
        }
        gl_remove(&sub_0f030000 - 0x5B8, arg0);
        gl_free_fonts(M2C_ERROR(/* Read from unset register $v0 */));
        return;
    }
    gl_ErrorHandler(0x37, 2, saved_reg_gp->unk-3C74);
}

void gl_g_lstrwidth(s64 arg0, s32 arg1) {
    s32 sp4C;
    s64 sp30;
    s64 sp20;
    s64 sp0;
    gl_wstate *temp_v0;
    s16 var_a2;
    s32 var_a1_2;
    s64 var_ra;
    u32 temp_s3_2;
    u32 var_a1;
    void *temp_a4;
    void *temp_s3;

    var_ra = saved_reg_ra;
    sp4C = arg1;
    temp_v0 = gl_wstatep;
    if (arg1 != 0) {
        if ((bitwise s32) gl_wstatep->modelviewStack.stack[2][0][0] == 0) {
            sp30 = (s64) temp_v0;
            gl_free_fonts();
            var_ra = sp20;
        }
        temp_a4 = temp_v0->modelviewStack.stack[2][0][0]->unk8;
        sp20 = var_ra;
        temp_s3 = temp_a4->unk14;
        if (temp_s3 == NULL) {
            sp0 = (s64) temp_a4->unk8;
            temp_s3_2 = temp_a4->unkC;
            gl_i_lcharstr(arg0, &sp4C);
            var_a1 = M2C_ERROR(/* Read from unset register $v0 */);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
loop_14:
                var_a2 = var_a1 * 5;
                if (var_a1 < temp_s3_2) {
                    var_a2 = ((var_a1 * 0x14) + sp0)->unkC;
                }
                gl_i_lcharstr(arg0, &sp4C, var_a2);
                var_a1 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    goto loop_14;
                }
            }
        } else {
            gl_i_lcharstr(arg0, &sp4C);
            var_a1_2 = M2C_ERROR(/* Read from unset register $v0 */);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
loop_9:
                if (gl_find(temp_s3, var_a1_2) != NULL) {

                }
                gl_i_lcharstr(arg0, &sp4C);
                var_a1_2 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    goto loop_9;
                }
            }
        }
    }
}

void gl_g_lstwid(s64 arg0, s64 arg1) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp18 = arg0;
    sp10 = arg1;
    if (arg1 == 0) {
        return;
    }
    gl_i_lcharstr(sp18, (s32 *) sp10);
    sp8 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    sp0 = __GLlstrwidth(sp18, (u8 *) sp10);
    gl_free(sp8, saved_reg_gp->unk-3C70);
}

void mbdrawcharstr(s32 arg1, s64 arg2) {
    s32 sp4C;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    s32 var_at;
    s64 temp_a2;
    u32 temp_s2_3;
    void *temp_s2;
    void *temp_s2_2;

    sp4C = arg1;
    if (arg1 != 0) {
        sp0 = (s64) gl_wstatep;
        if ((bitwise s32) gl_wstatep->modelviewStack.stack[2][0][0] == 0) {
            gl_free_fonts((bitwise f32) gl_wstatep, (s16 *)0xFFF99E44);
        }
        __GLgl_beginstring();
        temp_s2 = sp0->unkBC8->unk8;
        sp8 = (s64) temp_s2;
        temp_s2_2 = temp_s2->unk14;
        if (temp_s2_2 == NULL) {
            temp_s2_3 = sp8->unkC;
            gl_i_lcharstr(arg2, &sp4C);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                var_at = (u32) M2C_ERROR(/* Read from unset register $v0 */) < temp_s2_3;
loop_15:
                if (var_at != 0) {
                    temp_a2 = ((M2C_ERROR(/* Read from unset register $v0 */) * 4) + M2C_ERROR(/* Read from unset register $v0 */)) * 4;
                    __GLgl_outcharmap(sp8->unk8 + temp_a2, 0, temp_a2);
                }
                gl_i_lcharstr(arg2, &sp4C);
                var_at = (u32) M2C_ERROR(/* Read from unset register $v0 */) < temp_s2_3;
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    goto loop_15;
                }
            }
        } else {
            gl_i_lcharstr(arg2, &sp4C);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
loop_9:
                temp_v0 = gl_find(temp_s2_2, M2C_ERROR(/* Read from unset register $v0 */));
                if (temp_v0 != 0) {
                    __GLgl_outcharmap(temp_v0 + 8, 0);
                }
                gl_i_lcharstr(arg2, &sp4C);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    goto loop_9;
                }
            }
        }
        __GLgl_endstring();
    }
}

void gl_c_lchstr(s64 arg0, s32 arg1) {
    s64 sp0;

    sp0 = arg0;
    if (arg1 == 0) {
        return;
    }
    gl_i_lcharstr(sp0);
    gl_ecallfunc(&sub_0f0a0000 - 0x6BFC, &sub_0f0a0000 - 0x5CA0, 2, M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_i_lchstr(s64 arg0, s32 arg1) {
    s64 sp8;
    s64 sp0;

    sp8 = arg0;
    if (arg1 == 0) {
        return;
    }
    gl_i_lcharstr(sp8);
    sp0 = M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_lstwid(1, M2C_ERROR(/* Read from unset register $v0 */), sp8);
    gl_free(sp0, saved_reg_gp->unk-3C6C);
}

void gl_c_lcharstr(s64 arg0, s32 *arg1) {
    if (arg1 == NULL) {
        return;
    }
    gl_i_lcharstr(arg0, arg1);
    gl_i_lcharstr(arg0, arg1, M2C_ERROR(/* Read from unset register $v0 */));
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    gl_ecallfunc(&sub_0f0a0000 - 0x6BFC, &sub_0f0a0000 - 0x5CA0, 2, M2C_ERROR(/* Read from unset register $v0 */));
}

void gl_i_lcharstr(s64 arg0, s32 *arg1) {
    if (arg1 == NULL) {
        return;
    }
    gl_g_lstwid(1, arg0);
}

void mbstrlen(s64 arg0, s32 arg1) {
    s32 sp2C;

    sp2C = arg1;
    gl_i_lcharstr((s64) &sp2C);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        do {
            gl_i_lcharstr(arg0, &sp2C);
        } while (M2C_ERROR(/* Read from unset register $v0 */) != 0);
    }
}

void mbmkstr(s32 arg0, s64 arg1, s32 arg2, s16 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s16 var_a3;
    s32 var_a5;
    s32 var_s0;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_lo;
    s64 temp_v0;
    void *var_a0;
    void *var_a0_2;

    var_a3 = arg3;
    var_v0 = arg2;
    sp8 = arg1;
    if (arg0 != 0) {
        if ((arg0 != 1) && (var_a3 = 0x10, (arg0 != 0x100))) {
            switch (arg0) {                         /* irregular */
            case 0x11:
            case 0x101:
                var_s0 = 4;
                goto block_8;
            case 0x10:
                var_s0 = 3;
                goto block_8;
            }
        } else {
            var_s0 = 2;
            goto block_8;
        }
    } else {
        var_s0 = 1;
block_8:
        if (var_v0 > 0x186A0) {
            var_v0 = 0x186A0;
        }
        temp_lo = var_v0 * var_s0;
        sp10 = temp_lo;
        temp_a0 = temp_lo + var_s0;
        sp0 = temp_a0;
        temp_v0 = gl_malloc(temp_a0, saved_reg_gp->unk-3C68, var_a3);
        sp18 = temp_v0;
        if (temp_v0 == 0) {
            return;
        }
        bcopy(sp8, sp18, sp10);
        var_a5 = var_s0 & 3;
        if (var_s0 > 0) {
            var_a0 = sp10 + sp18;
            if (var_a5 != 0) {
                do {
                    var_a0 += 1;
                    var_a5 -= 1;
                    var_a0->unk-1 = 0;
                } while (var_a5 != 0);
            }
            if ((var_s0 >> 2) != 0) {
                var_a0_2 = var_a0;
                do {
                    var_a0_2->unk3 = 0;
                    var_a0_2->unk2 = 0;
                    var_a0_2->unk1 = 0;
                    var_a0_2 += 4;
                    var_a0_2->unk-4 = 0;
                } while (var_a0_2 != (sp0 + sp18));
            }
        }
    }
}

s32 mbgetnext(s32 arg0, void **arg1) {
    u8 var_v0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;

    var_v0 = 0;
    if (arg0 != 0x11) {
        if (arg0 != 0x10) {
            if (arg0 != 1) {
                if (arg0 != 0) {
                    if (arg0 != 0x100) {
                        if (arg0 == 0x101) {
                            temp_v0_2 = *arg1 + 4;
                            *arg1 = temp_v0_2;
                            return temp_v0_2->unk-4;
                        }
                        /* Duplicate return node #11. Try simplifying control flow for better match */
                        return (s32) var_v0;
                    }
                    temp_v0 = *arg1 + 2;
                    *arg1 = temp_v0;
                    return (s32) temp_v0->unk-2;
                }
                var_a0 = *arg1;
                goto block_10;
            }
            var_a0_2 = *arg1;
            goto block_9;
        }
        var_a0_3 = *arg1;
        goto block_8;
    }
    var_a0_3 = *arg1 + 1;
    *arg1 = var_a0_3;
    var_v0 = var_a0_3->unk-1;
block_8:
    var_a0_2 = var_a0_3 + 1;
    *arg1 = var_a0_2;
    var_v0 = var_a0_2->unk-1 + (var_v0 << 8);
block_9:
    var_a0 = var_a0_2 + 1;
    *arg1 = var_a0;
    var_v0 = var_a0->unk-1 + (var_v0 << 8);
block_10:
    temp_v1 = var_a0 + 1;
    *arg1 = temp_v1;
    var_v0 = temp_v1->unk-1 + (var_v0 << 8);
    return (s32) var_v0;
}

void gl_free_fonts(void) {
    ? **var_s4;
    ? *temp_s0;
    ? *var_a0;
    void *temp_s5;

    var_s4 = &sub_0f030000 - 0x5B8;
    temp_s5 = var_s4 + 0x200;
loop_2:
    var_a0 = *var_s4;
    var_s4 += 4;
    if (var_a0 != NULL) {
        do {
            temp_s0 = *var_a0;
            gl_free_fonts((bitwise f32) var_a0);
            var_a0 = temp_s0;
        } while (temp_s0 != NULL);
    }
    var_s4->unk-4 = 0;
    if (var_s4 != temp_s5) {
        goto loop_2;
    }
    gl_free_fonts((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF99810)->unk-5240);
}

void fntfromfile(s32 arg0) {
    s64 spB8;
    s64 sp70;
    s64 sp68;
    s16 sp60;
    s16 sp5E;
    s16 sp5C;
    s16 sp5A;
    s16 sp58;
    ? sp8;
    s16 *temp_a0;
    s16 *var_s1;
    s16 var_a2;
    s32 temp_a4;
    s32 temp_lo;
    s32 temp_v1;
    s32 var_s0;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4_3;
    s32 var_s5;
    s64 temp_v0;
    s64 var_s4;
    s64 var_s4_2;
    void *temp_s1;
    void *temp_s7;

    var_s4 = saved_reg_s4;
    fread(sp, 8, 1, arg0);
    if ((subroutine_arg0 != 0x5532) || (subroutine_arg1 != 0x5532)) {
        sprintf(&sp8, &sub_0f020000 + 0x22A8);
        gl_ErrorHandler(0x6D, 2, &sp8);
        return;
    }
    fread(&sp58, 2, 1, arg0);
    fread(&sp5A, 2, 1, arg0);
    fread(&sp5C, 2, 1, arg0);
    fread(&sp5E, 2, 1, arg0);
    fread(&sp60, 2, 1, arg0);
    fread(sp, 4, 1, arg0);
    temp_v1 = sp5A + 0xF;
    gl_free_fonts((bitwise f32) sp5E, NULL, ((s32) (((u32) (temp_v1 >> 3) >> 0x1C) + temp_v1) >> 4) * sp5C * sp5E * 2);
    temp_s7 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
    var_s0 = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
    temp_s7->unk0 = sp58;
    temp_s7->unk2 = sp5A;
    temp_s7->unk4 = sp5C;
    sp68 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_s7->unkC = (s32) sp5E;
    var_s1 = temp_s7->unk8;
    temp_v0 = gl_malloc(sp5E * 4, saved_reg_gp->unk-3C80, sp5E, sp5C);
    sp70 = temp_v0;
    fread((s16 *) temp_v0, sp5E * 4, 1, arg0);
    var_s3 = 0;
    if (sp5E > 0) {
        var_s4_2 = sp70;
loop_7:
        var_s3 += 1;
        var_s4_2 += 4;
        if (*var_s4_2 != 0) {
            fread(var_s1, 0x12, 1, arg0);
        } else {
            var_s1->unkC = 0;
            var_s1->unkE = 0;
            var_s1->unk8 = 0;
            var_s1->unkA = 0;
            var_s1->unk4 = 0;
            var_s1->unk6 = 0;
            var_s1->unk10 = 0;
        }
        var_s1->unk0 = 0;
        var_s1 += 0x14;
        if (var_s3 < sp5E) {
            goto loop_7;
        }
        var_s4 = spB8;
    }
    gl_free(sp70, saved_reg_gp->unk-3C80);
    var_s5 = 0;
    if (var_s0 != 0) {
        __iglooPixelStorei(0xCF5, 2);
        __iglooPixelStorei(0xCF2, 0);
    }
    var_s3_2 = 0;
    if (sp5E > 0) {
        spB8 = var_s4;
        var_s4_3 = 0;
loop_17:
        temp_s1 = temp_s7->unk8 + var_s4_3;
        var_a2 = temp_s1->unk10;
        temp_lo = temp_s1->unk6 * var_a2;
        var_s4_3 += 0x14;
        if (temp_lo != 0) {
            temp_a4 = var_s5 * 2;
            var_s5 += temp_lo;
            temp_a0 = *temp_s7->unk10 + temp_a4;
            temp_s1->unk0 = temp_a0;
            fread(temp_a0, temp_lo, 2, arg0);
            var_a2 = var_s5 & 1;
            if (var_a2 != 0) {
                var_s5 += 1;
            }
        }
        if (var_s0 != 0) {
            __iglooNewList(var_s0, 0x1300, var_a2);
            var_s0 += 1;
            glBitmap(temp_s1->unk10 * 0x10, temp_s1->unk6, temp_s1->unk8, temp_s1->unkA);
            __iglooEndList();
        }
        var_s3_2 += 1;
        if (var_s3_2 < sp5E) {
            goto loop_17;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x50, 0x54, 0x68, 0x6c], gap at: 0x60. */
void fntread(s64 arg0) {
    s64 temp_v0;

    unksp58 = arg0;
    temp_v0 = fopen(saved_reg_gp - 0x4B98);
    unksp60 = temp_v0;
    if (temp_v0 == 0) {
        sprintf(sp, &sub_0f020000 + 0x22C8, unksp58);
        gl_ErrorHandler(0x4B, 2, sp);
        return;
    }
    gl_free_fonts((bitwise f32) temp_v0);
    M2C_ERROR(/* Read from unset register $v0 */)->unk4 = 0;
    fclose(unksp60);
}

void fntrecfree(void *arg0) {
    s32 temp_a0;

    if (arg0 != NULL) {
        if (arg0->unk4 == 0) {
            saved_reg_gp->unk-5240 = 0;
        }
        temp_a0 = arg0->unkC;
        if (temp_a0 != 0) {
            glDeleteLists(temp_a0, arg0->unk8->unkC);
        }
        gl_free_fonts((bitwise f32) arg0->unk8);
        gl_free((s64) arg0, saved_reg_gp->unk-3C64);
    }
}

void fntrecnew(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 temp_v0;
    s64 temp_v0_2;
    void *temp_a1;
    void *temp_v0_3;
    void *temp_v0_4;

    sp10 = arg2;
    sp18 = arg1;
    sp20 = arg0;
    temp_v0 = gl_malloc(0x10, saved_reg_gp->unk-3C60);
    sp28 = temp_v0;
    if (temp_v0 == 0) {
        return;
    }
    bzero((void *) temp_v0, 0x10U);
    temp_v0_2 = gl_malloc(0x18, saved_reg_gp->unk-3C60);
    if (temp_v0_2 == 0) {
        return;
    }
    bzero((void *) temp_v0_2, 0x18U);
    sp28->unk8 = (s32) temp_v0_2;
    gl_free_fonts((bitwise f32) temp_v0_2, (s16 *) sp20, sp18, sp10);
    temp_a1 = saved_reg_gp->unk-3C60;
    if (temp_v0_2->unk10 != 0) {
        if (sp18 != 0) {
            temp_v0_3 = gl_malloc(0x200, temp_a1);
            subroutine_arg2->unk14 = temp_v0_3;
            if (temp_v0_3 == NULL) {
                return;
            }
            bzero(temp_v0_3, 0x200U);
        } else {
            temp_v0_4 = gl_malloc(sp20 * 0x14, temp_a1, (s16) sp20);
            subroutine_arg2->unk8 = temp_v0_4;
            if (temp_v0_4 == NULL) {
                return;
            }
            bzero(temp_v0_4, (u32) subroutine_arg0);
            if (gl_DisplayListCharStr == 1) {
                sp28->unkC = glGenLists(sp20);
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x38, 0x3c], gap at: 0x28. */
void ras_new(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp10;
    s64 var_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    sp10 = arg2;
    unksp28 = arg3;
    unksp20 = arg1;
    unksp30 = arg0;
    temp_v0 = gl_malloc(0xC, saved_reg_gp->unk-3C5C);
    if (temp_v0 == NULL) {
        return;
    }
    bzero(temp_v0, 0xCU);
    var_a3 = sp10;
    if (unksp20 != 0) {
        var_a3 = unksp20;
    }
    temp_v0_2 = gl_malloc((var_a3 * 2) + unksp28, saved_reg_gp->unk-3C5C, (s16) unksp28, (s16) var_a3);
    temp_v0->unk0 = temp_v0_2;
    if (temp_v0_2 == NULL) {
        return;
    }
    bzero(temp_v0_2, (u32) subroutine_arg2);
    if (sp10 != 0) {
        temp_v0_3 = gl_malloc(sp10 * 0x1C, saved_reg_gp->unk-3C5C);
        temp_v0->unk4 = temp_v0_3;
        bzero(temp_v0_3, (u32) subroutine_arg0);
    } else {
        temp_v0->unk4 = NULL;
    }
    temp_v0->unk8 = (void *) unksp30->unk10;
    unksp30->unk10 = temp_v0;
}

void fntfree(void *arg0) {
    s64 sp8;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s64 var_ra;
    void *temp_a0_5;
    void *var_s1;

    var_ra = saved_reg_ra;
    if (arg0 != NULL) {
        temp_a0 = arg0->unk8;
        if (temp_a0 != 0) {
            gl_free((s64) temp_a0, saved_reg_gp->unk-3C58);
            var_ra = sp8;
        }
        temp_a0_2 = arg0->unk14;
        if (temp_a0_2 != 0) {
            sp8 = var_ra;
            gl_free((s64) temp_a0_2, saved_reg_gp->unk-3C58);
        }
        var_s1 = arg0->unk10;
        sp8 = var_ra;
        if (var_s1 != NULL) {
            sp8 = var_ra;
loop_9:
            temp_a0_3 = var_s1->unk0;
            if (temp_a0_3 != 0) {
                gl_free((s64) temp_a0_3, saved_reg_gp->unk-3C58);
            }
            temp_a0_4 = var_s1->unk4;
            if (temp_a0_4 != 0) {
                gl_free((s64) temp_a0_4, saved_reg_gp->unk-3C58);
            }
            temp_a0_5 = var_s1;
            var_s1 = var_s1->unk8;
            if (temp_a0_5 == NULL) {
                if (var_s1 != NULL) {
                    goto loop_9;
                }
            } else {
                gl_free((s64) temp_a0_5, saved_reg_gp->unk-3C58);
                if (var_s1 != NULL) {
                    goto loop_9;
                }
            }
        }
        gl_free((s64) arg0, saved_reg_gp->unk-3C58);
    }
}

void freecharstr(s64 arg1) {
    gl_free(arg1, &sub_0f020000 + 0x22F0);
}

void set_def_font(void) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    if (saved_reg_gp->unk-5240 == 0) {
        gl_free_fonts((bitwise f32) (&sub_0f020000 + 0x2300));
        saved_reg_gp->unk-5240 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
    temp_s8->modelviewStack.stack[2][0][0] = M2C_ERROR(/* Read from unset register $v0 */);
    *temp_s8->unk114 = 0;
}

void fntheight(void *arg0) {
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a3;
    s16 var_v0;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a4;
    void **var_a4_2;
    void *temp_a6;
    void *var_a0;
    void *var_a3;

    temp_a6 = arg0->unk8;
    var_v0 = 0;
    if (temp_a6 != NULL) {
        temp_a5 = arg0->unkC;
        var_a3 = temp_a6;
        var_a4 = 0;
        if (temp_a5 > 0) {
            if (temp_a5 & 1) {
                temp_a0 = var_a3->unk6;
                if (temp_a0 > 0) {
                    var_v0 = temp_a0;
                }
                var_a4 = 1;
                var_a3 += 0x14;
            }
            if ((temp_a5 >> 1) != 0) {
loop_9:
                temp_a0_2 = var_a3->unk6;
                var_a4 += 2;
                if (var_v0 < temp_a0_2) {
                    var_v0 = temp_a0_2;
                }
                temp_a0_3 = var_a3->unk1A;
                var_a3 += 0x28;
                if (var_v0 < temp_a0_3) {
                    var_v0 = temp_a0_3;
                }
                if (temp_a5 != var_a4) {
                    goto loop_9;
                }
            }
        }
        return;
    }
    var_a4_2 = arg0->unk14;
    temp_a5_2 = var_a4_2 + 0x200;
loop_15:
    var_a0 = *var_a4_2;
    var_a4_2 += 4;
    if (var_a0 != NULL) {
loop_18:
        temp_a3 = var_a0->unkE;
        if (var_v0 < temp_a3) {
            var_v0 = temp_a3;
        }
        var_a0 = var_a0->unk0;
        if (var_a0 != NULL) {
            goto loop_18;
        }
    }
    if (var_a4_2 != temp_a5_2) {
        goto loop_15;
    }
}

void fntdescender(void *arg0) {
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a3;
    s16 var_v0;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a4;
    void **var_a4_2;
    void *temp_a6;
    void *var_a0;
    void *var_a3;

    temp_a6 = arg0->unk8;
    var_v0 = 0;
    if (temp_a6 != NULL) {
        temp_a5 = arg0->unkC;
        var_a3 = temp_a6;
        var_a4 = 0;
        if (temp_a5 > 0) {
            if (temp_a5 & 1) {
                temp_a0 = var_a3->unkA;
                if (temp_a0 > 0) {
                    var_v0 = temp_a0;
                }
                var_a4 = 1;
                var_a3 += 0x14;
            }
            if ((temp_a5 >> 1) != 0) {
loop_9:
                temp_a0_2 = var_a3->unkA;
                var_a4 += 2;
                if (var_v0 < temp_a0_2) {
                    var_v0 = temp_a0_2;
                }
                temp_a0_3 = var_a3->unk1E;
                var_a3 += 0x28;
                if (var_v0 < temp_a0_3) {
                    var_v0 = temp_a0_3;
                }
                if (temp_a5 != var_a4) {
                    goto loop_9;
                }
            }
        }
        return;
    }
    var_a4_2 = arg0->unk14;
    temp_a5_2 = var_a4_2 + 0x200;
loop_15:
    var_a0 = *var_a4_2;
    var_a4_2 += 4;
    if (var_a0 != NULL) {
loop_18:
        temp_a3 = var_a0->unk12;
        if (var_v0 < temp_a3) {
            var_v0 = temp_a3;
        }
        var_a0 = var_a0->unk0;
        if (var_a0 != NULL) {
            goto loop_18;
        }
    }
    if (var_a4_2 != temp_a5_2) {
        goto loop_15;
    }
}

void fntwidth(void *arg0) {
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a3_2;
    s16 var_v0;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a4;
    void **var_a4_2;
    void *temp_a3;
    void *temp_a6;
    void *var_a0;
    void *var_a3;

    temp_a6 = arg0->unk8;
    var_v0 = 0;
    if (temp_a6 != NULL) {
        temp_a5 = arg0->unkC;
        var_a3 = temp_a6;
        var_a4 = 0;
        if (temp_a5 > 0) {
            if (temp_a5 & 1) {
                if (var_a3 != NULL) {
                    temp_a0 = var_a3->unkC;
                    if (temp_a0 > 0) {
                        var_v0 = temp_a0;
                    }
                }
                var_a4 = 1;
                var_a3 += 0x14;
            }
            if ((temp_a5 >> 1) != 0) {
loop_10:
                if (var_a3 != NULL) {
                    temp_a0_2 = var_a3->unkC;
                    if (var_v0 < temp_a0_2) {
                        var_v0 = temp_a0_2;
                    }
                }
                var_a4 += 2;
                temp_a3 = var_a3 + 0x14;
                if (temp_a3 != NULL) {
                    temp_a0_3 = temp_a3->unkC;
                    if (var_v0 < temp_a0_3) {
                        var_v0 = temp_a0_3;
                    }
                }
                var_a3 = temp_a3 + 0x14;
                if (temp_a5 != var_a4) {
                    goto loop_10;
                }
            }
        }
        return;
    }
    var_a4_2 = arg0->unk14;
    temp_a5_2 = var_a4_2 + 0x200;
loop_18:
    var_a0 = *var_a4_2;
    var_a4_2 += 4;
    if (var_a0 != NULL) {
loop_21:
        temp_a3_2 = var_a0->unk14;
        if (var_v0 < temp_a3_2) {
            var_v0 = temp_a3_2;
        }
        var_a0 = var_a0->unk0;
        if (var_a0 != NULL) {
            goto loop_21;
        }
    }
    if (var_a4_2 != temp_a5_2) {
        goto loop_18;
    }
}
