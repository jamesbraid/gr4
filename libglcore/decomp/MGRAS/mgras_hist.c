typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x398];                 /* maybe part of gcState[0xE7]? */
    /* 0x0430 */ u8 unk430;                         /* inferred */
    /* 0x0431 */ char pad431[0xB];                  /* maybe part of unk430[0xC]? */
    /* 0x043C */ s32 unk43C;                        /* inferred */
    /* 0x0440 */ char pad440[0x7D0];                /* maybe part of unk43C[0x1F5]? */
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

? sginap(?);                                        /* extern */
? sub_0dad0000(__GLcontext *, void *, s64);         /* extern */
extern ? SYMBOL_LOCATION;
extern ? sub_0dbf0000;

void __glMgrFreeHistogramMemory(__GLcontext *gc, ...) {
    void *temp_a1;

    if (gc->unk81DD != 0) {
        gc->unk81E4 = 0;
        gc->unk81DD = 0U;
    }
    temp_a1 = gc->unk81E8;
    if (temp_a1 != NULL) {
        gc->imports.free(gc, temp_a1);
        gc->unk81E8 = NULL;
    }
}

void allocHistogramMemory(__GLcontext *arg0, s32 arg1) {
    s64 sp0;
    s32 temp_a0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    u8 temp_a3;
    void *temp_v0;

    var_s0 = 0x100;
    var_s1 = 0;
    sp0 = (s64) arg0->unk9CA3;
loop_1:
    var_a2 = var_s0 < 0x1001;
    if (var_s0 < arg1) {
        var_s0 *= 4;
        var_s1 += 1;
        if (var_s0 >= 0x1001) {
            var_a2 = var_s0 < 0x1001;
        } else {
            goto loop_1;
        }
    }
    if (var_a2 != 0) {
        temp_a3 = arg0->unk81DD;
        if (temp_a3 != 0) {
            image1D_to_texturecolortable(arg0, var_a2, temp_a3);
        }
        temp_a0 = var_s0 * 4;
        __glMgrAllocERAM((__GLcontext *) temp_a0, temp_a0, 0x40);
        if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {
            arg0->unk81E0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
            temp_v0 = arg0->imports.malloc(arg0, (sp0 * var_s0 * 0x10) + 4, sp0);
            arg0->unk81E8 = temp_v0;
            if (temp_v0 != NULL) {
                arg0->unk81E4 = var_s0;
                arg0->unk81DD = 1U;
                arg0->unk81FC = (s32) *((var_s1 * 4) + (&sub_0dbf0000 - 0x1A28));
                return;
            }
            arg0->imports.warning(arg0, &sub_0dbf0000 - 0x1860);
            image1D_to_texturecolortable(arg0);
            return;
        }
        sub_0dad0000(arg0, &sub_0dbf0000 - 0x1888, sp0);
        return;
    }
    image1D_to_texturecolortable(arg0, var_a2);
}

void __glMgr_InitPixelStatState(__GLcontext *gc, ...) {
    gc->unk8210 = 0x1908;
    gc->unk820D = 0;
    gc->unk820C = 0;
    gc->unk81F4 = 0x1908;
    gc->unk8208 = 0x1908;
    gc->unk81F0 = 0;
    gc->unk8204 = 0;
    gc->unk81EC = 0;
    gc->unk8200 = 0;
    gc->unk81E4 = 0;
    gc->unk81E0 = 0;
    gc->unk81E8 = 0;
    gc->unk81DD = 0;
    gc->unk81DC = 0;
}

void __glMgrFreePixelStatState(__GLcontext *gc, ...) {
    s64 sp0;

    sp0 = (s64) (gc + 0x10000);
    if (gc->unk81DD != 0) {
        image1D_to_texturecolortable(gc);
        sub_0dad0000(gc, sp0->unk-7E18);
    }
}

void __glMgrResetHistogramMemory(__GLcontext *gc, ...) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;

    temp_a1 = gc->unk81E4 * 4;
    temp_a0 = temp_a1 >> 0x1F;
    temp_a0_2 = temp_a1 >> 0x1F;
    *(s32 *)0x74080 = 0x830C;
    *(s32 *)0x74080 = (s32) (((u32) (temp_a1 >> 1) >> 0x1E) + temp_a1) >> 2;
    *(s32 *)0x74080 = ((((temp_a1 ^ temp_a0) - temp_a0) & 3) ^ temp_a0_2) - temp_a0_2;
    *(s32 *)0x74080 = gc->unk81E0;
}

