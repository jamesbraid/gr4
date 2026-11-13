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

? XChangeWindowAttributes(s32, s32, ?, void *);     /* extern */
? XConfigureWindow(s32, s32, s32, void *);          /* extern */
s32 XCreateFontCursor(s32, s32);                    /* extern */
? XFlush(s32);                                      /* extern */
? XFree(s32);                                       /* extern */
? XGetGeometry(s32, s32, ? *, ? *);                 /* extern */
? XGrabServer(s32);                                 /* extern */
? XInstallColormap(void *, s32, s32, s32);          /* extern */
? XLowerWindow(s32, s32, ?);                        /* extern */
? XMoveResizeWindow(s32, s32, s32, s32);            /* extern */
? XMoveWindow(s32, s32, s32, s32);                  /* extern */
? XParseColor(s32, s32, s32, ? *);                  /* extern */
s64 XParseGeometry(s32, s32 *, s32 *, s32 *);       /* extern */
s32 XQueryTree(s32, s64, void *, s32 *);            /* extern */
? XRaiseWindow(s32, s32, ?);                        /* extern */
? XRecolorCursor(s32, s32, ? *, ? *);               /* extern */
? XResizeWindow(s32, s32, s16, s16);                /* extern */
? XSGIMiscSetThirdCursorColor(s32, s32, void *);    /* extern */
? XSelectInput(s32, s32, s64);                      /* extern */
? XSetIconName(s32, s32, s32, void *);              /* extern */
? XSetInputFocus(s32, s32, ?, ?);                   /* extern */
? XStoreName(s32, s32, u8 *);                       /* extern */
? XSync(s32, ?);                                    /* extern */
? XTranslateCoordinates(s32, s32, s32, ?);          /* extern */
? XUngrabServer(s32);                               /* extern */
f64 atof(u8 *);                                     /* extern */
s32 atoi(s32);                                      /* extern */
? exit(?);                                          /* extern */
? fflush(?);                                        /* extern */
s32 fork();                                         /* extern */
? gconfig();                                        /* extern */
? getsize(void *, s32 *, ?, gl_wstate **);          /* extern */
? icontitle(u8 *);                                  /* extern */
? perror(void *);                                   /* extern */
? signal(?, ?);                                     /* extern */
s32 strcmp(u8 *, u8 *, s32);                        /* extern */
? strncpy(u8 *, s32, s32);                          /* extern */
u8 *strtok(?, s32);                                 /* extern */
extern s32 _GLblockWhenStowed;
extern s32 _GLdirtycmaps;
extern s32 _GLinputChangeBug;
extern s32 _GLmotionThresh;
extern s32 _GLnoDestAlpha;
extern s32 _GLsetvalDoesConstrain;
extern s32 _GLsoftAttach;
extern s32 _GLsyncmapcolors;
extern u8 *_GLtabletScale;
extern s32 _GLuseCIvisual;
extern s32 __iglooFlushMode;
extern s32 __iglooNoReleaseContext;
extern s32 __libc_attr;
extern s32 gl_putinbackground;
extern s32 gl_scrntab;
extern s32 gl_selected_scrn;
extern void *gl_thedisplay;
extern ? initportreq;
extern ? sub_0f020000;
extern ? sub_0f030000;

void _GLsetTabletScaling(s32 arg0) {
    void *temp_a3;
    void *var_a2;

    var_a2 = &sub_0f030000 - 0x68C8;
    temp_a3 = var_a2 + 0x18;
loop_1:
    if (var_a2->unkC8 != arg0) {
        var_a2 += 8;
        if (var_a2 == temp_a3) {
            return;
        }
        goto loop_1;
    }
    _GLtabletScale = var_a2->unkCC;
}

void gl_ws_compat(u32 arg0, s32 arg1) {
    switch (arg0) {
    case 12:
        gl_g_winattach(arg1, (arg0 * 4) + &jtbl_0f024318);
        break;
    case 3:
        _GLsoftAttach = arg1;
        break;
    case 4:
        saved_reg_gp->unk-3958 = (s32) (arg1 == 0);
        break;
    case 5:
        _GLsyncmapcolors = arg1;
        break;
    case 6:
        _GLinputChangeBug = arg1;
        break;
    case 7:
        saved_reg_gp->unk-50A0 = arg1;
        break;
    case 2:
        if (arg1 != 0) {
            M2C_TRAP_IF(arg1 == 0);
            _GLmotionThresh = 0x3E8 / arg1;
        } else {
            _GLmotionThresh = 0;
        }
        break;
    case 11:
        _GLuseCIvisual = arg1;
        break;
    case 13:
        _GLnoDestAlpha = arg1;
        break;
    case 14:
        __iglooNoReleaseContext = arg1;
        break;
    case 15:
        __iglooFlushMode = arg1;
        break;
    }
}

void gl_g_foreground(void) {
    _GLhintinit(0);
    gl_putinbackground = 0;
}

void _GLbecomeIconic(s64 arg0) {
    s64 sp20;
    s64 sp0;
    s64 var_ra;
    u8 temp_s5;
    void *temp_a0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_s2;

    var_ra = saved_reg_ra;
    sp0 = arg0;
    temp_s2 = arg0->unk78;
    temp_s5 = arg0->unk2D;
    if (_GLblockWhenStowed == 0) {
        _GLpostEvent(0x21B, (s64) ((s64) temp_s5 << 0x30) >> 0x30, 0);
        var_ra = sp20;
    }
    temp_a1 = (temp_s5 * 0xC) + (&sub_0f030000 + 0x7A78);
    temp_a1->unk8 = (s32) (temp_a1->unk8 | 1);
    if (temp_s2 == NULL) {
        return;
    }
    temp_a1_2 = sp0->unk7C;
    sp20 = var_ra;
    temp_s2->unk7C = temp_a1_2;
    _GLbindcontext(temp_s2, temp_a1_2);
    temp_a0 = sp0->unk7C;
    if (gl_wstatep == temp_a0) {
        _GLsetcontext(temp_a0);
        gconfig();
    }
}

void _GLbecomeNormal(void *arg0) {
    s64 sp20;
    s32 temp_s8;
    s64 var_ra;
    u8 temp_s7;
    void *temp_a0;
    void *temp_a1;

    var_ra = saved_reg_ra;
    temp_s8 = arg0->unk78;
    temp_s7 = arg0->unk2D;
    if (_GLblockWhenStowed == 0) {
        _GLpostEvent(0x21C, (s64) ((s64) temp_s7 << 0x30) >> 0x30, 0);
        var_ra = sp20;
    }
    temp_a1 = (temp_s7 * 0xC) + (&sub_0f030000 + 0x7A78);
    temp_a1->unk8 = (s32) (temp_a1->unk8 & ~1);
    if (temp_s8 == 0) {
        return;
    }
    sp20 = var_ra;
    _GLbindcontext(arg0, arg0->unk7C);
    temp_a0 = arg0->unk7C;
    if (gl_wstatep == temp_a0) {
        _GLsetcontext(temp_a0);
        gconfig();
    }
}

void _mex_findslot(void *arg0) {
    s32 var_v0;
    void *var_a4;

    var_v0 = 1;
    var_a4 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF47674)->unk-7FA4 + 0x7A84;
loop_3:
    if (arg0 != NULL) {
        if (var_a4->unk4 == 0) {
            if (arg0 == NULL) {
                goto block_1;
            }
            goto block_2;
        }
        return;
    }
block_1:
    if (var_a4->unk4 != 0) {
block_2:
        var_v0 += 1;
        var_a4 += 0xC;
        if (var_v0 != 0x100) {
            goto loop_3;
        }
    }
}

void _GLmakeSizeHints(void *arg0, s32 *arg1) {
    s64 sp0;

    if (*arg1 & 3) {
        sp0 = (s64) arg1;
        if (!(arg0->unk20 & 2)) {
            _GLallocSizeHints(arg0, 1);
            arg0->unk60->unk4 = (s32) sp0->unk4;
            arg0->unk60->unk8 = (s32) sp0->unk8;
        }
    }
}

void _GLclearConfigure(s32 *arg1) {
    *arg1 = 0;
}

