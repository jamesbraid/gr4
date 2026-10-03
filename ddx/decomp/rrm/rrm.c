/* Warning: missing "jr $ra" in last block of rrmInit (initial). */

/* Warning: missing "jr $ra" in last block of rrmCloseScreen (initial). */

? .L5e38df10(void *, s32, s32, void *, s32);        /* extern */
s32 AllocColor(void **, s16 *, s16 *, s16 *, s32 *, ?, s16, s16); /* extern */
s32 AllocateScreenPrivateIndex();                   /* extern */
s32 ChangeWindowProperty(s64, s32, ?, ?, ?, s32, s32 *, ?); /* extern */
? ErrorF(void *);                                   /* extern */
s32 FakeClientID(?);                                /* extern */
? FatalError(void *, s32 *);                        /* extern */
? FindBestID(void *);                               /* extern */
? FindFreeCID(void *);                              /* extern */
s32 FindFreeID(void *, s32, s32, ?, void *, s32, void *); /* extern */
? FreeResource(s64, ?);                             /* extern */
s32 MakeAtom(void *, ?, ?, void (*)(void *, s32 *, s32 *), void (**)(void *, s32 *, s32 *)); /* extern */
s32 Ones(s32);                                      /* extern */
? SetDIDMode(void *, void *, void *, s32, s32, s32); /* extern */
? SetReservedID(void *, s32);                       /* extern */
? StealID(void *);                                  /* extern */
s32 TellLostMap(void *arg0, void *arg1);            /* extern */
? WalkTree(void *, s32 (*)(void *, void *), void *, void *, s32, s32 *, s32); /* extern */
s32 *Xalloc(s64, s64, s32, s32 *, s32, s32 *, s32, s64); /* extern */
? Xfree(s64, s64, s32 *);                           /* extern */
s32 cmapDID(void *, s32, u32);                      /* extern */
? exit(?);                                          /* extern */
s32 incrRRMpriv(void *, s32, s32, s32, ?);          /* extern */
void *nmbxLookupCapability(s32, s32, s32);          /* extern */
s32 strlen(s32 *);                                  /* extern */
s32 nfbCopyPlane(void *arg0, void *arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6, s32 arg7, void *arg_sp4, s32 arg_spC); /* static */
void nfbDoBitBltPS(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6, s64); /* static */
void nfbDoBitBltSP(void *arg0, s64 arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6); /* static */
void nfbSetDidFlags(void *arg0, s32, void *, void *, s32, void *); /* static */
extern void (*GetBestVisualForPEX)(void *, s32 *, s32 *);
extern s32 Must_have_memory;
extern ? PixmapWidthPaddingInfo;
extern s32 WindowTable;
extern s32 copyPlaneGeneration__DCD;
extern s32 copyPlaneScreenIndex__ECD;
extern s32 dbcWindowPrivateIndex;
extern s32 deltaSaveUndersViewable;
extern s32 errno;
extern s32 *gammaAdjust;
extern u32 globalSerialNumber;
extern s32 glxWindowPrivateIndex;
extern s32 inputInfo;
extern s32 numSaveUndersViewable;
extern s32 rrmScreenPrivateIndex;
extern s32 rrmWindowPrivateIndex;
extern ? screenInfo;
extern s32 *serverClient;
extern s32 serverGeneration;
extern s32 sgiOverrideColorCompare;
extern s32 *solidRootOverrideColorName;
extern ? sub_5e3d0000;
extern ? sub_5e4d0000;
extern ? sub_5e4f0000;
extern ? sub_5e500000;
extern ? sub_5e510000;
extern ? sub_5e520000;

void rrmInit(void) {
    saved_reg_gp->unk-7FF0();
}

void rrmCloseScreen(void) {
    saved_reg_gp->unk-7FF0();
}

void nfbPolyPoint(void *arg0, void *arg1, s32 arg2, s32 arg3, void *arg4) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp0;
    s16 temp_a6;
    s16 temp_at;
    s16 temp_v0_2;
    s16 temp_v1;
    s16 var_a1;
    s16 var_a3;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_a1_2;
    s32 var_t1;
    s64 temp_t0;
    s64 temp_t2;
    s64 var_ra;
    void *temp_a2;
    void *temp_a5;
    void *temp_gp;
    void *temp_s6;
    void *temp_t1;
    void *temp_v0;
    void *var_a0;
    void *var_a0_2;
    void *var_a4;
    void *var_a5;
    void *var_a5_2;
    void *var_s1;
    void *var_s2;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1BBE60;
    temp_v0 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s8 = temp_v0->unk34;
    temp_s7 = temp_v0->unk28;
    temp_t1 = temp_v0->unk8;
    temp_a5 = temp_t1->unk8;
    sp30 = (s64) temp_v0->unk30;
    sp28 = (s64) (**(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk18;
    if (temp_a5 != NULL) {
        sp0 = (s64) temp_a5->unk4;
    } else {
        sp0 = 1;
    }
    temp_s6 = (temp_a5 == NULL) ? temp_t1 : (temp_a5 + 8);
    if (arg2 == 1) {
        var_a0 = arg4;
        temp_a1 = arg3 - 1;
        if (arg3 >= 2) {
            temp_a3 = temp_a1 >> 1;
            if (temp_a1 & 1) {
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x104($a0) */);
                temp_v0_2 = var_a0->unk4;
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x106($a0) */);
                temp_a6 = var_a0->unk6;
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x102($a0) */);
                temp_v1 = var_a0->unk2;
                temp_at = var_a0->unk0;
                var_a0 += 4;
                var_a0->unk2 = (s16) (temp_v1 + temp_a6);
                var_a0->unk0 = (s16) (temp_at + temp_v0_2);
            }
            var_a5 = var_a0;
            if (temp_a3 != 0) {
                if (temp_a3 >= 2) {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x104($a5) */);
                    var_a1 = var_a5->unk0;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x106($a5) */);
                    var_a3 = var_a5->unk6;
                    temp_a2 = ((temp_a1 * 4) + arg4) - 8;
                    var_a4 = var_a5 + 8;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x102($a5) */);
loop_33:
                    var_a5->unk4 = (s16) (var_a1 + var_a5->unk4);
                    var_a5->unk6 = (s16) (var_a5->unk2 + var_a3);
                    var_a5->unk8 = (s16) (var_a5->unk4 + var_a5->unk8);
                    var_a5->unkA = (s16) (var_a5->unk6 + var_a5->unkA);
                    var_a5 = var_a4 + 8;
                    var_a3 = var_a4->unk6;
                    var_a1 = var_a4->unk0;
                    if (var_a4 != temp_a2) {
                        var_a4->unk4 = (s16) (var_a1 + var_a4->unk4);
                        var_a4->unk6 = (s16) (var_a4->unk2 + var_a3);
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x102($a5) */);
                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x106($a5) */);
                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x104($a5) */);
                        var_a4->unk8 = (s16) (var_a4->unk4 + var_a4->unk8);
                        var_a4->unkA = (s16) (var_a4->unk6 + var_a4->unkA);
                        var_a4 = var_a5 + 8;
                        var_a3 = var_a5->unk6;
                        var_a1 = var_a4->unk8;
                        if (var_a5 != temp_a2) {
                            goto loop_33;
                        }
                    } else {
                        var_a5 = var_a4;
                    }
                    var_a5->unk6 = (s16) (var_a5->unk2 + var_a3);
                    var_a5->unk4 = (s16) (var_a1 + var_a5->unk4);
                    var_a5->unkA = (s16) (var_a5->unk6 + var_a5->unkA);
                    var_a5->unk8 = (s16) (var_a5->unk4 + var_a5->unk8);
                } else {
                    var_a5->unk6 = (s16) (var_a5->unk2 + var_a5->unk6);
                    var_a5->unk4 = (s16) (var_a5->unk0 + var_a5->unk4);
                    var_a5->unkA = (s16) (var_a5->unk6 + var_a5->unkA);
                    var_a5->unk8 = (s16) (var_a5->unk4 + var_a5->unk8);
                }
            }
        }
    }
    var_a0_2 = arg4;
    var_a1_2 = 0;
    if (arg3 > 0) {
        var_s1 = arg4;
        var_s2 = arg4 + 4;
loop_9:
        temp_t2 = (s64) ((var_s1->unk0 + arg0->unk8) << 0x30) >> 0x30;
        var_s1->unk0 = (s16) temp_t2;
        temp_t0 = (s64) ((var_s1->unk2 + arg0->unkA) << 0x30) >> 0x30;
        var_a5_2 = temp_s6;
        var_s1->unk2 = (s16) temp_t0;
        if (sp0 >= 1) {
loop_17:
            var_t1 = 1;
            if (temp_t0 < var_a5_2->unk6) {
                if ((temp_t0 >= var_a5_2->unk2) && (temp_t2 >= var_a5_2->unk0)) {
                    var_t1 = 0;
                }
                if (var_t1 == 0) {
                    if (temp_t2 >= var_a5_2->unk4) {
                        goto block_16;
                    }
                    var_a1_2 += 1;
                } else {
                    goto block_5;
                }
            } else {
block_16:
                var_a5_2 += 8;
                if (var_a5_2 != (temp_s6 + (sp0 * 8))) {
                    goto loop_17;
                }
                goto block_5;
            }
        } else {
block_5:
            if (var_a1_2 != 0) {
                ((? (*)(void *, s32, s32, s64, s32, ?, ?, void *)) sp28)(var_a0_2, var_a1_2, temp_s7, sp30, temp_s8, 0, 0, arg0);
                var_a1_2 = 0;
            }
            var_a0_2 = var_s2;
        }
        var_s2 += 4;
        var_s1 += 4;
        if (var_s2 != ((arg3 * 4) + arg4 + 4)) {
            goto loop_9;
        }
        var_ra = sp38;
    }
    if (var_a1_2 != 0) {
        sp38 = var_ra;
        ((? (*)(void *, s32, s32, s64, s32, ?, ?, void *)) sp28)(var_a0_2, var_a1_2, temp_s7, sp30, temp_s8, 0, 0, arg0);
    }
}

void nfbPolyFillRect(void *arg0, void *arg1, s32 arg2, void *arg3, ? arg_sp0) {
    s16 temp_a0;
    s16 temp_a3;
    s16 temp_a6_2;
    s16 temp_a6_3;
    s16 temp_a7;
    s16 temp_a7_2;
    s16 temp_a7_3;
    s16 temp_a7_4;
    s16 temp_s4_2;
    s16 temp_s4_3;
    s16 temp_s5;
    s16 temp_s5_2;
    s16 temp_s6;
    s16 temp_s6_2;
    s16 temp_s7;
    s16 temp_t1;
    s16 temp_t1_2;
    s16 temp_t3;
    s16 temp_t3_2;
    s16 temp_t8;
    s16 temp_t8_2;
    s16 temp_t9;
    s16 var_t1_2;
    s32 temp_at_2;
    s32 temp_lo;
    s32 var_ra;
    s32 var_t0;
    s32 var_t2;
    s64 temp_a5;
    s64 temp_at;
    s64 temp_ra;
    s64 temp_sp;
    s64 temp_t0;
    s64 temp_t0_2;
    s64 temp_v0_2;
    s64 var_a2;
    s64 var_a4;
    s64 var_a5;
    void *temp_a1;
    void *temp_a6;
    void *temp_s3;
    void *temp_s4;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *var_a6;
    void *var_s1;
    void *var_t1;

    arg_sp0.unk-2098 = (s64) saved_reg_fp;
    arg_sp0.unk-2090 = (s64) saved_reg_s0;
    arg_sp0.unk-20B8 = (s64) saved_reg_s2;
    arg_sp0.unk-20A8 = (s64) saved_reg_ra;
    arg_sp0.unk-20C0 = (s64) saved_reg_s1;
    arg_sp0.unk-20A0 = (s64) saved_reg_gp;
    arg_sp0.unk-2088 = (s64) saved_reg_s4;
    arg_sp0.unk-20B0 = (s64) saved_reg_s3;
    temp_s4 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x1ADE68)->unk-30F4 * 4));
    var_s1 = arg3;
    temp_s3 = temp_s4->unk8;
    arg_sp0.unk-20D0 = (s64) saved_reg_s7;
    arg_sp0.unk-2068 = (s64) arg1;
    temp_v0 = arg1->unk0->unk18C(temp_s3);
    temp_s7 = arg0->unk8;
    temp_a1 = temp_s3->unk8;
    temp_t9 = temp_v0->unk6;
    temp_a3 = temp_v0->unk0;
    arg_sp0.unk-2070 = (s64) temp_v0->unk2;
    temp_a0 = temp_v0->unk4;
    arg_sp0.unk-2058 = (s64) arg0->unkA;
    arg_sp0.unk-2078 = (s64) *temp_s4->unk24;
    if (temp_a1 != NULL) {
        arg_sp0.unk-2060 = (s64) temp_a1->unk4;
    } else {
        arg_sp0.unk-2060 = 1;
    }
    temp_lo = arg_sp0.unk-2060 * arg2;
    var_t2 = 0;
    temp_v1 = &arg_sp0 - 0x2028;
    var_a5 = 0;
    var_a2 = 0;
    if (temp_lo >= 0x401) {
        temp_sp = sp - (((temp_lo * 8) + 0xF) & ~0xF);
        arg_sp0.unk-2080 = temp_sp;
        arg_sp0.unk-20C8 = temp_sp;
        if (temp_sp == 0) {
            return;
        }
        goto block_6;
    }
    arg_sp0.unk-2080 = (s64) temp_v1;
    arg_sp0.unk-20C8 = (s64) temp_v1;
block_6:
    var_a4 = arg_sp0.unk-2060;
    if (var_a4 != 1) {
        if (arg2 > 0) {
            arg_sp0.unk-20E0 = (s64) saved_reg_s5;
            arg_sp0.unk-20D8 = (s64) saved_reg_s6;
loop_11:
            temp_t8 = var_s1->unk0 + temp_s7;
            temp_t3 = var_s1->unk4 + temp_t8;
            temp_t8_2 = (temp_t8 < temp_a3) ? temp_a3 : temp_t8;
            temp_t3_2 = (temp_a0 < temp_t3) ? temp_a0 : temp_t3;
            var_t2 += 1;
            var_a4 = arg_sp0.unk-2070;
            if (temp_t8_2 >= temp_t3_2) {
                var_s1 += 8;
            } else {
                temp_a5 = var_s1->unk2 + arg_sp0.unk-2058;
                temp_a7 = var_s1->unk6 + temp_a5;
                var_a5 = (temp_a5 < var_a4) ? var_a4 : temp_a5;
                temp_a7_2 = (temp_t9 < temp_a7) ? temp_t9 : temp_a7;
                var_ra = 0;
                var_s1 += 8;
                if (var_a5 < temp_a7_2) {
                    temp_v1_2 = temp_s3->unk8;
                    temp_a6 = (temp_v1_2 == NULL) ? temp_s3 : (temp_v1_2 + 8);
                    var_t1 = temp_a6;
                    if (temp_a6->unk6 < var_a5) {
                        do {
                            var_a4 = var_t1->unkE < var_a5;
                            var_t1 += 8;
                            var_ra += 1;
                        } while (var_a4 != 0);
                    } else {
                        var_t1 = temp_a6;
                    }
                    var_t0 = (arg_sp0.unk-2060 - var_ra) - 1;
                    var_a6 = var_t1;
                    if ((var_t0 != -1) && (var_t1->unk2 < temp_a7_2)) {
                        var_t1_2 = var_a6->unk2;
loop_23:
                        temp_s5 = var_a6->unk4;
                        temp_s6 = var_a6->unk0;
                        var_t0 -= 1;
                        temp_s5_2 = (temp_t3_2 < temp_s5) ? temp_t3_2 : temp_s5;
                        temp_s6_2 = (temp_s6 < temp_t8_2) ? temp_t8_2 : temp_s6;
                        temp_s4_2 = var_a6->unk6;
                        var_a4 = temp_s6_2 < temp_s5_2;
                        var_a6 += 8;
                        temp_ra = (var_t1_2 < var_a5) ? var_a5 : (s64) var_t1_2;
                        temp_s4_3 = (temp_a7_2 < temp_s4_2) ? temp_a7_2 : temp_s4_2;
                        if (var_a4 != 0) {
                            var_a4 = temp_ra < temp_s4_3;
                            temp_at = arg_sp0.unk-20C8 + 8;
                            if (var_a4 != 0) {
                                arg_sp0.unk-20C8 = temp_at;
                                temp_at->unk-2 = temp_s4_3;
                                temp_at->unk-6 = (s16) temp_ra;
                                temp_at->unk-4 = temp_s5_2;
                                var_a2 += 1;
                                temp_at->unk-8 = temp_s6_2;
                            }
                        }
                        if (var_t0 != -1) {
                            var_t1_2 = var_a6->unk2;
                            if (var_t1_2 < temp_a7_2) {
                                goto loop_23;
                            }
                        }
                    }
                }
            }
            if (var_t2 != arg2) {
                goto loop_11;
            }
        }
    } else if (arg2 > 0) {
loop_37:
        temp_a6_2 = var_s1->unk0 + temp_s7;
        temp_a7_3 = var_s1->unk4 + temp_a6_2;
        temp_a6_3 = (temp_a6_2 < temp_a3) ? temp_a3 : temp_a6_2;
        temp_a7_4 = (temp_a0 < temp_a7_3) ? temp_a0 : temp_a7_3;
        var_a4 = temp_a6_3 < temp_a7_4;
        var_a5 += 1;
        if (var_a4 != 0) {
            var_a4 = arg_sp0.unk-2070;
            temp_t0 = var_s1->unk2 + arg_sp0.unk-2058;
            temp_t1 = var_s1->unk6 + temp_t0;
            temp_t0_2 = (temp_t0 < var_a4) ? var_a4 : temp_t0;
            temp_t1_2 = (temp_t9 < temp_t1) ? temp_t9 : temp_t1;
            temp_at_2 = temp_t0_2 < temp_t1_2;
            var_s1 += 8;
            temp_v0_2 = arg_sp0.unk-20C8 + 8;
            if (temp_at_2 != 0) {
                arg_sp0.unk-20C8 = temp_v0_2;
                temp_v0_2->unk-2 = temp_t1_2;
                temp_v0_2->unk-6 = (s16) temp_t0_2;
                temp_v0_2->unk-4 = temp_a7_4;
                var_a2 += 1;
                temp_v0_2->unk-8 = temp_a6_3;
            }
        } else {
            var_s1 += 8;
        }
        if (var_a5 != arg2) {
            goto loop_37;
        }
    }
    arg_sp0.unk-20E8 = var_a2;
    if (var_a2 != 0) {
        ((? (*)(s64, void *, s64, s64, s64, s64)) arg_sp0.unk-2078)(arg_sp0.unk-2068, arg0, arg_sp0.unk-2080, arg_sp0.unk-20E8, var_a4, var_a5);
    }
}

void nfbSolidFillRects(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_at;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1ADA90;
    temp_at = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    (**(arg1->unk84 + (temp_gp->unk-30F8 * 4)))->unk4(arg2, arg3, temp_at->unk40, temp_at->unk48, temp_at->unk4C, arg1);
}

void nfbCursorLimits(void *arg0, void *arg2, void *arg3) {
    s16 temp_a1;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_v0;
    s16 temp_v1;
    s16 temp_v1_2;

    temp_at = arg2->unk0;
    arg3->unk0 = (s16) ((temp_at < 1) ? 0 : temp_at);
    temp_v1 = arg2->unk2;
    arg3->unk2 = (s16) ((temp_v1 < 1) ? 0 : temp_v1);
    temp_v0 = arg0->unk8;
    temp_a1 = arg2->unk4;
    arg3->unk4 = (s16) ((temp_a1 >= temp_v0) ? temp_v0 : temp_a1);
    temp_v1_2 = arg0->unkA;
    temp_at_2 = arg2->unk6;
    arg3->unk6 = (s16) ((temp_at_2 >= temp_v1_2) ? temp_v1_2 : temp_at_2);
}

void nfbPaintWindowBackground(void *arg0, s64 arg1, s32 arg2) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s16 sp12;
    s16 sp10;
    void *spC;
    s32 sp4;
    s32 temp_t3;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a6;
    s64 var_a4;
    s64 var_ra;
    s8 temp_a6;
    u16 temp_a2;
    u16 temp_t8;
    u32 var_a3;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a5;
    void *temp_a7;
    void *temp_gp;
    void *temp_s0;
    void *temp_t1;
    void *temp_t2;
    void *var_s2;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1AAD8C;
    temp_t9 = arg0->unk84;
    var_a6 = temp_gp->unk-30F8 * 4;
    var_a4 = 0;
    var_s2 = arg0;
    temp_s0 = (dbcWindowPrivateIndex * 4) + temp_t9;
    temp_t1 = **(temp_t9 + var_a6);
    if (arg2 != 0) {
        sp40 = 0;
        sp38 = (s64) temp_t1;
        sp30 = arg1;
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x49E0, 0, var_a6);
        var_a4 = 0;
        var_ra = sp48;
        var_a6 = temp_gp->unk-30F8 * 4;
    }
    var_a3 = (u32) var_s2->unk7C >> 0x1E;
    temp_t2 = var_s2;
    if (var_a3 == 1) {
        do {
            var_s2 = var_s2->unk18;
            var_a3 = (u32) var_s2->unk7C >> 0x1E;
        } while (var_a3 == 1);
    }
    temp_a7 = *(var_s2->unk84 + var_a6);
    if (temp_s0->unk3 != -1) {
        temp_a6 = temp_s0->unk1;
        if (temp_a6 >= 0) {
            temp_s0->unk1 = -1;
            var_a4 = (s64) temp_a6;
            var_a3 = (u32) var_s2->unk7C >> 0x1E;
        }
    }
    temp_t3 = temp_a7->unk8;
    switch (var_a3) {                               /* irregular */
    case 0:
    case 1:
        break;
    case 2:
        temp_a3 = arg1->unk8;
        if (temp_a3 != NULL) {
            sp48 = var_ra;
            sp40 = var_a4;
            var_a1 = temp_a3->unk4;
        } else {
            sp48 = var_ra;
            sp40 = var_a4;
            var_a1 = 1;
        }
        temp_t1->unk4((temp_a3 == NULL) ? arg1 : (temp_a3 + 8), var_a1, temp_a7->unkC, 3, temp_t3, temp_t2, var_a3, temp_a7);
        var_a4 = sp40;
        break;
    case 3:
        temp_t8 = var_s2->unk6C->unkC;
        sp10 = (s16) ((s16) var_s2->unk8 % (s32) temp_t8);
        temp_a2 = var_s2->unk6C->unkE;
        sp12 = (s16) ((s16) var_s2->unkA % (s32) temp_a2);
        temp_a3_2 = arg1->unk8;
        M2C_TRAP_IF(temp_t8 == 0);
        M2C_TRAP_IF(temp_a2 == 0);
        if (temp_a3_2 != NULL) {
            sp48 = var_ra;
            sp40 = var_a4;
            var_a1_2 = temp_a3_2->unk4;
        } else {
            sp48 = var_ra;
            sp40 = var_a4;
            var_a1_2 = 1;
        }
        temp_a5 = var_s2->unk6C;
        spC = temp_t2;
        sp4 = temp_t3;
        temp_t1->unk1C((temp_a3_2 == NULL) ? arg1 : (s64) (temp_a3_2 + 8), var_a1_2, temp_a5->unk20, temp_a5->unk1C, temp_a5->unkC, temp_a5->unkE, &sp10, 3);
        var_a4 = sp40;
        break;
    }
    if (temp_s0->unk1 == -1) {
        temp_s0->unk1 = (s8) var_a4;
    }
}

void nfbFillSpans(s64 arg0, void *arg1, s32 arg2, s64 arg3, s64 arg4, s32 arg5, ? arg_sp0) {
    s16 temp_t8_2;
    s32 temp_sp;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_t3;
    s32 var_v1;
    s64 temp_sp_2;
    s64 temp_v0;
    s64 var_a7;
    s64 var_t9;
    void *temp_a6;
    void *temp_gp;
    void *temp_t1;
    void *temp_t8;
    void *var_a5;

    arg_sp0.unk-78 = (s64) saved_reg_gp;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x198550;
    var_a7 = temp_gp->unk-30F4 * 4;
    temp_a6 = *(arg1->unk4C + var_a7);
    arg_sp0.unk-80 = (s64) saved_reg_fp;
    temp_t1 = temp_a6->unk8;
    temp_t8 = temp_t1->unk8;
    var_t3 = 0;
    arg_sp0.unk-70 = (s64) temp_t1;
    if (temp_t8 != NULL) {
        arg_sp0.unk-40 = (s64) temp_t8->unk4;
    } else {
        arg_sp0.unk-40 = 1;
    }
    temp_v0 = arg_sp0.unk-40;
    var_a5 = (temp_t8 == NULL) ? (void *) arg_sp0.unk-70 : (temp_t8 + 8);
    var_t9 = temp_v0;
    if (temp_v0 > 0) {
loop_7:
        temp_t8_2 = var_a5->unk2;
        var_a2 = 0;
        arg_sp0.unk-48 = (s64) temp_t8_2;
        if (var_t9 > 0) {
            var_a7 = arg_sp0.unk-48;
            var_v1 = var_t3 < 0;
            if (temp_t8_2 == var_a7) {
loop_10:
                var_t9 -= 1;
                var_a2 += 1;
                var_a5 += 8;
                if (var_t9 > 0) {
                    if (var_a5->unk2 != temp_t8_2) {

                    } else {
                        goto loop_10;
                    }
                }
                goto block_5;
            }
        } else {
block_5:
            var_v1 = var_t3 < var_a2;
        }
        var_t3 = (var_v1 != 0) ? var_a2 : var_t3;
        if (var_t9 > 0) {
            goto loop_7;
        }
        arg_sp0.unk-90 = (s64) saved_reg_s0;
    }
    temp_v0_2 = ((arg2 * var_t3 * 4) + 0xF) & ~0xF;
    arg_sp0.unk-90 = (s64) saved_reg_s0;
    temp_sp = sp - temp_v0_2;
    temp_sp_2 = temp_sp - temp_v0_2;
    if ((temp_sp_2 == 0) || (arg_sp0.unk-58 = (s64) arg1, arg_sp0.unk-60 = (s64) temp_a6->unk24->unk4, arg_sp0.unk-68 = arg0, arg_sp0.unk-A0 = arg4, arg_sp0.unk-98 = arg3, (temp_sp == 0))) {
        return;
    }
    arg_sp0.unk-50 = temp_sp_2;
    arg_sp0.unk-88 = (s64) saved_reg_ra;
    ((? (*)(s64, s64, s64, s32, s32)) arg_sp0.unk-60)(arg_sp0.unk-58, arg_sp0.unk-68, arg_sp0.unk-50, temp_sp, temp_gp->unk-7718(temp_t1, arg_sp0.unk-98, arg_sp0.unk-A0, arg2, temp_sp_2, temp_sp, arg5, var_a7));
}

s32 nfbTellGainedMap(void *arg0, void *arg1) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp20;
    s8 spD;
    s8 spC;
    s32 sp8;
    s32 sp4;
    s8 sp0;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 var_a0;
    s32 var_a1;
    s64 var_ra;
    void *temp_a0;
    void *temp_gp;
    void *temp_t0;
    void *temp_t1;

    var_ra = saved_reg_ra;
    var_a0 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x198390;
    if (arg0->unk1 != 2) {
        temp_a0 = arg0->unk78;
        if (temp_a0 != NULL) {
            var_a1 = temp_a0->unk8;
        } else {
            var_ra = sp58;
            var_a1 = temp_gp->unk-7598(arg0)->unk78->unk8;
        }
        var_a0 = var_a1;
    }
    if (arg1->unk8 == var_a0) {
        sp58 = var_ra;
        temp_t1 = arg0->unk10->unk74;
        sp20 = (s64) temp_t1;
        temp_t0 = *(arg0->unk84 + (temp_gp->unk-30F8 * 4));
        sp50 = (s64) temp_t0;
        sp0 = 0x20;
        sp48 = (s64) temp_t0->unk4;
        temp_a6 = arg0->unk4;
        sp4 = temp_a6;
        sp40 = (s64) (temp_t1->unk74 + (*arg1->unk44 * 0x1C))->unk10;
        temp_a4 = arg1->unk8;
        spD = 1;
        spC = 0;
        sp8 = temp_a4;
        temp_gp->unk-72A4(arg0, sp, 1, 0, temp_a4, 1, temp_a6, 0x20);
        temp_a0_2 = sp50->unk20;
        if (temp_a0_2 & 2) {
            if (temp_a0_2 & 1) {
                if (sp40 != sp48) {
                    sp50->unk4 = (s32) sp40;
                    temp_gp->unk-7BFC(arg0, sp48);
                }
            } else {
                sp20->unkC8(arg0, arg1);
            }
        }
    }
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x70, 0x74, 0x78, 0x7c], gap at: 0x68. */
void nfbGetSpans(void *arg0, u64 arg2, s32 *arg3, s64 arg4, s16 *arg5) {
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    u64 sp108;
    s64 sp100;
    s64 spF8;
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
    u64 spA0;
    s64 sp98;
    s64 sp90;
    s16 sp30;
    s16 sp2C;
    s32 sp10;
    s16 spE;
    s16 spC;
    s16 spA;
    s16 sp8;
    ? (*temp_s4)(s16 *, s16 *, ?, void *, s32, s16);
    s16 *temp_s0;
    s16 *temp_s8_2;
    s16 *var_a1;
    s16 *var_a5;
    s16 *var_s0;
    s16 *var_s2;
    s16 *var_s3;
    s16 temp_a3;
    s16 temp_a5_5;
    s16 temp_a6;
    s16 temp_t2;
    s16 temp_t3;
    s16 temp_v0_9;
    s32 *temp_a1;
    s32 *temp_a1_5;
    s32 *temp_a2_4;
    s32 *temp_a3_4;
    s32 *temp_a3_5;
    s32 *temp_a4_3;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *var_a0;
    s32 *var_a5_2;
    s32 *var_s4_2;
    s32 *var_s6;
    s32 *var_t8;
    s32 *var_v1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_6;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_7;
    s32 temp_a3_2;
    s32 temp_a3_6;
    s32 temp_a4_5;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_at_4;
    s32 temp_at_5;
    s32 temp_s1;
    s32 temp_s3_2;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_s8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1_3;
    s32 temp_v1_5;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_ra_2;
    s32 var_s5;
    s32 var_s8;
    s32 var_t1_2;
    s32 var_t3;
    s32 var_v0;
    s64 temp_a0_3;
    s64 temp_a3_3;
    s64 temp_a4;
    s64 temp_a4_2;
    s64 var_a1_3;
    s64 var_a2_3;
    s64 var_a7;
    s64 var_ra;
    s64 var_s1_2;
    s64 var_s4;
    s64 var_t1;
    u32 *temp_a5_4;
    u32 *var_s1;
    u32 temp_a1_4;
    u32 temp_a2_5;
    u32 temp_a4_4;
    u32 temp_at_2;
    u32 temp_at_3;
    u32 temp_s5;
    u32 temp_s6;
    u32 temp_s6_2;
    u32 temp_v1_4;
    u32 var_a1_2;
    u32 var_at;
    u64 temp_at;
    u64 var_s2_3;
    u64 var_s7;
    u8 temp_a2;
    void *temp_a2_6;
    void *temp_at_6;
    void *temp_gp;
    void *temp_s3;
    void *temp_t0;
    void *temp_v1_6;
    void *var_s2_2;
    void *var_t2;
    void *var_t9;

    var_ra = saved_reg_ra;
    var_s0 = arg5;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18FFDC;
    if (arg0->unk0 != 0) {
        temp_a2 = arg0->unk3;
        switch (temp_a2) {                          /* irregular */
        default:
            temp_gp->unk-755C(&sub_5e4f0000 + 0x4990, temp_a2);
            var_ra = unksp68;
            goto block_6;
        case 32:
            temp_gp->unk-79FC(arg0, arg2, arg3, arg4, var_s0);
            return;
        case 1:
            var_t2 = temp_gp - 0x6DC8;
            var_t9 = temp_gp - 0x6E50;
            temp_at = (arg4 * 4) + arg2;
            spA0 = temp_at;
            var_s7 = arg2;
            var_t8 = arg3;
            sp98 = (s64) arg0->unk20;
            var_s2 = var_s0;
            spA8 = (s64) ((u32) arg0->unk1C >> 2);
            if (arg2 < temp_at) {
                var_t3 = sp0;
                sp90 = spA8 << 5;
loop_23:
                temp_a3 = var_s7->unk0;
                temp_a5 = temp_a3 & 0x1F;
                temp_a4 = *var_t8 + temp_a3;
                temp_a4_2 = (temp_a4 >= sp90) ? sp90 : temp_a4;
                temp_a2_2 = temp_a4_2 - temp_a3;
                var_s1 = (((var_s7->unk2 * spA8) + (temp_a3 >> 5)) * 4) + sp98;
                if ((u32) (temp_a2_2 + temp_a5) < 0x21U) {
                    temp_a0 = *var_s2;
                    temp_v0 = temp_a2_2 * 4;
                    var_s2 += 4;
                    var_s2->unk-4 = (s32) ((*(temp_v0 + var_t9) & temp_a0) | (*(temp_v0 + var_t2) & (var_s1->unk0 << temp_a5)));
                } else {
                    temp_v0_2 = *((temp_a5 * 4) + var_t9);
                    var_s4 = (temp_v0_2 == 0) ? 0 : (0x20 - temp_a5);
                    var_ra_2 = (temp_v0_2 == 0) ? (temp_a2_2 >> 5) : ((s32) ((temp_a5 + temp_a2_2) - 0x20) >> 5);
                    var_s8 = *((((temp_a3 + temp_a2_2) & 0x1F) * 4) + var_t2);
                    spB8 = (s64) temp_v0_2;
                    var_t3 = (var_s8 != 0) ? (temp_a4_2 & 0x1F) : var_t3;
                    if (temp_v0_2 != 0) {
                        temp_a3_2 = 0x20 - temp_a5;
                        temp_a0_2 = var_s4 * 4;
                        var_a2 = var_s1->unk0 << temp_a5;
                        if (temp_a3_2 < var_s4) {
                            var_a2 |= (u32) var_s1->unk4 >> temp_a3_2;
                        }
                        var_s1 = ((u32) (var_s4 + temp_a5) >= 0x20U) ? (var_s1 + 4) : var_s1;
                        *var_s2 = (s32) ((*(temp_a0_2 + var_t9) & *var_s2) | (*(temp_a0_2 + var_t2) & var_a2));
                    }
                    temp_a2_3 = var_s4 * 4;
                    if (var_ra_2 > 0) {
                        var_a5 = var_s2;
                        temp_a1 = ((var_s4 & 0x1F) << 7) + (temp_gp - 0x6D40);
                        spB0 = (s64) (var_s1 + (var_ra_2 * 4));
                        spC8 = 0x20 - var_s4;
                        temp_a4_3 = temp_a2_3 + var_t2;
                        temp_a2_4 = temp_a2_3 + var_t9;
                        spC0 = (s64) &sp30;
                        if (var_ra_2 >= 2) {
                            sp108 = var_s7;
                            spE8 = (s64) var_s8;
                            var_at = *var_s1;
                            sp110 = var_s4;
                            var_a7 = var_s4 < 1;
                            sp100 = (s64) var_t8;
                            var_v1 = (var_a7 != 0) ? temp_a1 : &sp10;
                            sp120 = (s64) var_s2;
                            var_a1 = var_a5 + 4;
                            spF8 = (s64) var_ra_2;
                            var_a0 = (var_a7 != 0) ? &sp10 : temp_a4_3;
                            temp_a3_3 = var_s4 < 1;
                            spF0 = (s64) var_t3;
                            var_t1 = temp_a3_3;
                            sp118 = (s64) var_s1;
                            var_s2_2 = var_s1 + 4;
                            temp_s1 = spB0 - 4;
                            var_v0 = *((var_a7 != 0) ? &sp10 : temp_a2_4);
                            var_s4_2 = (temp_a3_3 != 0) ? &sp10 : temp_a2_4;
                            var_a2_2 = ((var_a7 != 0) ? &spC : var_a5)->unk4;
loop_32:
                            temp_v0_3 = *var_v1;
                            temp_a2_5 = var_at >> var_s4;
                            temp_s8 = *var_a0;
                            ((var_a7 != 0) ? &sp2C : var_a5)->unk4 = (s32) ((var_v0 & var_a2_2) | ((var_at << spC8) & temp_s8));
                            temp_a0_3 = var_s4 < 1;
                            temp_a5_2 = *var_a5;
                            temp_v1 = (var_t1 != 0) ? temp_a1 : &sp10;
                            temp_a5_3 = ((var_t1 != 0) ? &spC : var_a1)->unk4;
                            *((var_a7 != 0) ? spC0 : (s64) var_a5) = (s32) ((temp_s8 & temp_a5_2) | temp_a2_5);
                            *((var_a7 != 0) ? var_a5 : &sp30) = (s32) ((~temp_v0_3 & temp_a5_2) | (temp_a2_5 & temp_v0_3));
                            temp_a3_4 = (var_t1 != 0) ? &sp10 : temp_a4_3;
                            temp_v0_4 = *var_s4_2;
                            temp_a2_6 = var_s2_2 + 4;
                            temp_s8_2 = var_a1 + 4;
                            temp_at_2 = var_s2_2->unk0;
                            if (var_s2_2 != temp_s1) {
                                temp_v0_5 = *temp_v1;
                                temp_s5 = temp_at_2 >> var_s4;
                                temp_s7 = *temp_a3_4;
                                ((var_t1 != 0) ? &sp2C : var_a1)->unk4 = (s32) ((temp_v0_4 & temp_a5_3) | ((temp_at_2 << spC8) & temp_s7));
                                var_a7 = var_s4 < 1;
                                temp_a1_2 = var_a1->unk0;
                                temp_v1_2 = (temp_a0_3 != 0) ? temp_a1 : &sp10;
                                temp_a1_3 = ((temp_a0_3 != 0) ? &spC : temp_s8_2)->unk4;
                                *((var_t1 != 0) ? spC0 : (s64) var_a1) = (s32) ((temp_s7 & temp_a1_2) | temp_s5);
                                *((var_t1 != 0) ? var_a1 : &sp30) = (s32) ((~temp_v0_5 & temp_a1_2) | (temp_s5 & temp_v0_5));
                                temp_a3_5 = (temp_a0_3 != 0) ? &sp10 : temp_a4_3;
                                temp_v0_6 = *((temp_a0_3 != 0) ? &sp10 : temp_a2_4);
                                temp_s3 = temp_a2_6 + 4;
                                var_a5 = temp_s8_2 + 4;
                                temp_at_3 = var_s2_2->unk4;
                                if (temp_a2_6 != temp_s1) {
                                    temp_v1_3 = *temp_v1_2;
                                    temp_a1_4 = temp_at_3 >> var_s4;
                                    temp_s7_2 = *temp_a3_5;
                                    ((temp_a0_3 != 0) ? &sp2C : temp_s8_2)->unk4 = (s32) ((temp_v0_6 & temp_a1_3) | ((temp_at_3 << spC8) & temp_s7_2));
                                    var_t1 = var_s4 < 1;
                                    temp_v0_7 = var_a1->unk4;
                                    var_v1 = (var_a7 != 0) ? temp_a1 : &sp10;
                                    var_a2_2 = ((var_a7 != 0) ? &spC : var_a5)->unk4;
                                    *((temp_a0_3 != 0) ? spC0 : (s64) temp_s8_2) = (s32) ((temp_s7_2 & temp_v0_7) | temp_a1_4);
                                    *((temp_a0_3 != 0) ? temp_s8_2 : &sp30) = (s32) ((~temp_v1_3 & temp_v0_7) | (temp_a1_4 & temp_v1_3));
                                    var_a0 = (var_a7 != 0) ? &sp10 : temp_a4_3;
                                    var_v0 = *((var_a7 != 0) ? &sp10 : temp_a2_4);
                                    var_s4_2 = (var_t1 != 0) ? &sp10 : temp_a2_4;
                                    var_s2_2 = temp_s3 + 4;
                                    var_a1 = var_a5 + 4;
                                    var_at = temp_a2_6->unk4;
                                    if (temp_s3 == temp_s1) {
                                        var_a1_2 = var_at;
                                        spD0 = (s64) var_a1_2;
                                        var_s8 = (s32) spE8;
                                        var_t3 = (s32) spF0;
                                        var_ra_2 = (s32) spF8;
                                        var_s6 = var_v1;
                                        var_t8 = (s32 *) sp100;
                                        var_s5 = var_v0;
                                        var_s7 = sp108;
                                        var_s3 = var_a5;
                                        var_a5_2 = var_a0;
                                        var_t9 = temp_gp - 0x6E50;
                                        var_s4 = sp110;
                                        var_t2 = temp_gp - 0x6DC8;
                                        var_s1 = (u32 *) sp118;
                                        var_t1_2 = var_a2_2;
                                        var_a2_3 = var_a7;
                                        var_s2 = (s16 *) sp120;
                                    } else {
                                        goto loop_32;
                                    }
                                } else {
                                    var_s3 = temp_s8_2;
                                    var_s8 = (s32) spE8;
                                    var_t3 = (s32) spF0;
                                    var_ra_2 = (s32) spF8;
                                    var_t8 = (s32 *) sp100;
                                    var_s7 = sp108;
                                    var_s4 = sp110;
                                    var_s1 = (u32 *) sp118;
                                    var_s6 = temp_v1_2;
                                    var_s5 = temp_v0_6;
                                    var_s2 = (s16 *) sp120;
                                    var_t1_2 = temp_a1_3;
                                    spD8 = temp_a0_3;
                                    var_t9 = temp_gp - 0x6E50;
                                    spE0 = (s64) temp_a3_5;
                                    var_t2 = temp_gp - 0x6DC8;
                                    var_a2_3 = spD8;
                                    var_a1_2 = temp_at_3;
                                    var_a5_2 = (s32 *) spE0;
                                }
                            } else {
                                var_s8 = (s32) spE8;
                                var_t3 = (s32) spF0;
                                var_ra_2 = (s32) spF8;
                                var_t8 = (s32 *) sp100;
                                var_s6 = temp_v1;
                                var_s7 = sp108;
                                var_s5 = temp_v0_4;
                                var_s4 = sp110;
                                var_a5_2 = temp_a3_4;
                                var_s1 = (u32 *) sp118;
                                var_s3 = var_a1;
                                var_a1_2 = temp_at_2;
                                var_t9 = temp_gp - 0x6E50;
                                spD8 = var_t1;
                                var_t2 = temp_gp - 0x6DC8;
                                var_s2 = (s16 *) sp120;
                                var_t1_2 = temp_a5_3;
                                var_a2_3 = spD8;
                            }
                            temp_v0_8 = *var_a5_2;
                            temp_at_4 = *var_s6;
                            ((var_a2_3 == 0) ? var_s3 : &sp2C)->unk4 = (s32) ((var_s5 & var_t1_2) | ((var_a1_2 << spC8) & temp_v0_8));
                            temp_v1_4 = var_a1_2 >> var_s4;
                            temp_a0_4 = *var_s3;
                            *((var_a2_3 == 0) ? var_s3 : (s16 *) spC0) = (s32) ((temp_v0_8 & temp_a0_4) | temp_v1_4);
                            *((var_a2_3 != 0) ? var_s3 : &sp30) = (s32) ((~temp_at_4 & temp_a0_4) | (temp_v1_4 & temp_at_4));
                        } else {
                            temp_at_5 = var_s4 < 1;
                            temp_a0_5 = *var_a5;
                            temp_s6 = *var_s1;
                            temp_s3_2 = *((temp_at_5 == 0) ? temp_a4_3 : &sp10);
                            temp_a1_5 = (temp_at_5 == 0) ? &sp10 : temp_a1;
                            temp_s6_2 = temp_s6 >> var_s4;
                            *((temp_at_5 == 0) ? var_a5 : (s16 *) spC0) = (s32) ((temp_s3_2 & temp_a0_5) | temp_s6_2);
                            ((temp_at_5 == 0) ? var_a5 : &sp2C)->unk4 = (s32) ((*((temp_at_5 == 0) ? temp_a2_4 : &sp10) & ((temp_at_5 == 0) ? var_a5 : &spC)->unk4) | ((temp_s6 << spC8) & temp_s3_2));
                            *((temp_at_5 == 0) ? &sp30 : var_a5) = (s32) ((~*temp_a1_5 & temp_a0_5) | (temp_s6_2 & *temp_a1_5));
                        }
                    }
                    temp_a1_6 = var_s4 + var_t3;
                    temp_a2_7 = ((var_ra_2 < 0) ? 0 : var_ra_2) * 4;
                    var_s2 += temp_a2_7;
                    if (var_s8 != 0) {
                        temp_a5_4 = var_s1 + temp_a2_7;
                        temp_a3_6 = var_s2->unk0;
                        temp_a4_4 = (u32) *temp_a5_4 >> var_s4;
                        if (temp_a1_6 < 0x21) {
                            temp_v1_5 = *((((var_t3 & 0x1F) + ((var_s4 & 0x1F) << 5)) * 4) + (temp_gp - 0x6D40));
                            var_s2->unk0 = (s32) ((~temp_v1_5 & temp_a3_6) | (temp_v1_5 & temp_a4_4));
                        } else {
                            temp_a0_6 = temp_a1_6 * 4;
                            var_s2->unk0 = (s32) ((*((var_s4 * 4) + var_t2) & temp_a3_6) | temp_a4_4);
                            var_s2->unk4 = (s32) (((temp_a0_6 + var_t9)->unk-80 & var_s2->unk4) | ((temp_a0_6 + var_t2)->unk-80 & (*temp_a5_4 << (0x20 - var_s4))));
                        }
                        var_s2 = (temp_a1_6 >= 0x21) ? (var_s2 + 4) : var_s2;
                    }
                    if (spB8 != 0) {
                        goto block_20;
                    }
                    if (var_s8 != 0) {
block_20:
                        var_s2 += 4;
                    }
                }
                var_s7 += 4;
                var_t8 += 4;
                if (var_s7 < spA0) {
                    goto loop_23;
                }
            }
            return;
        case 8:
            temp_gp->unk-7B00(arg0, arg2, arg3, arg4, var_s0);
            return;
        case 16:
            temp_gp->unk-78EC(arg0, arg2, arg3, arg4, var_s0);
            return;
        }
    } else {
block_6:
        sp130 = (s64) arg3;
        var_a1_3 = arg4;
        var_s1_2 = sp130;
        temp_s4 = (**(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk14;
        if (arg4 > 0) {
            var_s2_3 = arg2;
            if (arg4 & 1) {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s2) */);
                sp128 = var_a1_3;
                sp8 = var_s2_3->unk0;
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s1) */);
                spC = var_s2_3->unk0 + *var_s1_2;
                spA = var_s2_3->unk2;
                temp_v0_9 = var_s2_3->unk2;
                var_s2_3 += 4;
                unksp68 = var_ra;
                spE = temp_v0_9 + 1;
                temp_s4(&sp8, var_s0, 0, arg0);
                temp_at_6 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                var_a1_3 = sp128;
                var_s1_2 += 4;
                var_s0 += ((s32) (temp_at_6->unk0 + (spC - sp8)) >> temp_at_6->unk4) << temp_at_6->unk8;
                var_ra = unksp68;
            }
            unksp68 = var_ra;
            if ((var_a1_3 >> 1) != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s2) */);
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s1) */);
                    temp_a5_5 = var_s2_3->unk0;
                    sp8 = temp_a5_5;
                    temp_a4_5 = var_s1_2->unk0;
                    spC = var_s2_3->unk0 + temp_a4_5;
                    spA = var_s2_3->unk2;
                    spE = var_s2_3->unk2 + 1;
                    temp_s4(&sp8, var_s0, 0, arg0, temp_a4_5, temp_a5_5);
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($s2) */);
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($s1) */);
                    temp_t3 = sp8;
                    sp8 = var_s2_3->unk4;
                    temp_t2 = spC;
                    spC = var_s2_3->unk4 + var_s1_2->unk4;
                    spA = var_s2_3->unk6;
                    temp_a6 = var_s2_3->unk6;
                    temp_t0 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                    var_s1_2 += 8;
                    var_s2_3 += 8;
                    temp_s0 = (((s32) (temp_t0->unk0 + (temp_t2 - temp_t3)) >> temp_t0->unk4) << temp_t0->unk8) + var_s0;
                    spE = temp_a6 + 1;
                    temp_s4(&sp8, temp_s0, 0, arg0);
                    temp_v1_6 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                    var_s0 = (((s32) (temp_v1_6->unk0 + (spC - sp8)) >> temp_v1_6->unk4) << temp_v1_6->unk8) + temp_s0;
                } while (var_s1_2 != ((arg4 * 4) + sp130));
            }
        }
    }
}

s64 nfbGetLayerWindow(void *arg0) {
    s64 sp20;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_t0_4;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s8;
    s32 var_v0;
    s64 var_a1;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_at;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t1;
    void *temp_t1_2;
    void *var_a3;
    void *var_a3_2;
    void *var_a3_3;
    void *var_t0;
    void *var_t0_2;
    void *var_t1;
    void *var_t1_2;
    void *var_t9;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0x18F484;
    sp10 = 0;
    temp_a6 = arg0->unk24;
    temp_t0 = *(arg0->unk84 + (temp_at->unk-30F8 * 4));
    var_a7 = 0;
    var_v0 = 0;
    var_a4 = 0;
    sp0 = (s64) temp_a6;
    var_a5 = 0;
    sp8 = (s64) arg0->unk10->unk74;
    var_s8 = 0;
    if (temp_t0->unk1C != 0) {
        var_t9 = temp_a6;
        if (temp_a6 != NULL) {
loop_14:
            sp20 = 0;
            temp_t3 = temp_at->unk-30F8 * 4;
            if (((u32) (var_t9->unk7C & 0x7FF) >> 0xA) != 0) {
                temp_a6_2 = *(temp_t3 + var_t9->unk84);
                var_a6 = temp_a6_2->unk18;
                temp_t8 = sp8->unk38;
                var_a7 |= 1 << var_a6;
                if (temp_a6_2->unk1C != 0) {
                    var_a3 = var_t9->unk24;
                    if (temp_t8 != 0) {
loop_21:
                        if (((u32) (var_a3->unk7C & 0x7FF) >> 0xA) != 0) {
                            temp_t0_2 = *(temp_t3 + var_a3->unk84);
                            temp_a5 = temp_t0_2->unk18;
                            var_a7 |= 1 << temp_a5;
                            if (var_a6 != 0) {
                                var_a6 = (*((temp_a5 * 4) + temp_t8) & (1 << var_a6)) ? temp_a5 : var_a6;
                            }
                            temp_t1 = var_a3->unk24;
                            var_a5 = var_a4;
                            if (temp_t1 != NULL) {
                                temp_v1 = temp_t0_2->unk1C;
                                var_a4 = (temp_v1 != 0) ? 1 : var_a4;
                                var_a3 = (temp_v1 != 0) ? temp_t1 : var_a3;
                                var_a5 = var_a4;
                            }
                        }
                        if (var_a5 != 0) {
block_20:
                            var_a5 = 0;
                            var_a4 = 0;
                            goto loop_21;
                        }
                        var_t0 = var_a3->unk1C;
                        if (var_t0 != NULL) {
                            goto block_27;
                        }
                        if (var_t9 != var_a3) {
loop_4:
                            var_a3 = var_a3->unk18;
                            var_t0 = var_a3->unk1C;
                            if (var_t0 == NULL) {
                                if (var_t9 != var_a3) {
                                    goto loop_4;
                                }
                            } else {
block_27:
                                if (var_t9 != var_a3) {
                                    var_a3 = var_t0;
                                    goto block_20;
                                }
                            }
                        }
                    } else {
loop_40:
                        if (((u32) (var_a3->unk7C & 0x7FF) >> 0xA) != 0) {
                            temp_t0_3 = *(temp_t3 + var_a3->unk84);
                            temp_a0 = temp_t0_3->unk18;
                            temp_t1_2 = var_a3->unk24;
                            var_a7 |= 1 << temp_a0;
                            var_a6 = (var_a6 != 0) ? ((temp_a0 >= var_a6) ? var_a6 : temp_a0) : var_a6;
                            if (temp_t1_2 != NULL) {
                                temp_a1 = temp_t0_3->unk1C;
                                var_s8 = (temp_a1 != 0) ? 1 : var_s8;
                                var_a3 = (temp_a1 != 0) ? temp_t1_2 : var_a3;
                            }
                            var_v0 = var_s8;
                        }
                        if (var_v0 != 0) {
block_39:
                            var_v0 = 0;
                            var_s8 = 0;
                            goto loop_40;
                        }
                        var_t0_2 = var_a3->unk1C;
                        if (var_t0_2 != NULL) {
                            goto block_44;
                        }
                        if (var_t9 != var_a3) {
loop_47:
                            var_a3 = var_a3->unk18;
                            var_t0_2 = var_a3->unk1C;
                            if (var_t0_2 == NULL) {
                                if (var_t9 == var_a3) {

                                } else {
                                    goto loop_47;
                                }
                            } else {
block_44:
                                if (var_t9 != var_a3) {
                                    var_a3 = var_t0_2;
                                    goto block_39;
                                }
                            }
                        }
                    }
                }
                temp_a3 = (*(var_t9->unk18->unk84 + temp_t3))->unk18;
                sp8->unk48 = var_a7;
                if (temp_t8 != 0) {
                    temp_t0_4 = *((var_a6 * 4) + temp_t8);
                    var_a3_2 = var_t9;
                    if ((1 << temp_a3) & temp_t0_4) {
                        var_t1 = var_t9->unk18;
loop_9:
                        if (var_t1->unk18 != NULL) {
                            var_a3_2 = var_t1;
                            var_t1 = var_t1->unk18;
                            sp20 += 1;
                            if ((1 << (*(var_t1->unk84 + (temp_at->unk-30F8 * 4)))->unk18) & temp_t0_4) {
                                goto loop_9;
                            }
                        }
                        temp_a2 = sp10 < sp20;
                        sp0 = (s64) ((temp_a2 != 0) ? var_a3_2 : (void *) sp0);
                        var_a1 = (temp_a2 != 0) ? sp20 : sp10;
                        goto block_12;
                    }
                } else {
                    var_a3_3 = var_t9;
                    if (var_a6 < temp_a3) {
                        var_t1_2 = var_t9->unk18;
loop_31:
                        if (var_t1_2->unk18 != NULL) {
                            var_a3_3 = var_t1_2;
                            var_t1_2 = var_t1_2->unk18;
                            sp20 += 1;
                            if (var_a6 < (*(var_t1_2->unk84 + (temp_at->unk-30F8 * 4)))->unk18) {
                                goto loop_31;
                            }
                        }
                        temp_a2_2 = sp10 < sp20;
                        sp0 = (s64) ((temp_a2_2 != 0) ? var_a3_3 : (void *) sp0);
                        var_a1 = (temp_a2_2 != 0) ? sp20 : sp10;
block_12:
                        sp10 = var_a1;
                    }
                }
            }
            var_t9 = var_t9->unk1C;
            if (var_t9 != NULL) {
                goto loop_14;
            }
        }
        return sp0;
    }
    sp8->unk48 = (s32) (1 << temp_t0->unk18);
    return sp0;
}

void nfbPostValidateTree(void *arg0, s64 arg2) {
    s32 *temp_at;
    s32 temp_a1;
    s32 var_a2;
    u32 var_a0;
    void *temp_a3;
    void *temp_a4;

    if (arg0 != NULL) {
        temp_a4 = arg0->unk10;
        temp_a3 = temp_a4->unk74;
        if (arg2 != 3) {
            temp_a1 = (M2C_ERROR(/* Read from unset register $t9 */) + 0x1897B8)->unk-30F8 * 4;
            if ((*(arg0->unk84 + temp_a1))->unk20 & 8) {
                temp_a3->unk6C(temp_a4, temp_a1, temp_a3, temp_a4);
            }
        } else {
            var_a2 = 0;
            var_a0 = 0;
            if (temp_a3->unk28 != 0) {
                do {
                    temp_at = temp_a3->unk40 + var_a2;
                    *temp_at -= *(temp_a3->unk44 + var_a2);
                    *(temp_a3->unk44 + var_a2) = 0;
                    var_a0 += 1;
                    var_a2 += 4;
                } while (var_a0 < (u32) temp_a3->unk28);
            }
        }
    }
}

s32 nfbLayerValidateTreeSL(s64 arg0, void *arg1, s64 arg2, ? arg_sp0) {
    ? (*temp_t9)(void *, void *, s32, u32);
    ? (*temp_t9_2)(void *, void *, s32, u32);
    ? (*temp_t9_3)(s64, ?, ?);
    s16 temp_a3;
    s16 temp_a4;
    s32 *temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_a7_7;
    s32 temp_a7_8;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 var_a4;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_7;
    s32 var_s4_8;
    s32 var_s5_2;
    s32 var_s5_4;
    s32 var_s6_4;
    s32 var_s7_2;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_a0_6;
    s64 temp_s5;
    s64 temp_sp_2;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 temp_v1_3;
    s64 var_s3;
    s64 var_s3_4;
    s64 var_s3_6;
    s64 var_s3_7;
    s64 var_s3_9;
    s64 var_s4_4;
    s64 var_s4_6;
    s64 var_s5_6;
    s64 var_s6;
    s64 var_s6_2;
    s64 var_s6_5;
    s64 var_s7;
    u32 temp_a3_2;
    u32 temp_a6;
    u32 temp_a7_2;
    u32 temp_t0;
    u32 var_s4;
    u32 var_s5_3;
    u32 var_s5_5;
    u32 var_s6_3;
    u32 var_s6_6;
    u64 temp_a6_2;
    u64 temp_a6_3;
    u64 temp_v1_4;
    u64 var_s2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_7;
    void *temp_a1;
    void *temp_a7_3;
    void *temp_at;
    void *temp_gp;
    void *temp_s0;
    void *temp_s1;
    void *temp_s4;
    void *temp_sp;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v1_2;
    void *var_a7;
    void *var_a7_2;
    void *var_s3_2;
    void *var_s3_3;
    void *var_s3_5;
    void *var_s3_8;
    void *var_s4_5;
    void *var_s5;
    void *var_s5_7;
    void *var_v0;
    void *var_v0_4;

    var_s3 = saved_reg_s3;
    arg_sp0.unk-C0 = (s64) saved_reg_fp;
    arg_sp0.unk-80 = arg0;
    arg_sp0.unk-90 = arg2;
    arg_sp0.unk-D8 = (s64) saved_reg_s7;
    arg_sp0.unk-E0 = (s64) saved_reg_s5;
    arg_sp0.unk-B8 = (s64) saved_reg_s6;
    arg_sp0.unk-D0 = (s64) saved_reg_s1;
    temp_s1 = arg0->unk10;
    arg_sp0.unk-B0 = (s64) saved_reg_s0;
    temp_s0 = temp_s1->unk74;
    arg_sp0.unk-C8 = (s64) saved_reg_gp;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x187464;
    arg_sp0.unk-98 = (s64) temp_s0->unk40;
    arg_sp0.unk-70 = (s64) temp_s0->unk3C;
    var_s6 = 0;
    var_s5 = arg1;
    var_s7 = 0;
    arg_sp0.unk-60 = (s64) *(arg0->unk84 + (temp_gp->unk-30F8 * 4));
    if (arg1 == NULL) {
        var_s5 = arg_sp0.unk-80->unk24;
    }
    if (arg_sp0.unk-90 != 3) {
        arg_sp0.unk-F8 = (s64) saved_reg_ra;
        goto block_4;
    }
    if (arg_sp0.unk-60->unk20 & 8) {
        arg_sp0.unk-100 = (s64) saved_reg_s3;
        var_s3_2 = var_s5->unk1C;
        arg_sp0.unk-2C = var_s5;
        if (var_s3_2 != NULL) {
            arg_sp0.unk-78 = 1U;
loop_124:
            if (var_s3_2->unk44 != arg_sp0.unk-78) {
                var_s3_2 = var_s3_2->unk1C;
                if (var_s3_2 == NULL) {
                    arg_sp0.unk-30 = 0;
                } else {
                    goto loop_124;
                }
            } else {
                arg_sp0.unk-30 = 1;
            }
        } else {
            arg_sp0.unk-78 = 1U;
            arg_sp0.unk-30 = 0;
        }
        var_s3 = arg_sp0.unk-100;
        var_v0 = var_s5->unk18;
        arg_sp0.unk-F8 = (s64) saved_reg_ra;
        if (var_v0 != arg_sp0.unk-80) {
            arg_sp0.unk-F8 = (s64) saved_reg_ra;
            do {
                var_s5 = var_v0;
                temp_s1->unk1D0(var_v0);
                var_v0 = var_s5->unk18;
            } while (var_v0 != arg_sp0.unk-80);
        }
    } else {
        arg_sp0.unk-F8 = (s64) saved_reg_ra;
block_4:
        arg_sp0.unk-78 = 1U;
    }
    arg_sp0.unk-108 = (s64) saved_reg_s2;
    arg_sp0.unk-110 = (s64) saved_reg_s4;
    temp_s1->unk154(&arg_sp0 - 0x40, 0, 0);
    temp_a6 = temp_s0->unk28;
    temp_sp = sp - (((temp_a6 * 0xC) + 0xF) & ~0xF);
    arg_sp0.unk-120 = 0;
    temp_sp_2 = temp_sp - (((temp_a6 * 4) + 0xF) & ~0xF);
    arg_sp0.unk-118 = (s64) var_s5;
    var_s4 = 0;
    arg_sp0.unk-88 = temp_sp_2;
    if (temp_a6 != 0) {
        var_s5_2 = 0;
        arg_sp0.unk-100 = var_s3;
        arg_sp0.unk-88 = temp_sp_2;
        var_s6_2 = temp_sp_2;
        var_s3_3 = temp_sp;
        do {
            var_s4 += 1;
            temp_a0 = var_s3_3;
            var_s3_3 += 0xC;
            temp_s1->unk154(temp_a0, 0, 0);
            *var_s6_2 = (s32) *(temp_s0->unk40 + var_s5_2);
            var_s6_2 += 4;
            var_s5_2 += 4;
        } while (var_s4 < (u32) temp_s0->unk28);
        var_s3 = arg_sp0.unk-100;
        var_s5 = (void *) arg_sp0.unk-118;
        var_s6 = arg_sp0.unk-120;
    }
    temp_v0 = nfbPostValidateTree((void *) arg_sp0.unk-80, (s64) var_s5, temp_sp, arg_sp0.unk-90, &arg_sp0 - 0x44);
    arg_sp0.unk-118 = (s64) var_s5;
    arg_sp0.unk-68 = temp_v0;
    if (temp_v0 != 0) {
        var_s5_3 = 0;
        if (temp_s0->unk28 != 0) {
            arg_sp0.unk-100 = var_s3;
            var_s4_2 = 0;
            var_s3_4 = arg_sp0.unk-70;
loop_14:
            temp_v1 = *var_s3_4;
            var_s3_4 += 4;
            var_s5_3 += 1;
            if (temp_v1 != 0) {
                temp_a0_2 = temp_s0->unk2C + var_s4_2;
                temp_s1->unk16C(temp_a0_2, temp_a0_2, var_s4_2 + temp_sp);
            }
            var_s4_2 += 0xC;
            if (var_s5_3 < temp_s0->unk28) {
                goto loop_14;
            }
            var_s3 = arg_sp0.unk-100;
        }
    }
    temp_a6_2 = arg_sp0.unk-78;
    arg_sp0.unk-100 = var_s3;
    temp_s5 = arg_sp0.unk-118;
    arg_sp0.unk-48 = (s32) temp_a6_2;
    if (arg_sp0.unk-90 != temp_a6_2) {
        arg_sp0.unk-100 = var_s3;
        if ((*(arg_sp0.unk-80->unk84 + (temp_gp->unk-30F8 * 4)))->unk1C == 0) {
            if (arg_sp0.unk-44 < 2) {
                arg_sp0.unk-100 = var_s3;
            } else {
                temp_s1->unk154(&arg_sp0 - 0x58, 0, 0);
                temp_a1 = arg_sp0.unk-80->unk28;
                temp_a4 = temp_s5->unkA;
                temp_a3 = temp_a1->unkA;
                if (temp_a4 >= temp_a3) {
                    if (temp_a4 != temp_a3) {
                        goto block_148;
                    }
                    arg_sp0.unk-100 = var_s3;
                    if (temp_s5->unk8 < temp_a1->unk8) {
                        goto block_151;
                    }
block_148:
                    arg_sp0.unk-100 = var_s3;
                    var_s3_5 = temp_a1;
loop_156:
                    if ((var_s3_5->unk44 != 0) && (((u32) (var_s3_5->unk7C & 0x7FF) >> 0xA) != 0)) {
                        temp_s1->unk190(&arg_sp0 - 0x58, var_s3_5 + 0x54);
                    }
                    if (temp_s5 != var_s3_5) {
                        var_s3_5 = var_s3_5->unk20;
                        goto loop_156;
                    }
                } else {
block_151:
                    arg_sp0.unk-100 = var_s3;
                    var_s3_6 = temp_s5;
                    if (temp_s5 != 0) {
loop_163:
                        if ((var_s3_6->unk44 != 0) && (((u32) (var_s3_6->unk7C & 0x7FF) >> 0xA) != 0)) {
                            temp_s1->unk190(&arg_sp0 - 0x58, var_s3_6 + 0x54);
                        }
                        var_s3_6 = (s64) var_s3_6->unk1C;
                        if (var_s3_6 != 0) {
                            goto loop_163;
                        }
                    }
                }
                temp_s1->unk194(&arg_sp0 - 0x58, &arg_sp0 - 0x48);
                if (arg_sp0.unk-48 != 0) {
                    temp_s1->unk160(&arg_sp0 - 0x58);
                }
            }
        }
    }
    var_s3_7 = temp_s5;
    if (temp_s5 != 0) {
loop_23:
        temp_a7 = var_s3_7->unk7C;
        temp_v0_2 = var_s3_7->unk44;
        temp_s4 = *(var_s3_7->unk84 + (temp_gp->unk-30F8 * 4));
        if (((u32) (temp_a7 & 0x7FF) >> 0xA) != 0) {
            if (temp_v0_2 != 0) {
                nfbPostValidateTree((void *) var_s3_7, (s64) temp_s1, temp_sp, arg_sp0.unk-90, &arg_sp0 - 0x40);
                temp_v0_3 = var_s3_7 + 0x38;
                if (arg_sp0.unk-60->unk1C != 0) {
                    temp_a7_2 = temp_s4->unk18;
                    if (*((temp_a7_2 * 4) + arg_sp0.unk-70) != 0) {
                        temp_t9 = temp_s1->unk190;
                        temp_a0_3 = temp_s0->unk2C + (temp_a7_2 * 0xC);
                        if (temp_s4->unk1C != 0) {
                            arg_sp0.unk-A0 = temp_v0_3;
                            temp_t9(temp_a0_3, var_s3_7 + 0x2C);
                            temp_s1->unk16C(&arg_sp0 - 0x40, (void *) arg_sp0.unk-A0, var_s3_7 + 0x48);
                            temp_a3_2 = temp_s4->unk18;
                            temp_a2 = temp_a3_2 * 0xC;
                            arg_sp0.unk-120 = var_s6;
                            temp_s1->unk190(temp_s0->unk2C + temp_a2, &arg_sp0 - 0x40, temp_a2, temp_a3_2);
                            var_s6 = arg_sp0.unk-120;
                        } else {
                            temp_t9(temp_a0_3, (void *) temp_v0_3);
                        }
                    }
                }
                if (arg_sp0.unk-48 != 0) {
                    temp_t0 = temp_s4->unk18;
                    var_s4_3 = temp_t0 * 4;
                    if (temp_t0 < (u32) temp_s0->unk28) {
                        arg_sp0.unk-120 = var_s6;
                        var_s6_3 = temp_t0;
                        var_s5_4 = temp_t0 * 0xC;
loop_36:
                        var_s6_3 += 1;
                        var_s4_3 += 4;
                        if (*(temp_s0->unk40 + var_s4_3) != 0) {
                            temp_a0_4 = var_s5_4 + temp_sp;
                            temp_s1->unk16C(temp_a0_4, temp_a0_4, var_s3_7 + 0x54);
                        }
                        var_s5_4 += 0xC;
                        if (var_s6_3 < temp_s0->unk28) {
                            goto loop_36;
                        }
                        var_s6 = arg_sp0.unk-120;
                    }
                }
            } else {
                var_s4_4 = var_s3_7;
                if (((u32) (temp_a7 & 0x7FFF) >> 0xD) == 3) {
loop_69:
                    temp_v0_4 = var_s4_4->unk7C;
                    if (((u32) (temp_v0_4 & 0x7FF) >> 0xA) != 0) {
                        var_v0_2 = 0;
                        var_s4_4->unk7C = (s32) ((-0x6001 & temp_v0_4) | 0x4000);
                        if (((u32) (temp_v0_4 & 0x7FFF) >> 0xD) != 2) {
                            temp_a7_3 = var_s4_4->unk78;
                            if (temp_a7_3 != NULL) {
                                var_v0_2 = temp_a7_3->unk10;
                            }
                            if ((var_s4_4->unk68 | var_v0_2) & 0x10000) {
                                temp_gp->unk-750C(var_s4_4);
                            }
                        }
                        temp_a5 = var_s4_4->unk24;
                        var_s6 = (temp_a5 != 0) ? 1 : var_s6;
                        var_s4_4 = (s64) ((temp_a5 != 0) ? temp_a5 : (s32) var_s4_4);
                        var_s7 = var_s6;
                    }
                    if (var_s7 != 0) {
block_68:
                        var_s7 = 0;
                        var_s6 = 0;
                        goto loop_69;
                    }
                    var_v0_3 = var_s4_4->unk1C;
                    if (var_v0_3 != 0) {
                        goto block_76;
                    }
                    if (var_s3_7 != var_s4_4) {
loop_79:
                        var_s4_4 = (s64) var_s4_4->unk18;
                        var_v0_3 = var_s4_4->unk1C;
                        if (var_v0_3 == 0) {
                            if (var_s3_7 == var_s4_4) {

                            } else {
                                goto loop_79;
                            }
                        } else {
block_76:
                            if (var_s3_7 != var_s4_4) {
                                var_s4_4 = (s64) var_v0_3;
                                goto block_68;
                            }
                        }
                    }
                }
            }
        } else if (temp_v0_2 != 0) {
            temp_s1->unk188(var_s3_7 + 0x2C);
            temp_s1->unk188(var_s3_7 + 0x38);
            var_s3_7->unk44 = 0;
            temp_s4->unk24 = 0;
            if (arg_sp0.unk-60->unk18 != temp_s4->unk18) {
                var_a7 = var_s3_7->unk18;
                if (var_a7 != NULL) {
                    do {
                        temp_v1_2 = *((temp_gp->unk-30F8 * 4) + var_a7->unk84);
                        temp_v1_2->unk1C = (s32) (temp_v1_2->unk1C - 1);
                        var_a7 = var_a7->unk18;
                    } while (var_a7 != NULL);
                }
            }
            if (arg_sp0.unk-68 != 0) {
                temp_v0_5 = var_s3_7->unk24;
                var_s4_5 = temp_v0_5;
                if (temp_v0_5 != NULL) {
loop_97:
                    if (var_s4_5->unk44 != 0) {
                        arg_sp0.unk-F0 = (s64) *(var_s4_5->unk84 + (temp_gp->unk-30F8 * 4));
                        temp_s1->unk188(var_s4_5 + 0x2C);
                        temp_s1->unk188(var_s4_5 + 0x38);
                        temp_v1_3 = arg_sp0.unk-F0;
                        var_s4_5->unk44 = 0;
                        temp_v1_3->unk24 = 0;
                        temp_v0_6 = var_s4_5->unk18;
                        var_a7_2 = temp_v0_6;
                        if (((*(temp_v0_6->unk84 + (temp_gp->unk-30F8 * 4)))->unk18 != temp_v1_3->unk18) && (temp_v0_6 != NULL)) {
                            do {
                                temp_at = *((temp_gp->unk-30F8 * 4) + var_a7_2->unk84);
                                temp_at->unk1C = (s32) (temp_at->unk1C - 1);
                                var_a7_2 = var_a7_2->unk18;
                            } while (var_a7_2 != NULL);
                        }
                    }
                    var_v0_4 = var_s4_5->unk24;
                    if (var_v0_4 != NULL) {
block_96:
                        var_s4_5 = var_v0_4;
                        goto loop_97;
                    }
                    var_v0_4 = var_s4_5->unk1C;
                    if (var_v0_4 != NULL) {
                        goto block_104;
                    }
                    if (var_s3_7 != var_s4_5) {
loop_107:
                        var_s4_5 = var_s4_5->unk18;
                        var_v0_4 = var_s4_5->unk1C;
                        if (var_v0_4 == NULL) {
                            if (var_s3_7 == var_s4_5) {

                            } else {
                                goto loop_107;
                            }
                        } else {
block_104:
                            if (var_s3_7 != var_s4_5) {
                                goto block_96;
                            }
                        }
                    }
                }
            }
        }
        var_s3_7 = (s64) var_s3_7->unk1C;
        if (var_s3_7 != 0) {
            goto loop_23;
        }
    }
    if (arg_sp0.unk-48 == 0) {
        temp_a7_4 = arg_sp0.unk-60->unk18;
        if (*((temp_a7_4 * 4) + arg_sp0.unk-98) != 0) {
            temp_a0_5 = (temp_a7_4 * 0xC) + temp_sp;
            temp_s1->unk16C(temp_a0_5, temp_a0_5, &arg_sp0 - 0x58);
        }
        temp_s1->unk160(&arg_sp0 - 0x58);
    }
    temp_s1->unk154(arg_sp0.unk-80->unk44, 0, 0);
    temp_s1->unk154(arg_sp0.unk-80->unk44 + 0xC, 0, 0);
    arg_sp0.unk-E8 = (s64) (((void *) arg_sp0.unk-60)->unk20 & 8);
    if (arg_sp0.unk-90 != arg_sp0.unk-78) {
        if (arg_sp0.unk-90 != 4) {
            temp_a7_5 = ((void *) arg_sp0.unk-60)->unk18;
            temp_a0_6 = arg_sp0.unk-80;
            if (*((temp_a7_5 * 4) + arg_sp0.unk-98) != 0) {
                temp_s1->unk16C(temp_a0_6->unk44, (temp_a7_5 * 0xC) + temp_sp, temp_a0_6 + 0x2C);
                if (arg_sp0.unk-E8 != 0) {
                    temp_a7_6 = ((void *) arg_sp0.unk-60)->unk4;
                    if (temp_a7_6 >= 0) {
                        temp_a2_2 = temp_a7_6 * 0xC;
                        temp_s1->unk190(temp_s0->unk5C + temp_a2_2, arg_sp0.unk-80->unk44, temp_a2_2);
                    }
                }
            }
            if (arg_sp0.unk-90 == 3) {
                if (arg_sp0.unk-E8 != 0) {
                    temp_gp->unk-7D34(arg_sp0.unk-2C, arg_sp0.unk-30);
                }
            }
        }
        temp_a7_7 = ((void *) arg_sp0.unk-60)->unk18;
        var_a4 = *((temp_a7_7 * 4) + arg_sp0.unk-98);
        if (arg_sp0.unk-80->unk74 != 0) {
            if (var_a4 != 0) {
                temp_s1->unk16C(&arg_sp0 - 0x40, arg_sp0.unk-80 + 0x2C, (temp_a7_7 * 0xC) + temp_sp);
                temp_s1->unkF4(arg_sp0.unk-80, &arg_sp0 - 0x40, 0, 0);
                var_a4 = *((((void *) arg_sp0.unk-60)->unk18 * 4) + arg_sp0.unk-98);
                goto block_60;
            }
        } else {
block_60:
            if (var_a4 != 0) {
                temp_s1->unk158(arg_sp0.unk-80 + 0x2C, (((void *) arg_sp0.unk-60)->unk18 * 0xC) + temp_sp);
            }
        }
        var_s5_5 = 0;
        if (temp_s0->unk28 != 0) {
            var_s6_4 = 0;
            var_s4_6 = arg_sp0.unk-98;
loop_84:
            var_s4_6 += 4;
            if ((*var_s4_6 != 0) && (((void *) arg_sp0.unk-60)->unk18 != var_s5_5)) {
                temp_s1->unk158(((void *) arg_sp0.unk-60)->unk28 + var_s6_4, var_s6_4 + temp_sp);
            }
            var_s5_5 += 1;
            var_s6_4 += 0xC;
            if (var_s5_5 < temp_s0->unk28) {
                goto loop_84;
            }
        }
        temp_a6_3 = globalSerialNumber + 1;
        temp_v1_4 = (temp_a6_3 <= 0x10000000U) ? temp_a6_3 : arg_sp0.unk-78;
        globalSerialNumber = (u32) temp_v1_4;
        arg_sp0.unk-80->unk14 = (s32) temp_v1_4;
    }
    if (arg_sp0.unk-68 != 0) {
        temp_a7_8 = ((void *) arg_sp0.unk-60)->unk18;
        if (*((temp_a7_8 * 4) + arg_sp0.unk-70) != 0) {
            temp_t9_2 = temp_s1->unk190;
            temp_a0_7 = temp_s0->unk2C + (temp_a7_8 * 0xC);
            if (((void *) arg_sp0.unk-60)->unk1C != 0) {
                temp_t9_2(temp_a0_7, arg_sp0.unk-80 + 0x2C);
            } else {
                temp_t9_2(temp_a0_7, arg_sp0.unk-80 + 0x38);
            }
        }
        arg_sp0.unk-A8 = 0U;
        if (temp_s0->unk28 != 0) {
            var_s6_5 = arg_sp0.unk-88;
            var_s4_7 = 0;
            var_s7_2 = 0;
            var_s5_6 = arg_sp0.unk-70;
            var_s3_8 = temp_sp;
            var_s2 = arg_sp0.unk-A8;
loop_119:
            temp_a1_2 = temp_s0->unk40 + var_s4_7;
            *temp_a1_2 = *var_s6_5;
            var_s2 += 1;
            var_s6_5 += 4;
            var_s4_7 += 4;
            temp_s1->unk160(var_s3_8, temp_a1_2);
            temp_a5_2 = *var_s5_6;
            var_s5_6 += 4;
            var_s3_8 += 0xC;
            if (temp_a5_2 != 0) {
                temp_s1->unk194(temp_s0->unk2C + var_s7_2, &arg_sp0 - 0x48);
            }
            var_s7_2 += 0xC;
            if (var_s2 < (u32) temp_s0->unk28) {
                goto loop_119;
            }
            arg_sp0.unk-A8 = var_s2;
        }
    } else {
        var_s6_6 = 0;
        if (temp_s0->unk28 != 0) {
            var_s3_9 = arg_sp0.unk-88;
            var_s4_8 = 0;
            var_s5_7 = temp_sp;
            do {
                *(temp_s0->unk40 + var_s4_8) = *var_s3_9;
                var_s6_6 += 1;
                var_s3_9 += 4;
                var_s4_8 += 4;
                temp_s1->unk160(var_s5_7);
                var_s5_7 += 0xC;
            } while (var_s6_6 < (u32) temp_s0->unk28);
        }
    }
    if ((arg_sp0.unk-E8 != 0) && (arg_sp0.unk-90 == 3)) {
        temp_s0->unk6C(temp_s1);
    }
    temp_s1->unk160(&arg_sp0 - 0x40);
    temp_t9_3 = temp_s1->unkE8;
    if (temp_t9_3 != NULL) {
        temp_t9_3(arg_sp0.unk-80, 0, 0);
    }
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c], gap at: 0x30. */
s32 nfbMarkOverlappedWindows(void *arg0, s64 arg1, s64 arg2) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_5;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_s2_2;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_8;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_at;
    s32 var_s3_4;
    s32 var_s3_5;
    s32 var_s5;
    s32 var_s6_2;
    s32 var_s6_3;
    s32 var_s7_2;
    s32 var_v0_2;
    s64 var_a0;
    s64 var_ra;
    s64 var_s0;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s4;
    s64 var_s6;
    s64 var_s7;
    u32 var_v0;
    void *temp_a3;
    void *temp_a3_4;
    void *temp_a4_2;
    void *temp_a5_3;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a7;
    void *temp_at;
    void *temp_gp;
    void *temp_s2;
    void *temp_s3;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_9;
    void *var_a0_2;
    void *var_a5;
    void *var_a5_2;
    void *var_a5_3;
    void *var_a5_4;
    void *var_s3_3;
    void *var_s8;
    void *var_v0_3;
    void *var_v0_4;
    void *var_v0_5;
    void *var_v0_6;
    void *var_v0_7;
    void *var_v0_8;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_s0 = saved_reg_s0;
    var_s3 = saved_reg_s3;
    var_ra = saved_reg_ra;
    sp70 = arg2;
    var_s4 = 0;
    temp_s2 = arg0->unk10->unk74;
    var_s7 = 0;
    var_s5 = 0;
    var_s6 = arg1;
    var_s8 = arg0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x186780;
    unksp30 = (s64) temp_s2->unk3C;
    if (arg2 == 0) {
        goto block_5;
    }
    var_v0 = 0;
    if (temp_s2->unk28 == 0) {
        goto block_4;
    }
    var_a0 = unksp30;
loop_3:
    *var_a0 = 0;
    var_v0 += 1;
    var_a0 += 4;
    if (var_v0 < (u32) temp_s2->unk28) {
        goto loop_3;
    }
block_4:
    sp0 = 0;
    *sp70 = arg0;
block_5:
    if (arg0 != var_s6) {
        goto block_9;
    }
    if (sp70 == 0) {
        goto block_16;
    }
    if ((*(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk1C == 0) {
        goto block_16;
    }
    sp98 = var_s6;
    var_s7_2 = 1;
    goto block_17;
block_9:
    sp90 = var_s3;
    sp80 = var_s0;
    if (var_s5 == 0) {
        goto block_60;
    }
block_10:
    sp88 = var_ra;
    var_s3_2 = var_s6;
    if (var_s6 != 0) {
        goto block_40;
    }
block_11:
    if (var_s5 == 0) {
        goto block_15;
    }
    temp_a3 = var_s8->unk18;
    *(temp_a3->unk10->unk74->unk3C + ((*(temp_a3->unk84 + (temp_gp->unk-30F8 * 4)))->unk18 * 4)) = 1;
    unksp28 = (s64) temp_a3;
    if (temp_a3->unk44 == 0) {
        goto block_96;
    }
block_13:
    if (sp70 == 0) {
        goto block_15;
    }
    *sp70 = var_s8;
block_15:
    return var_s5;
block_16:
    sp98 = var_s6;
    var_s7_2 = 0;
block_17:
    var_s3_3 = arg0;
    var_s6_2 = sp0;
    goto loop_22;
block_19:
    var_s6_2 |= 1 << (*(var_s3_3->unk84 + (temp_gp->unk-30F8 * 4)))->unk18;
block_20:
    temp_at = var_s3_3->unk24;
    var_s3_3 = (temp_at != NULL) ? temp_at : var_s3_3;
    var_v0_2 = (temp_at == NULL) ? 0 : 1;
block_21:
    if (var_v0_2 == 0) {
        goto block_26;
    }
loop_22:
    var_v0_2 = 0;
    if (((u32) (var_s3_3->unk7C & 0x7FF) >> 0xA) == 0) {
        goto block_21;
    }
    *(var_s3_3->unk10->unk74->unk3C + ((*(var_s3_3->unk84 + (temp_gp->unk-30F8 * 4)))->unk18 * 4)) = 1;
    if (var_s3_3->unk44 == NULL) {
        goto block_29;
    }
block_24:
    if (var_s7_2 == 0) {
        goto block_20;
    }
    goto block_19;
block_26:
    var_a0_2 = var_s3_3->unk1C;
    if (var_a0_2 == NULL) {
        goto block_30;
    }
block_27:
    if (arg0 == var_s3_3) {
        goto block_33;
    }
    var_s3_3 = var_a0_2;
    goto loop_22;
block_29:
    Must_have_memory = 1;
    temp_v0 = temp_gp->unk-758C(0x18, (s32) &Must_have_memory);
    temp_v0->unk0 = (s16) var_s3_3->unk8;
    Must_have_memory = 0;
    temp_v0->unk8 = 0;
    temp_v0->unk4 = 0;
    temp_v0->unk2 = (s16) var_s3_3->unkA;
    var_s3_3->unk44 = temp_v0;
    goto block_24;
block_30:
    if (arg0 == var_s3_3) {
        goto block_33;
    }
loop_31:
    var_s3_3 = var_s3_3->unk18;
    var_a0_2 = var_s3_3->unk1C;
    if (var_a0_2 != NULL) {
        goto block_27;
    }
    if (arg0 != var_s3_3) {
        goto loop_31;
    }
block_33:
    sp8 = 1;
    var_s5 = 1;
    if (sp70 == 0) {
        goto block_59;
    }
    var_ra = sp88;
    if (var_s7_2 == 0) {
        goto block_119;
    }
    temp_s2->unk48 = var_s6_2;
    var_s3 = sp90;
    var_s7 = sp8;
block_36:
    temp_a6 = arg0->unk18;
    var_a0_3 = temp_gp->unk-30F8 * 4;
    temp_a7 = *(var_a0_3 + temp_a6->unk84);
    if (temp_a7->unk1C == 0) {
        goto block_120;
    }
    temp_s3 = *(arg0->unk84 + var_a0_3);
    temp_a2 = temp_s2->unk38;
    var_s3_4 = temp_s3->unk18;
    if (temp_s3->unk1C == 0) {
        goto block_82;
    }
    var_v0_3 = arg0->unk24;
    if (temp_a2 == 0) {
        goto loop_124;
    }
    goto loop_71;
block_40:
    sp18 = var_s6->unk10->unk18C(arg0 + 0x54);
    temp_s2_2 = var_s6->unk18->unk28;
    sp10 = (s64) var_s6->unk10->unk17C;
    if (var_s7 != 0) {
        goto block_50;
    }
loop_42:
    if (((u32) (var_s3_2->unk7C & 0x7FF) >> 0xA) == 0) {
        goto block_55;
    }
    if (var_s4 == 0) {
        goto block_54;
    }
block_44:
    *(var_s3_2->unk10->unk74->unk3C + ((*(var_s3_2->unk84 + (temp_gp->unk-30F8 * 4)))->unk18 * 4)) = 1;
    if (var_s3_2->unk44 == NULL) {
        goto block_58;
    }
block_45:
    temp_v0_2 = var_s3_2->unk24;
    var_s5 = 1;
    if (temp_v0_2 == 0) {
        goto block_55;
    }
    if (var_s4 != 0) {
        goto block_48;
    }
    var_s4 = ((*(var_s3_2->unk84 + (temp_gp->unk-30F8 * 4)))->unk1C != 0) ? var_s3_2 : var_s4;
block_48:
    var_s3_2 = (s64) temp_v0_2;
block_49:
    if (var_s7 == 0) {
        goto loop_42;
    }
block_50:
    if (arg0 != var_s3_2) {
        goto loop_42;
    }
    var_a0_4 = var_s3_2->unk1C;
    if (var_a0_4 == 0) {
        goto block_65;
    }
block_52:
    temp_a4 = var_s4 ^ var_s3_2;
    if (var_s3_2 == temp_s2_2) {
        goto block_11;
    }
    var_s3_2 = (s64) var_a0_4;
    var_s4 = (temp_a4 == 0) ? 0 : var_s4;
    goto loop_42;
block_54:
    if (((s32 (*)(s32, s64)) sp10)(var_s3_2 + 0x54, sp18) != 0) {
        goto block_44;
    }
block_55:
    var_a0_5 = var_s3_2->unk1C;
    if (var_a0_5 == 0) {
        goto block_92;
    }
block_56:
    if (var_s3_2 == temp_s2_2) {
        goto block_11;
    }
    var_s3_2 = (s64) var_a0_5;
    goto block_49;
block_58:
    Must_have_memory = 1;
    temp_v0_3 = temp_gp->unk-758C(0x18);
    temp_v0_3->unk0 = (s16) var_s3_2->unk8;
    Must_have_memory = 0;
    temp_v0_3->unk8 = 0;
    temp_v0_3->unk4 = 0;
    temp_v0_3->unk2 = (s16) var_s3_2->unkA;
    var_s3_2->unk44 = temp_v0_3;
    goto block_45;
block_59:
    var_s0 = sp80;
    var_ra = sp88;
    var_s3 = sp90;
    var_s7 = sp8;
    var_s6 = (s64) sp98->unk1C;
    if (1 != 0) {
        goto block_10;
    }
block_60:
    sp90 = var_s3;
    sp80 = var_s0;
    if (sp70 == 0) {
        goto block_10;
    }
    temp_a3_2 = temp_gp->unk-30F8 * 4;
    temp_v0_4 = (*(arg0->unk84 + temp_a3_2))->unk18;
    if ((*(arg0->unk18->unk84 + temp_a3_2))->unk1C == 0) {
        goto block_140;
    }
    *((temp_v0_4 * 4) + unksp30) = 1;
    temp_a0 = temp_gp->unk-30F8 * 4;
    sp90 = var_s3;
    sp98 = var_s6;
    temp_a5 = 1 << temp_v0_4;
    var_s3_5 = temp_v0_4;
    var_s6_3 = temp_a5;
    if ((*(arg0->unk84 + temp_a0))->unk1C == 0) {
        goto block_163;
    }
    temp_a2_2 = temp_s2->unk38;
    var_v0_4 = arg0->unk24;
    if (temp_a2_2 == 0) {
        goto loop_152;
    }
    goto loop_102;
block_65:
    if (var_s3_2 == temp_s2_2) {
        goto block_11;
    }
loop_66:
    var_s3_2 = (s64) var_s3_2->unk18;
    var_a0_4 = var_s3_2->unk1C;
    if (var_a0_4 != 0) {
        goto block_52;
    }
    if (var_s3_2 != temp_s2_2) {
        goto loop_66;
    }
    goto block_11;
block_70:
    var_v0_3 = var_a5;
loop_71:
    if (var_s3_4 == 0) {
        goto block_82;
    }
    if (((u32) (var_v0_3->unk7C & 0x7FF) >> 0xA) == 0) {
        goto block_74;
    }
    temp_a3_3 = (*(var_v0_3->unk84 + var_a0_3))->unk18;
    var_s3_4 = (*((temp_a3_3 * 4) + temp_a2) & (1 << var_s3_4)) ? temp_a3_3 : var_s3_4;
block_74:
    var_a5 = var_v0_3->unk24;
    if (var_a5 == NULL) {
        goto block_76;
    }
    if ((*(var_v0_3->unk84 + var_a0_3))->unk1C != 0) {
        goto block_70;
    }
block_76:
    var_a5 = var_v0_3->unk1C;
    if (var_a5 == NULL) {
        goto block_79;
    }
block_77:
    if (arg0 == var_v0_3) {
        goto block_82;
    }
    goto block_70;
block_79:
    if (arg0 == var_v0_3) {
        goto block_82;
    }
loop_80:
    var_v0_3 = var_v0_3->unk18;
    var_a5 = var_v0_3->unk1C;
    if (var_a5 != NULL) {
        goto block_77;
    }
    if (arg0 != var_v0_3) {
        goto loop_80;
    }
block_82:
    temp_v0_5 = temp_a7->unk18;
    if (temp_a2 == 0) {
        goto block_121;
    }
    var_a1 = *((var_s3_4 * 4) + temp_a2);
    var_ra = sp88;
    var_s7 = sp8;
    if (!((1 << temp_v0_5) & var_a1)) {
        goto block_164;
    }
    var_s8 = arg0;
    var_v0_5 = temp_a6;
    var_s3 = sp90;
    goto loop_87;
block_85:
    Must_have_memory = 1;
    temp_v0_6 = temp_gp->unk-758C(0x18, var_a1, &Must_have_memory, temp_a3_4, temp_a4_2);
    var_a1 = (s32) sp78;
    temp_v0_6->unk0 = (s16) var_s8->unk8;
    Must_have_memory = 0;
    temp_v0_6->unk8 = 0;
    temp_v0_6->unk4 = 0;
    temp_v0_6->unk2 = (s16) var_s8->unkA;
    var_s8->unk44 = temp_v0_6;
block_86:
    var_v0_5 = var_s8->unk18;
    var_a0_3 = temp_gp->unk-30F8 * 4;
    if (!((1 << (*(var_v0_5->unk84 + var_a0_3))->unk18) & var_a1)) {
        goto block_90;
    }
loop_87:
    temp_a3_4 = var_v0_5->unk18;
    if (temp_a3_4 == NULL) {
        goto block_90;
    }
    *(var_v0_5->unk10->unk74->unk3C + ((*(var_v0_5->unk84 + var_a0_3))->unk18 * 4)) = 1;
    temp_a4_2 = var_v0_5->unk44;
    var_s8 = var_v0_5;
    if (temp_a4_2 != NULL) {
        goto block_86;
    }
    sp78 = (s64) var_a1;
    goto block_85;
block_90:
    var_s0 = sp80;
    if (sp98 != var_s8) {
        goto block_97;
    }
    var_s6 = (s64) sp98->unk1C;
    var_s0 = sp80;
    var_ra = sp88;
    goto block_9;
block_92:
    if (var_s3_2 == temp_s2_2) {
        goto block_11;
    }
loop_93:
    var_s3_2 = (s64) var_s3_2->unk18;
    var_a0_5 = var_s3_2->unk1C;
    var_s4 = ((var_s4 ^ var_s3_2) == 0) ? 0 : var_s4;
    if (var_a0_5 != 0) {
        goto block_56;
    }
    if (var_s3_2 != temp_s2_2) {
        goto loop_93;
    }
    goto block_11;
block_96:
    Must_have_memory = 1;
    temp_v0_7 = temp_gp->unk-758C(0x18);
    temp_v0_7->unk0 = (s16) unksp28->unk8;
    Must_have_memory = 0;
    temp_v0_7->unk8 = 0;
    temp_v0_7->unk4 = 0;
    temp_v0_7->unk2 = (s16) unksp28->unkA;
    unksp28->unk44 = temp_v0_7;
    goto block_13;
block_97:
    var_s6 = (s64) var_s8;
    var_ra = sp88;
    goto block_9;
block_98:
    var_s3_5 = (*((temp_a5_2 * 4) + temp_a2_2) & (1 << var_s3_5)) ? temp_a5_2 : var_s3_5;
block_99:
    var_a5_2 = var_v0_4->unk24;
    if (var_a5_2 == NULL) {
        goto block_105;
    }
    if ((*(var_v0_4->unk84 + temp_a0))->unk1C == 0) {
        goto block_105;
    }
block_101:
    var_v0_4 = var_a5_2;
loop_102:
    if (((u32) (var_v0_4->unk7C & 0x7FF) >> 0xA) == 0) {
        goto block_99;
    }
    temp_a5_2 = (*(var_v0_4->unk84 + temp_a0))->unk18;
    var_s6_3 |= 1 << temp_a5_2;
    if (var_s3_5 == 0) {
        goto block_99;
    }
    goto block_98;
block_105:
    var_a5_2 = var_v0_4->unk1C;
    if (var_a5_2 == NULL) {
        goto block_108;
    }
block_106:
    if (arg0 == var_v0_4) {
        goto block_111;
    }
    goto block_101;
block_108:
    if (arg0 == var_v0_4) {
        goto block_111;
    }
loop_109:
    var_v0_4 = var_v0_4->unk18;
    var_a5_2 = var_v0_4->unk1C;
    if (var_a5_2 != NULL) {
        goto block_106;
    }
    if (arg0 != var_v0_4) {
        goto loop_109;
    }
block_111:
    temp_s2->unk48 = var_s6_3;
block_112:
    var_s6 = sp98;
    temp_a6_2 = arg0->unk18;
    temp_a0_2 = temp_gp->unk-30F8 * 4;
    temp_v0_8 = (*(temp_a6_2->unk84 + temp_a0_2))->unk18;
    if (temp_s2->unk38 == 0) {
        goto block_146;
    }
    temp_a1 = *((var_s3_5 * 4) + temp_s2->unk38);
    if (!((1 << temp_v0_8) & temp_a1)) {
        goto block_10;
    }
    var_s8 = arg0;
    var_v0_6 = temp_a6_2;
loop_115:
    if (var_v0_6->unk18 == NULL) {
        goto block_117;
    }
    var_s8 = var_v0_6;
    var_v0_6 = var_v0_6->unk18;
    if ((1 << (*(var_v0_6->unk84 + temp_a0_2))->unk18) & temp_a1) {
        goto loop_115;
    }
block_117:
    if (arg0 == var_s8) {
        goto block_10;
    }
    var_s6 = (s64) var_s8;
    goto block_10;
block_119:
    var_s7 = sp8;
    temp_s2->unk48 = (s32) (1 << (*(var_s3_3->unk84 + (temp_gp->unk-30F8 * 4)))->unk18);
    var_s3 = sp90;
    goto block_36;
block_120:
    var_s6 = (s64) ((void *) sp98)->unk1C;
    var_s8 = arg0;
    var_s0 = sp80;
    goto block_9;
block_121:
    var_ra = sp88;
    var_s7 = sp8;
    if (var_s3_4 >= temp_v0_5) {
        goto block_165;
    }
    var_s8 = arg0;
    var_v0_7 = temp_a6;
    goto loop_135;
block_123:
    var_v0_3 = temp_a5_3;
loop_124:
    if (var_s3_4 == 0) {
        goto block_82;
    }
loop_125:
    if (((u32) (var_v0_3->unk7C & 0x7FF) >> 0xA) == 0) {
        goto block_127;
    }
    temp_a4_3 = (*(var_v0_3->unk84 + var_a0_3))->unk18;
    var_s3_4 = (temp_a4_3 < var_s3_4) ? temp_a4_3 : var_s3_4;
block_127:
    temp_a5_3 = var_v0_3->unk24;
    if (temp_a5_3 == NULL) {
        goto block_129;
    }
    if ((*(var_v0_3->unk84 + var_a0_3))->unk1C != 0) {
        goto block_123;
    }
block_129:
    var_a5_3 = var_v0_3->unk1C;
    if (var_a5_3 == NULL) {
        goto block_142;
    }
block_130:
    if (arg0 == var_v0_3) {
        goto block_82;
    }
    var_v0_3 = var_a5_3;
    if (var_s3_4 == 0) {
        goto block_82;
    }
    goto loop_125;
block_133:
    temp_v0_9->unk0 = (s16) var_s8->unk8;
    Must_have_memory = 0;
    temp_v0_9->unk8 = 0;
    temp_v0_9->unk4 = 0;
    temp_v0_9->unk2 = (s16) var_s8->unkA;
    var_s8->unk44 = temp_v0_9;
block_134:
    var_v0_7 = var_s8->unk18;
    var_a0_3 = temp_gp->unk-30F8 * 4;
    if (var_s3_4 >= (*(var_v0_7->unk84 + var_a0_3))->unk18) {
        goto block_138;
    }
loop_135:
    if (var_v0_7->unk18 == NULL) {
        goto block_138;
    }
    *(var_v0_7->unk10->unk74->unk3C + ((*(var_v0_7->unk84 + var_a0_3))->unk18 * 4)) = 1;
    var_s8 = var_v0_7;
    if (var_v0_7->unk44 != NULL) {
        goto block_134;
    }
    Must_have_memory = 1;
    temp_v0_9 = temp_gp->unk-758C(0x18, (s32) &Must_have_memory);
    goto block_133;
block_138:
    var_s0 = sp80;
    if (sp98 != var_s8) {
        goto block_141;
    }
    var_s6 = (s64) sp98->unk1C;
    var_s0 = sp80;
    var_ra = sp88;
    var_s3 = sp90;
    goto block_9;
block_140:
    temp_s2->unk48 = (s32) (1 << temp_v0_4);
    sp90 = var_s3;
    var_s8 = arg0;
    *(((*(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk18 * 4) + unksp30) = 1;
    goto block_10;
block_141:
    var_ra = sp88;
    var_s6 = (s64) var_s8;
    var_s3 = sp90;
    goto block_9;
block_142:
    if (arg0 == var_v0_3) {
        goto block_82;
    }
loop_143:
    var_v0_3 = var_v0_3->unk18;
    var_a5_3 = var_v0_3->unk1C;
    if (var_a5_3 != NULL) {
        goto block_130;
    }
    if (arg0 != var_v0_3) {
        goto loop_143;
    }
    goto block_82;
block_146:
    if (var_s3_5 >= temp_v0_8) {
        goto block_10;
    }
    var_s8 = arg0;
    var_v0_8 = temp_a6_2;
loop_148:
    var_at = (s32) arg0 ^ (s32) var_s8;
    if (var_v0_8->unk18 == NULL) {
        goto block_150;
    }
    var_s8 = var_v0_8;
    var_v0_8 = var_v0_8->unk18;
    var_at = (s32) arg0 ^ (s32) var_s8;
    if (var_s3_5 < (*(var_v0_8->unk84 + temp_a0_2))->unk18) {
        goto loop_148;
    }
block_150:
    var_s6 = (s64) ((var_at != 0) ? var_s8 : (void *) var_s6);
    goto block_10;
block_151:
    var_v0_4 = var_a5_4;
loop_152:
    if (((u32) (var_v0_4->unk7C & 0x7FF) >> 0xA) == 0) {
        goto block_154;
    }
    temp_a3_5 = (*(var_v0_4->unk84 + temp_a0))->unk18;
    var_s6_3 |= 1 << temp_a3_5;
    var_s3_5 = (var_s3_5 != 0) ? ((temp_a3_5 >= var_s3_5) ? var_s3_5 : temp_a3_5) : var_s3_5;
block_154:
    var_a5_4 = var_v0_4->unk24;
    if (var_a5_4 == NULL) {
        goto block_156;
    }
    if ((*(var_v0_4->unk84 + temp_a0))->unk1C != 0) {
        goto block_151;
    }
block_156:
    var_a5_4 = var_v0_4->unk1C;
    if (var_a5_4 == NULL) {
        goto block_159;
    }
block_157:
    if (arg0 == var_v0_4) {
        goto block_111;
    }
    goto block_151;
block_159:
    if (arg0 == var_v0_4) {
        goto block_111;
    }
loop_160:
    var_v0_4 = var_v0_4->unk18;
    var_a5_4 = var_v0_4->unk1C;
    if (var_a5_4 != NULL) {
        goto block_157;
    }
    if (arg0 != var_v0_4) {
        goto loop_160;
    }
    goto block_111;
block_163:
    temp_s2->unk48 = temp_a5;
    goto block_112;
block_164:
    var_s6 = (s64) sp98->unk1C;
    var_s0 = sp80;
    var_s3 = sp90;
    goto block_9;
block_165:
    var_s6 = (s64) sp98->unk1C;
    var_s0 = sp80;
    var_s3 = sp90;
    goto block_9;
}

void nfbSlideAndSizeWindow(void *arg0, s64 arg1, s64 arg2, u64 arg3, u64 arg4, s64 arg5) {
    s64 sp268;
    u64 sp260;
    u64 sp258;
    s64 sp250;
    s64 sp248;
    s64 sp240;
    s64 sp210;
    s64 sp208;
    s64 sp200;
    s64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
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
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s16 sp62;
    s16 sp60;
    s32 sp58;
    s32 sp54;
    void *sp50;
    void *sp4C;
    void *sp48;
    s32 sp10;
    s32 *sp4;
    ? (*temp_t9)(s32, s64, ?);
    s32 temp_a0_13;
    s32 temp_a0_14;
    s32 temp_a0_15;
    s32 temp_a0_16;
    s32 temp_a0_17;
    s32 temp_a0_18;
    s32 temp_a0_19;
    s32 temp_a0_20;
    s32 temp_a0_21;
    s32 temp_a0_22;
    s32 temp_a0_6;
    s32 temp_a6_2;
    s32 temp_a6_4;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_6;
    s32 temp_at;
    s32 temp_s2_2;
    s32 temp_s3_3;
    s32 temp_s3_4;
    s32 temp_t0_2;
    s32 var_a1_2;
    s32 var_a6;
    s32 var_s1_3;
    s32 var_s1_6;
    s32 var_s3_10;
    s32 var_s3_7;
    s32 var_s3_8;
    s32 var_s4_2;
    s32 var_s4_6;
    s32 var_s5_2;
    s32 var_s5_4;
    s32 var_s7_2;
    s32 var_t0;
    s64 temp_a0;
    s64 temp_a0_10;
    s64 temp_a0_2;
    s64 temp_a0_5;
    s64 temp_a0_8;
    s64 temp_a0_9;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_a7_5;
    s64 temp_at_3;
    s64 temp_s3_2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_6;
    s64 temp_v0_7;
    s64 temp_v1_2;
    s64 var_s1_2;
    s64 var_s1_4;
    s64 var_s1_5;
    s64 var_s1_7;
    s64 var_s3_2;
    s64 var_s3_3;
    s64 var_s3_9;
    s64 var_s4_3;
    s64 var_s4_4;
    s64 var_s4_5;
    s64 var_s4_7;
    s64 var_s7;
    s64 var_s8;
    s64 var_s8_4;
    u16 temp_a0_3;
    u16 temp_a7;
    u32 temp_a6_3;
    u32 temp_a6_6;
    u32 temp_a6_9;
    u32 var_s5;
    u32 var_s7_3;
    u64 var_s3;
    u64 var_s4;
    void **temp_a1;
    void **temp_a6_10;
    void **temp_s1;
    void **temp_s2_10;
    void **temp_s2_11;
    void **temp_s2_3;
    void **temp_s2_4;
    void **temp_s2_5;
    void **temp_s2_6;
    void **temp_s2_7;
    void **temp_s2_8;
    void **temp_s2_9;
    void **temp_s4;
    void **var_s3_5;
    void **var_s3_6;
    void *temp_a0_11;
    void *temp_a0_12;
    void *temp_a0_4;
    void *temp_a0_7;
    void *temp_a1_4;
    void *temp_a2_3;
    void *temp_a6;
    void *temp_a6_11;
    void *temp_a6_12;
    void *temp_a6_13;
    void *temp_a6_5;
    void *temp_a6_7;
    void *temp_a6_8;
    void *temp_a7_2;
    void *temp_at_2;
    void *temp_gp;
    void *temp_s0;
    void *temp_s2;
    void *temp_s3;
    void *temp_s5;
    void *temp_s6;
    void *temp_t0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_8;
    void *temp_v1;
    void *var_a1;
    void *var_s1;
    void *var_s1_8;
    void *var_s3_11;
    void *var_s3_4;
    void *var_s5_3;
    void *var_s8_2;
    void *var_s8_3;

    temp_a7 = arg0->unk64;
    sp1A8 = (s64) temp_a7;
    sp160 = 0;
    sp120 = 0;
    sp138 = 0;
    sp140 = arg5;
    sp1B8 = arg2;
    sp1B0 = arg1;
    var_s1 = arg0;
    sp68 = (s64) arg0->unk8;
    sp70 = (s64) arg0->unkA;
    sp148 = (s64) var_s1->unkE;
    temp_a6 = var_s1->unk18;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x185B50;
    var_s3 = arg4;
    sp158 = (s64) var_s1->unkC;
    var_s5 = (u32) (var_s1->unk7C & 0x7FF) >> 0xA;
    var_s4 = arg3;
    temp_s6 = *(var_s1->unk84 + (temp_gp->unk-30F8 * 4));
    if (temp_a6 != NULL) {
        sp98 = 0;
        sp90 = 0;
        temp_s0 = var_s1->unk10;
        temp_s2 = temp_s0->unk74;
        sp78 = (s64) temp_s2;
        var_s8 = temp_a6->unkA + sp1B8 + sp1A8;
        var_s7 = temp_a6->unk8 + sp1B0 + sp1A8;
        temp_s2_2 = temp_s2->unk28;
        if (var_s5 != 0) {
            temp_s0->unk1D4(var_s1, var_s1, &sp10, temp_a6, temp_a7);
            if (temp_s6->unk1C != 0) {
                temp_a0 = temp_s2_2 * 0xC;
                sp108 = temp_a0;
                sp110 = temp_a0;
                temp_v0 = temp_gp->unk-758C(temp_a0);
                sp128 = temp_v0;
                if (temp_v0 != 0) {
                    sp260 = var_s3;
                    sp258 = var_s4;
                    sp250 = var_s7;
                    if (temp_s2_2 > 0) {
                        var_s4_2 = 0;
                        var_s3_2 = temp_v0;
loop_51:
                        temp_s0->unk154(var_s3_2, 0, 0);
                        temp_a6_2 = 1 << var_s4_2;
                        temp_at = temp_s6->unk24 & temp_a6_2;
                        var_s4_2 += 1;
                        if (temp_at == 0) {
                            if (sp78->unk48 & temp_a6_2) {
                                goto block_48;
                            }
                        } else {
block_48:
                            temp_s0->unk158(var_s3_2, var_s1 + 0x48);
                        }
                        var_s3_2 += 0xC;
                        if (var_s4_2 != temp_s2_2) {
                            goto loop_51;
                        }
                        var_s7 = sp250;
                        var_s4 = sp258;
                        var_s3 = sp260;
                    }
                    sp248 = var_s8;
                    sp18[0].unk28 = 0;
                    sp18[0].unk24 = 0;
                    sp18[0].unk20 = 0;
                    sp18[0].unk1C = 0;
                    sp18[0].unk18 = 0;
                    sp18[0].unk14 = 0;
                    sp18[0].unk10 = 0;
                    sp18[0].unkC = 0;
                    sp18[0].unk8 = 0;
                    sp18[0].unk4 = 0;
                    sp18[0].unk0 = NULL;
                    var_s8_2 = var_s1->unk24;
                    if (var_s8_2 != NULL) {
                        sp118 = (s64) var_s1;
                        sp268 = (s64) var_s5;
                        sp260 = var_s3;
                        sp250 = var_s7;
                        sp258 = var_s4;
loop_59:
                        temp_a6_3 = (u32) (var_s8_2->unk7C & 0xFFFFF) >> 0x10;
                        if (temp_a6_3 != 0) {
                            temp_s1 = &(&sp18[0])[temp_a6_3];
                            temp_t0 = *temp_s1;
                            sp1D8 = (s64) temp_t0;
                            if (temp_t0 != NULL) {
                                goto block_61;
                            }
                            temp_v0_2 = temp_gp->unk-758C(sp110);
                            sp1D8 = temp_v0_2;
                            *temp_s1 = (void *) temp_v0_2;
                            if (temp_v0_2 != 0) {
                                if (temp_s2_2 > 0) {
                                    var_s1_2 = temp_v0_2;
                                    do {
                                        temp_a0_2 = var_s1_2;
                                        var_s1_2 += 0xC;
                                        temp_s0->unk154(temp_a0_2, 0, 0);
                                    } while (var_s1_2 != (temp_v0_2 + sp108));
                                }
block_61:
                                var_s1_3 = 0;
                                var_s4_3 = sp1D8;
                                var_s5_2 = 0;
                                temp_s3 = *(var_s8_2->unk84 + (temp_gp->unk-30F8 * 4));
                                if (temp_s2_2 > 0) {
loop_66:
                                    temp_a6_4 = 1 << var_s1_3;
                                    if (temp_s3->unk18 != var_s1_3) {
                                        if (!(temp_s3->unk24 & temp_a6_4)) {
                                            if (sp78->unk48 & temp_a6_4) {
                                                temp_s0->unk168(var_s4_3, var_s4_3, var_s8_2 + 0x38);
                                            }
                                        } else {
                                            temp_s0->unk168(var_s4_3, var_s4_3, temp_s3->unk2C + var_s5_2);
                                        }
                                    } else {
                                        temp_s0->unk168(var_s4_3, var_s4_3, var_s8_2 + 0x38);
                                    }
                                    var_s1_3 += 1;
                                    var_s4_3 += 0xC;
                                    var_s5_2 += 0xC;
                                    if (var_s1_3 != temp_s2_2) {
                                        goto loop_66;
                                    }
                                }
                                goto block_58;
                            }
                            temp_gp->unk-74EC(&sub_5e4f0000 + 0x4578);
                            return;
                        }
                        temp_a6_5 = *(var_s8_2->unk84 + (temp_gp->unk-30F8 * 4));
                        if ((temp_s6->unk18 != temp_a6_5->unk18) || (temp_a6_5->unk1C != 0)) {
                            temp_gp->unk-735C(var_s8_2, 0);
                        } else {
                            temp_gp->unk-735C(var_s8_2, 1);
                        }
block_58:
                        var_s8_2 = var_s8_2->unk1C;
                        if (var_s8_2 != NULL) {
                            goto loop_59;
                        }
                        var_s8 = sp248;
                        var_s7 = sp250;
                        var_s3 = sp260;
                        var_s5 = (u32) sp268;
                        sp48 = (void *) sp128;
                        var_s1 = (void *) sp118;
                        goto block_75;
                    }
                    sp258 = var_s4;
                    var_s8 = sp248;
                    sp48 = (void *) sp128;
                    goto block_75;
                }
                temp_gp->unk-74EC(&sub_5e4f0000 + 0x4578);
                return;
            }
            temp_v0_3 = temp_s0->unk150(0, 1);
            sp48 = temp_v0_3;
            temp_s0->unk158((s64) temp_v0_3, var_s1 + 0x48);
            sp18[0].unk28 = 0;
            sp18[0].unk24 = 0;
            sp18[0].unk20 = 0;
            sp18[0].unk1C = 0;
            sp18[0].unk18 = 0;
            sp18[0].unk14 = 0;
            sp18[0].unk10 = 0;
            sp18[0].unkC = 0;
            sp18[0].unk8 = 0;
            sp18[0].unk4 = 0;
            sp18[0].unk0 = NULL;
            temp_a7_2 = var_s1->unk24;
            sp150 = (s64) temp_a7_2;
            if (temp_a7_2 != NULL) {
                do {
                    temp_a6_6 = (u32) (sp150->unk7C & 0xFFFFF) >> 0x10;
                    if (temp_a6_6 != 0) {
                        temp_a1 = &(&sp18[0])[temp_a6_6];
                        sp130 = (s64) temp_a1;
                        var_a1 = *temp_a1;
                        if (var_a1 == NULL) {
                            temp_v0_4 = temp_s0->unk150(0, 1);
                            var_a1 = temp_v0_4;
                            *sp130 = temp_v0_4;
                        }
                        temp_s0->unk168((s64) var_a1, (s64) var_a1, sp150 + 0x38);
                    } else {
                        temp_gp->unk-735C((void *) sp150, 1);
                    }
                    temp_a7_3 = sp150->unk1C;
                    sp150 = (s64) temp_a7_3;
                } while (temp_a7_3 != 0);
            }
            sp258 = var_s4;
block_75:
            if (temp_s6->unk1C != 0) {
                sp4C = NULL;
                goto block_77;
            }
            if (((u32) (var_s1->unk7C & 0xFFFFFF) >> 0x14) != 0) {
                var_s4 = sp258;
                temp_v0_5 = temp_s0->unk150(0, 1);
                sp4C = temp_v0_5;
                temp_s0->unk158((s64) temp_v0_5, var_s1 + 0x2C);
            } else {
                sp4C = NULL;
block_77:
                var_s4 = sp258;
            }
            temp_a0_3 = var_s1->unkE;
            if ((var_s3 < temp_a0_3) || (var_s4 < (u16) var_s1->unkC)) {
                sp98 = 1;
            }
            if ((sp68 != var_s7) || (sp70 != var_s8)) {
                sp90 = 1;
            }
            if ((temp_a0_3 != var_s3) || (var_s1->unkC != var_s4)) {
                if (var_s1->unk64 == 0) {
                    temp_a0_4 = var_s1->unk78;
                    if (temp_a0_4 != NULL) {
                        var_a6 = temp_a0_4->unk2C;
                    } else {
                        var_a6 = 0;
                    }
                    if (var_a6 != 0) {
                        goto block_90;
                    }
                } else {
block_90:
                    temp_v0_6 = temp_s0->unk150(0, 1);
                    sp138 = temp_v0_6;
                    if (((u32) (var_s1->unk7C & 0x3FFFFFFF) >> 0x1D) != 0) {
                        goto block_91;
                    }
                    if (sp90 == 0) {
block_91:
                        if ((sp98 != 0) || (sp90 != 0)) {
                            temp_s0->unk16C(temp_v0_6, var_s1 + 0x38, var_s1 + 0x48);
                        } else {
                            temp_s0->unk158(temp_v0_6, var_s1 + 0x38);
                        }
                    }
                }
            }
            goto block_7;
        }
block_7:
        var_s1->unkA = (s16) var_s8;
        var_s1->unk8 = (s16) var_s7;
        var_s1->unkC = (s16) var_s4;
        var_s1->unkE = (s16) var_s3;
        var_s1->unk62 = (s16) (sp1B8 + sp1A8);
        var_s1->unk60 = (s16) (sp1B0 + sp1A8);
        temp_gp->unk-7474(var_s1);
        temp_gp->unk-7470(var_s1);
        temp_a1_2 = (s64) (var_s7 << 0x30) >> 0x30;
        temp_a2 = (s64) (var_s8 << 0x30) >> 0x30;
        spB0 = temp_a2;
        temp_a4 = (s64) ((var_s3 - sp148) << 0x30) >> 0x30;
        spA8 = temp_a1_2;
        spF0 = temp_a4;
        temp_a3 = (s64) ((var_s4 - sp158) << 0x30) >> 0x30;
        spE8 = temp_a3;
        temp_gp->unk-729C(var_s1, temp_a1_2 - sp68, temp_a2 - sp70, temp_a3, temp_a4, sp68);
        temp_s0->unkBC(var_s1, temp_a1_2, temp_a2);
        var_s7_2 = temp_gp->unk-72A0(var_s1, sp140);
        if (var_s5 != 0) {
            if (temp_s6->unk1C != 0) {
                temp_s3_2 = temp_s2_2 * 0xC;
                temp_v0_7 = temp_gp->unk-758C(temp_s3_2);
                if (temp_v0_7 != 0) {
                    sp240 = temp_s3_2;
                    sp50 = (void *) temp_v0_7;
                    if (temp_s2_2 > 0) {
                        var_s3_3 = temp_v0_7;
                        do {
                            temp_a0_5 = var_s3_3;
                            var_s3_3 += 0xC;
                            temp_s0->unk154(temp_a0_5, 0, 0);
                        } while (var_s3_3 != (temp_v0_7 + sp240));
                    }
                    var_s3_4 = var_s1 + 0x2C;
                    goto block_14;
                }
                temp_gp->unk-74EC(&sub_5e4f0000 + 0x4578);
                return;
            }
            temp_v0_8 = temp_s0->unk150(0, 1);
            var_s3_4 = var_s1 + 0x2C;
            sp50 = temp_v0_8;
            if (var_s1->unk74 != 0) {
                temp_s0->unk158((s64) temp_v0_8, var_s3_4);
            }
block_14:
            var_s7_2 = (((s32) var_s1 ^ sp10) != 0) ? sp10 : var_s7_2;
            temp_s0->unk1D4(var_s1, (void *) var_s7_2, NULL);
            temp_a6_7 = var_s1->unk44;
            if (temp_a6_7 != NULL) {
                temp_a6_7->unk8 = 1;
                var_s1->unk44->unk4 = (s32) sp138;
            }
            if (var_s1->unk10->unk25 == 0x40) {
                sp160 = temp_s0->unk1D8(sp10, var_s7_2);
            }
            temp_s0->unkCC(sp10->unk18, var_s7_2, 0);
            temp_s0->unk158((s64) var_s1->unk44, var_s3_4);
            goto block_18;
        }
block_18:
        sp4 = &sp58;
        temp_gp->unk-7374(spA8, spB0, sp68, sp70, spE8, spF0, (u32) (var_s1->unk7C & 0xFFFFFF) >> 0x14, &sp54);
        if (var_s1->unk74 != 0) {
            temp_a0_6 = var_s1->unk7C;
            if ((((u32) (temp_a0_6 & 0x0FFFFFFF) >> 0x1A) == 2) || (var_s5 != 0)) {
                temp_a7_4 = temp_s6->unk1C;
                if ((temp_a7_4 == 0) && (((u32) (0xFFFFFF & temp_a0_6) >> 0x14) != 0)) {
                    var_s8_3 = sp50;
                    if (var_s5 == 0) {
                        var_s8_3 = var_s1 + 0x2C;
                        sp50 = var_s8_3;
                    }
                    sp120 = temp_s0->unk100(var_s1, sp54 - spA8, sp58 - spB0, var_s8_3, sp68, sp70, spA8, temp_a7_4);
                } else {
                    sp120 = temp_s0->unk100(var_s1, 0, 0, NULL, sp68, sp70);
                }
                goto block_25;
            }
            goto block_208;
        }
block_25:
        if (var_s5 != 0) {
            var_t0 = temp_s2_2 * 4;
            if (var_s1->unk64 != 0) {
                goto block_27;
            }
            temp_a0_7 = var_s1->unk78;
            if (temp_a0_7 != NULL) {
                var_a1_2 = temp_a0_7->unk2C;
            } else {
                var_a1_2 = 0;
            }
            var_t0 = temp_s2_2 * 4;
            if (var_a1_2 == 0) {

            } else {
block_27:
                var_s8_4 = 0;
                sp1E8 = 0;
                var_s3_5 = &sp18[0];
                sp168 = (s64) var_s7_2;
                var_s7_3 = 0;
                sp1D0 = (var_t0 - temp_s2_2) * 4;
loop_30:
                temp_v1 = *var_s3_5;
                var_s3_5 += 4;
                sp1E0 = (s64) temp_v1;
                if (temp_v1 != NULL) {
                    sp4 = &sp58;
                    temp_gp->unk-7374(spA8, spB0, sp68, sp70, spE8, spF0, var_s7_3, &sp54);
                    temp_a1_3 = (sp68 - sp54) - var_s8_4;
                    temp_a2_2 = (sp70 - sp58) - sp1E8;
                    if ((temp_a1_3 != 0) || (temp_a2_2 != 0)) {
                        var_s8_4 += temp_a1_3;
                        temp_s0->unk178(var_s1 + 0x48, temp_a1_3, temp_a2_2);
                        sp1E8 += temp_a2_2;
                    }
                    if (temp_s6->unk1C != 0) {
                        if (temp_s2_2 > 0) {
                            var_s4_4 = sp1E0;
loop_39:
                            temp_a6_8 = var_s4_4->unk8;
                            if (temp_a6_8 != NULL) {
                                if (temp_a6_8->unk4 != 0) {
                                    goto block_37;
                                }
                            } else {
block_37:
                                temp_s0->unk164(var_s4_4, var_s4_4, var_s1 + 0x48);
                            }
                            var_s4_4 += 0xC;
                            if (var_s4_4 != (sp1D0 + sp1E0)) {
                                goto loop_39;
                            }
                        }
                    } else {
                        temp_s0->unk164(sp1E0, sp1E0, var_s1 + 0x48);
                    }
                }
                var_s7_3 += 1;
                if (var_s7_3 != 0xB) {
                    goto loop_30;
                }
                var_s7_2 = (s32) sp168;
                if ((var_s8_4 != 0) || (var_s7_2 = (s32) sp168, (sp1E8 != 0))) {
                    temp_s0->unk178(var_s1 + 0x48, -var_s8_4, -sp1E8);
                }
            }
            if (sp4C != NULL) {
                temp_s0->unk158((s64) sp50, sp4C);
                temp_s0->unk178(sp50, sp54 - sp68, sp58 - sp70, sp68);
                temp_s0->unk164((s64) sp4C, (s64) sp50, var_s1 + 0x2C);
                temp_a6_9 = ((u32) (var_s1->unk7C & 0xFFFFFF) >> 0x14) + 1;
                if (temp_a6_9 < 0xBU) {
                    var_s3_6 = &(&sp18[0])[temp_a6_9];
loop_96:
                    temp_a2_3 = *var_s3_6;
                    var_s3_6 += 4;
                    if (temp_a2_3 != NULL) {
                        temp_s0->unk16C((s64) sp4C, sp4C, temp_a2_3);
                    }
                    if (var_s3_6 != &(&sp18[0])[temp_a6_9 + (0xB - temp_a6_9)]) {
                        goto loop_96;
                    }
                }
                temp_s0->unk178(sp4C, sp68 - sp54, sp70 - sp58, (s64) sp54, sp58);
                temp_a6_10 = &(&sp18[0])[(u32) (var_s1->unk7C & 0xFFFFFF) >> 0x14];
                temp_a1_4 = *temp_a6_10;
                if (temp_a1_4 == NULL) {
                    sp168 = (s64) var_s7_2;
                    *temp_a6_10 = sp4C;
                } else {
                    temp_s0->unk168((s64) temp_a1_4, (s64) temp_a1_4, sp4C);
                    temp_s0->unk15C(sp4C);
                    sp168 = (s64) var_s7_2;
                }
            }
            sp118 = (s64) var_s1;
            spA0 = 0;
            sp1F0 = (s64) &sp18[0];
            var_s5_3 = sp48;
            sp168 = (s64) var_s7_2;
            sp1A0 = temp_s2_2 * 0xC;
            var_s4_5 = 0;
            sp1C8 = temp_s2_2 * 0xC;
            sp1C0 = temp_s2_2 * 0xC;
loop_104:
            temp_t0_2 = *sp1F0;
            spB8 = (s64) temp_t0_2;
            if (temp_t0_2 != 0) {
                sp4 = &sp58;
                temp_gp->unk-7374(spA8, spB0, sp68, sp70, spE8, spF0, (u32) spA0, &sp54);
                var_s1_4 = spB8;
                temp_a7_5 = (s64) (((spB0 - sp58) + sp70) << 0x30) >> 0x30;
                sp62 = (s16) temp_a7_5;
                sp100 = temp_a7_5;
                temp_v1_2 = (s64) (((spA8 - sp54) + sp68) << 0x30) >> 0x30;
                spF8 = temp_v1_2;
                sp60 = (s16) temp_v1_2;
                if (temp_s6->unk1C != 0) {
                    if (temp_s2_2 > 0) {
                        spC8 = sp100 - spB0;
                        spD8 = spB0 - sp100;
                        sp210 = sp1C0 + var_s1_4;
                        var_s3_7 = 0;
                        spE0 = spA8 - spF8;
                        spD0 = spF8 - spA8;
loop_111:
                        temp_a6_11 = var_s1_4->unk8;
                        if (temp_a6_11 != NULL) {
                            if (temp_a6_11->unk4 != 0) {
                                goto block_108;
                            }
                        } else {
block_108:
                            temp_s0->unk164(var_s1_4, var_s1_4, var_s3_7 + var_s5_3);
                        }
                        if (var_s4_5 != 0) {
                            temp_a0_8 = var_s4_5 + var_s3_7;
                            sp208 = temp_a0_8;
                            temp_s0->unk178((void *) temp_a0_8, spD0, spC8);
                            temp_s0->unk16C(var_s1_4, (void *) var_s1_4, (void *) sp208);
                            temp_s0->unk178((void *) temp_a0_8, spE0, spD8);
                        }
                        var_s1_4 += 0xC;
                        var_s3_7 += 0xC;
                        if (var_s1_4 != sp210) {
                            goto loop_111;
                        }
                    }
                    if ((spA8 != spF8) || (spB0 != sp100)) {
                        spC0 = var_s4_5;
                        sp128 = (s64) var_s5_3;
                        sp118->unk10->unkE0(sp118, (s64) sp60 << 0x20, spB8);
                    }
                    var_s3_8 = 0;
                    if (temp_s2_2 > 0) {
                        var_s1_5 = spB8;
                        sp200 = sp1C8 + spB8;
loop_122:
                        temp_a6_12 = var_s1_5->unk8;
                        if (temp_a6_12 != NULL) {
                            if (temp_a6_12->unk4 != 0) {
                                goto block_120;
                            }
                        } else {
block_120:
                            temp_a0_9 = var_s3_8 + var_s5_3;
                            temp_s0->unk16C(temp_a0_9, (void *) temp_a0_9, (void *) var_s1_5);
                        }
                        var_s1_5 += 0xC;
                        var_s3_8 += 0xC;
                        if (var_s1_5 != sp200) {
                            goto loop_122;
                        }
                    }
                    temp_at_2 = sp118->unk24;
                    sp88 = (s64) temp_at_2;
                    if (temp_at_2 != NULL) {
                        spC0 = var_s4_5;
                        sp128 = (s64) var_s5_3;
loop_129:
                        var_s3_9 = spB8;
                        var_s1_6 = 0;
                        spC0 = var_s4_5;
                        sp128 = (s64) var_s5_3;
                        var_s4_6 = 0;
                        if (((u32) (sp88->unk7C & 0xFFFFF) >> 0x10) == spA0) {
                            temp_s5 = *(sp88->unk84 + (temp_gp->unk-30F8 * 4));
                            if (temp_s2_2 > 0) {
                                sp80 = sp88 + 0x38;
loop_135:
                                if (temp_s5->unk18 != var_s1_6) {
                                    if (temp_s6->unk24 & (1 << var_s1_6)) {
                                        temp_s0->unk164((s64) (var_s4_6 + sp50), temp_s5->unk2C + var_s4_6, (void *) var_s3_9);
                                    }
                                } else {
                                    temp_s0->unk164((s64) (var_s4_6 + sp50), sp80, (void *) var_s3_9);
                                }
                                var_s1_6 += 1;
                                var_s3_9 += 0xC;
                                var_s4_6 += 0xC;
                                if (var_s1_6 != temp_s2_2) {
                                    goto loop_135;
                                }
                            }
                            temp_gp->unk-73CC(sp88, &sub_5e4d0000 - 0x2618, sp50);
                        }
                        temp_a7_6 = sp88->unk1C;
                        var_s5_3 = (void *) sp128;
                        var_s4_5 = spC0;
                        sp88 = (s64) temp_a7_6;
                        if (temp_a7_6 != 0) {
                            goto loop_129;
                        }
                    }
                    var_s3_10 = 0;
                    if (var_s4_5 == 0) {
                        var_s4_5 = spB8;
                    } else if (temp_s2_2 > 0) {
                        var_s1_7 = spB8;
                        sp1F8 = sp1A0 + spB8;
loop_144:
                        temp_a6_13 = var_s1_7->unk8;
                        if (temp_a6_13 != NULL) {
                            if (temp_a6_13->unk4 != 0) {
                                goto block_142;
                            }
                        } else {
block_142:
                            temp_a0_10 = var_s4_5 + var_s3_10;
                            temp_s0->unk168(temp_a0_10, temp_a0_10, (void *) var_s1_7);
                            temp_s0->unk160(var_s1_7);
                        }
                        var_s1_7 += 0xC;
                        var_s3_10 += 0xC;
                        if (var_s1_7 != sp1F8) {
                            goto loop_144;
                        }
                    }
                } else {
                    temp_s0->unk164(spB8, spB8, var_s5_3);
                    if (var_s4_5 != 0) {
                        temp_s0->unk178((void *) var_s4_5, spF8 - spA8, sp100 - spB0, spA8);
                        temp_s0->unk16C(spB8, (void *) spB8, (void *) var_s4_5);
                        temp_s0->unk178((void *) var_s4_5, spA8 - spF8, spB0 - sp100, spF8);
                    }
                    if ((spA8 != spF8) || (spB0 != sp100)) {
                        spC0 = var_s4_5;
                        sp128 = (s64) var_s5_3;
                        sp118->unk10->unkE0(sp118, (s64) sp60 << 0x20, spB8);
                    }
                    spC0 = var_s4_5;
                    sp128 = (s64) var_s5_3;
                    temp_s0->unk16C((s64) var_s5_3, var_s5_3, (void *) spB8);
                    var_s1_8 = sp118->unk24;
                    if (var_s1_8 != NULL) {
loop_212:
                        if (((u32) (var_s1_8->unk7C & 0xFFFFF) >> 0x10) == spA0) {
                            temp_s0->unk164((s64) sp50, (s64) (var_s1_8 + 0x38), (void *) spB8);
                            temp_gp->unk-73CC((s64) var_s1_8, &sub_5e3d0000 - 0x6444, sp50);
                        }
                        var_s1_8 = var_s1_8->unk1C;
                        if (var_s1_8 != NULL) {
                            goto loop_212;
                        }
                    }
                    if (((u32) (sp118->unk7C & 0xFFFFFF) >> 0x14) == spA0) {
                        temp_a0_11 = sp118->unk44;
                        temp_s0->unk16C((s64) temp_a0_11, temp_a0_11, (void *) spB8);
                    }
                    if (var_s4_5 == 0) {
                        var_s4_5 = spB8;
                    } else {
                        temp_s0->unk168(var_s4_5, var_s4_5, (void *) spB8);
                        temp_s0->unk15C((void *) spB8);
                    }
                }
            }
            temp_at_3 = spA0 + 1;
            spA0 = temp_at_3;
            sp1F0 += 4;
            if (temp_at_3 != 0xB) {
                goto loop_104;
            }
            spC0 = var_s4_5;
            sp128 = (s64) var_s5_3;
            if (temp_s6->unk1C != 0) {
                var_s1 = (void *) sp118;
                if (temp_s2_2 > 0) {
                    var_s5_4 = 0;
                    var_s3_11 = sp50;
                    var_s4_7 = sp128;
loop_153:
                    temp_s0->unk160(var_s4_7);
                    temp_s0->unk160((s64) var_s3_11);
                    var_s3_11 += 0xC;
                    var_s4_7 += 0xC;
                    if (spC0 != 0) {
                        temp_s0->unk160(spC0 + var_s5_4);
                    }
                    var_s5_4 += 0xC;
                    if (var_s4_7 != ((temp_s2_2 * 0xC) + sp128)) {
                        goto loop_153;
                    }
                }
                Xfree(sp128);
                Xfree((s64) sp50);
                temp_s4 = &sp18[0] + 0x2C;
                temp_a0_12 = sp18[0].unk0;
                if (temp_a0_12 != NULL) {
                    Xfree((s64) temp_a0_12);
                }
                temp_s2_3 = &sp18[0] + 4;
                if (temp_s2_3 != temp_s4) {
                    temp_a0_13 = sp18[0].unk4;
                    if (temp_a0_13 != 0) {
                        Xfree((s64) temp_a0_13);
                    }
                    temp_s2_4 = temp_s2_3 + 4;
                    if (temp_s2_4 != temp_s4) {
                        temp_a0_14 = temp_s2_3->unk4;
                        if (temp_a0_14 != 0) {
                            Xfree((s64) temp_a0_14);
                        }
                        temp_s2_5 = temp_s2_4 + 4;
                        if (temp_s2_5 != temp_s4) {
                            temp_a0_15 = temp_s2_4->unk4;
                            if (temp_a0_15 != 0) {
                                Xfree((s64) temp_a0_15);
                            }
                            temp_s2_6 = temp_s2_5 + 4;
                            if (temp_s2_6 != temp_s4) {
                                temp_a0_16 = temp_s2_5->unk4;
                                if (temp_a0_16 != 0) {
                                    Xfree((s64) temp_a0_16);
                                }
                                temp_s2_7 = temp_s2_6 + 4;
                                if (temp_s2_7 != temp_s4) {
                                    temp_a0_17 = temp_s2_6->unk4;
                                    if (temp_a0_17 != 0) {
                                        Xfree((s64) temp_a0_17);
                                    }
                                    temp_s2_8 = temp_s2_7 + 4;
                                    if (temp_s2_8 != temp_s4) {
                                        temp_a0_18 = temp_s2_7->unk4;
                                        if (temp_a0_18 != 0) {
                                            Xfree((s64) temp_a0_18);
                                        }
                                        temp_s2_9 = temp_s2_8 + 4;
                                        if (temp_s2_9 != temp_s4) {
                                            temp_a0_19 = temp_s2_8->unk4;
                                            if (temp_a0_19 != 0) {
                                                Xfree((s64) temp_a0_19);
                                            }
                                            temp_s2_10 = temp_s2_9 + 4;
                                            if (temp_s2_10 != temp_s4) {
                                                temp_a0_20 = temp_s2_9->unk4;
                                                if (temp_a0_20 != 0) {
                                                    Xfree((s64) temp_a0_20);
                                                }
                                                temp_s2_11 = temp_s2_10 + 4;
                                                if (temp_s2_11 != temp_s4) {
                                                    temp_a0_21 = temp_s2_10->unk4;
                                                    if (temp_a0_21 != 0) {
                                                        Xfree((s64) temp_a0_21);
                                                    }
                                                    if ((temp_s2_11 + 4) != temp_s4) {
                                                        temp_a0_22 = temp_s2_11->unk4;
                                                        if (temp_a0_22 != 0) {
                                                            Xfree((s64) temp_a0_22);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                var_s1 = (void *) sp118;
                temp_s0->unk15C((void *) sp128);
                temp_s0->unk15C(sp50);
                if (spC0 != 0) {
                    temp_s0->unk15C((void *) spC0);
                }
            }
            if (sp120 != 0) {
                temp_s3_3 = var_s1->unk44;
                temp_s3_4 = (temp_s3_3 == 0) ? 0 : temp_s3_3;
                temp_s0->unkD4(var_s1, temp_s3_4, sp120);
                if (temp_s3_4 != 0) {
                    temp_s0->unk188(temp_s3_4);
                }
                temp_s0->unk15C((void *) sp120);
            }
            temp_s0->unk1EC(sp10->unk18);
            if (sp160 != 0) {
                temp_s0->unk1DC(sp10, sp168);
            }
            temp_t9 = temp_s0->unkD0;
            if (temp_t9 != NULL) {
                temp_t9(sp10->unk18, sp168, 0);
            }
        } else {
block_208:
            if (sp120 != 0) {
                temp_s0->unkD4(var_s1, 0, sp120);
                temp_s0->unk15C((void *) sp120);
            }
        }
        if (((u32) (var_s1->unk7C & 0xFFF) >> 0xB) != 0) {
            temp_gp->unk-7298();
        }
    }
}

void nfbMarkUnrealizedWindow(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    ? (*temp_t9)(void *, ?, ?);
    s32 *temp_a0;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    void *temp_a5;
    void *temp_gp;

    var_a3 = arg3;
    var_a4 = arg0->unk84;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x184454;
    temp_v0 = temp_gp->unk-30F8 * 4;
    temp_a5 = arg0->unk10;
    if ((*(arg0->unk18->unk84 + temp_v0))->unk18 == (*(temp_v0 + var_a4))->unk18) {
        if ((arg0 != arg1) || (var_a3 = temp_gp->unk-30F8, (arg2 != 0))) {
            temp_a5->unk188(arg0 + 0x2C, var_a3, var_a4, temp_a5);
            temp_t9 = temp_a5->unkE8;
            if (temp_t9 != NULL) {
                temp_t9(arg0, 0, 0);
            }
            temp_a5->unk188(arg0 + 0x38);
            goto block_6;
        }
    } else {
        arg0->unk44 = 1;
        *(temp_a5->unk74->unk3C + ((*((temp_gp->unk-30F8 * 4) + var_a4))->unk18 * 4)) = 1;
block_6:
        var_a4 = arg0->unk84;
    }
    temp_a0 = temp_a5->unk74->unk44 + ((*((temp_gp->unk-30F8 * 4) + var_a4))->unk18 * 4);
    *temp_a0 += 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x48, 0x4c, 0x50, 0x54], gap at: 0x28. */
void nfbPaintWindowBorder(void *arg0, s64 arg1, s32 arg2) {
    s16 sp12;
    s16 sp10;
    s32 *temp_v0;
    s32 temp_a0;
    s32 var_a1;
    s32 var_a1_2;
    s8 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v1;
    u32 temp_a0_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a5;
    void *temp_gp;
    void *var_a5;

    unksp20 = 0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x184334;
    temp_a0 = arg0->unk84;
    unksp40 = arg1;
    unksp28 = (dbcWindowPrivateIndex * 4) + temp_a0;
    temp_v0 = *((temp_gp->unk-30F8 * 4) + temp_a0);
    unksp38 = (s64) temp_v0;
    unksp30 = (s64) *temp_v0;
    if (arg2 != 1) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x49B0);
    }
    if (temp_gp->unk-7260(arg0) >= 2) {
        temp_v0_2 = unksp28->unk1;
        unksp28->unk1 = -1;
        unksp20 = (s64) temp_v0_2;
    }
    temp_a0_2 = arg0->unk7C;
    var_a5 = arg0;
    var_a1 = 1;
    if (((u32) (temp_a0_2 & 0x3FFFFFFF) >> 0x1D) != 0) {
        temp_a3 = unksp40->unk8;
        if (temp_a3 != NULL) {
            var_a1_2 = temp_a3->unk4;
        } else {
            var_a1_2 = 1;
        }
        unksp30->unk4((temp_a3 == NULL) ? unksp40 : (temp_a3 + 8), var_a1_2, unksp38->unk10, 3, unksp38->unk8, arg0);
    } else {
        if ((temp_a0_2 >> 0x1E) == 1) {
            do {
                var_a5 = var_a5->unk18;
            } while (((u32) var_a5->unk7C >> 0x1E) == 1);
        }
        temp_v1 = arg0->unk70->unkC;
        sp10 = (s16) ((s16) var_a5->unk8 % (s32) temp_v1);
        temp_v0_3 = arg0->unk70->unkE;
        sp12 = (s16) ((s16) var_a5->unkA % (s32) temp_v0_3);
        temp_a3_2 = unksp40->unk8;
        M2C_TRAP_IF(temp_v1 == 0);
        M2C_TRAP_IF(temp_v0_3 == 0);
        if (temp_a3_2 != NULL) {
            var_a1 = temp_a3_2->unk4;
        }
        temp_a5 = arg0->unk70;
        unksp30->unk1C((temp_a3_2 == NULL) ? unksp40 : (s64) (temp_a3_2 + 8), var_a1, temp_a5->unk20, temp_a5->unk1C, temp_a5->unkC, temp_a5->unkE, &sp10, 3, unksp38->unk8, arg0);
    }
    if (unksp28->unk1 == -1) {
        unksp28->unk1 = (s8) unksp20;
    }
}

void rrmInvalidate(void *arg0, s32 arg1, s64 arg2) {
    s64 sp50;
    s64 sp20;
    s64 sp18;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 *var_a3;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_s2_2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a4;
    s8 temp_a4_2;
    u32 temp_a2_2;
    u32 temp_a3_3;
    u32 temp_v0_3;
    u8 temp_s1;
    u8 temp_v1;
    void *temp_a1;
    void *temp_a1_3;
    void *temp_a3_2;
    void *temp_a4_3;
    void *temp_a5_4;
    void *temp_gp;
    void *temp_s1_2;
    void *temp_s2;
    void *temp_s4;
    void *temp_v0_2;
    void *temp_v1_2;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x184144;
    temp_v0 = arg0->unk84;
    sp20 = arg2;
    temp_s2 = *((rrmWindowPrivateIndex * 4) + temp_v0);
    temp_v1 = temp_s2->unk4;
    temp_s1 = (arg1 == 0) ? temp_v1 : (temp_v1 & arg1);
    temp_s4 = arg0->unk10;
    sp18 = (dbcWindowPrivateIndex * 4) + temp_v0;
    if (temp_s1 != 0) {
        temp_a4 = temp_s2->unkC;
        sp0 = temp_a4;
        temp_a3 = arg0->unk4;
        spC = 0;
        sp10 = 0;
        sp8 = (s32) temp_s1;
        sp4 = temp_a3;
        temp_s2->unk4 = (u8) (temp_s2->unk4 & ~temp_s1);
        if (temp_gp->unk-74DC(temp_s4->unk74->unk64, 0x3F2, sp, temp_a3, temp_a4) != -1) {
            if (temp_s1 & 8) {
                var_a0 = temp_s2->unk20;
                var_a4 = (spC & 4) | (var_a0 & ~4);
                temp_s2->unk20 = var_a4;
                var_a3 = &rrmScreenPrivateIndex;
                temp_a1 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
                if (sp10 & 1) {
                    if (sp20 != 0) {
                        temp_a5 = temp_a1->unk14;
                        if (temp_a5 >= 0) {
                            temp_v1_2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a5 * 0x24);
                            var_a3 = (s32 *) (temp_a1->unk20 ^ 4);
                            temp_v1_2->unkA0 = var_a3;
                            sp50 = (s64) var_a0;
                            temp_v1_2->unkA4 = (s32) temp_a1->unk24;
                        } else {
                            sp50 = (s64) var_a0;
                        }
                        SetDIDMode(arg0, temp_a1, temp_a1, (s32) var_a3, var_a4, temp_a5);
                        var_a4 = temp_s2->unk20;
                        var_a0 = (s32) sp50;
                    } else {
                        temp_a5_2 = temp_a1->unk14;
                        if (temp_a5_2 >= 0) {
                            temp_a3_2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a5_2 * 0x24);
                            temp_a3_2->unkA0 = (s32) (temp_a1->unk20 ^ 4);
                            temp_a3_2->unkA4 = (s32) temp_a1->unk24;
                            var_a4 = temp_s2->unk20;
                        }
                    }
                } else {
                    temp_a5_3 = temp_a1->unk14;
                    if (temp_a5_3 >= 0) {
                        temp_v0_2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a5_3 * 0x24);
                        temp_v0_2->unkA0 = (s32) temp_a1->unk20;
                        temp_v0_2->unkA4 = (s32) temp_a1->unk24;
                        var_a4 = temp_s2->unk20;
                    }
                }
                temp_a2 = var_a4 & 4;
                if ((var_a0 & 4) != temp_a2) {
                    temp_a3_3 = globalSerialNumber;
                    temp_a4_2 = temp_a2 != 0;
                    sp18->unk2 = temp_a4_2;
                    temp_a2_2 = temp_a3_3 + 1;
                    temp_a1_2 = temp_a2_2 > 0x10000000U;
                    temp_v0_3 = (temp_a1_2 == 0) ? temp_a2_2 : 1U;
                    arg0->unk14 = temp_v0_3;
                    globalSerialNumber = temp_v0_3;
                    temp_gp->unk-734C(arg0->unk4, temp_a1_2, temp_a2_2, temp_a3_3, temp_a4_2, sp18);
                }
            }
        }
        if ((temp_s1 & 2) && (temp_a0 = rrmScreenPrivateIndex * 4, ((*(temp_s4->unk1B4 + temp_a0))->unk4 != 0))) {
            temp_a2_3 = arg0->unk84;
            temp_a1_3 = *((glxWindowPrivateIndex * 4) + temp_a2_3);
            if ((temp_a1_3 != NULL) && (temp_a1_3->unk4 != 0)) {
                return;
            }
            temp_s1_2 = arg0->unk10;
            temp_a5_4 = *((rrmWindowPrivateIndex * 4) + temp_a2_3);
            temp_a1_4 = temp_a5_4->unk18;
            temp_a4_3 = *(temp_s1_2->unk1B4 + temp_a0);
            if ((temp_a1_4 == 0) || (temp_a4_3->unk4 == temp_a1_4)) {
                temp_a5_4->unk18 = 0;
            } else {
                temp_s2_2 = temp_a4_3->unk94 + (temp_a1_4 * 0x1C) + 0x10;
                temp_a4_3->unk4C(arg0, temp_s2_2, 0);
                temp_s1_2->unk188(temp_s2_2);
            }
        }
    }
}

s32 rrmBindRNToClip(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_t9)(void *, s32, s32, s32);
    s32 temp_s1;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    u16 *temp_a6;
    u16 *var_s1;
    u16 *var_v0;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_gp;
    void *temp_s1_2;
    void *var_v0_2;
    void *var_v0_3;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x183C88;
    temp_s1 = arg0->unk84;
    temp_a6 = *((rrmWindowPrivateIndex * 4) + temp_s1);
    temp_v0 = *((temp_gp->unk-30F8 * 4) + temp_s1);
    var_s1 = temp_a6;
    if (temp_a6 != NULL) {
        if (*temp_a6 & 1) {
            return 0;
        }
        sp8 = (s64) temp_v0;
        goto block_4;
    }
    sp48 = (s64) var_a1;
    sp40 = (s64) var_a3;
    sp38 = (s64) var_a2;
    sp8 = (s64) temp_v0;
    var_v0 = temp_gp->unk-758C(0x4C, temp_a6, &rrmWindowPrivateIndex);
    temp_s1_2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_v0 != NULL) {
        sp0 = (s64) var_v0;
        temp_gp->unk-7574(var_v0, 0, 0x4C, var_a3);
        *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = var_v0;
        var_a2 = (s32) sp38;
        temp_t9 = temp_s1_2->unk50;
        var_a3 = (s32) sp40;
        var_a1 = (s32) sp48;
        if (temp_t9 != NULL) {
            temp_t9(arg0, var_a1, var_a2, var_a3);
            var_v0 = (u16 *) sp0;
            var_a2 = (s32) sp38;
            var_a3 = (s32) sp40;
            var_a1 = (s32) sp48;
        } else {
            var_v0->unk2 = 0;
        }
    }
    var_s1 = var_v0;
    if (var_v0 == NULL) {
        return 0;
    }
block_4:
    var_s1->unkC = var_a1;
    var_s1->unk8 = 0;
    var_s1->unk1E = 0;
    var_s1->unk1C = 0;
    var_s1->unk24 = var_a3;
    var_s1->unk20 = var_a2;
    var_s1->unk0 = 1;
    sp10 = (s64) *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (incrRRMpriv(arg0->unk18, var_a1, var_a2, var_a3) != 0) {
        temp_gp->unk-75A0(var_s1);
        *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        return 0;
    }
    if (var_s1->unk2 == 1) {
        if (sp10->unkC & 1) {
            var_s1->unk14 = -1;
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                var_v0_2 = arg0->unk18;
                if (var_v0_2 != NULL) {
                    do {
                        temp_a5 = *(var_v0_2->unk84 + (rrmWindowPrivateIndex * 4));
                        temp_a5->unk10 = (s32) (temp_a5->unk10 + 1);
                        var_v0_2 = var_v0_2->unk18;
                    } while (var_v0_2 != NULL);
                }
                var_s1->unk14 = (s32) sp10->unk0;
            }
            return 1;
        }
        goto block_15;
    }
block_15:
    sp8->unk20 = (s32) (sp8->unk20 & ~1);
    nfbSetDidFlags(arg0, -2);
    var_s1->unk14 = -1;
    if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
        var_v0_3 = arg0->unk18;
        if (var_v0_3 != NULL) {
            do {
                temp_a5_2 = *(var_v0_3->unk84 + (rrmWindowPrivateIndex * 4));
                temp_a5_2->unk10 = (s32) (temp_a5_2->unk10 + 1);
                var_v0_3 = var_v0_3->unk18;
            } while (var_v0_3 != NULL);
        }
        if (FindFreeID(arg0) == 0) {
            FindBestID(arg0);
        }
    }
    return 1;
}

s32 rrmUnbindRNFromClip(void *arg0, s32 arg1) {
    s64 sp8;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2_2;
    s32 temp_a4_6;
    s32 temp_a5_4;
    s32 temp_a6_4;
    s32 temp_at;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a1;
    u16 temp_a2;
    u16 temp_v0_2;
    u16 var_a0;
    u16 var_a1_2;
    u32 var_a2;
    void **temp_a1_5;
    void **temp_a1_6;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_5;
    void *temp_at_2;
    void *temp_s0;
    void *temp_s3;
    void *var_a0_2;

    temp_v0 = arg0->unk84;
    temp_s0 = *((rrmWindowPrivateIndex * 4) + temp_v0);
    sp8 = (s64) *(((M2C_ERROR(/* Read from unset register $t9 */) + 0x183940)->unk-30F8 * 4) + temp_v0);
    if (temp_s0 != NULL) {
        temp_s3 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
        temp_s3->unk20(arg0, 0, 0);
        var_a1 = rrmWindowPrivateIndex * 4;
        if (temp_s0->unk0 & 0x20) {
            temp_a5 = *(arg0->unk84 + var_a1);
            temp_a4 = temp_a5->unk34;
            temp_a6 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
            temp_a3 = temp_a5->unk38;
            if (temp_a4 != NULL) {
                (*(temp_a4->unk84 + var_a1))->unk38 = temp_a3;
            } else {
                temp_a6->unk8C = temp_a3;
            }
            temp_a3_2 = temp_a5->unk38;
            temp_a4_2 = temp_a5->unk34;
            if (temp_a3_2 != NULL) {
                (*(temp_a3_2->unk84 + var_a1))->unk34 = temp_a4_2;
                temp_a5->unk38 = NULL;
            } else {
                temp_a6->unk90 = temp_a4_2;
            }
            temp_a5->unk34 = NULL;
            temp_a5->unk0 = (u16) (temp_a5->unk0 & ~0x20);
        }
        var_a2 = (u32) (arg0->unk7C & 0xFFF) >> 0xB;
        if (var_a2 != 0) {
            temp_at = temp_s0->unk14;
            sp0 = temp_at;
            if (temp_s3->unk0 == temp_at) {
                temp_s0->unk14 = -1;
            } else {
                temp_a1 = rrmWindowPrivateIndex * 4;
                temp_a3_3 = *(arg0->unk84 + temp_a1);
                temp_a4_3 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a3_3->unk14 * 0x24);
                temp_a4_4 = temp_a4_3 + 0x98;
                if (temp_a3_3->unk0 & 8) {
                    temp_a5_2 = temp_a3_3->unk2C;
                    temp_a6_2 = temp_a3_3->unk30;
                    if (temp_a5_2 != NULL) {
                        (*(temp_a5_2->unk84 + temp_a1))->unk30 = temp_a6_2;
                    } else {
                        temp_a4_3->unk98 = (s32) temp_a6_2;
                    }
                    temp_a6_3 = temp_a3_3->unk30;
                    temp_a5_3 = temp_a3_3->unk2C;
                    if (temp_a6_3 != NULL) {
                        (*(temp_a6_3->unk84 + temp_a1))->unk2C = temp_a5_3;
                        temp_a3_3->unk30 = NULL;
                    } else {
                        temp_a4_4->unk4 = (s32) temp_a5_3;
                    }
                    temp_a3_3->unk2C = NULL;
                    temp_a6_4 = temp_a4_3->unk98;
                    temp_v1 = temp_a4_4->unk10 & 0x31 & 0xFFFF;
                    var_a2 = temp_a4_4->unk14 - 1;
                    temp_a4_4->unk14 = var_a2;
                    temp_a5_4 = !(temp_v1 & 1) ? temp_v1 : (temp_v1 | 6);
                    if (temp_a6_4 != 0) {
                        var_a2 = temp_a4_4->unk4 ^ temp_a6_4;
                        var_a1_2 = (var_a2 == 0) ? (temp_a5_4 | 2) : (temp_a5_4 | 6);
                    } else {
                        var_a1_2 = temp_a5_4 & ~0x10;
                    }
                    temp_a4_4->unk10 = var_a1_2;
                    temp_a3_3->unk0 = (u16) (temp_a3_3->unk0 & ~8);
                }
                temp_a3_3->unk14 = -1;
            }
            temp_a1_2 = temp_s3->unk4;
            if ((temp_a1_2 != 0) && (temp_s0->unk18 != temp_a1_2)) {
                temp_a1_3 = rrmWindowPrivateIndex * 4;
                temp_a6_5 = *(arg0->unk84 + temp_a1_3);
                temp_a4_5 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a6_5->unk18 * 0x1C);
                if (temp_a6_5->unk0 & 0x40) {
                    temp_a0 = temp_a6_5->unk3C;
                    temp_a5_5 = temp_a6_5->unk40;
                    if (temp_a0 != NULL) {
                        (*(temp_a0->unk84 + temp_a1_3))->unk40 = temp_a5_5;
                    } else {
                        temp_a4_5->unk0 = (s32) temp_a5_5;
                    }
                    temp_a5_6 = temp_a6_5->unk40;
                    temp_a0_2 = temp_a6_5->unk3C;
                    if (temp_a5_6 != NULL) {
                        (*(temp_a5_6->unk84 + temp_a1_3))->unk3C = temp_a0_2;
                        temp_a6_5->unk40 = NULL;
                    } else {
                        temp_a4_5->unk4 = (s32) temp_a0_2;
                    }
                    temp_a6_5->unk3C = NULL;
                    temp_a1_4 = temp_a4_5->unk0;
                    temp_v0_2 = temp_a4_5->unk8 & 1 & 0xFFFF;
                    temp_a4_5->unkC = (s32) (temp_a4_5->unkC - 1);
                    var_a0 = (temp_v0_2 == 0) ? temp_v0_2 : (temp_v0_2 | 4);
                    if (temp_a1_4 != 0) {
                        temp_a2 = var_a0 | 2;
                        var_a0 = ((temp_a4_5->unk4 ^ temp_a1_4) == 0) ? temp_a2 : (temp_a2 | 4);
                    }
                    temp_a4_5->unk8 = var_a0;
                    var_a2 = temp_a6_5->unk0 & ~0x40;
                    temp_a6_5->unk0 = (u16) var_a2;
                }
                temp_a6_5->unk18 = 0;
            }
            var_a0_2 = arg0->unk18;
            var_a1 = rrmWindowPrivateIndex * 4;
            if (var_a0_2 != NULL) {
                do {
                    temp_at_2 = *(var_a0_2->unk84 + var_a1);
                    var_a2 = temp_at_2->unk10 - 1;
                    temp_at_2->unk10 = var_a2;
                    var_a0_2 = var_a0_2->unk18;
                } while (var_a0_2 != NULL);
            }
        }
        sp8->unk4 = cmapDID(arg0, var_a1, var_a2);
        temp_a1_5 = temp_s0->unk28;
        if (temp_a1_5 != NULL) {
            temp_a2_2 = temp_s0->unk2 * 4;
            *(temp_a2_2 + temp_a1_5) = 0;
            temp_a1_6 = temp_s0->unk28;
            temp_a0_3 = *temp_a1_6;
            if (temp_a0_3 != NULL) {
                *temp_a1_6 = NULL;
                temp_a4_6 = rrmWindowPrivateIndex * 4;
                temp_a3_4 = *(temp_a0_3->unk84 + temp_a4_6);
                temp_a3_4->unk28 = 0;
                .L5e38df10(temp_a0_3, arg1, temp_a2_2, temp_a3_4, temp_a4_6);
            }
            temp_a0_4 = temp_s0->unk28->unk4;
            if (temp_a0_4 != NULL) {
                temp_s0->unk28->unk4 = NULL;
                (*(temp_a0_4->unk84 + (rrmWindowPrivateIndex * 4)))->unk28 = 0;
                .L5e38df10(temp_a0_4, arg1);
            }
            temp_a0_5 = temp_s0->unk28->unk8;
            if (temp_a0_5 != NULL) {
                temp_s0->unk28->unk8 = NULL;
                (*(temp_a0_5->unk84 + (rrmWindowPrivateIndex * 4)))->unk28 = 0;
                .L5e38df10(temp_a0_5, arg1);
            }
            temp_a0_6 = temp_s0->unk28->unkC;
            if (temp_a0_6 != NULL) {
                temp_s0->unk28->unkC = NULL;
                (*(temp_a0_6->unk84 + (rrmWindowPrivateIndex * 4)))->unk28 = 0;
                .L5e38df10(temp_a0_6, arg1);
            }
            Xfree((s64) temp_s0->unk28, (s64) temp_s0->unk28);
            temp_s0->unk28 = NULL;
        }
        if (temp_s0->unk14 != temp_s3->unk0) {
            sp8->unk20 = (s32) (sp8->unk20 | 1);
            nfbSetDidFlags(arg0);
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                temp_s3->unk48(arg0, sp0);
            }
        }
        if (temp_s0->unk10 != 0) {
            temp_s0->unk0 = (u16) (temp_s0->unk0 & ~1);
        } else {
            Xfree((s64) temp_s0);
            *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        }
        return 1;
    }
    return 0;
}

s32 rrmOGLBindRNToClip(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_t9_2)(s64, s32, s32, s32);
    s32 *var_a1_2;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_t0;
    s64 var_ra;
    u16 temp_a4;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_gp;
    void *temp_t1;
    void *temp_t2;
    void *var_a6;
    void *var_a7;
    void *var_v0;
    void *var_v0_2;
    void *var_v0_3;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x183370;
    temp_t9 = arg0->unk84;
    temp_t1 = *((rrmWindowPrivateIndex * 4) + temp_t9);
    var_a6 = arg0;
    var_t0 = *((temp_gp->unk-30F8 * 4) + temp_t9);
    var_a7 = temp_t1;
    if (temp_t1 != NULL) {
        if (temp_t1->unk0 & 1) {
            temp_a4 = temp_t1->unk8;
            if (temp_a4 != 0) {
                temp_t1->unkC = var_a1;
                return 1;
            }
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x4118, var_a6->unk4, temp_a4, var_a6, var_a7);
            return 0;
        }
        goto block_4;
    }
    sp50 = (s64) var_a1;
    sp18 = (s64) var_a6;
    sp48 = (s64) var_a3;
    sp40 = (s64) var_a2;
    sp0 = (s64) var_t0;
    var_v0 = temp_gp->unk-758C(0x4C, var_a6, var_a7);
    var_ra = sp38;
    sp28 = (s64) *(var_a6->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_v0 != NULL) {
        sp8 = (s64) var_v0;
        temp_gp->unk-7574(var_v0, 0, 0x4C, var_a3);
        var_t0 = (s32) sp0;
        var_a6 = (void *) sp18;
        *(var_a6->unk84 + (rrmWindowPrivateIndex * 4)) = var_v0;
        var_a2 = (s32) sp40;
        temp_t9_2 = sp28->unk50;
        var_a3 = (s32) sp48;
        var_a1 = (s32) sp50;
        var_ra = sp38;
        if (temp_t9_2 != NULL) {
            temp_t9_2(sp18, var_a1, var_a2, var_a3);
            var_v0 = (void *) sp8;
            var_t0 = (s32) sp0;
            var_a2 = (s32) sp40;
            var_a3 = (s32) sp48;
            var_a6 = (void *) sp18;
            var_a1 = (s32) sp50;
            var_ra = sp38;
        } else {
            var_v0->unk2 = 0;
        }
    }
    var_a7 = var_v0;
    if (var_v0 == NULL) {
        return 0;
    }
block_4:
    temp_v0 = *(var_a6->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    var_a7->unkC = var_a1;
    var_a7->unk8 = 1;
    var_a7->unk1E = 0;
    var_a7->unk1C = 0;
    var_a7->unk24 = var_a3;
    var_a7->unk20 = var_a2;
    var_a7->unk0 = 5;
    temp_t2 = *(var_a6->unk84 + (glxWindowPrivateIndex * 4));
    if (temp_t2 != NULL) {
        sp18 = (s64) var_a6;
        sp0 = (s64) var_t0;
        sp20 = (s64) temp_v0;
        if (temp_t2->unk4 != 0) {
            var_a7->unk14 = -1;
            return 1;
        }
    }
    sp18 = (s64) var_a6;
    sp10 = (s64) var_a7;
    sp0 = (s64) var_t0;
    sp20 = (s64) temp_v0;
    sp38 = var_ra;
    if (incrRRMpriv(var_a6->unk18, var_a1, var_a2, var_a3, -1) != 0) {
        temp_gp->unk-75A0(sp10);
        *(sp18->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        return 0;
    }
    if (sp10->unk2 == 1) {
        if (sp20->unkC & 1) {
            sp10->unk14 = -1;
            if (((u32) (sp18->unk7C & 0xFFF) >> 0xB) != 0) {
                var_v0_2 = sp18->unk18;
                if (var_v0_2 != NULL) {
                    do {
                        temp_a5 = *(var_v0_2->unk84 + (rrmWindowPrivateIndex * 4));
                        temp_a5->unk10 = (s32) (temp_a5->unk10 + 1);
                        var_v0_2 = var_v0_2->unk18;
                    } while (var_v0_2 != NULL);
                }
                sp10->unk14 = (s32) sp20->unk0;
            }
        } else {
            goto block_21;
        }
    } else {
block_21:
        sp0->unk20 = (s32) (sp0->unk20 & ~1);
        nfbSetDidFlags((void *) sp18, -2);
        sp10->unk14 = -1;
        if (((u32) (sp18->unk7C & 0xFFF) >> 0xB) != 0) {
            var_v0_3 = sp18->unk18;
            var_a1_2 = &rrmWindowPrivateIndex;
            if (var_v0_3 != NULL) {
                var_a1_2 = (s32 *) (rrmWindowPrivateIndex * 4);
                do {
                    temp_a5_2 = *(var_v0_3->unk84 + var_a1_2);
                    temp_a5_2->unk10 = (s32) (temp_a5_2->unk10 + 1);
                    var_v0_3 = var_v0_3->unk18;
                } while (var_v0_3 != NULL);
            }
            if (FindFreeID((void *) sp18, (s32) var_a1_2) == 0) {
                FindBestID((void *) sp18);
            }
        }
    }
    return 1;
}

s32 rrmOGLUnbindRNFromClip(void *arg0) {
    s64 sp8;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a4_2;
    s32 temp_a4_5;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_a2_2;
    u16 temp_at;
    u16 temp_v0_2;
    u16 var_a0;
    u16 var_a1_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a4;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_6;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_at_2;
    void *temp_gp;
    void *temp_s2;
    void *temp_s4;
    void *var_a0_2;
    void *var_a1;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x182F8C;
    temp_t9 = arg0->unk84;
    temp_s4 = *((rrmWindowPrivateIndex * 4) + temp_t9);
    sp8 = (s64) *((temp_gp->unk-30F8 * 4) + temp_t9);
    if (temp_s4 != NULL) {
        temp_s2 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
        temp_s2->unk20(arg0, 0, 0);
        if (temp_s4->unk0 & 0x20) {
            temp_a1 = rrmWindowPrivateIndex * 4;
            temp_a4 = *(arg0->unk84 + temp_a1);
            temp_a5 = temp_a4->unk34;
            temp_a6 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
            temp_a3 = temp_a4->unk38;
            if (temp_a5 != NULL) {
                (*(temp_a5->unk84 + temp_a1))->unk38 = temp_a3;
            } else {
                temp_a6->unk8C = temp_a3;
            }
            temp_a3_2 = temp_a4->unk38;
            temp_a5_2 = temp_a4->unk34;
            if (temp_a3_2 != NULL) {
                (*(temp_a3_2->unk84 + temp_a1))->unk34 = temp_a5_2;
                temp_a4->unk38 = NULL;
            } else {
                temp_a6->unk90 = temp_a5_2;
            }
            temp_a4->unk34 = NULL;
            temp_a4->unk0 = (u16) (temp_a4->unk0 & ~0x20);
        }
        temp_a4_2 = arg0->unk84;
        var_a1 = *((glxWindowPrivateIndex * 4) + temp_a4_2);
        if (var_a1 != NULL) {
            temp_a2 = var_a1->unk4;
            if (temp_a2 != 0) {
                temp_gp->unk-75A0(temp_s4, var_a1, temp_a2);
                *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
                return 1;
            }
        }
        if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
            temp_v0 = temp_s4->unk14;
            sp0 = temp_v0;
            if (temp_s2->unk0 == temp_v0) {
                temp_s4->unk14 = -1;
            } else {
                temp_a1_2 = rrmWindowPrivateIndex * 4;
                temp_a3_3 = *(temp_a4_2 + temp_a1_2);
                temp_a5_3 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a3_3->unk14 * 0x24);
                temp_a5_4 = temp_a5_3 + 0x98;
                if (temp_a3_3->unk0 & 8) {
                    temp_a6_2 = temp_a3_3->unk2C;
                    temp_a4_3 = temp_a3_3->unk30;
                    if (temp_a6_2 != NULL) {
                        (*(temp_a6_2->unk84 + temp_a1_2))->unk30 = temp_a4_3;
                    } else {
                        temp_a5_3->unk98 = (s32) temp_a4_3;
                    }
                    temp_a4_4 = temp_a3_3->unk30;
                    temp_a6_3 = temp_a3_3->unk2C;
                    if (temp_a4_4 != NULL) {
                        (*(temp_a4_4->unk84 + temp_a1_2))->unk2C = temp_a6_3;
                        temp_a3_3->unk30 = NULL;
                    } else {
                        temp_a5_4->unk4 = (s32) temp_a6_3;
                    }
                    temp_a3_3->unk2C = NULL;
                    temp_a4_5 = temp_a5_3->unk98;
                    temp_v1 = temp_a5_4->unk10 & 0x31 & 0xFFFF;
                    temp_a5_4->unk14 = (s32) (temp_a5_4->unk14 - 1);
                    temp_a1_3 = !(temp_v1 & 1) ? temp_v1 : (temp_v1 | 6);
                    if (temp_a4_5 != 0) {
                        temp_at = temp_a1_3 | 2;
                        var_a1_2 = ((temp_a5_4->unk4 ^ temp_a4_5) == 0) ? temp_at : (temp_at | 4);
                    } else {
                        var_a1_2 = temp_a1_3 & ~0x10;
                    }
                    temp_a5_4->unk10 = var_a1_2;
                    temp_a3_3->unk0 = (u16) (temp_a3_3->unk0 & ~8);
                }
                temp_a3_3->unk14 = -1;
            }
            temp_a1_4 = temp_s2->unk4;
            if ((temp_a1_4 != 0) && (temp_s4->unk18 != temp_a1_4)) {
                temp_a1_5 = rrmWindowPrivateIndex * 4;
                temp_a6_4 = *(arg0->unk84 + temp_a1_5);
                temp_a4_6 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a6_4->unk18 * 0x1C);
                if (temp_a6_4->unk0 & 0x40) {
                    temp_a0 = temp_a6_4->unk3C;
                    temp_a5_5 = temp_a6_4->unk40;
                    if (temp_a0 != NULL) {
                        (*(temp_a0->unk84 + temp_a1_5))->unk40 = temp_a5_5;
                    } else {
                        temp_a4_6->unk0 = (s32) temp_a5_5;
                    }
                    temp_a5_6 = temp_a6_4->unk40;
                    temp_a0_2 = temp_a6_4->unk3C;
                    if (temp_a5_6 != NULL) {
                        (*(temp_a5_6->unk84 + temp_a1_5))->unk3C = temp_a0_2;
                        temp_a6_4->unk40 = NULL;
                    } else {
                        temp_a4_6->unk4 = (s32) temp_a0_2;
                    }
                    temp_a6_4->unk3C = NULL;
                    temp_a1_6 = temp_a4_6->unk0;
                    temp_v0_2 = temp_a4_6->unk8 & 1 & 0xFFFF;
                    temp_a4_6->unkC = (s32) (temp_a4_6->unkC - 1);
                    var_a0 = (temp_v0_2 == 0) ? temp_v0_2 : (temp_v0_2 | 4);
                    if (temp_a1_6 != 0) {
                        temp_a2_2 = var_a0 | 2;
                        var_a0 = ((temp_a4_6->unk4 ^ temp_a1_6) == 0) ? temp_a2_2 : (temp_a2_2 | 4);
                    }
                    temp_a4_6->unk8 = var_a0;
                    temp_a6_4->unk0 = (u16) (temp_a6_4->unk0 & ~0x40);
                }
                temp_a6_4->unk18 = 0;
            }
            var_a0_2 = arg0->unk18;
            var_a1 = (void *) (rrmWindowPrivateIndex * 4);
            if (var_a0_2 != NULL) {
                do {
                    temp_at_2 = *(var_a0_2->unk84 + var_a1);
                    temp_at_2->unk10 = (s32) (temp_at_2->unk10 - 1);
                    var_a0_2 = var_a0_2->unk18;
                } while (var_a0_2 != NULL);
            }
        }
        sp8->unk4 = cmapDID(arg0, (s32) var_a1);
        temp_a1_7 = temp_s4->unk28;
        if (temp_a1_7 != 0) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x4160, temp_a1_7);
        }
        if (temp_s4->unk14 != temp_s2->unk0) {
            sp8->unk20 = (s32) (sp8->unk20 | 1);
            nfbSetDidFlags(arg0);
            if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
                temp_s2->unk48(arg0, sp0);
            }
        }
        if (temp_s4->unk10 != 0) {
            temp_s4->unk0 = (u16) (temp_s4->unk0 & ~1);
        } else {
            temp_gp->unk-75A0(temp_s4);
            *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
        }
        return 1;
    }
    return 0;
}

void rrmDisposeClip(void *arg0, s32 arg1, s32 arg2) {
    s32 sp4;
    s32 sp0;
    void *temp_gp;

    sp0 = arg2;
    sp4 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x182A64;
    if (temp_gp->unk-74DC(arg0->unk74->unk64, 0x3EC, sp, 0x180000) == -1) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x41A0, sp0, errno);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x38, 0x3c], gap at: 0x20. */
void rrmDestroyDrawable(void *arg0) {
    s64 sp40;
    s32 temp_a1_2;
    s32 temp_a3;
    s64 var_ra;
    void *temp_a1;
    void *temp_at;
    void *temp_gp;

    var_ra = saved_reg_ra;
    temp_at = arg0->unk10;
    unksp8 = (s64) temp_at;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1829F0;
    temp_a3 = rrmWindowPrivateIndex * 4;
    temp_a1 = *(arg0->unk84 + temp_a3);
    unksp18 = (s64) *(temp_at->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (temp_a1 != NULL) {
        if (temp_a1 != NULL) {
            unksp30 = (s64) temp_a1;
            if (temp_a1->unk44 != 0) {
                temp_gp->unk-75A0(unksp30->unk48, temp_a1, temp_a3);
                temp_gp->unk-72D0(unksp30->unk44);
                var_ra = sp40;
                unksp30->unk48 = NULL;
                unksp30->unk44 = 0;
            }
        }
        if (temp_a1->unk0 & 1) {
            sp40 = var_ra;
            temp_a1_2 = temp_a1->unkC;
            unksp20 = (s64) arg0->unk4;
            unksp28 = (s64) temp_a1_2;
            if (temp_a1->unk8 != 0) {
                unksp18->unk3C(arg0, temp_a1_2);
            } else {
                unksp18->unk44(arg0, temp_a1_2);
            }
            unksp18->unk60(unksp8, unksp20, unksp28);
        } else {
            sp40 = var_ra;
            temp_gp->unk-75A0(temp_a1);
        }
    }
}

void rrmValidateCID(void *arg0) {
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a4;
    s32 temp_a4_4;
    s32 temp_a6_3;
    s32 temp_s5;
    s32 temp_s6;
    s32 var_s3;
    u16 temp_a0_2;
    u16 temp_a2_2;
    u16 temp_at;
    u16 temp_s7;
    u16 temp_v0_2;
    u16 temp_v1;
    u16 var_a0;
    u16 var_a5_2;
    u32 temp_a2;
    u32 temp_v0;
    u32 var_s0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_4;
    void *temp_at_2;
    void *temp_s1;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s4;
    void *var_a5;

    temp_s2 = arg0->unk10;
    sp0 = (s64) temp_s2;
    temp_s1 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_s2_2 = *(temp_s2->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_v0 = temp_s1->unk18;
    sp8 = temp_s2_2->unk94 + (temp_v0 * 0x1C);
    if (temp_s2_2->unk4 == temp_v0) {
        return;
    }
    if (temp_s2_2->unk5C(arg0) != 0) {
        if (temp_s2_2->unkC & 2) {
            temp_s7 = temp_s1->unk2;
            temp_s6 = temp_s2_2->unk94;
            if ((u32) temp_s2_2->unk4 >= 2U) {
                var_s3 = 0;
                var_s0 = 1;
loop_9:
                if (temp_s1->unk18 != var_s0) {
                    temp_s4 = (var_s3 + temp_s6)->unk1C;
                    if (temp_s4 != NULL) {
                        temp_a1 = *(temp_s4->unk84 + (rrmWindowPrivateIndex * 4));
                        if ((temp_a1->unk2 != temp_s7) && (temp_a1->unk4 & 2)) {
                            temp_s2_2->unk20(temp_s4, 2, 0);
                            temp_a0 = rrmWindowPrivateIndex * 4;
                            var_a5 = *(temp_a0 + temp_s4->unk84);
                            temp_a4 = rrmScreenPrivateIndex * 4;
                            if (var_a5->unk18 >= 0) {
                                temp_a3 = (*(temp_s4->unk10->unk1B4 + temp_a4))->unk94 + (var_a5->unk18 * 0x1C);
                                if (var_a5->unk0 & 0x40) {
                                    temp_a6 = var_a5->unk3C;
                                    temp_a5 = var_a5->unk40;
                                    if (temp_a6 != NULL) {
                                        (*(temp_a6->unk84 + temp_a0))->unk40 = temp_a5;
                                    } else {
                                        temp_a3->unk0 = (s32) temp_a5;
                                    }
                                    temp_a5_2 = var_a5->unk40;
                                    temp_a6_2 = var_a5->unk3C;
                                    if (temp_a5_2 != NULL) {
                                        (*(temp_a5_2->unk84 + temp_a0))->unk3C = temp_a6_2;
                                        var_a5->unk40 = NULL;
                                    } else {
                                        temp_a3->unk4 = (s32) temp_a6_2;
                                    }
                                    var_a5->unk3C = NULL;
                                    temp_a6_3 = temp_a3->unk0;
                                    temp_v1 = temp_a3->unk8 & 1 & 0xFFFF;
                                    temp_a3->unkC = (s32) (temp_a3->unkC - 1);
                                    var_a5_2 = (temp_v1 == 0) ? temp_v1 : (temp_v1 | 4);
                                    if (temp_a6_3 != 0) {
                                        temp_at = var_a5_2 | 2;
                                        var_a5_2 = ((temp_a3->unk4 ^ temp_a6_3) == 0) ? temp_at : (temp_at | 4);
                                    }
                                    temp_a3->unk8 = var_a5_2;
                                    var_a5->unk0 = (u16) (var_a5->unk0 & ~0x40);
                                }
                                var_a5->unk18 = 0;
                                var_a5 = *(temp_a0 + temp_s4->unk84);
                            }
                            temp_a1_2 = (*(temp_s4->unk10->unk1B4 + temp_a4))->unk94;
                            var_a5->unk18 = 0;
                            temp_a3_2 = *(temp_s4->unk84 + temp_a0);
                            temp_a3_2->unk40 = 0;
                            temp_at_2 = temp_a1_2->unk4;
                            temp_a3_2->unk3C = temp_at_2;
                            if (temp_at_2 != NULL) {
                                (*(temp_a1_2->unk4->unk84 + temp_a0))->unk40 = temp_s4;
                            } else {
                                temp_a1_2->unk0 = temp_s4;
                            }
                            temp_a1_2->unk4 = temp_s4;
                            temp_a3_2->unk0 = (u16) (temp_a3_2->unk0 | 0x40);
                            temp_a2 = temp_a1_2->unkC + 1;
                            temp_a1_2->unkC = temp_a2;
                            temp_a0_2 = temp_a1_2->unk8 | 2;
                            temp_a1_2->unk8 = temp_a0_2;
                            if (temp_a2 >= 2U) {
                                temp_a1_2->unk8 = (u16) (temp_a0_2 | 4);
                            }
                        }
                    }
                }
                var_s0 += 1;
                var_s3 += 0x1C;
                if (var_s0 < temp_s2_2->unk4) {
                    goto loop_9;
                }
            }
        }
        temp_s5 = sp8 + 0x10;
        sp0->unk158(temp_s5, arg0 + 0x2C);
        temp_s2_2->unk4C(arg0, temp_s5, temp_s1->unk18);
        return;
    }
    temp_a0_3 = rrmWindowPrivateIndex * 4;
    temp_a6_4 = *(arg0->unk84 + temp_a0_3);
    temp_a3_3 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a6_4->unk18 * 0x1C);
    if (temp_a6_4->unk0 & 0x40) {
        temp_a4_2 = temp_a6_4->unk3C;
        temp_a5_3 = temp_a6_4->unk40;
        if (temp_a4_2 != NULL) {
            (*(temp_a4_2->unk84 + temp_a0_3))->unk40 = temp_a5_3;
        } else {
            temp_a3_3->unk0 = (s32) temp_a5_3;
        }
        temp_a5_4 = temp_a6_4->unk40;
        temp_a4_3 = temp_a6_4->unk3C;
        if (temp_a5_4 != NULL) {
            (*(temp_a5_4->unk84 + temp_a0_3))->unk3C = temp_a4_3;
            temp_a6_4->unk40 = NULL;
        } else {
            temp_a3_3->unk4 = (s32) temp_a4_3;
        }
        temp_a6_4->unk3C = NULL;
        temp_a4_4 = temp_a3_3->unk0;
        temp_v0_2 = temp_a3_3->unk8 & 1 & 0xFFFF;
        temp_a3_3->unkC = (s32) (temp_a3_3->unkC - 1);
        var_a0 = (temp_v0_2 == 0) ? temp_v0_2 : (temp_v0_2 | 4);
        if (temp_a4_4 != 0) {
            temp_a2_2 = var_a0 | 2;
            var_a0 = ((temp_a3_3->unk4 ^ temp_a4_4) == 0) ? temp_a2_2 : (temp_a2_2 | 4);
        }
        temp_a3_3->unk8 = var_a0;
        temp_a6_4->unk0 = (u16) (temp_a6_4->unk0 & ~0x40);
    }
    temp_a6_4->unk18 = 0;
    temp_s1->unk18 = (u32) temp_s2_2->unk4;
}

s32 rrmProcessRequestQueue(void *arg0, void *arg4) {
    s64 sp30;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_at;
    s32 var_at_2;
    s32 var_s2;
    s64 var_ra;
    u8 temp_v0_3;
    u8 temp_v0_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a6;
    void *temp_s0;
    void *temp_s1;
    void *temp_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a4;

    var_ra = saved_reg_ra;
    var_a4 = arg4;
    temp_a5 = rrmScreenPrivateIndex * 4;
    temp_s3 = *(arg0->unk1B4 + temp_a5);
    temp_s0 = temp_s3->unk8C;
    var_s2 = 0;
    temp_a2 = rrmWindowPrivateIndex * 4;
    if (temp_s0 != NULL) {
        temp_s1 = *(temp_s0->unk84 + temp_a2);
        temp_a0 = temp_s1->unk34;
        temp_a6 = *(temp_s0->unk10->unk1B4 + temp_a5);
        temp_v0 = temp_s1->unk38;
        if (temp_a0 != NULL) {
            (*(temp_a0->unk84 + temp_a2))->unk38 = temp_v0;
        } else {
            temp_a6->unk8C = temp_v0;
        }
        temp_v0_2 = temp_s1->unk38;
        temp_a0_2 = temp_s1->unk34;
        if (temp_v0_2 != NULL) {
            var_a4 = *(temp_v0_2->unk84 + temp_a2);
            var_a4->unk34 = temp_a0_2;
            temp_s1->unk38 = NULL;
        } else {
            temp_a6->unk90 = temp_a0_2;
        }
        temp_s1->unk34 = NULL;
        temp_s1->unk0 = (u16) (temp_s1->unk0 & ~0x20);
        sp0 = (s64) temp_s3->unk4;
        var_s2 = temp_s3->unk8C != NULL;
        if (((u32) (temp_s0->unk7C & 0xFFF) >> 0xB) != 0) {
            if (FindFreeID(temp_s0, (s32) temp_s1, temp_a2, -0x21, var_a4, temp_a5, temp_a6) == 0) {
                StealID(temp_s0);
            }
            temp_v0_3 = temp_s1->unk5;
            var_at = temp_v0_3 & 2;
            if (temp_v0_3 & 8) {
                temp_s3->unk24(temp_s0, temp_s1, temp_s3);
                var_at = temp_s1->unk5 & 2;
            }
            if (var_at != 0) {
                if (sp0 != 0) {
                    FindFreeCID(temp_s0);
                    rrmValidateCID(temp_s0);
                }
                temp_s3->unk1C(temp_s0);
            }
        } else {
            temp_a3 = temp_s1->unk0 & 4;
            if (temp_a3 != 0) {
                temp_v0_4 = temp_s1->unk5;
                temp_a4 = temp_v0_4 & 8;
                var_at_2 = temp_v0_4 & 2;
                if (temp_a4 != 0) {
                    temp_s3->unk24(temp_s0, temp_s1, temp_s3, temp_a3, temp_a4, temp_a5, temp_a6);
                    var_ra = sp30;
                    var_at_2 = temp_s1->unk5 & 2;
                }
                if (var_at_2 != 0) {
                    sp30 = var_ra;
                    temp_s3->unk1C(temp_s0);
                }
            }
        }
    }
    return var_s2;
}

s32 rrmWorkProc(void) {
    s64 sp0;
    ? *var_s0;
    s32 (*temp_t9)(void *);
    s32 var_s1;
    s32 var_s2;
    s64 temp_v0;
    void *temp_a0;
    void *temp_gp;
    void *temp_s2;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x181610;
    var_s2 = 1;
    temp_v0 = temp_gp->unk-72CC();
    sp0 = temp_v0;
    if ((u32) (temp_v0 - temp_gp->unk-3118) >= 0x32U) {
        var_s1 = 0;
        if (screenInfo.unk44 > 0) {
            var_s0 = &screenInfo;
            temp_s2 = ((screenInfo.unk44 - 1 + 1) * 4) + &screenInfo;
            do {
                temp_a0 = var_s0->unk48;
                temp_t9 = (*(temp_a0->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk18;
                var_s0 += 4;
                var_s1 |= temp_t9(temp_a0);
            } while (var_s0 != temp_s2);
        }
        temp_gp->unk-3114 = var_s1;
        var_s2 = var_s1;
        temp_gp->unk-3118 = (s32) sp0;
    }
    return var_s2 == 0;
}

void rrmValidateTree(void *arg0, s32 arg1, s64 arg2) {
    s64 sp28;
    ? (*temp_t9)(void *, s32, s64);
    void *temp_a0;

    if (*(arg0->unk84 + (rrmWindowPrivateIndex * 4)) != 0) {
        sp28 = arg2;
        rrmWorkProc(arg0);
    }
    temp_a0 = arg0->unk10;
    temp_t9 = (*(temp_a0->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk7C;
    unksp18 = (s64) temp_a0;
    temp_a0->unkCC = temp_t9;
    temp_t9(arg0, arg1, arg2);
    unksp18->unkCC = rrmValidateTree;
}

void rrmUnmapWindow(void *arg0, s32 arg1) {
    s32 *var_a2;
    s32 *var_a3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a5_3;
    s32 temp_a5_6;
    s32 var_a1;
    u16 temp_at;
    u16 temp_v0;
    u16 temp_v1;
    u16 var_a3_2;
    u16 var_a3_3;
    u32 temp_a2_2;
    void (*temp_t9)(void *, s32, s32 *, s32 *);
    void *temp_a2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a7;
    void *temp_s0;
    void *temp_s2;
    void *temp_s5;
    void *temp_v0_2;

    var_a1 = arg1;
    temp_s2 = arg0->unk10;
    var_a2 = &rrmWindowPrivateIndex;
    var_a3 = &rrmScreenPrivateIndex;
    temp_s5 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    temp_s0 = *(temp_s2->unk1B4 + (rrmScreenPrivateIndex * 4));
    if ((temp_s5 != NULL) && (temp_s5->unk0 & 1)) {
        temp_s0->unk20(arg0, 0, 0, &rrmScreenPrivateIndex);
        var_a1 = temp_s5->unk14;
        if (var_a1 == temp_s0->unk0) {
            temp_s5->unk14 = -1;
        } else {
            temp_a3 = rrmWindowPrivateIndex * 4;
            temp_a2 = *(arg0->unk84 + temp_a3);
            temp_a4 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)) + (temp_a2->unk14 * 0x24);
            temp_a4_2 = temp_a4 + 0x98;
            if (temp_a2->unk0 & 8) {
                temp_a5 = temp_a2->unk2C;
                temp_a6 = temp_a2->unk30;
                if (temp_a5 != NULL) {
                    (*(temp_a5->unk84 + temp_a3))->unk30 = temp_a6;
                } else {
                    temp_a4->unk98 = (s32) temp_a6;
                }
                temp_a6_2 = temp_a2->unk30;
                temp_a5_2 = temp_a2->unk2C;
                if (temp_a6_2 != NULL) {
                    (*(temp_a6_2->unk84 + temp_a3))->unk2C = temp_a5_2;
                    temp_a2->unk30 = NULL;
                } else {
                    temp_a4_2->unk4 = (s32) temp_a5_2;
                }
                temp_a2->unk2C = NULL;
                temp_a5_3 = temp_a4->unk98;
                temp_a4_2->unk14 = (s32) (temp_a4_2->unk14 - 1);
                var_a1 = temp_a4_2->unk10 & 0x31 & 0xFFFF;
                temp_a3_2 = !(var_a1 & 1) ? var_a1 : (var_a1 | 6);
                if (temp_a5_3 != 0) {
                    temp_v0 = temp_a3_2 | 2;
                    var_a3_2 = ((temp_a4_2->unk4 ^ temp_a5_3) == 0) ? temp_v0 : (temp_v0 | 4);
                } else {
                    var_a1 = -0x11;
                    var_a3_2 = temp_a3_2 & ~0x10;
                }
                temp_a4_2->unk10 = var_a3_2;
                temp_a2->unk0 = (u16) (temp_a2->unk0 & ~8);
            }
            temp_a2->unk14 = -1;
        }
        temp_a2_2 = temp_s0->unk4;
        var_a3 = (s32 *) rrmWindowPrivateIndex;
        if (temp_a2_2 != 0) {
            var_a1 = (u32) temp_s5->unk18 < temp_a2_2;
            if (var_a1 != 0) {
                temp_a3_3 = rrmWindowPrivateIndex * 4;
                temp_a7 = *(arg0->unk84 + temp_a3_3);
                temp_a4_3 = (*(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk94 + (temp_a7->unk18 * 0x1C);
                if (temp_a7->unk0 & 0x40) {
                    temp_a6_3 = temp_a7->unk3C;
                    temp_a5_4 = temp_a7->unk40;
                    if (temp_a6_3 != NULL) {
                        (*(temp_a6_3->unk84 + temp_a3_3))->unk40 = temp_a5_4;
                    } else {
                        temp_a4_3->unk0 = (s32) temp_a5_4;
                    }
                    temp_a5_5 = temp_a7->unk40;
                    temp_a6_4 = temp_a7->unk3C;
                    if (temp_a5_5 != NULL) {
                        (*(temp_a5_5->unk84 + temp_a3_3))->unk3C = temp_a6_4;
                        temp_a7->unk40 = NULL;
                    } else {
                        temp_a4_3->unk4 = (s32) temp_a6_4;
                    }
                    temp_a7->unk3C = NULL;
                    temp_a5_6 = temp_a4_3->unk0;
                    var_a1 = temp_a4_3->unkC - 1;
                    temp_v1 = temp_a4_3->unk8 & 1 & 0xFFFF;
                    temp_a4_3->unkC = var_a1;
                    var_a3_3 = (temp_v1 == 0) ? temp_v1 : (temp_v1 | 4);
                    if (temp_a5_6 != 0) {
                        temp_at = var_a3_3 | 2;
                        var_a1 = temp_a4_3->unk4 ^ temp_a5_6;
                        var_a3_3 = (var_a1 == 0) ? temp_at : (temp_at | 4);
                    }
                    temp_a4_3->unk8 = var_a3_3;
                    temp_a7->unk0 = (u16) (temp_a7->unk0 & ~0x40);
                }
                temp_a7->unk18 = 0;
            }
            var_a3 = (s32 *) rrmWindowPrivateIndex;
        }
        var_a2 = arg0->unk18;
        if (var_a2 != NULL) {
            var_a3 = (s32 *) ((s32) var_a3 * 4);
            do {
                temp_v0_2 = *(var_a2->unk84 + var_a3);
                temp_v0_2->unk10 = (s32) (temp_v0_2->unk10 - 1);
                var_a2 = var_a2->unk18;
            } while (var_a2 != NULL);
        }
    }
    temp_t9 = temp_s0->unk6C;
    temp_s2->unkC8 = temp_t9;
    temp_t9(arg0, var_a1, var_a2, var_a3);
    temp_s2->unkC8 = (void (*)(void *, s32, s32 *, s32 *)) rrmUnmapWindow;
}

s64 rrmMapWindow(void *arg0) {
    s64 (*temp_t9)(void *);
    u8 var_s2;
    void *temp_a4;
    void *temp_s1;
    void *temp_s3;
    void *temp_s4;
    void *var_v0;

    temp_s3 = arg0->unk10;
    temp_s4 = *(arg0->unk84 + (rrmWindowPrivateIndex * 4));
    var_s2 = 0;
    temp_s1 = *(temp_s3->unk1B4 + (rrmScreenPrivateIndex * 4));
    if ((temp_s4 != NULL) && (temp_s4->unk0 & 1)) {
        incrRRMpriv(arg0->unk18);
        var_v0 = arg0->unk18;
        if (var_v0 != NULL) {
            do {
                temp_a4 = *(var_v0->unk84 + (rrmWindowPrivateIndex * 4));
                temp_a4->unk10 = (s32) (temp_a4->unk10 + 1);
                var_v0 = var_v0->unk18;
            } while (var_v0 != NULL);
        }
        var_s2 = temp_s4->unk5;
        temp_s1->unk20(arg0, 0, 0);
        if (FindFreeID(arg0) == 0) {
            if (var_s2 != 0) {
                StealID(arg0);
            } else {
                FindBestID(arg0);
            }
        }
    } else if (arg0->unk18 == NULL) {
        rrmUnmapWindow(temp_s3, (s32) arg0);
    }
    temp_t9 = temp_s1->unk68;
    temp_s3->unkC4 = temp_t9;
    unksp28 = temp_t9(arg0);
    temp_s3->unkC4 = rrmMapWindow;
    if (var_s2 != 0) {
        if (var_s2 & 2) {
            if (temp_s1->unk4 != 0) {
                FindFreeCID(arg0);
                rrmValidateCID(arg0);
            }
            temp_s1->unk1C(arg0);
        }
        if (var_s2 & 8) {
            temp_s1->unk24(arg0, temp_s4, temp_s1);
        }
    }
    return unksp28;
}

void rrmCreateWindow(void *arg0) {
    void (*temp_t9)(void *);
    void *temp_s8;

    *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
    temp_s8 = arg0->unk10;
    temp_t9 = (*(temp_s8->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk70;
    temp_s8->unkB4 = temp_t9;
    temp_t9();
    temp_s8->unkB4 = rrmCreateWindow;
}

void rrmDestroyWindow(void *arg0) {
    void (*temp_t9)(void *);
    void *temp_s0;
    void *temp_s8;

    temp_s0 = arg0->unk10;
    temp_s8 = *(temp_s0->unk1B4 + (rrmScreenPrivateIndex * 4));
    temp_s8->unk64();
    temp_t9 = temp_s8->unk74;
    temp_s0->unkB8 = temp_t9;
    temp_t9(arg0);
    temp_s0->unkB8 = rrmDestroyWindow;
}

void rrmCopyWindow(void *arg0, s64 arg1) {
    s32 sp28;
    s64 sp18;
    ? (*temp_t9)(s64);
    void *temp_s8;

    temp_s8 = arg0->unk10;
    sp28 = (s32) (arg1 >> 0x20);
    temp_t9 = (*(temp_s8->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk78;
    sp18 = (s64) temp_s8->unkE0;
    temp_s8->unkE0 = temp_t9;
    temp_t9((s64) sp28 << 0x20);
    temp_s8->unkE0 = (? (*)(s64)) sp18;
}

s32 rrmCreateDefColormap(void *arg0, s64 arg1) {
    s64 sp20;
    s16 sp10;
    s16 spE;
    s16 spC;
    s32 sp8;
    void **sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a6_2;
    s16 temp_a7;
    s32 *temp_a6;
    s32 *var_a1;
    s32 *var_a2;
    s32 *var_s5;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_v1;
    s32 var_s0;
    s32 var_s4;
    s32 var_v0;
    void *temp_a2;
    void *temp_s8;
    void *temp_v0;
    void *var_s2;

    sp2 = 0xFFFF;
    sp0 = 0;
    temp_a6 = arg0->unk7C;
    temp_a5 = arg0->unk18;
    var_a2 = temp_a6;
    if (*temp_a6 != temp_a5) {
loop_2:
        temp_a3 = var_a2->unk24;
        var_a2 += 0x24;
        if (temp_a3 != temp_a5) {
            temp_a4 = var_a2->unk24;
            var_a2 += 0x24;
            if (temp_a4 != temp_a5) {
                temp_at = var_a2->unk24;
                var_a2 += 0x24;
                if (temp_at != temp_a5) {
                    temp_v1 = var_a2->unk24;
                    var_a2 += 0x24;
                    if (temp_v1 != temp_a5) {
                        temp_a3_2 = var_a2->unk24;
                        var_a2 += 0x24;
                        if (temp_a3_2 != temp_a5) {
                            temp_a4_2 = var_a2->unk24;
                            var_a2 += 0x24;
                            if (temp_a4_2 != temp_a5) {
                                goto loop_2;
                            }
                        }
                    }
                }
            }
        }
        sp20 = arg1;
    } else {
        sp20 = arg1;
        var_a2 = temp_a6;
    }
    if (saved_reg_gp->unk-72A8(arg0->unk1C, arg0, var_a2, &sp4, (var_a2->unk4 & 1) == 0, 0, temp_a6) != 0) {
        return 0;
    }
    temp_v0 = *sp4;
    temp_a2 = arg0->unk74;
    var_s0 = 1;
    if ((temp_v0->unk4 == 3) && (temp_v0->unkA >= 5) && (temp_a2->unk4C == *(temp_a2->unk30 + (*(temp_a2->unk58 + ((arg0->unk18 - temp_a2->unk50) * 0x14)) * 4)))) {
        switch (sp20) {                             /* irregular */
        default:
            saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x4498, sp20, temp_a2, 4, sp20, 3);
            saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x44C0);
            /* fallthrough */
        case 0:
        case 1:
            var_a1 = saved_reg_gp - 0x3948;
            break;
        case 4:
            var_a1 = saved_reg_gp - 0x3908;
            break;
        case 3:
            var_a1 = saved_reg_gp - 0x3920;
            break;
        case 2:
            var_a1 = saved_reg_gp - 0x3938;
            break;
        }
        temp_a2_2 = *var_a1;
        if (temp_a2_2 >= 0) {
            var_v0 = temp_a2_2;
            var_s5 = var_a1;
            sgiOverrideColorCompare = 1;
            temp_s8 = &sub_5e510000 - 0x7108;
loop_29:
            if (var_v0 < var_s5->unk4) {
                var_s4 = var_v0;
                var_s2 = var_v0 + temp_s8;
loop_35:
                sp8 = var_s4;
                temp_a7 = var_s2->unk200 << 8;
                sp10 = temp_a7;
                temp_a6_2 = var_s2->unk100 << 8;
                spC = var_s2->unk0 << 8;
                spE = temp_a6_2;
                var_s0 = (AllocColor(sp4, &spC, &spE, &sp10, &sp8, 0, temp_a6_2, temp_a7) != 0) ? 0 : var_s0;
                if (var_s2 == ((var_v0 * 0) + temp_s8)) {
                    arg0->unk2C = sp8;
                } else if (var_s2 == ((7 - var_v0) + var_v0 + temp_s8)) {
                    arg0->unk28 = sp8;
                }
                var_s4 += 1;
                var_s2 += 1;
                if (var_s4 < var_s5->unk4) {
                    goto loop_35;
                }
            }
            var_v0 = var_s5->unk8;
            var_s5 += 8;
            if (var_v0 >= 0) {
                goto loop_29;
            }
        }
        sgiOverrideColorCompare = 0;
        /* Duplicate return node #39. Try simplifying control flow for better match */
        arg0->unk13C(sp4);
        return var_s0;
    }
    if (AllocColor(sp4, &sp2, &sp2, &sp2, arg0 + 0x28, 0) != 0) {
        /* Duplicate return node #25. Try simplifying control flow for better match */
        return 0;
    }
    if (AllocColor(sp4, sp, sp, sp, arg0 + 0x2C, 0) == 0) {
        arg0->unk13C(sp4);
        return var_s0;
    }
    return 0;
}

s32 rrmDoubleBufferWindow(void *arg0) {
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_t9)(void *);
    s32 temp_a0;
    s32 var_v0;
    s64 var_ra;
    u16 *var_s0;
    u16 *var_v0_2;
    void *temp_a4;
    void *temp_gp;
    void *temp_s0;
    void *temp_s2;
    void *temp_v0;
    void *var_v0_3;

    var_ra = saved_reg_ra;
    temp_s2 = arg0->unk10;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x17CB20;
    temp_a0 = arg0->unk84;
    var_s0 = *((rrmWindowPrivateIndex * 4) + temp_a0);
    sp0 = (s64) *((temp_gp->unk-30F8 * 4) + temp_a0);
    sp8 = (s64) *(temp_s2->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_s0 != NULL) {
        var_v0 = var_s0->unk0 & 1;
        if (var_v0 != 0) {
            if (var_s0->unk8 != 0) {
                goto block_3;
            }
            return 0x11;
        }
        goto block_6;
    }
    var_v0_2 = temp_gp->unk-758C(0x4C);
    var_ra = sp38;
    temp_s0 = *(arg0->unk10->unk1B4 + (rrmScreenPrivateIndex * 4));
    if (var_v0_2 != NULL) {
        sp10 = (s64) var_v0_2;
        temp_gp->unk-7574(var_v0_2, 0, 0x4C);
        *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = var_v0_2;
        temp_t9 = temp_s0->unk50;
        var_ra = sp38;
        if (temp_t9 != NULL) {
            temp_t9(arg0);
            var_v0_2 = (u16 *) sp10;
            var_ra = sp38;
        } else {
            var_v0_2->unk2 = 0;
        }
    }
    var_s0 = var_v0_2;
    if (var_v0_2 != NULL) {
        var_v0 = *var_s0 & 1;
block_3:
        sp38 = var_ra;
        if (var_v0 != 0) {
            /* Duplicate return node #4. Try simplifying control flow for better match */
            temp_s2->unkC0(arg0, 0);
            return 0;
        }
block_6:
        var_s0->unk8 = 1;
        var_s0->unk1E = 0;
        var_s0->unk1C = 0;
        var_s0->unk0 = 5;
        var_s0->unkC = (s32) temp_s2->unk74->unk68;
        sp38 = var_ra;
        if (incrRRMpriv(arg0->unk18, 1, 5) != 0) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x44F0);
            temp_gp->unk-75A0(var_s0);
            *(arg0->unk84 + (rrmWindowPrivateIndex * 4)) = 0;
            return 0xB;
        }
        if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
            var_v0_3 = arg0->unk18;
            if (var_v0_3 != NULL) {
                do {
                    temp_a4 = *(var_v0_3->unk84 + (rrmWindowPrivateIndex * 4));
                    temp_a4->unk10 = (s32) (temp_a4->unk10 + 1);
                    var_v0_3 = var_v0_3->unk18;
                } while (var_v0_3 != NULL);
            }
        }
        var_s0->unk20 = (s32) ((((sp0->unk4 * 0x24) + sp8)->unkA0 | 2) & ~4);
        temp_v0 = (sp0->unk4 * 0x24) + sp8;
        if ((sp8->unk30 != 0) && (temp_v0->unkB8 != 0)) {
            var_s0->unk24 = (s32) temp_v0->unkB4;
        } else {
            var_s0->unk24 = (s32) temp_v0->unkA4;
        }
        sp0->unk20 = (s32) (sp0->unk20 & ~1);
        nfbSetDidFlags(arg0);
        var_s0->unk14 = -1;
        if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
            if (FindFreeID(arg0) == 0) {
                StealID(arg0);
            }
            sp8->unk28(arg0, var_s0, sp8);
        }
        temp_s2->unkC0(arg0, 0);
        return 0;
    }
    return 0xB;
}

void rrmUndoubleBufferWindow(void) {

}

void nfbSetDidFlags(void *arg0) {
    s64 sp0;
    s32 *temp_a1_3;
    s32 *temp_a1_4;
    s32 *temp_a1_5;
    s32 *temp_a1_6;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_7;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_s0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a5;
    s32 var_s2;
    s32 var_s6;
    s32 var_s6_2;
    s64 temp_a5;
    void *temp_a3;
    void *temp_a4;
    void *temp_s1;
    void *temp_s3;
    void *temp_v0;
    void *var_a0_3;
    void *var_a0_4;
    void *var_a4;
    void *var_s0;

    temp_a1 = saved_reg_gp->unk-30F8 * 4;
    temp_s3 = *(arg0->unk84 + temp_a1);
    temp_a4 = arg0->unk18;
    var_a3 = 0;
    var_s2 = 0;
    temp_a5 = temp_s3->unk20 & 0xC;
    if (temp_a4 != NULL) {
        var_a3 = *(temp_a4->unk84 + temp_a1);
    }
    sp0 = temp_a5;
    rrmUndoubleBufferWindow(arg0, temp_s3, arg0->unk10->unk74, var_a3, temp_a4, temp_a5);
    var_s0 = arg0->unk24;
    if (var_s0 != NULL) {
loop_13:
        var_s6 = 0;
        temp_s1 = *(var_s0->unk84 + (saved_reg_gp->unk-30F8 * 4));
        if ((((u32) (var_s0->unk7C & 0x7FF) >> 0xA) != 0) && (var_s0->unk18 != NULL)) {
            temp_a1_2 = temp_s1->unk20;
            if ((temp_a1_2 & 1) && (temp_a2 = temp_s3->unk20 & 1, (temp_a2 != 0))) {
                if (temp_a1_2 & 2) {
                    if (var_s0->unk1 != 2) {
                        temp_a1_3 = var_s0->unk78;
                        if (temp_a1_3 != NULL) {
                            var_a3_2 = temp_a1_3->unk8;
                        } else {
                            var_a3_2 = saved_reg_gp->unk-7598(var_s0, temp_a1_3, temp_a2)->unk78->unk8;
                        }
                        var_s6 = var_a3_2;
                    }
                    var_a1 = 0;
                    if (var_s0->unk18->unk1 != 2) {
                        temp_a1_4 = var_s0->unk18->unk78;
                        if (temp_a1_4 != NULL) {
                            var_a0 = temp_a1_4->unk8;
                        } else {
                            var_a0 = saved_reg_gp->unk-7598(var_s0->unk18, temp_a1_4)->unk78->unk8;
                        }
                        var_a1 = var_a0;
                    }
                    var_a0_2 = (var_s6 != var_a1) ? 4 : 0;
                } else {
                    temp_a1_5 = var_s0->unk78;
                    if (temp_a1_5 != NULL) {
                        var_s6_2 = temp_a1_5->unk0;
                    } else {
                        var_s6_2 = *saved_reg_gp->unk-7598(var_s0, temp_a1_5, temp_a2)->unk78;
                    }
                    temp_a1_6 = var_s0->unk18->unk78;
                    if (temp_a1_6 != NULL) {
                        var_a3_3 = *temp_a1_6;
                    } else {
                        var_a3_3 = *saved_reg_gp->unk-7598(var_s0->unk18, temp_a1_6)->unk78;
                    }
                    var_a0_2 = (var_s6_2 != var_a3_3) ? 4 : 0;
                }
            } else {
                var_a0_2 = 4;
            }
        } else {
            var_a0_2 = 0;
        }
        temp_v1 = (-5 & temp_s1->unk20) | var_a0_2;
        temp_s1->unk20 = temp_v1;
        var_s0 = var_s0->unk1C;
        var_s2 = (temp_v1 & 8) | (var_s2 | var_a0_2);
        if (var_s0 != NULL) {
            goto loop_13;
        }
    }
    temp_v1_2 = temp_s3->unk20;
    temp_s0 = temp_v1_2 & ~8;
    temp_v1_3 = temp_v1_2 | 8;
    var_a2 = (var_s2 != 0) ? temp_v1_3 : temp_s0;
    temp_s3->unk20 = var_a2;
    if (((var_s2 == 0) ? temp_s0 : temp_v1_3) & 0xC) {
        var_a0_3 = arg0->unk18;
        if (var_a0_3 != NULL) {
            do {
                temp_v0 = *(var_a0_3->unk84 + (saved_reg_gp->unk-30F8 * 4));
                temp_v0->unk20 = (s32) (temp_v0->unk20 | 8);
                var_a0_3 = var_a0_3->unk18;
            } while (var_a0_3 != NULL);
        }
    } else if ((sp0 != 0) && (var_a0_4 = arg0->unk18, (var_a0_4 != NULL))) {
loop_39:
        temp_a1_7 = saved_reg_gp->unk-30F8 * 4;
        temp_a3 = *(var_a0_4->unk84 + temp_a1_7);
        temp_a6 = temp_a3->unk20;
        var_a5 = 0;
        if (temp_a6 & 8) {
            var_a4 = var_a0_4->unk24;
            if (var_a4 != NULL) {
loop_41:
                var_a2 = (*(var_a4->unk84 + temp_a1_7))->unk20 & 0xC;
                if (var_a2 != 0) {
                    var_a5 = 1;
                } else {
                    var_a4 = var_a4->unk1C;
                    if (var_a4 == NULL) {

                    } else {
                        goto loop_41;
                    }
                }
            }
            if (var_a5 == 0) {
                temp_a3->unk20 = (s32) (-9 & temp_a6);
                var_a0_4 = var_a0_4->unk18;
                if (var_a0_4 == NULL) {

                } else {
                    goto loop_39;
                }
            }
        } else {
            saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x4520, temp_a1_7, var_a2, temp_a3);
        }
    }
}

void nfbUnmapTree(void *arg0, s32 arg1, void *arg3, s32 arg4, void *arg5) {
    s32 var_a1;
    s32 var_a4;
    void *temp_a2;
    void *temp_a3;
    void *temp_v0;
    void *var_a2;
    void *var_a2_2;
    void *var_a3;
    void *var_a5;

    var_a1 = arg1;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    if (var_a1 != 0) {
        var_a5 = arg0;
        if (arg0 != NULL) {
            var_a4 = -0xD;
loop_8:
            var_a2 = var_a5;
loop_11:
            temp_v0 = *(var_a2->unk84 + (saved_reg_gp->unk-30F8 * 4));
            temp_v0->unk20 = (s32) (temp_v0->unk20 & ~0xC);
            var_a3 = var_a2->unk24;
            if (var_a3 != NULL) {
block_10:
                var_a2 = var_a3;
                goto loop_11;
            }
            var_a3 = var_a2->unk1C;
            if (var_a3 != NULL) {
                goto block_13;
            }
            if (var_a5 != var_a2) {
loop_5:
                var_a2 = var_a2->unk18;
                var_a3 = var_a2->unk1C;
                if (var_a3 == NULL) {
                    if (var_a5 != var_a2) {
                        goto loop_5;
                    }
                } else {
block_13:
                    if (var_a5 != var_a2) {
                        goto block_10;
                    }
                }
            }
            var_a5 = var_a5->unk1C;
            if (var_a5 != NULL) {
                goto loop_8;
            }
        }
    } else {
        var_a2_2 = arg0;
        var_a4 = -0xD;
loop_24:
        temp_a3 = *(var_a2_2->unk84 + (saved_reg_gp->unk-30F8 * 4));
        var_a1 = temp_a3->unk20 & ~0xC;
        temp_a3->unk20 = var_a1;
        var_a3 = var_a2_2->unk24;
        if (var_a3 != NULL) {
block_23:
            var_a2_2 = var_a3;
            goto loop_24;
        }
        var_a3 = var_a2_2->unk1C;
        if (var_a3 != NULL) {
            goto block_26;
        }
        if (arg0 != var_a2_2) {
loop_16:
            var_a2_2 = var_a2_2->unk18;
            var_a3 = var_a2_2->unk1C;
            if (var_a3 == NULL) {
                if (arg0 != var_a2_2) {
                    goto loop_16;
                }
            } else {
block_26:
                if (arg0 != var_a2_2) {
                    goto block_23;
                }
            }
        }
    }
    temp_a2 = arg0->unk18;
    if (temp_a2 != NULL) {
        nfbSetDidFlags(temp_a2, var_a1, temp_a2, var_a3, var_a4, var_a5);
    }
}

s32 nfbCreateWindow(void *arg0) {
    s64 sp38;
    s64 sp30;
    s32 *temp_a2;
    s32 *temp_a2_2;
    s32 *temp_a2_3;
    s32 *temp_a2_4;
    s32 *temp_a2_5;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_a2;
    s32 var_s4_2;
    s32 var_s4_3;
    s64 var_ra;
    s64 var_s4;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 var_s5;
    u8 temp_a1;
    void *temp_a0;
    void *temp_a0_3;
    void *temp_at;
    void *temp_gp;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2;
    void *temp_s5;

    var_s4 = saved_reg_s4;
    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x17C0FC;
    temp_t9 = arg0->unk84;
    temp_s1 = arg0->unk10;
    temp_s0 = *((temp_gp->unk-30F8 * 4) + temp_t9);
    temp_s2 = temp_s1->unk74;
    temp_s0->unk20 = 1;
    temp_a2 = arg0->unk78;
    temp_s5 = (dbcWindowPrivateIndex * 4) + temp_t9;
    if (temp_a2 != NULL) {
        goto block_1;
    }
    temp_a0 = arg0->unk18;
    if (temp_a0 != NULL) {
        temp_at = *(temp_a0->unk84 + (temp_gp->unk-30F8 * 4));
        var_a2 = temp_at->unk4;
        temp_s0->unk4 = var_a2;
        temp_s0->unk20 = (s32) ((temp_at->unk20 & 2) | 1);
    } else {
block_1:
        if (arg0->unk1 != 2) {
            if (temp_a2 != NULL) {
                var_a0 = temp_a2->unk8;
            } else {
                var_ra = sp30;
                var_a0 = temp_gp->unk-7598(arg0, temp_a2, (s32 *)2)->unk78->unk8;
            }
            var_s4_2 = var_a0;
        } else {
            var_s4_2 = 0;
        }
        if (var_s4_2 == 0) {
            temp_a2_2 = arg0->unk78;
            if (temp_a2_2 != NULL) {
                var_a0_2 = *temp_a2_2;
            } else {
                sp30 = var_ra;
                var_a0_2 = *temp_gp->unk-7598(arg0)->unk78;
            }
            var_a1 = var_a0_2 - temp_s2->unk50;
            temp_s0->unk4 = (s32) *(temp_s2->unk58 + (var_a1 * 0x14));
        } else {
            sp30 = var_ra;
            temp_a0_2 = *temp_gp->unk-7348(var_s4_2, 6)->unk44;
            if (temp_a0_2 >= 0) {
                var_a1 = (temp_s2->unk74 + (temp_a0_2 * 0x1C))->unk10;
                temp_s0->unk4 = var_a1;
            } else {
                temp_a2_3 = arg0->unk78;
                if (temp_a2_3 != NULL) {
                    var_a0_3 = *temp_a2_3;
                } else {
                    var_ra = sp30;
                    var_a0_3 = *temp_gp->unk-7598(arg0)->unk78;
                }
                var_a1 = (var_a0_3 - temp_s2->unk50) * 0x14;
                temp_s0->unk4 = (s32) *(temp_s2->unk58 + var_a1);
            }
        }
        temp_a2_4 = arg0->unk78;
        if (temp_a2_4 != NULL) {
            var_a0_4 = *temp_a2_4;
        } else {
            sp30 = var_ra;
            var_a0_4 = *temp_gp->unk-7598(arg0, (s32 *) var_a1, temp_a2_4, 2)->unk78;
        }
        if (*(temp_s2->unk7C + ((temp_s2->unk58 + ((var_a0_4 - temp_s2->unk50) * 0x14))->unk4 * 0x18)) >= 2) {
            temp_s0->unk20 = (s32) (temp_s0->unk20 | 2);
        }
        temp_a0_3 = arg0->unk18;
        if (temp_a0_3 != NULL) {
            temp_a1 = temp_a0_3->unk1;
            if (temp_a1 != 2) {
                temp_a2_5 = temp_a0_3->unk78;
                if (temp_a2_5 != NULL) {
                    var_a0_5 = temp_a2_5->unk8;
                } else {
                    sp30 = var_ra;
                    var_a0_5 = temp_gp->unk-7598(temp_a0_3, (s32 *) temp_a1, temp_a2_5, 2)->unk78->unk8;
                }
                if (var_s4_2 != var_a0_5) {
                    goto block_20;
                }
                goto block_22;
            }
            if (var_s4_2 == 0) {
                goto block_22;
            }
block_20:
            temp_s0->unk20 = (s32) (temp_s0->unk20 | 0x10);
            var_s4 = sp38;
        } else {
block_22:
            var_s4 = sp38;
            temp_s0->unk20 = (s32) (temp_s0->unk20 & ~0x10);
        }
        sp30 = var_ra;
        var_a2 = temp_s0->unk4;
    }
    temp_s0->unk8 = -1;
    temp_a7 = arg0->unk6C;
    temp_s0->unkC = temp_a7;
    temp_a6 = arg0->unk70;
    temp_s0->unk10 = temp_a6;
    temp_a5 = var_a2 * 4;
    temp_a4 = *(temp_s2->unk30 + temp_a5);
    temp_s0->unk38 = 0;
    temp_s0->unk34 = 0;
    temp_s0->unk30 = 0;
    temp_s0->unk24 = 0;
    temp_s0->unk1C = 0;
    temp_s0->unk18 = temp_a4;
    temp_s5->unk3 = -1;
    temp_s5->unk2 = 0;
    temp_s5->unk1 = 0;
    temp_s5->unk0 = 0;
    temp_a1_2 = temp_s2->unk28;
    temp_v0 = temp_gp->unk-758C(temp_a1_2 * 0xC, temp_a1_2, var_a2, -1, temp_a4, temp_a5, temp_a6, temp_a7);
    temp_s0->unk28 = temp_v0;
    if (temp_v0 == 0) {
        return 0;
    }
    temp_a1_3 = temp_s2->unk28;
    temp_v0_2 = temp_gp->unk-758C(temp_a1_3 * 0xC, temp_a1_3);
    temp_s0->unk2C = temp_v0_2;
    if (temp_v0_2 != 0) {
        var_s5 = 0;
        if (temp_s2->unk28 != 0) {
            sp38 = var_s4;
            var_s4_3 = 0;
            do {
                var_s5 += 1;
                temp_s1->unk154(temp_s0->unk28 + var_s4_3, 0, 0);
                temp_s1->unk154(temp_s0->unk2C + var_s4_3, 0, 0);
                var_s4_3 += 0xC;
            } while (var_s5 < (u32) temp_s2->unk28);
        }
        temp_s2->unkC4(arg0);
        return 1;
    }
    return 0;
}

s32 nfbDestroyWindow(void *arg0) {
    s32 var_s0;
    u32 var_s5;
    void *temp_gp;
    void *temp_s1;
    void *temp_s2;

    temp_s2 = arg0->unk10;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x17BC90;
    var_s5 = 0;
    temp_s1 = *(arg0->unk84 + (temp_gp->unk-30F8 * 4));
    if (temp_s2->unk74->unk28 != 0) {
        var_s0 = 0;
        do {
            var_s5 += 1;
            temp_s2->unk160(temp_s1->unk28 + var_s0);
            temp_s2->unk160(temp_s1->unk2C + var_s0);
            var_s0 += 0xC;
        } while (var_s5 < (u32) temp_s2->unk74->unk28);
    }
    temp_gp->unk-75A0(temp_s1->unk28);
    temp_gp->unk-75A0(temp_s1->unk2C);
    return 1;
}

s32 nfbRealizeWindow(void *arg0, s32 *arg1) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s32 *var_a1;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_ra;
    void *temp_a2;
    void *temp_a3;
    void *temp_gp;
    void *temp_t9;
    void *temp_v0;
    void *var_a0;

    var_a1 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x17BBBC;
    temp_a3 = *(arg0->unk84 + (temp_gp->unk-30F8 * 4));
    if (((u32) (arg0->unk7C & 0x7FF) >> 0xA) != 0) {
        var_a1 = (temp_a3->unk18 * 4) + arg0->unk10->unk74->unk40;
        *var_a1 += 1;
    }
    if (arg0->unk18 != NULL) {
        nfbSetDidFlags(arg0, (s32) var_a1, temp_a3);
        temp_a2 = arg0->unk18;
        temp_ra = temp_gp->unk-30F8 * 4;
        var_a0 = temp_a2;
        if ((*(temp_a2->unk84 + temp_ra))->unk18 != (*(arg0->unk84 + temp_ra))->unk18) {
            if (temp_a2 != NULL) {
                do {
                    temp_v0 = *((temp_gp->unk-30F8 * 4) + var_a0->unk84);
                    temp_v0->unk1C = (s32) (temp_v0->unk1C + 1);
                    var_a0 = var_a0->unk18;
                } while (var_a0 != NULL);
            }
        }
        return 1;
    }
    temp_t9 = arg0->unk10;
    temp_a3->unk24 = (s32) (temp_a3->unk24 | (1 << temp_a3->unk18));
    sp2 = 0;
    sp0 = 0;
    sp4 = temp_t9->unk8;
    sp6 = temp_t9->unkA;
    temp_a3_2 = temp_a3->unk18;
    temp_a2_2 = temp_a3_2 * 0xC;
    temp_t9->unk174(temp_t9->unk74->unk2C + temp_a2_2, sp, temp_a2_2, temp_a3_2);
    temp_gp->unk-7CAC(arg0->unk10);
    return 1;
}

s32 nfbPositionWindow(void) {
    return 1;
}

s32 nfbUnrealizeWindow(void) {
    return 1;
}

s32 nfbChangeWindowAttributes(void *arg0, s32 arg1) {
    s64 sp38;
    s64 sp28;
    s64 sp0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_s2;
    s32 var_v0;
    s64 var_ra;
    void *temp_a0;
    void *temp_gp;
    void *temp_s1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_5;
    void *temp_v0_6;
    void *var_a4;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x17BA24;
    sp0 = (s64) arg0->unk10->unk74;
    temp_s1 = *(arg0->unk84 + (temp_gp->unk-30F8 * 4));
    if (arg0->unk1 != 2) {
        temp_v0 = arg0->unk78;
        if (temp_v0 != NULL) {
            var_a0 = temp_v0->unk8;
        } else {
            var_ra = sp28;
            var_a0 = temp_gp->unk-7598(arg0)->unk78->unk8;
        }
        sp28 = var_ra;
        var_s2 = var_a0;
    } else {
        var_s2 = 0;
    }
    temp_s1->unk8 = -1;
    temp_s1->unkC = (s32) arg0->unk6C;
    temp_s1->unk10 = (s32) arg0->unk70;
    arg0->unk10->unk74->unkC4(arg0);
    if (arg1 & 0x2000) {
        temp_a0 = arg0->unk18;
        if (temp_a0 != NULL) {
            if (temp_a0->unk1 != 2) {
                temp_v0_2 = temp_a0->unk78;
                if (temp_v0_2 != NULL) {
                    var_a0_2 = temp_v0_2->unk8;
                } else {
                    var_a0_2 = temp_gp->unk-7598(temp_a0)->unk78->unk8;
                }
                if (var_s2 != var_a0_2) {
                    goto block_10;
                }
                goto block_19;
            }
            if (var_s2 == 0) {
                goto block_19;
            }
block_10:
            temp_v0_3 = temp_s1->unk20;
            if (!(temp_v0_3 & 0x10)) {
                temp_a1 = temp_v0_3 | 0x10;
                temp_s1->unk20 = temp_a1;
                nfbSetDidFlags(arg0, temp_a1);
            }
        } else {
block_19:
            temp_v0_4 = temp_s1->unk20;
            if (temp_v0_4 & 0x10) {
                temp_s1->unk20 = (s32) (temp_v0_4 & ~0x10);
                nfbSetDidFlags(arg0);
            }
        }
        var_a4 = NULL;
        if (var_s2 == 0) {
            var_v0 = 0;
        } else {
            temp_v0_5 = temp_gp->unk-7348(var_s2, 6);
            temp_a0_2 = *temp_v0_5->unk44;
            var_a4 = temp_v0_5;
            if (temp_a0_2 >= 0) {
                var_v0 = (sp0->unk74 + (temp_a0_2 * 0x1C))->unk10;
            } else {
                temp_v0_6 = arg0->unk78;
                if (temp_v0_6 != NULL) {
                    var_a0_3 = temp_v0_6->unk0;
                } else {
                    sp38 = (s64) var_a4;
                    var_a0_3 = *temp_gp->unk-7598(arg0)->unk78;
                }
                var_v0 = *(sp0->unk58 + ((var_a0_3 - sp0->unk50) * 0x14));
            }
        }
        temp_a1_2 = temp_s1->unk4;
        if (temp_s1->unk20 & 1) {
            if (var_v0 != temp_a1_2) {
                temp_s1->unk4 = var_v0;
                temp_gp->unk-7BFC(arg0, temp_a1_2);
            }
        } else if (var_a4 != NULL) {
            sp0->unkC8(arg0, var_a4);
        }
    }
    return 1;
}

void nfbListInstalledHWColormaps(void *arg0, s32 arg1) {
    s32 var_a5;
    s32 var_a6;
    s32 var_t0;
    void **var_a4;
    void *temp_a7;
    void *temp_a7_2;

    temp_a7 = arg0->unk74;
    var_a6 = temp_a7->unk70;
    var_a5 = 0;
    var_t0 = 0;
    if (var_a6 > 0) {
        var_a4 = temp_a7->unk74;
loop_4:
        temp_a7_2 = *var_a4;
        var_a4 += 0x1C;
        var_a5 += 1;
        if (temp_a7_2 != NULL) {
            *(var_t0 + arg1) = temp_a7_2->unk8;
            var_t0 += 4;
            var_a6 = arg0->unk74->unk70;
        }
        if (var_a5 < var_a6) {
            goto loop_4;
        }
    }
}

void nfbDestroyHWColormap(void *arg0) {
    (M2C_ERROR(/* Read from unset register $t9 */) + 0x17B710)->unk-75A0(arg0->unk44);
    arg0->unk44 = 0;
}

void nfbInstallHWColormap(void *arg0) {
    s64 sp68;
    s64 sp50;
    s32 sp4;
    ? (*temp_t9)(void *);
    s32 *temp_a1;
    s32 *temp_a5;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 temp_a1_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_at_2;
    s32 temp_s1;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4;
    s32 var_at;
    s32 var_s2;
    s32 var_s4;
    s64 var_ra;
    void **temp_s6;
    void *temp_a0;
    void *temp_a3;
    void *temp_at;
    void *temp_s0;
    void *temp_s3;
    void *temp_s7;
    void *var_s6;

    var_ra = saved_reg_ra;
    temp_s7 = arg0->unkC->unk74;
    temp_a1 = arg0->unk44;
    temp_a4 = *temp_a1;
    temp_s1 = temp_s7->unk74;
    var_s6 = temp_s7->unk7C + ((temp_s7->unk58 + ((*arg0->unk0 - temp_s7->unk50) * 0x14))->unk4 * 0x18);
    var_a2 = 0;
    temp_a6 = var_s6->unk8;
    temp_a5 = var_s6->unk4;
    if (temp_a4 >= 0) {
        temp_a1_2 = var_s6->unk0;
        var_a0 = temp_a5;
        if (temp_a1_2 > 0) {
loop_3:
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a0) */);
            var_a0 += 8;
            if (*var_a0 != temp_a4) {
                var_a2 += 1;
                if (var_a2 == temp_a1_2) {
                    var_a4 = sp0;
                } else {
                    goto loop_3;
                }
            } else {
                var_a4 = var_a2;
            }
        } else {
            var_a4 = sp0;
        }
        var_a0_2 = temp_a5;
        if (temp_a1_2 > 0) {
            var_a2_2 = 0;
loop_9:
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($a0) */);
            var_a0_2 += 8;
            if (var_a0_2->unk4 != var_a4) {
                var_a2_2 += 1;
                if (var_a2_2 == temp_a1_2) {
                    goto block_11;
                }
                goto loop_9;
            }
            sp4 = var_a2_2;
            if (temp_a6 != var_a4) {
                var_at = var_a4 * 8;
                goto block_12;
            }
        } else {
block_11:
            var_at = var_a4 * 8;
            if (temp_a6 != var_a4) {
block_12:
                temp_at = var_at + temp_a5;
                ((sp4 * 8) + temp_a5)->unk4 = (s32) temp_at->unk4;
                temp_at->unk4 = (s32) ((var_s6->unk8 * 8) + temp_a5)->unk4;
                ((var_s6->unk8 * 8) + temp_a5)->unk4 = var_a4;
                var_s6->unk8 = var_a4;
            }
        }
    } else {
        temp_v0 = ((temp_a6 * 8) + temp_a5)->unk4;
        var_s6->unk8 = temp_v0;
        temp_at_2 = *((temp_v0 * 8) + temp_a5);
        *temp_a1 = temp_at_2;
        temp_s0 = (temp_at_2 * 0x1C) + temp_s1;
        temp_a3 = temp_s0->unk0;
        unksp20 = (s64) temp_a3;
        if (temp_a3 != NULL) {
            WalkTree(arg0->unkC, TellLostMap, unksp20 + 8, temp_a3, temp_a4, temp_a5, temp_a6);
            *unksp20->unk44 = -1;
            var_ra = sp50;
        }
        var_s4 = 0;
        if (temp_s0->unk4 > 0) {
            sp68 = (s64) var_s6;
            sp50 = var_ra;
            var_s2 = 0;
loop_24:
            temp_s6 = (*(temp_s0->unk8 + var_s2) * 0x1C) + temp_s1;
            temp_s3 = *temp_s6;
            var_s4 += 1;
            var_s2 += 4;
            if (temp_s3 != NULL) {
                WalkTree(arg0->unkC, TellLostMap, temp_s3 + 8);
                *temp_s3->unk44 = -1;
                *temp_s6 = NULL;
                temp_t9 = (temp_s7->unk7C + ((temp_s7->unk58 + ((*temp_s3->unk0 - temp_s7->unk50) * 0x14))->unk4 * 0x18))->unk14;
                if (temp_t9 != NULL) {
                    temp_t9(temp_s3);
                }
            }
            var_ra = sp50;
            if (var_s4 < temp_s0->unk4) {
                goto loop_24;
            }
            var_s6 = (void *) sp68;
        }
        temp_a0 = arg0->unkC;
        sp50 = var_ra;
        if ((*(temp_a0->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk30 != 0) {
            sp50 = var_ra;
            if (temp_s0->unk14 == 0) {
                SetReservedID(temp_a0, temp_s0->unk10);
                temp_s0->unk14 = 1;
            }
        }
        var_s6->unkC(arg0);
        temp_s0->unk0 = arg0;
        WalkTree(arg0->unkC, nfbTellGainedMap, arg0);
    }
}

void nfbTiledFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    void *spC;
    s32 sp4;
    ? (*temp_s4)(s16 *, ?, s32, s32, u16, u16, s32, u8);
    s16 temp_t0;
    s16 temp_t2;
    s32 *var_s5;
    s32 temp_s7_2;
    u8 temp_s2;
    void *temp_gp;
    void *temp_s3;
    void *temp_s7;
    void *var_s6;

    temp_s3 = arg0->unk20;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x17A824;
    temp_s7 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s2 = temp_s7->unk48;
    temp_s7_2 = temp_s7->unk4C;
    temp_s4 = (**(arg1->unk84 + (temp_gp->unk-30F8 * 4)))->unk1C;
    if (arg4 > 0) {
        var_s5 = arg3;
        var_s6 = arg2;
        do {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s6) */);
            temp_t2 = var_s6->unk0;
            sp10 = temp_t2;
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s5) */);
            sp14 = *var_s5 + temp_t2;
            temp_t0 = var_s6->unk2;
            sp12 = temp_t0;
            sp16 = temp_t0 + 1;
            var_s5 += 4;
            var_s6 += 4;
            spC = arg1;
            sp4 = temp_s7_2;
            temp_s4(&sp10, 1, temp_s3->unk20, temp_s3->unk1C, temp_s3->unkC, temp_s3->unkE, *(arg0->unk4C + (temp_gp->unk-30F4 * 4)) + 0x58, temp_s2);
        } while (var_s5 != ((arg4 * 4) + arg3));
    }
}

/*
Decompilation failure in function nfbCreateStereoGC:

Unable to determine jump table for jr instruction at rrm.s line 10328.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void nfbSolidPolyGlyphBlt(void *arg0, void *arg1, s32 arg2, s32 arg3, s64 arg4, s64 arg5, ? arg_sp0) {
    s16 temp_a3;
    s16 temp_s2_2;
    s16 temp_s2_3;
    s16 temp_s2_4;
    s16 temp_s3_2;
    s16 temp_s3_3;
    s16 temp_s6;
    s16 temp_s6_2;
    s16 temp_s7_2;
    s16 temp_s7_3;
    s16 temp_t0_3;
    s16 temp_t1;
    s16 temp_t2_2;
    s16 temp_t3_2;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s32 temp_a0;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_s0;
    s32 temp_s3;
    s32 temp_s7;
    s32 temp_t0_5;
    s32 temp_t0_6;
    s32 temp_t0_7;
    s32 temp_t0_8;
    s32 temp_t0_9;
    s32 temp_v0_2;
    s32 temp_v1_4;
    s32 var_a0;
    s32 var_a4;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a0_2;
    s64 temp_a3_2;
    s64 temp_a5;
    s64 temp_a5_3;
    s64 temp_a7_2;
    s64 temp_at_3;
    s64 temp_sp;
    s64 temp_t0;
    s64 temp_t0_10;
    s64 temp_t0_2;
    s64 temp_t0_4;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_v1_5;
    s64 var_a1;
    s64 var_a2;
    s64 var_s0;
    s64 var_s1;
    s64 var_s6;
    u8 temp_s1;
    void *temp_a1;
    void *temp_a5_2;
    void *temp_gp;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v1;
    void *var_a6;

    arg_sp0.unk-D0 = (s64) saved_reg_fp;
    arg_sp0.unk-90 = arg5;
    arg_sp0.unk-88 = arg4;
    arg_sp0.unk-A0 = (s64) saved_reg_s0;
    arg_sp0.unk-E0 = (s64) saved_reg_s1;
    arg_sp0.unk-A8 = (s64) saved_reg_s6;
    arg_sp0.unk-B0 = (s64) saved_reg_s4;
    arg_sp0.unk-D8 = (s64) saved_reg_s5;
    arg_sp0.unk-C0 = (s64) saved_reg_s7;
    temp_v0 = arg1->unk2C;
    arg_sp0.unk-C8 = (s64) saved_reg_s2;
    arg_sp0.unk-E8 = (s64) saved_reg_gp;
    arg_sp0.unk-B8 = (s64) saved_reg_s3;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x171644;
    var_a6 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    temp_a7 = var_a6->unk8;
    temp_s2 = **(arg0->unk84 + (temp_gp->unk-30F8 * 4));
    temp_s1 = var_a6->unk48;
    temp_s7 = arg0->unkA + arg3;
    temp_s3 = var_a6->unk40;
    var_s5 = arg0->unk8 + arg2;
    temp_s0 = var_a6->unk4C;
    if (((u32) (temp_v0->unkC & 0x1FFF) >> 0xC) != 0) {
        arg_sp0.unk-50 = (s16) (temp_v0->unk20 + var_s5);
        arg_sp0.unk-4C = (s16) (arg1->unk2C->unk16 + var_s5 + (temp_v0->unk24 * arg_sp0.unk-88));
        arg_sp0.unk-4E = (s16) (temp_s7 - arg1->unk2C->unk1A);
        arg_sp0.unk-160 = (s64) saved_reg_ra;
        arg_sp0.unk-98 = (s64) temp_a7;
        arg_sp0.unk-4A = (s16) (arg1->unk2C->unk1C + temp_s7);
    } else {
        arg_sp0.unk-168 = (s64) var_a6;
        arg_sp0.unk-98 = (s64) temp_a7;
        arg_sp0.unk-160 = (s64) saved_reg_ra;
        temp_gp->unk-72D8(temp_v0, arg_sp0.unk-90, arg_sp0.unk-88, &arg_sp0 - 0x70, var_a6, temp_a7);
        arg_sp0.unk-4A = (s16) (arg_sp0.unk-60 + temp_s7);
        arg_sp0.unk-4C = (s16) (arg_sp0.unk-54 + var_s5);
        arg_sp0.unk-50 = (s16) (arg_sp0.unk-58 + var_s5);
        arg_sp0.unk-4E = (s16) (temp_s7 - arg_sp0.unk-64);
        var_a6 = (void *) arg_sp0.unk-168;
    }
    temp_v0_2 = arg1->unk0->unk17C(var_a6->unk8, &arg_sp0 - 0x50);
    var_a0 = var_s5 & 0x1F;
    switch (temp_v0_2) {                            /* irregular */
    case 0:
        return;
    case 2:
        temp_a6 = arg_sp0.unk-88 << 5;
        var_a2 = arg_sp0.unk-90;
        temp_sp = sp - ((temp_a6 + 0xF) & ~0xF);
        arg_sp0.unk-F8 = temp_sp;
        temp_a5 = arg_sp0.unk-F8;
        if (temp_sp != 0) {
            var_a4 = var_s5;
            var_a1 = temp_a5;
            if (arg_sp0.unk-88 != 0) {
loop_16:
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a2) */);
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a1) */);
                temp_v1 = *var_a2;
                var_a1->unk0 = var_a4;
                var_a1->unk4 = var_a0;
                var_a1->unk8 = (s32) (temp_v1->unk0 + var_a4);
                var_a1->unkC = (s32) (temp_v1->unk2 + var_a4);
                var_a1->unk10 = (s32) (temp_s7 - temp_v1->unk6);
                var_a1->unk14 = (s32) (temp_v1->unk8 + temp_s7);
                var_a1->unk1C = (s32) ((((s32) ((temp_v1->unk2 - temp_v1->unk0) + 7) >> 3) + 1) & ~1);
                temp_v1_2 = temp_v1->unk4;
                temp_a0 = temp_v1_2 + var_a0;
                var_a1 += 0x20;
                var_a2 += 4;
                var_a4 += temp_v1_2;
                if (temp_a0 < 0x20) {
                    var_a0 = (temp_a0 < 0) ? (temp_a0 + 0x20) : temp_a0;
                } else {
                    var_a0 = temp_a0 & 0x1F;
                }
                if (var_a1 != (temp_a5 + temp_a6)) {
                    goto loop_16;
                }
            }
            temp_t0 = arg_sp0.unk-98;
            temp_a1 = temp_t0->unk8;
            temp_a0_2 = (temp_a1 == NULL) ? temp_t0 : (temp_a1 + 8);
            if (temp_a1 != NULL) {
                var_v0 = temp_a1->unk4;
            } else {
                var_v0 = 1;
            }
            if (var_v0 > 0) {
                arg_sp0.unk-120 = (s64) temp_s0;
                arg_sp0.unk-128 = (s64) temp_s1;
                arg_sp0.unk-130 = (s64) temp_s2;
                arg_sp0.unk-138 = (s64) temp_s3;
                arg_sp0.unk-140 = (s64) arg0;
                arg_sp0.unk-118 = temp_a0_2;
                arg_sp0.unk-108 = (s64) (temp_a0_2 + (var_v0 * 8));
                arg_sp0.unk-F0 = (s64) (arg_sp0.unk-88 * 4);
loop_23:
                temp_t0_2 = arg_sp0.unk-118;
                temp_a3 = temp_t0_2->unk6;
                temp_v1_3 = temp_t0_2->unk2;
                temp_s2_2 = temp_t0_2->unk4;
                temp_t0_3 = temp_t0_2->unk0;
                temp_s6 = arg_sp0.unk-4A;
                temp_s7_2 = arg_sp0.unk-4E;
                temp_s3_2 = arg_sp0.unk-4C;
                temp_s6_2 = (temp_s6 >= temp_a3) ? temp_a3 : temp_s6;
                temp_s7_3 = (temp_v1_3 >= temp_s7_2) ? temp_v1_3 : temp_s7_2;
                temp_s3_3 = (temp_s3_2 >= temp_s2_2) ? temp_s2_2 : temp_s3_2;
                temp_s2_3 = arg_sp0.unk-50;
                var_v0_2 = 1;
                temp_s2_4 = (temp_t0_3 >= temp_s2_3) ? temp_t0_3 : temp_s2_3;
                if (arg_sp0.unk-88 != 0) {
                    if ((temp_s2_4 < temp_s3_3) && (temp_s7_3 < temp_s6_2)) {
                        var_v0_2 = 0;
                    }
                    if (var_v0_2 == 0) {
                        var_s0 = arg_sp0.unk-F8;
                        temp_t0_4 = arg_sp0.unk-90;
                        arg_sp0.unk-158 = (s64) temp_s7_3;
                        arg_sp0.unk-150 = (s64) temp_s6_2;
                        var_s1 = temp_t0_4;
                        arg_sp0.unk-148 = (s64) (arg_sp0.unk-F0 + temp_t0_4);
loop_30:
                        temp_at = var_s0->unk8;
                        temp_t2 = (s64) ((s64) temp_at << 0x30) >> 0x30;
                        temp_v0_3 = *var_s1;
                        temp_at_2 = temp_at < temp_s2_4;
                        arg_sp0.unk-80 = (s16) ((temp_at_2 != 0) ? temp_s2_4 : (s16) temp_t2);
                        temp_t0_5 = var_s0->unkC;
                        temp_t2_2 = (temp_at_2 != 0) ? temp_s2_4 : (s16) temp_t2;
                        temp_t0_6 = temp_s3_3 < temp_t0_5;
                        temp_a3_2 = (s64) ((s64) temp_t0_5 << 0x30) >> 0x30;
                        var_s1 += 4;
                        arg_sp0.unk-7C = (s16) ((temp_t0_6 != 0) ? temp_s3_3 : (s16) temp_a3_2);
                        if ((((temp_t0_6 != 0) ? temp_s3_3 : (s16) temp_a3_2) - temp_t2_2) > 0) {
                            temp_t0_7 = var_s0->unk10;
                            temp_t3 = (s64) ((s64) temp_t0_7 << 0x30) >> 0x30;
                            temp_t0_8 = temp_t0_7 < arg_sp0.unk-158;
                            arg_sp0.unk-7E = (s16) ((temp_t0_8 != 0) ? temp_s7_3 : (s16) temp_t3);
                            temp_v1_4 = var_s0->unk14;
                            temp_t3_2 = (temp_t0_8 != 0) ? temp_s7_3 : (s16) temp_t3;
                            temp_a3_3 = arg_sp0.unk-150 < temp_v1_4;
                            temp_at_3 = (s64) ((s64) temp_v1_4 << 0x30) >> 0x30;
                            arg_sp0.unk-7A = (s16) ((temp_a3_3 != 0) ? temp_s6_2 : (s16) temp_at_3);
                            if ((((temp_a3_3 != 0) ? temp_s6_2 : (s16) temp_at_3) - temp_t3_2) > 0) {
                                temp_a3_4 = var_s0->unk1C;
                                temp_t0_9 = temp_t2_2 - var_s0->unk8;
                                arg_sp0.unk-130->unkC(&arg_sp0 - 0x80, temp_v0_3->unkC + ((temp_t3_2 - var_s0->unk10) * temp_a3_4) + (temp_t0_9 >> 3), temp_t0_9 & 7, temp_a3_4, arg_sp0.unk-138, arg_sp0.unk-128, arg_sp0.unk-120, arg_sp0.unk-140);
                            }
                        }
                        var_s0 += 0x20;
                        if (var_s1 != arg_sp0.unk-148) {
                            goto loop_30;
                        }
                    }
                }
                temp_t0_10 = arg_sp0.unk-118 + 8;
                arg_sp0.unk-118 = temp_t0_10;
                if (temp_t0_10 != arg_sp0.unk-108) {
                    goto loop_23;
                }
            }
        } else {
            return;
        }
        break;
    case 1:
        if (arg_sp0.unk-88 != 0) {
            temp_v1_5 = arg_sp0.unk-90;
            var_s6 = temp_v1_5;
            arg_sp0.unk-100 = (s64) ((arg_sp0.unk-88 * 4) + temp_v1_5);
            do {
                temp_a5_2 = *var_s6;
                temp_t1 = temp_a5_2->unk0;
                temp_a3_5 = temp_a5_2->unk2 - temp_t1;
                temp_a7_2 = (s64) ((temp_t1 + var_s5) << 0x30) >> 0x30;
                arg_sp0.unk-78 = (s16) temp_a7_2;
                arg_sp0.unk-74 = (s16) (temp_a3_5 + temp_a7_2);
                arg_sp0.unk-110 = (s64) temp_a5_2;
                temp_a5_3 = (s64) ((temp_s7 - temp_a5_2->unk6) << 0x30) >> 0x30;
                arg_sp0.unk-76 = (s16) temp_a5_3;
                var_s6 += 4;
                arg_sp0.unk-72 = (s16) (temp_a5_2->unk6 + temp_a5_2->unk8 + temp_a5_3);
                temp_s2->unkC(&arg_sp0 - 0x78, temp_a5_2->unkC, 0, (((s32) (temp_a3_5 + 7) >> 3) + 1) & ~1, temp_s3, temp_s1, temp_s0, arg0);
                var_s5 += arg_sp0.unk-110->unk4;
            } while (var_s6 != arg_sp0.unk-100);
        }
        break;
    }
}

s32 nfbUnrealizeCursor(s32 *arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_gp;
    void *temp_s0;

    temp_s0 = ((*arg0 * 4) + arg1)->unk14;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x171070;
    if (temp_s0 != NULL) {
        temp_a0 = temp_s0->unk8;
        sp0 = arg1;
        sp8 = (s64) arg0;
        if (temp_a0 != NULL) {
            temp_gp->unk-75A0(temp_a0, arg0);
        } else {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x4930, arg0);
        }
        temp_a0_2 = temp_s0->unk4;
        if (temp_a0_2 != NULL) {
            temp_gp->unk-75A0(temp_a0_2);
        }
        temp_gp->unk-75A0(temp_s0);
        ((*sp8 * 4) + sp0)->unk14 = 0;
        return 1;
    }
    return 1;
}

void nfbMoveWindow(void *arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp78;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *spC;
    void *sp8;
    s16 sp2;
    s16 sp0;
    ? (*temp_t9)(void *, void *, void **, s16, ?);
    ? (*temp_t9_2)(s32, ?, s64);
    s16 temp_a5;
    s16 temp_at_2;
    s16 temp_v1;
    s32 temp_a0;
    s32 temp_at;
    s32 var_a6;
    s32 var_s5_2;
    s64 temp_s3;
    s64 temp_s8;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 var_s3;
    s64 var_s5;
    u32 temp_a1;
    u32 var_s4;
    u32 var_s4_2;
    u32 var_s7;
    void *temp_a0_2;
    void *temp_gp;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2;
    void *temp_v0_2;
    void *var_s1;

    temp_at = arg0->unk18;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x16F66C;
    var_s5 = arg2;
    sp40 = (s64) temp_at;
    sp78 = arg4;
    var_s7 = (u32) (arg0->unk7C & 0x7FF) >> 0xA;
    temp_s1 = *(arg0->unk84 + (temp_gp->unk-30F8 * 4));
    if (temp_at != 0) {
        sp18 = arg3;
        sp20 = 0;
        temp_at_2 = arg0->unk8;
        temp_v1 = arg0->unkA;
        temp_a5 = arg0->unk64;
        sp28 = (s64) temp_a5;
        sp38 = (s64) temp_v1;
        sp2 = temp_v1;
        sp30 = (s64) temp_at_2;
        temp_s0 = arg0->unk10;
        sp0 = temp_at_2;
        temp_s2 = temp_s0->unk74;
        if (var_s7 != 0) {
            temp_s0->unk1D4(arg0, arg0, &sp8, temp_a5, 0);
            if (temp_s1->unk1C != 0) {
                temp_a1 = temp_s2->unk28;
                temp_v0 = temp_gp->unk-758C(temp_a1 * 0xC, temp_a1);
                if (temp_v0 != 0) {
                    spB8 = var_s5;
                    spB0 = (s64) var_s7;
                    spA8 = temp_v0;
                    spC = (void *) temp_v0;
                    var_s4 = 0;
                    if (temp_s2->unk28 != 0) {
                        var_s5_2 = 0;
                        var_s3 = temp_v0;
loop_31:
                        temp_s0->unk154(var_s3, 0, 0);
                        temp_a0 = 1 << var_s4;
                        if (temp_s1->unk18 != var_s4) {
                            if (!(temp_s1->unk24 & temp_a0)) {
                                if (temp_s2->unk48 & temp_a0) {
                                    temp_s0->unk158(var_s3, arg0 + 0x38);
                                }
                            } else {
                                temp_s0->unk158(var_s3, temp_s1->unk2C + var_s5_2);
                            }
                        } else {
                            temp_s0->unk158(var_s3, arg0 + 0x38);
                        }
                        var_s4 += 1;
                        var_s3 += 0xC;
                        var_s5_2 += 0xC;
                        if (var_s4 < (u32) temp_s2->unk28) {
                            goto loop_31;
                        }
                        var_s7 = (u32) spB0;
                        var_s5 = spB8;
                    }
                    goto block_7;
                }
                temp_gp->unk-74EC(&sub_5e4f0000 + 0x4548);
                return;
            }
            temp_v0_2 = temp_s0->unk150(0, 1);
            spC = temp_v0_2;
            temp_s0->unk158((s64) temp_v0_2, arg0 + 0x38);
            goto block_7;
        }
block_7:
        arg0->unk62 = (s16) (var_s5 + sp28);
        arg0->unk60 = (s16) (arg1 + sp28);
        temp_s8 = (s64) ((sp40->unk8 + arg1 + sp28) << 0x30) >> 0x30;
        arg0->unk8 = (s16) temp_s8;
        temp_s3 = (s64) ((sp40->unkA + var_s5 + sp28) << 0x30) >> 0x30;
        arg0->unkA = (s16) temp_s3;
        temp_gp->unk-7474(arg0);
        temp_gp->unk-7470(arg0);
        temp_s0->unkBC(arg0, temp_s8, temp_s3);
        temp_v0_3 = temp_gp->unk-72A0(arg0, sp18);
        sp10 = temp_v0_3;
        temp_gp->unk-729C(arg0, temp_s8 - sp30, temp_s3 - sp38, 0, 0);
        if (var_s7 != 0) {
            temp_t9 = temp_s0->unk1D4;
            if (arg0 == sp8) {
                temp_t9(arg0, (void *) temp_v0_3, NULL);
            } else {
                temp_t9(arg0, sp8, NULL);
            }
            if (arg0->unk10->unk25 == 0x40) {
                sp20 = temp_s0->unk1D8(sp8, temp_v0_3);
            }
            temp_s0->unkCC(sp8->unk18, 0, sp78);
            temp_s0->unkE0(arg0, (s64) *sp << 0x20, spC);
            if (temp_s1->unk1C != 0) {
                var_s4_2 = 0;
                if (temp_s2->unk28 != 0) {
                    var_s1 = spC;
loop_17:
                    temp_a0_2 = var_s1->unk8;
                    var_s4_2 += 1;
                    if (temp_a0_2 != NULL) {
                        var_a6 = var_s4_2 < temp_s2->unk28;
                        if (temp_a0_2->unk4 != 0) {
                            goto block_15;
                        }
                    } else {
block_15:
                        temp_s0->unk160(var_s1, temp_s2->unk28);
                        var_a6 = var_s4_2 < (u32) temp_s2->unk28;
                    }
                    var_s1 += 0xC;
                    if (var_a6 != 0) {
                        goto loop_17;
                    }
                }
                temp_gp->unk-75A0(spC, temp_s2->unk28);
            } else {
                temp_s0->unk15C(spC);
            }
            temp_s0->unk1EC(sp8->unk18);
            if (sp20 != 0) {
                temp_s0->unk1DC(sp8, sp10);
            }
            temp_t9_2 = temp_s0->unkD0;
            if (temp_t9_2 != NULL) {
                temp_t9_2(sp8->unk18, 0, sp78);
            }
        }
        if (((u32) (arg0->unk7C & 0xFFF) >> 0xB) != 0) {
            temp_gp->unk-7298();
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x28, 0x2c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x70, 0x74], gap at: 0x38. */
void nfbGetImage(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, s64 arg4, s32 arg5, s32 arg6, s64 arg7) {
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp10;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_t8_2;
    s32 *temp_t2_2;
    s32 *var_a6;
    s32 *var_a7_4;
    s32 *var_v1_6;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_at_11;
    s32 temp_at_12;
    s32 temp_at_4;
    s32 temp_at_5;
    s32 temp_at_7;
    s32 temp_at_8;
    s32 temp_at_9;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t8_5;
    s32 temp_t8_6;
    s32 temp_t8_7;
    s32 temp_t8_8;
    s32 temp_t8_9;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_10;
    s32 temp_v1_11;
    s32 temp_v1_12;
    s32 temp_v1_14;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4_3;
    s32 var_a5_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_ra_5;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_3;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a0_6;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_ra;
    s64 temp_ra_2;
    s64 temp_s2;
    s64 temp_s2_2;
    s64 temp_t9_2;
    s64 temp_v0_10;
    s64 temp_v0_13;
    s64 temp_v0_6;
    s64 var_a1;
    s64 var_a1_2;
    s64 var_a1_3;
    s64 var_ra;
    s64 var_s0;
    s64 var_s2;
    s64 var_s2_2;
    s64 var_s2_3;
    s64 var_s2_4;
    u16 *var_a2_2;
    u16 *var_ra_3;
    u16 *var_t1_2;
    u16 temp_at_6;
    u16 var_a4;
    u16 var_at_2;
    u32 *var_a5;
    u32 *var_ra_2;
    u32 *var_t1;
    u32 temp_at;
    u32 temp_at_2;
    u32 temp_at_3;
    u32 var_a5_2;
    u32 var_at;
    u8 *var_a2_4;
    u8 *var_ra_4;
    u8 *var_t1_3;
    u8 temp_at_10;
    u8 temp_v1;
    u8 temp_v1_13;
    u8 temp_v1_2;
    u8 temp_v1_3;
    u8 var_a4_2;
    u8 var_at_3;
    void *temp_gp;
    void *temp_t8;
    void *temp_v0_2;

    var_ra = saved_reg_ra;
    sp88 = (s64) arg0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x14EB54;
    if (*arg0 != 0) {
        temp_v1 = sp88->unk3;
        switch (temp_v1) {                          /* irregular */
        default:
            temp_gp->unk-755C(&sub_5e500000 + 0x5D68);
            var_ra = unksp38;
            goto block_6;
        case 32:
            temp_gp->unk-7A60(sp88, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return;
        case 1:
            temp_gp->unk-7860(sp88, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return;
        case 8:
            temp_gp->unk-7B90(sp88, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return;
        case 16:
            temp_gp->unk-796C(sp88, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return;
        }
    } else {
block_6:
        temp_v1_2 = sp88->unk2;
        temp_t8 = (temp_v1_2 * 0xC) + &PixmapWidthPaddingInfo;
        sp80 = (s64) (**(sp88->unk84 + (temp_gp->unk-30F8 * 4)))->unk14;
        temp_a2 = ((s32) (temp_t8->unk0 + arg3) >> temp_t8->unk4) << temp_t8->unk8;
        unksp38 = var_ra;
        temp_s7 = temp_a2;
        if (arg5 != 2) {
            spA0 = arg4;
            temp_v0 = temp_gp->unk-727C(arg6);
            temp_s8 = arg3 + 0x1F;
            unksp68 = arg7;
            temp_ra = (s64) ((sp88->unk8 + arg1) << 0x30) >> 0x30;
            sp0 = (s16) temp_ra;
            sp4 = arg3 + temp_ra;
            sp2 = sp88->unkA + arg2;
            temp_gp->unk-7574(arg7, 0, (temp_s8 >> 5) * 4 * spA0);
            M2C_TRAP_IF(temp_s7 == 0);
            var_s6 = 0x2710 / temp_s7;
            var_s0 = unksp68;
            var_s2 = spA0;
            if (spA0 != 0) {
                sp98 = (s64) (arg3 >> 5);
                sp90 = arg3 >= 1;
                temp_v0_2 = &sub_5e510000 + 0x67D0;
                sp78 = (s64) ((arg3 * 4) + temp_v0_2);
                temp_s1 = temp_v0 - 1;
                sp8 = (s64) ((arg3 * 2) + temp_v0_2);
                sp10 = (s64) (arg3 + temp_v0_2);
loop_11:
                temp_t9 = var_s6 < var_s2;
                temp_s2 = var_s2 - var_s6;
                var_s6 = (s32) ((temp_t9 == 0) ? var_s2 : (s64) var_s6);
                temp_s2_2 = (temp_t9 == 0) ? 0 : temp_s2;
                temp_t8_2 = sp2 + var_s6;
                sp6 = temp_t8_2;
                ((? (*)(void *, void *, s32, s64)) sp80)(sp, &sub_5e510000 + 0x67D0, temp_s7, sp88);
                sp2 = temp_t8_2;
                temp_v1_3 = sp88->unk3;
                var_s3 = 0;
                var_ra_2 = &sub_5e510000 + 0x67D0;
                if (temp_v1_3 != 8) {
                    if (temp_v1_3 != 0x10) {
                        spA8 = temp_s2_2;
                        if (var_s6 > 0) {
                            var_s2_2 = sp78;
loop_19:
                            var_v1 = 0x1F;
                            if (arg3 > 0) {
                                var_a5 = var_ra_2;
                                if (arg3 & 1) {
                                    temp_v0_3 = 0x1E ^ -1;
                                    *var_s0 = (s32) (*var_s0 | ((((u32) *var_a5 >> temp_s1) & 1) << 0x1F));
                                    var_s0 = (temp_v0_3 == 0) ? (var_s0 + 4) : var_s0;
                                    var_a5 += 4;
                                    var_v1 = (temp_v0_3 == 0) ? 0x1F : 0x1E;
                                }
                                var_t0 = var_v1;
                                temp_t2 = arg3 >> 1;
                                var_t1 = var_a5;
                                temp_a5 = var_s2_2 - 8;
                                var_a1 = var_s0;
                                if (temp_t2 != 0) {
                                    temp_a7 = var_t0 - 1;
                                    if (temp_t2 >= 2) {
                                        var_a2 = temp_a7 ^ -1;
                                        var_a7 = (var_a2 == 0) ? 0x1F : temp_a7;
                                        var_v0 = *var_a1;
                                        var_v1_2 = var_a7 - 1;
                                        var_at = var_t1->unk0;
                                        var_t2 = var_v1_2 ^ -1;
loop_25:
                                        temp_a6 = (var_t2 != 0) ? var_v1_2 : 0x1F;
                                        *var_a1 = (s32) (var_v0 | (((var_at >> temp_s1) & 1) << var_t0));
                                        temp_a0 = (var_a2 != 0) ? var_a1 : (var_a1 + 4);
                                        temp_at = (u32) var_t1->unk4 >> temp_s1;
                                        var_t1 += 8;
                                        temp_v1_4 = temp_a6 - 1;
                                        temp_v0_4 = *temp_a0;
                                        var_a2 = temp_v1_4 ^ -1;
                                        *temp_a0 = (s32) (temp_v0_4 | ((temp_at & 1) << var_a7));
                                        var_a7 = (var_a2 != 0) ? temp_v1_4 : 0x1F;
                                        temp_v1_5 = var_a7 - 1;
                                        var_a1 = (var_t2 != 0) ? temp_a0 : (temp_a0 + 4);
                                        temp_at_2 = var_t1->unk0;
                                        var_t2 = temp_v1_5 ^ -1;
                                        var_v0 = *var_a1;
                                        if (var_t1 != temp_a5) {
                                            var_t0 = (var_t2 != 0) ? temp_v1_5 : 0x1F;
                                            *var_a1 = (s32) (var_v0 | (((temp_at_2 >> temp_s1) & 1) << temp_a6));
                                            temp_a0_2 = (var_a2 != 0) ? var_a1 : (var_a1 + 4);
                                            temp_at_3 = (u32) var_t1->unk4 >> temp_s1;
                                            var_t1 += 8;
                                            temp_v1_6 = var_t0 - 1;
                                            temp_v0_5 = *temp_a0_2;
                                            var_a2 = temp_v1_6 ^ -1;
                                            *temp_a0_2 = (s32) (temp_v0_5 | ((temp_at_3 & 1) << var_a7));
                                            var_a7 = (var_a2 != 0) ? temp_v1_6 : 0x1F;
                                            var_v1_2 = var_a7 - 1;
                                            var_a1 = (var_t2 != 0) ? temp_a0_2 : (temp_a0_2 + 4);
                                            var_at = *var_t1;
                                            var_t2 = var_v1_2 ^ -1;
                                            var_v0 = *var_a1;
                                            if (var_t1 == temp_a5) {
                                                var_a5_2 = var_at;
                                            } else {
                                                goto loop_25;
                                            }
                                        } else {
                                            var_a5_2 = temp_at_2;
                                            var_t0 = temp_a6;
                                        }
                                        *var_a1 = (s32) (var_v0 | (((var_a5_2 >> temp_s1) & 1) << var_t0));
                                        temp_a1 = (var_a2 == 0) ? (var_a1 + 4) : var_a1;
                                        *temp_a1 = (s32) (*temp_a1 | ((((u32) var_t1->unk4 >> temp_s1) & 1) << var_a7));
                                        var_s0 = (var_t2 == 0) ? (temp_a1 + 4) : temp_a1;
                                    } else {
                                        *var_a1 = (s32) (*var_a1 | ((((u32) var_t1->unk0 >> temp_s1) & 1) << var_t0));
                                        temp_t8_3 = var_t0 - 1;
                                        temp_at_4 = temp_t8_3 ^ -1;
                                        temp_t8_4 = (temp_at_4 == 0) ? 0x1F : temp_t8_3;
                                        temp_v0_6 = (temp_at_4 != 0) ? var_a1 : (var_a1 + 4);
                                        *temp_v0_6 = (s32) (*temp_v0_6 | ((((u32) var_t1->unk4 >> temp_s1) & 1) << temp_t8_4));
                                        var_s0 = (((temp_t8_4 - 1) ^ -1) != 0) ? temp_v0_6 : (temp_v0_6 + 4);
                                    }
                                }
                            }
                            var_s3 += 1;
                            var_s2_2 += temp_s7;
                            var_ra_2 += temp_s7;
                            var_s0 += (((s32) ((temp_s8 >> 5) * 4) >> 2) - sp98) * 4;
                            if (var_s3 != var_s6) {
                                goto loop_19;
                            }
                        }
                    } else {
                        var_s3_2 = 0;
                        spA8 = temp_s2_2;
                        if (var_s6 > 0) {
                            var_s2_3 = sp8;
                            var_ra_3 = &sub_5e510000 + 0x67D0;
loop_49:
                            var_v1_3 = 0x1F;
                            if (arg3 > 0) {
                                var_a2_2 = var_ra_3;
                                if (arg3 & 1) {
                                    temp_v0_7 = 0x1E ^ -1;
                                    *var_s0 = (s32) (*var_s0 | ((((s32) *var_a2_2 >> temp_s1) & 1) << 0x1F));
                                    var_s0 = (temp_v0_7 == 0) ? (var_s0 + 4) : var_s0;
                                    var_a2_2 += 2;
                                    var_v1_3 = (temp_v0_7 == 0) ? 0x1F : 0x1E;
                                }
                                var_t0_2 = var_v1_3;
                                temp_a5_2 = arg3 >> 1;
                                var_t1_2 = var_a2_2;
                                var_a1_2 = var_s0;
                                if (temp_a5_2 != 0) {
                                    temp_a5_3 = var_s2_3 - 4;
                                    if (temp_a5_2 >= 2) {
                                        temp_a7_2 = var_t0_2 - 1;
                                        var_a2_3 = temp_a7_2 ^ -1;
                                        var_a7_2 = (var_a2_3 == 0) ? 0x1F : temp_a7_2;
                                        var_v0_2 = *var_a1_2;
                                        var_v1_4 = var_a7_2 - 1;
                                        var_at_2 = var_t1_2->unk0;
                                        var_t2_2 = var_v1_4 ^ -1;
loop_55:
                                        temp_a6_2 = (var_t2_2 != 0) ? var_v1_4 : 0x1F;
                                        *var_a1_2 = (s32) (var_v0_2 | ((((s32) var_at_2 >> temp_s1) & 1) << var_t0_2));
                                        temp_a0_3 = (var_a2_3 != 0) ? var_a1_2 : (var_a1_2 + 4);
                                        temp_at_5 = (s32) var_t1_2->unk2 >> temp_s1;
                                        var_t1_2 += 4;
                                        temp_v1_7 = temp_a6_2 - 1;
                                        temp_v0_8 = *temp_a0_3;
                                        var_a2_3 = temp_v1_7 ^ -1;
                                        *temp_a0_3 = (s32) (temp_v0_8 | ((temp_at_5 & 1) << var_a7_2));
                                        var_a7_2 = (var_a2_3 != 0) ? temp_v1_7 : 0x1F;
                                        temp_v1_8 = var_a7_2 - 1;
                                        var_a1_2 = (var_t2_2 != 0) ? temp_a0_3 : (temp_a0_3 + 4);
                                        temp_at_6 = var_t1_2->unk0;
                                        var_t2_2 = temp_v1_8 ^ -1;
                                        var_v0_2 = *var_a1_2;
                                        if (var_t1_2 != temp_a5_3) {
                                            var_t0_2 = (var_t2_2 != 0) ? temp_v1_8 : 0x1F;
                                            *var_a1_2 = (s32) (var_v0_2 | ((((s32) temp_at_6 >> temp_s1) & 1) << temp_a6_2));
                                            temp_a0_4 = (var_a2_3 != 0) ? var_a1_2 : (var_a1_2 + 4);
                                            temp_at_7 = (s32) var_t1_2->unk2 >> temp_s1;
                                            var_t1_2 += 4;
                                            temp_v1_9 = var_t0_2 - 1;
                                            temp_v0_9 = *temp_a0_4;
                                            var_a2_3 = temp_v1_9 ^ -1;
                                            *temp_a0_4 = (s32) (temp_v0_9 | ((temp_at_7 & 1) << var_a7_2));
                                            var_a7_2 = (var_a2_3 != 0) ? temp_v1_9 : 0x1F;
                                            var_v1_4 = var_a7_2 - 1;
                                            var_a1_2 = (var_t2_2 != 0) ? temp_a0_4 : (temp_a0_4 + 4);
                                            var_at_2 = *var_t1_2;
                                            var_t2_2 = var_v1_4 ^ -1;
                                            var_v0_2 = *var_a1_2;
                                            if (var_t1_2 == temp_a5_3) {
                                                var_a4 = var_at_2;
                                            } else {
                                                goto loop_55;
                                            }
                                        } else {
                                            var_t0_2 = temp_a6_2;
                                            var_a4 = temp_at_6;
                                        }
                                        *var_a1_2 = (s32) (var_v0_2 | ((((s32) var_a4 >> temp_s1) & 1) << var_t0_2));
                                        temp_a1_2 = (var_a2_3 == 0) ? (var_a1_2 + 4) : var_a1_2;
                                        *temp_a1_2 = (s32) (*temp_a1_2 | ((((s32) var_t1_2->unk2 >> temp_s1) & 1) << var_a7_2));
                                        var_s0 = (var_t2_2 == 0) ? (temp_a1_2 + 4) : temp_a1_2;
                                    } else {
                                        *var_a1_2 = (s32) (*var_a1_2 | ((((s32) var_t1_2->unk0 >> temp_s1) & 1) << var_t0_2));
                                        temp_t8_5 = var_t0_2 - 1;
                                        temp_at_8 = temp_t8_5 ^ -1;
                                        temp_t8_6 = (temp_at_8 == 0) ? 0x1F : temp_t8_5;
                                        temp_v0_10 = (temp_at_8 != 0) ? var_a1_2 : (var_a1_2 + 4);
                                        *temp_v0_10 = (s32) (*temp_v0_10 | ((((s32) var_t1_2->unk2 >> temp_s1) & 1) << temp_t8_6));
                                        var_s0 = (((temp_t8_6 - 1) ^ -1) != 0) ? temp_v0_10 : (temp_v0_10 + 4);
                                    }
                                }
                            }
                            var_s3_2 += 1;
                            var_s2_3 += temp_s7;
                            var_ra_3 += temp_s7;
                            var_s0 += (((s32) ((temp_s8 >> 5) * 4) >> 2) - sp98) * 4;
                            if (var_s3_2 != var_s6) {
                                goto loop_49;
                            }
                        }
                    }
                } else {
                    var_s3_3 = 0;
                    spA8 = temp_s2_2;
                    if (var_s6 > 0) {
                        var_s2_4 = sp10;
                        var_ra_4 = &sub_5e510000 + 0x67D0;
loop_34:
                        var_s3_3 += 1;
                        var_a2_4 = var_ra_4;
                        if (sp90 != 0) {
                            var_t0_3 = 0x1F;
                            if (arg3 & 1) {
                                temp_t3 = 0x1E ^ -1;
                                *var_s0 = (s32) (*var_s0 | ((((s32) *var_a2_4 >> temp_s1) & 1) << 0x1F));
                                var_s0 = (temp_t3 == 0) ? (var_s0 + 4) : var_s0;
                                var_a2_4 += 1;
                                var_t0_3 = (temp_t3 == 0) ? 0x1F : 0x1E;
                            }
                            temp_a5_4 = arg3 >> 1;
                            var_t1_3 = var_a2_4;
                            var_a1_3 = var_s0;
                            if (temp_a5_4 != 0) {
                                temp_a5_5 = var_s2_4 - 2;
                                if (temp_a5_4 >= 2) {
                                    temp_a7_3 = var_t0_3 - 1;
                                    var_a2_5 = temp_a7_3 ^ -1;
                                    var_a7_3 = (var_a2_5 == 0) ? 0x1F : temp_a7_3;
                                    var_v0_3 = *var_a1_3;
                                    var_v1_5 = var_a7_3 - 1;
                                    var_at_3 = var_t1_3->unk0;
                                    var_t2_3 = var_v1_5 ^ -1;
loop_40:
                                    temp_a6_3 = (var_t2_3 != 0) ? var_v1_5 : 0x1F;
                                    *var_a1_3 = (s32) (var_v0_3 | ((((s32) var_at_3 >> temp_s1) & 1) << var_t0_3));
                                    temp_a0_5 = (var_a2_5 != 0) ? var_a1_3 : (var_a1_3 + 4);
                                    temp_at_9 = (s32) var_t1_3->unk1 >> temp_s1;
                                    var_t1_3 += 2;
                                    temp_v1_10 = temp_a6_3 - 1;
                                    temp_v0_11 = *temp_a0_5;
                                    var_a2_5 = temp_v1_10 ^ -1;
                                    *temp_a0_5 = (s32) (temp_v0_11 | ((temp_at_9 & 1) << var_a7_3));
                                    var_a7_3 = (var_a2_5 != 0) ? temp_v1_10 : 0x1F;
                                    temp_v1_11 = var_a7_3 - 1;
                                    var_a1_3 = (var_t2_3 != 0) ? temp_a0_5 : (temp_a0_5 + 4);
                                    temp_at_10 = var_t1_3->unk0;
                                    var_t2_3 = temp_v1_11 ^ -1;
                                    var_v0_3 = *var_a1_3;
                                    if (var_t1_3 != temp_a5_5) {
                                        var_t0_3 = (var_t2_3 != 0) ? temp_v1_11 : 0x1F;
                                        *var_a1_3 = (s32) (var_v0_3 | ((((s32) temp_at_10 >> temp_s1) & 1) << temp_a6_3));
                                        temp_a0_6 = (var_a2_5 != 0) ? var_a1_3 : (var_a1_3 + 4);
                                        temp_at_11 = (s32) var_t1_3->unk1 >> temp_s1;
                                        var_t1_3 += 2;
                                        temp_v1_12 = var_t0_3 - 1;
                                        temp_v0_12 = *temp_a0_6;
                                        var_a2_5 = temp_v1_12 ^ -1;
                                        *temp_a0_6 = (s32) (temp_v0_12 | ((temp_at_11 & 1) << var_a7_3));
                                        var_a7_3 = (var_a2_5 != 0) ? temp_v1_12 : 0x1F;
                                        var_v1_5 = var_a7_3 - 1;
                                        var_a1_3 = (var_t2_3 != 0) ? temp_a0_6 : (temp_a0_6 + 4);
                                        var_at_3 = *var_t1_3;
                                        var_t2_3 = var_v1_5 ^ -1;
                                        var_v0_3 = *var_a1_3;
                                        if (var_t1_3 == temp_a5_5) {
                                            var_a4_2 = var_at_3;
                                        } else {
                                            goto loop_40;
                                        }
                                    } else {
                                        var_t0_3 = temp_a6_3;
                                        var_a4_2 = temp_at_10;
                                    }
                                    *var_a1_3 = (s32) (var_v0_3 | ((((s32) var_a4_2 >> temp_s1) & 1) << var_t0_3));
                                    temp_a1_3 = (var_a2_5 == 0) ? (var_a1_3 + 4) : var_a1_3;
                                    *temp_a1_3 = (s32) (*temp_a1_3 | ((((s32) var_t1_3->unk1 >> temp_s1) & 1) << var_a7_3));
                                    var_s0 = (var_t2_3 == 0) ? (temp_a1_3 + 4) : temp_a1_3;
                                } else {
                                    *var_a1_3 = (s32) (*var_a1_3 | ((((s32) var_t1_3->unk0 >> temp_s1) & 1) << var_t0_3));
                                    temp_t8_7 = var_t0_3 - 1;
                                    temp_at_12 = temp_t8_7 ^ -1;
                                    temp_t8_8 = (temp_at_12 == 0) ? 0x1F : temp_t8_7;
                                    temp_v0_13 = (temp_at_12 != 0) ? var_a1_3 : (var_a1_3 + 4);
                                    *temp_v0_13 = (s32) (*temp_v0_13 | ((((s32) var_t1_3->unk1 >> temp_s1) & 1) << temp_t8_8));
                                    var_s0 = (((temp_t8_8 - 1) ^ -1) != 0) ? temp_v0_13 : (temp_v0_13 + 4);
                                }
                            }
                        }
                        var_s2_4 += temp_s7;
                        var_ra_4 += temp_s7;
                        var_s0 += (((s32) ((temp_s8 >> 5) * 4) >> 2) - sp98) * 4;
                        if (var_s3_3 != var_s6) {
                            goto loop_34;
                        }
                    }
                }
                var_s2 = spA8;
                if (var_s2 != 0) {
                    goto loop_11;
                }
            }
        } else {
            temp_ra_2 = (s64) ((sp88->unk8 + arg1) << 0x30) >> 0x30;
            sp0 = (s16) temp_ra_2;
            unksp68 = arg7;
            temp_t9_2 = (s64) ((sp88->unkA + arg2) << 0x30) >> 0x30;
            sp2 = (s16) temp_t9_2;
            sp6 = arg4 + temp_t9_2;
            temp_s3 = (1 << temp_v1_2) - 1;
            temp_s4 = temp_s3 & arg6;
            sp4 = arg3 + temp_ra_2;
            ((? (*)(void *, s64, s32, s64)) sp80)(sp, unksp68, temp_a2, sp88);
            if (temp_s3 != temp_s4) {
                temp_v1_13 = sp88->unk3;
                if (temp_v1_13 != 8) {
                    var_s6_2 = ((temp_v1_13 ^ 0x10) == 0) ? ((temp_s4 << 0x10) | temp_s4) : temp_s4;
                } else {
                    temp_t8_9 = (temp_s4 << 8) | temp_s4;
                    var_s6_2 = (temp_t8_9 << 0x10) | temp_t8_9;
                }
                var_ra_5 = 0;
                if (arg4 > 0) {
                    temp_s4_2 = temp_s7 >> 2;
                    var_t9 = 0;
loop_69:
                    var_v1_6 = var_t9 + unksp68;
                    var_ra_5 += 1;
                    if (temp_s4_2 >= 1) {
                        var_a2_6 = temp_s4_2 & 3;
                        temp_a5_6 = (temp_s4_2 * 4) + var_v1_6;
                        if (var_a2_6 != 0) {
                            do {
                                var_a2_6 -= 1;
                                temp_t3_2 = *var_v1_6;
                                var_v1_6 += 4;
                                var_v1_6->unk-4 = (s32) (temp_t3_2 & var_s6_2);
                            } while (var_a2_6 != 0);
                        }
                        temp_a2_2 = temp_s4_2 >> 2;
                        temp_t1 = temp_a5_6 - 0x10;
                        var_a6 = var_v1_6;
                        if (temp_a2_2 != 0) {
                            if (temp_a2_2 >= 2) {
                                var_a7_4 = var_a6 + 0x10;
                                var_a2_7 = var_a6->unk0;
                                var_a3 = var_a6->unk4;
                                var_v0_4 = var_a6->unk8 & var_s6_2;
                                var_a0 = var_a6->unkC & var_s6_2;
loop_77:
                                var_a6->unk8 = var_v0_4;
                                var_a6->unkC = var_a0;
                                var_a5_3 = var_a7_4->unk4;
                                var_a0 = var_a7_4->unkC & var_s6_2;
                                temp_t2_2 = var_a7_4 + 0x10;
                                var_a4_3 = var_a7_4->unk0;
                                var_a6->unk4 = (s32) (var_a3 & var_s6_2);
                                temp_v0_14 = var_a7_4->unk8 & var_s6_2;
                                var_a6->unk0 = var_a2_7 & var_s6_2;
                                if (var_a7_4 != temp_t1) {
                                    var_a7_4->unk8 = temp_v0_14;
                                    var_a7_4->unkC = var_a0;
                                    temp_a1_4 = temp_t2_2->unk4;
                                    var_a0 = temp_t2_2->unkC & var_s6_2;
                                    var_a6 = temp_t2_2 + 0x10;
                                    temp_v1_14 = var_a7_4->unk10;
                                    var_a7_4->unk4 = (s32) (var_a5_3 & var_s6_2);
                                    temp_v0_15 = temp_t2_2->unk8 & var_s6_2;
                                    var_a7_4->unk0 = var_a4_3 & var_s6_2;
                                    if (temp_t2_2 != temp_t1) {
                                        temp_t2_2->unk8 = temp_v0_15;
                                        temp_t2_2->unkC = var_a0;
                                        var_a3 = var_a6->unk4;
                                        var_a0 = var_a6->unkC & var_s6_2;
                                        var_a7_4 = var_a6 + 0x10;
                                        var_a2_7 = temp_t2_2->unk10;
                                        temp_t2_2->unk4 = (s32) (temp_a1_4 & var_s6_2);
                                        var_v0_4 = var_a6->unk8 & var_s6_2;
                                        var_a7_4->unk10 = (s32) (temp_v1_14 & var_s6_2);
                                        if (var_a6 == temp_t1) {
                                            var_a4_3 = var_a2_7;
                                            var_a5_3 = var_a3;
                                            var_a3_2 = var_v0_4;
                                        } else {
                                            goto loop_77;
                                        }
                                    } else {
                                        var_a6 = temp_t2_2;
                                        var_a3_2 = temp_v0_15;
                                        var_a5_3 = temp_a1_4;
                                        var_a4_3 = temp_v1_14;
                                    }
                                } else {
                                    var_a6 = var_a7_4;
                                    var_a3_2 = temp_v0_14;
                                }
                                var_a6->unk0 = var_a4_3 & var_s6_2;
                                var_a6->unk4 = (s32) (var_a5_3 & var_s6_2);
                                var_a6->unkC = var_a0;
                                var_a6->unk8 = var_a3_2;
                            } else {
                                var_a6->unkC = (s32) (var_a6->unkC & var_s6_2);
                                var_a6->unk8 = (s32) (var_a6->unk8 & var_s6_2);
                                var_a6->unk4 = (s32) (var_a6->unk4 & var_s6_2);
                                var_a6->unk0 &= var_s6_2;
                            }
                        }
                    }
                    var_t9 += ((temp_s4_2 < 0) ? 0 : temp_s4_2) * 4;
                    if (var_ra_5 != arg4) {
                        goto loop_69;
                    }
                }
            }
        }
    }
}

void nfbRecolorCursor(void *arg0, s32 arg2) {
    if (arg2 != 0) {
        arg0->unk11C();
    }
}

s32 nfbRealizeCursor(s32 *arg0, void **arg1) {
    s32 *temp_a4;
    s32 *temp_a4_3;
    s32 *temp_t0_2;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v1_5;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 *var_a1;
    s32 *var_a1_2;
    s32 *var_a5;
    s32 *var_a6;
    s32 *var_a7;
    s32 *var_at;
    s32 *var_v0;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_t0;
    s32 temp_t1_2;
    s32 temp_t8;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_6;
    s32 var_v0_2;
    u16 temp_a7;
    u16 temp_a7_2;
    u16 temp_t1;
    u16 temp_v1;
    void *temp_a6;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x14DCF8;
    temp_v0 = Xalloc(0x10);
    ((*arg0 * 4) + arg1)->unk14 = temp_v0;
    if (temp_v0 != NULL) {
        temp_v0_2 = Xalloc(0x100);
        temp_v0->unk8 = temp_v0_2;
        if (temp_v0_2 != NULL) {
            temp_gp->unk-7574(temp_v0_2, 0, 0x100);
            temp_v0->unk4 = 0;
            temp_v0->unk0 = 0;
            temp_v0->unkC = 1;
            temp_a6 = *arg1;
            var_v0 = temp_v0_2;
            temp_t1 = temp_a6->unk8;
            temp_a7 = temp_a6->unkA;
            temp_a7_2 = ((s32) temp_a7 >= 0x20) ? 0x20U : temp_a7;
            temp_v1 = ((s32) temp_t1 < 0x20) ? temp_t1 : 0x20U;
            var_a1 = temp_a6->unk0;
            temp_t8 = ((temp_v1 ^ 0x20) == 0) ? -1 : (-1 << (0x20 - temp_v1));
            if ((s32) temp_a7_2 > 0) {
                temp_a3 = ((s32) (temp_t1 + 0x1F) >> 5) * 4;
                var_a0 = temp_a6->unk4;
                temp_t0 = (s32) temp_a7_2 >> 1;
                if (temp_a7_2 & 1) {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($v0) */);
                    temp_v1_2 = *var_a0 & temp_t8;
                    *var_v0 = *var_a1 & temp_v1_2;
                    var_v0 += 4;
                    var_a0 += temp_a3;
                    temp_at = ~*var_a1;
                    var_a1 += temp_a3;
                    var_v0->unk7C = (s32) (temp_at & temp_v1_2);
                }
                var_a6 = var_a1;
                var_a7 = var_v0;
                if (temp_t0 != 0) {
                    temp_a4 = &temp_v0_2[temp_a7_2] - 8;
                    if (temp_t0 >= 2) {
                        var_a1_2 = temp_a3 + var_a0;
                        var_v0_2 = *var_a0;
                        var_a0_2 = temp_a3 + var_a6;
                        var_a5 = temp_a3 + var_a0_2;
                        var_at = temp_a3 + var_a1_2;
loop_8:
                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($a7) */);
                        temp_v1_3 = var_v0_2 & temp_t8;
                        var_a7->unk0 = *var_a6 & temp_v1_3;
                        var_a7->unk80 = (s32) (~*var_a6 & temp_v1_3);
                        temp_v1_4 = *var_a1_2 & temp_t8;
                        var_a7->unk4 = (s32) (*var_a0_2 & temp_v1_4);
                        temp_t0_2 = var_a7 + 8;
                        var_a7->unk84 = (s32) (~*var_a0_2 & temp_v1_4);
                        var_a1_2 = temp_a3 + var_at;
                        var_a0_2 = temp_a3 + var_a5;
                        temp_v1_5 = temp_a3 + var_a1_2;
                        var_a6 = temp_a3 + var_a0_2;
                        var_v0_2 = *var_at;
                        if (temp_t0_2 != temp_a4) {
                            temp_v0_3 = var_v0_2 & temp_t8;
                            var_a7->unk8 = (s32) (*var_a5 & temp_v0_3);
                            temp_t0_2->unk80 = (s32) (~*var_a5 & temp_v0_3);
                            temp_v0_4 = *var_a1_2 & temp_t8;
                            temp_t0_2->unk4 = (s32) (*var_a0_2 & temp_v0_4);
                            var_a7 = temp_t0_2 + 8;
                            temp_t0_2->unk84 = (s32) (~*var_a0_2 & temp_v0_4);
                            var_a1_2 = temp_a3 + temp_v1_5;
                            var_a0_2 = temp_a3 + var_a6;
                            var_at = temp_a3 + var_a1_2;
                            var_a5 = temp_a3 + var_a0_2;
                            var_v0_2 = *temp_v1_5;
                            if (var_a7 != temp_a4) {
                                goto loop_8;
                            }
                        } else {
                            var_a7 = temp_t0_2;
                            var_a6 = var_a5;
                        }
                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x180($a7) */);
                        temp_a4_2 = var_v0_2 & temp_t8;
                        var_a7->unk0 = *var_a6 & temp_a4_2;
                        var_a7->unk80 = (s32) (~*var_a6 & temp_a4_2);
                        temp_at_2 = *var_a1_2 & temp_t8;
                        var_a7->unk4 = (s32) (*var_a0_2 & temp_at_2);
                        var_a7->unk84 = (s32) (~*var_a0_2 & temp_at_2);
                    } else {
                        temp_v1_6 = *var_a0 & temp_t8;
                        var_a7->unk0 = *var_a6 & temp_v1_6;
                        var_a7->unk80 = (s32) (~*var_a6 & temp_v1_6);
                        temp_a4_3 = temp_a3 + var_a6;
                        temp_t1_2 = *(temp_a3 + var_a0) & temp_t8;
                        var_a7->unk4 = (s32) (*temp_a4_3 & temp_t1_2);
                        var_a7->unk84 = (s32) (~*temp_a4_3 & temp_t1_2);
                    }
                }
            }
            return 1;
        }
        temp_gp->unk-75A0(temp_v0);
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x4900);
        return 0;
    }
    temp_gp->unk-74EC(&sub_5e4f0000 + 0x4900);
    return 0;
}

void nfbValidateWindowVisual(void *arg0) {
    s64 sp0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a2_4;
    s32 temp_s5;
    s32 var_a0;
    s64 temp_a2_2;
    s64 temp_a2_3;
    u32 var_a2;
    void *temp_a0;
    void *temp_a2;
    void *temp_s0;
    void *temp_s4;

    temp_a2 = arg0->unk34;
    if ((temp_a2 == NULL) || (temp_a2->unk4 != 0)) {
        temp_s4 = arg0->unk10;
        temp_s0 = temp_s4->unk74;
        temp_s5 = (*(arg0->unk84 + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x14D96C)->unk-30F8 * 4)))->unk4;
        if ((arg0->unk64 != 0) || ((temp_a0 = arg0->unk78, (temp_a0 != NULL)) && (temp_a0->unk2C != 0))) {
            temp_a2_2 = temp_s5 * 0xC;
            sp0 = temp_a2_2;
            temp_s4->unk158(temp_s0->unk5C + temp_a2_2, arg0 + 0x38, temp_a2_2);
            temp_a0_2 = temp_s0->unk5C + sp0;
            temp_s4->unk16C(temp_a0_2, temp_a0_2, arg0 + 0x48);
            temp_a0_3 = temp_s0->unk5C + sp0;
            temp_s4->unk168(temp_a0_3, temp_a0_3, arg0 + 0x2C);
        } else {
            temp_a2_3 = temp_s5 * 0xC;
            temp_s4->unk158(temp_s0->unk5C + temp_a2_3, arg0 + 0x2C, temp_a2_3);
        }
        var_a0 = 0;
        var_a2 = 0;
        if (temp_s0->unk28 != 0) {
            do {
                *(temp_s0->unk3C + var_a0) = 0;
                var_a2 += 1;
                var_a0 += 4;
            } while (var_a2 < (u32) temp_s0->unk28);
        }
        temp_a2_4 = temp_s5 * 4;
        temp_a1 = *(temp_s0->unk30 + temp_a2_4) * 4;
        *(temp_s0->unk3C + temp_a1) = 1;
        temp_s0->unk6C(temp_s4, temp_a1, temp_a2_4);
    }
}

void nfbHWStoreColors(void *arg0, s32 arg1, u32 *arg2, s32 arg5, s32 arg6) {
    s64 sp68;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? (*temp_s4_2)(void *, s32, u32 *, void *, s32, s32, s32, void *);
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_6;
    s32 *temp_t3_2;
    s32 *temp_t3_4;
    s32 *temp_t3_5;
    s32 *temp_t3_6;
    s32 *temp_t3_9;
    s32 *temp_t8_3;
    s32 *temp_t8_4;
    s32 *temp_v0_11;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_9;
    s32 *temp_v1;
    s32 *temp_v1_10;
    s32 *temp_v1_11;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_4;
    s32 *temp_v1_6;
    s32 *temp_v1_9;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_ra;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s64 temp_a2_2;
    s64 temp_t8_2;
    u32 *var_a0;
    u32 *var_a1;
    u32 temp_a7;
    u32 temp_at_3;
    u32 temp_at_4;
    u32 temp_at_5;
    u32 temp_t3_3;
    u32 temp_t3_8;
    u32 temp_t8;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_12;
    u32 temp_v0_13;
    u32 temp_v0_14;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v1_5;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 var_v0;
    void *temp_a1;
    void *temp_s4;
    void *temp_t3_7;
    void *var_a3;
    void *var_a7;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = arg0->unk0;
    temp_s4 = arg0->unkC->unk74;
    var_a7 = arg0;
    var_a1 = arg2;
    var_a4 = var_a7->unk44;
    temp_a2 = arg1 >= 1;
    temp_ra = var_a4 + 4;
    temp_s4_2 = (temp_s4->unk7C + ((temp_s4->unk58 + ((var_a3->unk0 - temp_s4->unk50) * 0x14))->unk4 * 0x18))->unk10;
    if (var_a4 != 0) {
        var_a4 = arg1 & 3;
        if (var_a3->unk4 != 5) {
            var_a3 = (void *) (arg1 * 4);
            if (temp_a2 != 0) {
                var_a3 = ((var_a3 - arg1) * 4) + arg2;
                if (var_a4 != 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
                        temp_v0 = *var_a1;
                        temp_at = ((temp_v0 >> 5) * 4) + temp_ra;
                        var_a4 -= 1;
                        temp_t3 = *temp_at;
                        var_a1 += 0xC;
                        *temp_at = temp_t3 | (1 << temp_v0);
                    } while (var_a4 != 0);
                }
                var_a4 = arg1 >> 2;
                var_a0 = var_a1;
                if (var_a4 != 0) {
                    temp_a1 = var_a3 - 0x30;
                    var_a3 = (void *)1;
                    if (var_a4 >= 2) {
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a0) */);
                        var_v0 = var_a0->unk0;
                        do {
                            temp_v1 = ((var_v0 >> 5) * 4) + temp_ra;
                            *temp_v1 |= 1 << var_v0;
                            temp_v0_2 = var_a0->unkC;
                            temp_v1_2 = ((temp_v0_2 >> 5) * 4) + temp_ra;
                            *temp_v1_2 |= 1 << temp_v0_2;
                            temp_v0_3 = var_a0->unk18;
                            temp_v1_3 = ((temp_v0_3 >> 5) * 4) + temp_ra;
                            *temp_v1_3 |= 1 << temp_v0_3;
                            temp_v0_4 = var_a0->unk24;
                            temp_v1_4 = ((temp_v0_4 >> 5) * 4) + temp_ra;
                            *temp_v1_4 |= 1 << temp_v0_4;
                            var_a0 += 0x30;
                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a0) */);
                            var_v0 = var_a0->unk0;
                        } while (var_a0 != temp_a1);
                        temp_t3_2 = ((var_v0 >> 5) * 4) + temp_ra;
                        *temp_t3_2 |= 1 << var_v0;
                        temp_v1_5 = var_a0->unkC;
                        temp_at_2 = ((temp_v1_5 >> 5) * 4) + temp_ra;
                        *temp_at_2 |= 1 << temp_v1_5;
                        temp_t3_3 = var_a0->unk18;
                        temp_v1_6 = ((temp_t3_3 >> 5) * 4) + temp_ra;
                        *temp_v1_6 |= 1 << temp_t3_3;
                        temp_t8 = var_a0->unk24;
                        temp_t3_4 = ((temp_t8 >> 5) * 4) + temp_ra;
                        *temp_t3_4 |= 1 << temp_t8;
                    } else {
                        temp_at_3 = var_a0->unk0;
                        temp_t3_5 = ((temp_at_3 >> 5) * 4) + temp_ra;
                        *temp_t3_5 |= 1 << temp_at_3;
                        temp_v1_7 = var_a0->unkC;
                        temp_v0_5 = ((temp_v1_7 >> 5) * 4) + temp_ra;
                        *temp_v0_5 |= 1 << temp_v1_7;
                        temp_at_4 = var_a0->unk18;
                        temp_t3_6 = ((temp_at_4 >> 5) * 4) + temp_ra;
                        *temp_t3_6 |= 1 << temp_at_4;
                        temp_v1_8 = var_a0->unk24;
                        temp_v0_6 = ((temp_v1_8 >> 5) * 4) + temp_ra;
                        *temp_v0_6 |= 1 << temp_v1_8;
                    }
                }
            }
        } else {
            temp_t1 = var_a3->unk20;
            var_a6 = var_a3->unk1C;
            temp_a1_2 = var_a3->unk18;
            temp_t0 = var_a3->unk14;
            var_a4 = (s32) arg2;
            var_a5 = var_a3->unk10;
            temp_t2 = var_a3->unkC;
            temp_a0 = (s32) (((s32) (var_a3->unk8 + 7) >> 3) + 3) >> 2;
            if (temp_a2 != 0) {
                temp_a2_2 = temp_a0 * 2;
                temp_t8_2 = temp_a2_2;
                var_a3 = (arg1 * 0xC) + arg2;
                if (arg1 >= 2) {
                    sp30 = (s64) temp_t1;
                    sp28 = (s64) var_a6;
                    sp20 = (s64) temp_a1_2;
                    sp18 = (s64) temp_t0;
                    sp10 = (s64) var_a5;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a4) */);
                    sp8 = (s64) temp_t2;
                    sp68 = (s64) var_a7;
                    temp_t3_7 = var_a3 - 0xC;
                    var_a3 = (void *)1;
                    sp0 = temp_a2_2;
                    sp38 = (s64) temp_a0;
                    var_at = *var_a4;
                    do {
                        temp_v0_7 = (u32) (temp_t2 & var_at) >> temp_a1_2;
                        temp_v1_9 = (((s32) temp_v0_7 >> 5) * 4) + temp_ra;
                        *temp_v1_9 |= 1 << temp_v0_7;
                        temp_v0_8 = (u32) (*var_a4 & var_a5) >> var_a6;
                        temp_v0_9 = ((((s32) temp_v0_8 >> 5) + temp_a0) * 4) + temp_ra;
                        *temp_v0_9 |= 1 << temp_v0_8;
                        temp_v0_10 = (u32) (*var_a4 & temp_t0) >> temp_t1;
                        temp_v0_11 = ((temp_t8_2 + ((s32) temp_v0_10 >> 5)) * 4) + temp_ra;
                        *temp_v0_11 |= 1 << temp_v0_10;
                        var_a4 += 0xC;
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a4) */);
                        var_at = *var_a4;
                    } while (var_a4 != temp_t3_7);
                    temp_v0_12 = (u32) (sp8 & var_at) >> sp20;
                    temp_t8_3 = (((s32) temp_v0_12 >> 5) * 4) + temp_ra;
                    *temp_t8_3 |= 1 << temp_v0_12;
                    temp_v0_13 = (u32) (*var_a4 & sp10) >> sp28;
                    temp_t8_4 = ((((s32) temp_v0_13 >> 5) + sp38) * 4) + temp_ra;
                    *temp_t8_4 |= 1 << temp_v0_13;
                    temp_a7 = (u32) (*var_a4 & sp18) >> sp30;
                    temp_v1_10 = ((sp0 + ((s32) temp_a7 >> 5)) * 4) + temp_ra;
                    *temp_v1_10 |= 1 << temp_a7;
                    var_a7 = (void *) sp68;
                } else {
                    temp_t3_8 = (u32) (temp_t2 & *var_a4) >> temp_a1_2;
                    temp_v1_11 = (((s32) temp_t3_8 >> 5) * 4) + temp_ra;
                    *temp_v1_11 |= 1 << temp_t3_8;
                    temp_at_5 = (u32) (*var_a4 & var_a5) >> var_a6;
                    temp_t3_9 = ((((s32) temp_at_5 >> 5) + temp_a0) * 4) + temp_ra;
                    *temp_t3_9 |= 1 << temp_at_5;
                    temp_v0_14 = (u32) (*var_a4 & temp_t0) >> temp_t1;
                    temp_at_6 = ((temp_a2_2 + ((s32) temp_v0_14 >> 5)) * 4) + temp_ra;
                    *temp_at_6 |= 1 << temp_v0_14;
                }
            }
        }
    }
    temp_s4_2(var_a7, arg1, arg2, var_a3, var_a4, var_a5, var_a6, var_a7);
}

void nfbQueryBestSize(s32 arg0, u16 *arg1, u16 *arg2) {
    s32 var_v0;
    u16 temp_a2;
    u32 var_a0;

    switch (arg0) {                                 /* irregular */
    case 1:
    case 2:
        temp_a2 = *arg1;
        var_a0 = 0x80000000;
        if (temp_a2 != 0) {
            var_v0 = 0x7FFFFFFF;
            if (!(0x80000000 & temp_a2)) {
                do {
                    var_a0 = var_a0 >> 1;
                } while (!(temp_a2 & var_a0));
                var_v0 = var_a0 - 1;
            }
            *arg1 = (u16) (!(var_v0 & temp_a2) ? var_a0 : (var_a0 * 2));
            return;
        }
        return;
    case 0:
        if ((s32) *arg1 >= 0x21) {
            *arg1 = 0x20;
        }
        if ((s32) *arg2 >= 0x21) {
            *arg2 = 0x20;
            return;
        }
        break;
    }
}

s32 nfbCreateHWColormap(void *arg0) {
    s32 *var_v0;
    s32 temp_a1;
    s32 temp_a3;
    u16 temp_a5_2;
    u16 temp_a5_4;
    void *temp_a0;
    void *temp_a5;
    void *temp_a5_3;

    temp_a5 = arg0->unk0;
    temp_a5_2 = temp_a5->unk8;
    if (temp_a5->unk4 != 5) {
        var_v0 = saved_reg_gp->unk-758C(((s32) (temp_a5_2 + 0x1F) >> 3) + 8, temp_a5_2);
        arg0->unk44 = var_v0;
        if (var_v0 != NULL) {
            goto block_2;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return 0;
    }
    temp_a1 = (s32) (((s32) (temp_a5_2 + 7) >> 3) + 3) >> 2;
    var_v0 = saved_reg_gp->unk-758C((temp_a1 * 0xC) + 8, (u16) temp_a1, temp_a5_2);
    arg0->unk44 = var_v0;
    if (var_v0 == NULL) {
        return 0;
    }
block_2:
    *var_v0 = -1;
    temp_a5_3 = arg0->unk0;
    temp_a0 = arg0->unk44 + 4;
    temp_a5_4 = temp_a5_3->unk8;
    if (temp_a5_3->unk4 != 5) {
        saved_reg_gp->unk-7574(temp_a0, 0, (s32) (temp_a5_4 + 0x1F) >> 3);
    } else {
        temp_a3 = (s32) (((s32) (temp_a5_4 + 7) >> 3) + 3) >> 2;
        saved_reg_gp->unk-7574(temp_a0, 0, temp_a3 * 0xC, temp_a3);
    }
    return 1;
}

void nfbUninstallHWColormap(void *arg0) {
    s64 sp30;
    s64 sp10;
    s64 sp8;
    ? (*temp_t9)(void *);
    s32 *temp_a3;
    s32 *temp_a3_5;
    s32 *temp_a4;
    s32 *temp_a6;
    s32 *temp_t0;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 *var_a4_3;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a3_6;
    s32 temp_a5;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 var_a0_3;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a7;
    s32 var_t0;
    s64 temp_a5_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a5_3;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a7;
    void *temp_gp;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = arg0->unkC->unk74;
    var_a4 = 0;
    temp_a3 = arg0->unk44;
    var_t0 = sp4;
    temp_a7 = temp_v0->unk7C + ((temp_v0->unk58 + ((*arg0->unk0 - temp_v0->unk50) * 0x14))->unk4 * 0x18);
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x144CF4;
    temp_a6 = temp_a7->unk4;
    if (temp_a3 != NULL) {
        temp_a5 = *temp_a3;
        var_a0 = temp_a6;
        if (temp_a5 >= 0) {
            temp_a3_2 = temp_a7->unk0;
            if (temp_a3_2 > 0) {
loop_4:
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a0) */);
                var_a0 += 8;
                if (*var_a0 != temp_a5) {
                    var_a4 += 1;
                    if (var_a4 == temp_a3_2) {
                        var_a5 = sp0;
                    } else {
                        goto loop_4;
                    }
                } else {
                    var_a5 = var_a4;
                }
            } else {
                var_a5 = sp0;
            }
            var_a0_2 = temp_a6;
            if (temp_a3_2 > 0) {
                var_a4 = 0;
loop_10:
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($a0) */);
                var_a0_2 += 8;
                if (var_a0_2->unk4 != var_a5) {
                    var_a4 += 1;
                    if (var_a4 == temp_a3_2) {

                    } else {
                        goto loop_10;
                    }
                } else {
                    var_t0 = var_a4;
                }
            } else {
                var_t0 = sp4;
            }
            temp_a3_3 = (var_a5 * 8) + temp_a6;
            if (temp_a7->unk8 == var_a5) {
                temp_a7->unk8 = (s32) temp_a3_3->unk4;
            }
            ((var_t0 * 8) + temp_a6)->unk4 = (s32) temp_a3_3->unk4;
            temp_a2 = ((temp_a7->unk8 * 8) + temp_a6)->unk4;
            temp_a3_3->unk4 = temp_a2;
            ((temp_a7->unk8 * 8) + temp_a6)->unk4 = var_a5;
            temp_a0 = arg0->unkC->unk1C;
            sp30 = (s64) temp_v0;
            if (arg0->unk8 != temp_a0) {
                temp_a6_2 = arg0->unkC;
                temp_a3_4 = *((rrmScreenPrivateIndex * 4) + temp_a6_2->unk1B4);
                sp8 = temp_gp->unk-7348(temp_a0, 6, temp_a2, temp_a3_3, var_a4, var_a5, temp_a6, temp_a7);
                temp_a5_2 = temp_a5 * 0x1C;
                if (temp_a3_4->unk30 != 0) {
                    temp_v1 = ((temp_a6_2->unk74->unk74 + temp_a5_2)->unk10 * 0x24) + temp_a3_4;
                    temp_v1->unkA8 = (u16) (temp_v1->unkA8 & ~2);
                    (arg0->unkC->unk74->unk74 + temp_a5_2)->unk14 = 0;
                }
                temp_a4 = arg0->unkC->unk74->unk74 + temp_a5_2;
                *temp_a4 = 0;
                sp10 = temp_a5_2;
                temp_a3_5 = arg0->unk44;
                *temp_a3_5 = -1;
                temp_gp->unk-743C(arg0->unkC, TellLostMap, arg0 + 8, temp_a3_5, temp_a4, temp_a5_2, arg0->unkC);
                var_a3 = sp30->unk50;
                var_a4_2 = sp30->unk58;
                var_a0_3 = sp30->unk7C;
                temp_t9 = (var_a0_3 + ((((*arg0->unk0 - var_a3) * 0x14) + var_a4_2)->unk4 * 0x18))->unk14;
                if (temp_t9 != NULL) {
                    temp_t9(arg0);
                    var_a3 = sp30->unk50;
                    var_a4_2 = sp30->unk58;
                    var_a0_3 = sp30->unk7C;
                }
                temp_a6_3 = var_a0_3 + ((((**sp8 - var_a3) * 0x14) + var_a4_2)->unk4 * 0x18);
                temp_t0 = temp_a6_3->unk4;
                temp_a6_4 = temp_a6_3->unk0;
                temp_a5_3 = sp30->unk74 + sp10;
                var_a7 = 0;
                var_a4_3 = temp_t0;
                if (temp_a6_4 > 0) {
loop_30:
                    temp_a0_2 = *var_a4_3;
                    var_a4_3 += 8;
                    if (temp_a5 != temp_a0_2) {
                        temp_a6_5 = temp_a5_3->unk4;
                        if (temp_a6_5 > 0) {
                            var_v0 = temp_a5_3->unk8;
                            temp_a3_6 = var_v0 + (temp_a6_5 * 4);
loop_33:
                            var_v0 += 4;
                            if (*var_v0 != temp_a0_2) {
                                if (var_v0 == temp_a3_6) {

                                } else {
                                    goto loop_33;
                                }
                            } else {
                                var_a7 = 1;
                            }
                        }
                        if (var_a7 == 0) {
                            if (((temp_a6_4 * 8) + temp_t0) != var_a4_3) {
                                goto loop_30;
                            }
                            goto block_24;
                        }
                        goto block_25;
                    }
                    var_a7 = 1;
                    goto block_24;
                }
block_24:
                if (var_a7 != 0) {
block_25:
                    arg0->unkC->unk13C(sp8);
                }
            }
        }
    }
}

s32 nfbCloseScreen(void *arg1) {
    s32 temp_a0;
    s32 var_s5;
    u32 var_s2;
    void *temp_s0;

    temp_s0 = arg1->unk74;
    var_s2 = 0;
    if (temp_s0->unk28 != 0) {
        var_s5 = 0;
        do {
            var_s2 += 1;
            arg1->unk160(temp_s0->unk2C + var_s5);
            var_s5 += 0xC;
        } while (var_s2 < (u32) temp_s0->unk28);
    }
    Xfree((s64) temp_s0->unk2C);
    Xfree((s64) temp_s0->unk3C);
    Xfree((s64) temp_s0->unk40);
    Xfree((s64) temp_s0->unk44);
    temp_a0 = temp_s0->unkA4;
    if (temp_a0 != 0) {
        Xfree((s64) temp_a0);
    }
    Xfree((s64) temp_s0->unk5C);
    Xfree((s64) temp_s0->unk60);
    Xfree((s64) arg1->unk74);
    return 1;
}

s32 nfbHWColormapScreenInit(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    s32 temp_v0_2;
    s64 temp_a0;
    s64 temp_a0_2;
    void *temp_s0;

    sp18 = arg2;
    sp28 = arg3;
    sp0 = arg4;
    sp10 = arg1;
    temp_s0 = arg0->unk74;
    temp_a0 = arg1 * 0x1C;
    sp20 = temp_a0;
    temp_v0 = saved_reg_gp->unk-758C(temp_a0, arg1 * 8, arg1);
    temp_s0->unk74 = temp_v0;
    if (temp_v0 == 0) {
        return 0;
    }
    saved_reg_gp->unk-74E4(temp_v0, sp18, sp20);
    temp_a0_2 = sp28 * 0x18;
    sp8 = temp_a0_2;
    temp_v0_2 = saved_reg_gp->unk-758C(temp_a0_2, sp28);
    temp_s0->unk7C = temp_v0_2;
    if (temp_v0_2 == 0) {
        saved_reg_gp->unk-75A0(temp_s0->unk74);
        return 0;
    }
    saved_reg_gp->unk-74E4(temp_v0_2, sp0, sp8);
    temp_s0->unk78 = (s32) sp28;
    temp_s0->unk70 = (s32) sp10;
    return 1;
}

s32 nfbInitHWCmapArrays(s64 arg0, s32 **arg1, s32 **arg2, s64 arg3, s32 arg4, s32 *arg5, s32 arg6, s32 **arg7, ? arg_sp0) {
    s32 **temp_at_10;
    s32 **temp_s7;
    s32 **var_a2;
    s32 **var_a7;
    s32 **var_at;
    s32 **var_s1;
    s32 **var_t8;
    s32 *temp_a0_2;
    s32 *temp_a1_4;
    s32 *temp_a4;
    s32 *temp_a7;
    s32 *temp_at;
    s32 *temp_t2_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *var_a0;
    s32 *var_a1;
    s32 *var_a1_5;
    s32 *var_a2_2;
    s32 *var_a3_5;
    s32 *var_a3_6;
    s32 *var_a5;
    s32 *var_a5_4;
    s32 *var_a7_2;
    s32 *var_s1_5;
    s32 *var_s2;
    s32 *var_t1_2;
    s32 *var_t9;
    s32 *var_v0_2;
    s32 *var_v1_2;
    s32 temp_a1_3;
    s32 temp_a1_5;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a6_4;
    s32 temp_at_13;
    s32 temp_at_14;
    s32 temp_at_2;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s6;
    s32 temp_sp_2;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a2_3;
    s32 var_a3_4;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5_3;
    s32 var_a6;
    s32 var_a7_3;
    s32 var_a7_4;
    s32 var_at_2;
    s32 var_s0;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s4;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_3;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    s32 var_v0;
    s32 var_v1;
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a6;
    s64 temp_a6_5;
    s64 temp_sp;
    s64 temp_t0;
    s64 var_a0_2;
    s64 var_a1_2;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_s1_2;
    s64 var_s3;
    s64 var_s5;
    s64 var_t8_2;
    void *temp_a2;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_at_11;
    void *temp_at_12;
    void *temp_at_3;
    void *temp_at_4;
    void *temp_at_5;
    void *temp_at_6;
    void *temp_at_7;
    void *temp_at_8;
    void *temp_at_9;
    void *temp_s2;
    void *temp_t2;
    void *temp_v0_5;
    void *temp_v0_8;
    void *var_a3_3;
    void *var_a5_2;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    arg_sp0.unk-58 = (s64) saved_reg_fp;
    arg_sp0.unk-80 = arg0;
    arg_sp0.unk-48 = var_a3;
    arg_sp0.unk-50 = (s64) saved_reg_s6;
    arg_sp0.unk-68 = (s64) saved_reg_s2;
    arg_sp0.unk-70 = (s64) saved_reg_s7;
    arg_sp0.unk-60 = (s64) saved_reg_s1;
    temp_s7 = var_a2;
    temp_s6 = var_a4;
    arg_sp0.unk-A0 = 0;
    var_s1 = NULL;
    if (arg0 > 0) {
        temp_t0 = arg_sp0.unk-80;
        var_a2 = arg1;
        var_a4_2 = temp_t0 & 3;
        temp_t0_2 = (temp_t0 << 5) + arg1;
        if (var_a4_2 != 0) {
            do {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a2) */);
                temp_at = *var_a2;
                var_a4_2 -= 1;
                var_a2 += 0x20;
                var_s1 += temp_at;
            } while (var_a4_2 != 0);
        }
        var_a4 = temp_t0 >> 2;
        var_a7 = var_s1;
        var_a3 = (s64) var_a2;
        if (var_a4 != 0) {
            var_a2 = var_a7;
            if (var_a4 >= 4) {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a3) */);
                temp_a5 = var_a3->unk60;
                temp_at_2 = var_a3->unk0;
                arg_sp0.unk-C8 = (s64) saved_reg_ra;
                var_v0 = var_a3->unk40;
                var_a1 = var_a3->unk20;
                temp_a4 = var_a3 + 0x80;
                var_t3 = temp_a4->unk40;
                var_a0 = temp_a4->unk20;
                var_v1 = var_a3->unk80;
                var_a6 = temp_t0_2 - 0x180;
                var_t1 = temp_a4->unk60;
                var_a2_2 = temp_a4 + 0x80;
                var_t8 = temp_a4->unk80;
                var_a3 = (s64) (var_a2_2 + 0x80);
                var_t0 = temp_a5;
                var_t2 = var_a2_2->unk60;
                var_at = temp_at_2 + var_a7;
                var_a7_2 = temp_a4;
loop_6:
                temp_at_3 = var_a1 + var_at;
                var_a1 = var_a2_2->unk20;
                temp_v0 = var_a2_2->unk40;
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a3) */);
                var_a5 = var_a3 + 0x80;
                temp_a4_2 = var_a3->unk60;
                temp_at_4 = var_v1 + (var_t0 + (var_v0 + temp_at_3));
                temp_v1 = var_a3->unk0;
                if (var_a7_2 != var_a6) {
                    temp_at_5 = var_a0 + temp_at_4;
                    var_a0 = var_a3->unk20;
                    temp_at_6 = var_t3 + temp_at_5;
                    var_t3 = var_a3->unk40;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                    var_a7_2 = var_a5 + 0x80;
                    var_t0 = var_a5->unk60;
                    temp_at_7 = var_t8 + (var_t1 + temp_at_6);
                    temp_t8 = var_a3->unk80;
                    if (var_a2_2 != var_a6) {
                        temp_at_8 = var_a1 + temp_at_7;
                        var_a1 = var_a5->unk20;
                        temp_at_9 = temp_v0 + temp_at_8;
                        var_v0 = var_a5->unk40;
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a7) */);
                        var_a2_2 = var_a7_2 + 0x80;
                        var_t1 = var_a7_2->unk60;
                        temp_at_10 = temp_v1 + (var_t2 + temp_at_9);
                        var_v1 = var_a5->unk80;
                        if (var_a3 != var_a6) {
                            temp_at_11 = var_a0 + temp_at_10;
                            var_a0 = var_a7_2->unk20;
                            temp_at_12 = var_t3 + temp_at_11;
                            var_t3 = var_a7_2->unk40;
                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a2) */);
                            var_a3 = (s64) (var_a2_2 + 0x80);
                            var_t2 = var_a2_2->unk60;
                            var_at = temp_t8 + (temp_a4_2 + temp_at_12);
                            var_t8 = var_a7_2->unk80;
                            if (var_a5 == var_a6) {
                                var_a3 = (s64) var_t1;
                                var_t1 = var_t0;
                                var_t0_2 = var_v0;
                                var_a7 = var_at;
                                var_t9 = var_a2_2;
                                var_a4 = var_v1;
                                arg_sp0.unk-A8 = (s64) var_a4;
                                var_a2 = var_t8;
                                var_t8_2 = var_a3;
                            } else {
                                goto loop_6;
                            }
                        } else {
                            var_t9 = var_a7_2;
                            var_a7 = temp_at_10;
                            var_t2 = var_t1;
                            var_t1 = temp_a4_2;
                            var_a4 = temp_t8;
                            var_t0_2 = var_t3;
                            var_a5 = var_a1;
                            var_a1 = var_a0;
                            var_a6 = var_v1;
                            var_a3 = (s64) var_v0;
                            var_a0 = var_a5;
                            var_t3 = (s32) var_a3;
                            var_t8_2 = (s64) var_t0;
                            arg_sp0.unk-B0 = (s64) var_a6;
                            var_a2 = (s32 **) var_a6;
                        }
                    } else {
                        var_t9 = var_a5;
                        var_t1 = var_t2;
                        var_t2 = var_t0;
                        arg_sp0.unk-B0 = (s64) temp_t8;
                        var_t0_2 = temp_v0;
                        arg_sp0.unk-B8 = (s64) temp_at_7;
                        var_a4 = temp_v1;
                        var_a2 = (s32 **) arg_sp0.unk-B0;
                        var_t8_2 = (s64) temp_a4_2;
                        var_a7 = (s32 **) arg_sp0.unk-B8;
                    }
                } else {
                    var_t9 = (s32 *) var_a3;
                    var_t0_2 = var_t3;
                    var_a6 = var_t2;
                    var_t2 = temp_a4_2;
                    var_a4 = (s32) var_t8;
                    arg_sp0.unk-B0 = (s64) temp_v1;
                    temp_a7 = var_a0;
                    var_a0 = var_a1;
                    arg_sp0.unk-B8 = (s64) temp_at_4;
                    var_t3 = temp_v0;
                    var_t8_2 = (s64) var_a6;
                    var_a2 = (s32 **) arg_sp0.unk-B0;
                    var_a1 = temp_a7;
                    var_a7 = (s32 **) arg_sp0.unk-B8;
                }
                var_s1 = var_t2 + (var_t9->unk40 + (var_t9->unk20 + (var_a2 + (var_t8_2 + (var_t3 + (var_a0 + (var_a4 + (var_t1 + (var_t0_2 + (var_a1 + var_a7))))))))));
            } else {
                var_a1_2 = var_a3;
                do {
                    temp_v0_2 = var_a1_2->unk20;
                    temp_at_13 = var_a1_2->unk40;
                    var_a6 = var_a1_2->unk60;
                    temp_a2 = var_a1_2->unk0 + var_a2;
                    var_a1_2 += 0x80;
                    var_a2 = var_a6 + (temp_at_13 + (temp_v0_2 + temp_a2));
                } while (var_a1_2 != temp_t0_2);
                var_s1 = var_a2;
            }
        }
        arg_sp0.unk-C8 = (s64) saved_reg_ra;
        arg_sp0.unk-C0 = (s64) saved_reg_s0;
    }
    temp_a1 = arg_sp0.unk-48;
    arg_sp0.unk-C0 = (s64) saved_reg_s0;
    arg_sp0.unk-C8 = (s64) saved_reg_ra;
    *temp_a1 = var_s1;
    temp_a0 = (((s32) var_s1 * 8) - var_s1) * 4;
    arg_sp0.unk-40 = temp_a0;
    temp_v0_3 = Xalloc(temp_a0, temp_a1, (s32) var_a2, (s32 *) var_a3, var_a4, var_a5, var_a6, (s64) var_a7);
    *temp_s6 = temp_v0_3;
    if (temp_v0_3 == NULL) {
        return 0;
    }
    temp_a1_2 = arg_sp0.unk-80;
    temp_v0_4 = Xalloc(temp_a1_2 * 0x18, temp_a1_2);
    *temp_s7 = temp_v0_4;
    if (temp_v0_4 != NULL) {
        temp_a6 = arg_sp0.unk-80;
        arg_sp0.unk-78 = (s64) var_s1;
        arg_sp0.unk-E0 = (s64) saved_reg_s5;
        arg_sp0.unk-E8 = (s64) arg1;
        arg_sp0.unk-D8 = (s64) saved_reg_s4;
        arg_sp0.unk-D0 = (s64) saved_reg_s3;
        var_s4 = 0;
        temp_sp = sp - (((temp_a6 * 0xC) + 0xF) & ~0xF);
        arg_sp0.unk-90 = temp_sp;
        if (temp_a6 > 0) {
            var_s3 = 0;
            var_s2 = temp_v0_4;
            var_s1_2 = arg_sp0.unk-E8;
loop_23:
            temp_a1_3 = var_s1_2->unk0;
            var_s0 = var_s1_2->unk8;
            var_s2->unk0 = temp_a1_3;
            arg_sp0.unk-88 = var_s3;
            temp_v0_5 = saved_reg_gp->unk-758C(var_s1_2->unk0 * 8, temp_a1_3, var_s3);
            var_a5_2 = temp_v0_5;
            var_a7_3 = 1;
            var_a1_3 = 0;
            var_s2->unk4 = temp_v0_5;
            if (temp_v0_5 != NULL) {
                temp_a4_3 = var_s1_2->unk1C;
                var_s3 += 1;
                if (temp_a4_3 != 0) {
                    var_a3_2 = arg_sp0.unk-90;
                    if (arg_sp0.unk-A0 > 0) {
loop_27:
                        temp_at_14 = *var_a3_2;
                        var_a3_2 += 0xC;
                        var_a2_3 = var_a1_3;
                        if (temp_at_14 != temp_a4_3) {
                            var_a1_3 += 1;
                            if (var_a1_3 == arg_sp0.unk-A0) {
                                goto block_29;
                            }
                            goto loop_27;
                        }
                    } else {
                        var_a1_3 = 0;
block_29:
                        var_a2_3 = var_a1_3;
                    }
                    if (arg_sp0.unk-A0 == var_a2_3) {
                        temp_a6_2 = arg_sp0.unk-90 + (var_a2_3 * 0xC);
                        temp_a6_2->unk0 = temp_a4_3;
                        temp_a6_2->unk8 = 0;
                        arg_sp0.unk-A0 = (s64) (arg_sp0.unk-A0 + 1);
                        var_a5_2 = var_s2->unk4;
                    }
                }
                var_a1_4 = 0;
                var_a3_3 = var_a5_2;
                if (var_s1_2->unk0 > 0) {
                    var_t0_3 = var_s4;
                    var_a5_3 = var_s4 * 0x1C;
                    do {
                        temp_a6_3 = *temp_s6 + var_a5_3;
                        temp_a6_3->unk0 = 0;
                        temp_a6_3->unk8 = (s32) var_s1_2->unk1C;
                        temp_a6_3->unkC = 0;
                        temp_a6_3->unk10 = (s32) (var_s1_2->unk4 + var_a1_4);
                        temp_a6_3->unk14 = 0;
                        temp_a6_3->unk18 = var_s0;
                        var_a3_3->unk0 = var_t0_3;
                        temp_a6_4 = var_s1_2->unk0;
                        var_a3_3->unk4 = (s32) (var_a7_3 % temp_a6_4);
                        var_a3_3 += 8;
                        var_a1_4 += 1;
                        var_a5_3 += 0x1C;
                        var_t0_3 += 1;
                        var_s0 += var_s1_2->unkC;
                        var_a7_3 += 1;
                        M2C_TRAP_IF(temp_a6_4 == 0);
                    } while (var_a1_4 < var_s1_2->unk0);
                }
                var_s2->unk8 = 0;
                var_s2->unkC = (s32) var_s1_2->unk10;
                var_s2->unk10 = (s32) var_s1_2->unk14;
                temp_v0_6 = var_s1_2->unk18;
                var_s2 += 0x18;
                var_s1_2 += 0x20;
                var_s4 += var_a1_4;
                var_s2->unk-4 = temp_v0_6;
                if (var_s3 != arg_sp0.unk-80) {
                    goto loop_23;
                }
                goto block_33;
            }
            goto block_54;
        }
block_33:
        temp_sp_2 = temp_sp - (((var_s4 * 4) + 0xF) & ~0xF);
        if (arg_sp0.unk-A0 > 0) {
            arg_sp0.unk-98 = 0;
            var_s5 = arg_sp0.unk-90;
loop_38:
            var_a1_5 = var_s5->unk0;
            var_a3_4 = *var_a1_5;
            var_s1_3 = 0;
            var_t1_2 = var_a1_5;
            if (var_a3_4 != -1) {
loop_47:
                temp_t2 = *temp_s7 + (var_a3_4 * 0x18);
                temp_t0_3 = temp_t2->unk0;
                var_a5_4 = temp_sp_2 + (var_s1_3 * 4);
                temp_t2_2 = temp_t2->unk4;
                if (temp_t0_3 > 0) {
                    var_a7_4 = temp_t0_3 & 3;
                    temp_ra = temp_t0_3 >> 2;
                    var_a3_5 = temp_t2_2;
                    if (var_a7_4 != 0) {
                        do {
                            var_a7_4 -= 1;
                            var_a5_4 += 4;
                            temp_v0_7 = *var_a3_5;
                            var_a3_5 += 8;
                            var_a5_4->unk-4 = temp_v0_7;
                        } while (var_a7_4 != 0);
                    }
                    if (temp_ra != 0) {
                        var_v0_2 = var_a3_5;
                        if (temp_ra >= 2) {
                            var_at_2 = var_a3_5->unk0;
                            var_v1_2 = var_a5_4;
                            do {
                                var_v1_2->unk0 = var_at_2;
                                var_v1_2->unk4 = (s32) var_v0_2->unk8;
                                var_v1_2->unk8 = (s32) var_v0_2->unk10;
                                var_v1_2->unkC = (s32) var_v0_2->unk18;
                                var_v0_2 += 0x20;
                                var_v1_2 += 0x10;
                                var_at_2 = var_v0_2->unk0;
                            } while (var_v0_2 != (((temp_t0_3 * 8) + temp_t2_2) - 0x20));
                            var_a1_5 = var_v1_2;
                            var_a1_5->unk0 = var_at_2;
                            var_a1_5->unk4 = (s32) var_v0_2->unk8;
                            var_a1_5->unk8 = (s32) var_v0_2->unk10;
                            var_a1_5->unkC = (s32) var_v0_2->unk18;
                        } else {
                            var_a1_5 = var_a5_4;
                            var_a1_5->unk0 = var_a3_5->unk0;
                            var_a1_5->unk4 = (s32) var_a3_5->unk8;
                            var_a1_5->unk8 = (s32) var_a3_5->unk10;
                            var_a1_5->unkC = (s32) var_a3_5->unk18;
                        }
                    }
                }
                var_a3_4 = var_t1_2->unk4;
                var_t1_2 += 4;
                var_s1_3 += (temp_t0_3 < 0) ? 0 : temp_t0_3;
                if (var_a3_4 != -1) {
                    goto loop_47;
                }
            }
            temp_s0 = var_s1_3 * 4;
            arg_sp0.unk-88 = (s64) arg_sp0.unk-98;
            temp_v0_8 = saved_reg_gp->unk-758C(temp_s0, (s32) var_a1_5);
            if (temp_v0_8 != NULL) {
                saved_reg_gp->unk-7404(temp_v0_8, temp_sp_2, temp_s0);
                var_s5->unk8 = var_s1_3;
                temp_a6_5 = arg_sp0.unk-98 + 1;
                var_s5->unk4 = temp_v0_8;
                var_s5 += 0xC;
                arg_sp0.unk-98 = temp_a6_5;
                if (temp_a6_5 != arg_sp0.unk-A0) {
                    goto loop_38;
                }
                goto block_59;
            }
            var_s1_4 = 0;
loop_74:
            var_s1_4 += 1;
            if (var_s5->unk8 != 0) {
                Xfree((s64) var_s5->unk4);
            }
            if (var_s1_4 != arg_sp0.unk-A0) {
                goto loop_74;
            }
block_54:
            temp_a0_2 = *temp_s7;
            if (arg_sp0.unk-88 > 0) {
                var_s1_5 = temp_a0_2;
                temp_s2 = temp_a0_2 + (arg_sp0.unk-88 * 0x18);
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x104($s1) */);
                    Xfree((s64) var_s1_5->unk4);
                    var_s1_5 += 0x18;
                } while (var_s1_5 != temp_s2);
            }
            Xfree((s64) *temp_s7);
            Xfree((s64) *temp_s6);
            return 0;
        }
block_59:
        temp_a1_4 = *temp_s6;
        if (arg_sp0.unk-78 > 0) {
            var_a3_6 = temp_a1_4;
loop_64:
            temp_a1_5 = var_a3_6->unk8;
            var_a0_2 = arg_sp0.unk-90;
            if (temp_a1_5 != 0) {
                if (arg_sp0.unk-A0 > 0) {
loop_67:
                    if (var_a0_2->unk0 != temp_a1_5) {
                        var_a0_2 += 0xC;
                        if (var_a0_2 == (arg_sp0.unk-90 + (arg_sp0.unk-A0 * 0xC))) {

                        } else {
                            goto loop_67;
                        }
                    } else {
                        var_a3_6->unk8 = (s32) var_a0_2->unk4;
                        var_a3_6->unk4 = (s32) var_a0_2->unk8;
                    }
                }
            } else {
                var_a3_6->unk4 = 0;
            }
            var_a3_6 += 0x1C;
            if (var_a3_6 != (temp_a1_4 + arg_sp0.unk-40)) {
                goto loop_64;
            }
        }
        return 1;
    }
    saved_reg_gp->unk-75A0(*temp_s6);
    return 0;
}

s32 nfbGenericScreenInit(void *arg0, void *arg1, s32 arg2, s32 arg3, s64 arg4) {
    s64 sp80;
    s64 sp78;
    u64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s16 temp_a2_5;
    s32 *temp_a3;
    s32 *temp_a4;
    s32 *temp_at;
    s32 *temp_v1;
    s32 *var_a0_5;
    s32 *var_a0_6;
    s32 *var_a1;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_v0;
    s32 temp_v0_15;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_s0;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s3_4;
    s32 var_s3_7;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_5;
    s32 var_s5_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_a0;
    s64 temp_v0_6;
    s64 var_a0_4;
    s64 var_a1_4;
    s64 var_ra;
    s64 var_s3;
    s64 var_s3_5;
    s64 var_s3_6;
    s64 var_s4;
    s64 var_s5;
    u16 temp_a2_2;
    u16 temp_a3_2;
    u16 temp_a3_3;
    u16 temp_a3_6;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 var_a1_2;
    u32 var_a3;
    u32 var_s3_8;
    u32 var_s4_4;
    void *temp_a2_4;
    void *temp_s1;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_2;
    void *temp_v0_4;
    void *temp_v0_9;

    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_s5 = saved_reg_s5;
    var_ra = saved_reg_ra;
    sp10 = arg4;
    sp18 = 0;
    sp20 = 0;
    sp8 = 0;
    sp28 = -1;
    if (arg3 != 0) {
        if (arg2 > 0) {
            var_s4_2 = 0;
            var_s3_2 = 0;
            do {
                temp_v0 = FakeClientID(0);
                *(arg1->unk24 + var_s4_2) = temp_v0;
                var_s4_2 += 0x24;
                temp_at = arg1->unk28 + var_s3_2;
                var_s3_2 += 4;
                *temp_at = temp_v0;
            } while (var_s4_2 != (arg2 * 0x24));
            var_ra = sp58;
            var_s4 = sp68;
            var_s5 = sp80;
            var_v0 = arg2;
            var_s3 = sp60;
        } else {
            var_v0 = 0;
        }
        sp60 = var_s3;
        sp58 = var_ra;
        sp0 = var_v0;
    }
    saved_reg_gp->unk-30F8 = -1;
    sp60 = var_s3;
    temp_s3 = saved_reg_gp - 0x3100;
    saved_reg_gp->unk-30F4 = -1;
    temp_s1 = temp_s3 + 0xC;
    sp58 = var_ra;
    temp_s3_2 = temp_s3 + 8;
    if (saved_reg_gp->unk-7868(arg0, temp_s3_2, temp_s1) != 0) {
        if (saved_reg_gp->unk-7B84(arg0, temp_s3_2, temp_s1) != 0) {
            if (saved_reg_gp->unk-7988(arg0, temp_s3_2, temp_s1) != 0) {
                if (saved_reg_gp->unk-7A7C(arg0, temp_s3_2, temp_s1) != 0) {
                    if ((saved_reg_gp->unk-7294(arg0, saved_reg_gp->unk-30F8, 0x3C) != 0) && (saved_reg_gp->unk-7314(arg0, saved_reg_gp->unk-30F4, 0x70) != 0)) {
                        temp_v0_2 = saved_reg_gp->unk-758C(0x10C);
                        if (temp_v0_2 != NULL) {
                            temp_a1 = arg0->unk84;
                            temp_a2 = arg0->unk80;
                            var_a0 = 0x80;
                            var_v0_2 = 0;
                            do {
                                var_a0 -= 1;
                                temp_v1 = var_v0_2 + arg0;
                                temp_at_2 = *(var_v0_2 + arg1->unk1C);
                                var_v0_2 += 4;
                                *temp_v1 = temp_at_2;
                            } while (var_a0 > 0);
                            var_a0_2 = 0x43;
                            var_v0_3 = 0;
                            do {
                                var_a0_2 -= 1;
                                temp_a3 = var_v0_3 + temp_v0_2;
                                temp_v1_2 = *(var_v0_3 + arg0->unk74);
                                var_v0_3 += 4;
                                *temp_a3 = temp_v1_2;
                            } while (var_a0_2 > 0);
                            arg0->unk1B4 = (s32) arg0->unk1B4;
                            arg0->unk94 = (s32) arg0->unk94;
                            arg0->unk90 = (s32) arg0->unk90;
                            arg0->unk8C = (s32) arg0->unk8C;
                            arg0->unk88 = (s32) arg0->unk88;
                            arg0->unk84 = temp_a1;
                            arg0->unk80 = temp_a2;
                            arg0->unk4 = (s32) arg0->unk4;
                            arg0->unk0 = (s32) arg0->unk0;
                            arg0->unk74 = temp_v0_2;
                            temp_v0_2->unk10 = arg0;
                            temp_v0_3 = temp_v0_2->unkA0;
                            temp_v0_2->unkC = (u16) arg1->unk18;
                            temp_a3_2 = arg1->unk1A;
                            temp_v0_2->unkE = temp_a3_2;
                            if (temp_v0_3 != 0) {
                                temp_v0_4 = saved_reg_gp->unk-758C(temp_v0_3 * 8, temp_a1, temp_a2, temp_a3_2);
                                temp_v0_2->unkA4 = temp_v0_4;
                                saved_reg_gp->unk-7574(temp_v0_4, 0, temp_v0_2->unkA0 * 8);
                            }
                            temp_v0_2->unkDC = 0;
                            if (gammaAdjust != NULL) {
                                saved_reg_gp->unk-7290(gammaAdjust);
                                saved_reg_gp->unk-3100 = (f64) (second half of f64);
                                if (!((second half of f64) <= saved_reg_gp->unk-3270)) {
                                    if (!(saved_reg_gp->unk-3268 <= (second half of f64))) {

                                    } else {
                                        goto block_65;
                                    }
                                } else {
block_65:
                                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x45B0, gammaAdjust);
                                    saved_reg_gp->unk-3100 = (f64) saved_reg_gp->unk-3260;
                                }
                            } else {
                                saved_reg_gp->unk-3100 = (f64) saved_reg_gp->unk-3258;
                            }
                            temp_a5 = arg1->unk20;
                            arg0->unk78 = (s16) temp_a5;
                            temp_a4 = arg1->unk24;
                            arg0->unk7C = temp_a4;
                            temp_a3_3 = arg1->unk18;
                            arg0->unk8 = temp_a3_3;
                            temp_a2_2 = arg1->unk1A;
                            arg0->unkA = temp_a2_2;
                            saved_reg_gp->unk-728C(arg0, sp10, temp_a2_2, temp_a3_3, temp_a4, temp_a5);
                            temp_a2_3 = arg1->unk34;
                            if (temp_a2_3 != 0) {
                                temp_v0_5 = arg1->unk20;
                                var_a0_3 = 0;
                                if (temp_v0_5 > 0) {
                                    var_a1 = arg1->unk24;
loop_28:
                                    temp_at_3 = *var_a1;
                                    var_a1 += 0x24;
                                    var_s3_3 = var_a0_3;
                                    if (temp_at_3 != temp_a2_3) {
                                        var_a0_3 += 1;
                                        if (var_a0_3 == temp_v0_5) {
                                            goto block_30;
                                        }
                                        goto loop_28;
                                    }
                                    sp8 = 1;
                                    sp0 = var_s3_3;
                                } else {
                                    var_a0_3 = 0;
block_30:
                                    var_s3_3 = var_a0_3;
                                    sp0 = var_a0_3;
                                }
                                if (var_s3_3 >= temp_v0_5) {
                                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x45F0);
                                }
                            }
                            var_s3_4 = sp0;
                            if (sp8 != 0) {

                            } else {
                                temp_v0_6 = saved_reg_gp->unk-73FC(&sub_5e4f0000 + 0x4640, 0x11, 1, sp8);
                                sp30 = temp_v0_6;
                                if (temp_v0_6 != 0xE0000000) {
                                    if (sp30 == 0) {
                                        goto block_103;
                                    }
                                } else {
block_103:
                                    saved_reg_gp->unk-755C(&sub_5e4f0000 + 0x4658);
                                }
                                if (arg1->unk38 != 0) {
                                    sp80 = var_s5;
                                    sp68 = var_s4;
                                    var_a1_2 = temp_v0_2->unk4C;
                                    var_s4_3 = 0;
                                    if (arg1->unk20 > 0) {
                                        var_s5_2 = 0;
                                        var_a0_4 = 0;
loop_92:
                                        var_s3_4 = var_s4_3;
                                        var_s5_2 += 0x14;
                                        if ((var_a1_2 < (u32) *(temp_v0_2->unk30 + (*(temp_v0_2->unk58 + var_s5_2) * 4))) && (temp_a5_2 = arg1->unk2C, temp_a2_4 = arg1->unk24 + var_a0_4, (((temp_a2_4->unk4 == temp_a5_2) | (temp_a5_2 < 0)) != 0)) && (temp_a5_3 = arg1->unk30, temp_a3_4 = (temp_a2_4->unkA == temp_a5_3) | (temp_a5_3 < 0), (temp_a3_4 != 0))) {
                                            sp78 = var_a0_4;
                                            sp70 = (u64) var_a1_2;
                                            var_a1_2 = (u32) sp70;
                                            var_a0_4 = sp78;
                                            if (saved_reg_gp->unk-74AC(arg0->unk0, var_s4_3, sp30, temp_a3_4) != 0) {
                                                sp28 = (s64) ((sp28 == -1) ? var_s4_3 : (s32) sp28);
                                                goto block_91;
                                            }
                                            sp28 = -1;
                                            var_s4 = sp68;
                                        } else {
block_91:
                                            var_s4_3 += 1;
                                            var_a0_4 += 0x24;
                                            if (var_s4_3 < arg1->unk20) {
                                                goto loop_92;
                                            }
                                            goto block_96;
                                        }
                                    } else {
block_96:
                                        var_s3_4 = var_s4_3;
                                        var_s4 = sp68;
                                    }
                                } else {
                                    temp_a4_2 = arg1->unk2C;
                                    if (temp_a4_2 >= 0) {
                                        goto block_107;
                                    }
                                    var_s3_4 = 0;
                                    if (arg1->unk30 < 0) {

                                    } else {
block_107:
                                        temp_v0_7 = arg1->unk20;
                                        var_a1_3 = 0;
                                        if (temp_v0_7 > 0) {
                                            var_a0_5 = arg1->unk24;
loop_112:
                                            var_a2 = 1;
                                            var_s3_4 = var_a1_3;
                                            if ((((var_a0_5->unk4 == temp_a4_2) | (temp_a4_2 < 0)) == 0) || (temp_a3_5 = arg1->unk30, (((var_a0_5->unkA == temp_a3_5) | (temp_a3_5 < 0)) == 0))) {
                                                var_a2 = 0;
                                            }
                                            var_a0_5 += 0x24;
                                            if (var_a2 == 0) {
                                                var_a1_3 += 1;
                                                if (var_a1_3 != temp_v0_7) {
                                                    goto loop_112;
                                                }
                                                goto block_116;
                                            }
                                        } else {
                                            var_a1_3 = 0;
block_116:
                                            var_s3_4 = var_a1_3;
                                        }
                                    }
                                }
                            }
                            var_s3_5 = (sp28 != -1) ? sp28 : (s64) var_s3_4;
                            if (var_s3_5 < arg1->unk20) {

                            } else {
                                saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x4688);
                                temp_v0_8 = arg1->unk20;
                                var_a1_4 = 0;
                                if (temp_v0_8 > 0) {
                                    var_a0_6 = arg1->unk24;
loop_59:
                                    var_a2_2 = 0;
                                    var_s3_6 = var_a1_4;
                                    if ((var_a0_6->unk4 == 3) && (var_a0_6->unkA == 8)) {
                                        var_a2_2 = 1;
                                    }
                                    var_a0_6 += 0x24;
                                    if (var_a2_2 == 0) {
                                        var_a1_4 += 1;
                                        var_s3_6 = var_a1_4;
                                        if (var_a1_4 != temp_v0_8) {
                                            goto loop_59;
                                        }
                                    }
                                } else {
                                    var_s3_6 = 0;
                                }
                                var_s3_5 = (var_s3_6 >= temp_v0_8) ? 0 : var_s3_6;
                            }
                            temp_a3_6 = var_s3_5 * 0x24;
                            temp_a4_3 = *(arg1->unk24 + temp_a3_6);
                            arg0->unk18 = temp_a4_3;
                            temp_a2_5 = (arg1->unk24 + temp_a3_6)->unkA;
                            arg0->unk12 = (s8) temp_a2_5;
                            temp_a1_2 = temp_v0_2->unk54;
                            temp_a0 = temp_a1_2 * 0xC;
                            sp38 = temp_a0;
                            temp_v0_9 = saved_reg_gp->unk-758C(temp_a0, temp_a1_2, (s32) temp_a2_5, temp_a3_6, temp_a4_3);
                            temp_v0_2->unk5C = temp_v0_9;
                            if (temp_v0_9 != NULL) {
                                temp_v0_10 = saved_reg_gp->unk-758C(sp38);
                                temp_v0_2->unk60 = temp_v0_10;
                                if (temp_v0_10 != NULL) {
                                    sp68 = var_s4;
                                    var_s4_4 = 0;
                                    if (temp_v0_2->unk54 != 0) {
                                        var_s3_7 = 0;
                                        do {
                                            var_s4_4 += 1;
                                            arg0->unk154(temp_v0_2->unk5C + var_s3_7, 0, 0);
                                            arg0->unk154(temp_v0_2->unk60 + var_s3_7, 0, 0);
                                            var_s3_7 += 0xC;
                                        } while (var_s4_4 < (u32) temp_v0_2->unk54);
                                    }
                                    temp_v0_2->unk50 = (s32) *arg1->unk24;
                                    saved_reg_gp->unk-7680(arg0, saved_reg_gp - 0x3868);
                                    temp_a1_3 = temp_v0_2->unk28;
                                    temp_v0_11 = saved_reg_gp->unk-758C(temp_a1_3 * 0xC, temp_a1_3);
                                    temp_v0_2->unk2C = temp_v0_11;
                                    if (temp_v0_11 == NULL) {
                                        return 0;
                                    }
                                    temp_v0_12 = saved_reg_gp->unk-758C(temp_v0_2->unk28 * 4);
                                    temp_v0_2->unk3C = temp_v0_12;
                                    if (temp_v0_12 == NULL) {
                                        return 0;
                                    }
                                    temp_v0_13 = saved_reg_gp->unk-758C(temp_v0_2->unk28 * 4);
                                    temp_v0_2->unk40 = temp_v0_13;
                                    if (temp_v0_13 == NULL) {
                                        return 0;
                                    }
                                    temp_v0_14 = saved_reg_gp->unk-758C(temp_v0_2->unk28 * 4);
                                    temp_v0_2->unk44 = temp_v0_14;
                                    if (temp_v0_14 != NULL) {
                                        var_a3 = temp_v0_2->unk28;
                                        var_s3_8 = 0;
                                        if (var_a3 != 0) {
                                            var_s0 = 0;
                                            var_s4_5 = 0;
                                            do {
                                                var_s3_8 += 1;
                                                arg0->unk154(temp_v0_2->unk2C + var_s0, 0, 0, var_a3);
                                                *(temp_v0_2->unk3C + var_s4_5) = 0;
                                                *(temp_v0_2->unk40 + var_s4_5) = 0;
                                                *(temp_v0_2->unk44 + var_s4_5) = 0;
                                                var_a3 = var_s3_8 < (u32) temp_v0_2->unk28;
                                                var_s0 += 0xC;
                                                var_s4_5 += 4;
                                            } while (var_a3 != 0);
                                        }
                                        if (serverGeneration == copyPlaneGeneration__DCD) {
                                            if (sp18 == 0) {
                                                goto block_100;
                                            }
                                        } else {
                                            temp_v0_15 = AllocateScreenPrivateIndex();
                                            copyPlaneScreenIndex__ECD = temp_v0_15;
                                            if (temp_v0_15 >= 0) {
                                                copyPlaneGeneration__DCD = serverGeneration;
                                            } else {
                                                sp20 = 1;
                                            }
                                            sp18 = sp20;
                                            if (sp20 == 0) {
block_100:
                                                *(arg0->unk1B4 + (copyPlaneScreenIndex__ECD * 4)) = nfbCopyPlane;
                                            }
                                        }
                                        saved_reg_gp->unk-7288(arg0, saved_reg_gp - 0x37F0);
                                        if (serverGeneration == saved_reg_gp->unk-2FFC) {
                                            var_v0_4 = saved_reg_gp->unk-3000;
                                            if (var_v0_4 >= 0) {
                                                goto block_79;
                                            }
                                        } else {
                                            var_v0_4 = AllocateScreenPrivateIndex();
                                            saved_reg_gp->unk-3000 = var_v0_4;
                                            saved_reg_gp->unk-2FFC = (s32) serverGeneration;
                                            if (var_v0_4 >= 0) {
block_79:
                                                *(arg0->unk1B4 + (var_v0_4 * 4)) = 0xD8;
                                            }
                                        }
                                        return 1;
                                    }
                                    return 0;
                                }
                                Xfree((s64) temp_v0_2->unk5C);
                                Xfree((s64) temp_v0_2);
                                return 0;
                            }
                            saved_reg_gp->unk-75A0(temp_v0_2);
                            return 0;
                        }
                        return 0;
                    }
                    return 0;
                }
                return 0;
            }
            return 0;
        }
        return 0;
    }
    return 0;
}

void nfbGetBestVisualForPEX(void *arg0, s32 *arg1, s32 *arg2) {
    void *temp_at;

    temp_at = arg0->unk74;
    *arg1 = temp_at->unkCC;
    *arg2 = temp_at->unkD0;
}

void nfbInitRootWindow(void *arg0, u8 *arg3, u8 *arg5, s32 arg6) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    u8 sp4E;
    s16 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    ? sp20;
    u16 sp1E;
    u16 sp1C;
    s16 sp1A;
    s16 sp18;
    s32 sp10;
    s32 sp8;
    ? sp4;
    ? sp2;
    ? (*temp_t9)(s64);
    s16 temp_at_2;
    s16 temp_v1;
    s16 var_at_3;
    s32 *temp_s2;
    s32 temp_a2_2;
    s32 temp_at_3;
    s32 temp_s1_2;
    s32 temp_s2_2;
    s32 temp_s2_3;
    s32 temp_s3;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a0_2;
    s32 var_a4;
    s32 var_a6;
    s32 var_at_2;
    s32 var_s1;
    s32 var_s4;
    s32 var_s7;
    u8 *temp_a2;
    u8 *temp_at;
    u8 *var_a0;
    u8 *var_a1;
    u8 *var_a1_2;
    u8 *var_a3;
    u8 *var_a5;
    u8 *var_a5_2;
    u8 *var_a5_3;
    u8 *var_s6;
    u8 var_at;
    void *temp_a0;
    void *temp_s0;
    void *temp_s1;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_6;
    void *var_s0;

    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_v1 = arg0->unk10;
    var_s6 = arg0->unk14;
    var_a4 = temp_v1 - 1 + 1;
    sp80 = (s64) arg0;
    if (temp_v1 > 0) {
        var_a5_2 = var_s6;
        var_a4 = (var_a4 * 8) + var_s6;
        if (var_a4 >= 2) {
            var_a1 = var_a5_2;
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
            var_a0 = var_s6;
            var_a3 = var_a5_2 + 8;
            var_at = *var_s6;
            temp_v1_2 = var_a4 - 8;
            var_a4 = (s32) *var_a5_2;
loop_3:
            var_a6 = ((s32) var_at < var_a4) != 0;
            var_a4 = (s32) var_a3->unk0;
            temp_at = (((var_a6 != 0) ? var_a5_2 : &sp4E)->unk2 < 1) ? var_a0 : var_a1;
            var_a5_2 = var_a3 + 8;
            var_a0 = (var_a6 != 0) ? temp_at : var_a0;
            var_at = *var_a0;
            if (var_a3 != temp_v1_2) {
                temp_v0 = ((s32) var_at < var_a4) != 0;
                temp_at_2 = ((temp_v0 != 0) ? var_a3 : &sp4E)->unk2;
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                var_a4 = (s32) var_a3->unk8;
                var_a1 = var_a5_2;
                temp_a2 = (temp_at_2 < 1) ? var_a0 : var_a3;
                var_a3 = var_a5_2 + 8;
                var_a0 = (temp_v0 != 0) ? temp_a2 : var_a0;
                var_at = *var_a0;
                if (var_a5_2 == temp_v1_2) {
                    var_a5_3 = var_a1;
                    var_a1_2 = var_a5_2;
                } else {
                    goto loop_3;
                }
            } else {
                var_a1_2 = var_a3;
                var_a5_3 = var_a3;
            }
            temp_t1 = ((s32) var_at < var_a4) != 0;
            var_a5 = (temp_t1 == 0) ? var_a0 : ((((temp_t1 == 0) ? &sp4E : var_a1_2)->unk2 < 1) ? var_a0 : var_a5_3);
            var_s6 = var_a5;
        } else {
            temp_v1_3 = ((s32) *var_s6 < (s32) *var_a5_2) != 0;
            var_a6 = ((temp_v1_3 != 0) ? var_a5_2 : &sp4E)->unk2 < 1;
            var_a5 = (var_a6 != 0) ? var_s6 : var_a5_2;
            var_s6 = (temp_v1_3 != 0) ? var_a5 : var_s6;
        }
    }
    temp_s0 = *(WindowTable + (sp80->unk0 * 4));
    temp_a2_2 = saved_reg_gp->unk-30F8 * 4;
    saved_reg_gp->unk-7BFC(temp_s0, (*(temp_s0->unk84 + temp_a2_2))->unk4, temp_a2_2, var_a3, var_a4, var_a5, var_a6, &sp4E);
    if (solidRootOverrideColorName != NULL) {
        if (saved_reg_gp->unk-7284(sp80->unk0, solidRootOverrideColorName, strlen(solidRootOverrideColorName), sp, &sp2, &sp4) != 0) {

        } else {
            FatalError(&sub_5e4f0000 + 0x47A8, solidRootOverrideColorName);
        }
        if (temp_s0->unk1 != 2) {
            temp_v0_2 = temp_s0->unk78;
            if (temp_v0_2 != NULL) {
                var_at_2 = temp_v0_2->unk8;
            } else {
                var_at_2 = saved_reg_gp->unk-7598(temp_s0)->unk78->unk8;
            }
            var_a0_2 = var_at_2;
        } else {
            var_a0_2 = 0;
        }
        if (saved_reg_gp->unk-7444(saved_reg_gp->unk-7348(var_a0_2, 6), sp, &sp2, &sp4, &sp8, *serverClient) != 0) {
            FatalError(&sub_5e4f0000 + 0x47D8, solidRootOverrideColorName);
        }
        temp_v0_3 = saved_reg_gp->unk-7568(sp80->unk12, sp80);
        temp_s1 = temp_v0_3;
        temp_a0 = temp_v0_3;
        sp10 = sp8;
        saved_reg_gp->unk-75B0(temp_a0, 4, &sp10, sp8);
        saved_reg_gp->unk-75B4(temp_s0->unk6C, temp_s1);
        sp1A = 0;
        sp18 = 0;
        sp1C = temp_s0->unkC;
        sp1E = temp_s0->unkE;
        temp_s1->unk48->unk2C(temp_s0->unk6C, temp_s1, 1, &sp18);
        saved_reg_gp->unk-759C(temp_s1);
    }
    if (gammaAdjust == NULL) {

    } else {
        temp_v0_4 = MakeAtom(&sub_5e4f0000 + 0x4810, 0xF, 1);
        if ((temp_v0_4 != 0xE0000000) && (temp_v0_4 != 0)) {

        } else {
            ErrorF(&sub_5e4f0000 + 0x4820);
            exit(1);
        }
        ChangeWindowProperty((s64) temp_s0, temp_v0_4, 0x1F, 8, 0, strlen(gammaAdjust), gammaAdjust, 0);
    }
    GetBestVisualForPEX = nfbGetBestVisualForPEX;
    temp_v0_5 = MakeAtom(&sub_5e4f0000 + 0x4848, 0xC, 1, nfbGetBestVisualForPEX, &GetBestVisualForPEX);
    if (temp_v0_5 != 0xE0000000) {
        if (temp_v0_5 == 0) {
            goto block_58;
        }
    } else {
block_58:
        saved_reg_gp->unk-755C(&sub_5e4f0000 + 0x4858);
    }
    var_s4 = 0;
    var_s7 = 0;
    if (var_s6->unk2 > 0) {
        sp90 = (s64) temp_s0;
        var_at_3 = sp80->unk78;
loop_28:
        var_s1 = 0;
        var_s7 += 1;
        temp_s2 = var_s6->unk4 + var_s4;
        var_s4 += 4;
        temp_s2_2 = *temp_s2;
        var_s0 = sp80->unk7C;
        if (var_at_3 > 0) {
loop_33:
            if ((var_s0->unk0 == temp_s2_2) && (var_s0->unk4 == 4)) {
                temp_v0_6 = nmbxLookupCapability(sp80->unk0, var_s1, temp_v0_5);
                if (temp_v0_6 == NULL) {
                    goto block_31;
                }
                if ((u32) temp_v0_6->unk8 < 0x15U) {
block_31:
                    var_at_3 = sp80->unk78;
                    goto block_32;
                }
                sp80->unk74->unkCC = temp_s2_2;
                sp80->unk74->unkD0 = (s32) var_s6->unk0;
                temp_s3 = Ones(var_s0->unkC);
                temp_s1_2 = Ones(var_s0->unk10);
                temp_s2_3 = Ones(var_s0->unk14);
                temp_v0_7 = saved_reg_gp->unk-7594(0);
                if (saved_reg_gp->unk-72A8(temp_v0_7, sp80, var_s0, &sp20, 0, 0) != 0) {
                    ErrorF(&sub_5e4f0000 + 0x4880);
                    saved_reg_gp->unk-7438(1);
                }
                if (sp90->unk78 == 0) {
                    if (saved_reg_gp->unk-7280(sp90) == 0) {
                        ErrorF(&sub_5e4f0000 + 0x48A8);
                        saved_reg_gp->unk-7438(1);
                    }
                }
                sp28 = temp_v0_7;
                temp_at_3 = (1 << temp_s3) - 1;
                sp2C = temp_at_3;
                sp4C = 0;
                sp48 = var_s0->unk0;
                temp_s8 = (1 << temp_s1_2) - 1;
                sp34 = temp_s8;
                sp30 = 1 << var_s0->unk18;
                temp_s7 = (1 << temp_s2_3) - 1;
                sp3C = temp_s7;
                sp38 = 1 << var_s0->unk1C;
                sp88 = (s64) temp_at_3;
                sp40 = 1 << var_s0->unk20;
                sp44 = 0;
                if (ChangeWindowProperty(sp90, 0x19, 0x18, 0x20, 0, 0xA, &sp28, 0) != 0) {
                    ErrorF(&sub_5e4f0000 + 0x48D0);
                    saved_reg_gp->unk-7438(1);
                }
                sp2C = (s32) sp88;
                sp40 = 0;
                sp3C = 0;
                sp38 = 0;
                sp34 = 0;
                sp30 = 1 << var_s0->unk18;
                sp44 = (1 << var_s0->unk18) - 1;
                if (ChangeWindowProperty(sp90, 0x1E, 0x18, 0x20, 0, 0xA, &sp28, 0) != 0) {
                    ErrorF(&sub_5e4f0000 + 0x48D0);
                    saved_reg_gp->unk-7438(1);
                }
                sp34 = temp_s8;
                sp30 = 0;
                sp2C = 0;
                sp40 = 0;
                sp3C = 0;
                sp38 = 1 << var_s0->unk1C;
                sp44 = (1 << var_s0->unk1C) - 1;
                if (ChangeWindowProperty(sp90, 0x1D, 0x18, 0x20, 0, 0xA, &sp28, 0) != 0) {
                    ErrorF(&sub_5e4f0000 + 0x48D0);
                    saved_reg_gp->unk-7438(1);
                }
                sp3C = temp_s7;
                sp38 = 0;
                sp34 = 0;
                sp30 = 0;
                sp2C = 0;
                sp40 = 1 << var_s0->unk20;
                sp44 = (1 << var_s0->unk20) - 1;
                if (ChangeWindowProperty(sp90, 0x1A, 0x18, 0x20, 0, 0xA, &sp28, 0) != 0) {
                    ErrorF(&sub_5e4f0000 + 0x48D0);
                    saved_reg_gp->unk-7438(1);
                }
            } else {
block_32:
                var_s1 += 1;
                var_s0 += 0x24;
                if (var_s1 < var_at_3) {
                    goto loop_33;
                }
                goto block_27;
            }
        } else {
block_27:
            if (var_s7 < var_s6->unk2) {
                goto loop_28;
            }
            goto block_52;
        }
    } else {
block_52:
        sp80->unk74->unkCC = 0;
        sp80->unk74->unkD0 = 0;
    }
    nfbGenericScreenInit((void *) sp80);
    temp_t9 = sp80->unk74->unkBC;
    if (temp_t9 != NULL) {
        temp_t9(sp80);
    }
}

void nfbSaveAreas(s64 arg1, void *arg2, s64 arg3, void *arg4) {
    nfbDoBitBltSP(arg4, arg1, arg2, arg3, 3, -1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x40, 0x44, 0x48, 0x4c], gap at: 0x20. */
void nfbRestoreAreas(s64 arg0, s64 arg1, s64 arg2, s64 arg3, void *arg4) {
    s32 temp_a3_2;
    s64 temp_a2_3;
    s64 temp_a3;
    s64 temp_a4;
    u16 temp_a2_2;
    void *temp_a2;
    void *temp_a6;

    unksp38 = arg0;
    unksp20 = arg3;
    unksp30 = arg1;
    temp_a3 = -arg2;
    unksp28 = temp_a3;
    nfbDoBitBltPS(arg4, arg0, arg1, temp_a3, -arg3, 3, -1);
    temp_a6 = arg4->unk10;
    if (temp_a6->unk74->unkDC != 0) {
        temp_a6->unk154(sp, 0, 0);
        temp_a6->unk158(sp, unksp30);
        temp_a2 = temp_a6->unk74;
        temp_a2_2 = temp_a2->unkE2;
        temp_a3_2 = temp_a2->unkDC ^ 1;
        temp_a4 = -(s64) temp_a2_2;
        temp_a2_3 = (temp_a3_2 == 0) ? temp_a4 : (s64) temp_a2_2;
        unksp18 = temp_a2_3;
        temp_a6->unk178(sp, 0, temp_a2_3, temp_a3_2, temp_a4);
        nfbDoBitBltPS(arg4, unksp38, (s64) sp, unksp28, -(unksp20 + unksp18), 3, -1, unksp18);
        temp_a6->unk160(sp);
    }
}

s32 nfbCopyPlane(void *arg0, void *arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6, s32 arg7, void *arg_sp4, s32 arg_spC) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    ? sp20;
    s16 sp1E;
    s16 sp1C;
    s16 sp1A;
    s16 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s32 spC;
    void *sp4;
    ? *temp_a0_2;
    ? *temp_a1_3;
    ? *var_s2;
    s16 temp_a3_3;
    s16 temp_a3_4;
    s16 temp_a3_5;
    s16 temp_t2_2;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_t0;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_t1_2;
    s64 temp_t3;
    s64 temp_t8;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a1;
    s64 var_a4;
    s64 var_a5;
    s64 var_a6;
    s64 var_a7;
    s64 var_s1;
    s64 var_s3;
    s64 var_t1;
    s64 var_t3;
    s64 var_t8;
    s64 var_t9;
    u16 temp_a3;
    u16 temp_at;
    u8 temp_a1_4;
    u8 temp_s6_2;
    u8 temp_t1;
    void *temp_a0;
    void *temp_a3_2;
    void *temp_a4;
    void *temp_gp;
    void *temp_s6;
    void *temp_s7;
    void *temp_t2;

    temp_t1 = arg0->unk0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x5C7F0;
    if (temp_t1 == 1) {
        if (arg1->unk0 != 1) {
            if (temp_t1 == 1) {
                if ((arg1->unk0 != 0) || (temp_a1 = (s64) (arg4 << 0x30) >> 0x30, (arg0->unk2 != 1))) {
                    goto block_5;
                }
                if (((u32) (arg1->unk7C & 0xFFF) >> 0xB) != 0) {
                    sp48 = 0;
                    sp58 = temp_a1;
                    temp_s6 = *(arg2->unk4C + (temp_gp->unk-30F4 * 4));
                    sp50 = (s64) temp_s6;
                    var_t1 = (s64) (arg4 << 0x30) >> 0x30;
                    temp_s7 = **(arg1->unk84 + (temp_gp->unk-30F8 * 4));
                    temp_v0 = (s64) (arg3 << 0x30) >> 0x30;
                    temp_s5 = temp_s6->unk28;
                    temp_s8 = temp_s6->unk2C;
                    temp_s4 = temp_s6->unk34;
                    var_t3 = (s64) ((temp_v0 + arg5) << 0x30) >> 0x30;
                    temp_s6_2 = temp_s6->unk30;
                    var_a1 = (s64) ((temp_a1 + arg6) << 0x30) >> 0x30;
                    sp16 = (s16) var_a1;
                    var_s3 = arg4;
                    sp14 = (s16) var_t3;
                    var_s1 = arg3;
                    var_t8 = (s64) (arg3 << 0x30) >> 0x30;
                    sp12 = (s16) var_t1;
                    var_t9 = 0;
                    sp10 = (s16) var_t8;
                    if (temp_v0 >= 0) {
                        if (sp58 < 0) {
                            goto block_43;
                        }
                    } else {
                        var_t8 = 0;
                        sp48 = -arg3;
                        var_s1 = 0;
                        sp10 = 0;
                        if (sp58 < 0) {
block_43:
                            var_s3 = 0;
                            var_t1 = 0;
                            sp12 = 0;
                            var_t9 = -arg4;
                        }
                    }
                    temp_at = arg0->unkC;
                    sp40 = (s64) temp_at;
                    if ((s32) temp_at < ((s64) ((arg3 + arg5) << 0x30) >> 0x30)) {
                        var_t3 = (s64) (sp40 << 0x30) >> 0x30;
                        sp14 = (s16) var_t3;
                    }
                    temp_a3 = arg0->unkE;
                    if ((s32) temp_a3 < ((s64) ((arg4 + arg6) << 0x30) >> 0x30)) {
                        var_a1 = (s64) ((s64) temp_a3 << 0x30) >> 0x30;
                        sp16 = (s16) var_a1;
                    }
                    temp_at_2 = (arg1->unkA + arg_sp4 + var_t9) - var_t1;
                    temp_a1_2 = (s64) ((temp_at_2 + var_a1) << 0x30) >> 0x30;
                    temp_v0_2 = arg1->unk8 + arg7 + sp48;
                    temp_t8 = (s64) (temp_v0_2 << 0x30) >> 0x30;
                    sp10 = (s16) temp_t8;
                    temp_t3 = (s64) (((temp_v0_2 - var_t8) + var_t3) << 0x30) >> 0x30;
                    sp16 = (s16) temp_a1_2;
                    temp_t1_2 = (s64) ((temp_at_2 + var_t1) << 0x30) >> 0x30;
                    sp12 = (s16) temp_t1_2;
                    sp14 = (s16) temp_t3;
                    if ((temp_t8 < temp_t3) && (temp_t1_2 < temp_a1_2)) {
                        temp_a3_2 = sp50->unk8;
                        temp_a4 = temp_a3_2->unk8;
                        temp_s2 = arg0->unk1C;
                        sp80 = (s64) arg0->unk20;
                        if (temp_a4 != NULL) {
                            var_a0 = temp_a4->unk4;
                        } else {
                            var_a0 = 1;
                        }
                        if (var_a0 == 1) {
                            sp1E = (s16) temp_a1_2;
                            sp1C = (s16) temp_t3;
                            sp1A = (s16) temp_t1_2;
                            sp18 = (s16) temp_t8;
                            temp_t2 = temp_a3_2->unk8;
                            temp_a0 = (temp_t2 == NULL) ? temp_a3_2 : (temp_t2 + 8);
                            temp_t2_2 = temp_a0->unk0;
                            var_a5 = temp_t8;
                            var_a7 = temp_t1_2;
                            var_a4 = temp_t3;
                            var_a6 = temp_a1_2;
                            if (temp_t8 < temp_t2_2) {
                                var_a5 = (s64) temp_t2_2;
                                sp18 = temp_t2_2;
                            }
                            temp_a3_3 = temp_a0->unk4;
                            if (temp_a3_3 < temp_t3) {
                                var_a4 = (s64) temp_a3_3;
                                sp1C = temp_a3_3;
                            }
                            temp_a3_4 = temp_a0->unk2;
                            if (temp_t1_2 < temp_a3_4) {
                                var_a7 = (s64) temp_a3_4;
                                sp1A = temp_a3_4;
                            }
                            temp_a3_5 = temp_a0->unk6;
                            var_t0 = var_a5 < var_a4;
                            if (temp_a3_5 < temp_a1_2) {
                                var_a6 = (s64) temp_a3_5;
                                sp1E = temp_a3_5;
                                var_t0 = var_a5 < var_a4;
                            }
                            if ((var_t0 != 0) && (sp30 = (s64) arg2, ((var_a7 < var_a6) != 0))) {
                                (*sp30)->unk154(&sp20, &sp18, 1, temp_a3_5, var_a4, var_a5, var_a6, var_a7);
                            } else {
                                sp30 = (s64) arg2;
                                arg2->unk0->unk154(&sp20, NULL, 0, temp_a3_5, var_a4, var_a5, var_a6, var_a7);
                            }
                        } else {
                            sp30 = (s64) arg2;
                            sp38 = (s64) temp_a3_2;
                            arg2->unk0->unk154(&sp20, &sp10, 1, (s16) temp_a3_2, (s64) temp_a4);
                            (*sp30)->unk164(&sp20, &sp20, sp38);
                        }
                        temp_a1_3 = (sp28 == NULL) ? &sp20 : (sp28 + 8);
                        if (sp28 != NULL) {
                            var_a0_2 = sp28->unk4;
                        } else {
                            var_a0_2 = 1;
                        }
                        sp78 = (s64) temp_s2;
                        if (var_a0_2 > 0) {
                            var_s2 = temp_a1_3;
                            sp70 = (s64) (temp_a1_3 + (var_a0_2 * 8));
                            do {
                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s2) */);
                                temp_lo = ((var_s2->unk2 + var_s3) - sp12) * sp78;
                                sp4 = arg1;
                                temp_a0_2 = var_s2;
                                temp_t0 = var_s2->unk0 + var_s1;
                                var_s2 += 8;
                                temp_t0_2 = temp_t0 - sp10;
                                temp_s7->unk10(temp_a0_2, temp_lo + sp80 + (temp_t0_2 >> 3), temp_t0_2 & 7, sp78, temp_s5, temp_s8, temp_s6_2, temp_s4);
                            } while (var_s2 != sp70);
                        }
                        (*sp30)->unk160(&sp20);
                        return 0;
                    }
                    return 0;
                }
                return 0;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            sp4 = arg_sp4;
            spC = arg_spC;
            return temp_gp->unk-76D4(arg1);
        }
        temp_a1_4 = arg2->unk4;
        if ((s32) temp_a1_4 >= 9) {
            if ((s32) temp_a1_4 < 0x11) {
                spC = arg_spC;
                sp4 = arg_sp4;
                return temp_gp->unk-7978(arg1);
            }
            spC = arg_spC;
            sp4 = arg_sp4;
            return temp_gp->unk-7A6C(arg1);
        }
        spC = arg_spC;
        sp4 = arg_sp4;
        return temp_gp->unk-7B20(arg1);
    }
block_5:
    sp4 = arg_sp4;
    spC = arg_spC;
    return temp_gp->unk-76D4(arg1);
}

void nfbDoBitBltSS(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    u64 sp10;
    void *sp8;
    s16 sp2;
    s16 sp0;
    ? (*temp_s6)(void *, void *, s32, s32, void *);
    s16 temp_a2_2;
    s32 var_a0;
    s32 var_s8;
    void *temp_a0;
    void *temp_a2;
    void *temp_a6;
    void *temp_a7;
    void *temp_s7;
    void *temp_s7_2;
    void *temp_v1;
    void *var_s0;
    void *var_s0_2;

    temp_a7 = arg1->unk8;
    var_a0 = 1;
    if (temp_a7 != NULL) {
        var_a0 = temp_a7->unk4;
    }
    var_s8 = var_a0;
    if (var_a0 != 0) {
        temp_a2 = (temp_a7 == NULL) ? arg1 : (temp_a7 + 8);
        var_s0 = temp_a2;
        temp_s6 = ***(arg0->unk84 + (saved_reg_gp->unk-30F8 * 4));
        if (var_a0 != 1) {
            if ((arg3 >= 0) && (arg2 >= 0)) {
                goto loop_7;
            }
            if (arg3 > 0) {
loop_15:
                temp_s7 = var_s0;
loop_16:
                var_s8 -= 1;
                if (var_s8 != 0) {
                    var_s0 += 8;
                    if (var_s0->unkA != temp_s7->unk2) {
                        if (var_s8 != 0) {
                            var_s0 -= 8;
                            temp_a6 = var_s0 + 8;
                            sp10 = (u64) temp_a6;
                            sp8 = temp_a6;
                        } else {
                            goto block_12;
                        }
                    } else {
                        goto loop_16;
                    }
                } else {
block_12:
                    sp10 = (u64) sp8;
                }
                do {
                    sp0 = var_s0->unk0 + arg2;
                    sp2 = var_s0->unk2 + arg3;
                    temp_s6(var_s0, sp, arg4, arg5, arg0);
                    var_s0 -= 8;
                } while ((u32) var_s0 >= (u32) temp_s7);
                var_s0 = (void *) sp10;
                if (var_s8 != 0) {
                    goto loop_15;
                }
            } else {
                var_s0_2 = ((var_a0 * 8) + temp_a2) - 8;
                if (arg2 > 0) {
loop_29:
                    temp_s7_2 = var_s0_2;
loop_30:
                    var_s8 -= 1;
                    if (var_s8 != 0) {
                        var_s0_2 -= 8;
                        if (var_s0_2->unk-6 != temp_s7_2->unk2) {
                            if (var_s8 != 0) {
                                var_s0_2 += 8;
                                temp_v1 = var_s0_2 - 8;
                                sp10 = (u64) temp_v1;
                                sp8 = temp_v1;
                            } else {
                                goto block_26;
                            }
                        } else {
                            goto loop_30;
                        }
                    } else {
block_26:
                        sp10 = (u64) sp8;
                    }
                    do {
                        sp0 = var_s0_2->unk0 + arg2;
                        sp2 = var_s0_2->unk2 + arg3;
                        temp_s6(var_s0_2, sp, arg4, arg5, arg0);
                        var_s0_2 += 8;
                    } while ((u32) temp_s7_2 >= (u32) var_s0_2);
                    var_s0_2 = (void *) sp10;
                    if (var_s8 != 0) {
                        goto loop_29;
                    }
                } else {
                    do {
                        sp0 = var_s0_2->unk0 + arg2;
                        var_s8 -= 1;
                        temp_a2_2 = var_s0_2->unk2;
                        temp_a0 = var_s0_2;
                        var_s0_2 -= 8;
                        sp2 = temp_a2_2 + arg3;
                        temp_s6(temp_a0, sp, arg4, arg5, arg0);
                    } while (var_s8 != 0);
                }
            }
        } else {
            do {
loop_7:
                sp0 = var_s0->unk0 + arg2;
                sp2 = var_s0->unk2 + arg3;
                temp_s6(var_s0, sp, arg4, arg5, arg0);
                var_s8 -= 1;
                var_s0 += 8;
            } while (var_s8 != 0);
        }
    }
}

void nfbDoBitBltPS(void *arg0, void *arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6) {
    s64 sp30;
    s64 sp0;
    s32 temp_a1;
    s32 temp_lo;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_a0;
    void *temp_a0;
    void *temp_t1;
    void *temp_t2;
    void *var_s2;

    temp_t2 = arg2->unk8;
    temp_t1 = (temp_t2 == NULL) ? arg2 : (temp_t2 + 8);
    if (temp_t2 != NULL) {
        var_a0 = temp_t2->unk4;
    } else {
        var_a0 = 1;
    }
    temp_s6 = arg1->unk1C;
    temp_s8 = arg1->unk20;
    temp_s7 = (s32) arg1->unk3 >> 3;
    if (var_a0 > 0) {
        sp0 = (s64) (**(arg0->unk84 + (saved_reg_gp->unk-30F8 * 4)))->unk8;
        var_s2 = temp_t1;
        sp30 = (s64) (temp_t1 + (var_a0 * 8));
        do {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s2) */);
            temp_a1 = (var_s2->unk2 + arg4) * temp_s6;
            temp_lo = (var_s2->unk0 + arg3) * temp_s7;
            temp_a0 = var_s2;
            var_s2 += 8;
            ((? (*)(void *, s32, s32, s32, s32, void *)) sp0)(temp_a0, temp_a1 + temp_s8 + temp_lo, temp_s6, arg5, arg6, arg0);
        } while (var_s2 != sp30);
    }
}

void nfbDoBitBltSP(void *arg0, s64 arg1, void *arg2, s64 arg3, s64 arg4, s32 arg5, s32 arg6) {
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
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
    s64 sp98;
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
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s16 spE;
    s16 spC;
    s16 spA;
    s16 sp8;
    s32 *var_s1;
    s32 *var_s1_2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a6;
    s32 temp_a7_4;
    s32 temp_at;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t0_3;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a7;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s6;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_t1_5;
    s32 var_t1_6;
    s32 var_t1_7;
    s32 var_v0;
    s32 var_v1;
    s64 temp_a7_2;
    s64 temp_at_2;
    s64 temp_lo_3;
    s64 temp_t0_2;
    s64 temp_v0_2;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 temp_v1_8;
    s64 var_a0;
    s64 var_a1;
    s64 var_s2;
    s64 var_s2_2;
    s64 var_s5;
    u8 temp_a7;
    u8 temp_a7_3;
    void *temp_a4;
    void *temp_v0;

    sp40 = arg1;
    spC8 = arg3;
    spD0 = arg4;
    var_s6 = arg6;
    sp38 = (s64) (**(arg1->unk84 + (saved_reg_gp->unk-30F8 * 4)))->unk14;
    if ((arg5 != 5) && (var_s6 != 0)) {
        temp_v0 = arg2->unk8;
        temp_a4 = (temp_v0 == NULL) ? arg2 : (temp_v0 + 8);
        if (temp_v0 != NULL) {
            var_a2 = temp_v0->unk4;
        } else {
            var_a2 = 1;
        }
        temp_a7 = arg0->unk3;
        spE8 = (s64) temp_a7;
        spE0 = (s64) arg0->unk1C;
        spC0 = (s64) arg0->unk20;
        if (temp_a7 != 0x20) {
            var_s6 &= (1 << spE8) - 1;
            temp_a0 = var_s6;
            if (spE8 < 0x20) {
                var_v0 = 0;
                do {
                    var_v0 += spE8;
                    var_s6 = (var_s6 << spE8) + temp_a0;
                } while (var_v0 < (0x20 - spE8));
            }
        }
        if (var_a2 > 0) {
            spF0 = (s64) temp_a4;
            temp_at = arg5 * 4;
            sp98 = (s64) (temp_at + (saved_reg_gp - 0x7058));
            temp_t0 = spE0 >> 2;
            sp28 = (s64) (spE8 >> 3);
            sp140 = temp_t0 * 4;
            sp128 = arg5 >= 4;
            sp130 = (s64) sp4;
            spA0 = (s64) (temp_at + (saved_reg_gp - 0x7018));
            sp118 = arg5 >= 6;
            spF8 = arg5 >= 2;
            sp160 = arg5 >= 0xC;
            sp158 = arg5 >= 0xE;
            sp138 = (s64) sp0;
            sp100 = temp_t0 * 4;
            spB8 = (s64) (temp_a4 + (var_a2 * 8));
            spA8 = (s64) (arg5 + (saved_reg_gp - 0x7068));
            sp120 = arg5 >= 0xA;
            temp_s8 = ~var_s6;
            spB0 = (s64) *(arg5 + (saved_reg_gp - 0x7078));
            sp168 = arg5 >= 8;
loop_13:
            temp_a7_2 = (s64) ((spF0->unk0 + spC8) << 0x30) >> 0x30;
            sp8 = (s16) temp_a7_2;
            var_a1 = spF0->unk4 - spF0->unk0;
            spC = var_a1 + temp_a7_2;
            temp_v1 = (s64) ((spF0->unk2 + spD0) << 0x30) >> 0x30;
            spA = (s16) temp_v1;
            temp_at_2 = spF0->unk6 - spF0->unk2;
            sp10 = temp_at_2;
            spE = temp_at_2 + temp_v1;
            temp_a5 = (spF0->unk2 * spE0) + spC0 + (spF0->unk0 * sp28);
            var_a0 = -4 & (temp_a5 + 3);
            sp30 = 0;
            temp_t0_2 = var_a0 - temp_a5;
            var_a6 = temp_a5;
            var_s5 = var_a0;
            sp18 = temp_t0_2;
            if (temp_t0_2 != 0) {
                temp_lo = sp18 / sp28;
                spD8 = (s64) temp_lo;
                M2C_TRAP_IF(sp28 == 0);
                sp130 = (1 << (temp_lo * spE8)) - 1;
            } else {
                spD8 = 0;
            }
            temp_v1_2 = ((sp28 * var_a1) + temp_a5) & 3;
            sp20 = temp_v1_2;
            if (temp_v1_2 != 0) {
                temp_lo_2 = (sp20 / sp28) * spE8;
                M2C_TRAP_IF(sp28 == 0);
                sp138 = ((1 << temp_lo_2) - 1) << (0x20 - temp_lo_2);
            }
            sp80 = spE0;
            if (spB0 != 0) {
                temp_a7_3 = *spA8;
                if (temp_a7_3 == 0) {
                    sp70 = var_a0;
                    sp78 = var_a1;
                    if (var_s6 != -1) {
                        goto block_21;
                    }
                } else {
block_21:
                    temp_s1 = ((temp_a5 - var_a0) + 4) & 3;
                    temp_a5_2 = temp_s1 + var_a1;
                    temp_a4_2 = ((4 - sp20) & 3) + temp_a5_2;
                    temp_lo_3 = sp28 * temp_a4_2;
                    sp78 = var_a1;
                    sp70 = var_a0;
                    sp80 = temp_lo_3;
                    temp_v0_2 = saved_reg_gp->unk-758C((temp_lo_3 * sp10) + 4, temp_lo_3, sp10, sp28, temp_a4_2, temp_a5_2, var_a6, temp_a7_3);
                    var_a6 = (-4 & (temp_v0_2 + 3)) + temp_s1;
                    sp30 = temp_v0_2;
                    var_s5 = sp18 + var_a6;
                }
                ((? (*)(s16 *, s32, s64, s64)) sp38)(&sp8, var_a6, sp80, sp40);
                var_a1 = sp78;
                var_a0 = sp70;
            }
            if (var_s6 != -1) {
                var_s7 = 0;
                var_s3 = 0;
                if (sp10 > 0) {
                    temp_lo_4 = sp28 * (var_a1 - spD8);
                    sp50 = ~sp138;
                    temp_v1_3 = sp80 >> 2;
                    sp58 = ~sp130;
                    sp148 = temp_v1_3 * 4;
                    sp150 = temp_v1_3 * 4;
                    temp_s1_2 = (s32) ((temp_lo_4 >= 0) ? temp_lo_4 : (temp_lo_4 + 3)) >> 2;
                    sp48 = (s64) temp_s1_2;
                    var_s4 = temp_s1_2 * 4;
                    var_s2 = var_a0;
                    sp60 = (s64) *spA0;
                    var_s1 = var_a0 + (temp_s1_2 * 4);
loop_32:
                    var_s7 += 1;
                    if (sp18 != 0) {
                        temp_a6 = (var_s3 + var_s5)->unk-4;
                        if (arg5 != 3) {
                            if (sp168 != 0) {
                                if (sp160 != 0) {
                                    if (sp158 != 0) {
                                        var_t1 = ((0xE ^ arg5) == 0) ? ~(var_s2->unk-4 & temp_a6) : -1;
                                    } else {
                                        temp_v1_4 = ~temp_a6;
                                        var_t1 = ((0xC ^ arg5) == 0) ? temp_v1_4 : (temp_v1_4 | var_s2->unk-4);
                                    }
                                } else {
                                    temp_a2 = var_s2->unk-4;
                                    var_v1 = 0xA ^ arg5;
                                    if (sp120 != 0) {
                                        var_a7 = ~temp_a2;
                                        var_t1_2 = var_a7 | temp_a6;
                                    } else {
                                        var_a7 = ~(temp_a2 | temp_a6);
                                        var_t1_2 = ~temp_a6 ^ temp_a2;
                                        var_v1 = 8 ^ arg5;
                                    }
                                    var_t1 = (var_v1 == 0) ? var_a7 : var_t1_2;
                                }
                                var_a5 = var_t1;
                            } else if (sp128 != 0) {
                                temp_a2_2 = var_s2->unk-4;
                                if (sp118 != 0) {
                                    var_t1_3 = ((6 ^ arg5) == 0) ? (temp_a2_2 ^ temp_a6) : (temp_a2_2 | temp_a6);
                                } else {
                                    var_t1_3 = ~temp_a6 & temp_a2_2;
                                }
                                var_a5 = var_t1_3;
                            } else {
                                if (spF8 != 0) {
                                    var_a0_2 = ((2 ^ arg5) != 0) ? temp_a6 : (~var_s2->unk-4 & temp_a6);
                                } else {
                                    var_a0_2 = ((1 ^ arg5) != 0) ? 0 : (var_s2->unk-4 & temp_a6);
                                }
                                var_a5 = var_a0_2;
                            }
                            var_a5_2 = var_a5;
                        } else {
                            var_a5_2 = temp_a6;
                        }
                        var_s2->unk-4 = (s32) ((((var_a5_2 & var_s6) | (temp_s8 & var_s2->unk-4)) & sp130) | (sp58 & var_s2->unk-4));
                    }
                    if (sp48 != 0) {
                        ((? (*)(s32, s64, s32 *, s32)) sp60)(var_s3 + var_s5, var_s2, var_s1, var_s6);
                    }
                    if (sp20 != 0) {
                        temp_a5_3 = *(var_s4 + var_s5);
                        if (arg5 != 3) {
                            if (sp168 != 0) {
                                if (sp160 != 0) {
                                    temp_a7_4 = ~temp_a5_3;
                                    if (sp158 == 0) {
                                        var_t1_4 = ((0xC ^ arg5) == 0) ? temp_a7_4 : (temp_a7_4 | *var_s1);
                                    } else {
                                        var_t1_4 = ((0xE ^ arg5) == 0) ? ~(*var_s1 & temp_a5_3) : -1;
                                    }
                                } else {
                                    temp_a2_3 = *var_s1;
                                    if (sp120 != 0) {
                                        temp_at_3 = ~temp_a2_3;
                                        var_t1_4 = ((0xA ^ arg5) == 0) ? temp_at_3 : (temp_at_3 | temp_a5_3);
                                    } else {
                                        var_t1_4 = ((8 ^ arg5) == 0) ? ~(temp_a2_3 | temp_a5_3) : (~temp_a5_3 ^ temp_a2_3);
                                    }
                                }
                                var_a6_2 = var_t1_4;
                            } else if (sp128 != 0) {
                                temp_a2_4 = *var_s1;
                                if (sp118 != 0) {
                                    var_t1_5 = ((6 ^ arg5) == 0) ? (temp_a2_4 ^ temp_a5_3) : (temp_a2_4 | temp_a5_3);
                                } else {
                                    var_t1_5 = ~temp_a5_3 & temp_a2_4;
                                }
                                var_a6_2 = var_t1_5;
                            } else {
                                if (spF8 != 0) {
                                    var_a0_3 = ((2 ^ arg5) != 0) ? temp_a5_3 : (~*var_s1 & temp_a5_3);
                                } else {
                                    var_a0_3 = ((1 ^ arg5) != 0) ? 0 : (*var_s1 & temp_a5_3);
                                }
                                var_a6_2 = var_a0_3;
                            }
                            var_a6_3 = var_a6_2;
                        } else {
                            var_a6_3 = temp_a5_3;
                        }
                        *var_s1 = (((var_a6_3 & var_s6) | (temp_s8 & *var_s1)) & sp138) | (sp50 & *var_s1);
                    }
                    var_s3 += sp150;
                    var_s4 += sp148;
                    var_s1 += sp140;
                    var_s2 += sp140;
                    if (var_s7 != sp10) {
                        goto loop_32;
                    }
                }
            } else {
                var_s7_2 = 0;
                if ((arg5 != 3) && (sp10 > 0)) {
                    temp_lo_5 = sp28 * (var_a1 - spD8);
                    temp_v1_5 = sp80 >> 2;
                    sp110 = temp_v1_5 * 4;
                    sp50 = ~sp138;
                    sp108 = temp_v1_5 * 4;
                    sp58 = ~sp130;
                    temp_s1_3 = (s32) ((temp_lo_5 >= 0) ? temp_lo_5 : (temp_lo_5 + 3)) >> 2;
                    var_s3_2 = 0;
                    sp48 = (s64) temp_s1_3;
                    var_s4_2 = temp_s1_3 * 4;
                    var_s2_2 = var_a0;
                    sp68 = (s64) *sp98;
                    var_s1_2 = var_a0 + (temp_s1_3 * 4);
loop_99:
                    var_s7_2 += 1;
                    if (sp18 != 0) {
                        temp_a5_4 = (var_s3_2 + var_s5)->unk-4;
                        if (sp168 != 0) {
                            temp_v1_6 = ~temp_a5_4;
                            if (sp160 != 0) {
                                if (sp158 != 0) {
                                    var_t1_6 = ((0xE ^ arg5) == 0) ? ~(var_s2_2->unk-4 & temp_a5_4) : -1;
                                } else {
                                    var_t1_6 = ((0xC ^ arg5) == 0) ? temp_v1_6 : (temp_v1_6 | var_s2_2->unk-4);
                                }
                                var_a6_4 = var_t1_6;
                            } else {
                                temp_a2_5 = var_s2_2->unk-4;
                                if (sp120 != 0) {
                                    temp_v1_7 = ~temp_a2_5;
                                    var_a0_4 = ((0xA ^ arg5) == 0) ? temp_v1_7 : (temp_v1_7 | temp_a5_4);
                                } else {
                                    var_a0_4 = ((8 ^ arg5) == 0) ? ~(temp_a2_5 | temp_a5_4) : (~temp_a5_4 ^ temp_a2_5);
                                }
                                var_a6_4 = var_a0_4;
                            }
                        } else {
                            if (sp128 != 0) {
                                temp_a2_6 = var_s2_2->unk-4;
                                if (sp118 != 0) {
                                    var_a0_5 = ((6 ^ arg5) == 0) ? (temp_a2_6 ^ temp_a5_4) : (temp_a2_6 | temp_a5_4);
                                } else {
                                    var_a0_5 = ~temp_a5_4 & temp_a2_6;
                                }
                            } else if (spF8 != 0) {
                                var_a0_5 = ((2 ^ arg5) != 0) ? temp_a5_4 : (~var_s2_2->unk-4 & temp_a5_4);
                            } else {
                                var_a0_5 = ((1 ^ arg5) != 0) ? 0 : (var_s2_2->unk-4 & temp_a5_4);
                            }
                            var_a6_4 = var_a0_5;
                        }
                        var_s2_2->unk-4 = (s32) ((var_a6_4 & sp130) | (sp58 & var_s2_2->unk-4));
                    }
                    if (sp48 != 0) {
                        ((? (*)(s32, s64, s32 *)) sp68)(var_s3_2 + var_s5, var_s2_2, var_s1_2);
                    }
                    if (sp20 != 0) {
                        temp_a5_5 = *(var_s4_2 + var_s5);
                        if (sp168 != 0) {
                            if (sp160 != 0) {
                                if (sp158 != 0) {
                                    var_t1_7 = ((0xE ^ arg5) == 0) ? ~(*var_s1_2 & temp_a5_5) : -1;
                                } else {
                                    temp_at_4 = ~temp_a5_5;
                                    var_t1_7 = ((0xC ^ arg5) == 0) ? temp_at_4 : (temp_at_4 | *var_s1_2);
                                }
                                var_a6_5 = var_t1_7;
                            } else {
                                temp_a2_7 = *var_s1_2;
                                if (sp120 != 0) {
                                    temp_t0_3 = ~temp_a2_7;
                                    var_a0_6 = ((0xA ^ arg5) == 0) ? temp_t0_3 : (temp_t0_3 | temp_a5_5);
                                } else {
                                    var_a0_6 = ((8 ^ arg5) == 0) ? ~(temp_a2_7 | temp_a5_5) : (~temp_a5_5 ^ temp_a2_7);
                                }
                                var_a6_5 = var_a0_6;
                            }
                        } else {
                            if (sp128 != 0) {
                                temp_a2_8 = *var_s1_2;
                                if (sp118 != 0) {
                                    var_a0_7 = ((6 ^ arg5) == 0) ? (temp_a2_8 ^ temp_a5_5) : (temp_a2_8 | temp_a5_5);
                                } else {
                                    var_a0_7 = ~temp_a5_5 & temp_a2_8;
                                }
                            } else if (spF8 != 0) {
                                var_a0_7 = ((2 ^ arg5) != 0) ? temp_a5_5 : (~*var_s1_2 & temp_a5_5);
                            } else {
                                var_a0_7 = ((1 ^ arg5) != 0) ? 0 : (*var_s1_2 & temp_a5_5);
                            }
                            var_a6_5 = var_a0_7;
                        }
                        *var_s1_2 = (var_a6_5 & sp138) | (sp50 & *var_s1_2);
                    }
                    var_s3_2 += sp108;
                    var_s4_2 += sp110;
                    var_s1_2 += sp100;
                    var_s2_2 += sp100;
                    if (var_s7_2 != sp10) {
                        goto loop_99;
                    }
                }
            }
            if (sp30 != 0) {
                saved_reg_gp->unk-75A0(sp30);
            }
            temp_v1_8 = spF0 + 8;
            spF0 = temp_v1_8;
            if (temp_v1_8 != spB8) {
                goto loop_13;
            }
        }
    }
}

/*
Decompilation failure in function nfbCopyArea:

Unable to determine jump table for jr instruction at rrm.s line 17471.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0xe0, 0xe4], gap at: 0x90. */
void nfbSolidZeroSeg(void *arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg4, s16 arg5, s64 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14) {
    s64 spF8;
    s64 spE8;
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
    s64 sp10;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a3_2;
    s16 temp_a3_5;
    s16 temp_a6;
    s16 temp_a6_4;
    s16 temp_s1;
    s16 temp_s1_2;
    s16 temp_s1_3;
    s16 temp_s1_4;
    s16 temp_s2;
    s16 temp_s2_2;
    s16 temp_s2_3;
    s16 temp_s2_5;
    s16 temp_s8_3;
    s16 var_s1;
    s16 var_s1_3;
    s16 var_s2_2;
    s16 var_s2_4;
    s32 temp_a3;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s4_4;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s5_4;
    s32 temp_t1;
    s32 temp_v1;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s8_2;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a3_3;
    s64 temp_a3_4;
    s64 temp_a3_6;
    s64 temp_a3_7;
    s64 temp_a6_2;
    s64 temp_a6_3;
    s64 temp_a7;
    s64 temp_a7_2;
    s64 temp_a7_3;
    s64 temp_a7_4;
    s64 temp_a7_5;
    s64 temp_a7_6;
    s64 temp_a7_7;
    s64 temp_at_2;
    s64 temp_at_3;
    s64 temp_at_4;
    s64 temp_at_5;
    s64 temp_at_6;
    s64 temp_s2_4;
    s64 temp_s6;
    s64 temp_s6_2;
    s64 temp_s6_3;
    s64 temp_s6_4;
    s64 temp_s6_5;
    s64 temp_s6_6;
    s64 temp_s8;
    s64 temp_s8_2;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 temp_v1_4;
    s64 var_a6_2;
    s64 var_ra;
    s64 var_s1_2;
    s64 var_s1_4;
    s64 var_s2;
    s64 var_s2_3;
    s64 var_s6;
    s64 var_s6_2;
    s64 var_s7;
    s64 var_s7_2;
    s64 var_s8;
    s64 var_s8_3;
    void *temp_gp;
    void *temp_v0;

    var_ra = saved_reg_ra;
    var_s8 = saved_reg_fp;
    sp8 = arg1;
    unkspA0 = arg2;
    unksp90 = arg3;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x5A744;
    temp_v0 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    sp10 = (s64) temp_v0->unk4C;
    sp20 = (s64) temp_v0->unk40;
    sp38 = (s64) temp_v0->unk48;
    temp_t1 = -arg7;
    var_a6 = 0;
    var_a7 = 0;
    sp18 = (s64) (**(arg1->unk84 + (temp_gp->unk-30F8 * 4)))->unk4;
    if (temp_t1 > 0) {
        do {
            var_a7 += arg_sp4;
            var_a6 += 1;
        } while (var_a7 < temp_t1);
    } else {
        var_a6 = 0;
        var_a7 = 0;
    }
    temp_lo = (s32) -arg_spC / arg_sp4;
    temp_v1 = var_a6 + 1;
    temp_at = arg_sp14 < temp_v1;
    temp_a3 = (temp_at == 0) ? temp_v1 : arg_sp14;
    temp_a0 = (temp_at != 0) ? 0 : ((arg_sp14 - var_a6) - 1);
    unkspC8 = temp_a0;
    M2C_TRAP_IF(arg_sp4 == 0);
    unkspC0 = (s64) temp_lo;
    temp_a6 = arg5 + 1;
    temp_v1_2 = temp_lo + 1;
    unkspB0 = temp_v1_2;
    sp60 = temp_v1_2 < temp_a0;
    temp_a7 = arg6 + temp_a3;
    temp_at_2 = (temp_lo * arg_sp4) + arg_spC;
    unkspA8 = temp_at_2;
    var_s0 = var_a7 + arg7 + temp_at_2;
    if (arg4 != 0) {
        sp58 = unkspA0 + arg5;
        if (unksp90 >= 0) {
            sp48 = temp_a7;
            temp_s6 = (s64) (arg6 << 0x30) >> 0x30;
            sp6 = (s16) temp_a7;
            sp2 = (s16) arg6;
            temp_a7_2 = (s64) (temp_a7 << 0x30) >> 0x30;
            sp4 = temp_a6;
            sp0 = arg5;
            if (temp_s6 != temp_a7_2) {
                if (temp_a7_2 < temp_s6) {
                    sp6 = temp_s6 + 1;
                    sp2 = temp_a7_2 + 1;
                }
                sp0 = arg5;
                sp4 = temp_a6;
                ((? (*)(void *, ?, s64, s32, s64, s64, s16, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8, temp_a6, temp_a7_2);
                var_ra = spF8;
            }
            var_s7 = sp48;
            unkspB8 = 0;
            sp50 = sp58;
            if (sp60 != 0) {
                spF8 = var_ra;
                var_s2 = sp50;
                sp28 = sp38 & 0xFF;
                var_s1 = var_s2 + 1;
loop_14:
                temp_s4 = var_s0 < 0;
                temp_s5 = temp_s4 + unkspC0;
                temp_s6_2 = (s64) (var_s7 << 0x30) >> 0x30;
                temp_s8 = temp_s5 + var_s7 + 1;
                sp2 = (s16) var_s7;
                sp4 = var_s1;
                temp_a6_2 = (s64) (temp_s8 << 0x30) >> 0x30;
                sp0 = (s16) var_s2;
                sp6 = (s16) temp_s8;
                if (temp_s6_2 != temp_a6_2) {
                    if (temp_a6_2 < temp_s6_2) {
                        sp6 = temp_s6_2 + 1;
                        sp2 = temp_a6_2 + 1;
                    }
                    sp0 = (s16) var_s2;
                    sp4 = var_s1;
                    ((? (*)(void *, ?, s64, s64, s64, s64, s64)) sp18)(sp, 1, sp20, sp28, sp10, sp8, temp_a6_2);
                }
                temp_at_3 = (unkspC8 - temp_s5) - 1;
                var_s1 += unkspA0;
                var_s2 += unkspA0;
                var_s7 = temp_s8;
                unkspC8 = temp_at_3;
                unkspB8 += 1;
                var_s0 = (-temp_s4 & arg_sp4) + var_s0 + unkspA8;
                if (unkspB0 < temp_at_3) {
                    goto loop_14;
                }
                var_s8 = spE8;
                var_ra = spF8;
            }
            spE8 = var_s8;
            temp_s6_3 = (s64) (var_s7 << 0x30) >> 0x30;
            temp_a3_2 = var_s7 + unkspC8;
            sp6 = temp_a3_2;
            sp2 = (s16) var_s7;
            temp_a3_3 = (s64) ((s64) temp_a3_2 << 0x30) >> 0x30;
            temp_s2 = (unkspB8 * unkspA0) + sp50;
            sp0 = temp_s2;
            temp_s1 = temp_s2 + 1;
            sp4 = temp_s1;
            if (temp_s6_3 != temp_a3_3) {
                if (temp_a3_3 < temp_s6_3) {
                    spF8 = var_ra;
                    sp6 = temp_s6_3 + 1;
                    sp2 = temp_a3_3 + 1;
                }
                sp0 = temp_s2;
                sp4 = temp_s1;
                spF8 = var_ra;
                ((? (*)(void *, ?, s64, s32, s64, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8);
                spE8 = var_s8;
            }
        } else {
            var_s7_2 = (arg6 - temp_a3) + 1;
            var_s6 = (s64) (var_s7_2 << 0x30) >> 0x30;
            temp_v1_3 = var_s7_2 + temp_a3;
            sp4 = temp_a6;
            sp0 = arg5;
            temp_a7_3 = (s64) (temp_v1_3 << 0x30) >> 0x30;
            sp2 = (s16) var_s7_2;
            sp6 = (s16) temp_v1_3;
            if (var_s6 != temp_a7_3) {
                if (temp_a7_3 < var_s6) {
                    sp6 = var_s6 + 1;
                    sp2 = temp_a7_3 + 1;
                }
                sp0 = arg5;
                sp4 = temp_a6;
                ((? (*)(void *, ?, s64, s32, s64, s64, s16, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8, temp_a6, temp_a7_3);
                var_ra = spF8;
            }
            sp50 = sp58;
            var_s8_2 = 0;
            if (sp60 != 0) {
                spF8 = var_ra;
                var_s1_2 = sp50;
                var_s2_2 = var_s1_2 + 1;
                sp28 = sp38 & 0xFF;
loop_51:
                temp_s4_2 = var_s0 < 0;
                temp_s5_2 = temp_s4_2 + unkspC0;
                var_s7_2 = (var_s7_2 - temp_s5_2) - 1;
                var_s6 = (s64) (var_s7_2 << 0x30) >> 0x30;
                temp_v0_2 = temp_s5_2 + var_s7_2 + 1;
                sp4 = var_s2_2;
                sp0 = (s16) var_s1_2;
                temp_a6_3 = (s64) (temp_v0_2 << 0x30) >> 0x30;
                var_s8_2 += 1;
                sp2 = (s16) var_s7_2;
                sp6 = (s16) temp_v0_2;
                if (var_s6 != temp_a6_3) {
                    if (temp_a6_3 < var_s6) {
                        sp6 = var_s6 + 1;
                        sp2 = temp_a6_3 + 1;
                    }
                    sp0 = (s16) var_s1_2;
                    sp4 = var_s2_2;
                    ((? (*)(void *, ?, s64, s64, s64, s64, s64)) sp18)(sp, 1, sp20, sp28, sp10, sp8, temp_a6_3);
                }
                var_s2_2 += unkspA0;
                var_s1_2 += unkspA0;
                temp_v0_3 = (unkspC8 - temp_s5_2) - 1;
                unkspC8 = temp_v0_3;
                var_s0 = (-temp_s4_2 & arg_sp4) + var_s0 + unkspA8;
                if (unkspB0 < temp_v0_3) {
                    goto loop_51;
                }
                var_ra = spF8;
            }
            sp6 = (s16) var_s7_2;
            temp_s1_2 = var_s7_2 - unkspC8;
            sp2 = temp_s1_2;
            temp_a3_4 = (s64) ((s64) temp_s1_2 << 0x30) >> 0x30;
            temp_s1_3 = (var_s8_2 * unkspA0) + sp50;
            sp0 = temp_s1_3;
            temp_s2_2 = temp_s1_3 + 1;
            sp4 = temp_s2_2;
            if (var_s6 != temp_a3_4) {
                if (var_s6 < temp_a3_4) {
                    spF8 = var_ra;
                    sp6 = temp_a3_4 + 1;
                    sp2 = var_s6 + 1;
                }
                sp0 = temp_s1_3;
                sp4 = temp_s2_2;
                spF8 = var_ra;
                ((? (*)(void *, ?, s64, s32, s64, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8);
            }
        }
    } else {
        temp_a6_4 = arg6 + 1;
        sp40 = unksp90 + arg6;
        if (unkspA0 >= 0) {
            temp_v1_4 = arg5 + temp_a3;
            sp30 = temp_v1_4;
            temp_s6_4 = (s64) ((s64) arg5 << 0x30) >> 0x30;
            sp6 = temp_a6_4;
            sp2 = (s16) arg6;
            temp_a7_4 = (s64) (temp_v1_4 << 0x30) >> 0x30;
            sp4 = (s16) temp_v1_4;
            sp0 = arg5;
            if (temp_s6_4 != temp_a7_4) {
                if (temp_a7_4 < temp_s6_4) {
                    sp4 = temp_s6_4 + 1;
                    sp0 = temp_a7_4 + 1;
                }
                sp2 = (s16) arg6;
                sp6 = temp_a6_4;
                ((? (*)(void *, ?, s64, s32, s64, s64, s16, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8, temp_a6_4, temp_a7_4);
                var_ra = spF8;
            }
            var_a6_2 = sp30;
            unksp98 = 0;
            if (sp60 != 0) {
                spF8 = var_ra;
                var_s1_3 = sp40 + 1;
                var_s2_3 = sp40;
                sp28 = sp38 & 0xFF;
loop_40:
                temp_s4_3 = var_s0 < 0;
                temp_s5_3 = temp_s4_3 + unkspC0;
                temp_s6_5 = (s64) (var_a6_2 << 0x30) >> 0x30;
                temp_s8_2 = temp_s5_3 + var_a6_2 + 1;
                sp6 = var_s1_3;
                sp2 = (s16) var_s2_3;
                temp_a7_5 = (s64) (temp_s8_2 << 0x30) >> 0x30;
                sp0 = (s16) var_a6_2;
                sp4 = (s16) temp_s8_2;
                if (temp_s6_5 != temp_a7_5) {
                    if (temp_a7_5 < temp_s6_5) {
                        sp4 = temp_s6_5 + 1;
                        sp0 = temp_a7_5 + 1;
                    }
                    sp2 = (s16) var_s2_3;
                    sp6 = var_s1_3;
                    ((? (*)(void *, ?, s64, s64, s64, s64, s64, s64)) sp18)(sp, 1, sp20, sp28, sp10, sp8, var_a6_2, temp_a7_5);
                }
                temp_at_4 = (unkspC8 - temp_s5_3) - 1;
                var_s1_3 += unksp90;
                var_s2_3 += unksp90;
                var_a6_2 = temp_s8_2;
                unkspC8 = temp_at_4;
                unksp98 += 1;
                var_s0 = (-temp_s4_3 & arg_sp4) + var_s0 + unkspA8;
                if (unkspB0 < temp_at_4) {
                    goto loop_40;
                }
                var_s8 = spE8;
                var_ra = spF8;
            }
            spE8 = var_s8;
            temp_s6_6 = (s64) (var_a6_2 << 0x30) >> 0x30;
            temp_a3_5 = var_a6_2 + unkspC8;
            sp4 = temp_a3_5;
            sp0 = (s16) var_a6_2;
            temp_a3_6 = (s64) ((s64) temp_a3_5 << 0x30) >> 0x30;
            temp_s2_3 = (unksp98 * unksp90) + sp40;
            sp2 = temp_s2_3;
            temp_s1_4 = temp_s2_3 + 1;
            sp6 = temp_s1_4;
            if (temp_s6_6 != temp_a3_6) {
                if (temp_a3_6 < temp_s6_6) {
                    spF8 = var_ra;
                    sp4 = temp_s6_6 + 1;
                    sp0 = temp_a3_6 + 1;
                }
                sp2 = temp_s2_3;
                sp6 = temp_s1_4;
                spF8 = var_ra;
                ((? (*)(void *, ?, s64, s32, s64, s64, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8, var_a6_2);
                spE8 = var_s8;
            }
        } else {
            var_s1_4 = (arg5 - temp_a3) + 1;
            var_s6_2 = (s64) (var_s1_4 << 0x30) >> 0x30;
            temp_at_5 = var_s1_4 + temp_a3;
            sp6 = temp_a6_4;
            sp2 = (s16) arg6;
            temp_a7_6 = (s64) (temp_at_5 << 0x30) >> 0x30;
            sp0 = (s16) var_s1_4;
            sp4 = (s16) temp_at_5;
            if (var_s6_2 != temp_a7_6) {
                if (temp_a7_6 < var_s6_2) {
                    sp4 = var_s6_2 + 1;
                    sp0 = temp_a7_6 + 1;
                }
                sp2 = (s16) arg6;
                sp6 = temp_a6_4;
                ((? (*)(void *, ?, s64, s32, s64, s64, s16, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8, temp_a6_4, temp_a7_6);
                var_ra = spF8;
            }
            unksp88 = 0;
            if (sp60 != 0) {
                spF8 = var_ra;
                var_s2_4 = sp40 + 1;
                var_s8_3 = sp40;
                sp28 = sp38 & 0xFF;
loop_69:
                temp_s4_4 = var_s0 < 0;
                temp_s5_4 = temp_s4_4 + unkspC0;
                var_s1_4 = (var_s1_4 - temp_s5_4) - 1;
                var_s6_2 = (s64) (var_s1_4 << 0x30) >> 0x30;
                temp_at_6 = temp_s5_4 + var_s1_4 + 1;
                sp6 = var_s2_4;
                sp2 = (s16) var_s8_3;
                temp_a7_7 = (s64) (temp_at_6 << 0x30) >> 0x30;
                sp0 = (s16) var_s1_4;
                sp4 = (s16) temp_at_6;
                if (var_s6_2 != temp_a7_7) {
                    if (temp_a7_7 < var_s6_2) {
                        sp4 = var_s6_2 + 1;
                        sp0 = temp_a7_7 + 1;
                    }
                    sp2 = (s16) var_s8_3;
                    sp6 = var_s2_4;
                    ((? (*)(void *, ?, s64, s64, s64, s64)) sp18)(sp, 1, sp20, sp28, sp10, sp8);
                }
                var_s2_4 += unksp90;
                var_s8_3 += unksp90;
                temp_a0_2 = (unkspC8 - temp_s5_4) - 1;
                unkspC8 = temp_a0_2;
                var_s0 = (-temp_s4_4 & arg_sp4) + var_s0 + unkspA8;
                unksp88 += 1;
                if (unkspB0 < temp_a0_2) {
                    goto loop_69;
                }
                var_ra = spF8;
            }
            sp4 = (s16) var_s1_4;
            temp_s2_4 = var_s1_4 - unkspC8;
            sp0 = (s16) temp_s2_4;
            temp_a3_7 = (s64) (temp_s2_4 << 0x30) >> 0x30;
            temp_s8_3 = (unksp88 * unksp90) + sp40;
            sp2 = temp_s8_3;
            temp_s2_5 = temp_s8_3 + 1;
            sp6 = temp_s2_5;
            if (var_s6_2 != temp_a3_7) {
                if (var_s6_2 < temp_a3_7) {
                    spF8 = var_ra;
                    sp4 = temp_a3_7 + 1;
                    sp0 = var_s6_2 + 1;
                }
                sp2 = temp_s8_3;
                sp6 = temp_s2_5;
                spF8 = var_ra;
                ((? (*)(void *, ?, s64, s32, s64, s64)) sp18)(sp, 1, sp20, sp38 & 0xFF, sp10, sp8);
            }
        }
    }
}

s64 nfbLineSD(s64 arg0, s64 arg1, s64 arg2, s64 arg3, void *arg4) {
    s64 sp3C0;
    s64 sp3B8;
    s64 sp3B0;
    s64 sp3A8;
    s64 sp3A0;
    s64 sp398;
    s64 sp390;
    s64 sp388;
    s64 sp380;
    s64 sp378;
    s64 sp370;
    s64 sp368;
    s64 sp360;
    s64 sp358;
    s64 sp350;
    s64 sp348;
    s64 sp340;
    s64 sp338;
    s64 sp330;
    s64 sp328;
    s64 sp320;
    s64 sp318;
    s64 sp310;
    s64 sp308;
    s64 sp300;
    s64 sp2F8;
    s64 sp2F0;
    s64 sp2E8;
    s64 sp2E0;
    s64 sp2D8;
    s64 sp2D0;
    s64 sp2C8;
    s64 sp2C0;
    s64 sp2B8;
    s64 sp2B0;
    s64 sp2A8;
    s64 sp2A0;
    s64 sp298;
    s64 sp290;
    s64 sp288;
    s64 sp280;
    s64 sp278;
    s64 sp270;
    s64 sp260;
    s64 sp258;
    s64 sp248;
    s64 sp240;
    s64 sp238;
    s64 sp230;
    s64 sp228;
    s64 sp220;
    s64 sp218;
    s64 sp210;
    s64 sp208;
    s64 sp200;
    s64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    u64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
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
    u64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    u64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    u64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp68;
    s64 sp60;
    s16 sp5A;
    s16 sp58;
    void *sp50;
    s16 sp4E;
    s16 sp4C;
    s16 sp4A;
    s16 sp48;
    s16 sp46;
    s16 sp44;
    s16 sp42;
    s16 sp40;
    s32 sp14;
    s32 spC;
    s32 sp4;
    s16 *temp_v0_16;
    s16 temp_at;
    s16 temp_at_22;
    s16 temp_t0_10;
    s16 temp_t0_6;
    s16 temp_t1_3;
    s16 temp_t1_7;
    s16 temp_v1;
    s16 temp_v1_3;
    s16 var_t0_3;
    s32 temp_a0_17;
    s32 temp_a0_21;
    s32 temp_a0_6;
    s32 temp_a1_10;
    s32 temp_a1_12;
    s32 temp_a1_13;
    s32 temp_a1_15;
    s32 temp_a1_16;
    s32 temp_a1_17;
    s32 temp_a1_19;
    s32 temp_a1_21;
    s32 temp_a1_23;
    s32 temp_a1_25;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_8;
    s32 temp_a1_9;
    s32 temp_a2_12;
    s32 temp_a3_14;
    s32 temp_a4;
    s32 temp_a4_11;
    s32 temp_a4_13;
    s32 temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a4_6;
    s32 temp_a4_8;
    s32 temp_a5;
    s32 temp_a5_10;
    s32 temp_a5_4;
    s32 temp_a5_6;
    s32 temp_a5_8;
    s32 temp_a6;
    s32 temp_a6_10;
    s32 temp_a6_12;
    s32 temp_a6_13;
    s32 temp_a6_15;
    s32 temp_a6_16;
    s32 temp_a6_17;
    s32 temp_a6_18;
    s32 temp_a6_20;
    s32 temp_a6_21;
    s32 temp_a6_22;
    s32 temp_a6_23;
    s32 temp_a6_24;
    s32 temp_a6_25;
    s32 temp_a6_26;
    s32 temp_a6_28;
    s32 temp_a6_29;
    s32 temp_a6_30;
    s32 temp_a6_31;
    s32 temp_a6_32;
    s32 temp_a6_33;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_7;
    s32 temp_a6_8;
    s32 temp_a6_9;
    s32 temp_a7;
    s32 temp_a7_11;
    s32 temp_a7_12;
    s32 temp_a7_16;
    s32 temp_a7_3;
    s32 temp_a7_6;
    s32 temp_a7_7;
    s32 temp_at_10;
    s32 temp_at_11;
    s32 temp_at_13;
    s32 temp_at_14;
    s32 temp_at_17;
    s32 temp_at_18;
    s32 temp_at_19;
    s32 temp_at_20;
    s32 temp_at_21;
    s32 temp_at_25;
    s32 temp_at_26;
    s32 temp_at_27;
    s32 temp_at_28;
    s32 temp_at_30;
    s32 temp_at_31;
    s32 temp_at_33;
    s32 temp_at_34;
    s32 temp_at_35;
    s32 temp_at_36;
    s32 temp_at_37;
    s32 temp_at_3;
    s32 temp_at_40;
    s32 temp_at_41;
    s32 temp_at_43;
    s32 temp_at_44;
    s32 temp_at_46;
    s32 temp_at_47;
    s32 temp_at_48;
    s32 temp_at_49;
    s32 temp_at_4;
    s32 temp_at_53;
    s32 temp_at_54;
    s32 temp_at_56;
    s32 temp_at_57;
    s32 temp_at_58;
    s32 temp_at_59;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_at_8;
    s32 temp_at_9;
    s32 temp_ra_4;
    s32 temp_ra_5;
    s32 temp_ra_6;
    s32 temp_s0_10;
    s32 temp_s0_3;
    s32 temp_t0_11;
    s32 temp_t0_12;
    s32 temp_t0_14;
    s32 temp_t0_15;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t0_7;
    s32 temp_t0_8;
    s32 temp_t1_11;
    s32 temp_t1_14;
    s32 temp_t1_8;
    s32 temp_t2_3;
    s32 temp_t2_4;
    s32 temp_t2_5;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_14;
    s32 temp_v0_2;
    s32 temp_v0_5;
    s32 temp_v1_11;
    s32 temp_v1_13;
    s32 temp_v1_14;
    s32 temp_v1_15;
    s32 temp_v1_8;
    s32 var_a1_12;
    s32 var_a1_15;
    s32 var_a1_20;
    s32 var_a1_24;
    s32 var_a1_27;
    s32 var_a1_31;
    s32 var_a1_35;
    s32 var_a1_38;
    s32 var_a1_3;
    s32 var_a1_41;
    s32 var_a1_8;
    s32 var_a4;
    s32 var_a6_10;
    s32 var_a6_12;
    s32 var_a6_13;
    s32 var_a6_15;
    s32 var_a6_17;
    s32 var_a6_18;
    s32 var_a6_19;
    s32 var_a6_21;
    s32 var_a6_25;
    s32 var_a6_28;
    s32 var_a6_29;
    s32 var_a6_31;
    s32 var_a6_3;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a6_8;
    s32 var_a7_10;
    s32 var_a7_4;
    s32 var_a7_7;
    s32 var_at;
    s32 var_at_10;
    s32 var_at_11;
    s32 var_at_12;
    s32 var_at_13;
    s32 var_at_14;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_7;
    s32 var_at_8;
    s32 var_at_9;
    s32 var_ra_11;
    s32 var_s1_11;
    s32 var_s1_16;
    s32 var_s2_13;
    s32 var_s3_10;
    s32 var_s3_14;
    s32 var_s3_17;
    s32 var_s3_2;
    s32 var_s3_6;
    s32 var_s3_8;
    s32 var_s4_11;
    s32 var_s4_15;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_7;
    s32 var_s4_9;
    s32 var_s5;
    s32 var_s5_11;
    s32 var_s5_14;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s5_8;
    s32 var_s6_5;
    s32 var_s7_3;
    s32 var_s7_4;
    s32 var_s8_3;
    s32 var_s8_4;
    s32 var_s8_6;
    s32 var_s8_9;
    s32 var_t0_14;
    s32 var_t0_18;
    s32 var_t0_23;
    s32 var_t0_8;
    s32 var_t1_9;
    s32 var_t2_8;
    s32 var_t2_9;
    s32 var_t3_2;
    s32 var_t3_7;
    s32 var_t8_2;
    s32 var_t8_3;
    s64 temp_a0_15;
    s64 temp_a0_16;
    s64 temp_a0_25;
    s64 temp_a0_26;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a0_7;
    s64 temp_a1_20;
    s64 temp_a2_13;
    s64 temp_a2_14;
    s64 temp_a3_13;
    s64 temp_a3_18;
    s64 temp_a4_10;
    s64 temp_a4_12;
    s64 temp_a4_15;
    s64 temp_a4_3;
    s64 temp_a4_5;
    s64 temp_a4_7;
    s64 temp_a4_9;
    s64 temp_at_15;
    s64 temp_at_23;
    s64 temp_at_38;
    s64 temp_at_39;
    s64 temp_at_51;
    s64 temp_at_7;
    s64 temp_s0_13;
    s64 temp_s0_14;
    s64 temp_s0_4;
    s64 temp_s0_7;
    s64 temp_s3;
    s64 temp_s3_2;
    s64 temp_s5_2;
    s64 temp_s5_3;
    s64 temp_s6;
    s64 temp_s6_2;
    s64 temp_s6_3;
    s64 temp_s6_4;
    s64 temp_s6_5;
    s64 temp_s7_2;
    s64 temp_s8;
    s64 temp_s8_2;
    s64 temp_s8_3;
    s64 temp_s8_4;
    s64 temp_t0_2;
    s64 temp_t1_4;
    s64 temp_t9_10;
    s64 temp_t9_3;
    s64 temp_t9_5;
    s64 temp_t9_8;
    s64 temp_v0_10;
    s64 temp_v0_4;
    s64 temp_v0_7;
    s64 temp_v0_8;
    s64 temp_v1_12;
    s64 temp_v1_16;
    s64 temp_v1_2;
    s64 temp_v1_4;
    s64 temp_v1_5;
    s64 temp_v1_6;
    s64 temp_v1_7;
    s64 var_a1_10;
    s64 var_a1_14;
    s64 var_a1_18;
    s64 var_a1_19;
    s64 var_a1_22;
    s64 var_a1_26;
    s64 var_a1_2;
    s64 var_a1_30;
    s64 var_a1_32;
    s64 var_a1_36;
    s64 var_a1_40;
    s64 var_a1_43;
    s64 var_a1_6;
    s64 var_a1_7;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a2_4;
    s64 var_a2_6;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_a3_4;
    s64 var_a3_7;
    s64 var_a4_12;
    s64 var_a4_2;
    s64 var_a4_4;
    s64 var_a4_5;
    s64 var_a4_7;
    s64 var_a4_8;
    s64 var_a4_9;
    s64 var_a5;
    s64 var_a5_10;
    s64 var_a5_12;
    s64 var_a5_13;
    s64 var_a5_15;
    s64 var_a5_18;
    s64 var_a5_19;
    s64 var_a5_4;
    s64 var_a5_6;
    s64 var_a5_7;
    s64 var_a6_20;
    s64 var_a6_23;
    s64 var_a6_24;
    s64 var_a6_2;
    s64 var_a7_2;
    s64 var_at_6;
    s64 var_ra;
    s64 var_s0;
    s64 var_s1;
    s64 var_s1_14;
    s64 var_s1_15;
    s64 var_s1_5;
    s64 var_s1_9;
    s64 var_s2;
    s64 var_s2_17;
    s64 var_s2_18;
    s64 var_s2_4;
    s64 var_s2_8;
    s64 var_s3;
    s64 var_s3_11;
    s64 var_s3_12;
    s64 var_s3_15;
    s64 var_s3_3;
    s64 var_s3_7;
    s64 var_s4;
    s64 var_s4_12;
    s64 var_s4_13;
    s64 var_s4_6;
    s64 var_s5_10;
    s64 var_s5_13;
    s64 var_s5_5;
    s64 var_s5_6;
    s64 var_s6;
    s64 var_s6_10;
    s64 var_s6_2;
    s64 var_s6_3;
    s64 var_s6_6;
    s64 var_s6_8;
    s64 var_s7;
    s64 var_s7_2;
    s64 var_s8_2;
    s64 var_s8_5;
    s64 var_s8_7;
    s64 var_s8_8;
    s64 var_t0_19;
    s64 var_t0_22;
    s64 var_t9_3;
    s64 var_t9_6;
    s64 var_t9_9;
    s64 var_v0;
    s64 var_v0_7;
    s64 var_v0_8;
    u16 temp_s0_15;
    u16 temp_s0_9;
    u16 temp_s5;
    u16 temp_s7;
    u16 var_a1;
    u16 var_a3_3;
    u16 var_a3_5;
    u16 var_a3_6;
    u16 var_a3_8;
    u16 var_s0_6;
    u16 var_s7_5;
    u16 var_t1_3;
    u16 var_t1_6;
    u32 temp_a6_27;
    u32 var_t8;
    u64 temp_a0_18;
    u64 temp_a0_19;
    u64 temp_a0_20;
    u64 temp_v0_9;
    u64 temp_v1_10;
    u64 temp_v1_9;
    u8 *temp_a1_2;
    u8 *temp_s5_4;
    u8 *temp_s8_5;
    u8 temp_a0_10;
    u8 temp_a0_11;
    u8 temp_a0_12;
    u8 temp_a0_13;
    u8 temp_a0_14;
    u8 temp_a0_22;
    u8 temp_a0_23;
    u8 temp_a0_27;
    u8 temp_a0_28;
    u8 temp_a0_3;
    u8 temp_a0_8;
    u8 temp_a0_9;
    u8 temp_a1_11;
    u8 temp_a1_14;
    u8 temp_a1_18;
    u8 temp_a1_22;
    u8 temp_a1_24;
    u8 temp_a1_3;
    u8 temp_a1_4;
    u8 temp_a1_7;
    u8 temp_a2_11;
    u8 temp_a2_15;
    u8 temp_a2_17;
    u8 temp_a2_2;
    u8 temp_a2_4;
    u8 temp_a2_6;
    u8 temp_a2_8;
    u8 temp_a2_9;
    u8 temp_a3;
    u8 temp_a3_10;
    u8 temp_a3_11;
    u8 temp_a3_12;
    u8 temp_a3_15;
    u8 temp_a3_16;
    u8 temp_a3_17;
    u8 temp_a3_19;
    u8 temp_a3_20;
    u8 temp_a3_21;
    u8 temp_a3_2;
    u8 temp_a3_3;
    u8 temp_a3_4;
    u8 temp_a3_5;
    u8 temp_a3_6;
    u8 temp_a3_7;
    u8 temp_a3_8;
    u8 temp_a3_9;
    u8 temp_a4_14;
    u8 temp_a5_3;
    u8 temp_a6_11;
    u8 temp_a6_14;
    u8 temp_a6_19;
    u8 temp_a6_2;
    u8 temp_a6_34;
    u8 temp_a6_3;
    u8 temp_a6_6;
    u8 temp_a7_10;
    u8 temp_a7_13;
    u8 temp_a7_14;
    u8 temp_a7_15;
    u8 temp_a7_17;
    u8 temp_a7_2;
    u8 temp_a7_4;
    u8 temp_a7_5;
    u8 temp_a7_8;
    u8 temp_a7_9;
    u8 temp_at_12;
    u8 temp_at_16;
    u8 temp_at_24;
    u8 temp_at_29;
    u8 temp_at_2;
    u8 temp_at_32;
    u8 temp_at_42;
    u8 temp_at_45;
    u8 temp_at_52;
    u8 temp_at_55;
    u8 temp_ra;
    u8 temp_ra_2;
    u8 temp_ra_3;
    u8 temp_ra_7;
    u8 temp_s0;
    u8 temp_s0_11;
    u8 temp_s0_12;
    u8 temp_s0_16;
    u8 temp_s0_2;
    u8 temp_s0_5;
    u8 temp_s0_6;
    u8 temp_s0_8;
    u8 temp_s2;
    u8 temp_s2_2;
    u8 temp_s2_3;
    u8 temp_t0;
    u8 temp_t0_13;
    u8 temp_t0_16;
    u8 temp_t0_5;
    u8 temp_t0_9;
    u8 temp_t1;
    u8 temp_t1_10;
    u8 temp_t1_13;
    u8 temp_t1_2;
    u8 temp_t1_5;
    u8 temp_t1_6;
    u8 temp_t1_9;
    u8 temp_t2;
    u8 temp_t2_2;
    u8 temp_t3;
    u8 temp_t3_2;
    u8 temp_t3_3;
    u8 temp_t3_4;
    u8 temp_t3_5;
    u8 temp_t3_6;
    u8 temp_t8;
    u8 temp_t8_11;
    u8 temp_t8_2;
    u8 temp_t8_4;
    u8 temp_t8_5;
    u8 temp_t8_7;
    u8 temp_t8_9;
    u8 temp_t9;
    u8 temp_t9_11;
    u8 temp_t9_12;
    u8 temp_t9_13;
    u8 temp_t9_14;
    u8 temp_t9_2;
    u8 temp_t9_4;
    u8 temp_t9_6;
    u8 temp_t9_7;
    u8 temp_t9_9;
    u8 temp_v0;
    u8 temp_v0_13;
    u8 temp_v0_15;
    u8 temp_v0_3;
    u8 temp_v0_6;
    u8 var_a0;
    u8 var_a0_10;
    u8 var_a0_11;
    u8 var_a0_2;
    u8 var_a0_3;
    u8 var_a0_4;
    u8 var_a0_5;
    u8 var_a0_6;
    u8 var_a0_7;
    u8 var_a0_8;
    u8 var_a0_9;
    u8 var_a1_11;
    u8 var_a1_13;
    u8 var_a1_16;
    u8 var_a1_17;
    u8 var_a1_21;
    u8 var_a1_23;
    u8 var_a1_25;
    u8 var_a1_28;
    u8 var_a1_29;
    u8 var_a1_33;
    u8 var_a1_34;
    u8 var_a1_37;
    u8 var_a1_39;
    u8 var_a1_42;
    u8 var_a1_4;
    u8 var_a1_5;
    u8 var_a1_9;
    u8 var_a2_3;
    u8 var_a2_5;
    u8 var_a2_7;
    u8 var_a2_8;
    u8 var_a4_10;
    u8 var_a4_11;
    u8 var_a4_3;
    u8 var_a4_6;
    u8 var_a5_11;
    u8 var_a5_14;
    u8 var_a5_16;
    u8 var_a5_17;
    u8 var_a5_2;
    u8 var_a5_3;
    u8 var_a5_5;
    u8 var_a5_8;
    u8 var_a5_9;
    u8 var_a6;
    u8 var_a6_11;
    u8 var_a6_14;
    u8 var_a6_16;
    u8 var_a6_22;
    u8 var_a6_26;
    u8 var_a6_27;
    u8 var_a6_30;
    u8 var_a6_32;
    u8 var_a6_4;
    u8 var_a6_7;
    u8 var_a6_9;
    u8 var_a7;
    u8 var_a7_12;
    u8 var_a7_5;
    u8 var_a7_8;
    u8 var_ra_10;
    u8 var_ra_12;
    u8 var_ra_13;
    u8 var_ra_14;
    u8 var_ra_15;
    u8 var_ra_16;
    u8 var_ra_2;
    u8 var_ra_3;
    u8 var_ra_4;
    u8 var_ra_5;
    u8 var_ra_6;
    u8 var_ra_7;
    u8 var_ra_8;
    u8 var_ra_9;
    u8 var_s0_10;
    u8 var_s0_11;
    u8 var_s0_12;
    u8 var_s0_13;
    u8 var_s0_2;
    u8 var_s0_3;
    u8 var_s0_4;
    u8 var_s0_5;
    u8 var_s0_7;
    u8 var_s0_8;
    u8 var_s0_9;
    u8 var_s1_10;
    u8 var_s1_12;
    u8 var_s1_13;
    u8 var_s1_17;
    u8 var_s1_2;
    u8 var_s1_3;
    u8 var_s1_6;
    u8 var_s1_7;
    u8 var_s2_10;
    u8 var_s2_11;
    u8 var_s2_12;
    u8 var_s2_14;
    u8 var_s2_15;
    u8 var_s2_16;
    u8 var_s2_19;
    u8 var_s2_20;
    u8 var_s2_21;
    u8 var_s2_2;
    u8 var_s2_3;
    u8 var_s2_5;
    u8 var_s2_6;
    u8 var_s2_7;
    u8 var_s2_9;
    u8 var_s3_13;
    u8 var_s3_16;
    u8 var_s3_4;
    u8 var_s3_5;
    u8 var_s3_9;
    u8 var_s4_14;
    u8 var_s4_4;
    u8 var_s4_5;
    u8 var_s4_8;
    u8 var_s5_12;
    u8 var_s5_15;
    u8 var_s5_4;
    u8 var_s5_7;
    u8 var_s5_9;
    u8 var_s6_4;
    u8 var_s6_7;
    u8 var_s6_9;
    u8 var_t0_10;
    u8 var_t0_12;
    u8 var_t0_13;
    u8 var_t0_16;
    u8 var_t0_17;
    u8 var_t0_21;
    u8 var_t0_25;
    u8 var_t0_2;
    u8 var_t0_4;
    u8 var_t0_6;
    u8 var_t0_7;
    u8 var_t1_8;
    u8 var_t2;
    u8 var_t2_10;
    u8 var_t2_11;
    u8 var_t2_12;
    u8 var_t2_13;
    u8 var_t2_2;
    u8 var_t2_3;
    u8 var_t2_4;
    u8 var_t2_5;
    u8 var_t2_6;
    u8 var_t2_7;
    u8 var_t3;
    u8 var_t3_3;
    u8 var_t3_4;
    u8 var_t3_5;
    u8 var_t3_6;
    u8 var_t3_8;
    u8 var_t3_9;
    u8 var_t9;
    u8 var_t9_10;
    u8 var_t9_11;
    u8 var_t9_2;
    u8 var_t9_4;
    u8 var_t9_5;
    u8 var_t9_7;
    u8 var_t9_8;
    u8 var_v0_10;
    u8 var_v0_2;
    u8 var_v0_3;
    u8 var_v0_4;
    u8 var_v0_5;
    u8 var_v0_6;
    u8 var_v0_9;
    u8 var_v1;
    u8 var_v1_10;
    u8 var_v1_11;
    u8 var_v1_2;
    u8 var_v1_3;
    u8 var_v1_4;
    u8 var_v1_5;
    u8 var_v1_6;
    u8 var_v1_7;
    u8 var_v1_8;
    u8 var_v1_9;
    void *temp_a0;
    void *temp_a0_24;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_10;
    void *temp_a2_16;
    void *temp_a2_3;
    void *temp_a2_5;
    void *temp_a2_7;
    void *temp_a5_11;
    void *temp_a5_12;
    void *temp_a5_13;
    void *temp_a5_2;
    void *temp_a5_5;
    void *temp_a5_7;
    void *temp_a5_9;
    void *temp_at_50;
    void *temp_gp;
    void *temp_t1_12;
    void *temp_t8_10;
    void *temp_t8_3;
    void *temp_t8_6;
    void *temp_t8_8;
    void *var_a7_11;
    void *var_a7_3;
    void *var_a7_6;
    void *var_a7_9;
    void *var_s1_4;
    void *var_s1_8;
    void *var_s4_10;
    void *var_s8;
    void *var_t0;
    void *var_t0_11;
    void *var_t0_15;
    void *var_t0_20;
    void *var_t0_24;
    void *var_t0_5;
    void *var_t0_9;
    void *var_t1;
    void *var_t1_10;
    void *var_t1_11;
    void *var_t1_2;
    void *var_t1_4;
    void *var_t1_5;
    void *var_t1_7;

    var_s0 = saved_reg_s0;
    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_s6 = saved_reg_s6;
    var_ra = saved_reg_ra;
    var_a3 = arg3;
    spF0 = arg2;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x59CA0;
    temp_a6 = temp_gp->unk-3000;
    sp1D0 = arg1;
    sp188 = arg0;
    var_s8 = arg4;
    if (temp_a6 >= 0) {
        spB0 = (u64) *(sp188->unk10->unk1B4 + (temp_a6 * 4));
    } else {
        spB0 = 0;
    }
    temp_a0 = *(sp1D0->unk4C + (temp_gp->unk-30F4 * 4));
    spC0 = (s64) temp_a0->unk44;
    sp80 = (s64) temp_a0->unk48;
    temp_a0_2 = temp_a0->unk8;
    sp88 = (s64) temp_a0->unk40;
    spD8 = (s64) temp_a0->unk4C;
    temp_a1 = temp_a0_2->unk8;
    sp190 = (s64) temp_a0->unk24->unk8;
    sp108 = (s64) ((temp_a1 == NULL) ? temp_a0_2 : (temp_a1 + 8));
    spD0 = (s64) (**(sp188->unk84 + (temp_gp->unk-30F8 * 4)))->unk4;
    if (temp_a1 != NULL) {
        var_at = temp_a1->unk4;
    } else {
        var_at = 1;
    }
    sp110 = (s64) var_at;
    sp158 = 0;
    var_t8 = sp1D0->unk10;
    temp_s5 = sp1D0->unk8;
    temp_a1_2 = sp1D0->unkC;
    temp_s7 = sp1D0->unkA;
    temp_v1 = sp188->unkA;
    temp_at = sp188->unk8;
    sp120 = (s64) temp_v1;
    sp1E8 = (s64) temp_a1_2;
    temp_a1_3 = *temp_a1_2;
    sp220 = var_s8->unk2 + temp_v1;
    sp118 = (s64) temp_at;
    var_v0 = (s32) temp_s5 < (s32) temp_a1_3;
    sp200 = var_s8->unk0 + temp_at;
    sp1F0 = (var_t8 >> 0x1E) == 2;
    if (var_v0 != 0) {
        var_a1 = temp_s5;
    } else {
        var_s5 = temp_s5 - temp_a1_3;
        var_s3_2 = 0;
        var_s6_2 = temp_s7 != 1;
        sp60 = var_s6_2;
        if ((s32) temp_s7 > 0) {
            var_a4 = temp_s7 & 7;
            var_a1_2 = sp1E8;
            temp_a7 = temp_s7 + sp1E8;
            if (var_a4 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
                    temp_at_2 = *var_a1_2;
                    var_a4 -= 1;
                    var_a1_2 += 1;
                    var_s3_2 += temp_at_2;
                } while (var_a4 != 0);
            }
            temp_a5 = (s32) temp_s7 >> 3;
            if (temp_a5 != 0) {
                var_a1_3 = var_s3_2;
                if (temp_a5 >= 3) {
                    sp2A0 = (s64) var_t8;
                    sp298 = var_a3;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t1) */);
                    var_a1_4 = var_a1_2->unk6;
                    var_a0 = var_a1_2->unk5;
                    var_v1 = var_a1_2->unk4;
                    var_v0_2 = var_a1_2->unk3;
                    var_s2_2 = var_a1_2->unk2;
                    var_s1_2 = var_a1_2->unk1;
                    var_t2 = var_a1_2->unk7;
                    temp_a2 = var_a1_2 + 8;
                    var_ra_2 = temp_a2->unk1;
                    temp_a4 = temp_a7 - 0x10;
                    var_t9 = var_a1_2->unk8;
                    var_t1 = temp_a2 + 8;
                    var_t3 = temp_a2->unk7;
                    var_at_2 = var_a1_2->unk0 + var_s3_2;
                    var_t0 = temp_a2;
loop_12:
                    temp_a2_2 = var_t0->unk2;
                    var_s2_3 = var_t0->unk3;
                    temp_s0 = var_t0->unk4;
                    temp_a3 = var_t0->unk5;
                    var_a7 = var_t0->unk6;
                    temp_a5_2 = var_t1 + 8;
                    temp_a6_2 = var_t1->unk7;
                    temp_t8 = var_t1->unk0;
                    temp_at_3 = var_t9 + (var_t2 + (var_a1_4 + (var_a0 + (var_v1 + (var_v0_2 + (var_s2_2 + (var_s1_2 + var_at_2)))))));
                    temp_t9 = var_t1->unk1;
                    if (var_t0 != temp_a4) {
                        var_ra_3 = var_t1->unk2;
                        temp_a1_4 = var_t1->unk3;
                        temp_a0_3 = var_t1->unk4;
                        var_s0_2 = var_t1->unk5;
                        temp_a3_2 = var_t1->unk6;
                        temp_at_4 = var_a7 + (temp_a3 + (temp_s0 + (var_s2_3 + (temp_a2_2 + (var_ra_2 + temp_at_3)))));
                        var_t0 = temp_a5_2 + 8;
                        var_t2 = temp_a5_2->unk7;
                        temp_a7_2 = var_t1->unk8;
                        temp_at_5 = temp_t8 + (var_t3 + temp_at_4);
                        var_s1_2 = temp_a5_2->unk1;
                        if (var_t1 != temp_a4) {
                            var_s2_2 = temp_a5_2->unk2;
                            var_v0_2 = temp_a5_2->unk3;
                            var_v1 = temp_a5_2->unk4;
                            var_a0 = temp_a5_2->unk5;
                            var_a1_4 = temp_a5_2->unk6;
                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                            temp_at_6 = temp_a3_2 + (var_s0_2 + (temp_a0_3 + (temp_a1_4 + (var_ra_3 + (temp_t9 + temp_at_5)))));
                            var_t1 = var_t0 + 8;
                            var_t3 = var_t0->unk7;
                            var_t9 = temp_a5_2->unk8;
                            var_at_2 = temp_a7_2 + (temp_a6_2 + temp_at_6);
                            var_ra_2 = var_t0->unk1;
                            if (temp_a5_2 == temp_a4) {
                                var_a7 = var_a1_4;
                                var_s0_2 = var_a0;
                                var_a6 = var_v1;
                                var_s4_2 = var_at_2;
                                var_t1 = var_t0;
                                var_t0_2 = var_s1_2;
                                var_t8 = (u32) sp2A0;
                                var_s1_2 = var_ra_2;
                                var_s2_3 = var_v0_2;
                                var_ra_3 = var_s2_2;
                                var_a3 = sp298;
                            } else {
                                goto loop_12;
                            }
                        } else {
                            var_t1 = temp_a5_2;
                            var_t3 = var_t2;
                            var_t2 = temp_a6_2;
                            var_a6 = temp_a0_3;
                            var_s2_3 = temp_a1_4;
                            var_s4_2 = temp_at_5;
                            var_a3 = sp298;
                            var_t0_2 = temp_t9;
                            var_t9 = temp_a7_2;
                            var_t8 = (u32) sp2A0;
                            var_a7 = temp_a3_2;
                        }
                    } else {
                        var_s4_2 = temp_at_3;
                        var_t2 = var_t3;
                        var_t3 = temp_a6_2;
                        var_a6 = temp_s0;
                        var_s1_2 = temp_t9;
                        var_t9 = temp_t8;
                        var_a3 = sp298;
                        var_t0_2 = var_ra_2;
                        var_ra_3 = temp_a2_2;
                        var_t8 = (u32) sp2A0;
                        var_s0_2 = temp_a3;
                    }
                    var_s2 = sp290;
                    var_s0 = sp270;
                    var_s1 = sp258;
                    var_ra = sp280;
                    var_s4 = sp278;
                    var_s3_2 = var_t3 + (var_t1->unk6 + (var_t1->unk5 + (var_t1->unk4 + (var_t1->unk3 + (var_t1->unk2 + (var_s1_2 + (var_t9 + (var_t2 + (var_a7 + (var_s0_2 + (var_a6 + (var_s2_3 + (var_ra_3 + (var_t0_2 + var_s4_2))))))))))))));
                } else {
                    var_a2 = var_a1_2;
                    do {
                        temp_t0 = var_a2->unk5;
                        temp_a6_3 = var_a2->unk6;
                        temp_a5_3 = var_a2->unk7;
                        temp_a1_5 = var_a2->unk4 + (var_a2->unk3 + (var_a2->unk2 + (var_a2->unk1 + (var_a2->unk0 + var_a1_3))));
                        var_a2 += 8;
                        var_a1_3 = temp_a5_3 + (temp_a6_3 + (temp_t0 + temp_a1_5));
                    } while (var_a2 != temp_a7);
                    var_s3_2 = var_a1_3;
                }
            }
        }
        if (var_s5 >= var_s3_2) {
            M2C_TRAP_IF(var_s3_2 == 0);
            var_s5 = var_s5 % var_s3_2;
        }
        var_v0 = var_s5 < (s32) *(sp60 + sp1E8);
        var_s3 = sp260;
        if (var_v0 == 0) {
            var_a1_5 = *(var_s6_2 + sp1E8);
            do {
                temp_s6 = var_s6_2 + 1;
                var_s6_2 = (temp_s6 == temp_s7) ? 0 : temp_s6;
                var_v0 = var_s6_2 + sp1E8;
                var_s5 -= var_a1_5;
                var_a1_5 = *var_v0;
            } while (var_s5 >= (s32) var_a1_5);
        }
        sp158 = var_s6_2;
        var_s6 = sp288;
        var_a1 = (u16) var_s5;
    }
    sp168 = *(sp158 + sp1E8) - var_a1;
    var_a6_2 = 0;
    if (var_a3 != 1) {
        sp2B0 = (s64) var_s8;
        sp290 = var_s2;
        sp288 = var_s6;
        sp280 = var_ra;
        sp278 = var_s4;
        sp270 = var_s0;
        sp260 = var_s3;
        sp258 = var_s1;
        var_t3_2 = sp3C;
        var_t8_2 = sp38;
        sp128 = (s64) var_s8;
        sp1A8 = (s64) sp34;
        sp1B0 = (s64) sp30;
        sp198 = (s64) sp24;
        sp1C0 = (s64) sp2C;
        sp1E0 = (u64) sp28;
        temp_at_7 = var_a3 - 1;
        sp68 = temp_at_7;
        spC8 = sp80 & 0xFF;
        sp178 = (s64) sp20;
        sp100 = (s64) ((temp_at_7 * 4) + var_s8);
loop_48:
        sp218 = sp220;
        sp1D8 = sp110;
        temp_a7_3 = spF0 ^ 1;
        temp_a0_4 = (temp_a7_3 == 0) ? sp220 : sp120;
        sp120 = temp_a0_4;
        sp220 = sp128->unk6 + temp_a0_4;
        temp_v1_2 = (temp_a7_3 == 0) ? sp200 : sp118;
        var_a7_2 = sp108;
        sp208 = sp200;
        sp118 = temp_v1_2;
        temp_a0_5 = sp128->unk4 + temp_v1_2;
        sp200 = temp_a0_5;
        if (temp_a0_5 == sp200) {
            if (sp220 != sp218) {
                temp_a0_6 = sp218 < sp220;
                sp130 = (temp_a0_6 != 0) ? sp218 : (sp220 + 1);
                var_s6_3 = (temp_a0_6 != 0) ? sp220 : (sp218 + 1);
                var_s7 = (temp_a0_6 != 0) ? 0 : 1;
                if (sp110 != 0) {
                    if (sp130 >= var_a7_2->unk6) {
loop_53:
                        temp_a0_7 = sp1D8 - 1;
                        var_a7_2 += 8;
                        sp1D8 = temp_a0_7;
                        if (temp_a0_7 != 0) {
                            if (sp130 < var_a7_2->unk6) {
                                goto block_55;
                            }
                            goto loop_53;
                        }
                    } else {
                        goto block_56;
                    }
                } else {
block_55:
block_56:
                    if ((sp1D8 != 0) && (sp44 = sp208 + 1, var_s3_3 = sp158, sp40 = (s16) sp208, var_s2_4 = sp168, (sp1D8 != 0))) {
                        var_t0_3 = var_a7_2->unk2;
                        if (var_s6_3 >= var_t0_3) {
loop_236:
                            if ((sp208 >= var_a7_2->unk0) && (sp208 < var_a7_2->unk4)) {
                                temp_t0_2 = (var_t0_3 < sp130) ? sp130 : (s64) var_t0_3;
                                sp42 = (s16) temp_t0_2;
                                temp_v1_3 = var_a7_2->unk6;
                                var_a2_2 = (s64) (temp_t0_2 << 0x30) >> 0x30;
                                temp_v1_4 = (var_s6_3 < temp_v1_3) ? var_s6_3 : (s64) temp_v1_3;
                                var_a4_2 = (s64) (temp_v1_4 << 0x30) >> 0x30;
                                sp46 = (s16) temp_v1_4;
                                if (var_a2_2 != var_a4_2) {
                                    sp90 = var_s6_3;
                                    sp98 = sp130;
                                    if (var_s7 != 0) {
                                        temp_a5_4 = var_s6_3 - var_a4_2;
                                        if (var_a4_2 != var_s6_3) {
                                            var_t0_4 = *(var_s3_3 + sp1E8);
                                            temp_a1_6 = var_t0_4 - var_s2_4;
                                            temp_a6_4 = var_t0_4 - temp_a1_6;
                                            temp_s8 = var_s3_3 + 1;
                                            var_s4_3 = 0;
                                            spA0 = (s64) sp1D0->unkA;
                                            var_a1_6 = temp_a1_6 + temp_a5_4;
                                            if (temp_a5_4 < temp_a6_4) {

                                            } else {
                                                var_a3_2 = temp_a5_4 - temp_a6_4;
                                                var_s8_2 = (temp_s8 == spA0) ? 0 : temp_s8;
                                                if (spA0 > 0) {
                                                    var_a6_3 = spA0 & 7;
                                                    var_a1_7 = sp1E8;
                                                    temp_t0_3 = spA0 + sp1E8;
                                                    if (var_a6_3 != 0) {
                                                        do {
                                                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
                                                            temp_v0 = *var_a1_7;
                                                            var_a6_3 -= 1;
                                                            var_a1_7 += 1;
                                                            var_s4_3 += temp_v0;
                                                        } while (var_a6_3 != 0);
                                                    }
                                                    temp_a6_5 = spA0 >> 3;
                                                    if (temp_a6_5 != 0) {
                                                        var_a1_8 = var_s4_3;
                                                        if (temp_a6_5 >= 3) {
                                                            sp3A8 = var_a7_2;
                                                            sp3A0 = (s64) var_t8_2;
                                                            sp398 = (s64) var_t3_2;
                                                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t1) */);
                                                            var_a1_9 = var_a1_7->unk6;
                                                            sp318 = var_a3_2;
                                                            var_a0_2 = var_a1_7->unk5;
                                                            var_v1_2 = var_a1_7->unk4;
                                                            var_v0_3 = var_a1_7->unk3;
                                                            var_s2_5 = var_a1_7->unk2;
                                                            var_s1_3 = var_a1_7->unk1;
                                                            sp310 = var_a2_2;
                                                            sp320 = var_a4_2;
                                                            temp_a2_3 = var_a1_7 + 8;
                                                            temp_a4_2 = temp_t0_3 - 0x10;
                                                            var_ra_4 = temp_a2_3->unk1;
                                                            var_t9_2 = var_a1_7->unk8;
                                                            var_t1_2 = temp_a2_3 + 8;
                                                            var_t0_5 = temp_a2_3;
                                                            var_t3_3 = temp_a2_3->unk7;
                                                            var_at_3 = var_a1_7->unk0 + var_s4_3;
                                                            var_t2_2 = var_a1_7->unk7;
loop_267:
                                                            temp_a2_4 = var_t0_5->unk2;
                                                            temp_s2 = var_t0_5->unk3;
                                                            temp_s0_2 = var_t0_5->unk4;
                                                            temp_a3_3 = var_t0_5->unk5;
                                                            temp_a7_4 = var_t0_5->unk6;
                                                            temp_a5_5 = var_t1_2 + 8;
                                                            var_a6_4 = var_t1_2->unk7;
                                                            temp_t8_2 = var_t1_2->unk0;
                                                            temp_at_8 = var_t9_2 + (var_t2_2 + (var_a1_9 + (var_a0_2 + (var_v1_2 + (var_v0_3 + (var_s2_5 + (var_s1_3 + var_at_3)))))));
                                                            temp_t9_2 = var_t1_2->unk1;
                                                            if (var_t0_5 != temp_a4_2) {
                                                                temp_ra = var_t1_2->unk2;
                                                                temp_a1_7 = var_t1_2->unk3;
                                                                temp_a0_8 = var_t1_2->unk4;
                                                                var_s0_3 = var_t1_2->unk5;
                                                                temp_a3_4 = var_t1_2->unk6;
                                                                temp_at_9 = temp_a7_4 + (temp_a3_3 + (temp_s0_2 + (temp_s2 + (temp_a2_4 + (var_ra_4 + temp_at_8)))));
                                                                var_t0_5 = temp_a5_5 + 8;
                                                                var_t2_2 = temp_a5_5->unk7;
                                                                temp_a7_5 = var_t1_2->unk8;
                                                                temp_at_10 = temp_t8_2 + (var_t3_3 + temp_at_9);
                                                                var_s1_3 = temp_a5_5->unk1;
                                                                if (var_t1_2 != temp_a4_2) {
                                                                    var_s2_5 = temp_a5_5->unk2;
                                                                    var_v0_3 = temp_a5_5->unk3;
                                                                    var_v1_2 = temp_a5_5->unk4;
                                                                    var_a0_2 = temp_a5_5->unk5;
                                                                    var_a1_9 = temp_a5_5->unk6;
                                                                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                                                                    temp_at_11 = temp_a3_4 + (var_s0_3 + (temp_a0_8 + (temp_a1_7 + (temp_ra + (temp_t9_2 + temp_at_10)))));
                                                                    var_t1_2 = var_t0_5 + 8;
                                                                    var_t3_3 = var_t0_5->unk7;
                                                                    var_t9_2 = temp_a5_5->unk8;
                                                                    var_at_3 = temp_a7_5 + (var_a6_4 + temp_at_11);
                                                                    var_ra_4 = var_t0_5->unk1;
                                                                    if (temp_a5_5 == temp_a4_2) {
                                                                        sp330 = var_s7;
                                                                        sp308 = var_s8_2;
                                                                        var_a2_2 = sp310;
                                                                        var_a3_2 = sp318;
                                                                        var_s6_4 = var_a1_9;
                                                                        var_a4_2 = sp320;
                                                                        var_s0_3 = var_a0_2;
                                                                        var_a6_4 = var_t3_3;
                                                                        var_t3_2 = (s32) sp398;
                                                                        var_t1_2 = var_t0_5;
                                                                        var_t0_6 = var_v1_2;
                                                                        var_t8_2 = (s32) sp3A0;
                                                                        var_s3_4 = var_v0_3;
                                                                        var_s5_2 = var_at_3;
                                                                        var_a7_2 = sp3A8;
                                                                    } else {
                                                                        goto loop_267;
                                                                    }
                                                                } else {
                                                                    sp330 = var_s7;
                                                                    sp308 = var_s8_2;
                                                                    var_t1_2 = temp_a5_5;
                                                                    var_t0_6 = temp_a0_8;
                                                                    var_s3_4 = temp_a1_7;
                                                                    var_a2_2 = sp310;
                                                                    var_s5_2 = temp_at_10;
                                                                    var_a4_2 = sp320;
                                                                    var_s6_4 = temp_a3_4;
                                                                    var_a3_2 = sp318;
                                                                    var_s2_5 = temp_ra;
                                                                    var_ra_4 = var_s1_3;
                                                                    var_t8_2 = (s32) sp3A0;
                                                                    var_s1_3 = temp_t9_2;
                                                                    var_t9_2 = temp_a7_5;
                                                                    var_a7_2 = sp3A8;
                                                                    temp_t3 = var_t2_2;
                                                                    var_t2_2 = var_a6_4;
                                                                    var_a6_4 = temp_t3;
                                                                    var_t3_2 = (s32) sp398;
                                                                }
                                                            } else {
                                                                sp330 = var_s7;
                                                                sp308 = var_s8_2;
                                                                var_s3_4 = temp_s2;
                                                                var_s2_5 = temp_a2_4;
                                                                var_a2_2 = sp310;
                                                                var_s5_2 = temp_at_8;
                                                                var_a3_2 = sp318;
                                                                var_a4_2 = sp320;
                                                                var_s1_3 = var_ra_4;
                                                                var_t2_2 = var_t3_3;
                                                                var_t3_2 = (s32) sp398;
                                                                var_ra_4 = temp_t9_2;
                                                                var_t9_2 = temp_t8_2;
                                                                var_t8_2 = (s32) sp3A0;
                                                                var_t0_6 = temp_s0_2;
                                                                var_s6_4 = temp_a7_4;
                                                                var_a7_2 = sp3A8;
                                                                var_s0_3 = temp_a3_3;
                                                            }
                                                            var_s8_2 = sp308;
                                                            var_s7 = sp330;
                                                            var_s4_3 = var_a6_4 + (var_t1_2->unk6 + (var_t1_2->unk5 + (var_t1_2->unk4 + (var_t1_2->unk3 + (var_t1_2->unk2 + (var_ra_4 + (var_t9_2 + (var_t2_2 + (var_s6_4 + (var_s0_3 + (var_t0_6 + (var_s3_4 + (var_s2_5 + (var_s1_3 + var_s5_2))))))))))))));
                                                        } else {
                                                            var_a5 = var_a1_7;
                                                            do {
                                                                temp_t2 = var_a5->unk5;
                                                                temp_t1 = var_a5->unk6;
                                                                temp_a6_6 = var_a5->unk7;
                                                                temp_a1_8 = var_a5->unk4 + (var_a5->unk3 + (var_a5->unk2 + (var_a5->unk1 + (var_a5->unk0 + var_a1_8))));
                                                                var_a5 += 8;
                                                                var_a1_8 = temp_a6_6 + (temp_t1 + (temp_t2 + temp_a1_8));
                                                            } while (var_a5 != temp_t0_3);
                                                            var_s4_3 = var_a1_8;
                                                        }
                                                    }
                                                }
                                                if (var_a3_2 >= var_s4_3) {
                                                    M2C_TRAP_IF(var_s4_3 == 0);
                                                    var_a3_2 = (s64) (var_a3_2 % var_s4_3);
                                                }
                                                var_a5_2 = *(var_s8_2 + sp1E8);
                                                var_s3_3 = var_s8_2;
                                                if (var_a3_2 >= (s32) var_a5_2) {
                                                    do {
                                                        temp_s8_2 = var_s8_2 + 1;
                                                        var_s8_2 = (temp_s8_2 == spA0) ? 0 : temp_s8_2;
                                                        var_a3_2 -= var_a5_2;
                                                        var_a5_2 = *(var_s8_2 + sp1E8);
                                                    } while (var_a3_2 >= (s32) var_a5_2);
                                                    var_s3_3 = var_s8_2;
                                                }
                                                var_a1_6 = var_a3_2;
                                                var_t0_4 = var_a5_2;
                                            }
                                            var_s2_4 = var_t0_4 - var_a1_6;
                                            var_s6_3 = var_a4_2;
                                        }
                                    } else if (var_a2_2 != sp130) {
                                        var_t0_7 = *(var_s3_3 + sp1E8);
                                        temp_a6_7 = var_t0_7 - var_s2_4;
                                        temp_a1_9 = var_a2_2 - sp130;
                                        temp_a5_6 = var_t0_7 - temp_a6_7;
                                        temp_t9_3 = var_s3_3 + 1;
                                        var_t1_3 = sp1D0->unkA;
                                        var_a6_5 = temp_a6_7 + temp_a1_9;
                                        if (temp_a1_9 < temp_a5_6) {

                                        } else {
                                            var_t0_8 = 0;
                                            var_a6_6 = var_t1_3 & 7;
                                            var_s8_3 = temp_a1_9 - temp_a5_6;
                                            var_t9_3 = (temp_t9_3 == var_t1_3) ? 0 : temp_t9_3;
                                            if ((s32) var_t1_3 > 0) {
                                                var_a1_10 = sp1E8;
                                                temp_s0_3 = var_t1_3 + sp1E8;
                                                if (var_a6_6 != 0) {
                                                    do {
                                                        var_a6_6 -= 1;
                                                        temp_at_12 = *var_a1_10;
                                                        var_a1_10 += 1;
                                                        var_t0_8 += temp_at_12;
                                                    } while (var_a6_6 != 0);
                                                }
                                                temp_a6_8 = (s32) var_t1_3 >> 3;
                                                if (temp_a6_8 != 0) {
                                                    temp_t0_4 = temp_s0_3 - 0x10;
                                                    if (temp_a6_8 >= 3) {
                                                        sp3A0 = (s64) var_t8_2;
                                                        sp398 = (s64) var_t3_2;
                                                        sp2B8 = var_t9_3;
                                                        sp2A8 = (s64) var_t1_3;
                                                        sp320 = var_a4_2;
                                                        var_a4_3 = var_a1_10->unk7;
                                                        sp310 = var_a2_2;
                                                        var_a2_3 = var_a1_10->unk5;
                                                        var_a1_11 = var_a1_10->unk4;
                                                        var_a0_3 = var_a1_10->unk3;
                                                        var_v1_3 = var_a1_10->unk2;
                                                        var_a6_7 = var_a1_10->unk1;
                                                        sp3A8 = var_a7_2;
                                                        var_a7_3 = var_a1_10 + 8;
                                                        var_ra_5 = var_a7_3->unk2;
                                                        var_a5_3 = var_a7_3->unk1;
                                                        var_at_4 = var_a1_10->unk0 + var_t0_8;
                                                        var_s0_4 = var_a1_10->unk6;
loop_401:
                                                        temp_a3_5 = var_a7_3->unk3;
                                                        temp_t1_2 = var_a7_3->unk4;
                                                        var_t2_3 = var_a7_3->unk5;
                                                        temp_t9_4 = var_a7_3->unk6;
                                                        temp_t3_2 = var_a7_3->unk7;
                                                        temp_t8_3 = var_a7_3 + 8;
                                                        temp_at_13 = var_a4_3 + (var_s0_4 + (var_a2_3 + (var_a1_11 + (var_a0_3 + (var_v1_3 + (var_a6_7 + var_at_4))))));
                                                        var_a6_7 = temp_t8_3->unk1;
                                                        temp_at_14 = var_a7_3->unk0 + temp_at_13;
                                                        var_v1_3 = temp_t8_3->unk2;
                                                        if (var_a7_3 != temp_t0_4) {
                                                            var_a0_3 = temp_t8_3->unk3;
                                                            var_a1_11 = temp_t8_3->unk4;
                                                            var_a2_3 = temp_t8_3->unk5;
                                                            var_s0_4 = temp_t8_3->unk6;
                                                            var_a4_3 = temp_t8_3->unk7;
                                                            temp_v0_2 = temp_t9_4 + (var_t2_3 + (temp_t1_2 + (temp_a3_5 + (var_ra_5 + (var_a5_3 + temp_at_14)))));
                                                            var_a7_3 = temp_t8_3 + 8;
                                                            var_a5_3 = var_a7_3->unk1;
                                                            var_at_4 = var_a7_3->unk8 + (temp_t3_2 + temp_v0_2);
                                                            var_ra_5 = var_a7_3->unk2;
                                                            if (temp_t8_3 == temp_t0_4) {
                                                                var_t1_3 = (u16) sp2A8;
                                                                var_s2_6 = var_a1_11;
                                                                var_t9_3 = sp2B8;
                                                                var_s3_5 = var_a0_3;
                                                                var_t2_3 = var_a2_3;
                                                                var_a2_2 = sp310;
                                                                var_s4_4 = var_v1_3;
                                                                var_s5_3 = var_at_4;
                                                                var_t3_2 = (s32) sp398;
                                                                var_t8_2 = (s32) sp3A0;
                                                                var_s1_4 = var_a7_3;
                                                                temp_v0_3 = var_a5_3;
                                                                var_a7_2 = sp3A8;
                                                                var_a5_3 = var_a6_7;
                                                                var_a6_7 = temp_v0_3;
                                                            } else {
                                                                goto loop_401;
                                                            }
                                                        } else {
                                                            var_a2_2 = sp310;
                                                            var_s2_6 = temp_t1_2;
                                                            var_t1_3 = (u16) sp2A8;
                                                            var_s3_5 = temp_a3_5;
                                                            var_s0_4 = temp_t9_4;
                                                            var_t9_3 = sp2B8;
                                                            var_a4_3 = temp_t3_2;
                                                            var_t3_2 = (s32) sp398;
                                                            var_s4_4 = var_ra_5;
                                                            var_ra_5 = var_v1_3;
                                                            var_s1_4 = temp_t8_3;
                                                            var_t8_2 = (s32) sp3A0;
                                                            var_s5_3 = temp_at_14;
                                                            var_a7_2 = sp3A8;
                                                        }
                                                        var_a4_2 = sp320;
                                                        var_t0_8 = var_s1_4->unk7 + (var_s1_4->unk6 + (var_s1_4->unk5 + (var_s1_4->unk4 + (var_s1_4->unk3 + (var_ra_5 + (var_a6_7 + (var_s1_4->unk0 + (var_a4_3 + (var_s0_4 + (var_t2_3 + (var_s2_6 + (var_s3_5 + (var_s4_4 + (var_a5_3 + var_s5_3))))))))))))));
                                                    } else {
                                                        var_a1_12 = var_t0_8;
                                                        var_a5_4 = var_a1_10;
                                                        do {
                                                            var_a5_4 += 8;
                                                            var_a1_12 = var_a5_4->unk-1 + (var_a5_4->unk-2 + (var_a5_4->unk-3 + (var_a5_4->unk-4 + (var_a5_4->unk-5 + (var_a5_4->unk-6 + (var_a5_4->unk-7 + (var_a5_4->unk-8 + var_a1_12)))))));
                                                        } while (var_a5_4 != temp_s0_3);
                                                        var_t0_8 = var_a1_12;
                                                    }
                                                }
                                            }
                                            if (var_s8_3 >= var_t0_8) {
                                                M2C_TRAP_IF(var_t0_8 == 0);
                                                var_s8_3 = var_s8_3 % var_t0_8;
                                            }
                                            var_a1_13 = *(var_t9_3 + sp1E8);
                                            var_s3_3 = var_t9_3;
                                            if (var_s8_3 >= (s32) var_a1_13) {
                                                do {
                                                    temp_t9_5 = var_t9_3 + 1;
                                                    var_t9_3 = (temp_t9_5 == var_t1_3) ? 0 : temp_t9_5;
                                                    var_s8_3 -= var_a1_13;
                                                    var_a1_13 = *(var_t9_3 + sp1E8);
                                                } while (var_s8_3 >= (s32) var_a1_13);
                                                var_s3_3 = var_t9_3;
                                            }
                                            var_a6_5 = var_s8_3;
                                            var_t0_7 = var_a1_13;
                                        }
                                        var_s2_4 = var_t0_7 - var_a6_5;
                                        sp130 = var_a2_2;
                                    }
                                    var_s1_5 = var_a4_2 - var_a2_2;
loop_285:
                                    temp_s0_4 = (var_s1_5 < var_s2_4) ? var_s1_5 : var_s2_4;
                                    if (var_s7 != 0) {
                                        sp46 = (s16) var_s6_3;
                                        var_s6_3 -= temp_s0_4;
                                        sp42 = (s16) var_s6_3;
                                    } else {
                                        sp42 = (s16) sp130;
                                        temp_v0_4 = temp_s0_4 + sp130;
                                        sp130 = temp_v0_4;
                                        sp46 = (s16) temp_v0_4;
                                    }
                                    var_s1_5 -= temp_s0_4;
                                    if (var_s3_3 & 1) {
                                        if (sp1F0 != 0) {
                                            sp3A8 = var_a7_2;
                                            sp3A0 = (s64) var_t8_2;
                                            sp398 = (s64) var_t3_2;
                                            ((? (*)(s16 *, ?, s64, s64, s64, s64)) spD0)(&sp40, 1, spC0, spC8, spD8, sp188);
                                            var_t3_2 = (s32) sp398;
                                            var_t8_2 = (s32) sp3A0;
                                            goto block_282;
                                        }
                                    } else {
                                        sp3A8 = var_a7_2;
                                        sp3A0 = (s64) var_t8_2;
                                        sp398 = (s64) var_t3_2;
                                        ((? (*)(s16 *, ?, s64, s64, s64, s64)) spD0)(&sp40, 1, sp88, spC8, spD8, sp188);
                                        var_t3_2 = (s32) sp398;
                                        var_t8_2 = (s32) sp3A0;
block_282:
                                        var_a7_2 = sp3A8;
                                    }
                                    var_s2_4 -= temp_s0_4;
                                    if (var_s2_4 == 0) {
                                        temp_s3 = var_s3_3 + 1;
                                        var_s3_3 = (sp1D0->unkA == temp_s3) ? 0 : temp_s3;
                                        var_s2_4 = (s64) *(var_s3_3 + sp1E8);
                                    }
                                    if (var_s1_5 > 0) {
                                        goto loop_285;
                                    }
                                    sp130 = sp98;
                                    var_s6_3 = sp90;
                                }
                            }
                            temp_at_15 = sp1D8 - 1;
                            var_a7_2 += 8;
                            sp1D8 = temp_at_15;
                            if (temp_at_15 != 0) {
                                var_t0_3 = var_a7_2->unk2;
                                if (var_s6_3 >= var_t0_3) {
                                    goto loop_236;
                                }
                            }
                        }
                    }
                }
                var_a5_5 = *(sp158 + sp1E8);
                temp_a7_6 = var_a5_5 - sp168;
                temp_a1_10 = var_s6_3 - sp130;
                temp_a6_9 = var_a5_5 - temp_a7_6;
                var_a7_4 = temp_a7_6 + temp_a1_10;
                var_a3_3 = sp1D0->unkA;
                var_s8_4 = temp_a1_10 - temp_a6_9;
                if (temp_a1_10 < temp_a6_9) {

                } else {
                    temp_a4_3 = sp158 + 1;
                    var_a6_8 = var_a3_3 & 7;
                    var_a4_4 = (temp_a4_3 == var_a3_3) ? 0 : temp_a4_3;
                    var_s3_6 = 0;
                    if ((s32) var_a3_3 > 0) {
                        var_a1_14 = sp1E8;
                        temp_a7_7 = var_a3_3 + sp1E8;
                        if (var_a6_8 != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
                                temp_at_16 = *var_a1_14;
                                var_a6_8 -= 1;
                                var_a1_14 += 1;
                                var_s3_6 += temp_at_16;
                            } while (var_a6_8 != 0);
                        }
                        temp_a6_10 = (s32) var_a3_3 >> 3;
                        if (temp_a6_10 != 0) {
                            var_a1_15 = var_s3_6;
                            if (temp_a6_10 >= 3) {
                                sp3A0 = (s64) var_t8_2;
                                sp338 = (s64) var_a3_3;
                                sp398 = (s64) var_t3_2;
                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t1) */);
                                var_a1_16 = var_a1_14->unk6;
                                var_a0_4 = var_a1_14->unk5;
                                var_v1_4 = var_a1_14->unk4;
                                var_v0_4 = var_a1_14->unk3;
                                var_s2_7 = var_a1_14->unk2;
                                var_s1_6 = var_a1_14->unk1;
                                var_t2_4 = var_a1_14->unk7;
                                sp350 = var_a4_4;
                                temp_a2_5 = var_a1_14 + 8;
                                var_ra_6 = temp_a2_5->unk1;
                                temp_a4_4 = temp_a7_7 - 0x10;
                                var_t9_4 = var_a1_14->unk8;
                                var_t1_4 = temp_a2_5 + 8;
                                var_t3_4 = temp_a2_5->unk7;
                                var_at_5 = var_a1_14->unk0 + var_s3_6;
                                var_t0_9 = temp_a2_5;
loop_32:
                                temp_a2_6 = var_t0_9->unk2;
                                temp_s2_2 = var_t0_9->unk3;
                                temp_s0_5 = var_t0_9->unk4;
                                temp_a3_6 = var_t0_9->unk5;
                                var_a7_5 = var_t0_9->unk6;
                                temp_a5_7 = var_t1_4 + 8;
                                var_a6_9 = var_t1_4->unk7;
                                temp_t8_4 = var_t1_4->unk0;
                                temp_at_17 = var_t9_4 + (var_t2_4 + (var_a1_16 + (var_a0_4 + (var_v1_4 + (var_v0_4 + (var_s2_7 + (var_s1_6 + var_at_5)))))));
                                temp_t9_6 = var_t1_4->unk1;
                                if (var_t0_9 != temp_a4_4) {
                                    temp_ra_2 = var_t1_4->unk2;
                                    temp_a1_11 = var_t1_4->unk3;
                                    temp_a0_9 = var_t1_4->unk4;
                                    var_s0_5 = var_t1_4->unk5;
                                    temp_a3_7 = var_t1_4->unk6;
                                    temp_at_18 = var_a7_5 + (temp_a3_6 + (temp_s0_5 + (temp_s2_2 + (temp_a2_6 + (var_ra_6 + temp_at_17)))));
                                    var_t0_9 = temp_a5_7 + 8;
                                    var_t2_4 = temp_a5_7->unk7;
                                    temp_a7_8 = var_t1_4->unk8;
                                    temp_at_19 = temp_t8_4 + (var_t3_4 + temp_at_18);
                                    var_s1_6 = temp_a5_7->unk1;
                                    if (var_t1_4 != temp_a4_4) {
                                        var_s2_7 = temp_a5_7->unk2;
                                        var_v0_4 = temp_a5_7->unk3;
                                        var_v1_4 = temp_a5_7->unk4;
                                        var_a0_4 = temp_a5_7->unk5;
                                        var_a1_16 = temp_a5_7->unk6;
                                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                                        temp_at_20 = temp_a3_7 + (var_s0_5 + (temp_a0_9 + (temp_a1_11 + (temp_ra_2 + (temp_t9_6 + temp_at_19)))));
                                        var_t1_4 = var_t0_9 + 8;
                                        var_t3_4 = var_t0_9->unk7;
                                        var_t9_4 = temp_a5_7->unk8;
                                        var_at_5 = temp_a7_8 + (var_a6_9 + temp_at_20);
                                        var_ra_6 = var_t0_9->unk1;
                                        if (temp_a5_7 == temp_a4_4) {
                                            var_t1_4 = var_t0_9;
                                            var_a3_3 = (u16) sp338;
                                            var_a7_5 = var_a1_16;
                                            var_s0_5 = var_a0_4;
                                            var_a4_4 = sp350;
                                            var_s4_5 = var_v1_4;
                                            var_a6_9 = var_t3_4;
                                            var_t3_2 = (s32) sp398;
                                            var_s5_4 = var_v0_4;
                                            var_s6_5 = var_at_5;
                                            goto block_36;
                                        }
                                        goto loop_32;
                                    }
                                    var_t1_4 = temp_a5_7;
                                    var_s4_5 = temp_a0_9;
                                    var_s5_4 = temp_a1_11;
                                    var_s6_5 = temp_at_19;
                                    var_s2_7 = temp_ra_2;
                                    var_ra_6 = var_s1_6;
                                    var_a4_4 = sp350;
                                    var_s1_6 = temp_t9_6;
                                    var_a3_3 = (u16) sp338;
                                    var_t9_4 = temp_a7_8;
                                    temp_t3_3 = var_t2_4;
                                    var_t2_4 = var_a6_9;
                                    var_a6_9 = temp_t3_3;
                                    var_t3_2 = (s32) sp398;
                                    var_a7_5 = temp_a3_7;
block_36:
                                    var_t8_2 = (s32) sp3A0;
                                } else {
                                    var_s5_4 = temp_s2_2;
                                    var_s2_7 = temp_a2_6;
                                    var_s6_5 = temp_at_17;
                                    var_a3_3 = (u16) sp338;
                                    var_s4_5 = temp_s0_5;
                                    var_a4_4 = sp350;
                                    var_s1_6 = var_ra_6;
                                    var_t2_4 = var_t3_4;
                                    var_t3_2 = (s32) sp398;
                                    var_ra_6 = temp_t9_6;
                                    var_t9_4 = temp_t8_4;
                                    var_t8_2 = (s32) sp3A0;
                                    var_s0_5 = temp_a3_6;
                                }
                                var_s3_6 = var_a6_9 + (var_t1_4->unk6 + (var_t1_4->unk5 + (var_t1_4->unk4 + (var_t1_4->unk3 + (var_t1_4->unk2 + (var_ra_6 + (var_t9_4 + (var_t2_4 + (var_a7_5 + (var_s0_5 + (var_s4_5 + (var_s5_4 + (var_s2_7 + (var_s1_6 + var_s6_5))))))))))))));
                            } else {
                                var_a5_6 = var_a1_14;
                                do {
                                    temp_t0_5 = var_a5_6->unk5;
                                    temp_a6_11 = var_a5_6->unk6;
                                    temp_a0_10 = var_a5_6->unk7;
                                    temp_a1_12 = var_a5_6->unk4 + (var_a5_6->unk3 + (var_a5_6->unk2 + (var_a5_6->unk1 + (var_a5_6->unk0 + var_a1_15))));
                                    var_a5_6 += 8;
                                    var_a1_15 = temp_a0_10 + (temp_a6_11 + (temp_t0_5 + temp_a1_12));
                                } while (var_a5_6 != temp_a7_7);
                                var_s3_6 = var_a1_15;
                            }
                        }
                    }
                    if (var_s8_4 >= var_s3_6) {
                        M2C_TRAP_IF(var_s3_6 == 0);
                        var_s8_4 = var_s8_4 % var_s3_6;
                    }
                    var_a1_17 = *(var_a4_4 + sp1E8);
                    if (var_s8_4 >= (s32) var_a1_17) {
                        do {
                            temp_a4_5 = var_a4_4 + 1;
                            var_a4_4 = (temp_a4_5 == var_a3_3) ? 0 : temp_a4_5;
                            var_s8_4 -= var_a1_17;
                            var_a1_17 = *(var_a4_4 + sp1E8);
                        } while (var_s8_4 >= (s32) var_a1_17);
                    }
                    sp158 = var_a4_4;
                    var_a7_4 = var_s8_4;
                    var_a5_5 = var_a1_17;
                }
                var_at_6 = var_a5_5 - var_a7_4;
                goto block_46;
            }
        } else {
            if (sp220 == sp218) {
                temp_at_21 = sp208 < sp200;
                var_s8_5 = (temp_at_21 != 0) ? 0 : 1;
                var_s7_2 = (temp_at_21 != 0) ? sp208 : (sp200 + 1);
                var_s6_6 = (temp_at_21 != 0) ? sp200 : (sp208 + 1);
                if (sp1D8 != 0) {
                    if (sp218 >= var_a7_2->unk6) {
loop_64:
                        temp_v1_5 = sp1D8 - 1;
                        var_a7_2 += 8;
                        sp1D8 = temp_v1_5;
                        if (temp_v1_5 != 0) {
                            if (sp218 < var_a7_2->unk6) {
                                goto block_67;
                            }
                            goto loop_64;
                        }
                    } else {
block_67:
                        if ((sp1D8 != 0) && (var_s3_7 = sp158, var_s2_8 = sp168, ((sp218 < var_a7_2->unk2) == 0)) && (sp4A = (s16) sp218, sp4E = sp218 + 1, temp_t0_6 = var_a7_2->unk2, spA8 = (s64) temp_t0_6, (sp1D8 != 0))) {
                            if (temp_t0_6 == spA8) {
                                spF8 = var_s7_2;
loop_300:
                                var_s5_5 = var_s6_6;
                                spF8 = var_s7_2;
                                if (var_s7_2 >= var_a7_2->unk4) {
                                    var_s7_2 = spF8;
                                    var_a7_2 += 8;
                                    sp1D8 -= 1;
                                    goto block_298;
                                }
                                temp_t1_3 = var_a7_2->unk0;
                                var_s7_2 = spF8;
                                if (temp_t1_3 < var_s6_6) {
                                    temp_t1_4 = (temp_t1_3 < var_s7_2) ? var_s7_2 : (s64) temp_t1_3;
                                    sp48 = (s16) temp_t1_4;
                                    temp_at_22 = var_a7_2->unk4;
                                    var_a2_4 = (s64) (temp_t1_4 << 0x30) >> 0x30;
                                    temp_at_23 = (var_s6_6 < temp_at_22) ? var_s6_6 : (s64) temp_at_22;
                                    var_a4_5 = (s64) (temp_at_23 << 0x30) >> 0x30;
                                    var_s4_6 = var_s7_2;
                                    sp4C = (s16) temp_at_23;
                                    if (var_a2_4 != var_a4_5) {
                                        if (var_s8_5 != 0) {
                                            if (var_a4_5 != var_s6_6) {
                                                var_t0_10 = *(var_s3_7 + sp1E8);
                                                temp_a1_13 = var_t0_10 - var_s2_8;
                                                temp_a5_8 = var_s6_6 - var_a4_5;
                                                temp_a6_12 = var_t0_10 - temp_a1_13;
                                                var_a1_18 = temp_a1_13 + temp_a5_8;
                                                var_s0_6 = sp1D0->unkA;
                                                var_a3_4 = temp_a5_8 - temp_a6_12;
                                                if (temp_a5_8 < temp_a6_12) {

                                                } else {
                                                    sp2C0 = var_s5_5;
                                                    sp2C8 = var_s4_6;
                                                    temp_s5_2 = var_s3_7 + 1;
                                                    var_a6_10 = var_s0_6 & 7;
                                                    var_a1_19 = sp1E8;
                                                    var_s5_6 = (temp_s5_2 == var_s0_6) ? 0 : temp_s5_2;
                                                    var_s4_7 = 0;
                                                    if ((s32) var_s0_6 > 0) {
                                                        temp_t0_7 = var_s0_6 + sp1E8;
                                                        if (var_a6_10 != 0) {
                                                            do {
                                                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
                                                                temp_at_24 = *var_a1_19;
                                                                var_a6_10 -= 1;
                                                                var_a1_19 += 1;
                                                                var_s4_7 += temp_at_24;
                                                            } while (var_a6_10 != 0);
                                                        }
                                                        temp_a6_13 = (s32) var_s0_6 >> 3;
                                                        if (temp_a6_13 != 0) {
                                                            var_a1_20 = var_s4_7;
                                                            if (temp_a6_13 >= 3) {
                                                                sp3A8 = var_a7_2;
                                                                sp3A0 = (s64) var_t8_2;
                                                                sp2D8 = var_s5_6;
                                                                sp2D0 = (s64) var_s0_6;
                                                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t2) */);
                                                                var_a1_21 = var_a1_19->unk6;
                                                                var_a0_5 = var_a1_19->unk5;
                                                                sp2E8 = var_a3_4;
                                                                var_v1_5 = var_a1_19->unk4;
                                                                var_v0_5 = var_a1_19->unk3;
                                                                var_s2_9 = var_a1_19->unk2;
                                                                var_s1_7 = var_a1_19->unk1;
                                                                sp398 = (s64) var_t3_2;
                                                                sp2E0 = var_a2_4;
                                                                sp2F0 = var_a4_5;
                                                                temp_a2_7 = var_a1_19 + 8;
                                                                temp_a4_6 = temp_t0_7 - 0x10;
                                                                var_ra_7 = temp_a2_7->unk1;
                                                                var_t0_11 = temp_a2_7;
                                                                var_t9_5 = var_a1_19->unk8;
                                                                var_at_7 = var_a1_19->unk0 + var_s4_7;
                                                                var_t3_5 = temp_a2_7->unk7;
                                                                var_t1_5 = temp_a2_7 + 8;
                                                                var_t2_5 = var_a1_19->unk7;
loop_324:
                                                                temp_a2_8 = var_t0_11->unk2;
                                                                temp_s2_3 = var_t0_11->unk3;
                                                                var_s0_7 = var_t0_11->unk4;
                                                                temp_a3_8 = var_t0_11->unk5;
                                                                temp_a7_9 = var_t0_11->unk6;
                                                                temp_a5_9 = var_t1_5 + 8;
                                                                var_a6_11 = var_t1_5->unk7;
                                                                temp_t8_5 = var_t1_5->unk0;
                                                                temp_at_25 = var_t9_5 + (var_t2_5 + (var_a1_21 + (var_a0_5 + (var_v1_5 + (var_v0_5 + (var_s2_9 + (var_s1_7 + var_at_7)))))));
                                                                temp_t9_7 = var_t1_5->unk1;
                                                                if (var_t0_11 != temp_a4_6) {
                                                                    temp_ra_3 = var_t1_5->unk2;
                                                                    temp_a1_14 = var_t1_5->unk3;
                                                                    temp_a0_11 = var_t1_5->unk4;
                                                                    temp_s0_6 = var_t1_5->unk5;
                                                                    temp_a3_9 = var_t1_5->unk6;
                                                                    temp_at_26 = temp_a7_9 + (temp_a3_8 + (var_s0_7 + (temp_s2_3 + (temp_a2_8 + (var_ra_7 + temp_at_25)))));
                                                                    var_t0_11 = temp_a5_9 + 8;
                                                                    var_t2_5 = temp_a5_9->unk7;
                                                                    temp_a7_10 = var_t1_5->unk8;
                                                                    temp_at_27 = temp_t8_5 + (var_t3_5 + temp_at_26);
                                                                    var_s1_7 = temp_a5_9->unk1;
                                                                    if (var_t1_5 != temp_a4_6) {
                                                                        var_s2_9 = temp_a5_9->unk2;
                                                                        var_v0_5 = temp_a5_9->unk3;
                                                                        var_v1_5 = temp_a5_9->unk4;
                                                                        var_a0_5 = temp_a5_9->unk5;
                                                                        var_a1_21 = temp_a5_9->unk6;
                                                                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                                                                        temp_at_28 = temp_a3_9 + (temp_s0_6 + (temp_a0_11 + (temp_a1_14 + (temp_ra_3 + (temp_t9_7 + temp_at_27)))));
                                                                        var_t1_5 = var_t0_11 + 8;
                                                                        var_t3_5 = var_t0_11->unk7;
                                                                        var_t9_5 = temp_a5_9->unk8;
                                                                        var_at_7 = temp_a7_10 + (var_a6_11 + temp_at_28);
                                                                        var_ra_7 = var_t0_11->unk1;
                                                                        if (temp_a5_9 == temp_a4_6) {
                                                                            sp328 = var_s8_5;
                                                                            var_a2_4 = sp2E0;
                                                                            var_a3_4 = sp2E8;
                                                                            var_s5_7 = var_a1_21;
                                                                            var_a4_5 = sp2F0;
                                                                            var_s6_7 = var_a0_5;
                                                                            var_a6_11 = var_t3_5;
                                                                            var_t3_2 = (s32) sp398;
                                                                            var_s0_7 = var_v1_5;
                                                                            var_t8_2 = (s32) sp3A0;
                                                                            var_t1_5 = var_t0_11;
                                                                            var_t0_12 = var_v0_5;
                                                                            var_s3_8 = var_at_7;
                                                                            goto block_328;
                                                                        }
                                                                        goto loop_324;
                                                                    }
                                                                    sp328 = var_s8_5;
                                                                    var_t1_5 = temp_a5_9;
                                                                    var_s6_7 = temp_s0_6;
                                                                    var_s0_7 = temp_a0_11;
                                                                    var_t0_12 = temp_a1_14;
                                                                    var_a4_5 = sp2F0;
                                                                    var_s3_8 = temp_at_27;
                                                                    var_s5_7 = temp_a3_9;
                                                                    var_a3_4 = sp2E8;
                                                                    var_t3_2 = (s32) sp398;
                                                                    var_s2_9 = temp_ra_3;
                                                                    var_ra_7 = var_s1_7;
                                                                    var_t8_2 = (s32) sp3A0;
                                                                    var_s1_7 = temp_t9_7;
                                                                    var_t9_5 = temp_a7_10;
                                                                    var_a7_2 = sp3A8;
                                                                    temp_a2_9 = var_t2_5;
                                                                    var_t2_5 = var_a6_11;
                                                                    var_a6_11 = temp_a2_9;
                                                                    var_a2_4 = sp2E0;
                                                                } else {
                                                                    sp328 = var_s8_5;
                                                                    var_t0_12 = temp_s2_3;
                                                                    var_s2_9 = temp_a2_8;
                                                                    var_a2_4 = sp2E0;
                                                                    var_s6_7 = temp_a3_8;
                                                                    var_a3_4 = sp2E8;
                                                                    var_s3_8 = temp_at_25;
                                                                    var_a4_5 = sp2F0;
                                                                    var_t2_5 = var_t3_5;
                                                                    var_t3_2 = (s32) sp398;
                                                                    var_s1_7 = var_ra_7;
                                                                    var_ra_7 = temp_t9_7;
                                                                    var_t9_5 = temp_t8_5;
                                                                    var_t8_2 = (s32) sp3A0;
                                                                    var_s5_7 = temp_a7_9;
block_328:
                                                                    var_a7_2 = sp3A8;
                                                                }
                                                                var_s0_6 = (u16) sp2D0;
                                                                var_s8_5 = sp328;
                                                                var_s7_2 = spF8;
                                                                var_s5_6 = sp2D8;
                                                                var_s4_7 = var_a6_11 + (var_t1_5->unk6 + (var_t1_5->unk5 + (var_t1_5->unk4 + (var_t1_5->unk3 + (var_t1_5->unk2 + (var_ra_7 + (var_t9_5 + (var_t2_5 + (var_s5_7 + (var_s6_7 + (var_s0_7 + (var_t0_12 + (var_s2_9 + (var_s1_7 + var_s3_8))))))))))))));
                                                            } else {
                                                                var_a5_7 = var_a1_19;
                                                                do {
                                                                    temp_t1_5 = var_a5_7->unk5;
                                                                    temp_a6_14 = var_a5_7->unk6;
                                                                    temp_a0_12 = var_a5_7->unk7;
                                                                    temp_a1_15 = var_a5_7->unk4 + (var_a5_7->unk3 + (var_a5_7->unk2 + (var_a5_7->unk1 + (var_a5_7->unk0 + var_a1_20))));
                                                                    var_a5_7 += 8;
                                                                    var_a1_20 = temp_a0_12 + (temp_a6_14 + (temp_t1_5 + temp_a1_15));
                                                                } while (var_a5_7 != temp_t0_7);
                                                                var_s4_7 = var_a1_20;
                                                            }
                                                        }
                                                    }
                                                    if (var_a3_4 >= var_s4_7) {
                                                        M2C_TRAP_IF(var_s4_7 == 0);
                                                        var_a3_4 = (s64) (var_a3_4 % var_s4_7);
                                                    }
                                                    var_a5_8 = *(var_s5_6 + sp1E8);
                                                    var_s4_6 = sp2C8;
                                                    if (var_a3_4 >= (s32) var_a5_8) {
                                                        do {
                                                            temp_s5_3 = var_s5_6 + 1;
                                                            var_s5_6 = (temp_s5_3 == var_s0_6) ? 0 : temp_s5_3;
                                                            var_a3_4 -= var_a5_8;
                                                            var_a5_8 = *(var_s5_6 + sp1E8);
                                                        } while (var_a3_4 >= (s32) var_a5_8);
                                                    }
                                                    var_a1_18 = var_a3_4;
                                                    var_t0_10 = var_a5_8;
                                                    var_s3_7 = var_s5_6;
                                                    var_s5_5 = sp2C0;
                                                }
                                                var_s2_8 = var_t0_10 - var_a1_18;
                                                var_s6_6 = var_a4_5;
                                            }
                                        } else if (var_a2_4 != var_s7_2) {
                                            var_t0_13 = *(var_s3_7 + sp1E8);
                                            temp_a6_15 = var_t0_13 - var_s2_8;
                                            temp_a1_16 = var_a2_4 - var_s7_2;
                                            temp_a5_10 = var_t0_13 - temp_a6_15;
                                            temp_t9_8 = var_s3_7 + 1;
                                            var_t1_6 = sp1D0->unkA;
                                            var_a6_12 = temp_a6_15 + temp_a1_16;
                                            var_s7_3 = temp_a1_16 - temp_a5_10;
                                            if (temp_a1_16 < temp_a5_10) {

                                            } else {
                                                var_a6_13 = var_t1_6 & 7;
                                                var_t9_6 = (temp_t9_8 == var_t1_6) ? 0 : temp_t9_8;
                                                var_t0_14 = 0;
                                                if ((s32) var_t1_6 > 0) {
                                                    var_a1_22 = sp1E8;
                                                    temp_ra_4 = var_t1_6 + sp1E8;
                                                    if (var_a6_13 != 0) {
                                                        do {
                                                            var_a6_13 -= 1;
                                                            temp_at_29 = *var_a1_22;
                                                            var_a1_22 += 1;
                                                            var_t0_14 += temp_at_29;
                                                        } while (var_a6_13 != 0);
                                                    }
                                                    temp_a6_16 = (s32) var_t1_6 >> 3;
                                                    if (temp_a6_16 != 0) {
                                                        temp_t0_8 = temp_ra_4 - 0x10;
                                                        if (temp_a6_16 >= 3) {
                                                            sp3A0 = (s64) var_t8_2;
                                                            sp398 = (s64) var_t3_2;
                                                            sp2C8 = var_s4_6;
                                                            sp2C0 = var_s5_5;
                                                            sp248 = var_t9_6;
                                                            sp2F0 = var_a4_5;
                                                            var_a4_6 = var_a1_22->unk7;
                                                            sp2E0 = var_a2_4;
                                                            var_a2_5 = var_a1_22->unk5;
                                                            var_a1_23 = var_a1_22->unk4;
                                                            var_a0_6 = var_a1_22->unk3;
                                                            var_v1_6 = var_a1_22->unk2;
                                                            sp3A8 = var_a7_2;
                                                            sp240 = (s64) var_t1_6;
                                                            var_a7_6 = var_a1_22 + 8;
                                                            var_a6_14 = var_a1_22->unk1;
                                                            var_at_8 = var_a1_22->unk0 + var_t0_14;
                                                            var_a5_9 = var_a7_6->unk1;
                                                            var_s0_8 = var_a1_22->unk6;
                                                            var_ra_8 = var_a7_6->unk2;
loop_426:
                                                            temp_a3_10 = var_a7_6->unk3;
                                                            temp_t1_6 = var_a7_6->unk4;
                                                            var_t2_6 = var_a7_6->unk5;
                                                            temp_t9_9 = var_a7_6->unk6;
                                                            temp_t3_4 = var_a7_6->unk7;
                                                            temp_t8_6 = var_a7_6 + 8;
                                                            temp_at_30 = var_a4_6 + (var_s0_8 + (var_a2_5 + (var_a1_23 + (var_a0_6 + (var_v1_6 + (var_a6_14 + var_at_8))))));
                                                            var_a6_14 = temp_t8_6->unk1;
                                                            temp_at_31 = var_a7_6->unk0 + temp_at_30;
                                                            var_v1_6 = temp_t8_6->unk2;
                                                            if (var_a7_6 != temp_t0_8) {
                                                                var_a0_6 = temp_t8_6->unk3;
                                                                var_a1_23 = temp_t8_6->unk4;
                                                                var_a2_5 = temp_t8_6->unk5;
                                                                var_s0_8 = temp_t8_6->unk6;
                                                                var_a4_6 = temp_t8_6->unk7;
                                                                temp_v0_5 = temp_t9_9 + (var_t2_6 + (temp_t1_6 + (temp_a3_10 + (var_ra_8 + (var_a5_9 + temp_at_31)))));
                                                                var_a7_6 = temp_t8_6 + 8;
                                                                var_a5_9 = var_a7_6->unk1;
                                                                var_at_8 = var_a7_6->unk8 + (temp_t3_4 + temp_v0_5);
                                                                var_ra_8 = var_a7_6->unk2;
                                                                if (temp_t8_6 == temp_t0_8) {
                                                                    var_t1_6 = (u16) sp240;
                                                                    var_s2_10 = var_a1_23;
                                                                    var_t9_6 = sp248;
                                                                    var_s3_9 = var_a0_6;
                                                                    var_t2_6 = var_a2_5;
                                                                    var_a2_4 = sp2E0;
                                                                    var_s4_8 = var_v1_6;
                                                                    var_s5_8 = var_at_8;
                                                                    var_t3_2 = (s32) sp398;
                                                                    var_t8_2 = (s32) sp3A0;
                                                                    var_s1_8 = var_a7_6;
                                                                    temp_v0_6 = var_a5_9;
                                                                    var_a7_2 = sp3A8;
                                                                    var_a5_9 = var_a6_14;
                                                                    var_a6_14 = temp_v0_6;
                                                                } else {
                                                                    goto loop_426;
                                                                }
                                                            } else {
                                                                var_a2_4 = sp2E0;
                                                                var_s2_10 = temp_t1_6;
                                                                var_t1_6 = (u16) sp240;
                                                                var_s3_9 = temp_a3_10;
                                                                var_s0_8 = temp_t9_9;
                                                                var_t9_6 = sp248;
                                                                var_a4_6 = temp_t3_4;
                                                                var_t3_2 = (s32) sp398;
                                                                var_s4_8 = var_ra_8;
                                                                var_ra_8 = var_v1_6;
                                                                var_s1_8 = temp_t8_6;
                                                                var_t8_2 = (s32) sp3A0;
                                                                var_s5_8 = temp_at_31;
                                                                var_a7_2 = sp3A8;
                                                            }
                                                            var_a4_5 = sp2F0;
                                                            var_s5_5 = sp2C0;
                                                            var_t0_14 = var_s1_8->unk7 + (var_s1_8->unk6 + (var_s1_8->unk5 + (var_s1_8->unk4 + (var_s1_8->unk3 + (var_ra_8 + (var_a6_14 + (var_s1_8->unk0 + (var_a4_6 + (var_s0_8 + (var_t2_6 + (var_s2_10 + (var_s3_9 + (var_s4_8 + (var_a5_9 + var_s5_8))))))))))))));
                                                            var_s4_6 = sp2C8;
                                                        } else {
                                                            var_a1_24 = var_t0_14;
                                                            var_a5_10 = var_a1_22;
                                                            do {
                                                                var_a5_10 += 8;
                                                                var_a1_24 = var_a5_10->unk-1 + (var_a5_10->unk-2 + (var_a5_10->unk-3 + (var_a5_10->unk-4 + (var_a5_10->unk-5 + (var_a5_10->unk-6 + (var_a5_10->unk-7 + (var_a5_10->unk-8 + var_a1_24)))))));
                                                            } while (var_a5_10 != temp_ra_4);
                                                            var_t0_14 = var_a1_24;
                                                        }
                                                    }
                                                }
                                                if (var_s7_3 >= var_t0_14) {
                                                    M2C_TRAP_IF(var_t0_14 == 0);
                                                    var_s7_3 = var_s7_3 % var_t0_14;
                                                }
                                                var_a1_25 = *(var_t9_6 + sp1E8);
                                                var_s3_7 = var_t9_6;
                                                if (var_s7_3 >= (s32) var_a1_25) {
                                                    do {
                                                        temp_t9_10 = var_t9_6 + 1;
                                                        var_t9_6 = (temp_t9_10 == var_t1_6) ? 0 : temp_t9_10;
                                                        var_s7_3 -= var_a1_25;
                                                        var_a1_25 = *(var_t9_6 + sp1E8);
                                                    } while (var_s7_3 >= (s32) var_a1_25);
                                                    var_s3_7 = var_t9_6;
                                                }
                                                var_a6_12 = var_s7_3;
                                                var_t0_13 = var_a1_25;
                                            }
                                            var_s2_8 = var_t0_13 - var_a6_12;
                                            var_s7_2 = var_a2_4;
                                        }
                                        var_s1_9 = var_a4_5 - var_a2_4;
loop_342:
                                        temp_s0_7 = (var_s1_9 < var_s2_8) ? var_s1_9 : var_s2_8;
                                        if (var_s8_5 != 0) {
                                            sp4C = (s16) var_s6_6;
                                            var_s6_6 -= temp_s0_7;
                                            sp48 = (s16) var_s6_6;
                                        } else {
                                            sp48 = (s16) var_s7_2;
                                            var_s7_2 += temp_s0_7;
                                            sp4C = (s16) var_s7_2;
                                        }
                                        var_s1_9 -= temp_s0_7;
                                        if (var_s3_7 & 1) {
                                            if (sp1F0 != 0) {
                                                sp3A8 = var_a7_2;
                                                sp3A0 = (s64) var_t8_2;
                                                sp398 = (s64) var_t3_2;
                                                ((? (*)(s16 *, ?, s64, s64, s64, s64)) spD0)(&sp48, 1, spC0, spC8, spD8, sp188);
                                                var_t3_2 = (s32) sp398;
                                                var_t8_2 = (s32) sp3A0;
                                                goto block_339;
                                            }
                                        } else {
                                            sp3A8 = var_a7_2;
                                            sp3A0 = (s64) var_t8_2;
                                            sp398 = (s64) var_t3_2;
                                            ((? (*)(s16 *, ?, s64, s64, s64, s64)) spD0)(&sp48, 1, sp88, spC8, spD8, sp188);
                                            var_t3_2 = (s32) sp398;
                                            var_t8_2 = (s32) sp3A0;
block_339:
                                            var_a7_2 = sp3A8;
                                        }
                                        var_s2_8 -= temp_s0_7;
                                        if (var_s2_8 == 0) {
                                            temp_s3_2 = var_s3_7 + 1;
                                            var_s3_7 = (sp1D0->unkA == temp_s3_2) ? 0 : temp_s3_2;
                                            var_s2_8 = (s64) *(var_s3_7 + sp1E8);
                                        }
                                        if (var_s1_9 > 0) {
                                            goto loop_342;
                                        }
                                        var_s7_2 = var_s4_6;
                                        var_s6_6 = var_s5_5;
                                    }
                                    var_a7_2 += 8;
                                    sp1D8 -= 1;
block_298:
                                    if (sp1D8 != 0) {
                                        if (var_a7_2->unk2 == spA8) {
                                            goto loop_300;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                var_a5_11 = *(sp158 + sp1E8);
                temp_a7_11 = var_a5_11 - sp168;
                temp_a1_17 = var_s6_6 - var_s7_2;
                temp_a6_17 = var_a5_11 - temp_a7_11;
                var_a7_7 = temp_a7_11 + temp_a1_17;
                var_a3_5 = sp1D0->unkA;
                var_s8_6 = temp_a1_17 - temp_a6_17;
                if (temp_a1_17 >= temp_a6_17) {
                    temp_a4_7 = sp158 + 1;
                    var_a6_15 = var_a3_5 & 7;
                    var_a4_7 = (temp_a4_7 == var_a3_5) ? 0 : temp_a4_7;
                    var_s3_10 = 0;
                    if ((s32) var_a3_5 > 0) {
                        var_a1_26 = sp1E8;
                        temp_a7_12 = var_a3_5 + sp1E8;
                        if (var_a6_15 != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
                                temp_at_32 = *var_a1_26;
                                var_a6_15 -= 1;
                                var_a1_26 += 1;
                                var_s3_10 += temp_at_32;
                            } while (var_a6_15 != 0);
                        }
                        temp_a6_18 = (s32) var_a3_5 >> 3;
                        if (temp_a6_18 != 0) {
                            var_a1_27 = var_s3_10;
                            if (temp_a6_18 >= 3) {
                                sp3A0 = (s64) var_t8_2;
                                sp340 = (s64) var_a3_5;
                                sp398 = (s64) var_t3_2;
                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t1) */);
                                var_a1_28 = var_a1_26->unk6;
                                var_a0_7 = var_a1_26->unk5;
                                var_v1_7 = var_a1_26->unk4;
                                var_v0_6 = var_a1_26->unk3;
                                var_s2_11 = var_a1_26->unk2;
                                var_s1_10 = var_a1_26->unk1;
                                var_t2_7 = var_a1_26->unk7;
                                sp348 = var_a4_7;
                                temp_a2_10 = var_a1_26 + 8;
                                var_ra_9 = temp_a2_10->unk1;
                                temp_a4_8 = temp_a7_12 - 0x10;
                                var_t9_7 = var_a1_26->unk8;
                                var_t1_7 = temp_a2_10 + 8;
                                var_t3_6 = temp_a2_10->unk7;
                                var_at_9 = var_a1_26->unk0 + var_s3_10;
                                var_t0_15 = temp_a2_10;
loop_122:
                                temp_a2_11 = var_t0_15->unk2;
                                var_s2_12 = var_t0_15->unk3;
                                temp_s0_8 = var_t0_15->unk4;
                                temp_a3_11 = var_t0_15->unk5;
                                var_a7_8 = var_t0_15->unk6;
                                temp_a5_11 = var_t1_7 + 8;
                                var_a6_16 = var_t1_7->unk7;
                                temp_t8_7 = var_t1_7->unk0;
                                temp_at_33 = var_t9_7 + (var_t2_7 + (var_a1_28 + (var_a0_7 + (var_v1_7 + (var_v0_6 + (var_s2_11 + (var_s1_10 + var_at_9)))))));
                                var_t9_8 = var_t1_7->unk1;
                                if (var_t0_15 != temp_a4_8) {
                                    var_ra_10 = var_t1_7->unk2;
                                    temp_a1_18 = var_t1_7->unk3;
                                    temp_a0_13 = var_t1_7->unk4;
                                    var_s0_9 = var_t1_7->unk5;
                                    temp_a3_12 = var_t1_7->unk6;
                                    temp_at_34 = var_a7_8 + (temp_a3_11 + (temp_s0_8 + (var_s2_12 + (temp_a2_11 + (var_ra_9 + temp_at_33)))));
                                    var_t0_15 = temp_a5_11 + 8;
                                    var_t2_7 = temp_a5_11->unk7;
                                    temp_a7_13 = var_t1_7->unk8;
                                    temp_at_35 = temp_t8_7 + (var_t3_6 + temp_at_34);
                                    var_s1_10 = temp_a5_11->unk1;
                                    if (var_t1_7 != temp_a4_8) {
                                        var_s2_11 = temp_a5_11->unk2;
                                        var_v0_6 = temp_a5_11->unk3;
                                        var_v1_7 = temp_a5_11->unk4;
                                        var_a0_7 = temp_a5_11->unk5;
                                        var_a1_28 = temp_a5_11->unk6;
                                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                                        temp_at_36 = temp_a3_12 + (var_s0_9 + (temp_a0_13 + (temp_a1_18 + (var_ra_10 + (var_t9_8 + temp_at_35)))));
                                        var_t1_7 = var_t0_15 + 8;
                                        var_t3_6 = var_t0_15->unk7;
                                        var_t9_7 = temp_a5_11->unk8;
                                        var_at_9 = temp_a7_13 + (var_a6_16 + temp_at_36);
                                        var_ra_9 = var_t0_15->unk1;
                                        if (temp_a5_11 == temp_a4_8) {
                                            var_a7_8 = var_a1_28;
                                            var_s0_9 = var_a0_7;
                                            var_t1_7 = var_t0_15;
                                            var_t0_16 = var_v1_7;
                                            var_s4_9 = var_at_9;
                                            var_s5_9 = var_t9_7;
                                            var_t3_2 = (s32) sp398;
                                            var_a6_16 = var_t2_7;
                                            var_t8_2 = (s32) sp3A0;
                                            temp_t2_2 = var_s1_10;
                                            var_s1_10 = var_ra_9;
                                            var_s2_12 = var_v0_6;
                                            var_a3_5 = (u16) sp340;
                                            var_t9_8 = temp_t2_2;
                                            var_t2_7 = var_t3_6;
                                            var_ra_10 = var_s2_11;
                                            goto block_126;
                                        }
                                        goto loop_122;
                                    }
                                    var_t1_7 = temp_a5_11;
                                    var_t0_16 = temp_a0_13;
                                    var_a4_7 = sp348;
                                    var_s2_12 = temp_a1_18;
                                    var_a3_5 = (u16) sp340;
                                    var_s4_9 = temp_at_35;
                                    var_t3_2 = (s32) sp398;
                                    var_s5_9 = temp_a7_13;
                                    var_t8_2 = (s32) sp3A0;
                                    var_a7_8 = temp_a3_12;
                                } else {
                                    var_s4_9 = temp_at_33;
                                    var_s1_10 = var_t9_8;
                                    var_t2_7 = var_a6_16;
                                    var_t0_16 = temp_s0_8;
                                    var_s5_9 = temp_t8_7;
                                    var_t3_2 = (s32) sp398;
                                    var_t8_2 = (s32) sp3A0;
                                    var_s0_9 = temp_a3_11;
                                    var_a6_16 = var_t3_6;
                                    var_ra_10 = temp_a2_11;
                                    var_a3_5 = (u16) sp340;
                                    var_t9_8 = var_ra_9;
block_126:
                                    var_a4_7 = sp348;
                                }
                                var_s3_10 = var_t2_7 + (var_t1_7->unk6 + (var_t1_7->unk5 + (var_t1_7->unk4 + (var_t1_7->unk3 + (var_t1_7->unk2 + (var_s1_10 + (var_s5_9 + (var_a6_16 + (var_a7_8 + (var_s0_9 + (var_t0_16 + (var_s2_12 + (var_ra_10 + (var_t9_8 + var_s4_9))))))))))))));
                            } else {
                                var_a5_12 = var_a1_26;
                                do {
                                    temp_t0_9 = var_a5_12->unk5;
                                    temp_a6_19 = var_a5_12->unk6;
                                    temp_a0_14 = var_a5_12->unk7;
                                    temp_a1_19 = var_a5_12->unk4 + (var_a5_12->unk3 + (var_a5_12->unk2 + (var_a5_12->unk1 + (var_a5_12->unk0 + var_a1_27))));
                                    var_a5_12 += 8;
                                    var_a1_27 = temp_a0_14 + (temp_a6_19 + (temp_t0_9 + temp_a1_19));
                                } while (var_a5_12 != temp_a7_12);
                                var_s3_10 = var_a1_27;
                            }
                        }
                    }
                    if (var_s8_6 >= var_s3_10) {
                        M2C_TRAP_IF(var_s3_10 == 0);
                        var_s8_6 = var_s8_6 % var_s3_10;
                    }
                    var_a1_29 = *(var_a4_7 + sp1E8);
                    if (var_s8_6 >= (s32) var_a1_29) {
                        do {
                            temp_a4_9 = var_a4_7 + 1;
                            var_a4_7 = (temp_a4_9 == var_a3_5) ? 0 : temp_a4_9;
                            var_s8_6 -= var_a1_29;
                            var_a1_29 = *(var_a4_7 + sp1E8);
                        } while (var_s8_6 >= (s32) var_a1_29);
                    }
                    sp158 = var_a4_7;
                    var_a7_7 = var_s8_6;
                    var_a5_11 = var_a1_29;
                }
                var_at_6 = var_a5_11 - var_a7_7;
                goto block_46;
            }
            sp3B8 = M2C_ERROR(/* Read from unset register $a3 */);
            sp3C0 = M2C_ERROR(/* Read from unset register $a4 */);
            temp_a3_13 = sp200 - sp208;
            sp228 = (temp_a3_13 >= 0) ? (temp_a3_13 > 0) : -1;
            sp3B0 = M2C_ERROR(/* Read from unset register $a2 */);
            temp_v0_7 = sp220 - sp218;
            sp210 = (temp_v0_7 >= 0) ? (temp_v0_7 > 0) : -1;
            temp_a2_12 = (temp_a3_13 < 0) ? 4 : 0;
            temp_at_37 = (temp_v0_7 >= 0) ? temp_a2_12 : (temp_a2_12 | 2);
            temp_a4_10 = (temp_v0_7 >= 1) ? temp_v0_7 : (sp218 - sp220);
            temp_a0_15 = (temp_a3_13 >= 1) ? temp_a3_13 : (sp208 - sp200);
            sp170 = temp_a4_10;
            temp_a2_13 = temp_a4_10 * 2;
            sp180 = temp_a0_15;
            temp_a3_14 = temp_a4_10 < temp_a0_15;
            temp_a1_20 = temp_a0_15 * 2;
            sp1F8 = 0;
            sp1B8 = (temp_a3_14 == 0) ? (temp_a1_20 - temp_a2_13) : (temp_a2_13 - temp_a1_20);
            sp230 = (temp_a3_14 == 0) ? temp_a1_20 : temp_a2_13;
            sp238 = (temp_a3_14 != 0) ? 0 : 1;
            temp_a1_21 = (temp_a3_14 != 0) ? temp_at_37 : (temp_at_37 | 1);
            temp_a2_14 = (spB0 >> temp_a1_21) & 1;
            sp150 = temp_a2_14;
            sp160 = ((temp_a3_14 == 0) ? -temp_a4_10 : -temp_a0_15) - temp_a2_14;
            if (sp1D8 != 0) {
                sp148 = temp_a1_21 & 1;
                spE0 = temp_a1_21 & 4;
                spB8 = sp158 + 1;
                spE8 = sp170 * 2;
                sp138 = sp180 * 2;
                sp140 = temp_a1_21 & 2;
                sp1C8 = sp230 - sp1B8;
loop_80:
                temp_t1_7 = var_a7_2->unk0;
                var_t3_7 = 8;
                if (sp208 >= temp_t1_7) {
                    var_t3_7 = (sp208 >= var_a7_2->unk4) ? 4 : 0;
                }
                temp_t0_10 = var_a7_2->unk2;
                if (sp218 < temp_t0_10) {
                    var_t3_2 = var_t3_7 | 2;
                } else {
                    var_t3_2 = (sp218 >= var_a7_2->unk6) ? (var_t3_7 | 1) : var_t3_7;
                }
                if (sp200 < temp_t1_7) {
                    var_t8_3 = 8;
                } else {
                    var_t8_3 = (sp200 >= var_a7_2->unk4) ? 4 : 0;
                }
                if (sp220 < temp_t0_10) {
                    var_t8_2 = var_t8_3 | 2;
                } else {
                    var_t8_2 = (sp220 >= var_a7_2->unk6) ? (var_t8_3 | 1) : var_t8_3;
                }
                var_a6_17 = var_t3_2;
                var_t9_9 = sp218;
                temp_v1_6 = var_t8_2 | var_t3_2;
                var_t2_8 = var_t8_2;
                var_s3_11 = sp220;
                var_ra_11 = 0;
                var_s1_11 = 0;
                sp1A0 = temp_v1_6;
                if (temp_v1_6 != 0) {
                    if (!(var_t8_2 & var_t3_2)) {
                        var_a4_8 = sp200;
                        var_s8_7 = var_t9_9;
                        var_a1_30 = var_s3_11;
                        var_s2_13 = 0;
                        var_a2_6 = sp208;
                        temp_s7_2 = var_a7_2->unk6 - 1;
                        temp_s6_2 = var_a7_2->unk4 - 1;
                        var_s5_10 = var_a2_6;
                        var_a5_13 = var_a4_8;
loop_91:
                        if (var_a6_17 & var_t2_8) {

                        } else {
                            temp_at_38 = var_s8_7;
                            if ((var_a6_17 | var_t2_8) != 0) {
                                if (var_a6_17 == 0) {
                                    var_s2_13 = var_s2_13 == 0;
                                    var_s8_7 = var_a1_30;
                                    var_a1_30 = temp_at_38;
                                    temp_v0_8 = var_s5_10;
                                    var_s5_10 = var_a5_13;
                                    temp_a0_16 = var_a2_6;
                                    var_a2_6 = var_a4_8;
                                    temp_v1_7 = var_t9_9;
                                    var_t9_9 = var_s3_11;
                                    var_a5_13 = temp_v0_8;
                                    var_s3_11 = temp_v1_7;
                                    temp_v1_8 = var_ra_11;
                                    var_ra_11 = var_s1_11;
                                    var_a4_8 = temp_a0_16;
                                    temp_a0_17 = var_a6_17;
                                    var_a6_17 = var_t2_8;
                                    var_t2_8 = temp_a0_17;
                                    var_s1_11 = temp_v1_8;
                                }
                                temp_v1_9 = temp_t1_7 - var_s5_10;
                                var_ra_11 |= var_a6_17;
                                if (var_a6_17 & 8) {
                                    temp_a6_20 = var_s2_13 != 0;
                                    sp1C0 = sp140;
                                    var_a2_6 = (s64) temp_t1_7;
                                    sp1E0 = temp_v1_9;
                                    if (temp_v1_9 <= 0x7FFFU) {
                                        sp178 = var_s8_7;
                                        var_v0_7 = (sp148 != 0) ? ((temp_a6_20 != 0) ? 0x34 : 0x3C) : ((temp_a6_20 != 0) ? 0x1A : 0x12);
                                    } else {
                                        sp178 = var_a1_30;
                                        sp1E0 = var_a5_13 - temp_t1_7;
                                        sp1C0 = sp1C0 == 0;
                                        var_v0_7 = (sp148 != 0) ? ((temp_a6_20 != 0) ? 0x18 : 0x10) : ((temp_a6_20 != 0) ? 0x12 : 0x1A);
                                    }
                                    sp198 = var_v0_7;
                                } else {
                                    temp_a0_18 = temp_t0_10 - var_s8_7;
                                    if (var_a6_17 & 2) {
                                        sp1E0 = temp_a0_18;
                                        var_t9_9 = (s64) temp_t0_10;
                                        sp1C0 = spE0;
                                        temp_a6_21 = var_s2_13 != 0;
                                        if (temp_a0_18 <= 0x7FFFU) {
                                            sp178 = var_s5_10;
                                            var_v0_8 = (sp148 != 0) ? ((temp_a6_21 != 0) ? 9 : 1) : ((temp_a6_21 != 0) ? 0x27 : 0x2F);
                                        } else {
                                            sp1E0 = var_a1_30 - temp_t0_10;
                                            sp178 = var_a5_13;
                                            sp1C0 = sp1C0 == 0;
                                            var_v0_8 = (sp148 != 0) ? ((temp_a6_21 != 0) ? 1 : 9) : ((temp_a6_21 != 0) ? 0xB : 3);
                                        }
                                        sp198 = var_v0_8;
                                    } else {
                                        temp_a0_19 = var_s5_10 - temp_s6_2;
                                        if (var_a6_17 & 4) {
                                            sp1E0 = temp_a0_19;
                                            var_a2_6 = temp_s6_2;
                                            sp1C0 = sp140;
                                            temp_a6_22 = var_s2_13 != 0;
                                            if (temp_a0_19 <= 0x7FFFU) {
                                                sp178 = var_s8_7;
                                                sp198 = (sp148 != 0) ? ((temp_a6_22 != 0) ? 0x34 : 0x3C) : ((temp_a6_22 != 0) ? 0x1A : 0x12);
                                            } else {
                                                sp178 = var_a1_30;
                                                sp1E0 = temp_s6_2 - var_a5_13;
                                                sp1C0 = sp1C0 == 0;
                                                sp198 = (sp148 != 0) ? ((temp_a6_22 != 0) ? 0x18 : 0x10) : ((temp_a6_22 != 0) ? 0x12 : 0x1A);
                                            }
                                        } else {
                                            temp_a6_23 = var_s2_13 != 0;
                                            temp_v1_10 = var_s8_7 - temp_s7_2;
                                            if (var_a6_17 & 1) {
                                                var_t9_9 = temp_s7_2;
                                                sp1E0 = temp_v1_10;
                                                sp1C0 = spE0;
                                                if (temp_v1_10 <= 0x7FFFU) {
                                                    sp178 = var_s5_10;
                                                    sp198 = (sp148 != 0) ? ((temp_a6_23 != 0) ? 9 : 1) : ((temp_a6_23 != 0) ? 0x27 : 0x2F);
                                                } else {
                                                    sp178 = var_a5_13;
                                                    sp1E0 = temp_s7_2 - var_a1_30;
                                                    sp1C0 = sp1C0 == 0;
                                                    sp198 = (sp148 != 0) ? ((temp_a6_23 != 0) ? 1 : 9) : ((temp_a6_23 != 0) ? 0xB : 3);
                                                }
                                            }
                                        }
                                    }
                                }
                                temp_a6_24 = sp1E0 * 2;
                                sp1C0 = (var_s2_13 != 0) ? (sp1C0 == 0) : sp1C0;
                                temp_t0_11 = sp198 & 1;
                                temp_a6_25 = (temp_t0_11 == 0) ? (sp170 * temp_a6_24) : (sp180 * temp_a6_24);
                                if (sp198 & 2) {
                                    var_at_10 = sp180 + temp_a6_25;
                                    var_a6_18 = temp_a6_25 - sp180;
                                } else {
                                    var_at_10 = sp170 + temp_a6_25;
                                    var_a6_18 = temp_a6_25 - sp170;
                                }
                                temp_a6_26 = !(sp198 & 4) ? var_at_10 : var_a6_18;
                                temp_a6_27 = !(sp198 & 8) ? (temp_a6_26 - sp150) : ((temp_a6_26 + sp150) - 1);
                                if (sp198 & 0x10) {
                                    M2C_TRAP_IF(sp138 == 0);
                                    sp1E0 = (u64) (temp_a6_27 / sp138);
                                } else {
                                    M2C_TRAP_IF(spE8 == 0);
                                    sp1E0 = (u64) (temp_a6_27 / spE8);
                                }
                                temp_a0_20 = !(sp198 & 0x20) ? sp1E0 : (sp1E0 + 1);
                                temp_v0_9 = (sp1C0 == 0) ? temp_a0_20 : (u64) -(s32) temp_a0_20;
                                temp_at_39 = sp178 + temp_v0_9;
                                var_a2_6 = (temp_t0_11 != 0) ? temp_at_39 : var_a2_6;
                                var_t9_9 = (temp_t0_11 == 0) ? temp_at_39 : var_t9_9;
                                sp1E0 = temp_v0_9;
                                temp_v1_11 = (var_a2_6 < temp_t1_7) ? 8 : 0;
                                temp_at_40 = (temp_s6_2 >= var_a2_6) ? temp_v1_11 : (temp_v1_11 | 4);
                                temp_a0_21 = (var_t9_9 >= temp_t0_10) ? temp_at_40 : (temp_at_40 | 2);
                                var_a6_17 = (temp_s7_2 >= var_t9_9) ? temp_a0_21 : (temp_a0_21 | 1);
                                goto loop_91;
                            }
                            temp_v0_10 = var_t9_9;
                            if (var_s2_13 != 0) {
                                var_t9_9 = var_s3_11;
                                var_s3_11 = temp_v0_10;
                                temp_at_41 = var_ra_11;
                                var_ra_11 = var_s1_11;
                                temp_v1_12 = var_a2_6;
                                var_a2_6 = var_a4_8;
                                var_a4_8 = temp_v1_12;
                                var_s1_11 = temp_at_41;
                            }
                            temp_v1_13 = var_s3_11 - var_t9_9;
                            if (1 != -1) {
                                var_a1_31 = (temp_v1_13 >= 1) ? temp_v1_13 : (var_t9_9 - var_s3_11);
                                if (sp238 != 0) {

                                } else {
                                    temp_v1_14 = var_a4_8 - var_a2_6;
                                    var_a1_31 = (temp_v1_14 >= 1) ? temp_v1_14 : (var_a2_6 - var_a4_8);
                                }
                                var_s6_8 = sp158;
                                var_a1_32 = (var_s1_11 != 0) + var_a1_31;
                                temp_v0_11 = var_t9_9 - sp218;
                                var_s3_12 = sp168;
                                if (var_a1_32 != 0) {
                                    var_a4_9 = sp160;
                                    if (var_ra_11 != 0) {
                                        temp_t1_8 = (temp_v0_11 >= 1) ? temp_v0_11 : (sp218 - var_t9_9);
                                        temp_s0_9 = sp1D0->unkA;
                                        temp_v1_15 = var_a2_6 - sp208;
                                        temp_ra_5 = (temp_v1_15 >= 1) ? temp_v1_15 : (sp208 - var_a2_6);
                                        if (sp238 != 0) {
                                            var_a3_6 = temp_s0_9;
                                            temp_s8_3 = var_s6_8 + 1;
                                            var_t0_17 = *(var_s6_8 + sp1E8);
                                            temp_a6_28 = var_t0_17 - sp168;
                                            temp_t2_3 = var_t0_17 - temp_a6_28;
                                            var_s8_8 = (temp_s8_3 == var_a3_6) ? 0 : temp_s8_3;
                                            var_a4_9 = ((temp_t1_8 - temp_ra_5) * sp230) + (temp_ra_5 * sp1B8) + sp160;
                                            if (temp_t1_8 < temp_t2_3) {
                                                var_a6_19 = temp_t1_8 + temp_a6_28;
                                            } else {
                                                var_s7_4 = temp_t1_8 - temp_t2_3;
                                                var_t2_9 = var_a3_6 & 7;
                                                var_t0_18 = 0;
                                                if ((s32) var_a3_6 > 0) {
                                                    var_a6_20 = sp1E8;
                                                    temp_ra_6 = var_a3_6 + sp1E8;
                                                    if (var_t2_9 != 0) {
                                                        do {
                                                            var_t2_9 -= 1;
                                                            temp_at_42 = *var_a6_20;
                                                            var_a6_20 += 1;
                                                            var_t0_18 += temp_at_42;
                                                        } while (var_t2_9 != 0);
                                                    }
                                                    temp_t2_4 = (s32) var_a3_6 >> 3;
                                                    if (temp_t2_4 != 0) {
                                                        var_a6_21 = var_t0_18;
                                                        if (temp_t2_4 >= 3) {
                                                            sp3A0 = (s64) var_t8_2;
                                                            sp398 = (s64) var_t3_2;
                                                            sp390 = var_t9_9;
                                                            sp370 = var_a4_9;
                                                            var_a4_10 = var_a6_20->unk7;
                                                            sp388 = var_a2_6;
                                                            var_a2_7 = var_a6_20->unk5;
                                                            sp380 = var_a1_32;
                                                            var_a1_33 = var_a6_20->unk4;
                                                            var_a0_8 = var_a6_20->unk3;
                                                            var_v1_8 = var_a6_20->unk2;
                                                            sp378 = (s64) var_a3_6;
                                                            sp3A8 = var_a7_2;
                                                            var_a7_9 = var_a6_20 + 8;
                                                            var_a6_22 = var_a6_20->unk1;
                                                            temp_t0_12 = temp_ra_6 - 0x10;
                                                            var_at_11 = var_a6_20->unk0 + var_t0_18;
                                                            var_a5_14 = var_a7_9->unk1;
                                                            var_s0_10 = var_a6_20->unk6;
                                                            var_ra_12 = var_a7_9->unk2;
loop_154:
                                                            temp_a3_15 = var_a7_9->unk3;
                                                            temp_t1_9 = var_a7_9->unk4;
                                                            var_t2_10 = var_a7_9->unk5;
                                                            temp_t9_11 = var_a7_9->unk6;
                                                            temp_t3_5 = var_a7_9->unk7;
                                                            temp_t8_8 = var_a7_9 + 8;
                                                            temp_at_43 = var_a4_10 + (var_s0_10 + (var_a2_7 + (var_a1_33 + (var_a0_8 + (var_v1_8 + (var_a6_22 + var_at_11))))));
                                                            var_a6_22 = temp_t8_8->unk1;
                                                            temp_at_44 = var_a7_9->unk0 + temp_at_43;
                                                            var_v1_8 = temp_t8_8->unk2;
                                                            if (var_a7_9 != temp_t0_12) {
                                                                var_a0_8 = temp_t8_8->unk3;
                                                                var_a1_33 = temp_t8_8->unk4;
                                                                var_a2_7 = temp_t8_8->unk5;
                                                                var_s0_10 = temp_t8_8->unk6;
                                                                var_a4_10 = temp_t8_8->unk7;
                                                                temp_v0_12 = temp_t9_11 + (var_t2_10 + (temp_t1_9 + (temp_a3_15 + (var_ra_12 + (var_a5_14 + temp_at_44)))));
                                                                var_a7_9 = temp_t8_8 + 8;
                                                                var_a5_14 = var_a7_9->unk1;
                                                                var_at_11 = var_a7_9->unk8 + (temp_t3_5 + temp_v0_12);
                                                                var_ra_12 = var_a7_9->unk2;
                                                                if (temp_t8_8 == temp_t0_12) {
                                                                    var_a3_6 = (u16) sp378;
                                                                    var_s1_12 = var_a1_33;
                                                                    var_a1_32 = sp380;
                                                                    var_t2_10 = var_a2_7;
                                                                    var_a2_6 = sp388;
                                                                    var_s2_14 = var_a0_8;
                                                                    var_t9_9 = sp390;
                                                                    var_s3_13 = var_v1_8;
                                                                    var_s5_11 = var_at_11;
                                                                    var_t3_2 = (s32) sp398;
                                                                    var_t8_2 = (s32) sp3A0;
                                                                    var_s4_10 = var_a7_9;
                                                                    temp_v0_13 = var_a5_14;
                                                                    var_a7_2 = sp3A8;
                                                                    var_a5_14 = var_a6_22;
                                                                    var_a6_22 = temp_v0_13;
                                                                } else {
                                                                    goto loop_154;
                                                                }
                                                            } else {
                                                                var_a1_32 = sp380;
                                                                var_a2_6 = sp388;
                                                                var_s2_14 = temp_a3_15;
                                                                var_a3_6 = (u16) sp378;
                                                                var_s1_12 = temp_t1_9;
                                                                var_s0_10 = temp_t9_11;
                                                                var_t9_9 = sp390;
                                                                var_a4_10 = temp_t3_5;
                                                                var_t3_2 = (s32) sp398;
                                                                var_s3_13 = var_ra_12;
                                                                var_ra_12 = var_v1_8;
                                                                var_s4_10 = temp_t8_8;
                                                                var_t8_2 = (s32) sp3A0;
                                                                var_s5_11 = temp_at_44;
                                                                var_a7_2 = sp3A8;
                                                            }
                                                            var_a4_9 = sp370;
                                                            var_t0_18 = var_s4_10->unk7 + (var_s4_10->unk6 + (var_s4_10->unk5 + (var_s4_10->unk4 + (var_s4_10->unk3 + (var_ra_12 + (var_a6_22 + (var_s4_10->unk0 + (var_a4_10 + (var_s0_10 + (var_t2_10 + (var_s1_12 + (var_s2_14 + (var_s3_13 + (var_a5_14 + var_s5_11))))))))))))));
                                                        } else {
                                                            var_t0_19 = var_a6_20;
                                                            do {
                                                                var_t0_19 += 8;
                                                                var_a6_21 = var_t0_19->unk-1 + (var_t0_19->unk-2 + (var_t0_19->unk-3 + (var_t0_19->unk-4 + (var_t0_19->unk-5 + (var_t0_19->unk-6 + (var_t0_19->unk-7 + (var_t0_19->unk-8 + var_a6_21)))))));
                                                            } while (var_t0_19 != temp_ra_6);
                                                            var_t0_18 = var_a6_21;
                                                        }
                                                    }
                                                }
                                                if (var_s7_4 >= var_t0_18) {
                                                    M2C_TRAP_IF(var_t0_18 == 0);
                                                    var_s7_4 = var_s7_4 % var_t0_18;
                                                }
                                                var_t1_8 = *(var_s8_8 + sp1E8);
                                                var_s6_8 = var_s8_8;
                                                if (var_s7_4 >= (s32) var_t1_8) {
                                                    do {
                                                        temp_s8_4 = var_s8_8 + 1;
                                                        var_s8_8 = (temp_s8_4 == var_a3_6) ? 0 : temp_s8_4;
                                                        var_s7_4 -= var_t1_8;
                                                        var_t1_8 = *(var_s8_8 + sp1E8);
                                                    } while (var_s7_4 >= (s32) var_t1_8);
                                                    var_s6_8 = var_s8_8;
                                                }
                                                var_a6_19 = var_s7_4;
                                                var_t0_17 = var_t1_8;
                                            }
                                            var_s3_12 = var_t0_17 - var_a6_19;
                                        } else {
                                            temp_t0_13 = *(sp158 + sp1E8);
                                            var_s7_5 = temp_s0_9;
                                            temp_a6_29 = temp_t0_13 - sp168;
                                            temp_t0_14 = temp_t0_13 - temp_a6_29;
                                            var_s3_14 = 0;
                                            var_a4_9 = ((temp_ra_5 - temp_t1_8) * sp230) + (temp_t1_8 * sp1B8) + sp160;
                                            if (temp_ra_5 < temp_t0_14) {
                                                var_a6_23 = temp_ra_5 + temp_a6_29;
                                            } else {
                                                var_a5_15 = temp_ra_5 - temp_t0_14;
                                                var_a3_7 = (spB8 == var_s7_5) ? 0 : spB8;
                                                if ((s32) var_s7_5 > 0) {
                                                    var_t1_9 = var_s7_5 & 7;
                                                    var_a6_24 = sp1E8;
                                                    temp_t2_5 = var_s7_5 + sp1E8;
                                                    temp_s0_10 = (s32) var_s7_5 >> 3;
                                                    if (var_t1_9 != 0) {
                                                        do {
                                                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a6) */);
                                                            temp_at_45 = *var_a6_24;
                                                            var_t1_9 -= 1;
                                                            var_a6_24 += 1;
                                                            var_s3_14 += temp_at_45;
                                                        } while (var_t1_9 != 0);
                                                    }
                                                    if (temp_s0_10 != 0) {
                                                        var_a6_25 = var_s3_14;
                                                        if (temp_s0_10 >= 3) {
                                                            sp3A8 = var_a7_2;
                                                            sp3A0 = (s64) var_t8_2;
                                                            sp368 = var_a5_15;
                                                            sp398 = (s64) var_t3_2;
                                                            sp390 = var_t9_9;
                                                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t1) */);
                                                            sp388 = var_a2_6;
                                                            sp360 = var_a3_7;
                                                            var_t0_20 = var_a6_24 + 8;
                                                            sp380 = var_a1_32;
                                                            var_a1_34 = var_a6_24->unk6;
                                                            var_a0_9 = var_a6_24->unk5;
                                                            var_v1_9 = var_a6_24->unk4;
                                                            var_v0_9 = var_a6_24->unk3;
                                                            var_s2_15 = var_a6_24->unk2;
                                                            var_s1_13 = var_a6_24->unk1;
                                                            sp370 = var_a4_9;
                                                            var_t1_10 = var_t0_20 + 8;
                                                            var_t9_10 = var_a6_24->unk8;
                                                            temp_a4_11 = temp_t2_5 - 0x10;
                                                            var_t2_11 = var_a6_24->unk7;
                                                            var_t3_8 = var_t0_20->unk7;
                                                            var_at_12 = var_a6_24->unk0 + var_s3_14;
                                                            var_ra_13 = var_t0_20->unk1;
loop_194:
                                                            temp_a2_15 = var_t0_20->unk2;
                                                            var_s2_16 = var_t0_20->unk3;
                                                            temp_s0_11 = var_t0_20->unk4;
                                                            temp_a3_16 = var_t0_20->unk5;
                                                            temp_a7_14 = var_t0_20->unk6;
                                                            temp_a5_12 = var_t1_10 + 8;
                                                            var_a6_26 = var_t1_10->unk7;
                                                            temp_t8_9 = var_t1_10->unk0;
                                                            temp_at_46 = var_t9_10 + (var_t2_11 + (var_a1_34 + (var_a0_9 + (var_v1_9 + (var_v0_9 + (var_s2_15 + (var_s1_13 + var_at_12)))))));
                                                            temp_t9_12 = var_t1_10->unk1;
                                                            if (var_t0_20 != temp_a4_11) {
                                                                var_ra_14 = var_t1_10->unk2;
                                                                temp_a1_22 = var_t1_10->unk3;
                                                                temp_a0_22 = var_t1_10->unk4;
                                                                var_s0_11 = var_t1_10->unk5;
                                                                temp_a3_17 = var_t1_10->unk6;
                                                                temp_at_47 = temp_a7_14 + (temp_a3_16 + (temp_s0_11 + (var_s2_16 + (temp_a2_15 + (var_ra_13 + temp_at_46)))));
                                                                var_t0_20 = temp_a5_12 + 8;
                                                                var_t2_11 = temp_a5_12->unk7;
                                                                temp_a7_15 = var_t1_10->unk8;
                                                                temp_at_48 = temp_t8_9 + (var_t3_8 + temp_at_47);
                                                                var_s1_13 = temp_a5_12->unk1;
                                                                if (var_t1_10 != temp_a4_11) {
                                                                    var_s2_15 = temp_a5_12->unk2;
                                                                    var_v0_9 = temp_a5_12->unk3;
                                                                    var_v1_9 = temp_a5_12->unk4;
                                                                    var_a0_9 = temp_a5_12->unk5;
                                                                    var_a1_34 = temp_a5_12->unk6;
                                                                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                                                                    temp_at_49 = temp_a3_17 + (var_s0_11 + (temp_a0_22 + (temp_a1_22 + (var_ra_14 + (temp_t9_12 + temp_at_48)))));
                                                                    var_t1_10 = var_t0_20 + 8;
                                                                    var_t3_8 = var_t0_20->unk7;
                                                                    var_t9_10 = temp_a5_12->unk8;
                                                                    var_at_12 = temp_a7_15 + (var_a6_26 + temp_at_49);
                                                                    var_ra_13 = var_t0_20->unk1;
                                                                    if (temp_a5_12 == temp_a4_11) {
                                                                        sp358 = (s64) var_s7_5;
                                                                        var_t1_10 = var_t0_20;
                                                                        var_t0_21 = var_a1_34;
                                                                        var_a1_32 = sp380;
                                                                        var_t3_2 = (s32) sp398;
                                                                        var_s0_11 = var_a0_9;
                                                                        var_s5_12 = var_v1_9;
                                                                        var_t8_2 = (s32) sp3A0;
                                                                        var_a7_2 = sp3A8;
                                                                        var_s2_16 = var_v0_9;
                                                                        var_a3_7 = sp360;
                                                                        var_s6_9 = var_s1_13;
                                                                        var_s1_13 = var_ra_13;
                                                                        var_a5_15 = sp368;
                                                                        var_s4_11 = var_at_12;
                                                                        var_ra_14 = var_s2_15;
                                                                        var_a4_9 = sp370;
                                                                        var_a6_26 = var_t2_11;
                                                                        var_t2_11 = var_t3_8;
                                                                        var_a2_6 = sp388;
                                                                    } else {
                                                                        goto loop_194;
                                                                    }
                                                                } else {
                                                                    sp358 = (s64) var_s7_5;
                                                                    var_a4_9 = sp370;
                                                                    var_a2_6 = sp388;
                                                                    var_t0_21 = temp_a3_17;
                                                                    var_a3_7 = sp360;
                                                                    var_t1_10 = temp_a5_12;
                                                                    var_a5_15 = sp368;
                                                                    var_s2_16 = temp_a1_22;
                                                                    var_a1_32 = sp380;
                                                                    var_s5_12 = temp_a0_22;
                                                                    var_t3_2 = (s32) sp398;
                                                                    var_s4_11 = temp_at_48;
                                                                    var_t8_2 = (s32) sp3A0;
                                                                    var_s6_9 = temp_t9_12;
                                                                    var_t9_10 = temp_a7_15;
                                                                    var_a7_2 = sp3A8;
                                                                }
                                                            } else {
                                                                sp358 = (s64) var_s7_5;
                                                                var_a1_32 = sp380;
                                                                var_s4_11 = temp_at_46;
                                                                var_a3_7 = sp360;
                                                                var_a5_15 = sp368;
                                                                var_t2_11 = var_a6_26;
                                                                var_t0_21 = temp_a7_14;
                                                                var_a4_9 = sp370;
                                                                var_s5_12 = temp_s0_11;
                                                                var_a2_6 = sp388;
                                                                var_s6_9 = var_ra_13;
                                                                var_t3_2 = (s32) sp398;
                                                                var_s1_13 = temp_t9_12;
                                                                var_t9_10 = temp_t8_9;
                                                                var_t8_2 = (s32) sp3A0;
                                                                var_ra_14 = temp_a2_15;
                                                                var_s0_11 = temp_a3_16;
                                                                var_a7_2 = sp3A8;
                                                                var_a6_26 = var_t3_8;
                                                            }
                                                            var_t9_9 = sp390;
                                                            var_s7_5 = (u16) sp358;
                                                            var_s3_14 = var_t2_11 + (var_t1_10->unk6 + (var_t1_10->unk5 + (var_t1_10->unk4 + (var_t1_10->unk3 + (var_t1_10->unk2 + (var_s1_13 + (var_t9_10 + (var_a6_26 + (var_t0_21 + (var_s0_11 + (var_s5_12 + (var_s2_16 + (var_ra_14 + (var_s6_9 + var_s4_11))))))))))))));
                                                        } else {
                                                            var_t0_22 = var_a6_24;
                                                            do {
                                                                temp_s0_12 = var_t0_22->unk5;
                                                                temp_t1_10 = var_t0_22->unk6;
                                                                temp_a0_23 = var_t0_22->unk7;
                                                                temp_a6_30 = var_t0_22->unk4 + (var_t0_22->unk3 + (var_t0_22->unk2 + (var_t0_22->unk1 + (var_t0_22->unk0 + var_a6_25))));
                                                                var_t0_22 += 8;
                                                                var_a6_25 = temp_a0_23 + (temp_t1_10 + (temp_s0_12 + temp_a6_30));
                                                            } while (var_t0_22 != temp_t2_5);
                                                            var_s3_14 = var_a6_25;
                                                        }
                                                    }
                                                }
                                                if (var_a5_15 >= var_s3_14) {
                                                    M2C_TRAP_IF(var_s3_14 == 0);
                                                    var_a5_15 = (s64) (var_a5_15 % var_s3_14);
                                                }
                                                var_a6_27 = *(var_a3_7 + sp1E8);
                                                var_s6_8 = var_a3_7;
                                                if (var_a5_15 >= (s32) var_a6_27) {
                                                    do {
                                                        temp_a3_18 = var_a3_7 + 1;
                                                        var_a3_7 = (temp_a3_18 == var_s7_5) ? 0 : temp_a3_18;
                                                        var_a5_15 -= var_a6_27;
                                                        var_a6_27 = *(var_a3_7 + sp1E8);
                                                    } while (var_a5_15 >= (s32) var_a6_27);
                                                    var_s6_8 = var_a3_7;
                                                }
                                                var_a6_23 = var_a5_15;
                                            }
                                            var_s3_12 = *(var_s6_8 + sp1E8) - var_a6_23;
                                        }
                                    }
                                    var_s5_13 = var_a2_6;
                                    var_s4_12 = var_t9_9;
                                    var_s1_14 = var_a4_9;
                                    var_s2_17 = var_a1_32;
                                    temp_s8_5 = sp1D0->unkC;
                                    if (sp1F0 != 0) {
                                        temp_at_50 = *(sp1D0->unk4C + (temp_gp->unk-30F4 * 4));
                                        sp50 = temp_at_50;
                                        sp1B0 = (s64) temp_at_50->unk40;
                                        sp1A8 = (s64) temp_at_50->unk28;
                                    }
loop_177:
                                    temp_s0_13 = (var_s2_17 < var_s3_12) ? var_s2_17 : var_s3_12;
                                    if (var_s6_8 & 1) {
                                        if (sp1F0 != 0) {
                                            sp3A8 = var_a7_2;
                                            sp3A0 = (s64) var_t8_2;
                                            sp398 = (s64) var_t3_2;
                                            sp50->unk40 = (s32) sp50->unk44;
                                            sp50->unk28 = (s32) sp50->unk2C;
                                            sp14 = (s32) temp_s0_13;
                                            spC = (s32) sp1B8;
                                            sp4 = (s32) sp230;
                                            ((? (*)(s64, s64, s64, s64, s64, s64, s64, s32)) sp190)(sp1D0, sp188, sp228, sp210, sp238, var_s5_13, var_s4_12, sp230 + var_s1_14);
                                            var_t8_2 = (s32) sp3A0;
                                            sp50->unk28 = (s32) sp1A8;
                                            var_t3_2 = (s32) sp398;
                                            sp50->unk40 = (s32) sp1B0;
                                            goto block_170;
                                        }
                                    } else {
                                        sp3A0 = (s64) var_t8_2;
                                        sp398 = (s64) var_t3_2;
                                        sp14 = (s32) temp_s0_13;
                                        sp3A8 = var_a7_2;
                                        sp4 = (s32) sp230;
                                        spC = (s32) sp1B8;
                                        ((? (*)(s64, s64, s64, s64, s64, s64, s64, s32)) sp190)(sp1D0, sp188, sp228, sp210, sp238, var_s5_13, var_s4_12, sp230 + var_s1_14);
block_170:
                                        var_a7_2 = sp3A8;
                                    }
                                    var_s3_12 -= temp_s0_13;
                                    var_s2_17 -= temp_s0_13;
                                    if (var_s3_12 == 0) {
                                        temp_s6_3 = var_s6_8 + 1;
                                        var_s6_8 = (sp1D0->unkA == temp_s6_3) ? 0 : temp_s6_3;
                                        var_s3_12 = (s64) *(var_s6_8 + temp_s8_5);
                                    }
                                    var_a6_28 = 0;
                                    if (var_s2_17 > 0) {
                                        var_s1_14 += temp_s0_13 * sp230;
                                        if (var_s1_14 >= 0) {
                                            var_a6_28 = (var_s1_14 / sp1C8) + 1;
                                            M2C_TRAP_IF(sp1C8 == 0);
                                            var_s1_14 -= sp1C8 * var_a6_28;
                                            if (sp238 != 0) {
                                                goto block_176;
                                            }
                                            goto block_181;
                                        }
                                        if (sp238 == 0) {
block_181:
                                            var_s4_12 = (sp210 < 1) ? (var_s4_12 - var_a6_28) : (var_a6_28 + var_s4_12);
                                            var_s5_13 = (sp228 < 1) ? (var_s5_13 - temp_s0_13) : (temp_s0_13 + var_s5_13);
                                            if (var_s2_17 > 0) {
                                                goto loop_177;
                                            }
                                        } else {
block_176:
                                            var_s5_13 = (sp228 < 1) ? (var_s5_13 - var_a6_28) : (var_a6_28 + var_s5_13);
                                            var_s4_12 = (sp210 < 1) ? (var_s4_12 - temp_s0_13) : (temp_s0_13 + var_s4_12);
                                            if (var_s2_17 > 0) {
                                                goto loop_177;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    var_a7_2 += 8;
                    temp_at_51 = sp1F8 + 1;
                    sp1F8 = temp_at_51;
                    if (temp_at_51 != sp1D8) {
                        goto loop_80;
                    }
                } else {
                    var_s1_15 = sp160;
                    var_s3_15 = sp218;
                    var_s4_13 = sp208;
                    temp_s5_4 = sp1D0->unkC;
                    var_s2_18 = (sp238 == 0) ? sp180 : sp170;
                    if (sp1F0 != 0) {
                        temp_a0_24 = *(sp1D0->unk4C + (temp_gp->unk-30F4 * 4));
                        sp50 = temp_a0_24;
                        sp1B0 = (s64) temp_a0_24->unk40;
                        sp1A8 = (s64) temp_a0_24->unk28;
                    }
loop_252:
                    temp_s0_14 = (var_s2_18 < sp168) ? var_s2_18 : sp168;
                    if (sp158 & 1) {
                        if (sp1F0 != 0) {
                            sp3A0 = (s64) var_t8_2;
                            sp398 = (s64) var_t3_2;
                            sp50->unk28 = (s32) sp50->unk2C;
                            sp50->unk40 = (s32) sp50->unk44;
                            sp14 = (s32) temp_s0_14;
                            spC = (s32) sp1B8;
                            sp4 = (s32) sp230;
                            ((? (*)(s64, s64, s64, s64, s64, s64, s64, s32)) sp190)(sp1D0, sp188, sp228, sp210, sp238, var_s4_13, var_s3_15, sp230 + var_s1_15);
                            var_t3_2 = (s32) sp398;
                            var_t8_2 = (s32) sp3A0;
                            sp50->unk28 = (s32) sp1A8;
                            sp50->unk40 = (s32) sp1B0;
                        }
                    } else {
                        sp3A0 = (s64) var_t8_2;
                        sp398 = (s64) var_t3_2;
                        sp14 = (s32) temp_s0_14;
                        sp4 = (s32) sp230;
                        spC = (s32) sp1B8;
                        ((? (*)(s64, s64, s64, s64, s64, s64, s64, s32)) sp190)(sp1D0, sp188, sp228, sp210, sp238, var_s4_13, var_s3_15, sp230 + var_s1_15);
                    }
                    temp_v1_16 = sp168 - temp_s0_14;
                    var_s2_18 -= temp_s0_14;
                    temp_a0_25 = sp158 + 1;
                    sp168 = temp_v1_16;
                    if (temp_v1_16 == 0) {
                        temp_a0_26 = (sp1D0->unkA == temp_a0_25) ? 0 : temp_a0_25;
                        sp158 = temp_a0_26;
                        sp168 = (s64) *(temp_a0_26 + temp_s5_4);
                    }
                    var_a1_35 = 0;
                    if (var_s2_18 > 0) {
                        var_s1_15 += temp_s0_14 * sp230;
                        if (var_s1_15 >= 0) {
                            var_a1_35 = (var_s1_15 / sp1C8) + 1;
                            M2C_TRAP_IF(sp1C8 == 0);
                            var_s1_15 -= sp1C8 * var_a1_35;
                            if (sp238 != 0) {
                                goto block_250;
                            }
                            goto block_256;
                        }
                        if (sp238 == 0) {
block_256:
                            var_s3_15 = (sp210 < 1) ? (var_s3_15 - var_a1_35) : (var_s3_15 + var_a1_35);
                            var_s4_13 = (sp228 < 1) ? (var_s4_13 - temp_s0_14) : (temp_s0_14 + var_s4_13);
                        } else {
block_250:
                            var_s4_13 = (sp228 < 1) ? (var_s4_13 - var_a1_35) : (var_s4_13 + var_a1_35);
                            var_s3_15 = (sp210 < 1) ? (var_s3_15 - temp_s0_14) : (temp_s0_14 + var_s3_15);
                        }
                        if (var_s2_18 > 0) {
                            goto loop_252;
                        }
                    }
                }
            } else {
                sp1A0 = var_t8_2 | var_t3_2;
            }
            if (sp1A0 != 0) {
                var_a5_16 = *(sp158 + sp1E8);
                temp_a6_31 = var_a5_16 - sp168;
                temp_s0_15 = sp1D0->unkA;
                temp_a1_23 = var_a5_16 - temp_a6_31;
                if (sp238 != 0) {
                    var_t0_23 = 0;
                    var_a7_10 = temp_s0_15 & 7;
                    var_a6_29 = sp170 + temp_a6_31;
                    var_s5_14 = sp170 - temp_a1_23;
                    if (sp170 < temp_a1_23) {

                    } else {
                        temp_s6_4 = sp158 + 1;
                        var_s6_10 = (temp_s6_4 == temp_s0_15) ? 0 : temp_s6_4;
                        if ((s32) temp_s0_15 > 0) {
                            var_a1_36 = sp1E8;
                            temp_a6_32 = temp_s0_15 + sp1E8;
                            temp_t1_11 = (s32) temp_s0_15 >> 3;
                            if (var_a7_10 != 0) {
                                do {
                                    var_a7_10 -= 1;
                                    temp_at_52 = *var_a1_36;
                                    var_a1_36 += 1;
                                    var_t0_23 += temp_at_52;
                                } while (var_a7_10 != 0);
                            }
                            if (temp_t1_11 != 0) {
                                temp_t0_15 = temp_a6_32 - 0x10;
                                if (temp_t1_11 >= 3) {
                                    sp3A0 = (s64) var_t8_2;
                                    sp398 = (s64) var_t3_2;
                                    var_a4_11 = var_a1_36->unk7;
                                    var_s0_12 = var_a1_36->unk6;
                                    var_a2_8 = var_a1_36->unk5;
                                    var_a1_37 = var_a1_36->unk4;
                                    var_a0_10 = var_a1_36->unk3;
                                    var_v1_10 = var_a1_36->unk2;
                                    temp_t1_12 = var_a1_36 + 8;
                                    var_ra_15 = temp_t1_12->unk2;
                                    var_at_13 = var_a1_36->unk0 + var_t0_23;
                                    var_a5_17 = temp_t1_12->unk1;
                                    var_a7_11 = temp_t1_12;
                                    var_a6_30 = var_a1_36->unk1;
loop_218:
                                    temp_a3_19 = var_a7_11->unk3;
                                    temp_t1_13 = var_a7_11->unk4;
                                    var_t2_12 = var_a7_11->unk5;
                                    temp_t9_13 = var_a7_11->unk6;
                                    temp_t3_6 = var_a7_11->unk7;
                                    temp_t8_10 = var_a7_11 + 8;
                                    temp_at_53 = var_a4_11 + (var_s0_12 + (var_a2_8 + (var_a1_37 + (var_a0_10 + (var_v1_10 + (var_a6_30 + var_at_13))))));
                                    var_a6_30 = temp_t8_10->unk1;
                                    temp_at_54 = var_a7_11->unk0 + temp_at_53;
                                    var_v1_10 = temp_t8_10->unk2;
                                    if (var_a7_11 != temp_t0_15) {
                                        var_a0_10 = temp_t8_10->unk3;
                                        var_a1_37 = temp_t8_10->unk4;
                                        var_a2_8 = temp_t8_10->unk5;
                                        var_s0_12 = temp_t8_10->unk6;
                                        var_a4_11 = temp_t8_10->unk7;
                                        temp_v0_14 = temp_t9_13 + (var_t2_12 + (temp_t1_13 + (temp_a3_19 + (var_ra_15 + (var_a5_17 + temp_at_54)))));
                                        var_a7_11 = temp_t8_10 + 8;
                                        var_a5_17 = var_a7_11->unk1;
                                        var_at_13 = var_a7_11->unk8 + (temp_t3_6 + temp_v0_14);
                                        var_ra_15 = var_a7_11->unk2;
                                        if (temp_t8_10 == temp_t0_15) {
                                            var_t2_12 = var_a2_8;
                                            var_s2_19 = var_a1_37;
                                            var_s3_16 = var_a0_10;
                                            var_s4_14 = var_v1_10;
                                            var_s1_16 = var_at_13;
                                            var_t3_2 = (s32) sp398;
                                            temp_v0_15 = var_a5_17;
                                            var_t8_2 = (s32) sp3A0;
                                            var_a5_17 = var_a6_30;
                                            var_a6_30 = temp_v0_15;
                                        } else {
                                            goto loop_218;
                                        }
                                    } else {
                                        var_s0_12 = temp_t9_13;
                                        var_s2_19 = temp_t1_13;
                                        var_s3_16 = temp_a3_19;
                                        var_s4_14 = var_ra_15;
                                        var_ra_15 = var_v1_10;
                                        var_s1_16 = temp_at_54;
                                        var_a4_11 = temp_t3_6;
                                        var_t3_2 = (s32) sp398;
                                        var_a7_11 = temp_t8_10;
                                        var_t8_2 = (s32) sp3A0;
                                    }
                                    var_t0_23 = var_a7_11->unk7 + (var_a7_11->unk6 + (var_a7_11->unk5 + (var_a7_11->unk4 + (var_a7_11->unk3 + (var_ra_15 + (var_a6_30 + (var_a7_11->unk0 + (var_a4_11 + (var_s0_12 + (var_t2_12 + (var_s2_19 + (var_s3_16 + (var_s4_14 + (var_a5_17 + var_s1_16))))))))))))));
                                } else {
                                    var_a1_38 = var_t0_23;
                                    var_a5_18 = var_a1_36;
                                    do {
                                        var_a5_18 += 8;
                                        var_a1_38 = var_a5_18->unk-1 + (var_a5_18->unk-2 + (var_a5_18->unk-3 + (var_a5_18->unk-4 + (var_a5_18->unk-5 + (var_a5_18->unk-6 + (var_a5_18->unk-7 + (var_a5_18->unk-8 + var_a1_38)))))));
                                    } while (var_a5_18 != temp_a6_32);
                                    var_t0_23 = var_a1_38;
                                }
                            }
                        }
                        if (var_s5_14 >= var_t0_23) {
                            M2C_TRAP_IF(var_t0_23 == 0);
                            var_s5_14 = var_s5_14 % var_t0_23;
                        }
                        var_a1_39 = *(var_s6_10 + sp1E8);
                        if (var_s5_14 >= (s32) var_a1_39) {
                            do {
                                temp_s6_5 = var_s6_10 + 1;
                                var_s6_10 = (temp_s6_5 == temp_s0_15) ? 0 : temp_s6_5;
                                var_s5_14 -= var_a1_39;
                                var_a1_39 = *(var_s6_10 + sp1E8);
                            } while (var_s5_14 >= (s32) var_a1_39);
                        }
                        sp158 = var_s6_10;
                        var_a6_29 = var_s5_14;
                        goto block_228;
                    }
                } else {
                    var_s3_17 = 0;
                    var_a3_8 = temp_s0_15;
                    var_a6_29 = sp180 + temp_a6_31;
                    if (sp180 < temp_a1_23) {

                    } else {
                        var_a6_31 = var_a3_8 & 7;
                        temp_a4_12 = sp158 + 1;
                        var_s8_9 = sp180 - temp_a1_23;
                        var_a4_12 = (temp_a4_12 == var_a3_8) ? 0 : temp_a4_12;
                        if ((s32) var_a3_8 > 0) {
                            var_a1_40 = sp1E8;
                            temp_a7_16 = var_a3_8 + sp1E8;
                            if (var_a6_31 != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
                                    temp_at_55 = *var_a1_40;
                                    var_a6_31 -= 1;
                                    var_a1_40 += 1;
                                    var_s3_17 += temp_at_55;
                                } while (var_a6_31 != 0);
                            }
                            temp_a6_33 = (s32) var_a3_8 >> 3;
                            if (temp_a6_33 != 0) {
                                var_a1_41 = var_s3_17;
                                if (temp_a6_33 >= 3) {
                                    sp3A0 = (s64) var_t8_2;
                                    sp2F8 = (s64) var_a3_8;
                                    sp398 = (s64) var_t3_2;
                                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t1) */);
                                    var_a1_42 = var_a1_40->unk6;
                                    var_a0_11 = var_a1_40->unk5;
                                    var_v1_11 = var_a1_40->unk4;
                                    var_v0_10 = var_a1_40->unk3;
                                    var_s2_20 = var_a1_40->unk2;
                                    var_s1_17 = var_a1_40->unk1;
                                    var_t2_13 = var_a1_40->unk7;
                                    sp300 = var_a4_12;
                                    temp_a2_16 = var_a1_40 + 8;
                                    var_ra_16 = temp_a2_16->unk1;
                                    temp_a4_13 = temp_a7_16 - 0x10;
                                    var_t9_11 = var_a1_40->unk8;
                                    var_t1_11 = temp_a2_16 + 8;
                                    var_t3_9 = temp_a2_16->unk7;
                                    var_at_14 = var_a1_40->unk0 + var_s3_17;
                                    var_t0_24 = temp_a2_16;
loop_356:
                                    temp_a2_17 = var_t0_24->unk2;
                                    var_s2_21 = var_t0_24->unk3;
                                    temp_s0_16 = var_t0_24->unk4;
                                    temp_a3_20 = var_t0_24->unk5;
                                    var_a7_12 = var_t0_24->unk6;
                                    temp_a5_13 = var_t1_11 + 8;
                                    var_a6_32 = var_t1_11->unk7;
                                    temp_t8_11 = var_t1_11->unk0;
                                    temp_at_56 = var_t9_11 + (var_t2_13 + (var_a1_42 + (var_a0_11 + (var_v1_11 + (var_v0_10 + (var_s2_20 + (var_s1_17 + var_at_14)))))));
                                    temp_t9_14 = var_t1_11->unk1;
                                    if (var_t0_24 != temp_a4_13) {
                                        temp_ra_7 = var_t1_11->unk2;
                                        temp_a1_24 = var_t1_11->unk3;
                                        temp_a0_27 = var_t1_11->unk4;
                                        var_s0_13 = var_t1_11->unk5;
                                        temp_a3_21 = var_t1_11->unk6;
                                        temp_at_57 = var_a7_12 + (temp_a3_20 + (temp_s0_16 + (var_s2_21 + (temp_a2_17 + (var_ra_16 + temp_at_56)))));
                                        var_t0_24 = temp_a5_13 + 8;
                                        var_t2_13 = temp_a5_13->unk7;
                                        temp_a7_17 = var_t1_11->unk8;
                                        temp_at_58 = temp_t8_11 + (var_t3_9 + temp_at_57);
                                        var_s1_17 = temp_a5_13->unk1;
                                        if (var_t1_11 != temp_a4_13) {
                                            var_s2_20 = temp_a5_13->unk2;
                                            var_v0_10 = temp_a5_13->unk3;
                                            var_v1_11 = temp_a5_13->unk4;
                                            var_a0_11 = temp_a5_13->unk5;
                                            var_a1_42 = temp_a5_13->unk6;
                                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                                            temp_at_59 = temp_a3_21 + (var_s0_13 + (temp_a0_27 + (temp_a1_24 + (temp_ra_7 + (temp_t9_14 + temp_at_58)))));
                                            var_t1_11 = var_t0_24 + 8;
                                            var_t3_9 = var_t0_24->unk7;
                                            var_t9_11 = temp_a5_13->unk8;
                                            var_at_14 = temp_a7_17 + (var_a6_32 + temp_at_59);
                                            var_ra_16 = var_t0_24->unk1;
                                            if (temp_a5_13 == temp_a4_13) {
                                                var_a7_12 = var_a1_42;
                                                var_s0_13 = var_a0_11;
                                                var_s5_15 = var_v1_11;
                                                var_s4_15 = var_at_14;
                                                temp_a4_14 = var_ra_16;
                                                var_t3_2 = (s32) sp398;
                                                var_ra_16 = var_s1_17;
                                                var_a6_32 = var_t2_13;
                                                var_t8_2 = (s32) sp3A0;
                                                var_t1_11 = var_t0_24;
                                                var_t0_25 = var_s2_20;
                                                var_s2_21 = var_v0_10;
                                                var_a3_8 = (u16) sp2F8;
                                                var_t2_13 = var_t3_9;
                                                var_s1_17 = temp_a4_14;
                                                var_a4_12 = sp300;
                                            } else {
                                                goto loop_356;
                                            }
                                        } else {
                                            var_t1_11 = temp_a5_13;
                                            var_s5_15 = temp_a0_27;
                                            var_s2_21 = temp_a1_24;
                                            var_s4_15 = temp_at_58;
                                            var_a4_12 = sp300;
                                            var_a3_8 = (u16) sp2F8;
                                            var_t0_25 = temp_ra_7;
                                            var_t3_2 = (s32) sp398;
                                            var_ra_16 = temp_t9_14;
                                            var_t9_11 = temp_a7_17;
                                            var_t8_2 = (s32) sp3A0;
                                            var_a7_12 = temp_a3_21;
                                        }
                                    } else {
                                        var_t0_25 = temp_a2_17;
                                        var_s4_15 = temp_at_56;
                                        var_a3_8 = (u16) sp2F8;
                                        var_t2_13 = var_a6_32;
                                        var_s1_17 = temp_t9_14;
                                        var_a4_12 = sp300;
                                        var_t9_11 = temp_t8_11;
                                        var_t3_2 = (s32) sp398;
                                        var_s5_15 = temp_s0_16;
                                        var_s0_13 = temp_a3_20;
                                        var_t8_2 = (s32) sp3A0;
                                        var_a6_32 = var_t3_9;
                                    }
                                    var_s3_17 = var_t2_13 + (var_t1_11->unk6 + (var_t1_11->unk5 + (var_t1_11->unk4 + (var_t1_11->unk3 + (var_t1_11->unk2 + (var_s1_17 + (var_t9_11 + (var_a6_32 + (var_a7_12 + (var_s0_13 + (var_s5_15 + (var_s2_21 + (var_t0_25 + (var_ra_16 + var_s4_15))))))))))))));
                                } else {
                                    var_a5_19 = var_a1_40;
                                    do {
                                        temp_t0_16 = var_a5_19->unk5;
                                        temp_a6_34 = var_a5_19->unk6;
                                        temp_a0_28 = var_a5_19->unk7;
                                        temp_a1_25 = var_a5_19->unk4 + (var_a5_19->unk3 + (var_a5_19->unk2 + (var_a5_19->unk1 + (var_a5_19->unk0 + var_a1_41))));
                                        var_a5_19 += 8;
                                        var_a1_41 = temp_a0_28 + (temp_a6_34 + (temp_t0_16 + temp_a1_25));
                                    } while (var_a5_19 != temp_a7_16);
                                    var_s3_17 = var_a1_41;
                                }
                            }
                        }
                        if (var_s8_9 >= var_s3_17) {
                            M2C_TRAP_IF(var_s3_17 == 0);
                            var_s8_9 = var_s8_9 % var_s3_17;
                        }
                        var_a1_39 = *(var_a4_12 + sp1E8);
                        if (var_s8_9 >= (s32) var_a1_39) {
                            do {
                                temp_a4_15 = var_a4_12 + 1;
                                var_a4_12 = (temp_a4_15 == var_a3_8) ? 0 : temp_a4_15;
                                var_s8_9 -= var_a1_39;
                                var_a1_39 = *(var_a4_12 + sp1E8);
                            } while (var_s8_9 >= (s32) var_a1_39);
                        }
                        var_a6_29 = var_s8_9;
                        sp158 = var_a4_12;
block_228:
                        var_a5_16 = var_a1_39;
                    }
                }
                var_at_6 = var_a5_16 - var_a6_29;
block_46:
                sp168 = var_at_6;
            }
        }
        var_v0 = sp128 + 4;
        sp128 = var_v0;
        if (var_v0 != sp100) {
            goto loop_48;
        }
        var_a6_2 = sp68;
        var_ra = sp280;
        var_s8 = (void *) sp2B0;
        var_t8 = sp1D0->unk10;
    }
    if ((((u32) (var_t8 & 0x3FFFFFFF) >> 0x1C) != 0) && ((temp_v0_16 = (var_a6_2 * 4) + var_s8, sp128 = (s64) temp_v0_16, var_v0 = (s64) *temp_v0_16, (var_v0 != var_s8->unk0)) || (sp128->unk2 != var_s8->unk2) || (var_a6_2 == 1))) {
        temp_t1_14 = sp158 & 1;
        if ((temp_t1_14 == 0) || (sp1F0 != 0)) {
            var_v0 = sp110;
            if (var_v0 != 0) {
                var_a1_43 = sp108;
loop_389:
                var_v0 = (s64) var_a1_43->unk0;
                if ((sp200 >= var_v0) && (sp220 >= var_a1_43->unk2) && (var_v0 = (s64) var_a1_43->unk4, ((sp200 < var_v0) != 0))) {
                    var_a1_43 += 8;
                    if (sp220 < var_a1_43->unk6) {
                        sp280 = var_ra;
                        sp5A = (s16) sp220;
                        sp58 = (s16) sp200;
                        var_v0 = (**(sp188->unk84 + (temp_gp->unk-30F8 * 4)))->unk18(&sp58, 1, (temp_t1_14 != 0) ? spC0 : sp88, sp80 & 0xFF, spD8, 0, 0, sp188);
                    } else {
                        goto block_388;
                    }
                } else {
                    var_a1_43 += 8;
block_388:
                    if (var_a1_43 != (sp108 + (sp110 * 8))) {
                        goto loop_389;
                    }
                }
            }
            /* Duplicate return node #394. Try simplifying control flow for better match */
            return var_v0;
        }
        return sp110;
    }
    return var_v0;
}

void nfbStippledFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s64 spA0;
    s64 sp98;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp10;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a2;
    s16 temp_s3;
    s32 *var_a5;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_s2_2;
    s32 temp_s6_2;
    s32 temp_s7;
    s32 temp_v0;
    s32 var_s0;
    s64 temp_a2_2;
    s64 temp_at;
    s64 temp_at_2;
    s64 var_s1;
    u16 temp_s4;
    u16 temp_v1;
    u8 temp_s8;
    void *temp_gp;
    void *temp_s2;
    void *temp_s6;
    void *var_a1;

    temp_s2 = arg0->unk24;
    sp8 = (s64) temp_s2;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x56034;
    temp_s4 = temp_s2->unkC;
    temp_s2_2 = temp_s2->unk1C;
    temp_s6 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s8 = temp_s6->unk48;
    temp_s7 = temp_s6->unk40;
    temp_s6_2 = temp_s6->unk4C;
    sp58 = (s64) temp_s6->unk5A;
    sp60 = (s64) temp_s6->unk58;
    var_a5 = arg3;
    var_a1 = arg2;
    sp10 = (s64) (**(arg1->unk84 + (temp_gp->unk-30F8 * 4)))->unkC;
    if (arg4 > 0) {
        sp50 = (arg4 * 4) + arg3;
loop_4:
        temp_a2 = var_a1->unk0;
        temp_hi = (s32) (temp_a2 - sp60) % (s32) temp_s4;
        temp_v1 = sp8->unkE;
        temp_hi_2 = (s32) (var_a1->unk2 - sp58) % (s32) temp_v1;
        sp0 = temp_a2;
        sp2 = var_a1->unk2;
        M2C_TRAP_IF(temp_s4 == 0);
        temp_lo = temp_s2_2 * ((temp_hi_2 >= 0) ? temp_hi_2 : (temp_hi_2 + temp_v1));
        M2C_TRAP_IF(temp_v1 == 0);
        temp_s3 = *var_a5 + temp_a2;
        temp_v0 = (temp_hi >= 0) ? temp_hi : (temp_s4 + temp_hi);
        sp6 = var_a1->unk2 + 1;
        temp_a2_2 = temp_v0 & 0x1F;
        temp_at = (var_a1->unk0 + temp_s4) - temp_v0;
        sp68 = temp_at;
        sp98 = (s64) var_a5;
        spA0 = (s64) var_a1;
        sp70 = temp_a2_2;
        var_s0 = sp8->unk20 + temp_lo + ((temp_v0 >> 5) * 4);
        if (temp_at < temp_s3) {
            sp4 = (s16) sp68;
            ((? (*)(void *, s32, s64, s32, s32, u8, s32, void *)) sp10)(sp, var_s0, temp_a2_2, temp_s2_2, temp_s7, temp_s8, temp_s6_2, arg1);
            sp0 = (s16) sp68;
            temp_at_2 = temp_s4 + sp68;
            sp68 = temp_at_2;
            sp70 = 0;
            var_s0 = sp8->unk20 + temp_lo;
            if (temp_at_2 < temp_s3) {
                var_s1 = sp68;
                do {
                    sp4 = (s16) var_s1;
                    ((? (*)(void *, s32, ?, s32, s32, u8, s32, void *)) sp10)(sp, var_s0, 0, temp_s2_2, temp_s7, temp_s8, temp_s6_2, arg1);
                    sp0 = (s16) var_s1;
                    var_s1 += temp_s4;
                } while (var_s1 < temp_s3);
            }
        }
        sp4 = temp_s3;
        ((? (*)(void *, s32, s64, s32, s32, u8, s32, void *)) sp10)(sp, var_s0, sp70, temp_s2_2, temp_s7, temp_s8, temp_s6_2, arg1);
        var_a5 = sp98 + 4;
        var_a1 = spA0 + 4;
        if (var_a5 != sp50) {
            goto loop_4;
        }
    }
}

void nfbSolidFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    ? (*temp_s4)(void *, ?, s32, u8, s32, void *);
    s16 temp_ra;
    s16 temp_t8;
    s32 *var_s2;
    s32 temp_s1;
    s32 temp_s6_2;
    u8 temp_s0;
    void *temp_gp;
    void *temp_s6;
    void *var_s3;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x55D9C;
    temp_s6 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s0 = temp_s6->unk48;
    temp_s1 = temp_s6->unk4C;
    temp_s6_2 = temp_s6->unk40;
    temp_s4 = (**(arg1->unk84 + (temp_gp->unk-30F8 * 4)))->unk4;
    if (arg4 > 0) {
        var_s2 = arg3;
        var_s3 = arg2;
        do {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s3) */);
            temp_ra = var_s3->unk0;
            sp0 = temp_ra;
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s2) */);
            sp4 = *var_s2 + temp_ra;
            temp_t8 = var_s3->unk2;
            var_s2 += 4;
            var_s3 += 4;
            sp2 = temp_t8;
            sp6 = temp_t8 + 1;
            temp_s4(sp, 1, temp_s6_2, temp_s0, temp_s1, arg1);
        } while (var_s2 != ((arg4 * 4) + arg3));
    }
}

void nfbOpStippledFS(void *arg0, void *arg1, void *arg2, s32 *arg3, s32 arg4) {
    s64 spB8;
    s64 spB0;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    void *sp4;
    ? (*temp_s7)(s16 *, s32, s64, s32, s64, s64, u8, s32);
    s16 temp_a2;
    s16 temp_s3;
    s32 *var_a5;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_s2_2;
    s32 temp_s6_2;
    s32 temp_v0;
    s32 var_s0;
    s64 temp_a2_2;
    s64 temp_at;
    s64 temp_at_2;
    s64 var_s1;
    u16 temp_s4;
    u16 temp_v1;
    u8 temp_s8;
    void *temp_gp;
    void *temp_s2;
    void *temp_s6;
    void *var_a1;

    temp_s2 = arg0->unk24;
    sp18 = (s64) temp_s2;
    temp_s4 = temp_s2->unkC;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x55C84;
    temp_s2_2 = temp_s2->unk1C;
    temp_s6 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    sp20 = (s64) temp_s6->unk40;
    sp78 = (s64) temp_s6->unk58;
    temp_s8 = temp_s6->unk48;
    sp70 = (s64) temp_s6->unk5A;
    var_a5 = arg3;
    sp28 = (s64) temp_s6->unk44;
    var_a1 = arg2;
    temp_s6_2 = temp_s6->unk4C;
    temp_s7 = (**(arg1->unk84 + (temp_gp->unk-30F8 * 4)))->unk10;
    if (arg4 > 0) {
        sp68 = (arg4 * 4) + arg3;
loop_4:
        temp_a2 = var_a1->unk0;
        temp_hi = (s32) (temp_a2 - sp78) % (s32) temp_s4;
        temp_v1 = sp18->unkE;
        temp_hi_2 = (s32) (var_a1->unk2 - sp70) % (s32) temp_v1;
        sp10 = temp_a2;
        sp12 = var_a1->unk2;
        M2C_TRAP_IF(temp_s4 == 0);
        temp_lo = temp_s2_2 * ((temp_hi_2 >= 0) ? temp_hi_2 : (temp_hi_2 + temp_v1));
        M2C_TRAP_IF(temp_v1 == 0);
        temp_s3 = *var_a5 + temp_a2;
        temp_v0 = (temp_hi >= 0) ? temp_hi : (temp_s4 + temp_hi);
        sp16 = var_a1->unk2 + 1;
        temp_a2_2 = temp_v0 & 0x1F;
        temp_at = (var_a1->unk0 + temp_s4) - temp_v0;
        sp80 = temp_at;
        spB0 = (s64) var_a5;
        spB8 = (s64) var_a1;
        sp88 = temp_a2_2;
        var_s0 = sp18->unk20 + temp_lo + ((temp_v0 >> 5) * 4);
        if (temp_at < temp_s3) {
            sp14 = (s16) sp80;
            sp4 = arg1;
            temp_s7(&sp10, var_s0, temp_a2_2, temp_s2_2, sp20, sp28, temp_s8, temp_s6_2);
            sp10 = (s16) sp80;
            temp_at_2 = temp_s4 + sp80;
            sp80 = temp_at_2;
            sp88 = 0;
            var_s0 = sp18->unk20 + temp_lo;
            if (temp_at_2 < temp_s3) {
                var_s1 = sp80;
                do {
                    sp14 = (s16) var_s1;
                    sp4 = arg1;
                    temp_s7(&sp10, var_s0, 0, temp_s2_2, sp20, sp28, temp_s8, temp_s6_2);
                    sp10 = (s16) var_s1;
                    var_s1 += temp_s4;
                } while (var_s1 < temp_s3);
            }
        }
        sp14 = temp_s3;
        sp4 = arg1;
        temp_s7(&sp10, var_s0, sp88, temp_s2_2, sp20, sp28, temp_s8, temp_s6_2);
        var_a5 = spB0 + 4;
        var_a1 = spB8 + 4;
        if (var_a5 != sp68) {
            goto loop_4;
        }
    }
}

void nfbImageGlyphBlt(void *arg0, s64 arg1, s32 arg2, s32 arg3, s64 arg4, s64 arg5, ? arg_sp0) {
    s16 temp_a3_2;
    s16 temp_a3_4;
    s16 temp_a5_2;
    s16 temp_a6_2;
    s16 temp_a7_2;
    s16 temp_s2_2;
    s16 temp_s2_3;
    s16 temp_s2_4;
    s16 temp_s3;
    s16 temp_s3_2;
    s16 temp_s6_3;
    s16 temp_s6_4;
    s16 temp_s7;
    s16 temp_s7_2;
    s16 temp_t0;
    s16 temp_t0_5;
    s16 temp_t2_2;
    s16 temp_t3_2;
    s16 temp_v1_3;
    s16 temp_v1_4;
    s32 temp_a0_2;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a6_4;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_s4_2;
    s32 temp_t0_10;
    s32 temp_t0_11;
    s32 temp_t0_7;
    s32 temp_t0_8;
    s32 temp_t0_9;
    s32 temp_v0_2;
    s32 temp_v1_5;
    s32 var_a0_2;
    s32 var_a6;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_a1;
    s64 temp_a3;
    s64 temp_a3_3;
    s64 temp_a3_5;
    s64 temp_a5;
    s64 temp_a5_3;
    s64 temp_a6_3;
    s64 temp_a7;
    s64 temp_a7_3;
    s64 temp_a7_4;
    s64 temp_at_3;
    s64 temp_ra;
    s64 temp_s5;
    s64 temp_s6;
    s64 temp_s6_2;
    s64 temp_sp;
    s64 temp_t0_12;
    s64 temp_t0_2;
    s64 temp_t0_3;
    s64 temp_t0_4;
    s64 temp_t0_6;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_v0;
    s64 temp_v1;
    s64 temp_v1_6;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a4;
    s64 var_ra;
    s64 var_s0;
    s64 var_s1;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s5;
    s64 var_s7;
    s64 var_v0;
    void *temp_a0;
    void *temp_a0_3;
    void *temp_a6;
    void *temp_gp;
    void *temp_s1;
    void *temp_s4;
    void *temp_s7_3;
    void *temp_v0_3;
    void *temp_v1_2;

    var_ra = saved_reg_ra;
    arg_sp0.unk-108 = arg1;
    arg_sp0.unk-A0 = arg5;
    arg_sp0.unk-B8 = arg4;
    arg_sp0.unk-C0 = (s64) saved_reg_s0;
    arg_sp0.unk-F0 = (s64) saved_reg_s5;
    temp_v0 = arg0->unkA + arg3;
    arg_sp0.unk-90 = temp_v0;
    arg_sp0.unk-E8 = (s64) saved_reg_s3;
    temp_a6 = arg1->unk2C;
    arg_sp0.unk-D0 = (s64) saved_reg_s6;
    arg_sp0.unk-100 = (s64) saved_reg_s1;
    arg_sp0.unk-B0 = (s64) saved_reg_s4;
    arg_sp0.unk-D8 = (s64) saved_reg_fp;
    arg_sp0.unk-E0 = (s64) saved_reg_gp;
    arg_sp0.unk-F8 = (s64) saved_reg_s2;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x559C8;
    temp_s4 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    arg_sp0.unk-C8 = (s64) temp_s4;
    var_s3 = arg0->unk8 + arg2;
    temp_s1 = **(arg0->unk84 + (temp_gp->unk-30F8 * 4));
    temp_s2 = temp_s4->unk34;
    temp_s5 = (s64) (var_s3 << 0x30) >> 0x30;
    temp_s6 = (s64) ((temp_a6->unk46 + temp_v0) << 0x30) >> 0x30;
    temp_s4_2 = temp_s4->unk28;
    var_v0 = (s64) ((temp_v0 - temp_a6->unk44) << 0x30) >> 0x30;
    arg_sp0.unk-A8 = (s64) temp_s4->unk8;
    arg_sp0.unk-98 = (s64) temp_s4->unk2C;
    if (((u32) (temp_a6->unkC & 0x1FFF) >> 0xC) != 0) {
        arg_sp0.unk-50 = (s16) (temp_a6->unk20 + var_s3);
        temp_lo = temp_a6->unk24 * arg_sp0.unk-B8;
        temp_v1 = arg_sp0.unk-108;
        arg_sp0.unk-178 = (s64) saved_reg_s7;
        arg_sp0.unk-4C = (s16) (temp_v1->unk2C->unk16 + var_s3 + temp_lo);
        temp_a3 = arg_sp0.unk-90;
        arg_sp0.unk-4E = (s16) (temp_a3 - temp_v1->unk2C->unk1A);
        var_s7 = (s64) ((temp_s5 + temp_lo) << 0x30) >> 0x30;
        arg_sp0.unk-4A = (s16) (temp_v1->unk2C->unk1C + temp_a3);
    } else {
        arg_sp0.unk-178 = (s64) saved_reg_s7;
        arg_sp0.unk-190 = var_v0;
        arg_sp0.unk-170 = (s64) saved_reg_ra;
        temp_gp->unk-72D8(temp_a6, arg_sp0.unk-A0, arg_sp0.unk-B8, &arg_sp0 - 0x70, temp_a6);
        temp_ra = arg_sp0.unk-90;
        arg_sp0.unk-4A = (s16) (arg_sp0.unk-60 + temp_ra);
        var_v0 = arg_sp0.unk-190;
        arg_sp0.unk-4E = (s16) (temp_ra - arg_sp0.unk-64);
        arg_sp0.unk-4C = (s16) (arg_sp0.unk-54 + var_s3);
        var_s7 = (s64) ((arg_sp0.unk-5C + temp_s5) << 0x30) >> 0x30;
        arg_sp0.unk-50 = (s16) (arg_sp0.unk-58 + var_s3);
        var_ra = arg_sp0.unk-170;
    }
    temp_a0 = arg_sp0.unk-A8->unk8;
    var_a6 = 1;
    if (temp_a0 != NULL) {
        var_a6 = temp_a0->unk4;
    }
    arg_sp0.unk-180 = var_s3;
    arg_sp0.unk-170 = var_ra;
    temp_a7 = (temp_a0 == NULL) ? arg_sp0.unk-A8 : (temp_a0 + 8);
    if (var_a6 > 0) {
        var_s3_2 = temp_a7;
        arg_sp0.unk-170 = var_ra;
        var_a0 = temp_a7 + (var_a6 * 8);
loop_8:
        M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s3) */);
        temp_a3_2 = var_s3_2->unk0;
        temp_a3_3 = (temp_s5 >= temp_a3_2) ? temp_s5 : (s64) temp_a3_2;
        arg_sp0.unk-78 = (s16) temp_a3_3;
        temp_a6_2 = var_s3_2->unk2;
        temp_a6_3 = (var_v0 >= temp_a6_2) ? var_v0 : (s64) temp_a6_2;
        arg_sp0.unk-76 = (s16) temp_a6_3;
        temp_t0 = var_s3_2->unk4;
        temp_t0_2 = (temp_t0 >= var_s7) ? var_s7 : (s64) temp_t0;
        arg_sp0.unk-74 = (s16) temp_t0_2;
        temp_a7_2 = var_s3_2->unk6;
        temp_a7_3 = (temp_a7_2 >= temp_s6) ? temp_s6 : (s64) temp_a7_2;
        var_s3_2 += 8;
        arg_sp0.unk-72 = (s16) temp_a7_3;
        if ((temp_a3_3 < temp_t0_2) && (((s64) (temp_a6_3 << 0x30) >> 0x30) < temp_a7_3)) {
            arg_sp0.unk-190 = var_v0;
            arg_sp0.unk-188 = var_a0;
            temp_s1->unk4(&arg_sp0 - 0x78, 1, arg_sp0.unk-98, 3, temp_s2, arg0, temp_a6_3, temp_a7_3);
            var_a0 = arg_sp0.unk-188;
            var_v0 = arg_sp0.unk-190;
        }
        if (var_s3_2 != var_a0) {
            goto loop_8;
        }
        var_s3 = arg_sp0.unk-180;
    }
    temp_s6_2 = arg_sp0.unk-90;
    temp_v0_2 = arg_sp0.unk-108->unk0->unk17C(arg_sp0.unk-C8->unk8, &arg_sp0 - 0x50);
    var_a0_2 = var_s3 & 0x1F;
    switch (temp_v0_2) {                            /* irregular */
    case 0:
        return;
    case 2:
        temp_a6_4 = arg_sp0.unk-B8 << 5;
        temp_sp = sp - ((temp_a6_4 + 0xF) & ~0xF);
        arg_sp0.unk-118 = temp_sp;
        var_a2 = arg_sp0.unk-A0;
        temp_a5 = arg_sp0.unk-118;
        if (temp_sp != 0) {
            var_a4 = var_s3;
            var_a1 = temp_a5;
            if (arg_sp0.unk-B8 != 0) {
loop_26:
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a2) */);
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a1) */);
                temp_v1_2 = *var_a2;
                var_a1->unk0 = (s32) var_a4;
                var_a1->unk4 = var_a0_2;
                var_a1->unk8 = (s32) (temp_v1_2->unk0 + var_a4);
                var_a1->unkC = (s32) (temp_v1_2->unk2 + var_a4);
                var_a1->unk10 = (s32) (temp_s6_2 - temp_v1_2->unk6);
                var_a1->unk14 = (s32) (temp_v1_2->unk8 + temp_s6_2);
                var_a1->unk1C = (s32) ((((s32) ((temp_v1_2->unk2 - temp_v1_2->unk0) + 7) >> 3) + 1) & ~1);
                temp_v1_3 = temp_v1_2->unk4;
                temp_a0_2 = temp_v1_3 + var_a0_2;
                var_a1 += 0x20;
                var_a2 += 4;
                var_a4 += temp_v1_3;
                if (temp_a0_2 < 0x20) {
                    var_a0_2 = (temp_a0_2 < 0) ? (temp_a0_2 + 0x20) : temp_a0_2;
                } else {
                    var_a0_2 = temp_a0_2 & 0x1F;
                }
                if (var_a1 != (temp_a5 + temp_a6_4)) {
                    goto loop_26;
                }
            }
            temp_t0_3 = arg_sp0.unk-A8;
            temp_a0_3 = temp_t0_3->unk8;
            temp_a1 = (temp_a0_3 == NULL) ? temp_t0_3 : (s64) (temp_a0_3 + 8);
            if (temp_a0_3 != NULL) {
                var_v0_2 = temp_a0_3->unk4;
            } else {
                var_v0_2 = 1;
            }
            if (var_v0_2 > 0) {
                arg_sp0.unk-138 = (s64) arg0;
                arg_sp0.unk-140 = (s64) temp_s1;
                arg_sp0.unk-148 = (s64) temp_s2;
                arg_sp0.unk-150 = (s64) temp_s4_2;
                arg_sp0.unk-130 = temp_a1;
                arg_sp0.unk-128 = (s64) (temp_a1 + (var_v0_2 * 8));
                arg_sp0.unk-110 = (s64) (arg_sp0.unk-B8 * 4);
loop_34:
                temp_t0_4 = arg_sp0.unk-130;
                temp_a3_4 = temp_t0_4->unk6;
                temp_v1_4 = temp_t0_4->unk2;
                temp_s2_2 = temp_t0_4->unk4;
                temp_t0_5 = temp_t0_4->unk0;
                temp_s7 = arg_sp0.unk-4A;
                temp_s6_3 = arg_sp0.unk-4E;
                temp_s3 = arg_sp0.unk-4C;
                temp_s7_2 = (temp_s7 >= temp_a3_4) ? temp_a3_4 : temp_s7;
                temp_s6_4 = (temp_v1_4 >= temp_s6_3) ? temp_v1_4 : temp_s6_3;
                temp_s3_2 = (temp_s3 >= temp_s2_2) ? temp_s2_2 : temp_s3;
                temp_s2_3 = arg_sp0.unk-50;
                var_v0_3 = 1;
                temp_s2_4 = (temp_t0_5 >= temp_s2_3) ? temp_t0_5 : temp_s2_3;
                if (arg_sp0.unk-B8 != 0) {
                    if ((temp_s2_4 < temp_s3_2) && (temp_s6_4 < temp_s7_2)) {
                        var_v0_3 = 0;
                    }
                    if (var_v0_3 == 0) {
                        var_s0 = arg_sp0.unk-118;
                        temp_t0_6 = arg_sp0.unk-A0;
                        arg_sp0.unk-160 = (s64) temp_s6_4;
                        arg_sp0.unk-168 = (s64) temp_s7_2;
                        var_s1 = temp_t0_6;
                        arg_sp0.unk-158 = (s64) (arg_sp0.unk-110 + temp_t0_6);
loop_41:
                        temp_at = var_s0->unk8;
                        temp_t2 = (s64) ((s64) temp_at << 0x30) >> 0x30;
                        temp_v0_3 = *var_s1;
                        temp_at_2 = temp_at < temp_s2_4;
                        arg_sp0.unk-88 = (s16) ((temp_at_2 != 0) ? temp_s2_4 : (s16) temp_t2);
                        temp_t0_7 = var_s0->unkC;
                        temp_t2_2 = (temp_at_2 != 0) ? temp_s2_4 : (s16) temp_t2;
                        temp_t0_8 = temp_s3_2 < temp_t0_7;
                        temp_a3_5 = (s64) ((s64) temp_t0_7 << 0x30) >> 0x30;
                        var_s1 += 4;
                        arg_sp0.unk-84 = (s16) ((temp_t0_8 != 0) ? temp_s3_2 : (s16) temp_a3_5);
                        if ((((temp_t0_8 != 0) ? temp_s3_2 : (s16) temp_a3_5) - temp_t2_2) > 0) {
                            temp_t0_9 = var_s0->unk10;
                            temp_t3 = (s64) ((s64) temp_t0_9 << 0x30) >> 0x30;
                            temp_t0_10 = temp_t0_9 < arg_sp0.unk-160;
                            arg_sp0.unk-86 = (s16) ((temp_t0_10 != 0) ? temp_s6_4 : (s16) temp_t3);
                            temp_v1_5 = var_s0->unk14;
                            temp_t3_2 = (temp_t0_10 != 0) ? temp_s6_4 : (s16) temp_t3;
                            temp_a3_6 = arg_sp0.unk-168 < temp_v1_5;
                            temp_at_3 = (s64) ((s64) temp_v1_5 << 0x30) >> 0x30;
                            arg_sp0.unk-82 = (s16) ((temp_a3_6 != 0) ? temp_s7_2 : (s16) temp_at_3);
                            if ((((temp_a3_6 != 0) ? temp_s7_2 : (s16) temp_at_3) - temp_t3_2) > 0) {
                                temp_a3_7 = var_s0->unk1C;
                                temp_t0_11 = temp_t2_2 - var_s0->unk8;
                                arg_sp0.unk-140->unkC(&arg_sp0 - 0x88, temp_v0_3->unkC + ((temp_t3_2 - var_s0->unk10) * temp_a3_7) + (temp_t0_11 >> 3), temp_t0_11 & 7, temp_a3_7, arg_sp0.unk-150, 3, arg_sp0.unk-148, arg_sp0.unk-138);
                            }
                        }
                        var_s0 += 0x20;
                        if (var_s1 != arg_sp0.unk-158) {
                            goto loop_41;
                        }
                    }
                }
                temp_t0_12 = arg_sp0.unk-130 + 8;
                arg_sp0.unk-130 = temp_t0_12;
                if (temp_t0_12 != arg_sp0.unk-128) {
                    goto loop_34;
                }
            }
        } else {
            return;
        }
        break;
    case 1:
        if (arg_sp0.unk-B8 != 0) {
            temp_v1_6 = arg_sp0.unk-A0;
            var_s5 = temp_v1_6;
            arg_sp0.unk-120 = (s64) ((arg_sp0.unk-B8 * 4) + temp_v1_6);
            do {
                temp_s7_3 = *var_s5;
                temp_a5_2 = temp_s7_3->unk0;
                temp_a3_8 = temp_s7_3->unk2 - temp_a5_2;
                temp_a7_4 = (s64) ((temp_a5_2 + var_s3) << 0x30) >> 0x30;
                arg_sp0.unk-80 = (s16) temp_a7_4;
                arg_sp0.unk-7C = (s16) (temp_a3_8 + temp_a7_4);
                temp_a5_3 = (s64) ((temp_s6_2 - temp_s7_3->unk6) << 0x30) >> 0x30;
                arg_sp0.unk-7E = (s16) temp_a5_3;
                var_s5 += 4;
                arg_sp0.unk-7A = (s16) (temp_s7_3->unk6 + temp_s7_3->unk8 + temp_a5_3);
                temp_s1->unkC(&arg_sp0 - 0x80, temp_s7_3->unkC, 0, (((s32) (temp_a3_8 + 7) >> 3) + 1) & ~1, temp_s4_2, 3, temp_s2, arg0);
                var_s3 += temp_s7_3->unk4;
            } while (var_s5 != arg_sp0.unk-120);
        }
        break;
    }
}

void nfbFreeHWCmapArrays(s64 arg0, s32 arg1, void *arg2, s32 arg_sp0) {
    s32 *temp_sp;
    s32 *var_a2;
    s32 temp_a0;
    s32 temp_at;
    s32 temp_s4;
    s32 var_s0;
    s64 var_a1;
    s64 var_s2;
    void *temp_s2;
    void *temp_s2_10;
    void *temp_s2_11;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s2_5;
    void *temp_s2_6;
    void *temp_s2_7;
    void *temp_s2_8;
    void *temp_s2_9;
    void *var_s4;

    arg_sp0.unk-78 = (s64) saved_reg_ra;
    arg_sp0.unk-38 = arg0;
    arg_sp0.unk-60 = (s64) saved_reg_s3;
    arg_sp0.unk-48 = (s64) saved_reg_s1;
    arg_sp0.unk-30 = (s64) saved_reg_s2;
    arg_sp0.unk-58 = (s64) saved_reg_s7;
    arg_sp0.unk-70 = (s64) saved_reg_fp;
    arg_sp0.unk-68 = (s64) saved_reg_s6;
    arg_sp0.unk-50 = (s64) saved_reg_s0;
    arg_sp0.unk-40 = (s64) saved_reg_s4;
    var_s0 = 0;
    temp_sp = sp - (((arg1 * 4) + 0xF) & ~0xF);
    temp_s4 = arg0 + 0x120;
    Xfree((s64) arg0->unk4);
    temp_s2 = arg0 + 0x18;
    if ((temp_s2 != temp_s4) && (Xfree((s64) temp_s2->unk4), temp_s2_2 = temp_s2 + 0x18, (temp_s2_2 != temp_s4)) && (Xfree((s64) temp_s2_2->unk4), temp_s2_3 = temp_s2_2 + 0x18, (temp_s2_3 != temp_s4)) && (Xfree((s64) temp_s2_3->unk4), temp_s2_4 = temp_s2_3 + 0x18, (temp_s2_4 != temp_s4)) && (Xfree((s64) temp_s2_4->unk4), temp_s2_5 = temp_s2_4 + 0x18, (temp_s2_5 != temp_s4)) && (Xfree((s64) temp_s2_5->unk4), temp_s2_6 = temp_s2_5 + 0x18, (temp_s2_6 != temp_s4)) && (Xfree((s64) temp_s2_6->unk4), temp_s2_7 = temp_s2_6 + 0x18, (temp_s2_7 != temp_s4)) && (Xfree((s64) temp_s2_7->unk4), temp_s2_8 = temp_s2_7 + 0x18, (temp_s2_8 != temp_s4)) && (Xfree((s64) temp_s2_8->unk4), temp_s2_9 = temp_s2_8 + 0x18, (temp_s2_9 != temp_s4)) && (Xfree((s64) temp_s2_9->unk4), temp_s2_10 = temp_s2_9 + 0x18, (temp_s2_10 != temp_s4))) {
        Xfree((s64) temp_s2_10->unk4);
        temp_s2_11 = temp_s2_10 + 0x18;
        if (temp_s2_11 != temp_s4) {
            Xfree((s64) temp_s2_11->unk4);
        }
    }
    if (arg1 > 0) {
        arg_sp0.unk-80 = (s64) saved_reg_s5;
        var_s4 = arg2;
loop_20:
        temp_a0 = var_s4->unk8;
        var_a2 = temp_sp;
        var_a1 = 0;
        if (temp_a0 != 0) {
            if (var_s0 > 0) {
loop_23:
                temp_at = *var_a2;
                var_a2 += 4;
                var_s2 = var_a1;
                if (temp_at != temp_a0) {
                    var_a1 += 1;
                    if (var_a1 == var_s0) {
                        goto block_17;
                    }
                    goto loop_23;
                }
            } else {
                var_a1 = 0;
block_17:
                var_s2 = var_a1;
            }
            if (var_s0 == var_s2) {
                Xfree((s64) temp_a0, var_a1, var_a2);
                var_s0 += 1;
                temp_sp[var_s2] = var_s4->unk8;
            }
        }
        var_s4 += 0x1C;
        if (var_s4 != ((arg1 * 0x1C) + arg2)) {
            goto loop_20;
        }
    }
    Xfree(arg_sp0.unk-38);
    Xfree((s64) arg2);
}

void nfbPutImage(void *arg0, void *arg1, s16 arg2, s16 arg3, s16 arg4, s64 arg5, s32 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a1;
    s16 temp_a1_2;
    s16 temp_a3;
    s16 temp_a4;
    s16 temp_a6;
    s16 temp_a6_2;
    s16 temp_a7;
    s16 temp_a7_2;
    s16 temp_s3;
    s16 temp_t0;
    s16 temp_t0_2;
    s16 temp_t1_2;
    s16 temp_t1_3;
    s16 temp_t2;
    s16 temp_t2_3;
    s16 temp_t2_4;
    s16 temp_t8;
    s16 temp_t8_2;
    s16 temp_v1_3;
    s16 var_a1;
    s16 var_a2;
    s16 var_a3;
    s16 var_a4;
    s16 var_s0;
    s16 var_s1;
    s16 var_t0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a7_3;
    s32 temp_at;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t1_5;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 var_a6;
    s32 var_a7;
    s64 var_a0;
    void *temp_a0;
    void *temp_gp;
    void *temp_t0_3;
    void *temp_t1;
    void *temp_t1_4;
    void *temp_t2_2;
    void *temp_v0;
    void *temp_v1;
    void *var_s2;
    void *var_t0;
    void *var_t3;

    var_a2 = arg2;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x548F4;
    var_s0 = arg3;
    var_s1 = arg4;
    if ((arg5 != 0) && (arg6 != 0)) {
        if (((u32) (arg1->unk10 & 0x3FFFF) >> 0x11) != 0) {
            var_a2 = arg0->unk8;
            var_s1 += arg0->unkA;
            var_s0 += var_a2;
        }
        if (arg_sp4 != 0) {
            if (arg_sp4 != 1) {
                sp18 = (s64) arg0;
                sp10 = arg5;
                if (arg_sp4 != 2) {

                } else {
                    temp_v1 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
                    sp30 = (s64) temp_v1;
                    temp_a0 = temp_v1->unk8;
                    sp60 = (s64) temp_a0;
                    sp28 = (s64) temp_v1->unk48;
                    temp_v0 = arg1->unk0->unk18C(temp_a0, var_a2, 1, arg_sp4, &PixmapWidthPaddingInfo);
                    temp_t2 = temp_v0->unk6;
                    temp_a6 = temp_v0->unk2;
                    temp_a4 = temp_v0->unk4;
                    temp_t1 = temp_a0->unk8;
                    temp_a3 = temp_v0->unk0;
                    temp_t0 = var_s0 + sp10;
                    temp_a1 = (var_s0 < temp_a3) ? temp_a3 : var_s0;
                    if (temp_t1 != NULL) {
                        var_a7 = temp_t1->unk4;
                    } else {
                        var_a7 = 1;
                    }
                    var_a3 = temp_a1;
                    temp_t0_2 = (temp_a4 < temp_t0) ? temp_a4 : temp_t0;
                    var_a4 = temp_t0_2;
                    var_t3 = **(sp18->unk84 + (temp_gp->unk-30F8 * 4));
                    if (var_a7 != 1) {
                        temp_a1_2 = var_s1 + arg6;
                        if (temp_a1 < temp_t0_2) {
                            var_a1 = (temp_t2 < temp_a1_2) ? temp_t2 : temp_a1_2;
                            temp_s3 = (var_s1 < temp_a6) ? temp_a6 : var_s1;
                            temp_t2_2 = (temp_t1 == NULL) ? temp_a0 : (temp_t1 + 8);
                            if (temp_s3 < var_a1) {
                                var_a6 = 0;
                                if (temp_t2_2->unk6 < temp_s3) {
                                    var_t0 = temp_t2_2;
                                    do {
                                        temp_at = var_t0->unkE < temp_s3;
                                        var_t0 += 8;
                                        var_a6 += 1;
                                    } while (temp_at != 0);
                                } else {
                                    var_t0 = temp_t2_2;
                                }
                                temp_v0_2 = var_a7 - var_a6;
                                var_s2 = var_t0;
                                var_a0 = temp_v0_2 - 1;
                                if ((temp_v0_2 != 0) && (var_t0->unk2 < var_a1)) {
                                    var_t0_2 = var_s2->unk2;
loop_23:
                                    temp_t1_2 = var_s2->unk0;
                                    temp_t2_3 = var_s2->unk4;
                                    temp_t1_3 = (temp_t1_2 < var_a3) ? var_a3 : temp_t1_2;
                                    temp_t2_4 = (var_a4 < temp_t2_3) ? var_a4 : temp_t2_3;
                                    temp_a7 = var_s2->unk6;
                                    temp_v1_2 = temp_t1_3 < temp_t2_4;
                                    var_s2 += 8;
                                    temp_a6_2 = (var_t0_2 < temp_s3) ? temp_s3 : var_t0_2;
                                    temp_a7_2 = (var_a1 < temp_a7) ? var_a1 : temp_a7;
                                    if ((temp_v1_2 != 0) && (temp_a6_2 < temp_a7_2)) {
                                        sp80 = (s64) var_a1;
                                        sp78 = var_a0;
                                        sp70 = (s64) var_a3;
                                        sp68 = (s64) var_a4;
                                        sp20 = (s64) var_t3;
                                        sp6 = temp_a7_2;
                                        sp2 = temp_a6_2;
                                        sp0 = temp_t1_3;
                                        sp4 = temp_t2_4;
                                        temp_t0_3 = (sp18->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                                        temp_a7_3 = temp_t0_3->unk4;
                                        temp_t0_4 = temp_t0_3->unk8;
                                        temp_a2 = (s32) (((s32) (temp_t0_3->unk0 + sp10) >> temp_a7_3) << temp_t0_4) >> 2;
                                        temp_a6_3 = (s32) ((temp_t1_3 - var_s0) << temp_t0_4) >> temp_a7_3;
                                        sp20->unk8(sp, ((temp_a6_2 - var_s1) * temp_a2 * 4) + arg_spC + temp_a6_3, temp_a2 * 4, sp28, sp30->unk34, sp18, temp_a6_3, temp_a7_3);
                                        var_t3 = (void *) sp20;
                                        var_a4 = (s16) sp68;
                                        var_a3 = (s16) sp70;
                                        var_a0 = sp78;
                                        var_a1 = (s16) sp80;
                                    }
                                    var_a0 -= 1;
                                    if (var_a0 != -1) {
                                        var_t0_2 = var_s2->unk2;
                                        if (var_t0_2 < var_a1) {
                                            goto loop_23;
                                        }
                                    }
                                }
                            }
                        }
                    } else if (temp_a1 < temp_t0_2) {
                        temp_t8 = var_s1 + arg6;
                        temp_v1_3 = (var_s1 < temp_a6) ? temp_a6 : var_s1;
                        sp8 = (s64) temp_v1_3;
                        temp_t8_2 = (temp_t2 < temp_t8) ? temp_t2 : temp_t8;
                        if (temp_v1_3 >= temp_t8_2) {
                            return;
                        }
                        sp6 = temp_t8_2;
                        sp4 = temp_t0_2;
                        sp0 = temp_a1;
                        sp2 = (s16) sp8;
                        temp_t1_4 = (sp18->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                        temp_t0_5 = temp_t1_4->unk4;
                        temp_t1_5 = temp_t1_4->unk8;
                        temp_a2_2 = (s32) (((s32) (temp_t1_4->unk0 + sp10) >> temp_t0_5) << temp_t1_5) >> 2;
                        temp_a6_4 = (s32) ((temp_a1 - var_s0) << temp_t1_5) >> temp_t0_5;
                        var_t3->unk8(sp, ((sp8 - var_s1) * temp_a2_2 * 4) + arg_spC + temp_a6_4, temp_a2_2 * 4, sp28, sp30->unk34, sp18, temp_a6_4, temp_a1);
                    }
                }
            } else {
                temp_a6_5 = ((s32) (PixmapWidthPaddingInfo.unkC + (arg5 + arg7)) >> PixmapWidthPaddingInfo.unk10) << PixmapWidthPaddingInfo.unk14;
                sp6 = var_s1 + arg6;
                sp2 = var_s1;
                sp4 = var_s0 + arg5;
                sp0 = var_s0;
                nfbFreeHWCmapArrays((s64) arg1->unk4, arg7, (s64) sp, arg_spC, temp_a6_5, temp_a6_5 * arg6);
            }
        } else {
            sp6 = var_s1 + arg6;
            sp2 = var_s1;
            sp4 = var_s0 + arg5;
            sp0 = var_s0;
            nfbFreeHWCmapArrays(0, arg7, (s64) sp, arg_spC, ((s32) (PixmapWidthPaddingInfo.unkC + (arg5 + arg7)) >> PixmapWidthPaddingInfo.unk10) << PixmapWidthPaddingInfo.unk14, 0);
        }
    }
}

s32 nfbReadDisplay(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
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
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s32 sp2C;
    s32 sp28;
    ? sp18;
    ? sp8;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    ? *temp_a2_5;
    ? *var_s7_2;
    s16 temp_a2_6;
    s16 temp_a3;
    s16 temp_a5_4;
    s16 temp_a6;
    s16 temp_s0;
    s16 temp_s1;
    s16 temp_s1_2;
    s16 temp_s2;
    s16 var_a4;
    s16 var_at_5;
    s16 var_t3;
    s16 var_t8;
    s16 var_v1_8;
    s32 *temp_v1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_s1_3;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_s8;
    s32 temp_s8_2;
    s32 temp_s8_3;
    s32 temp_s8_4;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_t9_5;
    s32 temp_t9_6;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_at_9;
    s32 var_ra_2;
    s32 var_ra_3;
    s32 var_ra_4;
    s32 var_ra_5;
    s32 var_ra_6;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s0_5;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    s32 var_s2_2;
    s32 var_s3_2;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s5_2;
    s32 var_s8_2;
    s32 var_s8_3;
    s32 var_t9;
    s32 var_t9_2;
    s32 var_t9_3;
    s32 var_t9_4;
    s32 var_v0_13;
    s32 var_v1_10;
    s32 var_v1_11;
    s32 var_v1_13;
    s32 var_v1_14;
    s32 var_v1_2;
    s32 var_v1_4;
    s32 var_v1_5;
    s32 var_v1_6;
    s32 var_v1_7;
    s32 var_v1_9;
    s64 temp_a0_3;
    s64 temp_at_2;
    s64 temp_at_4;
    s64 var_at;
    s64 var_ra;
    s64 var_s0;
    s64 var_s0_6;
    s64 var_s1;
    s64 var_s2;
    s64 var_s3;
    s64 var_s4;
    s64 var_s5;
    s64 var_s7;
    s64 var_s8;
    s64 var_v1;
    u32 *temp_v1_7;
    u32 var_s2_3;
    void *temp_a2_4;
    void *temp_at_3;
    void *temp_gp;
    void *temp_s3_4;
    void *temp_t8_2;
    void *temp_t9_7;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1_8;
    void *var_at_2;
    void *var_at_3;
    void *var_at_4;
    void *var_at_6;
    void *var_at_7;
    void *var_at_8;
    void *var_s6;
    void *var_v0;
    void *var_v0_10;
    void *var_v0_11;
    void *var_v0_12;
    void *var_v0_2;
    void *var_v0_3;
    void *var_v0_4;
    void *var_v0_5;
    void *var_v0_6;
    void *var_v0_7;
    void *var_v0_8;
    void *var_v0_9;
    void *var_v1_12;
    void *var_v1_3;

    var_s0 = saved_reg_s0;
    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_s5 = saved_reg_s5;
    var_s7 = saved_reg_s7;
    var_ra = saved_reg_ra;
    var_s8 = saved_reg_fp;
    sp60 = 0;
    spB0 = arg6;
    sp80 = arg2;
    spC0 = arg1;
    sp58 = arg0;
    sp68 = arg4;
    spB8 = arg7;
    spA8 = arg3;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x543AC;
    temp_at = temp_gp->unk-3854;
    temp_a4 = arg1->unk74;
    spA0 = (s64) temp_a4;
    if (temp_at != -1) {
        temp_v1 = *(spC0->unk1B4 + (temp_at * 4));
        if ((temp_v1 != NULL) && (*temp_v1 != 0)) {
            if ((arg5 != 0) && (sp68 != 0)) {
                if (spB8 == 0) {
                    spB8 = temp_gp->unk-758C(sp68 * arg5 * 4, sp68, -1, temp_a4, 0x543AC);
                    sp60 = 1;
                    var_ra = sp130;
                }
                sp2 = (s16) spA8;
                sp0 = (s16) sp80;
                temp_a3 = sp80 + sp68;
                temp_a6 = spA8 + arg5;
                sp6 = temp_a6;
                sp4 = temp_a3;
                spC8 = (s64) spA0->unk4C;
                sp90 = (s64) spA0->unk30;
                spD0 = (s64) spA0->unk60;
                sp98 = (s64) spA0->unk28;
                spD8 = (s64) spA0->unk54;
                if (spA8 >= 0) {
                    if (sp80 < 0) {
                        goto block_149;
                    }
                } else {
                    temp_a1 = ((temp_a6 < 1) ? temp_a6 : 0) - spA8;
                    if (spB0 == sp68) {
                        temp_lo = temp_a1 * sp68;
                        temp_a2 = (temp_lo + (((s32) ((temp_lo - 8) ^ 8) >> 0x1F) & ~6)) - 8;
                        temp_t2 = (s32) ((temp_a2 >= 0) ? temp_a2 : (temp_a2 + 7)) >> 3;
                        temp_a2_2 = temp_t2 + 1;
                        if (temp_t2 >= 0) {
                            var_at = spB8;
                            if (temp_a2_2 & 1) {
                                var_at += 0x20;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0xe0($at) */);
                                var_at->unk-4 = 0xFF000000;
                                var_at->unk-8 = 0xFF000000;
                                var_at->unk-C = 0xFF000000;
                                var_at->unk-10 = 0xFF000000;
                                var_at->unk-14 = 0xFF000000;
                                var_at->unk-18 = 0xFF000000;
                                var_at->unk-1C = 0xFF000000;
                                var_at->unk-20 = 0xFF000000;
                            }
                            temp_t9 = temp_a2_2 >> 1;
                            var_v1 = var_at;
                            if (temp_t9 != 0) {
                                if (temp_t9 >= 2) {
                                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v1) */);
                                    var_v1->unk4 = 0xFF000000;
                                    var_v0 = var_v1 + 0x40;
                                    var_v1->unk0 = 0xFF000000;
                                    temp_a0 = ((temp_a2_2 << 5) + spB8) - 0x40;
loop_135:
                                    var_v1->unk8 = 0xFF000000;
                                    var_v1->unkC = 0xFF000000;
                                    var_v1->unk10 = 0xFF000000;
                                    var_v1->unk14 = 0xFF000000;
                                    var_v1->unk18 = 0xFF000000;
                                    var_v1->unk1C = 0xFF000000;
                                    var_v1->unk20 = 0xFF000000;
                                    var_v1->unk24 = 0xFF000000;
                                    var_v1->unk28 = 0xFF000000;
                                    var_v1->unk2C = 0xFF000000;
                                    var_v1->unk30 = 0xFF000000;
                                    var_v1->unk34 = 0xFF000000;
                                    var_v1->unk38 = 0xFF000000;
                                    var_v1->unk3C = 0xFF000000;
                                    var_v1 = var_v0 + 0x40;
                                    var_v0->unk0 = 0xFF000000;
                                    var_v0->unk4 = 0xFF000000;
                                    if (var_v0 != temp_a0) {
                                        var_v0->unk8 = 0xFF000000;
                                        var_v0->unkC = 0xFF000000;
                                        var_v0->unk10 = 0xFF000000;
                                        var_v0->unk14 = 0xFF000000;
                                        var_v0->unk18 = 0xFF000000;
                                        var_v0->unk1C = 0xFF000000;
                                        var_v0->unk20 = 0xFF000000;
                                        var_v0->unk24 = 0xFF000000;
                                        var_v0->unk28 = 0xFF000000;
                                        var_v0->unk2C = 0xFF000000;
                                        var_v0->unk30 = 0xFF000000;
                                        var_v0->unk34 = 0xFF000000;
                                        var_v0->unk38 = 0xFF000000;
                                        var_v0->unk3C = 0xFF000000;
                                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v1) */);
                                        var_v0 = var_v1 + 0x40;
                                        var_v0->unk40 = 0xFF000000;
                                        var_v1->unk4 = 0xFF000000;
                                        if (var_v1 != temp_a0) {
                                            goto loop_135;
                                        }
                                    } else {
                                        var_v1 = (s64) var_v0;
                                    }
                                    var_v1->unk3C = 0xFF000000;
                                    var_v1->unk38 = 0xFF000000;
                                    var_v1->unk34 = 0xFF000000;
                                    var_v1->unk30 = 0xFF000000;
                                    var_v1->unk2C = 0xFF000000;
                                    var_v1->unk28 = 0xFF000000;
                                    var_v1->unk24 = 0xFF000000;
                                    var_v1->unk20 = 0xFF000000;
                                    var_v1->unk1C = 0xFF000000;
                                    var_v1->unk18 = 0xFF000000;
                                    var_v1->unk14 = 0xFF000000;
                                    var_v1->unk10 = 0xFF000000;
                                    var_v1->unkC = 0xFF000000;
                                    var_v1->unk8 = 0xFF000000;
                                } else {
                                    var_v1->unk3C = 0xFF000000;
                                    var_v1->unk38 = 0xFF000000;
                                    var_v1->unk34 = 0xFF000000;
                                    var_v1->unk30 = 0xFF000000;
                                    var_v1->unk2C = 0xFF000000;
                                    var_v1->unk28 = 0xFF000000;
                                    var_v1->unk24 = 0xFF000000;
                                    var_v1->unk20 = 0xFF000000;
                                    var_v1->unk1C = 0xFF000000;
                                    var_v1->unk18 = 0xFF000000;
                                    var_v1->unk14 = 0xFF000000;
                                    var_v1->unk10 = 0xFF000000;
                                    var_v1->unkC = 0xFF000000;
                                    var_v1->unk8 = 0xFF000000;
                                    var_v1->unk4 = 0xFF000000;
                                    var_v1->unk0 = 0xFF000000;
                                }
                            }
                        }
                        temp_a4_2 = (temp_a2_2 < 0) ? 0 : temp_a2_2;
                        sp130 = var_ra;
                        temp_a5 = (temp_lo - (temp_a4_2 * 8)) - 1;
                        if (temp_a5 >= 0) {
                            temp_t9_2 = temp_a5 + 1;
                            temp_ra = temp_a4_2 * 8;
                            var_v1_2 = temp_t9_2 & 7;
                            var_at_2 = (temp_ra * 4) + spB8;
                            if (var_v1_2 != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($at) */);
                                    var_v1_2 -= 1;
                                    var_at_2 += 4;
                                    var_at_2->unk-4 = 0xFF000000;
                                } while (var_v1_2 != 0);
                            }
                            temp_a4_3 = temp_t9_2 >> 3;
                            var_v1_3 = var_at_2;
                            if (temp_a4_3 != 0) {
                                if (temp_a4_3 >= 2) {
                                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v1) */);
                                    var_v1_3->unk4 = 0xFF000000;
                                    var_v0_2 = var_v1_3 + 0x20;
                                    var_v1_3->unk0 = 0xFF000000;
                                    temp_a0_2 = (((temp_t9_2 + temp_ra) * 4) + spB8) - 0x20;
loop_144:
                                    var_v1_3->unk8 = 0xFF000000;
                                    var_v1_3->unkC = 0xFF000000;
                                    var_v1_3->unk10 = 0xFF000000;
                                    var_v1_3->unk14 = 0xFF000000;
                                    var_v1_3->unk18 = 0xFF000000;
                                    var_v1_3->unk1C = 0xFF000000;
                                    var_v1_3 = var_v0_2 + 0x20;
                                    var_v0_2->unk0 = 0xFF000000;
                                    var_v0_2->unk4 = 0xFF000000;
                                    if (var_v0_2 != temp_a0_2) {
                                        var_v0_2->unk8 = 0xFF000000;
                                        var_v0_2->unkC = 0xFF000000;
                                        var_v0_2->unk10 = 0xFF000000;
                                        var_v0_2->unk14 = 0xFF000000;
                                        var_v0_2->unk18 = 0xFF000000;
                                        var_v0_2->unk1C = 0xFF000000;
                                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v1) */);
                                        var_v0_2 = var_v1_3 + 0x20;
                                        var_v0_2->unk20 = 0xFF000000;
                                        var_v1_3->unk4 = 0xFF000000;
                                        if (var_v1_3 != temp_a0_2) {
                                            goto loop_144;
                                        }
                                    } else {
                                        var_v1_3 = var_v0_2;
                                    }
                                    var_v1_3->unk1C = 0xFF000000;
                                    var_v1_3->unk18 = 0xFF000000;
                                    var_v1_3->unk14 = 0xFF000000;
                                    var_v1_3->unk10 = 0xFF000000;
                                    var_v1_3->unkC = 0xFF000000;
                                    var_v1_3->unk8 = 0xFF000000;
                                } else {
                                    var_v1_3->unk1C = 0xFF000000;
                                    var_v1_3->unk18 = 0xFF000000;
                                    var_v1_3->unk14 = 0xFF000000;
                                    var_v1_3->unk10 = 0xFF000000;
                                    var_v1_3->unkC = 0xFF000000;
                                    var_v1_3->unk8 = 0xFF000000;
                                    var_v1_3->unk4 = 0xFF000000;
                                    var_v1_3->unk0 = 0xFF000000;
                                }
                            }
                        }
                    } else {
                        sp130 = var_ra;
                        if (temp_a1 > 0) {
                            temp_t9_3 = ((((s32) ((sp68 - 8) ^ 8) >> 0x1F) & ~6) + sp68) - 8;
                            temp_s5 = (s32) ((temp_t9_3 >= 0) ? temp_t9_3 : (temp_t9_3 + 7)) >> 3;
                            temp_s8 = temp_s5 + 1;
                            var_s1_2 = 0;
                            var_s0_2 = temp_s8 * 8 * 4;
                            var_t9 = 0;
                            var_a5 = ((temp_s8 < 0) ? 0 : temp_s8) * 8;
                            var_ra_2 = var_a5 * 4;
                            temp_s7 = (sp68 - var_a5) - 1;
loop_178:
                            if (temp_s5 >= 0) {
                                var_v0_3 = var_t9 + spB8;
                                if (temp_s8 >= 2) {
                                    var_v0_3->unk4 = 0xFF000000;
                                    var_v0_3->unk0 = 0xFF000000;
                                    do {
                                        var_v0_3->unk8 = 0xFF000000;
                                        var_v0_3->unkC = 0xFF000000;
                                        var_v0_3->unk10 = 0xFF000000;
                                        var_v0_3->unk14 = 0xFF000000;
                                        var_v0_3->unk18 = 0xFF000000;
                                        var_v0_3->unk1C = 0xFF000000;
                                        var_v0_3 += 0x20;
                                        var_v0_3->unk0 = 0xFF000000;
                                        var_v0_3->unk4 = 0xFF000000;
                                    } while (var_v0_3 != ((var_s0_2 + spB8) - 0x20));
                                    var_v0_3->unk1C = 0xFF000000;
                                    var_v0_3->unk18 = 0xFF000000;
                                    var_v0_3->unk14 = 0xFF000000;
                                    var_v0_3->unk10 = 0xFF000000;
                                    var_v0_3->unkC = 0xFF000000;
                                    var_v0_3->unk8 = 0xFF000000;
                                } else {
                                    var_v0_3->unk1C = 0xFF000000;
                                    var_v0_3->unk18 = 0xFF000000;
                                    var_v0_3->unk14 = 0xFF000000;
                                    var_v0_3->unk10 = 0xFF000000;
                                    var_v0_3->unkC = 0xFF000000;
                                    var_v0_3->unk8 = 0xFF000000;
                                    var_v0_3->unk4 = 0xFF000000;
                                    var_v0_3->unk0 = 0xFF000000;
                                }
                            }
                            if (temp_s7 >= 0) {
                                temp_s3 = temp_s7 + 1;
                                var_v1_4 = temp_s3 & 7;
                                var_at_3 = var_ra_2 + spB8;
                                if (var_v1_4 != 0) {
                                    do {
                                        var_v1_4 -= 1;
                                        var_at_3 += 4;
                                        var_at_3->unk-4 = 0xFF000000;
                                    } while (var_v1_4 != 0);
                                }
                                temp_v1_2 = temp_s3 >> 3;
                                var_v0_4 = var_at_3;
                                if (temp_v1_2 != 0) {
                                    if (temp_v1_2 >= 2) {
                                        var_v0_4->unk4 = 0xFF000000;
                                        var_v0_4->unk0 = 0xFF000000;
                                        do {
                                            var_v0_4->unk8 = 0xFF000000;
                                            var_v0_4->unkC = 0xFF000000;
                                            var_v0_4->unk10 = 0xFF000000;
                                            var_v0_4->unk14 = 0xFF000000;
                                            var_v0_4->unk18 = 0xFF000000;
                                            var_v0_4->unk1C = 0xFF000000;
                                            var_v0_4 += 0x20;
                                            var_v0_4->unk0 = 0xFF000000;
                                            var_v0_4->unk4 = 0xFF000000;
                                        } while (var_v0_4 != ((((temp_s3 + var_a5) * 4) + spB8) - 0x20));
                                        var_v0_4->unk1C = 0xFF000000;
                                        var_v0_4->unk18 = 0xFF000000;
                                        var_v0_4->unk14 = 0xFF000000;
                                        var_v0_4->unk10 = 0xFF000000;
                                        var_v0_4->unkC = 0xFF000000;
                                        var_v0_4->unk8 = 0xFF000000;
                                    } else {
                                        var_v0_4->unk1C = 0xFF000000;
                                        var_v0_4->unk18 = 0xFF000000;
                                        var_v0_4->unk14 = 0xFF000000;
                                        var_v0_4->unk10 = 0xFF000000;
                                        var_v0_4->unkC = 0xFF000000;
                                        var_v0_4->unk8 = 0xFF000000;
                                        var_v0_4->unk4 = 0xFF000000;
                                        var_v0_4->unk0 = 0xFF000000;
                                    }
                                }
                            }
                            var_t9 += spB0 * 4;
                            var_s1_2 += 1;
                            var_s0_2 += spB0 * 4;
                            var_ra_2 += spB0 * 4;
                            var_a5 += spB0;
                            if (var_s1_2 != temp_a1) {
                                goto loop_178;
                            }
                        }
                    }
                    sp2 = 0;
                    var_s0 = sp118;
                    var_s1 = sp120;
                    var_s5 = sp128;
                    var_ra = sp130;
                    var_s4 = sp138;
                    var_s7 = sp140;
                    var_s2 = sp148;
                    var_s8 = sp150;
                    var_s3 = sp158;
                    if (sp80 < 0) {
block_149:
                        sp158 = var_s3;
                        sp150 = var_s8;
                        sp148 = var_s2;
                        sp140 = var_s7;
                        sp138 = var_s4;
                        sp130 = var_ra;
                        sp128 = var_s5;
                        sp120 = var_s1;
                        sp118 = var_s0;
                        if (arg5 > 0) {
                            temp_s8_2 = ((temp_a3 < 1) ? temp_a3 : 0) - sp80;
                            temp_a7 = (temp_s8_2 + (((s32) ((temp_s8_2 - 8) ^ 8) >> 0x1F) & ~6)) - 8;
                            temp_a1_2 = (s32) ((temp_a7 >= 0) ? temp_a7 : (temp_a7 + 7)) >> 3;
                            temp_a7_2 = temp_a1_2 + 1;
                            var_s1_3 = 0;
                            var_t9_2 = temp_a7_2 * 8 * 4;
                            sp158 = var_s3;
                            var_a5_2 = 0;
                            var_ra_3 = ((temp_a7_2 < 0) ? 0 : temp_a7_2) * 8;
                            sp148 = var_s2;
                            var_s0_3 = var_ra_3 * 4;
                            sp138 = var_s4;
                            temp_s8_3 = (temp_s8_2 - var_ra_3) - 1;
loop_160:
                            if (temp_a1_2 >= 0) {
                                var_v0_5 = var_a5_2 + spB8;
                                if (temp_a7_2 >= 2) {
                                    var_v0_5->unk4 = 0xFF000000;
                                    var_v0_5->unk0 = 0xFF000000;
                                    do {
                                        var_v0_5->unk8 = 0xFF000000;
                                        var_v0_5->unkC = 0xFF000000;
                                        var_v0_5->unk10 = 0xFF000000;
                                        var_v0_5->unk14 = 0xFF000000;
                                        var_v0_5->unk18 = 0xFF000000;
                                        var_v0_5->unk1C = 0xFF000000;
                                        var_v0_5 += 0x20;
                                        var_v0_5->unk0 = 0xFF000000;
                                        var_v0_5->unk4 = 0xFF000000;
                                    } while (var_v0_5 != ((var_t9_2 + spB8) - 0x20));
                                    var_v0_5->unk1C = 0xFF000000;
                                    var_v0_5->unk18 = 0xFF000000;
                                    var_v0_5->unk14 = 0xFF000000;
                                    var_v0_5->unk10 = 0xFF000000;
                                    var_v0_5->unkC = 0xFF000000;
                                    var_v0_5->unk8 = 0xFF000000;
                                } else {
                                    var_v0_5->unk1C = 0xFF000000;
                                    var_v0_5->unk18 = 0xFF000000;
                                    var_v0_5->unk14 = 0xFF000000;
                                    var_v0_5->unk10 = 0xFF000000;
                                    var_v0_5->unkC = 0xFF000000;
                                    var_v0_5->unk8 = 0xFF000000;
                                    var_v0_5->unk4 = 0xFF000000;
                                    var_v0_5->unk0 = 0xFF000000;
                                }
                            }
                            if (temp_s8_3 >= 0) {
                                temp_s3_2 = temp_s8_3 + 1;
                                var_v1_5 = temp_s3_2 & 7;
                                var_at_4 = var_s0_3 + spB8;
                                if (var_v1_5 != 0) {
                                    do {
                                        var_v1_5 -= 1;
                                        var_at_4 += 4;
                                        var_at_4->unk-4 = 0xFF000000;
                                    } while (var_v1_5 != 0);
                                }
                                temp_v1_3 = temp_s3_2 >> 3;
                                var_v0_6 = var_at_4;
                                if (temp_v1_3 != 0) {
                                    if (temp_v1_3 >= 2) {
                                        var_v0_6->unk4 = 0xFF000000;
                                        var_v0_6->unk0 = 0xFF000000;
                                        do {
                                            var_v0_6->unk8 = 0xFF000000;
                                            var_v0_6->unkC = 0xFF000000;
                                            var_v0_6->unk10 = 0xFF000000;
                                            var_v0_6->unk14 = 0xFF000000;
                                            var_v0_6->unk18 = 0xFF000000;
                                            var_v0_6->unk1C = 0xFF000000;
                                            var_v0_6 += 0x20;
                                            var_v0_6->unk0 = 0xFF000000;
                                            var_v0_6->unk4 = 0xFF000000;
                                        } while (var_v0_6 != ((((temp_s3_2 + var_ra_3) * 4) + spB8) - 0x20));
                                        var_v0_6->unk1C = 0xFF000000;
                                        var_v0_6->unk18 = 0xFF000000;
                                        var_v0_6->unk14 = 0xFF000000;
                                        var_v0_6->unk10 = 0xFF000000;
                                        var_v0_6->unkC = 0xFF000000;
                                        var_v0_6->unk8 = 0xFF000000;
                                    } else {
                                        var_v0_6->unk1C = 0xFF000000;
                                        var_v0_6->unk18 = 0xFF000000;
                                        var_v0_6->unk14 = 0xFF000000;
                                        var_v0_6->unk10 = 0xFF000000;
                                        var_v0_6->unkC = 0xFF000000;
                                        var_v0_6->unk8 = 0xFF000000;
                                        var_v0_6->unk4 = 0xFF000000;
                                        var_v0_6->unk0 = 0xFF000000;
                                    }
                                }
                            }
                            var_a5_2 += spB0 * 4;
                            var_s1_3 += 1;
                            var_t9_2 += spB0 * 4;
                            var_s0_3 += spB0 * 4;
                            var_ra_3 += spB0;
                            if (var_s1_3 != arg5) {
                                goto loop_160;
                            }
                        }
                        sp0 = 0;
                        var_s0 = sp118;
                        var_s1 = sp120;
                        var_s5 = sp128;
                        var_ra = sp130;
                        var_s4 = sp138;
                        var_s7 = sp140;
                        var_s2 = sp148;
                        var_s8 = sp150;
                        var_s3 = sp158;
                    }
                }
                var_at_5 = spC0->unkA;
                if (var_at_5 < temp_a6) {
                    temp_a0_3 = (var_at_5 < spA8) ? spA8 : (s64) var_at_5;
                    temp_a1_3 = temp_a6 - temp_a0_3;
                    if (spB0 == sp68) {
                        temp_lo_2 = temp_a1_3 * sp68;
                        temp_t2_2 = (temp_lo_2 + (((s32) ((temp_lo_2 - 8) ^ 8) >> 0x1F) & ~6)) - 8;
                        temp_t0 = (s32) ((temp_t2_2 >= 0) ? temp_t2_2 : (temp_t2_2 + 7)) >> 3;
                        temp_t9_4 = temp_t0 + 1;
                        if (temp_t0 >= 0) {
                            temp_lo_3 = (temp_a0_3 - spA8) * spB0;
                            var_v0_7 = (temp_lo_3 * 4) + spB8;
                            if (temp_t9_4 >= 2) {
                                var_v0_7->unk4 = 0xFF000000;
                                var_v0_7->unk0 = 0xFF000000;
                                do {
                                    var_v0_7->unk8 = 0xFF000000;
                                    var_v0_7->unkC = 0xFF000000;
                                    var_v0_7->unk10 = 0xFF000000;
                                    var_v0_7->unk14 = 0xFF000000;
                                    var_v0_7->unk18 = 0xFF000000;
                                    var_v0_7->unk1C = 0xFF000000;
                                    var_v0_7 += 0x20;
                                    var_v0_7->unk0 = 0xFF000000;
                                    var_v0_7->unk4 = 0xFF000000;
                                } while (var_v0_7 != ((((temp_lo_3 + (temp_t9_4 * 8)) * 4) + spB8) - 0x20));
                                var_v0_7->unk1C = 0xFF000000;
                                var_v0_7->unk18 = 0xFF000000;
                                var_v0_7->unk14 = 0xFF000000;
                                var_v0_7->unk10 = 0xFF000000;
                                var_v0_7->unkC = 0xFF000000;
                                var_v0_7->unk8 = 0xFF000000;
                            } else {
                                var_v0_7->unk1C = 0xFF000000;
                                var_v0_7->unk18 = 0xFF000000;
                                var_v0_7->unk14 = 0xFF000000;
                                var_v0_7->unk10 = 0xFF000000;
                                var_v0_7->unkC = 0xFF000000;
                                var_v0_7->unk8 = 0xFF000000;
                                var_v0_7->unk4 = 0xFF000000;
                                var_v0_7->unk0 = 0xFF000000;
                            }
                        }
                        temp_a4_4 = ((temp_t9_4 < 0) ? 0 : temp_t9_4) * 8;
                        temp_a5_2 = (temp_lo_2 - temp_a4_4) - 1;
                        if (temp_a5_2 >= 0) {
                            sp130 = var_ra;
                            temp_t9_5 = temp_a5_2 + 1;
                            var_v1_6 = temp_t9_5 & 7;
                            temp_ra_2 = ((temp_a0_3 - spA8) * spB0) + temp_a4_4;
                            var_at_6 = (temp_ra_2 * 4) + spB8;
                            if (var_v1_6 != 0) {
                                do {
                                    var_v1_6 -= 1;
                                    var_at_6 += 4;
                                    var_at_6->unk-4 = 0xFF000000;
                                } while (var_v1_6 != 0);
                            }
                            temp_v1_4 = temp_t9_5 >> 3;
                            var_v0_8 = var_at_6;
                            if (temp_v1_4 != 0) {
                                if (temp_v1_4 >= 2) {
                                    var_v0_8->unk4 = 0xFF000000;
                                    var_v0_8->unk0 = 0xFF000000;
                                    do {
                                        var_v0_8->unk8 = 0xFF000000;
                                        var_v0_8->unkC = 0xFF000000;
                                        var_v0_8->unk10 = 0xFF000000;
                                        var_v0_8->unk14 = 0xFF000000;
                                        var_v0_8->unk18 = 0xFF000000;
                                        var_v0_8->unk1C = 0xFF000000;
                                        var_v0_8 += 0x20;
                                        var_v0_8->unk0 = 0xFF000000;
                                        var_v0_8->unk4 = 0xFF000000;
                                    } while (var_v0_8 != ((((temp_t9_5 + temp_ra_2) * 4) + spB8) - 0x20));
                                    var_v0_8->unk1C = 0xFF000000;
                                    var_v0_8->unk18 = 0xFF000000;
                                    var_v0_8->unk14 = 0xFF000000;
                                    var_v0_8->unk10 = 0xFF000000;
                                    var_v0_8->unkC = 0xFF000000;
                                    var_v0_8->unk8 = 0xFF000000;
                                } else {
                                    var_v0_8->unk1C = 0xFF000000;
                                    var_v0_8->unk18 = 0xFF000000;
                                    var_v0_8->unk14 = 0xFF000000;
                                    var_v0_8->unk10 = 0xFF000000;
                                    var_v0_8->unkC = 0xFF000000;
                                    var_v0_8->unk8 = 0xFF000000;
                                    var_v0_8->unk4 = 0xFF000000;
                                    var_v0_8->unk0 = 0xFF000000;
                                }
                            }
                            var_ra = sp130;
                        }
                        goto block_25;
                    }
                    sp150 = var_s8;
                    sp140 = var_s7;
                    sp130 = var_ra;
                    sp128 = var_s5;
                    sp120 = var_s1;
                    sp118 = var_s0;
                    if (temp_a1_3 > 0) {
                        temp_t9_6 = ((((s32) ((sp68 - 8) ^ 8) >> 0x1F) & ~6) + sp68) - 8;
                        var_ra_4 = (temp_a0_3 - spA8) * spB0;
                        temp_s5_2 = (s32) ((temp_t9_6 >= 0) ? temp_t9_6 : (temp_t9_6 + 7)) >> 3;
                        var_t9_3 = var_ra_4 * 4;
                        temp_s8_4 = temp_s5_2 + 1;
                        var_a5_3 = 0;
                        temp_a6_2 = ((temp_s8_4 < 0) ? 0 : temp_s8_4) * 8;
                        sp158 = var_s3;
                        var_s1_4 = ((temp_s8_4 * 8) + var_ra_4) * 4;
                        sp148 = var_s2;
                        var_s0_4 = (temp_a6_2 + var_ra_4) * 4;
                        sp138 = var_s4;
                        temp_s7_2 = (sp68 - temp_a6_2) - 1;
loop_118:
                        if (temp_s5_2 >= 0) {
                            var_v0_9 = var_t9_3 + spB8;
                            if (temp_s8_4 >= 2) {
                                var_v0_9->unk4 = 0xFF000000;
                                var_v0_9->unk0 = 0xFF000000;
                                do {
                                    var_v0_9->unk8 = 0xFF000000;
                                    var_v0_9->unkC = 0xFF000000;
                                    var_v0_9->unk10 = 0xFF000000;
                                    var_v0_9->unk14 = 0xFF000000;
                                    var_v0_9->unk18 = 0xFF000000;
                                    var_v0_9->unk1C = 0xFF000000;
                                    var_v0_9 += 0x20;
                                    var_v0_9->unk0 = 0xFF000000;
                                    var_v0_9->unk4 = 0xFF000000;
                                } while (var_v0_9 != ((var_s1_4 + spB8) - 0x20));
                                var_v0_9->unk1C = 0xFF000000;
                                var_v0_9->unk18 = 0xFF000000;
                                var_v0_9->unk14 = 0xFF000000;
                                var_v0_9->unk10 = 0xFF000000;
                                var_v0_9->unkC = 0xFF000000;
                                var_v0_9->unk8 = 0xFF000000;
                            } else {
                                var_v0_9->unk1C = 0xFF000000;
                                var_v0_9->unk18 = 0xFF000000;
                                var_v0_9->unk14 = 0xFF000000;
                                var_v0_9->unk10 = 0xFF000000;
                                var_v0_9->unkC = 0xFF000000;
                                var_v0_9->unk8 = 0xFF000000;
                                var_v0_9->unk4 = 0xFF000000;
                                var_v0_9->unk0 = 0xFF000000;
                            }
                        }
                        if (temp_s7_2 >= 0) {
                            temp_s3_3 = temp_s7_2 + 1;
                            var_v1_7 = temp_s3_3 & 7;
                            var_at_7 = var_s0_4 + spB8;
                            if (var_v1_7 != 0) {
                                do {
                                    var_v1_7 -= 1;
                                    var_at_7 += 4;
                                    var_at_7->unk-4 = 0xFF000000;
                                } while (var_v1_7 != 0);
                            }
                            temp_v1_5 = temp_s3_3 >> 3;
                            var_v0_10 = var_at_7;
                            if (temp_v1_5 != 0) {
                                if (temp_v1_5 >= 2) {
                                    var_v0_10->unk4 = 0xFF000000;
                                    var_v0_10->unk0 = 0xFF000000;
                                    do {
                                        var_v0_10->unk8 = 0xFF000000;
                                        var_v0_10->unkC = 0xFF000000;
                                        var_v0_10->unk10 = 0xFF000000;
                                        var_v0_10->unk14 = 0xFF000000;
                                        var_v0_10->unk18 = 0xFF000000;
                                        var_v0_10->unk1C = 0xFF000000;
                                        var_v0_10 += 0x20;
                                        var_v0_10->unk0 = 0xFF000000;
                                        var_v0_10->unk4 = 0xFF000000;
                                    } while (var_v0_10 != ((((var_ra_4 + (temp_s3_3 + temp_a6_2)) * 4) + spB8) - 0x20));
                                    var_v0_10->unk1C = 0xFF000000;
                                    var_v0_10->unk18 = 0xFF000000;
                                    var_v0_10->unk14 = 0xFF000000;
                                    var_v0_10->unk10 = 0xFF000000;
                                    var_v0_10->unkC = 0xFF000000;
                                    var_v0_10->unk8 = 0xFF000000;
                                } else {
                                    var_v0_10->unk1C = 0xFF000000;
                                    var_v0_10->unk18 = 0xFF000000;
                                    var_v0_10->unk14 = 0xFF000000;
                                    var_v0_10->unk10 = 0xFF000000;
                                    var_v0_10->unkC = 0xFF000000;
                                    var_v0_10->unk8 = 0xFF000000;
                                    var_v0_10->unk4 = 0xFF000000;
                                    var_v0_10->unk0 = 0xFF000000;
                                }
                            }
                        }
                        var_t9_3 += spB0 * 4;
                        var_a5_3 += 1;
                        var_s1_4 += spB0 * 4;
                        var_s0_4 += spB0 * 4;
                        var_ra_4 += spB0;
                        if (var_a5_3 != temp_a1_3) {
                            goto loop_118;
                        }
                        var_s0 = sp118;
                        var_s1 = sp120;
                        var_s5 = sp128;
                        var_ra = sp130;
                        var_s4 = sp138;
                        var_s7 = sp140;
                        var_s2 = sp148;
                        var_s8 = sp150;
                        var_s3 = sp158;
block_25:
                        var_at_5 = ((void *) spC0)->unkA;
                    }
                    sp6 = var_at_5;
                }
                var_v1_8 = spC0->unk8;
                if (var_v1_8 < temp_a3) {
                    sp150 = var_s8;
                    sp148 = var_s2;
                    sp140 = var_s7;
                    sp130 = var_ra;
                    sp120 = var_s1;
                    sp118 = var_s0;
                    temp_at_2 = (var_v1_8 < sp80) ? sp80 : (s64) var_v1_8;
                    if (arg5 > 0) {
                        temp_a1_4 = temp_a3 - temp_at_2;
                        temp_a7_3 = (temp_a1_4 + (((s32) ((temp_a1_4 - 8) ^ 8) >> 0x1F) & ~6)) - 8;
                        var_ra_5 = temp_at_2 - sp80;
                        temp_a5_3 = (s32) ((temp_a7_3 >= 0) ? temp_a7_3 : (temp_a7_3 + 7)) >> 3;
                        var_s1_5 = var_ra_5 * 4;
                        temp_a7_4 = temp_a5_3 + 1;
                        var_s2_2 = 0;
                        temp_a2_3 = ((temp_a7_4 < 0) ? 0 : temp_a7_4) * 8;
                        sp158 = var_s3;
                        var_t9_4 = ((temp_a7_4 * 8) + var_ra_5) * 4;
                        sp138 = var_s4;
                        var_s0_5 = (temp_a2_3 + var_ra_5) * 4;
                        sp128 = var_s5;
                        temp_a1_5 = (temp_a1_4 - temp_a2_3) - 1;
loop_101:
                        if (temp_a5_3 >= 0) {
                            var_v0_11 = var_s1_5 + spB8;
                            if (temp_a7_4 >= 2) {
                                var_v0_11->unk4 = 0xFF000000;
                                var_v0_11->unk0 = 0xFF000000;
                                do {
                                    var_v0_11->unk8 = 0xFF000000;
                                    var_v0_11->unkC = 0xFF000000;
                                    var_v0_11->unk10 = 0xFF000000;
                                    var_v0_11->unk14 = 0xFF000000;
                                    var_v0_11->unk18 = 0xFF000000;
                                    var_v0_11->unk1C = 0xFF000000;
                                    var_v0_11 += 0x20;
                                    var_v0_11->unk0 = 0xFF000000;
                                    var_v0_11->unk4 = 0xFF000000;
                                } while (var_v0_11 != ((var_t9_4 + spB8) - 0x20));
                                var_v0_11->unk1C = 0xFF000000;
                                var_v0_11->unk18 = 0xFF000000;
                                var_v0_11->unk14 = 0xFF000000;
                                var_v0_11->unk10 = 0xFF000000;
                                var_v0_11->unkC = 0xFF000000;
                                var_v0_11->unk8 = 0xFF000000;
                            } else {
                                var_v0_11->unk1C = 0xFF000000;
                                var_v0_11->unk18 = 0xFF000000;
                                var_v0_11->unk14 = 0xFF000000;
                                var_v0_11->unk10 = 0xFF000000;
                                var_v0_11->unkC = 0xFF000000;
                                var_v0_11->unk8 = 0xFF000000;
                                var_v0_11->unk4 = 0xFF000000;
                                var_v0_11->unk0 = 0xFF000000;
                            }
                        }
                        if (temp_a1_5 >= 0) {
                            temp_s4 = temp_a1_5 + 1;
                            var_v1_9 = temp_s4 & 7;
                            var_at_8 = var_s0_5 + spB8;
                            if (var_v1_9 != 0) {
                                do {
                                    var_v1_9 -= 1;
                                    var_at_8 += 4;
                                    var_at_8->unk-4 = 0xFF000000;
                                } while (var_v1_9 != 0);
                            }
                            temp_v1_6 = temp_s4 >> 3;
                            var_v0_12 = var_at_8;
                            if (temp_v1_6 != 0) {
                                if (temp_v1_6 >= 2) {
                                    var_v0_12->unk4 = 0xFF000000;
                                    var_v0_12->unk0 = 0xFF000000;
                                    do {
                                        var_v0_12->unk8 = 0xFF000000;
                                        var_v0_12->unkC = 0xFF000000;
                                        var_v0_12->unk10 = 0xFF000000;
                                        var_v0_12->unk14 = 0xFF000000;
                                        var_v0_12->unk18 = 0xFF000000;
                                        var_v0_12->unk1C = 0xFF000000;
                                        var_v0_12 += 0x20;
                                        var_v0_12->unk0 = 0xFF000000;
                                        var_v0_12->unk4 = 0xFF000000;
                                    } while (var_v0_12 != ((((var_ra_5 + (temp_s4 + temp_a2_3)) * 4) + spB8) - 0x20));
                                    var_v0_12->unk1C = 0xFF000000;
                                    var_v0_12->unk18 = 0xFF000000;
                                    var_v0_12->unk14 = 0xFF000000;
                                    var_v0_12->unk10 = 0xFF000000;
                                    var_v0_12->unkC = 0xFF000000;
                                    var_v0_12->unk8 = 0xFF000000;
                                } else {
                                    var_v0_12->unk1C = 0xFF000000;
                                    var_v0_12->unk18 = 0xFF000000;
                                    var_v0_12->unk14 = 0xFF000000;
                                    var_v0_12->unk10 = 0xFF000000;
                                    var_v0_12->unkC = 0xFF000000;
                                    var_v0_12->unk8 = 0xFF000000;
                                    var_v0_12->unk4 = 0xFF000000;
                                    var_v0_12->unk0 = 0xFF000000;
                                }
                            }
                        }
                        var_s1_5 += spB0 * 4;
                        var_s2_2 += 1;
                        var_t9_4 += spB0 * 4;
                        var_s0_5 += spB0 * 4;
                        var_ra_5 += spB0;
                        if (var_s2_2 != arg5) {
                            goto loop_101;
                        }
                        var_s0 = sp118;
                        var_s1 = sp120;
                        var_s5 = sp128;
                        var_ra = sp130;
                        var_s4 = sp138;
                        var_s7 = sp140;
                        var_s2 = sp148;
                        var_s8 = sp150;
                        var_s3 = sp158;
                        var_v1_8 = spC0->unk8;
                    }
                    sp130 = var_ra;
                    sp4 = var_v1_8;
                }
                sp130 = var_ra;
                spC0->unk154(&sp8, sp, 0, temp_a3);
                spC0->unk154(&sp18, NULL, 0);
                if (sp98 > 0) {
                    sp88 = arg5;
                    sp158 = var_s3;
                    sp150 = var_s8;
                    sp148 = var_s2;
                    sp140 = var_s7;
                    sp138 = var_s4;
                    sp128 = var_s5;
                    sp120 = var_s1;
                    sp118 = var_s0;
                    spE0 = (s64) arg_sp4;
                    if (spD8 > 0) {
                        sp88 = arg5;
                        sp158 = var_s3;
                        sp150 = var_s8;
                        sp148 = var_s2;
                        sp140 = var_s7;
                        sp138 = var_s4;
                        sp120 = var_s1;
                        sp118 = var_s0;
                        var_s5_2 = 0;
                        spF0 = spE0 & 0x04000000;
                        sp108 = sp80 * 4;
                        spE8 = spE0 & 0x08000000;
                        spF8 = spE0 & 0x02000000;
                        sp100 = spE0 & 0x01000000;
                        sp110 = spE0 & 0x800000;
loop_36:
                        var_s2_3 = 0;
                        var_s3_2 = 0;
                        var_s1_6 = 0;
                        var_s4_2 = 0;
                        var_s0_6 = sp90;
loop_41:
                        if (*var_s0_6 == var_s5_2) {
                            temp_a2_4 = var_s1_6 + spD0;
                            temp_at_3 = temp_a2_4->unk8;
                            if (temp_at_3 != NULL) {
                                if (temp_at_3->unk4 == 0) {

                                } else {
                                    goto block_39;
                                }
                            } else {
block_39:
                                if (0 == 0) {
                                    spC0->unk164(&sp18, &sp8, temp_a2_4);
                                    var_v0_13 = 0;
                                    if (sp20 != NULL) {
                                        var_v0_13 = 0;
                                        if (sp20->unk4 == 0) {
                                            var_v0_13 = 1;
                                        }
                                    }
                                    if (var_v0_13 == 0) {
                                        if (sp20 != NULL) {
                                            var_v1_10 = sp20->unk4;
                                        } else {
                                            var_v1_10 = 1;
                                        }
                                        var_s8_2 = var_v1_10;
                                        var_s7_2 = (sp20 == NULL) ? &sp18 : (sp20 + 8);
                                        if (var_v1_10 != 0) {
loop_57:
                                            temp_at_4 = (((var_s7_2->unk2 - spA8) * spB0 * 4) + spB8 + (var_s7_2->unk0 * 4)) - sp108;
                                            temp_t8 = *(spA0->unk30 + var_s3_2);
                                            temp_v1_7 = *(spC0->unk1B4 + (rrmScreenPrivateIndex * 4));
                                            if (((sp110 == 0) || ((temp_t8 - spC8) != -1)) && ((sp100 == 0) || ((temp_t8 - spC8) != 0)) && ((spF8 == 0) || ((temp_t8 - spC8) != 1)) && ((spF0 == 0) || ((temp_t8 - spC8) != 2)) && ((spE8 == 0) || ((temp_t8 - spC8) != 3))) {
                                                var_s8_2 -= 1;
                                                if (var_s2_3 >= (u32) *temp_v1_7) {
                                                    goto block_68;
                                                }
                                                var_s6 = (var_s4_2 + temp_v1_7)->unk9C;
                                                if (var_s6 != NULL) {
                                                    var_v1_11 = var_s6->unk84;
                                                } else {
block_68:
                                                    temp_t9_7 = *(*temp_gp->unk-7400 + (spC0->unk0 * 4));
                                                    var_s6 = temp_t9_7;
loop_69:
                                                    var_v1_11 = var_s6->unk84;
                                                    if ((*(var_v1_11 + (temp_gp->unk-30F8 * 4)))->unk4 != var_s2_3) {
                                                        temp_v1_8 = var_s6->unk24;
                                                        if (temp_v1_8 != NULL) {
                                                            var_s6 = temp_v1_8;
                                                            goto loop_69;
                                                        }
                                                        var_v1_12 = var_s6->unk1C;
                                                        if (var_v1_12 != NULL) {
                                                            goto block_74;
                                                        }
                                                        if (temp_t9_7 != var_s6) {
loop_78:
                                                            var_s6 = var_s6->unk18;
                                                            var_v1_12 = var_s6->unk1C;
                                                            if (var_v1_12 == NULL) {
                                                                if (temp_t9_7 == var_s6) {
                                                                    goto block_80;
                                                                }
                                                                goto loop_78;
                                                            }
block_74:
                                                            if (temp_t9_7 != var_s6) {
                                                                var_s6 = var_v1_12;
                                                                goto loop_69;
                                                            }
                                                            goto block_80;
                                                        }
block_80:
                                                        sp160 = temp_at_4;
                                                        temp_gp->unk-74EC(&sub_5e4f0000 + 0x4960, var_s2_3);
                                                        var_v1_11 = var_s6->unk84;
                                                    }
                                                }
                                                temp_v0 = (dbcWindowPrivateIndex * 4) + var_v1_11;
                                                temp_v0->unk0 = (s8) temp_v0->unk2;
                                                temp_a2_5 = var_s7_2;
                                                var_s7_2 += 8;
                                                **(spC0->unk1B4 + (temp_gp->unk-3854 * 4))(var_s6, var_s2_3, temp_a2_5, spB0, temp_at_4, spE0);
                                            } else {
                                                var_s8_2 -= 1;
                                                var_s7_2 -= 8;
                                            }
                                            if (var_s8_2 != 0) {
                                                goto loop_57;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        var_s0_6 += 4;
                        var_s2_3 += 1;
                        var_s3_2 += 4;
                        var_s1_6 += 0xC;
                        var_s4_2 += 0x24;
                        if (var_s2_3 != spD8) {
                            goto loop_41;
                        }
                        var_s5_2 += 1;
                        if (var_s5_2 != sp98) {
                            goto loop_36;
                        }
                    }
                } else {
                    sp88 = arg5;
                    sp158 = var_s3;
                    sp150 = var_s8;
                    sp148 = var_s2;
                    sp140 = var_s7;
                    sp138 = var_s4;
                    sp128 = var_s5;
                    sp120 = var_s1;
                    sp118 = var_s0;
                    spE0 = (s64) arg_sp4;
                }
                if (spE0 & 4) {
                    temp_gp->unk-726C(&sp28, &sp2C);
                    temp_v0_2 = temp_gp->unk-7268();
                    temp_t8_2 = temp_v0_2->unk0;
                    temp_s1 = sp2C - temp_t8_2->unkE;
                    temp_a5_4 = sp28 - temp_t8_2->unkC;
                    temp_ra_3 = (temp_t8_2->unkA + temp_s1) - 1;
                    temp_t8_3 = (temp_t8_2->unk8 + temp_a5_4) - 1;
                    if ((sp6 >= temp_s1) && (temp_ra_3 >= sp2) && (sp4 >= temp_a5_4) && (temp_t8_3 >= sp0)) {
                        temp_s2 = (sp2 < temp_s1) ? temp_s1 : sp2;
                        temp_a2_6 = temp_ra_3 + 1;
                        var_v1_13 = temp_a2_6 < sp6;
                        if (temp_s2 < ((var_v1_13 != 0) ? temp_a2_6 : sp6)) {
                            var_a4 = temp_s2;
                            var_s4_3 = temp_s2 - temp_s1;
                            temp_s0 = temp_t8_3 + 1;
                            var_s8_3 = (temp_s2 - spA8) * spB0;
                            var_ra_6 = temp_s0 < sp4;
loop_191:
                            temp_s1_2 = (sp0 < temp_a5_4) ? temp_a5_4 : sp0;
                            var_t8 = temp_s1_2;
                            if (temp_s1_2 < ((var_ra_6 != 0) ? temp_s0 : sp4)) {
                                var_at_9 = temp_s1_2 - temp_a5_4;
                                var_v1_14 = ((temp_s1_2 - sp80) + var_s8_3) * 4;
loop_196:
                                temp_s3_4 = temp_v0_2->unk0;
                                temp_t1 = var_at_9 >> 0x1F;
                                temp_s2_2 = ((s32) ((var_at_9 >= 0) ? var_at_9 : (var_at_9 + 7)) >> 3) + (var_s4_3 * (((s32) (temp_s3_4->unk8 + 0x1F) >> 5) * 4));
                                temp_t1_2 = var_at_9 >> 0x1F;
                                temp_s1_3 = 0x80 >> (((((var_at_9 ^ temp_t1) - temp_t1) & 7) ^ temp_t1_2) - temp_t1_2);
                                var_t3 = sp4;
                                if (*(temp_s3_4->unk4 + temp_s2_2) & temp_s1_3) {
                                    *(var_v1_14 + spB8) = (*(temp_s3_4->unk0 + temp_s2_2) & temp_s1_3) ? ((temp_v0_2->unk6 & 0xFF00) | ((s32) (temp_v0_2->unk4 & 0xFF00) >> 8) | ((temp_v0_2->unk8 & 0xFF00) << 8)) : ((temp_v0_2->unkC & 0xFF00) | ((s32) (temp_v0_2->unkA & 0xFF00) >> 8) | ((temp_v0_2->unkE & 0xFF00) << 8));
                                    var_ra_6 = temp_s0 < sp4;
                                    var_t3 = sp4;
                                }
                                var_t8 += 1;
                                var_at_9 += 1;
                                var_v1_14 += 4;
                                if (var_t8 < ((var_ra_6 != 0) ? temp_s0 : var_t3)) {
                                    goto loop_196;
                                }
                                var_v1_13 = temp_a2_6 < sp6;
                            }
                            var_a4 += 1;
                            var_s4_3 += 1;
                            var_s8_3 += spB0;
                            if (var_a4 < ((var_v1_13 != 0) ? temp_a2_6 : sp6)) {
                                goto loop_191;
                            }
                        }
                    }
                }
                spC0->unk160(&sp18);
                spC0->unk160(&sp8);
                if (sp60 != 0) {
                    temp_gp->unk-7264(sp58, sp68 * sp88 * 4, spB8, sp88);
                    temp_gp->unk-75A0(spB8);
                }
                return 0;
            }
            return 0;
        }
        /* Duplicate return node #94. Try simplifying control flow for better match */
        return 0x11;
    }
    return 0x11;
}

void nfbStippledFillRects(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s64 sp78;
    s64 sp70;
    s64 sp10;
    s64 sp8;
    s16 sp6;
    s16 sp4;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a1;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v1;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_at;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s5;
    u16 temp_s7;
    u8 temp_s8;
    void *temp_a5;
    void *temp_gp;
    void *temp_s1;
    void *temp_s4;
    void *var_s0;

    temp_s1 = arg0->unk24;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x52BD4;
    temp_s7 = temp_s1->unkC;
    temp_a5 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s4 = **(arg1->unk84 + (temp_gp->unk-30F8 * 4));
    temp_s8 = temp_a5->unk48;
    temp_s3 = temp_a5->unk4C;
    temp_s5 = temp_a5->unk40;
    if (arg3 != 0) {
        sp78 = (s64) temp_s1->unkE;
        sp10 = (s64) temp_a5;
        var_s0 = arg2;
        sp8 = (arg3 * 8) + arg2;
loop_4:
        temp_v1 = var_s0->unk0;
        temp_v0 = var_s0->unk2;
        temp_hi = (s32) (temp_v1 - sp10->unk58) % (s32) temp_s7;
        temp_hi_2 = (s32) (temp_v0 - sp10->unk5A) % sp78;
        temp_a2 = (temp_hi >= 0) ? temp_hi : (temp_s7 + temp_hi);
        temp_a1 = var_s0->unk4;
        temp_v1_2 = (temp_s7 + temp_v1) - temp_a2;
        sp4 = (temp_v1_2 >= temp_a1) ? temp_a1 : temp_v1_2;
        temp_a0 = var_s0->unk6;
        temp_at = (temp_hi_2 >= 0) ? temp_hi_2 : (sp78 + temp_hi_2);
        temp_v0_2 = (sp78 + temp_v0) - temp_at;
        sp6 = (temp_v0_2 >= temp_a0) ? temp_a0 : temp_v0_2;
        temp_a3 = temp_s1->unk1C;
        M2C_TRAP_IF(temp_s7 == 0);
        M2C_TRAP_IF(sp78 == 0);
        temp_s2 = temp_s1->unk20 + (temp_a3 * temp_at);
        sp70 = (s64) temp_a2;
        temp_s4->unkC(sp, temp_s2, temp_a2, temp_a3, temp_s5, temp_s8, temp_s3, arg1, temp_v1, temp_v0);
        if (sp4 < var_s0->unk4) {
            do {
                temp_v0_3 = var_s0->unk4;
                sp4 = (temp_v0_3 >= (temp_s7 + sp4)) ? (temp_s7 + sp4) : temp_v0_3;
                temp_s4->unkC(sp, temp_s2, 0, temp_s1->unk1C, temp_s5, temp_s8, temp_s3, arg1, sp4);
            } while (sp4 < var_s0->unk4);
        }
        temp_s2_2 = temp_s1->unk20;
        if (sp6 < var_s0->unk6) {
loop_10:
            temp_v1_3 = var_s0->unk6;
            sp6 = (temp_v1_3 >= (sp78 + sp6)) ? (sp78 + sp6) : temp_v1_3;
            temp_v0_4 = var_s0->unk0;
            temp_a0_2 = var_s0->unk4;
            temp_v0_5 = (temp_s7 + temp_v0_4) - sp70;
            sp4 = (temp_v0_5 >= temp_a0_2) ? temp_a0_2 : temp_v0_5;
            temp_s4->unkC(sp, temp_s2_2, (s32) sp70, temp_s1->unk1C, temp_s5, temp_s8, temp_s3, arg1, temp_v0_4, sp6);
            if (sp4 < var_s0->unk4) {
                do {
                    temp_v0_6 = var_s0->unk4;
                    sp4 = (temp_v0_6 >= (temp_s7 + sp4)) ? (temp_s7 + sp4) : temp_v0_6;
                    temp_s4->unkC(sp, temp_s2_2, 0, temp_s1->unk1C, temp_s5, temp_s8, temp_s3, arg1, sp4);
                } while (sp4 < var_s0->unk4);
            }
            if (sp6 < var_s0->unk6) {
                goto loop_10;
            }
        }
        var_s0 += 8;
        if (var_s0 != sp8) {
            goto loop_4;
        }
    }
}

void nfbOpStippledFillRects(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp20;
    s64 sp18;
    s16 sp16;
    s16 sp14;
    s16 sp12;
    s16 sp10;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_s8;
    u16 temp_s3;
    void *temp_a6;
    void *temp_gp;
    void *temp_s1;
    void *temp_s4;
    void *var_s0;

    temp_s1 = arg0->unk24;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x52890;
    temp_s3 = temp_s1->unkC;
    temp_a6 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s4 = **(arg1->unk84 + (temp_gp->unk-30F8 * 4));
    temp_s7 = temp_a6->unk4C;
    temp_s8 = temp_a6->unk44;
    temp_s5 = temp_a6->unk40;
    if (arg3 != 0) {
        sp90 = (s64) temp_a6->unk48;
        sp88 = (s64) temp_s1->unkE;
        sp20 = (s64) temp_a6;
        var_s0 = arg2;
        sp18 = (arg3 * 8) + arg2;
loop_4:
        temp_v0 = var_s0->unk0;
        sp10 = temp_v0;
        temp_at = var_s0->unk2;
        sp12 = temp_at;
        temp_hi = (s32) (temp_v0 - sp20->unk58) % (s32) temp_s3;
        temp_hi_2 = (s32) (temp_at - sp20->unk5A) % sp88;
        temp_a2 = (temp_hi >= 0) ? temp_hi : (temp_s3 + temp_hi);
        temp_a0 = var_s0->unk4;
        temp_v0_2 = (temp_s3 + temp_v0) - temp_a2;
        sp14 = (temp_v0_2 >= temp_a0) ? temp_a0 : temp_v0_2;
        temp_v1 = var_s0->unk6;
        temp_ra = (temp_hi_2 >= 0) ? temp_hi_2 : (sp88 + temp_hi_2);
        temp_at_2 = (sp88 + temp_at) - temp_ra;
        sp16 = (temp_at_2 >= temp_v1) ? temp_v1 : temp_at_2;
        temp_a3 = temp_s1->unk1C;
        M2C_TRAP_IF(sp88 == 0);
        M2C_TRAP_IF(temp_s3 == 0);
        temp_s2 = temp_s1->unk20 + (temp_a3 * temp_ra);
        sp80 = (s64) temp_a2;
        temp_s4->unk10(&sp10, temp_s2, temp_a2, temp_a3, temp_s5, temp_s8, sp90, temp_s7, arg1);
        if (sp14 < var_s0->unk4) {
            do {
                sp10 = sp14;
                temp_v0_3 = var_s0->unk4;
                sp14 = (temp_v0_3 >= (temp_s3 + sp14)) ? (temp_s3 + sp14) : temp_v0_3;
                temp_s4->unk10(&sp10, temp_s2, 0, temp_s1->unk1C, temp_s5, temp_s8, sp90, temp_s7, arg1);
            } while (sp14 < var_s0->unk4);
        }
        temp_s2_2 = temp_s1->unk20;
        if (sp16 < var_s0->unk6) {
loop_9:
            sp12 = sp16;
            temp_v1_2 = var_s0->unk6;
            sp16 = (temp_v1_2 >= (sp88 + sp16)) ? (sp88 + sp16) : temp_v1_2;
            temp_v0_4 = var_s0->unk0;
            sp10 = temp_v0_4;
            temp_a0_2 = var_s0->unk4;
            temp_v0_5 = (temp_s3 + temp_v0_4) - sp80;
            sp14 = (temp_v0_5 >= temp_a0_2) ? temp_a0_2 : temp_v0_5;
            temp_s4->unk10(&sp10, temp_s2_2, (s32) sp80, temp_s1->unk1C, temp_s5, temp_s8, sp90, temp_s7, arg1);
            if (sp14 < var_s0->unk4) {
                do {
                    sp10 = sp14;
                    temp_v0_6 = var_s0->unk4;
                    sp14 = (temp_v0_6 >= (temp_s3 + sp14)) ? (temp_s3 + sp14) : temp_v0_6;
                    temp_s4->unk10(&sp10, temp_s2_2, 0, temp_s1->unk1C, temp_s5, temp_s8, sp90, temp_s7, arg1);
                } while (sp14 < var_s0->unk4);
            }
            if (sp16 < var_s0->unk6) {
                goto loop_9;
            }
        }
        var_s0 += 8;
        if (var_s0 != sp18) {
            goto loop_4;
        }
    }
}

void nfbTiledFillRects(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_a5;
    void *temp_a6;
    void *temp_gp;

    temp_a5 = arg0->unk20;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x52548;
    temp_a6 = *(arg0->unk4C + (temp_gp->unk-30F4 * 4));
    (**(arg1->unk84 + (temp_gp->unk-30F8 * 4)))->unk1C(arg2, arg3, temp_a5->unk20, temp_a5->unk1C, temp_a5->unkC, temp_a5->unkE, temp_a6 + 0x58, temp_a6->unk48, temp_a6->unk4C, arg1);
}

void nfbAbort(void) {
    (M2C_ERROR(/* Read from unset register $t9 */) + 0x4D1B0)->unk-7270();
}

void nfbSaveScreen(void *arg0, s32 arg1) {
    arg0->unk74->unkC0(arg1 == 0, arg0);
}

void nfbSetSpans(void *arg0, void *arg1, s32 arg2, u32 arg3, s32 *arg4, s32 arg5, s32 arg6) {
    s64 sp80;
    s64 sp78;
    u64 sp70;
    s64 sp40;
    s64 sp38;
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    s16 temp_a2_2;
    s16 temp_a2_4;
    s16 temp_a2_6;
    s16 temp_a6;
    s16 temp_a6_2;
    s16 temp_a6_3;
    s16 temp_a6_4;
    s16 temp_a6_5;
    s16 temp_a6_6;
    s16 temp_t0_2;
    s16 temp_t0_3;
    s16 temp_t0_4;
    s16 temp_t0_5;
    s16 temp_t1_2;
    s16 temp_t1_3;
    s32 *var_s4;
    s32 *var_s4_2;
    s32 temp_a2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_s5;
    s32 temp_v1_3;
    s32 var_a0;
    s32 var_s1;
    u32 temp_s8;
    u32 var_s3;
    u32 var_s3_2;
    u64 temp_a2_5;
    u64 var_s2_2;
    void *temp_a2_3;
    void *temp_a2_7;
    void *temp_at;
    void *temp_gp;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_t0;
    void *temp_t1;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_4;
    void *var_s2;
    void *var_s5;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x4D13C;
    temp_v1 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    sp80 = arg0->unkA + arg0->unkE;
    temp_s5 = temp_v1->unk34;
    temp_at = temp_v1->unk8;
    sp70 = (u64) temp_at;
    temp_t1 = temp_at->unk8;
    var_s1 = arg2;
    sp38 = (s64) temp_v1->unk30;
    var_a0 = 1;
    sp40 = (s64) (**(arg0->unk84 + (temp_gp->unk-30F8 * 4)))->unk8;
    temp_t0 = (temp_t1 == NULL) ? temp_at : (temp_t1 + 8);
    if (temp_t1 != NULL) {
        var_a0 = temp_t1->unk4;
    }
    temp_s8 = (arg5 * 4) + arg3;
    temp_a2 = arg3 < temp_s8;
    if (arg6 != 0) {
        sp78 = (s64) temp_s5;
        var_s3 = arg3;
        var_s4 = arg4;
        var_s5 = temp_t0;
        temp_s0 = temp_t0 + (var_a0 * 8);
        if (temp_a2 != 0) {
loop_7:
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s4) */);
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($s3) */);
            var_s2 = var_s5;
            if (var_s3->unk2 < sp80) {
                if ((u32) var_s5 < (u32) temp_s0) {
loop_10:
                    temp_a2_2 = var_s3->unk2;
                    if (temp_a2_2 >= var_s2->unk2) {
                        if (temp_a2_2 >= var_s2->unk6) {
                            var_s2 += 8;
                            var_s5 = var_s2;
                            goto block_13;
                        }
                        temp_a6 = var_s3->unk0;
                        temp_t0_2 = var_s2->unk0;
                        if ((temp_a6 + *var_s4) >= temp_t0_2) {
                            if (temp_a6 >= var_s2->unk4) {
                                var_s2 += 8;
                                goto block_13;
                            }
                            temp_t0_3 = (temp_a6 >= temp_t0_2) ? temp_a6 : temp_t0_2;
                            sp0 = temp_t0_3;
                            temp_t1_2 = var_s2->unk4;
                            temp_a6_2 = var_s3->unk0 + *var_s4;
                            temp_a7 = temp_a6_2 < temp_t1_2;
                            temp_a6_3 = (temp_a7 == 0) ? temp_t1_2 : temp_a6_2;
                            sp4 = temp_a6_3;
                            sp2 = var_s3->unk2;
                            sp6 = var_s3->unk2 + 1;
                            temp_a2_3 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                            ((? (*)(void *, s32, ?, s64, s64, void *, s16, s32)) sp40)(sp, ((s32) ((temp_t0_3 - var_s3->unk0) << temp_a2_3->unk8) >> temp_a2_3->unk4) + var_s1, 0, sp38, sp78, arg0, temp_a6_3, temp_a7);
                            var_s2 += 8;
                            if (var_s2->unk4 < (var_s3->unk0 + *var_s4)) {
block_13:
                                if ((u32) var_s2 >= (u32) temp_s0) {

                                } else {
                                    goto loop_10;
                                }
                            }
                        }
                    }
                }
                temp_v1_2 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                var_s3 += 4;
                var_s4 += 4;
                var_s1 += ((s32) (temp_v1_2->unk0 + *var_s4) >> temp_v1_2->unk4) * 4;
                if (var_s3 < temp_s8) {
                    goto loop_7;
                }
            }
        }
    } else {
        var_s4_2 = arg4;
        var_s3_2 = arg3;
        temp_s0_2 = temp_t0 + (var_a0 * 8);
        if (temp_a2 != 0) {
loop_27:
            temp_a2_4 = var_s3_2->unk2;
            if (temp_a2_4 >= 0) {
                if (temp_a2_4 < sp80) {
                    temp_v1_3 = sp70->unk8;
                    temp_a2_5 = (temp_v1_3 == 0) ? sp70 : (temp_v1_3 + 8);
                    var_s2_2 = temp_a2_5;
                    if (temp_a2_5 < (u32) temp_s0_2) {
loop_33:
                        temp_a2_6 = var_s3_2->unk2;
                        if (temp_a2_6 >= var_s2_2->unk2) {
                            if (temp_a2_6 < var_s2_2->unk6) {
                                temp_a6_4 = var_s3_2->unk0;
                                temp_t0_4 = var_s2_2->unk0;
                                if (((temp_a6_4 + *var_s4_2) >= temp_t0_4) && (temp_a6_4 < var_s2_2->unk4)) {
                                    temp_t0_5 = (temp_a6_4 >= temp_t0_4) ? temp_a6_4 : temp_t0_4;
                                    sp0 = temp_t0_5;
                                    temp_a6_5 = var_s2_2->unk4;
                                    temp_t1_3 = var_s3_2->unk0 + *var_s4_2;
                                    temp_a7_2 = temp_a6_5 < temp_t1_3;
                                    temp_a6_6 = (temp_a7_2 == 0) ? temp_t1_3 : temp_a6_5;
                                    sp4 = temp_a6_6;
                                    sp2 = var_s3_2->unk2;
                                    sp6 = var_s3_2->unk2 + 1;
                                    temp_a2_7 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
                                    ((? (*)(void *, s32, ?, s64, s32, void *, s16, s32)) sp40)(sp, ((s32) ((temp_t0_5 - var_s3_2->unk0) << temp_a2_7->unk8) >> temp_a2_7->unk4) + var_s1, 0, sp38, temp_s5, arg0, temp_a6_6, temp_a7_2);
                                }
                            }
                            var_s2_2 += 8;
                            if (var_s2_2 < (u32) temp_s0_2) {
                                goto loop_33;
                            }
                        }
                    }
                }
            }
            temp_v1_4 = (arg0->unk2 * 0xC) + &PixmapWidthPaddingInfo;
            var_s3_2 += 4;
            var_s4_2 += 4;
            var_s1 += ((s32) (temp_v1_4->unk0 + *var_s4_2) >> temp_v1_4->unk4) * 4;
            if (var_s3_2 < temp_s8) {
                goto loop_27;
            }
        }
    }
}

/*
Decompilation failure in function nfbShmPutImage:

Unable to determine jump table for jr instruction at rrm.s line 26555.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function nfbShmCreatePixmap:

Unable to determine jump table for jr instruction at rrm.s line 26706.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void nfbStereoFillSpans(void *arg0, void *arg1, s64 arg2, void *arg3, s64 arg4, s64 arg5, s16 arg6, s16 arg7) {
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
    s64 sp8;
    s64 sp0;
    s16 temp_a0;
    s16 temp_a0_10;
    s16 temp_a0_11;
    s16 temp_a0_2;
    s16 temp_a0_4;
    s16 temp_a0_5;
    s16 temp_a0_6;
    s16 temp_a0_7;
    s16 temp_a0_8;
    s16 temp_a0_9;
    s16 temp_a1_2;
    s16 temp_a1_4;
    s16 temp_a1_5;
    s16 temp_a1_7;
    s16 temp_a1_9;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_a2_3;
    s16 temp_a2_4;
    s16 temp_a3;
    s16 temp_a3_4;
    s16 temp_a3_5;
    s16 temp_a4;
    s16 temp_a4_2;
    s16 temp_a4_3;
    s16 temp_a4_4;
    s16 temp_a5_2;
    s16 temp_a5_3;
    s16 temp_a7;
    s16 temp_a7_11;
    s16 temp_a7_3;
    s16 temp_a7_4;
    s16 temp_a7_6;
    s16 temp_a7_7;
    s16 temp_a7_9;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_at_3;
    s16 temp_at_4;
    s16 temp_at_5;
    s16 temp_s0;
    s16 temp_s0_2;
    s16 temp_s0_3;
    s16 temp_s0_4;
    s16 temp_s0_5;
    s16 temp_s0_6;
    s16 temp_s0_7;
    s16 temp_s0_8;
    s16 temp_s2;
    s16 temp_s2_2;
    s16 temp_s3;
    s16 temp_s3_10;
    s16 temp_s3_11;
    s16 temp_s3_12;
    s16 temp_s3_2;
    s16 temp_s3_3;
    s16 temp_s3_4;
    s16 temp_s3_5;
    s16 temp_s3_6;
    s16 temp_s3_7;
    s16 temp_s3_8;
    s16 temp_s3_9;
    s16 temp_s4;
    s16 temp_s4_2;
    s16 temp_s4_3;
    s16 temp_s4_4;
    s16 temp_s6;
    s16 temp_t1;
    s16 temp_t1_2;
    s16 temp_t1_3;
    s16 temp_t1_5;
    s16 temp_t2;
    s16 temp_t2_2;
    s16 temp_t2_3;
    s16 temp_t2_4;
    s16 temp_t3;
    s16 temp_t3_2;
    s16 temp_t3_3;
    s16 temp_t3_4;
    s16 temp_t9;
    s16 temp_t9_2;
    s16 temp_t9_3;
    s16 temp_t9_4;
    s16 temp_t9_5;
    s16 temp_t9_6;
    s16 temp_t9_7;
    s16 temp_t9_8;
    s16 temp_v0;
    s16 temp_v0_10;
    s16 temp_v0_11;
    s16 temp_v0_12;
    s16 temp_v0_13;
    s16 temp_v0_14;
    s16 temp_v0_15;
    s16 temp_v0_16;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 temp_v0_8;
    s16 temp_v0_9;
    s16 temp_v1;
    s16 temp_v1_10;
    s16 temp_v1_11;
    s16 temp_v1_12;
    s16 temp_v1_13;
    s16 temp_v1_14;
    s16 temp_v1_15;
    s16 temp_v1_16;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s16 temp_v1_4;
    s16 temp_v1_5;
    s16 temp_v1_6;
    s16 temp_v1_7;
    s16 temp_v1_8;
    s16 temp_v1_9;
    s16 var_a1;
    s16 var_a1_2;
    s16 var_a1_3;
    s16 var_a1_6;
    s16 var_a6;
    s16 var_a7;
    s16 var_ra_2;
    s16 var_ra_3;
    s16 var_ra_4;
    s16 var_ra_5;
    s16 var_s0_2;
    s16 var_s0_3;
    s16 var_s1_2;
    s16 var_s1_3;
    s16 var_s1_4;
    s16 var_s1_5;
    s16 var_s2_3;
    s16 var_s2_4;
    s16 var_s2_5;
    s16 var_s3_2;
    s16 var_s3_3;
    s16 var_s3_4;
    s16 var_s3_5;
    s16 var_s4_2;
    s16 var_s4_3;
    s16 var_s4_4;
    s16 var_s4_5;
    s16 var_s4_6;
    s16 var_s4_7;
    s16 var_s5_2;
    s16 var_s5_3;
    s16 var_s5_4;
    s16 var_s5_5;
    s16 var_t0_2;
    s16 var_t0_4;
    s16 var_t0_5;
    s16 var_t0_6;
    s16 var_t1;
    s16 var_t1_3;
    s16 var_t1_5;
    s16 var_t1_6;
    s16 var_t1_7;
    s16 var_t1_8;
    s16 var_t2;
    s16 var_t2_2;
    s16 var_t2_4;
    s16 var_t3;
    s16 var_t3_2;
    s16 var_t3_3;
    s16 var_t3_4;
    s16 var_t3_5;
    s16 var_t3_6;
    s16 var_t3_7;
    s16 var_t8;
    s16 var_t8_2;
    s16 var_t8_3;
    s16 var_t8_4;
    s16 var_t9;
    s16 var_t9_2;
    s16 var_t9_3;
    s16 var_t9_4;
    s16 var_v0;
    s16 var_v0_2;
    s16 var_v0_3;
    s16 var_v0_4;
    s16 var_v1;
    s16 var_v1_2;
    s16 var_v1_3;
    s16 var_v1_4;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a1_8;
    s32 temp_a3_3;
    s32 temp_a5;
    s32 temp_a7_2;
    s32 var_a1_4;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a2_5;
    s64 var_ra;
    s64 var_s0;
    s64 var_s1;
    s64 var_s2;
    s64 var_s4;
    s64 var_s5;
    s64 var_s6;
    u16 temp_s7;
    void *temp_a0_3;
    void *temp_a1_6;
    void *temp_a3_2;
    void *temp_a6;
    void *temp_a7_10;
    void *temp_a7_5;
    void *temp_a7_8;
    void *temp_s8;
    void *temp_t1_4;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;
    void *var_a0_4;
    void *var_a0_5;
    void *var_a1_5;
    void *var_a2_2;
    void *var_a2_4;
    void *var_a2_6;
    void *var_a2_7;
    void *var_a3;
    void *var_a3_2;
    void *var_a3_3;
    void *var_a3_4;
    void *var_a4;
    void *var_a4_2;
    void *var_a4_3;
    void *var_a4_4;
    void *var_a5;
    void *var_a6_2;
    void *var_a6_3;
    void *var_s2_2;
    void *var_s3;
    void *var_t0;
    void *var_t0_3;
    void *var_t1_2;
    void *var_t1_4;
    void *var_t2_3;
    void *var_t3_8;

    var_s0 = saved_reg_s0;
    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s5 = saved_reg_s5;
    var_ra = saved_reg_ra;
    var_a6 = arg6;
    var_a7 = arg7;
    sp8 = (s64) arg1->unk48;
    sp40 = arg4;
    sp58 = (s64) arg1;
    temp_s8 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x4C708)->unk-30F4 * 4));
    temp_s7 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (s32) temp_s8->unk5C;
    temp_s8->unk68 = 1;
    var_s3 = arg3;
    var_s6 = arg2;
    sp48 = arg5;
    sp50 = (s64) arg0;
    var_s4 = arg2 >= 1;
    temp_a1 = (var_s6 * 4) + var_s3;
    sp0 = (s64) temp_s8->unk8;
    temp_a5 = var_s6 >> 3;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s8->unk8 = (s32) temp_s8->unk64;
        if (var_s4 != 0) {
            var_a2 = var_s6 & 7;
            var_t0 = var_s3;
            if (var_a2 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($t0) */);
                    temp_a7 = var_t0->unk2;
                    var_a2 -= 1;
                    var_t0 += 4;
                    var_a7 = temp_a7 + temp_s7;
                    var_t0->unk-2 = var_a7;
                } while (var_a2 != 0);
            }
            var_a2_2 = var_t0;
            if (temp_a5 != 0) {
                if (temp_a5 >= 3) {
                    sp98 = var_s6;
                    sp90 = (s64) var_s3;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    var_t8 = var_a2_2->unk2;
                    var_ra_2 = var_a2_2->unk6;
                    var_t1 = var_a2_2->unkE;
                    var_t9 = var_a2_2->unk16;
                    sp88 = var_s4;
                    var_a3 = var_a2_2 + 0x20;
                    temp_a7_2 = temp_a1 - 0x40;
                    var_s5_2 = var_a3->unk16;
                    var_a4 = var_a3 + 0x20;
                    var_t3 = var_a3->unk1A;
                    var_v0 = var_a2_2->unkA + temp_s7;
                    var_v1 = var_a2_2->unk12 + temp_s7;
                    var_s4_2 = var_a3->unk1E;
                    var_a1 = var_a2_2->unk1A + temp_s7;
                    var_s3_2 = var_a2_2->unk1E + temp_s7;
loop_7:
                    var_a2_2->unkA = var_v0;
                    var_a2_2->unk12 = var_v1;
                    var_t0_2 = var_a3->unkE;
                    temp_a0 = var_a3->unk6;
                    temp_s0 = var_a3->unk2;
                    var_a2_2->unk1A = var_a1;
                    var_a2_2->unk1E = var_s3_2;
                    temp_s2 = var_a4->unk1E;
                    var_s1_2 = var_a4->unk1A;
                    temp_s3 = var_s4_2 + temp_s7;
                    temp_a6 = var_a4 + 0x20;
                    temp_a1_2 = var_a4->unk16;
                    var_a2_2->unk16 = (s16) (var_t9 + temp_s7);
                    temp_t9 = var_t3 + temp_s7;
                    var_a2_2->unkE = (s16) (var_t1 + temp_s7);
                    temp_v1 = var_a3->unk12 + temp_s7;
                    var_a2_2->unk6 = (s16) (var_ra_2 + temp_s7);
                    temp_v0 = var_a3->unkA + temp_s7;
                    var_a2_2->unk2 = (s16) (var_t8 + temp_s7);
                    if (var_a3 != temp_a7_2) {
                        var_a3->unkA = temp_v0;
                        var_a3->unk12 = temp_v1;
                        temp_t1 = var_a4->unkE;
                        var_ra_2 = var_a4->unk6;
                        var_t8 = var_a4->unk2;
                        var_a3->unk1A = temp_t9;
                        var_a3->unk1E = temp_s3;
                        temp_s4 = temp_a6->unk1E;
                        temp_t3 = temp_a6->unk1A;
                        temp_s3_2 = temp_s2 + temp_s7;
                        var_a2_2 = temp_a6 + 0x20;
                        temp_t2 = temp_a6->unk16;
                        var_a3->unk16 = (s16) (var_s5_2 + temp_s7);
                        temp_t9_2 = var_s1_2 + temp_s7;
                        var_a3->unkE = (s16) (var_t0_2 + temp_s7);
                        temp_v1_2 = var_a4->unk12 + temp_s7;
                        var_a3->unk6 = (s16) (temp_a0 + temp_s7);
                        temp_v0_2 = var_a4->unkA + temp_s7;
                        var_a3->unk2 = (s16) (temp_s0 + temp_s7);
                        if (var_a4 != temp_a7_2) {
                            var_a4->unkA = temp_v0_2;
                            var_a4->unk12 = temp_v1_2;
                            var_t0_2 = temp_a6->unkE;
                            temp_a0_2 = temp_a6->unk6;
                            temp_s0_2 = temp_a6->unk2;
                            var_a4->unk1A = temp_t9_2;
                            var_a4->unk1E = temp_s3_2;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            temp_s2_2 = var_a2_2->unk1E;
                            var_s1_2 = var_a2_2->unk1A;
                            temp_s3_3 = temp_s4 + temp_s7;
                            var_a3 = var_a2_2 + 0x20;
                            var_t9 = var_a2_2->unk16;
                            var_a4->unk16 = (s16) (temp_a1_2 + temp_s7);
                            var_a1 = temp_t3 + temp_s7;
                            var_a4->unkE = (s16) (temp_t1 + temp_s7);
                            temp_v1_3 = temp_a6->unk12 + temp_s7;
                            var_a4->unk6 = (s16) (var_ra_2 + temp_s7);
                            temp_v0_3 = temp_a6->unkA + temp_s7;
                            var_a4->unk2 = (s16) (var_t8 + temp_s7);
                            if (temp_a6 != temp_a7_2) {
                                temp_a6->unkA = temp_v0_3;
                                temp_a6->unk12 = temp_v1_3;
                                var_t1 = var_a2_2->unkE;
                                var_ra_2 = var_a2_2->unk6;
                                var_t8 = var_a2_2->unk2;
                                temp_a6->unk1A = var_a1;
                                temp_a6->unk1E = temp_s3_3;
                                var_s4_2 = var_a3->unk1E;
                                var_t3 = var_a3->unk1A;
                                var_s3_2 = temp_s2_2 + temp_s7;
                                var_a4 = var_a3 + 0x20;
                                var_s5_2 = var_a3->unk16;
                                temp_a6->unk16 = (s16) (temp_t2 + temp_s7);
                                var_a1 = var_s1_2 + temp_s7;
                                temp_a6->unkE = (s16) (var_t0_2 + temp_s7);
                                var_v1 = var_a2_2->unk12 + temp_s7;
                                temp_a6->unk6 = (s16) (temp_a0_2 + temp_s7);
                                var_v0 = var_a2_2->unkA + temp_s7;
                                temp_a6->unk2 = (s16) (temp_s0_2 + temp_s7);
                                if (var_a2_2 == temp_a7_2) {
                                    var_s2_2 = var_a2_2;
                                    var_s0_2 = var_v1;
                                    var_s1_2 = var_t3;
                                    var_t3_2 = var_v0;
                                    var_t2 = var_s4_2;
                                    var_s4 = sp88;
                                    var_a6 = var_s3_2;
                                    var_s3 = (void *) sp90;
                                    var_a0 = var_a3;
                                    var_s6 = sp98;
                                    var_t0_2 = var_t1;
                                    goto block_12;
                                }
                                goto loop_7;
                            }
                            var_t1_2 = var_a2_2;
                            var_t3_2 = temp_v0_3;
                            var_ra_2 = temp_a0_2;
                            var_s5_2 = var_t9;
                            var_t9 = temp_t2;
                            var_t8 = temp_s0_2;
                            var_a6 = temp_s3_3;
                            var_s3 = (void *) sp90;
                            var_s0_2 = temp_v1_3;
                            var_s2_2 = temp_a6;
                            var_s4 = sp88;
                            var_t2 = temp_s2_2;
                            var_s6 = sp98;
                        } else {
                            var_s2_2 = var_a4;
                            var_s0_2 = temp_v1_2;
                            var_s1_2 = temp_t3;
                            var_t3_2 = temp_v0_2;
                            var_t0_2 = temp_t1;
                            var_s5_2 = temp_t2;
                            var_t9 = temp_a1_2;
                            var_s4 = sp88;
                            var_a0 = temp_a6;
                            var_a6 = temp_s3_2;
                            var_s3 = (void *) sp90;
                            var_a1 = temp_t9_2;
                            var_t2 = temp_s4;
                            var_s6 = sp98;
block_12:
                            var_t1_2 = var_a0;
                        }
                    } else {
                        var_t1_2 = var_a4;
                        var_t3_2 = temp_v0;
                        var_ra_2 = temp_a0;
                        var_t9 = var_s5_2;
                        var_s5_2 = temp_a1_2;
                        var_t2 = temp_s2;
                        var_t8 = temp_s0;
                        var_a6 = temp_s3;
                        var_s3 = (void *) sp90;
                        var_s0_2 = temp_v1;
                        var_s2_2 = var_a3;
                        var_s4 = sp88;
                        var_a1 = temp_t9;
                        var_s6 = sp98;
                    }
                    var_s2_2->unk12 = var_s0_2;
                    var_s2_2->unkA = var_t3_2;
                    var_s2_2->unk1A = var_a1;
                    var_s2_2->unk1E = var_a6;
                    var_s2_2->unkE = (s16) (var_t0_2 + temp_s7);
                    var_s2_2->unk16 = (s16) (var_t9 + temp_s7);
                    var_s2_2->unk6 = (s16) (var_ra_2 + temp_s7);
                    var_s2_2->unk2 = (s16) (var_t8 + temp_s7);
                    var_s5 = sp60;
                    var_ra = sp80;
                    var_t1_2->unk1E = (s16) (var_t2 + temp_s7);
                    var_t1_2->unk1A = (s16) (var_s1_2 + temp_s7);
                    var_t1_2->unk16 = (s16) (var_s5_2 + temp_s7);
                    var_s2 = sp78;
                    var_t1_2->unk2 = (s16) (var_t1_2->unk2 + temp_s7);
                    var_a7 = var_t1_2->unk12 + temp_s7;
                    var_t1_2->unk12 = var_a7;
                    var_t1_2->unkA = (s16) (var_t1_2->unkA + temp_s7);
                    var_t1_2->unk6 = (s16) (var_t1_2->unk6 + temp_s7);
                    var_s1 = sp68;
                    var_t1_2->unkE = (s16) (var_t1_2->unkE + temp_s7);
                    var_s0 = sp70;
                } else {
                    var_a0_2 = var_a2_2;
                    do {
                        temp_a4 = var_a0_2->unk1E;
                        temp_a3 = var_a0_2->unk1A;
                        temp_a2 = var_a0_2->unk16;
                        temp_v1_4 = var_a0_2->unk12;
                        temp_v0_4 = var_a0_2->unkE;
                        temp_at = var_a0_2->unkA;
                        temp_a7_3 = var_a0_2->unk6;
                        temp_a5_2 = var_a0_2->unk2;
                        var_a0_2 += 0x20;
                        var_a0_2->unk-2 = (s16) (temp_a4 + temp_s7);
                        var_a0_2->unk-6 = (s16) (temp_a3 + temp_s7);
                        var_a0_2->unk-A = (s16) (temp_a2 + temp_s7);
                        var_a0_2->unk-E = (s16) (temp_v1_4 + temp_s7);
                        var_a0_2->unk-12 = (s16) (temp_v0_4 + temp_s7);
                        var_a0_2->unk-16 = (s16) (temp_at + temp_s7);
                        var_a7 = temp_a7_3 + temp_s7;
                        var_a0_2->unk-1A = var_a7;
                        var_a0_2->unk-1E = (s16) (temp_a5_2 + temp_s7);
                    } while (var_a0_2 != temp_a1);
                }
            }
            sp80 = var_ra;
        }
        sp50->unkA = (s16) (sp50->unkA + temp_s7);
        sp80 = var_ra;
        temp_s8->unk5A = (s16) (temp_s8->unk5A + temp_s7);
        *sp58->unk48(sp50, sp58, var_s6, var_s3, sp40, sp48, var_a6, var_a7);
        temp_a3_2 = (var_s6 * 4) + var_s3;
        temp_s8->unk8 = (s32) temp_s8->unk60;
        if (var_s4 != 0) {
            var_a2_3 = var_s6 & 7;
            temp_a1_3 = var_s6 >> 3;
            var_t0_3 = var_s3;
            if (var_a2_3 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($t0) */);
                    temp_a7_4 = var_t0_3->unk2;
                    var_a2_3 -= 1;
                    var_t0_3 += 4;
                    var_t0_3->unk-2 = (s16) (temp_a7_4 - temp_s7);
                } while (var_a2_3 != 0);
            }
            var_a2_4 = var_t0_3;
            if (temp_a1_3 != 0) {
                var_a0_3 = var_a2_4;
                if (temp_a1_3 >= 3) {
                    sp98 = var_s6;
                    sp78 = var_s2;
                    sp90 = (s64) var_s3;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    sp70 = var_s0;
                    sp68 = var_s1;
                    var_t8_2 = var_a2_4->unk2;
                    var_ra_3 = var_a2_4->unk6;
                    var_t1_3 = var_a2_4->unkE;
                    var_t9_2 = var_a2_4->unk16;
                    temp_a7_5 = temp_a3_2 - 0x40;
                    sp60 = var_s5;
                    temp_a0_3 = var_a2_4 + 0x20;
                    var_s5_3 = temp_a0_3->unk16;
                    var_a4_2 = temp_a0_3 + 0x20;
                    var_a3_2 = temp_a0_3;
                    var_t3_3 = temp_a0_3->unk1A;
                    var_v0_2 = var_a2_4->unkA - temp_s7;
                    var_v1_2 = var_a2_4->unk12 - temp_s7;
                    var_s4_3 = temp_a0_3->unk1E;
                    var_a1_2 = var_a2_4->unk1A - temp_s7;
                    var_s3_3 = var_a2_4->unk1E - temp_s7;
loop_21:
                    var_a2_4->unkA = var_v0_2;
                    var_a2_4->unk12 = var_v1_2;
                    var_t0_4 = var_a3_2->unkE;
                    temp_a0_4 = var_a3_2->unk6;
                    temp_s0_3 = var_a3_2->unk2;
                    var_a2_4->unk1A = var_a1_2;
                    var_a2_4->unk1E = var_s3_3;
                    var_s2_3 = var_a4_2->unk1E;
                    var_s1_3 = var_a4_2->unk1A;
                    temp_s3_4 = var_s4_3 - temp_s7;
                    var_a6_2 = var_a4_2 + 0x20;
                    temp_a1_4 = var_a4_2->unk16;
                    var_a2_4->unk16 = (s16) (var_t9_2 - temp_s7);
                    temp_t9_3 = var_t3_3 - temp_s7;
                    var_a2_4->unkE = (s16) (var_t1_3 - temp_s7);
                    temp_v1_5 = var_a3_2->unk12 - temp_s7;
                    var_a2_4->unk6 = (s16) (var_ra_3 - temp_s7);
                    temp_v0_5 = var_a3_2->unkA - temp_s7;
                    var_a2_4->unk2 = (s16) (var_t8_2 - temp_s7);
                    if (var_a3_2 != temp_a7_5) {
                        var_a3_2->unkA = temp_v0_5;
                        var_a3_2->unk12 = temp_v1_5;
                        temp_t1_2 = var_a4_2->unkE;
                        var_ra_3 = var_a4_2->unk6;
                        var_t8_2 = var_a4_2->unk2;
                        var_a3_2->unk1A = temp_t9_3;
                        var_a3_2->unk1E = temp_s3_4;
                        temp_s4_2 = var_a6_2->unk1E;
                        temp_t3_2 = var_a6_2->unk1A;
                        temp_s3_5 = var_s2_3 - temp_s7;
                        var_a2_4 = var_a6_2 + 0x20;
                        temp_t2_2 = var_a6_2->unk16;
                        var_a3_2->unk16 = (s16) (var_s5_3 - temp_s7);
                        temp_t9_4 = var_s1_3 - temp_s7;
                        var_a3_2->unkE = (s16) (var_t0_4 - temp_s7);
                        temp_v1_6 = var_a4_2->unk12 - temp_s7;
                        var_a3_2->unk6 = (s16) (temp_a0_4 - temp_s7);
                        temp_v0_6 = var_a4_2->unkA - temp_s7;
                        var_a3_2->unk2 = (s16) (temp_s0_3 - temp_s7);
                        if (var_a4_2 != temp_a7_5) {
                            var_a4_2->unkA = temp_v0_6;
                            var_a4_2->unk12 = temp_v1_6;
                            var_t0_4 = var_a6_2->unkE;
                            temp_a0_5 = var_a6_2->unk6;
                            temp_s0_4 = var_a6_2->unk2;
                            var_a4_2->unk1A = temp_t9_4;
                            var_a4_2->unk1E = temp_s3_5;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            var_s2_3 = var_a2_4->unk1E;
                            var_s1_3 = var_a2_4->unk1A;
                            temp_s3_6 = temp_s4_2 - temp_s7;
                            var_a3_2 = var_a2_4 + 0x20;
                            var_t9_2 = var_a2_4->unk16;
                            var_a4_2->unk16 = (s16) (temp_a1_4 - temp_s7);
                            var_a1_2 = temp_t3_2 - temp_s7;
                            var_a4_2->unkE = (s16) (temp_t1_2 - temp_s7);
                            temp_v1_7 = var_a6_2->unk12 - temp_s7;
                            var_a4_2->unk6 = (s16) (var_ra_3 - temp_s7);
                            temp_v0_7 = var_a6_2->unkA - temp_s7;
                            var_a4_2->unk2 = (s16) (var_t8_2 - temp_s7);
                            if (var_a6_2 != temp_a7_5) {
                                var_a6_2->unkA = temp_v0_7;
                                var_a6_2->unk12 = temp_v1_7;
                                var_t1_3 = var_a2_4->unkE;
                                var_ra_3 = var_a2_4->unk6;
                                var_t8_2 = var_a2_4->unk2;
                                var_a6_2->unk1A = var_a1_2;
                                var_a6_2->unk1E = temp_s3_6;
                                var_s4_3 = var_a3_2->unk1E;
                                var_t3_3 = var_a3_2->unk1A;
                                var_s3_3 = var_s2_3 - temp_s7;
                                var_a4_2 = var_a3_2 + 0x20;
                                var_s5_3 = var_a3_2->unk16;
                                var_a6_2->unk16 = (s16) (temp_t2_2 - temp_s7);
                                var_a1_2 = var_s1_3 - temp_s7;
                                var_a6_2->unkE = (s16) (var_t0_4 - temp_s7);
                                var_v1_2 = var_a2_4->unk12 - temp_s7;
                                var_a6_2->unk6 = (s16) (temp_a0_5 - temp_s7);
                                var_v0_2 = var_a2_4->unkA - temp_s7;
                                var_a6_2->unk2 = (s16) (temp_s0_4 - temp_s7);
                                if (var_a2_4 == temp_a7_5) {
                                    var_a6_2 = var_a2_4;
                                    var_s1_3 = var_t3_3;
                                    var_t3_4 = var_v1_2;
                                    var_t2_2 = var_v0_2;
                                    var_t0_4 = var_t1_3;
                                    var_s3 = (void *) sp90;
                                    var_s2_3 = var_s4_3;
                                    var_s6 = sp98;
                                    var_s4_4 = var_s3_3;
                                    var_t1_4 = var_a3_2;
                                } else {
                                    goto loop_21;
                                }
                            } else {
                                var_t1_4 = var_a2_4;
                                var_t3_4 = temp_v1_7;
                                var_t8_2 = temp_s0_4;
                                var_s5_3 = var_t9_2;
                                var_t9_2 = temp_t2_2;
                                var_t2_2 = temp_v0_7;
                                var_s4_4 = temp_s3_6;
                                var_s3 = (void *) sp90;
                                var_ra_3 = temp_a0_5;
                                var_s6 = sp98;
                            }
                        } else {
                            var_s1_3 = temp_t3_2;
                            var_t3_4 = temp_v1_6;
                            var_s5_3 = temp_t2_2;
                            var_t2_2 = temp_v0_6;
                            var_t9_2 = temp_a1_4;
                            var_t0_4 = temp_t1_2;
                            var_t1_4 = var_a6_2;
                            var_s3 = (void *) sp90;
                            var_s2_3 = temp_s4_2;
                            var_s6 = sp98;
                            var_s4_4 = temp_s3_5;
                            var_a6_2 = var_a4_2;
                            var_a1_2 = temp_t9_4;
                        }
                    } else {
                        var_t1_4 = var_a4_2;
                        var_a6_2 = var_a3_2;
                        var_t3_4 = temp_v1_5;
                        var_t2_2 = temp_v0_5;
                        var_ra_3 = temp_a0_4;
                        var_t8_2 = temp_s0_3;
                        var_s4_4 = temp_s3_4;
                        var_s6 = sp98;
                        var_t9_2 = var_s5_3;
                        var_s5_3 = temp_a1_4;
                        var_a1_2 = temp_t9_3;
                        var_s3 = (void *) sp90;
                    }
                    var_a6_2->unk12 = var_t3_4;
                    var_a6_2->unkA = var_t2_2;
                    var_a6_2->unk1A = var_a1_2;
                    var_a6_2->unkE = (s16) (var_t0_4 - temp_s7);
                    var_a6_2->unk2 = (s16) (var_t8_2 - temp_s7);
                    var_a6_2->unk1E = var_s4_4;
                    var_a6_2->unk16 = (s16) (var_t9_2 - temp_s7);
                    var_a6_2->unk6 = (s16) (var_ra_3 - temp_s7);
                    var_t1_4->unk1A = (s16) (var_s1_3 - temp_s7);
                    var_t1_4->unk1E = (s16) (var_s2_3 - temp_s7);
                    var_t1_4->unk16 = (s16) (var_s5_3 - temp_s7);
                    var_t1_4->unk2 = (s16) (var_t1_4->unk2 - temp_s7);
                    var_t1_4->unk6 = (s16) (var_t1_4->unk6 - temp_s7);
                    var_t1_4->unkE = (s16) (var_t1_4->unkE - temp_s7);
                    var_t1_4->unkA = (s16) (var_t1_4->unkA - temp_s7);
                    var_t1_4->unk12 = (s16) (var_t1_4->unk12 - temp_s7);
                } else {
                    do {
                        temp_a4_2 = var_a0_3->unk1E;
                        temp_a2_2 = var_a0_3->unk1A;
                        temp_a1_5 = var_a0_3->unk16;
                        temp_v1_8 = var_a0_3->unk12;
                        temp_v0_8 = var_a0_3->unkE;
                        temp_at_2 = var_a0_3->unkA;
                        temp_a7_6 = var_a0_3->unk6;
                        temp_a5_3 = var_a0_3->unk2;
                        var_a0_3 += 0x20;
                        var_a0_3->unk-2 = (s16) (temp_a4_2 - temp_s7);
                        var_a0_3->unk-6 = (s16) (temp_a2_2 - temp_s7);
                        var_a0_3->unk-A = (s16) (temp_a1_5 - temp_s7);
                        var_a0_3->unk-E = (s16) (temp_v1_8 - temp_s7);
                        var_a0_3->unk-12 = (s16) (temp_v0_8 - temp_s7);
                        var_a0_3->unk-16 = (s16) (temp_at_2 - temp_s7);
                        var_a0_3->unk-1A = (s16) (temp_a7_6 - temp_s7);
                        var_a0_3->unk-1E = (s16) (temp_a5_3 - temp_s7);
                    } while (var_a0_3 != temp_a3_2);
                }
            }
        }
        sp50->unkA = (s16) (sp50->unkA - temp_s7);
        temp_s8->unk5A = (s16) (temp_s8->unk5A - temp_s7);
        *sp58->unk48(sp50, sp58, var_s6, var_s3, sp40, sp48);
    } else {
        temp_s8->unk8 = (s32) temp_s8->unk60;
        if (var_s4 != 0) {
            var_a2_5 = var_s6 & 7;
            var_a0_4 = var_s3;
            temp_a1_6 = (var_s6 * 4) + var_s3;
            if (var_a2_5 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a0) */);
                    temp_a7_7 = var_a0_4->unk2;
                    var_a2_5 -= 1;
                    var_a0_4 += 4;
                    var_a7 = temp_a7_7 - temp_s7;
                    var_a0_4->unk-2 = var_a7;
                } while (var_a2_5 != 0);
            }
            temp_a3_3 = var_s6 >> 3;
            var_a2_6 = var_a0_4;
            if (temp_a3_3 != 0) {
                var_a5 = var_a2_6;
                if (temp_a3_3 >= 3) {
                    sp98 = var_s6;
                    sp90 = (s64) var_s3;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    var_t8_3 = var_a2_6->unk2;
                    var_ra_4 = var_a2_6->unk6;
                    var_t1_5 = var_a2_6->unkE;
                    var_t9_3 = var_a2_6->unk16;
                    sp88 = var_s4;
                    var_a3_3 = var_a2_6 + 0x20;
                    temp_a7_8 = temp_a1_6 - 0x40;
                    var_s5_4 = var_a3_3->unk16;
                    var_a4_3 = var_a3_3 + 0x20;
                    var_t3_5 = var_a3_3->unk1A;
                    var_v0_3 = var_a2_6->unkA - temp_s7;
                    var_v1_3 = var_a2_6->unk12 - temp_s7;
                    var_s4_5 = var_a3_3->unk1E;
                    var_a1_3 = var_a2_6->unk1A - temp_s7;
                    var_s3_4 = var_a2_6->unk1E - temp_s7;
loop_41:
                    var_a2_6->unkA = var_v0_3;
                    var_a2_6->unk12 = var_v1_3;
                    var_t0_5 = var_a3_3->unkE;
                    temp_a0_6 = var_a3_3->unk6;
                    temp_s0_5 = var_a3_3->unk2;
                    var_a2_6->unk1A = var_a1_3;
                    var_a2_6->unk1E = var_s3_4;
                    var_s2_4 = var_a4_3->unk1E;
                    var_s1_4 = var_a4_3->unk1A;
                    temp_s3_7 = var_s4_5 - temp_s7;
                    var_a6 = (s16) (var_a4_3 + 0x20);
                    temp_a1_7 = var_a4_3->unk16;
                    var_a2_6->unk16 = (s16) (var_t9_3 - temp_s7);
                    temp_t9_5 = var_t3_5 - temp_s7;
                    var_a2_6->unkE = (s16) (var_t1_5 - temp_s7);
                    temp_v1_9 = var_a3_3->unk12 - temp_s7;
                    var_a2_6->unk6 = (s16) (var_ra_4 - temp_s7);
                    temp_v0_9 = var_a3_3->unkA - temp_s7;
                    var_a2_6->unk2 = (s16) (var_t8_3 - temp_s7);
                    if (var_a3_3 != temp_a7_8) {
                        var_a3_3->unkA = temp_v0_9;
                        var_a3_3->unk12 = temp_v1_9;
                        temp_t1_3 = var_a4_3->unkE;
                        var_ra_4 = var_a4_3->unk6;
                        var_t8_3 = var_a4_3->unk2;
                        var_a3_3->unk1A = temp_t9_5;
                        var_a3_3->unk1E = temp_s3_7;
                        temp_s4_3 = var_a6->unk1E;
                        temp_t3_3 = var_a6->unk1A;
                        temp_s3_8 = var_s2_4 - temp_s7;
                        var_a2_6 = var_a6 + 0x20;
                        temp_t2_3 = var_a6->unk16;
                        var_a3_3->unk16 = (s16) (var_s5_4 - temp_s7);
                        temp_t9_6 = var_s1_4 - temp_s7;
                        var_a3_3->unkE = (s16) (var_t0_5 - temp_s7);
                        temp_v1_10 = var_a4_3->unk12 - temp_s7;
                        var_a3_3->unk6 = (s16) (temp_a0_6 - temp_s7);
                        temp_v0_10 = var_a4_3->unkA - temp_s7;
                        var_a3_3->unk2 = (s16) (temp_s0_5 - temp_s7);
                        if (var_a4_3 != temp_a7_8) {
                            var_a4_3->unkA = temp_v0_10;
                            var_a4_3->unk12 = temp_v1_10;
                            var_t0_5 = var_a6->unkE;
                            temp_a0_7 = var_a6->unk6;
                            temp_s0_6 = var_a6->unk2;
                            var_a4_3->unk1A = temp_t9_6;
                            var_a4_3->unk1E = temp_s3_8;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            var_s2_4 = var_a2_6->unk1E;
                            var_s1_4 = var_a2_6->unk1A;
                            temp_s3_9 = temp_s4_3 - temp_s7;
                            var_a3_3 = var_a2_6 + 0x20;
                            var_t9_3 = var_a2_6->unk16;
                            var_a4_3->unk16 = (s16) (temp_a1_7 - temp_s7);
                            var_a1_3 = temp_t3_3 - temp_s7;
                            var_a4_3->unkE = (s16) (temp_t1_3 - temp_s7);
                            temp_v1_11 = var_a6->unk12 - temp_s7;
                            var_a4_3->unk6 = (s16) (var_ra_4 - temp_s7);
                            temp_v0_11 = var_a6->unkA - temp_s7;
                            var_a4_3->unk2 = (s16) (var_t8_3 - temp_s7);
                            if (var_a6 != temp_a7_8) {
                                var_a6->unkA = temp_v0_11;
                                var_a6->unk12 = temp_v1_11;
                                var_t1_5 = var_a2_6->unkE;
                                var_ra_4 = var_a2_6->unk6;
                                var_t8_3 = var_a2_6->unk2;
                                var_a6->unk1A = var_a1_3;
                                var_a6->unk1E = temp_s3_9;
                                var_s4_5 = var_a3_3->unk1E;
                                var_t3_5 = var_a3_3->unk1A;
                                var_s3_4 = var_s2_4 - temp_s7;
                                var_a4_3 = var_a3_3 + 0x20;
                                var_s5_4 = var_a3_3->unk16;
                                var_a6->unk16 = (s16) (temp_t2_3 - temp_s7);
                                var_a1_3 = var_s1_4 - temp_s7;
                                var_a6->unkE = (s16) (var_t0_5 - temp_s7);
                                var_v1_3 = var_a2_6->unk12 - temp_s7;
                                var_a6->unk6 = (s16) (temp_a0_7 - temp_s7);
                                var_v0_3 = var_a2_6->unkA - temp_s7;
                                var_a6->unk2 = (s16) (temp_s0_6 - temp_s7);
                                if (var_a2_6 == temp_a7_8) {
                                    var_t2_3 = var_a3_3;
                                    var_a6 = (s16) var_a2_6;
                                    var_s0_3 = var_v1_3;
                                    var_s2_4 = var_s4_5;
                                    var_s4 = sp88;
                                    var_t0_5 = var_t1_5;
                                    var_t1_6 = var_v0_3;
                                    var_s3 = (void *) sp90;
                                    var_s6 = sp98;
                                    var_s1_4 = var_t3_5;
                                    var_t3_6 = var_s3_4;
                                } else {
                                    goto loop_41;
                                }
                            } else {
                                var_t1_6 = temp_v0_11;
                                var_ra_4 = temp_a0_7;
                                var_s5_4 = var_t9_3;
                                var_t9_3 = temp_t2_3;
                                var_t8_3 = temp_s0_6;
                                var_s4 = sp88;
                                var_t3_6 = temp_s3_9;
                                var_s3 = (void *) sp90;
                                var_s0_3 = temp_v1_11;
                                var_s6 = sp98;
                                var_t2_3 = var_a2_6;
                            }
                        } else {
                            var_s0_3 = temp_v1_10;
                            var_t0_5 = temp_t1_3;
                            var_t1_6 = temp_v0_10;
                            var_s5_4 = temp_t2_3;
                            var_s1_4 = temp_t3_3;
                            var_t9_3 = temp_a1_7;
                            var_s2_4 = temp_s4_3;
                            temp_s6 = var_a6;
                            var_s4 = sp88;
                            var_a1_3 = temp_t9_6;
                            var_s3 = (void *) sp90;
                            var_t3_6 = temp_s3_8;
                            var_a6 = (s16) var_a4_3;
                            var_t2_3 = (void *) temp_s6;
                            var_s6 = sp98;
                        }
                    } else {
                        var_t2_3 = var_a4_3;
                        var_a6 = (s16) var_a3_3;
                        var_t1_6 = temp_v0_9;
                        var_ra_4 = temp_a0_6;
                        var_t9_3 = var_s5_4;
                        var_s5_4 = temp_a1_7;
                        var_s4 = sp88;
                        var_t3_6 = temp_s3_7;
                        var_s3 = (void *) sp90;
                        var_t8_3 = temp_s0_5;
                        var_s0_3 = temp_v1_9;
                        var_s6 = sp98;
                        var_a1_3 = temp_t9_5;
                    }
                    var_a6->unk12 = var_s0_3;
                    var_a6->unkA = var_t1_6;
                    var_a6->unk1E = var_t3_6;
                    var_a6->unk1A = var_a1_3;
                    var_a6->unkE = (s16) (var_t0_5 - temp_s7);
                    var_s2 = sp78;
                    var_a6->unk16 = (s16) (var_t9_3 - temp_s7);
                    var_a6->unk2 = (s16) (var_t8_3 - temp_s7);
                    var_ra = sp80;
                    var_a6->unk6 = (s16) (var_ra_4 - temp_s7);
                    var_t2_3->unk1E = (s16) (var_s2_4 - temp_s7);
                    var_t2_3->unk1A = (s16) (var_s1_4 - temp_s7);
                    var_t2_3->unk16 = (s16) (var_s5_4 - temp_s7);
                    var_s5 = sp60;
                    var_t2_3->unk2 = (s16) (var_t2_3->unk2 - temp_s7);
                    var_a7 = var_t2_3->unk12 - temp_s7;
                    var_t2_3->unk12 = var_a7;
                    var_t2_3->unkA = (s16) (var_t2_3->unkA - temp_s7);
                    var_t2_3->unk6 = (s16) (var_t2_3->unk6 - temp_s7);
                    var_s1 = sp68;
                    var_t2_3->unkE = (s16) (var_t2_3->unkE - temp_s7);
                    var_s0 = sp70;
                } else {
                    do {
                        temp_a4_3 = var_a5->unk1E;
                        temp_a3_4 = var_a5->unk1A;
                        temp_a2_3 = var_a5->unk16;
                        temp_a0_8 = var_a5->unk12;
                        temp_v1_12 = var_a5->unkE;
                        temp_v0_12 = var_a5->unkA;
                        temp_at_3 = var_a5->unk6;
                        temp_a7_9 = var_a5->unk2;
                        var_a5 += 0x20;
                        var_a5->unk-2 = (s16) (temp_a4_3 - temp_s7);
                        var_a5->unk-6 = (s16) (temp_a3_4 - temp_s7);
                        var_a5->unk-A = (s16) (temp_a2_3 - temp_s7);
                        var_a5->unk-E = (s16) (temp_a0_8 - temp_s7);
                        var_a5->unk-12 = (s16) (temp_v1_12 - temp_s7);
                        var_a5->unk-16 = (s16) (temp_v0_12 - temp_s7);
                        var_a5->unk-1A = (s16) (temp_at_3 - temp_s7);
                        var_a7 = temp_a7_9 - temp_s7;
                        var_a5->unk-1E = var_a7;
                    } while (var_a5 != temp_a1_6);
                }
            }
            sp80 = var_ra;
        }
        sp50->unkA = (s16) (sp50->unkA - temp_s7);
        sp80 = var_ra;
        temp_s8->unk5A = (s16) (temp_s8->unk5A - temp_s7);
        *sp58->unk48(sp50, sp58, var_s6, var_s3, sp40, sp48, var_a6, var_a7);
        temp_s8->unk8 = (s32) temp_s8->unk64;
        if (var_s4 != 0) {
            var_a1_4 = var_s6 & 7;
            var_a0_5 = var_s3;
            temp_t1_4 = (var_s6 * 4) + var_s3;
            if (var_a1_4 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a0) */);
                    temp_at_4 = var_a0_5->unk2;
                    var_a1_4 -= 1;
                    var_a0_5 += 4;
                    var_a0_5->unk-2 = (s16) (temp_at_4 + temp_s7);
                } while (var_a1_4 != 0);
            }
            temp_a1_8 = var_s6 >> 3;
            var_a2_7 = var_a0_5;
            if (temp_a1_8 != 0) {
                var_a1_5 = var_a2_7;
                if (temp_a1_8 >= 3) {
                    sp98 = var_s6;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    sp90 = (s64) var_s3;
                    sp78 = var_s2;
                    sp70 = var_s0;
                    sp68 = var_s1;
                    var_t8_4 = var_a2_7->unk2;
                    var_ra_5 = var_a2_7->unk6;
                    var_t9_4 = var_a2_7->unk16;
                    temp_a7_10 = temp_t1_4 - 0x40;
                    sp60 = var_s5;
                    var_a3_4 = var_a2_7 + 0x20;
                    var_s5_5 = var_a3_4->unk16;
                    var_a4_4 = var_a3_4 + 0x20;
                    var_v0_4 = var_a2_7->unkA + temp_s7;
                    var_t3_7 = var_a3_4->unk1A;
                    var_v1_4 = var_a2_7->unk12 + temp_s7;
                    var_a1_6 = var_a2_7->unk1A + temp_s7;
                    var_s4_6 = var_a3_4->unk1E;
                    var_s3_5 = var_a2_7->unk1E + temp_s7;
                    var_t1_7 = var_a2_7->unkE;
loop_54:
                    var_a2_7->unkA = var_v0_4;
                    var_a2_7->unk12 = var_v1_4;
                    var_t0_6 = var_a3_4->unkE;
                    temp_a0_9 = var_a3_4->unk6;
                    temp_s0_7 = var_a3_4->unk2;
                    var_a2_7->unk1A = var_a1_6;
                    var_a2_7->unk1E = var_s3_5;
                    var_s2_5 = var_a4_4->unk1E;
                    var_s1_5 = var_a4_4->unk1A;
                    temp_s3_10 = var_s4_6 + temp_s7;
                    var_a6_3 = var_a4_4 + 0x20;
                    temp_a1_9 = var_a4_4->unk16;
                    var_a2_7->unk16 = (s16) (var_t9_4 + temp_s7);
                    temp_t9_7 = var_t3_7 + temp_s7;
                    var_a2_7->unkE = (s16) (var_t1_7 + temp_s7);
                    temp_v1_13 = var_a3_4->unk12 + temp_s7;
                    var_a2_7->unk6 = (s16) (var_ra_5 + temp_s7);
                    temp_v0_13 = var_a3_4->unkA + temp_s7;
                    var_a2_7->unk2 = (s16) (var_t8_4 + temp_s7);
                    if (var_a3_4 != temp_a7_10) {
                        var_a3_4->unkA = temp_v0_13;
                        var_a3_4->unk12 = temp_v1_13;
                        temp_t1_5 = var_a4_4->unkE;
                        var_ra_5 = var_a4_4->unk6;
                        var_t8_4 = var_a4_4->unk2;
                        var_a3_4->unk1A = temp_t9_7;
                        var_a3_4->unk1E = temp_s3_10;
                        temp_s4_4 = var_a6_3->unk1E;
                        temp_t3_4 = var_a6_3->unk1A;
                        temp_s3_11 = var_s2_5 + temp_s7;
                        var_a2_7 = var_a6_3 + 0x20;
                        temp_t2_4 = var_a6_3->unk16;
                        var_a3_4->unk16 = (s16) (var_s5_5 + temp_s7);
                        temp_t9_8 = var_s1_5 + temp_s7;
                        var_a3_4->unkE = (s16) (var_t0_6 + temp_s7);
                        temp_v1_14 = var_a4_4->unk12 + temp_s7;
                        var_a3_4->unk6 = (s16) (temp_a0_9 + temp_s7);
                        temp_v0_14 = var_a4_4->unkA + temp_s7;
                        var_a3_4->unk2 = (s16) (temp_s0_7 + temp_s7);
                        if (var_a4_4 != temp_a7_10) {
                            var_a4_4->unkA = temp_v0_14;
                            var_a4_4->unk12 = temp_v1_14;
                            var_t0_6 = var_a6_3->unkE;
                            temp_a0_10 = var_a6_3->unk6;
                            temp_s0_8 = var_a6_3->unk2;
                            var_a4_4->unk1A = temp_t9_8;
                            var_a4_4->unk1E = temp_s3_11;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            var_s2_5 = var_a2_7->unk1E;
                            var_s1_5 = var_a2_7->unk1A;
                            temp_s3_12 = temp_s4_4 + temp_s7;
                            var_a3_4 = var_a2_7 + 0x20;
                            var_t9_4 = var_a2_7->unk16;
                            var_a4_4->unk16 = (s16) (temp_a1_9 + temp_s7);
                            var_a1_6 = temp_t3_4 + temp_s7;
                            var_a4_4->unkE = (s16) (temp_t1_5 + temp_s7);
                            temp_v1_15 = var_a6_3->unk12 + temp_s7;
                            var_a4_4->unk6 = (s16) (var_ra_5 + temp_s7);
                            temp_v0_15 = var_a6_3->unkA + temp_s7;
                            var_a4_4->unk2 = (s16) (var_t8_4 + temp_s7);
                            if (var_a6_3 != temp_a7_10) {
                                var_a6_3->unkA = temp_v0_15;
                                var_a6_3->unk12 = temp_v1_15;
                                var_t1_7 = var_a2_7->unkE;
                                var_ra_5 = var_a2_7->unk6;
                                var_t8_4 = var_a2_7->unk2;
                                var_a6_3->unk1A = var_a1_6;
                                var_a6_3->unk1E = temp_s3_12;
                                var_s4_6 = var_a3_4->unk1E;
                                var_t3_7 = var_a3_4->unk1A;
                                var_s3_5 = var_s2_5 + temp_s7;
                                var_a4_4 = var_a3_4 + 0x20;
                                var_s5_5 = var_a3_4->unk16;
                                var_a6_3->unk16 = (s16) (temp_t2_4 + temp_s7);
                                var_a1_6 = var_s1_5 + temp_s7;
                                var_a6_3->unkE = (s16) (var_t0_6 + temp_s7);
                                var_v1_4 = var_a2_7->unk12 + temp_s7;
                                var_a6_3->unk6 = (s16) (temp_a0_10 + temp_s7);
                                var_v0_4 = var_a2_7->unkA + temp_s7;
                                var_a6_3->unk2 = (s16) (temp_s0_8 + temp_s7);
                                if (var_a2_7 == temp_a7_10) {
                                    var_a6_3 = var_a3_4;
                                    var_t2_4 = var_v1_4;
                                    var_t0_6 = var_t1_7;
                                    var_t1_8 = var_v0_4;
                                    var_s1_5 = var_t3_7;
                                    var_s3 = (void *) sp90;
                                    var_s2_5 = var_s4_6;
                                    var_s6 = sp98;
                                    var_s4_7 = var_s3_5;
                                    var_t3_8 = var_a2_7;
                                } else {
                                    goto loop_54;
                                }
                            } else {
                                var_s5_5 = var_t9_4;
                                var_t9_4 = temp_t2_4;
                                var_t2_4 = temp_v1_15;
                                var_t1_8 = temp_v0_15;
                                var_ra_5 = temp_a0_10;
                                var_t8_4 = temp_s0_8;
                                var_s4_7 = temp_s3_12;
                                var_s3 = (void *) sp90;
                                var_t3_8 = var_a6_3;
                                var_s6 = sp98;
                                var_a6_3 = var_a2_7;
                            }
                        } else {
                            var_s5_5 = temp_t2_4;
                            var_t2_4 = temp_v1_14;
                            var_t0_6 = temp_t1_5;
                            var_t1_8 = temp_v0_14;
                            var_t9_4 = temp_a1_9;
                            var_s2_5 = temp_s4_4;
                            var_s6 = sp98;
                            var_s1_5 = temp_t3_4;
                            var_t3_8 = var_a4_4;
                            var_s4_7 = temp_s3_11;
                            var_a1_6 = temp_t9_8;
                            var_s3 = (void *) sp90;
                        }
                    } else {
                        var_a6_3 = var_a4_4;
                        var_t3_8 = var_a3_4;
                        var_t2_4 = temp_v1_13;
                        var_t1_8 = temp_v0_13;
                        var_ra_5 = temp_a0_9;
                        var_t8_4 = temp_s0_7;
                        var_s4_7 = temp_s3_10;
                        var_s3 = (void *) sp90;
                        var_t9_4 = var_s5_5;
                        var_s5_5 = temp_a1_9;
                        var_a1_6 = temp_t9_7;
                        var_s6 = sp98;
                    }
                    var_t3_8->unk12 = var_t2_4;
                    var_t3_8->unkA = var_t1_8;
                    var_t3_8->unk1A = var_a1_6;
                    var_t3_8->unkE = (s16) (var_t0_6 + temp_s7);
                    var_t3_8->unk2 = (s16) (var_t8_4 + temp_s7);
                    var_t3_8->unk1E = var_s4_7;
                    var_t3_8->unk16 = (s16) (var_t9_4 + temp_s7);
                    var_t3_8->unk6 = (s16) (var_ra_5 + temp_s7);
                    var_a6_3->unk1A = (s16) (var_s1_5 + temp_s7);
                    var_a6_3->unk1E = (s16) (var_s2_5 + temp_s7);
                    var_a6_3->unk16 = (s16) (var_s5_5 + temp_s7);
                    var_a6_3->unk2 = (s16) (var_a6_3->unk2 + temp_s7);
                    var_a6_3->unk6 = (s16) (var_a6_3->unk6 + temp_s7);
                    var_a6_3->unkE = (s16) (var_a6_3->unkE + temp_s7);
                    var_a6_3->unkA = (s16) (var_a6_3->unkA + temp_s7);
                    var_a6_3->unk12 = (s16) (var_a6_3->unk12 + temp_s7);
                } else {
                    do {
                        temp_a4_4 = var_a1_5->unk1E;
                        temp_a3_5 = var_a1_5->unk1A;
                        temp_a2_4 = var_a1_5->unk16;
                        temp_a0_11 = var_a1_5->unk12;
                        temp_v1_16 = var_a1_5->unkE;
                        temp_v0_16 = var_a1_5->unkA;
                        temp_at_5 = var_a1_5->unk6;
                        temp_a7_11 = var_a1_5->unk2;
                        var_a1_5 += 0x20;
                        var_a1_5->unk-2 = (s16) (temp_a4_4 + temp_s7);
                        var_a1_5->unk-6 = (s16) (temp_a3_5 + temp_s7);
                        var_a1_5->unk-A = (s16) (temp_a2_4 + temp_s7);
                        var_a1_5->unk-E = (s16) (temp_a0_11 + temp_s7);
                        var_a1_5->unk-12 = (s16) (temp_v1_16 + temp_s7);
                        var_a1_5->unk-16 = (s16) (temp_v0_16 + temp_s7);
                        var_a1_5->unk-1A = (s16) (temp_at_5 + temp_s7);
                        var_a1_5->unk-1E = (s16) (temp_a7_11 + temp_s7);
                    } while (var_a1_5 != temp_t1_4);
                }
            }
        }
        sp50->unkA = (s16) (sp50->unkA + temp_s7);
        temp_s8->unk5A = (s16) (temp_s8->unk5A + temp_s7);
        *sp58->unk48(sp50, sp58, var_s6, var_s3, sp40, sp48);
    }
    temp_s8->unk8 = (s32) sp0;
    sp58->unk48 = (? (**)(s64, s64, s64, void *, s64, s64, s16, s16)) sp8;
    temp_s8->unk68 = 0;
}

void nfbStereoPolySegment(void *arg0, void *arg1, s32 arg2, void *arg3) {
    s64 sp8;
    s64 sp0;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_at;
    s16 temp_at_2;
    s16 var_a0;
    s16 var_v0_2;
    s16 var_v1_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s3;
    u16 temp_s6;
    void *temp_a3;
    void *temp_gp;
    void *temp_s1;
    void *temp_s5;
    void *var_a2;
    void *var_a4;
    void *var_a5;
    void *var_v0;
    void *var_v1;

    sp8 = (s64) arg1->unk48;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x4B380;
    temp_s6 = arg0->unk10->unk74->unkE2;
    temp_s1 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s3 = arg2 * 8;
    arg1->unk48 = (void *) temp_s1->unk5C;
    sp0 = (s64) temp_s1->unk8;
    temp_s1->unk68 = 1;
    var_v1 = arg3;
    temp_s5 = temp_gp->unk-758C(temp_s3);
    temp_a1 = arg2 >> 1;
    if (arg2 > 0) {
        var_v0 = temp_s5;
        if (arg2 & 1) {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($v1) */);
            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v0) */);
            var_v0->unk4 = (s16) var_v1->unk4;
            var_v0->unk2 = (s16) var_v1->unk2;
            var_v0->unk0 = (s16) var_v1->unk0;
            var_v0->unk6 = (s16) var_v1->unk6;
            var_v0 += 8;
            var_v1 += 8;
        }
        var_a4 = var_v0;
        var_a5 = var_v1;
        if (temp_a1 != 0) {
            temp_a1_2 = (temp_s3 + arg3) - 0x10;
            if (temp_a1 >= 2) {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                var_a0 = var_a5->unk0;
                var_v0_2 = var_a5->unk4;
                var_v1_2 = var_a5->unk6;
                var_a2 = var_a5 + 0x10;
loop_6:
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a4) */);
                temp_a3 = var_a4 + 0x10;
                var_a4->unk6 = var_v1_2;
                var_a4->unk4 = var_v0_2;
                var_a4->unk0 = var_a0;
                var_a4->unk2 = (s16) var_a5->unk2;
                temp_a0 = var_a5->unk8;
                temp_at = var_a5->unkA;
                var_a4->unkE = (s16) var_a5->unkE;
                var_a4->unkC = (s16) var_a5->unkC;
                var_a5 = var_a2 + 0x10;
                var_v1_2 = var_a2->unk6;
                var_v0_2 = var_a2->unk4;
                var_a4->unk8 = temp_a0;
                var_a4->unkA = temp_at;
                var_a0 = var_a2->unk0;
                if (var_a2 != temp_a1_2) {
                    var_a4 = temp_a3 + 0x10;
                    temp_a3->unk6 = var_v1_2;
                    temp_a3->unk4 = var_v0_2;
                    temp_a3->unk0 = var_a0;
                    temp_a3->unk2 = (s16) var_a2->unk2;
                    temp_at_2 = var_a2->unk8;
                    temp_a0_2 = var_a2->unkA;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                    temp_a3->unkE = (s16) var_a2->unkE;
                    temp_a3->unkC = (s16) var_a2->unkC;
                    var_a2 = var_a5 + 0x10;
                    var_v1_2 = var_a5->unk6;
                    var_v0_2 = var_a5->unk4;
                    temp_a3->unk8 = temp_at_2;
                    temp_a3->unkA = temp_a0_2;
                    var_a0 = var_a2->unk10;
                    if (var_a5 != temp_a1_2) {
                        goto loop_6;
                    }
                } else {
                    var_a5 = var_a2;
                    var_a4 = temp_a3;
                }
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a4) */);
                var_a4->unk4 = var_v0_2;
                var_a4->unk6 = var_v1_2;
                var_a4->unk0 = var_a0;
                var_a4->unk2 = (s16) var_a5->unk2;
                var_a4->unkC = (s16) var_a5->unkC;
                var_a4->unkE = (s16) var_a5->unkE;
                var_a4->unkA = (s16) var_a5->unkA;
                var_a4->unk8 = (s16) var_a5->unk8;
            } else {
                var_a4->unk6 = (s16) var_a5->unk6;
                var_a4->unk4 = (s16) var_a5->unk4;
                var_a4->unk2 = (s16) var_a5->unk2;
                var_a4->unk0 = (s16) var_a5->unk0;
                var_a4->unkE = (s16) var_a5->unkE;
                var_a4->unkC = (s16) var_a5->unkC;
                var_a4->unkA = (s16) var_a5->unkA;
                var_a4->unk8 = (s16) var_a5->unk8;
            }
        }
    }
    if (arg0->unk10->unk74->unkDC == 1) {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk1C(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk1C(arg0, arg1, arg2, arg3);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk1C(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk1C(arg0, arg1, arg2, arg3);
    }
    temp_s1->unk8 = (s32) sp0;
    temp_gp->unk-75A0(temp_s5);
    arg1->unk48 = (void *) sp8;
    temp_s1->unk68 = 0;
}

void nfbStereoPolyRectangle(void *arg0, void *arg1, s32 arg2, void *arg3) {
    s64 sp8;
    s64 sp0;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_at;
    s16 temp_at_2;
    s16 var_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s3;
    u16 temp_s6;
    u16 var_v0_2;
    u16 var_v1_2;
    void *temp_a3;
    void *temp_gp;
    void *temp_s1;
    void *temp_s5;
    void *var_a2;
    void *var_a4;
    void *var_a5;
    void *var_v0;
    void *var_v1;

    sp8 = (s64) arg1->unk48;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x4AFBC;
    temp_s6 = arg0->unk10->unk74->unkE2;
    temp_s1 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s3 = arg2 * 8;
    arg1->unk48 = (void *) temp_s1->unk5C;
    sp0 = (s64) temp_s1->unk8;
    temp_s1->unk68 = 1;
    var_v1 = arg3;
    temp_s5 = temp_gp->unk-758C(temp_s3);
    temp_a1 = arg2 >> 1;
    if (arg2 > 0) {
        var_v0 = temp_s5;
        if (arg2 & 1) {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($v1) */);
            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v0) */);
            var_v0->unk4 = (u16) var_v1->unk4;
            var_v0->unk2 = (s16) var_v1->unk2;
            var_v0->unk0 = (s16) var_v1->unk0;
            var_v0->unk6 = (u16) var_v1->unk6;
            var_v0 += 8;
            var_v1 += 8;
        }
        var_a4 = var_v0;
        var_a5 = var_v1;
        if (temp_a1 != 0) {
            temp_a1_2 = (temp_s3 + arg3) - 0x10;
            if (temp_a1 >= 2) {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                var_a0 = var_a5->unk0;
                var_v0_2 = var_a5->unk4;
                var_v1_2 = var_a5->unk6;
                var_a2 = var_a5 + 0x10;
loop_6:
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a4) */);
                temp_a3 = var_a4 + 0x10;
                var_a4->unk6 = var_v1_2;
                var_a4->unk4 = var_v0_2;
                var_a4->unk0 = var_a0;
                var_a4->unk2 = (s16) var_a5->unk2;
                temp_a0 = var_a5->unk8;
                temp_at = var_a5->unkA;
                var_a4->unkE = (u16) var_a5->unkE;
                var_a4->unkC = (u16) var_a5->unkC;
                var_a5 = var_a2 + 0x10;
                var_v1_2 = var_a2->unk6;
                var_v0_2 = var_a2->unk4;
                var_a4->unk8 = temp_a0;
                var_a4->unkA = temp_at;
                var_a0 = var_a2->unk0;
                if (var_a2 != temp_a1_2) {
                    var_a4 = temp_a3 + 0x10;
                    temp_a3->unk6 = var_v1_2;
                    temp_a3->unk4 = var_v0_2;
                    temp_a3->unk0 = var_a0;
                    temp_a3->unk2 = (s16) var_a2->unk2;
                    temp_at_2 = var_a2->unk8;
                    temp_a0_2 = var_a2->unkA;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                    temp_a3->unkE = (u16) var_a2->unkE;
                    temp_a3->unkC = (u16) var_a2->unkC;
                    var_a2 = var_a5 + 0x10;
                    var_v1_2 = var_a5->unk6;
                    var_v0_2 = var_a5->unk4;
                    temp_a3->unk8 = temp_at_2;
                    temp_a3->unkA = temp_a0_2;
                    var_a0 = var_a2->unk10;
                    if (var_a5 != temp_a1_2) {
                        goto loop_6;
                    }
                } else {
                    var_a5 = var_a2;
                    var_a4 = temp_a3;
                }
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a4) */);
                var_a4->unk4 = var_v0_2;
                var_a4->unk6 = var_v1_2;
                var_a4->unk0 = var_a0;
                var_a4->unk2 = (s16) var_a5->unk2;
                var_a4->unkC = (u16) var_a5->unkC;
                var_a4->unkE = (u16) var_a5->unkE;
                var_a4->unkA = (s16) var_a5->unkA;
                var_a4->unk8 = (s16) var_a5->unk8;
            } else {
                var_a4->unk6 = (u16) var_a5->unk6;
                var_a4->unk4 = (u16) var_a5->unk4;
                var_a4->unk2 = (s16) var_a5->unk2;
                var_a4->unk0 = (s16) var_a5->unk0;
                var_a4->unkE = (u16) var_a5->unkE;
                var_a4->unkC = (u16) var_a5->unkC;
                var_a4->unkA = (s16) var_a5->unkA;
                var_a4->unk8 = (s16) var_a5->unk8;
            }
        }
    }
    if (arg0->unk10->unk74->unkDC == 1) {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk20(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk20(arg0, arg1, arg2, arg3);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk20(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk20(arg0, arg1, arg2, arg3);
    }
    temp_s1->unk8 = (s32) sp0;
    temp_gp->unk-75A0(temp_s5);
    arg1->unk48 = (void *) sp8;
    temp_s1->unk68 = 0;
}

void nfbStereoPolyArc(void *arg0, void *arg1, s32 arg2, void *arg3) {
    s64 sp8;
    s64 sp0;
    s32 temp_s3;
    u16 temp_s6;
    u16 var_at;
    void *temp_gp;
    void *temp_s1;
    void *temp_s5;
    void *temp_s7;
    void *var_v0;
    void *var_v1;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x4ABF8;
    temp_s6 = arg0->unk10->unk74->unkE2;
    temp_s1 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    sp0 = (s64) temp_s1->unk8;
    temp_s7 = arg1->unk48;
    temp_s3 = arg2 * 0xC;
    arg1->unk48 = (void *) temp_s1->unk5C;
    sp8 = (s64) temp_s7;
    temp_s1->unk68 = 1;
    temp_s5 = temp_gp->unk-758C(temp_s3);
    if (arg2 > 0) {
        var_v0 = arg3;
        var_v1 = temp_s5;
        if (arg2 >= 2) {
            var_at = var_v0->unk0;
            do {
                var_v1->unk0 = var_at;
                var_v1->unk2 = (u16) var_v0->unk2;
                var_v1->unk4 = (u16) var_v0->unk4;
                var_v1->unk6 = (u16) var_v0->unk6;
                var_v1->unk8 = (u16) var_v0->unk8;
                var_v1->unkA = (u16) var_v0->unkA;
                var_v0 += 0xC;
                var_v1 += 0xC;
                var_at = var_v0->unk0;
            } while (var_v0 != ((temp_s3 + arg3) - 0xC));
            var_v1->unk0 = var_at;
            var_v1->unk2 = (u16) var_v0->unk2;
            var_v1->unk4 = (u16) var_v0->unk4;
            var_v1->unk6 = (u16) var_v0->unk6;
            var_v1->unk8 = (u16) var_v0->unk8;
            var_v1->unkA = (u16) var_v0->unkA;
        } else {
            var_v1->unk0 = (u16) var_v0->unk0;
            var_v1->unk2 = (u16) var_v0->unk2;
            var_v1->unk4 = (u16) var_v0->unk4;
            var_v1->unk6 = (u16) var_v0->unk6;
            var_v1->unk8 = (u16) var_v0->unk8;
            var_v1->unkA = (u16) var_v0->unkA;
        }
    }
    if (arg0->unk10->unk74->unkDC == 1) {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk24(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk24(arg0, arg1, arg2, arg3);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk24(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk24(arg0, arg1, arg2, arg3);
    }
    temp_s1->unk8 = (s32) sp0;
    temp_gp->unk-75A0(temp_s5);
    arg1->unk48 = (void *) sp8;
    temp_s1->unk68 = 0;
}

void nfbStereoSetSpans(void *arg0, void *arg1, s64 arg2, void *arg3, s64 arg4, s64 arg5, s64 arg6, s16 arg7) {
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
    s64 sp8;
    s64 sp0;
    s16 temp_a0;
    s16 temp_a0_10;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a0_4;
    s16 temp_a0_5;
    s16 temp_a0_6;
    s16 temp_a0_7;
    s16 temp_a0_8;
    s16 temp_a0_9;
    s16 temp_a1_2;
    s16 temp_a1_4;
    s16 temp_a1_6;
    s16 temp_a1_8;
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_a2_3;
    s16 temp_a2_4;
    s16 temp_a3_2;
    s16 temp_a3_4;
    s16 temp_a3_6;
    s16 temp_a3_8;
    s16 temp_a4;
    s16 temp_a4_2;
    s16 temp_a4_3;
    s16 temp_a4_4;
    s16 temp_a5;
    s16 temp_a5_2;
    s16 temp_a7;
    s16 temp_a7_10;
    s16 temp_a7_12;
    s16 temp_a7_3;
    s16 temp_a7_4;
    s16 temp_a7_6;
    s16 temp_a7_7;
    s16 temp_a7_9;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_at_3;
    s16 temp_at_4;
    s16 temp_s0;
    s16 temp_s0_2;
    s16 temp_s0_3;
    s16 temp_s0_4;
    s16 temp_s0_5;
    s16 temp_s0_6;
    s16 temp_s0_7;
    s16 temp_s0_8;
    s16 temp_s2;
    s16 temp_s2_2;
    s16 temp_s2_3;
    s16 temp_s2_4;
    s16 temp_s2_5;
    s16 temp_s2_6;
    s16 temp_s3;
    s16 temp_s3_10;
    s16 temp_s3_11;
    s16 temp_s3_12;
    s16 temp_s3_2;
    s16 temp_s3_3;
    s16 temp_s3_4;
    s16 temp_s3_5;
    s16 temp_s3_6;
    s16 temp_s3_7;
    s16 temp_s3_8;
    s16 temp_s3_9;
    s16 temp_s4;
    s16 temp_s4_2;
    s16 temp_s4_3;
    s16 temp_s4_4;
    s16 temp_t1;
    s16 temp_t1_2;
    s16 temp_t1_3;
    s16 temp_t1_4;
    s16 temp_t2;
    s16 temp_t2_2;
    s16 temp_t2_3;
    s16 temp_t2_4;
    s16 temp_t3;
    s16 temp_t3_2;
    s16 temp_t3_3;
    s16 temp_t3_4;
    s16 temp_t9;
    s16 temp_t9_2;
    s16 temp_t9_3;
    s16 temp_t9_4;
    s16 temp_t9_5;
    s16 temp_t9_6;
    s16 temp_t9_7;
    s16 temp_t9_8;
    s16 temp_v0;
    s16 temp_v0_10;
    s16 temp_v0_11;
    s16 temp_v0_12;
    s16 temp_v0_13;
    s16 temp_v0_14;
    s16 temp_v0_15;
    s16 temp_v0_16;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 temp_v0_8;
    s16 temp_v0_9;
    s16 temp_v1;
    s16 temp_v1_10;
    s16 temp_v1_11;
    s16 temp_v1_12;
    s16 temp_v1_13;
    s16 temp_v1_14;
    s16 temp_v1_15;
    s16 temp_v1_16;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s16 temp_v1_4;
    s16 temp_v1_5;
    s16 temp_v1_6;
    s16 temp_v1_7;
    s16 temp_v1_8;
    s16 temp_v1_9;
    s16 var_a1;
    s16 var_a1_2;
    s16 var_a1_3;
    s16 var_a1_4;
    s16 var_a6;
    s16 var_a7;
    s16 var_ra_2;
    s16 var_ra_3;
    s16 var_ra_4;
    s16 var_ra_5;
    s16 var_s0_2;
    s16 var_s0_4;
    s16 var_s1_2;
    s16 var_s1_3;
    s16 var_s1_4;
    s16 var_s1_5;
    s16 var_s2_3;
    s16 var_s3_2;
    s16 var_s3_3;
    s16 var_s3_4;
    s16 var_s3_5;
    s16 var_s4_2;
    s16 var_s4_3;
    s16 var_s4_4;
    s16 var_s4_5;
    s16 var_s4_6;
    s16 var_s4_7;
    s16 var_s5_2;
    s16 var_s5_3;
    s16 var_s5_4;
    s16 var_s5_5;
    s16 var_t0;
    s16 var_t0_2;
    s16 var_t0_3;
    s16 var_t0_4;
    s16 var_t1;
    s16 var_t1_3;
    s16 var_t1_4;
    s16 var_t1_5;
    s16 var_t1_6;
    s16 var_t1_7;
    s16 var_t1_8;
    s16 var_t2;
    s16 var_t2_2;
    s16 var_t2_4;
    s16 var_t3;
    s16 var_t3_2;
    s16 var_t3_3;
    s16 var_t3_4;
    s16 var_t3_5;
    s16 var_t3_6;
    s16 var_t3_7;
    s16 var_t3_8;
    s16 var_t8;
    s16 var_t8_2;
    s16 var_t8_3;
    s16 var_t8_4;
    s16 var_t9;
    s16 var_t9_2;
    s16 var_t9_3;
    s16 var_t9_4;
    s16 var_v0;
    s16 var_v0_2;
    s16 var_v0_3;
    s16 var_v0_4;
    s16 var_v1;
    s16 var_v1_2;
    s16 var_v1_3;
    s16 var_v1_4;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a3_5;
    s32 temp_a3_7;
    s32 temp_a7_2;
    s32 var_a2_3;
    s32 var_a2_5;
    s32 var_a3;
    s32 var_a3_3;
    s64 var_ra;
    s64 var_s0;
    s64 var_s1;
    s64 var_s2;
    s64 var_s3;
    s64 var_s4;
    s64 var_s5;
    u16 temp_s7;
    void *temp_a1_3;
    void *temp_a1_5;
    void *temp_a1_7;
    void *temp_a6;
    void *temp_a7_11;
    void *temp_a7_5;
    void *temp_a7_8;
    void *temp_s6;
    void *temp_s8;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;
    void *var_a0_4;
    void *var_a2;
    void *var_a2_2;
    void *var_a2_4;
    void *var_a2_6;
    void *var_a3_2;
    void *var_a3_4;
    void *var_a3_5;
    void *var_a3_6;
    void *var_a4;
    void *var_a4_2;
    void *var_a4_3;
    void *var_a4_4;
    void *var_a5;
    void *var_a5_2;
    void *var_a5_3;
    void *var_a5_4;
    void *var_a6_2;
    void *var_a6_3;
    void *var_a6_4;
    void *var_s0_3;
    void *var_s0_5;
    void *var_s2_2;
    void *var_s6;
    void *var_t1_2;
    void *var_t2_3;

    var_s0 = saved_reg_s0;
    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s5 = saved_reg_s5;
    var_ra = saved_reg_ra;
    var_a7 = arg7;
    sp8 = (s64) arg1->unk48;
    sp40 = arg6;
    sp58 = arg4;
    sp60 = (s64) arg1;
    temp_s8 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x4A918)->unk-30F4 * 4));
    temp_s7 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (s32) temp_s8->unk5C;
    temp_s8->unk68 = 1;
    var_s6 = arg3;
    var_s4 = arg5 >= 1;
    var_s3 = arg5;
    sp50 = arg2;
    var_a3 = var_s3 & 7;
    sp48 = (s64) arg0;
    var_a5 = var_s6;
    temp_a1 = (var_s3 * 4) + var_s6;
    sp0 = (s64) temp_s8->unk8;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s8->unk8 = (s32) temp_s8->unk64;
        if (var_s4 != 0) {
            if (var_a3 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a5) */);
                    temp_a7 = var_a5->unk2;
                    var_a3 -= 1;
                    var_a5 += 4;
                    var_a7 = temp_a7 + temp_s7;
                    var_a5->unk-2 = var_a7;
                } while (var_a3 != 0);
            }
            temp_a3 = var_s3 >> 3;
            var_a2 = var_a5;
            if (temp_a3 != 0) {
                if (temp_a3 >= 3) {
                    spA0 = (s64) var_s6;
                    sp98 = var_s3;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    var_t8 = var_a2->unk2;
                    var_ra_2 = var_a2->unk6;
                    var_t1 = var_a2->unkE;
                    var_t9 = var_a2->unk16;
                    sp90 = var_s4;
                    var_a3_2 = var_a2 + 0x20;
                    temp_a7_2 = temp_a1 - 0x40;
                    var_s5_2 = var_a3_2->unk16;
                    var_a4 = var_a3_2 + 0x20;
                    var_t3 = var_a3_2->unk1A;
                    var_v0 = var_a2->unkA + temp_s7;
                    var_v1 = var_a2->unk12 + temp_s7;
                    var_s4_2 = var_a3_2->unk1E;
                    var_a1 = var_a2->unk1A + temp_s7;
                    var_s3_2 = var_a2->unk1E + temp_s7;
loop_7:
                    var_a2->unkA = var_v0;
                    var_a2->unk12 = var_v1;
                    var_t0 = var_a3_2->unkE;
                    temp_a0 = var_a3_2->unk6;
                    temp_s0 = var_a3_2->unk2;
                    var_a2->unk1A = var_a1;
                    var_a2->unk1E = var_s3_2;
                    temp_s2 = var_a4->unk1E;
                    var_s1_2 = var_a4->unk1A;
                    temp_s3 = var_s4_2 + temp_s7;
                    temp_a6 = var_a4 + 0x20;
                    temp_a1_2 = var_a4->unk16;
                    var_a2->unk16 = (s16) (var_t9 + temp_s7);
                    temp_t9 = var_t3 + temp_s7;
                    var_a2->unkE = (s16) (var_t1 + temp_s7);
                    temp_v1 = var_a3_2->unk12 + temp_s7;
                    var_a2->unk6 = (s16) (var_ra_2 + temp_s7);
                    temp_v0 = var_a3_2->unkA + temp_s7;
                    var_a2->unk2 = (s16) (var_t8 + temp_s7);
                    if (var_a3_2 != temp_a7_2) {
                        var_a3_2->unkA = temp_v0;
                        var_a3_2->unk12 = temp_v1;
                        temp_t1 = var_a4->unkE;
                        var_ra_2 = var_a4->unk6;
                        var_t8 = var_a4->unk2;
                        var_a3_2->unk1A = temp_t9;
                        var_a3_2->unk1E = temp_s3;
                        temp_s4 = temp_a6->unk1E;
                        temp_t3 = temp_a6->unk1A;
                        temp_s3_2 = temp_s2 + temp_s7;
                        var_a2 = temp_a6 + 0x20;
                        temp_t2 = temp_a6->unk16;
                        var_a3_2->unk16 = (s16) (var_s5_2 + temp_s7);
                        temp_t9_2 = var_s1_2 + temp_s7;
                        var_a3_2->unkE = (s16) (var_t0 + temp_s7);
                        temp_v1_2 = var_a4->unk12 + temp_s7;
                        var_a3_2->unk6 = (s16) (temp_a0 + temp_s7);
                        temp_v0_2 = var_a4->unkA + temp_s7;
                        var_a3_2->unk2 = (s16) (temp_s0 + temp_s7);
                        if (var_a4 != temp_a7_2) {
                            var_a4->unkA = temp_v0_2;
                            var_a4->unk12 = temp_v1_2;
                            var_t0 = temp_a6->unkE;
                            temp_a0_2 = temp_a6->unk6;
                            temp_s0_2 = temp_a6->unk2;
                            var_a4->unk1A = temp_t9_2;
                            var_a4->unk1E = temp_s3_2;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            temp_s2_2 = var_a2->unk1E;
                            var_s1_2 = var_a2->unk1A;
                            temp_s3_3 = temp_s4 + temp_s7;
                            var_a3_2 = var_a2 + 0x20;
                            var_t9 = var_a2->unk16;
                            var_a4->unk16 = (s16) (temp_a1_2 + temp_s7);
                            var_a1 = temp_t3 + temp_s7;
                            var_a4->unkE = (s16) (temp_t1 + temp_s7);
                            temp_v1_3 = temp_a6->unk12 + temp_s7;
                            var_a4->unk6 = (s16) (var_ra_2 + temp_s7);
                            temp_v0_3 = temp_a6->unkA + temp_s7;
                            var_a4->unk2 = (s16) (var_t8 + temp_s7);
                            if (temp_a6 != temp_a7_2) {
                                temp_a6->unkA = temp_v0_3;
                                temp_a6->unk12 = temp_v1_3;
                                var_t1 = var_a2->unkE;
                                var_ra_2 = var_a2->unk6;
                                var_t8 = var_a2->unk2;
                                temp_a6->unk1A = var_a1;
                                temp_a6->unk1E = temp_s3_3;
                                var_s4_2 = var_a3_2->unk1E;
                                var_t3 = var_a3_2->unk1A;
                                var_s3_2 = temp_s2_2 + temp_s7;
                                var_a4 = var_a3_2 + 0x20;
                                var_s5_2 = var_a3_2->unk16;
                                temp_a6->unk16 = (s16) (temp_t2 + temp_s7);
                                var_a1 = var_s1_2 + temp_s7;
                                temp_a6->unkE = (s16) (var_t0 + temp_s7);
                                var_v1 = var_a2->unk12 + temp_s7;
                                temp_a6->unk6 = (s16) (temp_a0_2 + temp_s7);
                                var_v0 = var_a2->unkA + temp_s7;
                                temp_a6->unk2 = (s16) (temp_s0_2 + temp_s7);
                                if (var_a2 == temp_a7_2) {
                                    var_s2_2 = var_a2;
                                    var_s0_2 = var_v1;
                                    var_s1_2 = var_t3;
                                    var_t3_2 = var_v0;
                                    var_t2 = var_s4_2;
                                    var_s4 = sp90;
                                    var_a6 = var_s3_2;
                                    var_s3 = sp98;
                                    var_s6 = (void *) spA0;
                                    var_t0 = var_t1;
                                    var_t1_2 = var_a3_2;
                                } else {
                                    goto loop_7;
                                }
                            } else {
                                var_t1_2 = var_a2;
                                var_t3_2 = temp_v0_3;
                                var_ra_2 = temp_a0_2;
                                var_s5_2 = var_t9;
                                var_t9 = temp_t2;
                                var_t8 = temp_s0_2;
                                var_a6 = temp_s3_3;
                                var_s4 = sp90;
                                var_s3 = sp98;
                                var_s0_2 = temp_v1_3;
                                var_t2 = temp_s2_2;
                                var_s6 = (void *) spA0;
                                var_s2_2 = temp_a6;
                            }
                        } else {
                            var_s2_2 = var_a4;
                            var_s0_2 = temp_v1_2;
                            var_s1_2 = temp_t3;
                            var_t3_2 = temp_v0_2;
                            var_t0 = temp_t1;
                            var_s5_2 = temp_t2;
                            var_t9 = temp_a1_2;
                            var_s4 = sp90;
                            var_a6 = temp_s3_2;
                            var_s3 = sp98;
                            var_a1 = temp_t9_2;
                            var_t2 = temp_s4;
                            var_t1_2 = temp_a6;
                            var_s6 = (void *) spA0;
                        }
                    } else {
                        var_t1_2 = var_a4;
                        var_t3_2 = temp_v0;
                        var_ra_2 = temp_a0;
                        var_t2 = temp_s2;
                        var_t9 = var_s5_2;
                        var_s5_2 = temp_a1_2;
                        var_t8 = temp_s0;
                        var_a6 = temp_s3;
                        var_s4 = sp90;
                        var_s3 = sp98;
                        var_s0_2 = temp_v1;
                        var_a1 = temp_t9;
                        var_s6 = (void *) spA0;
                        var_s2_2 = var_a3_2;
                    }
                    var_s2_2->unk12 = var_s0_2;
                    var_s2_2->unkA = var_t3_2;
                    var_s2_2->unk1A = var_a1;
                    var_s2_2->unk1E = var_a6;
                    var_s2_2->unkE = (s16) (var_t0 + temp_s7);
                    var_s2_2->unk16 = (s16) (var_t9 + temp_s7);
                    var_s2_2->unk6 = (s16) (var_ra_2 + temp_s7);
                    var_s2_2->unk2 = (s16) (var_t8 + temp_s7);
                    var_s5 = sp78;
                    var_ra = sp80;
                    var_t1_2->unk1E = (s16) (var_t2 + temp_s7);
                    var_t1_2->unk1A = (s16) (var_s1_2 + temp_s7);
                    var_t1_2->unk16 = (s16) (var_s5_2 + temp_s7);
                    var_s2 = sp88;
                    var_t1_2->unk2 = (s16) (var_t1_2->unk2 + temp_s7);
                    var_a7 = var_t1_2->unk12 + temp_s7;
                    var_t1_2->unk12 = var_a7;
                    var_t1_2->unkA = (s16) (var_t1_2->unkA + temp_s7);
                    var_t1_2->unk6 = (s16) (var_t1_2->unk6 + temp_s7);
                    var_s1 = sp68;
                    var_t1_2->unkE = (s16) (var_t1_2->unkE + temp_s7);
                    var_s0 = sp70;
                } else {
                    var_a0 = var_a2;
                    do {
                        temp_a4 = var_a0->unk1E;
                        temp_a3_2 = var_a0->unk1A;
                        temp_a2 = var_a0->unk16;
                        temp_v1_4 = var_a0->unk12;
                        temp_v0_4 = var_a0->unkE;
                        temp_at = var_a0->unkA;
                        temp_a7_3 = var_a0->unk6;
                        temp_a5 = var_a0->unk2;
                        var_a0 += 0x20;
                        var_a0->unk-2 = (s16) (temp_a4 + temp_s7);
                        var_a0->unk-6 = (s16) (temp_a3_2 + temp_s7);
                        var_a0->unk-A = (s16) (temp_a2 + temp_s7);
                        var_a0->unk-E = (s16) (temp_v1_4 + temp_s7);
                        var_a0->unk-12 = (s16) (temp_v0_4 + temp_s7);
                        var_a0->unk-16 = (s16) (temp_at + temp_s7);
                        var_a7 = temp_a7_3 + temp_s7;
                        var_a0->unk-1A = var_a7;
                        var_a0->unk-1E = (s16) (temp_a5 + temp_s7);
                    } while (var_a0 != temp_a1);
                }
            }
            sp80 = var_ra;
        }
        sp48->unkA = (s16) (sp48->unkA + temp_s7);
        sp80 = var_ra;
        temp_s8->unk5A = (s16) (temp_s8->unk5A + temp_s7);
        sp60->unk48->unk4(sp48, sp60, sp50, var_s6, sp58, var_s3, sp40, var_a7);
        var_a3_3 = var_s3 & 7;
        var_a5_2 = var_s6;
        temp_s8->unk8 = (s32) temp_s8->unk60;
        if (var_s4 != 0) {
            temp_a1_3 = (var_s3 * 4) + var_s6;
            if (var_a3_3 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a5) */);
                    temp_a7_4 = var_a5_2->unk2;
                    var_a3_3 -= 1;
                    var_a5_2 += 4;
                    var_a5_2->unk-2 = (s16) (temp_a7_4 - temp_s7);
                } while (var_a3_3 != 0);
            }
            temp_a3_3 = var_s3 >> 3;
            var_a2_2 = var_a5_2;
            if (temp_a3_3 != 0) {
                if (temp_a3_3 >= 3) {
                    spA0 = (s64) var_s6;
                    sp88 = var_s2;
                    sp98 = var_s3;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    sp70 = var_s0;
                    sp68 = var_s1;
                    var_t8_2 = var_a2_2->unk2;
                    var_ra_3 = var_a2_2->unk6;
                    var_t1_3 = var_a2_2->unkE;
                    var_t9_2 = var_a2_2->unk16;
                    sp78 = var_s5;
                    var_a3_4 = var_a2_2 + 0x20;
                    temp_a7_5 = temp_a1_3 - 0x40;
                    var_s5_3 = var_a3_4->unk16;
                    var_a4_2 = var_a3_4 + 0x20;
                    var_t3_3 = var_a3_4->unk1A;
                    var_v0_2 = var_a2_2->unkA - temp_s7;
                    var_v1_2 = var_a2_2->unk12 - temp_s7;
                    var_s4_3 = var_a3_4->unk1E;
                    var_a1_2 = var_a2_2->unk1A - temp_s7;
                    var_s3_3 = var_a2_2->unk1E - temp_s7;
loop_20:
                    var_a2_2->unkA = var_v0_2;
                    var_a2_2->unk12 = var_v1_2;
                    var_t0_2 = var_a3_4->unkE;
                    temp_a0_3 = var_a3_4->unk6;
                    temp_s0_3 = var_a3_4->unk2;
                    var_a2_2->unk1A = var_a1_2;
                    var_a2_2->unk1E = var_s3_3;
                    temp_s2_3 = var_a4_2->unk1E;
                    var_s1_3 = var_a4_2->unk1A;
                    temp_s3_4 = var_s4_3 - temp_s7;
                    var_a6_2 = var_a4_2 + 0x20;
                    temp_a1_4 = var_a4_2->unk16;
                    var_a2_2->unk16 = (s16) (var_t9_2 - temp_s7);
                    temp_t9_3 = var_t3_3 - temp_s7;
                    var_a2_2->unkE = (s16) (var_t1_3 - temp_s7);
                    temp_v1_5 = var_a3_4->unk12 - temp_s7;
                    var_a2_2->unk6 = (s16) (var_ra_3 - temp_s7);
                    temp_v0_5 = var_a3_4->unkA - temp_s7;
                    var_a2_2->unk2 = (s16) (var_t8_2 - temp_s7);
                    if (var_a3_4 != temp_a7_5) {
                        var_a3_4->unkA = temp_v0_5;
                        var_a3_4->unk12 = temp_v1_5;
                        temp_t1_2 = var_a4_2->unkE;
                        var_ra_3 = var_a4_2->unk6;
                        var_t8_2 = var_a4_2->unk2;
                        var_a3_4->unk1A = temp_t9_3;
                        var_a3_4->unk1E = temp_s3_4;
                        temp_s4_2 = var_a6_2->unk1E;
                        temp_t3_2 = var_a6_2->unk1A;
                        temp_s3_5 = temp_s2_3 - temp_s7;
                        var_a2_2 = var_a6_2 + 0x20;
                        temp_t2_2 = var_a6_2->unk16;
                        var_a3_4->unk16 = (s16) (var_s5_3 - temp_s7);
                        temp_t9_4 = var_s1_3 - temp_s7;
                        var_a3_4->unkE = (s16) (var_t0_2 - temp_s7);
                        temp_v1_6 = var_a4_2->unk12 - temp_s7;
                        var_a3_4->unk6 = (s16) (temp_a0_3 - temp_s7);
                        temp_v0_6 = var_a4_2->unkA - temp_s7;
                        var_a3_4->unk2 = (s16) (temp_s0_3 - temp_s7);
                        if (var_a4_2 != temp_a7_5) {
                            var_a4_2->unkA = temp_v0_6;
                            var_a4_2->unk12 = temp_v1_6;
                            var_t0_2 = var_a6_2->unkE;
                            temp_a0_4 = var_a6_2->unk6;
                            temp_s0_4 = var_a6_2->unk2;
                            var_a4_2->unk1A = temp_t9_4;
                            var_a4_2->unk1E = temp_s3_5;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            temp_s2_4 = var_a2_2->unk1E;
                            var_s1_3 = var_a2_2->unk1A;
                            temp_s3_6 = temp_s4_2 - temp_s7;
                            var_a3_4 = var_a2_2 + 0x20;
                            var_t9_2 = var_a2_2->unk16;
                            var_a4_2->unk16 = (s16) (temp_a1_4 - temp_s7);
                            var_a1_2 = temp_t3_2 - temp_s7;
                            var_a4_2->unkE = (s16) (temp_t1_2 - temp_s7);
                            temp_v1_7 = var_a6_2->unk12 - temp_s7;
                            var_a4_2->unk6 = (s16) (var_ra_3 - temp_s7);
                            temp_v0_7 = var_a6_2->unkA - temp_s7;
                            var_a4_2->unk2 = (s16) (var_t8_2 - temp_s7);
                            if (var_a6_2 != temp_a7_5) {
                                var_a6_2->unkA = temp_v0_7;
                                var_a6_2->unk12 = temp_v1_7;
                                var_t1_3 = var_a2_2->unkE;
                                var_ra_3 = var_a2_2->unk6;
                                var_t8_2 = var_a2_2->unk2;
                                var_a6_2->unk1A = var_a1_2;
                                var_a6_2->unk1E = temp_s3_6;
                                var_s4_3 = var_a3_4->unk1E;
                                var_t3_3 = var_a3_4->unk1A;
                                var_s3_3 = temp_s2_4 - temp_s7;
                                var_a4_2 = var_a3_4 + 0x20;
                                var_s5_3 = var_a3_4->unk16;
                                var_a6_2->unk16 = (s16) (temp_t2_2 - temp_s7);
                                var_a1_2 = var_s1_3 - temp_s7;
                                var_a6_2->unkE = (s16) (var_t0_2 - temp_s7);
                                var_v1_2 = var_a2_2->unk12 - temp_s7;
                                var_a6_2->unk6 = (s16) (temp_a0_4 - temp_s7);
                                var_v0_2 = var_a2_2->unkA - temp_s7;
                                var_a6_2->unk2 = (s16) (temp_s0_4 - temp_s7);
                                if (var_a2_2 == temp_a7_5) {
                                    var_s0_3 = var_a3_4;
                                    var_a6_2 = var_a2_2;
                                    var_t2_2 = var_v0_2;
                                    var_s1_3 = var_t3_3;
                                    var_t0_2 = var_t1_3;
                                    var_s3 = sp98;
                                    var_t1_4 = var_v1_2;
                                    var_s6 = (void *) spA0;
                                    var_t3_4 = var_s4_3;
                                    var_s4_4 = var_s3_3;
                                } else {
                                    goto loop_20;
                                }
                            } else {
                                var_t1_4 = temp_v1_7;
                                var_s5_3 = var_t9_2;
                                var_t9_2 = temp_t2_2;
                                var_t2_2 = temp_v0_7;
                                var_ra_3 = temp_a0_4;
                                var_t3_4 = temp_s2_4;
                                var_s4_4 = temp_s3_6;
                                var_s3 = sp98;
                                var_t8_2 = temp_s0_4;
                                var_s6 = (void *) spA0;
                                var_s0_3 = var_a2_2;
                            }
                        } else {
                            var_s5_3 = temp_t2_2;
                            var_t2_2 = temp_v0_6;
                            var_t0_2 = temp_t1_2;
                            var_s1_3 = temp_t3_2;
                            var_s0_3 = var_a6_2;
                            var_t9_2 = temp_a1_4;
                            var_a1_2 = temp_t9_4;
                            var_s4_4 = temp_s3_5;
                            var_a6_2 = var_a4_2;
                            var_t3_4 = temp_s4_2;
                            var_s3 = sp98;
                            var_t1_4 = temp_v1_6;
                            var_s6 = (void *) spA0;
                        }
                    } else {
                        var_a6_2 = var_a3_4;
                        var_t1_4 = temp_v1_5;
                        var_t2_2 = temp_v0_5;
                        var_ra_3 = temp_a0_3;
                        var_t8_2 = temp_s0_3;
                        var_t9_2 = var_s5_3;
                        var_t3_4 = temp_s2_3;
                        var_s5_3 = temp_a1_4;
                        var_s4_4 = temp_s3_4;
                        var_s3 = sp98;
                        var_a1_2 = temp_t9_3;
                        var_s6 = (void *) spA0;
                        var_s0_3 = var_a4_2;
                    }
                    var_a6_2->unk12 = var_t1_4;
                    var_a6_2->unkA = var_t2_2;
                    var_a6_2->unk1A = var_a1_2;
                    var_a6_2->unkE = (s16) (var_t0_2 - temp_s7);
                    var_a6_2->unk2 = (s16) (var_t8_2 - temp_s7);
                    var_a6_2->unk1E = var_s4_4;
                    var_a6_2->unk16 = (s16) (var_t9_2 - temp_s7);
                    var_a6_2->unk6 = (s16) (var_ra_3 - temp_s7);
                    var_s0_3->unk16 = (s16) (var_s5_3 - temp_s7);
                    var_s0_3->unk1E = (s16) (var_t3_4 - temp_s7);
                    var_s0_3->unk1A = (s16) (var_s1_3 - temp_s7);
                    var_s0_3->unkA = (s16) (var_s0_3->unkA - temp_s7);
                    var_s0_3->unk2 = (s16) (var_s0_3->unk2 - temp_s7);
                    var_s0_3->unk6 = (s16) (var_s0_3->unk6 - temp_s7);
                    var_s0_3->unkE = (s16) (var_s0_3->unkE - temp_s7);
                    var_s0_3->unk12 = (s16) (var_s0_3->unk12 - temp_s7);
                } else {
                    var_a0_2 = var_a2_2;
                    do {
                        temp_a4_2 = var_a0_2->unk1E;
                        temp_a3_4 = var_a0_2->unk1A;
                        temp_a2_2 = var_a0_2->unk16;
                        temp_v1_8 = var_a0_2->unk12;
                        temp_v0_8 = var_a0_2->unkE;
                        temp_at_2 = var_a0_2->unkA;
                        temp_a7_6 = var_a0_2->unk6;
                        temp_a5_2 = var_a0_2->unk2;
                        var_a0_2 += 0x20;
                        var_a0_2->unk-2 = (s16) (temp_a4_2 - temp_s7);
                        var_a0_2->unk-6 = (s16) (temp_a3_4 - temp_s7);
                        var_a0_2->unk-A = (s16) (temp_a2_2 - temp_s7);
                        var_a0_2->unk-E = (s16) (temp_v1_8 - temp_s7);
                        var_a0_2->unk-12 = (s16) (temp_v0_8 - temp_s7);
                        var_a0_2->unk-16 = (s16) (temp_at_2 - temp_s7);
                        var_a0_2->unk-1A = (s16) (temp_a7_6 - temp_s7);
                        var_a0_2->unk-1E = (s16) (temp_a5_2 - temp_s7);
                    } while (var_a0_2 != temp_a1_3);
                }
            }
        }
        sp48->unkA = (s16) (sp48->unkA - temp_s7);
        temp_s8->unk5A = (s16) (temp_s8->unk5A - temp_s7);
        sp60->unk48->unk4(sp48, sp60, sp50, var_s6, sp58, var_s3, sp40);
    } else {
        temp_s8->unk8 = (s32) temp_s8->unk60;
        if (var_s4 != 0) {
            var_a2_3 = var_s3 & 7;
            var_a0_3 = var_s6;
            temp_a1_5 = (var_s3 * 4) + var_s6;
            if (var_a2_3 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a0) */);
                    temp_a7_7 = var_a0_3->unk2;
                    var_a2_3 -= 1;
                    var_a0_3 += 4;
                    var_a7 = temp_a7_7 - temp_s7;
                    var_a0_3->unk-2 = var_a7;
                } while (var_a2_3 != 0);
            }
            temp_a3_5 = var_s3 >> 3;
            var_a2_4 = var_a0_3;
            if (temp_a3_5 != 0) {
                var_a5_3 = var_a2_4;
                if (temp_a3_5 >= 3) {
                    spA0 = (s64) var_s6;
                    sp98 = var_s3;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    var_t8_3 = var_a2_4->unk2;
                    var_ra_4 = var_a2_4->unk6;
                    var_t1_5 = var_a2_4->unkE;
                    var_t9_3 = var_a2_4->unk16;
                    sp90 = var_s4;
                    var_a3_5 = var_a2_4 + 0x20;
                    temp_a7_8 = temp_a1_5 - 0x40;
                    var_s5_4 = var_a3_5->unk16;
                    var_a4_3 = var_a3_5 + 0x20;
                    var_t3_5 = var_a3_5->unk1A;
                    var_v0_3 = var_a2_4->unkA - temp_s7;
                    var_v1_3 = var_a2_4->unk12 - temp_s7;
                    var_s4_5 = var_a3_5->unk1E;
                    var_a1_3 = var_a2_4->unk1A - temp_s7;
                    var_s3_4 = var_a2_4->unk1E - temp_s7;
loop_40:
                    var_a2_4->unkA = var_v0_3;
                    var_a2_4->unk12 = var_v1_3;
                    var_t0_3 = var_a3_5->unkE;
                    temp_a0_5 = var_a3_5->unk6;
                    temp_s0_5 = var_a3_5->unk2;
                    var_a2_4->unk1A = var_a1_3;
                    var_a2_4->unk1E = var_s3_4;
                    var_s2_3 = var_a4_3->unk1E;
                    var_s1_4 = var_a4_3->unk1A;
                    temp_s3_7 = var_s4_5 - temp_s7;
                    var_a6_3 = var_a4_3 + 0x20;
                    temp_a1_6 = var_a4_3->unk16;
                    var_a2_4->unk16 = (s16) (var_t9_3 - temp_s7);
                    temp_t9_5 = var_t3_5 - temp_s7;
                    var_a2_4->unkE = (s16) (var_t1_5 - temp_s7);
                    temp_v1_9 = var_a3_5->unk12 - temp_s7;
                    var_a2_4->unk6 = (s16) (var_ra_4 - temp_s7);
                    temp_v0_9 = var_a3_5->unkA - temp_s7;
                    var_a2_4->unk2 = (s16) (var_t8_3 - temp_s7);
                    if (var_a3_5 != temp_a7_8) {
                        var_a3_5->unkA = temp_v0_9;
                        var_a3_5->unk12 = temp_v1_9;
                        temp_t1_3 = var_a4_3->unkE;
                        var_ra_4 = var_a4_3->unk6;
                        var_t8_3 = var_a4_3->unk2;
                        var_a3_5->unk1A = temp_t9_5;
                        var_a3_5->unk1E = temp_s3_7;
                        temp_s4_3 = var_a6_3->unk1E;
                        temp_t3_3 = var_a6_3->unk1A;
                        temp_s3_8 = var_s2_3 - temp_s7;
                        var_a2_4 = var_a6_3 + 0x20;
                        temp_t2_3 = var_a6_3->unk16;
                        var_a3_5->unk16 = (s16) (var_s5_4 - temp_s7);
                        temp_t9_6 = var_s1_4 - temp_s7;
                        var_a3_5->unkE = (s16) (var_t0_3 - temp_s7);
                        temp_v1_10 = var_a4_3->unk12 - temp_s7;
                        var_a3_5->unk6 = (s16) (temp_a0_5 - temp_s7);
                        temp_v0_10 = var_a4_3->unkA - temp_s7;
                        var_a3_5->unk2 = (s16) (temp_s0_5 - temp_s7);
                        if (var_a4_3 != temp_a7_8) {
                            var_a4_3->unkA = temp_v0_10;
                            var_a4_3->unk12 = temp_v1_10;
                            var_t0_3 = var_a6_3->unkE;
                            temp_a0_6 = var_a6_3->unk6;
                            temp_s0_6 = var_a6_3->unk2;
                            var_a4_3->unk1A = temp_t9_6;
                            var_a4_3->unk1E = temp_s3_8;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            var_s2_3 = var_a2_4->unk1E;
                            var_s1_4 = var_a2_4->unk1A;
                            temp_s3_9 = temp_s4_3 - temp_s7;
                            var_a3_5 = var_a2_4 + 0x20;
                            var_t9_3 = var_a2_4->unk16;
                            var_a4_3->unk16 = (s16) (temp_a1_6 - temp_s7);
                            var_a1_3 = temp_t3_3 - temp_s7;
                            var_a4_3->unkE = (s16) (temp_t1_3 - temp_s7);
                            temp_v1_11 = var_a6_3->unk12 - temp_s7;
                            var_a4_3->unk6 = (s16) (var_ra_4 - temp_s7);
                            temp_v0_11 = var_a6_3->unkA - temp_s7;
                            var_a4_3->unk2 = (s16) (var_t8_3 - temp_s7);
                            if (var_a6_3 != temp_a7_8) {
                                var_a6_3->unkA = temp_v0_11;
                                var_a6_3->unk12 = temp_v1_11;
                                var_t1_5 = var_a2_4->unkE;
                                var_ra_4 = var_a2_4->unk6;
                                var_t8_3 = var_a2_4->unk2;
                                var_a6_3->unk1A = var_a1_3;
                                var_a6_3->unk1E = temp_s3_9;
                                var_s4_5 = var_a3_5->unk1E;
                                var_t3_5 = var_a3_5->unk1A;
                                var_s3_4 = var_s2_3 - temp_s7;
                                var_a4_3 = var_a3_5 + 0x20;
                                var_s5_4 = var_a3_5->unk16;
                                var_a6_3->unk16 = (s16) (temp_t2_3 - temp_s7);
                                var_a1_3 = var_s1_4 - temp_s7;
                                var_a6_3->unkE = (s16) (var_t0_3 - temp_s7);
                                var_v1_3 = var_a2_4->unk12 - temp_s7;
                                var_a6_3->unk6 = (s16) (temp_a0_6 - temp_s7);
                                var_v0_3 = var_a2_4->unkA - temp_s7;
                                var_a6_3->unk2 = (s16) (temp_s0_6 - temp_s7);
                                if (var_a2_4 == temp_a7_8) {
                                    var_t2_3 = var_a3_5;
                                    var_a6_3 = var_a2_4;
                                    var_s0_4 = var_v1_3;
                                    var_s2_3 = var_s4_5;
                                    var_s4 = sp90;
                                    var_t0_3 = var_t1_5;
                                    var_t1_6 = var_v0_3;
                                    var_s3 = sp98;
                                    var_s6 = (void *) spA0;
                                    var_s1_4 = var_t3_5;
                                    var_t3_6 = var_s3_4;
                                } else {
                                    goto loop_40;
                                }
                            } else {
                                var_t1_6 = temp_v0_11;
                                var_ra_4 = temp_a0_6;
                                var_s5_4 = var_t9_3;
                                var_t9_3 = temp_t2_3;
                                var_t8_3 = temp_s0_6;
                                var_s4 = sp90;
                                var_t3_6 = temp_s3_9;
                                var_s3 = sp98;
                                var_s0_4 = temp_v1_11;
                                var_s6 = (void *) spA0;
                                var_t2_3 = var_a2_4;
                            }
                        } else {
                            var_s0_4 = temp_v1_10;
                            var_t0_3 = temp_t1_3;
                            var_t1_6 = temp_v0_10;
                            var_s5_4 = temp_t2_3;
                            var_s1_4 = temp_t3_3;
                            var_t9_3 = temp_a1_6;
                            var_s2_3 = temp_s4_3;
                            temp_s6 = var_a6_3;
                            var_s4 = sp90;
                            var_a1_3 = temp_t9_6;
                            var_s3 = sp98;
                            var_t3_6 = temp_s3_8;
                            var_a6_3 = var_a4_3;
                            var_t2_3 = temp_s6;
                            var_s6 = (void *) spA0;
                        }
                    } else {
                        var_t2_3 = var_a4_3;
                        var_a6_3 = var_a3_5;
                        var_t1_6 = temp_v0_9;
                        var_ra_4 = temp_a0_5;
                        var_t9_3 = var_s5_4;
                        var_s5_4 = temp_a1_6;
                        var_s4 = sp90;
                        var_t3_6 = temp_s3_7;
                        var_s3 = sp98;
                        var_t8_3 = temp_s0_5;
                        var_s0_4 = temp_v1_9;
                        var_s6 = (void *) spA0;
                        var_a1_3 = temp_t9_5;
                    }
                    var_a6_3->unk12 = var_s0_4;
                    var_a6_3->unkA = var_t1_6;
                    var_a6_3->unk1E = var_t3_6;
                    var_a6_3->unk1A = var_a1_3;
                    var_a6_3->unkE = (s16) (var_t0_3 - temp_s7);
                    var_a6_3->unk16 = (s16) (var_t9_3 - temp_s7);
                    var_a6_3->unk2 = (s16) (var_t8_3 - temp_s7);
                    var_ra = sp80;
                    var_s2 = sp88;
                    var_a6_3->unk6 = (s16) (var_ra_4 - temp_s7);
                    var_t2_3->unk1E = (s16) (var_s2_3 - temp_s7);
                    var_t2_3->unk1A = (s16) (var_s1_4 - temp_s7);
                    var_t2_3->unk16 = (s16) (var_s5_4 - temp_s7);
                    var_s5 = sp78;
                    var_t2_3->unk2 = (s16) (var_t2_3->unk2 - temp_s7);
                    var_a7 = var_t2_3->unk12 - temp_s7;
                    var_t2_3->unk12 = var_a7;
                    var_t2_3->unkA = (s16) (var_t2_3->unkA - temp_s7);
                    var_t2_3->unk6 = (s16) (var_t2_3->unk6 - temp_s7);
                    var_s1 = sp68;
                    var_t2_3->unkE = (s16) (var_t2_3->unkE - temp_s7);
                    var_s0 = sp70;
                } else {
                    do {
                        temp_a4_3 = var_a5_3->unk1E;
                        temp_a3_6 = var_a5_3->unk1A;
                        temp_a2_3 = var_a5_3->unk16;
                        temp_a0_7 = var_a5_3->unk12;
                        temp_v1_12 = var_a5_3->unkE;
                        temp_v0_12 = var_a5_3->unkA;
                        temp_at_3 = var_a5_3->unk6;
                        temp_a7_9 = var_a5_3->unk2;
                        var_a5_3 += 0x20;
                        var_a5_3->unk-2 = (s16) (temp_a4_3 - temp_s7);
                        var_a5_3->unk-6 = (s16) (temp_a3_6 - temp_s7);
                        var_a5_3->unk-A = (s16) (temp_a2_3 - temp_s7);
                        var_a5_3->unk-E = (s16) (temp_a0_7 - temp_s7);
                        var_a5_3->unk-12 = (s16) (temp_v1_12 - temp_s7);
                        var_a5_3->unk-16 = (s16) (temp_v0_12 - temp_s7);
                        var_a5_3->unk-1A = (s16) (temp_at_3 - temp_s7);
                        var_a7 = temp_a7_9 - temp_s7;
                        var_a5_3->unk-1E = var_a7;
                    } while (var_a5_3 != temp_a1_5);
                }
            }
            sp80 = var_ra;
        }
        sp48->unkA = (s16) (sp48->unkA - temp_s7);
        sp80 = var_ra;
        temp_s8->unk5A = (s16) (temp_s8->unk5A - temp_s7);
        sp60->unk48->unk4(sp48, sp60, sp50, var_s6, sp58, var_s3, sp40, var_a7);
        temp_s8->unk8 = (s32) temp_s8->unk64;
        if (var_s4 != 0) {
            var_a2_5 = var_s3 & 7;
            var_a0_4 = var_s6;
            temp_a1_7 = (var_s3 * 4) + var_s6;
            if (var_a2_5 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a0) */);
                    temp_a7_10 = var_a0_4->unk2;
                    var_a2_5 -= 1;
                    var_a0_4 += 4;
                    var_a0_4->unk-2 = (s16) (temp_a7_10 + temp_s7);
                } while (var_a2_5 != 0);
            }
            temp_a3_7 = var_s3 >> 3;
            var_a2_6 = var_a0_4;
            if (temp_a3_7 != 0) {
                var_a5_4 = var_a2_6;
                if (temp_a3_7 >= 3) {
                    spA0 = (s64) var_s6;
                    sp88 = var_s2;
                    sp98 = var_s3;
                    M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                    sp70 = var_s0;
                    sp68 = var_s1;
                    var_t8_4 = var_a2_6->unk2;
                    var_ra_5 = var_a2_6->unk6;
                    var_t1_7 = var_a2_6->unkE;
                    var_t9_4 = var_a2_6->unk16;
                    sp78 = var_s5;
                    var_a3_6 = var_a2_6 + 0x20;
                    temp_a7_11 = temp_a1_7 - 0x40;
                    var_s5_5 = var_a3_6->unk16;
                    var_a4_4 = var_a3_6 + 0x20;
                    var_t3_7 = var_a3_6->unk1A;
                    var_v0_4 = var_a2_6->unkA + temp_s7;
                    var_v1_4 = var_a2_6->unk12 + temp_s7;
                    var_s4_6 = var_a3_6->unk1E;
                    var_a1_4 = var_a2_6->unk1A + temp_s7;
                    var_s3_5 = var_a2_6->unk1E + temp_s7;
loop_53:
                    var_a2_6->unkA = var_v0_4;
                    var_a2_6->unk12 = var_v1_4;
                    var_t0_4 = var_a3_6->unkE;
                    temp_a0_8 = var_a3_6->unk6;
                    temp_s0_7 = var_a3_6->unk2;
                    var_a2_6->unk1A = var_a1_4;
                    var_a2_6->unk1E = var_s3_5;
                    temp_s2_5 = var_a4_4->unk1E;
                    var_s1_5 = var_a4_4->unk1A;
                    temp_s3_10 = var_s4_6 + temp_s7;
                    var_a6_4 = var_a4_4 + 0x20;
                    temp_a1_8 = var_a4_4->unk16;
                    var_a2_6->unk16 = (s16) (var_t9_4 + temp_s7);
                    temp_t9_7 = var_t3_7 + temp_s7;
                    var_a2_6->unkE = (s16) (var_t1_7 + temp_s7);
                    temp_v1_13 = var_a3_6->unk12 + temp_s7;
                    var_a2_6->unk6 = (s16) (var_ra_5 + temp_s7);
                    temp_v0_13 = var_a3_6->unkA + temp_s7;
                    var_a2_6->unk2 = (s16) (var_t8_4 + temp_s7);
                    if (var_a3_6 != temp_a7_11) {
                        var_a3_6->unkA = temp_v0_13;
                        var_a3_6->unk12 = temp_v1_13;
                        temp_t1_4 = var_a4_4->unkE;
                        var_ra_5 = var_a4_4->unk6;
                        var_t8_4 = var_a4_4->unk2;
                        var_a3_6->unk1A = temp_t9_7;
                        var_a3_6->unk1E = temp_s3_10;
                        temp_s4_4 = var_a6_4->unk1E;
                        temp_t3_4 = var_a6_4->unk1A;
                        temp_s3_11 = temp_s2_5 + temp_s7;
                        var_a2_6 = var_a6_4 + 0x20;
                        temp_t2_4 = var_a6_4->unk16;
                        var_a3_6->unk16 = (s16) (var_s5_5 + temp_s7);
                        temp_t9_8 = var_s1_5 + temp_s7;
                        var_a3_6->unkE = (s16) (var_t0_4 + temp_s7);
                        temp_v1_14 = var_a4_4->unk12 + temp_s7;
                        var_a3_6->unk6 = (s16) (temp_a0_8 + temp_s7);
                        temp_v0_14 = var_a4_4->unkA + temp_s7;
                        var_a3_6->unk2 = (s16) (temp_s0_7 + temp_s7);
                        if (var_a4_4 != temp_a7_11) {
                            var_a4_4->unkA = temp_v0_14;
                            var_a4_4->unk12 = temp_v1_14;
                            var_t0_4 = var_a6_4->unkE;
                            temp_a0_9 = var_a6_4->unk6;
                            temp_s0_8 = var_a6_4->unk2;
                            var_a4_4->unk1A = temp_t9_8;
                            var_a4_4->unk1E = temp_s3_11;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x102($a2) */);
                            temp_s2_6 = var_a2_6->unk1E;
                            var_s1_5 = var_a2_6->unk1A;
                            temp_s3_12 = temp_s4_4 + temp_s7;
                            var_a3_6 = var_a2_6 + 0x20;
                            var_t9_4 = var_a2_6->unk16;
                            var_a4_4->unk16 = (s16) (temp_a1_8 + temp_s7);
                            var_a1_4 = temp_t3_4 + temp_s7;
                            var_a4_4->unkE = (s16) (temp_t1_4 + temp_s7);
                            temp_v1_15 = var_a6_4->unk12 + temp_s7;
                            var_a4_4->unk6 = (s16) (var_ra_5 + temp_s7);
                            temp_v0_15 = var_a6_4->unkA + temp_s7;
                            var_a4_4->unk2 = (s16) (var_t8_4 + temp_s7);
                            if (var_a6_4 != temp_a7_11) {
                                var_a6_4->unkA = temp_v0_15;
                                var_a6_4->unk12 = temp_v1_15;
                                var_t1_7 = var_a2_6->unkE;
                                var_ra_5 = var_a2_6->unk6;
                                var_t8_4 = var_a2_6->unk2;
                                var_a6_4->unk1A = var_a1_4;
                                var_a6_4->unk1E = temp_s3_12;
                                var_s4_6 = var_a3_6->unk1E;
                                var_t3_7 = var_a3_6->unk1A;
                                var_s3_5 = temp_s2_6 + temp_s7;
                                var_a4_4 = var_a3_6 + 0x20;
                                var_s5_5 = var_a3_6->unk16;
                                var_a6_4->unk16 = (s16) (temp_t2_4 + temp_s7);
                                var_a1_4 = var_s1_5 + temp_s7;
                                var_a6_4->unkE = (s16) (var_t0_4 + temp_s7);
                                var_v1_4 = var_a2_6->unk12 + temp_s7;
                                var_a6_4->unk6 = (s16) (temp_a0_9 + temp_s7);
                                var_v0_4 = var_a2_6->unkA + temp_s7;
                                var_a6_4->unk2 = (s16) (temp_s0_8 + temp_s7);
                                if (var_a2_6 == temp_a7_11) {
                                    var_a6_4 = var_a3_6;
                                    var_s0_5 = var_a2_6;
                                    var_t2_4 = var_v1_4;
                                    var_t0_4 = var_t1_7;
                                    var_t1_8 = var_v0_4;
                                    var_s3 = sp98;
                                    var_s1_5 = var_t3_7;
                                    var_s6 = (void *) spA0;
                                    var_t3_8 = var_s4_6;
                                    var_s4_7 = var_s3_5;
                                } else {
                                    goto loop_53;
                                }
                            } else {
                                var_s5_5 = var_t9_4;
                                var_t9_4 = temp_t2_4;
                                var_t2_4 = temp_v1_15;
                                var_t1_8 = temp_v0_15;
                                var_ra_5 = temp_a0_9;
                                var_t8_4 = temp_s0_8;
                                var_t3_8 = temp_s2_6;
                                var_s4_7 = temp_s3_12;
                                var_s3 = sp98;
                                var_s0_5 = var_a6_4;
                                var_s6 = (void *) spA0;
                                var_a6_4 = var_a2_6;
                            }
                        } else {
                            var_s0_5 = var_a4_4;
                            var_s5_5 = temp_t2_4;
                            var_t2_4 = temp_v1_14;
                            var_t0_4 = temp_t1_4;
                            var_t1_8 = temp_v0_14;
                            var_t9_4 = temp_a1_8;
                            var_s6 = (void *) spA0;
                            var_s1_5 = temp_t3_4;
                            var_s4_7 = temp_s3_11;
                            var_t3_8 = temp_s4_4;
                            var_a1_4 = temp_t9_8;
                            var_s3 = sp98;
                        }
                    } else {
                        var_a6_4 = var_a4_4;
                        var_t2_4 = temp_v1_13;
                        var_t1_8 = temp_v0_13;
                        var_ra_5 = temp_a0_8;
                        var_t8_4 = temp_s0_7;
                        var_t9_4 = var_s5_5;
                        var_t3_8 = temp_s2_5;
                        var_s5_5 = temp_a1_8;
                        var_s4_7 = temp_s3_10;
                        var_s3 = sp98;
                        var_a1_4 = temp_t9_7;
                        var_s0_5 = var_a3_6;
                        var_s6 = (void *) spA0;
                    }
                    var_s0_5->unk12 = var_t2_4;
                    var_s0_5->unkA = var_t1_8;
                    var_s0_5->unk1A = var_a1_4;
                    var_s0_5->unkE = (s16) (var_t0_4 + temp_s7);
                    var_s0_5->unk2 = (s16) (var_t8_4 + temp_s7);
                    var_s0_5->unk1E = var_s4_7;
                    var_s0_5->unk16 = (s16) (var_t9_4 + temp_s7);
                    var_s0_5->unk6 = (s16) (var_ra_5 + temp_s7);
                    var_a6_4->unk1A = (s16) (var_s1_5 + temp_s7);
                    var_a6_4->unk16 = (s16) (var_s5_5 + temp_s7);
                    var_a6_4->unk1E = (s16) (var_t3_8 + temp_s7);
                    var_a6_4->unk2 = (s16) (var_a6_4->unk2 + temp_s7);
                    var_a6_4->unk6 = (s16) (var_a6_4->unk6 + temp_s7);
                    var_a6_4->unkE = (s16) (var_a6_4->unkE + temp_s7);
                    var_a6_4->unkA = (s16) (var_a6_4->unkA + temp_s7);
                    var_a6_4->unk12 = (s16) (var_a6_4->unk12 + temp_s7);
                } else {
                    do {
                        temp_a4_4 = var_a5_4->unk1E;
                        temp_a3_8 = var_a5_4->unk1A;
                        temp_a2_4 = var_a5_4->unk16;
                        temp_a0_10 = var_a5_4->unk12;
                        temp_v1_16 = var_a5_4->unkE;
                        temp_v0_16 = var_a5_4->unkA;
                        temp_at_4 = var_a5_4->unk6;
                        temp_a7_12 = var_a5_4->unk2;
                        var_a5_4 += 0x20;
                        var_a5_4->unk-2 = (s16) (temp_a4_4 + temp_s7);
                        var_a5_4->unk-6 = (s16) (temp_a3_8 + temp_s7);
                        var_a5_4->unk-A = (s16) (temp_a2_4 + temp_s7);
                        var_a5_4->unk-E = (s16) (temp_a0_10 + temp_s7);
                        var_a5_4->unk-12 = (s16) (temp_v1_16 + temp_s7);
                        var_a5_4->unk-16 = (s16) (temp_v0_16 + temp_s7);
                        var_a5_4->unk-1A = (s16) (temp_at_4 + temp_s7);
                        var_a5_4->unk-1E = (s16) (temp_a7_12 + temp_s7);
                    } while (var_a5_4 != temp_a1_7);
                }
            }
        }
        sp48->unkA = (s16) (sp48->unkA + temp_s7);
        temp_s8->unk5A = (s16) (temp_s8->unk5A + temp_s7);
        sp60->unk48->unk4(sp48, sp60, sp50, var_s6, sp58, var_s3, sp40);
    }
    temp_s8->unk8 = (s32) sp0;
    sp60->unk48 = (void *) sp8;
    temp_s8->unk68 = 0;
}

void nfbStereoCopyArea(s32 arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, s32 arg7, s32 arg_sp4) {
    s64 sp80;
    s64 sp78;
    s64 sp18;
    s64 sp10;
    s32 sp4;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s5;
    s32 var_s5_2;
    u16 temp_s4;
    void *temp_s1;
    void *temp_t2;

    temp_t2 = arg2->unk48;
    temp_s1 = *(arg2->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x49554)->unk-30F4 * 4));
    temp_t3 = temp_s1->unk8;
    if (arg1->unk0 != 1) {
        temp_s4 = arg1->unk10->unk74->unkE2;
        arg2->unk48 = (void *) temp_s1->unk5C;
        temp_s1->unk68 = 1;
        if (arg1->unk10->unk74->unkDC != 1) {
            var_s5 = arg_sp4;
            temp_s1->unk8 = (s32) temp_s1->unk64;
            temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
            if (arg0 == arg1) {
                sp18 = arg6;
                sp10 = arg5;
                sp80 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                var_s5 += temp_s4;
            } else {
                sp18 = arg6;
                sp10 = arg5;
                sp80 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                arg1->unkA = (s16) (arg1->unkA + temp_s4);
            }
            sp4 = var_s5;
            temp_v0 = arg2->unk48->unkC(arg0, arg1, arg2, arg3, arg4, sp10, sp18, arg7);
            if (temp_v0 != 0) {
                arg1->unk10->unk15C(temp_v0);
            }
            temp_s1->unk8 = (s32) temp_s1->unk60;
            if (arg0 == arg1) {
                var_s5 -= temp_s4;
            } else {
                arg1->unkA = (s16) (arg1->unkA - temp_s4);
            }
            temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
            sp4 = var_s5;
            arg2->unk48->unkC(arg0, arg1, arg2, arg3, arg4, sp10, sp18, arg7);
        } else {
            var_s5_2 = arg_sp4;
            temp_s1->unk8 = (s32) temp_s1->unk60;
            temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
            if (arg0 == arg1) {
                sp18 = arg6;
                sp10 = arg5;
                sp80 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                var_s5_2 -= temp_s4;
            } else {
                sp18 = arg6;
                sp10 = arg5;
                sp80 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                arg1->unkA = (s16) (arg1->unkA - temp_s4);
            }
            sp4 = var_s5_2;
            temp_v0_2 = arg2->unk48->unkC(arg0, arg1, arg2, arg3, arg4, sp10, sp18, arg7);
            if (temp_v0_2 != 0) {
                arg1->unk10->unk15C(temp_v0_2);
            }
            temp_s1->unk8 = (s32) temp_s1->unk64;
            if (arg0 == arg1) {
                var_s5_2 += temp_s4;
            } else {
                arg1->unkA = (s16) (arg1->unkA + temp_s4);
            }
            temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
            sp4 = var_s5_2;
            arg2->unk48->unkC(arg0, arg1, arg2, arg3, arg4, sp10, sp18, arg7);
        }
        temp_s1->unk8 = (s32) sp80;
        arg2->unk48 = (void *) sp78;
        temp_s1->unk68 = 0;
        return;
    }
    sp4 = arg_sp4;
    temp_t2->unkC(arg0, arg1, arg2, arg3, arg4, arg6, arg7);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x88, 0x8c], gap at: 0x50. */
void nfbStereoPutImage(void *arg0, void *arg1, s64 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC) {
    void *temp_s1;
    void *temp_v1;

    unksp78 = arg7;
    unksp70 = arg2;
    temp_v1 = arg1->unk48;
    temp_s1 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x491E8)->unk-30F4 * 4));
    arg1->unk48 = (void *) temp_s1->unk5C;
    temp_s1->unk68 = 1;
    unksp50 = (s64) temp_v1;
    unksp80 = (s64) arg0->unk10->unk74->unkE2;
    unksp48 = (s64) temp_s1->unk8;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + unksp80);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + unksp80);
        arg1->unk48->unk8(arg0, arg1, unksp70, arg3, arg4, arg5, arg6, unksp78, arg_sp4, arg_spC);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - unksp80);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - unksp80);
        arg1->unk48->unk8(arg0, arg1, unksp70, arg3, arg4, arg5, arg6, unksp78, arg_sp4, arg_spC);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - unksp80);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - unksp80);
        arg1->unk48->unk8(arg0, arg1, unksp70, arg3, arg4, arg5, arg6, unksp78, arg_sp4, arg_spC);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + unksp80);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + unksp80);
        arg1->unk48->unk8(arg0, arg1, unksp70, arg3, arg4, arg5, arg6, unksp78, arg_sp4, arg_spC);
    }
    temp_s1->unk8 = (s32) unksp48;
    arg1->unk48 = (void *) unksp50;
    temp_s1->unk68 = 0;
}

void nfbStereoCopyPlane(s32 arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC) {
    s64 sp88;
    s64 sp78;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 spC;
    s32 sp4;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s5;
    s32 var_s5_2;
    u16 temp_s4;
    void *temp_s3;
    void *temp_t2;

    temp_t2 = arg2->unk48;
    temp_s3 = *(arg2->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x48F64)->unk-30F4 * 4));
    temp_t3 = temp_s3->unk8;
    if (arg1->unk0 != 1) {
        temp_s4 = arg1->unk10->unk74->unkE2;
        arg2->unk48 = (void *) temp_s3->unk5C;
        temp_s3->unk68 = 1;
        if (arg1->unk10->unk74->unkDC != 1) {
            var_s5 = arg_sp4;
            temp_s3->unk8 = (s32) temp_s3->unk64;
            temp_s3->unk5A = (s16) (temp_s3->unk5A + temp_s4);
            if (arg0 == arg1) {
                sp28 = arg7;
                sp20 = arg6;
                sp18 = arg5;
                sp88 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                var_s5 += temp_s4;
            } else {
                sp28 = arg7;
                sp20 = arg6;
                sp18 = arg5;
                sp88 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                arg1->unkA = (s16) (arg1->unkA + temp_s4);
            }
            spC = arg_spC;
            sp4 = var_s5;
            temp_v0 = arg2->unk48->unk10(arg0, arg1, arg2, arg3, arg4, sp18, sp20, sp28);
            if (temp_v0 != 0) {
                arg1->unk10->unk15C(temp_v0);
            }
            temp_s3->unk8 = (s32) temp_s3->unk60;
            temp_s3->unk5A = (s16) (temp_s3->unk5A - temp_s4);
            if (arg0 == arg1) {
                var_s5 -= temp_s4;
            } else {
                arg1->unkA = (s16) (arg1->unkA - temp_s4);
            }
            spC = arg_spC;
            sp4 = var_s5;
            arg2->unk48->unk10(arg0, arg1, arg2, arg3, arg4, sp18, sp20, sp28);
        } else {
            var_s5_2 = arg_sp4;
            temp_s3->unk8 = (s32) temp_s3->unk60;
            temp_s3->unk5A = (s16) (temp_s3->unk5A - temp_s4);
            if (arg0 == arg1) {
                sp28 = arg7;
                sp20 = arg6;
                sp18 = arg5;
                sp88 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                var_s5_2 -= temp_s4;
            } else {
                sp28 = arg7;
                sp20 = arg6;
                sp18 = arg5;
                sp88 = (s64) temp_t3;
                sp78 = (s64) temp_t2;
                arg1->unkA = (s16) (arg1->unkA - temp_s4);
            }
            spC = arg_spC;
            sp4 = var_s5_2;
            temp_v0_2 = arg2->unk48->unk10(arg0, arg1, arg2, arg3, arg4, sp18, sp20, sp28);
            if (temp_v0_2 != 0) {
                arg1->unk10->unk15C(temp_v0_2);
            }
            temp_s3->unk8 = (s32) temp_s3->unk64;
            temp_s3->unk5A = (s16) (temp_s3->unk5A + temp_s4);
            if (arg0 == arg1) {
                var_s5_2 += temp_s4;
            } else {
                arg1->unkA = (s16) (arg1->unkA + temp_s4);
            }
            spC = arg_spC;
            sp4 = var_s5_2;
            arg2->unk48->unk10(arg0, arg1, arg2, arg3, arg4, sp18, sp20, sp28);
        }
        temp_s3->unk8 = (s32) sp88;
        arg2->unk48 = (void *) sp78;
        temp_s3->unk68 = 0;
        return;
    }
    spC = arg_spC;
    sp4 = arg_sp4;
    temp_t2->unk10(arg0, arg1, arg2, arg3, arg4, arg7);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54], gap at: 0x30. */
void nfbStereoPolyPoint(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    u16 temp_s4;
    void *temp_s0;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s0 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x48BDC)->unk-30F4 * 4));
    temp_s4 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s0->unk5C;
    temp_s0->unk68 = 1;
    unksp28 = (s64) temp_s0->unk8;
    unksp30 = (s64) temp_v1;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s4);
        arg1->unk48->unk14(arg0, arg1, arg2, arg3, arg4);
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s4);
        arg1->unk48->unk14(arg0, arg1, arg2, arg3, arg4);
    } else {
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s4);
        arg1->unk48->unk14(arg0, arg1, arg2, arg3, arg4);
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s4);
        arg1->unk48->unk14(arg0, arg1, arg2, arg3, arg4);
    }
    temp_s0->unk8 = (s32) unksp28;
    arg1->unk48 = (void *) unksp30;
    temp_s0->unk68 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64], gap at: 0x40. */
void nfbStereoImageGlyphBlt(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    u16 temp_s7;
    void *temp_s0;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s0 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x489E8)->unk-30F4 * 4));
    temp_s7 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s0->unk5C;
    temp_s0->unk68 = 1;
    unksp40 = (s64) temp_v1;
    unksp38 = (s64) temp_s0->unk8;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s7);
        arg1->unk48->unk44(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s7);
        arg1->unk48->unk44(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    } else {
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s7);
        arg1->unk48->unk44(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s7);
        arg1->unk48->unk44(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    }
    temp_s0->unk8 = (s32) unksp38;
    arg1->unk48 = (void *) unksp40;
    temp_s0->unk68 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64], gap at: 0x40. */
void nfbStereoPolyGlyphBlt(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    u16 temp_s7;
    void *temp_s0;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s0 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x484EC)->unk-30F4 * 4));
    temp_s7 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s0->unk5C;
    temp_s0->unk68 = 1;
    unksp40 = (s64) temp_v1;
    unksp38 = (s64) temp_s0->unk8;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s7);
        arg1->unk48->unk48(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s7);
        arg1->unk48->unk48(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    } else {
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s7);
        arg1->unk48->unk48(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s7);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s7);
        arg1->unk48->unk48(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    }
    temp_s0->unk8 = (s32) unksp38;
    arg1->unk48 = (void *) unksp40;
    temp_s0->unk68 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x38. */
void nfbStereoImageText16(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    u16 temp_s4;
    void *temp_s1;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s1 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x482B8)->unk-30F4 * 4));
    temp_s4 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s1->unk5C;
    temp_s1->unk68 = 1;
    unksp30 = (s64) temp_s1->unk8;
    unksp38 = (s64) temp_v1;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk40(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk40(arg0, arg1, arg2, arg3, arg4, arg5);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk40(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk40(arg0, arg1, arg2, arg3, arg4, arg5);
    }
    temp_s1->unk8 = (s32) unksp30;
    arg1->unk48 = (void *) unksp38;
    temp_s1->unk68 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x38. */
void nfbStereoImageText8(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    u16 temp_s4;
    void *temp_s1;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s1 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x480A4)->unk-30F4 * 4));
    temp_s4 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s1->unk5C;
    temp_s1->unk68 = 1;
    unksp30 = (s64) temp_s1->unk8;
    unksp38 = (s64) temp_v1;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk3C(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk3C(arg0, arg1, arg2, arg3, arg4, arg5);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk3C(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk3C(arg0, arg1, arg2, arg3, arg4, arg5);
    }
    temp_s1->unk8 = (s32) unksp30;
    arg1->unk48 = (void *) unksp38;
    temp_s1->unk68 = 0;
}

s32 nfbSetStereoMode(void *arg0, u16 arg1, u16 arg2, s32 arg3) {
    s64 spA8;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    ? sp48;
    s32 sp44;
    s32 sp40;
    ? sp3C;
    void *sp38;
    u16 sp36;                                       /* compiler-managed */
    s16 sp34;
    u16 sp32;                                       /* compiler-managed */
    s16 sp30;
    ? *sp2C;
    s32 sp24;
    s32 *sp1C;
    s32 sp14;
    s32 *spC;
    s32 sp4;
    ? (*temp_t9_2)(s64, s32, ?);
    s16 temp_a3;
    s16 temp_a3_2;
    s16 temp_at;
    s16 temp_t0;
    s16 var_a4;
    s16 var_a5;
    s32 *var_t2;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t9;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a7;
    s32 var_t3;
    s64 var_a0;
    u32 temp_v1;
    u32 temp_v1_2;
    u8 *var_a6;
    u8 temp_at_2;
    void *temp_a0;
    void *temp_a5;
    void *temp_gp;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a3_3;
    void *var_s1;
    void *var_s1_2;
    void *var_s1_3;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    temp_v0 = arg0->unk74;
    temp_a6 = temp_v0->unkDC;
    temp_a7 = arg0->unk0;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x47E90;
    if (arg3 == temp_a6) {
        goto block_27;
    }
    if (temp_a6 == 0) {
        goto block_5;
    }
    if (arg3 == 0) {
        goto block_5;
    }
    return 8;
block_5:
    temp_a0 = (temp_a7 * 0xC) + (&sub_5e520000 - 0x7120);
    temp_a6_2 = rrmScreenPrivateIndex * 4;
    if (arg3 == 0) {
        goto block_35;
    }
    temp_v0->unkE4 = (void *) arg0->unkD8;
    temp_v0->unkE8 = (void *) arg0->unkDC;
    temp_v0->unkEC = (void *) arg0->unkE0;
    temp_v0->unkF0 = (s32) (*(arg0->unk1B4 + temp_a6_2))->unk1C;
    temp_v0->unkF4 = (s32) (*(arg0->unk1B4 + temp_a6_2))->unk24;
    temp_v0->unkF8 = (s32) (*(arg0->unk1B4 + temp_a6_2))->unk4C;
    arg0->unkE0 = (void *) (&sub_5e4d0000 - 0x598C);
    arg0->unkDC = (void *) (&sub_5e4d0000 - 0x5CFC);
    arg0->unkD8 = (void *) (&sub_5e4d0000 - 0x5B44);
    (*(arg0->unk1B4 + temp_a6_2))->unk1C = (void *) (&sub_5e4d0000 - 0x5004);
    (*(arg0->unk1B4 + temp_a6_2))->unk24 = (void *) (&sub_5e4d0000 - 0x6F64);
    (*(arg0->unk1B4 + temp_a6_2))->unk4C = (void *) (&sub_5e4d0000 - 0x4CD8);
    temp_at = arg0->unkA;
    var_a5 = 1;
    temp_v0->unkE2 = arg2;
    temp_v0->unkE0 = (u16) ((temp_at >= (arg1 + arg2)) ? arg1 : ((temp_at - arg2) & 0xFFFF));
    if (arg3 == 1) {
        goto block_29;
    }
    sp30 = 0;
    sp60 = (s64) temp_v0;
    var_a4 = arg0->unk8;
    sp32 = 0;
    sp34 = var_a4;
    sp78 = (s64) temp_a0;
    sp36 = temp_v0->unkE0;
block_8:
    sp30 = 0;
    arg0->unk154(sp78, &sp30, 0, &rrmScreenPrivateIndex, var_a4, var_a5, temp_a6_2, temp_a7);
block_9:
    sp68 = temp_gp->unk-7594(0);
    temp_a3 = arg0->unk78;
    var_t3 = 0;
    sp70 = temp_gp->unk-7594(0);
    if (temp_a3 <= 0) {
        goto block_24;
    }
    var_t2 = sp60->unk58;
    temp_t9 = var_t2 + (temp_a3 * 0x14);
    goto loop_15;
block_12:
    if (var_a3 != 0) {
        goto block_25;
    }
    sp38 = var_s1;
block_14:
    var_t3 += 0x24;
    if (var_t2 == temp_t9) {
        goto block_24;
    }
loop_15:
    var_a3_2 = 0;
    var_t2 += 0x14;
    if (*((*var_t2 * 4) + sp60->unk30) != 0) {
        goto block_14;
    }
    temp_t0 = arg0->unk10;
    var_s1 = arg0->unk7C + var_t3;
    if (temp_t0 <= 0) {
        goto block_28;
    }
    var_a6 = arg0->unk14;
loop_18:
    temp_at_2 = *var_a6;
    var_a6 += 8;
    var_a7 = var_a3_2;
    if (temp_at_2 == var_s1->unkA) {
        goto block_21;
    }
    var_a3_2 += 1;
    if (var_a3_2 != temp_t0) {
        goto loop_18;
    }
block_20:
    var_a7 = var_a3_2;
block_21:
    var_a3 = 0;
    if (var_a7 >= temp_t0) {
        goto block_12;
    }
    if ((arg0->unk14 + (var_a7 * 8))->unk2 == 0) {
        goto block_12;
    }
    var_a3 = 1;
    goto block_12;
block_24:
    var_s1 = sp38;
block_25:
    if (temp_gp->unk-72A8(sp70, arg0, var_s1, &sp3C, 0, *serverClient) == 0) {
        goto block_30;
    }
    return 0;
block_27:
    return 0;
block_28:
    var_a3_2 = 0;
    goto block_20;
block_29:
    sp30 = 0;
    var_a5 = arg0->unk8;
    sp34 = var_a5;
    var_a4 = (s16) temp_v0->unkE2;
    sp32 = var_a4;
    sp60 = (s64) temp_v0;
    sp78 = (s64) temp_a0;
    sp36 = temp_v0->unkE0 + temp_v0->unkE2;
    goto block_8;
block_30:
    sp40 = 0;
    sp44 = (s32) sp70;
    spC = &sp40;
    sp4 = 0x2008;
    sp14 = (s32) var_s1->unkA;
    sp1C = serverClient;
    sp2C = &sp48;
    sp24 = var_s1->unk0;
    temp_v0_2 = temp_gp->unk-7278(sp68, *(WindowTable + (arg0->unk0 * 4)), 0, 0, arg0->unk8, arg0->unkA, 0, 1);
    if (temp_v0_2 != NULL) {
        goto block_32;
    }
    return 0;
block_32:
    if (temp_gp->unk-72D4(sp68, 0xC0000001, temp_v0_2) == 0) {
        goto block_61;
    }
    temp_v0_2->unk7C = (s32) (temp_v0_2->unk7C | 0x8000);
    if (arg3 == 0) {
        goto block_36;
    }
    temp_gp->unk-7528(temp_v0_2, serverClient);
    sp58 = (s64) temp_v0_2;
    goto block_37;
block_35:
    arg0->unkD8 = (void *) temp_v0->unkE4;
    arg0->unkDC = (void *) temp_v0->unkE8;
    arg0->unkE0 = (void *) temp_v0->unkEC;
    (*(arg0->unk1B4 + temp_a6_2))->unk1C = (s32) temp_v0->unkF0;
    temp_a7_2 = temp_v0->unkF4;
    (*(arg0->unk1B4 + temp_a6_2))->unk24 = temp_a7_2;
    temp_a5 = *(arg0->unk1B4 + temp_a6_2);
    temp_a4 = temp_v0->unkF8;
    temp_a5->unk4C = temp_a4;
    sp30 = 0;
    temp_a3_2 = arg0->unk8;
    sp32 = 0;
    sp34 = temp_a3_2;
    sp36 = arg0->unkA;
    sp60 = (s64) temp_v0;
    sp78 = (s64) temp_a0;
    arg0->unk154((s64) temp_a0, &sp30, 0, (s32 *) temp_a3_2, (s16) temp_a4, (s16) temp_a5, temp_a6_2, temp_a7_2);
    goto block_9;
block_36:
    sp58 = (s64) temp_v0_2;
block_37:
    var_s1_2 = *(WindowTable + (arg0->unk0 * 4));
    sp50 = (s64) var_s1_2;
    if (arg3 == 0) {
        goto block_43;
    }
block_38:
    temp_a0_2 = var_s1_2 + 0x48;
    arg0->unk164(temp_a0_2, temp_a0_2, sp78);
    temp_a0_3 = var_s1_2 + 0x54;
    arg0->unk164(temp_a0_3, temp_a0_3, sp78);
block_39:
    temp_v1 = globalSerialNumber + 1;
    if (((u32) (var_s1_2->unk7C & 0x1FFF) >> 0xC) == 0) {
        goto block_41;
    }
    temp_v1_2 = (temp_v1 > 0x10000000U) ? 1U : temp_v1;
    var_s1_2->unk14 = temp_v1_2;
    globalSerialNumber = temp_v1_2;
block_41:
    var_a3_3 = var_s1_2->unk24;
    if (var_a3_3 == NULL) {
        goto block_46;
    }
block_42:
    var_s1_2 = var_a3_3;
    if (arg3 != 0) {
        goto block_38;
    }
block_43:
    if (sp50 != var_s1_2) {
        goto block_45;
    }
    arg0->unk158(var_s1_2 + 0x48, sp78);
    arg0->unk158(var_s1_2 + 0x54, sp78);
    goto block_39;
block_45:
    temp_gp->unk-7474(var_s1_2);
    temp_gp->unk-7470(var_s1_2);
    goto block_39;
block_46:
    var_a3_3 = var_s1_2->unk1C;
    if (var_a3_3 == NULL) {
        goto block_49;
    }
block_47:
    if (sp50 == var_s1_2) {
        goto block_53;
    }
    goto block_42;
block_49:
    if (sp50 == var_s1_2) {
        goto block_52;
    }
loop_50:
    var_s1_2 = var_s1_2->unk18;
    var_a3_3 = var_s1_2->unk1C;
    if (var_a3_3 != NULL) {
        goto block_47;
    }
    if (sp50 != var_s1_2) {
        goto loop_50;
    }
block_52:
block_53:
    var_a0 = 0;
    var_s1_3 = inputInfo.unk4;
    if (inputInfo.unk0 <= 0) {
        goto block_57;
    }
loop_54:
    spA8 = var_a0;
    if (var_s1_3 == NULL) {
        goto block_57;
    }
    if (temp_gp->unk-7578(var_s1_3->unk48, temp_gp - 0x6FD0) == 0) {
        goto block_57;
    }
    var_a0 = spA8 + 1;
    var_s1_3 = var_s1_3->unk14;
    if (var_a0 < inputInfo.unk0) {
        goto loop_54;
    }
block_57:
    if (arg3 == 0) {
        goto block_59;
    }
block_58:
    sp60->unkDC = arg3;
    FreeResource(sp68, 0);
    FreeResource(sp70, 0);
    temp_gp->unk-7274(sp50, 0, 0);
    return 0;
block_59:
    temp_gp->unk-7528((void *) sp58, serverClient);
    temp_t9_2 = (*(arg0->unk1B4 + (rrmScreenPrivateIndex * 4)))->unk4C;
    if (temp_t9_2 == NULL) {
        goto block_58;
    }
    temp_t9_2(sp58, sp58 + 0x48, 0);
    goto block_58;
block_61:
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64], gap at: 0x40. */
void nfbStereoPushPixels(void *arg0, s32 arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    u16 temp_s7;
    void *temp_s1;
    void *temp_v1;

    temp_v1 = arg0->unk48;
    temp_s1 = *(arg0->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x47780)->unk-30F4 * 4));
    temp_s7 = arg2->unk10->unk74->unkE2;
    arg0->unk48 = (void *) temp_s1->unk5C;
    temp_s1->unk68 = 1;
    unksp40 = (s64) temp_v1;
    unksp38 = (s64) temp_s1->unk8;
    if (arg2->unk10->unk74->unkDC != 1) {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg2->unkA = (s16) (arg2->unkA + temp_s7);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s7);
        arg0->unk48->unk4C(arg0, arg1, arg2, arg3, arg4, arg5, arg6 + temp_s7);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg2->unkA = (s16) (arg2->unkA - temp_s7);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s7);
        arg0->unk48->unk4C(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg2->unkA = (s16) (arg2->unkA - temp_s7);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s7);
        arg0->unk48->unk4C(arg0, arg1, arg2, arg3, arg4, arg5, arg6 - temp_s7);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg2->unkA = (s16) (arg2->unkA + temp_s7);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s7);
        arg0->unk48->unk4C(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    }
    temp_s1->unk8 = (s32) unksp38;
    arg0->unk48 = (void *) unksp40;
    temp_s1->unk68 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54], gap at: 0x30. */
void nfbStereoPolyline(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    u16 temp_s4;
    void *temp_s0;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s0 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x4623C)->unk-30F4 * 4));
    temp_s4 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s0->unk5C;
    temp_s0->unk68 = 1;
    unksp28 = (s64) temp_s0->unk8;
    unksp30 = (s64) temp_v1;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s4);
        arg1->unk48->unk18(arg0, arg1, arg2, arg3, arg4);
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s4);
        arg1->unk48->unk18(arg0, arg1, arg2, arg3, arg4);
    } else {
        temp_s0->unk8 = (s32) temp_s0->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A - temp_s4);
        arg1->unk48->unk18(arg0, arg1, arg2, arg3, arg4);
        temp_s0->unk8 = (s32) temp_s0->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s0->unk5A = (s16) (temp_s0->unk5A + temp_s4);
        arg1->unk48->unk18(arg0, arg1, arg2, arg3, arg4);
    }
    temp_s0->unk8 = (s32) unksp28;
    arg1->unk48 = (void *) unksp30;
    temp_s0->unk68 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x38. */
void nfbStereoPolyText8(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    u16 temp_s4;
    void *temp_s1;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s1 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x46048)->unk-30F4 * 4));
    temp_s4 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s1->unk5C;
    temp_s1->unk68 = 1;
    unksp30 = (s64) temp_s1->unk8;
    unksp38 = (s64) temp_v1;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk34(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk34(arg0, arg1, arg2, arg3, arg4, arg5);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk34(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk34(arg0, arg1, arg2, arg3, arg4, arg5);
    }
    temp_s1->unk8 = (s32) unksp30;
    arg1->unk48 = (void *) unksp38;
    temp_s1->unk68 = 0;
}

void nfbStereoPolyFillArc(void *arg0, void *arg1, s32 arg2, void *arg3) {
    s64 sp8;
    s64 sp0;
    s32 temp_s3;
    u16 temp_s6;
    u16 var_at;
    void *temp_gp;
    void *temp_s1;
    void *temp_s5;
    void *temp_s7;
    void *var_v0;
    void *var_v1;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x45E34;
    temp_s6 = arg0->unk10->unk74->unkE2;
    temp_s1 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    sp0 = (s64) temp_s1->unk8;
    temp_s7 = arg1->unk48;
    temp_s3 = arg2 * 0xC;
    arg1->unk48 = (void *) temp_s1->unk5C;
    sp8 = (s64) temp_s7;
    temp_s1->unk68 = 1;
    temp_s5 = temp_gp->unk-758C(temp_s3);
    if (arg2 > 0) {
        var_v0 = arg3;
        var_v1 = temp_s5;
        if (arg2 >= 2) {
            var_at = var_v0->unk0;
            do {
                var_v1->unk0 = var_at;
                var_v1->unk2 = (u16) var_v0->unk2;
                var_v1->unk4 = (u16) var_v0->unk4;
                var_v1->unk6 = (u16) var_v0->unk6;
                var_v1->unk8 = (u16) var_v0->unk8;
                var_v1->unkA = (u16) var_v0->unkA;
                var_v0 += 0xC;
                var_v1 += 0xC;
                var_at = var_v0->unk0;
            } while (var_v0 != ((temp_s3 + arg3) - 0xC));
            var_v1->unk0 = var_at;
            var_v1->unk2 = (u16) var_v0->unk2;
            var_v1->unk4 = (u16) var_v0->unk4;
            var_v1->unk6 = (u16) var_v0->unk6;
            var_v1->unk8 = (u16) var_v0->unk8;
            var_v1->unkA = (u16) var_v0->unkA;
        } else {
            var_v1->unk0 = (u16) var_v0->unk0;
            var_v1->unk2 = (u16) var_v0->unk2;
            var_v1->unk4 = (u16) var_v0->unk4;
            var_v1->unk6 = (u16) var_v0->unk6;
            var_v1->unk8 = (u16) var_v0->unk8;
            var_v1->unkA = (u16) var_v0->unkA;
        }
    }
    if (arg0->unk10->unk74->unkDC == 1) {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk30(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk30(arg0, arg1, arg2, arg3);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk30(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk30(arg0, arg1, arg2, arg3);
    }
    temp_s1->unk8 = (s32) sp0;
    temp_gp->unk-75A0(temp_s5);
    arg1->unk48 = (void *) sp8;
    temp_s1->unk68 = 0;
}

void nfbStereoFillPolygon(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s64 arg5) {
    s64 sp8;
    s64 sp0;
    s16 temp_at;
    s16 temp_at_2;
    s16 temp_v0;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_a6;
    s32 temp_s1;
    s32 temp_v1;
    s32 var_t1;
    s64 var_a3;
    s64 var_t0;
    u16 temp_s6;
    void *temp_a1;
    void *temp_gp;
    void *temp_s2;
    void *temp_s5;
    void *var_a0;
    void *var_a2;
    void *var_a4;

    unksp60 = arg5;
    sp8 = (s64) arg1->unk48;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x45B54;
    temp_s2 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s6 = arg0->unk10->unk74->unkE2;
    temp_s1 = arg4 * 4;
    arg1->unk48 = (void *) temp_s2->unk5C;
    sp0 = (s64) temp_s2->unk8;
    temp_s2->unk68 = 1;
    temp_s5 = temp_gp->unk-758C(temp_s1);
    if (arg4 > 0) {
        var_a4 = temp_s5;
        var_t1 = arg4 & 3;
        var_t0 = unksp60;
        temp_a0 = arg4 >> 2;
        if (var_t1 != 0) {
            do {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($t0) */);
                temp_at = var_t0->unk0;
                var_a4 += 4;
                var_t1 -= 1;
                M2C_ERROR(/* unknown instruction: pref 0x1, 0xfc($a4) */);
                var_a4->unk-2 = (s16) var_t0->unk2;
                var_t0 += 4;
                var_a4->unk-4 = temp_at;
            } while (var_t1 != 0);
        }
        var_a2 = var_a4;
        temp_v1 = (temp_s1 + unksp60) - 0x10;
        var_a3 = var_t0;
        if (temp_a0 != 0) {
            if (temp_a0 >= 2) {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a3) */);
                var_v0 = var_a3->unk0;
                var_a0 = var_a3 + 0x10;
loop_6:
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a2) */);
                var_a2->unk0 = var_v0;
                temp_a1 = var_a2 + 0x10;
                var_a2->unk2 = (s16) var_a3->unk2;
                var_a2->unk4 = (s16) var_a3->unk4;
                var_a2->unk6 = (s16) var_a3->unk6;
                var_a2->unk8 = (s16) var_a3->unk8;
                var_a2->unkA = (s16) var_a3->unkA;
                temp_at_2 = var_a3->unkE;
                var_a2->unkC = (s16) var_a3->unkC;
                var_a3 = var_a0 + 0x10;
                var_a2->unkE = temp_at_2;
                var_v0 = var_a0->unk0;
                if (var_a0 != temp_v1) {
                    var_a2->unk10 = var_v0;
                    var_a2 = temp_a1 + 0x10;
                    temp_a1->unk2 = (s16) var_a0->unk2;
                    temp_a1->unk4 = (s16) var_a0->unk4;
                    temp_a1->unk6 = (s16) var_a0->unk6;
                    temp_a1->unk8 = (s16) var_a0->unk8;
                    temp_a1->unkA = (s16) var_a0->unkA;
                    temp_v0 = var_a0->unkE;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a3) */);
                    temp_a1->unkC = (s16) var_a0->unkC;
                    var_a0 = var_a3 + 0x10;
                    temp_a1->unkE = temp_v0;
                    var_v0 = var_a0->unk10;
                    if (var_a3 != temp_v1) {
                        goto loop_6;
                    }
                } else {
                    var_a3 = (s64) var_a0;
                    var_a2 = temp_a1;
                }
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a2) */);
                var_a2->unk0 = var_v0;
                var_a2->unk2 = (s16) var_a3->unk2;
                var_a2->unk6 = (s16) var_a3->unk6;
                var_a2->unk4 = (s16) var_a3->unk4;
                var_a2->unkA = (s16) var_a3->unkA;
                var_a2->unk8 = (s16) var_a3->unk8;
                var_a2->unkE = (s16) var_a3->unkE;
                var_a2->unkC = (s16) var_a3->unkC;
            } else {
                var_a2->unk2 = (s16) var_a3->unk2;
                var_a2->unk0 = (s16) var_a3->unk0;
                var_a2->unk6 = (s16) var_a3->unk6;
                var_a2->unk4 = (s16) var_a3->unk4;
                var_a2->unkA = (s16) var_a3->unkA;
                var_a2->unk8 = (s16) var_a3->unk8;
                var_a2->unkE = (s16) var_a3->unkE;
                var_a2->unkC = (s16) var_a3->unkC;
            }
        }
    }
    temp_a6 = arg0->unk10->unk74->unkDC;
    if (temp_a6 == 1) {
        temp_s2->unk8 = (s32) temp_s2->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s2->unk5A = (s16) (temp_s2->unk5A - temp_s6);
        arg1->unk48->unk28(arg0, arg1, arg2, arg3, arg4, temp_s5, temp_a6);
        temp_s2->unk8 = (s32) temp_s2->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s2->unk5A = (s16) (temp_s2->unk5A + temp_s6);
        arg1->unk48->unk28(arg0, arg1, arg2, arg3, arg4, (void *) unksp60);
    } else {
        temp_s2->unk8 = (s32) temp_s2->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s2->unk5A = (s16) (temp_s2->unk5A + temp_s6);
        arg1->unk48->unk28(arg0, arg1, arg2, arg3, arg4, temp_s5, temp_a6);
        temp_s2->unk8 = (s32) temp_s2->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s2->unk5A = (s16) (temp_s2->unk5A - temp_s6);
        arg1->unk48->unk28(arg0, arg1, arg2, arg3, arg4, (void *) unksp60);
    }
    temp_s2->unk8 = (s32) sp0;
    temp_gp->unk-75A0(temp_s5);
    arg1->unk48 = (void *) sp8;
    temp_s2->unk68 = 0;
}

void nfbStereoPolyFillRect(void *arg0, void *arg1, s32 arg2, void *arg3) {
    s64 sp8;
    s64 sp0;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_at;
    s16 temp_at_2;
    s16 var_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s3;
    u16 temp_s6;
    u16 var_v0_2;
    u16 var_v1_2;
    void *temp_a3;
    void *temp_gp;
    void *temp_s1;
    void *temp_s5;
    void *var_a2;
    void *var_a4;
    void *var_a5;
    void *var_v0;
    void *var_v1;

    sp8 = (s64) arg1->unk48;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x45764;
    temp_s6 = arg0->unk10->unk74->unkE2;
    temp_s1 = *(arg1->unk4C + (temp_gp->unk-30F4 * 4));
    temp_s3 = arg2 * 8;
    arg1->unk48 = (void *) temp_s1->unk5C;
    sp0 = (s64) temp_s1->unk8;
    temp_s1->unk68 = 1;
    var_v1 = arg3;
    temp_s5 = temp_gp->unk-758C(temp_s3);
    temp_a1 = arg2 >> 1;
    if (arg2 > 0) {
        var_v0 = temp_s5;
        if (arg2 & 1) {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($v1) */);
            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($v0) */);
            var_v0->unk4 = (u16) var_v1->unk4;
            var_v0->unk2 = (s16) var_v1->unk2;
            var_v0->unk0 = (s16) var_v1->unk0;
            var_v0->unk6 = (u16) var_v1->unk6;
            var_v0 += 8;
            var_v1 += 8;
        }
        var_a4 = var_v0;
        var_a5 = var_v1;
        if (temp_a1 != 0) {
            temp_a1_2 = (temp_s3 + arg3) - 0x10;
            if (temp_a1 >= 2) {
                M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                var_a0 = var_a5->unk0;
                var_v0_2 = var_a5->unk4;
                var_v1_2 = var_a5->unk6;
                var_a2 = var_a5 + 0x10;
loop_6:
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a4) */);
                temp_a3 = var_a4 + 0x10;
                var_a4->unk6 = var_v1_2;
                var_a4->unk4 = var_v0_2;
                var_a4->unk0 = var_a0;
                var_a4->unk2 = (s16) var_a5->unk2;
                temp_a0 = var_a5->unk8;
                temp_at = var_a5->unkA;
                var_a4->unkE = (u16) var_a5->unkE;
                var_a4->unkC = (u16) var_a5->unkC;
                var_a5 = var_a2 + 0x10;
                var_v1_2 = var_a2->unk6;
                var_v0_2 = var_a2->unk4;
                var_a4->unk8 = temp_a0;
                var_a4->unkA = temp_at;
                var_a0 = var_a2->unk0;
                if (var_a2 != temp_a1_2) {
                    var_a4 = temp_a3 + 0x10;
                    temp_a3->unk6 = var_v1_2;
                    temp_a3->unk4 = var_v0_2;
                    temp_a3->unk0 = var_a0;
                    temp_a3->unk2 = (s16) var_a2->unk2;
                    temp_at_2 = var_a2->unk8;
                    temp_a0_2 = var_a2->unkA;
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a5) */);
                    temp_a3->unkE = (u16) var_a2->unkE;
                    temp_a3->unkC = (u16) var_a2->unkC;
                    var_a2 = var_a5 + 0x10;
                    var_v1_2 = var_a5->unk6;
                    var_v0_2 = var_a5->unk4;
                    temp_a3->unk8 = temp_at_2;
                    temp_a3->unkA = temp_a0_2;
                    var_a0 = var_a2->unk10;
                    if (var_a5 != temp_a1_2) {
                        goto loop_6;
                    }
                } else {
                    var_a5 = var_a2;
                    var_a4 = temp_a3;
                }
                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a4) */);
                var_a4->unk4 = var_v0_2;
                var_a4->unk6 = var_v1_2;
                var_a4->unk0 = var_a0;
                var_a4->unk2 = (s16) var_a5->unk2;
                var_a4->unkC = (u16) var_a5->unkC;
                var_a4->unkE = (u16) var_a5->unkE;
                var_a4->unkA = (s16) var_a5->unkA;
                var_a4->unk8 = (s16) var_a5->unk8;
            } else {
                var_a4->unk6 = (u16) var_a5->unk6;
                var_a4->unk4 = (u16) var_a5->unk4;
                var_a4->unk2 = (s16) var_a5->unk2;
                var_a4->unk0 = (s16) var_a5->unk0;
                var_a4->unkE = (u16) var_a5->unkE;
                var_a4->unkC = (u16) var_a5->unkC;
                var_a4->unkA = (s16) var_a5->unkA;
                var_a4->unk8 = (s16) var_a5->unk8;
            }
        }
    }
    if (arg0->unk10->unk74->unkDC == 1) {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk2C(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk2C(arg0, arg1, arg2, arg3);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s6);
        arg1->unk48->unk2C(arg0, arg1, arg2, temp_s5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s6);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s6);
        arg1->unk48->unk2C(arg0, arg1, arg2, arg3);
    }
    temp_s1->unk8 = (s32) sp0;
    temp_gp->unk-75A0(temp_s5);
    arg1->unk48 = (void *) sp8;
    temp_s1->unk68 = 0;
}

void nfbSetStereoBuffer(void *arg0, void *arg1, s32 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a7_2;
    s32 var_a7;
    s64 temp_a1;
    u16 *var_a5;
    void *temp_a2_2;
    void *temp_a4;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a7;
    void *temp_gp;
    void *var_a7_2;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x453A0;
    temp_a4 = *(arg1->unk84 + (temp_gp->unk-30F8 * 4));
    temp_a5 = temp_a4->unk34;
    temp_a6 = arg0->unk74;
    if (temp_a5 != arg2) {
        if (temp_a6->unkDC != 0) {
            if (temp_a5 != 0) {
                var_a7 = 0;
            } else {
                temp_a7 = *(arg0->unk1B4 + (rrmScreenPrivateIndex * 4));
                if (temp_a7->unk8 != 0) {
                    goto block_18;
                }
                var_a7 = 0;
                if (temp_a7->unk4 != 0) {
block_18:
                    var_a7 = 1;
                }
            }
            temp_a4->unk34 = arg2;
            if (arg2 != 0) {
                temp_a2 = rrmWindowPrivateIndex * 4;
                var_a5 = *(arg1->unk84 + temp_a2);
                if (var_a5 != NULL) {
                    temp_a3 = *var_a5 & 1;
                    if (temp_a3 != 0) {
                        if (temp_a4->unk38 == 0) {
                            temp_a4->unk38 = (s32) (((temp_a6->unkDC ^ 1) == 0) ? 2 : 1);
                            var_a5 = *(arg1->unk84 + temp_a2);
                        }
                        temp_a4_2 = rrmScreenPrivateIndex * 4;
                        if (var_a5->unk4 & 2) {
                            if (var_a7 != 0) {
                                goto block_10;
                            }
                            var_a7_2 = *(arg0->unk1B4 + temp_a4_2);
                            if ((var_a7_2->unk8 == 0) && (var_a7_2->unk4 != 0)) {
block_10:
                                temp_a2_2 = arg1->unk10;
                                temp_a7_2 = var_a5->unk18;
                                temp_a6_2 = *(temp_a2_2->unk1B4 + temp_a4_2);
                                if ((temp_a7_2 == 0) || (sp0 = (s64) temp_a2_2, (temp_a6_2->unk4 == temp_a7_2))) {
                                    sp10 = (s64) arg0;
                                    var_a5->unk18 = 0;
                                } else {
                                    sp10 = (s64) arg0;
                                    temp_a1 = temp_a6_2->unk94 + (temp_a7_2 * 0x1C) + 0x10;
                                    sp8 = temp_a1;
                                    temp_a6_2->unk4C(arg1, temp_a1, 0, temp_a3, temp_a4_2, var_a5, temp_a6_2, temp_a7_2);
                                    sp0->unk188(sp8);
                                }
                                temp_gp->unk-7D94(arg1);
                                temp_gp->unk-7D90(arg1);
                                var_a7_2 = *(sp10->unk1B4 + (rrmScreenPrivateIndex * 4));
                            }
                            var_a7_2->unk1C(arg1);
                        }
                    } else {
                        temp_a4->unk34 = 0;
                    }
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x38. */
void nfbStereoPolyText16(void *arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5) {
    u16 temp_s4;
    void *temp_s1;
    void *temp_v1;

    temp_v1 = arg1->unk48;
    temp_s1 = *(arg1->unk4C + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x45148)->unk-30F4 * 4));
    temp_s4 = arg0->unk10->unk74->unkE2;
    arg1->unk48 = (void *) temp_s1->unk5C;
    temp_s1->unk68 = 1;
    unksp30 = (s64) temp_s1->unk8;
    unksp38 = (s64) temp_v1;
    if (arg0->unk10->unk74->unkDC != 1) {
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk38(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk38(arg0, arg1, arg2, arg3, arg4, arg5);
    } else {
        temp_s1->unk8 = (s32) temp_s1->unk60;
        arg0->unkA = (s16) (arg0->unkA - temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A - temp_s4);
        arg1->unk48->unk38(arg0, arg1, arg2, arg3, arg4, arg5);
        temp_s1->unk8 = (s32) temp_s1->unk64;
        arg0->unkA = (s16) (arg0->unkA + temp_s4);
        temp_s1->unk5A = (s16) (temp_s1->unk5A + temp_s4);
        arg1->unk48->unk38(arg0, arg1, arg2, arg3, arg4, arg5);
    }
    temp_s1->unk8 = (s32) unksp30;
    arg1->unk48 = (void *) unksp38;
    temp_s1->unk68 = 0;
}

s64 nfbChangeSaveUnder(void *arg0, void *arg1, u32 arg4, ? arg_sp0) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s64 temp_v0;
    u32 var_a4;
    void *temp_a0;
    void *temp_s0;
    void *temp_s3;
    void *temp_sp;
    void *var_s1;
    void *var_s3;
    void *var_s4;

    var_a4 = arg4;
    arg_sp0.unk-48 = (s64) saved_reg_s3;
    arg_sp0.unk-50 = (s64) saved_reg_s1;
    var_s3 = arg1;
    arg_sp0.unk-58 = (s64) saved_reg_gp;
    arg_sp0.unk-60 = (s64) saved_reg_fp;
    if ((arg1 != NULL) && (arg0->unk18 != var_s3->unk18)) {
        var_s3 = arg0;
    } else {
        var_a4 = (u32) (arg0->unk7C & 0x03FFFFFF) >> 0x19;
        if (var_a4 == 0) {
            var_s3 = arg0->unk1C;
        }
    }
    temp_a1 = deltaSaveUndersViewable;
    if (temp_a1 != 0) {
        goto block_5;
    }
    if (numSaveUndersViewable == 0) {
        return 0;
    }
block_5:
    arg_sp0.unk-70 = (s64) saved_reg_s0;
    temp_s0 = arg0->unk10;
    deltaSaveUndersViewable = 0;
    temp_a3 = numSaveUndersViewable + temp_a1;
    numSaveUndersViewable = temp_a3;
    if ((*(arg0->unk18->unk84 + ((M2C_ERROR(/* Read from unset register $t9 */) + 0x44230)->unk-30F8 * 4)))->unk1C != 0) {
        temp_a4 = temp_s0->unk74->unk28;
        arg_sp0.unk-78 = (s64) saved_reg_s2;
        temp_v0 = temp_a4 * 0xC;
        arg_sp0.unk-68 = (s64) saved_reg_ra;
        arg_sp0.unk-40 = (s64) temp_a4;
        temp_sp = sp - ((temp_v0 + 0xF) & ~0xF);
        arg_sp0.unk-30 = temp_v0;
        if (temp_a4 > 0) {
            arg_sp0.unk-68 = (s64) saved_reg_ra;
            arg_sp0.unk-88 = (s64) saved_reg_s6;
            arg_sp0.unk-80 = (s64) saved_reg_s4;
            arg_sp0.unk-30 = temp_v0;
            var_s4 = temp_sp;
            do {
                temp_a0 = var_s4;
                var_s4 += 0xC;
                temp_s0->unk154(temp_a0, 0, 1);
            } while (var_s4 != (temp_sp + temp_v0));
        }
        arg_sp0.unk-38 = nfbStereoPolyText16(arg0->unk18, var_s3, temp_sp, 1);
        var_s1 = temp_sp;
        temp_s3 = temp_sp + arg_sp0.unk-30;
        if (arg_sp0.unk-40 > 0) {
            do {
                temp_s0->unk160(var_s1);
                var_s1 += 0xC;
            } while (var_s1 != temp_s3);
        }
    } else {
        arg_sp0.unk-68 = (s64) saved_reg_ra;
        temp_s0->unk154(&arg_sp0 - 0x28, 0, 1, temp_a3, var_a4, &deltaSaveUndersViewable);
        arg_sp0.unk-38 = nfbStereoPolyText16(arg0->unk18, var_s3, &arg_sp0 - 0x28, 0);
        temp_s0->unk160(&arg_sp0 - 0x28);
        arg_sp0.unk-78 = (s64) saved_reg_s2;
    }
    return arg_sp0.unk-38;
}

void nfbPostChangeSaveUnder(void *arg0, void *arg1) {
    s64 sp30;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_s0;
    s64 var_ra;
    u32 temp_a2;
    void *var_a0;
    void *var_s3;
    void *var_s4;

    var_ra = saved_reg_ra;
    var_s3 = arg1;
    temp_s0 = arg0->unk18;
    if (arg1 != NULL) {
        var_s3 = ((var_s3->unk18 ^ temp_s0) != 0) ? arg0 : var_s3;
    }
    temp_a0 = temp_s0->unk7C;
    sp0 = (s64) temp_s0->unk10->unkC0;
    if (((u32) (0x01FFFFFF & temp_a0) >> 0x18) == 0) {
        temp_a2 = (u32) (temp_a0 & 0x0FFFFFFF) >> 0x1A;
        if ((temp_a2 == 0) && (temp_s0->unk74 != 0)) {
            ((? (*)(s32, ?, u32)) sp0)(temp_s0, 0x40, temp_a2);
            var_ra = sp30;
        }
    }
    var_s4 = var_s3;
    if (var_s3 != NULL) {
        sp30 = var_ra;
loop_7:
        temp_a0_2 = var_s4->unk7C;
        if (((u32) (0x01FFFFFF & temp_a0_2) >> 0x18) == 0) {
            if ((((u32) (0x0FFFFFFF & temp_a0_2) >> 0x1A) == 0) && (var_s4->unk74 != 0)) {
                ((? (*)(void *, ?)) sp0)(var_s4, 0x40);
            }
        }
        var_a0 = var_s4->unk24;
        if (var_a0 != NULL) {
block_6:
            var_s4 = var_a0;
            goto loop_7;
        }
        var_a0 = var_s4->unk1C;
        if (var_a0 != NULL) {
block_10:
            goto block_6;
        }
loop_15:
        var_s4 = var_s4->unk18;
        if (temp_s0 != var_s4) {
            var_a0 = var_s4->unk1C;
            if (var_a0 != NULL) {
                goto block_10;
            }
            goto loop_15;
        }
    }
}

void nfbMarkWindow(void *arg0) {
    s64 sp0;
    s32 temp_a1;
    void *temp_gp;
    void *temp_v0;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x43508;
    temp_a1 = temp_gp->unk-30F8 * 4;
    *(arg0->unk10->unk74->unk3C + ((*(arg0->unk84 + temp_a1))->unk18 * 4)) = 1;
    sp0 = (s64) arg0;
    if (arg0->unk44 != 0) {
        return;
    }
    Must_have_memory = 1;
    temp_v0 = temp_gp->unk-758C(0x18, temp_a1, 1, &Must_have_memory);
    temp_v0->unk0 = (s16) sp0->unk8;
    temp_v0->unk8 = 0;
    temp_v0->unk4 = 0;
    temp_v0->unk2 = (s16) sp0->unkA;
    sp0->unk44 = temp_v0;
    Must_have_memory = 0;
}
