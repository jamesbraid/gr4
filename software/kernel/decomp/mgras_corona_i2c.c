s32 mgras_fpi2cAudioBass(void *arg0, s32 arg1, u32, s64); /* static */
s32 mgras_fpi2cAudioSwitch(void *arg0, s64 arg1, u32, s64); /* static */
s32 mgras_fpi2cAudioTreble(void *arg0, s32 arg1, u32, s64); /* static */
s32 mgras_fpi2cAudioVolLeft(void *arg0, s32 arg1, u32, s64); /* static */
s32 mgras_fpi2cAudioVolRight(void *arg0, s32 arg1, u32, s64); /* static */
s32 mgras_fpi2cBlDown(void *arg0, s32 arg1, u32, s64); /* static */
s32 mgras_fpi2cBlUp(void *arg0, s32 arg1, u32, s64); /* static */
s32 mgras_fpi2cPanelOff(s64, u32, s64);             /* static */
s32 mgras_fpi2cSetBit(void *arg1, s32, u32, s64);   /* static */
s32 mgras_fpi2cStop(void *arg0, s32);               /* static */

void mgras_fpi2cRead(void *arg0, s32 arg1, s64 arg2, s64 arg6) {
    arg6 = arg2;
    us_delay(1);
    if ((u32) (arg0->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->unk70100 & 0x1F) >= 6U);
    }
    if (arg1 != 1) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *arg6 = (s32) arg0->unk62C08;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *arg6 = (s32) arg0->unk62C88;
    }
}

void mgras_fpi2cWrite(void *arg0, s64 arg1, s64 arg2, s64 arg6) {
    arg6 = arg2;
    us_delay(1);
    if ((u32) (arg0->unk70100 & 0x1F) >= 6U) {
        do {

        } while ((u32) (arg0->unk70100 & 0x1F) >= 6U);
    }
    if (arg1 != 1) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62C08 = (s8) arg6;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk62C88 = (s8) arg6;
    }
}