void __glMgrim_HistogramEXT(enum GLenum target, s32 width, enum GLenum internalformat, u8 sink) {
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_a1_2;
    s32 var_v0;
    s64 var_a0;
    u32 var_a1;
    void *temp_a2;

    if (__glBeginMode != 1) {
        if (width >= 0) {
            if ((target == GL_HISTOGRAM_EXT) || (var_a1 = 1, (target == GL_PROXY_HISTOGRAM_EXT))) {
                var_a1 = 0;
            }
            sp8 = (s64) internalformat;
            sp0 = (s64) __glCurrentContext;
            sp10 = (s64) sink;
            if (var_a1 == 0) {
                getbaseformat(sp8, var_a1, 0x8025U);
                var_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && (M2C_ERROR(/* Read from unset register $v0 */) != 0x8049)) {
                    if (target != GL_HISTOGRAM_EXT) {
                        goto block_8;
                    }
                    sp38 = var_a0;
                    if (width > 0) {
                        image1D_to_texturecolortable((__GLcontext *) sp0, width);
                        var_a0 = sp38;
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            __glSetError(0x505);
                            return;
                        }
                        goto block_8;
                    }
                    image1D_to_texturecolortable((__GLcontext *) sp0);
                    var_a0 = sp38;
block_8:
                    if (var_a0 != 0x8000) {
                        var_v0 = var_a0 - 0x1903;
                    } else {
                        var_v0 = 8;
                    }
                    temp_a2 = &sub_0dbf0000 - 0x1A28;
                    if ((((var_v0 * 0x2C) + temp_a2)->unk10 * width) >= 0x4001) {
                        if (target == GL_PROXY_HISTOGRAM_EXT) {
                            sp0->unk8200 = 0;
                            sp0->unk8208 = 0;
                        } else {
                            __glMgrResetHistogramMemory((__GLcontext *)0x8031, 0x8031, 0x8025, temp_a2);
                        }
                        return;
                    }
                    if (target != GL_PROXY_HISTOGRAM_EXT) {
                        sp0->unk81EC = width;
                        sp0->unk81F4 = (s32) sp8;
                        if (var_a0 != 0x8000) {
                            var_a1_2 = var_a0 - 0x1903;
                        } else {
                            var_a1_2 = 8;
                        }
                        sp0->unk81F0 = (s8) sp10;
                        sp0->unk81F8 = (s32) ((var_a1_2 * 0x2C) + temp_a2)->unk18;
                        __glMgrResetHistogramMemory((__GLcontext *) sp0, sp0, var_a1_2, temp_a2);
                        return;
                    }
                    sp0->unk8200 = width;
                    sp0->unk8208 = (s32) sp8;
                    return;
                }
            }
            __glSetError(0x500);
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void byteSwapMaybe(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a1;
    s32 temp_a5_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4_2;
    s32 var_v0;
    u32 temp_a5;
    u8 temp_a3;
    u8 temp_a3_2;
    u8 temp_at;
    u8 temp_at_2;
    u8 temp_v0;
    u8 temp_v0_2;
    u8 temp_v0_3;
    u8 temp_v1;
    u8 temp_v1_2;
    u8 var_a1;
    u8 var_a1_2;
    void *var_a1_3;
    void *var_a4;

    var_a2 = arg2;
    var_a4 = arg0;
    if (__glCurrentContext->unk430 != 0) {
        temp_a5 = arg1 - 0x1400;
        if (temp_a5 < 7U) {
            temp_a5_2 = var_a2;
            switch (*((temp_a5 * 4) + (&sub_0dbf0000 - 0x1838))) { /* unable to parse jump table */
            case 2:
            case 3:
                var_a4_2 = var_a2 & 3;
                if (var_a2 != 0) {
                    var_a1 = arg0->unk1;
                    if (var_a4_2 != 0) {
                        do {
                            var_a2 -= 1;
                            var_a4_2 -= 1;
                            temp_v0 = var_a1;
                            var_a1 = arg0->unk0;
                            arg0->unk0 = temp_v0;
                            arg0->unk1 = var_a1;
                        } while (var_a4_2 != 0);
                    }
                    if ((temp_a5_2 >> 2) != 0) {
                        var_a1_2 = var_a1;
                        var_a2_2 = var_a2;
                        do {
                            temp_v0_2 = arg0->unk0;
                            arg0->unk0 = var_a1_2;
                            temp_a3 = arg0->unk0;
                            arg0->unk0 = temp_v0_2;
                            temp_at = arg0->unk0;
                            arg0->unk0 = temp_a3;
                            var_a2_2 -= 4;
                            var_a1_2 = arg0->unk0;
                            arg0->unk0 = temp_at;
                            arg0->unk1 = var_a1_2;
                        } while (var_a2_2 != 0);
                    }
                }
                break;
                return;
            case 4:
            case 5:
            case 6:
                temp_a1 = var_a2;
                if (var_a2 != 0) {
                    var_a0 = var_a2 & 3;
                    var_v0 = temp_a1 >> 2;
                    if (var_a0 != 0) {
                        do {
                            var_a2 -= 1;
                            var_a4->unk3 = (u8) var_a4->unk0;
                            var_a4 += 1;
                            var_a0 -= 1;
                            temp_v1 = var_a4->unk1;
                            var_a4->unk1 = (u8) var_a4->unk0;
                            var_a4->unk0 = temp_v1;
                        } while (var_a0 != 0);
                        var_v0 = temp_a1 >> 2;
                    }
                    if (var_v0 != 0) {
                        var_a0_2 = var_a2;
                        var_a1_3 = var_a4;
                        do {
                            temp_a3_2 = var_a1_3->unk1;
                            var_a1_3->unk1 = (u8) var_a1_3->unk2;
                            var_a1_3->unk3 = (u8) var_a1_3->unk0;
                            var_a1_3->unk2 = temp_a3_2;
                            var_a1_3->unk4 = (u8) var_a1_3->unk1;
                            temp_at_2 = var_a1_3->unk2;
                            var_a1_3->unk2 = (u8) var_a1_3->unk3;
                            var_a1_3->unk3 = temp_at_2;
                            temp_v0_3 = var_a1_3->unk3;
                            var_a1_3->unk3 = (u8) var_a1_3->unk4;
                            var_a1_3->unk5 = (u8) var_a1_3->unk2;
                            var_a1_3->unk4 = temp_v0_3;
                            var_a1_3->unk6 = (u8) var_a1_3->unk3;
                            var_a1_3 += 4;
                            var_a0_2 -= 4;
                            temp_v1_2 = var_a1_3->unk1;
                            var_a1_3->unk1 = (u8) var_a1_3->unk0;
                            var_a1_3->unk0 = temp_v1_2;
                        } while (var_a0_2 != 0);
                    }
                    return;
                }
                break;
            }
        }
    }
}

void skipPixelsMaybe(s32 *arg0, u32 arg1, s32 arg2) {
    s32 temp_a4;
    s32 temp_lo;

    temp_a4 = __glCurrentContext->unk43C;
    if (temp_a4 != 0) {
        temp_lo = temp_a4 * arg2;
        if (arg1 >= 0x1406U) {
            switch (arg1) {                         /* switch 1; irregular */
            case 0x8032:                            /* switch 1 */
                /* Duplicate return node #17. Try simplifying control flow for better match */
                *arg0 += temp_lo;
                return;
            case 0x8035:                            /* switch 1 */
                goto block_10;
            }
        } else if (arg1 >= 0x1403U) {
            if (arg1 >= 0x1404U) {
                if (arg1 >= 0x1405U) {
                    if (arg1 < 0x1406U) {
                        goto block_10;
                    }
                } else if (arg1 == 0x1404) {
block_10:
                    *arg0 += temp_lo * 4;
                }
            } else {
                /* Duplicate return node #5. Try simplifying control flow for better match */
                *arg0 += temp_lo * 2;
            }
        } else {
            switch (arg1) {                         /* switch 2; irregular */
            case 0x1402:                            /* switch 2 */
            default:                                /* switch 1 */
                *arg0 += temp_lo * 2;
                return;
            default:                                /* switch 2 */
            case 0x1400:                            /* switch 2 */
                *arg0 += temp_lo;
                return;
            }
        }
    }
}

void __glMgr_FormatHistogram(__GLcontext *gc, s32 arg1, s32 arg2, u8 arg3, s32 *arg4, ...) {
    s32 sp4C;
    f32 sp0;
    enum GLenum *var_a1;
    enum GLenum *var_t1_3;
    enum GLenum temp_a5;
    enum GLenum temp_a5_2;
    enum GLenum var_a7;
    s16 *var_t1_2;
    s32 *temp_t1;
    s32 *var_a6_2;
    s32 *var_a6_3;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s8 *var_t1;
    u32 var_t9;
    u8 var_a4;
    void *var_a2;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    sp4C = arg1;
    __glMgrim_HistogramEXT((enum GLenum) &sp4C, arg2, arg4->unk0, arg3);
    var_a3 = 0;
    if (arg3->unk0 <= 0) {
        goto block_12;
    }
    var_a7 = 0xFF0000;
    var_a4 = arg3;
    var_t9 = arg2 - 0x1400;
    goto block_9;
case 0:                                             /* switch 1 */
case 1:                                             /* switch 1 */
case 0:                                             /* switch 2 */
case 1:                                             /* switch 2 */
    var_t1 = ((var_a6 * 4) + arg4)->unkC + sp4C;
    if (var_a2->unk-7E14 <= 0) {
        goto block_5;
    }
loop_3:
    *var_t1 = (s8) *var_a1;
    var_a1 += 4;
    var_a0 += 1;
    var_t1 += arg4->unk0;
    if (var_a0 < var_a2->unk-7E14) {
        goto loop_3;
    }
block_4:
block_5:
    var_a5 = var_a3 < arg3->unk0;
block_6:
    if (var_a5 == 0) {
        goto block_8;
    }
    goto block_9;
block_8:
    goto block_12;
block_9:
    var_a4 += 4;
    var_a6 = var_a4->unk18;
    var_a3 += 1;
    if (!(arg4->unk4 & (1 << var_a6))) {
        goto block_5;
    }
    var_a2 = gc + 0x10000;
    var_a1 = gc->unk81E8 + (gc->unk81E4 * var_a6 * 4);
    if (var_t9 >= 7U) {
        goto block_5;
    }
    var_a0 = 0;
    switch (*((var_t9 * 4) + (&sub_0dbf0000 - 0x1818))); /* switch 1; unable to parse jump table */
block_12:
    var_a7 = arg4->unk0;
    var_a3 = 0;
    if (var_a7 <= GL_ZERO) {
        goto block_20;
    }
    var_a4 = 0;
    var_a1 = arg4;
    var_a6 = 0;
    var_t9 = arg2 - 0x1400;
    goto loop_17;
block_16:
    var_a4 += 4;
    var_a3 += 1;
    var_a6 += 2;
    if (var_a3 >= var_a7) {
        goto block_20;
    }
loop_17:
    var_a1 += 4;
    if (arg3->unk4 & (1 << var_a1->unk1C)) {
        goto block_16;
    }
    if (var_t9 >= 7U) {
        goto block_16;
    }
    var_a0 = 0;
    var_a2 = gc + 0x10000;
    switch (*((var_t9 * 4) + (&sub_0dbf0000 - 0x17F8))); /* switch 2; unable to parse jump table */
block_20:
    return;
case 2:                                             /* switch 1 */
case 3:                                             /* switch 1 */
case 2:                                             /* switch 2 */
case 3:                                             /* switch 2 */
    temp_ra = var_a2->unk-7E14;
    var_t1_2 = (((var_a6 * 4) + arg4)->unkC * 2) + sp4C;
    if (gc->unk430 == 0) {
        goto block_42;
    }
    var_a0_2 = 0;
    var_a5 = var_a3 < arg3->unk0;
    if (temp_ra <= 0) {
        goto block_6;
    }
loop_23:
    temp_a5 = *var_a1;
    *var_t1_2 = ((temp_a5 & 0xFF) << 8) | ((s32) (temp_a5 & 0xFF00) >> 8);
    var_a1 += 4;
    var_a0_2 += 1;
    var_t1_2 += arg4->unk0 * 2;
    if (var_a0_2 < var_a2->unk-7E14) {
        goto loop_23;
    }
    goto block_4;
case 4:                                             /* switch 1 */
case 5:                                             /* switch 1 */
case 4:                                             /* switch 2 */
case 5:                                             /* switch 2 */
    temp_ra_2 = var_a2->unk-7E14;
    var_t1_3 = (M2C_ERROR(/* Read from unset register $t1 */)->unkC * 4) + sp4C;
    if (gc->unk430 == 0) {
        goto block_45;
    }
    var_a0_3 = 0;
    var_a5 = var_a3 < arg3->unk0;
    if (temp_ra_2 <= 0) {
        goto block_6;
    }
loop_27:
    temp_a5_2 = *var_a1;
    *var_t1_3 = ((temp_a5_2 & 0xFF00) << 8) | (temp_a5_2 << 0x18) | ((s32) (temp_a5_2 & var_a7) >> 8) | ((u32) (temp_a5_2 & M2C_ERROR(/* Read from unset register $t0 */)) >> 0x18);
    var_a0_3 += 1;
    var_t1_3 += arg4->unk0 * 4;
    if (var_a0_3 < var_a2->unk-7E14) {
        goto loop_27;
    }
    goto block_4;
case 6:                                             /* switch 1 */
case 6:                                             /* switch 2 */
    temp_ra_3 = var_a2->unk-7E14;
    temp_t1 = sp4C + (((var_a6 * 4) + arg4)->unkC * 4);
    if (gc->unk430 == 0) {
        goto block_48;
    }
    var_a0_4 = 0;
    var_a6_2 = temp_t1;
    if (temp_ra_3 <= 0) {
        goto block_5;
    }
loop_31:
    sp0 = (f32) *var_a1;
    *var_a6_2 = (((bitwise s32) sp0 & 0xFF00) << 8) | ((bitwise s32) sp0 << 0x18) | (((u32) (var_a7 & (bitwise s32) sp0) >> 8) | ((u32) (M2C_ERROR(/* Read from unset register $t0 */) & (bitwise s32) sp0) >> 0x18));
    var_a1 += 4;
    var_a0_4 += 1;
    var_a6_2 += arg4->unk0 * 4;
    if (var_a0_4 < var_a2->unk-7E14) {
        goto loop_31;
    }
    goto block_4;
block_42:
    var_a0_5 = 0;
    var_a5 = var_a3 < arg3->unk0;
    if (temp_ra <= 0) {
        goto block_6;
    }
loop_43:
    *var_t1_2 = (s16) *var_a1;
    var_a1 += 4;
    var_a0_5 += 1;
    var_t1_2 += arg4->unk0 * 2;
    if (var_a0_5 < var_a2->unk-7E14) {
        goto loop_43;
    }
    goto block_4;
block_45:
    var_a0_6 = 0;
    var_a5 = var_a3 < arg3->unk0;
    if (temp_ra_2 <= 0) {
        goto block_6;
    }
loop_46:
    *var_t1_3 = *var_a1;
    var_a1 += 4;
    var_a0_6 += 1;
    var_t1_3 += arg4->unk0 * 4;
    if (var_a0_6 < var_a2->unk-7E14) {
        goto loop_46;
    }
    goto block_4;
block_48:
    var_a0_7 = 0;
    var_a6_3 = temp_t1;
    if (temp_ra_3 <= 0) {
        goto block_5;
    }
loop_49:
    *var_a6_3 = (f32) *var_a1;
    var_a1 += 4;
    var_a0_7 += 1;
    var_a6_3 += arg4->unk0 * 4;
    if (var_a0_7 < var_a2->unk-7E14) {
        goto loop_49;
    }
    goto block_4;
}

void __Mgr_ReturnHistPIO(s32 arg0, s32 arg1) {
    void *temp_s7;

    temp_s7 = __glCurrentContext->unk9D48;
    temp_s7->unk7000C = 0x20000;
    *(s32 *)0x74080 = 0x8B08;
    *(s32 *)0x74080 = arg0;
    *(s32 *)0x74080 = arg1;
    do {
        sginap(0);
    } while (!(temp_s7->unk70008 & 0x20000));
}

void __glMgr_ReadEramDMAHQSetup(__GLcontext *gc, s32 arg1, u32 arg2, s64 arg3, s64 arg4, ...) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_s4;
    s32 var_s1;
    s32 var_s2;
    u32 var_s0;
    u32 var_s3;

    unksp40 = arg4;
    var_s0 = arg2;
    var_s1 = arg1;
    __glMgrim_Finish();
    var_s2 = 0;
    *(s32 *)0x74080 = 0xC0004;
    *(s32 *)0x74080 = 0x200;
    if (var_s0 != 0) {
        sp0 = arg3;
        sp8 = (s64) gc;
        sp10 = (unksp40 * 2) | 0xB9;
loop_4:
        var_s3 = var_s0;
        if (var_s0 < 0x2000U) {

        } else {
            var_s3 = 0x2000;
        }
        var_s0 -= var_s3;
        temp_s4 = var_s3 * 4;
        *(s32 *)0x74080 = 0x80004;
        *(s32 *)0x74080 = 0x80000000;
        *(s32 *)0x74080 = 0x80404;
        *(s32 *)0x74080 = temp_s4;
        *(s32 *)0x74080 = 0x80504;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = 0x80604;
        *(s32 *)0x74080 = var_s1;
        *(s32 *)0x74080 = 0x80704;
        *(s32 *)0x74080 = 1;
        *(s32 *)0x74080 = 0x80804;
        *(s32 *)0x74080 = temp_s4;
        *(s32 *)0x74080 = 0x80B04;
        *(s32 *)0x74080 = (s32) sp10;
        *(s32 *)0x74080 = 0x8A0C;
        *(s32 *)0x74080 = (s32) sp0;
        *(s32 *)0x74080 = var_s2;
        __glMgrim_pipe((__GLcontext *) var_s3, var_s3, 0x100, 0x80604, 0x80404, 0x80000000, 0x80004);
        var_s1 += temp_s4;
        __glMgrWaitForDMARead((__GLcontext *) sp8, sp8);
        var_s2 += var_s3;
        if (var_s0 != 0) {
            goto loop_4;
        }
    }
    *(s32 *)0x74080 = 0xC0004;
    *(s32 *)0x74080 = 0xE00;
}

