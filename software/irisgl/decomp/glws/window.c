? .L0f128ab0(void *, ?, ?);                         /* extern */
? XChangeProperty(s32, s32, s32, ?);                /* extern */
? XChangeWindowAttributes(s32, s32, ?, void *, s32); /* extern */
s32 XCreateWindow(s32, s32, ?, ?, s32, ? *);        /* extern */
? XDeleteProperty(s32, s32, s32);                   /* extern */
? XDestroyWindow(s32, s32);                         /* extern */
? XFlush(s32);                                      /* extern */
? XFree(s32 *);                                     /* extern */
? XGetGeometry(s32, s32, ? *, ? *);                 /* extern */
? XGetWindowProperty(s32, s32, s32, ?, ? *, s32 **); /* extern */
? XKillClient(s32, s32);                            /* extern */
? XLowerWindow(s32, s32);                           /* extern */
? XMapWindow(s32, s32);                             /* extern */
? XMoveResizeWindow(s32, s32, ?, ?);                /* extern */
? XResizeWindow(s32, s32, s32, s32);                /* extern */
? XSetWMColormapWindows(s32, s32, void *, s32);     /* extern */
? XSetWMHints(s32, s32, s32 *);                     /* extern */
? XSetWMNormalHints(s32, s32, s32 *);               /* extern */
? XSync(s32, ?);                                    /* extern */
? XTranslateCoordinates(s32, s32, s32, ?);          /* extern */
? strcpy(? *, s32);                                 /* extern */
s32 strlen(s32, s32);                               /* extern */
extern s32 GLlasterror;
extern s32 _GLuseCIvisual;
extern s32 __Argc;
extern s32 *__Argv;
extern void *gl_thedisplay;
extern ? *gl_valid_cxs;
extern ? sub_0f020000;
extern ? sub_0f030000;

void _GLinitXWindowAttributes(? *arg0) {
    arg0->unkC = 0;
    arg0->unk10 = 0xA;
    arg0->unk28 = 0x20000;
}

void _GLsetwmcolormaps(void *arg0, s32 arg1) {
    s32 sp0;
    s32 *var_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 var_a3;
    void *temp_t0;
    void *var_a0;

    var_a0 = arg0;
    var_a3 = 0;
    if (arg1 != 0) {
        sp0 = arg1;
        var_a3 = 1;
    }
    if (var_a0->unk2C == 4) {
        var_a0 = var_a0->unk44;
    }
    temp_t0 = var_a0;
    var_a4 = (var_a3 * 4) + sp;
loop_9:
    temp_a5 = var_a0->unk8;
    if (var_a0->unk2C != 2) {
        *var_a4 = temp_a5;
        var_a4 += 4;
        var_a3 += 1;
    } else {
        *var_a4 = temp_a5;
        var_a4 += 8;
        var_a3 += 2;
        var_a4->unk-4 = (s32) var_a0->unk40;
    }
    temp_a5_2 = var_a0->unk8C;
    if (temp_a5_2 != 0) {
        *var_a4 = temp_a5_2;
        var_a4 += 4;
        var_a3 += 1;
    }
    temp_a5_3 = var_a0->unk90;
    if (temp_a5_3 != 0) {
        *var_a4 = temp_a5_3;
        var_a4 += 4;
        var_a3 += 1;
    }
    temp_a5_4 = var_a0->unk88;
    if ((temp_a5_4 != 0) && (arg1 == 0)) {
        var_a3 += 1;
        *var_a4 = temp_a5_4;
        var_a4 += 4;
    }
    if (var_a0->unk2C != 2) {
        var_a0 = var_a0->unk4C;
    } else {
        var_a0 = var_a0->unk48;
    }
    if ((var_a0 != NULL) && ((u32) var_a4 < (u32) (sp + 0x3E8))) {
        goto loop_9;
    }
    if (var_a3 != 0) {
        XSetWMColormapWindows(temp_t0->unk4, temp_t0->unk40, sp, var_a3);
    }
}

