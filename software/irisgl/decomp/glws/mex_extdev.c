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

? XChangeFeedbackControl(s16 (*)[], s32, ?, void *, s32, s32); /* extern */
s32 XChangePointerDevice(s64, s32, s64, s64);       /* extern */
? XCloseDevice(s32, s32);                           /* extern */
? XFlush(s64, ?, void *, void *);                   /* extern */
? XFreeDeviceState(void *);                         /* extern */
void *XGetFeedbackControl(s32, s32, void *);        /* extern */
s32 XInternAtom(s32, s32, ?);                       /* extern */
void *XListInputDevices(void *);                    /* extern */
void *XOpenDevice(?, s32);                          /* extern */
void *XQueryDeviceState(s32, s32);                  /* extern */
? XSGIDeviceControl(s64, s32, void *, ? *);         /* extern */
s32 XSGIDeviceQuery(s32, s32, void *, void *);      /* extern */
? XSGIMiscConstrainValuator(s16 (*)[], s32, s32, s64); /* extern */
? XSelectExtensionEvent(s32, s32, void *, s32);     /* extern */
? bcopy(void *, void *, ?);                         /* extern */
? sleep(u8);                                        /* extern */
? sprintf(? *, void *, s64, s64);                   /* extern */
s32 strcmp(void *, void *);                         /* extern */
s32 toupper(s32);                                   /* extern */
extern ? *_GLtabletScale;
extern s32 __libc_attr;
extern ? sub_0f020000;
extern ? sub_0f030000;

void initGLDevDesc(void) {
    bcopy(&sub_0f030000 - 0x69E0, &sub_0f030000 + 0x4F28, 0xB0);
    saved_reg_gp->unk-50E4 = (s32) saved_reg_gp->unk-3974;
}

void lookupListedDev(s32 arg0) {
    s32 temp_a4;
    s32 var_a3;
    void *var_v0;

    temp_a4 = saved_reg_gp->unk-50E0;
    var_a3 = 0;
    var_v0 = &sub_0f030000 + 0x5060;
    if (temp_a4 > 0) {
loop_1:
        var_a3 += 1;
        if (var_v0->unk18 != arg0) {
            var_v0 += 0x20;
            if (var_a3 == temp_a4) {

            } else {
                goto loop_1;
            }
        }
    }
}

void findDevIndex(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp48;
    s64 sp30;
    s64 sp10;
    s32 (*temp_s4)(void *, s16);
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_s6;
    s32 var_a0;
    s32 var_s2;
    s32 var_v0;
    s64 var_ra;
    u16 temp_v0;
    void *var_s0;

    var_ra = saved_reg_ra;
    sp30 = arg2;
    var_s0 = &sub_0f030000 + 0x4F28;
    if (saved_reg_gp->unk-50E4 == 0) {
        sp48 = arg1;
        _GLdevname();
        var_ra = sp10;
    }
    sp10 = var_ra;
    var_s2 = 0;
    if (saved_reg_gp->unk-50E4 > 0) {
        sp10 = var_ra;
loop_7:
        if (arg1 & 1) {
            temp_s4 = var_s0->unk1C;
            temp_s6 = temp_s4(var_s0, 1) & 0xFFFF;
            temp_a1 = temp_s4(var_s0, var_s0->unk18) & 0xFFFF;
            temp_a0 = temp_a1 < temp_s6;
            var_v0 = temp_a1;
            if (temp_a0 != 0) {
                var_a0 = temp_s6;
                if (temp_a0 == 0) {
                    goto block_16;
                }
            } else {
                var_v0 = temp_s6;
                var_a0 = temp_s6;
                if (temp_a0 == 0) {
block_16:
                    var_a0 = temp_a1;
                }
            }
            if ((arg0 >= var_v0) && (var_a0 >= arg0)) {
                if (sp30 != 0) {
                    *sp30 = 1;
                }
                return;
            }
            goto block_3;
        }
block_3:
        if (!(arg1 & 2) || (temp_v0 = var_s0->unk14, ((arg0 < (s32) temp_v0) != 0)) || (arg0 >= (var_s0->unk12 + temp_v0))) {
            var_s2 += 1;
            var_s0 += 0x2C;
            if (var_s2 < saved_reg_gp->unk-50E4) {
                goto loop_7;
            }
        } else if (sp30 != 0) {
            *sp30 = 2;
        }
    }
}

void findListedDevFromType(s32 arg1) {
    s32 temp_a3;
    s32 var_a1;
    void *var_a0;

    if (arg1 != 0) {
        temp_a3 = saved_reg_gp->unk-50E0;
        if (temp_a3 == 0) {
            _GLInitExtInput(temp_a3);
        }
        var_a1 = 0;
        var_a0 = &sub_0f030000 + 0xDE8 + 0x4278;
        if (saved_reg_gp->unk-50E0 > 0) {
loop_3:
            var_a0 += 0x20;
            if (var_a0->unk1C->unk8 != arg1) {
                var_a1 += 1;
                if (var_a1 == saved_reg_gp->unk-50E0) {

                } else {
                    goto loop_3;
                }
            }
        }
    }
}

void findListedDev(s16 (*arg1)[], s64 arg2) {
    s64 sp10;

    if (saved_reg_gp->unk-50E0 == 0) {
        sp10 = arg2;
        _GLInitExtInput();
    }
    _GLdevname(arg1, arg2, 0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {

    }
}

s32 _GLGetDevType(s32 *arg1, s32 *arg2, s64 arg3) {
    void *temp_a1;
    void *temp_a2;

    _GLdevname((s16 (*)[])7, arg3);
    if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
        temp_a2 = &sub_0f030000 + 0xDE8;
        temp_a1 = (((((M2C_ERROR(/* Read from unset register $v0 */) * 4) - M2C_ERROR(/* Read from unset register $v0 */)) * 4) - M2C_ERROR(/* Read from unset register $v0 */)) * 4) + temp_a2;
        if (arg1 != NULL) {
            *arg1 = (s32) temp_a1->unk415A;
        }
        if (arg2 != NULL) {
            *arg2 = (s32) ((M2C_ERROR(/* Read from unset register $v0 */) << 5) + temp_a2)->unk4282;
        }
        return temp_a1->unk4148;
    }
    return 0;
}

