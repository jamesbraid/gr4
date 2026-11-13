typedef struct __gl_sstateRec {
    /* 0x000 */ void **display;
    /* 0x004 */ s32 screen;
    /* 0x008 */ u32 root;
    /* 0x00C */ u32 colormap;
    /* 0x010 */ void **visual;
    /* 0x014 */ char pad14[8];                      /* maybe part of visual[3]? */
    /* 0x01C */ void **unk1C;                       /* inferred */
    /* 0x020 */ char pad20[0xF0];                   /* maybe part of unk1C[0x3D]? */
    /* 0x110 */ s32 graphicsType;
} gl_sstate;                                        /* size = 0x114 */

? XAutoRepeatOff(s64);                              /* extern */
? XAutoRepeatOn(s32);                               /* extern */
? XChangePointerControl(s64, ?, ?, s16);            /* extern */
? XChangeProperty(s32, s32, s32, ?);                /* extern */
? XFlush(s64);                                      /* extern */
? XFreeModifiermap(void *);                         /* extern */
? XGetKeyboardControl(s64, void *, s64, s32 *);     /* extern */
void *XGetModifierMapping(s32);                     /* extern */
? XGetPointerControl(s64, s32 *, s32 *, s32 *);     /* extern */
u32 XKeycodeToKeysym(void *, s8, ?, void *);        /* extern */
s32 XKeysymToKeycode(s32, ?);                       /* extern */
? XQueryKeymap(s32, ? *);                           /* extern */
s32 XQueryPointer(s32, s32, ? *, ? *);              /* extern */
? XRebindKeysym(s32, ?, s32, ?);                    /* extern */
? XRefreshKeyboardMapping();                        /* extern */
? XSGIMiscGetAutoRepeatRate(s64, s32 *, s32 *);     /* extern */
s32 XSGIMiscQueryExtension(s64, ? *, ? *);          /* extern */
? XSGIMiscSetAutoRepeatRate(s64, s16, s16);         /* extern */
? XSelectInput(s32, s32, s32, s32);                 /* extern */
? XSendEvent(s32, s32, ?, ?);                       /* extern */
? XSync(s64, ?);                                    /* extern */
? XWarpPointer(void *, ?, s32, ?);                  /* extern */
? exit(?);                                          /* extern */
? fprintf(void *, void *, ?, s64);                  /* extern */
? getdev(?, u16 *, void *);                         /* extern */
? qcontrol(?, s32, void *, s32);                    /* extern */
s32 qtest();                                        /* extern */
extern s32 _GLblockWhenStowed;
extern s32 _GLcanvasMask;
extern s32 _GLcapsLockMask;
extern s32 _GLdirtycmaps;
extern s32 _GLframeMask;
extern s32 _GLkeyfocusWindow;
extern s32 _GLmenuIsUp;
extern s32 _GLmotionThresh;
extern s32 _GLnumLockMask;
extern s32 _GLpointerWindow;
extern s32 _GLqgetfd_was_called;
extern s32 _GLsetvalDoesConstrain;
extern s32 _GLsoftAttach;
extern ? __iob;
extern ? dummy_ev;
extern s32 gl_nscrns;
extern s32 gl_scrntab;
extern ? keysymToDevice1;
extern ? keysymToDevice2;
extern ? sub_0f020000;
extern ? sub_0f030000;
extern ? sub_0f0f0000;

s32 isCoreButton(s32 arg0) {
    s16 temp_a5;
    s32 temp_a3;
    u16 *var_a2;
    void *temp_a4;

    temp_a4 = saved_reg_gp->unk-50BC;
    if (temp_a4->unk14 == 1) {
        temp_a5 = temp_a4->unkC;
        if (temp_a5 > 0) {
            var_a2 = temp_a4->unk10;
            temp_a3 = var_a2 + (temp_a5 * 2);
loop_6:
            var_a2 += 2;
            if (*var_a2 != arg0) {
                if (var_a2 == temp_a3) {
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    return 0;
                }
                goto loop_6;
            }
            return 1;
        }
        return 0;
    }
    return 0;
}

void _GLisInterested(s32 arg0) {
    if (arg0 < 0x258) {

    }
}

void _GLaddq(s16 arg0, s64 arg1) {
    s64 sp0;
    s32 temp_a2_2;
    s32 temp_a4;
    s32 temp_hi;
    s32 var_a3;
    void *temp_a2;
    void *temp_a2_3;
    void *temp_v0;
    void *var_a7;

    var_a3 = saved_reg_gp->unk-50C0;
    M2C_TRAP_IF(0x258 == 0);
    temp_a4 = saved_reg_gp->unk-50C4;
    var_a7 = &sub_0f030000 + 0x5198;
    if (((s32) (var_a3 + 2) % 600) == temp_a4) {
        M2C_TRAP_IF(0x258 == 0);
        temp_a2 = (var_a3 * 4) + var_a7;
        temp_a2->unk1EEA = 0;
        temp_a2->unk1EE8 = 0x217;
        var_a3 = (s32) (var_a3 + 1) % 600;
        saved_reg_gp->unk-50C0 = var_a3;
    } else {
        var_a7 = &sub_0f030000 + 0x5198;
    }
    temp_hi = (s32) (var_a3 + 1) % 600;
    M2C_TRAP_IF(0x258 == 0);
    temp_a2_2 = var_a3 * 4;
    if (temp_hi == temp_a4) {
        sp0 = arg1;
        if (saved_reg_gp->unk-50A8 == 0) {
            _GLdevname(temp_a2_2, var_a3);
            fprintf(&__iob + 0x20, &sub_0f020000 + 0x3DB8, M2C_ERROR(/* Read from unset register $v0 */), sp0);
        }
        saved_reg_gp->unk-50A8 = 1;
        return;
    }
    saved_reg_gp->unk-50C0 = temp_hi;
    temp_a2_3 = temp_a2_2 + var_a7;
    temp_a2_3->unk1EEA = (s16) arg1;
    temp_a2_3->unk1EE8 = arg0;
    if (arg0 < 0x258) {
        temp_v0 = (arg0 * 0xC) + var_a7;
        temp_v0->unk2CD = (u8) (temp_v0->unk2CD | 8);
    }
}

void _GLisNoiseExceed(s32 arg0, u16 *arg1, s32 arg2) {
    s16 temp_a6_2;
    s16 temp_t0;
    s32 var_a5;
    s32 var_a7;
    u16 *var_a4;
    u8 temp_a6;
    void *temp_a0;

    var_a4 = arg1;
    if (arg0 > 0) {
        var_a5 = 0;
loop_5:
        temp_a0 = (*var_a4 * 0xC) + (&sub_0f030000 + 0x5198) + 0x2C8;
        temp_a6 = temp_a0->unk5;
        var_a4 += 2;
        if (temp_a6 & 1) {
            if (temp_a6 & 8) {
                temp_t0 = temp_a0->unk0;
                temp_a6_2 = *(var_a5 + arg2);
                var_a7 = temp_a6_2 - temp_t0;
                if (temp_t0 < temp_a6_2) {

                } else {
                    var_a7 = temp_t0 - temp_a6_2;
                }
                if (var_a7 < temp_a0->unk6) {
                    goto block_4;
                }
                return;
            }
            return;
        }
block_4:
        var_a5 += 2;
        if (((arg0 * 2) + arg1) != var_a4) {
            goto loop_5;
        }
    }
}

void _GLqueuedDevsExist(s32 arg0, u16 *arg1) {
    u16 *var_a4;

    if (arg0 > 0) {
        var_a4 = arg1;
loop_2:
        var_a4 += 2;
        if (!(((*var_a4 * 0xC) + (&sub_0f030000 + 0x5198))->unk2CD & 1)) {
            if (((arg0 * 2) + arg1) == var_a4) {

            } else {
                goto loop_2;
            }
        }
    }
}

void _GLupdateVal(s32 arg0, s16 arg1) {
    s16 temp_a5;
    s32 var_a3;
    void *temp_a4;

    temp_a4 = (arg0 * 0xC) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4BC00)->unk-7FA4 + 0x5198);
    temp_a5 = temp_a4->unk2C8;
    var_a3 = arg1 - temp_a5;
    if (temp_a5 >= arg1) {
        var_a3 = temp_a5 - arg1;
    }
    if (var_a3 >= temp_a4->unk2CE) {
        temp_a4->unk2C8 = arg1;
    }
}

void _GLpostEvent(s32 arg0, s16 arg1, s32 arg2, s16 arg3) {
    s64 sp18;
    s64 sp10;
    s16 var_a3;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_t0;
    s32 var_a2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    s64 temp_at;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a0_3;
    u8 temp_a4;
    u8 temp_s0_2;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a6;
    void *temp_s0;
    void *temp_s1;
    void *var_a0;

    var_a3 = arg3;
    if (arg0 < 0x258) {
        temp_s0 = &sub_0f030000 + 0x5198;
        temp_s1 = (arg0 * 0xC) + temp_s0;
        temp_a4 = temp_s1->unk2CD;
        if (temp_a4 & 1) {
            temp_s1->unk2C8 = arg1;
            if (arg2 != 3) {
                if (arg2 != 1) {
                    var_a7 = 0;
                    if (arg2 == 2) {
                        var_a7 = 0xA;
                    }
                } else {
                    var_a7 = 1;
                }
                temp_a4_2 = saved_reg_gp->unk-50C0;
                var_a5 = 0;
                var_a2 = temp_a4_2;
                if (var_a7 > 0) {
                    temp_t0 = saved_reg_gp->unk-50C4;
                    if (temp_t0 != temp_a4_2) {
loop_11:
                        var_a4 = 0x257;
                        if (var_a2 != 0) {
                            var_a4 = var_a2 - 1;
                        }
                        temp_a6 = (var_a4 * 4) + temp_s0;
                        var_a2 = var_a4;
                        if (temp_a6->unk1EE8 == arg0) {
                            var_a5 += 1;
                            if (temp_a6->unk1EEA == arg1) {
                                return;
                            }
                            goto block_9;
                        }
                        var_a5 += 1;
block_9:
                        var_a3 = var_a5 < var_a7;
                        if ((var_a3 != 0) && (var_a4 != temp_t0)) {
                            goto loop_11;
                        }
                        goto block_17;
                    }
                    goto block_17;
                }
block_17:
                _GLisInterested(var_a2, var_a3);
                if (temp_s1->unk2CD & 4) {
                    temp_a0 = temp_s1->unk2D0;
                    sp18 = (s64) ((temp_a0 * 0xC) + temp_s0 + 0x2C8);
                    if (saved_reg_gp->unk-50B8 == 0) {
                        if (temp_a0 != 0) {
                            if ((temp_a0 == 0x110) || (temp_a2 = saved_reg_gp->unk-50BC, (temp_a0 == 0x111)) || (temp_a2->unk4 == temp_a0) || (var_a0 = NULL, (temp_a2->unk6 == temp_a0))) {
                                var_a0 = (void *)1;
                            }
                        } else {
                            var_a0 = NULL;
                        }
                        if (var_a0 == NULL) {
                            temp_a0_2 = temp_s1->unk2D2;
                            if (temp_a0_2 != 0) {
                                if ((temp_a0_2 == 0x110) || (temp_a2_2 = saved_reg_gp->unk-50BC, (temp_a0_2 == 0x111)) || (temp_a2_2->unk4 == temp_a0_2) || (var_a0 = NULL, (temp_a2_2->unk6 == temp_a0_2))) {
                                    var_a0 = (void *)1;
                                }
                            } else {
                                var_a0 = NULL;
                            }
                            if (var_a0 != NULL) {
                                goto block_45;
                            }
                        } else {
block_45:
                            _GLqueryModState(var_a0, temp_a0);
                        }
                    }
                    _GLisInterested((s32) temp_s1->unk2D0, sp18->unk0);
                    ((temp_s1->unk2D0 * 0xC) + temp_s0)->unk2CA = 0;
                    if (!(sp18->unk5 & 2)) {
                        _GLSelectInput(temp_s1->unk2D0, 2);
                    }
                    temp_a0_3 = temp_s1->unk2D2;
                    if (temp_a0_3 != 0) {
                        temp_a1 = (temp_a0_3 * 0xC) + temp_s0;
                        sp10 = (s64) (temp_a1 + 0x2C8);
                        _GLisInterested((s32) temp_a0_3, temp_a1->unk2C8);
                        ((temp_s1->unk2D2 * 0xC) + temp_s0)->unk2CA = 0;
                        if (!(sp10->unk5 & 2)) {
                            _GLSelectInput(temp_s1->unk2D2, 2);
                        }
                    }
                }
            } else {
                temp_s1->unk2CD = (u8) (temp_a4 | 8);
            }
        } else {
            temp_s1->unk2C8 = arg1;
            temp_s0_2 = (temp_a4 | 8) & 0xFF;
            temp_s1->unk2CD = temp_s0_2;
            temp_a3 = temp_s0_2 & 2;
            if (temp_a3 != 0) {
                temp_at = (s64) ((temp_s1->unk2CA + 1) << 0x30) >> 0x30;
                temp_s1->unk2CA = (s16) temp_at;
                if (temp_at >= 0x7D1) {
                    _GLSelectInput(2U, temp_a3);
                }
            }
        }
    }
}

