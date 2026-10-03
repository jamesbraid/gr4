extern s32 gl_dgl_table_is_remote;
extern s32 gl_openobjhdr;
extern ? sub_0f020000;

void gl_do_callfunc(? (*arg0)(u32, s32, s32, s32), u32 arg1, void *arg2) {
    s32 sp14;
    s32 spC;
    s32 sp4;

    switch (arg1) {
    case 7:
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    case 0:
        arg0(arg1);
        break;
    case 1:
        arg0(arg1, arg2->unk0);
        break;
    case 2:
        arg0(arg1, arg2->unk0, arg2->unk4);
        break;
    case 3:
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    case 4:
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    case 5:
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    case 6:
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    case 8:
        sp4 = arg2->unk1C;
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    case 9:
        sp4 = arg2->unk1C;
        spC = arg2->unk20;
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    case 10:
        sp4 = arg2->unk1C;
        spC = arg2->unk20;
        sp14 = arg2->unk24;
        arg0(arg1, arg2->unk0, arg2->unk4, arg2->unk8);
        break;
    }
}

void gl_intrp_freefunc(void *arg0) {
    ? (*temp_a4)(u32, s32, s32, s32);

    temp_a4 = arg0->unkC;
    if (temp_a4 != NULL) {
        gl_do_callfunc(temp_a4, arg0->unk4, arg0 + 0x10);
    }
}

void gl_ecallfunc(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s32 sp84;
    s32 sp7C;
    s32 sp74;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    void sp10(void *arg0);
    s32 spC;
    s32 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 var_a0;
    s32 var_a1;
    s32 var_a6;
    s32 var_s0;
    s64 *var_a0_2;
    s64 *var_a0_3;
    s64 var_ra;
    void (*var_a1_2)(void *);
    void (*var_a1_3)(void *);
    void (*var_a2)(void *);

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a1 = arg1;
    spA8 = M2C_ERROR(/* Read from unset register $a7 */);
    spA0 = M2C_ERROR(/* Read from unset register $a6 */);
    sp98 = M2C_ERROR(/* Read from unset register $a5 */);
    sp88 = arg3;
    var_s0 = arg2;
    sp84 = arg2;
    sp7C = var_a1;
    sp90 = M2C_ERROR(/* Read from unset register $a4 */);
    sp74 = var_a0;
    if (saved_reg_gp->unk-5248 != 0) {

    } else {
        sp58 = (s64) var_a1;
        sp60 = (s64) var_a0;
        gl_intrptab_insert(&sub_0f020000 + 0x70D0 + 0x10);
        var_ra = sp50;
        saved_reg_gp->unk-5248 = 1;
    }
    if (var_s0 >= 0xB) {
        sp58 = (s64) var_a1;
        sp60 = (s64) var_a0;
        sp50 = var_ra;
        gl_ErrorHandler(0x48, 2, (&sub_0f020000 + 0x70D0)->unk1C);
        var_s0 = 0xA;
        sp84 = 0xA;
    }
    var_a2 = sp10;
    sp4 = var_s0;
    spC = var_a1;
    sp8 = var_a0;
    var_a0_2 = &sp88;
    sp0 = gl_n_gl_ecallfunc;
    if (var_s0 > 0) {
        var_a1_2 = var_s0 - 1;
        var_a6 = var_s0 & 3;
        if (var_a6 != 0) {
            do {
                var_a1_2 -= 1;
                var_a2 += 4;
                var_a0_2 = (-8 & (s32) (var_a0_2 + 7)) + 8;
                var_a6 -= 1;
                var_a2->unk-4 = (s32) var_a0_2->unk-4;
            } while (var_a6 != 0);
        }
        var_a1_3 = var_a2;
        if ((var_s0 >> 2) != 0) {
            var_a2 = var_a1_2;
            var_a0_3 = var_a0_2;
            do {
                var_a1_3 += 0x10;
                temp_a0 = -8 & (s32) (var_a0_3 + 7);
                temp_a0_2 = -8 & (temp_a0 + 0xF);
                var_a2 -= 4;
                var_a1_3->unk-10 = (s32) temp_a0->unk4;
                var_a1_3->unk-C = (s32) temp_a0_2->unk4;
                temp_a0_3 = -8 & (temp_a0_2 + 0xF);
                var_a0_3 = (-8 & (temp_a0_3 + 0xF)) + 8;
                var_a1_3->unk-8 = (s32) temp_a0_3->unk4;
                var_a1_3->unk-4 = (s32) var_a0_3->unk-4;
            } while (var_a2 != (void (*)(void *))-1);
        }
        sp50 = var_ra;
    }
    sp50 = var_ra;
    gl_compile((var_s0 * 2) + 8, sp, var_a2);
}

void gl_n_gl_ecallfunc(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_do_callfunc(arg0->unk4, arg0->unk0, arg0 + 0xC);
}

