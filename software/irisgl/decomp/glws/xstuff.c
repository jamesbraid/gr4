s32 XAllocColorCells(void *, void *, ?, ?);         /* extern */
void *XCreateColormap(void *, void *, void *, ?);   /* extern */
? XFree(void *);                                    /* extern */
s32 XGetRGBColormaps(void *, void *, void *, s32 *); /* extern */
? XInstallColormap(s64, s32);                       /* extern */
? XSetErrorHandler(void *);                         /* extern */
? XStoreColor(void *);                              /* extern */
? XStoreColors(void *, s64);                        /* extern */
s32 XmuLookupStandardColormap(s32, s32, s32);       /* extern */
extern ? sub_0f130000;

void __iglooCatchXErrors(s32 arg0) {
    if (arg0 != 1) {
        XSetErrorHandler(NULL);
    } else {
        saved_reg_gp->unk-4CE8 = 0;
        XSetErrorHandler(&sub_0f130000 + 0x2A0);
    }
}

s32 __iglooGetLastXError(void) {
    u8 temp_a3;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF02FDC;
    temp_a3 = temp_at->unk-4CE8;
    if (temp_a3 != 1) {
        return 0;
    }
    temp_at->unk-4CE8 = (u8) (temp_a3 == 0);
    return temp_at->unk-7FA0 - 0x6AB8;
}

void __iglooXErrorHandler(void *arg1) {
    void *temp_at;
    void *temp_v1;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF02FA8;
    temp_v1 = temp_at->unk-7FA0 - 0x6AB8;
    temp_v1->unk0 = (s32) arg1->unk0;
    temp_v1->unk4 = (s32) arg1->unk4;
    temp_v1->unk8 = (s32) arg1->unk8;
    temp_v1->unkC = (s32) arg1->unkC;
    temp_at->unk-4CE8 = 1;
    temp_v1->unk10 = (s32) arg1->unk10;
}

