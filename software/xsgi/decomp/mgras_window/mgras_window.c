? ErrorF(void *, s32, s32, s32);                    /* extern */
? FatalError(void *, u32, u32);                     /* extern */
? cfbDoBitbltCopy(s64, s32 *, s32 *, ?, ?);         /* extern */
s32 ioctl(s32, ?, s32 *, s32, s32, s32);            /* extern */
s32 mgrasPolyGlyphBltTE9(s64, s16 *);               /* extern */
? nfbDoBitBltSS(s64, void *, s32, s32, ?, s32, s32, ? *); /* extern */
? nfbUnrealizeCursor(s16 *, void *, s32, s64, void *, BoxRec *, void *, ?); /* extern */
void mgrasCopyBigRect(void *arg0, void *arg1, BoxRec *arg2, void *arg3, s32 arg4, s32, s16); /* static */
? mgrasValidateReducedGC(void *, s64, s32, void *, s32, void *); /* static */
extern s32 dbcWindowPrivateIndex;
extern s32 errno;
extern u32 globalSerialNumber;
extern s32 glxWindowPrivateIndex;
extern ? mgrasDrawImage24;
extern ? mgrasReadImage24;
extern s32 rrmScreenPrivateIndex;
extern s32 rrmWindowPrivateIndex;
extern ? sub_5e4f0000;
extern ? sub_5e500000;
extern ? sub_5e510000;

