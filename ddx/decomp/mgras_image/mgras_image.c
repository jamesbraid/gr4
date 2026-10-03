? _clone_6_miPolyFillArc(s32, s32, s32, s32, s32);  /* extern */
? memmove(s32, void *, s32);                        /* extern */
extern ? PixmapWidthPaddingInfo;
extern ? __iob;
extern s32 glxScreenPrivateIndex;
extern ? sub_5e4f0000;
extern ? sub_5e500000;

void mgrasDrawMonoImage(s32 arg5, s32 arg6, s32 arg7) {
    _clone_6_miPolyFillArc(0, arg5, arg6, arg7, 0);
}

void mgrasDrawOpaqueMonoImage(s32 arg_sp4) {
    _clone_6_miPolyFillArc(arg_sp4, 1);
}

void mgrasDrawImage(void *pDrawable, void *pGC, s32 depth, s32 x, s32 y, s32 w, s32 h, s32 leftPad, s32 format, s8 *pImage) {
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    s32 sp4;
    s16 temp_a6;
    s16 temp_t0;
    s16 temp_t2;
    s16 var_t1;
    s32 temp_a7;
    s32 temp_s0;
    s64 temp_s4;
    u32 temp_s5;
    u32 var_s1;
    u32 var_s3;
    void *temp_gp;
    void *var_s2;

    temp_t0 = pDrawable->unk0;
    temp_t2 = pDrawable->unk4;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1AB678;
    temp_a7 = temp_t2 - temp_t0;
    if (temp_gp->unk-3128 != 0) {
        goto block_1;
    }
    if ((temp_a7 - temp_gp->unk-5564) <= 0) {
        spC = 0;
        sp4 = 0;
        mgrasDrawSolidRects(pDrawable, pGC, depth, (BoxRec *) x);
    } else {
block_1:
        var_t1 = pDrawable->unk2;
        temp_a6 = pDrawable->unk6;
        temp_s0 = (depth == 0) ? temp_a7 : depth;
        var_s1 = temp_a6 - var_t1;
        sp14 = temp_t2;
        sp10 = temp_t0;
        var_s2 = pGC;
        sp16 = temp_a6;
        sp12 = var_t1;
        var_s3 = var_s1;
        if ((u32) (var_s1 * temp_s0) > 0x140000U) {
            M2C_TRAP_IF(temp_s0 == 0);
            var_s3 = 0x140000U / (u32) temp_s0;
        }
        if ((s32) var_s1 > 0) {
            sp18 = (s64) x;
            do {
                temp_s5 = ((s32) var_s1 < (s32) var_s3) ? var_s1 : var_s3;
                temp_s4 = (s64) ((temp_s5 + var_t1) << 0x30) >> 0x30;
                sp16 = (s16) temp_s4;
                var_s1 -= temp_s5;
                spC = 1;
                var_s3 = temp_s5;
                sp4 = 0;
                mgrasDrawSolidRects(&sp10, var_s2, temp_s0, (BoxRec *) sp18);
                var_t1 = (s16) temp_s4;
                sp12 = (s16) temp_s4;
                var_s2 += temp_s5 * temp_s0;
            } while ((s32) var_s1 > 0);
        }
    }
}

void mgrasDrawImage12(void *arg0, void *arg1, s32 arg2, BoxRec *arg3, s64 arg4, void *arg5) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    s32 sp4;
    s16 temp_s3;
    s16 temp_t3;
    s16 temp_t8;
    s16 var_t2;
    s32 temp_a7;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_t0;
    s32 var_s0;
    s32 var_s3;
    s64 temp_s5;
    s64 var_a7;
    s64 var_t1;
    void *temp_gp;
    void *var_s1;

    temp_t8 = arg0->unk4;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1AB4B8;
    var_t1 = 0;
    temp_a7 = (*(arg5->unk84 + (temp_gp->unk-30F8 * 4)))->unk14;
    temp_t3 = arg0->unk0;
    temp_t0 = temp_t8 - temp_t3;
    switch (temp_a7) {                              /* irregular */
    default:
        var_t1 = 8;
        if (temp_a7 != 5) {
            var_t1 = 8;
            if (temp_a7 != 6) {
                if (temp_a7 != 7) {
                    temp_gp->unk-74EC(&sub_5e500000 + 0x50A0, 6, temp_a7);
                    return;
                }
                var_t1 = 8;
                goto block_15;
            }
block_15:
            var_a7 = 0xA;
            goto block_8;
        }
block_17:
        var_a7 = 8;
block_8:
        if (temp_gp->unk-3128 != 0) {
            goto block_9;
        }
        if (((temp_t0 * 2) - temp_gp->unk-5564) <= 0) {
            spC = 0;
            sp4 = (s32) var_t1;
            mgrasDrawSolidRects(arg0, arg1, arg2, arg3);
        } else {
block_9:
            sp14 = temp_t8;
            sp10 = temp_t3;
            var_t2 = arg0->unk2;
            temp_s3 = arg0->unk6;
            var_s0 = temp_s3 - var_t2;
            temp_s2 = (arg2 == 0) ? (temp_t0 * 2) : arg2;
            var_s1 = arg1;
            sp16 = temp_s3;
            sp12 = var_t2;
            var_s3 = var_s0;
            if (var_s0 > 0) {
                sp18 = arg4;
                sp20 = var_a7;
                sp28 = var_t1;
                do {
                    temp_s4 = (var_s0 < var_s3) ? var_s0 : var_s3;
                    temp_s5 = (s64) ((temp_s4 + var_t2) << 0x30) >> 0x30;
                    sp16 = (s16) temp_s5;
                    var_s0 -= temp_s4;
                    var_s3 = temp_s4;
                    spC = 1;
                    sp4 = (s32) sp28;
                    mgrasDrawSolidRects(&sp10, var_s1, temp_s2, arg3);
                    var_t2 = (s16) temp_s5;
                    sp12 = (s16) temp_s5;
                    var_s1 += temp_s4 * temp_s2;
                } while (var_s0 > 0);
            }
        }
        return;
    case 2:
    case 3:
        var_a7 = 1;
        goto block_8;
    case 4:
        var_t1 = 8;
        goto block_17;
    }
}

void mgrasDrawImage24(s64 arg0, void *arg1, u32 arg2, BoxRec *arg3, s64 arg4, s64 arg5, ? arg_sp0) {
    ? sp10;
    s32 spC;
    s32 sp4;
    s16 temp_a7;
    s16 temp_s3_2;
    s16 temp_t0;
    s16 var_t1;
    s32 temp_a0;
    s32 temp_s3;
    s32 temp_t1;
    s32 var_s6;
    s64 temp_a0_2;
    s64 temp_s5;
    s64 temp_t1_2;
    s64 temp_v0;
    s64 var_s0;
    s64 var_s1;
    s64 var_s1_2;
    u32 temp_s2;
    u32 temp_s4;
    u32 var_s0_3;
    u32 var_s3;
    void *temp_a1;
    void *temp_gp;
    void *var_s0_2;
    void *var_s1_3;

    var_s0 = saved_reg_s0;
    var_s1 = saved_reg_s1;
    arg_sp0.unk-78 = (s64) saved_reg_s5;
    arg_sp0.unk-90 = arg0;
    temp_a7 = arg0->unk0;
    temp_t0 = arg0->unk4;
    arg_sp0.unk-70 = (s64) saved_reg_gp;
    arg_sp0.unk-68 = (s64) saved_reg_s4;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1AB27C;
    temp_t1 = temp_t0 - temp_a7;
    temp_a0 = temp_t1 * 4;
    arg_sp0.unk-80 = (s64) saved_reg_s2;
    arg_sp0.unk-60 = (s64) saved_reg_s7;
    arg_sp0.unk-88 = (s64) saved_reg_fp;
    temp_s2 = (arg2 != 0) ? arg2 : (temp_t1 * 4);
    if (temp_gp->unk-3128 != 0) {
        goto block_1;
    }
    temp_v0 = arg_sp0.unk-90;
    if ((temp_a0 - temp_gp->unk-5564) <= 0) {
        arg_sp0.unk-98 = (s64) (temp_v0->unk6 - temp_v0->unk2);
        if (temp_s2 & 7) {
            arg_sp0.unk-A8 = (s64) saved_reg_s3;
            temp_s3 = (temp_a0 + 4) & ~7;
            arg_sp0.unk-48 = (s64) &sp10;
            if (&sp10 != NULL) {
                arg_sp0.unk-C0 = (s64) saved_reg_s1;
                arg_sp0.unk-B8 = (s64) saved_reg_s6;
                arg_sp0.unk-A0 = (s64) saved_reg_ra;
                arg_sp0.unk-B0 = (s64) saved_reg_s0;
                if (arg_sp0.unk-98 > 0) {
                    arg_sp0.unk-A0 = (s64) saved_reg_ra;
                    var_s0_2 = arg1;
                    var_s1_2 = arg_sp0.unk-48;
                    var_s6 = 1;
                    do {
                        temp_a1 = var_s0_2;
                        var_s0_2 += temp_s2;
                        temp_a0_2 = var_s1_2;
                        var_s1_2 += temp_s3;
                        temp_gp->unk-74E4(temp_a0_2, temp_a1, temp_s3);
                        var_s6 += 1;
                    } while (var_s6 != arg_sp0.unk-98);
                    var_s0 = arg_sp0.unk-B0;
                    var_s1 = arg_sp0.unk-C0;
                }
                sp4 = 8;
                spC = 0;
                mgrasDrawSolidRects((void *) arg_sp0.unk-90, (void *) arg_sp0.unk-48, temp_s3, arg3);
                arg_sp0.unk-C0 = var_s1;
                arg_sp0.unk-B0 = var_s0;
            } else {
                arg_sp0.unk-A0 = (s64) saved_reg_ra;
                temp_gp->unk-74EC(&sub_5e500000 + 0x50C8, ((temp_s3 * arg_sp0.unk-98) + 0xF) & ~0xF, temp_a7);
            }
        } else {
            spC = 0;
            arg_sp0.unk-A0 = (s64) saved_reg_ra;
            sp4 = 8;
            mgrasDrawSolidRects((void *) arg_sp0.unk-90, arg1, (s32) temp_s2, arg3);
        }
    } else {
block_1:
        temp_t1_2 = arg_sp0.unk-90;
        arg_sp0.unk-A8 = (s64) saved_reg_s3;
        temp_s3_2 = temp_t1_2->unk6;
        var_t1 = temp_t1_2->unk2;
        arg_sp0.unk-B0 = (s64) saved_reg_s0;
        var_s0_3 = temp_s3_2 - var_t1;
        arg_sp0.unk-3C = temp_t0;
        arg_sp0.unk-40 = temp_a7;
        arg_sp0.unk-C0 = (s64) saved_reg_s1;
        var_s1_3 = arg1;
        arg_sp0.unk-3A = temp_s3_2;
        arg_sp0.unk-3E = var_t1;
        var_s3 = var_s0_3;
        if ((u32) (var_s0_3 * temp_s2) > 0x140000U) {
            M2C_TRAP_IF(temp_s2 == 0);
            var_s3 = 0x140000U / temp_s2;
        }
        arg_sp0.unk-B8 = (s64) saved_reg_s6;
        if ((s32) var_s0_3 > 0) {
            arg_sp0.unk-50 = arg5;
            arg_sp0.unk-58 = arg4;
            arg_sp0.unk-A0 = (s64) saved_reg_ra;
            do {
                temp_s4 = ((s32) var_s0_3 < (s32) var_s3) ? var_s0_3 : var_s3;
                temp_s5 = (s64) ((temp_s4 + var_t1) << 0x30) >> 0x30;
                arg_sp0.unk-3A = (s16) temp_s5;
                var_s0_3 -= temp_s4;
                var_s3 = temp_s4;
                spC = 1;
                sp4 = 8;
                mgrasDrawSolidRects(&arg_sp0 - 0x40, var_s1_3, (s32) temp_s2, arg3);
                var_t1 = (s16) temp_s5;
                arg_sp0.unk-3E = (s16) temp_s5;
                var_s1_3 += temp_s4 * temp_s2;
            } while ((s32) var_s0_3 > 0);
        }
    }
}

