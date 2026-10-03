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

s64 XEventsQueued(s32, ?, s64);                     /* extern */
? XFlush(s32);                                      /* extern */
? XFree(s32 *);                                     /* extern */
? XGetWindowProperty(s32, void **, s32, ?, ? *, s32 **); /* extern */
s32 XGrabKeyboard(s32, s32, ?, ?);                  /* extern */
s64 XGrabPointer(s32, s32, ?, ?);                   /* extern */
s64 XLookupString(u32 *, u8 *, ?, u32 *);           /* extern */
? XLowerWindow(s32, void **, s32, void **);         /* extern */
? XNextEvent(s32, u32 *);                           /* extern */
? XUngrabKeyboard(s32, ?, s32);                     /* extern */
? XUngrabPointer(s32, ?, s32, s32);                 /* extern */
s32 select(s32, void *, ?, ?);                      /* extern */
u32 times(void *);                                  /* extern */
extern s32 _GLcapsLockMask;
extern s32 _GLdirtycmaps;
extern s32 _GLhaveActiveGrab;
extern s32 _GLinputChangeBug;
extern void *_GLkeyfocusWindow;
extern s32 _GLnumLockMask;
extern void *_GLpointerWindow;
extern s32 _GLqgetfd_was_called;
extern s32 _GLsoftAttach;
extern s32 errno;
extern void *gl_thedisplay;
extern ? sub_0f040000;
extern ? sub_0f130000;

void postWin(void *arg0) {
    s64 sp8;
    s64 var_ra;
    u8 var_a4;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4D18 != NULL) {
        if (arg0 != NULL) {
            if (_GLinputChangeBug != 0) {
                _GLpostEvent(0x216, 0, 0);
                var_ra = sp8;
            }
            goto block_4;
        }
        goto block_6;
    }
block_4:
    if (arg0 != NULL) {
        sp8 = var_ra;
        var_a4 = arg0->unk2D;
    } else {
block_6:
        sp8 = var_ra;
        var_a4 = 0;
    }
    _GLpostEvent(0x216, (s64) ((s64) var_a4 << 0x30) >> 0x30, 0);
    saved_reg_gp->unk-4D18 = arg0;
}

void _GLdeliver_inputchange(void) {
    s64 sp28;
    ? var_a1;
    s64 var_ra;
    void *temp_a2;
    void *temp_s0;
    void *var_s1;
    void *var_s2;

    var_ra = saved_reg_ra;
    var_a1 = 0xFFF07AE4;
    temp_a2 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF07AE4)->unk-4D18;
    temp_s0 = _GLkeyfocusWindow;
    if (temp_a2 != _GLkeyfocusWindow) {
        if ((temp_a2 == NULL) || (temp_a2->unk2C != 4)) {
            var_s2 = NULL;
            if (_GLkeyfocusWindow != NULL) {
                goto block_4;
            }
            goto block_5;
        }
        var_s2 = temp_a2->unk44;
        if (_GLkeyfocusWindow != NULL) {
block_4:
            var_a1 = 4;
            if (_GLkeyfocusWindow->unk2C != 4) {
                goto block_5;
            }
            var_s1 = _GLkeyfocusWindow->unk44;
        } else {
block_5:
            var_s1 = NULL;
        }
        if (var_s2 != NULL) {
            if (var_s2 != _GLkeyfocusWindow) {
                _GLrecolorAllCursors(var_s2, var_a1, &sub_0f130000);
                var_ra = sp28;
            }
        }
        if ((temp_a2 != NULL) && (temp_s0 != NULL) && (var_s1 != temp_a2) && (var_s2 != temp_s0) && ((var_s1 == NULL) || (var_s2 == NULL) || (var_s2 != var_s1))) {
            sp28 = var_ra;
            _GLrecolorAllCursors(NULL);
        }
        sp28 = var_ra;
        if (var_s1 != NULL) {
            sp28 = var_ra;
            if (var_s1 != temp_a2) {
                sp28 = var_ra;
                if (var_s2 != var_s1) {
                    _GLrecolorAllCursors(var_s1);
                }
            }
        }
        _GLrecolorAllCursors(temp_s0);
    }
}