/*
Decompilation failure in function mgrasValidateWindowPriv:

Unable to determine jump table for jr instruction at mgras_window.s line 79.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void mgrasValidateVisual(void *arg0) {
    s64 sp178;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    ? spF0;
    s16 spEE;
    s16 spEC;
    s16 spEA;
    s16 spE8;
    ? spD8;
    u16 spD6;
    s16 spD4;
    s16 spD2;
    s16 spD0;
    ? spC0;
    s16 spBE;
    s16 spBC;
    u16 spBA;
    s16 spB8;
    ? spA8;
    u16 spA6;
    s16 spA4;
    s16 spA2;
    s16 spA0;
    ? sp90;
    s16 sp8E;
    s16 sp8C;
    u16 sp8A;
    s16 sp88;
    ? sp80;
    ? sp68;
    ? sp60;
    ? sp50;
    ? sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp24;
    ? sp18;
    s32 sp10;
    ? *temp_a1_11;
    ? *temp_s0;
    ? *temp_s0_3;
    ? *temp_s0_4;
    ? *temp_s1;
    ? *temp_s1_2;
    ? *temp_s1_3;
    ? *var_a0;
    ? *var_a0_2;
    ? *var_a0_3;
    ? *var_a0_4;
    ? *var_a0_7;
    ? *var_a0_8;
    ? *var_s1_4;
    ? *var_t0_11;
    ? *var_t0_12;
    ? *var_t0_13;
    ? *var_t0_5;
    ? *var_t0_6;
    ? *var_t1;
    ? *var_t1_2;
    ? *var_v1_10;
    ? *var_v1_11;
    ? *var_v1_12;
    ? *var_v1_13;
    ? *var_v1_14;
    ? *var_v1_15;
    ? *var_v1_3;
    ? *var_v1_4;
    ? *var_v1_5;
    ? *var_v1_6;
    ? *var_v1_7;
    ? *var_v1_8;
    ? *var_v1_9;
    ? var_s4_2;
    s16 temp_a3_4;
    s32 *var_s0;
    s32 *var_s3_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a3_5;
    s32 temp_a4_12;
    s32 temp_a4_13;
    s32 temp_a4_14;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s2_3;
    s32 var_s2_4;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s5_3;
    s32 var_s6;
    s32 var_s7;
    s32 var_v1;
    s32 var_v1_16;
    s32 var_v1_2;
    s64 temp_a4;
    s64 temp_a4_2;
    s64 temp_a4_3;
    s64 temp_a4_4;
    s64 temp_a4_5;
    s64 temp_a4_6;
    s64 temp_a6;
    s64 temp_a6_2;
    s64 temp_a6_3;
    s64 temp_a6_4;
    s64 temp_a6_5;
    s64 temp_a7;
    s64 temp_a7_2;
    s64 temp_a7_3;
    s64 temp_a7_4;
    s64 temp_a7_5;
    s64 temp_at_5;
    s64 temp_v0;
    s64 var_a2;
    s64 var_a6;
    s64 var_a6_2;
    s64 var_a6_3;
    s64 var_a6_4;
    s64 var_a7;
    s64 var_a7_2;
    s64 var_a7_3;
    s64 var_a7_4;
    s64 var_s3;
    s64 var_t9;
    s64 var_t9_2;
    s64 var_t9_3;
    s64 var_t9_4;
    u32 temp_a1_10;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_5;
    u32 temp_a1_6;
    u32 temp_a1_8;
    u32 temp_t1;
    u32 temp_t1_2;
    u32 temp_t3_3;
    u32 temp_t3_4;
    u32 temp_t3_5;
    u32 temp_t3_6;
    u32 temp_t3_7;
    u32 var_a0_10;
    u32 var_a0_11;
    u32 var_a0_12;
    u32 var_a0_13;
    u32 var_a0_5;
    u32 var_a0_6;
    u32 var_a0_9;
    u32 var_a3;
    u32 var_a3_10;
    u32 var_a3_12;
    u32 var_a3_13;
    u32 var_a3_2;
    u32 var_a3_3;
    u32 var_a3_4;
    u32 var_a3_5;
    u32 var_a3_6;
    u32 var_a3_7;
    u32 var_a3_8;
    u32 var_s5;
    u32 var_s5_2;
    u32 var_t0;
    u32 var_t0_10;
    u32 var_t0_2;
    u32 var_t0_3;
    u32 var_t0_4;
    u32 var_t0_7;
    u32 var_t0_8;
    u32 var_t0_9;
    u32 var_t1_3;
    u32 var_t1_4;
    u32 var_t1_5;
    u32 var_t3;
    u32 var_t3_2;
    u32 var_t8;
    u32 var_t8_2;
    u64 temp_a4_10;
    u64 temp_a4_11;
    u64 temp_a4_7;
    u64 temp_a4_8;
    u64 temp_a4_9;
    u64 temp_at;
    u64 temp_at_2;
    u64 temp_at_3;
    u64 temp_at_4;
    u64 temp_at_6;
    u64 temp_at_7;
    u64 temp_at_8;
    u64 temp_at_9;
    void *temp_a1;
    void *temp_a1_12;
    void *temp_a1_13;
    void *temp_a1_4;
    void *temp_a1_7;
    void *temp_a1_9;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_gp;
    void *temp_s0_2;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s2;
    void *temp_s7;
    void *temp_t2_3;
    void *temp_t2_4;
    void *temp_t2_5;
    void *temp_t2_6;
    void *temp_t2_7;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *var_a3_11;
    void *var_a3_9;
    void *var_s4;

    var_s3 = saved_reg_s3;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18C01C;
    sp130 = 0;
    sp38 = 0;
    var_s4 = *(arg0->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_s7 = arg0->unk74;
    sp10 = var_s4->unk34;
    sp128 = 0;
    sp24 = var_s4->unk38;
    sp3C = 0;
    arg0->unk154(&sp40, NULL, 0);
    arg0->unk154(&sp50, NULL, 0);
    arg0->unk154(sp, NULL, 0);
    temp_v1 = temp_s7->unk2C->unk8;
    if ((temp_v1 == NULL) || (temp_v1->unk4 != 0)) {
        var_v1 = 1;
    } else {
        var_v1 = 0;
    }
    sp60.unk0 = var_v1;
    arg0->unk154(&sp68, NULL, 0);
    temp_v1_2 = (temp_s7->unk2C + 0xC)->unk8;
    if ((temp_v1_2 == NULL) || (temp_v1_2->unk4 != 0)) {
        var_v1_2 = 1;
    } else {
        var_v1_2 = 0;
    }
    sp60.unk4 = var_v1_2;
    arg0->unk154(&sp68 + 0xC, NULL, 0);
    var_s5 = 0;
    if (temp_s7->unk54 != 0) {
        var_s1 = 0;
        sp140 = (s64) var_s4;
        var_s3_2 = 0;
loop_97:
        temp_s2 = temp_s7->unk60 + var_s1;
        temp_s0 = temp_s7->unk5C + var_s1;
        arg0->unk194(temp_s0, &sp80);
        temp_v1_3 = temp_s0->unk8;
        if (temp_v1_3 != NULL) {
            if (temp_v1_3->unk4 != 0) {
                goto block_95;
            }
        } else {
block_95:
            temp_s4 = *(temp_s7->unk30 + var_s3_2);
            arg0->unk16C(temp_s0, temp_s0, temp_s2);
            arg0->unk190((temp_s4 * 0xC) + &sp68, temp_s0);
        }
        var_s5 += 1;
        var_s1 += 0xC;
        var_s3_2 += 4;
        if (var_s5 < (u32) temp_s7->unk54) {
            goto loop_97;
        }
        var_s3 = sp178;
        var_s4 = (void *) sp140;
    }
    arg0->unk194(&sp68, &sp80);
    arg0->unk194(&sp68 + 0xC, &sp80);
    if ((sp70 == NULL) || (sp70->unk4 != 0)) {
        sp130 = 1;
        sp38 = 1;
    }
    if ((sp7C == NULL) || (sp7C->unk4 != 0)) {
        sp128 = 1;
        sp3C = 1;
    }
    sp178 = var_s3;
    var_s5_2 = 0;
    if (temp_s7->unk54 != 0) {
        var_s3_3 = 0;
        sp140 = (s64) var_s4;
        var_s2 = 0;
loop_103:
        temp_s0_2 = temp_s7->unk5C + var_s3_3;
        temp_s1 = temp_s7->unk60 + var_s3_3;
        temp_s4_2 = *(temp_s7->unk30 + var_s2) * 0xC;
        arg0->unk16C(temp_s1, temp_s1, temp_s4_2 + &sp68);
        temp_v1_4 = temp_s0_2->unk8;
        if (temp_v1_4 != NULL) {
            if (temp_v1_4->unk4 != 0) {
                goto block_101;
            }
        } else {
block_101:
            arg0->unk168(temp_s1, temp_s0_2, temp_s1);
        }
        arg0->unk164(temp_s1, temp_s1, temp_s7->unk2C + temp_s4_2);
        var_s5_2 += 1;
        var_s3_3 += 0xC;
        var_s2 += 4;
        arg0->unk188(temp_s0_2);
        if (var_s5_2 < (u32) temp_s7->unk54) {
            goto loop_103;
        }
        var_s3 = sp178;
        var_s4 = (void *) sp140;
    }
    arg0->unk16C(&sp40, var_s4->unk70, temp_s7->unk2C);
    if ((sp48 == NULL) || (sp48->unk4 != 0)) {
        temp_a0 = temp_s7->unkDC;
        if (temp_a0 != 0) {
            if (temp_a0 != 1) {
                spA0 = 0;
                spA4 = arg0->unk8;
                spA2 = 0;
                spA6 = temp_s7->unkE0;
                arg0->unk154(&spA8, &spA0, 0);
                arg0->unk164(&sp40, &spA8, &sp40);
                if ((sp48 == NULL) || (sp48->unk4 != 0)) {
                    temp_t2 = var_s4->unk80;
                    temp_t8 = var_s4->unk4;
                    temp_s0_3 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    temp_a1 = var_s4->unk0;
                    var_a0 = temp_s0_3;
                    if (sp48 != NULL) {
                        var_t3 = sp48->unk4;
                    } else {
                        var_t3 = 1;
                    }
                    var_t0 = var_t3;
                    if (var_t3 != 0) {
                        temp_a1->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_t8->unk440 = 0x100000;
                        temp_a1->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_t8->unk5B4 = (u32) var_s4->unk8;
                        temp_a1->unk70080 = (s64) (var_s4->unk8 | (0x65B41 << 0x22));
                        temp_t8->unk5D8 = 0;
                        temp_a1->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_t8->unk5DC = 0;
                        temp_a1->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_t8->unk5E0 = 0;
                        temp_a1->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_t8->unk5E4 = 0;
                        temp_a1->unk70080 = (s64) (0x65E41 << 0x22);
                        temp_t8->unk58C = -1;
                        temp_a1->unk70080 = (s64) temp_gp->unk-32B0;
                        temp_t8->unk590 = -1;
                        temp_a1->unk70080 = (s64) temp_gp->unk-32B8;
                        if ((temp_t2 != 0) && (temp_t2 != 3)) {
                            var_a6 = 0x711C1 << 0x22;
                            var_a7 = 0x61181 << 0x22;
                            var_t9 = 0x65841 << 0x22;
                            var_s1_2 = (temp_t2 == 1) << 0xB;
                            var_t0_2 = var_t3;
                            goto block_30;
                        }
                        var_a6 = 0x711C1 << 0x22;
                        var_a7 = 0x61181 << 0x22;
                        var_s1_2 = (temp_t2 == 1) << 0xB;
                        temp_a1_2 = ((s32) var_t3 >= 1) ? var_t3 : 1U;
                        temp_v0 = (((temp_t2 != 0) ? 1 : 4) << 0xE) | var_s1_2 | 0x2200;
                        var_t9 = 0x65841 << 0x22;
                        temp_t8->unk584 = (s32) temp_v0;
                        temp_a1->unk70080 = (s64) (((u64) (temp_v0 << 0x20) >> 0x20) | var_t9);
                        temp_t8->unk588 = 0;
                        temp_a1->unk70080 = (s64) (0x65881 << 0x22);
                        if (temp_a1_2 & 1) {
                            temp_a1->unk70080 = (s64) (((u64) (((var_a0->unk2 & 0xFFFF) | (var_a0->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7);
                            var_t0 -= 1;
                            temp_at = (u64) ((((var_a0->unk6 - 1) & 0xFFFF) | ((var_a0->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_a0 += 8;
                            temp_a1->unk70080 = (s64) (temp_at | var_a6);
                        }
                        var_a3 = var_t0;
                        var_v1_3 = var_a0;
                        if (((s32) temp_a1_2 >> 1) != 0) {
                            do {
                                temp_a1->unk70080 = (s64) (((u64) (((var_v1_3->unk2 & 0xFFFF) | (var_v1_3->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7);
                                temp_a1->unk70080 = (s64) (((u64) ((((var_v1_3->unk6 - 1) & 0xFFFF) | ((var_v1_3->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6);
                                temp_a1->unk70080 = (s64) (((u64) (((var_v1_3->unkA & 0xFFFF) | (var_v1_3->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7);
                                var_a3 -= 2;
                                temp_a1->unk70080 = (s64) (((u64) ((((var_v1_3->unkE - 1) & 0xFFFF) | ((var_v1_3->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6);
                                var_v1_3 += 0x10;
                            } while (var_a3 != 0);
                        }
                        var_t0_2 = var_t3;
                        if (temp_t2 == 3) {

                        } else {
block_30:
                            temp_a1_3 = (var_t3 >= 1U) ? var_t3 : 1U;
                            temp_a4 = var_s1_2 | 0x16300;
                            temp_t8->unk588 = 0xFF;
                            temp_a1->unk70080 = (s64) ((0x65881 << 0x22) | 0xFF);
                            var_a0_2 = temp_s0_3;
                            temp_t8->unk584 = (s32) temp_a4;
                            temp_a1->unk70080 = (s64) (((u64) (temp_a4 << 0x20) >> 0x20) | var_t9);
                            if (temp_a1_3 & 1) {
                                temp_a1->unk70080 = (s64) (((u64) (((var_a0_2->unk2 & 0xFFFF) | (var_a0_2->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7);
                                var_t0_2 -= 1;
                                temp_at_2 = (u64) ((((var_a0_2->unk6 - 1) & 0xFFFF) | ((var_a0_2->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                                var_a0_2 += 8;
                                temp_a1->unk70080 = (s64) (temp_at_2 | var_a6);
                            }
                            var_a3_2 = var_t0_2;
                            var_v1_4 = var_a0_2;
                            if (((s32) temp_a1_3 >> 1) != 0) {
                                do {
                                    temp_a1->unk70080 = (s64) (((u64) (((var_v1_4->unk2 & 0xFFFF) | (var_v1_4->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7);
                                    temp_a1->unk70080 = (s64) (((u64) ((((var_v1_4->unk6 - 1) & 0xFFFF) | ((var_v1_4->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6);
                                    temp_a1->unk70080 = (s64) (((u64) (((var_v1_4->unkA & 0xFFFF) | (var_v1_4->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7);
                                    var_a3_2 -= 2;
                                    temp_a1->unk70080 = (s64) (((u64) ((((var_v1_4->unkE - 1) & 0xFFFF) | ((var_v1_4->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6);
                                    var_v1_4 += 0x10;
                                } while (var_a3_2 != 0);
                            }
                            var_s4->unk7C = 0;
                        }
                    }
                    arg0->unk178(&sp40, 0, temp_s7->unkE2);
                    temp_t2_2 = var_s4->unk80;
                    temp_t8_2 = var_s4->unk4;
                    temp_s0_4 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    temp_a1_4 = var_s4->unk0;
                    var_a0_3 = temp_s0_4;
                    if (sp48 != NULL) {
                        var_t3_2 = sp48->unk4;
                    } else {
                        var_t3_2 = 1;
                    }
                    var_t0_3 = var_t3_2;
                    if (var_t3_2 != 0) {
                        temp_a1_4->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_t8_2->unk440 = 0x100000;
                        temp_a1_4->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_t8_2->unk5B4 = (u32) var_s4->unk8;
                        temp_a1_4->unk70080 = (s64) (var_s4->unk8 | (0x65B41 << 0x22));
                        temp_t8_2->unk5D8 = 0;
                        temp_a1_4->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_t8_2->unk5DC = 0;
                        temp_a1_4->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_t8_2->unk5E0 = 0;
                        temp_a1_4->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_t8_2->unk5E4 = 0;
                        temp_a1_4->unk70080 = (s64) (0x65E41 << 0x22);
                        temp_t8_2->unk58C = -1;
                        temp_a1_4->unk70080 = (s64) temp_gp->unk-32B0;
                        temp_t8_2->unk590 = -1;
                        temp_a1_4->unk70080 = (s64) temp_gp->unk-32B8;
                        if ((temp_t2_2 != 0) && (temp_t2_2 != 3)) {
                            var_a6_2 = 0x711C1 << 0x22;
                            var_a7_2 = 0x61181 << 0x22;
                            var_t9_2 = 0x65841 << 0x22;
                            var_s1_3 = (temp_t2_2 == 1) << 0xB;
                            goto block_42;
                        }
                        var_a6_2 = 0x711C1 << 0x22;
                        var_a7_2 = 0x61181 << 0x22;
                        var_s1_3 = (temp_t2_2 == 1) << 0xB;
                        temp_a1_5 = ((s32) var_t3_2 >= 1) ? var_t3_2 : 1U;
                        temp_a4_2 = (((temp_t2_2 != 0) ? 1 : 4) << 0xE) | var_s1_3 | 0x2200;
                        var_t9_2 = 0x65841 << 0x22;
                        temp_t8_2->unk584 = (s32) temp_a4_2;
                        temp_a1_4->unk70080 = (s64) (((u64) (temp_a4_2 << 0x20) >> 0x20) | var_t9_2);
                        temp_t8_2->unk588 = 0;
                        temp_a1_4->unk70080 = (s64) (0x65881 << 0x22);
                        if (temp_a1_5 & 1) {
                            temp_a1_4->unk70080 = (s64) (((u64) (((var_a0_3->unk2 & 0xFFFF) | (var_a0_3->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_2);
                            var_t0_3 -= 1;
                            temp_at_3 = (u64) ((((var_a0_3->unk6 - 1) & 0xFFFF) | ((var_a0_3->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_a0_3 += 8;
                            temp_a1_4->unk70080 = (s64) (temp_at_3 | var_a6_2);
                        }
                        var_a3_3 = var_t0_3;
                        var_v1_5 = var_a0_3;
                        if (((s32) temp_a1_5 >> 1) != 0) {
                            do {
                                temp_a1_4->unk70080 = (s64) (((u64) (((var_v1_5->unk2 & 0xFFFF) | (var_v1_5->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_2);
                                temp_a1_4->unk70080 = (s64) (((u64) ((((var_v1_5->unk6 - 1) & 0xFFFF) | ((var_v1_5->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_2);
                                temp_a1_4->unk70080 = (s64) (((u64) (((var_v1_5->unkA & 0xFFFF) | (var_v1_5->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7_2);
                                var_a3_3 -= 2;
                                temp_a1_4->unk70080 = (s64) (((u64) ((((var_v1_5->unkE - 1) & 0xFFFF) | ((var_v1_5->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_2);
                                var_v1_5 += 0x10;
                            } while (var_a3_3 != 0);
                        }
                        if (temp_t2_2 != 3) {
block_42:
                            var_t0_4 = var_t3_2;
                            temp_a1_6 = (var_t3_2 >= 1U) ? var_t3_2 : 1U;
                            temp_a4_3 = var_s1_3 | 0x16300;
                            temp_t8_2->unk588 = 0xFF;
                            temp_a1_4->unk70080 = (s64) ((0x65881 << 0x22) | 0xFF);
                            var_a0_4 = temp_s0_4;
                            temp_t8_2->unk584 = (s32) temp_a4_3;
                            temp_a1_4->unk70080 = (s64) (((u64) (temp_a4_3 << 0x20) >> 0x20) | var_t9_2);
                            if (temp_a1_6 & 1) {
                                temp_a1_4->unk70080 = (s64) (((u64) (((var_a0_4->unk2 & 0xFFFF) | (var_a0_4->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_2);
                                var_t0_4 -= 1;
                                temp_at_4 = (u64) ((((var_a0_4->unk6 - 1) & 0xFFFF) | ((var_a0_4->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                                var_a0_4 += 8;
                                temp_a1_4->unk70080 = (s64) (temp_at_4 | var_a6_2);
                            }
                            var_a3_4 = var_t0_4;
                            var_v1_6 = var_a0_4;
                            if (((s32) temp_a1_6 >> 1) != 0) {
                                do {
                                    temp_a1_4->unk70080 = (s64) (((u64) (((var_v1_6->unk2 & 0xFFFF) | (var_v1_6->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_2);
                                    temp_a1_4->unk70080 = (s64) (((u64) ((((var_v1_6->unk6 - 1) & 0xFFFF) | ((var_v1_6->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_2);
                                    temp_a1_4->unk70080 = (s64) (((u64) (((var_v1_6->unkA & 0xFFFF) | (var_v1_6->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7_2);
                                    var_a3_4 -= 2;
                                    temp_a1_4->unk70080 = (s64) (((u64) ((((var_v1_6->unkE - 1) & 0xFFFF) | ((var_v1_6->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_2);
                                    var_v1_6 += 0x10;
                                } while (var_a3_4 != 0);
                            }
                            goto block_47;
                        }
                    }
                }
            } else {
                sp88 = 0;
                sp8C = arg0->unk8;
                sp8A = temp_s7->unkE2;
                sp8E = temp_s7->unkE0 + temp_s7->unkE2;
                arg0->unk154(&sp90, &sp88, 0);
                arg0->unk164(&sp40, &sp90, &sp40);
                if ((sp48 == NULL) || (sp48->unk4 != 0)) {
                    temp_t3 = var_s4->unk80;
                    temp_s0_5 = var_s4->unk4;
                    temp_s1_2 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    temp_a1_7 = var_s4->unk0;
                    var_t0_5 = temp_s1_2;
                    if (sp48 != NULL) {
                        var_t8 = sp48->unk4;
                    } else {
                        var_t8 = 1;
                    }
                    var_a0_5 = var_t8;
                    if (var_t8 != 0) {
                        temp_a1_7->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_s0_5->unk440 = 0x100000;
                        temp_a1_7->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_s0_5->unk5B4 = (u32) var_s4->unk8;
                        temp_a1_7->unk70080 = (s64) (var_s4->unk8 | (0x65B41 << 0x22));
                        temp_s0_5->unk5D8 = 0;
                        temp_a1_7->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_s0_5->unk5DC = 0;
                        temp_a1_7->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_s0_5->unk5E0 = 0;
                        temp_a1_7->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_s0_5->unk5E4 = 0;
                        temp_a1_7->unk70080 = (s64) (0x65E41 << 0x22);
                        temp_s0_5->unk58C = -1;
                        temp_a1_7->unk70080 = (s64) temp_gp->unk-32B0;
                        temp_s0_5->unk590 = -1;
                        temp_a1_7->unk70080 = (s64) temp_gp->unk-32B8;
                        if ((temp_t3 != 0) && (temp_t3 != 3)) {
                            var_a6_3 = 0x711C1 << 0x22;
                            var_a7_3 = 0x61181 << 0x22;
                            var_t9_3 = 0x65841 << 0x22;
                            var_s2_2 = (temp_t3 == 1) << 0xB;
                            var_a0_6 = var_t8;
                            goto block_134;
                        }
                        var_a6_3 = 0x711C1 << 0x22;
                        var_a7_3 = 0x61181 << 0x22;
                        var_s2_2 = (temp_t3 == 1) << 0xB;
                        temp_t1 = ((s32) var_t8 >= 1) ? var_t8 : 1U;
                        temp_at_5 = (((temp_t3 != 0) ? 1 : 4) << 0xE) | var_s2_2 | 0x2200;
                        var_t9_3 = 0x65841 << 0x22;
                        temp_s0_5->unk584 = (s32) temp_at_5;
                        temp_a1_7->unk70080 = (s64) (((u64) (temp_at_5 << 0x20) >> 0x20) | var_t9_3);
                        temp_s0_5->unk588 = 0;
                        temp_a1_7->unk70080 = (s64) (0x65881 << 0x22);
                        if (temp_t1 & 1) {
                            temp_a1_7->unk70080 = (s64) (((u64) (((var_t0_5->unk2 & 0xFFFF) | (var_t0_5->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_3);
                            var_a0_5 -= 1;
                            temp_at_6 = (u64) ((((var_t0_5->unk6 - 1) & 0xFFFF) | ((var_t0_5->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_t0_5 += 8;
                            temp_a1_7->unk70080 = (s64) (temp_at_6 | var_a6_3);
                        }
                        var_a3_5 = var_a0_5;
                        var_v1_7 = var_t0_5;
                        if (((s32) temp_t1 >> 1) != 0) {
                            do {
                                temp_a1_7->unk70080 = (s64) (((u64) (((var_v1_7->unk2 & 0xFFFF) | (var_v1_7->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_3);
                                temp_a1_7->unk70080 = (s64) (((u64) ((((var_v1_7->unk6 - 1) & 0xFFFF) | ((var_v1_7->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_3);
                                temp_a1_7->unk70080 = (s64) (((u64) (((var_v1_7->unkA & 0xFFFF) | (var_v1_7->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7_3);
                                var_a3_5 -= 2;
                                temp_a1_7->unk70080 = (s64) (((u64) ((((var_v1_7->unkE - 1) & 0xFFFF) | ((var_v1_7->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_3);
                                var_v1_7 += 0x10;
                            } while (var_a3_5 != 0);
                        }
                        var_a0_6 = var_t8;
                        if (temp_t3 == 3) {

                        } else {
block_134:
                            temp_a1_8 = (var_t8 >= 1U) ? var_t8 : 1U;
                            temp_a4_4 = var_s2_2 | 0x16300;
                            temp_s0_5->unk588 = 0xFF;
                            temp_a1_7->unk70080 = (s64) ((0x65881 << 0x22) | 0xFF);
                            var_t0_6 = temp_s1_2;
                            temp_s0_5->unk584 = (s32) temp_a4_4;
                            temp_a1_7->unk70080 = (s64) (((u64) (temp_a4_4 << 0x20) >> 0x20) | var_t9_3);
                            if (temp_a1_8 & 1) {
                                temp_a1_7->unk70080 = (s64) (((u64) (((var_t0_6->unk2 & 0xFFFF) | (var_t0_6->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_3);
                                var_a0_6 -= 1;
                                temp_at_7 = (u64) ((((var_t0_6->unk6 - 1) & 0xFFFF) | ((var_t0_6->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                                var_t0_6 += 8;
                                temp_a1_7->unk70080 = (s64) (temp_at_7 | var_a6_3);
                            }
                            var_a3_6 = var_a0_6;
                            var_v1_8 = var_t0_6;
                            if (((s32) temp_a1_8 >> 1) != 0) {
                                do {
                                    temp_a1_7->unk70080 = (s64) (((u64) (((var_v1_8->unk2 & 0xFFFF) | (var_v1_8->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_3);
                                    temp_a1_7->unk70080 = (s64) (((u64) ((((var_v1_8->unk6 - 1) & 0xFFFF) | ((var_v1_8->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_3);
                                    temp_a1_7->unk70080 = (s64) (((u64) (((var_v1_8->unkA & 0xFFFF) | (var_v1_8->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7_3);
                                    var_a3_6 -= 2;
                                    temp_a1_7->unk70080 = (s64) (((u64) ((((var_v1_8->unkE - 1) & 0xFFFF) | ((var_v1_8->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_3);
                                    var_v1_8 += 0x10;
                                } while (var_a3_6 != 0);
                            }
                            var_s4->unk7C = 0;
                        }
                    }
                    arg0->unk178(&sp40, 0, (u16) -(s32) temp_s7->unkE2);
                    temp_t3_2 = var_s4->unk80;
                    temp_s0_6 = var_s4->unk4;
                    temp_s1_3 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    temp_a1_9 = var_s4->unk0;
                    var_a0_7 = temp_s1_3;
                    if (sp48 != NULL) {
                        var_t8_2 = sp48->unk4;
                    } else {
                        var_t8_2 = 1;
                    }
                    var_t0_7 = var_t8_2;
                    if (var_t8_2 != 0) {
                        temp_a1_9->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_s0_6->unk440 = 0x100000;
                        temp_a1_9->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_s0_6->unk5B4 = (u32) var_s4->unk8;
                        temp_a1_9->unk70080 = (s64) (var_s4->unk8 | (0x65B41 << 0x22));
                        temp_s0_6->unk5D8 = 0;
                        temp_a1_9->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_s0_6->unk5DC = 0;
                        temp_a1_9->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_s0_6->unk5E0 = 0;
                        temp_a1_9->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_s0_6->unk5E4 = 0;
                        temp_a1_9->unk70080 = (s64) (0x65E41 << 0x22);
                        temp_s0_6->unk58C = -1;
                        temp_a1_9->unk70080 = (s64) temp_gp->unk-32B0;
                        temp_s0_6->unk590 = -1;
                        temp_a1_9->unk70080 = (s64) temp_gp->unk-32B8;
                        if ((temp_t3_2 != 0) && (temp_t3_2 != 3)) {
                            var_a6_4 = 0x711C1 << 0x22;
                            var_a7_4 = 0x61181 << 0x22;
                            var_t9_4 = 0x65841 << 0x22;
                            var_s2_3 = (temp_t3_2 == 1) << 0xB;
                            var_t0_8 = var_t8_2;
                            goto block_146;
                        }
                        var_a6_4 = 0x711C1 << 0x22;
                        var_a7_4 = 0x61181 << 0x22;
                        var_s2_3 = (temp_t3_2 == 1) << 0xB;
                        temp_t1_2 = ((s32) var_t8_2 >= 1) ? var_t8_2 : 1U;
                        temp_a4_5 = (((temp_t3_2 != 0) ? 1 : 4) << 0xE) | var_s2_3 | 0x2200;
                        var_t9_4 = 0x65841 << 0x22;
                        temp_s0_6->unk584 = (s32) temp_a4_5;
                        temp_a1_9->unk70080 = (s64) (((u64) (temp_a4_5 << 0x20) >> 0x20) | var_t9_4);
                        temp_s0_6->unk588 = 0;
                        temp_a1_9->unk70080 = (s64) (0x65881 << 0x22);
                        if (temp_t1_2 & 1) {
                            temp_a1_9->unk70080 = (s64) (((u64) (((var_a0_7->unk2 & 0xFFFF) | (var_a0_7->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_4);
                            var_t0_7 -= 1;
                            temp_at_8 = (u64) ((((var_a0_7->unk6 - 1) & 0xFFFF) | ((var_a0_7->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_a0_7 += 8;
                            temp_a1_9->unk70080 = (s64) (temp_at_8 | var_a6_4);
                        }
                        var_a3_7 = var_t0_7;
                        var_v1_9 = var_a0_7;
                        if (((s32) temp_t1_2 >> 1) != 0) {
                            do {
                                temp_a1_9->unk70080 = (s64) (((u64) (((var_v1_9->unk2 & 0xFFFF) | (var_v1_9->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_4);
                                temp_a1_9->unk70080 = (s64) (((u64) ((((var_v1_9->unk6 - 1) & 0xFFFF) | ((var_v1_9->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_4);
                                temp_a1_9->unk70080 = (s64) (((u64) (((var_v1_9->unkA & 0xFFFF) | (var_v1_9->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7_4);
                                var_a3_7 -= 2;
                                temp_a1_9->unk70080 = (s64) (((u64) ((((var_v1_9->unkE - 1) & 0xFFFF) | ((var_v1_9->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_4);
                                var_v1_9 += 0x10;
                            } while (var_a3_7 != 0);
                        }
                        var_t0_8 = var_t8_2;
                        if (temp_t3_2 == 3) {

                        } else {
block_146:
                            temp_a1_10 = (var_t8_2 >= 1U) ? var_t8_2 : 1U;
                            temp_a4_6 = var_s2_3 | 0x16300;
                            temp_s0_6->unk588 = 0xFF;
                            temp_a1_9->unk70080 = (s64) ((0x65881 << 0x22) | 0xFF);
                            var_a0_8 = temp_s1_3;
                            temp_s0_6->unk584 = (s32) temp_a4_6;
                            temp_a1_9->unk70080 = (s64) (((u64) (temp_a4_6 << 0x20) >> 0x20) | var_t9_4);
                            if (temp_a1_10 & 1) {
                                temp_a1_9->unk70080 = (s64) (((u64) (((var_a0_8->unk2 & 0xFFFF) | (var_a0_8->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_4);
                                var_t0_8 -= 1;
                                temp_at_9 = (u64) ((((var_a0_8->unk6 - 1) & 0xFFFF) | ((var_a0_8->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                                var_a0_8 += 8;
                                temp_a1_9->unk70080 = (s64) (temp_at_9 | var_a6_4);
                            }
                            var_a3_8 = var_t0_8;
                            var_v1_10 = var_a0_8;
                            if (((s32) temp_a1_10 >> 1) != 0) {
                                do {
                                    temp_a1_9->unk70080 = (s64) (((u64) (((var_v1_10->unk2 & 0xFFFF) | (var_v1_10->unk0 << 0x10)) << 0x20) >> 0x20) | var_a7_4);
                                    temp_a1_9->unk70080 = (s64) (((u64) ((((var_v1_10->unk6 - 1) & 0xFFFF) | ((var_v1_10->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_4);
                                    temp_a1_9->unk70080 = (s64) (((u64) (((var_v1_10->unkA & 0xFFFF) | (var_v1_10->unk8 << 0x10)) << 0x20) >> 0x20) | var_a7_4);
                                    var_a3_8 -= 2;
                                    temp_a1_9->unk70080 = (s64) (((u64) ((((var_v1_10->unkE - 1) & 0xFFFF) | ((var_v1_10->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_a6_4);
                                    var_v1_10 += 0x10;
                                } while (var_a3_8 != 0);
                            }
block_47:
                            var_s4->unk7C = 0;
                        }
                    }
                }
            }
        } else {
            temp_gp->unk-7E28(var_s4, &sp40, 0, 0);
        }
        sp38 = sp130 + 1;
    }
    temp_a1_11 = var_s4->unk70 + 0xC;
    if (sp64 != 0) {
        sp138 = (s64) (temp_s7->unk2C + 0xC);
    }
    temp_v1_5 = temp_a1_11->unk8;
    if (((temp_v1_5 == NULL) || (temp_v1_5->unk4 != 0)) && ((arg0->unk16C(&sp40, temp_a1_11, (void *) sp138), (sp48 == NULL)) || (sp48->unk4 != 0))) {
        temp_a0_2 = temp_s7->unkDC;
        if (temp_a0_2 != 0) {
            if (temp_a0_2 != 1) {
                spD0 = 0;
                spD4 = arg0->unk8;
                spD2 = 0;
                spD6 = temp_s7->unkE0;
                arg0->unk154(&spD8, &spD0, 0);
                arg0->unk164(&sp40, &spD8, &sp40);
                if ((sp48 == NULL) || (sp48->unk4 != 0)) {
                    temp_t2_3 = var_s4->unk4;
                    var_a3_9 = var_s4->unk0;
                    var_t1 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    if (sp48 != NULL) {
                        var_a0_9 = sp48->unk4;
                    } else {
                        var_a0_9 = 1;
                    }
                    var_t0_9 = var_a0_9;
                    if (var_a0_9 != 0) {
                        temp_a1_12 = var_a3_9 + 0x70000;
                        var_a3_9->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_t2_3->unk440 = 0x100000;
                        var_a3_9->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_t2_3->unk5B4 = (u32) var_s4->unkC;
                        temp_a6 = 0x711C1 << 0x22;
                        var_a3_9->unk70080 = (s64) (var_s4->unkC | (0x65B41 << 0x22));
                        temp_t2_3->unk58C = 0;
                        var_a3_9->unk70080 = (s64) (0x658C1 << 0x22);
                        temp_t2_3->unk590 = -1;
                        var_a3_9->unk70080 = (s64) temp_gp->unk-32B8;
                        temp_t2_3->unk588 = 0xF0;
                        var_a3_9->unk70080 = (s64) ((0x65881 << 0x22) | 0xF0);
                        temp_t2_3->unk5D8 = 0;
                        var_a3_9->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_t3_3 = ((s32) var_a0_9 >= 1) ? var_a0_9 : 1U;
                        temp_t2_3->unk5DC = 0;
                        var_a3_9->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_t2_3->unk5E0 = 0;
                        var_a3_9->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_a7 = 0x61181 << 0x22;
                        temp_t2_3->unk584 = 0x13F500;
                        var_a3_9->unk70080 = (s64) temp_gp->unk-3288;
                        if (temp_t3_3 & 1) {
                            var_a3_9->unk70080 = (s64) (((u64) (((var_t1->unk2 & 0xFFFF) | (var_t1->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7);
                            var_t0_9 -= 1;
                            temp_a4_7 = (u64) ((((var_t1->unk6 - 1) & 0xFFFF) | ((var_t1->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_t1 += 8;
                            var_a3_9->unk70080 = (s64) (temp_a4_7 | temp_a6);
                        }
                        var_a3_9 = (void *) var_t0_9;
                        var_v1_11 = var_t1;
                        if (((s32) temp_t3_3 >> 1) != 0) {
                            do {
                                temp_a1_12->unk80 = (s64) (((u64) (((var_v1_11->unk2 & 0xFFFF) | (var_v1_11->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7);
                                temp_a1_12->unk80 = (s64) (((u64) ((((var_v1_11->unk6 - 1) & 0xFFFF) | ((var_v1_11->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6);
                                temp_a1_12->unk80 = (s64) (((u64) (((var_v1_11->unkA & 0xFFFF) | (var_v1_11->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a7);
                                var_a3_9 -= 2;
                                temp_a1_12->unk80 = (s64) (((u64) ((((var_v1_11->unkE - 1) & 0xFFFF) | ((var_v1_11->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6);
                                var_v1_11 += 0x10;
                            } while (var_a3_9 != NULL);
                        }
                        var_s4->unk7C = 0;
                    }
                    arg0->unk178(&sp40, 0, temp_s7->unkE2, var_a3_9);
                    temp_t2_4 = var_s4->unk4;
                    temp_a3 = var_s4->unk0;
                    var_t1_2 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    if (sp48 != NULL) {
                        var_a0_10 = sp48->unk4;
                    } else {
                        var_a0_10 = 1;
                    }
                    var_t0_10 = var_a0_10;
                    if (var_a0_10 != 0) {
                        temp_a3->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_t2_4->unk440 = 0x100000;
                        temp_a3->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_t2_4->unk5B4 = (u32) var_s4->unkC;
                        temp_a6_2 = 0x711C1 << 0x22;
                        temp_a3->unk70080 = (s64) (var_s4->unkC | (0x65B41 << 0x22));
                        temp_t2_4->unk58C = 0;
                        temp_a3->unk70080 = (s64) (0x658C1 << 0x22);
                        temp_t2_4->unk590 = -1;
                        temp_a3->unk70080 = (s64) temp_gp->unk-32B8;
                        temp_t2_4->unk588 = 0xF0;
                        temp_a3->unk70080 = (s64) ((0x65881 << 0x22) | 0xF0);
                        temp_t2_4->unk5D8 = 0;
                        temp_a3->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_t3_4 = ((s32) var_a0_10 >= 1) ? var_a0_10 : 1U;
                        temp_t2_4->unk5DC = 0;
                        temp_a3->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_t2_4->unk5E0 = 0;
                        temp_a3->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_a7_2 = 0x61181 << 0x22;
                        temp_t2_4->unk584 = 0x13F500;
                        temp_a3->unk70080 = (s64) temp_gp->unk-3288;
                        if (temp_t3_4 & 1) {
                            temp_a3->unk70080 = (s64) (((u64) (((var_t1_2->unk2 & 0xFFFF) | (var_t1_2->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_2);
                            var_t0_10 -= 1;
                            temp_a4_8 = (u64) ((((var_t1_2->unk6 - 1) & 0xFFFF) | ((var_t1_2->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_t1_2 += 8;
                            temp_a3->unk70080 = (s64) (temp_a4_8 | temp_a6_2);
                        }
                        var_a3_10 = var_t0_10;
                        var_v1_12 = var_t1_2;
                        if (((s32) temp_t3_4 >> 1) != 0) {
                            do {
                                temp_a3->unk70080 = (s64) (((u64) (((var_v1_12->unk2 & 0xFFFF) | (var_v1_12->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_2);
                                temp_a3->unk70080 = (s64) (((u64) ((((var_v1_12->unk6 - 1) & 0xFFFF) | ((var_v1_12->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_2);
                                temp_a3->unk70080 = (s64) (((u64) (((var_v1_12->unkA & 0xFFFF) | (var_v1_12->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a7_2);
                                var_a3_10 -= 2;
                                temp_a3->unk70080 = (s64) (((u64) ((((var_v1_12->unkE - 1) & 0xFFFF) | ((var_v1_12->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_2);
                                var_v1_12 += 0x10;
                            } while (var_a3_10 != 0);
                        }
                        goto block_77;
                    }
                }
            } else {
                spB8 = 0;
                spBC = arg0->unk8;
                spBA = temp_s7->unkE2;
                spBE = temp_s7->unkE0 + temp_s7->unkE2;
                arg0->unk154(&spC0, &spB8, 0);
                arg0->unk164(&sp40, &spC0, &sp40);
                if ((sp48 == NULL) || (sp48->unk4 != 0)) {
                    temp_t2_5 = var_s4->unk4;
                    var_a3_11 = var_s4->unk0;
                    var_t0_11 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    if (sp48 != NULL) {
                        var_a0_11 = sp48->unk4;
                    } else {
                        var_a0_11 = 1;
                    }
                    var_t1_3 = var_a0_11;
                    if (var_a0_11 != 0) {
                        temp_a1_13 = var_a3_11 + 0x70000;
                        var_a3_11->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_t2_5->unk440 = 0x100000;
                        var_a3_11->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_t2_5->unk5B4 = (u32) var_s4->unkC;
                        temp_a6_3 = 0x711C1 << 0x22;
                        var_a3_11->unk70080 = (s64) (var_s4->unkC | (0x65B41 << 0x22));
                        temp_t2_5->unk58C = 0;
                        var_a3_11->unk70080 = (s64) (0x658C1 << 0x22);
                        temp_t2_5->unk590 = -1;
                        var_a3_11->unk70080 = (s64) temp_gp->unk-32B8;
                        temp_t2_5->unk588 = 0xF0;
                        var_a3_11->unk70080 = (s64) ((0x65881 << 0x22) | 0xF0);
                        temp_t2_5->unk5D8 = 0;
                        var_a3_11->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_t3_5 = ((s32) var_a0_11 >= 1) ? var_a0_11 : 1U;
                        temp_t2_5->unk5DC = 0;
                        var_a3_11->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_t2_5->unk5E0 = 0;
                        var_a3_11->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_a7_3 = 0x61181 << 0x22;
                        temp_t2_5->unk584 = 0x13F500;
                        var_a3_11->unk70080 = (s64) temp_gp->unk-3288;
                        if (temp_t3_5 & 1) {
                            var_a3_11->unk70080 = (s64) (((u64) (((var_t0_11->unk2 & 0xFFFF) | (var_t0_11->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_3);
                            var_t1_3 -= 1;
                            temp_a4_9 = (u64) ((((var_t0_11->unk6 - 1) & 0xFFFF) | ((var_t0_11->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_t0_11 += 8;
                            var_a3_11->unk70080 = (s64) (temp_a4_9 | temp_a6_3);
                        }
                        var_a3_11 = (void *) var_t1_3;
                        var_v1_13 = var_t0_11;
                        if (((s32) temp_t3_5 >> 1) != 0) {
                            do {
                                temp_a1_13->unk80 = (s64) (((u64) (((var_v1_13->unk2 & 0xFFFF) | (var_v1_13->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_3);
                                temp_a1_13->unk80 = (s64) (((u64) ((((var_v1_13->unk6 - 1) & 0xFFFF) | ((var_v1_13->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_3);
                                temp_a1_13->unk80 = (s64) (((u64) (((var_v1_13->unkA & 0xFFFF) | (var_v1_13->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a7_3);
                                var_a3_11 -= 2;
                                temp_a1_13->unk80 = (s64) (((u64) ((((var_v1_13->unkE - 1) & 0xFFFF) | ((var_v1_13->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_3);
                                var_v1_13 += 0x10;
                            } while (var_a3_11 != NULL);
                        }
                        var_s4->unk7C = 0;
                    }
                    arg0->unk178(&sp40, 0, (u16) -(s32) temp_s7->unkE2, var_a3_11);
                    temp_t2_6 = var_s4->unk4;
                    temp_a3_2 = var_s4->unk0;
                    var_t0_12 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
                    if (sp48 != NULL) {
                        var_a0_12 = sp48->unk4;
                    } else {
                        var_a0_12 = 1;
                    }
                    var_t1_4 = var_a0_12;
                    if (var_a0_12 != 0) {
                        temp_a3_2->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                        temp_t2_6->unk440 = 0x100000;
                        temp_a3_2->unk70080 = (s64) temp_gp->unk-32C0;
                        temp_t2_6->unk5B4 = (u32) var_s4->unkC;
                        temp_a6_4 = 0x711C1 << 0x22;
                        temp_a3_2->unk70080 = (s64) (var_s4->unkC | (0x65B41 << 0x22));
                        temp_t2_6->unk58C = 0;
                        temp_a3_2->unk70080 = (s64) (0x658C1 << 0x22);
                        temp_t2_6->unk590 = -1;
                        temp_a3_2->unk70080 = (s64) temp_gp->unk-32B8;
                        temp_t2_6->unk588 = 0xF0;
                        temp_a3_2->unk70080 = (s64) ((0x65881 << 0x22) | 0xF0);
                        temp_t2_6->unk5D8 = 0;
                        temp_a3_2->unk70080 = (s64) (0x65D81 << 0x22);
                        temp_t3_6 = ((s32) var_a0_12 >= 1) ? var_a0_12 : 1U;
                        temp_t2_6->unk5DC = 0;
                        temp_a3_2->unk70080 = (s64) (0x65DC1 << 0x22);
                        temp_t2_6->unk5E0 = 0;
                        temp_a3_2->unk70080 = (s64) (0x65E01 << 0x22);
                        temp_a7_4 = 0x61181 << 0x22;
                        temp_t2_6->unk584 = 0x13F500;
                        temp_a3_2->unk70080 = (s64) temp_gp->unk-3288;
                        if (temp_t3_6 & 1) {
                            temp_a3_2->unk70080 = (s64) (((u64) (((var_t0_12->unk2 & 0xFFFF) | (var_t0_12->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_4);
                            var_t1_4 -= 1;
                            temp_a4_10 = (u64) ((((var_t0_12->unk6 - 1) & 0xFFFF) | ((var_t0_12->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_t0_12 += 8;
                            temp_a3_2->unk70080 = (s64) (temp_a4_10 | temp_a6_4);
                        }
                        var_a3_12 = var_t1_4;
                        var_v1_14 = var_t0_12;
                        if (((s32) temp_t3_6 >> 1) != 0) {
                            do {
                                temp_a3_2->unk70080 = (s64) (((u64) (((var_v1_14->unk2 & 0xFFFF) | (var_v1_14->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_4);
                                temp_a3_2->unk70080 = (s64) (((u64) ((((var_v1_14->unk6 - 1) & 0xFFFF) | ((var_v1_14->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_4);
                                temp_a3_2->unk70080 = (s64) (((u64) (((var_v1_14->unkA & 0xFFFF) | (var_v1_14->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a7_4);
                                var_a3_12 -= 2;
                                temp_a3_2->unk70080 = (s64) (((u64) ((((var_v1_14->unkE - 1) & 0xFFFF) | ((var_v1_14->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_4);
                                var_v1_14 += 0x10;
                            } while (var_a3_12 != 0);
                        }
                        goto block_77;
                    }
                }
            }
        } else {
            temp_t2_7 = var_s4->unk4;
            temp_a3_3 = var_s4->unk0;
            var_t0_13 = (sp48 == NULL) ? &sp40 : (sp48 + 8);
            if (sp48 != NULL) {
                var_a0_13 = sp48->unk4;
            } else {
                var_a0_13 = 1;
            }
            var_t1_5 = var_a0_13;
            if (var_a0_13 != 0) {
                temp_a3_3->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                temp_t2_7->unk440 = 0x100000;
                temp_a3_3->unk70080 = (s64) temp_gp->unk-32C0;
                temp_t2_7->unk5B4 = (u32) var_s4->unkC;
                temp_a6_5 = 0x711C1 << 0x22;
                temp_a3_3->unk70080 = (s64) (var_s4->unkC | (0x65B41 << 0x22));
                temp_t2_7->unk58C = 0;
                temp_a3_3->unk70080 = (s64) (0x658C1 << 0x22);
                temp_t2_7->unk590 = -1;
                temp_a3_3->unk70080 = (s64) temp_gp->unk-32B8;
                temp_t2_7->unk588 = 0xF0;
                temp_a3_3->unk70080 = (s64) ((0x65881 << 0x22) | 0xF0);
                temp_t2_7->unk5D8 = 0;
                temp_a3_3->unk70080 = (s64) (0x65D81 << 0x22);
                temp_t3_7 = ((s32) var_a0_13 >= 1) ? var_a0_13 : 1U;
                temp_t2_7->unk5DC = 0;
                temp_a3_3->unk70080 = (s64) (0x65DC1 << 0x22);
                temp_t2_7->unk5E0 = 0;
                temp_a3_3->unk70080 = (s64) (0x65E01 << 0x22);
                temp_a7_5 = 0x61181 << 0x22;
                temp_t2_7->unk584 = 0x13F500;
                temp_a3_3->unk70080 = (s64) temp_gp->unk-3288;
                if (temp_t3_7 & 1) {
                    temp_a3_3->unk70080 = (s64) (((u64) (((var_t0_13->unk2 & 0xFFFF) | (var_t0_13->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_5);
                    var_t1_5 -= 1;
                    temp_a4_11 = (u64) ((((var_t0_13->unk6 - 1) & 0xFFFF) | ((var_t0_13->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                    var_t0_13 += 8;
                    temp_a3_3->unk70080 = (s64) (temp_a4_11 | temp_a6_5);
                }
                var_a3_13 = var_t1_5;
                var_v1_15 = var_t0_13;
                if (((s32) temp_t3_7 >> 1) != 0) {
                    do {
                        temp_a3_3->unk70080 = (s64) (((u64) (((var_v1_15->unk2 & 0xFFFF) | (var_v1_15->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a7_5);
                        temp_a3_3->unk70080 = (s64) (((u64) ((((var_v1_15->unk6 - 1) & 0xFFFF) | ((var_v1_15->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_5);
                        temp_a3_3->unk70080 = (s64) (((u64) (((var_v1_15->unkA & 0xFFFF) | (var_v1_15->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a7_5);
                        var_a3_13 -= 2;
                        temp_a3_3->unk70080 = (s64) (((u64) ((((var_v1_15->unkE - 1) & 0xFFFF) | ((var_v1_15->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a6_5);
                        var_v1_15 += 0x10;
                    } while (var_a3_13 != 0);
                }
block_77:
                var_s4->unk7C = 0;
            }
        }
        sp3C = sp128 + 1;
    }
    arg0->unk158(var_s4->unk70, temp_s7->unk2C);
    arg0->unk158(var_s4->unk70 + 0xC, temp_s7->unk2C + 0xC);
    spEA = 0;
    spE8 = 0;
    temp_a3_4 = arg0->unk8;
    spEC = temp_a3_4;
    spEE = arg0->unkA;
    sp178 = var_s3;
    arg0->unk154(&spF0, &spE8, 0, temp_a3_4);
    sp150 = (s64) arg0;
    var_s2_4 = 0;
    sp148 = (s64) temp_s7;
    var_s1_4 = &sp18;
    sp140 = (s64) var_s4;
    var_s3_4 = &sp38;
    var_s0 = &sp10;
    do {
        temp_a4_12 = *var_s3_4;
        var_s4_2 = 8;
        var_s5_3 = 0x20;
        var_s3_4 += 4;
        var_a2 = sp138;
        var_s7 = 0x100;
        if (temp_a4_12 != 0) {
            if (var_s2_4 == 0) {
                var_s5_3 = 0;
                var_s4_2 = 0x20;
                var_s7 = 0;
                var_a2 = (s64) sp140->unk70;
            }
            sp150->unk16C(&sp40, &spF0, var_a2);
            if ((sp48 == NULL) || (sp48->unk4 != 0)) {
                var_s0->unk4 = 1;
                var_s6 = var_s0->unk0 * 0xC;
                var_v1_16 = 0x20;
                if ((sp140->unk3C + var_s6)->unk8 & var_s7) {
                    if (var_s2_4 != 0) {
                        sp140->unk38 = 0x20;
                    } else {
                        var_v1_16 = 0;
                        sp140->unk34 = 0;
                    }
                    var_s0->unk0 = var_v1_16;
                    var_s6 = var_v1_16 * 0xC;
                }
                sp150->unk154(var_s1_4, 0, 0);
                sp150->unk158(var_s1_4, sp148->unk60 + var_s6);
                temp_a0_3 = sp148->unk60 + var_s6;
                sp150->unk168(temp_a0_3, temp_a0_3, &sp40);
            } else {
                var_s0->unk4 = 0;
            }
            temp_a4_13 = var_s5_3 * 0xC;
            temp_gp->unk-7DF4(sp150, var_s2_4, var_s4_2, sp148->unk60 + temp_a4_13, temp_a4_13);
            temp_a4_14 = var_s0->unk4;
            if (temp_a4_14 != 0) {
                temp_a3_5 = var_s0->unk0;
                temp_a2 = temp_a3_5 * 0xC;
                sp150->unk158(sp148->unk60 + temp_a2, var_s1_4, temp_a2, temp_a3_5, temp_a4_14);
                sp150->unk160(var_s1_4);
            }
        }
        var_s2_4 += 1;
        var_s1_4 += 0x14;
        var_s0 += 0x14;
    } while (var_s2_4 != 2);
    sp150->unk160(&sp68);
    sp150->unk160(&sp68 + 0xC);
    sp150->unk160(&sp40);
    sp150->unk160(&spF0);
    sp150->unk160(&sp50);
    sp150->unk160(sp);
}

void mgrasCopyRect8(void *pSrc, void *pDst, void *pGC, BoxRec *pBox) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    s32 sp4;
    s16 temp_a0;
    s16 temp_a7;
    s16 temp_a7_2;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_lo;
    s64 temp_at;
    s64 temp_s0;
    s64 temp_v1;
    s64 temp_v1_2;
    void *temp_gp;
    void *temp_s1;

    temp_a7 = pSrc->unk2;
    temp_a6 = pSrc->unk6 - temp_a7;
    temp_s0 = pSrc->unk4 - pSrc->unk0;
    temp_lo = temp_s0 * temp_a6;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1702B0;
    temp_s1 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_a2 = temp_gp->unk-31A0;
    if (temp_lo > 0) {
        if (temp_lo < 0x4001) {
            (*(temp_s1->unk10->unk1B4 + (temp_gp->unk-3140 * 4)))->unk54 = -1;
            temp_a0 = pDst->unk0;
            sp10 = temp_a0;
            temp_a7_2 = pDst->unk2;
            sp12 = temp_a7_2;
            sp16 = temp_a7_2 + temp_a6;
            sp14 = temp_a0 + temp_s0;
            if (temp_s0 >= 0x2A) {
                temp_v1 = ((s32) (temp_s0 + 7) / 24) * 0x18;
                M2C_TRAP_IF(0x18 == 0);
                sp30 = temp_v1;
                temp_v1_2 = temp_s0 - temp_v1;
                sp28 = temp_v1_2;
                temp_at = (s64) (((temp_v1 + temp_a0) - 7) << 0x30) >> 0x30;
                sp20 = temp_at;
                sp14 = (s16) temp_at;
                if (temp_v1_2 != -7) {
                    spC = 0;
                    sp4 = 0;
                    sp18 = (s64) temp_a2;
                    nfbUnrealizeCursor(&sp10, NULL, temp_a2, temp_s0, temp_s1, pBox, pGC, 0);
                    sp10 = (s16) sp20;
                    sp14 = sp28 + sp20 + 7;
                    spC = 0;
                    sp4 = 0;
                    nfbUnrealizeCursor(&sp10, pSrc, (sp30 + sp18) - 7, temp_s0, temp_s1, pBox, pGC, 0);
                } else {
                    spC = 0;
                    sp4 = 0;
                    nfbUnrealizeCursor(&sp10, pSrc, temp_a2, temp_s0, temp_s1, pBox, pGC, 0);
                }
            } else {
                spC = 0;
                sp4 = 0;
                nfbUnrealizeCursor(&sp10, pSrc, temp_a2, temp_s0, temp_s1, pBox, pGC, 0);
            }
            return;
        }
        /* Duplicate return node #7. Try simplifying control flow for better match */
        mgrasCopyBigRect(pSrc, pGC, pBox, temp_s1, temp_lo, temp_a6, temp_a7);
        return;
    }
    mgrasCopyBigRect(pSrc, pGC, pBox, temp_s1, temp_lo, temp_a6, temp_a7);
}

