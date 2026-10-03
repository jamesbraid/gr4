typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x40];                  /* maybe part of gcState[0x11]? */
    /* 0x00D8 */ ? unkD8;                           /* inferred */
    /* 0x00D8 */ char padD8[0x80];
    /* 0x0158 */ f32 unk158;                        /* inferred */
    /* 0x015C */ f32 unk15C;                        /* inferred */
    /* 0x0160 */ char pad160[8];                    /* maybe part of unk15C[3]? */
    /* 0x0168 */ f32 unk168;                        /* inferred */
    /* 0x016C */ char pad16C[0x2E8];                /* maybe part of unk168[0xBB]? */
    /* 0x0454 */ u8 unk454;                         /* inferred */
    /* 0x0455 */ u8 unk455;                         /* inferred */
    /* 0x0456 */ char pad456[2];                    /* maybe part of unk455[3]? */
    /* 0x0458 */ s32 unk458;                        /* inferred */
    /* 0x045C */ s32 unk45C;                        /* inferred */
    /* 0x0460 */ s32 unk460;                        /* inferred */
    /* 0x0464 */ s32 unk464;                        /* inferred */
    /* 0x0468 */ char pad468[0x238];                /* maybe part of unk464[0x8F]? */
    /* 0x06A0 */ s32 unk6A0;                        /* inferred */
    /* 0x06A4 */ char pad6A4[0x56C];                /* maybe part of unk6A0[0x15C]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x4FF];                /* maybe part of yInverted[0x500]? */
    /* 0x11CC */ s32 unk11CC;                       /* inferred */
    /* 0x11D0 */ char pad11D0[0x1BBC];              /* maybe part of unk11CC[0x6F0]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x4A74];              /* maybe part of procs[0x17]? */
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

extern ? SYMBOL_LOCATION;
extern ? sub_0dbe0000;