void _GLComputeTimeout(s32 arg0) {
    s16 temp_a1;
    s16 temp_a3;
    s32 var_a0;
    s32 var_s2;
    s32 var_s3;
    u32 temp_s1;
    u32 temp_s7_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 var_a2;
    u32 var_s4;
    void *temp_s7;
    void *var_s0;

    var_s3 = 0;
    var_s4 = 0;
    temp_s1 = times(sp);
    var_s2 = 0x203;
    var_s0 = &sub_0f040000 - 0x6B30;
    temp_s7 = var_s0 + 0x40;
loop_7:
    temp_a3 = var_s0->unk14;
    var_a0 = 0;
    if (temp_a3 != 0) {
        temp_v0 = var_s0->unk1C;
        if (temp_s1 < temp_v0) {
            var_a2 = temp_s1 < (u32) var_s0->unk18;
            if (var_a2 != 0) {
                temp_a1 = var_s0->unk12;
                M2C_TRAP_IF(temp_a1 == 0);
                var_a0 = (temp_s1 / (u32) temp_a1) + 1;
            }
            if (var_a0 != 0) {
                goto block_16;
            }
            goto block_1;
        }
        var_a2 = (u32) var_s0->unk12;
        var_a0 = ((u32) (temp_s1 - temp_v0) / var_a2) + 1;
        M2C_TRAP_IF(var_a2 == 0);
        if (var_a0 != 0) {
block_16:
            var_s0->unk1C = (u32) (temp_s1 + temp_a3);
            var_a2 = var_s0->unk18 + (var_s0->unk12 * var_a0);
            var_s0->unk18 = var_a2;
            if (var_a0 != 0) {
                _GLpostEvent(var_s2 & 0xFFFF, (s64) var_s0->unk1A, 0, temp_a3);
            } else {
                goto block_1;
            }
        } else {
block_1:
            if (arg0 == 0) {
                _GLupdateVal(var_s2 & 0xFFFF, var_s0->unk1A, var_a2, temp_a3);
            }
        }
        if ((var_s0->unk14 != 0) && ((temp_v0_2 = var_s0->unk1C, (var_s3 == 0)) || (temp_v0_2 < var_s4))) {
            var_s4 = temp_v0_2;
            var_s3 = 1;
        }
    }
    var_s0 += 0x10;
    var_s2 += 1;
    if (var_s0 != temp_s7) {
        goto loop_7;
    }
    if (var_s3 != 0) {
        temp_s7_2 = var_s4 - temp_s1;
        M2C_TRAP_IF(0x64 == 0);
        saved_reg_gp->unk-4D24 = 1;
        saved_reg_gp->unk-4D20 = (u32) (temp_s7_2 / 100U);
        saved_reg_gp->unk-4D1C = (s32) ((temp_s7_2 % 100U) * 0x2710);
    }
}

void _GLSetTimer(s32 arg0, s16 arg1) {
    s32 temp_a2;
    s32 temp_f0;
    u32 temp_v0;
    void *temp_a0;

    if (arg0 >= 0x203) {
        temp_a2 = saved_reg_gp->unk-4D28;
        if (arg0 < 0x207) {
            saved_reg_gp->unk-4D24 = 0;
            if (temp_a2 == 0) {
                saved_reg_gp->unk-4D28 = __GLgetgdesc(0x42, temp_a2);
            }
            temp_v0 = times(sp);
            temp_a0 = (arg0 * 0x10) + (&sub_0f040000 - 0x6B30);
            if (arg1 != 0) {
                if ((temp_a0->unk-201E != arg1) || (temp_a0->unk-2020 == 0)) {
                    temp_f0 = (s32) ((f32) arg1 * (100.0f / (f32) saved_reg_gp->unk-4D28));
                    temp_a0->unk-2018 = temp_v0;
                    temp_a0->unk-201E = arg1;
                    temp_a0->unk-2020 = 1;
                    temp_a0->unk-201C = (s16) temp_f0;
                    temp_a0->unk-2014 = (s32) (((s64) ((s64) temp_f0 << 0x30) >> 0x30) + temp_v0);
                }
            } else {
                temp_a0->unk-2014 = 0;
                temp_a0->unk-201C = 0;
                temp_a0->unk-201E = 0;
            }
            _GLdeliver_inputchange(1U);
        }
    }
}

void _GLWaitForEvent(void) {
    s32 sp84;
    s32 sp80;
    s32 *temp_v1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_at;
    s32 temp_v0;

loop_2:
loop_3:
    sp84 = saved_reg_gp->unk-4D1C;
    sp80 = saved_reg_gp->unk-4D20;
    memset(sp, 0, 0x80U);
    temp_at = gl_sstatep->unk1C->unk4->unk8;
    temp_a2 = temp_at >> 0x1F;
    temp_a2_2 = temp_at >> 0x1F;
    temp_v1 = (((s32) (((u32) (temp_at >> 4) >> 0x1B) + temp_at) >> 5) * 4) + sp;
    *temp_v1 |= 1 << (((((temp_at ^ temp_a2) - temp_a2) & 0x1F) ^ temp_a2_2) - temp_a2_2);
    if (saved_reg_gp->unk-4D24 == 0) {

    }
    temp_v0 = select(gl_sstatep->unk1C->unk4->unk8 + 1, sp, 0, 0);
    if (temp_v0 == -1) {
        goto loop_2;
    }
    if (temp_v0 != 0) {
        if (XEventsQueued(gl_sstatep->unk1C->unk4, 1, 0x80) != 0) {
            return;
        }
        goto loop_3;
    }
    _GLdeliver_inputchange(1U);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        return;
    }
    goto loop_3;
}