void _GLpostCoreButtonEvent(s32 arg0) {
    s32 temp_a3;
    void *temp_a5;

    temp_a5 = saved_reg_gp->unk-50BC;
    if ((temp_a5->unk14 == 1) && (arg0 > 0) && (temp_a5->unkC >= arg0)) {
        temp_a3 = arg0 * 2;
        _GLpostEvent((s32) (temp_a5->unk10 + temp_a3)->unk-2, 0, temp_a3);
    }
}

void _GLpostMotionEvent(s32 arg0, u16 *arg1, s16 *arg2, s64 arg3) {
    s64 sp20;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    u16 sp4;
    u16 sp2;
    u16 sp0;
    s16 *var_s0;
    s16 temp_a5;
    s16 temp_a6;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_s2;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_s1;
    s32 var_s6;
    s32 var_t2;
    s32 var_v0;
    u16 *var_a1;
    u16 *var_s3;
    u16 *var_s4;
    u16 temp_a0_2;
    void *temp_a2;
    void *var_s5;

    var_s0 = arg2;
    var_s3 = arg1;
    if (M2C_ERROR(/* Read from unset register $a4 */) != 1) {
        temp_a2 = saved_reg_gp->unk-50BC;
        var_a1 = sp;
        temp_a0 = temp_a2->unk14;
        if (M2C_ERROR(/* Read from unset register $a4 */) != 0) {
            goto block_2;
        }
        if (temp_a0 == 2) {
            return;
        }
block_2:
        var_s1 = 2;
        if ((temp_a0 == 1) || (temp_a0 == 2)) {
            var_a1 = &sp4;
            if (M2C_ERROR(/* Read from unset register $a4 */) != 0) {
                goto block_34;
            }
            saved_reg_gp->unk-50B8 = 1;
            if ((M2C_ERROR(/* Read from unset register $a4 */) == 0) && (temp_a2->unk0 == 5)) {
                sp0 = temp_a2->unk8;
                sp2 = temp_a2->unkA;
            } else {
block_34:
                sp0 = temp_a2->unk4;
                sp2 = temp_a2->unk6;
            }
            temp_a6 = var_s0->unk0;
            sp14 = temp_a6;
            sp10 = temp_a6;
            temp_a5 = var_s0->unk2;
            var_s1 = 4;
            var_s0 = &sp10;
            sp12 = temp_a5;
            sp16 = temp_a5;
        }
        var_s3 = sp;
        sp20 = arg3;
        saved_reg_gp->unk-50B0 = 1;
        var_a1->unk2 = 0x111;
        var_a1->unk0 = 0x110;
        goto block_5;
    }
    sp20 = arg3;
    var_s1 = arg0;
block_5:
    _GLisInterested(var_s1, (s16) var_s3, var_s0);
    temp_s2 = M2C_ERROR(/* Read from unset register $v0 */);
    _GLisInterested(var_s1, (s16) var_s3);
    var_a0 = saved_reg_gp->unk-50C0;
    temp_a4 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFFFF;
    if (temp_a4 != 0) {
        if (temp_s2 != 0) {
            temp_v0 = var_a0 - saved_reg_gp->unk-50C4;
            var_a1_2 = temp_v0;
            if (temp_v0 < 0) {
                var_a1_2 = temp_v0 + 0x258;
            }
            var_v0 = saved_reg_gp->unk-50B4;
            if (var_v0 != 0) {
                var_v0 += 1;
                saved_reg_gp->unk-50B4 = var_v0;
            }
            if (_GLmotionThresh != 0) {
                goto block_11;
            }
            if (var_v0 < 3) {
                var_s5 = &sub_0f030000 + 0x5198;
            } else {
block_11:
                var_a2 = 0;
                temp_a7 = saved_reg_gp->unk-395C;
                if (sp20 != 0) {
                    temp_t1 = saved_reg_gp->unk-3960;
                    if (temp_a7 == var_a0) {
                        temp_t3 = temp_a7 - temp_t1;
                        if (temp_t1 != temp_a7) {
                            var_t2 = temp_t3;
                            if (temp_t3 < 0) {
                                var_t2 = temp_t3 + 0x258;
                            }
                            if (var_a1_2 >= var_t2) {
                                var_s5 = &sub_0f030000 + 0x5198;
                                if ((((temp_t1 * 4) + var_s5)->unk1EE8 == temp_a4) && (((sp20 - saved_reg_gp->unk-50AC) < _GLmotionThresh) || (var_v0 >= 3))) {
                                    var_a0 = temp_t1;
                                    var_a2 = 1;
                                    saved_reg_gp->unk-50C0 = temp_t1;
                                }
                            } else {
                                goto block_21;
                            }
                        } else {
                            goto block_21;
                        }
                    } else {
                        goto block_21;
                    }
                } else {
block_21:
                    var_s5 = &sub_0f030000 + 0x5198;
                }
                saved_reg_gp->unk-3960 = var_a0;
                if (var_a2 == 0) {
                    if (sp20 != 0) {
                        saved_reg_gp->unk-50AC = (s32) sp20;
                    }
                }
            }
            if (var_a1_2 >= 0x24F) {
                _GLpostMotionEvent(var_s1, (s16) var_s3);
            }
        } else {
            var_s5 = &sub_0f030000 + 0x5198;
        }
    } else {
        var_s5 = &sub_0f030000 + 0x5198;
    }
    if (var_s1 > 0) {
        var_s6 = 0;
        var_s4 = var_s3;
loop_28:
        temp_a0_2 = *var_s4;
        if (temp_s2 == 0) {
            if (!(((temp_a0_2 * 0xC) + var_s5)->unk2CD & 1)) {
                goto block_26;
            }
        } else {
block_26:
            _GLpostEvent((s32) temp_a0_2, *(var_s6 + var_s0), 0);
        }
        var_s4 += 2;
        var_s6 += 2;
        if (var_s4 != ((var_s1 * 2) + var_s3)) {
            goto loop_28;
        }
    }
    saved_reg_gp->unk-395C = (s32) saved_reg_gp->unk-50C0;
}

void collapseQ(s32 arg0, u16 *arg1) {
    void **sp20;
    s16 sp8;
    s16 *var_a4;
    s16 var_s1;
    s32 temp_a0_4;
    s32 temp_a6;
    s32 temp_a7;
    s32 var_a0;
    s32 var_a4_2;
    u16 *temp_s5;
    u16 *var_a1;
    u16 *var_s0;
    u16 *var_s0_2;
    u16 *var_v0;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a0_3;
    void *temp_a3;
    void *temp_at;
    void *temp_s2;
    void *temp_s4;
    void *temp_s6;
    void *temp_v1;

    var_s1 = 0;
    temp_a6 = saved_reg_gp->unk-50C0 * 4;
    temp_a7 = saved_reg_gp->unk-50C4 * 4;
    temp_s2 = &sub_0f030000 + 0x5198;
    temp_s6 = temp_a6 + temp_s2 + 0x1EE8;
    var_s0 = temp_a7 + temp_s2 + 0x1EE8;
    var_v0 = var_s0;
    if (arg0 > 0) {
        var_a4 = &sp8;
        var_a1 = arg1;
        if (arg0 & 1) {
            temp_a0 = *var_a1;
            if (((temp_a0 * 0xC) + temp_s2)->unk2CD & 1) {
                *var_a4 = (s16) temp_a0;
                var_a4 += 2;
                var_s1 = 1;
            }
            var_a1 += 2;
        }
        if ((arg0 >> 1) != 0) {
loop_11:
            temp_a0_2 = var_a1->unk0;
            if (((temp_a0_2 * 0xC) + temp_s2)->unk2CD & 1) {
                *var_a4 = (s16) temp_a0_2;
                var_a4 += 2;
                var_s1 += 1;
            }
            temp_a0_3 = var_a1->unk2;
            var_a1 += 4;
            if (((temp_a0_3 * 0xC) + temp_s2)->unk2CD & 1) {
                *var_a4 = (s16) temp_a0_3;
                var_a4 += 2;
                var_s1 += 1;
            }
            if (var_a1 != ((arg0 * 2) + arg1)) {
                goto loop_11;
            }
        }
    }
    temp_s5 = temp_s2 + 0x1EE8;
    if (temp_a6 != temp_a7) {
        temp_s4 = temp_s2 + 0x2844;
loop_18:
        var_a4_2 = 0;
        if (*arg1 == *var_v0) {
            _GLpostMotionEvent((s32) sp, var_s1, &sp8, (s64) &sp20);
            var_a4_2 = M2C_ERROR(/* Read from unset register $v0 */);
            if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && (M2C_ERROR(/* Read from unset register $v0 */) > 0)) {
                var_a0 = 0;
                if (M2C_ERROR(/* Read from unset register $v0 */) & 1) {
                    temp_v1 = *sp20;
                    var_s0 += 4;
                    var_s0->unk-4 = (u16) temp_v1->unk0;
                    var_a0 = 4;
                    var_s0->unk-2 = (s16) temp_v1->unk2;
                    if ((u32) temp_s4 < (u32) var_s0) {
                        var_s0 = temp_s5;
                    }
                }
                if (((s32) M2C_ERROR(/* Read from unset register $v0 */) >> 1) != 0) {
loop_27:
                    temp_a3 = *(sp20 + var_a0);
                    var_s0_2 = var_s0 + 4;
                    var_s0_2->unk-4 = (u16) temp_a3->unk0;
                    temp_a0_4 = var_a0 + 4;
                    var_s0_2->unk-2 = (s16) temp_a3->unk2;
                    if ((u32) temp_s4 < (u32) var_s0_2) {
                        var_s0_2 = temp_s5;
                    }
                    temp_at = *(sp20 + temp_a0_4);
                    var_s0 = var_s0_2 + 4;
                    var_s0->unk-4 = (u16) temp_at->unk0;
                    var_a0 = temp_a0_4 + 4;
                    var_s0->unk-2 = (s16) temp_at->unk2;
                    if ((u32) temp_s4 < (u32) var_s0) {
                        var_s0 = temp_s5;
                    }
                    if (var_a0 != (M2C_ERROR(/* Read from unset register $v0 */) * 4)) {
                        goto loop_27;
                    }
                }
            }
            var_v0 = subroutine_arg0;
        }
        if (var_a4_2 == 0) {
            var_s0->unk0 = var_v0->unk0;
            var_s0->unk2 = (s16) var_v0->unk2;
            var_s0 += 4;
            var_v0 = subroutine_arg0 + 4;
            if ((u32) temp_s4 < (u32) var_v0) {
                var_v0 = temp_s5;
            }
            if ((u32) temp_s4 < (u32) var_s0) {
                var_s0 = temp_s5;
                if (temp_s6 != var_v0) {
                    goto loop_18;
                }
            } else {
                goto block_17;
            }
        } else {
block_17:
            if (temp_s6 != var_v0) {
                goto loop_18;
            }
        }
    }
    saved_reg_gp->unk-50C0 = (s32) ((s32) ((var_s0 - temp_s2) - 0x1EE8) >> 2);
}

void keepSearchingForEvent(u16 **arg0, s32 arg1, u16 *arg2, void **arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_t0;
    s32 var_v0;
    s64 var_t1;
    u16 *var_a6;
    u16 *var_a7;
    void *temp_a7;
    void *temp_t2;
    void *temp_t8;
    void *var_t3;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_v0 = 0;
    var_a6 = *arg0;
    temp_a7 = &sub_0f030000 + 0x5198;
    temp_t8 = temp_a7 + 0x28B8;
    temp_t2 = (saved_reg_gp->unk-50C0 * 4) + temp_a7 + 0x1EE8;
    var_t3 = temp_t8;
    if (temp_t2 == var_a6) {
        goto block_14;
    }
    sp10 = arg1 * 2;
    sp0 = (s64) (temp_a7 + 0x1EE8);
    sp18 = (s64) (temp_a7 + 0x2890);
    if (temp_t8 == var_t3) {
        goto block_13;
    }
block_3:
    sp8 = (s64) temp_t8;
block_4:
    var_t0 = 0;
    var_a7 = arg2;
    var_t1 = sp8;
loop_5:
    var_a7 += 2;
    if (*var_a7 != *var_a6) {
        goto block_10;
    }
    *var_t1 = var_a6;
    var_a6 += 4;
    var_t0 += 1;
    if ((u32) (temp_a7 + 0x2844) >= (u32) var_a6) {
        goto block_8;
    }
    var_a6 = (u16 *) sp0;
block_8:
    var_t1 += 4;
    if ((u32) var_a7 >= (u32) (sp10 + arg2)) {
        goto block_10;
    }
    if (temp_t2 != var_a6) {
        goto loop_5;
    }
block_10:
    if (var_t0 < arg1) {
        goto block_14;
    }
    var_v0 = var_t0;
    var_t3 = (void *) sp8;
    if (temp_t2 == var_a6) {
        goto block_14;
    }
    if (temp_t8 != var_t3) {
        goto block_3;
    }
block_13:
    sp8 = sp18;
    goto block_4;
block_14:
    if (var_v0 == 0) {
        goto block_16;
    }
    *arg3 = var_t3;
    *arg0 = var_a6;
block_16:
    return;
}