void __glMgrGeneralBitmap(__GLcontext *gc, u64 arg1, s32 arg6, void *arg7, f32 fparg2, f32 fparg3, f64 fparg4, f64 fparg5, ...) {
    s64 spD0;
    s64 spC8;
    s64 spC0;
    u64 spB8;
    u64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    u64 sp70;
    s64 sp60;
    s64 sp58;
    f64 sp8;
    f64 sp0;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_at_5;
    s32 temp_s2;
    s32 temp_s8;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_at;
    s32 var_s3;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_v1;
    s64 temp_s3;
    s64 temp_v1_2;
    s64 var_s1;
    s64 var_s1_2;
    u32 temp_at_2;
    u32 temp_at_3;
    u32 temp_at_4;
    u32 temp_s4;
    u32 temp_s4_2;
    u32 var_a1_2;
    u32 var_s2;
    u32 var_s2_2;
    u32 var_s7;
    u64 temp_a0_2;
    u64 temp_at;

    sp98 = (s64) gc;
    temp_a3 = arg7->unk4;
    spB0 = arg1;
    sp8 = fparg4;
    sp0 = fparg5;
    if (temp_a3 != 0) {
        var_a1 = temp_a3;
    } else {
        var_a1 = (s32) sp98;
    }
    temp_at = ((s32) (sp98 + 0x3F) >> 6) * 8;
    sp70 = temp_at;
    temp_at_2 = temp_at >> 2;
    spB8 = (u64) temp_at_2;
    temp_s8 = arg7->unk10;
    if (temp_at_2 < 0xBU) {
        var_s7 = *((spB8 * 4) + (&sub_0dbe0000 - 0x3BD8));
    } else {
        M2C_TRAP_IF(spB8 == 0);
        var_s7 = 0x200U / spB8;
    }
    temp_s3 = temp_s8 - 1;
    spC0 = temp_s3;
    temp_at_3 = (u32) (var_a1 + 7) >> 3;
    spC8 = (s64) temp_at_3;
    temp_a0 = var_s7 < spB0;
    temp_v1 = (s32) (sp98 + 7) >> 3;
    spD0 = (s64) temp_v1;
    *(u32 *)0x74080 = 0x9114;
    *(u32 *)0x74080 = (((((8 - (temp_v1 & 7)) & 7 & 7) << 0xE) | 0xF) & ~0x20000) | ((arg7->unk1 != 0) << 0x11);
    var_s3 = (s32) ((second half of f64) * 0.125) + ((arg7->unk8 * (~temp_s3 & ((temp_at_3 + temp_s8) - 1))) + arg6);
    if (temp_a0 != 0) {
        *(u32 *)0x74080 = (u32) sp98;
        *(u32 *)0x74080 = var_s7;
        *(u32 *)0x74080 = (bitwise u32) fparg2;
    } else {
        *(u32 *)0x74080 = (u32) sp98;
        *(u32 *)0x74080 = (u32) spB0;
        *(u32 *)0x74080 = (bitwise u32) fparg2;
    }
    *(u32 *)0x74080 = (bitwise u32) fparg3;
    spA8 = 0;
    if (temp_a0 != 0) {
        spA0 = var_s7 - 1;
        temp_v1_2 = sp98 & 0xFFFF;
        sp78 = temp_v1_2;
        sp88 = sp98 - 1;
        sp60 = spB8 + 1;
        sp80 = temp_v1_2 | (var_s7 << 0x10);
        sp58 = sp70 & 0xFFFFF;
        sp90 = spB8 * var_s7;
loop_12:
        *(u32 *)0x74080 = 0x9008;
        *(u32 *)0x74080 = 1;
        *(u32 *)0x74080 = (u32) sp90;
        var_s5 = 0;
        if (var_s7 != 0) {
loop_22:
            temp_v0 = var_s3 & 3;
            *(u32 *)0x74080 = (temp_v0 << 0x16) | sp58 | 0x80000000;
            temp_s4 = (u32) (spD0 + temp_v0 + 3) >> 2;
            var_s2 = temp_s4;
            if (temp_v0 != 0) {
                var_s1 = sp60;
            } else {
                var_s1 = (s64) spB8;
            }
            __glMgr_PushPixels((__GLcontext *) temp_s4, temp_s4, -4 & var_s3, sp58);
            temp_a1 = var_s1 - temp_s4;
            if ((s32) temp_s4 < var_s1) {
                var_a0 = temp_a1 & 3;
                var_v1 = temp_a1 >> 2;
                if (var_a0 != 0) {
                    do {
                        var_s2 += 1;
                        var_a0 -= 1;
                        *(u32 *)0x74080 = 0;
                    } while (var_a0 != 0);
                    var_v1 = temp_a1 >> 2;
                }
                if (var_v1 != 0) {
                    var_a1_2 = var_s2;
                    do {
                        var_a1_2 += 4;
                        *(u32 *)0x74080 = 0;
                        *(u32 *)0x74080 = 0;
                        *(u32 *)0x74080 = 0;
                        *(u32 *)0x74080 = 0;
                    } while (var_a1_2 != var_s1);
                }
            }
            var_s5 += 1;
            if (var_s1 & 1) {
                *(u32 *)0x74080 = 0;
            }
            var_s3 += ~spC0 & ((spC8 + temp_s8) - 1);
            if (var_s5 != var_s7) {
                goto loop_22;
            }
        }
        spA0 += var_s7;
        temp_a0_2 = spB0 - var_s7;
        spB0 = temp_a0_2;
        temp_a0_3 = var_s7 < temp_a0_2;
        spA8 += var_s7;
        if (temp_a0_3 != 0) {
            *(u32 *)0x74080 = 0x7C08;
            *(u32 *)0x74080 = 1;
            *(u32 *)0x74080 = 4;
            *(u32 *)0x74080 = 0x80000010;
            *(u32 *)0x74080 = 0x153;
            *(u32 *)0x74080 = (u32) sp80;
            *(u32 *)0x74080 = SYMBOL_LOCATION.unk54;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = 0x8060;
            *(u32 *)0x74080 = 1;
            *(u32 *)0x74080 = 3;
            *(u32 *)0x74080 = 0x20;
            *(u32 *)0x74080 = SYMBOL_LOCATION.unk490;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = 8;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = (u32) spA8;
            *(u32 *)0x74080 = (u32) sp88;
            *(u32 *)0x74080 = (u32) spA0;
            *(u32 *)0x74080 = (u32) sp98;
            *(u32 *)0x74080 = var_s7;
            *(u32 *)0x74080 = (bitwise u32) fparg2;
            *(u32 *)0x74080 = (bitwise u32) fparg3;
            *(u32 *)0x74080 = 8;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = (u32) spA8;
            *(u32 *)0x74080 = (u32) sp88;
            *(u32 *)0x74080 = (u32) spA0;
            *(u32 *)0x74080 = (u32) sp98;
            *(u32 *)0x74080 = var_s7;
            *(u32 *)0x74080 = (bitwise u32) fparg2;
            *(u32 *)0x74080 = (bitwise u32) fparg3;
            if (temp_a0_3 != 0) {
                goto loop_12;
            }
        } else {
            *(u32 *)0x74080 = 0x7C08;
            *(u32 *)0x74080 = 1;
            *(u32 *)0x74080 = 4;
            *(u32 *)0x74080 = 0x80000010;
            *(u32 *)0x74080 = 0x153;
            *(u32 *)0x74080 = (spB0 << 0x10) | sp78;
            *(u32 *)0x74080 = SYMBOL_LOCATION.unk54;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = 0x8060;
            *(u32 *)0x74080 = 1;
            *(u32 *)0x74080 = 3;
            *(u32 *)0x74080 = 0x20;
            *(u32 *)0x74080 = SYMBOL_LOCATION.unk490;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = 8;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = (u32) spA8;
            *(u32 *)0x74080 = (u32) sp88;
            temp_at_4 = (spB0 + spA8) - 1;
            *(u32 *)0x74080 = temp_at_4;
            *(u32 *)0x74080 = (u32) sp98;
            *(u32 *)0x74080 = (u32) spB0;
            *(u32 *)0x74080 = (bitwise u32) fparg2;
            *(u32 *)0x74080 = (bitwise u32) fparg3;
            *(u32 *)0x74080 = 8;
            *(u32 *)0x74080 = 0;
            *(u32 *)0x74080 = (u32) spA8;
            *(u32 *)0x74080 = (u32) sp88;
            *(u32 *)0x74080 = temp_at_4;
            *(u32 *)0x74080 = (u32) sp98;
            *(u32 *)0x74080 = (u32) spB0;
            *(u32 *)0x74080 = (bitwise u32) fparg2;
            *(u32 *)0x74080 = (bitwise u32) fparg3;
            if (temp_a0_3 != 0) {
                goto loop_12;
            }
        }
    }
    if (spB0 != 0) {
        *(u32 *)0x74080 = 0x9008;
        *(u32 *)0x74080 = 1;
        var_s5_2 = 0;
        *(u32 *)0x74080 = spB0 * spB8;
        if ((s32) spB0 > 0) {
            var_a2 = 0xFFFFF;
            sp60 = spB8 + 1;
            sp58 = sp70 & 0xFFFFF;
loop_35:
            temp_at_5 = var_s3 & 3;
            *(u32 *)0x74080 = (temp_at_5 << 0x16) | sp58 | 0x80000000;
            temp_s4_2 = (u32) (spD0 + temp_at_5 + 3) >> 2;
            var_s2_2 = temp_s4_2;
            if (temp_at_5 != 0) {
                var_s1_2 = sp60;
            } else {
                var_s1_2 = (s64) spB8;
            }
            __glMgr_PushPixels((__GLcontext *) temp_s4_2, temp_s4_2, -4 & var_s3, var_a2);
            temp_a0_4 = var_s1_2 - temp_s4_2;
            if ((s32) temp_s4_2 < var_s1_2) {
                if (temp_a0_4 & 1) {
                    if ((s32) var_s2_2 < var_s1_2) {
                        *(u32 *)0x74080 = 0;
                    }
                    var_s2_2 += 1;
                }
                if ((temp_a0_4 >> 1) != 0) {
                    var_at = (s32) var_s2_2 < var_s1_2;
loop_45:
                    temp_s2 = var_s2_2 + 1;
                    if (var_at != 0) {
                        *(u32 *)0x74080 = 0;
                    }
                    if (temp_s2 < var_s1_2) {
                        *(u32 *)0x74080 = 0;
                    }
                    var_s2_2 = temp_s2 + 1;
                    var_at = (s32) var_s2_2 < var_s1_2;
                    if (var_s2_2 != var_s1_2) {
                        goto loop_45;
                    }
                }
            }
            if (var_s1_2 & 1) {
                *(u32 *)0x74080 = 0;
            }
            var_s5_2 += 1;
            var_a2 = ~spC0 & ((spC8 + temp_s8) - 1);
            var_s3 += var_a2;
            if (spB0 != var_s5_2) {
                goto loop_35;
            }
        }
    }
    *(u32 *)0x74080 = 0x9208;
    *(u32 *)0x74080 = (bitwise u32) sp8;
    *(u32 *)0x74080 = (bitwise u32) sp0;
}