void _GLsendConfigure(void *arg0, void *arg1) {
    s64 sp0;
    s32 temp_s2;
    s32 temp_s4;
    void *temp_a3;

    temp_s4 = arg1->unk0;
    if (temp_s4 != 0) {
        temp_s2 = arg0->unk4;
        if (arg1->unkC == 0) {
            arg1->unkC = 1;
        }
        if (arg1->unk10 == 0) {
            arg1->unk10 = 1;
        }
        temp_a3 = arg1 + 4;
        sp0 = (s64) temp_a3;
        XConfigureWindow(temp_s2, arg0->unk40, temp_s4, temp_a3);
        if (arg0->unk8 != arg0->unk40) {
            arg1->unk4 = 0;
            arg1->unk8 = 0;
            XConfigureWindow(temp_s2, arg0->unk8, temp_s4 | 3, (void *) sp0);
        }
        XSync(temp_s2, 0);
        arg1->unk0 = 0;
    }
}

void HideBorder(void *arg0, s32 arg1) {
    s32 temp_a3;
    s32 var_a3;

    temp_a3 = arg0->unk20;
    if (arg1 != 0) {
        var_a3 = temp_a3 | 0x200;
    } else {
        var_a3 = temp_a3 & ~0x200;
    }
    arg0->unk20 = var_a3;
    if (var_a3 & 0x600) {
        _GLsetwmdecor(NULL, var_a3);
    } else {
        _GLsetwmdecor((void *)1, var_a3);
    }
}

void gl_winconstraints(void *arg0, void *arg1) {
    s64 sp28;
    u16 sp6;
    u16 sp4;
    s16 sp2;
    s16 sp0;
    ? var_v0;
    s16 temp_at;
    s16 var_a2;
    s16 var_a3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_at_2;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a1;
    s32 var_s2;
    s32 var_s3;
    s64 var_ra;
    u8 temp_a2_3;
    void **temp_a3;
    void *temp_s2;
    void *temp_s3;
    void *temp_v0_2;

    var_ra = saved_reg_ra;
    var_s3 = 0;
    var_s2 = 0;
    if (saved_reg_gp->unk-50A0 != 0) {
        var_v0 = 0x80;
    } else {
        var_v0 = 0x480;
    }
    temp_v1 = arg0->unk20 & ~var_v0;
    arg0->unk20 = temp_v1;
    if (temp_v1 & 2) {
        var_s3 = 1;
        var_s2 = 1;
        sp6 = (u16) arg0->unk3C;
        sp4 = (u16) arg0->unk38;
        sp2 = (s16) arg0->unk34;
        sp0 = (s16) arg0->unk30;
    }
    temp_at = initportreq.unk14;
    if (initportreq.unkE != 0) {
        arg1->unkC = (s32) initportreq.unk10;
        arg0->unk70 = (s32) initportreq.unk10;
        arg0->unk38 = (s32) initportreq.unk10;
        arg1->unk10 = (s32) initportreq.unk12;
        arg0->unk74 = (s32) initportreq.unk12;
        arg0->unk3C = (s32) initportreq.unk12;
        arg1->unk0 = (s32) (arg1->unk0 | 0xC);
        var_s2 = 1;
        temp_v0 = arg0->unk3C;
        sp6 = (u16) temp_v0;
        sp4 = (u16) arg0->unk38;
        temp_at_2 = arg0->unk20 | 0x80;
        arg0->unk20 = temp_at_2;
        if (temp_at_2 & 2) {
            temp_a2 = arg0->unk34;
            if (arg0->unk2C == 4) {
                arg1->unk8 = (s32) ((arg0->unk44->unk3C - temp_a2) - temp_v0);
            } else {
                arg1->unk8 = _GLinvertY(arg0, (temp_a2 + temp_v0) - 1, temp_a2);
                var_ra = sp28;
            }
            arg1->unk4 = (s32) arg0->unk30;
            arg1->unk0 = (s32) (arg1->unk0 | 3);
        }
    }
    if (temp_at != 0) {
        arg1->unk4 = (s32) initportreq.unk16;
        temp_a2_2 = arg0->unk3C;
        sp28 = var_ra;
        arg1->unk8 = _GLinvertY(arg0, (initportreq.unk18 + temp_a2_2) - 1, temp_a2_2, initportreq.unk16);
        arg1->unk0 = (s32) (arg1->unk0 | 3);
        var_s3 = 1;
        sp2 = initportreq.unk16;
        sp0 = initportreq.unk16;
    }
    if (initportreq.unk0 != 0) {
        sp28 = var_ra;
        _GLminwinsize(arg0, initportreq.unk0, initportreq.unk2);
    }
    if (initportreq.unk4 != 0) {
        sp28 = var_ra;
        _GLmaxwinsize(arg0, initportreq.unk4, initportreq.unk6);
    }
    if (initportreq.unk8 != 0) {
        sp28 = var_ra;
        _GLwinaspect(arg0, initportreq.unkA, initportreq.unkC);
    }
    if (initportreq.unk34 != 0) {
        arg0->unk20 = (s32) (arg0->unk20 | 0x400);
    }
    sp28 = var_ra;
    if (arg0->unk2C == 2) {
        if (var_s3 != 0) {
            if (sp0 > 0) {
                goto block_38;
            }
            if ((sp2 > 0) || (var_s2 == 0)) {
                goto block_38;
            }
            temp_v0_2 = arg0->unkC;
            if (((s32) sp4 >= temp_v0_2->unk74) && ((s32) sp6 >= temp_v0_2->unk78)) {
                sp28 = var_ra;
                var_a1 = 1;
            } else {
                goto block_38;
            }
        } else {
block_38:
            sp28 = var_ra;
            var_a1 = 0;
        }
        _mex_findslot(arg0, var_a1);
    }
    _GLwinstep(arg0, initportreq.unk1A, initportreq.unk1C);
    _GLwinmargin(arg0, initportreq.unk1E, initportreq.unk20);
    if (initportreq.unk36 != 0) {
        temp_s3 = &sub_0f030000 + 0x7A78;
        if (*((arg0->unk2D * 0xC) + temp_s3) == 0) {
            temp_s2 = _GLnewwindow(arg0->unkC->unk70);
            __GLqdevice(0x21D);
            temp_a3 = (arg0->unk2D * 0xC) + temp_s3;
            *temp_a3 = temp_s2;
            temp_a2_3 = arg0->unk2D;
            arg0->unk78 = temp_s2;
            temp_s2->unk2D = temp_a2_3;
            _GLiconwindow(arg0, temp_s2, temp_a2_3, temp_a3);
            var_a2 = initportreq.unk38;
            if (var_a2 == 0) {
                var_a2 = 1;
                initportreq.unk38 = 1;
            }
            var_a3 = initportreq.unk3A;
            if (var_a3 == 0) {
                var_a3 = 1;
                initportreq.unk3A = 1;
            }
            XResizeWindow(temp_s2->unk4, temp_s2->unk40, var_a2, var_a3);
            XResizeWindow(temp_s2->unk4, temp_s2->unk8, initportreq.unk38, initportreq.unk3A);
        }
    }
    _GLhintinit(1);
}

