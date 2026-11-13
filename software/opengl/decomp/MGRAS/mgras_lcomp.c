typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0xB78];                 /* maybe part of gcState[0x2DF]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[7];                    /* maybe part of yInverted[8]? */
    /* 0x0CD4 */ f32 unkCD4;                        /* inferred */
    /* 0x0CD8 */ char padCD8[0x14];                 /* maybe part of unkCD4[6]? */
    /* 0x0CEC */ f32 unkCEC;                        /* inferred */
    /* 0x0CF0 */ char padCF0[0x14];                 /* maybe part of unkCEC[6]? */
    /* 0x0D04 */ u32 unkD04;                        /* inferred */
    /* 0x0D08 */ char padD08[8];                    /* maybe part of unkD04[3]? */
    /* 0x0D10 */ s32 unkD10;                        /* inferred */
    /* 0x0D14 */ char padD14[0x548];                /* maybe part of unkD10[0x153]? */
    /* 0x125C */ s32 unk125C;                       /* inferred */
    /* 0x1260 */ char pad1260[0x2C];                /* maybe part of unk125C[0xC]? */
    /* 0x128C */ void (*unk128C)(__GLcontext *, ...); /* inferred */
    /* 0x1290 */ char pad1290[0x18];                /* maybe part of unk128C[7]? */
    /* 0x12A8 */ s32 unk12A8;                       /* inferred */
    /* 0x12AC */ char pad12AC[0x35C];               /* maybe part of unk12A8[0xD8]? */
    /* 0x1608 */ void *unk1608;                     /* inferred */
    /* 0x160C */ char pad160C[0x1780];              /* maybe part of unk1608[0x5E1]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x4724];              /* maybe part of procs[0x16]? */
    /* 0x7844 */ s32 unk7844;                       /* inferred */
    /* 0x7848 */ char pad7848[0x34C];               /* maybe part of unk7844[0xD4]? */
    /* 0x7B94 */ __GLcolorBuffer *front;
    /* 0x7B98 */ __GLcolorBuffer *back;
    /* 0x7B9C */ __GLcolorBuffer frontBuffer;
    /* 0x7C78 */ __GLcolorBuffer backBuffer;
    /* 0x7D54 */ __GLcolorBuffer *auxBuffer;
    /* 0x7D58 */ __GLstencilBuffer stencilBuffer;
    /* 0x7DD0 */ __GLdepthBuffer depthBuffer;
    /* 0x7E54 */ __GLaccumBuffer accumBuffer;
    /* 0x7EC4 */ char pad7EC4[0x1C];
    /* 0x7EE0 */ s32 fd;
    /* 0x7EE4 */ s32 boardIndex;
    /* 0x7EE8 */ s32 zDepth;
    /* 0x7EEC */ s32 stencilDepth;
    /* 0x7EF0 */ s8 rendererString[0x28];
    /* 0x7F18 */ u32 swapInterval;
    /* 0x7F1C */ u8 hwFlags;
    /* 0x7F1D */ u8 haveZ;
    /* 0x7F1E */ u8 haveStencil;
    /* 0x7F1F */ u8 fastMode;
    /* 0x7F20 */ void (*primitiveProcs[0xA])(__GLcontext *);
} __GLcontext;                                      /* size = 0x7F48 */

extern ? sub_0dbf0000;

