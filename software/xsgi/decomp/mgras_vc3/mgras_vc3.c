? ErrorF(void *);                                   /* extern */
s32 SDBgetSymbolValueScalar(u8 *, ? *, u8 **, u8 *, s8 *, void *, u8 *); /* extern */
? free(void *, ? *);                                /* extern */
? memmove(? *, void *, s32, s32);                   /* extern */
? memset(? *, ?, ?);                                /* extern */
s64 mgrasDebugf(? *, ? *, void *, void *, s32, void *); /* extern */
s32 strcasecmp(s32, s32);                           /* extern */
? strcpy(u8 *, u8 *);                               /* extern */
s32 strlen(u8 *);                                   /* extern */
extern s32 ScreenSaverInterval;
extern ? ddxActiveScreens;
extern s32 ddxCurrentScreen;
extern s32 defaultScreenSaverInterval;
extern u8 *errno;
extern s32 moninfoData;
extern s32 numMonitors;
extern ? savedScreenInfo;
extern s32 screenIsSaved;
extern ? sub_5e3d0000;
extern ? sub_5e3e0000;
extern ? sub_5e4a0000;
extern ? sub_5e4f0000;
extern ? sub_5e510000;
extern s32 vcScreenPrivateIndex;

void vc3LoadSRAM(mgras_hw *hw, u32 addr, u32 count, u32 *data) {
    s64 sp20;
    s64 sp18;
    s32 temp_s2;
    s32 var_a1;
    s64 temp_a5;
    u16 temp_a0;
    u32 var_a3;
    void *temp_s0;

    temp_a5 = M2C_ERROR(/* Read from unset register $a4 */) + M2C_ERROR(/* Read from unset register $a4 */);
    temp_s0 = *addr;
    temp_s2 = M2C_ERROR(/* Read from unset register $a4 */);
    if ((u32) (temp_a5 + data) > 0x10000U) {
        sp18 = (s64) count;
        sp20 = temp_a5;
        saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3FD8, data, temp_s2);
    }
    var_a1 = 0;
    if (temp_s0->unk70100 & 0x1F) {
        do {

        } while (temp_s0->unk70100 & 0x1F);
    }
    var_a3 = count;
    temp_s0->unk62038 = (s32) ((((s32) data & 0xFFFF) << 8) | 0x07000000);
    if (temp_s2 != 0) {
loop_8:
        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a3) */);
        if (var_a1 == 6) {
            var_a1 = 0;
            if (temp_s0->unk70100 & 0x1F) {
                do {

                } while (temp_s0->unk70100 & 0x1F);
            }
        }
        temp_a0 = *var_a3;
        var_a3 += 2;
        var_a1 += 1;
        temp_s0->unk62190 = temp_a0;
        if (var_a3 != (temp_a5 + count)) {
            goto loop_8;
        }
    }
}

void mgrasQryMonitor(void *arg0, s32 arg1) {
    s32 temp_a3;
    s32 temp_t9;
    void *temp_a4;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x13A5BC;
    temp_t9 = arg0->unk1B4;
    temp_a4 = **((vcScreenPrivateIndex * 4) + temp_t9) + (arg1 * 0x48);
    temp_a3 = (*((temp_gp->unk-3140 * 4) + temp_t9))->unk28->unk29 & 0xF;
    if (arg1 > 0) {
        temp_gp->unk-7358(temp_a4, &sub_5e4f0000 + 0x3100, 0x40, temp_a3, temp_a4);
        return;
    }
    switch (temp_a3) {                              /* irregular */
    default:
        if (temp_a4->unk40 == 0) {
            temp_gp->unk-7358(temp_a4, &sub_5e4f0000 + 0x3100, 0x40, temp_a3, temp_a4);
        }
        break;
    case 1:
        temp_gp->unk-7358(temp_a4, &sub_5e4f0000 + 0x3108, 0x40, temp_a3, temp_a4);
        break;
    case 2:
        temp_gp->unk-7358(temp_a4, &sub_5e4f0000 + 0x3118, 0x40, temp_a3, temp_a4);
        break;
    case 6:
        temp_gp->unk-7358(temp_a4, &sub_5e4f0000 + 0x3128, 0x40, temp_a3, temp_a4);
        break;
    case 11:
        temp_gp->unk-7358(temp_a4, &sub_5e4f0000 + 0x3138, 0x40, temp_a3, temp_a4);
        break;
    }
}

s64 mgrasLstVideoFmt(void *arg0, s32 arg1, s64 arg2, s32 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    ? *sp0;
    ? *temp_a0;
    ? *var_s0;
    s64 temp_v0;
    s64 var_v0;
    void *temp_a7;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x139AC0;
    temp_a7 = *(arg0->unk1B4 + (temp_gp->unk-3140 * 4));
    sp0 = NULL;
    if (arg1 > 0) {
        return 0;
    }
    sp18 = arg2;
    if (temp_a7->unk2C != 1) {
        var_v0 = mgrasDebugf(temp_gp->unk-5548, &sub_5e4f0000 + 0x3150, &sub_5e3d0000 + 0x7168, sp, arg3, temp_a7);
        if (var_v0 > 0) {
            goto block_4;
        }
        /* Duplicate return node #11. Try simplifying control flow for better match */
        return var_v0;
    }
    var_v0 = mgrasDebugf(temp_gp->unk-554C, &sub_5e4f0000 + 0x3150, &sub_5e3d0000 + 0x7168, sp, arg3, temp_a7);
    if (var_v0 <= 0) {
        return var_v0;
    }
block_4:
    sp10 = var_v0;
    temp_v0 = mgrasDebugf(sp0, (? *) sp18, (void *) var_v0);
    sp8 = temp_v0;
    if (temp_v0 != sp10) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x3158, sp10, sp8);
    }
    var_s0 = sp0;
    if (var_s0 != NULL) {
        do {
            temp_a0 = var_s0;
            var_s0 = *var_s0;
            temp_gp->unk-73A4(temp_a0);
        } while (var_s0 != NULL);
    }
    return sp8;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0x128, 0x12c], gap at: 0xc0. */
s64 mgrasLoadTimingTable(void *arg0, u8 *arg1, ? *arg2, s64 arg3, s64 arg4, s64 arg5) {
    u8 *sp90;
    u8 *sp8C;
    u8 *sp88;
    s8 sp82;
    s8 sp81;
    s8 sp80;
    u8 *sp70;
    s8 *sp24;
    s32 sp20;
    void *sp1C;
    s32 sp18;
    void *sp14;
    s32 sp10;
    s32 spC;
    s32 sp4;
    s32 sp0;
    ? *temp_a1;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_v0;
    s32 temp_v0_5;
    s32 var_a1;
    s32 var_a7;
    s64 temp_v0_3;
    void *temp_a2;
    void *temp_s1;
    void *temp_s3;
    void *temp_v0_2;
    void *temp_v0_4;

    unkspF8 = arg3;
    unkspE8 = arg4;
    unkspF0 = arg5;
    unksp100 = 0;
    unksp108 = 0;
    unkspE0 = 0;
    temp_s3 = *(arg0->unk1B4 + (saved_reg_gp->unk-3140 * 4));
    unksp110 = (s64) arg0->unk74->unk64;
    if (temp_s3->unk90 != 0) {
        temp_a0 = temp_s3->unk94;
        temp_s3->unk90 = 0;
        if (temp_a0 != 0) {
            arg0->unk74->unk8C(temp_a0, temp_s3->unk98, temp_s3->unk9C, arg0);
        }
    }
    saved_reg_gp->unk-7574(sp, 0, 0x70);
    unkspD8 = (s64) arg0;
    sp4 = arg2->unk104;
    temp_s1 = &sub_5e510000 - 0x7B34;
    if (SDBgetSymbolValueScalar(arg1, temp_s1->unkEC, sp + 8) != 0) {
        spC = (s32) (s64) arg2->unk110;
        M2C_TRAP_IF(0xF4240 == 0);
        sp10 = (s32) (arg2->unk118 + 0x7A120) / 1000000;
        if (SDBgetSymbolValueScalar(arg1, saved_reg_gp->unk-54EC, &sp70) != 0) {
            sp80 = (s8) sp70;
            if (SDBgetSymbolValueScalar(arg1, saved_reg_gp->unk-54E8, &sp70 + 4, sp70) != 0) {
                sp81 = (s8) sp74;
                if (SDBgetSymbolValueScalar(arg1, saved_reg_gp->unk-54E4, &sp70 + 8, sp74) != 0) {
                    sp24 = &sp80;
                    sp82 = (s8) sp78;
                    if (SDBgetSymbolValueScalar(arg1, temp_s1->unk0, sp + 0x30, sp78, &sp80) != 0) {
                        if (SDBgetSymbolValueScalar(arg1, temp_s1->unk4, sp + 0x34) != 0) {
                            temp_a1 = temp_s1->unk1C;
                            if (SDBgetSymbolValueScalar(arg1, temp_s1->unk18, sp + 0x54) != 0) {
                                sp8C = NULL;
                                sp88 = NULL;
                                if (SDBgetSymbolValueScalar(arg1, temp_a1, sp + 0x50) != 0) {
                                    temp_a2 = sp + 0x58;
                                    unkspD0 = (s64) temp_a2;
                                    if (saved_reg_gp->unk-7648(arg1, temp_s1->unk20, temp_a2, 6) != 0) {
                                        if (SDBgetSymbolValueScalar(arg1, temp_s1->unk2C, sp + 0x2C) != 0) {
                                            if (SDBgetSymbolValueScalar(arg1, temp_s1->unk24, &sp88) != 0) {
                                                if (SDBgetSymbolValueScalar(arg1, temp_s1->unk28, &sp8C) != 0) {
                                                    *unkspE8 = sp88;
                                                    *unkspF0 = sp8C;
                                                    if (SDBgetSymbolValueScalar(arg1, saved_reg_gp->unk-5524, sp + 0x28) != 0) {
                                                        if (SDBgetSymbolValueScalar(arg1, temp_s1->unk34, sp) != 0) {
                                                            SDBgetSymbolValueScalar(arg1, temp_s1->unkDC, &sp90);
                                                            var_a1 = sp0;
                                                            if (sp90 != NULL) {
                                                                var_a1 |= 0x20;
                                                                sp0 = var_a1;
                                                            }
                                                            sp0 = unkspF8 | var_a1;
                                                            if (unkspF8 & 0x40000000) {
                                                                temp_a4 = temp_s3->unk88;
                                                                if (temp_a4 == sp30) {
                                                                    temp_a1_2 = temp_s3->unkAC;
                                                                    if ((temp_a4 != temp_a1_2) && (temp_a1_2 != 0)) {
                                                                        temp_s3->unk88 = temp_a1_2;
                                                                    }
                                                                }
                                                            } else {
                                                                temp_s3->unk84 = sp34;
                                                                temp_s3->unk88 = sp30;
                                                                temp_s3->unk8 = sp54;
                                                                temp_s3->unkC = sp50;
                                                                saved_reg_gp->unk-74E4(temp_s3 + 0x10, unkspD0, 0x18, sp50, sp54, sp30, sp34);
                                                                if ((sp28 >= 2U) && (sp0 & 4)) {
                                                                    temp_s3->unk4C = (s32) (temp_s3->unk4C | 8);
                                                                } else {
                                                                    temp_s3->unk4C = (s32) (temp_s3->unk4C & ~8);
                                                                }
                                                            }
                                                            if (SDBgetSymbolValueScalar(arg1, temp_s1->unk8, sp + 0x38) != 0) {
                                                                if (SDBgetSymbolValueScalar(arg1, temp_s1->unkC, sp + 0x3C) != 0) {
                                                                    if (SDBgetSymbolValueScalar(arg1, temp_s1->unk10, sp + 0x40) != 0) {
                                                                        if (SDBgetSymbolValueScalar(arg1, temp_s1->unk14, sp + 0x44) != 0) {
                                                                            if (SDBgetSymbolValueScalar(arg1, temp_s1->unk30, sp + 0x48) != 0) {
                                                                                temp_v0 = saved_reg_gp->unk-764C(arg1, &sub_5e4f0000 + 0x31A8);
                                                                                sp18 = temp_v0;
                                                                                unkspC8 = (s64) temp_v0;
                                                                                temp_v0_2 = saved_reg_gp->unk-7364(temp_v0, 2, temp_v0);
                                                                                sp14 = temp_v0_2;
                                                                                if (temp_v0_2 != NULL) {
                                                                                    unksp100 = saved_reg_gp->unk-7648(arg1, &sub_5e4f0000 + 0x31A8, temp_v0_2, unkspC8) == 0;
                                                                                    if (unksp100 == 0) {
                                                                                        temp_v0_3 = saved_reg_gp->unk-764C(arg1, &sub_5e4f0000 + 0x31B8);
                                                                                        unkspC0 = temp_v0_3;
                                                                                        sp20 = (s32) temp_v0_3;
                                                                                        temp_v0_4 = saved_reg_gp->unk-7364((s32) temp_v0_3, 2, (s32) temp_v0_3, temp_v0_3);
                                                                                        sp1C = temp_v0_4;
                                                                                        if (temp_v0_4 != NULL) {
                                                                                            unksp108 = saved_reg_gp->unk-7648(arg1, &sub_5e4f0000 + 0x31B8, temp_v0_4, unkspC0) == 0;
                                                                                            if (unksp108 == 0) {
                                                                                                temp_v0_5 = saved_reg_gp->unk-74DC(unksp110, 0x6D670011, sp);
                                                                                                if (temp_v0_5 >= 0) {
                                                                                                    temp_a4_2 = temp_s3->unk88;
                                                                                                    if (temp_a4_2 != sp30) {
                                                                                                        var_a7 = sp28 < 2U;
                                                                                                        unkspB8 = (s64) unkspD8->unk74;
                                                                                                        if ((var_a7 == 0) && (sp0 & 4)) {
                                                                                                            temp_s3->unk4C = (s32) (temp_s3->unk4C | 8);
                                                                                                        } else {
                                                                                                            var_a7 = -9;
                                                                                                            temp_s3->unk4C = (s32) (temp_s3->unk4C & ~8);
                                                                                                        }
                                                                                                        temp_s3->unkAC = temp_a4_2;
                                                                                                        temp_s3->unk88 = sp30;
                                                                                                        temp_a5 = arg2->unk100;
                                                                                                        temp_s3->unkA4 = temp_a5;
                                                                                                        temp_a4_3 = arg2->unk104;
                                                                                                        temp_s3->unkA8 = temp_a4_3;
                                                                                                        saved_reg_gp->unk-7DF4(unkspD8, 1, 8, unkspB8->unk60 + 0x180, temp_a4_3, temp_a5, sp30, var_a7);
                                                                                                        saved_reg_gp->unk-7DF4(unkspD8, 0, 0x20, unkspB8->unk60);
                                                                                                    } else {
                                                                                                        temp_s3->unkA4 = (s32) unkspD8->unkA;
                                                                                                        temp_s3->unkA8 = (s32) unkspD8->unk8;
                                                                                                    }
                                                                                                    unkspE0 = 1;
                                                                                                } else {
                                                                                                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x31C8, temp_v0_5);
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            saved_reg_gp->unk-312C = 0x429;
                                                                                            mgrasDebugf(&sub_5e4f0000 + 0x3070, (? *)0x429);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    saved_reg_gp->unk-312C = 0x41E;
                                                                                    mgrasDebugf(&sub_5e4f0000 + 0x3070, (? *)0x41E);
                                                                                }
                                                                            } else {
                                                                                saved_reg_gp->unk-312C = 0x418;
                                                                                mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk30, (void *)0x418);
                                                                            }
                                                                        } else {
                                                                            saved_reg_gp->unk-312C = 0x417;
                                                                            mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk14, (void *)0x417);
                                                                        }
                                                                    } else {
                                                                        saved_reg_gp->unk-312C = 0x416;
                                                                        mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk10, (void *)0x416);
                                                                    }
                                                                } else {
                                                                    saved_reg_gp->unk-312C = 0x415;
                                                                    mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unkC, (void *)0x415);
                                                                }
                                                            } else {
                                                                saved_reg_gp->unk-312C = 0x414;
                                                                mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk8, (void *)0x414);
                                                            }
                                                        } else {
                                                            saved_reg_gp->unk-312C = 0x3EB;
                                                            mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk34, (void *)0x3EB);
                                                        }
                                                    } else {
                                                        saved_reg_gp->unk-312C = 0x3EA;
                                                        mgrasDebugf(&sub_5e4f0000 + 0x30A8, saved_reg_gp->unk-5524, (void *)0x3EA);
                                                    }
                                                } else {
                                                    saved_reg_gp->unk-312C = 0x3DC;
                                                    mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk28, (void *)0x3DC);
                                                }
                                            } else {
                                                saved_reg_gp->unk-312C = 0x3DB;
                                                mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk24, (void *)0x3DB);
                                            }
                                        } else {
                                            saved_reg_gp->unk-312C = 0x3DA;
                                            mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk2C, (void *)0x3DA);
                                        }
                                    } else {
                                        saved_reg_gp->unk-312C = 0x3D9;
                                        mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk20, (void *)0x3D9);
                                    }
                                } else {
                                    saved_reg_gp->unk-312C = 0x3D8;
                                    mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk1C, (void *)0x3D8);
                                }
                            } else {
                                saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3208, (s32) temp_a1);
                            }
                        } else {
                            saved_reg_gp->unk-312C = 0x3D4;
                            mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk4, (void *)0x3D4);
                        }
                    } else {
                        saved_reg_gp->unk-312C = 0x3D3;
                        mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unk0, (void *)0x3D3);
                    }
                } else {
                    saved_reg_gp->unk-312C = 0x3D0;
                    mgrasDebugf(&sub_5e4f0000 + 0x30A8, saved_reg_gp->unk-54E4, (void *)0x3D0);
                }
            } else {
                saved_reg_gp->unk-312C = 0x3CE;
                mgrasDebugf(&sub_5e4f0000 + 0x30A8, saved_reg_gp->unk-54E8, (void *)0x3CE);
            }
        } else {
            saved_reg_gp->unk-312C = 0x3CC;
            mgrasDebugf(&sub_5e4f0000 + 0x30A8, saved_reg_gp->unk-54EC, (void *)0x3CC);
        }
    } else {
        saved_reg_gp->unk-312C = 0x3C6;
        mgrasDebugf(&sub_5e4f0000 + 0x30A8, temp_s1->unkEC, (void *)0x3C6);
    }
    if (sp14 != NULL) {
        saved_reg_gp->unk-73A4(sp14);
        sp14 = NULL;
    }
    if (sp1C != NULL) {
        free(sp1C, free);
    }
    return unkspE0;
}