void mgrasCopyRect12(void *pSrc, void *pDst, void *pGC, BoxRec *pBox) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    s32 sp4;
    s16 temp_a4;
    s16 temp_a7;
    s16 temp_v1;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a7_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_t2;
    s64 temp_a3_2;
    s64 temp_a7_3;
    s64 temp_v0;
    void *temp_gp;
    void *temp_s0;
    void *temp_t0;

    temp_a5 = pSrc->unk4 - pSrc->unk0;
    temp_t2 = pSrc->unk6 - pSrc->unk2;
    temp_lo = temp_a5 * temp_t2;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x170044;
    temp_a3 = temp_a5 < 0x2A;
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_a2 = temp_gp->unk-31A0;
    temp_t0 = *(M2C_ERROR(/* Read from unset register $a4 */)->unk10->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_a7 = temp_lo < 0x2001;
    if (temp_lo > 0) {
        if (temp_a7 != 0) {
            temp_v1 = pDst->unk2;
            sp12 = temp_v1;
            sp16 = temp_v1 + temp_t2;
            temp_a0 = (*(temp_s0->unk84 + (temp_gp->unk-30F8 * 4)))->unk14;
            temp_a4 = pDst->unk0;
            sp10 = temp_a4;
            sp14 = temp_a4 + temp_a5;
            switch (temp_a0) {                      /* irregular */
            default:
                temp_gp->unk-74EC(&sub_5e500000 + 0x5690, temp_a2, temp_a3, temp_a4, temp_a5, temp_lo, 7);
                return;
            case 6:
            case 7:
                sp48 = 8;
                sp50 = 0xA;
                temp_t0->unk54 = (s32) (((temp_t0->unk50 ^ 1) == 0) ? 0x7FFF7FFF : -1);
block_10:
                temp_a3_2 = temp_a5 * 2;
                if (temp_a3 == 0) {
                    temp_lo_2 = (s32) (temp_a5 + 7) / 24;
                    sp38 = (s64) temp_lo_2;
                    temp_a7_2 = temp_lo_2 * 0x18;
                    M2C_TRAP_IF(0x18 == 0);
                    temp_a7_3 = temp_a5 - temp_a7_2;
                    sp30 = temp_a7_3;
                    temp_v0 = (s64) (((temp_a7_2 + temp_a4) - 7) << 0x30) >> 0x30;
                    sp40 = temp_v0;
                    sp14 = (s16) temp_v0;
                    if (temp_a7_3 != -7) {
                        sp20 = (s64) pSrc;
                        sp28 = temp_a3_2;
                        sp18 = (s64) temp_a2;
                        spC = (s32) sp48;
                        sp4 = (s32) sp50;
                        nfbUnrealizeCursor(&sp10, NULL, temp_a2, temp_a3_2, temp_s0, pBox, pGC, 1);
                        sp10 = (s16) sp40;
                        sp14 = sp30 + sp40 + 7;
                        spC = (s32) sp48;
                        sp4 = (s32) sp50;
                        nfbUnrealizeCursor(&sp10, (void *) sp20, ((sp38 * 0x30) + sp18) - 0xE, sp28, temp_s0, pBox, pGC, 1);
                    } else {
                        spC = (s32) sp48;
                        sp4 = (s32) sp50;
                        nfbUnrealizeCursor(&sp10, pSrc, temp_a2, temp_a3_2, temp_s0, pBox, pGC, 1);
                    }
                } else {
                    sp4 = (s32) sp50;
                    spC = (s32) sp48;
                    nfbUnrealizeCursor(&sp10, pSrc, temp_a2, temp_a3_2, temp_s0, pBox, pGC, 1);
                }
                return;
            case 2:
            case 3:
                sp48 = 0;
                temp_t0->unk54 = -1;
                sp50 = 1;
                goto block_10;
            case 4:
            case 5:
                sp48 = 8;
                sp50 = 8;
                temp_t0->unk54 = (s32) (((temp_t0->unk50 ^ 1) == 0) ? 0x0FFF0FFF : -1);
                goto block_10;
            }
        } else {
            /* Duplicate return node #17. Try simplifying control flow for better match */
            mgrasCopyBigRect(pSrc, pGC, pBox, temp_s0, temp_a5, temp_lo, temp_a7);
        }
    } else {
        mgrasCopyBigRect(pSrc, pGC, pBox, temp_s0, temp_a5, temp_lo, temp_a7);
    }
}

