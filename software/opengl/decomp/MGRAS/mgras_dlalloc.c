typedef struct __GLexportsRec {
    /* 0x00 */ u8 (*destroyContext)(__GLcontext *);
    /* 0x04 */ u8 (*loseCurrent)(__GLcontext *);
    /* 0x08 */ u8 (*makeCurrent)(__GLcontext *);
    /* 0x0C */ u8 (*shareContext)(__GLcontext *, __GLcontext *);
    /* 0x10 */ u8 (*copyContext)(__GLcontext *, __GLcontext *, u32);
    /* 0x14 */ u8 (*forceCurrent)(__GLcontext *);
    /* 0x18 */ u8 (*notifyResize)(__GLcontext *);
    /* 0x1C */ void (*notifyDestroy)(__GLcontext *);
    /* 0x20 */ void (*notifySwapBuffers)(__GLcontext *);
    /* 0x24 */ void *(*dispatchExec)(__GLcontext *);
    /* 0x28 */ void (*beginDispatchOverride)(__GLcontext *);
    /* 0x2C */ void (*endDispatchOverride)(__GLcontext *);
    /* 0x30 */ s32 unk30;                           /* inferred */
    /* 0x34 */ s8 unk34;                            /* inferred */
    /* 0x35 */ char pad35[0x13];                    /* maybe part of unk34[0x14]? */
} __GLexports;                                      /* size = 0x48 */

void __glMgrDLPoolToPtr(__GLcontext *gc, s32 arg1, ...) {

}

void __glMgrDLAllocInit(__GLcontext *gc, ...) {
    s64 sp10;
    __GLcontext *var_s0;
    __GLcontext *var_v0;
    s32 *var_a4;
    s32 temp_a1;
    s64 var_ra;
    u32 var_s1;
    u32 var_s1_2;
    u8 (*temp_a2)(__GLcontext *);
    void (*temp_a3)(__GLcontext *, s8 *);
    void (*temp_v0)(__GLcontext *, s8 *);

    var_ra = saved_reg_ra;
    var_s0 = gc;
    temp_v0 = gc->imports.warning;
    if ((u32) temp_v0 >= 0x101U) {
        __glMgrDLPoolToPtr(__glCurrentContext, __glCurrentContext, var_s0, temp_v0 + 0x80);
        var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
        var_ra = sp10;
    }
    temp_a2 = var_s0->imports.fatal - 9;
    var_s0->exports.destroyContext = temp_a2;
    var_s1 = 0;
    var_s0->exports.unk30 = 0;
    var_s0->exports.endDispatchOverride = NULL;
    var_s0->exports.beginDispatchOverride = NULL;
    var_s0->exports.dispatchExec = NULL;
    var_s0->exports.notifySwapBuffers = NULL;
    var_s0->exports.notifyDestroy = NULL;
    var_s0->exports.notifyResize = NULL;
    var_s0->exports.forceCurrent = NULL;
    var_s0->exports.copyContext = NULL;
    var_s0->exports.shareContext = NULL;
    temp_a3 = var_s0->imports.warning;
    var_s0->exports.makeCurrent = NULL;
    if (temp_a3 != NULL) {
        var_v0 = var_s0;
        do {
            var_v0->exports.unk34 = 0xFF;
            var_s1 += 1;
            var_v0 += 1;
        } while (var_s1 < (u32) var_s0->imports.warning);
        sp10 = var_ra;
    }
    sp10 = var_ra;
    var_s0->exports.loseCurrent = NULL;
    __glMgrDLPoolToPtr(var_s0, var_s0, 0, temp_a2, temp_a3);
    var_a4 = M2C_ERROR(/* Read from unset register $v0 */);
    var_s1_2 = 1;
    if ((u32) var_s0->imports.warning >= 2U) {
        do {
            temp_a1 = var_s1_2 << (s32) (var_s0->imports.fatal + 2);
            *var_a4 = temp_a1;
            __glMgrDLPoolToPtr(var_s0, var_s0, temp_a1);
            var_s1_2 += 1;
            var_a4 = M2C_ERROR(/* Read from unset register $v0 */);
        } while (var_s1_2 < (u32) var_s0->imports.warning);
    }
    *var_a4 = -1;
}

