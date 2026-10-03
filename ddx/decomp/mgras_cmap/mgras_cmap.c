? ErrorF(void *, s32, s32, s32);                    /* extern */
? mfbZeroPolyArcSS(s32);                            /* extern */
? mgrasQryMonitor(s64, u8 *, u8 *, u8, s32, u8 *, u8 *, s32); /* extern */
? mgrasSetScrnGlock(s64, s32, s16, u8 *, s32, u8 *, u8 *, s32); /* extern */
extern ? ddxActiveScreens;
extern s32 doLoadGamma__CBD;
extern s32 errno;
extern u8 gl_blue_map__DKC;
extern u8 gl_green_map__CKC;
extern u8 gl_red_map__BKC;
extern s32 rrmScreenPrivateIndex;
extern s32 rrmWindowPrivateIndex;
extern ? sub_5e4f0000;
extern s32 vcScreenPrivateIndex;

void mgrasInstallFakeMap(void) {

}

void mgrasInstallOverlayMap(void *pColormap, ? arg_sp0) {
    s16 temp_a6_2;
    s16 var_a7;
    s32 *temp_a2;
    s32 temp_f0;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a5_2;
    s64 temp_t8_2;
    u16 temp_a6;
    u16 temp_at;
    u8 temp_a7;
    void *temp_a3;
    void *temp_gp;
    void *temp_sp;
    void *temp_t1;
    void *temp_t2;
    void *temp_t3;
    void *temp_t9;
    void *var_a0;
    void *var_a2;
    void *var_a2_2;
    void *var_a2_3;
    void *var_a3;
    void *var_a3_2;
    void *var_a5_3;

    arg_sp0.unk-58 = (s64) saved_reg_fp;
    temp_t2 = pColormap->unk0;
    var_a7 = 0;
    temp_a2 = pColormap->unk44;
    var_a4 = 0;
    temp_a6 = temp_t2->unk8;
    var_a5 = 0;
    arg_sp0.unk-50 = (s64) saved_reg_gp;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x16ED50;
    temp_sp = sp - (((temp_a6 * 6) + 0x13) & ~0xF);
    temp_t8 = (pColormap->unkC->unk74->unk74 + (*temp_a2 * 0x1C))->unk18;
    if (temp_sp != NULL) {
        temp_a3 = pColormap->unk38;
        if (temp_a2 != NULL) {
            if ((s32) temp_a6 > 0) {
                var_a5_2 = temp_t8;
                var_a3 = temp_sp;
                var_a2 = temp_a3;
loop_7:
                if ((var_a2->unkC != 0) && ((((var_a4 >> 5) * 4) + temp_a2)->unk4 & (1 << var_a4))) {
                    var_a3->unk4 = (s16) var_a5_2;
                    var_a7 += 1;
                    if (var_a2->unk10 != 0) {
                        var_a3->unk6 = (s8) ((s32) *(u16 *) var_a2->unk0 >> 8);
                        var_a3->unk7 = (s8) ((s32) *(u16 *) var_a2->unk4 >> 8);
                        var_a3->unk8 = (s8) ((s32) *var_a2->unk8 >> 8);
                    } else {
                        var_a3->unk6 = (s8) ((s32) var_a2->unk0 >> 8);
                        var_a3->unk7 = (s8) ((s32) var_a2->unk2 >> 8);
                        var_a3->unk8 = (s8) ((s32) var_a2->unk4 >> 8);
                    }
                    var_a3 += 6;
                }
                var_a4 += 1;
                var_a2 += 0x14;
                var_a5_2 += 1;
                if (var_a4 < (s32) temp_t2->unk8) {
                    goto loop_7;
                }
            }
        } else if ((s32) temp_a6 > 0) {
            var_a4_2 = temp_t8;
            var_a2_2 = temp_a3;
            var_a3_2 = temp_sp;
loop_45:
            var_a5 += 1;
            if (var_a2_2->unkC != 0) {
                var_a3_2->unk4 = (s16) var_a4_2;
                var_a7 += 1;
                if (var_a2_2->unk10 != 0) {
                    var_a3_2->unk6 = (s8) ((s32) *(u16 *) var_a2_2->unk0 >> 8);
                    var_a3_2->unk7 = (s8) ((s32) *(u16 *) var_a2_2->unk4 >> 8);
                    var_a3_2->unk8 = (s8) ((s32) *var_a2_2->unk8 >> 8);
                } else {
                    var_a3_2->unk6 = (s8) ((s32) var_a2_2->unk0 >> 8);
                    var_a3_2->unk7 = (s8) ((s32) var_a2_2->unk2 >> 8);
                    var_a3_2->unk8 = (s8) ((s32) var_a2_2->unk4 >> 8);
                }
                var_a3_2 += 6;
            }
            var_a2_2 += 0x14;
            var_a4_2 += 1;
            if (var_a5 < (s32) temp_t2->unk8) {
                goto loop_45;
            }
        }
        var_a3_3 = 0;
        if (var_a7 != 0) {
            temp_sp->unk2 = var_a7;
            temp_t3 = *(pColormap->unkC->unk1B4 + (temp_gp->unk-3140 * 4));
            temp_t1 = temp_t3->unk0;
            temp_t8_2 = (s64) ((s64) var_a7 << 0x30) >> 0x30;
            temp_t9 = temp_t3->unk4;
            if (temp_t1->unk70100 & 0x1F) {
                do {

                } while (temp_t1->unk70100 & 0x1F);
            }
            var_a0 = temp_sp;
            if (temp_t8_2 > 0) {
                var_a5_3 = temp_t1 + 0x60000;
                var_a4_3 = 0;
                arg_sp0.unk-48 = (s64) temp_t3->unk74;
loop_21:
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x106($a0) */);
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($a0) */);
                temp_at = var_a0->unk4;
                temp_v0 = var_a4_3 & 0x1F;
                var_a4_3 += 1;
                temp_a6_2 = ((temp_at << 8) & 0xFF00) | (((s32) temp_at >> 8) & 0xFF);
                if (temp_v0 == 0) {
                    var_a3_3 = 6;
                    if (temp_t1->unk70100 & 0x1F) {
                        do {

                        } while (temp_t1->unk70100 & 0x1F);
                    }
                    temp_t9->unk9F0 = 4;
                    temp_t1->unk61C88 = 4;
                    temp_t1->unk61F00 = (s32) temp_t3->unk84;
                    temp_t9->unk9F0 = 4;
                    temp_t1->unk61C88 = 4;
                    temp_t1->unk61F00 = (s32) temp_t3->unk84;
                    if (temp_t1->unk70100 & 0x1F) {
                        do {

                        } while (temp_t1->unk70100 & 0x1F);
                    }
                    if (!(temp_t1->unk61208 & 8)) {
                        do {

                        } while (!(temp_t1->unk61208 & 8));
                    }
                    temp_t1->unk60C30 = temp_a6_2;
                    temp_t1->unk60C30 = temp_a6_2;
                    temp_t9->unk9F0 = 4;
                    temp_t1->unk61C88 = 4;
                    temp_t1->unk61F00 = (s32) (temp_t3->unk84 | 0x4000);
                }
                if (var_a3_3 >= 6) {
                    var_a3_3 = 0;
                    if (temp_t1->unk70100 & 0x1F) {
                        do {

                        } while (temp_t1->unk70100 & 0x1F);
                    }
                }
                temp_t1->unk60C30 = temp_a6_2;
                temp_a7 = var_a0->unk7;
                var_a3_3 += 2;
                if (arg_sp0.unk-48 != 0) {
                    temp_t1->unk60D18 = (s32) ((var_a0->unk6 << 0x18) | (temp_a7 << 0x10) | (var_a0->unk8 << 8));
                } else {
                    temp_f0 = (s32) ((f32) (second half of f64) + (f32) ((f64) temp_a7 * temp_gp->unk-3298) + (f32) ((second half of f64) * (second half of f64)));
                    temp_t1->unk60D18 = (s32) ((temp_f0 << 0x10) | (temp_f0 << 0x18) | (temp_f0 << 8));
                }
                var_a0 += 6;
                if (var_a4_3 != temp_t8_2) {
                    goto loop_21;
                }
            } else {
                var_a5_3 = temp_t1 + 0x60000;
            }
            temp_t9->unk9F0 = 4;
            var_a5_3->unk1C88 = 4;
            var_a5_3->unk1F00 = (s32) temp_t3->unk84;
            temp_t9->unk9F0 = 4;
            var_a5_3->unk1C88 = 4;
            var_a5_3->unk1F00 = (s32) temp_t3->unk84;
            var_a2_3 = temp_sp;
            var_a0_2 = 0;
            if (temp_sp->unk2 > 0) {
                do {
                    *(temp_t3->unk64 + (var_a2_3->unk4 * 4)) = (var_a2_3->unk6 & 0xFF) | ((var_a2_3->unk7 & 0xFF) << 8) | ((var_a2_3->unk8 & 0xFF) << 0x10);
                    var_a0_2 += 1;
                    var_a2_3 += 6;
                } while (var_a0_2 < temp_sp->unk2);
            }
        }
        return;
    }
    arg_sp0.unk-60 = (s64) saved_reg_ra;
    temp_gp->unk-74EC(&sub_5e4f0000 + 0x22A8, -0x10, temp_a2);
}

