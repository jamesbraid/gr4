void gl_invertview(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    ? sp80;
    ? sp40;
    s32 temp_v0;
    s64 temp_a0;

    spD0 = arg0;
    spC8 = arg1;
    spE8 = arg2;
    spF0 = arg3;
    spD8 = M2C_ERROR(/* Read from unset register $a4 */);
    spE0 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_v0 = __GLgetmmode();
    if (temp_v0 != 0) {
        __GLmmode(1);
        __GLgetmatrix(sp);
        __GLmmode(2);
    }
    __GLpushmatrix();
    temp_a0 = (s64) ((s64) temp_v0 << 0x30) >> 0x30;
    spC0 = temp_a0;
    __GLmmode(temp_a0);
    __GLpushviewport();
    __GLcallobj(spD0);
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            __GLmmode(2);
            __GLgetmatrix(&sp40);
            __GLmmode(1);
            __GLgetmatrix(&sp80);
            gl_multmatrix4d(&sp40, &sp40, &sp80);
        } else {
            __GLgetmatrix(&sp40);
        }
    } else {
        __GLgetmatrix(&sp40);
    }
    gl_invert4d(spC8, &sp40);
    __GLgetviewport(spE8, spF0, spD8, spE0);
    __GLpopviewport();
    if (temp_v0 != 0) {
        __GLmmode(1);
        __GLloadmatrix(sp);
        __GLmmode(2);
    }
    __GLpopmatrix();
    __GLmmode(spC0);
}

void gl_g_mapw(s64 arg1, s64 arg2, s64 arg3) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s16 sp46;
    s16 sp44;
    s16 sp42;
    s16 sp40;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    void *temp_gp;

    sp50 = M2C_ERROR(/* Read from unset register $a5 */);
    sp68 = M2C_ERROR(/* Read from unset register $a4 */);
    sp78 = arg3;
    sp70 = arg2;
    sp48 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5A2A0;
    sp60 = M2C_ERROR(/* Read from unset register $a7 */);
    sp58 = M2C_ERROR(/* Read from unset register $a6 */);
    gl_n_retsym(sp, &sp40, &sp42);
    temp_f5 = (f32) sp42 + 0.5f;
    temp_f4 = (f32) sp40 + -0.5f;
    if (temp_f4 != temp_f5) {
        temp_f7 = (f32) sp46 + 0.5f;
        temp_f6 = (f32) sp44 + -0.5f;
        if (temp_f6 != temp_f7) {
            temp_f8 = ((((f32) sp48 * 2.0f) - temp_f4) - temp_f5) / (temp_f5 - temp_f4);
            temp_f9 = ((((f32) sp70 * 2.0f) - temp_f6) - temp_f7) / (temp_f7 - temp_f6);
            temp_f2 = sp3C + (((subroutine_arg3 * temp_f8) + (sp1C * temp_f9)) - sp2C);
            temp_f10 = (((subroutine_arg1 * temp_f8) + (sp14 * temp_f9)) - sp24) + sp34;
            temp_f1 = sp30 + (((subroutine_arg0 * temp_f8) + (sp10 * temp_f9)) - sp20);
            temp_f12 = (((subroutine_arg2 * temp_f8) + (sp18 * temp_f9)) - sp28) + sp38;
            *sp78 = (f32) (temp_f1 / temp_f2);
            *sp68 = (f32) (temp_f10 / temp_f2);
            *sp50 = (f32) (temp_f12 / temp_f2);
            temp_f11 = (sp2C * 2.0f) + temp_f2;
            *sp58 = (f32) (((sp20 * 2.0f) + temp_f1) / temp_f11);
            *sp60 = (f32) (((sp24 * 2.0f) + temp_f10) / temp_f11);
            *(f32 *) arg1 = ((sp28 * 2.0f) + temp_f12) / temp_f11;
            return;
        }
        gl_ErrorHandler(subroutine_arg2, 0x1B, 2, temp_gp->unk-39C0);
        return;
    }
    gl_ErrorHandler(subroutine_arg2, 0x1B, 2, temp_gp->unk-39C0);
}

void gl_g_mapw2(void) {
    ? sp10;

    __GLmapw();
}
