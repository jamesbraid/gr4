void __glMgrim_Color3b(s8 red, s8 green, s8 blue) {
    *(s64 *)0x74080 = ((red & 0xFF) << 0x18) | ((green & 0xFF) << 0x10) | ((blue & 0xFF) << 8) | (0x3C800203 << 0x20);
}

void __glMgrim_Color3bv(s8 *v) {
    *(s64 *)0x74080 = (0x3C800203 << 0x20) | (((s64) (u8) v->unk0 << 0x18) | ((s64) v->unk1 << 0x10) | ((s64) v->unk2 << 8));
}

void __glMgrim_Color3d(f64 red, f64 green, f64 blue) {
    *(s32 *)0x74080 = 0x32000218;
    *(s32 *)0x74080 = red;
    *(s32 *)0x74080 = green;
    *(s32 *)0x74080 = blue;
}

void __glMgrim_Color3dv(f64 *v) {
    *(s32 *)0x74080 = 0x32000218;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) v->unk10;
}

void __glMgrim_Color3f(f32 red, f32 green, f32 blue) {
    *(s64 *)0x74080 = (0x2000020C << 0x20) | ((u64) ((bitwise s64) red << 0x20) >> 0x20);
    *(s64 *)0x74080 = ((bitwise s64) green << 0x20) | ((u64) ((bitwise s64) blue << 0x20) >> 0x20);
}

