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

? XGetWindowAttributes(s32, s64, void *);           /* extern */
? XInternAtoms(s32, void *, ?, ?);                  /* extern */
? XMapWindow(s32, s64);                             /* extern */
? XReparentWindow(s32, s64, s32, ?);                /* extern */
? XResizeWindow(s32, s64, ?, ?);                    /* extern */
s64 XScreenNumberOfScreen(s32);                     /* extern */
? XUnmapWindow(s32, s64);                           /* extern */
? bcopy(? *, void *, s32, ?);                       /* extern */
extern s32 GLlasterror;
extern s32 __iglooMixedModel;
extern s32 __iglooNoReleaseContext;
extern ? gl_mix_template;
extern s32 gl_nscrns;
extern void *gl_scrntab;
extern s32 gl_template_size;
extern ? sub_0f020000;
extern ? sub_0f030000;

void gl_InitKnownAtoms(void *arg0) {
    arg0->unk18 = gl_malloc(0x30, &sub_0f020000 + 0x5DE0, 0xFFF06174);
    XInternAtoms(arg0->unk4, &sub_0f030000 - 0x5198, 0xC, 0);
    arg0->unk18->unk0 = (s32) subroutine_arg0;
    arg0->unk18->unk4 = (s32) subroutine_arg1;
    arg0->unk18->unk8 = (s32) subroutine_arg2;
    arg0->unk18->unkC = 7;
    arg0->unk18->unk10 = (s32) subroutine_arg3;
    arg0->unk18->unk14 = sp10;
    arg0->unk18->unk18 = sp14;
    arg0->unk18->unk1C = sp18;
    arg0->unk18->unk20 = sp1C;
    arg0->unk18->unk24 = sp20;
    arg0->unk18->unk28 = sp24;
    arg0->unk18->unk2C = sp28;
}

void gl_glx_findwindow(s32 arg1) {
    void *temp_v0;
    void *var_v0;

    if (arg1 != 0) {
        temp_v0 = gl_glx_finddisplay();
        if ((temp_v0 != NULL) && (var_v0 = temp_v0->unk14, (var_v0 != NULL))) {
loop_3:
            if ((var_v0->unk40 != arg1) && (var_v0->unk8 != arg1) && (var_v0->unk88 != arg1) && (var_v0->unk8C != arg1) && (var_v0->unk90 != arg1)) {
                var_v0 = var_v0->unk0;
                if (var_v0 == NULL) {

                } else {
                    goto loop_3;
                }
            }
        }
    }
}

void gl_g_gconfig(s32 arg0) {
    s32 var_a0;
    u32 temp_a1;

    var_a0 = arg0;
    if (gl_wstatep != NULL) {
        temp_a1 = gl_wstatep->active;
        if (temp_a1->unk2C == 5) {
            gl_ErrorHandler(4, 2, &sub_0f020000 + 0x5E10);
        } else {
            if (temp_a1 != 0) {
                var_a0 = temp_a1->unk20 | 0x3000;
                temp_a1->unk20 = var_a0;
            }
            gl_gconfig(var_a0, temp_a1, gl_wstatep);
        }
    } else {
        gl_ErrorHandler(0x56, 2, &sub_0f020000 + 0x5DF0);
    }
}

void FindGLScreen(s32 arg0, s32 arg1) {
    s32 var_v0;
    void *temp_a5;
    void *var_a4;

    var_v0 = 0;
    if (gl_nscrns > 0) {
        var_a4 = gl_scrntab;
loop_3:
        temp_a5 = var_a4->unk1C;
        var_a4 += 0x28;
        if ((temp_a5 != NULL) && (temp_a5->unk8 == arg1)) {
            if (temp_a5->unk10 != arg0) {
                goto block_2;
            }
            return;
        }
block_2:
        var_v0 += 1;
        if (var_v0 != gl_nscrns) {
            goto loop_3;
        }
    }
}