void __glMgrlc_CallList(u32 list) {
    s64 sp20;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s3;
    enum GLenum *temp_s3_2;
    enum GLenum *temp_v0;
    enum GLenum *var_a1;
    s32 *temp_a3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a4;
    s32 temp_v0_2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    sp0 = (s64) list;
    if (list != 0) {
        temp_a4 = *(s32 *)0x102C;
        temp_v0 = *(enum GLenum **)0x1028;
        if (temp_a4 == 0) {
            *(void *)0x1028 = (enum GLenum *) (temp_v0 - 4);
            *(void *)0x1020 = (s32) (*(s32 *)0x1020 + 1);
        } else {
            temp_a3 = (temp_a4 * 0xFFFFFFFC) + temp_v0;
            temp_a3->unk-4 = temp_a4;
            temp_a2 = *(void *)0x102C;
            __glsplc_AddIlist(temp_s3->unk128C, ((temp_a2 * 0xFFFFFFFC) + temp_v0) - 4, temp_a2, temp_a3, temp_a4);
            var_ra = sp20;
        }
        temp_v0_2 = temp_s3->unk12A8;
        if (temp_v0_2 & 4) {
            temp_s3->unk125C = 0;
            sp20 = var_ra;
            temp_s3->unk12A8 = (temp_v0_2 & ~4) | 1;
            __glsplc_AddIlist(__glMgrle_CallSetBegin, NULL);
        }
        temp_a2_2 = *(void *)0x1020;
        sp20 = var_ra;
        sp8 = (s64) temp_a2_2;
        if (temp_a2_2 <= 0) {
            __glSPDlistSpace(1);
            sp8 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        temp_s3_2 = *(void *)0x1028;
        __glsplc_AddIlist(__glMgrle_CallList, temp_s3_2);
        var_a1 = temp_s3_2 + 4;
        *temp_s3_2 = (enum GLenum) sp0;
        *(void *)0x1028 = var_a1;
        *(void *)0x1020 = (s32) (sp8 - 1);
        if (sp8 < 2) {
            __glSPDlistSpace(1, var_a1);
            var_a1 = *(void *)0x1028;
        }
        *(void *)0x102C = 0;
        *(void *)0x1028 = (enum GLenum *) (var_a1 + 4);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
        return;
    }
    __glsplc_InvalidValue();
}

void __glMgrlc_BindTextureEXT(enum GLenum target, u32 texture) {
    s64 sp38;
    s64 sp28;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s1;
    enum GLenum *temp_s2;
    enum GLenum *temp_v0;
    enum GLenum *var_a0_2;
    s32 *temp_a3;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_s1_2;
    s32 var_a0;
    s64 var_a2;
    s64 var_a3;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s1 = __glCurrentContext;
    sp0 = (s64) texture;
    if (target >= GL_TEXTURE_3D_EXT) {
        var_a2 = target > GL_TEXTURE_3D_EXT;
        if (var_a2 != 0) {
            var_a3 = target < 0x8134U;
            if (var_a3 == 0) {
                if (target > 0x8134U) {
                    if (target == 0x8135) {
                        goto block_8;
                    }
                    /* Duplicate return node #22. Try simplifying control flow for better match */
                    __glsplc_InvalidEnum(var_a2, var_a3);
                    return;
                }
                goto block_8;
            }
            var_a2 = target < 0x8095U;
            var_a3 = target > 0x8095U;
            if (var_a2 == 0) {
                if (var_a3 == 0) {
                    goto block_8;
                }
                /* Duplicate return node #22. Try simplifying control flow for better match */
                __glsplc_InvalidEnum(var_a2, var_a3);
                return;
            }
            if (target == GL_PROXY_TEXTURE_3D_EXT) {
                goto block_8;
            }
            /* Duplicate return node #22. Try simplifying control flow for better match */
            __glsplc_InvalidEnum(var_a2, var_a3);
            return;
        }
        goto block_11;
    }
    var_a2 = target < GL_PROXY_TEXTURE_1D;
    var_a3 = target > GL_PROXY_TEXTURE_1D;
    if (var_a2 == 0) {
        if (var_a3 == 0) {
            goto block_8;
        }
        if (target == GL_PROXY_TEXTURE_2D) {
block_8:
            sp8 = 0;
            goto block_12;
        }
        /* Duplicate return node #22. Try simplifying control flow for better match */
        __glsplc_InvalidEnum(var_a2, var_a3);
        return;
    }
    if (target >= GL_TEXTURE_2D) {
        if (target < 0xDE2U) {
            goto block_11;
        }
        /* Duplicate return node #22. Try simplifying control flow for better match */
        __glsplc_InvalidEnum(var_a2, var_a3);
        return;
    }
    if (target != GL_TEXTURE_1D) {
        __glsplc_InvalidEnum(var_a2, var_a3);
        return;
    }
block_11:
    sp8 = (s64) temp_s1->frontBuffer.buf.free;
block_12:
    temp_a4 = *(s32 *)0x102C;
    temp_v0 = *(enum GLenum **)0x1028;
    if (temp_a4 == 0) {
        *(void *)0x1028 = (enum GLenum *) (temp_v0 - 4);
        var_a0 = *(s32 *)0x1020 + 1;
        *(void *)0x1020 = var_a0;
    } else {
        temp_a3 = (temp_a4 * 0xFFFFFFFC) + temp_v0;
        temp_a3->unk-4 = temp_a4;
        temp_a2 = *(void *)0x102C;
        __glsplc_AddIlist(temp_s1->unk128C, ((temp_a2 * 0xFFFFFFFC) + temp_v0) - 4, temp_a2, temp_a3, temp_a4);
        var_a0 = *(void *)0x1020;
        var_ra = sp28;
    }
    if (var_a0 < 2) {
        sp28 = var_ra;
        __glSPDlistSpace(1);
    }
    temp_s2 = *(void *)0x1028;
    if (sp8 == 0) {
        sp28 = var_ra;
        sp38 = M2C_ERROR(/* Read from unset register $v0 */);
        temp_s1->unk12A8 |= 1;
    }
    sp38 = M2C_ERROR(/* Read from unset register $v0 */);
    sp28 = var_ra;
    temp_s1_2 = M2C_ERROR(/* Read from unset register $v0 */);
    __glsplc_AddIlist(__glMgrle_BindTextureEXT, temp_s2);
    var_a0_2 = temp_s2 + 8;
    temp_s2->unk0 = target;
    temp_s2->unk4 = (s32) sp0;
    *(void *)0x1028 = var_a0_2;
    *(void *)0x1020 = (s32) (temp_s1_2 - 2);
    if (temp_s1_2 < 3) {
        __glSPDlistSpace(1);
        var_a0_2 = *(void *)0x1028;
    }
    *(void *)0x102C = 0;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    *(void *)0x1028 = (enum GLenum *) (var_a0_2 + 4);
}

void __glMgrlc_Bitmap(s32 width, s32 height, f32 xorig, f32 yorig, f32 xmove, f32 ymove, u8 *bitmap) {
    s64 sp68;
    s64 sp58;
    s64 sp50;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    s64 sp0;
    __GLcontext *temp_t1;
    f32 var_f5;
    f32 var_f7;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_t3;
    s64 temp_t2;
    u32 var_s3;
    void *temp_a7;
    void *temp_v0;

    temp_t1 = __glCurrentContext;
    var_f5 = xmove;
    var_f7 = xorig;
    if ((width >= 0) && (height >= 0)) {
        temp_t3 = (s32) (width + 7) >> 3;
        temp_t2 = (temp_t3 * height) + 3;
        temp_s2 = temp_t2 >> 2;
        if (temp_s2 != 0) {
            if (((u32) temp_s2 < 0x201U) && (bitmap != NULL)) {
                var_s3 = *(u32 *)0x1020;
                temp_s5 = (temp_s2 + 1) & ~1;
                if (var_s3 < (u32) (temp_s5 + 0xA)) {
                    sp68 = (s64) temp_t1;
                    sp58 = temp_t2;
                    sp50 = (s64) temp_t3;
                    sp40 = (bitwise f64) ymove;
                    sp38 = (bitwise f64) var_f5;
                    sp30 = (bitwise f64) yorig;
                    sp28 = (bitwise f64) var_f7;
                    __glSPDlistSpace(0);
                    var_s3 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_f7 = second half of f64;
                    var_f5 = second half of f64;
                }
                temp_a7 = *(void **)0x1028;
                temp_a7->unk20 = temp_s2;
                temp_a7->unk1C = ymove;
                temp_a7->unk18 = var_f5;
                temp_a7->unk14 = yorig;
                temp_a7->unk10 = var_f7;
                temp_a7->unkC = height;
                temp_a7->unk8 = width;
                temp_a7->unk0 = 0x9420;
                temp_v0 = (temp_s5 * 4) + temp_a7;
                sp0 = (s64) temp_v0;
                temp_a7->unk4 = (s32) ((((8 - (temp_t3 & 7)) & 7 & 7) << 0xE) | 0xF);
                temp_a7->unk24 = (s32) ((temp_t2 & ~3) | 0x80000000);
                temp_v0->unk24 = 0;
                __glFillImage(temp_t1, width, height, 0x1900, 0x1A00, bitmap, temp_a7 + 0x28, temp_a7);
                *(void *)0x1020 = (u32) ((var_s3 - temp_s5) - 0xA);
                *(void *)0x1028 = (void *) (sp0 + 0x28);
                *(void *)0x102C = (s32) (*(s32 *)0x102C + temp_s5 + 0xA);
            } else {
                goto block_10;
            }
        } else {
block_10:
            __glsplc_Bitmap(width, height);
        }
        return;
    }
    __glsplc_InvalidValue();
}

void __glMgrlc_Begin(enum GLenum mode) {
    s64 sp18;
    s32 *temp_at;
    s32 temp_a1;
    s32 temp_v0;
    s32 var_a3;
    s32 var_v0;

    if (mode < 0xAU) {
        temp_v0 = __glCurrentContext->unk12A8;
        temp_a1 = temp_v0 | 4;
        if (temp_v0 & 4) {
            __glsplc_InvalidOperation(temp_a1);
            return;
        }
        __glCurrentContext->unk12A8 = temp_a1;
        if (mode < 0xAU) {
            var_a3 = 0x1F00;
            switch (*((mode * 4) + (&sub_0dbf0000 - 0x2FB0))) { /* unable to parse jump table */
            case 0:
                var_a3 = 0x1600;
                break;
            case 1:
                var_a3 = 0x1700;
                break;
            case 2:
                var_a3 = 0x1900;
                break;
            case 3:
                var_a3 = 0x1800;
                break;
            case 4:
                var_a3 = 0x1A00;
                break;
            case 5:
                var_a3 = 0x1B00;
                break;
            case 6:
                var_a3 = 0x1C00;
                break;
            case 7:
                var_a3 = 0x1D00;
                break;
            case 8:
                var_a3 = 0x1E00;
                break;
            }
        } else {
            var_a3 = sp0;
        }
        __glCurrentContext->unk125C |= (mode + 1) & 0xF;
        var_v0 = *(s32 *)0x1020;
        if (var_v0 <= 0) {
            sp18 = (s64) var_a3;
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, temp_a1);
        }
        temp_at = *(s32 **)0x1028;
        *temp_at = var_a3;
        *(void *)0x1028 = (s32 *) (temp_at + 4);
        *(void *)0x1020 = (s32) (var_v0 - 1);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 1);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_End(void) {
    s64 sp20;
    __GLcontext *temp_s0;
    s32 *temp_a3_2;
    s32 *temp_a5;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_s8;
    s32 var_v0;
    s64 var_ra;
    u32 temp_a3;

    var_ra = saved_reg_ra;
    temp_v0 = __glCurrentContext->unk125C & 0xF;
    temp_s0 = __glCurrentContext;
    if (temp_v0 != 0) {
        temp_a3 = temp_v0 - 1;
        if (temp_a3 < 0xAU) {
            switch (*((temp_a3 * 4) + (&sub_0dbf0000 - 0x2F88))) { /* unable to parse jump table */
            case 0:
                var_s8 = 0x2000;
                break;
            case 1:
                var_s8 = 0x2100;
                break;
            case 2:
                var_s8 = 0x2300;
                break;
            case 3:
                var_s8 = 0x2200;
                break;
            case 4:
                var_s8 = 0x2400;
                break;
            case 5:
                var_s8 = 0x2500;
                break;
            case 6:
                var_s8 = 0x2600;
                break;
            case 7:
                var_s8 = 0x2700;
                break;
            case 8:
                var_s8 = 0x2800;
                break;
            case 9:
                var_s8 = 0x2900;
                break;
            }
        } else {
            var_s8 = sp0;
        }
    } else {
        var_s8 = 0xCC00;
    }
    __glCurrentContext->unk125C = 0;
    if (*(s32 *)0x1020 <= 0) {
        __glSPDlistSpace(0);
        var_ra = sp20;
    }
    temp_a5 = *(s32 **)0x1028;
    *temp_a5 = var_s8;
    *(void *)0x1028 = (s32 *) (temp_a5 + 4);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    temp_a4 = *(s32 *)0x102C + 1;
    *(void *)0x102C = temp_a4;
    if (!(temp_s0->unk12A8 & 4)) {
        if (temp_a4 == 0) {
            sp20 = var_ra;
            *(void *)0x1028 = temp_a5;
            *(void *)0x1020 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        } else {
            temp_a3_2 = (temp_a4 * 0xFFFFFFFC) + temp_a5;
            *temp_a3_2 = temp_a4;
            sp20 = var_ra;
            temp_a2 = *(void *)0x102C;
            __glsplc_AddIlist(temp_s0->unk128C, (temp_a2 * 0xFFFFFFFC) + temp_a5, temp_a2, temp_a3_2, temp_a4, temp_a5);
        }
        temp_s0->unk12A8 |= 1;
        __glsplc_AddIlist(__glMgrle_CallUnsetBegin, NULL);
        var_v0 = *(void *)0x1020;
        if (var_v0 <= 0) {
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(1);
        }
        *(void *)0x102C = 0;
        *(void *)0x1020 = (s32) (var_v0 - 1);
        *(void *)0x1028 = (s32 *) (*(void *)0x1028 + 4);
    }
    temp_s0->unk12A8 &= ~4;
}

void __glMgrlc_ClearColor(f32 red, f32 green, f32 blue, f32 alpha) {
    f32 temp_f4;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    void *temp_v1;

    var_f24 = alpha;
    var_f22 = blue;
    var_f26 = red;
    var_f20 = green;
    temp_f4 = __glCurrentContext->unkCD4;
    if (red < 0.0f) {
        var_f26 = 0.0f;
    }
    if (temp_f4 < var_f26) {
        var_f26 = temp_f4;
    }
    if (var_f20 < 0.0f) {
        var_f20 = 0.0f;
    }
    if (temp_f4 < var_f20) {
        var_f20 = temp_f4;
    }
    if (var_f22 < 0.0f) {
        var_f22 = 0.0f;
    }
    if (temp_f4 < var_f22) {
        var_f22 = temp_f4;
    }
    if (var_f24 < 0.0f) {
        var_f24 = 0.0f;
    }
    if (temp_f4 < var_f24) {
        var_f24 = temp_f4;
    }
    if (*(s32 *)0x1020 < 5) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk8 = var_f20;
    temp_v1->unkC = var_f22;
    temp_v1->unk10 = var_f24;
    temp_v1->unk4 = var_f26;
    temp_v1->unk0 = 0xBA10;
    *(void *)0x1028 = (void *) (temp_v1 + 0x14);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
}

void __glMgrlc_ClearDepth(f64 depth) {
    f64 var_f28;
    void *temp_v1;

    var_f28 = depth;
    if (depth < GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) {
        var_f28 = GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U);
    }
    if (var_f28 > 1.0) {
        var_f28 = 1.0;
    }
    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0xBC04;
    temp_v1->unk4 = (s32) (var_f28 * 16777215.0);
    *(void *)0x1028 = (void *) (temp_v1 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_ClearIndex(f32 c) {
    f32 temp_f30;
    void *temp_a0;

    temp_f30 = (f32) ((s32) (c * 16.0f) & ((__glCurrentContext->unk7844 * 0x10) | 0xF)) * 0.0625f;
    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_a0 = *(void **)0x1028;
    temp_a0->unk4 = temp_f30;
    temp_a0->unk0 = 0xBD04;
    *(void *)0x1028 = (void *) (temp_a0 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_ClearStencil(s32 s) {
    s64 sp10;
    __GLcontext *temp_a3;
    void *temp_at;

    temp_a3 = __glCurrentContext;
    if (*(s32 *)0x1020 < 2) {
        sp10 = (s64) temp_a3;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0xBE04;
    temp_at->unk4 = (s32) (((1 << temp_a3->modes.stencilBits) - 1) & s);
    *(void *)0x1028 = (void *) (temp_at + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_ColorMaterial(enum GLenum face, enum GLenum mode) {
    s64 sp18;
    s32 var_a0;
    void *temp_at;

    switch (mode) {                                 /* switch 1; irregular */
    default:                                        /* switch 1 */
        __glsplc_InvalidEnum(0x1202, 0x1600);
        return;
    case GL_AMBIENT:                                /* switch 1 */
    case GL_DIFFUSE:                                /* switch 1 */
    case GL_SPECULAR:                               /* switch 1 */
    case GL_EMISSION:                               /* switch 1 */
        /* fallthrough */
    case GL_AMBIENT_AND_DIFFUSE:                    /* switch 1 */
        switch (face) {                             /* switch 2; irregular */
        default:                                    /* switch 2 */
            __glsplc_InvalidEnum(0x405, 0x408);
            return;
        case GL_FRONT_AND_BACK:                     /* switch 2 */
            var_a0 = 0xC104;
block_12:
            if (*(s32 *)0x1020 < 2) {
                sp18 = (s64) var_a0;
                __glSPDlistSpace(0, (enum GLenum *)0x405);
            }
            temp_at = *(void **)0x1028;
            temp_at->unk4 = mode;
            temp_at->unk0 = var_a0;
            *(void *)0x1028 = (void *) (temp_at + 8);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
            *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
            return;
        case GL_FRONT:                              /* switch 2 */
            var_a0 = 0xBF04;
            goto block_12;
        case GL_BACK:                               /* switch 2 */
            var_a0 = 0xC004;
            goto block_12;
        }
        break;
    }
}

void __glMgrlc_FrontFace(enum GLenum mode) {
    s32 temp_a1;
    void *temp_v1;

    if ((mode != GL_CW) && (mode != GL_CCW)) {
        __glsplc_InvalidEnum();
        return;
    }
    temp_a1 = *(s32 *)0x1020 < 2;
    if (temp_a1 != 0) {
        __glSPDlistSpace(0, (enum GLenum *) temp_a1);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = mode;
    temp_v1->unk0 = 0x5604;
    *(void *)0x1028 = (void *) (temp_v1 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_Lightf(enum GLenum light, enum GLenum pname, f32 param) {
    s64 sp20;
    f64 sp10;
    enum GLenum *var_a2;
    f32 var_f4;
    s64 temp_a3;
    s64 var_a0;
    void *temp_a2;

    var_f4 = param;
    if ((light >= GL_LIGHT0) && (var_a2 = (enum GLenum *)0x1205, ((light < 0x4008U) != 0))) {
        switch (pname) {                            /* irregular */
        default:
            var_a2 = (enum GLenum *)0x1209;
            if (pname != GL_LINEAR_ATTENUATION) {
                if (pname != GL_QUADRATIC_ATTENUATION) {
                    __glsplc_InvalidEnum(0x1209, 0x1206);
                    return;
                }
                var_a0 = 0x5508;
                goto block_10;
            }
            var_a0 = 0x5408;
block_10:
            temp_a3 = *(s32 *)0x1020 < 3;
            if (temp_a3 != 0) {
                sp10 = (bitwise f64) var_f4;
                sp20 = var_a0;
                __glSPDlistSpace(0, var_a2, temp_a3);
                var_f4 = (bitwise f32) sp10;
            }
            temp_a2 = *(void **)0x1028;
            temp_a2->unk8 = var_f4;
            temp_a2->unk4 = (s32) (light - 0x4000);
            temp_a2->unk0 = (s32) var_a0;
            *(void *)0x1028 = (void *) (temp_a2 + 0xC);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
            *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
            return;
        case GL_SPOT_EXPONENT:
            var_a0 = 0x5108;
            goto block_10;
        case GL_SPOT_CUTOFF:
            var_a0 = 0x5208;
            goto block_10;
        case GL_CONSTANT_ATTENUATION:
            var_a0 = 0x5308;
            goto block_10;
        }
    } else {
        __glsplc_InvalidEnum();
    }
}

void __glMgrlc_Lightfv(enum GLenum light, enum GLenum pname, f32 *params) {
    s64 sp18;
    s32 temp_a3_2;
    s32 temp_a3_4;
    s32 temp_a3_6;
    s32 var_a3;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_a4_3;
    u32 temp_v0;
    void *temp_a3_3;
    void *temp_a3_5;
    void *temp_a3_7;
    void *temp_a4_2;
    void *temp_a4_4;
    void *temp_at;
    void *temp_at_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;

    if (light >= GL_LIGHT0) {
        temp_v0 = pname - 0x1200;
        if (light < 0x4008U) {
            temp_a3 = temp_v0 < 0xAU;
            if (temp_a3 != 0) {
                switch (*((temp_v0 * 4) + (&sub_0dbf0000 - 0x2F60))) { /* unable to parse jump table */
                case 0:
                    temp_a3_2 = *(s32 *)0x1020 < 6;
                    if (temp_a3_2 != 0) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_2);
                    }
                    temp_a3_3 = *(void **)0x1028;
                    temp_a3_3->unk0 = 0x1214;
                    temp_a3_3->unk4 = (s32) (light - 0x4000);
                    temp_a3_3->unk8 = (f32) params->unk0;
                    temp_a3_3->unkC = (f32) params->unk4;
                    temp_a3_3->unk10 = (f32) params->unk8;
                    temp_a3_3->unk14 = (f32) params->unkC;
                    *(void *)0x1028 = (void *) (temp_a3_3 + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    *(void *)0x102C = (s32) (*(s32 *)0x102C + 6);
                    break;
                case 2:
                    if (*(void *)0x1020 < 6) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1 = *(void *)0x1028;
                    temp_v1->unk4 = (s32) (light - 0x4000);
                    temp_v1->unk0 = 0x1414;
                    temp_v1->unk8 = (f32) params->unk0;
                    temp_v1->unkC = (f32) params->unk4;
                    temp_v1->unk10 = (f32) params->unk8;
                    temp_v1->unk14 = (f32) params->unkC;
                    *(void *)0x1028 = (void *) (temp_v1 + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    var_a3 = *(void *)0x102C + 6;
block_12:
                    *(void *)0x102C = var_a3;
                    break;
                case 1:
                    if (*(void *)0x1020 < 6) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_at = *(void *)0x1028;
                    temp_at->unk0 = 0x1314;
                    temp_at->unk4 = (s32) (light - 0x4000);
                    temp_at->unk8 = (f32) params->unk0;
                    temp_at->unkC = (f32) params->unk4;
                    temp_at->unk10 = (f32) params->unk8;
                    temp_at->unk14 = (f32) params->unkC;
                    *(void *)0x1028 = (void *) (temp_at + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 6);
                    break;
                case 3:
                    temp_a4 = *(void *)0x1020 < 6;
                    if (temp_a4 != 0) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3, temp_a4);
                    }
                    temp_a4_2 = *(void *)0x1028;
                    temp_a4_2->unk4 = (s32) (light - 0x4000);
                    temp_a4_2->unk0 = 0x4F14;
                    temp_a4_2->unk8 = (f32) params->unk0;
                    temp_a4_2->unkC = (f32) params->unk4;
                    temp_a4_2->unk10 = (f32) params->unk8;
                    temp_a4_2->unk14 = (f32) params->unkC;
                    *(void *)0x1028 = (void *) (temp_a4_2 + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 6);
                    break;
                case 4:
                    temp_a3_4 = *(void *)0x1020 < 5;
                    if (temp_a3_4 != 0) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_4);
                    }
                    temp_a3_5 = *(void *)0x1028;
                    temp_a3_5->unk4 = (s32) (light - 0x4000);
                    temp_a3_5->unk0 = 0x5010;
                    temp_a3_5->unk8 = (f32) params->unk0;
                    temp_a3_5->unkC = (f32) params->unk4;
                    temp_a3_5->unk10 = (f32) params->unk8;
                    *(void *)0x1028 = (void *) (temp_a3_5 + 0x14);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 5);
                    break;
                case 5:
                    if (*(void *)0x1020 < 3) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1_2 = *(void *)0x1028;
                    temp_v1_2->unk4 = (s32) (light - 0x4000);
                    temp_v1_2->unk0 = 0x5108;
                    temp_v1_2->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_v1_2 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    var_a3 = *(void *)0x102C + 3;
                    goto block_12;
                case 6:
                    if (*(void *)0x1020 < 3) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_at_2 = *(void *)0x1028;
                    temp_at_2->unk4 = (s32) (light - 0x4000);
                    temp_at_2->unk0 = 0x5208;
                    temp_at_2->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_at_2 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                case 7:
                    temp_a4_3 = *(void *)0x1020 < 3;
                    if (temp_a4_3 != 0) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3, temp_a4_3);
                    }
                    temp_a4_4 = *(void *)0x1028;
                    temp_a4_4->unk4 = (s32) (light - 0x4000);
                    temp_a4_4->unk0 = 0x5308;
                    temp_a4_4->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_a4_4 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                case 8:
                    temp_a3_6 = *(void *)0x1020 < 3;
                    if (temp_a3_6 != 0) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_6);
                    }
                    temp_a3_7 = *(void *)0x1028;
                    temp_a3_7->unk4 = (s32) (light - 0x4000);
                    temp_a3_7->unk0 = 0x5408;
                    temp_a3_7->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_a3_7 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                case 9:
                    if (*(void *)0x1020 < 3) {
                        sp18 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1_3 = *(void *)0x1028;
                    temp_v1_3->unk4 = (s32) (light - 0x4000);
                    temp_v1_3->unk0 = 0x5508;
                    temp_v1_3->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_v1_3 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    var_a3 = *(void *)0x102C + 3;
                    goto block_12;
                }
                return;
            }
            __glsplc_InvalidEnum(temp_a3);
            return;
        }
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_Lighti(enum GLenum light, enum GLenum pname, s32 param) {
    s64 sp20;
    s64 sp18;
    enum GLenum *var_a3;
    s32 var_a2;
    s64 temp_a4;
    s64 var_a0;
    void *temp_a3;

    var_a2 = param;
    if ((light >= GL_LIGHT0) && (var_a3 = (enum GLenum *)0x1205, ((light < 0x4008U) != 0))) {
        switch (pname) {                            /* irregular */
        default:
            var_a3 = (enum GLenum *)0x1209;
            if (pname != GL_LINEAR_ATTENUATION) {
                if (pname != GL_QUADRATIC_ATTENUATION) {
                    __glsplc_InvalidEnum(0x1209, 0x1206);
                    return;
                }
                var_a0 = 0x5508;
                goto block_10;
            }
            var_a0 = 0x5408;
block_10:
            temp_a4 = *(s32 *)0x1020 < 3;
            if (temp_a4 != 0) {
                sp20 = (s64) var_a2;
                sp18 = var_a0;
                __glSPDlistSpace(0, var_a3, temp_a4);
                var_a2 = (s32) sp20;
            }
            temp_a3 = *(void **)0x1028;
            temp_a3->unk4 = (s32) (light - 0x4000);
            temp_a3->unk0 = (s32) var_a0;
            temp_a3->unk8 = (f32) var_a2;
            *(void *)0x1028 = (void *) (temp_a3 + 0xC);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
            *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
            return;
        case GL_SPOT_EXPONENT:
            var_a0 = 0x5108;
            goto block_10;
        case GL_SPOT_CUTOFF:
            var_a0 = 0x5208;
            goto block_10;
        case GL_CONSTANT_ATTENUATION:
            var_a0 = 0x5308;
            goto block_10;
        }
    } else {
        __glsplc_InvalidEnum();
    }
}

void __glMgrlc_Lightiv(enum GLenum light, enum GLenum pname, s32 *params) {
    s64 sp20;
    s64 sp18;
    __GLcontext *temp_a5;
    s32 temp_a3_10;
    s32 temp_a3_2;
    s32 temp_a3_4;
    s32 temp_a3_6;
    s32 temp_a3_8;
    s32 var_a4;
    s64 temp_a3;
    u32 temp_v0;
    void *temp_a3_11;
    void *temp_a3_3;
    void *temp_a3_5;
    void *temp_a3_7;
    void *temp_a3_9;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;

    temp_a5 = __glCurrentContext;
    if (light >= GL_LIGHT0) {
        temp_v0 = pname - 0x1200;
        if (light < 0x4008U) {
            temp_a3 = temp_v0 < 0xAU;
            if (temp_a3 != 0) {
                switch (*((temp_v0 * 4) + (&sub_0dbf0000 - 0x2F38))) { /* unable to parse jump table */
                case 0:
                    temp_a3_2 = *(s32 *)0x1020 < 6;
                    if (temp_a3_2 != 0) {
                        sp20 = (s64) params;
                        sp18 = (s64) temp_a5;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_2);
                    }
                    temp_a3_3 = *(void **)0x1028;
                    temp_a3_3->unk0 = 0x1214;
                    temp_a3_3->unk4 = (s32) (light - 0x4000);
                    temp_a3_3->unk8 = (f32) (temp_a5->unkCEC * (((f32) params->unk0 * 2.0f) + 1.0f));
                    temp_a3_3->unkC = (f32) (temp_a5->unkCEC * (((f32) params->unk4 * 2.0f) + 1.0f));
                    temp_a3_3->unk10 = (f32) (temp_a5->unkCEC * (((f32) params->unk8 * 2.0f) + 1.0f));
                    temp_a3_3->unk14 = (f32) (temp_a5->unkCEC * (((f32) params->unkC * 2.0f) + 1.0f));
                    *(void *)0x1028 = (void *) (temp_a3_3 + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    var_a4 = *(s32 *)0x102C + 6;
block_12:
                    *(void *)0x102C = var_a4;
                    break;
                case 2:
                    temp_a3_4 = *(void *)0x1020 < 6;
                    if (temp_a3_4 != 0) {
                        sp20 = (s64) params;
                        sp18 = (s64) temp_a5;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_4);
                    }
                    temp_a3_5 = *(void *)0x1028;
                    temp_a3_5->unk4 = (s32) (light - 0x4000);
                    temp_a3_5->unk0 = 0x1414;
                    temp_a3_5->unk8 = (f32) (temp_a5->unkCEC * (((f32) params->unk0 * 2.0f) + 1.0f));
                    temp_a3_5->unkC = (f32) (temp_a5->unkCEC * (((f32) params->unk4 * 2.0f) + 1.0f));
                    temp_a3_5->unk10 = (f32) (temp_a5->unkCEC * (((f32) params->unk8 * 2.0f) + 1.0f));
                    temp_a3_5->unk14 = (f32) (temp_a5->unkCEC * (((f32) params->unkC * 2.0f) + 1.0f));
                    *(void *)0x1028 = (void *) (temp_a3_5 + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    var_a4 = *(void *)0x102C + 6;
                    goto block_12;
                case 1:
                    temp_a3_6 = *(void *)0x1020 < 6;
                    if (temp_a3_6 != 0) {
                        sp20 = (s64) params;
                        sp18 = (s64) temp_a5;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_6);
                    }
                    temp_a3_7 = *(void *)0x1028;
                    temp_a3_7->unk0 = 0x1314;
                    temp_a3_7->unk4 = (s32) (light - 0x4000);
                    temp_a3_7->unk8 = (f32) (temp_a5->unkCEC * (((f32) params->unk0 * 2.0f) + 1.0f));
                    temp_a3_7->unkC = (f32) (temp_a5->unkCEC * (((f32) params->unk4 * 2.0f) + 1.0f));
                    temp_a3_7->unk10 = (f32) (temp_a5->unkCEC * (((f32) params->unk8 * 2.0f) + 1.0f));
                    temp_a3_7->unk14 = (f32) (temp_a5->unkCEC * (((f32) params->unkC * 2.0f) + 1.0f));
                    *(void *)0x1028 = (void *) (temp_a3_7 + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    var_a4 = *(void *)0x102C + 6;
                    goto block_12;
                case 3:
                    temp_a3_8 = *(void *)0x1020 < 6;
                    if (temp_a3_8 != 0) {
                        sp20 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_8);
                    }
                    temp_a3_9 = *(void *)0x1028;
                    temp_a3_9->unk4 = (s32) (light - 0x4000);
                    temp_a3_9->unk0 = 0x4F14;
                    temp_a3_9->unk8 = (f32) params->unk0;
                    temp_a3_9->unkC = (f32) params->unk4;
                    temp_a3_9->unk10 = (f32) params->unk8;
                    temp_a3_9->unk14 = (f32) params->unkC;
                    *(void *)0x1028 = (void *) (temp_a3_9 + 0x18);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 6);
                    var_a4 = *(void *)0x102C + 6;
                    goto block_12;
                case 4:
                    temp_a3_10 = *(void *)0x1020 < 5;
                    if (temp_a3_10 != 0) {
                        sp20 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3_10);
                    }
                    temp_a3_11 = *(void *)0x1028;
                    temp_a3_11->unk4 = (s32) (light - 0x4000);
                    temp_a3_11->unk0 = 0x5010;
                    temp_a3_11->unk8 = (f32) params->unk0;
                    temp_a3_11->unkC = (f32) params->unk4;
                    temp_a3_11->unk10 = (f32) params->unk8;
                    *(void *)0x1028 = (void *) (temp_a3_11 + 0x14);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
                    var_a4 = *(void *)0x102C + 5;
                    goto block_12;
                case 5:
                    if (*(void *)0x1020 < 3) {
                        sp20 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1 = *(void *)0x1028;
                    temp_v1->unk4 = (s32) (light - 0x4000);
                    temp_v1->unk0 = 0x5108;
                    temp_v1->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_v1 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                case 6:
                    if (*(void *)0x1020 < 3) {
                        sp20 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1_2 = *(void *)0x1028;
                    temp_v1_2->unk4 = (s32) (light - 0x4000);
                    temp_v1_2->unk0 = 0x5208;
                    temp_v1_2->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_v1_2 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                case 7:
                    if (*(void *)0x1020 < 3) {
                        sp20 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1_3 = *(void *)0x1028;
                    temp_v1_3->unk4 = (s32) (light - 0x4000);
                    temp_v1_3->unk0 = 0x5308;
                    temp_v1_3->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_v1_3 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                case 8:
                    if (*(void *)0x1020 < 3) {
                        sp20 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1_4 = *(void *)0x1028;
                    temp_v1_4->unk4 = (s32) (light - 0x4000);
                    temp_v1_4->unk0 = 0x5408;
                    temp_v1_4->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_v1_4 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                case 9:
                    if (*(void *)0x1020 < 3) {
                        sp20 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3);
                    }
                    temp_v1_5 = *(void *)0x1028;
                    temp_v1_5->unk4 = (s32) (light - 0x4000);
                    temp_v1_5->unk0 = 0x5508;
                    temp_v1_5->unk8 = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_v1_5 + 0xC);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
                    *(void *)0x102C = (s32) (*(void *)0x102C + 3);
                    break;
                }
                return;
            }
            __glsplc_InvalidEnum(temp_a3);
            return;
        }
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_LightModelf(enum GLenum pname, f32 param) {
    s64 sp18;
    f64 sp8;
    f32 var_f4;
    s32 temp_a1;
    s64 var_a0;
    void *temp_a1_2;

    var_f4 = param;
    if (pname != GL_LIGHT_MODEL_LOCAL_VIEWER) {
        if (pname != GL_LIGHT_MODEL_TWO_SIDE) {
            __glsplc_InvalidEnum();
            return;
        }
        var_a0 = 0x5904;
        goto block_4;
    }
    var_a0 = 0x5804;
block_4:
    temp_a1 = *(s32 *)0x1020 < 2;
    if (temp_a1 != 0) {
        sp8 = (bitwise f64) var_f4;
        sp18 = var_a0;
        __glSPDlistSpace(0, (enum GLenum *) temp_a1);
        var_f4 = (bitwise f32) sp8;
    }
    temp_a1_2 = *(void **)0x1028;
    temp_a1_2->unk4 = var_f4;
    temp_a1_2->unk0 = (s32) var_a0;
    *(void *)0x1028 = (void *) (temp_a1_2 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_LightModelfv(enum GLenum pname, f32 *params) {
    s64 sp18;
    s64 sp10;
    f32 *var_a1;
    s32 var_v0;
    s64 temp_a3;
    s64 var_a0;
    void *temp_a2;
    void *temp_a2_2;

    var_a1 = params;
    switch (pname) {                                /* irregular */
    default:
        __glsplc_InvalidEnum(0xB52);
        return;
    case GL_LIGHT_MODEL_TWO_SIDE:
        var_a0 = 0x5904;
block_5:
        temp_a3 = *(s32 *)0x1020 < 2;
        if (temp_a3 != 0) {
            sp18 = (s64) var_a1;
            sp10 = var_a0;
            __glSPDlistSpace(0, (enum GLenum *)0xB52, temp_a3);
            var_a1 = (f32 *) sp18;
        }
        temp_a2 = *(void **)0x1028;
        temp_a2->unk0 = (s32) var_a0;
        temp_a2->unk4 = (f32) *var_a1;
        *(void *)0x1028 = (void *) (temp_a2 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    case GL_LIGHT_MODEL_AMBIENT:
        var_v0 = *(void *)0x1020;
        if (var_v0 < 4) {
            sp18 = (s64) var_a1;
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0);
        }
        temp_a2_2 = *(void *)0x1028;
        temp_a2_2->unk0 = 0x570C;
        temp_a2_2->unk4 = (f32) var_a1->unk0;
        temp_a2_2->unk8 = (f32) var_a1->unk4;
        temp_a2_2->unkC = (f32) var_a1->unk8;
        *(void *)0x1028 = (void *) (temp_a2_2 + 0x10);
        *(void *)0x1020 = (s32) (var_v0 - 4);
        *(void *)0x102C = (s32) (*(void *)0x102C + 4);
        return;
    case GL_LIGHT_MODEL_LOCAL_VIEWER:
        var_a0 = 0x5804;
        goto block_5;
    }
}

void __glMgrlc_LightModeli(enum GLenum pname, s32 param) {
    s64 sp18;
    s64 sp10;
    s32 temp_a2;
    s32 var_a1;
    s64 var_a0;
    void *temp_a2_2;

    var_a1 = param;
    if (pname != GL_LIGHT_MODEL_LOCAL_VIEWER) {
        if (pname != GL_LIGHT_MODEL_TWO_SIDE) {
            __glsplc_InvalidEnum();
            return;
        }
        var_a0 = 0x5904;
        goto block_4;
    }
    var_a0 = 0x5804;
block_4:
    temp_a2 = *(s32 *)0x1020 < 2;
    if (temp_a2 != 0) {
        sp18 = (s64) var_a1;
        sp10 = var_a0;
        __glSPDlistSpace(0, (enum GLenum *) temp_a2);
        var_a1 = (s32) sp18;
    }
    temp_a2_2 = *(void **)0x1028;
    temp_a2_2->unk4 = var_a1;
    temp_a2_2->unk0 = (s32) var_a0;
    *(void *)0x1028 = (void *) (temp_a2_2 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_LightModeliv(enum GLenum pname, s32 *params) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    __GLcontext *temp_a4;
    s32 *var_a1;
    s64 temp_a3;
    s64 var_a0;
    void *temp_a3_2;
    void *temp_at;

    var_a1 = params;
    temp_a4 = __glCurrentContext;
    switch (pname) {                                /* irregular */
    default:
        __glsplc_InvalidEnum(0xB52);
        return;
    case GL_LIGHT_MODEL_TWO_SIDE:
        var_a0 = 0x5904;
block_5:
        temp_a3 = *(s32 *)0x1020 < 2;
        if (temp_a3 != 0) {
            sp20 = (s64) var_a1;
            sp10 = var_a0;
            __glSPDlistSpace(0, (enum GLenum *)0xB52, temp_a3, temp_a4);
            var_a1 = (s32 *) sp20;
        }
        temp_a3_2 = *(void **)0x1028;
        temp_a3_2->unk0 = (s32) var_a0;
        temp_a3_2->unk4 = (s32) *var_a1;
        *(void *)0x1028 = (void *) (temp_a3_2 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    case GL_LIGHT_MODEL_AMBIENT:
        if (*(void *)0x1020 < 4) {
            sp20 = (s64) var_a1;
            sp18 = (s64) temp_a4;
            __glSPDlistSpace(0);
            var_a1 = (s32 *) sp20;
        }
        temp_at = *(void *)0x1028;
        temp_at->unk0 = 0x570C;
        temp_at->unk4 = (bitwise s32) (temp_a4->unkCEC * (((f32) var_a1->unk0 * 2.0f) + 1.0f));
        temp_at->unk8 = (f32) (temp_a4->unkCEC * (((f32) var_a1->unk4 * 2.0f) + 1.0f));
        temp_at->unkC = (f32) (temp_a4->unkCEC * (((f32) var_a1->unk8 * 2.0f) + 1.0f));
        *(void *)0x1028 = (void *) (temp_at + 0x10);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
        *(void *)0x102C = (s32) (*(void *)0x102C + 4);
        return;
    case GL_LIGHT_MODEL_LOCAL_VIEWER:
        var_a0 = 0x5804;
        goto block_5;
    }
}

void __glMgrlc_Materialf(enum GLenum face, enum GLenum pname, f32 param) {
    f64 sp18;
    void *temp_a3;

    if ((face < GL_FRONT) || (face >= GL_LEFT)) {
        if (face != GL_FRONT_AND_BACK) {
            __glsplc_InvalidEnum(0x408, 0x1601);
            return;
        }
        goto block_5;
    }
block_5:
    if (pname == GL_SHININESS) {
        if (*(s32 *)0x1020 < 7) {
            sp18 = (bitwise f64) param;
            __glSPDlistSpace(0, (enum GLenum *)0x408, 0x1601);
        }
        temp_a3 = *(void **)0x1028;
        temp_a3->unk4 = face;
        temp_a3->unk8 = pname;
        temp_a3->unk18 = 0.0f;
        temp_a3->unk14 = 0.0f;
        temp_a3->unk10 = 0.0f;
        temp_a3->unkC = param;
        temp_a3->unk0 = 0x1118;
        *(void *)0x1028 = (void *) (temp_a3 + 0x1C);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 7);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 7);
        return;
    }
    __glsplc_InvalidEnum(0x408, 0x1601);
}

void __glMgrlc_Materialfv(enum GLenum face, enum GLenum pname, f32 *params) {
    s64 sp20;
    s32 var_v0;
    s64 var_a3;
    s64 var_a4;
    void *temp_at;

    if ((face < GL_FRONT) || (face >= GL_LEFT)) {
        var_a4 = pname < GL_EMISSION;
        if (face != GL_FRONT_AND_BACK) {
            __glsplc_InvalidEnum(0x408, var_a4);
            return;
        }
        goto block_5;
    }
    var_a4 = pname < GL_EMISSION;
block_5:
    if (var_a4 == 0) {
        var_a3 = pname < GL_AMBIENT_AND_DIFFUSE;
        if (pname < GL_SHININESS) {
            goto block_7;
        }
        var_a4 = pname < GL_COLOR_INDEXES;
        if (var_a3 == 0) {
            if ((var_a4 == 0) && (pname != GL_COLOR_INDEXES)) {
                /* Duplicate return node #14. Try simplifying control flow for better match */
                __glsplc_InvalidEnum(var_a3, var_a4);
                return;
            }
            goto block_7;
        }
        if (pname == GL_SHININESS) {
            goto block_7;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        __glsplc_InvalidEnum(var_a3, var_a4);
        return;
    }
    var_a3 = pname < GL_DIFFUSE;
    var_a4 = pname < GL_SPECULAR;
    if (var_a3 == 0) {
        if (var_a4 == 0) {
            if (pname == GL_SPECULAR) {
                goto block_7;
            }
            /* Duplicate return node #14. Try simplifying control flow for better match */
            __glsplc_InvalidEnum(var_a3, var_a4);
            return;
        }
        goto block_7;
    }
    if (pname != GL_AMBIENT) {
        __glsplc_InvalidEnum(var_a3, var_a4);
        return;
    }
block_7:
    var_v0 = *(s32 *)0x1020;
    if (var_v0 < 7) {
        sp20 = (s64) params;
        var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, var_a3, var_a4);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk8 = pname;
    temp_at->unk4 = face;
    temp_at->unk0 = 0x1118;
    temp_at->unkC = (f32) params->unk0;
    temp_at->unk10 = (f32) params->unk4;
    temp_at->unk14 = (f32) params->unk8;
    temp_at->unk18 = (f32) params->unkC;
    *(void *)0x1020 = (s32) (var_v0 - 7);
    *(void *)0x1028 = (void *) (temp_at + 0x1C);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 7);
}

void __glMgrlc_Materiali(enum GLenum face, enum GLenum pname, s32 param) {
    s64 sp20;
    void *temp_a4;

    if ((face < GL_FRONT) || (face >= GL_LEFT)) {
        if (face != GL_FRONT_AND_BACK) {
            __glsplc_InvalidEnum(0x408, 0x1601);
            return;
        }
        goto block_5;
    }
block_5:
    if (pname == GL_SHININESS) {
        if (*(s32 *)0x1020 < 7) {
            sp20 = (s64) param;
            __glSPDlistSpace(0, (enum GLenum *)0x408, 0x1601);
        }
        temp_a4 = *(void **)0x1028;
        temp_a4->unk4 = face;
        temp_a4->unk8 = pname;
        temp_a4->unk18 = 0.0f;
        temp_a4->unk14 = 0.0f;
        temp_a4->unk10 = 0.0f;
        temp_a4->unk0 = 0x1118;
        temp_a4->unkC = (f32) param;
        *(void *)0x1028 = (void *) (temp_a4 + 0x1C);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 7);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 7);
        return;
    }
    __glsplc_InvalidEnum(0x408, 0x1601);
}

void __glMgrlc_Materialiv(enum GLenum face, enum GLenum pname, s32 *params) {
    s64 sp28;
    s64 sp20;
    __GLcontext *temp_a5;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 var_a4_2;
    s64 var_a3;
    s64 var_a4;
    void *temp_a3_2;
    void *temp_a3_4;
    void *temp_at;

    temp_a5 = __glCurrentContext;
    if ((face < GL_FRONT) || (face >= GL_LEFT)) {
        var_a4 = pname < GL_EMISSION;
        if (face != GL_FRONT_AND_BACK) {
            __glsplc_InvalidEnum(0x408, var_a4, temp_a5);
            return;
        }
        goto block_5;
    }
    var_a4 = pname < GL_EMISSION;
block_5:
    if (var_a4 == 0) {
        if (pname >= GL_SHININESS) {
            var_a3 = pname < GL_COLOR_INDEXES;
            if (pname >= GL_AMBIENT_AND_DIFFUSE) {
                var_a4 = 0x1603;
                if (var_a3 == 0) {
                    if (pname == (enum GLenum) 0x1603) {
                        if (*(s32 *)0x1020 < 7) {
                            sp28 = (s64) params;
                            __glSPDlistSpace(0, (enum GLenum *) var_a3, 0x1603, temp_a5);
                        }
                        temp_at = *(void **)0x1028;
                        temp_at->unk8 = pname;
                        temp_at->unk4 = face;
                        temp_at->unk0 = 0x1118;
                        temp_at->unkC = (f32) params->unk0;
                        temp_at->unk10 = (f32) params->unk4;
                        temp_at->unk18 = 0.0f;
                        temp_at->unk14 = (f32) params->unk8;
                        *(void *)0x1028 = (void *) (temp_at + 0x1C);
                        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 7);
                        *(void *)0x102C = (s32) (*(s32 *)0x102C + 7);
                    } else {
                        goto block_16;
                    }
                } else {
                    goto block_18;
                }
            } else {
                if (pname == GL_SHININESS) {
                    temp_a3 = *(void *)0x1020 < 7;
                    if (temp_a3 != 0) {
                        sp28 = (s64) params;
                        __glSPDlistSpace(0, (enum GLenum *) temp_a3, var_a4, temp_a5);
                    }
                    temp_a3_2 = *(void *)0x1028;
                    temp_a3_2->unk8 = pname;
                    temp_a3_2->unk4 = face;
                    temp_a3_2->unk0 = 0x1118;
                    temp_a3_2->unk18 = 0.0f;
                    temp_a3_2->unk14 = 0.0f;
                    temp_a3_2->unk10 = 0.0f;
                    temp_a3_2->unkC = (f32) params->unk0;
                    *(void *)0x1028 = (void *) (temp_a3_2 + 0x1C);
                    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 7);
                    var_a4_2 = *(void *)0x102C + 7;
                    goto block_21;
                }
                goto block_16;
            }
        } else {
            goto block_18;
        }
    } else {
        var_a3 = pname < GL_DIFFUSE;
        var_a4 = pname < GL_SPECULAR;
        if (var_a3 == 0) {
            if ((var_a4 == 0) && (pname != GL_SPECULAR)) {
                goto block_16;
            }
            goto block_18;
        }
        if (pname == GL_AMBIENT) {
block_18:
            temp_a3_3 = *(void *)0x1020 < 7;
            if (temp_a3_3 != 0) {
                sp28 = (s64) params;
                sp20 = (s64) temp_a5;
                __glSPDlistSpace(0, (enum GLenum *) temp_a3_3, var_a4, temp_a5);
            }
            temp_a3_4 = *(void *)0x1028;
            temp_a3_4->unk8 = pname;
            temp_a3_4->unk4 = face;
            temp_a3_4->unk0 = 0x1118;
            temp_a3_4->unkC = (f32) (temp_a5->unkCEC * (((f32) params->unk0 * 2.0f) + 1.0f));
            temp_a3_4->unk10 = (f32) (temp_a5->unkCEC * (((f32) params->unk4 * 2.0f) + 1.0f));
            temp_a3_4->unk14 = (f32) (temp_a5->unkCEC * (((f32) params->unk8 * 2.0f) + 1.0f));
            temp_a3_4->unk18 = (f32) (temp_a5->unkCEC * (((f32) params->unkC * 2.0f) + 1.0f));
            *(void *)0x1028 = (void *) (temp_a3_4 + 0x1C);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 7);
            var_a4_2 = *(void *)0x102C + 7;
block_21:
            *(void *)0x102C = var_a4_2;
        } else {
block_16:
            __glsplc_InvalidEnum(var_a3, var_a4, temp_a5);
        }
    }
}

void __glMgrlc_EdgeFlag(u8 flag) {
    s32 *temp_at;
    s32 var_s8;

    if (flag != 1) {
        var_s8 = 0x1000;
    } else {
        var_s8 = 0xF00;
    }
    if (*(s32 *)0x1020 <= 0) {
        __glSPDlistSpace(0);
    }
    temp_at = *(s32 **)0x1028;
    *temp_at = var_s8;
    *(void *)0x1028 = (s32 *) (temp_at + 4);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 1);
}

void __glMgrlc_EdgeFlagv(u8 *flag) {
    s32 *temp_v1;
    s32 var_s8;

    if (*flag != 1) {
        var_s8 = 0x1000;
    } else {
        var_s8 = 0xF00;
    }
    if (*(s32 *)0x1020 <= 0) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(s32 **)0x1028;
    *temp_v1 = var_s8;
    *(void *)0x1028 = (s32 *) (temp_v1 + 4);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 1);
}