void _GLnewwindow(void *arg0) {
    s32 sp58;
    s32 sp54;
    ? sp20;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s4;
    s32 var_a1_2;
    s8 var_v0;
    void *temp_a4_2;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a1;

    temp_v0 = gl_malloc(0xBC, &sub_0f020000 + 0x5938, 0xFFF0B180);
    bzero(temp_v0, 0xBCU);
    if (arg0 != NULL) {
        temp_v0_2 = arg0->unk48;
        temp_v0->unk4C = temp_v0_2;
        if (temp_v0_2 != NULL) {
            temp_v0_2->unk50 = temp_v0;
        }
        arg0->unk48 = temp_v0;
    }
    _GLinitXWindowAttributes(&sp20);
    var_a1 = &sub_0f030000 - 0x52C8;
    temp_s4 = M2C_ERROR(/* Read from unset register $v0 */) | 0x4000;
    temp_s1 = arg0->unkC + 0x1C;
    if (var_a1->unk8 == 0) {
        (&sub_0f030000 - 0x52C8)->unk8 = __GLgetgdesc(0xC, var_a1);
        var_a1 = &sub_0f030000 - 0x52C8;
        var_a1->unk14 = __GLgetgdesc(0x10);
    }
    __iglooChooseVisual(temp_s1, var_a1);
    temp_v0->unk44 = arg0;
    temp_v0->unk4 = (s32) arg0->unk4;
    temp_a4 = arg0->unk5C;
    temp_v0->unk54 = temp_a4;
    temp_v0->unk5C = temp_a4;
    sp58 = temp_a4;
    sp54 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
    temp_v0->unk14 = (void **) M2C_ERROR(/* Read from unset register $v0 */);
    temp_v0->unk10 = temp_s1;
    temp_s1_2 = temp_s4 | 0x2000;
    temp_v0->unkC = (void *) arg0->unkC;
    _GLstrdup((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0B180) - 0x3E38);
    temp_v0->unk20 = 0;
    temp_a4_2 = temp_v0->unkC;
    temp_v0->unk68 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    var_v0 = 4;
    if (temp_a4_2->unk70 == arg0) {
        var_v0 = 2;
    }
    temp_v0->unk2C = var_v0;
    temp_v0->unk0 = (void *) temp_a4_2->unk0->unk14;
    temp_a4_2->unk0->unk14 = temp_v0;
    temp_v0->unk3C = 0x64;
    temp_v0->unk38 = 0x64;
    temp_a0 = temp_v0->unk4;
    temp_s2 = *temp_v0->unk14;
    temp_a1 = arg0->unk8;
    temp_s3 = temp_s2->unk0;
    temp_s2_2 = temp_s2->unkC;
    if (_GLuseCIvisual != 0) {
        var_a1_2 = XCreateWindow(temp_a0, temp_a1, 0x1F4, 0x1F4, temp_s1_2, &sp20);
    } else {
        var_a1_2 = XCreateWindow(temp_a0, temp_a1, 0x1F4, 0x1F4, temp_s4, &sp20);
    }
    temp_v0->unk40 = var_a1_2;
    temp_v0->unk8 = XCreateWindow(temp_v0->unk4, var_a1_2, 0, 0, temp_s1_2, &sp20);
    _GLsetwmcolormaps(temp_v0, 0);
    XMapWindow(temp_v0->unk4, temp_v0->unk8);
    temp_v0->unk18 = __iglooCreateContextInfo(temp_v0->unk4, temp_v0, *temp_v0->unk14, 0);
}

