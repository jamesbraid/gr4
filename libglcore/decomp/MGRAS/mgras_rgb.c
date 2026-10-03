typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[8];                     /* maybe part of gcState[3]? */
    /* 0x00A0 */ void *unkA0;                       /* inferred */
    /* 0x00A4 */ void *unkA4;                       /* inferred */
    /* 0x00A8 */ void *unkA8;                       /* inferred */
    /* 0x00AC */ void *unkAC;                       /* inferred */
    /* 0x00B0 */ void (*unkB0)(__GLcontext *, ...); /* inferred */
    /* 0x00B4 */ void (*unkB4)(__GLcontext *, ...); /* inferred */
    /* 0x00B8 */ void *unkB8;                       /* inferred */
    /* 0x00BC */ void *unkBC;                       /* inferred */
    /* 0x00C0 */ char padC0[8];                     /* maybe part of unkBC[3]? */
    /* 0x00C8 */ void (*unkC8)();                   /* inferred */
    /* 0x00CC */ char padCC[0xC];                   /* maybe part of unkC8[4]? */
    /* 0x00D8 */ void *unkD8;                       /* inferred */
    /* 0x00DC */ char padDC[0x58C];                 /* maybe part of unkD8[0x164]? */
    /* 0x0668 */ f32 unk668;                        /* inferred */
    /* 0x066C */ f32 unk66C;                        /* inferred */
    /* 0x0670 */ char pad670[0x5A0];                /* maybe part of unk66C[0x169]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x5F];                 /* maybe part of yInverted[0x60]? */
    /* 0x0D2C */ s32 unkD2C;                        /* inferred */
    /* 0x0D30 */ s32 unkD30;                        /* inferred */
    /* 0x0D34 */ char padD34[0x2058];               /* maybe part of unkD30[0x817]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x45F8];              /* maybe part of procs[0x16]? */
    /* 0x7718 */ s32 unk7718;                       /* inferred */
    /* 0x771C */ char pad771C[0x478];               /* maybe part of unk7718[0x11F]? */
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

typedef struct __GLexportsRec {
    /* 0x00 */ u8 (*destroyContext)(__GLcontext *);
    /* 0x04 */ u8 (*loseCurrent)(__GLcontext *);
    /* 0x08 */ u8 (*makeCurrent)(__GLcontext *);
    /* 0x0C */ u8 (*shareContext)(__GLcontext *, __GLcontext *);
    /* 0x10 */ u8 (*copyContext)(__GLcontext *, __GLcontext *, u32);
    /* 0x14 */ u8 (*forceCurrent)(__GLcontext *);
    /* 0x18 */ u8 (*notifyResize)(__GLcontext *);
    /* 0x1C */ void (*notifyDestroy)(__GLcontext *);
    /* 0x20 */ void (*notifySwapBuffers)(__GLcontext *);
    /* 0x24 */ void *(*dispatchExec)(__GLcontext *);
    /* 0x28 */ void (*beginDispatchOverride)(__GLcontext *);
    /* 0x2C */ void (*endDispatchOverride)(__GLcontext *);
    /* 0x30 */ s32 unk30;                           /* inferred */
    /* 0x34 */ f32 unk34;                           /* inferred */
    /* 0x38 */ s32 unk38;                           /* inferred */
    /* 0x3C */ char pad3C[0xC];                     /* maybe part of unk38[4]? */
} __GLexports;                                      /* size = 0x48 */

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
    /* 0x3C */ char pad3C[0xC];                     /* maybe part of other[4]? */
    /* 0x48 */ s32 unk48;                           /* inferred */
} __GLimports;                                      /* size = 0x4C */

extern ? __glMgr_DefaultPack;
extern ? __glMgr_DefaultUnpack;
extern ? sub_0da90000;

void Store(void *arg1) {
    __GLcontext *temp_s5;
    f32 temp_f12;
    f32 temp_f13;

    temp_s5 = __glCurrentContext;
    *(s32 *)0x74080 = 0x1600;
    __glMgrim_Color4fv(arg1 + 0xC);
    temp_f13 = (f32) (arg1->unk4 - temp_s5->unkD30);
    temp_f12 = (f32) (arg1->unk0 - temp_s5->unkD2C);
    if (temp_s5->unk7718 & 0x4000) {
        __glMgrim_Vertex3f(temp_f12, temp_f13, ((f32) ((u64) ((s64) arg1->unk8 << 0x20) >> 0x20) - temp_s5->unk66C) / temp_s5->unk668);
    } else {
        __glMgrim_Vertex2f(temp_f12, temp_f13);
    }
    *(void *)0x74080 = 0x2000;
}

