void gl_inet_addr(u8 *arg0) {
    s32 *var_t1;
    s32 temp_a0;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_v0;
    u8 *var_a0;
    u8 var_a4;
    u8 var_a5;

    var_a0 = arg0;
    var_t1 = sp;
    temp_a7 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5A7A4)->unk-5B44;
loop_1:
    var_a5 = var_a0->unk0;
    var_v0 = 0;
    var_a6 = 0xA;
    if (var_a5 == 0x30) {
        var_a5 = var_a0->unk1;
        var_a6 = 8;
        var_a0 += 1;
        if ((var_a5 != 0x78) && (var_a5 != 0x58)) {

        } else {
            var_a5 = var_a0->unk1;
            var_a0 += 1;
            var_a6 = 0x10;
        }
    }
    var_a4 = var_a5;
    if (var_a5 != 0) {
loop_3:
        temp_t0 = ((var_a4 * 4) + temp_a7)->unk4;
        if (temp_t0 & 4) {
            var_a0 += 1;
            var_v0 = ((var_v0 * var_a6) + var_a4) - 0x30;
            goto block_5;
        }
        if ((var_a6 == 0x10) && (temp_t0 & 0x80)) {
            var_a0 += 1;
            if (temp_t0 & 2) {
                var_a5_2 = 0x61;
            } else {
                var_a5_2 = 0x41;
            }
            var_v0 = (var_a4 - var_a5_2) + (var_v0 * 0x10) + 0xA;
block_5:
            var_a5 = *var_a0;
            var_a4 = var_a5;
            if (var_a5 != 0) {
                goto loop_3;
            }
        }
    }
    var_a0 += 1;
    if (var_a5 == 0x2E) {
        if ((u32) var_t1 >= (u32) (sp + 0x10)) {
            return;
        }
        *var_t1 = var_v0;
        var_t1 += 4;
        goto loop_1;
    }
    if ((var_a5 == 0) || (((var_a5 * 4) + temp_a7)->unk4 & ((-1 << 0x1F) | 8))) {
        temp_a0 = (s32) ((var_t1 - sp) + 4) >> 2;
        *var_t1 = var_v0;
        switch (temp_a0) {                          /* irregular */
        case 4:
            return;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        }
    }
}