s32 gl_g_gl_glx_getconfig(s32 arg0, s64 arg1, s64 arg2, u64 arg3) {
    s64 sp98;
    s64 sp90;
    u64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    ? var_a0_2;
    ? var_a0_3;
    gl_sstate *temp_v0;
    s32 temp_a0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_v0_10;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 var_a0;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s6;
    s32 var_s7;
    s32 var_s8;
    s32 var_v0_2;
    s64 var_t0;
    s64 var_t1;
    s64 var_v0_3;
    u32 temp_a4;
    u32 temp_a5;
    u64 var_v0;
    void **temp_ra;
    void **temp_ra_2;
    void **var_t3;
    void **var_t9;
    void **var_v0_4;
    void **var_v0_5;
    void *temp_a0_2;
    void *temp_s0;
    void *var_a2;
    void *var_a2_2;
    void *var_t8;

    temp_s0 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s1 = M2C_ERROR(/* Read from unset register $a4 */);
    __iglooMixedModel = 1;
    __iglooCancelSoftPup();
    _GLinitgl();
    bcopy(&gl_mix_template, temp_s0, gl_template_size * 4);
    gl_g_gconfig(arg0, arg1);
    if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
        return -2;
    }
    sp48 = arg3;
    var_s3 = 0;
    var_s2 = 0;
    sp20 = 0;
    sp28 = 0;
    var_s7 = 0;
    var_s6 = 0;
    sp18 = 0;
    sp10 = 0;
    var_s4 = 0;
    temp_v0 = gl_sstatep;
    gl_sstatep = gl_scrntab + (((M2C_ERROR(/* Read from unset register $v0 */) * 4) + M2C_ERROR(/* Read from unset register $v0 */)) * 8);
    sp40 = (s64) temp_v0;
    var_s8 = __GLgetgdesc(0x10);
    if (arg2 > 0) {
        M2C_TRAP_IF(3 == 0);
        var_v0 = sp48;
loop_7:
        if (var_v0->unk0 == 0x1000) {
            temp_a4 = var_v0->unk4;
            switch (temp_a4) {                      /* switch 1 */
            case 3:                                 /* switch 1 */
                var_s8 = var_v0->unk8;
                break;
            case 6:                                 /* switch 1 */
                var_s7 = var_v0->unk8;
                break;
            case 5:                                 /* switch 1 */
                var_s6 = var_v0->unk8;
                break;
            case 14:                                /* switch 1 */
                var_s4 = var_v0->unk8;
                break;
            case 2:                                 /* switch 1 */
                var_s2 = var_v0->unk8;
                break;
            case 1:                                 /* switch 1 */
                var_s3 = var_v0->unk8;
                break;
            case 10:                                /* switch 1 */
                sp18 = (s64) var_v0->unk8;
                break;
            case 11:                                /* switch 1 */
                sp28 = (s64) var_v0->unk8;
                break;
            case 12:                                /* switch 1 */
                sp20 = (s64) var_v0->unk8;
                break;
            case 13:                                /* switch 1 */
                sp10 = 1;
                break;
            }
        }
        var_v0 += 0xC;
        if (var_v0 < (u32) ((arg2 * 4) + sp48)) {
            goto loop_7;
        }
    }
    if (var_s3 != 0) {
        if (var_s2 != 0) {
            sp30 = __GLgetgdesc(9);
            sp38 = __GLgetgdesc(0xA);
            temp_v0_2 = __GLgetgdesc(0xB);
            if ((sp30 == 0) || (sp38 == 0) || (temp_v0_2 == 0)) {
                var_s2 = 0;
            }
            var_a0 = subroutine_arg0;
            if (var_s2 != 0) {
                var_a1 = subroutine_arg1;
                var_v0_2 = subroutine_arg2;
            } else {
                goto block_130;
            }
        } else {
block_130:
            sp30 = __GLgetgdesc(6);
            sp38 = __GLgetgdesc(7);
            var_v0_2 = __GLgetgdesc(8);
            var_a1 = (s32) sp38;
            var_a0 = (s32) sp30;
        }
        if ((var_a0 == 0) || (var_a1 == 0) || (var_v0_2 == 0)) {
            var_s3 = 0;
        }
    }
    if (var_s7 != 0) {
        temp_v0_3 = __GLgetgdesc(0x46);
        if (temp_v0_3 < var_s7) {
            var_s7 = temp_v0_3;
        }
    }
    if (var_s6 != 0) {
        temp_v0_4 = __GLgetgdesc(0x48);
        if (temp_v0_4 < var_s6) {
            var_s6 = temp_v0_4;
        }
    }
    if (var_s3 == 0) {
        var_a0_2 = 0xD;
        if (var_s2 == 0) {
            var_a0_2 = 0xC;
        }
        __GLgetgdesc(var_a0_2);
    }
    if (var_s8 != 0) {
        temp_v0_5 = __GLgetgdesc(0x10);
        if (temp_v0_5 < var_s8) {
            var_s8 = temp_v0_5;
        }
    }
    if (var_s4 != 0) {
        var_a0_3 = 9;
        if (var_s2 == 0) {
            var_a0_3 = 6;
        }
        temp_v0_6 = __GLgetgdesc(var_a0_3);
        if (temp_v0_6 < var_s4) {
            var_s4 = temp_v0_6;
        }
    }
    if (sp18 != 0) {
        if (__GLgetgdesc(0x54) != 1) {
            sp18 = 0;
        }
    }
    if (sp10 != 0) {
        sp10 = __GLgetgdesc(0x32);
    }
    var_t1 = -1;
    var_t0 = -1;
    if (temp_s1 > 0) {
        var_a2 = temp_s0;
        var_v0_3 = 2;
        M2C_TRAP_IF(3 == 0);
loop_47:
        if (var_a2->unk0 == 0x1000) {
            temp_a5 = var_a2->unk4;
            switch (temp_a5) {                      /* switch 2 */
            case 13:                                /* switch 2 */
                var_a2->unk8 = (s32) sp10;
                break;
            case 4:                                 /* switch 2 */
                var_a2->unk8 = (s32) subroutine_arg3;
                break;
            case 3:                                 /* switch 2 */
                var_a2->unk8 = var_s8;
                break;
            case 14:                                /* switch 2 */
                var_a2->unk8 = var_s4;
                break;
            case 2:                                 /* switch 2 */
                var_a2->unk8 = var_s2;
                break;
            case 1:                                 /* switch 2 */
                var_a2->unk8 = var_s3;
                break;
            case 10:                                /* switch 2 */
                var_a2->unk8 = (s32) sp18;
                break;
            case 11:                                /* switch 2 */
                var_a2->unk8 = (s32) sp28;
                break;
            case 12:                                /* switch 2 */
                var_a2->unk8 = (s32) sp20;
                break;
            case 6:                                 /* switch 2 */
                var_a2->unk8 = var_s7;
                break;
            case 5:                                 /* switch 2 */
                var_a2->unk8 = var_s6;
                break;
            case 8:                                 /* switch 2 */
                var_t0 = var_v0_3;
                break;
            case 7:                                 /* switch 2 */
                var_t1 = var_v0_3;
                break;
            }
        }
        var_a2 += 0xC;
        var_v0_3 += 3;
        if ((u32) var_a2 < (u32) ((temp_s1 * 4) + temp_s0)) {
            goto loop_47;
        }
        sp98 = var_t1;
        sp90 = var_t0;
    }
    sp98 = var_t1;
    sp90 = var_t0;
    temp_a0 = gl_sstatep->unk1C + 0x14;
    if (var_s3 != 0) {
        if (var_s2 != 0) {
            var_a0_4 = temp_a0 + 0x20;
        } else {
            var_a0_4 = temp_a0 + 0x10;
        }
    } else if (var_s2 != 0) {
        var_a0_4 = temp_a0 + 0x18;
    } else {
        var_a0_4 = temp_a0 + 8;
    }
    __iglooChooseVisual(var_a0_4, temp_s0);
    *((var_t1 * 4) + temp_s0) = (*M2C_ERROR(/* Read from unset register $v0 */))->unk4;
    *((var_t0 * 4) + temp_s0) = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
    gl_hwd_getconfig(arg2, sp48, temp_s1, temp_s0);
    var_t8 = NULL;
    var_t9 = NULL;
    var_t3 = NULL;
    temp_a0_2 = gl_sstatep->unk1C + 0x14;
    if (temp_s1 > 0) {
        var_a2_2 = temp_s0;
        M2C_TRAP_IF(3 == 0);
loop_62:
        temp_v0_7 = var_a2_2->unk0;
        if (temp_v0_7 == 0x2000) {
            temp_v0_8 = var_a2_2->unk4;
            if (temp_v0_8 == 4) {
                temp_s0_2 = var_a2_2->unk8;
                if (temp_s0_2 != 0) {
                    temp_s2 = temp_a0_2->unk28;
                    temp_ra = temp_a0_2->unk2C;
                    if (temp_s2 > 0) {
                        var_v0_4 = temp_ra;
loop_86:
                        if ((*var_v0_4)->unkC != temp_s0_2) {
                            var_v0_4 += 0x50;
                            if ((u32) var_v0_4 >= (u32) ((temp_s2 * 0x50) + temp_ra)) {

                            } else {
                                goto loop_86;
                            }
                        } else {
                            var_t3 = var_v0_4;
                        }
                    }
                }
            } else if (temp_v0_8 != 7) {
                if (temp_v0_8 == 8) {
                    if (var_t3 != NULL) {
                        var_a2_2->unk8 = (s32) var_t3->unk4;
                    }
                }
            } else if (var_t3 != NULL) {
                var_a2_2->unk8 = (s32) var_t3->unk0->unk4;
            }
        } else if (temp_v0_7 == 0x3000) {
            temp_v0_9 = var_a2_2->unk4;
            if (temp_v0_9 == 4) {
                if (var_a2_2->unk8 != 0) {
                    var_t8 = temp_a0_2->unk4;
                }
            } else if (temp_v0_9 != 7) {
                if ((temp_v0_9 == 8) && (var_t8 != NULL)) {
                    var_a2_2->unk8 = (s32) var_t8->unk4;
                }
            } else if (var_t8 != NULL) {
                var_a2_2->unk8 = (s32) var_t8->unk0->unk4;
            }
        } else if (temp_v0_7 == 0x4000) {
            temp_v0_10 = var_a2_2->unk4;
            if (temp_v0_10 == 4) {
                temp_s0_3 = var_a2_2->unk8;
                if (temp_s0_3 != 0) {
                    temp_s2_2 = temp_a0_2->unk40;
                    temp_ra_2 = temp_a0_2->unk44;
                    if (temp_s2_2 > 0) {
                        var_v0_5 = temp_ra_2;
loop_100:
                        if ((*var_v0_5)->unkC != temp_s0_3) {
                            var_v0_5 += 0x50;
                            if ((u32) var_v0_5 >= (u32) ((temp_s2_2 * 0x50) + temp_ra_2)) {

                            } else {
                                goto loop_100;
                            }
                        } else {
                            var_t9 = var_v0_5;
                        }
                    }
                }
            } else if (temp_v0_10 != 7) {
                if ((temp_v0_10 == 8) && (var_t9 != NULL)) {
                    var_a2_2->unk8 = (s32) var_t9->unk4;
                }
            } else if (var_t9 != NULL) {
                var_a2_2->unk8 = (s32) var_t9->unk0->unk4;
            }
        }
        var_a2_2 += 0xC;
        if ((u32) var_a2_2 < (u32) ((temp_s1 * 4) + temp_s0)) {
            goto loop_62;
        }
    }
    gl_sstatep = (gl_sstate *) sp40;
    return 0;
}