void Clear(void) {
    *(s32 *)0x74080 = 0x1500;
}

void __glMgrReadSpan(__GLcontext *gc, s32 arg1, s32 arg2, void *arg3, s32 arg4, ...) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    ? sp20;
    void *sp1C;
    s32 sp14;
    s32 spC;
    s32 sp4;
    __GLcontext *temp_a0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    s32 *temp_a5;
    s32 *temp_at;
    s32 temp_s3_2;
    s32 temp_s4;
    s32 var_a0;
    s32 var_a3;
    s32 var_a6;
    s32 var_a7;
    void *(*temp_s3)(__GLcontext *, u32);
    void *var_a1;
    void *var_a1_2;
    void *var_a2;
    void *var_a2_2;

    var_a7 = 9;
    var_a6 = 0;
    sp58 = (s64) gc;
    temp_s3 = gc->imports.malloc;
    sp60 = (s64) temp_s3;
    sp20.unk20 = (s32) temp_s3->unk450;
    sp20.unk18 = (s64) temp_s3->unk448;
    sp20.unk10 = (s64) temp_s3->unk440;
    sp20.unk8 = (s64) temp_s3->unk438;
    sp20.unk0 = (s64) temp_s3->unk430;
    temp_s4 = arg2 - temp_s3->unkD30;
    temp_s3_2 = arg1 - temp_s3->unkD2C;
    do {
        temp_at = var_a6 + (temp_s3 + 0x430);
        temp_a5 = var_a6 + &__glMgr_DefaultPack;
        var_a6 += 4;
        var_a7 -= 1;
        *temp_at = *temp_a5;
    } while (var_a7 > 0);
    sp1C = arg3;
    temp_a0 = temp_s3 + 0x7BBC;
    sp14 = 0x1405;
    spC = 0x1908;
    sp4 = 0x1908;
    sp48 = (s64) temp_a0;
    __glMgrMakePixelDesc(temp_a0, temp_a0, 7, temp_s3_2, temp_s4, 0, 0, arg4, 1);
    if (temp_s3->unk7BBC != 0) {
        __glMgrMakeTiles((__GLcontext *) sp48, sp48, temp_s3);
        __glMgrMakePages((__GLcontext *) sp48, sp48, temp_s3);
    }
    sp50 = (s64) (temp_s3 + 0x10000);
    temp_s3->unk9D4C = 1;
    __glMgrDoReadPixels((__GLcontext *) temp_s3, temp_s3, temp_s3_2, temp_s4, arg4, 1, 0x1908, 0x1405, arg3);
    sp50->unk-62B4 = 0;
    sp60->unk430 = (s64) sp20.unk0;
    sp60->unk438 = (s64) sp20.unk8;
    sp60->unk450 = (s32) sp20.unk20;
    sp60->unk448 = (s64) sp20.unk18;
    sp60->unk440 = (s64) sp20.unk10;
    temp_f6 = (f32) ((f64) (second half of f64) * 2.3283064365386963e-10);
    var_a3 = 0;
    temp_f5 = (f32) ((f64) sp58->unk60 * 2.3283064365386963e-10);
    var_a2 = arg3;
    var_a1 = arg3;
    temp_f7 = (f32) (second half of f64);
    temp_f4 = (f32) (second half of f64);
    if (arg4 > 0) {
        if (arg4 & 1) {
            var_a1->unk0 = (f32) ((f32) ((u64) ((bitwise s64) var_a2->unk0 << 0x20) >> 0x20) * temp_f4);
            var_a1->unk4 = (f32) ((f32) ((u64) ((bitwise s64) var_a2->unk4 << 0x20) >> 0x20) * temp_f7);
            var_a1->unk8 = (f32) ((f32) ((u64) ((bitwise s64) var_a2->unk8 << 0x20) >> 0x20) * temp_f5);
            temp_f0 = (f32) ((u64) ((s64) var_a2->unkC << 0x20) >> 0x20) * temp_f6;
            var_a2 += 0x10;
            var_a1 += 0x10;
            var_a3 = 1;
            var_a1->unk-4 = temp_f0;
        }
        if ((arg4 >> 1) != 0) {
            var_a0 = var_a3;
            var_a2_2 = var_a1;
            var_a1_2 = var_a2;
            do {
                var_a2_2->unk0 = (f32) ((f32) ((u64) ((s64) var_a1_2->unk0 << 0x20) >> 0x20) * temp_f4);
                var_a2_2->unk4 = (f32) ((f32) ((u64) ((s64) var_a1_2->unk4 << 0x20) >> 0x20) * temp_f7);
                var_a2_2->unk8 = (f32) ((f32) ((u64) ((s64) var_a1_2->unk8 << 0x20) >> 0x20) * temp_f5);
                var_a2_2->unkC = (f32) ((f32) ((u64) ((s64) var_a1_2->unkC << 0x20) >> 0x20) * temp_f6);
                var_a2_2->unk10 = (f32) ((f32) ((u64) ((s64) var_a1_2->unk10 << 0x20) >> 0x20) * temp_f4);
                var_a2_2->unk14 = (f32) ((f32) ((u64) ((s64) var_a1_2->unk14 << 0x20) >> 0x20) * temp_f7);
                var_a2_2->unk18 = (f32) ((f32) ((u64) ((s64) var_a1_2->unk18 << 0x20) >> 0x20) * temp_f5);
                temp_f0_2 = (f32) ((u64) ((s64) var_a1_2->unk1C << 0x20) >> 0x20) * temp_f6;
                var_a1_2 += 0x20;
                var_a2_2 += 0x20;
                var_a0 += 2;
                var_a2_2->unk-4 = temp_f0_2;
            } while (arg4 != var_a0);
        }
    }
}