void ParseGLDefaults(void *arg0, ? arg1, s32 arg2) {
    f32 *temp_a1;
    f32 *temp_a3;
    f32 *temp_v1;
    f32 *var_v0_2;
    f32 *var_v0_3;
    f32 *var_v0_4;
    f32 *var_v0_5;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_s1;
    s32 temp_v0_2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a3;
    s32 var_s1;
    s32 var_s4;
    s32 var_s6;
    s32 var_v0_6;
    u8 *temp_v0;
    u8 *temp_v0_3;
    u8 *var_s2;
    u8 *var_v0;
    u8 var_a0;
    u8 var_a2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;

    var_s4 = 0;
    var_s1 = 0;
    temp_v0 = strtok(arg1, saved_reg_gp - 0x43F8);
    var_s2 = temp_v0;
    if (temp_v0 != NULL) {
        var_s6 = 0;
loop_5:
        var_a2 = *var_s2;
        if ((__libc_attr + (var_a2 * 4))->unk4 & 0x4003) {
            var_v0 = var_s2;
            if (var_a2 != 0) {
                var_a0 = var_a2;
loop_10:
                var_a2 = (u8) __libc_attr;
                if (((var_a0 * 4) + var_a2)->unk4 & 1) {
                    var_v0->unk0 = (u8) ((var_a0 * 2) + var_a2)->unk406;
                }
                var_a0 = var_v0->unk1;
                var_v0 += 1;
                if (var_a0 != 0) {
                    goto loop_10;
                }
            }
            if (strcmp(var_s2, saved_reg_gp - 0x43F0, (s32) var_a2) == 0) {
                temp_a4 = var_s4 - var_s1;
                if (var_s1 < var_s4) {
                    var_a2_2 = temp_a4 & 3;
                    var_v0_2 = (var_s1 * 4) + arg2;
                    if (var_a2_2 != 0) {
                        do {
                            temp_f0 = *var_v0_2 * (f32) arg0->unkC->unk7C;
                            var_v0_2 += 4;
                            var_a2_2 -= 1;
                            var_v0_2->unk-4 = temp_f0;
                        } while (var_a2_2 != 0);
                    }
                    if ((temp_a4 >> 2) != 0) {
                        var_v0_3 = var_v0_2;
                        do {
                            var_v0_3->unk0 *= (f32) arg0->unkC->unk7C;
                            var_v0_3->unk4 = (f32) (var_v0_3->unk4 * (f32) arg0->unkC->unk7C);
                            var_v0_3->unk8 = (f32) (var_v0_3->unk8 * (f32) arg0->unkC->unk7C);
                            temp_f2 = var_v0_3->unkC * (f32) arg0->unkC->unk7C;
                            var_v0_3 += 0x10;
                            var_v0_3->unk-4 = temp_f2;
                        } while (var_v0_3 != (var_s6 + arg2));
                    }
                    var_s1 = var_s4;
                }
            } else if (strcmp(var_s2, saved_reg_gp - 0x43E8) == 0) {
                temp_a4_2 = var_s4 - var_s1;
                if (var_s1 < var_s4) {
                    var_a2_3 = temp_a4_2 & 3;
                    var_v0_4 = (var_s1 * 4) + arg2;
                    if (var_a2_3 != 0) {
                        do {
                            temp_f2_2 = *var_v0_4 * (f32) arg0->unkC->unk80;
                            var_v0_4 += 4;
                            var_a2_3 -= 1;
                            var_v0_4->unk-4 = temp_f2_2;
                        } while (var_a2_3 != 0);
                    }
                    if ((temp_a4_2 >> 2) != 0) {
                        var_v0_5 = var_v0_4;
                        do {
                            var_v0_5->unk0 *= (f32) arg0->unkC->unk80;
                            var_v0_5->unk4 = (f32) (var_v0_5->unk4 * (f32) arg0->unkC->unk80);
                            var_v0_5->unk8 = (f32) (var_v0_5->unk8 * (f32) arg0->unkC->unk80);
                            temp_f0_2 = var_v0_5->unkC * (f32) arg0->unkC->unk80;
                            var_v0_5 += 0x10;
                            var_v0_5->unk-4 = temp_f0_2;
                        } while (var_v0_5 != (var_s6 + arg2));
                    }
                    var_s1 = var_s4;
                }
            } else {
                temp_a4_3 = var_s4 - var_s1;
                if (strcmp(var_s2, saved_reg_gp - 0x43E0) != 0) {
                    goto block_3;
                }
                var_v0_6 = var_s1 * 4;
                if (var_s1 < var_s4) {
                    var_a3 = temp_a4_3 >> 1;
                    if (temp_a4_3 & 1) {
                        temp_a0 = arg0->unk60;
                        if (temp_a0 != NULL) {
                            if (var_s1 & 1) {
                                var_a2_4 = temp_a0->unk28;
                            } else {
                                var_a2_4 = temp_a0->unk24;
                            }
                            temp_a1 = var_v0_6 + arg2;
                            *temp_a1 *= (f32) var_a2_4;
                        }
                        var_v0_6 += 4;
                        var_s1 += 1;
                        var_a3 = temp_a4_3 >> 1;
                    }
                    if (var_a3 != 0) {
loop_46:
                        temp_a0_2 = arg0->unk60;
                        if (temp_a0_2 != NULL) {
                            if (!(var_s1 & 1)) {
                                var_a2_5 = temp_a0_2->unk24;
                            } else {
                                var_a2_5 = temp_a0_2->unk28;
                            }
                            temp_v1 = var_v0_6 + arg2;
                            *temp_v1 *= (f32) var_a2_5;
                        }
                        temp_a0_3 = arg0->unk60;
                        temp_v0_2 = var_v0_6 + 4;
                        temp_s1 = var_s1 + 1;
                        if (temp_a0_3 != NULL) {
                            if (temp_s1 & 1) {
                                var_a2_6 = temp_a0_3->unk28;
                            } else {
                                var_a2_6 = temp_a0_3->unk24;
                            }
                            temp_a3 = temp_v0_2 + arg2;
                            *temp_a3 *= (f32) var_a2_6;
                        }
                        var_s1 = temp_s1 + 1;
                        var_v0_6 = temp_v0_2 + 4;
                        if (var_s4 != var_s1) {
                            goto loop_46;
                        }
                    }
block_3:
                    var_s1 = var_s4;
                }
            }
        } else {
            var_s6 += 4;
            var_s4 += 1;
            (var_s6 + arg2)->unk-4 = (f32) atof(var_s2);
        }
        temp_v0_3 = strtok(0, saved_reg_gp - 0x43F8);
        var_s2 = temp_v0_3;
        if (temp_v0_3 != NULL) {
            goto loop_5;
        }
    }
}

