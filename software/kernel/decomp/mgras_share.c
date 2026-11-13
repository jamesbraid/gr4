s64 kern_malloc(?, s32);                            /* extern */
? psema(s32, ?);                                    /* extern */

s32 MgrasShare(void *arg0, void *arg1, s64 *arg2) {
    s32 var_v0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_ra;
    s64 var_s0;
    void *temp_s1;

    var_ra = saved_reg_ra;
    temp_v0 = arg0->unk20;
    temp_s1 = arg0;
    var_s0 = 0;
    unksp10 = arg1->unk70;
    if (temp_v0->unk48 != arg0) {
        psema(temp_v0 + 0x38, 0x219);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk20->unk48 = (s64) temp_s1;
        var_ra = unksp30;
        if (temp_s1->unk20->unk68 != 0) {
            do {
                us_delay(2);
            } while (temp_s1->unk20->unk68 != 0);
            var_ra = unksp30;
        }
    }
loop_2:
    if (M2C_ERROR(/* unknown instruction: sc $v0, ($a3) */) == 0) {
        goto loop_2;
    }
    temp_v0_2 = *arg2;
    if (temp_v0_2 != 0) {
        var_s0 = temp_v0->unk6D8;
        if (var_s0 != 0) {
loop_7:
            if (temp_v0_2 != var_s0) {
                var_s0 = var_s0->unk60;
                if (var_s0 == 0) {
                    goto block_9;
                }
                goto loop_7;
            }
            goto block_15;
        }
        goto block_9;
    }
block_15:
    if (var_s0 == 0) {
        unksp30 = var_ra;
block_9:
        unksp30 = var_ra;
        temp_v0_3 = kern_malloc(0x68, M2C_ERROR(/* unknown instruction: ll $a1, ($a3) */) + 1);
        arg0 = temp_v0_3;
        var_s0 = temp_v0_3;
        if (temp_v0_3 == 0) {
loop_11:
            M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
            if (M2C_ERROR(/* unknown instruction: sc $a3, ($v1) */) == 0) {
                goto loop_11;
            }
            var_v0 = 0xC;
        } else {
            bzero((void *) (s64) arg0, 0x68U);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) arg0)->unk60 = (s64) temp_v0->unk6D8;
            temp_v0->unk6D8 = (s64) arg0;
            goto block_18;
        }
    } else {
block_18:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *var_s0 = (s32) (*var_s0 + 1);
        unksp10->unk468 = var_s0;
        *arg2 = var_s0;
loop_19:
        M2C_ERROR(/* unknown instruction: ll $s0, ($s2) */);
        if (M2C_ERROR(/* unknown instruction: sc $at, ($s2) */) == 0) {
            goto loop_19;
        }
        var_v0 = 0;
    }
    return var_v0;
}

void MgrasUnshare(void *arg0, void *arg1, s64 arg2, s64 arg4, s64 arg6) {
    s64 *var_s5;
    s64 temp_a3;
    s64 temp_s1;
    s64 temp_s5;
    s64 var_s0;

    temp_s1 = arg1->unk70;
    temp_a3 = temp_s1->unk468;
    if (temp_a3 != 0) {
        temp_s5 = arg0->unk20;
        var_s0 = temp_s5->unk6D8;
        var_s5 = temp_s5 + 0x6D8;
        if (temp_a3 != var_s0) {
            do {
                var_s5 = var_s0 + 0x60;
                var_s0 = var_s0->unk60;
            } while (temp_a3 != var_s0);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *temp_a3 = (s32) (*temp_a3 - 1);
        if (*temp_s1->unk468 == 0) {
            MgrasDeleteTexSpace(arg0, (struct mgras_rnode_s *) temp_s1, (mgras_texspace_args_t *) arg2);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *var_s5 = var_s0->unk60;
            kern_free((void *) temp_s1->unk468);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk468 = 0;
    }
}
/* Warning: struct mgras_rnode_s is not defined (only forward-declared) */