void __glMgrDLAllocClose(__GLcontext *gc, void *arg1, ...) {
    ? *temp_a1;
    ? *temp_a1_2;
    ? *var_s0;
    ? *var_s0_2;
    void *var_s2;

    var_s2 = arg1;
loop_4:
    var_s0 = var_s2->unk58;
    var_s2 += 4;
    if (var_s0 != NULL) {
        do {
            temp_a1 = var_s0;
            var_s0 = *var_s0;
            gc->imports.free(gc, temp_a1);
        } while (var_s0 != NULL);
    }
    if (var_s2 != (arg1 + 0x28)) {
        goto loop_4;
    }
    var_s0_2 = arg1->unk54;
    if (var_s0_2 != NULL) {
        do {
            temp_a1_2 = var_s0_2;
            var_s0_2 = *var_s0_2;
            gc->imports.free(gc, temp_a1_2);
        } while (var_s0_2 != NULL);
    }
}

void __glMgrDLMalloc(__GLcontext *gc, void *arg1, s32 arg2, s32 arg3, ...) {
    s64 sp0;
    s32 temp_a1_4;
    s32 temp_a2_2;
    s32 temp_at;
    s32 var_a2;
    s32 var_a3;
    s32 var_s5;
    s8 var_s0;
    u32 temp_a4;
    u32 temp_v0;
    u32 var_v0;
    u8 (*temp_a1)(__GLcontext *);
    u8 (*temp_a1_2)(__GLcontext *);
    u8 (*temp_a3)(__GLcontext *);
    u8 (*var_s2)(__GLcontext *);
    void *temp_a1_3;
    void *temp_a2;
    void *temp_s2;

    var_a2 = arg2;
    var_a3 = arg3;
    var_s0 = 0;
    temp_a4 = arg1->unk4;
    var_v0 = 1 << (s32) gc->exports.destroyContext;
    if (var_v0 < temp_a4) {
loop_1:
        var_s0 += 1;
        temp_v0 = var_v0 * 2;
        var_a2 = temp_v0 < temp_a4;
        if (var_a2 != 0) {
            var_s0 += 1;
            var_v0 = temp_v0 * 2;
            var_a3 = var_v0 < temp_a4;
            if (var_a3 != 0) {
                goto loop_1;
            }
        }
    }
    temp_s2 = (var_s0 * 4) + gc;
    sp0 = (s64) temp_s2;
    var_s2 = temp_s2->unk58;
    if (var_s2 == NULL) {
        if (gc->exports.loseCurrent != (u8 (*)(__GLcontext *))-1) {
            var_s2 = gc->exports.makeCurrent;
            if (var_s2 == NULL) {
                __glMgrDLPoolToPtr(__glCurrentContext, __glCurrentContext, 0x14, var_a2, var_a3, temp_a4, __glCurrentContext);
                var_s2 = M2C_ERROR(/* Read from unset register $v0 */);
            } else {
                gc->exports.makeCurrent = *var_s2;
            }
            var_s2->unk0 = 0;
            temp_a1 = gc->exports.loseCurrent;
            var_s2->unk4 = temp_a1;
            __glMgrDLPoolToPtr(gc, gc, temp_a1);
            temp_a3 = *M2C_ERROR(/* Read from unset register $v0 */);
            temp_a2 = gc->exports.destroyContext + var_s0;
            gc->exports.loseCurrent = temp_a3;
            var_s2->unkC = 0;
            temp_a1_2 = var_s2->unk4;
            var_s2->unk8 = temp_a2;
            var_s2->unk10 = temp_a1_2;
            __glMgrDLPoolToPtr(gc, gc, temp_a1_2, temp_a2, temp_a3);
            var_s5 = 1;
            if ((1 << (gc->imports.fatal - var_s2->unk8)) > 1) {
                do {
                    temp_a2_2 = var_s5 << (var_s2->unk8 + 2);
                    temp_a1_3 = var_s2->unk4 + temp_a2_2;
                    *M2C_ERROR(/* Read from unset register $v0 */) = temp_a1_3;
                    __glMgrDLPoolToPtr(gc, gc, temp_a1_3, temp_a2_2);
                    var_s5 += 1;
                } while (var_s5 < (1 << (gc->imports.fatal - var_s2->unk8)));
            }
            var_a2 = -1;
            *M2C_ERROR(/* Read from unset register $v0 */) = -1;
            sp0->unk58 = var_s2;
            (((u32) var_s2->unk4 >> (s32) (gc->imports.fatal + 2)) + gc)->unk80 = var_s0;
            goto block_14;
        }
        arg1->unk0 = -1;
        return;
    }
block_14:
    temp_a1_4 = var_s2->unk10;
    arg1->unk0 = temp_a1_4;
    __glMgrDLPoolToPtr(gc, gc, temp_a1_4, var_a2);
    temp_at = *M2C_ERROR(/* Read from unset register $v0 */);
    var_s2->unk10 = temp_at;
    var_s2->unkC = (s32) (var_s2->unkC + 1);
    if (temp_at == -1) {
        sp0->unk58 = (u8 (*)(__GLcontext *)) var_s2->unk0;
        var_s2->unk0 = (u8 (*)(__GLcontext *)) gc->exports.makeCurrent;
        gc->exports.makeCurrent = var_s2;
    }
    __glMgrDLPoolToPtr(gc, gc, arg1->unk0);
}

