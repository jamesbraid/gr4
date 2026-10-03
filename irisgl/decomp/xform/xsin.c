void gl_xtableglobs(void) {

}

void gl_g_gl_sincos(s32 arg0, f32 *arg1, f32 *arg2) {
    f32 *var_a6;
    f32 temp_f4;
    f32 temp_f4_2;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a5_5;
    void *temp_at;

    var_a0 = arg0;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF03188;
    if (var_a0 < 0) {
        temp_a3 = 0xE0F - var_a0;
        var_a5 = (temp_a3 / 3600) & 3;
        M2C_TRAP_IF(0xE10 == 0);
        if (var_a5 != 0) {
            do {
                var_a5 -= 1;
                var_a0 += 0xE10;
            } while (var_a5 != 0);
        }
        if ((temp_a3 / 14400) != 0) {
            var_a5_2 = var_a0;
            do {
                var_a5_2 += 0x3840;
            } while (var_a5_2 < 0);
            var_a0 = var_a5_2;
        }
    }
    temp_v1 = var_a0 - 1;
    var_a5_3 = 0;
    if (var_a0 >= 0x385) {
        temp_a6 = var_a0;
        var_a5_4 = (temp_v1 / 900) & 3;
        M2C_TRAP_IF(0x384 == 0);
        if (var_a5_4 != 0) {
            do {
                var_a5_4 -= 1;
                var_a0 -= 0x384;
            } while (var_a5_4 != 0);
        }
        if ((temp_v1 / 3600) != 0) {
            var_a5_5 = var_a0;
            do {
                var_a5_5 -= 0xE10;
            } while (var_a5_5 >= 0x385);
            var_a0 = var_a5_5;
        }
        M2C_TRAP_IF(0x384 == 0);
        var_a5_3 = (s32) (temp_a6 - 1) / 900;
    }
    if (var_a5_3 & 1) {
        var_a6 = (var_a0 * 0xFFFFFFFC) + temp_at->unk-7F74 + 0xE10;
    } else {
        var_a6 = (var_a0 * 4) + temp_at->unk-7F74;
    }
    if (arg1 != NULL) {
        temp_f4 = *var_a6;
        if (var_a5_3 & 2) {
            *arg1 = -temp_f4;
        } else {
            *arg1 = temp_f4;
        }
    }
    if (arg2 != NULL) {
        temp_f4_2 = ((temp_at->unk-7F74 * 2) - var_a6)->unkE10;
        if ((var_a5_3 + 1) & 2) {
            *arg2 = -temp_f4_2;
        } else {
            *arg2 = temp_f4_2;
        }
    }
}