void _GLInvalidatePtr(void) {
    (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4B0BC)->unk-50B8 = 0;
}

void gl_g_attachcursor(s32 arg0, s32 arg1) {
    s64 sp28;
    s64 sp20;
    s16 temp_a5_2;
    s32 temp_a3;
    s32 temp_a3_3;
    u16 *var_v0;
    u16 temp_a0;
    u32 temp_a1;
    u8 temp_a3_2;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a5;
    void *temp_t1;
    void *temp_t8;
    void *var_a1;
    void *var_s0;

    if ((arg0 == 0) || (temp_a3 = arg0 < 0x258, (temp_a3 == 0)) || (arg1 == 0) || (sp28 = (s64) gl_sstatep->unk1C->unk4, ((arg1 < 0x258) == 0))) {
        return;
    }
    temp_a5 = saved_reg_gp->unk-50BC;
    sp->unk14 = (s32) temp_a5->unk14;
    sp->unk10 = (u16 *) temp_a5->unk10;
    sp->unkC = (s32) temp_a5->unkC;
    sp->unk8 = (s32) temp_a5->unk8;
    sp->unk4 = (s32) temp_a5->unk4;
    sp->unk0 = (s32) temp_a5->unk0;
    _GLExtChangePtrDev(sp28, arg0, arg1, temp_a3);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        _GLFindCoreDevice();
        temp_a2 = M2C_ERROR(/* Read from unset register $v0 */);
        saved_reg_gp->unk-50BC = (void *) M2C_ERROR(/* Read from unset register $v0 */);
        if (sp0 != 5) {
            if (*M2C_ERROR(/* Read from unset register $v0 */) == 5) {
                var_s0 = &sub_0f030000 + 0x5198;
            } else {
                if (sp0 != 0) {
                    var_s0 = &sub_0f030000 + 0x5198;
                    ((sp6 * 0xC) + var_s0)->unk2CE = 0;
                    ((sp4 * 0xC) + var_s0)->unk2CE = 0;
                } else {
                    var_s0 = &sub_0f030000 + 0x5198;
                }
                var_s0->unkF8E = 0;
                var_s0->unkF9A = 0;
            }
        } else {
            var_s0 = &sub_0f030000 + 0x5198;
        }
        if (temp_a2->unk0 == 5) {
            ((temp_a2->unk4 * 0xC) + var_s0)->unk2C8 = (s16) ((temp_a2->unk8 * 0xC) + var_s0)->unk2C8;
            ((temp_a2->unk6 * 0xC) + var_s0)->unk2C8 = (s16) ((temp_a2->unkA * 0xC) + var_s0)->unk2C8;
        }
        temp_t8 = (temp_a2->unk4 * 0xC) + var_s0;
        temp_t8->unk2CD = (u8) (temp_t8->unk2CD & ~8);
        temp_t1 = (temp_a2->unk6 * 0xC) + var_s0;
        temp_t1->unk2CD = (u8) (temp_t1->unk2CD & ~8);
        var_s0->unkF99 = (u8) (var_s0->unkF99 & ~8);
        var_s0->unkF8D = (u8) (var_s0->unkF8D & ~8);
        _GLInvalidatePtr();
        if ((gl_wstatep != NULL) && (gl_wstatep->active->unk2C != 5)) {
            _GLSelectInput();
            sp20 = M2C_ERROR(/* Read from unset register $v0 */);
            _GLMarkExtDevsForSelection();
            _GLExtClearGotEventFlags();
            temp_a2_2 = saved_reg_gp->unk-50BC;
            if (temp_a2_2->unk14 == 1) {
                temp_a5_2 = (s16) temp_a2_2->unkC;
                if (temp_a5_2 > 0) {
                    var_v0 = temp_a2_2->unk10;
                    temp_a1 = var_v0 + (temp_a5_2 * 2);
loop_31:
                    temp_a3_2 = ((*var_v0 * 0xC) + var_s0)->unk2CD;
                    var_v0 += 2;
                    if (!(temp_a3_2 & 3)) {
                        if ((u32) var_v0 >= temp_a1) {
                            goto block_34;
                        }
                        goto loop_31;
                    }
                    goto block_35;
                }
block_34:
                if (sp18 != 0) {
block_35:
                    _GLSelectInput(*temp_a2_2->unk10);
                    var_a1 = &sub_0f0f0000 - 0x77E8;
                    sp20 |= M2C_ERROR(/* Read from unset register $v0 */);
                } else {
                    var_a1 = &sub_0f0f0000 - 0x77E8;
                }
                temp_a0 = saved_reg_gp->unk-50BC->unk4;
                temp_a3_3 = ((temp_a0 * 0xC) + var_s0)->unk2CD & 3;
                if ((temp_a3_3 != 0) || (((saved_reg_gp->unk-50BC->unk6 * 0xC) + var_s0)->unk2CD & 3)) {
                    _GLSelectInput(temp_a0, (s32) var_a1, saved_reg_gp->unk-50BC, temp_a3_3);
                    sp20 |= M2C_ERROR(/* Read from unset register $v0 */);
                }
            }
            if ((sp20 != 0) || (_GLExtDevNeedsSelection(), (M2C_ERROR(/* Read from unset register $v0 */) != 0))) {
                _GLSelectInput(0U);
            }
            XFlush(sp28);
        }
    }
}

void gl_g_qenter(void) {
    _GLisInterested();
    _GLupdateQueue(0, 0);
    if (gl_wstatep->active != 0) {
        dummy_ev.unkC = (s32) gl_sstatep->unk1C->unk4;
        dummy_ev.unk10 = (s32) gl_wstatep->active->unk8;
        XSendEvent(gl_sstatep->unk1C->unk4, gl_wstatep->active->unk8, 1, 0x13);
        XFlush((s64) gl_sstatep->unk1C->unk4);
    }
}

void _GLSelectInput(void *arg0) {
    s64 sp30;
    s32 temp_a3;
    s32 temp_s0;
    s32 var_a3;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s3_2;
    s64 var_s4;
    u8 temp_v0_2;
    u8 temp_v0_3;
    void **temp_v0;
    void *temp_v0_4;
    void *var_s3;

    var_s4 = saved_reg_s4;
    var_s2 = __GLisqueued(0x21F);
    _GLinitgl();
    temp_v0 = gl_sstatep->unk1C;
    temp_s0 = temp_v0->unk4;
    if (arg0 != NULL) {
        temp_v0_2 = arg0->unk2C;
        if ((temp_v0_2 != 1) && (temp_v0_2 != 5)) {
            temp_a3 = arg0->unk20 & 4;
            if (temp_a3 != 0) {
                var_s2 = 1;
            }
            XSelectInput(temp_s0, arg0->unk40, _GLframeMask, temp_a3);
            XSelectInput(temp_s0, arg0->unk8, _GLcanvasMask);
        }
    } else {
        var_s3 = temp_v0->unk0->unk14;
        if (var_s3 != NULL) {
loop_20:
            temp_v0_3 = var_s3->unk2C;
            if ((temp_v0_3 != 1) && (temp_v0_3 != 5)) {
                if (var_s3->unk20 & 4) {
                    var_s2 = 1;
                }
                XSelectInput(temp_s0, var_s3->unk40, _GLframeMask, 5);
                XSelectInput(temp_s0, var_s3->unk8, _GLcanvasMask);
            }
            var_s3 = var_s3->unk0;
            if (var_s3 != NULL) {
                goto loop_20;
            }
            var_s4 = sp30;
        }
    }
    var_a3 = var_s2;
    if (var_a3 != 0) {
        var_s3_2 = 0;
        sp30 = var_s4;
        if (gl_nscrns > 0) {
            var_s2_2 = 0;
loop_11:
            temp_v0_4 = (gl_scrntab + var_s2_2)->unk1C;
            var_s3_2 += 1;
            var_s2_2 += 0x28;
            if (temp_v0_4 != NULL) {
                XSelectInput(temp_s0, temp_v0_4->unk70->unk40, 0x80000, var_a3);
            }
            var_a3 = var_s3_2 < gl_nscrns;
            if (var_a3 != 0) {
                goto loop_11;
            }
        }
    }
    _GLSelectExtDevs(arg0);
    XFlush((s64) temp_s0);
}

void _GLxmask(s32 arg0) {
    s64 sp8;
    s64 sp0;
    s32 temp_a4;
    s32 temp_t0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a6;

    var_a6 = _GLframeMask;
    var_a3 = var_a6;
    temp_a4 = _GLcanvasMask;
    if (arg0 != 0) {
        if (_GLsoftAttach != 0) {
            var_a6 |= 0x0100400F;
            _GLframeMask = var_a6;
        }
        var_a2 = arg0 < 0x8F;
        if ((arg0 <= 0) || (var_a2 = arg0 < 0x8F, ((arg0 < 0x54) == 0))) {
            if (var_a2 == 0) {
                if (arg0 < 0xAB) {
                    goto block_7;
                }
                goto block_15;
            }
block_15:
            temp_t0 = saved_reg_gp->unk-50BC->unk14;
            if (temp_t0 != 1) {
                goto block_16;
            }
            if ((saved_reg_gp->unk-50BC->unk4 != arg0) && (saved_reg_gp->unk-50BC->unk6 != arg0)) {
block_16:
                switch (arg0) {                     /* switch 1; irregular */
                default:                            /* switch 1 */
                default:                            /* switch 2 */
                    sp8 = (s64) var_a3;
                    sp0 = (s64) temp_a4;
                    _GLExtConstrainMouse(0x202U, (void *)0x210, var_a3);
                    var_a6 = _GLframeMask;
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        var_a6 |= 0x0100000C;
                        _GLframeMask = var_a6;
                    }
                    break;
                case 0x111:                         /* switch 1 */
                    /* fallthrough */
                case 0x110:                         /* switch 1 */
                    if (temp_t0 != 2) {
                        goto block_27;
                    }
                    switch (arg0) {                 /* switch 2; irregular */
                    case 0x201:                     /* switch 1 */
                    case 0x202:                     /* switch 1 */
                    case 0x201:                     /* switch 2 */
                    case 0x202:                     /* switch 2 */
                        var_a6 |= 0x4003;
                        goto block_8;
                    case 0x21F:                     /* switch 1 */
                    case 0x21F:                     /* switch 2 */
                        var_a3 = ~var_a6;
                        break;
                    case 0x210:                     /* switch 1 */
                    case 0x210:                     /* switch 2 */
                        _GLcanvasMask |= 0x8000;
                        break;
                    case 0x216:                     /* switch 1 */
                    case 0x216:                     /* switch 2 */
                        var_a6 |= 0x200030;
                        goto block_8;
                    }
                    break;
                }
            } else {
block_27:
                var_a6 |= 0x40;
                goto block_8;
            }
        } else {
block_7:
            var_a6 |= 0x4003;
block_8:
            _GLframeMask = var_a6;
        }
        if ((var_a3 == var_a6) && (_GLcanvasMask == temp_a4)) {

        }
    }
}

void _GLcheckRemoveCoreMasks(void) {
    s32 temp_a1;
    s32 temp_a3;
    s32 var_a2;
    void *temp_a1_2;

    temp_a1 = saved_reg_gp->unk-50BC->unk14;
    var_a2 = _GLframeMask;
    temp_a3 = var_a2;
    if (temp_a1 != 1) {
        if (temp_a1 != 2) {
            temp_a1_2 = &sub_0f030000 + 0x5198;
            if (temp_a1_2->unkF8D & 3) {

            } else if (!(temp_a1_2->unkF99 & 3)) {
                goto block_7;
            }
        } else {
block_7:
            var_a2 &= ~0x40;
            _GLframeMask = var_a2;
        }
        if (_GLsoftAttach == 0) {
            _GLframeMask = var_a2 & saved_reg_gp->unk-3D80;
        }
    }
}