void CheckPreferences(void *arg0, void *arg1) {
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    f32 sp98;
    f32 sp88;
    f32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    ? sp40;
    s32 sp38;
    ? *temp_a3;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_f2;
    s32 temp_f3;
    s32 temp_f4;
    s32 temp_f5;
    s32 temp_f6;
    s32 temp_f7;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 var_a0;
    s32 var_a3;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_v0_6;
    s64 var_ra;
    s64 var_s0;
    s64 var_s3;
    void *temp_a1_2;
    void *temp_s7;
    void *var_s3_2;

    var_s0 = saved_reg_s0;
    var_s3 = saved_reg_s3;
    var_ra = saved_reg_ra;
    var_v0 = arg0->unk54;
    if (var_v0 != 0) {
        temp_v0 = _GLgetwinresource(arg0, saved_reg_gp - 0x43D8, &sub_0f020000 + 0x4358);
        var_ra = spE8;
        if (temp_v0 != 0) {
            var_s5 = 0;
            var_s3_2 = &sub_0f030000 - 0x68C8;
            temp_s7 = var_s3_2 + 0x134;
loop_3:
            var_s3_2 += 4;
            if (strcmp((u8 *) temp_v0, var_s3_2->unkE8) != 0) {
                var_s5 += 1;
                if (var_s3_2 != temp_s7) {
                    goto loop_3;
                }
            } else {
                temp_v0_2 = XCreateFontCursor(arg0->unk4, var_s5 * 2);
                sp38 = temp_v0_2;
                arg0->unk54 = temp_v0_2;
                arg0->unk5C = temp_v0_2;
                XChangeWindowAttributes(arg0->unk4, arg0->unk8, 0x4000, sp);
            }
            gl_free(temp_v0, &sub_0f020000 + 0x3E58 + 0x4B0);
            var_s0 = spE0;
            var_s3 = spF0;
            var_ra = spE8;
        } else {
            var_s0 = spE0;
        }
        var_v0 = arg0->unk54;
    }
    spE8 = var_ra;
    if (var_v0 != 0) {
        temp_v0_3 = _GLgetwinresource(arg0, &sub_0f020000 + 0x4368, &sub_0f020000 + 0x4378);
        if (temp_v0_3 != 0) {
            _GLgetCurrentCursorColors(&sp40);
            temp_a1 = arg0->unk14->unk4;
            spB0 = (s64) temp_a1;
            XParseColor(arg0->unk4, temp_a1, temp_v0_3, &sp40);
            temp_a1_2 = &sub_0f020000 + 0x3E58 + 0x4B0;
            spB8 = (s64) temp_a1_2;
            gl_free(temp_v0_3, temp_a1_2);
            _GLsetCurrentCursorColor(1, &sp40);
            temp_v0_4 = _GLgetwinresource(arg0, &sub_0f020000 + 0x4388, &sub_0f020000 + 0x4398);
            temp_a3 = &sp40 + 0xC;
            if (temp_v0_4 != 0) {
                spA8 = (s64) temp_a3;
                XParseColor(arg0->unk4, (s32) spB0, temp_v0_4, temp_a3);
                gl_free(temp_v0_4, (void *) spB8);
                _GLsetCurrentCursorColor(2, (? *) spA8);
            }
            XRecolorCursor(arg0->unk4, arg0->unk54, &sp40, temp_a3);
            XSGIMiscSetThirdCursorColor(arg0->unk4, arg0->unk54, &sp40 + 0x18);
            spF0 = var_s3;
        }
    }
    spE0 = var_s0;
    spF0 = var_s3;
    temp_s3 = arg0->unk20 & 0x80;
    temp_v0_5 = _GLgetwinresource(arg0, &sub_0f020000 + 0x43B0, &sub_0f020000 + 0x43C0);
    if (temp_v0_5 == 0) {
        var_a0 = arg1->unk0;
    } else {
        temp_v0_6 = XParseGeometry(temp_v0_5, &sp68, &sp6C, &sp70);
        spD8 = temp_v0_6;
        gl_free(temp_v0_5, &sub_0f020000 + 0x3E58 + 0x4B0, temp_v0_6);
        if (temp_s3 == 0) {
            if ((temp_v0_6 & 0xC) == 0xC) {
                arg1->unkC = sp70;
                arg0->unk38 = sp70;
                arg0->unk70 = sp70;
                arg1->unk10 = sp74;
                arg0->unk3C = sp74;
                arg0->unk74 = sp74;
                arg1->unk0 = (s32) (arg1->unk0 | 0xC);
                arg0->unk20 = (s32) (arg0->unk20 | 0x80);
            }
        }
        temp_a1_3 = arg0->unk38;
        sp70 = temp_a1_3;
        sp74 = arg0->unk3C;
        var_a0 = arg1->unk0;
        if ((temp_v0_6 & 3) == 3) {
            if (temp_v0_6 & 0x10) {
                var_a3 = (arg0->unkC->unk74 + sp68) - temp_a1_3;
            } else {
                var_a3 = sp68;
            }
            arg1->unk4 = var_a3;
            if (temp_v0_6 & 0x20) {
                var_v0_2 = (arg0->unkC->unk78 + sp6C) - sp74;
            } else {
                var_v0_2 = sp6C;
            }
            arg1->unk8 = var_v0_2;
            var_a0 |= 3;
            arg1->unk0 = var_a0;
        }
    }
    if (var_a0 != 0) {
        goto block_13;
    }
    temp_v0_7 = _GLgetwinresource(arg0, &sub_0f020000 + 0x43D0, &sub_0f020000 + 0x43E0);
    if (temp_v0_7 == 0) {
        if (temp_s3 == 0) {
            goto block_32;
        }
    } else {
        _mex_findslot(arg0, temp_v0_7, &sp78);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 4) {
            temp_f7 = (s32) sp80;
            arg1->unkC = temp_f7;
            arg0->unk38 = temp_f7;
            temp_f6 = (s32) sp84;
            arg1->unk10 = temp_f6;
            arg0->unk3C = temp_f6;
            temp_f5 = (s32) sp78;
            arg1->unk4 = temp_f5;
            temp_f4 = (s32) sp7C;
            arg1->unk8 = _GLinvertY(arg0, (arg0->unk3C + temp_f4) - 1, temp_f4, (s16) temp_f5);
            arg1->unk0 = 0xF;
        }
        gl_free(temp_v0_7, &sub_0f020000 + 0x3E58 + 0x4B0);
block_13:
        if (temp_s3 == 0) {
block_32:
            temp_v0_8 = _GLgetwinresource(arg0, saved_reg_gp - 0x43D0, saved_reg_gp - 0x43C8);
            if (temp_v0_8 != 0) {
                _mex_findslot(arg0, temp_v0_8, &sp88);
                if (M2C_ERROR(/* Read from unset register $v0 */) == 2) {
                    temp_f3 = (s32) sp88;
                    arg1->unkC = temp_f3;
                    arg0->unk38 = temp_f3;
                    arg0->unk70 = temp_f3;
                    temp_f2 = (s32) sp8C;
                    arg1->unk10 = temp_f2;
                    arg0->unk3C = temp_f2;
                    arg0->unk74 = temp_f2;
                    arg1->unk0 = (s32) (arg1->unk0 | 0xC);
                    arg0->unk20 = (s32) (arg0->unk20 | 0x80);
                }
                gl_free(temp_v0_8, &sub_0f020000 + 0x3E58 + 0x4B0);
            }
        }
    }
    temp_v0_9 = _GLgetwinresource(arg0, saved_reg_gp - 0x43C0, saved_reg_gp - 0x43B8);
    if (temp_v0_9 != 0) {
        _mex_findslot(arg0, temp_v0_9, &sp98);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 2) {
            temp_f1 = (s32) sp98;
            arg1->unk4 = temp_f1;
            temp_f0 = (s32) sp9C;
            arg1->unk8 = _GLinvertY(arg0, (arg0->unk3C + temp_f0) - 1, temp_f0, (s16) temp_f1);
            arg1->unk0 = (s32) (arg1->unk0 | 3);
        }
        gl_free(temp_v0_9, &sub_0f020000 + 0x3E58 + 0x4B0);
    }
}

void _GLmex_countwins(void) {
    s32 temp_a5;
    void *temp_a3;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *var_a3;

    temp_a5 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF46634)->unk-7FA4 + 0x7A78;
    temp_a3 = temp_a5 + 0xC;
    temp_a4 = temp_a3->unk4;
    if (temp_a4 != NULL) {
        if (!(temp_a4->unk20 & 2)) {
            if (temp_a3->unk8 & 1) {

            }
        }
    }
    var_a3 = temp_a3 + 0xC;
loop_13:
    temp_a4_2 = var_a3->unk4;
    if (temp_a4_2 != NULL) {
        if (!(temp_a4_2->unk20 & 2)) {
            if (var_a3->unk8 & 1) {

            }
        }
    }
    temp_a4_3 = var_a3->unk10;
    if (temp_a4_3 != NULL) {
        if (!(temp_a4_3->unk20 & 2)) {
            if (var_a3->unk14 & 1) {

            }
        }
    }
    var_a3 += 0x18;
    if (var_a3 != (temp_a5 + 0xC00)) {
        goto loop_13;
    }
}

void gl_strcasecmp(u8 *arg0, u8 *arg1, s16 arg2) {
    s16 var_a2;
    u8 *var_a3;
    u8 *var_a3_2;
    u8 temp_a5;
    u8 temp_a5_2;
    u8 var_a4;
    u8 var_a4_2;

    var_a2 = arg2;
    var_a3 = arg0;
    temp_a5 = *arg0;
    if (temp_a5 != 0) {
        var_a4 = temp_a5;
loop_4:
        if (((var_a4 * 4) + __libc_attr)->unk4 & 1) {
            var_a3->unk0 = (u8) ((var_a4 * 2) + __libc_attr)->unk406;
        }
        var_a4 = var_a3->unk1;
        var_a3 += 1;
        if (var_a4 != 0) {
            goto loop_4;
        }
    }
    temp_a5_2 = *arg1;
    var_a3_2 = arg1;
    if (temp_a5_2 != 0) {
        var_a4_2 = temp_a5_2;
loop_10:
        if (((var_a4_2 * 4) + __libc_attr)->unk4 & 1) {
            var_a2 = ((var_a4_2 * 2) + __libc_attr)->unk406;
            var_a3_2->unk0 = (u8) var_a2;
        }
        var_a4_2 = var_a3_2->unk1;
        var_a3_2 += 1;
        if (var_a4_2 != 0) {
            goto loop_10;
        }
    }
    strcmp((u8 *) var_a2, var_a3_2);
}

