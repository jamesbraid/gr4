extern s32 errno;
extern ? sub_5e4f0000;

void mgrasDisplayCursor(struct _Screen *pScreen, void *pCursor, ? arg_sp0) {
    s8 spE;
    s8 spD;
    s8 spC;
    s8 sp8;
    s8 sp7;
    s8 sp6;
    s16 temp_a5_6;
    s32 *temp_a0;
    s32 *temp_a4_3;
    s32 *temp_a5_3;
    s32 *temp_a6;
    s32 *temp_a6_2;
    s32 *temp_a7;
    s32 *temp_t1;
    s32 *temp_t3_2;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 *var_a0_3;
    s32 *var_a0_4;
    s32 *var_a4;
    s32 *var_a5;
    s32 *var_a5_2;
    s32 *var_a6;
    s32 *var_a7;
    s32 *var_t0;
    s32 *var_t1;
    s32 *var_v0;
    s32 *var_v0_2;
    s32 *var_v1;
    s32 *var_v1_2;
    s32 *var_v1_3;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a3_5;
    s32 temp_a3_7;
    s32 temp_a5_4;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_f0;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t0_6;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 var_a0_5;
    s32 var_a4_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_a1_2;
    s64 temp_t3;
    u16 temp_a3_3;
    u16 temp_a3_4;
    u16 temp_a4;
    u16 temp_a4_2;
    u16 temp_a4_4;
    u16 temp_a4_5;
    u16 temp_a5;
    u16 temp_a5_2;
    u16 temp_t0_7;
    u8 temp_t1_2;
    void *temp_a1_3;
    void *temp_a3;
    void *temp_a3_6;
    void *temp_a3_8;
    void *temp_a5_5;
    void *temp_gp;
    void *temp_s0;
    void *temp_t0_3;
    void *temp_t9;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_9;
    void *temp_v1;
    void *temp_v1_4;
    void *var_v1_4;
    void *var_v1_5;

    arg_sp0.unk-60 = (s64) saved_reg_fp;
    arg_sp0.unk-50 = (s64) saved_reg_s2;
    arg_sp0.unk-38 = (s64) saved_reg_s0;
    arg_sp0.unk-40 = (s64) saved_reg_gp;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1ADA1C;
    arg_sp0.unk-58 = (s64) saved_reg_s1;
    temp_s0 = ((pScreen->unk0 * 4) + pCursor)->unk14;
    temp_v0 = *(pScreen->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_v1 = pScreen->unk74;
    arg_sp0.unk-30 = (s64) temp_v1;
    temp_a3 = temp_v0->unk0;
    if (temp_v0->unk48 != pCursor) {
        if (temp_s0 != NULL) {
            temp_v0->unk44 = (s32) (temp_v0->unk44 & ~4);
            if (temp_s0->unkC != 0) {
                arg_sp0.unk-68 = (s64) saved_reg_ra;
            } else {
                temp_v0_2 = temp_s0->unk4;
                temp_s0->unkC = 1;
                if ((temp_v0_2 != NULL) && (temp_v0_2->unk6 != 0)) {
                    temp_v0_3 = pCursor->unk0;
                    temp_a5 = temp_v0_3->unkA;
                    temp_a4 = temp_v0_3->unk8;
                    temp_a4_2 = ((s32) temp_a4 >= 0x20) ? 0x20U : temp_a4;
                    temp_a5_2 = ((s32) temp_a5 >= 0x20) ? 0x20U : temp_a5;
                    temp_a6 = temp_s0->unk8;
                    temp_a2 = ((temp_a4_2 ^ 0x20) == 0) ? -1 : (-1 << (0x20 - temp_a4_2));
                    if ((s32) temp_a5_2 > 0) {
                        var_a0 = temp_v0_3->unk4;
                        var_v1 = temp_v0_3->unk0;
                        var_v0 = temp_a6;
                        temp_a3_2 = (temp_a5_2 * 4) + temp_a6;
                        temp_a1 = ((s32) (temp_a4_2 + 0x1F) >> 5) * 4;
                        if (temp_a5_2 & 1) {
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($v0) */);
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v0) */);
                            *var_v0 = *var_v1 & temp_a2;
                            temp_t0 = *var_v1;
                            var_v0 += 4;
                            var_v1 += temp_a1;
                            temp_t0_2 = temp_t0 ^ *var_a0;
                            var_a0 += temp_a1;
                            var_v0->unk7C = (s32) (temp_t0_2 & temp_a2);
                        }
                        var_a5 = var_a0;
                        var_t1 = var_v1;
                        var_a7 = var_v0;
                        if (((s32) temp_a5_2 >> 1) != 0) {
                            var_a0_2 = temp_a1 + var_t1;
loop_43:
                            temp_a6_2 = temp_a1 + var_a0_2;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a7) */);
                            var_a7->unk0 = *var_t1 & temp_a2;
                            temp_v1_2 = temp_a1 + var_a5;
                            temp_a4_3 = temp_a1 + temp_v1_2;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($a7) */);
                            var_a7->unk80 = (s32) ((*var_t1 ^ *var_a5) & temp_a2);
                            var_a7->unk4 = (s32) (*var_a0_2 & temp_a2);
                            temp_t0_3 = var_a7 + 8;
                            temp_a0 = temp_a1 + temp_a6_2;
                            var_a7->unk84 = (s32) ((*var_a0_2 ^ *temp_v1_2) & temp_a2);
                            if (temp_t0_3 != temp_a3_2) {
                                var_t1 = temp_a1 + temp_a0;
                                var_a7->unk8 = (s32) (*temp_a6_2 & temp_a2);
                                temp_v1_3 = temp_a1 + temp_a4_3;
                                var_a5 = temp_a1 + temp_v1_3;
                                temp_t0_3->unk80 = (s32) ((*temp_a6_2 ^ *temp_a4_3) & temp_a2);
                                temp_t0_3->unk4 = (s32) (*temp_a0 & temp_a2);
                                var_a7 = temp_t0_3 + 8;
                                var_a0_2 = temp_a1 + var_t1;
                                temp_t0_3->unk84 = (s32) ((*temp_a0 ^ *temp_v1_3) & temp_a2);
                                if (var_a7 != temp_a3_2) {
                                    goto loop_43;
                                }
                            }
                        }
                        arg_sp0.unk-68 = (s64) saved_reg_ra;
                    }
                } else {
                    temp_v0_4 = pCursor->unk0;
                    temp_a4_4 = temp_v0_4->unkA;
                    temp_a3_3 = temp_v0_4->unk8;
                    temp_a4_5 = ((s32) temp_a4_4 >= 0x20) ? 0x20U : temp_a4_4;
                    temp_a3_4 = ((s32) temp_a3_3 >= 0x20) ? 0x20U : temp_a3_3;
                    temp_a5_3 = temp_s0->unk8;
                    temp_a1_2 = ((temp_a3_4 ^ 0x20) == 0) ? -1 : (-1 << (0x20 - temp_a3_4));
                    if ((s32) temp_a4_5 > 0) {
                        var_v1_2 = temp_v0_4->unk0;
                        var_a0_3 = temp_v0_4->unk4;
                        var_v0_2 = temp_a5_3;
                        temp_a2_2 = ((s32) (temp_a3_4 + 0x1F) >> 5) * 4;
                        if (temp_a4_5 & 1) {
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($v0) */);
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v0) */);
                            temp_t2 = *var_a0_3 & temp_a1_2;
                            *var_v0_2 = *var_v1_2 & temp_t2;
                            var_v0_2 += 4;
                            var_a0_3 += temp_a2_2;
                            temp_t0_4 = ~*var_v1_2;
                            var_v1_2 += temp_a2_2;
                            var_v0_2->unk7C = (s32) (temp_t0_4 & temp_t2);
                        }
                        temp_a3_5 = (s32) temp_a4_5 >> 1;
                        var_a5_2 = var_v1_2;
                        var_a6 = var_v0_2;
                        if (temp_a3_5 != 0) {
                            temp_a3_6 = ((temp_a4_5 * 4) + temp_a5_3) - 8;
                            if (temp_a3_5 >= 2) {
                                arg_sp0.unk-28 = temp_a1_2;
                                var_a0_4 = temp_a2_2 + var_a0_3;
                                var_v1_3 = temp_a2_2 + var_a5_2;
                                var_v0_3 = *var_a0_3;
                                var_a4 = temp_a2_2 + var_v1_3;
                                var_t0 = temp_a2_2 + var_a0_4;
loop_52:
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a6) */);
                                temp_v0_5 = var_v0_3 & temp_a1_2;
                                var_a6->unk0 = *var_a5_2 & temp_v0_5;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($a6) */);
                                var_a6->unk80 = (s32) (~*var_a5_2 & temp_v0_5);
                                temp_v0_6 = *var_a0_4 & temp_a1_2;
                                var_a6->unk4 = (s32) (*var_v1_3 & temp_v0_6);
                                temp_a7 = var_a6 + 8;
                                var_a6->unk84 = (s32) (~*var_v1_3 & temp_v0_6);
                                var_a0_4 = temp_a2_2 + var_t0;
                                var_v1_3 = temp_a2_2 + var_a4;
                                temp_t1 = temp_a2_2 + var_a0_4;
                                var_a5_2 = temp_a2_2 + var_v1_3;
                                var_v0_3 = *var_t0;
                                if (temp_a7 != temp_a3_6) {
                                    temp_v0_7 = var_v0_3 & temp_a1_2;
                                    var_a6->unk8 = (s32) (*var_a4 & temp_v0_7);
                                    temp_a7->unk80 = (s32) (~*var_a4 & temp_v0_7);
                                    temp_v0_8 = *var_a0_4 & temp_a1_2;
                                    temp_a7->unk4 = (s32) (*var_v1_3 & temp_v0_8);
                                    var_a6 = temp_a7 + 8;
                                    temp_a7->unk84 = (s32) (~*var_v1_3 & temp_v0_8);
                                    var_a0_4 = temp_a2_2 + temp_t1;
                                    var_v1_3 = temp_a2_2 + var_a5_2;
                                    var_t0 = temp_a2_2 + var_a0_4;
                                    var_a4 = temp_a2_2 + var_v1_3;
                                    var_v0_3 = *temp_t1;
                                    if (var_a6 != temp_a3_6) {
                                        goto loop_52;
                                    }
                                } else {
                                    var_a6 = temp_a7;
                                    var_a5_2 = var_a4;
                                }
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($a6) */);
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a6) */);
                                temp_t3 = arg_sp0.unk-28;
                                temp_t0_5 = var_v0_3 & temp_t3;
                                var_a6->unk0 = *var_a5_2 & temp_t0_5;
                                var_a6->unk80 = (s32) (~*var_a5_2 & temp_t0_5);
                                temp_t0_6 = *var_a0_4 & temp_t3;
                                var_a6->unk4 = (s32) (*var_v1_3 & temp_t0_6);
                                var_a6->unk84 = (s32) (~*var_v1_3 & temp_t0_6);
                            } else {
                                temp_t2_2 = *var_a0_3 & temp_a1_2;
                                var_a6->unk0 = *var_a5_2 & temp_t2_2;
                                var_a6->unk80 = (s32) (~*var_a5_2 & temp_t2_2);
                                temp_t3_2 = temp_a2_2 + var_a5_2;
                                temp_at = *(temp_a2_2 + var_a0_3) & temp_a1_2;
                                var_a6->unk4 = (s32) (*temp_t3_2 & temp_at);
                                var_a6->unk84 = (s32) (~*temp_t3_2 & temp_at);
                            }
                        }
                        arg_sp0.unk-68 = (s64) saved_reg_ra;
                    }
                }
            }
            arg_sp0.unk-68 = (s64) saved_reg_ra;
            arg_sp0.unk-30->unk8C(temp_s0, pCursor->unk0->unkC, pCursor->unk0->unkE, pScreen);
            arg_sp0.unk-48 = (s64) saved_reg_s5;
            goto block_6;
        }
        return;
    }
    arg_sp0.unk-68 = (s64) saved_reg_ra;
    temp_a7_2 = temp_v0->unk44 | 4;
    temp_v0->unk44 = temp_a7_2;
    temp_a5_4 = (temp_a7_2 & 0xFFFF) << 8;
    temp_a3_7 = temp_a5_4 | 0x1D000000;
    temp_a3->unk62038 = temp_a3_7;
    arg_sp0.unk-1E = 0;
    arg_sp0.unk-20 = 0;
    if (temp_gp->unk-74DC(temp_v1->unk64, 0x6D670002, &arg_sp0 - 0x20, temp_a3_7, temp_a3 + 0x60000, temp_a5_4, 0x1D000000, temp_a7_2) == -1) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2450, errno);
        arg_sp0.unk-48 = (s64) saved_reg_s5;