s32 mgrasLoadAndFree(s64 arg0, s64 arg1, ? *arg2, s64 arg3, ? *arg4, s64 arg5) {
    s64 sp8E8;
    s64 sp8E0;
    s64 sp8D8;
    s64 sp8D0;
    s64 sp8C8;
    s64 sp898;
    s64 sp890;
    s64 sp888;
    s64 sp880;
    s64 sp878;
    s64 sp870;
    s64 sp868;
    s64 sp860;
    s64 sp858;
    s64 sp850;
    s64 sp848;
    s64 sp840;
    s64 sp838;
    s64 sp830;
    s64 sp828;
    s64 sp820;
    s64 sp818;
    s64 sp810;
    s32 sp80C;
    s32 sp808;
    s32 sp804;
    s32 sp800;
    ? sp400;
    ? sp200;
    ? *temp_a1_3;
    ? *temp_a1_4;
    ? *temp_a1_5;
    ? *temp_a1_6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 var_a2;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 var_ra;
    s64 var_s2;
    s64 var_t0;
    s64 var_t1;
    s64 var_t2;
    s64 var_t3;
    s64 var_v0;
    u32 var_s6;
    u8 *temp_v0_2;
    u8 *var_s1;
    u8 temp_a2;
    void *temp_a5;
    void *temp_a6_2;
    void *temp_at;
    void *temp_gp;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_v0_3;
    void *temp_v0_6;
    void *temp_v0_7;

    var_ra = saved_reg_ra;
    sp898 = 0;
    sp860 = 0;
    sp878 = 0;
    sp850 = 0;
    sp840 = 0;
    sp868 = 0;
    sp870 = 0;
    sp880 = 0;
    sp890 = arg5;
    sp818 = arg3;
    sp848 = arg1;
    sp810 = arg0;
    temp_a0 = arg0->unk1B4;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x138E5C;
    var_t3 = 0;
    var_t2 = 0;
    var_t1 = 0;
    temp_s0 = *((vcScreenPrivateIndex * 4) + temp_a0);
    var_t0 = 0;
    var_v0 = 0;
    sp888 = (s64) *((temp_gp->unk-3140 * 4) + temp_a0);
    var_s1 = NULL;
    sp858 = (s64) temp_s0->unk8;
    if (arg4 == NULL) {
        goto block_1;
    }
    sp8E8 = 0;
    sp8E0 = 0;
    sp8D8 = 0;
    sp8D0 = 0;
    sp838 = 0;
    temp_gp->unk-7358(sp, arg4, temp_gp->unk-73C4(arg4));
    *(temp_gp->unk-73C4(arg4) + sp) = 0;
    if (sp890 == 0) {
        temp_s0_2 = *((sp810->unk0 * 4) + &ddxActiveScreens);
        if (arg2 != NULL) {
            mgrasDebugf(arg2, (? *) sp818);
        }
        temp_gp->unk-73E4(&sp200, &sub_5e4f0000 + 0x3240, temp_s0_2->unk44->unkC);
        temp_v0 = temp_gp->unk-72F0(&sp200, &sub_5e4f0000 + 0x3268);
        if (temp_v0 == 0) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3270, &sp200);
            return 0xA;
        }
        temp_gp->unk-7344(temp_v0, &sub_5e4f0000 + 0x32A8, sp);
        temp_gp->unk-72EC(temp_v0);
        return 0;
    }
    temp_gp->unk-73D0(sp, &sub_5e4f0000 + 0x32B0);
    if (sp888->unk2C != 1) {
        mgrasDebugf((? *) &sp400, temp_gp->unk-5548, sp);
    } else {
        mgrasDebugf((? *) &sp400, temp_gp->unk-554C, sp);
    }
    sp828 = 0;
    temp_v0_2 = temp_gp->unk-763C(&sp400);
    var_s1 = temp_v0_2;
    if (temp_v0_2 == NULL) {
        temp_gp->unk-312C = 0x4CE;
        mgrasDebugf(&sub_5e4f0000 + 0x32B8, &sp400, (void *)0x4CE);
        sp880 = 1;
        var_t3 = sp8D0;
        var_t2 = sp8D8;
        var_t1 = sp8E0;
        var_t0 = sp8E8;
        var_ra = sp8C8;
    } else {
        if (temp_gp->unk-7644(temp_v0_2, (&sub_5e510000 - 0x7B34)->unk34, &sp800) != 0) {
            if (temp_gp->unk-7644(var_s1, (&sub_5e510000 - 0x7B34)->unk3C, &sp804) != 0) {
                temp_v0_3 = *(sp810->unk1B4 + (temp_gp->unk-3140 * 4));
                temp_a2 = temp_v0_3->unk28->unk29;
                if ((temp_a2 != 0x82) && (temp_a2 != 0x83)) {
                    var_a2 = sp804 != 1;
                } else {
                    var_a2 = sp804 == 1;
                }
                if (var_a2 != 0) {
                    temp_a4 = sp800 & 0x30000;
                    if (temp_a4 != 0x30000) {
                        var_a2 = ((temp_a4 ^ 0x20000) != 0) ? ((temp_a4 != 0x10000) ? 3 : 2) : 0;
                    } else {
                        var_a2 = 1;
                    }
                    if ((temp_v0_3->unk80 == var_a2) && (temp_a6 = sp810->unk8 < arg4->unk104, (temp_a6 == 0)) && (temp_a7 = sp810->unkA < arg4->unk100, (temp_a7 == 0))) {
                        sp80C = (s32) sp828;
                        sp808 = (s32) sp838;
                        if (mgrasLoadTimingTable((void *) sp810, var_s1, arg4, 0x40000000, (s64) &sp80C, (s64) &sp808, temp_a6, temp_a7) != 0) {
                            temp_v0_4 = temp_gp->unk-3140 * 4;
                            temp_a5 = *(sp810->unk1B4 + temp_v0_4);
                            temp_a6_2 = temp_a5->unk0;
                            temp_a5->unk4->unk9F0 = 4;
                            temp_a6_2->unk61C88 = 4;
                            temp_a6_2->unk61F00 = (s32) temp_a5->unk84;
                            temp_a6_2->unk62038 = (s32) (((temp_a5->unk58 & 0xFFFF) << 8) | 0x04000000);
                            temp_a6_2->unk62038 = (s32) (((temp_a5->unk5A & 0xFFFF) << 8) | 0x05000000);
                            if (sp810->unk0 == ddxCurrentScreen) {
                                temp_at = *(sp810->unk1B4 + temp_v0_4);
                                temp_a7_2 = temp_at->unk44 | 3;
                                temp_at->unk44 = temp_a7_2;
                                temp_at->unk0->unk62038 = (s32) (((temp_a7_2 & 0xFFFF) << 8) | 0x1D000000);
                            }
                            temp_a1 = (sp848 * 0x1F4) + sp858;
                            sp830 = temp_a1;
                            temp_a1_2 = temp_a1 + 0x14;
                            sp820 = temp_a1_2;
                            var_ra = sp8C8;
                            if (temp_gp->unk-7578(arg4, temp_a1_2, sp858) != 0) {
                                goto block_41;
                            }
                            if (sp888->unkA0 == 0) {

                            } else {
block_41:
                                temp_a0_2 = ((void *) sp830)->unk144;
                                if (temp_a0_2 != 0) {
                                    temp_gp->unk-73A4(temp_a0_2);
                                    sp830->unk144 = 0;
                                }
                                temp_gp->unk-74E4(sp820, arg4, 0x138);
                                temp_v0_5 = temp_gp->unk-7364(arg4->unk12C, 0x24);
                                sp830->unk144 = temp_v0_5;
                                if (temp_v0_5 == 0) {
                                    temp_gp->unk-312C = 0x4F2;
                                    mgrasDebugf(&sub_5e4f0000 + 0x3070, (? *)0x4F2);
                                    sp860 = 1;
                                    goto block_45;
                                }
                                temp_a3 = arg4->unk12C;
                                temp_gp->unk-74E4((s64) temp_v0_5, arg4->unk130, temp_a3 * 0x24, temp_a3);
                                sp830->unk0 = 1;
                                var_ra = sp8C8;
                                if (sp888->unkA0 != 0) {
                                    sp888->unkA0 = 0;
                                    temp_v0_6 = *(sp810->unk1B4 + (temp_gp->unk-3140 * 4));
                                    temp_a1_3 = temp_v0_6->unk0;
                                    if (temp_v0_6->unk6C != 0) {
                                        temp_gp->unk-74EC(&sub_5e4f0000 + 0x3348, temp_a1_3);
                                        var_ra = sp8C8;
                                    } else if (temp_v0_6->unkA0 != 0) {
                                        temp_a1_4 = temp_v0_6->unk0;
                                        if (temp_a1_4->unk70100 & 0x1F) {
                                            do {

                                            } while (temp_a1_4->unk70100 & 0x1F);
                                        }
                                        temp_a1_4->unk6802C = 0x6319;
                                        temp_a1_4->unk62D08 = 0x20;
                                        temp_a1_4->unk62D88 = 4;
                                        temp_a1_4->unk62D88 = 0;
                                        temp_a1_4->unk62D08 = 0x22;
                                        temp_a1_4->unk62D88 = 0xFF;
                                        temp_a1_4->unk62D88 = 0xFF;
                                        temp_a1_4->unk62D08 = 0x30;
                                        temp_a1_4->unk62D88 = 4;
                                        temp_a1_4->unk62D88 = 0;
                                        temp_a1_4->unk62D08 = 0x32;
                                        temp_a1_4->unk62D88 = 0xFF;
                                        temp_a1_4->unk62D88 = 0xFF;
                                        temp_a1_4->unk62D08 = 6;
                                        temp_a1_4->unk62D88 = 0x30;
                                        temp_a1_4->unk62D08 = 2;
                                        temp_a1_4->unk62D88 = 0xFF;
                                        temp_a1_4->unk62D08 = 0x16;
                                        temp_a1_4->unk62D88 = 0x30;
                                        temp_a1_4->unk62D08 = 0x12;
                                        temp_a1_4->unk62D88 = 0xFF;
                                    } else {
                                        if (temp_a1_3->unk70100 & 0x1F) {
                                            do {

                                            } while (temp_a1_3->unk70100 & 0x1F);
                                        }
                                        temp_a1_3->unk61811 = 4;
                                        temp_a1_3->unk61910 = 0xFF;
                                    }
                                    if ((u32) temp_s0->unk4 >= 2U) {
                                        var_s2 = sp858;
                                        var_s6 = 1;
loop_64:
                                        temp_a0_3 = var_s2->unk338;
                                        var_s6 += 1;
                                        var_s2->unk1F4 = 0;
                                        if (temp_a0_3 != 0) {
                                            temp_gp->unk-73A4(temp_a0_3);
                                            var_s2->unk334 = 0;
                                            var_s2->unk338 = 0;
                                        }
                                        var_s2 += 0x1F4;
                                        if (var_s6 < (u32) temp_s0->unk4) {
                                            goto loop_64;
                                        }
block_45:
                                        var_ra = sp8C8;
                                    }
                                }
                                sp878 = sp860;
                            }
                            var_t3 = sp878;
                        } else {
                            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3318);
                            sp850 = 1;
                            var_t3 = sp8D0;
                            var_ra = sp8C8;
                        }
                        var_t2 = sp850;
                    } else {
                        goto block_67;
                    }
                } else {
block_67:
                    temp_gp->unk-74EC(&sub_5e4f0000 + 0x32D0, arg4, var_a2);
                    var_t3 = sp8D0;
                    var_t2 = sp8D8;
                    var_ra = sp8C8;
                    sp840 = 1;
                }
            } else {
                temp_gp->unk-312C = 0x4D3;
                mgrasDebugf(&sub_5e4f0000 + 0x30A8, (&sub_5e510000 - 0x7B34)->unk3C, (void *)0x4D3);
                sp868 = 1;
                var_t3 = sp8D0;
                var_t2 = sp8D8;
                var_ra = sp8C8;
            }
            var_t1 = sp868;
        } else {
            temp_gp->unk-312C = 0x4D2;
            mgrasDebugf(&sub_5e4f0000 + 0x30A8, (&sub_5e510000 - 0x7B34)->unk34, (void *)0x4D2);
            sp870 = 1;
            var_t3 = sp8D0;
            var_t2 = sp8D8;
            var_t1 = sp8E0;
            var_ra = sp8C8;
        }
        var_t0 = sp870;
    }
    var_v0 = sp880;
