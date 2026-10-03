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

? XChangeWindowAttributes(s64, s32, ?, ? *);        /* extern */
s32 XCreateColormap(s64, s32, s32, ?);              /* extern */
s32 XCreateWindow(s64, s32, ?, ?);                  /* extern */
? XDestroyWindow(s64, s32);                         /* extern */
? XFlush(s64);                                      /* extern */
? XFreeColormap(s64, s32);                          /* extern */
? XGetGeometry(s32 *, s32 *, s32 *, s32 *);         /* extern */
? XGetWindowAttributes(s64, s32, void *);           /* extern */
? XMapWindow(s64, s32 *);                           /* extern */
? XTranslateCoordinates(s32 *, s32 *, s32, ?);      /* extern */
s64 glXCreateContext(s32, void *, s32, ?);          /* extern */
? glXDestroyContext(s32, s64);                      /* extern */
s32 glXMakeCurrent(s64, s32, s32);                  /* extern */
? sprintf(void *, void *, s64, s32);                /* extern */
extern s32 __iglooClientDPY;
extern ? sub_0f020000;

void __iglooCalculateBias(s32 *arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    s64 sp70;
    s32 sp38;
    ? sp34;
    s32 sp30;
    s32 sp2C;
    ? sp28;
    ? sp24;
    s32 sp20;
    ? sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;

    sp70 = M2C_ERROR(/* Read from unset register $a4 */);
    XGetGeometry(&sp10, &sp14);
    XTranslateCoordinates(arg0, arg1, sp10, 0);
    XGetGeometry(arg0, arg2, &sp10, &sp2C);
    XTranslateCoordinates(arg0, arg2, sp10, 0);
    *arg3 = sp2C - sp14;
    *sp70 = (s32) (((sp30 + sp38) - sp18) - sp20);
}

void *__iglooCloneContextInfo(? *arg0) {
    void *temp_v0;

    temp_v0 = __iglooCreateContextInfo(gl_sstatep->unk1C->unk4, arg0->unk10, *arg0->unk14, arg0->unk24);
    temp_v0->unk168 = arg0;
    temp_v0->unk18 = (s32) arg0->unk18;
    return temp_v0;
}

void __iglooFlush(void) {
    if (__iglooGetCurrentContextInfo() != 0) {
        __iglooCloseMoveDraw();
        glFlush();
    }
}

void __iglooMakeNoCurrent(s64 arg0, s64 arg1) {
    __iglooBeginCriticalSection();
    if (__iglooGetCurrentContextInfo() != 0) {
        __iglooCloseMoveDraw();
        if (subroutine_arg2 == 1) {
            __iglooFlush();
        }
        __iglooGetCurrentContextInfo(subroutine_arg0, NULL, NULL);
    }
    __iglooEndCriticalSection();
}