void extract(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_a1;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    if (var_a1 > 0) {
        M2C_TRAP_IF(3 == 0);
loop_3:
        var_a1 -= 3;
        if ((var_a0->unk0 == arg2) && (var_a0->unk4 == arg3)) {
            return;
        }
        var_a0 += 0xC;
        if (var_a1 > 0) {
            goto loop_3;
        }
    }
}

void BadAuxWindow(void *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 **temp_a7_2;
    s32 **var_a0;
    s32 **var_a6;
    s32 *temp_a2_2;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_v0_3;
    s64 temp_v0;
    s64 temp_v0_2;
    u32 temp_a3;
    void *temp_a7;

    sp70 = arg1;
    sp78 = arg2;
    sp68 = arg3;
    temp_v0 = gl_g_gl_glx_getconfig((s32) arg2, arg3, 9);
    sp88 = temp_v0;
    temp_s1 = arg0->unk4;
    sp80 = 1;
    if (temp_v0 != 0) {
        gl_glx_findwindow(temp_s1, temp_v0);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (M2C_ERROR(/* Read from unset register $v0 */) != arg0) {
                return;
            }
            goto block_5;
        }
block_5:
        XGetWindowAttributes(temp_s1, sp88, sp);
        if (arg0->unkC->unk8 != XScreenNumberOfScreen(sp58)) {
            return;
        }
        temp_v0_2 = gl_g_gl_glx_getconfig((s32) sp78, sp70, sp68, 4U);
        sp60 = temp_v0_2;
        if (temp_v0_2 != 0) {
            temp_v0_3 = gl_g_gl_glx_getconfig((s32) sp78, sp70, sp68, 7U);
            if (temp_v0_3 != 0) {
                switch (sp68) {                     /* irregular */
                case 0x2000:
                    temp_a7 = arg0->unkC;
                    temp_a2 = temp_a7->unk3C;
                    var_a6 = NULL;
                    if (temp_a2 > 0) {
                        var_a0 = (temp_a7 + 0x3C)->unk4;
                        temp_a3 = var_a0 + (temp_a2 * 0x50);
loop_20:
                        temp_a2_2 = *var_a0;
                        if ((temp_a2_2->unkC == sp60) && (temp_a2_2->unk4 == temp_v0_3)) {
                            var_a6 = var_a0;
                        }
                        var_a0 += 0x50;
                        if ((u32) var_a0 < temp_a3) {
                            if (var_a6 == NULL) {
                                goto loop_20;
                            }
                            goto block_24;
                        }
                        goto block_23;
                    }
block_23:
                    if (var_a6 != NULL) {
block_24:
                        arg0->unk8C = (s32) sp88;
                        arg0->unk98 = (s32) **var_a6;
                        arg0->unkA4 = __iglooCreateContextInfo(temp_s1, arg0, *var_a6, 1);
                        sp80 = 0;
                    }
                    break;
                case 0x3000:
                    temp_a7_2 = arg0->unkC->unk18;
                    if ((*temp_a7_2)->unk4 == temp_v0_3) {
                        arg0->unk88 = (s32) sp88;
                        sp80 = 0;
                        arg0->unk94 = (s32) (*temp_a7_2)->unk0;
                        arg0->unkA0 = __iglooCreateContextInfo(temp_s1, arg0, *temp_a7_2, 1);
                    }
                    break;
                }
                if (sp80 == 0) {
                    XUnmapWindow(temp_s1, sp88);
                    XReparentWindow(temp_s1, sp88, arg0->unk8, 0);
                    XResizeWindow(temp_s1, sp88, 0x7D0, 0x7D0);
                    XMapWindow(temp_s1, sp88);
                }
            }
        }
    }
}