void __glMgrim_Color3fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x2000020C << 0x20) | (bitwise u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_Color3i(s32 red, s32 green, s32 blue) {
    *(s64 *)0x74080 = ((u64) ((s64) red << 0x20) >> 0x20) | (0x3C00020C << 0x20);
    *(s64 *)0x74080 = ((s64) green << 0x20) | ((u64) ((s64) blue << 0x20) >> 0x20);
}

void __glMgrim_Color3iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x3C00020C << 0x20) | (u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_Color3s(s16 red, s16 green, s16 blue) {
    *(s32 *)0x74080 = 0x3D000206;
    *(s32 *)0x74080 = (s64) (((((red & 0xFFFF) << 0x10) | (green & 0xFFFF)) << 0x20) | ((blue & 0xFFFF) << 0x10));
}

void __glMgrim_Color3sv(s16 *v) {
    *(s32 *)0x74080 = 0x3D000206;
    *(s32 *)0x74080 = (s64) (((unaligned s32) v->unk0 << 0x20) | ((s64) v->unk4 << 0x10));
}

void __glMgrim_Color3ub(u8 red, u8 green, u8 blue) {
    *(s64 *)0x74080 = ((red & 0xFF) << 0x18) | ((green & 0xFF) << 0x10) | ((blue & 0xFF) << 8) | (0x34800203 << 0x20);
}

void __glMgrim_Color3ubv(u8 *v) {
    *(s64 *)0x74080 = (0x34800203 << 0x20) | (((s64) v->unk0 << 0x18) | ((s64) v->unk1 << 0x10) | ((s64) v->unk2 << 8));
}

void __glMgrim_Color3ui(u32 red, u32 green, u32 blue) {
    *(s64 *)0x74080 = ((u64) ((s64) red << 0x20) >> 0x20) | (0x3400020C << 0x20);
    *(s64 *)0x74080 = ((s64) green << 0x20) | ((u64) ((s64) blue << 0x20) >> 0x20);
}

void __glMgrim_Color3uiv(u32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x3400020C << 0x20) | *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_Color3us(u16 red, u16 green, u16 blue) {
    *(s32 *)0x74080 = 0x35000206;
    *(s32 *)0x74080 = (s64) (((((red & 0xFFFF) << 0x10) | (green & 0xFFFF)) << 0x20) | ((blue & 0xFFFF) << 0x10));
}

void __glMgrim_Color3usv(u16 *v) {
    *(s32 *)0x74080 = 0x35000206;
    *(s32 *)0x74080 = (s64) (((unaligned s32) v->unk0 << 0x20) | ((s64) v->unk4 << 0x10));
}

void __glMgrim_Color4b(s8 red, s8 green, s8 blue, s8 alpha) {
    *(s64 *)0x74080 = ((blue & 0xFF) << 8) | (((green & 0xFF) << 0x10) | (((red & 0xFF) << 0x18) | (alpha & 0xFF))) | (0x1C800204 << 0x20);
}

void __glMgrim_Color4bv(s8 *v) {
    *(s64 *)0x74080 = (0x1C800204 << 0x20) | ((u64) ((unaligned s32) *v << 0x20) >> 0x20);
}

void __glMgrim_Color4d(f64 red, f64 green, f64 blue, f64 alpha) {
    *(s32 *)0x74080 = 0x12000220;
    *(s32 *)0x74080 = red;
    *(s32 *)0x74080 = green;
    *(s32 *)0x74080 = blue;
    *(s32 *)0x74080 = alpha;
}

void __glMgrim_Color4dv(f64 *v) {
    *(s32 *)0x74080 = 0x12000220;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk18;
}

void __glMgrim_Color4f(f32 red, f32 green, f32 blue, f32 alpha) {
    *(s32 *)0x74080 = 0x210;
    *(s32 *)0x74080 = (s64) (((bitwise s64) red << 0x20) | ((u64) ((bitwise s64) green << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((bitwise s64) blue << 0x20) | ((u64) ((bitwise s64) alpha << 0x20) >> 0x20));
}

void __glMgrim_Color4fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x210;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_Color4i(s32 red, s32 green, s32 blue, s32 alpha) {
    *(s32 *)0x74080 = 0x1C000210;
    *(s32 *)0x74080 = (s64) (((s64) red << 0x20) | ((u64) ((s64) green << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((s64) blue << 0x20) | ((u64) ((s64) alpha << 0x20) >> 0x20));
}

void __glMgrim_Color4iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x1C000210;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_Color4s(s16 red, s16 green, s16 blue, s16 alpha) {
    *(s32 *)0x74080 = 0x1D000208;
    *(s32 *)0x74080 = (s64) (((((red & 0xFFFF) << 0x10) | (green & 0xFFFF)) << 0x20) | (((blue & 0xFFFF) << 0x10) | (alpha & 0xFFFF)));
}

void __glMgrim_Color4sv(s16 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x1D000208;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_Color4ub(u8 red, u8 green, u8 blue, u8 alpha) {
    *(s64 *)0x74080 = ((blue & 0xFF) << 8) | (((green & 0xFF) << 0x10) | (((red & 0xFF) << 0x18) | (alpha & 0xFF))) | (0x14800204 << 0x20);
}

void __glMgrim_Color4ubv(u8 *v) {
    *(s64 *)0x74080 = (0x14800204 << 0x20) | ((u64) ((unaligned s32) *v << 0x20) >> 0x20);
}

void __glMgrim_Color4ui(u32 red, u32 green, u32 blue, u32 alpha) {
    *(s32 *)0x74080 = 0x14000210;
    *(s32 *)0x74080 = (s64) (((s64) red << 0x20) | ((u64) ((s64) green << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((s64) blue << 0x20) | ((u64) ((s64) alpha << 0x20) >> 0x20));
}

void __glMgrim_Color4uiv(u32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x14000210;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_Color4us(u16 red, u16 green, u16 blue, u16 alpha) {
    *(s32 *)0x74080 = 0x15000208;
    *(s32 *)0x74080 = (s64) (((((red & 0xFFFF) << 0x10) | (green & 0xFFFF)) << 0x20) | (((blue & 0xFFFF) << 0x10) | (alpha & 0xFFFF)));
}

void __glMgrim_Color4usv(u16 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x15000208;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_Indexd(f64 c) {
    *(s32 *)0x74080 = 0x12000208;
    *(s32 *)0x74080 = c;
}

void __glMgrim_Indexdv(f64 *c) {
    *(s32 *)0x74080 = 0x12000208;
    *(s32 *)0x74080 = (f64) *c;
}

void __glMgrim_Indexf(f32 c) {
    *(s64 *)0x74080 = (0x204 << 0x20) | ((u64) ((bitwise s64) c << 0x20) >> 0x20);
}

void __glMgrim_Indexfv(f32 *c) {
    *(s64 *)0x74080 = (bitwise u32) *c | (0x204 << 0x20);
}

void __glMgrim_Indexi(s32 c) {
    *(s64 *)0x74080 = ((u64) ((s64) c << 0x20) >> 0x20) | (0x18000204 << 0x20);
}

void __glMgrim_Indexiv(s32 *c) {
    *(s64 *)0x74080 = (u32) *c | (0x18000204 << 0x20);
}

void __glMgrim_Indexs(s16 c) {
    *(s64 *)0x74080 = (0x19000202 << 0x20) | ((c & 0xFFFF) << 0x10);
}

void __glMgrim_Indexsv(s16 *c) {
    *(s64 *)0x74080 = ((s64) (u16) *c << 0x10) | (0x19000202 << 0x20);
}

void __glMgrim_Normal3b(s8 nx, s8 ny, s8 nz) {
    *(s64 *)0x74080 = ((nx & 0xFF) << 0x18) | ((ny & 0xFF) << 0x10) | ((nz & 0xFF) << 8) | (0x1C800703 << 0x20);
}

void __glMgrim_Normal3bv(s8 *v) {
    *(s64 *)0x74080 = (0x1C800703 << 0x20) | (((s64) (u8) v->unk0 << 0x18) | ((s64) v->unk1 << 0x10) | ((s64) v->unk2 << 8));
}

void __glMgrim_Normal3d(f64 nx, f64 ny, f64 nz) {
    *(s32 *)0x74080 = 0x12000718;
    *(s32 *)0x74080 = nx;
    *(s32 *)0x74080 = ny;
    *(s32 *)0x74080 = nz;
}

void __glMgrim_Normal3dv(f64 *v) {
    *(s32 *)0x74080 = 0x12000718;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) v->unk10;
}

void __glMgrim_Normal3f(f32 nx, f32 ny, f32 nz) {
    *(s64 *)0x74080 = (0x70C << 0x20) | ((u64) ((bitwise s64) nx << 0x20) >> 0x20);
    *(s64 *)0x74080 = ((bitwise s64) ny << 0x20) | ((u64) ((bitwise s64) nz << 0x20) >> 0x20);
}

void __glMgrim_Normal3fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x70C << 0x20) | (bitwise u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_Normal3i(s32 nx, s32 ny, s32 nz) {
    *(s64 *)0x74080 = ((u64) ((s64) nx << 0x20) >> 0x20) | (0x1C00070C << 0x20);
    *(s64 *)0x74080 = ((s64) ny << 0x20) | ((u64) ((s64) nz << 0x20) >> 0x20);
}

void __glMgrim_Normal3iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x1C00070C << 0x20) | (u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_Normal3s(s16 nx, s16 ny, s16 nz) {
    *(s32 *)0x74080 = 0x1D000706;
    *(s32 *)0x74080 = (s64) (((((nx & 0xFFFF) << 0x10) | (ny & 0xFFFF)) << 0x20) | ((nz & 0xFFFF) << 0x10));
}

void __glMgrim_Normal3sv(s16 *v) {
    *(s32 *)0x74080 = 0x1D000706;
    *(s32 *)0x74080 = (s64) (((unaligned s32) v->unk0 << 0x20) | ((s64) v->unk4 << 0x10));
}

void __glMgrim_RasterPos2d(f64 x, f64 y) {
    *(s32 *)0x74080 = 0x52003810;
    *(s32 *)0x74080 = x;
    *(s32 *)0x74080 = y;
}

void __glMgrim_RasterPos2dv(f64 *v) {
    *(s32 *)0x74080 = 0x52003810;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
}

void __glMgrim_RasterPos2f(f32 x, f32 y) {
    *(s32 *)0x74080 = 0x40003808;
    *(s32 *)0x74080 = (s64) (((bitwise s64) x << 0x20) | ((u64) ((bitwise s64) y << 0x20) >> 0x20));
}

void __glMgrim_RasterPos2fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x40003808;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_RasterPos2i(s32 x, s32 y) {
    *(s32 *)0x74080 = 0x58003808;
    *(s32 *)0x74080 = (s64) (((s64) x << 0x20) | ((u64) ((s64) y << 0x20) >> 0x20));
}

void __glMgrim_RasterPos2iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x58003808;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_RasterPos2s(s16 x, s16 y) {
    *(s64 *)0x74080 = (0x59003804 << 0x20) | (((x & 0xFFFF) << 0x10) | (y & 0xFFFF));
}

void __glMgrim_RasterPos2sv(s16 *v) {
    *(s64 *)0x74080 = ((u64) ((unaligned s32) *v << 0x20) >> 0x20) | (0x59003804 << 0x20);
}

void __glMgrim_RasterPos3d(f64 x, f64 y, f64 z) {
    *(s32 *)0x74080 = 0x32003818;
    *(s32 *)0x74080 = x;
    *(s32 *)0x74080 = y;
    *(s32 *)0x74080 = z;
}

void __glMgrim_RasterPos3dv(f64 *v) {
    *(s32 *)0x74080 = 0x32003818;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) v->unk10;
}

void __glMgrim_RasterPos3f(f32 x, f32 y, f32 z) {
    *(s64 *)0x74080 = (0x2000380C << 0x20) | ((u64) ((bitwise s64) x << 0x20) >> 0x20);
    *(s64 *)0x74080 = ((bitwise s64) y << 0x20) | ((u64) ((bitwise s64) z << 0x20) >> 0x20);
}

void __glMgrim_RasterPos3fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x2000380C << 0x20) | (bitwise u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_RasterPos3i(s32 x, s32 y, s32 z) {
    *(s64 *)0x74080 = ((u64) ((s64) x << 0x20) >> 0x20) | (0x3800380C << 0x20);
    *(s64 *)0x74080 = ((s64) y << 0x20) | ((u64) ((s64) z << 0x20) >> 0x20);
}

void __glMgrim_RasterPos3iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x3800380C << 0x20) | (u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_RasterPos3s(s16 x, s16 y, s16 z) {
    *(s32 *)0x74080 = 0x39003806;
    *(s32 *)0x74080 = (s64) (((((x & 0xFFFF) << 0x10) | (y & 0xFFFF)) << 0x20) | ((z & 0xFFFF) << 0x10));
}

void __glMgrim_RasterPos3sv(s16 *v) {
    *(s32 *)0x74080 = 0x39003806;
    *(s32 *)0x74080 = (s64) (((unaligned s32) v->unk0 << 0x20) | ((s64) v->unk4 << 0x10));
}

void __glMgrim_RasterPos4d(f64 x, f64 y, f64 z, f64 w) {
    *(s32 *)0x74080 = 0x12003820;
    *(s32 *)0x74080 = x;
    *(s32 *)0x74080 = y;
    *(s32 *)0x74080 = z;
    *(s32 *)0x74080 = w;
}

void __glMgrim_RasterPos4dv(f64 *v) {
    *(s32 *)0x74080 = 0x12003820;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk18;
}

void __glMgrim_RasterPos4f(f32 x, f32 y, f32 z, f32 w) {
    *(s32 *)0x74080 = 0x3810;
    *(s32 *)0x74080 = (s64) (((bitwise s64) x << 0x20) | ((u64) ((bitwise s64) y << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((bitwise s64) z << 0x20) | ((u64) ((bitwise s64) w << 0x20) >> 0x20));
}

void __glMgrim_RasterPos4fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x3810;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_RasterPos4i(s32 x, s32 y, s32 z, s32 w) {
    *(s32 *)0x74080 = 0x18003810;
    *(s32 *)0x74080 = (s64) (((s64) x << 0x20) | ((u64) ((s64) y << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((s64) z << 0x20) | ((u64) ((s64) w << 0x20) >> 0x20));
}

void __glMgrim_RasterPos4iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x18003810;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_RasterPos4s(s16 x, s16 y, s16 z, s16 w) {
    *(s32 *)0x74080 = 0x19003808;
    *(s32 *)0x74080 = (s64) (((((x & 0xFFFF) << 0x10) | (y & 0xFFFF)) << 0x20) | (((z & 0xFFFF) << 0x10) | (w & 0xFFFF)));
}

void __glMgrim_RasterPos4sv(s16 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x19003808;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_TexCoord1d(f64 s) {
    *(s32 *)0x74080 = 0x72000808;
    *(s32 *)0x74080 = s;
}

void __glMgrim_TexCoord1dv(f64 *v) {
    *(s32 *)0x74080 = 0x72000808;
    *(s32 *)0x74080 = (f64) *v;
}

void __glMgrim_TexCoord1f(f32 s) {
    *(s64 *)0x74080 = (0x60000804 << 0x20) | ((u64) ((bitwise s64) s << 0x20) >> 0x20);
}

void __glMgrim_TexCoord1fv(f32 *v) {
    *(s64 *)0x74080 = (bitwise u32) *v | (0x60000804 << 0x20);
}

void __glMgrim_TexCoord1i(s32 s) {
    *(s64 *)0x74080 = ((u64) ((s64) s << 0x20) >> 0x20) | (0x78000804 << 0x20);
}

void __glMgrim_TexCoord1iv(s32 *v) {
    *(s64 *)0x74080 = (u32) *v | (0x78000804 << 0x20);
}

void __glMgrim_TexCoord1s(s16 s) {
    *(s64 *)0x74080 = (0x79000802 << 0x20) | ((s & 0xFFFF) << 0x10);
}

void __glMgrim_TexCoord1sv(s16 *v) {
    *(s64 *)0x74080 = ((s64) (u16) *v << 0x10) | (0x79000802 << 0x20);
}

void __glMgrim_TexCoord2d(f64 s, f64 t) {
    *(s32 *)0x74080 = 0x52000810;
    *(s32 *)0x74080 = s;
    *(s32 *)0x74080 = t;
}

void __glMgrim_TexCoord2dv(f64 *v) {
    *(s32 *)0x74080 = 0x52000810;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
}

void __glMgrim_TexCoord2f(f32 s, f32 t) {
    *(s32 *)0x74080 = 0x40000808;
    *(s32 *)0x74080 = (s64) (((bitwise s64) s << 0x20) | ((u64) ((bitwise s64) t << 0x20) >> 0x20));
}

void __glMgrim_TexCoord2fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x40000808;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_TexCoord2i(s32 s, s32 t) {
    *(s32 *)0x74080 = 0x58000808;
    *(s32 *)0x74080 = (s64) (((s64) s << 0x20) | ((u64) ((s64) t << 0x20) >> 0x20));
}

void __glMgrim_TexCoord2iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x58000808;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_TexCoord2s(s16 s, s16 t) {
    *(s64 *)0x74080 = (0x59000804 << 0x20) | (((s & 0xFFFF) << 0x10) | (t & 0xFFFF));
}

void __glMgrim_TexCoord2sv(s16 *v) {
    *(s64 *)0x74080 = ((u64) ((unaligned s32) *v << 0x20) >> 0x20) | (0x59000804 << 0x20);
}

void __glMgrim_TexCoord3d(f64 s, f64 t, f64 r) {
    *(s32 *)0x74080 = 0x32000818;
    *(s32 *)0x74080 = s;
    *(s32 *)0x74080 = t;
    *(s32 *)0x74080 = r;
}

void __glMgrim_TexCoord3dv(f64 *v) {
    *(s32 *)0x74080 = 0x32000818;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) v->unk10;
}

void __glMgrim_TexCoord3f(f32 s, f32 t, f32 r) {
    *(s64 *)0x74080 = (0x2000080C << 0x20) | ((u64) ((bitwise s64) s << 0x20) >> 0x20);
    *(s64 *)0x74080 = ((bitwise s64) t << 0x20) | ((u64) ((bitwise s64) r << 0x20) >> 0x20);
}

void __glMgrim_TexCoord3fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x2000080C << 0x20) | (bitwise u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_TexCoord3i(s32 s, s32 t, s32 r) {
    *(s64 *)0x74080 = ((u64) ((s64) s << 0x20) >> 0x20) | (0x3800080C << 0x20);
    *(s64 *)0x74080 = ((s64) t << 0x20) | ((u64) ((s64) r << 0x20) >> 0x20);
}

void __glMgrim_TexCoord3iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x3800080C << 0x20) | (u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_TexCoord3s(s16 s, s16 t, s16 r) {
    *(s32 *)0x74080 = 0x39000806;
    *(s32 *)0x74080 = (s64) (((((s & 0xFFFF) << 0x10) | (t & 0xFFFF)) << 0x20) | ((r & 0xFFFF) << 0x10));
}

void __glMgrim_TexCoord3sv(s16 *v) {
    *(s32 *)0x74080 = 0x39000806;
    *(s32 *)0x74080 = (s64) (((unaligned s32) v->unk0 << 0x20) | ((s64) v->unk4 << 0x10));
}

void __glMgrim_TexCoord4d(f64 s, f64 t, f64 r, f64 q) {
    *(s32 *)0x74080 = 0x12000820;
    *(s32 *)0x74080 = s;
    *(s32 *)0x74080 = t;
    *(s32 *)0x74080 = r;
    *(s32 *)0x74080 = q;
}

void __glMgrim_TexCoord4dv(f64 *v) {
    *(s32 *)0x74080 = 0x12000820;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk18;
}

void __glMgrim_TexCoord4f(f32 s, f32 t, f32 r, f32 q) {
    *(s32 *)0x74080 = 0x810;
    *(s32 *)0x74080 = (s64) (((bitwise s64) s << 0x20) | ((u64) ((bitwise s64) t << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((bitwise s64) r << 0x20) | ((u64) ((bitwise s64) q << 0x20) >> 0x20));
}

void __glMgrim_TexCoord4fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x810;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_TexCoord4i(s32 s, s32 t, s32 r, s32 q) {
    *(s32 *)0x74080 = 0x18000810;
    *(s32 *)0x74080 = (s64) (((s64) s << 0x20) | ((u64) ((s64) t << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((s64) r << 0x20) | ((u64) ((s64) q << 0x20) >> 0x20));
}

void __glMgrim_TexCoord4iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x18000810;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_TexCoord4s(s16 s, s16 t, s16 r, s16 q) {
    *(s32 *)0x74080 = 0x19000808;
    *(s32 *)0x74080 = (s64) (((((s & 0xFFFF) << 0x10) | (t & 0xFFFF)) << 0x20) | (((r & 0xFFFF) << 0x10) | (q & 0xFFFF)));
}

void __glMgrim_TexCoord4sv(s16 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x19000808;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_Vertex2d(f64 x, f64 y) {
    *(s32 *)0x74080 = 0x52000010;
    *(s32 *)0x74080 = x;
    *(s32 *)0x74080 = y;
}

void __glMgrim_Vertex2dv(f64 *v) {
    *(s32 *)0x74080 = 0x52000010;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
}

void __glMgrim_Vertex2f(f32 x, f32 y) {
    *(s32 *)0x74080 = 0x40000008;
    *(s32 *)0x74080 = (s64) (((bitwise s64) x << 0x20) | ((u64) ((bitwise s64) y << 0x20) >> 0x20));
}

void __glMgrim_Vertex2fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x40000008;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_Vertex2i(s32 x, s32 y) {
    *(s32 *)0x74080 = 0x58000008;
    *(s32 *)0x74080 = (s64) (((s64) x << 0x20) | ((u64) ((s64) y << 0x20) >> 0x20));
}

void __glMgrim_Vertex2iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x58000008;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_Vertex2s(s16 x, s16 y) {
    *(s64 *)0x74080 = (0x59000004 << 0x20) | (((x & 0xFFFF) << 0x10) | (y & 0xFFFF));
}

void __glMgrim_Vertex2sv(s16 *v) {
    *(s64 *)0x74080 = ((u64) ((unaligned s32) *v << 0x20) >> 0x20) | (0x59000004 << 0x20);
}

void __glMgrim_Vertex3d(f64 x, f64 y, f64 z) {
    *(s32 *)0x74080 = 0x32000018;
    *(s32 *)0x74080 = x;
    *(s32 *)0x74080 = y;
    *(s32 *)0x74080 = z;
}

void __glMgrim_Vertex3dv(f64 *v) {
    *(s32 *)0x74080 = 0x32000018;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) v->unk10;
}

void __glMgrim_Vertex3f(f32 x, f32 y, f32 z) {
    *(s64 *)0x74080 = (0x2000000C << 0x20) | ((u64) ((bitwise s64) x << 0x20) >> 0x20);
    *(s64 *)0x74080 = ((bitwise s64) y << 0x20) | ((u64) ((bitwise s64) z << 0x20) >> 0x20);
}

void __glMgrim_Vertex3fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x2000000C << 0x20) | (bitwise u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_Vertex3i(s32 x, s32 y, s32 z) {
    *(s64 *)0x74080 = ((u64) ((s64) x << 0x20) >> 0x20) | (0x3800000C << 0x20);
    *(s64 *)0x74080 = ((s64) y << 0x20) | ((u64) ((s64) z << 0x20) >> 0x20);
}

void __glMgrim_Vertex3iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t2, 0x4($a0) */);
    *(s64 *)0x74080 = (0x3800000C << 0x20) | (u32) *v;
    *(s64 *)0x74080 = M2C_ERROR(/* unknown instruction: ldr $t2, 0xb($a0) */);
}

void __glMgrim_Vertex3s(s16 x, s16 y, s16 z) {
    *(s32 *)0x74080 = 0x39000006;
    *(s32 *)0x74080 = (s64) (((((x & 0xFFFF) << 0x10) | (y & 0xFFFF)) << 0x20) | ((z & 0xFFFF) << 0x10));
}

void __glMgrim_Vertex3sv(s16 *v) {
    *(s32 *)0x74080 = 0x39000006;
    *(s32 *)0x74080 = (s64) (((unaligned s32) v->unk0 << 0x20) | ((s64) v->unk4 << 0x10));
}

void __glMgrim_Vertex4d(f64 x, f64 y, f64 z, f64 w) {
    *(s32 *)0x74080 = 0x12000020;
    *(s32 *)0x74080 = x;
    *(s32 *)0x74080 = y;
    *(s32 *)0x74080 = z;
    *(s32 *)0x74080 = w;
}

void __glMgrim_Vertex4dv(f64 *v) {
    *(s32 *)0x74080 = 0x12000020;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk8;
    *(s32 *)0x74080 = (f64) (second half of f64);
    *(s32 *)0x74080 = (f64) v->unk18;
}

void __glMgrim_Vertex4f(f32 x, f32 y, f32 z, f32 w) {
    *(s32 *)0x74080 = 0x10;
    *(s32 *)0x74080 = (s64) (((bitwise s64) x << 0x20) | ((u64) ((bitwise s64) y << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((bitwise s64) z << 0x20) | ((u64) ((bitwise s64) w << 0x20) >> 0x20));
}

void __glMgrim_Vertex4fv(f32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x10;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_Vertex4i(s32 x, s32 y, s32 z, s32 w) {
    *(s32 *)0x74080 = 0x18000010;
    *(s32 *)0x74080 = (s64) (((s64) x << 0x20) | ((u64) ((s64) y << 0x20) >> 0x20));
    *(s32 *)0x74080 = (s64) (((s64) z << 0x20) | ((u64) ((s64) w << 0x20) >> 0x20));
}

void __glMgrim_Vertex4iv(s32 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    M2C_ERROR(/* unknown instruction: ldl $t1, 0x8($a0) */);
    *(s32 *)0x74080 = 0x18000010;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t1, 0xf($a0) */);
}

void __glMgrim_Vertex4s(s16 x, s16 y, s16 z, s16 w) {
    *(s32 *)0x74080 = 0x19000008;
    *(s32 *)0x74080 = (s64) (((((x & 0xFFFF) << 0x10) | (y & 0xFFFF)) << 0x20) | (((z & 0xFFFF) << 0x10) | (w & 0xFFFF)));
}

void __glMgrim_Vertex4sv(s16 *v) {
    M2C_ERROR(/* unknown instruction: ldl $t0, ($a0) */);
    *(s32 *)0x74080 = 0x19000008;
    *(s32 *)0x74080 = (s64) M2C_ERROR(/* unknown instruction: ldr $t0, 0x7($a0) */);
}

void __glMgrim_Indexub(u8 c) {
    *(s64 *)0x74080 = (0x10800201 << 0x20) | ((c & 0xFF) << 0x18);
}

void __glMgrim_Indexubv(u8 *c) {
    *(s64 *)0x74080 = ((s64) *c << 0x18) | (0x10800201 << 0x20);
}
