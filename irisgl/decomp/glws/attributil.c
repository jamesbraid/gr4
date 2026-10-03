void gl_find(s32 arg0, s32 arg1) {
    ? **temp_a5;
    ? *var_a4;
    ? *var_v0;

    temp_a5 = ((arg1 & 0x7F) * 4) + arg0;
    var_v0 = *temp_a5;
    var_a4 = var_v0;
    if (var_v0 != NULL) {
loop_1:
        if (var_v0->unk4 != arg1) {
            var_a4 = var_v0;
            var_v0 = var_v0->unk0;
            if (var_v0 == NULL) {

            } else {
                goto loop_1;
            }
        } else if (var_v0 != var_a4) {
            *var_a4 = var_v0->unk0;
            var_v0->unk0 = *temp_a5;
            *temp_a5 = var_v0;
        }
    }
}

void gl_insert(s32 arg0, void *arg1) {
    void **temp_at;

    temp_at = ((arg1->unk4 & 0x7F) * 4) + arg0;
    arg1->unk0 = (void *) *temp_at;
    *temp_at = arg1;
}

void gl_remove(s64 arg0, s64 arg1) {
    s32 *temp_v0;

    temp_v0 = gl_find();
    if (temp_v0 != NULL) {
        *(((subroutine_arg2 & 0x7F) * 4) + subroutine_arg0) = *temp_v0;
    }
}