void mgrasStoreColors(void *pColormap, s32 nColors, void *pColors, ? arg_sp0) {
    s16 temp_a2_4;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_f0;
    s32 temp_t1;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_v1;
    s64 temp_t8;
    u16 temp_a3;
    u16 temp_a3_2;
    u8 temp_t0;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_gp;
    void *temp_ra;
    void *temp_sp;
    void *temp_t2;
    void *temp_v1;
    void *var_a0;
    void *var_a1;
    void *var_a1_2;
    void *var_at;
    void *var_v0;
    void *var_v0_2;
    void *var_v0_3;

    arg_sp0.unk-38 = (s64) saved_reg_s0;
    arg_sp0.unk-40 = (s64) saved_reg_fp;
    arg_sp0.unk-30 = (s64) saved_reg_gp;
    temp_a4 = ((nColors * 6) + 0x13) & ~0xF;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x15AACC;
    if (pColormap->unk0->unk4 != 4) {
        temp_v0 = *pColormap->unk44;
        var_at = pColors;
        if (temp_v0 >= 0) {
            temp_sp = sp - temp_a4;
            if (nColors != 0) {
                if (temp_sp != NULL) {
                    var_a1 = temp_sp;
                    temp_t8 = (s64) ((s64) nColors << 0x30) >> 0x30;
                    temp_t1 = (pColormap->unkC->unk74->unk74 + (temp_v0 * 0x1C))->unk18;
                    if (nColors > 0) {
                        if (nColors & 1) {
                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($at) */);
                            var_a1->unk4 = (s16) (var_at->unk0 + temp_t1);
                            var_a1->unk6 = (s8) ((s32) var_at->unk4 >> 8);
                            var_a1->unk7 = (s8) ((s32) var_at->unk6 >> 8);
                            temp_a3 = var_at->unk8;
                            var_a1 += 6;
                            var_at += 0xC;
                            var_a1->unk2 = (s8) ((s32) temp_a3 >> 8);
                        }
                        var_a0 = var_a1;
                        temp_a2 = nColors >> 1;
                        var_v0 = var_at;
                        if (temp_a2 != 0) {
                            temp_a2_2 = ((nColors * 0xC) + pColors) - 0x18;
                            if (temp_a2 >= 2) {
                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($v0) */);
                                var_at_2 = var_v0->unk0;
loop_10:
                                temp_v1 = var_a0 + 0xC;
                                var_a0->unk4 = (s16) (var_at_2 + temp_t1);
                                var_a0->unk6 = (s8) ((s32) var_v0->unk4 >> 8);
                                var_a0->unk7 = (s8) ((s32) var_v0->unk6 >> 8);
                                var_a0->unk8 = (s8) ((s32) var_v0->unk8 >> 8);
                                var_a0->unkA = (s16) (var_v0->unkC + temp_t1);
                                var_a0->unkC = (s8) ((s32) var_v0->unk10 >> 8);
                                var_a0->unkD = (s8) ((s32) var_v0->unk12 >> 8);
                                var_a0->unkE = (s8) ((s32) var_v0->unk14 >> 8);
                                var_v0 += 0x18;
                                var_at_2 = var_v0->unk0;
                                if (var_v0 != temp_a2_2) {
                                    var_a0 = temp_v1 + 0xC;
                                    temp_v1->unk4 = (s16) (var_at_2 + temp_t1);
                                    temp_v1->unk6 = (s8) ((s32) var_v0->unk4 >> 8);
                                    temp_v1->unk7 = (s8) ((s32) var_v0->unk6 >> 8);
                                    temp_v1->unk8 = (s8) ((s32) var_v0->unk8 >> 8);
                                    temp_v1->unkA = (s16) (var_v0->unkC + temp_t1);
                                    temp_v1->unkC = (s8) ((s32) var_v0->unk10 >> 8);
                                    temp_v1->unkD = (s8) ((s32) var_v0->unk12 >> 8);
                                    temp_v1->unkE = (s8) ((s32) var_v0->unk14 >> 8);
                                    var_v0 += 0x18;
                                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($v0) */);
                                    var_at_2 = *var_v0;
                                    if (var_v0 != temp_a2_2) {
                                        goto loop_10;
                                    }
                                } else {
                                    var_a0 = temp_v1;
                                }
                                var_a0->unk4 = (s16) (var_at_2 + temp_t1);
                                var_a0->unk6 = (s8) ((s32) var_v0->unk4 >> 8);
                                var_a0->unk7 = (s8) ((s32) var_v0->unk6 >> 8);
                                var_a0->unk8 = (s8) ((s32) var_v0->unk8 >> 8);
                                var_a0->unkA = (s16) (var_v0->unkC + temp_t1);
                                var_a0->unkC = (s8) ((s32) var_v0->unk10 >> 8);
                                var_a0->unkD = (s8) ((s32) var_v0->unk12 >> 8);
                                var_a0->unkE = (s8) ((s32) var_v0->unk14 >> 8);
                            } else {
                                var_a0->unk4 = (s16) (var_v0->unk0 + temp_t1);
                                var_a0->unk6 = (s8) ((s32) var_v0->unk4 >> 8);
                                var_a0->unk7 = (s8) ((s32) var_v0->unk6 >> 8);
                                var_a0->unk8 = (s8) ((s32) var_v0->unk8 >> 8);
                                var_a0->unkA = (s16) (var_v0->unkC + temp_t1);
                                var_a0->unkC = (s8) ((s32) var_v0->unk10 >> 8);
                                var_a0->unkD = (s8) ((s32) var_v0->unk12 >> 8);
                                var_a0->unkE = (s8) ((s32) var_v0->unk14 >> 8);
                            }
                        }
                        arg_sp0.unk-48 = (s64) saved_reg_ra;
                    }
                    temp_sp->unk2 = (s16) nColors;
                    temp_t2 = *(pColormap->unkC->unk1B4 + (temp_gp->unk-3140 * 4));
                    temp_a2_3 = temp_t2->unk0;
                    arg_sp0.unk-48 = (s64) saved_reg_ra;
                    var_v1 = 0;
                    temp_ra = temp_t2->unk4;
                    if (temp_a2_3->unk70100 & 0x1F) {
                        do {

                        } while (temp_a2_3->unk70100 & 0x1F);
                    }
                    var_a1_2 = temp_a2_3 + 0x60000;
                    var_a0_2 = 0;
                    if (temp_t8 > 0) {
                        var_v0_2 = temp_sp;
loop_23:
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x106($v0) */);
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($v0) */);
                        temp_a3_2 = var_v0_2->unk4;
                        temp_a4_2 = var_a0_2 & 0x1F;
                        var_a0_2 += 1;
                        temp_a2_4 = ((temp_a3_2 << 8) & 0xFF00) | (((s32) temp_a3_2 >> 8) & 0xFF);
                        if (temp_a4_2 == 0) {
                            var_v1 = 6;
                            if (temp_a2_3->unk70100 & 0x1F) {
                                do {

                                } while (temp_a2_3->unk70100 & 0x1F);
                            }
                            temp_ra->unk9F0 = 4;
                            temp_a2_3->unk61C88 = 4;
                            temp_a2_3->unk61F00 = (s32) temp_t2->unk84;
                            temp_ra->unk9F0 = 4;
                            temp_a2_3->unk61C88 = 4;
                            temp_a2_3->unk61F00 = (s32) temp_t2->unk84;
                            if (temp_a2_3->unk70100 & 0x1F) {
                                do {

                                } while (temp_a2_3->unk70100 & 0x1F);
                            }
                            if (!(temp_a2_3->unk61208 & 8)) {
                                do {

                                } while (!(temp_a2_3->unk61208 & 8));
                            }
                            temp_a2_3->unk60C30 = temp_a2_4;
                            temp_a2_3->unk60C30 = temp_a2_4;
                            temp_ra->unk9F0 = 4;
                            temp_a2_3->unk61C88 = 4;
                            temp_a2_3->unk61F00 = (s32) (temp_t2->unk84 | 0x4000);
                        }
                        if (var_v1 >= 6) {
                            var_v1 = 0;
                            if (temp_a2_3->unk70100 & 0x1F) {
                                do {

                                } while (temp_a2_3->unk70100 & 0x1F);
                            }
                        }
                        temp_a2_3->unk60C30 = temp_a2_4;
                        temp_t0 = var_v0_2->unk7;
                        var_v1 += 2;
                        if (temp_t2->unk74 != 0) {
                            temp_a2_3->unk60D18 = (s32) ((var_v0_2->unk6 << 0x18) | (temp_t0 << 0x10) | (var_v0_2->unk8 << 8));
                        } else {
                            temp_f0 = (s32) ((f32) (second half of f64) + (f32) ((f64) temp_t0 * temp_gp->unk-3298) + (f32) ((second half of f64) * (second half of f64)));
                            temp_a2_3->unk60D18 = (s32) ((temp_f0 << 0x10) | (temp_f0 << 0x18) | (temp_f0 << 8));
                        }
                        var_v0_2 += 6;
                        if (var_a0_2 != temp_t8) {
                            goto loop_23;
                        }
                    } else {
                        var_a1_2 = temp_a2_3 + 0x60000;
                    }
                    temp_ra->unk9F0 = 4;
                    var_a1_2->unk1C88 = 4;
                    var_a1_2->unk1F00 = (s32) temp_t2->unk84;
                    temp_ra->unk9F0 = 4;
                    var_a1_2->unk1C88 = 4;
                    var_a1_2->unk1F00 = (s32) temp_t2->unk84;
                    var_at_3 = 0;
                    var_v0_3 = temp_sp;
                    if (temp_sp->unk2 > 0) {
                        do {
                            *(temp_t2->unk64 + (var_v0_3->unk4 * 4)) = (var_v0_3->unk6 & 0xFF) | ((var_v0_3->unk7 & 0xFF) << 8) | ((var_v0_3->unk8 & 0xFF) << 0x10);
                            var_at_3 += 1;
                            var_v0_3 += 6;
                        } while (var_at_3 < temp_sp->unk2);
                    }
                    return;
                }
                arg_sp0.unk-48 = (s64) saved_reg_ra;
                temp_gp->unk-74EC(&sub_5e4f0000 + 0x2278, 0x15AACC, temp_v0 * 7, temp_a4, -0x10);
            }
        }
    }
}

