? MgrasInstallTxTbl_Kern(s64, ?, s64, u32);         /* extern */
s32 RRM_CheckValidFault();                          /* extern */
u64 kern_malloc(s32, u64, u64);                     /* extern */
s64 kmem_alloc(s64, ?, u64);                        /* extern */
? kmem_free(s64, s64, u64, s64);                    /* extern */
s64 kvpalloc(s32, ?, ?, s64);                       /* extern */
? kvpfree(s64, s32, s64, u64);                      /* extern */
s32 kvtophyspnum(s64);                              /* extern */
? mutex_destroy(s64);                               /* extern */

s32 WAIT_FOR_RE_SYNC(void *arg0) {
    s32 var_s5;
    s32 var_v0;

    var_s5 = 0x1E8480;
    if (!(arg0->unk70000 & 1)) {
loop_2:
        var_s5 -= 1;
        if (var_s5 != 0) {
            us_delay(1);
            if (arg0->unk70000 & 1) {
                goto block_4;
            }
            goto loop_2;
        }
        goto block_7;
    }
block_4:
    if (var_s5 != 0) {
        var_v0 = 0;
    } else {
block_7:
        cmn_err(4, saved_reg_gp->unk-7800 + 0x10);
        var_v0 = 1;
    }
    return var_v0;
}

s32 WAIT_FOR_READDMA(void *arg0) {
    s32 var_s5;
    s32 var_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk70080 = 0xE0100;
    var_s5 = 0x2DC6C0;
    if (arg0->unk70104 & 0x1EFF) {
loop_2:
        var_s5 -= 1;
        if (var_s5 != 0) {
            us_delay(1);
            if (!(arg0->unk70104 & 0x1EFF)) {
                goto block_4;
            }
            goto loop_2;
        }
        goto block_7;
    }
block_4:
    if (var_s5 != 0) {
        var_v0 = 0;
    } else {
block_7:
        cmn_err(4, saved_reg_gp->unk-7800 + 0x28);
        var_v0 = 1;
    }
    return var_v0;
}

void flushRegs(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_at;
    s64 var_a6;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    M2C_ERROR(/* Read from unset register $a4 */)->unk70080 = 0xC0004;
    var_a6 = 0;
    M2C_ERROR(/* Read from unset register $a4 */)->unk70080 = 0xE00;
    M2C_ERROR(/* Read from unset register $a4 */)->unk70080 = (s32) (arg0 | 8);
    M2C_ERROR(/* Read from unset register $a4 */)->unk70080 = arg3;
    M2C_ERROR(/* Read from unset register $a4 */)->unk70080 = arg2;
    M2C_ERROR(/* Read from unset register $a4 */)->unk70080 = (s32) (((arg2 * 4) & 0xFFFFF) | 0x80000000);
    if (arg2 > 0) {
        do {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_at = var_a6 * 4;
            var_a6 += 1;
            M2C_ERROR(/* Read from unset register $a4 */)->unk70080 = (s32) *(temp_at + arg1);
        } while (var_a6 < arg2);
    }
}