void _GLisTrue(u8 *arg0) {
    gl_strcasecmp(saved_reg_gp - 0x43B0);
    if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && (gl_strcasecmp(arg0, saved_reg_gp - 0x43A8), (M2C_ERROR(/* Read from unset register $v0 */) != 0)) && (gl_strcasecmp(arg0, saved_reg_gp - 0x43A0), (M2C_ERROR(/* Read from unset register $v0 */) != 0)) && (gl_strcasecmp(arg0, saved_reg_gp - 0x4398), (M2C_ERROR(/* Read from unset register $v0 */) != 0))) {

    }
}

void _GLisNumeric(u8 *arg0) {
    u8 *var_a0;
    u8 var_a3;

    var_a0 = arg0;
    var_a3 = *var_a0;
    if (var_a3 != 0) {
loop_1:
        if (((var_a3 * 4) + __libc_attr)->unk4 & 4) {
            var_a3 = var_a0->unk1;
            var_a0 += 1;
            if (var_a3 != 0) {
                goto loop_1;
            }
        }
    }
}

void _GLisginit(void) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF463B0;
    temp_at->unk-509C = 1;
    *temp_at->unk-7F3C = 0;
}

void gl_g_winopen(u8 *arg0) {
    s64 sp78;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 var_s5;
    s64 temp_a0_2;
    s64 var_a2;
    s64 var_s0;
    s64 var_s2;
    u8 *var_s1;
    u8 *var_s4;
    u8 temp_s2;
    void **temp_v0;
    void **var_s0_2;
    void *temp_a0;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_at;
    void *temp_at_2;
    void *temp_v0_12;
    void *temp_v0_9;
    void *var_a3;

    var_s0 = saved_reg_s0;
    var_s2 = saved_reg_s2;
    var_s1 = arg0;
    var_s5 = 0;
    if (arg0 == NULL) {
        var_s1 = saved_reg_gp - 0x4390;
    }
    if (*var_s1 != 0) {
        var_s4 = var_s1;
    } else {
        var_s4 = saved_reg_gp->unk-3954;
    }
    temp_a4 = saved_reg_gp->unk-5098 + 1;
    saved_reg_gp->unk-5098 = temp_a4;
    if (temp_a4 != 1) {
        _GLinitgl();
    } else {
        _GLinitgl();
        _GLappname(var_s4);
        temp_v0 = &sub_0f030000 - 0x68C8;
        temp_a0 = *temp_v0;
        if (temp_a0 != NULL) {
            var_s0_2 = temp_v0;
            var_a3 = temp_a0;
loop_41:
            temp_v0_2 = _GLgetresource(&sub_0f020000 + 0x43F0, &sub_0f020000 + 0x4400, var_s0_2->unk4, var_a3);
            if (temp_v0_2 != 0) {
                if (var_s0_2->unkC == 0) {
                    gl_strcasecmp((u8 *) temp_v0_2);
                } else {
                    atoi(temp_v0_2);
                }
                __GLglcompat(var_s0_2->unk8, M2C_ERROR(/* Read from unset register $v0 */));
                gl_free(temp_v0_2, saved_reg_gp - 0x4508);
            }
            var_a3 = var_s0_2->unk10;
            var_s0_2 += 0x10;
            if (var_a3 != NULL) {
                goto loop_41;
            }
            var_s0 = sp78;
            var_s2 = sp30;
        }
        sp30 = var_s2;
        temp_v0_3 = _GLgetresource(&sub_0f020000 + 0x43F0, &sub_0f020000 + 0x4400, &sub_0f020000 + 0x4410, &sub_0f020000 + 0x4428);
        if (temp_v0_3 != 0) {
            sp40 = 0x7D0;
            gl_strcasecmp((u8 *) temp_v0_3, saved_reg_gp - 0x4388, (u8 *)0x7D0);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                sp40 = 0xF;
            } else {
                gl_strcasecmp((u8 *) temp_v0_3, saved_reg_gp - 0x4380);
                if ((M2C_ERROR(/* Read from unset register $v0 */) == 0) || (gl_strcasecmp((u8 *) temp_v0_3, &sub_0f020000 + 0x4440), (M2C_ERROR(/* Read from unset register $v0 */) == 0))) {
                    sp40 = 0;
                } else {
                    gl_strcasecmp((u8 *) temp_v0_3, saved_reg_gp - 0x4378);
                    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                        sp40 = 0x7D0;
                    } else {
                        gl_strcasecmp((u8 *) temp_v0_3);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            sp40 = atoi(temp_v0_3);
                        }
                    }
                }
            }
            gl_free(temp_v0_3, saved_reg_gp - 0x4508);
            if (sp40 > 0) {
                M2C_TRAP_IF(sp40 == 0);
                _GLmotionThresh = 0x3E8 / sp40;
            } else {
                _GLmotionThresh = 0x7D0;
            }
        }
        temp_v0_4 = _GLgetresource(&sub_0f020000 + 0x43F0, &sub_0f020000 + 0x4400, &sub_0f020000 + 0x4450, &sub_0f020000 + 0x4460);
        if (temp_v0_4 != 0) {
            gl_strcasecmp((u8 *) temp_v0_4);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                gl_g_winattach(atoi(temp_v0_4));
            } else {
                temp_at = &sub_0f030000 - 0x68C8;
                sp38 = (s64) temp_at;
                sp28 = (s64) (temp_at + 0x18);
loop_75:
                gl_strcasecmp((u8 *) temp_v0_4, sp38->unkCC);
                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                    _GLtabletScale = sp38->unkCC;
                } else {
                    temp_a0_2 = sp38 + 8;
                    sp38 = temp_a0_2;
                    if (temp_a0_2 != sp28) {
                        goto loop_75;
                    }
                }
            }
            gl_free(temp_v0_4, saved_reg_gp - 0x4508);
        }
        temp_v0_5 = _GLgetresource(&sub_0f020000 + 0x4470, &sub_0f020000 + 0x4488, NULL);
        if (temp_v0_5 != 0) {
            gl_strcasecmp((u8 *) temp_v0_5);
            _GLsetvalDoesConstrain = M2C_ERROR(/* Read from unset register $v0 */);
            gl_free(temp_v0_5, saved_reg_gp - 0x4508);
        }
        if (initportreq.unk22 != 0) {
            gl_thedisplay->unk1C = 0;
        }
        temp_v0_6 = _GLgetresource(&sub_0f020000 + 0x44A0, &sub_0f020000 + 0x44B0, NULL);
        if (temp_v0_6 == 0) {

        } else {
            gl_strcasecmp((u8 *) temp_v0_6);
            gl_putinbackground = M2C_ERROR(/* Read from unset register $v0 */);
            gl_free(temp_v0_6, saved_reg_gp - 0x4508);
        }
        var_s2 = sp30;
        if (gl_putinbackground != 0) {
            if (((s32) fflush & 0xFF000000) == 0x0C000000) {
                fflush(0);
            }
            gl_putinbackground = 0;
            temp_v0_7 = fork();
            if (temp_v0_7 != -1) {
                if (temp_v0_7 != 0) {
                    exit(0);
                } else {
                    signal(2, 1);
                    signal(3, 1);
                    signal(0xF, 0);
                    temp_v0_8 = *(s32 *)0x100C;
                    if (temp_v0_8 != 0) {
                        sp20 = (s64) temp_v0_8;
                        __iglooTlsInit();
                        *(void *)0x100C = (s32) sp20;
                    }
                }
            } else {
                perror(saved_reg_gp - 0x4508);
                exit(1);
            }
        }
    }
    _GLhintinit(0);
    sp30 = var_s2;
    _mex_findslot(NULL);
    temp_s2 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
        if (initportreq.unk22 != 0) {
            XGrabServer(gl_sstatep->unk1C->unk4);
            _GLkillmakebgclient(gl_sstatep->unk1C);
        }
        gl_devdepattach(gl_selected_scrn);
        temp_a1 = gl_selected_scrn * 0x28;
        sp78 = var_s0;
        temp_v0_9 = _GLnewwindow((gl_scrntab + temp_a1)->unk1C->unk70, temp_a1, gl_selected_scrn);
        if (initportreq.unk3C != 0) {
            temp_v0_9->unk20 = (s32) (temp_v0_9->unk20 | 0x20);
        }
        temp_v0_9->unk7C = _GLnewcontext(temp_v0_9->unkC, initportreq.unk3C == 0, initportreq.unk3C);
        temp_a2 = (temp_s2 * 0xC) + (&sub_0f030000 + 0x7A78);
        temp_a2->unk4 = temp_v0_9;
        if (saved_reg_gp->unk-509C != 0) {
            temp_v0_9->unk20 = (s32) (temp_v0_9->unk20 | 0x10);
        }
        if (initportreq.unk22 != 0) {
            temp_v0_10 = temp_v0_9->unk20 | 4;
            temp_v0_9->unk20 = temp_v0_10;
            if (saved_reg_gp->unk-3958 != 0) {
                temp_v0_9->unk20 = (s32) (temp_v0_10 | 8);
            }
        }
        temp_v0_9->unk2D = temp_s2;
        saved_reg_gp->unk-509C = 0;
        temp_a3 = temp_a2->unk8 | 2;
        temp_a2->unk8 = temp_a3;
        _GLwinname(temp_v0_9, var_s4, temp_a2, temp_a3);
        XSetIconName(temp_v0_9->unk4, temp_v0_9->unk40, temp_v0_9->unk68);
        XStoreName(temp_v0_9->unk4, temp_v0_9->unk40, var_s1);
        _GLmex_countwins();
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            _GLsetWM_COMMAND(temp_v0_9);
        }
        _GLclearHints(temp_v0_9);
        _mex_findslot(temp_v0_9, (s32) sp);
        if (temp_v0_9->unk20 & 4) {
            _GLsetmakebgprop(temp_v0_9);
            XUngrabServer(gl_sstatep->unk1C->unk4);
        }
        if (!(temp_v0_9->unk20 & 8)) {
            if (temp_v0_9->unk20 & 4) {
                XMoveResizeWindow(temp_v0_9->unk4, temp_v0_9->unk40, 0, 0);
                XMoveResizeWindow(temp_v0_9->unk4, temp_v0_9->unk8, 0, 0);
                _GLsetwmdecor(temp_v0_9, 0);
            } else {
                _mex_findslot(temp_v0_9, (s32) sp);
            }
        }
        _mex_findslot(temp_v0_9, (s32) sp);
        _mex_findslot(temp_v0_9, (s32) sp);
        _GLsendHints(temp_v0_9);
        _mex_findslot(temp_v0_9, (s32) sp);
        _GLfunctions(temp_v0_9);
        _GLsetwmfunction(temp_v0_9, M2C_ERROR(/* Read from unset register $v0 */));
        temp_v0_11 = temp_v0_9->unk20;
        if ((temp_v0_11 & 0x20) && (temp_v0_9->unk70 == 0)) {
            temp_v0_9->unk38 = 1;
            temp_v0_9->unk3C = 1;
        }
        var_a2 = 0x20000;
        if (!(temp_v0_11 & 0x34)) {
            __GLqdevice(0x216);
            var_a2 = 0x220030;
        }
        XSelectInput(temp_v0_9->unk4, temp_v0_9->unk40, var_a2);
        if (temp_v0_9->unk20 & 0x20) {

        } else {
            _GLmapwindow(temp_v0_9);
            temp_v0_12 = temp_v0_9->unk78;
            if (temp_v0_12 != NULL) {
                if (temp_v0_12->unk20 & 2) {
                    temp_at_2 = (temp_v0_9->unk2D * 0xC) + (&sub_0f030000 + 0x7A78);
                    var_s5 = 1;
                    temp_at_2->unk8 = (s32) (temp_at_2->unk8 | 1);
                }
            }
        }
        __GLqdevice(0x210);
        _GLSelectInput(temp_v0_9);
        if ((temp_v0_9->unk20 & 0x30) == 0x10) {
            XInstallColormap(gl_sstatep->unk1C->unk4, temp_v0_9->unk14->unk4);
            XSetInputFocus(gl_sstatep->unk1C->unk4, temp_v0_9->unk40, 1, 0);
        }
        temp_a1_2 = temp_v0_9->unk7C;
        if (var_s5 != 0) {
            _GLbindcontext(temp_v0_9->unk78, temp_a1_2);
        } else {
            _GLbindcontext(temp_v0_9, temp_a1_2);
        }
        if ((temp_v0_9->unk20 & 0x20) || (_GLblockWhenStowed == 0)) {
            _GLunblock(temp_v0_9->unk7C, 1);
        }
        _GLupdateQueue(0, 0);
        __GLwinset(temp_s2);
        return;
    }
    _GLhintinit(1);
}