block_1:
    if (var_v0 == 0) {
        if ((var_t0 == 0) && (var_t1 == 0) && (sp840 == 0) && (var_t2 == 0) && (var_t3 == 0)) {
            temp_v0_7 = *(sp810->unk1B4 + (temp_gp->unk-3140 * 4));
            screenIsSaved = 1;
            temp_a1_5 = temp_v0_7->unk0;
            if (temp_v0_7->unk6C != 0) {
                if (0 == 0) {
                    sp8C8 = var_ra;
                    temp_gp->unk-74EC(&sub_5e4f0000 + 0x3348, temp_a1_5);
                }
            } else if (temp_v0_7->unkA0 != 0) {
                temp_a1_6 = temp_v0_7->unk0;
                if (temp_a1_6->unk70100 & 0x1F) {
                    do {

                    } while (temp_a1_6->unk70100 & 0x1F);
                }
                temp_a1_6->unk6802C = 0x6319;
                temp_a1_6->unk62D08 = 0x20;
                temp_a1_6->unk62D88 = 4;
                temp_a1_6->unk62D88 = 0;
                temp_a1_6->unk62D08 = 0x22;
                temp_a1_6->unk62D88 = 0xFF;
                temp_a1_6->unk62D88 = 0xFF;
                temp_a1_6->unk62D08 = 0x30;
                temp_a1_6->unk62D88 = 4;
                temp_a1_6->unk62D88 = 0;
                temp_a1_6->unk62D08 = 0x32;
                temp_a1_6->unk62D88 = 0xFF;
                temp_a1_6->unk62D88 = 0xFF;
                temp_a1_6->unk62D08 = 6;
                temp_a1_6->unk62D88 = 0x30;
                temp_a1_6->unk62D08 = 2;
                temp_a1_6->unk62D88 = 0xFF;
                temp_a1_6->unk62D08 = 0x16;
                temp_a1_6->unk62D88 = 0x30;
                temp_a1_6->unk62D08 = 0x12;
                temp_a1_6->unk62D88 = 0xFF;
            } else {
                if (temp_a1_5->unk70100 & 0x1F) {
                    do {

                    } while (temp_a1_5->unk70100 & 0x1F);
                }
                temp_a1_5->unk61811 = 4;
                temp_a1_5->unk61910 = 0xFF;
            }
            sp898 = 1;
        }
    }
    if (arg2 == NULL) {
        if (var_s1 != NULL) {
            goto block_11;
        }
    } else {
        sp8C8 = var_ra;
        mgrasDebugf(arg2, (? *) sp818);
        if (var_s1 != NULL) {
block_11:
            sp8C8 = var_ra;
            temp_gp->unk-7640(var_s1);
        }
    }
    if (sp898 != 0) {
        return 0;
    }
    return 2;
}

void mgrasSetScrnGlock(void *arg0, s32 arg2) {
    s32 sp4;
    s32 sp0;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1383F4;
    temp_v0 = (*(arg0->unk1B4 + (vcScreenPrivateIndex * 4)))->unk3A4->unk4;
    temp_a5 = arg0->unk74->unk64;
    if ((temp_v0 != 0) && (temp_v0 != 1)) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x3378, temp_v0, 0x1383F4, 1, temp_a5, arg2);
        return;
    }
    sp4 = temp_v0;
    temp_a3 = arg2 != -1;
    sp0 = temp_a3;
    temp_v0_2 = temp_gp->unk-74DC(temp_a5, 0x6D670014, sp, temp_a3, 1, temp_a5, arg2);
    if (temp_v0_2 < 0) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x33B8, temp_v0_2);
    }
}

s32 mgrasSetPltParam(void *arg0, s32 arg2, s32 arg3, s32 arg4) {
    s64 sp8;
    s32 temp_a6;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x137594;
    temp_a6 = (*(arg0->unk1B4 + (*temp_gp->unk-756C * 4)))->unk3A4;
    if (arg2 == 0) {
        sp8 = (s64) temp_a6;
        if (arg3 != 8) {
            return 2;
        }
        temp_gp->unk-74E4(sp, arg4, arg3, temp_a6);
        if (sp4 != 0) {
            if (sp4 != 1) {
                return 2;
            }
            /* Duplicate return node #8. Try simplifying control flow for better match */
            ((void *) sp8)->unk4 = sp4;
            return 0;
        }
        ((void *) sp8)->unk4 = sp4;
        return 0;
    }
    return 2;
}

s32 mgrasQryPltParam(void *arg0, s32 arg2, s32 arg3, s32 arg4) {
    s64 sp0;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1374DC;
    if (arg2 == 0) {
        sp0 = 0;
        if (arg3 != 8) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3460, arg3, 0, arg0);
            goto block_4;
        }
        temp_gp->unk-74E4(arg4, (*(arg0->unk1B4 + (vcScreenPrivateIndex * 4)))->unk3A4, arg3, 0, arg0);
        sp0 = 1;
        /* Duplicate return node #5. Try simplifying control flow for better match */
        return 0;
    }
    sp0 = 0;
    temp_gp->unk-74EC(&sub_5e4f0000 + 0x3490, arg2, 0, arg0);
block_4:
    if (sp0 != 0) {
        return 0;
    }
    return 2;
}

s32 mgrasDefaultTTExists(s64 arg0, u8 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, u8 **arg_sp4, u8 **arg_spC, s32 arg_sp14) {
    s64 spCD8;
    s64 spC80;
    s64 spC78;
    s64 spC70;
    s64 spC68;
    s64 spC60;
    s64 spC58;
    s64 spC50;
    s64 spC48;
    s64 spC40;
    s64 spC38;
    s64 spC30;
    s64 spC28;
    u8 *spC24;
    u8 *spC20;
    u8 *spC18;
    u8 *spC10;
    u8 *spC0C;
    u8 *spC08;
    u8 *spC04;
    u8 *spC00;
    u8 spA00;
    u8 sp600;
    u8 sp400;
    ? sp204;
    u8 sp200;
    s32 temp_a1_11;
    s32 temp_a1_18;
    s32 temp_a1_2;
    s32 temp_a1_5;
    s32 temp_a1_7;
    s32 temp_a1_9;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 var_a1;
    s32 var_a1_10;
    s32 var_a1_11;
    s32 var_a1_12;
    s32 var_a1_13;
    s32 var_a1_14;
    s32 var_a1_15;
    s32 var_a1_16;
    s32 var_a1_17;
    s32 var_a1_18;
    s32 var_a1_19;
    s32 var_a1_20;
    s32 var_a1_21;
    s32 var_a1_22;
    s32 var_a1_23;
    s32 var_a1_24;
    s32 var_a1_25;
    s32 var_a1_26;
    s32 var_a1_27;
    s32 var_a1_28;
    s32 var_a1_29;
    s32 var_a1_2;
    s32 var_a1_30;
    s32 var_a1_31;
    s32 var_a1_32;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_t2_4;
    s32 var_t2_5;
    s32 var_t2_6;
    s32 var_t2_7;
    s32 var_t2_8;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_11;
    s32 var_v0_12;
    s32 var_v0_13;
    s32 var_v0_14;
    s32 var_v0_15;
    s32 var_v0_16;
    s32 var_v0_17;
    s32 var_v0_18;
    s32 var_v0_19;
    s32 var_v0_20;
    s32 var_v0_21;
    s32 var_v0_22;
    s32 var_v0_23;
    s32 var_v0_24;
    s32 var_v0_25;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 temp_v0;
    s8 *temp_v0_9;
    u8 *temp_a1_10;
    u8 *temp_a1_12;
    u8 *temp_a1_3;
    u8 *temp_a1_6;
    u8 *temp_a1_8;
    u8 *temp_v0_10;
    u8 *temp_v0_4;
    u8 *temp_v1;
    u8 *temp_v1_10;
    u8 *temp_v1_11;
    u8 *temp_v1_12;
    u8 *temp_v1_13;
    u8 *temp_v1_14;
    u8 *temp_v1_15;
    u8 *temp_v1_16;
    u8 *temp_v1_17;
    u8 *temp_v1_18;
    u8 *temp_v1_19;
    u8 *temp_v1_20;
    u8 *temp_v1_21;
    u8 *temp_v1_22;
    u8 *temp_v1_23;
    u8 *temp_v1_24;
    u8 *temp_v1_25;
    u8 *temp_v1_26;
    u8 *temp_v1_27;
    u8 *temp_v1_28;
    u8 *temp_v1_29;
    u8 *temp_v1_2;
    u8 *temp_v1_30;
    u8 *temp_v1_31;
    u8 *temp_v1_32;
    u8 *temp_v1_33;
    u8 *temp_v1_34;
    u8 *temp_v1_3;
    u8 *temp_v1_4;
    u8 *temp_v1_5;
    u8 *temp_v1_6;
    u8 *temp_v1_7;
    u8 *temp_v1_8;
    u8 *temp_v1_9;
    u8 *var_a0;
    u8 *var_a0_2;
    u8 *var_a0_3;
    u8 *var_a0_4;
    u8 *var_s0;
    u8 *var_s0_2;
    u8 *var_s0_3;
    u8 *var_s0_4;
    u8 *var_s0_5;
    u8 *var_s0_6;
    u8 *var_t1;
    u8 temp_a1;
    u8 temp_a1_13;
    u8 temp_a1_14;
    u8 temp_a1_15;
    u8 temp_a1_16;
    u8 temp_a1_17;
    u8 temp_a1_19;
    u8 temp_a1_20;
    u8 temp_a1_4;
    u8 temp_a2;
    u8 temp_a2_2;
    u8 temp_a3;
    u8 temp_a4;
    u8 temp_at_10;
    u8 temp_at_11;
    u8 temp_at_12;
    u8 temp_at_13;
    u8 temp_at_14;
    u8 temp_at_15;
    u8 temp_at_16;
    u8 temp_at_17;
    u8 temp_at_18;
    u8 temp_at_19;
    u8 temp_at_20;
    u8 temp_at_21;
    u8 temp_at_22;
    u8 temp_at_23;
    u8 temp_at_24;
    u8 temp_at_25;
    u8 temp_at_26;
    u8 temp_at_27;
    u8 temp_at_28;
    u8 temp_at_29;
    u8 temp_at_2;
    u8 temp_at_30;
    u8 temp_at_31;
    u8 temp_at_32;
    u8 temp_at_33;
    u8 temp_at_3;
    u8 temp_at_4;
    u8 temp_at_5;
    u8 temp_at_6;
    u8 temp_at_7;
    u8 temp_at_8;
    u8 temp_at_9;
    void *temp_a0;
    void *temp_at;
    void *temp_s2;
    void *temp_s4;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_t2_3;
    void *temp_t2_4;
    void *temp_t2_5;
    void *temp_t2_6;
    void *temp_t2_7;
    void *temp_t2_8;

    spC80 = arg4;
    spC28 = arg5;
    spC78 = arg6;
    spC58 = arg7;
    spC48 = 0;
    spC38 = arg0;
    spC68 = arg3;
    spC70 = arg2;
    temp_s4 = *(arg0->unk1B4 + (saved_reg_gp->unk-3140 * 4));
    var_s6_2 = 0;
    temp_a2 = (*((arg0->unk0 * 4) + &ddxActiveScreens))->unk44->unkC;
    spC50 = (s64) temp_a2;
    saved_reg_gp->unk-73E4(sp, &sub_5e4f0000 + 0x2968 + 0x8D8, temp_a2, &ddxActiveScreens);
    temp_v0 = saved_reg_gp->unk-72F0(sp, &sub_5e4f0000 + 0x3500);
    spC60 = temp_v0;
    if (temp_v0 != 0) {
        if (saved_reg_gp->unk-7468(&sp200, 0x200, temp_v0) != 0) {
loop_135:
            if ((sp200 != 0x23) && (sp200 != 0xA) && (sp200 != 0x20) && (sp200 != 9)) {
                var_s6_2 = 1;
            } else if (saved_reg_gp->unk-7468(&sp200, 0x200, spC60) == 0) {

            } else {
                goto loop_135;
            }
        }
        saved_reg_gp->unk-72EC(spC60);
    }
    if (arg1 != NULL) {
        if (var_s6_2 != 0) {
            spC40 = (s64) arg_sp14;
            if (saved_reg_gp->unk-72E8(&sp200, &sub_5e4f0000 + 0x3508, 3) != 0) {
                temp_v0_2 = saved_reg_gp->unk-73C4(&sp200);
                if (sp200 != 0x2F) {
                    temp_at = &sub_5e4f0000 + 0x2968;
                    temp_v1 = &(&sp200)[temp_v0_2];
                    temp_v1->unk3 = (u8) temp_at->unk94C;
                    temp_v1->unk2 = (u8) temp_at->unk94B;
                    temp_v1->unk1 = (u8) temp_at->unk94A;
                    temp_v1->unk0 = temp_at->unk949;
                    temp_v1->unk-1 = (u8) temp_at->unk948;
                }
                saved_reg_gp->unk-73C8(arg1, &sp200);
            } else {
                saved_reg_gp->unk-7358(&sp400, &sp204, strlen(&sp200) - 3);
                temp_a0 = &sub_5e4f0000 + 0x2968;
                temp_v1_2 = &(&sp400)[strlen(&sp400)];
                temp_a2_2 = temp_a0->unk94A;
                temp_a3 = temp_a0->unk94B;
                temp_a4 = temp_a0->unk94C;
                temp_v1_2->unk3 = temp_a4;
                temp_v1_2->unk2 = temp_a3;
                temp_v1_2->unk1 = temp_a2_2;
                temp_v1_2->unk0 = temp_a0->unk949;
                temp_v1_2->unk-1 = (u8) temp_a0->unk948;
                saved_reg_gp->unk-73C8(arg1, &sp400, temp_a2_2, temp_a3, temp_a4);
                if (temp_s4->unk28->unk36 != 0) {
                    *spC40 = 1;
                } else {
                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3510, arg1, spC50);
                    var_s6_2 = 0;
                    *spC40 = 0;
                }
            }
        } else {
            spC40 = (s64) arg_sp14;
        }
    } else {
        spC40 = (s64) arg_sp14;
    }
    if (var_s6_2 != 0) {

    } else {
        temp_t2 = temp_s4->unk28;
        temp_a1 = temp_t2->unk29;
        spC48 = 1;
        if (temp_a1 == 0x82) {
            var_a1 = 0x11;
            var_v0 = 0;
            do {
                var_a1 -= 1;
                temp_at_2 = *(var_v0 + (&sub_5e4f0000 + 0x35D0));
                temp_v1_3 = &arg1[var_v0];
                var_v0 += 1;
                *temp_v1_3 = temp_at_2;
            } while (var_a1 > 0);
        } else if (temp_a1 == 0x83) {
            var_v0_2 = 0x12;
            var_a1_2 = 0;
            do {
                var_v0_2 -= 1;
                temp_at_3 = *(var_a1_2 + (&sub_5e4f0000 + 0x35E8));
                temp_v1_4 = &arg1[var_a1_2];
                var_a1_2 += 1;
                *temp_v1_4 = temp_at_3;
            } while (var_v0_2 > 0);
        } else if (temp_t2->unk2A != 0x48) {
            var_a1_3 = 0x11;
            var_v0_3 = 0;
            do {
                var_a1_3 -= 1;
                temp_at_4 = *(var_v0_3 + (&sub_5e4f0000 + 0x3618));
                temp_v1_5 = &arg1[var_v0_3];
                var_v0_3 += 1;
                *temp_v1_5 = temp_at_4;
            } while (var_a1_3 > 0);
        } else {
            var_v0_4 = 0x11;
            var_a1_4 = 0;
            do {
                var_v0_4 -= 1;
                temp_at_5 = *(var_a1_4 + (&sub_5e4f0000 + 0x3600));
                temp_v1_6 = &arg1[var_a1_4];
                var_a1_4 += 1;
                *temp_v1_6 = temp_at_5;
            } while (var_v0_4 > 0);
        }
        strcpy(&sp200, arg1);
    }
    var_s6 = 0;
    temp_s2 = &sub_5e510000 - 0x7B34;
    spC30 = (s64) (&sub_5e4f0000 + 0x2968 + 0x950);
