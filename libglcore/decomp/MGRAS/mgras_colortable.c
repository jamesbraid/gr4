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

extern ? SYMBOL_LOCATION;
extern ? sub_0dbf0000;

void __glMgrInitColorTableState(__GLcontext *gc, ...) {
    f32 *var_v0;
    f32 *var_v0_3;
    f32 *var_v0_4;
    s8 *var_v0_2;

    var_v0 = gc->imports.malloc(gc, 0x10000U);
    gc->unk838C = var_v0;
    if (var_v0 == NULL) {
        gc->imports.fatal(gc, &sub_0dbf0000 - 0x1BB8);
        var_v0 = gc->unk838C;
    }
    *var_v0 = 1.0f;
    gc->unk838C->unk4 = 1.0f;
    gc->unk838C->unk8 = 1.0f;
    gc->unk838C->unkC = 1.0f;
    gc->unk83B8 = 0.0f;
    gc->unk83BC = 0.0f;
    gc->unk83C0 = 0.0f;
    gc->unk83C4 = 0.0f;
    gc->unk83A8 = 1.0f;
    gc->unk83AC = 1.0f;
    gc->unk83B0 = 1.0f;
    gc->unk83B4 = 1.0f;
    gc->unk83A4 = 0;
    gc->unk83A0 = 0xF;
    gc->unk839C = 1;
    gc->unk8398 = 0x1908;
    gc->unk8394 = 0x1908;
    gc->unk8390 = 0x1406;
    var_v0_2 = gc->imports.malloc(gc, 0x300U);
    gc->unk83C8 = var_v0_2;
    if (var_v0_2 == NULL) {
        gc->imports.fatal(gc, &sub_0dbf0000 - 0x1BB8);
        var_v0_2 = gc->unk83C8;
    }
    *var_v0_2 = 1;
    gc->unk83C8->unk1 = 1;
    gc->unk83C8->unk2 = 1;
    gc->unk83F4 = 0.0f;
    gc->unk83F8 = 0.0f;
    gc->unk83FC = 0.0f;
    gc->unk8400 = 0.0f;
    gc->unk83E4 = 1.0f;
    gc->unk83E8 = 1.0f;
    gc->unk83EC = 1.0f;
    gc->unk83F0 = 1.0f;
    gc->unk83E0 = 0;
    gc->unk83DC = 0xE;
    gc->unk83D8 = 0;
    gc->unk83D4 = 0x1907;
    gc->unk83D0 = 0x1907;
    gc->unk83CC = 0x1401;
    var_v0_3 = gc->imports.malloc(gc, 0x10000U);
    gc->unk8404 = var_v0_3;
    if (var_v0_3 == NULL) {
        gc->imports.fatal(gc, &sub_0dbf0000 - 0x1BB8);
        var_v0_3 = gc->unk8404;
    }
    *var_v0_3 = 1.0f;
    gc->unk8404->unk4 = 1.0f;
    gc->unk8404->unk8 = 1.0f;
    gc->unk8404->unkC = 1.0f;
    gc->unk8430 = 0.0f;
    gc->unk8434 = 0.0f;
    gc->unk8438 = 0.0f;
    gc->unk843C = 0.0f;
    gc->unk8420 = 1.0f;
    gc->unk8424 = 1.0f;
    gc->unk8428 = 1.0f;
    gc->unk842C = 1.0f;
    gc->unk841C = 0;
    gc->unk8418 = 0xF;
    gc->unk8414 = 1;
    gc->unk8410 = 0x1908;
    gc->unk840C = 0x1908;
    gc->unk8408 = 0x1406;
    var_v0_4 = gc->imports.malloc(gc, 0x10000U);
    gc->unk8440 = var_v0_4;
    if (var_v0_4 == NULL) {
        gc->imports.fatal(gc, &sub_0dbf0000 - 0x1BB8);
        var_v0_4 = gc->unk8440;
    }
    *var_v0_4 = 1.0f;
    gc->unk8440->unk4 = 1.0f;
    gc->unk8440->unk8 = 1.0f;
    gc->unk8440->unkC = 1.0f;
    gc->unk8468 = 1.0f;
    gc->unk8464 = 1.0f;
    gc->unk8460 = 1.0f;
    gc->unk845C = 1.0f;
    gc->unk8478 = 0.0f;
    gc->unk8474 = 0.0f;
    gc->unk8470 = 0.0f;
    gc->unk846C = 0.0f;
    gc->unk84A4 = 0.0f;
    gc->unk84A0 = 0.0f;
    gc->unk849C = 0.0f;
    gc->unk8498 = 0.0f;
    gc->unk84B4 = 0.0f;
    gc->unk84B0 = 0.0f;
    gc->unk84AC = 0.0f;
    gc->unk84A8 = 0.0f;
    gc->unk84E0 = 0.0f;
    gc->unk84DC = 0.0f;
    gc->unk84D8 = 0.0f;
    gc->unk84D4 = 0.0f;
    gc->unk84F0 = 0.0f;
    gc->unk84EC = 0.0f;
    gc->unk84E8 = 0.0f;
    gc->unk84E4 = 0.0f;
    gc->unk851C = 0.0f;
    gc->unk8518 = 0.0f;
    gc->unk8514 = 0.0f;
    gc->unk8510 = 0.0f;
    gc->unk852C = 0.0f;
    gc->unk8528 = 0.0f;
    gc->unk8524 = 0.0f;
    gc->unk8520 = 0.0f;
    gc->unk8558 = 0.0f;
    gc->unk8554 = 0.0f;
    gc->unk8550 = 0.0f;
    gc->unk854C = 0.0f;
    gc->unk8568 = 0.0f;
    gc->unk8564 = 0.0f;
    gc->unk8560 = 0.0f;
    gc->unk855C = 0.0f;
    gc->unk8450 = 1;
    gc->unk84C0 = 0x1907;
    gc->unk84C4 = 0x1907;
    gc->unk8444 = 0x1406;
    gc->unk8448 = 0x1908;
    gc->unk844C = 0x1908;
    gc->unk8454 = 0xF;
    gc->unk8458 = 0;
    gc->unk847C = 0;
    gc->unk8480 = 0x1406;
    gc->unk8484 = 0x1908;
    gc->unk8488 = 0x1908;
    gc->unk848C = 0;
    gc->unk8490 = 0xF;
    gc->unk8494 = 0;
    gc->unk84B8 = 0;
    gc->unk84BC = 0x1401;
    gc->unk84C8 = 0;
    gc->unk84CC = 0xE;
    gc->unk84D0 = 0;
    gc->unk84F4 = 0;
    gc->unk84F8 = 0x1406;
    gc->unk84FC = 0x1908;
    gc->unk8500 = 0x1908;
    gc->unk8504 = 0;
    gc->unk8508 = 0xF;
    gc->unk850C = 0;
    gc->unk8530 = 0;
    gc->unk8534 = 0x1406;
    gc->unk8538 = 0x1908;
    gc->unk853C = 0x1908;
    gc->unk8540 = 0;
    gc->unk8544 = 0xF;
    gc->unk8548 = 0;
}

void __glMgrFreeColorTableState(__GLcontext *gc, ...) {
    s64 sp18;
    s64 var_ra;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;

    var_ra = saved_reg_ra;
    temp_a1 = gc->unk838C;
    if (temp_a1 != NULL) {
        gc->imports.free(gc, temp_a1);
        var_ra = sp18;
    }
    temp_a1_2 = gc->unk83C8;
    if (temp_a1_2 != NULL) {
        sp18 = var_ra;
        gc->imports.free(gc, temp_a1_2);
    }
    temp_a1_3 = gc->unk8404;
    if (temp_a1_3 != NULL) {
        sp18 = var_ra;
        gc->imports.free(gc, temp_a1_3);
    }
    temp_a1_4 = gc->unk8440;
    if (temp_a1_4 != NULL) {
        sp18 = var_ra;
        gc->imports.free(gc, temp_a1_4);
    }
}

void __glMgrGetTable(__GLcontext *gc, ...) {
    void *temp_v0;

    temp_v0 = gc + 0xFFFF7F44;
    if ((u32) temp_v0 < 0x1AU) {
        switch (*(((s32) temp_v0 * 4) + (&sub_0dbf0000 - 0x1B80))) { /* unable to parse jump table */
        case 20:
            return;
        case 0:
            return;
        case 21:
            return;
        case 22:
            return;
        case 23:
            return;
        case 1:
            return;
        case 24:
            return;
        }
    } else {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 25:
    }
}

void __glMgrScaleBiasClampTable(__GLcontext *gc, s32 arg1, ...) {
    f32 var_f10;
    f32 var_f6;
    f32 var_f7_2;
    f32 var_f9;
    f64 temp_f10;
    f64 temp_f7;
    f64 temp_f8;
    f64 temp_f9;
    f64 var_f11;
    f64 var_f6_2;
    f64 var_f7;
    f64 var_f9_2;
    s32 var_a4;
    void *(*var_a3)(__GLcontext *, u32);
    void *(*var_a5)(__GLcontext *, u32);

    var_a4 = 0;
    var_a3 = gc->imports.malloc;
    var_a5 = var_a3;
    if (arg1 > 0) {
loop_4:
        temp_f10 = (f64) ((var_a3->unk0 * (bitwise f32) gc->imports.atoi) + (bitwise f32) gc->imports.fprintf);
        var_f7 = temp_f10;
        var_f6 = second half of f64;
        if (temp_f10 < (second half of f64)) {
            var_f7 = second half of f64;
            var_f6 = second half of f64;
        }
        if ((f64) ((var_a3->unk4 * (bitwise f32) gc->imports.sprintf) + (bitwise f32) gc->imports.getDrawablePrivate) < (second half of f64)) {

        }
        var_f9 = second half of f64;
        if ((f64) var_f6 < (second half of f64)) {
            var_f9 = second half of f64;
        }
        var_f7_2 = second half of f64;
        temp_f9 = (f64) (f32) var_f7;
        if ((f64) var_f9 < (second half of f64)) {
            var_f7_2 = second half of f64;
        }
        var_f11 = temp_f9;
        var_f10 = second half of f64;
        temp_f7 = (f64) var_f7_2;
        if (temp_f9 > 1.0) {
            var_f11 = 1.0;
            var_f10 = second half of f64;
        }
        var_f9_2 = 1.0;
        if (!(temp_f7 > 1.0)) {
            var_f9_2 = temp_f7;
        }
        var_a3 += 0x10;
        if ((f64) var_f10 > 1.0) {

        }
        temp_f8 = (f64) (f32) (second half of f64);
        var_a5 += 0x10;
        var_f6_2 = 1.0;
        if (temp_f8 > 1.0) {

        } else {
            var_f6_2 = temp_f8;
        }
        var_a4 += 1;
        var_a5->unk-C = (f32) var_f9_2;
        var_a5->unk-8 = (f32) (second half of f64);
        var_a5->unk-10 = (f32) var_f11;
        var_a5->unk-4 = (f32) var_f6_2;
        if (arg1 != var_a4) {
            goto loop_4;
        }
    }
}

void __glMgrLoadTextureColorLUT(__GLcontext *gc, s32 arg1, ...) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    __GLcontext *temp_s2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_s5_4;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s6_3;
    s64 var_s0;
    s64 var_s1;
    s64 var_s3;
    s64 var_s5;

    var_s0 = saved_reg_s0;
    var_s1 = saved_reg_s1;
    var_s3 = saved_reg_s3;
    var_s5 = saved_reg_s5;
    temp_s2 = __glCurrentContext;
    if (arg1 != 0) {
        __glMgrasWrite(temp_s2, temp_s2, 0x15C, 0x90000000, SYMBOL_LOCATION.unk138, 1);
        var_s6 = 0;
        if (arg1 > 0) {
            temp_lo = 0x100 / arg1;
            M2C_TRAP_IF(arg1 == 0);
            var_s5_2 = 0;
loop_4:
            var_s0_2 = 0;
            if (temp_lo > 0) {
                do {
                    __glMgrasWrite(temp_s2, temp_s2, 0x15D, *(var_s5_2 + gc), SYMBOL_LOCATION.unk138, 1);
                    var_s0_2 += 1;
                } while (temp_lo != var_s0_2);
            }
            var_s6 += 1;
            var_s5_2 += 3;
            if (arg1 != var_s6) {
                goto loop_4;
            }
            var_s5 = sp38;
            var_s1 = sp40;
            var_s0 = sp48;
            var_s3 = sp50;
        }
        sp40 = var_s1;
        sp38 = var_s5;
        var_s6_2 = 0;
        if (arg1 > 0) {
            temp_lo_2 = 0x100 / arg1;
            sp50 = var_s3;
            sp48 = var_s0;
            M2C_TRAP_IF(arg1 == 0);
            var_s5_3 = 0;
loop_12:
            var_s0_3 = 0;
            if (temp_lo_2 > 0) {
                do {
                    __glMgrasWrite(temp_s2, temp_s2, 0x15D, (var_s5_3 + gc)->unk1, SYMBOL_LOCATION.unk138, 1);
                    var_s0_3 += 1;
                } while (temp_lo_2 != var_s0_3);
            }
            var_s6_2 += 1;
            var_s5_3 += 3;
            if (arg1 != var_s6_2) {
                goto loop_12;
            }
            var_s5 = sp38;
            var_s1 = sp40;
            var_s0 = sp48;
            var_s3 = sp50;
        }
        var_s6_3 = 0;
        if (arg1 > 0) {
            temp_lo_3 = 0x100 / arg1;
            sp50 = var_s3;
            sp48 = var_s0;
            M2C_TRAP_IF(arg1 == 0);
            sp38 = var_s5;
            sp40 = var_s1;
            var_s5_4 = 0;
loop_20:
            var_s0_4 = 0;
            if (temp_lo_3 > 0) {
                do {
                    __glMgrasWrite(temp_s2, temp_s2, 0x15D, (var_s5_4 + gc)->unk2, SYMBOL_LOCATION.unk138, 1);
                    var_s0_4 += 1;
                } while (temp_lo_3 != var_s0_4);
            }
            var_s6_3 += 1;
            var_s5_4 += 3;
            if (arg1 != var_s6_3) {
                goto loop_20;
            }
        }
    }
}

void __glMgrTextureColorTable(__GLcontext *gc, s32 arg2, u32 arg3, s32 arg4, s64 arg5, s32 arg6, ...) {
    s64 sp48;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0_2;
    s32 temp_a0;
    s64 temp_a1;

    sp8 = arg5;
    sp0 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgrGetTable(gc, gc, __glCurrentContext);
        temp_a1 = M2C_ERROR(/* Read from unset register $v0 */);
        temp_a0 = arg2 > 0x100;
        if (gc != (__GLcontext *)0x80BD) {
            if (temp_a0 == 0) {
                M2C_ERROR(/* Read from unset register $v0 */)->unkC = arg6;
                M2C_ERROR(/* Read from unset register $v0 */)->unk10 = arg2;
                M2C_ERROR(/* Read from unset register $v0 */)->unk8 = arg3;
                M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg4;
                if ((arg6 == 0x1908) || (arg6 == 0x8049)) {
                    sp48 = temp_a1;
                    if (sp0->unk9CB1 != 0) {
                        goto block_10;
                    }
                    __glSetError(0x500, temp_a1);
                    __glMgrUpdateTextureColorTableState(M2C_ERROR(/* Read from unset register $a0 */));
                    return;
                }
block_10:
                sp48 = temp_a1;
                image1D_to_texturecolortable(arg6, arg2, arg3, arg4, sp8, sp48->unk0);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    __glSetError(M2C_ERROR(/* Read from unset register $v0 */));
                    __glMgrUpdateTextureColorTableState(M2C_ERROR(/* Read from unset register $a0 */));
                    return;
                }
                temp_a0_2 = sp48->unk0;
                __glMgrLoadTextureColorLUT(temp_a0_2, temp_a0_2, sp48->unk10);
                if (sp0->unk83E0 != 0) {
                    __glMgrUpdateTextureColorTableState(M2C_ERROR(/* Read from unset register $a0 */));
                }
                return;
            }
            __glSetError(0x8031, temp_a1);
            __glMgrUpdateTextureColorTableState(M2C_ERROR(/* Read from unset register $a0 */));
            return;
        }
        M2C_ERROR(/* Read from unset register $v0 */)->unk8 = arg3;
        M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg4;
        if (temp_a0 != 0) {
            M2C_ERROR(/* Read from unset register $v0 */)->unkC = 0;
            M2C_ERROR(/* Read from unset register $v0 */)->unk10 = 0;
        } else {
            M2C_ERROR(/* Read from unset register $v0 */)->unkC = arg6;
            M2C_ERROR(/* Read from unset register $v0 */)->unk10 = arg2;
        }
        return;
    }
    __glSetError(0x502, (s64) __glCurrentContext);
}

void __glMgrColorTable(__GLcontext *gc, s32 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, ...) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a4;
    __GLcontext *temp_s2;
    s32 temp_lo;
    s32 var_a7;
    void *(*temp_a0_4)(__GLcontext *, u32);

    sp10 = arg6;
    sp0 = arg5;
    sp8 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgrGetTable(gc, gc, __glCurrentContext);
        temp_s2 = M2C_ERROR(/* Read from unset register $v0 */);
        if ((gc != (__GLcontext *)0x80D3) && (gc != (__GLcontext *)0x80D4) && (gc != (__GLcontext *)0x80D5)) {
            if (arg2 < 0x1001) {
                M2C_ERROR(/* Read from unset register $v0 */)->unk10 = arg2;
                M2C_ERROR(/* Read from unset register $v0 */)->unk8 = arg3;
                M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg4;
                M2C_ERROR(/* Read from unset register $v0 */)->unkC = (s32) sp10;
                getchannels(sp10);
                temp_s2->imports.fatal = M2C_ERROR(/* Read from unset register $v0 */);
                if (gc != (__GLcontext *)0x80D0) {
                    var_a7 = 0x80D2;
                    if (gc != (__GLcontext *)0x80D1) {
                        if (gc == (__GLcontext *)0x80D2) {
                            sp8->unk7D60 = (s32) (sp8->unk7D60 | 0x4000);
                        }
                    } else {
                        sp8->unk7D60 = (s32) (sp8->unk7D60 | 0x2000);
                    }
                } else {
                    var_a7 = sp8->unk7D60 | 0x1000;
                    sp8->unk7D60 = var_a7;
                }
                __glFillImage(sp8, arg2, 1, arg3, arg4, sp0, temp_s2->imports.malloc, var_a7);
                __glElementsPerGroup(arg3);
                temp_lo = M2C_ERROR(/* Read from unset register $v0 */) * arg2;
                temp_a0 = temp_s2->imports.malloc;
                __glMgrCvtToFloat(temp_a0, temp_a0, temp_lo, arg4);
                temp_a0_2 = temp_s2->imports.malloc;
                __glMgrCvtScaleBias(temp_a0_2, temp_a0_2, temp_lo, arg4);
                temp_a4 = temp_s2->imports.malloc;
                temp_a0_3 = (temp_lo * 4) + temp_a4;
                __glMgrCvtToRGBA(temp_a0_3, temp_a0_3, (arg2 * 4 * 4) + temp_a4, arg2, arg3, temp_a4);
                __glMgrGetTable(temp_s2, temp_s2, arg2);
                temp_a0_4 = temp_s2->imports.malloc;
                __glMgrCvtToInternalFmt((__GLcontext *) temp_a0_4, temp_a0_4, arg2, sp10);
                return;
            }
            __glSetError(0x8031);
            return;
        }
        M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg4;
        M2C_ERROR(/* Read from unset register $v0 */)->unk8 = arg3;
        if (arg2 >= 0x1001) {
            M2C_ERROR(/* Read from unset register $v0 */)->unkC = 0;
            M2C_ERROR(/* Read from unset register $v0 */)->unk10 = 0;
        } else {
            M2C_ERROR(/* Read from unset register $v0 */)->unk10 = arg2;
            M2C_ERROR(/* Read from unset register $v0 */)->unkC = (s32) sp10;
        }
        return;
    }
    __glSetError(0x502, (s64) __glCurrentContext);
}

