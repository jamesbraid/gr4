s32 SDBgetSymbolValueScalar(s64, u8 *, s32 *);      /* extern */
? Xfree(void *);                                    /* extern */
? free(s32);                                        /* extern */
s32 ioctl(s32, ?, void **, ?, ?);                   /* extern */
s32 memalign(u32, ?, ? *, u32);                     /* extern */
? memmove(s32 (*)[], ? *, ?);                       /* extern */
? mgrasBlackCmap(struct _Screen *, s32 *, s16 *);   /* extern */
s32 mgrasDefaultTTExists(struct _Screen *, s32 (*)[], s32 *, s32 *, s32 *, s32 *, s32 *, ? *, s32 *, s32 *, s32 *); /* extern */
s32 mgrasLoadAndInitICO(s64, u8 *, void *, s64, void *); /* extern */
s32 mpin(s32, ?, ? *);                              /* extern */
? pow(f64, ?);                                      /* extern */
s32 strcasecmp(void *, s32);                        /* extern */
s32 strcmp(s32, ? *);                               /* extern */
s64 mgrasKernInit(struct _Screen *arg0, u8 arg1, s32 *arg2, s32 *arg3); /* static */
extern s32 WindowTable;
extern ? XSGIvcScreens;
extern ? __iob;
extern ? ddxActiveScreens;
extern s32 ddxDfltClass;
extern s32 ddxDfltDepth;
extern s32 ddxDfltVisualID;
extern s32 ddxOverlayFlag;
extern s32 doLoadGamma__CBD;
extern ? mgrasDisableChannelProc;
extern ? mgrasGCOpsCache__NED;
extern ? mgrasLdComb;
extern ? mgrasLoadAndFree;
extern ? mgrasLstVideoFmt;
extern ? mgrasLstVideoFmtCombs;
extern ? mgrasQryMonitor;
extern ? mgrasQryPltParam;
extern ? mgrasSetPltParam;
extern ? mgrasSetScrnGlock;
extern ? mgrasStrGamma16;
extern ? mgrasStrGamma8;
extern void *moninfoData;
extern s32 nfbRDGeneration__KED;
extern s32 nfbRDScreenPrivateIndex__LED;
extern ? nfbRDinfo__JED;
extern ? nmbxDepthBufferString;
extern ? nmbxMaxDisplayBuffersString;
extern ? nmbxStencilBufferString;
extern s32 numMonitors;
extern s32 screenIsSaved;
extern s32 serverGeneration;
extern ? sub_5e3d0000;
extern ? sub_5e3e0000;
extern ? sub_5e4f0000;
extern ? sub_5e510000;
extern s32 vcScreenPrivateIndex;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x398, 0x39c, 0x3b0, 0x3b4, 0x3b8, 0x3bc, 0x3c0, 0x3c4, 0x3d0, 0x3d4], gap at: 0x3a8. */
s32 mgrasInit(s32 index, struct _Screen *pScreen, s32 argc, s8 **argv) {
    s64 sp430;
    s64 sp428;
    s64 sp420;
    s64 sp418;
    s64 sp3F0;
    s64 sp3E8;
    s64 sp3E0;
    s64 sp3D8;
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
    s8 sp320;
    s32 sp314;
    s32 sp2F8;
    s32 sp2F4;
    s32 sp2F0;
    s16 sp2EE;
    s16 sp2EC;
    s16 sp2EA;
    s16 sp2E8;
    ? sp250;
    s32 sp24C;
    s32 sp248;
    s32 sp240;
    s32 sp238;
    s32 sp234;
    s32 sp230;
    s32 sp22C;
    s32 sp228;
    s32 sp24;
    s32 sp20;
    ? *var_at_5;
    s16 temp_a1_2;
    s16 temp_a6_12;
    s16 temp_a6_15;
    s16 temp_a7_2;
    s16 temp_v0_35;
    s16 temp_v1_19;
    s16 var_at_3;
    s32 *temp_a0_8;
    s32 *temp_a1_9;
    s32 *temp_a3_2;
    s32 *temp_a4_2;
    s32 *temp_at_11;
    s32 *temp_at_13;
    s32 *temp_at_18;
    s32 *temp_s0_4;
    s32 *temp_s2;
    s32 *temp_s4_2;
    s32 *temp_t0_2;
    s32 *temp_t0_4;
    s32 *temp_t0_5;
    s32 *temp_t0_6;
    s32 *temp_t3_3;
    s32 *temp_t8_11;
    s32 *temp_t8_13;
    s32 *temp_v0_15;
    s32 *temp_v0_16;
    s32 *temp_v0_20;
    s32 *temp_v0_24;
    s32 *temp_v0_30;
    s32 *temp_v0_31;
    s32 *temp_v0_33;
    s32 *temp_v0_34;
    s32 *temp_v0_37;
    s32 *temp_v0_39;
    s32 *temp_v1_15;
    s32 *temp_v1_17;
    s32 *temp_v1_18;
    s32 *var_a1_5;
    s32 *var_a1_6;
    s32 *var_a5_3;
    s32 *var_a5_4;
    s32 *var_a5_6;
    s32 *var_a5_8;
    s32 *var_a7_2;
    s32 *var_ra_2;
    s32 *var_ra_5;
    s32 *var_s0;
    s32 *var_s0_2;
    s32 *var_s0_5;
    s32 *var_s1_3;
    s32 *var_s2_2;
    s32 *var_s2_3;
    s32 *var_s2_4;
    s32 *var_s5;
    s32 *var_t0;
    s32 *var_t0_2;
    s32 *var_t0_3;
    s32 *var_t3_3;
    s32 *var_t3_4;
    s32 *var_t3_5;
    s32 *var_t9_2;
    s32 *var_t9_3;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a1_10;
    s32 temp_a1_11;
    s32 temp_a1_12;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_8;
    s32 temp_a5_9;
    s32 temp_a6;
    s32 temp_a6_10;
    s32 temp_a6_11;
    s32 temp_a6_13;
    s32 temp_a6_14;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_6;
    s32 temp_a6_7;
    s32 temp_a6_8;
    s32 temp_a6_9;
    s32 temp_at;
    s32 temp_at_10;
    s32 temp_at_12;
    s32 temp_at_14;
    s32 temp_at_15;
    s32 temp_at_16;
    s32 temp_at_17;
    s32 temp_at_2;
    s32 temp_at_4;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_at_7;
    s32 temp_at_8;
    s32 temp_at_9;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s2_3;
    s32 temp_s2_4;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_s3_3;
    s32 temp_s4;
    s32 temp_s4_3;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_t0_3;
    s32 temp_t0_7;
    s32 temp_t2;
    s32 temp_t2_3;
    s32 temp_t3_2;
    s32 temp_t3_4;
    s32 temp_t8_12;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t8_5;
    s32 temp_t8_6;
    s32 temp_t8_7;
    s32 temp_t8_9;
    s32 temp_v0_17;
    s32 temp_v0_18;
    s32 temp_v0_21;
    s32 temp_v0_22;
    s32 temp_v0_23;
    s32 temp_v0_25;
    s32 temp_v0_26;
    s32 temp_v0_27;
    s32 temp_v0_28;
    s32 temp_v0_29;
    s32 temp_v0_32;
    s32 temp_v0_38;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_10;
    s32 temp_v1_11;
    s32 temp_v1_12;
    s32 temp_v1_13;
    s32 temp_v1_14;
    s32 temp_v1_16;
    s32 temp_v1_20;
    s32 temp_v1_21;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_8;
    s32 temp_v1_9;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a1_2;
    s32 var_a1_9;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_10;
    s32 var_a5_11;
    s32 var_a5_9;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a7_3;
    s32 var_at;
    s32 var_at_4;
    s32 var_ra_3;
    s32 var_ra_4;
    s32 var_ra_6;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2_5;
    s32 var_s2_6;
    s32 var_s2_7;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s3_5;
    s32 var_s3_6;
    s32 var_s4_2;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v1_3;
    s64 temp_a0;
    s64 temp_a0_9;
    s64 temp_a1_5;
    s64 temp_a1_6;
    s64 temp_a1_7;
    s64 temp_a1_8;
    s64 temp_a2;
    s64 temp_a7;
    s64 temp_s0;
    s64 temp_v0_10;
    s64 temp_v0_11;
    s64 temp_v0_12;
    s64 temp_v0_13;
    s64 temp_v0_14;
    s64 temp_v0_3;
    s64 var_a1_3;
    s64 var_a1_4;
    s64 var_a1_7;
    s64 var_a1_8;
    s64 var_a2_3;
    s64 var_a6_6;
    s64 var_s3_3;
    s64 var_s3_4;
    s64 var_s5_2;
    s64 var_t1;
    s64 var_v0;
    s64 var_v1_2;
    s8 *temp_t3;
    s8 *var_a2;
    s8 *var_a6;
    s8 *var_a7;
    s8 *var_t3;
    struct _Screen *var_s7;
    u8 *temp_a1;
    u8 *temp_v0;
    u8 *temp_v0_2;
    u8 *var_a1;
    u8 temp_a5;
    u8 temp_a5_2;
    u8 temp_a6_5;
    u8 temp_t1;
    u8 temp_t8;
    u8 var_a1_10;
    u8 var_a2_2;
    u8 var_a5_2;
    u8 var_a5_5;
    u8 var_a5_7;
    u8 var_at_2;
    u8 var_v1;
    void *temp_a0_2;
    void *temp_a1_13;
    void *temp_a4;
    void *temp_a5_6;
    void *temp_a5_7;
    void *temp_at_19;
    void *temp_at_20;
    void *temp_at_3;
    void *temp_gp;
    void *temp_s1;
    void *temp_s2_2;
    void *temp_t0;
    void *temp_t2_2;
    void *temp_t3_5;
    void *temp_t8_10;
    void *temp_t8_8;
    void *temp_v0_19;
    void *temp_v0_36;
    void *temp_v1;
    void *temp_v1_7;
    void *var_a3;
    void *var_a3_2;
    void *var_ra;
    void *var_s2;
    void *var_s4;
    void *var_s4_3;
    void *var_s4_4;
    void *var_s5_3;
    void *var_s5_4;
    void *var_s6;
    void *var_s6_2;
    void *var_s7_2;
    void *var_t0_4;
    void *var_t3_2;
    void *var_t9;

    sp24 = 0;
    sp20 = 0;
    sp358 = 0;
    sp360 = (s64) argv;
    sp368 = (s64) argc;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x13E2C4;
    var_s7 = pScreen;
    sp370 = (s64) index;
    var_s4 = *((index * 4) + &ddxActiveScreens);
    temp_gp->unk-7574(&sp28[0], 0, 0x200);
    var_s6 = temp_gp->unk-7338(var_s4->unk44->unkC);
    if (temp_gp->unk-3134 == 0) {
        temp_gp->unk-3134 = 1;
        temp_v0 = temp_gp->unk-7324(temp_gp - 0x7098, 1);
        if (temp_v0 != NULL) {
            temp_a5 = *temp_v0;
            if ((s32) temp_a5 >= 0x30) {
                if ((s32) temp_a5 < 0x33) {
                    temp_v0_2 = temp_gp->unk-7320(temp_v0, temp_v0);
                    var_a1 = temp_v0_2;
                    temp_gp->unk-5554 = temp_v0_2;
                } else {
                    goto block_57;
                }
            } else {
block_57:
                temp_gp->unk-74EC(&sub_5e4f0000 + 0x2800, temp_v0);
                var_a1 = temp_gp->unk-5554;
            }
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x2820, var_a1);
        }
    }
    temp_a1 = temp_gp->unk-5554;
    if (temp_a1 != NULL) {
        if (temp_a1 != (u8 *)2) {
            temp_gp->unk-5560 = 0x50;
            temp_gp->unk-5564 = 0x50;
        } else {
            temp_gp->unk-5560 = 0;
            temp_gp->unk-5564 = 0;
        }
    } else {
        temp_gp->unk-5560 = 0x2710;
        temp_gp->unk-5564 = 0x2710;
    }
    temp_v1 = var_s4->unk44;
    temp_t8 = temp_v1->unkE;
    var_s4->unk2C = (s32) temp_t8;
    temp_a5_2 = temp_v1->unkF;
    var_s4->unk30 = (s32) temp_a5_2;
    temp_a1_2 = temp_v1->unk8;
    var_s4->unk34 = (s32) temp_a1_2;
    var_s4->unk38 = (s32) temp_v1->unkA;
    if (temp_t8 != 0xFF) {
        if (temp_a5_2 != 0) {
            goto block_6;
        }
        goto block_37;
    }
    var_s4->unk2C = (s32) ddxDfltClass;
    if (temp_a5_2 == 0) {
block_37:
        var_s4->unk30 = (s32) ddxDfltDepth;
        if (temp_a1_2 == 0) {
            goto block_38;
        }
    } else {
block_6:
        if (temp_a1_2 == 0) {
block_38:
            var_s4->unk34 = (s32) ddxDfltVisualID;
        }
    }
    if (ddxOverlayFlag != 0) {
        var_s4->unk38 = 1;
    }
    temp_s1 = temp_gp - 0x31A0;
    if (temp_gp->unk-7CF8(0xC, temp_gp - 0x5BE0, temp_s1 + 8, temp_s1 + 4, temp_s1 + 0xC, temp_a5_2) != 0) {
        var_s4->unk18 = (u16) var_s6->unk20;
        var_s4->unk1A = (u16) var_s6->unk22;
        temp_v0_3 = mgrasKernInit(var_s7, var_s4->unk44->unkC, &sp228, &sp22C);
        sp350 = temp_v0_3;
        if (temp_v0_3 > 0) {
            var_s5 = *(var_s7->unk1B4 + (temp_gp->unk-3140 * 4));
            var_s5->unk78 = 0;
            var_s5->unk68 = 0;
            var_s3 = 1;
            var_s5->unk74 = 1;
            var_s5->unk7C = 0;
            var_s5->unk6C = 0;
            var_s5->unk28 = var_s6;
            var_s5->unk94 = 0;
            sp230 = 0;
            temp_t1 = var_s6->unk2C;
            var_s5->unk2C = (s32) temp_t1;
            var_s5->unk80 = (s32) (((temp_t1 ^ 1) != 0) ? 1 : 2);
            var_s5->unk30 = (s32) var_s6->unk2B;
            var_s5->unkC = 0x1C0;
            var_s5->unk8 = 0xC8240;
            temp_s2 = var_s5 + 0x10;
            var_s5->unkAC = 0;
            var_s5->unk88 = 0x3FFFFF;
            var_s5->unk84 = (s32) (var_s4->unk1A - 1);
            temp_gp->unk-7574(temp_s2, 0, 0x18);
            if (mgrasDefaultTTExists(var_s7, (s32 (*)[]) &sp28[0], &sp234, &sp238, &sp240, &sp248, &sp24C, &sp250, &sp20, &sp24, &sp230) != 0) {
                var_s4->unk1A = (u16) sp238;
                var_s4->unk18 = (u16) sp234;
                var_s5->unk8 = sp240;
                var_s5->unkC = sp244;
                memmove((s32 (*)[]) temp_s2, &sp250, 0x18);
                var_a1_2 = sp248;
                var_s5->unk80 = var_a1_2;
                if (sp24C != 0) {
                    var_s5->unk4C = (s32) (var_s5->unk4C | 8);
                }
            } else {
                sp20 = 0;
                sp24 = 0;
                var_a1_2 = var_s5->unk80;
            }
            temp_s2_2 = (var_a1_2 * 0x10) + temp_s1;
            var_s2 = temp_s2_2 + 0x20;
            var_a5 = temp_s2_2->unk20;
            if (var_a5 != 0) {

            } else {
                temp_gp->unk-3190 = (s32 *) (temp_gp - 0x4E58);
                temp_a1_3 = var_s5->unk80;
                sp348 = temp_gp->unk-758C(0x1D, var_a1_2);
                var_s0 = temp_gp->unk-3190;
                if (temp_a1_3 == 0) {
                    sp430 = (s64) var_s4;
                    sp3D8 = 1;
                    unksp3C8 = (s64) var_s2;
                    sp420 = (s64) var_s5;
                    var_s5_2 = sp348;
                    sp418 = (s64) var_s6;
                    sp428 = (s64) var_s7;
                    var_s6_2 = temp_gp - 0x50A0;
                    var_s7_2 = temp_gp - 0x54B8;
loop_115:
                    temp_a6 = var_s6_2->unk8;
                    var_a5_2 = 0;
                    *var_s5_2 = 0U;
                    if ((sp3D8 != temp_a6) && (temp_a6 != 3) && (temp_a6 != 5) && (temp_a6 != 7)) {
                        var_s3_2 = 0;
                        var_s4_2 = 0;
                        if (var_s7_2->unkA == 0x18) {
                            temp_a6_2 = *var_s0;
                            var_s2_2 = var_s0;
                            if (temp_a6_2 != 0) {
                                var_a0 = temp_a6_2;
loop_142:
                                var_s0 = var_s2_2;
                                if ((temp_gp->unk-7578(var_a0, &nmbxMaxDisplayBuffersString) == 0) && (var_s2_2->unk8 == 2)) {
                                    var_s4_2 = 1;
                                    if (var_s3_2 != 0) {
                                        var_a5_2 = 1;
                                        goto block_146;
                                    }
                                    goto block_141;
                                }
                                if (temp_gp->unk-7578(var_s2_2->unk0, &nmbxDepthBufferString) == 0) {
                                    var_s3_2 = (var_s2_2->unk8 != 0) ? 1 : var_s3_2;
                                }
                                if ((var_s4_2 == 0) || (var_a5_2 = 1, (var_s3_2 == 0))) {
block_141:
                                    var_a0 = var_s2_2->unk10;
                                    var_s2_2 += 0x10;
                                    if (var_a0 != 0) {
                                        goto loop_142;
                                    }
                                    var_a5_2 = *var_s5_2;
                                    goto block_149;
                                }
block_146:
                                *var_s5_2 = 1U;
                            } else {
                                var_s2_2 = var_s0;
block_149:
                                var_s0 = var_s2_2;
                            }
                        }
                    } else {
                        var_a5_2 = 1;
                        *var_s5_2 = 1U;
                    }
                    if (var_a5_2 == 0) {
                        temp_a5_3 = var_s6_2->unk0;
                        if ((temp_a5_3 & 1) && !(temp_a5_3 & 2)) {
                            *var_s5_2 = (u8) sp3D8;
                        }
                    }
                    var_s7_2 += 0x24;
                    var_s5_2 += 1;
                    var_a5_3 = var_s0;
                    var_s6_2 += 0x14;
                    if (*var_s0 != 0) {
loop_123:
                        temp_t8_2 = var_a5_3->unk10;
                        var_a5_3 += 0x10;
                        if (temp_t8_2 != 0) {
                            temp_at = var_a5_3->unk10;
                            var_a5_3 += 0x10;
                            if (temp_at != 0) {
                                temp_v0_4 = var_a5_3->unk10;
                                var_a5_3 += 0x10;
                                if (temp_v0_4 != 0) {
                                    temp_v1_2 = var_a5_3->unk10;
                                    var_a5_3 += 0x10;
                                    if (temp_v1_2 != 0) {
                                        temp_t8_3 = var_a5_3->unk10;
                                        var_a5_3 += 0x10;
                                        if (temp_t8_3 != 0) {
                                            temp_at_2 = var_a5_3->unk10;
                                            var_a5_3 += 0x10;
                                            if (temp_at_2 == 0) {

                                            } else {
                                                goto loop_123;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var_a5_3 = var_s0;
                    }
                    var_s0 = var_a5_3 + 0x10;
                    if (var_s7_2 != (temp_gp - 0x50A4)) {
                        goto loop_115;
                    }
                } else if (temp_a1_3 == 1) {
                    sp348->unk0 = 0U;
                    temp_at_3 = temp_gp - 0x50A0;
                    temp_v0_5 = temp_at_3->unk0;
                    temp_t3 = sp348 + 1;
                    *(((temp_v0_5 & 1) < (temp_v0_5 & 2)) ? sp348 : (s64) &sp320) = 1;
                    sp348->unk1 = 0U;
                    temp_t2 = temp_at_3->unk14;
                    var_a2 = temp_t3 + 1;
                    temp_t3->unk1 = 0;
                    *(((temp_t2 & 1) >= (temp_t2 & 2)) ? &sp320 : temp_t3) = 1;
                    var_a6 = var_a2 + 1;
                    var_t9 = temp_at_3 + 0x3C;
                    var_t3 = var_a6 + 1;
                    var_at = temp_at_3->unk28;
                    var_a7 = var_t3 + 1;
                    var_a2->unk1 = 0;
                    do {
                        *(((var_at & 1) < (var_at & 2)) ? var_a2 : &sp320) = 1;
                        temp_at_4 = var_t9->unk0;
                        *var_t3 = 0;
                        *(((temp_at_4 & 1) < (temp_at_4 & 2)) ? var_a6 : &sp320) = 1;
                        var_a2 = var_a7 + 1;
                        var_a6 = var_a2 + 1;
                        temp_t0 = var_t9 + 0x28;
                        temp_at_5 = var_t9->unk14;
                        var_a7->unk0 = 0;
                        *(((temp_at_5 & 1) < (temp_at_5 & 2)) ? var_t3 : &sp320) = 1;
                        temp_at_6 = var_t9->unk28;
                        var_a7->unk1 = 0;
                        *(((temp_at_6 & 1) < (temp_at_6 & 2)) ? var_a7 : &sp320) = 1;
                        var_t3 = var_a6 + 1;
                        var_a7 = var_t3 + 1;
                        var_t9 = temp_t0 + 0x28;
                        var_at = temp_t0->unk14;
                        var_a2->unk1 = 0;
                    } while (temp_t0 != ((temp_gp - 0x4E5C) - 0x50));
                    *(((var_at & 1) >= (var_at & 2)) ? &sp320 : var_a2) = 1;
                    temp_a1_4 = var_t9->unk0;
                    var_a6->unk1 = 0;
                    *(((temp_a1_4 & 1) >= (temp_a1_4 & 2)) ? &sp320 : var_a6) = 1;
                    temp_v1_3 = var_t9->unk14;
                    sp430 = (s64) var_s4;
                    sp428 = (s64) var_s7;
                    sp420 = (s64) var_s5;
                    sp3D8 = 1;
                    sp418 = (s64) var_s6;
                    unksp3C8 = (s64) var_s2;
                    *(((temp_v1_3 & 1) >= (temp_v1_3 & 2)) ? &sp320 : var_t3) = 1;
                } else if (temp_a1_3 == 2) {
                    unksp3C8 = (s64) var_s2;
                    sp3D8 = 1;
                    var_s3_3 = sp348;
                    sp418 = (s64) var_s6;
                    sp430 = (s64) var_s4;
                    sp420 = (s64) var_s5;
                    var_s4_3 = temp_gp - 0x50A0;
                    var_s5_3 = temp_gp - 0x54B8;
loop_187:
                    temp_a5_4 = var_s4_3->unk8;
                    var_s4_3 += 0x14;
                    *var_s3_3 = 0;
                    if (sp3D8 != temp_a5_4) {
                        switch (temp_a5_4) {        /* irregular */
                        default:
                            if (var_s5_3->unkA == 0x18) {
                                temp_a5_5 = *var_s0;
                                if (temp_a5_5 != 0) {
                                    var_s2_3 = var_s0;
                                    var_a0_2 = temp_a5_5;
loop_207:
                                    var_s0 = var_s2_3;
                                    if ((strcmp(var_a0_2, &nmbxMaxDisplayBuffersString) == 0) && (var_s2_3->unk8 == 2)) {
                                        *var_s3_3 = (s8) sp3D8;
                                    } else {
                                        var_a0_2 = var_s2_3->unk10;
                                        var_s2_3 += 0x10;
                                        if (var_a0_2 != 0) {
                                            goto loop_207;
                                        }
                                        goto block_211;
                                    }
                                } else {
                                    var_s2_3 = var_s0;
block_211:
                                    var_s0 = var_s2_3;
                                }
                            }
                            break;
                        }
                    } else {
                    case 5:
                    case 7:
                    case 3:
                        *var_s3_3 = (s8) sp3D8;
                    }
                    var_s3_3 += 1;
                    var_a5_4 = var_s0;
                    var_s5_3 += 0x24;
                    if (*var_s0 != 0) {
loop_194:
                        temp_at_7 = var_a5_4->unk10;
                        var_a5_4 += 0x10;
                        if (temp_at_7 != 0) {
                            temp_v0_6 = var_a5_4->unk10;
                            var_a5_4 += 0x10;
                            if (temp_v0_6 != 0) {
                                temp_v1_4 = var_a5_4->unk10;
                                var_a5_4 += 0x10;
                                if (temp_v1_4 != 0) {
                                    temp_t8_4 = var_a5_4->unk10;
                                    var_a5_4 += 0x10;
                                    if (temp_t8_4 != 0) {
                                        temp_at_8 = var_a5_4->unk10;
                                        var_a5_4 += 0x10;
                                        if (temp_at_8 != 0) {
                                            temp_v0_7 = var_a5_4->unk10;
                                            var_a5_4 += 0x10;
                                            if (temp_v0_7 == 0) {

                                            } else {
                                                goto loop_194;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var_a5_4 = var_s0;
                    }
                    sp428 = (s64) var_s7;
                    var_s0 = var_a5_4 + 0x10;
                    if (var_s5_3 != (temp_gp - 0x50A4)) {
                        goto loop_187;
                    }
                } else if (temp_a1_3 == 3) {
                    unksp3C8 = (s64) var_s2;
                    sp3D8 = 1;
                    var_s3_4 = sp348;
                    sp418 = (s64) var_s6;
                    sp428 = (s64) var_s7;
                    sp430 = (s64) var_s4;
                    sp420 = (s64) var_s5;
                    var_s4_4 = temp_gp - 0x50A0;
                    var_s5_4 = temp_gp - 0x54B8;
loop_214:
                    temp_a6_3 = var_s4_4->unk8;
                    var_a5_5 = 0;
                    *var_s3_4 = 0U;
                    if ((sp3D8 != temp_a6_3) && (temp_a6_3 != 3) && (temp_a6_3 != 5) && (temp_a6_3 != 7)) {
                        if (var_s5_4->unkA == 0x18) {
                            if (temp_a6_3 != 9) {
                                temp_a6_4 = *var_s0;
                                if (temp_a6_4 != 0) {
                                    var_s2_4 = var_s0;
                                    var_a0_3 = temp_a6_4;
loop_236:
                                    var_s0 = var_s2_4;
                                    if ((strcmp(var_a0_3, &nmbxMaxDisplayBuffersString) == 0) && (var_s2_4->unk8 == 2)) {
                                        var_a5_5 = 1;
                                        *var_s3_4 = 1U;
                                    } else {
                                        var_a0_3 = var_s2_4->unk10;
                                        var_s2_4 += 0x10;
                                        if (var_a0_3 != 0) {
                                            goto loop_236;
                                        }
                                        var_a5_5 = *var_s3_4;
                                        goto block_240;
                                    }
                                } else {
                                    var_s2_4 = var_s0;
block_240:
                                    var_s0 = var_s2_4;
                                }
                            } else {
                                var_a5_5 = 1;
                                *var_s3_4 = 1U;
                            }
                        }
                    } else {
                        var_a5_5 = 1;
                        *var_s3_4 = 1U;
                    }
                    if (var_a5_5 == 0) {
                        if (var_s4_4->unk0 & 1) {
                            *var_s3_4 = (u8) sp3D8;
                        }
                    }
                    var_s5_4 += 0x24;
                    var_s3_4 += 1;
                    var_a5_6 = var_s0;
                    var_s4_4 += 0x14;
                    if (*var_s0 != 0) {
loop_221:
                        temp_v0_8 = var_a5_6->unk10;
                        var_a5_6 += 0x10;
                        if (temp_v0_8 != 0) {
                            temp_v1_5 = var_a5_6->unk10;
                            var_a5_6 += 0x10;
                            if (temp_v1_5 != 0) {
                                temp_t8_5 = var_a5_6->unk10;
                                var_a5_6 += 0x10;
                                if (temp_t8_5 != 0) {
                                    temp_at_9 = var_a5_6->unk10;
                                    var_a5_6 += 0x10;
                                    if (temp_at_9 != 0) {
                                        temp_v0_9 = var_a5_6->unk10;
                                        var_a5_6 += 0x10;
                                        if (temp_v0_9 != 0) {
                                            temp_v1_6 = var_a5_6->unk10;
                                            var_a5_6 += 0x10;
                                            if (temp_v1_6 == 0) {

                                            } else {
                                                goto loop_221;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var_a5_6 = var_s0;
                    }
                    var_s0 = var_a5_6 + 0x10;
                    if (var_s5_4 != (temp_gp - 0x50A4)) {
                        goto loop_214;
                    }
                } else {
                    sp430 = (s64) var_s4;
                    sp428 = (s64) var_s7;
                    sp420 = (s64) var_s5;
                    sp3D8 = 1;
                    sp418 = (s64) var_s6;
                    unksp3C8 = (s64) var_s2;
                }
                var_s5 = (s32 *) sp420;
                var_s7 = (struct _Screen *) sp428;
                var_s4 = (void *) sp430;
                var_a5_7 = sp348->unk1;
                var_a2_2 = sp348->unk2;
                temp_v1_7 = sp348 + 3;
                var_at_2 = sp348->unk3;
                var_a1_3 = (sp348->unk0 == 0) ? 0 : 1;
                var_a3 = temp_v1_7 + 2;
                var_v1 = temp_v1_7->unk1;
                var_v0 = var_a1_3 + 1;
                do {
                    temp_a6_5 = var_a3->unk1;
                    temp_a7 = (var_a5_7 == 0) ? var_a1_3 : var_v0;
                    temp_a4 = var_a3 + 2;
                    temp_a0 = (var_a2_2 == 0) ? temp_a7 : (temp_a7 + 1);
                    temp_v0_10 = temp_a0 + 1;
                    var_a2_2 = temp_a4->unk1;
                    temp_v0_11 = (var_at_2 == 0) ? temp_a0 : temp_v0_10;
                    temp_a0_2 = temp_a4 + 2;
                    var_a5_7 = var_a3->unk2;
                    temp_a1_5 = (var_v1 == 0) ? temp_v0_11 : (temp_v0_11 + 1);
                    temp_v0_12 = temp_a1_5 + 1;
                    var_v1 = temp_a0_2->unk1;
                    temp_v0_13 = (var_a3->unk0 == 0) ? temp_a1_5 : temp_v0_12;
                    temp_a1_6 = temp_v0_13 + 1;
                    var_a3 = temp_a0_2 + 2;
                    var_at_2 = temp_a4->unk2;
                    var_a1_3 = (temp_a6_5 == 0) ? temp_v0_13 : temp_a1_6;
                    var_v0 = var_a1_3 + 1;
                } while (temp_a4 != (sp348 + 0x19));
                temp_v0_14 = (var_a5_7 == 0) ? var_a1_3 : var_v0;
                temp_a2 = (var_a2_2 == 0) ? temp_v0_14 : (temp_v0_14 + 1);
                temp_a1_7 = (var_at_2 == 0) ? temp_a2 : (temp_a2 + 1);
                temp_s0 = (var_v1 == 0) ? temp_a1_7 : (temp_a1_7 + 1);
                temp_a1_8 = 0x1D - temp_s0;
                sp340 = temp_a1_8;
                unksp3C8->unk0 = (s32) temp_a1_8;
                unksp3C8->unk4 = temp_gp->unk-758C((temp_s0 * 0xFFFFFFDC) + 0x414, (s32) temp_a1_8, (s32) unksp3C8, var_a2_2, temp_a4, var_a5_7, temp_a6_5, temp_a7);
                temp_v0_15 = temp_gp->unk-758C((temp_s0 * 0xFFFFFFEC) + 0x244, (s32) unksp3C8);
                sp338 = temp_s0;
                unksp3C8->unk8 = temp_v0_15;
                temp_v0_16 = temp_gp->unk-758C(0x1490, (s32) unksp3C8);
                var_a7_2 = temp_v0_16;
                var_ra = temp_gp - 0x50A0;
                var_t3_2 = temp_gp - 0x54B8;
                var_a1_4 = sp348;
                var_s3_5 = 0;
                var_s2_5 = 0;
                var_s0_2 = temp_gp->unk-3190;
                temp_s1_2 = var_a1_4 + 0x1D;
                unksp3C8->unkC = temp_v0_16;
loop_93:
                var_a5_8 = var_s0_2;
                var_a6_2 = 9;
                var_a1_4 += 1;
                if (*var_a1_4 != 0) {
                    if (*var_s0_2 != 0) {
loop_96:
                        temp_v0_17 = var_a5_8->unk10;
                        var_a5_8 += 0x10;
                        if (temp_v0_17 != 0) {
                            temp_v1_8 = var_a5_8->unk10;
                            var_a5_8 += 0x10;
                            if (temp_v1_8 != 0) {
                                temp_t8_6 = var_a5_8->unk10;
                                var_a5_8 += 0x10;
                                if (temp_t8_6 != 0) {
                                    temp_at_10 = var_a5_8->unk10;
                                    var_a5_8 += 0x10;
                                    if (temp_at_10 != 0) {
                                        temp_v0_18 = var_a5_8->unk10;
                                        var_a5_8 += 0x10;
                                        if (temp_v0_18 != 0) {
                                            temp_v1_9 = var_a5_8->unk10;
                                            var_a5_8 += 0x10;
                                            if (temp_v1_9 != 0) {
                                                goto loop_96;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        var_a5_8 = var_s0_2;
                    }
                    var_s0_2 = var_a5_8 + 0x10;
                } else {
                    var_a5_9 = 0;
                    temp_t2_2 = unksp3C8->unk4 + var_s2_5;
                    var_s2_5 += 0x24;
                    do {
                        var_a6_2 -= 1;
                        temp_at_11 = var_a5_9 + temp_t2_2;
                        temp_t8_7 = *(var_a5_9 + var_t3_2);
                        var_a5_9 += 4;
                        *temp_at_11 = temp_t8_7;
                    } while (var_a6_2 > 0);
                    temp_v0_19 = unksp3C8->unk8 + var_s3_5;
                    temp_v0_19->unk0 = (s32) var_ra->unk0;
                    temp_v0_19->unk4 = (s32) var_ra->unk4;
                    temp_v0_19->unk8 = (s32) var_ra->unk8;
                    temp_v0_19->unkC = (s32) var_ra->unkC;
                    var_s3_5 += 0x14;
                    temp_v0_19->unk10 = (s32) var_ra->unk10;
                    do {
                        temp_v1_10 = var_s0_2->unk0;
                        var_a7_2->unk0 = temp_v1_10;
                        var_a7_2->unk4 = (s32) var_s0_2->unk4;
                        var_a7_2->unk8 = (s32) var_s0_2->unk8;
                        var_a7_2->unkC = (s32) var_s0_2->unkC;
                        var_a7_2 += 0x10;
                        var_s0_2 += 0x10;
                    } while (temp_v1_10 != 0);
                }
                var_t3_2 += 0x24;
                var_ra += 0x14;
                if (var_a1_4 != temp_s1_2) {
                    goto loop_93;
                }
                temp_gp->unk-75A0((s32 *) sp348, var_a1_4);
                var_a1_2 = var_s5->unk80;
                if (var_a1_2 != 2) {
                    if (var_a1_2 == 0) {
                        goto block_154;
                    }
                } else {
block_154:
                    temp_t0_2 = unksp3C8->unk8;
                    if (sp338 < 0x1D) {
                        var_a1_5 = temp_t0_2;
                        var_a6_3 = sp340 & 3;
                        temp_a5_6 = (sp340 * 0x14) + temp_t0_2;
                        if (var_a6_3 != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x10c($a1) */);
                                temp_at_12 = var_a1_5->unkC;
                                var_a6_3 -= 1;
                                temp_v0_20 = var_a1_5;
                                temp_v1_11 = 3 ^ temp_at_12;
                                var_a1_5 += 0x14;
                                ((temp_v1_11 != 0) ? &sp314 : temp_v0_20)->unkC = (s32) (temp_at_12 - 1);
                            } while (var_a6_3 != 0);
                        }
                        temp_a6_6 = sp340 >> 2;
                        var_t3_3 = var_a1_5;
                        if (temp_a6_6 != 0) {
                            var_ra_2 = var_t3_3;
                            if (temp_a6_6 >= 3) {
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x10c($t3) */);
                                temp_ra = var_t3_3->unkC;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x148($t3) */);
                                sp330 = (s64) &sp314;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x134($t3) */);
                                var_s1 = var_t3_3->unk34;
                                var_t0 = var_t3_3;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x120($t3) */);
                                var_t2 = var_t3_3->unk20;
                                temp_t8_8 = temp_a5_6 - 0xA0;
                                var_t9_2 = var_t3_3 + 0x50;
                                var_a4 = var_t9_2->unkC;
                                var_v0_2 = temp_ra - 1;
                                var_s0_3 = var_t9_2->unk20;
                                var_ra_3 = 3 ^ temp_ra;
                                var_a5_10 = var_t3_3->unk48;
loop_160:
                                ((var_ra_3 != 0) ? &sp314 : var_t0)->unkC = var_v0_2;
                                temp_s5 = var_t9_2->unk48;
                                var_t0_2 = var_t9_2 + 0x50;
                                temp_s3 = var_t9_2->unk34;
                                var_ra_4 = var_t0_2->unk20;
                                temp_a0_3 = 3 ^ var_a4;
                                temp_s1_3 = var_t0_2->unkC;
                                (((3 ^ var_a5_10) != 0) ? &sp314 : (var_t3_3 + 0x3C))->unkC = (s32) (var_a5_10 - 1);
                                (((3 ^ var_s1) != 0) ? &sp314 : (var_t3_3 + 0x28))->unkC = (s32) (var_s1 - 1);
                                temp_v0_21 = var_a4 - 1;
                                (((3 ^ var_t2) != 0) ? &sp314 : (var_t3_3 + 0x14))->unkC = (s32) (var_t2 - 1);
                                var_t3_4 = var_t9_2;
                                if (var_t9_2 != temp_t8_8) {
                                    ((temp_a0_3 != 0) ? &sp314 : var_t3_4)->unkC = temp_v0_21;
                                    temp_s4 = var_t0_2->unk48;
                                    var_t3_3 = var_t0_2 + 0x50;
                                    temp_s2_3 = var_t0_2->unk34;
                                    var_t2 = var_t3_3->unk20;
                                    temp_a0_4 = 3 ^ temp_s1_3;
                                    temp_a6_7 = var_t3_3->unkC;
                                    (((3 ^ temp_s5) != 0) ? &sp314 : (var_t9_2 + 0x3C))->unkC = (s32) (temp_s5 - 1);
                                    (((3 ^ temp_s3) != 0) ? &sp314 : (var_t9_2 + 0x28))->unkC = (s32) (temp_s3 - 1);
                                    temp_v0_22 = temp_s1_3 - 1;
                                    (((3 ^ var_s0_3) != 0) ? &sp314 : (var_t9_2 + 0x14))->unkC = (s32) (var_s0_3 - 1);
                                    if (var_t0_2 != temp_t8_8) {
                                        ((temp_a0_4 != 0) ? &sp314 : var_t0_2)->unkC = temp_v0_22;
                                        var_a5_10 = var_t3_3->unk48;
                                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x134($t3) */);
                                        var_t9_2 = var_t3_3 + 0x50;
                                        var_s1 = var_t3_3->unk34;
                                        var_s0_3 = var_t9_2->unk20;
                                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x10c($t9) */);
                                        var_ra_3 = 3 ^ temp_a6_7;
                                        var_a4 = var_t9_2->unkC;
                                        (((3 ^ temp_s4) != 0) ? &sp314 : (var_t0_2 + 0x3C))->unkC = (s32) (temp_s4 - 1);
                                        (((3 ^ temp_s2_3) != 0) ? &sp314 : (var_t0_2 + 0x28))->unkC = (s32) (temp_s2_3 - 1);
                                        var_v0_2 = temp_a6_7 - 1;
                                        (((3 ^ var_ra_4) != 0) ? &sp314 : (var_t0_2 + 0x14))->unkC = (s32) (var_ra_4 - 1);
                                        var_t0 = var_t3_3;
                                        if (var_t3_3 == temp_t8_8) {
                                            temp_v1_12 = var_s0_3;
                                            var_s0_3 = var_t2;
                                            var_s2_6 = var_v0_2;
                                            var_s5 = (s32 *) sp420;
                                            var_t3_4 = var_t0;
                                            var_a6_4 = var_ra_3;
                                            var_s4 = (void *) sp430;
                                            var_ra_4 = temp_v1_12;
                                            var_t0_2 = var_t3_3;
                                        } else {
                                            goto loop_160;
                                        }
                                    } else {
                                        var_t9_2 = var_t3_3;
                                        var_t3_4 = var_t0_2;
                                        var_s1 = temp_s2_3;
                                        var_s2_6 = temp_v0_22;
                                        var_s0_3 = var_ra_4;
                                        var_a5_10 = temp_s4;
                                        var_a4 = temp_a6_7;
                                        var_s5 = (s32 *) sp420;
                                        var_a6_4 = temp_a0_4;
                                        var_s4 = (void *) sp430;
                                        var_ra_4 = var_t2;
                                    }
                                } else {
                                    var_s2_6 = temp_v0_21;
                                    var_a6_4 = temp_a0_3;
                                    temp_s4_2 = var_t9_2;
                                    var_t9_2 = var_t0_2;
                                    var_a5_10 = temp_s5;
                                    var_a4 = temp_s1_3;
                                    var_s1 = temp_s3;
                                    var_s5 = (s32 *) sp420;
                                    var_t0_2 = temp_s4_2;
                                    var_s4 = (void *) sp430;
                                }
                                ((var_a6_4 != 0) ? sp330 : (s64) var_t3_4)->unkC = var_s2_6;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x148($t9) */);
                                temp_s3_2 = var_t9_2->unk48;
                                temp_a3 = var_t9_2->unk34;
                                (((3 ^ var_a5_10) != 0) ? sp330 : (s64) (var_t0_2 + 0x3C))->unkC = (s32) (var_a5_10 - 1);
                                (((3 ^ var_s1) != 0) ? sp330 : (s64) (var_t0_2 + 0x28))->unkC = (s32) (var_s1 - 1);
                                (((3 ^ var_s0_3) != 0) ? sp330 : (s64) (var_t0_2 + 0x14))->unkC = (s32) (var_s0_3 - 1);
                                (((3 ^ var_a4) != 0) ? sp330 : (s64) var_t9_2)->unkC = (s32) (var_a4 - 1);
                                (((3 ^ temp_s3_2) != 0) ? sp330 : (s64) (var_t9_2 + 0x3C))->unkC = (s32) (temp_s3_2 - 1);
                                (((3 ^ temp_a3) != 0) ? sp330 : (s64) (var_t9_2 + 0x28))->unkC = (s32) (temp_a3 - 1);
                                (((3 ^ var_ra_4) == 0) ? (var_t9_2 + 0x14) : (s32 *) sp330)->unkC = (s32) (var_ra_4 - 1);
                            } else {
                                do {
                                    temp_t0_3 = var_ra_2->unk34;
                                    temp_t3_2 = var_ra_2->unk48;
                                    temp_v1_13 = var_ra_2->unkC;
                                    temp_t8_9 = var_ra_2->unk20;
                                    temp_v0_23 = 3 ^ temp_t8_9;
                                    (((3 ^ temp_t0_3) != 0) ? &sp314 : (var_ra_2 + 0x28))->unkC = (s32) (temp_t0_3 - 1);
                                    temp_a1_9 = ((3 ^ temp_v1_13) != 0) ? &sp314 : var_ra_2;
                                    (((3 ^ temp_t3_2) != 0) ? &sp314 : (var_ra_2 + 0x3C))->unkC = (s32) (temp_t3_2 - 1);
                                    temp_at_13 = var_ra_2 + 0x14;
                                    var_ra_2 += 0x50;
                                    temp_a1_9->unkC = (s32) (temp_v1_13 - 1);
                                    ((temp_v0_23 != 0) ? &sp314 : temp_at_13)->unkC = (s32) (temp_t8_9 - 1);
                                } while (var_ra_2 != temp_a5_6);
                            }
                        }
                        var_a1_2 = var_s5->unk80;
                    }
                }
                if (var_a1_2 != 3) {

                } else {
                    temp_t0_4 = unksp3C8->unk8;
                    if (sp338 < 0x1D) {
                        var_a1_6 = temp_t0_4;
                        var_a6_5 = sp340 & 3;
                        temp_a5_7 = temp_t0_4 + (sp340 * 0x14);
                        if (var_a6_5 != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x10c($a1) */);
                                temp_at_14 = var_a1_6->unkC;
                                var_a6_5 -= 1;
                                temp_v0_24 = var_a1_6;
                                temp_v1_14 = 3 ^ temp_at_14;
                                var_a1_6 += 0x14;
                                ((temp_v1_14 != 0) ? &sp314 : temp_v0_24)->unkC = (s32) (temp_at_14 - 2);
                            } while (var_a6_5 != 0);
                        }
                        temp_a6_8 = sp340 >> 2;
                        var_t3_5 = var_a1_6;
                        if (temp_a6_8 != 0) {
                            var_ra_5 = var_t3_5;
                            if (temp_a6_8 >= 3) {
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x10c($t3) */);
                                temp_ra_2 = var_t3_5->unkC;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x148($t3) */);
                                sp328 = (s64) &sp314;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x134($t3) */);
                                var_s1_2 = var_t3_5->unk34;
                                var_t0_3 = var_t3_5;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x120($t3) */);
                                var_t2_2 = var_t3_5->unk20;
                                temp_t8_10 = temp_a5_7 - 0xA0;
                                var_t9_3 = var_t3_5 + 0x50;
                                var_a4_2 = var_t9_3->unkC;
                                var_v0_3 = temp_ra_2 - 2;
                                var_s0_4 = var_t9_3->unk20;
                                var_ra_6 = 3 ^ temp_ra_2;
                                var_a5_11 = var_t3_5->unk48;
loop_175:
                                ((var_ra_6 != 0) ? &sp314 : var_t0_3)->unkC = var_v0_3;
                                temp_s5_2 = var_t9_3->unk48;
                                temp_t0_5 = var_t9_3 + 0x50;
                                temp_s3_3 = var_t9_3->unk34;
                                temp_ra_3 = temp_t0_5->unk20;
                                temp_a0_5 = 3 ^ var_a4_2;
                                temp_s1_4 = temp_t0_5->unkC;
                                (((3 ^ var_a5_11) != 0) ? &sp314 : (var_t3_5 + 0x3C))->unkC = (s32) (var_a5_11 - 2);
                                (((3 ^ var_s1_2) != 0) ? &sp314 : (var_t3_5 + 0x28))->unkC = (s32) (var_s1_2 - 2);
                                temp_v0_25 = var_a4_2 - 2;
                                (((3 ^ var_t2_2) != 0) ? &sp314 : (var_t3_5 + 0x14))->unkC = (s32) (var_t2_2 - 2);
                                temp_t3_3 = var_t9_3;
                                if (var_t9_3 != temp_t8_10) {
                                    ((temp_a0_5 != 0) ? &sp314 : temp_t3_3)->unkC = temp_v0_25;
                                    temp_s4_3 = temp_t0_5->unk48;
                                    var_t3_5 = temp_t0_5 + 0x50;
                                    temp_s2_4 = temp_t0_5->unk34;
                                    var_t2_2 = var_t3_5->unk20;
                                    temp_a0_6 = 3 ^ temp_s1_4;
                                    temp_a6_9 = var_t3_5->unkC;
                                    (((3 ^ temp_s5_2) != 0) ? &sp314 : (var_t9_3 + 0x3C))->unkC = (s32) (temp_s5_2 - 2);
                                    (((3 ^ temp_s3_3) != 0) ? &sp314 : (var_t9_3 + 0x28))->unkC = (s32) (temp_s3_3 - 2);
                                    temp_v0_26 = temp_s1_4 - 2;
                                    (((3 ^ var_s0_4) != 0) ? &sp314 : (var_t9_3 + 0x14))->unkC = (s32) (var_s0_4 - 2);
                                    if (temp_t0_5 != temp_t8_10) {
                                        ((temp_a0_6 != 0) ? &sp314 : temp_t0_5)->unkC = temp_v0_26;
                                        var_a5_11 = var_t3_5->unk48;
                                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x134($t3) */);
                                        var_t9_3 = var_t3_5 + 0x50;
                                        var_s1_2 = var_t3_5->unk34;
                                        var_s0_4 = var_t9_3->unk20;
                                        M2C_ERROR(/* unknown instruction: pref 0x1, 0x10c($t9) */);
                                        var_ra_6 = 3 ^ temp_a6_9;
                                        var_a4_2 = var_t9_3->unkC;
                                        (((3 ^ temp_s4_3) != 0) ? &sp314 : (temp_t0_5 + 0x3C))->unkC = (s32) (temp_s4_3 - 2);
                                        (((3 ^ temp_s2_4) != 0) ? &sp314 : (temp_t0_5 + 0x28))->unkC = (s32) (temp_s2_4 - 2);
                                        var_v0_3 = temp_a6_9 - 2;
                                        (((3 ^ temp_ra_3) != 0) ? &sp314 : (temp_t0_5 + 0x14))->unkC = (s32) (temp_ra_3 - 2);
                                        var_t0_3 = var_t3_5;
                                        if (var_t3_5 == temp_t8_10) {
                                            var_s5 = (s32 *) sp420;
                                            var_s2_7 = var_v0_3;
                                            goto block_179;
                                        }
                                        goto loop_175;
                                    }
                                    var_t9_3 = var_t3_5;
                                    var_t3_5 = temp_t0_5;
                                    var_t0_3 = temp_t0_5;
                                    var_s1_2 = temp_s2_4;
                                    var_s2_7 = temp_v0_26;
                                    var_s0_4 = var_t2_2;
                                    var_t2_2 = temp_ra_3;
                                    var_ra_6 = temp_a0_6;
                                    var_a4_2 = temp_a6_9;
                                    var_s5 = (s32 *) sp420;
                                    var_a5_11 = temp_s4_3;
block_179:
                                    var_s4 = (void *) sp430;
                                } else {
                                    var_s2_7 = temp_v0_25;
                                    var_t2_2 = var_s0_4;
                                    var_s0_4 = temp_ra_3;
                                    var_ra_6 = temp_a0_5;
                                    temp_t8_11 = var_t9_3;
                                    var_t9_3 = temp_t0_5;
                                    var_t0_3 = temp_t3_3;
                                    var_a5_11 = temp_s5_2;
                                    var_s5 = (s32 *) sp420;
                                    var_a4_2 = temp_s1_4;
                                    var_s1_2 = temp_s3_3;
                                    var_s4 = (void *) sp430;
                                    var_t3_5 = temp_t8_11;
                                }
                                ((var_ra_6 != 0) ? sp328 : (s64) var_t0_3)->unkC = var_s2_7;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x148($t9) */);
                                temp_a6_10 = var_t9_3->unk48;
                                temp_a0_7 = var_t9_3->unk34;
                                (((3 ^ var_a5_11) != 0) ? sp328 : (s64) (var_t3_5 + 0x3C))->unkC = (s32) (var_a5_11 - 2);
                                (((3 ^ var_s1_2) != 0) ? sp328 : (s64) (var_t3_5 + 0x28))->unkC = (s32) (var_s1_2 - 2);
                                (((3 ^ var_t2_2) != 0) ? sp328 : (s64) (var_t3_5 + 0x14))->unkC = (s32) (var_t2_2 - 2);
                                (((3 ^ var_a4_2) != 0) ? sp328 : (s64) var_t9_3)->unkC = (s32) (var_a4_2 - 2);
                                (((3 ^ temp_a6_10) != 0) ? sp328 : (s64) (var_t9_3 + 0x3C))->unkC = (s32) (temp_a6_10 - 2);
                                (((3 ^ temp_a0_7) != 0) ? sp328 : (s64) (var_t9_3 + 0x28))->unkC = (s32) (temp_a0_7 - 2);
                                (((3 ^ var_s0_4) == 0) ? (var_t9_3 + 0x14) : (s32 *) sp328)->unkC = (s32) (var_s0_4 - 2);
                            } else {
                                do {
                                    temp_t3_4 = var_ra_5->unk34;
                                    temp_at_15 = var_ra_5->unk48;
                                    temp_a6_11 = var_ra_5->unkC;
                                    temp_v0_27 = var_ra_5->unk20;
                                    temp_a1_10 = 3 ^ temp_v0_27;
                                    (((3 ^ temp_t3_4) != 0) ? &sp314 : (var_ra_5 + 0x28))->unkC = (s32) (temp_t3_4 - 2);
                                    temp_t0_6 = ((3 ^ temp_a6_11) != 0) ? &sp314 : var_ra_5;
                                    (((3 ^ temp_at_15) != 0) ? &sp314 : (var_ra_5 + 0x3C))->unkC = (s32) (temp_at_15 - 2);
                                    temp_v1_15 = var_ra_5 + 0x14;
                                    var_ra_5 += 0x50;
                                    temp_t0_6->unkC = (s32) (temp_a6_11 - 2);
                                    ((temp_a1_10 != 0) ? &sp314 : temp_v1_15)->unkC = (s32) (temp_v0_27 - 2);
                                } while (var_ra_5 != temp_a5_7);
                            }
                        }
                        var_a1_2 = var_s5->unk80;
                    }
                    if (var_a1_2 == 3) {
                        var_s0_5 = unksp3C8->unkC;
                        if (sp338 < 0x1D) {
                            var_s3_6 = 0;
loop_250:
                            temp_a1_11 = *var_s0_5;
                            var_s1_3 = var_s0_5;
                            var_s3_6 += 1;
                            var_a0_4 = temp_a1_11;
                            if (temp_a1_11 != 0) {
loop_255:
                                if ((strcmp(var_a0_4, &nmbxDepthBufferString) == 0) && (var_s1_3->unk8 != 0)) {
                                    var_s1_3->unk8 = 0;
                                } else if (strcmp(var_s1_3->unk0, &nmbxStencilBufferString) == 0) {
                                    if (var_s1_3->unk8 != 0) {
                                        var_s1_3->unk8 = 0;
                                    }
                                }
                                var_a0_4 = var_s1_3->unk10;
                                var_s1_3 += 0x10;
                                if (var_a0_4 != 0) {
                                    goto loop_255;
                                }
                                goto block_248;
                            }
                            var_s1_3 = var_s0_5;
                            if (temp_a1_11 != 0) {
                                var_a1_2 = (s32) var_s1_3;
loop_262:
                                temp_at_16 = var_a1_2->unk10;
                                var_a1_2 += 0x10;
                                if (temp_at_16 != 0) {
                                    temp_v0_28 = var_a1_2->unk10;
                                    var_a1_2 += 0x10;
                                    if (temp_v0_28 != 0) {
                                        temp_v1_16 = var_a1_2->unk10;
                                        var_a1_2 += 0x10;
                                        if (temp_v1_16 != 0) {
                                            temp_t8_12 = var_a1_2->unk10;
                                            var_a1_2 += 0x10;
                                            if (temp_t8_12 != 0) {
                                                temp_at_17 = var_a1_2->unk10;
                                                var_a1_2 += 0x10;
                                                if (temp_at_17 != 0) {
                                                    temp_v0_29 = var_a1_2->unk10;
                                                    var_a1_2 += 0x10;
                                                    if (temp_v0_29 != 0) {
                                                        goto loop_262;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
block_248:
                                var_a1_2 = (s32) var_s1_3;
                            }
                            var_s0_5 = var_a1_2 + 0x10;
                            if (var_s3_6 != sp340) {
                                goto loop_250;
                            }
                        }
                    }
                }
                var_s2 = (void *) unksp3C8;
                var_s6 = (void *) sp418;
                var_s3 = (s32) sp3D8;
                var_a5 = unksp3C8->unk0;
            }
            sp390 = (s64) var_a5;
            sp378 = (s64) var_s2->unk8;
            temp_s0_2 = var_a5 * 4;
            sp380 = (s64) var_s2->unk4;
            temp_gp->unk-3190 = (s32 *) var_s2->unkC;
            temp_gp->unk-318C = temp_gp->unk-758C(temp_s0_2, var_a1_2);
            temp_v0_30 = temp_gp->unk-758C(temp_s0_2);
            temp_gp->unk-39C0 = temp_v0_30;
            temp_gp->unk-39C4 = (s32 *) temp_gp->unk-318C;
            temp_gp->unk-39C8 = (s32 *) temp_gp->unk-3190;
            temp_t0_7 = var_s5->unk80;
            temp_a1_12 = temp_gp->unk-3138;
            temp_a5_8 = var_s3 << temp_t0_7;
            temp_gp->unk-3188 = temp_v0_30;
            var_t0_4 = (temp_t0_7 * 4) + (&sub_5e510000 - 0x1350);
            if (temp_a5_8 & temp_a1_12) {
                var_t1 = 0;
            } else {
                sp3F0 = (s64) var_t0_4;
                temp_a2_2 = temp_a5_8 | temp_a1_12;
                temp_gp->unk-3138 = temp_a2_2;
                sp388 = 1;
                sp3F0->unk0 = temp_gp->unk-758C(temp_s0_2, 1, temp_a2_2);
                temp_v0_31 = temp_gp->unk-758C(0x28);
                sp3F0->unk10 = temp_v0_31;
                temp_gp->unk-74E4(temp_v0_31, temp_gp - 0x54E0, 0x28);
                temp_a3_2 = sp3F0->unk0;
                temp_a4_2 = sp3F0->unk10;
                sp3E8 = (s64) temp_a4_2;
                sp3E0 = (s64) temp_a3_2;
                temp_gp->unk-7574(&sp268[0], 0, 0x80, temp_a3_2, temp_a4_2);
                temp_s0_3 = sp390 >= 1;
                var_t1 = sp388;
                var_t0_4 = (void *) sp3F0;
                if (temp_s0_3 != 0) {
                    var_a1_7 = sp380;
                    if (sp390 & 1) {
                        M2C_ERROR(/* unknown instruction: pref 0x0, 0x10a($a1) */);
                        temp_v1_17 = &(&sp268[0])[var_a1_7->unkA];
                        temp_v0_32 = *temp_v1_17;
                        var_a1_7 += 0x24;
                        *temp_v1_17 = temp_v0_32 + 1;
                    }
                    temp_t2_3 = sp390 >> 1;
                    if (temp_t2_3 != 0) {
                        if (temp_t2_3 >= 2) {
                            M2C_ERROR(/* unknown instruction: pref 0x0, 0x10a($a7) */);
                            var_at_3 = var_a1_7->unkA;
                            var_v1_2 = var_a1_7;
                            do {
                                temp_v0_33 = &(&sp268[0])[var_at_3];
                                *temp_v0_33 += 1;
                                temp_v0_34 = &(&sp268[0])[var_v1_2->unk2E];
                                *temp_v0_34 += 1;
                                var_v1_2 += 0x48;
                                M2C_ERROR(/* unknown instruction: pref 0x0, 0x10a($v1) */);
                                var_at_3 = var_v1_2->unkA;
                            } while (var_v1_2 != (((sp390 * 0x24) + sp380) - 0x48));
                            temp_t8_13 = &(&sp268[0])[var_at_3];
                            *temp_t8_13 += 1;
                            temp_a0_8 = &(&sp268[0])[var_v1_2->unk2E];
                            *temp_a0_8 += 1;
                        } else {
                            temp_v1_18 = &(&sp268[0])[var_a1_7->unkA];
                            *temp_v1_18 += 1;
                            temp_at_18 = &(&sp268[0])[var_a1_7->unk2E];
                            *temp_at_18 += 1;
                        }
                    }
                }
                temp_a7_2 = ((sp3E8->unk0 * 4) + &sp268[0])->unk2;
                sp3E8->unk2 = temp_a7_2;
                sp3E8->unk4 = (s32) ((0 * 4) + sp3E0);
                temp_a6_12 = ((sp3E8->unk8 * 4) + &sp268[0])->unk2;
                sp3E8->unkA = temp_a6_12;
                sp3E8->unkC = (s32) ((temp_a7_2 * 4) + sp3E0);
                temp_a6_13 = temp_a6_12 + temp_a7_2;
                temp_v1_19 = ((sp3E8->unk10 * 4) + &sp268[0])->unk2;
                sp3E8->unk12 = temp_v1_19;
                sp3E8->unk14 = (s32) ((temp_a6_13 * 4) + sp3E0);
                temp_v1_20 = temp_v1_19 + temp_a6_13;
                temp_v0_35 = ((sp3E8->unk18 * 4) + &sp268[0])->unk2;
                sp3E8->unk1A = temp_v0_35;
                sp3E8->unk1C = (s32) ((temp_v1_20 * 4) + sp3E0);
                sp3E8->unk24 = (s32) (((temp_v0_35 + temp_v1_20) * 4) + sp3E0);
                sp3E8->unk22 = (s16) ((sp3E8->unk20 * 4) + &sp268[0])->unk2;
                if (temp_s0_3 != 0) {
                    var_a0_5 = sp390 & 3;
                    temp_t3_5 = temp_gp - 0x5BE0;
                    var_a1_8 = sp378;
                    if (var_a0_5 != 0) {
                        do {
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a1) */);
                            var_a0_5 -= 1;
                            temp_at_19 = (var_a1_8->unk4 << 5) + temp_t3_5;
                            var_a1_8 += 0x14;
                            var_a1_8->unk-14 = (s32) temp_at_19->unk4;
                        } while (var_a0_5 != 0);
                    }
                    temp_a6_14 = sp390 >> 2;
                    var_a2_3 = var_a1_8;
                    if (temp_a6_14 != 0) {
                        if (temp_a6_14 >= 2) {
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x114($a2) */);
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a2) */);
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x13c($a2) */);
                            var_v1_3 = var_a2_3->unk40;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x128($a2) */);
                            var_a0_6 = var_a2_3->unk2C;
                            var_a1_9 = var_a2_3->unk18;
                            var_a3_2 = var_a2_3 + 0x50;
                            temp_a5_9 = ((sp390 * 0x14) + sp378) - 0x50;
                            var_at_4 = ((var_a2_3->unk4 << 5) + temp_t3_5)->unk4;
loop_76:
                            var_a2_3->unk0 = var_at_4;
                            M2C_ERROR(/* unknown instruction: pref 0x1, 0x128($a3) */);
                            var_a2_3->unk14 = (s32) ((var_a1_9 << 5) + temp_t3_5)->unk4;
                            var_a1_9 = var_a3_2->unk18;
                            var_a2_3->unk28 = (s32) ((var_a0_6 << 5) + temp_t3_5)->unk4;
                            var_a0_6 = var_a3_2->unk2C;
                            var_a2_3->unk3C = (s32) ((var_v1_3 << 5) + temp_t3_5)->unk4;
                            var_a2_3 = (s64) (var_a3_2 + 0x50);
                            temp_v1_21 = var_a3_2->unk40;
                            var_at_4 = ((var_a3_2->unk4 << 5) + temp_t3_5)->unk4;
                            if (var_a3_2 != temp_a5_9) {
                                var_a3_2->unk0 = var_at_4;
                                M2C_ERROR(/* unknown instruction: pref 0x1, 0x100($a2) */);
                                var_a3_2->unk14 = (s32) ((var_a1_9 << 5) + temp_t3_5)->unk4;
                                var_a1_9 = var_a2_3->unk18;
                                var_a3_2->unk28 = (s32) ((var_a0_6 << 5) + temp_t3_5)->unk4;
                                var_a0_6 = var_a2_3->unk2C;
                                var_a3_2->unk3C = (s32) ((temp_v1_21 << 5) + temp_t3_5)->unk4;
                                var_a3_2 = var_a2_3 + 0x50;
                                var_v1_3 = var_a2_3->unk40;
                                var_at_4 = ((var_a2_3->unk4 << 5) + temp_t3_5)->unk4;
                                if (var_a2_3 == temp_a5_9) {
                                    var_a6_6 = var_a2_3;
                                    var_a7_3 = var_v1_3;
                                } else {
                                    goto loop_76;
                                }
                            } else {
                                var_a6_6 = (s64) var_a3_2;
                                var_a7_3 = temp_v1_21;
                            }
                            var_a6_6->unk0 = var_at_4;
                            var_a6_6->unk14 = (s32) ((var_a1_9 << 5) + temp_t3_5)->unk4;
                            var_a6_6->unk28 = (s32) ((var_a0_6 << 5) + temp_t3_5)->unk4;
                            var_a6_6->unk3C = (s32) ((var_a7_3 << 5) + temp_t3_5)->unk4;
                        } else {
                            var_a2_3->unk0 = (s32) ((var_a2_3->unk4 << 5) + temp_t3_5)->unk4;
                            var_a2_3->unk14 = (s32) ((var_a2_3->unk18 << 5) + temp_t3_5)->unk4;
                            var_a2_3->unk28 = (s32) ((var_a2_3->unk2C << 5) + temp_t3_5)->unk4;
                            var_a2_3->unk3C = (s32) ((var_a2_3->unk40 << 5) + temp_t3_5)->unk4;
                        }
                    }
                }
            }
            temp_gp->unk-58D0 = 5;
            temp_gp->unk-58BE = (s16) temp_gp->unk-319C;
            temp_gp->unk-5864 = (s32) sp380;
            temp_gp->unk-58CC = (s32) var_t0_4->unk10;
            temp_gp->unk-5868 = (s16) sp390;
            temp_gp->unk-5A08 = (s32) sp378;
            var_s4->unk28 = (s32) var_t0_4->unk0;
            var_s4->unk24 = (s32) sp380;
            var_s4->unk20 = (s32) sp390;
            var_s4->unk48 = sp22C;
            if (temp_gp->unk-7CB4(var_s7, var_s4, sp390, var_t1, temp_gp - 0x39C8, sp378) != var_s3) {
                temp_gp->unk-75A0(var_s5);
                return 0;
            }
            temp_s0_4 = var_s7->unk74;
            temp_s0_4->unk64 = (s32) sp350;
            temp_s0_4->unkC = (s16) var_s7->unk8;
            temp_s0_4->unkE = (s16) var_s7->unkA;
            temp_a6_15 = var_s7->unk8;
            temp_s0_4->unk1C = (s32) (((var_s4->unk30 ^ 0x18) == 0) ? (temp_a6_15 * 4) : temp_a6_15);
            if (temp_gp->unk-7CFC(var_s7, temp_gp->unk-319C, temp_gp->unk-3194, 0xC, temp_gp->unk-3198) != 0) {
                temp_s0_4->unk68 = sp228;
                var_at_5 = &mgrasGCOpsCache__NED;
                if (temp_gp->unk-7334(sp370, var_s7, temp_gp - 0x5620, sp368, sp360) != 0) {
                    mgrasGCOpsCache__NED.unk4 = 0;
                    mgrasGCOpsCache__NED.unk0 = 0;
                    do {
                        var_at_5->unk8 = 0;
                        var_at_5->unkC = 0;
                        var_at_5->unk10 = 0;
                        var_at_5->unk14 = 0;
                        var_at_5->unk18 = 0;
                        var_at_5->unk1C = 0;
                        var_at_5 += 0x20;
                        var_at_5->unk0 = 0;
                        var_at_5->unk4 = 0;
                    } while (var_at_5 != (&mgrasGCOpsCache__NED + 0x3E0));
                    var_at_5->unk1C = 0;
                    var_at_5->unk18 = 0;
                    var_at_5->unk14 = 0;
                    var_at_5->unk10 = 0;
                    var_at_5->unkC = 0;
                    var_at_5->unk8 = 0;
                    var_a1_10 = var_s6->unk29;
                    if (var_a1_10 & 0x80) {
                        var_s5->unk6C = var_s3;
                        temp_at_20 = temp_gp - 0x71C0;
                        var_s7->unkC = (s16) *(((var_s6->unk29 & 3) * 4) + temp_at_20);
                        var_s7->unkE = (s16) (((var_s6->unk29 & 3) * 4) + temp_at_20)->unk2;
                    } else {
                        if ((var_a1_10 == 0xA) || (var_a1_10 == 0xB)) {
                            var_a1_10 = 1;
                            var_s6->unk29 = 1U;
                        }
                        temp_v0_36 = temp_gp - 0x7200;
                        var_s7->unkC = (s16) *(((var_a1_10 & 0xF) * 4) + temp_v0_36);
                        var_s7->unkE = (s16) (((var_s6->unk29 & 0xF) * 4) + temp_v0_36)->unk2;
                    }
                    if (temp_gp->unk-7E30(var_s7, &sp28[0], &sp20, &sp24, &sp230) != 0) {
                        temp_gp->unk-591A = (s16) sp24;
                        temp_gp->unk-5918 = (s16) sp20;
                        if (sp20 & 0xFFFF) {
                            if (sp24 & 0xFFFF) {
                                sp2E8 = 0;
                                sp2EA = 0;
                                sp2EC = var_s7->unk8;
                                sp2EE = var_s7->unkA;
                                mgrasBlackCmap(var_s7, var_s5, &sp2E8);
                                temp_v0_37 = temp_gp->unk-758C(0x8000);
                                var_s5->unk64 = temp_v0_37;
                                if (temp_v0_37 != NULL) {
                                    nfbRDinfo__JED.unk8 = (s32) (temp_gp->unk-3998 | 4);
                                    temp_gp->unk-7330(var_s7, &nfbRDinfo__JED);
                                    if (nfbRDGeneration__KED == serverGeneration) {
                                        if (sp358 == 0) {
                                            goto block_45;
                                        }
                                    } else {
                                        nfbRDGeneration__KED = serverGeneration;
                                        temp_v0_38 = temp_gp->unk-73B4(serverGeneration, &nfbRDGeneration__KED);
                                        temp_a0_9 = temp_v0_38 < 0;
                                        sp358 = temp_a0_9;
                                        nfbRDScreenPrivateIndex__LED = temp_v0_38;
                                        if (temp_a0_9 == 0) {
block_45:
                                            *(var_s7->unk1B4 + (nfbRDScreenPrivateIndex__LED * 4)) = temp_gp - 0x39A0;
                                        }
                                    }
                                    temp_gp->unk-7ECC(var_s7, &nfbRDScreenPrivateIndex__LED);
                                    var_s7->unk1C = temp_gp->unk-7594(0);
                                    temp_a1_13 = var_s4->unk44;
                                    if (temp_gp->unk-7D44(var_s7, temp_a1_13->unk10, temp_a1_13->unk11) != 0) {
                                        temp_gp->unk-732C(var_s7, temp_gp - 0x5950);
                                        temp_v0_39 = temp_gp->unk-758C(0x18);
                                        var_s5->unk70 = temp_v0_39;
                                        if (temp_v0_39 != NULL) {
                                            var_s7->unk154(var_s5->unk70, 0, 0);
                                            var_s7->unk154(var_s5->unk70 + 0xC, 0, 0);
                                            sp2F8 = 0x11;
                                            sp2F4 = var_s3;
                                            sp2F0 = var_s3;
                                            var_s5->unk8C = (s32) ((temp_gp->unk-7328(&sub_5e3d0000 + 0x3530, &sp2F0) == 0) ? 0 : var_s3);
                                            return 1;
                                        }
                                        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2860);
                                        temp_gp->unk-75A0(var_s5->unk64);
                                        temp_gp->unk-75A0(var_s5);
                                        temp_gp->unk-75A0(temp_s0_4);
                                        temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
                                        return 0;
                                    }
                                    temp_gp->unk-75A0(var_s5->unk64);
                                    temp_gp->unk-75A0(var_s5);
                                    temp_gp->unk-75A0(temp_s0_4);
                                    temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
                                    return 0;
                                }
                                temp_gp->unk-75A0(var_s5);
                                temp_gp->unk-75A0(temp_s0_4);
                                temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
                                return 0;
                            }
                            /* Duplicate return node #55. Try simplifying control flow for better match */
                            temp_gp->unk-74EC(&sub_5e4f0000 + 0x2830);
                            temp_gp->unk-75A0(var_s5);
                            temp_gp->unk-75A0(temp_s0_4);
                            temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
                            return 0;
                        }
                        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2830);
                        temp_gp->unk-75A0(var_s5);
                        temp_gp->unk-75A0(temp_s0_4);
                        temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
                        return 0;
                    }
                    temp_gp->unk-75A0(var_s5);
                    temp_gp->unk-75A0(temp_s0_4);
                    temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
                    return 0;
                }
                temp_gp->unk-75A0(var_s5);
                temp_gp->unk-75A0(temp_s0_4);
                temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
                return 0;
            }
            temp_gp->unk-75A0(var_s5);
            temp_gp->unk-75A0(temp_s0_4);
            temp_gp->unk-7CF4(temp_gp->unk-3198, temp_gp->unk-319C, temp_gp->unk-3194);
            return 0;
        }
        return 0;
    }
    return 0;
}

s32 mgrasCloseScreen(s32 index, struct _Screen *pScreen) {
    s64 sp28;
    s64 sp20;
    void *temp_a0;
    void *temp_gp;
    void *temp_s1;

    sp28 = (s64) index;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x13C010;
    sp20 = (s64) pScreen->unk74->unk64;
    temp_s1 = *(pScreen->unk1B4 + (temp_gp->unk-3140 * 4));
    pScreen->unk160(temp_s1->unk70);
    pScreen->unk160(temp_s1->unk70 + 0xC);
    Xfree(temp_s1->unk64);
    Xfree(temp_s1->unk70);
    temp_a0 = temp_s1->unk68;
    if (temp_a0 != NULL) {
        Xfree(temp_a0);
    }
    Xfree(temp_s1);
    temp_gp->unk-731C(pScreen);
    Xfree(pScreen->unk74->unk74);
    Xfree(pScreen->unk74->unk7C);
    if (*((pScreen->unk0 * 4) + &XSGIvcScreens) != 0) {
        mgrasResetProc(pScreen);
        *((pScreen->unk0 * 4) + &XSGIvcScreens) = 0;
    }
    if (temp_gp->unk-74DC(sp20, 0x6D67000B, sp, 3, 3, 0) < 0) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x2890);
    }
    if (temp_gp->unk-31A0 != 0) {
        temp_gp->unk-7318(temp_gp->unk-31A0, 0x4000);
        temp_gp->unk-73A4(temp_gp->unk-31A0);
        temp_gp->unk-31A0 = 0;
    }
    return temp_gp->unk-7CB8(sp28, pScreen);
}

s64 mgrasKernInit(struct _Screen *arg0, s64 arg1, s64 arg2, s64 arg3) {
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
    void *sp10;
    void *sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_v0;
    s64 temp_v0_3;
    u32 temp_a0_2;
    u32 temp_v0_4;
    u32 temp_v0_6;
    u32 var_a1_2;
    void *temp_a0;
    void *temp_a2;
    void *temp_v0_5;
    void *var_a2;
    void *var_s0;

    var_a1 = saved_reg_gp->unk-313C;
    sp0 = 0;
    if (saved_reg_gp->unk-5550 == serverGeneration) {
        sp38 = arg1;
        sp40 = arg3;
        sp48 = arg2;
        goto block_2;
    }
    sp38 = arg1;
    sp40 = arg3;
    sp48 = arg2;
    saved_reg_gp->unk-5550 = (s32) serverGeneration;
    temp_v0 = saved_reg_gp->unk-73B4(var_a1, arg1);
    saved_reg_gp->unk-3140 = temp_v0;
    if (temp_v0 >= 0) {
        temp_v0_2 = saved_reg_gp->unk-730C();
        var_a1 = temp_v0_2;
        saved_reg_gp->unk-313C = temp_v0_2;
block_2:
        if (saved_reg_gp->unk-7314(arg0, var_a1, 0xC) != 0) {
            temp_v0_3 = saved_reg_gp->unk-758C(0x10C);
            sp50 = temp_v0_3;
            if (temp_v0_3 == 0) {
                return 0;
            }
            *(arg0->unk1B4 + (saved_reg_gp->unk-3140 * 4)) = (s32) sp50;
            if (saved_reg_gp->unk-7310(arg0->unk0, sp38, 0, &sp4, sp40, sp48, sp) != 0) {
                sp50->unk50 = 1;
                sp50->unk4C = 0;
                sp50->unk0 = sp0;
                if (saved_reg_gp->unk-3130 != 0) {
                    var_s0 = &sub_5e510000 - 0x1350;
                    goto block_8;
                }
                temp_v0_4 = saved_reg_gp->unk-7308(0xB);
                saved_reg_gp->unk-3130 = temp_v0_4;
                if (temp_v0_4 != 0) {
                    var_s0 = &sub_5e510000 - 0x1350;
                    saved_reg_gp->unk-7574(var_s0 + 0x20, 0, 0x100);
block_8:
                    temp_a2 = (sp38 * 4) + var_s0;
                    sp30 = (s64) temp_a2;
                    var_a2 = temp_a2->unk20;
                    if (var_a2 != NULL) {
                        goto block_9;
                    }
                    temp_v0_5 = saved_reg_gp->unk-73D8(saved_reg_gp->unk-3130, 0x9F8, var_a2);
                    sp30->unk20 = temp_v0_5;
                    if (temp_v0_5 != NULL) {
                        saved_reg_gp->unk-7574(temp_v0_5, 0, 0x9F8);
                        temp_a0 = sp30->unk20;
                        sp8 = temp_a0;
                        if ((saved_reg_gp->unk-73DC(temp_a0, 0x9F8) >= 0) && (ioctl(sp4, 0x6D67000C, &sp8) >= 0)) {
                            var_a2 = sp30->unk20;
block_9:
                            sp50->unk4 = var_a2;
                            if (saved_reg_gp->unk-31A0 != 0) {
                                goto block_10;
                            }
                            temp_v0_6 = ioctl(sp4, 0x6D67000A, NULL);
                            temp_a0_2 = saved_reg_gp->unk-3130;
                            saved_reg_gp->unk-31A8 = temp_v0_6;
                            if (temp_v0_6 < temp_a0_2) {
                                var_a1_2 = temp_v0_6;
                                do {
                                    var_a1_2 += temp_v0_6;
                                } while (var_a1_2 < temp_a0_2);
                                if (temp_a0_2 == var_a1_2) {
                                    goto block_19;
                                }
                                goto block_21;
                            }
                            if (temp_a0_2 != temp_v0_6) {
block_21:
                                var_v0 = memalign(temp_v0_6, 0x4000, memalign, temp_v0_6);
                            } else {
block_19:
                                var_v0 = memalign(temp_a0_2, 0x4000, memalign, temp_v0_6);
                            }
                            saved_reg_gp->unk-31A0 = var_v0;
                            if (mpin(var_v0, 0x4000, mpin) >= 0) {
block_10:
                                sp28 = 0x4000;
                                sp24 = saved_reg_gp->unk-31A0;
                                sp1C = 0x4000;
                                sp18 = saved_reg_gp->unk-31A0;
                                sp20 = 0;
                                sp14 = 0;
                                sp10 = (void *)0xC;
                                if (ioctl(sp4, 0x6D67000B, &sp10, 0xC, 0x4000) >= 0) {
                                    return (s64) sp4;
                                }
                                saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x2910);
                                saved_reg_gp->unk-7318(saved_reg_gp->unk-31A0, 0x4000);
                                saved_reg_gp->unk-73A4(sp30->unk20);
                                sp30->unk20 = NULL;
                                saved_reg_gp->unk-75A0(sp50, sp30);
                                return 0;
                            }
                            saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x28E0);
                            saved_reg_gp->unk-73A4(sp30->unk20);
                            sp30->unk20 = NULL;
                            saved_reg_gp->unk-75A0(sp50, sp30);
                            return 0;
                        }
                        saved_reg_gp->unk-73A4(sp30->unk20);
                        sp30->unk20 = NULL;
                        saved_reg_gp->unk-75A0(sp50, sp30);
                        return 0;
                    }
                    saved_reg_gp->unk-75A0(sp50);
                    return 0;
                }
                saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x28C0);
                return 0;
            }
            return 0;
        }
        return 0;
    }
    return 0;
}