loop_16:
    spC00 = NULL;
    spC04 = NULL;
    spC08 = NULL;
    spC0C = NULL;
    temp_a1_2 = saved_reg_gp->unk-5544;
    if (*spC40 != 0) {
        if (temp_a1_2 != 0) {
            sp600 = 0;
            saved_reg_gp->unk-73D0(&sp600, temp_a1_2);
        }
        temp_v0_3 = strlen(&sp600);
        temp_a1_3 = &(&sp600)[temp_v0_3];
        var_s0 = temp_a1_3;
        if ((temp_v0_3 <= 0) || (temp_a1_3->unk-1 != 0x2F)) {
            temp_a1_3->unk0 = 0x2F;
            var_s0 = temp_a1_3 + 1;
        }
        if (arg1 != NULL) {
            strcpy(var_s0, arg1);
            var_s0 = &var_s0[strlen(arg1)];
        }
        *var_s0 = 0;
        temp_v0_4 = saved_reg_gp->unk-763C(&sp600);
        var_s0_2 = temp_v0_4;
        if (temp_v0_4 == NULL) {
            saved_reg_gp->unk-74EC((void *) spC30, &sp600);
            temp_t2_2 = temp_s4->unk28;
            temp_a1_4 = temp_t2_2->unk29;
            if (temp_a1_4 == 0x82) {
                var_a1_5 = 0x11;
                var_t2 = 0;
                do {
                    var_a1_5 -= 1;
                    temp_at_6 = *(var_t2 + (&sub_5e4f0000 + 0x35D0));
                    temp_v1_7 = &arg1[var_t2];
                    var_t2 += 1;
                    *temp_v1_7 = temp_at_6;
                } while (var_a1_5 > 0);
            } else if (temp_a1_4 == 0x83) {
                var_a1_6 = 0x12;
                var_t2_2 = 0;
                do {
                    var_a1_6 -= 1;
                    temp_at_7 = *(var_t2_2 + (&sub_5e4f0000 + 0x35E8));
                    temp_v1_8 = &arg1[var_t2_2];
                    var_t2_2 += 1;
                    *temp_v1_8 = temp_at_7;
                } while (var_a1_6 > 0);
            } else {
                var_t2_3 = 0x11;
                if (temp_t2_2->unk2A != 0x48) {
                    var_a1_7 = 0;
                    do {
                        var_t2_3 -= 1;
                        temp_at_8 = *(var_a1_7 + (&sub_5e4f0000 + 0x3618));
                        temp_v1_9 = &arg1[var_a1_7];
                        var_a1_7 += 1;
                        *temp_v1_9 = temp_at_8;
                    } while (var_t2_3 > 0);
                } else {
                    var_t2_4 = 0x11;
                    var_a1_8 = 0;
                    do {
                        var_t2_4 -= 1;
                        temp_at_9 = *(var_a1_8 + (&sub_5e4f0000 + 0x3600));
                        temp_v1_10 = &arg1[var_a1_8];
                        var_a1_8 += 1;
                        *temp_v1_10 = temp_at_9;
                    } while (var_t2_4 > 0);
                }
            }
            spC48 = 1;
            strcpy(&sp200, arg1);
            goto block_15;
        }
        spC10 = &spA00;
        if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unk40, &spC10) != 0) {
            if (var_s0_2 != NULL) {
                saved_reg_gp->unk-7640(var_s0_2);
            }
            temp_a1_5 = saved_reg_gp->unk-553C;
            if (temp_s4->unk2C != 1) {
                if (temp_a1_5 != 0) {
                    sp600 = 0;
                    saved_reg_gp->unk-73D0(&sp600, temp_a1_5);
                }
                temp_v0_5 = strlen(&sp600);
                temp_a1_6 = &(&sp600)[temp_v0_5];
                var_s0_3 = temp_a1_6;
                if ((temp_v0_5 <= 0) || (var_a0 = var_s0_3, (temp_a1_6->unk-1 != 0x2F))) {
                    temp_a1_6->unk0 = 0x2F;
                    var_s0_3 = temp_a1_6 + 1;
                    var_a0 = var_s0_3;
                }
                strcpy(var_a0, &spA00);
                var_t1 = &var_s0_3[strlen(&spA00)];
            } else {
                temp_a1_7 = saved_reg_gp->unk-5540;
                if (temp_a1_7 != 0) {
                    sp600 = 0;
                    saved_reg_gp->unk-73D0(&sp600, temp_a1_7);
                }
                temp_v0_6 = strlen(&sp600);
                temp_a1_8 = &(&sp600)[temp_v0_6];
                var_s0_4 = temp_a1_8;
                if ((temp_v0_6 <= 0) || (var_a0_2 = var_s0_4, (temp_a1_8->unk-1 != 0x2F))) {
                    temp_a1_8->unk0 = 0x2F;
                    var_s0_4 = temp_a1_8 + 1;
                    var_a0_2 = var_s0_4;
                }
                strcpy(var_a0_2, &spA00);
                var_t1 = &var_s0_4[strlen(&spA00)];
            }
            goto block_37;
        }
        saved_reg_gp->unk-312C = 0x771;
        mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unk40);
    } else {
        temp_a1_9 = saved_reg_gp->unk-5548;
        if (sp200 != 0x2F) {
            if (temp_s4->unk2C != 1) {
                if (temp_a1_9 != 0) {
                    sp600 = 0;
                    saved_reg_gp->unk-73D0(&sp600, temp_a1_9);
                }
                temp_v0_7 = strlen(&sp600);
                temp_a1_10 = &(&sp600)[temp_v0_7];
                var_s0_5 = temp_a1_10;
                if ((temp_v0_7 <= 0) || (var_a0_3 = var_s0_5, (temp_a1_10->unk-1 != 0x2F))) {
                    temp_a1_10->unk0 = 0x2F;
                    var_s0_5 = temp_a1_10 + 1;
                    var_a0_3 = var_s0_5;
                }
                strcpy(var_a0_3, &sp200);
                var_t1 = &var_s0_5[strlen(&sp200)];
            } else {
                temp_a1_11 = saved_reg_gp->unk-554C;
                if (temp_a1_11 != 0) {
                    sp600 = 0;
                    saved_reg_gp->unk-73D0(&sp600, temp_a1_11);
                }
                temp_v0_8 = strlen(&sp600);
                temp_a1_12 = &(&sp600)[temp_v0_8];
                var_s0_6 = temp_a1_12;
                if ((temp_v0_8 <= 0) || (var_a0_4 = var_s0_6, (temp_a1_12->unk-1 != 0x2F))) {
                    temp_a1_12->unk0 = 0x2F;
                    var_s0_6 = temp_a1_12 + 1;
                    var_a0_4 = var_s0_6;
                }
                strcpy(var_a0_4, &sp200);
                var_t1 = &var_s0_6[strlen(&sp200)];
            }
block_37:
            *var_t1 = 0;
        } else {
            temp_v0_9 = saved_reg_gp->unk-7478(&sp200, 0xA);
            if (temp_v0_9 != NULL) {
                *temp_v0_9 = 0;
            }
            ((? (*)(u8 *, void *, u8 *)) saved_reg_gp->unk-73E4)(&sp600, &sub_5e4f0000 + 0x3638, &sp200);
        }
        temp_v0_10 = saved_reg_gp->unk-763C(&sp600);
        var_s0_2 = temp_v0_10;
        if (temp_v0_10 == NULL) {
            saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3640, errno, (s64) &sp600);
            temp_t2_3 = temp_s4->unk28;
            temp_a1_13 = temp_t2_3->unk29;
            if (temp_a1_13 == 0x82) {
                var_t2_5 = 0x11;
                var_a1_9 = 0;
                do {
                    var_t2_5 -= 1;
                    temp_at_10 = *(var_a1_9 + (&sub_5e4f0000 + 0x35D0));
                    temp_v1_11 = &arg1[var_a1_9];
                    var_a1_9 += 1;
                    *temp_v1_11 = temp_at_10;
                } while (var_t2_5 > 0);
            } else if (temp_a1_13 == 0x83) {
                var_t2_6 = 0x12;
                var_a1_10 = 0;
                do {
                    var_t2_6 -= 1;
                    temp_at_11 = *(var_a1_10 + (&sub_5e4f0000 + 0x35E8));
                    temp_v1_12 = &arg1[var_a1_10];
                    var_a1_10 += 1;
                    *temp_v1_12 = temp_at_11;
                } while (var_t2_6 > 0);
            } else {
                var_a1_11 = 0;
                var_t2_7 = 0x11;
                if (temp_t2_3->unk2A != 0x48) {
                    do {
                        var_t2_7 -= 1;
                        temp_at_12 = *(var_a1_11 + (&sub_5e4f0000 + 0x3618));
                        temp_v1_13 = &arg1[var_a1_11];
                        var_a1_11 += 1;
                        *temp_v1_13 = temp_at_12;
                    } while (var_t2_7 > 0);
                } else {
                    var_t2_8 = 0x11;
                    var_a1_12 = 0;
                    do {
                        var_t2_8 -= 1;
                        temp_at_13 = *(var_a1_12 + (&sub_5e4f0000 + 0x3600));
                        temp_v1_14 = &arg1[var_a1_12];
                        var_a1_12 += 1;
                        *temp_v1_14 = temp_at_13;
                    } while (var_t2_8 > 0);
                }
            }
            spC48 = 1;
            strcpy(&sp200, arg1);
            goto block_15;
        }
        if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unkF4, &spC0C) != 0) {
            if (spC0C == NULL) {
                if (spC48 != 0) {
                    saved_reg_gp->unk-755C(&sub_5e4f0000 + 0x3690, &sp600);
                } else {
                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x36C8, &sp600);
                }
                temp_t2_4 = temp_s4->unk28;
                temp_a1_14 = temp_t2_4->unk29;
                spC48 = 1;
                if (temp_a1_14 == 0x82) {
                    var_a1_13 = 0x11;
                    var_v0_5 = 0;
                    do {
                        var_a1_13 -= 1;
                        temp_at_14 = *(var_v0_5 + (&sub_5e4f0000 + 0x35D0));
                        temp_v1_15 = &arg1[var_v0_5];
                        var_v0_5 += 1;
                        *temp_v1_15 = temp_at_14;
                    } while (var_a1_13 > 0);
                } else {
                    var_v0_6 = 0;
                    if (temp_a1_14 == 0x83) {
                        var_a1_14 = 0x12;
                        var_v0_7 = 0;
                        do {
                            var_a1_14 -= 1;
                            temp_at_15 = *(var_v0_7 + (&sub_5e4f0000 + 0x35E8));
                            temp_v1_16 = &arg1[var_v0_7];
                            var_v0_7 += 1;
                            *temp_v1_16 = temp_at_15;
                        } while (var_a1_14 > 0);
                    } else {
                        var_a1_15 = 0x11;
                        if (temp_t2_4->unk2A != 0x48) {
                            do {
                                var_a1_15 -= 1;
                                temp_at_16 = *(var_v0_6 + (&sub_5e4f0000 + 0x3618));
                                temp_v1_17 = &arg1[var_v0_6];
                                var_v0_6 += 1;
                                *temp_v1_17 = temp_at_16;
                            } while (var_a1_15 > 0);
                        } else {
                            var_v0_8 = 0x11;
                            var_a1_16 = 0;
                            do {
                                var_v0_8 -= 1;
                                temp_at_17 = *(var_a1_16 + (&sub_5e4f0000 + 0x3600));
                                temp_v1_18 = &arg1[var_a1_16];
                                var_a1_16 += 1;
                                *temp_v1_18 = temp_at_17;
                            } while (var_v0_8 > 0);
                        }
                    }
                }
                strcpy(&sp200, arg1);
                goto block_15;
            }
            if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unkE0, &spC04) != 0) {
                var_v0_9 = 0;
                if (spC04 != NULL) {
                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x36F8, &sp200);
                    temp_t2_5 = temp_s4->unk28;
                    temp_a1_15 = temp_t2_5->unk29;
                    var_v0_10 = 0x11;
                    spC48 = 1;
                    if (temp_a1_15 == 0x82) {
                        var_a1_17 = 0x11;
                        var_v0_11 = 0;
                        do {
                            var_a1_17 -= 1;
                            temp_at_18 = *(var_v0_11 + (&sub_5e4f0000 + 0x35D0));
                            temp_v1_19 = &arg1[var_v0_11];
                            var_v0_11 += 1;
                            *temp_v1_19 = temp_at_18;
                        } while (var_a1_17 > 0);
                    } else if (temp_a1_15 == 0x83) {
                        var_v0_12 = 0x12;
                        var_a1_18 = 0;
                        do {
                            var_v0_12 -= 1;
                            temp_at_19 = *(var_a1_18 + (&sub_5e4f0000 + 0x35E8));
                            temp_v1_20 = &arg1[var_a1_18];
                            var_a1_18 += 1;
                            *temp_v1_20 = temp_at_19;
                        } while (var_v0_12 > 0);
                    } else {
                        var_a1_19 = 0;
                        if (temp_t2_5->unk2A != 0x48) {
                            do {
                                var_v0_10 -= 1;
                                temp_at_20 = *(var_a1_19 + (&sub_5e4f0000 + 0x3618));
                                temp_v1_21 = &arg1[var_a1_19];
                                var_a1_19 += 1;
                                *temp_v1_21 = temp_at_20;
                            } while (var_v0_10 > 0);
                        } else {
                            var_v0_13 = 0x11;
                            var_a1_20 = 0;
                            do {
                                var_v0_13 -= 1;
                                temp_at_21 = *(var_a1_20 + (&sub_5e4f0000 + 0x3600));
                                temp_v1_22 = &arg1[var_a1_20];
                                var_a1_20 += 1;
                                *temp_v1_22 = temp_at_21;
                            } while (var_v0_13 > 0);
                        }
                    }
                    strcpy(&sp200, arg1);
                    goto block_15;
                }
                temp_a1_16 = (*(spC38->unk1B4 + (saved_reg_gp->unk-3140 * 4)))->unk28->unk29;
                if (arg1 != NULL) {
                    if (temp_a1_16 != 0x82) {
                        goto block_103;
                    }
                    spCD8 = (s64) temp_a1_16;
                    if (saved_reg_gp->unk-7578(arg1, &sub_5e4f0000 + 0x35D0) == 0) {
block_103:
                        if (temp_a1_16 != 0x83) {
                            goto block_104;
                        }
                        if (saved_reg_gp->unk-7578(arg1, &sub_5e4f0000 + 0x35E8) != 0) {
                            goto block_222;
                        }
block_104:
                        var_v0_9 = 1;
                    } else {
block_222:
                        saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3728, arg1, (s64) spC38->unk0);
                        saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x37A0);
                        var_v0_9 = 0;
                    }
                }
                temp_t2_6 = temp_s4->unk28;
                if (var_v0_9 != 0) {
                    if (temp_t2_6->unk28 == 1) {
                        if ((s32) temp_t2_6->unk31 < 2) {
                            if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unk38, &spC18) != 0) {
                                if (sub_5e4f0000.unk3630 < (second half of f64)) {
                                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x37D0);
                                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3810);
                                    temp_t2_7 = temp_s4->unk28;
                                    temp_a1_17 = temp_t2_7->unk29;
                                    spC48 = 1;
                                    if (temp_a1_17 == 0x82) {
                                        var_v0_14 = 0x11;
                                        var_a1_21 = 0;
                                        do {
                                            var_v0_14 -= 1;
                                            temp_at_22 = *(var_a1_21 + (&sub_5e4f0000 + 0x35D0));
                                            temp_v1_23 = &arg1[var_a1_21];
                                            var_a1_21 += 1;
                                            *temp_v1_23 = temp_at_22;
                                        } while (var_v0_14 > 0);
                                    } else if (temp_a1_17 == 0x83) {
                                        var_v0_15 = 0x12;
                                        var_a1_22 = 0;
                                        do {
                                            var_v0_15 -= 1;
                                            temp_at_23 = *(var_a1_22 + (&sub_5e4f0000 + 0x35E8));
                                            temp_v1_24 = &arg1[var_a1_22];
                                            var_a1_22 += 1;
                                            *temp_v1_24 = temp_at_23;
                                        } while (var_v0_15 > 0);
                                    } else if (temp_t2_7->unk2A != 0x48) {
                                        var_v0_16 = 0x11;
                                        var_a1_23 = 0;
                                        do {
                                            var_v0_16 -= 1;
                                            temp_at_24 = *(var_a1_23 + (&sub_5e4f0000 + 0x3618));
                                            temp_v1_25 = &arg1[var_a1_23];
                                            var_a1_23 += 1;
                                            *temp_v1_25 = temp_at_24;
                                        } while (var_v0_16 > 0);
                                    } else {
                                        var_v0_17 = 0x11;
                                        var_a1_24 = 0;
                                        do {
                                            var_v0_17 -= 1;
                                            temp_at_25 = *(var_a1_24 + (&sub_5e4f0000 + 0x3600));
                                            temp_v1_26 = &arg1[var_a1_24];
                                            var_a1_24 += 1;
                                            *temp_v1_26 = temp_at_25;
                                        } while (var_v0_17 > 0);
                                    }
                                    strcpy(&sp200, arg1);
                                    goto block_15;
                                }
                                goto block_120;
                            }
                            saved_reg_gp->unk-312C = 0x7D4;
                            mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unk38);
                        } else {
block_120:
                            goto block_121;
                        }
                    } else {
block_121:
                        if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unkF0, &spC20) != 0) {
                            if (SDBgetSymbolValueScalar(var_s0_2, saved_reg_gp->unk-5530, &spC24) != 0) {
                                if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unkE4, &spC08) != 0) {
                                    *spC70 = spC24;
                                    *spC68 = spC20;
                                    *spC78 = spC08;
                                    if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unk18, (u8 **) spC80) != 0) {
                                        if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unk1C, spC80 + 4) != 0) {
                                            if (saved_reg_gp->unk-7648(var_s0_2, temp_s2->unk20, spC58, 6) != 0) {
                                                if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unk24, arg_sp4) != 0) {
                                                    if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unk28, arg_spC) != 0) {
                                                        var_s6 = 1;
                                                        if (SDBgetSymbolValueScalar(var_s0_2, temp_s2->unk34, &spC00) != 0) {
                                                            temp_a1_18 = (s32) spC00 & 0x30000;
                                                            if (temp_a1_18 != 0x30000) {
                                                                if ((s32) spC00 & 0x20000) {
                                                                    *spC28 = 0;
                                                                } else {
                                                                    *spC28 = (s32) (((temp_a1_18 ^ 0x10000) != 0) ? 3 : 2);
                                                                }
                                                            } else {
                                                                *spC28 = 1;
                                                            }
                                                            goto block_15;
                                                        }
                                                        saved_reg_gp->unk-312C = 0x7FC;
                                                        mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unk34);
                                                    } else {
                                                        saved_reg_gp->unk-312C = 0x7ED;
                                                        mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unk28, (void *)0x7ED);
                                                    }
                                                } else {
                                                    saved_reg_gp->unk-312C = 0x7EC;
                                                    mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unk24);
                                                }
                                            } else {
                                                saved_reg_gp->unk-312C = 0x7EB;
                                                mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unk20, (void *)0x7EB);
                                            }
                                        } else {
                                            saved_reg_gp->unk-312C = 0x7EA;
                                            mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unk1C, (void *)0x7EA);
                                        }
                                    } else {
                                        saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3838);
                                        temp_t2_8 = temp_s4->unk28;
                                        temp_a1_19 = temp_t2_8->unk29;
                                        spC48 = 1;
                                        if (temp_a1_19 == 0x82) {
                                            var_a1_25 = 0x11;
                                            var_v0_18 = 0;
                                            do {
                                                var_a1_25 -= 1;
                                                temp_at_26 = *(var_v0_18 + (&sub_5e4f0000 + 0x35D0));
                                                temp_v1_27 = &arg1[var_v0_18];
                                                var_v0_18 += 1;
                                                *temp_v1_27 = temp_at_26;
                                            } while (var_a1_25 > 0);
                                        } else if (temp_a1_19 == 0x83) {
                                            var_v0_19 = 0x12;
                                            var_a1_26 = 0;
                                            do {
                                                var_v0_19 -= 1;
                                                temp_at_27 = *(var_a1_26 + (&sub_5e4f0000 + 0x35E8));
                                                temp_v1_28 = &arg1[var_a1_26];
                                                var_a1_26 += 1;
                                                *temp_v1_28 = temp_at_27;
                                            } while (var_v0_19 > 0);
                                        } else if (temp_t2_8->unk2A != 0x48) {
                                            var_a1_27 = 0x11;
                                            var_v0_20 = 0;
                                            do {
                                                var_a1_27 -= 1;
                                                temp_at_28 = *(var_v0_20 + (&sub_5e4f0000 + 0x3618));
                                                temp_v1_29 = &arg1[var_v0_20];
                                                var_v0_20 += 1;
                                                *temp_v1_29 = temp_at_28;
                                            } while (var_a1_27 > 0);
                                        } else {
                                            var_v0_21 = 0x11;
                                            var_a1_28 = 0;
                                            do {
                                                var_v0_21 -= 1;
                                                temp_at_29 = *(var_a1_28 + (&sub_5e4f0000 + 0x3600));
                                                temp_v1_30 = &arg1[var_a1_28];
                                                var_a1_28 += 1;
                                                *temp_v1_30 = temp_at_29;
                                            } while (var_v0_21 > 0);
                                        }
                                        strcpy(&sp200, arg1);
                                        goto block_15;
                                    }
                                } else {
                                    saved_reg_gp->unk-312C = 0x7E2;
                                    mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unkE4, (void *)0x7E2);
                                }
                            } else {
                                saved_reg_gp->unk-312C = 0x7E1;
                                mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5530, (void *)0x7E1);
                            }
                        } else {
                            saved_reg_gp->unk-312C = 0x7E0;
                            mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unkF0, (void *)0x7E0);
                        }
                    }
                } else {
                    temp_a1_20 = temp_t2_6->unk29;
                    spC48 = 1;
                    if (temp_a1_20 == 0x82) {
                        var_v0_22 = 0x11;
                        var_a1_29 = 0;
                        do {
                            var_v0_22 -= 1;
                            temp_at_30 = *(var_a1_29 + (&sub_5e4f0000 + 0x35D0));
                            temp_v1_31 = &arg1[var_a1_29];
                            var_a1_29 += 1;
                            *temp_v1_31 = temp_at_30;
                        } while (var_v0_22 > 0);
                    } else if (temp_a1_20 == 0x83) {
                        var_v0_23 = 0x12;
                        var_a1_30 = 0;
                        do {
                            var_v0_23 -= 1;
                            temp_at_31 = *(var_a1_30 + (&sub_5e4f0000 + 0x35E8));
                            temp_v1_32 = &arg1[var_a1_30];
                            var_a1_30 += 1;
                            *temp_v1_32 = temp_at_31;
                        } while (var_v0_23 > 0);
                    } else if (temp_t2_6->unk2A != 0x48) {
                        var_v0_24 = 0x11;
                        var_a1_31 = 0;
                        do {
                            var_v0_24 -= 1;
                            temp_at_32 = *(var_a1_31 + (&sub_5e4f0000 + 0x3618));
                            temp_v1_33 = &arg1[var_a1_31];
                            var_a1_31 += 1;
                            *temp_v1_33 = temp_at_32;
                        } while (var_v0_24 > 0);
                    } else {
                        var_v0_25 = 0x11;
                        var_a1_32 = 0;
                        do {
                            var_v0_25 -= 1;
                            temp_at_33 = *(var_a1_32 + (&sub_5e4f0000 + 0x3600));
                            temp_v1_34 = &arg1[var_a1_32];
                            var_a1_32 += 1;
                            *temp_v1_34 = temp_at_33;
                        } while (var_v0_25 > 0);
                    }
                    strcpy(&sp200, arg1);
block_15:
                    if (var_s6 == 0) {
                        goto loop_16;
                    }
                }
            } else {
                saved_reg_gp->unk-312C = 0x7BA;
                mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unkE0, (void *)0x7BA);
            }
        } else {
            saved_reg_gp->unk-312C = 0x79C;
            mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2->unkF4);
        }
    }
    if (var_s0_2 != NULL) {
        saved_reg_gp->unk-7640(var_s0_2);
    }
    if ((arg1 != NULL) && (var_s6 == 0)) {
        *arg1 = 0;
    }
    return var_s6;
}