void _GLdestroywindow(? *arg0) {
    s64 sp10;
    ? *temp_a0_3;
    ? *temp_a2;
    ? *temp_a2_2;
    ? *var_a0;
    ? *var_a3;
    s32 temp_a1;
    s32 temp_s1;
    s64 var_ra;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a2_3;

    var_ra = saved_reg_ra;
    if (arg0->unk2C != 1) {
        temp_a1 = arg0->unk20 & 4;
        if (temp_a1 != 0) {
            _GLsetmakebgprop(arg0, temp_a1);
            var_ra = sp10;
        }
        temp_a0 = *arg0->unkC;
        temp_a2 = temp_a0->unk14;
        temp_s1 = arg0->unk4;
        if (temp_a2 == arg0) {
            temp_a0->unk14 = (? *) arg0->unk0;
        } else {
            var_a0 = *temp_a2;
            var_a3 = temp_a2;
            if (var_a0 != NULL) {
loop_17:
                temp_a2_2 = *var_a0;
                if (arg0 != var_a0) {
                    var_a3 = var_a0;
                    var_a0 = temp_a2_2;
                    if (temp_a2_2 == NULL) {

                    } else {
                        goto loop_17;
                    }
                } else {
                    *var_a3 = temp_a2_2;
                }
            }
        }
        temp_a0_2 = arg0->unk44;
        if (temp_a0_2 != NULL) {
            temp_a2_3 = arg0->unk4C;
            if (temp_a0_2->unk48 == arg0) {
                sp10 = var_ra;
                temp_a0_2->unk48 = temp_a2_3;
            } else {
                arg0->unk50->unk4C = temp_a2_3;
                if (temp_a2_3 != NULL) {
                    sp10 = var_ra;
                    arg0->unk4C->unk50 = (void *) arg0->unk50;
                }
            }
        }
        sp10 = var_ra;
        _GLdestroyOvWindows(arg0);
        __iglooDestroyContextInfo(temp_s1, arg0->unk18);
        arg0->unk18 = 0;
        if (arg0->unk2C != 5) {
            XDestroyWindow(temp_s1, arg0->unk8);
            XDestroyWindow(temp_s1, arg0->unk40);
        }
        XSync(temp_s1, 0);
        temp_a0_3 = arg0->unk68;
        if (temp_a0_3 != NULL) {
            gl_free(temp_a0_3, &sub_0f020000 + 0x5948);
        }
        gl_free(arg0, &sub_0f020000 + 0x5948);
        GLlasterror = 0;
        return;
    }
    GLlasterror = -8;
}

void gl_free_windows(void) {
    s64 sp10;
    s64 sp8;
    ? *temp_s5;
    ? *temp_s5_2;
    ? *var_a0;
    s64 var_ra;
    s64 var_s5;

    var_s5 = saved_reg_s5;
    var_ra = saved_reg_ra;
    var_a0 = gl_valid_cxs;
    if (gl_valid_cxs != NULL) {
        do {
            temp_s5 = *var_a0;
            _GLdestroycontext(var_a0);
            var_a0 = temp_s5;
        } while (temp_s5 != NULL);
        var_ra = sp8;
        var_s5 = sp10;
    }
    sp8 = var_ra;
    if (gl_thedisplay != NULL) {
        var_a0 = gl_thedisplay->unk14;
        sp8 = var_ra;
        if (var_a0 != NULL) {
            sp10 = var_s5;
            sp8 = var_ra;
            do {
                temp_s5_2 = *var_a0;
                _GLdestroywindow(var_a0);
                var_a0 = temp_s5_2;
            } while (temp_s5_2 != NULL);
        }
    }
    _GLclearSlots(var_a0);
    _GLattachScreen(-1, 0);
}

void _GLclearHints(void *arg0) {
    s32 *temp_a2;
    s32 *temp_a2_2;

    temp_a2 = arg0->unk60;
    if (temp_a2 != NULL) {
        *temp_a2 = 0;
    }
    temp_a2_2 = arg0->unk64;
    if (temp_a2_2 != NULL) {
        *temp_a2_2 = 0;
    }
}

void _GLsendHints(void *arg0) {
    s64 sp10;
    s32 *temp_a2;
    s32 *temp_a2_2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (arg0->unk20 & 0x80) {
        _GLminwinsize(arg0, arg0->unk70, arg0->unk74);
        _GLmaxwinsize(arg0, arg0->unk70, arg0->unk74);
        var_ra = sp10;
    }
    temp_a2 = arg0->unk60;
    if (temp_a2 != NULL) {
        sp10 = var_ra;
        XSetWMNormalHints(arg0->unk4, arg0->unk40, temp_a2);
        XFree(arg0->unk60);
        arg0->unk60 = NULL;
    }
    temp_a2_2 = arg0->unk64;
    if (temp_a2_2 != NULL) {
        sp10 = var_ra;
        XSetWMHints(arg0->unk4, arg0->unk40, temp_a2_2);
        XFree(arg0->unk64);
        arg0->unk64 = NULL;
    }
}

