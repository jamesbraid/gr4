void __glMgrlc_Color3b(s8 red, s8 green, s8 blue) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp18 = (s64) green;
        sp10 = (s64) blue;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk6 = blue;
    temp_at->unk5 = green;
    temp_at->unk0 = 0x3C800203;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color3bv(s8 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3C800203;
    temp_v1->unk4 = (s8) v->unk0;
    temp_v1->unk5 = (s8) v->unk1;
    temp_v1->unk6 = (s8) v->unk2;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color3d(f64 red, f64 green, f64 blue) {
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 4) {
        sp18 = green;
        sp10 = second half of f64;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x2000020C;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) green;
    temp_v1->unk4 = (f32) red;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000020C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3f(f32 red, f32 green, f32 blue) {
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = blue;
    if (*(s32 *)0x1020 < 4) {
        sp18 = (bitwise f64) green;
        sp10 = (bitwise f64) var_f5;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = red;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = green;
    temp_v1->unk0 = 0x2000020C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000020C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3i(s32 red, s32 green, s32 blue) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp18 = (s64) green;
        sp10 = (s64) blue;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unkC = blue;
    temp_at->unk8 = green;
    temp_at->unk0 = 0x3C00020C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3C00020C;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3s(s16 red, s16 green, s16 blue) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp18 = (s64) green;
        sp10 = (s64) blue;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk8 = blue;
    temp_at->unk6 = green;
    temp_at->unk0 = 0x3D000206;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Color3sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3D000206;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Color3ub(u8 red, u8 green, u8 blue) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp18 = (s64) green;
        sp10 = (s64) blue;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk6 = blue;
    temp_at->unk5 = green;
    temp_at->unk0 = 0x34800203;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color3ubv(u8 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x34800203;
    temp_v1->unk4 = (u8) v->unk0;
    temp_v1->unk5 = (u8) v->unk1;
    temp_v1->unk6 = (u8) v->unk2;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color3ui(u32 red, u32 green, u32 blue) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp18 = (s64) green;
        sp10 = (s64) blue;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unkC = blue;
    temp_at->unk8 = green;
    temp_at->unk0 = 0x3400020C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3uiv(u32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3400020C;
    temp_v1->unk4 = (u32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Color3us(u16 red, u16 green, u16 blue) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp18 = (s64) green;
        sp10 = (s64) blue;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk8 = blue;
    temp_at->unk6 = green;
    temp_at->unk0 = 0x35000206;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Color3usv(u16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x35000206;
    temp_v1->unk4 = (u16) v->unk0;
    temp_v1->unk6 = (u16) v->unk2;
    temp_v1->unk8 = (u16) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Color4b(s8 red, s8 green, s8 blue, s8 alpha) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp20 = (s64) green;
        sp18 = (s64) blue;
        sp10 = (s64) alpha;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk7 = alpha;
    temp_at->unk6 = blue;
    temp_at->unk5 = green;
    temp_at->unk0 = 0x1C800204;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color4bv(s8 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x1C800204;
    temp_v1->unk4 = (s8) v->unk0;
    temp_v1->unk5 = (s8) v->unk1;
    temp_v1->unk6 = (s8) v->unk2;
    temp_v1->unk7 = (s8) v->unk3;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color4d(f64 red, f64 green, f64 blue, f64 alpha) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 5) {
        sp20 = green;
        sp18 = second half of f64;
        sp10 = alpha;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x210;
    temp_v1->unk10 = (f32) alpha;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) green;
    temp_v1->unk4 = (f32) red;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x210;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    temp_at->unk10 = (f32) v->unk18;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4f(f32 red, f32 green, f32 blue, f32 alpha) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = blue;
    if (*(s32 *)0x1020 < 5) {
        sp20 = (bitwise f64) green;
        sp18 = (bitwise f64) var_f5;
        sp10 = (bitwise f64) alpha;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = red;
    temp_v1->unk10 = alpha;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = green;
    temp_v1->unk0 = 0x210;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x210;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    temp_at->unk10 = (f32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4i(s32 red, s32 green, s32 blue, s32 alpha) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        sp20 = (s64) green;
        sp18 = (s64) blue;
        sp10 = (s64) alpha;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk10 = alpha;
    temp_at->unkC = blue;
    temp_at->unk8 = green;
    temp_at->unk0 = 0x1C000210;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x1C000210;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    temp_v1->unk10 = (s32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4s(s16 red, s16 green, s16 blue, s16 alpha) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp20 = (s64) green;
        sp18 = (s64) blue;
        sp10 = (s64) alpha;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unkA = alpha;
    temp_at->unk8 = blue;
    temp_at->unk6 = green;
    temp_at->unk0 = 0x1D000208;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Color4sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x1D000208;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    temp_v1->unkA = (s16) v->unk6;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Color4ub(u8 red, u8 green, u8 blue, u8 alpha) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp20 = (s64) green;
        sp18 = (s64) blue;
        sp10 = (s64) alpha;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk7 = alpha;
    temp_at->unk6 = blue;
    temp_at->unk5 = green;
    temp_at->unk0 = 0x14800204;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color4ubv(u8 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x14800204;
    temp_v1->unk4 = (u8) v->unk0;
    temp_v1->unk5 = (u8) v->unk1;
    temp_v1->unk6 = (u8) v->unk2;
    temp_v1->unk7 = (u8) v->unk3;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Color4ui(u32 red, u32 green, u32 blue, u32 alpha) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        sp20 = (s64) green;
        sp18 = (s64) blue;
        sp10 = (s64) alpha;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unk10 = alpha;
    temp_at->unkC = blue;
    temp_at->unk8 = green;
    temp_at->unk0 = 0x14000210;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4uiv(u32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x14000210;
    temp_v1->unk4 = (u32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    temp_v1->unk10 = (s32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Color4us(u16 red, u16 green, u16 blue, u16 alpha) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp20 = (s64) green;
        sp18 = (s64) blue;
        sp10 = (s64) alpha;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = red;
    temp_at->unkA = alpha;
    temp_at->unk8 = blue;
    temp_at->unk6 = green;
    temp_at->unk0 = 0x15000208;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Color4usv(u16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x15000208;
    temp_v1->unk4 = (u16) v->unk0;
    temp_v1->unk6 = (u16) v->unk2;
    temp_v1->unk8 = (u16) v->unk4;
    temp_v1->unkA = (u16) v->unk6;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Indexd(f64 c) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x204;
    temp_v1->unk4 = (f32) c;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexdv(f64 *c) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x204;
    temp_at->unk4 = (f32) *c;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexf(f32 c) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = c;
    temp_v1->unk0 = 0x204;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexfv(f32 *c) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x204;
    temp_at->unk4 = (f32) *c;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexi(s32 c) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = c;
    temp_at->unk0 = 0x18000204;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexiv(s32 *c) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x18000204;
    temp_v1->unk4 = (s32) *c;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexs(s16 c) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = c;
    temp_at->unk0 = 0x19000202;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexsv(s16 *c) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x19000202;
    temp_v1->unk4 = (s16) *c;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Normal3b(s8 nx, s8 ny, s8 nz) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp18 = (s64) ny;
        sp10 = (s64) nz;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = nx;
    temp_at->unk6 = nz;
    temp_at->unk5 = ny;
    temp_at->unk0 = 0x1C800703;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Normal3bv(s8 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x1C800703;
    temp_v1->unk4 = (s8) v->unk0;
    temp_v1->unk5 = (s8) v->unk1;
    temp_v1->unk6 = (s8) v->unk2;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Normal3d(f64 nx, f64 ny, f64 nz) {
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 4) {
        sp18 = ny;
        sp10 = second half of f64;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x70C;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) ny;
    temp_v1->unk4 = (f32) nx;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Normal3dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x70C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Normal3f(f32 nx, f32 ny, f32 nz) {
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = nz;
    if (*(s32 *)0x1020 < 4) {
        sp18 = (bitwise f64) ny;
        sp10 = (bitwise f64) var_f5;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = nx;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = ny;
    temp_v1->unk0 = 0x70C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Normal3fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x70C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Normal3i(s32 nx, s32 ny, s32 nz) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp18 = (s64) ny;
        sp10 = (s64) nz;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = nx;
    temp_at->unkC = nz;
    temp_at->unk8 = ny;
    temp_at->unk0 = 0x1C00070C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Normal3iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x1C00070C;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Normal3s(s16 nx, s16 ny, s16 nz) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp18 = (s64) ny;
        sp10 = (s64) nz;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = nx;
    temp_at->unk8 = nz;
    temp_at->unk6 = ny;
    temp_at->unk0 = 0x1D000706;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Normal3sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x1D000706;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos2d(f64 x, f64 y) {
    f64 sp10;
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        sp10 = y;
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x40003808;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos2dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x40003808;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos2f(f32 x, f32 y) {
    f64 sp10;
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        sp10 = (bitwise f64) y;
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = x;
    temp_v1->unk8 = y;
    temp_v1->unk0 = 0x40003808;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos2fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x40003808;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos2i(s32 x, s32 y) {
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp10 = (s64) y;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk8 = y;
    temp_at->unk0 = 0x58003808;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos2iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x58003808;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos2s(s16 x, s16 y) {
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp10 = (s64) y;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk6 = y;
    temp_at->unk0 = 0x59003804;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_RasterPos2sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x59003804;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_RasterPos3d(f64 x, f64 y, f64 z) {
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 4) {
        sp18 = y;
        sp10 = second half of f64;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x2000380C;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_RasterPos3dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000380C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_RasterPos3f(f32 x, f32 y, f32 z) {
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = z;
    if (*(s32 *)0x1020 < 4) {
        sp18 = (bitwise f64) y;
        sp10 = (bitwise f64) var_f5;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = x;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = y;
    temp_v1->unk0 = 0x2000380C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_RasterPos3fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000380C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_RasterPos3i(s32 x, s32 y, s32 z) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp18 = (s64) y;
        sp10 = (s64) z;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unkC = z;
    temp_at->unk8 = y;
    temp_at->unk0 = 0x3800380C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_RasterPos3iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3800380C;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_RasterPos3s(s16 x, s16 y, s16 z) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp18 = (s64) y;
        sp10 = (s64) z;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk8 = z;
    temp_at->unk6 = y;
    temp_at->unk0 = 0x39003806;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos3sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x39003806;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos4d(f64 x, f64 y, f64 z, f64 w) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 5) {
        sp20 = y;
        sp18 = second half of f64;
        sp10 = w;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3810;
    temp_v1->unk10 = (f32) w;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_RasterPos4dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x3810;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    temp_at->unk10 = (f32) v->unk18;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_RasterPos4f(f32 x, f32 y, f32 z, f32 w) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = z;
    if (*(s32 *)0x1020 < 5) {
        sp20 = (bitwise f64) y;
        sp18 = (bitwise f64) var_f5;
        sp10 = (bitwise f64) w;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = x;
    temp_v1->unk10 = w;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = y;
    temp_v1->unk0 = 0x3810;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_RasterPos4fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x3810;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    temp_at->unk10 = (f32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_RasterPos4i(s32 x, s32 y, s32 z, s32 w) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        sp20 = (s64) y;
        sp18 = (s64) z;
        sp10 = (s64) w;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk10 = w;
    temp_at->unkC = z;
    temp_at->unk8 = y;
    temp_at->unk0 = 0x18003810;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_RasterPos4iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x18003810;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    temp_v1->unk10 = (s32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_RasterPos4s(s16 x, s16 y, s16 z, s16 w) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp20 = (s64) y;
        sp18 = (s64) z;
        sp10 = (s64) w;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unkA = w;
    temp_at->unk8 = z;
    temp_at->unk6 = y;
    temp_at->unk0 = 0x19003808;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_RasterPos4sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x19003808;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    temp_v1->unkA = (s16) v->unk6;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord1d(f64 s) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x60000804;
    temp_v1->unk4 = (f32) s;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord1dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x60000804;
    temp_at->unk4 = (f32) *v;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord1f(f32 s) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = s;
    temp_v1->unk0 = 0x60000804;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord1fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x60000804;
    temp_at->unk4 = (f32) *v;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord1i(s32 s) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unk0 = 0x78000804;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord1iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x78000804;
    temp_v1->unk4 = (s32) *v;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord1s(s16 s) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unk0 = 0x79000802;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord1sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x79000802;
    temp_v1->unk4 = (s16) *v;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord2d(f64 s, f64 t) {
    f64 sp10;
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        sp10 = t;
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x40000808;
    temp_v1->unk8 = (f32) t;
    temp_v1->unk4 = (f32) s;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord2dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x40000808;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord2f(f32 s, f32 t) {
    f64 sp10;
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        sp10 = (bitwise f64) t;
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = s;
    temp_v1->unk8 = t;
    temp_v1->unk0 = 0x40000808;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord2fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x40000808;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord2i(s32 s, s32 t) {
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp10 = (s64) t;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unk8 = t;
    temp_at->unk0 = 0x58000808;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord2iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x58000808;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord2s(s16 s, s16 t) {
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp10 = (s64) t;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unk6 = t;
    temp_at->unk0 = 0x59000804;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord2sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x59000804;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_TexCoord3d(f64 s, f64 t, f64 r) {
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 4) {
        sp18 = t;
        sp10 = second half of f64;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x2000080C;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) t;
    temp_v1->unk4 = (f32) s;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_TexCoord3dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000080C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_TexCoord3f(f32 s, f32 t, f32 r) {
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = r;
    if (*(s32 *)0x1020 < 4) {
        sp18 = (bitwise f64) t;
        sp10 = (bitwise f64) var_f5;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = s;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = t;
    temp_v1->unk0 = 0x2000080C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_TexCoord3fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000080C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_TexCoord3i(s32 s, s32 t, s32 r) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp18 = (s64) t;
        sp10 = (s64) r;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unkC = r;
    temp_at->unk8 = t;
    temp_at->unk0 = 0x3800080C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_TexCoord3iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3800080C;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_TexCoord3s(s16 s, s16 t, s16 r) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp18 = (s64) t;
        sp10 = (s64) r;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unk8 = r;
    temp_at->unk6 = t;
    temp_at->unk0 = 0x39000806;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord3sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x39000806;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord4d(f64 s, f64 t, f64 r, f64 q) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 5) {
        sp20 = t;
        sp18 = second half of f64;
        sp10 = q;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x810;
    temp_v1->unk10 = (f32) q;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) t;
    temp_v1->unk4 = (f32) s;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_TexCoord4dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x810;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    temp_at->unk10 = (f32) v->unk18;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_TexCoord4f(f32 s, f32 t, f32 r, f32 q) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = r;
    if (*(s32 *)0x1020 < 5) {
        sp20 = (bitwise f64) t;
        sp18 = (bitwise f64) var_f5;
        sp10 = (bitwise f64) q;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = s;
    temp_v1->unk10 = q;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = t;
    temp_v1->unk0 = 0x810;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_TexCoord4fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x810;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    temp_at->unk10 = (f32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_TexCoord4i(s32 s, s32 t, s32 r, s32 q) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        sp20 = (s64) t;
        sp18 = (s64) r;
        sp10 = (s64) q;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unk10 = q;
    temp_at->unkC = r;
    temp_at->unk8 = t;
    temp_at->unk0 = 0x18000810;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_TexCoord4iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x18000810;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    temp_v1->unk10 = (s32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_TexCoord4s(s16 s, s16 t, s16 r, s16 q) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp20 = (s64) t;
        sp18 = (s64) r;
        sp10 = (s64) q;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = s;
    temp_at->unkA = q;
    temp_at->unk8 = r;
    temp_at->unk6 = t;
    temp_at->unk0 = 0x19000808;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_TexCoord4sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x19000808;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    temp_v1->unkA = (s16) v->unk6;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex2d(f64 x, f64 y) {
    f64 sp10;
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        sp10 = y;
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x40000008;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex2dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x40000008;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex2f(f32 x, f32 y) {
    f64 sp10;
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        sp10 = (bitwise f64) y;
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = x;
    temp_v1->unk8 = y;
    temp_v1->unk0 = 0x40000008;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex2fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x40000008;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex2i(s32 x, s32 y) {
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp10 = (s64) y;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk8 = y;
    temp_at->unk0 = 0x58000008;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex2iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x58000008;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex2s(s16 x, s16 y) {
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        sp10 = (s64) y;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk6 = y;
    temp_at->unk0 = 0x59000004;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Vertex2sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x59000004;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Vertex3d(f64 x, f64 y, f64 z) {
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 4) {
        sp18 = y;
        sp10 = second half of f64;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x2000000C;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Vertex3dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000000C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Vertex3f(f32 x, f32 y, f32 z) {
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = z;
    if (*(s32 *)0x1020 < 4) {
        sp18 = (bitwise f64) y;
        sp10 = (bitwise f64) var_f5;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = x;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = y;
    temp_v1->unk0 = 0x2000000C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Vertex3fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2000000C;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Vertex3i(s32 x, s32 y, s32 z) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp18 = (s64) y;
        sp10 = (s64) z;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unkC = z;
    temp_at->unk8 = y;
    temp_at->unk0 = 0x3800000C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Vertex3iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 4) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3800000C;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x10);
}

void __glMgrlc_Vertex3s(s16 x, s16 y, s16 z) {
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp18 = (s64) y;
        sp10 = (s64) z;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk8 = z;
    temp_at->unk6 = y;
    temp_at->unk0 = 0x39000006;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex3sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x39000006;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex4d(f64 x, f64 y, f64 z, f64 w) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 5) {
        sp20 = y;
        sp18 = second half of f64;
        sp10 = w;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x10;
    temp_v1->unk10 = (f32) w;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Vertex4dv(f64 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x10;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk8;
    temp_at->unkC = (f32) v->unk10;
    temp_at->unk10 = (f32) v->unk18;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Vertex4f(f32 x, f32 y, f32 z, f32 w) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = z;
    if (*(s32 *)0x1020 < 5) {
        sp20 = (bitwise f64) y;
        sp18 = (bitwise f64) var_f5;
        sp10 = (bitwise f64) w;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = x;
    temp_v1->unk10 = w;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = y;
    temp_v1->unk0 = 0x10;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Vertex4fv(f32 *v) {
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x10;
    temp_at->unk4 = (f32) v->unk0;
    temp_at->unk8 = (f32) v->unk4;
    temp_at->unkC = (f32) v->unk8;
    temp_at->unk10 = (f32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Vertex4i(s32 x, s32 y, s32 z, s32 w) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 5) {
        sp20 = (s64) y;
        sp18 = (s64) z;
        sp10 = (s64) w;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unk10 = w;
    temp_at->unkC = z;
    temp_at->unk8 = y;
    temp_at->unk0 = 0x18000010;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Vertex4iv(s32 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x18000010;
    temp_v1->unk4 = (s32) v->unk0;
    temp_v1->unk8 = (s32) v->unk4;
    temp_v1->unkC = (s32) v->unk8;
    temp_v1->unk10 = (s32) v->unkC;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0x14);
}

void __glMgrlc_Vertex4s(s16 x, s16 y, s16 z, s16 w) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 3) {
        sp20 = (s64) y;
        sp18 = (s64) z;
        sp10 = (s64) w;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = x;
    temp_at->unkA = w;
    temp_at->unk8 = z;
    temp_at->unk6 = y;
    temp_at->unk0 = 0x19000008;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Vertex4sv(s16 *v) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x19000008;
    temp_v1->unk4 = (s16) v->unk0;
    temp_v1->unk6 = (s16) v->unk2;
    temp_v1->unk8 = (s16) v->unk4;
    temp_v1->unkA = (s16) v->unk6;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 0xC);
}

void __glMgrlc_Indexub(u8 c) {
    void *temp_at;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = c;
    temp_at->unk0 = 0x10800201;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}

void __glMgrlc_Indexubv(u8 *c) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x10800201;
    temp_v1->unk4 = (u8) *c;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
    *(void *)0x1028 = (void *) (*(void *)0x1028 + 8);
}
