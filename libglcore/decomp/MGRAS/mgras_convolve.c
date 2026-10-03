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
    /* 0x0CCD */ char padCCD[0x20BF];               /* maybe part of yInverted[0x20C0]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x38];
    /* 0x3158 */ ? (*unk3158)(__GLcontext *, void *, ?); /* inferred */
    /* 0x315C */ char pad315C[0x46F8];              /* maybe part of unk3158[0x11BF]? */
    /* 0x7854 */ f32 unk7854;                       /* inferred */
    /* 0x7858 */ f32 unk7858;                       /* inferred */
    /* 0x785C */ f32 unk785C;                       /* inferred */
    /* 0x7860 */ char pad7860[0x1C];                /* maybe part of unk785C[8]? */
    /* 0x787C */ f32 unk787C;                       /* inferred */
    /* 0x7880 */ char pad7880[4];
    /* 0x7884 */ f32 unk7884;                       /* inferred */
    /* 0x7888 */ f32 unk7888;                       /* inferred */
    /* 0x788C */ f32 unk788C;                       /* inferred */
    /* 0x7890 */ f32 unk7890;                       /* inferred */
    /* 0x7894 */ char pad7894[0x300];               /* maybe part of unk7890[0xC1]? */
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

typedef struct __GLimportsRec {
    /* 0x00 */ void *(*malloc)(__GLcontext *, u32);
    /* 0x04 */ void *(*calloc)(__GLcontext *, u32, u32);
    /* 0x08 */ void *(*realloc)(__GLcontext *, void *, u32);
    /* 0x0C */ void (*free)(__GLcontext *, void *);
    /* 0x10 */ void (*warning)(__GLcontext *, s8 *);
    /* 0x14 */ void (*fatal)(__GLcontext *, s8 *);
    /* 0x18 */ s8 *(*getenv)(__GLcontext *, s8 *);
    /* 0x1C */ s32 (*atoi)(__GLcontext *, s8 *);
    /* 0x20 */ s32 (*sprintf)(__GLcontext *, s8 *, s8 *, ...);
    /* 0x24 */ void *(*fopen)(__GLcontext *, s8 *, s8 *);
    /* 0x28 */ s32 (*fclose)(__GLcontext *, void *);
    /* 0x2C */ s32 (*fprintf)(__GLcontext *, void *, s8 *, ...);
    /* 0x30 */ void *(*getDrawablePrivate)(__GLcontext *);
    /* 0x34 */ void *wscx;
    /* 0x38 */ void *other;
    /* 0x3C */ f32 unk3C;                           /* inferred */
    /* 0x40 */ f32 unk40;                           /* inferred */
    /* 0x44 */ f32 unk44;                           /* inferred */
    /* 0x48 */ f32 unk48;                           /* inferred */
} __GLimports;                                      /* size = 0x4C */

extern ? sub_0dbf0000;

void __glMgrInitConvolutionState(__GLcontext *gc, ...) {
    f32 *var_v0;
    f32 *var_v0_2;
    f32 *var_v0_3;

    var_v0 = gc->imports.malloc(gc, 0x310U);
    gc->unk82CC = var_v0;
    if (var_v0 == NULL) {
        gc->imports.fatal(gc, &sub_0dbf0000 - 0x1580);
        var_v0 = gc->unk82CC;
    }
    *var_v0 = 1.0f;
    gc->unk82CC->unk4 = 1.0f;
    gc->unk82CC->unk8 = 1.0f;
    gc->unk82CC->unkC = 1.0f;
    gc->unk8308 = 0.0f;
    gc->unk830C = 0.0f;
    gc->unk8310 = 0.0f;
    gc->unk8314 = 0.0f;
    gc->unk82F8 = 1.0f;
    gc->unk82FC = 1.0f;
    gc->unk8300 = 1.0f;
    gc->unk8304 = 1.0f;
    gc->unk82F4 = 1.0f;
    gc->unk82F0 = 1.0f;
    gc->unk82EC = 1.0f;
    gc->unk82E8 = 1.0f;
    gc->unk82D8 = 0x1908;
    gc->unk82D4 = 0x1908;
    gc->unk82D0 = 0x1406;
    gc->unk82DC = 1;
    gc->unk82E0 = 1;
    gc->unk8318 = 0x8016;
    var_v0_2 = gc->imports.malloc(gc, 0xE0U);
    gc->unk831C = var_v0_2;
    if (var_v0_2 == NULL) {
        gc->imports.fatal(gc, &sub_0dbf0000 - 0x1580);
        var_v0_2 = gc->unk831C;
    }
    *var_v0_2 = 1.0f;
    gc->unk831C->unk4 = 1.0f;
    gc->unk831C->unk8 = 1.0f;
    gc->unk831C->unkC = 1.0f;
    gc->unk8358 = 0.0f;
    gc->unk835C = 0.0f;
    gc->unk8360 = 0.0f;
    gc->unk8364 = 0.0f;
    gc->unk8348 = 1.0f;
    gc->unk834C = 1.0f;
    gc->unk8350 = 1.0f;
    gc->unk8354 = 1.0f;
    gc->unk8368 = 0x8016;
    gc->unk8344 = 1.0f;
    gc->unk8340 = 1.0f;
    gc->unk833C = 1.0f;
    gc->unk8338 = 1.0f;
    gc->unk8330 = 1;
    gc->unk832C = 1;
    gc->unk8328 = 0x1908;
    gc->unk8324 = 0x1908;
    gc->unk8320 = 0x1406;
    var_v0_3 = gc->imports.malloc(gc, 0x70U);
    gc->unk827C = var_v0_3;
    if (var_v0_3 == NULL) {
        gc->imports.fatal(gc, &sub_0dbf0000 - 0x1548);
        var_v0_3 = gc->unk827C;
    }
    *var_v0_3 = 1.0f;
    gc->unk827C->unk4 = 1.0f;
    gc->unk827C->unk8 = 1.0f;
    gc->unk827C->unkC = 1.0f;
    gc->unk837C = 0.0f;
    gc->unk8380 = 0.0f;
    gc->unk8384 = 0.0f;
    gc->unk8388 = 0.0f;
    gc->unk836C = 1.0f;
    gc->unk8370 = 1.0f;
    gc->unk8374 = 1.0f;
    gc->unk8378 = 1.0f;
    gc->unk82B8 = 0.0f;
    gc->unk82BC = 0.0f;
    gc->unk82C0 = 0.0f;
    gc->unk82C4 = 0.0f;
    gc->unk82A8 = 1.0f;
    gc->unk82AC = 1.0f;
    gc->unk82B0 = 1.0f;
    gc->unk82B4 = 1.0f;
    gc->unk82C8 = 0x8016;
    gc->unk82A4 = 1.0f;
    gc->unk82A0 = 1.0f;
    gc->unk829C = 1.0f;
    gc->unk8298 = 1.0f;
    gc->unk8290 = 1;
    gc->unk828C = 1;
    gc->unk8288 = 0x1908;
    gc->unk8284 = 0x1908;
    gc->unk8280 = 0x1406;
}

