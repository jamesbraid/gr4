typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[8];                     /* maybe part of gcState[3]? */
    /* 0x00A0 */ s32 unkA0;                         /* inferred */
    /* 0x00A4 */ char padA4[8];                     /* maybe part of unkA0[3]? */
    /* 0x00AC */ s32 unkAC;                         /* inferred */
    /* 0x00B0 */ s32 unkB0;                         /* inferred */
    /* 0x00B4 */ char padB4[4];
    /* 0x00B8 */ s32 unkB8;                         /* inferred */
    /* 0x00BC */ char padBC[4];
    /* 0x00C0 */ u8 unkC0;                          /* inferred */
    /* 0x00C1 */ char padC1[0xE7];                  /* maybe part of unkC0[0xE8]? */
    /* 0x01A8 */ s32 unk1A8;                        /* inferred */
    /* 0x01AC */ char pad1AC[0x124];                /* maybe part of unk1A8[0x4A]? */
    /* 0x02D0 */ f32 unk2D0;                        /* inferred */
    /* 0x02D4 */ char pad2D4[0x15C];                /* maybe part of unk2D0[0x58]? */
    /* 0x0430 */ u8 unk430;                         /* inferred */
    /* 0x0431 */ char pad431[7];                    /* maybe part of unk430[8]? */
    /* 0x0438 */ s32 unk438;                        /* inferred */
    /* 0x043C */ char pad43C[0x160];                /* maybe part of unk438[0x59]? */
    /* 0x059C */ s32 unk59C;                        /* inferred */
    /* 0x05A0 */ char pad5A0[0x64];                 /* maybe part of unk59C[0x1A]? */
    /* 0x0604 */ s32 unk604;                        /* inferred */
    /* 0x0608 */ char pad608[0x608];                /* maybe part of unk604[0x183]? */
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
    /* 0x3120 */ char pad3120[0x4A28];              /* maybe part of procs[0x17]? */
    /* 0x7B48 */ s32 unk7B48;                       /* inferred */
    /* 0x7B4C */ char pad7B4C[0x48];                /* maybe part of unk7B48[0x13]? */
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

? abort();                                          /* extern */
? perror(void *);                                   /* extern */
extern ? SYMBOL_LOCATION;
extern ? sub_0dbf0000;

void __glMgr_UseDMAForWrite(__GLcontext *gc, ...) {
    f32 temp_f4;
    f32 var_f5;
    s32 *var_a3;
    s32 *var_a4;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_t1;
    u8 (*temp_a3)(__GLcontext *, __GLcontext *, u32);
    u8 (*temp_a3_2)(__GLcontext *, __GLcontext *, u32);

    if (gc->unkC0 != 0) {
        return;
    }
    if (__glCurrentContext->unk856C == 0) {
        temp_a4 = gc->unk1A8;
        if (!(temp_a4 & 0x01000000)) {
            temp_f4 = __glCurrentContext->unk2D0;
            var_f5 = temp_f4;
            if (temp_f4 < 0.0f) {
                var_f5 = -temp_f4;
            }
            if (((f64) var_f5 == 1.0) && (__glCurrentContext->unk91FC->unk488 == 0) && ((temp_a3 = gc->exports.copyContext, (((s32) temp_a3 < 0x3C) != 0)) || (((s32) gc->imports.fopen * (s32) temp_a3) < 0x2000) || (temp_a4 & 0x100000))) {
                return;
            }
            return;
        }
        temp_a3_2 = gc->exports.copyContext;
        if (((s32) temp_a3_2 >= 0) && (((s32) gc->imports.fopen * (s32) temp_a3_2) >= 0)) {
            return;
        }
        return;
    }
    temp_a7 = gc->unkB8;
    if (temp_a7 < 9) {
        var_t1 = 0;
        if (temp_a7 != 1) {
            temp_t2 = gc->unk604;
            var_a4 = gc->unkA0 + (gc->unk59C * 4);
            if (temp_t2 > 0) {
loop_9:
                var_t1 += 1;
                var_a3 = var_a4;
                if (temp_a7 > 0) {
loop_11:
                    temp_v0 = *var_a3;
                    var_a3 += 4;
                    if (!(temp_v0 & (__glCurrentContext->unk81D8 - 1))) {
                        if ((u32) var_a3 >= (u32) ((temp_a7 * 4) + var_a4)) {
                            goto block_13;
                        }
                        goto loop_11;
                    }
                    return;
                }
block_13:
                var_a4 += gc->unkAC * 4;
                if (var_t1 >= temp_t2) {

                } else {
                    goto loop_9;
                }
            }
        }
    }
}

void __glMgr_UseDMAForRead(__GLcontext *gc, ...) {
    s32 temp_a3;
    u8 (*temp_a2)(__GLcontext *, __GLcontext *, u32);

    if (gc->unkC0 != 0) {
        return;
    }
    temp_a3 = gc->unk1A8;
    temp_a2 = gc->exports.copyContext;
    if (temp_a3 & 0x01000000) {
        if (((s32) temp_a2 >= 0) && (((s32) gc->imports.fopen * (s32) temp_a2) >= 0)) {
            return;
        }
        return;
    }
    if (((s32) temp_a2 >= 0) && (((s32) gc->imports.fopen * (s32) temp_a2) >= 0) && !(temp_a3 & 0x800000) && (gc->imports.wscx != (void *)0x1A00)) {

    }
}

void __glMgr_LockSingleDMAPool(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 *arg4, s32 arg5, ...) {
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    u32 sp8;
    s32 sp4;
    s32 sp0;
    ? var_a6;
    s32 temp_a0;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t3;
    u32 temp_a7_2;
    u32 temp_t1;
    void *temp_s0;

    temp_a7 = gc->unk81D8 - 1;
    temp_t3 = arg1 & temp_a7;
    *arg4 = temp_t3;
    temp_s0 = (arg5 * 0x10) + gc;
    temp_t1 = temp_s0->unk7D04;
    temp_a7_2 = ~temp_a7 & arg1;
    temp_t0 = temp_t3 + arg2;
    if ((temp_a7_2 >= temp_t1) && ((u32) (temp_s0->unk7D08 + temp_t1) >= (u32) (temp_t0 + temp_a7_2))) {
        *arg4 = (temp_a7_2 - temp_t1) + temp_t3;
        var_a6 = 8;
        if (temp_s0->unk7D10 & 1) {
            return;
        }
        sp18 = arg2;
        sp14 = arg1;
        sp0 = 8;
        goto block_5;
    }
    var_a6 = 0xD;
    sp0 = 0xD;
    sp4 = arg5;
    sp8 = temp_a7_2;
    spC = temp_t0;
    sp10 = arg3;
    sp14 = arg1;
    sp18 = arg2;
    temp_s0->unk7D0C = arg3;
    temp_s0->unk7D08 = temp_t0;
    temp_s0->unk7D04 = temp_a7_2;
block_5:
    temp_a0 = gc->unk7B48;
    if (ioctl(temp_a0, 0x6D67000BU, temp_a0, 0x6D67000B, sp, var_a6, temp_a7_2) >= 0) {
        return;
    }
    temp_s0->unk7D08 = 0;
    temp_s0->unk7D04 = 0U;
}

void __glMgr_UnlockSingleDMAPool(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, ...) {
    s32 sp18;
    s32 sp14;
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    void *temp_a4;

    sp4 = arg3;
    sp0 = 3;
    if ((gc->unk9D4C != 0) && (arg2 != 0)) {
        sp18 = arg2;
        sp14 = arg1;
        sp0 = 0xB;
    }
    temp_a0 = gc->unk7B48;
    if (ioctl(temp_a0, 0x6D67000BU, temp_a0, 0x6D67000B, sp) < 0) {
        perror(&sub_0dbf0000 - 0x1370);
        abort();
    }
    temp_a4 = (arg3 * 0x10) + gc;
    temp_a4->unk7D08 = 0;
    temp_a4->unk7D04 = 0;
}

void __glMgrBuildLockPageList(__GLcontext *gc, s32 *arg1, s32 arg2, ...) {
    s32 *var_a1;
    s32 *var_a5;
    s32 *var_a7;
    s32 var_a4;
    s32 var_t0;
    s32 var_t2;

    var_a1 = arg1;
    var_t2 = 0;
    if (arg2 != 0) {
loop_8:
        var_a7 = gc->unkA0 + (gc->unk59C * 4) + (gc->unkB0 * (gc->unkAC * var_t2) * 4);
        var_t0 = 0;
        if (gc->unk604 > 0) {
            do {
                var_a4 = 0;
                if (gc->unkB8 > 0) {
                    var_a5 = var_a7;
                    do {
                        *var_a1 = *var_a5;
                        var_a5 += 4;
                        var_a4 += 1;
                        var_a1 += 4;
                    } while (var_a4 < gc->unkB8);
                }
                var_t0 += 1;
                var_a7 += gc->unkAC * 4;
            } while (var_t0 < gc->unk604);
        }
        var_t2 += 1;
        if (var_t2 != arg2) {
            goto loop_8;
        }
    }
}

void __glMgr_LockMultiDMAPool(__GLcontext *gc, s32 arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5, ...) {
    s64 sp60;
    s32 temp_a0;
    s32 var_a4;
    void *temp_v0;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;

    temp_v0 = gc->imports.malloc(gc, arg1 * 8);
    var_a1 = arg2;
    if (arg1 != 0) {
        var_a4 = arg1 & 3;
        var_a0 = temp_v0;
        if (var_a4 != 0) {
            do {
                var_a1 += 4;
                var_a0 += 8;
                var_a0->unk-4 = arg3;
                var_a4 -= 1;
                var_a0->unk-8 = (s32) var_a1->unk-4;
            } while (var_a4 != 0);
        }
        if ((arg1 >> 2) != 0) {
            var_a0_2 = var_a0;
            var_a1_2 = var_a1;
            do {
                var_a0_2->unk0 = (s32) var_a1_2->unk0;
                var_a0_2->unk4 = arg3;
                var_a0_2->unk8 = (s32) var_a1_2->unk4;
                var_a0_2->unkC = arg3;
                var_a0_2 += 0x20;
                var_a0_2->unk-10 = (s32) var_a1_2->unk8;
                var_a0_2->unk-C = arg3;
                var_a1_2 += 0x10;
                var_a0_2->unk-4 = arg3;
                var_a0_2->unk-8 = (s32) var_a1_2->unk-4;
            } while (var_a1_2 != ((arg1 * 4) + arg2));
        }
    }
    sp60 = (s64) temp_v0;
    temp_a0 = gc->unk7B48;
    if (ioctl(temp_a0, 0x6D67000DU, temp_a0, 0x6D67000D, sp, temp_v0, 0xD, arg5, arg1, arg2, arg3, arg4, arg1, temp_v0) >= 0) {

    }
    gc->imports.free(gc, (void *) sp60);
}

void __glMgr_UnlockMultiDMAPool(__GLcontext *gc, s64 arg1, ...) {
    s32 temp_a0;
    void *temp_s8;

    unksp28 = arg1;
    temp_a0 = gc->unk7B48;
    if (ioctl(temp_a0, 0x6D67000DU, temp_a0, 0x6D67000D, sp, 0x6D670000, 3, (s32) arg1) < 0) {
        perror(&sub_0dbf0000 - 0x1350);
        abort();
    }
    temp_s8 = (unksp28 * 0x10) + gc;
    temp_s8->unk7D08 = 0;
    temp_s8->unk7D04 = 0;
}

void __glMgrWaitForDMAWrite(__GLcontext *gc, ...) {
    void *temp_a3;

    temp_a3 = gc->unk9D48;
    do {
        temp_a3->unk70104;
    } while (!(temp_a3->unk70008 & 0x10000));
}

void __glMgr_WriteDMAHQSetup(__GLcontext *gc, u32 arg1, u32 arg2, u32 arg3, u32 arg4, s32 arg5, ...) {
    s32 temp_a0;
    u32 temp_lo;
    u32 var_a2;
    u32 var_a3;
    u32 var_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    if (!(arg1 & 7)) {
        if (!(var_a2 & 7) && (var_a2 == var_a3)) {
            temp_lo = var_a2 * var_a4;
            if (temp_lo <= 0xFFFFFU) {
                var_a2 = temp_lo;
                var_a4 = 1;
            } else if (!(var_a4 & 1) && (var_a2 <= 0x7FFFFU)) {
loop_10:
                var_a4 = var_a4 >> 1;
                var_a2 *= 2;
                if (!(var_a4 & 1)) {
                    if (var_a2 <= 0x7FFFFU) {
                        goto loop_10;
                    }
                }
            }
            var_a3 = var_a2;
        }
    }
    temp_a0 = (arg5 * 2) | 0xA1;
    *(u32 *)0x74080 = 0x80004;
    *(u32 *)0x74080 = 0x80000000;
    *(u32 *)0x74080 = 0x80404;
    *(u32 *)0x74080 = var_a3;
    *(u32 *)0x74080 = 0x80504;
    *(u32 *)0x74080 = 0;
    *(u32 *)0x74080 = 0x80604;
    *(u32 *)0x74080 = arg1;
    *(u32 *)0x74080 = 0x80704;
    *(u32 *)0x74080 = var_a4;
    *(u32 *)0x74080 = 0x80804;
    *(u32 *)0x74080 = var_a2;
    *(u32 *)0x74080 = 0x80B04;
    gc->unk9D48->unk7000C = 0x10000;
    __glMgrim_pipe((__GLcontext *) temp_a0, temp_a0, 0xE0400, var_a2, var_a3, var_a4, 0x80000000, 0x80004, arg1);
    __glMgrWaitForDMAWrite(gc, gc);
}