void mgrasReadImage(void *pDrawable, s32 x, s32 y, s32 w, s32 h, s32 format, u32 planeMask, s8 *pImage) {
    s64 spA8;
    s64 sp90;
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
    s32 sp4;
    s16 temp_a5_4;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_v1;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_at;
    s32 var_s2;
    s32 var_s2_3;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s4;
    s32 var_s4_2;
    s64 temp_a1_3;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 temp_at_3;
    s64 temp_s3;
    s64 temp_t8;
    s64 temp_v0_3;
    s64 temp_v1_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_s3;
    s64 var_s5;
    u32 temp_lo;
    void *temp_a1_2;
    void *temp_gp;
    void *temp_v0_2;
    void *var_s2_2;

    var_ra = saved_reg_ra;
    sp20 = (s64) pDrawable;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18D600;
    temp_a3 = temp_gp->unk-30F8 * 4;
    var_s2 = 0;
    temp_s0 = pDrawable->unk4 - pDrawable->unk0;
    temp_a1 = temp_gp->unk-3140 * 4;
    temp_a6 = temp_gp->unk-5560;
    var_s5 = pDrawable->unk6 - pDrawable->unk2;
    var_s3 = var_s5;
    sp28 = (s64) temp_a6;
    (*(w->unk10->unk1B4 + temp_a1))->unk54 = -1;
    temp_a6_2 = ((*(w->unk84 + temp_a3))->unk14 == 0xB) ? 0 : temp_a6;
    temp_v0 = temp_s0 < 0x2A;
    temp_gp->unk-5560 = temp_a6_2;
    if ((var_s5 >= 2) || (temp_gp->unk-3128 != 0)) {
        goto block_2;
    }
    var_at = y == 0;
    if ((temp_s0 - temp_a6_2) > 0) {
block_2:
        var_s2 = 1;
        var_at = y == 0;
    }
    temp_s1 = (var_at != 0) ? temp_s0 : y;
    if (var_s2 != 0) {
        temp_lo = var_s5 * temp_s1;
        temp_a5 = temp_s0 + 7;
        var_s4 = x;
        temp_a0 = temp_lo > 0x140000U;
        if (temp_v0 != 0) {
            if (temp_a0 != 0) {
                temp_v0_2 = temp_gp->unk-758C(temp_s0 * var_s5, temp_a1, temp_a3, temp_lo, temp_a5, temp_a6_2);
                if (temp_v0_2 != NULL) {
                    sp4 = temp_s0;
                    mgrasTileRects((void *) sp20, temp_v0_2, temp_s0, (BoxRec *) w);
                    var_s2_2 = temp_v0_2;
                    if (var_s5 > 0) {
                        var_s3_2 = x;
                        var_s4_2 = 0;
                        do {
                            var_s4_2 += 1;
                            temp_a1_2 = var_s2_2;
                            var_s2_2 += temp_s0;
                            memmove(var_s3_2, temp_a1_2, temp_s0);
                            var_s3_2 += temp_s1;
                        } while (var_s4_2 != var_s5);
                    }
                    temp_gp->unk-75A0(temp_v0_2);
                    temp_gp->unk-5560 = (s32) sp28;
                    return;
                }
                temp_gp->unk-74EC(&sub_5e500000 + 0x51F0);
                temp_gp->unk-5560 = (s32) sp28;
                return;
            }
            sp4 = temp_s0;
            mgrasTileRects((void *) sp20, (void *) x, temp_s1, (BoxRec *) w);
            temp_gp->unk-5560 = (s32) sp28;
            return;
        }
        temp_at = sp20->unk0;
        sp10 = temp_at;
        temp_a5_2 = (temp_a5 / 24) * 0x18;
        sp30 = temp_a5_2;
        var_v0 = sp20->unk2;
        M2C_TRAP_IF(0x18 == 0);
        sp16 = sp20->unk6;
        sp12 = var_v0;
        temp_a5_3 = (s64) (((temp_at + temp_a5_2) - 7) << 0x30) >> 0x30;
        sp38 = temp_a5_3;
        sp14 = (s16) temp_a5_3;
        if (temp_a0 != 0) {
            var_s5 = (s64) (0x140000U / (u32) temp_s1);
            M2C_TRAP_IF(temp_s1 == 0);
            if (var_s3 > 0) {
                goto block_17;
            }
        } else if (var_s3 <= 0) {

        } else {
block_17:
            do {
                var_s5 = (var_s3 < var_s5) ? var_s3 : var_s5;
                sp40 = var_s5;
                temp_t8 = (s64) ((var_s5 + var_v0) << 0x30) >> 0x30;
                sp48 = temp_t8;
                sp16 = (s16) temp_t8;
                var_s3 -= var_s5;
                sp4 = temp_s0;
                mgrasTileRects(&sp10, (void *) var_s4, temp_s1, (BoxRec *) w);
                var_v0 = (s16) sp48;
                sp12 = var_v0;
                var_s4 += sp40 * temp_s1;
            } while (var_s3 > 0);
            var_ra = sp90;
        }
        temp_s3 = temp_s0 - sp30;
        if (temp_s3 != -7) {
            temp_v1 = sp20->unk6;
            temp_a5_4 = sp20->unk2;
            temp_s4 = temp_v1 - temp_a5_4;
            sp10 = (s16) sp38;
            sp14 = temp_s3 + sp38 + 7;
            sp90 = var_ra;
            sp12 = temp_a5_4;
            sp16 = temp_v1;
            if ((u32) (temp_s4 * temp_s1) > 0x140000U) {
                temp_s5 = temp_s3 + 7;
                temp_v0_3 = temp_gp->unk-758C(temp_s4 * temp_s5);
                sp18 = temp_v0_3;
                if (temp_v0_3 != 0) {
                    sp4 = temp_s0;
                    mgrasTileRects(&sp10, (void *) sp18, temp_s5, (BoxRec *) w);
                    spA8 = temp_s3;
                    if (temp_s4 > 0) {
                        var_s3_3 = 0;
                        var_s0 = sp18;
                        var_s2_3 = (sp30 + x) - 7;
                        do {
                            var_s3_3 += 1;
                            temp_a0_2 = var_s2_3;
                            var_s2_3 += temp_s1;
                            temp_a1_3 = var_s0;
                            var_s0 += spA8 + 7;
                            memmove(temp_a0_2, (void *) temp_a1_3, temp_s5);
                        } while (var_s3_3 != temp_s4);
                    }
                    temp_gp->unk-75A0((void *) sp18);
                    temp_gp->unk-5560 = (s32) sp28;
                    return;
                }
                temp_gp->unk-74EC(&sub_5e500000 + 0x51F0);
                temp_gp->unk-5560 = (s32) sp28;
                return;
            }
            sp4 = temp_s0;
            mgrasTileRects(&sp10, (sp30 + x) - 7, temp_s1, (BoxRec *) w);
            /* Duplicate return node #35. Try simplifying control flow for better match */
            temp_gp->unk-5560 = (s32) sp28;
            return;
        }
        temp_gp->unk-5560 = (s32) sp28;
        return;
    }
    if (temp_v0 != 0) {
        sp4 = temp_s0;
        mgrasTileRects((void *) sp20, (void *) x, temp_s1, (BoxRec *) w);
        temp_gp->unk-5560 = (s32) sp28;
        return;
    }
    temp_at_2 = sp20->unk0;
    sp10 = temp_at_2;
    temp_v1_2 = ((s32) (temp_s0 + 7) / 24) * 0x18;
    sp30 = temp_v1_2;
    sp16 = sp20->unk6;
    sp12 = sp20->unk2;
    temp_at_3 = (s64) (((temp_at_2 + temp_v1_2) - 7) << 0x30) >> 0x30;
    sp38 = temp_at_3;
    M2C_TRAP_IF(0x18 == 0);
    sp14 = (s16) temp_at_3;
    sp4 = temp_s0;
    mgrasTileRects(&sp10, (void *) x, temp_s1, (BoxRec *) w);
    temp_t2 = temp_s0 - sp30;
    if (temp_t2 != -7) {
        sp10 = (s16) sp38;
        sp14 = temp_t2 + sp38 + 7;
        sp4 = temp_s0;
        mgrasTileRects(&sp10, (sp30 + x) - 7, temp_s1, (BoxRec *) w);
    }
    temp_gp->unk-5560 = (s32) sp28;
}