void __glMgr_PackHistogram(__GLcontext *gc, s32 *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, ...) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *var_a0;
    __GLcontext *var_a1_5;
    __GLcontext *var_a5;
    s32 *var_a0_2;
    s32 *var_a0_7;
    s32 *var_a0_8;
    s32 *var_a0_9;
    s32 *var_a1_11;
    s32 *var_a1_13;
    s32 *var_a1_3;
    s32 *var_a3_12;
    s32 *var_a3_4;
    s32 *var_a3_8;
    s32 *var_a5_3;
    s32 *var_a5_4;
    s32 *var_a5_5;
    s32 *var_a5_7;
    s32 *var_a5_8;
    s32 *var_a6;
    s32 *var_a6_11;
    s32 *var_a6_4;
    s32 *var_a6_5;
    s32 *var_a6_7;
    s32 *var_a6_8;
    s32 *var_a6_9;
    s32 *var_a7;
    s32 *var_a7_2;
    s32 *var_a7_5;
    s32 *var_a7_8;
    s32 *var_a7_9;
    s32 *var_t1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 var_a1;
    s32 var_a1_10;
    s32 var_a1_12;
    s32 var_a1_2;
    s32 var_a1_4;
    s32 var_a1_8;
    s32 var_a3;
    s32 var_a3_13;
    s32 var_a3_14;
    s32 var_a3_15;
    s32 var_a3_3;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a5_2;
    s32 var_a5_6;
    s32 var_a6_13;
    s32 var_a6_6;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s32 var_t2_4;
    s32 var_t3;
    s32 var_t9;
    s64 var_a0_5;
    s64 var_a0_6;
    s64 var_a1_9;
    s64 var_a3_10;
    s64 var_a3_11;
    s64 var_a3_16;
    s64 var_a3_2;
    s64 var_a3_9;
    s64 var_a5_10;
    s64 var_a5_9;
    s64 var_a6_10;
    s64 var_a6_12;
    s64 var_a6_3;
    s64 var_a7_3;
    s64 var_a7_4;
    s64 var_a7_6;
    void *(*temp_a4_3)(__GLcontext *, u32, s64);
    void *(*temp_at_4)(__GLcontext *, u32, s64);
    void *(*temp_v0)(__GLcontext *, u32, s64);
    void *(*temp_v0_3)(__GLcontext *, u32, s64);
    void *var_a0_10;
    void *var_a0_3;
    void *var_a0_4;
    void *var_a1_6;
    void *var_a1_7;
    void *var_a6_2;
    void *var_a7_7;
    void *var_t0;

    var_a0 = gc;
    var_a0 = gc;
    var_a7 = (arg4 * 4) + var_a0;
    var_t0 = (arg4 * 2 * 4) + var_a0;
    var_t1 = (arg4 * 0xC) + var_a0;
    switch (arg2) {                                 /* irregular */
    default:
        var_a6 = arg1;
        if (arg2 == 0x8036) {
            if (arg5 != 0) {
                var_a3 = arg3 - 1;
                temp_a5 = var_a3 + 1;
                if (var_a3 != -1) {
                    if (temp_a5 & 1) {
                        var_a3 -= 1;
                        var_t0 += 4;
                        var_a7 += 4;
                        var_a0 += 4;
                        var_a6 += 4;
                        temp_a1 = var_t0->unk-4;
                        var_t1 += 4;
                        sp78 = (s64) var_t1;
                        temp_v1 = var_a0->unk-4;
                        temp_a4 = var_a7->unk-4;
                        var_a6->unk-4 = (s32) (((temp_v1 & 0x300) << 8) | (temp_v1 << 0x18) | ((temp_a4 & 0x3F) << 0x12) | (((temp_a4 & 0x3C0) * 4) | ((temp_a1 & 0xF) << 0xC)) | (((var_t1->unk-4 & 3) << 6) | ((u32) (temp_a1 & 0x3F0) >> 4)));
                    }
                    sp78 = (s64) var_t1;
                    var_a6_2 = var_t0;
                    var_a5 = var_a0;
                    sp70 = sp78;
                    if ((temp_a5 >> 1) != 0) {
                        var_a7_2 = var_a6;
                        var_a0_2 = var_a7;
                        var_a1 = var_a3;
                        var_a3_2 = sp70;
                        do {
                            var_a6_2 += 8;
                            temp_v0 = var_a5->imports.malloc;
                            var_a0_2 += 8;
                            var_a5 += 8;
                            temp_a4_2 = var_a0_2->unk-8;
                            temp_v1_2 = var_a6_2->unk-8;
                            *var_a7_2 = (((s32) temp_v0 & 0x300) << 8) | ((s32) temp_v0 << 0x18) | ((temp_a4_2 & 0x3F) << 0x12) | (((temp_a4_2 & 0x3C0) * 4) | ((temp_v1_2 & 0xF) << 0xC)) | (((*var_a3_2 & 3) << 6) | ((u32) (temp_v1_2 & 0x3F0) >> 4));
                            var_a7_2 += 8;
                            temp_at = var_a5->unk-4;
                            var_a3_2 += 8;
                            var_a1 -= 2;
                            temp_v1_3 = var_a0_2->unk-4;
                            temp_v0_2 = var_a6_2->unk-4;
                            var_a7_2->unk-4 = (s32) (((temp_at & 0x300) << 8) | (temp_at << 0x18) | ((temp_v1_3 & 0x3F) << 0x12) | (((temp_v1_3 & 0x3C0) * 4) | ((temp_v0_2 & 0xF) << 0xC)) | (((var_a3_2->unk-4 & 3) << 6) | ((u32) (temp_v0_2 & 0x3F0) >> 4)));
                        } while (var_a1 != -1);
                    }
                }
            } else {
                var_a3_3 = arg3 - 1;
                temp_a5_2 = var_a3_3 + 1;
                if (var_a3_3 != -1) {
                    var_a1_2 = temp_a5_2 & 3;
                    var_t2 = var_a3_3;
                    if (var_a1_2 != 0) {
                        do {
                            var_a3_3 -= 1;
                            var_a6 += 4;
                            var_t1 += 4;
                            var_t0 += 4;
                            var_a7 += 4;
                            var_a0 += 4;
                            var_a1_2 -= 1;
                            var_a6->unk-4 = (s32) ((var_a0->unk-4 & 0x3FF) | ((var_a7->unk-4 & 0x3FF) << 0xA) | ((var_t1->unk-4 << 0x1E) | ((var_t0->unk-4 & 0x3FF) << 0x14)));
                        } while (var_a1_2 != 0);
                        var_t2 = var_a3_3;
                    }
                    sp18 = (s64) var_a7;
                    sp10 = (s64) var_a0;
                    if ((temp_a5_2 >> 2) != 0) {
                        var_a5_2 = var_t2;
                        var_a1_3 = var_a6;
                        var_a3_4 = var_t1;
                        var_a0_3 = var_t0;
                        var_a6_3 = sp18;
                        var_a7_3 = sp10;
                        do {
                            *var_a1_3 = (var_a7_3->unk0 & 0x3FF) | ((var_a6_3->unk0 & 0x3FF) << 0xA) | ((*var_a3_4 << 0x1E) | ((var_a0_3->unk0 & 0x3FF) << 0x14));
                            var_a1_3 += 0x10;
                            var_a3_4 += 0x10;
                            var_a1_3->unk-C = (s32) ((var_a7_3->unk4 & 0x3FF) | ((var_a6_3->unk4 & 0x3FF) << 0xA) | ((var_a3_4->unk-C << 0x1E) | ((var_a0_3->unk4 & 0x3FF) << 0x14)));
                            var_a0_3 += 0x10;
                            temp_at_2 = var_a6_3->unk8;
                            var_a6_3 += 0x10;
                            var_a1_3->unk-8 = (s32) ((var_a7_3->unk8 & 0x3FF) | ((temp_at_2 & 0x3FF) << 0xA) | ((var_a3_4->unk-8 << 0x1E) | ((var_a0_3->unk-8 & 0x3FF) << 0x14)));
                            var_a7_3 += 0x10;
                            var_a5_2 -= 4;
                            var_a1_3->unk-4 = (s32) ((var_a7_3->unk-4 & 0x3FF) | ((var_a6_3->unk-4 & 0x3FF) << 0xA) | ((var_a3_4->unk-4 << 0x1E) | ((var_a0_3->unk-4 & 0x3FF) << 0x14)));
                        } while (var_a5_2 != -1);
                    }
                }
            }
        }
        break;
    case 0x8032:
        var_a3_5 = arg3 - 1;
        var_a5_3 = arg1;
        if (var_a3_5 != -1) {
            temp_a6 = var_a3_5 + 1;
            var_a1_4 = temp_a6 & 3;
            var_t9 = var_a3_5;
            if (var_a1_4 != 0) {
                do {
                    var_a3_5 -= 1;
                    var_a5_3 += 1;
                    var_t0 += 4;
                    var_a7 += 4;
                    var_a0 += 4;
                    var_a1_4 -= 1;
                    var_a5_3->unk-1 = (s8) ((var_a0->unk-4 & 7) | ((var_a7->unk-4 & 7) * 8) | ((var_t0->unk-4 & 3) << 6));
                } while (var_a1_4 != 0);
                var_t9 = var_a3_5;
            }
            var_a6_4 = var_a7;
            var_a1_5 = var_a0;
            var_a5_4 = var_a5_3;
            if ((temp_a6 >> 2) != 0) {
                var_a0_4 = var_t0;
                var_a3_6 = var_t9;
                do {
                    *var_a5_4 = (s8) (((s32) var_a1_5->imports.malloc & 7) | ((var_a6_4->unk0 & 7) * 8) | ((var_a0_4->unk0 & 3) << 6));
                    var_a5_4 += 4;
                    var_a5_4->unk-3 = (s8) (((s32) var_a1_5->imports.calloc & 7) | ((var_a6_4->unk4 & 7) * 8) | ((var_a0_4->unk4 & 3) << 6));
                    var_a0_4 += 0x10;
                    temp_v1_4 = var_a6_4->unk8;
                    var_a6_4 += 0x10;
                    var_a5_4->unk-2 = (s8) (((s32) var_a1_5->imports.realloc & 7) | ((temp_v1_4 & 7) * 8) | ((var_a0_4->unk-8 & 3) << 6));
                    var_a1_5 += 0x10;
                    var_a3_6 -= 4;
                    var_a5_4->unk-1 = (s8) ((var_a1_5->unk-4 & 7) | ((var_a6_4->unk-4 & 7) * 8) | ((var_a0_4->unk-4 & 3) << 6));
                } while (var_a3_6 != -1);
            }
        }
        break;
    case 0x8033:
        var_a6_5 = arg1;
        if (arg5 != 0) {
            var_a3_7 = arg3 - 1;
            temp_a1_2 = var_a3_7 + 1;
            if (var_a3_7 != -1) {
                if (temp_a1_2 & 1) {
                    var_a3_7 -= 1;
                    var_a6_5 += 2;
                    var_t1 += 4;
                    var_t0 += 4;
                    var_a7 += 4;
                    var_a0 += 4;
                    var_a6_5->unk-2 = (s16) ((var_t0->unk-4 & 0xF) | ((var_t1->unk-4 & 0xF) * 0x10) | (((var_a0->unk-4 & 0xF) << 8) | ((var_a7->unk-4 & 0xF) << 0xC)));
                }
                sp68 = (s64) var_a6_5;
                var_a1_6 = var_t0;
                sp60 = (s64) var_a0;
                var_a5_5 = var_a7;
                var_a3_8 = var_t1;
                if ((temp_a1_2 >> 1) != 0) {
                    var_a7_4 = sp60;
                    var_a0_5 = sp68;
                    var_a6_6 = var_a3_7;
                    do {
                        var_a0_5 += 4;
                        var_a3_8 += 8;
                        var_a1_6 += 8;
                        var_a5_5 += 8;
                        var_a0_5->unk-4 = (s16) ((var_a1_6->unk-8 & 0xF) | ((var_a3_8->unk-8 & 0xF) * 0x10) | (((*var_a7_4 & 0xF) << 8) | ((var_a5_5->unk-8 & 0xF) << 0xC)));
                        var_a7_4 += 8;
                        var_a6_6 -= 2;
                        var_a0_5->unk-2 = (s16) ((var_a1_6->unk-4 & 0xF) | ((var_a3_8->unk-4 & 0xF) * 0x10) | (((var_a7_4->unk-4 & 0xF) << 8) | ((var_a5_5->unk-4 & 0xF) << 0xC)));
                    } while (var_a6_6 != -1);
                }
            }
        } else {
            temp_a3 = arg3 - 1;
            temp_a1_3 = temp_a3 + 1;
            if (temp_a3 != -1) {
                var_t2_2 = temp_a3;
                if (temp_a1_3 & 1) {
                    var_a6_5 += 2;
                    var_t1 += 4;
                    var_t0 += 4;
                    var_a7 += 4;
                    temp_v0_3 = var_a0->imports.malloc;
                    var_a0 += 4;
                    var_a6_5->unk-2 = (s16) (((s32) temp_v0_3 & 0xF) | ((var_a7->unk-4 & 0xF) * 0x10) | (((var_t0->unk-4 & 0xF) << 8) | ((var_t1->unk-4 & 0xF) << 0xC)));
                    var_t2_2 = temp_a3 - 1;
                }
                sp38 = (s64) var_a7;
                sp30 = (s64) var_a0;
                if ((temp_a1_3 >> 1) != 0) {
                    var_a5_6 = var_t2_2;
                    var_a6_7 = var_a6_5;
                    var_a7_5 = var_t1;
                    var_a1_7 = var_t0;
                    var_a3_9 = sp38;
                    var_a0_6 = sp30;
                    do {
                        var_a6_7 += 4;
                        var_a7_5 += 8;
                        var_a1_7 += 8;
                        temp_at_3 = *var_a3_9;
                        var_a3_9 += 8;
                        var_a6_7->unk-4 = (s16) ((*var_a0_6 & 0xF) | ((temp_at_3 & 0xF) * 0x10) | (((var_a1_7->unk-8 & 0xF) << 8) | ((var_a7_5->unk-8 & 0xF) << 0xC)));
                        var_a0_6 += 8;
                        var_a5_6 -= 2;
                        var_a6_7->unk-2 = (s16) ((var_a0_6->unk-4 & 0xF) | ((var_a3_9->unk-4 & 0xF) * 0x10) | (((var_a1_7->unk-4 & 0xF) << 8) | ((var_a7_5->unk-4 & 0xF) << 0xC)));
                    } while (var_a5_6 != -1);
                }
            }
        }
        break;
    case 0x8034:
        var_a6_8 = arg1;
        if (arg5 != 0) {
            temp_a3_2 = arg3 - 1;
            temp_a1_4 = temp_a3_2 + 1;
            if (temp_a3_2 != -1) {
                var_t2_3 = temp_a3_2;
                if (temp_a1_4 & 1) {
                    var_a7 += 4;
                    var_a6_8 += 2;
                    var_t1 += 4;
                    var_t0 += 4;
                    temp_a4_3 = var_a0->imports.malloc;
                    var_a0 += 4;
                    temp_v0_4 = var_a7->unk-4;
                    var_a6_8->unk-2 = (s16) ((((s32) temp_a4_3 & 0x1F) << 8) | ((temp_v0_4 & 7) << 0xD) | ((u32) (temp_v0_4 & 0x18) >> 3) | (((var_t0->unk-4 & 0x1F) * 4) | ((var_t1->unk-4 & 1) << 7)));
                    var_t2_3 = temp_a3_2 - 1;
                }
                sp58 = (s64) var_t0;
                sp50 = (s64) var_a0;
                if ((temp_a1_4 >> 1) != 0) {
                    var_a1_8 = var_t2_3;
                    var_a0_7 = var_a7;
                    var_a6_9 = var_a6_8;
                    var_a5_7 = var_t1;
                    var_a3_10 = sp58;
                    var_a7_6 = sp50;
                    do {
                        var_a0_7 += 8;
                        var_a6_9 += 4;
                        var_a5_7 += 8;
                        var_a3_10 += 8;
                        temp_v1_5 = var_a0_7->unk-8;
                        var_a6_9->unk-4 = (s16) (((*var_a7_6 & 0x1F) << 8) | ((temp_v1_5 & 7) << 0xD) | ((u32) (temp_v1_5 & 0x18) >> 3) | (((var_a3_10->unk-8 & 0x1F) * 4) | ((var_a5_7->unk-8 & 1) << 7)));
                        var_a7_6 += 8;
                        var_a1_8 -= 2;
                        temp_v0_5 = var_a0_7->unk-4;
                        var_a6_9->unk-2 = (s16) (((var_a7_6->unk-4 & 0x1F) << 8) | ((temp_v0_5 & 7) << 0xD) | ((u32) (temp_v0_5 & 0x18) >> 3) | (((var_a3_10->unk-4 & 0x1F) * 4) | ((var_a5_7->unk-4 & 1) << 7)));
                    } while (var_a1_8 != -1);
                }
            }
        } else {
            var_a3_11 = arg3 - 1;
            temp_a1_5 = var_a3_11 + 1;
            if (var_a3_11 != -1) {
                if (temp_a1_5 & 1) {
                    var_a3_11 -= 1;
                    var_a6_8 += 2;
                    var_t1 += 4;
                    var_t0 += 4;
                    var_a7 += 4;
                    temp_at_4 = var_a0->imports.malloc;
                    var_a0 += 4;
                    var_a6_8->unk-2 = (s16) (((s32) temp_at_4 & 0x1F) | ((var_a7->unk-4 & 0x1F) << 5) | (((var_t0->unk-4 & 0x1F) << 0xA) | ((var_t1->unk-4 & 1) << 0xF)));
                }
                sp28 = var_a3_11;
                sp20 = (s64) var_a0;
                if ((temp_a1_5 >> 1) != 0) {
                    var_a1_9 = sp28;
                    var_a0_8 = var_a6_8;
                    var_a3_12 = var_t1;
                    var_a7_7 = var_t0;
                    var_a5_8 = var_a7;
                    var_a6_10 = sp20;
                    do {
                        var_a0_8 += 4;
                        var_a3_12 += 8;
                        var_a7_7 += 8;
                        temp_a4_4 = *var_a5_8;
                        var_a5_8 += 8;
                        var_a0_8->unk-4 = (s16) ((*var_a6_10 & 0x1F) | ((temp_a4_4 & 0x1F) << 5) | (((var_a7_7->unk-8 & 0x1F) << 0xA) | ((var_a3_12->unk-8 & 1) << 0xF)));
                        var_a6_10 += 8;
                        var_a1_9 -= 2;
                        var_a0_8->unk-2 = (s16) ((var_a6_10->unk-4 & 0x1F) | ((var_a5_8->unk-4 & 0x1F) << 5) | (((var_a7_7->unk-4 & 0x1F) << 0xA) | ((var_a3_12->unk-4 & 1) << 0xF)));
                    } while (var_a1_9 != -1);
                }
            }
        }
        break;
    case 0x8035:
        var_a6_11 = arg1;
        if (arg5 != 0) {
            var_a3_13 = arg3 - 1;
            temp_a5_3 = var_a3_13 + 1;
            if (var_a3_13 != -1) {
                var_a1_10 = temp_a5_3 & 3;
                var_t3 = var_a3_13;
                if (var_a1_10 != 0) {
                    do {
                        var_a3_13 -= 1;
                        var_a6_11 += 4;
                        var_t1 += 4;
                        var_t0 += 4;
                        var_a7 += 4;
                        var_a0 += 4;
                        var_a1_10 -= 1;
                        var_a6_11->unk-4 = (s32) ((var_t1->unk-4 & 0xFF) | ((var_t0->unk-4 & 0xFF) << 8) | ((var_a0->unk-4 << 0x18) | ((var_a7->unk-4 & 0xFF) << 0x10)));
                    } while (var_a1_10 != 0);
                    var_t3 = var_a3_13;
                }
                sp48 = (s64) var_t0;
                sp40 = (s64) var_a0;
                if ((temp_a5_3 >> 2) != 0) {
                    var_a3_14 = var_t3;
                    var_a1_11 = var_a6_11;
                    var_a0_9 = var_t1;
                    var_a6_12 = sp48;
                    var_a7_8 = var_a7;
                    var_a5_9 = sp40;
                    do {
                        *var_a1_11 = (var_a0_9->unk0 & 0xFF) | ((var_a6_12->unk0 & 0xFF) << 8) | ((var_a5_9->unk0 << 0x18) | ((var_a7_8->unk0 & 0xFF) << 0x10));
                        var_a1_11 += 0x10;
                        temp_v1_6 = var_a0_9->unk4;
                        var_a0_9 += 0x10;
                        var_a1_11->unk-C = (s32) ((temp_v1_6 & 0xFF) | ((var_a6_12->unk4 & 0xFF) << 8) | ((var_a5_9->unk4 << 0x18) | ((var_a7_8->unk4 & 0xFF) << 0x10)));
                        var_a6_12 += 0x10;
                        var_a7_8 += 0x10;
                        var_a1_11->unk-8 = (s32) ((var_a0_9->unk-8 & 0xFF) | ((var_a6_12->unk-8 & 0xFF) << 8) | ((var_a5_9->unk8 << 0x18) | ((var_a7_8->unk-8 & 0xFF) << 0x10)));
                        var_a5_9 += 0x10;
                        var_a3_14 -= 4;
                        var_a1_11->unk-4 = (s32) ((var_a0_9->unk-4 & 0xFF) | ((var_a6_12->unk-4 & 0xFF) << 8) | ((var_a5_9->unk-4 << 0x18) | ((var_a7_8->unk-4 & 0xFF) << 0x10)));
                    } while (var_a3_14 != -1);
                }
            }
        } else {
            var_a3_15 = arg3 - 1;
            temp_a5_4 = var_a3_15 + 1;
            if (var_a3_15 != -1) {
                var_a1_12 = temp_a5_4 & 3;
                var_t2_4 = var_a3_15;
                if (var_a1_12 != 0) {
                    do {
                        var_a3_15 -= 1;
                        var_a6_11 += 4;
                        var_t1 += 4;
                        var_t0 += 4;
                        var_a7 += 4;
                        var_a0 += 4;
                        var_a1_12 -= 1;
                        var_a6_11->unk-4 = (s32) ((var_a0->unk-4 & 0xFF) | ((var_a7->unk-4 & 0xFF) << 8) | ((var_t1->unk-4 << 0x18) | ((var_t0->unk-4 & 0xFF) << 0x10)));
                    } while (var_a1_12 != 0);
                    var_t2_4 = var_a3_15;
                }
                sp8 = (s64) var_a7;
                sp0 = (s64) var_a0;
                if ((temp_a5_4 >> 2) != 0) {
                    var_a6_13 = var_t2_4;
                    var_a1_13 = var_a6_11;
                    var_a7_9 = var_t1;
                    var_a0_10 = var_t0;
                    var_a3_16 = sp8;
                    var_a5_10 = sp0;
                    do {
                        *var_a1_13 = (var_a5_10->unk0 & 0xFF) | ((var_a3_16->unk0 & 0xFF) << 8) | ((*var_a7_9 << 0x18) | ((var_a0_10->unk0 & 0xFF) << 0x10));
                        var_a1_13 += 0x10;
                        var_a7_9 += 0x10;
                        var_a1_13->unk-C = (s32) ((var_a5_10->unk4 & 0xFF) | ((var_a3_16->unk4 & 0xFF) << 8) | ((var_a7_9->unk-C << 0x18) | ((var_a0_10->unk4 & 0xFF) << 0x10)));
                        var_a0_10 += 0x10;
                        temp_v1_7 = var_a3_16->unk8;
                        var_a3_16 += 0x10;
                        var_a1_13->unk-8 = (s32) ((var_a5_10->unk8 & 0xFF) | ((temp_v1_7 & 0xFF) << 8) | ((var_a7_9->unk-8 << 0x18) | ((var_a0_10->unk-8 & 0xFF) << 0x10)));
                        var_a5_10 += 0x10;
                        var_a6_13 -= 4;
                        var_a1_13->unk-4 = (s32) ((var_a5_10->unk-4 & 0xFF) | ((var_a3_16->unk-4 & 0xFF) << 8) | ((var_a7_9->unk-4 << 0x18) | ((var_a0_10->unk-4 & 0xFF) << 0x10)));
                    } while (var_a6_13 != -1);
                }
            }
        }
        break;
    }
}