void __glMgrim_ColorTableSGI(enum GLenum target, enum GLenum internalformat, s32 width, enum GLenum format, enum GLenum type, void *table) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a7;
    u32 var_a7;

    sp10 = (s64) table;
    sp8 = (s64) type;
    sp0 = (s64) internalformat;
    if (__glBeginMode != 1) {
        var_a7 = __glCurrentContext->beginMode;
        if (var_a7 != 1) {
            switch (target) {                       /* irregular */
            default:
                var_a7 = 0x80D1;
                if (target != GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                    var_a7 = 0x80D5;
                    if ((target != GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI) && (target != GL_PROXY_COLOR_TABLE_SGI)) {
                        if (target != GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                            if (target == GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI) {
                                goto block_10;
                            }
                            __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, 0x80D5U);
                            return;
                        }
                        goto block_11;
                    }
                case GL_COLOR_TABLE_SGI:
block_10:
                    goto block_11;
                }
block_11:
                sp18 = (s64) __glMgrColorTable;
block_12:
                if (format >= GL_RGBA) {
                    if (format >= GL_LUMINANCE) {
                        var_a7 = format < GL_ABGR_EXT;
                        if (var_a7 == 0) {
                            if (format > GL_ABGR_EXT) {
                                if (format == GL_INTENSITY) {
                                    var_a7 = 0x9CB1;
                                    if ((sp18 != __glMgrTextureColorTable) || (var_a7 = (u32) __glCurrentContext->unk9CB1, (var_a7 == 0))) {
                                        __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                                        return;
                                    }
                                    goto block_27;
                                }
                                /* Duplicate return node #36. Try simplifying control flow for better match */
                                __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                                return;
                            }
                            goto block_27;
                        }
                        var_a7 = format < GL_LUMINANCE_ALPHA;
                        if (var_a7 == 0) {
                            if (format < 0x190BU) {
                                goto block_27;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                            return;
                        }
                        if (format == GL_LUMINANCE) {
                            goto block_27;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                        return;
                    }
                    goto block_27;
                }
                if (format >= GL_BLUE) {
                    if (format >= GL_ALPHA) {
                        var_a7 = format < GL_RGBA;
                        if (format >= GL_RGB) {
                            if (var_a7 != 0) {
                                goto block_27;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                            return;
                        }
                        if (format == GL_ALPHA) {
                            goto block_27;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                        return;
                    }
                    goto block_27;
                }
                if (format >= GL_GREEN) {
                    if (format < GL_BLUE) {
                        goto block_27;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                    return;
                }
                if (format != GL_RED) {
                    __glSetError(0x500, (s64) __glMgrTextureColorTable, 1, var_a7);
                    return;
                }
block_27:
                getbaseformat(sp0, (s64) __glMgrTextureColorTable, 1, (u8) var_a7);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    if ((width < 0) || ((width - 1) & width)) {
                        __glSetError(0x501);
                        return;
                    }
                    temp_a7 = (u32) (sp8 - 0x1400) < 7U;
                    if (temp_a7 != 0) {
                        ((? (*)(enum GLenum, s64, s32, enum GLenum, s64, s64, ?, s32)) sp18)(target, sp0, width, format, sp8, sp10, M2C_ERROR(/* Read from unset register $v0 */), temp_a7);
                        return;
                    }
                    __glSetError(0x500);
                    return;
                }
                __glSetError(0x500);
                return;
            case GL_TEXTURE_COLOR_TABLE_SGI:
            case GL_PROXY_TEXTURE_COLOR_TABLE_SGI:
                sp18 = (s64) __glMgrTextureColorTable;
                goto block_12;
            }
        } else {
            __glSetError(0x502, (s64) __glMgrTextureColorTable, 1, var_a7);
        }
    } else {
        __glSetError(0x502, 1);
    }
}

void __glMgrim_ColorTableParameterfvSGI(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp8;
    s64 sp0;

    sp0 = (s64) params;
    sp8 = (s64) pname;
    if (__glBeginMode != 1) {
        if ((target != GL_TEXTURE_COLOR_TABLE_SGI) && (target != GL_COLOR_TABLE_SGI) && (target != GL_POST_CONVOLUTION_COLOR_TABLE_SGI) && (target != GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI)) {
            __glSetError(0x500, 0x80BC, 0x80D0);
            return;
        }
        __glMgrGetTable((__GLcontext *) target, 0x80BC, 0x80D0);
        if (sp8 != 0x80D6) {
            if (sp8 != 0x80D7) {
                __glSetError(0x500);
                return;
            }
            M2C_ERROR(/* Read from unset register $v0 */)->unk2C = (f32) sp0->unk0;
            M2C_ERROR(/* Read from unset register $v0 */)->unk30 = (f32) sp0->unk4;
            M2C_ERROR(/* Read from unset register $v0 */)->unk34 = (f32) sp0->unk8;
            M2C_ERROR(/* Read from unset register $v0 */)->unk38 = (f32) sp0->unkC;
        } else {
            M2C_ERROR(/* Read from unset register $v0 */)->unk1C = (f32) sp0->unk0;
            M2C_ERROR(/* Read from unset register $v0 */)->unk20 = (f32) sp0->unk4;
            M2C_ERROR(/* Read from unset register $v0 */)->unk24 = (f32) sp0->unk8;
            M2C_ERROR(/* Read from unset register $v0 */)->unk28 = (f32) sp0->unkC;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_ColorTableParameterivSGI(enum GLenum target, enum GLenum pname, s32 *params) {
    if ((pname == GL_COLOR_TABLE_SCALE_SGI) || (pname == GL_COLOR_TABLE_BIAS_SGI)) {
        sp->unk0 = (f32) params->unk0;
        sp->unk4 = (f32) params->unk4;
        sp->unk8 = (f32) params->unk8;
        sp->unkC = (f32) params->unkC;
    }
    __glMgrim_ColorTableParameterfvSGI(target, pname, sp);
}

void __glMgrim_CopyColorTableSGI(enum GLenum target, enum GLenum internalformat, s32 x, s32 y, s32 width) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;
    void *temp_v0;

    temp_s0 = __glCurrentContext;
    sp20 = (s64) y;
    sp18 = (s64) x;
    sp10 = (s64) internalformat;
    sp8 = (s64) target;
    if (__glBeginMode != 1) {
        temp_v0 = temp_s0->imports.malloc(temp_s0, width * 8);
        if (temp_v0 == NULL) {
            temp_s0->imports.fatal(temp_s0, &sub_0dbf0000 - 0x1AF8);
        }
        *(s32 *)0x74080 = 0x9600;
        sp0 = (s64) (temp_s0 + 0x10000);
        temp_s0->unk9D4C = 1;
        __glMgrDoReadPixels(temp_s0, temp_s0, sp18, sp20, width, 1, 0x1908, 0x1403, temp_v0);
        *(void *)0x74080 = 0x9700;
        sp0->unk-62B4 = 0;
        __glMgrim_ColorTableSGI((enum GLenum) sp8, (enum GLenum) sp10, width, GL_RGBA, GL_UNSIGNED_SHORT, temp_v0);
        __glMgrim_ColorTableSGI((enum GLenum) temp_s0, (enum GLenum) temp_v0, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */), M2C_ERROR(/* Read from unset register $a4 */), M2C_ERROR(/* Read from unset register $a5 */));
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetColorTableSGI(enum GLenum target, enum GLenum format, enum GLenum type, void *table) {
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
    s32 temp_a7;
    u32 temp_a1;
    void *temp_a1_2;

    temp_s1 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (((target == GL_COLOR_TABLE_SGI) || (target == GL_POST_CONVOLUTION_COLOR_TABLE_SGI) || (target == GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI)) && (table != NULL)) {
            if (format >= GL_RGB) {
                if (format < GL_RGBA) {
                    goto block_7;
                }
                if (format >= GL_LUMINANCE_ALPHA) {
                    if ((format >= 0x190BU) && (format != GL_ABGR_EXT)) {
                        /* Duplicate return node #16. Try simplifying control flow for better match */
                        __glSetError(0x500, 1);
                        return;
                    }
                    goto block_7;
                }
                if (format >= GL_LUMINANCE) {
                    if (format < GL_LUMINANCE_ALPHA) {
                        goto block_7;
                    }
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    __glSetError(0x500, 1);
                    return;
                }
                if (format == GL_RGBA) {
                    goto block_7;
                }
                /* Duplicate return node #16. Try simplifying control flow for better match */
                __glSetError(0x500, 1);
                return;
            }
            if (format >= GL_BLUE) {
                if ((format >= GL_ALPHA) && (format != GL_ALPHA)) {
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    __glSetError(0x500, 1);
                    return;
                }
                goto block_7;
            }
            if (format >= GL_GREEN) {
                if (format < GL_BLUE) {
                    goto block_7;
                }
                /* Duplicate return node #16. Try simplifying control flow for better match */
                __glSetError(0x500, 1);
                return;
            }
            if (format == GL_RED) {
block_7:
                sp258 = (s64) table;
                sp260 = (s64) type;
                temp_a1 = type - 0x1400;
                temp_a1_2 = (temp_a1 * 4) + (&sub_0dbf0000 - 0x1AB8);
                if (temp_a1 < 7U) {
                    __glMgrGetTable((__GLcontext *) target, temp_a1_2, 1);
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
                    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
                    sp208 = (f64) temp_f3_2;
                    sp200 = (f64) temp_f2_3;
                    sp1F8 = (f64) temp_f1_3;
                    switch (temp_a0) {              /* irregular */
                    default:
                        sp0 = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
                        break;
                    case 0x1909:
                    case 0x8049:
                        sp0 = 0x1903;
                        break;
                    case 0x190A:
                        sp0 = 1;
                        break;
                    }
                    temp_a7 = *M2C_ERROR(/* Read from unset register $v0 */);
                    sp8 = temp_a7;
                    sp4 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                    __glInitImagePack(temp_s1, sp, M2C_ERROR(/* Read from unset register $v0 */)->unk10, 1, format, sp260, sp258, temp_a7);
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
                __glSetError(0x500, (s64) temp_a1_2, 1);
                return;
            }
            __glSetError(0x500, 1);
            return;
        }
        __glSetError(0x500, 1);
        return;
    }
    __glSetError(0x502, 1);
}

void __glMgrim_GetColorTableParameterfvSGI(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp8;
    s64 sp0;
    ? var_a3;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    u32 temp_a0;

    sp8 = (s64) params;
    sp0 = (s64) pname;
    if (__glBeginMode != 1) {
        var_a3 = 0x80BD;
        if ((target != GL_TEXTURE_COLOR_TABLE_SGI) && (target != GL_PROXY_TEXTURE_COLOR_TABLE_SGI) && (target != GL_COLOR_TABLE_SGI) && (target != GL_POST_CONVOLUTION_COLOR_TABLE_SGI)) {
            var_a3 = 0x80D3;
            if ((target != GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI) && (target != GL_PROXY_COLOR_TABLE_SGI) && (target != GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI) && (target != GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI)) {
                __glSetError(0x500, 0x80D3, 0x80D4);
                return;
            }
        }
        __glMgrGetTable((__GLcontext *) target, target, var_a3);
        temp_a0 = sp0 + 0xFFFF7F2A;
        if (temp_a0 < 0xAU) {
            switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x1A98))) { /* unable to parse jump table */
            case 0:
                sp8->unk0 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
                sp8->unk4 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk20;
                sp8->unk8 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk24;
                sp8->unkC = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk28;
                break;
            case 3:
                sp8->unk0 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk10;
                break;
            case 1:
                sp8->unk0 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk2C;
                sp8->unk4 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk30;
                sp8->unk8 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk34;
                sp8->unkC = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk38;
                break;
            case 2:
                sp8->unk0 = (f32) ((u64) ((s64) M2C_ERROR(/* Read from unset register $v0 */)->unkC << 0x20) >> 0x20);
                break;
            case 4:
                if ((target != GL_TEXTURE_COLOR_TABLE_SGI) && (target != GL_PROXY_TEXTURE_COLOR_TABLE_SGI)) {
                    if ((M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0) || (var_v0 = 0x10, ((M2C_ERROR(/* Read from unset register $v0 */)->unk14 & 8) == 0))) {
                        var_v0 = 0;
                    }
                    sp8->unk0 = (f32) var_v0;
                } else {
                    var_v0_2 = 0;
                    if (M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0x1907) {
                        var_v0_2 = 8;
                    }
                    sp8->unk0 = (f32) var_v0_2;
                }
                break;
            case 5:
                if ((target != GL_TEXTURE_COLOR_TABLE_SGI) && (target != GL_PROXY_TEXTURE_COLOR_TABLE_SGI)) {
                    if ((M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0) || (var_v0_3 = 0x10, ((M2C_ERROR(/* Read from unset register $v0 */)->unk14 & 4) == 0))) {
                        var_v0_3 = 0;
                    }
                    sp8->unk0 = (f32) var_v0_3;
                } else {
                    var_v0_4 = 0;
                    if (M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0x1907) {
                        var_v0_4 = 8;
                    }
                    sp8->unk0 = (f32) var_v0_4;
                }
                break;
            case 6:
                if ((target != GL_TEXTURE_COLOR_TABLE_SGI) && (target != GL_PROXY_TEXTURE_COLOR_TABLE_SGI)) {
                    if ((M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0) || (var_v0_5 = 0x10, ((M2C_ERROR(/* Read from unset register $v0 */)->unk14 & 2) == 0))) {
                        var_v0_5 = 0;
                    }
                    sp8->unk0 = (f32) var_v0_5;
                } else {
                    var_v0_6 = 0;
                    if (M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0x1907) {
                        var_v0_6 = 8;
                    }
                    sp8->unk0 = (f32) var_v0_6;
                }
                break;
            case 7:
                if (target != GL_TEXTURE_COLOR_TABLE_SGI) {
                    if (target != GL_PROXY_TEXTURE_COLOR_TABLE_SGI) {
                        if ((M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0) || (var_v0_7 = 0x10, ((M2C_ERROR(/* Read from unset register $v0 */)->unk14 & 1) == 0))) {
                            var_v0_7 = 0;
                        }
                        sp8->unk0 = (f32) var_v0_7;
                    } else {
                        goto block_64;
                    }
                } else {
block_64:
                    *(f32 *) sp8 = 0.0f;
                }
                break;
            case 8:
                if ((target != GL_TEXTURE_COLOR_TABLE_SGI) && (target != GL_PROXY_TEXTURE_COLOR_TABLE_SGI)) {
                    if ((M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0) || (var_v0_8 = 0x10, ((M2C_ERROR(/* Read from unset register $v0 */)->unk14 & 0x10) == 0))) {
                        var_v0_8 = 0;
                    }
                    sp8->unk0 = (f32) var_v0_8;
                } else {
                    var_v0_9 = 0;
                    if (M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0x1909) {
                        var_v0_9 = 8;
                    }
                    sp8->unk0 = (f32) var_v0_9;
                }
                break;
            case 9:
                if (target != GL_TEXTURE_COLOR_TABLE_SGI) {
                    if (target != GL_PROXY_TEXTURE_COLOR_TABLE_SGI) {
                        if ((M2C_ERROR(/* Read from unset register $v0 */)->unkC == 0) || (var_v0_10 = 0x10, ((M2C_ERROR(/* Read from unset register $v0 */)->unk14 & 0x20) == 0))) {
                            var_v0_10 = 0;
                        }
                        sp8->unk0 = (f32) var_v0_10;
                    } else {
                        goto block_66;
                    }
                } else {
block_66:
                    *(f32 *) sp8 = 0.0f;
                }
                break;
            }
            return;
        }
        __glSetError(0x500);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetColorTableParameterivSGI(enum GLenum target, enum GLenum pname, s32 *params) {
    s64 sp10;
    f32 *var_a0_2;
    f32 *var_a1;
    s32 temp_a3;
    s32 temp_f0;
    s32 var_a5;
    s32 var_s0;
    s64 var_a0;
    s64 var_a1_2;
    u32 temp_a4;

    switch (target) {                               /* switch 1; irregular */
    default:                                        /* switch 1 */
        __glSetError(0x500, 0x80D4);
        return;
    case GL_TEXTURE_COLOR_TABLE_SGI:                /* switch 1 */
    case GL_PROXY_TEXTURE_COLOR_TABLE_SGI:          /* switch 1 */
    case GL_COLOR_TABLE_SGI:                        /* switch 1 */
    case GL_POST_CONVOLUTION_COLOR_TABLE_SGI:       /* switch 1 */
    case GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI:      /* switch 1 */
    case GL_PROXY_COLOR_TABLE_SGI:                  /* switch 1 */
    case GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI: /* switch 1 */
        /* fallthrough */
    case GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI: /* switch 1 */
        temp_a4 = pname + 0xFFFF7F2A;
        if (temp_a4 < 0xAU) {
            switch (*((temp_a4 * 4) + (&sub_0dbf0000 - 0x1A70))) { /* switch 2; unable to parse jump table */
            case 0:                                 /* switch 2 */
            case 1:                                 /* switch 2 */
                sp10 = (s64) params;
                var_s0 = 4;
                break;
            case 2:                                 /* switch 2 */
            case 3:                                 /* switch 2 */
            case 4:                                 /* switch 2 */
            case 5:                                 /* switch 2 */
            case 6:                                 /* switch 2 */
            case 7:                                 /* switch 2 */
            case 8:                                 /* switch 2 */
            case 9:                                 /* switch 2 */
                sp10 = (s64) params;
                var_s0 = 1;
                break;
            }
            __glMgrim_GetColorTableParameterfvSGI(target, pname, sp);
            var_a1 = sp;
            if (var_s0 > 0) {
                var_a0 = sp10;
                var_a5 = var_s0 & 3;
                if (var_a5 != 0) {
                    do {
                        temp_f0 = (s32) *var_a1;
                        var_a1 += 4;
                        var_a0 += 4;
                        var_a5 -= 1;
                        var_a0->unk-4 = temp_f0;
                    } while (var_a5 != 0);
                }
                if ((var_s0 >> 2) != 0) {
                    var_a1_2 = var_a0;
                    var_a0_2 = var_a1;
                    do {
                        var_a1_2->unk0 = (s32) var_a0_2->unk0;
                        var_a1_2->unk4 = (s32) var_a0_2->unk4;
                        var_a1_2->unk8 = (s32) var_a0_2->unk8;
                        var_a1_2 += 0x10;
                        temp_a3 = (s32) var_a0_2->unkC;
                        var_a0_2 += 0x10;
                        var_a1_2->unk-4 = temp_a3;
                    } while (var_a0_2 != &sp[var_s0]);
                }
            }
            return;
        }
        __glSetError(0x500);
        return;
    }
}

void __glMgrUpdateTextureColorTableState(__GLcontext *gc, ...) {
    s64 sp10;
    s64 sp0;
    __GLcontext *temp_a3;
    s32 var_a1;
    void *temp_a0;
    void *temp_a4;

    temp_a3 = __glCurrentContext;
    temp_a4 = temp_a3 + 0x10000;
    temp_a0 = temp_a3->unk8A2C;
    if (temp_a0 != NULL) {
        var_a1 = temp_a0->unkC4;
        sp0 = (s64) temp_a4;
        if (var_a1 == 0) {
            sp10 = (s64) temp_a3;
            mgrTM_RefreshDim(temp_a0, var_a1, temp_a3, temp_a4);
            var_a1 = sp0->unk-75D4->unkC4;
        }
        mgrTM_SendTexmode1(temp_a3, var_a1);
    }
}

void image1D_to_texturecolortable(s32 arg0, s32 arg1, u32 arg2, s32 arg3, u16 *arg4, __GLcontext *arg5) {
    __GLcontext *var_a0_32;
    __GLcontext *var_a0_36;
    __GLcontext *var_a0_41;
    __GLcontext *var_a0_42;
    __GLcontext *var_a0_53;
    __GLcontext *var_a0_56;
    __GLcontext *var_a0_59;
    __GLcontext *var_a0_64;
    __GLcontext *var_a0_67;
    __GLcontext *var_a0_69;
    __GLcontext *var_a2_125;
    __GLcontext *var_a2_129;
    __GLcontext *var_a2_131;
    __GLcontext *var_a2_134;
    __GLcontext *var_a2_137;
    __GLcontext *var_a2_138;
    __GLcontext *var_a2_140;
    __GLcontext *var_a2_141;
    __GLcontext *var_a2_142;
    __GLcontext *var_a2_145;
    __GLcontext *var_a2_146;
    __GLcontext *var_a2_149;
    __GLcontext *var_a2_150;
    __GLcontext *var_a2_153;
    __GLcontext *var_a2_156;
    __GLcontext *var_a2_160;
    __GLcontext *var_a4_102;
    __GLcontext *var_a4_10;
    __GLcontext *var_a4_110;
    __GLcontext *var_a4_112;
    __GLcontext *var_a4_115;
    __GLcontext *var_a4_23;
    __GLcontext *var_a4_63;
    __GLcontext *var_a4_79;
    __GLcontext *var_a4_80;
    __GLcontext *var_a4_81;
    __GLcontext *var_a4_82;
    __GLcontext *var_a4_83;
    __GLcontext *var_a4_84;
    __GLcontext *var_a4_87;
    __GLcontext *var_a4_90;
    __GLcontext *var_a4_95;
    __GLcontext *var_a4_98;
    __GLcontext *var_a5;
    s32 temp_a3_10;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 temp_a6_7;
    s32 temp_a6_8;
    s32 temp_f0;
    s32 temp_f0_2;
    s32 temp_f0_3;
    s32 temp_f0_4;
    s32 temp_f1;
    s32 temp_f1_2;
    s32 temp_f2;
    s32 temp_f2_2;
    s32 temp_f3;
    s32 temp_f3_2;
    s32 temp_f3_3;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_12;
    s32 var_a0_13;
    s32 var_a0_14;
    s32 var_a0_15;
    s32 var_a0_16;
    s32 var_a0_17;
    s32 var_a0_18;
    s32 var_a0_19;
    s32 var_a0_21;
    s32 var_a0_22;
    s32 var_a0_23;
    s32 var_a0_24;
    s32 var_a0_25;
    s32 var_a0_27;
    s32 var_a0_28;
    s32 var_a0_29;
    s32 var_a0_2;
    s32 var_a0_30;
    s32 var_a0_31;
    s32 var_a0_33;
    s32 var_a0_35;
    s32 var_a0_37;
    s32 var_a0_38;
    s32 var_a0_39;
    s32 var_a0_3;
    s32 var_a0_40;
    s32 var_a0_43;
    s32 var_a0_44;
    s32 var_a0_45;
    s32 var_a0_47;
    s32 var_a0_48;
    s32 var_a0_49;
    s32 var_a0_4;
    s32 var_a0_50;
    s32 var_a0_54;
    s32 var_a0_55;
    s32 var_a0_57;
    s32 var_a0_58;
    s32 var_a0_5;
    s32 var_a0_60;
    s32 var_a0_61;
    s32 var_a0_62;
    s32 var_a0_65;
    s32 var_a0_66;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a2;
    s32 var_a2_100;
    s32 var_a2_101;
    s32 var_a2_102;
    s32 var_a2_103;
    s32 var_a2_104;
    s32 var_a2_105;
    s32 var_a2_106;
    s32 var_a2_107;
    s32 var_a2_108;
    s32 var_a2_109;
    s32 var_a2_10;
    s32 var_a2_110;
    s32 var_a2_111;
    s32 var_a2_112;
    s32 var_a2_113;
    s32 var_a2_114;
    s32 var_a2_115;
    s32 var_a2_116;
    s32 var_a2_117;
    s32 var_a2_118;
    s32 var_a2_11;
    s32 var_a2_121;
    s32 var_a2_124;
    s32 var_a2_126;
    s32 var_a2_127;
    s32 var_a2_128;
    s32 var_a2_12;
    s32 var_a2_132;
    s32 var_a2_135;
    s32 var_a2_136;
    s32 var_a2_13;
    s32 var_a2_143;
    s32 var_a2_144;
    s32 var_a2_147;
    s32 var_a2_148;
    s32 var_a2_14;
    s32 var_a2_154;
    s32 var_a2_157;
    s32 var_a2_158;
    s32 var_a2_15;
    s32 var_a2_16;
    s32 var_a2_17;
    s32 var_a2_18;
    s32 var_a2_19;
    s32 var_a2_20;
    s32 var_a2_21;
    s32 var_a2_22;
    s32 var_a2_23;
    s32 var_a2_24;
    s32 var_a2_25;
    s32 var_a2_26;
    s32 var_a2_27;
    s32 var_a2_28;
    s32 var_a2_29;
    s32 var_a2_2;
    s32 var_a2_30;
    s32 var_a2_31;
    s32 var_a2_32;
    s32 var_a2_33;
    s32 var_a2_34;
    s32 var_a2_35;
    s32 var_a2_36;
    s32 var_a2_37;
    s32 var_a2_38;
    s32 var_a2_39;
    s32 var_a2_3;
    s32 var_a2_40;
    s32 var_a2_41;
    s32 var_a2_42;
    s32 var_a2_43;
    s32 var_a2_44;
    s32 var_a2_45;
    s32 var_a2_46;
    s32 var_a2_47;
    s32 var_a2_48;
    s32 var_a2_49;
    s32 var_a2_4;
    s32 var_a2_50;
    s32 var_a2_51;
    s32 var_a2_52;
    s32 var_a2_53;
    s32 var_a2_54;
    s32 var_a2_55;
    s32 var_a2_56;
    s32 var_a2_57;
    s32 var_a2_58;
    s32 var_a2_59;
    s32 var_a2_5;
    s32 var_a2_60;
    s32 var_a2_61;
    s32 var_a2_62;
    s32 var_a2_63;
    s32 var_a2_64;
    s32 var_a2_65;
    s32 var_a2_66;
    s32 var_a2_67;
    s32 var_a2_68;
    s32 var_a2_69;
    s32 var_a2_6;
    s32 var_a2_70;
    s32 var_a2_71;
    s32 var_a2_72;
    s32 var_a2_73;
    s32 var_a2_74;
    s32 var_a2_75;
    s32 var_a2_76;
    s32 var_a2_77;
    s32 var_a2_78;
    s32 var_a2_79;
    s32 var_a2_7;
    s32 var_a2_80;
    s32 var_a2_81;
    s32 var_a2_82;
    s32 var_a2_83;
    s32 var_a2_84;
    s32 var_a2_85;
    s32 var_a2_86;
    s32 var_a2_87;
    s32 var_a2_88;
    s32 var_a2_89;
    s32 var_a2_8;
    s32 var_a2_90;
    s32 var_a2_91;
    s32 var_a2_92;
    s32 var_a2_93;
    s32 var_a2_94;
    s32 var_a2_95;
    s32 var_a2_96;
    s32 var_a2_97;
    s32 var_a2_98;
    s32 var_a2_99;
    s32 var_a2_9;
    s32 var_a4;
    s32 var_a4_101;
    s32 var_a4_107;
    s32 var_a4_109;
    s32 var_a4_113;
    s32 var_a4_116;
    s32 var_a4_117;
    s32 var_a4_118;
    s32 var_a4_11;
    s32 var_a4_12;
    s32 var_a4_13;
    s32 var_a4_14;
    s32 var_a4_15;
    s32 var_a4_16;
    s32 var_a4_17;
    s32 var_a4_18;
    s32 var_a4_19;
    s32 var_a4_20;
    s32 var_a4_21;
    s32 var_a4_22;
    s32 var_a4_24;
    s32 var_a4_25;
    s32 var_a4_26;
    s32 var_a4_27;
    s32 var_a4_28;
    s32 var_a4_29;
    s32 var_a4_2;
    s32 var_a4_30;
    s32 var_a4_31;
    s32 var_a4_32;
    s32 var_a4_33;
    s32 var_a4_34;
    s32 var_a4_35;
    s32 var_a4_36;
    s32 var_a4_37;
    s32 var_a4_38;
    s32 var_a4_39;
    s32 var_a4_3;
    s32 var_a4_40;
    s32 var_a4_41;
    s32 var_a4_42;
    s32 var_a4_43;
    s32 var_a4_44;
    s32 var_a4_45;
    s32 var_a4_46;
    s32 var_a4_47;
    s32 var_a4_48;
    s32 var_a4_49;
    s32 var_a4_4;
    s32 var_a4_50;
    s32 var_a4_51;
    s32 var_a4_52;
    s32 var_a4_53;
    s32 var_a4_54;
    s32 var_a4_55;
    s32 var_a4_56;
    s32 var_a4_57;
    s32 var_a4_58;
    s32 var_a4_59;
    s32 var_a4_5;
    s32 var_a4_60;
    s32 var_a4_61;
    s32 var_a4_62;
    s32 var_a4_64;
    s32 var_a4_65;
    s32 var_a4_66;
    s32 var_a4_67;
    s32 var_a4_68;
    s32 var_a4_69;
    s32 var_a4_6;
    s32 var_a4_70;
    s32 var_a4_71;
    s32 var_a4_72;
    s32 var_a4_73;
    s32 var_a4_74;
    s32 var_a4_75;
    s32 var_a4_76;
    s32 var_a4_77;
    s32 var_a4_78;
    s32 var_a4_7;
    s32 var_a4_85;
    s32 var_a4_8;
    s32 var_a4_93;
    s32 var_a4_97;
    s32 var_a4_9;
    s32 var_t0;
    s32 var_t0_10;
    s32 var_t0_11;
    s32 var_t0_12;
    s32 var_t0_13;
    s32 var_t0_14;
    s32 var_t0_15;
    s32 var_t0_16;
    s32 var_t0_17;
    s32 var_t0_18;
    s32 var_t0_19;
    s32 var_t0_20;
    s32 var_t0_21;
    s32 var_t0_22;
    s32 var_t0_23;
    s32 var_t0_24;
    s32 var_t0_25;
    s32 var_t0_26;
    s32 var_t0_27;
    s32 var_t0_28;
    s32 var_t0_29;
    s32 var_t0_2;
    s32 var_t0_30;
    s32 var_t0_31;
    s32 var_t0_32;
    s32 var_t0_33;
    s32 var_t0_34;
    s32 var_t0_35;
    s32 var_t0_36;
    s32 var_t0_37;
    s32 var_t0_38;
    s32 var_t0_39;
    s32 var_t0_3;
    s32 var_t0_40;
    s32 var_t0_41;
    s32 var_t0_42;
    s32 var_t0_43;
    s32 var_t0_44;
    s32 var_t0_45;
    s32 var_t0_46;
    s32 var_t0_47;
    s32 var_t0_48;
    s32 var_t0_49;
    s32 var_t0_4;
    s32 var_t0_50;
    s32 var_t0_51;
    s32 var_t0_52;
    s32 var_t0_53;
    s32 var_t0_54;
    s32 var_t0_55;
    s32 var_t0_56;
    s32 var_t0_57;
    s32 var_t0_58;
    s32 var_t0_59;
    s32 var_t0_5;
    s32 var_t0_60;
    s32 var_t0_61;
    s32 var_t0_62;
    s32 var_t0_63;
    s32 var_t0_64;
    s32 var_t0_65;
    s32 var_t0_66;
    s32 var_t0_67;
    s32 var_t0_68;
    s32 var_t0_69;
    s32 var_t0_6;
    s32 var_t0_70;
    s32 var_t0_7;
    s32 var_t0_8;
    s32 var_t0_9;
    s32 var_t1;
    s32 var_t1_10;
    s32 var_t1_11;
    s32 var_t1_12;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_t1_5;
    s32 var_t1_6;
    s32 var_t1_7;
    s32 var_t1_8;
    s32 var_t1_9;
    u16 *var_a0_20;
    u16 *var_a0_26;
    u16 *var_a0_34;
    u16 *var_a0_46;
    u16 *var_a0_52;
    u16 *var_a0_63;
    u16 *var_a0_68;
    u16 *var_a2_122;
    u16 *var_a2_123;
    u16 *var_a2_133;
    u16 *var_a2_139;
    u16 *var_a2_155;
    u16 *var_a2_159;
    u16 *var_a2_161;
    u16 *var_a4_103;
    u16 *var_a4_104;
    u16 *var_a4_105;
    u16 *var_a4_106;
    u16 *var_a4_108;
    u16 *var_a4_111;
    u16 *var_a4_114;
    u16 *var_a4_86;
    u16 *var_a4_88;
    u16 *var_a4_89;
    u16 *var_a4_92;
    u16 *var_a4_94;
    u16 *var_a4_96;
    u16 *var_a4_99;
    u16 *var_a7;
    u16 *var_a7_13;
    u16 *var_a7_16;
    u16 *var_a7_19;
    u16 *var_a7_2;
    u16 *var_a7_5;
    u16 *var_a7_8;
    u16 temp_a0_100;
    u16 temp_a0_101;
    u16 temp_a0_102;
    u16 temp_a0_52;
    u16 temp_a0_53;
    u16 temp_a0_54;
    u16 temp_a0_55;
    u16 temp_a0_56;
    u16 temp_a0_57;
    u16 temp_a0_58;
    u16 temp_a0_59;
    u16 temp_a0_60;
    u16 temp_a0_61;
    u16 temp_a0_62;
    u16 temp_a0_63;
    u16 temp_a0_64;
    u16 temp_a0_65;
    u16 temp_a0_66;
    u16 temp_a0_67;
    u16 temp_a0_68;
    u16 temp_a0_69;
    u16 temp_a0_70;
    u16 temp_a0_71;
    u16 temp_a0_72;
    u16 temp_a0_73;
    u16 temp_a0_74;
    u16 temp_a0_75;
    u16 temp_a0_76;
    u16 temp_a0_77;
    u16 temp_a0_78;
    u16 temp_a0_79;
    u16 temp_a0_80;
    u16 temp_a0_81;
    u16 temp_a0_82;
    u16 temp_a0_83;
    u16 temp_a0_84;
    u16 temp_a0_85;
    u16 temp_a0_86;
    u16 temp_a0_87;
    u16 temp_a0_88;
    u16 temp_a0_89;
    u16 temp_a0_90;
    u16 temp_a0_91;
    u16 temp_a0_92;
    u16 temp_a0_93;
    u16 temp_a0_94;
    u16 temp_a0_95;
    u16 temp_a0_96;
    u16 temp_a0_97;
    u16 temp_a0_98;
    u16 temp_a0_99;
    u16 temp_a2_11;
    u16 temp_a2_12;
    u16 temp_a2_13;
    u16 temp_a2_15;
    u16 temp_a2_16;
    u16 temp_a2_17;
    u16 temp_a2_18;
    u16 temp_a2_19;
    u16 temp_a2_20;
    u16 temp_a3_3;
    u16 temp_a3_4;
    u16 temp_a3_5;
    u16 temp_a3_6;
    u16 temp_a4_10;
    u16 temp_a4_11;
    u16 temp_a4_12;
    u16 temp_a4_13;
    u16 temp_a4_14;
    u16 temp_a4_15;
    u16 temp_a4_16;
    u16 temp_a4_17;
    u16 temp_a4_18;
    u16 temp_a6_3;
    u16 temp_t1_4;
    u16 temp_t1_5;
    u16 temp_t1_6;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v1_10;
    u16 temp_v1_7;
    u16 temp_v1_8;
    u16 temp_v1_9;
    u32 temp_a2_22;
    u32 temp_a2_23;
    u32 temp_a2_24;
    u32 temp_a2_25;
    u32 temp_a2_26;
    u32 temp_a2_27;
    u32 temp_a2_28;
    u32 temp_a2_29;
    u32 temp_a2_30;
    u32 temp_a2_31;
    u32 temp_a2_32;
    u32 temp_a2_33;
    u32 temp_a2_34;
    u32 temp_a2_35;
    u32 temp_a2_36;
    u32 temp_a2_37;
    u32 temp_a2_38;
    u32 temp_a2_39;
    u32 temp_a2_40;
    u32 temp_a2_41;
    u32 temp_a2_42;
    u32 temp_a2_43;
    u32 temp_a2_44;
    u32 temp_a2_45;
    u32 temp_a2_46;
    u32 temp_a2_47;
    u32 temp_a2_48;
    u32 temp_a2_49;
    u32 temp_a2_50;
    u32 temp_a2_51;
    u32 temp_a2_52;
    u32 temp_a2_53;
    u32 temp_a2_54;
    u32 temp_a2_55;
    u32 temp_a2_56;
    u32 temp_a2_57;
    u32 temp_a2_58;
    u32 temp_a2_59;
    u32 temp_a2_60;
    u32 temp_a2_61;
    u32 temp_a2_62;
    u32 temp_a2_63;
    u32 temp_a2_64;
    u32 temp_a2_65;
    u32 temp_a2_66;
    u32 temp_a2_67;
    u32 temp_a2_68;
    u32 temp_a2_69;
    u32 temp_a2_70;
    u32 temp_a2_71;
    u32 temp_a2_72;
    u32 temp_a3_7;
    u32 temp_a3_8;
    u32 temp_a3_9;
    u32 temp_a4_19;
    u32 temp_a4_20;
    u32 temp_a4_21;
    u32 temp_a4_22;
    u32 temp_a4_23;
    u32 temp_a4_24;
    u32 temp_a4_25;
    u32 temp_a4_26;
    u32 temp_a4_27;
    u32 temp_a6_4;
    u32 temp_t0;
    u32 temp_t1_10;
    u32 temp_t1_11;
    u32 temp_t1_12;
    u32 temp_t1_13;
    u32 temp_t1_14;
    u32 temp_t1_15;
    u32 temp_t1_7;
    u32 temp_t1_8;
    u32 temp_t1_9;
    u32 temp_t2;
    u32 temp_t2_2;
    u32 temp_t2_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v1_11;
    u32 temp_v1_12;
    u32 temp_v1_13;
    u8 *var_a2_120;
    u8 *var_a7_12;
    u8 temp_a0;
    u8 temp_a0_10;
    u8 temp_a0_11;
    u8 temp_a0_12;
    u8 temp_a0_13;
    u8 temp_a0_14;
    u8 temp_a0_15;
    u8 temp_a0_16;
    u8 temp_a0_17;
    u8 temp_a0_18;
    u8 temp_a0_19;
    u8 temp_a0_20;
    u8 temp_a0_21;
    u8 temp_a0_22;
    u8 temp_a0_23;
    u8 temp_a0_24;
    u8 temp_a0_25;
    u8 temp_a0_26;
    u8 temp_a0_27;
    u8 temp_a0_28;
    u8 temp_a0_29;
    u8 temp_a0_2;
    u8 temp_a0_30;
    u8 temp_a0_31;
    u8 temp_a0_32;
    u8 temp_a0_33;
    u8 temp_a0_34;
    u8 temp_a0_35;
    u8 temp_a0_36;
    u8 temp_a0_37;
    u8 temp_a0_38;
    u8 temp_a0_39;
    u8 temp_a0_3;
    u8 temp_a0_40;
    u8 temp_a0_41;
    u8 temp_a0_42;
    u8 temp_a0_43;
    u8 temp_a0_44;
    u8 temp_a0_45;
    u8 temp_a0_46;
    u8 temp_a0_47;
    u8 temp_a0_48;
    u8 temp_a0_49;
    u8 temp_a0_4;
    u8 temp_a0_50;
    u8 temp_a0_51;
    u8 temp_a0_5;
    u8 temp_a0_6;
    u8 temp_a0_7;
    u8 temp_a0_8;
    u8 temp_a0_9;
    u8 temp_a2;
    u8 temp_a2_10;
    u8 temp_a2_2;
    u8 temp_a2_3;
    u8 temp_a2_5;
    u8 temp_a2_6;
    u8 temp_a2_7;
    u8 temp_a2_8;
    u8 temp_a2_9;
    u8 temp_a3;
    u8 temp_a3_2;
    u8 temp_a4;
    u8 temp_a4_2;
    u8 temp_a4_3;
    u8 temp_a4_4;
    u8 temp_a4_5;
    u8 temp_a4_6;
    u8 temp_a4_7;
    u8 temp_a4_8;
    u8 temp_a4_9;
    u8 temp_a6;
    u8 temp_a6_2;
    u8 temp_t1;
    u8 temp_t1_2;
    u8 temp_t1_3;
    u8 temp_v1;
    u8 temp_v1_2;
    u8 temp_v1_3;
    u8 temp_v1_4;
    u8 temp_v1_5;
    u8 temp_v1_6;
    void *temp_a2_14;
    void *temp_a2_21;
    void *temp_a2_4;
    void *var_a0_51;
    void *var_a2_119;
    void *var_a2_130;
    void *var_a2_151;
    void *var_a2_152;
    void *var_a4_100;
    void *var_a4_91;
    void *var_a7_10;
    void *var_a7_11;
    void *var_a7_14;
    void *var_a7_15;
    void *var_a7_17;
    void *var_a7_18;
    void *var_a7_20;
    void *var_a7_21;
    void *var_a7_3;
    void *var_a7_4;
    void *var_a7_6;
    void *var_a7_7;
    void *var_a7_9;

    var_a5 = arg5;
    var_a7 = arg4;
    temp_t0 = arg3 - 0x1400;
    if (temp_t0 < 7U) {
        switch (*((temp_t0 * 4) + (M2C_ERROR(/* Read from unset register $t9 */) - 0x1A48))) { /* switch 1; unable to parse jump table */
        case 0:                                     /* switch 1 */
            var_a7_2 = arg4;
            if (arg2 >= 0x1909U) {
                if (arg2 < 0x190AU) {
                    goto block_6;
                }
                switch (arg2) {                     /* switch 13; irregular */
                case 0x8049:                        /* switch 13 */
block_6:
                    var_t0 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            temp_a0 = var_a7_2->unk0;
                            var_a2 = 0;
                            if (!(temp_a0 & 0x80)) {
                                var_a2 = 0xFF;
                            }
                            var_a5->unk0 = (s8) (var_a2 & temp_a0);
                            temp_a0_2 = var_a7_2->unk0;
                            var_a2_2 = 0;
                            if (!(temp_a0_2 & 0x80)) {
                                var_a2_2 = 0xFF;
                            }
                            var_a5->unk1 = (s8) (var_a2_2 & temp_a0_2);
                            temp_a0_3 = var_a7_2->unk0;
                            var_a5 += 3;
                            if (temp_a0_3 & 0x80) {
                                var_a2_3 = 0;
                            } else {
                                var_a2_3 = 0xFF;
                            }
                            var_t0 = 1;
                            var_a7_2 += 1;
                            var_a5->unk-1 = (s8) (var_a2_3 & temp_a0_3);
                        }
                        if ((arg1 >> 1) != 0) {
loop_181:
                            temp_a0_4 = var_a7_2->unk0;
                            var_a2_4 = 0;
                            var_t0 += 2;
                            if (!(temp_a0_4 & 0x80)) {
                                var_a2_4 = 0xFF;
                            }
                            var_a5->unk0 = (s8) (var_a2_4 & temp_a0_4);
                            temp_a0_5 = var_a7_2->unk0;
                            var_a2_5 = 0;
                            if (!(temp_a0_5 & 0x80)) {
                                var_a2_5 = 0xFF;
                            }
                            var_a5->unk1 = (s8) (var_a2_5 & temp_a0_5);
                            temp_a0_6 = var_a7_2->unk0;
                            var_a2_6 = 0;
                            if (!(temp_a0_6 & 0x80)) {
                                var_a2_6 = 0xFF;
                            }
                            var_a5->unk2 = (s8) (var_a2_6 & temp_a0_6);
                            temp_a0_7 = var_a7_2->unk1;
                            var_a2_7 = 0;
                            if (!(temp_a0_7 & 0x80)) {
                                var_a2_7 = 0xFF;
                            }
                            var_a5->unk3 = (s8) (var_a2_7 & temp_a0_7);
                            temp_a0_8 = var_a7_2->unk1;
                            var_a2_8 = 0;
                            if (!(temp_a0_8 & 0x80)) {
                                var_a2_8 = 0xFF;
                            }
                            var_a5->unk4 = (s8) (var_a2_8 & temp_a0_8);
                            temp_a0_9 = var_a7_2->unk1;
                            var_a7_2 += 2;
                            var_a2_9 = 0;
                            var_a5 += 6;
                            if (!(temp_a0_9 & 0x80)) {
                                var_a2_9 = 0xFF;
                            }
                            var_a5->unk-1 = (s8) (var_a2_9 & temp_a0_9);
                            if (arg1 != var_t0) {
                                goto loop_181;
                            }
                        }
                    }
                    break;
                case 0x190A:                        /* switch 13 */
                    var_t0_2 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            temp_a0_10 = var_a7_2->unk0;
                            var_a4 = 0;
                            if (!(temp_a0_10 & 0x80)) {
                                var_a4 = 0xFF;
                            }
                            var_a5->unk0 = (s8) (var_a4 & temp_a0_10);
                            var_a5->unk1 = 0;
                            temp_a2 = var_a7_2->unk1;
                            var_a5 += 3;
                            if (temp_a2 & 0x80) {
                                var_a4_2 = 0;
                            } else {
                                var_a4_2 = 0xFF;
                            }
                            var_t0_2 = 1;
                            var_a7_2 += 2;
                            var_a5->unk-1 = (s8) (var_a4_2 & temp_a2);
                        }
                        if ((arg1 >> 1) != 0) {
loop_559:
                            temp_a0_11 = var_a7_2->unk0;
                            var_a4_3 = 0;
                            var_t0_2 += 2;
                            if (temp_a0_11 & 0x80) {

                            } else {
                                var_a4_3 = 0xFF;
                            }
                            var_a5->unk1 = 0;
                            var_a5->unk0 = (s8) (var_a4_3 & temp_a0_11);
                            temp_a2_2 = var_a7_2->unk1;
                            var_a4_4 = 0;
                            if (!(temp_a2_2 & 0x80)) {
                                var_a4_4 = 0xFF;
                            }
                            var_a5->unk2 = (s8) (var_a4_4 & temp_a2_2);
                            temp_a0_12 = var_a7_2->unk2;
                            var_a4_5 = 0;
                            if (!(temp_a0_12 & 0x80)) {
                                var_a4_5 = 0xFF;
                            }
                            var_a5->unk4 = 0;
                            var_a5->unk3 = (s8) (var_a4_5 & temp_a0_12);
                            temp_a2_3 = var_a7_2->unk3;
                            var_a7_2 += 4;
                            var_a4_6 = 0;
                            var_a5 += 6;
                            if (!(temp_a2_3 & 0x80)) {
                                var_a4_6 = 0xFF;
                            }
                            var_a5->unk-1 = (s8) (var_a4_6 & temp_a2_3);
                            if (arg1 != var_t0_2) {
                                goto loop_559;
                            }
                        }
                    }
                    break;
                default:                            /* switch 13 */
                    temp_a2_4 = arg4 + 3;
                    if (arg0 != 0x1909) {
                        var_a7_3 = temp_a2_4;
                        var_t0_3 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_13 = arg4->unk3;
                                var_a2_10 = 0;
                                if (!(temp_a0_13 & 0x80)) {
                                    var_a2_10 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_10 & temp_a0_13);
                                temp_a4 = var_a7_3->unk-1;
                                var_a0 = 0;
                                if (!(temp_a4 & 0x80)) {
                                    var_a0 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a0 & temp_a4);
                                temp_t1 = var_a7_3->unk-2;
                                var_a5 += 3;
                                if (temp_t1 & 0x80) {
                                    var_a2_11 = 0;
                                } else {
                                    var_a2_11 = 0xFF;
                                }
                                var_t0_3 = 1;
                                var_a7_3 += 4;
                                var_a5->unk-1 = (s8) (var_a2_11 & temp_t1);
                            }
                            if ((arg1 >> 1) != 0) {
loop_514:
                                temp_a0_14 = var_a7_3->unk0;
                                var_a2_12 = 0;
                                var_t0_3 += 2;
                                if (!(temp_a0_14 & 0x80)) {
                                    var_a2_12 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_12 & temp_a0_14);
                                temp_a4_2 = var_a7_3->unk-1;
                                var_a0_2 = 0;
                                if (!(temp_a4_2 & 0x80)) {
                                    var_a0_2 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a0_2 & temp_a4_2);
                                temp_t1_2 = var_a7_3->unk-2;
                                var_a2_13 = 0;
                                if (!(temp_t1_2 & 0x80)) {
                                    var_a2_13 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (var_a2_13 & temp_t1_2);
                                temp_a0_15 = var_a7_3->unk4;
                                var_a2_14 = 0;
                                if (!(temp_a0_15 & 0x80)) {
                                    var_a2_14 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (var_a2_14 & temp_a0_15);
                                temp_a4_3 = var_a7_3->unk3;
                                var_a0_3 = 0;
                                if (temp_a4_3 & 0x80) {

                                } else {
                                    var_a0_3 = 0xFF;
                                }
                                var_a5->unk4 = (s8) (var_a0_3 & temp_a4_3);
                                temp_t1_3 = var_a7_3->unk2;
                                var_a7_3 += 8;
                                var_a2_15 = 0;
                                var_a5 += 6;
                                if (!(temp_t1_3 & 0x80)) {
                                    var_a2_15 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (var_a2_15 & temp_t1_3);
                                if (arg1 != var_t0_3) {
                                    goto loop_514;
                                }
                            }
                        }
                    } else {
                        var_a7_4 = temp_a2_4;
                        var_t0_4 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_16 = arg4->unk3;
                                var_a2_16 = 0;
                                if (!(temp_a0_16 & 0x80)) {
                                    var_a2_16 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_16 & temp_a0_16);
                                temp_a0_17 = arg4->unk3;
                                var_a2_17 = 0;
                                if (!(temp_a0_17 & 0x80)) {
                                    var_a2_17 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a2_17 & temp_a0_17);
                                temp_a0_18 = arg4->unk3;
                                var_a5 += 3;
                                if (temp_a0_18 & 0x80) {
                                    var_a2_18 = 0;
                                } else {
                                    var_a2_18 = 0xFF;
                                }
                                var_t0_4 = 1;
                                var_a7_4 += 4;
                                var_a5->unk-1 = (s8) (var_a2_18 & temp_a0_18);
                            }
                            if ((arg1 >> 1) != 0) {
loop_868:
                                temp_a0_19 = var_a7_4->unk0;
                                var_a2_19 = 0;
                                var_t0_4 += 2;
                                if (!(temp_a0_19 & 0x80)) {
                                    var_a2_19 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_19 & temp_a0_19);
                                temp_a0_20 = var_a7_4->unk0;
                                var_a2_20 = 0;
                                if (!(temp_a0_20 & 0x80)) {
                                    var_a2_20 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a2_20 & temp_a0_20);
                                temp_a0_21 = var_a7_4->unk0;
                                var_a2_21 = 0;
                                if (!(temp_a0_21 & 0x80)) {
                                    var_a2_21 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (var_a2_21 & temp_a0_21);
                                temp_a0_22 = var_a7_4->unk4;
                                var_a2_22 = 0;
                                if (!(temp_a0_22 & 0x80)) {
                                    var_a2_22 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (var_a2_22 & temp_a0_22);
                                temp_a0_23 = var_a7_4->unk4;
                                var_a2_23 = 0;
                                if (!(temp_a0_23 & 0x80)) {
                                    var_a2_23 = 0xFF;
                                }
                                var_a5->unk4 = (s8) (var_a2_23 & temp_a0_23);
                                temp_a0_24 = var_a7_4->unk4;
                                var_a7_4 += 8;
                                var_a2_24 = 0;
                                var_a5 += 6;
                                if (!(temp_a0_24 & 0x80)) {
                                    var_a2_24 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (var_a2_24 & temp_a0_24);
                                if (arg1 != var_t0_4) {
                                    goto loop_868;
                                }
                            }
                        }
                    }
                    break;
                }
            } else {
                switch (arg2) {                     /* switch 6; irregular */
                default:                            /* switch 6 */
                    if (arg0 != 0x1909) {
                        var_t0_5 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_25 = var_a7_2->unk0;
                                var_a4_7 = 0;
                                if (!(temp_a0_25 & 0x80)) {
                                    var_a4_7 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a4_7 & temp_a0_25);
                                temp_a2_5 = var_a7_2->unk1;
                                var_a0_4 = 0;
                                if (!(temp_a2_5 & 0x80)) {
                                    var_a0_4 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a0_4 & temp_a2_5);
                                temp_a4_4 = var_a7_2->unk2;
                                var_a5 += 3;
                                if (temp_a4_4 & 0x80) {
                                    var_a2_25 = 0;
                                } else {
                                    var_a2_25 = 0xFF;
                                }
                                var_t0_5 = 1;
                                var_a7_2 += 3;
                                var_a5->unk-1 = (s8) (var_a2_25 & temp_a4_4);
                            }
                            if ((arg1 >> 1) != 0) {
loop_421:
                                temp_a0_26 = var_a7_2->unk0;
                                var_a4_8 = 0;
                                var_t0_5 += 2;
                                if (temp_a0_26 & 0x80) {

                                } else {
                                    var_a4_8 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a4_8 & temp_a0_26);
                                temp_a2_6 = var_a7_2->unk1;
                                var_a0_5 = 0;
                                if (!(temp_a2_6 & 0x80)) {
                                    var_a0_5 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a0_5 & temp_a2_6);
                                temp_a4_5 = var_a7_2->unk2;
                                var_a2_26 = 0;
                                if (!(temp_a4_5 & 0x80)) {
                                    var_a2_26 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (var_a2_26 & temp_a4_5);
                                temp_a0_27 = var_a7_2->unk3;
                                var_a4_9 = 0;
                                if (!(temp_a0_27 & 0x80)) {
                                    var_a4_9 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (var_a4_9 & temp_a0_27);
                                temp_a2_7 = var_a7_2->unk4;
                                var_a0_6 = 0;
                                if (!(temp_a2_7 & 0x80)) {
                                    var_a0_6 = 0xFF;
                                }
                                var_a5->unk4 = (s8) (var_a0_6 & temp_a2_7);
                                temp_a4_6 = var_a7_2->unk5;
                                var_a7_2 += 6;
                                var_a2_27 = 0;
                                var_a5 += 6;
                                if (!(temp_a4_6 & 0x80)) {
                                    var_a2_27 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (var_a2_27 & temp_a4_6);
                                if (arg1 != var_t0_5) {
                                    goto loop_421;
                                }
                            }
                        }
                    } else {
                        var_t0_6 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_28 = var_a7_2->unk0;
                                var_a2_28 = 0;
                                if (!(temp_a0_28 & 0x80)) {
                                    var_a2_28 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_28 & temp_a0_28);
                                temp_a0_29 = var_a7_2->unk0;
                                var_a2_29 = 0;
                                if (!(temp_a0_29 & 0x80)) {
                                    var_a2_29 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a2_29 & temp_a0_29);
                                temp_a0_30 = var_a7_2->unk0;
                                var_a5 += 3;
                                if (temp_a0_30 & 0x80) {
                                    var_a2_30 = 0;
                                } else {
                                    var_a2_30 = 0xFF;
                                }
                                var_t0_6 = 1;
                                var_a7_2 += 3;
                                var_a5->unk-1 = (s8) (var_a2_30 & temp_a0_30);
                            }
                            if ((arg1 >> 1) != 0) {
loop_697:
                                temp_a0_31 = var_a7_2->unk0;
                                var_a2_31 = 0;
                                var_t0_6 += 2;
                                if (!(temp_a0_31 & 0x80)) {
                                    var_a2_31 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_31 & temp_a0_31);
                                temp_a0_32 = var_a7_2->unk0;
                                var_a2_32 = 0;
                                if (!(temp_a0_32 & 0x80)) {
                                    var_a2_32 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a2_32 & temp_a0_32);
                                temp_a0_33 = var_a7_2->unk0;
                                var_a2_33 = 0;
                                if (!(temp_a0_33 & 0x80)) {
                                    var_a2_33 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (var_a2_33 & temp_a0_33);
                                temp_a0_34 = var_a7_2->unk3;
                                var_a2_34 = 0;
                                if (!(temp_a0_34 & 0x80)) {
                                    var_a2_34 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (var_a2_34 & temp_a0_34);
                                temp_a0_35 = var_a7_2->unk3;
                                var_a2_35 = 0;
                                if (!(temp_a0_35 & 0x80)) {
                                    var_a2_35 = 0xFF;
                                }
                                var_a5->unk4 = (s8) (var_a2_35 & temp_a0_35);
                                temp_a0_36 = var_a7_2->unk3;
                                var_a7_2 += 6;
                                var_a2_36 = 0;
                                var_a5 += 6;
                                if (!(temp_a0_36 & 0x80)) {
                                    var_a2_36 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (var_a2_36 & temp_a0_36);
                                if (arg1 != var_t0_6) {
                                    goto loop_697;
                                }
                            }
                        }
                    }
                    return;
                case 0x1906:                        /* switch 6 */
                    if (arg0 != 0x1906) {
                        var_t0_7 = 0;
                        if (arg1 > 0) {
                            var_a2_37 = arg1 & 3;
                            if (var_a2_37 != 0) {
                                do {
                                    var_t0_7 += 1;
                                    var_a5 += 3;
                                    var_a2_37 -= 1;
                                    var_a5->unk-3 = 1;
                                    var_a5->unk-2 = 1;
                                    var_a5->unk-1 = 1;
                                } while (var_a2_37 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_38 = var_t0_7;
                                var_a4_10 = var_a5;
                                do {
                                    var_a4_10 += 0xC;
                                    var_a2_38 += 4;
                                    var_a4_10->unk-C = 1;
                                    var_a4_10->unk-B = 1;
                                    var_a4_10->unk-A = 1;
                                    var_a4_10->unk-9 = 1;
                                    var_a4_10->unk-8 = 1;
                                    var_a4_10->unk-7 = 1;
                                    var_a4_10->unk-6 = 1;
                                    var_a4_10->unk-5 = 1;
                                    var_a4_10->unk-4 = 1;
                                    var_a4_10->unk-3 = 1;
                                    var_a4_10->unk-2 = 1;
                                    var_a4_10->unk-1 = 1;
                                } while (arg1 != var_a2_38);
                            }
                        }
                    } else {
                        var_t0_8 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = 0;
                                var_a5->unk1 = 0;
                                temp_a0_37 = var_a7_2->unk0;
                                var_a5 += 3;
                                if (temp_a0_37 & 0x80) {
                                    var_a2_39 = 0;
                                } else {
                                    var_a2_39 = 0xFF;
                                }
                                var_t0_8 = 1;
                                var_a7_2 += 1;
                                var_a5->unk-1 = (s8) (var_a2_39 & temp_a0_37);
                            }
                            if ((arg1 >> 1) != 0) {
loop_789:
                                var_a5->unk0 = 0;
                                var_a5->unk1 = 0;
                                temp_a0_38 = var_a7_2->unk0;
                                var_a2_40 = 0;
                                var_t0_8 += 2;
                                if (!(temp_a0_38 & 0x80)) {
                                    var_a2_40 = 0xFF;
                                }
                                var_a5->unk3 = 0;
                                var_a5->unk4 = 0;
                                var_a5->unk2 = (s8) (var_a2_40 & temp_a0_38);
                                temp_a0_39 = var_a7_2->unk1;
                                var_a7_2 += 2;
                                var_a2_41 = 0;
                                var_a5 += 6;
                                if (temp_a0_39 & 0x80) {

                                } else {
                                    var_a2_41 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (var_a2_41 & temp_a0_39);
                                if (arg1 != var_t0_8) {
                                    goto loop_789;
                                }
                            }
                        }
                    }
                    break;
                case 0x1908:                        /* switch 6 */
                    if (arg0 != 0x1909) {
                        var_t0_9 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_40 = var_a7_2->unk0;
                                var_a4_11 = 0;
                                if (!(temp_a0_40 & 0x80)) {
                                    var_a4_11 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a4_11 & temp_a0_40);
                                temp_a2_8 = var_a7_2->unk1;
                                var_a0_7 = 0;
                                if (!(temp_a2_8 & 0x80)) {
                                    var_a0_7 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a0_7 & temp_a2_8);
                                temp_a4_7 = var_a7_2->unk2;
                                var_a5 += 3;
                                if (temp_a4_7 & 0x80) {
                                    var_a2_42 = 0;
                                } else {
                                    var_a2_42 = 0xFF;
                                }
                                var_t0_9 = 1;
                                var_a7_2 += 4;
                                var_a5->unk-1 = (s8) (var_a2_42 & temp_a4_7);
                            }
                            if ((arg1 >> 1) != 0) {
loop_592:
                                temp_a0_41 = var_a7_2->unk0;
                                var_a4_12 = 0;
                                var_t0_9 += 2;
                                if (!(temp_a0_41 & 0x80)) {
                                    var_a4_12 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a4_12 & temp_a0_41);
                                temp_a2_9 = var_a7_2->unk1;
                                var_a0_8 = 0;
                                if (!(temp_a2_9 & 0x80)) {
                                    var_a0_8 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a0_8 & temp_a2_9);
                                temp_a4_8 = var_a7_2->unk2;
                                var_a2_43 = 0;
                                if (!(temp_a4_8 & 0x80)) {
                                    var_a2_43 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (var_a2_43 & temp_a4_8);
                                temp_a0_42 = var_a7_2->unk4;
                                var_a4_13 = 0;
                                if (!(temp_a0_42 & 0x80)) {
                                    var_a4_13 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (var_a4_13 & temp_a0_42);
                                temp_a2_10 = var_a7_2->unk5;
                                var_a0_9 = 0;
                                if (!(temp_a2_10 & 0x80)) {
                                    var_a0_9 = 0xFF;
                                }
                                var_a5->unk4 = (s8) (var_a0_9 & temp_a2_10);
                                temp_a4_9 = var_a7_2->unk6;
                                var_a7_2 += 8;
                                var_a2_44 = 0;
                                var_a5 += 6;
                                if (!(temp_a4_9 & 0x80)) {
                                    var_a2_44 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (var_a2_44 & temp_a4_9);
                                if (arg1 != var_t0_9) {
                                    goto loop_592;
                                }
                            }
                        }
                    } else {
                        var_t0_10 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_43 = var_a7_2->unk0;
                                var_a2_45 = 0;
                                if (!(temp_a0_43 & 0x80)) {
                                    var_a2_45 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_45 & temp_a0_43);
                                temp_a0_44 = var_a7_2->unk0;
                                var_a2_46 = 0;
                                if (!(temp_a0_44 & 0x80)) {
                                    var_a2_46 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a2_46 & temp_a0_44);
                                temp_a0_45 = var_a7_2->unk0;
                                var_a5 += 3;
                                if (temp_a0_45 & 0x80) {
                                    var_a2_47 = 0;
                                } else {
                                    var_a2_47 = 0xFF;
                                }
                                var_t0_10 = 1;
                                var_a7_2 += 4;
                                var_a5->unk-1 = (s8) (var_a2_47 & temp_a0_45);
                            }
                            if ((arg1 >> 1) != 0) {
loop_980:
                                temp_a0_46 = var_a7_2->unk0;
                                var_a2_48 = 0;
                                var_t0_10 += 2;
                                if (temp_a0_46 & 0x80) {

                                } else {
                                    var_a2_48 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (var_a2_48 & temp_a0_46);
                                temp_a0_47 = var_a7_2->unk0;
                                var_a2_49 = 0;
                                if (!(temp_a0_47 & 0x80)) {
                                    var_a2_49 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (var_a2_49 & temp_a0_47);
                                temp_a0_48 = var_a7_2->unk0;
                                var_a2_50 = 0;
                                if (!(temp_a0_48 & 0x80)) {
                                    var_a2_50 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (var_a2_50 & temp_a0_48);
                                temp_a0_49 = var_a7_2->unk4;
                                var_a2_51 = 0;
                                if (!(temp_a0_49 & 0x80)) {
                                    var_a2_51 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (var_a2_51 & temp_a0_49);
                                temp_a0_50 = var_a7_2->unk4;
                                var_a2_52 = 0;
                                if (!(temp_a0_50 & 0x80)) {
                                    var_a2_52 = 0xFF;
                                }
                                var_a5->unk4 = (s8) (var_a2_52 & temp_a0_50);
                                temp_a0_51 = var_a7_2->unk4;
                                var_a7_2 += 8;
                                var_a2_53 = 0;
                                var_a5 += 6;
                                if (!(temp_a0_51 & 0x80)) {
                                    var_a2_53 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (var_a2_53 & temp_a0_51);
                                if (arg1 != var_t0_10) {
                                    goto loop_980;
                                }
                            }
                        }
                    }
                    break;
                }
            }
            break;
        case 2:                                     /* switch 1 */
            var_a7_5 = arg4;
            if (arg2 >= 0x1909U) {
                if (arg2 < 0x190AU) {
                    goto block_17;
                }
                switch (arg2) {                     /* switch 14; irregular */
                case 0x8049:                        /* switch 14 */
block_17:
                    var_t0_11 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            temp_a0_52 = (u16) var_a7_5->unk0;
                            var_a2_54 = 0;
                            if (!(temp_a0_52 & 0x8000)) {
                                var_a2_54 = 0xFF;
                            }
                            var_a5->unk0 = (s8) (((s32) temp_a0_52 >> 7) & var_a2_54);
                            temp_a0_53 = (u16) var_a7_5->unk0;
                            var_a2_55 = 0;
                            if (!(temp_a0_53 & 0x8000)) {
                                var_a2_55 = 0xFF;
                            }
                            var_a5->unk1 = (s8) (((s32) temp_a0_53 >> 7) & var_a2_55);
                            temp_a0_54 = (u16) var_a7_5->unk0;
                            var_a5 += 3;
                            if (temp_a0_54 & 0x8000) {
                                var_a2_56 = 0;
                            } else {
                                var_a2_56 = 0xFF;
                            }
                            var_t0_11 = 1;
                            var_a7_5 += 2;
                            var_a5->unk-1 = (s8) (((s32) temp_a0_54 >> 7) & var_a2_56);
                        }
                        if ((arg1 >> 1) != 0) {
loop_198:
                            temp_a0_55 = var_a7_5->unk0;
                            var_a2_57 = 0;
                            if (!(temp_a0_55 & 0x8000)) {
                                var_a2_57 = 0xFF;
                            }
                            var_a5->unk0 = (s8) (((s32) temp_a0_55 >> 7) & var_a2_57);
                            temp_a0_56 = var_a7_5->unk0;
                            var_a2_58 = 0xFF;
                            if (temp_a0_56 & 0x8000) {
                                var_a2_58 = 0;
                            }
                            var_a5->unk1 = (s8) (((s32) temp_a0_56 >> 7) & var_a2_58);
                            temp_a0_57 = var_a7_5->unk0;
                            var_a2_59 = 0xFF;
                            if (temp_a0_57 & 0x8000) {
                                var_a2_59 = 0;
                            }
                            var_a5->unk2 = (s8) (((s32) temp_a0_57 >> 7) & var_a2_59);
                            temp_a0_58 = var_a7_5->unk2;
                            var_a2_60 = 0xFF;
                            if (temp_a0_58 & 0x8000) {
                                var_a2_60 = 0;
                            }
                            var_a5->unk3 = (s8) (((s32) temp_a0_58 >> 7) & var_a2_60);
                            temp_a0_59 = var_a7_5->unk2;
                            var_a2_61 = 0;
                            if (!(temp_a0_59 & 0x8000)) {
                                var_a2_61 = 0xFF;
                            }
                            var_t0_11 += 2;
                            var_a5->unk4 = (s8) (((s32) temp_a0_59 >> 7) & var_a2_61);
                            var_a7_5 += 4;
                            temp_a0_60 = var_a7_5->unk-2;
                            var_a5 += 6;
                            if (temp_a0_60 & 0x8000) {
                                var_a2_62 = 0;
                            } else {
                                var_a2_62 = 0xFF;
                            }
                            var_a5->unk-1 = (s8) (((s32) temp_a0_60 >> 7) & var_a2_62);
                            if (arg1 != var_t0_11) {
                                goto loop_198;
                            }
                        }
                    }
                    break;
                case 0x190A:                        /* switch 14 */
                    var_t0_12 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            temp_a0_61 = (u16) var_a7_5->unk0;
                            var_a4_14 = 0;
                            if (!(temp_a0_61 & 0x8000)) {
                                var_a4_14 = 0xFF;
                            }
                            var_a5->unk0 = (s8) (((s32) temp_a0_61 >> 7) & var_a4_14);
                            var_a5->unk1 = 0;
                            temp_a2_11 = (u16) var_a7_5->unk2;
                            var_a5 += 3;
                            if (temp_a2_11 & 0x8000) {
                                var_a4_15 = 0;
                            } else {
                                var_a4_15 = 0xFF;
                            }
                            var_t0_12 = 1;
                            var_a7_5 += 4;
                            var_a5->unk-1 = (s8) (((s32) temp_a2_11 >> 7) & var_a4_15);
                        }
                        if ((arg1 >> 1) != 0) {
loop_571:
                            temp_a0_62 = var_a7_5->unk0;
                            var_a4_16 = 0;
                            if (temp_a0_62 & 0x8000) {

                            } else {
                                var_a4_16 = 0xFF;
                            }
                            var_a5->unk1 = 0;
                            var_a5->unk0 = (s8) (((s32) temp_a0_62 >> 7) & var_a4_16);
                            temp_a2_12 = var_a7_5->unk2;
                            var_a4_17 = 0xFF;
                            if (temp_a2_12 & 0x8000) {
                                var_a4_17 = 0;
                            }
                            var_a5->unk2 = (s8) (((s32) temp_a2_12 >> 7) & var_a4_17);
                            temp_a0_63 = var_a7_5->unk4;
                            var_a4_18 = 0;
                            if (!(temp_a0_63 & 0x8000)) {
                                var_a4_18 = 0xFF;
                            }
                            var_t0_12 += 2;
                            var_a5->unk4 = 0;
                            var_a5->unk3 = (s8) (((s32) temp_a0_63 >> 7) & var_a4_18);
                            var_a7_5 += 8;
                            temp_a2_13 = var_a7_5->unk-2;
                            var_a5 += 6;
                            if (temp_a2_13 & 0x8000) {
                                var_a4_19 = 0;
                            } else {
                                var_a4_19 = 0xFF;
                            }
                            var_a5->unk-1 = (s8) (((s32) temp_a2_13 >> 7) & var_a4_19);
                            if (arg1 != var_t0_12) {
                                goto loop_571;
                            }
                        }
                    }
                    break;
                default:                            /* switch 14 */
                    temp_a2_14 = arg4 + 6;
                    if (arg0 != 0x1909) {
                        var_a7_6 = temp_a2_14;
                        var_t0_13 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_64 = arg4->unk6;
                                var_a2_63 = 0;
                                if (!(temp_a0_64 & 0x8000)) {
                                    var_a2_63 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_64 >> 7) & var_a2_63);
                                temp_t1_4 = var_a7_6->unk-2;
                                var_a0_10 = 0;
                                if (!(temp_t1_4 & 0x8000)) {
                                    var_a0_10 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_t1_4 >> 7) & var_a0_10);
                                temp_a4_10 = var_a7_6->unk-4;
                                var_a5 += 3;
                                if (temp_a4_10 & 0x8000) {
                                    var_a2_64 = 0;
                                } else {
                                    var_a2_64 = 0xFF;
                                }
                                var_t0_13 = 1;
                                var_a7_6 += 8;
                                var_a5->unk-1 = (s8) (((s32) temp_a4_10 >> 7) & var_a2_64);
                            }
                            if ((arg1 >> 1) != 0) {
loop_529:
                                temp_a0_65 = var_a7_6->unk0;
                                var_a2_65 = 0;
                                if (!(temp_a0_65 & 0x8000)) {
                                    var_a2_65 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_65 >> 7) & var_a2_65);
                                temp_t1_5 = var_a7_6->unk-2;
                                var_a0_11 = 0xFF;
                                if (temp_t1_5 & 0x8000) {
                                    var_a0_11 = 0;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_t1_5 >> 7) & var_a0_11);
                                temp_a4_11 = var_a7_6->unk-4;
                                var_a2_66 = 0xFF;
                                if (temp_a4_11 & 0x8000) {
                                    var_a2_66 = 0;
                                }
                                var_a5->unk2 = (s8) (((s32) temp_a4_11 >> 7) & var_a2_66);
                                temp_a0_66 = var_a7_6->unk8;
                                var_a2_67 = 0xFF;
                                if (temp_a0_66 & 0x8000) {
                                    var_a2_67 = 0;
                                }
                                var_a5->unk3 = (s8) (((s32) temp_a0_66 >> 7) & var_a2_67);
                                temp_t1_6 = var_a7_6->unk6;
                                var_a0_12 = 0;
                                if (!(temp_t1_6 & 0x8000)) {
                                    var_a0_12 = 0xFF;
                                }
                                var_t0_13 += 2;
                                var_a5->unk4 = (s8) (((s32) temp_t1_6 >> 7) & var_a0_12);
                                var_a7_6 += 0x10;
                                temp_a4_12 = var_a7_6->unk-C;
                                var_a5 += 6;
                                if (temp_a4_12 & 0x8000) {
                                    var_a2_68 = 0;
                                } else {
                                    var_a2_68 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (((s32) temp_a4_12 >> 7) & var_a2_68);
                                if (arg1 != var_t0_13) {
                                    goto loop_529;
                                }
                            }
                        }
                    } else {
                        var_a7_7 = temp_a2_14;
                        var_t0_14 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_67 = arg4->unk6;
                                var_a2_69 = 0;
                                if (!(temp_a0_67 & 0x8000)) {
                                    var_a2_69 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_67 >> 7) & var_a2_69);
                                temp_a0_68 = arg4->unk6;
                                var_a2_70 = 0;
                                if (!(temp_a0_68 & 0x8000)) {
                                    var_a2_70 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a0_68 >> 7) & var_a2_70);
                                temp_a0_69 = arg4->unk6;
                                var_a5 += 3;
                                if (temp_a0_69 & 0x8000) {
                                    var_a2_71 = 0;
                                } else {
                                    var_a2_71 = 0xFF;
                                }
                                var_t0_14 = 1;
                                var_a7_7 += 8;
                                var_a5->unk-1 = (s8) (((s32) temp_a0_69 >> 7) & var_a2_71);
                            }
                            if ((arg1 >> 1) != 0) {
loop_885:
                                temp_a0_70 = var_a7_7->unk0;
                                var_a2_72 = 0;
                                if (!(temp_a0_70 & 0x8000)) {
                                    var_a2_72 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_70 >> 7) & var_a2_72);
                                temp_a0_71 = var_a7_7->unk0;
                                if (temp_a0_71 & 0x8000) {
                                    var_a2_73 = 0;
                                } else {
                                    var_a2_73 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a0_71 >> 7) & var_a2_73);
                                temp_a0_72 = var_a7_7->unk0;
                                if (temp_a0_72 & 0x8000) {
                                    var_a2_74 = 0;
                                } else {
                                    var_a2_74 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (((s32) temp_a0_72 >> 7) & var_a2_74);
                                temp_a0_73 = var_a7_7->unk8;
                                if (temp_a0_73 & 0x8000) {
                                    var_a2_75 = 0;
                                } else {
                                    var_a2_75 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (((s32) temp_a0_73 >> 7) & var_a2_75);
                                temp_a0_74 = var_a7_7->unk8;
                                var_a2_76 = 0;
                                if (!(temp_a0_74 & 0x8000)) {
                                    var_a2_76 = 0xFF;
                                }
                                var_t0_14 += 2;
                                var_a5->unk4 = (s8) (((s32) temp_a0_74 >> 7) & var_a2_76);
                                var_a7_7 += 0x10;
                                temp_a0_75 = var_a7_7->unk-8;
                                var_a5 += 6;
                                if (temp_a0_75 & 0x8000) {
                                    var_a2_77 = 0;
                                } else {
                                    var_a2_77 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (((s32) temp_a0_75 >> 7) & var_a2_77);
                                if (arg1 != var_t0_14) {
                                    goto loop_885;
                                }
                            }
                        }
                    }
                    break;
                }
            } else {
                switch (arg2) {                     /* switch 7; irregular */
                default:                            /* switch 7 */
                    if (arg0 != 0x1909) {
                        var_t0_15 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_76 = (u16) var_a7_5->unk0;
                                var_a4_20 = 0;
                                if (!(temp_a0_76 & 0x8000)) {
                                    var_a4_20 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_76 >> 7) & var_a4_20);
                                temp_a2_15 = (u16) var_a7_5->unk2;
                                var_a0_13 = 0;
                                if (!(temp_a2_15 & 0x8000)) {
                                    var_a0_13 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a2_15 >> 7) & var_a0_13);
                                temp_a4_13 = var_a7_5->unk4;
                                var_a5 += 3;
                                if (temp_a4_13 & 0x8000) {
                                    var_a2_78 = 0;
                                } else {
                                    var_a2_78 = 0xFF;
                                }
                                var_t0_15 = 1;
                                var_a7_5 += 6;
                                var_a5->unk-1 = (s8) (((s32) temp_a4_13 >> 7) & var_a2_78);
                            }
                            if ((arg1 >> 1) != 0) {
loop_432:
                                temp_a0_77 = var_a7_5->unk0;
                                var_a4_21 = 0;
                                if (!(temp_a0_77 & 0x8000)) {
                                    var_a4_21 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_77 >> 7) & var_a4_21);
                                temp_a2_16 = var_a7_5->unk2;
                                var_a0_14 = 0xFF;
                                if (temp_a2_16 & 0x8000) {
                                    var_a0_14 = 0;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a2_16 >> 7) & var_a0_14);
                                temp_a4_14 = var_a7_5->unk4;
                                var_a2_79 = 0xFF;
                                if (temp_a4_14 & 0x8000) {
                                    var_a2_79 = 0;
                                }
                                var_a5->unk2 = (s8) (((s32) temp_a4_14 >> 7) & var_a2_79);
                                temp_a0_78 = var_a7_5->unk6;
                                var_a4_22 = 0xFF;
                                if (temp_a0_78 & 0x8000) {
                                    var_a4_22 = 0;
                                }
                                var_a5->unk3 = (s8) (((s32) temp_a0_78 >> 7) & var_a4_22);
                                temp_a2_17 = var_a7_5->unk8;
                                var_a0_15 = 0;
                                if (!(temp_a2_17 & 0x8000)) {
                                    var_a0_15 = 0xFF;
                                }
                                var_t0_15 += 2;
                                var_a5->unk4 = (s8) (((s32) temp_a2_17 >> 7) & var_a0_15);
                                var_a7_5 += 0xC;
                                temp_a4_15 = var_a7_5->unk-2;
                                var_a5 += 6;
                                if (temp_a4_15 & 0x8000) {
                                    var_a2_80 = 0;
                                } else {
                                    var_a2_80 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (((s32) temp_a4_15 >> 7) & var_a2_80);
                                if (arg1 != var_t0_15) {
                                    goto loop_432;
                                }
                            }
                        }
                    } else {
                        var_t0_16 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_79 = (u16) var_a7_5->unk0;
                                var_a2_81 = 0;
                                if (!(temp_a0_79 & 0x8000)) {
                                    var_a2_81 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_79 >> 7) & var_a2_81);
                                temp_a0_80 = (u16) var_a7_5->unk0;
                                var_a2_82 = 0;
                                if (!(temp_a0_80 & 0x8000)) {
                                    var_a2_82 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a0_80 >> 7) & var_a2_82);
                                temp_a0_81 = (u16) var_a7_5->unk0;
                                var_a5 += 3;
                                if (temp_a0_81 & 0x8000) {
                                    var_a2_83 = 0;
                                } else {
                                    var_a2_83 = 0xFF;
                                }
                                var_t0_16 = 1;
                                var_a7_5 += 6;
                                var_a5->unk-1 = (s8) (((s32) temp_a0_81 >> 7) & var_a2_83);
                            }
                            if ((arg1 >> 1) != 0) {
loop_714:
                                temp_a0_82 = var_a7_5->unk0;
                                var_a2_84 = 0;
                                if (!(temp_a0_82 & 0x8000)) {
                                    var_a2_84 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_82 >> 7) & var_a2_84);
                                temp_a0_83 = var_a7_5->unk0;
                                if (temp_a0_83 & 0x8000) {
                                    var_a2_85 = 0;
                                } else {
                                    var_a2_85 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a0_83 >> 7) & var_a2_85);
                                temp_a0_84 = var_a7_5->unk0;
                                if (temp_a0_84 & 0x8000) {
                                    var_a2_86 = 0;
                                } else {
                                    var_a2_86 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (((s32) temp_a0_84 >> 7) & var_a2_86);
                                temp_a0_85 = var_a7_5->unk6;
                                if (temp_a0_85 & 0x8000) {
                                    var_a2_87 = 0;
                                } else {
                                    var_a2_87 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (((s32) temp_a0_85 >> 7) & var_a2_87);
                                temp_a0_86 = var_a7_5->unk6;
                                var_a2_88 = 0;
                                if (!(temp_a0_86 & 0x8000)) {
                                    var_a2_88 = 0xFF;
                                }
                                var_t0_16 += 2;
                                var_a5->unk4 = (s8) (((s32) temp_a0_86 >> 7) & var_a2_88);
                                var_a7_5 += 0xC;
                                temp_a0_87 = var_a7_5->unk-6;
                                var_a5 += 6;
                                if (temp_a0_87 & 0x8000) {
                                    var_a2_89 = 0;
                                } else {
                                    var_a2_89 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (((s32) temp_a0_87 >> 7) & var_a2_89);
                                if (arg1 != var_t0_16) {
                                    goto loop_714;
                                }
                            }
                        }
                    }
                    break;
                case 0x1906:                        /* switch 7 */
                    if (arg0 != 0x1906) {
                        var_t0_17 = 0;
                        if (arg1 > 0) {
                            var_a2_90 = arg1 & 3;
                            if (var_a2_90 != 0) {
                                do {
                                    var_t0_17 += 1;
                                    var_a5 += 3;
                                    var_a2_90 -= 1;
                                    var_a5->unk-3 = 1;
                                    var_a5->unk-2 = 1;
                                    var_a5->unk-1 = 1;
                                } while (var_a2_90 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_91 = var_t0_17;
                                var_a4_23 = var_a5;
                                do {
                                    var_a4_23 += 0xC;
                                    var_a2_91 += 4;
                                    var_a4_23->unk-C = 1;
                                    var_a4_23->unk-B = 1;
                                    var_a4_23->unk-A = 1;
                                    var_a4_23->unk-9 = 1;
                                    var_a4_23->unk-8 = 1;
                                    var_a4_23->unk-7 = 1;
                                    var_a4_23->unk-6 = 1;
                                    var_a4_23->unk-5 = 1;
                                    var_a4_23->unk-4 = 1;
                                    var_a4_23->unk-3 = 1;
                                    var_a4_23->unk-2 = 1;
                                    var_a4_23->unk-1 = 1;
                                } while (arg1 != var_a2_91);
                            }
                        }
                    } else {
                        var_t0_18 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = 0;
                                var_a5->unk1 = 0;
                                temp_a0_88 = (u16) var_a7_5->unk0;
                                var_a5 += 3;
                                if (temp_a0_88 & 0x8000) {
                                    var_a2_92 = 0;
                                } else {
                                    var_a2_92 = 0xFF;
                                }
                                var_t0_18 = 1;
                                var_a7_5 += 2;
                                var_a5->unk-1 = (s8) (((s32) temp_a0_88 >> 7) & var_a2_92);
                            }
                            if ((arg1 >> 1) != 0) {
loop_797:
                                var_a5->unk1 = 0;
                                var_a5->unk0 = 0;
                                temp_a0_89 = *var_a7_5;
                                var_a2_93 = 0;
                                if (temp_a0_89 & 0x8000) {

                                } else {
                                    var_a2_93 = 0xFF;
                                }
                                var_t0_18 += 2;
                                var_a5->unk4 = 0;
                                var_a5->unk3 = 0;
                                var_a5->unk2 = (s8) (((s32) temp_a0_89 >> 7) & var_a2_93);
                                var_a7_5 += 4;
                                temp_a0_90 = var_a7_5->unk-2;
                                var_a5 += 6;
                                if (temp_a0_90 & 0x8000) {
                                    var_a2_94 = 0;
                                } else {
                                    var_a2_94 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (((s32) temp_a0_90 >> 7) & var_a2_94);
                                if (arg1 != var_t0_18) {
                                    goto loop_797;
                                }
                            }
                        }
                    }
                    break;
                case 0x1908:                        /* switch 7 */
                    if (arg0 != 0x1909) {
                        var_t0_19 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_91 = (u16) var_a7_5->unk0;
                                var_a4_24 = 0;
                                if (!(temp_a0_91 & 0x8000)) {
                                    var_a4_24 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_91 >> 7) & var_a4_24);
                                temp_a2_18 = (u16) var_a7_5->unk2;
                                var_a0_16 = 0;
                                if (!(temp_a2_18 & 0x8000)) {
                                    var_a0_16 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a2_18 >> 7) & var_a0_16);
                                temp_a4_16 = var_a7_5->unk4;
                                var_a5 += 3;
                                if (temp_a4_16 & 0x8000) {
                                    var_a2_95 = 0;
                                } else {
                                    var_a2_95 = 0xFF;
                                }
                                var_t0_19 = 1;
                                var_a7_5 += 8;
                                var_a5->unk-1 = (s8) (((s32) temp_a4_16 >> 7) & var_a2_95);
                            }
                            if ((arg1 >> 1) != 0) {
loop_606:
                                temp_a0_92 = var_a7_5->unk0;
                                var_t0_19 += 2;
                                var_a4_25 = 0xFF;
                                if (!(temp_a0_92 & 0x8000)) {

                                } else {
                                    var_a4_25 = 0;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_92 >> 7) & var_a4_25);
                                temp_a2_19 = var_a7_5->unk2;
                                var_a0_17 = 0;
                                if (!(temp_a2_19 & 0x8000)) {
                                    var_a0_17 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a2_19 >> 7) & var_a0_17);
                                temp_a4_17 = var_a7_5->unk4;
                                var_a2_96 = 0;
                                if (!(temp_a4_17 & 0x8000)) {
                                    var_a2_96 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (((s32) temp_a4_17 >> 7) & var_a2_96);
                                temp_a0_93 = var_a7_5->unk8;
                                var_a4_26 = 0;
                                if (!(temp_a0_93 & 0x8000)) {
                                    var_a4_26 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (((s32) temp_a0_93 >> 7) & var_a4_26);
                                temp_a2_20 = var_a7_5->unkA;
                                var_a0_18 = 0;
                                if (!(temp_a2_20 & 0x8000)) {
                                    var_a0_18 = 0xFF;
                                }
                                var_a5->unk4 = (s8) (((s32) temp_a2_20 >> 7) & var_a0_18);
                                temp_a4_18 = var_a7_5->unkC;
                                var_a7_5 += 0x10;
                                var_a2_97 = 0;
                                var_a5 += 6;
                                if (!(temp_a4_18 & 0x8000)) {
                                    var_a2_97 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (((s32) temp_a4_18 >> 7) & var_a2_97);
                                if (arg1 != var_t0_19) {
                                    goto loop_606;
                                }
                            }
                        }
                    } else {
                        var_t0_20 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a0_94 = (u16) var_a7_5->unk0;
                                var_a2_98 = 0;
                                if (!(temp_a0_94 & 0x8000)) {
                                    var_a2_98 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_94 >> 7) & var_a2_98);
                                temp_a0_95 = (u16) var_a7_5->unk0;
                                var_a2_99 = 0;
                                if (!(temp_a0_95 & 0x8000)) {
                                    var_a2_99 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a0_95 >> 7) & var_a2_99);
                                temp_a0_96 = (u16) var_a7_5->unk0;
                                var_a5 += 3;
                                if (temp_a0_96 & 0x8000) {
                                    var_a2_100 = 0;
                                } else {
                                    var_a2_100 = 0xFF;
                                }
                                var_t0_20 = 1;
                                var_a7_5 += 8;
                                var_a5->unk-1 = (s8) (((s32) temp_a0_96 >> 7) & var_a2_100);
                            }
                            if ((arg1 >> 1) != 0) {
loop_994:
                                temp_a0_97 = var_a7_5->unk0;
                                var_a2_101 = 0;
                                if (!(temp_a0_97 & 0x8000)) {
                                    var_a2_101 = 0xFF;
                                }
                                var_a5->unk0 = (s8) (((s32) temp_a0_97 >> 7) & var_a2_101);
                                temp_a0_98 = var_a7_5->unk0;
                                if (temp_a0_98 & 0x8000) {
                                    var_a2_102 = 0;
                                } else {
                                    var_a2_102 = 0xFF;
                                }
                                var_a5->unk1 = (s8) (((s32) temp_a0_98 >> 7) & var_a2_102);
                                temp_a0_99 = var_a7_5->unk0;
                                if (temp_a0_99 & 0x8000) {
                                    var_a2_103 = 0;
                                } else {
                                    var_a2_103 = 0xFF;
                                }
                                var_a5->unk2 = (s8) (((s32) temp_a0_99 >> 7) & var_a2_103);
                                temp_a0_100 = var_a7_5->unk8;
                                if (temp_a0_100 & 0x8000) {
                                    var_a2_104 = 0;
                                } else {
                                    var_a2_104 = 0xFF;
                                }
                                var_a5->unk3 = (s8) (((s32) temp_a0_100 >> 7) & var_a2_104);
                                temp_a0_101 = var_a7_5->unk8;
                                var_a2_105 = 0;
                                if (!(temp_a0_101 & 0x8000)) {
                                    var_a2_105 = 0xFF;
                                }
                                var_t0_20 += 2;
                                var_a5->unk4 = (s8) (((s32) temp_a0_101 >> 7) & var_a2_105);
                                var_a7_5 += 0x10;
                                temp_a0_102 = var_a7_5->unk-8;
                                var_a5 += 6;
                                if (temp_a0_102 & 0x8000) {
                                    var_a2_106 = 0;
                                } else {
                                    var_a2_106 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) (((s32) temp_a0_102 >> 7) & var_a2_106);
                                if (arg1 != var_t0_20) {
                                    goto loop_994;
                                }
                            }
                        }
                    }
                    break;
                }
            }
            break;
        case 4:                                     /* switch 1 */
            var_a7_8 = arg4;
            if (arg2 >= 0x1909U) {
                if (arg2 >= 0x190AU) {
                    switch (arg2) {                 /* switch 2; irregular */
                    default:                        /* switch 2 */
                        temp_a2_21 = arg4 + 0xC;
                        if (arg0 != 0x1909) {
                            var_a7_9 = temp_a2_21;
                            var_t0_21 = 0;
                            if (arg1 > 0) {
                                if (arg1 & 1) {
                                    temp_a2_22 = arg4->unkC;
                                    var_a4_27 = 0;
                                    if (!(0x80000000 & temp_a2_22)) {
                                        var_a4_27 = 0xFF;
                                    }
                                    var_a5->unk0 = (s8) ((temp_a2_22 >> 0x17) & var_a4_27);
                                    temp_t2 = var_a7_9->unk-4;
                                    var_a2_107 = 0;
                                    if (!(0x80000000 & temp_t2)) {
                                        var_a2_107 = 0xFF;
                                    }
                                    var_a5->unk1 = (s8) ((temp_t2 >> 0x17) & var_a2_107);
                                    temp_t1_7 = var_a7_9->unk-8;
                                    var_a5 += 3;
                                    if (0x80000000 & temp_t1_7) {
                                        var_a4_28 = 0;
                                    } else {
                                        var_a4_28 = 0xFF;
                                    }
                                    var_t0_21 = 1;
                                    var_a7_9 += 0x10;
                                    var_a5->unk-1 = (s8) ((temp_t1_7 >> 0x17) & var_a4_28);
                                }
                                if ((arg1 >> 1) != 0) {
loop_550:
                                    temp_a2_23 = var_a7_9->unk0;
                                    var_a4_29 = 0;
                                    if (0x80000000 & temp_a2_23) {

                                    } else {
                                        var_a4_29 = 0xFF;
                                    }
                                    var_a5->unk0 = (s8) ((temp_a2_23 >> 0x17) & var_a4_29);
                                    temp_t2_2 = var_a7_9->unk-4;
                                    var_a2_108 = 0xFF;
                                    if (0x80000000 & temp_t2_2) {
                                        var_a2_108 = 0;
                                    }
                                    var_a5->unk1 = (s8) ((temp_t2_2 >> 0x17) & var_a2_108);
                                    temp_t1_8 = var_a7_9->unk-8;
                                    var_a4_30 = 0xFF;
                                    if (0x80000000 & temp_t1_8) {
                                        var_a4_30 = 0;
                                    }
                                    var_a5->unk2 = (s8) ((temp_t1_8 >> 0x17) & var_a4_30);
                                    temp_a2_24 = var_a7_9->unk10;
                                    var_a4_31 = 0xFF;
                                    if (0x80000000 & temp_a2_24) {
                                        var_a4_31 = 0;
                                    }
                                    var_a5->unk3 = (s8) ((temp_a2_24 >> 0x17) & var_a4_31);
                                    temp_t2_3 = var_a7_9->unkC;
                                    var_a2_109 = 0;
                                    if (!(0x80000000 & temp_t2_3)) {
                                        var_a2_109 = 0xFF;
                                    }
                                    var_t0_21 += 2;
                                    var_a5->unk4 = (s8) ((temp_t2_3 >> 0x17) & var_a2_109);
                                    var_a7_9 += 0x20;
                                    temp_t1_9 = var_a7_9->unk-18;
                                    var_a5 += 6;
                                    if (0x80000000 & temp_t1_9) {
                                        var_a4_32 = 0;
                                    } else {
                                        var_a4_32 = 0xFF;
                                    }
                                    var_a5->unk-1 = (s8) ((temp_t1_9 >> 0x17) & var_a4_32);
                                    if (arg1 != var_t0_21) {
                                        goto loop_550;
                                    }
                                }
                            }
                        } else {
                            var_a7_10 = temp_a2_21;
                            var_t0_22 = 0;
                            if (arg1 > 0) {
                                if (arg1 & 1) {
                                    temp_a2_25 = arg4->unkC;
                                    var_a4_33 = 0;
                                    if (!(0x80000000 & temp_a2_25)) {
                                        var_a4_33 = 0xFF;
                                    }
                                    var_a5->unk0 = (s8) ((temp_a2_25 >> 0x17) & var_a4_33);
                                    temp_a2_26 = arg4->unkC;
                                    var_a4_34 = 0;
                                    if (!(0x80000000 & temp_a2_26)) {
                                        var_a4_34 = 0xFF;
                                    }
                                    var_a5->unk1 = (s8) ((temp_a2_26 >> 0x17) & var_a4_34);
                                    temp_a2_27 = arg4->unkC;
                                    var_a5 += 3;
                                    if (0x80000000 & temp_a2_27) {
                                        var_a4_35 = 0;
                                    } else {
                                        var_a4_35 = 0xFF;
                                    }
                                    var_t0_22 = 1;
                                    var_a7_10 += 0x10;
                                    var_a5->unk-1 = (s8) ((temp_a2_27 >> 0x17) & var_a4_35);
                                }
                                if ((arg1 >> 1) != 0) {
loop_902:
                                    temp_a2_28 = var_a7_10->unk0;
                                    var_a4_36 = 0;
                                    if (!(0x80000000 & temp_a2_28)) {
                                        var_a4_36 = 0xFF;
                                    }
                                    var_a5->unk0 = (s8) ((temp_a2_28 >> 0x17) & var_a4_36);
                                    temp_a2_29 = var_a7_10->unk0;
                                    if (0x80000000 & temp_a2_29) {
                                        var_a4_37 = 0;
                                    } else {
                                        var_a4_37 = 0xFF;
                                    }
                                    var_a5->unk1 = (s8) ((temp_a2_29 >> 0x17) & var_a4_37);
                                    temp_a2_30 = var_a7_10->unk0;
                                    if (0x80000000 & temp_a2_30) {
                                        var_a4_38 = 0;
                                    } else {
                                        var_a4_38 = 0xFF;
                                    }
                                    var_a5->unk2 = (s8) ((temp_a2_30 >> 0x17) & var_a4_38);
                                    temp_a2_31 = var_a7_10->unk10;
                                    if (0x80000000 & temp_a2_31) {
                                        var_a4_39 = 0;
                                    } else {
                                        var_a4_39 = 0xFF;
                                    }
                                    var_a5->unk3 = (s8) ((temp_a2_31 >> 0x17) & var_a4_39);
                                    temp_a2_32 = var_a7_10->unk10;
                                    var_a4_40 = 0;
                                    if (!(0x80000000 & temp_a2_32)) {
                                        var_a4_40 = 0xFF;
                                    }
                                    var_t0_22 += 2;
                                    var_a5->unk4 = (s8) ((temp_a2_32 >> 0x17) & var_a4_40);
                                    var_a7_10 += 0x20;
                                    temp_a2_33 = var_a7_10->unk-10;
                                    var_a5 += 6;
                                    if (0x80000000 & temp_a2_33) {
                                        var_a4_41 = 0;
                                    } else {
                                        var_a4_41 = 0xFF;
                                    }
                                    var_a5->unk-1 = (s8) ((temp_a2_33 >> 0x17) & var_a4_41);
                                    if (arg1 != var_t0_22) {
                                        goto loop_902;
                                    }
                                }
                            }
                        }
                        break;
                    case 0x190A:                    /* switch 2 */
                        var_t0_23 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a2_34 = (u32) var_a7_8->unk0;
                                var_t1 = 0;
                                if (!(0x80000000 & temp_a2_34)) {
                                    var_t1 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_34 >> 0x17) & var_t1);
                                var_a5->unk1 = 0;
                                temp_a4_19 = (u32) var_a7_8->unk4;
                                var_a5 += 3;
                                if (0x80000000 & temp_a4_19) {
                                    var_t1_2 = 0;
                                } else {
                                    var_t1_2 = 0xFF;
                                }
                                var_t0_23 = 1;
                                var_a7_8 += 8;
                                var_a5->unk-1 = (s8) ((temp_a4_19 >> 0x17) & var_t1_2);
                            }
                            if ((arg1 >> 1) != 0) {
loop_582:
                                temp_a2_35 = var_a7_8->unk0;
                                var_t1_3 = 0;
                                if (0x80000000 & temp_a2_35) {

                                } else {
                                    var_t1_3 = 0xFF;
                                }
                                var_a5->unk1 = 0;
                                var_a5->unk0 = (s8) ((temp_a2_35 >> 0x17) & var_t1_3);
                                temp_a4_20 = var_a7_8->unk4;
                                var_t1_4 = 0xFF;
                                if (0x80000000 & temp_a4_20) {
                                    var_t1_4 = 0;
                                }
                                var_a5->unk2 = (s8) ((temp_a4_20 >> 0x17) & var_t1_4);
                                temp_a2_36 = var_a7_8->unk8;
                                var_t1_5 = 0;
                                if (!(0x80000000 & temp_a2_36)) {
                                    var_t1_5 = 0xFF;
                                }
                                var_t0_23 += 2;
                                var_a5->unk4 = 0;
                                var_a5->unk3 = (s8) ((temp_a2_36 >> 0x17) & var_t1_5);
                                var_a7_8 += 0x10;
                                temp_a4_21 = var_a7_8->unk-4;
                                var_a5 += 6;
                                if (0x80000000 & temp_a4_21) {
                                    var_t1_6 = 0;
                                } else {
                                    var_t1_6 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) ((temp_a4_21 >> 0x17) & var_t1_6);
                                if (arg1 != var_t0_23) {
                                    goto loop_582;
                                }
                            }
                        }
                        break;
                    }
                } else {
                case 0x8049:                        /* switch 2 */
                    var_t0_24 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            temp_a2_37 = (u32) var_a7_8->unk0;
                            var_a4_42 = 0;
                            if (!(0x80000000 & temp_a2_37)) {
                                var_a4_42 = 0xFF;
                            }
                            var_a5->unk0 = (s8) ((temp_a2_37 >> 0x17) & var_a4_42);
                            temp_a2_38 = (u32) var_a7_8->unk0;
                            var_a4_43 = 0;
                            if (!(0x80000000 & temp_a2_38)) {
                                var_a4_43 = 0xFF;
                            }
                            var_a5->unk1 = (s8) ((temp_a2_38 >> 0x17) & var_a4_43);
                            temp_a2_39 = (u32) var_a7_8->unk0;
                            var_a5 += 3;
                            if (0x80000000 & temp_a2_39) {
                                var_a4_44 = 0;
                            } else {
                                var_a4_44 = 0xFF;
                            }
                            var_t0_24 = 1;
                            var_a7_8 += 4;
                            var_a5->unk-1 = (s8) ((temp_a2_39 >> 0x17) & var_a4_44);
                        }
                        if ((arg1 >> 1) != 0) {
loop_213:
                            temp_a2_40 = var_a7_8->unk0;
                            var_a4_45 = 0;
                            if (!(0x80000000 & temp_a2_40)) {
                                var_a4_45 = 0xFF;
                            }
                            var_a5->unk0 = (s8) ((temp_a2_40 >> 0x17) & var_a4_45);
                            temp_a2_41 = var_a7_8->unk0;
                            var_a4_46 = 0xFF;
                            if (0x80000000 & temp_a2_41) {
                                var_a4_46 = 0;
                            }
                            var_a5->unk1 = (s8) ((temp_a2_41 >> 0x17) & var_a4_46);
                            temp_a2_42 = var_a7_8->unk0;
                            var_a4_47 = 0xFF;
                            if (0x80000000 & temp_a2_42) {
                                var_a4_47 = 0;
                            }
                            var_a5->unk2 = (s8) ((temp_a2_42 >> 0x17) & var_a4_47);
                            temp_a2_43 = var_a7_8->unk4;
                            var_a4_48 = 0xFF;
                            if (0x80000000 & temp_a2_43) {
                                var_a4_48 = 0;
                            }
                            var_a5->unk3 = (s8) ((temp_a2_43 >> 0x17) & var_a4_48);
                            temp_a2_44 = var_a7_8->unk4;
                            var_a4_49 = 0;
                            if (!(0x80000000 & temp_a2_44)) {
                                var_a4_49 = 0xFF;
                            }
                            var_t0_24 += 2;
                            var_a5->unk4 = (s8) ((temp_a2_44 >> 0x17) & var_a4_49);
                            var_a7_8 += 8;
                            temp_a2_45 = var_a7_8->unk-4;
                            var_a5 += 6;
                            if (0x80000000 & temp_a2_45) {
                                var_a4_50 = 0;
                            } else {
                                var_a4_50 = 0xFF;
                            }
                            var_a5->unk-1 = (s8) ((temp_a2_45 >> 0x17) & var_a4_50);
                            if (arg1 != var_t0_24) {
                                goto loop_213;
                            }
                        }
                    }
                }
            } else {
                switch (arg2) {                     /* switch 8; irregular */
                case 0x1908:                        /* switch 8 */
                    if (arg0 != 0x1909) {
                        var_t0_25 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a2_46 = (u32) var_a7_8->unk0;
                                var_t1_7 = 0;
                                if (!(0x80000000 & temp_a2_46)) {
                                    var_t1_7 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_46 >> 0x17) & var_t1_7);
                                temp_a4_22 = (u32) var_a7_8->unk4;
                                var_a2_110 = 0;
                                if (!(0x80000000 & temp_a4_22)) {
                                    var_a2_110 = 0xFF;
                                }
                                var_a5->unk1 = (s8) ((temp_a4_22 >> 0x17) & var_a2_110);
                                temp_t1_10 = var_a7_8->unk8;
                                var_a5 += 3;
                                if (0x80000000 & temp_t1_10) {
                                    var_a4_51 = 0;
                                } else {
                                    var_a4_51 = 0xFF;
                                }
                                var_t0_25 = 1;
                                var_a7_8 += 0x10;
                                var_a5->unk-1 = (s8) ((temp_t1_10 >> 0x17) & var_a4_51);
                            }
                            if ((arg1 >> 1) != 0) {
loop_620:
                                temp_a2_47 = var_a7_8->unk0;
                                var_t0_25 += 2;
                                var_t1_8 = 0xFF;
                                if (!(0x80000000 & temp_a2_47)) {

                                } else {
                                    var_t1_8 = 0;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_47 >> 0x17) & var_t1_8);
                                temp_a4_23 = var_a7_8->unk4;
                                var_a2_111 = 0;
                                if (!(0x80000000 & temp_a4_23)) {
                                    var_a2_111 = 0xFF;
                                }
                                var_a5->unk1 = (s8) ((temp_a4_23 >> 0x17) & var_a2_111);
                                temp_t1_11 = var_a7_8->unk8;
                                var_a4_52 = 0;
                                if (!(0x80000000 & temp_t1_11)) {
                                    var_a4_52 = 0xFF;
                                }
                                var_a5->unk2 = (s8) ((temp_t1_11 >> 0x17) & var_a4_52);
                                temp_a2_48 = var_a7_8->unk10;
                                var_t1_9 = 0;
                                if (!(0x80000000 & temp_a2_48)) {
                                    var_t1_9 = 0xFF;
                                }
                                var_a5->unk3 = (s8) ((temp_a2_48 >> 0x17) & var_t1_9);
                                temp_a4_24 = var_a7_8->unk14;
                                var_a2_112 = 0;
                                if (!(0x80000000 & temp_a4_24)) {
                                    var_a2_112 = 0xFF;
                                }
                                var_a5->unk4 = (s8) ((temp_a4_24 >> 0x17) & var_a2_112);
                                temp_t1_12 = var_a7_8->unk18;
                                var_a7_8 += 0x20;
                                var_a4_53 = 0;
                                var_a5 += 6;
                                if (!(0x80000000 & temp_t1_12)) {
                                    var_a4_53 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) ((temp_t1_12 >> 0x17) & var_a4_53);
                                if (arg1 != var_t0_25) {
                                    goto loop_620;
                                }
                            }
                        }
                    } else {
                        var_t0_26 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a2_49 = (u32) var_a7_8->unk0;
                                var_a4_54 = 0;
                                if (!(0x80000000 & temp_a2_49)) {
                                    var_a4_54 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_49 >> 0x17) & var_a4_54);
                                temp_a2_50 = (u32) var_a7_8->unk0;
                                var_a4_55 = 0;
                                if (!(0x80000000 & temp_a2_50)) {
                                    var_a4_55 = 0xFF;
                                }
                                var_a5->unk1 = (s8) ((temp_a2_50 >> 0x17) & var_a4_55);
                                temp_a2_51 = (u32) var_a7_8->unk0;
                                var_a5 += 3;
                                if (0x80000000 & temp_a2_51) {
                                    var_a4_56 = 0;
                                } else {
                                    var_a4_56 = 0xFF;
                                }
                                var_t0_26 = 1;
                                var_a7_8 += 0x10;
                                var_a5->unk-1 = (s8) ((temp_a2_51 >> 0x17) & var_a4_56);
                            }
                            if ((arg1 >> 1) != 0) {
loop_1006:
                                temp_a2_52 = var_a7_8->unk0;
                                var_a4_57 = 0;
                                if (!(0x80000000 & temp_a2_52)) {
                                    var_a4_57 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_52 >> 0x17) & var_a4_57);
                                temp_a2_53 = var_a7_8->unk0;
                                if (0x80000000 & temp_a2_53) {
                                    var_a4_58 = 0;
                                } else {
                                    var_a4_58 = 0xFF;
                                }
                                var_a5->unk1 = (s8) ((temp_a2_53 >> 0x17) & var_a4_58);
                                temp_a2_54 = var_a7_8->unk0;
                                if (0x80000000 & temp_a2_54) {
                                    var_a4_59 = 0;
                                } else {
                                    var_a4_59 = 0xFF;
                                }
                                var_a5->unk2 = (s8) ((temp_a2_54 >> 0x17) & var_a4_59);
                                temp_a2_55 = var_a7_8->unk10;
                                if (0x80000000 & temp_a2_55) {
                                    var_a4_60 = 0;
                                } else {
                                    var_a4_60 = 0xFF;
                                }
                                var_a5->unk3 = (s8) ((temp_a2_55 >> 0x17) & var_a4_60);
                                temp_a2_56 = var_a7_8->unk10;
                                var_a4_61 = 0;
                                if (!(0x80000000 & temp_a2_56)) {
                                    var_a4_61 = 0xFF;
                                }
                                var_t0_26 += 2;
                                var_a5->unk4 = (s8) ((temp_a2_56 >> 0x17) & var_a4_61);
                                var_a7_8 += 0x20;
                                temp_a2_57 = var_a7_8->unk-10;
                                var_a5 += 6;
                                if (0x80000000 & temp_a2_57) {
                                    var_a4_62 = 0;
                                } else {
                                    var_a4_62 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) ((temp_a2_57 >> 0x17) & var_a4_62);
                                if (arg1 != var_t0_26) {
                                    goto loop_1006;
                                }
                            }
                        }
                    }
                    break;
                case 0x1906:                        /* switch 8 */
                    if (arg0 != 0x1906) {
                        var_t0_27 = 0;
                        if (arg1 > 0) {
                            var_a2_113 = arg1 & 3;
                            if (var_a2_113 != 0) {
                                do {
                                    var_t0_27 += 1;
                                    var_a5 += 3;
                                    var_a2_113 -= 1;
                                    var_a5->unk-3 = 1;
                                    var_a5->unk-2 = 1;
                                    var_a5->unk-1 = 1;
                                } while (var_a2_113 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_114 = var_t0_27;
                                var_a4_63 = var_a5;
                                do {
                                    var_a4_63 += 0xC;
                                    var_a2_114 += 4;
                                    var_a4_63->unk-C = 1;
                                    var_a4_63->unk-B = 1;
                                    var_a4_63->unk-A = 1;
                                    var_a4_63->unk-9 = 1;
                                    var_a4_63->unk-8 = 1;
                                    var_a4_63->unk-7 = 1;
                                    var_a4_63->unk-6 = 1;
                                    var_a4_63->unk-5 = 1;
                                    var_a4_63->unk-4 = 1;
                                    var_a4_63->unk-3 = 1;
                                    var_a4_63->unk-2 = 1;
                                    var_a4_63->unk-1 = 1;
                                } while (arg1 != var_a2_114);
                            }
                        }
                    } else {
                        var_t0_28 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = 0;
                                var_a5->unk1 = 0;
                                temp_a2_58 = (u32) var_a7_8->unk0;
                                var_a5 += 3;
                                if (0x80000000 & temp_a2_58) {
                                    var_a4_64 = 0;
                                } else {
                                    var_a4_64 = 0xFF;
                                }
                                var_t0_28 = 1;
                                var_a7_8 += 4;
                                var_a5->unk-1 = (s8) ((temp_a2_58 >> 0x17) & var_a4_64);
                            }
                            if ((arg1 >> 1) != 0) {
loop_804:
                                var_a5->unk1 = 0;
                                var_a5->unk0 = 0;
                                temp_a2_59 = *var_a7_8;
                                var_a4_65 = 0;
                                if (0x80000000 & temp_a2_59) {

                                } else {
                                    var_a4_65 = 0xFF;
                                }
                                var_t0_28 += 2;
                                var_a5->unk4 = 0;
                                var_a5->unk3 = 0;
                                var_a5->unk2 = (s8) ((temp_a2_59 >> 0x17) & var_a4_65);
                                var_a7_8 += 8;
                                temp_a2_60 = var_a7_8->unk-4;
                                var_a5 += 6;
                                if (0x80000000 & temp_a2_60) {
                                    var_a4_66 = 0;
                                } else {
                                    var_a4_66 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) ((temp_a2_60 >> 0x17) & var_a4_66);
                                if (arg1 != var_t0_28) {
                                    goto loop_804;
                                }
                            }
                        }
                    }
                    break;
                default:                            /* switch 8 */
                    if (arg0 != 0x1909) {
                        var_t0_29 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a2_61 = (u32) var_a7_8->unk0;
                                var_t1_10 = 0;
                                if (!(0x80000000 & temp_a2_61)) {
                                    var_t1_10 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_61 >> 0x17) & var_t1_10);
                                temp_a4_25 = (u32) var_a7_8->unk4;
                                var_a2_115 = 0;
                                if (!(0x80000000 & temp_a4_25)) {
                                    var_a2_115 = 0xFF;
                                }
                                var_a5->unk1 = (s8) ((temp_a4_25 >> 0x17) & var_a2_115);
                                temp_t1_13 = var_a7_8->unk8;
                                var_a5 += 3;
                                if (0x80000000 & temp_t1_13) {
                                    var_a4_67 = 0;
                                } else {
                                    var_a4_67 = 0xFF;
                                }
                                var_t0_29 = 1;
                                var_a7_8 += 0xC;
                                var_a5->unk-1 = (s8) ((temp_t1_13 >> 0x17) & var_a4_67);
                            }
                            if ((arg1 >> 1) != 0) {
loop_453:
                                temp_a2_62 = var_a7_8->unk0;
                                var_t1_11 = 0;
                                if (0x80000000 & temp_a2_62) {

                                } else {
                                    var_t1_11 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_62 >> 0x17) & var_t1_11);
                                temp_a4_26 = var_a7_8->unk4;
                                var_a2_116 = 0xFF;
                                if (0x80000000 & temp_a4_26) {
                                    var_a2_116 = 0;
                                }
                                var_a5->unk1 = (s8) ((temp_a4_26 >> 0x17) & var_a2_116);
                                temp_t1_14 = var_a7_8->unk8;
                                var_a4_68 = 0xFF;
                                if (0x80000000 & temp_t1_14) {
                                    var_a4_68 = 0;
                                }
                                var_a5->unk2 = (s8) ((temp_t1_14 >> 0x17) & var_a4_68);
                                temp_a2_63 = var_a7_8->unkC;
                                var_t1_12 = 0xFF;
                                if (0x80000000 & temp_a2_63) {
                                    var_t1_12 = 0;
                                }
                                var_a5->unk3 = (s8) ((temp_a2_63 >> 0x17) & var_t1_12);
                                temp_a4_27 = var_a7_8->unk10;
                                var_a2_117 = 0;
                                if (!(0x80000000 & temp_a4_27)) {
                                    var_a2_117 = 0xFF;
                                }
                                var_t0_29 += 2;
                                var_a5->unk4 = (s8) ((temp_a4_27 >> 0x17) & var_a2_117);
                                var_a7_8 += 0x18;
                                temp_t1_15 = var_a7_8->unk-4;
                                var_a5 += 6;
                                if (0x80000000 & temp_t1_15) {
                                    var_a4_69 = 0;
                                } else {
                                    var_a4_69 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) ((temp_t1_15 >> 0x17) & var_a4_69);
                                if (arg1 != var_t0_29) {
                                    goto loop_453;
                                }
                            }
                        }
                    } else {
                        var_t0_30 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                temp_a2_64 = (u32) var_a7_8->unk0;
                                var_a4_70 = 0;
                                if (!(0x80000000 & temp_a2_64)) {
                                    var_a4_70 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_64 >> 0x17) & var_a4_70);
                                temp_a2_65 = (u32) var_a7_8->unk0;
                                var_a4_71 = 0;
                                if (!(0x80000000 & temp_a2_65)) {
                                    var_a4_71 = 0xFF;
                                }
                                var_a5->unk1 = (s8) ((temp_a2_65 >> 0x17) & var_a4_71);
                                temp_a2_66 = (u32) var_a7_8->unk0;
                                var_a5 += 3;
                                if (0x80000000 & temp_a2_66) {
                                    var_a4_72 = 0;
                                } else {
                                    var_a4_72 = 0xFF;
                                }
                                var_t0_30 = 1;
                                var_a7_8 += 0xC;
                                var_a5->unk-1 = (s8) ((temp_a2_66 >> 0x17) & var_a4_72);
                            }
                            if ((arg1 >> 1) != 0) {
loop_731:
                                temp_a2_67 = var_a7_8->unk0;
                                var_a4_73 = 0;
                                if (!(0x80000000 & temp_a2_67)) {
                                    var_a4_73 = 0xFF;
                                }
                                var_a5->unk0 = (s8) ((temp_a2_67 >> 0x17) & var_a4_73);
                                temp_a2_68 = var_a7_8->unk0;
                                if (0x80000000 & temp_a2_68) {
                                    var_a4_74 = 0;
                                } else {
                                    var_a4_74 = 0xFF;
                                }
                                var_a5->unk1 = (s8) ((temp_a2_68 >> 0x17) & var_a4_74);
                                temp_a2_69 = var_a7_8->unk0;
                                if (0x80000000 & temp_a2_69) {
                                    var_a4_75 = 0;
                                } else {
                                    var_a4_75 = 0xFF;
                                }
                                var_a5->unk2 = (s8) ((temp_a2_69 >> 0x17) & var_a4_75);
                                temp_a2_70 = var_a7_8->unkC;
                                if (0x80000000 & temp_a2_70) {
                                    var_a4_76 = 0;
                                } else {
                                    var_a4_76 = 0xFF;
                                }
                                var_a5->unk3 = (s8) ((temp_a2_70 >> 0x17) & var_a4_76);
                                temp_a2_71 = var_a7_8->unkC;
                                var_a4_77 = 0;
                                if (!(0x80000000 & temp_a2_71)) {
                                    var_a4_77 = 0xFF;
                                }
                                var_t0_30 += 2;
                                var_a5->unk4 = (s8) ((temp_a2_71 >> 0x17) & var_a4_77);
                                var_a7_8 += 0x18;
                                temp_a2_72 = var_a7_8->unk-C;
                                var_a5 += 6;
                                if (0x80000000 & temp_a2_72) {
                                    var_a4_78 = 0;
                                } else {
                                    var_a4_78 = 0xFF;
                                }
                                var_a5->unk-1 = (s8) ((temp_a2_72 >> 0x17) & var_a4_78);
                                if (arg1 != var_t0_30) {
                                    goto loop_731;
                                }
                            }
                        }
                    }
                    break;
                }
            }
            break;
        case 1:                                     /* switch 1 */
            if (arg2 >= 0x1909U) {
                if (arg2 >= 0x190AU) {
                    switch (arg2) {                 /* switch 3; irregular */
                    case 0x190A:                    /* switch 3 */
                        var_t0_31 = 0;
                        if (arg1 > 0) {
                            var_a0_19 = arg1 & 3;
                            if (var_a0_19 != 0) {
                                do {
                                    var_t0_31 += 1;
                                    var_a5 += 3;
                                    var_a5->unk-3 = (u8) *var_a7;
                                    var_a5->unk-2 = 0;
                                    var_a7 += 2;
                                    var_a0_19 -= 1;
                                    var_a5->unk-1 = (u8) var_a7->unk-1;
                                } while (var_a0_19 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_118 = var_t0_31;
                                var_a4_79 = var_a5;
                                var_a0_20 = var_a7;
                                do {
                                    var_a4_79->unk0 = (u8) var_a0_20->unk0;
                                    var_a4_79->unk1 = 0;
                                    var_a4_79->unk2 = (u8) var_a0_20->unk1;
                                    var_a4_79->unk3 = (u8) var_a0_20->unk2;
                                    var_a4_79->unk4 = 0;
                                    var_a4_79->unk5 = (u8) var_a0_20->unk3;
                                    var_a4_79->unk6 = (u8) var_a0_20->unk4;
                                    var_a4_79->unk7 = 0;
                                    var_a4_79->unk8 = (u8) var_a0_20->unk5;
                                    var_a4_79 += 0xC;
                                    var_a4_79->unk-3 = (u8) var_a0_20->unk6;
                                    var_a4_79->unk-2 = 0;
                                    var_a0_20 += 8;
                                    var_a2_118 += 4;
                                    var_a4_79->unk-1 = (u8) var_a0_20->unk-1;
                                } while (arg1 != var_a2_118);
                            }
                        }
                        break;
                    default:                        /* switch 3 */
                        var_a7_11 = arg4 + 1;
                        if (arg0 != 0x1909) {
                            var_t0_32 = 0;
                            if (arg1 > 0) {
                                var_a0_21 = arg1 & 3;
                                if (var_a0_21 != 0) {
                                    do {
                                        var_a5->unk0 = (u8) var_a7_11->unk2;
                                        temp_a6 = var_a7_11->unk1;
                                        var_t0_32 += 1;
                                        var_a7_11 += 4;
                                        var_a5->unk1 = temp_a6;
                                        var_a5 += 3;
                                        var_a0_21 -= 1;
                                        var_a5->unk-1 = (u8) var_a7_11->unk-2;
                                    } while (var_a0_21 != 0);
                                }
                                if ((arg1 >> 2) != 0) {
                                    var_a0_22 = var_t0_32;
                                    var_a4_80 = var_a5;
                                    var_a2_119 = var_a7_11;
                                    do {
                                        var_a4_80->unk0 = (u8) var_a2_119->unk2;
                                        var_a4_80->unk1 = (u8) var_a2_119->unk1;
                                        var_a4_80->unk2 = (u8) var_a2_119->unk2;
                                        var_a4_80->unk3 = (u8) var_a2_119->unk6;
                                        var_a4_80->unk4 = (u8) var_a2_119->unk5;
                                        var_a4_80->unk5 = (u8) var_a2_119->unk6;
                                        var_a4_80->unk6 = (u8) var_a2_119->unkA;
                                        var_a4_80->unk7 = (u8) var_a2_119->unk9;
                                        var_a4_80->unk8 = (u8) var_a2_119->unkA;
                                        var_a4_80->unk9 = (u8) var_a2_119->unkE;
                                        temp_a6_2 = var_a2_119->unkD;
                                        var_a2_119 += 0x10;
                                        var_a4_80->unkA = temp_a6_2;
                                        var_a4_80 += 0xC;
                                        var_a0_22 += 4;
                                        var_a4_80->unk-1 = (u8) var_a2_119->unk-2;
                                    } while (arg1 != var_a0_22);
                                }
                            }
                        } else {
                            var_a7_12 = arg4 + 3;
                            var_t0_33 = 0;
                            if (arg1 > 0) {
                                var_a0_23 = arg1 & 3;
                                if (var_a0_23 != 0) {
                                    do {
                                        var_a5->unk0 = (u8) *var_a7_12;
                                        temp_v1 = *var_a7_12;
                                        var_t0_33 += 1;
                                        var_a7_12 += 4;
                                        var_a5->unk1 = temp_v1;
                                        var_a5 += 3;
                                        var_a0_23 -= 1;
                                        var_a5->unk-1 = (u8) var_a7_12->unk-4;
                                    } while (var_a0_23 != 0);
                                }
                                if ((arg1 >> 2) != 0) {
                                    var_a0_24 = var_t0_33;
                                    var_a4_81 = var_a5;
                                    var_a2_120 = var_a7_12;
                                    do {
                                        var_a4_81->unk0 = (u8) var_a2_120->unk0;
                                        var_a4_81->unk1 = (u8) var_a2_120->unk0;
                                        var_a4_81->unk2 = (u8) var_a2_120->unk0;
                                        var_a4_81->unk3 = (u8) var_a2_120->unk4;
                                        var_a4_81->unk4 = (u8) var_a2_120->unk4;
                                        var_a4_81->unk5 = (u8) var_a2_120->unk4;
                                        var_a4_81->unk6 = (u8) var_a2_120->unk8;
                                        var_a4_81->unk7 = (u8) var_a2_120->unk8;
                                        var_a4_81->unk8 = (u8) var_a2_120->unk8;
                                        var_a4_81->unk9 = (u8) var_a2_120->unkC;
                                        temp_v1_2 = var_a2_120->unkC;
                                        var_a2_120 += 0x10;
                                        var_a4_81->unkA = temp_v1_2;
                                        var_a4_81 += 0xC;
                                        var_a0_24 += 4;
                                        var_a4_81->unk-1 = (u8) var_a2_120->unk-4;
                                    } while (arg1 != var_a0_24);
                                }
                            }
                        }
                        break;
                    }
                } else {
                case 0x8049:                        /* switch 3 */
                    var_t0_34 = 0;
                    if (arg1 > 0) {
                        var_a0_25 = arg1 & 3;
                        if (var_a0_25 != 0) {
                            do {
                                *var_a5 = (u8) *var_a7;
                                var_t0_34 += 1;
                                var_a5 += 3;
                                var_a5->unk-2 = (u8) *var_a7;
                                var_a7 += 1;
                                var_a0_25 -= 1;
                                var_a5->unk-1 = (u8) var_a7->unk-1;
                            } while (var_a0_25 != 0);
                        }
                        if ((arg1 >> 2) != 0) {
                            var_a2_121 = var_t0_34;
                            var_a4_82 = var_a5;
                            var_a0_26 = var_a7;
                            do {
                                var_a4_82->unk0 = (u8) var_a0_26->unk0;
                                var_a4_82->unk1 = (u8) var_a0_26->unk0;
                                var_a4_82->unk2 = (u8) var_a0_26->unk0;
                                var_a4_82->unk3 = (u8) var_a0_26->unk1;
                                var_a4_82->unk4 = (u8) var_a0_26->unk1;
                                var_a4_82->unk5 = (u8) var_a0_26->unk1;
                                var_a4_82->unk6 = (u8) var_a0_26->unk2;
                                var_a4_82->unk7 = (u8) var_a0_26->unk2;
                                var_a4_82->unk8 = (u8) var_a0_26->unk2;
                                var_a4_82->unk9 = (u8) var_a0_26->unk3;
                                var_a4_82 += 0xC;
                                var_a4_82->unk-2 = (u8) var_a0_26->unk3;
                                var_a0_26 += 4;
                                var_a2_121 += 4;
                                var_a4_82->unk-1 = (u8) var_a0_26->unk-1;
                            } while (arg1 != var_a2_121);
                        }
                    }
                }
            } else {
                switch (arg2) {                     /* switch 9; irregular */
                case 0x1908:                        /* switch 9 */
                    if (arg0 != 0x1909) {
                        var_t0_35 = 0;
                        if (arg1 > 0) {
                            var_a0_27 = arg1 & 3;
                            if (var_a0_27 != 0) {
                                do {
                                    var_a5->unk0 = (u8) var_a7->unk0;
                                    temp_a3 = var_a7->unk1;
                                    var_t0_35 += 1;
                                    var_a7 += 4;
                                    var_a5->unk1 = temp_a3;
                                    var_a5 += 3;
                                    var_a0_27 -= 1;
                                    var_a5->unk-1 = (u8) var_a7->unk-2;
                                } while (var_a0_27 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a0_28 = var_t0_35;
                                var_a4_83 = var_a5;
                                var_a2_122 = var_a7;
                                do {
                                    var_a4_83->unk0 = (u8) var_a2_122->unk0;
                                    var_a4_83->unk1 = (u8) var_a2_122->unk1;
                                    var_a4_83->unk2 = (u8) var_a2_122->unk2;
                                    var_a4_83->unk3 = (u8) var_a2_122->unk4;
                                    var_a4_83->unk4 = (u8) var_a2_122->unk5;
                                    var_a4_83->unk5 = (u8) var_a2_122->unk6;
                                    var_a4_83->unk6 = (u8) var_a2_122->unk8;
                                    var_a4_83->unk7 = (u8) var_a2_122->unk9;
                                    var_a4_83->unk8 = (u8) var_a2_122->unkA;
                                    var_a4_83->unk9 = (u8) var_a2_122->unkC;
                                    temp_a3_2 = var_a2_122->unkD;
                                    var_a2_122 += 0x10;
                                    var_a4_83->unkA = temp_a3_2;
                                    var_a4_83 += 0xC;
                                    var_a0_28 += 4;
                                    var_a4_83->unk-1 = (u8) var_a2_122->unk-2;
                                } while (arg1 != var_a0_28);
                            }
                        }
                    } else {
                        var_t0_36 = 0;
                        if (arg1 > 0) {
                            var_a0_29 = arg1 & 3;
                            if (var_a0_29 != 0) {
                                do {
                                    var_a5->unk0 = (u8) *var_a7;
                                    temp_v1_3 = *var_a7;
                                    var_t0_36 += 1;
                                    var_a7 += 4;
                                    var_a5->unk1 = temp_v1_3;
                                    var_a5 += 3;
                                    var_a0_29 -= 1;
                                    var_a5->unk-1 = (u8) var_a7->unk-4;
                                } while (var_a0_29 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a0_30 = var_t0_36;
                                var_a4_84 = var_a5;
                                var_a2_123 = var_a7;
                                do {
                                    var_a4_84->unk0 = (u8) var_a2_123->unk0;
                                    var_a4_84->unk1 = (u8) var_a2_123->unk0;
                                    var_a4_84->unk2 = (u8) var_a2_123->unk0;
                                    var_a4_84->unk3 = (u8) var_a2_123->unk4;
                                    var_a4_84->unk4 = (u8) var_a2_123->unk4;
                                    var_a4_84->unk5 = (u8) var_a2_123->unk4;
                                    var_a4_84->unk6 = (u8) var_a2_123->unk8;
                                    var_a4_84->unk7 = (u8) var_a2_123->unk8;
                                    var_a4_84->unk8 = (u8) var_a2_123->unk8;
                                    var_a4_84->unk9 = (u8) var_a2_123->unkC;
                                    temp_v1_4 = var_a2_123->unkC;
                                    var_a2_123 += 0x10;
                                    var_a4_84->unkA = temp_v1_4;
                                    var_a4_84 += 0xC;
                                    var_a0_30 += 4;
                                    var_a4_84->unk-1 = (u8) var_a2_123->unk-4;
                                } while (arg1 != var_a0_30);
                            }
                        }
                    }
                    break;
                case 0x1906:                        /* switch 9 */
                    if (arg0 != 0x1906) {
                        var_t0_37 = 0;
                        if (arg1 > 0) {
                            var_a2_124 = arg1 & 3;
                            if (var_a2_124 != 0) {
                                do {
                                    var_t0_37 += 1;
                                    var_a5 += 3;
                                    var_a2_124 -= 1;
                                    var_a5->unk-3 = 1;
                                    var_a5->unk-2 = 1;
                                    var_a5->unk-1 = 1;
                                } while (var_a2_124 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a4_85 = var_t0_37;
                                var_a2_125 = var_a5;
                                do {
                                    var_a2_125 += 0xC;
                                    var_a4_85 += 4;
                                    var_a2_125->unk-C = 1;
                                    var_a2_125->unk-B = 1;
                                    var_a2_125->unk-A = 1;
                                    var_a2_125->unk-9 = 1;
                                    var_a2_125->unk-8 = 1;
                                    var_a2_125->unk-7 = 1;
                                    var_a2_125->unk-6 = 1;
                                    var_a2_125->unk-5 = 1;
                                    var_a2_125->unk-4 = 1;
                                    var_a2_125->unk-3 = 1;
                                    var_a2_125->unk-2 = 1;
                                    var_a2_125->unk-1 = 1;
                                } while (arg1 != var_a4_85);
                            }
                        }
                    } else {
                        var_t0_38 = 0;
                        if (arg1 > 0) {
                            var_a0_31 = arg1 & 3;
                            if (var_a0_31 != 0) {
                                do {
                                    var_t0_38 += 1;
                                    var_a5 += 3;
                                    var_a5->unk-3 = 0;
                                    var_a5->unk-2 = 0;
                                    var_a7 += 1;
                                    var_a0_31 -= 1;
                                    var_a5->unk-1 = (u8) var_a7->unk-1;
                                } while (var_a0_31 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_126 = var_t0_38;
                                var_a4_86 = var_a7;
                                var_a0_32 = var_a5;
                                do {
                                    var_a0_32->unk0 = 0;
                                    var_a0_32->unk1 = 0;
                                    var_a0_32->unk2 = (u8) var_a4_86->unk0;
                                    var_a0_32->unk3 = 0;
                                    var_a0_32->unk4 = 0;
                                    var_a0_32->unk5 = (u8) var_a4_86->unk1;
                                    var_a0_32->unk6 = 0;
                                    var_a0_32->unk7 = 0;
                                    var_a0_32 += 0xC;
                                    var_a0_32->unk-4 = (u8) var_a4_86->unk2;
                                    var_a0_32->unk-3 = 0;
                                    var_a0_32->unk-2 = 0;
                                    var_a4_86 += 4;
                                    var_a2_126 += 4;
                                    var_a0_32->unk-1 = (u8) var_a4_86->unk-1;
                                } while (arg1 != var_a2_126);
                            }
                        }
                    }
                    break;
                default:                            /* switch 9 */
                    if (arg0 != 0x1909) {
                        var_t0_39 = 0;
                        if (arg1 > 0) {
                            var_a0_33 = arg1 & 3;
                            if (var_a0_33 != 0) {
                                do {
                                    *var_a5 = (u8) var_a7->unk0;
                                    var_t0_39 += 1;
                                    var_a5 += 3;
                                    var_a5->unk-2 = (u8) var_a7->unk1;
                                    var_a7 += 3;
                                    var_a0_33 -= 1;
                                    var_a5->unk-1 = (u8) var_a7->unk-1;
                                } while (var_a0_33 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_127 = var_t0_39;
                                var_a4_87 = var_a5;
                                var_a0_34 = var_a7;
                                do {
                                    var_a4_87->unk0 = (u8) var_a0_34->unk0;
                                    var_a4_87->unk1 = (u8) var_a0_34->unk1;
                                    var_a4_87->unk2 = (u8) var_a0_34->unk2;
                                    var_a4_87->unk3 = (u8) var_a0_34->unk3;
                                    var_a4_87->unk4 = (u8) var_a0_34->unk4;
                                    var_a4_87->unk5 = (u8) var_a0_34->unk5;
                                    var_a4_87->unk6 = (u8) var_a0_34->unk6;
                                    var_a4_87->unk7 = (u8) var_a0_34->unk7;
                                    var_a4_87->unk8 = (u8) var_a0_34->unk8;
                                    var_a4_87->unk9 = (u8) var_a0_34->unk9;
                                    var_a4_87 += 0xC;
                                    var_a4_87->unk-2 = (u8) var_a0_34->unkA;
                                    var_a0_34 += 0xC;
                                    var_a2_127 += 4;
                                    var_a4_87->unk-1 = (u8) var_a0_34->unk-1;
                                } while (arg1 != var_a2_127);
                            }
                        }
                    } else {
                        var_t0_40 = 0;
                        if (arg1 > 0) {
                            var_a0_35 = arg1 & 3;
                            if (var_a0_35 != 0) {
                                do {
                                    var_a5->unk0 = (u8) *var_a7;
                                    temp_v1_5 = *var_a7;
                                    var_t0_40 += 1;
                                    var_a7 += 3;
                                    var_a5->unk1 = temp_v1_5;
                                    var_a5 += 3;
                                    var_a0_35 -= 1;
                                    var_a5->unk-1 = (u8) var_a7->unk-3;
                                } while (var_a0_35 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_128 = var_t0_40;
                                var_a0_36 = var_a5;
                                var_a4_88 = var_a7;
                                do {
                                    var_a0_36->unk0 = (u8) var_a4_88->unk0;
                                    var_a0_36->unk1 = (u8) var_a4_88->unk0;
                                    var_a0_36->unk2 = (u8) var_a4_88->unk0;
                                    var_a0_36->unk3 = (u8) var_a4_88->unk3;
                                    var_a0_36->unk4 = (u8) var_a4_88->unk3;
                                    var_a0_36->unk5 = (u8) var_a4_88->unk3;
                                    var_a0_36->unk6 = (u8) var_a4_88->unk6;
                                    var_a0_36->unk7 = (u8) var_a4_88->unk6;
                                    var_a0_36->unk8 = (u8) var_a4_88->unk6;
                                    var_a0_36->unk9 = (u8) var_a4_88->unk9;
                                    temp_v1_6 = var_a4_88->unk9;
                                    var_a4_88 += 0xC;
                                    var_a0_36->unkA = temp_v1_6;
                                    var_a0_36 += 0xC;
                                    var_a2_128 += 4;
                                    var_a0_36->unk-1 = (u8) var_a4_88->unk-3;
                                } while (arg1 != var_a2_128);
                            }
                        }
                    }
                    break;
                }
            }
            break;
        case 3:                                     /* switch 1 */
            var_a7_13 = arg4;
            if (arg2 >= 0x1909U) {
                if (arg2 >= 0x190AU) {
                    switch (arg2) {                 /* switch 4; irregular */
                    case 0x190A:                    /* switch 4 */
                        var_t0_41 = 0;
                        if (arg1 > 0) {
                            var_a0_37 = arg1 & 3;
                            if (var_a0_37 != 0) {
                                do {
                                    var_t0_41 += 1;
                                    var_a5->unk0 = (s8) ((s32) var_a7_13->unk0 >> 8);
                                    var_a5->unk1 = 0;
                                    var_a5 += 3;
                                    temp_v0 = var_a7_13->unk2;
                                    var_a7_13 += 4;
                                    var_a0_37 -= 1;
                                    var_a5->unk-1 = (s8) ((s32) temp_v0 >> 8);
                                } while (var_a0_37 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a0_38 = var_t0_41;
                                var_a2_129 = var_a5;
                                var_a4_89 = var_a7_13;
                                do {
                                    var_a2_129->unk0 = (s8) ((s32) var_a4_89->unk0 >> 8);
                                    var_a2_129->unk1 = 0;
                                    var_a2_129->unk2 = (s8) ((s32) var_a4_89->unk2 >> 8);
                                    var_a2_129->unk3 = (s8) ((s32) var_a4_89->unk4 >> 8);
                                    var_a2_129->unk4 = 0;
                                    var_a2_129->unk5 = (s8) ((s32) var_a4_89->unk6 >> 8);
                                    var_a2_129->unk6 = (s8) ((s32) var_a4_89->unk8 >> 8);
                                    var_a2_129->unk7 = 0;
                                    var_a2_129->unk8 = (s8) ((s32) var_a4_89->unkA >> 8);
                                    var_a2_129->unk9 = (s8) ((s32) var_a4_89->unkC >> 8);
                                    var_a2_129->unkA = 0;
                                    var_a2_129 += 0xC;
                                    temp_a6_3 = var_a4_89->unkE;
                                    var_a4_89 += 0x10;
                                    var_a0_38 += 4;
                                    var_a2_129->unk-1 = (s8) ((s32) temp_a6_3 >> 8);
                                } while (arg1 != var_a0_38);
                            }
                        }
                        break;
                    default:                        /* switch 4 */
                        var_a7_14 = arg4 + 2;
                        if (arg0 != 0x1909) {
                            var_t0_42 = 0;
                            if (arg1 > 0) {
                                if (arg1 & 1) {
                                    var_a5->unk0 = (s8) ((s32) var_a7_14->unk4 >> 8);
                                    var_a5->unk1 = (s8) ((s32) var_a7_14->unk2 >> 8);
                                    var_t0_42 = 1;
                                    temp_v0_2 = var_a7_14->unk4;
                                    var_a7_14 += 8;
                                    var_a5 += 3;
                                    var_a5->unk-1 = (s8) ((s32) temp_v0_2 >> 8);
                                }
                                if ((arg1 >> 1) != 0) {
                                    var_a0_39 = var_t0_42;
                                    var_a4_90 = var_a5;
                                    var_a2_130 = var_a7_14;
                                    do {
                                        var_a4_90->unk0 = (s8) ((s32) var_a2_130->unk4 >> 8);
                                        var_a4_90->unk1 = (s8) ((s32) var_a2_130->unk2 >> 8);
                                        var_a4_90->unk2 = (s8) ((s32) var_a2_130->unk4 >> 8);
                                        var_a4_90->unk3 = (s8) ((s32) var_a2_130->unkC >> 8);
                                        var_a4_90->unk4 = (s8) ((s32) var_a2_130->unkA >> 8);
                                        var_a2_130 += 0x10;
                                        var_a4_90 += 6;
                                        var_a0_39 += 2;
                                        var_a4_90->unk-1 = (s8) ((s32) var_a2_130->unk-4 >> 8);
                                    } while (arg1 != var_a0_39);
                                }
                            }
                        } else {
                            var_a7_15 = arg4 + 6;
                            var_t0_43 = 0;
                            if (arg1 > 0) {
                                if (arg1 & 1) {
                                    var_a5->unk0 = (s8) ((s32) arg4->unk6 >> 8);
                                    var_a5->unk1 = (s8) ((s32) arg4->unk6 >> 8);
                                    var_t0_43 = 1;
                                    var_a7_15 += 0xA;
                                    var_a5 += 3;
                                    var_a5->unk-1 = (s8) ((s32) arg4->unk6 >> 8);
                                }
                                if ((arg1 >> 1) != 0) {
                                    var_a0_40 = var_t0_43;
                                    var_a2_131 = var_a5;
                                    var_a4_91 = var_a7_15;
                                    do {
                                        var_a2_131->unk0 = (s8) ((s32) var_a4_91->unk0 >> 8);
                                        var_a2_131->unk1 = (s8) ((s32) var_a4_91->unk0 >> 8);
                                        var_a2_131->unk2 = (s8) ((s32) var_a4_91->unk0 >> 8);
                                        var_a2_131->unk3 = (s8) ((s32) var_a4_91->unkA >> 8);
                                        var_a2_131->unk4 = (s8) ((s32) var_a4_91->unkA >> 8);
                                        var_a4_91 += 0x14;
                                        var_a2_131 += 6;
                                        var_a0_40 += 2;
                                        var_a2_131->unk-1 = (s8) ((s32) var_a4_91->unk-A >> 8);
                                    } while (arg1 != var_a0_40);
                                }
                            }
                        }
                        break;
                    }
                } else {
                case 0x8049:                        /* switch 4 */
                    var_t0_44 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            var_a5->unk0 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                            var_a5->unk1 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                            var_t0_44 = 1;
                            temp_a3_3 = (u16) var_a7_13->unk0;
                            var_a5 += 3;
                            var_a7_13 += 2;
                            var_a5->unk-1 = (s8) ((s32) temp_a3_3 >> 8);
                        }
                        if ((arg1 >> 1) != 0) {
                            var_a2_132 = var_t0_44;
                            var_a0_41 = var_a5;
                            var_a4_92 = var_a7_13;
                            do {
                                var_a0_41->unk0 = (s8) ((s32) var_a4_92->unk0 >> 8);
                                var_a0_41->unk1 = (s8) ((s32) var_a4_92->unk0 >> 8);
                                var_a0_41->unk2 = (s8) ((s32) var_a4_92->unk0 >> 8);
                                var_a0_41->unk3 = (s8) ((s32) var_a4_92->unk2 >> 8);
                                var_a0_41->unk4 = (s8) ((s32) var_a4_92->unk2 >> 8);
                                var_a0_41 += 6;
                                temp_a3_4 = var_a4_92->unk2;
                                var_a4_92 += 4;
                                var_a2_132 += 2;
                                var_a0_41->unk-1 = (s8) ((s32) temp_a3_4 >> 8);
                            } while (arg1 != var_a2_132);
                        }
                    }
                }
            } else {
                switch (arg2) {                     /* switch 10; irregular */
                case 0x1908:                        /* switch 10 */
                    if (arg0 != 0x1909) {
                        var_t0_45 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                                var_a5->unk1 = (s8) ((s32) (u16) var_a7_13->unk2 >> 8);
                                var_t0_45 = 1;
                                temp_a3_5 = var_a7_13->unk4;
                                var_a7_13 += 8;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) ((s32) temp_a3_5 >> 8);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a4_93 = var_t0_45;
                                var_a0_42 = var_a5;
                                var_a2_133 = var_a7_13;
                                do {
                                    var_a0_42->unk0 = (s8) ((s32) var_a2_133->unk0 >> 8);
                                    var_a0_42->unk1 = (s8) ((s32) var_a2_133->unk2 >> 8);
                                    var_a0_42->unk2 = (s8) ((s32) var_a2_133->unk4 >> 8);
                                    var_a0_42->unk3 = (s8) ((s32) var_a2_133->unk8 >> 8);
                                    var_a0_42->unk4 = (s8) ((s32) var_a2_133->unkA >> 8);
                                    var_a2_133 += 0x10;
                                    var_a0_42 += 6;
                                    var_a4_93 += 2;
                                    var_a0_42->unk-1 = (s8) ((s32) var_a2_133->unk-4 >> 8);
                                } while (arg1 != var_a4_93);
                            }
                        }
                    } else {
                        var_t0_46 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                                var_a5->unk1 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                                var_t0_46 = 1;
                                temp_v1_7 = (u16) var_a7_13->unk0;
                                var_a7_13 += 8;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) ((s32) temp_v1_7 >> 8);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a0_43 = var_t0_46;
                                var_a2_134 = var_a5;
                                var_a4_94 = var_a7_13;
                                do {
                                    var_a2_134->unk0 = (s8) ((s32) var_a4_94->unk0 >> 8);
                                    var_a2_134->unk1 = (s8) ((s32) var_a4_94->unk0 >> 8);
                                    var_a2_134->unk2 = (s8) ((s32) var_a4_94->unk0 >> 8);
                                    var_a2_134->unk3 = (s8) ((s32) var_a4_94->unk8 >> 8);
                                    var_a2_134->unk4 = (s8) ((s32) var_a4_94->unk8 >> 8);
                                    var_a4_94 += 0x10;
                                    var_a2_134 += 6;
                                    var_a0_43 += 2;
                                    var_a2_134->unk-1 = (s8) ((s32) var_a4_94->unk-8 >> 8);
                                } while (arg1 != var_a0_43);
                            }
                        }
                    }
                    break;
                case 0x1906:                        /* switch 10 */
                    if (arg0 != 0x1906) {
                        var_t0_47 = 0;
                        if (arg1 > 0) {
                            var_a2_135 = arg1 & 3;
                            if (var_a2_135 != 0) {
                                do {
                                    var_t0_47 += 1;
                                    var_a5 += 3;
                                    var_a2_135 -= 1;
                                    var_a5->unk-3 = 1;
                                    var_a5->unk-2 = 1;
                                    var_a5->unk-1 = 1;
                                } while (var_a2_135 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_136 = var_t0_47;
                                var_a4_95 = var_a5;
                                do {
                                    var_a4_95 += 0xC;
                                    var_a2_136 += 4;
                                    var_a4_95->unk-C = 1;
                                    var_a4_95->unk-B = 1;
                                    var_a4_95->unk-A = 1;
                                    var_a4_95->unk-9 = 1;
                                    var_a4_95->unk-8 = 1;
                                    var_a4_95->unk-7 = 1;
                                    var_a4_95->unk-6 = 1;
                                    var_a4_95->unk-5 = 1;
                                    var_a4_95->unk-4 = 1;
                                    var_a4_95->unk-3 = 1;
                                    var_a4_95->unk-2 = 1;
                                    var_a4_95->unk-1 = 1;
                                } while (arg1 != var_a2_136);
                            }
                        }
                    } else {
                        var_t0_48 = 0;
                        if (arg1 > 0) {
                            var_a0_44 = arg1 & 3;
                            if (var_a0_44 != 0) {
                                do {
                                    var_t0_48 += 1;
                                    var_a5->unk0 = 0;
                                    var_a5->unk1 = 0;
                                    var_a5 += 3;
                                    temp_a3_6 = *var_a7_13;
                                    var_a7_13 += 2;
                                    var_a0_44 -= 1;
                                    var_a5->unk-1 = (s8) ((s32) temp_a3_6 >> 8);
                                } while (var_a0_44 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a0_45 = var_t0_48;
                                var_a4_96 = var_a7_13;
                                var_a2_137 = var_a5;
                                do {
                                    var_a2_137->unk0 = 0;
                                    var_a2_137->unk1 = 0;
                                    var_a2_137->unk2 = (s8) ((s32) var_a4_96->unk0 >> 8);
                                    var_a2_137->unk3 = 0;
                                    var_a2_137->unk4 = 0;
                                    var_a2_137->unk5 = (s8) ((s32) var_a4_96->unk2 >> 8);
                                    var_a2_137->unk6 = 0;
                                    var_a2_137->unk7 = 0;
                                    var_a2_137->unk8 = (s8) ((s32) var_a4_96->unk4 >> 8);
                                    var_a2_137->unk9 = 0;
                                    var_a2_137->unkA = 0;
                                    var_a2_137 += 0xC;
                                    temp_v0_3 = var_a4_96->unk6;
                                    var_a4_96 += 8;
                                    var_a0_45 += 4;
                                    var_a2_137->unk-1 = (s8) ((s32) temp_v0_3 >> 8);
                                } while (arg1 != var_a0_45);
                            }
                        }
                    }
                    break;
                default:                            /* switch 10 */
                    if (arg0 != 0x1909) {
                        var_t0_49 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                                var_a5->unk1 = (s8) ((s32) (u16) var_a7_13->unk2 >> 8);
                                var_t0_49 = 1;
                                temp_v1_8 = var_a7_13->unk4;
                                var_a5 += 3;
                                var_a7_13 += 6;
                                var_a5->unk-1 = (s8) ((s32) temp_v1_8 >> 8);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a4_97 = var_t0_49;
                                var_a2_138 = var_a5;
                                var_a0_46 = var_a7_13;
                                do {
                                    var_a2_138->unk0 = (s8) ((s32) var_a0_46->unk0 >> 8);
                                    var_a2_138->unk1 = (s8) ((s32) var_a0_46->unk2 >> 8);
                                    var_a2_138->unk2 = (s8) ((s32) var_a0_46->unk4 >> 8);
                                    var_a2_138->unk3 = (s8) ((s32) var_a0_46->unk6 >> 8);
                                    var_a2_138->unk4 = (s8) ((s32) var_a0_46->unk8 >> 8);
                                    var_a2_138 += 6;
                                    temp_v1_9 = var_a0_46->unkA;
                                    var_a0_46 += 0xC;
                                    var_a4_97 += 2;
                                    var_a2_138->unk-1 = (s8) ((s32) temp_v1_9 >> 8);
                                } while (arg1 != var_a4_97);
                            }
                        }
                    } else {
                        var_t0_50 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                                var_a5->unk1 = (s8) ((s32) (u16) var_a7_13->unk0 >> 8);
                                var_t0_50 = 1;
                                temp_v1_10 = (u16) var_a7_13->unk0;
                                var_a7_13 += 6;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) ((s32) temp_v1_10 >> 8);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a0_47 = var_t0_50;
                                var_a4_98 = var_a5;
                                var_a2_139 = var_a7_13;
                                do {
                                    var_a4_98->unk0 = (s8) ((s32) var_a2_139->unk0 >> 8);
                                    var_a4_98->unk1 = (s8) ((s32) var_a2_139->unk0 >> 8);
                                    var_a4_98->unk2 = (s8) ((s32) var_a2_139->unk0 >> 8);
                                    var_a4_98->unk3 = (s8) ((s32) var_a2_139->unk6 >> 8);
                                    var_a4_98->unk4 = (s8) ((s32) var_a2_139->unk6 >> 8);
                                    var_a2_139 += 0xC;
                                    var_a4_98 += 6;
                                    var_a0_47 += 2;
                                    var_a4_98->unk-1 = (s8) ((s32) var_a2_139->unk-6 >> 8);
                                } while (arg1 != var_a0_47);
                            }
                        }
                    }
                    break;
                }
            }
            break;
        case 5:                                     /* switch 1 */
            var_a7_16 = arg4;
            if (arg2 >= 0x1909U) {
                if (arg2 >= 0x190AU) {
                    switch (arg2) {                 /* switch 5; irregular */
                    case 0x190A:                    /* switch 5 */
                        var_t0_51 = 0;
                        if (arg1 > 0) {
                            var_a0_48 = arg1 & 3;
                            if (var_a0_48 != 0) {
                                do {
                                    var_t0_51 += 1;
                                    var_a5->unk0 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                                    var_a5->unk1 = 0;
                                    var_a5 += 3;
                                    temp_v0_4 = var_a7_16->unk4;
                                    var_a7_16 += 8;
                                    var_a0_48 -= 1;
                                    var_a5->unk-1 = (s8) (temp_v0_4 >> 0x18);
                                } while (var_a0_48 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a0_49 = var_t0_51;
                                var_a2_140 = var_a5;
                                var_a4_99 = var_a7_16;
                                do {
                                    var_a2_140->unk0 = (s8) ((u32) var_a4_99->unk0 >> 0x18);
                                    var_a2_140->unk1 = 0;
                                    var_a2_140->unk2 = (s8) ((u32) var_a4_99->unk4 >> 0x18);
                                    var_a2_140->unk3 = (s8) ((u32) var_a4_99->unk8 >> 0x18);
                                    var_a2_140->unk4 = 0;
                                    var_a2_140->unk5 = (s8) ((u32) var_a4_99->unkC >> 0x18);
                                    var_a2_140->unk6 = (s8) ((u32) var_a4_99->unk10 >> 0x18);
                                    var_a2_140->unk7 = 0;
                                    var_a2_140->unk8 = (s8) ((u32) var_a4_99->unk14 >> 0x18);
                                    var_a2_140->unk9 = (s8) ((u32) var_a4_99->unk18 >> 0x18);
                                    var_a2_140->unkA = 0;
                                    var_a2_140 += 0xC;
                                    temp_a6_4 = var_a4_99->unk1C;
                                    var_a4_99 += 0x20;
                                    var_a0_49 += 4;
                                    var_a2_140->unk-1 = (s8) (temp_a6_4 >> 0x18);
                                } while (arg1 != var_a0_49);
                            }
                        }
                        break;
                    default:                        /* switch 5 */
                        var_a7_17 = arg4 + 4;
                        if (arg0 != 0x1909) {
                            var_t0_52 = 0;
                            if (arg1 > 0) {
                                if (arg1 & 1) {
                                    var_a5->unk0 = (s8) ((u32) var_a7_17->unk8 >> 0x18);
                                    var_a5->unk1 = (s8) ((u32) var_a7_17->unk4 >> 0x18);
                                    var_t0_52 = 1;
                                    temp_v0_5 = var_a7_17->unk8;
                                    var_a7_17 += 0x10;
                                    var_a5 += 3;
                                    var_a5->unk-1 = (s8) (temp_v0_5 >> 0x18);
                                }
                                if ((arg1 >> 1) != 0) {
                                    var_a0_50 = var_t0_52;
                                    var_a2_141 = var_a5;
                                    var_a4_100 = var_a7_17;
                                    do {
                                        var_a2_141->unk0 = (s8) ((u32) var_a4_100->unk8 >> 0x18);
                                        var_a2_141->unk1 = (s8) ((u32) var_a4_100->unk4 >> 0x18);
                                        var_a2_141->unk2 = (s8) ((u32) var_a4_100->unk8 >> 0x18);
                                        var_a2_141->unk3 = (s8) ((u32) var_a4_100->unk18 >> 0x18);
                                        var_a2_141->unk4 = (s8) ((u32) var_a4_100->unk14 >> 0x18);
                                        var_a4_100 += 0x20;
                                        var_a2_141 += 6;
                                        var_a0_50 += 2;
                                        var_a2_141->unk-1 = (s8) ((u32) var_a4_100->unk-8 >> 0x18);
                                    } while (arg1 != var_a0_50);
                                }
                            }
                        } else {
                            var_a7_18 = arg4 + 0xC;
                            var_t0_53 = 0;
                            if (arg1 > 0) {
                                if (arg1 & 1) {
                                    var_a5->unk0 = (s8) ((u32) arg4->unkC >> 0x18);
                                    var_a5->unk1 = (s8) ((u32) arg4->unkC >> 0x18);
                                    var_t0_53 = 1;
                                    var_a7_18 += 0x14;
                                    var_a5 += 3;
                                    var_a5->unk-1 = (s8) ((u32) arg4->unkC >> 0x18);
                                }
                                if ((arg1 >> 1) != 0) {
                                    var_a4_101 = var_t0_53;
                                    var_a2_142 = var_a5;
                                    var_a0_51 = var_a7_18;
                                    do {
                                        var_a2_142->unk0 = (s8) ((u32) var_a0_51->unk0 >> 0x18);
                                        var_a2_142->unk1 = (s8) ((u32) var_a0_51->unk0 >> 0x18);
                                        var_a2_142->unk2 = (s8) ((u32) var_a0_51->unk0 >> 0x18);
                                        var_a2_142->unk3 = (s8) ((u32) var_a0_51->unk14 >> 0x18);
                                        var_a2_142->unk4 = (s8) ((u32) var_a0_51->unk14 >> 0x18);
                                        var_a0_51 += 0x28;
                                        var_a2_142 += 6;
                                        var_a4_101 += 2;
                                        var_a2_142->unk-1 = (s8) ((u32) var_a0_51->unk-14 >> 0x18);
                                    } while (arg1 != var_a4_101);
                                }
                            }
                        }
                        break;
                    }
                } else {
                case 0x8049:                        /* switch 5 */
                    var_t0_54 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            var_a5->unk0 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                            var_a5->unk1 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                            var_t0_54 = 1;
                            temp_a3_7 = (u32) var_a7_16->unk0;
                            var_a5 += 3;
                            var_a7_16 += 4;
                            var_a5->unk-1 = (s8) (temp_a3_7 >> 0x18);
                        }
                        if ((arg1 >> 1) != 0) {
                            var_a2_143 = var_t0_54;
                            var_a4_102 = var_a5;
                            var_a0_52 = var_a7_16;
                            do {
                                var_a4_102->unk0 = (s8) ((u32) var_a0_52->unk0 >> 0x18);
                                var_a4_102->unk1 = (s8) ((u32) var_a0_52->unk0 >> 0x18);
                                var_a4_102->unk2 = (s8) ((u32) var_a0_52->unk0 >> 0x18);
                                var_a4_102->unk3 = (s8) ((u32) var_a0_52->unk4 >> 0x18);
                                var_a4_102->unk4 = (s8) ((u32) var_a0_52->unk4 >> 0x18);
                                var_a4_102 += 6;
                                temp_a3_8 = var_a0_52->unk4;
                                var_a0_52 += 8;
                                var_a2_143 += 2;
                                var_a4_102->unk-1 = (s8) (temp_a3_8 >> 0x18);
                            } while (arg1 != var_a2_143);
                        }
                    }
                }
            } else {
                switch (arg2) {                     /* switch 11; irregular */
                case 0x1908:                        /* switch 11 */
                    if (arg0 != 0x1909) {
                        var_t0_55 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                                var_a5->unk1 = (s8) ((u32) var_a7_16->unk4 >> 0x18);
                                var_t0_55 = 1;
                                temp_v1_11 = var_a7_16->unk8;
                                var_a7_16 += 0x10;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) (temp_v1_11 >> 0x18);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a2_144 = var_t0_55;
                                var_a0_53 = var_a5;
                                var_a4_103 = var_a7_16;
                                do {
                                    var_a0_53->unk0 = (s8) ((u32) var_a4_103->unk0 >> 0x18);
                                    var_a0_53->unk1 = (s8) ((u32) var_a4_103->unk4 >> 0x18);
                                    var_a0_53->unk2 = (s8) ((u32) var_a4_103->unk8 >> 0x18);
                                    var_a0_53->unk3 = (s8) ((u32) var_a4_103->unk10 >> 0x18);
                                    var_a0_53->unk4 = (s8) ((u32) var_a4_103->unk14 >> 0x18);
                                    var_a4_103 += 0x20;
                                    var_a0_53 += 6;
                                    var_a2_144 += 2;
                                    var_a0_53->unk-1 = (s8) ((u32) var_a4_103->unk-8 >> 0x18);
                                } while (arg1 != var_a2_144);
                            }
                        }
                    } else {
                        var_t0_56 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                                var_a5->unk1 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                                var_t0_56 = 1;
                                temp_v0_6 = (u32) var_a7_16->unk0;
                                var_a7_16 += 0x10;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) (temp_v0_6 >> 0x18);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a0_54 = var_t0_56;
                                var_a2_145 = var_a5;
                                var_a4_104 = var_a7_16;
                                do {
                                    var_a2_145->unk0 = (s8) ((u32) var_a4_104->unk0 >> 0x18);
                                    var_a2_145->unk1 = (s8) ((u32) var_a4_104->unk0 >> 0x18);
                                    var_a2_145->unk2 = (s8) ((u32) var_a4_104->unk0 >> 0x18);
                                    var_a2_145->unk3 = (s8) ((u32) var_a4_104->unk10 >> 0x18);
                                    var_a2_145->unk4 = (s8) ((u32) var_a4_104->unk10 >> 0x18);
                                    var_a4_104 += 0x20;
                                    var_a2_145 += 6;
                                    var_a0_54 += 2;
                                    var_a2_145->unk-1 = (s8) ((u32) var_a4_104->unk-10 >> 0x18);
                                } while (arg1 != var_a0_54);
                            }
                        }
                    }
                    break;
                default:                            /* switch 11 */
                    if (arg0 != 0x1909) {
                        var_t0_57 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                                var_a5->unk1 = (s8) ((u32) var_a7_16->unk4 >> 0x18);
                                var_t0_57 = 1;
                                temp_v1_12 = var_a7_16->unk8;
                                var_a5 += 3;
                                var_a7_16 += 0xC;
                                var_a5->unk-1 = (s8) (temp_v1_12 >> 0x18);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a0_55 = var_t0_57;
                                var_a2_146 = var_a5;
                                var_a4_105 = var_a7_16;
                                do {
                                    var_a2_146->unk0 = (s8) ((u32) var_a4_105->unk0 >> 0x18);
                                    var_a2_146->unk1 = (s8) ((u32) var_a4_105->unk4 >> 0x18);
                                    var_a2_146->unk2 = (s8) ((u32) var_a4_105->unk8 >> 0x18);
                                    var_a2_146->unk3 = (s8) ((u32) var_a4_105->unkC >> 0x18);
                                    var_a2_146->unk4 = (s8) ((u32) var_a4_105->unk10 >> 0x18);
                                    var_a2_146 += 6;
                                    temp_v1_13 = var_a4_105->unk14;
                                    var_a4_105 += 0x18;
                                    var_a0_55 += 2;
                                    var_a2_146->unk-1 = (s8) (temp_v1_13 >> 0x18);
                                } while (arg1 != var_a0_55);
                            }
                        }
                    } else {
                        var_t0_58 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                                var_a5->unk1 = (s8) ((u32) var_a7_16->unk0 >> 0x18);
                                var_t0_58 = 1;
                                temp_v0_7 = (u32) var_a7_16->unk0;
                                var_a7_16 += 0xC;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) (temp_v0_7 >> 0x18);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a2_147 = var_t0_58;
                                var_a0_56 = var_a5;
                                var_a4_106 = var_a7_16;
                                do {
                                    var_a0_56->unk0 = (s8) ((u32) var_a4_106->unk0 >> 0x18);
                                    var_a0_56->unk1 = (s8) ((u32) var_a4_106->unk0 >> 0x18);
                                    var_a0_56->unk2 = (s8) ((u32) var_a4_106->unk0 >> 0x18);
                                    var_a0_56->unk3 = (s8) ((u32) var_a4_106->unkC >> 0x18);
                                    var_a0_56->unk4 = (s8) ((u32) var_a4_106->unkC >> 0x18);
                                    var_a4_106 += 0x18;
                                    var_a0_56 += 6;
                                    var_a2_147 += 2;
                                    var_a0_56->unk-1 = (s8) ((u32) var_a4_106->unk-C >> 0x18);
                                } while (arg1 != var_a2_147);
                            }
                        }
                    }
                    break;
                case 0x1906:                        /* switch 11 */
                    if (arg0 != 0x1906) {
                        var_t0_59 = 0;
                        if (arg1 > 0) {
                            var_a2_148 = arg1 & 3;
                            if (var_a2_148 != 0) {
                                do {
                                    var_t0_59 += 1;
                                    var_a5 += 3;
                                    var_a2_148 -= 1;
                                    var_a5->unk-3 = 1;
                                    var_a5->unk-2 = 1;
                                    var_a5->unk-1 = 1;
                                } while (var_a2_148 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a4_107 = var_t0_59;
                                var_a2_149 = var_a5;
                                do {
                                    var_a2_149 += 0xC;
                                    var_a4_107 += 4;
                                    var_a2_149->unk-C = 1;
                                    var_a2_149->unk-B = 1;
                                    var_a2_149->unk-A = 1;
                                    var_a2_149->unk-9 = 1;
                                    var_a2_149->unk-8 = 1;
                                    var_a2_149->unk-7 = 1;
                                    var_a2_149->unk-6 = 1;
                                    var_a2_149->unk-5 = 1;
                                    var_a2_149->unk-4 = 1;
                                    var_a2_149->unk-3 = 1;
                                    var_a2_149->unk-2 = 1;
                                    var_a2_149->unk-1 = 1;
                                } while (arg1 != var_a4_107);
                            }
                        }
                    } else {
                        var_t0_60 = 0;
                        if (arg1 > 0) {
                            var_a0_57 = arg1 & 3;
                            if (var_a0_57 != 0) {
                                do {
                                    var_t0_60 += 1;
                                    var_a5->unk0 = 0;
                                    var_a5->unk1 = 0;
                                    var_a5 += 3;
                                    temp_v0_8 = *var_a7_16;
                                    var_a7_16 += 4;
                                    var_a0_57 -= 1;
                                    var_a5->unk-1 = (s8) (temp_v0_8 >> 0x18);
                                } while (var_a0_57 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a0_58 = var_t0_60;
                                var_a4_108 = var_a7_16;
                                var_a2_150 = var_a5;
                                do {
                                    var_a2_150->unk0 = 0;
                                    var_a2_150->unk1 = 0;
                                    var_a2_150->unk2 = (s8) ((u32) var_a4_108->unk0 >> 0x18);
                                    var_a2_150->unk3 = 0;
                                    var_a2_150->unk4 = 0;
                                    var_a2_150->unk5 = (s8) ((u32) var_a4_108->unk4 >> 0x18);
                                    var_a2_150->unk6 = 0;
                                    var_a2_150->unk7 = 0;
                                    var_a2_150->unk8 = (s8) ((u32) var_a4_108->unk8 >> 0x18);
                                    var_a2_150->unk9 = 0;
                                    var_a2_150->unkA = 0;
                                    var_a2_150 += 0xC;
                                    temp_a3_9 = var_a4_108->unkC;
                                    var_a4_108 += 0x10;
                                    var_a0_58 += 4;
                                    var_a2_150->unk-1 = (s8) (temp_a3_9 >> 0x18);
                                } while (arg1 != var_a0_58);
                            }
                        }
                    }
                    break;
                }
            }
            break;
        case 6:                                     /* switch 1 */
            var_a7_19 = arg4;
            if (arg2 >= 0x1909U) {
                if (arg2 < 0x190AU) {
                    goto block_88;
                }
                switch (arg2) {                     /* switch 15; irregular */
                default:                            /* switch 15 */
                    var_a7_20 = arg4 + 4;
                    if (arg0 != 0x1909) {
                        var_t0_61 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) (s32) ((f64) var_a7_20->unk8 * 255.9999);
                                var_a5->unk1 = (s8) (s32) ((f64) var_a7_20->unk4 * 255.9999);
                                var_t0_61 = 1;
                                var_a7_20 += 0x10;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) (s32) ((f64) (bitwise f32) arg4->unk4 * 255.9999);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a4_109 = var_t0_61;
                                var_a0_59 = var_a5;
                                var_a2_151 = var_a7_20;
                                do {
                                    var_a0_59->unk0 = (s8) (s32) ((f64) var_a2_151->unk8 * 255.9999);
                                    var_a0_59->unk1 = (s8) (s32) ((f64) var_a2_151->unk4 * 255.9999);
                                    var_a0_59->unk2 = (s8) (s32) ((f64) var_a2_151->unk0 * 255.9999);
                                    var_a0_59->unk3 = (s8) (s32) ((f64) var_a2_151->unk18 * 255.9999);
                                    var_a0_59->unk4 = (s8) (s32) ((f64) var_a2_151->unk14 * 255.9999);
                                    temp_f1 = (s32) ((f64) var_a2_151->unk10 * 255.9999);
                                    var_a2_151 += 0x20;
                                    var_a0_59 += 6;
                                    var_a4_109 += 2;
                                    var_a0_59->unk-1 = (s8) temp_f1;
                                } while (arg1 != var_a4_109);
                            }
                        }
                    } else {
                        var_a7_21 = arg4 + 0xC;
                        var_t0_62 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) (s32) ((f64) arg4->unkC * 255.9999);
                                var_a5->unk1 = (s8) (s32) ((f64) arg4->unkC * 255.9999);
                                var_t0_62 = 1;
                                var_a7_21 += 0x10;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) (s32) ((f64) arg4->unkC * 255.9999);
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a0_60 = var_t0_62;
                                var_a4_110 = var_a5;
                                var_a2_152 = var_a7_21;
                                do {
                                    var_a4_110->unk0 = (s8) (s32) ((f64) var_a2_152->unk0 * 255.9999);
                                    var_a4_110->unk1 = (s8) (s32) ((f64) var_a2_152->unk0 * 255.9999);
                                    var_a4_110->unk2 = (s8) (s32) ((f64) var_a2_152->unk0 * 255.9999);
                                    var_a4_110->unk3 = (s8) (s32) ((f64) var_a2_152->unk10 * 255.9999);
                                    var_a4_110->unk4 = (s8) (s32) ((f64) var_a2_152->unk10 * 255.9999);
                                    temp_f3 = (s32) ((f64) var_a2_152->unk10 * 255.9999);
                                    var_a2_152 += 0x20;
                                    var_a4_110 += 6;
                                    var_a0_60 += 2;
                                    var_a4_110->unk-1 = (s8) temp_f3;
                                } while (arg1 != var_a0_60);
                            }
                        }
                    }
                    break;
                case 0x190A:                        /* switch 15 */
                    var_t0_63 = 0;
                    if (arg1 > 0) {
                        var_a0_61 = arg1 & 3;
                        if (var_a0_61 != 0) {
                            do {
                                var_a5->unk0 = (s8) (s32) ((f64) var_a7_19->unk0 * 255.9999);
                                var_a5->unk1 = 0;
                                temp_f0 = (s32) ((f64) var_a7_19->unk4 * 255.9999);
                                var_t0_63 += 1;
                                var_a5 += 3;
                                var_a7_19 += 8;
                                var_a0_61 -= 1;
                                var_a5->unk-1 = (s8) temp_f0;
                            } while (var_a0_61 != 0);
                        }
                        if ((arg1 >> 2) != 0) {
                            var_a0_62 = var_t0_63;
                            var_a2_153 = var_a5;
                            var_a4_111 = var_a7_19;
                            do {
                                var_a2_153->unk0 = (s8) (s32) ((f64) var_a4_111->unk0 * 255.9999);
                                var_a2_153->unk1 = 0;
                                var_a2_153->unk2 = (s8) (s32) ((f64) var_a4_111->unk4 * 255.9999);
                                var_a2_153->unk3 = (s8) (s32) ((f64) var_a4_111->unk8 * 255.9999);
                                var_a2_153->unk4 = 0;
                                var_a2_153->unk5 = (s8) (s32) ((f64) var_a4_111->unkC * 255.9999);
                                var_a2_153->unk6 = (s8) (s32) ((f64) var_a4_111->unk10 * 255.9999);
                                var_a2_153->unk7 = 0;
                                var_a2_153->unk8 = (s8) (s32) ((f64) var_a4_111->unk14 * 255.9999);
                                var_a2_153->unk9 = (s8) (s32) ((f64) var_a4_111->unk18 * 255.9999);
                                var_a2_153->unkA = 0;
                                temp_f2 = (s32) ((f64) var_a4_111->unk1C * 255.9999);
                                var_a2_153 += 0xC;
                                var_a4_111 += 0x20;
                                var_a0_62 += 4;
                                var_a2_153->unk-1 = (s8) temp_f2;
                            } while (arg1 != var_a0_62);
                        }
                    }
                    break;
                case 0x8049:                        /* switch 15 */