void _GLexpressinterest(s32 arg0, s32 arg1) {
    s64 sp40;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_at;
    s32 *var_a0;
    s32 var_a0_2;
    s32 var_a3;
    s32 var_v0;
    s64 temp_v0;
    s64 temp_v1;
    s64 var_ra;
    u8 temp_a2;
    u8 temp_a2_2;
    u8 temp_a2_3;
    u8 temp_a2_4;
    void *temp_a3;
    void *temp_a4;
    void *var_a1;
    void *var_v0_2;
    void *var_v0_3;

    var_ra = saved_reg_ra;
    if (arg0 < 0x258) {
        temp_a4 = &sub_0f030000 + 0x5198;
        temp_a3 = (arg0 * 0xC) + temp_a4;
        temp_a2 = temp_a3->unk2CD;
        sp28 = (s64) temp_a3;
        temp_a3->unk2CA = 0;
        temp_v1 = temp_a2 & 3;
        sp30 = temp_v1;
        temp_a3->unk2CD = (u8) (arg1 | temp_a2);
        if (temp_v1 == 0) {
            sp8 = 0;
            if (arg0 == 0x202) {
                var_v0 = 3;
                if (arg1 == 1) {
                    var_a1 = temp_a4 + 0xC;
                    do {
                        temp_a2_2 = var_a1->unk2CD;
                        var_a1 += 0xC;
                        var_v0 -= 1;
                        var_a1->unk2C1 = (s8) (temp_a2_2 | 1);
                    } while (var_v0 != 0);
                    var_v0_2 = var_a1;
                    do {
                        temp_a2_3 = var_v0_2->unk2F1;
                        var_v0_2 += 0x30;
                        var_v0_2->unk2C1 = (s8) (temp_a2_3 | 1);
                        var_v0_2->unk2B5 = (u8) (var_v0_2->unk2B5 | 1);
                        var_v0_2->unk2A9 = (u8) (var_v0_2->unk2A9 | 1);
                        var_v0_2->unk29D = (u8) (var_v0_2->unk29D | 1);
                    } while (var_v0_2 != (temp_a4 + 0x3F0));
                    var_v0_3 = temp_a4 + 0x6B4;
                    do {
                        temp_a2_4 = var_v0_3->unk2F1;
                        var_v0_3 += 0x30;
                        var_v0_3->unk2C1 = (s8) (temp_a2_4 | 1);
                        var_v0_3->unk2B5 = (u8) (var_v0_3->unk2B5 | 1);
                        var_v0_3->unk2A9 = (u8) (var_v0_3->unk2A9 | 1);
                        var_v0_3->unk29D = (u8) (var_v0_3->unk29D | 1);
                    } while (var_v0_3 != (temp_a4 + 0x804));
                    goto block_12;
                }
            }
            temp_v0 = _GLGetDevType(arg0, NULL, NULL, NULL);
            sp20 = temp_v0;
            sp18 = 0;
            var_ra = sp40;
            if (temp_v0 != 0) {
                temp_at = saved_reg_gp->unk-50BC;
                sp0 = (s64) temp_at->unk14;
                sp10 = (s64) temp_at->unk0;
                _GLExtMarkInterested(temp_v0);
                _GLFindCoreDevice();
                var_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                saved_reg_gp->unk-50BC = (s32 *) M2C_ERROR(/* Read from unset register $v0 */);
                var_ra = sp40;
                if ((*M2C_ERROR(/* Read from unset register $v0 */) != sp10) || (M2C_ERROR(/* Read from unset register $v0 */)->unk14 != sp0)) {
                    if (var_a0->unk14 != 1) {
                        _GLSelectInput((u16) var_a0);
                        sp8 = M2C_ERROR(/* Read from unset register $v0 */);
                        _GLMarkExtDevsForSelection();
                        sp18 = 1;
                        var_ra = sp40;
                    }
                    var_a0 = saved_reg_gp->unk-50BC;
                }
                if (*var_a0 != sp20) {
                    var_a3 = arg0 < 0x203;
                    if (sp18 == 0) {
                        _GLMarkExtDevsForSelection(var_a0);
                        var_ra = sp40;
                        goto block_12;
                    }
                } else {
                    goto block_12;
                }
            } else {
block_12:
                var_a3 = arg0 < 0x203;
            }
            sp40 = var_ra;
            if (var_a3 == 0) {
                sp40 = var_ra;
                if (arg0 < 0x207) {
                    _GLSetTimer(arg0, sp28->unk2CE);
                }
            }
            _GLSelectInput((u16) arg0);
            var_a0_2 = 1;
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                var_a0_2 = 1;
                if (sp8 == 0) {
                    var_a0_2 = 0;
                }
            }
            if (var_a0_2 == 0) {
                _GLExtDevNeedsSelection(var_a0_2);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    goto block_19;
                }
            } else {
block_19:
                _GLSelectInput(0U);
            }
        }
    }
}

void _GLrevokeinterest(s32 arg0, ? arg1) {
    s64 sp10;
    u16 spA;
    u16 sp8;
    u16 sp6;
    u16 sp4;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s5;
    s32 var_v0;
    u16 var_s4;
    u16 var_s4_2;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;
    void *temp_a5;
    void *temp_v1;
    void *var_s1;
    void *var_s1_2;
    void *var_v0_2;
    void *var_v0_3;

    temp_a4 = ~arg1;
    temp_a5 = &sub_0f030000 + 0x5198;
    temp_v1 = (arg0 * 0xC) + temp_a5;
    temp_v1->unk2CD = (u8) (temp_v1->unk2CD & temp_a4);
    if (arg0 != 0x202) {
        var_s1 = temp_a5;
        var_s0 = 0;
        var_s5 = 0;
        _GLcanvasMask = 0;
        _GLframeMask = 0x620030;
loop_5:
        var_s1 += 0xC;
        if (var_s1->unk2CD & 3) {
            _GLSelectInput(var_s5 & 0xFFFF);
            var_s0 |= M2C_ERROR(/* Read from unset register $v0 */);
        }
        var_s5 += 1;
        if (var_s5 != 0x258) {
            goto loop_5;
        }
        if ((arg0 >= 0x203) && (arg0 < 0x207)) {
            _GLSetTimer(arg0, 0);
        } else {
            temp_v0 = _GLGetDevType(arg0, sp, NULL, NULL);
            if ((temp_v0 == 0) || (sp0 != 2)) {

            } else {
                sp10 = 0;
                var_s4 = sp4;
                if (_GLExtGetDevNumbers(temp_v0, &sp4, &sp6, &sp8) != 0) {
                    if ((s32) var_s4 < (s32) sp6) {
loop_26:
                        _GLisInterested((s32) var_s4);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            sp10 = 1;
                        }
                        var_s4 = (var_s4 + 1) & 0xFFFF;
                        if ((s32) var_s4 < (s32) sp6) {
                            if (sp10 != 0) {

                            } else {
                                goto loop_26;
                            }
                        } else {
                            goto block_32;
                        }
                    } else {
block_32:
                        if (sp10 == 0) {
                            var_s4_2 = sp8;
                            if ((s32) var_s4_2 < (s32) spA) {
loop_35:
                                _GLisInterested((s32) var_s4_2);
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    sp10 = 1;
                                }
                                var_s4_2 = (var_s4_2 + 1) & 0xFFFF;
                                if ((s32) var_s4_2 < (s32) spA) {
                                    if (sp10 != 0) {

                                    } else {
                                        goto loop_35;
                                    }
                                } else {
                                    goto block_40;
                                }
                            } else {
                                goto block_41;
                            }
                        }
                    }
                } else {
block_40:
block_41:
                    if (sp10 == 0) {
                        _GLExtCloseDev(temp_v0);
                    }
                }
            }
        }
        if (var_s0 != 0) {
            _GLSelectInput(0U);
        }
        return;
    }
    var_s1_2 = temp_a5 + 0xC;
    var_v0 = 3;
    do {
        temp_a1 = var_s1_2->unk2CD;
        var_s1_2 += 0xC;
        var_v0 -= 1;
        var_s1_2->unk2C1 = (s8) (temp_a1 & temp_a4);
    } while (var_v0 != 0);
    var_v0_2 = var_s1_2;
    do {
        temp_a1_2 = var_v0_2->unk2F1;
        var_v0_2 += 0x30;
        var_v0_2->unk2C1 = (s8) (temp_a1_2 & temp_a4);
        var_v0_2->unk2B5 = (u8) (var_v0_2->unk2B5 & temp_a4);
        var_v0_2->unk2A9 = (u8) (var_v0_2->unk2A9 & temp_a4);
        var_v0_2->unk29D = (u8) (var_v0_2->unk29D & temp_a4);
    } while (var_v0_2 != (temp_a5 + 0x3F0));
    var_v0_3 = temp_a5 + 0x6B4;
    do {
        temp_a1_3 = var_v0_3->unk2F1;
        var_v0_3 += 0x30;
        var_v0_3->unk2C1 = (s8) (temp_a1_3 & temp_a4);
        var_v0_3->unk2B5 = (u8) (var_v0_3->unk2B5 & temp_a4);
        var_v0_3->unk2A9 = (u8) (var_v0_3->unk2A9 & temp_a4);
        var_v0_3->unk29D = (u8) (var_v0_3->unk29D & temp_a4);
    } while (var_v0_3 != (temp_a5 + 0x804));
}

void _GLfunctions(? *arg0) {
    void *temp_a4;

    temp_a4 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4A274)->unk-7FA4 + 0x5198;
    if (temp_a4->unk1C65 & 1) {

    } else if (!(temp_a4->unk1C35 & 1)) {

    }
    if (arg0->unk20 & 0x80) {

    }
}

void _GLquit_close_setup(s32 arg0) {
    s64 sp20;
    s32 sp4;
    s32 sp0;
    ? *var_s2;
    s32 temp_t1;
    s64 var_ra;
    u8 temp_a3;
    void *temp_a2;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_ra = saved_reg_ra;
    temp_a2 = &sub_0f030000 + 0x5198;
    if (!(temp_a2->unk1C35 & 1)) {
        goto block_16;
    }
block_1:
    sp0 = (*gl_sstatep->unk1C)->unk18->unk18;
    sp4 = (*gl_sstatep->unk1C)->unk18->unk1C;
    var_s2 = (*gl_sstatep->unk1C)->unk14;
    if (var_s2 == NULL) {
        goto block_15;
    }
    if (arg0 != 0) {
        goto block_9;
    }
block_3:
block_4:
    if (0 != 0) {
        goto block_6;
    }
    temp_a3 = var_s2->unk2C;
    goto block_11;
block_6:
block_7:
    var_s2 = *var_s2;
    if (var_s2 == NULL) {
        goto block_15;
    }
    if (arg0 == 0) {
        goto block_4;
    }
block_9:
    if (arg0 == var_s2) {
        goto block_3;
    }
    goto block_7;
block_11:
    if (temp_a3 == 2) {
        goto block_13;
    }
    if (temp_a3 != 3) {
        goto block_7;
    }
block_13:
    temp_t1 = var_s2->unk20;
    sp20 = var_ra;
    if (!(temp_t1 & 0x40)) {
        goto block_18;
    }
block_14:
    _GLfunctions(var_s2);
    _GLsetwmfunction(var_s2, M2C_ERROR(/* Read from unset register $v0 */));
    var_ra = sp20;
    goto block_7;
block_15:
    return;
block_16:
    if (!(temp_a2->unk1C65 & 1)) {
        goto block_15;
    }
    goto block_1;
block_18:
    var_s2->unk20 = (s32) (temp_t1 | 0x40);
    XChangeProperty(var_s2->unk4, var_s2->unk40, (*var_s2->unkC)->unk18->unk20, 4);
    goto block_14;
}

void freeze_thaw_check(void) {
    s32 var_a2;
    void *temp_a1;

    var_a2 = 0;
    temp_a1 = &sub_0f030000 + 0x5198;
    if (!(temp_a1->unk1C11 & 1) || !(temp_a1->unk1C1D & 1)) {
        var_a2 = 1;
    }
    if (_GLblockWhenStowed != var_a2) {
        _GLblockWhenStowed = var_a2;
        _GLfreezeWindows(var_a2 == 0, temp_a1, var_a2, &_GLblockWhenStowed);
    }
}

void gl_g_unqdevice(void) {
    _GLSelectInput(1U);
    _GLquit_close_setup();
}

void gl_g_qdevice(s32 arg0) {
    _GLSelectInput(1U);
    _GLquit_close_setup();
    if ((arg0 == 0x21E) || (arg0 == 0x222)) {
        _GLquit_close_setup(0);
    }
}

