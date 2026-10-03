? GfxRegisterBoard(s64, mgras_data_t *, s64);       /* extern */
? MgrasCalcScreenSize(s64, s64, s64);               /* extern */
? MgrasEramManagerTimeout(mgras_data_t *, ?, void *); /* extern */
? MgrasInitDMA(mgras_hw *, void *, ?, s32);         /* extern */
? htp_register_board(s64, s64, u16, u16);           /* extern */
s64 kabi_num_lockable_pages(s32);                   /* extern */
mgras_data_t *kern_malloc(?);                       /* extern */
u8 *kopt_find(s32, u8, s32, ?);                     /* extern */
s32 mgras_fpi2cPanelID(mgras_hw *, void *);         /* extern */
? mgras_fpi2cPanelOff(mgras_hw *, u8, ?, ?);        /* extern */
? mgras_fpi2cPanelOn(mgras_hw *, u8, ?, ?);         /* extern */
s32 mgras_fpi2cProbe();                             /* extern */
s32 mgras_fpi2cSetup(mgras_hw *);                   /* extern */
s32 mgras_mco_probe(mgras_hw *);                    /* extern */
? setgiovector(?, s32, s64, s64);                   /* extern */
? spinlock_init(void *, s32);                       /* extern */
s64 MgrasDownloadGE11Ucode(mgras_hw *arg0, s64 arg1, s64 arg2, u8 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg30, s64 arg32, s64 arg34, s64 arg36, s64 arg38, s64 arg40, s64 arg42, s64 arg44, s64 arg46, s64 arg48, s64 arg50, s64 arg52, s64 arg54); /* static */
s32 MgrasGatherInfo(mgras_hw *arg0, s64 arg1);      /* static */
void MgrasInitCMAP(mgras_hw *arg0);                 /* static */
void MgrasInitDCBctrl(mgras_hw *arg0);              /* static */
void MgrasInitDac(mgras_hw *arg0);                  /* static */
void MgrasInitGioIntrVectors();                     /* static */
void MgrasInitHQ(mgras_hw *arg0, s32 arg1, s64 arg2); /* static */
void MgrasInitRSS(mgras_hw *arg0, mgras_info_t *arg1, s32 arg273, s32 arg274, s32 arg327, s32 arg328, s32 arg329, s32 arg330, s32 arg331, s32 arg332, s32 arg333, s32 arg334, s32 arg335, s32 arg345, s32 arg347, s32 arg352, s32 arg358, s32 arg359, s32 arg360, s32 arg361, s32 arg362, s32 arg367, s32 arg368, s32 arg369, s32 arg370, s32 arg371, s32 arg372, s32 arg379); /* static */
s32 MgrasInitRasterBackend(mgras_hw *arg0, s64 arg1); /* static */
void MgrasInitVC3(mgras_hw *arg0);                  /* static */
void MgrasInitXMAP(mgras_hw *arg0, mgras_info_t *arg1); /* static */
s32 MgrasRecordTiming(mgras_hw *arg0, s64 arg1, s32 arg10, s64 arg20); /* static */
s32 MgrasSetColors(void *arg0, s32 arg1, u32 arg2, u16 *arg3); /* static */
void MgrasSetDacTiming(mgras_hw *arg0, s64 arg1);   /* static */
void MgrasSetRSSTiming(mgras_hw *arg0, s8 *arg1, s64 arg2, s64 arg8, s64 arg10); /* static */
s32 MgrasSetTiming(mgras_hw *arg0, mgras_info_t *arg1, s64 arg2, s64 arg3, s64 arg16, s64 arg18, s64 arg20); /* static */
void MgrasSetVC3Timing(mgras_hw *arg0, s64 arg1, s64 arg10); /* static */
void MgrasSetXMAPTiming(mgras_hw *arg0, s8 *arg1, s64 arg2); /* static */
s32 MgrasSyncPPRDRAMs(mgras_hw *arg0, mgras_info_t *arg1, s64 arg2, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22); /* static */
s32 MgrasSyncREPPs(mgras_hw *arg0, mgras_info_t *arg1); /* static */
void mgrasInitBoard(s64 arg0, s64 arg1, s64 arg2);  /* static */
s64 mgras_baseindex(mgras_hw *arg0);                /* static */
void mgras_fp_probe(mgras_hw *arg0, s8 *arg1, u8 arg6, s8); /* static */