void __GLcallfunc(s32 arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s32 sp6C;
    s32 sp64;
    s64 sp50;
    s64 sp48;
    ? sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    void (*sp0)(void *);
    ? *var_a1;
    ? *var_a4_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_t1;
    s64 *var_a0;
    s64 *var_a0_2;
    s64 var_ra;
    void (*var_a2)(void *);

    var_ra = saved_reg_ra;
    var_t1 = arg1;
    sp98 = M2C_ERROR(/* Read from unset register $a7 */);
    sp90 = M2C_ERROR(/* Read from unset register $a6 */);
    sp88 = M2C_ERROR(/* Read from unset register $a5 */);
    sp80 = M2C_ERROR(/* Read from unset register $a4 */);
    sp78 = arg3;
    sp70 = arg2;
    sp6C = arg1;
    sp64 = arg0;
    if (gl_dgl_table_is_remote != 0) {
        return;
    }
    if (var_t1 >= 0xB) {
        sp50 = (s64) arg0;
        gl_ErrorHandler(0x48, 2, sub_0f020000.unk710C);
        var_ra = sp48;
        var_t1 = 0xA;
        sp6C = 0xA;
    }
    var_a1 = &sp10;
    spC = 0;
    sp4 = var_t1;
    sp8 = arg0;
    var_a2 = gl_n_gl_ecallfunc;
    var_a0 = &sp70;
    sp0 = gl_n_gl_ecallfunc;
    if (var_t1 > 0) {
        var_a3 = var_t1 - 1;
        var_a4 = var_t1 & 3;
        if (var_a4 != 0) {
            do {
                var_a3 -= 1;
                var_a1 += 4;
                var_a0 = (-8 & (s32) (var_a0 + 7)) + 8;
                var_a4 -= 1;
                var_a1->unk-4 = (s32) var_a0->unk-4;
            } while (var_a4 != 0);
        }
        var_a2 = (void (*)(void *)) (var_t1 >> 2);
        var_a4_2 = var_a1;
        if (var_a2 != NULL) {
            var_a3_2 = var_a3;
            var_a0_2 = var_a0;
            do {
                var_a4_2 += 0x10;
                temp_a0 = -8 & (s32) (var_a0_2 + 7);
                temp_a0_2 = -8 & (temp_a0 + 0xF);
                var_a2 = temp_a0_2->unk4;
                var_a3_2 -= 4;
                var_a4_2->unk-10 = (s32) temp_a0->unk4;
                var_a4_2->unk-C = var_a2;
                temp_a0_3 = -8 & (temp_a0_2 + 0xF);
                var_a0_2 = (-8 & (temp_a0_3 + 0xF)) + 8;
                var_a4_2->unk-8 = (s32) temp_a0_3->unk4;
                var_a4_2->unk-4 = (s32) var_a0_2->unk-4;
            } while (var_a3_2 != -1);
        }
        sp48 = var_ra;
    }
    sp48 = var_ra;
    gl_compile((var_t1 * 2) + 8, sp, var_a2);
}

void __GLicallfunc(s32 arg0, s32 arg1, void *arg2) {
    s64 sp58;
    s64 sp50;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s32 *var_a1;
    s32 *var_a4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 var_a0;
    s32 var_a2;
    s32 var_a7;
    s32 var_t2;
    s64 var_ra;
    void (*var_a3)(void *);
    void *var_a0_2;
    void *var_s0;

    var_ra = saved_reg_ra;
    var_a7 = arg1;
    var_s0 = arg2;
    if (gl_openobjhdr != 0) {
        if (var_a7 >= 0xB) {
            sp58 = (s64) arg0;
            gl_ErrorHandler(0x48, 2, sub_0f020000.unk712C);
            var_a7 = 0xA;
            var_ra = sp50;
        }
        var_a1 = &sp10;
        spC = 0;
        sp4 = var_a7;
        var_a2 = var_a7 & 3;
        var_a3 = gl_n_gl_ecallfunc;
        sp8 = arg0;
        sp0 = gl_n_gl_ecallfunc;
        if (var_a7 > 0) {
            var_a0 = var_a7 - 1;
            var_t2 = var_a0;
            if (var_a2 != 0) {
                do {
                    var_a0 -= 1;
                    var_a1 += 4;
                    var_s0 = (-8 & (var_s0 + 7)) + 8;
                    var_a2 -= 1;
                    var_a1->unk-4 = (s32) var_s0->unk-4;
                } while (var_a2 != 0);
                var_t2 = var_a0;
            }
            var_a4 = var_a1;
            if ((var_a7 >> 2) != 0) {
                var_a2 = var_t2;
                var_a0_2 = var_s0;
                do {
                    temp_a0 = -8 & (s32) (var_a0_2 + 7);
                    *var_a4 = temp_a0->unk4;
                    temp_a0_2 = -8 & (temp_a0 + 0xF);
                    var_a4 += 0x10;
                    var_a4->unk-C = (s32) temp_a0_2->unk4;
                    temp_a0_3 = -8 & (temp_a0_2 + 0xF);
                    var_a3 = temp_a0_3->unk4;
                    var_a4->unk-8 = var_a3;
                    var_a0_2 = (-8 & (temp_a0_3 + 0xF)) + 8;
                    var_a2 -= 4;
                    var_a4->unk-4 = (s32) var_a0_2->unk-4;
                } while (var_a2 != -1);
            }
            sp50 = var_ra;
        }
        sp50 = var_ra;
        gl_compile((var_a7 * 2) + 8, sp, (void (*)(void *)) var_a2, var_a3);
    }
}