void add_extdev_to_query(s32 arg0, s32 arg1) {
    s32 temp_a6;
    s32 var_a4;
    void *temp_v1;
    void *var_a3;
    void *var_a7;

    temp_a6 = saved_reg_gp->unk-50A4;
    var_a4 = 0;
    if (temp_a6 > 0) {
        var_a7 = &sub_0f030000 + 0x5198;
        var_a3 = var_a7;
loop_2:
        if (var_a3->unk2850 == arg0) {
            var_a3->unk2870 = (s32) (var_a3->unk2870 | arg1);
        } else {
            var_a3 += 4;
            var_a4 += 1;
            if (var_a3 == ((temp_a6 * 4) + var_a7)) {

            } else {
                goto loop_2;
            }
        }
    } else {
        var_a7 = &sub_0f030000 + 0x5198;
    }
    temp_v1 = (var_a4 * 4) + var_a7;
    if (var_a4 == temp_a6) {
        temp_v1->unk2870 = arg1;
        temp_v1->unk2850 = arg0;
        saved_reg_gp->unk-50A4 = (s32) (temp_a6 + 1);
    }
}

void _GLupdatePointer(void *arg0) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a1;
    s32 var_a5;
    s32 var_a6;
    s64 temp_a4;
    s64 var_ra;
    void *temp_a3;
    void *temp_a7;
    void *temp_at;
    void *temp_gp;
    void *temp_v1;
    void *temp_v1_2;
    void *var_a0;
    void *var_a3;

    var_ra = saved_reg_ra;
    temp_a1 = arg0->unk0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF49EF8;
    temp_a4 = temp_a1 != 8;
    switch (temp_a1) {                              /* irregular */
    case 2:
    case 3:
block_7:
        var_a5 = arg0->unk30;
block_8:
        if (temp_gp->unk-50B4 != 0) {
            var_a0 = &sub_0f030000 + 0x5198;
            var_a1 = temp_gp->unk-50BC->unk14;
        } else {
            sp10 = temp_a4;
            sp8 = (s64) var_a5;
            temp_a2 = arg0->unk28;
            temp_a3 = &sub_0f030000 + 0x5198;
            temp_a3->unkF88 = (s16) temp_a2;
            temp_a7 = temp_gp->unk-50BC;
            var_a0 = &sub_0f030000 + 0x5198;
            var_a0->unkF94 = _GLinvertY(gl_sstatep->unk1C->unk70, arg0->unk2C, temp_a2, temp_a3);
            var_a0->unkF99 = (u8) (var_a0->unkF99 | 8);
            var_a0->unkF8D = (u8) (var_a0->unkF8D | 8);
            var_ra = sp18;
            var_a1 = temp_a7->unk14;
            if (var_a1 == 1) {
                if (temp_a7->unk0 == 4) {
                    ((temp_a7->unk4 * 0xC) + var_a0)->unk2C8 = (s16) var_a0->unkF88;
                    ((temp_a7->unk6 * 0xC) + var_a0)->unk2C8 = (s16) var_a0->unkF94;
                    temp_at = (temp_a7->unk4 * 0xC) + var_a0;
                    temp_at->unk2CD = (u8) (temp_at->unk2CD | 8);
                    temp_v1 = (temp_a7->unk6 * 0xC) + var_a0;
                    temp_v1->unk2CD = (u8) (temp_v1->unk2CD | 8);
                    var_a1 = temp_a7->unk14;
                }
            }
            temp_gp->unk-50B8 = 1;
        }
        if (var_a1 == 1) {
            var_a1 = 0;
            if (temp_gp->unk-50BC->unkC > 0) {
                var_a6 = 0;
                var_a3 = &sub_0f030000 - 0x6910;
                do {
                    ((*(temp_gp->unk-50BC->unk10 + var_a6) * 0xC) + var_a0)->unk2C8 = (s16) ((var_a3->unk8 & var_a5) != 0);
                    temp_v1_2 = (*(temp_gp->unk-50BC->unk10 + var_a6) * 0xC) + var_a0;
                    temp_v1_2->unk2CD = (u8) (temp_v1_2->unk2CD | 8);
                    var_a3 += 4;
                    var_a1 += 1;
                    var_a6 += 2;
                } while (var_a1 < temp_gp->unk-50BC->unkC);
            }
        }
        if (temp_a4 == 0) {
            sp18 = var_ra;
            _GLExtClearGotEventFlags(var_a0, var_a1);
        }
        return;
    case 7:
    case 8:
        var_a5 = arg0->unk40;
        goto block_8;
    case 4:
    case 5:
        goto block_7;
    }
}

void _GLsetLockState(s32 arg0, s8 arg1) {
    ((arg0 * 0xC) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF49C98)->unk-7FA4 + 0x5198))->unk2CC = arg1;
}

s32 _GLgetLockState(u16 arg0) {
    return (s32) ((s64) ((s64) ((arg0 * 0xC) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF49C6C)->unk-7FA4 + 0x5198))->unk2CC << 0x30) >> 0x30);
}

void _GLupdateLockKey(s32 arg0, s32 arg1) {
    s32 *var_a3;
    s32 temp_a3;
    s32 temp_v0;
    s8 var_a0;
    void *temp_a4;

    var_a3 = &_GLnumLockMask;
    if (arg0 == 4) {
        var_a3 = &_GLcapsLockMask;
    }
    temp_a3 = *var_a3;
    if (temp_a3 != 0) {
        temp_v0 = temp_a3 & arg1;
        temp_a4 = (arg0 * 0xC) + (&sub_0f030000 + 0x5198);
        temp_a4->unk2C8 = (s16) (temp_v0 != 0);
        if (temp_v0 != 0) {
            var_a0 = 0xD;
        } else {
            var_a0 = 0;
        }
        temp_a4->unk2CC = var_a0;
        temp_a4->unk2CD = (u8) (temp_a4->unk2CD | 8);
    }
}

void _GLupdateLockKeys(s32 arg0) {
    _GLgetLockState(4U, arg0);
    _GLgetLockState(0xA6U, arg0);
}

void _GLqueryModState(void *arg0) {
    ? sp24;
    ? sp20;
    ? sp1C;
    ? sp18;
    ? sp14;
    ? sp10;
    void **temp_t0;

    temp_t0 = gl_sstatep->unk1C;
    if (XQueryPointer(temp_t0->unk4, temp_t0->unk70->unk40, &sp10, &sp14) != 0) {

    }
}

void _GLqueryPointer(void) {
    s64 sp30;
    ? sp28;
    ? sp24;
    s32 sp20;
    s32 sp1C;
    ? sp18;
    ? sp14;
    s32 sp10;
    s32 var_a3;
    s32 var_a4;
    void *temp_a0;
    void *temp_a1;
    void *temp_s4;
    void *var_a5;

    temp_a1 = gl_sstatep->unk1C->unk70;
    sp10 = -1;
    sp30 = (s64) temp_a1;
    if (XQueryPointer(gl_sstatep->unk1C->unk4, temp_a1->unk40, &sp14, &sp18) != 0) {
        temp_s4 = &sub_0f030000 + 0x5198;
        temp_s4->unkF88 = (s16) sp1C;
        temp_a0 = saved_reg_gp->unk-50BC;
        temp_s4->unkF94 = _GLinvertY((s32) sp30, sp20, sp1C);
        if (temp_a0->unk14 == 1) {
            if (temp_a0->unk0 != 4) {

            } else {
                ((temp_a0->unk4 * 0xC) + temp_s4)->unk2C8 = (s16) temp_s4->unkF88;
                ((temp_a0->unk6 * 0xC) + temp_s4)->unk2C8 = (s16) temp_s4->unkF94;
                var_a3 = 0;
                if (temp_a0->unkC > 0) {
                    var_a4 = 0;
                    var_a5 = &sub_0f030000 - 0x6910;
                    do {
                        ((*(temp_a0->unk10 + var_a4) * 0xC) + temp_s4)->unk2C8 = (s16) ((var_a5->unk8 & sp10) != 0);
                        var_a5 += 4;
                        var_a3 += 1;
                        var_a4 += 2;
                    } while (var_a3 < temp_a0->unkC);
                }
            }
        }
    }
}