block_6:
    }
    arg_sp0.unk-48 = (s64) saved_reg_s5;
    temp_v0_9 = ((pScreen->unk0 * 4) + pCursor)->unk14;
    sp6 = (s8) ((s32) pCursor->unk4 >> 8);
    spC = (s8) ((s32) pCursor->unkA >> 8);
    sp7 = (s8) ((s32) pCursor->unk6 >> 8);
    spD = (s8) ((s32) pCursor->unkC >> 8);
    sp8 = (s8) ((s32) pCursor->unk8 >> 8);
    var_a0_5 = 0;
    var_a4_2 = 0;
    spE = (s8) ((s32) pCursor->unkE >> 8);
    if ((temp_v0_9 != NULL) && (temp_v1_4 = temp_v0_9->unk4, (temp_v1_4 != NULL))) {
        sp->unk12 = (s8) ((s32) temp_v1_4->unk0 >> 8);
        sp->unk13 = (s8) ((s32) temp_v0_9->unk4->unk2 >> 8);
        sp->unk14 = (s8) ((s32) temp_v0_9->unk4->unk4 >> 8);
    } else {
        sp->unk14 = 0;
        sp->unk13 = 0;
        sp->unk12 = 0;
    }
    sp->unk10 = 0x1CFF;
    sp->unkA = 0x1CFE;
    sp->unk4 = 0x1CFD;
    sp->unk2 = 3;
    temp_a1_3 = *(pScreen->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_a5_5 = temp_a1_3->unk0;
    var_v1_4 = sp;
    temp_a3_8 = 0x60000 + temp_a5_5;
    temp_t9 = temp_a1_3->unk4;
    if (temp_a5_5->unk70100 & 0x1F) {
        do {

        } while (temp_a5_5->unk70100 & 0x1F);
    }
    do {
        temp_t0_7 = var_v1_4->unk4;
        temp_t2_3 = var_a4_2 & 0x1F;
        var_a4_2 += 1;
        temp_a5_6 = ((temp_t0_7 << 8) & 0xFF00) | (((s32) temp_t0_7 >> 8) & 0xFF);
        if (temp_t2_3 == 0) {
            var_a0_5 = 6;
            if (temp_a5_5->unk70100 & 0x1F) {
                do {

                } while (temp_a5_5->unk70100 & 0x1F);
            }
            temp_t9->unk9F0 = 4;
            temp_a3_8->unk1C88 = 4;
            temp_a3_8->unk1F00 = (s32) temp_a1_3->unk84;
            temp_t9->unk9F0 = 4;
            temp_a3_8->unk1C88 = 4;
            temp_a3_8->unk1F00 = (s32) temp_a1_3->unk84;
            if (temp_a5_5->unk70100 & 0x1F) {
                do {

                } while (temp_a5_5->unk70100 & 0x1F);
            }
            if (!(temp_a3_8->unk1208 & 8)) {
                do {

                } while (!(temp_a3_8->unk1208 & 8));
            }
            temp_a3_8->unkC30 = temp_a5_6;
            temp_a3_8->unkC30 = temp_a5_6;
            temp_t9->unk9F0 = 4;
            temp_a3_8->unk1C88 = 4;
            temp_a3_8->unk1F00 = (s32) (temp_a1_3->unk84 | 0x4000);
        }
        if (var_a0_5 >= 6) {
            var_a0_5 = 0;
            if (temp_a5_5->unk70100 & 0x1F) {
                do {

                } while (temp_a5_5->unk70100 & 0x1F);
            }
        }
        temp_a3_8->unkC30 = temp_a5_6;
        temp_t1_2 = var_v1_4->unk7;
        var_a0_5 += 2;
        if (temp_a1_3->unk74 != 0) {
            temp_a3_8->unkD18 = (s32) ((var_v1_4->unk6 << 0x18) | (temp_t1_2 << 0x10) | (var_v1_4->unk8 << 8));
        } else {
            temp_f0 = (s32) ((f32) (second half of f64) + (f32) ((f64) temp_t1_2 * temp_gp->unk-3298) + (f32) ((second half of f64) * (second half of f64)));
            temp_a3_8->unkD18 = (s32) ((temp_f0 << 0x10) | (temp_f0 << 0x18) | (temp_f0 << 8));
        }
        var_v1_4 += 6;
    } while (var_a4_2 != 3);
    temp_t9->unk9F0 = 4;
    temp_a3_8->unk1C88 = 4;
    temp_a3_8->unk1F00 = (s32) temp_a1_3->unk84;
    temp_t9->unk9F0 = 4;
    temp_a3_8->unk1C88 = 4;
    var_v1_5 = sp;
    var_v0_4 = 0;
    temp_a3_8->unk1F00 = (s32) temp_a1_3->unk84;
    if (sp->unk2 > 0) {
        do {
            *(temp_a1_3->unk64 + (var_v1_5->unk4 * 4)) = (var_v1_5->unk6 & 0xFF) | ((var_v1_5->unk7 & 0xFF) << 8) | ((var_v1_5->unk8 & 0xFF) << 0x10);
            var_v0_4 += 1;
            var_v1_5 += 6;
        } while (var_v0_4 < sp->unk2);
    }
}