s32 mgras_fpi2cProbe(void *arg0, s64 arg6) {
    s32 var_v0;
    void *temp_s3;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg6 = arg0 + 0x70000;
    arg0->unk6802C = 0x2128;
    temp_s3 = arg0 + 0x60000;
    arg0->unk62C08 = 0;
    us_delay(1);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62C88 = 0x40;
    us_delay(1);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62C08 = 0x55;
    us_delay(1);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk62C88 = 0x40;
    us_delay(1);
    arg0 = NULL;
    us_delay(1);
    var_v0 = 0;
    if (temp_s3->unk2C08 != 0x55) {

    } else {
        us_delay(1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s3->unk2C08 = 0xAAU;
        us_delay(1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s3->unk2C88 = 0x40;
        us_delay(1);
        arg0 = NULL;
        us_delay(1);
        var_v0 = 0;
        if (temp_s3->unk2C08 != 0xAA) {

        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_v0 = 1;
            arg6->unk-7FD4 = 0x212A;
        }
    }
    return var_v0;
}

s32 mgras_fpi2cSetup(void *arg0) {
    mgras_fpi2cWrite((void *)1, 0);
    mgras_fpi2cWrite(arg0, 0, 0x7F);
    mgras_fpi2cWrite(arg0, 1, 0x20);
    mgras_fpi2cWrite(arg0, 0, 0x1C);
    mgras_fpi2cWrite(arg0, 1, 0x40);
    return 1;
}

s32 mgras_fpi2cStart(void *arg0, s64 arg1, s64 arg2, s64 arg8) {
    s32 var_s3;
    s32 var_v0;
    s64 temp_a3;

    arg2 = arg1;
    mgras_fpi2cWrite((void *)1, 0x40);
    mgras_fpi2cRead(arg0, 1, (s64) sp);
    if (arg0 != (void *)0x81) {
        mgras_fpi2cStop(arg0);
        goto block_2;
    }
    mgras_fpi2cWrite(arg0, 0, arg2);
    mgras_fpi2cWrite(arg0, 1, 0x44);
    var_s3 = 0x64;
loop_5:
    mgras_fpi2cRead(arg0, 1, (s64) sp);
    temp_a3 = (s32) arg0 & 0x80;
    if (temp_a3 != 0) {
        var_s3 -= 1;
        if (var_s3 == 0) {
            goto block_7;
        }
        goto loop_5;
    }
    if (var_s3 != 0) {
        if ((s32) arg0 & 8) {
            mgras_fpi2cStop(arg0);
block_2:
            var_v0 = 0;
        } else {
            if (arg2 & 1) {
                mgras_fpi2cRead(arg0, 0, (s64) sp, temp_a3);
            }
            var_v0 = 1;
        }
    } else {
block_7:
        mgras_fpi2cStop(arg0);
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_fpi2cReceive(void *arg0, s64 arg1, s64 arg2) {
    s32 var_s1;
    s32 var_v0;

    arg2 = arg1;
    var_s1 = 0x64;
loop_1:
    mgras_fpi2cRead(arg0, 1, (s64) sp);
    if ((s32) arg0 & 0x80) {
        var_s1 -= 1;
        if (var_s1 == 0) {
            goto block_3;
        }
        goto loop_1;
    }
    if (var_s1 != 0) {
        if ((s32) arg0 & 0x37) {
            mgras_fpi2cStop(arg0);
            var_v0 = 0;
        } else {
            mgras_fpi2cRead(arg0, 0, arg2);
            var_v0 = 1;
        }
    } else {
block_3:
        mgras_fpi2cStop(arg0);
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_fpi2cSend(void *arg0, s64 arg1) {
    s32 temp_a1;
    s32 var_s5;
    s32 var_v0;

    mgras_fpi2cWrite(NULL, arg1);
    var_s5 = 0x64;
loop_1:
    mgras_fpi2cRead(arg0, 1, (s64) sp);
    if ((s32) arg0 & 0x80) {
        var_s5 -= 1;
        if (var_s5 == 0) {
            goto block_3;
        }
        goto loop_1;
    }
    temp_a1 = (s32) arg0 & 8;
    if (var_s5 != 0) {
        var_v0 = 1;
        if ((s32) arg0 & 0x37) {
            mgras_fpi2cStop(arg0, temp_a1);
            var_v0 = 0;
        } else if (temp_a1 != 0) {
            mgras_fpi2cStop(arg0, temp_a1);
            var_v0 = 0;
        }
    } else {
block_3:
        mgras_fpi2cStop(arg0);
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_fpi2cStop(void *arg0) {
    s32 var_s1;
    s32 var_v0;

    mgras_fpi2cWrite((void *)1, 0xC2);
    var_s1 = 0xA;
loop_1:
    mgras_fpi2cRead(arg0, 1, (s64) sp);
    if (arg0 != (void *)0x81) {
        var_s1 -= 1;
        if (var_s1 == 0) {
            goto block_3;
        }
        goto loop_1;
    }
    if (var_s1 != 0) {
        var_v0 = 1;
    } else {
block_3:
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_fpi2cPortRead(void *arg0, s64 arg1, ? arg2) {
    if ((mgras_fpi2cStart((void *) (arg1 | 1)) != 0) && (mgras_fpi2cReceive(arg0, unksp8) != 0) && (mgras_fpi2cStop(arg0) != 0)) {
        return 1;
    }
    return 0;
}

s32 mgras_fpi2cPortWrite(void *arg0, ? arg2) {
    if ((mgras_fpi2cStart() != 0) && (mgras_fpi2cSend(arg0, unksp8) != 0) && (mgras_fpi2cStop(arg0) != 0)) {
        return 1;
    }
    return 0;
}

s32 mgras_fpi2cPanelID(s64 arg1, s64 arg2) {
    s32 var_v0;

    arg2 = arg1;
    if (mgras_fpi2cPortRead((void *)0x70, arg1) != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_v0 = 1;
        *arg2 = (s32) (((s32) *arg2 >> 5) & 7);
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s32 mgras_fpi2cPanelOn(void *arg0) {
    saved_reg_gp->unk-77F8 = 0;
    saved_reg_gp->unk-77FC = 1;
    saved_reg_gp->unk-7800 = 0;
    saved_reg_gp->unk0 = (s64) saved_reg_gp->unk-7800;
    if ((mgras_fpi2cPortWrite((void *)0x70, 0xE7) != 0) && (mgras_fpi2cAudioVolLeft(arg0, saved_reg_gp->unk-7800) != 0) && (mgras_fpi2cAudioVolRight(arg0, saved_reg_gp->unk-77FC) != 0) && (mgras_fpi2cAudioBass(arg0, saved_reg_gp->unk-77F8) != 0) && (mgras_fpi2cAudioTreble(arg0, saved_reg_gp->unk-77F4) != 0) && (mgras_fpi2cAudioSwitch(arg0, 0xCE) != 0) && (mgras_fpi2cBlUp(arg0, 0x64) != 0) && (mgras_fpi2cBlDown(arg0, 0xA) != 0) && (mgras_fpi2cSetBit(arg0, 0) != 0)) {
        return 1;
    }
    return 0;
}

s32 mgras_panels_off(void) {
    s32 temp_v0;
    s32 var_s5;
    s64 temp_s1;
    s64 temp_v0_2;
    s64 var_s0;
    u8 temp_a2;
    void *temp_a3;

    var_s0 = 0;
    temp_s1 = saved_reg_gp->unk-77F8;
    var_s5 = 1;
loop_3:
    temp_a3 = (var_s0 * 0x30) + temp_s1;
    temp_v0 = temp_a3->unk18;
    var_s0 += 1;
    temp_v0_2 = temp_a3->unk10;
    if ((temp_v0 != 0) && (temp_v0_2 != 0)) {
        temp_a2 = temp_v0_2->unk49;
        if ((temp_a2 != 0) && (temp_a2 != 0xFF)) {
            var_s5 *= mgras_fpi2cPanelOff(temp_a3->unk0);
        }
    }
    if (var_s0 < 2) {
        goto loop_3;
    }
    return var_s5;
}

void mgras_fpi2cPanelOff(void) {
    mgras_fpi2cPortWrite((void *)0x70, 0xFF);
}

s32 mgras_fpi2cBlUp(void *arg0, s32 arg1) {
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s2;

    var_s2 = arg1 - 1;
    temp_v0 = (saved_reg_gp->unk-77F8 == 0) ? 0 : 8;
    if (var_s2 != -1) {
        temp_s4 = temp_v0 | 0xE7;
        temp_s3 = temp_v0 | 0xE4;
        temp_s1 = temp_v0 | 0xE6;
loop_3:
        if ((mgras_fpi2cPortWrite(arg0, 0x70, temp_s1) != 0) && (mgras_fpi2cPortWrite(arg0, 0x70, temp_s3) != 0) && (mgras_fpi2cPortWrite(arg0, 0x70, temp_s1) != 0) && (mgras_fpi2cPortWrite(arg0, 0x70, temp_s4) != 0)) {
            temp_v0_2 = saved_reg_gp->unk-7800;
            var_s2 -= 1;
            if (temp_v0_2 < 0x64) {
                saved_reg_gp->unk-7800 = (s32) (temp_v0_2 + 1);
            }
            if (var_s2 != -1) {
                goto loop_3;
            }
            goto block_10;
        }
        return 0;
    }
block_10:
    return 1;
}

s32 mgras_fpi2cBlDown(void *arg0, s32 arg1) {
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s2;

    var_s2 = arg1 - 1;
    temp_v0 = (saved_reg_gp->unk-77F8 == 0) ? 0 : 8;
    if (var_s2 != -1) {
        temp_s4 = temp_v0 | 0xE7;
        temp_s3 = temp_v0 | 0xE0;
        temp_s1 = temp_v0 | 0xE2;
loop_4:
        if ((mgras_fpi2cPortWrite(arg0, 0x70, temp_s1) != 0) && (mgras_fpi2cPortWrite(arg0, 0x70, temp_s3) != 0) && (mgras_fpi2cPortWrite(arg0, 0x70, temp_s1) != 0) && (mgras_fpi2cPortWrite(arg0, 0x70, temp_s4) != 0)) {
            temp_v0_2 = saved_reg_gp->unk-7800;
            var_s2 -= 1;
            if (temp_v0_2 > 0) {
                saved_reg_gp->unk-7800 = (s32) (temp_v0_2 - 1);
            }
            if (var_s2 != -1) {
                goto loop_4;
            }
            goto block_11;
        }
        return 0;
    }
block_11:
    return 1;
}

s32 mgras_fpi2cAudioVolLeft(void *arg0, s64 arg1) {
    unksp8 = arg1;
    saved_reg_gp->unk-7800 = (s32) arg1;
    if ((mgras_fpi2cStart((void *)0x82) != 0) && (mgras_fpi2cSend(arg0, 0) != 0) && (mgras_fpi2cSend(arg0, unksp8) != 0) && (mgras_fpi2cStop(arg0) != 0)) {
        return 1;
    }
    return 0;
}

s32 mgras_fpi2cAudioVolRight(void *arg0, s64 arg1) {
    unksp8 = arg1;
    saved_reg_gp->unk-77FC = (s32) arg1;
    if ((mgras_fpi2cStart((void *)0x82) != 0) && (mgras_fpi2cSend(arg0, 1) != 0) && (mgras_fpi2cSend(arg0, unksp8) != 0) && (mgras_fpi2cStop(arg0) != 0)) {
        return 1;
    }
    return 0;
}

s32 mgras_fpi2cAudioBass(void *arg0, s64 arg1) {
    unksp8 = arg1;
    saved_reg_gp->unk-77F8 = (s32) arg1;
    if ((mgras_fpi2cStart((void *)0x82) != 0) && (mgras_fpi2cSend(arg0, 2) != 0) && (mgras_fpi2cSend(arg0, unksp8) != 0) && (mgras_fpi2cStop(arg0) != 0)) {
        return 1;
    }
    return 0;
}

s32 mgras_fpi2cAudioTreble(void *arg0, s64 arg1) {
    unksp8 = arg1;
    saved_reg_gp->unk-77F4 = (s32) arg1;
    if ((mgras_fpi2cStart((void *)0x82) != 0) && (mgras_fpi2cSend(arg0, 3) != 0) && (mgras_fpi2cSend(arg0, unksp8) != 0) && (mgras_fpi2cStop(arg0) != 0)) {
        return 1;
    }
    return 0;
}

s32 mgras_fpi2cAudioSwitch(void *arg0, s64 arg1) {
    unksp8 = arg1;
    saved_reg_gp->unk-77FC = (s32) ((arg1 & 0x20) != 0);
    if ((mgras_fpi2cStart((void *)0x82) != 0) && (mgras_fpi2cSend(arg0, 8) != 0) && (mgras_fpi2cSend(arg0, unksp8) != 0) && (mgras_fpi2cStop(arg0) != 0)) {
        return 1;
    }
    return 0;
}

void mgras_fpi2cSetBit(void *arg1) {
    if (arg1 != NULL) {
        saved_reg_gp->unk-77F8 = 1;
        mgras_fpi2cPortWrite((void *)0x70, 0xEF);
    } else {
        saved_reg_gp->unk-77F8 = 0;
        mgras_fpi2cPortWrite((void *)0x70, 0xE7);
    }
}

s32 mgras_fpi2c_command(void *arg0, void *arg1, s64 arg2) {
    s32 var_a4;
    s32 var_v0;
    s64 temp_a3;
    s64 temp_a5;
    u32 temp_a2;

    temp_a2 = arg1->unk0;
    temp_a5 = arg0->unkD0;
    if (temp_a2 < 0x11U) {
        temp_a3 = *(((s64) temp_a2 * 8) + &jpt_00000028);
        var_a4 = saved_reg_gp->unk-77F4;
        switch ((s64) temp_a2) {
        case 13:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
block_4:
            arg1->unk10 = var_a4;
            break;
        case 0:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cPanelOn((void *) temp_a5, temp_a2, temp_a3);
            break;
        case 1:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cPanelOff(temp_a5, temp_a2, temp_a3);
            break;
        case 2:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cBlUp((void *) temp_a5, *arg1->unk8, temp_a2, temp_a3);
            break;
        case 3:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cBlDown((void *) temp_a5, *arg1->unk8, temp_a2, temp_a3);
            break;
        case 4:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cAudioVolLeft((void *) temp_a5, *arg1->unk8, temp_a2, temp_a3);
            break;
        case 5:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cAudioVolRight((void *) temp_a5, *arg1->unk8, temp_a2, temp_a3);
            break;
        case 6:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cAudioBass((void *) temp_a5, *arg1->unk8, temp_a2, temp_a3);
            break;
        case 7:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cAudioTreble((void *) temp_a5, *arg1->unk8, temp_a2, temp_a3);
            break;
        case 8:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cAudioSwitch((void *) temp_a5, (s64) *arg1->unk8, temp_a2, temp_a3);
            break;
        case 9:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = (s32) saved_reg_gp->unk-7800;
            break;
        case 10:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a4 = saved_reg_gp->unk-7800;
            goto block_4;
        case 11:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = (s32) saved_reg_gp->unk-77FC;
            break;
        case 12:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = (s32) saved_reg_gp->unk-77F8;
            break;
        case 14:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = (s32) saved_reg_gp->unk-77FC;
            break;
        case 15:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = mgras_fpi2cSetBit((void *) temp_a5, *arg1->unk8, temp_a2, temp_a3);
            break;
        case 16:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk10 = (s32) saved_reg_gp->unk-77F8;
            break;
        }
        var_v0 = 0;
    } else {
        cmn_err(4, (s8 *) saved_reg_gp->unk-77F0, temp_a2);
        var_v0 = 0x16;
    }
    return var_v0;
}