void __glMgr_WriteMultiDMAHQSetup(__GLcontext *gc, s32 arg1, void *arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6, u32 arg7, s32 arg_sp4, ...) {
    s32 temp_a0;
    s32 temp_v0;
    s32 var_t3;
    u32 temp_at;
    u32 temp_lo;
    u32 var_a5;
    u32 var_a6;
    u32 var_a7;
    void *temp_t3;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    if (arg1 != 1) {

    } else if (!(arg3 & 7) && !(var_a5 & 7) && (var_a5 == var_a6)) {
        temp_lo = var_a5 * var_a7;
        if (temp_lo <= 0xFFFFFU) {
            var_a5 = temp_lo;
            var_a7 = 1;
        } else if (!(var_a7 & 1) && (var_a5 <= 0x7FFFFU)) {
loop_18:
            var_a7 = var_a7 >> 1;
            var_a5 *= 2;
            if (!(var_a7 & 1)) {
                if (var_a5 <= 0x7FFFFU) {
                    goto loop_18;
                }
            }
        }
        var_a6 = var_a5;
    }
    var_t3 = arg1 & 3;
    var_a1 = arg2;
    if (arg1 != 0) {
        var_a0 = sp;
        if (var_t3 != 0) {
            do {
                var_a1 += 4;
                var_a0 += 2;
                var_t3 -= 1;
                var_a0->unk-2 = (s16) var_a1->unk-4;
            } while (var_t3 != 0);
        }
        if ((arg1 >> 2) != 0) {
            var_a1_2 = var_a0;
            var_a0_2 = var_a1;
            do {
                var_a1_2 += 8;
                temp_v0 = var_a0_2->unkC;
                var_a0_2 += 0x10;
                var_a1_2->unk-2 = (s16) temp_v0;
                var_a1_2->unk-4 = (s16) var_a0_2->unk-8;
                var_a1_2->unk-6 = (s16) var_a0_2->unk-C;
                var_a1_2->unk-8 = (s16) var_a0_2->unk-10;
            } while (var_a0_2 != ((arg1 * 4) + arg2));
        }
    }
    temp_a0 = (arg_sp4 * 2) | 0xA1;
    temp_at = var_a6 - arg4;
    temp_t3 = (arg1 * 2) + sp;
    temp_t3->unk-2 = (u16) (temp_t3->unk-2 | 0x8000);
    *(u32 *)0x74080 = 0x80010;
    *(u32 *)0x74080 = sp0;
    *(u32 *)0x74080 = sp4;
    *(u32 *)0x74080 = sp8;
    *(u32 *)0x74080 = spC;
    *(u32 *)0x74080 = 0x80404;
    *(u32 *)0x74080 = var_a6;
    *(u32 *)0x74080 = 0x80504;
    *(u32 *)0x74080 = arg4;
    *(u32 *)0x74080 = 0x80604;
    *(u32 *)0x74080 = arg3;
    *(u32 *)0x74080 = 0x80704;
    *(u32 *)0x74080 = var_a7;
    *(u32 *)0x74080 = 0x80804;
    *(u32 *)0x74080 = temp_at;
    *(u32 *)0x74080 = 0x80904;
    *(u32 *)0x74080 = (var_a5 - ((arg1 - 2) * var_a6)) - temp_at;
    *(u32 *)0x74080 = 0x80B04;
    gc->unk9D48->unk7000C = 0x10000;
    __glMgrim_pipe((__GLcontext *) temp_a0, temp_a0, 0xE0400, __glMgrim_pipe, 0x10000, 0x80504, var_a6, var_a7);
    __glMgrWaitForDMAWrite(gc, gc);
}

void __glMgr_WriteDMAGESetup(__GLcontext *gc, s32 arg1, s32 arg2, ...) {
    s32 temp_lo;

    temp_lo = ((u32) gc >> 2) * arg1;
    *(u32 *)0x74080 = 0x9D10;
    *(u32 *)0x74080 = (u32) (temp_lo & 0x07FC0000) >> 0x12;
    *(u32 *)0x74080 = (u32) (temp_lo & 0x3FE00) >> 9;
    *(u32 *)0x74080 = temp_lo & 0x1FF;
    *(u32 *)0x74080 = *((arg2 * 4) + &SYMBOL_LOCATION);
}

void __glMgrWaitForDMARead(__GLcontext *gc, ...) {
    void *temp_a2;

    temp_a2 = gc->unk9D48;
    *(s32 *)0x74080 = 0xE0100;
    if (temp_a2->unk70104 & 0x1EFF) {
        do {

        } while (temp_a2->unk70104 & 0x1EFF);
    }
}

void __glMgr_ReadDMAHQSetup(__GLcontext *gc, u32 arg1, u32 arg2, u32 arg3, s32 arg4, u32 arg5, u32 arg6, s64 arg7, u32 arg_sp4, s32 arg_spC, ...) {
    s64 sp18;
    s32 temp_a0_2;
    u32 temp_lo;
    u32 var_a3;
    u32 var_t1;
    u32 var_t2;
    void *temp_a0;

    var_a3 = arg3;
    var_t2 = arg5;
    var_t1 = arg2;
    sp18 = arg7;
    if (arg1 & 7) {

    } else if (!(arg2 & 7) && (arg2 == var_a3)) {
        temp_lo = arg2 * arg5;
        if (temp_lo <= 0xFFFFFU) {
            var_t1 = temp_lo;
            var_t2 = 1;
        } else if (!(arg5 & 1) && (arg2 <= 0x7FFFFU)) {
loop_13:
            var_t2 = var_t2 >> 1;
            var_t1 *= 2;
            if (!(var_t2 & 1)) {
                if (var_t1 <= 0x7FFFFU) {
                    goto loop_13;
                }
            }
        }
        var_a3 = var_t1;
    }
    temp_a0 = gc->unk9D48;
    *(u32 *)0x74080 = 0xF200;
    if (!(temp_a0->unk70000 & 1)) {
        do {

        } while (!(temp_a0->unk70000 & 1));
    }
    temp_a0_2 = (arg_spC * 2) | 0xB9;
    *(u32 *)0x74080 = 0xC0004;
    *(u32 *)0x74080 = arg_sp4;
    *(u32 *)0x74080 = 0x80004;
    *(u32 *)0x74080 = 0x80000000;
    *(u32 *)0x74080 = 0x80404;
    *(u32 *)0x74080 = var_a3;
    *(u32 *)0x74080 = 0x80504;
    *(u32 *)0x74080 = 0;
    *(u32 *)0x74080 = 0x80604;
    *(u32 *)0x74080 = arg1;
    *(u32 *)0x74080 = 0x80704;
    *(u32 *)0x74080 = var_t2;
    *(u32 *)0x74080 = 0x80804;
    *(u32 *)0x74080 = var_t1;
    *(u32 *)0x74080 = 0xA0204;
    *(u32 *)0x74080 = arg2;
    *(u32 *)0x74080 = 0xA0304;
    *(u32 *)0x74080 = (arg4 & 0xFFFF) | (arg5 << 0x10);
    *(u32 *)0x74080 = 0xA0404;
    *(u32 *)0x74080 = arg6;
    *(u32 *)0x74080 = 0xA0604;
    *(u32 *)0x74080 = 0xA;
    *(u32 *)0x74080 = 0x80B04;
    __glMgrim_pipe((__GLcontext *) temp_a0_2, temp_a0_2, 0xA0504, __glMgrim_pipe, 0x80B04, 0xA, 0xA0604, 0xA0404);
    *(u32 *)0x74080 = (u32) sp18;
    __glMgrWaitForDMARead(gc, gc);
    *(u32 *)0x74080 = 0xA0704;
    *(u32 *)0x74080 = 0;
    *(u32 *)0x74080 = 0xC0004;
    *(u32 *)0x74080 = 0xE00;
}