void __glMgrasSet(u64 arg0, s32 arg1, mgras_data_t *arg2, s32 arg3) {
    s32 temp_a7;
    s64 temp_a0;
    s64 temp_v0;
    u64 temp_a6;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0 = M2C_ERROR(/* Read from unset register $a4 */)->unk8E0 + 1;
    M2C_ERROR(/* Read from unset register $a4 */)->unk8E0 = (s32) temp_a0;
    ((temp_a0 * 4) + M2C_ERROR(/* Read from unset register $a4 */))->unk7DC = arg1;
    temp_v0 = M2C_ERROR(/* Read from unset register $a4 */)->unk8E0 + 1;
    M2C_ERROR(/* Read from unset register $a4 */)->unk8E0 = (s32) temp_v0;
    ((temp_v0 * 4) + M2C_ERROR(/* Read from unset register $a4 */))->unk7DC = arg2;
    temp_a6 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_a7 = M2C_ERROR(/* Read from unset register $a4 */)->unk8E0;
    if ((arg3 != 0) || (arg0 = temp_a6, ((temp_a7 < 0x400) == 0))) {
        arg0 = temp_a6;
        flushRegs(0x7F00, temp_a6 + 0x7E0, temp_a7, temp_a7 >> 1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk8E0 = 0;
    }
}

void __glMgrSaveRSS(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk70080 = 0xD214;
    arg0->unk70080 = arg1;
    arg0->unk70080 = arg2;
    arg0->unk70080 = arg3;
    arg0->unk70080 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    arg0->unk70080 = (s32) M2C_ERROR(/* Read from unset register $a5 */);
}

s32 __glMgrWaitForDMAWrite(mgras_data_t *arg0) {
    s32 var_s7;
    s32 var_v0;
    s64 temp_s1;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1 = arg0->unkD0;
    var_s7 = 0x1E8480;
    temp_s1->unk70084 = 0xE0400;
loop_1:
    if (temp_s1->unk70008 & 0x10000) {
        var_v0 = 0;
    } else {
        us_delay(1);
        var_s7 -= 1;
        if (var_s7 == 0) {
            cmn_err(4, saved_reg_gp->unk-7800 + 0x40);
            var_v0 = 1;
        } else {
            goto loop_1;
        }
    }
    return var_v0;
}

void __glMgr_WriteDMAHQSetup(mgras_data_t *arg0, s64 arg1, u64 arg2, u64 arg3) {
    s64 temp_t0;
    u64 temp_lo;
    u64 var_a2;
    u64 var_a3;

    var_a2 = arg2;
    var_a3 = arg3;
    temp_t0 = arg0->unkD0;
    if (!(var_a2 & 7) && (var_a2 == var_a3)) {
        temp_lo = var_a2 * M2C_ERROR(/* Read from unset register $a4 */);
        if (temp_lo <= 0xFFFFFU) {
            var_a2 = temp_lo;
        } else if (!(M2C_ERROR(/* Read from unset register $a4 */) & 1) && (var_a2 <= 0x7FFFFU)) {
loop_8:
            var_a2 *= 2;
            if (!(((u32) M2C_ERROR(/* Read from unset register $a4 */) >> 1) & 1)) {
                if (var_a2 <= 0x7FFFFU) {
                    goto loop_8;
                }
            }
        }
        var_a3 = var_a2;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_t0->unk70080 = (s64) (((u64) (((M2C_ERROR(/* Read from unset register $a6 */) << 0x10) | 0x80000000) << 0x20) >> 0x20) | saved_reg_gp->unk-7800);
    temp_t0->unk70080 = (s64) (((u64) (var_a3 << 0x20) >> 0x20) | saved_reg_gp->unk-77F8);
    temp_t0->unk70080 = (s64) saved_reg_gp->unk-77F0;
    temp_t0->unk70080 = (s64) (((u64) (arg1 << 0x20) >> 0x20) | saved_reg_gp->unk-77E8);
    temp_t0->unk70080 = (s64) (((u64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x20) >> 0x20) | saved_reg_gp->unk-77E0);
    temp_t0->unk70080 = (s64) (((u64) (var_a2 << 0x20) >> 0x20) | saved_reg_gp->unk-77D8);
    temp_t0->unk70080 = (s64) (((u64) (((M2C_ERROR(/* Read from unset register $a5 */) * 2) | 0xA1) << 0x20) >> 0x20) | saved_reg_gp->unk-77D0);
}

void __glMgr_WriteDMAGESetup(void *arg0, u32 arg1, s32 arg2) {
    s32 temp_lo;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_lo = (arg1 >> 2) * arg2;
    arg0->unk70080 = 0xD80CU;
    arg0->unk70080 = (u32) ((u32) (temp_lo & 0x07FC0000) >> 0x12);
    arg0->unk70080 = (u32) ((u32) (temp_lo & 0x3FE00) >> 9);
    arg0->unk70080 = (u32) (temp_lo & 0x1FF);
}

s32 __glMgr_ReadDMAHQSetup(u64 arg0, s64 arg1, u64 arg2, u64 arg3, u64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, u64 arg16, s64 arg18, s64 arg20, s32 arg41, s32 arg43, s32 arg45) {
    s32 var_v0;
    u64 temp_a0;
    u64 temp_v0;
    u64 var_a2;
    u64 var_t2;
    u64 var_t3;

    temp_a0 = arg0;
    var_a2 = arg2;
    temp_v0 = var_a2;
    var_t2 = var_a2;
    var_t3 = M2C_ERROR(/* Read from unset register $a5 */);
    arg16 = arg3;
    if (!(var_a2 & 7)) {
        arg16 = arg3;
        if (temp_v0 == arg3) {
            var_a2 = temp_v0 * M2C_ERROR(/* Read from unset register $a5 */);
            if (var_a2 <= 0xFFFFFU) {
                var_t2 = var_a2;
                var_t3 = 1;
            } else if (!(var_t3 & 1)) {
                var_a2 = 0x7FFFF;
                if (var_t2 <= 0x7FFFFU) {
loop_11:
                    var_t3 = (u64) (var_t3 >> 1);
                    var_t2 *= 2;
                    if (!(var_t3 & 1)) {
                        if (var_t2 <= 0x7FFFFU) {
                            goto loop_11;
                        }
                    }
                }
            }
            arg0 = temp_v0;
            arg2 = var_t2;
            arg4 = var_t3;
            arg6 = M2C_ERROR(/* Read from unset register $a5 */);
            arg8 = M2C_ERROR(/* Read from unset register $a7 */);
            arg10 = M2C_ERROR(/* Read from unset register $a4 */);
            arg12 = arg1;
            arg14 = M2C_ERROR(/* Read from unset register $a6 */);
            arg16 = var_t2;
        }
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg2 = var_t2;
    arg4 = var_t3;
    arg6 = M2C_ERROR(/* Read from unset register $a5 */);
    arg8 = M2C_ERROR(/* Read from unset register $a7 */);
    arg10 = M2C_ERROR(/* Read from unset register $a4 */);
    arg12 = arg1;
    arg14 = M2C_ERROR(/* Read from unset register $a6 */);
    arg0 = temp_v0;
    arg18 = temp_a0 + 0x70000;
    temp_a0->unk70080 = 0xF200;
    if (WAIT_FOR_RE_SYNC((void *) var_a2) != 0) {
        var_v0 = 1;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg18->unk80 = 0xC0004;
        arg18->unk80 = arg41;
        arg18->unk80 = (s64) (((u64) (((arg45 << 0x10) | 0x80000000) << 0x20) >> 0x20) | saved_reg_gp->unk-7800);
        arg18->unk80 = (s64) (((u64) (arg16 << 0x20) >> 0x20) | saved_reg_gp->unk-77F8);
        arg18->unk80 = (s64) saved_reg_gp->unk-77F0;
        arg18->unk80 = (s64) (((u64) (arg12 << 0x20) >> 0x20) | saved_reg_gp->unk-77E8);
        arg18->unk80 = (s64) (((u64) (arg4 << 0x20) >> 0x20) | saved_reg_gp->unk-77E0);
        arg18->unk80 = (s64) (((u64) (arg2 << 0x20) >> 0x20) | saved_reg_gp->unk-77D8);
        arg18->unk80 = (s64) (((u64) (((arg43 * 2) | 0xB9) << 0x20) >> 0x20) | saved_reg_gp->unk-77D0);
        arg18->unk80 = (s64) (((u64) (arg0 << 0x20) >> 0x20) | saved_reg_gp->unk-77C8);
        arg18->unk80 = (s64) (((u64) (((arg10 & 0xFFFF) | (arg6 << 0x10)) << 0x20) >> 0x20) | saved_reg_gp->unk-77C0);
        arg18->unk80 = (s64) (((u64) (arg14 << 0x20) >> 0x20) | saved_reg_gp->unk-77B8);
        arg18->unk80 = (s64) saved_reg_gp->unk-77B0;
        var_v0 = 0;
        arg18->unk80 = (s64) (((u64) (arg8 << 0x20) >> 0x20) | saved_reg_gp->unk-77A8);
    }
    return var_v0;
}

s32 MgrasUserSaveTexData(void *arg0, void *arg1) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_v0;
    u64 temp_s4;
    u64 var_v0_2;
    void *temp_s0;

    temp_s0 = arg1;
    temp_s4 = arg0->unk20->unkD0;
    if (RRM_CheckValidFault() >= 0) {
loop_2:
        M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
        if (M2C_ERROR(/* unknown instruction: sc $a3, ($v1) */) == 0) {
            goto loop_2;
        }
        var_v0_2 = 0;
        if (temp_s0->unk0 != 0) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s4->unk70080 = (s32) ((var_v0_2 * 4) + temp_s0)->unk4;
                var_v0_2 += 1;
            } while (var_v0_2 < (u32) temp_s0->unk0);
        }
        temp_a3 = temp_s0->unk34;
        temp_a2 = temp_s0->unk30;
        temp_a1 = temp_s0->unk2C;
        arg1 = temp_s0->unk48;
        arg5 = 0;
        arg3 = temp_s0->unk4C;
        if (__glMgr_ReadDMAHQSetup(temp_s4, (s64) temp_a1, (u64) temp_a2, (u64) temp_a3) != 0) {
loop_10:
            M2C_ERROR(/* unknown instruction: ll $s1, ($at) */);
            if (M2C_ERROR(/* unknown instruction: sc $v1, ($at) */) == 0) {
                goto loop_10;
            }
            var_v0 = -1;
        } else {
loop_16:
            M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
            if (M2C_ERROR(/* unknown instruction: sc $a3, ($v1) */) == 0) {
                goto loop_16;
            }
            var_v0 = 0;
        }
    } else {
        var_v0 = -1;
    }
    return var_v0;
}