void gl_g_winope(s32 arg0, s32 arg1) {
    s32 var_s0;

    var_s0 = arg1;
    if (arg1 >= 0xF) {
        var_s0 = 0xE;
    }
    strncpy(sp, arg0, var_s0);
    sp[var_s0] = 0;
    gl_g_winopen(sp);
}

void gl_g_getpor(void) {
    gl_g_winope();
}

void gl_g_getport(void) {
    gl_g_winopen();
}

s32 gl_g_winget(void) {
    u8 var_v0;
    void *temp_a3;

    temp_a3 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF45910)->unk-5B00;
    var_v0 = -1U;
    if (temp_a3 != NULL) {
        var_v0 = temp_a3->unkE0->unk2D;
    }
    return (s32) var_v0;
}

void gl_g_winset(s32 arg0) {
    s32 temp_a1;
    s32 temp_v0_2;
    void *temp_v0;

    __iglooCheckCurrentContextInfo(gl_sstatep->unk1C->unk4);
    if (arg0 != 0) {
        if ((arg0 > 0) && (arg0 < 0x100)) {
            temp_v0 = (arg0 * 0xC) + (&sub_0f030000 + 0x7A78);
            temp_a1 = temp_v0->unk8 & 2;
            if ((temp_a1 != 0) && (_GLsetcontext(temp_v0->unk4->unk7C, temp_a1) != NULL)) {
                gl_ErrorHandler(4, 1, &sub_0f020000 + 0x44C0);
            }
        } else {
            temp_v0_2 = gl_dgl_wid_to_gl(arg0, saved_reg_gp - 0x4370);
            if (temp_v0_2 >= 0) {
                gl_load_dgl_table(2);
                gl_dgl_winset(temp_v0_2);
            }
        }
        return;
    }
    if (__iglooNoReleaseContext == 0) {
        __iglooMakeNoCurrent(subroutine_arg0, 1);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x28, 0x2c], gap at: 0x20. */
void gl_g_winclose(s32 arg0) {
    s64 sp0;
    void *temp_a0;
    void *temp_s0;
    void *temp_s2;
    void *temp_v0;
    void *var_s1;

    if ((arg0 > 0) && (arg0 < 0x100)) {
        temp_s2 = &sub_0f030000 + 0x7A78;
        temp_s0 = (arg0 * 0xC) + temp_s2;
        if (temp_s0->unk8 & 2) {
            temp_v0 = temp_s0->unk4;
            var_s1 = temp_v0->unk48;
            sp0 = (s64) temp_v0;
            if (var_s1 != NULL) {
                sp0 = (s64) temp_v0;
                do {
                    _GLdestroycontext(var_s1->unk7C);
                    _GLdestroywindow(var_s1);
                    bzero((var_s1->unk2D * 0xC) + temp_s2, 0xCU);
                    var_s1 = var_s1->unk4C;
                } while (var_s1 != NULL);
            }
            _GLdestroycontext(sp0->unk7C);
            temp_a0 = temp_s0->unk0;
            if (temp_a0 != NULL) {
                _GLdestroywindow(temp_a0);
            }
            _GLdestroywindow((void *) sp0);
            bzero(temp_s0, 0xCU);
            _mex_findslot((void *)1);
            if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
                __GLwinset(M2C_ERROR(/* Read from unset register $v0 */), -1);
            }
            _GLupdateQueue(0, 0);
        }
    }
}

