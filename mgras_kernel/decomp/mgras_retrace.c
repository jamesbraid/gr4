s32 MgrasFlushHQ3(void *, s64, ?, ?);               /* extern */
? MgrasValidateBanks(void *, void *);               /* extern */
? init_sema(void *, ?, ?, ?);                       /* extern */
? init_sv(void *, ?, s64, s64);                     /* extern */
void *kern_malloc(?);                               /* extern */
s64 mgras_baseindex(s64, s32);                      /* extern */
? mgras_error(void *, s64);                         /* extern */
s32 mutex_mine(void *);                             /* extern */
s32 psema(void *, ?);                               /* extern */
? rrmValidateBuffer(s64, s64);                      /* extern */
? rrmValidateMGRSwapBuf(s64, s32, s32, s64);        /* extern */
? rrmValidateRetrace(void *);                       /* extern */
? rrmValidateVideoSync(mgras_data_t *, s64, s32);   /* extern */
? sv_broadcast(void *);                             /* extern */
? sv_destroy(s32);                                  /* extern */
? sv_wait(void *, ?, void *, ?);                    /* extern */
s32 sv_waitq(s32);                                  /* extern */
s32 timeout(s64, s64, ?);                           /* extern */
? untimeout(s32);                                   /* extern */
? vsema(void *);                                    /* extern */
void MgrasCcvUpdate(void *arg0, s64 arg2, u64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16); /* static */
void mgras_update_pp1ccv(s64 arg0, u64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12); /* static */

void MgrasRetraceInit(mgras_data_t *data, s64 arg4, s64 arg6, s64 arg8) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_s5;
    s32 temp_s5_2;
    s64 temp_a0_2;
    s64 temp_a3;
    s64 temp_s5_3;
    s64 temp_v0;
    s64 var_s1;
    s64 var_s4;
    s64 var_s4_2;
    s64 var_s4_3;
    s64 var_s5;

    var_s4 = saved_reg_s4;
    var_s5 = saved_reg_s5;
    temp_v0 = data->unkD8;
    if (temp_v0 != 0) {
        var_s1 = temp_v0;
        var_s4_2 = 0;
        do {
            temp_s5 = (var_s4_2 * 0x28) + var_s1;
            var_s4_2 += 1;
            temp_s5_2 = temp_s5 + 0x48;
            if (sv_waitq(temp_s5_2) == 0) {
                sv_destroy(temp_s5_2);
            }
        } while (var_s4_2 < 0x28);
        var_s5 = arg4;
        var_s4 = arg8;
    } else {
        var_s1 = kern_malloc(0x690);
    }
    arg8 = var_s4;
    arg4 = var_s5;
    bzero((void *) var_s1, 0x690U);
    var_s4_3 = 0;
    temp_s5_3 = saved_reg_gp->unk-7800;
    do {
        temp_a3 = var_s4_3;
        temp_a0 = var_s4_3 * 0x28;
        var_s4_3 += 1;
        init_sv(temp_a0 + var_s1 + 0x48, 0, temp_s5_3, temp_a3);
        temp_a1 = var_s4_3 < 0x28;
    } while (temp_a1 != 0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0_2 = data->unkD0;
    var_s1->unk0 = temp_a0_2;
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_s1->unk8 = (s64) ((mgras_baseindex(temp_a0_2, temp_a1) * 0x30) + saved_reg_gp->unk-77F8)->unk10;
    data->unkD8 = var_s1;
}

void MgrasRetraceInterrupt(s64 arg0) {
    s64 temp_a2;
    s64 temp_t9;
    s64 temp_v0;
    void *temp_s3;

    temp_s3 = (arg0 * 0x30) + saved_reg_gp->unk-77F8;
    temp_a2 = temp_s3->unk8;
    if (temp_a2 != 0) {
        MgrasRetraceHandler((mgras_data_t *) temp_a2);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_t9 = saved_reg_gp->unk-7800;
    *temp_t9 = (u8) (*temp_t9 & ~temp_s3->unk28);
    flushbus();
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0 = saved_reg_gp->unk-7800;
    *temp_v0 = (u8) (temp_s3->unk28 | *temp_v0);
}

void MgrasRetraceHandler(mgras_data_t *data, s64 arg80, s64 arg82, s64 arg84, s64 arg92, s64 arg94, s64 arg96, s64 arg98, s64 arg100, s64 arg102, s64 arg104) {
    s16 temp_a4;
    s16 temp_a4_2;
    s16 temp_a4_3;
    s16 var_a3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_at_2;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s5;
    s32 var_s7_2;
    s32 var_v0;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_s0;
    s64 temp_s1;
    s64 temp_s5;
    s64 temp_s8_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 var_s0;
    s64 var_s7;
    s64 var_s7_4;
    u32 temp_a3_4;
    u32 temp_s4;
    u32 temp_v0_2;
    u64 var_s2;
    u64 var_s7_3;
    u8 temp_at;
    u8 temp_s6;
    u8 temp_v0_3;
    void *temp_a3_2;
    void *temp_s8;
    void *temp_s8_2;
    void *temp_s8_4;
    void *temp_v1;

    temp_s8 = data + 0x8E8;
    mutex_lock(temp_s8);
    var_v0 = -0x20;
    if (data->unkC8->unk44 != 0) {
        mutex_unlock(temp_s8);
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1 = data->unkD8;
        temp_s5 = saved_reg_gp->unk0;
        temp_s0 = temp_s1->unk0;
        temp_s5->unk10 = (s32) (temp_s5->unk10 + 1);
        arg80 = temp_s0;
        var_a3 = temp_s1->unk10;
        var_s2 = 0;
        var_s5 = 0;
        arg84 = temp_s1->unk8;
        temp_s4 = temp_s0->unk70100 & 0x1F;
        if (var_a3 != 0) {
            arg82 = (s64) temp_s8;
            var_s7 = 0;
loop_7:
            temp_s8_2 = (var_s7 * 0x28) + temp_s1;
            temp_a4 = temp_s8_2->unk28;
            temp_a6 = 1 << var_v0;
            if (temp_a4 & 0x20) {
                temp_a5 = temp_s8_2->unk2C;
                var_a3 -= 1;
                if (temp_a5 < 2) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a5_2 = 1 << var_s7;
                    temp_s8_2->unk2C = 0;
                    if (temp_a4 & 1) {
                        var_s5 += 1;
                        temp_a4_2 = temp_s8_2->unk2A;
                        if (var_s7 < 0x20) {
                            temp_a6_2 = temp_s1->unk14;
                            if (temp_a4_2 != 0) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_a2 = temp_a5_2 | temp_a6_2;
                            } else {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_a2 = ~temp_a5_2 & temp_a6_2;
                            }
                            temp_s1->unk14 = var_a2;
                        } else {
                            temp_a5_3 = temp_s1->unk18;
                            if (temp_a4_2 != 0) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_s1->unk18 = (s32) (temp_a6 | temp_a5_3);
                            } else {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_s1->unk18 = (s32) (~temp_a6 & temp_a5_3);
                            }
                        }
                    }
                    if (temp_s8_2->unk28 & 2) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_v1 = (((u64) (var_s2 << 0x20) >> 0x20) * 8) + sp;
                        temp_v1->unk4 = (s32) temp_s8_2->unk30;
                        var_s2 += 1;
                        temp_v1->unk0 = (s32) var_s7;
                    }
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s8_2->unk2C = (s32) (temp_a5 - 1);
                }
                if (var_a3 != 0) {
                    goto block_6;
                }
            } else {
block_6:
                var_s7 += 1;
                var_v0 += 1;
                if (var_s7 < 0x28) {
                    goto loop_7;
                }
            }
        } else {
            arg82 = (s64) temp_s8;
        }
        temp_s8_3 = mgras_baseindex(arg80);
        var_s7_2 = 9;