void _GLgrabEverything(u32 *arg0, s64 arg1) {
    s64 sp28;
    s64 sp10;
    s32 sp4;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_t0;
    s32 temp_v0;
    s32 var_a4;
    u32 temp_s1;
    void *temp_t0_2;
    void *temp_t1;

    temp_t1 = &sub_0f040000 - 0x6B30;
    if (_GLsoftAttach != 0) {
        temp_s1 = arg0->unk0;
        if (temp_s1 != 2) {
            var_a4 = 0;
            if (temp_s1 != 3) {
                var_a4 = 1;
                if (temp_s1 != 4) {
                    var_a4 = 0;
                    if (temp_s1 != 5) {
                        return;
                    }
                    goto block_6;
                }
                goto block_6;
            }
            goto block_6;
        }
        var_a4 = 1;
block_6:
        temp_t0 = arg0->unk34;
        temp_a5 = 1 << temp_t0;
        temp_t0_2 = ((temp_t0 >> 5) * 4) + temp_t1;
        temp_a6 = temp_t0_2->unk58;
        if (var_a4 != 0) {
            temp_t0_2->unk58 = (s32) (temp_a5 | temp_a6);
            if ((_GLhaveActiveGrab == 0) && (arg1 != 0)) {
                sp10 = arg1;
                if (gl_sstatep->unk1C->unk84 == 0) {
                    _GLgrabCurrentCursor(sp10, &_GLhaveActiveGrab, 3, 4);
                    sp4 = 0;
                    sp28 = XGrabPointer(gl_sstatep->unk1C->unk4, sp10->unk40, 1, 0x4C);
                    temp_v0 = XGrabKeyboard(gl_sstatep->unk1C->unk4, sp10->unk40, 1, 1);
                    if (temp_v0 != 0) {
                        if (sp28 == 0) {
                            XUngrabPointer(gl_sstatep->unk1C->unk4, 0, temp_v0);
                        }
                        goto block_28;
                    }
                    if (sp28 == 0) {
                        _GLhaveActiveGrab = (s32) sp10;
                    } else {
block_28:
                        if (temp_v0 == 0) {
                            XUngrabKeyboard(gl_sstatep->unk1C->unk4, 0, temp_v0);
                        }
                    }
                }
            }
        } else {
            temp_t0_2->unk58 = (s32) (~temp_a5 & temp_a6);
            if ((_GLhaveActiveGrab != 0) && (temp_t1->unk58 == 0) && (temp_t1->unk5C == 0) && (temp_t1->unk60 == 0) && (temp_t1->unk64 == 0)) {
                temp_a3 = temp_t1->unk68;
                if ((temp_a3 == 0) && (temp_t1->unk6C == 0) && (temp_t1->unk70 == 0)) {
                    temp_a2 = temp_t1->unk74;
                    if (temp_a2 == 0) {
                        XUngrabPointer(gl_sstatep->unk1C->unk4, 0, temp_a2, temp_a3);
                        XUngrabKeyboard(gl_sstatep->unk1C->unk4, 0);
                        _GLhaveActiveGrab = 0;
                    }
                }
            }
        }
    }
}

void _GLnextLockState(void *arg0, s32 arg1) {
    s32 sp0;
    ? var_s1_2;
    ? var_v0;
    s32 *var_s1;
    s32 temp_a1_2;
    s32 temp_s1;
    s32 var_a1;
    s64 temp_a1;

    sp0 = -1;
    if (arg1 != 4) {
        var_s1 = &_GLnumLockMask;
    } else {
        var_s1 = &_GLcapsLockMask;
    }
    temp_s1 = *var_s1;
    var_v0 = 3;
    if (arg0->unk0 == 2) {
        if (!(arg0->unk30 & temp_s1)) {
            var_v0 = 1;
        }
        goto block_5;
    }
    temp_a1 = (s64) (_GLgetLockState(arg1) << 0x30) >> 0x30;
    if (temp_a1 != 3) {
        if (temp_a1 == 1) {
            var_a1 = saved_reg_gp->unk-380C;
            if (var_a1 != 2) {
                goto block_10;
            }
            if ((_GLqueryModState(sp, var_a1, 2, 3) != 0) && (sp0 != -1)) {
                temp_a1_2 = (temp_s1 & sp0) != 0;
                saved_reg_gp->unk-380C = temp_a1_2;
                if (temp_a1_2 == 1) {
                    goto block_24;
                }
                goto block_11;
            }
            var_a1 = 1;
            saved_reg_gp->unk-380C = 1;
block_10:
            if (var_a1 != 1) {
block_11:
                var_v0 = 0;
            } else {
block_24:
                var_v0 = 2;
            }
            goto block_5;
        }
        if ((_GLqueryModState(sp, (s32) temp_a1) != 0) && (sp0 != -1)) {
            var_v0 = 2;
            if (!(temp_s1 & sp0)) {
                var_v0 = 0;
            }
block_5:
            var_s1_2 = var_v0;
        } else {
            var_s1_2 = 0xD;
        }
    } else {
        var_s1_2 = 0;
    }
    _GLsetLockState(arg1, var_s1_2);
}

