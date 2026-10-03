? mgrasInitBoard(void *, s64, s64);                 /* extern */
s64 mgras_baseindex();                              /* extern */

void MgrasTpInit(void *arg0, s64 arg8) {
    s64 temp_a2;
    s64 temp_s2;
    s64 temp_v0;
    s64 temp_v0_2;
    void *var_a0;

    temp_v0 = mgras_baseindex();
    temp_a2 = saved_reg_gp->unk-7800;
    var_a0 = (temp_v0 * 0x30) + temp_a2;
    temp_s2 = var_a0->unk10;
    if (var_a0->unk20 == 0) {
        arg8 = (s64) var_a0;
        mgrasInitBoard(arg0, temp_v0, temp_a2);
        var_a0 = (void *) arg8;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk70080 = (s64) (((u64) ((temp_s2->unk20 - 1) << 0x20) >> 0x20) | saved_reg_gp->unk-7800);
    arg0->unk70080 = (s64) (((u64) ((temp_s2->unk22 - 1) << 0x20) >> 0x20) | saved_reg_gp->unk-77F8);
    arg0->unk70080 = (s64) saved_reg_gp->unk-77F0;
    arg0->unk70080 = (s64) saved_reg_gp->unk-77E8;
    arg0->unk70080 = (s64) saved_reg_gp->unk-77E0;
    if ((u32) (arg0->unk70100 & 0x1F) >= 3U) {
        do {

        } while ((u32) (arg0->unk70100 & 0x1F) >= 3U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk61C88 = 0;
    arg0->unk61E00 = 0;
    arg0->unk61C88 = 0xC;
    arg0->unk61F00 = 0x1BB;
    if (temp_v0 >= 0) {
        temp_v0_2 = var_a0->unk10;
        if ((temp_v0_2 == 0) || (temp_v0_2->unk29 != 0x82)) {
            saved_reg_gp->unk-77F8 = 0;
        } else {
            saved_reg_gp->unk-77F8 = 1;
        }
    }
}

void MgrasTpMapcolor(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s16 temp_a7;

    if (arg0->unk70100 & 0x1F) {
        do {

        } while (arg0->unk70100 & 0x1F);
    }
    if (!(arg0->unk61208 & 8)) {
        do {

        } while (!(arg0->unk61208 & 8));
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a7 = ((arg1 << 8) & 0xFF00) | ((arg1 >> 8) & 0xFF);
    arg0->unk60C30 = temp_a7;
    arg0->unk60C30 = temp_a7;
    arg0->unk61C08 = 1;
    arg0->unk61C88 = 4;
    arg0->unk61F00 = 0x43FF;
    arg0->unk60C30 = temp_a7;
    arg0->unk60D18 = (s32) ((arg2 << 0x18) | (arg3 << 0x10) | (M2C_ERROR(/* Read from unset register $a4 */) << 8));
    arg0->unk61C88 = 4;
    arg0->unk61F00 = 0x3FF;
}

void MgrasTpColor(void *arg0, s32 arg1) {
    if ((u32) (arg0->unk70004 & 0x7F) >= 0x40U) {
        do {

        } while ((u32) (arg0->unk70004 & 0x7F) >= 0x40U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk70080 = (s64) (((u64) ((arg1 << 0xC) << 0x20) >> 0x20) | saved_reg_gp->unk-77D8);
}

void MgrasTpSboxfi(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-77F8 != 0) {
        var_a2 += 0x100;
    }
    if ((u32) (arg0->unk70004 & 0x7F) >= 0x3DU) {
        do {

        } while ((u32) (arg0->unk70004 & 0x7F) >= 0x3DU);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk70080 = (s64) (((u64) (((arg1 << 0x10) | var_a2) << 0x20) >> 0x20) | saved_reg_gp->unk-77D0);
    arg0->unk70080 = (s64) (((u64) (((arg3 << 0x10) | M2C_ERROR(/* Read from unset register $a4 */)) << 0x20) >> 0x20) | saved_reg_gp->unk-77C8);
    arg0->unk70080 = (s64) saved_reg_gp->unk-77C0;
    arg0->unk70080 = (s64) saved_reg_gp->unk-77B8;
}

void MgrasTpPnt2i(void *arg0, s32 arg1, s32 arg2) {
    s32 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-77F8 != 0) {
        var_a2 += 0x100;
    }
    if ((u32) (arg0->unk70004 & 0x7F) >= 0x3DU) {
        do {

        } while ((u32) (arg0->unk70004 & 0x7F) >= 0x3DU);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk70080 = (s64) (((u64) ((arg1 << 8) << 0x20) >> 0x20) | saved_reg_gp->unk-77B0);
    arg0->unk70080 = (s64) (((u64) ((var_a2 << 8) << 0x20) >> 0x20) | saved_reg_gp->unk-77A8);
    arg0->unk70080 = (s64) saved_reg_gp->unk-77C0;
    arg0->unk70080 = (s64) saved_reg_gp->unk-77A0;
}

void MgrasTpDrawbitmap(void *arg0, void *arg1, s64 arg2, s64 arg4) {
    s16 temp_a7;
    s16 temp_t0;
    s16 var_a2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_t1;
    s32 temp_t3;
    s32 var_a7;
    s64 temp_a1;
    s64 temp_a5_2;
    s64 temp_a6_2;
    s64 var_a4;
    u64 temp_at;
    u64 temp_at_2;
    u64 temp_v1;
    u64 temp_v1_2;
    void *temp_a3;

    var_a4 = arg1->unk0;
    temp_a7 = arg1->unkA;
    temp_a3 = arg0 + 0x70000;
    temp_a6 = saved_reg_gp->unk-77FC;
    temp_a5 = saved_reg_gp->unk-7800;
    temp_t0 = arg1->unk14;
    temp_t3 = temp_a6 - arg1->unkE;
    temp_t1 = temp_a5 - arg1->unkC;
    if ((u32) (arg0->unk70004 & 0x7F) >= 0x3DU) {
        do {

        } while ((u32) (arg0->unk70004 & 0x7F) >= 0x3DU);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0 = (s64) arg1;
    arg2 = (s64) temp_a5;
    arg4 = (s64) temp_a6;
    temp_a3->unk80 = (s64) saved_reg_gp->unk-7798;
    var_a7 = temp_a7 - 1;
    temp_a3->unk80 = (s64) (((u64) (((temp_t1 << 0x10) | temp_t3) << 0x20) >> 0x20) | saved_reg_gp->unk-77D0);
    temp_a3->unk80 = (s64) (((u64) ((((temp_t3 + temp_a7) - 1) | (((temp_t1 + arg1->unk8) - 1) << 0x10)) << 0x20) >> 0x20) | saved_reg_gp->unk-77C8);
    temp_a3->unk80 = (s64) saved_reg_gp->unk-77B8;
    if (var_a7 != -1) {
        temp_a1 = saved_reg_gp->unk-7780;
        temp_a6_2 = saved_reg_gp->unk-7788;
        temp_a5_2 = saved_reg_gp->unk-7790;
loop_10:
        var_a2 = temp_t0;
        if (temp_t0 >= 4) {
loop_13:
            var_a2 -= 4;
            if ((u32) (temp_a3->unk4 & 0x7F) >= 0x3FU) {
                do {

                } while ((u32) (temp_a3->unk4 & 0x7F) >= 0x3FU);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a3->unk80 = (s64) (((u64) ((var_a4->unk2 | (var_a4->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a5_2);
            temp_v1 = (var_a4->unk6 | (var_a4->unk4 << 0x10)) << 0x20;
            var_a4 += 8;
            temp_a3->unk80 = (s64) ((temp_v1 >> 0x20) | temp_a6_2);
            if (var_a2 >= 4) {
                goto loop_13;
            }
        }
        if ((u32) (temp_a3->unk4 & 0x7F) >= 0x3FU) {
            do {

            } while ((u32) (temp_a3->unk4 & 0x7F) >= 0x3FU);
        }
        switch (var_a2) {                           /* irregular */
        case 3:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a3->unk80 = (s64) (((u64) ((var_a4->unk2 | (var_a4->unk0 << 0x10)) << 0x20) >> 0x20) | temp_a5_2);
            temp_at = (var_a4->unk4 << 0x10) << 0x20;
            var_a4 += 6;
            temp_a3->unk80 = (s64) ((temp_at >> 0x20) | temp_a6_2);
            break;
        case 2:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_at_2 = (var_a4->unk2 | (var_a4->unk0 << 0x10)) << 0x20;
            var_a4 += 4;
            temp_a3->unk80 = (s64) ((temp_at_2 >> 0x20) | temp_a1);
            break;
        case 1:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v1_2 = (var_a4->unk0 << 0x10) << 0x20;
            var_a4 += 2;
            temp_a3->unk80 = (s64) ((temp_v1_2 >> 0x20) | temp_a1);
            break;
        }
        var_a7 -= 1;
        if (var_a7 != -1) {
            goto loop_10;
        }
    }
    saved_reg_gp->unk-77FC = (s32) (((s64) arg0)->unk12 + arg4);
    saved_reg_gp->unk-7800 = (s32) (((s64) arg0)->unk10 + arg2);
}

void MgrasTpCmov2i(s32 arg1, s32 arg2) {
    s32 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-77F8 != 0) {
        var_a2 += 0x100;
    }
    saved_reg_gp->unk-77FC = var_a2;
    saved_reg_gp->unk-7800 = arg1;
}

void MgrasTpBlankscreen(void *arg0, s32 arg1) {
    if ((u32) (arg0->unk70100 & 0x1F) >= 5U) {
        do {

        } while ((u32) (arg0->unk70100 & 0x1F) >= 5U);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk61C88 = 0xC;
    if (arg1 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk61F00 = 0xBB;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk61F00 = 0x1BB;
    }
}

void MgrasTpUnblank(void) {
    MgrasTpBlankscreen(NULL);
}

s32 MgrasTpGetdesc(s32 arg1) {
    s32 var_v0;

    var_v0 = 0;
    if (arg1 == 1) {
        var_v0 = 1;
    }
    return var_v0;
}
