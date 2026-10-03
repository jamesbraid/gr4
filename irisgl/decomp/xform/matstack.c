s32 __iglooGetMatrixStacks(s32 arg0) {
    s32 temp_s8;

    temp_s8 = __iglooGetMatrixMode();
    __iglooGetMatrixStacks(arg0, 0x1700, 0xBA6);
    __iglooGetMatrixStacks(arg0 + 8, 0x1701, 0xBA7);
    __iglooGetMatrixStacks(arg0 + 0x10, 0x1702, 0xBA8);
    return __iglooMatrixMode(temp_s8);
}

s32 __iglooGetMatrixStack(void *arg0, s32 arg1, s64 arg2) {
    s64 sp0;
    s32 *temp_at;
    s32 *temp_v1;
    s32 var_a1;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s64 var_v0;

    var_v0 = arg2;
    var_s1 = arg0->unk0;
    var_s2 = 1;
    var_s0 = arg0->unk4;
    if (var_s1 != 0) {
        sp0 = var_v0;
loop_3:
        var_v0 = __iglooGetIglooMatrix(sp0);
        var_a5 = 0;
        var_a1 = 0x12;
        do {
            temp_v1 = var_a5 + var_s0;
            temp_at = var_a5 + var_v0;
            var_a5 += 4;
            var_a1 -= 1;
            *temp_v1 = *temp_at;
        } while (var_a1 > 0);
        var_s1 -= 1;
        var_s0 += 0x48;
        if (var_s1 != 0) {
            if (var_s2 != 0) {
                var_s2 = 0;
                __iglooMatrixMode(arg1, var_a1);
            }
            __iglooPopMatrix();
            goto loop_3;
        }
    }
    return (s32) var_v0;
}

void __iglooSetMatrixStacks(s32 arg0) {
    s32 temp_s8;

    temp_s8 = __iglooGetMatrixMode();
    __iglooSetMatrixStacks(arg0, 0x1700, 0xBA6);
    __iglooSetMatrixStacks(arg0 + 8, 0x1701, 0xBA7);
    __iglooSetMatrixStacks(arg0 + 0x10, 0x1702, 0xBA8);
    __iglooMatrixMode(temp_s8);
}

void __iglooSetMatrixStack(void *arg0, s32 arg1, s64 arg2) {
    s64 sp0;
    s32 temp_a1;
    s32 var_s2;
    s32 var_s4;
    void *var_s0;

    var_s4 = 1;
    var_s2 = arg0->unk0;
    var_s0 = (arg0->unk4 + (var_s2 * 0x48)) - 0x48;
    if (var_s2 != 0) {
        sp0 = arg2;
loop_7:
        temp_a1 = (__iglooGetRawIglooMatrix(sp0))->unk44;
        var_s2 -= 1;
        if ((temp_a1 == 0) || (var_s0->unk44 != temp_a1)) {
            if (var_s4 != 0) {
                __iglooMatrixMode(arg1, temp_a1);
                var_s4 = 0;
            }
            __iglooLoadIglooMatrix(var_s0);
        }
        var_s0 -= 0x48;
        if (var_s2 != 0) {
            if (var_s4 != 0) {
                __iglooMatrixMode(arg1);
                var_s4 = 0;
            }
            __iglooPushMatrix();
            goto loop_7;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x30, 0x34], gap at: 0x10. */
void *__iglooAllocMatrixStacks(void) {
    s32 temp_a3_2;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a3;
    s64 temp_a4_2;
    s64 temp_a5;
    void *temp_a4;
    void *temp_v0;
    void *temp_v1;

    temp_a4 = *(void **)0x1004;
    temp_a5 = temp_a4->unkB4 + 1;
    unksp10 = temp_a5;
    temp_a4_2 = temp_a4->unkA8 + 1;
    unksp8 = temp_a4_2;
    temp_a2 = temp_a4->unkC0 + 1;
    unksp20 = temp_a2;
    temp_a3 = -8 & ((temp_a5 * 0x48) + 7);
    unksp28 = temp_a3;
    temp_a3_2 = (temp_a4_2 * 0x48) + 7;
    temp_a2_2 = -8 & temp_a3_2;
    unksp18 = temp_a2_2;
    temp_v0 = gl_malloc((((temp_a2 * 0x48) + 7) & ~7) + temp_a3 + temp_a2_2 + 0x18, 0, temp_a2_2, temp_a3_2);
    if (temp_v0 != NULL) {
        temp_v0->unk0 = (s32) unksp8;
        temp_v0->unk4 = (void *) (temp_v0 + 0x18);
        temp_v0->unk10 = (s32) unksp20;
        temp_v0->unk8 = (s32) unksp10;
        temp_v1 = temp_v0 + unksp18;
        temp_v0->unkC = (void *) (temp_v1 + 0x18);
        temp_v0->unk14 = (void *) (unksp28 + temp_v1 + 0x18);
    }
    return temp_v0;
}

void __iglooFreeMatrixStacks(void) {
    gl_free(0);
}
