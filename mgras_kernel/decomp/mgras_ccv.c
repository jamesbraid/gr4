void writeCC(s32 arg0, s32 arg1) {
    s32 temp_a3;
    s64 temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a3 = arg0 ^ 0x3F;
    temp_v0 = saved_reg_gp->unk-7800;
    temp_v0->unk70080 = (s64) (saved_reg_gp->unk-77F8 | saved_reg_gp->unk-7800);
    temp_v0->unk70080 = (s64) (((u64) ((((temp_a3 & 0x20) << 0xA) | (((temp_a3 & 0x10) << 0x13) | (((temp_a3 & 8) << 0x1C) | (((temp_a3 & 4) << 0xC) | (((temp_a3 & 2) << 0x15) | (((temp_a3 & 1) << 0x1E) | ((arg1 != 1) ? 0x42 : 0xC2))))))) << 0x20) >> 0x20) | (s64) saved_reg_gp->unk-77F8);
}

void readCC(s32 *arg0) {
    s32 temp_v1;
    s64 temp_a4;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a4 = saved_reg_gp->unk-7800;
    temp_a4->unk70080 = (s64) (saved_reg_gp->unk-77F8 | saved_reg_gp->unk-7800);
    temp_v1 = temp_a4->unk7C574;
    *arg0 = ((u32) (temp_v1 & 0x80000000) >> 0x1C) | ((u32) (temp_v1 & 0x4000) >> 0xC) | (((u32) (temp_v1 & 0x400000) >> 0x15) | ((u32) (temp_v1 & 0x40000000) >> 0x1E)) | (((u32) (temp_v1 & 0x8000) >> 0xA) | ((u32) (temp_v1 & 0x800000) >> 0x13));
}

void writeData(s64 arg0) {
    s64 temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0 = saved_reg_gp->unk-7800;
    temp_v0->unk70080 = (s64) (saved_reg_gp->unk-77F4 | saved_reg_gp->unk-7800);
    temp_v0->unk70080 = (s64) (((u64) (arg0 << 0x20) >> 0x20) | saved_reg_gp->unk-77F8);
}

void readData(s32 *arg0) {
    s64 temp_a2;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a2 = saved_reg_gp->unk-7800;
    temp_a2->unk70080 = (s64) (saved_reg_gp->unk-77F4 | saved_reg_gp->unk-7800);
    *arg0 = temp_a2->unk7C574;
}

s32 countOnes(u32 val) {
    s32 var_v0;
    u32 var_a0;

    var_a0 = val;
    var_v0 = 0;
    if (var_a0 != 0) {
loop_3:
        var_a0 = var_a0 >> 1;
        if (var_a0 & 1) {
            var_v0 += 1;
        }
        if (var_a0 != 0) {
            goto loop_3;
        }
    }
    return var_v0;
}

s32 PhaseOne(mgras_hw *base) {
    s32 temp_lo;
    s32 var_s0;
    s32 var_s1;
    s32 var_s4;
    s32 var_s5;
    s32 var_s7;
    u32 temp_a0;

    var_s5 = 0;
    var_s4 = 0;
    var_s1 = 0;
loop_1:
    if (var_s1 < 0x40) {
        writeCC(var_s1, 2);
        var_s0 = 0;
        var_s7 = 0;
        do {
            writeData(-1);
            readData(sp);
            var_s7 += 1;
            temp_a0 = (s32) base & 0xFF;
            base = (mgras_hw *) temp_a0;
            var_s0 += countOnes(temp_a0);
        } while (var_s7 < 0xA);
        temp_lo = (var_s0 - var_s5) * var_s1;
        var_s5 = var_s0;
        var_s1 += 1;
        var_s4 += temp_lo;
        if (var_s0 >= 0x50) {
            return (var_s4 * 0x2B) - 0x6B8;
        }
        goto loop_1;
    }
    return -1;
}

s32 PhaseTwo(mgras_hw *base) {
    s32 temp_a0;
    s32 temp_a3;
    s32 var_s0;
    s32 var_s4;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_2;
    u32 temp_v1;

    var_s5 = 0;
    var_s0 = 0;
    var_s4 = 0xF423F;
    if ((s32) base > 0) {
loop_2:
        if (var_s0 < 0x40) {
            writeCC(var_s0, 1);
            readCC(sp);
            temp_a0 = (s32) (((((s32) base * 4) - base) * 8) + base) << 6;
            temp_a3 = temp_a0 - base;
            var_v0_2 = temp_a3;
            if (temp_a3 < 0) {
                var_v0_2 = base - temp_a0;
            }
            if (var_v0_2 < var_s4) {
                var_s4 = var_v0_2;
                var_s5 = var_s0;
            }
            var_s0 += 1;
            if (temp_a0 >= (s32) base) {
                goto block_7;
            }
            goto loop_2;
        }
        var_v0 = -2;
    } else {
block_7:
        temp_v1 = (var_s5 + var_s0) - 1;
        var_v0 = (s32) ((temp_v1 >> 0x1F) + temp_v1) >> 1;
    }
    return var_v0;
}