void mgrasInstallNormalMap(void *pColormap, ? arg_sp0) {
    s16 temp_a4;
    s16 temp_a7;
    s16 var_a3;
    s32 temp_a6;
    s32 temp_f0;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a2_3;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_at;
    s32 var_t1;
    s32 var_t1_2;
    s64 temp_a2_2;
    s64 temp_at_2;
    s64 temp_t9_2;
    s64 temp_t9_3;
    s64 var_a2_2;
    u16 temp_at;
    u16 var_t0;
    u16 var_t0_2;
    u8 temp_t2_2;
    void *temp_a2;
    void *temp_a5;
    void *temp_gp;
    void *temp_sp;
    void *temp_t0;
    void *temp_t3_2;
    void *var_a2;
    void *var_a3_2;
    void *var_a3_3;
    void *var_a4;
    void *var_a4_2;
    void *var_a6;
    void *var_a7;

    arg_sp0.unk-70 = (s64) saved_reg_fp;
    arg_sp0.unk-68 = (s64) saved_reg_gp;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x147BDC;
    temp_t9 = pColormap->unk44;
    arg_sp0.unk-48 = (s64) temp_t9;
    temp_a2 = pColormap->unk0;
    temp_a5 = pColormap->unkC;
    temp_a4 = temp_a2->unk4;
    arg_sp0.unk-60 = (s64) saved_reg_s6;
    var_a3 = 0;
    arg_sp0.unk-78 = (s64) temp_t9;
    temp_a6 = temp_gp->unk-3140 * 4;
    temp_t3 = (temp_a4 & 1) == 0;
    var_a7 = *(temp_a5->unk1B4 + temp_a6);
    if (temp_a4 != 4) {
        temp_t9_2 = arg_sp0.unk-78;
        temp_sp = sp - (((temp_a2->unk8 * 6) + 0x13) & ~0xF);
        var_t1 = 0;
        temp_t2 = (temp_a5->unk74->unk74 + (*temp_t9_2 * 0x1C))->unk18;
        if (temp_sp != NULL) {
            var_a4 = temp_sp;
            if ((arg_sp0.unk-48 == 0) || (temp_t3 != 0)) {
                var_t0 = temp_a2->unk8;
                if ((s32) var_t0 > 0) {
                    var_a5 = temp_t2;
                    var_a2 = pColormap->unk38;
loop_10:
                    var_t1 += 1;
                    if (var_a2->unkC != 0) {
                        goto block_11;
                    }
                    var_at = var_t1 < (s32) var_t0;
                    if (temp_t3 != 0) {
block_11:
                        var_a4->unk4 = (s16) var_a5;
                        var_a3 += 1;
                        if (var_a2->unk10 != 0) {
                            var_a4->unk6 = (s8) ((s32) *(u16 *) var_a2->unk0 >> 8);
                            var_a4->unk7 = (s8) ((s32) *(u16 *) var_a2->unk4 >> 8);
                            var_a4->unk8 = (s8) ((s32) *var_a2->unk8 >> 8);
                        } else {
                            var_a4->unk6 = (s8) ((s32) var_a2->unk0 >> 8);
                            var_a4->unk7 = (s8) ((s32) var_a2->unk2 >> 8);
                            var_a4->unk8 = (s8) ((s32) var_a2->unk4 >> 8);
                        }
                        var_a4 += 6;
                        var_t0 = pColormap->unk0->unk8;
                        var_at = var_t1 < (s32) var_t0;
                    }
                    var_a2 += 0x14;
                    var_a5 += 1;
                    if (var_at != 0) {
                        goto loop_10;
                    }
                }
            } else {
                var_t0_2 = temp_a2->unk8;
                var_a5_2 = 0;
                var_t1_2 = temp_t2;
                arg_sp0.unk-50 = (s64) pColormap->unk38;
                if ((s32) var_t0_2 > 0) {
                    var_a4_2 = temp_sp;
                    var_a2_2 = arg_sp0.unk-50;
loop_52:
                    if ((var_a2_2->unkC != 0) && ((((var_a5_2 >> 5) * 4) + temp_t9_2)->unk4 & (1 << var_a5_2))) {
                        var_a4_2->unk4 = (s16) var_t1_2;
                        var_a3 += 1;
                        if (var_a2_2->unk10 != 0) {
                            var_a4_2->unk6 = (s8) ((s32) *(u16 *) var_a2_2->unk0 >> 8);
                            var_a4_2->unk7 = (s8) ((s32) *(u16 *) var_a2_2->unk4 >> 8);
                            var_a4_2->unk8 = (s8) ((s32) *var_a2_2->unk8 >> 8);
                        } else {
                            var_a4_2->unk6 = (s8) ((s32) var_a2_2->unk0 >> 8);
                            var_a4_2->unk7 = (s8) ((s32) var_a2_2->unk2 >> 8);
                            var_a4_2->unk8 = (s8) ((s32) var_a2_2->unk4 >> 8);
                        }
                        var_a4_2 += 6;
                        var_t0_2 = pColormap->unk0->unk8;
                    }
                    var_a5_2 += 1;
                    var_a2_2 += 0x14;
                    var_t1_2 += 1;
                    if (var_a5_2 < (s32) var_t0_2) {
                        goto loop_52;
                    }
                }
            }
            var_a4_3 = 0;
            if (var_a3 != 0) {
                temp_sp->unk2 = var_a3;
                temp_t3_2 = *(pColormap->unkC->unk1B4 + temp_a6);
                temp_t0 = temp_t3_2->unk0;
                arg_sp0.unk-88 = (s64) saved_reg_s4;
                temp_t9_3 = (s64) ((s64) var_a3 << 0x30) >> 0x30;
                arg_sp0.unk-58 = (s64) temp_t3_2->unk4;
                if (temp_t0->unk70100 & 0x1F) {
                    do {

                    } while (temp_t0->unk70100 & 0x1F);
                }
                var_a3_2 = temp_sp;
                if (temp_t9_3 > 0) {
                    var_a6 = temp_t0 + 0x60000;
                    var_a5_3 = 0;
                    arg_sp0.unk-90 = (s64) var_a7;
loop_24:
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x106($a3) */);
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($a3) */);
                    temp_at = var_a3_2->unk4;
                    temp_v0 = var_a5_3 & 0x1F;
                    var_a5_3 += 1;
                    temp_a7 = ((temp_at << 8) & 0xFF00) | (((s32) temp_at >> 8) & 0xFF);
                    if (temp_v0 == 0) {
                        var_a4_3 = 6;
                        if (temp_t0->unk70100 & 0x1F) {
                            do {

                            } while (temp_t0->unk70100 & 0x1F);
                        }
                        temp_at_2 = arg_sp0.unk-58;
                        temp_at_2->unk9F0 = 4;
                        temp_t0->unk61C88 = 4;
                        temp_t0->unk61F00 = (s32) temp_t3_2->unk84;
                        temp_at_2->unk9F0 = 4;
                        temp_t0->unk61C88 = 4;
                        temp_t0->unk61F00 = (s32) temp_t3_2->unk84;
                        if (temp_t0->unk70100 & 0x1F) {
                            do {

                            } while (temp_t0->unk70100 & 0x1F);
                        }
                        if (!(temp_t0->unk61208 & 8)) {
                            do {

                            } while (!(temp_t0->unk61208 & 8));
                        }
                        temp_t0->unk60C30 = temp_a7;
                        temp_t0->unk60C30 = temp_a7;
                        arg_sp0.unk-58->unk9F0 = 4;
                        temp_t0->unk61C88 = 4;
                        temp_t0->unk61F00 = (s32) (temp_t3_2->unk84 | 0x4000);
                    }
                    if (var_a4_3 >= 6) {
                        var_a4_3 = 0;
                        if (temp_t0->unk70100 & 0x1F) {
                            do {

                            } while (temp_t0->unk70100 & 0x1F);
                        }
                    }
                    temp_t0->unk60C30 = temp_a7;
                    temp_t2_2 = var_a3_2->unk7;
                    var_a4_3 += 2;
                    if (temp_t3_2->unk74 != 0) {
                        temp_t0->unk60D18 = (s32) ((var_a3_2->unk6 << 0x18) | (temp_t2_2 << 0x10) | (var_a3_2->unk8 << 8));
                    } else {
                        temp_f0 = (s32) ((f32) (second half of f64) + (f32) ((f64) temp_t2_2 * temp_gp->unk-3298) + (f32) ((second half of f64) * temp_gp->unk-3290));
                        temp_t0->unk60D18 = (s32) ((temp_f0 << 0x10) | (temp_f0 << 0x18) | (temp_f0 << 8));
                    }
                    var_a3_2 += 6;
                    if (var_a5_3 != temp_t9_3) {
                        goto loop_24;
                    }
                    var_a7 = (void *) arg_sp0.unk-90;
                } else {
                    var_a6 = temp_t0 + 0x60000;
                }
                temp_a2_2 = arg_sp0.unk-58;
                temp_a2_2->unk9F0 = 4;
                var_a6->unk1C88 = 4;
                var_a6->unk1F00 = (s32) temp_t3_2->unk84;
                temp_a2_2->unk9F0 = 4;
                var_a6->unk1C88 = 4;
                var_a6->unk1F00 = (s32) temp_t3_2->unk84;
                var_a3_3 = temp_sp;
                var_a2_3 = 0;
                if (temp_sp->unk2 > 0) {
                    do {
                        *(temp_t3_2->unk64 + (var_a3_3->unk4 * 4)) = (var_a3_3->unk6 & 0xFF) | ((var_a3_3->unk7 & 0xFF) << 8) | ((var_a3_3->unk8 & 0xFF) << 0x10);
                        var_a2_3 += 1;
                        var_a3_3 += 6;
                    } while (var_a2_3 < temp_sp->unk2);
                }
            }
            if (var_a7->unk78 == NULL) {
                var_a7->unk78 = pColormap;
            }
            return;
        }
        arg_sp0.unk-80 = (s64) saved_reg_ra;
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x22A8);
    }
}