void __glMgrReturnSpan(__GLcontext *gc, s32 arg1, s32 arg2, void *arg3, s32 arg5, f32 fparg0, f32 fparg4, ? arg_sp0, ...) {
    s64 spB8;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    ? sp28;
    void *sp1C;
    s32 sp14;
    s32 spC;
    s32 sp4;
    __GLcontext *temp_s1;
    f32 temp_f10;
    f32 temp_f17;
    f32 temp_f7;
    f32 var_f12;
    f32 var_f14;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    s32 *temp_a2;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v1;
    s32 temp_a4;
    s32 temp_at;
    s32 temp_s6_2;
    s32 temp_s6_3;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s64 temp_a4_2;
    s64 temp_s6;
    s64 temp_t0;
    s64 temp_t1;
    void *(*temp_s0)(__GLcontext *, u32);
    void *var_a0;
    void *var_a7;

    var_f12 = fparg0;
    temp_s0 = gc->imports.malloc;
    var_a0 = arg3;
    temp_a4 = temp_s0->unkC44;
    temp_t0 = arg2 - temp_s0->unkD30;
    spB8 = (s64) temp_a4;
    temp_a4_2 = (1 << temp_a4) - 1;
    temp_t1 = arg1 - temp_s0->unkD2C;
    temp_t2 = temp_s0->unkC50;
    temp_f17 = (f32) temp_a4_2;
    temp_s6 = (1 << temp_t2) - 1;
    if (temp_t2 != 0) {
        sp58 = temp_a4_2;
        sp70 = temp_t0;
        sp78 = temp_t1;
        sp80 = (s64) temp_t2;
        var_f14 = (f32) temp_s6;
    } else {
        var_f14 = 255.0f;
        sp58 = temp_a4_2;
        sp70 = temp_t0;
        sp78 = temp_t1;
        sp80 = (s64) temp_t2;
    }
    var_a1 = arg5 - 1;
    sp68 = temp_s6;
    var_a7 = &arg_sp0 + 0xFFFF7FD0;
    temp_v0 = temp_s0->unkC4C;
    temp_at = temp_s0->unkC48;
    sp60 = (1 << temp_v0) - 1;
    if (arg5 != 0) {
        temp_f10 = fparg4 / 32767.0f;
        var_f12 = temp_f10 * temp_f17;
loop_9:
        var_f8 = (f32) var_a0->unk0 * (temp_f10 * temp_f17);
        temp_f7 = (f32) var_a0->unk2;
        var_f5 = (f32) var_a0->unk6 * (temp_f10 * var_f14);
        var_f6 = (f32) var_a0->unk4 * var_f12;
        var_a0 += 8;
        var_f7 = temp_f7 * (temp_f10 * temp_f17);
        if (var_f8 <= 0.0f) {
            var_f8 = 0.0f;
        } else if (temp_f17 < var_f8) {
            var_f8 = temp_f17;
        }
        if (!(var_f7 <= 0.0f)) {
            if (temp_f17 < var_f7) {
                var_f7 = temp_f17;
            }
        } else {
            var_f7 = 0.0f;
        }
        if (!(var_f6 <= 0.0f)) {
            if (temp_f17 < var_f6) {
                var_f6 = temp_f17;
            }
        } else {
            var_f6 = 0.0f;
        }
        var_a1 -= 1;
        if (var_f5 <= 0.0f) {
            var_f5 = 0.0f;
        } else if (var_f14 < var_f5) {
            var_f5 = var_f14;
        }
        var_a7->unk0 = (s32) ((((s64) (temp_s0->unkCD0 + var_f8) << 0) & sp58) << (0x20 - spB8));
        var_a7->unk4 = (s32) ((((s64) (temp_s0->unkCD0 + var_f7) << 0) & ((1 << temp_at) - 1)) << (0x20 - temp_at));
        var_a7->unk8 = (s32) ((((s64) (temp_s0->unkCD0 + var_f6) << 0) & sp60) << (0x20 - temp_v0));
        var_a7 += 0x10;
        var_a7->unk-4 = (s32) ((((s64) (temp_s0->unkCD0 + var_f5) << 0) & sp68) << (0x20 - sp80));
        if (var_a1 != -1) {
            goto loop_9;
        }
    }
    var_a1_2 = 9;
    var_a0_2 = 0;
    do {
        temp_at_2 = var_a0_2 + (temp_s0 + 0x454);
        temp_v0_2 = var_a0_2 + &sp28;
        var_a0_2 += 4;
        var_a1_2 -= 1;
        *temp_v0_2 = *temp_at_2;
    } while (var_a1_2 > 0);
    var_a1_3 = 9;
    var_a0_3 = 0;
    do {
        temp_v1 = var_a0_3 + (temp_s0 + 0x454);
        temp_v0_3 = var_a0_3 + &__glMgr_DefaultUnpack;
        var_a0_3 += 4;
        var_a1_3 -= 1;
        *temp_v1 = *temp_v0_3;
    } while (var_a1_3 > 0);
    temp_s1 = temp_s0 + 0x7BBC;
    temp_s6_2 = temp_s0->unk7D64;
    temp_s0->unk7D64 = 0x100E8F03;
    sp88 = (s64) temp_s6_2;
    temp_s6_3 = temp_s0->unk7D58;
    temp_s0->unk7D58 = 1;
    sp1C = &arg_sp0 + 0xFFFF7FD0;
    sp14 = 0x1405;
    spC = 0x1908;
    sp4 = 0x1908;
    __glMgrMakePixelDesc(temp_s1, temp_s1, 6, 0, 0, sp78, sp70, arg5, 1, var_f12, temp_f17, var_f14, temp_f17, temp_f17);
    if (temp_s0->unk7BBC != 0) {
        __glMgrBuildChain(temp_s1, temp_s1);
        __glMgrMakeTiles(temp_s1, temp_s1, temp_s0);
        __glMgrMakePages(temp_s1, temp_s1, temp_s0);
    }
    __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0);
    __glMgrSaveRSS((__GLcontext *)0x01E23929, 0x01E23929, 0x01400000, temp_s0->unk7CA4, temp_s0->unk7CA8, 3);
    __glMgrSendPixels(temp_s1, temp_s1, 0, 0, 1);
    __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
    __glMgrRestoreTexmode(M2C_ERROR(/* Read from unset register $a0 */));
    var_a0_4 = 9;
    var_a1_4 = 0;
    do {
        temp_a2 = var_a1_4 + &sp28;
        temp_at_3 = var_a1_4 + (temp_s0 + 0x454);
        var_a1_4 += 4;
        var_a0_4 -= 1;
        *temp_at_3 = *temp_a2;
    } while (var_a0_4 > 0);
    temp_s0->unk7D58 = temp_s6_3;
    temp_s0->unk7D64 = (s32) sp88;
}

