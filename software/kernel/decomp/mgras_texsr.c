s32 MgrasCtxsw(s64, s64, s64, s64);                 /* extern */
? MgrasFinish(s64);                                 /* extern */
? MgrasInstallTxTbl_Kern(s64, ?, s64, s32);         /* extern */
? MgrasResetTxTbl_Kern(s64, ?);                     /* extern */
? _MgrasWriteTexBase(s64, ?);                       /* extern */
void MgrasCleanTexStruct(s64 arg0, s64 arg1);       /* static */

void DeriveInfo(s64 arg0, s32 arg1, void *arg2, s32 arg3) {
    s32 temp_at;
    s32 var_a6;
    s64 var_a3;
    u8 var_a5;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_a6 = 0;
    temp_at = ((arg0 >> 1) ^ arg0) & 0x55;
    arg2->unk25 = 0;
    arg2->unk26 = (s8) (temp_at != 0);
    arg2->unk24 = (u8) ((arg1 == 0) & (temp_at == 0));
    if (temp_at != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg2->unk25 = (s8) ((arg0 & 0xAA) != 0);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg2->unk23 = 0;
    arg2->unk27 = 0U;
    arg2->unk28 = 0;
    M2C_TRAP_IF(0x11 == 0);
    if ((arg0 % 17) != 0) {
        M2C_TRAP_IF(7 == 0);
        if ((arg0 % 7) != 0) {
            if (arg3 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg2->unk28 = 1;
            }
            var_a3 = 3;
            M2C_TRAP_IF(5 == 0);
            if ((arg0 % 5) != 0) {
                if (!(arg0 & 3)) {
                    var_a5 = arg2->unk27;
                    do {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_a3 *= 4;
                        var_a5 = (var_a5 + 1) & 0xFF;
                        arg2->unk27 = var_a5;
                    } while (!(arg0 & var_a3));
                }
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a6 = 1;
                arg2->unk23 = 1;
                arg2->unk27 = (u8) ((arg0 & 0xF0) != 0);
            }
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a6 = 2;
            arg2->unk23 = 2;
        }
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a6 = 3;
        arg2->unk23 = 3;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg2->unkC = (s32) (0x20 << (arg1 << 0));
    arg2->unk8 = (s32) (((var_a6 + 1) << 6) << arg2->unk24);
}

s32 MgrasSaveOverlap(s64 arg0, void *arg1, s64 arg2) {
    s32 temp_a3;
    s32 temp_s5;
    s32 temp_s8_2;
    s32 temp_v0_2;
    s32 var_s1;
    s32 var_s7;
    s64 *temp_s4_3;
    s64 temp_a0;
    s64 temp_s2;
    s64 temp_s3;
    s64 temp_s4;
    s64 temp_s4_2;
    s64 temp_s8;
    s64 temp_v0;
    u16 temp_s0;
    u16 var_v0;
    u64 var_s0;

    unksp40 = arg0;
    var_v0 = arg0->unk1A;
    temp_s8 = arg1->unk6D0;
    temp_s3 = arg2;
    temp_s0 = arg0->unk18;
    var_s1 = 0;
    var_s7 = 0;
    arg0 = (s64) arg1;
    temp_s5 = temp_s8 + 0x120;
    arg2 = arg1->unkD0;
    temp_s8_2 = temp_s8 + 0x20;
    var_s0 = (u64) ((s64) temp_s0 << 0x20) >> 0x20;
    if ((s32) var_v0 > 0) {
loop_4:
        temp_s4 = (s64) var_s0 >> 0x3F;
        temp_s4_2 = (s64) var_s0 >> 0x3F;
        temp_s2 = ((((var_s0 ^ temp_s4) - temp_s4) & 0xFF) ^ temp_s4_2) - temp_s4_2;
        temp_s4_3 = (temp_s2 * 8) + temp_s5;
        temp_a0 = *temp_s4_3;
        var_s1 += 1;
        var_s0 += 1;
        if (temp_a0 != temp_s3) {
            if (temp_a0 != 0) {
                if (var_s7 == 0) {
                    MgrasFinish(arg2);
                    temp_v0 = arg0->unk6D0;
                    temp_a3 = temp_v0->unk8;
                    if (temp_a3 != 0) {
                        MgrasInstallTxTbl_Kern(arg2, 2, temp_v0->unk0, temp_a3);
                    }
                    var_s7 = 1;
                }
                temp_v0_2 = MgrasSaveTexData((mgras_data_t *) arg0, (struct mgras_rnode_s *) temp_a0, temp_s2 & 0xFFFF);
                if ((temp_v0_2 < 0) && (temp_v0_2 == -1)) {
                    cmn_err(4, (s8 *) saved_reg_gp->unk-7800);
                    MgrasCleanTexStruct(arg0, *temp_s4_3);
                } else {
                    goto block_2;
                }
            } else {
block_2:
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *(temp_s2 + temp_s8_2) = unksp40->unk20;
                *temp_s4_3 = temp_s3;
                var_v0 = unksp40->unk1A;
                goto block_3;
            }
        } else {
block_3:
            if (var_s1 < (s32) var_v0) {
                goto loop_4;
            }
        }
    }
    if (var_s7 != 0) {
        MgrasResetTxTbl_Kern(arg2, 2);
    }
    return var_s7;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x60, 0x64, 0x70, 0x74, 0x78, 0x7c], gap at: 0x58. */
s32 MgrasRestoreOverlap(s64 arg0, void *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6) {
    s32 *temp_a5;
    s32 *temp_v1;
    s32 temp_a4_2;
    s32 temp_at;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_s3;
    s32 var_s6;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 *temp_s4;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_s1;
    s64 temp_s2;
    s64 temp_s8;
    s64 var_a3;
    s64 var_s0;

    temp_a0 = arg0;
    arg0 = arg3;
    temp_s8 = arg2;
    temp_a0_2 = temp_a0 + 0x6C0;
    arg6 = temp_a0_2;
    temp_s1 = arg1->unk468->unk8;
    mutex_lock((void *) temp_a0_2);
    temp_a4 = temp_a0->unk6D0;
    var_s0 = 0;
    var_s3 = 0;
    arg2 = 0;
    unksp58 = temp_a4 + 0x20;
    var_s6 = 0;
    unksp50 = (u64) ((s64) temp_s1->unk8->unk20 << 0x20) >> 0x20;
    if ((s32) temp_s1->unk0 > 0) {
        arg4 = (s64) arg1;
loop_17:
        var_v0 = var_s0 * 8;
        if ((var_v0 + temp_s1)->unk10 == 0) {
loop_18:
            var_s0 = (var_s0 + 1) & 0xFFFF;
            var_v0 = var_s0 * 8;
            if (var_s0 < 0x101) {
                if ((var_v0 + temp_s1)->unk10 == 0) {
                    goto loop_18;
                }
            } else {
                var_s0 = 0xFF;
                cmn_err(4, saved_reg_gp->unk-7800 + 0x30);
                var_v0 = 0x7F8;
            }
        }
        temp_s4 = var_v0 + (temp_a4 + 0x120);
        temp_s2 = *temp_s4;
        var_v0_2 = 0;
        var_s3 = (var_s3 + 1) & 0xFFFF;
        if (temp_s2 != 0) {
            if (temp_s1 != temp_s2) {
                if (var_s6 == 0) {
                    if (temp_s8 != arg0) {
                        var_a3 = arg4;
                        if (((u32) (arg4->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_a2 = 0x16;
                            temp_s8->unk38 = (s32) (temp_s8->unk38 | 0x08000000);
                            var_a3 += 0x7C;
                            do {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_a2 -= 1;
                                temp_a5 = var_v0_2 + (temp_s8 + 0x7C);
                                temp_a4_2 = *(var_v0_2 + var_a3);
                                var_v0_2 += 4;
                                *temp_a5 = temp_a4_2;
                            } while (var_a2 > 0);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            arg4->unk38 = (s32) (arg4->unk38 & 0xF7FFFFFF);
                        }
                        if (MgrasCtxsw(temp_a0, temp_s8, arg0, var_a3) >= 0) {
                            var_s6 = 1;
                            goto block_2;
                        }
                        var_s6 = -1;
                    } else {
block_2:
                        if (arg2 == 0) {
                            MgrasFinish(temp_a0->unkD0);
                            _MgrasWriteTexBase(temp_a0->unkD0, 0);
                            temp_a2 = temp_a0->unk6D0;
                            MgrasInstallTxTbl_Kern(temp_a0->unkD0, 2, temp_a2->unk0, temp_a2->unk8);
                            arg2 = 1;
                        }
                        goto block_3;
                    }
                } else {
block_3:
                    temp_v0 = MgrasSaveTexData((mgras_data_t *) temp_a0, (struct mgras_rnode_s *) temp_s2, (u16) var_s0);
                    if (temp_v0 >= 0) {
                        goto block_4;
                    }
                    if (temp_v0 != -1) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        *temp_s4 = 0;
                        *(var_s0 + unksp58) = 0;
                        goto block_4;
                    }
                    cmn_err(4, saved_reg_gp->unk-7800 + 0x58);
                    MgrasCleanTexStruct(temp_a0, temp_s2);
                }
            } else {
                goto block_16;
            }
        } else {
block_4:
            temp_a3 = temp_s8 + 0x7C;
            var_a2_2 = 0x16;
            if (temp_s1 != temp_s2) {
                if (var_s6 == 0) {
                    if (temp_s8 != arg0) {
                        if (((u32) (arg4->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_v0_3 = 0;
                            temp_s8->unk38 = (s32) (temp_s8->unk38 | 0x08000000);
                            do {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_a2_2 -= 1;
                                temp_v1 = var_v0_3 + temp_a3;
                                temp_at = *(var_v0_3 + (arg4 + 0x7C));
                                var_v0_3 += 4;
                                *temp_v1 = temp_at;
                            } while (var_a2_2 > 0);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            arg4->unk38 = (s32) (arg4->unk38 & 0xF7FFFFFF);
                        }
                        if (MgrasCtxsw(temp_a0, temp_s8, arg0, temp_a3) >= 0) {
                            var_s6 = 1;
                            goto block_13;
                        }
                        var_s6 = -1;
                    } else {
block_13:
                        if (arg2 == 0) {
                            MgrasFinish(temp_a0->unkD0);
                            _MgrasWriteTexBase(temp_a0->unkD0, 0);
                            temp_a2_2 = temp_a0->unk6D0;
                            MgrasInstallTxTbl_Kern(temp_a0->unkD0, 2, temp_a2_2->unk0, temp_a2_2->unk8);
                            arg2 = 1;
                        }
                        goto block_14;
                    }
                } else {
block_14:
                    if (MgrasRestoreTexData((mgras_data_t *) temp_a0, (struct mgras_rnode_s *) temp_s1, (u16) var_s0) >= 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        *temp_s4 = temp_s1;
                        *(var_s0 + unksp58) = (s8) unksp50;
                        goto block_16;
                    }
                    cmn_err(4, saved_reg_gp->unk-7800 + 0x88);
                    MgrasCleanTexStruct(temp_a0, temp_s1);
                }
            } else {
block_16:
                var_s0 = (var_s0 + 1) & 0xFFFF;
                if (var_s3 < (s32) temp_s1->unk0) {
                    goto loop_17;
                }
            }
        }
    }
    if (arg2 != 0) {
        MgrasResetTxTbl_Kern(temp_a0->unkD0, 2);
    }
    mutex_unlock((void *) arg6);
    return var_s6;
}

void MgrasCleanTexStruct(void *arg0, s16 *arg1) {
    s32 temp_a4;
    s64 temp_a5;
    s64 var_a3;
    void *temp_a4_2;

    var_a3 = 0;
loop_3:
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    (arg0->unk6D0 + var_a3)->unk20 = 0;
    temp_a4 = var_a3 * 8;
    (arg0->unk6D0 + temp_a4)->unk120 = 0;
    temp_a4_2 = temp_a4 + arg1;
    temp_a5 = temp_a4_2->unk10;
    var_a3 += 1;
    if (temp_a5 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *temp_a5 = (s64) arg0->unk6D0->unk10;
        arg0->unk6D0->unk10 = (s64) temp_a4_2->unk10;
        temp_a4_2->unk10 = 0;
    }
    if (var_a3 < 0x100) {
        goto loop_3;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    *arg1 = 0;
}
/* Warning: struct mgras_rnode_s is not defined (only forward-declared) */