void mgrasReadImage12(void *arg0, s32 arg1, s32 arg2, BoxRec *arg3) {
    s64 spB0;
    s64 sp60;
    s64 sp58;
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
    s32 sp4;
    s16 temp_a4;
    s16 temp_at_3;
    s16 temp_at_4;
    s16 temp_v1;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 var_a4;
    s32 var_at;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s4_3;
    s32 var_s4_4;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_at_5;
    s64 temp_t0;
    s64 temp_v0_5;
    s64 temp_v1_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_s2;
    s64 var_s3_3;
    s64 var_s5;
    u32 temp_lo;
    void *temp_a5;
    void *temp_gp;
    void *temp_v0_3;
    void *var_s4_2;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18CEEC;
    var_s3 = 0;
    temp_s2 = arg0->unk4 - arg0->unk0;
    temp_v0 = (*(arg3->unk84 + (temp_gp->unk-30F8 * 4)))->unk14;
    var_s5 = arg0->unk6 - arg0->unk2;
    sp20 = (s64) arg0;
    var_s0 = var_s5;
    temp_a5 = *(arg3->unk10->unk1B4 + (temp_gp->unk-3140 * 4));
    switch (temp_v0) {                              /* irregular */
    default:
        temp_gp->unk-74EC(&sub_5e500000 + 0x5218, 0x18CEEC, 6, temp_a5);
        return;
    case 6:
    case 7:
        sp40 = 8;
        sp48 = 0xA;
        var_a4 = ((temp_a5->unk50 ^ 1) == 0) ? 0x7FFF7FFF : -1;
block_8:
        temp_a5->unk54 = var_a4;
block_9:
        temp_v0_2 = temp_s2 < 0x2A;
        if ((var_s5 >= 2) || (temp_gp->unk-3128 != 0)) {
            goto block_11;
        }
        var_at = temp_s2 * 2;
        if (((temp_s2 * 2) - temp_gp->unk-5560) > 0) {
block_11:
            var_s3 = 1;
            var_at = temp_s2 * 2;
        }
        temp_s1 = (arg2 == 0) ? var_at : arg2;
        if (var_s3 != 0) {
            temp_lo = var_s5 * temp_s1;
            var_s4 = arg1;
            temp_a0 = temp_lo > 0x140000U;
            if (temp_v0_2 != 0) {
                temp_s0 = temp_s2 * 2;
                if (temp_a0 != 0) {
                    temp_v0_3 = temp_gp->unk-758C(temp_s0 * var_s5, 0x18CEEC, temp_lo, temp_a5);
                    var_s4_2 = temp_v0_3;
                    if (temp_v0_3 != NULL) {
                        sp4 = temp_s2;
                        mgrasTileRects((void *) sp20, var_s4_2, temp_s0, arg3);
                        var_s3_2 = arg1;
                        sp28 = (s64) var_s4_2;
                        if (var_s5 > 0) {
                            var_s2 = sp28;
                            var_s4_3 = 0;
                            do {
                                var_s4_3 += 1;
                                temp_a0_2 = var_s3_2;
                                var_s3_2 += temp_s1;
                                temp_a1 = var_s2;
                                var_s2 += temp_s0;
                                memmove(temp_a0_2, (void *) temp_a1, temp_s0);
                            } while (var_s4_3 != var_s5);
                            var_s4_2 = (void *) sp28;
                        }
                        temp_gp->unk-75A0(var_s4_2);
                        return;
                    }
                    temp_gp->unk-74EC(&sub_5e500000 + 0x5240);
                    return;
                }
                sp4 = temp_s2;
                mgrasTileRects((void *) sp20, (void *) arg1, temp_s1, arg3);
                return;
            }
            temp_lo_2 = (s32) (temp_s2 + 7) / 24;
            temp_v1 = sp20->unk0;
            sp10 = temp_v1;
            sp50 = (s64) temp_lo_2;
            temp_at = temp_lo_2 * 0x18;
            sp30 = temp_at;
            var_v0 = sp20->unk2;
            M2C_TRAP_IF(0x18 == 0);
            sp16 = sp20->unk6;
            sp12 = var_v0;
            temp_at_2 = (s64) (((temp_v1 + temp_at) - 7) << 0x30) >> 0x30;
            sp38 = temp_at_2;
            sp14 = (s16) temp_at_2;
            if (temp_a0 != 0) {
                var_s5 = (s64) (0x140000U / (u32) temp_s1);
                M2C_TRAP_IF(temp_s1 == 0);
                if (var_s0 > 0) {
                    goto block_28;
                }
            } else if (var_s0 <= 0) {

            } else {
block_28:
                do {
                    var_s5 = (var_s0 < var_s5) ? var_s0 : var_s5;
                    sp58 = var_s5;
                    temp_t0 = (s64) ((var_s5 + var_v0) << 0x30) >> 0x30;
                    sp60 = temp_t0;
                    sp16 = (s16) temp_t0;
                    var_s0 -= var_s5;
                    sp4 = temp_s2;
                    mgrasTileRects(&sp10, (void *) var_s4, temp_s1, arg3);
                    var_v0 = (s16) sp60;
                    sp12 = var_v0;
                    var_s4 += sp58 * temp_s1;
                } while (var_s0 > 0);
                var_ra = spB0;
            }
            temp_v0_4 = temp_s2 - sp30;
            if (temp_v0_4 != -7) {
                temp_a4 = sp20->unk6;
                temp_at_3 = sp20->unk2;
                temp_s5 = temp_a4 - temp_at_3;
                sp10 = (s16) sp38;
                sp14 = temp_v0_4 + sp38 + 7;
                spB0 = var_ra;
                sp12 = temp_at_3;
                sp16 = temp_a4;
                if ((u32) (temp_s5 * temp_s1) > 0x140000U) {
                    temp_s0_2 = (temp_v0_4 + 7) * 2;
                    temp_v0_5 = temp_gp->unk-758C(temp_s5 * temp_s0_2);
                    sp18 = temp_v0_5;
                    if (temp_v0_5 != 0) {
                        sp4 = temp_s2;
                        mgrasTileRects(&sp10, (void *) sp18, temp_s0_2, arg3);
                        if (temp_s5 > 0) {
                            var_s4_4 = 0;
                            var_s3_3 = sp18;
                            var_s2_2 = ((sp50 * 0x30) + arg1) - 0xE;
                            do {
                                var_s4_4 += 1;
                                temp_a0_3 = var_s2_2;
                                var_s2_2 += temp_s1;
                                temp_a1_2 = var_s3_3;
                                var_s3_3 += temp_s0_2;
                                memmove(temp_a0_3, (void *) temp_a1_2, temp_s0_2);
                            } while (var_s4_4 != temp_s5);
                        }
                        temp_gp->unk-75A0((void *) sp18);
                        return;
                    }
                    temp_gp->unk-74EC(&sub_5e500000 + 0x5240);
                    return;
                }
                sp4 = temp_s2;
                mgrasTileRects(&sp10, ((sp50 * 0x30) + arg1) - 0xE, temp_s1, arg3);
            } else {
                return;
            }
        } else {
            if (temp_v0_2 != 0) {
                sp4 = temp_s2;
                mgrasTileRects((void *) sp20, (void *) arg1, temp_s1, arg3);
                return;
            }
            temp_lo_3 = (s32) (temp_s2 + 7) / 24;
            temp_at_4 = sp20->unk0;
            sp10 = temp_at_4;
            sp50 = (s64) temp_lo_3;
            temp_v1_2 = temp_lo_3 * 0x18;
            sp30 = temp_v1_2;
            sp16 = sp20->unk6;
            sp12 = sp20->unk2;
            temp_at_5 = (s64) (((temp_at_4 + temp_v1_2) - 7) << 0x30) >> 0x30;
            sp38 = temp_at_5;
            M2C_TRAP_IF(0x18 == 0);
            sp14 = (s16) temp_at_5;
            sp4 = temp_s2;
            mgrasTileRects(&sp10, (void *) arg1, temp_s1, arg3);
            temp_v0_6 = temp_s2 - sp30;
            if (temp_v0_6 != -7) {
                sp10 = (s16) sp38;
                sp14 = temp_v0_6 + sp38 + 7;
                sp4 = temp_s2;
                mgrasTileRects(&sp10, ((sp50 * 0x30) + arg1) - 0xE, temp_s1, arg3);
            }
            return;
        }
        break;
    case 2:
    case 3:
        sp40 = 0;
        temp_a5->unk54 = -1;
        sp48 = 1;
        goto block_9;
    case 4:
    case 5:
        sp40 = 8;
        sp48 = 8;
        var_a4 = ((temp_a5->unk50 ^ 1) == 0) ? 0x0FFF0FFF : -1;
        goto block_8;
    }
}

void mgrasReadImage24(void *arg0, s32 arg1, s32 arg2, BoxRec *arg3) {
    s64 sp90;
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
    s32 sp4;
    s16 temp_a4;
    s16 temp_at_3;
    s16 temp_at_4;
    s16 temp_v1;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 var_at;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s6;
    s64 temp_a1_2;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_at_5;
    s64 temp_t0;
    s64 temp_v1_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_s3_3;
    s64 var_s5;
    u32 temp_lo;
    void *temp_a1;
    void *temp_gp;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_5;
    void *var_s2;
    void *var_s6_2;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18C728;
    temp_a3 = temp_gp->unk-3140 * 4;
    temp_v0 = *(arg3->unk10->unk1B4 + temp_a3);
    var_s3 = 0;
    sp20 = (s64) arg0;
    var_s5 = arg0->unk6 - arg0->unk2;
    temp_s2 = arg0->unk4 - arg0->unk0;
    var_s0 = var_s5;
    if ((temp_v0->unk50 == 0) || (var_at = 0xFFFFFF, ((*(arg3->unk84 + (temp_gp->unk-30F8 * 4)))->unk14 == 9))) {
        var_at = -1;
    }
    temp_v0->unk54 = var_at;
    temp_v0_2 = temp_s2 < 0x2A;
    temp_a5 = temp_s2 * 4;
    if ((var_s5 >= 2) || (temp_gp->unk-3128 != 0)) {
        goto block_4;
    }
    if (((temp_s2 * 4) - temp_gp->unk-5560) > 0) {
block_4:
        var_s3 = 1;
    }
    temp_s1 = (arg2 == 0) ? temp_a5 : arg2;
    if (var_s3 != 0) {
        temp_lo = var_s5 * temp_s1;
        var_s6 = arg1;
        temp_a0 = temp_lo > 0x140000U;
        if (temp_v0_2 != 0) {
            temp_s0 = temp_s2 * 4;
            if (temp_a0 != 0) {
                temp_v0_3 = temp_gp->unk-758C(temp_s0 * var_s5, temp_a3, temp_lo, temp_a5);
                if (temp_v0_3 != NULL) {
                    sp4 = temp_s2;
                    mgrasTileRects((void *) sp20, temp_v0_3, temp_s0, arg3);
                    var_s3_2 = arg1;
                    if (var_s5 > 0) {
                        var_s2 = temp_v0_3;
                        var_s4 = 0;
                        do {
                            var_s4 += 1;
                            temp_a0_2 = var_s3_2;
                            var_s3_2 += temp_s1;
                            temp_a1 = var_s2;
                            var_s2 += temp_s0;
                            memmove(temp_a0_2, temp_a1, temp_s0);
                        } while (var_s4 != var_s5);
                    }
                    temp_gp->unk-75A0(temp_v0_3);
                    return;
                }
                temp_gp->unk-74EC(&sub_5e500000 + 0x5268);
                return;
            }
            sp4 = temp_s2;
            mgrasTileRects((void *) sp20, (void *) arg1, temp_s1, arg3);
            return;
        }
        temp_lo_2 = (s32) (temp_s2 + 7) / 24;
        temp_v1 = sp20->unk0;
        sp10 = temp_v1;
        sp38 = (s64) temp_lo_2;
        temp_at = temp_lo_2 * 0x18;
        sp28 = temp_at;
        var_v0 = sp20->unk2;
        M2C_TRAP_IF(0x18 == 0);
        sp16 = sp20->unk6;
        sp12 = var_v0;
        temp_at_2 = (s64) (((temp_v1 + temp_at) - 7) << 0x30) >> 0x30;
        sp30 = temp_at_2;
        sp14 = (s16) temp_at_2;
        if (temp_a0 != 0) {
            var_s5 = (s64) (0x140000U / (u32) temp_s1);
            M2C_TRAP_IF(temp_s1 == 0);
            if (var_s0 > 0) {
                goto block_20;
            }
        } else if (var_s0 <= 0) {

        } else {
block_20:
            do {
                var_s5 = (var_s0 < var_s5) ? var_s0 : var_s5;
                sp40 = var_s5;
                temp_t0 = (s64) ((var_s5 + var_v0) << 0x30) >> 0x30;
                sp48 = temp_t0;
                sp16 = (s16) temp_t0;
                var_s0 -= var_s5;
                sp4 = temp_s2;
                mgrasTileRects(&sp10, (void *) var_s6, temp_s1, arg3);
                var_v0 = (s16) sp48;
                sp12 = var_v0;
                var_s6 += sp40 * temp_s1;
            } while (var_s0 > 0);
            var_ra = sp90;
        }
        temp_v0_4 = temp_s2 - sp28;
        if (temp_v0_4 != -7) {
            temp_a4 = sp20->unk6;
            temp_at_3 = sp20->unk2;
            temp_s5 = temp_a4 - temp_at_3;
            sp10 = (s16) sp30;
            sp14 = temp_v0_4 + sp30 + 7;
            sp90 = var_ra;
            sp12 = temp_at_3;
            sp16 = temp_a4;
            if ((u32) (temp_s5 * temp_s1) > 0x140000U) {
                temp_s0_2 = (temp_v0_4 + 7) * 4;
                temp_v0_5 = temp_gp->unk-758C(temp_s5 * temp_s0_2);
                var_s6_2 = temp_v0_5;
                if (temp_v0_5 != NULL) {
                    sp4 = temp_s2;
                    mgrasTileRects(&sp10, var_s6_2, temp_s0_2, arg3);
                    sp18 = (s64) var_s6_2;
                    if (temp_s5 > 0) {
                        var_s4_2 = 0;
                        var_s3_3 = sp18;
                        var_s2_2 = ((sp38 * 0x60) + arg1) - 0x1C;
                        do {
                            var_s4_2 += 1;
                            temp_a0_3 = var_s2_2;
                            var_s2_2 += temp_s1;
                            temp_a1_2 = var_s3_3;
                            var_s3_3 += temp_s0_2;
                            memmove(temp_a0_3, (void *) temp_a1_2, temp_s0_2);
                        } while (var_s4_2 != temp_s5);
                        var_s6_2 = (void *) sp18;
                    }
                    temp_gp->unk-75A0(var_s6_2);
                    return;
                }
                temp_gp->unk-74EC(&sub_5e500000 + 0x5268);
                return;
            }
            sp4 = temp_s2;
            mgrasTileRects(&sp10, ((sp38 * 0x60) + arg1) - 0x1C, temp_s1, arg3);
        }
    } else {
        if (temp_v0_2 != 0) {
            sp4 = temp_s2;
            mgrasTileRects((void *) sp20, (void *) arg1, temp_s1, arg3);
            return;
        }
        temp_lo_3 = (s32) (temp_s2 + 7) / 24;
        temp_at_4 = sp20->unk0;
        sp10 = temp_at_4;
        sp38 = (s64) temp_lo_3;
        temp_v1_2 = temp_lo_3 * 0x18;
        sp28 = temp_v1_2;
        sp16 = sp20->unk6;
        sp12 = sp20->unk2;
        temp_at_5 = (s64) (((temp_at_4 + temp_v1_2) - 7) << 0x30) >> 0x30;
        sp30 = temp_at_5;
        M2C_TRAP_IF(0x18 == 0);
        sp14 = (s16) temp_at_5;
        sp4 = temp_s2;
        mgrasTileRects(&sp10, (void *) arg1, temp_s1, arg3);
        temp_v0_6 = temp_s2 - sp28;
        if (temp_v0_6 != -7) {
            sp10 = (s16) sp30;
            sp14 = temp_v0_6 + sp30 + 7;
            sp4 = temp_s2;
            mgrasTileRects(&sp10, ((sp38 * 0x60) + arg1) - 0x1C, temp_s1, arg3);
        }
    }
}

