typedef struct __gl_sstateRec {
    /* 0x000 */ void **display;
    /* 0x004 */ s32 screen;
    /* 0x008 */ u32 root;
    /* 0x00C */ u32 colormap;
    /* 0x010 */ void **visual;
    /* 0x014 */ char pad14[8];                      /* maybe part of visual[3]? */
    /* 0x01C */ void *unk1C;                        /* inferred */
    /* 0x020 */ char pad20[0xF0];                   /* maybe part of unk1C[0x3D]? */
    /* 0x110 */ s32 graphicsType;
} gl_sstate;                                        /* size = 0x114 */

s32 XCreateWindow(s32, ?, ?, ?);                    /* extern */
? XDestroyWindow(s32, s32);                         /* extern */
? XFlush(s32);                                      /* extern */
? XInstallColormap(s32, s32);                       /* extern */
? XLowerWindow(s32, s32, s64);                      /* extern */
? XMapWindow(s32, s32);                             /* extern */
? XResizeWindow(s32, s32, ?, ?);                    /* extern */
? XSync(s32, ?);                                    /* extern */
extern s32 __iglooSoftPupPlanes;
extern ? sub_0f040000;

void gl_nextunder(void) {

}

void _GLfindVis(void *arg0, s32 arg1, s32 *arg2) {
    if (arg1 >= 0x10) {
        if (arg1 < 0x11) {
            /* Duplicate return node #2. Try simplifying control flow for better match */
            *arg2 = -1;
            return;
        }
        if (arg1 >= 0x40) {
            if (arg1 >= 0x41) {
                if (arg1 == 0x80) {
                    /* Duplicate return node #13. Try simplifying control flow for better match */
                    *arg2 = 2;
                }
            } else {
                goto block_5;
            }
        } else if (arg1 == 0x20) {
            /* Duplicate return node #9. Try simplifying control flow for better match */
            *arg2 = 0;
        }
    } else if (arg1 >= 2) {
        if (arg1 < 3) {
block_5:
            if (__iglooSoftPupPlanes != 0) {
                *arg2 = 0;
                return;
            }
            *arg2 = 1;
            return;
        }
        if (arg1 != 3) {

        } else {
            *arg2 = 2;
        }
    } else if (arg1 > 0) {
        if (arg1 < 2) {
            *arg2 = 0;
        }
    } else if (arg1 == 0) {
        *arg2 = -1;
    }
}

void _GLcreateOvWin(void *arg0, void *arg1, ? arg2, s32 arg3) {
    s64 sp88;
    s32 sp58;
    s32 sp54;
    s32 sp48;
    s32 sp2C;
    s32 sp24;
    ? sp20;
    ? *sp1C;
    s32 sp14;
    s32 spC;
    s32 sp4;
    s32 temp_s2;
    s32 temp_v0;
    void *temp_t2;

    temp_s2 = arg0->unk4;
    sp48 = 0x208030;
    sp24 = 0;
    sp2C = 0;
    sp54 = arg1->unk4->unk4;
    sp58 = arg0->unk54;
    if (arg0->unk38 == 0) {
        arg0->unk38 = 0x3E8;
    }
    if (arg0->unk3C == 0) {
        arg0->unk3C = 0x3E8;
    }
    sp4 = 1;
    sp1C = &sp20;
    sp14 = 0x680A;
    spC = (*arg1->unk4)->unk0;
    temp_v0 = XCreateWindow(temp_s2, arg2, 0, 0);
    temp_t2 = (arg3 * 4) + arg0;
    temp_t2->unk88 = temp_v0;
    sp88 = (s64) temp_t2;
    temp_t2->unk94 = (s32) **arg1->unk4;
    XMapWindow(temp_s2, temp_v0);
    sp88->unkA0 = __iglooCreateContextInfo(temp_s2, arg0, *arg1->unk4, arg0->unk2C == 5);
}