void __glMgrFreeConvolutionState(__GLcontext *gc, ...) {
    s64 sp18;
    s64 sp0;
    s64 var_ra;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;

    var_ra = saved_reg_ra;
    sp0 = (s64) (gc + 0x10000);
    temp_a1 = gc->unk827C;
    if (temp_a1 != NULL) {
        gc->imports.free(gc, temp_a1);
        var_ra = sp18;
    }
    temp_a1_2 = sp0->unk-7D34;
    if (temp_a1_2 != NULL) {
        sp18 = var_ra;
        gc->imports.free(gc, temp_a1_2);
    }
    temp_a1_3 = sp0->unk-7CE4;
    if (temp_a1_3 != NULL) {
        sp18 = var_ra;
        gc->imports.free(gc, temp_a1_3);
    }
}

void __glMgrGetFilter(__GLcontext *gc, ...) {
    switch (gc) {                                   /* irregular */
    case 0x8010:
        return;
    case 0x8011:
        return;
    case 0x8012:
        return;
    }
}

void __glMgrScaleBiasFilter(__GLcontext *gc, s32 arg1, ...) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f4;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    s32 (*temp_f6)(__GLcontext *, void *, s8 *, ...);
    s32 var_a3;
    s32 var_a5_2;
    void *(*temp_a4)(__GLcontext *, u32);
    void *(*temp_f10)(__GLcontext *);
    void *(*var_a3_2)(__GLcontext *, u32);
    void *(*var_a4)(__GLcontext *, u32);
    void *(*var_a5)(__GLcontext *, u32);
    void *(*var_t0)(__GLcontext *, u32);
    void *temp_f11;
    void *temp_f5;

    temp_f7 = gc->imports.unk48;
    temp_f4 = gc->imports.unk44;
    temp_f8 = gc->imports.unk40;
    temp_f9 = gc->imports.unk3C;
    temp_f5 = gc->imports.other;
    temp_f11 = gc->imports.wscx;
    temp_f10 = gc->imports.getDrawablePrivate;
    temp_f6 = gc->imports.fprintf;
    var_a3 = 0;
    temp_a4 = gc->imports.malloc;
    gc->imports.fclose = NULL;
    gc->imports.fopen = NULL;
    gc->imports.sprintf = NULL;
    gc->imports.atoi = NULL;
    var_a5 = temp_a4;
    if (arg1 > 0) {
        var_t0 = temp_a4;
        if (arg1 & 1) {
            temp_f0 = (temp_a4->unk0 * (bitwise f32) temp_f6) + temp_f9;
            var_a5->unkC = (f32) ((temp_a4->unkC * (bitwise f32) temp_f5) + temp_f7);
            var_a5->unk8 = (f32) ((temp_a4->unk8 * (bitwise f32) temp_f11) + temp_f4);
            var_a5->unk0 = temp_f0;
            var_a5->unk4 = (f32) ((temp_a4->unk4 * (bitwise f32) temp_f10) + temp_f8);
            gc->imports.atoi = (bitwise s32 (*)(__GLcontext *, s8 *)) ((bitwise f32) gc->imports.atoi + temp_f0);
            gc->imports.sprintf = (bitwise s32 (*)(__GLcontext *, s8 *, s8 *, ...)) (var_a5->unk4 + (bitwise f32) gc->imports.sprintf);
            gc->imports.fopen = (bitwise void *(*)(__GLcontext *, s8 *, s8 *)) (var_a5->unk8 + (bitwise f32) gc->imports.fopen);
            temp_f1 = var_a5->unkC + (bitwise f32) gc->imports.fclose;
            var_a3 = 1;
            var_a5 += 0x10;
            gc->imports.fclose = (bitwise s32 (*)(__GLcontext *, void *)) temp_f1;
            var_t0 = temp_a4 + 0x10;
        }
        var_a3_2 = var_a5;
        if ((arg1 >> 1) != 0) {
            var_a5_2 = var_a3;
            var_a4 = var_t0;
            do {
                temp_f0_2 = (var_a4->unk0 * (bitwise f32) temp_f6) + temp_f9;
                var_a3_2->unk0 = temp_f0_2;
                var_a3_2->unk4 = (f32) ((var_a4->unk4 * (bitwise f32) temp_f10) + temp_f8);
                var_a3_2->unk8 = (f32) ((var_a4->unk8 * (bitwise f32) temp_f11) + temp_f4);
                var_a3_2->unkC = (f32) ((var_a4->unkC * (bitwise f32) temp_f5) + temp_f7);
                gc->imports.atoi = (bitwise s32 (*)(__GLcontext *, s8 *)) ((bitwise f32) gc->imports.atoi + temp_f0_2);
                gc->imports.sprintf = (bitwise s32 (*)(__GLcontext *, s8 *, s8 *, ...)) (var_a3_2->unk4 + (bitwise f32) gc->imports.sprintf);
                gc->imports.fopen = (bitwise void *(*)(__GLcontext *, s8 *, s8 *)) (var_a3_2->unk8 + (bitwise f32) gc->imports.fopen);
                gc->imports.fclose = (bitwise s32 (*)(__GLcontext *, void *)) (var_a3_2->unkC + (bitwise f32) gc->imports.fclose);
                temp_f0_3 = (var_a4->unk10 * (bitwise f32) temp_f6) + temp_f9;
                var_a3_2->unk10 = temp_f0_3;
                var_a3_2->unk14 = (f32) ((var_a4->unk14 * (bitwise f32) temp_f10) + temp_f8);
                var_a3_2->unk18 = (f32) ((var_a4->unk18 * (bitwise f32) temp_f11) + temp_f4);
                var_a3_2->unk1C = (f32) ((var_a4->unk1C * (bitwise f32) temp_f5) + temp_f7);
                gc->imports.atoi = (bitwise s32 (*)(__GLcontext *, s8 *)) ((bitwise f32) gc->imports.atoi + temp_f0_3);
                gc->imports.sprintf = (bitwise s32 (*)(__GLcontext *, s8 *, s8 *, ...)) (var_a3_2->unk14 + (bitwise f32) gc->imports.sprintf);
                gc->imports.fopen = (bitwise void *(*)(__GLcontext *, s8 *, s8 *)) (var_a3_2->unk18 + (bitwise f32) gc->imports.fopen);
                var_a4 += 0x20;
                temp_f1_2 = var_a3_2->unk1C + (bitwise f32) gc->imports.fclose;
                var_a3_2 += 0x20;
                var_a5_2 += 2;
                gc->imports.fclose = (bitwise s32 (*)(__GLcontext *, void *)) temp_f1_2;
            } while (arg1 != var_a5_2);
        }
    }
}

