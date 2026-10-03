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
    /* 0x0100 */ char pad100[8];                    /* maybe part of screenState[3]? */
    /* 0x0108 */ s16 unk108;                        /* inferred */
    /* 0x010A */ char pad10A[0xA36];                /* maybe part of unk108[0x51C]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x2C0];               /* maybe part of currentVertex[0x2D]? */
    /* 0x2DC0 */ s32 unk2DC0;                       /* inferred */
    /* 0x2DC4 */ char pad2DC4[0x124];               /* maybe part of unk2DC0[0x4A]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? bcopy(s64, void *, s32, s64);                     /* extern */
? glEvalMesh1(?, ?, s16);                           /* extern */
? glMap1f(?, void *);                               /* extern */
? glMapGrid1f(s16);                                 /* extern */
? rcrv(f32, void *, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32); /* extern */
? rcrvn(s32, void *);                               /* extern */
extern ? sub_0f020000;
extern ? sub_0f0a0000;

void gl_g_crv(void *arg0) {
    rcrv(arg0->unk0, sp, arg0->unkC, arg0->unk10, arg0->unk14, 1.0f, arg0->unk18, arg0->unk1C, arg0->unk20, 1.0f, arg0->unk24, arg0->unk28, arg0->unk2C, 1.0f);
}

void freecurve(void *arg1) {
    __iglooFree(arg1);
}

void drawcurve(void *arg1) {
    f32 *var_a5;
    f32 *var_v0;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    s32 *temp_s5;
    s32 temp_v0;
    s32 var_a6;
    void *temp_a1;
    void *var_a1;
    void *var_a3;

    temp_s5 = &gl_wstatep->unk2DC0;
    gl_findbasis(gl_wstatep->unk2DC0, 1);
    __iglooSetEnable(0xD98, 1);
    var_a6 = 0;
    var_a5 = sp;
    var_a3 = M2C_ERROR(/* Read from unset register $v0 */);
    do {
        var_a1 = arg1;
        var_a6 += 1;
        var_v0 = var_a5;
        var_a5 += 0x10;
loop_2:
        temp_f3 = var_a1->unk8 * var_a3->unkC;
        *var_v0 = temp_f3;
        temp_f2 = (var_a3->unk10 * var_a1->unk18) + temp_f3;
        *var_v0 = temp_f2;
        temp_f1 = (var_a3->unk14 * var_a1->unk28) + temp_f2;
        *var_v0 = temp_f1;
        temp_f0 = (var_a3->unk18 * var_a1->unk38) + temp_f1;
        var_v0 += 4;
        var_a1 += 4;
        var_v0->unk-4 = temp_f0;
        if (var_a1 != (arg1 + 0x10)) {
            goto loop_2;
        }
        var_a3 += 0x10;
    } while (var_a6 != 4);
    glMap1f(0xD98, var_a1);
    glMapGrid1f(temp_s5->unk4);
    glEvalMesh1(0x1B01, 0, temp_s5->unk4);
    temp_a1 = *(void **)0x1004;
    if ((temp_a1 != NULL) && ((temp_v0 = temp_a1->unk30, (temp_v0 == 0x404)) || (temp_v0 == 0x400) || (temp_v0 == 0x401) || (temp_v0 == 0x408))) {
        glFlush();
    }
    __iglooSetEnable(0xD98, 0);
}