s64 *mgrasReadDMAPageSetup(mgras_data_t *arg0, u64 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8, u64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, u64 arg22, u64 arg24, u64 arg26, s64 arg28, s64 arg30, u64 arg32, u64 arg34, s64 arg36, s64 arg38, s64 arg40) {
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_at;
    s32 temp_v0_5;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a0_6;
    s64 temp_a0_7;
    s64 temp_a0_8;
    s64 temp_a2;
    s64 temp_a6;
    s64 temp_a6_2;
    s64 temp_a7_2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 var_a7;
    s64 var_s1;
    u32 temp_a3_2;
    u32 temp_lo_2;
    u32 var_s2;
    u64 temp_a7;
    u64 temp_lo;
    u64 temp_v0_6;
    u64 temp_v0_7;
    u64 var_a2;
    u64 var_a2_2;
    u64 var_s1_2;
    u64 var_s2_2;
    u64 var_v0;
    void *temp_a4;

    var_a7 = arg0->unk6D0;
    var_a2 = var_a7->unk10;
    arg32 = arg1;
    arg30 = arg0->unkD0;
    if (var_a2 != 0) {
        goto block_1;
    }
    temp_a0 = arg0->unkC8;
    arg8 = temp_a0;
    temp_a0_2 = temp_a0->unk2D << 0xC;
    arg12 = temp_a0_2;
    temp_a0_3 = temp_a0_2 << 8;
    arg20 = temp_a0_3;
    arg24 = 0x100U;
    temp_v0 = kvpalloc(((u64) (((u64) (temp_a0_3 << 0x20) >> 0x20) + 0x3FFF) >> 0xE) << 0, 0x80010, 0);
    if (temp_v0 != 0) {
        arg4 = temp_v0;
        goto block_5;
    }
    cmn_err(4, saved_reg_gp->unk-7800 + 0x88, arg20);
    temp_a0_4 = arg12 << 6;
    arg16 = temp_a0_4;
    arg24 = 0x40U;
    temp_v0_2 = kvpalloc(((u64) (((u64) (temp_a0_4 << 0x20) >> 0x20) + 0x3FFF) >> 0xE) << 0, 0x80010, 0);
    arg4 = temp_v0_2;
    if ((temp_v0_2 == 0) && (cmn_err(4, saved_reg_gp->unk-7800 + 0xD8, arg16), temp_a0_5 = arg12 * arg32 * 2, arg2 = temp_a0_5, arg24 = arg32 * 2, temp_v0_3 = kvpalloc(((u64) (((u64) (temp_a0_5 << 0x20) >> 0x20) + 0x3FFF) >> 0xE) << 0, 0x80010, 0, arg12), arg4 = temp_v0_3, (temp_v0_3 == 0))) {
        cmn_err(4, saved_reg_gp->unk-7800 + 0x118, arg2);
        var_v0 = 0;
    } else {
block_5:
        temp_lo = arg8->unk2D * arg24;
        temp_a0_6 = arg0->unk6D0->unk8 + temp_lo;
        arg14 = temp_a0_6;
        arg22 = temp_lo;
        temp_a0_7 = ((u64) (temp_a0_6 << 0x20) >> 0x20) * 4;
        arg18 = temp_a0_7;
        temp_v0_4 = kmem_alloc(temp_a0_7, 0x8100, arg24);
        arg6 = temp_v0_4;
        if (temp_v0_4 != 0) {
            var_a2_2 = 0;
            if (arg0->unk6D0->unk8 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a3 = var_a2_2 * 4;
                    *(temp_v0_4 + temp_a3) = *(*(s64 *) arg0->unk6D0 + temp_a3);
                    var_a2_2 += 1;
                } while (var_a2_2 < (u32) arg0->unk6D0->unk8);
            }
            var_s1 = arg4;
            temp_a3_2 = arg22 >> 2;
            arg28 = (var_a2_2 * 4) + temp_v0_4;
            var_s2 = 0;
            arg26 = (u64) temp_a3_2;
            if (temp_a3_2 != 0) {
                do {
                    temp_v0_5 = kvtophyspnum(var_s1);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_s2 += 1;
                    temp_v1 = arg28 + 0x10;
                    arg28 = temp_v1;
                    temp_at = temp_v0_5 * 4;
                    temp_v1->unk-10 = temp_at;
                    temp_v1->unk-C = (s32) (temp_at + 1);
                    var_s1 += 0x4000;
                    temp_v1->unk-8 = (s32) (temp_at + 2);
                    temp_v1->unk-4 = (s32) (temp_at + 3);
                } while (var_s2 < arg26);
            }
            temp_lo_2 = arg24 / arg32;
            M2C_TRAP_IF(arg32 == 0);
            arg34 = (u64) temp_lo_2;
            temp_v0_6 = kern_malloc(((u64) ((s64) temp_lo_2 << 0x20) >> 0x20) * 0x10, arg32, arg24);
            if (temp_v0_6 != 0) {
                var_s2_2 = 0;
                var_s1_2 = (u64) ((arg0->unk6D0->unk8 << 0xC) << 0x20) >> 0x20;
                if (arg34 != 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a4 = (var_s2_2 * 0x10) + temp_v0_6;
                        temp_v1_2 = temp_a4 + 0x10;
                        var_s2_2 += 1;
                        temp_a6 = (s64) var_s1_2 >> 0x3F;
                        temp_a7 = ((s32) var_s1_2 >= 0) ? var_s1_2 : (var_s1_2 + 0x3FFFFF);
                        temp_a3_3 = (var_s1_2 ^ temp_a6) - temp_a6;
                        temp_a6_2 = (s64) var_s1_2 >> 0x3F;
                        temp_a4->unk0 = temp_v1_2;
                        var_s1_2 += (u64) ((arg12 * arg32) << 0x20) >> 0x20;
                        temp_a4->unkC = (s32) ((s64) temp_a7 >> 0x16);
                        temp_a4->unk8 = (s32) (((temp_a3_3 & 0x3FFFFF) ^ temp_a6_2) - temp_a6_2);
                    } while (var_s2_2 < arg34);
                    arg10 = temp_v0_6;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                ((var_s2_2 * 0x10) + temp_v0_6)->unk-10 = 0;
                arg10 = temp_v0_6;
                arg0->unk6D0->unk10 = temp_v0_6;
                temp_v0_7 = kern_malloc(0x20);
                if (temp_v0_7 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0_7->unk8 = arg10;
                    temp_v0_7->unk18 = (s32) arg24;
                    temp_v0_7->unk10 = arg4;
                    temp_v0_7->unk0 = (u64) arg0->unk6D0->unk18;
                    arg0->unk6D0->unk18 = temp_v0_7;
                    temp_a7_2 = arg0->unk6D0;
                    temp_a0_8 = temp_a7_2->unk0;
                    if (temp_a0_8 != 0) {
                        kmem_free(temp_a0_8, (s64) temp_a7_2->unk8 * 4, arg10, arg4);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    *(s64 *) arg0->unk6D0 = arg6;
                    arg0->unk6D0->unk8 = (u32) arg14;
                    temp_a2 = arg0->unk6D0;
                    MgrasInstallTxTbl_Kern(arg30, 2, temp_a2->unk0, temp_a2->unk8);
                    var_a7 = arg0->unk6D0;
                    var_a2 = var_a7->unk10;
block_1:
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a7->unk10 = (s64) *var_a2;
                    *var_a2 = 0;
                    var_v0 = var_a2;
                } else {
                    kern_free((void *) arg10);
                    kmem_free(arg6, arg18);
                    kvpfree(arg4, ((u64) (((u64) ((arg12 * arg24) << 0x20) >> 0x20) + 0x3FFF) >> 0xE) << 0, arg12, arg24);
                    cmn_err(4, saved_reg_gp->unk-7800 + 0x1E0);
                    var_v0 = 0;
                }
            } else {
                kmem_free(arg6, arg18, arg34);
                kvpfree(arg4, ((u64) (((u64) ((arg12 * arg24) << 0x20) >> 0x20) + 0x3FFF) >> 0xE) << 0, arg12, arg24);
                cmn_err(4, saved_reg_gp->unk-7800 + 0x1B0);
                var_v0 = 0;
            }
        } else {
            kvpfree(arg4, ((u64) (((u64) ((arg12 * arg24) << 0x20) >> 0x20) + 0x3FFF) >> 0xE) << 0, arg12, arg24);
            cmn_err(4, saved_reg_gp->unk-7800 + 0x180);
            var_v0 = 0;
        }
    }
    return (s64 *) var_v0;
}