void __glMgrim_Bitmap(enum GLenum width, enum GLenum height, f32 xorig, f32 yorig, f32 xmove, f32 ymove, u8 *bitmap) {
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_s0;
    enum GLenum temp_a2_2;
    enum GLenum temp_a2_3;
    enum GLenum temp_a3;
    enum GLenum temp_a3_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_s0_2;
    s32 temp_t0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a3 = temp_s0->renderMode;
        if (temp_a3 != GL_RENDER) {
            goto block_2;
        }
        if ((width > GL_ZERO) && (height > GL_ZERO) && (bitmap != NULL)) {
            if ((__glCurrentContext->unk464 == 1) && (__glCurrentContext->unk454 == 0) && (__glCurrentContext->unk455 == 0) && (__glCurrentContext->unk458 == 0) && (__glCurrentContext->unk45C == 0)) {
                if (__glCurrentContext->unk460 == 0) {
                    temp_a7 = (s32) (width + 7) >> 3;
                    temp_a5 = (temp_a7 * height) + 3;
                    temp_a3_2 = temp_a5 >> 2;
                    temp_a2 = temp_a3_2 < 0x201;
                    if (temp_a2 != 0) {
                        temp_s0_2 = temp_a3_2 & 1;
                        temp_t0 = (s32) bitmap & 3;
                        temp_a4 = temp_a5 & ~3;
                        *(void *)0x74080 = 0x9420;
                        *(void *)0x74080 = (enum GLenum) ((((8 - (temp_a7 & 7)) & 7 & 7) << 0xE) | 0xF);
                        *(void *)0x74080 = width;
                        *(void *)0x74080 = height;
                        *(void *)0x74080 = (bitwise enum GLenum) xorig;
                        *(void *)0x74080 = (bitwise enum GLenum) yorig;
                        *(void *)0x74080 = (bitwise enum GLenum) xmove;
                        *(void *)0x74080 = (bitwise enum GLenum) ymove;
                        *(void *)0x74080 = temp_a3_2;
                        if (temp_t0 != 0) {
                            temp_a0 = temp_a3_2 + 1;
                            temp_a2_2 = (temp_t0 << 0x16) | temp_a4 | 0x80000000;
                            *(void *)0x74080 = temp_a2_2;
                            __glMgr_PushPixels(temp_a0, temp_a0, -4 & (s32) bitmap, temp_a2_2, temp_a3_2, temp_a4, (void *)0x74080, temp_a7);
                            if (temp_s0_2 == 0) {
                                *(void *)0x74080 = GL_ZERO;
                            }
                        } else {
                            temp_a2_3 = temp_a4 | 0x80000000;
                            *(void *)0x74080 = temp_a2_3;
                            __glMgr_PushPixels((__GLcontext *) temp_a3_2, temp_a3_2, bitmap, temp_a2_3, temp_a3_2, temp_a4, (void *)0x74080, temp_a7);
                            if (temp_s0_2 != 0) {
                                *(void *)0x74080 = GL_ZERO;
                            }
                        }
                    } else {
                        __glMgrim_CopyConvolutionFilter2DEXT(width, height, temp_a2, temp_a3_2, (enum GLenum) __glCurrentContext, temp_a5);
                    }
                } else {
                    goto block_28;
                }
            } else {
block_28:
                __glMgrim_CopyConvolutionFilter2DEXT(width, height, M2C_ERROR(/* Read from unset register $a2 */), temp_a3, (enum GLenum) __glCurrentContext, 1);
            }
            return;
        }
block_2:
        if ((width >= GL_ZERO) && (height >= GL_ZERO)) {
            if (temp_a3 != GL_SELECT) {
                if (temp_a3 != GL_FEEDBACK) {
                    if ((width != GL_ZERO) && (height != GL_ZERO) && (bitmap != NULL)) {
                        return;
                    }
                    __glMgrUpdateRasterPos((__GLcontext *) width, 0x1C02, temp_a3, __glCurrentContext, 1, xmove, ymove);
                    return;
                }
                if (__glCurrentContext->unk925C != 0) {
                    sp0 = (bitwise f64) ymove;
                    sp8 = (bitwise f64) xmove;
                    __glFeedbackBitmap(temp_s0, &temp_s0->unkD8, 0x1C02, temp_a3, __glCurrentContext, 1);
                    temp_s0->unk15C += (bitwise f32) sp0;
                    temp_s0->unk158 += (bitwise f32) sp8;
                } else {
                    *(enum GLenum *)0x74080 = 0x10004;
                    *(enum GLenum *)0x74080 = GL_BITMAP_TOKEN;
                    __glMgrUpdateRasterPos((__GLcontext *) width, 0x1C02, temp_a3, __glCurrentContext, 1, xmove, ymove);
                }
                return;
            }
            __glMgrUpdateRasterPos((__GLcontext *) width, 0x1C02, temp_a3, __glCurrentContext, 1, xmove, ymove);
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrRenderBitmap(__GLcontext *gc, enum GLenum *arg1, s32 arg2, __GLcontext *arg5, ...) {
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *var_a5;
    enum GLenum *temp_s0;
    enum GLenum *var_a1;
    enum GLenum temp_a0;
    enum GLenum temp_a2;
    enum GLenum temp_a3;
    enum GLenum temp_a4;
    enum GLenum temp_a4_2;
    enum GLenum temp_a7_2;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_s1;

    var_a1 = arg1;
    var_a5 = arg5;
    temp_s0 = var_a1;
    temp_a4 = gc->renderMode;
    if (temp_a4 != GL_RENDER) {
        goto block_2;
    }
    temp_a0 = temp_s0->unk0;
    if ((gc->unk925C == NULL) && (temp_a0 > 0)) {
        var_a1 = (enum GLenum *) temp_s0->unk4;
        if ((s32) var_a1 > 0) {
            var_a5 = temp_a0 + 7;
            if (arg2 != 0) {
                temp_a5 = (s32) var_a5 >> 3;
                temp_a4_2 = (s32) (((s32) var_a1 * temp_a5) + 3) >> 2;
                temp_a3 = temp_a4_2 < 0x201;
                if (temp_a3 != GL_ZERO) {
                    temp_s1 = temp_a4_2 & 1;
                    temp_a6 = temp_a4_2 * 4;
                    temp_a7 = arg2 & 3;
                    *(void *)0x74080 = 0x9420;
                    *(void *)0x74080 = (enum GLenum) ((((8 - (temp_a5 & 7)) & 7 & 7) << 0xE) | 0xF);
                    *(void *)0x74080 = temp_a0;
                    *(void *)0x74080 = (enum GLenum) var_a1;
                    *(void *)0x74080 = (enum GLenum) temp_s0->unk8;
                    *(void *)0x74080 = (enum GLenum) temp_s0->unkC;
                    *(void *)0x74080 = (bitwise enum GLenum) temp_s0->unk10;
                    *(void *)0x74080 = (bitwise enum GLenum) temp_s0->unk14;
                    *(void *)0x74080 = temp_a4_2;
                    if (temp_a7 != 0) {
                        temp_a0_2 = temp_a4_2 + 1;
                        temp_a2 = (temp_a7 << 0x16) | temp_a6 | 0x80000000;
                        *(void *)0x74080 = temp_a2;
                        __glMgr_PushPixels(temp_a0_2, temp_a0_2, arg2 & ~3, temp_a2, (void *)0x74080, temp_a4_2, temp_a5, temp_a6, temp_a7);
                        if (temp_s1 == 0) {
                            *(void *)0x74080 = GL_ZERO;
                        }
                    } else {
                        temp_a7_2 = temp_a6 | 0x80000000;
                        *(void *)0x74080 = temp_a7_2;
                        __glMgr_PushPixels((__GLcontext *) temp_a4_2, temp_a4_2, arg2, temp_a3, temp_a4_2, temp_a5, temp_a6, temp_a7_2);
                        if (temp_s1 != 0) {
                            *(void *)0x74080 = GL_ZERO;
                        }
                    }
                } else {
                    __glMgrim_CopyConvolutionFilter2DEXT(temp_a0, (enum GLenum) var_a1, arg2, temp_a3, temp_a4_2, temp_a5);
                }
                return;
            }
        }
    }
block_2:
    if ((temp_s0->unk0 >= 0) && (temp_a0_3 = gc + 0x10000, (temp_s0->unk4 >= 0))) {
        if (temp_a4 != GL_SELECT) {
            temp_a0_4 = gc->unk925C;
            if (temp_a4 != GL_FEEDBACK) {
                if (temp_a0_4 != NULL) {
                    temp_a3_2 = gc->unk6A0 & 0x40030000;
                    if (temp_a3_2 == 0) {
                        if (gc->modes.rgbMode != 0) {
                            __glMgrim_Color4fv(&gc->unk168);
                        } else {
                            __glMgrim_Indexf(gc->unk168);
                        }
                        __glMgrim_RasterPos2f(gc->unk158, gc->unk15C);
                        gc->unk158 += temp_s0->unk10;
                        gc->unk15C += temp_s0->unk14 * (f32) gc->unk11CC;
                    } else {
                        __glRenderBitmap(gc, temp_s0, temp_a3_2, temp_a4, var_a5);
                    }
                } else {
                    __glMgrUpdateRasterPos(temp_a0_4, temp_a0_4, var_a1, 0x1C01, temp_a4, var_a5, temp_s0->unk10, temp_s0->unk14);
                }
            } else if (temp_a0_4 != NULL) {
                __glFeedbackBitmap(gc, &gc->unkD8, 0x1C01, temp_a4, var_a5);
                gc->unk158 += temp_s0->unk10;
                gc->unk15C += temp_s0->unk14;
            } else {
                *(enum GLenum *)0x74080 = 0x10004;
                *(enum GLenum *)0x74080 = GL_BITMAP_TOKEN;
                __glMgrUpdateRasterPos(temp_a0_4, temp_a0_4, var_a1, 0x1C01, 0x704, (enum GLenum *)0x74080, 0x10004, temp_s0->unk10, temp_s0->unk14);
            }
        } else {
            __glMgrUpdateRasterPos(temp_a0_3, temp_a0_3, var_a1, 0x1C01, temp_a4, var_a5, temp_s0->unk10, temp_s0->unk14);
        }
    } else {
        __glSetError(0x501, (enum GLenum) var_a1, temp_a4, var_a5);
    }
}