void MgrasInitBoardGfx(mgras_hw *base, mgras_info_t *info, s64 arg8, s64 arg10) {
    mgras_data_t *temp_v0;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a6_2;
    void *temp_a2;

    add_to_inventory(7, 0xF, 0, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
    if (info->unk36 != 0) {
        add_to_inventory(0x11, 2, 0, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
    }
    temp_v0 = kern_malloc(0x910);
    if (temp_v0 == NULL) {
        cmn_err(0, (s8 *) saved_reg_gp->unk-7800);
    }
    bzero(temp_v0, 0x910U);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0->unkC8 = (s64) info;
    temp_v0->unkD0 = (s64) base;
    if (saved_reg_gp->unk0 == 0) {
        temp_a6 = saved_reg_gp->unk0;
        temp_a3 = saved_reg_gp->unk0;
        temp_a6_2 = (temp_a6 < 0) ? 0 : temp_a6;
        temp_a3_2 = (temp_a3 < 0) ? 0 : temp_a3;
        temp_a4 = temp_a3_2 > 0x64;
        saved_reg_gp->unk0 = (s32) ((temp_a6_2 > 0x64) ? 0x64 : temp_a6_2);
        saved_reg_gp->unk0 = (s32) ((temp_a4 != 0) ? 0x64 : temp_a3_2);
        if (((kabi_num_lockable_pages() << 0xE) << 0) <= 0x04000000) {
            M2C_TRAP_IF(0x64 == 0);
            saved_reg_gp->unk0 = (s32) ((s64) (((s64) saved_reg_gp->unk0 * kabi_num_lockable_pages()) + 0x63) / 100);
        } else {
            temp_a0 = (saved_reg_gp->unk0 << 0xC) + 0x63;
            M2C_TRAP_IF(0x64 == 0);
            saved_reg_gp->unk0 = (s32) (temp_a0 / 100);
            M2C_TRAP_IF(0x64 == 0);
            saved_reg_gp->unk0 = (s32) (((s64) (((kabi_num_lockable_pages(temp_a0) - 0x1000) * (s64) saved_reg_gp->unk0) + 0x63) / 100) + saved_reg_gp->unk0);
        }
        saved_reg_gp->unk0 = 0x55;
        saved_reg_gp->unk0 = 0;
        saved_reg_gp->unk0 = 0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0->unk7B0 = 0;
    temp_a2 = temp_v0 + 0xE8;
    temp_v0->unk60 = (s64) temp_a2;
    temp_v0->flow_hdl = (void *)1;
    temp_v0->unk58 = 0x28;
    MgrasEramManagerTimeout(temp_v0, 0x28, temp_a2);
    MgrasRetraceInit(temp_v0);
    spinlock_init(temp_v0 + 0x198, saved_reg_gp->unk-7800 + 0x28);
    init_mutex(temp_v0 + 0x8E8);
    init_mutex(temp_v0 + 0x900);
    GfxRegisterBoard(saved_reg_gp->unk-77F8, temp_v0, temp_v0->unkC8);
}

s64 MgrasFindBoardAddr(s64 arg0) {
    s64 var_s0;

    var_s0 = *((arg0 * 0x30) + saved_reg_gp->unk-77F0);
    if (MgrasProbe((mgras_hw *) var_s0, (mgras_info_t *) arg0) == 0) {
        var_s0 = 0;
    }
    return var_s0;
}

s32 mgras_earlyinit(void) {
    s32 temp_a2_2;
    s32 var_s1;
    s64 temp_a2;
    s64 temp_s2;
    s64 temp_v0;
    s64 var_s0;
    void *temp_a0;

    saved_reg_gp->unk-7800 = 1;
    var_s1 = 0;
    temp_s2 = saved_reg_gp->unk-77F0;
    var_s0 = 0;
loop_4:
    temp_v0 = MgrasFindBoardAddr(var_s0);
    if (temp_v0 != 0) {
        var_s1 += 1;
        if (saved_reg_gp->unk-7800 == 0) {
            if (var_s1 == 1) {
                mgrasInitBoard(temp_v0, var_s0);
                goto block_2;
            }
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((var_s0 * 0x30) + temp_s2)->unk10->unk4A = 0;
            mgrasInitBoard(temp_v0, var_s0);
block_2:
            if (var_s1 == 1) {
                temp_a0 = (var_s0 * 0x30) + temp_s2;
                temp_a2 = temp_a0->unk10;
                htp_register_board(temp_a0->unk0, saved_reg_gp->unk-77E8, temp_a2->unk20, temp_a2->unk22);
            }
        }
    }
    var_s0 += 1;
    if (var_s0 < 2) {
        goto loop_4;
    }
    saved_reg_gp->unk-7800 = 0;
    temp_a2_2 = saved_reg_gp->unk-7800;
    saved_reg_gp->unk-7800 = (s32) ((temp_a2_2 != 0) ? 0 : temp_a2_2);
    return var_s1 != 0;
}

void mgras_init(void) {
    s64 temp_s7;
    s64 var_s1;
    void *temp_s5;

    temp_s7 = saved_reg_gp->unk-77F0;
    var_s1 = 0;
loop_2:
    temp_s5 = (var_s1 * 0x30) + temp_s7;
    if (temp_s5->unk18 != 0) {
        MgrasInitBoardGfx((mgras_hw *) temp_s5->unk0, (mgras_info_t *) temp_s5->unk10);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s5->unk8 = (s64) M2C_ERROR(/* Read from unset register $v0 */);
    }
    var_s1 += 1;
    if (var_s1 < 2) {
        goto loop_2;
    }
    MgrasInitGioIntrVectors();
}

void MgrasSetGioVectors(s64 arg0) {
    s32 temp_s1;

    temp_s1 = ((arg0 * 0x30) + saved_reg_gp->unk-77F0)->unk24;
    setgiovector(0, temp_s1, saved_reg_gp->unk-77E0, arg0);
    setgiovector(1, temp_s1, saved_reg_gp->unk-77D8, arg0);
    setgiovector(2, temp_s1, saved_reg_gp->unk-77D0, arg0);
}

void MgrasInitGioIntrVectors(void) {
    s32 temp_s8;
    s64 temp_s5;
    s64 var_s1;

    temp_s8 = splhi();
    var_s1 = 0;
    temp_s5 = saved_reg_gp->unk-77F0;
loop_2:
    if (((var_s1 * 0x30) + temp_s5)->unk18 != 0) {
        MgrasSetGioVectors(var_s1);
    }
    var_s1 += 1;
    if (var_s1 < 2) {
        goto loop_2;
    }
    splx(temp_s8);
}

void mgrasConfigureXMAP(mgras_hw *arg0, s8 *arg1) {
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 1;
    arg0->xmap.pad3[4] = 0x48;
    arg0->xmap.index = 0;
    arg0->xmap.config = (((arg1->unk2C - 1) & 3) << 0x14) | 0x8073F;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void mgrasInitBoard(mgras_hw *arg0, s64 arg1, s64 arg2) {
    mgras_hw *temp_s0;
    s32 *temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_v0;
    s32 var_a6;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_s1;
    s64 var_a0;
    void *temp_s2;

    temp_s2 = (arg1 * 0x30) + saved_reg_gp->unk-77F0;
    temp_s0 = arg0;
    temp_s1 = temp_s2->unk10;
    MgrasReset(arg0);
    if (temp_s2->unk1C != 0) {
        MgrasInitDCBctrl(temp_s0);
        mgrasConfigureXMAP(temp_s0, (s8 *) temp_s1);
    } else {
        MgrasGatherInfo(temp_s0, temp_s1);
    }
    if (temp_s1->unk28 == 0) {
        if ((s32) temp_s1->unk32 < 3) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0 = (saved_reg_gp->unk0 & ~0x80) | 0x40;
            saved_reg_gp->unk0 = temp_v0;
            *saved_reg_gp->unk-7800 = temp_v0;
            flushbus();
        }
    }
    MgrasReset(temp_s0);
    mgrasConfigureXMAP(temp_s0, (s8 *) temp_s1);
    temp_a4 = saved_reg_gp->unk0;
    var_a6 = 0;
    var_a0 = 0;
    if (temp_a4 > 0) {
loop_6:
        temp_a1 = (var_a0 * 8) + saved_reg_gp->unk-77C8;
        temp_a3 = temp_a1->unk0;
        var_a0 += 1;
        if (temp_a3 == temp_s1->unk29) {
            var_a6 = temp_a1->unk4;
        }
        if (var_a0 < temp_a4) {
            goto loop_6;
        }
    }
    unksp28 = temp_s1 + 0x22;
    unksp30 = temp_s1 + 0x20;
    temp_a4_2 = (s64) var_a6 * 8;
    if (temp_s1->unk2C == 2) {
        temp_a1_2 = temp_a4_2 + saved_reg_gp->unk-77C0;
        arg0 = temp_a1_2;
        MgrasRecordTiming(temp_s0, *temp_a1_2);
        MgrasCalcScreenSize(*(s64) arg0, unksp30, unksp28);
    } else {
        temp_a1_3 = temp_a4_2 + saved_reg_gp->unk-77B8;
        arg2 = temp_a1_3;
        MgrasRecordTiming(temp_s0, *temp_a1_3);
        MgrasCalcScreenSize(*arg2, unksp30, unksp28);
    }
    MgrasInitHQ(temp_s0, 0);
    MgrasInitRasterBackend(temp_s0, temp_s1);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk44 = 1;
    temp_s2->unk20 = 1;
}

s32 MgrasProbe(mgras_hw *base, mgras_info_t *info, s64 arg2, s64 arg4) {
    s32 temp_a0;
    s32 temp_v0;
    s32 var_v0;

    arg4 = (s64) info;
    arg2 = (s64) base;
    if (badaddr(base, 4) != 0) {
        goto block_1;
    }
    temp_a0 = *arg2;
    var_v0 = 0;
    if ((temp_a0 & 0x7F) != 0x10) {

    } else {
        if (((u32) (temp_a0 & 0x10000) >> 0x10) != 1) {
            goto block_1;
        }
        if (((u32) (temp_a0 & 0x20000) >> 0x11) != 0) {
            goto block_1;
        }
        if (((u32) (temp_a0 & 0xFFFC0000) >> 0x12) != 1) {
            goto block_1;
        }
        if (badaddr(arg2 + 0x50000, 4) != 0) {
            goto block_1;
        }
        if (badaddr(arg2 + 0x50114, 4) != 0) {
block_1:
            var_v0 = 0;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0 = (0x802 << arg4) | saved_reg_gp->unk0;
            saved_reg_gp->unk0 = temp_v0;
            *saved_reg_gp->unk-77F8 = temp_v0;
            var_v0 = 1;
            ((arg4 * 0x30) + saved_reg_gp->unk-77F0)->unk18 = 1;
        }
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x28, 0x2c], gap at: 0x20. */
s32 MgrasGatherInfo(mgras_hw *arg0, s8 *arg1) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4_3;
    s32 temp_at;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_s5;
    s8 temp_a2_2;
    s8 temp_a3_3;
    s8 temp_a7;
    s8 var_a0;
    u32 temp_v0_2;
    u32 temp_v1;
    u8 *temp_v0;
    u8 *temp_v0_3;
    u8 temp_a1;
    u8 temp_a2_4;
    u8 temp_a4;
    u8 temp_a4_2;
    u8 temp_a4_4;
    u8 temp_a4_5;
    u8 temp_a5;
    u8 temp_a6;
    u8 temp_v0_4;
    u8 temp_v1_2;

    temp_s5 = mgras_baseindex();
    bzero(arg1, 0xCCU);
    MgrasInitDCBctrl(arg0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg1->unk37 = (s8) ((u32) (arg0->gio_id & 0xFF00) >> 8);
    ((temp_s5 * 0x30) + saved_reg_gp->unk-77F0)->unk1C = 1;
    strncpy(arg1, saved_reg_gp->unk-7800 + 0x68, 0x10U);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg1->unk24 = 0xCC;
    arg0->hq_config = 0x7E8D;
    arg0->gio_config = 0x765B900F;
    temp_a2 = (u32) (arg0->gio_status & 0x1F) < 5U;
    if (temp_a2 == 0) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v1 = (u32) (arg0->unk62488 & 0xFF000000) >> 0x18;
    temp_a1 = temp_v1 & 3;
    arg1->unk2B = temp_a1;
    arg1->unk28 = (u8) ((s32) (temp_v1 & 0x60) >> 5);
    arg1->unk31 = (s8) ((s32) (temp_v1 & 0x1C) >> 2);
    temp_v0 = kopt_find(saved_reg_gp->unk-7800 + 0x78, temp_a1, temp_a2, 0x765B900F);
    if (temp_v0 != NULL) {
        temp_a4 = *temp_v0;
        if (temp_a4 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk2B = (u8) (temp_a4 - 0x30);
        }
    }
    temp_a4_2 = arg1->unk28;
    temp_v0_2 = (u32) (arg0->unk62408 & 0xFF000000) >> 0x18;
    if (temp_a4_2 != 1) {
        temp_a0 = temp_v0_2 & 3;
        if (temp_a4_2 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk34 = 7;
            arg1->unk33 = 0;
            temp_v1_2 = arg1->unk2B;
            arg1->unk2C = temp_v1_2;
            temp_a6 = (temp_a0 == 3) ? 0U : 4U;
            arg1->unk2D = temp_a6;
            temp_a3 = ((s32) (temp_v0_2 & 0xC) >> 2) == 3;
            arg1->unk2E = temp_a6;
            temp_a7 = (temp_a3 != 0) ? 0 : 4;
            arg1->unk2F = temp_a7;
            if (temp_v1_2 == 2) {
                if ((temp_a6 & 0xFF) != (temp_a7 & 0xFF)) {
                    cmn_err(4, saved_reg_gp->unk-7800 + 0x88, 2, temp_a3);
                }
            }
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_at = (s32) (temp_v0_2 & 0x70) >> 4;
            temp_a4_3 = temp_at & 0xFF;
            temp_a5 = 1 << temp_a0;
            arg1->unk2E = temp_a5;
            arg1->unk34 = (s8) temp_at;
            if ((temp_a4_3 != 7) && (temp_a4_3 != 3)) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a2_2 = 1 << ((s32) (temp_v0_2 & 0xC) >> 2);
                arg1->unk2C = 2U;
                temp_a3_2 = temp_a5 & 0xFF;
                arg1->unk33 = 1;
                arg1->unk2F = temp_a2_2;
                if (temp_a3_2 != (temp_a2_2 & 0xFF)) {
                    cmn_err(4, saved_reg_gp->unk-7800 + 0x88, temp_a2_2, temp_a3_2);
                }
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk2C = 1U;
                arg1->unk33 = 0;
                arg1->unk2F = 0;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk2D = (u8) arg1->unk2E;
        }
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg1->unk34 = 7;
        arg1->unk33 = 0;
        arg1->unk2C = 1U;
        arg1->unk2D = 0U;
        arg1->unk2E = 0U;
        arg1->unk2F = 0;
    }
    temp_v0_3 = kopt_find(saved_reg_gp->unk-7800 + 0xC0);
    if (temp_v0_3 != NULL) {
        temp_a4_4 = *temp_v0_3;
        if (temp_a4_4 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_v0_2 = (temp_a4_4 - 0x30) & 0xFF;
            arg1->unk2C = (u8) var_v0_2;
            if (var_v0_2 < 2) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk33 = 0;
            }
        } else {
            goto block_13;
        }
    } else {
block_13:
        var_v0_2 = (s32) arg1->unk2C;
    }
    if (var_v0_2 > 0) {
        if (badaddr(&arg0->cmap0.rev, 4) != 0) {
            var_v0 = -1;
        } else if (badaddr(&arg0->cmap1.rev, 4) != 0) {
            var_v0 = -1;
        } else {
            temp_a2_3 = (u32) (arg0->gio_status & 0x1F) < 5U;
            if (temp_a2_3 == 0) {
                do {

                } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a4_5 = arg0->cmap1.rev;
            arg1->unk3D = (s8) (temp_a4_5 & 7);
            arg1->unk29 = (u8) ((s32) (arg0->cmap0.rev & 0xF0) >> 4);
            arg1->unk32 = (s8) ((s32) (temp_a4_5 & 0x70) >> 4);
            arg1->unk35 = (u8) (((s32) (temp_a4_5 & 0x80) >> 7) == 0);
            mgrasConfigureXMAP(arg0, arg1, temp_a2_3);
            if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
                do {

                } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->xmap.index = 4;
            temp_a2_4 = arg1->unk35;
            temp_a3_3 = arg0->xmap.config & 0xFF & 7;
            arg1->unk3B = temp_a3_3;
            if (temp_a2_4 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk49 = 0xFFU;
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a0 = mgras_mco_probe(arg0) & 0xFF;
                goto block_25;
            }
            mgras_fp_probe(arg0, arg1, temp_a2_4, temp_a3_3);
            temp_v0_4 = arg1->unk49;
            if (temp_v0_4 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk35 = 0U;
                if (temp_v0_4 != 0xFF) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg1->unk29 = temp_v0_4;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk40 = 0xFF;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a0 = mgras_mco_probe(arg0) & 0xFF;
block_25:
                arg1->unk40 = var_a0;
                if (var_a0 != 0xFF) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg1->unk35 = 0U;
                    arg1->unk36 = 1;
                }
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk39 = (s8) ((u32) (arg0->rss.n.s.status & 0xFF) >> 4);
            goto block_28;
        }
    } else {
block_28:
        if ((s32) arg1->unk2B > 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->flag_clr = 0x20000;
            if (MgrasDownloadGE11Ucode(arg0, saved_reg_gp->unk-77F0 + 0x60, 0x300, arg1->unk2B) != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk38 = 0xFF;
            } else {
                if (!(arg0->flag_set & 0x20000)) {
                    do {

                    } while (!(arg0->flag_set & 0x20000));
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk38 = (s8) arg0->rebus_read_hi;
                arg1->unk38 = (s8) arg0->rebus_read_lo;
            }
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_v0 = 0;
        arg1->unk3F = (s8) saved_reg_gp->unk0;
    }
    return var_v0;
}

void MgrasGatherDynamicInfo(void *arg0, void *arg1, s64 arg4, s64 arg6) {
    s64 temp_s3;
    s64 var_ra;
    u8 temp_a3;
    void *var_a0;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    temp_s3 = arg1->unkC8;
    temp_a3 = temp_s3->unk49;
    if ((temp_a3 != 0) && (temp_a3 != 0xFF)) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s3->unk29 = temp_a3;
    } else {
        if (arg1 != NULL) {
            arg4 = (s64) var_a0;
            mutex_lock(arg1 + 0x8E8);
            var_a0 = (void *) arg4;
            var_ra = arg6;
        }
        if ((u32) (var_a0->unk70100 & 0x1F) >= 6U) {
            do {

            } while ((u32) (var_a0->unk70100 & 0x1F) >= 6U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s3->unk29 = (u8) ((s32) (var_a0->unk61308 & 0xF0) >> 4);
        if (arg1 != NULL) {
            arg6 = var_ra;
            mutex_unlock(arg1 + 0x8E8);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void MgrasReset(mgras_hw *base) {
    s32 temp_s3;
    s64 temp_ra;
    s64 temp_t8;
    s64 temp_v0;

    unksp10 = (s64) base;
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_t8 = (mgras_baseindex() * 0x30) + saved_reg_gp->unk-77F0;
    unksp8 = temp_t8;
    temp_v0 = saved_reg_gp->unk-77F0;
    temp_s3 = ((temp_t8->unk24 != 2) ? 4 : 2) & 0xFF;
    *temp_v0 = (u8) (*temp_v0 & ~temp_s3);
    flushbus();
    us_delay(0xA);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_ra = saved_reg_gp->unk-77F0;
    *temp_ra = (u8) (*temp_ra | temp_s3);
    flushbus();
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    unksp10->unk50000 = 0x7E8D;
    unksp10->unk50114 = 0x765B900F;
    unksp8->unk20 = 0;
}

void MgrasInitHQ(mgras_hw *arg0, s32 arg1, s64 arg2) {
    s32 temp_a4;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->hq_config = arg1 | 0x7E8C;
    arg0->gio_config = 0x765B900F;
    temp_a4 = saved_reg_gp->unk0;
    if (temp_a4 > 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->cfifo_hw = 0x20 - (temp_a4 * 2);
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->cfifo_hw = 0x20;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo_lw = 0x14;
    arg0->cfifo_delay = 0x64;
    arg0->dfifo_hw = 0x28;
    arg0->dfifo_lw = 0x14;
    arg0->dfifo_delay = 0xFFF;
    arg0->bfifo_lw = 2;
    arg0->bfifo_hw = 6;
    arg0->bfifo_delay = 0x8C;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-77E8;
    arg0->flag_clr_priv = -1U;
    arg0->flag_enab_clr = -1U;
    arg0->flag_enab_set = 0x11000F;
    arg0->intr_enab_clr = -1U;
    MgrasInitDMA(arg0, arg0 + 0x70080, 0x8C, arg0 + 0x50000);
    MgrasInitDCBctrl(arg0);
}

void MgrasInitDCBctrl(mgras_hw *arg0) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->dcbctrl_xmap = 0x318C;
    arg0->dcbctrl_dac = 0x1084;
    arg0->dcbctrl_cmapall = 0x108C;
    arg0->dcbctrl_cmap0 = 0x108C;
    arg0->dcbctrl_cmap1 = 0x108C;
    arg0->dcbctrl_vc3 = 0x210A;
    arg0->dcbctrl_bdvers = 0x1090;
    arg0->bfifo_lw = 2;
    arg0->bfifo_hw = 6;
    arg0->bfifo_delay = 0x8C;
}

s32 MgrasInitRasterBackend(mgras_hw *arg0, mgras_info_t *arg1) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_v0;

    unksp8 = mgras_baseindex();
    var_v0 = -1;
    if ((s32) arg1->unk2C > 0) {
        MgrasInitDac(arg0);
        temp_v0 = MgrasSyncREPPs(arg0, arg1);
        if (temp_v0 != 0) {
            var_v0 = temp_v0;
        } else {
            temp_v0_2 = MgrasSyncPPRDRAMs(arg0, arg1);
            if (temp_v0_2 != 0) {
                var_v0 = temp_v0_2;
            } else {
                MgrasSetTiming(arg0, arg1, 0, ((unksp8 * 8) + saved_reg_gp->unk-77B0)->unk198);
                MgrasInitVC3(arg0);
                MgrasInitXMAP(arg0, arg1);
                MgrasInitCCR(arg0, arg1);
                MgrasInitRSS(arg0, arg1);
                MgrasInitCMAP(arg0);
                MgrasBlankScreen(arg0, 0);
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

s32 MgrasSetTiming(mgras_hw *arg0, s8 *arg1, s64 arg2, s64 arg3, s64 arg16, s64 arg18, s64 arg20) {
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_v0;
    s64 temp_s3_2;
    u32 temp_v0;
    u8 temp_v0_3;
    void *temp_s3;

    temp_s3 = M2C_ERROR(/* Read from unset register $a4 */);
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0x20;
    arg0->xmap.dib = 0;
    arg0->xmap.index = 0xC;
    arg0->xmap.dib = 0;
    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62408 = 0x40000000;
    MgrasSetDacTiming(arg0, arg3);
    if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
    }
    if (temp_s3 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62408 = (s32) ((temp_s3->unk8F8 | 0x60) << 0x18);
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62408 = 0x60000000;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->vc3.indexdata = 0x1F000100;
    MgrasSetVC3Timing(arg0, arg3);
    MgrasEnableVideoTiming(arg0, 1);
    MgrasCalcScreenSize(arg3, (s64) sp, (s64) &(s16) arg0);
    unksp18 = (s64) (u16) arg0;
    if (!(arg3->unk0 & 0x40000000)) {
        MgrasSetRSSTiming(arg0, arg1, arg3);
        if (arg2 != 0) {
            temp_s3_2 = ((mgras_baseindex(arg0) * 0x30) + saved_reg_gp->unk-77F0)->unk8;
            var_a0 = 0;
            if ((s32) temp_s3_2->unkC8->unk2B > 0) {
loop_28:
                temp_v0 = 0x40 - (((u32) (arg0->fifo_status & 0x1FC00000) >> 0x16) - 7);
                var_a0 += 1;
                if (temp_v0 < (u32) (arg0->fifo_status & 0x7F)) {
                    do {

                    } while (temp_v0 < (u32) (arg0->fifo_status & 0x7F));
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg0->cfifo.bydouble.data = saved_reg_gp->unk-77E0;
                arg0->cfifo.byword.data = 0x80000008;
                arg0->cfifo.byword.pad = unksp18 - 1;
                arg0->cfifo.byword.pad = 0;
                arg0->cfifo.bydouble.data = temp_s3_2->unk68C | (0x1F61 << 0x23);
                arg0->cfifo.byword.data = 1;
                arg0->cfifo.byword.data = 0xFA00;
                if (var_a0 < (s32) temp_s3_2->unkC8->unk2B) {
                    goto loop_28;
                }
            }
        }
    }
    MgrasSetXMAPTiming(arg0, arg1, arg3);
    temp_v0_2 = MgrasRecordTiming(arg0, arg3);
    if (temp_v0_2 != 0) {
        var_v0 = temp_v0_2;
    } else {
        if (!(arg3->unk0 & 0x40000000)) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk20 = (u16) arg0;
            arg1->unk22 = (u16) arg0;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg1->unk2A = (s8) arg3->unkC;
        if (arg1->unk40 != 0xFF) {
            goto block_17;
        }
        mgras_fp_probe(arg0, arg1);
        temp_v0_3 = arg1->unk49;
        switch (temp_v0_3) {                        /* irregular */
        case 0x82:
        case 0x83:
            mgras_fpi2cPanelOn(arg0);
block_17:
            var_v0 = 0;
            break;
        case 0x0:
        case 0xFF:
            var_v0 = 0;
            break;
        }
    }
    return var_v0;
}

void MgrasSetDacTiming(mgras_hw *arg0, void *arg1) {
    s64 temp_a4;

    temp_a4 = arg1->unk38;
    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk61811 = 0xC;
    arg0->dac.pad3[7] = temp_a4->unk0;
    arg0->unk61811 = 0xF;
    arg0->dac.pad3[7] = temp_a4->unk1;
    arg0->unk61811 = 9;
    arg0->dac.pad3[7] = temp_a4->unk2;
    us_delay(0x3E8);
    us_delay(0x186A0);
}

void MgrasSetVC3Timing(mgras_hw *arg0, void *arg1, s64 arg10) {
    s32 temp_a0;
    s32 var_v0;
    s64 temp_s8;

    temp_s8 = mgras_baseindex();
    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    if ((u32) arg1->unk10 < 0x55U) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->vc3.indexdata = 0x1F000300;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->vc3.indexdata = 0x1F000100;
    }
    MgrasLoadVC3SRAM(arg0, (u16 *) arg1->unk28, 0U, arg1->unk30);
    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->vc3.indexdata = 0x38000;
    MgrasLoadVC3SRAM(arg0, (u16 *) arg1->unk18, 0x380U, arg1->unk20);
    if ((u32) (arg0->gio_status & 0x1F) >= 4U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 4U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->vc3.indexdata = (((arg1->unk4 << 5) & 0xFFFF) << 8) | 0x06000000;
    arg0->vc3.indexdata = 0x04050000;
    arg0->vc3.indexdata = 0x05093E00;
    temp_a0 = arg1->unk0;
    var_v0 = !(temp_a0 & 4) ? 0x1E : 0x9E;
    if (temp_a0 & 2) {
        var_v0 |= 0x20;
        if (temp_a0 & 8) {
            var_v0 |= 0x40;
        }
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    ((temp_s8 * 0x30) + saved_reg_gp->unk-77F0)->unk2C = var_v0;
}

void MgrasSetXMAPTiming(mgras_hw *arg0, s8 *arg1, void *arg2) {
    if ((u32) (arg0->gio_status & 0x1F) >= 4U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 4U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.pp1_sel = 1;
    arg0->xmap.index = 1;
    arg0->xmap.pad3[4] = 0x48;
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0x20;
    arg0->xmap.dib = arg2->unk60;
    arg0->xmap.index = 8;
    arg0->xmap.dib = arg2->unk48;
    if (!(arg2->unk0 & 0x40000000)) {
        if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
            do {

            } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->xmap.index = 0;
        arg0->xmap.dib = arg2->unk44;
        if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
            do {

            } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->xmap.index = 4;
        arg0->xmap.dib = arg2->unk4C;
    }
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0xC;
    arg0->xmap.dib = arg2->unk50 | 0x100;
    arg0->xmap.index = 0x10;
    arg0->xmap.dib = arg2->unk54;
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0x14;
    arg0->xmap.dib = arg2->unk58;
    arg0->xmap.index = 0x18;
    arg0->xmap.dib = arg2->unk5C;
    if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0;
    arg0->xmap.config = (((arg1->unk2C - 1) & 3) << 0x14) | 0x8073F;
}

void MgrasSetRSSTiming(mgras_hw *arg0, s8 *arg1, s64 arg2, s64 arg8, s64 arg10) {
    s32 temp_a3;
    s32 temp_a4;

    arg8 = arg2;
    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    MgrasEnableVideoTiming(arg0, 0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a3 = arg8->unk4;
    temp_a4 = arg1->unk2C == 2;
    arg0->cfifo.bydouble.data = ((u64) ((((((((((((u32) (temp_a3 + 0x2FF) / 768U) & 3) | ((s32) arg0 & ~3)) & ~0x3C) | ((((u32) (temp_a3 + 0xBF) / 192U) & 0xF) * 4)) & ~0xC0) | ((temp_a4 & 3) << 6)) & ~0x300) | ((((temp_a4 == 0) ? 3 : 2) & 3) << 8)) & ~0x400) << 0x20) >> 0x20) | saved_reg_gp->unk-77D8;
    M2C_TRAP_IF(0x300 == 0);
    M2C_TRAP_IF(0xC0 == 0);
    arg0->cfifo.bydouble.data = arg8->unk6C | saved_reg_gp->unk-77D0;
    MgrasEnableVideoTiming(arg0, 1);
}

s32 MgrasRecordTiming(s64 arg0, void *arg1, s32 arg10, s64 arg20) {
    mgras_data_t *temp_v0;
    s32 var_v0;
    s64 temp_s0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;

    unksp40 = arg0;
    temp_s0 = ((mgras_baseindex() * 8) + saved_reg_gp->unk-77B0)->unk198;
    if (arg1->unk0 & 0x40000000) {
        bcopy(temp_s0 + 0x64, sp, 0x24U);
        arg10 = temp_s0->unk4C;
    }
    if (arg1 != temp_s0) {
        if (temp_s0 != 0) {
            kern_free((void *) temp_s0->unk18);
            kern_free((void *) temp_s0->unk28);
            kern_free((void *) temp_s0->unk38);
            kern_free((void *) temp_s0);
        }
        temp_v0 = kern_malloc(0x88);
        if (temp_v0 == NULL) {
            var_v0 = 0xC;
        } else {
            bcopy(arg1, temp_v0, 0x88U);
            temp_v0_2 = kern_calloc((s32) temp_v0->unk20, 8);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0->unk18 = temp_v0_2;
            if (temp_v0_2 != 0) {
                bcopy((void *) arg1->unk18, (void *) temp_v0_2, temp_v0->unk20 * 2);
                temp_v0_3 = kern_calloc((s32) temp_v0->unk30, 8);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0->unk28 = temp_v0_3;
                if (temp_v0_3 != 0) {
                    bcopy((void *) arg1->unk28, (void *) temp_v0_3, temp_v0->unk30 * 2);
                    temp_v0_4 = kern_calloc(3, 8);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0->unk38 = temp_v0_4;
                    if (temp_v0_4 != 0) {
                        bcopy((void *) arg1->unk38, (void *) temp_v0_4, 3U);
                        if (arg1->unk0 & 0x40000000) {
                            bcopy(sp, temp_v0 + 0x64, 0x24U);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_v0->unk4C = arg10;
                        }
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        ((mgras_baseindex((mgras_hw *) unksp40) * 8) + saved_reg_gp->unk-77B0)->unk198 = (s64) temp_v0;
                        goto block_12;
                    }
                    kern_free((void *) temp_v0->unk28);
                    kern_free((void *) temp_v0->unk18);
                    kern_free(temp_v0);
                    var_v0 = 0xC;
                } else {
                    kern_free((void *) temp_v0->unk18);
                    kern_free(temp_v0);
                    var_v0 = 0xC;
                }
            } else {
                kern_free(temp_v0);
                var_v0 = 0xC;
            }
        }
    } else {
block_12:
        var_v0 = 0;
    }
    return var_v0;
}

void MgrasInitDac(mgras_hw *arg0) {
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v0;
    s32 var_a0;
    u16 temp_at_3;

    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    if ((u32) (arg0->gio_status & 0x1F) >= 4U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 4U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->dac.mode = 3;
    arg0->dac.mode = 2;
    arg0->dac.mode = 3;
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk61811 = 5;
    arg0->dac.pad3[7] = 0x89;
    arg0->dac.addr = 0xD00;
    arg0->dac.pad3[7] = 0x40;
    if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->dac.addr = 0x400;
    arg0->dac.pad3[7] = 0xFF;
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->dac.addr = 0x500;
    arg0->dac.pad3[7] = 0x89;
    arg0->dac.addr = 0x600;
    arg0->dac.pad3[7] = 0xEC;
    arg0->dac.addr = 0x700;
    arg0->dac.pad3[7] = 0xC0;
    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->dac.addr = 0x800;
    arg0->dac.pad3[7] = 6;
    arg0->dac.addr = 0x402;
    arg0->dac.pad3[7] = 1;
    var_a0 = 0;
    arg0->dac.addr = 0;
loop_14:
    temp_v0 = var_a0 & 1;
    temp_at = var_a0 * 4;
    var_a0 += 1;
    temp_at_2 = (temp_at | 2) & 0xFFFF;
    if ((temp_v0 == 0) && (arg0->gio_status & 0x1F)) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_at_3 = (temp_at_2 & 3) | ((temp_at_2 << 6) & 0xFF00);
    arg0->dac.pal = temp_at_3;
    arg0->dac.pal = temp_at_3;
    arg0->dac.pal = temp_at_3;
    if (var_a0 < 0x100) {
        goto loop_14;
    }
}

void MgrasInitVC3(s16 arg0) {
    s16 temp_s1;
    s32 var_a0;
    s32 var_a0_2;
    s64 temp_a3;
    s64 temp_v0;

    temp_s1 = arg0;
    temp_v0 = mgras_baseindex();
    arg0 = 0;
    arg0 = 0xFFE0;
    temp_a3 = ((temp_v0 * 8) + saved_reg_gp->unk-77B0)->unk198;
    if ((u32) (temp_s1->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (temp_s1->unk70100 & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk62038 = 0x07050000;
    if (temp_s1->unk70100 & 0x1F) {
        do {

        } while (temp_s1->unk70100 & 0x1F);
    }
    var_a0 = temp_a3->unk8;
    if (var_a0 > 0) {
loop_7:
        var_a0 -= 1;
        if ((u32) (temp_s1->unk70100 & 0x1F) >= 6U) {
            do {

            } while ((u32) (temp_s1->unk70100 & 0x1F) >= 6U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk62190 = 0xD7C;
        if (var_a0 > 0) {
            goto loop_7;
        }
    }
    if ((u32) (temp_s1->unk70100 & 0x1F) >= 5U) {
        do {

        } while ((u32) (temp_s1->unk70100 & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk62190 = 0xFFFF;
    temp_s1->unk62038 = 0x07093E00;
    var_a0_2 = temp_a3->unk8;
    if (var_a0_2 > 0) {
loop_15:
        var_a0_2 -= 1;
        if ((u32) (temp_s1->unk70100 & 0x1F) >= 6U) {
            do {

            } while ((u32) (temp_s1->unk70100 & 0x1F) >= 6U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk62190 = 0x46BE;
        if (var_a0_2 > 0) {
            goto loop_15;
        }
    }
    if ((u32) (temp_s1->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (temp_s1->unk70100 & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk62190 = 0xFFFF;
    MgrasLoadVC3SRAM((mgras_hw *) temp_s1, sp, 0xD7CU, 2U);
    MgrasLoadVC3SRAM((mgras_hw *) temp_s1, sp, 0x46BEU, 2U);
    MgrasClearCursor((mgras_hw *) temp_s1);
    if ((u32) (temp_s1->unk70100 & 0x1F) >= 5U) {
        do {

        } while ((u32) (temp_s1->unk70100 & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk62038 = 0x1DFFFC00;
    temp_s1->unk60D88 = 1;
}

void MgrasInitXMAP(mgras_hw *arg0, mgras_info_t *arg1) {
    s32 temp_a2;
    s32 temp_at_2;
    s32 var_a0;
    s32 var_a0_2;
    u8 temp_at;

    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.pp1_sel = 1;
    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 1;
    arg0->xmap.pad3[4] = 0x48;
    arg0->xmap.index = 0x1C;
    arg0->xmap.dib = 0x653;
    arg0->xmap.index = 0;
    arg0->xmap.re_rac = 0x10214;
    var_a0 = 0;
    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0;
    arg0->xmap.config = (((arg1->unk2C - 1) & 3) << 0x14) | 0x48073F;
    arg0->xmap.index = 0;
    arg0->xmap.buf_sel = 0;
    arg0->xmap.index = 4;
    arg0->xmap.buf_sel = 0;
    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
loop_10:
    temp_at = var_a0 * 4;
    var_a0 += 1;
    if (((var_a0 & 5) == 5) && (arg0->gio_status & 0x1F)) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = temp_at;
    arg0->xmap.main_mode = 8;
    if (var_a0 < 0x20) {
        goto loop_10;
    }
    var_a0_2 = 0;
    if (arg0->gio_status & 0x1F) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
loop_18:
    temp_at_2 = var_a0_2 & 5;
    temp_a2 = var_a0_2 & 0x1F;
    var_a0_2 += 1;
    if ((temp_at_2 == 5) && (arg0->gio_status & 0x1F)) {
        do {

        } while (arg0->gio_status & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = temp_a2 * 4;
    arg0->xmap.ovl_mode = 0;
    if (var_a0_2 < 8) {
        goto loop_18;
    }
    if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0;
    arg0->xmap.config = (((arg1->unk2C - 1) & 3) << 0x14) | 0x8073F;
}

void MgrasInitCMAP(mgras_hw *arg0) {
    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cmapall.cmd = 1;
    MgrasSetColors((void *)1, 0x2000, 0U);
}

s32 MgrasSetColors(void *arg0, s32 arg1, u32 arg2, u16 *arg3) {
    s16 temp_v1;
    s32 temp_lo;
    s32 temp_t1;
    s32 var_a1;
    u16 *var_s0;
    u16 var_a2;
    u16 var_a3;
    u16 var_s1;
    u8 var_a5;
    u8 var_a7;
    u8 var_t0;
    void *var_a6;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_s0 = arg3;
    var_s1 = -1U;
    temp_t1 = ((mgras_baseindex() * 8) + saved_reg_gp->unk-77B0)->unk198->unk4C;
    if (!(arg0->unk70100 & 0x1F)) {
        goto block_2;
    }
loop_1:
    if (arg0->unk70100 & 0x1F) {
        goto loop_1;
    }
block_2:
    var_a1 = 0;
    var_a2 = 0;
    if (arg2 == 0) {
        goto block_32;
    }
    var_a6 = arg0 + 0x60000;
    if (var_s0 != NULL) {
        goto block_17;
    }
block_4:
    var_a3 = var_a2;
block_5:
    if (!(var_a2 & 0x1F)) {
        goto block_21;
    }
block_6:
    if (var_a1 < 6) {
        goto block_9;
    }
    var_a1 = 0;
    if (!(arg0->unk70100 & 0x1F)) {
        goto block_9;
    }
loop_8:
    if (arg0->unk70100 & 0x1F) {
        goto loop_8;
    }
block_9:
    var_a5 = var_a3 & 0xFF;
    var_t0 = var_a3 & 0xFF;
    if (var_s1 == var_a3) {
        goto block_18;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_a1 += 1;
    var_s1 = var_a3;
    arg0->unk60C30 = (s16) (((var_a3 << 8) & 0xFF00) | ((var_a3 >> 8) & 0xFF));
    if (var_s0 != NULL) {
        goto block_19;
    }
block_11:
    var_a7 = var_a3 & 0xFF;
    if (arg1 == 0) {
        goto block_20;
    }
block_12:
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk60D18 = (s32) ((var_a5 << 0x18) | (var_a7 << 0x10) | (var_t0 << 8));
block_13:
    var_a2 += 1;
    var_s1 += 1;
    var_a1 += 1;
    if (var_s0 == NULL) {
        goto block_15;
    }
    var_s0 += 6;
block_15:
    if (var_a2 >= arg2) {
        goto block_28;
    }
    if (var_s0 == NULL) {
        goto block_4;
    }
block_17:
    var_a3 = *var_s0;
    goto block_5;
block_18:
    if (var_s0 == NULL) {
        goto block_11;
    }
block_19:
    var_t0 = var_s0->unk4;
    var_a7 = var_s0->unk3;
    var_a5 = var_s0->unk2;
    if (arg1 != 0) {
        goto block_12;
    }
block_20:
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_lo = (s32) ((var_t0 * 0x72) + ((var_a5 * 0x12B) + (var_a7 * 0x24B))) / 1000;
    M2C_TRAP_IF(0x3E8 == 0);
    arg0->unk60D18 = (s32) ((temp_lo << 0x10) | (temp_lo << 0x18) | (temp_lo << 8));
    goto block_13;
block_21:
    if (!(arg0->unk70100 & 0x1F)) {
        goto block_23;
    }
loop_22:
    if (arg0->unk70100 & 0x1F) {
        goto loop_22;
    }
block_23:
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk61C88 = 4;
    arg0->unk61F00 = temp_t1;
    arg0->unk61C88 = 4;
    arg0->unk61F00 = temp_t1;
    var_s1 = var_a3;
    if (!(arg0->unk70100 & 0x1F)) {
        goto block_25;
    }
loop_24:
    if (arg0->unk70100 & 0x1F) {
        goto loop_24;
    }
block_25:
    if (arg0->unk61208 & 8) {
        goto block_27;
    }
loop_26:
    if (!(arg0->unk61208 & 8)) {
        goto loop_26;
    }
block_27:
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v1 = ((var_a3 << 8) & 0xFF00) | ((var_a3 >> 8) & 0xFF);
    arg0->unk60C30 = temp_v1;
    arg0->unk60C30 = temp_v1;
    arg0->unk61C88 = 4;
    var_a1 = 6;
    arg0->unk61F00 = (s32) (temp_t1 | 0x4000);
    goto block_6;
block_28:
block_29:
    if ((u32) (arg0->unk70100 & 0x1F) < 3U) {
        goto block_31;
    }
loop_30:
    if ((u32) (arg0->unk70100 & 0x1F) >= 3U) {
        goto loop_30;
    }
block_31:
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_a6->unk1C88 = 4;
    var_a6->unk1F00 = temp_t1;
    var_a6->unk1C88 = 4;
    var_a6->unk1F00 = temp_t1;
    return 0;
block_32:
    var_a6 = arg0 + 0x60000;
    goto block_29;
}

s32 MgrasSyncREPP(mgras_hw *arg0, u8 arg1, u64 arg2, u32 arg3, u64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    u32 temp_a3;
    u32 temp_a5;
    u32 temp_s6;
    u32 var_s3;
    u64 temp_at;

    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.pp1_sel = ((arg2 * 2) | arg3) * 2;
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 1;
    arg0->xmap.pad3[4] = 8;
    arg0->xmap.index = 0;
    temp_s6 = (((arg1 - 1) & 3) << 0x14) | 0x8073F;
    arg0->xmap.config = temp_s6;
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 0;
    arg0->xmap.re_rac = 0x50214;
    arg0->xmap.index = 0x1C;
    arg0->xmap.re_rac = 0x653;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-77C8;
    temp_at = ((u64) (((arg3 != 0) ? 0x50000000 : 0x40000000) << 0x20) >> 0x20) | saved_reg_gp->unk-77C0;
    arg6 = temp_at;
    arg0->cfifo.bydouble.data = temp_at;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-77B8;
loop_19:
    if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 1;
    arg0->xmap.pad3[4] = 0;
    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 7;
    arg0->dcbctrl_xmap = 0x1010;
    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a3 = arg0->xmap.re_rac;
    arg0->dcbctrl_xmap = 0x318C;
    temp_a5 = temp_a3 & 0xF;
    if ((u32) (arg0->gio_status & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.index = 1;
    arg0->xmap.pad3[4] = 8;
    var_s3 = (u32) (0xF0000 & temp_a3) >> 0x10;
    arg0->xmap.index = 0;
    arg0->xmap.config = temp_s6;
    if (((u32) (temp_a3 & 0xF00) >> 8) == temp_a5) {
        var_s3 = temp_a5;
        if (temp_a5 != 1) {
            goto block_14;
        }
    } else if (var_s3 != 1) {
block_14:
        if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
            do {

            } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->xmap.index = 0;
        arg0->xmap.re_rac = 0x70214;
        us_delay(0x1388);
        if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
            do {

            } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->xmap.index = 0;
        arg0->xmap.re_rac = 0x50214;
        if (var_s3 != 1) {
            goto loop_19;
        }
    }
    if ((u32) (arg0->gio_status & 0x1F) >= 5U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo.bydouble.data = arg6;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-77B0;
    arg0->xmap.index = 0;
    arg0->xmap.re_rac = 0x10214;
    if ((u32) (arg0->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->xmap.pp1_sel = 1;
    return 0;
}

s32 MgrasSyncREPPs(mgras_hw *arg0, mgras_info_t *arg1) {
    s32 temp_v0;
    s32 var_a0;
    u32 var_s4;
    u64 var_s0;

    var_s0 = 0;
    if (arg1->unk2C != 0) {
loop_2:
        var_s4 = 0;
loop_3:
        temp_v0 = MgrasSyncREPP(arg0, arg1->unk2C, var_s0, var_s4);
        if (temp_v0 != 0) {
            var_a0 = temp_v0;
        } else {
            var_s4 += 1;
            if (var_s4 >= 2U) {
                var_s0 += 1;
                if (var_s0 >= (u8) arg1->unk2C) {
                    goto block_7;
                }
                goto loop_2;
            }
            goto loop_3;
        }
    } else {
block_7:
        var_a0 = 0;
    }
    return var_a0;
}

s32 MgrasSyncPPRDRAMs(mgras_hw *arg0, s64 arg1, s64 arg2, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22) {
    mgras_hw *temp_s6;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_t0;
    s32 var_a0;
    s32 var_t1;
    s32 var_v0;
    s64 temp_a6;
    s64 temp_t3;
    s64 temp_v0;
    s64 var_a0_2;
    u32 var_a4;
    u32 var_ra;
    u32 var_s1;
    u32 var_s1_2;
    u64 temp_a2;
    u64 temp_a2_2;
    u64 temp_a5_2;
    u64 temp_s2;
    u64 temp_s3;
    u64 temp_s4;
    u64 temp_s5;
    u64 temp_s7;
    u64 temp_t3_2;
    void *temp_s0;
    void *temp_s8;
    void *var_a7;

    temp_s0 = arg0 + 0x70000;
    arg2 = arg1;
    temp_s6 = arg0;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    if (!(arg0->status & 2)) {
        do {

        } while (!(arg0->status & 2));
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s2 = saved_reg_gp->unk-77A0;
    temp_s7 = saved_reg_gp->unk-77A8;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-77C8;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s2;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7798;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7790;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7788;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7780;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-77D0;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7778;
    if ((u32) (arg0->gio_status & 0x1F) >= 4U) {
        do {

        } while ((u32) (arg0->gio_status & 0x1F) >= 4U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s8 = temp_s6 + 0x60000;
    temp_s6->xmap.pp1_sel = 1;
    temp_s6->xmap.index = 0x1C;
    temp_s6->xmap.dib = 0x653;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    us_delay(0xC8);
    us_delay(3);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s3 = saved_reg_gp->unk-7770;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s3;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s2;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7768;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    us_delay(0x120);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s2;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7760;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    us_delay(0x42);
    us_delay(3);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7758;
    temp_a2 = saved_reg_gp->unk-7750;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7760;
    arg0->cfifo.bydouble.data = temp_a2;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7748;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s3;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s2;
    arg0->cfifo.bydouble.data = temp_a2;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7740;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s3;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s2;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7738;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7730;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s3;
    arg0->cfifo.bydouble.data = temp_s7;
    arg0->cfifo.bydouble.data = temp_s2;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    temp_s4 = saved_reg_gp->unk-7720;
    temp_s5 = saved_reg_gp->unk-7728;
    var_s1 = 0;
    do {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->cfifo.bydouble.data = temp_s5;
        var_s1 += 1;
        arg0->cfifo.bydouble.data = temp_s4;
        us_delay(0x3E8);
    } while (var_s1 < 0x40U);
    var_t1 = -1;
    var_a0 = -1;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    if (arg2->unk2C != 0) {
        arg0 = 0;
        temp_v0 = saved_reg_gp->unk-77C0;
loop_25:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk80 = (u64) (((u64) ((s64) arg0 << 0x20) >> 0x20) | saved_reg_gp->unk-7718);
        var_ra = 0;
loop_26:
        temp_t0 = (var_ra == 0) ? 0 : 0x10000000;
        if ((u32) (temp_s0->unk100 & 0x1F) >= 5U) {
            do {

            } while ((u32) (temp_s0->unk100 & 0x1F) >= 5U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s8->unk1C88 = 4;
        var_a7 = temp_s6 + 0x80000;
        temp_t3 = temp_t0 | 0x08000000;
        var_ra += 1;
        temp_a4 = temp_s8->unk1D00 & 7;
        if (var_t1 != -1) {
            if (temp_a4 == var_t1) {
                goto block_30;
            }
            var_v0 = -1;
        } else {
            var_t1 = temp_a4;
block_30:
            var_a4 = 0;
            temp_t3_2 = temp_v0 | ((u64) (temp_t3 << 0x20) >> 0x20);
loop_33:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk80 = temp_t3_2;
            temp_a6 = temp_t0 | (var_a4 << 0x18);
            temp_s0->unk80 = temp_s3;
            temp_s0->unk80 = temp_t3_2;
            temp_s0->unk80 = temp_s2;
            temp_s0->unk80 = (u64) (((u64) ((temp_a6 | 0x24) << 0x20) >> 0x20) | temp_v0);
            temp_s0->unk80 = (u64) (((u64) (temp_a6 << 0x20) >> 0x20) | temp_v0);
            var_a4 += 1;
            temp_a5 = temp_s6->rss.n.s.device_data & 1;
            if (var_a0 != -1) {
                if (temp_a5 == var_a0) {
                    goto block_35;
                }
                var_v0 = -2;
            } else {
                var_a0 = temp_a5;
block_35:
                if ((var_a0 == 0) || (var_t1 == 0)) {
                    temp_a5_2 = temp_v0 | ((u64) ((temp_a6 | 0x18) << 0x20) >> 0x20);
                    if (((u32) (0xFFFF0000 & temp_s6->rss.n.s.device_data) >> 0x10) != 5) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_s0->unk80 = temp_a5_2;
                        temp_s0->unk80 = (u64) saved_reg_gp->unk-7700;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_s0->unk80 = temp_a5_2;
                        temp_s0->unk80 = (u64) saved_reg_gp->unk-7708;
                    }
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s0->unk80 = (u64) (((u64) ((temp_a6 | 0x18) << 0x20) >> 0x20) | temp_v0);
                    temp_s0->unk80 = (u64) saved_reg_gp->unk-7710;
                }
                if (var_a4 < 3U) {
                    goto loop_33;
                }
                if (var_ra >= 2U) {
                    temp_a2_2 = (s64) arg0 + 1;
                    arg0 = temp_a2_2;
                    if (temp_a2_2 >= (u8) arg2->unk2C) {
                        goto block_48;
                    }
                    goto loop_25;
                }
                goto loop_26;
            }
        }
    } else {
        var_a7 = temp_s6 + 0x80000;
block_48:
        if ((var_a0 != 0) && (var_t1 != 0)) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk80 = (u64) saved_reg_gp->unk-77C8;
            temp_s0->unk80 = temp_s7;
            temp_s0->unk80 = (u64) saved_reg_gp->unk-76F0;
            if ((u32) (temp_s0->unk100 & 0x1F) >= 4U) {
                do {

                } while ((u32) (temp_s0->unk100 & 0x1F) >= 4U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s8->unk1C08 = 1;
            temp_s8->unk1C88 = 0x1C;
            temp_s8->unk1F00 = 0x422;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk80 = (u64) saved_reg_gp->unk-77C8;
            temp_s0->unk80 = temp_s7;
            temp_s0->unk80 = (u64) saved_reg_gp->unk-76F8;
        }
        var_s1_2 = 0;
        var_a0_2 = 0x27000000;
        do {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk80 = (u64) (((u64) (var_a0_2 << 0x20) >> 0x20) | saved_reg_gp->unk-77C0);
            var_s1_2 += 1;
            var_a7->unk-3A8C;
            var_a0_2 += 0x800;
        } while (var_s1_2 < 8U);
        var_v0 = 0;
    }
    return var_v0;
}

void MgrasInitRSS(mgras_hw *arg0, mgras_info_t *arg1, s32 arg273, s32 arg274, s32 arg327, s32 arg328, s32 arg329, s32 arg330, s32 arg331, s32 arg332, s32 arg333, s32 arg334, s32 arg335, s32 arg345, s32 arg347, s32 arg352, s32 arg358, s32 arg359, s32 arg360, s32 arg361, s32 arg362, s32 arg367, s32 arg368, s32 arg369, s32 arg370, s32 arg371, s32 arg372, s32 arg379) {
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 temp_at;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_8;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s64 temp_a2_2;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a4;
    s64 temp_a6;
    s64 temp_a6_7;
    s64 temp_a7;
    s64 temp_a7_2;
    s64 temp_at_2;
    s64 temp_s5_3;
    s64 temp_t0_2;
    s64 temp_t1;
    s64 temp_v0_2;
    s64 temp_v0_7;
    s64 temp_v1_5;
    u64 temp_a1;
    u64 temp_a4_6;
    u64 temp_a5;
    u64 temp_t2;
    u64 temp_t3;
    u64 temp_t8;
    u64 temp_t9;

    bzero(sp, 0x6C0U);
    temp_t2 = saved_reg_gp->unk-76D0;
    temp_t3 = saved_reg_gp->unk-76D8;
    temp_t8 = saved_reg_gp->unk-76E0;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_t0 = -9 & ((-8 & arg274) | 4);
    temp_a6 = temp_t0 & ~0xFF0 & ~0x1000;
    arg274 = temp_t0;
    arg274 = (s32) temp_a6;
    arg0->cfifo.bydouble.data = ((u64) (temp_a6 << 0x20) >> 0x20) | saved_reg_gp->unk-7718;
    arg352 = 0;
    temp_t9 = saved_reg_gp->unk-76E8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg352 << 0x20) >> 0x20) | saved_reg_gp->unk-7798;
    arg0->cfifo.bydouble.data = temp_t9;
    arg0->cfifo.bydouble.data = temp_t8;
    arg0->cfifo.bydouble.data = temp_t3;
    arg0->cfifo.bydouble.data = temp_t2;
    temp_a2 = arg358 | 7;
    temp_at = temp_a2 & ~0x38 & ~0x1C0;
    temp_t1 = saved_reg_gp->unk-76C0;
    arg358 = temp_a2;
    temp_a7 = -0xE01 & temp_at & saved_reg_gp->unk-76C8;
    arg358 = temp_at;
    arg358 = (s32) temp_a7;
    arg0->cfifo.bydouble.data = ((u64) (temp_a7 << 0x20) >> 0x20) | temp_t1;
    temp_a3 = arg359 | 0xFF | 0xFF00;
    temp_a7_2 = saved_reg_gp->unk-76B8;
    arg359 = (s32) temp_a3;
    arg0->cfifo.bydouble.data = ((u64) (temp_a3 << 0x20) >> 0x20) | temp_a7_2;
    temp_v1 = (-8 & arg360) | 1;
    temp_t0_2 = saved_reg_gp->unk-76B0;
    temp_at_2 = (-9 & temp_v1) | 0x0FFFFFF0;
    arg360 = temp_v1;
    arg360 = (s32) temp_at_2;
    arg0->cfifo.bydouble.data = ((u64) (temp_at_2 << 0x20) >> 0x20) | temp_t0_2;
    arg361 = (arg361 | 7) & ~0x7FF8;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-76A8;
    arg362 = -2 & arg362 & ~0xE & saved_reg_gp->unk-76A0;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7698;
    temp_a6_2 = -0xD & (-4 & arg367);
    arg367 = temp_a6_2;
    temp_a4 = -0x21 & (-0x11 & temp_a6_2);
    arg367 = (s32) temp_a4;
    arg0->cfifo.bydouble.data = ((u64) (temp_a4 << 0x20) >> 0x20) | saved_reg_gp->unk-7780;
    temp_v1_2 = (-0x100 & arg368) | 0x19;
    arg368 = temp_v1_2;
    temp_v1_3 = (0xFFF0FFFF & ((0xFFFF00FF & temp_v1_2) | 0x1A00)) | 0x80000;
    arg368 = temp_v1_3;
    arg0->cfifo.bydouble.data = ((u64) ((s64) temp_v1_3 << 0x20) >> 0x20) | saved_reg_gp->unk-7690;
    temp_a4_2 = (-0x100 & arg369) | 0x7F;
    arg369 = temp_a4_2;
    temp_a4_3 = (0xFFF0FFFF & ((0xFFFF00FF & temp_a4_2) | 0x8000)) | 0x80000;
    arg369 = temp_a4_3;
    arg0->cfifo.bydouble.data = ((u64) ((s64) temp_a4_3 << 0x20) >> 0x20) | saved_reg_gp->unk-7688;
    temp_a6_3 = (-0x100 & arg370) | 0x7F;
    arg370 = temp_a6_3;
    temp_a6_4 = (0xFFF0FFFF & ((0xFFFF00FF & temp_a6_3) | 0x8000)) | 0x80000;
    arg370 = temp_a6_4;
    arg0->cfifo.bydouble.data = ((u64) ((s64) temp_a6_4 << 0x20) >> 0x20) | saved_reg_gp->unk-7680;
    temp_a4_4 = arg371 | 0xFF;
    arg371 = temp_a4_4;
    temp_a2_2 = 0xFFF0FFFF & (0xFFFF00FF & temp_a4_4);
    arg371 = (s32) temp_a2_2;
    arg0->cfifo.bydouble.data = ((u64) (temp_a2_2 << 0x20) >> 0x20) | saved_reg_gp->unk-7678;
    arg372 = 0;
    temp_a1 = saved_reg_gp->unk-7650;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg372 << 0x20) >> 0x20) | saved_reg_gp->unk-7670;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7668;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7660;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7658;
    arg0->cfifo.bydouble.data = temp_a1;
    temp_v0 = -4 & arg379;
    arg379 = temp_v0;
    temp_a2_3 = -0xF1 & (-0xD & temp_v0);
    arg379 = temp_a2_3;
    temp_v0_2 = temp_a2_3 & ~0x300 & ~0xC00;
    arg379 = (s32) temp_v0_2;
    arg0->cfifo.bydouble.data = ((u64) (temp_v0_2 << 0x20) >> 0x20) | saved_reg_gp->unk-7788;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7648;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7640;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a6_5 = -2 & arg273;
    arg273 = temp_a6_5;
    temp_a6_6 = temp_a6_5 & ~6 & ~0x18;
    arg273 = temp_a6_6;
    temp_v1_4 = ((temp_a6_6 & ~0x60) | ((((arg1->unk2E != 4) ? 0 : 2) & 3) << 5)) & ~0x180;
    temp_a4_5 = ((-0xE01 & temp_v1_4) | 0x400) & ~0xF000;
    arg273 = temp_v1_4;
    temp_a6_7 = saved_reg_gp->unk-7638;
    temp_v1_5 = 0xFFF7FFFF & ((temp_a4_5 & ~0x70000) | 0x40000);
    arg273 = temp_a4_5;
    arg273 = (s32) temp_v1_5;
    arg0->cfifo.bydouble.data = ((u64) (temp_v1_5 << 0x20) >> 0x20) | temp_a6_7;
    arg327 = arg1->unk20 - 1;
    arg328 = arg1->unk22 - 1;
    arg329 = arg1->unk20 - 1;
    arg330 = arg1->unk22 - 1;
    arg331 = arg1->unk20 - 1;
    arg332 = arg1->unk22 - 1;
    arg333 = arg1->unk20 - 1;
    arg334 = arg1->unk22 - 1;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7630;
    temp_a4_6 = saved_reg_gp->unk-7618;
    temp_a5 = saved_reg_gp->unk-7628;
    arg0->cfifo.bydouble.data = temp_a5;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7620;
    arg0->cfifo.bydouble.data = temp_a4_6;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7610;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7608;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7600;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg327 << 0x20) >> 0x20) | saved_reg_gp->unk-75F8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg328 << 0x20) >> 0x20) | saved_reg_gp->unk-75F0;
    temp_a3_2 = saved_reg_gp->unk-75E8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg329 << 0x20) >> 0x20) | temp_a3_2;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg330 << 0x20) >> 0x20) | saved_reg_gp->unk-75E0;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg331 << 0x20) >> 0x20) | saved_reg_gp->unk-75D8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg332 << 0x20) >> 0x20) | saved_reg_gp->unk-75D0;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg333 << 0x20) >> 0x20) | saved_reg_gp->unk-75C8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg334 << 0x20) >> 0x20) | saved_reg_gp->unk-75C0;
    temp_v0_3 = -2 & arg335 & ~2;
    arg335 = temp_v0_3;
    temp_s5 = -9 & (temp_v0_3 & ~4);
    arg335 = temp_s5;
    temp_v0_4 = -0x21 & (-0x11 & temp_s5);
    arg335 = temp_v0_4;
    temp_v0_5 = temp_v0_4 & ~0x40 & ~0x80;
    arg335 = temp_v0_5;
    arg0->cfifo.bydouble.data = ((u64) ((s64) temp_v0_5 << 0x20) >> 0x20) | saved_reg_gp->unk-75B8;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-75B0;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-75A8;
    temp_s5_2 = arg345 & ~0xF;
    arg345 = temp_s5_2;
    temp_v1_6 = -0xF1 & temp_s5_2 & ~0x700;
    arg345 = temp_v1_6;
    temp_v0_6 = temp_v1_6 & ~0x3800 & saved_reg_gp->unk-75A0;
    arg345 = temp_v0_6;
    temp_a2_4 = 0x40000 | (temp_v0_6 & ~0x20000);
    arg345 = temp_a2_4;
    temp_v1_7 = 0xFFF7FFFF & temp_a2_4 & ~0x100000;
    arg345 = temp_v1_7;
    temp_v0_7 = temp_v1_7 & ~0x400000 & ~0x800000;
    arg345 = (s32) temp_v0_7;
    arg0->cfifo.bydouble.data = ((u64) (temp_v0_7 << 0x20) >> 0x20) | saved_reg_gp->unk-7598;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7590;
    temp_v0_8 = -0x100 & arg347;
    arg347 = temp_v0_8;
    temp_s5_3 = (0xFFFF00FF & temp_v0_8) | 0xF0000;
    arg347 = (s32) temp_s5_3;
    arg0->cfifo.bydouble.data = ((u64) (temp_s5_3 << 0x20) >> 0x20) | saved_reg_gp->unk-7588;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7580;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7578;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7570;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7568;
    arg0->cfifo.bydouble.data = temp_a1;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7560;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7558;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7550;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7548;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7540;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7538;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7530;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7528;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7520;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7518;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7510;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg352 << 0x20) >> 0x20) | saved_reg_gp->unk-7798;
    arg0->cfifo.bydouble.data = temp_t9;
    arg0->cfifo.bydouble.data = temp_t8;
    arg0->cfifo.bydouble.data = temp_t3;
    arg0->cfifo.bydouble.data = temp_t2;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg358 << 0x20) >> 0x20) | temp_t1;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg359 << 0x20) >> 0x20) | temp_a7_2;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg360 << 0x20) >> 0x20) | temp_t0_2;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-76A8;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7698;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg367 << 0x20) >> 0x20) | saved_reg_gp->unk-7780;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg368 << 0x20) >> 0x20) | saved_reg_gp->unk-7690;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg369 << 0x20) >> 0x20) | saved_reg_gp->unk-7688;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg370 << 0x20) >> 0x20) | saved_reg_gp->unk-7680;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg371 << 0x20) >> 0x20) | saved_reg_gp->unk-7678;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg372 << 0x20) >> 0x20) | saved_reg_gp->unk-7670;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7668;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7660;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7658;
    arg0->cfifo.bydouble.data = temp_a1;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg379 << 0x20) >> 0x20) | saved_reg_gp->unk-7788;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7648;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7640;
    if (arg0->fifo_status & 0x7F) {
        do {

        } while (arg0->fifo_status & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg274 << 0x20) >> 0x20) | saved_reg_gp->unk-7718;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg273 << 0x20) >> 0x20) | temp_a6_7;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7630;
    arg0->cfifo.bydouble.data = temp_a5;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7620;
    arg0->cfifo.bydouble.data = temp_a4_6;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7610;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7608;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7600;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg327 << 0x20) >> 0x20) | saved_reg_gp->unk-75F8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg328 << 0x20) >> 0x20) | saved_reg_gp->unk-75F0;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg329 << 0x20) >> 0x20) | temp_a3_2;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg330 << 0x20) >> 0x20) | saved_reg_gp->unk-75E0;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg331 << 0x20) >> 0x20) | saved_reg_gp->unk-75D8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg332 << 0x20) >> 0x20) | saved_reg_gp->unk-75D0;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg333 << 0x20) >> 0x20) | saved_reg_gp->unk-75C8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg334 << 0x20) >> 0x20) | saved_reg_gp->unk-75C0;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg335 << 0x20) >> 0x20) | saved_reg_gp->unk-75B8;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-75B0;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-75A8;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg345 << 0x20) >> 0x20) | saved_reg_gp->unk-7598;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7590;
    arg0->cfifo.bydouble.data = ((u64) ((s64) arg347 << 0x20) >> 0x20) | saved_reg_gp->unk-7588;
    arg0->cfifo.bydouble.data = saved_reg_gp->unk-7580;
}