void PackLuminanceData(void *arg0, void *arg1, s64 arg2, s32 arg3, void *arg4, s32 arg5) {
    s64 sp50;
    s64 sp48;
    s64 sp8;
    s64 sp0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f12_6;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f11;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f5;
    f32 var_f5_10;
    f32 var_f5_11;
    f32 var_f5_12;
    f32 var_f5_13;
    f32 var_f5_14;
    f32 var_f5_15;
    f32 var_f5_16;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f5_4;
    f32 var_f5_5;
    f32 var_f5_6;
    f32 var_f5_7;
    f32 var_f5_8;
    f32 var_f5_9;
    s32 temp_a3_2;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_gp;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a3;
    s32 var_a3_10;
    s32 var_a3_11;
    s32 var_a3_12;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    s32 var_a6;
    s32 var_s2;
    s32 var_s5_2;
    s32 var_s6_4;
    s32 var_t8;
    s32 var_t9_10;
    s64 var_a3_13;
    s64 var_s5;
    s64 var_s6;
    s64 var_s6_2;
    s64 var_s6_3;
    s64 var_t9_7;
    s8 *var_s1;
    s8 *var_t9;
    s8 *var_t9_2;
    s8 *var_t9_3;
    s8 *var_t9_4;
    s8 *var_t9_5;
    s8 *var_t9_6;
    s8 *var_t9_8;
    s8 *var_t9_9;
    u16 temp_a6;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v1;
    u16 temp_v1_2;
    u32 temp_a3;
    void *var_a4;

    var_a4 = arg4;
    temp_t3 = arg0->unkC50;
    temp_t2 = 0x20 - arg0->unkC4C;
    temp_t1 = 0x20 - arg0->unkC48;
    temp_t0 = 0x20 - arg0->unkC44;
    var_s1 = arg1->unk9C + (arg1->unk64 + (arg0->unk438 * arg1->unk98));
    if (temp_t3 != 0) {
        var_t8 = 0x20 - temp_t3;
        var_f11 = (f32) (1.0 / (f64) ((1 << arg0->unkCA8) - 1));
    } else {
        var_f11 = 0.003921569f;
        var_t8 = 0x18;
    }
    temp_f8 = (f32) (second half of f64);
    temp_f7 = (f32) ((second half of f64) / (f64) ((1 << arg0->unkCA0) - 1));
    var_s2 = arg3 - 1;
    temp_f9 = (f32) ((second half of f64) / (f64) ((1 << arg0->unkC9C) - 1));
    if (arg3 != 0) {
        temp_gp = arg2 - 1;
        sp0 = arg2 * 2;
loop_14:
        var_s5 = 0;
        temp_a3 = arg1->unk34 - 0x1400;
        if (temp_a3 < 7U) {
            var_a3 = temp_gp;
            switch (*((temp_a3 * 4) + (&sub_0dbf0000 - 0x1330))) { /* unable to parse jump table */
            case 0:
                var_s5 = 0x80;
                /* fallthrough */
            case 1:
                var_t9 = var_s1;
                var_a3_2 = temp_gp;
                if (arg5 != 0) {
                    if (arg2 != 0) {
                        temp_f12 = (f32) ((second half of f64) - (f64) (f32) ((u64) (var_s5 << 0x20) >> 0x20));
loop_31:
                        temp_f4 = (f32) ((u64) ((s64) ((u32) var_a4->unkC >> var_t8) << 0x20) >> 0x20);
                        var_f5 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                        var_a4 += 0x10;
                        var_a3_2 -= 1;
                        var_f4 = temp_f4 * var_f11;
                        if ((second half of f64) < (f64) var_f5) {
                            var_f5 = 1.0f;
                        }
                        if ((second half of f64) < (f64) var_f4) {
                            var_f4 = 1.0f;
                        }
                        var_t9 += 2;
                        var_t9->unk-2 = (s8) (s32) (temp_f12 * var_f5);
                        var_t9->unk-1 = (s8) (s32) (temp_f12 * var_f4);
                        if (var_a3_2 != -1) {
                            goto loop_31;
                        }
                    }
                } else {
                    var_a3_3 = temp_gp;
                    if (arg2 != 0) {
                        temp_f12_2 = (f32) ((second half of f64) - (f64) (f32) ((u64) (var_s5 << 0x20) >> 0x20));
                        if (arg2 & 1) {
                            var_f5_2 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a4 += 0xC;
                            var_a3_3 -= 1;
                            if ((second half of f64) < (f64) var_f5_2) {
                                var_f5_2 = 1.0f;
                            }
                            var_t9 += 1;
                            var_t9->unk-1 = (s8) (s32) (temp_f12_2 * var_f5_2);
                        }
                        if ((arg2 >> 1) != 0) {
loop_92:
                            var_f5_3 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a3_3 -= 2;
                            if ((second half of f64) < (f64) var_f5_3) {
                                var_f5_3 = 1.0f;
                            }
                            *var_t9 = (s8) (s32) (temp_f12_2 * var_f5_3);
                            var_f5_4 = ((f32) ((u64) ((s64) ((u32) var_a4->unkC >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk10 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk14 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_t9 += 2;
                            if ((second half of f64) < (f64) var_f5_4) {
                                var_f5_4 = 1.0f;
                            }
                            var_a4 = var_a4 + 0xC + 0xC;
                            var_t9->unk-1 = (s8) (s32) (temp_f12_2 * var_f5_4);
                            if (var_a3_3 != -1) {
                                goto loop_92;
                            }
                        }
                    }
                }
                break;
            case 2:
                var_s5 = 0x8000;
                /* fallthrough */
            case 3:
                var_t9_2 = var_s1;
                var_a3_4 = temp_gp;
                if (arg5 != 0) {
                    if (arg2 != 0) {
                        temp_f12_3 = (f32) (65535.0 - (f64) (f32) ((u64) (var_s5 << 0x20) >> 0x20));
loop_35:
                        temp_f4_2 = (f32) ((u64) ((s64) ((u32) var_a4->unkC >> var_t8) << 0x20) >> 0x20);
                        var_f5_5 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                        var_a4 += 0x10;
                        var_a3_4 -= 1;
                        var_f4_2 = temp_f4_2 * var_f11;
                        if ((second half of f64) < (f64) var_f5_5) {
                            var_f5_5 = 1.0f;
                        }
                        if ((second half of f64) < (f64) var_f4_2) {
                            var_f4_2 = 1.0f;
                        }
                        var_t9_2 += 4;
                        var_t9_2->unk-4 = (s16) (s32) (temp_f12_3 * var_f5_5);
                        var_t9_2->unk-2 = (s16) (s32) (temp_f12_3 * var_f4_2);
                        if (var_a3_4 != -1) {
                            goto loop_35;
                        }
                    }
                } else {
                    var_a3_5 = temp_gp;
                    if (arg2 != 0) {
                        temp_f12_4 = (f32) (65535.0 - (f64) (f32) ((u64) (var_s5 << 0x20) >> 0x20));
                        if (arg2 & 1) {
                            var_f5_6 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a4 += 0xC;
                            var_a3_5 -= 1;
                            if ((second half of f64) < (f64) var_f5_6) {
                                var_f5_6 = 1.0f;
                            }
                            var_t9_2 += 2;
                            var_t9_2->unk-2 = (s16) (s32) (temp_f12_4 * var_f5_6);
                        }
                        if ((arg2 >> 1) != 0) {
loop_97:
                            var_f5_7 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a3_5 -= 2;
                            if ((second half of f64) < (f64) var_f5_7) {
                                var_f5_7 = 1.0f;
                            }
                            *var_t9_2 = (s16) (s32) (temp_f12_4 * var_f5_7);
                            var_f5_8 = ((f32) ((u64) ((s64) ((u32) var_a4->unkC >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk10 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk14 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_t9_2 += 4;
                            if ((second half of f64) < (f64) var_f5_8) {
                                var_f5_8 = 1.0f;
                            }
                            var_a4 = var_a4 + 0xC + 0xC;
                            var_t9_2->unk-2 = (s16) (s32) (temp_f12_4 * var_f5_8);
                            if (var_a3_5 != -1) {
                                goto loop_97;
                            }
                        }
                    }
                }
                var_s6 = sp0;
                if (arg0->unk430 != 0) {
                    if (arg5 == 0) {
                        var_s6 = arg2;
                    }
                    var_t9_3 = var_s1;
                    var_a3_6 = var_s6 - 1;
                    if (var_a3_6 != -1) {
                        var_s5_2 = var_s6 & 3;
                        sp8 = var_s6;
                        if (var_s5_2 != 0) {
                            do {
                                var_a3_6 -= 1;
                                temp_v1 = *var_t9_3;
                                var_t9_3 += 2;
                                var_s5_2 -= 1;
                                var_t9_3->unk-2 = (s16) ((temp_v1 << 8) | ((s32) temp_v1 >> 8));
                            } while (var_s5_2 != 0);
                        }
                        if ((sp8 >> 2) != 0) {
                            var_a3_7 = var_a3_6;
                            var_t9_4 = var_t9_3;
                            do {
                                temp_v0 = var_t9_4->unk6;
                                var_t9_4 += 8;
                                var_a3_7 -= 4;
                                temp_a6 = var_t9_4->unk-8;
                                temp_v0_2 = var_t9_4->unk-6;
                                var_t9_4->unk-8 = (u16) ((temp_a6 << 8) | ((s32) temp_a6 >> 8));
                                temp_v1_2 = var_t9_4->unk-4;
                                var_t9_4->unk-6 = (u16) ((temp_v0_2 << 8) | ((s32) temp_v0_2 >> 8));
                                var_t9_4->unk-4 = (u16) ((temp_v1_2 << 8) | ((s32) temp_v1_2 >> 8));
                                var_t9_4->unk-2 = (s16) ((temp_v0 << 8) | ((s32) temp_v0 >> 8));
                            } while (var_a3_7 != -1);
                        }
                    }
                }
                break;
            case 4:
                var_s5 = 0x80000000;
                /* fallthrough */
            case 5:
                var_t9_5 = var_s1;
                if (arg5 != 0) {
                    if (arg2 != 0) {
                        temp_f12_5 = (f32) ((u64) ((-0x100 - var_s5) << 0x20) >> 0x20);
loop_49:
                        temp_f4_3 = (f32) ((u64) ((s64) ((u32) var_a4->unkC >> var_t8) << 0x20) >> 0x20);
                        var_f5_9 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                        var_a4 += 0x10;
                        var_a3 -= 1;
                        var_f4_3 = temp_f4_3 * var_f11;
                        if ((second half of f64) < (f64) var_f5_9) {
                            var_f5_9 = 1.0f;
                        }
                        if ((second half of f64) < (f64) var_f4_3) {
                            var_f4_3 = 1.0f;
                        }
                        var_t9_5 += 8;
                        var_t9_5->unk-8 = (s32) (s64) (temp_f12_5 * var_f5_9);
                        var_t9_5->unk-4 = (s32) (s64) (temp_f12_5 * var_f4_3);
                        if (var_a3 != -1) {
                            goto loop_49;
                        }
                    }
                } else {
                    var_a3_8 = temp_gp;
                    if (arg2 != 0) {
                        temp_f12_6 = (f32) ((u64) ((-0x100 - var_s5) << 0x20) >> 0x20);
                        if (arg2 & 1) {
                            var_f5_10 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a4 += 0xC;
                            var_a3_8 -= 1;
                            if ((second half of f64) < (f64) var_f5_10) {
                                var_f5_10 = 1.0f;
                            }
                            var_t9_5 += 4;
                            var_t9_5->unk-4 = (s32) (s64) (temp_f12_6 * var_f5_10);
                        }
                        if ((arg2 >> 1) != 0) {
loop_102:
                            var_f5_11 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a3_8 -= 2;
                            if ((second half of f64) < (f64) var_f5_11) {
                                var_f5_11 = 1.0f;
                            }
                            *var_t9_5 = (s32) (s64) (temp_f12_6 * var_f5_11);
                            var_f5_12 = ((f32) ((u64) ((s64) ((u32) var_a4->unkC >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk10 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk14 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_t9_5 += 8;
                            if ((second half of f64) < (f64) var_f5_12) {
                                var_f5_12 = 1.0f;
                            }
                            var_a4 = var_a4 + 0xC + 0xC;
                            var_t9_5->unk-4 = (s32) (s64) (temp_f12_6 * var_f5_12);
                            if (var_a3_8 != -1) {
                                goto loop_102;
                            }
                        }
                    }
                }
                var_s6_2 = sp0;
                if (arg0->unk430 != 0) {
                    if (arg5 == 0) {
                        var_s6_2 = arg2;
                    }
                    var_t9_6 = var_s1;
                    var_a3_9 = var_s6_2 - 1;
                    if (var_a3_9 != -1) {
                        if (var_s6_2 & 1) {
                            temp_v0_3 = *var_t9_6;
                            var_a3_9 -= 1;
                            var_t9_6 += 4;
                            var_t9_6->unk-4 = (s32) (((temp_v0_3 & 0xFF00) << 8) | (temp_v0_3 << 0x18) | (((u32) (0xFF000000 & temp_v0_3) >> 0x18) | ((u32) (0xFF0000 & temp_v0_3) >> 8)));
                        }
                        sp50 = (s64) var_t9_6;
                        if ((var_s6_2 >> 1) != 0) {
                            var_a3_10 = var_a3_9;
                            var_t9_7 = sp50;
                            do {
                                temp_a7 = var_t9_7->unk4;
                                var_t9_7 += 8;
                                var_a3_10 -= 2;
                                temp_v0_4 = var_t9_7->unk-8;
                                var_t9_7->unk-8 = (s32) (((temp_v0_4 & 0xFF00) << 8) | (temp_v0_4 << 0x18) | (((u32) (0xFF000000 & temp_v0_4) >> 0x18) | ((u32) (0xFF0000 & temp_v0_4) >> 8)));
                                var_t9_7->unk-4 = (s32) (((temp_a7 & 0xFF00) << 8) | (temp_a7 << 0x18) | (((u32) (0xFF000000 & temp_a7) >> 0x18) | ((u32) (0xFF0000 & temp_a7) >> 8)));
                            } while (var_a3_10 != -1);
                        }
                    }
                }
                break;
            case 6:
                var_t9_8 = var_s1;
                if (arg5 != 0) {
                    var_a3_11 = temp_gp;
                    if (arg2 != 0) {
loop_59:
                        temp_f4_4 = (f32) ((u64) ((s64) ((u32) var_a4->unkC >> var_t8) << 0x20) >> 0x20);
                        var_f5_13 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                        var_t9_8 += 8;
                        var_a3_11 -= 1;
                        var_a4 += 0x10;
                        var_f4_4 = temp_f4_4 * var_f11;
                        if ((second half of f64) < (f64) var_f5_13) {
                            var_f5_13 = 1.0f;
                        }
                        if ((second half of f64) < (f64) var_f4_4) {
                            var_f4_4 = 1.0f;
                        }
                        var_t9_8->unk-8 = var_f5_13;
                        var_t9_8->unk-4 = var_f4_4;
                        if (var_a3_11 != -1) {
                            goto loop_59;
                        }
                    }
                } else {
                    var_a3_12 = temp_gp;
                    if (arg2 != 0) {
                        var_a6 = arg2 >> 1;
                        if (arg2 & 1) {
                            var_f5_14 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a4 += 0xC;
                            var_a3_12 -= 1;
                            if ((second half of f64) < (f64) var_f5_14) {
                                var_f5_14 = 1.0f;
                            }
                            *var_t9_8 = (bitwise s32) var_f5_14;
                            var_t9_8 += 4;
                            var_a6 = arg2 >> 1;
                        }
                        if (var_a6 != 0) {
loop_118:
                            var_f5_15 = ((f32) ((u64) ((s64) ((u32) var_a4->unk0 >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk4 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk8 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            var_a3_12 -= 2;
                            if ((second half of f64) < (f64) var_f5_15) {
                                var_f5_15 = 1.0f;
                            }
                            var_t9_8->unk0 = var_f5_15;
                            var_f5_16 = ((f32) ((u64) ((s64) ((u32) var_a4->unkC >> temp_t0) << 0x20) >> 0x20) * temp_f9) + ((f32) ((u64) ((s64) ((u32) var_a4->unk10 >> temp_t1) << 0x20) >> 0x20) * temp_f7) + ((f32) ((u64) ((s64) ((u32) var_a4->unk14 >> temp_t2) << 0x20) >> 0x20) * temp_f8);
                            if ((second half of f64) < (f64) var_f5_16) {
                                var_f5_16 = 1.0f;
                            }
                            var_a4 = var_a4 + 0xC + 0xC;
                            var_t9_8->unk4 = var_f5_16;
                            var_t9_8 += 8;
                            if (var_a3_12 != -1) {
                                goto loop_118;
                            }
                        }
                    }
                }
                var_s6_3 = sp0;
                if (arg0->unk430 != 0) {
                    if (arg5 == 0) {
                        var_s6_3 = arg2;
                    }
                    var_t9_9 = var_s1;
                    temp_a3_2 = var_s6_3 - 1;
                    if (temp_a3_2 != -1) {
                        var_s6_4 = temp_a3_2;
                        if (var_s6_3 & 1) {
                            temp_a7_2 = *var_t9_9;
                            var_t9_9 += 4;
                            var_t9_9->unk-4 = (s32) (((temp_a7_2 & 0xFF00) << 8) | (temp_a7_2 << 0x18) | (((u32) (0xFF000000 & temp_a7_2) >> 0x18) | ((u32) (0xFF0000 & temp_a7_2) >> 8)));
                            var_s6_4 = temp_a3_2 - 1;
                        }
                        sp48 = (s64) var_t9_9;
                        if ((var_s6_3 >> 1) != 0) {
                            var_t9_10 = var_s6_4;
                            var_a3_13 = sp48;
                            do {
                                temp_a6_2 = var_a3_13->unk4;
                                var_a3_13 += 8;
                                var_t9_10 -= 2;
                                temp_a7_3 = var_a3_13->unk-8;
                                var_a3_13->unk-8 = (s32) (((temp_a7_3 & 0xFF00) << 8) | (temp_a7_3 << 0x18) | (((u32) (0xFF000000 & temp_a7_3) >> 0x18) | ((u32) (0xFF0000 & temp_a7_3) >> 8)));
                                var_a3_13->unk-4 = (s32) (((temp_a6_2 & 0xFF00) << 8) | (temp_a6_2 << 0x18) | (((u32) (0xFF000000 & temp_a6_2) >> 0x18) | ((u32) (0xFF0000 & temp_a6_2) >> 8)));
                            } while (var_t9_10 != -1);
                        }
                    }
                }
                break;
            }
        }
        var_s2 -= 1;
        var_s1 += arg1->unk98;
        if (var_s2 != -1) {
            goto loop_14;
        }
    }
}

void PackFloatData(__GLcontext *arg0, void *arg1, s64 arg2, s64 arg3) {
    s64 sp10;
    s64 sp8;
    f32 sp0;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_v1;
    f32 var_f4;
    s32 *var_a3;
    s32 *var_a3_2;
    s32 *var_a3_3;
    s32 *var_a6;
    s32 *var_a6_2;
    s32 *var_t2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_a0_3;
    s32 var_a3_4;
    s32 var_a7;
    s32 var_t0;
    s32 var_t3;
    s32 var_t3_2;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a0_4;

    temp_a6 = arg1->unk28;
    if ((temp_a6 != 0x1900) && (var_f4 = 2.3283067e-10f, (temp_a6 != 0x1901))) {
        var_t0 = -0x100;
    } else {
        var_f4 = 1.0f;
        var_t0 = 0xFFF;
    }
    temp_a6_2 = arg3 - 1;
    var_t2 = arg1->unk9C + (arg1->unk64 + (arg0->unk438 * arg1->unk98));
    if (arg0->unk430 != 0) {
        var_t3 = temp_a6_2;
        if (arg3 != 0) {
loop_12:
            var_t3 -= 1;
            var_a0 = (arg1->unk38 * arg2) - 1;
            var_a3 = var_t2;
            if (var_a0 != -1) {
                temp_t8 = var_a0 + 1;
                if (temp_t8 & 1) {
                    sp0 = (f32) ((u64) ((*var_a3 & var_t0) << 0x20) >> 0x20) * var_f4;
                    var_a0 -= 1;
                    var_a3 += 4;
                    var_a3->unk-4 = (s32) ((((bitwise s32) sp0 & 0xFF00) << 8) | ((bitwise s32) sp0 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp0) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp0) >> 8)));
                }
                sp10 = var_a0;
                if ((temp_t8 >> 1) != 0) {
                    var_a0_2 = sp10;
                    var_a3_2 = var_a3;
                    do {
                        sp0 = (f32) ((u64) ((var_a3_2->unk0 & var_t0) << 0x20) >> 0x20) * var_f4;
                        temp_v1 = sp0;
                        sp0 = (f32) ((u64) ((var_a3_2->unk4 & var_t0) << 0x20) >> 0x20) * var_f4;
                        var_a3_2 += 8;
                        var_a0_2 -= 2;
                        var_a3_2->unk-8 = (s32) ((((bitwise s32) temp_v1 & 0xFF00) << 8) | ((bitwise s32) temp_v1 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) temp_v1) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) temp_v1) >> 8)));
                        var_a3_2->unk-4 = (s32) ((((bitwise s32) sp0 & 0xFF00) << 8) | ((bitwise s32) sp0 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp0) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp0) >> 8)));
                    } while (var_a0_2 != -1);
                }
            }
            var_t2 += arg1->unk98;
            if (var_t3 != -1) {
                goto loop_12;
            }
        }
    } else {
        var_t3_2 = temp_a6_2;
        if (arg3 != 0) {
loop_25:
            var_a3_3 = var_t2;
            var_t3_2 -= 1;
            var_a0_3 = (arg1->unk38 * arg2) - 1;
            var_a6 = var_t2;
            if (var_a0_3 != -1) {
                temp_t8_2 = var_a0_3 + 1;
                var_a7 = temp_t8_2 & 3;
                if (var_a7 != 0) {
                    do {
                        temp_f3 = (f32) ((u64) ((*var_a3_3 & var_t0) << 0x20) >> 0x20) * var_f4;
                        var_a0_3 -= 1;
                        var_a6 += 4;
                        var_a3_3 += 4;
                        var_a7 -= 1;
                        var_a6->unk-4 = temp_f3;
                    } while (var_a7 != 0);
                }
                sp8 = (s64) var_a6;
                if ((temp_t8_2 >> 2) != 0) {
                    var_a0_4 = sp8;
                    var_a3_4 = var_a0_3;
                    var_a6_2 = var_a3_3;
                    do {
                        var_a0_4->unk0 = (f32) ((f32) ((u64) ((var_a6_2->unk0 & var_t0) << 0x20) >> 0x20) * var_f4);
                        var_a0_4->unk4 = (f32) ((f32) ((u64) ((var_a6_2->unk4 & var_t0) << 0x20) >> 0x20) * var_f4);
                        var_a0_4->unk8 = (f32) ((f32) ((u64) ((var_a6_2->unk8 & var_t0) << 0x20) >> 0x20) * var_f4);
                        temp_f3_2 = (f32) ((u64) ((var_a6_2->unkC & var_t0) << 0x20) >> 0x20) * var_f4;
                        var_a0_4 += 0x10;
                        var_a6_2 += 0x10;
                        var_a3_4 -= 4;
                        var_a0_4->unk-4 = temp_f3_2;
                    } while (var_a3_4 != -1);
                }
            }
            var_t2 += arg1->unk98;
            if (var_t3_2 != -1) {
                goto loop_25;
            }
        }
    }
}

void GetPixelsDMA(__GLcontext *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s64 sp58;
    s64 sp18;
    s64 sp10;
    s32 spC;
    s32 sp4;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_f0;
    s32 var_a0;
    s32 var_t1;
    s64 temp_a1;
    void *temp_a1_2;

    if (arg1->unkC0 != 0) {
        sp10 = 0;
    } else {
        sp10 = 3;
    }
    temp_a1 = (arg4 & 0xFFFF) | (arg5 << 0x10);
    sp58 = temp_a1;
    temp_a7 = arg6 & 7;
    temp_f0 = (s32) ((f64) (second half of f64) + (second half of f64));
    sp18 = (s64) temp_f0;
    temp_a6 = (temp_f0 + temp_a7) & 7;
    temp_a5 = ((((arg1->unk98 + arg6) & 7) - temp_a6) & 7 & 7) << 0xE;
    temp_a4 = (((arg0->unk97E4 & ~0x700) | (temp_a7 << 8)) & ~0x1C000) | temp_a5;
    arg0->unk97E4 = temp_a4;
    __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, temp_a5, temp_a6, temp_a7);
    __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
    __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
    __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, (arg2 << 0x10) | arg3, SYMBOL_LOCATION.unk68, 0);
    temp_a4_2 = ((arg2 + arg4) - 1) << 0x10;
    __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, ((arg3 + arg5) - 1) | temp_a4_2, SYMBOL_LOCATION.unk6C, 1, temp_a4_2);
    *(s32 *)0x74080 = 0xDB04;
    var_t1 = 0x200;
    *(s32 *)0x74080 = arg0->unk9688;
    if (arg0->unk430 != 0) {
        __glBytesPerElement(arg1->unk34);
        var_a0 = (s32) M2C_ERROR(/* Read from unset register $f0 */);
        if (var_a0 == 0) {
            var_a0 = 1;
        }
        if (var_a0 == 4) {
            var_a0 = 3;
        }
        var_t1 = (var_a0 & 3) | (((arg1->unk38 - 1) & 3) * 4) | 0x240;
    }
    sp4 = var_t1;
    spC = (s32) sp10;
    __glMgr_ReadDMAHQSetup(arg0, arg0, arg6, sp18, arg1->unk98, arg4, arg5, arg0->unk97E4, arg0->unk9688);
    temp_a1_2 = arg0->unk9D48;
    if (!(temp_a1_2->unk70000 & 2)) {
        do {

        } while (!(temp_a1_2->unk70000 & 2));
    }
    *(void *)0x74080 = 0xDA00;
}

void GetPixelsFloatDMA(__GLcontext *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s32 spC;
    s32 sp4;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_f0;
    s64 temp_a1;
    void *temp_a1_2;

    if (arg1->unkC0 != 0) {
        sp50 = 0;
    } else {
        sp50 = 3;
    }
    temp_a1 = (arg4 & 0xFFFF) | (arg5 << 0x10);
    sp58 = temp_a1;
    temp_a7 = arg6 & 7;
    temp_f0 = (s32) ((f64) (second half of f64) + (second half of f64));
    sp48 = (s64) temp_f0;
    temp_a6 = (temp_f0 + temp_a7) & 7;
    temp_a5 = ((((arg1->unk98 + arg6) & 7) - temp_a6) & 7 & 7) << 0xE;
    temp_a4 = (((arg0->unk97E4 & ~0x700) | (temp_a7 << 8)) & ~0x1C000) | temp_a5;
    arg0->unk97E4 = temp_a4;
    __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, temp_a5, temp_a6, temp_a7);
    __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
    __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
    __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, (arg2 << 0x10) | arg3, SYMBOL_LOCATION.unk68, 0);
    temp_a4_2 = ((arg2 + arg4) - 1) << 0x10;
    __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, ((arg3 + arg5) - 1) | temp_a4_2, SYMBOL_LOCATION.unk6C, 1, temp_a4_2);
    *(s32 *)0x74080 = 0xDB04;
    *(s32 *)0x74080 = arg0->unk9688;
    spC = (s32) sp50;
    sp4 = 0x200;
    __glMgr_ReadDMAHQSetup(arg0, arg0, arg6, sp48, arg1->unk98, arg4, arg5, arg0->unk97E4, arg0->unk9688);
    temp_a1_2 = arg0->unk9D48;
    if (!(temp_a1_2->unk70000 & 2)) {
        do {

        } while (!(temp_a1_2->unk70000 & 2));
    }
    *(void *)0x74080 = 0xDA00;
}

