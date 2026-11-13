s32 RRM_CheckValidFault(s64);                       /* extern */
s32 copyin(s64, s64, s32, s64);                     /* extern */
s32 copyin_xlate(s64, s64, u64, s64);               /* extern */
? curproc_abi(s64, s64, s64, s64);                  /* extern */
? curproc_vtopv(s32 *, ?);                          /* extern */
? dki_dcache_wb(u64, s32, u32, u64);                /* extern */
? dki_dcache_wbinval(s64, u32);                     /* extern */
s64 kern_malloc(u64, u64, u64, s64);                /* extern */
s64 kmem_alloc(s32, ?, ?);                          /* extern */
? kmem_free(s64, s32, s64);                         /* extern */
s64 kvtophys(u64, s32, s64, ?);                     /* extern */
? unmaptlb_range(s64, u64);                         /* extern */
? unuseracc(u64);                                   /* extern */
? useracc(u64, ?);                                  /* extern */

void MgrasInitDMA(void *arg0) {
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s64 temp_at;

    var_a6 = 0x828;
    var_a5 = 0x82F;
    var_a4 = 0x834;
    var_a3 = 4;
loop_2:
    var_a3 -= 1;
    temp_at = ((var_a5 << 8) | 0x400004) << 0x20;
    if (arg0->unk70004 & 0x7F) {
        do {

        } while (arg0->unk70004 & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_a5 -= 1;
    arg0->unk50084 = (s32) ((var_a6 << 8) | 0x400008);
    arg0->unk50080 = 9;
    var_a6 -= 2;
    arg0->unk50080 = (s64) (((var_a4 << 8) | 0x400004) << 0x20);
    var_a4 -= 1;
    arg0->unk50080 = temp_at;
    if (var_a3 != -1) {
        goto loop_2;
    }
    if (arg0->unk70004 & 0x7F) {
        do {

        } while (arg0->unk70004 & 0x7F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk50080 = (s64) saved_reg_gp->unk-7800;
    arg0->unk50080 = (s64) saved_reg_gp->unk-77F8;
    arg0->unk50900 = 0;
}

void MgrasInstallTxTbl_Kern(s64 arg0, u64 arg1, u64 arg2, s64 arg3, u64 arg4, s64 arg6, u64 arg8, s64 arg10) {
    arg6 = arg0;
    arg4 = arg2;
    if (arg1 < 5U) {
        if (M2C_ERROR(/* Read from unset register $a4 */) != 0) {
            arg2 = arg1;
            arg8 = (u64) (arg3 << 0x20) >> 0x20;
            if (arg3 != 0) {
                dki_dcache_wb(arg4, (arg8 * 4) << 0);
            }
        } else {
            arg2 = arg1;
            arg8 = (u64) (arg3 << 0x20) >> 0x20;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0 = arg6 + 0x50000;
        arg6->unk50084 = (s32) ((((arg2 * 2) + 0x820) << 8) | 0x400008);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk80 = kvtophys(arg4);
        arg0->unk80 = (s64) (((((arg2 + 0x830) << 8) | 0x400004) << 0x20) | arg8);
        arg0->unk80 = (s64) (((((arg2 + 0x82B) << 8) | 0x400004) << 0x20) | 0xA);
        arg0->unk900 = 0;
    }
}

void MgrasResetTxTbl_Kern(void *arg0, u32 arg1) {
    if (arg1 < 5U) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk50084 = (s32) ((((arg1 * 2) + 0x820) << 8) | 0x400008);
        arg0->unk50080 = 9;
        arg0->unk50080 = (s64) ((((arg1 + 0x830) << 8) | 0x400004) << 0x20);
        arg0->unk50080 = (s64) ((((arg1 + 0x82B) << 8) | 0x400004) << 0x20);
        arg0->unk50900 = 0;
    }
}

void mgrasFastUnlock(u64 arg1) {
    unuseracc((u64) (arg1 << 0x20) >> 0x20);
}

void mgrasFastLock(s64 arg1, s32 *arg3, s64 arg0) {
    if (arg3 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *arg3 = 0;
    }
    useracc((u64) (arg1 << 0x20) >> 0x20, 0);
}

s64 mgrasLockMem(void *arg0, s64 arg1, u64 arg2, s64 arg3, s64 arg8, s64 arg10, s64 arg12) {
    s32 *var_s1;
    s32 *var_s4_2;
    s32 var_a2;
    s64 temp_v0;
    s64 var_s4;
    u64 temp_a7;
    u64 temp_s2;

    temp_a7 = arg2;
    var_a2 = 0;
    if ((arg0 != NULL) && (var_s4_2 = saved_reg_gp - 0x77F4, (arg0->unk438 != 0))) {
        var_a2 = 1;
        var_s1 = arg0 + 0x420;
    } else {
        var_s4_2 = saved_reg_gp - 0x7800;
        var_s1 = saved_reg_gp - 0x77FC;
    }
    temp_s2 = (u64) (temp_a7 << 0x20) >> 0x20;
    arg2 = temp_s2;
loop_5:
    M2C_ERROR(/* unknown instruction: ll $a0, ($s1) */);
    if (M2C_ERROR(/* unknown instruction: sc $a5, ($s1) */) == 0) {
        goto loop_5;
    }
    arg0 = arg3;
    if (*var_s4_2 < *var_s1) {
        if (var_a2 != 0) {
            cmn_err(4, (s8 *) saved_reg_gp->unk-7800, var_a2);
        }
        var_s4 = ((u32) *var_s4_2 >= (u32) (((u64) (temp_s2 + (arg1 & 0x3FFF) + 0x3FFF) >> 0xE) << 0)) ? 0xB : 0xC;
        if (var_s4 != 0) {
            goto block_12;
        }
    } else {
        temp_v0 = mgrasFastLock(arg1, (s32 *) temp_a7, (((s64) arg0 == 0) | 0x10) << 0, M2C_ERROR(/* Read from unset register $a4 */));
        var_s4 = temp_v0;
        if (temp_v0 != 0) {
            goto block_12;
        }
        if ((s64) arg0 == 0) {
            unmaptlb_range(arg1, arg2);
        }
        if (var_s4 != 0) {
block_12:
loop_13:
            M2C_ERROR(/* unknown instruction: ll $a5, ($s1) */);
            if (M2C_ERROR(/* unknown instruction: sc $at, ($s1) */) == 0) {
                goto loop_13;
            }
        }
    }
    return var_s4;
}

void mgrasUnlockMem(void *arg0, u64 arg1, s64 arg2, s32 arg3, s64 arg6) {
    if (arg1 != 0xBAD) {
        mgrasFastUnlock(arg1, arg2, ((arg3 == 0) | 0x10) << 0, M2C_ERROR(/* Read from unset register $a4 */));
        if ((arg0 != NULL) && (arg0->unk438 != 0)) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk420 = (s32) (arg0->unk420 - (((u64) (((u64) (arg2 << 0x20) >> 0x20) + (arg1 & 0x3FFF) + 0x3FFF) >> 0xE) << 0));
            return;
        }
loop_5:
        M2C_ERROR(/* unknown instruction: ll $v1, ($a5) */);
        if (M2C_ERROR(/* unknown instruction: sc $v0, ($a5) */) == 0) {
            goto loop_5;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x20, 0x24, 0x38, 0x3c, 0x40, 0x44], gap at: 0x30. */
void mgrasDmaFlushUtil(s32 arg0, void *arg1) {
    s32 var_s5;
    s64 var_s4;
    u32 var_s1;
    void *var_s2;

    var_s5 = arg0 - 1;
    var_s2 = arg1;
    if (var_s5 != -1) {
loop_4:
        var_s1 = var_s2->unk8;
        var_s5 -= 1;
        if ((var_s1 > 0x100000U) && (var_s1 <= 0x01400000U)) {
            var_s4 = var_s2->unk0;
            do {
                var_s1 += 0xFFF00000;
                dki_dcache_wbinval(var_s4, 0x100000U);
                var_s4 += 0x100000;
            } while (var_s1 >= 0x100000U);
            if (var_s1 != 0) {
                dki_dcache_wbinval(var_s4, var_s1);
            }
        } else {
            dki_dcache_wbinval(var_s2->unk0, var_s1);
        }
        var_s2 += 0x10;
        if (var_s5 != -1) {
            goto loop_4;
        }
    }
}

void mgrasReleasePoolTxMemory(void *arg0, s64 arg2) {
    s64 temp_a3;

    temp_a3 = arg0->unk40;
    if (temp_a3 != 0) {
        kmem_free(temp_a3, (s64) arg0->unk48 * 4, temp_a3);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk48 = 0U;
        arg0->unk40 = 0;
    }
}

void mgrasReleasePoolUserMemory(s64 arg0, void *arg1, s64 arg4, s64 arg6) {
    s32 *temp_a2;
    s32 temp_a5_2;
    s32 temp_a6_2;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 var_a4;
    s64 var_ra;
    u32 temp_a5;
    u64 temp_a6;
    u64 var_s3;

    var_ra = saved_reg_ra;
    temp_a5 = arg1->unkC;
    var_a4 = arg1->unk20;
    if (temp_a5 != 0) {
        if (var_a4 != 0) {
            if ((arg1->unk28 != 0) && (arg1->unk30 != 0)) {
                var_s3 = 0;
                if (temp_a5 != 0) {
                    do {
                        temp_a6 = (u64) (var_s3 << 0x20) >> 0x20;
                        temp_a5_2 = temp_a6 * 4;
                        temp_a6_2 = temp_a6 * 8;
                        temp_a2 = arg1->unk28 + temp_a5_2;
                        var_s3 += 1;
                        mgrasUnlockMem((void *) arg0, *(arg1->unk20 + temp_a6_2), (s64) *temp_a2, arg1->unk4C);
                    } while (var_s3 < (u32) arg1->unkC);
                    var_a4 = arg1->unk20;
                    var_ra = arg6;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk10 = 0;
                arg1->unkC = 0U;
            }
            goto block_9;
        }
    } else {
block_9:
        if (var_a4 != 0) {
            arg6 = var_ra;
            kern_free((void *) var_a4);
            var_ra = arg6;
        }
    }
    temp_a0 = arg1->unk28;
    if (temp_a0 != 0) {
        arg6 = var_ra;
        kern_free((void *) temp_a0);
        var_ra = arg6;
    }
    temp_a0_2 = arg1->unk30;
    if (temp_a0_2 != 0) {
        arg6 = var_ra;
        kern_free((void *) temp_a0_2);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg1->unk30 = 0;
    arg1->unk28 = 0;
    arg1->unk20 = 0;
}

void mgrasReleasePoolMemory(s64 arg1, u64 arg2, s64 arg4) {
    arg4 = arg1;
    mgrasReleasePoolUserMemory();
    if (arg2 != 0) {
        mgrasReleasePoolTxMemory((void *) arg4);
    }
}

void MgrasDestroyDMA(s64 arg0, s64 arg1) {
    s32 temp_a3;
    s64 temp_a4;
    s64 var_s0;

    var_s0 = 4;
loop_3:
    if (var_s0 == 1) {
        temp_a4 = arg0->unk468;
        if (temp_a4 != 0) {
            temp_a3 = *temp_a4 < 2;
            if (temp_a3 != 0) {
                mgrasReleasePoolMemory(arg0, temp_a4 + 0x10, arg1, temp_a3);
            }
        }
    } else {
        mgrasReleasePoolMemory(arg0, (var_s0 * 0x50) + arg0 + 0x280, arg1);
    }
    var_s0 -= 1;
    if (var_s0 != -1) {
        goto loop_3;
    }
}

s64 mgrasTeardown(u64 arg0, u64 arg1, void *arg2, void *arg3, s64 arg4, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 var_s4;
    s64 var_ra;
    s64 var_t0;
    s64 var_v0;
    s64 var_v0_2;
    u64 temp_a4;
    u64 var_t1;
    void *temp_s0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    var_t1 = arg0;
    var_v0_2 = M2C_ERROR(/* Read from unset register $a5 */);
    var_t0 = 0;
    temp_s0 = arg2;
    arg0 = arg1;
    if ((M2C_ERROR(/* Read from unset register $a4 */) == 0) || (temp_s0->unk0 == 0) || (temp_s0->unk4 != 0)) {
        goto block_3;
    }
    arg12 = var_v0_2;
    arg2 = var_t1;
    if (RRM_CheckValidFault(var_t1->unk40) != 0) {
        var_v0 = 0xE;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk8 = (u32) ((temp_s0->unk8 != 1) ? 1U : 5U);
        arg3->unk50080 = (s64) ((((arg0 + 0x830) << 8) | 0x400004) << 0x20);
        arg3->unk50084 = (s32) ((((arg0 * 2) + 0x820) << 8) | 0x400008);
        arg10 = 1;
        arg3->unk50080 = (s64) temp_s0->unk8;
        temp_s0->unk4 = 1;
        flushbus();
        var_t1 = (u64) arg2;
        var_t0 = arg10;
        var_v0_2 = arg12;
        var_ra = arg20;
block_3:
        if ((var_v0_2 != 0) && (var_v0 = 0x16, (temp_s0->unk0 != 0))) {
            if (temp_s0->unk4 != 0) {
                arg20 = var_ra;
                if (var_t0 != 0) {
                    goto block_7;
                }
                var_ra = arg20;
                if (RRM_CheckValidFault(var_t1->unk40) != 0) {
                    var_v0 = 0xE;
                } else {
block_7:
                    arg20 = var_ra;
                    var_s4 = 0;
                    flushbus();
                    temp_a4 = (u64) (arg0 << 0x20) >> 0x20;
                    temp_v1 = (temp_a4 * 8) + arg3;
                    arg4 = temp_a4 * 4;
                    if (temp_s0->unk8 != temp_v1->unk50384) {
                        goto block_8;
                    }
                    if ((arg4 + arg3)->unk503C0 != 0) {
block_8:
loop_9:
                        var_s4 += 1;
                        if (var_s4 <= 0x989680) {
                            us_delay(1);
                            if ((temp_s0->unk8 == temp_v1->unk50384) && ((arg4 + arg3)->unk503C0 == 0)) {
                                goto block_12;
                            }
                            goto loop_9;
                        }
                        cmn_err(4, saved_reg_gp->unk-7800 + 0x38);
                        var_v0 = 1;
                    } else {
block_12:
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg3->unk50900 = 0;
                        temp_s0->unk4 = 0;
                        temp_s0->unk0 = 0;
                        goto block_13;
                    }
                }
            }
        } else {
block_13:
            var_v0 = 0;
        }
    }
    return var_v0;
}

s64 mgrasGetTxTbl(void *arg0, u64 arg1, s64 arg2, s64 arg3, s64 arg4, u64 arg6, s64 arg8, s64 arg10, s64 arg12) {
    s32 temp_at_2;
    s64 temp_a7;
    s64 temp_v0_2;
    s64 var_v0;
    u32 temp_a1;
    u32 temp_v0;
    u64 temp_a6;
    u64 temp_at;
    u64 var_a0;
    void *temp_a0;

    temp_a0 = arg0;
    temp_v0 = temp_a0->unk48;
    arg0 = arg2;
    temp_a7 = temp_a0->unk40;
    arg10 = arg3;
    arg8 = 0;
    if ((temp_a7 != 0) && (temp_v0 != 0) && (temp_v0 >= arg1)) {
        var_v0 = 0;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg4 = temp_a7;
        temp_a6 = (arg1 <= 0x800U) ? 0x800U : arg1;
        arg6 = (u64) temp_v0;
        temp_a0->unk48 = (u32) temp_a6;
        temp_v0_2 = kmem_alloc(((u64) (temp_a6 << 0x20) >> 0x20) * 4, 0x8100, 0x800);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0->unk40 = temp_v0_2;
        bzero((void *) temp_v0_2, (s64) temp_a0->unk48 * 4);
        if (temp_a0->unk40 == 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg8 = 0xC;
            temp_a0->unk48 = 0U;
        } else {
            var_a0 = (u64) arg0;
            if (arg10 != 0) {
                if ((arg4 == 0) || (temp_a1 = (s64) arg0 + arg10, ((arg6 < temp_a1) != 0))) {
                    arg8 = 0x16;
                } else if ((u64) arg0 < temp_a1) {
                    do {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_at = (u64) (var_a0 << 0x20) >> 0x20;
                        var_a0 += 1;
                        temp_at_2 = temp_at * 4;
                        *(temp_a0->unk40 + temp_at_2) = *(temp_at_2 + arg4);
                    } while (var_a0 < temp_a1);
                }
            }
        }
        if ((arg4 != 0) && (arg6 != 0)) {
            kmem_free(arg4, ((u64) (arg6 << 0x20) >> 0x20) * 4);
        }
        var_v0 = arg8;
    }
    return var_v0;
}

void mgrasJamTxTbl(s32 arg0, s64 arg1, u64 arg2, s32 arg3) {
    u32 temp_a5;
    u64 temp_v0;
    u64 var_a2;

    var_a2 = arg2;
    temp_a5 = var_a2 + arg3;
    if (var_a2 < temp_a5) {
        do {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0 = var_a2 << 0x20;
            var_a2 += 1;
            *(((temp_v0 >> 0x20) * 4) + arg1) = arg0;
        } while (var_a2 < temp_a5);
    }
}

void mgrasPlugTxTblHoles(void *arg0, s64 arg6) {
    s32 temp_a3;
    s64 var_s7;
    u32 var_a2;
    u64 var_s1;
    u64 var_s1_2;

    var_s7 = saved_reg_s7;
    var_a2 = arg0->unkC;
    var_s1 = 0;
    if (var_a2 != 0) {
loop_2:
        if (*((((u64) (var_s1 << 0x20) >> 0x20) * 8) + arg0->unk20) == 0xBAD) {
            var_s1 += 1;
            if (var_s1 >= var_a2) {
                var_s7 = unksp10;
            } else {
                goto loop_2;
            }
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk18 = (s32) var_s1;
            var_s7 = unksp10;
            arg0->unk14 = (s32) *(arg0->unk40 + (((u64) (((arg0->unk38 * var_s1) + 3) << 0x20) >> 0x20) * 4));
        }
    }
    var_s1_2 = 0;
    if (var_a2 != 0) {
        unksp10 = var_s7;
loop_9:
        if (*(arg0->unk20 + (((u64) (var_s1_2 << 0x20) >> 0x20) * 8)) == 0xBAD) {
            temp_a3 = arg0->unk38;
            mgrasJamTxTbl(arg0->unk14, arg0->unk40, (temp_a3 * var_s1_2) + 3, temp_a3);
            var_a2 = arg0->unkC;
        }
        var_s1_2 += 1;
        if (var_s1_2 < var_a2) {
            goto loop_9;
        }
    }
}

s32 mgrasFillTxTbl(u64 arg0, u64 arg1, s64 arg2, u64 arg3, u64 arg4, s64 arg6, u64 arg8, u64 arg10, s64 arg16, s64 arg18) {
    s32 *temp_a3;
    s32 *var_s3;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_v0;
    s32 var_v0_3;
    s64 temp_s0;
    u32 temp_a1_2;
    u32 var_v0_2;
    u64 temp_a7;
    u64 temp_at;
    u64 temp_v0;
    u64 temp_v1;
    u64 var_v0_4;

    temp_a7 = (u64) (((u64) (arg1 << 0x20) >> 0x20) + (arg0 & 0xFFF) + 0xFFF) >> 0xC;
    temp_v0 = temp_a7 << 0;
    temp_s0 = arg2;
    if ((u32) M2C_ERROR(/* Read from unset register $a4 */) >= temp_v0) {
        temp_at = (arg0 >> 0xC) & 3;
        arg10 = temp_at;
        arg6 = M2C_ERROR(/* Read from unset register $a4 */);
        arg4 = temp_v0;
        arg8 = temp_a7;
        var_v0 = 1;
        if (arg3 < temp_at) {

        } else {
            var_s3 = (((u64) ((arg3 - arg10) << 0x20) >> 0x20) * 4) + temp_s0;
            arg2 = (s64) *var_s3;
            arg0 = (u64) var_s3;
            curproc_vtopv(var_s3, 0x10);
            var_a0 = arg8 << 0;
            var_v0_2 = 4;
            temp_a3 = (((u64) (arg3 << 0x20) >> 0x20) * 4) + temp_s0;
            if ((arg10 != 0) && (M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */), temp_a1 = *arg0, var_s3 = temp_a3, *arg0 = (s32) arg2, ((arg10 < 4U) != 0))) {
                if (var_a0 != 0) {
                    var_a2 = (temp_a1 + arg10) - 1;
loop_15:
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_v0_2 -= 1;
                    var_a0 -= 1;
                    var_a2 += 1;
                    *var_s3 = var_a2;
                    var_s3 += 4;
                    if (arg10 < var_v0_2) {
                        if (var_a0 == 0) {

                        } else {
                            goto loop_15;
                        }
                    } else {
                        goto block_3;
                    }
                }
            } else {
block_3:
                if (var_a0 != 0) {
loop_4:
                    var_a0 -= 1;
                    var_v0_3 = 3;
                    var_a1 = *var_s3;
                    var_s3 += 4;
                    if (var_a0 != 0) {
loop_5:
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_3 -= 1;
                        var_a0 -= 1;
                        var_a1 += 1;
                        *var_s3 = var_a1;
                        var_s3 += 4;
                        if (var_v0_3 != 0) {
                            if (var_a0 != 0) {
                                goto loop_5;
                            }
                        } else if (var_a0 == 0) {

                        } else {
                            goto loop_4;
                        }
                    }
                }
            }
            temp_a1_2 = arg3 + arg6;
            var_v0_4 = arg4 + arg3;
            if (var_v0_4 < temp_a1_2) {
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v1 = var_v0_4 << 0x20;
                    var_v0_4 += 1;
                    *(((temp_v1 >> 0x20) * 4) + temp_s0) = *temp_a3;
                } while (var_v0_4 < temp_a1_2);
            }
            var_v0 = 0;
        }
    } else {
        var_v0 = 1;
    }
    return var_v0;
}

s64 mgrasDmaUtil(void *arg0, void *arg1, u64 arg2, u64 arg3, u64 arg4, s64 arg14, s64 arg16, s64 arg18, u64 arg20, u64 arg22, s64 arg24, s64 arg26, u64 arg28, u64 arg30, u64 arg32, s64 arg34, s64 arg36, s64 arg38, u64 arg40, s64 arg42) {
    s32 temp_a1_2;
    s32 temp_a7_2;
    s32 temp_at;
    s32 var_a6;
    s64 *temp_a1;
    s64 temp_a0_3;
    s64 temp_a2_2;
    s64 temp_a3;
    s64 temp_a7;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 var_a0;
    s64 var_a5_2;
    s64 var_t2;
    u32 temp_a2;
    u32 temp_t2;
    u32 var_a5;
    u32 var_a7;
    u32 var_a7_2;
    u64 temp_a0;
    u64 temp_a0_2;
    u64 temp_a6;
    u64 temp_s2;
    u64 temp_t0;
    u64 temp_t0_2;
    u64 var_v0;
    u64 var_v0_2;

    temp_v0 = M2C_ERROR(/* Read from unset register $a7 */);
    var_t2 = 0;
    temp_s2 = M2C_ERROR(/* Read from unset register $a6 */);
    if (arg2 & 7) {
        if (arg3 < 5U) {
            if (arg1 != NULL) {
                temp_a7 = arg1->unk70;
                if (arg3 != 1) {
                    arg26 = temp_v0;
                    arg22 = arg2;
                    arg24 = M2C_ERROR(/* Read from unset register $a5 */);
                    arg28 = M2C_ERROR(/* Read from unset register $a4 */);
                    arg34 = temp_a7;
                    arg40 = (((u64) (arg3 << 0x20) >> 0x20) * 0x50) + temp_a7 + 0x280;
                } else {
                    arg26 = temp_v0;
                    arg22 = arg2;
                    arg24 = M2C_ERROR(/* Read from unset register $a5 */);
                    arg28 = M2C_ERROR(/* Read from unset register $a4 */);
                    arg34 = temp_a7;
                    arg40 = temp_a7->unk468 + 0x10;
                }
                arg38 = arg22 & 6;
                temp_a3 = arg0->unk20->unkD0;
                arg36 = temp_a3;
                temp_v0_2 = mgrasTeardown((u64) arg1, arg3, (void *) arg40, (void *) temp_a3);
                var_t2 = temp_v0_2;
                if (temp_v0_2 != 0) {
                    var_a0 = temp_v0_2;
                } else {
                    if (arg38 != 0) {
                        unksp28 = var_t2;
                        mgrasReleasePoolUserMemory(arg34, (void *) arg40);
                    }
                    if ((arg22 & 4) && (var_a6 = 0, (temp_s2 != 0))) {
                        if ((temp_s2 < 2U) || (arg3 < 3U)) {
                            if (arg24 != 0) {
                                var_v0 = 0;
                                if (temp_s2 != 0) {
                                    do {
                                        temp_at = var_v0 * 8;
                                        var_v0 += 1;
                                        var_a6 |= *(temp_at + arg26);
                                    } while (var_v0 < temp_s2);
                                }
                                if (var_a6 & 0xFFF) {
                                    var_a0 = 0x16;
                                } else {
                                    temp_a6 = (arg24 + 0xFFF) & ~0xFFF;
                                    temp_t2 = temp_a6 >> 0xC;
                                    var_a7 = temp_t2;
                                    if ((temp_t2 - 1) & temp_t2) {
                                        var_a7 = temp_t2 * 2;
                                    }
                                    var_a7_2 = var_a7 >> 1;
                                    var_v0_2 = 0;
                                    if (var_a7_2 != 0) {
                                        do {
                                            var_a7_2 = var_a7_2 >> 1;
                                            var_v0_2 += 1;
                                        } while (var_a7_2 != 0);
                                    }
                                    if ((arg3 >= 3U) || (var_v0_2 < 0xBU)) {
                                        if ((arg3 != 4) && (arg3 != 3)) {
                                            goto block_33;
                                        }
                                        if (temp_a6 > 0x0FFFFFFFU) {
                                            goto block_40;
                                        }
block_33:
                                        if ((arg3 != 4) && (arg3 != 3)) {
                                            arg30 = var_v0_2;
                                            arg32 = temp_a6;
                                            var_a5 = 1 << var_v0_2;
                                        } else {
                                            arg30 = var_v0_2;
                                            arg32 = temp_a6;
                                            var_a5 = temp_t2;
                                        }
                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                        arg40->unk38 = var_a5;
                                        temp_v0_3 = mgrasGetTxTbl((void *) arg40, (var_a5 * temp_s2) + 3, 0, 0);
                                        unksp28 = temp_v0_3;
                                        if (temp_v0_3 != 0) {
                                            var_a0 = temp_v0_3;
                                        } else {
                                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                            temp_a0 = (u64) (temp_s2 << 0x20) >> 0x20;
                                            arg2 = temp_a0;
                                            arg40->unk4C = (s32) arg28;
                                            arg16 = kern_malloc(temp_a0 * 8, arg28, arg40);
                                            temp_a0_2 = arg2 * 4;
                                            arg4 = temp_a0_2;
                                            arg14 = kern_malloc(temp_a0_2);
                                            var_a5_2 = kern_malloc(arg4);
                                            if (arg16 != 0) {
                                                if ((arg14 == 0) || (var_a5_2 == 0)) {
                                                    if (arg16 != 0) {
                                                        arg18 = var_a5_2;
                                                        kern_free((void *) arg16);
                                                        var_a5_2 = arg18;
                                                    }
                                                    goto block_47;
                                                }
                                                arg20 = 0U;
                                                if (temp_s2 != 0) {
                                                    arg18 = var_a5_2;
loop_54:
                                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                    arg18 = var_a5_2;
                                                    temp_a7_2 = arg20 * 8;
                                                    temp_a1 = temp_a7_2 + arg26;
                                                    *(temp_a7_2 + arg16) = *temp_a1;
                                                    *((arg20 * 4) + arg14) = (s32) arg32;
                                                    temp_v0_4 = mgrasLockMem((void *) arg34, *temp_a1, arg32, (s64) arg40->unk4C);
                                                    unksp28 = temp_v0_4;
                                                    var_a5_2 = arg18;
                                                    if (temp_v0_4 == 0) {
                                                        temp_t0 = arg20 + 1;
                                                        arg20 = temp_t0;
                                                        if (temp_t0 < temp_s2) {
                                                            goto loop_54;
                                                        }
                                                    }
                                                }
                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                arg40->unk10 = 0;
                                                arg40->unkC = (s32) arg20;
                                                arg40->unk30 = var_a5_2;
                                                arg40->unk28 = arg14;
                                                arg40->unk20 = arg16;
                                                if (arg20 == temp_s2) {
                                                    arg20 = 0U;
                                                    if (temp_s2 != 0) {
                                                        do {
                                                            mgrasFillTxTbl(*((arg20 * 8) + arg16), (u64) *((arg20 * 4) + arg14), arg40->unk40, (arg20 * arg40->unk38) + 3);
                                                            temp_t0_2 = arg20 + 1;
                                                            arg20 = temp_t0_2;
                                                        } while (temp_t0_2 < temp_s2);
                                                    }
                                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                    arg40->unk18 = 0;
                                                    temp_a0_3 = arg40->unk40;
                                                    temp_a2 = temp_a0_3->unkC;
                                                    arg40->unk14 = temp_a2;
                                                    dki_dcache_wb(temp_a0_3 + 0xC, (((u64) ((arg40->unk38 * temp_s2) << 0x20) >> 0x20) * 4) << 0, temp_a2, arg40);
                                                    if (RRM_CheckValidFault(arg1->unk40) != 0) {
                                                        mgrasReleasePoolMemory(arg34, arg40, 1);
                                                        var_a0 = 0xE;
                                                    } else {
                                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                        temp_a2_2 = arg36 + 0x50000;
                                                        temp_a1_2 = (((arg3 * 2) + 0x820) << 8) | 0x400008;
                                                        arg36->unk50084 = temp_a1_2;
                                                        arg0 = temp_a2_2;
                                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                        ((s64) arg0)->unk80 = (s64) ((arg40->unk4C != 0) | kvtophys(arg40->unk40 + 0xC, temp_a1_2, temp_a2_2, 0x400008));
                                                        ((s64) arg0)->unk80 = (s64) (((u64) ((arg40->unk38 * temp_s2) << 0x20) >> 0x20) | ((((arg3 + 0x830) << 8) | 0x400004) << 0x20));
                                                        ((s64) arg0)->unk80 = (s64) (((u64) (arg30 << 0x20) >> 0x20) | ((((arg3 + 0x82B) << 8) | 0x400004) << 0x20));
                                                        var_t2 = unksp28;
                                                        arg40->unk0 = 1;
                                                        goto block_23;
                                                    }
                                                } else {
                                                    mgrasReleasePoolUserMemory(arg34, (void *) arg40);
                                                    var_a0 = unksp28;
                                                }
                                            } else {
block_47:
                                                if (arg14 == 0) {
                                                    if (var_a5_2 != 0) {
                                                        goto block_51;
                                                    }
                                                } else {
                                                    arg18 = var_a5_2;
                                                    kern_free((void *) arg14);
                                                    var_a5_2 = arg18;
                                                    if (var_a5_2 != 0) {
block_51:
                                                        kern_free((void *) var_a5_2);
                                                    }
                                                }
                                                var_a0 = 0xC;
                                            }
                                        }
                                    } else {
block_40:
                                        var_a0 = 0x16;
                                    }
                                }
                            } else {
                                var_a0 = 0x16;
                            }
                        } else {
                            var_a0 = 0x16;
                        }
                    } else {
                        goto block_23;
                    }
                }
            } else {
                var_a0 = 0xE;
            }
        } else {
            var_a0 = 0x16;
        }
    } else {
block_23:
        var_a0 = var_t2;
    }
    return var_a0;
}

s64 mgrasGetFlushRanges(u64 arg0, s64 arg1, s64 *arg2, s64 arg4, s64 arg10) {
    s64 temp_v0;
    s64 var_s0;
    u64 temp_a0;
    u64 temp_s1;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1 = arg0;
    *arg2 = 0;
    var_s0 = 0;
    if (arg0 != 0) {
        arg4 = arg1;
        if (temp_s1 >= 0x1000U) {
            var_s0 = 0x16;
        } else {
            temp_a0 = (((u64) (temp_s1 << 0x20) >> 0x20) * 0x10) << 0;
            arg0 = temp_a0;
            temp_v0 = kern_malloc((u64) (temp_a0 << 0x20) >> 0x20);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *(s64) arg2 = temp_v0;
            if ((temp_v0 == 0) || (curproc_abi(), (copyin_xlate(arg4, *(s64) arg2, arg0, saved_reg_gp->unk-77F8) != 0))) {
                var_s0 = 0xE;
            }
        }
    }
    return var_s0;
}

s64 MgrasDmaUtil_Single(void *arg2, s64 arg4, s64 arg6, s64 arg8) {
    s32 var_a6;
    s64 temp_v0;
    s64 var_ra;
    s64 var_v0;
    void *temp_a3;
    void *var_a2;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    var_a6 = var_a2->unk0;
    var_v0 = 0x16;
    if (!(var_a6 & ~0xF)) {
        if (var_a6 & 7) {
            temp_a3 = var_a2->unk4;
            arg4 = (s64) var_a6;
            arg6 = (s64) var_a2;
            if (temp_a3 != (void *)2) {
                temp_v0 = mgrasDmaUtil((void *) arg4, temp_a3);
                var_a2 = (void *) arg6;
                var_a6 = (s32) arg4;
                var_ra = arg8;
                if (temp_v0 != 0) {
                    var_v0 = temp_v0;
                } else {
                    goto block_6;
                }
            } else {
                var_v0 = 0x16;
            }
        } else {
block_6:
            if (var_a6 & 8) {
                arg0 = var_a2->unk18;
                arg8 = var_ra;
                arg2 = var_a2->unk20;
                mgrasDmaFlushUtil(1, sp, var_a2);
            }
            var_v0 = 0;
        }
    }
    return var_v0;
}

s64 MgrasDmaUtil_Multi(s64 arg0, s64 arg1, void *arg2, s64 arg4, u64 arg6, u64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18) {
    s32 temp_a3;
    s32 var_a7;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_a0;
    s64 var_a1;
    s64 var_a3;
    s64 var_a6;
    s64 var_ra;
    s64 var_v0;
    u32 temp_t0;
    u64 temp_a0;
    void *var_a2;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    arg0 = 0;
    var_a7 = var_a2->unk0;
    var_a3 = 0;
    var_v0 = 0x16;
    var_a6 = 0;
    if (var_a7 & ~0xF) {

    } else {
        if (var_a7 & 4) {
            temp_t0 = var_a2->unk8;
            if (temp_t0 != 0) {
                if (temp_t0 >= 0x1000U) {
                    var_a3 = 0x16;
                } else {
                    arg12 = var_a0;
                    arg16 = 0;
                    arg6 = (u64) var_a7;
                    temp_a0 = (((u64) ((s64) temp_t0 << 0x20) >> 0x20) * 8) << 0;
                    arg8 = temp_a0;
                    arg14 = var_a1;
                    temp_v0 = kern_malloc((u64) (temp_a0 << 0x20) >> 0x20, 0U);
                    arg10 = temp_v0;
                    var_a0 = arg12;
                    var_a1 = arg14;
                    var_a2 = (void *) (s64) arg2;
                    var_a7 = (s32) arg6;
                    var_a6 = temp_v0;
                    var_ra = arg18;
                    if (temp_v0 == 0) {
                        goto block_20;
                    }
                    arg4 = var_a6;
                    curproc_abi(var_a0, var_a1, (s64) var_a2, arg16);
                    var_a0 = arg12;
                    var_a1 = arg14;
                    var_a2 = (void *) (s64) arg2;
                    var_a7 = (s32) arg6;
                    var_a6 = arg4;
                    var_a3 = arg16;
                    var_ra = arg18;
                    if (copyin_xlate(((s64) arg2)->unk10, arg10, arg8, saved_reg_gp->unk-77F0) != 0) {
block_20:
                        var_a3 = 0xE;
                    }
                }
            }
        }
        if (var_a3 == 0) {
            if (var_a7 & 8) {
                arg4 = var_a6;
                arg6 = (u64) var_a7;
                arg14 = var_a1;
                arg18 = var_ra;
                arg12 = var_a0;
                arg2 = (s64) var_a2;
                temp_v0_2 = mgrasGetFlushRanges((u64) var_a2->unk20, var_a2->unk28, sp, var_a3);
                var_a0 = arg12;
                var_a1 = arg14;
                var_a2 = (void *) (s64) arg2;
                var_a7 = (s32) arg6;
                var_a6 = arg4;
                var_a3 = temp_v0_2;
                var_ra = arg18;
            }
            if (var_a3 == 0) {
                if (var_a7 & 7) {
                    temp_a3 = var_a2->unk4;
                    if (temp_a3 == 2) {
                        var_a3 = 0x16;
                    } else {
                        arg6 = (u64) var_a7;
                        arg18 = var_ra;
                        arg2 = (s64) var_a2;
                        arg4 = var_a6;
                        temp_v0_3 = mgrasDmaUtil((void *) var_a0, (void *) var_a1, (u64) var_a7, (u64) temp_a3);
                        var_a2 = (void *) (s64) arg2;
                        var_a7 = (s32) arg6;
                        var_a6 = arg4;
                        var_a3 = temp_v0_3;
                        var_ra = arg18;
                    }
                }
                if ((var_a3 == 0) && (var_a7 & 8)) {
                    arg16 = var_a3;
                    arg4 = var_a6;
                    arg18 = var_ra;
                    mgrasDmaFlushUtil(var_a2->unk20, (void *) arg0, var_a2, var_a3);
                    var_a6 = arg4;
                    var_a3 = arg16;
                    var_ra = arg18;
                }
            }
        }
        if (var_a6 != 0) {
            arg18 = var_ra;
            arg16 = var_a3;
            kern_free((void *) var_a6);
            var_a3 = arg16;
            var_ra = arg18;
        }
        if (arg0 != 0) {
            arg18 = var_ra;
            arg16 = var_a3;
            kern_free((void *) arg0);
            var_a3 = arg16;
        }
        var_v0 = var_a3;
    }
    return var_v0;
}

s64 MgrasDmaEditAppend(s64 arg0, void *arg1, void *arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, u64 arg14, s64 arg16, s64 arg18, s64 arg20, u64 arg22, u64 arg24, s64 arg26, u64 arg28, s64 arg30, s64 arg32, s64 arg34, s64 arg36, s64 arg38, s64 arg40, s64 arg42, u64 arg58, s64 arg60, s64 arg62, s64 arg64, s64 arg66, s64 arg68, s64 arg70, s64 arg72, s64 arg74, s64 arg76, s64 arg78, s64 arg80) {
    s32 *temp_a2_3;
    s32 temp_a1_2;
    s32 temp_a1_4;
    s32 temp_a4_2;
    s32 temp_a4_5;
    s32 temp_at_2;
    s32 temp_v1_2;
    s32 var_a3;
    s32 var_a7;
    s32 var_v0_3;
    s64 temp_a2_2;
    s64 temp_a3_2;
    s64 temp_a4_3;
    s64 temp_a6;
    s64 temp_s4;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v1;
    s64 temp_v1_3;
    s64 var_a0;
    s64 var_a6;
    s64 var_ra;
    s64 var_s0_2;
    s64 var_s1;
    s64 var_s5;
    s64 var_s6;
    s64 var_t0;
    s64 var_t2;
    s64 var_t3;
    s64 var_t8;
    s64 var_t9;
    s64 var_v0;
    s64 var_v0_2;
    u32 temp_a2;
    u32 temp_a3;
    u32 temp_at_3;
    u32 temp_s1;
    u32 var_a7_6;
    u32 var_t1;
    u64 temp_a1;
    u64 temp_a1_3;
    u64 temp_a4;
    u64 temp_a4_4;
    u64 temp_at;
    u64 var_a7_2;
    u64 var_a7_3;
    u64 var_a7_4;
    u64 var_a7_5;
    u64 var_s0;
    void *var_a1;
    void *var_a2;
    void *var_s2;
    void *var_s5_2;
    void *var_s8;

    var_s5 = saved_reg_s5;
    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    arg16 = 0;
    arg38 = 0;
    arg30 = 0;
    arg40 = 0;
    arg32 = 0;
    arg34 = 0;
    arg42 = 0;
    arg36 = 0;
    arg4 = 0;
    arg6 = 0;
    var_a7 = 0;
    var_a6 = 0;
    var_t0 = 0;
    var_t2 = 0;
    var_t3 = 0;
    var_t9 = 0;
    arg0 = 0;
    var_v0_2 = 0;
    var_t8 = 0;
    var_s6 = 0;
    var_s1 = 0;
    var_a3 = var_a2->unk0;
    var_s8 = NULL;
    var_s2 = NULL;
    var_s0 = 0;
    temp_s4 = var_a1->unk70;
    var_t1 = var_a2->unk8;
    temp_v1 = var_a3 & 8;
    if (var_a3 & ~0x18) {
        var_s6 = 0x16;
        goto block_2;
    }
    arg62 = 0;
    arg20 = temp_v1;
    if (temp_v1 != 0) {
        arg74 = (s64) var_a3;
        arg72 = 0;
        arg70 = 0;
        arg22 = (u64) var_t1;
        arg68 = 0;
        arg66 = 0;
        arg26 = 0;
        arg64 = 0;
        arg24 = (u64) var_a1;
        arg60 = var_a0;
        arg12 = (s64) var_a2;
        temp_v0 = mgrasGetFlushRanges((u64) var_a2->unk1C, var_a2->unk20, sp, (s64) var_a3);
        var_s6 = temp_v0;
        var_a7 = temp_v0 != 0;
        var_v0_2 = arg62;
        var_a0 = arg60;
        var_t9 = arg64;
        var_t8 = arg26;
        var_t3 = arg66;
        var_a1 = (void *) arg24;
        var_t2 = arg68;
        var_t1 = (u32) arg22;
        var_t0 = arg70;
        var_a6 = arg72;
        var_a2 = (void *) arg12;
        var_a3 = (s32) arg74;
        var_ra = arg76;
    }
    if (var_a7 == 0) {
        if ((var_a3 & 0x10) && (var_t1 != 0)) {
            temp_a3 = var_a2->unk4;
            if ((temp_a3 >= 3U) || (temp_a3 == 2) || (var_t1 >= 0x1000U)) {
                var_t0 = 1;
                var_s6 = 0x16;
                goto block_25;
            }
            if (var_a1 == NULL) {
                var_t3 = 1;
                var_s6 = 0xE;
                goto block_46;
            }
            temp_a6 = var_a1->unk70;
            if (temp_a3 != 1) {
                var_s5_2 = (((u64) ((s64) temp_a3 << 0x20) >> 0x20) * 0x50) + temp_a6 + 0x280;
            } else {
                var_s5_2 = temp_a6->unk468 + 0x10;
            }
            temp_a3_2 = var_a0->unk20->unkD0;
            if (var_s5_2->unk0 != 0) {
                goto block_42;
            }
            if (var_s5_2->unk4 == 0) {
                arg16 = 1;
                arg2 = (s64) var_s5_2;
                var_s6 = 0xE;
                var_s5 = arg78;
                goto block_45;
            }
block_42:
            temp_at = (var_a2->unk18 + 0xFFF) & ~0xFFF;
            arg28 = temp_at;
            arg22 = (u64) var_t1;
            arg24 = (u64) var_a1;
            arg26 = var_t8;
            arg8 = temp_a3_2;
            if ((u32) var_s5_2->unk38 < (u32) (temp_at >> 0xC)) {
                arg26 = 1;
                arg2 = (s64) var_s5_2;
                var_s6 = 0x16;
                goto block_44;
            }
            arg12 = (s64) var_a2;
            arg70 = var_t0;
            arg76 = var_ra;
            arg66 = var_t3;
            arg4 = kern_malloc(((u64) ((var_s5_2->unkC + arg22) << 0x20) >> 0x20) * 8, arg22, (u64) var_a2, temp_a3_2);
            var_s8 = kern_malloc(((u64) ((var_s5_2->unkC + arg22) << 0x20) >> 0x20) * 4, arg22);
            temp_v0_2 = kern_malloc(((u64) ((var_s5_2->unkC + arg22) << 0x20) >> 0x20) * 4, arg22);
            temp_s1 = var_s5_2->unkC;
            arg6 = temp_v0_2;
            var_t3 = arg66;
            var_t0 = arg70;
            var_a2 = (void *) arg12;
            var_s2 = (((u64) ((s64) temp_s1 << 0x20) >> 0x20) * 4) + var_s8;
            var_ra = arg76;
            var_s1 = (((u64) ((s64) temp_s1 << 0x20) >> 0x20) * 8) + arg4;
            if ((arg4 == 0) || (var_s8 == NULL) || (temp_v0_2 == 0)) {
                goto block_51;
            }
            arg10 = temp_v0_2;
            curproc_abi();
            var_t3 = arg66;
            var_t0 = arg70;
            var_a2 = (void *) arg12;
            var_ra = arg76;
            if (copyin_xlate(arg12->unk10, var_s1, (((u64) (arg22 << 0x20) >> 0x20) * 8) << 0, saved_reg_gp->unk-77F0) != 0) {
block_51:
                arg2 = (s64) var_s5_2;
                arg38 = 1;
                var_s6 = 0xE;
                goto block_44;
            }
            var_a7_2 = 0;
            if (var_s5_2->unkC != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a4 = (u64) (var_a7_2 << 0x20) >> 0x20;
                    temp_at_2 = temp_a4 * 8;
                    *(temp_at_2 + arg4) = *(var_s5_2->unk20 + temp_at_2);
                    temp_a4_2 = temp_a4 * 4;
                    *(temp_a4_2 + var_s8) = *(var_s5_2->unk28 + temp_a4_2);
                    *(arg10 + temp_a4_2) = *(var_s5_2->unk30 + temp_a4_2);
                    var_a7_2 += 1;
                } while (var_a7_2 < (u32) var_s5_2->unkC);
            }
            var_v0_3 = 0;
            var_a7_3 = 0;
            if (arg22 != 0) {
                do {
                    temp_v1_2 = ((u64) (var_a7_3 << 0x20) >> 0x20) * 8;
                    var_a7_3 += 1;
                    var_v0_3 |= *(temp_v1_2 + var_s1);
                } while (var_a7_3 < arg22);
            }
            if (var_v0_3 & 0xFFF) {
                arg40 = 1;
                var_s6 = 0x16;
                goto block_63;
            }
            var_a7_4 = 0;
            if (arg22 != 0) {
                arg14 = 0U;
loop_67:
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a1 = (u64) (var_a7_4 << 0x20) >> 0x20;
                *((temp_a1 * 4) + var_s2) = (s32) arg28;
                arg14 = var_a7_4;
                temp_v0_3 = mgrasLockMem((void *) temp_s4, *((temp_a1 * 8) + var_s1), arg28, (s64) var_s5_2->unk4C);
                var_a7_4 = arg14;
                var_t3 = arg66;
                var_t0 = arg70;
                var_s6 = temp_v0_3;
                var_a2 = (void *) arg12;
                if (temp_v0_3 == 0) {
                    var_a7_4 += 1;
                    if (var_a7_4 < arg22) {
                        goto loop_67;
                    }
                }
                var_ra = arg76;
            }
            var_s0 = var_a7_4;
            arg32 = arg22 != var_a7_4;
            if (arg22 == var_a7_4) {
                var_a7_5 = (var_s5_2->unk38 * (var_s5_2->unkC + arg22)) + 3;
                if ((u32) var_s5_2->unk48 < var_a7_5) {
                    arg58 = var_a7_5;
                    temp_v0_4 = mgrasTeardown(arg24, (u64) arg12->unk4, var_s5_2, (void *) arg8);
                    var_a7_5 = arg58;
                    var_t3 = arg66;
                    var_t0 = arg70;
                    arg42 = temp_v0_4 != 0;
                    var_a2 = (void *) arg12;
                    var_s6 = temp_v0_4;
                    var_ra = arg76;
                }
                arg34 = arg42;
                if (arg42 != 0) {
                    goto block_63;
                }
                temp_v0_5 = mgrasGetTxTbl(var_s5_2, var_a7_5, 3, var_s5_2->unkC * var_s5_2->unk38);
                arg36 = temp_v0_5 != 0;
                var_t3 = arg66;
                var_t0 = arg70;
                var_a2 = (void *) arg12;
                var_s6 = temp_v0_5;
                var_ra = arg76;
                if (temp_v0_5 != 0) {
                    goto block_63;
                }
                kern_free((void *) var_s5_2->unk20);
                kern_free((void *) var_s5_2->unk28);
                kern_free((void *) var_s5_2->unk30);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a4_3 = arg6;
                arg6 = 0;
                temp_v1_3 = arg4;
                arg4 = 0;
                temp_at_3 = var_s5_2->unkC;
                var_s5_2->unk28 = (s64) var_s8;
                arg14 = (u64) temp_at_3;
                var_a7_6 = temp_at_3 + arg22;
                var_s0 = 0;
                var_s5_2->unk30 = temp_a4_3;
                var_s8 = NULL;
                var_s5_2->unk20 = temp_v1_3;
                var_s5_2->unkC = var_a7_6;
                if (temp_at_3 < var_a7_6) {
                    do {
                        mgrasFillTxTbl(*(var_s5_2->unk20 + (((u64) (arg14 << 0x20) >> 0x20) * 8)), arg28, var_s5_2->unk40, (var_s5_2->unk38 * arg14) + 3);
                        var_a7_6 = var_s5_2->unkC;
                        temp_a4_4 = arg14 + 1;
                        arg14 = temp_a4_4;
                    } while (temp_a4_4 < var_a7_6);
                }
                temp_a2 = var_s5_2->unk38;
                dki_dcache_wb(var_s5_2->unk40 + 0xC, (((u64) ((temp_a2 * var_a7_6) << 0x20) >> 0x20) * 4) << 0, temp_a2);
                if (RRM_CheckValidFault(arg24->unk40) != 0) {
                    mgrasReleasePoolMemory(temp_s4, (u64) var_s5_2, 1);
                    var_v0 = 0xE;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a2_2 = arg8 + 0x50000;
                    arg8->unk50900 = 0;
                    temp_a1_2 = (((arg12->unk4 * 2) + 0x820) << 8) | 0x400008;
                    arg8->unk50084 = temp_a1_2;
                    arg2 = (s64) var_s5_2;
                    arg18 = temp_a2_2;
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg18->unk80 = (s64) ((var_s5_2->unk4C != 0) | kvtophys(var_s5_2->unk40 + 0xC, temp_a1_2, temp_a2_2, 0x400008));
                    var_a2 = (void *) arg12;
                    var_ra = arg76;
                    var_t3 = arg66;
                    arg18->unk80 = (s64) (((u64) ((var_s5_2->unkC * var_s5_2->unk38) << 0x20) >> 0x20) | ((((var_a2->unk4 + 0x830) << 8) | 0x400004) << 0x20));
                    var_t0 = arg70;
                    var_s5_2->unk0 = 1;
                    goto block_64;
                }
            } else {
block_63:
                arg2 = (s64) var_s5_2;
block_64:
                arg30 = arg40;
block_44:
                var_s5 = arg78;
                var_v0_2 = arg26;
block_45:
                var_t9 = arg16;
block_46:
                var_t2 = var_t3;
block_25:
                var_a6 = var_t0;
                goto block_26;
            }
        } else {
block_26:
            if ((var_a6 == 0) && (var_t2 == 0) && (var_t9 == 0) && (var_v0_2 == 0) && (arg38 == 0) && (arg30 == 0) && (arg32 == 0) && (arg34 == 0) && (arg36 == 0) && (arg20 != 0)) {
                arg76 = var_ra;
                mgrasDmaFlushUtil(var_a2->unk1C, (void *) arg0, var_a2);
                var_ra = arg76;
            }
            goto block_2;
        }
    } else {
block_2:
        var_s0_2 = var_s0 - 1;
        arg78 = var_s5;
        if (var_s0_2 != -1) {
            arg76 = var_ra;
            do {
                temp_a1_3 = (u64) (var_s0_2 << 0x20) >> 0x20;
                temp_a4_5 = temp_a1_3 * 4;
                temp_a1_4 = temp_a1_3 * 8;
                temp_a2_3 = temp_a4_5 + var_s2;
                var_s0_2 -= 1;
                mgrasUnlockMem((void *) temp_s4, *(temp_a1_4 + var_s1), (s64) *temp_a2_3, ((s64) arg2)->unk4C);
            } while (var_s0_2 != -1);
            var_ra = arg76;
        }
        if (arg4 == 0) {
            if (var_s8 == NULL) {
                goto block_8;
            }
            goto block_14;
        }
        arg76 = var_ra;
        kern_free((void *) arg4);
        var_ra = arg76;
        if (var_s8 != NULL) {
block_14:
            arg76 = var_ra;
            kern_free(var_s8);
            var_ra = arg76;
            if (arg6 != 0) {
                goto block_15;
            }
        } else {
block_8:
            if (arg6 != 0) {
block_15:
                arg76 = var_ra;
                kern_free((void *) arg6);
                var_ra = arg76;
            }
        }
        if (arg0 != 0) {
            arg76 = var_ra;
            kern_free((void *) arg0);
        }
        var_v0 = var_s6;
    }
    return var_v0;
}

s64 MgrasDmaEditReplace(s64 arg0, s64 arg1, void *arg2, s64 arg4, s64 arg6, u64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, u64 arg26, s64 arg34, s64 arg36, s64 arg38, s64 arg40, s64 arg42, s64 arg44, s64 arg46, s64 arg48, s64 arg50, s64 arg52) {
    s32 temp_a3_2;
    s32 temp_a7;
    s32 var_a5;
    s32 var_a5_3;
    s32 var_t8;
    s64 temp_a0;
    s64 temp_a6_2;
    s64 temp_at_2;
    s64 temp_t2;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 var_a0;
    s64 var_a1;
    s64 var_a6;
    s64 var_a7;
    s64 var_ra;
    s64 var_s0;
    s64 var_t0;
    s64 var_t1;
    s64 var_t2;
    s64 var_t3;
    s64 var_t9;
    s64 var_v0;
    s64 var_v0_2;
    s64 var_v0_3;
    u32 temp_a2;
    u32 temp_a6;
    u32 temp_t8;
    u32 temp_v1;
    u32 var_t8_2;
    u64 *var_a5_4;
    u64 temp_a1;
    u64 temp_a1_4;
    u64 temp_a3;
    u64 temp_at;
    u64 temp_at_3;
    u64 temp_v0_4;
    u64 temp_v1_2;
    u64 temp_v1_3;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a5;
    void *temp_v0_2;
    void *var_a2;
    void *var_a5_2;
    void *var_s1;
    void *var_s2;

    var_ra = saved_reg_ra;
    temp_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_t8 = 0;
    var_a6 = 0;
    var_a7 = 0;
    arg0 = 0;
    var_t0 = 0;
    var_t1 = 0;
    var_t2 = 0;
    var_t3 = 0;
    var_a5 = var_a2->unk0;
    var_v0_2 = 0;
    var_t9 = temp_a0;
    var_s0 = 0;
    var_s1 = NULL;
    var_s2 = NULL;
    if (var_a5 & ~0x28) {
        goto block_2;
    }
    var_a0 = var_a5 & 8;
    arg36 = 0;
    if (var_a0 != 0) {
        arg50 = (s64) var_a5;
        arg48 = 0;
        arg46 = 0;
        arg44 = 0;
        arg42 = 0;
        arg40 = 0;
        arg6 = 0;
        arg38 = var_t9;
        arg4 = var_a1;
        arg34 = var_a0;
        temp_v0 = mgrasGetFlushRanges((u64) var_a2->unk18, var_a2->unk20, sp);
        var_s0 = temp_v0;
        var_t8 = temp_v0 != 0;
        var_v0_2 = arg36;
        var_a0 = arg34;
        var_t9 = arg38;
        var_t3 = arg6;
        var_t2 = arg40;
        var_t1 = arg42;
        var_a1 = arg4;
        var_t0 = arg44;
        var_a7 = arg46;
        var_a6 = arg48;
        var_a2 = (void *) (s64) arg2;
        var_a5 = (s32) arg50;
        var_ra = arg52;
    }
    arg52 = var_ra;
    if (var_t8 == 0) {
        if ((var_a5 & 0x20) && (temp_t8 = var_a2->unk8, (temp_t8 != 0))) {
            temp_a6 = var_a2->unk4;
            if ((temp_a6 >= 5U) || (temp_a6 == 2) || (temp_t8 >= 0x1000U)) {
                var_a7 = 1;
                var_s0 = 0x16;
                goto block_20;
            }
            if (var_a1 == 0) {
                var_t1 = 1;
                var_s0 = 0xE;
                goto block_42;
            }
            temp_t2 = var_a1->unk70;
            arg10 = temp_t2;
            if (temp_a6 != 1) {
                var_a5_2 = (((u64) ((s64) temp_a6 << 0x20) >> 0x20) * 0x50) + temp_t2 + 0x280;
            } else {
                var_a5_2 = arg10->unk468 + 0x10;
            }
            temp_a6_2 = var_t9->unk20->unkD0;
            if (var_a5_2->unk0 == 0) {
                arg4 = var_a1;
                arg6 = var_t3;
                arg8 = (u64) var_a5_2;
                arg12 = temp_a6_2;
                if (var_a5_2->unk4 == 0) {
                    arg6 = 1;
                    goto block_40;
                }
            }
            arg2 = (s64) var_a2;
            arg46 = var_a7;
            arg42 = var_t1;
            arg6 = var_t3;
            arg36 = var_v0_2;
            arg4 = var_a1;
            arg8 = (u64) var_a5_2;
            arg34 = var_a0;
            temp_a1 = (u64) ((s64) temp_t8 << 0x20) >> 0x20;
            arg52 = var_ra;
            arg12 = temp_a6_2;
            var_s1 = kern_malloc(temp_a1 * 0x18, temp_a1, (u64) var_a2, temp_t2);
            temp_v0_2 = kern_malloc((s64) ((s64) arg2)->unk8 * 4);
            var_a0 = arg34;
            var_t1 = arg42;
            var_a7 = arg46;
            var_a2 = (void *) (s64) arg2;
            var_s2 = temp_v0_2;
            var_ra = arg52;
            if ((var_s1 == NULL) || (temp_v0_2 == NULL)) {
                var_a5_3 = 1;
            } else {
                var_a5_3 = 0;
            }
            if (var_a5_3 != 0) {
                goto block_39;
            }
            curproc_abi(var_a0);
            var_a0 = arg34;
            var_t1 = arg42;
            var_a7 = arg46;
            var_a2 = (void *) (s64) arg2;
            var_ra = arg52;
            if (copyin_xlate(((s64) arg2)->unk10, (s64) var_s1, (((u64) ((s64) ((s64) arg2)->unk8 << 0x20) >> 0x20) * 0x18) << 0, saved_reg_gp->unk-77E8) == 0) {
                var_t8_2 = var_a2->unk8;
                arg26 = 0U;
                if (var_t8_2 != 0) {
loop_47:
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a5 = (((u64) (arg26 << 0x20) >> 0x20) * 0x18) + var_s1;
                    temp_v1 = (temp_a5->unk10 + 0xFFF) & ~0xFFF;
                    temp_a5->unk10 = temp_v1;
                    if (((u32) (arg8->unk38 << 0xC) < temp_v1) || ((u32) temp_a5->unk0 >= (u32) arg8->unkC) || (temp_a5->unk8 & 0xFFF)) {
block_2:
                        var_s0 = 0x16;
                        goto block_3;
                    }
                    var_t8_2 = var_a2->unk8;
                    temp_at = arg26 + 1;
                    arg26 = temp_at;
                    if (temp_at >= var_t8_2) {
                        goto block_52;
                    }
                    goto loop_47;
                }
block_52:
                arg26 = 0U;
                if (var_t8_2 != 0) {
loop_53:
                    temp_a1_2 = (((u64) (arg26 << 0x20) >> 0x20) * 0x18) + var_s1;
                    temp_v0_3 = mgrasLockMem((void *) arg10, temp_a1_2->unk8, (u64) temp_a1_2->unk10, (s64) arg8->unk4C);
                    var_s0 = temp_v0_3;
                    if (temp_v0_3 != 0) {
                        temp_v1_2 = arg26 - 1;
                        arg26 = temp_v1_2;
                        if (temp_v1_2 != -1U) {
                            do {
                                temp_a1_3 = (((u64) (arg26 << 0x20) >> 0x20) * 0x18) + var_s1;
                                mgrasUnlockMem((void *) arg10, temp_a1_3->unk8, (s64) temp_a1_3->unk10, arg8->unk4C);
                                temp_v1_3 = arg26 - 1;
                                arg26 = temp_v1_3;
                            } while (temp_v1_3 != -1U);
                        }
                        goto block_3;
                    }
                    var_t8_2 = ((s64) arg2)->unk8;
                    temp_a3 = arg26 + 1;
                    arg26 = temp_a3;
                    if (temp_a3 >= var_t8_2) {
                        goto block_58;
                    }
                    goto loop_53;
                }
block_58:
                arg14 = 0;
                arg26 = 0U;
                arg22 = (s64) var_s2;
                arg24 = (s64) var_s1;
                if (var_t8_2 != 0) {
loop_67:
                    temp_a7 = arg24->unk0;
                    arg14 = (arg8->unk18 == temp_a7) ? 1 : arg14;
                    arg20 = (s64) temp_a7;
                    mgrasFillTxTbl(arg24->unk8, (u64) arg24->unk10, arg8->unk40, (arg8->unk38 * temp_a7) + 3);
                    temp_v0_4 = (u64) (arg20 << 0x20) >> 0x20;
                    temp_at_2 = temp_v0_4 * 8;
                    var_a5_4 = arg8->unk20 + temp_at_2;
                    temp_a1_4 = *var_a5_4;
                    arg18 = temp_at_2;
                    var_v0_3 = temp_v0_4 * 4;
                    if (temp_a1_4 != 0xBAD) {
                        arg16 = var_v0_3;
                        mgrasUnlockMem((void *) arg10, temp_a1_4, (s64) *(arg8->unk28 + var_v0_3), arg8->unk4C);
                        var_v0_3 = arg16;
                        var_a5_4 = arg8->unk20 + arg18;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg8->unk10 = (s32) (arg8->unk10 - 1);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    *var_a5_4 = arg24->unk8;
                    *(arg8->unk28 + var_v0_3) = arg24->unk10;
                    bcopy((void *) arg22, arg8->unk30 + var_v0_3, 4U);
                    temp_at_3 = arg26 + 1;
                    arg26 = temp_at_3;
                    arg24 += 0x18;
                    arg22 += 4;
                    if (temp_at_3 < (u32) ((s64) arg2)->unk8) {
                        goto loop_67;
                    }
                }
                if (arg14 != 0) {
                    mgrasPlugTxTblHoles((void *) arg8);
                }
                temp_a3_2 = arg8->unk38;
                temp_a2 = arg8->unkC;
                dki_dcache_wb(arg8->unk40 + 0xC, (((u64) ((temp_a2 * temp_a3_2) << 0x20) >> 0x20) * 4) << 0, temp_a2, (u64) temp_a3_2);
                var_a0 = arg34;
                var_t1 = arg42;
                var_a7 = arg46;
                var_a2 = (void *) (s64) arg2;
                var_ra = arg52;
                if (RRM_CheckValidFault(arg4->unk40) != 0) {
                    mgrasReleasePoolMemory(arg10, arg8, 1);
                    var_v0 = 0xE;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_v0_2 = arg36;
                    arg12->unk50900 = 0;
                    goto block_41;
                }
            } else {
block_39:
                var_v0_2 = 1;
block_40:
                var_s0 = 0xE;
block_41:
                var_t2 = arg6;
block_42:
                var_t0 = var_t1;
block_20:
                var_a6 = var_a7;
                goto block_21;
            }
        } else {
block_21:
            arg52 = var_ra;
            if (var_a6 == 0) {
                arg52 = var_ra;
                if (var_t0 == 0) {
                    arg52 = var_ra;
                    if (var_t2 == 0) {
                        arg52 = var_ra;
                        if (var_v0_2 == 0) {
                            arg52 = var_ra;
                            if (var_a0 != 0) {
                                mgrasDmaFlushUtil(var_a2->unk18, (void *) arg0, var_a2);
                            }
                        }
                    }
                }
            }
            goto block_3;
        }
    } else {
block_3:
        if (var_s1 == NULL) {
            if (var_s2 != NULL) {
                goto block_10;
            }
        } else {
            kern_free(var_s1);
            if (var_s2 != NULL) {
block_10:
                kern_free(var_s2);
            }
        }
        if (arg0 != 0) {
            kern_free((void *) arg0);
        }
        var_v0 = var_s0;
    }
    return var_v0;
}

s32 MgrasDmaEditRelease(void *arg0, void *arg1, void *arg2, u64 arg4, s64 arg6, s64 arg8, u64 arg10, s64 arg12, s64 arg14, s64 arg20, u64 arg22, s64 arg24, s64 arg26) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_t1_2;
    s32 var_s0;
    s32 var_t3;
    s32 var_v0;
    s64 temp_a4_2;
    s64 temp_a5_3;
    s64 temp_a5_4;
    s64 temp_a7;
    s64 temp_v0;
    s64 var_a6;
    s64 var_ra;
    u32 temp_a2;
    u32 temp_a5_2;
    u32 temp_t0;
    u32 temp_t1;
    u32 var_t0;
    u32 var_t2;
    u64 temp_a4;
    u64 var_a3;
    u64 var_a5;
    u64 var_v0_2;
    void *var_a2;
    void *var_s1;

    var_ra = saved_reg_ra;
    temp_a5 = arg2->unk0;
    var_s0 = 0;
    var_s1 = NULL;
    if (temp_a5 & ~0x40) {
        goto block_1;
    }
    if ((temp_a5 & 0x40) && (temp_t0 = arg2->unk8, (temp_t0 != 0))) {
        temp_a5_2 = arg2->unk4;
        if ((temp_a5_2 >= 5U) || (var_a3 = temp_t0 < 0x1000U, (temp_a5_2 == 2)) || (temp_a5_2 == 3) || (temp_a5_2 == 4) || (var_a3 == 0)) {
            goto block_1;
        }
        if (arg1 == NULL) {
            var_s0 = 0xE;
            goto block_2;
        }
        temp_a7 = arg1->unk70;
        arg6 = temp_a7;
        if (temp_a5_2 != 1) {
            var_a3 = (u64) ((s64) temp_a5_2 << 0x20) >> 0x20;
            var_a2 = (var_a3 * 0x50) + temp_a7 + 0x280;
        } else {
            var_a2 = arg6->unk468 + 0x10;
        }
        temp_a5_3 = arg0->unk20->unkD0;
        if (var_a2->unk0 == 0) {
            arg0 = (s64) arg2;
            arg2 = (s64) arg1;
            arg4 = (u64) var_a2;
            arg8 = temp_a5_3;
            if (var_a2->unk4 == 0) {
                var_s0 = 0xE;
                goto block_2;
            }
        }
        arg0 = (s64) arg2;
        arg2 = (s64) arg1;
        arg4 = (u64) var_a2;
        arg8 = temp_a5_3;
        temp_v0 = kern_malloc(((u64) ((s64) temp_t0 << 0x20) >> 0x20) * 4, (u64) var_a2, var_a3);
        arg14 = temp_v0;
        var_s1 = (void *) temp_v0;
        var_ra = arg26;
        if (temp_v0 == 0) {
            goto block_22;
        }
        var_ra = arg26;
        if (copyin(((s64) arg0)->unk10, arg14, ((s64) ((s64) arg0)->unk8 * 4) << 0, temp_v0) == 0) {
            var_t0 = ((s64) arg0)->unk8;
            var_t3 = 0;
            var_a6 = 0;
            var_a5 = 0;
            if (var_t0 != 0) {
                var_t2 = arg4->unkC;
loop_28:
                temp_t1 = *((((u64) (var_a5 << 0x20) >> 0x20) * 4) + arg14);
                if (temp_t1 < var_t2) {
                    if (*(arg4->unk20 + (((u64) ((s64) temp_t1 << 0x20) >> 0x20) * 8)) != 0xBAD) {
                        var_t3 += 1;
                    }
                    var_a5 += 1;
                    var_a6 = (arg4->unk18 == temp_t1) ? 1 : var_a6;
                    if (var_a5 < var_t0) {
                        goto loop_28;
                    }
                    goto block_33;
                }
                goto block_1;
            }
            var_t2 = arg4->unkC;
block_33:
            if ((u32) (arg4->unk10 + var_t3) >= var_t2) {
block_1:
                var_s0 = 0x16;
                goto block_2;
            }
            var_v0_2 = 0;
            if (var_t0 != 0) {
loop_39:
                temp_t1_2 = *((((u64) (var_v0_2 << 0x20) >> 0x20) * 4) + var_s1);
                temp_a4 = (u64) ((s64) temp_t1_2 << 0x20) >> 0x20;
                arg10 = temp_a4;
                temp_a4_2 = temp_a4 * 8;
                arg12 = temp_a4_2;
                if (*(arg4->unk20 + temp_a4_2) != 0xBAD) {
                    temp_a3 = arg4->unk38;
                    arg24 = var_a6;
                    arg22 = var_v0_2;
                    mgrasJamTxTbl(arg4->unk14, arg4->unk40, (temp_a3 * temp_t1_2) + 3, temp_a3);
                    temp_a5_4 = arg10 * 4;
                    arg20 = temp_a5_4;
                    mgrasUnlockMem((void *) arg6, *(arg4->unk20 + arg12), (s64) *(arg4->unk28 + temp_a5_4), arg4->unk4C);
                    var_v0_2 = arg22;
                    var_a6 = arg24;
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    *(arg4->unk20 + arg12) = 0xBAD;
                    *(arg4->unk28 + arg20) = 1;
                    arg4->unk10 = (s32) (arg4->unk10 + 1);
                    var_t0 = ((s64) arg0)->unk8;
                }
                var_v0_2 += 1;
                if (var_v0_2 < var_t0) {
                    goto loop_39;
                }
            }
            if (var_a6 != 0) {
                mgrasPlugTxTblHoles((void *) arg4);
            }
            temp_a3_2 = arg4->unk38;
            temp_a2 = arg4->unkC;
            dki_dcache_wb(arg4->unk40 + 0xC, (((u64) ((temp_a2 * temp_a3_2) << 0x20) >> 0x20) * 4) << 0, temp_a2, (u64) temp_a3_2);
            var_ra = arg26;
            if (RRM_CheckValidFault(((s64) arg2)->unk40) != 0) {
                mgrasReleasePoolMemory(arg6, arg4, 1);
                var_v0 = 0xE;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg8->unk50900 = 0;
                goto block_2;
            }
        } else {
block_22:
            var_s0 = 0xE;
            goto block_2;
        }
    } else {
block_2:
        if (var_s1 != NULL) {
            arg26 = var_ra;
            kern_free(var_s1);
        }
        var_v0 = var_s0;
    }
    return var_v0;
}

s32 MgrasDmaUpdateTMTLB(void *arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6) {
    s32 var_a0;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a4;

    temp_a4 = arg0->unk70->unk468;
    var_a0 = 0x16;
    if (temp_a4 != 0) {
        arg4 = temp_a4 + 0x10;
        arg2 = arg1;
        if (temp_a4->unk10 != 0) {
            var_a0 = 0xE;
            if (RRM_CheckValidFault(arg0->unk40) == 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a2 = arg2->unkD0;
                temp_a2_2 = temp_a2 + 0x50000;
                temp_a2->unk50900 = 0;
                temp_a2->unk50084 = 0x482208;
                arg0 = temp_a2_2;
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                ((s64) arg0)->unk80 = (s64) ((arg4->unk4C != 0) | kvtophys(arg4->unk40 + 0xC, 0x482208, temp_a2_2, 0x50000));
                ((s64) arg0)->unk80 = (s64) (((u64) ((arg4->unkC * arg4->unk38) << 0x20) >> 0x20) | saved_reg_gp->unk-77F0);
                var_a0 = 0;
            }
        }
    } else {
        var_a0 = 0xE;
    }
    return var_a0;
}

s32 irix5_to_mgras_pointers_xlate(u64 arg0, void *arg1, s64 arg2, void *arg3, s64 arg4) {
    s32 temp_at;
    s32 var_a2;
    s64 var_a0;
    u32 var_a0_2;
    void *var_v0;

    var_v0 = arg1;
    if (arg0 != 0) {
        var_a2 = arg2 - 1;
        var_a0 = arg3->unk10;
        if (var_a2 != -1) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a2 -= 1;
                var_v0 += 8;
                temp_at = *var_a0;
                var_a0 += 4;
                var_v0->unk-8 = (s64) temp_at;
            } while (var_a2 != -1);
        }
    } else {
        var_a0_2 = arg2 * 4;
        if ((u32) arg3->unk0 >= var_a0_2) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            arg0 = (u64) var_a0_2;
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc((u64) var_a0_2);
            var_a0_2 = (u32) arg0;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = var_a0_2;
    }
    return 0;
}

s32 irix5_to_mgras_dma_flush_defn_xlate(u64 arg0, s64 *arg1, s64 arg2, void *arg3, s64 arg4) {
    s32 temp_at;
    s32 var_a2;
    s64 *var_v0;
    s64 var_a0;
    u32 var_a0_2;

    var_v0 = arg1;
    if (arg0 != 0) {
        var_a2 = arg2 - 1;
        var_a0 = arg3->unk10;
        if (var_a2 != -1) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *var_v0 = (s64) var_a0->unk0;
                var_a2 -= 1;
                var_v0 += 0x10;
                temp_at = var_a0->unk4;
                var_a0 += 8;
                var_v0->unk-8 = temp_at;
            } while (var_a2 != -1);
        }
    } else {
        var_a0_2 = arg2 * 8;
        if ((u32) arg3->unk0 >= var_a0_2) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            arg0 = (u64) var_a0_2;
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc((u64) var_a0_2);
            var_a0_2 = (u32) arg0;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = var_a0_2;
    }
    return 0;
}

s32 irix5_to_mgras_dma_replace_defn_xlate(u64 arg0, void *arg1, s64 arg2, void *arg3, s64 arg4) {
    s32 temp_at;
    s32 var_a2;
    s64 var_a0;
    u32 var_a0_2;
    void *var_v0;

    var_v0 = arg1;
    if (arg0 != 0) {
        var_a2 = arg2 - 1;
        var_a0 = arg3->unk10;
        if (var_a2 != -1) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_v0->unk0 = (s32) var_a0->unk0;
                var_v0->unk8 = (s64) var_a0->unk4;
                var_a2 -= 1;
                var_v0 += 0x18;
                temp_at = var_a0->unk8;
                var_a0 += 0xC;
                var_v0->unk-8 = temp_at;
            } while (var_a2 != -1);
        }
    } else {
        var_a0_2 = arg2 * 0xC;
        if ((u32) arg3->unk0 >= var_a0_2) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            arg0 = (u64) var_a0_2;
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc((u64) var_a0_2);
            var_a0_2 = (u32) arg0;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = var_a0_2;
    }
    return 0;
}