void gl_wmdrawmode(void *arg0) {
    s64 sp58;
    s64 sp18;
    s64 sp10;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_s3;
    s32 temp_v0;
    s32 var_s1;
    s32 var_s3;
    s32 var_s5;
    s64 var_s0;
    u32 temp_s2;
    u32 var_s0_2;
    u32 var_s0_4;
    void *temp_a0;
    void *temp_a1;
    void *temp_a4;
    void *temp_s4;
    void *var_a2;
    void *var_s0_3;
    void *var_s0_5;

    var_s0 = saved_reg_s0;
    var_s5 = 0;
    var_s3 = 0;
    temp_s2 = gl_wstatep->active;
    gl_nextunder(temp_s2, arg0, sp);
    temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        switch (arg0) {                             /* switch 1; irregular */
        case 0x2:                                   /* switch 1 */
        case 0x40:                                  /* switch 1 */
            var_s3 = temp_s2->unk20 & 0x1000;
            break;
        case 0x3:                                   /* switch 1 */
        case 0x80:                                  /* switch 1 */
            var_s3 = temp_s2->unk20 & 0x2000;
            break;
        case 0x10:                                  /* switch 1 */
            __iglooMakeCurrent(temp_s2->unk4, temp_s2->unk8, temp_s2, temp_s2->unk18);
            break;
        }
        if ((var_s3 != 0) && (*temp_s4->unk4->unk0 == ((subroutine_arg0 * 4) + temp_s2)->unk94)) {
            temp_a5 = ~var_s3;
            var_s3 = 0;
            temp_s2->unk20 = (s32) (temp_s2->unk20 & temp_a5);
        }
        if ((temp_s2->unkB4 != arg0) || (var_s3 != 0)) {
            var_s0_2 = temp_s2;
            if (temp_s2->unk2C == 4) {
                var_s0_2 = temp_s2->unk44;
            }
            sp10 = (s64) var_s0_2;
            if (arg0 != (void *)0x10) {
                if (arg0 != NULL) {
                    sp18 = 0;
                    if (var_s3 != 0) {
                        temp_a0 = (subroutine_arg0 * 4) + var_s0_2;
                        temp_v0 = temp_a0->unk88;
                        if (temp_v0 == 0) {
                            temp_s2->unk20 = (s32) (temp_s2->unk20 & ~var_s3);
                        } else {
                            temp_a0->unk88 = 0;
                            ((subroutine_arg0 * 4) + var_s0_2)->unk94 = 0;
                            temp_a4 = (subroutine_arg0 * 4) + var_s0_2;
                            temp_a5_2 = temp_a4->unkA0;
                            var_s5 = temp_v0;
                            temp_a4->unkA0 = 0;
                        }
                    }
                    if (((subroutine_arg0 * 4) + var_s0_2)->unk88 != 0) {

                    } else {
                        if ((arg0 != (void *)0x80) && (arg0 != (void *)3)) {
                            var_a2 = var_s0_2->unk8;
                        } else {
                            var_a2 = var_s0_2->unk40;
                        }
                        gl_nextunder(var_s0_2, temp_s4, var_a2, subroutine_arg0);
                        switch (arg0) {             /* switch 2; irregular */
                        case 0x2:                   /* switch 2 */
                        case 0x40:                  /* switch 2 */
                            temp_s2->unk20 = (s32) (temp_s2->unk20 | 0x4000);
                            break;
                        case 0x3:                   /* switch 2 */
                        case 0x80:                  /* switch 2 */
                            temp_s2->unk20 = (s32) (temp_s2->unk20 | 0x8000);
                            break;
                        }
                        if (var_s0_2->unk48 != NULL) {
                            XLowerWindow(var_s0_2->unk4, ((subroutine_arg0 * 4) + var_s0_2)->unk88);
                        }
                        sp18 = 1;
                    }
                    var_s0_3 = var_s0_2->unk48;
                    if (var_s0_2->unk48 != NULL) {
loop_26:
                        if (((subroutine_arg0 * 4) + var_s0_3)->unk88 == 0) {
                            if (arg0 != (void *)0x80) {
                                if (arg0 == (void *)3) {
                                    goto block_30;
                                }
                                gl_nextunder((u32) var_s0_3, temp_s4, var_s0_3->unk8, subroutine_arg0);
                            } else {
block_30:
                                gl_nextunder((u32) var_s0_3, temp_s4, var_s0_3->unk40, subroutine_arg0);
                            }
                            sp18 += 1;
                        }
                        var_s0_3 = var_s0_3->unk4C;
                        if (var_s0_3 != NULL) {
                            goto loop_26;
                        }
                    }
                    var_s0 = sp58;
                    if (sp18 != 0) {
                        if (arg0 != (void *)0x80) {
                            if (arg0 == (void *)3) {
                                goto block_74;
                            }
                        } else {
block_74:
                            XLowerWindow(gl_sstatep->unk1C->unk4, ((subroutine_arg0 * 4) + sp10)->unk88, sp10);
                        }
                        XSync(gl_sstatep->unk1C->unk4, 0);
                        _GLsetwmcolormaps(sp10, 0);
                        XFlush(gl_sstatep->unk1C->unk4);
                    }
                } else {
                    var_s0 = sp58;
                }
            } else {
                var_s0 = sp58;
            }
            if (var_s5 != 0) {
                temp_a3 = ~var_s3;
                temp_a2 = temp_s2->unk20 & temp_a3;
                temp_s2->unk20 = temp_a2;
                __iglooDestroyContextInfo(temp_s2->unk4, subroutine_arg2, temp_a2, temp_a3);
                XDestroyWindow(temp_s2->unk4, var_s5);
            }
            if ((temp_s2->unk20 & 0x30) == 0x10) {
                XInstallColormap(gl_sstatep->unk1C->unk4, temp_s4->unk4->unk4);
                XFlush(gl_sstatep->unk1C->unk4);
            }
            temp_s2->unkB4 = arg0;
        }
        if (subroutine_arg0 != -1) {
            temp_a1 = (subroutine_arg0 * 4) + temp_s2;
            __iglooMakeCurrent(temp_s2->unk4, temp_a1->unk88, temp_s2, temp_a1->unkA0);
        }
        temp_s3 = temp_s2->unk20 & 0x2000;
        if (temp_s3 != 0) {
            var_s1 = 0;
            gl_nextunder();
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                sp58 = var_s0;
                var_s0_4 = temp_s2;
                if (temp_s2->unk2C == 4) {
                    var_s0_4 = temp_s2->unk44;
                }
                if (var_s0_4->unk90 != 0) {
                    __iglooDestroyContextInfo(var_s0_4->unk4, (s64) var_s0_4->unkA8);
                    var_s0_4->unkA8 = 0;
                    XDestroyWindow(var_s0_4->unk4, var_s0_4->unk90);
                    var_s1 = 1;
                    var_s0_4->unk90 = 0;
                }
                var_s0_5 = var_s0_4->unk48;
                if (var_s0_5 != NULL) {
loop_55:
                    if (var_s0_5->unk90 != 0) {
                        var_s1 += 1;
                        __iglooDestroyContextInfo(var_s0_5->unk4, (s64) var_s0_5->unkA8);
                        var_s0_5->unkA8 = 0;
                        XDestroyWindow(var_s0_5->unk4, var_s0_5->unk90);
                        var_s0_5->unk90 = 0;
                    }
                    var_s0_5 = var_s0_5->unk4C;
                    if (var_s0_5 != NULL) {
                        goto loop_55;
                    }
                }
                if (var_s1 != 0) {
                    XFlush(gl_sstatep->unk1C->unk4);
                }
            }
            temp_s2->unk20 = (s32) (temp_s2->unk20 & ~temp_s3);
        }
    }
}