void GetPixelsPackedDMA(void) {

}

void GetPixelsBitmapDMA(void) {

}

void GetPixelsLuminanceDMA(__GLcontext *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s64 sp48;
    s64 sp40;
    s32 spC;
    s32 sp4;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_s3;
    s32 var_s6;
    s64 temp_a1;
    void *temp_a1_2;

    if (arg1->unkC0 != 0) {
        sp48 = 0;
    } else {
        sp48 = 3;
    }
    temp_a0 = arg1->unk20;
    if (arg7 != 0) {
        var_s3 = temp_a0 * 0x10;
        if (arg7 != 0) {
            goto block_4;
        }
        goto block_10;
    }
    var_s3 = temp_a0 * 0xC;
    if (arg7 == 0) {
block_10:
        var_s6 = arg4 * 0xC;
    } else {
block_4:
        var_s6 = arg4 * 0x10;
    }
    temp_a1 = (arg4 & 0xFFFF) | (arg5 << 0x10);
    sp40 = temp_a1;
    temp_a6 = arg6 & 7;
    temp_a6_2 = (var_s6 + temp_a6) & 7;
    temp_a5 = ((((var_s3 + arg6) & 7) - temp_a6_2) & 7) << 0xE;
    temp_a4 = (((arg0->unk97E4 & ~0x700) | (temp_a6 << 8)) & ~0x1C000) | temp_a5;
    arg0->unk97E4 = temp_a4;
    __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, temp_a5, temp_a6_2);
    __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
    __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
    __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, (arg2 << 0x10) | arg3, SYMBOL_LOCATION.unk68, 0);
    temp_a4_2 = ((arg2 + arg4) - 1) << 0x10;
    __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, ((arg3 + arg5) - 1) | temp_a4_2, SYMBOL_LOCATION.unk6C, 1, temp_a4_2);
    *(s32 *)0x74080 = 0xDB04;
    *(s32 *)0x74080 = arg0->unk9688;
    spC = (s32) sp48;
    sp4 = 0x200;
    __glMgr_ReadDMAHQSetup(arg0, arg0, arg6, var_s6, var_s3, arg4, arg5, arg0->unk97E4, arg0->unk9688);
    temp_a1_2 = arg0->unk9D48;
    if (!(temp_a1_2->unk70000 & 2)) {
        do {

        } while (!(temp_a1_2->unk70000 & 2));
    }
    *(void *)0x74080 = 0xDA00;
}

void GetPixelsPIO(void *arg0, void *arg1, s64 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6) {
    s64 spB8;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    ? sp8;
    s32 sp0;
    ? *var_a1_4;
    ? *var_t0_3;
    f32 temp_f4;
    f32 temp_f5;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_f6;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_a7_5;
    s32 var_s0;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    s64 temp_a1;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 var_a1;
    s64 var_a2;
    s64 var_a7_4;
    s64 var_s3;
    s64 var_t0_4;
    u32 temp_t1_2;
    u32 var_t0;
    void *temp_a1_2;
    void *temp_t1;

    temp_t0 = arg1->unk38;
    sp28 = (s64) arg1;
    sp80 = arg2;
    temp_f4 = arg1->unk4C;
    temp_f5 = temp_f4 * (f32) ((u64) ((s64) temp_t0 << 0x20) >> 0x20);
    var_s0 = arg4;
    sp60 = arg5;
    sp18 = arg6;
    temp_t1 = arg0->unk9D48;
    if (!(temp_f5 > 8.0f)) {
        if (sp60 != 1) {
            sp68 = (s64) temp_t1;
            sp50 = 0;
        } else {
            sp68 = (s64) temp_t1;
            sp60 = 2;
            sp50 = 1;
            sp0 = (s32) ((f64) temp_f5 + 0.875);
        }
        temp_f6 = (s32) ((f64) ((f32) ((u64) ((sp60 * temp_t0) << 0x20) >> 0x20) * temp_f4) + (second half of f64));
        temp_a3 = (arg3 + sp60) - 1;
        sp20 = temp_a3;
        sp58 = (s64) temp_f6;
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3, temp_f6);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        var_a2 = sp18 - 1;
        if (var_a2 != -1) {
            sp88 = sp20 << 0x10;
            sp90 = arg3 << 0x10;
loop_19:
            var_s3 = sp80;
            if (sp50 != 0) {
                var_s3 = (s64) &sp8;
                sp18 = var_a2;
                sp60 = 2;
            } else {
                sp18 = var_a2;
            }
            temp_s8 = var_s3 & 3;
            var_s3_2 = -4 & var_s3;
            var_s4 = sp58 + temp_s8;
            temp_a3_2 = var_s4 & 7;
            sp70 = temp_a3_2;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1, temp_a3_2, 0xDA00);
            temp_a1 = (sp60 & 0xFFFF) | 0x10000;
            spB8 = temp_a1;
            temp_a6 = (temp_s8 & 7) << 8;
            temp_a5 = (arg0->unk97E4 & ~0x700) | temp_a6;
            temp_a4 = 0xFFFE3FFF & temp_a5;
            arg0->unk97E4 = temp_a4;
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, temp_a5, temp_a6);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, sp90 | var_s0, SYMBOL_LOCATION.unk68, 0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, sp88 | var_s0, SYMBOL_LOCATION.unk6C, 1);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = arg0->unk9688;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a1 = sp70;
            if (!(sp68->unk70000 & 1)) {
                do {

                } while (!(sp68->unk70000 & 1));
            }
            if (!(sp68->unk7C578 & 0x100)) {
                do {

                } while (!(sp68->unk7C578 & 0x100));
            }
            temp_t2 = var_a1 * 8;
            if (temp_s8 != 0) {
                var_a7 = -1;
                temp_t1_2 = -1U >> (temp_s8 * 8);
                var_t0 = temp_t1_2;
                if (sp58 < (8 - temp_s8)) {
                    var_a7 = 0;
                    if (var_a1 < 5) {
                        var_t0 = (-1 << (0x20 - temp_t2)) & temp_t1_2;
                    } else {
                        var_a7 = -1 << (0x40 - temp_t2);
                    }
                    var_a1 = 0;
                }
                var_s4 -= 8;
                var_s3_2->unk0 = (s32) ((sp68->unk7D1C0 & var_t0) | (var_s3_2->unk4 & ~var_t0));
                var_s3_2 += 8;
                var_s3_2->unk-4 = (s32) ((sp68->unk7C1C4 & var_a7) | (var_s3_2->unk0 & ~var_a7));
            }
            if (var_s4 >= 8) {
                temp_a7 = (s32) (((u32) (var_s4 >> 2) >> 0x1D) + var_s4) >> 3;
                var_t0_2 = var_s4;
                if (temp_a7 & 1) {
                    *var_s3_2 = (s32) sp68->unk7D1C0;
                    var_s3_2 += 8;
                    var_s3_2->unk-4 = (s32) sp68->unk7C1C4;
                    var_t0_2 = var_s4 - 8;
                }
                if ((temp_a7 >> 1) != 0) {
                    var_t2 = var_t0_2;
                    var_a7_2 = var_s3_2;
                    do {
                        var_a7_2->unk0 = (s32) sp68->unk7D1C0;
                        var_a7_2->unk4 = (s32) sp68->unk7C1C4;
                        var_a7_2 += 0x10;
                        var_a7_2->unk-8 = (s32) sp68->unk7D1C0;
                        var_t2 -= 0x10;
                        var_a7_2->unk-4 = (s32) sp68->unk7C1C4;
                    } while (var_t2 >= 8);
                    var_s3_2 = var_a7_2;
                }
            }
            temp_t2_2 = var_a1 * 8;
            if (var_a1 != 0) {
                var_a7_3 = -1;
                if (var_a1 < 5) {
                    var_a1_2 = 0;
                    var_a7_3 = -1 << (0x20 - temp_t2_2);
                } else {
                    var_a1_2 = -1 << (0x40 - temp_t2_2);
                }
                var_s3_2->unk0 = (s32) ((sp68->unk7D1C0 & var_a7_3) | (var_s3_2->unk4 & ~var_a7_3));
                var_s3_2->unk4 = (s32) ((sp68->unk7C1C4 & var_a1_2) | (var_s3_2->unk8 & ~var_a1_2));
            }
            var_a7_4 = sp80;
            var_a1_3 = sp0 & 3;
            var_t0_3 = &sp8;
            if (sp50 != 0) {
                var_t1 = 0;
                if (sp0 > 0) {
                    var_t3 = 0;
                    if (var_a1_3 != 0) {
                        do {
                            var_t1 += 1;
                            var_a7_4 += 1;
                            var_t0_3 += 1;
                            var_a1_3 -= 1;
                            var_a7_4->unk-1 = (u8) var_t0_3->unk-1;
                        } while (var_a1_3 != 0);
                        var_t3 = var_t1;
                    }
                    if ((sp0 >> 2) != 0) {
                        var_a7_5 = var_t3;
                        var_t0_4 = var_a7_4;
                        var_a1_4 = var_t0_3;
                        do {
                            var_t0_4->unk0 = (u8) var_a1_4->unk0;
                            var_t0_4->unk1 = (u8) var_a1_4->unk1;
                            var_t0_4 += 4;
                            var_t0_4->unk-2 = (u8) var_a1_4->unk2;
                            var_a1_4 += 4;
                            var_a7_5 += 4;
                            var_t0_4->unk-1 = (u8) var_a1_4->unk-1;
                        } while (var_a7_5 != sp0);
                    }
                }
            }
            temp_a1_2 = arg0->unk9D48;
            var_s0 += 1;
            temp_a2 = sp28->unk98 + sp80;
            if (!(temp_a1_2->unk70000 & 2)) {
                do {

                } while (!(temp_a1_2->unk70000 & 2));
                sp80 = temp_a2;
            }
            sp80 = temp_a2;
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, 0x70000, 0x8F08, 0xDB04);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_a2 = sp18 - 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_a2 != -1) {
                goto loop_19;
            }
        }
    }
}