s32 mgrasInitializeColormap(void *arg0) {
    u64 sp48;
    u64 sp40;
    u64 sp38;
    u64 sp30;
    u64 sp28;
    u64 sp20;
    u64 sp18;
    u64 sp10;
    u64 sp8;
    u64 sp0;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_at;
    s16 temp_at_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 temp_a6_2;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t2_4;
    s32 temp_t2_5;
    s32 temp_t2_6;
    s32 temp_t2_7;
    s32 temp_t2_8;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a4;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a6;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_3;
    s32 var_t1_2;
    s32 var_t1_4;
    u16 *temp_at_6;
    u16 *temp_v1_4;
    u16 *temp_v1_8;
    u16 *var_at;
    u16 *var_at_3;
    u16 *var_at_4;
    u16 *var_at_5;
    u16 *var_at_6;
    u16 *var_at_8;
    u16 *var_v1;
    u16 var_t2;
    u32 temp_a0_3;
    u32 temp_a0_5;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 temp_a6;
    u32 temp_a6_3;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_lo_3;
    u32 temp_lo_4;
    u32 temp_lo_5;
    u32 temp_lo_6;
    u32 temp_lo_7;
    u32 temp_lo_8;
    u32 temp_ra;
    u32 temp_ra_2;
    u32 temp_s3_2;
    u32 temp_s3_3;
    u32 temp_t0;
    u32 temp_t0_3;
    u32 temp_t3;
    u32 temp_t3_2;
    u32 var_at_2;
    u32 var_at_7;
    u32 var_lo;
    u32 var_lo_2;
    u32 var_lo_3;
    u32 var_lo_4;
    u32 var_ra;
    u32 var_ra_2;
    u32 var_t1;
    u32 var_t1_3;
    u32 var_t8;
    u32 var_t8_2;
    u32 var_t9;
    u32 var_t9_2;
    u32 var_v0;
    u32 var_v0_2;
    u32 var_v0_4;
    u32 var_v1_2;
    u32 var_v1_3;
    u8 *var_a0_2;
    u8 *var_a2;
    u8 *var_v0_3;
    u8 var_a3;
    u8 var_a4_2;
    void *temp_a4;
    void *temp_at_2;
    void *temp_at_4;
    void *temp_at_5;
    void *temp_gp;
    void *temp_s3;
    void *temp_t2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v1_3;
    void *temp_v1_7;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1468F0;
    temp_s3 = arg0->unkC;
    if (temp_gp->unk-7D00() != 0) {
        temp_a4 = arg0->unk0;
        if (temp_a4->unk4 & 1) {
            temp_t2 = temp_s3->unk74;
            temp_t2_2 = (((temp_t2->unk58 + ((temp_a4->unk0 - temp_t2->unk50) * 0x14))->unk4 << 5) + (temp_gp - 0x5BE0))->unk4;
            temp_a0 = ((*(temp_s3->unk1B4 + (temp_gp->unk-3140 * 4)))->unk3C + (temp_t2_2 * 0xC))->unk8;
            if (temp_t2_2 < 0x20) {
                if (temp_a0 & 0x400) {
                    return 1;
                }
                goto block_7;
            }
            if (temp_a0 & 0x100) {
                return 1;
            }
block_7:
            if (arg0->unk10 & 2) {
                return 0;
            }
            arg0->unk38->unkC = -1;
            arg0->unk38->unk10 = 0;
            arg0->unk14 = (s32) (arg0->unk14 - 1);
            return 1;
        }
        if ((*((temp_s3->unk0 * 4) + &ddxActiveScreens))->unk44->unk11 != 0x20) {
            temp_at = temp_a4->unk6;
            temp_a2 = temp_a4->unk4;
            temp_t8 = 0x10 - temp_at;
            temp_t3 = temp_a4->unk8 - 1;
            temp_s3_2 = (1 << temp_at) - 1;
            if (temp_a2 == 4) {
                temp_t2_3 = temp_t3 + 1;
                sp40 = (u64) ((u32) temp_a4->unk10 >> temp_a4->unk1C);
                sp48 = (u64) ((u32) temp_a4->unk14 >> temp_a4->unk20);
                var_a0 = 0;
                sp38 = (u64) ((u32) temp_a4->unkC >> temp_a4->unk18);
                if (temp_t2_3 >= 2) {
                    var_t9 = (u32) (((u32) (0U / sp38) >> temp_t8) * 0xFFFF) / temp_s3_2;
                    temp_t2_4 = (temp_t2_3 * 0xFFFF) - 0xFFFF;
                    var_t8 = (u32) (((u32) (0U / sp40) >> temp_t8) * 0xFFFF) / temp_s3_2;
                    var_ra = 0xFFFF;
                    var_at = arg0->unk38;
                    var_t1 = (u32) (((u32) (0U / sp48) >> temp_t8) * 0xFFFF) / temp_s3_2;
                    var_lo = 0xFFFFU / sp38;
loop_13:
                    temp_v1 = var_a0 + 0x14;
                    *(var_at + var_a0) = (s16) var_t9;
                    var_t9 = (u32) ((var_lo >> temp_t8) * 0xFFFF) / temp_s3_2;
                    temp_lo = (u32) (((u32) (var_ra / sp40) >> temp_t8) * 0xFFFF) / temp_s3_2;
                    (arg0->unk3C + var_a0)->unk2 = (s16) var_t8;
                    M2C_TRAP_IF(sp38 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(sp40 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(sp48 == 0);
                    (arg0->unk40 + var_a0)->unk4 = (s16) var_t1;
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    temp_t0 = var_ra + 0xFFFF;
                    var_t1 = (u32) (((u32) (var_ra / sp48) >> temp_t8) * 0xFFFF) / temp_s3_2;
                    if (var_ra != temp_t2_4) {
                        var_a0 = temp_v1 + 0x14;
                        *(arg0->unk38 + temp_v1) = (s16) var_t9;
                        var_t9 = (u32) (((u32) (temp_t0 / sp38) >> temp_t8) * 0xFFFF) / temp_s3_2;
                        var_t8 = (u32) (((u32) (temp_t0 / sp40) >> temp_t8) * 0xFFFF) / temp_s3_2;
                        (arg0->unk3C + temp_v1)->unk2 = (s16) temp_lo;
                        M2C_TRAP_IF(sp38 == 0);
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        M2C_TRAP_IF(sp40 == 0);
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        M2C_TRAP_IF(sp48 == 0);
                        (arg0->unk40 + temp_v1)->unk4 = (s16) var_t1;
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        var_ra = temp_t0 + 0xFFFF;
                        var_t1 = (u32) (((u32) (temp_t0 / sp48) >> temp_t8) * 0xFFFF) / temp_s3_2;
                        var_lo = var_ra / sp38;
                        var_at = arg0->unk38;
                        if (temp_t0 == temp_t2_4) {
                            var_a5 = var_a0;
                        } else {
                            goto loop_13;
                        }
                    } else {
                        var_a5 = temp_v1;
                        var_t8 = temp_lo;
                    }
                    *(arg0->unk38 + var_a5) = (s16) var_t9;
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    (arg0->unk3C + var_a5)->unk2 = (s16) var_t8;
                    M2C_TRAP_IF(sp48 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(sp40 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(sp38 == 0);
                    (arg0->unk40 + var_a5)->unk4 = (s16) var_t1;
                } else {
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / sp38) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    arg0->unk3C->unk2 = (s16) ((u32) (((u32) (0U / sp40) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(sp40 == 0);
                    M2C_TRAP_IF(sp38 == 0);
                    M2C_TRAP_IF(sp48 == 0);
                    arg0->unk40->unk4 = (s16) ((u32) (((u32) (0U / sp48) >> temp_t8) * 0xFFFF) / temp_s3_2);
                }
            } else if (temp_a2 == 2) {
                temp_a0_2 = temp_t3 + 1;
                temp_ra = (u32) temp_a4->unk14 >> temp_a4->unk20;
                var_a4 = 0;
                temp_a6 = (u32) temp_a4->unk10 >> temp_a4->unk1C;
                var_t1_2 = 0;
                temp_a3 = (u32) temp_a4->unkC >> temp_a4->unk18;
                if (temp_a0_2 >= 2) {
                    sp30 = (u64) temp_a3;
                    temp_t0_2 = temp_a0_2 - 1;
                    sp28 = (u64) temp_a6;
                    var_at_2 = temp_a4->unkC;
loop_21:
                    temp_v1_2 = var_a4 + 0x14;
                    *(arg0->unk38 + var_a4) = (s16) ((u32) (((u32) ((u32) (((u32) (var_at_2 & var_t1_2) >> temp_a4->unk18) * 0xFFFF) / temp_a3) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    (arg0->unk38 + var_a4)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & var_t1_2) >> temp_a4->unk1C) * 0xFFFF) / temp_a6) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    temp_lo_2 = (u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & var_t1_2) >> temp_a4->unk20) * 0xFFFF) / temp_ra) >> temp_t8) * 0xFFFF) / temp_s3_2;
                    M2C_TRAP_IF(temp_a3 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(temp_a6 == 0);
                    var_t1_2 += 1;
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    (arg0->unk38 + var_a4)->unk4 = (s16) temp_lo_2;
                    M2C_TRAP_IF(temp_ra == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    if (var_t1_2 != temp_t0_2) {
                        var_a4 = temp_v1_2 + 0x14;
                        *(arg0->unk38 + temp_v1_2) = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unkC & var_t1_2) >> temp_a4->unk18) * 0xFFFF) / temp_a3) >> temp_t8) * 0xFFFF) / temp_s3_2);
                        (arg0->unk38 + temp_v1_2)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & var_t1_2) >> temp_a4->unk1C) * 0xFFFF) / temp_a6) >> temp_t8) * 0xFFFF) / temp_s3_2);
                        temp_lo_3 = (u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & var_t1_2) >> temp_a4->unk20) * 0xFFFF) / temp_ra) >> temp_t8) * 0xFFFF) / temp_s3_2;
                        M2C_TRAP_IF(temp_a3 == 0);
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        M2C_TRAP_IF(temp_a6 == 0);
                        var_t1_2 += 1;
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        (arg0->unk38 + temp_v1_2)->unk4 = (s16) temp_lo_3;
                        M2C_TRAP_IF(temp_ra == 0);
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        var_at_2 = temp_a4->unkC;
                        if (var_t1_2 != temp_t0_2) {
                            goto loop_21;
                        }
                    } else {
                        var_a4 = temp_v1_2;
                    }
                    *(arg0->unk38 + var_a4) = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unkC & var_t1_2) >> temp_a4->unk18) * 0xFFFF) / sp30) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    (arg0->unk38 + var_a4)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & var_t1_2) >> temp_a4->unk1C) * 0xFFFF) / sp28) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(temp_ra == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(sp30 == 0);
                    var_v1 = arg0->unk38 + var_a4;
                    M2C_TRAP_IF(sp28 == 0);
                    var_v0 = (u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & var_t1_2) >> temp_a4->unk20) * 0xFFFF) / temp_ra) >> temp_t8) * 0xFFFF) / temp_s3_2;
                } else {
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unkC & 0) >> temp_a4->unk18) * 0xFFFF) / temp_a3) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    arg0->unk38->unk2 = (u16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & 0) >> temp_a4->unk1C) * 0xFFFF) / temp_a6) >> temp_t8) * 0xFFFF) / temp_s3_2);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(temp_ra == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(temp_a6 == 0);
                    M2C_TRAP_IF(temp_s3_2 == 0);
                    M2C_TRAP_IF(temp_a3 == 0);
                    var_v1 = arg0->unk38;
                    var_v0 = (u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & 0) >> temp_a4->unk20) * 0xFFFF) / temp_ra) >> temp_t8) * 0xFFFF) / temp_s3_2;
                }
                var_v1->unk4 = (s16) var_v0;
            } else {
                temp_t2_5 = temp_t3 + 1;
                if (temp_a2 == 0) {
                    var_t0 = 0;
                    if (temp_t2_5 >= 2) {
                        var_v1_2 = 0xFFFF;
                        temp_a6_2 = (temp_t2_5 * 0xFFFF) - 0xFFFF;
                        var_at_3 = arg0->unk38;
                        var_v0_2 = (u32) (((u32) (0U / temp_t3) >> temp_t8) * 0xFFFF) / temp_s3_2;
                        var_lo_2 = 0xFFFFU / temp_t3;
loop_28:
                        temp_a7 = var_t0 + 0x14;
                        *(var_at_3 + var_t0) = (s16) var_v0_2;
                        temp_v0 = arg0->unk38 + var_t0;
                        temp_v0->unk2 = (u16) temp_v0->unk0;
                        temp_v0_2 = arg0->unk38 + var_t0;
                        M2C_TRAP_IF(temp_t3 == 0);
                        temp_v0_2->unk4 = (u16) temp_v0_2->unk0;
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        temp_a0_3 = var_v1_2 + 0xFFFF;
                        var_v0_2 = (u32) ((var_lo_2 >> temp_t8) * 0xFFFF) / temp_s3_2;
                        if (var_v1_2 != temp_a6_2) {
                            var_t0 = temp_a7 + 0x14;
                            *(arg0->unk38 + temp_a7) = (s16) var_v0_2;
                            temp_lo_4 = (u32) (((u32) (temp_a0_3 / temp_t3) >> temp_t8) * 0xFFFF) / temp_s3_2;
                            temp_v0_3 = arg0->unk38 + temp_a7;
                            temp_v0_3->unk2 = (u16) temp_v0_3->unk0;
                            temp_at_2 = arg0->unk38 + temp_a7;
                            M2C_TRAP_IF(temp_t3 == 0);
                            temp_at_2->unk4 = (u16) temp_at_2->unk0;
                            M2C_TRAP_IF(temp_s3_2 == 0);
                            var_v1_2 = temp_a0_3 + 0xFFFF;
                            var_v0_2 = temp_lo_4;
                            var_lo_2 = var_v1_2 / temp_t3;
                            var_at_3 = arg0->unk38;
                            if (temp_a0_3 == temp_a6_2) {

                            } else {
                                goto loop_28;
                            }
                        } else {
                            var_t0 = temp_a7;
                        }
                        *(arg0->unk38 + var_t0) = (s16) var_v0_2;
                        temp_v1_3 = arg0->unk38 + var_t0;
                        temp_v1_3->unk2 = (u16) temp_v1_3->unk0;
                        var_at_4 = arg0->unk38 + var_t0;
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        var_t2 = *var_at_4;
                        M2C_TRAP_IF(temp_t3 == 0);
                    } else {
                        arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / temp_t3) >> temp_t8) * 0xFFFF) / temp_s3_2);
                        temp_v1_4 = arg0->unk38;
                        temp_v1_4->unk2 = (u16) temp_v1_4->unk0;
                        M2C_TRAP_IF(temp_s3_2 == 0);
                        var_at_4 = arg0->unk38;
                        M2C_TRAP_IF(temp_t3 == 0);
                        var_t2 = var_at_4->unk0;
                    }
                    var_at_4->unk4 = var_t2;
                }
            }
            return 1;
        }
        if (temp_a4->unk4 != 2) {
            goto block_37;
        }
        if (temp_a4->unk8 == 0x100) {
            var_at_5 = arg0->unk38;
            var_a2 = &gl_blue_map__DKC;
            var_t0_2 = 0;
            var_a3 = gl_green_map__CKC;
            var_v0_3 = &gl_green_map__CKC + 1;
            var_a0_2 = &gl_red_map__BKC + 1;
            var_a4_2 = gl_red_map__BKC;
            do {
                temp_a7_2 = var_t0_2 + 0x14;
                *(var_at_5 + var_t0_2) = var_a4_2 << 8;
                (arg0->unk38 + var_t0_2)->unk2 = (s16) (var_a3 << 8);
                (arg0->unk38 + var_t0_2)->unk4 = (s16) (var_a2->unk0 << 8);
                var_t0_2 = temp_a7_2 + 0x14;
                *(arg0->unk38 + temp_a7_2) = var_a0_2->unk0 << 8;
                var_a4_2 = var_a0_2->unk1;
                (arg0->unk38 + temp_a7_2)->unk2 = (s16) (var_v0_3->unk0 << 8);
                var_a3 = var_v0_3->unk1;
                (arg0->unk38 + temp_a7_2)->unk4 = (s16) (var_a2->unk1 << 8);
                var_a2 = var_a2 + 1 + 1;
                var_v0_3 = var_v0_3 + 1 + 1;
                var_a0_2 = var_a0_2 + 1 + 1;
                var_at_5 = arg0->unk38;
            } while (var_a2 != (&gl_blue_map__DKC + 0x100));
            *(var_at_5 + var_t0_2) = var_a4_2 << 8;
            (arg0->unk38 + var_t0_2)->unk2 = (s16) (var_a3 << 8);
            (arg0->unk38 + var_t0_2)->unk4 = (s16) (*var_a2 << 8);
        } else {
block_37:
            temp_a2_2 = temp_a4->unk4;
            temp_at_3 = temp_a4->unk6;
            temp_t3_2 = temp_a4->unk8 - 1;
            temp_t8_2 = 0x10 - temp_at_3;
            temp_s3_3 = (1 << temp_at_3) - 1;
            if (temp_a2_2 == 4) {
                temp_t2_6 = temp_t3_2 + 1;
                sp10 = (u64) ((u32) temp_a4->unk10 >> temp_a4->unk1C);
                sp18 = (u64) ((u32) temp_a4->unk14 >> temp_a4->unk20);
                var_a0_3 = 0;
                sp20 = (u64) ((u32) temp_a4->unkC >> temp_a4->unk18);
                if (temp_t2_6 >= 2) {
                    var_t9_2 = (u32) (((u32) (0U / sp20) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    temp_t2_7 = (temp_t2_6 * 0xFFFF) - 0xFFFF;
                    var_t8_2 = (u32) (((u32) (0U / sp10) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    var_ra_2 = 0xFFFF;
                    var_at_6 = arg0->unk38;
                    var_t1_3 = (u32) (((u32) (0U / sp18) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    var_lo_3 = 0xFFFFU / sp20;
loop_40:
                    temp_v1_5 = var_a0_3 + 0x14;
                    *(var_at_6 + var_a0_3) = (s16) var_t9_2;
                    var_t9_2 = (u32) ((var_lo_3 >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    temp_lo_5 = (u32) (((u32) (var_ra_2 / sp10) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    (arg0->unk3C + var_a0_3)->unk2 = (s16) var_t8_2;
                    M2C_TRAP_IF(sp20 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(sp10 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(sp18 == 0);
                    (arg0->unk40 + var_a0_3)->unk4 = (s16) var_t1_3;
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    temp_t0_3 = var_ra_2 + 0xFFFF;
                    var_t1_3 = (u32) (((u32) (var_ra_2 / sp18) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    if (var_ra_2 != temp_t2_7) {
                        var_a0_3 = temp_v1_5 + 0x14;
                        *(arg0->unk38 + temp_v1_5) = (s16) var_t9_2;
                        var_t9_2 = (u32) (((u32) (temp_t0_3 / sp20) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                        var_t8_2 = (u32) (((u32) (temp_t0_3 / sp10) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                        (arg0->unk3C + temp_v1_5)->unk2 = (s16) temp_lo_5;
                        M2C_TRAP_IF(sp20 == 0);
                        M2C_TRAP_IF(temp_s3_3 == 0);
                        M2C_TRAP_IF(sp10 == 0);
                        M2C_TRAP_IF(temp_s3_3 == 0);
                        M2C_TRAP_IF(sp18 == 0);
                        (arg0->unk40 + temp_v1_5)->unk4 = (s16) var_t1_3;
                        M2C_TRAP_IF(temp_s3_3 == 0);
                        var_ra_2 = temp_t0_3 + 0xFFFF;
                        var_t1_3 = (u32) (((u32) (temp_t0_3 / sp18) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                        var_lo_3 = var_ra_2 / sp20;
                        var_at_6 = arg0->unk38;
                        if (temp_t0_3 == temp_t2_7) {
                            var_a6 = var_a0_3;
                        } else {
                            goto loop_40;
                        }
                    } else {
                        var_a6 = temp_v1_5;
                        var_t8_2 = temp_lo_5;
                    }
                    *(arg0->unk38 + var_a6) = (s16) var_t9_2;
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    (arg0->unk3C + var_a6)->unk2 = (s16) var_t8_2;
                    M2C_TRAP_IF(sp18 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(sp10 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(sp20 == 0);
                    (arg0->unk40 + var_a6)->unk4 = (s16) var_t1_3;
                } else {
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / sp20) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    arg0->unk3C->unk2 = (s16) ((u32) (((u32) (0U / sp10) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(sp10 == 0);
                    M2C_TRAP_IF(sp20 == 0);
                    M2C_TRAP_IF(sp18 == 0);
                    arg0->unk40->unk4 = (s16) ((u32) (((u32) (0U / sp18) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                }
            } else if (temp_a2_2 == 2) {
                temp_a0_4 = temp_t3_2 + 1;
                temp_ra_2 = (u32) temp_a4->unk14 >> temp_a4->unk20;
                var_a4_3 = 0;
                temp_a6_3 = (u32) temp_a4->unk10 >> temp_a4->unk1C;
                var_t1_4 = 0;
                temp_a3_2 = (u32) temp_a4->unkC >> temp_a4->unk18;
                if (temp_a0_4 >= 2) {
                    sp8 = (u64) temp_a6_3;
                    temp_t0_4 = temp_a0_4 - 1;
                    sp0 = (u64) temp_a3_2;
                    var_at_7 = temp_a4->unkC;
loop_50:
                    temp_v1_6 = var_a4_3 + 0x14;
                    *(arg0->unk38 + var_a4_3) = (s16) ((u32) (((u32) ((u32) (((u32) (var_at_7 & var_t1_4) >> temp_a4->unk18) * 0xFFFF) / temp_a3_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    (arg0->unk38 + var_a4_3)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & var_t1_4) >> temp_a4->unk1C) * 0xFFFF) / temp_a6_3) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    temp_lo_6 = (u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & var_t1_4) >> temp_a4->unk20) * 0xFFFF) / temp_ra_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    M2C_TRAP_IF(temp_a3_2 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_a6_3 == 0);
                    var_t1_4 += 1;
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    (arg0->unk38 + var_a4_3)->unk4 = (s16) temp_lo_6;
                    M2C_TRAP_IF(temp_ra_2 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    if (var_t1_4 != temp_t0_4) {
                        var_a4_3 = temp_v1_6 + 0x14;
                        *(arg0->unk38 + temp_v1_6) = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unkC & var_t1_4) >> temp_a4->unk18) * 0xFFFF) / temp_a3_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                        (arg0->unk38 + temp_v1_6)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & var_t1_4) >> temp_a4->unk1C) * 0xFFFF) / temp_a6_3) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                        temp_lo_7 = (u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & var_t1_4) >> temp_a4->unk20) * 0xFFFF) / temp_ra_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                        M2C_TRAP_IF(temp_a3_2 == 0);
                        M2C_TRAP_IF(temp_s3_3 == 0);
                        M2C_TRAP_IF(temp_a6_3 == 0);
                        var_t1_4 += 1;
                        M2C_TRAP_IF(temp_s3_3 == 0);
                        (arg0->unk38 + temp_v1_6)->unk4 = (s16) temp_lo_7;
                        M2C_TRAP_IF(temp_ra_2 == 0);
                        M2C_TRAP_IF(temp_s3_3 == 0);
                        var_at_7 = temp_a4->unkC;
                        if (var_t1_4 != temp_t0_4) {
                            goto loop_50;
                        }
                    } else {
                        var_a4_3 = temp_v1_6;
                    }
                    *(arg0->unk38 + var_a4_3) = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unkC & var_t1_4) >> temp_a4->unk18) * 0xFFFF) / sp0) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    (arg0->unk38 + var_a4_3)->unk2 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & var_t1_4) >> temp_a4->unk1C) * 0xFFFF) / sp8) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_ra_2 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(sp0 == 0);
                    M2C_TRAP_IF(sp8 == 0);
                    (arg0->unk38 + var_a4_3)->unk4 = (s16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & var_t1_4) >> temp_a4->unk20) * 0xFFFF) / temp_ra_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                } else {
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unkC & 0) >> temp_a4->unk18) * 0xFFFF) / temp_a3_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    arg0->unk38->unk2 = (u16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk10 & 0) >> temp_a4->unk1C) * 0xFFFF) / temp_a6_3) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_ra_2 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_a6_3 == 0);
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_a3_2 == 0);
                    arg0->unk38->unk4 = (u16) ((u32) (((u32) ((u32) (((u32) (temp_a4->unk14 & 0) >> temp_a4->unk20) * 0xFFFF) / temp_ra_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                }
            } else if (temp_a2_2 == 0) {
                temp_t2_8 = temp_t3_2 + 1;
                var_t0_3 = 0;
                if (temp_t2_8 >= 2) {
                    var_v1_3 = 0xFFFF;
                    temp_a6_4 = (temp_t2_8 * 0xFFFF) - 0xFFFF;
                    var_at_8 = arg0->unk38;
                    var_v0_4 = (u32) (((u32) (0U / temp_t3_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    var_lo_4 = 0xFFFFU / temp_t3_2;
loop_58:
                    temp_a7_3 = var_t0_3 + 0x14;
                    *(var_at_8 + var_t0_3) = (s16) var_v0_4;
                    temp_v0_4 = arg0->unk38 + var_t0_3;
                    temp_v0_4->unk2 = (u16) temp_v0_4->unk0;
                    temp_v0_5 = arg0->unk38 + var_t0_3;
                    M2C_TRAP_IF(temp_t3_2 == 0);
                    temp_v0_5->unk4 = (u16) temp_v0_5->unk0;
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    temp_a0_5 = var_v1_3 + 0xFFFF;
                    var_v0_4 = (u32) ((var_lo_4 >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                    if (var_v1_3 != temp_a6_4) {
                        var_t0_3 = temp_a7_3 + 0x14;
                        *(arg0->unk38 + temp_a7_3) = (s16) var_v0_4;
                        temp_lo_8 = (u32) (((u32) (temp_a0_5 / temp_t3_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3;
                        temp_v0_6 = arg0->unk38 + temp_a7_3;
                        temp_v0_6->unk2 = (u16) temp_v0_6->unk0;
                        temp_at_4 = arg0->unk38 + temp_a7_3;
                        M2C_TRAP_IF(temp_t3_2 == 0);
                        temp_at_4->unk4 = (u16) temp_at_4->unk0;
                        M2C_TRAP_IF(temp_s3_3 == 0);
                        var_v1_3 = temp_a0_5 + 0xFFFF;
                        var_v0_4 = temp_lo_8;
                        var_lo_4 = var_v1_3 / temp_t3_2;
                        var_at_8 = arg0->unk38;
                        if (temp_a0_5 == temp_a6_4) {

                        } else {
                            goto loop_58;
                        }
                    } else {
                        var_t0_3 = temp_a7_3;
                    }
                    *(arg0->unk38 + var_t0_3) = (s16) var_v0_4;
                    temp_v1_7 = arg0->unk38 + var_t0_3;
                    temp_v1_7->unk2 = (u16) temp_v1_7->unk0;
                    temp_at_5 = arg0->unk38 + var_t0_3;
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_t3_2 == 0);
                    temp_at_5->unk4 = (u16) temp_at_5->unk0;
                } else {
                    arg0->unk38->unk0 = (u16) ((u32) (((u32) (0U / temp_t3_2) >> temp_t8_2) * 0xFFFF) / temp_s3_3);
                    temp_at_6 = arg0->unk38;
                    temp_at_6->unk2 = (u16) temp_at_6->unk0;
                    temp_v1_8 = arg0->unk38;
                    M2C_TRAP_IF(temp_s3_3 == 0);
                    M2C_TRAP_IF(temp_t3_2 == 0);
                    temp_v1_8->unk4 = (u16) temp_v1_8->unk0;
                }
            }
        }
        return 1;
    }
    return 0;
}

void mgrasBlackCmap(void *arg0, ? arg_sp0) {
    s16 temp_a0;
    s16 temp_at_3;
    s16 temp_t0_2;
    s16 temp_v0;
    s16 temp_v1;
    s16 temp_v1_2;
    s16 var_at_2;
    s16 var_v0;
    s16 var_v0_2;
    s16 var_v1;
    s16 var_v1_2;
    s32 temp_f0;
    s32 temp_v1_3;
    s32 var_a0_4;
    s32 var_a5;
    s32 var_a6;
    s8 temp_a2;
    s8 temp_at_2;
    s8 temp_v0_2;
    s8 temp_v0_3;
    s8 var_a1;
    u16 temp_v0_5;
    u8 temp_t3;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_at;
    void *temp_at_4;
    void *temp_ra;
    void *temp_t0;
    void *temp_v0_4;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;
    void *var_a4;
    void *var_at;

    var_v1 = 0;
    arg_sp0.unk-28 = (s64) saved_reg_s1;
    arg_sp0.unk-20 = (s64) saved_reg_fp;
    if (sp != NULL) {
        var_v0 = 1;
        var_at = sp;
        do {
            var_at->unk6 = 0;
            var_at->unkC = 0;
            var_at->unk7 = 0;
            var_at->unkD = 0;
            var_at->unk8 = 0;
            var_at->unkE = 0;
            temp_a0 = var_v1 + 2;
            var_at->unkA = var_v0;
            temp_v0 = temp_a0 + 1;
            var_at->unk4 = var_v1;
            temp_at = var_at + 0xC;
            temp_at->unk6 = 0;
            temp_at->unkC = 0;
            temp_at->unk7 = 0;
            temp_at->unkD = 0;
            temp_at->unk8 = 0;
            temp_at->unkE = 0;
            var_v1 = temp_a0 + 2;
            temp_at->unkA = temp_v0;
            var_v0 = var_v1 + 1;
            temp_at->unk4 = temp_a0;
            var_at = temp_at + 0xC;
        } while (var_v1 != 0x1D00);
        temp_t0 = sp + 0x10000;
        var_v1_2 = 0x1D01;
        var_a1 = 0;
        sp->unkAE04 = 0x1D00;
        var_v0_2 = 0x1D02;
        var_a0 = temp_t0;
loop_6:
        temp_at_2 = var_a1 + 1;
        var_a0->unk-51F4 = temp_at_2;
        var_a0->unk-51F3 = temp_at_2;
        var_a0->unk-51F2 = temp_at_2;
        var_a0->unk-51F6 = var_v1_2;
        var_a0->unk-51FA = var_a1;
        var_a0->unk-51F9 = var_a1;
        temp_a2 = var_a1 + 2;
        var_a0->unk-51F8 = var_a1;
        temp_v1 = var_v0_2 + 1;
        temp_a0_2 = var_a0 + 0xC;
        temp_a0_2->unk-51FC = var_v0_2;
        temp_at_3 = temp_v1 + 1;
        if (temp_a2 != 0xFE) {
            temp_v0_2 = temp_a2 + 1;
            temp_a0_2->unk-51F4 = temp_v0_2;
            temp_a0_2->unk-51F3 = temp_v0_2;
            temp_a0_2->unk-51F2 = temp_v0_2;
            temp_a0_2->unk-51F6 = temp_v1;
            temp_a0_2->unk-51FA = temp_a2;
            temp_a0_2->unk-51F9 = temp_a2;
            var_a1 = temp_a2 + 2;
            temp_a0_2->unk-51F8 = temp_a2;
            var_v1_2 = temp_at_3 + 1;
            var_a0 = temp_a0_2 + 0xC;
            var_a0->unk-51FC = temp_at_3;
            var_v0_2 = var_v1_2 + 1;
            goto loop_6;
        }
        temp_a0_2->unk-51F6 = temp_v1;
        temp_a0_2->unk-51F8 = temp_a2;
        temp_a0_2->unk-51F9 = temp_a2;
        temp_a0_2->unk-51FA = temp_a2;
        var_at_2 = 0x1E00;
        temp_v0_3 = temp_a2 + 1;
        temp_a0_2->unk-51F4 = temp_v0_3;
        var_a0_2 = temp_t0;
        temp_a0_2->unk-51F3 = temp_v0_3;
        temp_a0_2->unk-51F2 = temp_v0_3;
        arg_sp0.unk-38 = (s64) saved_reg_ra;
        do {
            var_a0_2->unk-4BF4 = 0;
            var_a0_2->unk-4BF3 = 0;
            var_a0_2->unk-4BF2 = 0;
            var_a0_2->unk-4BF6 = (s16) (var_at_2 + 1);
            var_a0_2->unk-4BFA = 0;
            var_a0_2->unk-4BF9 = 0;
            temp_v1_2 = var_at_2 + 2;
            var_a0_2->unk-4BF8 = 0;
            var_a0_2->unk-4BFC = var_at_2;
            temp_v0_4 = var_a0_2 + 0xC;
            temp_v0_4->unk-4BF4 = 0;
            temp_v0_4->unk-4BF3 = 0;
            temp_v0_4->unk-4BF2 = 0;
            temp_v0_4->unk-4BF6 = (s16) (temp_v1_2 + 1);
            temp_v0_4->unk-4BFA = 0;
            temp_v0_4->unk-4BF9 = 0;
            var_at_2 = temp_v1_2 + 2;
            temp_v0_4->unk-4BF8 = 0;
            temp_v0_4->unk-4BFC = temp_v1_2;
            var_a0_2 = temp_v0_4 + 0xC;
        } while (var_at_2 != 0x2000);
        sp->unk2 = 0x2000;
        temp_a1 = *(arg0->unk1B4 + (saved_reg_gp->unk-3140 * 4));
        temp_at_4 = temp_a1->unk0;
        var_a5 = 0;
        var_a6 = 0;
        var_a0_3 = sp;
        temp_ra = temp_a1->unk4;
        if (temp_at_4->unk70100 & 0x1F) {
            do {

            } while (temp_at_4->unk70100 & 0x1F);
            arg_sp0.unk-30 = (s64) saved_reg_s0;
        }
        arg_sp0.unk-30 = (s64) saved_reg_s0;
loop_18:
        temp_v0_5 = var_a0_3->unk4;
        temp_v1_3 = var_a6 & 0x1F;
        var_a6 += 1;
        temp_t0_2 = ((temp_v0_5 << 8) & 0xFF00) | (((s32) temp_v0_5 >> 8) & 0xFF);
        if (temp_v1_3 == 0) {
            var_a5 = 6;
            if (temp_at_4->unk70100 & 0x1F) {
                do {

                } while (temp_at_4->unk70100 & 0x1F);
            }
            temp_ra->unk9F0 = 4;
            temp_at_4->unk61C88 = 4;
            temp_at_4->unk61F00 = (s32) temp_a1->unk84;
            temp_ra->unk9F0 = 4;
            temp_at_4->unk61C88 = 4;
            temp_at_4->unk61F00 = (s32) temp_a1->unk84;
            if (temp_at_4->unk70100 & 0x1F) {
                do {

                } while (temp_at_4->unk70100 & 0x1F);
            }
            if (!(temp_at_4->unk61208 & 8)) {
                do {

                } while (!(temp_at_4->unk61208 & 8));
            }
            temp_at_4->unk60C30 = temp_t0_2;
            temp_at_4->unk60C30 = temp_t0_2;
            temp_ra->unk9F0 = 4;
            temp_at_4->unk61C88 = 4;
            temp_at_4->unk61F00 = (s32) (temp_a1->unk84 | 0x4000);
        }
        if (var_a5 >= 6) {
            var_a5 = 0;
            if (temp_at_4->unk70100 & 0x1F) {
                do {

                } while (temp_at_4->unk70100 & 0x1F);
            }
        }
        temp_at_4->unk60C30 = temp_t0_2;
        temp_t3 = var_a0_3->unk7;
        var_a5 += 2;
        if (temp_a1->unk74 != 0) {
            temp_at_4->unk60D18 = (s32) ((var_a0_3->unk6 << 0x18) | (temp_t3 << 0x10) | (var_a0_3->unk8 << 8));
        } else {
            temp_f0 = (s32) ((f32) (second half of f64) + (f32) ((f64) temp_t3 * (second half of f64)) + (f32) ((second half of f64) * saved_reg_gp->unk-3290));
            temp_at_4->unk60D18 = (s32) ((temp_f0 << 0x10) | (temp_f0 << 0x18) | (temp_f0 << 8));
        }
        var_a0_3 += 6;
        if (var_a6 != 0x2000) {
            goto loop_18;
        }
        temp_ra->unk9F0 = 4;
        temp_at_4->unk61C88 = 4;
        temp_at_4->unk61F00 = (s32) temp_a1->unk84;
        temp_ra->unk9F0 = 4;
        temp_at_4->unk61C88 = 4;
        var_a4 = sp;
        var_a0_4 = 0;
        temp_at_4->unk61F00 = (s32) temp_a1->unk84;
        if (sp->unk2 > 0) {
            do {
                *(temp_a1->unk64 + (var_a4->unk4 * 4)) = (var_a4->unk6 & 0xFF) | ((var_a4->unk7 & 0xFF) << 8) | ((var_a4->unk8 & 0xFF) << 0x10);
                var_a0_4 += 1;
                var_a4 += 6;
            } while (var_a0_4 < sp->unk2);
        }
        return;
    }
    arg_sp0.unk-38 = (s64) saved_reg_ra;
    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x22E0, 0xFE, arg0);
}

void mgrasStrGamma8(void *arg0, s32 arg1, s32 arg2, s16 arg3, u8 *arg4, u8 *arg7) {
    s64 sp58;
    s64 sp30;
    s64 sp28;
    u8 sp20;
    s16 temp_at_2;
    s16 temp_at_3;
    s16 temp_at_4;
    s16 temp_s6;
    s16 temp_t3;
    s16 temp_t3_3;
    s16 temp_t8;
    s16 temp_v0;
    s16 temp_v0_3;
    s16 var_a2;
    s16 var_a3;
    s32 temp_a1;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s3;
    s32 temp_t3_2;
    s32 var_at;
    s32 var_v1;
    s64 var_ra;
    u8 *temp_a2;
    u8 *temp_at;
    u8 *temp_s4_2;
    u8 *temp_v0_4;
    u8 *temp_v0_5;
    u8 *var_a4;
    u8 *var_a5;
    u8 *var_a7;
    u8 *var_t0;
    u8 temp_a3;
    u8 temp_t3_4;
    u8 temp_v0_2;
    u8 var_v0;
    void *temp_gp;
    void *temp_s4;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a7 = arg7;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1380E8;
    temp_s4 = *(arg0->unk1B4 + (vcScreenPrivateIndex * 4));
    var_a5 = var_a4;
    sp28 = (s64) temp_s4;
    temp_s6 = var_a3;
    sp30 = (s64) arg0;
    var_a2 = temp_s6;
    temp_s4_2 = (temp_s4->unk24 + (arg2 * 0x10))->unkC;
    if (var_a3 > 0) {
        var_a7 = temp_s4_2;
        temp_s0 = arg1 & 4;
        temp_ra = arg1 & 2;
        temp_s3 = arg1 & 1;
        if (temp_s6 & 1) {
            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a7) */);
            temp_a3 = *var_a5;
            temp_t3 = ((temp_a3 << 8) | temp_a3) & 0xFFFF;
            *((temp_s3 != 0) ? var_a7 : &sp20) = temp_t3;
            temp_at = (temp_ra != 0) ? var_a7 : &unksp-1E0;
            ((temp_s0 != 0) ? var_a7 : &unksp-3E0)->unk400 = temp_t3;
            var_a5 += 1;
            var_a7 += 2;
            temp_at->unk200 = temp_t3;
        }
        temp_t3_2 = ((temp_s6 * 2) + temp_s4_2) - 4;
        var_a4 = (u8 *) temp_s0;
        var_t0 = var_a5;
        temp_a1 = var_a2 >> 1;
        var_a5 = &sp20;
        var_a3 = (s16) var_a7;
        if (temp_a1 != 0) {
            var_a7 = (u8 *) temp_s3;
            if (temp_a1 >= 2) {
                var_v1 = temp_ra != 0;
                var_at = temp_s3 != 0;
                var_v0 = var_t0->unk0;
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a3) */);
                    temp_v0 = ((var_v0 << 8) | var_v0) & 0xFFFF;
                    *((var_at != 0) ? var_a3 : (s16) var_a5) = temp_v0;
                    ((var_v1 != 0) ? var_a3 : (s16) &unksp-1E0)->unk200 = temp_v0;
                    ((var_a4 != NULL) ? var_a3 : (s16) &unksp-3E0)->unk400 = temp_v0;
                    temp_a2 = var_a3 + 2;
                    temp_v0_2 = var_t0->unk1;
                    temp_v0_3 = ((temp_v0_2 << 8) | temp_v0_2) & 0xFFFF;
                    *((var_a7 != NULL) ? temp_a2 : var_a5) = temp_v0_3;
                    ((temp_ra != 0) ? temp_a2 : &unksp-1E0)->unk200 = temp_v0_3;
                    ((var_a4 == NULL) ? &unksp-3E0 : temp_a2)->unk400 = temp_v0_3;
                    var_t0 += 2;
                    var_a3 += 4;
                    var_at = var_a7 != NULL;
                    var_v1 = temp_ra != 0;
                    var_v0 = var_t0->unk0;
                } while (var_a3 != temp_t3_2);
                temp_t3_3 = var_a3;
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($t3) */);
                temp_t8 = ((var_v0 << 8) | var_v0) & 0xFFFF;
                *((var_at != 0) ? temp_t3_3 : (s16) &sp20) = temp_t8;
                ((var_v1 != 0) ? temp_t3_3 : (s16) &unksp-1E0)->unk200 = temp_t8;
                ((temp_s0 != 0) ? temp_t3_3 : (s16) &unksp-3E0)->unk400 = temp_t8;
                var_a3 = (s16) var_t0->unk1;
                temp_v0_4 = temp_t3_3 + 2;
                var_a2 = temp_s3 != 0;
                temp_at_2 = ((var_a3 << 8) | var_a3) & 0xFFFF;
                *((var_a2 != 0) ? temp_v0_4 : &sp20) = temp_at_2;
                ((temp_ra != 0) ? temp_v0_4 : &unksp-1E0)->unk200 = temp_at_2;
                ((temp_s0 == 0) ? &unksp-3E0 : temp_v0_4)->unk400 = temp_at_2;
            } else {
                var_a2 = var_a3;
                temp_t3_4 = var_t0->unk0;
                temp_at_3 = ((temp_t3_4 << 8) | temp_t3_4) & 0xFFFF;
                *((temp_s3 != 0) ? var_a2 : (s16) &sp20) = temp_at_3;
                ((temp_ra != 0) ? var_a2 : (s16) &unksp-1E0)->unk200 = temp_at_3;
                ((temp_s0 != 0) ? var_a2 : (s16) &unksp-3E0)->unk400 = temp_at_3;
                temp_v0_5 = var_a2 + 2;
                var_a3 = (s16) var_t0->unk1;
                temp_at_4 = ((var_a3 << 8) | var_a3) & 0xFFFF;
                *((temp_s3 != 0) ? temp_v0_5 : &sp20) = temp_at_4;
                ((temp_s0 == 0) ? &unksp-3E0 : temp_v0_5)->unk400 = temp_at_4;
                ((temp_ra != 0) ? temp_v0_5 : &unksp-1E0)->unk200 = temp_at_4;
            }
        }
        var_ra = sp58;
    }
    sp58 = var_ra;
    if (arg2 == 0) {
        mgrasQryMonitor(sp28, temp_s4_2, (u8 *) var_a2, (u8) var_a3, (s32) var_a4, var_a5, &unksp-3E0, (s32) var_a7);
        if ((doLoadGamma__CBD != 0) && (temp_gp->unk-74DC(sp30->unk74->unk64, 0x6D670003, temp_s4_2) == -1)) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3438);
        }
    } else {
        mgrasSetScrnGlock(sp30, arg2, temp_s6, temp_s4_2, (s32) var_a4, var_a5, &unksp-3E0, (s32) var_a7);
    }
}