u32 median(u32 *arr, s32 len) {
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v1;
    s64 var_a4;
    s64 var_a5;
    s64 var_a6;
    s64 var_v0_2;
    u32 *temp_a4;
    u32 *temp_a4_2;
    u32 *temp_v1_2;
    u32 temp_a1;
    u32 temp_at_3;
    u32 temp_v1_3;
    u32 var_v0;

    var_a5 = 0;
    temp_at = len >> 0x1F;
    temp_a7 = (s32) (((u32) len >> 0x1F) + len) >> 1;
    temp_at_2 = len >> 0x1F;
    var_a6 = 1;
    if (temp_a7 >= 0) {
loop_3:
        var_v0_2 = var_a5;
        var_a4 = var_a6;
        if (var_a6 < len) {
            do {
                var_v0_2 = ((s32) arr[var_a4] < (s32) arr[var_v0_2]) ? var_a4 : var_v0_2;
                var_a4 += 1;
            } while (var_a4 < len);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a4 = &arr[var_v0_2];
        temp_v1 = var_a5 * 4;
        var_a5 += 1;
        temp_at_3 = *temp_a4;
        temp_v1_2 = temp_v1 + arr;
        *temp_a4 = *temp_v1_2;
        var_a6 += 1;
        *temp_v1_2 = temp_at_3;
        if (temp_a7 >= var_a5) {
            goto loop_3;
        }
    }
    temp_a4_2 = &arr[(s64) temp_a7];
    temp_a1 = temp_a4_2->unk0;
    if ((((((len ^ temp_at) - temp_at) & 1) ^ temp_at_2) - temp_at_2) != 0) {
        var_v0 = temp_a1;
    } else {
        temp_v1_3 = temp_a4_2->unk-4 + temp_a1;
        var_v0 = (u32) ((s32) ((temp_v1_3 >> 0x1F) + temp_v1_3) >> 1);
    }
    return var_v0;
}

void CCInit(mgras_hw *base, s64 arg12) {
    s32 temp_at;
    s32 temp_lo;
    s64 var_s2;
    u32 *temp_v0;

    unksp20 = M2C_ERROR(/* Read from unset register $a1 */);
    temp_v0 = kern_calloc((s32) base, 4);
    if (temp_v0 != NULL) {
        var_s2 = 0;
        if ((s32) base > 0) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_at = var_s2 * 4;
                var_s2 += 1;
                *(temp_at + temp_v0) = PhaseTwo(PhaseOne(M2C_ERROR(/* Read from unset register $a0 */)));
            } while (var_s2 < (s32) base);
        }
        base = median(temp_v0, (s32) base);
        kern_free(temp_v0);
        temp_lo = (s32) ((s64) base * unksp20) / 100;
        M2C_TRAP_IF(0x64 == 0);
        unksp10 = (s64) temp_lo;
        writeCC(temp_lo, 1);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void MgrasInitCCR(mgras_hw *base, mgras_info_t *info, s64 arg2, s64 arg16, s64 arg18, s64 arg20, s64 arg22) {
    mgras_hw *var_v0;
    s32 temp_a4;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 var_s1;
    s32 var_s2;
    s32 var_s5;
    s64 temp_s8;
    s64 temp_v0;
    s64 var_s7;

    arg2 = (s64) info;
    temp_s4 = splhi();
    if (saved_reg_gp->unk-7800 == 0) {
        init_mutex((void *) (s64) saved_reg_gp->unk-7800);
        saved_reg_gp->unk-7800 = 1;
    }
    splx(temp_s4);
    mutex_lock((void *) (s64) saved_reg_gp->unk-7800);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    base->cfifo.bydouble.data = saved_reg_gp->unk-77F0;
    var_v0 = base;
    var_s7 = 0;
    saved_reg_gp->unk-7800 = (s64) base;
    if ((s32) arg2->unk2C > 0) {
        temp_s8 = saved_reg_gp->unk-77E8;
loop_4:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_s5 = 0;
        ((s64) saved_reg_gp->unk-7800)->unk70080 = (s64) (((u64) (var_s7 << 0x20) >> 0x20) | temp_s8);
loop_6:
        var_s1 = 0;
        var_s2 = 4;
        temp_a4 = var_s5 == 0;
        var_s5 += 1;
        temp_s4_2 = (temp_a4 != 0) ? 0 : 0x10000000;
loop_9:
        temp_v0 = (s64) saved_reg_gp->unk-7800;
        if (temp_v0->unk70100 & 0x1F) {
            do {

            } while (temp_v0->unk70100 & 0x1F);
        }
        if (temp_v0->unk70004 & 0x7F) {
            do {

            } while (temp_v0->unk70004 & 0x7F);
        }
        saved_reg_gp->unk-77F4 = (s32) (((var_s2 << 0x18) | temp_s4_2) + 2);
        saved_reg_gp->unk-77F8 = (s32) ((var_s1 << 0x18) | temp_s4_2 | 0xC);
        readData(sp);
        CCInit((mgras_hw *)0x33);
        if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
            writeCC(0x19, 1);
        }
        var_s1 += 1;
        writeData((s64) base);
        var_s2 += 1;
        if (var_s1 < 3) {
            goto loop_9;
        }
        if (var_s5 < 2) {
            goto loop_6;
        }
        var_s7 += 1;
        if (var_s7 < (s32) arg2->unk2C) {
            goto loop_4;
        }
        var_v0 = (mgras_hw *) (s64) saved_reg_gp->unk-7800;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_v0->cfifo.bydouble.data = saved_reg_gp->unk-77E0;
    mutex_unlock((void *) (s64) saved_reg_gp->unk-7800);
}