s32 mgrasWriteFBSubBlock(void *arg0, s64 arg1, s32 arg2, s64 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s16 arg_sp4, s16 arg_spC, s16 arg_sp14) {
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s16 temp_a1;
    s16 temp_t0;
    s16 temp_t0_2;
    s16 temp_v0;
    s16 var_a1;
    s16 var_t1;
    s32 temp_a0;
    s32 temp_a3_2;
    s32 temp_at_5;
    s32 temp_ra;
    s32 temp_t0_5;
    s32 temp_t2_2;
    s32 temp_t3_2;
    s32 temp_t3_4;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1_4;
    s32 var_a0;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_a4_2;
    s64 temp_a5;
    s64 temp_a6;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_at_4;
    s64 temp_at_6;
    s64 temp_s6;
    s64 temp_t0_3;
    s64 temp_t0_4;
    s64 temp_t0_6;
    s64 temp_t2;
    s64 temp_t3_5;
    s64 temp_t8;
    s64 temp_v0_4;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 temp_v1_5;
    s64 var_a1_2;
    s64 var_s5;
    u64 temp_at_3;
    u64 temp_at_7;
    void *temp_gp;
    void *temp_s0;
    void *temp_s8;
    void *temp_t1;
    void *temp_t3;
    void *temp_t3_3;

    sp120 = arg3;
    sp80 = arg1;
    sp138 = (s64) arg_spC;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x72468;
    temp_t3 = arg0->unk10;
    temp_t3_2 = temp_t3->unk1B4;
    spB8 = (s64) temp_t3->unk74->unk64;
    temp_s8 = *((temp_gp->unk-3140 * 4) + temp_t3_2);
    temp_t1 = *((glxScreenPrivateIndex * 4) + temp_t3_2);
    temp_s0 = temp_s8->unk4;
    temp_t3_3 = temp_s8->unk0;
    if ((arg_sp14 * arg_sp4 * arg_spC) > 0) {
        if (arg7 != 0) {
            temp_gp->unk-7344(&__iob + 0x20, &sub_5e4f0000 + 0x23B8);
            return 0x11;
        }
        temp_a1 = sp80->unk4;
        if (temp_a1 == arg_sp14) {
            if ((s32) temp_t1->unk38 >= ((arg4 + temp_a1) - 1)) {
                if (arg4 >= (s32) temp_t1->unk36) {
                    if (sp80->unk8 != 0) {
                        temp_t0 = sp80->unk0;
                        sp88 = (s64) temp_t0;
                        var_t1 = sp80->unk2;
                        if (temp_t0 >= 0x2A) {
                            M2C_TRAP_IF(0x18 == 0);
                            sp88 = (((s32) (sp88 + 0x1E) / 24) * 0x18) - 7;
                        }
                        if (sp88 == 1) {
                            var_t1 = ((var_t1 ^ 1) == 0) ? (var_t1 + 1) : var_t1;
                        }
                        temp_t2 = arg2 + arg_sp4;
                        temp_at = arg2 << 0x10;
                        spA8 = temp_at;
                        temp_at_2 = temp_at | ((((s64) (temp_t2 << 0x30) >> 0x30) - 1) & 0xFFFF);
                        temp_s0->unk51C = (s32) temp_at_2;
                        temp_t3_3->unk70080 = (s64) (((u64) (temp_at_2 << 0x20) >> 0x20) | (0x651C1 << 0x22));
                        temp_t0_2 = arg0->unk10->unkA;
                        temp_v1 = (s64) ((sp120 + sp138) << 0x30) >> 0x30;
                        temp_s0->unk520 = (s32) ((((temp_t0_2 - sp120) - 1) & 0xFFFF) | ((temp_t0_2 - temp_v1) << 0x10));
                        temp_v0 = arg0->unk10->unkA;
                        temp_t3_3->unk70080 = (s64) (((u64) (((((temp_v0 - sp120) - 1) & 0xFFFF) | ((temp_v0 - temp_v1) << 0x10)) << 0x20) >> 0x20) | (0x65201 << 0x22));
                        temp_s0->unk53C = 0x11;
                        temp_t3_3->unk70080 = (s64) ((0x653C1 << 0x22) | 0x11);
                        var_a1 = sp80->unk4;
                        spE8 = 0;
                        if (var_a1 > 0) {
                            temp_s6 = 0x65601 << 0x22;
                            temp_t0_3 = arg_sp4 * 6;
                            sp78 = temp_t0_3;
                            spB0 = (temp_t2 - 1) << 0x10;
                            spF0 = arg4 * 4;
                            temp_at_3 = (u64) (temp_t0_3 << 0x20) >> 0x20;
                            temp_a3 = sp88 * 6;
                            spE0 = temp_a3;
                            sp70 = temp_at_3 | (0x28081 << 0x22);
                            sp68 = ((u64) (temp_a3 << 0x20) >> 0x20) | (0x20101 << 0x22);
                            sp60 = temp_at_3 | (0x20201 << 0x22);
                            spD8 = var_t1 * sp88 * 6;
                            spD0 = (s64) sp0;
                            spF8 = (arg5 + (arg6 * sp88)) * 6;
loop_12:
                            if (sp138 > 0) {
                                var_a0 = 0x100000 / spE0;
                                M2C_TRAP_IF(spE0 == 0);
                                spA0 = (s64) (spF0 + temp_s8);
                                sp50 = sp120;
                                sp58 = spF8;
                                temp_t0_4 = 0x0C000000 | ((temp_gp->unk-70B7 << 0xE) | temp_gp->unk-710C);
                                sp98 = temp_t0_4;
                                sp150 = (s64) var_a0;
                                sp90 = (0x65841 << 0x22) | ((u64) (temp_t0_4 << 0x20) >> 0x20);
                                var_a1_2 = sp138;
                                sp128 = var_a0 + sp138;
                                sp130 = var_a0 * sp88 * 6;
loop_19:
                                temp_a4 = (sp138 < var_a0) ? var_a1_2 : sp150;
                                var_s5 = temp_a4;
                                if (arg_sp4 == 1) {
                                    sp160 = (s64) var_a0;
                                    sp158 = var_a1_2;
                                    var_s5 = ((temp_a4 ^ 1) == 0) ? (temp_a4 + 1) : var_s5;
                                }
                                sp160 = (s64) var_a0;
                                temp_s0->unk584 = (s32) sp98;
                                temp_t3_3->unk70080 = sp90;
                                temp_s0->unk58C = -1;
                                temp_t3_3->unk70080 = (s64) temp_gp->unk-32B0;
                                temp_s0->unk590 = -1;
                                temp_t3_3->unk70080 = (s64) temp_gp->unk-32B8;
                                temp_s0->unk588 = 0;
                                temp_a5 = 0x65881 << 0x22;
                                temp_t3_3->unk70080 = temp_a5;
                                temp_s0->unk16C = 0;
                                temp_t3_3->unk70080 = (s64) (0x616C1 << 0x22);
                                sp158 = var_a1_2;
                                temp_s0->unk5B4 = (u32) temp_s8->unk8;
                                temp_at_4 = 0x65B41 << 0x22;
                                temp_t3_3->unk70080 = (s64) (temp_s8->unk8 | temp_at_4);
                                temp_a0 = (spA0->unk10 & 0x3FF) | (-0x400 & spD0);
                                temp_v1_2 = (0xFFF003FF & temp_a0) | ((temp_a0 & 0x3FF) << 0xA);
                                temp_s0->unk5B4 = (u32) temp_v1_2;
                                temp_t3_4 = sp80->unk8 + sp58;
                                temp_t3_3->unk70080 = (s64) (((u64) (temp_v1_2 << 0x20) >> 0x20) | temp_at_4);
                                temp_t8 = temp_t3_4 & 7;
                                temp_t3_5 = temp_t3_4 - temp_t8;
                                sp140 = temp_t3_5;
                                sp148 = temp_t8;
                                spD0 = temp_v1_2;
                                temp_a6 = !(temp_v1_2 & 0x3FF) ? 0x33 : 0xFF;
                                temp_a2 = spA8 | (sp50 & 0xFFFF);
                                temp_s0->unk588 = (s32) temp_a6;
                                temp_a4_2 = ((u64) (temp_a6 << 0x20) >> 0x20) | temp_a5;
                                temp_t3_3->unk70080 = temp_a4_2;
                                temp_a3_2 = ((sp50 + var_s5) - 1) & 0xFFFF;
                                temp_s0->unk118 = (s32) temp_a2;
                                temp_v1_3 = spB0 | temp_a3_2;
                                temp_t3_3->unk70080 = (s64) (((u64) (temp_a2 << 0x20) >> 0x20) | (0x61181 << 0x22));
                                temp_s0->unk11C = (s32) temp_v1_3;
                                temp_t2_2 = temp_gp->unk-31A8 - 1;
                                temp_t3_3->unk70080 = (s64) (((u64) (temp_v1_3 << 0x20) >> 0x20) | (0x611C1 << 0x22));
                                temp_ra = temp_t8 + ((((var_s5 - 1) * sp88) + arg_sp4) * 6);
                                sp1C = (s32) temp_t3_5;
                                sp14 = (temp_t2_2 & temp_t3_5) + temp_ra;
                                sp10 = ~temp_t2_2 & temp_t3_5;
                                sp18 = 1;
                                spC = 3;
                                sp20 = temp_ra;
                                sp8 = 0xC;
                                if (temp_gp->unk-74DC(spB8, 0x6D67000B, &sp8, temp_a3_2, temp_a4_2, temp_a5, temp_a6, 3) >= 0) {
                                    temp_at_5 = sp78 >> 0x1F;
                                    temp_t0_5 = sp78 >> 0x1F;
                                    temp_v0_2 = 8 - (((((sp78 ^ temp_at_5) - temp_at_5) & 7) ^ temp_t0_5) - temp_t0_5);
                                    temp_v1_4 = temp_v0_2 >> 0x1F;
                                    temp_t3_3->unk70080 = (s64) ((0x30001 << 0x22) | 0x600);
                                    temp_v0_3 = temp_v0_2 >> 0x1F;
                                    temp_s0->unk580 = 3;
                                    temp_t3_3->unk70080 = (s64) ((0x65801 << 0x22) | 3);
                                    temp_s0->unk440 = 0x11400000;
                                    temp_t3_3->unk70080 = (s64) (0x64401045 << 0x16);
                                    temp_t3_3->unk70080 = sp70;
                                    temp_at_6 = ((((((temp_v0_2 ^ temp_v1_4) - temp_v1_4) & 7) ^ temp_v0_3) - temp_v0_3) << 0xE) | 0x71;
                                    temp_t3_3->unk70080 = (s64) ((0x28181 << 0x22) | 0xC);
                                    temp_s0->unk564 = (s32) temp_at_6;
                                    temp_v0_4 = (var_s5 << 0x10) | arg_sp4;
                                    temp_t3_3->unk70080 = (s64) (((u64) (temp_at_6 << 0x20) >> 0x20) | (0x65641 << 0x22));
                                    temp_s0->unk54C = (s32) temp_v0_4;
                                    temp_at_7 = (u64) (temp_v0_4 << 0x20) >> 0x20;
                                    temp_t3_3->unk70080 = (s64) ((0x654C1 << 0x22) | temp_at_7);
                                    temp_s0->unk560 = (s32) temp_v0_4;
                                    temp_t3_3->unk70080 = (s64) (temp_s6 | temp_at_7);
                                    temp_t3_3->unk70080 = (s64) ((0x60301 << 0x22) | 1);
                                    temp_t3_3->unk70080 = (s64) ((0x71141 << 0x22) | 0x18);
                                    if (temp_s8->unk7C != 1) {
                                        temp_v1_5 = 0x617C1 << 0x22;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                        temp_t3_3->unk70080 = temp_v1_5;
                                    }
                                    temp_s8->unk7C = 1;
                                    temp_s0->unk408 = 1;
                                    temp_t3_3->unk70080 = (s64) ((0x64081 << 0x22) | 1);
                                    temp_t3_3->unk70080 = (s64) (0x100009 << 0x1F);
                                    temp_t3_3->unk70080 = sp68;
                                    temp_t3_3->unk70080 = (s64) (((u64) (sp148 << 0x20) >> 0x20) | (0x20141 << 0x22));
                                    temp_t3_3->unk70080 = (s64) (((u64) (((temp_gp->unk-31A8 - 1) & sp140) << 0x20) >> 0x20) | (0x20181 << 0x22));
                                    temp_t3_3->unk70080 = (s64) (((u64) (var_s5 << 0x20) >> 0x20) | (0x201C1 << 0x22));
                                    temp_t3_3->unk70080 = sp60;
                                    temp_t3_3->unk7000C = 0x10000;
                                    temp_t3_3->unk70084 = 0x80B04;
                                    temp_t3_3->unk70080 = (s64) (0x2DC00381 << 0xA);
                                    do {

                                    } while (!(0x10000 & temp_t3_3->unk70008));
                                    temp_t3_3->unk70080 = (s64) (0x60301 << 0x22);
                                    temp_t3_3->unk70080 = (s64) (0x657C1 << 0x22);
                                    sp8 = 3;
                                    temp_gp->unk-74DC(spB8, 0x6D67000B, &sp8);
                                    sp58 += sp130;
                                    temp_s0->unk560 = 0;
                                    temp_t3_3->unk70080 = temp_s6;
                                    var_a1_2 = sp158 - sp150;
                                    temp_s0->unk580 = 0;
                                    var_a0 = sp150 + sp160;
                                    temp_t3_3->unk70080 = (s64) (0x65801 << 0x22);
                                    sp50 += sp150;
                                    temp_t3_3->unk70080 = (s64) ((0x30001 << 0x22) | 0xE00);
                                    if (var_a0 < sp128) {
                                        goto loop_19;
                                    }
                                    var_a1 = sp80->unk4;
                                    goto block_25;
                                }
                                temp_gp->unk-74EC(&sub_5e4f0000 + 0x2390);
                                return 0x11;
                            }
block_25:
                            temp_t0_6 = spE8 + 1;
                            spE8 = temp_t0_6;
                            spF0 += 4;
                            spF8 += spD8;
                            if (temp_t0_6 >= var_a1) {
                                /* Duplicate return node #26. Try simplifying control flow for better match */
                                temp_s0->unk53C = 0;
                                temp_t3_3->unk70080 = (s64) (0x653C1 << 0x22);
                                return 0;
                            }
                            goto loop_12;
                        }
                        temp_s0->unk53C = 0;
                        temp_t3_3->unk70080 = (s64) (0x653C1 << 0x22);
                        return 0;
                    }
                    return 0;
                }
                /* Duplicate return node #29. Try simplifying control flow for better match */
                temp_gp->unk-7344(&__iob + 0x20, &sub_5e4f0000 + 0x2368);
                return 0x11;
            }
            temp_gp->unk-7344(&__iob + 0x20, &sub_5e4f0000 + 0x2368);
            return 0x11;
        }
        temp_gp->unk-7344(&__iob + 0x20, &sub_5e4f0000 + 0x23E0);
        return 0x11;
    }
    return 0;
}