void GetPixelsSwapShortPIO(void *arg0, void *arg1, s64 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6) {
    s64 spC8;
    s64 spC0;
    s64 spA0;
    s64 sp98;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    ? sp8;
    s32 sp0;
    ? *var_a2_4;
    ? *var_a7_3;
    f32 temp_f4;
    f32 temp_f5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_f6;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s8;
    s32 var_t0_3;
    s32 var_t3;
    s32 var_t8;
    s64 temp_a1;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_t0;
    s64 temp_t8;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a2_5;
    s64 var_s0;
    s64 var_t0_2;
    u32 temp_t3;
    u32 var_t0;
    void *temp_a1_2;

    temp_t1 = arg1->unk38;
    sp20 = (s64) arg1;
    spA0 = arg2;
    temp_f4 = arg1->unk4C;
    temp_f5 = temp_f4 * (f32) ((u64) ((s64) temp_t1 << 0x20) >> 0x20);
    var_s8 = arg4;
    sp68 = arg5;
    sp10 = arg6;
    temp_t0 = arg0 + 0x10000;
    temp_t2 = arg0->unk9D48;
    if (!(temp_f5 > 8.0f)) {
        if (sp68 != 1) {
            sp78 = temp_t0;
            sp70 = (s64) temp_t2;
            sp58 = 0;
        } else {
            sp78 = temp_t0;
            sp70 = (s64) temp_t2;
            sp68 = 2;
            sp58 = 1;
            sp0 = (s32) ((f64) temp_f5 + 0.875);
        }
        temp_f6 = (s32) ((f64) ((f32) ((u64) ((sp68 * temp_t1) << 0x20) >> 0x20) * temp_f4) + (second half of f64));
        temp_a3 = (arg3 + sp68) - 1;
        sp18 = temp_a3;
        sp60 = (s64) temp_f6;
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3, temp_f6);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        var_a2 = sp10 - 1;
        if (var_a2 != -1) {
            sp80 = sp18 << 0x10;
            sp88 = arg3 << 0x10;
loop_19:
            var_s0 = spA0;
            if (sp58 != 0) {
                var_s0 = (s64) &sp8;
                sp10 = var_a2;
                sp68 = 2;
            } else {
                sp10 = var_a2;
            }
            temp_t8 = var_s0 & 3;
            spC0 = temp_t8;
            var_s0_2 = -4 & var_s0;
            var_s1 = sp60 + temp_t8;
            temp_a3_2 = var_s1 & 7;
            sp98 = temp_a3_2;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1, temp_a3_2, 0xDA00);
            temp_a1 = (sp68 & 0xFFFF) | 0x10000;
            spC8 = temp_a1;
            temp_a7 = (spC0 & 7) << 8;
            temp_a6 = (sp78->unk-681C & ~0x700) | temp_a7;
            temp_a4 = 0xFFFE3FFF & temp_a6;
            sp78->unk-681C = temp_a4;
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, sp78, temp_a6, temp_a7);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, sp78->unk-681C, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, sp88 | var_s8, SYMBOL_LOCATION.unk68, 0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, sp80 | var_s8, SYMBOL_LOCATION.unk6C, 1);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = sp78->unk-6978;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a2_2 = sp98;
            if (!(sp70->unk70000 & 1)) {
                do {

                } while (!(sp70->unk70000 & 1));
            }
            if (!(sp70->unk7C578 & 0x100)) {
                do {

                } while (!(sp70->unk7C578 & 0x100));
            }
            temp_t1_2 = var_a2_2 * 8;
            if (spC0 != 0) {
                var_a7 = -1;
                temp_t3 = -1U >> (spC0 * 8);
                var_t0 = temp_t3;
                if (sp60 < (8 - spC0)) {
                    var_a7 = 0;
                    if (var_a2_2 < 5) {
                        var_t0 = (-1 << (0x20 - temp_t1_2)) & temp_t3;
                    } else {
                        var_a7 = -1 << (0x40 - temp_t1_2);
                    }
                    var_a2_2 = 0;
                }
                var_s1 -= 8;
                temp_v0 = sp70->unk7D1C0;
                var_s0_2->unk0 = (s32) ((var_s0_2->unk4 & ~var_t0) | ((((0xFF0000 & temp_v0) << 8) | ((u32) (0xFF000000 & temp_v0) >> 8) | (((temp_v0 & 0xFF) << 8) | ((u32) (temp_v0 & 0xFF00) >> 8))) & var_t0));
                var_s0_2 += 8;
                temp_a0 = sp70->unk7C1C4;
                var_s0_2->unk-4 = (s32) ((var_s0_2->unk0 & ~var_a7) | ((((0xFF0000 & temp_a0) << 8) | ((u32) (0xFF000000 & temp_a0) >> 8) | (((temp_a0 & 0xFF) << 8) | ((u32) (temp_a0 & 0xFF00) >> 8))) & var_a7));
            }
            var_a0 = var_a2_2 < 5;
            if (var_s1 >= 8) {
                do {
                    temp_at = sp70->unk7D1C0;
                    *var_s0_2 = (s32) (((0xFF0000 & temp_at) << 8) | ((u32) (0xFF000000 & temp_at) >> 8) | (((temp_at & 0xFF) << 8) | ((u32) (temp_at & 0xFF00) >> 8)));
                    var_s0_2 += 8;
                    temp_at_2 = sp70->unk7C1C4;
                    var_s1 -= 8;
                    var_s0_2->unk-4 = (s32) (((0xFF0000 & temp_at_2) << 8) | ((u32) (0xFF000000 & temp_at_2) >> 8) | (((temp_at_2 & 0xFF) << 8) | ((u32) (temp_at_2 & 0xFF00) >> 8)));
                } while (var_s1 >= 8);
                var_a0 = var_a2_2 < 5;
            }
            temp_t1_3 = var_a2_2 * 8;
            if (var_a2_2 != 0) {
                var_a1 = -1;
                if (var_a0 != 0) {
                    var_a2_3 = 0;
                    var_a1 = -1 << (0x20 - temp_t1_3);
                } else {
                    var_a2_3 = -1 << (0x40 - temp_t1_3);
                }
                temp_v0_2 = sp70->unk7D1C0;
                var_s0_2->unk0 = (s32) ((var_s0_2->unk4 & ~var_a1) | ((((0xFF0000 & temp_v0_2) << 8) | ((u32) (0xFF000000 & temp_v0_2) >> 8) | (((temp_v0_2 & 0xFF) << 8) | ((u32) (temp_v0_2 & 0xFF00) >> 8))) & var_a1));
                temp_a0_2 = sp70->unk7C1C4;
                var_s0_2->unk4 = (s32) ((var_s0_2->unk8 & ~var_a2_3) | ((((0xFF0000 & temp_a0_2) << 8) | ((u32) (0xFF000000 & temp_a0_2) >> 8) | (((temp_a0_2 & 0xFF) << 8) | ((u32) (temp_a0_2 & 0xFF00) >> 8))) & var_a2_3));
            }
            var_s8 += 1;
            var_a2_4 = &sp8;
            var_a7_2 = 0;
            if (sp58 != 0) {
                var_t0_2 = spA0;
                if (sp0 > 0) {
                    var_t3 = sp0 & 3;
                    var_t8 = 0;
                    if (var_t3 != 0) {
                        do {
                            var_a7_2 += 1;
                            var_t0_2 += 1;
                            var_a2_4 += 1;
                            var_t3 -= 1;
                            var_t0_2->unk-1 = (u8) var_a2_4->unk-1;
                        } while (var_t3 != 0);
                        var_t8 = var_a7_2;
                    }
                    if ((sp0 >> 2) != 0) {
                        var_t0_3 = var_t8;
                        var_a2_5 = var_t0_2;
                        var_a7_3 = var_a2_4;
                        do {
                            var_a2_5->unk0 = (u8) var_a7_3->unk0;
                            var_a2_5->unk1 = (u8) var_a7_3->unk1;
                            var_a2_5 += 4;
                            var_a2_5->unk-2 = (u8) var_a7_3->unk2;
                            var_a7_3 += 4;
                            var_t0_3 += 4;
                            var_a2_5->unk-1 = (u8) var_a7_3->unk-1;
                        } while (var_t0_3 != sp0);
                    }
                }
            }
            temp_a1_2 = sp78->unk-62B8;
            temp_a3_3 = sp20->unk98 + spA0;
            if (!(temp_a1_2->unk70000 & 2)) {
                do {

                } while (!(temp_a1_2->unk70000 & 2));
                spA0 = temp_a3_3;
            }
            spA0 = temp_a3_3;
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3_3, 0x70000, 0xDB04);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_a2 = sp10 - 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_a2 != -1) {
                goto loop_19;
            }
        }
    }
}

void GetPixelsSwapIntPIO(void *arg0, void *arg1, s64 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6) {
    s64 spC8;
    s64 spC0;
    s64 spA0;
    s64 sp98;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    ? sp8;
    s32 sp0;
    ? *var_a2_4;
    ? *var_a7_3;
    f32 temp_f4;
    f32 temp_f5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_f6;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s8;
    s32 var_t0_3;
    s32 var_t3;
    s32 var_t8;
    s64 temp_a1;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_t0;
    s64 temp_t8;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a2_5;
    s64 var_s0;
    s64 var_t0_2;
    u32 temp_t3;
    u32 var_t0;
    void *temp_a1_2;

    temp_t1 = arg1->unk38;
    sp20 = (s64) arg1;
    spA0 = arg2;
    temp_f4 = arg1->unk4C;
    temp_f5 = temp_f4 * (f32) ((u64) ((s64) temp_t1 << 0x20) >> 0x20);
    var_s8 = arg4;
    sp68 = arg5;
    sp10 = arg6;
    temp_t0 = arg0 + 0x10000;
    temp_t2 = arg0->unk9D48;
    if (!(temp_f5 > 8.0f)) {
        if (sp68 != 1) {
            sp78 = temp_t0;
            sp70 = (s64) temp_t2;
            sp58 = 0;
        } else {
            sp78 = temp_t0;
            sp70 = (s64) temp_t2;
            sp68 = 2;
            sp58 = 1;
            sp0 = (s32) ((f64) temp_f5 + 0.875);
        }
        temp_f6 = (s32) ((f64) ((f32) ((u64) ((sp68 * temp_t1) << 0x20) >> 0x20) * temp_f4) + (second half of f64));
        temp_a3 = (arg3 + sp68) - 1;
        sp18 = temp_a3;
        sp60 = (s64) temp_f6;
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3, temp_f6);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        var_a2 = sp10 - 1;
        if (var_a2 != -1) {
            sp80 = sp18 << 0x10;
            sp88 = arg3 << 0x10;
loop_19:
            var_s0 = spA0;
            if (sp58 != 0) {
                var_s0 = (s64) &sp8;
                sp10 = var_a2;
                sp68 = 2;
            } else {
                sp10 = var_a2;
            }
            temp_t8 = var_s0 & 3;
            spC0 = temp_t8;
            var_s0_2 = -4 & var_s0;
            var_s1 = sp60 + temp_t8;
            temp_a3_2 = var_s1 & 7;
            sp98 = temp_a3_2;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1, temp_a3_2, 0xDA00);
            temp_a1 = (sp68 & 0xFFFF) | 0x10000;
            spC8 = temp_a1;
            temp_a7 = (spC0 & 7) << 8;
            temp_a6 = (sp78->unk-681C & ~0x700) | temp_a7;
            temp_a4 = 0xFFFE3FFF & temp_a6;
            sp78->unk-681C = temp_a4;
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, sp78, temp_a6, temp_a7);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, sp78->unk-681C, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, sp88 | var_s8, SYMBOL_LOCATION.unk68, 0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, sp80 | var_s8, SYMBOL_LOCATION.unk6C, 1);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = sp78->unk-6978;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a2_2 = sp98;
            if (!(sp70->unk70000 & 1)) {
                do {

                } while (!(sp70->unk70000 & 1));
            }
            if (!(sp70->unk7C578 & 0x100)) {
                do {

                } while (!(sp70->unk7C578 & 0x100));
            }
            temp_t1_2 = var_a2_2 * 8;
            if (spC0 != 0) {
                var_a7 = -1;
                temp_t3 = -1U >> (spC0 * 8);
                var_t0 = temp_t3;
                if (sp60 < (8 - spC0)) {
                    var_a7 = 0;
                    if (var_a2_2 < 5) {
                        var_t0 = (-1 << (0x20 - temp_t1_2)) & temp_t3;
                    } else {
                        var_a7 = -1 << (0x40 - temp_t1_2);
                    }
                    var_a2_2 = 0;
                }
                var_s1 -= 8;
                temp_v0 = sp70->unk7D1C0;
                var_s0_2->unk0 = (s32) ((var_s0_2->unk4 & ~var_t0) | ((((temp_v0 & 0xFF00) << 8) | (temp_v0 << 0x18) | (((u32) (0xFF000000 & temp_v0) >> 0x18) | ((u32) (0xFF0000 & temp_v0) >> 8))) & var_t0));
                var_s0_2 += 8;
                temp_a0 = sp70->unk7C1C4;
                var_s0_2->unk-4 = (s32) ((var_s0_2->unk0 & ~var_a7) | ((((temp_a0 & 0xFF00) << 8) | (temp_a0 << 0x18) | (((u32) (0xFF000000 & temp_a0) >> 0x18) | ((u32) (0xFF0000 & temp_a0) >> 8))) & var_a7));
            }
            var_a0 = var_a2_2 < 5;
            if (var_s1 >= 8) {
                do {
                    temp_at = sp70->unk7D1C0;
                    *var_s0_2 = (s32) (((temp_at & 0xFF00) << 8) | (temp_at << 0x18) | (((u32) (0xFF000000 & temp_at) >> 0x18) | ((u32) (0xFF0000 & temp_at) >> 8)));
                    var_s0_2 += 8;
                    temp_at_2 = sp70->unk7C1C4;
                    var_s1 -= 8;
                    var_s0_2->unk-4 = (s32) (((temp_at_2 & 0xFF00) << 8) | (temp_at_2 << 0x18) | (((u32) (0xFF000000 & temp_at_2) >> 0x18) | ((u32) (0xFF0000 & temp_at_2) >> 8)));
                } while (var_s1 >= 8);
                var_a0 = var_a2_2 < 5;
            }
            temp_t1_3 = var_a2_2 * 8;
            if (var_a2_2 != 0) {
                var_a1 = -1;
                if (var_a0 != 0) {
                    var_a2_3 = 0;
                    var_a1 = -1 << (0x20 - temp_t1_3);
                } else {
                    var_a2_3 = -1 << (0x40 - temp_t1_3);
                }
                temp_v0_2 = sp70->unk7D1C0;
                var_s0_2->unk0 = (s32) ((var_s0_2->unk4 & ~var_a1) | ((((temp_v0_2 & 0xFF00) << 8) | (temp_v0_2 << 0x18) | (((u32) (0xFF000000 & temp_v0_2) >> 0x18) | ((u32) (0xFF0000 & temp_v0_2) >> 8))) & var_a1));
                temp_a0_2 = sp70->unk7C1C4;
                var_s0_2->unk4 = (s32) ((var_s0_2->unk8 & ~var_a2_3) | ((((temp_a0_2 & 0xFF00) << 8) | (temp_a0_2 << 0x18) | (((u32) (0xFF000000 & temp_a0_2) >> 0x18) | ((u32) (0xFF0000 & temp_a0_2) >> 8))) & var_a2_3));
            }
            var_s8 += 1;
            var_a2_4 = &sp8;
            var_a7_2 = 0;
            if (sp58 != 0) {
                var_t0_2 = spA0;
                if (sp0 > 0) {
                    var_t3 = sp0 & 3;
                    var_t8 = 0;
                    if (var_t3 != 0) {
                        do {
                            var_a7_2 += 1;
                            var_t0_2 += 1;
                            var_a2_4 += 1;
                            var_t3 -= 1;
                            var_t0_2->unk-1 = (u8) var_a2_4->unk-1;
                        } while (var_t3 != 0);
                        var_t8 = var_a7_2;
                    }
                    if ((sp0 >> 2) != 0) {
                        var_t0_3 = var_t8;
                        var_a2_5 = var_t0_2;
                        var_a7_3 = var_a2_4;
                        do {
                            var_a2_5->unk0 = (u8) var_a7_3->unk0;
                            var_a2_5->unk1 = (u8) var_a7_3->unk1;
                            var_a2_5 += 4;
                            var_a2_5->unk-2 = (u8) var_a7_3->unk2;
                            var_a7_3 += 4;
                            var_t0_3 += 4;
                            var_a2_5->unk-1 = (u8) var_a7_3->unk-1;
                        } while (var_t0_3 != sp0);
                    }
                }
            }
            temp_a1_2 = sp78->unk-62B8;
            temp_a3_3 = sp20->unk98 + spA0;
            if (!(temp_a1_2->unk70000 & 2)) {
                do {

                } while (!(temp_a1_2->unk70000 & 2));
                spA0 = temp_a3_3;
            }
            spA0 = temp_a3_3;
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3_3, 0x70000, 0xDB04);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_a2 = sp10 - 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_a2 != -1) {
                goto loop_19;
            }
        }
    }
}