void _GLcreateOvWindows(void *arg0, void *arg1) {
    s64 sp40;
    s64 sp8;
    s32 temp_s3;
    s32 var_s4;
    s64 var_ra;
    void *temp_s0;
    void *temp_s0_2;
    void *var_a1;

    var_ra = saved_reg_ra;
    var_s4 = 0;
    if (saved_reg_gp->unk-3908 != 0) {
        saved_reg_gp->unk-3908 = 0;
        var_a1 = &sub_0f040000 - 0x76A8;
        var_a1->unk8 = 0x80;
        var_a1->unk4 = 0x40;
        var_a1->unk0 = 0x20;
    } else {
        var_a1 = &sub_0f040000 - 0x76A8;
    }
    sp8 = (s64) var_a1;
    temp_s3 = arg0 + 0xC;
    temp_s0 = arg0 + 4;
    if ((arg0->unk88 != 0) && (arg1->unk88 == 0)) {
        gl_nextunder((u32) arg1, sp8->unk0, sp);
        gl_nextunder((u32) arg1, M2C_ERROR(/* Read from unset register $v0 */), arg1->unk8, sp0);
        var_s4 = 1;
        var_ra = sp40;
    }
    if (temp_s0 != temp_s3) {
        temp_s0_2 = temp_s0 + 4;
        if ((temp_s0->unk88 != 0) && ((arg1 + 4)->unk88 == 0)) {
            sp40 = var_ra;
            gl_nextunder((u32) arg1, sp8->unk4, sp);
            gl_nextunder((u32) arg1, M2C_ERROR(/* Read from unset register $v0 */), arg1->unk8, sp0);
            var_s4 += 1;
        }
        if ((temp_s0_2 != temp_s3) && (temp_s0_2->unk88 != 0) && ((arg1 + 8)->unk88 == 0)) {
            sp40 = var_ra;
            gl_nextunder((u32) arg1, sp8->unk8, sp);
            gl_nextunder((u32) arg1, M2C_ERROR(/* Read from unset register $v0 */), arg1->unk8, sp0);
            var_s4 += 1;
        }
    }
    if (var_s4 != 0) {
        sp40 = var_ra;
        XSync(gl_sstatep->unk1C->unk4, 0);
        _GLsetwmcolormaps((s64) arg1, 0);
        XFlush(gl_sstatep->unk1C->unk4);
    }
}