void gl_g_winconstraints(void) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a1;
    u32 temp_s0;
    void *temp_v1;

    temp_s0 = gl_wstatep->active;
    temp_v0 = temp_s0->unk34;
    temp_a0 = temp_s0->unk30;
    if (temp_s0->unk2C != 4) {
        var_a1 = temp_a0;
        sp30 = (s64) temp_a0;
        sp38 = (s64) temp_v0;
    } else {
        temp_v1 = temp_s0->unk44;
        var_a1 = temp_v0 - temp_v1->unk34;
        sp38 = (s64) var_a1;
        sp30 = temp_a0 - temp_v1->unk30;
    }
    temp_a3 = temp_s0->unk3C;
    temp_a2 = temp_s0->unk38;
    sp20 = (s64) temp_a3;
    sp28 = (s64) temp_a2;
    _GLclearHints((void *) temp_s0, (s64) var_a1, temp_a2, temp_a3);
    _mex_findslot((void *) temp_s0, (s32) sp);
    _mex_findslot((void *) temp_s0, (s32) sp);
    _mex_findslot((void *) temp_s0, (s32) sp);
    _GLsendHints((void *) temp_s0);
    _mex_findslot((void *) temp_s0, (s32) sp);
    if (temp_s0->unk2C == 2) {
        _GLfunctions((void *) temp_s0);
        _GLsetwmfunction((void *) temp_s0, M2C_ERROR(/* Read from unset register $v0 */));
    }
    if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && ((temp_s0->unk30 != sp30) || (temp_s0->unk34 != sp38) || (temp_s0->unk38 != sp28) || (temp_s0->unk3C != sp20))) {
        _GLWaitForEventType(temp_s0, 0x16, temp_s0->unk40);
    } else {
        temp_a2_2 = temp_s0->unk20 | 0x800;
        temp_s0->unk20 = temp_a2_2;
        _GLupdateQueue(0, 0, temp_a2_2);
        temp_s0->unk20 = (s32) (temp_s0->unk20 & ~0x800);
    }
}

void gl_g_wintit(s32 arg0, u32 arg1) {
    u32 var_s0;

    var_s0 = arg1;
    if (arg1 >= 0x64U) {
        var_s0 = 0x63;
    }
    strncpy(sp, arg0, (s32) var_s0);
    sp[var_s0] = 0;
    gl_g_wintitle(sp);
}

void gl_g_wintitle(u8 *arg0) {
    XStoreName(gl_sstatep->unk1C->unk4, gl_wstatep->active->unk40, arg0);
    XFlush(gl_sstatep->unk1C->unk4);
}

void gl_g_iconti(s32 arg0, u32 arg1) {
    u32 var_s0;

    var_s0 = arg1;
    if (arg1 >= 0x64U) {
        var_s0 = 0x63;
    }
    strncpy(sp, arg0, (s32) var_s0);
    sp[var_s0] = 0;
    icontitle(sp);
}

void gl_g_icontitle(s32 arg0) {
    u32 temp_s8;
    void *temp_a3;

    temp_s8 = gl_wstatep->active;
    temp_a3 = &sub_0f030000 + 0x7A78;
    XSetIconName(temp_s8->unk4, ((temp_s8->unk2D * 0xC) + temp_a3)->unk4->unk40, arg0, temp_a3);
    XFlush(temp_s8->unk4);
}

void gl_g_getsize(s64 arg0, s64 arg1) {
    s64 sp30;
    s64 sp28;
    ? sp20;
    ? sp1C;
    ? sp18;
    s32 sp14;
    s32 sp10;
    s32 *sp4;
    u32 temp_t1;
    u8 temp_a0;

    sp14 = 0;
    sp10 = 0;
    sp28 = arg1;
    sp30 = arg0;
    if (gl_wstatep != NULL) {
        temp_t1 = gl_wstatep->active;
        if (temp_t1->unk20 & 1) {
            *sp30 = (s32) temp_t1->unkC->unk74;
            *sp28 = (s32) gl_wstatep->active->unkC->unk78;
        } else {
            temp_a0 = temp_t1->unk2C;
            switch (temp_a0) {                      /* irregular */
            case 5:
                /* fallthrough */
            case 1:
                sp4 = &sp14;
                XGetGeometry(gl_sstatep->unk1C->unk4, temp_t1->unk8, &sp18, &sp1C);
                gl_wstatep->active->unk38 = (s32) *sp30;
                gl_wstatep->active->unk3C = (s32) *sp28;
                break;
            case 2:
            case 3:
                /* fallthrough */
            case 4:
                gl_fast_qcheck(0, 1, 1, &gl_wstatep);
                *sp30 = (s32) gl_wstatep->active->unk38;
                *sp28 = (s32) gl_wstatep->active->unk3C;
                break;
            }
        }
    }
}

void gl_g_getorigin(s64 arg0, s64 arg1, ? arg2) {
    s64 sp18;
    s64 sp10;
    ? sp8;
    s32 sp4;
    ? var_a2;
    u32 temp_a1;
    u32 temp_a1_2;
    u8 temp_a0;

    var_a2 = arg2;
    sp10 = arg1;
    sp18 = arg0;
    if (gl_wstatep != NULL) {
        temp_a1 = gl_wstatep->active;
        if (!(temp_a1->unk20 & 1)) {
            temp_a0 = temp_a1->unk2C;
            if ((temp_a0 != 2) && (temp_a0 != 3) && (var_a2 = 1, (temp_a0 != 4))) {
                if (temp_a0 != 1) {
                    if (temp_a0 == 5) {
                        goto block_12;
                    }
                } else {
block_12:
                    getsize(sp, &sp4, 1, &gl_wstatep);
                    temp_a1_2 = gl_wstatep->active;
                    XTranslateCoordinates(gl_sstatep->unk1C->unk4, temp_a1_2->unk8, temp_a1_2->unkC->unk70->unk40, 0);
                    *sp10 = _GLinvertY((void *) gl_wstatep->active, (*sp10 + sp4) - 1, sp4);
                    gl_wstatep->active->unk30 = (s32) *sp18;
                    gl_wstatep->active->unk34 = (s32) *sp10;
                }
            } else {
                gl_fast_qcheck(0, 1, var_a2, &gl_wstatep);
                *sp18 = (s32) gl_wstatep->active->unk30;
                *sp10 = (s32) gl_wstatep->active->unk34;
            }
        } else {
            *sp10 = 0;
            *sp18 = 0;
        }
    }
}

void gl_g_winposition(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a7;
    s32 temp_at;
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    u32 temp_s0;
    void *temp_at_2;
    void *temp_v0_2;

    var_a1 = arg1;
    var_s2 = arg0;
    var_s3 = arg2;
    var_s1 = arg3;
    if (var_a1 < arg0) {
        temp_v1 = var_s2;
        var_s2 = var_a1;
        var_a1 = temp_v1;
    }
    temp_at = var_a1 - var_s2;
    if (var_s1 < var_s3) {
        temp_a7 = var_s3;
        var_s3 = var_s1;
        var_s1 = temp_a7;
    }
    var_s5 = temp_at + 1;
    temp_v0 = var_s1 - var_s3;
    var_s4 = temp_v0 + 1;
    if (temp_at == -1) {
        var_s5 = 1;
    }
    if (temp_v0 == -1) {
        var_s4 = 1;
    }
    gl_fast_qcheck(0, 1);
    var_a1_2 = 0;
    temp_s0 = gl_wstatep->active;
    if (var_s2 == 0) {
        if (var_s3 == 0) {
            temp_v0_2 = temp_s0->unkC;
            if ((var_s5 >= temp_v0_2->unk74) && (var_s4 >= temp_v0_2->unk78)) {
                var_a1_2 = 1;
            }
        }
    }
    _mex_findslot((void *) temp_s0, var_a1_2);
    if (temp_s0->unk2C == 4) {
        temp_at_2 = temp_s0->unk44;
        var_a0 = temp_s0->unk34 - temp_at_2->unk34;
        var_s1_2 = (temp_at_2->unk3C - var_s1) - 1;
        if (var_s2 == (temp_s0->unk30 - temp_at_2->unk30)) {
            goto block_11;
        }
        goto block_16;
    }
    var_s1_2 = _GLinvertY((void *) temp_s0, var_s1);
    var_a0 = temp_s0->unk34;
    if (var_s2 != temp_s0->unk30) {
        goto block_16;
    }
block_11:
    if ((var_s3 == var_a0) && (temp_s0->unk3C == var_s4) && (temp_s0->unk38 == var_s5)) {
        return;
    }
block_16:
    if (temp_s0->unk20 & 0x80) {
        temp_s0->unk74 = var_s4;
        temp_s0->unk70 = var_s5;
        _GLsendHints((void *) temp_s0);
    }
    temp_s3 = temp_s0->unk4;
    XMoveResizeWindow(temp_s3, temp_s0->unk40, var_s2, var_s1_2);
    _GLresizeOvWindows(temp_s0, var_s5, var_s4);
    XFlush(temp_s3);
    _GLWaitForEventType(temp_s0, 0x16, temp_s0->unk40);
}