void GetPixelsSwapFloatPIO(void *arg0, void *arg1, s64 arg2, s32 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 spF0;
    s64 spE8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    f32 sp20;
    f32 sp18;
    f32 sp10;
    ? sp8;
    s32 sp0;
    ? *var_a7_3;
    f32 temp_f4;
    f32 temp_f5;
    f32 var_f30;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_f6;
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a2_2;
    s32 var_a3_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_4;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s5;
    s32 var_t0_2;
    s32 var_t9;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_a4_2;
    s64 temp_t0;
    s64 temp_t8;
    s64 var_a2;
    s64 var_a2_3;
    s64 var_a3;
    s64 var_a3_3;
    s64 var_s0;
    u32 temp_t3;
    u32 var_t0;
    void *temp_a2_3;

    temp_t1 = arg1->unk38;
    sp40 = (s64) arg1;
    temp_f4 = arg1->unk4C;
    spD0 = arg2;
    temp_f5 = temp_f4 * (f32) ((u64) ((s64) temp_t1 << 0x20) >> 0x20);
    spC0 = arg4;
    sp88 = arg5;
    sp30 = arg6;
    temp_t0 = arg0 + 0x10000;
    temp_t2 = arg0->unk9D48;
    if (!(temp_f5 > 8.0f)) {
        temp_a3 = sp40->unk28;
        if ((temp_a3 != 0x1900) && (temp_a3 != 0x1901)) {
            var_f30 = 2.3283067e-10f;
            var_s5 = -0x100;
        } else {
            var_f30 = 1.0f;
            var_s5 = 0xFFF;
        }
        if (sp88 != 1) {
            sp98 = temp_t0;
            sp90 = (s64) temp_t2;
            sp78 = 0;
        } else {
            sp98 = temp_t0;
            sp90 = (s64) temp_t2;
            sp88 = 2;
            sp78 = 1;
            sp0 = (s32) ((f64) temp_f5 + 0.875);
        }
        temp_f6 = (s32) ((f64) ((f32) ((u64) ((sp88 * temp_t1) << 0x20) >> 0x20) * temp_f4) + (second half of f64));
        temp_a3_2 = (arg3 + sp88) - 1;
        sp38 = temp_a3_2;
        sp80 = (s64) temp_f6;
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3_2, temp_f6);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        var_a2 = sp30 - 1;
        if (var_a2 != -1) {
            spA8 = sp38 << 0x10;
            spA0 = arg3 << 0x10;
loop_22:
            var_s0 = spD0;
            if (sp78 != 0) {
                var_s0 = (s64) &sp8;
                sp30 = var_a2;
                sp88 = 2;
            } else {
                sp30 = var_a2;
            }
            temp_t8 = var_s0 & 3;
            spE8 = temp_t8;
            var_s0_2 = -4 & var_s0;
            var_s1 = sp80 + temp_t8;
            temp_a3_3 = var_s1 & 7;
            spC8 = temp_a3_3;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1, temp_a3_3, 0xDA00);
            temp_a1 = (sp88 & 0xFFFF) | 0x10000;
            spF0 = temp_a1;
            temp_a7 = (spE8 & 7) << 8;
            temp_a6 = (sp98->unk-681C & ~0x700) | temp_a7;
            temp_a4 = 0xFFFE3FFF & temp_a6;
            sp98->unk-681C = temp_a4;
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, sp98, temp_a6, temp_a7);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, sp98->unk-681C, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, spA0 | spC0, SYMBOL_LOCATION.unk68, 0, spC0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, spA8 | spC0, SYMBOL_LOCATION.unk6C, 1, spC0);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = sp98->unk-6978;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a3 = temp_a3_3;
            if (!(sp90->unk70000 & 1)) {
                do {

                } while (!(sp90->unk70000 & 1));
            }
            if (!(sp90->unk7C578 & 0x100)) {
                do {

                } while (!(sp90->unk7C578 & 0x100));
            }
            if (spE8 != 0) {
                var_a7 = -1;
                temp_t3 = -1U >> (spE8 * 8);
                var_t0 = temp_t3;
                if (sp80 < (8 - spE8)) {
                    temp_a2 = var_a3 * 8;
                    if (var_a3 < 5) {
                        var_a7 = 0;
                        var_t0 = (-1 << (0x20 - temp_a2)) & temp_t3;
                    } else {
                        var_a7 = -1 << (0x40 - temp_a2);
                    }
                    var_a3 = 0;
                }
                var_s1 -= 8;
                sp10 = (f32) ((u64) ((var_s5 & sp90->unk7D1C0) << 0x20) >> 0x20) * var_f30;
                var_s0_2->unk0 = (s32) ((var_s0_2->unk4 & ~var_t0) | (((((bitwise s32) sp10 & 0xFF00) << 8) | ((bitwise s32) sp10 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp10) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp10) >> 8))) & var_t0));
                var_s0_2 += 8;
                sp10 = (f32) ((u64) ((var_s5 & sp90->unk7C1C4) << 0x20) >> 0x20) * var_f30;
                var_s0_2->unk-4 = (s32) ((var_s0_2->unk0 & ~var_a7) | (((((bitwise s32) sp10 & 0xFF00) << 8) | ((bitwise s32) sp10 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp10) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp10) >> 8))) & var_a7));
            }
            if (var_s1 >= 8) {
                do {
                    sp18 = (f32) ((u64) ((var_s5 & sp90->unk7D1C0) << 0x20) >> 0x20) * var_f30;
                    *var_s0_2 = (s32) ((((bitwise s32) sp18 & 0xFF00) << 8) | ((bitwise s32) sp18 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp18) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp18) >> 8)));
                    sp18 = (f32) ((u64) ((var_s5 & sp90->unk7C1C4) << 0x20) >> 0x20) * var_f30;
                    var_s0_2 += 8;
                    var_s1 -= 8;
                    var_s0_2->unk-4 = (s32) ((((bitwise s32) sp18 & 0xFF00) << 8) | ((bitwise s32) sp18 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp18) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp18) >> 8)));
                } while (var_s1 >= 8);
            }
            if (var_a3 != 0) {
                temp_a2_2 = var_a3 * 8;
                var_a7_2 = -1;
                if (var_a3 < 5) {
                    var_a3_2 = 0;
                    var_a7_2 = -1 << (0x20 - temp_a2_2);
                } else {
                    var_a3_2 = -1 << (0x40 - temp_a2_2);
                }
                sp20 = (f32) ((u64) ((var_s5 & sp90->unk7D1C0) << 0x20) >> 0x20) * var_f30;
                var_s0_2->unk0 = (s32) ((var_s0_2->unk4 & ~var_a7_2) | (((((bitwise s32) sp20 & 0xFF00) << 8) | ((bitwise s32) sp20 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp20) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp20) >> 8))) & var_a7_2));
                sp20 = (f32) ((u64) ((var_s5 & sp90->unk7C1C4) << 0x20) >> 0x20) * var_f30;
                var_s0_2->unk4 = (s32) ((var_s0_2->unk8 & ~var_a3_2) | (((((bitwise s32) sp20 & 0xFF00) << 8) | ((bitwise s32) sp20 << 0x18) | (((u32) (0xFF000000 & (bitwise s32) sp20) >> 0x18) | ((u32) (0xFF0000 & (bitwise s32) sp20) >> 8))) & var_a3_2));
            }
            var_a3_3 = spD0;
            var_t0_2 = sp0 & 3;
            var_a7_3 = &sp8;
            if (sp78 != 0) {
                var_a2_2 = 0;
                if (sp0 > 0) {
                    var_t9 = 0;
                    if (var_t0_2 != 0) {
                        do {
                            var_a2_2 += 1;
                            var_a3_3 += 1;
                            var_a7_3 += 1;
                            var_t0_2 -= 1;
                            var_a3_3->unk-1 = (u8) var_a7_3->unk-1;
                        } while (var_t0_2 != 0);
                        var_t9 = var_a2_2;
                    }
                    if ((sp0 >> 2) != 0) {
                        var_a7_4 = var_t9;
                        var_a2_3 = var_a3_3;
                        var_a3_3 = (s64) var_a7_3;
                        do {
                            var_a2_3->unk0 = (u8) var_a3_3->unk0;
                            var_a2_3->unk1 = (u8) var_a3_3->unk1;
                            var_a2_3 += 4;
                            var_a2_3->unk-2 = (u8) var_a3_3->unk2;
                            var_a3_3 += 4;
                            var_a7_4 += 4;
                            var_a2_3->unk-1 = (u8) var_a3_3->unk-1;
                        } while (var_a7_4 != sp0);
                    }
                }
            }
            temp_a2_3 = sp98->unk-62B8;
            temp_a1_2 = spC0 + 1;
            temp_a4_2 = sp40->unk98 + spD0;
            if (!(temp_a2_3->unk70000 & 2)) {
                do {

                } while (!(temp_a2_3->unk70000 & 2));
                spC0 = temp_a1_2;
                spD0 = temp_a4_2;
            }
            spD0 = temp_a4_2;
            spC0 = temp_a1_2;
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, var_a3_3, temp_a4_2, 0x70000);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_a2 = sp30 - 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_a2 != -1) {
                goto loop_22;
            }
        }
    }
}

void GetPixelsFloatPIO(void *arg0, void *arg1, s64 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6) {
    s64 spE8;
    s64 spE0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    f32 sp20;
    f32 sp18;
    f32 sp10;
    ? sp8;
    s32 sp0;
    ? *var_a2_4;
    ? *var_a2_5;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 var_f28;
    f32 var_f30;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_f6;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2_3;
    s32 var_s1;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s7;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_4;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_t3;
    s64 temp_a1;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_a3_4;
    s64 temp_t8;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_s3;
    s64 var_t0_3;
    s64 var_t1_4;
    u32 temp_t3;
    u32 var_t1;
    void *temp_a1_2;
    void *temp_t1;

    var_f30 = saved_reg_f30;
    temp_t0 = arg1->unk38;
    sp48 = (s64) arg1;
    spA8 = arg2;
    temp_f4 = arg1->unk4C;
    temp_f5 = temp_f4 * (f32) ((u64) ((s64) temp_t0 << 0x20) >> 0x20);
    var_s7 = arg4;
    sp80 = arg5;
    sp38 = arg6;
    temp_t1 = arg0->unk9D48;
    if (!(temp_f5 > 8.0f)) {
        temp_a3 = sp48->unk28;
        if ((temp_a3 != 0x1900) && (temp_a3 != 0x1901)) {
            var_f28 = 2.3283067e-10f;
            var_s1 = -0x100;
        } else {
            var_f28 = 1.0f;
            var_s1 = 0xFFF;
        }
        if (sp80 != 1) {
            sp88 = (s64) temp_t1;
            sp70 = 0;
        } else {
            sp88 = (s64) temp_t1;
            sp80 = 2;
            sp70 = 1;
            sp0 = (s32) ((f64) temp_f5 + 0.875);
        }
        temp_f6 = (s32) ((f64) ((f32) ((u64) ((sp80 * temp_t0) << 0x20) >> 0x20) * temp_f4) + (second half of f64));
        temp_a3_2 = (arg3 + sp80) - 1;
        sp40 = temp_a3_2;
        sp78 = (s64) temp_f6;
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3_2, temp_f6);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        var_a2 = sp38 - 1;
        if (var_a2 != -1) {
            spB8 = sp40 << 0x10;
            spB0 = arg3 << 0x10;
loop_22:
            var_s3 = spA8;
            if (sp70 != 0) {
                var_s3 = (s64) &sp8;
                sp38 = var_a2;
                sp80 = 2;
            } else {
                sp38 = var_a2;
            }
            temp_t8 = var_s3 & 3;
            spE0 = temp_t8;
            var_s3_2 = -4 & var_s3;
            var_s4 = sp78 + temp_t8;
            temp_a3_3 = var_s4 & 7;
            sp90 = temp_a3_3;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1, temp_a3_3, 0xDA00);
            temp_a1 = (sp80 & 0xFFFF) | 0x10000;
            spE8 = temp_a1;
            temp_a6 = (spE0 & 7) << 8;
            temp_a5 = (arg0->unk97E4 & ~0x700) | temp_a6;
            temp_a4 = 0xFFFE3FFF & temp_a5;
            arg0->unk97E4 = temp_a4;
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1, SYMBOL_LOCATION.unk54, 1, temp_a4, temp_a5, temp_a6);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, spB0 | var_s7, SYMBOL_LOCATION.unk68, 0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, spB8 | var_s7, SYMBOL_LOCATION.unk6C, 1);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = arg0->unk9688;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a2_2 = sp90;
            if (!(sp88->unk70000 & 1)) {
                do {

                } while (!(sp88->unk70000 & 1));
            }
            if (!(sp88->unk7C578 & 0x100)) {
                do {

                } while (!(sp88->unk7C578 & 0x100));
            }
            temp_t2 = var_a2_2 * 8;
            if (spE0 != 0) {
                var_t0 = -1;
                temp_t3 = -1U >> (spE0 * 8);
                var_t1 = temp_t3;
                if (sp78 < (8 - spE0)) {
                    var_t0 = 0;
                    if (var_a2_2 < 5) {
                        var_t1 = (-1 << (0x20 - temp_t2)) & temp_t3;
                    } else {
                        var_t0 = -1 << (0x40 - temp_t2);
                    }
                    var_a2_2 = 0;
                }
                var_s4 -= 8;
                sp10 = (f32) ((u64) ((var_s1 & sp88->unk7D1C0) << 0x20) >> 0x20) * var_f28;
                var_s3_2->unk0 = (s32) ((var_s3_2->unk4 & ~var_t1) | ((bitwise s32) sp10 & var_t1));
                var_s3_2 += 8;
                sp10 = (f32) ((u64) ((var_s1 & sp88->unk7C1C4) << 0x20) >> 0x20) * var_f28;
                var_s3_2->unk-4 = (s32) ((var_s3_2->unk0 & ~var_t0) | ((bitwise s32) sp10 & var_t0));
            }
            if (var_s4 >= 8) {
                temp_t0_2 = (s32) (((u32) (var_s4 >> 2) >> 0x1D) + var_s4) >> 3;
                var_t1_2 = var_s4;
                if (temp_t0_2 & 1) {
                    sp18 = (f32) ((u64) ((var_s1 & sp88->unk7D1C0) << 0x20) >> 0x20) * var_f28;
                    *var_s3_2 = sp18;
                    var_f30 = (f32) ((u64) ((var_s1 & sp88->unk7C1C4) << 0x20) >> 0x20) * var_f28;
                    sp18 = var_f30;
                    var_s3_2 += 8;
                    var_s3_2->unk-4 = sp18;
                    var_t1_2 = var_s4 - 8;
                }
                if ((temp_t0_2 >> 1) != 0) {
                    var_t0_2 = var_t1_2;
                    var_a1 = var_s3_2;
                    do {
                        sp18 = (f32) ((u64) ((var_s1 & sp88->unk7D1C0) << 0x20) >> 0x20) * var_f28;
                        var_a1->unk0 = sp18;
                        sp18 = (f32) ((u64) ((var_s1 & sp88->unk7C1C4) << 0x20) >> 0x20) * var_f28;
                        var_a1->unk4 = sp18;
                        sp18 = (f32) ((u64) ((var_s1 & sp88->unk7D1C0) << 0x20) >> 0x20) * var_f28;
                        var_a1->unk8 = sp18;
                        temp_f4_2 = (f32) ((u64) ((var_s1 & sp88->unk7C1C4) << 0x20) >> 0x20) * var_f28;
                        var_a1 += 0x10;
                        sp18 = temp_f4_2;
                        var_t0_2 -= 0x10;
                        var_a1->unk-4 = sp18;
                    } while (var_t0_2 >= 8);
                    var_f30 = temp_f4_2;
                    var_s3_2 = var_a1;
                }
                sp18 = var_f30;
            }
            var_a1_2 = -1;
            if (var_a2_2 != 0) {
                temp_t2_2 = var_a2_2 * 8;
                var_a2_3 = 0;
                if (var_a2_2 < 5) {
                    var_a1_2 = -1 << (0x20 - temp_t2_2);
                } else {
                    var_a2_3 = -1 << (0x40 - temp_t2_2);
                }
                sp20 = (f32) ((u64) ((var_s1 & sp88->unk7D1C0) << 0x20) >> 0x20) * var_f28;
                var_s3_2->unk0 = (s32) ((var_s3_2->unk4 & ~var_a1_2) | ((bitwise s32) sp20 & var_a1_2));
                sp20 = (f32) ((u64) ((var_s1 & sp88->unk7C1C4) << 0x20) >> 0x20) * var_f28;
                var_s3_2->unk4 = (s32) ((var_s3_2->unk8 & ~var_a2_3) | ((bitwise s32) sp20 & var_a2_3));
            }
            var_t0_3 = spA8;
            var_a1_3 = sp0 & 3;
            var_a2_4 = &sp8;
            if (sp70 != 0) {
                var_t1_3 = 0;
                if (sp0 > 0) {
                    var_t3 = 0;
                    if (var_a1_3 != 0) {
                        do {
                            var_t1_3 += 1;
                            var_t0_3 += 1;
                            var_a2_4 += 1;
                            var_a1_3 -= 1;
                            var_t0_3->unk-1 = (u8) var_a2_4->unk-1;
                        } while (var_a1_3 != 0);
                        var_t3 = var_t1_3;
                    }
                    if ((sp0 >> 2) != 0) {
                        var_t0_4 = var_t3;
                        var_t1_4 = var_t0_3;
                        var_a2_5 = var_a2_4;
                        do {
                            var_t1_4->unk0 = (u8) var_a2_5->unk0;
                            var_t1_4->unk1 = (u8) var_a2_5->unk1;
                            var_t1_4 += 4;
                            var_t1_4->unk-2 = (u8) var_a2_5->unk2;
                            var_a2_5 += 4;
                            var_t0_4 += 4;
                            var_t1_4->unk-1 = (u8) var_a2_5->unk-1;
                        } while (var_t0_4 != sp0);
                    }
                }
            }
            temp_a1_2 = arg0->unk9D48;
            var_s7 += 1;
            temp_a3_4 = sp48->unk98 + spA8;
            if (!(temp_a1_2->unk70000 & 2)) {
                do {

                } while (!(temp_a1_2->unk70000 & 2));
                spA8 = temp_a3_4;
            }
            spA8 = temp_a3_4;
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, temp_a3_4, 0x70000, 0xDB04);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_a2 = sp38 - 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_a2 != -1) {
                goto loop_22;
            }
        }
    }
}