void mgrasStrGamma16(void *arg0, s32 arg1, s32 arg2, s16 arg3, u8 *arg4, s32 arg6) {
    s64 sp30;
    s64 sp28;
    u8 sp20;
    s16 temp_s7;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 var_a3;
    s16 var_v0;
    s32 temp_a2;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_a2;
    s32 var_a6;
    s32 var_v1;
    u8 *temp_a2_2;
    u8 *temp_s0_2;
    u8 *var_a0;
    u8 *var_a4;
    u8 *var_a5;
    u8 *var_t8;
    void *temp_gp;
    void *temp_s0;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a6 = arg6;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x137D6C;
    temp_t1 = arg1 & 1;
    sp30 = (s64) arg0;
    var_a5 = sp;
    temp_s7 = var_a3;
    temp_s0 = *(arg0->unk1B4 + (vcScreenPrivateIndex * 4));
    var_a0 = var_a4;
    sp28 = (s64) temp_s0;
    temp_t3 = ((temp_s7 * 2) + var_a4) - 2;
    temp_s6 = var_a2;
    temp_t9 = temp_s7 < 2;
    temp_s0_2 = (temp_s0->unk24 + (var_a2 * 0x10))->unkC;
    if (var_a3 > 0) {
        var_t8 = temp_s0_2;
        var_a3 = (s16) &unksp-3E0;
        temp_s3 = arg1 & 2;
        temp_s4 = arg1 & 4;
        var_a6 = temp_s4;
        if (temp_t9 == 0) {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a0) */);
            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($t8) */);
            temp_a2 = temp_t1 != 0;
            var_a5 = &unksp-1E0;
            var_v1 = temp_a2;
            var_v0 = *((temp_a2 != 0) ? var_a0 : sp);