s32 mgrasReadFBBlock(void *arg0, s64 arg1, s64 arg2, s32 arg3, s64 arg4, s16 arg5) {
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s16 temp_a6;
    s16 temp_a7;
    s16 temp_t0;
    s16 var_a5;
    s16 var_a7;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6_2;
    s32 temp_at_3;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_v0_2;
    s32 temp_v1_3;
    s32 var_a3;
    s32 var_s4;
    s64 temp_a0;
    s64 temp_a1_2;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a5;
    s64 temp_a6_3;
    s64 temp_a7_2;
    s64 temp_at;
    s64 temp_at_4;
    s64 temp_at_5;
    s64 temp_lo;
    s64 temp_s4;
    s64 temp_s5;
    s64 temp_t0_2;
    s64 temp_t1_2;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 var_a5_2;
    u32 var_s7;
    u64 temp_at_2;
    u64 temp_t1_3;
    void *temp_gp;
    void *temp_s6;
    void *temp_s8;
    void *temp_t1;
    void *temp_v0;

    var_a5 = arg5;
    sp40 = arg4;
    temp_v0 = arg0->unk10;
    sp50 = arg2;
    temp_s0 = temp_v0->unk1B4;
    temp_a7 = arg4->unk4;
    temp_a6 = arg4->unk0;
    sp48 = (s64) temp_v0->unkA;
    temp_t0 = arg4->unk2;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x71988;
    sp30 = (s64) temp_v0->unk74->unk64;
    temp_s6 = *((temp_gp->unk-3140 * 4) + temp_s0);
    temp_t1 = *((glxScreenPrivateIndex * 4) + temp_s0);
    temp_s8 = temp_s6->unk4;
    arg4->unk8 = 0;
    sp58 = (s64) temp_s6->unk0;
    if ((temp_a6 * temp_a7 * temp_t0) > 0) {
        if ((s32) temp_t1->unk38 >= ((arg3 + temp_a7) - 1)) {
            var_a5 = temp_a6;
            if (arg3 >= (s32) temp_t1->unk36) {
                sp78 = (s64) temp_a6;
                sp38 = (s64) temp_t0;
                if (temp_a6 >= 0x2A) {
                    M2C_TRAP_IF(0x18 == 0);
                    sp78 = (((s32) (sp78 + 0x1E) / 24) * 0x18) - 7;
                }
                var_a5_2 = sp78;
                if (var_a5_2 == 1) {
                    sp118 = arg1;
                    var_a5_2 = ((sp38 ^ 1) == 0) ? (sp38 + 1) : sp38;
                    sp38 = var_a5_2;
                }
                temp_lo = sp38 * sp78;
                temp_lo_2 = temp_a7 * temp_lo;
                sp118 = arg1;
                sp108 = temp_lo;
                temp_v0_2 = temp_gp->unk-758C(temp_lo_2 * 6, temp_lo_2, temp_lo, sp38, sp78, var_a5_2, temp_a6, temp_a7);
                var_a7 = sp40->unk4;
                sp148 = 0;
                sp40->unk8 = temp_v0_2;
                if (var_a7 > 0) {
                    spA8 = sp118 << 0x10;
                    sp140 = sp48 - sp50;
                    temp_s4 = (sp48 - 1) << 0x10;
                    spE0 = temp_s4;
                    sp110 = sp108 * 6;
                    sp150 = arg3 * 4;
                    spE8 = (0x64541 << 0x22) | ((u64) (temp_s4 << 0x20) >> 0x20);
                    sp158 = 0;
                    temp_at = sp78 * 6;
                    sp80 = temp_at;
                    spA0 = ((sp118 + sp78) - 1) << 0x10;
                    var_s4 = sp8;
                    var_s7 = sp0;
                    temp_at_2 = (u64) (temp_at << 0x20) >> 0x20;
                    sp60 = temp_at_2 | (0x28081 << 0x22);
                    sp68 = temp_at_2 | (0x20201 << 0x22);
                    sp70 = temp_at_2 | (0x20101 << 0x22);
loop_8:
                    if (sp38 > 0) {
                        temp_lo_3 = 0x100000 / sp80;
                        sp168 = sp50;
                        sp98 = (s64) (sp150 + temp_s6);
                        sp180 = sp158;
                        temp_s1 = temp_gp->unk-70D4;
                        temp_gp->unk-70D4 = temp_s1;
                        sp178 = sp38;
                        sp90 = (0x65841 << 0x22) | ((u64) ((s64) temp_s1 << 0x20) >> 0x20);
                        M2C_TRAP_IF(sp80 == 0);
                        sp88 = sp140 - 1;
                        sp160 = (s64) temp_lo_3;
                        sp170 = (s64) temp_lo_3;
                        spF0 = temp_lo_3 + sp38;
                        spF8 = temp_lo_3 * sp78 * 6;
loop_16:
                        temp_a6_2 = sp40->unk8 + sp180;
                        temp_s5 = (sp38 < sp170) ? sp178 : sp160;
                        do {

                        } while (!(sp58->unk70000 & 2));
                        do {

                        } while ((0x100 & sp58->unk7C578) != 0x100);
                        temp_a1 = temp_s6->unk2C;
                        if (temp_a1 != 1) {
                            var_a3 = sp48 - (temp_s5 + sp168);
                            if (temp_a1 == 2) {
                                var_s4 = (var_a3 & 1) | 4;
                            } else {
                                var_s4 = ((temp_a1 ^ 4) == 0) ? ((var_a3 & 3) | 4) : var_s4;
                            }
                        } else {
                            var_s4 = 4;
                            var_a3 = sp48 - (temp_s5 + sp168);
                        }
                        temp_v1 = var_s4 | 0xCA0;
                        temp_s6->unk7C = 0;
                        temp_s8->unk448 = (s32) temp_v1;
                        sp58->unk70080 = (s64) (((u64) (temp_v1 << 0x20) >> 0x20) | (0x64481 << 0x22));
                        temp_s8->unk454 = 0;
                        sp58->unk70080 = (s64) (0x64541 << 0x22);
                        temp_s8->unk580 = 2;
                        sp58->unk70080 = (s64) ((0x65801 << 0x22) | 2);
                        temp_s8->unk584 = (s32) temp_gp->unk-70D4;
                        sp58->unk70080 = sp90;
                        temp_s8->unk58C = -1;
                        temp_a7_2 = 0x65641 << 0x22;
                        sp58->unk70080 = (s64) temp_gp->unk-32B0;
                        temp_s8->unk590 = -1;
                        temp_a2 = temp_a6_2 & 7;
                        temp_a4 = temp_a2 + ((((temp_s5 - 1) * sp78) + sp78) * 6);
                        sp58->unk70080 = (s64) temp_gp->unk-32B8;
                        temp_at_3 = sp80 + temp_a6_2;
                        temp_s8->unk588 = 0;
                        temp_a0 = 0x65881 << 0x22;
                        sp58->unk70080 = temp_a0;
                        sp188 = temp_a2;
                        temp_a2_2 = temp_a6_2 - temp_a2;
                        temp_s8->unk5B4 = (u32) temp_s6->unk8;
                        temp_t1_2 = 0x65B41 << 0x22;
                        sp58->unk70080 = (s64) (temp_s6->unk8 | temp_t1_2);
                        temp_v1_2 = spA8 | (sp88 & 0xFFFF);
                        temp_ra = (sp98->unk10 & 0x3FF) | (-0x400 & var_s7);
                        var_s7 = (0xFFF003FF & temp_ra) | ((temp_ra & 0x3FF) << 0xA);
                        sp190 = temp_a2_2;
                        temp_a1_2 = !(var_s7 & 0x3FF) ? 0x33 : 0xFF;
                        temp_s8->unk5B4 = var_s7;
                        sp58->unk70080 = (s64) (((u64) ((s64) var_s7 << 0x20) >> 0x20) | temp_t1_2);
                        temp_t2 = (temp_s5 << 0x10) | sp78;
                        temp_s8->unk588 = (s32) temp_a1_2;
                        sp58->unk70080 = (s64) (((u64) (temp_a1_2 << 0x20) >> 0x20) | temp_a0);
                        temp_s8->unk118 = (s32) temp_v1_2;
                        temp_t1_3 = (u64) (temp_t2 << 0x20) >> 0x20;
                        temp_t3 = spA0 | (var_a3 & 0xFFFF);
                        sp58->unk70080 = (s64) (((u64) (temp_v1_2 << 0x20) >> 0x20) | (0x61181 << 0x22));
                        temp_s8->unk11C = (s32) temp_t3;
                        sp58->unk70080 = (s64) (((u64) (temp_t3 << 0x20) >> 0x20) | (0x611C1 << 0x22));
                        temp_s8->unk54C = (s32) temp_t2;
                        sp58->unk70080 = (s64) ((0x654C1 << 0x22) | temp_t1_3);
                        temp_t0_2 = (temp_a2 << 8) | ((((temp_at_3 & 7) + ((8 - temp_at_3) & 7)) & 7) << 0xE) | 0x71;
                        temp_s8->unk560 = (s32) temp_t2;
                        temp_a6_3 = (0x65601 << 0x22) | temp_t1_3;
                        sp58->unk70080 = temp_a6_3;
                        temp_s8->unk564 = (s32) temp_t0_2;
                        temp_a5 = ((u64) (temp_t0_2 << 0x20) >> 0x20) | temp_a7_2;
                        sp58->unk70080 = temp_a5;
                        sp20 = 0;
                        sp28 = temp_a4;
                        sp14 = 3;
                        temp_v1_3 = temp_gp->unk-31A8 - 1;
                        sp10 = 0xC;
                        sp24 = (s32) temp_a2_2;
                        temp_a3 = ~temp_v1_3 & temp_a2_2;
                        sp18 = temp_a3;
                        sp1C = (temp_v1_3 & temp_a2_2) + temp_a4;
                        if (temp_gp->unk-74DC(sp30, 0x6D67000B, &sp10, temp_a3, temp_a4, temp_a5, temp_a6_3, temp_a7_2) >= 0) {
                            sp58->unk70080 = (s64) ((0x30001 << 0x22) | 0x200);
                            sp58->unk70080 = (s64) (0x100009 << 0x1F);
                            sp58->unk70080 = sp70;
                            sp58->unk70080 = (s64) (((u64) (sp188 << 0x20) >> 0x20) | (0x20141 << 0x22));
                            sp58->unk70080 = (s64) (((u64) (((temp_gp->unk-31A8 - 1) & sp190) << 0x20) >> 0x20) | (0x20181 << 0x22));
                            sp58->unk70080 = (s64) (((u64) (temp_s5 << 0x20) >> 0x20) | (0x201C1 << 0x22));
                            sp58->unk70080 = sp68;
                            sp58->unk70080 = (s64) ((0x202C1 << 0x22) | 0xBF);
                            temp_s8->unk440 = 0x01000000;
                            sp58->unk70080 = (s64) (0x19100401 << 0x18);
                            sp58->unk70080 = sp60;
                            sp58->unk70080 = (s64) ((0x28181 << 0x22) | 0xA);
                            temp_s8->unk408 = 8;
                            sp58->unk70080 = (s64) ((0x64081 << 0x22) | 8);
                            sp58->unk70080 = (s64) ((0x60301 << 0x22) | 1);
                            sp58->unk70080 = (s64) ((0x71141 << 0x22) | 0x18);
                            temp_s8->unk408 = 9;
                            sp58->unk70080 = (s64) ((0x64081 << 0x22) | 9);
                            do {

                            } while (sp58->unk70104 & 0x162F);
                            do {

                            } while (!(sp58->unk70000 & 2));
                            sp58->unk70080 = (s64) (0x60301 << 0x22);
                            sp58->unk70080 = (s64) (0x657C1 << 0x22);
                            sp10 = 3;
                            temp_gp->unk-74DC(sp30, 0x6D67000B, &sp10);
                            temp_s8->unk580 = 0;
                            sp58->unk70080 = (s64) (0x65801 << 0x22);
                            sp58->unk70080 = (s64) ((0x30001 << 0x22) | 0xE00);
                            temp_s8->unk408 = 0;
                            sp58->unk70080 = (s64) (0x64081 << 0x22);
                            temp_s8->unk448 = 0xCAC;
                            sp58->unk70080 = (s64) ((0x64481 << 0x22) | 0xCAC);
                            sp178 -= sp160;
                            temp_at_4 = sp160 + sp170;
                            sp170 = temp_at_4;
                            sp180 += spF8;
                            temp_s8->unk454 = (s32) spE0;
                            sp58->unk70080 = spE8;
                            sp88 -= sp160;
                            sp168 += sp160;
                            if (temp_at_4 < spF0) {
                                goto loop_16;
                            }
                            var_a7 = sp40->unk4;
                            goto block_24;
                        }
                        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2390);
                        return 0x11;
                    }
block_24:
                    temp_at_5 = sp148 + 1;
                    sp148 = temp_at_5;
                    sp150 += 4;
                    sp158 += sp110;
                    if (temp_at_5 >= var_a7) {
                        /* Duplicate return node #25. Try simplifying control flow for better match */
                        return 0;
                    }
                    goto loop_8;
                }
                return 0;
            }
        }
        temp_gp->unk-7344(&__iob + 0x20, &sub_5e4f0000 + 0x2368, var_a5, temp_a6, temp_a7);
        return 0x11;
    }
    return 0;
}