block_88:
                    var_t0_64 = 0;
                    if (arg1 > 0) {
                        if (arg1 & 1) {
                            var_a5->unk0 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                            var_a5->unk1 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                            var_t0_64 = 1;
                            temp_a6_5 = (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                            var_a5 += 3;
                            var_a7_19 += 4;
                            var_a5->unk-1 = (s8) temp_a6_5;
                        }
                        if ((arg1 >> 1) != 0) {
                            var_a2_154 = var_t0_64;
                            var_a4_112 = var_a5;
                            var_a0_63 = var_a7_19;
                            do {
                                var_a4_112->unk0 = (s8) (s32) ((f64) var_a0_63->unk0 * 255.9999);
                                var_a4_112->unk1 = (s8) (s32) ((f64) var_a0_63->unk0 * 255.9999);
                                var_a4_112->unk2 = (s8) (s32) ((f64) var_a0_63->unk0 * 255.9999);
                                var_a4_112->unk3 = (s8) (s32) ((f64) var_a0_63->unk4 * 255.9999);
                                var_a4_112->unk4 = (s8) (s32) ((f64) var_a0_63->unk4 * 255.9999);
                                temp_f3_2 = (s32) ((f64) var_a0_63->unk4 * 255.9999);
                                var_a4_112 += 6;
                                var_a0_63 += 8;
                                var_a2_154 += 2;
                                var_a4_112->unk-1 = (s8) temp_f3_2;
                            } while (arg1 != var_a2_154);
                        }
                    }
                    break;
                }
            } else {
                switch (arg2) {                     /* switch 12; irregular */
                default:                            /* switch 12 */
                    if (arg0 != 0x1909) {
                        var_t0_65 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_a5->unk1 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk4 * 255.9999);
                                var_t0_65 = 1;
                                temp_a6_6 = (s32) ((f64) var_a7_19->unk8 * 255.9999);
                                var_a5 += 3;
                                var_a7_19 += 0xC;
                                var_a5->unk-1 = (s8) temp_a6_6;
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a4_113 = var_t0_65;
                                var_a0_64 = var_a5;
                                var_a2_155 = var_a7_19;
                                do {
                                    var_a0_64->unk0 = (s8) (s32) ((f64) var_a2_155->unk0 * 255.9999);
                                    var_a0_64->unk1 = (s8) (s32) ((f64) var_a2_155->unk4 * 255.9999);
                                    var_a0_64->unk2 = (s8) (s32) ((f64) var_a2_155->unk8 * 255.9999);
                                    var_a0_64->unk3 = (s8) (s32) ((f64) var_a2_155->unkC * 255.9999);
                                    var_a0_64->unk4 = (s8) (s32) ((f64) var_a2_155->unk10 * 255.9999);
                                    temp_f0_2 = (s32) ((f64) var_a2_155->unk14 * 255.9999);
                                    var_a0_64 += 6;
                                    var_a2_155 += 0x18;
                                    var_a4_113 += 2;
                                    var_a0_64->unk-1 = (s8) temp_f0_2;
                                } while (arg1 != var_a4_113);
                            }
                        }
                    } else {
                        var_t0_66 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_a5->unk1 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_t0_66 = 1;
                                temp_a6_7 = (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_a7_19 += 0xC;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) temp_a6_7;
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a0_65 = var_t0_66;
                                var_a2_156 = var_a5;
                                var_a4_114 = var_a7_19;
                                do {
                                    var_a2_156->unk0 = (s8) (s32) ((f64) var_a4_114->unk0 * 255.9999);
                                    var_a2_156->unk1 = (s8) (s32) ((f64) var_a4_114->unk0 * 255.9999);
                                    var_a2_156->unk2 = (s8) (s32) ((f64) var_a4_114->unk0 * 255.9999);
                                    var_a2_156->unk3 = (s8) (s32) ((f64) var_a4_114->unkC * 255.9999);
                                    var_a2_156->unk4 = (s8) (s32) ((f64) var_a4_114->unkC * 255.9999);
                                    temp_f1_2 = (s32) ((f64) var_a4_114->unkC * 255.9999);
                                    var_a4_114 += 0x18;
                                    var_a2_156 += 6;
                                    var_a0_65 += 2;
                                    var_a2_156->unk-1 = (s8) temp_f1_2;
                                } while (arg1 != var_a0_65);
                            }
                        }
                    }
                    break;
                case 0x1906:                        /* switch 12 */
                    if (arg0 != 0x1906) {
                        var_t0_67 = 0;
                        if (arg1 > 0) {
                            var_a2_157 = arg1 & 3;
                            if (var_a2_157 != 0) {
                                do {
                                    var_t0_67 += 1;
                                    var_a5 += 3;
                                    var_a2_157 -= 1;
                                    var_a5->unk-3 = 1;
                                    var_a5->unk-2 = 1;
                                    var_a5->unk-1 = 1;
                                } while (var_a2_157 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a2_158 = var_t0_67;
                                var_a4_115 = var_a5;
                                do {
                                    var_a4_115 += 0xC;
                                    var_a2_158 += 4;
                                    var_a4_115->unk-C = 1;
                                    var_a4_115->unk-B = 1;
                                    var_a4_115->unk-A = 1;
                                    var_a4_115->unk-9 = 1;
                                    var_a4_115->unk-8 = 1;
                                    var_a4_115->unk-7 = 1;
                                    var_a4_115->unk-6 = 1;
                                    var_a4_115->unk-5 = 1;
                                    var_a4_115->unk-4 = 1;
                                    var_a4_115->unk-3 = 1;
                                    var_a4_115->unk-2 = 1;
                                    var_a4_115->unk-1 = 1;
                                } while (arg1 != var_a2_158);
                            }
                        }
                    } else {
                        var_t0_68 = 0;
                        if (arg1 > 0) {
                            var_a0_66 = arg1 & 3;
                            if (var_a0_66 != 0) {
                                do {
                                    var_a5->unk0 = 0;
                                    var_a5->unk1 = 0;
                                    temp_f3_3 = (s32) ((f64) *var_a7_19 * 255.9999);
                                    var_t0_68 += 1;
                                    var_a5 += 3;
                                    var_a7_19 += 4;
                                    var_a0_66 -= 1;
                                    var_a5->unk-1 = (s8) temp_f3_3;
                                } while (var_a0_66 != 0);
                            }
                            if ((arg1 >> 2) != 0) {
                                var_a4_116 = var_t0_68;
                                var_a2_159 = var_a7_19;
                                var_a0_67 = var_a5;
                                do {
                                    var_a0_67->unk0 = 0;
                                    var_a0_67->unk1 = 0;
                                    var_a0_67->unk2 = (s8) (s32) ((f64) var_a2_159->unk0 * 255.9999);
                                    var_a0_67->unk3 = 0;
                                    var_a0_67->unk4 = 0;
                                    var_a0_67->unk5 = (s8) (s32) ((f64) var_a2_159->unk4 * 255.9999);
                                    var_a0_67->unk6 = 0;
                                    var_a0_67->unk7 = 0;
                                    var_a0_67->unk8 = (s8) (s32) ((f64) var_a2_159->unk8 * 255.9999);
                                    var_a0_67->unk9 = 0;
                                    var_a0_67->unkA = 0;
                                    temp_f0_3 = (s32) ((f64) var_a2_159->unkC * 255.9999);
                                    var_a0_67 += 0xC;
                                    var_a2_159 += 0x10;
                                    var_a4_116 += 4;
                                    var_a0_67->unk-1 = (s8) temp_f0_3;
                                } while (arg1 != var_a4_116);
                            }
                        }
                    }
                    break;
                case 0x1908:                        /* switch 12 */
                    if (arg0 != 0x1909) {
                        var_t0_69 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_a5->unk1 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk4 * 255.9999);
                                var_t0_69 = 1;
                                temp_a3_10 = (s32) ((f64) var_a7_19->unk8 * 255.9999);
                                var_a7_19 += 0x10;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) temp_a3_10;
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a4_117 = var_t0_69;
                                var_a2_160 = var_a5;
                                var_a0_68 = var_a7_19;
                                do {
                                    var_a2_160->unk0 = (s8) (s32) ((f64) var_a0_68->unk0 * 255.9999);
                                    var_a2_160->unk1 = (s8) (s32) ((f64) var_a0_68->unk4 * 255.9999);
                                    var_a2_160->unk2 = (s8) (s32) ((f64) var_a0_68->unk8 * 255.9999);
                                    var_a2_160->unk3 = (s8) (s32) ((f64) var_a0_68->unk10 * 255.9999);
                                    var_a2_160->unk4 = (s8) (s32) ((f64) var_a0_68->unk14 * 255.9999);
                                    temp_f2_2 = (s32) ((f64) var_a0_68->unk18 * 255.9999);
                                    var_a0_68 += 0x20;
                                    var_a2_160 += 6;
                                    var_a4_117 += 2;
                                    var_a2_160->unk-1 = (s8) temp_f2_2;
                                } while (arg1 != var_a4_117);
                            }
                        }
                    } else {
                        var_t0_70 = 0;
                        if (arg1 > 0) {
                            if (arg1 & 1) {
                                var_a5->unk0 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_a5->unk1 = (s8) (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_t0_70 = 1;
                                temp_a6_8 = (s32) ((f64) (bitwise f32) var_a7_19->unk0 * 255.9999);
                                var_a7_19 += 0x10;
                                var_a5 += 3;
                                var_a5->unk-1 = (s8) temp_a6_8;
                            }
                            if ((arg1 >> 1) != 0) {
                                var_a4_118 = var_t0_70;
                                var_a0_69 = var_a5;
                                var_a2_161 = var_a7_19;
                                do {
                                    var_a0_69->unk0 = (s8) (s32) ((f64) var_a2_161->unk0 * 255.9999);
                                    var_a0_69->unk1 = (s8) (s32) ((f64) var_a2_161->unk0 * 255.9999);
                                    var_a0_69->unk2 = (s8) (s32) ((f64) var_a2_161->unk0 * 255.9999);
                                    var_a0_69->unk3 = (s8) (s32) ((f64) var_a2_161->unk10 * 255.9999);
                                    var_a0_69->unk4 = (s8) (s32) ((f64) var_a2_161->unk10 * 255.9999);
                                    temp_f0_4 = (s32) ((f64) var_a2_161->unk10 * 255.9999);
                                    var_a2_161 += 0x20;
                                    var_a0_69 += 6;
                                    var_a4_118 += 2;
                                    var_a0_69->unk-1 = (s8) temp_f0_4;
                                } while (arg1 != var_a4_118);
                            }
                        }
                    }
                    break;
                }
            }
            break;
        }
    }
}