void mgrasDebugf(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp458;
    s64 sp450;
    s64 sp448;
    s64 sp440;
    s64 sp438;
    s64 sp430;
    s64 sp428;
    s32 sp424;
    s32 temp_a0;
    s32 var_a1;
    s32 var_at;
    s32 var_at_2;
    u8 *temp_s0;
    u8 *temp_s2;
    u8 *var_a0;
    u8 *var_a1_2;
    u8 *var_a5;
    u8 *var_a6;
    u8 *var_a6_2;
    u8 *var_at_3;
    u8 *var_s0;
    u8 *var_s0_2;
    u8 *var_s1;
    u8 temp_a3;
    u8 temp_a3_2;
    u8 temp_a4;
    u8 temp_a4_2;
    u8 temp_at;
    u8 temp_at_2;
    u8 temp_v0_2;
    u8 temp_v1_2;
    u8 var_a2;
    u8 var_v0;
    void *temp_v0;
    void *temp_v1;

    sp438 = arg3;
    sp458 = arg7;
    sp450 = arg6;
    sp448 = arg5;
    sp428 = arg1;
    sp424 = arg0;
    var_s1 = sp;
    sp430 = arg2;
    temp_s2 = &sub_5e510000 - 0x1230;
    sp440 = arg4;
    var_s0 = temp_s2;
    saved_reg_gp->unk-73E4(sp, &sub_5e4f0000 + 0x3010, &sub_5e4f0000 + 0x3020, saved_reg_gp->unk-312C);
    var_a6 = temp_s2;
    var_a5 = sp;
    if ((sp0 != 0) && (*temp_s2 == sp0)) {
loop_6:
        temp_at = var_a5->unk0;
        if ((temp_at == 0x21) || (temp_at == 0x28) || (temp_at == 0x20)) {
            var_a6_2 = var_s1;
            var_at = 0;
            temp_a0 = var_a5 - var_s1;
            if ((u32) var_s1 < (u32) var_a5) {
                var_a1 = temp_a0 & 7;
                var_at = 0;
                temp_v0 = var_s1 + temp_a0;
                if (var_a1 != 0) {
                    do {
                        var_a1 -= 1;
                        var_a6_2 += 1;
                        var_at += 1;
                        var_a6_2->unk-1 = 0x20;
                    } while (var_a1 != 0);
                }
                var_a1_2 = var_a6_2;
                if ((temp_a0 >> 3) != 0) {
loop_14:
                    var_a1_2->unk7 = 0x20;
                    var_a1_2->unk6 = 0x20;
                    var_a1_2->unk5 = 0x20;
                    var_a1_2->unk4 = 0x20;
                    var_a1_2->unk3 = 0x20;
                    var_a1_2->unk2 = 0x20;
                    temp_v1 = var_a1_2 + 8;
                    var_a1_2->unk1 = 0x20;
                    var_a1_2->unk0 = 0x20;
                    var_at += 8;
                    if (temp_v1 != temp_v0) {
                        temp_v1->unk7 = 0x20;
                        temp_v1->unk6 = 0x20;
                        temp_v1->unk5 = 0x20;
                        temp_v1->unk4 = 0x20;
                        temp_v1->unk3 = 0x20;
                        temp_v1->unk2 = 0x20;
                        var_a1_2 = temp_v1 + 8;
                        temp_v1->unk1 = 0x20;
                        var_a1_2->unk8 = 0x20;
                        var_at += 8;
                        if (var_a1_2 == temp_v0) {

                        } else {
                            goto loop_14;
                        }
                    }
                }
            }
            var_s1 += var_at;
            var_a6 = var_s0;
        }
        temp_at_2 = var_a5->unk1;
        var_s0 += 1;
        var_a5 += 1;
        if ((temp_at_2 != 0) && (*var_s0 == temp_at_2)) {
            goto loop_6;
        }
    }
    var_at_2 = 0;
    var_s0_2 = var_s1;
    var_a0 = var_a6;
    if (*var_s1 != 0) {
        var_v0 = *var_s1;
        do {
            *var_a0 = var_v0;
            var_v0 = var_s0_2->unk1;
            var_s0_2 += 1;
            var_a0 += 1;
            var_at_2 += 1;
        } while (var_v0 != 0);
    }
    *(var_at_2 + var_a6) = 0;
    temp_s0 = var_at_2 + var_s1;
    saved_reg_gp->unk-7304(temp_s0, sp424, &sp428);
    var_a2 = *temp_s0;
    var_at_3 = temp_s0;
    if (var_a2 != 0) {
loop_22:
        temp_a3 = var_at_3->unk1;
        var_at_3 += 1;
        if (temp_a3 != 0) {
            temp_a4 = var_at_3->unk1;
            var_at_3 += 1;
            if (temp_a4 != 0) {
                temp_v1_2 = var_at_3->unk1;
                var_at_3 += 1;
                if (temp_v1_2 != 0) {
                    var_a2 = var_at_3->unk1;
                    var_at_3 += 1;
                    if (var_a2 != 0) {
                        temp_a3_2 = var_at_3->unk1;
                        var_at_3 += 1;
                        if (temp_a3_2 != 0) {
                            temp_a4_2 = var_at_3->unk1;
                            var_at_3 += 1;
                            if (temp_a4_2 != 0) {
                                goto loop_22;
                            }
                        }
                    }
                }
            }
        }
    } else {
        var_at_3 = temp_s0;
    }
    temp_v0_2 = var_at_3->unk-1;
    if (temp_v0_2 != 0xA) {
        if (temp_v0_2 != 0xD) {
            var_at_3->unk1 = 0;
            var_at_3->unk0 = 0xA;
        }
    }
    saved_reg_gp->unk-7300(sp, &__iob + 0x20, var_a2);
}