s32 MgrasRestoreTexData(mgras_data_t *bdata, struct mgras_rnode_s *restorernp, u16 startpage, s64 arg16, s64 arg18, s64 arg20, s64 arg22) {
    mgras_data_t *temp_a0;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_s7_2;
    s32 var_v0;
    s64 temp_s2;
    s64 temp_s8;
    s64 temp_t9;
    u32 temp_a2;
    u64 temp_s0;

    temp_a0 = bdata;
    temp_s2 = restorernp->unk8;
    bdata = NULL;
    bdata = (mgras_data_t *) (((s32) bdata & ~6) | ((temp_s2->unk23 & 3) * 2));
    bdata = (mgras_data_t *) (((s32) bdata & ~0x18) | ((temp_s2->unk27 & 3) * 8));
    bdata = (mgras_data_t *) (((s32) bdata & ~0x60) | (((temp_s2->unk24 + 1) & 3) << 5));
    bdata = (mgras_data_t *) ((s32) bdata | 0x4000);
    temp_s0 = temp_a0->unkD0;
    bdata = (mgras_data_t *) (((s32) bdata & ~0x100) | ((temp_s2->unk26 & 1) << 8));
    __glMgrasSet(temp_s0, 0x1A1, bdata, 0);
    __glMgrasSet(temp_s0, 0x1A0, (mgras_data_t *) (((u64) ((s64) temp_s2->unk25 << 0x20) >> 0x20) << 0), 0);
    __glMgrasSet(temp_s0, 0x18B, (mgras_data_t *) ((temp_s2->unk25 == 0) << 0), 0);
    __glMgrasSet(temp_s0, 0x180, (mgras_data_t *) ((temp_s2->unk26 * 0x10) | ((temp_s2->unk24 + 1) * 4) | 0x11800), 0);
    __glMgrasSet(temp_s0, 0x111, (mgras_data_t *) ((temp_s2->unk23 * 8) | (temp_a0->unk6D0->unkC << 5)), 0);
    temp_s8 = startpage & 0xFF;
    __glMgrasSet(temp_s0, 0x1A3, NULL, 0);
    __glMgrasSet(temp_s0, 0x1A4, (mgras_data_t *) temp_s8, 0);
    __glMgrasSet(temp_s0, 0x1A2, (mgras_data_t *)0xD60, 1);
    __glMgrSaveRSS((void *) temp_s0, -1, 0x01400000, 0);
    temp_s3 = temp_s2->unkC;
    temp_s4 = temp_s3 << 0;
    __glMgrasSet(temp_s0, 0x1A9, (mgras_data_t *)0x40, 0);
    __glMgrasSet(temp_s0, 0x1AA, (mgras_data_t *) temp_s4, 0);
    __glMgrasSet(temp_s0, 0x1AB, NULL, 0);
    __glMgrasSet(temp_s0, 0x1AC, NULL, 1);
    startpage = 0;
    startpage = (s32) startpage | 0x400000;
    startpage = ((s32) startpage & ~0xF0) | ((*(((s64) temp_s2->unk23 * 4) + saved_reg_gp->unk-7800) & 0xF) * 0x10);
    temp_s7 = (((s64) temp_s3 << 0x10) | 0x40) << 0;
    startpage = (temp_s2->unk24 & 0xF) | ((s32) startpage & ~0xF);
    __glMgrasSet(temp_s0, 0x159, (mgras_data_t *) startpage, 1);
    __glMgrasSet(temp_s0, 0x153, (mgras_data_t *) temp_s7, 1);
    __glMgrasSet(temp_s0, 0x158, (mgras_data_t *) temp_s7, 1);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_t9 = ((((u64) (temp_s8 << 0x20) >> 0x20) * 8) + restorernp)->unk10;
    temp_s7_2 = temp_t9->unk8;
    temp_s0->unk70080 = 0xE300;
    arg16 = (s64) temp_t9->unkC;
    __glMgr_WriteDMAGESetup((void *) temp_s0, temp_s2->unk8, temp_s4);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s0->unk7000C = 0x10000;
    temp_a2 = temp_s2->unk8;
    __glMgr_WriteDMAHQSetup(temp_a0, (s64) temp_s7_2, (u64) temp_a2, (u64) temp_a2);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s0->unk70084 = 0xE0400;
    if (__glMgrWaitForDMAWrite(temp_a0) != 0) {
        var_v0 = -1;
    } else {
        __glMgrasSet(temp_s0, 0x156, (mgras_data_t *)-1, 1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk70080 = 0xD300;
        var_v0 = 0;
    }
    return var_v0;
}

void MgrasWaitForRSSIdle(void *arg0, s64 arg4) {
    s32 var_s5;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_s5 = 0x2DC6C0;
    if (arg0->unk70000 & 2) {
        goto block_1;
    }
loop_4:
    us_delay(1);
    var_s5 -= 1;
    if (var_s5 != 0) {
        if (arg0->unk70000 & 2) {
            var_ra = arg4;
block_1:
            arg4 = var_ra;
            if (var_s5 == 0) {
                goto block_7;
            }
        } else {
            goto loop_4;
        }
    } else {
block_7:
        cmn_err(4, saved_reg_gp->unk-7800 + 0x208);
    }
}

s32 __Mgr_ReturnMode(s32 arg0, s32 arg1, s32 arg2, void *arg3) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg3->unk7000C = 0x20000;
    arg3->unk70080 = 0xA20C;
    arg3->unk70080 = arg0;
    arg3->unk70080 = arg1;
    arg3->unk70080 = arg2;
    do {
        us_delay(1);
    } while (!(arg3->unk70008 & 0x20000));
    return arg3->unk70014;
}

