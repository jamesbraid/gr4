s32 MgrasSetGammaRamp(void *, s64, s32, s32);       /* extern */
s64 mgras_baseindex(s64);                           /* extern */
void mgras_mco_7162_set_addr(void *arg0, s32 arg1, s64 arg2, s8 arg6); /* static */
void mgras_mco_7162_set_cmd(void *arg0, s32 arg1, s8 arg3, s32 arg6); /* static */
s32 mgras_mco_config_473(s64 arg0, s64 arg1, s64 arg2, s64 arg384, s64 arg386, s64 arg392, s64 arg394); /* static */
s32 mgras_mco_config_473_gamma(void *arg0, s64 arg1, void *arg2, void *arg4, s64 arg6, s64 arg8); /* static */
s32 mgras_mco_config_7162(s64 arg0, s64 arg1, void *arg2, s64 arg384, s64 arg392, s64 arg394, s64 arg396, s64 arg398); /* static */
s32 mgras_mco_config_7162_gamma(void *arg0, s64 arg1, void *arg2, void *arg6, s64 arg8); /* static */
s32 mgras_mco_config_FPGAs(s64 arg0, s64 arg1, s64 arg6, s64 arg8); /* static */
s32 mgras_mco_config_vc2(s64 arg0, void *arg1, s64 arg4, s64 arg6); /* static */
s32 mgras_mco_load_vc2_sram(void *arg0, s64 arg1, u16 arg2, u32 arg3, s64 arg10); /* static */
void mgras_mco_set_control_reg(s64 arg0, s32 arg1, s32 arg2, ?); /* static */
s32 mgras_mco_set_dcbctrl(void *arg0, s64 arg1, s32); /* static */
s32 mgras_mco_shutdown_FPGAs(s64 arg0, s64 arg2);   /* static */
s32 mgras_mco_shutdown_vc2(s64 arg0, s64 arg2);     /* static */

s32 mgras_mco_probe(void *arg0) {
    s32 temp_a0_2;
    s32 var_v0;
    u8 temp_a0;

    mgras_mco_set_dcbctrl(NULL);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62C08 = 0xFFU;
    temp_a0 = arg0->unk62C08;
    arg0->unk62C08 = 0U;
    temp_a0_2 = temp_a0 & 0xFF;
    var_v0 = 0xFF;
    if (((temp_a0_2 ^ (arg0->unk62C08 & 0xFF)) == 0) && ((temp_a0_2 == 1) || ((temp_a0_2 & 0xF0) == 0xA0))) {
        var_v0 = temp_a0_2 & 0xF;
    }
    return var_v0;
}