void _GLWaitForEventType(void *arg0, s32 arg1, s32 arg2) {
    if (arg0->unk2C != 5) {
        arg0->unk28 = arg2;
        arg0->unk24 = arg1;
        do {
            _GLupdateQueue(1, 0);
        } while (arg0->unk24 != 0);
    }
}

void _GLupdateQueue(s64 arg0, s64 arg1) {
    s64 sp570;
    s64 sp568;
    s64 sp538;
    s64 sp500;
    s64 sp4F8;
    s64 sp4F0;
    s64 sp4E8;
    s64 sp4E0;
    s64 sp4D8;
    s64 sp4D0;
    s64 sp4C8;
    s64 sp4C0;
    s64 sp4B8;
    u32 sp4B0;
    u8 sp4A8;
    u32 sp4A0;
    s16 sp49A;
    s16 sp498;
    ? sp490;
    u32 sp48C;
    ? sp488;
    s32 sp484;
    s32 *sp480;
    u32 sp420;
    u8 sp20;
    gl_sstate *temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_5;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_s7_2;
    s32 temp_s7_3;
    s32 temp_s8_2;
    s32 temp_s8_3;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a2;
    s32 var_a4;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_s1;
    s32 var_s2_2;
    s32 var_s6;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a0_4;
    s64 temp_v0;
    s64 temp_v0_5;
    s64 var_s2;
    s64 var_s7;
    s64 var_s8_2;
    u8 *var_s7_2;
    u8 temp_a2_2;
    u8 temp_a3_3;
    u8 temp_a5;
    u8 temp_a5_2;
    u8 temp_a5_3;
    u8 temp_a5_4;
    void **temp_a1;
    void **temp_a3_2;
    void **var_a3;
    void **var_s3;
    void *temp_a3;
    void *temp_a4;
    void *temp_s7;
    void *temp_s7_4;
    void *temp_s8;
    void *var_s0;
    void *var_s8;

    var_s0 = NULL;
    var_s3 = NULL;
    var_s6 = 0;
    sp4E0 = 0;
    sp4D8 = 0;
    sp4D0 = 0;
    var_s7 = 0;
    sp4F0 = 0;
    sp4E8 = 0;
    sp4C0 = 0;
    sp4B8 = 0;
    sp4C8 = arg1;
    sp500 = arg0;
    _GLinitgl();
    if (_GLdirtycmaps != 0) {
        _GLflushcmaps();
    }
    if (saved_reg_gp->unk-4D24 != 0) {
        _GLdeliver_inputchange(1U);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            sp500 = 0;
        }
    }
    temp_v0 = XEventsQueued(gl_sstatep->unk1C->unk4, 2);
    sp538 = temp_v0;
    if (temp_v0 == 0) {
        if (sp500 != 0) {
            _GLWaitForEvent();
            sp538 = M2C_ERROR(/* Read from unset register $v0 */);
        }
    }
    var_s2 = sp538;