void _GLresizeOvWindows(void *arg0, ? arg1, ? arg2) {
    s64 sp30;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_s1;
    s32 temp_s2;
    s64 var_ra;
    void *temp_s0;
    void *temp_s0_2;

    var_ra = saved_reg_ra;
    temp_s1 = arg0 + 0xC;
    temp_s2 = arg0->unk4;
    temp_a1 = arg0->unk88;
    temp_s0 = arg0 + 4;
    if (temp_a1 != 0) {
        XResizeWindow(temp_s2, temp_a1, arg1, arg2);
        var_ra = sp30;
    }
    if (temp_s0 != temp_s1) {
        temp_a1_2 = temp_s0->unk88;
        temp_s0_2 = temp_s0 + 4;
        if (temp_a1_2 != 0) {
            sp30 = var_ra;
            XResizeWindow(temp_s2, temp_a1_2, arg1, arg2);
        }
        if (temp_s0_2 != temp_s1) {
            temp_a1_3 = temp_s0_2->unk88;
            if (temp_a1_3 != 0) {
                sp30 = var_ra;
                XResizeWindow(temp_s2, temp_a1_3, arg1, arg2);
            }
        }
    }
}

void _GLdestroyOvWindows(void *arg0) {
    s64 sp28;
    s64 sp0;
    s32 temp_s2;
    s64 var_ra;
    void *temp_s0;
    void *temp_s0_2;

    var_ra = saved_reg_ra;
    temp_s2 = arg0 + 0xC;
    sp0 = (s64) arg0->unk4;
    if (arg0->unk88 != 0) {
        __iglooDestroyContextInfo(arg0->unk4, (s64) arg0->unkA0);
        arg0->unkA0 = 0;
        var_ra = sp28;
        if (arg0->unk2C != 5) {
            XDestroyWindow((s32) sp0, arg0->unk88);
            var_ra = sp28;
        }
        arg0->unk88 = 0;
    }
    temp_s0 = arg0 + 4;
    if (temp_s0 != temp_s2) {
        if (temp_s0->unk88 != 0) {
            sp28 = var_ra;
            __iglooDestroyContextInfo(arg0->unk4, (s64) temp_s0->unkA0);
            temp_s0->unkA0 = 0;
            if (arg0->unk2C != 5) {
                XDestroyWindow((s32) sp0, temp_s0->unk88);
                var_ra = sp28;
            }
            temp_s0->unk88 = 0;
        }
        temp_s0_2 = temp_s0 + 4;
        if ((temp_s0_2 != temp_s2) && (temp_s0_2->unk88 != 0)) {
            sp28 = var_ra;
            __iglooDestroyContextInfo(arg0->unk4, (s64) temp_s0_2->unkA0);
            temp_s0_2->unkA0 = 0;
            if (arg0->unk2C != 5) {
                XDestroyWindow((s32) sp0, temp_s0_2->unk88);
            }
            temp_s0_2->unk88 = 0;
        }
    }
}
