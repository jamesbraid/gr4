typedef struct __gl_wstateRec {
    /* 0x0000 */ gl_wstate *next;
    /* 0x0004 */ u32 flags;
    /* 0x0008 */ s32 drawMode;
    /* 0x000C */ s32 colorMode;
    /* 0x0010 */ s32 bufferMode;
    /* 0x0014 */ s32 shadingModel;
    /* 0x0018 */ s32 zbuffer;
    /* 0x001C */ s32 zfunction;
    /* 0x0020 */ s32 blendSrc;
    /* 0x0024 */ s32 blendDst;
    /* 0x0028 */ s16 currentColor;
    /* 0x002A */ char pad2A[2];
    /* 0x002C */ u32 currentRGB;
    /* 0x0030 */ f32 currentNormal[3];
    /* 0x003C */ char pad3C[0x9C];                  /* maybe part of currentNormal[0xE]? */
    /* 0x00D8 */ ? (*unkD8)(?);                     /* inferred */
    /* 0x00DC */ ? (*unkDC)();                      /* inferred */
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ char pad100[0xA40];                /* maybe part of screenState[0x291]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x2C0];               /* maybe part of currentVertex[0x2D]? */
    /* 0x2DC0 */ ? unk2DC0;                         /* inferred */
    /* 0x2DC0 */ char pad2DC0[8];
    /* 0x2DC8 */ s32 unk2DC8;                       /* inferred */
    /* 0x2DCC */ char pad2DCC[4];
    /* 0x2DD0 */ s16 unk2DD0;                       /* inferred */
    /* 0x2DD2 */ s16 unk2DD2;                       /* inferred */
    /* 0x2DD4 */ s16 unk2DD4;                       /* inferred */
    /* 0x2DD6 */ s16 unk2DD6;                       /* inferred */
    /* 0x2DD8 */ char pad2DD8[0x110];               /* maybe part of unk2DD6[0x89]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? bcopy(s64, void *, ?);                            /* extern */
? glEvalCoord2f(f32);                               /* extern */
? glMap2f(f32, f32, ?, f32 *, f32 *, ?);            /* extern */
? rpatch(void *);                                   /* extern */
extern ? sub_0f030000;
extern ? sub_0f0f0000;

void gl_g_patch(void) {
    rpatch(&sub_0f030000 - 0x6308);
}

void freepatch(void *arg1) {
    void *temp_a0;

    temp_a0 = arg1->unk114;
    if (temp_a0 != NULL) {
        unksp8 = (s64) arg1;
        gl_free(temp_a0, saved_reg_gp->unk-3904, arg1);
    }
    gl_free(arg1, saved_reg_gp->unk-3904);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x210, 0x214, 0x218, 0x21c, 0x220, 0x224, 0x230, 0x234, 0x278, 0x27c], gap at: 0x240. */
void drawpatch(void *arg1) {
    ? sp10;
    f32 *spC;
    s32 sp4;
    ? *temp_s7;
    ? *var_a6;
    f32 *var_a1_2;
    f32 *var_a4;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f1_5;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f3_3;
    f32 temp_f3_4;
    f32 temp_f3_5;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f64 temp_f12;
    f64 temp_f14_2;
    gl_wstate *temp_s1;
    s16 temp_a1;
    s16 temp_a3;
    s16 temp_a3_2;
    s32 temp_a1_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s5_2;
    s32 var_s5_3;
    s64 temp_lo;
    s64 temp_s8;
    u64 var_s5;
    u64 var_s6;
    void *temp_v0;
    void *var_a1;
    void *var_a3;
    void *var_a3_2;
    void *var_v0;

    temp_a3 = gl_wstatep->unk2DD6;
    temp_s7 = &gl_wstatep->unk2DC0;
    temp_s1 = gl_wstatep;
    if (temp_a3 >= 2) {
        var_s5 = temp_a3 - 1;
    } else {
        var_s5 = 1;
    }
    temp_a1 = gl_wstatep->unk2DD4;
    if (temp_a1 >= 2) {
        var_s6 = temp_a1 - 1;
    } else {
        var_s6 = 1;
    }
    temp_s8 = (((u32) gl_wstatep->unk2DD2 / var_s6) + 1) * var_s6;
    temp_a3_2 = ((u32) gl_wstatep->unk2DD0 / var_s5) + 1;
    temp_lo = temp_a3_2 * var_s5;
    M2C_TRAP_IF(var_s5 == 0);
    M2C_TRAP_IF(var_s6 == 0);
    unksp228 = temp_lo;
    var_v0 = gl_findbasis(gl_wstatep->unk2DC8, 1e-45f, temp_lo, temp_a3_2);
    var_s0 = 0;
    var_a5 = 0;
    var_a3 = arg1;
    do {
        temp_f14 = var_v0->unk18;
        temp_f12 = var_v0->unk10;
        temp_f15 = var_v0->unkC;
        var_v0 += 0x10;
        var_s0 += 1;
        var_a1 = var_a5 + &sp10;
loop_8:
        temp_f4 = (var_a3->unkF0 * temp_f14) + ((var_a3->unkE0 * (bitwise f32) temp_f12) + ((var_a3->unkC0 * temp_f15) + (var_a3->unkD0 * (second half of f64))));
        temp_f2 = (var_a3->unkB0 * temp_f14) + ((var_a3->unkA0 * (bitwise f32) temp_f12) + ((var_a3->unk80 * temp_f15) + (var_a3->unk90 * (second half of f64))));
        temp_f0 = var_a3->unk30 * temp_f14;
        temp_f3 = (var_a3->unk20 * (bitwise f32) temp_f12) + ((var_a3->unk0 * temp_f15) + (var_a3->unk10 * (second half of f64)));
        var_a1 += 4;
        temp_f1 = (var_a3->unk70 * temp_f14) + ((var_a3->unk60 * (bitwise f32) temp_f12) + ((var_a3->unk40 * temp_f15) + (var_a3->unk50 * (second half of f64))));
        var_a3 += 4;
        var_a1->unkBC = temp_f4;
        var_a1->unk7C = temp_f2;
        var_a1->unk3C = temp_f1;
        var_a1->unk-4 = (f32) (temp_f0 + temp_f3);
        if (var_a3 != (arg1 + 0x10)) {
            goto loop_8;
        }
        var_a5 += 0x10;
        var_a3 = arg1;
    } while (var_s0 != 4);
    temp_v0 = gl_findbasis((s32) temp_f12, temp_f14, (s64) temp_s7->unkC, 1);
    var_a6 = &sp10;
    var_a5_2 = 0;
    var_s0_2 = 0;
    var_a4 = &sp110[0] + 0x40;
    do {
        var_a3_2 = temp_v0;
        temp_f11 = var_a6->unkCC;
        temp_f14_2 = var_a6->unkC4;
        temp_f17 = var_a6->unkC0;
        temp_f18 = var_a6->unk8C;
        temp_f9 = var_a6->unk88;
        temp_f7 = var_a6->unk84;
        temp_f6 = var_a6->unk80;
        temp_f4_2 = var_a6->unk4C;
        temp_f10 = var_a6->unk48;
        temp_f13 = var_a6->unk44;
        temp_f16 = var_a6->unk40;
        temp_f19 = var_a6->unkC;
        temp_f8 = var_a6->unk8;
        temp_f5 = var_a6->unk4;
        temp_f12_2 = var_a6->unk0;
        var_a6 += 0x10;
        var_s0_2 += 1;
        temp_a1_2 = var_a5_2 * 4;
        var_a5_2 += 0x10;
        var_a1_2 = temp_a1_2 + &sp110[0];
loop_12:
        temp_f3_2 = var_a3_2->unkC * temp_f12_2;
        var_a1_2->unk0 = temp_f3_2;
        temp_f2_2 = (var_a3_2->unk10 * temp_f5) + temp_f3_2;
        var_a1_2->unk0 = temp_f2_2;
        temp_f1_2 = (var_a3_2->unk14 * temp_f8) + temp_f2_2;
        var_a1_2->unk0 = temp_f1_2;
        var_a1_2->unk0 = (var_a3_2->unk18 * temp_f19) + temp_f1_2;
        temp_f3_3 = var_a3_2->unkC * temp_f16;
        var_a1_2->unk4 = temp_f3_3;
        temp_f2_3 = (var_a3_2->unk10 * temp_f13) + temp_f3_3;
        var_a1_2->unk4 = temp_f2_3;
        temp_f1_3 = (var_a3_2->unk14 * temp_f10) + temp_f2_3;
        var_a1_2->unk4 = temp_f1_3;
        var_a1_2->unk4 = (f32) ((var_a3_2->unk18 * temp_f4_2) + temp_f1_3);
        temp_f3_4 = var_a3_2->unkC * temp_f6;
        var_a1_2->unk8 = temp_f3_4;
        temp_f2_4 = (var_a3_2->unk10 * temp_f7) + temp_f3_4;
        var_a1_2->unk8 = temp_f2_4;
        temp_f1_4 = (var_a3_2->unk14 * temp_f9) + temp_f2_4;
        var_a1_2->unk8 = temp_f1_4;
        var_a1_2->unk8 = (f32) ((var_a3_2->unk18 * temp_f18) + temp_f1_4);
        temp_f3_5 = var_a3_2->unkC * temp_f17;
        var_a1_2->unkC = temp_f3_5;
        temp_f2_5 = (var_a3_2->unk10 * (second half of f64)) + temp_f3_5;
        var_a1_2->unkC = temp_f2_5;
        temp_f1_5 = (var_a3_2->unk14 * (bitwise f32) temp_f14_2) + temp_f2_5;
        var_a1_2->unkC = temp_f1_5;
        temp_f0_2 = (var_a3_2->unk18 * temp_f11) + temp_f1_5;
        var_a3_2 += 0x10;
        var_a1_2 += 0x10;
        var_a1_2->unk-4 = temp_f0_2;
        if (var_a1_2 != var_a4) {
            goto loop_12;
        }
        var_a4 += 0x40;
    } while (var_s0_2 != 4);
    spC = &sp110[0];
    sp4 = 4;
    glMap2f(temp_f12_2, 1.0f, 0xDB8, var_a1_2, (f32 *)4, 4);
    __iglooSetEnable(0xDB8, 1);
    var_s0_3 = 0;
    do {
        temp_s1->unkD8(3);
        var_s5_2 = 0;
loop_16:
        temp_f12_3 = (f32) var_s5_2;
        var_s5_2 += 1;
        glEvalCoord2f(temp_f12_3 * (1.0f / (f32) ((u64) (unksp228 << 0x20) >> 0x20)));
        if (var_s5_2 != (unksp228 + 1)) {
            goto loop_16;
        }
        var_s0_3 += 1;
        temp_s1->unkDC();
    } while (var_s0_3 != (var_s5 + 1));
    var_s0_4 = 0;
    do {
        temp_s1->unkD8(3);
        var_s5_3 = 0;
loop_20:
        glEvalCoord2f((f32) var_s0_4 * (1.0f / (f32) ((u64) (var_s6 << 0x20) >> 0x20)));
        var_s5_3 += 1;
        if (var_s5_3 != (temp_s8 + 1)) {
            goto loop_20;
        }
        var_s0_4 += 1;
        temp_s1->unkDC();
    } while (var_s0_4 != (var_s6 + 1));
    __iglooSetEnable(0xDB8, 0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x210, 0x214, 0x220, 0x224, 0x230, 0x234, 0x238, 0x23c, 0x240, 0x244, 0x248, 0x24c, 0x288, 0x28c], gap at: 0x258. */
void gl_i_rpatch(void *arg0, void *arg1, void *arg2, void *arg3) {
    s64 sp298;
    ? sp10;
    f32 *spC;
    s32 sp4;
    ? *var_a6_2;
    f32 *var_a2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f1_4;
    f32 temp_f1_5;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f3_3;
    f32 temp_f3_4;
    f32 temp_f3_5;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f8;
    f32 temp_f9;
    f64 temp_f12;
    f64 temp_f14_2;
    gl_wstate *temp_s0;
    s16 temp_a0;
    s16 temp_a3;
    s16 temp_a7;
    s32 temp_a0_2;
    s32 var_a3_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s5_4;
    s32 var_t0;
    s64 temp_a2;
    u64 var_s7;
    u64 var_s8;
    void *temp_v0;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;
    void *var_a3;
    void *var_a6;
    void *var_t2;
    void *var_v0;

    temp_a7 = gl_wstatep->unk2DD6;
    temp_s0 = gl_wstatep;
    if (temp_a7 >= 2) {
        var_s7 = temp_a7 - 1;
    } else {
        var_s7 = 1;
    }
    temp_a0 = gl_wstatep->unk2DD4;
    if (temp_a0 >= 2) {
        var_s8 = temp_a0 - 1;
    } else {
        var_s8 = 1;
    }
    temp_a3 = gl_wstatep->unk2DD2;
    temp_a2 = ((u32) temp_a3 / var_s8) + 1;
    M2C_TRAP_IF(var_s7 == 0);
    M2C_TRAP_IF(var_s8 == 0);
    sp298 = (s64) &gl_wstatep->unk2DC0;
    unksp228 = temp_a2 * var_s8;
    unksp218 = (((u32) gl_wstatep->unk2DD0 / var_s7) + 1) * var_s7;
    var_v0 = gl_findbasis(gl_wstatep->unk2DC8, 1e-45f, temp_a2, temp_a3);
    var_s5 = 0;
    var_t0 = 0;
    var_a3 = arg0;
    do {
        var_a0 = arg1;
        var_a1 = arg2;
        var_a6 = arg3;
        temp_f14 = var_v0->unk18;
        temp_f12 = var_v0->unk10;
        temp_f15 = var_v0->unkC;
        var_v0 += 0x10;
        var_s5 += 1;
        var_t2 = var_t0 + &sp10;
loop_8:
        temp_f1 = var_a0->unk30 * temp_f14;
        temp_f5 = var_a0->unk20 * (bitwise f32) temp_f12;
        temp_f4 = (var_a6->unk30 * temp_f14) + ((var_a6->unk20 * (bitwise f32) temp_f12) + ((var_a6->unk0 * temp_f15) + (var_a6->unk10 * (second half of f64))));
        temp_f2 = (var_a1->unk30 * temp_f14) + ((var_a1->unk20 * (bitwise f32) temp_f12) + ((var_a1->unk0 * temp_f15) + (var_a1->unk10 * (second half of f64))));
        temp_f7 = (var_a0->unk0 * temp_f15) + (var_a0->unk10 * (second half of f64));
        var_a0 += 4;
        temp_f0 = var_a3->unk30 * temp_f14;
        var_a1 += 4;
        temp_f3 = (var_a3->unk20 * (bitwise f32) temp_f12) + ((var_a3->unk0 * temp_f15) + (var_a3->unk10 * (second half of f64)));
        var_a6 += 4;
        var_t2 += 4;
        var_a3 += 4;
        var_t2->unkBC = temp_f4;
        var_t2->unk7C = temp_f2;
        var_t2->unk3C = (f32) (temp_f1 + (temp_f5 + temp_f7));
        var_t2->unk-4 = (f32) (temp_f0 + temp_f3);
        if (var_a3 != (arg0 + 0x10)) {
            goto loop_8;
        }
        var_t0 += 0x10;
        var_a3 = arg0;
    } while (var_s5 != 4);
    temp_v0 = gl_findbasis((s32) temp_f12, temp_f14, (s64) sp298->unkC, 1, sp298, var_a3);
    var_a6_2 = &sp10;
    var_a3_2 = 0;
    var_s5_2 = 0;
    var_a2 = &sp110[0] + 0x40;
    do {
        var_a1_2 = temp_v0;
        temp_f11 = var_a6_2->unkCC;
        temp_f14_2 = var_a6_2->unkC4;
        temp_f17 = var_a6_2->unkC0;
        temp_f18 = var_a6_2->unk8C;
        temp_f9 = var_a6_2->unk88;
        temp_f7_2 = var_a6_2->unk84;
        temp_f6 = var_a6_2->unk80;
        temp_f4_2 = var_a6_2->unk4C;
        temp_f10 = var_a6_2->unk48;
        temp_f13 = var_a6_2->unk44;
        temp_f16 = var_a6_2->unk40;
        temp_f19 = var_a6_2->unkC;
        temp_f8 = var_a6_2->unk8;
        temp_f5_2 = var_a6_2->unk4;
        temp_f12_2 = var_a6_2->unk0;
        var_a6_2 += 0x10;
        var_s5_2 += 1;
        temp_a0_2 = var_a3_2 * 4;
        var_a3_2 += 0x10;
        var_a0_2 = temp_a0_2 + &sp110[0];
loop_12:
        temp_f3_2 = var_a1_2->unkC * temp_f12_2;
        var_a0_2->unk0 = temp_f3_2;
        temp_f2_2 = (var_a1_2->unk10 * temp_f5_2) + temp_f3_2;
        var_a0_2->unk0 = temp_f2_2;
        temp_f1_2 = (var_a1_2->unk14 * temp_f8) + temp_f2_2;
        var_a0_2->unk0 = temp_f1_2;
        var_a0_2->unk0 = (f32) ((var_a1_2->unk18 * temp_f19) + temp_f1_2);
        temp_f3_3 = var_a1_2->unkC * temp_f16;
        var_a0_2->unk4 = temp_f3_3;
        temp_f2_3 = (var_a1_2->unk10 * temp_f13) + temp_f3_3;
        var_a0_2->unk4 = temp_f2_3;
        temp_f1_3 = (var_a1_2->unk14 * temp_f10) + temp_f2_3;
        var_a0_2->unk4 = temp_f1_3;
        var_a0_2->unk4 = (f32) ((var_a1_2->unk18 * temp_f4_2) + temp_f1_3);
        temp_f3_4 = var_a1_2->unkC * temp_f6;
        var_a0_2->unk8 = temp_f3_4;
        temp_f2_4 = (var_a1_2->unk10 * temp_f7_2) + temp_f3_4;
        var_a0_2->unk8 = temp_f2_4;
        temp_f1_4 = (var_a1_2->unk14 * temp_f9) + temp_f2_4;
        var_a0_2->unk8 = temp_f1_4;
        var_a0_2->unk8 = (f32) ((var_a1_2->unk18 * temp_f18) + temp_f1_4);
        temp_f3_5 = var_a1_2->unkC * temp_f17;
        var_a0_2->unkC = temp_f3_5;
        temp_f2_5 = (var_a1_2->unk10 * (second half of f64)) + temp_f3_5;
        var_a0_2->unkC = temp_f2_5;
        temp_f1_5 = (var_a1_2->unk14 * (bitwise f32) temp_f14_2) + temp_f2_5;
        var_a0_2->unkC = temp_f1_5;
        temp_f0_2 = (var_a1_2->unk18 * temp_f11) + temp_f1_5;
        var_a1_2 += 0x10;
        var_a0_2 += 0x10;
        var_a0_2->unk-4 = temp_f0_2;
        if (var_a0_2 != var_a2) {
            goto loop_12;
        }
        var_a2 += 0x40;
    } while (var_s5_2 != 4);
    spC = &sp110[0];
    sp4 = 4;
    glMap2f(temp_f12_2, 1.0f, 0xDB8, (f32 *)4, &sp110[0], 4);
    __iglooSetEnable(0xDB8, 1);
    var_s5_3 = 0;
    do {
        temp_s0->unkD8(3);
        var_s1 = 0;
loop_16:
        temp_f12_3 = (f32) var_s1;
        var_s1 += 1;
        glEvalCoord2f(temp_f12_3 * (1.0f / (f32) ((u64) (unksp218 << 0x20) >> 0x20)));
        if (var_s1 != (unksp218 + 1)) {
            goto loop_16;
        }
        var_s5_3 += 1;
        temp_s0->unkDC();
    } while (var_s5_3 != (var_s7 + 1));
    var_s5_4 = 0;
    do {
        temp_s0->unkD8(3);
        var_s1_2 = 0;
loop_20:
        glEvalCoord2f((f32) var_s5_4 * (1.0f / (f32) ((u64) (var_s8 << 0x20) >> 0x20)));
        var_s1_2 += 1;
        if (var_s1_2 != (unksp228 + 1)) {
            goto loop_20;
        }
        var_s5_4 += 1;
        temp_s0->unkDC();
    } while (var_s5_4 != (var_s8 + 1));
    __iglooSetEnable(0xDB8, 0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c, 0x30, 0x34], gap at: 0x10. */
void gl_c_rpatch(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    void *temp_v0;

    unksp8 = arg0;
    unksp10 = arg3;
    unksp20 = arg2;
    unksp18 = arg1;
    temp_v0 = gl_malloc(0x118, sub_0f030000.unk-62BC);
    if (temp_v0 == NULL) {
        return;
    }
    gl_ecallfunc(&sub_0f0f0000 + 0x6F80, &sub_0f0f0000 + 0x6F28, 1, temp_v0);
    bcopy(unksp8, temp_v0, 0x40);
    bcopy(unksp18, temp_v0 + 0x40, 0x40);
    bcopy(unksp20, temp_v0 + 0x80, 0x40);
    bcopy(unksp10, temp_v0 + 0xC0, 0x40);
    temp_v0->unk114 = 0;
    temp_v0->unk10A = 0;
    temp_v0->unk106 = 0;
    temp_v0->unk108 = 0;
    temp_v0->unk104 = 0;
    temp_v0->unk100 = 0;
    temp_v0->unk102 = 0;
    temp_v0->unk110 = -1;
    temp_v0->unk10C = -1;
}