void mgrasCopyRect24(void *pSrc, void *pDst, void *pGC, BoxRec *pBox) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    s32 sp4;
    s16 temp_a0;
    s16 temp_a7;
    s16 temp_v1;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a7_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_t1;
    s64 temp_a7_3;
    s64 temp_s3;
    s64 temp_v0;
    void *temp_a6;
    void *temp_gp;
    void *temp_s0;

    temp_a5 = pSrc->unk4 - pSrc->unk0;
    temp_t1 = pSrc->unk6 - pSrc->unk2;
    temp_lo = temp_a5 * temp_t1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x16FCD4;
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_a2 = temp_gp->unk-31A0;
    temp_a6 = *(M2C_ERROR(/* Read from unset register $a4 */)->unk10->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_a7 = temp_lo < 0x1001;
    if (temp_lo > 0) {
        if (temp_a7 != 0) {
            if ((temp_a6->unk50 == 0) || ((*(temp_s0->unk84 + (temp_gp->unk-30F8 * 4)))->unk14 != 8)) {
                temp_a6->unk54 = -1;
            } else {
                temp_a6->unk54 = 0xFFFFFF;
            }
            temp_a0 = pDst->unk0;
            sp10 = temp_a0;
            temp_v1 = pDst->unk2;
            temp_s3 = temp_a5 * 4;
            sp12 = temp_v1;
            sp16 = temp_v1 + temp_t1;
            sp14 = temp_a0 + temp_a5;
            if (temp_a5 >= 0x2A) {
                temp_lo_2 = (s32) (temp_a5 + 7) / 24;
                sp20 = (s64) temp_lo_2;
                temp_a7_2 = temp_lo_2 * 0x18;
                M2C_TRAP_IF(0x18 == 0);
                temp_a7_3 = temp_a5 - temp_a7_2;
                sp30 = temp_a7_3;
                temp_v0 = (s64) (((temp_a7_2 + temp_a0) - 7) << 0x30) >> 0x30;
                sp28 = temp_v0;
                sp14 = (s16) temp_v0;
                if (temp_a7_3 != -7) {
                    spC = 8;
                    sp4 = 0;
                    sp18 = (s64) temp_a2;
                    nfbUnrealizeCursor(&sp10, NULL, temp_a2, temp_s3, temp_s0, pBox, pGC, 2);
                    sp14 = sp30 + sp28 + 7;
                    sp10 = (s16) sp28;
                    spC = 8;
                    sp4 = 0;
                    nfbUnrealizeCursor(&sp10, pSrc, ((sp20 * 0x60) + sp18) - 0x1C, temp_s3, temp_s0, pBox, pGC, 2);
                } else {
                    spC = 8;
                    sp4 = 0;
                    nfbUnrealizeCursor(&sp10, pSrc, temp_a2, temp_s3, temp_s0, pBox, pGC, 2);
                }
            } else {
                spC = 8;
                sp4 = 0;
                nfbUnrealizeCursor(&sp10, pSrc, temp_a2, temp_s3, temp_s0, pBox, pGC, 2);
            }
            return;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        mgrasCopyBigRect(pSrc, pGC, pBox, temp_s0, temp_a5, (s32) temp_a6, temp_a7);
        return;
    }
    mgrasCopyBigRect(pSrc, pGC, pBox, temp_s0, temp_a5, (s32) temp_a6, temp_a7);
}

void mgrasCopyBigRect(void *arg0, s64 arg1, BoxRec *arg2, void *arg3, void *arg4) {
    s64 sp60;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s16 spE;
    s16 spC;
    s16 spA;
    s16 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    ? (*temp_s8_2)(s16 *, s32, ?, BoxRec *, void *, void *);
    s16 temp_a2;
    s16 temp_a7;
    s16 var_a4;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s5;
    s32 temp_t1;
    s32 var_a6;
    s32 var_s0;
    s32 var_s3;
    s64 temp_v0;
    s64 var_a5;
    void *temp_s8;

    sp10 = arg1;
    temp_s5 = arg0->unk6 - arg0->unk2;
    temp_s2 = arg0->unk4 - arg0->unk0;
    var_s0 = temp_s5;
    if ((temp_s5 != 0) && (temp_s2 != 0)) {
        temp_lo = temp_s2 * ((s32) arg4->unk3 >> 3);
        temp_a6 = (temp_lo * temp_s5) > 0x140000;
        if (temp_a6 != 0) {
            M2C_TRAP_IF(temp_lo == 0);
            var_s0 = 0x140000 / temp_lo;
        }
        temp_v0 = saved_reg_gp->unk-758C((temp_s2 * var_s0 * 4) + 0x100, 0x140000, temp_a6);
        if (temp_v0 != 0) {
            temp_s8 = **(arg4->unk84 + (saved_reg_gp->unk-30F8 * 4));
            temp_s8_2 = temp_s8->unk8;
            sp0 = sp10->unk0;
            sp4 = sp10->unk0 + temp_s2;
            sp8 = arg0->unk0;
            spC = arg0->unk4;
            temp_a2 = sp10->unk2;
            var_a6 = temp_a2 < arg0->unk2;
            temp_s2_2 = temp_v0 + 0x80;
            var_a4 = temp_a2;
            if (var_a6 != 0) {
                var_a4 = (s16) ((s64) (((temp_a2 + temp_s5) - var_s0) << 0x30) >> 0x30);
                sp2 = var_a4;
                sp60 = -1;
                var_a5 = (s64) ((arg0->unk6 - var_s0) << 0x30) >> 0x30;
            } else {
                sp2 = temp_a2;
                var_a6 = 1;
                sp60 = 1;
                var_a5 = (s64) arg0->unk2;
            }
            spA = (s16) var_a5;
            sp18 = (s64) temp_s8->unk14;
            var_s3 = 0;
            sp20 = temp_v0;
            do {
                saved_reg_gp->unk-3128 = 1;
                spE = var_s0 + var_a5;
                var_s3 += var_s0;
                temp_a7 = var_s0 + var_a4;
                sp6 = temp_a7;
                ((? (*)(void *, s32, ?, void *, s16, s64, s32, s16)) sp18)(sp, temp_s2_2, 0, arg4, var_a4, var_a5, var_a6, temp_a7);
                temp_t1 = saved_reg_gp->unk-3128;
                saved_reg_gp->unk-3128 = (s32) ((temp_t1 == 2) ? 3 : temp_t1);
                temp_s8_2(&sp8, temp_s2_2, 0, arg2, arg3, arg4);
                temp_a4 = temp_s5 - var_s3;
                temp_at = var_s0;
                var_s0 = (temp_a4 < var_s0) ? temp_a4 : var_s0;
                var_a6 = ((sp60 ^ 1) == 0) ? temp_at : -var_s0;
                var_a5 = (s64) ((spA + var_a6) << 0x30) >> 0x30;
                spA = (s16) var_a5;
                var_a4 = (s16) ((s64) ((sp2 + var_a6) << 0x30) >> 0x30);
                sp2 = var_a4;
            } while (var_s3 < temp_s5);
            saved_reg_gp->unk-3128 = 0;
            saved_reg_gp->unk-75A0(sp20);
            return;
        }
        saved_reg_gp->unk-74EC(&sub_5e500000 + 0x56B8);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xb0, 0xb4, 0x108, 0x10c], gap at: 0xc0. */
s64 mgrasInitiateBufferSwap(void **arg0, s32 arg1) {
    s64 spA8;
    s64 sp98;
    s32 sp90;
    s32 sp8C;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_6;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a3;
    s32 temp_a3_4;
    s32 temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a5_4;
    s32 temp_a5_7;
    s32 temp_a6_5;
    s32 temp_a7_4;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_t1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a2_4;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a6;
    s32 var_a7_2;
    s32 var_at;
    s32 var_at_2;
    s32 var_s4_2;
    s32 var_s5;
    s64 temp_v1_2;
    s64 temp_v1_4;
    s64 var_s4;
    u16 temp_a1_2;
    u16 temp_a3_2;
    u16 var_a0_2;
    u16 var_a0_5;
    u16 var_a2_2;
    u16 var_a2_3;
    u16 var_a5_2;
    u16 var_a6_3;
    u16 var_a7;
    u16 var_v0;
    void *temp_a0_5;
    void *temp_a1_5;
    void *temp_a3_3;
    void *temp_a3_5;
    void *temp_a4;
    void *temp_a4_3;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_6;
    void *temp_a6_7;
    void *temp_a6_8;
    void *temp_a6_9;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_a7_3;
    void *temp_at;
    void *temp_gp;
    void *temp_s1;
    void *temp_s2;
    void *temp_s3;
    void *temp_s8;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t0_4;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_3;
    void *var_a1_2;
    void *var_a1_3;
    void *var_a2;
    void *var_a4;
    void *var_a4_2;
    void *var_a4_3;
    void *var_a5;
    void *var_a6_2;
    void *var_s2;
    void *var_s2_2;
    void *var_s6;
    void *var_t1;
    void *var_t1_2;

    temp_at = (*arg0)->unk10;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x16E828;
    unkspC8 = (s64) temp_at;
    spA8 = 1;
    unkspC0 = 0;
    sp98 = (s64) *(temp_at->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (arg1 > 0) {
        unkspE8 = (s64) arg0;
        unkspD0 = (s64) ((arg1 * 4) + arg0);
loop_8:
        temp_s1 = *unkspE8;
        temp_at_2 = temp_s1->unk84;
        temp_s8 = *((rrmWindowPrivateIndex * 4) + temp_at_2);
        unkspE0 = 0;
        temp_s2 = (dbcWindowPrivateIndex * 4) + temp_at_2;
        if (temp_s8 != NULL) {
            if (temp_s8->unk4 & 8) {
                sp98->unk20(temp_s1, 8, 1);
            }
            temp_a1 = temp_s8->unk24;
            temp_a0 = temp_s8->unk20;
            if (temp_s2->unk2 != 1) {
                temp_s8->unk20 = (s32) (temp_a0 | 4);
                temp_s8->unk24 = (s32) (0x40000000 | temp_a1);
            } else {
                temp_s8->unk20 = (s32) (-5 & temp_a0);
                temp_s8->unk24 = (s32) (0xBFFFFFFF & temp_a1);
            }
            if (((u32) (temp_s1->unk7C & 0xFFF) >> 0xB) != 0) {
                var_a0 = rrmWindowPrivateIndex * 4;
                temp_t2 = *((rrmScreenPrivateIndex * 4) + temp_s1->unk10->unk1B4);
                temp_t0 = *(temp_s1->unk84 + var_a0);
                var_a5 = NULL;
                unkspD8 = (s64) *(unkspC8->unk1B4 + (temp_gp->unk-3140 * 4));
                temp_t1 = temp_t2->unk0 - 1;
                if (temp_t1 > 0) {
                    var_a1 = temp_t1;
                    var_a4 = (temp_t1 * 0x24) + temp_t2;
loop_19:
                    var_a7 = var_a4->unkA8;
                    var_at = var_a7 & 1;
                    if (var_a7 & 0x10) {
                        var_a3 = temp_t0->unk14;
                        var_a2 = (var_a3 * 0x24) + temp_t2;
                        var_at = var_a7 & 1;
                        if (var_a2 != var_a4) {
                            var_at = var_a7 & 1;
                            if ((*(var_a4->unk98->unk84 + var_a0))->unk24 == temp_t0->unk24) {
                                var_a6 = temp_t2->unk98;
                                if (var_a6 != 0) {
                                    do {
                                        temp_v1 = *(var_a0 + var_a6->unk84);
                                        var_a6 = temp_v1->unk30;
                                        var_a5 = (void *) ((temp_v1->unk4 & 8) ? var_a1 : (s32) var_a5);
                                    } while (var_a6 != 0);
                                }
                                var_at = var_a7 & 1;
                                if (var_a5 != NULL) {
                                    goto block_17;
                                }
                                if (temp_t0->unk14 >= 0) {
                                    var_a4 = temp_t0;
                                    temp_a5 = (temp_t0->unk14 * 0x24) + temp_t2;
                                    var_a5 = temp_a5 + 0x98;
                                    if (temp_t0->unk0 & 8) {
                                        temp_a7 = var_a4->unk2C;
                                        temp_a6 = var_a4->unk30;
                                        if (temp_a7 != NULL) {
                                            (*(temp_a7->unk84 + var_a0))->unk30 = temp_a6;
                                        } else {
                                            temp_a5->unk98 = temp_a6;
                                        }
                                        temp_a6_2 = var_a4->unk30;
                                        temp_a7_2 = var_a4->unk2C;
                                        if (temp_a6_2 != NULL) {
                                            (*(temp_a6_2->unk84 + var_a0))->unk2C = temp_a7_2;
                                            var_a4->unk30 = NULL;
                                        } else {
                                            var_a5->unk4 = (s32) temp_a7_2;
                                        }
                                        var_a4->unk2C = NULL;
                                        var_a7 = (u16) temp_a5->unk98;
                                        temp_at_3 = var_a5->unk10 & 0x31 & 0xFFFF;
                                        var_a5->unk14 = (s32) (var_a5->unk14 - 1);
                                        temp_a0_2 = !(temp_at_3 & 1) ? temp_at_3 : (temp_at_3 | 6);
                                        if (var_a7 != 0) {
                                            var_a6 = ((var_a5->unk4 ^ var_a7) == 0) ? (temp_a0_2 | 2) : (temp_a0_2 | 6);
                                        } else {
                                            var_a6 = -0x11 & temp_a0_2;
                                        }
                                        var_a5->unk10 = (u16) var_a6;
                                        var_a3 = -9;
                                        var_a2 = (void *) (var_a4->unk0 & ~8);
                                        var_a4->unk0 = (u16) var_a2;
                                    }
                                    var_a4->unk14 = -1;
                                }
                                temp_gp->unk-7D64(temp_s1, var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
                                goto block_53;
                            }
                        }
                    }
block_17:
                    var_a1 -= 1;
                    var_a4 -= 0x24;
                    if ((var_at == 0) && (var_a4 != temp_t2)) {
                        goto loop_19;
                    }
                    goto block_26;
                }
block_26:
                if ((var_a5 != NULL) && (temp_t1 > 0)) {
                    var_s4_2 = temp_t1;
                    var_s6 = (temp_t1 * 0x24) + temp_t2;
loop_35:
                    temp_a1_2 = var_s6->unkA8;
                    var_at_2 = temp_a1_2 & 1;
                    if ((temp_a1_2 & 0x10) && (var_at_2 = temp_a1_2 & 1, (temp_t0->unk14 != var_s4_2))) {
                        var_s5 = temp_t2->unk98;
                        if (var_s5 != 0) {
loop_43:
                            var_a1_2 = *(var_a0 + var_s5->unk84);
                            if (var_a1_2->unk4 & 8) {
                                var_s2 = var_s6->unk98;
                                if (var_s2 != NULL) {
                                    do {
                                        temp_t2->unk20(var_s2, 0, 1);
                                        var_a0 = rrmWindowPrivateIndex * 4;
                                        var_s2 = (*(var_s2->unk84 + var_a0))->unk30;
                                    } while (var_s2 != NULL);
                                    var_a1_2 = *(var_a0 + var_s5->unk84);
                                }
                            }
                            var_s5 = var_a1_2->unk30;
                            if (var_s5 != 0) {
                                goto loop_43;
                            }
                        }
                        var_a2_2 = temp_t0->unk2;
                        var_a4_2 = temp_t2->unk14;
                        temp_a1_3 = temp_t2->unk10;
                        if (var_a2_2 != var_s6->unkAA) {
                            var_a1_3 = NULL;
                        } else {
                            if (((temp_t0->unk20 & temp_a1_3) == (var_s6->unkA0 & temp_a1_3)) && (var_a2_2 = var_s6->unkA4 & (s32) var_a4_2, var_a4_2 = (void *)1, ((temp_t0->unk24 & (s32) var_a4_2) == var_a2_2))) {

                            } else {
                                var_a4_2 = NULL;
                            }
                            var_a1_3 = var_a4_2;
                        }
                        if (var_a1_3 == NULL) {
                            var_at_2 = var_s6->unkA8 & 1;
                            goto block_33;
                        }
                        temp_t0_2 = *(temp_s1->unk84 + var_a0);
                        var_a3_2 = temp_t0_2->unk14;
                        if (var_a3_2 >= 0) {
                            var_a2_2 = (u16) temp_t0_2->unk14;
                            temp_a4 = *(temp_s1->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (var_a2_2 * 0x24);
                            var_a4_2 = temp_a4 + 0x98;
                            if (temp_t0_2->unk0 & 8) {
                                temp_a6_3 = temp_t0_2->unk2C;
                                temp_a5_2 = temp_t0_2->unk30;
                                if (temp_a6_3 != NULL) {
                                    (*(temp_a6_3->unk84 + var_a0))->unk30 = temp_a5_2;
                                } else {
                                    temp_a4->unk98 = (s32) temp_a5_2;
                                }
                                temp_a5_3 = temp_t0_2->unk30;
                                temp_a6_4 = temp_t0_2->unk2C;
                                if (temp_a5_3 != NULL) {
                                    (*(temp_a5_3->unk84 + var_a0))->unk2C = temp_a6_4;
                                    temp_t0_2->unk30 = NULL;
                                } else {
                                    var_a4_2->unk4 = (s32) temp_a6_4;
                                }
                                temp_t0_2->unk2C = NULL;
                                temp_a6_5 = temp_a4->unk98;
                                temp_a3 = var_a4_2->unk10 & 0x31 & 0xFFFF;
                                var_a4_2->unk14 = (s32) (var_a4_2->unk14 - 1);
                                temp_a5_4 = !(temp_a3 & 1) ? temp_a3 : (temp_a3 | 6);
                                if (temp_a6_5 != 0) {
                                    var_a0_2 = ((var_a4_2->unk4 ^ temp_a6_5) == 0) ? (temp_a5_4 | 2) : (temp_a5_4 | 6);
                                } else {
                                    var_a0_2 = -0x11 & temp_a5_4;
                                }
                                var_a4_2->unk10 = var_a0_2;
                                var_a2_2 = -9U;
                                temp_t0_2->unk0 = (u16) (temp_t0_2->unk0 & ~8);
                            }
                            var_a3_2 = -1;
                            temp_t0_2->unk14 = -1;
                        }
                        ((? (*)(void *, s32, u16, s32, void *)) temp_gp->unk-7D64)(temp_s1, var_s4_2, var_a2_2, var_a3_2, var_a4_2);
                        var_a0_3 = 1;
                    } else {
block_33:
                        var_s4_2 -= 1;
                        var_s6 -= 0x24;
                        if ((var_at_2 == 0) && (var_s6 != temp_t2)) {
                            goto loop_35;
                        }
                        goto block_51;
                    }
                } else {
block_51:
                    var_a0_3 = 0;
                }
                if (var_a0_3 != 0) {
block_53:
                    temp_gp->unk-74FC(temp_s1->unk4);
                    unkspE0 = 1;
                } else {
                    temp_a0_3 = rrmWindowPrivateIndex * 4;
                    temp_t0_3 = *(temp_s1->unk84 + temp_a0_3);
                    var_a7_2 = rrmScreenPrivateIndex * 4;
                    var_a5_2 = temp_t0_3->unk2;
                    temp_t2_2 = *(var_a7_2 + temp_s1->unk10->unk1B4);
                    var_a6_2 = temp_t2_2;
                    if (var_a5_2 != 1) {
                        goto block_55;
                    }
                    if (var_a6_2->unkC & 1) {
                        var_a0_4 = 1;
                        temp_t0_3->unk14 = (s32) var_a6_2->unk0;
                        goto block_4;
                    }
block_55:
                    temp_a4_2 = temp_t0_3->unk14;
                    if ((temp_a4_2 < 0) || (((temp_a4_2 * 0x24) + var_a6_2)->unkA8 & 4)) {
                        var_a4_3 = var_a6_2->unk0;
                        var_a1_4 = 0;
                        if (var_a4_3 != NULL) {
                            var_t1 = var_a6_2;
loop_60:
                            if ((var_t1->unkAA == var_a5_2) && (var_a2_3 = var_t1->unkA8 & 1, (var_a2_3 == 0)) && (var_a3_3 = var_t1->unkAC, (var_a3_3 == 0))) {
                                if (temp_t0_3->unk14 >= 0) {
                                    var_a4_3 = temp_t0_3;
                                    var_a5_2 = (u16) ((temp_t0_3->unk14 * 0x24) + temp_t2_2 + 0x98);
                                    if (temp_t0_3->unk0 & 8) {
                                        temp_a7_3 = var_a4_3->unk2C;
                                        temp_a6_6 = var_a4_3->unk30;
                                        if (temp_a7_3 != NULL) {
                                            (*(temp_a7_3->unk84 + temp_a0_3))->unk30 = temp_a6_6;
                                        } else {
                                            var_a5_2->unk0 = temp_a6_6;
                                        }
                                        temp_a6_7 = var_a4_3->unk30;
                                        var_a7_2 = (s32) var_a4_3->unk2C;
                                        if (temp_a6_7 != NULL) {
                                            (*(temp_a6_7->unk84 + temp_a0_3))->unk2C = var_a7_2;
                                            var_a4_3->unk30 = NULL;
                                        } else {
                                            var_a5_2->unk4 = var_a7_2;
                                        }
                                        var_a4_3->unk2C = NULL;
                                        var_a6_2 = var_a5_2->unk0;
                                        temp_at_4 = var_a5_2->unk10 & 0x31 & 0xFFFF;
                                        var_a5_2->unk14 = (s32) (var_a5_2->unk14 - 1);
                                        temp_a0_4 = !(temp_at_4 & 1) ? temp_at_4 : (temp_at_4 | 6);
                                        if (var_a6_2 != NULL) {
                                            var_v0 = ((var_a5_2->unk4 ^ (s32) var_a6_2) == 0) ? (temp_a0_4 | 2) : (temp_a0_4 | 6);
                                        } else {
                                            var_v0 = -0x11 & temp_a0_4;
                                        }
                                        var_a5_2->unk10 = var_v0;
                                        var_a3_3 = -9;
                                        var_a2_3 = var_a4_3->unk0 & ~8;
                                        var_a4_3->unk0 = var_a2_3;
                                    }
                                    var_a4_3->unk14 = -1;
                                }
                                ((? (*)(void *, s32, u16, s32, void *, u16, void *, s32)) temp_gp->unk-7D64)(temp_s1, var_a1_4, var_a2_3, var_a3_3, var_a4_3, var_a5_2, var_a6_2, var_a7_2);
                                var_a0_4 = 1;
                            } else {
                                var_a1_4 += 1;
                                var_t1 += 0x24;
                                if (var_a1_4 != var_a4_3) {
                                    goto loop_60;
                                }
                                goto block_75;
                            }
                        } else {
block_75:
                            if ((var_a6_2->unk30 != 0) && (var_a1_5 = 0, (var_a4_3 != NULL))) {
                                var_t1_2 = var_a6_2;
loop_81:
                                if ((var_t1_2->unkAA == var_a5_2) && (var_a6_3 = var_t1_2->unkA8, ((var_a6_3 & 1) != 0)) && !(var_a6_3 & 0x20) && !(var_a6_3 & 2) && (var_a2_4 = var_t1_2->unkAC, (var_a2_4 == 0))) {
                                    var_t1_2->unkA8 = 0U;
                                    temp_t0_4 = *(temp_s1->unk84 + temp_a0_3);
                                    var_a3_4 = temp_t0_4->unk14;
                                    if (var_a3_4 >= 0) {
                                        var_a2_4 = temp_t0_4->unk14;
                                        temp_a4_3 = *(temp_s1->unk10->unk1B4 + var_a7_2) + (var_a2_4 * 0x24);
                                        var_a4_3 = temp_a4_3 + 0x98;
                                        if (temp_t0_4->unk0 & 8) {
                                            temp_a6_8 = temp_t0_4->unk2C;
                                            temp_a5_5 = temp_t0_4->unk30;
                                            if (temp_a6_8 != NULL) {
                                                (*(temp_a6_8->unk84 + temp_a0_3))->unk30 = temp_a5_5;
                                            } else {
                                                temp_a4_3->unk98 = temp_a5_5;
                                            }
                                            temp_a5_6 = temp_t0_4->unk30;
                                            temp_a6_9 = temp_t0_4->unk2C;
                                            if (temp_a5_6 != NULL) {
                                                (*(temp_a5_6->unk84 + temp_a0_3))->unk2C = temp_a6_9;
                                                temp_t0_4->unk30 = NULL;
                                            } else {
                                                var_a4_3->unk4 = (s32) temp_a6_9;
                                            }
                                            temp_t0_4->unk2C = NULL;
                                            var_a6_3 = (u16) temp_a4_3->unk98;
                                            temp_a3_2 = var_a4_3->unk10 & 0x31 & 0xFFFF;
                                            var_a4_3->unk14 = (s32) (var_a4_3->unk14 - 1);
                                            var_a5_2 = !(temp_a3_2 & 1) ? temp_a3_2 : (temp_a3_2 | 6);
                                            if (var_a6_3 != 0) {
                                                var_a0_5 = ((var_a4_3->unk4 ^ var_a6_3) == 0) ? (var_a5_2 | 2) : (var_a5_2 | 6);
                                            } else {
                                                var_a0_5 = -0x11 & var_a5_2;
                                            }
                                            var_a4_3->unk10 = var_a0_5;
                                            var_a2_4 = -9;
                                            temp_t0_4->unk0 = (u16) (temp_t0_4->unk0 & ~8);
                                        }
                                        var_a3_4 = -1;
                                        temp_t0_4->unk14 = -1;
                                    }
                                    ((? (*)(void *, s32, s32, s32, void *, u16, u16, s32)) temp_gp->unk-7D64)(temp_s1, var_a1_5, var_a2_4, var_a3_4, var_a4_3, var_a5_2, var_a6_3, var_a7_2);
                                    var_a0_4 = 1;
                                } else {
                                    var_a1_5 += 1;
                                    var_t1_2 += 0x24;
                                    if (var_a1_5 != var_a4_3) {
                                        goto loop_81;
                                    }
                                    goto block_3;
                                }
                            } else {
block_3:
                                var_a0_4 = 0;
                            }
                        }
block_4:
                        if (var_a0_4 == 0) {
                            temp_gp->unk-7D5C(temp_s1);
                        }
                    }
                    (unkspD8->unk3C + (temp_s8->unk14 * 0xC))->unk8 = (s32) temp_s8->unk24;
                }
                if (unkspE0 == 0) {
                    temp_v1_2 = unkspB8 + 4;
                    unkspB8 = temp_v1_2;
                    temp_a0_5 = *(temp_s1->unk84 + (rrmWindowPrivateIndex * 4));
                    temp_a1_4 = temp_a0_5->unk14;
                    unkspC0 += 1;
                    temp_v1_2->unk-4 = temp_s1;
                    temp_a7_4 = rrmScreenPrivateIndex * 4;
                    if (temp_a1_4 >= 0) {
                        temp_a3_3 = *(temp_s1->unk10->unk1B4 + temp_a7_4) + (temp_a1_4 * 0x24);
                        temp_a3_3->unkA0 = (s32) temp_a0_5->unk20;
                        temp_a3_3->unkA4 = (s32) temp_a0_5->unk24;
                    }
                    temp_v1_3 = (temp_s8->unk14 * 0x24) + *(unkspC8->unk1B4 + temp_a7_4);
                    temp_v1_3->unkA8 = (u16) (temp_v1_3->unkA8 | 0x10);
                }
            } else {
                temp_gp->unk-74FC(temp_s1->unk4, temp_a1);
            }
        } else {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x20B8);
        }
        temp_v1_4 = unkspE8 + 4;
        unkspE8 = temp_v1_4;
        if (temp_v1_4 != unkspD0) {
            goto loop_8;
        }
    }
    if (unkspC0 != 0) {
        var_s4 = spA8;
        if (unkspC0 > 0) {
            var_s2_2 = (unkspC0 * 4) + sp;
loop_140:
            temp_s3 = var_s2_2->unk-4;
            temp_a1_5 = *(temp_s3->unk84 + (rrmWindowPrivateIndex * 4));
            temp_a5_7 = temp_a1_5->unkC;
            sp80 = temp_a5_7;
            temp_a4_4 = temp_s3->unk4;
            sp88 = temp_a4_4;
            temp_a3_4 = temp_a1_5->unk14;
            sp84 = temp_a3_4;
            sp8C = temp_a1_5->unk24;
            sp90 = temp_a1_5->unk20;
            if (ioctl(temp_s3->unk10->unk74->unk64, 0x3FC, &sp80, temp_a3_4, temp_a4_4, temp_a5_7) != -1) {
                temp_v0 = *(temp_s3->unk84 + (rrmWindowPrivateIndex * 4));
                temp_a0_6 = temp_v0->unk14;
                if (temp_a0_6 >= 0) {
                    temp_a3_5 = *(temp_s3->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a0_6 * 0x24);
                    temp_a3_5->unkA0 = (s32) temp_v0->unk20;
                    temp_a3_5->unkA4 = (s32) temp_v0->unk24;
                }
                var_s4 = 0;
            } else {
                temp_gp->unk-74E0(&sub_5e4f0000 + 0x20F8);
                temp_gp->unk-74FC(temp_s3->unk4);
            }
            var_s2_2 -= 4;
            if (var_s2_2 != sp) {
                goto loop_140;
            }
        }
        return var_s4;
    }
    return 1;
}

/*
Decompilation failure in function mgrasValidateReducedGC:

Unable to determine jump table for jr instruction at mgras_window.s line 4643.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x68, 0x6c], gap at: 0x60. */
void mgrasValidateWindowGC(void *arg0, s32 arg1, s64 arg2) {
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0_13;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a1_10;
    s32 temp_a1_11;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_7;
    s32 temp_a3_3;
    s32 temp_a3_6;
    s32 temp_a3_8;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a4_5;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a6_2;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_at_10;
    s32 temp_at_11;
    s32 temp_at_15;
    s32 temp_at_16;
    s32 temp_at_2;
    s32 temp_at_4;
    s32 temp_at_6;
    s32 temp_ra;
    s32 temp_s0_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s4;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0_13;
    s32 temp_v0_15;
    s32 temp_v0_18;
    s32 temp_v0_19;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v1;
    s32 temp_v1_12;
    s32 temp_v1_13;
    s32 temp_v1_17;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_a1_10;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_9;
    s32 var_a2;
    s32 var_a3_2;
    s32 var_a3_5;
    s32 var_a4_3;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_at;
    s32 var_at_3;
    s32 var_ra_2;
    s32 var_s3_2;
    s32 var_s4_2;
    s32 var_s5_2;
    s32 var_t0;
    s32 var_t0_3;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t1_5;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8_2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s64 temp_a0_8;
    s64 temp_a5_3;
    s64 temp_at_7;
    s64 temp_at_8;
    s64 var_a2_6;
    s64 var_a5;
    s64 var_at_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_s1;
    s64 var_s2;
    s64 var_s3;
    s64 var_s4;
    s8 var_a2_7;
    s8 var_s2_2;
    u16 temp_a2_2;
    u16 temp_a2_4;
    u16 temp_a3_2;
    u16 temp_at_14;
    u16 temp_v0_12;
    u16 var_s6;
    u32 *temp_a4_2;
    u32 *temp_a4_4;
    u32 *var_a1;
    u32 *var_a1_5;
    u32 *var_a2_2;
    u32 *var_a2_3;
    u32 *var_a2_4;
    u32 *var_a3;
    u32 *var_a3_3;
    u32 *var_a4;
    u32 *var_a4_2;
    u32 *var_a6;
    u32 *var_a6_3;
    u32 temp_a0_6;
    u32 temp_a0_7;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u32 temp_a1_6;
    u32 temp_a1_7;
    u32 temp_a2_10;
    u32 temp_a2_11;
    u32 temp_a2_12;
    u32 temp_a2_6;
    u32 temp_a2_9;
    u32 temp_a3_4;
    u32 temp_a5_4;
    u32 temp_at;
    u32 temp_at_3;
    u32 temp_at_9;
    u32 temp_s0;
    u32 temp_t2;
    u32 temp_t3;
    u32 temp_t8;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_20;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v0_9;
    u32 temp_v1_10;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;
    u32 var_a3_6;
    u32 var_a5_2;
    u32 var_a7_2;
    u32 var_s3_3;
    u32 var_t0_2;
    u32 var_t1_3;
    u32 var_t8;
    u32 var_t8_3;
    u32 var_t9_2;
    u32 var_v0_2;
    u8 *var_a1_8;
    u8 *var_a2_8;
    u8 *var_a2_9;
    u8 *var_a3_4;
    u8 temp_a0;
    u8 temp_a0_10;
    u8 temp_a0_11;
    u8 temp_a0_12;
    u8 temp_a0_9;
    u8 temp_a3_5;
    u8 temp_a5_5;
    u8 temp_a6_6;
    u8 temp_at_12;
    u8 temp_at_13;
    u8 temp_at_5;
    u8 temp_t0_3;
    u8 temp_t1_3;
    u8 temp_t9_3;
    u8 temp_v0_14;
    u8 temp_v0_16;
    u8 temp_v0_17;
    u8 temp_v1_11;
    u8 temp_v1_14;
    u8 temp_v1_15;
    u8 temp_v1_16;
    u8 var_a0;
    u8 var_a1_6;
    u8 var_a1_7;
    u8 var_a2_5;
    u8 var_a3_7;
    u8 var_a4_4;
    u8 var_a4_5;
    u8 var_a4_6;
    u8 var_a5_3;
    u8 var_a5_4;
    u8 var_a5_5;
    u8 var_a6_4;
    u8 var_a6_5;
    u8 var_a7_4;
    u8 var_a7_5;
    u8 var_ra_3;
    u8 var_ra_4;
    u8 var_s0_2;
    u8 var_s0_3;
    u8 var_s1_2;
    u8 var_s8;
    u8 var_s8_2;
    u8 var_t1_4;
    u8 var_t2_2;
    u8 var_t2_3;
    u8 var_t3_2;
    u8 var_t3_3;
    u8 var_t8_5;
    u8 var_t9_3;
    u8 var_v1_4;
    void *temp_a0_2;
    void *temp_a2_5;
    void *temp_a2_8;
    void *temp_a3;
    void *temp_a3_10;
    void *temp_a3_7;
    void *temp_a3_9;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_a6_3;
    void *temp_a6_5;
    void *temp_a7_2;
    void *temp_gp;
    void *temp_v0_2;
    void *var_a2_10;
    void *var_a7_3;
    void *var_s5;
    void *var_t8_4;
    void *var_t9_4;

    var_s0 = saved_reg_s0;
    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_ra = saved_reg_ra;
    sp10 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1599B0;
    temp_a4 = arg0->unk4C;
    temp_a5 = *(temp_a4 + (temp_gp->unk-30F4 * 4));
    var_s4 = arg2;
    sp8 = 0;
    var_s5 = temp_a5;
    if (arg1 & 0x10F) {
        mgrasValidateReducedGC(arg0, var_s4, temp_a4, temp_a5);
        goto block_2;
    }
    var_at = arg1 & 0x800;
    if ((*((temp_gp->unk-313C * 4) + temp_a4))->unk8 != (*(var_s4->unk84 + (temp_gp->unk-30F8 * 4)))->unk14) {
        temp_a3 = arg0->unk18;
        temp_a5->unk28 = temp_a3;
        temp_a5->unk40 = temp_a3;
        temp_a2 = arg0->unk1C;
        temp_a5->unk2C = temp_a2;
        temp_a5->unk44 = temp_a2;
        temp_a1 = arg0->unk14;
        temp_a5->unk34 = temp_a1;
        temp_a5->unk4C = temp_a1;
        temp_a0 = arg0->unk5;
        temp_a5->unk30 = temp_a0;
        temp_a5->unk48 = temp_a0;
        temp_a5->unk3C = 0;
        temp_a5->unk54 = 0;
        temp_v0 = (u32) (arg0->unk10 & 0x03FFFFFF) >> 0x18;
        temp_a5->unk38 = temp_v0;
        temp_a5->unk50 = temp_v0;
        mgrasValidateReducedGC(arg0, var_s4, temp_a2, temp_a3, temp_a4, temp_a5);
block_2:
        var_ra = spC0;
        var_at = arg1 & 0x800;
    }
    if (var_at != 0) {
        temp_a5_2 = arg0->unk24;
        if (temp_a5_2 != NULL) {
            if ((s32) temp_a5_2->unkC >= 0x20) {
                goto block_6;
            }
            temp_a2_2 = temp_a5_2->unkE;
            temp_a0_2 = temp_a5_2->unk10;
            spC0 = var_ra;
            temp_s2 = temp_a5_2->unk1C * temp_a2_2;
            temp_v0_2 = temp_a0_2->unkEC(temp_a0_2, temp_a5_2->unkC, temp_a2_2, temp_a5_2->unk2);
            if (temp_v0_2 == NULL) {
                sp18 = 0;
                var_s0 = spA0;
                var_s2 = spA8;
                var_s1 = spB0;
            } else {
                temp_gp->unk-74E4(temp_v0_2->unk20, temp_a5_2->unk20, temp_s2);
                sp18 = (s64) temp_v0_2;
                var_s0 = spA0;
                var_s2 = spA8;
                var_s1 = spB0;
                var_ra = spC0;
            }
            var_v1 = arg1 & 0x100;
            if (sp18 != 0) {
                temp_a3_2 = sp18->unkE;
                temp_a4_2 = sp18->unk20;
                var_s6 = sp18->unkC;
                if ((s32) temp_a3_2 > 0) {
                    var_a1 = temp_a4_2;
                    temp_t1 = (temp_a3_2 * 4) + temp_a4_2;
                    var_a2 = temp_a3_2 & 7;
                    temp_a5_3 = ((1 << var_s6) - 1) << (0x20 - var_s6);
                    if (var_a2 != 0) {
                        do {
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a1) */);
                            temp_at = *var_a1;
                            var_a2 -= 1;
                            var_a1 += 4;
                            var_a1->unk-4 = (s32) (temp_at & temp_a5_3);
                        } while (var_a2 != 0);
                    }
                    temp_t0 = (s32) temp_a3_2 >> 3;
                    var_a2_2 = var_a1;
                    if (temp_t0 != 0) {
                        var_a6 = var_a2_2;
                        if (temp_t0 >= 3) {
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a2) */);
                            spD8 = (s64) var_s6;
                            sp0 = temp_a5_3;
                            var_t8 = var_a2_2->unk0;
                            var_ra_2 = var_a2_2->unk4;
                            var_t9 = var_a2_2->unk14;
                            spD0 = var_s4;
                            temp_a7 = temp_t1 - 0x40;
                            spC8 = (s64) var_s5;
                            var_a3 = var_a2_2 + 0x20;
                            var_s5_2 = var_a3->unk14;
                            var_a4 = var_a3 + 0x20;
                            var_v0 = var_a2_2->unk8 & temp_a5_3;
                            var_t3 = var_a3->unk18;
                            var_v1_2 = var_a2_2->unk10 & temp_a5_3;
                            var_a1_2 = var_a2_2->unk18 & temp_a5_3;
                            var_s4_2 = var_a3->unk1C;
                            var_s3_2 = var_a2_2->unk1C & temp_a5_3;
                            var_t1 = var_a2_2->unkC;
loop_88:
                            var_a2_2->unk8 = var_v0;
                            var_a2_2->unk10 = var_v1_2;
                            var_t0 = var_a3->unkC;
                            temp_a0_3 = var_a3->unk4;
                            temp_s0 = var_a3->unk0;
                            var_a2_2->unk18 = var_a1_2;
                            var_a2_2->unk1C = var_s3_2;
                            temp_s2_2 = var_a4->unk1C;
                            temp_s1 = var_a4->unk18;
                            temp_s3 = var_s4_2 & temp_a5_3;
                            temp_a6 = var_a4 + 0x20;
                            temp_a1_2 = var_a4->unk14;
                            var_a2_2->unk14 = (s32) (var_t9 & temp_a5_3);
                            temp_t9 = var_t3 & temp_a5_3;
                            var_a2_2->unkC = (s32) (var_t1 & temp_a5_3);
                            temp_v1 = var_a3->unk10 & temp_a5_3;
                            var_a2_2->unk4 = (s32) (var_ra_2 & temp_a5_3);
                            temp_v0_3 = var_a3->unk8 & temp_a5_3;
                            var_a2_2->unk0 = var_t8 & temp_a5_3;
                            if (var_a3 != temp_a7) {
                                var_a3->unk8 = temp_v0_3;
                                var_a3->unk10 = temp_v1;
                                temp_t1_2 = var_a4->unkC;
                                temp_ra = var_a4->unk4;
                                temp_t8 = var_a4->unk0;
                                var_a3->unk18 = temp_t9;
                                var_a3->unk1C = temp_s3;
                                temp_s4 = temp_a6->unk1C;
                                var_t3 = temp_a6->unk18;
                                temp_s3_2 = temp_s2_2 & temp_a5_3;
                                var_a2_2 = temp_a6 + 0x20;
                                var_t2 = temp_a6->unk14;
                                var_a3->unk14 = (s32) (var_s5_2 & temp_a5_3);
                                temp_t9_2 = temp_s1 & temp_a5_3;
                                var_a3->unkC = (s32) (var_t0 & temp_a5_3);
                                temp_v1_2 = var_a4->unk10 & temp_a5_3;
                                var_a3->unk4 = (s32) (temp_a0_3 & temp_a5_3);
                                temp_v0_4 = var_a4->unk8 & temp_a5_3;
                                var_a3->unk0 = temp_s0 & temp_a5_3;
                                if (var_a4 != temp_a7) {
                                    var_a4->unk8 = temp_v0_4;
                                    var_a4->unk10 = temp_v1_2;
                                    var_t0 = temp_a6->unkC;
                                    temp_a0_4 = temp_a6->unk4;
                                    temp_s0_2 = var_a4->unk20;
                                    var_a4->unk18 = temp_t9_2;
                                    var_a4->unk1C = temp_s3_2;
                                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a2) */);
                                    temp_s2_3 = var_a2_2->unk1C;
                                    temp_s1_2 = var_a2_2->unk18;
                                    temp_s3_3 = temp_s4 & temp_a5_3;
                                    var_a3 = var_a2_2 + 0x20;
                                    var_t9 = var_a2_2->unk14;
                                    var_a4->unk14 = (s32) (temp_a1_2 & temp_a5_3);
                                    temp_a1_3 = var_t3 & temp_a5_3;
                                    var_a4->unkC = (s32) (temp_t1_2 & temp_a5_3);
                                    temp_v1_3 = temp_a6->unk10 & temp_a5_3;
                                    var_a4->unk4 = (s32) (temp_ra & temp_a5_3);
                                    temp_v0_5 = temp_a6->unk8 & temp_a5_3;
                                    var_a4->unk0 = temp_t8 & temp_a5_3;
                                    if (temp_a6 != temp_a7) {
                                        temp_a6->unk8 = temp_v0_5;
                                        temp_a6->unk10 = temp_v1_3;
                                        var_t1 = var_a2_2->unkC;
                                        var_ra_2 = var_a2_2->unk4;
                                        var_t8 = temp_a6->unk20;
                                        temp_a6->unk18 = temp_a1_3;
                                        temp_a6->unk1C = temp_s3_3;
                                        var_s4_2 = var_a3->unk1C;
                                        var_t3 = var_a3->unk18;
                                        var_s3_2 = temp_s2_3 & temp_a5_3;
                                        var_a4 = var_a3 + 0x20;
                                        var_s5_2 = var_a3->unk14;
                                        temp_a6->unk14 = (s32) (var_t2 & temp_a5_3);
                                        var_a1_2 = temp_s1_2 & temp_a5_3;
                                        temp_a6->unkC = (s32) (var_t0 & temp_a5_3);
                                        var_v1_2 = var_a2_2->unk10 & temp_a5_3;
                                        temp_a6->unk4 = (s32) (temp_a0_4 & temp_a5_3);
                                        var_v0 = var_a2_2->unk8 & temp_a5_3;
                                        var_a4->unk20 = (s32) (temp_s0_2 & temp_a5_3);
                                        if (var_a2_2 == temp_a7) {
                                            var_a3_2 = var_s3_2;
                                            var_s3 = spB8;
                                            var_s5 = (void *) spC8;
                                            var_a6_2 = var_s4_2;
                                            var_s4 = spD0;
                                            var_s6 = (u16) spD8;
                                            var_a7 = var_v1_2;
                                            sp80 = (s64) var_t8;
                                            var_t0 = var_t1;
                                            var_t1_2 = var_v0;
                                            unksp60 = (s64) var_a2_2;
                                            var_a1_3 = var_ra_2;
                                            var_ra = spC0;
                                            var_t2 = var_t9;
                                            var_t9 = var_s5_2;
                                            var_a5 = sp80;
                                            var_t8_2 = var_a1_2;
                                            var_a2_2 = var_a3;
                                            goto block_93;
                                        }
                                        goto loop_88;
                                    }
                                    sp80 = (s64) temp_s0_2;
                                    var_a5 = (s64) temp_s0_2;
                                    var_t3 = temp_s1_2;
                                    sp90 = (s64) temp_s3_3;
                                    var_a3_2 = temp_s3_3;
                                    var_s3 = spB8;
                                    var_ra = spC0;
                                    var_s5 = (void *) spC8;
                                    var_s4 = spD0;
                                    var_s6 = (u16) spD8;
                                    var_a7 = temp_v1_3;
                                    var_t1_2 = temp_v0_5;
                                    unksp60 = (s64) temp_a6;
                                    var_t8_2 = temp_a1_3;
                                    var_a6_2 = temp_s2_3;
                                    var_a1_3 = temp_a0_4;
block_93:
                                    var_a4 = (u32 *) unksp60;
                                } else {
                                    sp90 = (s64) temp_s3_2;
                                    var_a3_2 = temp_s3_2;
                                    var_s3 = spB8;
                                    var_t9 = var_t2;
                                    var_t2 = temp_a1_2;
                                    var_a1_3 = temp_ra;
                                    var_ra = spC0;
                                    var_s5 = (void *) spC8;
                                    var_a7 = temp_v1_2;
                                    var_s6 = (u16) spD8;
                                    var_t0 = temp_t1_2;
                                    var_t1_2 = temp_v0_4;
                                    unksp58 = (s64) temp_a6;
                                    var_a5 = (s64) temp_t8;
                                    var_a6_2 = temp_s4;
                                    var_s4 = spD0;
                                    var_t8_2 = temp_t9_2;
                                    var_a2_2 = (u32 *) unksp58;
                                }
                            } else {
                                sp80 = (s64) temp_s0;
                                var_a5 = (s64) temp_s0;
                                sp88 = (s64) temp_s2_2;
                                var_a6_2 = temp_s2_2;
                                var_t3 = temp_s1;
                                var_ra = spC0;
                                var_t2 = var_s5_2;
                                var_s5 = (void *) spC8;
                                var_s4 = spD0;
                                var_a7 = temp_v1;
                                var_t1_2 = temp_v0_3;
                                var_s6 = (u16) spD8;
                                var_t8_2 = temp_t9;
                                var_t9 = temp_a1_2;
                                unksp58 = (s64) var_a4;
                                var_a4 = var_a3;
                                var_a3_2 = temp_s3;
                                var_s3 = spB8;
                                var_a1_3 = temp_a0_3;
                                var_a2_2 = (u32 *) unksp58;
                            }
                            spF0 = spA8;
                            var_a4->unk10 = var_a7;
                            var_a4->unk8 = var_t1_2;
                            spE0 = spA0;
                            var_a4->unk1C = var_a3_2;
                            spE8 = spB0;
                            var_a4->unk18 = var_t8_2;
                            var_a4->unk14 = (s32) (var_t2 & sp0);
                            var_a4->unkC = (s32) (var_t0 & sp0);
                            var_a4->unk4 = (s32) (var_a1_3 & sp0);
                            var_a4->unk0 = var_a5 & sp0;
                            var_a2_2->unk18 = (s32) (var_t3 & sp0);
                            var_a2_2->unk1C = (s32) (var_a6_2 & sp0);
                            var_a2_2->unk14 = (s32) (var_t9 & sp0);
                            var_a2_2->unk8 = (s32) (var_a2_2->unk8 & sp0);
                            var_a2_2->unk10 = (s32) (var_a2_2->unk10 & sp0);
                            var_a2_2->unkC = (s32) (var_a2_2->unkC & sp0);
                            var_a2_2->unk0 &= sp0;
                            var_s0 = spA0;
                            var_s1 = spB0;
                            var_a2_2->unk4 = (s32) (var_a2_2->unk4 & sp0);
                            var_s2 = spA8;
                        } else {
                            do {
                                temp_a0_5 = var_a6->unk1C;
                                temp_v1_4 = var_a6->unk18;
                                temp_v0_6 = var_a6->unk14;
                                temp_at_2 = var_a6->unk10;
                                temp_a4_3 = var_a6->unkC;
                                temp_a3_3 = var_a6->unk8;
                                temp_a2_3 = var_a6->unk4;
                                temp_a1_4 = var_a6->unk0;
                                var_a6 += 0x20;
                                var_a6->unk-4 = (s32) (temp_a0_5 & temp_a5_3);
                                var_a6->unk-8 = (s32) (temp_v1_4 & temp_a5_3);
                                var_a6->unk-C = (s32) (temp_v0_6 & temp_a5_3);
                                var_a6->unk-10 = (s32) (temp_at_2 & temp_a5_3);
                                var_a6->unk-14 = (s32) (temp_a4_3 & temp_a5_3);
                                var_a6->unk-18 = (s32) (temp_a3_3 & temp_a5_3);
                                var_a6->unk-1C = (s32) (temp_a2_3 & temp_a5_3);
                                var_a6->unk-20 = (s32) (temp_a1_4 & temp_a5_3);
                            } while (var_a6 != temp_t1);
                        }
                    }
                }
                if ((s32) var_s6 < 0x11) {
loop_112:
                    temp_a2_4 = sp18->unkE;
                    temp_a4_4 = sp18->unk20;
                    if ((s32) temp_a2_4 > 0) {
                        var_a1_4 = temp_a2_4 & 3;
                        temp_a6_2 = (s32) temp_a2_4 >> 2;
                        var_a3_3 = temp_a4_4;
                        temp_a7_2 = temp_a4_4 + (temp_a2_4 * 4);
                        if (var_a1_4 != 0) {
                            do {
                                temp_v0_7 = *var_a3_3;
                                var_a1_4 -= 1;
                                var_a3_3 += 4;
                                var_a3_3->unk-4 = (s32) ((temp_v0_7 >> var_s6) | temp_v0_7);
                            } while (var_a1_4 != 0);
                        }
                        var_a1_5 = var_a3_3;
                        if (temp_a6_2 != 0) {
                            temp_a6_3 = temp_a7_2 - 0x20;
                            if (temp_a6_2 >= 3) {
                                var_t9_2 = var_a1_5->unk4;
                                temp_v1_5 = var_a1_5->unkC;
                                var_t1_3 = var_a1_5->unk8;
                                var_a2_3 = var_a1_5 + 0x10;
                                var_t0_2 = var_a1_5->unk10;
                                var_a7_2 = var_a1_5->unk0;
                                var_v0_2 = (temp_v1_5 >> var_s6) | temp_v1_5;
loop_118:
                                var_a1_5->unkC = var_v0_2;
                                temp_v1_6 = var_a2_3->unkC;
                                var_t8_3 = var_a2_3->unk8;
                                var_a4_2 = var_a2_3 + 0x10;
                                temp_t2 = var_a2_3->unk4;
                                temp_v0_8 = (temp_v1_6 >> var_s6) | temp_v1_6;
                                temp_a5_4 = var_a2_3->unk10;
                                var_a1_5->unk8 = (s32) ((var_t1_3 >> var_s6) | var_t1_3);
                                var_a1_5->unk4 = (s32) ((var_t9_2 >> var_s6) | var_t9_2);
                                var_a1_5->unk0 = (var_a7_2 >> var_s6) | var_a7_2;
                                if (var_a2_3 != temp_a6_3) {
                                    var_a2_3->unkC = temp_v0_8;
                                    temp_v1_7 = var_a4_2->unkC;
                                    temp_a0_6 = var_a4_2->unk8;
                                    var_a1_5 = var_a4_2 + 0x10;
                                    temp_t3 = var_a4_2->unk4;
                                    temp_v0_9 = (temp_v1_7 >> var_s6) | temp_v1_7;
                                    var_a7_2 = var_a4_2->unk10;
                                    var_a2_3->unk8 = (u32) ((var_t8_3 >> var_s6) | var_t8_3);
                                    var_a2_3->unk4 = (u32) ((temp_t2 >> var_s6) | temp_t2);
                                    var_a2_3->unk0 = (var_t0_2 >> var_s6) | var_t0_2;
                                    if (var_a4_2 != temp_a6_3) {
                                        var_a4_2->unkC = temp_v0_9;
                                        temp_v1_8 = var_a1_5->unkC;
                                        var_t1_3 = var_a1_5->unk8;
                                        var_a2_3 = var_a1_5 + 0x10;
                                        var_t9_2 = var_a1_5->unk4;
                                        var_v0_2 = (temp_v1_8 >> var_s6) | temp_v1_8;
                                        var_t0_2 = var_a1_5->unk10;
                                        var_a4_2->unk8 = (u32) ((temp_a0_6 >> var_s6) | temp_a0_6);
                                        var_a4_2->unk4 = (u32) ((temp_t3 >> var_s6) | temp_t3);
                                        var_a2_3->unk10 = (u32) ((temp_a5_4 >> var_s6) | temp_a5_4);
                                        if (var_a1_5 == temp_a6_3) {
                                            var_a6_3 = var_a2_3;
                                            var_a4_2 = var_a1_5;
                                            var_a5_2 = var_v0_2;
                                            var_t8_3 = var_t1_3;
                                        } else {
                                            goto loop_118;
                                        }
                                    } else {
                                        var_a6_3 = var_a1_5;
                                        var_t8_3 = temp_a0_6;
                                        var_t9_2 = temp_t3;
                                        var_t0_2 = var_a7_2;
                                        var_a7_2 = temp_a5_4;
                                        var_a5_2 = temp_v0_9;
                                    }
                                } else {
                                    var_t9_2 = temp_t2;
                                    var_a6_3 = var_a4_2;
                                    var_a7_2 = var_t0_2;
                                    var_t0_2 = temp_a5_4;
                                    var_a5_2 = temp_v0_8;
                                    var_a4_2 = var_a2_3;
                                }
                                var_a4_2->unkC = var_a5_2;
                                temp_v0_10 = var_a6_3->unk4;
                                temp_a1_5 = var_a6_3->unk8;
                                temp_v1_9 = var_a6_3->unkC;
                                var_a4_2->unk8 = (s32) ((var_t8_3 >> var_s6) | var_t8_3);
                                var_a4_2->unk4 = (s32) ((var_t9_2 >> var_s6) | var_t9_2);
                                var_a4_2->unk0 = (var_a7_2 >> var_s6) | var_a7_2;
                                var_a6_3->unk0 = (var_t0_2 >> var_s6) | var_t0_2;
                                var_a6_3->unk4 = (u32) ((temp_v0_10 >> var_s6) | temp_v0_10);
                                var_a6_3->unk8 = (u32) ((temp_a1_5 >> var_s6) | temp_a1_5);
                                var_a6_3->unkC = (u32) ((temp_v1_9 >> var_s6) | temp_v1_9);
                            } else {
                                var_a2_4 = var_a1_5;
                                do {
                                    temp_at_3 = var_a2_4->unkC;
                                    var_a2_4 += 0x10;
                                    var_a2_4->unk-4 = (s32) ((temp_at_3 >> var_s6) | temp_at_3);
                                    temp_v1_10 = var_a2_4->unk-8;
                                    temp_a0_7 = var_a2_4->unk-C;
                                    temp_v0_11 = var_a2_4->unk-10;
                                    var_a2_4->unk-8 = (u32) ((temp_v1_10 >> var_s6) | temp_v1_10);
                                    var_a2_4->unk-C = (u32) ((temp_a0_7 >> var_s6) | temp_a0_7);
                                    var_a2_4->unk-10 = (u32) ((temp_v0_11 >> var_s6) | temp_v0_11);
                                } while (var_a2_4 != temp_a7_2);
                            }
                        }
                    }
                    var_s6 *= 2;
                    if ((s32) var_s6 < 0x11) {
                        goto loop_112;
                    }
                }
                sp18->unkC = var_s6;
                temp_a2_5 = arg0->unk24;
                temp_at_4 = temp_a2_5->unk18 - 1;
                temp_a2_5->unk18 = temp_at_4;
                if (temp_at_4 == 0) {
                    temp_gp->unk-75A0(temp_a2_5);
                    var_ra = spC0;
                }
                arg0->unk24 = (void *) sp18;
block_6:
                var_v1 = arg1 & 0x100;
            }
            if (var_v1 == 0) {
                temp_a1_6 = (u32) (arg0->unk10 & 0x03FFFFFF) >> 0x18;
                switch (temp_a1_6) {                /* switch 2; irregular */
                case 0:                             /* switch 2 */
                case 1:                             /* switch 2 */
                    break;
                default:                            /* switch 2 */
                    spC0 = var_ra;
                    temp_gp->unk-755C(&sub_5e500000 + 0x52F8, temp_a1_6);
                    spA0 = var_s0;
                    break;
                case 2:                             /* switch 2 */
                case 3:                             /* switch 2 */
                    spA0 = var_s0;
                    sp8 = 1;
                    break;
                }
            }
        }
    }
    spA0 = var_s0;
    if ((s32) arg0->unk4 < 9) {
        var_v1_3 = arg1 & 0x10C;
        if (arg1 & 0x400) {
            temp_a1_7 = arg0->unk10;
            if (((u32) (temp_a1_7 & 0x1FFFF) >> 0x10) != 0) {
                goto block_11;
            }
            if (arg0->unk20 != 0) {
                var_v1_3 = arg1 & 0x10C;
                if (!(arg1 & 0x100)) {
                    temp_a2_6 = (u32) (temp_a1_7 & 0x03FFFFFF) >> 0x18;
                    if ((temp_a2_6 != 0) && (temp_a2_6 != 2) && (temp_a2_6 != 3)) {
                        if (temp_a2_6 == 1) {
                            sp10 = 1;
                        } else {
                            spC0 = var_ra;
                            FatalError(&sub_5e500000 + 0x52F8, temp_a1_7, temp_a2_6);
                        }
                    }
                    goto block_11;
                }
            } else {
                goto block_11;
            }
        }
    } else {
block_11:
        var_v1_3 = arg1 & 0x10C;
    }
    if (var_v1_3 != 0) {
        goto block_13;
    }
    if (sp10 == 0) {
        if (sp8 != 0) {
            goto block_13;
        }
    } else {
block_13:
        temp_a3_4 = (u32) (arg0->unk10 & 0x03FFFFFF) >> 0x18;
        switch (temp_a3_4) {                        /* switch 1; irregular */
        default:                                    /* switch 1 */
            spC0 = var_ra;
            FatalError(&sub_5e500000 + 0x52F8);
            break;
        case 3:                                     /* switch 1 */
            if (arg0->unk18 == arg0->unk1C) {
                var_s5->unk24 = (void *) (temp_gp - 0x5668);
            } else {
                var_s5->unk24 = (void *) (((s32) arg0->unk24->unkC >= 0x21) ? (temp_gp - 0x38D8) : (temp_gp - 0x5650));
            }
            break;
        case 0:                                     /* switch 1 */
            var_s5->unk24 = (void *) (temp_gp - 0x5668);
            break;
        case 2:                                     /* switch 1 */
            var_s5->unk24 = (void *) (((s32) arg0->unk24->unkC >= 0x21) ? (temp_gp - 0x38F0) : (temp_gp - 0x5650));
            break;
        case 1:                                     /* switch 1 */
            var_s5->unk24 = (void *) (temp_gp - 0x5638);
            break;
        }
    }
    temp_a0_8 = temp_gp->unk-313C * 4;
    if (arg1 & 0x300000) {
        sp30 = temp_a0_8;
        spB8 = var_s3;
        temp_v0_12 = arg0->unkA;
        spA8 = var_s2;
        var_s3_3 = 0;
        sp20 = (s64) temp_v0_12;
        temp_a2_7 = temp_v0_12 - 1 + 1;
        var_s2_2 = 0;
        temp_a1_8 = temp_a2_7 >> 3;
        var_a4_3 = temp_a2_7 & 7;
        sp28 = (s64) *(arg0->unk4C + temp_a0_8);
        if ((s32) temp_v0_12 > 0) {
            var_a3_4 = arg0->unkC;
            temp_a6_4 = temp_a2_7 + var_a3_4;
            if (var_a4_3 != 0) {
                do {
                    var_a4_3 -= 1;
                    temp_at_5 = *var_a3_4;
                    var_a3_4 += 1;
                    var_s2_2 += temp_at_5;
                } while (var_a4_3 != 0);
            }
            if (temp_a1_8 != 0) {
                temp_t0_2 = temp_a6_4 - 0x10;
                if (temp_a1_8 >= 3) {
                    spC0 = var_ra;
                    var_s0_2 = var_a3_4->unk6;
                    var_a2_5 = var_a3_4->unk5;
                    var_a1_6 = var_a3_4->unk4;
                    var_a0 = var_a3_4->unk3;
                    var_a7_3 = var_a3_4 + 8;
                    var_v1_4 = var_a3_4->unk2;
                    var_a4_4 = var_a3_4->unk7;
                    var_a6_4 = var_a3_4->unk1;
                    var_ra_3 = var_a7_3->unk2;
                    var_at_2 = var_a3_4->unk0 + var_s2_2;
                    var_a5_3 = var_a7_3->unk1;
loop_26:
                    temp_a3_5 = var_a7_3->unk3;
                    temp_t1_3 = var_a7_3->unk4;
                    var_t2_2 = var_a7_3->unk5;
                    temp_t9_3 = var_a7_3->unk6;
                    var_t3_2 = var_a7_3->unk7;
                    var_t8_4 = var_a7_3 + 8;
                    temp_at_6 = var_a4_4 + (var_s0_2 + (var_a2_5 + (var_a1_6 + (var_a0 + (var_v1_4 + (var_a6_4 + var_at_2))))));
                    var_a6_4 = var_t8_4->unk1;
                    temp_at_7 = var_a7_3->unk0 + temp_at_6;
                    var_v1_4 = var_t8_4->unk2;
                    if (var_a7_3 != temp_t0_2) {
                        var_a0 = var_t8_4->unk3;
                        var_a1_6 = var_t8_4->unk4;
                        var_a2_5 = var_t8_4->unk5;
                        var_s0_2 = var_t8_4->unk6;
                        var_a4_4 = var_t8_4->unk7;
                        temp_v0_13 = temp_t9_3 + (var_t2_2 + (temp_t1_3 + (temp_a3_5 + (var_ra_3 + (var_a5_3 + temp_at_7)))));
                        var_a7_3 = var_t8_4 + 8;
                        var_a5_3 = var_a7_3->unk1;
                        var_at_2 = var_a7_3->unk8 + (var_t3_2 + temp_v0_13);
                        var_ra_3 = var_a7_3->unk2;
                        if (var_t8_4 == temp_t0_2) {
                            var_t8_4 = var_a7_3;
                            var_a7_4 = var_a0;
                            var_t9_3 = var_v1_4;
                            var_t2_2 = var_a2_5;
                            var_a2_6 = var_at_2;
                            var_t3_2 = var_a4_4;
                            var_a4_5 = var_a1_6;
                            var_a1_7 = var_a6_4;
                            var_s8 = var_ra_3;
                            var_ra = spC0;
                            var_a6_4 = var_a5_3;
                            var_a5_4 = var_s0_2;
                        } else {
                            goto loop_26;
                        }
                    } else {
                        var_t9_3 = var_ra_3;
                        sp70 = temp_at_7;
                        sp78 = (s64) var_a5_3;
                        var_a4_5 = temp_t1_3;
                        var_a5_4 = temp_t9_3;
                        var_a7_4 = temp_a3_5;
                        var_a2_6 = temp_at_7;
                        var_ra = spC0;
                        var_s8 = var_v1_4;
                        var_a1_7 = (u8) sp78;
                    }
                    var_s2_2 = var_t8_4->unk7 + (var_t8_4->unk6 + (var_t8_4->unk5 + (var_t8_4->unk4 + (var_t8_4->unk3 + (var_s8 + (var_a6_4 + (var_t8_4->unk0 + (var_t3_2 + (var_a5_4 + (var_t2_2 + (var_a4_5 + (var_a7_4 + (var_t9_3 + (var_a1_7 + var_a2_6))))))))))))));
                } else {
                    var_a2_7 = var_s2_2;
                    var_a1_8 = var_a3_4;
                    do {
                        var_a1_8 += 8;
                        var_a2_7 = var_a1_8->unk-1 + (var_a1_8->unk-2 + (var_a1_8->unk-3 + (var_a1_8->unk-4 + (var_a1_8->unk-5 + (var_a1_8->unk-6 + (var_a1_8->unk-7 + (var_a1_8->unk-8 + var_a2_7)))))));
                    } while (var_a1_8 != temp_a6_4);
                    var_s2_2 = var_a2_7;
                }
            }
        }
        if (var_s2_2 >= 0x21) {
            sp28->unk4 = 0;
        } else {
            temp_at_8 = -sp20;
            temp_at_9 = temp_at_8 + ((s32) (temp_at_8 ^ 2) >> 0x1F);
            temp_a1_9 = (s32) ((temp_at_9 >> 0x1F) + temp_at_9) >> 1;
            temp_a4_5 = -temp_a1_9;
            if (temp_a1_9 < 0) {
                var_a2_8 = arg0->unkC;
                var_a3_5 = temp_a4_5 & 3;
                temp_a6_5 = (temp_a1_9 * -2) + var_a2_8;
                if (var_a3_5 != 0) {
                    do {
                        temp_v1_11 = *var_a2_8;
                        var_a2_8 += 2;
                        var_a3_5 -= 1;
                        var_s3_3 = (((1 << temp_v1_11) - 1) | (var_s3_3 << temp_v1_11)) << var_a2_8->unk-1;
                    } while (var_a3_5 != 0);
                }
                temp_a3_6 = temp_a4_5 >> 2;
                if (temp_a3_6 != 0) {
                    var_a3_6 = var_s3_3;
                    if (temp_a3_6 >= 3) {
                        var_s0_3 = var_a2_8->unk7;
                        spC0 = var_ra;
                        var_ra_4 = var_a2_8->unk5;
                        var_t8_5 = var_a2_8->unk6;
                        var_t1_4 = var_a2_8->unk3;
                        temp_a2_8 = temp_a6_5 - 0x10;
                        var_a6_5 = var_a2_8->unk2;
                        temp_v0_14 = var_a2_8->unk0;
                        var_a7_5 = var_a2_8->unk4;
                        var_t9_4 = var_a2_8 + 8;
                        var_t0_3 = 1 << var_a6_5;
                        spB0 = var_s1;
                        var_s1_2 = var_t9_4->unk1;
                        var_a5_5 = var_a2_8->unk1;
                        var_at_3 = ((1 << temp_v0_14) - 1) | (var_s3_3 << temp_v0_14);
loop_38:
                        var_t2_3 = var_t9_4->unk4;
                        var_t3_3 = var_t9_4->unk3;
                        temp_a6_6 = var_t9_4->unk6;
                        temp_t0_3 = var_t9_4->unk5;
                        temp_a5_5 = var_t9_4->unk0;
                        temp_a0_9 = var_t9_4->unk2;
                        var_a4_6 = var_t9_4->unk7;
                        temp_v1_12 = 1 << temp_a0_9;
                        temp_a3_7 = var_t9_4 + 8;
                        temp_at_10 = ((((1 << var_t8_5) - 1) | (((((1 << var_a7_5) - 1) | ((((var_t0_3 - 1) | ((var_at_3 << var_a5_5) << var_a6_5)) << var_t1_4) << var_a7_5)) << var_ra_4) << var_t8_5)) << var_s0_3) << temp_a5_5;
                        var_a5_5 = temp_a3_7->unk1;
                        temp_at_11 = ((1 << temp_a5_5) - 1) | temp_at_10;
                        if (var_t9_4 != temp_a2_8) {
                            var_a7_5 = temp_a3_7->unk4;
                            var_t1_4 = temp_a3_7->unk3;
                            var_t8_5 = temp_a3_7->unk6;
                            var_ra_4 = temp_a3_7->unk5;
                            temp_a0_10 = var_t9_4->unk8;
                            var_a6_5 = temp_a3_7->unk2;
                            temp_v1_13 = 1 << temp_a0_10;
                            var_s0_3 = temp_a3_7->unk7;
                            var_t0_3 = 1 << var_a6_5;
                            temp_v0_15 = (((1 << temp_a6_6) - 1) | (((((1 << var_t2_3) - 1) | ((((temp_v1_12 - 1) | ((temp_at_11 << var_s1_2) << temp_a0_9)) << var_t3_3) << var_t2_3)) << temp_t0_3) << temp_a6_6)) << var_a4_6;
                            var_t9_4 = temp_a3_7 + 8;
                            var_s1_2 = var_t9_4->unk1;
                            var_at_3 = (temp_v1_13 - 1) | (temp_v0_15 << temp_a0_10);
                            if (temp_a3_7 == temp_a2_8) {
                                var_t2_3 = var_a7_5;
                                var_t3_3 = var_t1_4;
                                var_t1_5 = var_at_3;
                                var_a4_6 = var_s0_3;
                                var_a3_7 = var_ra_4;
                                var_ra = spC0;
                                var_s8_2 = var_a5_5;
                                var_a5_5 = var_s1_2;
                            } else {
                                goto loop_38;
                            }
                        } else {
                            var_t9_4 = temp_a3_7;
                            var_a3_7 = temp_t0_3;
                            var_t0_3 = temp_v1_12;
                            var_t8_5 = temp_a6_6;
                            var_a6_5 = temp_a0_9;
                            var_s8_2 = var_s1_2;
                            var_t1_5 = temp_at_11;
                            var_ra = spC0;
                        }
                        temp_v1_14 = var_t9_4->unk0;
                        temp_v0_16 = var_t9_4->unk2;
                        temp_at_12 = var_t9_4->unk4;
                        temp_v1_15 = var_t9_4->unk6;
                        var_s3_3 = (((1 << temp_v1_15) - 1) | (((((1 << temp_at_12) - 1) | (((((1 << temp_v0_16) - 1) | (((((1 << temp_v1_14) - 1) | (((((1 << var_t8_5) - 1) | (((((1 << var_t2_3) - 1) | ((((var_t0_3 - 1) | ((var_t1_5 << var_s8_2) << var_a6_5)) << var_t3_3) << var_t2_3)) << var_a3_7) << var_t8_5)) << var_a4_6) << temp_v1_14)) << var_a5_5) << temp_v0_16)) << var_t9_4->unk3) << temp_at_12)) << var_t9_4->unk5) << temp_v1_15)) << var_t9_4->unk7;
                    } else {
                        var_a2_9 = var_a2_8;
                        do {
                            temp_at_13 = var_a2_9->unk0;
                            temp_v0_17 = var_a2_9->unk2;
                            temp_a0_11 = var_a2_9->unk4;
                            temp_v1_16 = var_a2_9->unk6;
                            temp_a0_12 = var_a2_9->unk5;
                            temp_a3_8 = 1 << temp_v1_16;
                            temp_v0_18 = ((1 << temp_a0_11) - 1) | (((((1 << temp_v0_17) - 1) | (((((1 << temp_at_13) - 1) | (var_a3_6 << temp_at_13)) << var_a2_9->unk1) << temp_v0_17)) << var_a2_9->unk3) << temp_a0_11);
                            var_a2_9 += 8;
                            var_a3_6 = ((temp_a3_8 - 1) | ((temp_v0_18 << temp_a0_12) << temp_v1_16)) << var_a2_9->unk-1;
                        } while (var_a2_9 != temp_a6_5);
                        var_s3_3 = var_a3_6;
                    }
                }
            }
            if (var_s2_2 < 0x11) {
                do {
                    temp_v0_19 = var_s3_3 << var_s2_2;
                    var_s2_2 *= 2;
                    var_s3_3 |= temp_v0_19;
                } while (var_s2_2 < 0x11);
            }
            temp_at_14 = arg0->unk8;
            temp_v0_20 = (var_s2_2 >= 0x20) ? var_s3_3 : (var_s3_3 << (0x20 - var_s2_2));
            sp28->unk4 = var_s2_2;
            sp28->unk0 = (u32) ((temp_at_14 == 0) ? temp_v0_20 : ((temp_v0_20 << temp_at_14) | (temp_v0_20 >> (var_s2_2 - temp_at_14))));
        }
        temp_a2_9 = arg0->unk10;
        temp_a1_10 = arg0->unk6 == 0;
        temp_a3_9 = arg0->unk2C;
        temp_a1_11 = ((temp_a2_9 >> 0x1E) == 0) ? (temp_a1_10 | 2) : temp_a1_10;
        temp_a2_10 = (u32) (temp_a2_9 & 0x03FFFFFF) >> 0x18;
        temp_v1_17 = ((*(arg0->unk4C + sp30))->unk4 == 0) ? temp_a1_11 : (temp_a1_11 | 0x40);
        var_a1_9 = (temp_a2_10 != 0) ? temp_v1_17 : (temp_v1_17 | 4);
        if (temp_a3_9 != NULL) {
            if (((u32) (temp_a3_9->unkC & 0x7FFF) >> 0xE) != 0) {
                temp_a4_6 = temp_a3_9->unk16 - temp_a3_9->unk20;
                if (temp_a4_6 != 6) {
                    if (temp_a4_6 != 8) {
                        var_a1_9 = ((temp_a4_6 ^ 9) == 0) ? (var_a1_9 | 0x18) : var_a1_9;
                    } else {
                        var_a1_9 |= 0x20;
                    }
                } else {
                    var_a1_9 |= 0x28;
                }
            }
        }
        if ((temp_a2_10 == 2) || (temp_a2_10 == 3)) {
            var_a1_9 = ((s32) arg0->unk24->unkC < 0x21) ? (var_a1_9 | 0x80) : var_a1_9;
        }
        var_a2_10 = *((var_a1_9 * 4) + (&sub_5e510000 - 0x1750));
        if (var_a2_10 == NULL) {
            spC0 = var_ra;
            mgrasStoreColors(arg0, var_a1_9, var_a2_10);
            var_a2_10 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        goto block_56;
    }
    if (arg1 & 0x4930) {
        temp_a2_11 = arg0->unk10;
        temp_at_15 = arg0->unk6 == 0;
        temp_a3_10 = arg0->unk2C;
        temp_at_16 = ((temp_a2_11 >> 0x1E) == 0) ? (temp_at_15 | 2) : temp_at_15;
        temp_a2_12 = (u32) (temp_a2_11 & 0x03FFFFFF) >> 0x18;
        temp_a0_13 = ((*(arg0->unk4C + (temp_gp->unk-313C * 4)))->unk4 == 0) ? temp_at_16 : (temp_at_16 | 0x40);
        var_a1_10 = (temp_a2_12 != 0) ? temp_a0_13 : (temp_a0_13 | 4);
        if (temp_a3_10 != NULL) {
            if (((u32) (temp_a3_10->unkC & 0x7FFF) >> 0xE) != 0) {
                temp_a4_7 = temp_a3_10->unk16 - temp_a3_10->unk20;
                if (temp_a4_7 != 6) {
                    if (temp_a4_7 != 8) {
                        var_a1_10 = ((temp_a4_7 ^ 9) == 0) ? (var_a1_10 | 0x18) : var_a1_10;
                    } else {
                        var_a1_10 |= 0x20;
                    }
                } else {
                    var_a1_10 |= 0x28;
                }
            }
        }
        if ((temp_a2_12 == 2) || (temp_a2_12 == 3)) {
            var_a1_10 = ((s32) arg0->unk24->unkC < 0x21) ? (var_a1_10 | 0x80) : var_a1_10;
        }
        var_a2_10 = *((var_a1_10 * 4) + (&sub_5e510000 - 0x1750));
        if (var_a2_10 == NULL) {
            spC0 = var_ra;
            mgrasStoreColors(arg0, var_a1_10, var_a2_10);
            var_a2_10 = M2C_ERROR(/* Read from unset register $v0 */);
        }
block_56:
        arg0->unk48 = var_a2_10;
    }
    var_s5->unk58 = (s16) (var_s4->unk8 + arg0->unk28);
    var_s5->unk5A = (s16) (var_s4->unkA + arg0->unk2A);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x100, 0x104, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x120, 0x124, 0x158, 0x15c, 0x160, 0x164], gap at: 0x130. */