void __iglooFindColormap(s64 arg0, void *arg1) {
    s64 sp18;
    s64 sp0;
    s32 temp_v0;
    s32 var_s0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_s0 = 0;
    temp_v0 = arg1->unk10;
    if (temp_v0 != 4) {
        if (temp_v0 == 3) {
            sp0 = arg0;
            __iglooFindColormap(3);
            var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
            var_ra = sp18;
        }
    } else {
        sp0 = arg0;
        __iglooFindColormap();
        var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
        var_ra = sp18;
    }
    if (var_s0 != 0) {
        sp18 = var_ra;
        XInstallColormap(arg0, var_s0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
void FindColormapsForPseudoColor(void *arg0, void *arg1, s64 arg2) {
    s32 temp_a0;
    s64 temp_v0;
    void *temp_s0;

    unksp28 = arg2;
    temp_a0 = arg1->unk0->unk1C;
    temp_s0 = XCreateColormap((arg0->unk8C + (arg1->unk8 * 0x50))->unk8, arg1->unk0, NULL);
    unksp20 = (s64) temp_a0;
    temp_v0 = __iglooMalloc(temp_a0 * 4);
    unksp18 = temp_v0;
    if (temp_v0 != 0) {
        if (temp_s0 != NULL) {
            if (XAllocColorCells(arg0, temp_s0, 1, 0) == 0) {
                if (XAllocColorCells(arg0, temp_s0, 1, 0) != 0) {
                    __iglooFindColormap((s64) arg0, temp_s0, arg1, unksp28);
                }
            } else {
                __iglooFindColormap((s64) arg0, temp_s0, arg1, unksp28);
            }
        }
        __iglooFree(unksp18);
    }
}

void FindStandardColormap(void *arg0, void *arg1) {
    s64 sp20;
    s32 sp4;
    void *temp_a1;
    void *var_v0;

    sp20 = 0;
    temp_a1 = (arg0->unk8C + (arg1->unk8 * 0x50))->unk8;
    if (XmuLookupStandardColormap(arg1->unk8, arg1->unk0->unk4, arg1->unkC) != 0) {
        if (XGetRGBColormaps(arg0, temp_a1, sp, &sp4) != 0) {
            if (sp4 > 0) {
                var_v0 = subroutine_arg0;
loop_4:
                if (var_v0->unk20 != arg1->unk4) {
                    var_v0 += 0x28;
                    if (((sp4 * 0x28) + subroutine_arg0) == var_v0) {

                    } else {
                        goto loop_4;
                    }
                } else {
                    sp20 = (s64) var_v0->unk0;
                }
            }
            XFree(subroutine_arg0);
        }
    } else {
        sp20 = XCreateColormap(arg0, temp_a1, arg1->unk0, 0);
    }
}

void InitColormap(s64 arg0, s64 arg1, void *arg2, u32 arg3) {
    s64 sp8;
    s64 sp0;

    if (arg3 < 0xBU) {
        sp0 = arg1;
        sp8 = arg0;
        switch (arg3) {
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            __iglooFillColormap(arg1, 0, (1 << arg2->unkC) - 1);
            break;
        case 0:
            __iglooStoreColor(sp8, sp0, 1, 0xFF);
            __iglooStoreColor(sp8, sp0, 2, 0);
            __iglooStoreColor(sp8, sp0, 3, 0xFF);
            break;
        case 1:
        case 3:
            __iglooFindColormap((s64) arg2, (void *) arg1);
            break;
        }
    }
}

void InitColorIndexColormap(s64 arg0, void *arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;

    sp18 = arg0;
    sp10 = arg2;
    __iglooStoreColors(arg2, 0, 0xF);
    if (arg1->unkC >= 5) {
        __iglooStoreColors(sp18, sp10, 0x20, 0x37);
        __iglooStoreColors(sp18, sp10, 0x38, 0xFF);
    }
}

void __iglooStoreColor(s32 arg2, s64 arg3) {
    XStoreColor(sp);
}

void __iglooStoreColors(s32 arg2, s64 arg3) {
    s64 spC18;
    s64 spC10;
    s64 spC08;
    s64 spC00;
    s32 temp_a4;
    s32 temp_at;
    s32 var_t1;
    s64 temp_t0;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_t1_2;
    s64 var_t9_2;
    u8 *var_a7;
    u8 *var_a7_2;
    u8 *var_t2_2;
    u8 *var_t9;
    u8 temp_v0;
    u8 temp_v0_2;
    void *var_t2;

    var_t1 = arg2;
    temp_at = arg3 - arg2;
    temp_t0 = temp_at + 1;
    spC18 = arg2 + M2C_ERROR(/* Read from unset register $a6 */);
    var_a3 = spC18;
    if (temp_at >= 0) {
        var_t2 = sp;
        var_t9 = arg2 + M2C_ERROR(/* Read from unset register $a4 */);
        var_a7 = arg2 + M2C_ERROR(/* Read from unset register $a5 */);
        spC10 = temp_t0;
        if (temp_t0 & 1) {
            sp->unkA = 7;
            sp->unk4 = (s16) (*var_t9 << 8);
            var_t2 = sp + 0xC;
            temp_v0 = *var_a7;
            var_t9 += 1;
            var_a7 += 1;
            var_t2->unk-6 = (s16) (temp_v0 << 8);
            var_a3 += 1;
            var_t2->unk-C = var_t1;
            var_t1 += 1;
            var_t2->unk-4 = (s16) (var_a3->unk-1 << 8);
        }
        spC08 = (s64) var_t1;
        var_a7_2 = var_a7;
        var_a3_2 = var_a3;
        spC00 = (s64) var_t2;
        var_t9_2 = spC00;
        if ((spC10 >> 1) != 0) {
            var_t2_2 = var_t9;
            var_t1_2 = spC08;
            do {
                var_t9_2->unkA = 7;
                var_t9_2->unk4 = (s16) (var_t2_2->unk0 << 8);
                var_t9_2->unk6 = (s16) (*var_a7_2 << 8);
                var_t9_2->unk8 = (s16) (*var_a3_2 << 8);
                var_t9_2->unk0 = (s32) var_t1_2;
                var_t9_2->unk16 = 7;
                temp_v0_2 = var_t2_2->unk1;
                var_t2_2 += 2;
                var_t9_2->unk10 = (s16) (temp_v0_2 << 8);
                var_a7_2 += 2;
                var_a3_2 += 2;
                var_t9_2 += 0x18;
                var_t9_2->unk-6 = (s16) (var_a7_2->unk-1 << 8);
                temp_a4 = var_t1_2 + 1;
                var_t1_2 = temp_a4 + 1;
                var_t9_2->unk-C = temp_a4;
                var_t9_2->unk-4 = (s16) (var_a3_2->unk-1 << 8);
            } while (var_t9_2 != ((temp_t0 * 0xC) + sp));
        }
    }
    XStoreColors(sp, temp_t0);
}

void __iglooFillColormap(s32 arg2, s32 arg3) {
    s64 spC08;
    s16 temp_a3;
    s16 temp_t0;
    s16 temp_t1;
    s32 temp_at;
    s32 temp_at_2;
    s32 var_a4;
    s32 var_t9;
    s64 temp_t2;
    s64 var_a2;
    s64 var_a2_2;

    temp_t1 = M2C_ERROR(/* Read from unset register $a5 */) << 8;
    temp_at = arg3 - arg2;
    temp_t2 = temp_at + 1;
    if (temp_at >= 0) {
        temp_t0 = M2C_ERROR(/* Read from unset register $a4 */) << 8;
        spC08 = temp_t2;
        temp_a3 = M2C_ERROR(/* Read from unset register $a6 */) << 8;
        var_t9 = arg2;
        var_a2 = spC00;
        if (temp_t2 & 1) {
            var_a2 = spC00 + 0xC;
            var_a2->unk-C = var_t9;
            var_t9 += 1;
            var_a2->unk-4 = temp_a3;
            var_a2->unk-6 = temp_t1;
            var_a2->unk-8 = temp_t0;
            var_a2->unk-2 = 7;
        }
        var_a4 = var_t9;
        if ((spC08 >> 1) != 0) {
            var_a2_2 = var_a2;
            do {
                var_a2_2->unk14 = temp_a3;
                var_a2_2->unk12 = temp_t1;
                var_a2_2->unk10 = temp_t0;
                var_a2_2->unk16 = 7;
                var_a2_2->unk8 = temp_a3;
                var_a2_2->unk6 = temp_t1;
                var_a2_2->unk4 = temp_t0;
                var_a2_2->unkA = 7;
                var_a2_2 += 0x18;
                var_a2_2->unk-18 = var_a4;
                temp_at_2 = var_a4 + 1;
                var_a4 = temp_at_2 + 1;
                var_a2_2->unk-C = temp_at_2;
            } while (var_a2_2 != ((temp_t2 * 0xC) + sp));
        }
    }
    XStoreColors(sp, temp_t2);
}

void __iglooSoftPupInitColormap(s64 arg0, s32 arg1, s32 arg2) {
    s64 sp30;
    s64 temp_a3;
    s64 temp_s8;
    s64 temp_s8_2;

    temp_s8 = 1 << arg2;
    __iglooFillColormap(1, temp_s8 - 1);
    temp_a3 = 2 << arg2;
    sp30 = temp_a3;
    __iglooFillColormap(arg0, arg1, temp_s8, temp_a3 - 1);
    temp_s8_2 = 3 << arg2;
    __iglooFillColormap(arg0, arg1, sp30, temp_s8_2 - 1);
    __iglooFillColormap(arg0, arg1, temp_s8_2, (4 << arg2) - 1);
}
