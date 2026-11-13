extern s32 dbcWindowPrivateIndex;

/*
Decompilation failure in function mgrasDrawPoints:

Unable to determine jump table for jr instruction at mgras_draw.s line 124.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasPolyPoint:

Unable to determine jump table for jr instruction at mgras_draw.s line 455.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasStippledFillRect:

Unable to determine jump table for jr instruction at mgras_draw.s line 1327.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasDrawSolidRects:

Unable to determine jump table for jr instruction at mgras_draw.s line 1625.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasPolyFillRectSolid:

Unable to determine jump table for jr instruction at mgras_draw.s line 1977.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasPolyFillRectStippled:

Unable to determine jump table for jr instruction at mgras_draw.s line 2709.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasLineSS:

Unable to determine jump table for jr instruction at mgras_draw.s line 3681.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasFillSolidPolygon:

Unable to determine jump table for jr instruction at mgras_draw.s line 4760.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasFillNarrowStippPolygon:

Unable to determine jump table for jr instruction at mgras_draw.s line 6528.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasSegmentSS:

Unable to determine jump table for jr instruction at mgras_draw.s line 7460.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasSolidFillSpans:

Unable to determine jump table for jr instruction at mgras_draw.s line 7998.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasStippledFS:

Unable to determine jump table for jr instruction at mgras_draw.s line 8705.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasSolidSpans:

Unable to determine jump table for jr instruction at mgras_draw.s line 9061.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void mgrasTileRects(void *pDrawable, void *pGC, s32 nBox, BoxRec *pBox, s32 arg_sp4, void *arg_spC) {
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    u64 spF8;
    u64 spF0;
    u64 spE8;
    s64 spE0;
    u64 spD8;
    s64 spD0;
    s64 spC8;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s16 spA;
    s16 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    ? (*temp_s6)(void *, s64, BoxRec *, s32, s32, void *, s64, s16);
    ? (*temp_t2)(?, ?, s32, void *);
    s16 temp_a1_3;
    s16 temp_a2_3;
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_a4;
    s16 temp_a5_2;
    s16 temp_a5_3;
    s16 temp_a5_5;
    s16 temp_a6;
    s16 temp_a6_2;
    s16 temp_a6_3;
    s16 temp_a7;
    s16 temp_a7_2;
    s16 temp_a7_3;
    s16 temp_a7_4;
    s16 temp_a7_5;
    s16 temp_a7_6;
    s16 temp_a7_7;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_t0;
    s16 temp_t0_2;
    s16 temp_t1_2;
    s16 temp_t1_3;
    s16 temp_t1_4;
    s16 temp_t2_2;
    s16 temp_t2_3;
    s16 temp_v0;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v1;
    s16 temp_v1_2;
    s16 temp_v1_5;
    s16 temp_v1_6;
    s32 temp_a1;
    s32 temp_a4_2;
    s32 temp_at_5;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_hi_3;
    s32 temp_hi_4;
    s32 temp_s1;
    s32 temp_t0_3;
    s32 var_a0;
    s64 temp_a1_2;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a2_4;
    s64 temp_a5;
    s64 temp_lo;
    s64 temp_s4;
    s64 temp_s8;
    s64 temp_v0_2;
    s64 temp_v1_4;
    s64 var_a5;
    s64 var_a7;
    s8 temp_a0;
    u32 temp_a3_3;
    u32 temp_a5_4;
    u32 temp_v0_5;
    u64 temp_at_4;
    u64 temp_v1_3;
    void *temp_at_3;
    void *temp_gp;
    void *temp_t1;
    void *var_s0;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18F104;
    temp_s8 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s4 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t1 = **(arg_spC->unk84 + (temp_gp->unk-30F8 * 4));
    sp38 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_s1 = M2C_ERROR(/* Read from unset register $a7 */);
    temp_t2 = temp_t1->unk4;
    if (M2C_ERROR(/* Read from unset register $a7 */) != 5) {
        switch (temp_s1) {                          /* irregular */
        default:
            temp_s6 = temp_t1->unk8;
            sp40 = (s64) ((s32) arg_spC->unk3 >> 4);
            if (pGC != NULL) {
                spD8 = temp_s8 * 4;
                sp110 = (s64) (((s32) pGC * 8) + pDrawable);
                var_s0 = pDrawable;
                spF8 = temp_s4 * 0xA;
loop_8:
                if ((temp_s1 != 3) && (temp_s1 != 0xC)) {
                    goto block_11;
                }
                temp_a7 = var_s0->unk0;
                if ((spF8 < (u32) (var_s0->unk4 - temp_a7)) && (temp_t1_2 = var_s0->unk2, ((spD8 < (u32) (var_s0->unk6 - temp_t1_2)) != 0))) {
                    temp_hi = (s32) (temp_a7 - sp38->unk0) % temp_s4;
                    temp_hi_2 = (s32) (temp_t1_2 - sp38->unk2) % temp_s8;
                    sp0 = temp_a7;
                    temp_a2 = temp_s4 - ((temp_hi >= 0) ? temp_hi : (temp_hi + temp_s4));
                    temp_t0 = var_s0->unk4;
                    temp_t2_2 = temp_a2 + temp_a7;
                    sp128 = temp_a2;
                    sp4 = (temp_t0 >= temp_t2_2) ? temp_t2_2 : temp_t0;
                    temp_a5 = temp_s8 - ((temp_hi_2 >= 0) ? temp_hi_2 : (temp_hi_2 + temp_s8));
                    sp60 = temp_a5;
                    temp_a7_2 = temp_s8 - temp_a5;
                    temp_a6 = var_s0->unk2;
                    temp_lo = temp_a7_2 * (s32) pBox;
                    M2C_TRAP_IF(temp_s8 == 0);
                    sp2 = temp_a6;
                    temp_a5_2 = temp_a5 + temp_a6;
                    M2C_TRAP_IF(temp_s4 == 0);
                    temp_a3 = var_s0->unk6;
                    temp_a2_2 = ((temp_s4 - temp_a2) << sp40) + nBox;
                    sp6 = (temp_a3 >= temp_a5_2) ? temp_a5_2 : temp_a3;
                    sp70 = temp_lo;
                    spD0 = temp_a2_2;
                    temp_s6(sp, temp_lo + temp_a2_2, pBox, temp_s1, arg_sp4, arg_spC, sp40, temp_a7_2);
                    temp_a7_3 = var_s0->unk2;
                    temp_t1_3 = temp_a7_3 + sp60;
                    temp_a7_4 = temp_a7_3 + temp_s8;
                    if (temp_t1_3 < var_s0->unk6) {
                        sp2 = temp_t1_3;
                        temp_t2_3 = var_s0->unk6;
                        sp6 = (temp_t2_3 >= temp_a7_4) ? temp_a7_4 : temp_t2_3;
                        temp_s6(sp, spD0, pBox, temp_s1, arg_sp4, arg_spC);
                        temp_a7_5 = var_s0->unk0;
                        temp_at = var_s0->unk4;
                        temp_v1 = temp_a7_5 + temp_s4;
                        sp4 = (temp_at >= temp_v1) ? temp_v1 : temp_at;
                        var_a7 = temp_a7_5 + sp128;
                        var_a0 = var_a7 < var_s0->unk4;
                        if (var_a0 != 0) {
                            sp68 = var_a7;
                            sp0 = (s16) var_a7;
                            temp_s6(sp, (s64) nBox, pBox, temp_s1, arg_sp4, arg_spC);
                            goto block_25;
                        }
                    } else {
                        temp_a7_6 = var_s0->unk0;
                        temp_at_2 = var_s0->unk4;
                        temp_v1_2 = temp_a7_6 + temp_s4;
                        sp4 = (temp_at_2 >= temp_v1_2) ? temp_v1_2 : temp_at_2;
                        var_a7 = temp_a7_6 + sp128;
block_25:
                        var_a0 = var_a7 < var_s0->unk4;
                    }
                    if (var_a0 != 0) {
                        sp0 = (s16) var_a7;
                        temp_a5_3 = var_s0->unk2;
                        sp2 = temp_a5_3;
                        temp_a2_3 = var_s0->unk6;
                        temp_a4 = sp60 + temp_a5_3;
                        sp6 = (temp_a2_3 >= temp_a4) ? temp_a4 : temp_a2_3;
                        temp_s6(sp, sp70 + nBox, pBox, temp_s1, arg_sp4, arg_spC);
                    }
                    temp_at_3 = arg_spC->unk84 + (dbcWindowPrivateIndex * 4);
                    temp_a0 = temp_at_3->unk1;
                    spE0 = (s64) temp_at_3;
                    spC8 = (s64) temp_at_3->unk0;
                    if ((temp_a0 != 1) && (temp_a0 != -3)) {
                        *spE0 = 0;
                    } else {
                        *spE0 = 1;
                    }
                    temp_t0_2 = var_s0->unk0;
                    sp10 = temp_t0_2;
                    sp8 = temp_t0_2;
                    sp50 = (s64) temp_t0_2;
                    sp48 = (s64) ***(arg_spC->unk84 + (temp_gp->unk-30F8 * 4));
                    temp_at_4 = var_s0->unk4 - temp_t0_2;
                    spE8 = temp_at_4;
                    var_a5 = ((u32) temp_s4 < temp_at_4) ? temp_s4 : (s64) temp_at_4;
                    temp_v0 = var_s0->unk2;
                    sp12 = temp_v0;
                    spA = temp_v0;
                    temp_at_5 = (s32) temp_at_4 >> 1;
                    sp108 = (s64) temp_at_5;
                    sp58 = (s64) temp_v0;
                    sp14 = temp_t0_2 + var_a5;
                    temp_v1_3 = var_s0->unk6 - temp_v0;
                    spF0 = temp_v1_3;
                    temp_v1_4 = ((u32) temp_s8 < temp_v1_3) ? temp_s8 : (s64) temp_v1_3;
                    sp28 = temp_v1_4;
                    sp16 = temp_v0 + temp_v1_4;
                    if (temp_at_5 >= var_a5) {
                        sp30 = var_a5;
                        do {
                            sp30 = var_a5;
                            temp_a6_2 = sp50 + var_a5;
                            sp10 = temp_a6_2;
                            temp_a6_3 = temp_a6_2 + var_a5;
                            sp14 = temp_a6_3;
                            ((? (*)(s16 *, s16 *, ?, s32, void *, s64, s16, s64)) sp48)(&sp10, &sp8, 3, arg_sp4, arg_spC, var_a5, temp_a6_3, var_a5);
                            var_a5 = sp30 * 2;
                        } while (sp108 >= var_a5);
                    }
                    if ((spE8 - var_a5) != 0) {
                        sp14 = sp50 + spE8;
                        sp10 = sp50 + var_a5;
                        ((? (*)(s16 *, s16 *, ?, s32, void *, s64)) sp48)(&sp10, &sp8, 3, arg_sp4, arg_spC, var_a5);
                    }
                    temp_t0_3 = (s32) spF0 >> 1;
                    sp100 = (s64) temp_t0_3;
                    sp10 = (s16) sp50;
                    if (temp_t0_3 >= sp28) {
                        do {
                            temp_t1_4 = sp58 + sp28;
                            sp12 = temp_t1_4;
                            sp16 = temp_t1_4 + sp28;
                            ((? (*)(s16 *, s16 *, ?, s32, void *)) sp48)(&sp10, &sp8, 3, arg_sp4, arg_spC);
                            temp_v0_2 = sp28 * 2;
                            sp28 = temp_v0_2;
                        } while (sp100 >= temp_v0_2);
                    }
                    if (spF0 != sp28) {
                        sp16 = sp58 + spF0;
                        sp12 = sp58 + sp28;
                        ((? (*)(s16 *, s16 *, ?, s32, void *)) sp48)(&sp10, &sp8, 3, arg_sp4, arg_spC);
                    }
                    *spE0 = (s8) spC8;
                } else {
block_11:
                    sp0 = var_s0->unk0;
                    temp_a3_2 = var_s0->unk2;
                    sp2 = temp_a3_2;
                    temp_hi_3 = (s32) (var_s0->unk0 - sp38->unk0) % temp_s4;
                    temp_hi_4 = (s32) (temp_a3_2 - sp38->unk2) % temp_s8;
                    temp_a1 = (temp_hi_3 >= 0) ? temp_hi_3 : (temp_hi_3 + temp_s4);
                    temp_a7_7 = var_s0->unk4;
                    temp_a5_4 = (var_s0->unk0 + temp_s4) - temp_a1;
                    temp_a4_2 = (temp_hi_4 >= 0) ? temp_hi_4 : (temp_hi_4 + temp_s8);
                    sp4 = (temp_a5_4 >= (u32) temp_a7_7) ? temp_a7_7 : (s16) temp_a5_4;
                    M2C_TRAP_IF(temp_s8 == 0);
                    temp_a5_5 = var_s0->unk6;
                    M2C_TRAP_IF(temp_s4 == 0);
                    sp128 = (s64) temp_a1;
                    temp_a3_3 = (temp_a3_2 + temp_s8) - temp_a4_2;
                    temp_a1_2 = temp_a1 << sp40;
                    sp20 = temp_a1_2;
                    sp6 = (temp_a3_3 >= (u32) temp_a5_5) ? temp_a5_5 : (s16) temp_a3_3;
                    temp_a2_4 = (temp_a4_2 * (s32) pBox) + nBox;
                    sp120 = temp_a2_4;
                    temp_s6(sp, temp_a1_2 + temp_a2_4, pBox, temp_s1, arg_sp4, arg_spC, sp40, temp_a7_7);
                    if (sp4 < var_s0->unk4) {
                        do {
                            sp0 = sp4;
                            temp_v0_3 = var_s0->unk4;
                            sp4 = (temp_v0_3 >= (sp4 + temp_s4)) ? (sp4 + temp_s4) : temp_v0_3;
                            temp_s6(sp, sp120, pBox, temp_s1, arg_sp4, arg_spC);
                        } while (sp4 < var_s0->unk4);
                    }
                    if (sp6 < var_s0->unk6) {
                        sp118 = sp20 + nBox;
loop_17:
                        sp2 = sp6;
                        temp_v1_5 = var_s0->unk6;
                        sp6 = (temp_v1_5 >= (sp6 + temp_s8)) ? (sp6 + temp_s8) : temp_v1_5;
                        temp_v0_4 = var_s0->unk0;
                        sp0 = temp_v0_4;
                        temp_a1_3 = var_s0->unk4;
                        temp_v0_5 = (temp_v0_4 + temp_s4) - sp128;
                        sp4 = (temp_v0_5 >= (u32) temp_a1_3) ? temp_a1_3 : (s16) temp_v0_5;
                        temp_s6(sp, sp118, pBox, temp_s1, arg_sp4, arg_spC);
                        if (sp4 < var_s0->unk4) {
                            do {
                                sp0 = sp4;
                                temp_v1_6 = var_s0->unk4;
                                sp4 = (temp_v1_6 >= (sp4 + temp_s4)) ? (sp4 + temp_s4) : temp_v1_6;
                                temp_s6(sp, (s64) nBox, pBox, temp_s1, arg_sp4, arg_spC);
                            } while (sp4 < var_s0->unk4);
                        }
                        if (sp6 < var_s0->unk6) {
                            goto loop_17;
                        }
                    }
                }
                var_s0 += 8;
                if (var_s0 != sp110) {
                    goto loop_8;
                }
            }
            return;
        case 0:
            temp_t2(0, 3, arg_sp4, arg_spC);
            return;
        case 15:
            temp_t2(-1, 3, arg_sp4, arg_spC);
            return;
        case 10:
            temp_t2(-1, 0xA, arg_sp4, arg_spC);
            return;
        }
    }
}

/*
Decompilation failure in function mgrasLineSD:

Unable to determine jump table for jr instruction at mgras_draw.s line 10564.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasSegmentSD:

Unable to determine jump table for jr instruction at mgras_draw.s line 11222.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function mgrasZeroPolyArc:

Unable to determine jump table for jr instruction at mgras_draw.s line 11829.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/