void GetPixelsPackedPIO(s64 arg0, void *arg1, s64 arg2, s64 arg3, s32 arg4, s64 arg5, s32 arg6) {
    s64 sp40A0;
    s64 sp4098;
    s64 sp4090;
    s64 sp4068;
    s64 sp4060;
    s64 sp4058;
    s64 sp4050;
    s64 sp4018;
    s64 sp4010;
    s64 sp4008;
    s64 sp4000;
    __GLcontext *var_a4;
    __GLcontext *var_a6;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_s7;
    s32 temp_t1;
    s32 var_s5;
    s32 var_s6;
    s64 var_a6_2;
    s64 var_s0;
    s64 var_t2;
    u8 temp_a4;
    void *temp_v0;
    void *temp_v1;

    sp4060 = arg0;
    sp4050 = (s64) arg1;
    sp4018 = arg2;
    var_s5 = arg4;
    var_s0 = arg5;
    temp_v0 = arg0->unk9D48;
    if (!((arg1->unk4C * (f32) ((u64) ((s64) arg1->unk38 << 0x20) >> 0x20)) > 8.0f)) {
        if (var_s0 == 1) {
            sp4000 = (s64) temp_v0;
            sp4008 = arg3;
            var_s0 = 2;
            sp4068 = 1;
        } else {
            sp4000 = (s64) temp_v0;
            sp4008 = arg3;
            sp4068 = 0;
        }
        getbasetype(sp4050->unk28, sp4050->unk34);
        temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        __glBytesPerElement(M2C_ERROR(/* Read from unset register $v0 */));
        sp4058 = (s64) (s32) ((f32) var_s0 * ((f32) ((u64) ((s64) sp4050->unk38 << 0x20) >> 0x20) * M2C_ERROR(/* Read from unset register $f0 */)));
        if (temp_s1 != 0x1401) {
            if (temp_s1 == 0x1403) {
                arg0->unk97E4 = (s32) ((((arg0->unk97E4 & ~0x1C000) | (((8 - ((var_s0 * 2) & 7)) & 7 & 7) << 0xE)) & ~0xF) | 1);
            }
        } else {
            arg0->unk97E4 = (s32) (((arg0->unk97E4 & ~0x1C000) | (((8 - (var_s0 & 7)) & 7 & 7) << 0xE)) & ~0xF);
        }
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        sp4090 = var_s0;
        var_s6 = arg6 - 1;
        if (var_s6 != -1) {
            sp4098 = sp4008 << 0x10;
            sp4010 = sp4058 + 7;
            temp_s7 = (sp4090 & 0xFFFF) | 0x10000;
            sp40A0 = ((sp4008 + sp4090) - 1) << 0x10;
loop_22:
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1);
            arg0->unk97E4 = (s32) (0xFFFE3FFF & (arg0->unk97E4 & ~0x700));
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_s7, SYMBOL_LOCATION.unk54, 1);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_s7, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, sp4098 | var_s5, SYMBOL_LOCATION.unk68, 0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, sp40A0 | var_s5, SYMBOL_LOCATION.unk6C, 1);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = arg0->unk9688;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a6 = sp;
            if (!(sp4000->unk70000 & 1)) {
                do {

                } while (!(sp4000->unk70000 & 1));
            }
            if (!(sp4000->unk7C578 & 0x100)) {
                do {

                } while (!(sp4000->unk7C578 & 0x100));
            }
            if (sp4058 > 0) {
                temp_t1 = (s32) (((u32) (sp4010 >> 2) >> 0x1D) + sp4010) >> 3;
                var_t2 = sp4058;
                if (temp_t1 & 1) {
                    sp->imports.malloc = sp4000->unk7D1C0;
                    var_a6 = sp + 8;
                    var_a6->unk-4 = (s32) sp4000->unk7C1C4;
                    var_t2 = sp4058 - 8;
                }
                if ((temp_t1 >> 1) != 0) {
                    var_a6_2 = var_t2;
                    var_a4 = var_a6;
                    do {
                        var_a4->imports.malloc = sp4000->unk7D1C0;
                        var_a4->imports.calloc = sp4000->unk7C1C4;
                        var_a4->imports.realloc = sp4000->unk7D1C0;
                        var_a4 += 0x10;
                        var_a6_2 -= 0x10;
                        var_a4->unk-4 = (void *(*)(__GLcontext *, u32, u32)) sp4000->unk7C1C4;
                    } while (var_a6_2 > 0);
                }
            }
            temp_a2 = sp4050->unk34;
            temp_a4 = sp4060->unk430;
            if (sp4068 != 0) {
                __glMgr_PackPixels(sp, sp, sp4018, temp_a2, 1, temp_a4);
            } else {
                __glMgr_PackPixels(sp, sp, sp4018, temp_a2, sp4090, temp_a4);
            }
            temp_v1 = arg0->unk9D48;
            var_s5 += 1;
            sp4018 += sp4050->unk98;
            if (!(temp_v1->unk70000 & 2)) {
                do {

                } while (!(temp_v1->unk70000 & 2));
            }
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_s6 -= 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_s6 != -1) {
                goto loop_22;
            }
        }
    }
}

void GetPixelsBitmapPIO(s64 arg0, void *arg1, s64 arg2, s64 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s64 sp4098;
    s64 sp4090;
    s64 sp4088;
    s64 sp4060;
    s64 sp4058;
    s64 sp4050;
    s64 sp4018;
    s64 sp4010;
    s64 sp4008;
    s64 sp4000;
    __GLcontext *var_a3;
    __GLcontext *var_a3_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s7;
    s32 var_s8;
    s32 var_v0;
    u8 temp_a4_3;
    void *temp_a7;
    void *temp_t0;

    sp4058 = arg0;
    sp4050 = (s64) arg1;
    sp4010 = arg2;
    var_s5 = arg4;
    var_s7 = arg5;
    temp_t0 = arg0->unk9D48;
    if (!((arg1->unk4C * (f32) ((u64) ((s64) arg1->unk38 << 0x20) >> 0x20)) > 8.0f)) {
        if (var_s7 == 1) {
            sp4000 = (s64) temp_t0;
            sp4008 = arg3;
            var_s7 = 2;
            sp4060 = 1;
        } else {
            sp4000 = (s64) temp_t0;
            sp4008 = arg3;
            sp4060 = 0;
        }
        temp_a4 = var_s7 & 7;
        arg0->unk97E4 = (s32) (((arg0->unk97E4 & 0xFFFE3FFF) | (((8 - temp_a4) & 7 & 7) << 0xE)) & ~0xF);
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, -0x10, temp_a4);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        var_s8 = arg6 - 1;
        if (var_s8 != -1) {
            sp4018 = var_s7 + 7;
            sp4090 = ((sp4008 + var_s7) - 1) << 0x10;
            sp4088 = sp4008 << 0x10;
            sp4098 = (var_s7 & 0xFFFF) | 0x10000;
loop_20:
            var_s6 = var_s7;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1);
            arg0->unk97E4 = (s32) (0xFFFE3FFF & (arg0->unk97E4 & ~0x700));
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, sp4098, SYMBOL_LOCATION.unk54, 1);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, sp4098, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, sp4088 | var_s5, SYMBOL_LOCATION.unk68, 0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, sp4090 | var_s5, SYMBOL_LOCATION.unk6C, 1);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = arg0->unk9688;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a3 = sp;
            if (!(sp4000->unk70000 & 1)) {
                do {

                } while (!(sp4000->unk70000 & 1));
            }
            if (!(sp4000->unk7C578 & 0x100)) {
                do {

                } while (!(sp4000->unk7C578 & 0x100));
            }
            if (var_s7 > 0) {
                temp_a4_2 = (s32) (((u32) (sp4018 >> 2) >> 0x1D) + sp4018) >> 3;
                var_v0 = temp_a4_2 >> 1;
                if (temp_a4_2 & 1) {
                    sp->imports.malloc = sp4000->unk7D1C0;
                    var_s6 -= 8;
                    var_a3 = sp + 8;
                    var_a3->unk-4 = (s32) sp4000->unk7C1C4;
                    var_v0 = temp_a4_2 >> 1;
                }
                if (var_v0 != 0) {
                    var_a4 = var_s6;
                    var_a3_2 = var_a3;
                    do {
                        var_a3_2->imports.malloc = sp4000->unk7D1C0;
                        var_a3_2->imports.calloc = sp4000->unk7C1C4;
                        var_a3_2->imports.realloc = sp4000->unk7D1C0;
                        var_a3_2 += 0x10;
                        var_a4 -= 0x10;
                        var_a3_2->unk-4 = (void *(*)(__GLcontext *, u32, u32)) sp4000->unk7C1C4;
                    } while (var_a4 > 0);
                }
            }
            temp_a4_3 = sp4058->unk431;
            temp_a3 = sp4058->unk43C;
            if (sp4060 != 0) {
                __glMgr_PackBitmap(sp, sp, sp4010, 1, temp_a3, temp_a4_3);
            } else {
                __glMgr_PackBitmap(sp, sp, sp4010, var_s7, temp_a3, temp_a4_3);
            }
            temp_a7 = arg0->unk9D48;
            var_s5 += 1;
            sp4010 += sp4050->unk98;
            if (!(temp_a7->unk70000 & 2)) {
                do {

                } while (!(temp_a7->unk70000 & 2));
            }
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_s8 -= 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_s8 != -1) {
                goto loop_20;
            }
        }
    }
}