loop_10:
    var_s2_2 = var_s2 - 1;
    if (var_s2_2 != -1) {
        temp_a0 = gl_sstatep;
loop_15:
        XNextEvent(temp_a0->unk1C->unk4, &sp420);
        if (var_s3 != sp430) {
            var_s3 = sp430;
            gl_glx_findwindow(gl_sstatep->unk1C->unk4, sp430);
            var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        var_a6 = 0x210;
        var_s1 = 0;
        if (var_s0 != NULL) {
            if ((var_s0->unk24 == sp420) && ((temp_v0_2 = var_s0->unk28, (temp_v0_2 == 0)) || (sp430 == temp_v0_2))) {
                var_s0->unk24 = 0;
            }
            temp_a4 = var_s0->unkC;
            if (temp_a4->unk70 == var_s0) {
                if (sp420 != 0x13) {
                    if (sp420 != 0x16) {
                        if (sp420 == 0x1A) {
                            goto block_25;
                        }
                    } else {
                        goto block_26;
                    }
                } else {
block_25:
block_26:
                    if (__GLisqueued(0x21F) != 0) {
                        var_s8 = gl_thedisplay->unk14;
                        if (var_s8 != NULL) {
loop_61:
                            temp_a5 = var_s8->unk2D;
                            if ((temp_a5 != 0) && (var_s8->unk20 & 2)) {
                                temp_a3 = var_s0->unkC;
                                if (temp_a3 == var_s8->unkC) {
                                    _GLpostEvent(0x21F, (s64) ((s64) temp_a5 << 0x30) >> 0x30, 2, (s16) temp_a3);
                                }
                            }
                            var_s8 = var_s8->unk0;
                            if (var_s8 != NULL) {
                                goto loop_61;
                            }
                        }
                    }
                    _GLfindbgwin(var_s0->unk4);
                    temp_s8 = M2C_ERROR(/* Read from unset register $v0 */);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        XLowerWindow(temp_s8->unk4, temp_s8->unk40);
                        XFlush(temp_s8->unk4);
                    }
                }
            } else {
                switch (sp420) {                    /* switch 2 */
                default:                            /* switch 2 */
                    var_s1 = 1;
                    break;
                case 28:                            /* switch 2 */
                    temp_s7 = temp_a4->unk0->unk18;
                    if (temp_s7->unk24 != sp434) {
                        if (var_s0->unk20 & 0x800) {
                            if (sp434 != 0x28) {
                                if (temp_s7->unk14 == sp434) {
                                    goto block_73;
                                }
                            } else {
block_73:
                                gl_adjust_window(var_s0, 0, 0, &_GLkeyfocusWindow);
                            }
                        }
                    } else {
                        sp480 = NULL;
                        XGetWindowProperty(gl_sstatep->unk1C->unk4, var_s0->unk40, temp_s7->unk24, 0, &sp490, &sp480);
                        if ((temp_s7->unk24 == sp484) && (sp48C >= 2U)) {
                            temp_a0_2 = *sp480;
                            if (temp_a0_2 != 3) {
                                if (temp_a0_2 == 1) {
                                    _GLbecomeNormal(var_s0);
                                }
                            } else {
                                _GLbecomeIconic(var_s0);
                            }
                        }
                        XFree(sp480);
                    }
                    break;
                case 19:                            /* switch 2 */
                    temp_a1 = var_s0->unk40;
                    if (sp430 == temp_a1) {
                        if (var_s0->unk20 & 4) {
                            XLowerWindow(var_s0->unk4, temp_a1, 4, sp430);
                            XFlush(var_s0->unk4);
                        }
                        var_s0->unk20 = (s32) (var_s0->unk20 | 2);
                    }
                    break;
                case 18:                            /* switch 2 */
                    if (var_s0->unk40 == sp430) {
                        var_s0->unk20 = (s32) (var_s0->unk20 & ~2);
                    }
                    break;
                case 26:                            /* switch 2 */
                    temp_a2 = var_s0->unk20 & 4;
                    if (temp_a2 != 0) {
                        XLowerWindow(var_s0->unk4, var_s0->unk40, temp_a2, &_GLkeyfocusWindow);
                        XFlush(var_s0->unk4);
                    }
                    break;
                case 22:                            /* switch 2 */
                    temp_a1_2 = var_s0->unk3C;
                    temp_a3_2 = var_s0->unk40;
                    temp_v0_3 = var_s0->unk38;
                    temp_s8_2 = var_s0->unk34;
                    temp_s7_2 = var_s0->unk30;
                    if (temp_a3_2 == sp434) {
                        sp570 = (s64) temp_v0_3;
                        sp568 = (s64) temp_a1_2;
                        gl_adjust_window(var_s0, sp440, sp444, temp_a3_2);
                    }
                    temp_a0_3 = var_s0->unk20;
                    var_a6_2 = 0x210;
                    if (temp_a0_3 & 4) {
                        if (sp44C != 0) {
                            XLowerWindow(var_s0->unk4, var_s0->unk40);
                            XFlush(var_s0->unk4);
                        }
                    } else {
                        temp_a5_2 = var_s0->unk2D;
                        if ((temp_a5_2 != 0) && (temp_a0_3 & 2) && ((var_s0->unk30 != temp_s7_2) || (var_s0->unk34 != temp_s8_2) || (var_s0->unk38 != temp_v0_3) || (var_s0->unk3C != temp_a1_2))) {
                            if (var_s0->unk2C == 3) {
                                var_a6_2 = 0x21D;
                            }
                            _GLpostEvent(var_a6_2 & 0xFFFF, (s64) ((s64) temp_a5_2 << 0x30) >> 0x30, 2);
                        }
                    }
                    break;
                case 12:                            /* switch 2 */
                    if (sp444 == 0) {
                        temp_a5_3 = var_s0->unk2D;
                        if (temp_a5_3 != 0) {
                            temp_a3_3 = var_s0->unk2C;
                            if (temp_a3_3 != 3) {
                                if (var_s0->unk8 != sp430) {
                                    var_a6 = 0x223;
                                }
                            } else {
                                var_a6 = 0x21D;
                            }
                            _GLpostEvent(var_a6 & 0xFFFF, (s64) ((s64) temp_a5_3 << 0x30) >> 0x30, 2, (s16) temp_a3_3);
                        }
                    }
                    break;
                case 6:                             /* switch 2 */
                    temp_a2_2 = var_s0->unk2D;
                    if (temp_a2_2 != 0) {
                        sp498 = (s16) sp448;
                        _GLinvertY(var_s0, sp44C, temp_a2_2, sp448);
                        sp49A = M2C_ERROR(/* Read from unset register $v0 */);
                        _GLpostMotionEvent(2, 0, &sp498, sp43C);
                    }
                    break;
                case 4:                             /* switch 2 */
                case 5:                             /* switch 2 */
                    _GLgrabEverything(&sp420, (s64) var_s0, 4, &_GLkeyfocusWindow);
                    _GLupdatePointer(&sp420);
                    if (var_s0->unk2D != 0) {
                        _GLpostCoreButtonEvent(sp456, sp420 == 4, 4);
                    }
                    break;
                case 9:                             /* switch 2 */
                    _GLkeyfocusWindow = var_s0;
                    if ((_GLpointerWindow != NULL) && (var_s0 != _GLpointerWindow)) {
                        if (var_s0->unk2C == 4) {
                            if (var_s0->unk44 != _GLpointerWindow) {
                                goto block_101;
                            }
                            goto block_199;
                        }
block_101:
                        if (_GLpointerWindow->unk2C == 4) {
                            var_v0 = 0;
                            if (_GLpointerWindow->unk44 == var_s0) {
block_199:
                                var_v0 = 1;
                            }
                        } else {
                            goto block_104;
                        }
                    } else {
block_104:
                        var_v0 = 0;
                    }
                    if (var_v0 == 0) {
                        saved_reg_gp->unk-4D10 = 1;
                        _GLdeliver_inputchange(sp420);
                    }
                    break;
                case 10:                            /* switch 2 */
                    _GLkeyfocusWindow = NULL;
                    if (_GLpointerWindow == NULL) {
                        saved_reg_gp->unk-4D10 = 0;
                        _GLdeliver_inputchange(sp420);
                    }
                    break;
                case 7:                             /* switch 2 */
                    _GLupdatePointer(&sp420);
                    _GLupdateLockKeys(sp460);
                    if (sp450 != 1) {
                        _GLpointerWindow = var_s0;
                        if (sp450 == 2) {
                            saved_reg_gp->unk-4D14 = 0;
                        }
                    } else {
                        saved_reg_gp->unk-4D14 = 1;
                    }
                    if (sp45C != 0) {
                        _GLkeyfocusWindow = _GLpointerWindow;
                        if (saved_reg_gp->unk-4D14 == 0) {
                            _GLdeliver_inputchange();
                        }
                    }
                    break;
                case 8:                             /* switch 2 */
                    temp_s7_3 = var_s0->unk2C & 4;
                    temp_s8_3 = (s32) var_s0->unk40 == (s32) sp430;
                    _GLupdatePointer(&sp420);
                    _GLupdateLockKeys(sp460);
                    if (sp450 != 2) {
                        if ((s32) sp454 != 2) {
                            if ((s32) sp454 != 0) {
                                if (temp_s8_3 != 0) {
                                    if (temp_s7_3 != 0) {
                                        _GLpointerWindow = var_s0->unk44;
                                    } else {
                                        _GLpointerWindow = NULL;
                                        _GLInvalidatePtr(&_GLpointerWindow);
                                    }
                                }
                            } else if (temp_s7_3 != 0) {
                                if (temp_s8_3 != 0) {
                                    _GLpointerWindow = var_s0->unk44;
                                }
                            }
                        }
                    } else {
                        saved_reg_gp->unk-4D14 = 0;
                    }
                    if (sp45C != 0) {
                        if (saved_reg_gp->unk-4D10 != 0) {
                            if (temp_s7_3 != 0) {
                                sp4C0 = (s32) _GLpointerWindow != (s32) var_s0->unk44;
                            } else {
                                sp4F0 = 1;
                            }
                            sp4B8 = sp4C0;
                            if (sp4C0 == 0) {
                                sp4E8 = sp4F0;
                            }
                        }
                        if ((sp4B8 == 0) && (sp4E8 == 0)) {
                            _GLkeyfocusWindow = _GLpointerWindow;
                            if (saved_reg_gp->unk-4D14 == 0) {
                                _GLdeliver_inputchange();
                            }
                        }
                    }
                    break;
                case 2:                             /* switch 2 */
                case 3:                             /* switch 2 */
                    _GLupdatePointer(&sp420);
                    sp4F8 = XLookupString(&sp420, &sp20, 0x400, &sp4A0);
                    switch (sp4A0) {                /* switch 3; irregular */
                    case 0xFFE9:                    /* switch 3 */
                    case 0xFFEA:                    /* switch 3 */
                        break;
                    case 0xFF7E:                    /* switch 3 */
                    case 0xFF7F:                    /* switch 3 */
                        if ((sp4A0 != 0xFFE9) && (sp4A0 != 0xFFEA)) {
                        default:                    /* switch 3 */
                            _GLgrabEverything(&sp420, (s64) var_s0, 0xFFEA);
                        }
                        break;
                    }
                    temp_v0_4 = _GLKeycodeToDevice((s32) sp454);
                    var_a4 = 0;
                    var_a3 = (void **)1;
                    temp_a2_3 = temp_v0_4 & 0xFFFF;
                    var_s8_2 = temp_v0_4 & 0xFFFF;
                    if (temp_a2_3 != 1) {

                    } else {
                        var_a3 = (void **)0xFF13;
                        if (sp4A0 == 0xFF13) {
                            var_s8_2 = 0xA0;
                        }
                    }
                    if (sp4A0 != 0xFFE5) {
                        if (sp4A0 == 0xFF7F) {
                            var_a4 = _GLnumLockMask;
                        }
                    } else {
                        var_a4 = _GLcapsLockMask;
                    }
                    if (var_a4 != 0) {
                        _GLgrabEverything(&sp420, var_s8_2, temp_a2_3, var_a3);
                        temp_a0_4 = (s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30;
                        if (sp420 != 2) {
                            sp4E0 = temp_a0_4 == 2;
                        } else {
                            sp4D0 = temp_a0_4 == 3;
                        }
                        var_s7 = sp4D0;
                        if (sp4D0 == 0) {
                            sp4D8 = sp4E0;
                        }
                    }
                    if ((var_s7 == 0) && (sp4D8 == 0)) {
                        _GLpostEvent(var_s8_2, sp420 == 2, 0, 2);
                        if ((__GLisqueued(0x201) != 0) && (sp420 == 2) && (sp4F8 != 0) && (sp4F8 > 0)) {
                            var_s7_2 = &sp20;
                            do {
                                _GLpostEvent(0x201, (s64) ((s64) *var_s7_2 << 0x30) >> 0x30, 0);
                                var_s7_2 += 1;
                            } while (var_s7_2 != &(&sp20)[sp4F8]);
                        }
                    }
                    break;
                case 33:                            /* switch 2 */
                    temp_s7_4 = temp_a4->unk0->unk18;
                    if (temp_s7_4->unk20 == sp434) {
                        temp_a5_4 = var_s0->unk2D;
                        temp_a0_5 = temp_s7_4->unk18;
                        if (temp_a5_4 != 0) {
                            if (temp_a0_5 == sp43C) {
                                _GLwinshut(temp_a5_4);
                            }
                            if (temp_s7_4->unk1C == sp43C) {
                                _GLwinquit(var_s0->unk2D);
                            }
                        } else if (temp_a0_5 != sp43C) {
                            if (temp_s7_4->unk1C == sp43C) {
                                goto block_203;
                            }
                        } else {
block_203:
                            _GLioerrorhandler(var_s0->unk4);
                        }
                    }
                    break;
                }
                sp4B8 = 0;
                sp4C0 = 0;
                sp4E8 = 0;
                sp4F0 = 0;
                var_s7 = 0;
                sp4D0 = 0;
                sp4D8 = 0;
                sp4E0 = 0;
            }
        } else {
            var_s1 = 1;
        }
        if (var_s1 != 0) {
            if (sp420 < 0x23U) {
                var_a2 = sp434;
                switch (sp420) {                    /* switch 1 */
                case 2:                             /* switch 1 */
                case 3:                             /* switch 1 */
                    XLookupString(&sp420, &sp4A8, 8, &sp4B0);
                    var_a2 = sp4B0 < 0xFFE1U;
                    if (var_a2 == 0) {
                        if (sp4B0 <= 0xFFEEU) {
                            var_v0_2 = 0;
                        } else {
                            goto block_43;
                        }
                    } else {
block_43:
                        if (sp4B0 == 0xFF7E) {
                            var_v0_2 = 0;
                        } else {
                            var_v0_2 = 0;
                            if (sp4B0 != 0xFF7F) {
                                var_v0_2 = 1;
                            }
                        }
                    }
                    var_s6 = 0;
                    if (var_v0_2 == 0) {
                    case 4:                         /* switch 1 */
                    case 5:                         /* switch 1 */
                        _GLgrabEverything(&sp420, 0, var_a2);
                        _GLupdatePointer(&sp420);
                        goto block_13;
                    }
                    break;
                case 10:                            /* switch 1 */
                    saved_reg_gp->unk-4D14 = 0;
                    if (var_a2 == 0) {
                        saved_reg_gp->unk-4D10 = 0;
                        _GLkeyfocusWindow = NULL;
                        _GLdeliver_inputchange();
                    }
                    goto block_13;
                case 8:                             /* switch 1 */
                    _GLupdatePointer(&sp420);
                    _GLupdateLockKeys(sp460);
                    saved_reg_gp->unk-4D14 = 0;
                    if (sp450 == 0) {
                        _GLpointerWindow = NULL;
                        _GLInvalidatePtr();
                        var_s6 = saved_reg_gp->unk-4D10 != 0;
                    }
                    var_s6 = 0;
                    if (var_s6 == 0) {
                        if (sp45C != 0) {
                            _GLkeyfocusWindow = _GLpointerWindow;
                            if (saved_reg_gp->unk-4D14 == 0) {
                                _GLdeliver_inputchange();
                            }
                        }
                        goto block_13;
                    }
                    break;
                case 34:                            /* switch 1 */
                    _GLRefreshKeyboardMapping(&sp420);
                    goto block_13;
                case 11:                            /* switch 1 */
                    _GLSetButtonState(&sp420);
                    goto block_13;
                }
            } else {
            case 0:                                 /* switch 1 */
            case 1:                                 /* switch 1 */
            case 6:                                 /* switch 1 */
            case 12:                                /* switch 1 */
            case 13:                                /* switch 1 */
            case 14:                                /* switch 1 */
            case 15:                                /* switch 1 */
            case 16:                                /* switch 1 */
            case 17:                                /* switch 1 */
            case 18:                                /* switch 1 */
            case 19:                                /* switch 1 */
            case 20:                                /* switch 1 */
            case 21:                                /* switch 1 */
            case 22:                                /* switch 1 */
            case 23:                                /* switch 1 */
            case 24:                                /* switch 1 */
            case 25:                                /* switch 1 */
            case 26:                                /* switch 1 */
            case 27:                                /* switch 1 */
            case 28:                                /* switch 1 */
            case 29:                                /* switch 1 */
            case 30:                                /* switch 1 */
            case 31:                                /* switch 1 */
            case 32:                                /* switch 1 */
            case 33:                                /* switch 1 */
                _GLProcessExtEvent(&sp420);
            case 7:                                 /* switch 1 */
            case 9:                                 /* switch 1 */
block_13:
                var_s6 = 0;
            }
        }
        var_s2_2 -= 1;
        if (var_s2_2 != -1) {
            goto loop_15;
        }
    }
    if (sp538 != 0) {
        temp_v0_5 = XEventsQueued(gl_sstatep->unk1C->unk4, 2, sp538);
        var_s2 = temp_v0_5;
        sp538 = temp_v0_5;
        if (temp_v0_5 != 0) {
            goto loop_10;
        }
    }
    if ((sp4C8 != 0) && (_GLqgetfd_was_called != 0)) {
        _GLqread_hack();
    }
}

void gl_fast_qcheck(s64 arg0, s64 arg1) {
    s64 sp18;
    s64 sp10;

    sp18 = arg1;
    sp10 = arg0;
    if (_GLdirtycmaps != 0) {
        _GLflushcmaps();
    }
    if (XEventsQueued(gl_sstatep->unk1C->unk4, 0) != 0) {
        goto block_4;
    }
    if (ioctl(gl_sstatep->unk1C->unk4->unk8, 0x4004730AU, sp, 1) >= 0) {

    } else {
        switch (errno) {                            /* irregular */
        case 0x83:
        case 0x91:
            _GLioerrorhandler(gl_sstatep->unk1C->unk4);
            break;
        case 0x16:
            ioctl((s32) subroutine_arg2, 0x4004667FU, sp, errno);
            break;
        }
    }
    if (subroutine_arg0 == 0) {
        if ((sp10 != 0) && (saved_reg_gp->unk-4D24 != 0)) {
            _GLdeliver_inputchange((u32) sp18);
        }
    } else {
block_4:
        _GLupdateQueue(0, 0);
    }
}
