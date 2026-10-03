s32 prctl(?, s32, s32);                             /* extern */

void __iglooTlsInit(void) {
    s64 sp8;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_v0;
    void *temp_v0_2;

    temp_a1 = *(s32 *)0x1000;
    temp_a3 = *(s32 *)0x200E00;
    if (temp_a1 != temp_a3) {
        *(gl_wstate **)0x1008 = gl_wstatep;
        if ((temp_a1 != 0) && ((sp8 = (s64) temp_a3, temp_v0 = prctl(0xD, temp_a1, temp_a3), (temp_v0 == -1)) || !(temp_v0 & 2))) {
            *(s32 *)0x100C = 0;
        }
        *(void **)0x1004 = NULL;
        *(void *)0x1000 = temp_a3;
        goto block_5;
    }
    temp_v0_2 = *(void *)0x1004;
    if (temp_v0_2 != NULL) {
        if (temp_v0_2->unk60 & 1) {
            gl_inMoveDraw = 1;
        } else {
block_5:
            gl_inMoveDraw = 0;
        }
    }
}

s32 __iglooTlsIsInitialized(void) {
    if (*(s32 *)0x200E00 == *(s32 *)0x1000) {
        return 1;
    }
    return 0;
}