void mgrasPostInit(void *arg0, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s64 sp130;
    s64 sp110;
    s64 sp108;
    ? spC4;
    f32 temp_f22;
    s16 var_s5;
    s16 var_s6;
    s32 *var_a2_2;
    s32 *var_at_3;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s7;
    s32 var_t2;
    s32 var_v0;
    s64 var_ra;
    void *temp_a6;
    void *temp_gp;
    void *temp_t1;
    void *temp_t3;
    void *temp_t8;
    void *var_a1;
    void *var_a2;
    void *var_a3_2;
    void *var_at;
    void *var_at_2;
    void *var_s0;
    void *var_s0_2;
    void *var_t2_2;
    void *var_v1;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x13740C;
    var_t2 = 0;
    var_a7 = 0;
    temp_t3 = moninfoData;
    var_a2 = temp_t3;
    temp_t8 = *(arg0->unk1B4 + (temp_gp->unk-3140 * 4));
    if (temp_t3 != NULL) {
        temp_t0 = numMonitors;
        if (temp_t0 > 0) {
loop_12:
            var_a5 = var_a2->unk44;
            var_a7 += 1;
            var_a6 = var_a7 < temp_t0;
            if (var_a5 != 0) {
                temp_t1 = var_a2->unk48;
                if (var_a5 > 0) {
                    var_at = temp_t1;
loop_6:
                    if ((var_at->unk0 == 9) && (var_a3 = var_at->unk4, (var_a3 == 0))) {
                        var_a4 = var_at->unk8;
                        var_at += 0xC;
                        if (var_a4 == 0) {
                            var_t2 = 1;
                            temp_t8->unk74 = 0;
                        } else {
                            goto block_5;
                        }
                    } else {
                        var_at += 0xC;
block_5:
                        if (var_at != (temp_t1 + (var_a5 * 0xC))) {
                            goto loop_6;
                        }
                    }
                }
            }
            var_a2 += 0x4C;
            if (var_a6 != 0) {
                if (var_t2 == 0) {
                    goto loop_12;
                }
                goto block_16;
            }
            goto block_15;
        }
block_15:
        if (var_t2 != 0) {
block_16:
            temp_a0 = temp_t8->unk78;
            if (temp_a0 != 0) {
                temp_gp->unk-7EDC(temp_a0, 9, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
                var_ra = sp130;
            }
        }
        var_s5 = arg0->unkE;
        var_s6 = arg0->unkC;
        var_s1 = 0;
        var_s0 = temp_t3;
        temp_s2 = **(arg0->unk1B4 + (vcScreenPrivateIndex * 4));
        if (temp_t0 > 0) {
            sp130 = var_ra;
loop_20:
            var_s1 += 1;
            if (strcasecmp(var_s0, temp_s2) != 0) {
                var_s0 += 0x4C;
                if (var_s1 >= numMonitors) {

                } else {
                    goto loop_20;
                }
            } else {
                temp_s2_2 = var_s0->unk44;
                var_v0 = 0;
                var_a2_2 = sp;
                var_s7 = 0;
                var_at_2 = var_s0->unk48;
                temp_f22 = (f32) arg0->unk8 / (f32) arg0->unkA;
                if (temp_s2_2 > 0) {
loop_29:
                    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($at) */);
                    var_v0 += 1;
                    if (var_at_2->unk0 == 6) {
                        if (var_a2_2 != (sp + 0xC8)) {
                            var_a2_2 += 4;
                            var_s7 += 1;
                            var_a2_2->unk-4 = (s32) var_at_2->unk4;
                            goto block_28;
                        }
                        temp_gp->unk-74EC(&sub_5e4f0000 + 0x34C8, 6, var_a2_2);
                    } else {
block_28:
                        var_at_2 += 0xC;
                        if (var_v0 != temp_s2_2) {
                            goto loop_29;
                        }
                    }
                }
                sp108 = (s64) arg0;
                if (var_s0->unk44 > 0) {
                    temp_s8 = var_s7 >= 1;
                    var_s0_2 = var_s0->unk48;
                    var_s1_2 = 0;
                    sp110 = (s64) ((var_s7 * 4) + sp);
loop_38:
                    var_at_3 = sp;
                    var_s1_2 += 1;
                    if ((var_s0_2->unk0 == 7) && (temp_s8 != 0) && (temp_s8 != 0)) {
                        if (var_s7 >= 5) {
                            var_a3_2 = sp + 4;
                            var_a1 = var_a3_2 + 4;
                            var_v1 = var_a1 + 4;
                            M2C_ERROR(/* unknown instruction: movf.s $f8, $f6, $fcc3 */);
                            M2C_ERROR(/* unknown instruction: movt.s $f10, $f11, $fcc2 */);
                            temp_a4 = sp110 - 0x10;
                            var_t2_2 = var_v1 + 4;
                            M2C_ERROR(/* unknown instruction: movf.s $f8, $f20, $fcc2 */);
loop_43:
                            M2C_ERROR(/* unknown instruction: movt $at, $t8, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movt $t1, $t0, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movt $a7, $at, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movf.s $f1, $f2, $fcc0 */);
                            temp_a6 = var_t2_2 + 4;
                            M2C_ERROR(/* unknown instruction: movt.s $f8, $f1, $fcc1 */);
                            if (var_a3_2 != temp_a4) {
                                M2C_ERROR(/* unknown instruction: movt $at, $t8, $fcc1 */);
                                temp_t0_2 = var_t2_2->unk4;
                                M2C_ERROR(/* unknown instruction: movt $t1, $a2, $fcc1 */);
                                M2C_ERROR(/* unknown instruction: movt $a7, $a2, $fcc1 */);
                                M2C_ERROR(/* unknown instruction: movf.s $f1, $f2, $fcc0 */);
                                var_a3_2 = temp_a6 + 4;
                                M2C_ERROR(/* unknown instruction: movt.s $f8, $f1, $fcc1 */);
                                if (var_a1 != temp_a4) {
                                    M2C_ERROR(/* unknown instruction: movt $at, $t8, $fcc1 */);
                                    M2C_ERROR(/* unknown instruction: movt $t1, $a0, $fcc1 */);
                                    M2C_ERROR(/* unknown instruction: movt $a7, $a0, $fcc1 */);
                                    M2C_ERROR(/* unknown instruction: movf.s $f1, $f2, $fcc0 */);
                                    var_a1 = var_a3_2 + 4;
                                    M2C_ERROR(/* unknown instruction: movt.s $f8, $f1, $fcc1 */);
                                    if (var_v1 != temp_a4) {
                                        M2C_ERROR(/* unknown instruction: movt $at, $t8, $fcc1 */);
                                        M2C_ERROR(/* unknown instruction: movt $t1, $v0, $fcc1 */);
                                        M2C_ERROR(/* unknown instruction: movt $a7, $v0, $fcc1 */);
                                        M2C_ERROR(/* unknown instruction: movf.s $f1, $f2, $fcc0 */);
                                        var_v1 = var_a1 + 4;
                                        M2C_ERROR(/* unknown instruction: movt.s $f8, $f1, $fcc0 */);
                                        if (var_t2_2 != temp_a4) {
                                            M2C_ERROR(/* unknown instruction: movt $at, $t8, $fcc0 */);
                                            M2C_ERROR(/* unknown instruction: movt $t1, $t3, $fcc0 */);
                                            M2C_ERROR(/* unknown instruction: movt $a7, $at, $fcc0 */);
                                            M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc1 */);
                                            var_t2_2 = var_v1 + 4;
                                            M2C_ERROR(/* unknown instruction: movt.s $f8, $f0, $fcc1 */);
                                            if (temp_a6 == temp_a4) {
                                                M2C_ERROR(/* unknown instruction: movt.s $f10, $f11, $fcc1 */);
                                            } else {
                                                goto loop_43;
                                            }
                                        } else {
                                            M2C_ERROR(/* unknown instruction: movt.s $f13, $f10, $fcc0 */);
                                        }
                                    } else {
                                        M2C_ERROR(/* unknown instruction: movt.s $f11, $f12, $fcc1 */);
                                    }
                                } else {
                                    M2C_ERROR(/* unknown instruction: movt.s $f10, $f11, $fcc1 */);
                                }
                            } else {
                                M2C_ERROR(/* unknown instruction: movt.s $f13, $f10, $fcc1 */);
                            }
                            M2C_ERROR(/* unknown instruction: movf.s $f13, $f2, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movf.s $f13, $f8, $fcc2 */);
                            M2C_ERROR(/* unknown instruction: movt $at, $s0, $fcc4 */);
                            M2C_ERROR(/* unknown instruction: movf.s $f12, $f11, $fcc0 */);
                            M2C_ERROR(/* unknown instruction: movf $a0, $t1, $fcc4 */);
                            M2C_ERROR(/* unknown instruction: movt $s5, $s0, $fcc2 */);
                            M2C_ERROR(/* unknown instruction: movf $s6, $a7, $fcc4 */);
                            M2C_ERROR(/* unknown instruction: movf.s $f20, $f10, $fcc3 */);
                            M2C_ERROR(/* unknown instruction: movf $t3, $a0, $fcc2 */);
                            M2C_ERROR(/* unknown instruction: movf.s $f12, $f13, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movf $s5, $s6, $fcc2 */);
                            M2C_ERROR(/* unknown instruction: movt $a6, $s0, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movf $a2, $t3, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movt $s3, $s0, $fcc0 */);
                            M2C_ERROR(/* unknown instruction: movf $a6, $s5, $fcc1 */);
                            M2C_ERROR(/* unknown instruction: movf.s $f20, $f12, $fcc0 */);
                            var_s5 = M2C_ERROR(/* unknown instruction: movf $t0, $a2, $fcc0 */);
                            var_s6 = M2C_ERROR(/* unknown instruction: movf $s6, $a6, $fcc0 */);
                        } else {
                            do {
                                M2C_ERROR(/* unknown instruction: movf.s $f12, $f13, $fcc1 */);
                                var_at_3 += 4;
                                M2C_ERROR(/* unknown instruction: movt $a6, $s0, $fcc0 */);
                                var_s5 = M2C_ERROR(/* unknown instruction: movt $s5, $v1, $fcc0 */);
                                M2C_ERROR(/* unknown instruction: movt.s $f20, $f12, $fcc0 */);
                                var_s6 = M2C_ERROR(/* unknown instruction: movt $s6, $a6, $fcc0 */);
                            } while (var_at_3 != sp110);
                        }
                    }
                    var_s0_2 += 0xC;
                    if (var_s1_2 != var_s0->unk44) {
                        goto loop_38;
                    }
                }
                sp108->unkE = var_s5;
                sp108->unkC = var_s6;
            }
        }
    }
}