void _GLExtDevExists(s64 arg0) {
    _GLinitgl();
    _GLdevname(gl_sstatep->unk1C->unk4, arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {

    }
}

void _GLExtDialsExist(void) {
    _GLExtDevExists(1);
}

void initCoreButtons(void *arg0) {
    s16 (*temp_s4)(void *, s32);
    s16 *temp_at;
    s16 temp_a1;
    s16 temp_v0;
    s16 var_a0;
    s32 var_s0;
    s32 var_s1;
    void *temp_s2;

    temp_a1 = arg0->unk18;
    temp_s4 = arg0->unk1C;
    if (temp_a1 < 5) {
        var_a0 = temp_a1;
    } else {
        var_a0 = 5;
    }
    temp_s2 = &sub_0f030000 + 0xDE8;
    temp_s2->unk43A4 = var_a0;
    temp_s2->unk43A8 = (void *) (temp_s2 + 0x4358);
    if (var_a0 > 0) {
        var_s0 = 1;
        var_s1 = 0;
        do {
            temp_v0 = temp_s4(arg0, var_s0);
            var_s0 += 1;
            temp_at = temp_s2->unk43A8 + var_s1;
            var_s1 += 2;
            *temp_at = temp_v0;
        } while (var_s0 != (var_a0 + 1));
    }
}

void _GLFindCoreDevice(void) {
    s64 sp40;
    void *sp0;
    s32 temp_s4;
    s32 var_s1;
    s32 var_s2;
    s64 var_ra;
    u16 temp_a3;
    void *temp_a2;
    void *temp_gp;
    void *temp_s6;
    void *temp_v0;
    void *temp_v1;
    void *var_s0;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4EC58;
    var_s2 = 0;
    temp_s6 = &sub_0f030000 + 0xDE8;
    temp_s4 = gl_sstatep->unk1C->unk4;
    if (temp_s6->unk4398 != 5) {
        if (temp_gp->unk-50DC == 0) {
            _GLFindCoreDevice(temp_s4);
            var_ra = sp40;
        }
        var_s1 = 0;
        var_s0 = temp_s6 + 0x4278;
        if (temp_gp->unk-50E0 > 0) {
            sp40 = var_ra;
loop_6:
            var_s1 += 1;
            if (var_s0->unkC != 0) {
                temp_a2 = var_s0->unk0->unk10;
                if (temp_a2 == (void *)2) {
                    _GLInitExtInput((s32) var_s0, temp_s4, temp_a2);
                }
                if (var_s0->unk8 != 0) {
                    var_s2 += 1;
                    sp0 = var_s0;
                }
            }
            var_s0 += 0x20;
            if (var_s1 < temp_gp->unk-50E0) {
                goto loop_6;
            }
            var_ra = sp40;
        }
        if (var_s2 < 2) {
            if (var_s2 != 1) {
                temp_v1 = &sub_0f030000 - 0x6928;
                temp_s6->unk43A8 = (s64) temp_v1->unk10;
                temp_s6->unk43A0 = (s64) temp_v1->unk8;
                temp_s6->unk4398 = (s64) temp_v1->unk0;
            } else {
                temp_a3 = sp0->unk1C->unk14;
                sp40 = var_ra;
                temp_s6->unk439C = temp_a3;
                temp_s6->unk439E = (s16) (temp_a3 + 1);
                _GLExtDialsExist(sp0->unk1C);
                temp_s6->unk4398 = (s32) sp0->unk1C->unk8;
                temp_v0 = sp0->unk1C;
                if ((temp_v0->unk8 != 4) && (temp_v0->unk1A != 0)) {
                    temp_s6->unk43AC = 0;
                } else {
                    temp_s6->unk43AC = 1;
                }
            }
        } else {
            temp_s6->unk4398 = 0;
            temp_s6->unk43A4 = 0;
            temp_s6->unk439C = 0U;
            temp_s6->unk439E = 0;
            temp_s6->unk43AC = 3;
        }
    }
}

void findPushPointerDevs(s32 arg0) {
    s64 sp38;
    s32 temp_a0;
    s32 temp_a1;
    s32 var_s1;
    s64 var_ra;
    void *var_s0;

    var_ra = saved_reg_ra;
    temp_a1 = saved_reg_gp->unk-50E0;
    if (temp_a1 == 0) {
        _GLInitExtInput(arg0, temp_a1);
        var_ra = sp38;
    }
    var_s1 = 0;
    var_s0 = &sub_0f030000 + 0x5060;
    if (saved_reg_gp->unk-50E0 > 0) {
        sp38 = var_ra;
loop_8:
        temp_a0 = var_s0->unk0->unk10;
        var_s1 += 1;
        if (temp_a0 != 0) {
            if (saved_reg_gp->unk-50D8 != 0) {
                goto block_5;
            }
            if (temp_a0 == 2) {
                if (XSGIDeviceQuery(arg0, var_s0->unk18, &sub_0f020000 + 0x3D50, sp) != 0) {
                    if ((strcmp(sp, saved_reg_gp - 0x4548) != 0) && (strcmp(sp, &sub_0f020000 + 0x3D60) != 0)) {
                        goto block_5;
                    }
                    var_s0->unk9 = 1;
                    var_s0->unk14 = -1;
                    var_s0->unk16 = -1;
                    var_s0->unkC = 1;
                    _GLInitExtInput((s32) var_s0, arg0);
                } else {
                    goto block_5;
                }
            } else {
block_5:
                var_s0->unkC = 0;
            }
        } else {
            var_s0->unk9 = 1;
            var_s0->unk14 = -1;
            var_s0->unk16 = -1;
            var_s0->unkC = 1;
        }
        var_s0 += 0x20;
        if (var_s1 < saved_reg_gp->unk-50E0) {
            goto loop_8;
        }
    }
    saved_reg_gp->unk-50DC = 1;
}

void countPushPointers(void **arg0) {
    s32 temp_a5;
    s32 var_a1;
    s32 var_a4;
    void *temp_a3;
    void *var_a3;

    temp_a5 = saved_reg_gp->unk-50E0;
    var_a4 = 0;
    var_a3 = &sub_0f030000 + 0x5060;
    if (temp_a5 > 0) {
        var_a1 = temp_a5 >> 1;
        if (temp_a5 & 1) {
            var_a4 = 1;
            if (var_a3->unkC != 0) {
                *arg0 = var_a3;
            }
            var_a3 += 0x20;
            var_a1 = temp_a5 >> 1;
        }
        if (var_a1 != 0) {
loop_10:
            var_a4 += 2;
            if (var_a3->unkC != 0) {
                *arg0 = var_a3;
            }
            temp_a3 = var_a3 + 0x20;
            if (var_a3->unk2C != 0) {
                *arg0 = temp_a3;
            }
            var_a3 = temp_a3 + 0x20;
            if (var_a4 != temp_a5) {
                goto loop_10;
            }
        }
    }
}

void _GLExtChangePtrDev(s64 arg0, s64 arg1, s32 arg2) {
    s64 sp60;
    s64 sp58;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    ? sp10;
    ? sp8;
    ? *temp_s1;
    s32 temp_a3;
    s32 var_a3;
    s64 temp_a2_2;
    s64 temp_a3_3;
    s64 var_a1;
    s64 var_ra;
    u16 temp_a3_2;
    u16 temp_a4;
    u16 temp_at;
    void *temp_a2;
    void *temp_a2_3;
    void *temp_a3_4;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1;

    var_ra = saved_reg_ra;
    sp28 = arg0;
    if (saved_reg_gp->unk-50DC == 0) {
        _GLFindCoreDevice((s32) sp28);
        var_ra = sp58;
    }
    if (arg1 != 0x112) {
        if (arg2 != 0x113) {
            temp_v0 = &sub_0f030000 + 0xDE8;
            if (temp_v0->unk4398 == 5) {
                sp58 = var_ra;
                if (temp_v0->unk43AC != 2) {
                    temp_v0->unk4398 = 0;
                    _GLFindCoreDevice();
                    return;
                }
            }
            sp58 = var_ra;
            _GLdevname((s16 (*)[]) sp28, arg1, 2);
            temp_a2 = M2C_ERROR(/* Read from unset register $v0 */);
            if ((M2C_ERROR(/* Read from unset register $v0 */) == 0) || ((*M2C_ERROR(/* Read from unset register $v0 */))->unk10 != 2)) {
                var_a3 = 1;
            } else {
                var_a3 = 0;
            }
            if (var_a3 == 0) {
                temp_v0_2 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
                if (temp_v0_2 != NULL) {
                    if (((&sub_0f030000 + 0xDE8)->unk439C != arg1) || ((&sub_0f030000 + 0xDE8)->unk439E != arg2) || ((temp_a3 = temp_a2->unkC, (temp_a3 != 1)) && (temp_a3 != 2))) {
                        temp_a3_2 = temp_v0_2->unk14;
                        if (arg2 >= (s32) temp_a3_2) {
                            sp20 = (s64) temp_a2;
                            sp38 = (s64) temp_a3_2;
                            if (arg2 < ((temp_v0_2->unk12 + temp_a3_2) & 0xFFFF)) {
                                _GLInitExtInput((s32) sp20, (s32) sp28, temp_a2, temp_a3_2);
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    _GLFindCoreDevice((s32) sp);
                                    var_a1 = M2C_ERROR(/* Read from unset register $v0 */);
                                    temp_a3_3 = arg2 - sp38;
                                    temp_a2_2 = arg1 - sp38;
                                    if (saved_reg_gp->unk-50D8 != 0) {
                                        sp18 = var_a1;
                                        if (XChangePointerDevice(sp28, sp20->unk4, temp_a2_2, temp_a3_3) != 0) {
                                            return;
                                        }
                                        if (sp18 == 1) {
                                            temp_v0_3 = sp0->unk1C;
                                            if (temp_v0_3->unk1A == 0) {
                                                temp_v0_3->unk1A = 2;
                                                sp0->unk0->unk10 = 2;
                                                sp0->unkC = 0;
                                                sp0->unkA = 0;
                                            }
                                        }
                                        temp_a3_4 = sp20->unk1C;
                                        temp_a3_4->unk1A = 0;
                                        temp_a2_3 = sp20->unk0;
                                        temp_a2_3->unk10 = 0;
                                        sp20->unkC = 2;
                                        XFlush(sp28, 2, temp_a2_3, temp_a3_4);
                                        return;
                                    }
                                    (&sub_0f030000 + 0xDE8)->unk4398 = 0;
                                    if ((sp20->unk14 != temp_a2_2) || (sp30 = temp_a2_2, sp60 = temp_a3_3, (sp20->unk16 != temp_a3_3))) {
                                        sp30 = temp_a2_2;
                                        sp60 = temp_a3_3;
                                        sp18 = var_a1;
                                        sprintf(&sp8, saved_reg_gp - 0x4538, temp_a2_2, temp_a3_3);
                                        sprintf(&sp10, saved_reg_gp - 0x4538, temp_a3_3);
                                        XSGIDeviceControl(sp28, sp20->unk18, saved_reg_gp - 0x4530, &sp8);
                                        XSGIDeviceControl(sp28, sp20->unk18, saved_reg_gp - 0x4528, &sp10);
                                        sp20->unk16 = (s16) temp_a3_3;
                                        var_a1 = sp18;
                                        sp20->unk14 = (s16) sp30;
                                    }
                                    if (sp20->unk9 == 0) {
                                        if (sp20->unk1C->unk20 == 0) {
                                            sp18 = var_a1;
                                            var_a1 = sp18;
                                            if (strcmp(sp20->unk1C->unk0, saved_reg_gp - 0x4520) == 0) {
                                                XSGIDeviceControl(sp28, sp20->unk18, saved_reg_gp - 0x4518, _GLtabletScale);
                                                sp20->unk9 = 1U;
                                                var_a1 = sp18;
                                            }
                                        }
                                    }
                                    if (var_a1 != 1) {

                                    } else if (sp20 == sp0) {

                                    } else {
                                        XSGIDeviceControl(sp28, sp0->unk18, &sub_0f020000 + 0x3D00 + 0x50, saved_reg_gp - 0x4540);
                                        sp0->unkC = 0;
                                    }
                                    if (sp20->unkC != 2) {
                                        temp_s1 = saved_reg_gp - 0x4548;
                                        XSGIDeviceControl(sp28, sp20->unk18, &sub_0f020000 + 0x3D70, temp_s1);
                                        XSGIDeviceControl(sp28, sp20->unk18, &sub_0f020000 + 0x3D00 + 0x50, temp_s1);
                                        sp20->unkC = 2;
                                    }
                                    XFlush(sp28);
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (arg1 == 0x112) {
            goto block_23;
        }
    } else {
block_23:
        if (arg2 != 0x113) {
            return;
        }
        temp_v1 = &sub_0f030000 + 0xDE8;
        temp_at = temp_v1->unk439C;
        if ((&sub_0f030000 + 0xDE8)->unk4398 != 5) {
            temp_a4 = temp_v1->unk439E;
            temp_v1->unk439E = 0x113U;
            temp_v1->unk439C = 0x112U;
            temp_v1->unk4398 = 5;
            temp_v1->unk43A0 = temp_at;
            temp_v1->unk43A2 = temp_a4;
            if (saved_reg_gp->unk-50D8 != 0) {

            } else {
                sp58 = var_ra;
                _GLFindCoreDevice((s32) sp, 0x113);
                if (M2C_ERROR(/* Read from unset register $v0 */) == 1) {
                    XSGIDeviceControl(sp28, sp0->unk18, &sub_0f020000 + 0x3D50, saved_reg_gp - 0x4540);
                    sp0->unkC = 0;
                    XFlush(sp28);
                    (&sub_0f030000 + 0xDE8)->unk43AC = 2;
                }
            }
        }
    }
}

void select_dev_win(void *arg0, s32 *arg1) {
    if (arg0->unk2C == 1) {
        return;
    }
    XSelectExtensionEvent(gl_sstatep->unk1C->unk4, arg0->unk40, arg1 + 4, *arg1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x80, 0x84, 0x90, 0x94, 0x98, 0x9c], gap at: 0x70. */
void _GLSelectExtDevs(s64 arg0) {
    s32 sp4;
    s32 sp0;
    ? *var_a0;
    ? *var_s5;
    s32 *temp_a1;
    s32 temp_a0;
    s32 var_s1;
    s32 var_v0;
    void *temp_s8;
    void *var_s0;
    void *var_s7;

    var_s1 = 0;
    temp_s8 = &sub_0f030000 + 0xDE8;
    var_s0 = temp_s8 + 0x4278;
    unksp68 = (s64) gl_sstatep->unk1C;
    if (saved_reg_gp->unk-50E0 > 0) {
loop_7:
        temp_a0 = var_s0->unk10;
        var_s1 += 1;
        if ((temp_a0 != 1) && (temp_a0 != 2)) {
            var_v0 = var_s1 < saved_reg_gp->unk-50E0;
            if (arg0 != 0) {
                if (temp_a0 != 0) {
                    goto block_2;
                }
                goto block_5;
            }
        } else {
block_2:
            temp_a1 = var_s0->unk4;
            if ((temp_a1 == NULL) || (var_s0->unk0->unk10 != 2)) {

            } else {
                var_s7 = sp;
                if (temp_a0 != 2) {
                    var_s0->unk10 = 3;
                    var_s7 = (*temp_a1 << 6) + temp_s8;
                    if (arg0 == 0) {
                        goto block_14;
                    }
                    goto block_19;
                }
                sp0 = 1;
                var_s0->unk10 = 0;
                sp4 = (*temp_a1 << 8) | 9;
                if (arg0 != 0) {
block_19:
                    _GLExtChangePtrDev(arg0, (s64) var_s7);
                } else {
block_14:
                    var_s5 = (*unksp68)->unk14;
                    if (var_s5 != NULL) {
                        var_a0 = var_s5;
                        do {
                            _GLExtChangePtrDev((s64) var_a0, (s64) var_s7);
                            var_s5 = *var_s5;
                            var_a0 = var_s5;
                        } while (var_s5 != NULL);
                    }
                }
            }
block_5:
            var_v0 = var_s1 < saved_reg_gp->unk-50E0;
        }
        var_s0 += 0x20;
        if (var_v0 != 0) {
            goto loop_7;
        }
    }
}

void _GLExtMarkInterested(s64 arg0) {
    if (saved_reg_gp->unk-50D0 != 0) {
        if (saved_reg_gp->unk-50D4 != arg0) {
            goto block_6;
        }
    } else {
block_6:
        _GLdevname(gl_sstatep->unk1C->unk4, arg0);
        saved_reg_gp->unk-50D0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        M2C_ERROR(/* Read from unset register $v0 */)->unk8 = 1;
    }
}

void _GLMarkExtDevsForSelection(void) {
    s64 sp0;
    s16 temp_s8;
    s32 var_a0;
    s32 var_s2;
    s32 var_s5;
    s32 var_s6;
    s32 var_v1;
    void *temp_a1;
    void *temp_a2;
    void *temp_s1;
    void *temp_s5;
    void *var_s0;

    var_s2 = 0;
    temp_s1 = &sub_0f030000 + 0xDE8;
    var_s0 = temp_s1 + 0x4278;
    sp0 = (s64) gl_sstatep->unk1C->unk4;
    if (saved_reg_gp->unk-50E0 > 0) {
loop_6:
        temp_s5 = var_s0->unk1C;
        var_s2 += 1;
        if ((temp_s5->unk8 == temp_s1->unk4398) && (temp_s1->unk43AC == 1)) {
            temp_a1 = var_s0->unk10;
            if (temp_a1 != (void *)3) {
                var_v1 = var_s2 < saved_reg_gp->unk-50E0;
                if (temp_a1 == (void *)1) {
                    var_s0->unk10 = NULL;
                    goto block_4;
                }
            } else {
                var_s0->unk10 = (void *)2;
                goto block_4;
            }
        } else {
            var_v1 = var_s2 < saved_reg_gp->unk-50E0;
            if (var_s0->unk8 != 0) {
                if (var_s0->unk0->unk10 != 2) {
                    goto block_4;
                }
                temp_a2 = var_s0->unk10;
                var_v1 = var_s2 < saved_reg_gp->unk-50E0;
                if (temp_a2 == NULL) {
                    _GLInitExtInput((s32) var_s0, (s32) sp0, temp_a2);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        var_s0->unk10 = (void *)1;
                        var_s6 = temp_s5->unkC;
                        temp_s8 = temp_s5->unk12;
                        if (var_s6 != 0) {
                            var_s5 = 0;
                            if (temp_s8 > 0) {
                                var_a0 = var_s6;
                                do {
                                    var_s6 += 0x10;
                                    _GLInitExtInput(var_a0);
                                    var_s5 += 1;
                                    var_a0 = var_s6;
                                } while (temp_s8 != var_s5);
                            }
                        }
                    }
block_4:
                    var_v1 = var_s2 < saved_reg_gp->unk-50E0;
                }
            }
        }
        var_s0 += 0x20;
        if (var_v1 != 0) {
            goto loop_6;
        }
    }
}

void _GLExtDevNeedsSelection(void) {
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a3;
    void *temp_at;
    void *var_a2;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4DE88;
    temp_a5 = temp_at->unk-50E0;
    var_a3 = 0;
    var_a2 = temp_at->unk-7FA4 + 0x5060;
    if (temp_a5 > 0) {
loop_4:
        temp_a4 = var_a2->unk10;
        var_a3 += 1;
        if (temp_a4 != 1) {
            if (temp_a4 == 2) {
                goto block_2;
            }
            goto block_3;
        }
block_2:
        if (var_a2->unk0->unk10 != 2) {
block_3:
            var_a2 += 0x20;
            if (var_a3 != temp_a5) {
                goto loop_4;
            }
        }
    }
}

s32 _GLExtGetDevNumbers(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp40;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s16 temp_a3;
    s16 var_a1;
    s16 var_v0;
    s32 temp_a4;
    u16 temp_a2;
    void *temp_v0;

    sp10 = arg3;
    sp28 = arg2;
    sp20 = arg1;
    _GLdevname(gl_sstatep->unk1C->unk4, arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        temp_v0 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
        sp18 = (s64) temp_v0;
        if (temp_v0 != NULL) {
            temp_a2 = temp_v0->unk14;
            *sp20 = temp_a2;
            *sp28 = (s16) (temp_v0->unk12 + temp_a2);
            sp40 = temp_v0->unk1C(temp_v0, 1, sp28, sp20) & 0xFFFF;
            temp_a3 = ((s32 (*)(s64, s16)) subroutine_arg0)(sp18, sp18->unk18) & 0xFFFF;
            temp_a4 = temp_a3 < sp40;
            if (temp_a4 != 0) {
                var_v0 = temp_a3;
            } else {
                var_v0 = (s16) sp40;
            }
            *sp10 = var_v0;
            if (temp_a4 != 0) {
                var_a1 = sp40 + 1;
            } else {
                var_a1 = temp_a3 + 1;
            }
            *subroutine_arg2 = var_a1;
            return 1;
        }
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 0;
    }
    return 0;
}

void _GLExtCloseDev(s64 arg0) {
    s64 sp20;
    s16 temp_a1_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_v0;
    s32 var_v0_2;
    void *temp_a1;
    void *temp_s0;
    void *var_a0;
    void *var_a0_2;

    _GLdevname(gl_sstatep->unk1C->unk4, arg0);
    temp_a1 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        temp_s0 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
        if (temp_s0 != NULL) {
            if (temp_a1->unk4 != 0) {
                sp20 = (s64) temp_s0;
                _GLInitExtInput((s32) subroutine_arg0, (s32) temp_a1);
            }
            var_a0 = temp_s0->unkC;
            if (var_a0 != NULL) {
                temp_a1_2 = temp_s0->unk12;
                var_a4 = 0;
                if (temp_a1_2 > 0) {
                    var_v0 = temp_a1_2 & 3;
                    var_a2 = temp_a1_2 >> 2;
                    if (var_v0 != 0) {
                        do {
                            var_a0 += 0x10;
                            var_a4 += 1;
                            var_v0 -= 1;
                            var_a0->unk-10 = 0;
                        } while (var_v0 != 0);
                        var_a2 = temp_a1_2 >> 2;
                    }
                    if (var_a2 != 0) {
                        var_v0_2 = var_a4;
                        var_a0_2 = var_a0;
                        do {
                            var_a0_2 += 0x40;
                            var_a0_2->unk-10 = 0;
                            var_a0_2->unk-20 = 0;
                            var_a0_2->unk-30 = 0;
                            var_v0_2 += 4;
                            var_a0_2->unk-40 = 0;
                        } while (temp_a1_2 != var_v0_2);
                    }
                }
            }
        }
    }
}

void _GLInitExtInput(void) {
    void *temp_a0;
    void *temp_v1;

    if (saved_reg_gp->unk-50E0 == 0) {
        _GLInitExtInput(gl_sstatep->unk1C->unk4);
    }
    temp_a0 = &sub_0f030000 + 0xDE8;
    temp_v1 = &sub_0f030000 - 0x6928;
    temp_a0->unk43A8 = (s64) temp_v1->unk10;
    temp_a0->unk43A0 = (s64) temp_v1->unk8;
    temp_a0->unk4398 = (s64) temp_v1->unk0;
}

void list_input_devices(s32 arg0) {
    s16 temp_at;
    s32 temp_ra;
    s32 temp_s7;
    s32 temp_v0;
    s32 var_a0;
    s32 var_s3;
    s32 var_s6;
    void *temp_s0;
    void *temp_s4;
    void *temp_s6;
    void *temp_s6_2;
    void *temp_t8;
    void *var_s0;
    void *var_s2;
    void *var_s5;

    var_s2 = &sub_0f030000 - 0x69E0;
    temp_s4 = XListInputDevices(sp);
    var_a0 = 0;
    var_s3 = 0;
    saved_reg_gp->unk-50E4 = 0;
    if (saved_reg_gp->unk-3974 > 0) {
loop_4:
        var_s5 = NULL;
        temp_s7 = XInternAtom(arg0, var_s2->unk4, 0);
        var_s6 = 0;
        var_s0 = temp_s4;
        if (subroutine_arg0 > 0) {
loop_8:
            temp_v0 = var_s0->unk10;
            var_s6 += 1;
            if ((temp_v0 == 2) || (temp_v0 == 0)) {
                goto block_11;
            }
            if (1 != 0) {
                goto block_7;
            }
block_11:
            if (strcmp(var_s2->unk0, var_s0->unk8) == 0) {
                var_s5 = var_s0;
            } else {
                if ((var_s5 == NULL) && (var_s0->unk4 == temp_s7)) {
                    var_s5 = var_s0;
                }
block_7:
                var_s0 += 0x18;
                if (var_s6 < subroutine_arg0) {
                    goto loop_8;
                }
            }
        }
        if (var_s5 == NULL) {
            goto block_3;
        }
        temp_ra = saved_reg_gp->unk-50E4;
        temp_t8 = &sub_0f030000 + 0xDE8;
        temp_s6 = (temp_ra << 5) + temp_t8;
        temp_s6_2 = temp_s6 + 0x4278;
        temp_s0 = (temp_ra * 0x2C) + temp_t8 + 0x4140;
        bcopy(var_s2, temp_s0, 0x2C);
        temp_s6->unk4278 = var_s5;
        temp_s6_2->unk4 = 0;
        temp_s6_2->unk10 = 0;
        temp_s6_2->unkC = 0;
        temp_s6_2->unk9 = 0;
        temp_s6_2->unkA = 0;
        temp_s6_2->unk1C = temp_s0;
        temp_s6_2->unk16 = -1;
        temp_s6_2->unk14 = -1;
        temp_s6_2->unk18 = (s32) var_s5->unk0;
        temp_at = var_s5->unk12;
        var_a0 = saved_reg_gp->unk-50E4 + 1;
        temp_s0->unk1A = temp_at;
        if (temp_at == 0) {
            saved_reg_gp->unk-50D8 = 1;
        }
        saved_reg_gp->unk-50E4 = var_a0;
        if (var_a0 < 7) {
block_3:
            var_s3 += 1;
            var_s2 += 0x2C;
            if (var_s3 < saved_reg_gp->unk-3974) {
                goto loop_4;
            }
            var_a0 = saved_reg_gp->unk-50E4;
        }
    }
    saved_reg_gp->unk-50E0 = var_a0;
}

void open_device(void *arg0, ? arg1) {
    s32 *temp_t0;
    s32 temp_a0;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_at;
    s32 var_t9_2;
    s32 var_t9_3;
    s32 var_v1;
    u8 *var_a1;
    u8 *var_v0;
    u8 *var_v0_2;
    u8 *var_v0_3;
    u8 temp_v0_2;
    u8 var_t9;
    void *temp_a4;
    void *temp_v0;

    if (arg0 != NULL) {
        if (arg0->unk4 == NULL) {
            temp_a4 = arg0->unk0;
            temp_a0 = temp_a4->unk10;
            if ((temp_a0 != 1) && (temp_a0 != 0)) {
                temp_v0 = XOpenDevice(arg1, temp_a4->unk0);
                if (temp_v0 != NULL) {
                    arg0->unk4 = temp_v0;
                    var_a7 = 0;
                    temp_t0 = (temp_v0->unk0 << 6) + (&sub_0f030000 + 0xDE8);
                    *temp_t0 = 0;
                    var_a5 = 0;
                    var_a1 = temp_v0->unk8;
                    if (temp_v0->unk4 > 0) {
loop_14:
                        temp_v0_2 = *var_a1;
                        var_a1 += 2;
                        var_a4 = 0;
                        var_a5 += 1;
                        if (temp_v0_2 != 2) {
                            var_a4_2 = 0;
                            if (temp_v0_2 == 1) {
                                ((var_a7 * 4) + temp_t0)->unk4 = 0;
                                var_t9 = 0;
                                var_v0 = temp_v0->unk8;
                                if (temp_v0->unk4 > 0) {
loop_31:
                                    temp_a4_2 = var_a4_2 + 1;
                                    if (var_v0->unk0 == 1) {
                                        var_t9 = var_v0->unk1;
                                        ((*temp_t0 * 4) + temp_t0)->unk4 = (s32) ((temp_v0->unk0 << 8) | var_t9);
                                    }
                                    if (temp_a4_2 < temp_v0->unk4) {
                                        var_a4_2 = temp_a4_2 + 1;
                                        var_at = var_a4_2 < temp_v0->unk4;
                                        if (var_v0->unk2 == 1) {
                                            var_t9 = var_v0->unk3;
                                            ((*temp_t0 * 4) + temp_t0)->unk4 = (s32) ((temp_v0->unk0 << 8) | var_t9);
                                            var_at = var_a4_2 < temp_v0->unk4;
                                        }
                                        var_v0 += 4;
                                        if (var_at != 0) {
                                            goto loop_31;
                                        }
                                    }
                                }
                                saved_reg_gp->unk-50EC = (s32) var_t9;
                                var_a7_2 = *temp_t0;
                                if (saved_reg_gp->unk-397C != 0) {
                                    var_a7_2 += 1;
                                    *temp_t0 = var_a7_2;
                                }
                                ((var_a7_2 * 4) + temp_t0)->unk4 = 0;
                                var_t9_2 = 0;
                                var_a4_3 = 0;
                                var_v0_2 = temp_v0->unk8;
                                if (temp_v0->unk4 > 0) {
loop_41:
                                    temp_a4_3 = var_a4_3 + 1;
                                    if (var_v0_2->unk0 == 1) {
                                        var_t9_2 = var_v0_2->unk1 + 1;
                                        ((*temp_t0 * 4) + temp_t0)->unk4 = (s32) ((temp_v0->unk0 << 8) | var_t9_2);
                                    }
                                    if (temp_a4_3 < temp_v0->unk4) {
                                        var_a4_3 = temp_a4_3 + 1;
                                        var_v1 = var_a4_3 < temp_v0->unk4;
                                        if (var_v0_2->unk2 == 1) {
                                            var_t9_2 = var_v0_2->unk3 + 1;
                                            ((*temp_t0 * 4) + temp_t0)->unk4 = (s32) ((temp_v0->unk0 << 8) | var_t9_2);
                                            var_v1 = var_a4_3 < temp_v0->unk4;
                                        }
                                        var_v0_2 += 4;
                                        if (var_v1 != 0) {
                                            goto loop_41;
                                        }
                                    }
                                }
                                saved_reg_gp->unk-50E8 = var_t9_2;
                                var_a7 = *temp_t0;
                                if (saved_reg_gp->unk-3978 != 0) {
                                    var_a7 += 1;
                                    *temp_t0 = var_a7;
                                }
                            }
                        } else {
                            ((var_a7 * 4) + temp_t0)->unk4 = 0;
                            var_t9_3 = 0;
                            var_v0_3 = temp_v0->unk8;
                            if (temp_v0->unk4 > 0) {
loop_22:
                                temp_a4_4 = var_a4 + 1;
                                if (var_v0_3->unk0 == 2) {
                                    var_t9_3 = (s32) var_v0_3->unk1;
                                    ((*temp_t0 * 4) + temp_t0)->unk4 = (s32) ((temp_v0->unk0 << 8) | var_t9_3);
                                }
                                if (temp_a4_4 < temp_v0->unk4) {
                                    var_a4 = temp_a4_4 + 1;
                                    var_a2 = var_a4 < temp_v0->unk4;
                                    if (var_v0_3->unk2 == 2) {
                                        var_t9_3 = (s32) var_v0_3->unk3;
                                        ((*temp_t0 * 4) + temp_t0)->unk4 = (s32) ((temp_v0->unk0 << 8) | var_t9_3);
                                        var_a2 = var_a4 < temp_v0->unk4;
                                    }
                                    var_v0_3 += 4;
                                    if (var_a2 != 0) {
                                        goto loop_22;
                                    }
                                }
                            }
                            saved_reg_gp->unk-50F0 = var_t9_3;
                            var_a7 = *temp_t0;
                            if (saved_reg_gp->unk-3980 != 0) {
                                var_a7 += 1;
                                *temp_t0 = var_a7;
                            }
                        }
                        var_a2_2 = var_a7 < 0x10;
                        if (var_a5 < temp_v0->unk4) {
                            goto loop_14;
                        }
                    } else {
                        var_a2_2 = 0 < 0x10;
                    }
                    if (var_a2_2 == 0) {
                        *temp_t0 = 0xF;
                        gl_ErrorHandler(0x5D, 2, &sub_0f020000 + 0x3D80, 0xF);
                    }
                }
            }
        }
    }
}

void close_device(void *arg1) {
    s32 temp_a3;

    temp_a3 = arg1->unk4;
    if (temp_a3 != 0) {
        if (arg1->unk0->unk10 == 2) {
            XCloseDevice(temp_a3, temp_a3);
        }
        arg1->unkA = 0;
        arg1->unkC = 0;
        arg1->unk8 = 0;
        arg1->unk10 = 0;
        arg1->unk4 = 0;
    }
}

void init_soft_value(void *arg0) {
    if (arg0->unk0 != 0) {
        return;
    }
    arg0->unk0 = 1;
    arg0->unkC = -0x7FFF;
    arg0->unkE = 0x7FFF;
}

void find_soft_value(void *arg0, s32 arg1) {
    s64 sp0;
    s32 temp_a4;
    s64 temp_a0;

    temp_a4 = arg0->unkC;
    if (temp_a4 == 0) {
        return;
    }
    temp_a0 = ((arg1 - arg0->unk14) * 0x10) + temp_a4;
    sp0 = temp_a0;
    _GLInitExtInput((s32) temp_a0);
}

void _GLExtSetSoftval(s64 arg0, s16 (*arg1)[], s64 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s32 temp_v0;
    s32 var_a0;
    s64 var_a3;

    sp18 = arg2;
    sp10 = M2C_ERROR(/* Read from unset register $a4 */);
    _GLdevname(arg1, arg0, 2);
    var_a0 = 0;
    if ((M2C_ERROR(/* Read from unset register $v0 */) == 0) || ((*M2C_ERROR(/* Read from unset register $v0 */))->unk10 != 2)) {
        var_a0 = 1;
    }
    if (var_a0 == 0) {
        temp_v0 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
        if (temp_v0 == 0) {

        } else {
            _GLInitExtInput(temp_v0, (s32) subroutine_arg0);
            var_a3 = sp18;
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                if ((subroutine_arg2 != -1) && (var_a3 < subroutine_arg2)) {
                    var_a3 = subroutine_arg2;
                }
                if ((sp10 != -1) && (sp10 < var_a3)) {
                    var_a3 = sp10;
                }
                *M2C_ERROR(/* Read from unset register $v0 */) = 2;
                if (M2C_ERROR(/* Read from unset register $v0 */)->unk2 != 0) {
                    M2C_ERROR(/* Read from unset register $v0 */)->unk8 = (s32) (var_a3 - M2C_ERROR(/* Read from unset register $v0 */)->unk4);
                } else {
                    M2C_ERROR(/* Read from unset register $v0 */)->unk8 = (s32) var_a3;
                }
                if (subroutine_arg2 != -1) {
                    M2C_ERROR(/* Read from unset register $v0 */)->unkC = (s16) subroutine_arg2;
                }
                if (sp10 != -1) {
                    M2C_ERROR(/* Read from unset register $v0 */)->unkE = (s16) sp10;
                }
            }
        }
    }
}

s32 _GLExtGetSoftval(s64 arg0, s16 (*arg1)[]) {
    s32 temp_a0_3;
    s32 var_v0;
    void *temp_a0;
    void *temp_a0_2;

    _GLdevname(arg1, arg0, 2);
    temp_a0_2 = M2C_ERROR(/* Read from unset register $v0 */);
    if ((M2C_ERROR(/* Read from unset register $v0 */) == 0) || (var_v0 = 0, (temp_a0_2->unk0->unk10 != 2))) {
        var_v0 = 1;
    }
    if (var_v0 == 0) {
        temp_a0_3 = temp_a0_2->unk1C;
        if (temp_a0_3 == 0) {
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return 0;
        }
        _GLInitExtInput(temp_a0_3, (s32) subroutine_arg0);
        temp_a0 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (temp_a0->unk0 == 2) {
                if (temp_a0->unk2 == 0) {
                    return (s32) temp_a0->unkA;
                }
                /* Duplicate return node #12. Try simplifying control flow for better match */
                return (s32) ((s64) ((temp_a0->unk4 + temp_a0->unk8) << 0x30) >> 0x30);
            }
            return (s32) ((s64) ((temp_a0->unk4 + temp_a0->unk8) << 0x30) >> 0x30);
        }
        return 0;
    }
    return 0;
}

void check_rawvals(s32 arg0, s32 *arg1) {
    s32 *var_a3;
    s32 temp_a0;

    var_a3 = arg1;
    if (arg0 > 0) {
loop_2:
        temp_a0 = *var_a3;
        if ((temp_a0 >= -0x7FFF) && (var_a3 += 4, ((temp_a0 > 0x7FFF) == 0))) {
            if (((arg0 * 4) + arg1) == var_a3) {

            } else {
                goto loop_2;
            }
        }
    }
}

void set_softvals(s32 arg0, void *arg1, s32 arg2, s32 *arg3) {
    s16 temp_a7;
    s16 temp_a7_2;
    s16 temp_a7_3;
    s16 temp_a7_4;
    s16 temp_a7_5;
    s16 temp_a7_6;
    s32 *var_a4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    void *var_a5;

    var_a5 = arg1->unkC + (arg2 * 0x10);
    if (arg0 > 0) {
        var_a4 = arg3;
        if (arg0 & 1) {
            temp_a0 = *var_a4;
            var_a4 += 4;
            var_a5->unk4 = temp_a0;
            if (var_a5->unk2 == 0) {
                var_a5->unk2 = 1;
                if (var_a5->unk0 == 2) {
                    var_a5->unk0 = 1;
                    var_a5->unk8 = (s32) (var_a5->unk8 - temp_a0);
                }
            }
            if (arg1->unk28 == 0) {
                temp_a3 = var_a5->unk8;
                temp_a7 = var_a5->unkC;
                temp_a0_2 = var_a5->unk4 + temp_a3;
                if (temp_a0_2 >= temp_a7) {
                    temp_a7_2 = var_a5->unkE;
                    if (temp_a7_2 < temp_a0_2) {
                        var_a5->unk8 = (s32) (temp_a3 - (temp_a0_2 - temp_a7_2));
                    }
                } else {
                    var_a5->unk8 = (s32) ((temp_a7 - temp_a0_2) + temp_a3);
                }
            }
            var_a5 += 0x10;
        }
        if ((arg0 >> 1) != 0) {
loop_12:
            temp_a0_3 = var_a4->unk0;
            var_a5->unk4 = temp_a0_3;
            if (var_a5->unk2 == 0) {
                var_a5->unk2 = 1;
                if (var_a5->unk0 == 2) {
                    var_a5->unk0 = 1;
                    var_a5->unk8 = (s32) (var_a5->unk8 - temp_a0_3);
                }
            }
            if (arg1->unk28 == 0) {
                temp_a3_2 = var_a5->unk8;
                temp_a7_3 = var_a5->unkC;
                temp_a0_4 = var_a5->unk4 + temp_a3_2;
                if (temp_a0_4 >= temp_a7_3) {
                    temp_a7_4 = var_a5->unkE;
                    if (temp_a7_4 < temp_a0_4) {
                        var_a5->unk8 = (s32) (temp_a3_2 - (temp_a0_4 - temp_a7_4));
                    }
                } else {
                    var_a5->unk8 = (s32) ((temp_a7_3 - temp_a0_4) + temp_a3_2);
                }
            }
            temp_a0_5 = var_a4->unk4;
            var_a4 += 8;
            var_a5->unk14 = temp_a0_5;
            if (var_a5->unk12 == 0) {
                var_a5->unk12 = 1;
                if (var_a5->unk10 == 2) {
                    var_a5->unk10 = 1;
                    var_a5->unk18 = (s32) (var_a5->unk18 - temp_a0_5);
                }
            }
            if (arg1->unk28 == 0) {
                temp_a3_3 = var_a5->unk18;
                temp_a7_5 = var_a5->unk1C;
                temp_a0_6 = var_a5->unk14 + temp_a3_3;
                if (temp_a0_6 >= temp_a7_5) {
                    temp_a7_6 = var_a5->unk1E;
                    if (temp_a7_6 < temp_a0_6) {
                        var_a5->unk18 = (s32) (temp_a3_3 - (temp_a0_6 - temp_a7_6));
                    }
                } else {
                    var_a5->unk18 = (s32) ((temp_a7_5 - temp_a0_6) + temp_a3_3);
                }
            }
            var_a5 += 0x20;
            if (var_a4 != ((arg0 * 4) + arg3)) {
                goto loop_12;
            }
        }
    }
}

void set_vals_from_softvals(s32 arg0, void *arg1, s16 *arg2, s32 arg3) {
    s16 *var_a5;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_a2_3;
    s16 temp_a2_4;
    s16 var_a0;
    s16 var_a0_2;
    s16 var_a0_3;
    s16 var_a2;
    void *var_a1;

    var_a1 = arg1;
    var_a5 = arg2;
    if (arg0 > 0) {
        if (arg0 & 1) {
            var_a5 += 2;
            var_a0 = var_a1->unk4 + var_a1->unk8;
            if (arg3 == 1) {
                temp_a2 = var_a1->unkC;
                if (var_a0 >= temp_a2) {
                    temp_a2_2 = var_a1->unkE;
                    if (temp_a2_2 < var_a0) {
                        var_a0 = temp_a2_2;
                    }
                } else {
                    var_a0 = temp_a2;
                }
            }
            var_a1 += 0x10;
            var_a5->unk-2 = var_a0;
        }
        if ((arg0 >> 1) != 0) {
loop_9:
            var_a0_2 = var_a1->unk4 + var_a1->unk8;
            if (arg3 == 1) {
                temp_a2_3 = var_a1->unkC;
                if (var_a0_2 >= temp_a2_3) {
                    temp_a2_4 = var_a1->unkE;
                    if (temp_a2_4 < var_a0_2) {
                        var_a0_2 = temp_a2_4;
                    }
                } else {
                    var_a0_2 = temp_a2_3;
                }
            }
            *var_a5 = var_a0_2;
            var_a5 += 4;
            var_a0_3 = var_a1->unk14 + var_a1->unk18;
            if (arg3 == 1) {
                var_a2 = var_a1->unk1C;
                if (var_a0_3 >= var_a2) {
                    var_a2 = var_a1->unk1E;
                    if (var_a2 < var_a0_3) {
                        goto block_7;
                    }
                } else {
block_7:
                    var_a0_3 = var_a2;
                }
            }
            var_a1 += 0x20;
            var_a5->unk-2 = var_a0_3;
            if (var_a5 != ((arg0 * 2) + arg2)) {
                goto loop_9;
            }
        }
    }
}

void set_devs(s32 arg0, s16 *arg1, s16 arg2) {
    s16 *var_a1;
    s16 *var_a5;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 var_a0;
    s16 var_a6;
    s32 var_a7;

    var_a5 = arg1;
    if (arg0 > 0) {
        var_a7 = arg0 & 3;
        var_a6 = arg2;
        if (var_a7 != 0) {
            do {
                *var_a5 = var_a6;
                var_a6 += 1;
                var_a7 -= 1;
                var_a5 += 2;
            } while (var_a7 != 0);
        }
        if ((arg0 >> 2) != 0) {
            var_a1 = var_a5;
            var_a0 = var_a6;
            do {
                var_a1 += 8;
                temp_v0 = var_a0 + 1;
                var_a1->unk-6 = temp_v0;
                temp_v0_2 = temp_v0 + 1;
                var_a1->unk-4 = temp_v0_2;
                temp_v0_3 = temp_v0_2 + 1;
                var_a1->unk-8 = var_a0;
                var_a0 = temp_v0_3 + 1;
                var_a1->unk-2 = temp_v0_3;
            } while (var_a0 != (arg0 + arg2));
        }
    }
}

void _GLExtClearGotEventFlags(void) {
    s32 temp_a4;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_v0;
    void *temp_at;
    void *var_a2;
    void *var_a2_2;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4CF08;
    temp_a4 = temp_at->unk-50E0;
    var_a3 = 0;
    var_a2 = temp_at->unk-7FA4 + 0x5060;
    if (temp_a4 > 0) {
        var_a5 = temp_a4 & 3;
        var_v0 = temp_a4 >> 2;
        if (var_a5 != 0) {
            do {
                var_a2 += 0x20;
                var_a3 += 1;
                var_a5 -= 1;
                var_a2->unk-16 = 0;
            } while (var_a5 != 0);
            var_v0 = temp_a4 >> 2;
        }
        if (var_v0 != 0) {
            var_a3_2 = var_a3;
            var_a2_2 = var_a2;
            do {
                var_a2_2 += 0x80;
                var_a2_2->unk-16 = 0;
                var_a2_2->unk-36 = 0;
                var_a2_2->unk-56 = 0;
                var_a3_2 += 4;
                var_a2_2->unk-76 = 0;
            } while (var_a3_2 != temp_a4);
        }
    }
}

void _GLProcessExtEvent(s16 *arg0) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s16 (*temp_a1_2)[];
    s16 *temp_a1_4;
    s16 temp_a0;
    s16 temp_a1_3;
    s16 temp_a2_2;
    s16 temp_a7;
    s16 var_a0_2;
    s16 var_a1;
    s32 temp_a0_2;
    s32 temp_a6;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a1_2;
    s32 var_a1_3;
    s64 temp_a1;
    s64 temp_a3;
    u8 var_a2;
    void *temp_a2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_5;

    if (saved_reg_gp->unk-50E0 != 0) {
        temp_v0 = arg0->unk0;
        if (saved_reg_gp->unk-50EC != temp_v0) {
            if (saved_reg_gp->unk-50E8 != temp_v0) {
                if ((saved_reg_gp->unk-50F0 == temp_v0) && (_GLdevname(arg0->unk14), temp_a1 = M2C_ERROR(/* Read from unset register $v0 */), (M2C_ERROR(/* Read from unset register $v0 */) != 0)) && (temp_v0_2 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C, sp68 = (s64) temp_v0_2, (temp_v0_2 != NULL))) {
                    temp_a6 = temp_v0_2->unk8;
                    temp_a2 = &sub_0f030000 + 0xDE8;
                    if ((temp_a2->unk4398 != temp_a6) || (temp_a2->unk43AC != 1)) {
                        var_a0 = 1;
                    } else {
                        var_a0 = 0;
                    }
                    if (var_a0 != 0) {
                        var_a2 = arg0->unk44;
                        temp_a0 = temp_v0_2->unk12;
                        temp_a3 = arg0->unk45 & 0xFFFF;
                        sp48 = (s64) temp_a6;
                        if (temp_a0 < (var_a2 + temp_a3)) {
                            var_a2 = temp_a0 - temp_a3;
                            if ((s32) var_a2 <= 0) {
                                return;
                            }
                            goto block_14;
                        }
block_14:
                        temp_a7 = temp_v0_2->unk10;
                        if (temp_a7 != 1) {
                            sp60 = 0;
                            sp70 = (s64) temp_a7;
                            if (temp_a7 < (s32) var_a2) {
                                sp30 = temp_a1;
                                sp40 = (s64) var_a2;
                                sp60 = 0;
                                sp58 = temp_a3;
                                goto block_17;
                            }
                        } else {
                            sp30 = temp_a1;
                            sp40 = (s64) var_a2;
                            sp58 = temp_a3;
                            sp60 = temp_a3;
block_17:
                            sp70 = (s64) var_a2;
                        }
                        sp40 = (s64) var_a2;
                        sp58 = temp_a3;
                        sp30 = temp_a1;
                        temp_a1_2 = arg0 + 0x48;
                        sp50 = (s64) temp_a1_2;
                        if (_GLExtGetSoftval((s64) var_a2, temp_a1_2, (s64) var_a2, temp_a3) != 0) {
                            if ((sp48 != 2) && (sp40 < sp68->unk10) && (sp30->unkA == 0)) {
                                _GLExtQueryDevice(sp48, 2);
                            }
                            sp30->unkA = 1U;
                            _GLExtGetSoftval(sp40, (s16 (*)[]) sp68, sp58, sp50);
                            if ((sp48 != 2) || (sp58 != 6)) {
                                _GLExtGetSoftval(sp70, sp, (sp68->unk14 + sp60) & 0xFFFF, sp60);
                                _GLExtGetSoftval(sp70, sp68->unkC + (sp60 * 0x10), (s64) &sp18[0], (s64) sp68->unk28);
                                if (sp48 == 2) {
                                    if (saved_reg_gp->unk-50CC == 0) {
                                        _GLProcessExtEvent(&sp18[0], arg0->unk20);
                                    }
                                }
                                temp_a0_2 = sp68->unk24;
                                if (temp_a0_2 != 1) {
                                    if (temp_a0_2 == 2) {
                                        if (sp30->unkC != 0) {
                                            goto block_28;
                                        }
                                    }
                                } else {
block_28:
                                    temp_a1_3 = sp30->unk16;
                                    var_a0_2 = temp_a1_3;
                                    if (temp_a1_3 == -1) {
                                        var_a0_2 = 1;
                                    }
                                    temp_a2_2 = sp68->unk12 - 1;
                                    var_a1 = temp_a2_2;
                                    if (var_a0_2 < temp_a2_2) {
                                        var_a1 = var_a0_2;
                                    }
                                    temp_v0_3 = var_a1 - sp60;
                                    if (temp_v0_3 >= 0) {
                                        if (temp_v0_3 < sp70) {
                                            temp_a1_4 = &(&sp18[0])[temp_v0_3];
                                            sp38 = (s64) temp_a1_4;
                                            *sp38 = _GLinvertY(gl_sstatep->unk1C->unk70, *temp_a1_4, (s16 (*)[]) &sp18[0]);
                                        }
                                    }
                                }
                                _GLpostMotionEvent(sp70, sp, &sp18[0], arg0->unk20);
                            } else {
                                saved_reg_gp->unk-50CC = 1;
                            }
                        }
                    }
                }
            } else {
                _GLdevname(arg0->unk14);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    temp_v0_4 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
                    if (temp_v0_4 != NULL) {
                        temp_a2_3 = &sub_0f030000 + 0xDE8;
                        if ((temp_v0_4->unk8 != temp_a2_3->unk4398) || (temp_a2_3->unk43AC != 1)) {
                            var_a1_2 = 1;
                        } else {
                            var_a1_2 = 0;
                        }
                        sp30 = M2C_ERROR(/* Read from unset register $v0 */);
                        if (var_a1_2 != 0) {
                            _GLpostEvent(temp_v0_4->unk1C(temp_v0_4, arg0->unk38, temp_a2_3) & 0xFFFF, 0, 0);
                            sp30->unkA = 1U;
                        }
                    }
                }
            }
        } else {
            _GLdevname(arg0->unk14);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                temp_v0_5 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
                if (temp_v0_5 != NULL) {
                    temp_a2_4 = &sub_0f030000 + 0xDE8;
                    if ((temp_v0_5->unk8 != temp_a2_4->unk4398) || (temp_a2_4->unk43AC != 1)) {
                        var_a1_3 = 1;
                    } else {
                        var_a1_3 = 0;
                    }
                    sp30 = M2C_ERROR(/* Read from unset register $v0 */);
                    if (var_a1_3 != 0) {
                        _GLpostEvent(temp_v0_5->unk1C(temp_v0_5, arg0->unk38, temp_a2_4) & 0xFFFF, 1, 0);
                        sp30->unkA = 1U;
                    }
                }
            }
        }
    }
}

void default_map(void *arg0, s32 arg1) {

}

void mouse_map(void *arg0, s32 arg1) {

}

void sball_map(s32 arg1) {
    if (arg1 != 9) {

    }
}

void sb_set_period(s16 *arg0, s32 arg1) {
    s16 *var_a3;
    s32 temp_a3;
    s32 var_a4;
    s32 var_a5;

    var_a5 = 0x32;
    var_a3 = arg0;
    if (arg1 != 0) {
        var_a4 = 0;
loop_2:
        var_a3 += 2;
        if (*var_a3 == 0) {
            var_a4 += 1;
            if ((arg0 + 0xC) != var_a3) {
                goto loop_2;
            }
        }
        temp_a3 = saved_reg_gp->unk-50C8;
        if ((temp_a3 != 0) && (temp_a3 != arg1)) {
            var_a5 = arg1 - temp_a3;
        }
        arg0->unkC = (s16) (var_a5 * 0x10);
        if (var_a4 != 6) {
            saved_reg_gp->unk-50C8 = arg1;
            return;
        }
        saved_reg_gp->unk-50C8 = 0;
        return;
    }
    arg0->unkC = 0x320;
}

void _GLExtQueryDevice(s64 arg0, s64 arg1) {
    s64 sp70;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s16 (*temp_s3)[];
    s16 *temp_s5;
    s16 *var_s5_2;
    s16 *var_s6;
    s16 temp_a1_2;
    s16 temp_a1_3;
    s16 temp_a1_4;
    s16 temp_v0_3;
    s16 var_a5;
    s16 var_v0;
    s32 temp_a3;
    s32 temp_s6;
    s32 temp_v0_4;
    s32 var_s1;
    s32 var_s7;
    u16 var_s5;
    u8 temp_a1;
    u8 temp_a4;
    u8 temp_v0_2;
    void *temp_v0;
    void *var_s0;

    sp48 = arg1;
    sp30 = arg0;
    _GLdevname(gl_sstatep->unk1C->unk4, arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        temp_s3 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
        sp38 = M2C_ERROR(/* Read from unset register $v0 */);
        if (temp_s3 != NULL) {
            temp_v0 = XQueryDeviceState(gl_sstatep->unk1C->unk4, sp38->unk4);
            if (temp_v0 != NULL) {
                var_s1 = 0;
                var_s0 = temp_v0->unk8;
                if (temp_v0->unk4 > 0) {
                    sp40 = (s64) (sp + 0xC);
                    sp50 = sp48 & 2;
                    sp58 = sp48 & 1;
loop_12:
                    temp_v0_2 = var_s0->unk0;
                    var_s1 += 1;
                    if (temp_v0_2 != 1) {
                        goto block_13;
                    }
                    if (sp58 != 0) {
                        temp_s6 = (s16) var_s0->unk2 + 1;
                        var_s7 = 1;
                        var_s5 = temp_s3->unk1C(temp_s3, 1) & 0xFFFF;
                        if (temp_s6 >= 2) {
                            do {
                                temp_a3 = var_s7 & 7;
                                temp_a1 = (((s32) (((u32) (var_s7 >> 2) >> 0x1D) + var_s7) >> 3) + var_s0)->unk4;
                                var_s7 += 1;
                                _GLpostEvent(var_s5, (s16) ((s64) ((((s32) temp_a1 >> temp_a3) & 1) << 0x30) >> 0x30), 3, temp_a3);
                                var_s5 = (var_s5 + 1) & 0xFFFF;
                            } while (temp_s6 != var_s7);
                        }
                    } else {
block_13:
                        if ((temp_v0_2 == 2) && (sp50 != 0)) {
                            temp_a4 = var_s0->unk2;
                            temp_v0_3 = temp_s3[0][9];
                            sp70 = (s64) temp_a4;
                            if (temp_v0_3 < (s32) temp_a4) {
                                sp70 = (s64) temp_v0_3;
                            }
                            _GLExtGetSoftval(sp70, temp_s3, 0, (s64) var_s0->unk4);
                            _GLExtGetSoftval(sp70, (s16 (*)[]) &sp18[0], (s64) (u16) temp_s3[0][0xA]);
                            _GLExtGetSoftval(sp70, temp_s3->unkC, (s64) sp, (s64) temp_s3->unk28);
                            if (sp30 == 2) {
                                if (sp70 < 7) {
                                    _GLExtGetSoftval(1, (s16 (*)[]) &temp_s3->unkC[0][0x30], sp40, (s64) temp_s3->unk28);
                                }
                            }
                            temp_v0_4 = temp_s3->unk24;
                            if (temp_v0_4 != 1) {
                                if (temp_v0_4 == 2) {
                                    if (sp38->unkC != 0) {
                                        goto block_25;
                                    }
                                }
                            } else {
block_25:
                                temp_a1_2 = sp38->unk16;
                                var_v0 = 1;
                                if (temp_a1_2 != -1) {
                                    var_v0 = temp_a1_2;
                                }
                                temp_a1_3 = temp_s3[0][9] - 1;
                                var_a5 = var_v0;
                                if (var_v0 >= temp_a1_3) {
                                    var_a5 = temp_a1_3;
                                }
                                temp_s5 = (var_a5 * 2) + sp;
                                *temp_s5 = _GLinvertY(gl_sstatep->unk1C->unk70, *temp_s5);
                            }
                            var_s5_2 = sp;
                            if (sp70 > 0) {
                                var_s6 = &sp18[0];
                                do {
                                    temp_a1_4 = *var_s5_2;
                                    var_s5_2 += 2;
                                    _GLpostEvent((u16) *var_s6, temp_a1_4, 3);
                                    var_s6 += 2;
                                } while (var_s6 != &(&sp18[0])[sp70]);
                            }
                        }
                    }
                    var_s0 += var_s0->unk1;
                    if (var_s1 < temp_v0->unk4) {
                        goto loop_12;
                    }
                }
                XFreeDeviceState(temp_v0);
            }
        }
    }
}

void gl_g_setdblights(s64 arg0) {
    s64 sp18;
    s16 (*temp_s0)[];
    void *temp_s1;

    sp18 = arg0;
    temp_s0 = gl_sstatep->unk1C->unk4;
    _GLdevname(temp_s0, 1);
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    _GLInitExtInput(M2C_ERROR(/* Read from unset register $v0 */), (s32) temp_s0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (temp_s1->unk1C->unk1A == 0) {

        } else {
            XChangeFeedbackControl(temp_s0, temp_s1->unk4, 0x10, sp, (s32) sp18);
            XFlush((s64) temp_s0);
        }
    }
}

void gl_g_dbtext(void *arg0) {
    s64 sp428;
    s64 sp420;
    s64 sp418;
    s32 (*sp10)[];
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 (*temp_s1)[];
    s32 *var_s2;
    s32 var_a0;
    s32 var_s4;
    u8 temp_v0;
    u8 var_a0_2;
    u8 var_a0_3;
    void *var_a3;
    void *var_s3;

    if ((arg0 != NULL) && (arg0->unk0 != 0)) {
        _GLinitgl();
        temp_s1 = gl_sstatep->unk1C->unk4;
        _GLdevname(temp_s1, 2);
        if ((s32) arg0->unk0 < 3) {
            var_a0 = 0;
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                var_a0 = 1;
            }
        } else {
            var_a0 = 0;
        }
        sp420 = M2C_ERROR(/* Read from unset register $v0 */);
        if (var_a0 != 0) {
            _GLInitExtInput(M2C_ERROR(/* Read from unset register $v0 */), (s32) temp_s1);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp428 = (s64) arg0->unk0;
                _GLInitExtInput((s32) sp420, (s32) temp_s1);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    sp418 = (s64) sp420->unk4;
                    if (sp428 != 1) {
                        temp_v0 = arg0->unk1;
                        var_a3 = arg0 + 1;
                        if (temp_v0 != 0) {
                            if ((s32) temp_v0 > 0) {
                                var_a0_2 = 1;
                                if ((s32) temp_v0 < 0xB) {
                                    var_a0_2 = temp_v0;
                                }
                            } else {
                                var_a0_2 = 1;
                            }
                            sleep(var_a0_2);
                            var_a3 = arg0 + 1;
                        }
                        arg0->unk0 = 0U;
                        XSGIDeviceQuery((s32) temp_s1, *sp418, &sub_0f020000 + 0x3DA8, var_a3);
                    } else {
                        XSGIDeviceControl((s64) temp_s1, *sp418, &sub_0f020000 + 0x3D40, arg0 + 2);
                        XFlush((s64) temp_s1);
                    }
                }
            } else {
                goto block_16;
            }
        } else {
block_16:
            _GLdevname(temp_s1, 1);
            sp420 = M2C_ERROR(/* Read from unset register $v0 */);
            _GLInitExtInput(M2C_ERROR(/* Read from unset register $v0 */), (s32) temp_s1);
            if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && (sp420->unk1C->unk1A == 2)) {
                sp8 = 0;
                sp0 = 2;
                sp4 = 0x14;
                var_s4 = 0;
                if (arg0->unk0 != 0) {
                    var_s3 = arg0;
                    var_s2 = &sp18[0];
                    var_a0_3 = arg0->unk0;
loop_28:
                    if ((s32) var_a0_3 < 0x20) {
                        *var_s2 = 0x20;
                    } else if ((s32) var_a0_3 >= 0x60) {
                        if ((__libc_attr + (var_a0_3 * 4))->unk4 & 2) {
                            *var_s2 = toupper((s32) var_a0_3);
                        } else {
                            *var_s2 = 0x20;
                        }
                    } else {
                        *var_s2 = (s32) var_a0_3;
                    }
                    var_s4 += 1;
                    var_a0_3 = var_s3->unk1;
                    var_s3 += 1;
                    var_s2 += 4;
                    if ((var_a0_3 != 0) && ((arg0 + 0xFF) != var_s3)) {
                        goto loop_28;
                    }
                }
                spC = var_s4;
                sp10 = (s32 (*)[]) &sp18[0];
                (&sp18[0])[var_s4] = 0;
                XChangeFeedbackControl(temp_s1, sp420->unk4, 1, sp);
                XFlush((s64) temp_s1);
            }
        }
    }
}