void mgrasLstVideoFmtCombs(void *arg0, s32 arg1, s32 *arg2, s32 *arg3, s32 arg4) {
    s64 sp10;
    s64 sp8;
    s32 sp0;
    void *temp_gp;

    sp0 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x133330;
    sp10 = (s64) arg1;
    if ((*(arg0->unk1B4 + (temp_gp->unk-3140 * 4)))->unk28->unk36 == 0) {
        *arg2 = 0;
        *arg3 = 0;
        return;
    }
    sp8 = (s64) arg3;
    *arg2 = (temp_gp->unk-7FCC + 0x62B0)(temp_gp->unk-5544, &sub_5e4f0000 + 0x3150, &sub_5e3e0000 - 0x20C4, sp, arg4);
    *sp8 = (s32) (sp0 - sp10);
}

void mgrasLstFmtInComb(s64 arg0, s64 arg2, s32 *arg3, s64 arg4, ? arg_sp0) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_t9;
    s32 temp_v0_2;
    s64 temp_v0;
    s64 var_s2;
    u32 var_s2_2;
    void *temp_a0_2;
    void *temp_gp;
    void *temp_s0;
    void *temp_s4;
    void *var_s1;
    void *var_s1_2;
    void *var_s3;

    sp10 = arg0;
    sp8 = arg4;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x133278;
    temp_t9 = arg0->unk1B4;
    sp18 = arg2;
    temp_s0 = *((vcScreenPrivateIndex * 4) + temp_t9);
    if ((*((temp_gp->unk-3140 * 4) + temp_t9))->unk28->unk36 != 0) {
        temp_gp->unk-73C8(&arg_sp0 - 0x230);
        temp_gp->unk-73D0(&arg_sp0 - 0x230, &sub_5e4f0000 + 0x32B0);
        temp_s4 = &arg_sp0 + 0xFFFEFBC0;
        temp_gp->unk-7574(temp_s4, 0, 0x1020C);
        temp_v0 = temp_gp->unk-7364(1, 0x618);
        sp28 = temp_v0;
        if (temp_v0 == 0) {
            *arg3 = 0;
            return;
        }
        *sp18 = (s32) sp28;
        (temp_gp->unk-7FCC + 0x61FC)(&arg_sp0 + 0xFFFEF7C0, temp_gp->unk-5544, &arg_sp0 - 0x230);
        if (mgrasDefaultTTExists(sp10, &arg_sp0 + 0xFFFEF7C0, (s64) (&arg_sp0 - 0x230), (s64) temp_s4) != 0) {
            *arg3 = 1;
            var_s2 = sp28;
            var_s3 = temp_s4 + 0x314;
            var_s1 = temp_s4;
            *sp8 = 5;
            sp20 = var_s2 + 0x618;
loop_7:
            if (var_s1->unk300 != 0) {
                temp_gp->unk-74E4(var_s2, var_s3, 0x138);
                temp_a0 = var_s1->unk440;
                if (temp_a0 != 0) {
                    temp_v0_2 = temp_gp->unk-7364(temp_a0, 0x24);
                    var_s2->unk130 = temp_v0_2;
                    if (temp_v0_2 == 0) {
                        *arg3 = 0;
                        temp_gp->unk-73A4(var_s2);
                        return;
                    }
                    temp_a3 = var_s1->unk440;
                    temp_gp->unk-74E4((s64) temp_v0_2, var_s1->unk444, temp_a3 * 0x24, temp_a3);
                    goto block_6;
                }
            }
block_6:
            var_s2 += 0x138;
            var_s3 += 0x198;
            var_s1 += 0x198;
            if (var_s2 != sp20) {
                goto loop_7;
            }
            var_s2_2 = 0;
            if (temp_s0->unk4 != 0) {
                var_s1_2 = temp_s4;
loop_15:
                temp_a0_2 = var_s1_2->unk444;
                var_s1_2 += 0x198;
                var_s2_2 += 1;
                if (temp_a0_2 != NULL) {
                    free(temp_a0_2);
                }
                if (var_s2_2 < temp_s0->unk4) {
                    goto loop_15;
                }
            }
            return;
        }
        *arg3 = 0;
        temp_gp->unk-73A4(sp28);
        return;
    }
    *arg3 = 0;
}

