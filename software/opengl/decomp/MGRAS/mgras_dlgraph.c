void __glMgrDLNodeInit(__GLcontext *gc, void *(*arg1)(__GLcontext *, u32, u32), void *(*arg2)(__GLcontext *, u32), ...) {
    gc->imports.getenv = NULL;
    gc->unk14 = 0;
    gc->imports.free = NULL;
    gc->imports.warning = NULL;
    gc->imports.realloc = NULL;
    gc->imports.calloc = arg1;
    gc->imports.malloc = arg2;
}

void __glMgrDLNodeCall(__GLcontext *gc, s32 arg1, ...) {
    s64 sp28;
    s64 sp20;
    s64 temp_a2_2;
    s64 var_a0;
    void (*temp_v0)(__GLcontext *, void *);
    void (*var_a2)(__GLcontext *, void *);
    void (*var_v0)(__GLcontext *, void *);
    void *(*temp_a2)(__GLcontext *, void *, u32);
    void *(*temp_a6)(__GLcontext *, void *, u32);
    void *(*var_a2_2)(__GLcontext *, void *, u32);

    temp_a6 = gc->imports.realloc;
    if (temp_a6 != NULL) {
        temp_v0 = gc->imports.free;
        var_a2 = temp_v0;
loop_2:
        if (var_a2->unk0 == arg1) {
            var_a2->unkC = (s32) (var_a2->unkC + 1);
            return;
        }
        var_a2 += 0x10;
        if ((u32) var_a2 >= (u32) (temp_v0 + ((s32) temp_a6 * 0x10))) {
            temp_a2 = temp_a6 + 1;
            sp20 = (s64) temp_a2;
            temp_a2_2 = (s32) temp_a2 * 0x10;
            sp28 = temp_a2_2;
            var_v0 = __glCurrentContext->imports.realloc(__glCurrentContext, temp_v0, (u32) temp_a2_2);
            gc->imports.free = var_v0;
            var_a2_2 = temp_a2;
            var_a0 = sp28;
            /* Duplicate return node #7. Try simplifying control flow for better match */
            gc->imports.realloc = var_a2_2;
            (var_v0 + var_a0)->unk-10 = arg1;
            (gc->imports.free + var_a0)->unk-C = gc;
            (gc->imports.free + var_a0)->unk-8 = 0;
            (gc->imports.free + var_a0)->unk-4 = 1;
            return;
        }
        goto loop_2;
    }
    sp20 = 1;
    var_v0 = __glCurrentContext->imports.malloc(__glCurrentContext, 0x10U);
    var_a0 = 0x10;
    gc->imports.free = var_v0;
    var_a2_2 = (void *(*)(__GLcontext *, void *, u32)) 1;
    gc->imports.realloc = var_a2_2;
    (var_v0 + var_a0)->unk-10 = arg1;
    (gc->imports.free + var_a0)->unk-C = gc;
    (gc->imports.free + var_a0)->unk-8 = 0;
    (gc->imports.free + var_a0)->unk-4 = 1;
}

void __glMgrDLNodeLink(__GLcontext *gc, ...) {
    s32 var_a3;
    u32 var_a2;
    void *temp_a1;
    void *temp_v0;

    var_a2 = 0;
    if (gc->imports.realloc != NULL) {
        var_a3 = 0;
        do {
            temp_v0 = gc->imports.free + var_a3;
            temp_a1 = temp_v0->unk0;
            temp_v0->unk8 = (void *) temp_a1->unk10;
            temp_a1->unk10 = (void *) (gc->imports.free + var_a3);
            var_a2 += 1;
            var_a3 += 0x10;
        } while (var_a2 < (u32) gc->imports.realloc);
    }
    gc->unk14 = 1;
}

void __glMgrDLNodeUnlink(__GLcontext *gc, ...) {
    s32 temp_a7;
    s32 var_a5;
    u32 var_a6;
    void **temp_a3;
    void *temp_a2;
    void *temp_t0;
    void *var_a2;
    void *var_a4;

    if (gc->unk14 != 0) {
        var_a6 = 0;
        if (gc->imports.realloc != NULL) {
            var_a5 = 0;
loop_9:
            temp_a3 = gc->imports.free + var_a5;
            temp_a2 = temp_a3->unk0;
            temp_t0 = temp_a2->unk10;
            var_a6 += 1;
            var_a5 += 0x10;
            temp_a7 = temp_a3->unk8;
            if (temp_t0 == temp_a3) {
                temp_a2->unk10 = temp_a7;
            } else {
                var_a2 = temp_t0->unk8;
                var_a4 = temp_t0;
                if (var_a2 != temp_a3) {
                    do {
                        var_a4 = var_a2;
                        var_a2 = var_a2->unk8;
                    } while (var_a2 != temp_a3);
                }
                var_a4->unk8 = temp_a7;
            }
            if (var_a6 < (u32) gc->imports.realloc) {
                goto loop_9;
            }
        }
        __glCurrentContext->imports.free(__glCurrentContext, gc->imports.free);
        gc->unk14 = 0U;
        gc->imports.realloc = NULL;
        gc->imports.free = NULL;
    }
}