loop_3:
            temp_a2_2 = var_t8 + 2;
            *((var_v1 != 0) ? var_t8 : &sp20) = var_v0;
            temp_v1 = temp_s3 != 0;
            ((temp_v1 != 0) ? var_t8 : var_a5)->unk200 = (s16) *((temp_v1 != 0) ? var_a0 : sp);
            temp_v1_2 = var_a6 != 0;
            temp_v0 = *((temp_v1_2 != 0) ? var_a0 : sp);
            var_a0 += 2;
            ((temp_v1_2 != 0) ? var_t8 : (u8 *) var_a3)->unk400 = temp_v0;
            var_v1 = temp_t1 != 0;
            temp_v0_2 = *((var_v1 != 0) ? var_a0 : sp);
            if (var_a0 != temp_t3) {
                var_t8 = temp_a2_2 + 2;
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($t8) */);
                *((var_v1 != 0) ? temp_a2_2 : &sp20) = temp_v0_2;
                temp_v1_3 = temp_s3 != 0;
                ((temp_v1_3 != 0) ? temp_a2_2 : var_a5)->unk200 = (s16) *((temp_v1_3 != 0) ? var_a0 : sp);
                temp_v1_4 = var_a6 != 0;
                temp_v0_3 = *((temp_v1_4 != 0) ? var_a0 : sp);
                var_a0 += 2;
                ((temp_v1_4 != 0) ? temp_a2_2 : (u8 *) var_a3)->unk400 = temp_v0_3;
                var_v1 = temp_t1 != 0;
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a0) */);
                var_v0 = *((var_v1 != 0) ? var_a0 : sp);
                if (var_a0 == temp_t3) {
                    var_a3 = var_v0;
                    var_a2 = (s32) &unksp-3E0;
                } else {
                    goto loop_3;
                }
            } else {
                var_a3 = temp_v0_2;
                var_t8 = temp_a2_2;
                var_a2 = (s32) &unksp-3E0;
            }
            var_a4 = sp;
            temp_v0_4 = temp_s3 != 0;
            *((var_v1 != 0) ? var_t8 : &sp20) = var_a3;
            temp_t9_2 = temp_s4 != 0;
            ((temp_v0_4 != 0) ? var_t8 : &unksp-1E0)->unk200 = (s16) *((temp_v0_4 != 0) ? var_a0 : sp);
            ((temp_t9_2 == 0) ? var_a2 : (s32) var_t8)->unk400 = (s16) *((temp_t9_2 == 0) ? sp : var_a0);
        } else {
            temp_v0_5 = temp_t1 != 0;
            temp_t9_3 = temp_s3 != 0;
            *((temp_v0_5 != 0) ? var_t8 : &sp20) = (s16) *((temp_v0_5 != 0) ? var_a0 : sp);
            temp_v0_6 = temp_s4 != 0;
            ((temp_t9_3 != 0) ? var_t8 : &unksp-1E0)->unk200 = (s16) *((temp_t9_3 != 0) ? var_a0 : sp);
            ((temp_v0_6 == 0) ? var_a3 : (s16) var_t8)->unk400 = (s16) *((temp_v0_6 == 0) ? sp : var_a0);
        }
    }
    if (temp_s6 == 0) {
        mgrasQryMonitor(sp28, temp_s0_2, (u8 *) var_a2, (u8) var_a3, (s32) var_a4, var_a5, (u8 *) var_a6, (s32) sp);
        if ((doLoadGamma__CBD != 0) && (temp_gp->unk-74DC(sp30->unk74->unk64, 0x6D670003, temp_s0_2) == -1)) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3438);
        }
    } else {
        mgrasSetScrnGlock(sp30, temp_s6, temp_s7, temp_s0_2, (s32) var_a4, var_a5, (u8 *) var_a6, (s32) sp);
    }
}