void Resize(void **arg0, s32 arg1, s32 arg2) {
    if ((*arg0)->unk925C != 0) {
        __glResizeBuffer(arg1, arg2);
        *(s32 *)0x74080 = 0x3310;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = arg1;
        *(s32 *)0x74080 = arg2;
        *(s32 *)0x74080 = 0x2A04;
        *(s32 *)0x74080 = 0x1701;
        *(s32 *)0x74080 = 0x2C00;
        *(s32 *)0x74080 = 0x3518;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = (bitwise s32) (f32) arg1;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = (bitwise s32) (f32) arg2;
        *(s32 *)0x74080 = 0x3F800000;
        *(s32 *)0x74080 = 0xBF800000;
    }
}

void Pick(void) {

}

void StoreSpan(void *arg0) {
    f32 *var_s0;
    f32 temp_f12;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 var_f20;
    s32 temp_s4;
    s32 var_s2;

    var_s0 = arg0->unk7734;
    var_f20 = (f32) ((u64) ((s64) arg0->unk7630 << 0x20) >> 0x20);
    *(s32 *)0x74080 = 0x1600;
    temp_f22 = (f32) (arg0->unk762C - arg0->unkD30);
    temp_f26 = (f32) arg0->unk76A8;
    var_s2 = arg0->unk7628 - arg0->unkD2C;
    temp_s4 = arg0->unk765C + var_s2;
    temp_f24 = (f32) (1.0 / (f64) arg0->unk668);
    if (var_s2 < temp_s4) {
loop_4:
        __glMgrim_Color4fv(var_s0);
        var_s0 += 0x10;
        temp_f12 = (f32) var_s2;
        if (!(arg0->unk7718 & 0x4000)) {
            __glMgrim_Vertex2f(temp_f12, temp_f22);
        } else {
            __glMgrim_Vertex3f(temp_f12, temp_f22, (var_f20 - arg0->unk66C) * temp_f24);
        }
        var_s2 += 1;
        var_f20 += temp_f26;
        if (temp_s4 != var_s2) {
            goto loop_4;
        }
    }
    *(void *)0x74080 = 0x2000;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x70, 0x74], gap at: 0x58. */