void MgrasFinish(void *arg0) {
    __Mgr_ReturnMode(0x1FA, 1, 1, arg0);
    MgrasWaitForRSSIdle(arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x38, 0x3c, 0x58, 0x5c], gap at: 0x48. */
s32 MgrasSaveTexData(mgras_data_t *bdata, struct mgras_rnode_s *savernp, u16 startpage, s32 arg8, s64 arg24, s64 arg26, s64 arg28) {
    s32 temp_a2;
    s32 var_v0;
    s64 *temp_v0_2;
    s64 temp_a4_2;
    s64 temp_s2;
    s64 temp_v0;
    u64 temp_s0;
    void *temp_a4;

    temp_v0 = startpage & 0xFF;
    unksp48 = (s64) savernp;
    temp_s0 = bdata->unkD0;
    temp_a4 = (((u64) (temp_v0 << 0x20) >> 0x20) * 8) + savernp;
    unksp50 = (s64) temp_a4;
    temp_a4_2 = temp_a4->unk10;
    temp_s2 = savernp->unk8;
    if (temp_a4_2 != 0) {
        unksp30 = temp_v0;
        arg26 = (s64) temp_a4_2->unkC;
        arg24 = (s64) temp_a4_2->unk8;
        goto block_2;
    }
    unksp30 = temp_v0;
    temp_v0_2 = mgrasReadDMAPageSetup(bdata, 1U);
    if (temp_v0_2 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        unksp50->unk10 = (s64) temp_v0_2;
        arg24 = (s64) temp_v0_2->unk8;
        arg26 = (s64) temp_v0_2->unkC;
        *unksp48 = (u16) (*unksp48 + 1);
block_2:
        __glMgrasSet(temp_s0, 0x181, (mgras_data_t *)0xD6D6, 0);
        __glMgrasSet(temp_s0, 0x183, NULL, 0);
        __glMgrasSet(temp_s0, 0x18C, (mgras_data_t *)0x80000, 0);
        __glMgrasSet(temp_s0, 0x1A1, (mgras_data_t *) (temp_s2->unk26 << 8), 0);
        __glMgrasSet(temp_s0, 0x111, (mgras_data_t *) ((temp_s2->unk23 * 8) | (bdata->unk6D0->unkC << 5)), 0);
        __glMgrasSet(temp_s0, 0x180, (mgras_data_t *) ((temp_s2->unk26 * 0x10) | ((temp_s2->unk24 + 1) * 4) | 0x11800), 0);
        __glMgrasSet(temp_s0, 0x190, NULL, 0);
        __glMgrasSet(temp_s0, 0x191, (mgras_data_t *) unksp30, 1);
        __glMgrSaveRSS((void *) temp_s0, -1, 0x01001000, 0x1FC0FF);
        MgrasWaitForRSSIdle((void *) temp_s0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg8 = 0;
        arg8 |= 0x400000;
        arg8 = (arg8 & ~0xF0) | ((*(((s64) temp_s2->unk23 * 4) + saved_reg_gp->unk-7800) & 0xF) * 0x10);
        arg8 = (temp_s2->unk24 & 0xF) | (arg8 & ~0xF);
        temp_s0->unk70080 = 0xE50C;
        temp_s0->unk70080 = (s32) temp_s2->unkC;
        unksp40 = temp_s0 + 0x70000;
        temp_s0->unk70080 = arg8;
        temp_s0->unk70080 = 0x400D;
        temp_a2 = temp_s2->unk8;
        arg5 = (s32) arg26;
        arg3 = 2;
        savernp = (struct mgras_rnode_s *)0x200;
        if (__glMgr_ReadDMAHQSetup(temp_s0, arg24, (u64) temp_a2, (u64) temp_a2) != 0) {
            var_v0 = -1;
        } else if (WAIT_FOR_READDMA((void *) temp_s0) != 0) {
            var_v0 = -1;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            unksp40->unk80 = (s64) saved_reg_gp->unk-77A0;
            unksp40->unk80 = 0xC0004;
            unksp40->unk80 = 0xE00;
            unksp40->unk80 = 0xDA00;
            var_v0 = 0;
            unksp40->unk80 = 0xD300;
        }
    } else {
        var_v0 = -2;
    }
    return var_v0;
}

void MgrasCleanTexBdata(mgras_data_t *arg0) {
    s32 temp_a2;
    s32 temp_s2;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_s8;
    s64 var_a3;
    s64 var_s0;

    var_a3 = arg0->unk6D0;
    temp_s8 = arg0->unkC8;
    var_s0 = var_a3->unk18;
    temp_s2 = temp_s8->unk2D << 0xC;
    if (var_s0 != 0) {
loop_5:
        temp_a0 = var_s0->unk10;
        if (temp_a0 != 0) {
            temp_a2 = var_s0->unk18;
            kvpfree(temp_a0, ((u64) (((u64) ((temp_a2 * temp_s2) << 0x20) >> 0x20) + 0x3FFF) >> 0xE) << 0, (s64) temp_a2);
        }
        temp_a0_2 = var_s0->unk8;
        if (temp_a0_2 != 0) {
            kern_free((void *) temp_a0_2);
        }
        temp_a0_3 = var_s0;
        var_s0 = var_s0->unk0;
        kern_free((void *) temp_a0_3);
        if (var_s0 != 0) {
            goto loop_5;
        }
        var_a3 = arg0->unk6D0;
    }
    bzero((void *) var_a3, 0xD28U);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk6D0->unkC = (s32) ((temp_s8->unk2D != 4) ? 0 : 2);
    bzero(arg0->unk6D0 + 0x20, 0x100U);
    bzero(arg0->unk6D0 + 0x120, 0x800U);
    bzero(arg0->unk6D0 + 0x924, 0x400U);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk6D0->unkD24 = 0;
}

void MgrasInitGblTexMgr(mgras_data_t *bdata) {
    u64 temp_v0;

    unksp8 = (s64) (bdata + 0x6C0);
    if (bdata->unk6D0 == 0) {
        temp_v0 = kern_malloc(0xD28);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        bdata->unk6D0 = temp_v0;
        bzero((void *) temp_v0, 0xD28U);
    } else {
        mutex_destroy(unksp8);
    }
    init_mutex((void *) unksp8);
    MgrasCleanTexBdata(bdata);
}
/* Warning: struct mgras_rnode_s is not defined (only forward-declared) */