s32 MgrasVerifyVC3SRAM(void *arg0, s32 arg1, s32 arg2, u32 arg3, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24) {
    s32 temp_t0;
    s32 temp_v1;
    s32 var_s3;
    s32 var_s7;
    u16 *temp_s5_2;
    u64 temp_s5;
    u64 var_s1;

    var_s7 = 0;
    if ((u32) (arg0->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->unk70100 & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62038 = (s32) (((arg2 & 0xFFFF) << 8) | 0x07000000);
    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    var_s1 = 0;
    if (arg3 != 0) {
        var_s3 = arg2;
loop_14:
        temp_s5 = var_s1 << 0x20;
        temp_t0 = 5 & var_s1;
        var_s1 += 1;
        if (temp_t0 == 5) {
            if (arg0->unk70100 & 0x1F) {
                do {

                } while (arg0->unk70100 & 0x1F);
            }
        }
        temp_s5_2 = ((temp_s5 >> 0x20) * 2) + arg1;
        if (*temp_s5_2 != arg0->unk62190) {
            var_s7 += 1;
            if ((u32) (arg0->unk70100 & 0x1F) >= 6U) {
                do {

                } while ((u32) (arg0->unk70100 & 0x1F) >= 6U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v1 = 0x07000000 | ((var_s3 & 0xFFFF) << 8);
            arg0->unk62038 = temp_v1;
            arg8 = (s64) temp_v1;
            if (arg0->unk70100 & 0x1F) {
                do {

                } while (arg0->unk70100 & 0x1F);
            }
            arg10 = (s64) arg0->unk62190;
            us_delay(0x3E8);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk62038 = (s32) arg8;
            if (arg0->unk70100 & 0x1F) {
                do {

                } while (arg0->unk70100 & 0x1F);
            }
            arg12 = (s64) arg0->unk62190;
            cmn_err(4, saved_reg_gp->unk-7800 + 0xD0);
            cmn_err(4, saved_reg_gp->unk-7800 + 0xF0, var_s3, *temp_s5_2);
        }
        var_s3 += 1;
        if (var_s1 < arg3) {
            goto loop_14;
        }
    }
    return var_s7;
}

void MgrasLoadVC3SRAM(mgras_hw *base, u16 *data, u32 addr, u32 len) {
    s32 temp_at;
    s32 temp_v0;
    u32 var_a5;

    var_a5 = 0;
    if ((u32) (base->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (base->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    base->vc3.indexdata = ((addr & 0xFFFF) << 8) | 0x07000000;
    if (base->gio_status & 0x1F) {
        do {

        } while (base->gio_status & 0x1F);
    }
    if (len != 0) {
loop_7:
        temp_v0 = var_a5 & 5;
        temp_at = var_a5 * 2;
        var_a5 += 1;
        if ((temp_v0 == 5) && (base->gio_status & 0x1F)) {
            do {

            } while (base->gio_status & 0x1F);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        base->vc3.ram = *(temp_at + data);
        if (var_a5 < len) {
            goto loop_7;
        }
    }
    MgrasVerifyVC3SRAM();
}

void MgrasClearCursor(mgras_hw *base) {
    bzero(sp, 0x100U);
    MgrasLoadVC3SRAM(base, sp, 0x400U, 0x80U);
    if ((u32) (base->gio_status & 0x1F) >= 4U) {
        do {

        } while ((u32) (base->gio_status & 0x1F) >= 4U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    base->vc3.indexdata = 0x01040000;
    base->vc3.indexdata = 0x02028000;
    base->vc3.indexdata = 0x03020000;
}

void MgrasEnableRetraceInterrupts(mgras_hw *base) {
    s32 temp_v0;
    s32 temp_v1;
    void *temp_v1_2;

    temp_v1 = mgras_baseindex() * 0x30;
    if ((u32) (base->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (base->gio_status & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v1_2 = temp_v1 + saved_reg_gp->unk-77F0;
    temp_v0 = temp_v1_2->unk2C | 1;
    temp_v1_2->unk2C = temp_v0;
    base->vc3.indexdata = ((temp_v0 & 0xFFFF) << 8) | 0x1E000000;
}

void MgrasBlackoutTiming(void *arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a1;
    s32 var_a0;
    void *temp_a1_2;

    temp_a1 = mgras_baseindex() * 0x30;
    if ((u32) (arg0->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->unk70100 & 0x1F) >= 6U);
    }
    temp_a1_2 = temp_a1 + saved_reg_gp->unk-77F0;
    temp_a0 = temp_a1_2->unk2C;
    if (arg1 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a0 = temp_a0 | 2;
        temp_a1_2->unk2C = var_a0;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a0 = temp_a0 & ~2;
        temp_a1_2->unk2C = var_a0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62038 = (s32) (((var_a0 & 0xFFFF) << 8) | 0x1E000000);
}

void MgrasEnableVideoTiming(mgras_hw *base, s32 onoff) {
    s64 temp_v0;

    temp_v0 = mgras_baseindex();
    if ((u32) (base->gio_status & 0x1F) >= 6U) {
        do {

        } while ((u32) (base->gio_status & 0x1F) >= 6U);
    }
    if (onoff != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        base->vc3.indexdata = ((((temp_v0 * 0x30) + saved_reg_gp->unk-77F0)->unk2C & 0xFFFF) << 8) | 0x1E000000;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        base->vc3.indexdata = 0x1E000000;
    }
}

void MgrasSetGenlock(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a1;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_a0;

    temp_a0 = (mgras_baseindex() * 0x30) + saved_reg_gp->unk-77F0;
    temp_a1 = temp_a0->unk2C;
    if (arg1 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a1 = temp_a1 | 0x20;
        temp_a0->unk2C = var_a1;
        if (arg2 != 0) {
            goto block_2;
        }
        goto block_7;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_a1 = temp_a1 & ~0x20;
    temp_a0->unk2C = var_a1;
    if (arg2 == 0) {
block_7:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a1_2 = var_a1 & ~0x40;
        temp_a0->unk2C = var_a1_2;
    } else {
block_2:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a1_2 = var_a1 | 0x40;
        temp_a0->unk2C = var_a1_2;
    }
    if ((u32) (arg0->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->unk70100 & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62038 = (s32) (((var_a1_2 & 0xFFFF) << 8) | 0x1E000000);
}

void MgrasDownloadHQ3Ucode(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a6;
    s32 *var_a6_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a7;
    s32 temp_at;
    s64 temp_a5;
    s64 var_a5;
    s64 var_a5_2;

    temp_a7 = (s32) ((arg2 >= 0) ? arg2 : (arg2 + 3)) >> 2;
    var_a6 = arg1;
    var_a5 = 0;
    if (temp_a7 > 0) {
loop_2:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a5 = var_a5 + 1;
        ((var_a5 * 4) + arg0)->unk40000 = (s32) var_a6->unk0;
        if (temp_a5 < temp_a7) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a5 = temp_a5 + 1;
            temp_a3 = var_a6->unk4;
            var_a6 += 8;
            ((temp_a5 * 4) + arg0)->unk40000 = temp_a3;
            if (var_a5 < temp_a7) {
                goto loop_2;
            }
        }
    }
    var_a6_2 = arg1;
    var_a5_2 = 0;
    if (temp_a7 > 0) {
loop_7:
        temp_a3_2 = *var_a6_2 & 0xFFFFFF;
        temp_at = 0xFFFFFF & ((var_a5_2 * 4) + arg0)->unk40000;
        var_a6_2 += 4;
        var_a5_2 += 1;
        if (temp_a3_2 != temp_at) {

        }
        if (var_a5_2 < temp_a7) {
            goto loop_7;
        }
    }
}

s64 MgrasDownloadGE11Ucode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg30, s64 arg32, s64 arg34, s64 arg36, s64 arg38, s64 arg40, s64 arg42, s64 arg44, s64 arg46, s64 arg48, s64 arg50, s64 arg52, s64 arg54) {
    s32 *var_s5;
    s32 temp_a4;
    s32 temp_lo;
    s32 temp_s8;
    s32 temp_v1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_s1;
    s32 var_s6;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_a2;
    s64 temp_v1_2;
    s64 var_a1;
    s64 var_s4;
    s64 var_v0;
    u8 *temp_v0;
    u8 *temp_v0_2;
    void *var_s4_2;

    temp_a2 = arg2;
    arg2 = arg1;
    arg22 = temp_a2;
    arg6 = arg3;
    arg4 = arg0;
    var_s1 = 0;
    arg24 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_v0 = kopt_find(saved_reg_gp->unk-7800 + 0x130);
    if ((temp_v0 != NULL) && (*temp_v0 != 0)) {
        var_v0 = 0;
    } else if (arg6 > 0) {
        temp_lo = arg22 / 12;
        arg32 = 0;
        arg34 = 0;
        arg16 = (arg24 == 0) ? 0x9B61 : 0x493;
        temp_a4 = arg4->unk50000;
        arg18 = (s64) temp_a4;
        arg0 = temp_a4 | 8;
        M2C_TRAP_IF(0xC == 0);
        temp_v1 = arg4->unk50114;
        arg20 = (s64) temp_v1;
        arg8 = temp_v1 | 0x40;
        arg10 = temp_lo | 0x80000000;
loop_15:
        if (arg34 != 0) {
            arg12 = arg4 + 0x5004C;
            var_s5 = arg4 + 0x50048;
            arg0 |= 0x30;
        } else {
            var_s5 = arg4 + 0x50040;
            arg12 = arg4 + 0x50044;
            arg0 = (arg0 & ~0x30) | 0x20;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg4->unk50000 = (s32) arg0;
        arg4->unk50000;
        arg4->unk50114 = (s32) arg8;
        us_delay(0x19);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *arg12 = 0x200000;
        var_s4 = arg2;
        if (arg4->unk70104 & 1) {
            do {

            } while (arg4->unk70104 & 1);
        }
        var_a2 = 0;
        if (temp_lo > 0) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *var_s5 = var_s4->unk0;
                var_a2 += 1;
                if (arg4->unk70104 & 1) {
                    do {

                    } while (arg4->unk70104 & 1);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *var_s5 = var_s4->unk4;
                if (arg4->unk70104 & 1) {
                    do {

                    } while (arg4->unk70104 & 1);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *var_s5 = var_s4->unk8;
                var_s4 += 0xC;
                if (arg4->unk70104 & 1) {
                    do {

                    } while (arg4->unk70104 & 1);
                }
            } while (var_a2 < temp_lo);
        }
        temp_v0_2 = kopt_find(saved_reg_gp->unk-7800 + 0x140);
        if ((temp_v0_2 != NULL) && (*temp_v0_2 != 0)) {
            var_v0_2 = 1;
        } else {
            var_v0_2 = 0;
        }
        if (var_v0_2 == 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *arg12 = 0x40038;
            var_s1 = 0;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = 0xD1;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            var_v0_3 = 0x200000;
            var_s6 = 0;
            var_a1 = 0;
            arg14 = arg4 + 0x60000;
            temp_s8 = (s32) (((u32) temp_lo >> 0x1F) + temp_lo) >> 1;
            arg30 = temp_s8 - 1;
loop_39:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *arg12 = var_v0_3;
            var_s4_2 = (var_a1 * 4) + arg2;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
                arg46 = (s64) var_v0_3;
                arg44 = var_a1;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg46 = (s64) var_v0_3;
            arg44 = var_a1;
            *arg12 = (s32) arg10;
            us_delay(0xC350);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg14->unk2408 = 0x62000000;
            us_delay(0xC350);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg14->unk2408 = 0x60000000;
            us_delay(0xC350);
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            us_delay(0x14);
            if (var_s6 == 1) {
                if (!(arg4->unk50008 & 0x40000)) {
                    do {

                    } while (!(arg4->unk50008 & 0x40000));
                }
                arg4->unk50230;
                arg4->unk5022C;
                if (!(arg4->unk50008 & 0x40000)) {
                    do {

                    } while (!(arg4->unk50008 & 0x40000));
                }
                arg4->unk50230;
                arg4->unk5022C;
            }
            var_v0_3 = arg46 + 1;
            var_a2_2 = 0;
            if (temp_s8 > 0) {
loop_50:
                if (!(arg4->unk50008 & 0x40000)) {
                    do {

                    } while (!(arg4->unk50008 & 0x40000));
                }
                arg4->unk50230;
                if (var_s4_2->unk0 != arg4->unk5022C) {
                    var_s1 += 1;
                }
                if (!(arg4->unk50008 & 0x40000)) {
                    do {

                    } while (!(arg4->unk50008 & 0x40000));
                }
                arg4->unk50230;
                if ((var_s4_2->unk8 & 0xFF) != (arg4->unk5022C & 0xFF)) {
                    var_s1 += 1;
                    if (var_s6 == 1) {
                        goto block_58;
                    }
                    goto block_48;
                }
                if (var_s6 != 1) {
                    goto block_48;
                }
block_58:
                if (arg30 == var_a2_2) {

                } else {
block_48:
                    if (0 == 0) {
                        if (!(arg4->unk50008 & 0x40000)) {
                            do {

                            } while (!(arg4->unk50008 & 0x40000));
                        }
                        arg4->unk50230;
                        if (var_s4_2->unk10 != arg4->unk5022C) {
                            var_s1 += 1;
                        }
                    }
                }
                var_a2_2 += 1;
                var_s4_2 += 0x18;
                if (var_a2_2 < temp_s8) {
                    goto loop_50;
                }
            }
            var_s6 += 1;
            var_a1 = arg44 + 3;
            if (var_s6 < 2) {
                goto loop_39;
            }
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *arg12 = 0x40038;
        if (arg4->unk70104 & 1) {
            do {

            } while (arg4->unk70104 & 1);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *var_s5 = 0xD0;
        if (arg4->unk70104 & 1) {
            do {

            } while (arg4->unk70104 & 1);
        }
        if (var_s1 != 0) {
            arg32 += 1;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *arg12 = 0x200000;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = arg2->unk0;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = arg2->unk4;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = arg2->unk8;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *arg12 = 0x40010;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = 0x100;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *arg12 = 0x40018;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = (s32) arg16;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *arg12 = 0x40000;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = 1;
            if (arg4->unk70104 & 1) {
                do {

                } while (arg4->unk70104 & 1);
            }
        }
        temp_v1_2 = arg34 + 1;
        arg34 = temp_v1_2;
        if ((temp_v1_2 < 2) && (arg34 < arg6)) {
            goto loop_15;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_v0 = arg32;
        arg4->unk50114 = (s32) arg20;
        arg4->unk50000 = (s32) arg18;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s64 mgras_baseindex(mgras_hw *arg0) {
    s64 var_a3;
    s64 var_v0;

    var_a3 = 0;
    var_v0 = -1;
loop_1:
    if (*((var_a3 * 0x30) + saved_reg_gp->unk-77F0) != arg0) {
        var_a3 += 1;
        if (var_a3 < 2) {
            goto loop_1;
        }
    } else {
        var_v0 = var_a3;
    }
    return var_v0;
}

void mgras_fp_probe(mgras_hw *arg0, s64 arg1, s64 arg6) {
    mgras_hw *temp_a0;
    void *temp_v0;
    void *temp_v0_2;

    temp_a0 = arg0;
    arg6 = arg1;
    arg0 = (mgras_hw *)0xDEADBEEF;
    if ((mgras_fpi2cProbe() != 0) && (mgras_fpi2cSetup(temp_a0) != 0)) {
        if (mgras_fpi2cPanelID(temp_a0, sp) != 0) {
            if (saved_reg_gp->unk-7800 == 0) {
                temp_v0 = find_inventory(0, 0x11, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
                if (temp_v0 != NULL) {
                    replace_in_inventory(temp_v0, 0x11, 1, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), M2C_ERROR(/* Unable to find stack arg 0x14 in block */));
                } else {
                    add_to_inventory(0x11, 1, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
                }
            }
            if (arg0 != (mgras_hw *)3) {
                if (arg0 != (mgras_hw *)4) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg6->unk49 = 0;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg6->unk49 = 0x83;
                }
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg6->unk49 = 0x82;
            }
        } else {
            mgras_fpi2cPanelOff(temp_a0);
            temp_v0_2 = find_inventory(0, 0x11, 1, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
            if (temp_v0_2 != NULL) {
                replace_in_inventory(temp_v0_2, 0x11, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), M2C_ERROR(/* Unable to find stack arg 0x14 in block */));
            } else {
                add_to_inventory(0x11, 0, 0, 0, M2C_ERROR(/* Unable to find stack arg 0x10 in block */));
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg6->unk49 = 0xFF;
        }
    }
}

s32 mgras_fp_reinit(void *arg0, s64 arg4) {
    s32 var_v0;
    s64 temp_a1;

    temp_a1 = arg0->unkC8;
    var_v0 = -1;
    if (temp_a1->unk49 != 0) {
        mgras_fp_probe((mgras_hw *) arg0->unkD0, (s8 *) temp_a1);
        var_v0 = -1;
        if (arg0->unkC8->unk49 != 0) {
            if (mgras_fpi2cPanelID((mgras_hw *) arg0->unkD0, sp) != 0) {
                if (arg0 != (void *)3) {
                    if (arg0 != (void *)4) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg0->unk744 = 0;
                        var_v0 = 0;
                        arg0->unkC8->unk49 = 0U;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg0->unkC8->unk49 = 0x83U;
                        goto block_10;
                    }
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg0->unkC8->unk49 = 0x82U;
block_10:
                    mgras_fpi2cPanelOn((mgras_hw *) arg0->unkD0);
                    var_v0 = 0;
                }
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg0->unkC8->unk49 = 0xFFU;
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

void MgrasBlankScreen(mgras_hw *base, s32 blank) {
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;

    temp_a1 = ((mgras_baseindex() * 0x30) + saved_reg_gp->unk-77F0)->unk8;
    if ((u32) (base->gio_status & 0x1F) >= 4U) {
        do {

        } while ((u32) (base->gio_status & 0x1F) >= 4U);
    }
    if (blank != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        base->unk61811 = 4;
        base->dac.pad3[7] = 0;
        base->cmapall.cmd = 1;
        if (temp_a1 != 0) {
            temp_a0 = temp_a1->unkC8;
            if (temp_a0 != 0) {
                temp_a1_2 = temp_a0->unk49;
                if ((temp_a1_2 != 0) && (temp_a1_2 != 0xFF)) {
                    mgras_fpi2cPanelOff(base, temp_a1_2, 1, 4);
                }
            }
        }
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        base->unk61811 = 4;
        base->dac.pad3[7] = 0xFF;
        base->cmapall.cmd = 3;
        if (temp_a1 != 0) {
            temp_a0_2 = temp_a1->unkC8;
            if (temp_a0_2 != 0) {
                temp_a1_3 = temp_a0_2->unk49;
                if ((temp_a1_3 != 0) && (temp_a1_3 != 0xFF)) {
                    mgras_fpi2cPanelOn(base, temp_a1_3, 1, 4);
                }
            }
        }
    }
}
/* Warning: struct mgras_rnode_s is not defined (only forward-declared) */