void gl_g_crvn(s32 arg0, s64 arg1) {
    s64 var_v0;
    s64 var_v0_2;
    void *temp_s1;
    void *var_a0;
    void *var_a0_2;

    temp_s1 = __iglooMalloc(arg0 * 4 * 4, 0xFFF91EF8);
    if (arg0 > 0) {
        var_a0 = temp_s1;
        var_v0 = subroutine_arg0;
        if (arg0 & 1) {
            var_a0->unk0 = (f32) var_v0->unk0;
            var_a0->unk4 = (f32) var_v0->unk4;
            var_v0 += 0xC;
            var_a0 += 0x10;
            var_a0->unk-4 = 1.0f;
            var_a0->unk-8 = (f32) var_v0->unk-4;
        }
        if ((arg0 >> 1) != 0) {
            var_a0_2 = var_a0;
            var_v0_2 = var_v0;
            do {
                var_a0_2->unk0 = (f32) var_v0_2->unk0;
                var_a0_2->unk4 = (f32) var_v0_2->unk4;
                var_a0_2->unk8 = (f32) var_v0_2->unk8;
                var_a0_2->unkC = 1.0f;
                var_a0_2->unk10 = (f32) var_v0_2->unkC;
                var_a0_2 += 0x20;
                var_a0_2->unk-C = (f32) var_v0_2->unk10;
                var_v0_2 += 0x18;
                var_a0_2->unk-4 = 1.0f;
                var_a0_2->unk-8 = (f32) var_v0_2->unk-4;
            } while (var_v0_2 != ((arg0 * 0xC) + subroutine_arg0));
        }
    }
    rcrvn(arg0, temp_s1);
    __iglooFree(temp_s1);
}