void __glMgrim_GetHistogramEXT(enum GLenum target, u8 reset, enum GLenum format, enum GLenum type, void *values) {
    void *spD4;
    s64 sp78;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    u64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_s2;
    s32 *var_s1_4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_s7;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_v0;
    s64 temp_v1_3;
    s64 var_a6;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s1_3;
    u32 var_a4;
    u8 var_a5;
    void *temp_s0;
    void *temp_t2;
    void *temp_v1_2;
    void *var_a7;
    void *var_t8;

    spD4 = values;
    temp_s2 = __glCurrentContext;
    if (__glBeginMode != 1) {
        var_a4 = temp_s2->beginMode;
        temp_s0 = temp_s2 + 0x10000;
        var_a5 = temp_s2->unk9CA3;
        sp8 = (s64) var_a5;
        if (var_a4 != 1) {
            if (target == GL_HISTOGRAM_EXT) {
                var_a4 = format < 0x190BU;
                if ((format >= GL_RED) && ((var_a5 = 0x8000, (var_a4 != 0)) || (format == GL_ABGR_EXT)) && (((type >= GL_BYTE) && (var_a4 = 0x8032, ((type < GL_2_BYTES) != 0))) || ((var_a4 = type < GL_UNSIGNED_BYTE_3_3_2_EXT, var_a5 = 0x8036, (var_a4 == 0)) && (var_a5 = type > GL_UNSIGNED_INT_10_10_10_2_EXT, (var_a5 == 0))))) {
                    sp48 = (s64) reset;
                    if (temp_s2->unk81DD != 0) {
                        getbaseformat((s64) temp_s2->unk81F4, var_a4, var_a5);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0x8000) {
                            sp28 = 8;
                            if (format == GL_ABGR_EXT) {
                                goto block_13;
                            }
                            goto block_17;
                        }
                        getbaseformat((s64) temp_s0->unk-7E0C);
                        sp28 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
                        if (format != GL_ABGR_EXT) {
block_17:
                            getbaseformat((s64) format);
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0x8000) {
                                if (format == GL_ABGR_EXT) {

                                } else {
                                    getbaseformat((s64) format);
                                }
                                var_s1 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
                            } else {
                                goto block_14;
                            }
                        } else {
block_13:
block_14:
                            var_s1 = 8;
                        }
                        temp_v0 = temp_s0->unk-7E1C;
                        temp_v1 = temp_s0->unk-7E18;
                        sp10 = (s64) temp_v1;
                        sp18 = temp_v0 - temp_s0->unk-7E14;
                        if (temp_v1 & 7) {
                            sp10 += 4;
                        }
                        __glMgr_LockSingleDMAPool(temp_s2, temp_s2, sp10, temp_v0 * sp8 * 0x10, 0, sp, 3);
                        sp40 = var_s1;
                        sp38 = sp8 - 1;
                        if (M2C_ERROR(/* Read from unset register $v0 */) & 0xFF) {
                            sp20 = (s64) temp_s2;
                            sp30 = (u64) type;
                            var_s1_2 = sp38;
                            if (sp8 != 0) {
                                var_a1 = sp0;
                                do {
                                    __glMgr_ReadEramDMAHQSetup(temp_s2, temp_s2, var_a1, temp_s0->unk-7E1C * 4, temp_s0->unk-7E20, 3);
                                    var_s1_2 -= 1;
                                    var_a1 = (temp_s0->unk-7E1C * 0x10) + sp0;
                                    sp0 = var_a1;
                                } while (var_s1_2 != -1);
                                sp20 = (s64) temp_s2;
                                sp30 = (u64) type;
                            }
                        } else {
                            sp20 = (s64) temp_s2;
                            sp30 = (u64) type;
                            var_s1_3 = sp10;
                            sp78 = sp38;
                            if (sp8 != 0) {
                                sp20 = (s64) temp_s2;
                                sp30 = (u64) type;
loop_67:
                                var_s2 = 0;
                                var_s5 = 3;
                                do {
                                    var_s3 = temp_s0->unk-7E14 - 1;
                                    var_s5 -= 1;
                                    if (var_s3 != -1) {
                                        do {
                                            temp_a0 = temp_s0->unk-7E20;
                                            var_s1_3 += 4;
                                            var_s3 -= 1;
                                            __glMgr_FormatHistogram(temp_a0, temp_a0, var_s2);
                                            var_s2 += 1;
                                            var_s1_3->unk-4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
                                        } while (var_s3 != -1);
                                    }
                                    var_s1_3 += sp18 * 4;
                                    var_s2 += sp18;
                                } while (var_s5 != -1);
                                temp_v1_2 = temp_s0->unk-62B8;
                                *(s32 *)0x74080 = 0xF200;
                                if (!(temp_v1_2->unk70000 & 1)) {
                                    do {

                                    } while (!(temp_v1_2->unk70000 & 1));
                                }
                                *(void *)0x74080 = 0xA0704;
                                *(void *)0x74080 = 0;
                                temp_v1_3 = sp78 - 1;
                                sp78 = temp_v1_3;
                                if (temp_v1_3 != -1) {
                                    goto loop_67;
                                }
                            }
                        }
                        if (sp48 != 0) {
                            __glMgrResetHistogramMemory((__GLcontext *) sp20, sp20);
                        }
                        var_v0 = 1;
                        if (sp8 >= 2) {
                            temp_s7 = sp18 * 4;
                            var_t8 = &sub_0dbf0000 - 0x1A28;
                            temp_t2 = (sp28 * 0x2C) + var_t8;
                            temp_t0 = temp_t2->unk10;
loop_34:
                            var_a6 = sp10;
                            var_s1_4 = (temp_s0->unk-7E1C * var_v0 * 4 * 4) + sp10;
                            var_s3_2 = 0;
                            if (temp_t0 > 0) {
                                var_a7 = temp_t2;
loop_38:
                                temp_a4 = var_a7->unk2C;
                                var_a7 += 4;
                                var_s3_2 += 1;
                                if ((1 << temp_a4) & ((sp40 * 0x2C) + var_t8)->unk14) {
                                    var_s5_2 = 0;
                                    if (temp_s0->unk-7E14 > 0) {
                                        do {
                                            *var_a6 = (s32) (*var_s1_4 + *var_a6);
                                            var_s1_4 += 4;
                                            var_s5_2 += 1;
                                            var_a6 += 4;
                                        } while (var_s5_2 < temp_s0->unk-7E14);
                                    }
                                    var_s1_4 += temp_s7;
                                    var_a6 += temp_s7;
                                } else {
                                    temp_a5 = temp_s0->unk-7E1C * 4;
                                    var_s1_4 += temp_a5;
                                    var_a6 += temp_a5;
                                }
                                if (var_s3_2 < temp_t0) {
                                    goto loop_38;
                                }
                            }
                            var_v0 += 1;
                            if (sp8 != var_v0) {
                                goto loop_34;
                            }
                        } else {
                            var_t8 = &sub_0dbf0000 - 0x1A28;
                        }
                        if (sp30 >= 0x1406U) {
                            if (sp30 < 0x1407U) {
                                goto block_46;
                            }
                            switch (sp30) {         /* switch 2; irregular */
                            default:                /* switch 2 */
block_61:
                                __glMgrim_HistogramEXT((enum GLenum) &spD4, (s32) sp30, GL_ONE, M2C_ERROR(/* Read from unset register $a3 */));
                                __glMgr_PackHistogram((__GLcontext *) sp10, sp10, spD4, sp30, temp_s0->unk-7E14, temp_s0->unk-7E1C, sp20->unk430);
                                break;
                            case 0x8032:            /* switch 2 */
                                goto block_61;
                            case 0x8035:            /* switch 2 */
                                goto block_61;
                            }
                        } else {
                            switch (sp30) {         /* switch 1; irregular */
                            case 0x1402:            /* switch 1 */
block_46:
                                __glMgr_FormatHistogram((__GLcontext *) sp20, sp20, spD4, sp30, (sp28 * 0x2C) + var_t8 + 0x10, (sp40 * 0x2C) + var_t8 + 0x10, sp28);
                                break;
                            case 0x1400:            /* switch 1 */
                                goto block_46;
                            case 0x1404:            /* switch 1 */
                                goto block_46;
                            }
                        }
                        return;
                    }
                    return;
                }
            }
            __glSetError(0x500, var_a4, var_a5);
            return;
        }
        __glSetError(0x502, var_a4, var_a5);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ResetHistogramEXT(enum GLenum target) {
    if (__glBeginMode != 1) {
        if (target == GL_HISTOGRAM_EXT) {
            if (__glCurrentContext->unk81DD != 0) {
                __glMgrResetHistogramMemory(__glCurrentContext, __glCurrentContext, 0x8024);
            }
        } else {
            __glMgrResetHistogramMemory((__GLcontext *)0x500, 0x500, 0x8024);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetHistogramParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *var_a3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 var_a3_2;

    if (__glBeginMode != 1) {
        if (__glCurrentContext->beginMode != 1) {
            if (target != GL_PROXY_HISTOGRAM_EXT) {
                var_a3 = &sub_0dbf0000;
                if (target != GL_HISTOGRAM_EXT) {
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glSetError(0x500, (u32) var_a3, 1U, __glCurrentContext);
                    return;
                }
                var_a3 = &sub_0dbf0000 - 0x17B8;
                temp_a0 = pname + 0xFFFF7FDA;
                if (temp_a0 < 8U) {
                    var_a3_2 = *((temp_a0 * 4) + var_a3);
                    sp0 = (s64) pname;
                    switch (var_a3_2);              /* switch 2; unable to parse jump table */
                } else {
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glSetError(0x500, (u32) var_a3, 1U, __glCurrentContext);
                }
            } else {
                temp_a0_2 = pname + 0xFFFF7FDA;
                var_a3 = &sub_0dbf0000 - 0x17D8;
                if (temp_a0_2 < 8U) {
                    var_a3_2 = *((temp_a0_2 * 4) + var_a3);
                    sp0 = (s64) pname;
                    switch (var_a3_2) {             /* switch 1; unable to parse jump table */
                    case 6:                         /* switch 1 */
                    case 6:                         /* switch 2 */
                        sp8 = (s64) params;
                        sp0 = 0x8028;
                        /* fallthrough */
                    case 2:                         /* switch 1 */
                    case 3:                         /* switch 1 */
                    case 4:                         /* switch 1 */
                    case 5:                         /* switch 1 */
                    case 2:                         /* switch 2 */
                    case 3:                         /* switch 2 */
                    case 4:                         /* switch 2 */
                    case 5:                         /* switch 2 */
                        sp8 = (s64) params;
                        sp10 = (s64) (__glCurrentContext + 0x10000);
                        getbaseformat((s64) __glCurrentContext->unk8208, var_a3_2, 1U, __glCurrentContext);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0x8000) {
                            var_a0 = 8;
                        } else {
                            getbaseformat((s64) sp10->unk-7DF8);
                            var_a0 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
                        }
                        var_a0_2 = 0x20;
                        if (((var_a0 * 0x2C) + (&sub_0dbf0000 - 0x1A28) + (sp0 * 4) + 0xFFFE0000)->unk-84 == -1) {
                            var_a0_2 = 0;
                        }
                        *sp8 = var_a0_2;
                        return;
                    case 14:                        /* switch 1 */
                    case 14:                        /* switch 2 */
                        sp8 = (s64) params;
                        sp0 = 0x8028;
                        /* fallthrough */
                    case 10:                        /* switch 1 */
                    case 11:                        /* switch 1 */
                    case 12:                        /* switch 1 */
                    case 13:                        /* switch 1 */
                    case 10:                        /* switch 2 */
                    case 11:                        /* switch 2 */
                    case 12:                        /* switch 2 */
                    case 13:                        /* switch 2 */
                        sp8 = (s64) params;
                        sp10 = (s64) (__glCurrentContext + 0x10000);
                        getbaseformat((s64) __glCurrentContext->unk81F4, var_a3_2, 1U, __glCurrentContext);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0x8000) {
                            var_a0_3 = 8;
                        } else {
                            getbaseformat((s64) sp10->unk-7E0C);
                            var_a0_3 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
                        }
                        var_a0_4 = 0x20;
                        if (((var_a0_3 * 0x2C) + (&sub_0dbf0000 - 0x1A28) + (sp0 * 4) + 0xFFFE0000)->unk-84 == -1) {
                            var_a0_4 = 0;
                        }
                        *sp8 = var_a0_4;
                        return;
                    case 1:                         /* switch 1 */
                    case 1:                         /* switch 2 */
                        *params = __glCurrentContext->unk8208;
                        return;
                    case 0:                         /* switch 1 */
                    case 0:                         /* switch 2 */
                        *params = __glCurrentContext->unk8200;
                        return;
                    case 7:                         /* switch 1 */
                    case 7:                         /* switch 2 */
                        *params = 0;
                        return;
                    case 8:                         /* switch 1 */
                    case 8:                         /* switch 2 */
                        *params = __glCurrentContext->unk81EC;
                        return;
                    case 9:                         /* switch 1 */
                    case 9:                         /* switch 2 */
                        *params = __glCurrentContext->unk81F4;
                        return;
                    case 15:                        /* switch 1 */
                    case 15:                        /* switch 2 */
                        *params = (s32) __glCurrentContext->unk81F0;
                        return;
                    }
                } else {
                    __glSetError(0x500, (u32) var_a3, 1U, __glCurrentContext);
                }
            }
        } else {
            __glSetError(0x502);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetHistogramParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *var_a3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 var_a3_2;

    if (__glBeginMode != 1) {
        if (__glCurrentContext->beginMode != 1) {
            if (target != GL_PROXY_HISTOGRAM_EXT) {
                var_a3 = &sub_0dbf0000;
                if (target != GL_HISTOGRAM_EXT) {
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glSetError(0x500, (u32) var_a3, 1U, __glCurrentContext);
                    return;
                }
                var_a3 = &sub_0dbf0000 - 0x1778;
                temp_a0 = pname + 0xFFFF7FDA;
                if (temp_a0 < 8U) {
                    var_a3_2 = *((temp_a0 * 4) + var_a3);
                    sp0 = (s64) pname;
                    switch (var_a3_2);              /* switch 2; unable to parse jump table */
                } else {
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glSetError(0x500, (u32) var_a3, 1U, __glCurrentContext);
                }
            } else {
                temp_a0_2 = pname + 0xFFFF7FDA;
                var_a3 = &sub_0dbf0000 - 0x1798;
                if (temp_a0_2 < 8U) {
                    var_a3_2 = *((temp_a0_2 * 4) + var_a3);
                    sp0 = (s64) pname;
                    switch (var_a3_2) {             /* switch 1; unable to parse jump table */
                    case 6:                         /* switch 1 */
                    case 6:                         /* switch 2 */
                        sp8 = (s64) params;
                        sp0 = 0x8028;
                        /* fallthrough */
                    case 2:                         /* switch 1 */
                    case 3:                         /* switch 1 */
                    case 4:                         /* switch 1 */
                    case 5:                         /* switch 1 */
                    case 2:                         /* switch 2 */
                    case 3:                         /* switch 2 */
                    case 4:                         /* switch 2 */
                    case 5:                         /* switch 2 */
                        sp8 = (s64) params;
                        sp10 = (s64) (__glCurrentContext + 0x10000);
                        getbaseformat((s64) __glCurrentContext->unk8208, var_a3_2, 1U, __glCurrentContext);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0x8000) {
                            var_a0 = 8;
                        } else {
                            getbaseformat((s64) sp10->unk-7DF8);
                            var_a0 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
                        }
                        var_a0_2 = 0;
                        if ((f32) ((var_a0 * 0x2C) + (&sub_0dbf0000 - 0x1A28) + (sp0 * 4) + 0xFFFE0000)->unk-84 != -1.0f) {
                            var_a0_2 = 0x20;
                        }
                        *sp8 = (f32) var_a0_2;
                        return;
                    case 14:                        /* switch 1 */
                    case 14:                        /* switch 2 */
                        sp8 = (s64) params;
                        sp0 = 0x8028;
                        /* fallthrough */
                    case 10:                        /* switch 1 */
                    case 11:                        /* switch 1 */
                    case 12:                        /* switch 1 */
                    case 13:                        /* switch 1 */
                    case 10:                        /* switch 2 */
                    case 11:                        /* switch 2 */
                    case 12:                        /* switch 2 */
                    case 13:                        /* switch 2 */
                        sp8 = (s64) params;
                        sp10 = (s64) (__glCurrentContext + 0x10000);
                        getbaseformat((s64) __glCurrentContext->unk81F4, var_a3_2, 1U, __glCurrentContext);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0x8000) {
                            var_a0_3 = 8;
                        } else {
                            getbaseformat((s64) sp10->unk-7E0C);
                            var_a0_3 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
                        }
                        if ((f32) ((var_a0_3 * 0x2C) + (&sub_0dbf0000 - 0x1A28) + (sp0 * 4) + 0xFFFE0000)->unk-84 != -1.0f) {
                            var_a0_4 = 0x20;
                        } else {
                            var_a0_4 = 0;
                        }
                        *sp8 = (f32) var_a0_4;
                        return;
                    case 1:                         /* switch 1 */
                    case 1:                         /* switch 2 */
                        *params = (f32) ((u64) ((s64) __glCurrentContext->unk8208 << 0x20) >> 0x20);
                        return;
                    case 0:                         /* switch 1 */
                    case 0:                         /* switch 2 */
                        *params = (f32) __glCurrentContext->unk8200;
                        return;
                    case 7:                         /* switch 1 */
                    case 7:                         /* switch 2 */
                        *params = 0.0f;
                        return;
                    case 8:                         /* switch 1 */
                    case 8:                         /* switch 2 */
                        *params = (f32) __glCurrentContext->unk81EC;
                        return;
                    case 9:                         /* switch 1 */
                    case 9:                         /* switch 2 */
                        *params = (f32) ((u64) ((s64) __glCurrentContext->unk81F4 << 0x20) >> 0x20);
                        return;
                    case 15:                        /* switch 1 */
                    case 15:                        /* switch 2 */
                        *params = (f32) __glCurrentContext->unk81F0;
                        return;
                    }
                } else {
                    __glSetError(0x500, (u32) var_a3, 1U, __glCurrentContext);
                }
            }
        } else {
            __glSetError(0x502);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrResetMinMaxMemory(__GLcontext *gc, ...) {
    __GLcontext *sp8;
    __GLcontext *sp0;

    sp0 = (__GLcontext *)0x3F800000;
    sp8 = NULL;
    __glMgrInitPixelStateCRAM(sp0, sp0, -2);
    __glMgrInitPixelStateCRAM(sp0, sp0, -2);
    __glMgrInitPixelStateCRAM(sp0, sp0, -2);
    __glMgrInitPixelStateCRAM(sp0, sp0, -2);
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk1D8, SYMBOL_LOCATION.unk1D8, -1);
}

void __glMgrim_MinmaxEXT(enum GLenum target, enum GLenum internalformat, u8 sink) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_a0;
    s64 var_a1;

    var_a1 = 0x1323CC;
    if (__glBeginMode != 1) {
        sp0 = (s64) internalformat;
        sp8 = (s64) sink;
        sp10 = (s64) __glCurrentContext;
        if (target == GL_MINMAX_EXT) {
            getbaseformat(sp0, 0x1323CCU, 0x802EU);
            var_a1 = sp10;
            if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && (M2C_ERROR(/* Read from unset register $v0 */) != 0x8049)) {
                var_a1->unk8210 = (s32) sp0;
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0x8000) {
                    var_a0 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
                } else {
                    var_a0 = 8;
                }
                var_a1->unk820D = (s8) sp8;
                var_a1->unk8214 = (s32) ((var_a0 * 0x2C) + (&sub_0dbf0000 - 0x1A28))->unk18;
                __glMgrResetMinMaxMemory((__GLcontext *) var_a0, var_a0, var_a1 + 0x10000);
                return;
            }
        }
        __glSetError(0x500, (u32) var_a1);
        return;
    }
    __glSetError(0x502, (u32) 0x1323CC);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c], gap at: 0x30. */