void mgrasResetProc(struct _Screen *pScreen) {
    s64 sp30;
    s64 sp0;
    s32 temp_a0;
    s64 var_ra;
    u32 var_s2;
    void *temp_gp;
    void *temp_s0;
    void *var_s1;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x136C7C;
    temp_s0 = *(pScreen->unk1B4 + (*temp_gp->unk-756C * 4));
    if (temp_s0 != NULL) {
        sp0 = (s64) temp_s0->unk3A4;
        var_s2 = 0;
        if (temp_s0->unk4 != 0) {
            var_s1 = temp_s0->unk8;
loop_5:
            temp_a0 = var_s1->unk144;
            var_s2 += 1;
            if (temp_a0 != 0) {
                free(temp_a0);
                var_s1->unk144 = 0;
            }
            var_s1 += 0x1F4;
            if (var_s2 < temp_s0->unk4) {
                goto loop_5;
            }
            var_ra = sp30;
        }
        if (sp0 == 0) {
            sp30 = var_ra;
        } else {
            sp30 = var_ra;
            temp_gp->unk-75A0(sp0, sp0, Xfree);
        }
        Xfree(temp_s0);
    }
}

s32 mgrasAttachXvc(void *arg0, u8 *arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0) {
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp170;
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
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s32 sp20;
    void *sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    ? *var_s2_2;
    ? *var_s2_3;
    ? *var_s3_2;
    ? *var_t8_2;
    ? *var_t8_3;
    ? *var_t9;
    f64 temp_f20;
    f64 temp_f22;
    f64 var_f4;
    s32 temp_a0_2;
    s32 temp_a0_5;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a2_6;
    s32 temp_a3_12;
    s32 temp_a3_2;
    s32 temp_a3_5;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_5;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a4_8;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a6;
    s32 temp_a6_10;
    s32 temp_a6_11;
    s32 temp_a6_12;
    s32 temp_a6_13;
    s32 temp_a6_14;
    s32 temp_a6_16;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 temp_a6_7;
    s32 temp_a6_8;
    s32 temp_a6_9;
    s32 temp_a7_2;
    s32 temp_a7_4;
    s32 temp_at;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_f0;
    s32 temp_ra_4;
    s32 temp_s0;
    s32 temp_s0_4;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s3_5;
    s32 temp_s4_3;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 temp_t0;
    s32 temp_t0_10;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_5;
    s32 temp_t0_6;
    s32 temp_t0_8;
    s32 temp_t1;
    s32 temp_t1_4;
    s32 temp_t1_6;
    s32 temp_t2_4;
    s32 temp_t3_3;
    s32 temp_t3_6;
    s32 temp_t8_2;
    s32 temp_t9;
    s32 temp_t9_3;
    s32 temp_v0_13;
    s32 temp_v0_17;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_9;
    s32 temp_v1_5;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s4;
    s32 var_s5_2;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t1;
    s32 var_t3;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v1;
    s32 var_v1_7;
    s64 temp_a6_18;
    s64 temp_a7;
    s64 temp_t3;
    s64 temp_v0;
    s64 temp_v0_4;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_at_3;
    s64 var_at_4;
    s64 var_at_5;
    s8 *temp_v0_3;
    s8 var_a1;
    u16 *temp_s3_2;
    u16 *var_s1_2;
    u16 *var_v1_2;
    u16 *var_v1_3;
    u16 var_at;
    u16 var_at_2;
    u32 var_s0;
    u32 var_s1_6;
    u8 *var_s3;
    u8 temp_a0_3;
    u8 temp_a0_4;
    u8 temp_a1_2;
    u8 temp_a1_3;
    u8 temp_a2_3;
    u8 temp_a2_5;
    u8 temp_a2_7;
    u8 temp_a2_8;
    u8 temp_a3_10;
    u8 temp_a3_11;
    u8 temp_a3_13;
    u8 temp_a3_14;
    u8 temp_a3_3;
    u8 temp_a3_4;
    u8 temp_a3_6;
    u8 temp_a3_7;
    u8 temp_a3_8;
    u8 temp_a3_9;
    u8 temp_a4_4;
    u8 temp_a6_15;
    u8 temp_a6_17;
    u8 temp_a7_3;
    u8 temp_a7_5;
    u8 temp_at_2;
    u8 temp_at_3;
    u8 temp_at_4;
    u8 temp_at_7;
    u8 temp_at_8;
    u8 temp_at_9;
    u8 temp_ra;
    u8 temp_ra_2;
    u8 temp_ra_3;
    u8 temp_s0_2;
    u8 temp_s0_3;
    u8 temp_s0_5;
    u8 temp_s1_2;
    u8 temp_s2;
    u8 temp_s2_3;
    u8 temp_s3_3;
    u8 temp_s3_4;
    u8 temp_s4;
    u8 temp_s4_2;
    u8 temp_s4_4;
    u8 temp_s5_3;
    u8 temp_s5_4;
    u8 temp_s5_5;
    u8 temp_s5_6;
    u8 temp_s6;
    u8 temp_s6_2;
    u8 temp_s6_3;
    u8 temp_t0_4;
    u8 temp_t0_7;
    u8 temp_t0_9;
    u8 temp_t1_2;
    u8 temp_t1_3;
    u8 temp_t1_5;
    u8 temp_t1_7;
    u8 temp_t1_8;
    u8 temp_t1_9;
    u8 temp_t2_2;
    u8 temp_t2_3;
    u8 temp_t3_2;
    u8 temp_t3_4;
    u8 temp_t3_5;
    u8 temp_t8;
    u8 temp_t8_3;
    u8 temp_t9_2;
    u8 temp_v0_10;
    u8 temp_v0_11;
    u8 temp_v0_12;
    u8 temp_v0_14;
    u8 temp_v0_15;
    u8 temp_v0_16;
    u8 temp_v0_18;
    u8 temp_v0_7;
    u8 temp_v0_8;
    u8 temp_v1_3;
    u8 temp_v1_4;
    u8 temp_v1_6;
    u8 var_a1_2;
    u8 var_a1_3;
    u8 var_ra;
    u8 var_ra_2;
    u8 var_ra_3;
    u8 var_s0_3;
    u8 var_s0_4;
    u8 var_s0_5;
    u8 var_s1_3;
    u8 var_s1_4;
    u8 var_s1_5;
    u8 var_s2;
    u8 var_s5_3;
    u8 var_s5_4;
    u8 var_s6_3;
    u8 var_s6_4;
    u8 var_t1_2;
    u8 var_t1_3;
    u8 var_t2;
    u8 var_t2_2;
    u8 var_t2_3;
    u8 var_t3_2;
    u8 var_t3_3;
    u8 var_t3_4;
    u8 var_t8;
    u8 var_t9_2;
    u8 var_t9_3;
    u8 var_v1_4;
    u8 var_v1_5;
    u8 var_v1_6;
    void *temp_a0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_9;
    void *temp_a3;
    void *temp_a4;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_7;
    void *temp_a5_8;
    void *temp_s1;
    void *temp_s5_2;
    void *temp_t2;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *var_a6;
    void *var_a6_2;
    void *var_s0_6;
    void *var_s5;
    void *var_t3_5;
    void *var_v0;

    temp_a6 = saved_reg_gp->unk-3140 * 4;
    temp_a5 = *(arg0->unk1B4 + temp_a6);
    sp14 = 0;
    sp10 = 0;
    spC = 0;
    sp8 = 0;
    temp_a5->unkA0 = 0;
    var_s6 = 0;
    var_s7 = 0;
    var_s4 = 0;
    var_s1 = 1;
    var_s0 = 1;
    if (temp_a5->unk28->unk36 != 0) {
        spD8 = (s64) temp_a5;
        spC8 = (s64) arg0;
        spC0 = arg4;
        var_s1 = 5;
        var_s0 = 5;
    }
    sp160 = arg3;
    sp170 = arg2;
    sp118 = 0;
    spC8 = (s64) arg0;
    spD8 = (s64) temp_a5;
    spC0 = arg4;
    saved_reg_gp->unk-7574(&arg_sp0 + 0xFFFEFDC0, 0, 0x1020C, temp_a5, temp_a6);
    temp_s3 = var_s0 * 0x1F4;
    temp_s5 = (var_s1 * 0x600) + (temp_s3 + (var_s1 * 0x10)) + 0x3A8;
    temp_v0 = saved_reg_gp->unk-758C(temp_s5);
    sp120 = temp_v0;
    if (temp_v0 == 0) {
        return 0;
    }
    saved_reg_gp->unk-7574((void *) sp120, 0, temp_s5);
    sp120->unk94 = 0;
    sp120->unk90 = 0;
    sp120->unk8C = 0;
    sp120->unk88 = 0;
    sp120->unk70 = 0;
    sp120->unk68 = 0;
    sp120->unk64 = 0;
    sp120->unk34 = 0;
    sp120->unk28 = 0;
    sp120->unk1C = 0;
    sp120->unk14 = 1;
    sp120->unk10 = 1;
    sp120->unk0 = 0;
    sp120->unk20 = var_s1;
    sp120->unk4 = var_s0;
    sp120->unk58 = &mgrasDisableChannelProc;
    sp120->unk4C = &mgrasLstVideoFmtCombs;
    sp120->unk48 = &mgrasLoadAndFree;
    sp120->unk44 = &mgrasLstVideoFmt;
    sp120->unk40 = mgrasPostInit;
    sp120->unk3C = mgrasResetProc;
    sp120->unk54 = &mgrasLdComb;
    sp120->unk74 = &mgrasSetPltParam;
    sp120->unk30 = 2;
    sp120->unk38 = &mgrasQryMonitor;
    sp120->unk6C = &mgrasSetScrnGlock;
    sp120->unk78 = &mgrasQryPltParam;
    sp120->unk7C = &mgrasStrGamma8;
    sp120->unk80 = &mgrasStrGamma16;
    sp120->unk8 = (void *) (sp120 + 0x3A8);
    sp120->unk2C = -1;
    sp120->unk18 = -1;
    sp120->unkC = 3;
    temp_a6_2 = sp120 + temp_s3 + 0x3A8;
    sp120->unk24 = temp_a6_2;
    temp_a5_2 = &sub_5e3e0000 + 0x330;
    sp120->unkA0 = temp_a5_2;
    temp_a4 = &sub_5e3e0000 + 0x21C;
    sp120->unk9C = temp_a4;
    temp_a3 = &sub_5e3e0000 + 0x1D4;
    sp120->unk98 = temp_a3;
    sp120->unk50 = (s32) saved_reg_gp->unk-7E40;
    temp_a2 = &sub_5e3e0000 - 0x6218;
    sp120->unk84 = temp_a2;
    temp_a1 = &sub_5e3e0000 - 0x5D60;
    sp120->unk60 = temp_a1;
    sp120->unk5C = (void *) (&sub_5e3e0000 - 0x5D7C);
    temp_v0_2 = saved_reg_gp->unk-72E0(8, temp_a1, temp_a2, temp_a3, temp_a4, temp_a5_2, temp_a6_2, &mgrasQryMonitor);
    if (temp_v0_2 != NULL) {
        temp_v0_2->unk0 = 0;
        temp_v1 = spD8->unk28;
        if (temp_v1->unk35 != 0) {
            goto block_6;
        }
        if (temp_v1->unk36 == 0) {
            temp_v0_2->unk4 = 1;
        } else {
block_6:
            temp_v0_2->unk4 = 0;
        }
        temp_s1 = sp120->unk8;
        sp120->unk3A4 = temp_v0_2;
        temp_s1->unk8 = (f32) sub_5e4f0000.unk34F8;
        temp_s1->unk4 = (f32) sub_5e4f0000.unk34F8;
        temp_s1->unk0 = 1;
        temp_s1->unkC = (f32) spC8->unkA;
        temp_s1->unk10 = (f32) spC8->unk8;
        sp18 = temp_s1;
        var_v1 = *spC0;
        if (arg1 != NULL) {
            if ((var_v1 != 0) && (spD8->unk28->unk36 != 0)) {
                if (mgrasLoadAndInitICO(spC8, arg1, temp_s1, sp120, &arg_sp0 + 0xFFFEFDC0) != 0) {
                    var_v1 = *spC0;
                } else {
                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3E18, arg1);
                    *arg1 = 0;
                    var_v1 = 0;
                    *spC0 = 0;
                }
            }
        }
        if (var_v1 != 0) {
            if (spD8->unk2C != 1) {
                var_s3 = &arg_sp0 + 0xFFFEF9C0;
                (saved_reg_gp->unk-7FCC + 0x61FC)(var_s3, saved_reg_gp->unk-553C, arg1);
            } else {
                var_s3 = &arg_sp0 + 0xFFFEF9C0;
                (saved_reg_gp->unk-7FCC + 0x61FC)(var_s3, saved_reg_gp->unk-5540, arg1);
            }
            goto block_17;
        }
        if (*arg1 != 0x2F) {
            if (spD8->unk2C != 1) {
                var_s3 = &arg_sp0 + 0xFFFEF9C0;
                (saved_reg_gp->unk-7FCC + 0x61FC)(var_s3, saved_reg_gp->unk-5548, arg1);
            } else {
                var_s3 = &arg_sp0 + 0xFFFEF9C0;
                (saved_reg_gp->unk-7FCC + 0x61FC)(var_s3, saved_reg_gp->unk-554C, arg1);
            }
block_17:
            var_s5 = &sub_5e4f0000 + 0x2968;
        } else {
            temp_v0_3 = saved_reg_gp->unk-7478(arg1, 0xA);
            if (temp_v0_3 != NULL) {
                *temp_v0_3 = 0;
            }
            var_s5 = &sub_5e4f0000 + 0x2968;
            var_s3 = &arg_sp0 + 0xFFFEF9C0;
            saved_reg_gp->unk-73E4(var_s3, var_s5 + 0xCD0, arg1);
        }
        spD0 = (s64) temp_v0_2;
        temp_v0_4 = saved_reg_gp->unk-763C(var_s3);
        sp118 = temp_v0_4;
        if (temp_v0_4 == 0) {
            saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3E88, var_s3, (*((spC8->unk0 * 4) + &ddxActiveScreens))->unk44->unkC, &ddxActiveScreens);
            saved_reg_gp->unk-312C = 0xE80;
            saved_reg_gp->unk-7E78(var_s5 + 0x950, var_s3);
        } else {
            temp_a0 = temp_s1 + 0x14;
            sp128 = (s64) temp_a0;
            saved_reg_gp->unk-7574(temp_a0, 0, 0x138);
            sp168 = 0;
            temp_s5_2 = &sub_5e510000 - 0x7B34;
            if (SDBgetSymbolValueScalar(temp_v0_4, temp_s5_2->unk34, &sp8) != 0) {
                if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5524, temp_s1 + 0x140) != 0) {
                    if (SDBgetSymbolValueScalar(temp_v0_4, temp_s5_2->unkE4, &spC) != 0) {
                        if (SDBgetSymbolValueScalar(temp_v0_4, temp_s5_2->unkE8, &sp10) != 0) {
                            if (SDBgetSymbolValueScalar(temp_v0_4, temp_s5_2->unkE0, &sp14) != 0) {
                                if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5518, &sp20) != 0) {
                                    temp_s1->unk128 = (f32) (bitwise f64) sp20;
                                    var_f4 = (bitwise f64) sp20;
                                    if (spC == 0) {
                                        var_f4 *= (f64) (f32) temp_s1->unk140;
                                        sp20 = var_f4;
                                    }
                                    temp_s1->unk124 = (f32) var_f4;
                                    temp_a7 = (sp10 != 0) ? ((sp14 == 0) ? 1 : 4) : sp168;
                                    sp168 = temp_a7;
                                    temp_s1->unk148 = (s32) temp_a7;
                                    if (SDBgetSymbolValueScalar(temp_v0_4, temp_s5_2->unkF0, temp_s1 + 0x114) != 0) {
                                        if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5530, temp_s1 + 0x118) != 0) {
                                            if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5520, temp_s1 + 0x11C) != 0) {
                                                if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-551C, temp_s1 + 0x120) != 0) {
                                                    if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5514, temp_s1 + 0x12C) != 0) {
                                                        if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5510, temp_s1 + 0x130) != 0) {
                                                            if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-550C, temp_s1 + 0x134) != 0) {
                                                                if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5508, temp_s1 + 0x138) != 0) {
                                                                    if (SDBgetSymbolValueScalar(temp_v0_4, saved_reg_gp->unk-5504, temp_s1 + 0x13C) != 0) {
                                                                        temp_a3_2 = temp_s1->unk140;
                                                                        if (temp_a3_2 != 0) {
                                                                            temp_v0_5 = saved_reg_gp->unk-7364(temp_a3_2, 0x24);
                                                                            temp_s1->unk144 = temp_v0_5;
                                                                            if (temp_v0_5 != 0) {
                                                                                sp158 = 0;
                                                                                if (temp_s1->unk140 > 0) {
                                                                                    sp150 = temp_v0_5 + 0x18;
                                                                                    sp148 = temp_v0_5 + 0x14;
                                                                                    sp140 = temp_v0_5 + 0x10;
                                                                                    var_s5_2 = temp_v0_5;
                                                                                    sp138 = temp_v0_5 + 0xC;
                                                                                    sp130 = temp_v0_5 + 8;
                                                                                    var_s6_2 = temp_v0_5 + 4;
loop_46:
                                                                                    if ((saved_reg_gp->unk-7648(temp_v0_4, saved_reg_gp->unk-552C, var_s5_2, temp_s1->unk140) != 0) && (saved_reg_gp->unk-7648(sp118, saved_reg_gp->unk-5528, var_s6_2, temp_s1->unk140) != 0)) {
                                                                                        if (SDBgetSymbolValueScalar(sp118, saved_reg_gp->unk-5500, (s32 *) sp130) != 0) {
                                                                                            if (SDBgetSymbolValueScalar(sp118, saved_reg_gp->unk-54FC, (s32 *) sp138) != 0) {
                                                                                                if (SDBgetSymbolValueScalar(sp118, saved_reg_gp->unk-54F8, (s32 *) sp140) != 0) {
                                                                                                    if (SDBgetSymbolValueScalar(sp118, saved_reg_gp->unk-54F4, (s32 *) sp148) != 0) {
                                                                                                        var_s6_2 += 0x24;
                                                                                                        if (SDBgetSymbolValueScalar(sp118, saved_reg_gp->unk-54F0, (s32 *) sp150) != 0) {
                                                                                                            sp130 += 0x24;
                                                                                                            sp138 += 0x24;
                                                                                                            sp140 += 0x24;
                                                                                                            temp_t3 = sp158 + 1;
                                                                                                            sp158 = temp_t3;
                                                                                                            var_s5_2 += 0x24;
                                                                                                            sp148 += 0x24;
                                                                                                            sp150 += 0x24;
                                                                                                            if (temp_t3 >= temp_s1->unk140) {
                                                                                                                goto block_54;
                                                                                                            }
                                                                                                            goto loop_46;
                                                                                                        }
                                                                                                        saved_reg_gp->unk-312C = 0xEC6;
                                                                                                        saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-54F0, 0xEC6);
                                                                                                    } else {
                                                                                                        saved_reg_gp->unk-312C = 0xEC4;
                                                                                                        saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-54F4, 0xEC4);
                                                                                                    }
                                                                                                } else {
                                                                                                    saved_reg_gp->unk-312C = 0xEC2;
                                                                                                    saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-54F8, 0xEC2);
                                                                                                }
                                                                                            } else {
                                                                                                saved_reg_gp->unk-312C = 0xEC0;
                                                                                                saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-54FC, 0xEC0);
                                                                                            }
                                                                                        } else {
                                                                                            saved_reg_gp->unk-312C = 0xEBE;
                                                                                            saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5500, 0xEBE);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    goto block_54;
                                                                                }
                                                                            } else {
                                                                                saved_reg_gp->unk-312C = 0xEB3;
                                                                                saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x708);
                                                                                var_s7 = 1;