void gl_g_winpush(void) {
    XLowerWindow(gl_sstatep->unk1C->unk4, gl_wstatep->active->unk40, 0xFFF44D8C);
    XFlush(gl_sstatep->unk1C->unk4);
    _GLupdateQueue(0, 0);
}

void gl_g_winpop(void) {
    XRaiseWindow(gl_sstatep->unk1C->unk4, gl_wstatep->active->unk40, 0xFFF44D14);
    XFlush(gl_sstatep->unk1C->unk4);
    _GLupdateQueue(0, 0);
}

void gl_g_winmove(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a0;
    s32 var_v0;
    s64 var_ra;
    u32 temp_s0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_s0 = gl_wstatep->active;
    temp_v0 = (temp_s0->unk3C + arg1) - 1;
    if (temp_s0->unk2C == 4) {
        temp_v1 = temp_s0->unk44;
        var_a0 = temp_s0->unk34 - temp_v1->unk34;
        var_v0 = (temp_v1->unk3C - temp_v0) - 1;
        if (arg0 != (temp_s0->unk30 - temp_v1->unk30)) {
            goto block_2;
        }
        goto block_5;
    }
    var_v0 = _GLinvertY((void *) temp_s0, temp_v0);
    var_a0 = temp_s0->unk34;
    var_ra = sp18;
    if (arg0 == temp_s0->unk30) {
block_5:
        if (var_v0 == var_a0) {
            return;
        }
        /* Duplicate return node #3. Try simplifying control flow for better match */
        sp18 = var_ra;
        XMoveWindow(gl_sstatep->unk1C->unk4, temp_s0->unk40, arg0, var_v0);
        XFlush(gl_sstatep->unk1C->unk4);
        _GLWaitForEventType(temp_s0, 0x16, temp_s0->unk40);
        return;
    }
block_2:
    sp18 = var_ra;
    XMoveWindow(gl_sstatep->unk1C->unk4, temp_s0->unk40, arg0, var_v0);
    XFlush(gl_sstatep->unk1C->unk4);
    _GLWaitForEventType(temp_s0, 0x16, temp_s0->unk40);
}

void gl_g_swinopen(s32 arg0) {
    s64 sp28;
    s64 sp0;
    s64 var_a2;
    u8 temp_a1;
    void *temp_a6;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s0;

    var_s0 = ((arg0 * 0xC) + (&sub_0f030000 + 0x7A78))->unk4;
    temp_a1 = var_s0->unk2C;
    switch (temp_a1) {                              /* irregular */
    case 4:
        var_s0 = var_s0->unk44;
        /* fallthrough */
    case 2:
        _mex_findslot(NULL, (s32) temp_a1);
        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
            temp_v0 = _GLnewwindow(var_s0);
            temp_a6 = (sp0 * 0xC) + (&sub_0f030000 + 0x7A78);
            temp_a6->unk4 = temp_v0;
            temp_a6->unk8 = (s32) (temp_a6->unk8 | 2);
            temp_v0->unk2D = (s8) sp0;
            temp_v0_2 = _GLnewcontext(temp_v0->unkC, 1);
            temp_v0->unk7C = temp_v0_2;
            _GLbindcontext(temp_v0, temp_v0_2);
            XMoveResizeWindow(gl_sstatep->unk1C->unk4, temp_v0->unk40, 0, 0);
            XMoveResizeWindow(gl_sstatep->unk1C->unk4, temp_v0->unk8, 0, 0);
            sp28 = 0x20000;
            _GLisInterested(0x216, 0x20000);
            var_a2 = sp28;
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                var_a2 = 0x220030;
            }
            XSelectInput(temp_v0->unk4, temp_v0->unk40, var_a2);
            _GLmapwindow(temp_v0);
            _GLSelectInput(temp_v0);
            _GLcreateOvWindows(var_s0, temp_v0);
            _GLupdateQueue(0, 0);
            __GLwinset((u8) sp0);
            return;
        }
        return;
    }
}

void gl_g_windepth(s32 arg0) {
    s64 sp18;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 temp_a2;
    s32 var_a1;
    s32 var_s1;
    void *temp_a3;
    void *var_a1_2;

    if ((arg0 >= 0x101) || (var_a1 = 0, (arg0 <= 0))) {
        var_a1 = 1;
    }
    if (var_a1 == 0) {
        temp_a3 = ((arg0 * 0xC) + (&sub_0f030000 + 0x7A78))->unk4;
        if (temp_a3 != NULL) {
            var_s1 = temp_a3->unk40;
            sp18 = (s64) temp_a3->unkC->unk70->unk40;
loop_5:
            if (XQueryTree(gl_sstatep->unk1C->unk4, (s64) var_s1, sp, &sp4) != 0) {
                XFree(sp8);
                if (sp0 != sp4) {
                    var_s1 = sp4;
                    goto loop_5;
                }
                if (XQueryTree(gl_sstatep->unk1C->unk4, sp18, sp, &sp4) != 0) {
                    if (spC != 0) {
                        var_a1_2 = (spC * 4) + sp8;
loop_14:
                        temp_a2 = var_a1_2->unk-4;
                        var_a1_2 -= 4;
                        if (temp_a2 != var_s1) {
                            if (var_a1_2 != sp8) {
                                goto loop_14;
                            }
                        }
                    }
                    XFree(sp8);
                }
            }
        }
    }
}

void gl_findwin(s32 arg0) {
    if ((arg0 < 0x101) && (arg0 > 0)) {

    }
}

s32 gl_g_getwscrn(void) {
    void *temp_a3;

    temp_a3 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF447B4)->unk-5B00;
    if (temp_a3 != NULL) {
        return temp_a3->unkE0->unkC->unk8;
    }
    return -1;
}

void _GLclearSlots(void) {
    bzero(&sub_0f030000 + 0x7A78, 0xC00U);
}

void gl_wmgexit(void) {
    s64 sp18;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 var_a2;
    s32 var_s7;
    s64 var_ra;
    void *temp_a0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a3;
    void *temp_s5;
    void *var_s5;

    var_ra = saved_reg_ra;
    var_s7 = 0;
    temp_s5 = &sub_0f030000 + 0x7A84;
    if (_GLdirtycmaps != 0) {
        _GLflushcmaps();
        var_ra = sp18;
    }
    temp_a1 = temp_s5->unk4;
    var_s5 = temp_s5 + 0xC;
    if ((temp_a1 != NULL) && ((temp_a1->unk20 & 0x30) == 0x10)) {
        var_s7 = 1;
    }
    var_a2 = 2;
loop_8:
    temp_a1_2 = var_s5->unk4;
    var_a2 += 2;
    if ((temp_a1_2 != NULL) && ((temp_a1_2->unk20 & 0x30) == 0x10)) {
        var_s7 = 1;
    }
    temp_a1_3 = var_s5->unk10;
    var_s5 += 0x18;
    if ((temp_a1_3 != NULL) && ((temp_a1_3->unk20 & 0x30) == 0x10)) {
        var_s7 = 1;
    }
    if (var_a2 != 0x100) {
        goto loop_8;
    }
    if (var_s7 != 0) {
        temp_a3 = gl_sstatep->unk1C;
        sp18 = var_ra;
        temp_a0 = temp_a3->unk4;
        temp_a3_2 = temp_a3->unk8;
        temp_a2 = temp_a3_2 * 0x50;
        XInstallColormap(temp_a0, (temp_a0->unk8C + temp_a2)->unk30, temp_a2, temp_a3_2);
    }
}