void gl_g_gl_glx_link(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_s0;
    s32 temp_t1;
    s32 var_a0_2;
    s32 var_a5;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a0_3;
    s64 var_a5_2;
    u32 temp_t0;
    void **var_s0;
    void **var_v0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_v0_3;
    void *var_a0;
    void *var_a6;

    __iglooMixedModel = 1;
    __iglooCancelSoftPup();
    temp_v0 = gl_g_gl_glx_getconfig(arg2, arg1, 0x1000, 9U);
    sp60 = temp_v0;
    if (temp_v0 != 0) {
        var_a5 = 0;
        if (gl_nscrns > 0) {
            var_a0 = gl_scrntab;
loop_5:
            temp_a1 = var_a0->unk1C;
            var_a0 += 0x28;
            if ((temp_a1 == NULL) || (temp_a1->unk10 != arg0)) {
                if (0 == 0) {
                    var_a5 += 1;
                    if (((gl_nscrns * 0x28) + gl_scrntab) != var_a0) {
                        goto loop_5;
                    }
                }
            }
        }
        var_a0_2 = var_a5 * 4;
        if (var_a5 == gl_nscrns) {
            var_a5 = 0;
            var_a0_2 = 0 * 4;
        }
        temp_a0 = (((var_a0_2 + var_a5) * 8) + gl_scrntab)->unk1C->unk4;
        sp80 = (s64) temp_a0;
        gl_glx_findwindow(temp_a0, temp_v0, gl_scrntab);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            XGetWindowAttributes((s32) sp80, sp60, sp);
            gl_g_gconfig(arg0, XScreenNumberOfScreen(sp58));
            if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {
                var_a5_2 = 0;
                var_s0 = NULL;
                temp_a2 = (gl_scrntab + (((M2C_ERROR(/* Read from unset register $v0 */) * 4) + M2C_ERROR(/* Read from unset register $v0 */)) * 8))->unk1C;
                var_a0_3 = 0xB;
                var_a6 = temp_a2 + 0x14;
loop_15:
                temp_t1 = var_a6->unk0;
                if ((temp_t1 > 0) && (var_s0 == NULL)) {
                    var_v0 = var_a6->unk4;
                    temp_t0 = var_v0 + (temp_t1 * 0x50);
loop_20:
                    if ((*var_v0)->unk4 == sp18->unk4) {
                        var_a0_3 = var_a5_2;
                        var_s0 = var_v0;
                    }
                    var_v0 += 0x50;
                    if (((u32) var_v0 < temp_t0) && (var_s0 == NULL)) {
                        goto loop_20;
                    }
                }
                var_a5_2 += 1;
                var_a6 += 8;
                if ((var_a5_2 < 0xB) && (var_s0 == NULL)) {
                    goto loop_15;
                }
                sp78 = var_a0_3;
                sp68 = (s64) temp_a2;
                if (var_a0_3 != 0xB) {
                    temp_v0_2 = gl_malloc(0xBC, saved_reg_gp - 0x3E18, temp_a2, 0xB);
                    sp70 = temp_v0_2;
                    bzero((void *) temp_v0_2, 0xBCU);
                    temp_v0_2->unk54 = 0;
                    temp_v0_2->unk14 = var_s0;
                    temp_v0_2->unkB4 = -1;
                    temp_v0_2->unkC = (s32) sp68;
                    temp_v0_2->unk4 = (s32) sp80;
                    temp_v0_2->unk10 = (s32) ((sp78 * 8) + sp68 + 0x14);
                    sp70->unk2C = 5;
                    sp70->unk8 = (s32) sp60;
                    sp70->unk40 = (s32) sp60;
                    sp70->unk7C = _GLnewcontext(sp68, 1);
                    sp70->unk0 = (s32) (*sp68)->unk14;
                    if (gl_g_gl_glx_getconfig((s32) sp70, arg1, (s64) arg2, 0x2000U) != 0) {
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        GLlasterror = -8;
                        return;
                    }
                    if (gl_g_gl_glx_getconfig((s32) sp70, arg1, (s64) arg2, 0x3000U) == 0) {
                        sp70->unk18 = __iglooCreateContextInfo((s32) sp80, (void *) sp70, *sp70->unk14, 0);
                        if (_GLbindcontext(sp70, sp70->unk7C) != NULL) {
                            gl_free(sp70, saved_reg_gp - 0x3E18);
                            return;
                        }
                        (*sp68)->unk14 = (s32) sp70;
                        _GLunblock(sp70->unk7C, 1);
                        temp_s0 = arg1 * 4;
                        temp_v0_3 = gl_malloc(temp_s0, saved_reg_gp - 0x3E18);
                        temp_a1_2 = temp_v0_3;
                        sp70->unk84 = (s32) arg1;
                        sp70->unk80 = temp_v0_3;
                        sp70->unkB4 = 0x10;
                        bcopy((? *) arg2, temp_a1_2, temp_s0, 0x10);
                        return;
                    }
                    GLlasterror = -8;
                    return;
                }
                GLlasterror = -6;
            }
        }
    }
}