void StoreStippledSpan(void *arg0) {
    f32 *var_s2;
    f32 temp_f12;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 var_f20;
    s32 *var_s8;
    s32 temp_s5;
    s32 var_s4;
    s32 var_s6;
    s64 var_s1;
    s64 var_s4_2;
    u32 var_s0;

    var_s2 = arg0->unk7734;
    var_s8 = arg0->unk773C;
    var_f20 = (f32) ((u64) ((s64) arg0->unk7630 << 0x20) >> 0x20);
    temp_f26 = (f32) arg0->unk76A8;
    temp_f22 = (f32) (arg0->unk762C - arg0->unkD30);
    var_s6 = arg0->unk765C;
    *(s32 *)0x74080 = 0x1600;
    var_s1 = arg0->unk7628 - arg0->unkD2C;
    temp_f24 = (f32) (1.0 / (f64) arg0->unk668);
    if (var_s6 != 0) {
loop_4:
        var_s4 = var_s6;
        if (var_s6 >= 0x21) {
            var_s4 = 0x20;
        }
        var_s0 = 0x80000000;
        temp_s5 = *var_s8;
        var_s6 -= var_s4;
        var_s4_2 = var_s4 - 1;
        var_s8 += 4;
        if (var_s4_2 >= 0) {
            unksp58 = var_s4_2;
            unksp50 = var_s1;
loop_10:
            var_s4_2 -= 1;
            if (temp_s5 & var_s0) {
                __glMgrim_Color4fv(var_s2);
                temp_f12 = (f32) var_s1;
                if (!(arg0->unk7718 & 0x4000)) {
                    __glMgrim_Vertex2f(temp_f12, temp_f22);
                } else {
                    __glMgrim_Vertex3f(temp_f12, temp_f22, (var_f20 - arg0->unk66C) * temp_f24);
                }
            }
            var_s0 = var_s0 >> 1;
            var_s2 += 0x10;
            var_f20 += temp_f26;
            var_s1 += 1;
            if (var_s4_2 != -1) {
                goto loop_10;
            }
            var_s1 = unksp58 + unksp50 + 1;
        }
        if (var_s6 != 0) {
            goto loop_4;
        }
    }
    *(void *)0x74080 = 0x2000;
}

void ReadColor(s32 arg1, s32 arg2, void *arg3) {
    __glMgrim_ReadPixels(arg1, arg2, 1, 1, GL_RGBA, GL_FLOAT, arg3);
}