void mgrasFreeFBBlock(void *arg0) {
    s64 sp8;
    s32 temp_a3;

    temp_a3 = arg0->unk8;
    if (temp_a3 != 0) {
        sp8 = (s64) arg0;
        (M2C_ERROR(/* Read from unset register $t9 */) + 0x70F9C)->unk-75A0(temp_a3, arg0, temp_a3);
    }
    arg0->unk8 = 0;
}

void mgrasReadConvertPixels(void *arg0, s32 arg1, void *arg2, s32 arg3, s64 arg4, s32 arg5) {
    s64 spE0;
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
    s32 sp28;
    s32 sp8;
    void (*sp4)(void *, void *, s32, BoxRec *);
    u8 sp0;
    s16 temp_v0_2;
    s32 *temp_a4;
    s32 *temp_at_2;
    s32 *temp_v0;
    s32 *temp_v1_2;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a6_2;
    s32 temp_ra;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s8;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t2_3;
    s32 temp_t2_5;
    s32 temp_t2_7;
    s32 temp_t3;
    s32 temp_t3_3;
    s32 temp_t3_4;
    s32 temp_t3_5;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_v1_3;
    s32 var_a0;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s5;
    s32 var_t0_3;
    s32 var_t0_4;
    s32 var_t1;
    s32 var_v1;
    s32 var_v1_2;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a2;
    s64 temp_a3_4;
    s64 temp_a4_2;
    s64 temp_a6;
    s64 temp_at;
    s64 temp_v0_3;
    s64 var_a1;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a2_3;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_a4;
    s64 var_a5;
    s64 var_a5_2;
    s64 var_a5_3;
    s64 var_a6_2;
    s64 var_a6_3;
    s64 var_a7_2;
    s64 var_ra;
    s64 var_ra_2;
    s64 var_s0;
    s64 var_s2;
    s64 var_s2_3;
    s64 var_s2_4;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s3_3;
    s64 var_s3_4;
    s64 var_t0;
    s64 var_t0_2;
    s64 var_v0;
    s64 var_v0_2;
    s64 var_v1_3;
    u16 var_at_3;
    u32 temp_v1;
    u8 temp_at_3;
    u8 temp_s0;
    u8 temp_t2_2;
    u8 temp_t2_4;
    u8 temp_t2_6;
    u8 temp_t3_2;
    u8 var_at;
    u8 var_at_2;
    void **temp_t8;
    void *temp_a5;
    void *temp_gp;
    void *temp_s1;
    void *temp_s3;
    void *temp_s4;
    void *temp_t2;

    var_ra = saved_reg_ra;
    temp_v0 = arg0->unk78;
    sp90 = arg4;
    temp_s0 = arg0->unk2;
    temp_s3 = arg0->unk10;
    temp_s4 = temp_s3->unk74;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x6C774;
    temp_a2 = arg2->unk6 - arg2->unk2;
    spA0 = temp_a2;
    temp_a4 = temp_s4->unk30 + (arg1 * 4);
    temp_s1 = *(temp_s3->unk1B4 + (temp_gp->unk-3140 * 4));
    spC0 = (s64) *temp_a4;
    temp_a1 = temp_s1->unk64;
    var_s5 = 0;
    spA8 = (s64) temp_a1;
    temp_a6 = arg2->unk4 - arg2->unk0;
    spB8 = (s64) (temp_s1->unk3C + (arg1 * 0xC))->unk8;
    if (temp_v0 != NULL) {
        var_a0 = *temp_v0;
    } else {
        sp98 = temp_a6;
        var_ra = spC8;
        var_a0 = *temp_gp->unk-7598(arg0, temp_a1, temp_a2, temp_a4, temp_a6)->unk78;
    }
    temp_t2 = (temp_s0 * 0xC) + &PixmapWidthPaddingInfo;
    temp_v0_2 = (temp_s3->unk7C + ((var_a0 - temp_s4->unk50) * 0x24))->unk4;
    temp_at = ((s32) (temp_t2->unk0 + temp_a6) >> temp_t2->unk4) << temp_t2->unk8;
    spD8 = temp_at;
    var_s3 = temp_at;
    if (temp_v0_2 != 4) {

    } else {
        var_s3 = spD8;
        if ((temp_s0 == 0xC) || (temp_s0 == 0xF)) {
            spB0 = (s64) temp_v0_2;
            sp98 = temp_a6;
            spC8 = var_ra;
            temp_t8 = *(arg0->unk84 + (temp_gp->unk-30F8 * 4));
            sp0 = arg0->unk3;
            arg0->unk3 = 0x20U;
            var_s3 *= 2;
            sp4 = (*temp_t8)->unk14;
            var_s5 = 1;
            (*temp_t8)->unk14 = mgrasReadImage24;
        }
    }
    spB0 = (s64) temp_v0_2;
    spC8 = var_ra;
    sp98 = temp_a6;
    temp_v0_3 = temp_gp->unk-758C(spA0 * var_s3);
    sp80 = temp_v0_3;
    if (temp_v0_3 != 0) {
        if (arg5 & 1) {
            temp_s1->unk50 = 0;
        }
        (**(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk14(arg2, sp80, var_s3, arg0);
        temp_s1->unk50 = 1;
        if (var_s5 != 0) {
            arg0->unk3 = sp0;
            (**(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk14 = sp4;
        }
        switch (temp_s0) {                          /* irregular */
        default:
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x3FC0, temp_s0, 1, spA0 < 1);
            break;
        case 24:
            var_t0 = sp90;
            if (spB0 != 4) {
                var_ra_2 = sp80;
                temp_s0_2 = temp_s1->unk68;
                if (spA0 > 0) {
                    var_s1 = 0;
                    if (sp98 > 0) {
                        var_t1 = sp80 + (sp98 * 4);
loop_24:
                        var_s1 += 1;
                        temp_a6_2 = var_t1 - 4;
                        var_a5 = var_ra_2;
                        var_ra_2 += var_s3;
                        var_a1 = var_t0;
                        if (sp98 >= 2) {
                            var_v1 = *var_a5;
loop_26:
                            temp_a4_2 = var_a1 + 4;
                            var_a1->unk0 = (s32) ((((((u32) (var_v1 & 0xFF00) >> 8) * 2) + temp_s0_2)->unk200 & 0xFF00) | ((s32) *(((var_v1 & 0xFF) * 2) + temp_s0_2) >> 8) | ((((((((u32) (0xFF0000 & var_v1) >> 0x10) & 0xFF) * 2) + temp_s0_2)->unk400 & 0xFF00) << 8) | 0xFF000000));
                            temp_a5 = var_a5 + 4;
                            var_v1 = var_a5->unk4;
                            if (temp_a5 != temp_a6_2) {
                                var_a1 = temp_a4_2 + 4;
                                var_a1->unk4 = (s32) ((((((u32) (var_v1 & 0xFF00) >> 8) * 2) + temp_s0_2)->unk200 & 0xFF00) | ((s32) *(((var_v1 & 0xFF) * 2) + temp_s0_2) >> 8) | ((((((((u32) (0xFF0000 & var_v1) >> 0x10) & 0xFF) * 2) + temp_s0_2)->unk400 & 0xFF00) << 8) | 0xFF000000));
                                var_a5 = temp_a5 + 4;
                                var_v1 = temp_a5->unk4;
                                if (var_a5 == temp_a6_2) {

                                } else {
                                    goto loop_26;
                                }
                            } else {
                                var_a1 = temp_a4_2;
                            }
                            *var_a1 = (s32) ((((((u32) (var_v1 & 0xFF00) >> 8) * 2) + temp_s0_2)->unk200 & 0xFF00) | ((s32) *(((var_v1 & 0xFF) * 2) + temp_s0_2) >> 8) | ((((((((u32) (0xFF0000 & var_v1) >> 0x10) & 0xFF) * 2) + temp_s0_2)->unk400 & 0xFF00) << 8) | 0xFF000000));
                        } else {
                            temp_t8_2 = *var_a5;
                            *var_a1 = (s32) ((((((u32) (temp_t8_2 & 0xFF00) >> 8) * 2) + temp_s0_2)->unk200 & 0xFF00) | ((s32) *(((temp_t8_2 & 0xFF) * 2) + temp_s0_2) >> 8) | ((((((((u32) (0xFF0000 & temp_t8_2) >> 0x10) & 0xFF) * 2) + temp_s0_2)->unk400 & 0xFF00) << 8) | 0xFF000000));
                        }
                        var_t1 += var_s3;
                        var_t0 += arg3 * 4;
                        if (var_s1 != spA0) {
                            goto loop_24;
                        }
                    }
                }
            } else {
                spD8 = var_s3;
                if (spA0 > 0) {
                    var_s4 = 0;
                    var_s3_2 = sp80;
                    var_s2 = sp90;
                    do {
                        var_s4 += 1;
                        temp_a0 = var_s2;
                        var_s2 += arg3 * 4;
                        temp_a1_2 = var_s3_2;
                        var_s3_2 += spD8;
                        memmove((s32) temp_a0, (void *) temp_a1_2, sp98 * 4);
                    } while (var_s4 != spA0);
                }
            }
            break;
        case 8:
            temp_a3 = spA0 >= 1;
            temp_t3 = spC0 ^ 1;
            temp_v1 = (temp_t3 == 0) ? ((u32) (spB8 & 0xF8) >> 3) : ((u32) (spB8 & 0x3E0) >> 5);
            if (((temp_t3 != 0) ? 0 : ((spB8 & 0x100) == 0)) != 0) {
                if (temp_a3 != 0) {
                    var_a2 = 0;
                    if (sp98 > 0) {
                        sp88 = arg3 * 4;
                        var_s2_2 = sp98 * 4;
                        var_s1_2 = 0;
                        var_s0 = sp80;
                        temp_s5 = temp_v1 << 8;
loop_47:
                        var_a3 = var_s0;
                        var_v1_2 = var_s1_2;
                        temp_t1 = sp98 >> 1;
                        if (sp98 & 1) {
                            temp_t2_2 = *var_a3;
                            temp_t2_3 = temp_t2_2 != 0;
                            temp_at_2 = var_v1_2 + sp90;
                            var_v1_2 += 4;
                            temp_t8_3 = *((temp_t2_3 == 0) ? &sp8 : (((temp_s5 + temp_t2_2) * 4) + spA8));
                            var_a3 += 1;
                            *((temp_t2_3 == 0) ? &sp28 : temp_at_2) = temp_t8_3 | 0xFF000000;
                        }
                        var_a6 = var_v1_2;
                        var_s0 += var_s3;
                        var_t0_2 = var_a3;
                        if (temp_t1 != 0) {
                            temp_s8 = sp90 + 4;
                            if (temp_t1 >= 2) {
                                spD0 = var_a2;
                                var_at = var_t0_2->unk0;
                                do {
                                    temp_a3_2 = var_at != 0;
                                    *((temp_a3_2 == 0) ? &sp28 : (var_a6 + sp90)) = *((temp_a3_2 == 0) ? &sp8 : (((temp_s5 + var_at) * 4) + spA8)) | 0xFF000000;
                                    temp_at_3 = var_t0_2->unk1;
                                    temp_a3_3 = temp_at_3 != 0;
                                    temp_v1_2 = (temp_a3_3 == 0) ? &sp8 : (((temp_s5 + temp_at_3) * 4) + spA8);
                                    *((temp_a3_3 == 0) ? &sp28 : (var_a6 + temp_s8)) = *temp_v1_2 | 0xFF000000;
                                    var_a6 += 8;
                                    var_t0_2 += 2;
                                    var_at = var_t0_2->unk0;
                                } while (var_a6 != (var_s2_2 - 8));
                                spE0 = (s64) temp_v1_2;
                                temp_v1_3 = var_at != 0;
                                *((temp_v1_3 == 0) ? &sp28 : (var_a6 + sp90)) = *((temp_v1_3 == 0) ? &sp8 : (((temp_s5 + var_at) * 4) + spA8)) | 0xFF000000;
                                temp_t2_4 = var_t0_2->unk1;
                                temp_t2_5 = temp_t2_4 != 0;
                                *((temp_t2_5 == 0) ? &sp28 : (var_a6 + temp_s8)) = *((temp_t2_5 == 0) ? &sp8 : (((temp_s5 + temp_t2_4) * 4) + spA8)) | 0xFF000000;
                                var_a2 = spD0;
                            } else {
                                temp_t3_2 = var_t0_2->unk0;
                                temp_t3_3 = temp_t3_2 != 0;
                                *((temp_t3_3 == 0) ? &sp28 : (var_a6 + sp90)) = *((temp_t3_3 == 0) ? &sp8 : (((temp_s5 + temp_t3_2) * 4) + spA8)) | 0xFF000000;
                                temp_t2_6 = var_t0_2->unk1;
                                temp_t2_7 = temp_t2_6 != 0;
                                *((temp_t2_7 == 0) ? &sp28 : (var_a6 + temp_s8)) = *((temp_t2_7 == 0) ? &sp8 : (((temp_s5 + temp_t2_6) * 4) + spA8)) | 0xFF000000;
                            }
                        }
                        var_a2 += 1;
                        var_s2_2 += sp88;
                        var_s1_2 += sp88;
                        if (var_a2 != spA0) {
                            goto loop_47;
                        }
                    }
                }
            } else if (temp_a3 != 0) {
                var_t0_3 = 0;
                if (sp98 > 0) {
                    temp_s0_3 = arg3 * 4;
                    temp_s5_2 = temp_v1 << 8;
                    var_a5_2 = sp90;
                    var_a6_2 = sp80;
                    var_a7 = (sp98 * 4) + sp90;
loop_81:
                    var_a3_2 = var_a6_2;
                    var_a2_2 = var_a5_2;
                    if (sp98 & 1) {
                        temp_t3_4 = *(((*var_a3_2 + temp_s5_2) * 4) + spA8);
                        var_a2_2 += 4;
                        var_a3_2 += 1;
                        var_a2_2->unk-4 = (s32) (temp_t3_4 | 0xFF000000);
                    }
                    var_t0_3 += 1;
                    var_a6_2 += var_s3;
                    var_a5_2 += temp_s0_3;
                    var_v1_3 = var_a2_2;
                    temp_t1_2 = sp98 >> 1;
                    var_v0 = var_a3_2;
                    if (temp_t1_2 != 0) {
                        if (temp_t1_2 >= 2) {
                            var_at_2 = var_v0->unk0;
                            do {
                                var_v1_3->unk0 = (s32) (*(((var_at_2 + temp_s5_2) * 4) + spA8) | 0xFF000000);
                                var_v1_3->unk4 = (s32) (*(((var_v0->unk1 + temp_s5_2) * 4) + spA8) | 0xFF000000);
                                var_v1_3 += 8;
                                var_v0 += 2;
                                var_at_2 = var_v0->unk0;
                            } while (var_v1_3 != (var_a7 - 8));
                            var_v1_3->unk0 = (s32) (*(((var_at_2 + temp_s5_2) * 4) + spA8) | 0xFF000000);
                            var_v1_3->unk4 = (s32) (*(((var_v0->unk1 + temp_s5_2) * 4) + spA8) | 0xFF000000);
                        } else {
                            var_v1_3->unk0 = (s32) (*(((var_v0->unk0 + temp_s5_2) * 4) + spA8) | 0xFF000000);
                            var_v1_3->unk4 = (s32) (*(((var_v0->unk1 + temp_s5_2) * 4) + spA8) | 0xFF000000);
                        }
                    }
                    var_a7 += temp_s0_3;
                    if (var_t0_3 != spA0) {
                        goto loop_81;
                    }
                }
            }
            break;
        case 12:
            if (spB0 != 4) {
                if (spA0 > 0) {
                    var_s0_2 = 0;
                    if (sp98 > 0) {
                        var_a6_3 = sp90;
                        var_a5_3 = sp80;
                        var_t0_4 = var_a5_3 + (sp98 * 2);
                        temp_t1_3 = ((u32) (spB8 & 0x3E0) >> 5) << 8;
loop_57:
                        var_a2_3 = var_a5_3;
                        var_a7_2 = var_a6_3;
                        if (sp98 & 1) {
                            temp_t3_5 = *(((*var_a2_3 + temp_t1_3) * 4) + spA8);
                            var_a7_2 += 4;
                            var_a2_3 += 2;
                            var_a7_2->unk-4 = (s32) (temp_t3_5 | 0xFF000000);
                        }
                        var_a4 = var_a7_2;
                        var_s0_2 += 1;
                        var_a5_3 += var_s3;
                        var_a6_3 += arg3 * 4;
                        temp_ra = sp98 >> 1;
                        var_v0_2 = var_a2_3;
                        if (temp_ra != 0) {
                            temp_a2_2 = var_t0_4 - 4;
                            if (temp_ra >= 2) {
                                var_at_3 = var_v0_2->unk0;
loop_62:
                                temp_a3_4 = var_a4 + 8;
                                var_a4->unk0 = (s32) (*(((var_at_3 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                                var_a4->unk4 = (s32) (*(((var_v0_2->unk2 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                                var_v0_2 += 4;
                                var_at_3 = var_v0_2->unk0;
                                if (var_v0_2 != temp_a2_2) {
                                    var_a4 = temp_a3_4 + 8;
                                    var_a4->unk8 = (s32) (*(((var_at_3 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                                    temp_a3_4->unk4 = (s32) (*(((var_v0_2->unk2 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                                    var_v0_2 += 4;
                                    var_at_3 = *var_v0_2;
                                    if (var_v0_2 == temp_a2_2) {

                                    } else {
                                        goto loop_62;
                                    }
                                } else {
                                    var_a4 = temp_a3_4;
                                }
                                var_a4->unk0 = (s32) (*(((var_at_3 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                                var_a4->unk4 = (s32) (*(((var_v0_2->unk2 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                            } else {
                                var_a4->unk0 = (s32) (*(((var_v0_2->unk0 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                                var_a4->unk4 = (s32) (*(((var_v0_2->unk2 + temp_t1_3) * 4) + spA8) | 0xFF000000);
                            }
                        }
                        var_t0_4 += var_s3;
                        if (var_s0_2 != spA0) {
                            goto loop_57;
                        }
                    }
                }
            } else {
                spD8 = var_s3;
                if (spA0 > 0) {
                    var_s4_2 = 0;
                    var_s3_3 = sp80;
                    var_s2_3 = sp90;
                    do {
                        var_s4_2 += 1;
                        temp_a0_2 = var_s2_3;
                        var_s2_3 += arg3 * 4;
                        temp_a1_3 = var_s3_3;
                        var_s3_3 += spD8;
                        memmove((s32) temp_a0_2, (void *) temp_a1_3, sp98 * 4);
                    } while (var_s4_2 != spA0);
                }
            }
            break;
        case 15:
            spD8 = var_s3;
            if (spA0 > 0) {
                var_s4_3 = 0;
                var_s3_4 = sp80;
                var_s2_4 = sp90;
                do {
                    var_s4_3 += 1;
                    temp_a0_3 = var_s2_4;
                    var_s2_4 += arg3 * 4;
                    temp_a1_4 = var_s3_4;
                    var_s3_4 += spD8;
                    memmove((s32) temp_a0_3, (void *) temp_a1_4, sp98 * 4);
                } while (var_s4_3 != spA0);
            }
            break;
        }
        temp_gp->unk-75A0(sp80);
        return;
    }
    temp_gp->unk-74EC(&sub_5e4f0000 + 0x3F98);
}

void mgrasClearPlanes(void *arg0, void *arg1, s32 arg2, s64 arg3) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_at;
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_t8;
    s32 var_v1;
    s64 temp_a0;
    s64 temp_a3;
    s64 temp_a5;
    s64 temp_t8;
    s64 temp_t9;
    s64 temp_v0;
    s64 var_t2;
    s64 var_t3;
    s64 var_v1_2;
    u64 temp_a5_2;
    u64 temp_at_2;
    void *temp_a6;
    void *temp_a7;
    void *temp_t2;
    void *var_t0;
    void *var_v1_3;
    void *var_v1_4;

    temp_a6 = arg1->unk8;
    temp_a7 = arg0->unk4;
    temp_t2 = arg0->unk0;
    var_t0 = (temp_a6 == NULL) ? arg1 : (temp_a6 + 8);
    if (temp_a6 != NULL) {
        var_v1 = temp_a6->unk4;
    } else {
        var_v1 = 1;
    }
    var_a1 = var_v1;
    if (var_v1 != 0) {
        temp_t8 = 0x65DC1 << 0x22;
        temp_a0 = 0x65D81 << 0x22;
        sp10 = (s64) arg0->unk80;
        temp_t2->unk70080 = (s64) ((0x61141 << 0x22) | 0x18);
        temp_a7->unk440 = 0x100000;
        temp_t9 = 0x65E01 << 0x22;
        temp_t2->unk70080 = (s64) saved_reg_gp->unk-32C0;
        if (arg2 != -2) {
            if (arg2 != 0) {
                temp_a7->unk5B4 = (u32) arg0->unkC;
                temp_t2->unk70080 = (s64) (arg0->unkC | (0x65B41 << 0x22));
                temp_a7->unk58C = 0;
                temp_t2->unk70080 = (s64) (0x658C1 << 0x22);
                temp_a7->unk590 = -1;
                temp_t2->unk70080 = (s64) saved_reg_gp->unk-32B8;
                temp_a7->unk588 = 0xF0;
                temp_t2->unk70080 = (s64) ((0x65881 << 0x22) | 0xF0);
                temp_a7->unk5D8 = (s32) arg3;
                temp_t2->unk70080 = (s64) (((u64) (arg3 << 0x20) >> 0x20) | temp_a0);
                temp_a7->unk5DC = 0;
                var_t3 = 0x711C1 << 0x22;
                temp_t2->unk70080 = temp_t8;
                temp_a7->unk5E0 = 0;
                var_t2 = 0x61181 << 0x22;
                var_v1_2 = 0x13F500;
                goto block_6;
            }
            temp_a7->unk5B4 = (u32) arg0->unk8;
            sp8 = (s64) var_a1;
            temp_a2 = (s32) (arg3 & 0xFF00) >> 4;
            sp0 = (s64) var_t0;
            temp_a5 = (arg3 & 0xFF) * 0x10;
            temp_t2->unk70080 = (s64) (arg0->unk8 | (0x65B41 << 0x22));
            temp_a7->unk5D8 = (s32) temp_a5;
            temp_t2->unk70080 = (s64) (((u64) (temp_a5 << 0x20) >> 0x20) | temp_a0);
            temp_a7->unk5DC = temp_a2;
            temp_t2->unk70080 = (s64) (((u64) ((s64) temp_a2 << 0x20) >> 0x20) | temp_t8);
            temp_at = (s32) (arg3 & 0xFF0000) >> 0xC;
            temp_a7->unk5E0 = temp_at;
            temp_t2->unk70080 = (s64) (((u64) ((s64) temp_at << 0x20) >> 0x20) | temp_t9);
            var_t2 = 0x61181 << 0x22;
            temp_a7->unk5E4 = 0;
            temp_t2->unk70080 = (s64) (0x65E41 << 0x22);
            temp_a7->unk58C = -1;
            temp_t2->unk70080 = (s64) saved_reg_gp->unk-32B0;
            temp_a0_2 = (var_v1 >= 1) ? var_v1 : 1;
            temp_a7->unk590 = -1;
            temp_t2->unk70080 = (s64) saved_reg_gp->unk-32B8;
            if ((sp10 != 0) && (sp10 != 3)) {
                var_t3 = 0x711C1 << 0x22;
                var_t8 = (sp10 == 1) << 0xB;
                var_t2 = 0x61181 << 0x22;
                goto block_17;
            }
            var_t8 = (sp10 == 1) << 0xB;
            temp_v0 = (((sp10 != 0) ? 1 : 4) << 0xE) | var_t8 | 0x2200;
            temp_a7->unk584 = (s32) temp_v0;
            temp_t2->unk70080 = (s64) (((u64) (temp_v0 << 0x20) >> 0x20) | (0x65841 << 0x22));
            var_t3 = 0x711C1 << 0x22;
            temp_a7->unk588 = 0;
            temp_t2->unk70080 = (s64) (0x65881 << 0x22);
            if (temp_a0_2 & 1) {
                temp_t2->unk70080 = (s64) (((u64) (((var_t0->unk2 & 0xFFFF) | (var_t0->unk0 << 0x10)) << 0x20) >> 0x20) | var_t2);
                var_a1 -= 1;
                temp_at_2 = (u64) ((((var_t0->unk6 - 1) & 0xFFFF) | ((var_t0->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
                var_t0 += 8;
                temp_t2->unk70080 = (s64) (temp_at_2 | var_t3);
            }
            var_a3 = var_a1;
            var_v1_3 = var_t0;
            if ((temp_a0_2 >> 1) != 0) {
                do {
                    temp_t2->unk70080 = (s64) (((u64) (((var_v1_3->unk2 & 0xFFFF) | (var_v1_3->unk0 << 0x10)) << 0x20) >> 0x20) | var_t2);
                    temp_t2->unk70080 = (s64) (((u64) ((((var_v1_3->unk6 - 1) & 0xFFFF) | ((var_v1_3->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_t3);
                    temp_t2->unk70080 = (s64) (((u64) (((var_v1_3->unkA & 0xFFFF) | (var_v1_3->unk8 << 0x10)) << 0x20) >> 0x20) | var_t2);
                    var_a3 -= 2;
                    temp_t2->unk70080 = (s64) (((u64) ((((var_v1_3->unkE - 1) & 0xFFFF) | ((var_v1_3->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_t3);
                    var_v1_3 += 0x10;
                } while (var_a3 != 0);
            }
            var_t0 = (void *) sp0;
            var_a1 = (s32) sp8;
            if (sp10 == 3) {
                return;
            }
block_17:
            temp_a7->unk588 = 0xFF;
            var_v1_2 = var_t8 | 0x16300;
            temp_t2->unk70080 = (s64) ((0x65881 << 0x22) | 0xFF);
            goto block_7;
        }
        var_t3 = 0x711C1 << 0x22;
        temp_a3 = (arg3 > 3) ? 0 : arg3;
        temp_a7->unk58C = 0;
        temp_t2->unk70080 = (s64) (0x658C1 << 0x22);
        temp_a7->unk590 = 0;
        temp_t2->unk70080 = (s64) (0x65901 << 0x22);
        temp_a7->unk588 = 0xFF;
        temp_t2->unk70080 = (s64) ((0x65881 << 0x22) | 0xFF);
        temp_a7->unk5EC = 0xC00;
        temp_t2->unk70080 = (s64) ((0x65EC1 << 0x22) | 0xC00);
        temp_a7->unk5D8 = (s32) temp_a3;
        temp_t2->unk70080 = (s64) (((u64) (temp_a3 << 0x20) >> 0x20) | temp_a0);
        temp_a7->unk5DC = 0;
        temp_t2->unk70080 = temp_t8;
        var_t2 = 0x61181 << 0x22;
        temp_a7->unk5E0 = 0;
        var_v1_2 = 0x142600;
block_6:
        temp_t2->unk70080 = temp_t9;
block_7:
        temp_a0_3 = ((u32) var_a1 >= 1U) ? var_a1 : 1;
        temp_a7->unk584 = (s32) var_v1_2;
        temp_t2->unk70080 = (s64) (((u64) (var_v1_2 << 0x20) >> 0x20) | (0x65841 << 0x22));
        if (temp_a0_3 & 1) {
            temp_t2->unk70080 = (s64) (((u64) (((var_t0->unk2 & 0xFFFF) | (var_t0->unk0 << 0x10)) << 0x20) >> 0x20) | var_t2);
            var_a1 -= 1;
            temp_a5_2 = (u64) ((((var_t0->unk6 - 1) & 0xFFFF) | ((var_t0->unk4 - 1) << 0x10)) << 0x20) >> 0x20;
            var_t0 += 8;
            temp_t2->unk70080 = (s64) (temp_a5_2 | var_t3);
        }
        var_a3_2 = var_a1;
        var_v1_4 = var_t0;
        if ((temp_a0_3 >> 1) != 0) {
            do {
                temp_t2->unk70080 = (s64) (((u64) (((var_v1_4->unk2 & 0xFFFF) | (var_v1_4->unk0 << 0x10)) << 0x20) >> 0x20) | var_t2);
                temp_t2->unk70080 = (s64) (((u64) ((((var_v1_4->unk6 - 1) & 0xFFFF) | ((var_v1_4->unk4 - 1) << 0x10)) << 0x20) >> 0x20) | var_t3);
                temp_t2->unk70080 = (s64) (((u64) (((var_v1_4->unkA & 0xFFFF) | (var_v1_4->unk8 << 0x10)) << 0x20) >> 0x20) | var_t2);
                var_a3_2 -= 2;
                temp_t2->unk70080 = (s64) (((u64) ((((var_v1_4->unkE - 1) & 0xFFFF) | ((var_v1_4->unkC - 1) << 0x10)) << 0x20) >> 0x20) | var_t3);
                var_v1_4 += 0x10;
            } while (var_a3_2 != 0);
        }
        arg0->unk7C = 0;
    }
}