void _GLsetWM_COMMAND(s64 arg0) {
    ? *temp_v0;
    ? *var_s5;
    s32 *temp_s3;
    s32 *temp_s4;
    s32 *var_s1_2;
    s32 *var_s1_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s2;
    s32 var_s0;
    s32 var_v0;
    s64 var_s1;
    s64 var_s4;

    var_s1 = saved_reg_s1;
    var_s4 = saved_reg_s4;
    var_s0 = 0;
    temp_s3 = __Argv;
    temp_s2 = __Argc;
    if (__Argc > 0) {
        var_s1_2 = temp_s3;
        temp_s4 = &temp_s3[temp_s2];
loop_3:
        temp_a1 = *var_s1_2;
        var_v0 = 0;
        var_s1_2 += 4;
        if (temp_a1 != 0) {
            var_v0 = strlen(temp_a1, temp_a1);
        }
        var_s0 = var_s0 + var_v0 + 1;
        if ((u32) var_s1_2 < (u32) temp_s4) {
            goto loop_3;
        }
        var_s1 = unksp40;
        var_s4 = unksp48;
    }
    temp_v0 = gl_malloc(var_s0, &sub_0f020000 + 0x5958);
    var_s5 = temp_v0;
    if (temp_v0 != NULL) {
        if (temp_s2 > 0) {
            unksp40 = var_s1;
            var_s1_3 = temp_s3;
            unksp48 = var_s4;
loop_13:
            temp_a1_2 = *var_s1_3;
            if (temp_a1_2 != 0) {
                strcpy(var_s5, temp_a1_2);
                var_s5 += strlen(*var_s1_3);
            } else {
                *var_s5 = 0;
            }
            var_s5 += 1;
            var_s1_3 += 4;
            if (var_s1_3 != &temp_s3[temp_s2]) {
                goto loop_13;
            }
        }
        XChangeProperty(subroutine_arg0->unk4, subroutine_arg0->unk40, 0x22, 0x1F);
        gl_free(temp_v0, &sub_0f020000 + 0x5958);
    }
}

void _GLkillmakebgclient(s64 arg0) {
    ? sp34;
    ? sp30;
    ? sp2C;
    s32 sp28;
    s32 *sp24;
    s32 *sp20;

    unksp40 = arg0;
    sp24 = NULL;
    sp20 = NULL;
    XGetWindowProperty(arg0->unk4, arg0->unk70->unk40, arg0->unk0->unk18->unk4, 0, &sp34, &sp20);
    if (sp28 == 0x21) {
        __iglooCatchXErrors(1);
        sp28 = 0;
        XGetWindowProperty(unksp40->unk4, *sp20, unksp40->unk0->unk18->unk4, 0, &sp34, &sp24);
        if (sp28 == 0x21) {
            XKillClient(unksp40->unk4, *sp20);
            XSync(unksp40->unk4, 0);
        }
        __iglooCatchXErrors(0);
        XFree(sp20);
    }
}

void _GLsetmakebgprop(? *arg0) {
    s64 sp18;
    void *temp_a1;

    sp18 = (s64) (arg0 + 0x40);
    temp_a1 = arg0->unkC;
    XChangeProperty(arg0->unk4, temp_a1->unk70->unk40, temp_a1->unk0->unk18->unk4, 0x21);
    XChangeProperty(arg0->unk4, arg0->unk40, arg0->unkC->unk0->unk18->unk4, 0x21);
}

void _GLdeletemakebgprop(void *arg0) {
    void *temp_a1;

    temp_a1 = arg0->unkC;
    XDeleteProperty(arg0->unk4, temp_a1->unk70->unk40, temp_a1->unk0->unk18->unk4);
}