void mgrasCopyWindow(struct _Window *pWin, void *ptOldOrg, RegionRec *prgnSrc) {
    s32 sp178;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    u64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    u64 sp78;
    u64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    void *sp40;
    s16 sp3A;
    s16 sp38;
    ? sp20;
    s32 sp14;
    s32 sp10;
    ? (*temp_s5_3)(u64, s16 *, ?, s32, void *);
    ? (*temp_s5_6)(u64, s16 *, ?, s32, void *);
    ? (*temp_s6_3)(u64, s16 *, ?, s32, void *);
    s16 temp_t8;
    s16 temp_v1_3;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at_3;
    s32 temp_s0_3;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s5_4;
    s32 temp_s5_5;
    s32 temp_s6;
    s32 temp_s7_2;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a2;
    s32 var_at;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_s7_3;
    s64 temp_a6_4;
    s64 temp_a6_5;
    s64 temp_ra;
    s64 temp_s7_3;
    s64 temp_v0_4;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s4;
    s64 var_s5;
    s64 var_s6;
    u32 var_s4_2;
    u64 temp_a0_3;
    u64 temp_a2_2;
    u64 temp_a3;
    u64 temp_a3_2;
    u64 temp_a6_6;
    u64 temp_at_5;
    u64 temp_s6_4;
    u64 temp_s7_4;
    u64 temp_v0_5;
    u64 temp_v1;
    u64 var_s0_2;
    u64 var_s0_4;
    u64 var_s0_5;
    u64 var_s0_6;
    u64 var_s6_2;
    u8 temp_a1_4;
    u8 temp_v0_3;
    void **temp_a5;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_5;
    void *temp_a2;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_at;
    void *temp_at_2;
    void *temp_at_4;
    void *temp_at_6;
    void *temp_gp;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_s4;
    void *temp_s6_2;
    void *temp_s6_5;
    void *temp_s7;
    void *temp_s8;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1_2;
    void *temp_v1_4;
    void *var_a0_2;
    void *var_s0;
    void *var_s0_3;
    void *var_s0_7;
    void *var_s6_3;

    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_s5 = saved_reg_s5;
    var_s6 = saved_reg_s6;
    spF8 = 0;
    spF0 = 0;
    sp178 = (s32) ((s64) ptOldOrg >> 0x20);
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x14A7A0;
    temp_s8 = pWin->unk10;
    temp_s0 = temp_s8->unk74;
    temp_v0 = *(temp_s8->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_s7 = *(pWin->unk84 + (temp_gp->unk-30F8 * 4));
    temp_v0->unk50 = 0;
    sp58 = (s64) prgnSrc;
    sp60 = (s64) pWin;
    sp68 = (s64) temp_v0;
    temp_s8->unk154(sp, 0, 1);
    temp_s1 = unksp17A - sp60->unkA;
    sp50 = sp60 + 0x38;
    temp_s2 = (s16) sp178 - sp60->unk8;
    if (temp_s7->unk1C != 0) {
        var_s4_2 = 0;
        if (temp_s0->unk28 != 0) {
            temp_s5 = -temp_s1;
            temp_s6 = -temp_s2;
            var_s3_2 = sp58;
loop_5:
            temp_a1 = var_s3_2->unk8;
            var_s4_2 += 1;
            if (temp_a1 != NULL) {
                var_at = var_s4_2 < temp_s0->unk28;
                if (temp_a1->unk4 != 0) {
                    goto block_3;
                }
            } else {
block_3:
                temp_s8->unk178(var_s3_2, temp_s6, temp_s5, temp_s0->unk28);
                var_at = var_s4_2 < (u32) temp_s0->unk28;
            }
            var_s3_2 += 0xC;
            if (var_at != 0) {
                goto loop_5;
            }
            var_s5 = unksp150;
            var_s6 = unksp148;
            var_s3 = unksp140;
        }
        var_s4 = unksp138;
        temp_s8->unk164(sp, sp50, (temp_s7->unk18 * 0xC) + sp58, sp58);
    } else {
        temp_s8->unk178(sp58, -temp_s2, -temp_s1);
        temp_s8->unk164(sp, sp50, sp58);
    }
    if (sp8 != NULL) {
        var_a0 = sp8->unk4;
    } else {
        var_a0 = 1;
    }
    if (var_a0 != 0) {
        temp_a6 = temp_s7->unk18;
        if (temp_a6 == 0) {
            if (temp_s7->unk20 & 8) {
                sp10 = (s32) spF8;
                sp14 = (s32) spF0;
                cfbDoBitbltCopy(sp60, &sp14, &sp10);
                spB8 = (s64) temp_s7->unk14;
                temp_s0_2 = temp_s7->unk0;
                spA0 = (s64) temp_s0_2->unk14;
                spC0 = (s64) sp60->unk3;
                spB0 = (s64) temp_s7->unk8;
                sp98 = (s64) temp_s0_2->unk0;
                temp_a7 = dbcWindowPrivateIndex * 4;
                spA8 = (s64) temp_s0_2->unk8;
                temp_a6_2 = sp60->unk84 + temp_a7;
                sp80 = (s64) temp_a6_2->unk0;
                sp88 = (s64) temp_a6_2->unk1;
                sp90 = (s64) temp_a6_2->unk3;
                sp60->unk3 = 0x20U;
                temp_s7->unk8 = -1;
                temp_s7->unk14 = 8;
                temp_s7->unk0->unk14 = &mgrasReadImage24;
                temp_s7->unk0->unk8 = &mgrasDrawImage24;
                temp_a6_3 = temp_s7->unk0;
                temp_a6_3->unk0 = mgrasCopyRect24;
                temp_s0_3 = temp_s7->unk8;
                if (sp10 != 0) {
                    temp_ra = sp60->unk84 + temp_a7;
                    spD8 = temp_ra;
                    temp_ra->unk0 = 1;
                    temp_ra->unk1 = 1;
                    temp_gp->unk-7C9C(sp60, sp, temp_s2, temp_s1, 3, temp_s0_3 << temp_gp->unk-70A0, temp_a6_3, temp_a7);
                    spD8->unk0 = 0;
                    spD8->unk1 = 0;
                }
                if (sp14 != 0) {
                    nfbDoBitBltSS(sp60, sp, temp_s2, temp_s1, 3, temp_s0_3, sp14, nfbDoBitBltSS);
                }
                sp60->unk3 = (u8) spC0;
                temp_s7->unk8 = (s32) spB0;
                temp_s7->unk14 = (s32) spB8;
                temp_s7->unk0->unk14 = (? *) spA0;
                temp_s7->unk0->unk8 = (? *) spA8;
                temp_s7->unk0->unk0 = (void (*)(void *, void *, void *, BoxRec *)) sp98;
                temp_v0_2 = sp60->unk84 + (dbcWindowPrivateIndex * 4);
                temp_v0_2->unk1 = (s8) sp88;
                temp_v0_2->unk0 = (s8) sp80;
                temp_v0_2->unk3 = (s8) sp90;
            } else {
                goto block_18;
            }
        } else {
block_18:
            ((? (*)(s64, void *, s32, s32, ?, s32, s32)) temp_gp->unk-7C9C)(sp60, sp, temp_s2, temp_s1, 3, temp_s7->unk8, temp_a6);
        }
    }
    unksp140 = var_s3;
    unksp148 = var_s6;
    unksp138 = var_s4;
    unksp150 = var_s5;
    if (temp_s7->unk1C != 0) {
        unksp140 = var_s3;
        unksp148 = var_s6;
        unksp138 = var_s4;
        sp48 = 0;
        temp_s5_2 = temp_s7->unk18;
        var_s0 = sp60->unk24;
loop_25:
        temp_s3 = *(var_s0->unk84 + (temp_gp->unk-30F8 * 4));
        temp_a0 = temp_s3->unk18;
        temp_s6_2 = var_s0 + 0x38;
        temp_a4 = 1 << temp_a0;
        if (temp_s5_2 != temp_a0) {
            temp_s7_2 = temp_a0 * 0xC;
            temp_s4 = temp_s7_2 + &sp20;
            temp_s7_3 = temp_s7_2 + sp58;
            if (!(temp_a4 & sp48)) {
                temp_a5 = &(&sp18[0])[temp_a0];
                *temp_a5 = var_s0;
                temp_a6_4 = temp_a4 | sp48;
                sp48 = temp_a6_4;
                temp_s8->unk154(temp_s4, 0, 0, temp_a0, temp_a4, temp_a5, temp_a6_4);
                temp_s8->unk164(temp_s4, (s64) temp_s6_2, temp_s7_3);
            } else {
                temp_s8->unk164(sp, (s64) temp_s6_2, temp_s7_3, (s64) temp_a0, temp_a4);
                temp_s8->unk168(temp_s4, temp_s4, sp);
            }
        }
        var_a0_2 = var_s0->unk24;
        if ((var_a0_2 != NULL) && (temp_s3->unk1C != 0)) {
block_24:
            var_s0 = var_a0_2;
            goto loop_25;
        }
        var_a0_2 = var_s0->unk1C;
        if (var_a0_2 != NULL) {
            goto block_29;
        }
        if (sp60 != var_s0) {
loop_32:
            var_s0 = var_s0->unk18;
            var_a0_2 = var_s0->unk1C;
            if (var_a0_2 == NULL) {
                if (sp60 != var_s0) {
                    goto loop_32;
                }
            } else {
block_29:
                if (sp60 != var_s0) {
                    goto block_24;
                }
            }
        }
        unksp130 = 0;
        unksp128 = (s64) &sp18[0];
        sp70 = (u64) &sp20;
        do {
            if ((1 << unksp130) & sp48) {
                temp_s3_2 = *unksp128;
                temp_a2 = *((temp_gp->unk-30F8 * 4) + temp_s3_2->unk84);
                if (temp_a2->unk18 != 0) {
                    temp_a1_2 = sp70->unk8;
                    temp_s4_2 = temp_a2->unk8;
                    if (temp_a1_2 != NULL) {
                        var_a0_3 = temp_a1_2->unk4;
                    } else {
                        var_a0_3 = 1;
                    }
                    var_s7 = var_a0_3;
                    if (var_a0_3 != 0) {
                        temp_a3 = (temp_a1_2 == NULL) ? sp70 : (u64) (temp_a1_2 + 8);
                        var_s0_2 = temp_a3;
                        temp_s5_3 = *temp_a2->unk0;
                        if (var_a0_3 != 1) {
                            if ((temp_s1 >= 0) && (temp_s2 >= 0)) {
                                goto loop_44;
                            }
                            if (temp_s1 > 0) {
                                var_s6_2 = var_s0_2;
loop_55:
                                var_s7 -= 1;
                                if (var_s7 != 0) {
                                    var_s0_2 += 8;
                                    if (var_s0_2->unkA != var_s6_2->unk2) {
                                        if (var_s7 != 0) {
                                            var_s0_2 -= 8;
                                            temp_v1 = var_s0_2 + 8;
                                            sp78 = temp_v1;
                                            sp40 = (void *) temp_v1;
                                        } else {
                                            goto block_51;
                                        }
                                    } else {
                                        goto loop_55;
                                    }
                                } else {
block_51:
                                    sp78 = (u64) sp40;
                                }
                                do {
                                    sp38 = var_s0_2->unk0 + temp_s2;
                                    sp3A = var_s0_2->unk2 + temp_s1;
                                    temp_s5_3(var_s0_2, &sp38, 3, temp_s4_2, temp_s3_2);
                                    var_s0_2 -= 8;
                                } while (var_s0_2 >= var_s6_2);
                                var_s0_2 = sp78;
                                if (var_s7 != 0) {
                                    var_s6_2 = var_s0_2;
                                    goto loop_55;
                                }
                            } else {
                                var_s0_3 = ((var_a0_3 * 8) + temp_a3) - 8;
                                if (temp_s2 > 0) {
                                    var_s6_3 = var_s0_3;
loop_94:
                                    var_s7 -= 1;
                                    if (var_s7 != 0) {
                                        var_s0_3 -= 8;
                                        if (var_s0_3->unk-6 != var_s6_3->unk2) {
                                            if (var_s7 != 0) {
                                                var_s0_3 += 8;
                                                temp_v1_2 = var_s0_3 - 8;
                                                sp78 = (u64) temp_v1_2;
                                                sp40 = temp_v1_2;
                                            } else {
                                                goto block_90;
                                            }
                                        } else {
                                            goto loop_94;
                                        }
                                    } else {
block_90:
                                        sp78 = (u64) sp40;
                                    }
                                    do {
                                        sp38 = var_s0_3->unk0 + temp_s2;
                                        sp3A = var_s0_3->unk2 + temp_s1;
                                        temp_s5_3((u64) var_s0_3, &sp38, 3, temp_s4_2, temp_s3_2);
                                        var_s0_3 += 8;
                                    } while ((u32) var_s6_3 >= (u32) var_s0_3);
                                    var_s0_3 = (void *) sp78;
                                    if (var_s7 != 0) {
                                        var_s6_3 = var_s0_3;
                                        goto loop_94;
                                    }
                                } else {
                                    do {
                                        sp38 = var_s0_3->unk0 + temp_s2;
                                        var_s7 -= 1;
                                        temp_v1_3 = var_s0_3->unk2;
                                        temp_a0_2 = var_s0_3;
                                        var_s0_3 -= 8;
                                        sp3A = temp_v1_3 + temp_s1;
                                        temp_s5_3((u64) temp_a0_2, &sp38, 3, temp_s4_2, temp_s3_2);
                                    } while (var_s7 != 0);
                                }
                            }
                        } else {
                            do {
loop_44:
                                sp38 = var_s0_2->unk0 + temp_s2;
                                sp3A = var_s0_2->unk2 + temp_s1;
                                temp_s5_3(var_s0_2, &sp38, 3, temp_s4_2, temp_s3_2);
                                var_s7 -= 1;
                                var_s0_2 += 8;
                            } while (var_s7 != 0);
                        }
                    }
                } else {
                    sp14 = 0;
                    spC8 = (s64) temp_a2;
                    sp10 = 0;
                    cfbDoBitbltCopy((s64) temp_s3_2, &sp14, &sp10, 0, 0);
                    temp_at = spC8->unk0;
                    spA0 = (s64) temp_at->unk14;
                    sp98 = (s64) temp_at->unk0;
                    spB8 = (s64) spC8->unk14;
                    temp_a7_2 = dbcWindowPrivateIndex * 4;
                    spA8 = (s64) temp_at->unk8;
                    temp_at_2 = temp_s3_2->unk84 + temp_a7_2;
                    sp88 = (s64) temp_at_2->unk1;
                    temp_at_3 = spC8->unk8;
                    sp80 = (s64) temp_at_2->unk0;
                    temp_v0_3 = temp_s3_2->unk3;
                    sp90 = (s64) temp_at_2->unk3;
                    temp_s3_2->unk3 = 0x20U;
                    spC8->unk8 = -1;
                    spC8->unk14 = 8;
                    spC8->unk0->unk14 = &mgrasReadImage24;
                    spB0 = (s64) temp_at_3;
                    spC8->unk0->unk8 = &mgrasDrawImage24;
                    spC8->unk0->unk0 = mgrasCopyRect24;
                    spC0 = (s64) temp_v0_3;
                    temp_s4_3 = spC8->unk8;
                    if (sp10 != 0) {
                        temp_at_4 = temp_s3_2->unk84 + temp_a7_2;
                        temp_at_4->unk0 = 1;
                        temp_at_4->unk1 = 1;
                        temp_a1_3 = sp70->unk8;
                        spD0 = (s64) temp_at_4;
                        if (temp_a1_3 != NULL) {
                            var_a2 = temp_a1_3->unk4;
                        } else {
                            var_a2 = 1;
                        }
                        temp_s5_4 = temp_s4_3 << temp_gp->unk-70A0;
                        var_s7_2 = var_a2;
                        if (var_a2 != 0) {
                            temp_a3_2 = (temp_a1_3 == NULL) ? sp70 : (u64) (temp_a1_3 + 8);
                            var_s0_4 = temp_a3_2;
                            temp_s6_3 = ***(temp_s3_2->unk84 + (temp_gp->unk-30F8 * 4));
                            if (var_a2 != 1) {
                                if ((temp_s1 >= 0) && (temp_s2 >= 0)) {
                                    goto loop_74;
                                }
                                temp_a1_4 = temp_gp->unk-70A0;
                                if (temp_s1 > 0) {
                                    spE8 = (s64) var_s7_2;
                                    temp_s5_5 = temp_s4_3 << temp_a1_4;
loop_117:
                                    temp_s7_4 = var_s0_4;
loop_118:
                                    temp_v0_4 = spE8 - 1;
                                    spE8 = temp_v0_4;
                                    if (temp_v0_4 != 0) {
                                        var_s0_4 += 8;
                                        if (temp_s7_4->unk2 != var_s0_4->unkA) {
                                            if (spE8 != 0) {
                                                var_s0_4 -= 8;
                                                temp_v0_5 = var_s0_4 + 8;
                                                sp78 = temp_v0_5;
                                                sp40 = (void *) temp_v0_5;
                                            } else {
                                                goto block_114;
                                            }
                                        } else {
                                            goto loop_118;
                                        }
                                    } else {
block_114:
                                        sp78 = (u64) sp40;
                                    }
                                    do {
                                        sp38 = var_s0_4->unk0 + temp_s2;
                                        sp3A = var_s0_4->unk2 + temp_s1;
                                        temp_s6_3(var_s0_4, &sp38, 3, temp_s5_5, temp_s3_2);
                                        var_s0_4 -= 8;
                                    } while (var_s0_4 >= temp_s7_4);
                                    var_s0_4 = sp78;
                                    if (spE8 != 0) {
                                        goto loop_117;
                                    }
                                } else {
                                    var_s0_5 = ((var_a2 * 8) + temp_a3_2) - 8;
                                    if (temp_s2 > 0) {
loop_145:
                                        spE0 = var_s0_5;
loop_146:
                                        var_s7_2 -= 1;
                                        if (var_s7_2 != 0) {
                                            var_s0_5 -= 8;
                                            if (var_s0_5->unk-6 != spE0->unk2) {
                                                if (var_s7_2 != 0) {
                                                    var_s0_5 += 8;
                                                    temp_at_5 = var_s0_5 - 8;
                                                    sp78 = temp_at_5;
                                                    sp40 = (void *) temp_at_5;
                                                } else {
                                                    goto block_142;
                                                }
                                            } else {
                                                goto loop_146;
                                            }
                                        } else {
block_142:
                                            sp78 = (u64) sp40;
                                        }
                                        do {
                                            sp38 = var_s0_5->unk0 + temp_s2;
                                            sp3A = var_s0_5->unk2 + temp_s1;
                                            temp_s6_3(var_s0_5, &sp38, 3, temp_s4_3 << temp_a1_4, temp_s3_2);
                                            var_s0_5 += 8;
                                        } while (spE0 >= var_s0_5);
                                        var_s0_5 = sp78;
                                        if (var_s7_2 != 0) {
                                            goto loop_145;
                                        }
                                    } else {
                                        do {
                                            sp38 = var_s0_5->unk0 + temp_s2;
                                            sp3A = var_s0_5->unk2 + temp_s1;
                                            temp_s6_3(var_s0_5, &sp38, 3, temp_s4_3 << temp_a1_4, temp_s3_2);
                                            var_s7_2 -= 1;
                                            var_s0_5 -= 8;
                                        } while (var_s7_2 != 0);
                                    }
                                }
                            } else {
                                do {
loop_74:
                                    sp38 = var_s0_4->unk0 + temp_s2;
                                    var_s7_2 -= 1;
                                    temp_a0_3 = var_s0_4;
                                    temp_t8 = var_s0_4->unk2;
                                    var_s0_4 += 8;
                                    sp3A = temp_t8 + temp_s1;
                                    temp_s6_3(temp_a0_3, &sp38, 3, temp_s5_4, temp_s3_2);
                                } while (var_s7_2 != 0);
                            }
                        }
                        spD0->unk0 = 0;
                        spD0->unk1 = 0;
                    }
                    if (sp14 != 0) {
                        temp_a1_5 = sp70->unk8;
                        if (temp_a1_5 != NULL) {
                            var_a0_4 = temp_a1_5->unk4;
                        } else {
                            var_a0_4 = 1;
                        }
                        var_s7_3 = var_a0_4;
                        if (var_a0_4 != 0) {
                            temp_a2_2 = (temp_a1_5 == NULL) ? sp70 : (u64) (temp_a1_5 + 8);
                            var_s0_6 = temp_a2_2;
                            temp_s5_6 = ***(temp_s3_2->unk84 + (temp_gp->unk-30F8 * 4));
                            if (var_a0_4 != 1) {
                                if ((temp_s1 >= 0) && (temp_s2 >= 0)) {
                                    goto loop_84;
                                }
                                if (temp_s1 > 0) {
loop_107:
                                    temp_s6_4 = var_s0_6;
loop_108:
                                    var_s7_3 -= 1;
                                    if (var_s7_3 != 0) {
                                        var_s0_6 += 8;
                                        if (var_s0_6->unkA != temp_s6_4->unk2) {
                                            if (var_s7_3 != 0) {
                                                var_s0_6 -= 8;
                                                temp_a6_6 = var_s0_6 + 8;
                                                sp78 = temp_a6_6;
                                                sp40 = (void *) temp_a6_6;
                                            } else {
                                                goto block_104;
                                            }
                                        } else {
                                            goto loop_108;
                                        }
                                    } else {
block_104:
                                        sp78 = (u64) sp40;
                                    }
                                    do {
                                        sp38 = var_s0_6->unk0 + temp_s2;
                                        sp3A = var_s0_6->unk2 + temp_s1;
                                        temp_s5_6(var_s0_6, &sp38, 3, temp_s4_3, temp_s3_2);
                                        var_s0_6 -= 8;
                                    } while (var_s0_6 >= temp_s6_4);
                                    var_s0_6 = sp78;
                                    if (var_s7_3 != 0) {
                                        goto loop_107;
                                    }
                                } else {
                                    var_s0_7 = ((var_a0_4 * 8) + temp_a2_2) - 8;
                                    if (temp_s2 > 0) {
loop_135:
                                        temp_s6_5 = var_s0_7;
loop_136:
                                        var_s7_3 -= 1;
                                        if (var_s7_3 != 0) {
                                            var_s0_7 -= 8;
                                            if (var_s0_7->unk-6 != temp_s6_5->unk2) {
                                                if (var_s7_3 != 0) {
                                                    var_s0_7 += 8;
                                                    temp_v1_4 = var_s0_7 - 8;
                                                    sp78 = (u64) temp_v1_4;
                                                    sp40 = temp_v1_4;
                                                } else {
                                                    goto block_132;
                                                }
                                            } else {
                                                goto loop_136;
                                            }
                                        } else {
block_132:
                                            sp78 = (u64) sp40;
                                        }
                                        do {
                                            sp38 = var_s0_7->unk0 + temp_s2;
                                            sp3A = var_s0_7->unk2 + temp_s1;
                                            temp_s5_6((u64) var_s0_7, &sp38, 3, temp_s4_3, temp_s3_2);
                                            var_s0_7 += 8;
                                        } while ((u32) temp_s6_5 >= (u32) var_s0_7);
                                        var_s0_7 = (void *) sp78;
                                        if (var_s7_3 != 0) {
                                            goto loop_135;
                                        }
                                    } else {
                                        do {
                                            sp38 = var_s0_7->unk0 + temp_s2;
                                            sp3A = var_s0_7->unk2 + temp_s1;
                                            temp_s5_6((u64) var_s0_7, &sp38, 3, temp_s4_3, temp_s3_2);
                                            var_s7_3 -= 1;
                                            var_s0_7 -= 8;
                                        } while (var_s7_3 != 0);
                                    }
                                }
                            } else {
                                do {
loop_84:
                                    sp38 = var_s0_6->unk0 + temp_s2;
                                    sp3A = var_s0_6->unk2 + temp_s1;
                                    temp_s5_6(var_s0_6, &sp38, 3, temp_s4_3, temp_s3_2);
                                    var_s7_3 -= 1;
                                    var_s0_6 += 8;
                                } while (var_s7_3 != 0);
                            }
                        }
                    }
                    temp_s3_2->unk3 = (u8) spC0;
                    spC8->unk8 = (s32) spB0;
                    spC8->unk14 = (s32) spB8;
                    spC8->unk0->unk14 = (s32) spA0;
                    spC8->unk0->unk8 = (s32) spA8;
                    spC8->unk0->unk0 = (s32) sp98;
                    temp_at_6 = temp_s3_2->unk84 + (dbcWindowPrivateIndex * 4);
                    temp_at_6->unk1 = (s8) sp88;
                    temp_at_6->unk0 = (s8) sp80;
                    temp_at_6->unk3 = (s8) sp90;
                }
                temp_s8->unk160(sp70);
            }
            temp_a6_5 = unksp130 + 1;
            unksp130 = temp_a6_5;
            sp70 += 0xC;
            unksp128 += 4;
        } while (temp_a6_5 != 2);
    }
    temp_s8->unk160((u64) sp);
    sp68->unk50 = 1;
}

void mgrasInitWindowType(void *arg0) {
    s32 temp_a1;

    temp_a1 = arg0->unk84;
    (*((rrmWindowPrivateIndex * 4) + temp_a1))->unk2 = (s16) (((*(((M2C_ERROR(/* Read from unset register $t9 */) + 0x144D3C)->unk-30F8 * 4) + temp_a1))->unk18 == 0) ? 0 : 1);
}

s32 mgrasInitDIDState(void *arg0) {
    s32 temp_a2;
    void *temp_a5;
    void *temp_gp;
    void *var_at;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x13BA28;
    temp_a5 = *(arg0->unk1B4 + (*temp_gp->unk-74F0 * 4));
    temp_a5->unkAA = 0;
    temp_a5->unkCE = 0;
    var_at = temp_a5;
    do {
        var_at->unkA4 = 0;
        var_at->unkC8 = 0;
        var_at->unkA0 = 0;
        var_at->unkC4 = 0;
        var_at += 0x48;
        var_at->unkCE = 0;
        var_at->unkAA = 0;
    } while (var_at != (temp_a5 + 0x438));
    var_at->unkC4 = 0;
    var_at->unkA0 = 0;
    var_at->unkC8 = 0;
    var_at->unkA4 = 0;
    temp_a5->unk520 = 0x3C00;
    temp_a5->unk524 = 0;
    temp_a5->unk544 = 0x3C00;
    temp_a5->unk548 = 0;
    temp_a5->unk568 = 0x3C00;
    temp_a5->unk56C = 0;
    temp_a5->unk58C = 0x3C00;
    temp_a5->unk590 = 0;
    temp_a5->unk5B0 = 0x3C00;
    temp_a5->unk5B4 = 0;
    temp_a5->unk5D4 = 0x3C00;
    temp_a5->unk5D8 = 0;
    temp_a5->unk5F8 = 0x3C00;
    temp_a5->unk5FC = 0;
    temp_a5->unk61C = 0x3C00;
    temp_a5->unk620 = 0;
    temp_a5->unk626 = 1;
    temp_a5->unk602 = 1;
    temp_a5->unk5DE = 1;
    temp_a5->unk5BA = 1;
    temp_a5->unk596 = 1;
    temp_a5->unk572 = 1;
    temp_a5->unk54E = 1;
    temp_a5->unk52A = 1;
    temp_a2 = temp_a5->unk0;
    if (temp_a2 != 0x28) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2938, 0x28, temp_a2, 0x3C00, temp_a5);
    }
    return 1;
}