void __iglooMakeCurrent(s64 arg0, s32 *arg1, void *arg2, ? *arg3) {
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s32 sp1C;
    s32 sp18;
    ? *temp_a0;
    ? *temp_s2;
    ? *temp_v0_2;
    ? *var_s0;
    ? *var_s3;
    ? *var_v0;
    s32 *temp_a1;
    s32 *temp_a3;
    s64 temp_v0;

    var_s0 = arg3;
    __iglooBeginCriticalSection();
    temp_v0 = __iglooGetCurrentContextInfo();
    sp168 = temp_v0;
    temp_s2 = arg2->unk1C;
    __iglooFlush();
    if (temp_v0 != var_s0) {
        sp158 = 0;
        var_s3 = var_s0;
        sp160 = (s64) var_s0->unk1C;
        if (var_s0->unk2C == 0) {
            var_s0->unk2C = (s32) arg2->unk7C;
        }
        var_v0 = var_s0;
        if (var_s0 != NULL) {
loop_6:
            if (var_v0->unk4 == 0) {
                var_s0 = var_v0;
                goto block_11;
            }
            temp_a0 = var_v0->unk0;
            if (temp_a0 == NULL) {
                var_s3 = var_v0;
            }
            var_v0 = temp_a0;
            if (temp_a0 != NULL) {
                goto loop_6;
            }
            goto block_12;
        }
block_11:
        if (var_v0 == NULL) {
block_12:
            temp_v0_2 = __iglooCloneContextInfo(var_s0);
            var_s0 = temp_v0_2;
            *var_s3 = temp_v0_2;
        }
        if (temp_s2 != NULL) {
            if (sp168 != temp_s2) {
                if (temp_s2->unk4 == 0) {
                    if (var_s0 == temp_s2) {

                    } else {
                        __iglooGetCurrentContextInfo(arg0, temp_s2->unk18, temp_s2);
                        sp158 = 1;
                    }
                }
            } else {
                sp158 = 1;
            }
            if (((var_s0->unk24 != 0) ^ (temp_s2->unk24 != 0)) != 0) {
                temp_a1 = arg2->unk8;
                temp_a3 = sp + 0x18;
                if (temp_a1 != arg1) {
                    __iglooCalculateBias((s32 *) arg0, temp_a1, arg1, temp_a3);
                    arg2->unkAC = sp18;
                    arg2->unkB0 = sp1C;
                } else {
                    __iglooCalculateBias((s32 *) arg0, temp_a1, temp_s2->unk18, temp_a3);
                    sp1C = -sp1C;
                    sp18 = -sp18;
                    arg2->unkB0 = 0;
                    arg2->unkAC = 0;
                }
            } else {
                sp18 = 0;
                sp1C = 0;
            }
            if (sp158 != 0) {
                __iglooGetCopyState(sp);
            }
        }
        if (__iglooGetCurrentContextInfo(arg0, arg1, var_s0) == 1) {
            arg2->unk1C = var_s0;
            if (sp160 == 0) {
                if (var_s0->unk168 == 0) {
                    __iglooGetShareListContext(var_s0);
                }
            }
            if (var_s0->unk28 == 1) {
                XMapWindow(arg0, arg1);
                XFlush(arg0);
            }
            if (sp158 != 0) {
                __iglooSetCopyState(sp);
            }
        }
    }
    __iglooEndCriticalSection();
}

void *__iglooCheckCurrentContextInfo(s64 arg0) {
    s32 temp_a3;
    s32 var_v0;

    var_v0 = __iglooGetCurrentContextInfo();
    if ((var_v0 != 0) && (var_v0->unk20 == 1)) {
        temp_a3 = *(s32 *)0x200E00;
        if (temp_a3 == var_v0->unk4) {
            __iglooMakeNoCurrent(subroutine_arg0, 0, 1, temp_a3);
            var_v0 = __iglooDestroySingleContextInfo(subroutine_arg0, var_v0);
        }
    }
    return (void *) var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x28, 0x2c, 0x38, 0x3c, 0x40, 0x44], gap at: 0x20. */
void *__iglooCreateContextInfo(s32 arg0, s64 arg1, void *arg2, s64 arg3) {
    s32 temp_a3;
    s64 temp_v0;
    void *temp_v0_2;
    void *var_s2;

    unksp30 = arg1;
    temp_v0 = glXCreateContext(arg0, arg2, __iglooGetShareListContext(), 1);
    if (temp_v0 != 0) {
        unksp18 = temp_v0;
        unksp20 = arg3;
        temp_v0_2 = __iglooMalloc(0x170);
        var_s2 = temp_v0_2;
        if (temp_v0_2 != NULL) {
            temp_v0_2->unk4 = 0;
            temp_v0_2->unk0 = 0;
            temp_a3 = *(s32 *)0x200E00;
            temp_v0_2->unkC = (s32) unksp18;
            temp_v0_2->unk10 = (s32) unksp30;
            temp_v0_2->unk8 = temp_a3;
            temp_v0_2->unk16C = 0;
            temp_v0_2->unk168 = 0;
            temp_v0_2->unk28 = 0;
            temp_v0_2->unk24 = (s32) unksp20;
            temp_v0_2->unk20 = 0;
            temp_v0_2->unk1C = 0;
            temp_v0_2->unk60 = 0;
            temp_v0_2->unk18 = 0;
            temp_v0_2->unk2C = (s32) unksp30->unk7C;
            var_s2->unk14 = __iglooGetVisualInfoFromVisualID(gl_sstatep->unk1C, arg2->unk4, unksp18, temp_a3);
        }
    } else {
        glXDestroyContext(arg0, temp_v0);
        var_s2 = subroutine_arg0;
    }
    return var_s2;
}

void *__iglooDestroySingleContextInfo(void *arg1) {
    s64 sp10;
    s32 temp_a3;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_a3 = arg1->unkC;
    if (temp_a3 != 0) {
        if (*(s32 *)0x200E00 == arg1->unk8) {
            glXDestroyContext(temp_a3, (s64) temp_a3);
            var_ra = sp10;
        }
        arg1->unkC = 0;
    }
    sp10 = var_ra;
    if (arg1->unk1C == 1) {
        __iglooUnInitializeOpenglState(arg1 + 0x30);
    }
    return __iglooFree(arg1);
}