s32 gl_g_getdev(s64 arg0, u16 *arg1, s16 *arg2) {
    s64 spB0;
    s64 spA0;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    ? sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s16 *var_s6;
    s16 var_a1;
    s16 var_a1_2;
    s16 var_a1_3;
    s16 var_a1_4;
    s16 var_a1_5;
    s16 var_a1_6;
    s32 temp_s3;
    s32 temp_v0;
    s32 var_at;
    s32 var_s3_2;
    s32 var_s4_2;
    s32 var_v1;
    s32 var_v1_2;
    s64 temp_a2;
    s64 var_s0;
    s64 var_s2;
    s64 var_s3;
    s64 var_s4;
    s64 var_s7;
    u16 *var_s2_2;
    u16 *var_s5;
    u16 temp_s0;
    u16 temp_s0_2;
    u16 temp_s0_3;
    u16 temp_s0_4;
    u8 temp_a4;
    u8 temp_a4_2;
    u8 temp_at;
    void *temp_a1;
    void *temp_a3;
    void *var_s0_2;
    void *var_s1;

    var_s0 = 0;
    var_s7 = 0;
    var_s2 = 0;
    var_s4 = 0;
    var_s6 = arg2;
    var_s5 = arg1;
    var_s3 = arg0;
    _GLinitgl();
    saved_reg_gp->unk-50A4 = 0;
    if (var_s3 > 0) {
        spB0 = var_s3;
        sp38 = 0;
        sp40 = 0;
        var_s2_2 = var_s5;
        sp48 = 0;
        sp30 = (var_s3 * 2) + var_s5;
        var_s1 = &sub_0f030000 + 0x5198;
loop_4:
        temp_s0 = *var_s2_2;
        _GLSelectInput(temp_s0, 2);
        temp_a1 = saved_reg_gp->unk-50BC;
        temp_s3 = M2C_ERROR(/* Read from unset register $v0 */);
        if (temp_a1->unk14 != 1) {
            goto block_6;
        }
        if ((temp_a1->unk4 == temp_s0) || (temp_a1->unk6 == temp_s0)) {
            goto block_17;
        }
block_6:
        if ((temp_s0 != 0x110) && (temp_s0 != 0x111)) {
            if (0 != 0) {
                goto block_9;
            }
            _GLExtConstrainMouse(temp_s0, temp_a1);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                if (((s32) temp_s0 <= 0) || ((s32) temp_s0 >= 0x54)) {
                    if ((s32) temp_s0 >= 0x8F) {
                        if ((s32) temp_s0 < 0xAB) {
                            goto block_23;
                        }
                        goto block_99;
                    }
block_99:
                    if ((s32) temp_s0 >= 0x203) {
                        if ((s32) temp_s0 < 0x207) {
                            sp38 = 1;
                        } else {
                            goto block_104;
                        }
                    } else {
block_104:
                        temp_v0 = _GLGetDevType((s32) temp_s0, &sp4, &sp8, &spC);
                        if ((temp_v0 != 0) && (sp4 == 2)) {
                            if ((temp_s3 != 0) && (_GLpointerWindow != 0)) {
                                if (_GLmenuIsUp == 0) {
                                    if (sp8 == 0) {
                                        goto block_110;
                                    }
                                } else {
                                    goto block_111;
                                }
                            } else {
block_110:
block_111:
                                gl_g_qdevice(temp_v0, spC);
                            }
                        }
                    }
                } else {
block_23:
                    if ((temp_s3 == 0) || (_GLkeyfocusWindow == 0) || (_GLmenuIsUp != 0)) {
                        sp40 = (s64) ((sp40 + 1) << 0x30) >> 0x30;
                        if (_GLcapsLockMask != 0) {
                            if (temp_s0 != 4) {
                                goto block_30;
                            }
                            goto block_32;
                        }
block_30:
                        if ((_GLnumLockMask != 0) && (temp_s0 == 0xA6)) {
block_32:
                            sp48 = (s64) ((sp48 + 1) << 0x30) >> 0x30;
                        }
                    }
                }
            } else {
                goto block_10;
            }
        } else {
block_17:
block_9:
block_10:
            if ((temp_s3 != 0) && (_GLpointerWindow != 0) && (saved_reg_gp->unk-50B8 != 0)) {
                if (_GLmenuIsUp != 0) {
                    goto block_2;
                }
            } else {
block_2:
                var_s4 = (s64) ((var_s4 + 1) << 0x30) >> 0x30;
            }
        }
        var_s2_2 += 2;
        temp_a3 = (temp_s0 * 0xC) + var_s1;
        temp_a3->unk2CD = (u8) (temp_a3->unk2CD | 8);
        if (var_s2_2 != sp30) {
            goto loop_4;
        }
        var_s0 = sp38;
        var_s7 = sp48;
        var_s2 = sp40;
        var_s3 = spB0;
    } else {
        var_s1 = &sub_0f030000 + 0x5198;
    }
    gl_fast_qcheck(var_s0, 0);
    if (var_s4 != 0) {
        _GLqueryModState();
    }
    if (var_s2 != 0) {
        XQueryKeymap(gl_sstatep->unk1C->unk4, &sp10);
        if ((var_s7 != 0) && (subroutine_arg0 == -1)) {
            _GLqueryModState(sp);
        }
    }
    var_s0_2 = var_s1;
    var_s4_2 = 0;
    if (saved_reg_gp->unk-50A4 > 0) {
        do {
            var_s4_2 += 1;
            _GLExtQueryDevice(var_s0_2->unk2850, var_s0_2->unk2870);
            var_s0_2 += 4;
        } while (var_s4_2 < saved_reg_gp->unk-50A4);
    }
    var_s3_2 = var_s3 - 1;
    temp_a2 = var_s3_2 + 1;
    if (var_s3_2 >= 0) {
        if (temp_a2 & 1) {
            temp_s0_2 = *var_s5;
            var_s5 += 2;
            if ((var_s2 != 0) && ((((s32) temp_s0_2 > 0) && ((s32) temp_s0_2 < 0x54)) || (((s32) temp_s0_2 >= 0x8F) && ((s32) temp_s0_2 < 0xAB)))) {
                temp_a4 = (temp_s0_2 + var_s1)->unk210;
                var_a1 = 1;
                if (!(*(((s32) temp_a4 >> 3) + &sp10) & (1 << (temp_a4 & 7)))) {
                    var_a1 = 0;
                }
                ((temp_s0_2 * 0xC) + var_s1)->unk2C8 = var_a1;
            }
            var_s3_2 -= 1;
            if (var_s7 != 0) {
                var_v1 = (s32) temp_s0_2 < 0x258;
                if (subroutine_arg0 != -1) {
                    if (temp_s0_2 != 4) {
                        if (temp_s0_2 == 0xA6) {
                            goto block_114;
                        }
                    } else {
block_114:
                        spA0 = temp_a2;
                        _GLgetLockState(temp_s0_2, subroutine_arg0, temp_a2);
                    }
                    goto block_54;
                }
            } else {
block_54:
                var_v1 = (s32) temp_s0_2 < 0x258;
            }
            var_s6 += 2;
            if (var_v1 != 0) {
                var_a1_2 = ((temp_s0_2 * 0xC) + var_s1)->unk2C8;
            } else {
                var_a1_2 = 0;
            }
            var_s6->unk-2 = var_a1_2;
        }
        if ((temp_a2 >> 1) != 0) {
loop_63:
            temp_s0_3 = *var_s5;
            if ((var_s2 != 0) && ((((s32) temp_s0_3 > 0) && (var_v1_2 = temp_s0_3 * 4, (((s32) temp_s0_3 < 0x54) != 0))) || (((s32) temp_s0_3 >= 0x8F) && (var_v1_2 = temp_s0_3 * 4, (((s32) temp_s0_3 < 0xAB) != 0))))) {
                temp_at = (temp_s0_3 + var_s1)->unk210;
                if (*(((s32) temp_at >> 3) + &sp10) & (1 << (temp_at & 7))) {
                    var_a1_3 = 1;
                } else {
                    var_a1_3 = 0;
                }
                (((var_v1_2 - temp_s0_3) * 4) + var_s1)->unk2C8 = var_a1_3;
            }
            if ((var_s7 != 0) && (subroutine_arg0 != -1) && ((temp_s0_3 == 4) || (temp_s0_3 == 0xA6))) {
                _GLgetLockState(temp_s0_3, subroutine_arg0);
            }
            var_s5 += 4;
            if ((s32) temp_s0_3 < 0x258) {
                var_a1_4 = ((temp_s0_3 * 0xC) + var_s1)->unk2C8;
            } else {
                var_a1_4 = 0;
            }
            *var_s6 = var_a1_4;
            temp_s0_4 = var_s5->unk-2;
            if ((var_s2 != 0) && ((((s32) temp_s0_4 > 0) && (var_at = temp_s0_4 * 4, (((s32) temp_s0_4 < 0x54) != 0))) || (((s32) temp_s0_4 >= 0x8F) && (var_at = temp_s0_4 * 4, (((s32) temp_s0_4 < 0xAB) != 0))))) {
                temp_a4_2 = (temp_s0_4 + var_s1)->unk210;
                if (*(((s32) temp_a4_2 >> 3) + &sp10) & (1 << (temp_a4_2 & 7))) {
                    var_a1_5 = 1;
                } else {
                    var_a1_5 = 0;
                }
                (((var_at - temp_s0_4) * 4) + var_s1)->unk2C8 = var_a1_5;
            }
            var_s6 += 4;
            if ((var_s7 != 0) && (subroutine_arg0 != -1) && ((temp_s0_4 == 4) || (temp_s0_4 == 0xA6))) {
                _GLgetLockState(temp_s0_4, subroutine_arg0);
            }
            var_s3_2 -= 2;
            if ((s32) temp_s0_4 < 0x258) {
                var_a1_6 = ((temp_s0_4 * 0xC) + var_s1)->unk2C8;
            } else {
                var_a1_6 = 0;
            }
            var_s6->unk-2 = var_a1_6;
            if (var_s3_2 != -1) {
                goto loop_63;
            }
        }
    }
    return 0xA6;
}

s32 gl_g_getvaluator(s16 arg0) {
    s16 sp26;

    sp26 = arg0;
    __GLgetdev(1, &sp26, sp);
    return (s32) subroutine_arg0;
}

s32 gl_g_getbutton(u16 arg0) {
    u16 sp26;

    sp26 = arg0;
    getdev(1, &sp26, sp);
    return (s32) subroutine_arg0;
}

void postAndWarp(s32 arg0, s32 arg1, s16 arg2, s16 arg3) {
    s64 sp20;
    s16 sp1A;
    s16 sp18;
    s16 sp10;
    s32 sp4;
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 temp_a1_2;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a6;
    s32 var_t0;
    u16 temp_a0_3;
    u16 var_a3;
    u16 var_a7;
    u16 var_t1;
    u16 var_t3;
    u8 temp_a1;
    u8 temp_a3_2;
    void **temp_t1;
    void *temp_a0;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_t0;

    if (arg2 != 0) {
        temp_a2 = &sub_0f030000 + 0x5198;
        temp_a3 = (arg0 * 0xC) + temp_a2;
        if (temp_a3->unk2C8 != arg2) {
            goto block_26;
        }
        if (arg3 != 0) {
            temp_a0 = (arg1 * 0xC) + temp_a2;
            if (temp_a0->unk2C8 == arg3) {
                temp_a1 = temp_a3->unk2CD;
                temp_t2 = saved_reg_gp->unk-50C4;
                var_a6 = 0;
                var_a7 = 0;
                if (temp_a1 & 8) {
                    temp_a3_2 = temp_a0->unk2CD;
                    temp_a0_2 = saved_reg_gp->unk-50C0;
                    if (temp_a3_2 & 8) {
                        var_a4 = 0;
                        if (temp_a1 & 1) {
                            goto block_9;
                        }
                        var_a4 = 0;
                        if (!(temp_a3_2 & 1)) {
                            return;
                        }
block_9:
                        var_a3 = 0;
                        if (temp_a0_2 != temp_t2) {
                            temp_t0 = saved_reg_gp->unk-50BC;
                            temp_a1_2 = temp_t0->unk14;
                            if (temp_a1_2 != 1) {
                                var_t1 = 0;
                                if (temp_a1_2 != 2) {
                                    var_t3 = 0;
                                    if (temp_a0_2 != 0) {
                                        goto block_13;
                                    }
                                    goto block_48;
                                }
                            }
                            var_t1 = temp_t0->unk6;
                            var_t3 = temp_t0->unk4;
                            if (temp_a0_2 == 0) {
block_48:
                                var_t0 = 0x257;
                            } else {
block_13:
                                var_t0 = temp_a0_2 - 1;
                            }
                            temp_a0_3 = ((var_t0 * 4) + temp_a2)->unk1EE8;
                            var_a1 = var_t0;
                            if ((temp_a0_3 == 0x111) || (var_t1 == temp_a0_3)) {
                                var_a3 = temp_a0_3;
                                sp10 = ((var_a1 * 4) + temp_a2)->unk1EEA;
                                if (var_a1 != temp_t2) {
                                    var_a0 = var_a1 - 1;
                                    if (var_a1 == 0) {
                                        var_a0 = 0x257;
                                    }
                                    var_a1 = var_a0;
                                    if (((var_a0 * 4) + temp_a2)->unk1EE8 == 0) {
                                        goto block_19;
                                    }
                                    goto block_40;
                                }
                                goto block_39;
                            }
                            if ((temp_a0_3 == 0x110) || (var_t3 == temp_a0_3)) {
                                var_a7 = temp_a0_3;
                            }
block_39:
                            if (var_a7 != 0) {
block_40:
                                if (((var_a1 * 4) + temp_a2)->unk1EEA == arg2) {
                                    var_a4 = 1;
                                    if (var_a3 == 0) {
                                        goto block_42;
                                    }
                                    goto block_21;
                                }
                                goto block_20;
                            }
block_19:
                            if (!(temp_a2->unkF8D & 1)) {
                                if ((var_t3 == 0) || !(((var_t3 * 0xC) + temp_a2)->unk2CD & 1)) {
                                    var_a4 = 1;
                                }
                            }
block_20:
                            if (var_a3 != 0) {
block_21:
                                if (sp10 == arg3) {
                                    goto block_22;
                                }
                            } else {
block_42:
                                if (!(temp_a2->unkF99 & 1) && ((var_t1 == 0) || !(((var_t1 * 0xC) + temp_a2)->unk2CD & 1))) {
block_22:
                                    var_a6 = 1;
                                }
                            }
                            if ((var_a4 != 0) && (var_a6 != 0)) {
                                return;
                            }
                            goto block_27;
                        }
                        goto block_26;
                    }
                    goto block_26;
                }
                goto block_26;
            }
            goto block_26;
        }
        goto block_26;
    }
block_26:
block_27:
    temp_t1 = gl_sstatep->unk1C;
    temp_a2_2 = temp_t1->unk4;
    sp20 = (s64) temp_a2_2;
    sp4 = (temp_t1->unk78 - arg3) - 1;
    XWarpPointer(temp_a2_2, 0, (temp_a2_2->unk8C + (temp_t1->unk8 * 0x50))->unk8, 0);
    XSync(sp20, 0);
    saved_reg_gp->unk-50B0 = 0;
    saved_reg_gp->unk-50B4 = 1;
    _GLupdateQueue(0, 0);
    var_a3_2 = 0;
    temp_a0_4 = saved_reg_gp->unk-50BC->unk0;
    if (saved_reg_gp->unk-50B0 != 0) {
        if (temp_a0_4 == 5) {
            goto block_29;
        }
    } else {
        if (temp_a0_4 != 5) {
            var_a3_2 = saved_reg_gp->unk-50AC;
        } else {
block_29:
        }
        sp1A = arg3;
        sp18 = arg2;
        _GLpostMotionEvent(2, 0, &sp18, (s64) var_a3_2);
    }
    saved_reg_gp->unk-50B4 = 0;
}

void check_screen_bounds(s16 *arg0, s16 *arg1, s32 arg2) {
    if (*arg0 < 0) {
        *arg0 = 0;
    }
    if (*arg1 >= arg2) {
        *arg1 = arg2 - 1;
    }
}