void mgrasLdComb(void *arg0, void *arg1, s64 arg2, s64 arg3, s32 arg4, ? arg_sp0) {
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    u8 *sp18;
    u8 *sp14;
    u8 *sp10;
    u8 *spC;
    u8 *sp8;
    ? *temp_a0_2;
    ? *temp_s0_2;
    ? *temp_s0_3;
    ? *temp_v0;
    ? *temp_v0_4;
    ? *var_s0;
    ? *var_s2_3;
    ? *var_s4_2;
    ? *var_v1;
    f32 var_f4;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a7;
    s32 temp_f4;
    s32 temp_s4;
    s32 temp_v0_2;
    s32 temp_v0_7;
    s32 var_a3;
    s32 var_s2_2;
    s32 var_s3_2;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v1_2;
    s64 temp_a5_2;
    s64 var_s1_2;
    s64 var_s3;
    u16 *temp_s1_2;
    u16 *var_v0;
    u16 var_at;
    u32 var_s2_4;
    u32 var_s2_5;
    u32 var_s4;
    u32 var_v0_4;
    u8 **var_s5;
    u8 **var_s6;
    u8 *temp_s1;
    u8 *temp_v0_3;
    u8 *var_s7;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a5;
    void *temp_gp;
    void *temp_s0;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_s4_2;
    void *temp_s6;
    void *temp_t0;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v1;
    void *var_a5;
    void *var_a6;
    void *var_a7;
    void *var_at_2;
    void *var_s1;
    void *var_s1_3;
    void *var_s2;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x132F68;
    temp_v1 = *(arg0->unk1B4 + (temp_gp->unk-3140 * 4));
    sp14 = NULL;
    sp10 = NULL;
    spC = NULL;
    sp8 = NULL;
    temp_t0 = *(arg0->unk1B4 + (vcScreenPrivateIndex * 4));
    var_s7 = NULL;
    spB0 = (s64) temp_t0;
    if (temp_v1->unk28->unk36 != 0) {
        sp58 = 0;
        sp50 = (s64) temp_v1;
        sp48 = arg3;
        sp40 = (s64) temp_t0->unk8;
        sp38 = arg2;
        sp30 = 0;
        sp28 = 0;
        if (arg4 != 0) {
            temp_s6 = &arg_sp0 - 0x630;
            temp_gp->unk-73C8(temp_s6, arg1, 0x132F68, saved_reg_fp);
            temp_gp->unk-73D0(temp_s6, &sub_5e4f0000 + 0x2968 + 0x948);
            temp_s0 = &arg_sp0 + 0xFFFEF7C0;
            temp_gp->unk-7574(temp_s0, 0, 0x1020C);
            temp_s1 = &arg_sp0 + 0xFFFEF3C0;
            (temp_gp->unk-7FCC + 0x61FC)(temp_s1, temp_gp->unk-5544, temp_s6);
            if (mgrasDefaultTTExists((s64) arg0, temp_s1, (s64) temp_s6, (s64) temp_s0) != 0) {
                if (mgrasDefaultTTExists((s64) arg0, temp_s1, (s64) temp_s6, (s64) temp_s0) != 0) {
                    var_s4 = 0;
                    if (spB0->unk4 != 0) {
                        sp88 = (s64) arg0;
                        var_s3 = sp40;
                        temp_s2 = &arg_sp0 + 0xFFFEF7C0;
                        var_s0 = var_s3 + 0x14;
                        var_s1 = temp_s2;
                        var_s2 = temp_s2 + 0x314;
loop_66:
                        memmove(var_s0, var_s2, 0x138);
                        temp_a0 = var_s1->unk440;
                        var_s2 += 0x198;
                        if (temp_a0 != 0) {
                            temp_v0 = temp_gp->unk-7364(temp_a0, 0x24);
                            var_s3->unk144 = temp_v0;
                            if (temp_v0 == NULL) {
                                temp_gp->unk-312C = 0xAAE;
                                temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x708);
                            } else {
                                temp_a3 = var_s1->unk440;
                                memmove(temp_v0, var_s1->unk444, temp_a3 * 0x24, temp_a3);
                                goto block_65;
                            }
                        } else {
block_65:
                            temp_a0_2 = var_s0;
                            var_s0 += 0x1F4;
                            temp_gp->unk-7358(temp_a0_2, temp_s6, temp_gp->unk-73C4(temp_s6) - 4);
                            var_s3->unk0 = (s32) var_s1->unk300;
                            var_s3->unk4 = (f32) var_s1->unk304;
                            var_s3->unk8 = (f32) var_s1->unk308;
                            var_s3->unkC = (f32) var_s1->unk30C;
                            var_s3->unk10 = (f32) var_s1->unk310;
                            var_s3->unk14C = 0;
                            var_s3->unk150 = 0;
                            var_s3->unk154 = 1;
                            var_s3->unk158 = 0;
                            var_s3->unk1A8 = 0;
                            var_s3->unk1AC = 0;
                            var_s3->unk1B0 = 0;
                            var_s3->unk1B4 = 0;
                            var_s3->unk1B8 = 0;
                            var_s3->unk1BC = 0;
                            var_s3->unk1C4 = 0;
                            var_s3->unk1C0 = 0;
                            var_s3->unk1C8 = 0;
                            var_s3->unk1D0 = 0;
                            var_s3->unk1DC = 0;
                            var_s3->unk1E0 = 0;
                            var_s3->unk1CC = 0;
                            var_s3->unk1D4 = 0;
                            var_s3->unk1D8 = 0;
                            var_s3->unk1E8 = var_s4;
                            var_s3->unk1E4 = 0;
                            var_s3->unk1EC = 0;
                            var_s3->unk1F0 = 0;
                            var_s4 += 1;
                            var_s3 += 0x1F4;
                            var_s1 += 0x198;
                            if (var_s4 < (u32) spB0->unk4) {
                                goto loop_66;
                            }
                            goto block_7;
                        }
                    } else {
                        sp88 = (s64) arg0;
block_7:
                        var_s3_2 = 0;
                        sp20 = (s64) (&sub_5e4f0000 + 0x2968 + 0xA80);
                        temp_s0_2 = &arg_sp0 + 0xFFFEEDB8;
                        var_s2_2 = 1;
                        do {
                            temp_s4 = sp88->unk74->unk64;
                            temp_s1_2 = (spB0->unk24 + var_s3_2)->unk1C;
                            memset(temp_s0_2, 0, 0x604);
                            (&arg_sp0 + 0xFFFF0000)->unk-1248 = var_s2_2;
                            var_v1 = temp_s0_2;
                            var_v0 = temp_s1_2;
                            var_at = *temp_s1_2;
loop_9:
                            var_v1->unk4 = var_at;
                            var_v1->unk404 = (u16) var_v0->unk400;
                            var_v1->unk204 = (u16) var_v0->unk200;
                            var_v0 += 2;
                            var_v1 += 2;
                            var_at = var_v0->unk0;
                            if (var_v0 != (temp_s1_2 + 0x1FE)) {
                                goto loop_9;
                            }
                            var_v1->unk4 = var_at;
                            var_v1->unk404 = (u16) var_v0->unk400;
                            var_s3_2 += 0x10;
                            var_v1->unk204 = (u16) var_v0->unk200;
                            temp_v0_2 = temp_gp->unk-74DC(temp_s4, 0x6D67001C, temp_s0_2);
                            if (temp_v0_2 < 0) {
                                temp_gp->unk-74EC((void *) sp20, (void *) temp_v0_2, var_s2_2);
                            }
                            var_s2_2 += 1;
                        } while (var_s3_2 != 0x40);
                        temp_s3 = &arg_sp0 + 0xFFFEF7C0 + 0xFF;
                        if (sp50->unk2C != 1) {
                            (temp_gp->unk-7FCC + 0x61FC)(&arg_sp0 + 0xFFFEF3C0, temp_gp->unk-553C, temp_s3);
                        } else {
                            (temp_gp->unk-7FCC + 0x61FC)(&arg_sp0 + 0xFFFEF3C0, temp_gp->unk-5540, temp_s3);
                        }
                        temp_v0_3 = temp_gp->unk-763C(&arg_sp0 + 0xFFFEF3C0);
                        var_s7 = temp_v0_3;
                        if (temp_v0_3 == NULL) {
                            temp_gp->unk-312C = 0xAE0;
                            temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x950, &arg_sp0 + 0xFFFEF3C0, 0xAE0);
                        } else {
                            temp_s2_2 = &sub_5e510000 - 0x7B34;
                            if (SDBgetSymbolValueScalar(var_s7, temp_s2_2->unkF4, &sp8) != 0) {
                                if (sp8 != NULL) {
                                    temp_s0_3 = &arg_sp0 + 0xFFFEEC80;
                                    memset(temp_s0_3, 0, 0x138);
                                    if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5524, temp_s0_3 + 0x12C) != 0) {
                                        if (SDBgetSymbolValueScalar(var_s7, temp_s2_2->unkE4, &spC) != 0) {
                                            if (SDBgetSymbolValueScalar(var_s7, temp_s2_2->unkE8, &sp10) != 0) {
                                                if (SDBgetSymbolValueScalar(var_s7, temp_s2_2->unkE0, &sp14) != 0) {
                                                    if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5518, &sp18) != 0) {
                                                        var_f4 = (f32) sp18;
                                                        (&arg_sp0 + 0xFFFF0000)->unk-126C = var_f4;
                                                        if (spC != NULL) {
                                                            temp_f4 = (s32) ((f32) (&arg_sp0 + 0xFFFF0000)->unk-1254 * var_f4);
                                                            temp_a7 = temp_f4;
                                                            var_f4 = (f32) temp_f4;
                                                            sp18 = (u8 *) temp_a7;
                                                        }
                                                        temp_a5 = &arg_sp0 + 0xFFFF0000;
                                                        temp_a5->unk-1270 = var_f4;
                                                        (&arg_sp0 + 0xFFFF0000)->unk-124C = (s32) ((sp10 == NULL) ? 0 : ((sp14 == NULL) ? 1 : 4));
                                                        if (SDBgetSymbolValueScalar(var_s7, temp_s2_2->unkF0, temp_s0_3 + 0x100, sp10, (s8 *)1, temp_a5, sp18) != 0) {
                                                            if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5530, temp_s0_3 + 0x104) != 0) {
                                                                if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5520, temp_s0_3 + 0x108) != 0) {
                                                                    if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-551C, temp_s0_3 + 0x10C) != 0) {
                                                                        if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5514, temp_s0_3 + 0x118) != 0) {
                                                                            if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5510, temp_s0_3 + 0x11C) != 0) {
                                                                                if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-550C, temp_s0_3 + 0x120) != 0) {
                                                                                    if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5508, temp_s0_3 + 0x124) != 0) {
                                                                                        if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5504, temp_s0_3 + 0x128) != 0) {
                                                                                            temp_a3_2 = (&arg_sp0 + 0xFFFF0000)->unk-1254;
                                                                                            if (temp_a3_2 != 0) {
                                                                                                temp_v0_4 = temp_gp->unk-7364(temp_a3_2, 0x24);
                                                                                                (&arg_sp0 + 0xFFFF0000)->unk-1250 = temp_v0_4;
                                                                                                if (temp_v0_4 != NULL) {
                                                                                                    var_a3 = (&arg_sp0 + 0xFFFF0000)->unk-1254;
                                                                                                    spA8 = 0;
                                                                                                    if (var_a3 > 0) {
                                                                                                        var_s2_3 = temp_v0_4;
                                                                                                        spA0 = (s64) (temp_v0_4 + 0x18);
                                                                                                        sp98 = (s64) (temp_v0_4 + 0x14);
                                                                                                        var_s6 = temp_v0_4 + 0xC;
                                                                                                        sp90 = (s64) (temp_v0_4 + 0x10);
                                                                                                        var_s5 = temp_v0_4 + 8;
                                                                                                        var_s4_2 = temp_v0_4 + 4;
loop_53:
                                                                                                        if ((temp_gp->unk-7648(var_s7, temp_gp->unk-552C, var_s2_3, var_a3) != 0) && (temp_gp->unk-7648(var_s7, temp_gp->unk-5528, var_s4_2, (&arg_sp0 + 0xFFFF0000)->unk-1254) != 0)) {
                                                                                                            if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-5500, var_s5) != 0) {
                                                                                                                if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-54FC, var_s6) != 0) {
                                                                                                                    if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-54F8, (u8 **) sp90) != 0) {
                                                                                                                        if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-54F4, (u8 **) sp98) != 0) {
                                                                                                                            var_s6 += 0x24;
                                                                                                                            if (SDBgetSymbolValueScalar(var_s7, temp_gp->unk-54F0, (u8 **) spA0) != 0) {
                                                                                                                                sp90 += 0x24;
                                                                                                                                var_a3 = (&arg_sp0 + 0xFFFF0000)->unk-1254;
                                                                                                                                var_s5 += 0x24;
                                                                                                                                temp_a5_2 = spA8 + 1;
                                                                                                                                spA8 = temp_a5_2;
                                                                                                                                var_s4_2 += 0x24;
                                                                                                                                var_s2_3 += 0x24;
                                                                                                                                sp98 += 0x24;
                                                                                                                                spA0 += 0x24;
                                                                                                                                if (temp_a5_2 >= var_a3) {
                                                                                                                                    goto block_61;
                                                                                                                                }
                                                                                                                                goto loop_53;
                                                                                                                            }
                                                                                                                            temp_gp->unk-312C = 0xB30;
                                                                                                                            temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-54F0, 0xB30);
                                                                                                                        } else {
                                                                                                                            temp_gp->unk-312C = 0xB2E;
                                                                                                                            temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-54F4, 0xB2E);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        temp_gp->unk-312C = 0xB2C;
                                                                                                                        temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-54F8, 0xB2C);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    temp_gp->unk-312C = 0xB2A;
                                                                                                                    temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-54FC, 0xB2A);
                                                                                                                }
                                                                                                            } else {
                                                                                                                temp_gp->unk-312C = 0xB28;
                                                                                                                temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5500);
                                                                                                            }
                                                                                                        }
                                                                                                    } else {
block_61:
                                                                                                        goto block_62;
                                                                                                    }
                                                                                                } else {
                                                                                                    temp_gp->unk-312C = 0xB1D;
                                                                                                    mgrasDebugf(&sub_5e4f0000 + 0x2968 + 0x708, (? *)0xB1D);
                                                                                                    sp28 = 1;
block_62:
                                                                                                    sp30 = sp28;
                                                                                                    goto block_91;
                                                                                                }
                                                                                            } else {
                                                                                                (&arg_sp0 + 0xFFFF0000)->unk-1250 = 0;
block_91:
                                                                                                if (sp30 == 0) {
                                                                                                    temp_gp->unk-7358(temp_s0_3, temp_s3, temp_gp->unk-73C4(temp_s3) - 4);
                                                                                                    if (mgrasDefaultTTExists(sp88, var_s7, (s64) temp_s0_3, (s64) (&arg_sp0 + 0xFFFEF7C0)) != 0) {
                                                                                                        temp_a0_3 = sp50->unk94;
                                                                                                        sp50->unk90 = (s32) ((((&arg_sp0 + 0xFFFF0000)->unk2B8 ^ 0x10) != 0) ? 0 : 1);
                                                                                                        if (temp_a0_3 != 0) {
                                                                                                            sp88->unk74->unk8C(temp_a0_3, sp50->unk98, sp50->unk9C, sp88);
                                                                                                        }
                                                                                                        var_v1_2 = temp_gp->unk-3140 * 4;
                                                                                                        temp_v0_5 = *(sp88->unk1B4 + var_v1_2);
                                                                                                        temp_a1 = temp_v0_5->unk0;
                                                                                                        if (temp_v0_5->unk6C != 0) {
                                                                                                            var_v0_2 = 0;
                                                                                                        } else {
                                                                                                            if (temp_v0_5->unkA0 != 0) {
                                                                                                                temp_a1_2 = temp_v0_5->unk0;
                                                                                                                var_at_2 = temp_a1_2 + 0x60000;
                                                                                                                if (temp_a1_2->unk70100 & 0x1F) {
                                                                                                                    do {

                                                                                                                    } while (temp_a1_2->unk70100 & 0x1F);
                                                                                                                    var_at_2 = temp_a1_2 + 0x60000;
                                                                                                                }
                                                                                                                temp_a1_2->unk6802C = 0x6319;
                                                                                                                var_at_2->unk2D08 = 0x20;
                                                                                                                var_at_2->unk2D88 = 4;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                                var_at_2->unk2D08 = 0x22;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                                var_at_2->unk2D08 = 0x30;
                                                                                                                var_at_2->unk2D88 = 4;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                                var_at_2->unk2D08 = 0x32;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                                var_at_2->unk2D08 = 6;
                                                                                                                var_at_2->unk2D88 = 0x32;
                                                                                                                var_at_2->unk2D08 = 2;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                                var_at_2->unk2D08 = 0x16;
                                                                                                                var_at_2->unk2D88 = 0x32;
                                                                                                                var_at_2->unk2D08 = 0x12;
                                                                                                                var_at_2->unk2D88 = 0;
                                                                                                            } else {
                                                                                                                var_a7 = temp_a1 + 0x60000;
                                                                                                                if (temp_a1->unk70100 & 0x1F) {
                                                                                                                    do {

                                                                                                                    } while (temp_a1->unk70100 & 0x1F);
                                                                                                                    var_a7 = temp_a1 + 0x60000;
                                                                                                                }
                                                                                                                var_a7->unk1811 = 4;
                                                                                                                var_a7->unk1910 = 0;
                                                                                                            }
                                                                                                            var_v0_2 = 1;
                                                                                                        }
                                                                                                        if (var_v0_2 == 0) {
                                                                                                            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3A28, temp_v0_5->unk0);
                                                                                                            var_v1_2 = temp_gp->unk-3140 * 4;
                                                                                                        }
                                                                                                        sp50->unkA0 = 1;
                                                                                                        *sp48 = 1;
                                                                                                        *sp38 = 1;
                                                                                                        temp_v0_6 = *(sp88->unk1B4 + var_v1_2);
                                                                                                        sp58 = 1;
                                                                                                        screenIsSaved = 1;
                                                                                                        temp_a1_3 = temp_v0_6->unk0;
                                                                                                        if (temp_v0_6->unk6C != 0) {
                                                                                                            var_v0_3 = 0;
                                                                                                        } else {
                                                                                                            if (temp_v0_6->unkA0 != 0) {
                                                                                                                temp_a0_4 = temp_v0_6->unk0;
                                                                                                                var_a5 = temp_a0_4 + 0x60000;
                                                                                                                if (temp_a0_4->unk70100 & 0x1F) {
                                                                                                                    do {

                                                                                                                    } while (temp_a0_4->unk70100 & 0x1F);
                                                                                                                    var_a5 = temp_a0_4 + 0x60000;
                                                                                                                }
                                                                                                                temp_a0_4->unk6802C = 0x6319;
                                                                                                                var_a5->unk2D08 = 0x20;
                                                                                                                var_a5->unk2D88 = 4;
                                                                                                                var_a5->unk2D88 = 0;
                                                                                                                var_a5->unk2D08 = 0x22;
                                                                                                                var_a5->unk2D88 = 0xFF;
                                                                                                                var_a5->unk2D88 = 0xFF;
                                                                                                                var_a5->unk2D08 = 0x30;
                                                                                                                var_a5->unk2D88 = 4;
                                                                                                                var_a5->unk2D88 = 0;
                                                                                                                var_a5->unk2D08 = 0x32;
                                                                                                                var_a5->unk2D88 = 0xFF;
                                                                                                                var_a5->unk2D88 = 0xFF;
                                                                                                                var_a5->unk2D08 = 6;
                                                                                                                var_a5->unk2D88 = 0x30;
                                                                                                                var_a5->unk2D08 = 2;
                                                                                                                var_a5->unk2D88 = 0xFF;
                                                                                                                var_a5->unk2D08 = 0x16;
                                                                                                                var_a5->unk2D88 = 0x30;
                                                                                                                var_a5->unk2D08 = 0x12;
                                                                                                                var_a5->unk2D88 = 0xFF;
                                                                                                            } else {
                                                                                                                var_a6 = temp_a1_3 + 0x60000;
                                                                                                                if (temp_a1_3->unk70100 & 0x1F) {
                                                                                                                    do {

                                                                                                                    } while (temp_a1_3->unk70100 & 0x1F);
                                                                                                                    var_a6 = temp_a1_3 + 0x60000;
                                                                                                                }
                                                                                                                var_a6->unk1811 = 4;
                                                                                                                var_a6->unk1910 = 0xFF;
                                                                                                            }
                                                                                                            var_v0_3 = 1;
                                                                                                        }
                                                                                                        if (var_v0_3 == 0) {
                                                                                                            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3A60, temp_a1_3);
                                                                                                        }
                                                                                                    } else {
                                                                                                        temp_gp->unk-312C = 0xB3D;
                                                                                                        mgrasDebugf(&sub_5e4f0000 + 0x39F8, temp_s0_3);
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            temp_gp->unk-312C = 0xB16;
                                                                                            temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5504, 0xB16, 0xFFFF0000);
                                                                                        }
                                                                                    } else {
                                                                                        temp_gp->unk-312C = 0xB14;
                                                                                        temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5508, 0xB14);
                                                                                    }
                                                                                } else {
                                                                                    temp_gp->unk-312C = 0xB12;
                                                                                    temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-550C, 0xB12);
                                                                                }
                                                                            } else {
                                                                                temp_gp->unk-312C = 0xB10;
                                                                                temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5510, 0xB10);
                                                                            }
                                                                        } else {
                                                                            temp_gp->unk-312C = 0xB0E;
                                                                            temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5514, 0xB0E);
                                                                        }
                                                                    } else {
                                                                        temp_gp->unk-312C = 0xB0C;
                                                                        temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-551C, 0xB0C);
                                                                    }
                                                                } else {
                                                                    temp_gp->unk-312C = 0xB0B;
                                                                    temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5520, 0xB0B);
                                                                }
                                                            } else {
                                                                temp_gp->unk-312C = 0xB0A;
                                                                temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5530, 0xB0A);
                                                            }
                                                        } else {
                                                            temp_gp->unk-312C = 0xB09;
                                                            temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2_2->unkF0, 0xB09);
                                                        }
                                                    } else {
                                                        temp_gp->unk-312C = 0xAF6;
                                                        temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5518, 0xAF6);
                                                    }
                                                } else {
                                                    temp_gp->unk-312C = 0xAF5;
                                                    temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2_2->unkE0, 0xAF5);
                                                }
                                            } else {
                                                temp_gp->unk-312C = 0xAF4;
                                                temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2_2->unkE8, 0xAF4);
                                            }
                                        } else {
                                            temp_gp->unk-312C = 0xAF3;
                                            temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2_2->unkE4, 0xAF3);
                                        }
                                    } else {
                                        temp_gp->unk-312C = 0xAF2;
                                        temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_gp->unk-5524);
                                    }
                                } else {
                                    temp_gp->unk-312C = 0xAE9;
                                    temp_gp->unk-7E78(&sub_5e4f0000 + 0x39B8, &arg_sp0 + 0xFFFEF3C0, 0xAE9);
                                }
                            } else {
                                temp_gp->unk-312C = 0xAE6;
                                temp_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s2_2->unkF4, 0xAE6);
                            }
                        }
                    }
                    var_v0_4 = spB0->unk4;
                    if (sp58 != 0) {

                    } else if (var_v0_4 >= 2U) {
                        var_s1_2 = sp40;
                        var_s2_4 = 1;
loop_81:
                        var_s2_4 += 1;
                        if (var_s1_2->unk334 != 0) {
                            free(var_s1_2->unk338);
                            var_s1_2->unk338 = NULL;
                            var_s1_2->unk334 = 0;
                            var_v0_4 = spB0->unk4;
                        }
                        var_s1_2 += 0x1F4;
                        if (var_s2_4 < var_v0_4) {
                            goto loop_81;
                        }
                    }
                    var_s2_5 = 0;
                    if (var_v0_4 != 0) {
                        var_s1_3 = &arg_sp0 + 0xFFFEF7C0;
loop_23:
                        temp_a0_5 = var_s1_3->unk444;
                        var_s1_3 += 0x198;
                        var_s2_5 += 1;
                        if (temp_a0_5 != NULL) {
                            free(temp_a0_5);
                            var_v0_4 = ((void *) spB0)->unk4;
                        }
                        if (var_s2_5 < var_v0_4) {
                            goto loop_23;
                        }
                    }
                    if (var_s7 != NULL) {
                        temp_gp->unk-7640(var_s7);
                    }
                    temp_a0_6 = (&arg_sp0 + 0xFFFF0000)->unk-1250;
                    if (temp_a0_6 != NULL) {
                        free(temp_a0_6);
                    }
                    if (sp58 == 0) {
                        *sp38 = 0;
                    }
                    return;
                }
                *sp48 = 0;
                return;
            }
            *sp48 = 0;
            return;
        }
        temp_s3_2 = &arg_sp0 - 0x230;
        temp_s4_2 = &sub_5e4f0000 + 0x2968;
        temp_gp->unk-73E4(temp_s3_2, temp_s4_2 + 0x8D8, (*((arg0->unk0 * 4) + &ddxActiveScreens))->unk44->unkC, &ddxActiveScreens, 0x132F68, saved_reg_fp);
        temp_v0_7 = temp_gp->unk-72F0(temp_s3_2, temp_s4_2 + 0x900);
        if (temp_v0_7 == 0) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3990, temp_s3_2);
            *sp38 = 0;
            *sp48 = 0;
            return;
        }
        temp_s2_3 = &arg_sp0 - 0x430;
        temp_s2_3->unk4 = (u8) (&sub_5e4f0000 + 0x39B0)->unk4;
        temp_s2_3->unk0 = (s32) sub_5e4f0000.unk39B0;
        temp_gp->unk-73D0(temp_s2_3, arg1);
        temp_gp->unk-7344(temp_v0_7, temp_s4_2 + 0x940, temp_s2_3);
        temp_gp->unk-72EC(temp_v0_7);
        *sp48 = 1;
        *sp38 = 1;
        return;
    }
    *arg3 = 0;
}

