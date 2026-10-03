? sprintf(void *, s32, s32, s32);                   /* extern */
extern ? sub_0f030000;

void _GLdevname(s32 arg0) {
    s16 temp_a3;
    s16 var_v0;
    s32 var_a7;
    void *temp_a3_2;
    void *temp_t0;
    void *var_a0;

    temp_t0 = &sub_0f030000 - 0x6FE0;
    temp_a3 = temp_t0->unk4;
    var_a7 = 0;
    var_v0 = temp_a3;
    if (arg0 >= temp_a3) {
        var_a0 = temp_t0;
loop_2:
        var_a7 += 1;
        if (var_v0 != arg0) {
            var_v0 = var_a0->unkC;
            var_a0 += 8;
            if (arg0 < var_v0) {
                /* Duplicate return node #4. Try simplifying control flow for better match */
                temp_a3_2 = (var_a7 * 8) + temp_t0;
                sprintf(&sub_0f030000 + 0xD80, saved_reg_gp - 0x4578, temp_a3_2->unk-8, arg0 - temp_a3_2->unk-4);
                return;
            }
            goto loop_2;
        }
        return;
    }
    temp_a3_2 = (var_a7 * 8) + temp_t0;
    sprintf(&sub_0f030000 + 0xD80, saved_reg_gp - 0x4578, temp_a3_2->unk-8, arg0 - temp_a3_2->unk-4);
}