block_54:
                                                                                var_s6 = var_s7;
                                                                                goto block_77;
                                                                            }
                                                                        } else {
                                                                            temp_s1->unk144 = 0;
block_77:
                                                                            if (var_s6 == 0) {
                                                                                saved_reg_gp->unk-7358(sp128, arg1, saved_reg_gp->unk-73C4(arg1) - 4);
                                                                                temp_s1->unk1F0 = 0;
                                                                                temp_s1->unk1EC = 0;
                                                                                temp_s1->unk1E4 = 0;
                                                                                temp_s1->unk1E8 = 0;
                                                                                temp_s1->unk1D8 = 0;
                                                                                temp_s1->unk1D4 = 0;
                                                                                temp_s1->unk1CC = 0;
                                                                                temp_s1->unk1E0 = 0;
                                                                                temp_s1->unk1DC = 0;
                                                                                temp_s1->unk1D0 = 0;
                                                                                temp_s1->unk1C8 = 0;
                                                                                temp_s1->unk1C0 = 0;
                                                                                temp_s1->unk1C4 = 0;
                                                                                temp_s1->unk1BC = 0;
                                                                                temp_s1->unk1B8 = 0;
                                                                                temp_s1->unk1B4 = 0;
                                                                                temp_s1->unk1B0 = 0;
                                                                                temp_s1->unk1AC = 0;
                                                                                temp_s1->unk1A8 = 0;
                                                                                temp_s1->unk158 = 0;
                                                                                temp_s1->unk154 = 1;
                                                                                temp_s1->unk150 = 0;
                                                                                temp_s1->unk14C = 0;
                                                                                temp_s1->unk112 = 0;
                                                                                temp_a6_3 = sp168 == 4;
                                                                                if (saved_reg_gp->unk-7E6C(spC8, sp118, sp128, (temp_a6_3 == 0) ? 0 : 0x40000000, sp170, sp160, temp_a6_3, 4) != 0) {
                                                                                    spB8 = 0;
                                                                                    if (sp120->unk20 > 0) {
                                                                                        spB0 = 0;
                                                                                        sp88 = sp120 + 0x100;
                                                                                        temp_t2 = &sub_5e4f0000 + 0x2968;
                                                                                        sp50 = (s64) (temp_t2 + 0xAD0);
                                                                                        sp58 = (s64) (temp_t2 + 0xA80);
                                                                                        sp80 = sp120 + 0x100;
                                                                                        sp68 = sp120 + 0x100;
                                                                                        sp60 = sp120 + 0xA4;
                                                                                        sp70 = sp120 + 0x2A4;
                                                                                        sp78 = sp120 + 0x1A4;
                                                                                        temp_f20 = sub_5e4f0000.unk3F50;
                                                                                        var_s7_2 = 0x100;
                                                                                        temp_f22 = sub_5e4f0000.unk3F48;
loop_109:
                                                                                        var_s0_2 = 0;
                                                                                        *(sp120->unk24 + spB0) = var_s7_2;
                                                                                        if ((spB8 != 3) && (var_t3 = 0xA, (spB8 != 4))) {
                                                                                            var_a6 = sp120->unk24 + spB0;
                                                                                        } else {
                                                                                            var_a6 = sp120->unk24 + spB0;
                                                                                            var_t3 = 8;
                                                                                        }
                                                                                        var_a6->unk4 = var_t3;
                                                                                        (sp120->unk24 + spB0)->unk8 = 0;
                                                                                        temp_a2_2 = sp120->unk24;
                                                                                        M2C_ERROR(/* unknown instruction: recip.d $f26, $f26 */);
                                                                                        temp_v1_2 = temp_a2_2 + spB0;
                                                                                        if (spB8 != 0) {
                                                                                            var_t1 = temp_v1_2->unk-4 + 0x600;
                                                                                        } else {
                                                                                            var_t1 = (sp120->unk20 * 0x10) + temp_a2_2;
                                                                                        }
                                                                                        temp_v1_2->unkC = var_t1;
                                                                                        temp_s3_2 = (sp120->unk24 + spB0)->unkC;
                                                                                        var_s1_2 = temp_s3_2;
                                                                                        do {
                                                                                            var_s1_2 += 2;
                                                                                            var_s0_2 += 1;
                                                                                            pow((second half of f64) / temp_f20, second half of f64);
                                                                                            temp_f0 = (s32) M2C_ERROR(/* unknown instruction: madd.d $f0, $f24, $f0, $f20 */);
                                                                                            var_s1_2->unk-2 = (s16) temp_f0;
                                                                                            var_s1_2->unk1FE = (s16) temp_f0;
                                                                                            var_s1_2->unk3FE = (s16) temp_f0;
                                                                                        } while (var_s0_2 != var_s7_2);
                                                                                        if (spB8 != 0) {
                                                                                            if (*spC0 != 0) {
                                                                                                temp_s0 = spC8->unk74->unk64;
                                                                                                saved_reg_gp->unk-7574(&arg_sp0 + 0xFFFEF3B8, 0, 0x604);
                                                                                                (&arg_sp0 + 0xFFFF0000)->unk-C48 = (s32) spB8;
                                                                                                var_v1_2 = temp_s3_2;
                                                                                                var_v0 = &arg_sp0 + 0xFFFEF3B8;
                                                                                                var_at = *temp_s3_2;
                                                                                                do {
                                                                                                    var_v0->unk4 = var_at;
                                                                                                    var_v0->unk404 = (u16) var_v1_2->unk400;
                                                                                                    var_v0->unk204 = (u16) var_v1_2->unk200;
                                                                                                    var_v1_2 += 2;
                                                                                                    var_v0 += 2;
                                                                                                    var_at = var_v1_2->unk0;
                                                                                                } while (var_v1_2 != (temp_s3_2 + 0x1FE));
                                                                                                var_v0->unk4 = var_at;
                                                                                                var_v0->unk404 = (u16) var_v1_2->unk400;
                                                                                                var_v0->unk204 = (u16) var_v1_2->unk200;
                                                                                                temp_v0_6 = saved_reg_gp->unk-74DC(temp_s0, 0x6D67001C, &arg_sp0 + 0xFFFEF3B8);
                                                                                                if (temp_v0_6 < 0) {
                                                                                                    saved_reg_gp->unk-74EC((void *) sp58, (u8 *) temp_v0_6, (u8) spB8);
                                                                                                }
                                                                                            }
                                                                                        } else {
                                                                                            saved_reg_gp->unk-7574((void *) sp60, 0, 0x100);
                                                                                            saved_reg_gp->unk-7574((void *) sp78, 0, 0x100);
                                                                                            saved_reg_gp->unk-7574((void *) sp70, 0, 0x100);
                                                                                            var_at_2 = *temp_s3_2;
                                                                                            var_a1 = 0;
                                                                                            var_v1_3 = temp_s3_2;
                                                                                            do {
                                                                                                (((s32) var_at_2 >> 8) + sp120)->unkA4 = var_a1;
                                                                                                (((s32) var_v1_3->unk200 >> 8) + sp120)->unk1A4 = var_a1;
                                                                                                (((s32) var_v1_3->unk400 >> 8) + sp120)->unk2A4 = var_a1;
                                                                                                var_a1 += 1;
                                                                                                var_v1_3 += 2;
                                                                                                var_at_2 = var_v1_3->unk0;
                                                                                            } while (var_a1 != (var_s7_2 - 1));
                                                                                            (((s32) var_at_2 >> 8) + sp120)->unkA4 = var_a1;
                                                                                            (((s32) var_v1_3->unk200 >> 8) + sp120)->unk1A4 = var_a1;
                                                                                            (((s32) var_v1_3->unk400 >> 8) + sp120)->unk2A4 = var_a1;
                                                                                            var_a0 = sp120;
                                                                                            sp90 = (s64) &unksp-5C;
                                                                                            var_s6_3 = var_a0->unkA4;
                                                                                            spA8 = (s64) temp_s3_2;
                                                                                            var_s2 = var_a0->unkA7;
                                                                                            var_s0_3 = var_a0->unkA6;
                                                                                            var_a1_2 = var_a0->unkA5;
                                                                                            var_t9 = var_a0 + 4;
                                                                                            var_ra = var_t9->unkA7;
                                                                                            var_t8 = var_t9->unkA6;
                                                                                            var_v1_4 = 0;
                                                                                            var_t3_2 = var_t9->unkA5;
                                                                                            var_at_3 = var_a0;
                                                                                            var_s1_3 = var_t9->unkA4;
                                                                                            var_s3_2 = var_t9 + 4;
                                                                                            var_t2 = var_s3_2->unkA4;
                                                                                            var_v0_2 = var_s6_3 != 0;
loop_125:
                                                                                            temp_t1 = var_s1_3 != 0;
                                                                                            temp_s4 = var_s3_2->unkA5;
                                                                                            ((var_v0_2 != 0) ? &unksp-5C : (? *) var_at_3)->unkA4 = var_v1_4;
                                                                                            temp_a4_2 = var_a1_2 != 0;
                                                                                            temp_a5_3 = var_s0_3 != 0;
                                                                                            temp_a7_2 = var_s2 != 0;
                                                                                            temp_a2_3 = var_s3_2->unkA6;
                                                                                            temp_a3_3 = var_s3_2->unkA7;
                                                                                            temp_s6 = (var_v0_2 == 0) ? var_v1_4 : var_s6_3;
                                                                                            temp_v0_7 = (temp_a4_2 != 0) ? var_a1_2 : temp_s6;
                                                                                            ((temp_a5_3 != 0) ? &unksp-5C : (var_a0 + 2))->unkA4 = temp_v0_7;
                                                                                            ((temp_a4_2 != 0) ? &unksp-5C : (var_a0 + 1))->unkA4 = temp_s6;
                                                                                            temp_v0_8 = (temp_a5_3 != 0) ? var_s0_3 : temp_v0_7;
                                                                                            ((temp_a7_2 != 0) ? &unksp-5C : (var_a0 + 3))->unkA4 = temp_v0_8;
                                                                                            temp_v1_3 = (temp_a7_2 == 0) ? temp_v0_8 : var_s2;
                                                                                            var_a0 = (s64) (var_s3_2 + 4);
                                                                                            var_s6_3 = var_a0->unkA4;
                                                                                            if (var_t9 != (sp68 - 0xC)) {
                                                                                                temp_at = var_t2 != 0;
                                                                                                var_a1_2 = var_a0->unkA5;
                                                                                                ((temp_t1 != 0) ? &unksp-5C : var_t9)->unkA4 = temp_v1_3;
                                                                                                temp_v0_9 = var_t3_2 != 0;
                                                                                                temp_a6_4 = var_t8 != 0;
                                                                                                temp_a5_4 = var_ra != 0;
                                                                                                var_s0_3 = var_a0->unkA6;
                                                                                                var_s2 = var_a0->unkA7;
                                                                                                temp_a7_3 = (temp_t1 == 0) ? temp_v1_3 : var_s1_3;
                                                                                                temp_t1_2 = (temp_v0_9 != 0) ? var_t3_2 : temp_a7_3;
                                                                                                ((temp_a6_4 != 0) ? &unksp-5C : (var_t9 + 2))->unkA4 = temp_t1_2;
                                                                                                ((temp_v0_9 != 0) ? &unksp-5C : (var_t9 + 1))->unkA4 = temp_a7_3;
                                                                                                temp_v0_10 = (temp_a6_4 != 0) ? var_t8 : temp_t1_2;
                                                                                                ((temp_a5_4 != 0) ? &unksp-5C : (var_t9 + 3))->unkA4 = temp_v0_10;
                                                                                                temp_v1_4 = (temp_a5_4 == 0) ? temp_v0_10 : var_ra;
                                                                                                var_t9 = var_a0 + 4;
                                                                                                var_s1_3 = var_t9->unkA4;
                                                                                                var_v0_2 = var_s6_3 != 0;
                                                                                                var_t3_2 = var_t9->unkA5;
                                                                                                ((temp_at != 0) ? &unksp-5C : var_s3_2)->unkA4 = temp_v1_4;
                                                                                                temp_a4_3 = temp_s4 != 0;
                                                                                                temp_a7_4 = temp_a2_3 != 0;
                                                                                                temp_a6_5 = temp_a3_3 != 0;
                                                                                                var_t8 = var_t9->unkA6;
                                                                                                var_ra = var_t9->unkA7;
                                                                                                temp_t1_3 = (temp_at == 0) ? temp_v1_4 : var_t2;
                                                                                                temp_at_2 = (temp_a4_3 != 0) ? temp_s4 : temp_t1_3;
                                                                                                ((temp_a7_4 != 0) ? &unksp-5C : (var_s3_2 + 2))->unkA4 = temp_at_2;
                                                                                                ((temp_a4_3 != 0) ? &unksp-5C : (var_s3_2 + 1))->unkA4 = temp_t1_3;
                                                                                                temp_at_3 = (temp_a7_4 != 0) ? temp_a2_3 : temp_at_2;
                                                                                                ((temp_a6_5 != 0) ? &unksp-5C : (var_s3_2 + 3))->unkA4 = temp_at_3;
                                                                                                var_v1_4 = (temp_a6_5 == 0) ? temp_at_3 : temp_a3_3;
                                                                                                var_s3_2 = var_t9 + 4;
                                                                                                var_at_3 = var_a0;
                                                                                                var_t2 = var_s3_2->unkA4;
                                                                                                goto loop_125;
                                                                                            }
                                                                                            temp_ra = var_a0->unkA5;
                                                                                            ((temp_t1 != 0) ? sp90 : (s64) var_t9)->unkA4 = temp_v1_3;
                                                                                            temp_a2_4 = var_s6_3 != 0;
                                                                                            temp_s6_2 = var_a0->unkA6;
                                                                                            temp_s1_2 = (temp_t1 == 0) ? temp_v1_3 : var_s1_3;
                                                                                            temp_t1_4 = var_t3_2 != 0;
                                                                                            temp_a6_6 = var_t8 != 0;
                                                                                            temp_t3_2 = (temp_t1_4 == 0) ? temp_s1_2 : var_t3_2;
                                                                                            temp_s2 = (temp_a6_6 == 0) ? temp_t3_2 : var_t8;
                                                                                            temp_a6_7 = temp_a3_3 != 0;
                                                                                            ((temp_a6_6 != 0) ? sp90 : (s64) (var_t9 + 2))->unkA4 = temp_t3_2;
                                                                                            temp_t3_3 = temp_s4 != 0;
                                                                                            temp_t9 = temp_s6_2 != 0;
                                                                                            ((temp_t1_4 != 0) ? sp90 : (s64) (var_t9 + 1))->unkA4 = temp_s1_2;
                                                                                            temp_t0 = var_ra != 0;
                                                                                            temp_s0_2 = (temp_t0 == 0) ? temp_s2 : var_ra;
                                                                                            temp_t0_2 = temp_a2_3 != 0;
                                                                                            ((temp_t0 != 0) ? sp90 : (s64) (var_t9 + 3))->unkA4 = temp_s2;
                                                                                            temp_s2_2 = var_t2 != 0;
                                                                                            temp_a0_2 = temp_ra != 0;
                                                                                            temp_t2_2 = (temp_s2_2 == 0) ? temp_s0_2 : var_t2;
                                                                                            ((temp_s2_2 != 0) ? sp90 : (s64) var_s3_2)->unkA4 = temp_s0_2;
                                                                                            temp_s4_2 = (temp_t3_3 == 0) ? temp_t2_2 : temp_s4;
                                                                                            ((temp_t0_2 != 0) ? sp90 : (s64) (var_s3_2 + 2))->unkA4 = temp_s4_2;
                                                                                            temp_a4_4 = (temp_t0_2 == 0) ? temp_s4_2 : temp_a2_3;
                                                                                            ((temp_t3_3 != 0) ? sp90 : (s64) (var_s3_2 + 1))->unkA4 = temp_t2_2;
                                                                                            temp_a3_4 = (temp_a6_7 == 0) ? temp_a4_4 : temp_a3_3;
                                                                                            ((temp_a6_7 != 0) ? sp90 : (s64) (var_s3_2 + 3))->unkA4 = temp_a4_4;
                                                                                            temp_at_4 = (temp_a2_4 == 0) ? temp_a3_4 : var_s6_3;
                                                                                            ((temp_a2_4 != 0) ? sp90 : var_a0)->unkA4 = temp_a3_4;
                                                                                            temp_ra_2 = (temp_a0_2 == 0) ? temp_at_4 : temp_ra;
                                                                                            ((temp_t9 != 0) ? sp90 : (var_a0 + 2))->unkA4 = temp_ra_2;
                                                                                            ((temp_a0_2 == 0) ? (var_a0 + 1) : sp90)->unkA4 = temp_at_4;
                                                                                            ((var_a0->unkA7 != 0) ? sp90 : (var_a0 + 3))->unkA4 = (u8) ((temp_t9 == 0) ? temp_ra_2 : temp_s6_2);
                                                                                            var_at_4 = sp120;
                                                                                            var_s5_3 = var_at_4->unk1A4;
                                                                                            spA0 = (s64) &unksp-15C;
                                                                                            var_s1_4 = var_at_4->unk1A7;
                                                                                            var_ra_2 = var_at_4->unk1A6;
                                                                                            var_a1_3 = var_at_4->unk1A5;
                                                                                            var_t8_2 = var_at_4 + 4;
                                                                                            var_t9_2 = var_t8_2->unk1A7;
                                                                                            var_t3_3 = var_t8_2->unk1A6;
                                                                                            var_v1_5 = 0;
                                                                                            var_t2_2 = var_t8_2->unk1A5;
                                                                                            var_a0_2 = var_at_4;
                                                                                            var_s0_4 = var_t8_2->unk1A4;
                                                                                            var_s2_2 = var_t8_2 + 4;
                                                                                            var_t1_2 = var_s2_2->unk1A4;
                                                                                            var_v0_3 = var_s5_3 != 0;
loop_128:
                                                                                            temp_t0_3 = var_s0_4 != 0;
                                                                                            temp_s3_3 = var_s2_2->unk1A5;
                                                                                            ((var_v0_3 != 0) ? &unksp-15C : (? *) var_a0_2)->unk1A4 = var_v1_5;
                                                                                            temp_a3_5 = var_a1_3 != 0;
                                                                                            temp_a4_5 = var_ra_2 != 0;
                                                                                            temp_a6_8 = var_s1_4 != 0;
                                                                                            temp_a0_3 = var_s2_2->unk1A6;
                                                                                            temp_a2_5 = var_s2_2->unk1A7;
                                                                                            temp_s5_3 = (var_v0_3 == 0) ? var_v1_5 : var_s5_3;
                                                                                            temp_v0_11 = (temp_a3_5 != 0) ? var_a1_3 : temp_s5_3;
                                                                                            ((temp_a4_5 != 0) ? &unksp-15C : (var_at_4 + 2))->unk1A4 = temp_v0_11;
                                                                                            ((temp_a3_5 != 0) ? &unksp-15C : (var_at_4 + 1))->unk1A4 = temp_s5_3;
                                                                                            temp_v0_12 = (temp_a4_5 != 0) ? var_ra_2 : temp_v0_11;
                                                                                            ((temp_a6_8 != 0) ? &unksp-15C : (var_at_4 + 3))->unk1A4 = temp_v0_12;
                                                                                            temp_a3_6 = (temp_a6_8 == 0) ? temp_v0_12 : var_s1_4;
                                                                                            var_at_4 = (s64) (var_s2_2 + 4);
                                                                                            var_s5_3 = var_at_4->unk1A4;
                                                                                            if (var_t8_2 != (sp80 - 0xC)) {
                                                                                                temp_v1_5 = var_t1_2 != 0;
                                                                                                var_a1_3 = var_at_4->unk1A5;
                                                                                                ((temp_t0_3 != 0) ? &unksp-15C : var_t8_2)->unk1A4 = temp_a3_6;
                                                                                                temp_v0_13 = var_t2_2 != 0;
                                                                                                temp_a6_9 = var_t3_3 != 0;
                                                                                                temp_a5_5 = var_t9_2 != 0;
                                                                                                var_ra_2 = var_at_4->unk1A6;
                                                                                                var_s1_4 = var_at_4->unk1A7;
                                                                                                temp_s0_3 = (temp_t0_3 == 0) ? temp_a3_6 : var_s0_4;
                                                                                                temp_t0_4 = (temp_v0_13 != 0) ? var_t2_2 : temp_s0_3;
                                                                                                ((temp_a6_9 != 0) ? &unksp-15C : (var_t8_2 + 2))->unk1A4 = temp_t0_4;
                                                                                                ((temp_v0_13 != 0) ? &unksp-15C : (var_t8_2 + 1))->unk1A4 = temp_s0_3;
                                                                                                temp_v0_14 = (temp_a6_9 != 0) ? var_t3_3 : temp_t0_4;
                                                                                                ((temp_a5_5 != 0) ? &unksp-15C : (var_t8_2 + 3))->unk1A4 = temp_v0_14;
                                                                                                temp_a3_7 = (temp_a5_5 == 0) ? temp_v0_14 : var_t9_2;
                                                                                                var_t8_2 = var_at_4 + 4;
                                                                                                var_s0_4 = var_t8_2->unk1A4;
                                                                                                var_v0_3 = var_s5_3 != 0;
                                                                                                var_t2_2 = var_t8_2->unk1A5;
                                                                                                ((temp_v1_5 != 0) ? &unksp-15C : var_s2_2)->unk1A4 = temp_a3_7;
                                                                                                temp_a4_6 = temp_s3_3 != 0;
                                                                                                temp_t0_5 = temp_a0_3 != 0;
                                                                                                temp_a6_10 = temp_a2_5 != 0;
                                                                                                var_t3_3 = var_t8_2->unk1A6;
                                                                                                var_t9_2 = var_t8_2->unk1A7;
                                                                                                temp_t1_5 = (temp_v1_5 == 0) ? temp_a3_7 : var_t1_2;
                                                                                                temp_a3_8 = (temp_a4_6 != 0) ? temp_s3_3 : temp_t1_5;
                                                                                                ((temp_t0_5 != 0) ? &unksp-15C : (var_s2_2 + 2))->unk1A4 = temp_a3_8;
                                                                                                ((temp_a4_6 != 0) ? &unksp-15C : (var_s2_2 + 1))->unk1A4 = temp_t1_5;
                                                                                                temp_a3_9 = (temp_t0_5 != 0) ? temp_a0_3 : temp_a3_8;
                                                                                                ((temp_a6_10 != 0) ? &unksp-15C : (var_s2_2 + 3))->unk1A4 = temp_a3_9;
                                                                                                var_v1_5 = (temp_a6_10 == 0) ? temp_a3_9 : temp_a2_5;
                                                                                                var_s2_2 = var_t8_2 + 4;
                                                                                                var_a0_2 = var_at_4;
                                                                                                var_t1_2 = var_s2_2->unk1A4;
                                                                                                goto loop_128;
                                                                                            }
                                                                                            temp_a3_10 = var_at_4->unk1A5;
                                                                                            ((temp_t0_3 != 0) ? spA0 : (s64) var_t8_2)->unk1A4 = temp_a3_6;
                                                                                            temp_a0_4 = var_at_4->unk1A6;
                                                                                            sp1B0 = (s64) var_s7_2;
                                                                                            temp_t1_6 = var_s5_3 != 0;
                                                                                            temp_t2_3 = (temp_t0_3 == 0) ? temp_a3_6 : var_s0_4;
                                                                                            temp_s1_3 = temp_a2_5 != 0;
                                                                                            temp_s0_4 = var_t3_3 != 0;
                                                                                            temp_a2_6 = temp_a0_4 != 0;
                                                                                            temp_s7 = var_t2_2 != 0;
                                                                                            temp_t8 = (temp_s7 == 0) ? temp_t2_3 : var_t2_2;
                                                                                            temp_v1_6 = (temp_s0_4 == 0) ? temp_t8 : var_t3_3;
                                                                                            ((temp_s0_4 != 0) ? spA0 : (s64) (var_t8_2 + 2))->unk1A4 = temp_t8;
                                                                                            temp_t8_2 = temp_s3_3 != 0;
                                                                                            temp_at_5 = var_t1_2 != 0;
                                                                                            ((temp_s7 != 0) ? spA0 : (s64) (var_t8_2 + 1))->unk1A4 = temp_t2_3;
                                                                                            temp_s4_3 = temp_a0_3 != 0;
                                                                                            temp_t2_4 = var_t9_2 != 0;
                                                                                            temp_t9_2 = (temp_t2_4 == 0) ? temp_v1_6 : var_t9_2;
                                                                                            ((temp_t2_4 != 0) ? spA0 : (s64) (var_t8_2 + 3))->unk1A4 = temp_v1_6;
                                                                                            temp_s2_3 = (temp_at_5 == 0) ? temp_t9_2 : var_t1_2;
                                                                                            ((temp_at_5 != 0) ? spA0 : (s64) var_s2_2)->unk1A4 = temp_t9_2;
                                                                                            temp_a6_11 = temp_a3_10 != 0;
                                                                                            temp_s6_3 = (temp_t8_2 == 0) ? temp_s2_3 : temp_s3_3;
                                                                                            ((temp_s4_3 != 0) ? spA0 : (s64) (var_s2_2 + 2))->unk1A4 = temp_s6_3;
                                                                                            temp_t3_4 = (temp_s4_3 == 0) ? temp_s6_3 : temp_a0_3;
                                                                                            ((temp_t8_2 != 0) ? spA0 : (s64) (var_s2_2 + 1))->unk1A4 = temp_s2_3;
                                                                                            temp_a7_5 = (temp_s1_3 == 0) ? temp_t3_4 : temp_a2_5;
                                                                                            ((temp_s1_3 != 0) ? spA0 : (s64) (var_s2_2 + 3))->unk1A4 = temp_t3_4;
                                                                                            temp_s5_4 = (temp_t1_6 == 0) ? temp_a7_5 : var_s5_3;
                                                                                            ((temp_t1_6 != 0) ? spA0 : var_at_4)->unk1A4 = temp_a7_5;
                                                                                            temp_a3_11 = (temp_a6_11 == 0) ? temp_s5_4 : temp_a3_10;
                                                                                            ((temp_a2_6 != 0) ? spA0 : (var_at_4 + 2))->unk1A4 = temp_a3_11;
                                                                                            ((temp_a6_11 == 0) ? (var_at_4 + 1) : spA0)->unk1A4 = temp_s5_4;
                                                                                            ((var_at_4->unk1A7 != 0) ? spA0 : (var_at_4 + 3))->unk1A4 = (u8) ((temp_a2_6 == 0) ? temp_a3_11 : temp_a0_4);
                                                                                            var_a0_3 = sp120;
                                                                                            var_s5_4 = var_a0_3->unk2A4;
                                                                                            sp98 = (s64) &unksp-25C;
                                                                                            var_s1_5 = var_a0_3->unk2A7;
                                                                                            var_ra_3 = var_a0_3->unk2A6;
                                                                                            var_v1_6 = var_a0_3->unk2A5;
                                                                                            var_t8_3 = var_a0_3 + 4;
                                                                                            var_t9_3 = var_t8_3->unk2A7;
                                                                                            var_t3_4 = var_t8_3->unk2A6;
                                                                                            var_s6_4 = 0;
                                                                                            var_t2_3 = var_t8_3->unk2A5;
                                                                                            var_at_5 = var_a0_3;
                                                                                            var_s0_5 = var_t8_3->unk2A4;
                                                                                            var_s2_3 = var_t8_3 + 4;
                                                                                            var_t1_3 = var_s2_3->unk2A4;
                                                                                            var_v0_4 = var_s5_4 != 0;
loop_131:
                                                                                            temp_t0_6 = var_s0_5 != 0;
                                                                                            temp_s3_4 = var_s2_3->unk2A5;
                                                                                            ((var_v0_4 != 0) ? &unksp-25C : (? *) var_at_5)->unk2A4 = var_s6_4;
                                                                                            temp_a3_12 = var_v1_6 != 0;
                                                                                            temp_a4_7 = var_ra_3 != 0;
                                                                                            temp_a6_12 = var_s1_5 != 0;
                                                                                            temp_a1_2 = var_s2_3->unk2A6;
                                                                                            temp_a2_7 = var_s2_3->unk2A7;
                                                                                            temp_s5_5 = (var_v0_4 == 0) ? var_s6_4 : var_s5_4;
                                                                                            temp_v0_15 = (temp_a3_12 != 0) ? var_v1_6 : temp_s5_5;
                                                                                            ((temp_a4_7 != 0) ? &unksp-25C : (var_a0_3 + 2))->unk2A4 = temp_v0_15;
                                                                                            ((temp_a3_12 != 0) ? &unksp-25C : (var_a0_3 + 1))->unk2A4 = temp_s5_5;
                                                                                            temp_v0_16 = (temp_a4_7 != 0) ? var_ra_3 : temp_v0_15;
                                                                                            ((temp_a6_12 != 0) ? &unksp-25C : (var_a0_3 + 3))->unk2A4 = temp_v0_16;
                                                                                            temp_a3_13 = (temp_a6_12 == 0) ? temp_v0_16 : var_s1_5;
                                                                                            var_a0_3 = (s64) (var_s2_3 + 4);
                                                                                            var_s5_4 = var_a0_3->unk2A4;
                                                                                            if (var_t8_3 != (sp88 - 0xC)) {
                                                                                                temp_at_6 = var_t1_3 != 0;
                                                                                                var_v1_6 = var_a0_3->unk2A5;
                                                                                                ((temp_t0_6 != 0) ? &unksp-25C : var_t8_3)->unk2A4 = temp_a3_13;
                                                                                                temp_v0_17 = var_t2_3 != 0;
                                                                                                temp_a6_13 = var_t3_4 != 0;
                                                                                                temp_a5_6 = var_t9_3 != 0;
                                                                                                var_ra_3 = var_a0_3->unk2A6;
                                                                                                var_s1_5 = var_a0_3->unk2A7;
                                                                                                temp_s0_5 = (temp_t0_6 == 0) ? temp_a3_13 : var_s0_5;
                                                                                                temp_t0_7 = (temp_v0_17 != 0) ? var_t2_3 : temp_s0_5;
                                                                                                ((temp_a6_13 != 0) ? &unksp-25C : (var_t8_3 + 2))->unk2A4 = temp_t0_7;
                                                                                                ((temp_v0_17 != 0) ? &unksp-25C : (var_t8_3 + 1))->unk2A4 = temp_s0_5;
                                                                                                temp_v0_18 = (temp_a6_13 != 0) ? var_t3_4 : temp_t0_7;
                                                                                                ((temp_a5_6 != 0) ? &unksp-25C : (var_t8_3 + 3))->unk2A4 = temp_v0_18;
                                                                                                temp_a3_14 = (temp_a5_6 == 0) ? temp_v0_18 : var_t9_3;
                                                                                                var_t8_3 = var_a0_3 + 4;
                                                                                                var_s0_5 = var_t8_3->unk2A4;
                                                                                                var_v0_4 = var_s5_4 != 0;
                                                                                                var_t2_3 = var_t8_3->unk2A5;
                                                                                                ((temp_at_6 != 0) ? &unksp-25C : var_s2_3)->unk2A4 = temp_a3_14;
                                                                                                temp_a4_8 = temp_s3_4 != 0;
                                                                                                temp_t0_8 = temp_a1_2 != 0;
                                                                                                temp_a6_14 = temp_a2_7 != 0;
                                                                                                var_t3_4 = var_t8_3->unk2A6;
                                                                                                var_t9_3 = var_t8_3->unk2A7;
                                                                                                temp_t1_7 = (temp_at_6 == 0) ? temp_a3_14 : var_t1_3;
                                                                                                temp_at_7 = (temp_a4_8 != 0) ? temp_s3_4 : temp_t1_7;
                                                                                                ((temp_t0_8 != 0) ? &unksp-25C : (var_s2_3 + 2))->unk2A4 = temp_at_7;
                                                                                                ((temp_a4_8 != 0) ? &unksp-25C : (var_s2_3 + 1))->unk2A4 = temp_t1_7;
                                                                                                temp_at_8 = (temp_t0_8 != 0) ? temp_a1_2 : temp_at_7;
                                                                                                ((temp_a6_14 != 0) ? &unksp-25C : (var_s2_3 + 3))->unk2A4 = temp_at_8;
                                                                                                var_s6_4 = (temp_a6_14 == 0) ? temp_at_8 : temp_a2_7;
                                                                                                var_s2_3 = var_t8_3 + 4;
                                                                                                var_at_5 = var_a0_3;
                                                                                                var_t1_3 = var_s2_3->unk2A4;
                                                                                                goto loop_131;
                                                                                            }
                                                                                            temp_s3_5 = temp_a2_7 != 0;
                                                                                            temp_v1_7 = var_t3_4 != 0;
                                                                                            sp1B0 = (s64) var_s7_2;
                                                                                            temp_t1_8 = var_a0_3->unk2A5;
                                                                                            temp_a6_15 = (temp_t0_6 == 0) ? temp_a3_13 : var_s0_5;
                                                                                            temp_t9_3 = var_t2_3 != 0;
                                                                                            ((temp_t0_6 != 0) ? sp98 : (s64) var_t8_3)->unk2A4 = temp_a3_13;
                                                                                            temp_ra_3 = (temp_t9_3 == 0) ? temp_a6_15 : var_t2_3;
                                                                                            temp_t0_9 = var_a0_3->unk2A6;
                                                                                            ((temp_v1_7 != 0) ? sp98 : (s64) (var_t8_3 + 2))->unk2A4 = temp_ra_3;
                                                                                            temp_t3_5 = (temp_v1_7 == 0) ? temp_ra_3 : var_t3_4;
                                                                                            ((temp_t9_3 != 0) ? sp98 : (s64) (var_t8_3 + 1))->unk2A4 = temp_a6_15;
                                                                                            temp_s7_2 = temp_a1_2 != 0;
                                                                                            temp_a6_16 = var_t9_3 != 0;
                                                                                            temp_v1_8 = var_t1_3 != 0;
                                                                                            temp_at_9 = (temp_a6_16 == 0) ? temp_t3_5 : var_t9_3;
                                                                                            temp_ra_4 = temp_s3_4 != 0;
                                                                                            temp_s4_4 = (temp_v1_8 == 0) ? temp_at_9 : var_t1_3;
                                                                                            temp_t8_3 = (temp_ra_4 == 0) ? temp_s4_4 : temp_s3_4;
                                                                                            temp_a1_3 = (temp_s7_2 == 0) ? temp_t8_3 : temp_a1_2;
                                                                                            ((temp_a6_16 != 0) ? sp98 : (s64) (var_t8_3 + 3))->unk2A4 = temp_t3_5;
                                                                                            ((temp_v1_8 != 0) ? sp98 : (s64) var_s2_3)->unk2A4 = temp_at_9;
                                                                                            temp_s1_4 = var_s5_4 != 0;
                                                                                            temp_a2_8 = (temp_s3_5 == 0) ? temp_a1_3 : temp_a2_7;
                                                                                            ((temp_s7_2 != 0) ? sp98 : (s64) (var_s2_3 + 2))->unk2A4 = temp_t8_3;
                                                                                            temp_t3_6 = temp_t1_8 != 0;
                                                                                            temp_s5_6 = (temp_s1_4 == 0) ? temp_a2_8 : var_s5_4;
                                                                                            ((temp_ra_4 != 0) ? sp98 : (s64) (var_s2_3 + 1))->unk2A4 = temp_s4_4;
                                                                                            temp_t1_9 = (temp_t3_6 == 0) ? temp_s5_6 : temp_t1_8;
                                                                                            sp1B8 = (s64) temp_t0_9;
                                                                                            ((temp_s3_5 != 0) ? sp98 : (s64) (var_s2_3 + 3))->unk2A4 = temp_a1_3;
                                                                                            temp_t0_10 = temp_t0_9 != 0;
                                                                                            sp1C0 = (var_a0_3->unk2A7 != 0) ? sp98 : (var_a0_3 + 3);
                                                                                            ((temp_s1_4 != 0) ? sp98 : var_a0_3)->unk2A4 = temp_a2_8;
                                                                                            ((temp_t0_10 != 0) ? sp98 : (var_a0_3 + 2))->unk2A4 = temp_t1_9;
                                                                                            ((temp_t3_6 == 0) ? (var_a0_3 + 1) : sp98)->unk2A4 = temp_s5_6;
                                                                                            temp_a6_17 = (temp_t0_10 == 0) ? temp_t1_9 : (u8) sp1B8;
                                                                                            sp1C0->unk2A4 = temp_a6_17;
                                                                                            if (doLoadGamma__CBD != 0) {
                                                                                                if (saved_reg_gp->unk-74DC(spC8->unk74->unk64, 0x6D670003, (void *) spA8, temp_t0_6, var_s2_3, doLoadGamma__CBD, temp_a6_17, sp1C0) == -1) {
                                                                                                    saved_reg_gp->unk-74EC((void *) sp50);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        temp_a6_18 = spB8 + 1;
                                                                                        spB8 = temp_a6_18;
                                                                                        spB0 += 0x10;
                                                                                        if (temp_a6_18 < ((void *) sp120)->unk20) {
                                                                                            goto loop_109;
                                                                                        }
                                                                                    }
                                                                                    if (spD8->unkA0 != 0) {

                                                                                    } else {
                                                                                        temp_a2_9 = *(spC8->unk1B4 + (saved_reg_gp->unk-3140 * 4));
                                                                                        temp_a5_7 = temp_a2_9->unk0;
                                                                                        if (temp_a2_9->unk6C != 0) {
                                                                                            var_v1_7 = 0;
                                                                                        } else {
                                                                                            if (temp_a2_9->unkA0 != 0) {
                                                                                                temp_a5_8 = temp_a2_9->unk0;
                                                                                                var_t3_5 = temp_a5_8 + 0x60000;
                                                                                                if (temp_a5_8->unk70100 & 0x1F) {
                                                                                                    do {

                                                                                                    } while (temp_a5_8->unk70100 & 0x1F);
                                                                                                    var_t3_5 = temp_a5_8 + 0x60000;
                                                                                                }
                                                                                                temp_a5_8->unk6802C = 0x6319;
                                                                                                var_t3_5->unk2D08 = 0x20;
                                                                                                var_t3_5->unk2D88 = 4;
                                                                                                var_t3_5->unk2D88 = 0;
                                                                                                var_t3_5->unk2D08 = 0x22;
                                                                                                var_t3_5->unk2D88 = 0xFF;
                                                                                                var_t3_5->unk2D88 = 0xFF;
                                                                                                var_t3_5->unk2D08 = 0x30;
                                                                                                var_t3_5->unk2D88 = 4;
                                                                                                var_t3_5->unk2D88 = 0;
                                                                                                var_t3_5->unk2D08 = 0x32;
                                                                                                var_t3_5->unk2D88 = 0xFF;
                                                                                                var_t3_5->unk2D88 = 0xFF;
                                                                                                var_t3_5->unk2D08 = 6;
                                                                                                var_t3_5->unk2D88 = 0x30;
                                                                                                var_t3_5->unk2D08 = 2;
                                                                                                var_t3_5->unk2D88 = 0xFF;
                                                                                                var_t3_5->unk2D08 = 0x16;
                                                                                                var_t3_5->unk2D88 = 0x30;
                                                                                                var_t3_5->unk2D08 = 0x12;
                                                                                                var_t3_5->unk2D88 = 0xFF;
                                                                                            } else {
                                                                                                var_a6_2 = temp_a5_7 + 0x60000;
                                                                                                if (temp_a5_7->unk70100 & 0x1F) {
                                                                                                    do {

                                                                                                    } while (temp_a5_7->unk70100 & 0x1F);
                                                                                                    var_a6_2 = temp_a5_7 + 0x60000;
                                                                                                }
                                                                                                var_a6_2->unk1811 = 4;
                                                                                                var_a6_2->unk1910 = 0xFF;
                                                                                            }
                                                                                            var_v1_7 = 1;
                                                                                        }
                                                                                        if (var_v1_7 == 0) {
                                                                                            saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3F60);
                                                                                        }
                                                                                    }
                                                                                    if ((*(s32 *) spC0 == 0) || ((&arg_sp0 + 0xFFFF0000)->unk8B8 != 0x10)) {
                                                                                        spD8->unk90 = 0;
                                                                                    } else {
                                                                                        spD8->unk90 = 1;
                                                                                    }
                                                                                    screenIsSaved = 1;
                                                                                    saved_reg_gp->unk-72DC(spC8, sp120);
                                                                                    var_s4 = 1;
                                                                                } else {
                                                                                    saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3F18);
                                                                                }
                                                                            }
                                                                        }
                                                                    } else {
                                                                        saved_reg_gp->unk-312C = 0xEAC;
                                                                        saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5504, 0xEAC);
                                                                    }
                                                                } else {
                                                                    saved_reg_gp->unk-312C = 0xEAA;
                                                                    saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5508, 0xEAA);
                                                                }
                                                            } else {
                                                                saved_reg_gp->unk-312C = 0xEA8;
                                                                saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-550C, 0xEA8);
                                                            }
                                                        } else {
                                                            saved_reg_gp->unk-312C = 0xEA6;
                                                            saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5510, 0xEA6);
                                                        }
                                                    } else {
                                                        saved_reg_gp->unk-312C = 0xEA4;
                                                        saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5514);
                                                    }
                                                } else {
                                                    saved_reg_gp->unk-312C = 0xEA2;
                                                    saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-551C, 0xEA2);
                                                }
                                            } else {
                                                saved_reg_gp->unk-312C = 0xEA1;
                                                saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5520, 0xEA1);
                                            }
                                        } else {
                                            saved_reg_gp->unk-312C = 0xEA0;
                                            saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5530, 0xEA0);
                                        }
                                    } else {
                                        saved_reg_gp->unk-312C = 0xE9F;
                                        saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s5_2->unkF0);
                                    }
                                } else {
                                    saved_reg_gp->unk-312C = 0xE8D;
                                    saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5518, 0xE8D);
                                }
                            } else {
                                saved_reg_gp->unk-312C = 0xE8C;
                                saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s5_2->unkE0);
                            }
                        } else {
                            saved_reg_gp->unk-312C = 0xE8B;
                            saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s5_2->unkE8, 0xE8B);
                        }
                    } else {
                        saved_reg_gp->unk-312C = 0xE8A;
                        saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s5_2->unkE4, 0xE8A);
                    }
                } else {
                    saved_reg_gp->unk-312C = 0xE89;
                    saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, saved_reg_gp->unk-5524, 0xE89);
                }
            } else {
                saved_reg_gp->unk-312C = 0xE88;
                saved_reg_gp->unk-7E78(&sub_5e4f0000 + 0x2968 + 0x740, temp_s5_2->unk34);
            }
        }
    } else {
        saved_reg_gp->unk-74EC(&sub_5e4f0000 + 0x3DD0);
        spD0 = (s64) temp_v0_2;
    }
    if (sp118 != 0) {
        saved_reg_gp->unk-7640(sp118);
    }
    if (var_s4 == 0) {
        var_s1_6 = 0;
        if (sp120->unk4 != 0) {
            var_s0_6 = sp18;
loop_58:
            temp_a0_5 = var_s0_6->unk144;
            var_s1_6 += 1;
            if (temp_a0_5 != 0) {
                free(temp_a0_5);
                var_s0_6->unk144 = 0;
            }
            var_s0_6->unk144 = 0;
            var_s0_6 += 0x1F4;
            if (var_s1_6 < (u32) sp120->unk4) {
                goto loop_58;
            }
        }
        if (spD0 != 0) {
            saved_reg_gp->unk-75A0(spD0);
        }
        return 0;
    }
    return 1;
}