void mgrasDisableChannelProc(s32 *arg2) {
    *arg2 = 0;
}

s64 mgrasLoadAndInitICO(void *arg0, s64 arg1, s64 arg2, void *arg3, s64 arg4) {
    s64 sp470;
    s64 sp458;
    s64 sp450;
    s64 sp418;
    s64 sp410;
    s64 sp408;
    s64 sp400;
    ? *temp_a0_2;
    ? *temp_v0_2;
    ? *var_s0_2;
    s32 temp_a0;
    s32 temp_a3;
    s32 var_v0;
    s64 var_s0;
    s64 var_s2;
    s64 var_s2_2;
    s64 var_s2_3;
    s64 var_s3;
    s64 var_s4;
    s64 var_s4_2;
    s64 var_s7;
    u32 var_s5;
    u32 var_s6;
    u32 var_s7_2;
    void *temp_a0_3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_v0;
    void *var_a6;
    void *var_a6_2;
    void *var_at;
    void *var_at_2;
    void *var_s3_2;

    var_s4 = saved_reg_s4;
    var_s7 = saved_reg_s7;
    sp400 = arg2;
    temp_v0 = *(arg0->unk1B4 + (saved_reg_gp->unk-3140 * 4));
    var_s0 = arg4;
    temp_v0->unkA4 = (s32) arg0->unkA;
    var_s3 = 0;
    sp408 = (s64) temp_v0;
    temp_v0->unkA8 = (s32) arg0->unk8;
    (saved_reg_gp->unk-7FCC + 0x61FC)(sp, saved_reg_gp->unk-5544, arg1);
    if (mgrasDefaultTTExists((s64) arg0, sp, arg1, var_s0) != 0) {
        if (mgrasDefaultTTExists((s64) arg0, sp, arg1, var_s0) != 0) {
            sp470 = 0;
            var_s6 = 0;
            if (arg3->unk4 != 0) {
                sp418 = (s64) arg0;
                var_s4_2 = sp400;
                var_s3_2 = var_s0 + 0x314;
                sp410 = var_s0;
                var_s2 = var_s0;
                var_s0_2 = var_s4_2 + 0x14;
loop_20:
                memmove(var_s0_2, var_s3_2, 0x138);
                temp_a0 = var_s2->unk440;
                var_s3_2 += 0x198;
                if (temp_a0 != 0) {
                    temp_v0_2 = saved_reg_gp->unk-7364(temp_a0, 0x24);
                    var_s4_2->unk144 = temp_v0_2;
                    if (temp_v0_2 != NULL) {
                        temp_a3 = var_s2->unk440;
                        memmove(temp_v0_2, var_s2->unk444, temp_a3 * 0x24, temp_a3);
                        goto block_19;
                    }
                    saved_reg_gp->unk-312C = 0xBA4;
                    saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x3070, 0xBA4);
                    var_s7 = sp458;
                    var_s4 = sp450;
                    var_s3 = sp470;
                    var_s0 = sp410;
                } else {
block_19:
                    temp_a0_2 = var_s0_2;
                    var_s0_2 += 0x1F4;
                    saved_reg_gp->unk-7358(temp_a0_2, arg1, saved_reg_gp->unk-73C4(arg1) - 4);
                    var_s4_2->unk0 = (s32) var_s2->unk300;
                    var_s4_2->unk4 = (f32) var_s2->unk304;
                    var_s4_2->unk8 = (f32) var_s2->unk308;
                    var_s4_2->unkC = (f32) var_s2->unk30C;
                    var_s4_2->unk10 = (f32) var_s2->unk310;
                    var_s4_2->unk14C = 0;
                    var_s4_2->unk150 = 0;
                    var_s4_2->unk154 = 1;
                    var_s4_2->unk158 = 0;
                    var_s4_2->unk1A8 = 0;
                    var_s4_2->unk1AC = 0;
                    var_s4_2->unk1B0 = 0;
                    var_s4_2->unk1B4 = 0;
                    var_s4_2->unk1B8 = 0;
                    var_s4_2->unk1BC = 0;
                    var_s4_2->unk1C4 = 0;
                    var_s4_2->unk1C0 = 0;
                    var_s4_2->unk1C8 = 0;
                    var_s4_2->unk1D0 = 0;
                    var_s4_2->unk1DC = 0;
                    var_s4_2->unk1E0 = 0;
                    var_s4_2->unk1CC = 0;
                    var_s4_2->unk1D4 = 0;
                    var_s4_2->unk1D8 = 0;
                    var_s4_2->unk1E8 = var_s6;
                    var_s4_2->unk1E4 = 0;
                    var_s4_2->unk1EC = 0;
                    var_s4_2->unk1F0 = 0;
                    var_s6 += 1;
                    var_s4_2 += 0x1F4;
                    var_s2 += 0x198;
                    if (var_s6 < (u32) arg3->unk4) {
                        goto loop_20;
                    }
                    goto block_5;
                }
            } else {
                sp410 = var_s0;
                sp418 = (s64) arg0;
block_5:
                var_s7 = sp458;
                temp_a7 = *(sp418->unk1B4 + (saved_reg_gp->unk-3140 * 4));
                var_s4 = sp450;
                var_s0 = sp410;
                temp_t0 = temp_a7->unk0;
                if (temp_a7->unk6C != 0) {
                    ErrorF(&sub_5e4f0000 + 0x3B00);
                } else {
                    var_s7 = sp458;
                    var_s4 = sp450;
                    var_s0 = sp410;
                    if (temp_a7->unkA0 != 0) {
                        temp_a3_2 = temp_a7->unk0;
                        var_a6 = temp_a3_2 + 0x60000;
                        if (temp_a3_2->unk70100 & 0x1F) {
                            do {

                            } while (temp_a3_2->unk70100 & 0x1F);
                            var_a6 = temp_a3_2 + 0x60000;
                        }
                        temp_a3_2->unk6802C = 0x6319;
                        var_a6->unk2D08 = 0x20;
                        var_a6->unk2D88 = 4;
                        var_a6->unk2D88 = 0;
                        var_a6->unk2D08 = 0x22;
                        var_a6->unk2D88 = 0;
                        var_a6->unk2D88 = 0;
                        var_a6->unk2D08 = 0x30;
                        var_a6->unk2D88 = 4;
                        var_a6->unk2D88 = 0;
                        var_a6->unk2D08 = 0x32;
                        var_a6->unk2D88 = 0;
                        var_a6->unk2D88 = 0;
                        var_a6->unk2D08 = 6;
                        var_a6->unk2D88 = 0x32;
                        var_a6->unk2D08 = 2;
                        var_a6->unk2D88 = 0;
                        var_a6->unk2D08 = 0x16;
                        var_a6->unk2D88 = 0x32;
                        var_a6->unk2D08 = 0x12;
                        var_a6->unk2D88 = 0;
                    } else {
                        var_at = temp_t0 + 0x60000;
                        if (temp_t0->unk70100 & 0x1F) {
                            do {

                            } while (temp_t0->unk70100 & 0x1F);
                            var_at = temp_t0 + 0x60000;
                        }
                        var_at->unk1811 = 4;
                        var_at->unk1910 = 0;
                    }
                }
                sp408->unkA0 = 1;
                saved_reg_gp->unk-73C8(arg1, var_s0 + 0xFF, sp408);
                temp_a7_2 = *(sp418->unk1B4 + (saved_reg_gp->unk-3140 * 4));
                screenIsSaved = 1;
                var_s3 = 1;
                temp_t0_2 = temp_a7_2->unk0;
                if (temp_a7_2->unk6C != 0) {
                    var_v0 = 0;
                } else {
                    if (temp_a7_2->unkA0 != 0) {
                        temp_a3_3 = temp_a7_2->unk0;
                        var_at_2 = temp_a3_3 + 0x60000;
                        if (temp_a3_3->unk70100 & 0x1F) {
                            do {

                            } while (temp_a3_3->unk70100 & 0x1F);
                            var_at_2 = temp_a3_3 + 0x60000;
                        }
                        temp_a3_3->unk6802C = 0x6319;
                        var_at_2->unk2D08 = 0x20;
                        var_at_2->unk2D88 = 4;
                        var_at_2->unk2D88 = 0;
                        var_at_2->unk2D08 = 0x22;
                        var_at_2->unk2D88 = 0xFF;
                        var_at_2->unk2D88 = 0xFF;
                        var_at_2->unk2D08 = 0x30;
                        var_at_2->unk2D88 = 4;
                        var_at_2->unk2D88 = 0;
                        var_at_2->unk2D08 = 0x32;
                        var_at_2->unk2D88 = 0xFF;
                        var_at_2->unk2D88 = 0xFF;
                        var_at_2->unk2D08 = 6;
                        var_at_2->unk2D88 = 0x30;
                        var_at_2->unk2D08 = 2;
                        var_at_2->unk2D88 = 0xFF;
                        var_at_2->unk2D08 = 0x16;
                        var_at_2->unk2D88 = 0x30;
                        var_at_2->unk2D08 = 0x12;
                        var_at_2->unk2D88 = 0xFF;
                    } else {
                        var_a6_2 = temp_t0_2 + 0x60000;
                        if (temp_t0_2->unk70100 & 0x1F) {
                            do {

                            } while (temp_t0_2->unk70100 & 0x1F);
                            var_a6_2 = temp_t0_2 + 0x60000;
                        }
                        var_a6_2->unk1811 = 4;
                        var_a6_2->unk1910 = 0xFF;
                    }
                    var_v0 = 1;
                }
                if (var_v0 == 0) {
                    ErrorF(&sub_5e4f0000 + 0x3B40);
                }
            }
        } else {
            saved_reg_gp->unk-312C = 0xB99;
            saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x3AC8, 0xB99);
        }
    } else {
        saved_reg_gp->unk-312C = 0xB95;
        saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x3A98, 0xB95);
    }
    if (var_s3 != 0) {
        sp450 = var_s4;
    } else {
        sp450 = var_s4;
        if ((u32) arg3->unk4 >= 2U) {
            var_s2_2 = sp400;
            sp458 = var_s7;
            var_s7_2 = 1;
loop_29:
            var_s7_2 += 1;
            if (var_s2_2->unk334 != 0) {
                free(var_s2_2->unk338);
                var_s2_2->unk338 = NULL;
                var_s2_2->unk334 = 0;
            }
            var_s2_2 += 0x1F4;
            if (var_s7_2 < arg3->unk4) {
                goto loop_29;
            }
        }
    }
    var_s5 = 0;
    if (arg3->unk4 != 0) {
        var_s2_3 = var_s0;
loop_16:
        temp_a0_3 = var_s2_3->unk444;
        var_s2_3 += 0x198;
        var_s5 += 1;
        if (temp_a0_3 != NULL) {
            free(temp_a0_3);
        }
        if (var_s5 < arg3->unk4) {
            goto loop_16;
        }
    }
    return var_s3;
}

