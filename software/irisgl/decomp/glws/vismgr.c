? XFree(s32, s32);                                  /* extern */
void *XGetVisualInfo(void *, ?, void **, void *);   /* extern */
s32 glXGetConfig(void *, void *, ?, void **);       /* extern */
extern ? sub_0f020000;

s32 __iglooGetVisualInfo(void) {
    s32 temp_v0;

    temp_v0 = __iglooGetCurrentContextInfo();
    if (temp_v0 == 0) {
        return 0;
    }
    return temp_v0->unk14;
}

s32 __iglooIsGlUseGlx(s32 arg0, s32 arg1) {
    s32 var_s0;

    var_s0 = 0;
    if ((arg0 != 0) && (arg1 != 0) && (glXGetConfig((void *)1, sp) != 3)) {
        var_s0 = sp0;
    }
    return var_s0;
}

s32 __iglooGetFullVisualInfo(void *arg0) {
    s32 *temp_s3;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_s0;
    s32 temp_t9;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s2_2;
    s32 var_s3_2;
    s32 var_s4_2;
    s64 temp_sp;
    s64 var_s3;
    s64 var_s3_3;
    s64 var_s4;
    s64 var_s6;
    s64 var_s7;
    u32 temp_a2;
    void *temp_ra;
    void *temp_s4;
    void *temp_s5;
    void *temp_v0;
    void *var_s2;

    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_s6 = saved_reg_s6;
    var_s7 = saved_reg_s7;
    arg0.unk-C8 = (s64) saved_reg_fp;
    arg0.unk-D0 = 0;
    arg0.unk-A8 = (s64) saved_reg_s1;
    arg0.unk-58 = (s64) saved_reg_ra;
    arg0.unk-B0 = (s64) saved_reg_s5;
    arg0.unk-B8 = (s64) saved_reg_s0;
    arg0.unk-C0 = (s64) saved_reg_gp;
    temp_s0 = arg0->unk8;
    temp_s5 = arg0->unk4;
    arg0.unk-38 = temp_s0;
    bzero(arg0 + 0x90, 0x6CU);
    bzero(arg0 + 0x14, 0x58U);
    arg0->unk90 = (s32) arg0->unk8;
    temp_v0 = XGetVisualInfo(temp_s5, 2, &arg0 - 0x40, arg0 + 0x94);
    arg0->unk98 = temp_v0;
    temp_a5 = temp_s0 * 0x50;
    arg0->unkA4 = (s32) (temp_s5->unk8C + temp_a5)->unkC;
    arg0->unkA8 = (s32) (temp_s5->unk8C + temp_a5)->unk10;
    arg0->unkAC = (s32) (temp_s5->unk8C + temp_a5)->unk14;
    arg0->unkB0 = (s32) (temp_s5->unk8C + temp_a5)->unk18;
    if (temp_v0 != NULL) {
        arg0.unk-F8 = (s64) saved_reg_s2;
        arg0.unk-90 = 0;
        arg0.unk-88 = 0;
        arg0.unk-80 = 0;
        arg0.unk-78 = 0;
        arg0.unk-98 = 0;
        arg0.unk-60 = 0;
        temp_a2 = arg0->unk94 * 4;
        temp_sp = sp - ((temp_a2 + 0xF) & ~0xF);
        arg0.unk-70 = temp_sp;
        memset((void *) temp_sp, 0xFF, temp_a2);
        arg0.unk-E8 = (s64) saved_reg_s4;
        arg0.unk-E0 = (s64) saved_reg_s6;
        arg0.unk-D8 = (s64) saved_reg_s7;
        arg0.unk-68 = 0;
        var_s0 = 0;
        var_s2 = arg0->unk98;
        if (arg0->unk94 > 0) {
            arg0.unk-F0 = (s64) saved_reg_s3;
            var_s4_2 = 0;
loop_5:
            temp_a2_2 = var_s2->unk10;
            var_s3_2 = 0;
            if ((temp_a2_2 == 4) || (var_a2 = 1, (temp_a2_2 == 3))) {
                var_a2 = 0;
            }
            if (var_a2 == 0) {
                if (__iglooGetVisualInfo(temp_s5, var_s2, var_a2) != 0) {
                    glXGetConfig(temp_s5, var_s2, 3, &arg0 - 0x44);
                    if (arg0.unk-44 >= 0) {
                        if (glXGetConfig(temp_s5, var_s2, 0x23, &arg0 - 0x50) != 2) {
                            var_s3_2 = (arg0.unk-50 != 0x8000) != (arg0.unk-44 > 0);
                        }
                        if (var_s3_2 == 0) {
                            glXGetConfig(temp_s5, var_s2, 4, &arg0 - 0x48);
                            if ((arg0.unk-48 == 0) || (var_a1 = 1, (arg0.unk-44 == 0))) {
                                var_a1 = 0;
                            }
                            if (var_a1 == 0) {
                                glXGetConfig(temp_s5, var_s2, 5, &arg0 - 0x4C);
                                temp_a2_3 = arg0.unk-4C;
                                if ((temp_a2_3 == 0) || (var_a1_2 = 1, (arg0.unk-44 == 0))) {
                                    var_a1_2 = 0;
                                }
                                if (var_a1_2 == 0) {
                                    temp_a1 = arg0.unk-44;
                                    arg0.unk-68 = (s64) (arg0.unk-68 + 1);
                                    switch (temp_a1) { /* irregular */
                                    case 2:
                                        arg0.unk-60 = (s64) (arg0.unk-60 + 1);
                                        *(var_s4_2 + arg0.unk-70) = 0;
                                        break;
                                    case 0:
                                        temp_s3 = var_s4_2 + arg0.unk-70;
                                        if (arg0.unk-48 != 0) {
                                            if (temp_a2_3 != 0) {
                                                *temp_s3 = 4;
                                                arg0.unk-90 = (s64) (arg0.unk-90 + 1);
                                            } else {
                                                *temp_s3 = 2;
                                                arg0.unk-88 = (s64) (arg0.unk-88 + 1);
                                            }
                                        } else if (temp_a2_3 != 0) {
                                            *temp_s3 = 3;
                                            arg0.unk-80 = (s64) (arg0.unk-80 + 1);
                                        } else {
                                            *temp_s3 = 1;
                                            arg0.unk-78 = (s64) (arg0.unk-78 + 1);
                                        }
                                        break;
                                    case 1:
                                        arg0.unk-98 = (s64) (arg0.unk-98 + 1);
                                        *(var_s4_2 + arg0.unk-70) = 5;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            var_s0 += 1;
            var_s2 += 0x28;
            var_s4_2 += 4;
            if (var_s0 < arg0->unk94) {
                goto loop_5;
            }
            var_s7 = arg0.unk-D8;
            var_s6 = arg0.unk-E0;
            var_s4 = arg0.unk-E8;
            var_s3 = arg0.unk-F0;
        }
        arg0->unk18 = __iglooGetFullVisualInfo(arg0.unk-60, arg0->unk94);
        arg0->unk40 = __iglooGetFullVisualInfo(arg0.unk-98);
        arg0->unk20 = __iglooGetFullVisualInfo(arg0.unk-78);
        arg0->unk30 = __iglooGetFullVisualInfo(arg0.unk-80);
        arg0->unk28 = __iglooGetFullVisualInfo(arg0.unk-88);
        temp_v0_2 = __iglooGetFullVisualInfo(arg0.unk-90);
        arg0.unk-F0 = var_s3;
        var_s0_2 = 0;
        arg0->unk38 = temp_v0_2;
        if (arg0->unk94 > 0) {
            arg0.unk-E8 = var_s4;
            var_s3_3 = arg0.unk-70;
            var_s2_2 = 0;
            arg0.unk-E0 = var_s6;
            arg0.unk-D8 = var_s7;
            arg0.unk-A0 = (s64) (arg0 + 0xA4);
loop_16:
            temp_a3 = *var_s3_3;
            var_s0_2 += 1;
            var_s3_3 += 4;
            if (temp_a3 != -1) {
                temp_ra = (temp_a3 * 8) + arg0;
                temp_t9 = temp_ra->unk14 + 1;
                temp_ra->unk14 = temp_t9;
                temp_s4 = (temp_ra->unk18 + (temp_t9 * 0x50)) - 0x50;
                __iglooFreeFullVisualInfoData(temp_s5, arg0->unk98 + var_s2_2, temp_s4, temp_a3);
                __iglooFreeFullVisualInfoData((void *) arg0.unk-A0, temp_s4);
            }
            var_s2_2 += 0x28;
            if (var_s0_2 < arg0->unk94) {
                goto loop_16;
            }
        }
        if (arg0.unk-68 != 0) {
            arg0.unk-D0 = 1;
        }
    }
    return (s32) arg0.unk-D0;
}

void MakeArrayOfVisualInfo(s32 arg0) {
    s64 sp8;
    s64 sp0;
    s64 temp_a0;
    void *temp_v0;

    if (arg0 != 0) {
        temp_a0 = arg0 * 0x50;
        sp8 = temp_a0;
        temp_v0 = gl_malloc(temp_a0, &sub_0f020000 + 0x58D0);
        if (temp_v0 != NULL) {
            sp0 = (s64) temp_v0;
            bzero(temp_v0, (u32) sp8);
        }
    }
}

void __iglooFreeFullVisualInfoData(void *arg0) {
    s32 temp_a2;

    if (arg0 != NULL) {
        temp_a2 = arg0->unk8;
        if (temp_a2 != 0) {
            XFree(temp_a2, temp_a2);
        }
    }
}

void SaveGDescValues(void *arg0, void *arg1) {
    s32 temp_a3;
    s32 temp_a3_10;
    s32 temp_a3_11;
    s32 temp_a3_12;
    s32 temp_a3_13;
    s32 temp_a3_14;
    s32 temp_a3_15;
    s32 temp_a3_16;
    s32 temp_a3_17;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a3_9;

    temp_a3 = arg1->unkC;
    if (temp_a3 != 0) {
        if ((temp_a3 > 0) && (arg1->unk14 == 0)) {
            if (temp_a3 == 1) {
                temp_a3_2 = arg1->unk8;
                if (arg0->unk44 < temp_a3_2) {
                    arg0->unk44 = temp_a3_2;
                }
            } else if (temp_a3 == 2) {
                temp_a3_3 = arg1->unk8;
                if (arg0->unk48 < temp_a3_3) {
                    arg0->unk48 = temp_a3_3;
                }
            }
        }
    } else {
        temp_a3_4 = arg1->unk10;
        if (arg1->unk14 != 0) {
            if (temp_a3_4 == 0) {
                temp_a3_5 = arg1->unk8;
                if (arg0->unk34 < temp_a3_5) {
                    arg0->unk34 = temp_a3_5;
                }
            } else {
                temp_a3_6 = arg1->unk20;
                if (arg0->unk24 < temp_a3_6) {
                    arg0->unk24 = temp_a3_6;
                }
                temp_a3_7 = arg1->unk24;
                if (arg0->unk28 < temp_a3_7) {
                    arg0->unk28 = temp_a3_7;
                }
                temp_a3_8 = arg1->unk28;
                if (arg0->unk2C < temp_a3_8) {
                    arg0->unk2C = temp_a3_8;
                }
                temp_a3_9 = arg1->unk2C;
                if (arg0->unk30 < temp_a3_9) {
                    arg0->unk30 = temp_a3_9;
                }
            }
        } else if (temp_a3_4 == 0) {
            temp_a3_10 = arg1->unk8;
            if (arg0->unk20 < temp_a3_10) {
                arg0->unk20 = temp_a3_10;
            }
        } else {
            temp_a3_11 = arg1->unk20;
            if (arg0->unk10 < temp_a3_11) {
                arg0->unk10 = temp_a3_11;
            }
            temp_a3_12 = arg1->unk24;
            if (arg0->unk14 < temp_a3_12) {
                arg0->unk14 = temp_a3_12;
            }
            temp_a3_13 = arg1->unk28;
            if (arg0->unk18 < temp_a3_13) {
                arg0->unk18 = temp_a3_13;
            }
            temp_a3_14 = arg1->unk2C;
            if (arg0->unk1C < temp_a3_14) {
                arg0->unk1C = temp_a3_14;
            }
        }
        temp_a3_15 = arg1->unk30;
        if (arg0->unk38 < temp_a3_15) {
            arg0->unk38 = temp_a3_15;
        }
        temp_a3_16 = arg1->unk38;
        if (arg0->unk3C < temp_a3_16) {
            arg0->unk3C = temp_a3_16;
        }
        temp_a3_17 = arg1->unk34;
        if (arg0->unk40 < temp_a3_17) {
            arg0->unk40 = temp_a3_17;
        }
        if (arg1->unk4C != 0) {
            arg0->unk50 = 1;
        }
        if (arg1->unk18 != 0) {
            arg0->unk54 = 1;
        }
    }
}

s32 GetVisualInfo(void *arg0, void *arg1, void *arg2) {
    s32 var_v0;

    bzero(arg2, 0x50U);
    arg2->unk0 = arg1;
    glXGetConfig(arg0, arg1, 4, arg2 + 0x10);
    glXGetConfig(arg0, arg1, 3, arg2 + 0xC);
    glXGetConfig(arg0, arg1, 5, arg2 + 0x14);
    glXGetConfig(arg0, arg1, 6, arg2 + 0x18);
    glXGetConfig(arg0, arg1, 0xC, arg2 + 0x30);
    glXGetConfig(arg0, arg1, 0xD, arg2 + 0x34);
    if (arg2->unk10 != 0) {
        glXGetConfig(arg0, arg1, 8, arg2 + 0x20);
        glXGetConfig(arg0, arg1, 9, arg2 + 0x24);
        glXGetConfig(arg0, arg1, 0xA, arg2 + 0x28);
        glXGetConfig(arg0, arg1, 0xB, arg2 + 0x2C);
        glXGetConfig(arg0, arg1, 0xE, arg2 + 0x38);
        glXGetConfig(arg0, arg1, 0xF, arg2 + 0x3C);
        glXGetConfig(arg0, arg1, 0x10, arg2 + 0x40);
        glXGetConfig(arg0, arg1, 0x11, arg2 + 0x44);
        glXGetConfig(arg0, arg1, 0x186A0, arg2 + 0x4C);
        var_v0 = glXGetConfig(arg0, arg1, 0x186A1, arg2 + 0x48);
    } else {
        var_v0 = glXGetConfig(arg0, arg1, 2, arg2 + 8);
    }
    return var_v0;
}

void searchIVI(void **arg0, s32 arg1, s32 arg2) {
    void **var_v0;

    if (arg1 > 0) {
        var_v0 = arg0;
loop_2:
        if ((*var_v0)->unk4 != arg2) {
            var_v0 += 0x50;
            if (((arg1 * 0x50) + arg0) == var_v0) {

            } else {
                goto loop_2;
            }
        }
    }
}

void __iglooGetVisualInfoFromVisualID(s64 arg0, s64 arg1) {
    __iglooFreeFullVisualInfoData(arg0->unk18, arg0->unk14, (void *) arg1);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        return;
    }
    __iglooFreeFullVisualInfoData(subroutine_arg2->unk40, subroutine_arg2->unk3C, (void *) subroutine_arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        return;
    }
    __iglooFreeFullVisualInfoData(subroutine_arg2->unk20, subroutine_arg2->unk1C, (void *) subroutine_arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        return;
    }
    __iglooFreeFullVisualInfoData(subroutine_arg2->unk30, subroutine_arg2->unk2C, (void *) subroutine_arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        return;
    }
    __iglooFreeFullVisualInfoData(subroutine_arg2->unk28, subroutine_arg2->unk24, (void *) subroutine_arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        return;
    }
    __iglooFreeFullVisualInfoData(subroutine_arg2->unk38, subroutine_arg2->unk34, (void *) subroutine_arg0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {

    }
}

/*
Decompilation failure in function __iglooChooseVisual:

Unable to determine jump table for jr instruction at vismgr.s line 1120.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/