void gl_g_setvaluator(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s16 sp6E;
    s16 sp66;
    s16 sp5E;
    s16 sp56;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp8;
    s32 sp4;
    s16 temp_a6;
    s16 var_a2;
    s16 var_a3;
    s16 var_v0;
    s16 var_v0_2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_v1;
    s64 temp_a7;
    s64 temp_v0;
    s64 var_t0;
    void **temp_a2;
    void **temp_a2_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_v1;

    temp_a6 = arg0 & 0xFFFF;
    sp56 = temp_a6;
    temp_v0 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a7 = (s64) (arg2 << 0x30) >> 0x30;
    var_t0 = (s64) (arg3 << 0x30) >> 0x30;
    sp6E = (s16) var_t0;
    sp66 = (s16) temp_a7;
    sp5E = (s16) temp_v0;
    if (temp_a6 != 0) {
        temp_a0 = saved_reg_gp->unk-50BC;
        if (temp_a6 < 0x258) {
            if (var_t0 < temp_a7) {
                var_t0 = (s64) ((temp_a7 + 1) << 0x30) >> 0x30;
                sp6E = (s16) var_t0;
            }
            var_v1 = var_t0 < temp_v0;
            if (temp_v0 < temp_a7) {
                sp5E = (s16) temp_a7;
                var_v1 = var_t0 < temp_a7;
            }
            if (var_v1 != 0) {
                sp5E = (s16) var_t0;
            }
            temp_v0_2 = temp_a0->unk14;
            if ((temp_v0_2 != 1) && (temp_v0_2 != 2)) {
                sp38 = 0;
                sp30 = 0;
            } else {
                sp38 = (s64) temp_a0->unk6;
                sp30 = (s64) temp_a0->unk4;
            }
            _GLupdateQueue(0, 0);
            if (sp30 != (u16) sp56) {
                if ((u16) sp56 != 0x110) {
                    if ((sp38 != (u16) sp56) && ((u16) sp56 != 0x111)) {
                        sp20 = (s64) gl_sstatep->unk1C->unk4;
                        temp_v0_3 = _GLGetDevType((s32) (u16) sp56, sp, &sp4, &sp8);
                        if ((temp_v0_3 == 0) || (sp28 = (s64) temp_v0_3, (sp0 != 2))) {

                        } else {
                            _GLinitgl();
                            _GLSelectInput((u16) sp56, 2);
                            temp_v1 = ((u16) sp56 * 0xC) + (&sub_0f030000 + 0x5198);
                            temp_v1->unk2CD = (u8) (temp_v1->unk2CD | 8);
                            if ((M2C_ERROR(/* Read from unset register $v0 */) == 0) || (_GLpointerWindow == 0) || (sp4 == 0)) {
                                _GLExtQueryDevice((s32) sp28, sp8);
                            }
                        }
                        _GLExtSetSoftval((u16) sp56, sp20, sp5E, sp66);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            sp5E = _GLExtGetSoftval((u16) sp56, sp20);
                        }
                        _GLisInterested(1, (s16) &sp56, &sp5E);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            if (!((((u16) sp56 * 0xC) + (&sub_0f030000 + 0x5198))->unk2CD & 1)) {
                                goto block_59;
                            }
                        } else {
block_59:
                            _GLpostEvent((s32) (u16) sp56, sp5E, 1);
                        }
                    } else {
                        temp_a2 = gl_sstatep->unk1C;
                        sp10 = (s64) temp_a2;
                        if (gl_g_getbutton((u16) &sp66, &sp6E, temp_a2->unk7A) != 0) {
                            var_v0 = sp5E;
                            if (var_v0 < sp66) {
                                var_v0 = sp66;
                                sp5E = sp66;
                            }
                            if (sp6E < var_v0) {
                                sp5E = sp6E;
                            }
                        }
                        if (_GLsetvalDoesConstrain != 0) {
                            _GLExtConstrainMouse((u16) sp10, (void *)0x101, (s32) sp66, sp6E);
                        }
                        temp_a0_2 = (sp38 * 0xC) + (&sub_0f030000 + 0x5198);
                        if (temp_a0_2->unk2C8 == sp5E) {
                            if (!(temp_a0_2->unk2CD & 8)) {
                                goto block_53;
                            }
                        } else {
block_53:
                            var_a2 = ((sp30 * 0xC) + (&sub_0f030000 + 0x5198))->unk2C8;
                            if (var_a2 == -1) {
                                if (gl_wstatep != NULL) {
                                    var_a1 = gl_wstatep->active->unk30;
                                } else {
                                    var_a1 = 0;
                                }
                                var_a2 = (s16) ((s64) ((s64) var_a1 << 0x30) >> 0x30);
                            }
                            gl_g_getbutton(((u16) sp56 - 1) & 0xFFFF, (s16 *) (u16) sp56, var_a2, sp5E);
                        }
                    }
                } else {
                    goto block_26;
                }
            } else {
block_26:
                temp_a2_2 = gl_sstatep->unk1C;
                sp18 = (s64) temp_a2_2;
                if (gl_g_getbutton((u16) &sp66, &sp6E, temp_a2_2->unk76) != 0) {
                    var_v0_2 = sp5E;
                    if (var_v0_2 < sp66) {
                        var_v0_2 = sp66;
                        sp5E = sp66;
                    }
                    if (sp6E < var_v0_2) {
                        sp5E = sp6E;
                    }
                }
                if (_GLsetvalDoesConstrain != 0) {
                    _GLExtConstrainMouse((u16) sp18, (void *)0x100, (s32) sp66, sp6E);
                }
                temp_a0_3 = (sp30 * 0xC) + (&sub_0f030000 + 0x5198);
                if (temp_a0_3->unk2C8 == sp5E) {
                    if (!(temp_a0_3->unk2CD & 8)) {
                        goto block_37;
                    }
                } else {
block_37:
                    var_a3 = ((sp38 * 0xC) + (&sub_0f030000 + 0x5198))->unk2C8;
                    if (var_a3 == -1) {
                        if (gl_wstatep != NULL) {
                            var_a1_2 = gl_wstatep->active->unk34;
                        } else {
                            var_a1_2 = 0;
                        }
                        var_a3 = (s16) ((s64) ((s64) var_a1_2 << 0x30) >> 0x30);
                    }
                    gl_g_getbutton((u16) sp56, (s16 *) (((u16) sp56 + 1) & 0xFFFF), sp5E, var_a3);
                }
            }
        }
    }
}

void gl_g_qtest(void) {
    s64 sp8;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (_GLdirtycmaps != 0) {
        _GLflushcmaps();
        var_ra = sp8;
    }
    if (saved_reg_gp->unk-50C0 != saved_reg_gp->unk-50C4) {
        return;
    }
    sp8 = var_ra;
    _GLinitgl();
    gl_fast_qcheck(1, 1);
    if (saved_reg_gp->unk-50C0 != saved_reg_gp->unk-50C4) {

    }
}

void gl_g_qread(s16 *arg0) {
    if (saved_reg_gp->unk-50C0 == saved_reg_gp->unk-50C4) {
        do {
            saved_reg_gp->unk-50A8 = 0;
            _GLupdateQueue(1, 1);
        } while (saved_reg_gp->unk-50C0 == saved_reg_gp->unk-50C4);
    }
    M2C_TRAP_IF(0x258 == 0);
    *arg0 = ((saved_reg_gp->unk-50C4 * 4) + (&sub_0f030000 + 0x5198))->unk1EEA;
    saved_reg_gp->unk-50C4 = (s32) ((s32) (saved_reg_gp->unk-50C4 + 1) % 600);
}

void gl_g_blkqread(void *arg0, s32 arg1) {
    s16 temp_v0;
    s32 temp_s4;
    s32 var_s0;
    s32 var_s5;
    void *var_s1;

    var_s0 = 0;
    var_s1 = arg0;
    temp_s4 = arg1 >> 1;
    if (temp_s4 > 0) {
        var_s5 = var_s1 + 2;
loop_2:
        temp_v0 = __GLqread(var_s5);
        var_s1 += 4;
        var_s5 += 4;
        var_s1->unk-4 = temp_v0;
        if (qtest() == 0) {

        } else {
            var_s0 += 1;
            if (temp_s4 == var_s0) {

            } else {
                goto loop_2;
            }
        }
    }
}

void gl_g_tie(s32 arg0, u16 arg1, u16 arg2) {
    void *temp_a4;

    temp_a4 = (arg0 * 0xC) + (&sub_0f030000 + 0x5198);
    temp_a4->unk2D2 = arg2;
    temp_a4->unk2D0 = arg1;
    if ((arg1 != 0) || (arg2 != 0)) {
        temp_a4->unk2CD = (u8) (temp_a4->unk2CD | 4);
        _GLSelectInput(arg1, 2);
        if (arg2 != 0) {
            _GLSelectInput(arg2, 2);
        }
    } else {
        temp_a4->unk2CD = (u8) (temp_a4->unk2CD & ~4);
    }
}

s32 gl_g_qgetfd(void) {
    _GLinitgl();
    _GLqgetfd_was_called = 1;
    return gl_sstatep->unk1C->unk4->unk8;
}

void _GLwinquit(s64 arg0) {
    if (sub_0f030000.unk6DCD & 1) {
        _GLpostEvent(0x21E, (s16) ((s64) (arg0 << 0x30) >> 0x30), 0);
    } else {
        exit(0);
    }
}

void _GLwinshut(s64 arg0) {
    _GLmex_countwins();
    if (M2C_ERROR(/* Read from unset register $v0 */) != 1) {
        _GLpostEvent(0x222, (s16) ((s64) (arg0 << 0x30) >> 0x30), 0);
    } else {
        _GLwinquit(arg0);
    }
}

void gl_g_isqueued(s32 arg0) {
    if (arg0 < 0x258) {
        if (arg0 != 0x21A) {

        }
    }
}

void gl_g_qcontrol(s64 arg0, s64 arg1, void *arg2, s32 arg3) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    ? sp44;
    s32 sp40;
    s32 sp3C;
    ? sp38;
    ? var_a4;
    s16 temp_a1;
    s16 temp_a1_2;
    s16 var_a5;
    s16 var_a7;
    s16 var_a7_2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_v1;
    u32 temp_a3;

    sp70 = arg0;
    sp68 = arg1;
    if ((arg1 == 0) || (arg2 != NULL)) {
        if (arg3 != 0) {
            sp60 = M2C_ERROR(/* Read from unset register $a4 */);
            if (M2C_ERROR(/* Read from unset register $a4 */) != 0) {
                goto block_5;
            }
        } else {
block_5:
            sp60 = M2C_ERROR(/* Read from unset register $a4 */);
            _GLinitgl();
            temp_a3 = sp70 - 0x15;
            var_a0 = gl_sstatep->unk1C->unk4;
            if (temp_a3 < 0x1DU) {
                switch (sp70) {
                case 42:
                    if (sp68 >= 2) {
                        temp_a1 = arg2->unk0;
                        if (temp_a1 == 0) {
                            if (arg2->unk2 == 0) {
                                sp58 = (s64) var_a0;
                                var_a4 = -1;
                                var_a7 = -1;
                                var_a5 = -1;
                                sp50 = -1;
                                sp48 = -1;
                                sp4C = -1;
                            } else {
                                goto block_13;
                            }
                        } else {
block_13:
                            sp58 = (s64) var_a0;
                            sp50 = (s32) temp_a1;
                            var_a5 = temp_a1;
                            var_a7 = arg2->unk2;
                            var_a4 = 0x10;
                            sp4C = 0x10;
                            sp48 = (s32) var_a7;
                        }
                        _GLExtChangeDialFeedback(sp58, var_a7, var_a4, var_a5);
block_15:
                        var_a0 = (s32) sp58;
                        /* Duplicate return node #16. Try simplifying control flow for better match */
                        XFlush((s64) var_a0);
                        return;
                    }
                    return;
                case 21:
                case 48:
                    sp58 = (s64) var_a0;
                    if (arg3 < 2) {
                        return;
                    }
                    XGetKeyboardControl(sp58, sp, sp70, (temp_a3 * 4) + &jtbl_0f023de0);
                    var_a0 = (s32) sp58;
                    if (sp14 == 0) {
                        sp60->unk2 = 0;
                        sp60->unk0 = 0;
                    } else {
                        var_a0 = (s32) sp58;
                        if (XSGIMiscQueryExtension(sp58, &sp38, &sp38) != 0) {
                            sp40 = 0;
                            sp3C = 0;
                            XSGIMiscGetAutoRepeatRate(sp58, &sp3C, &sp40);
                            sp60->unk0 = (s16) sp3C;
                            var_a0 = (s32) sp58;
                            sp60->unk2 = (s16) sp40;
                        } else {
                            sp60->unk2 = 0;
                            sp60->unk0 = 0;
                        }
                    }
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    XFlush((s64) var_a0);
                    return;
                case 22:
                case 47:
                    if (sp68 >= 2) {
                        if (arg2->unk0 == 0) {
                            sp58 = (s64) var_a0;
                            if (arg2->unk2 != 0) {
                                goto block_23;
                            }
                            XAutoRepeatOff(sp58);
                            goto block_15;
                        }
block_23:
                        sp58 = (s64) var_a0;
                        XAutoRepeatOn(var_a0);
                        if (XSGIMiscQueryExtension((s64) var_a0, &sp44, &sp44) != 0) {
                            XSGIMiscSetAutoRepeatRate(sp58, arg2->unk0, arg2->unk2);
                            goto block_15;
                        }
                        return;
                    }
                    return;
                case 31:
                case 49:
                    var_v1 = arg3 < 2;
                    if (sp70 != 0x1F) {
                        goto block_26;
                    }
                    var_v1 = arg3 < 2;
                    if (arg3 == 0) {
                        var_v1 = arg3 < 2;
                        if (sp68 >= 2) {
                            var_v1 = arg3 < 2;
                            if (arg2 != NULL) {
                                sp58 = (s64) var_a0;
                                qcontrol(0x20, sp68 * 2, arg2, arg3 * 2);
                                goto block_40;
                            }
                        }
                    }
block_26:
                    sp58 = (s64) var_a0;
                    if (var_v1 != 0) {
                        return;
                    }
block_40:
                    XGetPointerControl(sp58, &sp48, &sp4C, &sp50);
                    var_a0 = (s32) sp58;
                    sp60->unk0 = (s16) sp50;
                    if (sp4C != 0) {
                        M2C_TRAP_IF(sp4C == 0);
                        var_a1 = (s32) (sp48 * 0x10) / sp4C;
                    } else {
                        var_a1 = 0;
                    }
                    sp60->unk2 = (s16) var_a1;
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    XFlush((s64) var_a0);
                    return;
                case 32:
                    if (sp68 >= 2) {
                        temp_a1_2 = arg2->unk0;
                        if (temp_a1_2 == 0) {
                            if (arg2->unk2 == 0) {
                                sp58 = (s64) var_a0;
                                var_a7_2 = -1;
                                sp50 = -1;
                                sp48 = -1;
                                sp4C = -1;
                            } else {
                                goto block_32;
                            }
                        } else {
block_32:
                            sp58 = (s64) var_a0;
                            sp50 = (s32) temp_a1_2;
                            var_a7_2 = arg2->unk2;
                            sp4C = 0x10;
                            sp48 = (s32) var_a7_2;
                        }
                        XChangePointerControl(sp58, 1, 1, var_a7_2);
                        goto block_15;
                    }
                    return;
                case 41:
                    sp58 = (s64) var_a0;
                    if (arg3 < 2) {
                        return;
                    }
                    _GLExtGetDialFeedback(sp58, &sp48, &sp4C, &sp50);
                    sp60->unk0 = (s16) sp50;
                    var_a0 = (s32) sp58;
                    if (sp4C != 0) {
                        M2C_TRAP_IF(sp4C == 0);
                        var_a1_2 = (s32) (sp48 * 0x10) / sp4C;
                    } else {
                        var_a1_2 = 0;
                    }
                    sp60->unk2 = (s16) var_a1_2;
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    XFlush((s64) var_a0);
                    return;
                }
            } else {
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 43:
            case 44:
            case 45:
            case 46:
                XFlush((s64) var_a0);
            }
        }
    }
}

