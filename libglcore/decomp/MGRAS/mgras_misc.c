void __glMgrim_EdgeFlag(u8 flag) {
    if (flag != 1) {
        *(s32 *)0x74080 = 0x1000;
        return;
    }
    *(s32 *)0x74080 = 0xF00;
}

void __glMgrim_EdgeFlagv(u8 *flag) {
    if (*flag != 1) {
        *(s32 *)0x74080 = 0x1000;
        return;
    }
    *(s32 *)0x74080 = 0xF00;
}

void __glMgrasEatData(__GLcontext *gc, ...) {
    __GLcontext *var_a4;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a5;
    s32 var_at;

    var_a4 = gc;
    if ((s32) gc < 0) {
        var_a4 = NULL;
    }
    var_a0 = 0;
    var_a2 = 0xDEAD1;
    *(s32 *)0x74080 = (((s32) var_a4 * 4) + 4) | 0xE100;
    *(s32 *)0x74080 = (s32) var_a4;
    if ((s32) var_a4 > 0) {
        var_a5 = (s32) var_a4 & 3;
        var_at = (s32) var_a4 >> 2;
        if (var_a5 != 0) {
            do {
                var_a0 += 1;
                *(s32 *)0x74080 = var_a2;
                var_a5 -= 1;
                var_a2 += 1;
            } while (var_a5 != 0);
            var_at = (s32) var_a4 >> 2;
        }
        if (var_at != 0) {
            var_a0_2 = var_a0;
            var_a2_2 = var_a2;
            do {
                var_a0_2 += 4;
                temp_a1 = var_a2_2 + 1;
                temp_v1 = temp_a1 + 1;
                temp_v0 = temp_v1 + 1;
                *(s32 *)0x74080 = var_a2_2;
                var_a2_2 = temp_v0 + 1;
                *(s32 *)0x74080 = temp_a1;
                *(s32 *)0x74080 = temp_v1;
                *(s32 *)0x74080 = temp_v0;
            } while (var_a4 != var_a0_2);
        }
    }
}

void __glMgrim_DrawDumbPoint(__GLcontext *gc, __GLcontext *arg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, ...) {
    *(__GLcontext **)0x74080 = (__GLcontext *)0xE01C;
    *(__GLcontext **)0x74080 = gc;
    *(__GLcontext **)0x74080 = arg1;
    *(__GLcontext **)0x74080 = (bitwise __GLcontext *) fparg2;
    *(__GLcontext **)0x74080 = (bitwise __GLcontext *) fparg3;
    *(__GLcontext **)0x74080 = (bitwise __GLcontext *) fparg4;
    *(__GLcontext **)0x74080 = (bitwise __GLcontext *) fparg5;
    *(__GLcontext **)0x74080 = (bitwise __GLcontext *) fparg6;
}