void __glMgr_FormatMinmax(__GLcontext *gc, enum GLenum arg1, s32 arg2, s64 arg3, s64 arg4, void *arg5, void *arg6, ...) {
    enum GLenum sp7C;
    enum GLenum var_v1;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s64 var_a7;
    u32 temp_s7;

    unksp38 = (s64) gc;
    unksp30 = arg4;
    unksp28 = arg3;
    sp7C = arg1;
    __glMgrim_HistogramEXT((enum GLenum) &sp7C, arg2, arg6->unk0 * 2, (u8) arg3);
    temp_s7 = arg2 - 0x1400;
    var_s3 = 0;
    var_s4 = 0;
    var_s5 = 0;
loop_3:
    if (arg6->unk4 & (1 << var_s3)) {
        var_v1 = arg5->unk4 & (1 << (var_s4 + arg6)->unk1C);
        if (var_v1 != GL_ZERO) {
            if (temp_s7 < 7U) {
                var_v1 = sp7C;
                var_a7 = unksp28;
                switch (*((temp_s7 * 4) + (&sub_0dbf0000 - 0x1758))); /* switch 1; unable to parse jump table */
            }
        } else {
            var_a7 = (s64) (&sub_0dbf0000 - 0x1738);
            if (temp_s7 < 7U) {
                switch (*((temp_s7 * 4) + var_a7)) { /* switch 2; unable to parse jump table */
                case 5:                             /* switch 2 */
                case 5:                             /* switch 1 */
                    *(sp7C + var_s4) = (s32) (s64) (unksp38->unkCD0 + (unksp38->unkCE8 * *(var_s4 + unksp28)));
                    *(((arg6->unk0 + var_s3) * 4) + sp7C) = (s32) (s64) (unksp38->unkCD0 + (unksp38->unkCE8 * *(var_s4 + unksp30)));
                    break;
                case 0:                             /* switch 2 */
                case 0:                             /* switch 1 */
                    *(sp7C + var_s3) = (s8) (s32) floorf(unksp38->unkCD0 * (unksp38->unkCD8 * *(var_s4 + unksp28)));
                    *(arg6->unk0 + var_s3 + sp7C) = (s8) (s32) floorf(unksp38->unkCD0 * (unksp38->unkCD8 * *(var_s4 + unksp30)));
                    break;
                case 1:                             /* switch 2 */
                case 1:                             /* switch 1 */
                    *(sp7C + var_s3) = (s8) (s32) (unksp38->unkCD0 + (unksp38->unkCD8 * *(var_s4 + unksp28)));
                    *(arg6->unk0 + var_s3 + sp7C) = (s8) (s32) (unksp38->unkCD0 + (unksp38->unkCD8 * *(var_s4 + unksp30)));
                    break;
                case 2:                             /* switch 2 */
                case 2:                             /* switch 1 */
                    *(sp7C + var_s5) = (s16) (s32) floorf(unksp38->unkCD0 * (unksp38->unkCE0 * *(var_s4 + unksp28)));
                    *(((arg6->unk0 + var_s3) * 2) + sp7C) = (s16) (s32) floorf(unksp38->unkCD0 * (unksp38->unkCE0 * *(var_s4 + unksp30)));
                    break;
                case 3:                             /* switch 2 */
                case 3:                             /* switch 1 */
                    *(sp7C + var_s5) = (s16) (s32) (unksp38->unkCD0 + (unksp38->unkCE0 * *(var_s4 + unksp28)));
                    *(((arg6->unk0 + var_s3) * 2) + sp7C) = (s16) (s32) (unksp38->unkCD0 + (unksp38->unkCE0 * *(var_s4 + unksp30)));
                    break;
                case 4:                             /* switch 2 */
                case 4:                             /* switch 1 */
                    *(sp7C + var_s4) = (s32) floorf(unksp38->unkCD0 * (unksp38->unkCE8 * *(var_s4 + unksp28)));
                    *(((arg6->unk0 + var_s3) * 4) + sp7C) = (s32) floorf(unksp38->unkCD0 * (unksp38->unkCE8 * *(var_s4 + unksp30)));
                    break;
                case 6:                             /* switch 2 */
                case 6:                             /* switch 1 */
                    *(var_v1 + var_s4) = *(var_s4 + var_a7);
                    *(((arg6->unk0 + var_s3) * 4) + sp7C) = *(var_s4 + unksp30);
                    break;
                }
            }
        }
    }
    var_s4 += 4;
    var_s3 += 1;
    var_s5 += 2;
    if (var_s3 != 4) {
        goto loop_3;
    }
    __glMgrim_HistogramEXT(sp7C, arg2, arg6->unk0 * 2, M2C_ERROR(/* Read from unset register $a3 */));
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
void __glMgr_ReadCramDMAHQSetup(__GLcontext *gc, s32 arg1, s32 arg2, s64 arg3, s64 arg4, ...) {
    s32 temp_a3;
    s32 temp_a5;

    unksp20 = arg4;
    unksp28 = arg3;
    unksp18 = (s64) gc;
    __glMgrim_Finish();
    *(s32 *)0x74080 = 0xC0004;
    temp_a3 = (unksp20 * 2) | 0xB9;
    temp_a5 = arg2 * 4;
    *(s32 *)0x74080 = 0x200;
    *(s32 *)0x74080 = 0x80004;
    *(s32 *)0x74080 = 0x80000000;
    *(s32 *)0x74080 = 0x80404;
    *(s32 *)0x74080 = temp_a5;
    *(s32 *)0x74080 = 0x80504;
    *(s32 *)0x74080 = 0;
    *(s32 *)0x74080 = 0x80604;
    *(s32 *)0x74080 = arg1;
    *(s32 *)0x74080 = 0x80704;
    *(s32 *)0x74080 = 1;
    *(s32 *)0x74080 = 0x80804;
    *(s32 *)0x74080 = temp_a5;
    *(s32 *)0x74080 = 0x80B04;
    *(s32 *)0x74080 = temp_a3;
    *(s32 *)0x74080 = 0xF308;
    *(s32 *)0x74080 = (s32) unksp28;
    __glMgrim_pipe((__GLcontext *) arg2, arg2, 0x100, 0xF308, temp_a3, 0x80B04, temp_a5, 0x80804, 1);
    __glMgrWaitForDMARead(gc, gc);
    *(void *)0x74080 = 0xC0004;
    *(void *)0x74080 = 0xE00;
}

void __glMgr_PackMinmax(__GLcontext *gc, s32 arg1, void *arg2, void *arg3, s32 arg4, ...) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_v0;
    s32 temp_v1;

    if (arg1 != 0x8032) {
        if (arg1 != 0x8033) {
            if (arg1 != 0x8034) {
                if (arg1 != 0x8035) {
                    if (arg1 == 0x8036) {
                        temp_t0 = (s64) (second half of f64) << 0;
                        temp_a7 = (second half of f64) << 0;
                        temp_a1 = (s64) (second half of f64) << 0;
                        temp_t1 = (second half of f64) << 0;
                        if (arg4 != 0) {
                            gc->imports.malloc = (void *(*)(__GLcontext *, u32, s64)) (((temp_t1 & 0x300) << 8) | (temp_t1 << 0x18) | ((temp_a1 & 0x3F) << 0x12) | (((temp_a1 & 0x3C0) * 4) | ((temp_t0 & 0xF) << 0xC)) | (((temp_a7 & 3) << 6) | ((u32) (temp_t0 & 0x3F0) >> 4)));
                            temp_a2 = (second half of f64) << 0;
                            temp_a5 = (second half of f64) << 0;
                            temp_v1 = (s64) (second half of f64) << 0;
                            gc->imports.calloc = (void *(*)(__GLcontext *, u32, u32)) (((temp_v1 & 0x300) << 8) | (temp_v1 << 0x18) | ((temp_a5 & 0x3F) << 0x12) | (((temp_a5 & 0x3C0) * 4) | ((temp_a2 & 0xF) << 0xC)) | (((((s64) (second half of f64) << 0) & 3) << 6) | ((u32) (temp_a2 & 0x3F0) >> 4)));
                            return;
                        }
                        gc->imports.malloc = (void *(*)(__GLcontext *, u32, s64)) ((temp_t1 & 0x3FF) | ((temp_a1 & 0x3FF) << 0xA) | (((temp_t0 & 0x3FF) << 0x14) | (temp_a7 << 0x1E)));
                        gc->imports.calloc = (void *(*)(__GLcontext *, u32, u32)) ((((s64) (arg3->unk0 * 1023.0f) << 0) & 0x3FF) | ((((s64) (second half of f64) << 0) & 0x3FF) << 0xA) | ((((second half of f64) << 0) << 0x1E) | ((((s64) (second half of f64) << 0) & 0x3FF) << 0x14)));
                        return;
                    }
                    return;
                }
                temp_t1_2 = (s64) (arg2->unk0 * 255.0f) << 0;
                temp_t0_2 = (second half of f64) << 0;
                temp_a1_2 = ((s64) (second half of f64) << 0) & 0xFF;
                temp_a7_2 = ((s64) (second half of f64) << 0) & 0xFF;
                if (arg4 != 0) {
                    gc->imports.malloc = (void *(*)(__GLcontext *, u32, s64)) ((temp_t0_2 & 0xFF) | (temp_a1_2 << 8) | ((temp_t1_2 << 0x18) | (temp_a7_2 << 0x10)));
                    gc->imports.calloc = (void *(*)(__GLcontext *, u32, u32)) ((((s64) (arg3->unkC * 255.0f) << 0) & 0xFF) | ((((s64) (second half of f64) << 0) & 0xFF) << 8) | ((((second half of f64) << 0) << 0x18) | ((((s64) (second half of f64) << 0) & 0xFF) << 0x10)));
                    return;
                }
                gc->imports.malloc = (void *(*)(__GLcontext *, u32, s64)) ((temp_t1_2 & 0xFF) | (temp_a7_2 << 8) | ((temp_t0_2 << 0x18) | (temp_a1_2 << 0x10)));
                gc->imports.calloc = (void *(*)(__GLcontext *, u32, u32)) ((((s64) (arg3->unk0 * 255.0f) << 0) & 0xFF) | ((((s64) (arg3->unk4 * 255.0f) << 0) & 0xFF) << 8) | ((((s64) (second half of f64) << 0) << 0x18) | ((((s64) (arg3->unk8 * 255.0f) << 0) & 0xFF) << 0x10)));
                return;
            }
            temp_a1_3 = ((s64) arg2->unkC << 0) & 1;
            temp_t0_3 = (s64) (second half of f64) << 0;
            temp_t1_3 = ((second half of f64) << 0) & 0x1F;
            temp_a7_3 = ((s64) (second half of f64) << 0) & 0x1F;
            if (arg4 != 0) {
                gc->unk0 = (s16) (((temp_t0_3 & 7) << 0xD) | (temp_a7_3 << 8) | ((u32) (temp_t0_3 & 0x18) >> 3) | ((temp_a1_3 << 7) | (temp_t1_3 * 4)));
                temp_v0 = (second half of f64) << 0;
                gc->unk2 = (s16) (((((s64) (arg3->unk0 * 31.0f) << 0) & 0x1F) << 8) | ((temp_v0 & 7) << 0xD) | ((u32) (temp_v0 & 0x18) >> 3) | (((((s64) (second half of f64) << 0) & 1) << 7) | ((((s64) (second half of f64) << 0) & 0x1F) * 4)));
                return;
            }
            gc->unk0 = (s16) (((temp_t0_3 & 0x1F) << 5) | temp_a7_3 | ((temp_a1_3 << 0xF) | (temp_t1_3 << 0xA)));
            gc->unk2 = (s16) ((((second half of f64) << 0) & 0x1F) | ((((s64) (second half of f64) << 0) & 0x1F) << 5) | (((((s64) arg3->unkC << 0) & 1) << 0xF) | ((((s64) (arg3->unk8 * 31.0f) << 0) & 0x1F) << 0xA)));
            return;
        }
        temp_a7_4 = ((s64) (second half of f64) << 0) & 0xF;
        temp_a1_4 = ((second half of f64) << 0) & 0xF;
        temp_t0_4 = ((s64) (second half of f64) << 0) & 0xF;
        temp_t1_4 = ((second half of f64) << 0) & 0xF;
        if (arg4 != 0) {
            gc->unk0 = (s16) ((temp_a1_4 << 8) | (temp_a7_4 << 0xC) | ((temp_t0_4 * 0x10) | temp_t1_4));
            gc->unk2 = (s16) ((((second half of f64) << 0) & 0xF) | ((((s64) (second half of f64) << 0) & 0xF) * 0x10) | (((((s64) (arg3->unk0 * 15.0f) << 0) & 0xF) << 8) | ((((s64) (second half of f64) << 0) & 0xF) << 0xC)));
            return;
        }
        gc->unk0 = (s16) ((temp_a7_4 * 0x10) | temp_a1_4 | ((temp_t1_4 << 8) | (temp_t0_4 << 0xC)));
        gc->unk2 = (s16) ((((second half of f64) << 0) & 0xF) | ((((s64) (second half of f64) << 0) & 0xF) * 0x10) | (((((second half of f64) << 0) & 0xF) << 8) | ((((s64) (second half of f64) << 0) & 0xF) << 0xC)));
        return;
    }
    gc->unk0 = (s8) ((((s64) (arg2->unk0 * 7.0f) << 0) & 7) | ((((s64) (arg2->unk4 * 7.0f) << 0) & 7) * 8) | ((((s64) (arg2->unk8 * 3.0f) << 0) & 3) << 6));
    gc->unk1 = (s8) ((((s64) (arg3->unk0 * (second half of f64)) << 0) & 7) | ((((s64) (arg3->unk4 * (second half of f64)) << 0) & 7) * 8) | ((((s64) (arg3->unk8 * (second half of f64)) << 0) & 3) << 6));
}