void _GLqread_hack(void) {
    if (saved_reg_gp->unk-50C4 == saved_reg_gp->unk-50C0) {
        _GLisInterested(0, 0);
    }
}

void gl_g_qreset(void) {
    u8 temp_a0;
    void *temp_a2;
    void *var_a1;

    _GLupdateQueue(0, 0);
    saved_reg_gp->unk-50C4 = 0;
    saved_reg_gp->unk-50C0 = 0;
    var_a1 = &sub_0f030000 + 0x5198;
    temp_a2 = var_a1 + 0x1C20;
    do {
        temp_a0 = var_a1->unk2F1;
        var_a1 += 0x30;
        var_a1->unk2C1 = (s8) (temp_a0 & ~8);
        var_a1->unk2B5 = (u8) (var_a1->unk2B5 & ~8);
        var_a1->unk2A9 = (u8) (var_a1->unk2A9 & ~8);
        var_a1->unk29D = (u8) (var_a1->unk29D & ~8);
    } while (var_a1 != temp_a2);
}

void gl_g_noise(s32 arg0, s16 arg1) {
    s32 var_a2;
    s32 var_at;
    void *temp_a3;
    void *temp_a4;

    temp_a3 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4805C)->unk-50BC;
    temp_a4 = &sub_0f030000 + 0x5198;
    ((arg0 * 0xC) + temp_a4)->unk2CE = arg1;
    var_a2 = 4;
    if (temp_a3->unk14 != 1) {
        goto block_1;
    }
    if (temp_a3->unk0 == 4) {
        if (arg0 == 0x110) {
            var_a2 = (s32) temp_a3->unk4;
            ((var_a2 * 0xC) + temp_a4)->unk2CE = (s16) temp_a4->unkF8E;
        }
        var_at = arg0 < 0x203;
        if (arg0 == 0x111) {
            var_a2 = (s32) ((temp_a3->unk6 * 0xC) + temp_a4);
            var_a2->unk2CE = (s16) temp_a4->unkF9A;
            goto block_1;
        }
    } else {
block_1:
        var_at = arg0 < 0x203;
    }
    if ((var_at == 0) && (arg0 < 0x207)) {
        _GLSetTimer(var_a2, (s16) temp_a3);
    }
}

void gl_findEndOfQueue(void) {

}

void gl_rightmouseinqueue(s32 arg0) {
    s32 temp_a5;
    s32 var_a0;
    s32 var_v0;
    void *temp_a4;
    void *temp_at;

    var_a0 = arg0;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF47F74;
    temp_a5 = temp_at->unk-50C0;
    if (var_a0 != temp_a5) {
loop_4:
        temp_a4 = (var_a0 * 4) + (temp_at->unk-7FA4 + 0x5198);
        var_v0 = var_a0 + 1;
        if (temp_a4->unk1EE8 == 0x65) {
            var_v0 = var_a0 + 1;
            if (temp_a4->unk1EEA == 0) {
                return;
            }
        }
        var_a0 = var_v0 % 600;
        M2C_TRAP_IF(0x258 == 0);
        if (var_a0 != temp_a5) {
            goto loop_4;
        }
    }
}

void _GLKeycodeToDevice(s32 arg0) {

}

void _GLSetButtonState(void *arg0) {
    s32 temp_t2;
    s32 var_a4;
    s32 var_a5;
    s64 var_t3;
    u16 temp_a4;
    void *temp_a1;
    void *temp_at;
    void *temp_t1;
    void *var_a3;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF47EE4;
    var_t3 = 0xA6;
    temp_t1 = (*temp_at->unk-7E70)->unk1C->unk4;
    if (*temp_at->unk-7EC0 == 0) {
        var_t3 = 0;
    }
    var_a4 = 4;
    if (*temp_at->unk-7EBC == 0) {
        var_a4 = 0;
    }
    var_a5 = temp_t1->unk98;
    if (temp_t1->unk9C >= var_a5) {
        temp_t2 = temp_at->unk-7FA4 + 0x5198;
        var_a3 = (var_a5 * 2) + temp_t2;
loop_5:
        temp_a4 = var_a3->unk10;
        var_a3 += 2;
        if ((temp_a4 != 0) && (var_a4 != temp_a4) && (((s64) (var_t3 << 0x30) >> 0x30) != temp_a4)) {
            temp_a1 = (temp_a4 * 0xC) + temp_t2;
            temp_a1->unk2CD = (u8) (temp_a1->unk2CD | 8);
            temp_a1->unk2C8 = (s16) ((((var_a5 >> 3) + arg0)->unk14 & (1 << (var_a5 & 7))) != 0);
        }
        var_a5 += 1;
        if (temp_t1->unk9C >= var_a5) {
            goto loop_5;
        }
    }
}

void _GLBuildKeycodeToDeviceTable(void) {
    s32 temp_v0;
    s32 var_s0;
    u16 *var_a0;
    u16 var_a0_2;
    u16 var_a0_3;
    u32 temp_v0_2;
    u32 temp_v0_3;
    void *temp_a3;
    void *temp_s3;
    void *temp_s4;
    void *var_s2;

    temp_s3 = &sub_0f030000 + 0x5198;
    temp_s4 = gl_sstatep->unk1C->unk4;
    bzero(temp_s3 + 0x10, 0x200U);
    bzero(temp_s3 + 0x210, 0xAAU);
    var_s0 = temp_s4->unk98;
    temp_v0 = temp_s4->unk9C;
    if (temp_v0 >= var_s0) {
        var_s2 = (var_s0 * 2) + temp_s3;
loop_6:
        temp_v0_2 = XKeycodeToKeysym(temp_s4, (s8) var_s0, 0);
        if (temp_v0_2 < 0x100U) {
            var_a0 = (temp_v0_2 * 2) + &keysymToDevice1;
            goto block_8;
        }
        if ((temp_v0_2 >= 0xFF00U) && (temp_v0_2 < 0x10000U)) {
            var_a0 = ((temp_v0_2 & 0xFF) * 2) + &keysymToDevice2;
block_8:
            var_a0_2 = *var_a0;
        } else {
            var_a0_2 = 0;
        }
        temp_a3 = var_a0_2 + temp_s3;
        if (var_a0_2 != 0) {
            var_s2->unk10 = var_a0_2;
            temp_a3->unk210 = (s8) var_s0;
        }
        temp_v0_3 = XKeycodeToKeysym(temp_s4, (s8) var_s0, 1, temp_a3);
        if (temp_v0_3 < 0x100U) {
            var_a0_3 = *((temp_v0_3 * 2) + &keysymToDevice1);
        } else if ((temp_v0_3 >= 0xFF00U) && (temp_v0_3 < 0x10000U)) {
            var_a0_3 = *(((temp_v0_3 & 0xFF) * 2) + &keysymToDevice2);
        } else {
            var_a0_3 = 0;
        }
        if (var_a0_3 != 0) {
            var_s2->unk10 = var_a0_3;
            (var_a0_3 + temp_s3)->unk210 = (s8) var_s0;
        }
        var_s0 += 1;
        var_s2 += 2;
        if ((temp_v0 + 1) != var_s0) {
            goto loop_6;
        }
    }
}

void _GLfindModiferMasks(void) {
    s32 temp_a6;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a4;
    s32 var_t1;
    u8 *var_v0;
    u8 temp_a3;
    void *temp_s3;

    temp_s4 = gl_sstatep->unk1C->unk4;
    _GLnumLockMask = 0;
    _GLcapsLockMask = 0;
    temp_s3 = XGetModifierMapping(temp_s4);
    temp_s5 = XKeysymToKeycode(temp_s4, 0xFF7F) & 0xFF;
    temp_v0 = XKeysymToKeycode(temp_s4, 0xFFE5);
    temp_a6 = temp_s3->unk0;
    var_a0 = 0;
    if ((temp_a6 > 0) && ((var_a4 = _GLnumLockMask, var_t1 = _GLcapsLockMask, (var_a4 == 0)) || (var_t1 == 0))) {
loop_4:
        var_v0 = var_a0 + temp_s3->unk4;
loop_9:
        temp_a3 = *var_v0;
        var_v0 += 1;
        if (temp_s5 == temp_a3) {
            M2C_TRAP_IF(temp_a6 == 0);
            var_a4 = 1 << (var_a0 / temp_a6);
            _GLnumLockMask = var_a4;
        } else if ((temp_v0 & 0xFF) == temp_a3) {
            M2C_TRAP_IF(temp_a6 == 0);
            var_t1 = 1 << (var_a0 / temp_a6);
            _GLcapsLockMask = var_t1;
        }
        var_a0 += 1;
        if (var_a0 < (temp_a6 * 8)) {
            if (var_a4 == 0) {
                goto loop_9;
            }
            if (var_t1 == 0) {
                goto loop_4;
            }
        }
    }
    XFreeModifiermap(temp_s3);
}

void _GLInitInput(void) {
    void *temp_a0;
    void *temp_a2;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF47B14;
    _GLSetButtonState();
    XRebindKeysym(gl_sstatep->unk1C->unk4, 0x20, temp_gp - 0x3968, 2);
    _GLInitExtInput();
    temp_a2 = &sub_0f030000 + 0x5198;
    temp_a0 = (M2C_ERROR(/* Read from unset register $v0 */)->unk6 * 0xC) + temp_a2;
    temp_a0->unk2C8 = -1;
    temp_gp->unk-50BC = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    ((M2C_ERROR(/* Read from unset register $v0 */)->unk4 * 0xC) + temp_a2)->unk2C8 = -1;
    temp_a2->unkF88 = -1;
    temp_a2->unkF94 = -1;
    temp_a2->unk1B16 = 0x2710;
    temp_a2->unk1B0A = 0x2710;
    temp_a2->unk1AFE = 0x2710;
    temp_a2->unk1AF2 = 0x2710;
    _GLSetButtonState(temp_a0, -1, temp_a2, 0x2710);
}

void _GLRefreshKeyboardMapping(void) {
    XRefreshKeyboardMapping();
    _GLSetButtonState();
    _GLSetButtonState();
}