void mgrasInstallCursor(struct _Screen *pScreen, void *pCursor) {
    s64 sp190;
    s64 sp180;
    s32 sp128;
    s32 sp124;
    s32 spA8;
    s32 spA4;
    s16 temp_s0;
    s32 *temp_a1_2;
    s32 *temp_t1;
    s32 *var_a0;
    s32 *var_s1;
    s32 *var_t0;
    s32 *var_v0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_at;
    s32 var_s0;
    s32 var_s3_2;
    s32 var_s5;
    s32 var_s6;
    s32 var_v1;
    void *temp_gp;
    void *temp_s8;
    void *var_s3;

    var_s1 = pScreen->unk8;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1AD11C;
    var_s5 = M2C_ERROR(/* Read from unset register $a3 */)->unk74->unk64;
    temp_s8 = *(M2C_ERROR(/* Read from unset register $a3 */)->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_s0 = M2C_ERROR(/* Read from unset register $a2 */);
    var_s3 = temp_s8->unk0;
    if (temp_gp->unk-74DC(var_s5, 0x6D670002, sp, (s16) pCursor, temp_s0) == -1) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2410, errno);
    }
    temp_s8->unk9C = (s32) temp_s0;
    temp_s8->unk98 = pCursor;
    temp_s8->unk94 = pScreen;
    if (temp_s8->unk90 != 0) {
        temp_gp->unk-74E4(&sp8[0], pScreen->unk8, 0x100);
        var_a0 = &sp8[0];
        temp_t0 = (temp_s0 + 1) & 3;
        if (temp_s8->unk4C & 8) {
            var_a2 = 2;
            var_a1 = 2 >> 0x1F;
            var_t0 = &(&sp8[0])[temp_t0];
            var_a0_2 = (0 & 3) != 0;
            var_at = 2 ^ var_a1;
            *((var_a0_2 != 0) ? &sp128 : var_t0) = 0;
loop_5:
            temp_t1 = var_t0 + 8;
            temp_v0 = var_a2 >> 0x1F;
            temp_a1 = var_a2 + 2;
            temp_a2 = temp_a1 >> 0x1F;
            temp_v1 = ((((var_at - var_a1) & 3) ^ temp_v0) - temp_v0) != 0;
            ((var_a0_2 != 0) ? &spA8 : var_t0)->unk80 = 0;
            ((var_a0_2 != 0) ? &spA4 : var_t0)->unk84 = 0;
            ((var_a0_2 != 0) ? &sp124 : var_t0)->unk4 = 0;
            *((temp_v1 != 0) ? &sp128 : temp_t1) = 0;
            if (temp_t1 != (&(&sp8[0])[temp_t0 + 0x20] - 8)) {
                var_t0 = temp_t1 + 8;
                temp_v0_2 = temp_a1 >> 0x1F;
                temp_at = (((temp_a1 ^ temp_a2) - temp_a2) & 3) ^ temp_v0_2;
                var_a2 = temp_a1 + 2;
                var_a1 = var_a2 >> 0x1F;
                var_a0_2 = (temp_at - temp_v0_2) != 0;
                ((temp_v1 != 0) ? &spA8 : temp_t1)->unk80 = 0;
                ((temp_v1 != 0) ? &spA4 : temp_t1)->unk84 = 0;
                ((temp_v1 != 0) ? &sp124 : temp_t1)->unk4 = 0;
                *((var_a0_2 != 0) ? &sp128 : var_t0) = 0;
                var_at = var_a2 ^ var_a1;
                goto loop_5;
            }
            ((temp_v1 == 0) ? temp_t1 : &spA8)->unk80 = 0;
            ((temp_v1 == 0) ? temp_t1 : &spA4)->unk84 = 0;
            ((temp_v1 == 0) ? temp_t1 : &sp124)->unk4 = 0;
        } else {
            var_a2_2 = 1;
            var_v1 = 1 >> 0x1F;
            temp_a4 = temp_s0 & 1;
            var_s0 = 1 >> 0x1F;
            sp180 = (s64) var_s5;
            temp_s5 = 0 & 1;
            temp_s2 = (temp_a4 != 0) != 0;
            sp190 = (s64) var_s3;
            var_s6 = temp_s2 | (temp_s5 != 1);
            var_s3_2 = ((temp_s5 != 0) != 0) < temp_s2;
            var_v0 = (var_s6 != 0) ? &sp128 : var_a0;
            do {
                *var_v0 = 0;
                temp_a1_2 = var_a0 + 4;
                *((var_s3_2 != 0) ? var_a0 : &sp128) = 0;
                temp_a3 = var_a2_2 + 1;
                temp_s4 = temp_a3 >> 0x1F;
                temp_a5 = (temp_a4 != 0) != 0;
                temp_v0_3 = temp_a3 >> 0x1F;
                temp_at_2 = ((((var_a2_2 ^ var_v1) - var_v1) & 1) ^ var_s0) - var_s0;
                temp_ra = temp_a5 | (temp_at_2 != 1);
                temp_t0_2 = ((temp_at_2 != 0) != 0) < temp_a5;
                ((var_s6 != 0) ? &spA8 : var_a0)->unk80 = 0;
                ((var_s3_2 != 0) ? var_a0 : &spA8)->unk80 = 0;
                *((temp_ra != 0) ? &sp128 : temp_a1_2) = 0;
                var_a0 = temp_a1_2 + 4;
                *((temp_t0_2 != 0) ? temp_a1_2 : &sp128) = 0;
                temp_at_3 = temp_a3 ^ temp_v0_3;
                var_a2_2 = temp_a3 + 1;
                var_s0 = var_a2_2 >> 0x1F;
                temp_s2_2 = (temp_a4 != 0) != 0;
                var_v1 = var_a2_2 >> 0x1F;
                temp_at_4 = (((temp_at_3 - temp_v0_3) & 1) ^ temp_s4) - temp_s4;
                var_s6 = temp_s2_2 | (temp_at_4 != 1);
                var_s3_2 = ((temp_at_4 != 0) != 0) < temp_s2_2;
                ((temp_ra != 0) ? &spA8 : temp_a1_2)->unk80 = 0;
                ((temp_t0_2 != 0) ? temp_a1_2 : &spA8)->unk80 = 0;
                var_v0 = (var_s6 != 0) ? &sp128 : var_a0;
            } while (temp_a3 != 0x20);
            var_s5 = (s32) sp180;
            var_s3 = (void *) sp190;
        }
        var_s1 = &sp8[0];
    }
    var_s3->unk62038 = (s32) (((temp_s8->unk44 & 0xFFFC) << 8) | 0x1D000000);
    temp_gp->unk-7DFC(var_s5, temp_s8, var_s1, 0x400, 0x80);
    if (temp_s8->unk90 != 0) {
        do {
            var_s3->unk62008 = 0xB;
        } while (var_s3->unk620B0 != 0);
    }
    if (var_s3->unk70100 & 0x1F) {
        do {

        } while (var_s3->unk70100 & 0x1F);
    }
    var_s3->unk62038 = 0x01040000;
    var_s3->unk62038 = (s32) (((temp_s8->unk44 & 0xFFFF) << 8) | 0x1D000000);
}

void mgrasCursorOn(struct _Screen *pScreen) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    void *temp_a2;

    temp_a2 = *(M2C_ERROR(/* Read from unset register $a1 */)->unk1B4 + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x77150)->unk-3140 * 4));
    temp_v0 = temp_a2->unk44;
    temp_v1 = temp_v0 & ~3;
    temp_v0_2 = temp_v0 | 3;
    temp_a2->unk44 = (s32) ((pScreen != NULL) ? temp_v0_2 : temp_v1);
    temp_a2->unk0->unk62038 = (s32) (((((pScreen == NULL) ? temp_v1 : temp_v0_2) & 0xFFFF) << 8) | 0x1D000000);
}

void _clone_1_mgrasCursorOn(void *arg0) {
    s32 temp_a0;
    void *temp_a1;

    temp_a1 = *(arg0->unk1B4 + (saved_reg_gp->unk-3140 * 4));
    temp_a0 = temp_a1->unk44 | 3;
    temp_a1->unk44 = temp_a0;
    temp_a1->unk0->unk62038 = (s32) (((temp_a0 & 0xFFFF) << 8) | 0x1D000000);
}
/* Warning: struct _Screen is not defined (only forward-declared) */