void mgrasInitRootWindow(void *arg0) {
    s32 temp_s0;
    s32 temp_v0_3;
    s64 temp_v0;
    void *temp_gp;
    void *temp_v0_2;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x12ED08;
    temp_gp->unk-7E04();
    temp_s0 = *(WindowTable + (arg0->unk0 * 4));
    temp_v0 = temp_gp->unk-73FC(&sub_5e4f0000 + 0x40A0, 0x15, 1);
    unksp10 = (s64) temp_s0;
    unksp20 = temp_v0;
    temp_v0_2 = temp_gp->unk-758C(0x228);
    if (temp_v0_2 == NULL) {
        temp_gp->unk-74EC(&sub_5e4f0000 + 0x40B8);
        temp_gp->unk-7438(1);
    }
    temp_gp->unk-7574(temp_v0_2, 0, 0x228);
    temp_v0_2->unk10 = 1;
    temp_v0_2->unkA = 0xFFFF;
    temp_v0_2->unk4 = 0xFFFF;
    temp_v0_2->unk0 = (void *) (temp_v0_2 + 0x114);
    temp_v0_3 = temp_gp->unk-7594(0);
    if (temp_gp->unk-72D4(temp_v0_3, 5, temp_v0_2, temp_v0_3) != 0) {
        (*(arg0->unk1B4 + (temp_gp->unk-3140 * 4)))->unk48 = temp_v0_2;
        if (temp_gp->unk-741C(unksp10, unksp20, 8, 0x20, 0, 1, sp, 0) != 0) {
            temp_gp->unk-74EC(&sub_5e4f0000 + 0x40E8);
            temp_gp->unk-7438(1);
        }
    } else {
        temp_gp->unk-75A0(temp_v0_2);
    }
}