void freecurves(s64 arg1) {
    s64 sp10;
    s64 sp0;
    s64 var_ra;
    void *temp_a0;
    void *temp_a0_2;

    var_ra = saved_reg_ra;
    sp0 = arg1;
    temp_a0 = arg1->unkC;
    if (temp_a0 != NULL) {
        __iglooFree(temp_a0);
        var_ra = sp10;
    }
    temp_a0_2 = sp0->unk10;
    sp10 = var_ra;
    if (temp_a0_2 != NULL) {
        __iglooFree(temp_a0_2);
    }
    __iglooFree((void *) sp0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x88, 0x8c, 0x90, 0x94], gap at: 0x68. */
void drawcurves(void *arg1) {
    f32 *var_a4;
    f32 *var_v0;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    s32 *temp_s3;
    s32 temp_v0;
    s32 var_a5;
    s32 var_s0;
    s32 var_s4;
    void *temp_a1;
    void *var_a1;
    void *var_a3;
    void *var_s1;

    temp_s3 = &gl_wstatep->unk2DC0;
    gl_findbasis(gl_wstatep->unk2DC0, 1);
    var_s1 = arg1->unkC;
    __iglooSetEnable(0xD98, 1);
    var_s4 = arg1->unk8 - 3;
    if (var_s4 > 0) {
        var_s0 = var_s1 + 0x10;
loop_5:
        var_a5 = 0;
        var_a3 = M2C_ERROR(/* Read from unset register $v0 */);
        var_a4 = sp;
        do {
            var_a1 = var_s1;
            var_a5 += 1;
            var_v0 = var_a4;
            var_a4 += 0x10;
loop_7:
            temp_f3 = var_a1->unk0 * var_a3->unkC;
            *var_v0 = temp_f3;
            temp_f2 = (var_a3->unk10 * var_a1->unk10) + temp_f3;
            *var_v0 = temp_f2;
            temp_f1 = (var_a3->unk14 * var_a1->unk20) + temp_f2;
            *var_v0 = temp_f1;
            temp_f0 = (var_a3->unk18 * var_a1->unk30) + temp_f1;
            var_v0 += 4;
            var_a1 += 4;
            var_v0->unk-4 = temp_f0;
            if (var_a1 != var_s0) {
                goto loop_7;
            }
            var_a3 += 0x10;
        } while (var_a5 != 4);
        glMap1f(0xD98, var_a1);
        glMapGrid1f(temp_s3->unk4);
        glEvalMesh1(0x1B01, 0, temp_s3->unk4);
        temp_a1 = *(void **)0x1004;
        if (temp_a1 != NULL) {
            temp_v0 = temp_a1->unk30;
            switch (temp_v0) {                      /* irregular */
            case 0x401:
block_2:
                /* fallthrough */
            case 0x404:
            case 0x400:
                glFlush();
                break;
            case 0x408:
                goto block_2;
            }
        }
        var_s0 += 0x10;
        var_s4 -= 1;
        var_s1 += 0x10;
        if (var_s4 != 0) {
            goto loop_5;
        }
    }
    __iglooSetEnable(0xD98, 0);
}

void crv_multmatrix(f32 *arg0, f32 *arg1, f32 *arg2) {
    f32 *var_a0;
    f32 *var_a1;
    f32 *var_a4;
    f32 *var_a5;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    s32 var_a7;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a7 = 0;
    do {
        var_a5 = arg2;
        var_a7 += 1;
        var_a4 = var_a0;
        var_a0 += 0x10;
loop_2:
        temp_f3 = var_a5->unk0 * var_a1->unk0;
        *var_a4 = temp_f3;
        temp_f2 = (var_a1->unk4 * var_a5->unk10) + temp_f3;
        *var_a4 = temp_f2;
        temp_f1 = (var_a1->unk8 * var_a5->unk20) + temp_f2;
        *var_a4 = temp_f1;
        temp_f0 = (var_a1->unkC * var_a5->unk30) + temp_f1;
        var_a4 += 4;
        var_a5 += 4;
        var_a4->unk-4 = temp_f0;
        if (var_a5 != (arg2 + 0x10)) {
            goto loop_2;
        }
        var_a1 += 0x10;
    } while (var_a7 != 4);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xc0, 0xc4, 0xc8, 0xcc, 0xd0, 0xd4, 0x108, 0x10c], gap at: 0xe0. */
void gl_curveit(s64 arg0) {
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp80;
    f32 sp40;
    f32 temp_f22;
    f32 temp_f26;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 var_f22;
    f32 var_f26;
    f32 var_f6;
    f32 var_f7;
    gl_wstate *temp_s1;
    s64 var_s5;

    temp_s1 = gl_wstatep;
    if (temp_s1->unk108 != 2) {
        __iglooGetMatrix(0xBA6, &sp80);
    } else {
        __iglooGetMatrix(0xBA6, sp);
        __iglooGetMatrix(0xBA7, &sp40);
        crv_multmatrix(&sp80, sp, &sp40);
    }
    __iglooLoadMatrix(&sub_0f020000 + 0x7858);
    temp_s1->unkD8(3);
    var_f26 = spB8;
    var_f22 = spB0;
    glVertex3f(var_f22 / spBC, var_f26 / spBC, M2C_ERROR(/* Read from unset register $a2 */));
    var_s5 = arg0;
    var_f6 = spA8;
    if (arg0 > 0) {
        var_f7 = spA0;
        if (arg0 & 1) {
            var_f26 += var_f6;
            unkspF8 = arg0;
            var_f22 += var_f7;
            glVertex4f(var_f22, var_f26, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
            var_s5 -= 1;
            temp_f8 = sp90;
            temp_f4 = spAC + sp9C;
            var_f6 = spA8 + sp98;
            sp9C += sp8C;
            sp98 += sp88;
            temp_f5 = spA4 + sp94;
            sp94 += sp84;
            sp90 = sp80 + temp_f8;
            var_f7 = spA0 + temp_f8;
            spAC = temp_f4;
            spA8 = var_f6;
            spA4 = temp_f5;
            spA0 = var_f7;
        }
        if ((arg0 >> 1) != 0) {
            do {
                temp_f26 = var_f26 + var_f6;
                var_s5 -= 2;
                temp_f22 = var_f22 + var_f7;
                glVertex4f(temp_f22, temp_f26, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
                temp_f4_2 = spA0 + sp90;
                temp_f6 = spA8 + sp98;
                temp_f5_2 = spA4 + sp94;
                sp94 += sp84;
                sp90 += sp80;
                spAC += sp9C;
                spA8 = temp_f6;
                var_f26 = temp_f26 + temp_f6;
                spA4 = temp_f5_2;
                spA0 = temp_f4_2;
                sp98 += sp88;
                sp9C += sp8C;
                var_f22 = temp_f22 + temp_f4_2;
                glVertex4f(var_f22, var_f26, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
                temp_f8_2 = sp90;
                temp_f7 = sp94;
                temp_f4_3 = spAC + sp9C;
                var_f6 = temp_f6 + sp98;
                sp9C += sp8C;
                sp98 += sp88;
                sp94 = sp84 + temp_f7;
                sp90 = sp80 + temp_f8_2;
                spAC = temp_f4_3;
                var_f7 = spA0 + temp_f8_2;
                spA8 = var_f6;
                spA4 = temp_f5_2 + temp_f7;
                spA0 = var_f7;
            } while (var_s5 != 0);
        }
    }
    temp_s1->unkDC();
}

void gl_i_curveit(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_curveit(arg0);
}

void gl_c_curveit(s16 arg0) {
    if (saved_reg_gp->unk-5188 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7828);
        saved_reg_gp->unk-5188 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_curveit(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_curveit((s64) *arg0);
}

void gl_i_rcrv(void *arg0) {
    f32 *var_a0;
    f32 *var_a5;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    gl_wstate *temp_s1;
    s32 *temp_s5;
    s32 temp_v0;
    s32 var_a6;
    void *temp_a0;
    void *var_a3;
    void *var_v0;

    temp_s1 = gl_wstatep;
    temp_s5 = &temp_s1->unk2DC0;
    gl_findbasis(temp_s1->unk2DC0, 1);
    temp_s1->unkD8(1);
    temp_s1->unkDC();
    __iglooSetEnable(0xD98, 1);
    var_a6 = 0;
    var_a5 = sp;
    var_a3 = M2C_ERROR(/* Read from unset register $v0 */);
    do {
        var_v0 = arg0;
        var_a6 += 1;
        var_a0 = var_a5;
        var_a5 += 0x10;
loop_2:
        temp_f3 = var_v0->unk0 * var_a3->unkC;
        *var_a0 = temp_f3;
        temp_f2 = (var_a3->unk10 * var_v0->unk10) + temp_f3;
        *var_a0 = temp_f2;
        temp_f1 = (var_a3->unk14 * var_v0->unk20) + temp_f2;
        *var_a0 = temp_f1;
        temp_f0 = (var_a3->unk18 * var_v0->unk30) + temp_f1;
        var_a0 += 4;
        var_v0 += 4;
        var_a0->unk-4 = temp_f0;
        if (var_v0 != (arg0 + 0x10)) {
            goto loop_2;
        }
        var_a3 += 0x10;
    } while (var_a6 != 4);
    glMap1f(0xD98);
    glMapGrid1f(temp_s5->unk4);
    glEvalMesh1(0x1B01, 0, temp_s5->unk4);
    temp_a0 = *(void **)0x1004;
    if ((temp_a0 != NULL) && ((temp_v0 = temp_a0->unk30, (temp_v0 == 0x404)) || (temp_v0 == 0x400) || (temp_v0 == 0x401) || (temp_v0 == 0x408))) {
        glFlush();
    }
    __iglooSetEnable(0xD98, 0);
}

void gl_c_rcrv(void *arg0) {
    s64 sp18;
    s64 temp_v0;

    temp_v0 = __iglooCalloc(0x88);
    sp18 = temp_v0;
    gl_ecallfunc(&sub_0f0a0000 + 0x11C0, &sub_0f0a0000 + 0x118C, 1, temp_v0);
    sp18->unk8 = (f32) arg0->unk0;
    sp18->unkC = (f32) arg0->unk4;
    sp18->unk10 = (f32) arg0->unk8;
    sp18->unk14 = (f32) arg0->unkC;
    sp18->unk18 = (f32) arg0->unk10;
    sp18->unk1C = (f32) arg0->unk14;
    sp18->unk20 = (f32) arg0->unk18;
    sp18->unk24 = (f32) arg0->unk1C;
    sp18->unk28 = (f32) arg0->unk20;
    sp18->unk2C = (f32) arg0->unk24;
    sp18->unk30 = (f32) arg0->unk28;
    sp18->unk34 = (f32) arg0->unk2C;
    sp18->unk38 = (f32) arg0->unk30;
    sp18->unk3C = (f32) arg0->unk34;
    sp18->unk40 = (f32) arg0->unk38;
    sp18->unk0 = 0;
    sp18->unk4 = -1;
    sp18->unk44 = (f32) arg0->unk3C;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x48, 0x4c, 0x50, 0x54, 0x80, 0x84], gap at: 0x60. */
void gl_i_rcrvn(s64 arg0, void *arg1) {
    s64 sp40;
    f32 *var_a0;
    f32 *var_a4;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    gl_wstate *temp_s0;
    s32 *temp_s3;
    s32 temp_v0;
    s32 var_a5;
    s32 var_s0;
    s32 var_s4;
    void *temp_a0;
    void *var_a1;
    void *var_s1;
    void *var_v0;

    sp40 = arg0;
    temp_s0 = gl_wstatep;
    if (arg0 >= 4) {
        var_s1 = arg1;
        temp_s3 = &gl_wstatep->unk2DC0;
        gl_findbasis(gl_wstatep->unk2DC0, 1);
        temp_s0->unkD8(1);
        temp_s0->unkDC();
        __iglooSetEnable(0xD98, 1);
        var_s4 = sp40 - 3;
        if (sp40 >= 4) {
            var_s0 = var_s1 + 0x10;
loop_6:
            var_a5 = 0;
            var_a1 = M2C_ERROR(/* Read from unset register $v0 */);
            var_a4 = sp;
            do {
                var_v0 = var_s1;
                var_a5 += 1;
                var_a0 = var_a4;
                var_a4 += 0x10;
loop_8:
                temp_f3 = var_v0->unk0 * var_a1->unkC;
                *var_a0 = temp_f3;
                temp_f2 = (var_a1->unk10 * var_v0->unk10) + temp_f3;
                *var_a0 = temp_f2;
                temp_f1 = (var_a1->unk14 * var_v0->unk20) + temp_f2;
                *var_a0 = temp_f1;
                temp_f0 = (var_a1->unk18 * var_v0->unk30) + temp_f1;
                var_a0 += 4;
                var_v0 += 4;
                var_a0->unk-4 = temp_f0;
                if (var_v0 != var_s0) {
                    goto loop_8;
                }
                var_a1 += 0x10;
            } while (var_a5 != 4);
            glMap1f(0xD98, var_a1);
            glMapGrid1f(temp_s3->unk4);
            glEvalMesh1(0x1B01, 0, temp_s3->unk4);
            temp_a0 = *(void **)0x1004;
            if (temp_a0 != NULL) {
                temp_v0 = temp_a0->unk30;
                switch (temp_v0) {                  /* irregular */
                case 0x401:
block_3:
                    /* fallthrough */
                case 0x404:
                case 0x400:
                    glFlush();
                    break;
                case 0x408:
                    goto block_3;
                }
            }
            var_s0 += 0x10;
            var_s4 -= 1;
            var_s1 += 0x10;
            if (var_s4 != 0) {
                goto loop_6;
            }
        }
        __iglooSetEnable(0xD98, 0);
        return;
    }
    gl_ErrorHandler(0x3F, 2, sub_0f020000.unk7854);
}

void gl_c_rcrvn(s64 arg0, s64 arg1) {
    s64 sp18;
    s64 sp10;
    void *temp_v0;

    sp10 = arg1;
    sp18 = arg0;
    if (arg0 >= 4) {
        if (__iglooCalloc(0x14) == 0) {
            return;
        }
        gl_ecallfunc(&sub_0f0a0000 + 0x14DC, &sub_0f0a0000 + 0x1470, 1, subroutine_arg0);
        subroutine_arg0->unk8 = (s16) sp18;
        temp_v0 = __iglooMalloc(sp18 * 0x10);
        subroutine_arg2->unkC = temp_v0;
        bcopy(sp10, temp_v0, sp18 * 4 * 4, subroutine_arg2);
        subroutine_arg2->unk0 = 0;
        subroutine_arg2->unk4 = -1;
        return;
    }
    gl_ErrorHandler(0x3F, 2, sub_0f020000.unk7854);
}