void mgrasCheckCorona(void *arg0) {
    s64 sp0;
    s32 *temp_s4;
    s32 temp_a2;
    s32 temp_a4;
    s32 var_a3;
    s32 var_s0;
    s32 var_s1;
    void *temp_a6;
    void *var_a2;

    temp_a2 = arg0->unk1B4;
    if ((*((saved_reg_gp->unk-3140 * 4) + temp_a2))->unk6C != 0) {
        ScreenSaverInterval = 0;
        defaultScreenSaverInterval = 0;
        ((arg0->unk0 * 0x10) + &savedScreenInfo)->unkC = (void *) (&sub_5e4a0000 + 0x62F8);
    } else {
        temp_s4 = *((vcScreenPrivateIndex * 4) + temp_a2);
        if (numMonitors != 0) {
            var_s1 = 0;
            if (numMonitors > 0) {
                sp0 = (s64) arg0;
                var_s0 = 0;
loop_6:
                var_s1 += 1;
                if (strcasecmp(*temp_s4, moninfoData + var_s0) != 0) {
                    var_s0 += 0x4C;
                    if (var_s1 >= numMonitors) {

                    } else {
                        goto loop_6;
                    }
                } else {
                    temp_a6 = moninfoData + var_s0;
                    temp_a4 = temp_a6->unk44;
                    var_a3 = 0;
                    if (temp_a4 > 0) {
                        var_a2 = temp_a6->unk48;
loop_11:
                        var_a3 += 1;
                        if (var_a2->unk0 != 0xE) {
                            var_a2 += 0xC;
                            if (var_a3 == temp_a4) {

                            } else {
                                goto loop_11;
                            }
                        } else if (var_a2->unk4 != 1) {
                            defaultScreenSaverInterval = 0x927C0;
                        } else {
                            ScreenSaverInterval = 0;
                            defaultScreenSaverInterval = 0;
                            ((*sp0 * 0x10) + &savedScreenInfo)->unkC = (void *) (&sub_5e4a0000 + 0x5FC0);
                        }
                    }
                }
            }
            return;
        }
        defaultScreenSaverInterval = 0x927C0;
    }
}

void mgrasBlankScreen(struct _Screen *pScreen, s32 on) {
    s64 sp0;
    void *temp_a3;
    void *temp_a5;
    void *temp_a6;

    temp_a5 = *(on->unk1B4 + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x436FC)->unk-3140 * 4));
    temp_a6 = temp_a5->unk0;
    if (temp_a5->unk6C != 0) {
        return;
    }
    if (temp_a5->unkA0 != 0) {
        temp_a3 = temp_a5->unk0;
        if (pScreen != NULL) {
            sp0 = (s64) temp_a3;
            if (temp_a3->unk70100 & 0x1F) {
                do {

                } while (temp_a3->unk70100 & 0x1F);
            }
            temp_a3->unk6802C = 0x6319;
            sp0->unk62D08 = 0x20;
            sp0->unk62D88 = 4;
            sp0->unk62D88 = 0;
            sp0->unk62D08 = 0x22;
            sp0->unk62D88 = 0;
            sp0->unk62D88 = 0;
            sp0->unk62D08 = 0x30;
            sp0->unk62D88 = 4;
            sp0->unk62D88 = 0;
            sp0->unk62D08 = 0x32;
            sp0->unk62D88 = 0;
            sp0->unk62D88 = 0;
            sp0->unk62D08 = 6;
            sp0->unk62D88 = 0x32;
            sp0->unk62D08 = 2;
            sp0->unk62D88 = 0;
            sp0->unk62D08 = 0x16;
            sp0->unk62D88 = 0x32;
            sp0->unk62D08 = 0x12;
            sp0->unk62D88 = 0;
        } else {
            if (temp_a3->unk70100 & 0x1F) {
                do {

                } while (temp_a3->unk70100 & 0x1F);
            }
            temp_a3->unk6802C = 0x6319;
            temp_a3->unk62D08 = 0x20;
            temp_a3->unk62D88 = 4;
            temp_a3->unk62D88 = 0;
            temp_a3->unk62D08 = 0x22;
            temp_a3->unk62D88 = 0xFF;
            temp_a3->unk62D88 = 0xFF;
            temp_a3->unk62D08 = 0x30;
            temp_a3->unk62D88 = 4;
            temp_a3->unk62D88 = 0;
            temp_a3->unk62D08 = 0x32;
            temp_a3->unk62D88 = 0xFF;
            temp_a3->unk62D88 = 0xFF;
            temp_a3->unk62D08 = 6;
            temp_a3->unk62D88 = 0x30;
            temp_a3->unk62D08 = 2;
            temp_a3->unk62D88 = 0xFF;
            temp_a3->unk62D08 = 0x16;
            temp_a3->unk62D88 = 0x30;
            temp_a3->unk62D08 = 0x12;
            temp_a3->unk62D88 = 0xFF;
        }
        return;
    }
    if (temp_a6->unk70100 & 0x1F) {
        do {

        } while (temp_a6->unk70100 & 0x1F);
    }
    if (pScreen != NULL) {
        temp_a6->unk61811 = 4;
        temp_a6->unk61910 = 0;
    } else {
        temp_a6->unk61811 = 4;
        temp_a6->unk61910 = 0xFF;
    }
}
/* Warning: struct _Screen is not defined (only forward-declared) */