void mgrasValidateClip(void *arg0, ? arg_sp0) {
    s32 sp0;
    ? var_a1_2;
    s16 *temp_a1_3;
    s16 *temp_a7;
    s16 *var_a2_3;
    s16 *var_v0_3;
    s16 temp_a2_5;
    s16 temp_a4_6;
    s16 temp_a6_3;
    s16 temp_v0_4;
    s16 temp_v0_6;
    s16 temp_v1_2;
    s16 var_a0_3;
    s16 var_a0_4;
    s32 temp_a2_4;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s5;
    s32 temp_t0;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t9;
    s32 temp_v0_10;
    s32 temp_v0_7;
    s32 temp_v0_9;
    s32 temp_v1_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_3;
    s32 var_a2_2;
    s32 var_a2_4;
    s32 var_a4_2;
    s32 var_a6;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_4;
    s32 var_v1_5;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a2_2;
    s64 temp_a2_3;
    s64 temp_a3;
    s64 temp_a4_3;
    s64 temp_a6;
    s64 temp_s2;
    s64 temp_t0_2;
    s64 temp_t1;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_a7;
    s64 var_ra;
    s64 var_v1_2;
    s64 var_v1_3;
    u16 temp_a2;
    u16 temp_a6_2;
    u16 var_a5;
    u64 temp_a4_4;
    u64 temp_a4_5;
    u8 temp_v0_11;
    void *temp_a0;
    void *temp_a0_4;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_gp;
    void *temp_ra;
    void *temp_s4;
    void *temp_s6;
    void *temp_t9_2;
    void *temp_t9_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_5;
    void *temp_v0_8;
    void *temp_v1;
    void *temp_v1_4;
    void *var_a2;
    void *var_a3;
    void *var_a3_2;
    void *var_a4;
    void *var_v1_6;

    var_ra = saved_reg_ra;
    var_a3 = arg0->unk10;
    arg_sp0.unk-A8 = (s64) saved_reg_s6;
    temp_s6 = var_a3->unk74;
    arg_sp0.unk-A0 = (s64) saved_reg_s1;
    arg_sp0.unk-98 = (s64) saved_reg_s3;
    arg_sp0.unk-B0 = (s64) saved_reg_s0;
    arg_sp0.unk-C8 = (s64) saved_reg_fp;
    arg_sp0.unk-D0 = (s64) saved_reg_gp;
    arg_sp0.unk-C0 = (s64) saved_reg_s4;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x6DFC0;
    temp_t9 = arg0->unk84;
    var_s3 = 0;
    temp_a4 = temp_gp->unk-3140 * 4;
    arg_sp0.unk-B8 = (s64) saved_reg_s2;
    var_s2 = 0;
    var_a2 = *(var_a3->unk1B4 + temp_a4);
    var_s1 = 0;
    temp_s4 = *((rrmWindowPrivateIndex * 4) + temp_t9);
    if (*((glxWindowPrivateIndex * 4) + temp_t9) != 0) {
        arg_sp0.unk-90 = (s64) var_a2;
        arg_sp0.unk-E8 = (s64) saved_reg_ra;
        arg_sp0.unk-88 = (s64) var_a3;
        temp_gp->unk-7350(arg0, var_a2, var_a3, temp_a4, &glxWindowPrivateIndex);
        var_a3 = (void *) arg_sp0.unk-88;
        var_a2 = (void *) arg_sp0.unk-90;
        var_ra = arg_sp0.unk-E8;
    }
    if (temp_s6->unkDC != 0) {
        temp_a4_2 = temp_gp->unk-30F8 * 4;
        temp_v1 = *(arg0->unk84 + temp_a4_2);
        temp_a5 = temp_v1->unk34;
        if (temp_a5 != 0) {

        } else {
            temp_v0 = arg0->unk34;
            if (temp_v0 != NULL) {
                var_a0 = temp_v0->unk4;
            } else {
                var_a0 = 1;
            }
            if (var_a0 != 0) {
                arg_sp0.unk-88 = (s64) var_a3;
                temp_a0 = arg0 + 0x2C;
                arg_sp0.unk-80 = (s64) temp_a0;
                arg_sp0.unk-E0 = (s64) saved_reg_s5;
                temp_s5 = temp_v1->unk14;
                arg_sp0.unk-90 = (s64) var_a2;
                temp_a2 = temp_s6->unkE2;
                arg_sp0.unk-E8 = var_ra;
                arg_sp0.unk-70 = (s64) temp_a2;
                var_a3->unk178(temp_a0, 0, temp_a2, var_a3, temp_a4_2, temp_a5);
                temp_a3 = arg_sp0.unk-90;
                temp_v0_2 = arg0->unk34;
                var_a1 = temp_a3->unk80;
                temp_t9_2 = temp_a3->unk4;
                var_a3_2 = temp_a3->unk0;
                var_a7 = (temp_v0_2 == NULL) ? arg_sp0.unk-80 : (s64) (temp_v0_2 + 8);
                if (temp_v0_2 != NULL) {
                    var_v1 = temp_v0_2->unk4;
                } else {
                    var_v1 = 1;
                }
                var_v0 = var_v1;
                if (var_v1 != 0) {
                    temp_t3 = 0x65E01 << 0x22;
                    temp_ra = var_a3_2 + 0x70000;
                    var_a3_2->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
                    temp_t0 = 0x100000 & *((temp_s5 * 4) + (temp_gp - 0x7130));
                    temp_t2 = 0x65DC1 << 0x22;
                    temp_t1 = 0x65D81 << 0x22;
                    temp_t9_2->unk440 = 0x100000;
                    var_a3_2->unk70080 = (s64) temp_gp->unk-32C0;
                    if ((temp_t0 != 0) != -2) {
                        temp_t8 = temp_gp->unk-32B8;
                        var_a3_2 = (void *) (0x65B41 << 0x22);
                        if (temp_t0 != 0) {
                            temp_t0_2 = arg_sp0.unk-90;
                            temp_t9_2->unk5B4 = (u32) temp_t0_2->unkC;
                            arg_sp0.unk-1C = 0x13F500;
                            temp_ra->unk80 = (s64) (temp_t0_2->unkC | (s32) var_a3_2);
                            temp_t9_2->unk58C = 0;
                            temp_ra->unk80 = (s64) (0x658C1 << 0x22);
                            temp_t9_2->unk590 = -1;
                            temp_ra->unk80 = temp_t8;
                            temp_t9_2->unk588 = 0xF0;
                            temp_ra->unk80 = (s64) ((0x65881 << 0x22) | 0xF0);
                            temp_t9_2->unk5D8 = 0;
                            temp_ra->unk80 = temp_t1;
                            temp_t9_2->unk5DC = 0;
                            temp_ra->unk80 = temp_t2;
                            temp_t9_2->unk5E0 = 0;
                            temp_ra->unk80 = temp_t3;
                        } else {
                            temp_a6 = arg_sp0.unk-90;
                            temp_t9_2->unk5B4 = (u32) temp_a6->unk8;
                            temp_ra->unk80 = (s64) (temp_a6->unk8 | (s32) var_a3_2);
                            temp_t9_2->unk5D8 = 0;
                            temp_ra->unk80 = temp_t1;
                            temp_t9_2->unk5DC = 0;
                            temp_ra->unk80 = temp_t2;
                            temp_t9_2->unk5E0 = 0;
                            temp_ra->unk80 = temp_t3;
                            temp_t9_2->unk5E4 = 0;
                            temp_ra->unk80 = (s64) (0x65E41 << 0x22);
                            temp_t9_2->unk58C = -1;
                            temp_ra->unk80 = (s64) temp_gp->unk-32B0;
                            temp_s2 = var_a7;
                            temp_s1 = var_v0;
                            temp_t9_2->unk590 = -1;
                            temp_ra->unk80 = temp_t8;
                            if ((var_a1 == 0) || (var_a1 == 3)) {
                                temp_a2_2 = 0x711C1 << 0x22;
                                temp_a0_2 = 0x61181 << 0x22;
                                temp_t1_2 = (var_v1 >= 1) ? var_v1 : 1;
                                temp_a4_3 = (((var_a1 != 0) ? 1 : 4) << 0xE) | ((var_a1 == 1) << 0xB) | 0x2200;
                                temp_t9_2->unk584 = (s32) temp_a4_3;
                                temp_ra->unk80 = (s64) (((u64) (temp_a4_3 << 0x20) >> 0x20) | (0x65841 << 0x22));
                                temp_t9_2->unk588 = 0;
                                temp_ra->unk80 = (s64) (0x65881 << 0x22);
                                if (temp_t1_2 & 1) {
                                    temp_ra->unk80 = (s64) (((u64) (((var_a7->unk2 & 0xFFFF) | (var_a7->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a0_2);
                                    var_v0 -= 1;
                                    temp_a4_4 = (u64) ((((var_a7->unk6 - 1) & 0xFFFF) | ((var_a7->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                                    var_a7 += 8;
                                    temp_ra->unk80 = (s64) (temp_a4_4 | temp_a2_2);
                                }
                                var_a3_2 = (void *) var_v0;
                                arg_sp0.unk-D8 = (s64) var_a1;
                                var_v1_2 = var_a7;
                                if ((temp_t1_2 >> 1) != 0) {
                                    arg_sp0.unk-D8 = (s64) var_a1;
                                    do {
                                        temp_ra->unk80 = (s64) (((u64) (((var_v1_2->unk2 & 0xFFFF) | (var_v1_2->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a0_2);
                                        temp_ra->unk80 = (s64) (((u64) ((((var_v1_2->unk6 - 1) & 0xFFFF) | ((var_v1_2->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a2_2);
                                        temp_ra->unk80 = (s64) (((u64) (((var_v1_2->unkA & 0xFFFF) | (var_v1_2->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a0_2);
                                        var_a3_2 -= 2;
                                        temp_ra->unk80 = (s64) (((u64) ((((var_v1_2->unkE - 1) & 0xFFFF) | ((var_v1_2->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a2_2);
                                        var_v1_2 += 0x10;
                                    } while (var_a3_2 != NULL);
                                }
                                var_a1 = (s32) arg_sp0.unk-D8;
                                var_a7 = temp_s2;
                                var_v0 = temp_s1;
                                var_s3 = var_a1 == 3;
                            }
                            var_s2 = var_s3;
                            if (var_s3 == 0) {
                                temp_t9_2->unk588 = 0xFF;
                                temp_ra->unk80 = (s64) ((0x65881 << 0x22) | 0xFF);
                                arg_sp0.unk-1C = (s32) (((var_a1 == 1) << 0xB) | 0x16300);
                            }
                        }
                        var_s1 = var_s2;
                    } else {
                        arg_sp0.unk-1C = 0x142600;
                        temp_t9_2->unk58C = 0;
                        temp_ra->unk80 = (s64) (0x658C1 << 0x22);
                        temp_t9_2->unk590 = 0;
                        temp_ra->unk80 = (s64) (0x65901 << 0x22);
                        temp_t9_2->unk588 = 0xFF;
                        temp_ra->unk80 = (s64) ((0x65881 << 0x22) | 0xFF);
                        temp_t9_2->unk5EC = 0xC00;
                        temp_ra->unk80 = (s64) ((0x65EC1 << 0x22) | 0xC00);
                        temp_t9_2->unk5D8 = 0;
                        temp_ra->unk80 = temp_t1;
                        temp_t9_2->unk5DC = 0;
                        temp_ra->unk80 = temp_t2;
                        temp_t9_2->unk5E0 = 0;
                        temp_ra->unk80 = temp_t3;
                    }
                    if (var_s1 == 0) {
                        temp_a2_3 = 0x711C1 << 0x22;
                        temp_a0_3 = 0x61181 << 0x22;
                        temp_s1_2 = arg_sp0.unk-1C;
                        temp_t1_3 = ((u32) var_v0 >= 1U) ? var_v0 : 1;
                        temp_t9_2->unk584 = temp_s1_2;
                        temp_ra->unk80 = (s64) (((u64) ((s64) temp_s1_2 << 0x20) >> 0x20) | (0x65841 << 0x22));
                        if (temp_t1_3 & 1) {
                            temp_ra->unk80 = (s64) (((u64) (((var_a7->unk2 & 0xFFFF) | (var_a7->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a0_3);
                            var_v0 -= 1;
                            temp_a4_5 = (u64) ((((var_a7->unk6 - 1) & 0xFFFF) | ((var_a7->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                            var_a7 += 8;
                            temp_ra->unk80 = (s64) (temp_a4_5 | temp_a2_3);
                        }
                        var_a3_2 = (void *) var_v0;
                        var_v1_3 = var_a7;
                        if ((temp_t1_3 >> 1) != 0) {
                            do {
                                temp_ra->unk80 = (s64) (((u64) (((var_v1_3->unk2 & 0xFFFF) | (var_v1_3->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a0_3);
                                temp_ra->unk80 = (s64) (((u64) ((((var_v1_3->unk6 - 1) & 0xFFFF) | ((var_v1_3->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a2_3);
                                temp_ra->unk80 = (s64) (((u64) (((var_v1_3->unkA & 0xFFFF) | (var_v1_3->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a0_3);
                                var_a3_2 -= 2;
                                temp_ra->unk80 = (s64) (((u64) ((((var_v1_3->unkE - 1) & 0xFFFF) | ((var_v1_3->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a2_3);
                                var_v1_3 += 0x10;
                            } while (var_a3_2 != NULL);
                        }
                        arg_sp0.unk-90->unk7C = 0;
                    }
                }
                arg_sp0.unk-88->unk178(arg_sp0.unk-80, 0, -arg_sp0.unk-70, var_a3_2);
                var_a3 = (void *) arg_sp0.unk-88;
                var_a2 = (void *) arg_sp0.unk-90;
                var_ra = arg_sp0.unk-E8;
            }
        }
    }
    arg_sp0.unk-58 = (s32) temp_s4->unkC;
    arg_sp0.unk-54 = (s32) arg0->unk4;
    arg_sp0.unk-3C = NULL;
    arg_sp0.unk-38 = (s32) temp_s4->unk18;
    arg_sp0.unk-28 = (s32) temp_s4->unk20;
    temp_v0_3 = arg0->unk34;
    if (temp_v0_3 != NULL) {
        var_v1_4 = temp_v0_3->unk4;
    } else {
        var_v1_4 = 1;
    }
    arg_sp0.unk-40 = var_v1_4;
    arg_sp0.unk-2C = 1;
    arg_sp0.unk-30 = 1;
    arg_sp0.unk-34 = 1;
    arg_sp0.unk-50 = (s32) arg0->unk8;
    arg_sp0.unk-4C = (s32) arg0->unkA;
    arg_sp0.unk-48 = (s32) arg0->unkC;
    arg_sp0.unk-44 = (s32) arg0->unkE;
    var_a5 = temp_s4->unk0 & 2;
    var_a4 = arg0 + 0x2C;
    temp_a0_4 = (temp_v0_3 == NULL) ? var_a4 : (temp_v0_3 + 8);
    if (var_a5 != 0) {
        var_a1_2 = 1;
        var_v1_5 = 0x100;
        if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
            arg_sp0.unk-4C = 0;
            arg_sp0.unk-50 = 0;
            arg_sp0.unk-40 = 0;
            arg_sp0.unk-30 = 0;
            arg_sp0.unk-34 = 0;
            arg_sp0.unk-44 = (s32) arg0->unk10->unkA;
            arg_sp0.unk-48 = (s32) arg0->unk10->unk8;
            temp_a6_2 = temp_s4->unk2;
            if (temp_a6_2 != 0) {
                var_v0_2 = var_a2->unk38;
            } else {
                var_a1_2 = 0;
                var_v1_5 = 0x400;
                var_v0_2 = var_a2->unk34;
            }
            temp_a2_4 = temp_s4->unk14;
            var_a4_2 = glxWindowPrivateIndex;
            if (temp_a2_4 != var_v0_2) {
                temp_a5_2 = temp_s4->unk24 & var_v1_5;
                if (temp_a5_2 == 0) {
                    arg_sp0.unk-E8 = var_ra;
                    temp_gp->unk-7E90(var_a3, var_a1_2, temp_a2_4, var_a3, glxWindowPrivateIndex, temp_a5_2, temp_a6_2, &glxWindowPrivateIndex);
                    var_ra = arg_sp0.unk-E8;
                }
                goto block_13;
            }
        } else {
            arg_sp0.unk-44 = 0;
            arg_sp0.unk-48 = 0;
            goto block_13;
        }
    } else {
        if (var_v1_4 != 0) {
            var_a6 = (u32) var_v1_4 < 0x11U;
            if (var_v1_4 != 1) {
                goto block_28;
            }
            temp_v0_4 = temp_a0_4->unk0;
            var_a6 = (u32) var_v1_4 < 0x11U;
            if ((arg0->unk8 == temp_v0_4) && (var_a4 = (void *) arg0->unkA, temp_a2_5 = temp_a0_4->unk2, var_a6 = (u32) var_v1_4 < 0x11U, (var_a4 == temp_a2_5)) && (var_a5 = arg0->unkC, var_a6 = (u32) var_v1_4 < 0x11U, (var_a5 == (temp_a0_4->unk4 - temp_v0_4))) && (var_a4 = temp_a0_4->unk6 - temp_a2_5, var_a6 = (u32) var_v1_4 < 0x11U, (arg0->unkE == var_a4))) {
                arg_sp0.unk-40 = 0;
                arg_sp0.unk-34 = 0;
            } else {
block_28:
                if (var_a6 != 0) {
                    if (var_v1_4 == 1) {
                        arg_sp0.unk-34 = 0;
                        arg_sp0.unk-3C = (void *) sp;
                        sp0 = (s32) temp_a0_4->unk0;
                        arg_sp0.unk-3C->unk4 = (s32) temp_a0_4->unk2;
                        arg_sp0.unk-3C->unk8 = (s32) (temp_a0_4->unk4 - temp_a0_4->unk0);
                        arg_sp0.unk-3C->unkC = (s32) (temp_a0_4->unk6 - temp_a0_4->unk2);
                    } else {
                        temp_t9_3 = arg0->unk10;
                        arg_sp0.unk-78 = (s64) temp_t9_3;
                        temp_a1 = arg0 + 0x2C;
                        arg_sp0.unk-E8 = var_ra;
                        arg_sp0.unk-80 = (s64) temp_a1;
                        temp_t9_3->unk154(&arg_sp0 - 0x68, temp_a1, 0, var_a3, var_a4, var_a5, var_a6, &glxWindowPrivateIndex);
                        temp_a1_2 = &arg_sp0 - 0x68;
                        arg_sp0.unk-78->unk16C(temp_a1_2, temp_a1_2, arg_sp0.unk-80);
                        temp_v0_5 = arg_sp0.unk-60;
                        temp_a7 = &arg_sp0 - 0x68;
                        if (temp_v0_5 != NULL) {
                            var_a0_2 = temp_v0_5->unk4;
                        } else {
                            var_a0_2 = 1;
                        }
                        if (var_a0_2 != 3) {
                            goto block_60;
                        }
                        var_a2_2 = 0;
                        temp_a1_3 = (temp_v0_5 == NULL) ? temp_a7 : (temp_v0_5 + 8);
                        if (var_a0_2 > 0) {
                            var_v0_3 = temp_a1_3;
loop_91:
                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($v0) */);
                            var_v0_3 += 8;
                            if (*var_v0_3 == 0) {
                                if (var_a2_2 == 0) {
                                    var_a2_2 = 1;
                                    goto block_90;
                                }
                                goto block_76;
                            }
block_90:
                            if (var_v0_3 != (temp_a1_3 + (var_a0_2 * 8))) {
                                goto loop_91;
                            }
                            goto block_60;
                        }
block_60:
                        if ((var_a0_2 != 0) && (var_a0_2 < 4)) {
                            arg_sp0.unk-34 = 0;
                            arg_sp0.unk-40 = (s32) (var_a0_2 + 1);
                            arg_sp0.unk-3C = (void *) (sp - (((var_a0_2 * 0x10) + 0x1F) & ~0xF));
                            sp0 = (s32) arg0->unk2C;
                            arg_sp0.unk-3C->unk4 = (s32) arg0->unk2E;
                            arg_sp0.unk-3C->unk8 = (s32) (arg0->unk30 - arg0->unk2C);
                            arg_sp0.unk-3C->unkC = (s32) (arg0->unk32 - arg0->unk2E);
                            temp_a5_3 = arg_sp0.unk-60;
                            var_a2_3 = (temp_a5_3 == NULL) ? temp_a7 : (temp_a5_3 + 8);
                            if (var_a0_2 > 0) {
                                var_a1_3 = 0;
                                temp_a3_2 = var_a2_3 + (var_a0_2 * 8);
                                do {
                                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a2) */);
                                    (arg_sp0.unk-3C + var_a1_3)->unk10 = (s32) var_a2_3->unk0;
                                    (arg_sp0.unk-3C + var_a1_3)->unk14 = (s32) var_a2_3->unk2;
                                    (arg_sp0.unk-3C + var_a1_3)->unk18 = (s32) (var_a2_3->unk4 - var_a2_3->unk0);
                                    temp_v1_2 = var_a2_3->unk6;
                                    temp_v0_6 = var_a2_3->unk2;
                                    var_a2_3 += 8;
                                    (arg_sp0.unk-3C + var_a1_3)->unk1C = (s32) (temp_v1_2 - temp_v0_6);
                                    var_a1_3 += 0x10;
                                } while (var_a2_3 != temp_a3_2);
                            }
                            arg_sp0.unk-78->unk160(temp_a7);
                            var_ra = arg_sp0.unk-E8;
                        } else {
block_76:
                            temp_v0_7 = mgrasPolyGlyphBltTE9(arg_sp0.unk-78, &arg_sp0 - 0x68);
                            if (temp_v0_7 > 0) {
                                arg_sp0.unk-34 = 0;
                                arg_sp0.unk-40 = (s32) (temp_v0_7 + 1);
                                arg_sp0.unk-3C = (void *) (sp - (((temp_v0_7 * 0x10) + 0x1F) & ~0xF));
                                sp0 = (s32) arg0->unk2C;
                                arg_sp0.unk-3C->unk4 = (s32) arg0->unk2E;
                                arg_sp0.unk-3C->unk8 = (s32) (arg0->unk30 - arg0->unk2C);
                                arg_sp0.unk-3C->unkC = (s32) (arg0->unk32 - arg0->unk2E);
                                if (temp_v0_7 > 0) {
                                    var_v1_6 = &sub_5e510000 - 0x1768;
                                    var_a2_4 = 0;
                                    temp_a3_3 = (temp_v0_7 * 8) + var_v1_6;
                                    do {
                                        (arg_sp0.unk-3C + var_a2_4)->unk10 = (s32) var_v1_6->unk0;
                                        (arg_sp0.unk-3C + var_a2_4)->unk14 = (s32) var_v1_6->unk2;
                                        (arg_sp0.unk-3C + var_a2_4)->unk18 = (s32) (var_v1_6->unk4 - var_v1_6->unk0);
                                        temp_a4_6 = var_v1_6->unk6;
                                        temp_a6_3 = var_v1_6->unk2;
                                        var_v1_6 += 8;
                                        temp_a5_4 = arg_sp0.unk-3C + var_a2_4;
                                        var_a2_4 += 0x10;
                                        temp_a5_4->unk1C = (s32) (temp_a4_6 - temp_a6_3);
                                    } while (var_v1_6 != temp_a3_3);
                                }
                            } else {
                                arg_sp0.unk-40 = 0;
                            }
                            arg_sp0.unk-78->unk160(&arg_sp0 - 0x68);
                            var_ra = arg_sp0.unk-E8;
                        }
                    }
                } else {
                    arg_sp0.unk-40 = 0;
                }
            }
        } else {
            arg_sp0.unk-44 = 0;
            arg_sp0.unk-48 = 0;
        }
block_13:
        var_a4_2 = glxWindowPrivateIndex;
    }
    temp_v0_8 = *(arg0->unk84 + (var_a4_2 * 4));
    var_a0_3 = 0;
    if (temp_v0_8 != NULL) {
        var_a0_3 = temp_v0_8->unk1E;
    }
    temp_v1_3 = (arg_sp0.unk-24 & 0x0FFFFFFF) | (var_a0_3 << 0x1C);
    arg_sp0.unk-24 = temp_v1_3;
    if (temp_v0_8 != NULL) {
        var_a0_4 = temp_v0_8->unk1C;
    } else {
        var_a0_4 = 0;
    }
    temp_v0_9 = (temp_v1_3 & ~0xF00000) | ((var_a0_4 & 0xF) << 0x14);
    arg_sp0.unk-24 = temp_v0_9;
    temp_v0_10 = temp_v0_9 & ~0x0F000000;
    if ((temp_v0_9 >> 0x1C) != 0) {
        arg_sp0.unk-E8 = var_ra;
        arg_sp0.unk-24 = temp_v0_10;
    } else {
        arg_sp0.unk-E8 = var_ra;
        arg_sp0.unk-24 = (s32) (((((*(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk18 - temp_s6->unk4C) & 0xF) << 0x18) | temp_v0_10);
    }
    if (temp_gp->unk-74DC(temp_s6->unk64, 0x3F3, &arg_sp0 - 0x58) == -1) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2108, arg_sp0.unk-58, arg_sp0.unk-54, errno, -1);
    }
    temp_v1_4 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_v0_11 = temp_v1_4->unk4;
    if (!(temp_v0_11 & 2)) {
        temp_v1_4->unk4 = (u8) (temp_v0_11 | 2);
        temp_v1_4->unk5 = (u8) (temp_v1_4->unk5 & ~2);
    }
}

void mgrasValidateSwapbuf(void *arg0, void *arg1) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a3;
    s32 temp_a4;
    u32 temp_at;
    u32 temp_v1;
    u8 temp_a2;
    void *temp_a0;
    void *temp_gp;

    temp_a4 = arg1->unkC;
    sp0 = temp_a4;
    temp_a3 = arg0->unk4;
    sp4 = temp_a3;
    sp8 = arg1->unk14;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x6D1E8;
    if (temp_gp->unk-74DC(arg0->unk10->unk74->unk64, 0x3F4, sp, temp_a3, temp_a4) == -1) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2148, sp0, sp4, errno);
    }
    temp_gp->unk-734C(arg0->unk4);
    temp_at = globalSerialNumber + 1;
    temp_v1 = (temp_at <= 0x10000000U) ? temp_at : 1U;
    arg0->unk14 = temp_v1;
    temp_a0 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_a2 = temp_a0->unk4;
    globalSerialNumber = temp_v1;
    if (!(temp_a2 & 8)) {
        temp_a0->unk4 = (u8) (temp_a2 | 8);
        temp_a0->unk5 = (u8) (temp_a0->unk5 & ~8);
    }
}

void mgrasValidateReservedMode(s64 arg0, s32 arg1) {
    s64 sp8;
    void *temp_gp;
    void *temp_s1;

    sp8 = arg0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x6D0DC;
    temp_s1 = (arg1 * 0x24) + *(arg0->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (temp_gp->unk-74DC(arg0->unk74->unk64, 0x6D670001, sp, arg1, temp_s1->unkB4) == -1) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2188);
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x21C8, arg1, temp_s1->unkA0, errno);
    }
    temp_gp->unk-7590(sp8, arg1, temp_s1->unkB0, temp_s1->unkB4);
}

void mgrasValidateMode(void *arg0, void *arg1, s64 arg2) {
    s64 sp58;
    s64 sp20;
    s64 sp18;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s5;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4;
    s32 var_s4;
    s32 var_s4_2;
    s64 var_ra;
    void *temp_a7;
    void *temp_gp;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    var_ra = saved_reg_ra;
    sp20 = arg2;
    temp_s2 = arg0->unk10;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x6CFF0;
    temp_s2_2 = temp_s2->unk74;
    sp18 = (s64) *(temp_s2->unk1B4 + (temp_gp->unk-3140 * 4));
    if (arg1->unk14 >= 0) {
        temp_v0 = arg0->unk78;
        if (temp_v0 != NULL) {
            var_a0 = temp_v0->unk0;
        } else {
            var_ra = sp58;
            var_a0 = *temp_gp->unk-7598(arg0, 0x70000)->unk78;
        }
        var_a0_2 = 0;
        temp_s3 = (temp_s2_2->unk58 + ((var_a0 - temp_s2_2->unk50) * 0x14))->unk4;
        if (arg0->unk1 != 2) {
            temp_v0_2 = arg0->unk78;
            if (temp_v0_2 != NULL) {
                var_a1 = temp_v0_2->unk8;
            } else {
                sp58 = var_ra;
                var_a1 = temp_gp->unk-7598(arg0)->unk78->unk8;
            }
            sp58 = var_ra;
            var_a0_2 = var_a1;
        } else {
            sp58 = var_ra;
        }
        temp_v0_3 = temp_gp->unk-7348(var_a0_2, 6);
        if (temp_v0_3 == NULL) {
            var_a0_3 = *(temp_s2_2->unk7C + (temp_s3 * 0x18))->unk4;
        } else {
            temp_a1 = *temp_v0_3->unk44;
            var_a0_3 = temp_a1;
            if (temp_a1 >= 0) {

            } else {
                var_a0_3 = *(temp_s2_2->unk7C + (temp_s3 * 0x18))->unk4;
            }
        }
        temp_s5 = arg1->unk14;
        temp_a7 = (temp_s5 * 0x24) + sp20 + 0x98;
        temp_a6 = temp_s5 < 0x20;
        temp_a5 = (s32) (temp_s2_2->unk74 + (var_a0_3 * 0x1C))->unk18 >> 8;
        temp_v0_4 = arg1->unk20;
        temp_s4 = arg1->unk24;
        temp_a1_2 = temp_a7->unk10 & 8;
        if (temp_a6 != 0) {
            var_s4 = (temp_s4 & ~0x3E0) | (temp_a5 << 5);
            if (temp_a1_2 != 0) {
                var_a3 = temp_a7->unkC & 0x3FFC1F;
                var_s4_2 = var_s4 & ((-1 << 0x16) | 0x3E0);
                goto block_14;
            }
        } else {
            var_s4 = (temp_s4 & ~0xF8) | (temp_a5 * 8);
            if (temp_a1_2 != 0) {
                var_s4_2 = var_s4 & ~0x107;
                var_a3 = temp_a7->unkC & 0x107;
block_14:
                var_s4 = var_a3 | var_s4_2;
            }
        }
        temp_a3 = temp_v0_4 & 4;
        var_a4 = ~0x40000000;
        arg1->unk24 = var_s4;
        if (temp_v0_4 & 2) {
            var_a4 &= var_s4;
            var_s4 = (temp_a3 == 0) ? var_a4 : (var_s4 | 0x40000000);
        }
        sp0 = arg1->unkC;
        temp_a7_2 = (temp_a6 == 0) ? 0x100 : 0x400;
        temp_a6_2 = temp_s3 ^ 7;
        temp_a7_3 = temp_a7_2 | var_s4;
        sp8 = temp_s5;
        temp_s4_2 = (temp_a6_2 != 0) ? temp_a7_3 : (~temp_a7_2 & var_s4);
        spC = temp_s4_2;
        sp4 = arg0->unk4;
        temp_a5_2 = arg1->unk20;
        sp10 = temp_a5_2;
        if (temp_gp->unk-74DC(temp_s2_2->unk64, 0x3F9, sp, temp_a3, var_a4, temp_a5_2, temp_a6_2, temp_a7_3) == -1) {
            ErrorF(&sub_5e4f0000 + 0x21F0);
            ErrorF(&sub_5e4f0000 + 0x2220, sp0, sp4, errno);
        }
        temp_v1 = temp_s5 * 0xC;
        *(sp18->unk3C + temp_v1) = temp_s5;
        (sp18->unk3C + temp_v1)->unk4 = (s32) arg1->unk20;
        (sp18->unk3C + temp_v1)->unk8 = temp_s4_2;
    }
}

s32 mgrasNeedCID(void *arg0) {
    s64 sp10;
    ? (*temp_t9)(s16 *);
    s16 *temp_a6;
    s16 *var_a0;
    s32 var_a2;
    s32 var_a5;
    u32 var_a1;
    void *temp_a1;
    void *temp_a2;
    void *temp_s0;

    temp_a2 = arg0->unk34;
    var_a1 = 1;
    temp_s0 = arg0->unk10;
    if (temp_a2 != NULL) {
        var_a1 = temp_a2->unk4;
    }
    if (var_a1 >= 2U) {
        if (var_a1 >= 0x11U) {
            return 1;
        }
        temp_a1 = arg0 + 0x2C;
        sp10 = (s64) temp_a1;
        temp_s0->unk154(sp, temp_a1, 0, arg0);
        temp_s0->unk16C(sp, sp, sp10);
        var_a5 = 1;
        if (sp8 != NULL) {
            var_a5 = sp8->unk4;
        }
        if (var_a5 != 3) {
            goto block_8;
        }
        var_a2 = 0;
        temp_a6 = (sp8 == NULL) ? sp : (sp8 + 8);
        var_a0 = temp_a6;
        if (var_a5 > 0) {
loop_18:
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a0) */);
            var_a0 += 8;
            if (*var_a0 == 0) {
                if (var_a2 == 0) {
                    var_a2 = 1;
                    goto block_17;
                }
                goto block_10;
            }
block_17:
            if (var_a0 != (temp_a6 + (var_a5 * 8))) {
                goto loop_18;
            }
            goto block_8;
        }
block_8:
        if ((var_a5 == 0) || (var_a5 >= 4)) {
block_10:
            temp_t9 = temp_s0->unk160;
            if (mgrasPolyGlyphBltTE9((s64) temp_s0, sp) > 0) {
                temp_t9(sp);
                return 0;
            }
            temp_t9(sp);
            return 1;
        }
        temp_s0->unk160(sp);
        return 0;
    }
    return 0;
}

void mgrasDrawCID(void *arg0, void *arg1, s64 arg2) {
    s32 temp_t8;
    s32 var_a0;
    s32 var_a4;
    s32 var_t0;
    s64 temp_a1;
    s64 temp_a3_2;
    s64 temp_a4;
    u64 temp_a5;
    void *temp_a3;
    void *temp_at;
    void *temp_t1;
    void *temp_t2;
    void *temp_t3;
    void *var_a0_2;
    void *var_a7;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0x6BB28;
    temp_a3 = arg1->unk8;
    temp_t1 = *(arg0->unk10->unk1B4 + (temp_at->unk-3140 * 4));
    var_a7 = (temp_a3 == NULL) ? arg1 : (temp_a3 + 8);
    temp_t2 = temp_t1->unk4;
    var_a0 = 1;
    temp_t3 = temp_t1->unk0;
    if (temp_a3 != NULL) {
        var_a0 = temp_a3->unk4;
    }
    var_t0 = var_a0;
    if (var_a0 != 0) {
        temp_a1 = 0x61181 << 0x22;
        temp_t3->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
        temp_t2->unk440 = 0x100000;
        temp_t3->unk70080 = (s64) temp_at->unk-32C0;
        temp_a4 = (arg2 > 3) ? 0 : arg2;
        temp_t2->unk58C = 0;
        temp_t3->unk70080 = (s64) (0x658C1 << 0x22);
        temp_t2->unk590 = 0;
        temp_t3->unk70080 = (s64) (0x65901 << 0x22);
        temp_t2->unk588 = 0xFF;
        temp_t3->unk70080 = (s64) ((0x65881 << 0x22) | 0xFF);
        temp_t2->unk5EC = 0xC00;
        temp_t3->unk70080 = (s64) ((0x65EC1 << 0x22) | 0xC00);
        temp_t2->unk5D8 = (s32) temp_a4;
        temp_t3->unk70080 = (s64) (((u64) (temp_a4 << 0x20) >> 0x20) | (0x65D81 << 0x22));
        temp_t2->unk5DC = 0;
        temp_t3->unk70080 = (s64) (0x65DC1 << 0x22);
        temp_t8 = (var_a0 >= 1) ? var_a0 : 1;
        temp_t2->unk5E0 = 0;
        temp_t3->unk70080 = (s64) (0x65E01 << 0x22);
        temp_a3_2 = 0x711C1 << 0x22;
        temp_t2->unk584 = 0x142600;
        temp_t3->unk70080 = (s64) temp_at->unk-3278;
        if (temp_t8 & 1) {
            temp_t3->unk70080 = (s64) (((u64) (((var_a7->unk2 & 0xFFFF) | (var_a7->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a1);
            var_t0 -= 1;
            temp_a5 = (u64) ((((var_a7->unk6 - 1) & 0xFFFF) | ((var_a7->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
            var_a7 += 8;
            temp_t3->unk70080 = (s64) (temp_a5 | temp_a3_2);
        }
        var_a4 = var_t0;
        var_a0_2 = var_a7;
        if ((temp_t8 >> 1) != 0) {
            do {
                temp_t3->unk70080 = (s64) (((u64) (((var_a0_2->unk2 & 0xFFFF) | (var_a0_2->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a1);
                temp_t3->unk70080 = (s64) (((u64) ((((var_a0_2->unk6 - 1) & 0xFFFF) | ((var_a0_2->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | temp_a3_2);
                temp_t3->unk70080 = (s64) (((u64) (((var_a0_2->unkA & 0xFFFF) | (var_a0_2->unk8 << 0x10)) << 0x20) >> 0x20) | temp_a1);
                var_a4 -= 2;
                temp_t3->unk70080 = (s64) (((u64) ((((var_a0_2->unkE - 1) & 0xFFFF) | ((var_a0_2->unkC - 1) << 0x10)) << 0x20) >> 0x20) | temp_a3_2);
                var_a0_2 += 0x10;
            } while (var_a4 != 0);
        }
        temp_t1->unk7C = 0;
    }
}

void mgrasReloadDummyDID(void *arg0, s32 arg1, s32 arg2) {
    s64 sp40;
    s64 sp38;
    ? sp28;
    ? sp18;
    ? sp8;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_at;
    s32 temp_s3_2;
    s32 var_a3;
    void *temp_s1;
    void *temp_s3;

    temp_s1 = arg0->unk74;
    temp_s3 = *(arg0->unk1B4 + (saved_reg_gp->unk-3140 * 4));
    arg0->unk154(&sp8, sp, 0, 0, 0, arg0->unk8, arg0->unkA);
    arg0->unk154(&sp18, NULL, 0);
    temp_at = temp_s3->unk70;
    arg0->unk16C(&sp18, &sp8, (arg1 == 0) ? temp_at : (temp_at + 0xC));
    var_a3 = 8;
    if ((sp20 == NULL) || (sp20->unk4 != 0)) {
        if (arg1 != 0) {
            sp38 = 8;
            sp40 = 0x20;
            temp_s3->unk38 = arg2;
        } else {
            var_a3 = 0x20;
            sp38 = 0x20;
            sp40 = 0;
            temp_s3->unk34 = arg2;
        }
        temp_s3_2 = arg2 * 0xC;
        arg0->unk154(&sp28, NULL, 0, var_a3);
        arg0->unk158(&sp28, temp_s1->unk60 + temp_s3_2);
        temp_a0 = temp_s1->unk60 + temp_s3_2;
        arg0->unk168(temp_a0, temp_a0, &sp18);
        temp_a4 = sp40 * 0xC;
        saved_reg_gp->unk-7DF4(arg0, arg1, sp38, temp_s1->unk60 + temp_a4, temp_a4, sp40);
        arg0->unk158(temp_s1->unk60 + temp_s3_2, &sp28);
        arg0->unk160(&sp28);
    }
    arg0->unk160(&sp18);
    arg0->unk160(&sp8);
}
/* Warning: struct _Window is not defined (only forward-declared) */
/* Warning: struct RegionRec is not defined (only forward-declared) */