void __glMgrInitRGB(__GLcontext *gc, void *(*arg1)(__GLcontext *, u32), ...) {
    s32 temp_a0;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1_4;
    u32 var_a0;
    u32 var_a0_2;
    u32 var_a0_3;
    u32 var_a0_4;
    void (*var_a1_2)(__GLcontext *);
    void (*var_a1_3)(__GLcontext *);
    void *(*var_a1)(__GLcontext *);
    void *temp_a0_2;

    __glInitBuffer();
    gc->imports.getenv = NULL;
    gc->imports.malloc = arg1;
    gc->imports.other = &sub_0da90000 + 0xF74;
    gc->imports.free = arg1->unkC44 + arg1->unkC48 + (arg1->unkC4C + arg1->unkC50);
    var_a0 = arg1->unkC54;
    *(s32 *)0x74080 = 0x900;
    var_a1 = NULL;
    if (var_a0 != 0) {
loop_1:
        var_a0 = var_a0 >> 1;
        if (!(var_a0 & 1)) {
            var_a1 += 1;
            if (var_a0 != 0) {
                goto loop_1;
            }
        }
    }
    gc->exports.dispatchExec = var_a1;
    temp_at = (1 << arg1->unkC44) - 1;
    gc->exports.notifyResize = (u8 (*)(__GLcontext *)) temp_at;
    gc->imports.unk48 = temp_at;
    gc->exports.shareContext = (bitwise u8 (*)(__GLcontext *, __GLcontext *)) (f32) temp_at;
    var_a0_2 = arg1->unkC58;
    var_a1_2 = NULL;
    if (var_a0_2 != 0) {
loop_4:
        var_a0_2 = var_a0_2 >> 1;
        if (!(var_a0_2 & 1)) {
            var_a1_2 += 1;
            if (var_a0_2 != 0) {
                goto loop_4;
            }
        }
    }
    gc->exports.beginDispatchOverride = var_a1_2;
    temp_v1 = (1 << arg1->unkC48) - 1;
    gc->exports.notifyDestroy = (void (*)(__GLcontext *)) temp_v1;
    gc->exports.destroyContext = (u8 (*)(__GLcontext *)) temp_v1;
    gc->exports.copyContext = (bitwise u8 (*)(__GLcontext *, __GLcontext *, u32)) (f32) temp_v1;
    var_a0_3 = arg1->unkC5C;
    var_a1_3 = NULL;
    if (var_a0_3 != 0) {
loop_7:
        var_a0_3 = var_a0_3 >> 1;
        if (!(var_a0_3 & 1)) {
            var_a1_3 += 1;
            if (var_a0_3 != 0) {
                goto loop_7;
            }
        }
    }
    gc->exports.endDispatchOverride = var_a1_3;
    temp_at_2 = (1 << arg1->unkC4C) - 1;
    gc->exports.loseCurrent = (u8 (*)(__GLcontext *)) temp_at_2;
    gc->exports.notifySwapBuffers = (void (*)(__GLcontext *)) temp_at_2;
    gc->exports.forceCurrent = (bitwise u8 (*)(__GLcontext *)) (f32) temp_at_2;
    var_a0_4 = arg1->unkC60;
    var_a1_4 = 0;
    if (var_a0_4 != 0) {
loop_10:
        var_a0_4 = var_a0_4 >> 1;
        if (!(var_a0_4 & 1)) {
            var_a1_4 += 1;
            if (var_a0_4 != 0) {
                goto loop_10;
            }
        }
    }
    gc->exports.unk30 = var_a1_4;
    temp_a0 = arg1->unkC50;
    if (temp_a0 != 0) {
        temp_v1_2 = (1 << temp_a0) - 1;
        gc->exports.unk38 = temp_v1_2;
        gc->exports.unk34 = (f32) temp_v1_2;
    } else {
        gc->exports.unk38 = 0xFF;
        gc->exports.unk34 = 255.0f;
    }
    gc->unkB0 = __glMgrReadSpan;
    gc->unkC8 = __glFetchSpan;
    gc->unkB4 = __glMgrReturnSpan;
    temp_a0_2 = &sub_0da90000 + 0x138C;
    gc->unkAC = temp_a0_2;
    gc->unkA8 = temp_a0_2;
    gc->unkA0 = &sub_0da90000 + 0x104C;
    gc->unkBC = &sub_0da90000 + 0x11AC;
    gc->unkB8 = &sub_0da90000 + 0x1054;
    gc->unkA4 = &sub_0da90000 + 0x60C;
    gc->unkD8 = &sub_0da90000 + 0x6F4;
}
