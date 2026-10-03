void gl_g_gl_misc(s32 arg0, u32 arg3) {
    s32 sp0;
    s32 var_v0;
    void *temp_a3;

    var_v0 = -1;
    if ((M2C_ERROR(/* Read from unset register $a4 */) != 0) && (arg3 >= 4U)) {
        temp_a3 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5D188)->unk-5B00)->unkE0;
        if (arg0 != 0x8000) {
            if (arg0 != 0x8002) {
                if (arg0 == 0x8003) {
                    var_v0 = 0;
                    sp0 = temp_a3->unk90;
                } else if (arg0 == 0x8001) {
                    var_v0 = 0;
                    sp0 = temp_a3->unk88;
                }
            } else {
                sp0 = temp_a3->unk8C;
                var_v0 = 0;
            }
        } else {
            var_v0 = 0;
            sp0 = temp_a3->unk8;
        }
        if (var_v0 == 0) {
            *M2C_ERROR(/* Read from unset register $a4 */) = sp0;
        }
    }
}
