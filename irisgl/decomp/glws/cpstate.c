s32 __iglooGetCopyState(void *arg0) {
    s32 temp_a4;
    s32 var_a0;
    s32 var_a3;
    s64 *temp_a1;
    s64 *temp_v1;
    void *temp_v0;

    var_a0 = 0x27;
    var_a3 = 0;
    temp_a4 = __iglooGetCurrentContextInfo() + 0x30;
    do {
        temp_a1 = var_a3 + (arg0 + 0x20);
        temp_v1 = var_a3 + temp_a4;
        var_a3 += 8;
        var_a0 -= 1;
        *temp_a1 = *temp_v1;
    } while (var_a0 > 0);
    temp_v0 = __iglooAllocMatrixStacks(var_a0, temp_a1);
    arg0->unk4 = temp_v0;
    if (temp_v0 != NULL) {
        __iglooGetMatrixStacks(temp_v0);
    }
    __iglooGetScissor(arg0 + 0xD4, arg0 + 0xD8, arg0 + 0xDC, arg0 + 0xE0);
    return __iglooGetViewport(arg0 + 8, arg0 + 0xC, arg0 + 0x10, arg0 + 0x14);
}

void __iglooSetCopyState(void *arg0) {
    s32 temp_a0;

    __iglooExtViewport(arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14);
    __iglooDepthRange(arg0->unkE8);
    __iglooScissor(arg0->unk18 + arg0->unkD4, arg0->unk1C + arg0->unkD8, arg0->unkDC, arg0->unkE0);
    __iglooSetEnable(0xC11, arg0->unk6A);
    temp_a0 = arg0->unk4;
    if (temp_a0 != 0) {
        __iglooSetMatrixStacks(temp_a0);
        __iglooFreeMatrixStacks(arg0->unk4);
    }
    __iglooSetEnable(0xB44, arg0->unk70);
    __iglooPixelZoom(arg0->unk48);
}