void gl_adjust_window(void *arg0, s32 arg1, s32 arg2) {
    s32 sp64;
    s32 sp5C;
    s64 sp40;
    ? sp2C;
    s32 sp28;
    s32 sp24;
    ? sp20;
    ? sp1C;
    ? sp18;
    ? sp14;
    ? sp10;
    ? *sp4;
    s32 temp_s1;
    s32 temp_t2;
    s32 var_a3;
    s32 var_a5;
    s32 var_t1;
    s64 var_ra;
    u8 temp_a0;
    void *var_s0;

    var_ra = saved_reg_ra;
    var_a5 = arg1;
    var_a3 = arg2;
    sp64 = arg2;
    sp5C = arg1;
    temp_t2 = arg0->unk40;
    var_t1 = arg0->unk8;
    if (var_t1 != temp_t2) {
        temp_s1 = arg0->unk4;
        if (var_a5 == 0) {
            sp4 = &sp20;
            XGetGeometry(temp_s1, temp_t2, &sp10, &sp14);
            var_a5 = sp5C;
            var_a3 = sp64;
            var_t1 = arg0->unk8;
            var_ra = sp40;
        }
        if (arg0->unk38 == var_a5) {
            sp40 = var_ra;
            if (arg0->unk3C != var_a3) {
                goto block_5;
            }
        } else {
block_5:
            sp40 = var_ra;
            XResizeWindow(temp_s1, var_t1, var_a5, var_a3);
            _GLresizeOvWindows(arg0, sp5C, sp64);
            XFlush(temp_s1);
            arg0->unk38 = sp5C;
            var_t1 = arg0->unk8;
            arg0->unk3C = sp64;
        }
        XTranslateCoordinates(temp_s1, var_t1, arg0->unkC->unk70->unk40, 0);
        arg0->unk30 = sp24;
        _GLinvertY(arg0, (sp28 + sp64) - 1, sp64, sp24);
        temp_a0 = arg0->unk2C;
        arg0->unk34 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        if ((temp_a0 == 2) || (temp_a0 == 4)) {
            var_s0 = arg0->unk48;
            if (var_s0 != NULL) {
                do {
                    .L0f128ab0(var_s0, 0, 0);
                    var_s0 = var_s0->unk4C;
                } while (var_s0 != NULL);
            }
        }
    }
}

void _GLmapwindow(void *arg0) {
    s64 sp40;

    sp40 = (s64) arg0->unk78;
    if (arg0->unk2C == 2) {
        _GLquit_close_setup(arg0);
    }
    if (arg0->unk20 & 0x18) {
        XChangeWindowAttributes(arg0->unk4, arg0->unk40, 0x200, sp, 1);
        XMoveResizeWindow(arg0->unk4, arg0->unk40, 0, 0);
        XMoveResizeWindow(arg0->unk4, arg0->unk8, 0, 0);
    }
    if (arg0->unk20 & 4) {
        XLowerWindow(arg0->unk4, arg0->unk40);
    }
    XMapWindow(arg0->unk4, arg0->unk40);
    XFlush(arg0->unk4);
    if (!(arg0->unk20 & 2)) {
        if (sp40 != 0) {
            if (!(sp40->unk20 & 2)) {
                goto loop_10;
            }
        } else {
loop_10:
            _GLupdateQueue(1, 0);
            if (!(arg0->unk20 & 2)) {
                if (sp40 == 0) {
                    goto loop_10;
                }
                if (sp40->unk20 & 2) {

                } else {
                    goto loop_10;
                }
            }
        }
    }
    GLlasterror = 0;
}

void _GLfindbgwin(void) {
    void *temp_v0;
    void *var_v0;

    temp_v0 = gl_glx_finddisplay();
    if (temp_v0 != NULL) {
        var_v0 = temp_v0->unk14;
        if (var_v0 != NULL) {
loop_2:
            if (!(var_v0->unk20 & 4)) {
                var_v0 = var_v0->unk0;
                if (var_v0 == NULL) {

                } else {
                    goto loop_2;
                }
            }
        }
    }
}
