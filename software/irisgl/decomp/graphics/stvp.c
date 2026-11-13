? glDepthRange(void *);                             /* extern */
? glGetIntegerv(?, void *);                         /* extern */

void __iglooDepthRange(f64 arg0, f64 arg1) {
    void *temp_a1;

    temp_a1 = *(void **)0x1004;
    if (temp_a1->unkF8 == arg0) {
        if (temp_a1->unk100 != arg1) {
            goto block_4;
        }
    } else {
block_4:
        temp_a1->unk100 = arg1;
        temp_a1->unkF8 = arg0;
        glDepthRange(temp_a1);
    }
}

s32 __iglooGetDepthRange(f64 *arg0, f64 *arg1) {
    f64 temp_f0;
    void *temp_at;

    temp_at = *(void **)0x1004;
    *arg0 = temp_at->unkF8;
    temp_f0 = temp_at->unk100;
    *arg1 = temp_f0;
    return (s32) temp_f0;
}

void __iglooScissor(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_at;

    temp_at = *(void **)0x1004;
    temp_at->unkF4 = 1;
    temp_at->unkF0 = arg3;
    temp_at->unkEC = arg2;
    temp_at->unkE8 = arg1;
    temp_at->unkE4 = arg0;
    glScissor(arg0, arg1, arg2, arg3);
}

s32 __iglooGetScissor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_v0;
    s32 var_a5;
    void *temp_s0;

    temp_s0 = *(void **)0x1004;
    if (temp_s0->unkF4 != 1) {
        sp28 = arg2;
        sp20 = arg3;
        sp30 = arg1;
        sp38 = arg0;
        glGetIntegerv(0xC10, sp);
        var_a5 = sp0;
        temp_s0->unkE4 = var_a5;
        temp_s0->unkE8 = sp4;
        temp_s0->unkEC = sp8;
        temp_s0->unkF4 = 1U;
        temp_s0->unkF0 = spC;
    } else {
        var_a5 = temp_s0->unkE4;
    }
    *arg0 = var_a5;
    temp_v0 = temp_s0->unkE8;
    *arg1 = temp_v0;
    *arg2 = (s32) temp_s0->unkEC;
    *arg3 = (s32) temp_s0->unkF0;
    return temp_v0;
}

void __iglooViewport(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_at;

    temp_at = *(void **)0x1004;
    temp_at->unkE0 = 1;
    temp_at->unkDC = arg3;
    temp_at->unkD8 = arg2;
    temp_at->unkD4 = arg1;
    temp_at->unkD0 = arg0;
    glViewport(arg0, arg1, arg2, arg3);
}

s32 __iglooGetViewport(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_v0;
    s32 var_a5;
    void *temp_s0;

    temp_s0 = *(void **)0x1004;
    if (temp_s0->unkE0 != 1) {
        sp28 = arg2;
        sp20 = arg3;
        sp30 = arg1;
        sp38 = arg0;
        glGetIntegerv(0xBA2, sp);
        var_a5 = sp0;
        temp_s0->unkD0 = var_a5;
        temp_s0->unkD4 = sp4;
        temp_s0->unkD8 = sp8;
        temp_s0->unkE0 = 1U;
        temp_s0->unkDC = spC;
    } else {
        var_a5 = temp_s0->unkD0;
    }
    *arg0 = var_a5;
    temp_v0 = temp_s0->unkD4;
    *arg1 = temp_v0;
    *arg2 = (s32) temp_s0->unkD8;
    *arg3 = (s32) temp_s0->unkDC;
    return temp_v0;
}