void GetPixelsLuminancePIO(void *arg0, void *arg1, s64 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, s32 arg7) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp48;
    s64 sp18;
    s64 sp10;
    ? sp8;
    s32 sp0;
    ? *temp_t3;
    ? *var_a1_4;
    ? *var_a6_4;
    ? *var_a7_3;
    f32 temp_f4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_s8;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 var_a1_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a7_2;
    s32 var_s0;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_t1;
    s32 var_t1_2;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a2;
    s64 temp_a3;
    s64 var_a1;
    s64 var_a1_3;
    s64 var_a2;
    s64 var_a7_4;
    s64 var_at;
    s64 var_s3;
    u32 temp_t0;
    u32 var_a7;
    void *temp_a1_3;
    void *temp_t1;

    temp_f4 = arg1->unk4C * (f32) ((u64) ((s64) arg1->unk38 << 0x20) >> 0x20);
    var_s0 = arg4;
    sp58 = arg5;
    temp_t1 = arg0->unk9D48;
    if (!(temp_f4 > 8.0f)) {
        if (sp58 != 1) {
            sp48 = 0;
        } else {
            sp58 = 2;
            sp48 = 1;
            sp0 = (s32) ((f64) temp_f4 + 0.875);
        }
        temp_a1 = (arg3 + sp58) - 1;
        if (arg7 != 0) {
            spB0 = arg6;
            sp18 = (s64) temp_t1;
            sp10 = temp_a1;
            var_at = sp58 * 0x10;
        } else {
            spB0 = arg6;
            sp18 = (s64) temp_t1;
            sp10 = temp_a1;
            var_at = sp58 * 0xC;
        }
        sp70 = var_at;
        sp68 = arg2;
        __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0);
        __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
        var_a2 = spB0 - 1;
        if (spB0 != 0) {
            sp78 = sp10 << 0x10;
            sp80 = arg3 << 0x10;
loop_20:
            var_s3 = sp68;
            if (sp48 != 0) {
                var_s3 = (s64) &sp8;
                spB8 = var_a2;
                sp58 = 2;
            } else {
                spB8 = var_a2;
            }
            temp_s8 = var_s3 & 3;
            var_s3_2 = -4 & var_s3;
            var_s4 = sp70 + temp_s8;
            temp_a3 = var_s4 & 7;
            sp60 = temp_a3;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 1, 1, temp_a3, 0xDA00);
            temp_a1_2 = (sp58 & 0xFFFF) | 0x10000;
            spA8 = temp_a1_2;
            temp_a6 = (temp_s8 & 7) << 8;
            temp_a5 = (arg0->unk97E4 & ~0x700) | temp_a6;
            temp_a4 = 0xFFFE3FFF & temp_a5;
            arg0->unk97E4 = temp_a4;
            __glMgrRSSRegShadow((__GLcontext *)0x153, 0x153, temp_a1_2, SYMBOL_LOCATION.unk54, 1, temp_a4, temp_a5, temp_a6);
            __glMgrRSSRegSet((__GLcontext *)0x158, 0x158, temp_a1_2, 0);
            __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, arg0->unk97E4, 1);
            __glMgrRSSRegShadow((__GLcontext *)0x46, 0x46, sp80 | var_s0, SYMBOL_LOCATION.unk68, 0);
            __glMgrRSSRegShadow((__GLcontext *)0x47, 0x47, sp78 | var_s0, SYMBOL_LOCATION.unk6C, 1);
            *(s32 *)0x74080 = 0xDB04;
            *(s32 *)0x74080 = arg0->unk9688;
            *(s32 *)0x74080 = 0x8F08;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            var_a1 = sp60;
            if (!(sp18->unk70000 & 1)) {
                do {

                } while (!(sp18->unk70000 & 1));
            }
            if (!(sp18->unk7C578 & 0x100)) {
                do {

                } while (!(sp18->unk7C578 & 0x100));
            }
            temp_t1_2 = var_a1 * 8;
            if (temp_s8 != 0) {
                var_a6 = -1;
                temp_t0 = -1U >> (temp_s8 * 8);
                var_a7 = temp_t0;
                if (sp70 < (8 - temp_s8)) {
                    var_a6 = 0;
                    if (var_a1 < 5) {
                        var_a7 = (-1 << (0x20 - temp_t1_2)) & temp_t0;
                    } else {
                        var_a6 = -1 << (0x40 - temp_t1_2);
                    }
                    var_a1 = 0;
                }
                var_s4 -= 8;
                var_s3_2->unk0 = (s32) ((sp18->unk7D1C0 & var_a7) | (var_s3_2->unk4 & ~var_a7));
                var_s3_2 += 8;
                var_s3_2->unk-4 = (s32) ((sp18->unk7C1C4 & var_a6) | (var_s3_2->unk0 & ~var_a6));
            }
            if (var_s4 >= 8) {
                temp_a6_2 = (s32) (((u32) (var_s4 >> 2) >> 0x1D) + var_s4) >> 3;
                var_a7_2 = var_s4;
                if (temp_a6_2 & 1) {
                    *var_s3_2 = (s32) sp18->unk7D1C0;
                    var_s3_2 += 8;
                    var_s3_2->unk-4 = (s32) sp18->unk7C1C4;
                    var_a7_2 = var_s4 - 8;
                }
                if ((temp_a6_2 >> 1) != 0) {
                    var_t1 = var_a7_2;
                    var_a6_2 = var_s3_2;
                    do {
                        var_a6_2->unk0 = (s32) sp18->unk7D1C0;
                        var_a6_2->unk4 = (s32) sp18->unk7C1C4;
                        var_a6_2 += 0x10;
                        var_a6_2->unk-8 = (s32) sp18->unk7D1C0;
                        var_t1 -= 0x10;
                        var_a6_2->unk-4 = (s32) sp18->unk7C1C4;
                    } while (var_t1 >= 8);
                    var_s3_2 = var_a6_2;
                }
            }
            temp_t1_3 = var_a1 * 8;
            if (var_a1 != 0) {
                var_a6_3 = -1;
                if (var_a1 < 5) {
                    var_a1_2 = 0;
                    var_a6_3 = -1 << (0x20 - temp_t1_3);
                } else {
                    var_a1_2 = -1 << (0x40 - temp_t1_3);
                }
                var_s3_2->unk0 = (s32) ((sp18->unk7D1C0 & var_a6_3) | (var_s3_2->unk4 & ~var_a6_3));
                var_s3_2->unk4 = (s32) ((sp18->unk7C1C4 & var_a1_2) | (var_s3_2->unk8 & ~var_a1_2));
            }
            var_a1_3 = sp68;
            var_t1_2 = sp0 & 3;
            var_a6_4 = &sp8;
            if (sp48 != 0) {
                var_a7_3 = NULL;
                if (sp0 > 0) {
                    if (var_t1_2 != 0) {
                        do {
                            var_a7_3 += 1;
                            var_a1_3 += 1;
                            var_a6_4 += 1;
                            var_t1_2 -= 1;
                            var_a1_3->unk-1 = (u8) var_a6_4->unk-1;
                        } while (var_t1_2 != 0);
                    }
                    temp_t3 = var_a6_4;
                    if ((sp0 >> 2) != 0) {
                        var_a6_4 = var_a7_3;
                        var_a7_4 = var_a1_3;
                        var_a1_4 = temp_t3;
                        do {
                            var_a7_4->unk0 = (u8) var_a1_4->unk0;
                            var_a7_4->unk1 = (u8) var_a1_4->unk1;
                            var_a7_4 += 4;
                            var_a7_4->unk-2 = (u8) var_a1_4->unk2;
                            var_a1_4 += 4;
                            var_a6_4 += 4;
                            var_a7_4->unk-1 = (u8) var_a1_4->unk-1;
                        } while (var_a6_4 != sp0);
                    }
                }
            }
            temp_a1_3 = arg0->unk9D48;
            var_s0 += 1;
            temp_a2 = sp70 + sp68;
            if (!(temp_a1_3->unk70000 & 2)) {
                do {

                } while (!(temp_a1_3->unk70000 & 2));
                sp68 = temp_a2;
            }
            sp68 = temp_a2;
            *(s32 *)0x74080 = 0xA0704;
            *(s32 *)0x74080 = 0;
            __glMgrRSSRegSet((__GLcontext *)0xC, 0xC, 0, 0, 0x8F08, 0x70000, 0xDB04, var_a6_4);
            __glMgrRSSRegSet((__GLcontext *)0x15F, 0x15F, 0, 1);
            var_a2 = spB8 - 1;
            *(s32 *)0x74080 = 0xDA00;
            if (var_a2 != -1) {
                goto loop_20;
            }
        }
    }
}

void __glMgrRE4DMARd(__GLcontext *gc, void *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, ...) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    u32 temp_a0_2;
    u8 var_a7;

    sp10 = arg6;
    sp8 = arg5;
    sp28 = arg4;
    sp20 = arg3;
    sp18 = arg2;
    sp0 = (s64) gc;
    __glMgrim_Finish();
    temp_a0 = arg1->unk28;
    if (temp_a0 != 0x1909) {
        if (temp_a0 != 0x190A) {
            temp_a0_2 = arg1->unk34;
            var_a7 = temp_a0_2 < 0x1406U;
            if (var_a7 == 0) {
                if (temp_a0_2 >= 0x1407U) {
                    if (temp_a0_2 >= 0x8034U) {
                        if (temp_a0_2 <= 0x8034U) {
                            goto block_6;
                        }
                        if (temp_a0_2 >= 0x8036U) {
                            if (temp_a0_2 <= 0x8036U) {
                                goto block_6;
                            }
                        } else {
                            var_a7 = 0x8035;
                            if (temp_a0_2 == 0x8035) {
                                goto block_6;
                            }
                        }
                    } else {
                        var_a7 = temp_a0_2 < 0x8032U;
                        if (var_a7 == 0) {
                            if (temp_a0_2 > 0x8032U) {
                                if (temp_a0_2 == 0x8033) {
                                    goto block_6;
                                }
                            } else {
block_6:
                                PackFloatData((__GLcontext *) sp0, arg1, sp18, sp20, sp28, sp8, sp10, var_a7);
                            }
                        } else if (temp_a0_2 == 0x1A00) {
                            PackFloatData((__GLcontext *) sp0, arg1, sp18, sp20, sp28, sp8, sp10, var_a7);
                        }
                    }
                } else {
                    PackFloatData((__GLcontext *) sp0, arg1, sp18, sp20, sp28, sp8, sp10, var_a7);
                }
            } else if (temp_a0_2 >= 0x1403U) {
                var_a7 = temp_a0_2 < 0x1405U;
                if (temp_a0_2 < 0x1404U) {
                    goto block_9;
                }
                if (var_a7 == 0) {
                    if (temp_a0_2 < 0x1406U) {
                        goto block_9;
                    }
                } else if (temp_a0_2 == 0x1404) {
                    goto block_9;
                }
            } else {
                switch (temp_a0_2) {                /* irregular */
                case 0x1402:
block_9:
                    PackFloatData((__GLcontext *) sp0, arg1, sp18, sp20, sp28, sp8, sp10, var_a7);
                    break;
                case 0x1400:
                    goto block_9;
                }
            }
            return;
        }
        PackFloatData((__GLcontext *) sp0, arg1, sp18, sp20, sp28, sp8, sp10, 1U);
        return;
    }
    PackFloatData((__GLcontext *) sp0, arg1, sp18, sp20, sp28, sp8, sp10, 0U);
}

void __glMgrRE4PIORd(__GLcontext *gc, void *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, ...) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    u32 temp_v0_2;
    u8 temp_a7;
    u8 temp_a7_2;
    u8 var_a7;

    sp10 = arg6;
    sp8 = arg5;
    sp20 = arg4;
    sp18 = arg3;
    sp0 = arg2;
    __glMgrim_Finish();
    temp_v0 = arg1->unk28;
    if (temp_v0 != 0x1909) {
        if (temp_v0 == 0x190A) {
            PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, 1U);
            return;
        }
        temp_v0_2 = arg1->unk34;
        if (temp_v0_2 >= 0x1406U) {
            if (temp_v0_2 >= 0x1407U) {
                var_a7 = temp_v0_2 > 0x8034U;
                if (temp_v0_2 >= 0x8034U) {
                    if (var_a7 != 0) {
                        if (temp_v0_2 >= 0x8036U) {
                            if (temp_v0_2 <= 0x8036U) {
                                goto block_10;
                            }
                        } else if (temp_v0_2 == 0x8035) {
                            goto block_10;
                        }
                    } else {
                        goto block_10;
                    }
                } else if (temp_v0_2 >= 0x8032U) {
                    var_a7 = 0x8033;
                    if (temp_v0_2 > 0x8032U) {
                        if (temp_v0_2 == 0x8033) {
                            goto block_10;
                        }
                    } else {
block_10:
                        PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, var_a7);
                    }
                } else if (temp_v0_2 == 0x1A00) {
                    PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, var_a7);
                }
            } else if (gc->unk430 != 0) {
                PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, 0x190AU);
            } else {
                PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, 0x190AU);
            }
        } else if (temp_v0_2 >= 0x1403U) {
            if (temp_v0_2 < 0x1404U) {
                goto block_13;
            }
            temp_a7 = temp_v0_2 < 0x1406U;
            if (temp_v0_2 >= 0x1405U) {
                if (temp_a7 != 0) {
                    goto block_26;
                }
            } else if (temp_v0_2 == 0x1404) {
block_26:
                if (gc->unk430 != 0) {
                    PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, temp_a7);
                } else {
                    PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, temp_a7);
                }
            }
        } else {
            switch (temp_v0_2) {                    /* irregular */
            default:
block_21:
                PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, 0x190AU);
                break;
            case 0x1400:
                goto block_21;
            case 0x1402:
block_13:
                temp_a7_2 = gc->unk430;
                if (temp_a7_2 != 0) {
                    PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, temp_a7_2);
                } else {
                    PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, temp_a7_2);
                }
                break;
            }
        }
        return;
    }
    PackFloatData(gc, arg1, sp10, sp0, sp18, sp20, sp8, 0U);
}

void __glMgr_AltWriteDMAHQSetup(__GLcontext *gc, u32 arg1, u32 arg2, u32 arg3, s32 arg4, u32 arg5, u32 arg6, u32 arg7, s32 arg_sp4, ...) {
    s32 temp_a0;
    u32 temp_lo;
    u32 var_a3;
    u32 var_t1;
    u32 var_t2;
    void *temp_t8;

    var_a3 = arg3;
    var_t2 = arg5;
    var_t1 = arg2;
    if (!(arg2 & 7)) {
        if (arg2 == var_a3) {
            temp_lo = arg2 * arg5;
            if (temp_lo <= 0xFFFFFU) {
                var_t1 = temp_lo;
                var_t2 = 1;
            } else if (!(arg5 & 1) && (arg2 <= 0x7FFFFU)) {
loop_11:
                var_t2 = var_t2 >> 1;
                var_t1 *= 2;
                if (!(var_t2 & 1)) {
                    if (var_t1 <= 0x7FFFFU) {
                        goto loop_11;
                    }
                }
            }
            var_a3 = var_t1;
        }
    }
    temp_t8 = gc->unk9D48;
    *(u32 *)0x74080 = 0xF200;
    if (!(temp_t8->unk70000 & 1)) {
        do {

        } while (!(temp_t8->unk70000 & 1));
    }
    temp_a0 = (arg_sp4 * 2) | 0xB1;
    *(u32 *)0x74080 = 0xA0204;
    *(u32 *)0x74080 = arg2;
    *(u32 *)0x74080 = 0xA0304;
    *(u32 *)0x74080 = (arg4 & 0xFFFF) | (arg5 << 0x10);
    *(u32 *)0x74080 = 0xA0404;
    *(u32 *)0x74080 = arg6;
    *(u32 *)0x74080 = 0xA0604;
    *(u32 *)0x74080 = 0xC;
    *(u32 *)0x74080 = 0xA0504;
    *(u32 *)0x74080 = arg7;
    *(u32 *)0x74080 = 0x80004;
    *(u32 *)0x74080 = 0x80000000;
    *(u32 *)0x74080 = 0x80404;
    *(u32 *)0x74080 = var_a3;
    *(u32 *)0x74080 = 0x80504;
    *(u32 *)0x74080 = 0;
    *(u32 *)0x74080 = 0x80604;
    *(u32 *)0x74080 = arg1;
    *(u32 *)0x74080 = 0x80704;
    *(u32 *)0x74080 = var_t2;
    *(u32 *)0x74080 = 0x80804;
    *(u32 *)0x74080 = var_t1;
    *(u32 *)0x74080 = 0x80B04;
    temp_t8->unk7000C = 0x10000;
    __glMgrim_pipe((__GLcontext *) temp_a0, temp_a0, 0xE0400, __glMgrim_pipe, 0x10000, 0x80B04, 0x80804, 0x80704, 0x80604);
    __glMgrWaitForDMAWrite(gc, gc);
    *(u32 *)0x74080 = 0xA0704;
    *(u32 *)0x74080 = 0;
}