void __iglooDestroyContextInfo(s64 arg0, void *arg1) {
    s32 temp_a0;
    void *temp_s2;
    void *var_s0;

    var_s0 = arg1;
    if (arg1 != NULL) {
loop_3:
        temp_a0 = var_s0->unk4;
        temp_s2 = var_s0;
        var_s0 = var_s0->unk0;
        if (temp_a0 != 0) {
            if (*(s32 *)0x200E00 != temp_a0) {
                temp_s2->unk20 = 1;
                goto block_2;
            }
            __iglooMakeNoCurrent(arg0, 0);
            __iglooDestroySingleContextInfo(arg0, (s32) temp_s2);
            if (var_s0 != NULL) {
                goto loop_3;
            }
        } else {
            __iglooDestroySingleContextInfo(arg0, (s32) temp_s2);
block_2:
            if (var_s0 != NULL) {
                goto loop_3;
            }
        }
    }
}

s32 __iglooGetCurrentContext(void) {
    return (__iglooGetCurrentContextInfo())->unkC;
}

s32 __iglooGetCurrentContextInfo(void) {
    __iglooTlsInit();
    return *(s32 *)0x1004;
}

void *__iglooSetCurrentContext(s64 arg0, s32 arg1, void *arg2) {
    s64 sp80;
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_s4;
    s32 var_a2;
    s64 temp_v0;
    s64 var_a4;

    temp_v0 = __iglooGetCurrentContextInfo();
    sp80 = temp_v0;
    if (temp_v0 != 0) {
        __iglooSavePickFeedState(temp_v0);
    }
    if (arg2 != NULL) {
        var_a2 = arg2->unkC;
    } else {
        var_a2 = 0;
    }
    temp_s4 = glXMakeCurrent(arg0, arg1, var_a2);
    XFlush((s64) gl_sstatep->unk1C->unk4);
    var_a4 = temp_s4 & 0xFF;
    if (arg2 != NULL) {
        __iglooRestorePickFeedState(arg2);
        var_a4 = temp_s4 & 0xFF;
    }
    unksp90 = var_a4;
    if (var_a4 == 1) {
        if (sp80 != 0) {
            sp80->unk4 = 0;
        }
        *(void **)0x1004 = arg2;
        if (arg2 != NULL) {
            temp_a4 = arg2->unk1C;
            arg2->unk1C = 1;
            arg2->unk18 = arg1;
            arg2->unk4 = (s32) *(s32 *)0x200E00;
            if (temp_a4 == 0) {
                __iglooInitializeOpenglState();
                temp_a1 = arg2->unk168;
                if (temp_a1 != 0) {
                    __iglooCloneOpenglState(temp_a1 + 0x30, temp_a1);
                }
            }
        }
        __iglooSetMoveDraw(0);
    } else {
        sprintf(sp, &sub_0f020000 + 0x33C8, arg0, arg1);
        gl_ErrorHandler(4, 2, sp);
    }
    return (void *) unksp90;
}

s32 __iglooGetShareListContext(void) {
    s64 sp68;
    s64 sp60;
    s32 sp54;
    s32 sp48;
    s32 sp2C;
    s32 sp24;
    ? sp20;
    ? *sp1C;
    s32 sp14;
    s32 spC;
    s32 sp4;
    s32 temp_a0;
    s32 temp_at;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_s0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_s1;

    temp_a1 = gl_sstatep->unk1C;
    var_s0 = 0;
    if (temp_a1 != NULL) {
        temp_a0 = temp_a1->unkFC;
        if (temp_a0 != 0) {
            var_s0 = temp_a0;
        } else if (temp_a1 != (void *)-0x1C) {
            temp_at = temp_a1->unk4;
            sp68 = (s64) temp_at;
            if (temp_at != 0) {
                temp_a1_2 = *temp_a1->unk20;
                sp60 = (s64) temp_a1_2;
                temp_v0 = glXCreateContext((s32) sp68, temp_a1_2, 0, 1);
                var_s0 = temp_v0;
                temp_a1->unkFC = temp_v0;
                if (temp_v0 != 0) {
                    temp_s1 = gl_sstatep->unk1C;
                    temp_v0_2 = XCreateColormap(sp68, (sp68->unk8C + (temp_s1->unk8 * 0x50))->unk8, sp60->unk0, 0);
                    sp48 = 0;
                    sp24 = 0;
                    sp2C = 0;
                    sp54 = temp_v0_2;
                    sp4 = 1;
                    sp1C = &sp20;
                    sp14 = 0x280A;
                    spC = sp60->unk0;
                    temp_v0_3 = XCreateWindow(sp68, (sp68->unk8C + (temp_s1->unk8 * 0x50))->unk8, 0, 0);
                    glXMakeCurrent(sp68, temp_v0_3, var_s0);
                    glXMakeCurrent(sp68, 0, 0);
                    if (temp_v0_3 != 0) {
                        XDestroyWindow(sp68, temp_v0_3);
                    }
                    if (sp54 != 0) {
                        XFreeColormap(sp68, sp54);
                    }
                }
            }
        }
    }
    return var_s0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xb0, 0xb4, 0xc8, 0xcc], gap at: 0xc0. */