void mgrasStore24Colors(void *arg0) {
    s32 temp_a3;
    void *temp_at;

    temp_at = arg0->unkC->unk74;
    temp_a3 = (temp_at->unk58 + ((*arg0->unk0 - temp_at->unk50) * 0x14))->unk4 * 0x18;
    if (*(temp_at->unk74 + (*(temp_at->unk7C + temp_a3)->unk4 * 0x1C)) != arg0) {
        return;
    }
    mfbZeroPolyArcSS(temp_a3);
}

void mgrasInstall24Map(void *pColormap) {
    s64 sp20;
    s64 sp18;
    s16 temp_a3;
    s16 temp_a6;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_at;
    s32 var_a2;
    s32 var_at;
    s64 var_ra;
    void *temp_gp;
    void *temp_s1;
    void *temp_t1;
    void *temp_v0;
    void *var_t0;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_t0 = pColormap->unkC;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x7741C;
    temp_s1 = *(var_t0->unk1B4 + (temp_gp->unk-3140 * 4));
    if (temp_gp->unk-555C != 0) {
        var_v0 = temp_s1->unk68;
        if (var_v0 != NULL) {
            goto block_3;
        }
        sp18 = (s64) var_t0;
        var_v0 = temp_gp->unk-758C(0x600);
        temp_s1->unk68 = var_v0;
        var_ra = sp20;
        if (var_v0 == NULL) {
            if (temp_gp->unk-5558 != 0) {
                temp_gp->unk-5558 = 0;
                temp_gp->unk-74EC(&sub_5e4f0000 + 0x2310);
                var_v0 = temp_s1->unk68;
                var_t0 = (void *) sp18;
                var_ra = sp20;
                if (var_v0 == NULL) {

                } else {
                    goto block_17;
                }
            } else {
                goto block_16;
            }
        } else {
block_16:
            if (var_v0 != NULL) {
block_17:
block_3:
                temp_t1 = var_v0;
                temp_a0 = var_v0 + 0x1FE;
                var_a2 = 0;
                var_at = pColormap->unk38;
loop_6:
                temp_a1 = var_a2 + 0x14;
                var_v0->unk0 = (s16) (*(var_at + var_a2) << 8);
                var_v0->unk200 = (s16) ((pColormap->unk3C + var_a2)->unk2 << 8);
                var_v0->unk400 = (s16) ((pColormap->unk40 + var_a2)->unk4 << 8);
                temp_v0 = var_v0 + 2;
                temp_at = pColormap->unk38;
                if (temp_v0 != temp_a0) {
                    var_a2 = temp_a1 + 0x14;
                    var_v0->unk2 = (s16) (*(temp_at + temp_a1) << 8);
                    temp_v0->unk200 = (s16) ((pColormap->unk3C + temp_a1)->unk2 << 8);
                    temp_v0->unk400 = (s16) ((pColormap->unk40 + temp_a1)->unk4 << 8);
                    var_v0 = temp_v0 + 2;
                    var_at = pColormap->unk38;
                    goto loop_6;
                }
                var_v0->unk2 = (s16) (*(temp_at + temp_a1) << 8);
                temp_a6 = (pColormap->unk3C + temp_a1)->unk2 << 8;
                temp_v0->unk200 = temp_a6;
                temp_a3 = (pColormap->unk40 + temp_a1)->unk4 << 8;
                temp_v0->unk400 = temp_a3;
                if (temp_gp->unk-555C != 0) {
                    sp20 = var_ra;
                    if (temp_gp->unk-74DC(var_t0->unk74->unk64, 0x6D670003, temp_t1, temp_a3, temp_v0, temp_a1, temp_a6, temp_gp->unk-555C) == -1) {
                        ErrorF(&sub_5e4f0000 + 0x2340);
                    }
                }
            }
        }
    }
}

