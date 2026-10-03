? sub_0da90000(__GLcontext *, void *);              /* extern */

void NewTexState(void *(**arg0)(s32), s32 arg1, s64 arg2) {
    s64 sp10;
    void *temp_v0;

    sp10 = arg2;
    temp_v0 = *arg0((arg2 * 8) + 0x1C);
    temp_v0->unk8 = 0;
    temp_v0->unk0 = arg1;
    temp_v0->unk4 = (s32) (sp10 + 2);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x10. */
void AddTex(void *arg0, void **arg1, u32 arg2, s32 arg3, u32 arg4, void *arg5) {
    s64 sp28;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_at;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a1;
    s32 var_s4;
    s64 temp_a2;
    u32 temp_v1;
    u32 var_s0;
    u32 var_t0;
    void *temp_v0;
    void *temp_v1_4;
    void *var_a2;
    void *var_a5;
    void *var_a7;
    void *var_v0;
    void *var_v0_2;

    var_a5 = arg5;
    var_a7 = *arg1;
    var_t0 = var_a7->unk8;
    var_s0 = arg4;
    if (arg4 < var_t0) {
        var_s4 = var_s0 * 8;
        var_a2 = var_s4 + var_a7;
loop_2:
        temp_v1 = var_a2->unkC;
        var_a2 += 8;
        var_a5 = (var_t0 * 8) + var_a7;
        if (temp_v1 < arg2) {
            var_s4 += 8;
            var_a5 = (void *) ((u32) var_a2 < (u32) var_a5);
            var_s0 += 1;
            if (var_a5 == NULL) {
                goto block_4;
            }
            goto loop_2;
        }
    } else {
block_4:
        var_s4 = var_s0 * 8;
    }
    temp_a6 = var_s0 < var_t0;
    if (temp_a6 != 0) {
        if ((var_s4 + var_a7)->unkC == arg2) {
            return;
        }
        goto block_9;
    }
block_9:
    temp_a4 = var_a7->unk4;
    unksp8 = (s64) arg1;
    if (var_t0 == temp_a4) {
        sp28 = (s64) arg3;
        temp_a2 = temp_a4 + 2;
        unksp10 = temp_a2;
        temp_v0 = arg0->unk8(var_a7, (temp_a2 * 8) + 0xC, temp_a4, var_a5, temp_a6, var_a7);
        var_a7 = temp_v0;
        *unksp8 = temp_v0;
        temp_v0->unk4 = (s32) unksp10;
        var_t0 = temp_v0->unk8;
    }
    if (var_s0 < var_t0) {
        temp_a4_2 = var_t0 - var_s0;
        var_a1 = temp_a4_2 & 3;
        var_v0 = (var_t0 * 8) + var_a7;
        if (var_a1 != 0) {
            do {
                var_v0 -= 8;
                var_a1 -= 1;
                var_v0->unk18 = (s32) var_v0->unk10;
                var_v0->unk14 = (s32) var_v0->unkC;
            } while (var_a1 != 0);
        }
        if ((temp_a4_2 >> 2) != 0) {
            var_v0_2 = var_v0;
            do {
                var_v0_2 -= 0x20;
                temp_a5 = var_v0_2->unk18;
                var_v0_2->unk18 = (s32) var_v0_2->unk10;
                temp_v1_2 = var_v0_2->unk14;
                var_v0_2->unk14 = (s32) var_v0_2->unkC;
                temp_at = var_v0_2->unk20;
                var_v0_2->unk20 = temp_a5;
                temp_a6_2 = var_v0_2->unk1C;
                var_v0_2->unk1C = temp_v1_2;
                temp_a5_2 = var_v0_2->unk28;
                var_v0_2->unk28 = temp_at;
                temp_v1_3 = var_v0_2->unk24;
                var_v0_2->unk24 = temp_a6_2;
                var_v0_2->unk30 = temp_a5_2;
                var_v0_2->unk2C = temp_v1_3;
            } while (var_v0_2 != ((var_s0 * 8) + var_a7));
        }
        var_t0 = var_a7->unk8;
    }
    temp_v1_4 = var_s4 + var_a7;
    var_a7->unk8 = (u32) (var_t0 + 1);
    temp_v1_4->unk10 = arg3;
    temp_v1_4->unkC = arg2;
}

void __glMgrDLTexInit(__GLcontext *gc, void *arg1, ...) {
    s32 sp0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s1;
    void *temp_a2;
    void *temp_s6;
    void *var_s0;

    var_a4 = 0;
    var_s1 = 0;
    temp_s6 = arg1->unk14;
    sp0 = 0;
    var_a3 = arg1->unk18;
    if (var_a3 > 0) {
        var_s0 = arg1->unk10;
loop_5:
        var_s1 += 1;
        if (var_s0->unk0 == __glMgrle_BindTextureEXT) {
            if (var_a4 == 0) {
                __glMgrDLNodeUnlink(gc, gc, temp_s6, 0, var_a3, var_a4);
                sp0 = M2C_ERROR(/* Read from unset register $v0 */);
            }
            temp_a2 = var_s0->unk4;
            __glMgrDLNodeUnlink(gc, gc, sp, temp_a2->unk4, temp_a2->unk0, 0);
            var_a4 = sp0;
            var_a3 = arg1->unk18;
        }
        var_s0 += 8;
        if (var_s1 < var_a3) {
            goto loop_5;
        }
    }
    temp_s6->unk30 = var_a4;
    temp_s6->unk8 = var_a4;
}

void __glMgrDLTexMerge(__GLcontext *gc, void *arg1, void *arg2, ...) {
    s64 sp38;
    void *sp0;
    ? var_a4;
    ? var_a4_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s64 var_s4;
    u32 temp_v0;
    u32 var_a2;
    u32 var_s0;
    u32 var_s0_2;
    void *temp_s3;
    void *temp_s5;
    void *var_s4_2;
    void *var_s4_3;

    var_s4 = saved_reg_s4;
    temp_s5 = arg2->unk8;
    if (temp_s5 != NULL) {
        temp_s3 = arg1->unk8;
        if (temp_s3 == NULL) {
            arg1->unk8 = temp_s5;
        } else {
            temp_v0 = temp_s3->unk8;
            var_a2 = temp_s5->unk8;
            if (var_a2 < temp_v0) {
                var_a2 = temp_v0;
            }
            __glMgrDLNodeUnlink(gc, gc, arg1, var_a2);
            sp0 = M2C_ERROR(/* Read from unset register $v0 */);
            var_s0 = 0;
            var_a4 = 0;
            if (temp_s3->unk8 != 0) {
                var_s4_2 = temp_s3;
                do {
                    temp_a3 = var_s4_2->unk10;
                    temp_a2 = var_s4_2->unkC;
                    var_s4_2 += 8;
                    __glMgrDLNodeUnlink(gc, gc, sp, temp_a2, temp_a3, var_a4);
                    var_s0 += 1;
                    var_a4 = M2C_ERROR(/* Read from unset register $v0 */);
                } while (var_s0 < (u32) temp_s3->unk8);
                var_s4 = sp38;
            }
            sp38 = var_s4;
            var_a4_2 = 0;
            var_s0_2 = 0;
            if (temp_s5->unk8 != 0) {
                var_s4_3 = temp_s5;
                do {
                    temp_a3_2 = var_s4_3->unk10;
                    temp_a2_2 = var_s4_3->unkC;
                    var_s4_3 += 8;
                    __glMgrDLNodeUnlink(gc, gc, sp, temp_a2_2, temp_a3_2, var_a4_2);
                    var_a4_2 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_s0_2 += 1;
                } while (var_s0_2 < (u32) temp_s5->unk8);
            }
            if (temp_s3->unk0 == arg1) {
                sub_0da90000(gc, temp_s3);
            }
            arg1->unk8 = sp0;
        }
    }
}

void __glMgrDLTexFree(__GLcontext *gc, void *arg1, ...) {
    s64 sp28;
    s64 sp0;
    s64 var_ra;
    void *temp_s0;
    void *temp_s1;
    void *temp_s3;

    var_ra = saved_reg_ra;
    temp_s1 = arg1->unk14;
    temp_s0 = temp_s1->unk8;
    temp_s3 = temp_s1->unk30;
    if (temp_s0 != NULL) {
        if (temp_s3 != NULL) {
            sp0 = (s64) gc;
            gc->imports.free(gc, temp_s3);
            var_ra = sp28;
        }
        if ((temp_s3 != temp_s0) && (*temp_s0 == temp_s1)) {
            sp28 = var_ra;
            gc->imports.free(gc, temp_s0);
        }
        temp_s1->unk30 = NULL;
        temp_s1->unk8 = NULL;
    }
}
