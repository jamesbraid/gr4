extern ? sub_0f020000;

void gl_transform4d(void *arg0, void *arg1, void *arg2) {
    memcpy(arg0, sp, 0x10U);
}

void gl_multmatrix4d(s32 arg0, s32 arg1, ? arg2) {
    __iglooFreeMatrixStacks();
    __iglooFreeMatrixStacks(arg0 + 0x10, arg1 + 0x10, arg2);
    __iglooFreeMatrixStacks(arg0 + 0x20, arg1 + 0x20, arg2);
    __iglooFreeMatrixStacks(arg0 + 0x30, arg1 + 0x30, arg2);
}

void gl_invert4d(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f17;
    f32 temp_f17_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f19;
    f32 temp_f19_2;
    f32 temp_f19_3;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f21;
    f32 temp_f21_2;
    f32 temp_f23;
    f32 temp_f23_2;
    f32 temp_f25;
    f32 temp_f25_2;
    f32 temp_f27;
    f32 temp_f27_2;
    f32 temp_f29;
    f32 temp_f2;
    f32 temp_f31;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f8;
    f32 temp_f9;
    f32 temp_f9_2;

    temp_f5 = arg1->unk20;
    temp_f8 = arg1->unk14;
    temp_f3 = arg1->unk4;
    temp_f6 = arg1->unk10;
    temp_f9 = arg1->unk0;
    temp_f0 = arg1->unk24;
    temp_f27 = (temp_f9 * temp_f8) - (temp_f3 * temp_f6);
    temp_f29 = arg1->unk30;
    temp_f1 = (temp_f9 * temp_f0) - (temp_f3 * temp_f5);
    temp_f2 = arg1->unk34;
    temp_f18 = arg1->unk38;
    temp_f16 = (temp_f6 * temp_f0) - (temp_f8 * temp_f5);
    temp_f17 = arg1->unk2C;
    temp_f4 = arg1->unk18;
    temp_f12 = arg1->unk8;
    temp_f23 = arg1->unk3C;
    temp_f21 = arg1->unk28;
    temp_f9_2 = (temp_f9 * temp_f2) - (temp_f3 * temp_f29);
    temp_f25 = (temp_f5 * temp_f2) - (temp_f0 * temp_f29);
    temp_f27_2 = (temp_f6 * temp_f2) - (temp_f8 * temp_f29);
    temp_f14 = ((temp_f9_2 * temp_f4) - (temp_f27 * temp_f18)) - (temp_f27_2 * temp_f12);
    unksp10 = (bitwise f64) (((temp_f27_2 * temp_f21) - (temp_f16 * temp_f18)) - (temp_f25 * temp_f4));
    temp_f31 = arg1->unk1C;
    temp_f19 = arg1->unkC;
    temp_f25_2 = (temp_f17 * temp_f4) - (temp_f31 * temp_f21);
    temp_f1_2 = (temp_f17 * temp_f12) - (temp_f19 * temp_f21);
    temp_f7 = arg1->unk0;
    temp_f12_2 = (temp_f31 * temp_f12) - (temp_f19 * temp_f4);
    temp_f16_2 = (temp_f23 * temp_f12) - (temp_f19 * temp_f18);
    temp_f23_2 = (temp_f23 * temp_f4) - (temp_f31 * temp_f18);
    temp_f21_2 = (temp_f23 * temp_f21) - (temp_f17 * temp_f18);
    temp_f18_2 = ((temp_f0 * temp_f16_2) - (temp_f2 * temp_f1_2)) - (temp_f3 * temp_f21_2);
    temp_f19_2 = arg1->unk14;
    temp_f17_2 = ((temp_f3 * temp_f23_2) - (temp_f19_2 * temp_f16_2)) + (temp_f2 * temp_f12_2);
    temp_f16_3 = ((temp_f19_2 * temp_f1_2) - (temp_f0 * temp_f12_2)) - (temp_f3 * temp_f25_2);
    temp_f19_3 = ((temp_f19_2 * temp_f21_2) - (temp_f0 * temp_f23_2)) + (temp_f2 * temp_f25_2);
    temp_f7_2 = (temp_f7 * temp_f19_3) + ((temp_f6 * temp_f18_2) + ((temp_f5 * temp_f17_2) + (temp_f29 * temp_f16_3)));
    if (temp_f7_2 != 0.0f) {
        temp_f3_2 = 1.0f / temp_f7_2;
        arg0->unk14 = (f32) (temp_f3_2 * (((temp_f7 * temp_f21_2) - (temp_f5 * temp_f16_2)) + (temp_f29 * temp_f1_2)));
        arg0->unk0 = (f32) (temp_f3_2 * temp_f19_3);
        arg0->unk4 = (f32) (temp_f3_2 * temp_f18_2);
        arg0->unk10 = (f32) ((((temp_f5 * temp_f23_2) - (temp_f29 * temp_f25_2)) - (temp_f6 * temp_f21_2)) * temp_f3_2);
        arg0->unk8 = (f32) (temp_f3_2 * temp_f17_2);
        arg0->unk20 = (f32) (temp_f3_2 * (((temp_f31 * temp_f25) - (temp_f17 * temp_f27_2)) + (temp_f23 * temp_f16)));
        arg0->unkC = (f32) (temp_f3_2 * temp_f16_3);
        arg0->unk30 = (f32) (temp_f3_2 * (bitwise f32) unksp10);
        arg0->unk34 = (f32) (temp_f3_2 * (second half of f64));
        arg0->unk24 = (f32) (temp_f3_2 * (((temp_f17 * temp_f9_2) - (temp_f23 * temp_f1)) - (temp_f19 * temp_f25)));
        arg0->unk1C = (f32) (temp_f3_2 * (((temp_f7 * temp_f25_2) - (temp_f6 * temp_f1_2)) + (temp_f5 * temp_f12_2)));
        arg0->unk18 = (f32) (temp_f3_2 * (((temp_f6 * temp_f16_2) - (temp_f29 * temp_f12_2)) - (temp_f7 * temp_f23_2)));
        arg0->unk38 = (f32) (temp_f3_2 * temp_f14);
        arg0->unk28 = (bitwise f64) (temp_f3_2 * (((temp_f31 * temp_f1) - (temp_f17 * temp_f27)) - (temp_f19 * temp_f16)));
        arg0->unk3C = (f32) (temp_f3_2 * (((temp_f16 * temp_f12) - (temp_f1 * temp_f4)) + (temp_f27 * temp_f21)));
        return;
    }
    gl_ErrorHandler(unksp10, temp_f14, 1, 2, &sub_0f020000 + 0x35A0);
}