void _GLExtGetDialFeedback(s32 arg0, s32 *arg1, s32 *arg2, s32 *arg3) {
    s32 var_a0;
    s32 var_s0;
    s32 var_s1;
    s32 var_s3;
    void *temp_s4;
    void *var_v0;

    var_s3 = 0;
    var_s1 = 0;
    var_s0 = 0;
    _GLdevname((s16 (*)[])1);
    temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
    _GLInitExtInput(M2C_ERROR(/* Read from unset register $v0 */), arg0);
    if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && (temp_s4->unk1C->unk1A == 2)) {
        var_v0 = XGetFeedbackControl(arg0, temp_s4->unk4, sp);
        var_a0 = 0;
        if (subroutine_arg0 > 0) {
loop_5:
            var_a0 += 1;
            if (var_v0->unk0 != 1) {
                var_v0 += var_v0->unk4;
                if (var_a0 == subroutine_arg0) {

                } else {
                    goto loop_5;
                }
            } else {
                var_s3 = var_v0->unk14;
                var_s1 = var_v0->unk10;
                var_s0 = var_v0->unkC;
            }
        }
    }
    *arg1 = var_s0;
    *arg2 = var_s1;
    *arg3 = var_s3;
}

void _GLExtChangeDialFeedback(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *temp_s1;

    sp28 = arg1;
    sp20 = arg3;
    sp18 = arg2;
    _GLdevname((s16 (*)[])1);
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    _GLInitExtInput(M2C_ERROR(/* Read from unset register $v0 */), arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (temp_s1->unk1C->unk1A == 0) {

        } else {
            XChangeFeedbackControl((s16 (*)[]) arg0, temp_s1->unk4, 7, sp, (s32) sp18, (s32) sp20);
        }
    }
}

void _GLExtConstrainMouse(s64 arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 sp10;
    s16 (*temp_s0)[];
    s16 temp_a4;
    s16 var_a1;
    s64 var_a3;

    sp10 = arg3;
    temp_s0 = gl_sstatep->unk1C->unk4;
    if ((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4BFAC)->unk-50DC == 0) {
        _GLFindCoreDevice((s32) temp_s0);
    }
    _GLdevname(temp_s0, 4);
    if (M2C_ERROR(/* Read from unset register $v0 */)->unkC != 0) {
        temp_a4 = M2C_ERROR(/* Read from unset register $v0 */)->unk16;
        var_a1 = temp_a4;
        if (temp_a4 == -1) {
            var_a1 = 1;
        }
        if ((var_a1 != arg1) && (arg1 != 0x101)) {
            var_a3 = subroutine_arg2;
        } else {
            var_a3 = (subroutine_arg0->unk78 - sp10) - 1;
        }
        XSGIMiscConstrainValuator(temp_s0, M2C_ERROR(/* Read from unset register $v0 */)->unk18, arg1, var_a3);
        XFlush((s64) temp_s0);
    }
}