loop_21:
        temp_v0 = *(s32 *) saved_reg_gp->unk-77F8;
        if (temp_s8_3 != 0) {
            if ((temp_s8_3 != 1) || !(temp_v0 & 4)) {
                goto block_32;
            }
        } else if (!(temp_v0 & 1)) {
block_32:
            us_delay(1);
            var_s7_2 -= 1;
            if (var_s7_2 == -1) {

            } else {
                goto loop_21;
            }
        }
        if (var_s5 != 0) {
            if ((u32) (temp_s0->unk70100 & 0x1F) >= 3U) {
                do {

                } while ((u32) (temp_s0->unk70100 & 0x1F) >= 3U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg80->unk61C88 = 0U;
            arg80->unk61D80 = (s32) temp_s1->unk14;
            arg80->unk61C88 = 4U;
            arg80->unk61D80 = (s32) temp_s1->unk18;
        }
        if (var_s2 != 0) {
            var_s7_3 = 0;
            if (var_s2 != 0) {
loop_41:
                temp_a3 = var_s7_3 * 8;
                var_s7_3 += 1;
                temp_a3_2 = temp_a3 + sp;
                if ((u32) (temp_s0->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (temp_s0->unk70100 & 0x1F) >= 5U);
                }
                temp_v0_2 = temp_a3_2->unk0;
                temp_a3_3 = temp_a3_2->unk4;
                if (temp_v0_2 < 0x20U) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg80->unk61C88 = (u8) (temp_v0_2 * 4);
                    arg80->unk61E00 = temp_a3_3;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg80->unk61C88 = (u8) ((temp_v0_2 & 0x1F) * 4);
                    arg80->unk61E80 = temp_a3_3;
                }
                if (var_s7_3 < var_s2) {
                    goto loop_41;
                }
            }
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_at = arg84->unk2A;
        temp_s6 = (temp_at >= 0x1EU) ? temp_at : 0x1EU;
        temp_v0_3 = (temp_s6 <= 0x78U) ? temp_s6 : 0x78U;
        temp_a3_4 = temp_s1->unk66C + 1;
        temp_s1->unk66C = temp_a3_4;
        if (temp_a3_4 >= (u32) (temp_v0_3 * 2)) {
            if (data->unk73C != 0) {
                if (data->unk740 != 0) {
                    goto block_48;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                data->unk73C = 0;
                temp_s1->unk66C = 0U;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                data->unk740 = 1;
                data->unk73C = 1;
block_48:
                if (temp_a3_4 >= (u32) (temp_v0_3 * 6)) {
                    mgras_update_pp1ccv(temp_s1);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    data->unk73C = 0;
                    data->unk740 = 0;
                    temp_s1->unk66C = 0U;
                }
            }
        }
        temp_v0_4 = data->unkE0;
        if (temp_v0_4 != 0) {
            if ((u32) (temp_s0->unk70100 & 0x1F) >= 6U) {
                do {

                } while ((u32) (temp_s0->unk70100 & 0x1F) >= 6U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg80->unk61C88 = (u8) *temp_v0_4;
        }
        if (temp_s4 < (u32) (temp_s0->unk70100 & 0x1F)) {
            do {

            } while (temp_s4 < (u32) (temp_s0->unk70100 & 0x1F));
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a1 = data->unk88;
        temp_a2 = data->unk7C + 1;
        data->unk7C = temp_a2;
        data->unk80 = (s32) (data->unk80 + 1);
        if (temp_a1 != 0) {
            rrmValidateVideoSync(data, temp_a1, temp_a2);
        }
        if (temp_s1->unk10 != 0) {
            var_s7_4 = 0;
loop_62:
            temp_s8_4 = (var_s7_4 * 0x28) + temp_s1;
            temp_a4_3 = temp_s8_4->unk28;
            temp_at_2 = temp_a4_3 & 0x20;
            var_s7_4 += 1;
            if ((temp_at_2 != 0) && (temp_s8_4->unk2C == 0)) {
                if (temp_a4_3 & 0x10) {
                    rrmValidateMGRSwapBuf(data->unk0, temp_s8_4->unk40);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s8_4->unk40 = 0;
                }
                temp_v0_5 = temp_s8_4->unk38;
                if (temp_v0_5 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a1_2 = temp_v0_5->unk70;
                    temp_a1_2->unk464 = (s32) data->unk80;
                    rrmValidateBuffer(temp_s8_4->unk38, temp_a1_2);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s8_4->unk38 = 0;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s8_4->unk28 = 0;
                if (temp_s8_4->unk44 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s8_4->unk44 = 0;
                    sv_broadcast(temp_s8_4 + 0x48);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a1_3 = (s64) ((temp_s1->unk10 - 1) << 0x30) >> 0x30;
                temp_s1->unk10 = (s16) temp_a1_3;
                if (temp_a1_3 != 0) {
                    goto block_61;
                }
            } else {
block_61:
                if (var_s7_4 < 0x28) {
                    goto loop_62;
                }
            }
        }
        var_s0 = temp_s1->unk20;
        if (var_s0 != 0) {
            do {
                rrmValidateRetrace((void *) var_s0);
                var_s0 = var_s0->unk28;
            } while (var_s0 != 0);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk20 = 0;
        mutex_unlock((void *) arg82);
    }
}

void MgrasValidateAllRetrace(mgras_data_t *arg0, s64 arg10) {
    s16 temp_a0;
    s64 temp_a0_2;
    s64 temp_s0;
    s64 temp_v1;
    s64 var_s4;
    s64 var_s5;
    void *temp_s4;
    void *temp_s8;

    temp_s8 = arg0 + 0x8E8;
    mutex_lock(temp_s8);
    temp_s0 = arg0->unkD8;
    if (arg0->unk88 != 0) {
        rrmValidateVideoSync(arg0);
    }
    var_s5 = 0;
loop_6:
    temp_s4 = (var_s5 * 0x28) + temp_s0;
    temp_a0 = temp_s4->unk28;
    var_s5 += 1;
    if (temp_a0 & 0x20) {
        if (temp_a0 & 0x10) {
            rrmValidateMGRSwapBuf(arg0->unk0, temp_s4->unk40);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s4->unk40 = 0;
        }
        temp_a0_2 = temp_s4->unk38;
        if (temp_a0_2 != 0) {
            rrmValidateBuffer(temp_a0_2);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s4->unk38 = 0;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s4->unk28 = 0;
        if (temp_s4->unk44 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s4->unk44 = 0;
            sv_broadcast(temp_s4 + 0x48);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v1 = (s64) ((temp_s0->unk10 - 1) << 0x30) >> 0x30;
        temp_s0->unk10 = (s16) temp_v1;
        if (temp_v1 != 0) {
            goto block_5;
        }
    } else {
block_5:
        if (var_s5 < 0x28) {
            goto loop_6;
        }
    }
    var_s4 = temp_s0->unk20;
    if (var_s4 != 0) {
        do {
            rrmValidateRetrace((void *) var_s4);
            var_s4 = var_s4->unk28;
        } while (var_s4 != 0);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s0->unk20 = 0;
    mutex_unlock(temp_s8);
}

s64 MgrasCheckSwapTask(void *arg0, s64 arg1) {
    if ((arg1 < 0) || (arg1 >= 0x28)) {
        return 0x16;
    }
    return ((arg0->unkD8 + (arg1 * 0x28))->unk28 == 0) ? 0 : 0x10;
}

s64 MgrasSchedSwapTaskCheckReturnValue(void *arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8) {
    s64 var_v0;
    void *temp_s0;
    void *temp_s1;

    if ((arg1 >= 0) && (arg1 < 0x28)) {
        temp_s0 = (arg1 * 0x28) + arg0->unkD8;
        if (temp_s0->unk28 != 0) {
            if ((arg2 == 0) || (temp_s0->unk38 == 0)) {
                temp_s1 = arg0 + 0x8E8;
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s0->unk44 = 1;
                    sv_wait(temp_s0 + 0x48, 0x19, temp_s1, 0);
                    mutex_lock(temp_s1);
                } while (temp_s0->unk28 != 0);
                goto block_8;
            }
            cmn_err(4, saved_reg_gp->unk-7800 + 0x10, arg1);
            var_v0 = 0x10;
        } else {
block_8:
            var_v0 = 0;
        }
    } else {
        var_v0 = 0x16;
    }
    return var_v0;
}

s64 MgrasSchedSwapTask(void *arg0, s64 arg1, s64 arg2, void *arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg24, s64 arg26, s64 arg28) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 var_a0;
    s32 var_s3;
    s32 var_t1;
    s64 temp_a3_3;
    s64 temp_s2;
    s64 temp_t2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_v0;
    void *temp_a0;
    void *temp_s0;
    void *temp_v0_3;

    temp_v0 = arg0->unkD8;
    temp_t2 = arg0->unkD0;
    temp_s0 = arg0;
    temp_s2 = arg2;
    arg26 = 0;
    var_s3 = 0;
    if (arg3 != NULL) {
        arg0 = temp_v0;
        arg2 = M2C_ERROR(/* Read from unset register $a5 */);
        arg4 = M2C_ERROR(/* Read from unset register $a6 */);
        arg6 = arg1;
        arg8 = M2C_ERROR(/* Read from unset register $a4 */);
        arg10 = M2C_ERROR(/* Read from unset register $a7 */);
        arg12 = temp_t2;
        arg26 = arg3->unk70;
    }
    arg0 = temp_v0;
    arg2 = M2C_ERROR(/* Read from unset register $a5 */);
    arg4 = M2C_ERROR(/* Read from unset register $a6 */);
    arg6 = arg1;
    arg8 = M2C_ERROR(/* Read from unset register $a4 */);
    arg10 = M2C_ERROR(/* Read from unset register $a7 */);
    arg12 = temp_t2;
    temp_a0 = temp_s0 + 0x8E8;
    unksp48 = (s64) temp_a0;
    if (mutex_mine(temp_a0) == 0) {
        mutex_lock((void *) unksp48);
        var_s3 = 1;
    }
    temp_v0_2 = MgrasSchedSwapTaskCheckReturnValue(temp_s0, temp_s2, (s64) arg3);
    arg24 = temp_v0_2;
    if (temp_v0_2 != 0) {
        if (var_s3 != 0) {
            mutex_unlock((void *) unksp48);
        }
        var_v0 = arg24;
    } else {
        temp_v0_3 = (temp_s2 * 0x28) + (s64) arg0;
        if (arg26 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a0 = (arg26->unk464 + arg10) - temp_s0->unk80;
            temp_v0_3->unk2C = var_a0;
            if (var_a0 < 2) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a0 = 1;
                goto block_12;
            }
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a0 = 1;
block_12:
            temp_v0_3->unk2C = 1;
        }
        if ((arg3 == NULL) || (arg26->unk470 == 0) || (var_a0 != 1)) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0_3->unk2A = (s16) arg2;
            temp_v0_3->unk38 = (s64) arg3;
            temp_v0_3->unk30 = (s32) arg4;
            temp_v0_3->unk28 = (s16) arg6;
            temp_v0_3->unk40 = (s32) arg8;
            ((s64) arg0)->unk10 = (s16) (((s64) arg0)->unk10 + 1);
        } else {
            if (temp_s2 < 0x20) {
                temp_a3 = 1 << temp_s2;
                temp_t2_2 = ((s64) arg0)->unk14;
                if (arg2 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    ((s64) arg0)->unk14 = (s32) (temp_a3 | temp_t2_2);
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    ((s64) arg0)->unk14 = (s32) (~temp_a3 & temp_t2_2);
                }
                if ((u32) (arg12->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (arg12->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg12->unk61C88 = 0U;
                var_t1 = ((s64) arg0)->unk14;
            } else {
                temp_a3_2 = 1 << (temp_s2 - 0x20);
                temp_t2_3 = ((s64) arg0)->unk18;
                if (arg2 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    ((s64) arg0)->unk18 = (s32) (temp_a3_2 | temp_t2_3);
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    ((s64) arg0)->unk18 = (s32) (~temp_a3_2 & temp_t2_3);
                }
                if ((u32) (arg12->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (arg12->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg12->unk61C88 = 4U;
                var_t1 = ((s64) arg0)->unk18;
            }
            arg12->unk61D80 = var_t1;
            temp_a3_3 = temp_s0->unkE0;
            if (temp_a3_3 != 0) {
                if ((u32) (arg12->unk70100 & 0x1F) >= 6U) {
                    do {

                    } while ((u32) (arg12->unk70100 & 0x1F) >= 6U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg12->unk61C88 = (u8) *temp_a3_3;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0_3->unk2C = 0;
            temp_v0_3->unk28 = 0;
            temp_v0_3->unk40 = 0;
            temp_v0_3->unk38 = 0;
            temp_v0_3->unk30 = (s32) arg4;
            temp_v0_3->unk2A = (s16) arg2;
            if (arg6 & 0x10) {
                rrmValidateMGRSwapBuf(temp_s0->unk0, (s32) arg8, arg12 + 0x60000, temp_a3_3);
            }
            rrmValidateBuffer((s64) arg3);
        }
        if (var_s3 != 0) {
            mutex_unlock((void *) unksp48);
        }
        var_v0 = 0;
    }
    return var_v0;
}

s32 MgrasUnSchedSwapTask(void *arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8) {
    s32 var_v0;
    s64 temp_s0;
    s64 var_s1;
    void *temp_a0;
    void *temp_a1;

    temp_s0 = arg0->unkD8;
    var_s1 = arg2;
    if ((arg2 < 0) || (var_s1 >= 0x28)) {
        arg4 = arg1;
        if (var_s1 != -0x11) {
            var_v0 = 0x16;
        } else {
            goto block_7;
        }
    } else {
        arg4 = arg1;
block_7:
        temp_a0 = arg0 + 0x8E8;
        arg6 = (s64) temp_a0;
        mutex_lock(temp_a0);
        if (var_s1 == -0x11) {
            var_s1 = 0;
loop_9:
            if (((var_s1 * 0x28) + temp_s0)->unk38 != arg4) {
                var_s1 += 1;
                if (var_s1 < 0x28) {
                    goto loop_9;
                }
            }
        }
        if ((var_s1 < 0x28) && (temp_a1 = (var_s1 * 0x28) + temp_s0, (temp_a1->unk28 != 0))) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a1->unk28 = 0;
            temp_a1->unk40 = 0;
            temp_a1->unk38 = 0;
            temp_a1->unk2C = 0;
            temp_s0->unk10 = (s16) (temp_s0->unk10 - 1);
            mutex_unlock((void *) arg6);
            var_v0 = 1;
        } else {
            mutex_unlock((void *) arg6);
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 MgrasSchedRetraceEvent(void *arg0, void *arg1) {
    s64 temp_a1;
    s64 temp_s1;
    s64 var_v0;
    void *temp_s8;

    temp_s8 = arg0 + 0x8E8;
    temp_s1 = arg0->unkD8;
    mutex_lock(temp_s8);
    temp_a1 = temp_s1->unk20;
    if (temp_a1 != arg1) {
        if ((temp_a1 != 0) && (var_v0 = temp_a1->unk28, (var_v0 != 0))) {
loop_3:
            if (arg1 != var_v0) {
                var_v0 = var_v0->unk28;
                if (var_v0 == 0) {
                    goto block_5;
                }
                goto loop_3;
            }
            mutex_unlock(temp_s8);
        } else {
block_5:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk28 = temp_a1;
            temp_s1->unk20 = (s64) arg1;
            mutex_unlock(temp_s8);
        }
    } else {
        mutex_unlock(temp_s8);
    }
    return 0;
}

s64 MgrasUnSchedRetraceEvent(void *arg0, s32 arg1, s64 arg10) {
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a4;
    s64 temp_s5;
    s64 var_a1;
    s64 var_v0;
    void *temp_s8;

    temp_s8 = arg0 + 0x8E8;
    temp_s5 = arg0->unkD8;
    mutex_lock(temp_s8);
    temp_a0 = temp_s5->unk20;
    var_a1 = temp_a0;
    if (temp_a0 != 0) {
        temp_a4 = temp_a0->unk28;
        if (temp_a0 == arg1) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg10 = 1;
            temp_s5->unk20 = temp_a4;
        } else {
            var_v0 = temp_a4;
            if (temp_a4 != 0) {
loop_4:
                temp_a0_2 = var_v0->unk28;
                if (arg1 != var_v0) {
                    var_a1 = var_v0;
                    var_v0 = temp_a0_2;
                    if (temp_a0_2 == 0) {

                    } else {
                        goto loop_4;
                    }
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a1->unk28 = temp_a0_2;
                }
            }
            arg10 = 0;
        }
    } else {
        arg10 = (s64) arg0;
    }
    mutex_unlock(temp_s8);
    return arg10;
}

void MgrasSchedMGRSwapBuf(void *arg0, ? arg1) {
    MgrasSchedSwapTask((void *) arg0->unk20, 0x31, 0);
}

void mgras_finishtimeout(void *arg0) {
    cmn_err(4, saved_reg_gp->unk-7800 + 0x58);
    vsema(arg0 + 0x778);
    mgras_error(arg0, arg0->unkD0);
}

s64 MgrasSchedSwapBuf(void *arg0, void *arg1, s64 arg2, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22) {
    s32 temp_v0_2;
    s32 temp_v0_3;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_5;
    s64 temp_v0;
    s64 var_v0;
    void *temp_a0_3;
    void *temp_a0_4;

    temp_a0 = arg0 + 0x8E8;
    arg16 = temp_a0;
    arg18 = arg1->unk70;
    mutex_lock((void *) temp_a0);
    temp_v0 = MgrasSchedSwapTaskCheckReturnValue(arg0, arg2, (s64) arg1);
    arg22 = temp_v0;
    arg20 = temp_v0;
    if (temp_v0 != 0) {
        mutex_unlock((void *) arg16);
        var_v0 = arg22;
    } else {
        mutex_unlock((void *) arg16);
        arg8 = (s64) arg1->unk78->unk12;
        MgrasValidateBanks(arg1, arg1);
        temp_v0_2 = arg1->unk20;
        if (temp_v0_2 >= 2) {
            arg10 = (s64) temp_v0_2;
        } else {
            arg10 = 1;
        }
        if (MgrasFlushHQ3(arg0, arg0->unkD0, 0, 0) >= 0) {
            temp_a0_2 = arg0->unkD0;
            if (temp_a0_2->unk70008 & 0x401) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a0_2->unk5000C = 0x401;
            }
            temp_a0_3 = arg0 + 0x778;
            arg12 = (s64) temp_a0_3;
            if (psema(temp_a0_3, 0x1A) != 0) {
loop_11:
                if (arg0->unkC8->unk44 != 0) {
                    var_v0 = -1;
                } else {
                    temp_a0_4 = arg0 + 0x710;
                    arg14 = (s64) temp_a0_4;
                    init_sema(temp_a0_4, 0, 0, -1);
                    timeout(saved_reg_gp->unk-77F0, arg14, 1);
                    psema((void *) arg14, 0x19);
                    if (psema((void *) arg12, 0x1A) == 0) {
                        goto block_14;
                    }
                    goto loop_11;
                }
            } else {
block_14:
                temp_v0_3 = timeout(saved_reg_gp->unk-77E8, (s64) arg0, 0x5DC);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg0->unk768 = (s32) arg2;
                arg0->unk760 = (s64) arg1;
                arg0->unk774 = temp_v0_3;
                arg0->unk76C = (s32) arg8;
                arg0->unk770 = (s32) arg10;
                arg0->unkD0->unk50018 = 0x400;
                arg0->unkD0->unk70084 = 0x3700;
                temp_a0_5 = arg18->unk450;
                var_v0 = arg20;
                if (temp_a0_5 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    *temp_a0_5 = (s32) (*temp_a0_5 | 0x80000000);
                }
            }
        } else {
            printf(saved_reg_gp->unk-7800 + 0x78);
            var_v0 = -1;
        }
    }
    return var_v0;
}

void MgrasSchedSwapBufFinish(void *arg0) {
    s64 temp_a3;

    temp_a3 = arg0->unk760;
    if (arg0->unk740 != 0) {
        unksp8 = temp_a3;
        MgrasCcvUpdate(arg0, temp_a3);
    }
    if (MgrasSchedSwapTask(arg0, 0x21, (s64) arg0->unk768, (void *) temp_a3) != 0) {
        cmn_err(4, saved_reg_gp->unk-7800 + 0xA0);
    }
    untimeout(arg0->unk774);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk774 = 0;
    vsema(arg0 + 0x778);
}

void MgrasUnSchedSwapBuf(void *arg0) {
    MgrasUnSchedSwapTask((void *) arg0->unk20);
}

s64 MgrasSetDisplayMode(void *arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16) {
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_v0;
    u32 var_a2;

    temp_v0 = arg0->unk20;
    if ((arg1 < 0) || (arg8 = temp_v0, arg12 = temp_v0->unkD8, arg14 = temp_v0->unkD0, ((arg1 < 0x28) == 0))) {
        var_v0 = -0x16;
    } else {
        temp_a0 = arg8 + 0x8E8;
        arg4 = temp_a0;
        mutex_lock((void *) temp_a0);
        temp_a1 = arg1 < 0x20;
        if (temp_a1 != 0) {
            var_a2 = (u32) (arg12->unk14 & (1 << arg1)) >> arg1;
        } else {
            temp_a3 = arg1 - 0x20;
            var_a2 = (u32) (arg12->unk18 & (1 << temp_a3)) >> temp_a3;
        }
        temp_a3_2 = ((arg2 & 0x40000000) != 0) ^ var_a2;
        arg0 = temp_a1;
        if (temp_a3_2 != 0) {
            temp_v0_2 = MgrasSchedSwapTask((void *) arg8, 0x33, arg1, NULL);
            arg10 = (temp_v0_2 < 0) ? temp_v0_2 : 1;
        } else {
            temp_v0_3 = MgrasCheckSwapTask((void *) arg8, arg1, var_a2, temp_a3_2);
            if (temp_v0_3 >= 0) {
                if ((u32) (arg14->unk70100 & 0x1F) >= 4U) {
                    do {

                    } while ((u32) (arg14->unk70100 & 0x1F) >= 4U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg14->unk61C88 = 8;
                if (arg14->unk61D00 == 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg14->unk61C88 = 8;
                    } while (arg14->unk61D00 == 0);
                }
                temp_a1_2 = arg2 & ~0x40000000;
                if ((s64) arg0 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg14->unk61C88 = (s8) (arg1 * 4);
                    arg14->unk61E00 = temp_a1_2;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg14->unk61C88 = (s8) ((arg1 & 0x1F) * 4);
                    arg14->unk61E80 = temp_a1_2;
                }
                arg10 = 0;
            } else {
                arg10 = temp_v0_3;
            }
        }
        mutex_unlock((void *) arg4);
        var_v0 = arg10;
    }
    return var_v0;
}

s32 MgrasPositionCursor(void *arg0, s32 arg1, u32 arg2, s64 arg12) {
    s32 temp_at;
    s64 temp_s2;
    u32 temp_a1;
    u32 temp_at_2;
    u32 temp_hi;
    u32 temp_lo;
    u32 var_s0;
    void *temp_a0;
    void *temp_s4;

    temp_s2 = arg0->unkD0;
    var_s0 = arg2;
    temp_s4 = arg0;
    temp_at = mgras_baseindex(temp_s2) * 8;
    temp_a0 = temp_s4 + 0x8E8;
    arg12 = (s64) temp_a0;
    arg0 = *(temp_at + saved_reg_gp->unk-77E0);
    mutex_lock(temp_a0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s4->unk194 = var_s0;
    temp_s4->unk190 = arg1;
    if (temp_s4->unk758 == 0x10) {
        temp_a1 = ((s64) arg0)->unk8;
        if (var_s0 < temp_a1) {
            temp_at_2 = temp_a1 >> 1;
            temp_hi = var_s0 % temp_at_2;
            temp_lo = var_s0 / temp_at_2;
            M2C_TRAP_IF(temp_at_2 == 0);
            if (((s64) arg0)->unk0 & 4) {
                var_s0 = ((temp_hi >> 1) * 4) | (temp_lo * 2);
            } else {
                var_s0 = (temp_hi * 2) | temp_lo;
            }
        }
    }
    if ((u32) (temp_s2->unk70100 & 0x1F) >= 5U) {
        do {

        } while ((u32) (temp_s2->unk70100 & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s2->unk62038 = (s32) (((((arg1 - temp_s4->unk188) + 0x1F) & 0xFFFF) << 8) | 0x02000000);
    temp_s2->unk62038 = (s32) (((((var_s0 - temp_s4->unk18C) + 0x1F) & 0xFFFF) << 8) | 0x03000000);
    mutex_unlock((void *) arg12);
    return 0;
}

s32 MgrasSetGammaRamp(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a5_2;
    s32 var_a1;
    s64 temp_s4;
    u16 *temp_a5;
    u16 temp_a3;
    void *temp_s8;

    temp_s8 = arg0 + 0x8E8;
    temp_s4 = arg0->unkD0;
    mutex_lock(temp_s8);
    var_a1 = 0;
    if ((u32) (temp_s4->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (temp_s4->unk70100 & 0x1F) >= 6U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s4->unk61810 = 0;
loop_4:
    temp_a2 = var_a1 * 2;
    temp_a3 = *(temp_a2 + arg2);
    temp_a5 = temp_a2 + arg3;
    var_a1 += 1;
    temp_a5_2 = ((s32) (*temp_a5 & 0xFFC0) >> 6) & 0xFFFF;
    temp_a2_2 = ((s32) (*(temp_a2 + arg1) & 0xFFC0) >> 6) & 0xFFFF;
    temp_a3_2 = ((s32) (temp_a3 & 0xFFC0) >> 6) & 0xFFFF;
    if ((u32) (temp_s4->unk70100 & 0x1F) >= 4U) {
        do {

        } while ((u32) (temp_s4->unk70100 & 0x1F) >= 4U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s4->unk61890 = (s16) (((temp_a2_2 << 6) & 0xFF00) | (temp_a2_2 & 3));
    temp_s4->unk61890 = (s16) (((temp_a3_2 << 6) & 0xFF00) | (temp_a3_2 & 3));
    temp_s4->unk61890 = (s16) (((temp_a5_2 << 6) & 0xFF00) | (temp_a5_2 & 3));
    if (var_a1 < 0x100) {
        goto loop_4;
    }
    mutex_unlock(temp_s8);
    return 0;
}

void mgras_update_pp1ccv(void *arg0, u64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12) {
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_s4;
    s64 temp_a4;
    u32 temp_s5;
    u32 temp_t2;
    u32 temp_t9;
    u32 var_a5;
    u32 var_a5_2;
    u32 var_a7;
    u64 temp_v1_2;
    u64 var_a4;
    u8 temp_v1;
    void *temp_a0;
    void *temp_t0;
    void *var_a2;
    void *var_a3;

    temp_a0 = arg0;
    temp_a4 = temp_a0->unk0;
    arg0 = temp_a0->unk8;
    if (saved_reg_gp->unk-7800 == 0) {
        temp_v1 = ((s64) arg0)->unk2C;
        arg2 = 0U;
        temp_s4 = (((temp_v1 - 1) & 3) << 0x14) | 0x8073F;
        if (temp_v1 != 0) {
            var_a3 = temp_a4 + 0x60000;
            var_a2 = temp_a4 + 0x70000;
            temp_t2 = (u32) (temp_s4 & 0xF70000) >> 0x10;
            temp_s5 = (u32) ((temp_s4 | 0x80000) & 0xFF0000) >> 0x10;
loop_10:
            var_a4 = 0;
loop_23:
            var_a5 = 0;
            temp_t0 = ((((u64) (var_a4 << 0x20) >> 0x20) + (((u64) (arg2 << 0x20) >> 0x20) * 2)) * 4) + temp_a0;
            if (temp_a0->unk668 != 0) {
                var_a5 = temp_t0->unk670;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_t0->unk670 = 0U;
            }
            if ((u32) (temp_a4->unk70100 & 0x1F) >= 4U) {
                do {

                } while ((u32) (temp_a4->unk70100 & 0x1F) >= 4U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a4->unk61C08 = (s8) (((arg2 * 2) | var_a4) * 2);
            temp_a4->unk61C88 = 1;
            temp_a4->unk61D08 = (s8) temp_t2;
            if ((u32) (temp_a4->unk70100 & 0x1F) >= 5U) {
                do {

                } while ((u32) (temp_a4->unk70100 & 0x1F) >= 5U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a4->unk61C88 = 1;
            temp_a4->unk61D08 = (s8) temp_t2;
            if ((u32) (temp_a4->unk70100 & 0x1F) >= 5U) {
                do {

                } while ((u32) (temp_a4->unk70100 & 0x1F) >= 5U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a4->unk61C88 = 6;
            temp_a7 = temp_a4->unk61F80;
            temp_t9 = (u32) (0x3F000000 & temp_a7) >> 0x18;
            if ((u32) (temp_a4->unk70100 & 0x1F) >= 3U) {
                do {

                } while ((u32) (temp_a4->unk70100 & 0x1F) >= 3U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a4->unk61C88 = 1;
            temp_a4->unk61D08 = (s8) temp_s5;
            temp_a4->unk61C88 = 1;
            temp_a4->unk61D08 = (s8) temp_s5;
            if ((u32) (temp_a4->unk70100 & 0x1F) >= 5U) {
                do {

                } while ((u32) (temp_a4->unk70100 & 0x1F) >= 5U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a4->unk61C88 = 0;
            var_a5_2 = (u32) (temp_a7 & 0x3F00) >> 8;
            temp_a4->unk61D00 = temp_s4;
            if (((u32) (0x3F0000 & temp_a7) >> 0x10) == temp_t9) {
                var_a5_2 = temp_t9;
            }
            var_a7 = var_a5_2;
            if (var_a5 != 0) {
                if (var_a5_2 != 0x10) {
                    goto block_13;
                }
                if (var_a5 < 0x10U) {
                    var_a7 = 0xF;
                } else {
block_13:
                    if (var_a5_2 == 0xF) {
                        if (var_a5 >= 0x10U) {
                            var_a7 = 0x10;
                        }
                    }
                }
            }
            var_a4 += 1;
            if (var_a5 != var_a7) {
                temp_a5 = var_a7 << 0xA;
                temp_a6 = temp_a5 | 0x14;
                if ((u32) (temp_a4->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (temp_a4->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a4->unk61C88 = 0;
                temp_a4->unk61F80 = temp_a6;
                if ((u32) (temp_a4->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (temp_a4->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a4->unk61C88 = 0;
                temp_a4->unk61F80 = (s32) (temp_a5 | 0x114);
                if ((u32) (temp_a4->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (temp_a4->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a4->unk61C88 = 0;
                temp_a4->unk61F80 = temp_a6;
                temp_t0->unk670 = var_a7;
            }
            if (var_a4 < 2U) {
                goto loop_23;
            }
            temp_v1_2 = arg2 + 1;
            arg2 = temp_v1_2;
            if (temp_v1_2 < (u8) ((s64) arg0)->unk2C) {
                goto loop_10;
            }
        } else {
            var_a3 = temp_a4 + 0x60000;
            var_a2 = temp_a4 + 0x70000;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0->unk668 = 1;
        if ((u32) (var_a2->unk100 & 0x1F) >= 6U) {
            do {

            } while ((u32) (var_a2->unk100 & 0x1F) >= 6U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a3->unk1C08 = 1;
    }
}

void MgrasCcvUpdate(void *arg0, s64 arg2, u64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16) {
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_s7;
    s32 temp_t2;
    s64 temp_a4;
    s64 temp_s0;
    u32 temp_a0_2;
    u32 temp_t1;
    u32 temp_t9;
    u32 var_a5;
    u32 var_a7;
    u64 temp_a1;
    u64 temp_a5;
    u64 var_a4;
    u8 temp_v1;
    void *temp_a0;
    void *temp_a6;
    void *temp_s1;
    void *var_a3;

    temp_s0 = arg0->unkD8;
    temp_s1 = arg0;
    if (saved_reg_gp->unk-7800 == 0) {
        arg10 = arg0->unkD0;
        if (temp_s1->unk740 != 0) {
            temp_a0 = temp_s1 + 0x8E8;
            arg2 = (s64) temp_a0;
            mutex_lock(temp_a0);
            temp_v1 = temp_s0->unk8->unk2C;
            temp_a5 = arg10->unk70100 & 0x1F;
            arg0 = 0;
            temp_s7 = (((temp_v1 - 1) & 3) << 0x14) | 0x8073F;
            if (temp_v1 != 0) {
                var_a3 = arg10 + 0x60000;
                temp_t1 = (u32) (temp_s7 & 0xF70000) >> 0x10;
                arg8 = temp_a5;
                temp_a0_2 = (u32) ((temp_s7 | 0x80000) & 0xFF0000) >> 0x10;
loop_16:
                var_a4 = 0;
loop_26:
                var_a7 = 0;
                temp_a6 = ((((u64) (var_a4 << 0x20) >> 0x20) + (((u64) ((s64) arg0 << 0x20) >> 0x20) * 2)) * 4) + temp_s0;
                if (temp_s0->unk668 != 0) {
                    var_a7 = temp_a6->unk670;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a6->unk670 = 0U;
                }
                if ((u32) (arg10->unk70100 & 0x1F) >= 4U) {
                    do {

                    } while ((u32) (arg10->unk70100 & 0x1F) >= 4U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg10->unk61C08 = (s8) ((((s64) arg0 * 2) | var_a4) * 2);
                arg10->unk61C88 = 1;
                arg10->unk61D08 = (s8) temp_t1;
                if ((u32) (arg10->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (arg10->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg10->unk61C88 = 1;
                arg10->unk61D08 = (s8) temp_t1;
                if ((u32) (arg10->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (arg10->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg10->unk61C88 = 6;
                temp_a7 = arg10->unk61F80;
                temp_t9 = (u32) (0x3F000000 & temp_a7) >> 0x18;
                if ((u32) (arg10->unk70100 & 0x1F) >= 3U) {
                    do {

                    } while ((u32) (arg10->unk70100 & 0x1F) >= 3U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg10->unk61C88 = 1;
                arg10->unk61D08 = (s8) temp_a0_2;
                arg10->unk61C88 = 1;
                arg10->unk61D08 = (s8) temp_a0_2;
                if ((u32) (arg10->unk70100 & 0x1F) >= 5U) {
                    do {

                    } while ((u32) (arg10->unk70100 & 0x1F) >= 5U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg10->unk61C88 = 0;
                var_a5 = (u32) (temp_a7 & 0x3F00) >> 8;
                var_a4 += 1;
                arg10->unk61D00 = temp_s7;
                if (((u32) (0x3F0000 & temp_a7) >> 0x10) == temp_t9) {
                    var_a5 = temp_t9;
                }
                if (var_a5 != var_a7) {
                    temp_a7_2 = var_a5 << 0xA;
                    temp_t2 = temp_a7_2 | 0x14;
                    if ((u32) (arg10->unk70100 & 0x1F) >= 5U) {
                        do {

                        } while ((u32) (arg10->unk70100 & 0x1F) >= 5U);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg10->unk61C88 = 0;
                    arg10->unk61F80 = temp_t2;
                    if ((u32) (arg10->unk70100 & 0x1F) >= 5U) {
                        do {

                        } while ((u32) (arg10->unk70100 & 0x1F) >= 5U);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg10->unk61C88 = 0;
                    arg10->unk61F80 = (s32) (temp_a7_2 | 0x114);
                    if ((u32) (arg10->unk70100 & 0x1F) >= 5U) {
                        do {

                        } while ((u32) (arg10->unk70100 & 0x1F) >= 5U);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg10->unk61C88 = 0;
                    arg10->unk61F80 = temp_t2;
                    temp_a6->unk670 = var_a5;
                }
                if (var_a4 < 2U) {
                    goto loop_26;
                }
                temp_a1 = (s64) arg0 + 1;
                arg0 = temp_a1;
                if (temp_a1 < (u8) temp_s0->unk8->unk2C) {
                    goto loop_16;
                }
            } else {
                arg8 = temp_a5;
                var_a3 = arg10 + 0x60000;
            }
            temp_a4 = temp_s1->unkE0;
            if (temp_a4 != 0) {
                if ((u32) (arg10->unk70100 & 0x1F) >= 6U) {
                    do {

                    } while ((u32) (arg10->unk70100 & 0x1F) >= 6U);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a3->unk1C88 = (u8) *temp_a4;
            }
            if ((u32) (arg10->unk70100 & 0x1F) >= 6U) {
                do {

                } while ((u32) (arg10->unk70100 & 0x1F) >= 6U);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a3->unk1C08 = 1;
            temp_s1->unk740 = 0;
            temp_s0->unk668 = 1;
            if (arg8 < (u32) (arg10->unk70100 & 0x1F)) {
                do {

                } while (arg8 < (u32) (arg10->unk70100 & 0x1F));
            }
            mutex_unlock((void *) arg2);
        }
    }
}
/* Warning: struct mgras_rnode_s is not defined (only forward-declared) */