void __glMgrim_GetMinmaxEXT(enum GLenum target, u8 reset, enum GLenum format, enum GLenum type, void *values) {
    void *spE4;
    s64 spB0;
    u64 spA8;
    s64 spA0;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    f32 sp18;
    f32 sp8;
    s32 sp0;
    __GLcontext *temp_s0;
    enum GLenum var_s4;
    enum GLenum var_s5;
    f32 *var_a0;
    f32 *var_a2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 var_f4;
    f32 var_f5;
    s32 temp_a0;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_s3;
    s32 var_a1;
    s32 var_a4;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s3_2;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_t3;
    s64 var_s1;
    s64 var_s3;
    u8 var_a3;
    void *temp_t2;
    void *temp_t8;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s2;
    void *var_s6;
    void *var_v0;

    var_s5 = type;
    var_s4 = format;
    spE4 = values;
    temp_s0 = __glCurrentContext;
    sp30 = (s64) (temp_s0 + 0x10000);
    sp28 = (s64) temp_s0->unk9CA3;
    if (temp_s0->beginMode != 1) {
        temp_a5 = var_s4 < GL_RED;
        if (target != GL_MINMAX_EXT) {
            __glSetError(0x500, 0x131480U, 0x802EU, (__GLcontext *) temp_a5);
            return;
        }
        if ((temp_a5 == 0) && ((var_s4 < 0x190BU) || (var_s4 == GL_ABGR_EXT))) {
            var_s6 = temp_s0 + 0x8218;
            if ((s32) var_s6 & 7) {
                sp40 = (s64) reset;
                var_s6 = temp_s0 + 0x821C;
            }
            sp40 = (s64) reset;
            __glMgr_LockSingleDMAPool(temp_s0, temp_s0, var_s6, 0x40, 0, sp, 3);
            var_s3 = sp28 - 1;
            if (M2C_ERROR(/* Read from unset register $v0 */) & 0xFF) {
                sp38 = var_s3;
                var_s1 = sp38;
                temp_s3 = SYMBOL_LOCATION.unk1D8;
                if (sp28 != 0) {
                    var_a1 = sp0;
                    do {
                        __glMgr_ReadCramDMAHQSetup(temp_s0, temp_s0, var_a1, 8, temp_s3, 3);
                        var_s1 -= 1;
                        var_a1 = sp0 + 0x20;
                        sp0 = var_a1;
                    } while (var_s1 != -1);
                    var_s3 = sp38;
                    if (var_s4 != GL_ABGR_EXT) {
                        goto block_13;
                    }
                    goto block_57;
                }
                var_s3 = sp38;
                goto block_56;
            }
            var_s2 = var_s6;
            var_s1_2 = 0;
            if (sp28 > 0) {
                spA0 = (s64) var_s4;
                sp38 = var_s3;
                spA8 = (u64) var_s5;
                spB0 = (s64) var_s6;
loop_68:
                var_s4_2 = 0;
                var_s3_2 = SYMBOL_LOCATION.unk1D8;
                do {
                    temp_a0 = var_s3_2;
                    var_s3_2 += 1;
                    var_s4_2 += 1;
                    var_s2 += 4;
                    __Mgr_ReturnMode(temp_a0, 0, 1);
                    var_s2->unk-4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
                } while (var_s4_2 != 8);
                temp_v0 = sp30->unk-62B8;
                *(s32 *)0x74080 = 0xF200;
                if (!(temp_v0->unk70000 & 1)) {
                    do {

                    } while (!(temp_v0->unk70000 & 1));
                }
                var_s1_2 += 1;
                *(s32 *)0x74080 = 0xA0704;
                *(s32 *)0x74080 = 0;
                if (sp28 != var_s1_2) {
                    goto loop_68;
                }
                var_s3 = sp38;
                var_s6 = (void *) spB0;
                var_s5 = (enum GLenum) spA8;
                var_s4 = (enum GLenum) spA0;
            }
block_56:
            if (var_s4 == GL_ABGR_EXT) {
block_57:
                goto block_58;
            }
block_13:
            getbaseformat((s64) var_s4);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0x8000) {
                if (var_s4 == GL_ABGR_EXT) {

                } else {
                    getbaseformat((s64) var_s4);
                }
                var_s1_3 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
            } else {
block_58:
                var_s1_3 = 8;
            }
            getbaseformat((s64) sp30->unk-7DF0);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0x8000) {
                var_t3 = 8;
            } else {
                getbaseformat((s64) sp30->unk-7DF0);
                var_t3 = M2C_ERROR(/* Read from unset register $v0 */) - 0x1903;
            }
            var_s4_3 = 0;
            var_a2 = &sp18;
            var_a0 = &sp8;
            var_a3 = 0;
            temp_t8 = &sub_0dbf0000 - 0x1A28;
            temp_t2 = (var_s1_3 * 0x2C) + temp_t8;
            temp_a7 = temp_t2->unk14;
loop_23:
            temp_v0_2 = var_a3 + var_s6;
            var_s4_3 += 1;
            if ((1 << var_s4_3) & temp_a7) {
                var_f4 = temp_v0_2->unk0;
                *var_a0 = var_f4;
                var_s1_4 = sp28 - 2;
                var_f5 = temp_v0_2->unk10;
                var_v0 = temp_v0_2 + 0x20;
                *var_a2 = var_f5;
                if (sp28 != 1) {
                    var_a4 = var_s3 >> 1;
                    if (var_s3 & 1) {
                        temp_f6 = temp_v0_2->unk20;
                        var_s1_4 -= 1;
                        if (temp_f6 < var_f4) {
                            var_f4 = temp_f6;
                            *var_a0 = temp_f6;
                        }
                        temp_f6_2 = var_v0->unk10;
                        var_v0 += 0x20;
                        if (var_f5 < temp_f6_2) {
                            var_f5 = temp_f6_2;
                            *var_a2 = temp_f6_2;
                        }
                        var_a4 = var_s3 >> 1;
                    }
                    if (var_a4 != 0) {
loop_36:
                        temp_f6_3 = var_v0->unk0;
                        var_s1_4 -= 2;
                        if (temp_f6_3 < var_f4) {
                            var_f4 = temp_f6_3;
                            *var_a0 = temp_f6_3;
                        }
                        temp_f6_4 = var_v0->unk10;
                        if (var_f5 < temp_f6_4) {
                            var_f5 = temp_f6_4;
                            *var_a2 = temp_f6_4;
                        }
                        temp_f6_5 = var_v0->unk20;
                        if (temp_f6_5 < var_f4) {
                            var_f4 = temp_f6_5;
                            *var_a0 = temp_f6_5;
                        }
                        temp_f6_6 = var_v0->unk30;
                        var_v0 += 0x40;
                        if (var_f5 < temp_f6_6) {
                            var_f5 = temp_f6_6;
                            *var_a2 = temp_f6_6;
                        }
                        if (var_s1_4 != -1) {
                            goto loop_36;
                        }
                    }
                }
            } else {
                *var_a0 = 0.0f;
                *var_a2 = 0.0f;
            }
            var_a0 += 4;
            var_a2 += 4;
            var_a3 += 4;
            if (var_s4_3 != 4) {
                goto loop_23;
            }
            if (var_s5 >= GL_FLOAT) {
                switch (var_s5) {                   /* switch 1; irregular */
                default:                            /* switch 1 */
block_46:
                    __glMgrim_HistogramEXT((enum GLenum) &spE4, (s32) var_s5, GL_ONE, var_a3);
                    __glMgr_PackMinmax((__GLcontext *) spE4, spE4, var_s5, &sp8, &sp18, temp_s0->unk430);
                    break;
                case GL_UNSIGNED_BYTE_3_3_2_EXT:    /* switch 1 */
                    goto block_46;
                case GL_UNSIGNED_INT_8_8_8_8_EXT:   /* switch 1 */
                    goto block_46;
                }
            } else {
                switch (var_s5) {                   /* switch 2; irregular */
                case GL_SHORT:                      /* switch 2 */
block_49:
                    __glMgr_FormatMinmax(temp_s0, temp_s0, spE4, var_s5, &sp8, &sp18, (var_t3 * 0x2C) + temp_t8 + 0x10, temp_t2 + 0x10, temp_a7);
                    break;
                case GL_BYTE:                       /* switch 2 */
                    goto block_49;
                case GL_INT:                        /* switch 2 */
                    goto block_49;
                }
            }
            if (sp40 == 1) {
                __glMgrResetMinMaxMemory(M2C_ERROR(/* Read from unset register $a0 */));
            }
            return;
        }
        __glSetError(0x500, 0x131480U, 0x802EU, (__GLcontext *) temp_a5);
        return;
    }
    __glSetError(0x502, 0x131480U);
}