s32 mgrasProbe(void) {
    s64 sp18;
    s32 temp_s0;
    s8 temp_v0;
    u8 temp_a0;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x12B784;
    temp_s0 = M2C_ERROR(/* Read from unset register $a0 */);
    if ((M2C_ERROR(/* Read from unset register $a0 */) == 0) || (temp_s0 == 3)) {
        temp_a0 = M2C_ERROR(/* Read from unset register $a1 */)->unkC;
        sp18 = M2C_ERROR(/* Read from unset register $a1 */);
        if (temp_a0 != 0xFF) {
            if (temp_gp->unk-7340(temp_a0, sp) != 0) {
                return temp_gp->unk-7578(sp, &sub_5e4f0000 + 0x2490) == 0;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return 0;
        }
        temp_v0 = temp_gp->unk-733C(&sub_5e4f0000 + 0x2490);
        sp18->unkC = temp_v0;
        return (temp_v0 & 0xFF) != 0xFF;
    }
    temp_gp->unk-74EC(&sub_5e4f0000 + 0x24A0);
    temp_gp->unk-74EC(&sub_5e4f0000 + 0x24D0, 3, temp_s0);
    temp_gp->unk-74EC(&sub_5e4f0000 + 0x24E8);
    return 0;
}

s32 mgrasPbufAllocConfirm(void *arg0) {
    s16 temp_a4;
    s16 temp_a6;
    s32 *temp_a2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_s0;
    s32 var_a5;
    s32 var_a5_2;
    void *temp_a3;
    void *temp_gp;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s5;
    void *var_a0;
    void *var_a1;

    temp_a2 = arg0->unk78;
    temp_s1 = arg0->unk10;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x70F50;
    temp_s1_2 = temp_s1->unk74;
    temp_s0 = *(temp_s1->unk1B4 + (temp_gp->unk-3140 * 4));
    temp_s5 = *(arg0->unk84 + (*temp_gp->unk-74E8 * 4));
    if (temp_a2 != NULL) {
        var_a5 = *temp_a2;
    } else {
        var_a5 = *temp_gp->unk-7598(temp_a2)->unk78;
    }
    temp_a6 = temp_s5->unk1C;
    temp_a4 = temp_s5->unk1E;
    temp_a3 = temp_s5->unk20;
    var_a5_2 = 1;
    temp_a0 = (temp_s1_2->unk58 + ((var_a5 - temp_s1_2->unk50) * 0x14))->unk8;
    if (temp_a6 >= 2) {
        var_a5_2 = 2;
        if (temp_a3->unk4A != 0) {
            if ((temp_a0 != 9) && (temp_a0 != 8)) {
                if (temp_a3->unk4B != 0) {

                } else {
                    goto block_20;
                }
            }
        } else {
block_20:
            var_a5_2 = 1;
        }
    }
    if (temp_a0 != 9) {
        goto block_4;
    }
    if (var_a5_2 > 0) {
        var_a0 = ((temp_a6 + temp_a4) * 4) + temp_s0;
loop_17:
        var_a0 -= 4;
        if (var_a0->unkC != 0) {
            if (((((temp_a6 - var_a5_2) + temp_a4) * 4) + temp_s0) == var_a0) {
                goto block_4;
            }
            goto loop_17;
        }
        return 0;
    }
block_4:
    temp_a1 = temp_a4 * 4;
    if (temp_a3->unk4D != 0) {
        var_a1 = temp_a1 + temp_s0;
        goto block_6;
    }
    var_a1 = temp_a1 + temp_s0;
    if (temp_a3->unk4E == 0) {
        /* Duplicate return node #14. Try simplifying control flow for better match */
        return 1;
    }
block_6:
    if (var_a1->unk10 != 0) {
        return 0;
    }
    return 1;
}
/* Warning: struct _Screen is not defined (only forward-declared) */