void __glMgrlc_StencilMask(u32 mask) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = mask;
    temp_v1->unk0 = 0x3A04;
    *(void *)0x1028 = (void *) (temp_v1 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_ColorMask(u8 red, u8 green, u8 blue, u8 alpha) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 var_a0;
    s64 var_a2;
    s64 var_a3;
    void *temp_at;

    if (green != 0) {
        var_a0 = 2;
        if (blue != 0) {
            goto block_2;
        }
        goto block_9;
    }
    var_a0 = 0;
    if (blue == 0) {
block_9:
        var_a2 = 0;
        if (alpha == 0) {
            goto block_10;
        }
        goto block_3;
    }
block_2:
    var_a2 = 4;
    if (alpha != 0) {
block_3:
        var_a3 = 8;
    } else {
block_10:
        var_a3 = 0;
    }
    if (*(s32 *)0x1020 < 2) {
        sp18 = var_a2;
        sp10 = var_a3;
        sp20 = var_a0;
        __glSPDlistSpace(0, (enum GLenum *) var_a2, var_a3);
        var_a2 = sp18;
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x3B04;
    temp_at->unk4 = (s32) ((red != 0) | var_a0 | (var_a2 | var_a3));
    *(void *)0x1028 = (void *) (temp_at + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_DepthMask(u8 flag) {
    void *temp_v1;

    if (*(s32 *)0x1020 < 2) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = (s32) flag;
    temp_v1->unk0 = 0x3C04;
    *(void *)0x1028 = (void *) (temp_v1 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_IndexMask(u32 mask) {
    s64 sp10;
    __GLcontext *temp_a3;
    void *temp_a1;

    temp_a3 = __glCurrentContext;
    if (*(s32 *)0x1020 < 2) {
        sp10 = (s64) temp_a3;
        __glSPDlistSpace(0);
    }
    temp_a1 = *(void **)0x1028;
    temp_a1->unk0 = 0x3D04;
    temp_a1->unk4 = (s32) (temp_a3->unk7844 & mask);
    *(void *)0x1028 = (void *) (temp_a1 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_AlphaFunc(enum GLenum func, f32 ref) {
    s32 temp_a1;
    s64 temp_a2;
    void *temp_a1_2;

    if (func >= GL_NEVER) {
        temp_a1 = func < 0x208U;
        if (temp_a1 != 0) {
            if (!(ref < 0.0f)) {
                if (__glCurrentContext->unkCD4 < ref) {

                }
            }
            temp_a2 = *(s32 *)0x1020 < 3;
            if (temp_a2 != 0) {
                __glSPDlistSpace(0, (enum GLenum *) temp_a1, temp_a2);
            }
            temp_a1_2 = *(void **)0x1028;
            temp_a1_2->unk0 = 0x3E08;
            temp_a1_2->unk4 = (s32) (func - 0x200);
            temp_a1_2->unk8 = (s32) ((s64) ((s64) (s32) ((f64) (second half of f64) + (second half of f64)) << 0x30) >> 0x30);
            *(void *)0x1028 = (void *) (temp_a1_2 + 0xC);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
            *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
            return;
        }
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_BlendEquationEXT(enum GLenum mode) {
    s32 temp_a1;
    void *temp_v1;

    if ((mode != GL_LOGIC_OP) && (mode != GL_FUNC_ADD_EXT) && (mode != GL_MIN_EXT) && (mode != GL_MAX_EXT) && (mode != GL_FUNC_SUBTRACT_EXT) && (mode != GL_FUNC_REVERSE_SUBTRACT_EXT)) {
        __glsplc_InvalidEnum(0x8007, 0x8008);
        return;
    }
    temp_a1 = *(s32 *)0x1020 < 2;
    if (temp_a1 != 0) {
        __glSPDlistSpace(0, (enum GLenum *) temp_a1);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = mode;
    temp_v1->unk0 = 0x6004;
    *(void *)0x1028 = (void *) (temp_v1 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_BlendFunc(enum GLenum sfactor, enum GLenum dfactor) {
    s64 temp_a2;
    s64 var_a2;
    s64 var_a3;
    void *temp_v1;

    if (sfactor >= GL_DST_COLOR) {
        if (sfactor < GL_ONE_MINUS_DST_COLOR) {
            goto block_2;
        }
        if (sfactor >= GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
            if (sfactor > GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                if (sfactor >= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                    if (sfactor <= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                        goto block_2;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glsplc_InvalidEnum();
                    return;
                }
                var_a2 = dfactor < GL_DST_ALPHA;
                if (sfactor != GL_CONSTANT_ALPHA_EXT) {
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glsplc_InvalidEnum();
                    return;
                }
                goto block_3;
            }
            goto block_2;
        }
        if (sfactor >= GL_SRC_ALPHA_SATURATE) {
            if (sfactor >= 0x309U) {
                if (sfactor == GL_CONSTANT_COLOR_EXT) {
                    goto block_2;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glsplc_InvalidEnum();
                return;
            }
            goto block_2;
        }
        var_a2 = dfactor < GL_DST_ALPHA;
        if (sfactor != GL_ONE_MINUS_DST_COLOR) {
            /* Duplicate return node #41. Try simplifying control flow for better match */
            __glsplc_InvalidEnum();
            return;
        }
        goto block_3;
    }
    if (sfactor >= GL_ONE_MINUS_SRC_ALPHA) {
        if (sfactor >= GL_DST_ALPHA) {
            if (sfactor >= GL_ONE_MINUS_DST_ALPHA) {
                if (sfactor < GL_DST_COLOR) {
                    goto block_2;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glsplc_InvalidEnum();
                return;
            }
            if (sfactor == GL_DST_ALPHA) {
                goto block_2;
            }
            /* Duplicate return node #41. Try simplifying control flow for better match */
            __glsplc_InvalidEnum();
            return;
        }
        goto block_2;
    }
    if ((sfactor != GL_ZERO) && (sfactor >= GL_LINE_LOOP)) {
        if (sfactor == GL_SRC_ALPHA) {
            goto block_2;
        }
        __glsplc_InvalidEnum();
        return;
    }
block_2:
    var_a2 = dfactor < GL_DST_ALPHA;
block_3:
    var_a3 = dfactor < GL_ONE_MINUS_DST_ALPHA;
    if (var_a2 == 0) {
        if (var_a3 == 0) {
            if (dfactor >= GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                if (dfactor <= GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                    goto block_7;
                }
                if (dfactor >= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                    if (dfactor <= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                        goto block_7;
                    }
                    /* Duplicate return node #43. Try simplifying control flow for better match */
                    __glsplc_InvalidEnum(var_a2, var_a3);
                    return;
                }
                var_a3 = 0x8003;
                if (dfactor != GL_CONSTANT_ALPHA_EXT) {
                    /* Duplicate return node #43. Try simplifying control flow for better match */
                    __glsplc_InvalidEnum(var_a2, var_a3);
                    return;
                }
                goto block_7;
            }
            var_a2 = dfactor < GL_CONSTANT_COLOR_EXT;
            var_a3 = dfactor > GL_CONSTANT_COLOR_EXT;
            if (var_a2 == 0) {
                if (var_a3 == 0) {
                    goto block_7;
                }
                /* Duplicate return node #43. Try simplifying control flow for better match */
                __glsplc_InvalidEnum(var_a2, var_a3);
                return;
            }
            if (dfactor != GL_ONE_MINUS_DST_ALPHA) {
                /* Duplicate return node #43. Try simplifying control flow for better match */
                __glsplc_InvalidEnum(var_a2, var_a3);
                return;
            }
            goto block_7;
        }
        goto block_7;
    }
    var_a3 = dfactor < GL_ONE_MINUS_SRC_COLOR;
    if (var_a3 == 0) {
        if (dfactor >= GL_SRC_ALPHA) {
            var_a2 = dfactor < GL_DST_ALPHA;
            if (dfactor >= GL_ONE_MINUS_SRC_ALPHA) {
                if (var_a2 != 0) {
                    goto block_7;
                }
                /* Duplicate return node #43. Try simplifying control flow for better match */
                __glsplc_InvalidEnum(var_a2, var_a3);
                return;
            }
            var_a3 = 0x302;
            if (dfactor == GL_SRC_ALPHA) {
                goto block_7;
            }
            /* Duplicate return node #43. Try simplifying control flow for better match */
            __glsplc_InvalidEnum(var_a2, var_a3);
            return;
        }
        goto block_7;
    }
    if (dfactor != GL_ZERO) {
        var_a2 = 0x300;
        if (dfactor >= GL_LINE_LOOP) {
            if (dfactor == GL_SRC_COLOR) {
                goto block_7;
            }
            __glsplc_InvalidEnum(var_a2, var_a3);
            return;
        }
    }
block_7:
    temp_a2 = *(s32 *)0x1020 < 3;
    if (temp_a2 != 0) {
        __glsplc_InvalidEnum(0, temp_a2, (__GLcontext *) var_a3);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = sfactor;
    temp_v1->unk8 = dfactor;
    temp_v1->unk0 = 0x3F08;
    *(void *)0x1028 = (void *) (temp_v1 + 0xC);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
}

void __glMgrlc_LogicOp(enum GLenum opcode) {
    s32 temp_a1;
    s32 var_v0;
    void *temp_a1_2;

    if ((opcode >= GL_CLEAR) && (opcode < 0x1510U)) {
        var_v0 = *(s32 *)0x1020;
        temp_a1 = var_v0 < 2;
        if (temp_a1 != 0) {
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, temp_a1);
        }
        temp_a1_2 = *(void **)0x1028;
        temp_a1_2->unk4 = (s32) (opcode - 0x1500);
        temp_a1_2->unk0 = 0x4004;
        *(void *)0x1028 = (void *) (temp_a1_2 + 8);
        *(void *)0x1020 = (s32) (var_v0 - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_StencilFunc(enum GLenum func, s32 ref, u32 mask) {
    s64 sp20;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_s0;
    s32 var_v0;
    void *temp_v1;

    var_s0 = ref;
    if ((func >= GL_NEVER) && (func < 0x208U)) {
        if (var_s0 < 0) {
            var_s0 = 0;
        }
        temp_a3 = var_s0 < 0x100;
        if (temp_a3 == 0) {
            var_s0 = 0xFF;
        }
        var_v0 = *(s32 *)0x1020;
        temp_a4 = var_v0 < 4;
        if (temp_a4 != 0) {
            sp20 = (s64) mask;
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, temp_a3, temp_a4);
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unkC = mask;
        temp_v1->unk8 = var_s0;
        temp_v1->unk4 = (s32) (func - 0x200);
        temp_v1->unk0 = 0x410C;
        *(void *)0x1028 = (void *) (temp_v1 + 0x10);
        *(void *)0x1020 = (s32) (var_v0 - 4);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_StencilOp(enum GLenum fail, enum GLenum zfail, enum GLenum zpass) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a3;
    s32 var_at;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a4;
    void *temp_a3_2;

    if ((fail != GL_ZERO) && ((fail < GL_KEEP) || (fail >= 0x1E04U))) {
        if (fail != GL_INVERT) {
            __glsplc_InvalidEnum(0x150A, 0x150A);
            return;
        }
        goto block_6;
    }
block_6:
    var_a4 = zpass < GL_KEEP;
    if (zfail != GL_ZERO) {
        if ((zfail < GL_KEEP) || (var_at = zpass < 0x1E04U, ((zfail < 0x1E04U) == 0))) {
            var_at = zpass < 0x1E04U;
            if (zfail != GL_INVERT) {
                __glsplc_InvalidEnum(0x150A, var_a4);
                return;
            }
        }
        goto block_12;
    }
    var_at = zpass < 0x1E04U;
block_12:
    if ((zpass != GL_ZERO) && ((var_a4 != 0) || (var_at == 0))) {
        if (zpass != GL_INVERT) {
            __glsplc_InvalidEnum(0x1E01, var_a4);
            return;
        }
        goto block_18;
    }
block_18:
    if (fail != GL_KEEP) {
        if (fail != GL_ZERO) {
            var_a4 = 0x1E02;
            if (fail != GL_REPLACE) {
                if (fail != (enum GLenum) 0x1E02) {
                    if (fail != GL_DECR) {
                        if (fail != GL_INVERT) {
                            __glsplc_InvalidEnum(0x1E01, 0x1E02);
                            return;
                        }
                        var_a0 = 5;
                        goto block_26;
                    }
                    var_a0 = 4;
                    goto block_26;
                }
                var_a0 = 3;
                goto block_26;
            }
            var_a0 = 2;
            goto block_26;
        }
        var_a0 = 1;
block_26:
        if (zfail != GL_KEEP) {
            goto block_27;
        }
        goto block_34;
    }
    var_a0 = 0;
    if (zfail == GL_KEEP) {
block_34:
        var_a1 = 0;
        if (zpass == GL_KEEP) {
            goto block_35;
        }
        goto block_38;
    }
block_27:
    var_a4 = 0x1E02;
    if (zfail != GL_ZERO) {
        if (zfail != GL_REPLACE) {
            if (zfail != (enum GLenum) 0x1E02) {
                if (zfail != GL_DECR) {
                    if (zfail != GL_INVERT) {
                        __glsplc_InvalidEnum(var_a0, 0x1E01, (__GLcontext *) 0x1E02);
                        return;
                    }
                    var_a1 = 5;
                    goto block_37;
                }
                var_a1 = 4;
                goto block_37;
            }
            var_a1 = 3;
            goto block_37;
        }
        var_a1 = 2;
        goto block_37;
    }
    var_a1 = 1;
block_37:
    if (zpass != GL_KEEP) {
block_38:
        if (zpass != GL_ZERO) {
            var_a4 = 0x1E02;
            if (zpass != GL_REPLACE) {
                if (zpass != (enum GLenum) 0x1E02) {
                    if (zpass != GL_DECR) {
                        if (zpass != GL_INVERT) {
                            __glsplc_InvalidEnum(var_a0, var_a1, (__GLcontext *)0x1E01, (s32) 0x1E02);
                            return;
                        }
                        var_a2 = 5;
                        goto block_45;
                    }
                    var_a2 = 4;
                    goto block_45;
                }
                var_a2 = 3;
                goto block_45;
            }
            var_a2 = 2;
            goto block_45;
        }
        var_a2 = 1;
        goto block_45;
    }
block_35:
    var_a2 = 0;
block_45:
    temp_a3 = *(s32 *)0x1020 < 4;
    if (temp_a3 != 0) {
        sp18 = var_a1;
        sp10 = var_a2;
        sp20 = var_a0;
        __glSPDlistSpace(0, (enum GLenum *) var_a1, var_a2, (__GLcontext *) temp_a3, var_a4);
        var_a1 = sp18;
    }
    temp_a3_2 = *(void **)0x1028;
    temp_a3_2->unkC = (s32) var_a2;
    temp_a3_2->unk8 = (s32) var_a1;
    temp_a3_2->unk4 = (s32) var_a0;
    temp_a3_2->unk0 = 0x420C;
    *(void *)0x1028 = (void *) (temp_a3_2 + 0x10);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
}

void __glMgrlc_DepthFunc(enum GLenum func) {
    s32 temp_a1;
    s32 var_v0;
    void *temp_a1_2;

    if ((func >= GL_NEVER) && (func < 0x208U)) {
        var_v0 = *(s32 *)0x1020;
        temp_a1 = var_v0 < 2;
        if (temp_a1 != 0) {
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, temp_a1);
        }
        temp_a1_2 = *(void **)0x1028;
        temp_a1_2->unk4 = (s32) (func - 0x200);
        temp_a1_2->unk0 = 0x4304;
        *(void *)0x1028 = (void *) (temp_a1_2 + 8);
        *(void *)0x1020 = (s32) (var_v0 - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_CullFace(enum GLenum mode) {
    s32 temp_a1;
    s32 var_v0;
    void *temp_v1;

    if ((mode >= GL_FRONT) && (mode < GL_AUX0)) {
        var_v0 = *(s32 *)0x1020;
        temp_a1 = var_v0 < 2;
        if (temp_a1 != 0) {
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, temp_a1);
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unk4 = mode;
        temp_v1->unk0 = 0x7404;
        *(void *)0x1028 = (void *) (temp_v1 + 8);
        *(void *)0x1020 = (s32) (var_v0 - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_PolygonMode(enum GLenum face, enum GLenum mode) {
    s32 var_v0;
    void *temp_v1;

    if (((face == GL_FRONT) || (face == GL_BACK) || (face == GL_FRONT_AND_BACK)) && (mode >= GL_POINT) && (mode < 0x1B03U)) {
        var_v0 = *(s32 *)0x1020;
        if (var_v0 < 3) {
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0);
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unk4 = face;
        temp_v1->unk8 = mode;
        temp_v1->unk0 = 0xA808;
        *(void *)0x1028 = (void *) (temp_v1 + 0xC);
        *(void *)0x1020 = (s32) (var_v0 - 3);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_LineStipple(s32 factor, u16 pattern) {
    s32 temp_v0;
    s32 temp_v1;
    s32 var_s1;
    s32 var_s5;
    s32 var_v0;
    u16 var_a1;
    u32 temp_a1;
    void *temp_v1_2;

    var_a1 = pattern;
    var_v0 = 0;
    var_s1 = factor;
    if (factor <= 0) {
        var_s1 = 1;
    }
    if (var_s1 >= 0x101) {
        var_s1 = 0x100;
    }
    var_s5 = 0;
loop_5:
    temp_a1 = var_a1 >> 1;
    if (var_a1 & 1) {
        var_s5 = ((1 << (0xF - var_v0)) | var_s5) & 0xFFFF;
    }
    temp_v1 = temp_a1 & 1;
    var_a1 = (u16) (temp_a1 >> 1);
    temp_v0 = (var_v0 + 1) & 0xFFFF;
    if (temp_v1 != 0) {
        var_s5 = ((1 << (0xF - temp_v0)) | var_s5) & 0xFFFF;
    }
    var_v0 = (temp_v0 + 1) & 0xFFFF;
    if (var_v0 != 0x10) {
        goto loop_5;
    }
    if (*(s32 *)0x1020 < 3) {
        __glSPDlistSpace(0, (enum GLenum *) var_a1);
    }
    temp_v1_2 = *(void **)0x1028;
    temp_v1_2->unk8 = var_s5;
    temp_v1_2->unk0 = 0x4608;
    temp_v1_2->unk4 = (s32) (var_s1 - 1);
    *(void *)0x1028 = (void *) (temp_v1_2 + 0xC);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
}

void __glMgrlc_LineWidth(f32 width) {
    f64 sp8;
    void *temp_v1;

    if (!(width <= 0.0f)) {
        if (*(s32 *)0x1020 < 2) {
            sp8 = (bitwise f64) width;
            __glSPDlistSpace(0);
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unk4 = width;
        temp_v1->unk0 = 0x4504;
        *(void *)0x1028 = (void *) (temp_v1 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    }
    __glsplc_InvalidValue();
}

void __glMgrlc_PointSize(f32 size) {
    f64 sp8;
    void *temp_v1;

    if (!(size <= 0.0f)) {
        if (*(s32 *)0x1020 < 2) {
            sp8 = (bitwise f64) size;
            __glSPDlistSpace(0);
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unk4 = size;
        temp_v1->unk0 = 0x4D04;
        *(void *)0x1028 = (void *) (temp_v1 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    }
    __glsplc_InvalidValue();
}

void __glMgrlc_ShadeModel(enum GLenum mode) {
    s32 temp_a1;
    s32 var_v0;
    void *temp_v1;

    if ((mode >= GL_FLAT) && (mode < 0x1D02U)) {
        var_v0 = *(s32 *)0x1020;
        temp_a1 = var_v0 < 2;
        if (temp_a1 != 0) {
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, temp_a1);
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unk4 = mode;
        temp_v1->unk0 = 0x4704;
        *(void *)0x1028 = (void *) (temp_v1 + 8);
        *(void *)0x1020 = (s32) (var_v0 - 2);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_DepthRange(f64 n, f64 f) {
    f64 sp10;
    void *temp_v1;

    if (*(s32 *)0x1020 < 3) {
        sp10 = f;
        __glSPDlistSpace(0);
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x4808;
    temp_v1->unk8 = (f32) f;
    temp_v1->unk4 = (f32) n;
    *(void *)0x1028 = (void *) (temp_v1 + 0xC);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 3);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 3);
}

void __glMgrlc_BlendColorEXT(f32 red, f32 green, f32 blue, f32 alpha) {
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
    temp_v1->unk0 = 0xD910;
    *(void *)0x1028 = (void *) (temp_v1 + 0x14);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
}

void __glMgrlc_Fogfv(enum GLenum pname, f32 *params) {
    s64 sp10;
    enum GLenum *var_a2;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_5;
    s32 temp_v0;
    s32 var_a3;
    s64 temp_a3;
    void *temp_a2_2;
    void *temp_a2_4;
    void *temp_a2_6;
    void *temp_at;
    void *temp_at_2;
    void *temp_at_3;

    switch (pname) {                                /* irregular */
    default:
        __glsplc_InvalidEnum(0xB64, 0xB63);
        return;
    case GL_FOG_MODE:
        var_a2 = (enum GLenum *)0x800;
        temp_v0 = (s64) params->unk0 << 0;
        if ((temp_v0 == 0x800) || (var_a2 = (enum GLenum *)0x2601, (temp_v0 == 0x801)) || (temp_v0 == 0x2601)) {
            temp_a3 = *(s32 *)0x1020 < 2;
            if (temp_a3 != 0) {
                sp10 = (s64) params;
                __glSPDlistSpace(0, var_a2, temp_a3);
            }
            temp_at = *(void **)0x1028;
            temp_at->unk0 = 0xB904;
            temp_at->unk4 = (s32) params->unk0;
            *(void *)0x1028 = (void *) (temp_at + 8);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
            *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x2601, 0xB63);
        return;
    case GL_FOG_COLOR:
        temp_a2 = *(void *)0x1020 < 5;
        if (temp_a2 != 0) {
            sp10 = (s64) params;
            __glSPDlistSpace(0, (enum GLenum *) temp_a2);
        }
        temp_a2_2 = *(void *)0x1028;
        temp_a2_2->unk0 = 0xB410;
        temp_a2_2->unk4 = (bitwise s32) params->unk0;
        temp_a2_2->unk8 = (f32) params->unk4;
        temp_a2_2->unkC = (f32) params->unk8;
        temp_a2_2->unk10 = (f32) params->unkC;
        *(void *)0x1028 = (void *) (temp_a2_2 + 0x14);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
        var_a3 = *(void *)0x102C + 5;
block_16:
        *(void *)0x102C = var_a3;
        break;
    case GL_FOG_DENSITY:
        if (!((f64) params->unk0 < (second half of f64))) {
            if (*(void *)0x1020 < 2) {
                sp10 = (s64) params;
                __glSPDlistSpace(0, (enum GLenum *)0xB64);
            }
            temp_at_2 = *(void *)0x1028;
            temp_at_2->unk0 = 0xB704;
            temp_at_2->unk4 = (bitwise s32) params->unk0;
            *(void *)0x1028 = (void *) (temp_at_2 + 8);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
            *(void *)0x102C = (s32) (*(void *)0x102C + 2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xB64);
            return;
        }
        break;
    case GL_FOG_END:
        temp_a2_3 = *(void *)0x1020 < 2;
        if (temp_a2_3 != 0) {
            sp10 = (s64) params;
            __glSPDlistSpace(0, (enum GLenum *) temp_a2_3, 0xB63);
        }
        temp_a2_4 = *(void *)0x1028;
        temp_a2_4->unk0 = 0xB604;
        temp_a2_4->unk4 = (bitwise s32) params->unk0;
        *(void *)0x1028 = (void *) (temp_a2_4 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        var_a3 = *(void *)0x102C + 2;
        goto block_16;
    case GL_FOG_START:
        if (*(void *)0x1020 < 2) {
            sp10 = (s64) params;
            __glSPDlistSpace(0, (enum GLenum *)0xB64, 0xB63);
        }
        temp_at_3 = *(void *)0x1028;
        temp_at_3->unk0 = 0xB504;
        temp_at_3->unk4 = (bitwise s32) params->unk0;
        *(void *)0x1028 = (void *) (temp_at_3 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(void *)0x102C + 2);
        break;
    case GL_FOG_INDEX:
        temp_a2_5 = *(void *)0x1020 < 2;
        if (temp_a2_5 != 0) {
            sp10 = (s64) params;
            __glSPDlistSpace(0, (enum GLenum *) temp_a2_5, 0xB63);
        }
        temp_a2_6 = *(void *)0x1028;
        temp_a2_6->unk0 = 0xB804;
        temp_a2_6->unk4 = (bitwise s32) params->unk0;
        *(void *)0x1028 = (void *) (temp_a2_6 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        var_a3 = *(void *)0x102C + 2;
        goto block_16;
    }
}

void __glMgrlc_Fogf(enum GLenum pname, f32 param) {
    f32 sp18;

    sp18 = param;
    if ((pname != GL_FOG_INDEX) && (pname != GL_FOG_DENSITY) && (pname != GL_FOG_START) && (pname != GL_FOG_END) && (pname != GL_FOG_MODE)) {
        __glsplc_InvalidEnum(0xB63);
        return;
    }
    __glMgrlc_Fogfv(pname, &sp18);
}

void __glMgrlc_Fogiv(enum GLenum pname, s32 *params) {
    s64 sp18;
    __GLcontext *temp_a4;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_v1;
    s64 temp_a3_2;
    void *temp_a2;
    void *temp_a2_3;
    void *temp_a3_3;
    void *temp_at;
    void *temp_at_2;
    void *temp_v1;

    temp_a4 = __glCurrentContext;
    switch (pname) {                                /* irregular */
    default:
        __glsplc_InvalidEnum(0xB64, 0xB63, temp_a4);
        return;
    case GL_FOG_MODE:
        temp_v0 = params->unk0;
        if ((temp_v0 == 0x800) || (temp_v0 == 0x801) || (temp_v0 == 0x2601)) {
            if (*(s32 *)0x1020 < 2) {
                __glSPDlistSpace(0, (enum GLenum *)0x800, 0x801, temp_a4);
            }
            temp_a2 = *(void **)0x1028;
            temp_a2->unk0 = 0xB904;
            temp_a2->unk4 = (s32) params->unk0;
            *(void *)0x1028 = (void *) (temp_a2 + 8);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
            *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x800, 0x801, temp_a4);
        return;
    case GL_FOG_COLOR:
        if (*(void *)0x1020 < 5) {
            sp18 = (s64) temp_a4;
            __glSPDlistSpace(0);
        }
        temp_at = *(void *)0x1028;
        temp_at->unk0 = 0xB410;
        temp_at->unk4 = (bitwise s32) (temp_a4->unkCEC * (((f32) params->unk0 * 2.0f) + 1.0f));
        temp_at->unk8 = (f32) (temp_a4->unkCEC * (((f32) params->unk4 * 2.0f) + 1.0f));
        temp_at->unkC = (f32) (temp_a4->unkCEC * (((f32) params->unk8 * 2.0f) + 1.0f));
        temp_at->unk10 = (f32) (temp_a4->unkCEC * (((f32) params->unkC * 2.0f) + 1.0f));
        *(void *)0x1028 = (void *) (temp_at + 0x14);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
        var_v1 = *(void *)0x102C + 5;
block_16:
        *(void *)0x102C = var_v1;
        break;
    case GL_FOG_DENSITY:
        temp_a3 = params->unk0;
        if (temp_a3 >= 0) {
            if (*(void *)0x1020 < 2) {
                __glSPDlistSpace(0, (enum GLenum *)0xB64, (s64) temp_a3, temp_a4);
            }
            temp_at_2 = *(void *)0x1028;
            temp_at_2->unk0 = 0xB704;
            temp_at_2->unk4 = (bitwise s32) (f32) params->unk0;
            *(void *)0x1028 = (void *) (temp_at_2 + 8);
            *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
            var_v1 = *(void *)0x102C + 2;
            goto block_16;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0xB64, temp_a3, temp_a4);
        return;
    case GL_FOG_END:
        temp_a3_2 = *(void *)0x1020 < 2;
        if (temp_a3_2 != 0) {
            __glSPDlistSpace(0, (enum GLenum *)0xB64, temp_a3_2, temp_a4);
        }
        temp_a3_3 = *(void *)0x1028;
        temp_a3_3->unk0 = 0xB604;
        temp_a3_3->unk4 = (bitwise s32) (f32) params->unk0;
        *(void *)0x1028 = (void *) (temp_a3_3 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(void *)0x102C + 2);
        break;
    case GL_FOG_START:
        temp_a2_2 = *(void *)0x1020 < 2;
        if (temp_a2_2 != 0) {
            __glSPDlistSpace(0, (enum GLenum *) temp_a2_2, 0xB63, temp_a4);
        }
        temp_a2_3 = *(void *)0x1028;
        temp_a2_3->unk0 = 0xB504;
        temp_a2_3->unk4 = (bitwise s32) (f32) params->unk0;
        *(void *)0x1028 = (void *) (temp_a2_3 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(void *)0x102C + 2);
        break;
    case GL_FOG_INDEX:
        if (*(void *)0x1020 < 2) {
            __glSPDlistSpace(0, (enum GLenum *)0xB64, 0xB63, temp_a4);
        }
        temp_v1 = *(void *)0x1028;
        temp_v1->unk0 = 0xB804;
        temp_v1->unk4 = (bitwise s32) (f32) params->unk0;
        *(void *)0x1028 = (void *) (temp_v1 + 8);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
        *(void *)0x102C = (s32) (*(void *)0x102C + 2);
        break;
    }
}

void __glMgrlc_Fogi(enum GLenum pname, s32 param) {
    s32 sp1C;

    sp1C = param;
    if ((pname != GL_FOG_INDEX) && (pname != GL_FOG_DENSITY) && (pname != GL_FOG_START) && (pname != GL_FOG_END) && (pname != GL_FOG_MODE)) {
        __glsplc_InvalidEnum(0xB63);
        return;
    }
    __glMgrlc_Fogiv(pname, &sp1C);
}

void __glMgrlc_PolygonOffsetEXT(f32 factor, f32 bias) {
    f64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp10 = (bitwise f64) bias;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = factor;
    temp_at->unkC = 1.0f;
    temp_at->unk8 = bias;
    temp_at->unk0 = 0xE70C;
    *(void *)0x1028 = (void *) (temp_at + 0x10);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
}

void __glMgrlc_PolygonOffset(f32 factor, f32 units) {
    f64 sp10;
    void *temp_at;

    if (*(s32 *)0x1020 < 4) {
        sp10 = (bitwise f64) units;
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk4 = factor;
    temp_at->unkC = 1.1f;
    temp_at->unk8 = units;
    temp_at->unk0 = 0xE70C;
    *(void *)0x1028 = (void *) (temp_at + 0x10);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
}

void __glMgrlc_Rectd(f64 x1, f64 y1, f64 x2, f64 y2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2d(second half of f64, y1);
    __glMgrlc_Vertex2d(second half of f64, y1);
    __glMgrlc_Vertex2d(second half of f64, y2);
    __glMgrlc_Vertex2d(second half of f64, y2);
    __glMgrlc_End();
}

void __glMgrlc_Rectdv(f64 *v1, f64 *v2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2d(v1->unk0, second half of f64);
    __glMgrlc_Vertex2d(v2->unk0, second half of f64);
    __glMgrlc_Vertex2d(v2->unk0, second half of f64);
    __glMgrlc_Vertex2d(v1->unk0, second half of f64);
    __glMgrlc_End();
}

void __glMgrlc_Rectf(f32 x1, f32 y1, f32 x2, f32 y2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2f(x1, y1);
    __glMgrlc_Vertex2f(x2, y1);
    __glMgrlc_Vertex2f(x2, y2);
    __glMgrlc_Vertex2f(x1, y2);
    __glMgrlc_End();
}

void __glMgrlc_Rectfv(f32 *v1, f32 *v2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2f(v1->unk0, v1->unk4);
    __glMgrlc_Vertex2f(v2->unk0, v1->unk4);
    __glMgrlc_Vertex2f(v2->unk0, v2->unk4);
    __glMgrlc_Vertex2f(v1->unk0, v2->unk4);
    __glMgrlc_End();
}

void __glMgrlc_Recti(s32 x1, s32 y1, s32 x2, s32 y2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2i(x1, y1);
    __glMgrlc_Vertex2i(x2, y1);
    __glMgrlc_Vertex2i(x2, y2);
    __glMgrlc_Vertex2i(x1, y2);
    __glMgrlc_End();
}

void __glMgrlc_Rectiv(s32 *v1, s32 *v2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2i(v1->unk0, v1->unk4);
    __glMgrlc_Vertex2i(v2->unk0, v1->unk4);
    __glMgrlc_Vertex2i(v2->unk0, v2->unk4);
    __glMgrlc_Vertex2i(v1->unk0, v2->unk4);
    __glMgrlc_End();
}

void __glMgrlc_Rects(s16 x1, s16 y1, s16 x2, s16 y2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2s(x1, y1);
    __glMgrlc_Vertex2s(x2, y1);
    __glMgrlc_Vertex2s(x2, y2);
    __glMgrlc_Vertex2s(x1, y2);
    __glMgrlc_End();
}

void __glMgrlc_Rectsv(s16 *v1, s16 *v2) {
    __glMgrlc_Begin(GL_POLYGON);
    __glMgrlc_Vertex2s(v1->unk0, v1->unk2);
    __glMgrlc_Vertex2s(v2->unk0, v1->unk2);
    __glMgrlc_Vertex2s(v2->unk0, v2->unk2);
    __glMgrlc_Vertex2s(v1->unk0, v2->unk2);
    __glMgrlc_End();
}

void __glMgrlc_ClipPlane(enum GLenum plane, f64 *equation) {
    s64 sp18;
    s32 temp_a2;
    s32 var_v0;
    void *temp_v1;

    if ((plane >= GL_CLIP_PLANE0) && ((u32) __glCurrentContext->unkD04 >= (u32) (plane - 0x3000))) {
        var_v0 = *(s32 *)0x1020;
        temp_a2 = var_v0 < 6;
        if (temp_a2 != 0) {
            sp18 = (s64) equation;
            var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(0, temp_a2);
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unk4 = plane;
        temp_v1->unk0 = 0xA514;
        temp_v1->unk8 = (f32) equation->unk0;
        temp_v1->unkC = (f32) equation->unk8;
        temp_v1->unk10 = (f32) equation->unk10;
        temp_v1->unk14 = (f32) equation->unk18;
        *(void *)0x1028 = (void *) (temp_v1 + 0x18);
        *(void *)0x1020 = (s32) (var_v0 - 6);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 6);
        return;
    }
    __glsplc_InvalidEnum();
}

void __glMgrlc_MultMatrixf(f32 *m) {
    void *temp_at;

    if (*(s32 *)0x1020 < 0x11) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2D40;
    temp_at->unk4 = (f32) m->unk0;
    temp_at->unk8 = (f32) m->unk4;
    temp_at->unkC = (f32) m->unk8;
    temp_at->unk10 = (f32) m->unkC;
    temp_at->unk14 = (f32) m->unk10;
    temp_at->unk18 = (f32) m->unk14;
    temp_at->unk1C = (f32) m->unk18;
    temp_at->unk20 = (f32) m->unk1C;
    temp_at->unk24 = (f32) m->unk20;
    temp_at->unk28 = (f32) m->unk24;
    temp_at->unk2C = (f32) m->unk28;
    temp_at->unk30 = (f32) m->unk2C;
    temp_at->unk34 = (f32) m->unk30;
    temp_at->unk38 = (f32) m->unk34;
    temp_at->unk3C = (f32) m->unk38;
    temp_at->unk40 = (f32) m->unk3C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 0x11);
    *(void *)0x1028 = (void *) (temp_at + 0x44);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 0x11);
}

void __glMgrlc_MultMatrixd(f64 *m) {
    void *temp_at;

    if (*(s32 *)0x1020 < 0x11) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2D40;
    temp_at->unk4 = (f32) m->unk0;
    temp_at->unk8 = (f32) m->unk8;
    temp_at->unkC = (f32) m->unk10;
    temp_at->unk10 = (f32) m->unk18;
    temp_at->unk14 = (f32) m->unk20;
    temp_at->unk18 = (f32) m->unk28;
    temp_at->unk1C = (f32) m->unk30;
    temp_at->unk20 = (f32) m->unk38;
    temp_at->unk24 = (f32) m->unk40;
    temp_at->unk28 = (f32) m->unk48;
    temp_at->unk2C = (f32) m->unk50;
    temp_at->unk30 = (f32) m->unk58;
    temp_at->unk34 = (f32) m->unk60;
    temp_at->unk38 = (f32) m->unk68;
    temp_at->unk3C = (f32) m->unk70;
    temp_at->unk40 = (f32) m->unk78;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 0x11);
    *(void *)0x1028 = (void *) (temp_at + 0x44);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 0x11);
}

void __glMgrlc_LoadMatrixf(f32 *m) {
    void *temp_at;

    if (*(s32 *)0x1020 < 0x11) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2B40;
    temp_at->unk4 = (f32) m->unk0;
    temp_at->unk8 = (f32) m->unk4;
    temp_at->unkC = (f32) m->unk8;
    temp_at->unk10 = (f32) m->unkC;
    temp_at->unk14 = (f32) m->unk10;
    temp_at->unk18 = (f32) m->unk14;
    temp_at->unk1C = (f32) m->unk18;
    temp_at->unk20 = (f32) m->unk1C;
    temp_at->unk24 = (f32) m->unk20;
    temp_at->unk28 = (f32) m->unk24;
    temp_at->unk2C = (f32) m->unk28;
    temp_at->unk30 = (f32) m->unk2C;
    temp_at->unk34 = (f32) m->unk30;
    temp_at->unk38 = (f32) m->unk34;
    temp_at->unk3C = (f32) m->unk38;
    temp_at->unk40 = (f32) m->unk3C;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 0x11);
    *(void *)0x1028 = (void *) (temp_at + 0x44);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 0x11);
}

void __glMgrlc_LoadMatrixd(f64 *m) {
    void *temp_at;

    if (*(s32 *)0x1020 < 0x11) {
        __glSPDlistSpace(0);
    }
    temp_at = *(void **)0x1028;
    temp_at->unk0 = 0x2B40;
    temp_at->unk4 = (f32) m->unk0;
    temp_at->unk8 = (f32) m->unk8;
    temp_at->unkC = (f32) m->unk10;
    temp_at->unk10 = (f32) m->unk18;
    temp_at->unk14 = (f32) m->unk20;
    temp_at->unk18 = (f32) m->unk28;
    temp_at->unk1C = (f32) m->unk30;
    temp_at->unk20 = (f32) m->unk38;
    temp_at->unk24 = (f32) m->unk40;
    temp_at->unk28 = (f32) m->unk48;
    temp_at->unk2C = (f32) m->unk50;
    temp_at->unk30 = (f32) m->unk58;
    temp_at->unk34 = (f32) m->unk60;
    temp_at->unk38 = (f32) m->unk68;
    temp_at->unk3C = (f32) m->unk70;
    temp_at->unk40 = (f32) m->unk78;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 0x11);
    *(void *)0x1028 = (void *) (temp_at + 0x44);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 0x11);
}

void __glMgrlc_LoadIdentity(void) {
    s32 *temp_v1;

    if (*(s32 *)0x1020 <= 0) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(s32 **)0x1028;
    *temp_v1 = 0x2C00;
    *(void *)0x1028 = (s32 *) (temp_v1 + 4);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 1);
}

void __glMgrlc_Frustum(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    f64 sp30;
    f64 sp28;
    f64 var_f5;
    void *temp_v1;

    var_f5 = left;
    if (((f32) (right - left) != 0.0f) && ((f32) (top - bottom) != 0.0f) && ((f32) (zFar - zNear) != 0.0f)) {
        if (*(s32 *)0x1020 < 7) {
            sp30 = second half of f64;
            sp28 = var_f5;
            __glSPDlistSpace(0);
            var_f5 = second half of f64;
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unkC = (f32) bottom;
        temp_v1->unk0 = 0x3418;
        temp_v1->unk18 = (f32) zFar;
        temp_v1->unk14 = (f32) zNear;
        temp_v1->unk10 = (f32) top;
        temp_v1->unk8 = (f32) (second half of f64);
        temp_v1->unk4 = (f32) var_f5;
        *(void *)0x1028 = (void *) (temp_v1 + 0x1C);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 7);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 7);
        return;
    }
    __glsplc_InvalidValue();
}

void __glMgrlc_Ortho(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    f64 sp30;
    f64 sp28;
    f64 var_f5;
    void *temp_v1;

    var_f5 = left;
    if (((right - left) != GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U)) && ((top - bottom) != GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U)) && ((zFar - zNear) != GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U))) {
        if (*(s32 *)0x1020 < 7) {
            sp30 = second half of f64;
            sp28 = var_f5;
            __glSPDlistSpace(0);
            var_f5 = second half of f64;
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unkC = (f32) bottom;
        temp_v1->unk0 = 0x3518;
        temp_v1->unk18 = (f32) zFar;
        temp_v1->unk14 = (f32) zNear;
        temp_v1->unk10 = (f32) top;
        temp_v1->unk8 = (f32) (second half of f64);
        temp_v1->unk4 = (f32) var_f5;
        *(void *)0x1028 = (void *) (temp_v1 + 0x1C);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 7);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 7);
        return;
    }
    __glsplc_InvalidValue();
}

void __glMgrlc_PopMatrix(void) {
    s32 *temp_v1;

    if (*(s32 *)0x1020 <= 0) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(s32 **)0x1028;
    *temp_v1 = 0x2E00;
    *(void *)0x1028 = (s32 *) (temp_v1 + 4);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 1);
}

void __glMgrlc_PushMatrix(void) {
    s32 *temp_v1;

    if (*(s32 *)0x1020 <= 0) {
        __glSPDlistSpace(0);
    }
    temp_v1 = *(s32 **)0x1028;
    *temp_v1 = 0x2F00;
    *(void *)0x1028 = (s32 *) (temp_v1 + 4);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 1);
}

void __glMgrlc_Rotated(f64 angle, f64 x, f64 y, f64 z) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f64 var_f5;
    void *temp_v1;

    var_f5 = second half of f64;
    if (*(s32 *)0x1020 < 5) {
        sp20 = x;
        sp18 = second half of f64;
        sp10 = z;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk0 = 0x3010;
    temp_v1->unk10 = (f32) z;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) x;
    temp_v1->unk4 = (f32) angle;
    *(void *)0x1028 = (void *) (temp_v1 + 0x14);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
}

void __glMgrlc_Rotatef(f32 angle, f32 x, f32 y, f32 z) {
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    void *temp_v1;

    var_f5 = y;
    if (*(s32 *)0x1020 < 5) {
        sp20 = (bitwise f64) x;
        sp18 = (bitwise f64) var_f5;
        sp10 = (bitwise f64) z;
        __glSPDlistSpace(0);
        var_f5 = second half of f64;
    }
    temp_v1 = *(void **)0x1028;
    temp_v1->unk4 = angle;
    temp_v1->unk10 = z;
    temp_v1->unkC = var_f5;
    temp_v1->unk8 = x;
    temp_v1->unk0 = 0x3010;
    *(void *)0x1028 = (void *) (temp_v1 + 0x14);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
}

void __glMgrlc_Scaled(f64 x, f64 y, f64 z) {
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
    temp_v1->unk0 = 0x310C;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1028 = (void *) (temp_v1 + 0x10);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
}

void __glMgrlc_Scalef(f32 x, f32 y, f32 z) {
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
    temp_v1->unk0 = 0x310C;
    *(void *)0x1028 = (void *) (temp_v1 + 0x10);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
}

void __glMgrlc_Translated(f64 x, f64 y, f64 z) {
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
    temp_v1->unk0 = 0x320C;
    temp_v1->unkC = (f32) var_f5;
    temp_v1->unk8 = (f32) y;
    temp_v1->unk4 = (f32) x;
    *(void *)0x1028 = (void *) (temp_v1 + 0x10);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
}

void __glMgrlc_Translatef(f32 x, f32 y, f32 z) {
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
    temp_v1->unk0 = 0x320C;
    *(void *)0x1028 = (void *) (temp_v1 + 0x10);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 4);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 4);
}

void __glMgrlc_Viewport(s32 x, s32 y, s32 width, s32 height) {
    s64 sp28;
    s64 sp20;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 temp_a5;
    void *temp_v1;

    var_a1 = y;
    var_s0 = height;
    var_s1 = width;
    if ((width >= 0) && (var_s0 >= 0)) {
        temp_v0 = __glCurrentContext->unkD10;
        var_a4 = temp_v0 < var_s1;
        if (temp_v0 < var_s0) {
            var_s0 = temp_v0;
            var_a4 = temp_v0 < var_s1;
        }
        if (var_a4 != 0) {
            var_s1 = temp_v0;
        }
        temp_a5 = *(s32 *)0x1020 < 5;
        if (temp_a5 != 0) {
            sp28 = (s64) var_a1;
            sp20 = (s64) x;
            __glSPDlistSpace(0, (enum GLenum *) var_a4, temp_a5, __glCurrentContext);
            var_a1 = (s32) sp28;
        }
        temp_v1 = *(void **)0x1028;
        temp_v1->unkC = var_s1;
        temp_v1->unk10 = var_s0;
        temp_v1->unk8 = var_a1;
        temp_v1->unk4 = x;
        temp_v1->unk0 = 0x3310;
        *(void *)0x1028 = (void *) (temp_v1 + 0x14);
        *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 5);
        *(void *)0x102C = (s32) (*(s32 *)0x102C + 5);
        return;
    }
    __glsplc_InvalidValue();
}

void __glMgrlc_MatrixMode(enum GLenum mode) {
    s64 temp_a2;
    void *temp_a1;

    if (((mode < GL_MODELVIEW) || (mode >= 0x1703U)) && (mode != GL_COLOR)) {
        __glsplc_InvalidEnum(0x1800);
        return;
    }
    temp_a2 = *(s32 *)0x1020 < 2;
    if (temp_a2 != 0) {
        __glSPDlistSpace(0, (enum GLenum *)0x1800, temp_a2);
    }
    temp_a1 = *(void **)0x1028;
    temp_a1->unk0 = 0x2A04;
    temp_a1->unk4 = mode;
    *(void *)0x1028 = (void *) (temp_a1 + 8);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 2);
    *(void *)0x102C = (s32) (*(s32 *)0x102C + 2);
}

void __glMgrlc_TexImage3DEXT(enum GLenum target, s32 level, enum GLenum internalformat, s32 width, s32 height, s32 depth, s32 border, enum GLenum format, enum GLenum type, void *pixels, s32 arg_sp4, s32 arg_spC) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 spC;
    s32 sp4;
    s64 temp_a0;
    u32 temp_a6;
    void *temp_a6_2;

    if (target != GL_PROXY_TEXTURE_3D_EXT) {
        if ((border >= 0) && (border < 2)) {
            if ((width >= 0) && (height >= 0) && (depth >= 0)) {
                if (format < GL_RGB) {
                    if (format >= GL_GREEN) {
                        if (format >= GL_BLUE) {
                            if (format >= GL_ALPHA) {
                                if (format < GL_RGB) {
                                    goto block_10;
                                }
                                /* Duplicate return node #30. Try simplifying control flow for better match */
                                __glsplc_InvalidEnum();
                                return;
                            }
                            if (format == GL_BLUE) {
                                goto block_10;
                            }
                            /* Duplicate return node #30. Try simplifying control flow for better match */
                            __glsplc_InvalidEnum();
                            return;
                        }
                        goto block_10;
                    }
                    if (format >= GL_RED) {
                        if (format < GL_GREEN) {
                            goto block_10;
                        }
                        /* Duplicate return node #30. Try simplifying control flow for better match */
                        __glsplc_InvalidEnum();
                        return;
                    }
                    if (format != GL_COLOR_INDEX) {
                        /* Duplicate return node #30. Try simplifying control flow for better match */
                        __glsplc_InvalidEnum();
                        return;
                    }
                    goto block_10;
                }
                if (format < GL_RGBA) {
                    goto block_10;
                }
                if (format >= GL_LUMINANCE_ALPHA) {
                    if ((format >= 0x190BU) && (format != GL_ABGR_EXT)) {
                        /* Duplicate return node #30. Try simplifying control flow for better match */
                        __glsplc_InvalidEnum();
                        return;
                    }
                    goto block_10;
                }
                if (format >= GL_LUMINANCE) {
                    if (format < GL_LUMINANCE_ALPHA) {
                        goto block_10;
                    }
                    /* Duplicate return node #30. Try simplifying control flow for better match */
                    __glsplc_InvalidEnum();
                    return;
                }
                if (format == GL_RGBA) {
block_10:
                    sp10 = (s64) internalformat;
                    sp18 = (s64) level;
                    sp20 = (s64) target;
                    sp28 = (s64) __glCurrentContext;
                    sp38 = (s64) arg_sp4;
                    temp_a6 = arg_sp4 - 0x1400;
                    temp_a6_2 = (temp_a6 * 4) + (&sub_0dbf0000 - 0x2F10);
                    if (temp_a6 < 7U) {
                        __glImageSize3D(width, height, depth, format, sp38, temp_a6_2);
                        temp_a0 = (M2C_ERROR(/* Read from unset register $v0 */) + 3) & ~3;
                        sp30 = temp_a0;
                        __glSPDlalloc(temp_a0 + 0x28, 0xD0, -4);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            M2C_ERROR(/* Read from unset register $v0 */)->unk1C = format;
                            M2C_ERROR(/* Read from unset register $v0 */)->unk18 = border;
                            M2C_ERROR(/* Read from unset register $v0 */)->unk14 = depth;
                            M2C_ERROR(/* Read from unset register $v0 */)->unk10 = height;
                            M2C_ERROR(/* Read from unset register $v0 */)->unkC = width;
                            M2C_ERROR(/* Read from unset register $v0 */)->unk24 = (s32) sp30;
                            M2C_ERROR(/* Read from unset register $v0 */)->unk8 = (s32) sp10;
                            M2C_ERROR(/* Read from unset register $v0 */)->unk20 = (s32) sp38;
                            M2C_ERROR(/* Read from unset register $v0 */)->unk4 = (s32) sp18;
                            *M2C_ERROR(/* Read from unset register $v0 */) = (s32) sp20;
                            if ((sp30 > 0) && (arg_spC != 0)) {
                                __glFillImage3D(sp28, width, height, depth, format, sp38, arg_spC, M2C_ERROR(/* Read from unset register $v0 */) + 0x28);
                            }
                            return;
                        }
                        return;
                    }
                    __glsplc_InvalidEnum((s64) temp_a6_2);
                    return;
                }
                __glsplc_InvalidEnum();
                return;
            }
            __glsplc_InvalidValue();
            return;
        }
        __glsplc_InvalidValue();
        return;
    }
    sp4 = arg_sp4;
    spC = arg_spC;
    __glsplc_InvalidEnum((s64) internalformat, (s64) width, (__GLcontext *) height, depth, border, format);
}

void __glMgrlc_TexSubImage3DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 zoffset, s32 width, s32 height, s32 depth, enum GLenum format, enum GLenum type, void *pixels, enum GLenum arg_sp4, s32 arg_spC, s32 arg_sp14) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_a0;
    u32 temp_a6;
    void *temp_a6_2;

    if ((width >= 0) && (height >= 0) && (depth >= 0)) {
        if (arg_sp4 >= 0x1907U) {
            switch (arg_sp4) {                      /* irregular */
            case GL_RGBA:
                goto block_16;
            }
        } else {
            if (arg_sp4 >= 0x1904U) {
                if (arg_sp4 >= 0x1905U) {
                    if (arg_sp4 >= 0x1906U) {
                        if (arg_sp4 < 0x1907U) {
                            goto block_16;
                        }
                        /* Duplicate return node #24. Try simplifying control flow for better match */
                        __glsplc_InvalidEnum();
                        return;
                    }
                    if (arg_sp4 == GL_BLUE) {
                        goto block_16;
                    }
                    /* Duplicate return node #24. Try simplifying control flow for better match */
                    __glsplc_InvalidEnum();
                    return;
                }
                goto block_16;
            }
            if (arg_sp4 >= 0x1903U) {
                if (arg_sp4 < 0x1904U) {
                    goto block_16;
                }
                /* Duplicate return node #24. Try simplifying control flow for better match */
                __glsplc_InvalidEnum();
                return;
            }
            if (arg_sp4 != GL_COLOR_INDEX) {
            default:
                __glsplc_InvalidEnum();
                return;
            }
        case GL_ABGR_EXT:
block_16:
            sp8 = (s64) width;
            sp10 = (s64) zoffset;
            sp18 = (s64) xoffset;
            sp20 = (s64) yoffset;
            sp28 = (s64) target;
            sp30 = (s64) level;
            sp38 = (s64) __glCurrentContext;
            sp40 = (s64) arg_spC;
            temp_a6 = arg_spC - 0x1400;
            temp_a6_2 = (temp_a6 * 4) + (&sub_0dbf0000 - 0x2EF0);
            if (temp_a6 < 7U) {
                __glImageSize3D((s32) sp8, height, depth, arg_sp4, sp40, temp_a6_2);
                temp_a0 = (M2C_ERROR(/* Read from unset register $v0 */) + 3) & ~3;
                sp0 = temp_a0;
                __glSPDlalloc(temp_a0 + 0x2C, 0xD1, -4);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    M2C_ERROR(/* Read from unset register $v0 */)->unk20 = arg_sp4;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk1C = depth;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk18 = height;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk14 = (s32) sp8;
                    M2C_ERROR(/* Read from unset register $v0 */)->unkC = (s32) sp20;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk10 = (s32) sp10;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk28 = (s32) sp0;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk4 = (s32) sp30;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk24 = (s32) sp40;
                    *M2C_ERROR(/* Read from unset register $v0 */) = (s32) sp28;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk8 = (s32) sp18;
                    if ((sp0 > 0) && (arg_sp14 != 0)) {
                        __glFillImage3D(sp38, (s32) sp8, height, depth, arg_sp4, sp40, arg_sp14, M2C_ERROR(/* Read from unset register $v0 */) + 0x2C);
                    }
                    return;
                }
                return;
            }
            __glsplc_InvalidEnum((s64) temp_a6_2);
        }
    } else {
        __glsplc_InvalidValue();
    }
}