void mgrasUninstall24Map(void *arg0) {
    s32 temp_a3;
    void *temp_a4;
    void *temp_gp;

    temp_a4 = arg0->unkC;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x771F0;
    if ((arg0->unk4 == 5) && (temp_gp->unk-555C != 0)) {
        temp_a3 = vcScreenPrivateIndex * 4;
        if (temp_gp->unk-74DC(temp_a4->unk74->unk64, 0x6D670003, (*(temp_a4->unk1B4 + temp_a3))->unk24->unkC, temp_a3, temp_a4) == -1) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x2340);
        }
    }
}

void mgrasStoreFakeColors(void) {

}

void mgrasChangeDIDCmap(void *pColormap) {
    s64 sp18;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a7;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_t0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_s3;
    s32 var_s5;
    u16 temp_v0;
    u16 var_a4;
    void *temp_a1;
    void *temp_a3_2;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_gp;
    void *temp_s0;
    void *temp_s2;
    void *temp_s3_2;
    void *var_a5;
    void *var_a6;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x6CC94;
    var_a5 = pColormap->unk10;
    temp_s3 = var_a5->unk1B4;
    var_a4 = rrmWindowPrivateIndex * 4;
    var_a6 = *(pColormap->unk84 + var_a4);
    temp_s2 = var_a5->unk74;
    temp_a7 = rrmScreenPrivateIndex * 4;
    temp_a3 = var_a6->unk14;
    sp18 = (s64) *((temp_gp->unk-3140 * 4) + temp_s3);
    temp_s0 = var_a6;
    temp_s3_2 = *(temp_s3 + temp_a7);
    if (temp_a3 >= 0) {
        temp_v1 = temp_a3 < 0x20;
        temp_t0 = (temp_v1 == 0) ? 0xF8 : 0x3E0;
        var_s5 = ~temp_t0;
        temp_s4 = ((s32) (temp_s2->unk74 + (*M2C_ERROR(/* Read from unset register $a1 */)->unk44 * 0x1C))->unk18 >> 8) << ((temp_v1 == 0) ? 3 : 5);
        if (((temp_a3 * 0x24) + temp_s3_2)->unkA8 & 1) {
            temp_a1 = var_a6;
            if ((temp_s0->unk24 & temp_t0) != temp_s4) {
                temp_a3_2 = *(var_a5->unk1B4 + temp_a7) + (var_a6->unk14 * 0x24) + 0x98;
                if (var_a6->unk0 & 8) {
                    temp_a6 = temp_a1->unk2C;
                    temp_a5 = temp_a1->unk30;
                    if (temp_a6 != NULL) {
                        (*(temp_a6->unk84 + var_a4))->unk30 = temp_a5;
                    } else {
                        temp_a3_2->unk0 = temp_a5;
                    }
                    temp_a5_2 = temp_a1->unk30;
                    var_a6 = temp_a1->unk2C;
                    if (temp_a5_2 != NULL) {
                        (*(temp_a5_2->unk84 + var_a4))->unk2C = var_a6;
                        temp_a1->unk30 = 0;
                    } else {
                        temp_a3_2->unk4 = (s32) var_a6;
                    }
                    temp_a1->unk2C = 0;
                    var_a5 = temp_a3_2->unk0;
                    temp_a3_2->unk14 = (s32) (temp_a3_2->unk14 - 1);
                    temp_a2 = temp_a3_2->unk10 & 0x31 & 0xFFFF;
                    temp_a4 = !(temp_a2 & 1) ? temp_a2 : (temp_a2 | 6);
                    if (var_a5 != NULL) {
                        temp_v0 = temp_a4 | 2;
                        var_a4 = ((temp_a3_2->unk4 ^ (s32) var_a5) == 0) ? temp_v0 : (temp_v0 | 4);
                    } else {
                        var_a4 = temp_a4 & ~0x10;
                    }
                    temp_a3_2->unk10 = var_a4;
                    temp_a1->unk0 = (u16) (temp_a1->unk0 & ~8);
                }
                temp_a1->unk14 = -1;
                temp_a1_2 = temp_s4 | (temp_s0->unk24 & var_s5);
                temp_s0->unk24 = temp_a1_2;
                if (temp_gp->unk-7D50(pColormap, temp_a1_2, -1, temp_a3_2, var_a4, var_a5, var_a6, temp_a7) == 0) {
                    temp_gp->unk-7D5C(pColormap);
                }
            }
        } else {
            var_s5 = ~temp_t0;
        }
        temp_s3_2->unk20(pColormap, 8, 1);
        temp_a4_2 = temp_s0->unk20;
        temp_s6 = temp_s0->unk14;
        var_s3 = (temp_s0->unk24 & var_s5) | temp_s4;
        if (temp_a4_2 & 2) {
            var_s3 = !(temp_a4_2 & 4) ? (var_s3 & ~0x40000000) : (var_s3 | 0x40000000);
        }
        sp0 = temp_s0->unkC;
        sp10 = temp_a4_2;
        spC = var_s3;
        sp8 = temp_s6;
        sp4 = pColormap->unk4;
        if (temp_gp->unk-74DC(temp_s2->unk64, 0x3F9, sp) == -1) {
            ErrorF(&sub_5e4f0000 + 0x2248);
            ErrorF(&sub_5e4f0000 + 0x2220, sp0, sp4, errno);
        }
        temp_v1_2 = temp_s6 * 0xC;
        *(sp18->unk3C + temp_v1_2) = temp_s6;
        (sp18->unk3C + temp_v1_2)->unk4 = (s32) temp_s0->unk20;
        (sp18->unk3C + temp_v1_2)->unk8 = var_s3;
    }
}