void __glMgrim_ConvolutionFilter1DEXT(enum GLenum target, enum GLenum internalformat, s32 width, enum GLenum format, enum GLenum type, void *image) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a4;
    enum GLenum var_a6;
    s32 temp_a7;
    s64 var_at;
    u32 temp_a2;

    sp0 = (s64) type;
    sp18 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((target == GL_CONVOLUTION_1D_EXT) && (image != NULL)) {
            if ((width < 8) && (width > 0)) {
                sp10 = (s64) width;
                if (format >= GL_RGB) {
                    if (format < GL_RGBA) {
                        var_at = width * 3;
                        goto block_8;
                    }
                    if (format >= GL_LUMINANCE_ALPHA) {
                        var_a6 = GL_ABGR_EXT;
                        if (format >= 0x190BU) {
                            if (format == GL_ABGR_EXT) {
                                goto block_33;
                            }
                            /* Duplicate return node #21. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a6);
                            return;
                        }
                        sp10 = width * 2;
                        goto block_9;
                    }
                    var_a6 = format < GL_LUMINANCE_ALPHA;
                    if (format >= GL_LUMINANCE) {
                        if (var_a6 != GL_ZERO) {
                            goto block_9;
                        }
                        /* Duplicate return node #21. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a6);
                        return;
                    }
                    if (format == GL_RGBA) {
block_33:
                        var_at = width * 4;
block_8:
                        sp10 = var_at;
                        goto block_9;
                    }
                    /* Duplicate return node #21. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a6);
                    return;
                }
                if (format >= GL_BLUE) {
                    if (format >= GL_ALPHA) {
                        var_a6 = GL_LUMINANCE;
                        if (format != GL_ALPHA) {
                            /* Duplicate return node #21. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a6);
                            return;
                        }
                        goto block_10;
                    }
                    goto block_9;
                }
                var_a6 = format < GL_GREEN;
                if (var_a6 == GL_ZERO) {
                    if (format < GL_BLUE) {
                        goto block_9;
                    }
                    /* Duplicate return node #21. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a6);
                    return;
                }
                if (format == GL_RED) {
block_9:
block_10:
                    if (internalformat != GL_ALPHA) {
                        switch (internalformat) {   /* switch 1; irregular */
                        default:                    /* switch 1 */
                            __glSetError(0x500, format, GL_LUMINANCE);
                            return;
                        }
                    } else {
                    case GL_RGBA:                   /* switch 1 */
                    case GL_LUMINANCE:              /* switch 1 */
                    case GL_INTENSITY:              /* switch 1 */
                    case GL_RGB:                    /* switch 1 */
                    case GL_LUMINANCE_ALPHA:        /* switch 1 */
                        sp18->unk8288 = internalformat;
                        sp18->unk8284 = format;
                        sp18->unk8290 = 1;
                        sp18->unk828C = width;
                        sp18->unk8280 = (s32) sp0;
                        sp8 = sp18 + 0x10000;
                        temp_a7 = sp18->unk7D60 | 0x800;
                        sp18->unk7D60 = temp_a7;
                        __glFillImage(sp18, width, 1, format, sp0, sp18->unk827C, temp_a7);
                        temp_a2 = sp0 - 0x1400;
                        if (temp_a2 < 7U) {
                            switch (*((temp_a2 * 4) + (&sub_0dbf0000 - 0x1510))) { /* switch 2; unable to parse jump table */
                            case 0:                 /* switch 2 */
                            case 1:                 /* switch 2 */
                            case 2:                 /* switch 2 */
                            case 3:                 /* switch 2 */
                            case 4:                 /* switch 2 */
                            case 5:                 /* switch 2 */
                                temp_a0 = sp8->unk-7D84;
                                __glMgrCvtToFloat(temp_a0, temp_a0, sp10, sp0);
                                break;
                            }
                            temp_a0_2 = sp8->unk-7D84;
                            __glMgrCvtScaleBias(temp_a0_2, temp_a0_2, sp10, sp0);
                            temp_a4 = sp8->unk-7D84;
                            temp_a0_3 = (sp10 * 4) + temp_a4;
                            __glMgrCvtToRGBA(temp_a0_3, temp_a0_3, (width * 4 * 4) + temp_a4, width, format, temp_a4);
                            temp_a0_4 = sp18 + 0x827C;
                            __glMgrFreeConvolutionState(temp_a0_4, temp_a0_4, width, 0x827C);
                            temp_a0_5 = sp8->unk-7D84;
                            __glMgrCvtToInternalFmt(temp_a0_5, temp_a0_5, width, internalformat);
                            return;
                        }
                        __glSetError(0x500);
                    }
                } else {
                    __glSetError(0x500, var_a6);
                }
            } else {
                __glSetError(0x501, GL_CONVOLUTION_1D_EXT);
            }
        } else {
            __glSetError(0x500, GL_CONVOLUTION_1D_EXT);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_ConvolutionFilter2DEXT(enum GLenum target, enum GLenum internalformat, s32 width, s32 height, enum GLenum format, enum GLenum type, void *image) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a4;
    enum GLenum var_a7;
    s32 *temp_a3_2;
    s32 temp_a7;
    s64 temp_lo;
    u32 temp_a3;

    sp0 = (s64) type;
    sp18 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((target == GL_CONVOLUTION_2D_EXT) && (image != NULL)) {
            if ((width < 8) && (height < 8) && (width > 0) && (height > 0)) {
                temp_lo = width * height;
                sp8 = temp_lo;
                sp10 = temp_lo;
                if (format >= GL_RGB) {
                    if (format >= GL_RGBA) {
                        var_a7 = format < 0x190BU;
                        if (format >= GL_LUMINANCE_ALPHA) {
                            if (var_a7 == GL_ZERO) {
                                if (format == GL_ABGR_EXT) {
                                    goto block_42;
                                }
                                /* Duplicate return node #17. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a7);
                                return;
                            }
                            sp10 = sp8 * 2;
                            goto block_19;
                        }
                        var_a7 = format < GL_LUMINANCE_ALPHA;
                        if (format >= GL_LUMINANCE) {
                            if (var_a7 != GL_ZERO) {
                                goto block_19;
                            }
                            /* Duplicate return node #17. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a7);
                            return;
                        }
                        if (format == GL_RGBA) {
block_42:
                            sp10 = sp8 * 4;
                            goto block_19;
                        }
                        /* Duplicate return node #17. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a7);
                        return;
                    }
                    sp10 = sp8 * 3;
                    goto block_19;
                }
                if (format >= GL_BLUE) {
                    if (format >= GL_ALPHA) {
                        var_a7 = GL_LUMINANCE;
                        if (format != GL_ALPHA) {
                            /* Duplicate return node #17. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a7);
                            return;
                        }
                        goto block_20;
                    }
                    goto block_19;
                }
                var_a7 = format < GL_GREEN;
                if (var_a7 == GL_ZERO) {
                    if (format < GL_BLUE) {
                        goto block_19;
                    }
                    /* Duplicate return node #17. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a7);
                    return;
                }
                if (format == GL_RED) {
block_19:
block_20:
                    switch (internalformat) {       /* switch 1; irregular */
                    default:                        /* switch 1 */
                        __glSetError(0x500, format, GL_LUMINANCE);
                        return;
                    case GL_ALPHA:                  /* switch 1 */
                    case GL_LUMINANCE:              /* switch 1 */
                    case GL_LUMINANCE_ALPHA:        /* switch 1 */
                    case GL_INTENSITY:              /* switch 1 */
                        /* fallthrough */
                    case GL_RGB:                    /* switch 1 */
                    case GL_RGBA:                   /* switch 1 */
                        sp18->unk82D8 = internalformat;
                        sp18->unk82D4 = format;
                        sp18->unk82E0 = height;
                        sp18->unk82DC = width;
                        sp18->unk82D0 = (s32) sp0;
                        sp20 = sp18 + 0x10000;
                        temp_a7 = sp18->unk7D60 | 0x800;
                        sp18->unk7D60 = temp_a7;
                        __glFillImage(sp18, width, height, format, sp0, image, sp18->unk82CC, temp_a7);
                        temp_a3 = sp0 - 0x1400;
                        temp_a3_2 = (temp_a3 * 4) + (&sub_0dbf0000 - 0x14F0);
                        if (temp_a3 < 7U) {
                            switch (*temp_a3_2) {   /* switch 2; unable to parse jump table */
                            case 0:                 /* switch 2 */
                            case 1:                 /* switch 2 */
                            case 2:                 /* switch 2 */
                            case 3:                 /* switch 2 */
                            case 4:                 /* switch 2 */
                            case 5:                 /* switch 2 */
                                temp_a0 = sp20->unk-7D34;
                                __glMgrCvtToFloat(temp_a0, temp_a0, sp10, sp0, temp_a3_2);
                                break;
                            }
                            temp_a0_2 = sp20->unk-7D34;
                            __glMgrCvtScaleBias(temp_a0_2, temp_a0_2, sp10, sp0);
                            temp_a4 = sp20->unk-7D34;
                            temp_a0_3 = (sp10 * 4) + temp_a4;
                            __glMgrCvtToRGBA(temp_a0_3, temp_a0_3, (sp8 * 4 * 4) + temp_a4, sp8, format, temp_a4);
                            temp_a0_4 = sp18 + 0x82CC;
                            __glMgrFreeConvolutionState(temp_a0_4, temp_a0_4, sp8, 0x82CC);
                            temp_a0_5 = sp20->unk-7D34;
                            __glMgrCvtToInternalFmt(temp_a0_5, temp_a0_5, sp8, internalformat);
                            return;
                        }
                        __glSetError(0x500);
                        return;
                    }
                } else {
                    __glSetError(0x500, var_a7);
                }
            } else {
                __glSetError(0x501, (enum GLenum) __glCurrentContext);
            }
        } else {
            __glSetError(0x500, (enum GLenum) __glCurrentContext);
        }
    } else {
        __glSetError(0x502, (enum GLenum) __glCurrentContext);
    }
}

void __glMgrim_SeparableFilter2DEXT(enum GLenum target, enum GLenum internalformat, s32 width, s32 height, enum GLenum format, enum GLenum type, void *row, void *column) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a4;
    __GLcontext *var_a6;
    s32 temp_a7;
    s64 temp_v0;
    s64 var_t0;
    s64 var_v1;
    u32 temp_a3;

    sp8 = (s64) column;
    sp10 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((target == GL_SEPARABLE_2D_EXT) && (row != NULL) && (sp8 != 0)) {
            if ((width < 8) && (height < 8) && (width > 0) && (height > 0)) {
                sp18 = (s64) width;
                temp_v0 = width + height;
                sp28 = temp_v0;
                sp20 = temp_v0;
                if (format >= GL_RGB) {
                    if (format >= GL_RGBA) {
                        if (format >= GL_LUMINANCE_ALPHA) {
                            if (format < 0x190BU) {
                                sp18 = width * 2;
                                var_v1 = sp28 * 2;
                                goto block_19;
                            }
                            if (format == GL_ABGR_EXT) {
                                goto block_52;
                            }
                            /* Duplicate return node #17. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (format >= GL_LUMINANCE) {
                            if (format < GL_LUMINANCE_ALPHA) {
                                goto block_20;
                            }
                            /* Duplicate return node #17. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (format == GL_RGBA) {
block_52:
                            sp18 = width * 4;
                            sp20 = sp28 * 4;
                            goto block_20;
                        }
                        /* Duplicate return node #17. Try simplifying control flow for better match */
                        __glSetError(0x500);
                        return;
                    }
                    sp18 = width * 3;
                    var_v1 = sp28 * 3;
block_19:
                    sp20 = var_v1;
                    goto block_20;
                }
                if (format >= GL_BLUE) {
                    if (format >= GL_ALPHA) {
                        if (format != GL_ALPHA) {
                            /* Duplicate return node #17. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        goto block_21;
                    }
                    goto block_20;
                }
                if (format >= GL_GREEN) {
                    if (format < GL_BLUE) {
                        goto block_20;
                    }
                    /* Duplicate return node #17. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                if (format == GL_RED) {
block_20:
block_21:
                    switch (internalformat) {       /* switch 1; irregular */
                    default:                        /* switch 1 */
                        __glSetError(0x500, (enum GLenum) row);
                        return;
                    case GL_ALPHA:                  /* switch 1 */
                    case GL_LUMINANCE:              /* switch 1 */
                    case GL_LUMINANCE_ALPHA:        /* switch 1 */
                    case GL_INTENSITY:              /* switch 1 */
                        /* fallthrough */
                    case GL_RGB:                    /* switch 1 */
                    case GL_RGBA:                   /* switch 1 */
                        sp10->unk8328 = internalformat;
                        sp10->unk8324 = format;
                        sp10->unk8330 = height;
                        sp10->unk832C = width;
                        sp10->unk8320 = type;
                        sp0 = sp10 + 0x10000;
                        temp_a7 = sp10->unk7D60 | 0x800;
                        sp10->unk7D60 = temp_a7;
                        __glFillImage(sp10, width, 1, format, (s64) type, row, sp10->unk831C, temp_a7);
                        temp_a3 = type - 0x1400;
                        if (temp_a3 < 7U) {
                            switch (*((temp_a3 * 4) + (&sub_0dbf0000 - 0x14D0))) { /* switch 2; unable to parse jump table */
                            case 0:                 /* switch 2 */
                            case 1:                 /* switch 2 */
                                var_t0 = sp18;
                                var_a6 = sp0->unk-7CE4;
                                break;
                            case 2:                 /* switch 2 */
                            case 3:                 /* switch 2 */
                                var_a6 = sp0->unk-7CE4;
                                var_t0 = sp18 * 2;
                                break;
                            case 4:                 /* switch 2 */
                            case 5:                 /* switch 2 */
                                var_a6 = sp0->unk-7CE4;
                                var_t0 = sp18 * 4;
                                break;
                            case 6:                 /* switch 2 */
                                var_a6 = sp0->unk-7CE4;
                                var_t0 = sp18 * 4;
                                break;
                            }
                            __glFillImage(sp10, height, 1, format, (s64) type, (void *) sp8, var_a6 + var_t0);
                            if ((type == GL_BYTE) || (type == GL_UNSIGNED_BYTE) || (type == GL_SHORT) || (type == GL_UNSIGNED_SHORT) || (type == GL_INT) || (type == GL_UNSIGNED_INT)) {
                                temp_a0 = sp0->unk-7CE4;
                                __glMgrCvtToFloat(temp_a0, temp_a0, sp20, type);
                            }
                            temp_a0_2 = sp0->unk-7CE4;
                            __glMgrCvtScaleBias(temp_a0_2, temp_a0_2, sp20, type);
                            temp_a4 = sp0->unk-7CE4;
                            temp_a0_3 = (sp20 * 4) + temp_a4;
                            __glMgrCvtToRGBA(temp_a0_3, temp_a0_3, (sp28 * 4 * 4) + temp_a4, sp28, format, temp_a4);
                            temp_a0_4 = sp10 + 0x831C;
                            __glMgrFreeConvolutionState(temp_a0_4, temp_a0_4, sp28, 0x831C);
                            temp_a0_5 = sp0->unk-7CE4;
                            __glMgrCvtToInternalFmt(temp_a0_5, temp_a0_5, sp28, internalformat);
                            return;
                        }
                        __glSetError(0x500);
                        return;
                    }
                } else {
                    __glSetError(0x500);
                }
            } else {
                __glSetError(0x501);
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_ConvolutionParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp0;
    f32 temp_f4;

    sp0 = (s64) params;
    if (__glBeginMode != 1) {
        __glMgrFreeConvolutionState((__GLcontext *) target);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            switch (pname) {                        /* irregular */
            default:
                __glSetError(0x500);
                return;
            case GL_CONVOLUTION_BORDER_MODE_EXT:
                temp_f4 = sp0->unk0;
                if (temp_f4 == 32790.0f) {
                    M2C_ERROR(/* Read from unset register $v0 */)->unk4C = (s32) (s64) temp_f4;
                    return;
                }
                __glSetError(0x500);
                return;
            case GL_CONVOLUTION_FILTER_SCALE_EXT:
                M2C_ERROR(/* Read from unset register $v0 */)->unk2C = (f32) sp0->unk0;
                M2C_ERROR(/* Read from unset register $v0 */)->unk30 = (f32) sp0->unk4;
                M2C_ERROR(/* Read from unset register $v0 */)->unk34 = (f32) sp0->unk8;
                M2C_ERROR(/* Read from unset register $v0 */)->unk38 = (f32) sp0->unkC;
                break;
            case GL_CONVOLUTION_FILTER_BIAS_EXT:
                M2C_ERROR(/* Read from unset register $v0 */)->unk3C = (f32) sp0->unk0;
                M2C_ERROR(/* Read from unset register $v0 */)->unk40 = (f32) sp0->unk4;
                M2C_ERROR(/* Read from unset register $v0 */)->unk44 = (f32) sp0->unk8;
                M2C_ERROR(/* Read from unset register $v0 */)->unk48 = (f32) sp0->unkC;
                break;
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_ConvolutionParameterfEXT(enum GLenum target, enum GLenum pname, f32 params) {
    if (pname != GL_CONVOLUTION_BORDER_MODE_EXT) {
        __glSetError(0x500);
        return;
    }
    __glMgrim_ConvolutionParameterfvEXT(target, pname, sp);
}

void __glMgrim_ConvolutionParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    s64 sp0;
    s32 temp_a0;

    sp0 = (s64) params;
    if (__glBeginMode != 1) {
        __glMgrFreeConvolutionState((__GLcontext *) target);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            switch (pname) {                        /* irregular */
            default:
                __glSetError(0x500);
                return;
            case GL_CONVOLUTION_BORDER_MODE_EXT:
                temp_a0 = sp0->unk0;
                if (temp_a0 != 0x8016) {
                    __glSetError(0x500);
                    return;
                }
                M2C_ERROR(/* Read from unset register $v0 */)->unk4C = temp_a0;
                return;
            case GL_CONVOLUTION_FILTER_SCALE_EXT:
                M2C_ERROR(/* Read from unset register $v0 */)->unk2C = (f32) sp0->unk0;
                M2C_ERROR(/* Read from unset register $v0 */)->unk30 = (f32) sp0->unk4;
                M2C_ERROR(/* Read from unset register $v0 */)->unk34 = (f32) sp0->unk8;
                M2C_ERROR(/* Read from unset register $v0 */)->unk38 = (f32) sp0->unkC;
                break;
            case GL_CONVOLUTION_FILTER_BIAS_EXT:
                M2C_ERROR(/* Read from unset register $v0 */)->unk3C = (f32) sp0->unk0;
                M2C_ERROR(/* Read from unset register $v0 */)->unk40 = (f32) sp0->unk4;
                M2C_ERROR(/* Read from unset register $v0 */)->unk44 = (f32) sp0->unk8;
                M2C_ERROR(/* Read from unset register $v0 */)->unk48 = (f32) sp0->unkC;
                break;
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_ConvolutionParameteriEXT(enum GLenum target, enum GLenum pname, s32 params) {
    if (pname != GL_CONVOLUTION_BORDER_MODE_EXT) {
        __glSetError(0x500);
        return;
    }
    __glMgrim_ConvolutionParameterivEXT(target, pname, sp);
}

void __glMgrim_GetConvolutionFilterEXT(enum GLenum target, enum GLenum format, enum GLenum type, void *image) {
    s64 sp260;
    s64 sp258;
    f64 sp230;
    f64 sp228;
    f64 sp220;
    f64 sp218;
    f64 sp210;
    f64 sp208;
    f64 sp200;
    f64 sp1F8;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s1;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f1_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f3;
    f32 temp_f3_2;
    s32 temp_a0;
    s32 var_a7;
    s32 var_at;
    u32 temp_a1;
    void *temp_a1_2;

    temp_s1 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (((target == GL_CONVOLUTION_2D_EXT) || (target == GL_CONVOLUTION_1D_EXT)) && (image != NULL)) {
            if (format >= GL_RGB) {
                switch (format) {                   /* irregular */
                case GL_RGBA:
                    goto block_12;
                }
            } else {
                if (format >= GL_BLUE) {
                    if (format < GL_ALPHA) {
                        goto block_12;
                    }
                    if (format == GL_ALPHA) {
                        goto block_12;
                    }
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    __glSetError(0x500, GL_ONE);
                    return;
                }
                if (format >= GL_GREEN) {
                    if (format < GL_BLUE) {
                        goto block_12;
                    }
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    __glSetError(0x500, GL_ONE);
                    return;
                }
                if (format != GL_RED) {
                default:
                    __glSetError(0x500, GL_ONE);
                    return;
                }
            case GL_ABGR_EXT:
block_12:
                sp258 = (s64) image;
                sp260 = (s64) type;
                temp_a1 = type - 0x1400;
                temp_a1_2 = (temp_a1 * 4) + (&sub_0dbf0000 - 0x14B0);
                if (temp_a1 < 7U) {
                    __glMgrFreeConvolutionState((__GLcontext *) target, temp_a1_2, 1);
                    temp_f3 = temp_s1->unk7858;
                    temp_f2 = temp_s1->unk787C;
                    temp_s1->unk787C = 1.0f;
                    temp_f1 = temp_s1->unk785C;
                    temp_s1->unk785C = 1.0f;
                    temp_s1->unk7858 = 1.0f;
                    sp230 = (f64) temp_f2;
                    temp_f2_2 = temp_s1->unk7854;
                    temp_s1->unk7854 = 1.0f;
                    sp228 = (f64) temp_f1;
                    temp_f1_2 = temp_s1->unk7890;
                    temp_s1->unk7890 = 1.0f;
                    sp220 = (f64) temp_f3;
                    temp_f3_2 = temp_s1->unk788C;
                    temp_s1->unk788C = 1.0f;
                    sp218 = (f64) temp_f2_2;
                    temp_f2_3 = temp_s1->unk7888;
                    temp_s1->unk7888 = 1.0f;
                    sp210 = (f64) temp_f1_2;
                    temp_f1_3 = temp_s1->unk7884;
                    temp_s1->unk7884 = 1.0f;
                    var_a7 = 0x8049;
                    sp8 = *M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
                    sp208 = (f64) temp_f3_2;
                    sp200 = (f64) temp_f2_3;
                    sp1F8 = (f64) temp_f1_3;
                    if ((temp_a0 != 0x1909) && (temp_a0 != 0x8049)) {
                        var_a7 = 1;
                        if (temp_a0 != 0x190A) {
                            var_at = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
                            goto block_17;
                        }
                        sp0 = 1;
                    } else {
                        var_at = 0x1903;
block_17:
                        sp0 = var_at;
                    }
                    sp4 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                    __glInitImagePack(temp_s1, sp, M2C_ERROR(/* Read from unset register $v0 */)->unk10, M2C_ERROR(/* Read from unset register $v0 */)->unk14, format, sp260, sp258, var_a7);
                    __glInitPacker(temp_s1, sp);
                    __glInitUnpacker(temp_s1, sp);
                    temp_s1->unk3158(temp_s1, sp, 0);
                    temp_s1->unk7854 = (f32) sp218;
                    temp_s1->unk7890 = (f32) sp210;
                    temp_s1->unk785C = (f32) sp228;
                    temp_s1->unk787C = (f32) sp230;
                    temp_s1->unk7858 = (f32) sp220;
                    temp_s1->unk788C = (f32) sp208;
                    temp_s1->unk7888 = (f32) sp200;
                    temp_s1->unk7884 = (f32) sp1F8;
                    return;
                }
                __glSetError(0x500, (enum GLenum) temp_a1_2, GL_ONE);
            }
        } else {
            __glSetError(0x500, GL_ONE);
        }
    } else {
        __glSetError(0x502, GL_ONE);
    }
}

void __glMgrim_GetConvolutionParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp0;
    u32 temp_a0;

    sp0 = (s64) params;
    if (__glBeginMode != 1) {
        __glMgrFreeConvolutionState((__GLcontext *) target, target);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (target != GL_CONVOLUTION_1D_EXT) {
                goto block_4;
            }
            if ((pname == GL_CONVOLUTION_HEIGHT_EXT) || (pname == GL_MAX_CONVOLUTION_HEIGHT_EXT)) {
                __glSetError(0x500);
                return;
            }
block_4:
            temp_a0 = pname + 0xFFFF7FED;
            if (temp_a0 < 9U) {
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x1490))) { /* unable to parse jump table */
                case 1:
                    sp0->unk0 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk2C;
                    sp0->unk4 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk30;
                    sp0->unk8 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk34;
                    sp0->unkC = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk38;
                    return;
                case 6:
                    sp0->unk0 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk14;
                    break;
                case 2:
                    sp0->unk0 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk3C;
                    sp0->unk4 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk40;
                    sp0->unk8 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk44;
                    sp0->unkC = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk48;
                    break;
                case 0:
                    sp0->unk0 = (f32) ((u64) ((s64) M2C_ERROR(/* Read from unset register $v0 */)->unk4C << 0x20) >> 0x20);
                    break;
                case 4:
                    sp0->unk0 = (f32) ((u64) ((s64) M2C_ERROR(/* Read from unset register $v0 */)->unkC << 0x20) >> 0x20);
                    break;
                case 5:
                    sp0->unk0 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk10;
                    break;
                case 7:
                    sp0->unk0 = 7.0f;
                    break;
                case 8:
                    sp0->unk0 = 7.0f;
                    break;
                }
            } else {
            case 3:
                __glSetError(0x500);
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetConvolutionParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    s64 sp0;
    u32 temp_a0;

    sp0 = (s64) params;
    if (__glBeginMode != 1) {
        __glMgrFreeConvolutionState((__GLcontext *) target, target);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (target != GL_CONVOLUTION_1D_EXT) {
                goto block_4;
            }
            if ((pname == GL_CONVOLUTION_HEIGHT_EXT) || (pname == GL_MAX_CONVOLUTION_HEIGHT_EXT)) {
                __glSetError(0x500);
                return;
            }
block_4:
            temp_a0 = pname + 0xFFFF7FED;
            if (temp_a0 < 9U) {
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x1468))) { /* unable to parse jump table */
                case 1:
                    sp0->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk2C;
                    sp0->unk4 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk30;
                    sp0->unk8 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk34;
                    sp0->unkC = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk38;
                    return;
                case 6:
                    sp0->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk14;
                    break;
                case 2:
                    sp0->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk3C;
                    sp0->unk4 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk40;
                    sp0->unk8 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk44;
                    sp0->unkC = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk48;
                    break;
                case 0:
                    sp0->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk4C;
                    break;
                case 4:
                    sp0->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unkC;
                    break;
                case 5:
                    sp0->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk10;
                    break;
                case 7:
                    sp0->unk0 = 7;
                    break;
                case 8:
                    sp0->unk0 = 7;
                    break;
                }
            } else {
            case 3:
                __glSetError(0x500);
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetSeparableFilterEXT(enum GLenum target, enum GLenum format, enum GLenum type, void *row, void *column, void *span) {
    s64 sp268;
    s64 sp260;
    s64 sp240;
    s64 sp238;
    f64 sp230;
    f64 sp228;
    f64 sp220;
    f64 sp218;
    f64 sp210;
    f64 sp208;
    f64 sp200;
    f64 sp1F8;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s1;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f3;
    s32 temp_a0;
    s32 temp_a7;
    s32 var_at;
    s32 var_v1;
    u32 temp_a0_2;
    u32 temp_a1;
    void *temp_a1_2;

    temp_s1 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((target == GL_SEPARABLE_2D_EXT) && (row != NULL) && (column != NULL)) {
            if (format >= GL_RGB) {
                switch (format) {                   /* switch 1; irregular */
                case GL_RGBA:                       /* switch 1 */
                    goto block_12;
                }
            } else {
                if (format >= GL_BLUE) {
                    if (format < GL_ALPHA) {
                        goto block_12;
                    }
                    if (format == GL_ALPHA) {
                        goto block_12;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(0x500, GL_ONE);
                    return;
                }
                if (format >= GL_GREEN) {
                    if (format < GL_BLUE) {
                        goto block_12;
                    }
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    __glSetError(0x500, GL_ONE);
                    return;
                }
                if (format != GL_RED) {
                default:                            /* switch 1 */
                    __glSetError(0x500, GL_ONE);
                    return;
                }
            case GL_ABGR_EXT:                       /* switch 1 */
block_12:
                sp240 = (s64) type;
                sp260 = (s64) row;
                sp268 = (s64) column;
                temp_a1 = type - 0x1400;
                temp_a1_2 = (temp_a1 * 4) + (&sub_0dbf0000 - 0x1440);
                if (temp_a1 < 7U) {
                    __glMgrFreeConvolutionState((__GLcontext *) target, temp_a1_2, 1);
                    sp220 = (f64) temp_s1->unk7858;
                    temp_f3 = temp_s1->unk788C;
                    temp_s1->unk788C = 1.0f;
                    sp228 = (f64) temp_s1->unk785C;
                    temp_f1 = temp_s1->unk7890;
                    temp_s1->unk7890 = 1.0f;
                    sp230 = (f64) temp_s1->unk787C;
                    temp_f2 = temp_s1->unk7854;
                    temp_s1->unk7854 = 1.0f;
                    temp_s1->unk7858 = 1.0f;
                    temp_s1->unk785C = 1.0f;
                    temp_s1->unk787C = 1.0f;
                    sp210 = (f64) temp_f1;
                    temp_f1_2 = temp_s1->unk7884;
                    temp_s1->unk7884 = 1.0f;
                    sp218 = (f64) temp_f2;
                    temp_f2_2 = temp_s1->unk7888;
                    temp_s1->unk7888 = 1.0f;
                    sp8 = *M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
                    sp208 = (f64) temp_f3;
                    sp200 = (f64) temp_f2_2;
                    sp1F8 = (f64) temp_f1_2;
                    if ((temp_a0 != 0x1909) && (temp_a0 != 0x8049)) {
                        if (temp_a0 == 0x190A) {
                            sp238 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_at = 1;
                        } else {
                            var_at = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
                            sp238 = M2C_ERROR(/* Read from unset register $v0 */);
                        }
                        sp0 = var_at;
                    } else {
                        sp238 = M2C_ERROR(/* Read from unset register $v0 */);
                        sp0 = 0x1903;
                    }
                    temp_a7 = sp238->unk4;
                    sp4 = temp_a7;
                    __glInitImagePack(temp_s1, sp, sp238->unk10, 1, format, sp240, sp260, temp_a7);
                    __glInitPacker(temp_s1, sp);
                    __glInitUnpacker(temp_s1, sp);
                    temp_s1->unk3158(temp_s1, sp, 0);
                    temp_a0_2 = sp0 - 0x1400;
                    if (temp_a0_2 < 7U) {
                        switch (*((temp_a0_2 * 4) + (&sub_0dbf0000 - 0x1420))) { /* switch 2; unable to parse jump table */
                        case 2:                     /* switch 2 */
                        case 3:                     /* switch 2 */
                            var_v1 = (sp238->unk10 * 2) + sp8;
block_28:
                            sp8 = var_v1;
                            break;
                        case 0:                     /* switch 2 */
                        case 1:                     /* switch 2 */
                            sp8 += sp238->unk10;
                            break;
                        case 4:                     /* switch 2 */
                        case 5:                     /* switch 2 */
                            var_v1 = (sp238->unk10 * 4) + sp8;
                            goto block_28;
                        case 6:                     /* switch 2 */
                            sp8 += sp238->unk10 * 4;
                            break;
                        }
                    }
                    __glInitImagePack(temp_s1, sp, sp238->unk14, 1, format, sp240, sp268);
                    __glInitPacker(temp_s1, sp);
                    __glInitUnpacker(temp_s1, sp);
                    temp_s1->unk3158(temp_s1, sp, 0);
                    temp_s1->unk7854 = (f32) sp218;
                    temp_s1->unk7890 = (f32) sp210;
                    temp_s1->unk785C = (f32) sp228;
                    temp_s1->unk787C = (f32) sp230;
                    temp_s1->unk7858 = (f32) sp220;
                    temp_s1->unk788C = (f32) sp208;
                    temp_s1->unk7888 = (f32) sp200;
                    temp_s1->unk7884 = (f32) sp1F8;
                    return;
                }
                __glSetError(0x500, (enum GLenum) temp_a1_2, GL_ONE);
            }
        } else {
            __glSetError(0x500, GL_ONE);
        }
    } else {
        __glSetError(0x502, GL_ONE);
    }
}

void __glMgrim_CopyConvolutionFilter1DEXT(enum GLenum target, enum GLenum internalformat, s32 x, s32 y, s32 width) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s2;
    void *temp_v0;

    temp_s2 = __glCurrentContext;
    sp18 = (s64) y;
    sp0 = (s64) x;
    sp10 = (s64) internalformat;
    sp8 = (s64) target;
    if (__glBeginMode != 1) {
        temp_v0 = temp_s2->imports.malloc(temp_s2, width * 4);
        if (temp_v0 == NULL) {
            temp_s2->imports.fatal(temp_s2, &sub_0dbf0000 - 0x1400);
        }
        __glMgrim_ReadPixels((s32) sp0, (s32) sp18, width, 1, GL_RGBA, GL_UNSIGNED_BYTE, temp_v0);
        __glMgrim_ConvolutionFilter1DEXT((enum GLenum) sp8, (enum GLenum) sp10, width, GL_RGBA, GL_UNSIGNED_BYTE, temp_v0);
        __glMgrim_ConvolutionFilter1DEXT((enum GLenum) temp_s2, (enum GLenum) temp_v0, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */), M2C_ERROR(/* Read from unset register $a4 */), M2C_ERROR(/* Read from unset register $a5 */));
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_CopyConvolutionFilter2DEXT(enum GLenum target, enum GLenum internalformat, s32 x, s32 y, s32 width, s32 height) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s3;
    void *temp_v0;

    temp_s3 = __glCurrentContext;
    sp8 = (s64) y;
    sp0 = (s64) x;
    sp18 = (s64) internalformat;
    sp10 = (s64) target;
    if (__glBeginMode != 1) {
        temp_v0 = temp_s3->imports.malloc(temp_s3, width * height * 4);
        if (temp_v0 == NULL) {
            temp_s3->imports.fatal(temp_s3, &sub_0dbf0000 - 0x13B8);
        }
        __glMgrim_ReadPixels((s32) sp0, (s32) sp8, width, height, GL_RGBA, GL_UNSIGNED_BYTE, temp_v0);
        __glMgrim_ConvolutionFilter2DEXT((enum GLenum) sp10, (enum GLenum) sp18, width, height, GL_RGBA, GL_UNSIGNED_BYTE, temp_v0);
        __glMgrim_ConvolutionFilter2DEXT((enum GLenum) temp_s3, (enum GLenum) temp_v0, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */), M2C_ERROR(/* Read from unset register $a4 */), M2C_ERROR(/* Read from unset register $a5 */), M2C_ERROR(/* Read from unset register $a6 */));
        return;
    }
    __glSetError(0x502);
}
