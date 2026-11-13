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
    /* 0x003C */ char pad3C[0x28];                  /* maybe part of currentNormal[4]? */
    /* 0x0064 */ void (*unk64)(void *, void *);     /* inferred */
    /* 0x0068 */ void (*unk68)(void *, void *);     /* inferred */
    /* 0x006C */ void (*unk6C)(void *, void *);     /* inferred */
    /* 0x0070 */ void (*unk70)(void *, void *);     /* inferred */
    /* 0x0074 */ void (*unk74)(void *, void *);     /* inferred */
    /* 0x0078 */ void (*unk78)(void *, void *);     /* inferred */
    /* 0x007C */ void (*unk7C)(void *, s32, s32, s32); /* inferred */
    /* 0x0080 */ void (*unk80)(void *, u32);        /* inferred */
    /* 0x0084 */ void (*unk84)(void *, s32);        /* inferred */
    /* 0x0088 */ void (*unk88)(f32, void *);        /* inferred */
    /* 0x008C */ char pad8C[0xC];                   /* maybe part of unk88[4]? */
    /* 0x0098 */ ? (*unk98)(gl_wstate *, f32 *);    /* inferred */
    /* 0x009C */ char pad9C[8];                     /* maybe part of unk98[3]? */
    /* 0x00A4 */ ? (*unkA4)(gl_wstate *, s16, s16, s16); /* inferred */
    /* 0x00A8 */ ? (*unkA8)(gl_wstate *, s32);      /* inferred */
    /* 0x00AC */ ? (*unkAC)(gl_wstate *, u16);      /* inferred */
    /* 0x00B0 */ ? (*unkB0)(gl_wstate *, ?);        /* inferred */
    /* 0x00B4 */ char padB4[0x14];                  /* maybe part of unkB0[6]? */
    /* 0x00C8 */ ? (*unkC8)(?, s32, u64, void *);   /* inferred */
    /* 0x00CC */ ? (*unkCC)(?, s64, s64);           /* inferred */
    /* 0x00D0 */ char padD0[0x10];                  /* maybe part of unkCC[5]? */
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
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glColor3fv(void *, ?);                            /* extern */
? glColor4fv(f32 *, ?);                             /* extern */
? glColorMaterial(f32, s32);                        /* extern */
? glIndexf(f32, s32, s32);                          /* extern */
? glIndexs(s64, ?);                                 /* extern */
? glMaterialfv(f32, f32, void *, s16);              /* extern */
extern ? sub_0f020000;
extern ? sub_0f0a0000;

void __iglooColor3f(void *arg0, void *arg1) {
    void *temp_s5;

    temp_s5 = *(void **)0x1004;
    arg0->unkC38 = (f32) arg1->unk8;
    arg0->unkC30 = (f64) arg1->unk0;
    arg0->unkC3C = 1.0f;
    if ((temp_s5->unk44 != 0) && (temp_s5->unk40 == 0)) {
        arg0->unkCC(1);
    }
    temp_s5->unk40 = 1;
    glColor3fv(arg0 + 0xC30, 1);
}

