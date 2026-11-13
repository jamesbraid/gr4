void __glMgr_PushTokens(__GLcontext *gc, ...) {
    __GLcontext *var_a0;
    s64 temp_t3;
    void *(**var_v0)(__GLcontext *, u32, u32);
    void *(*var_t1)(__GLcontext *, u32);

    var_a0 = gc;
    var_a0 = gc;
    var_t1 = var_a0->imports.malloc;
    if (((s32) var_a0 & 4) == 0) {
        var_t1 -= 1;
        *(void *(**)(__GLcontext *, u32, u32))0x74080 = var_a0->imports.calloc;
        var_a0 += 4;
    }
    var_v0 = &var_a0->imports.calloc;
    if (var_t1 != (void *(*)(__GLcontext *, u32))1) {
        if (var_t1 != NULL) {
            do {
                temp_t3 = *var_v0;
                var_v0 += 8;
                var_t1 -= 2;
                *(void *(**)(__GLcontext *, u32, u32))0x74080 = temp_t3;
            } while ((s32) var_t1 >= 2);
            if (var_t1 != NULL) {
                /* Duplicate return node #6. Try simplifying control flow for better match */
                *(void *(**)(__GLcontext *, u32, u32))0x74080 = *var_v0;
            }
        }
    } else {
        *(void *(**)(__GLcontext *, u32, u32))0x74080 = *var_v0;
    }
}

void __glMgr_PushPixels(__GLcontext *gc, s32 arg1, ...) {
    __GLcontext *var_a0;
    s32 var_a1;
    s32 var_v0;
    s64 temp_t1;

    var_a0 = gc;
    var_a0 = gc;
    var_a1 = arg1;
    if ((var_a1 & 4) != 0) {
        var_a0 -= 1;
        *(s32 *)0x74080 = *var_a1;
        var_a1 += 4;
    }
    var_v0 = var_a1;
    if (var_a0 != (__GLcontext *)1) {
        if (var_a0 != NULL) {
            do {
                temp_t1 = *var_v0;
                var_v0 += 8;
                var_a0 -= 2;
                *(s32 *)0x74080 = temp_t1;
            } while ((s32) var_a0 >= 2);
            if (var_a0 != NULL) {
                /* Duplicate return node #6. Try simplifying control flow for better match */
                *(s32 *)0x74080 = *var_v0;
            }
        }
    } else {
        *(s32 *)0x74080 = *var_v0;
    }
}

void __glMgrim_pipe(__GLcontext *gc, s64 arg1, ...) {
    *(s64 *)0x74080 = ((s64) gc << 0x20) | ((u64) (arg1 << 0x20) >> 0x20);
}