void gl_g_gl_glx_unlink(s32 arg0) {
    s64 sp0;
    s32 var_a5;
    void *temp_a4;
    void *var_v0;

    var_a5 = 0;
    if (gl_nscrns > 0) {
        var_v0 = gl_scrntab;
loop_4:
        temp_a4 = var_v0->unk1C;
        var_v0 += 0x28;
        if ((temp_a4 == NULL) || (temp_a4->unk10 != arg0)) {
            if (0 == 0) {
                var_a5 += 1;
                if (((gl_nscrns * 0x28) + gl_scrntab) != var_v0) {
                    goto loop_4;
                }
            }
        }
    }
    if (var_a5 == gl_nscrns) {
        var_a5 = 0;
    }
    gl_glx_findwindow(((var_a5 * 0x28) + gl_scrntab)->unk1C->unk4);
    sp0 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (_GLdestroycontext(M2C_ERROR(/* Read from unset register $v0 */)->unk7C) >= 0) {
            _GLdestroywindow(sp0);
            if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {

            }
        }
    }
}

void gl_g_gl_glx_winset(s32 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 var_a0;
    s32 var_a4;
    s32 var_s0;
    s64 temp_s0;
    s64 var_a1;
    void *temp_a1;
    void *var_v0;

    var_a1 = arg1;
    var_a4 = 0;
    temp_s0 = var_a1;
    if (gl_nscrns > 0) {
        var_v0 = gl_scrntab;
loop_4:
        temp_a1 = var_v0->unk1C;
        var_v0 += 0x28;
        if ((temp_a1 == NULL) || (var_a1 = 1, (temp_a1->unk10 != arg0))) {
            var_a1 = 0;
            if (0 == 0) {
                var_a4 += 1;
                if (((gl_nscrns * 0x28) + gl_scrntab) != var_v0) {
                    goto loop_4;
                }
            }
        }
    }
    var_a0 = var_a4 * 4;
    if (var_a4 == gl_nscrns) {
        var_a4 = 0;
        var_a0 = 0 * 4;
    }
    temp_a0 = (((var_a0 + var_a4) * 8) + gl_scrntab)->unk1C->unk4;
    sp8 = (s64) temp_a0;
    __iglooCheckCurrentContextInfo(temp_a0, var_a1);
    if (temp_s0 == 0) {
        if (__iglooNoReleaseContext != 0) {
            return;
        }
        __iglooMakeNoCurrent(sp8, 1, __iglooNoReleaseContext);
        return;
    }
    gl_glx_findwindow((s32) sp8, temp_s0);
    sp0 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (_GLsetcontext(M2C_ERROR(/* Read from unset register $v0 */)->unk7C) >= 0) {
            if (sp0->unk8C == temp_s0) {
                var_s0 = 0x40;
                /* Duplicate return node #15. Try simplifying control flow for better match */
                __GLdrawmode(var_s0);
                sp0->unkB4 = var_s0;
                return;
            }
            if (sp0->unk88 == temp_s0) {
                var_s0 = 0x20;
                /* Duplicate return node #15. Try simplifying control flow for better match */
                __GLdrawmode(var_s0);
                sp0->unkB4 = var_s0;
                return;
            }
            if (sp0->unk90 != temp_s0) {
                if (sp0->unk8 == temp_s0) {
                    var_s0 = 0x10;
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __GLdrawmode(var_s0);
                    sp0->unkB4 = var_s0;
                    return;
                }
                return;
            }
            var_s0 = 0x80;
            __GLdrawmode(var_s0);
            sp0->unkB4 = var_s0;
        }
    }
}