void __iglooColor3i(void *arg0, void *arg1) {
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a1;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a5;
    void *temp_s5;

    temp_a4 = arg1->unk8;
    temp_a3 = arg1->unk4;
    temp_s5 = *(void **)0x1004;
    temp_a5 = arg1->unk0;
    if (temp_a5 >= 0xFFU) {
        var_f6 = 1.0f;
    } else {
        var_f6 = (f32) ((u64) ((s64) temp_a5 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if (temp_a3 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if (temp_a4 < 0xFFU) {
        var_f7 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = 1.0f;
    arg0->unkC38 = var_f7;
    arg0->unkC34 = var_f5;
    arg0->unkC30 = var_f6;
    temp_a1 = temp_s5->unk44;
    if ((temp_a1 != 0) && (temp_s5->unk40 == 0)) {
        arg0->unkCC(1, temp_a1, temp_a3);
    }
    temp_s5->unk40 = 1;
    glColor3fv(arg0 + 0xC30);
}

void __iglooColor3s(void *arg0, void *arg1) {
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s16 temp_a3;
    s16 temp_a4;
    s16 temp_a5;
    s32 temp_a1;
    void *temp_s5;

    temp_a4 = arg1->unk4;
    temp_a3 = arg1->unk2;
    temp_s5 = *(void **)0x1004;
    temp_a5 = arg1->unk0;
    if ((u32) temp_a5 >= 0xFFU) {
        var_f6 = 1.0f;
    } else {
        var_f6 = (f32) ((u64) ((s64) temp_a5 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if ((u32) temp_a3 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if ((u32) temp_a4 < 0xFFU) {
        var_f7 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = 1.0f;
    arg0->unkC38 = var_f7;
    arg0->unkC34 = var_f5;
    arg0->unkC30 = var_f6;
    temp_a1 = temp_s5->unk44;
    if ((temp_a1 != 0) && (temp_s5->unk40 == 0)) {
        arg0->unkCC(1, temp_a1, temp_a3);
    }
    temp_s5->unk40 = 1;
    glColor3fv(arg0 + 0xC30);
}

void __iglooColor4f(void *arg0, void *arg1) {
    void *temp_s5;

    temp_s5 = *(void **)0x1004;
    arg0->unkC38 = (f64) arg1->unk8;
    arg0->unkC30 = (f64) arg1->unk0;
    if ((temp_s5->unk44 != 0) && (temp_s5->unk40 == 0)) {
        arg0->unkCC(1);
    }
    temp_s5->unk40 = 1;
    glColor4fv(arg0 + 0xC30, 1);
}

void __iglooColor4i(void *arg0, void *arg1) {
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a1;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a6;
    void *temp_s5;

    temp_a5 = arg1->unkC;
    temp_a3 = arg1->unk8;
    temp_a4 = arg1->unk4;
    temp_s5 = *(void **)0x1004;
    temp_a6 = arg1->unk0;
    if (temp_a6 >= 0xFFU) {
        var_f4 = 1.0f;
    } else {
        var_f4 = (f32) ((u64) ((s64) temp_a6 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if (temp_a4 < 0xFFU) {
        var_f7 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if (temp_a3 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    temp_a1 = temp_a5 < 0xFFU;
    var_f6 = 1.0f;
    if (temp_a1 != 0) {
        var_f6 = (f32) ((u64) ((s64) temp_a5 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = var_f6;
    arg0->unkC38 = var_f5;
    arg0->unkC34 = var_f7;
    arg0->unkC30 = var_f4;
    if ((temp_s5->unk44 != 0) && (temp_s5->unk40 == 0)) {
        arg0->unkCC(1, temp_a1, temp_a3);
    }
    temp_s5->unk40 = 1;
    glColor4fv(arg0 + 0xC30, 1);
}

void __iglooColor4s(void *arg0, void *arg1) {
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s16 temp_a3;
    s16 temp_a4;
    s16 temp_a5;
    s16 temp_a6;
    s32 temp_a1;
    void *temp_s5;

    temp_a5 = arg1->unk6;
    temp_a3 = arg1->unk4;
    temp_a4 = arg1->unk2;
    temp_s5 = *(void **)0x1004;
    temp_a6 = arg1->unk0;
    if ((u32) temp_a6 >= 0xFFU) {
        var_f4 = 1.0f;
    } else {
        var_f4 = (f32) ((u64) ((s64) temp_a6 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if ((u32) temp_a4 < 0xFFU) {
        var_f7 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if ((u32) temp_a3 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    temp_a1 = (u32) temp_a5 < 0xFFU;
    var_f6 = 1.0f;
    if (temp_a1 != 0) {
        var_f6 = (f32) ((u64) ((s64) temp_a5 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = var_f6;
    arg0->unkC38 = var_f5;
    arg0->unkC34 = var_f7;
    arg0->unkC30 = var_f4;
    if ((temp_s5->unk44 != 0) && (temp_s5->unk40 == 0)) {
        arg0->unkCC(1, temp_a1, temp_a3);
    }
    temp_s5->unk40 = 1;
    glColor4fv(arg0 + 0xC30, 1);
}

void __iglooCpack(void *arg0, u32 arg1) {
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a2;
    u32 temp_a0_3;
    u64 temp_a0;
    u64 temp_a0_2;
    u64 temp_a3;
    void *temp_s1;

    temp_s1 = *(void **)0x1004;
    temp_a3 = arg1 & 0xFF;
    if (temp_a3 >= 0xFFU) {
        var_f4 = 1.0f;
    } else {
        var_f4 = (f32) ((u64) (temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    temp_a0 = (arg1 >> 8) & 0xFF;
    var_f7 = 1.0f;
    if (temp_a0 < 0xFFU) {
        var_f7 = (f32) ((u64) (temp_a0 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    temp_a0_2 = (arg1 >> 0x10) & 0xFF;
    var_f5 = 1.0f;
    if (temp_a0_2 < 0xFFU) {
        var_f5 = (f32) ((u64) (temp_a0_2 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    temp_a0_3 = arg1 >> 0x18;
    var_f6 = 1.0f;
    if (temp_a0_3 < 0xFFU) {
        var_f6 = (f32) ((u64) ((s64) temp_a0_3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = var_f6;
    arg0->unkC38 = var_f5;
    arg0->unkC34 = var_f7;
    arg0->unkC30 = var_f4;
    if (temp_s1->unk44 != 0) {
        temp_a2 = temp_s1->unk40;
        if (temp_a2 == 0) {
            arg0->unkCC(1, temp_a2, temp_a3);
        }
    }
    temp_s1->unk40 = 1;
    glColor4fv(arg0 + 0xC30);
}

void __iglooRgbcolor(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f6;
    f32 var_f6_2;
    f32 var_f7;
    f32 var_f8;
    void *temp_s0;

    temp_s0 = *(void **)0x1004;
    if (arg1 & ~0xFF) {
        if (arg1 >= 0) {
            var_f5 = 1.0f;
        } else {
            var_f5 = 0.0f;
        }
        var_f7 = var_f5;
    } else {
        var_f7 = (f32) arg1 * 0.003921569f;
    }
    if (arg2 & ~0xFF) {
        var_f6 = 1.0f;
        if (arg2 < 0) {
            var_f6 = 0.0f;
        }
        var_f5_2 = var_f6;
    } else {
        var_f5_2 = (f32) arg2 * 0.003921569f;
    }
    if (arg3 & ~0xFF) {
        var_f8 = 1.0f;
        if (arg3 < 0) {
            var_f8 = 0.0f;
        }
        var_f6_2 = var_f8;
    } else {
        var_f6_2 = (f32) arg3 * 0.003921569f;
    }
    arg0->unkC3C = 1.0f;
    arg0->unkC38 = var_f6_2;
    arg0->unkC34 = var_f5_2;
    arg0->unkC30 = var_f7;
    if ((temp_s0->unk44 != 0) && (temp_s0->unk40 == 0)) {
        arg0->unkCC(1);
    }
    temp_s0->unk40 = 1;
    glColor3fv(arg0 + 0xC30);
}

void __iglooIndex(void *arg0, s32 arg1) {
    void *temp_s1;

    temp_s1 = *(void **)0x1004;
    if ((temp_s1->unk44 != 0) && (temp_s1->unk40 == 0)) {
        arg0->unkCC(1);
    }
    temp_s1->unk40 = 1;
    glIndexs((s64) ((arg1 << arg0->unk2F50) << 0x30) >> 0x30, 1);
}

void __iglooIndexf(f32 arg1, void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    void *temp_s5;

    temp_s5 = *(void **)0x1004;
    if ((temp_s5->unk44 != 0) && (temp_s5->unk40 == 0)) {
        arg0->unkCC(1);
    }
    temp_s5->unk40 = 1;
    temp_a1 = arg0->unk2F50;
    temp_a0 = ((s32) arg1 & 0xFFFF) << temp_a1;
    glIndexf((f32) temp_a0, temp_a0, temp_a1);
}

void __iglooSetLightColorProcsDefault(gl_wstate *arg0) {
    arg0->unk7C = __iglooRgbcolor;
    arg0->unk80 = __iglooCpack;
    arg0->unk70 = __iglooColor4f;
    arg0->unk6C = __iglooColor3i;
    arg0->unk88 = __iglooIndexf;
    arg0->unk84 = __iglooIndex;
    arg0->unk78 = __iglooColor4i;
    arg0->unk74 = __iglooColor4s;
    arg0->unk68 = __iglooColor3s;
    arg0->unk64 = __iglooColor3f;
    if (arg0->modelviewStack.stack[4][1][0] == 0) {
        __iglooSetColorProcsLight(__iglooColor3i);
    }
}

void __iglooStoreCol3f(void *arg0, void *arg1) {
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkC30 = (f32) arg1->unk0;
    arg0->unkC34 = (f32) arg1->unk4;
    arg0->unkC3C = (f32) (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9533C)->unk-4CCC;
    arg0->unkC38 = (f32) arg1->unk8;
}

void __iglooStoreCol3i(void *arg0, void *arg1) {
    f32 temp_f1;
    void *temp_at;

    (*(void **)0x1004)->unk40 = 1;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF95300;
    temp_f1 = temp_at->unk-4CA8;
    arg0->unkC30 = (f32) ((f32) arg1->unk0 / temp_f1);
    arg0->unkC34 = (f32) ((f32) arg1->unk4 / temp_f1);
    arg0->unkC3C = (f32) temp_at->unk-4CCC;
    arg0->unkC38 = (f32) ((f32) arg1->unk8 / temp_f1);
}

void __iglooStoreCol3s(void *arg0, void *arg1) {
    f32 temp_f1;
    void *temp_at;

    (*(void **)0x1004)->unk40 = 1;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF95294;
    temp_f1 = temp_at->unk-4CA8;
    arg0->unkC30 = (f32) ((f32) arg1->unk0 / temp_f1);
    arg0->unkC34 = (f32) ((f32) arg1->unk2 / temp_f1);
    arg0->unkC3C = (f32) temp_at->unk-4CCC;
    arg0->unkC38 = (f32) ((f32) arg1->unk4 / temp_f1);
}

void __iglooStoreCol4f(void *arg0, void *arg1) {
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkC30 = (f32) arg1->unk0;
    arg0->unkC34 = (f32) arg1->unk4;
    arg0->unkC38 = (f32) arg1->unk8;
    arg0->unkC3C = (f32) arg1->unkC;
}

void __iglooStoreCol4i(void *arg0, void *arg1) {
    f32 temp_f1;

    (*(void **)0x1004)->unk40 = 1;
    temp_f1 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF951F8)->unk-4CA8;
    arg0->unkC30 = (f32) ((f32) arg1->unk0 / temp_f1);
    arg0->unkC34 = (f32) ((f32) arg1->unk4 / temp_f1);
    arg0->unkC38 = (f32) ((f32) arg1->unk8 / temp_f1);
    arg0->unkC3C = (f32) ((f32) arg1->unkC / temp_f1);
}

void __iglooStoreCol4s(void *arg0, void *arg1) {
    f32 temp_f1;

    (*(void **)0x1004)->unk40 = 1;
    temp_f1 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9517C)->unk-4CA8;
    arg0->unkC30 = (f32) ((f32) arg1->unk0 / temp_f1);
    arg0->unkC34 = (f32) ((f32) arg1->unk2 / temp_f1);
    arg0->unkC38 = (f32) ((f32) arg1->unk4 / temp_f1);
    arg0->unkC3C = (f32) ((f32) arg1->unk6 / temp_f1);
}

void __iglooStoreCpack(void *arg0, u32 arg1) {
    f32 temp_f4;

    temp_f4 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF95100)->unk-4CA8;
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkC3C = (f32) ((f32) (arg1 >> 0x18) / temp_f4);
    arg0->unkC30 = (f32) ((f32) (arg1 & 0xFF) / temp_f4);
    arg0->unkC38 = (f32) ((f32) ((arg1 >> 0x10) & 0xFF) / temp_f4);
    arg0->unkC34 = (f32) ((f32) ((arg1 >> 8) & 0xFF) / temp_f4);
}

void __iglooStoreRgbcolor(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    f32 temp_f3;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF95078;
    temp_f3 = temp_at->unk-4CA8;
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkC3C = (f32) temp_at->unk-4CCC;
    arg0->unkC38 = (f32) ((f32) arg3 / temp_f3);
    arg0->unkC34 = (f32) ((f32) arg2 / temp_f3);
    arg0->unkC30 = (f32) ((f32) arg1 / temp_f3);
}

void __iglooStoreIndex(void *arg0, s32 arg1) {
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkBB8 = (f32) arg1;
}

void __iglooStoreIndexf(f32 arg1, void *arg0) {
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkBB8 = arg1;
}

void __iglooSetColorProcsToDepthCue(void *arg0) {
    arg0->unk7C = __iglooStoreRgbcolor;
    arg0->unk80 = __iglooStoreCpack;
    arg0->unk70 = __iglooStoreCol4f;
    arg0->unk6C = __iglooStoreCol3i;
    arg0->unk88 = __iglooStoreIndexf;
    arg0->unk84 = __iglooStoreIndex;
    arg0->unk78 = __iglooStoreCol4i;
    arg0->unk74 = __iglooStoreCol4s;
    arg0->unk68 = __iglooStoreCol3s;
    arg0->unk64 = __iglooStoreCol3f;
    if (arg0->unkC58 == 0) {
        __iglooSetColorProcsLight(__iglooStoreCol3i);
    }
}

void __iglooMat3f(void *arg0, void *arg1) {
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkC3C = 1.0f;
    arg0->unkC38 = (f32) arg1->unk8;
    arg0->unkC34 = (f32) arg1->unk4;
    arg0->unkC30 = (f32) arg1->unk0;
    glMaterialfv(arg0->unkC4C, arg0->unkC48, arg0 + 0xC30);
}

void __iglooMat3s(void *arg0, void *arg1) {
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s16 temp_a3;
    s16 temp_a4;
    s16 temp_a6;

    (*(void **)0x1004)->unk40 = 1;
    temp_a6 = arg1->unk0;
    temp_a4 = arg1->unk4;
    temp_a3 = arg1->unk2;
    if ((u32) temp_a6 >= 0xFFU) {
        var_f6 = 1.0f;
    } else {
        var_f6 = (f32) ((u64) ((s64) temp_a6 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if ((u32) temp_a3 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if ((u32) temp_a4 >= 0xFFU) {

    } else {
        var_f7 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = 1.0f;
    arg0->unkC38 = var_f7;
    arg0->unkC34 = var_f5;
    arg0->unkC30 = var_f6;
    glMaterialfv(arg0->unkC4C, arg0->unkC48, arg0 + 0xC30, temp_a3);
}

void __iglooMat3i(void *arg0, void *arg1) {
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a6;

    (*(void **)0x1004)->unk40 = 1;
    temp_a6 = arg1->unk0;
    temp_a4 = arg1->unk8;
    temp_a3 = arg1->unk4;
    if (temp_a6 >= 0xFFU) {
        var_f6 = 1.0f;
    } else {
        var_f6 = (f32) ((u64) ((s64) temp_a6 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if (temp_a3 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if (temp_a4 >= 0xFFU) {

    } else {
        var_f7 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = 1.0f;
    arg0->unkC38 = var_f7;
    arg0->unkC34 = var_f5;
    arg0->unkC30 = var_f6;
    glMaterialfv(arg0->unkC4C, arg0->unkC48, arg0 + 0xC30, (s16) temp_a3);
}

void __iglooMat4f(void *arg0, void *arg1) {
    (*(void **)0x1004)->unk40 = 1;
    arg0->unkC3C = (f32) arg1->unkC;
    arg0->unkC38 = (f32) arg1->unk8;
    arg0->unkC34 = (f32) arg1->unk4;
    arg0->unkC30 = (f32) arg1->unk0;
    glMaterialfv(arg0->unkC4C, arg0->unkC48, arg1);
}

void __iglooMat4s(void *arg0, void *arg1) {
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s16 temp_a3;
    s16 temp_a4;
    s16 temp_a5;
    s16 temp_a7;

    (*(void **)0x1004)->unk40 = 1;
    temp_a7 = arg1->unk0;
    temp_a5 = arg1->unk6;
    temp_a4 = arg1->unk4;
    temp_a3 = arg1->unk2;
    if ((u32) temp_a7 >= 0xFFU) {
        var_f4 = 1.0f;
    } else {
        var_f4 = (f32) ((u64) ((s64) temp_a7 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if ((u32) temp_a3 < 0xFFU) {
        var_f7 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if ((u32) temp_a4 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f6 = 1.0f;
    if ((u32) temp_a5 >= 0xFFU) {

    } else {
        var_f6 = (f32) ((u64) ((s64) temp_a5 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = var_f6;
    arg0->unkC38 = var_f5;
    arg0->unkC34 = var_f7;
    arg0->unkC30 = var_f4;
    glMaterialfv(arg0->unkC4C, arg0->unkC48, arg0 + 0xC30, temp_a3);
}

void __iglooMat4i(void *arg0, void *arg1) {
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a7;

    (*(void **)0x1004)->unk40 = 1;
    temp_a7 = arg1->unk0;
    temp_a5 = arg1->unkC;
    temp_a4 = arg1->unk8;
    temp_a3 = arg1->unk4;
    if (temp_a7 >= 0xFFU) {
        var_f4 = 1.0f;
    } else {
        var_f4 = (f32) ((u64) ((s64) temp_a7 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f7 = 1.0f;
    if (temp_a3 < 0xFFU) {
        var_f7 = (f32) ((u64) ((s64) temp_a3 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f5 = 1.0f;
    if (temp_a4 < 0xFFU) {
        var_f5 = (f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    var_f6 = 1.0f;
    if (temp_a5 >= 0xFFU) {

    } else {
        var_f6 = (f32) ((u64) ((s64) temp_a5 << 0x20) >> 0x20) * saved_reg_gp->unk-3C54;
    }
    arg0->unkC3C = var_f6;
    arg0->unkC38 = var_f5;
    arg0->unkC34 = var_f7;
    arg0->unkC30 = var_f4;
    glMaterialfv(arg0->unkC4C, arg0->unkC48, arg0 + 0xC30, (s16) temp_a3);
}

void __iglooMatCpack(void *arg0, u32 arg1) {
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    u32 temp_a0_3;
    u64 temp_a0;
    u64 temp_a0_2;
    u64 temp_a3;
    void *temp_gp;

    temp_a3 = arg1 & 0xFF;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF94A5C;
    (*(void **)0x1004)->unk40 = 1;
    if (temp_a3 >= 0xFFU) {
        var_f4 = 1.0f;
    } else {
        var_f4 = (f32) ((u64) (temp_a3 << 0x20) >> 0x20) * temp_gp->unk-3C54;
    }
    temp_a0 = (arg1 >> 8) & 0xFF;
    var_f7 = 1.0f;
    if (temp_a0 < 0xFFU) {
        var_f7 = (f32) ((u64) (temp_a0 << 0x20) >> 0x20) * temp_gp->unk-3C54;
    }
    temp_a0_2 = (arg1 >> 0x10) & 0xFF;
    var_f5 = 1.0f;
    if (temp_a0_2 < 0xFFU) {
        var_f5 = (f32) ((u64) (temp_a0_2 << 0x20) >> 0x20) * temp_gp->unk-3C54;
    }
    temp_a0_3 = arg1 >> 0x18;
    var_f6 = 1.0f;
    if (temp_a0_3 >= 0xFFU) {

    } else {
        var_f6 = (f32) ((u64) ((s64) temp_a0_3 << 0x20) >> 0x20) * temp_gp->unk-3C54;
    }
    arg0->unkC3C = var_f6;
    arg0->unkC38 = var_f5;
    arg0->unkC34 = var_f7;
    arg0->unkC30 = var_f4;
    glMaterialfv(arg0->unkC4C, arg0->unkC48, arg0 + 0xC30, (s16) temp_a3);
}

void __iglooMatRgbcolor(gl_wstate *arg0, s64 arg1, s32 arg2, s32 arg3) {
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f6;
    f32 var_f6_2;
    f32 var_f7;
    f32 var_f8;

    (*(void **)0x1004)->unk40 = 1;
    if (arg1 & ~0xFF) {
        var_f5 = 1.0f;
        if (arg1 < 0) {
            var_f5 = 0.0f;
        }
        var_f7 = var_f5;
    } else {
        var_f7 = (f32) arg1 * 0.003921569f;
    }
    if (arg2 & ~0xFF) {
        var_f6 = 1.0f;
        if (arg2 < 0) {
            var_f6 = 0.0f;
        }
        var_f5_2 = var_f6;
    } else {
        var_f5_2 = (f32) arg2 * 0.003921569f;
    }
    if (arg3 & ~0xFF) {
        var_f8 = 1.0f;
        if (arg3 < 0) {
            var_f8 = 0.0f;
        }
        var_f6_2 = var_f8;
    } else {
        var_f6_2 = (f32) arg3 * 0.003921569f;
    }
    arg0->modelviewStack.stack[3][3][1] = 1.0f;
    arg0->modelviewStack.stack[3][3][0] = var_f6_2;
    arg0->modelviewStack.stack[3][2][3] = var_f5_2;
    arg0->modelviewStack.stack[3][2][2] = var_f7;
    glMaterialfv(arg0->modelviewStack.stack[4][0][1], arg0->modelviewStack.stack[4][0][0], arg0 + 0xC30);
}

void __iglooSetRGBColorProcsToMaterial(void *arg0) {
    arg0->unk78 = __iglooMat4i;
    arg0->unk6C = __iglooMat3i;
    arg0->unk7C = __iglooMatRgbcolor;
    arg0->unk80 = __iglooMatCpack;
    arg0->unk74 = __iglooMat4s;
    arg0->unk70 = __iglooMat4f;
    arg0->unk68 = __iglooMat3s;
    arg0->unk64 = __iglooMat3f;
    if (arg0->unkC58 == 0) {
        __iglooSetColorProcsLight(__iglooMat3i);
    }
}

void empty_func(void) {

}

void __iglooSetRgbColorProcsToNull(void (*arg0)(void *, void *)) {
    void *temp_v0;

    temp_v0 = &sub_0f0a0000 - 0x1570;
    arg0->unk7C = temp_v0;
    arg0->unk80 = temp_v0;
    arg0->unk78 = temp_v0;
    arg0->unk74 = temp_v0;
    arg0->unk70 = temp_v0;
    arg0->unk6C = temp_v0;
    arg0->unk68 = temp_v0;
    arg0->unk64 = temp_v0;
    if (arg0->unkC58 == 0) {
        __iglooSetColorProcsLight(arg0);
    }
    arg0->unkC44 = 0;
}

void gl_i_cpack(s32 arg0) {
    gl_wstatep->unkA8(gl_wstatep, arg0);
}

void gl_c_cpack(s32 arg0) {
    if (saved_reg_gp->unk-51D8 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x72E0);
        saved_reg_gp->unk-51D8 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_cpack(s32 *arg0) {
    gl_wstatep->unkA8(gl_wstatep, *arg0);
}

void __igloolmcolor(s32 arg0, s32 arg1) {
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 0) {
        if ((bitwise s32) gl_wstatep->modelviewStack.stack[3][3][2] == arg0) {
            if (arg1 != 1) {
                return;
            }
            goto block_5;
        }
block_5:
        gl_wstatep->modelviewStack.stack[3][3][2] = (bitwise f32) arg0;
        __iglooSyncLmcolor(gl_wstatep, arg0);
    }
}

void __iglooSyncLmcolor(gl_wstate *arg0) {
    u64 sp8;
    s64 sp0;
    ? (*temp_t9)(?, s64, s64);
    ? (*temp_t9_2)(?, s32, u64, void *);
    f32 temp_a0;
    f32 var_a2;
    f32 var_v0;
    s32 temp_a1;
    s32 temp_v0;
    s32 var_a1;
    void *temp_a4;

    temp_a4 = *(void **)0x1004;
    if (arg0->modelviewStack.stack[0][1][0] == 0) {
        temp_a1 = arg0->modelviewStack.stack[2][3][3];
        sp8 = (u64) arg0->modelviewStack.stack[3][3][2];
        sp0 = (s64) temp_a4;
        if (temp_a1 != 1) {
            if (arg0->modelviewStack.stack[3][3][3] == 0) {
                temp_a4->unk44 = 0;
                arg0->unkC8(0, temp_a1, 1U, temp_a4);
                __iglooSetLightColorProcsDefault(arg0);
            }
            __iglooSetEnable(0xB57, 0);
            arg0->modelviewStack.stack[4][0][2] = 0.0f;
        } else {
            temp_v0 = __iglooGetGraphicsType(temp_a1, 1, temp_a4);
            if ((temp_v0 != 3) && (temp_v0 != 4)) {
                if (sp8 == 0) {
                    sp0->unk44 = 1;
                    temp_t9 = arg0->unkCC;
                    if (sp0->unk40 != 0) {
                        temp_t9(1, sp0, sp0);
                    } else {
                        temp_t9(0, sp0, sp0);
                    }
                    arg0->unkC8(1);
                } else {
                    sp0->unk44 = 0;
                    arg0->unkCC(0, 4, sp0);
                }
                goto block_15;
            }
            sp0->unk44 = 1;
            if (sp0->unk3C == 0) {
                temp_t9_2 = arg0->unkC8;
                if (sp8 != 0) {
                    temp_t9_2(0, (s32) sp0, sp8);
                } else {
                    temp_t9_2(1, (s32) sp0, sp8);
                }
block_15:
                if (((void *) sp0)->unk3C != 0) {
                    goto block_16;
                }
                if (sp8 != 6) {
                    __iglooSetLightColorProcsDefault(arg0, sp0);
                    glColor4fv(&arg0->modelviewStack.stack[3][2][2]);
                } else {
                    __iglooMatRgbcolor(arg0, sp0);
                }
                sp0->unk3D = 0;
                var_a1 = sp8 < 7U;
                if (var_a1 != 0) {
                    var_a1 = *((sp8 * 4) + &jtbl_0f022338);
                    var_a2 = 7.895e-42f;
                    switch (sp8) {                  /* switch 3 */
                    case 5:                         /* switch 3 */
block_36:
                        arg0->modelviewStack.stack[4][0][0] = var_a2;
                        break;
                    case 1:                         /* switch 3 */
                        arg0->modelviewStack.stack[4][0][0] = 7.892e-42f;
                        break;
                    case 2:                         /* switch 3 */
                        arg0->modelviewStack.stack[4][0][0] = 6.457e-42f;
                        break;
                    case 3:                         /* switch 3 */
                        var_a1 = 0x1201;
                        arg0->modelviewStack.stack[4][0][0] = 6.459e-42f;
                        break;
                    case 4:                         /* switch 3 */
                        var_a2 = 6.46e-42f;
                        goto block_36;
                    case 0:                         /* switch 3 */
                    case 6:                         /* switch 3 */
                        arg0->modelviewStack.stack[4][0][0] = 0.0f;
                        break;
                    }
                }
                if ((sp8 != 0) && (var_a1 = 6, (sp8 != 6))) {
                    arg0->unkC8(0, 6);
                    glColorMaterial(arg0->modelviewStack.stack[4][0][1], (bitwise s32) arg0->modelviewStack.stack[4][0][0]);
                    __iglooSetEnable(0xB57, 1);
                    arg0->modelviewStack.stack[4][0][2] = arg0->modelviewStack.stack[4][0][0];
                } else {
                    arg0->unkC8(1, var_a1);
                    __iglooSetEnable(0xB57, 0);
                    arg0->modelviewStack.stack[4][0][2] = 0.0f;
                }
            } else {
block_16:
                sp0->unk3D = 1;
                if (sp8 < 7U) {
                    var_v0 = 7.895e-42f;
                    switch (sp8) {                  /* switch 1 */
                    case 1:                         /* switch 1 */
                        var_v0 = 7.892e-42f;
                        arg0->modelviewStack.stack[4][0][0] = 7.892e-42f;
                        break;
                    case 2:                         /* switch 1 */
                        var_v0 = 6.457e-42f;
                        arg0->modelviewStack.stack[4][0][0] = 6.457e-42f;
                        break;
                    case 3:                         /* switch 1 */
                        var_v0 = 6.459e-42f;
                        arg0->modelviewStack.stack[4][0][0] = 6.459e-42f;
                        break;
                    case 4:                         /* switch 1 */
                        var_v0 = 6.46e-42f;
                        arg0->modelviewStack.stack[4][0][0] = 6.46e-42f;
                        break;
                    case 5:                         /* switch 1 */
                        arg0->modelviewStack.stack[4][0][0] = 7.895e-42f;
                        break;
                    case 0:                         /* switch 1 */
                    case 6:                         /* switch 1 */
                        var_v0 = 0.0f;
                        arg0->modelviewStack.stack[4][0][0] = 0.0f;
                        break;
                    }
                } else {
                    var_v0 = arg0->modelviewStack.stack[4][0][0];
                }
                temp_a0 = arg0->modelviewStack.stack[4][0][2];
                if (((bitwise s32) var_v0 == (bitwise s32) temp_a0) && ((bitwise s32) temp_a0 != 0)) {
                    __iglooSetLightColorProcsDefault(arg0, (s64) &jtbl_0f022358);
                } else {
                    switch (sp8) {                  /* switch 2 */
                    case 6:                         /* switch 2 */
                        __iglooMatRgbcolor(arg0, (s64) &jtbl_0f022358);
                        break;
                    case 1:                         /* switch 2 */
                    case 2:                         /* switch 2 */
                    case 3:                         /* switch 2 */
                    case 4:                         /* switch 2 */
                    case 5:                         /* switch 2 */
                        __iglooMatRgbcolor(arg0, (s64) &jtbl_0f022358);
                        break;
                    case 0:                         /* switch 2 */
                        __iglooSetLightColorProcsDefault(arg0, (s64) &jtbl_0f022358);
                        break;
                    }
                    arg0->unk98(arg0, &arg0->modelviewStack.stack[3][2][2]);
                }
            }
        }
    }
}

void gl_i_lmcolor(void) {
    __igloolmcolor(0);
}

void gl_c_lmcolor(s32 arg0) {
    if (saved_reg_gp->unk-51D4 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x72F0);
        saved_reg_gp->unk-51D4 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_lmcolor(s32 *arg0) {
    __igloolmcolor(*arg0, 0);
}

void gl_i_color(u16 arg0) {
    gl_wstatep->unkAC(gl_wstatep, arg0);
}

void gl_c_color(s16 arg0) {
    if (saved_reg_gp->unk-51D0 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7300);
        saved_reg_gp->unk-51D0 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_color(u16 *arg0) {
    gl_wstatep->unkAC(gl_wstatep, *arg0);
}

void gl_i_colorf(f32 arg0) {
    gl_wstatep->unkB0(gl_wstatep, 0xFFF94034);
}

void gl_c_colorf(f32 arg0) {
    if (saved_reg_gp->unk-51CC == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7310);
        saved_reg_gp->unk-51CC = 1;
    }
    gl_compile(4, sp);
}

void gl_n_colorf(f32 *arg0) {
    gl_wstatep->unkB0(gl_wstatep);
}

void gl_i_RGBcolor(s16 arg0, s16 arg1, s16 arg2) {
    gl_wstatep->unkA4(gl_wstatep, arg0, arg1, arg2);
}

void gl_c_RGBcolor(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-51C8 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f020000 + 0x7320);
        saved_reg_gp->unk-51C8 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_RGBcolor(void *arg0) {
    gl_wstatep->unkA4(gl_wstatep, arg0->unk0, arg0->unk2, arg0->unk4);
}

void gl_g_setshade(void) {
    __GLcolor();
}