void __glMgrDLFree(__GLcontext *gc, u32 *arg1, void *arg2, s32 arg3, ...) {
    s64 sp48;
    s64 sp40;
    s32 temp_s4_2;
    s32 temp_v1;
    s32 var_a3;
    s32 var_v0;
    s64 var_ra;
    u32 temp_s4;
    u8 (*temp_a0)(__GLcontext *);
    u8 (*var_s0)(__GLcontext *);
    u8 (*var_s2)(__GLcontext *);
    u8 temp_a4_2;
    void *temp_a4;
    void *temp_at;
    void *temp_s0;
    void *var_a2;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    var_a3 = arg3;
    var_s2 = NULL;
    temp_at = gc->imports.fatal + 2;
    temp_s4 = (u32) *arg1 >> (s32) temp_at;
    temp_a4 = temp_s4 + gc;
    unksp8 = (s64) temp_a4;
    temp_a4_2 = temp_a4->unk80;
    temp_s0 = (temp_a4_2 * 4) + gc;
    unksp18 = (s64) temp_s0;
    var_s0 = temp_s0->unk58;
    temp_s4_2 = temp_s4 << (s32) temp_at;
    if (var_s0 != NULL) {
loop_1:
        if (var_s0->unk4 != temp_s4_2) {
            var_s2 = var_s0;
            var_s0 = var_s0->unk0;
            if (var_s0 == NULL) {
                goto block_3;
            }
            goto loop_1;
        }
        if (var_s0 != NULL) {
            var_v0 = var_s0->unkC;
        } else {
            goto block_3;
        }
    } else {
block_3:
        var_s0 = gc->exports.makeCurrent;
        var_s2 = NULL;
        if (var_s0 != NULL) {
            gc->exports.makeCurrent = *var_s0;
        } else {
            sp40 = (s64) temp_a4_2;
            __glMgrDLPoolToPtr(__glCurrentContext, __glCurrentContext, 0x14, temp_a4_2);
            var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
            var_ra = sp48;
        }
        var_s0->unk0 = (u8 (*)(__GLcontext *)) unksp18->unk58;
        unksp18->unk58 = var_s0;
        var_s0->unk4 = temp_s4_2;
        var_a2 = gc->exports.destroyContext + temp_a4_2;
        var_s0->unk8 = var_a2;
        var_a3 = -1;
        var_s0->unk10 = -1;
        var_v0 = 1 << (gc->imports.fatal - var_a2);
        var_s0->unkC = var_v0;
    }
    sp48 = var_ra;
    temp_v1 = var_v0 - 1;
    var_s0->unkC = temp_v1;
    if (temp_v1 != 0) {
        __glMgrDLPoolToPtr(gc, gc, *arg1, var_a2, var_a3, temp_a4_2);
        *M2C_ERROR(/* Read from unset register $v0 */) = var_s0->unk10;
        var_s0->unk10 = (u32) *arg1;
    } else {
        __glMgrDLPoolToPtr(gc, gc, var_s0->unk4, var_a2, var_a3, temp_a4_2);
        *M2C_ERROR(/* Read from unset register $v0 */) = gc->exports.loseCurrent;
        gc->exports.loseCurrent = var_s0->unk4;
        temp_a0 = var_s0->unk0;
        if (var_s2 != NULL) {
            *var_s2 = temp_a0;
        } else {
            unksp18->unk58 = temp_a0;
        }
        var_s0->unk0 = (u8 (*)(__GLcontext *)) gc->exports.makeCurrent;
        gc->exports.makeCurrent = var_s0;
        unksp8->unk80 = 0xFF;
    }
}