s32 mgras_mco_shutdown(void *arg0, s64 arg2, s64 arg4) {
    s32 temp_v0;
    s32 var_a3;
    s32 var_v0;

    arg2 = arg0->unkD0;
    if (arg0->unk758 != 0) {
        temp_v0 = mgras_mco_shutdown_vc2(arg2);
        var_a3 = temp_v0;
        if (temp_v0 == 0) {
            var_a3 = mgras_mco_shutdown_FPGAs(arg2);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_v0 = var_a3;
        ((s64) arg0)->unk758 = 0;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_mco_download(s64 arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 var_a4;
    s32 var_v0;
    s64 temp_a0;

    arg6 = arg1;
    arg4 = arg0;
    temp_a0 = arg0->unkD0;
    arg8 = temp_a0;
    if (((mgras_baseindex(temp_a0) * 0x30) + saved_reg_gp->unk-7800)->unk10->unk40 != 0xFF) {
        temp_v0 = mgras_mco_config_FPGAs(arg8, arg6);
        var_a4 = temp_v0;
        if (temp_v0 != 0) {
            goto block_2;
        }
        temp_v0_2 = mgras_mco_config_7162(arg8, 1, arg6 + 0xF68C, 0xF68C);
        var_a4 = temp_v0_2;
        if (temp_v0_2 != 0) {
            goto block_2;
        }
        temp_v0_3 = mgras_mco_config_7162(arg8, 2, arg6 + 0xF6B4, 0xF6B4);
        var_a4 = temp_v0_3;
        if (temp_v0_3 != 0) {
            goto block_2;
        }
        temp_v0_4 = mgras_mco_config_473(arg8, 3, arg6 + 0xF6DC, 0xF6DC);
        var_a4 = temp_v0_4;
        if (temp_v0_4 != 0) {
            goto block_2;
        }
        temp_v0_5 = mgras_mco_config_473(arg8, 4, arg6 + 0xF6E0, 0xF6E0);
        var_a4 = temp_v0_5;
        if (temp_v0_5 != 0) {
            goto block_2;
        }
        arg2 = arg6 + 0x10000;
        mgras_mco_set_control_reg(arg8, 1, arg6->unkF718, 0x10000);
        mgras_mco_set_control_reg(arg8, 2, arg2->unk-8E4);
        mgras_mco_set_control_reg(arg8, 3, arg2->unk-8E0);
        temp_v0_6 = mgras_mco_config_vc2(arg8, arg6 + 0xF6E8, 0xF6E8);
        var_a4 = temp_v0_6;
        if (temp_v0_6 != 0) {
block_2:
            var_v0 = var_a4;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg4->unk758 = (s32) arg6->unk0;
            var_v0 = 0;
            arg4->unk75C = (s32) arg2->unk-918;
        }
    } else {
        var_v0 = -0x16;
    }
    return var_v0;
}

s32 mgras_mco_shutdown_FPGAs(void *arg0, s64 arg2) {
    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    mgras_mco_set_dcbctrl(arg0, 1, arg0 + 0x70000);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62C88 = 0xFE;
    return 0;
}

s32 mgras_mco_config_FPGAs(void *arg0, s64 arg1, s64 arg6, s64 arg8) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_v0;
    void *temp_a0;
    void *temp_s0;
    void *temp_s1;

    temp_s1 = arg0 + 0x70000;
    temp_s0 = arg0;
    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
        arg0 = arg1;
    }
    temp_a0 = temp_s0;
    arg0 = arg1;
    mgras_mco_set_dcbctrl(temp_a0, 1);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s0->unk62C88 = 0xFEU;
    us_delay(0x186A0);
    if (temp_s1->unk100 & 0x1F) {
        do {

        } while (temp_s1->unk100 & 0x1F);
    }
    temp_v0 = temp_s0->unk62C88 & 0xFF;
    if ((((s32) (temp_v0 & 4) >> 2) != 0) || (((s32) (temp_v0 & 2) >> 1) != 0) || (temp_v0 & 1)) {
        var_v0 = -5;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk62C88 = 1U;
        us_delay(0x186A0);
        temp_v0_2 = temp_s0->unk62C88 & 0xFF;
        if ((((s32) (temp_v0_2 & 4) >> 2) == 0) || (((s32) (temp_v0_2 & 2) >> 1) == 0) || (temp_a2 = temp_v0_2 & 1, (temp_a2 != 0))) {
            var_v0 = -5;
        } else {
            mgras_mco_set_dcbctrl(temp_s0, 0, temp_a2);
            var_a0 = 0;
loop_15:
            if (temp_s1->unk100 & 0x1F) {
                do {

                } while (temp_s1->unk100 & 0x1F);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk62C08 = (u8) (var_a0 + (s64) arg0)->unk4;
            temp_v0_3 = temp_s0->unk62C88 & 0xFF;
            if ((((s32) (temp_v0_3 & 4) >> 2) == 0) || (((s32) (temp_v0_3 & 2) >> 1) == 0) || (temp_v0_3 & 1)) {
                var_v0 = -5;
            } else {
                var_a0 += 1;
                if (var_a0 >= 0xF688) {
                    var_a0_2 = 0;
loop_24:
                    if (temp_s1->unk100 & 0x1F) {
                        do {

                        } while (temp_s1->unk100 & 0x1F);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a0_2 += 1;
                    temp_s0->unk62C08 = 0U;
                    if (var_a0_2 < 0x14) {
                        goto loop_24;
                    }
                    us_delay(0x186A0);
                    temp_v0_4 = temp_s0->unk62C88 & 0xFF;
                    temp_a2_2 = (s32) (temp_v0_4 & 2) >> 1;
                    if ((temp_a2_2 == 0) || !(temp_v0_4 & 1)) {
                        var_v0 = -5;
                    } else {
                        mgras_mco_set_dcbctrl(temp_s0, 2, temp_a2_2);
                        var_v0 = 0;
                    }
                } else {
                    goto loop_15;
                }
            }
        }
    }
    return var_v0;
}

s32 mgras_mco_config_7162(void *arg0, s64 arg1, void *arg2, s64 arg384, s64 arg392, s64 arg394, s64 arg396, s64 arg398) {
    s16 temp_v1;
    s32 temp_s4;
    s32 temp_v0;
    s32 var_v0;
    s32 var_v0_2;
    s8 temp_a3;
    void *temp_a3_2;

    if ((arg1 != 1) && (arg1 != 2)) {
        var_v0 = -0x16;
    } else {
        temp_s4 = *((arg1 * 4) + saved_reg_gp->unk-77F8);
        if (arg0->unk70100 & 0x1F) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        mgras_mco_set_dcbctrl(arg0, 2);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D08 = (s8) (temp_s4 + 3);
        if (arg0->unk70100 & 0x1F) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D88 = 3U;
        arg0->unk62D88 = 2U;
        arg0->unk62D88 = (u8) arg2->unk0;
        if (arg0->unk70100 & 0x1F) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        var_v0 = -5;
        if (arg2->unk0 == (arg0->unk62D88 & 0xFF)) {
            temp_a3 = temp_s4 + 2;
            if (arg0->unk70100 & 0x1F) {
                do {

                } while (arg0->unk70100 & 0x1F);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk62D08 = (s8) temp_s4;
            arg0->unk62D88 = 5U;
            arg0->unk62D08 = temp_a3;
            arg384 = (s64) temp_a3;
            if (arg0->unk70100 & 0x1F) {
                do {

                } while (arg0->unk70100 & 0x1F);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk62D88 = (u8) arg2->unk4;
            mgras_mco_7162_set_addr(arg0, temp_s4, 3, temp_a3);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk62D08 = (s8) arg384;
            var_v0 = -5;
            if ((arg0->unk62D88 & 0xFF) != 0x79) {

            } else {
                if (arg0->unk70100 & 0x1F) {
                    do {

                    } while (arg0->unk70100 & 0x1F);
                }
                mgras_mco_7162_set_cmd(arg0, temp_s4, 6, arg2->unk8);
                if (arg0->unk70100 & 0x1F) {
                    do {

                    } while (arg0->unk70100 & 0x1F);
                }
                mgras_mco_7162_set_cmd(arg0, temp_s4, 7, arg2->unkC);
                if (arg0->unk70100 & 0x1F) {
                    do {

                    } while (arg0->unk70100 & 0x1F);
                }
                mgras_mco_7162_set_cmd(arg0, temp_s4, 8, arg2->unk10);
                if (arg0->unk70100 & 0x1F) {
                    do {

                    } while (arg0->unk70100 & 0x1F);
                }
                mgras_mco_7162_set_cmd(arg0, temp_s4, 0xC, arg2->unk18);
                mgras_mco_7162_set_cmd(arg0, temp_s4, 0xF, arg2->unk1C);
                if (arg0->unk70100 & 0x1F) {
                    do {

                    } while (arg0->unk70100 & 0x1F);
                }
                mgras_mco_7162_set_cmd(arg0, temp_s4, 9, arg2->unk20);
                mgras_mco_7162_set_cmd(arg0, temp_s4, 0xD, arg2->unk14);
                if (arg0->unk70100 & 0x1F) {
                    do {

                    } while (arg0->unk70100 & 0x1F);
                }
                mgras_mco_7162_set_cmd(arg0, temp_s4, 0x204, arg2->unk24);
                if (arg0->unk70100 & 0x1F) {
                    do {

                    } while (arg0->unk70100 & 0x1F);
                }
                var_v0_2 = 0;
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a3_2 = (var_v0_2 * 2) + sp;
                    temp_v1 = (var_v0_2 << 8) | var_v0_2;
                    var_v0_2 += 1;
                    temp_a3_2->unk400 = temp_v1;
                    temp_a3_2->unk200 = temp_v1;
                    temp_a3_2->unk0 = temp_v1;
                } while (var_v0_2 < 0x100);
                temp_v0 = mgras_mco_config_7162_gamma(arg0, arg1, sp, temp_a3_2);
                if (temp_v0 != 0) {
                    var_v0 = temp_v0;
                } else {
                    var_v0 = 0;
                }
            }
        }
    }
    return var_v0;
}

s32 mgras_mco_config_473(void *arg0, s64 arg1, s64 arg2, s64 arg384, s64 arg386, s64 arg392, s64 arg394) {
    s16 temp_v1;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_v0;
    s32 var_v0_2;
    void *temp_a3_2;

    if ((arg1 != 3) && (arg1 != 4)) {
        var_v0 = -0x16;
    } else {
        temp_a3 = arg0->unk70100 & 0x1F;
        arg386 = (s64) *((arg1 * 4) + saved_reg_gp->unk-77F8);
        if (temp_a3 != 0) {
            do {

            } while (arg0->unk70100 & 0x1F);
            arg384 = arg2;
        }
        arg384 = arg2;
        mgras_mco_set_dcbctrl(arg0, 2, temp_a3);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D08 = (s8) (arg386 + 6);
        arg0->unk62D88 = (s8) *arg384;
        var_v0_2 = 0;
        if (arg0->unk70100 & 0x1F) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        do {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a3_2 = (var_v0_2 * 2) + sp;
            temp_v1 = (var_v0_2 << 8) | var_v0_2;
            var_v0_2 += 1;
            temp_a3_2->unk400 = temp_v1;
            temp_a3_2->unk200 = temp_v1;
            temp_a3_2->unk0 = temp_v1;
        } while (var_v0_2 < 0x100);
        temp_v0 = mgras_mco_config_473_gamma(arg0, arg1, sp, temp_a3_2);
        if (temp_v0 != 0) {
            var_v0 = temp_v0;
        } else {
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 mgras_mco_shutdown_vc2(void *arg0, s64 arg2) {
    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    mgras_mco_set_dcbctrl(arg0, 4, arg0 + 0x70000);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62E08 = 0x10;
    arg0->unk62EB0 = -8;
    return 0;
}

s32 mgras_mco_config_vc2(void *arg0, void *arg1, s64 arg4, s64 arg6) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;

    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    mgras_mco_set_dcbctrl(arg0, 4);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62E08 = 0x1F;
    arg0->unk62EB0 = 0;
    us_delay(0x2710);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62E08 = 0x1F;
    arg0->unk62EB0 = (s16) arg1->unk2C;
    us_delay(0x2710);
    mgras_mco_shutdown_vc2((s64) arg0);
    temp_v0 = mgras_mco_load_vc2_sram(arg0, arg1->unk20, 0U, arg1->unk28);
    var_a0 = temp_v0;
    if (temp_v0 != 0) {

    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62E08 = 0;
        arg0->unk62EB0 = (s16) arg1->unk1C;
        temp_v0_2 = mgras_mco_load_vc2_sram(arg0, arg1->unk10, 0x400U, arg1->unk18);
        var_a0 = temp_v0_2;
        if (temp_v0_2 != 0) {

        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk62E08 = 6;
            arg0->unk62EB0 = (s16) (arg1->unk4 << 5);
            arg0->unk62E08 = 0x10;
            arg0->unk62EB0 = (s16) arg1->unk0;
            var_a0 = 0;
        }
    }
    return var_a0;
}

s32 mgras_mco_load_vc2_sram(void *arg0, s64 arg1, u16 arg2, u32 arg3, s64 arg10) {
    s32 temp_a4;
    s32 var_v0;
    u32 var_v0_2;
    u32 var_v0_3;

    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    mgras_mco_set_dcbctrl(arg0, 4);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62E08 = 7;
    arg0->unk62EB0 = arg2;
    arg0->unk62E08 = 7;
    var_v0_2 = 0;
    if (arg0->unk62EB0 == arg2) {
        if (arg3 != 0) {
loop_7:
            temp_a4 = var_v0_2 * 2;
            var_v0_2 += 1;
            if (arg0->unk70100 & 0x1F) {
                do {

                } while (arg0->unk70100 & 0x1F);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk62F90 = (u16) *(temp_a4 + arg1);
            if (var_v0_2 < arg3) {
                goto loop_7;
            }
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62E08 = 7;
        arg0->unk62EB0 = arg2;
        var_v0_3 = 0;
        if (arg3 != 0) {
loop_12:
            var_v0_3 += 1;
            if (*((var_v0_3 * 2) + arg1) == arg0->unk62F90) {
                if (var_v0_3 >= arg3) {
                    goto block_14;
                }
                goto loop_12;
            }
            var_v0 = -5;
        } else {
block_14:
            var_v0 = 0;
        }
    } else {
        var_v0 = -5;
    }
    return var_v0;
}

s32 mgras_mco_load_channel_gamma(void *arg0, s32 arg1, s64 arg2) {
    s32 var_a0;
    s32 var_v0;

    var_a0 = -0x16;
    if (arg0->unk758 != 0) {
        switch (arg1) {                             /* irregular */
        case 1:
        case 2:
            var_a0 = mgras_mco_config_7162_gamma((void *) arg0->unkD0, arg2, (void *)2);
            break;
        case 3:
        case 4:
            var_a0 = mgras_mco_config_473_gamma((void *) arg0->unkD0, arg2, (void *)2);
            break;
        case 0:
            var_a0 = MgrasSetGammaRamp(arg0, arg2, arg2 + 0x200, arg2 + 0x400);
            break;
        }
        var_v0 = var_a0;
    } else {
        var_v0 = -5;
    }
    return var_v0;
}

s32 mgras_mco_config_7162_gamma(void *arg0, s64 arg1, void *arg2, s64 arg6, s64 arg8) {
    s32 temp_a1;
    s32 temp_a3;
    s32 var_v0;
    s32 var_v0_2;
    void *temp_a1_2;
    void *temp_s1;
    void *temp_s3;

    var_v0 = -0x16;
    temp_s1 = arg0;
    if ((arg1 != 1) && (arg1 != 2)) {

    } else {
        temp_s3 = temp_s1 + 0x70000;
        temp_a3 = temp_s1->unk70100 & 0x1F;
        arg0 = (s64) *((arg1 * 4) + saved_reg_gp->unk-77F8);
        if (temp_a3 != 0) {
            do {

            } while (temp_s3->unk100 & 0x1F);
        }
        mgras_mco_set_dcbctrl(temp_s1, 2, temp_a3);
        mgras_mco_7162_set_addr(temp_s1, (s32) (s64) arg0, 0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk62D08 = (s8) ((s64) arg0 + 1);
        var_v0_2 = 0;
loop_11:
        temp_a1 = var_v0_2 * 2;
        var_v0_2 += 1;
        temp_a1_2 = temp_a1 + arg2;
        if (temp_s3->unk100 & 0x1F) {
            do {

            } while (temp_s3->unk100 & 0x1F);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk62D88 = (s8) ((s32) (temp_a1_2->unk0 & 0xFF00) >> 8);
        temp_s1->unk62D88 = (s8) ((s32) (temp_a1_2->unk0 & 0xC0) >> 6);
        temp_s1->unk62D88 = (s8) ((s32) (temp_a1_2->unk200 & 0xFF00) >> 8);
        if (temp_s3->unk100 & 0x1F) {
            do {

            } while (temp_s3->unk100 & 0x1F);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk62D88 = (s8) ((s32) (temp_a1_2->unk200 & 0xC0) >> 6);
        temp_s1->unk62D88 = (s8) ((s32) (temp_a1_2->unk400 & 0xFF00) >> 8);
        temp_s1->unk62D88 = (s8) ((s32) (temp_a1_2->unk400 & 0xC0) >> 6);
        if (var_v0_2 < 0x100) {
            goto loop_11;
        }
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_mco_config_473_gamma(void *arg0, s64 arg1, void *arg2, s64 arg4, s64 arg6, s64 arg8) {
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a0;
    s32 var_v0;
    void *temp_v0_2;

    var_v0 = -0x16;
    if ((arg1 != 3) && (arg1 != 4)) {

    } else {
        temp_a3 = arg0->unk70100 & 0x1F;
        if (temp_a3 != 0) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        arg4 = (s64) *((arg1 * 4) + saved_reg_gp->unk-77F8);
        mgras_mco_set_dcbctrl(arg0, 2, temp_a3);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D08 = (s8) arg4;
        arg0->unk62D88 = 0;
        var_a0 = 0;
        if (arg0->unk70100 & 0x1F) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D08 = (s8) (arg4 + 1);
loop_14:
        temp_v0 = var_a0 * 2;
        var_a0 += 1;
        temp_v0_2 = temp_v0 + arg2;
        if (arg0->unk70100 & 0x1F) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D88 = (s8) ((s32) (temp_v0_2->unk0 & 0xFF00) >> 8);
        arg0->unk62D88 = (s8) ((s32) (temp_v0_2->unk200 & 0xFF00) >> 8);
        if (arg0->unk70100 & 0x1F) {
            do {

            } while (arg0->unk70100 & 0x1F);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D88 = (s8) ((s32) (temp_v0_2->unk400 & 0xFF00) >> 8);
        if (var_a0 < 0x100) {
            goto loop_14;
        }
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_mco_set_dcbctrl(void *arg0, s64 arg1) {
    s32 var_v0;
    u64 temp_a3;

    temp_a3 = (u64) (arg1 << 0x20) >> 0x20;
    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    switch (temp_a3) {
    default:
        var_v0 = -0xE;
        break;
    case 0:
    case 1:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk6802C = 0x318;
block_6:
        var_v0 = 0;
        break;
    case 2:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk6802C = 0x6319;
        goto block_6;
    case 3:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk6802C = 0x6319;
        goto block_6;
    case 4:
    case 5:
    case 6:
    case 7:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk6802C = 0x631A;
        goto block_6;
    case 20:
    case 21:
    case 23:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk68000 = 0x318;
        goto block_6;
    }
    return var_v0;
}

void mgras_mco_startclock(void *arg0) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk6802C = 0x318;
    arg0->unk62D08 = 0x90;
    arg0->unk62D88 = 5;
}

void mgras_mco_set_control_reg(void *arg0, s32 arg1, s8 arg2) {
    mgras_mco_set_dcbctrl((void *)2);
    switch (arg1) {                                 /* irregular */
    case 1:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D08 = 0x80;
        break;
    case 2:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D08 = 0x90;
        break;
    case 3:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62D08 = 0xA0;
        break;
    }
    mgras_mco_set_dcbctrl(arg0, 3);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62D88 = arg2;
}

void mgras_mco_7162_set_addr(void *arg0, s8 arg1, s64 arg2, s64 arg6) {
    arg6 = arg2;
    mgras_mco_set_dcbctrl((void *)2);
    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62D08 = arg1;
    arg0->unk62D88 = (s8) arg6;
    arg0->unk62D88 = (s8) ((u32) (arg6 & 0x300) >> 8);
}

void mgras_mco_7162_set_cmd(void *arg0, s32 arg1, s8 arg3, s64 arg6) {
    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    mgras_mco_7162_set_addr(arg0, arg1);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62D08 = (s8) (arg1 + 2);
    arg0->unk62D88 = arg3;
}