void __glMgrim_ResetMinmaxEXT(enum GLenum target) {
    if (__glBeginMode != 1) {
        if (target != GL_MINMAX_EXT) {
            __glSetError(0x500, 0x802EU);
        } else {
            __glMgrResetMinMaxMemory((__GLcontext *) target, 0x802E);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetMinmaxParameterivEXT(enum GLenum target, enum GLenum pname, s32 *params) {
    s64 sp20;
    s64 sp8;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp0 = (s64) params;
    sp8 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        if (target != GL_MINMAX_EXT) {
            __glSetError(0x500, (u32) __glCurrentContext);
            var_ra = sp20;
        }
        if (pname != GL_MINMAX_FORMAT_EXT) {
            if (pname != GL_MINMAX_SINK_EXT) {
                sp20 = var_ra;
                __glSetError(0x500);
                return;
            }
            *sp0 = (s32) sp8->unk820D;
            return;
        }
        *sp0 = (s32) sp8->unk8210;
        return;
    }
    __glSetError(0x502, (u32) __glCurrentContext);
}

void __glMgrim_GetMinmaxParameterfvEXT(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp20;
    s64 sp8;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp0 = (s64) params;
    sp8 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        if (target != GL_MINMAX_EXT) {
            __glSetError(0x500, (u32) __glCurrentContext);
            var_ra = sp20;
        }
        if (pname != GL_MINMAX_FORMAT_EXT) {
            if (pname != GL_MINMAX_SINK_EXT) {
                sp20 = var_ra;
                __glSetError(0x500);
                return;
            }
            *sp0 = (f32) sp8->unk820D;
            return;
        }
        *sp0 = (f32) ((u64) ((s64) sp8->unk8210 << 0x20) >> 0x20);
        return;
    }
    __glSetError(0x502, (u32) __glCurrentContext);
}