void *__iglooFirstTimeContextInfoInit(s64 arg0) {
    s64 spA8;
    s32 spA4;
    s32 spA0;
    s32 sp88;
    s32 sp64;
    ? sp60;
    s64 temp_v0;
    s8 *var_v0;
    void *temp_s3;

    unkspB8 = arg0;
    temp_s3 = arg0->unk14;
    __iglooSetEnable(0xBA1, 1);
    if (temp_s3->unkC == 0) {
        if (temp_s3->unk30 != 0) {
            __iglooDepthFunc(0x203, 0);
        }
    } else {
        unkspC0 = (s64) __iglooClientDPY;
        __iglooSetEnable(0xBD0, 0, __iglooClientDPY);
        __iglooShadeModel(0x1D00);
        if (unkspC0 == 0) {

        } else {
            XGetWindowAttributes(unkspC0, unkspB8->unk18, sp);
            if (sp44 == 0) {
                sp64 = 0;
                sp88 = 0;
                XChangeWindowAttributes(unkspC0, unkspB8->unk18, 0x802, &sp60);
                unkspB8->unk28 = 1;
                XFlush(unkspC0);
            }
        }
    }
    var_v0 = getenv(&sub_0f020000 + 0x33F0);
    if (var_v0 == NULL) {
        spA4 = 0;
        spA0 = 1;
        temp_v0 = __iglooGetNewInterface();
        spA8 = temp_v0;
        ((? (*)(?, s32 *)) temp_v0)(0x81A2, &spA0);
        ((? (*)(?, s32 *)) spA8)(0x81A3, &spA0);
        var_v0 = ((s8 *(*)(?, s32 *)) spA8)(0x81A1, &spA4);
    }
    return var_v0;
}

void __iglooSaveDepthBufferScaleFactor(void *arg0) {
    f64 temp_f4;
    f64 temp_f6;
    s32 temp_a0;
    s32 temp_a2;

    arg0->unkB10 = __GLgetgconfig(5);
    arg0->unkB20 = __GLgetgconfig(6);
    arg0->unkB24 = __GLgetgconfig(7);
    temp_f4 = (f64) arg0->unkB20;
    temp_a0 = arg0->unkB10;
    temp_a2 = 0x20 - temp_a0;
    arg0->unkB30 = (f64) (second half of f64);
    arg0->unkB28 = (f64) ((second half of f64) + arg0->unkB40);
    if (temp_a0 != 0) {
        arg0->unkB48 = temp_a2;
        if (temp_a2 != 0) {
            arg0->unkB4C = (bitwise f64) (1.0f / (f32) ((u64) ((1 << temp_a2) << 0x20) >> 0x20));
        } else {
            arg0->unkB50 = 1.0f;
            arg0->unkB4C = 1.0f;
        }
    } else {
        arg0->unkB50 = 1.0f;
        arg0->unkB4C = 1.0f;
        arg0->unkB48 = 0;
    }
    temp_f6 = (second half of f64) - temp_f4;
    if (temp_f6 == (second half of f64)) {
        arg0->unkB40 = (f64) (second half of f64);
        arg0->unkB38 = (f64) (second half of f64);
    } else {
        arg0->unkB38 = (f64) (second half of f64);
        arg0->unkB40 = (f64) (-temp_f4 / temp_f6);
    }
}

s32 __iglooGetId(void) {
    s32 temp_v0;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5BA0C;
    temp_v0 = temp_at->unk-5134 + 1;
    temp_at->unk-5134 = temp_v0;
    return temp_v0;
}
