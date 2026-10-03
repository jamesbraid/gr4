typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x13C];                 /* maybe part of gcState[0x50]? */
    /* 0x01D4 */ ? unk1D4;                          /* inferred */
    /* 0x01D4 */ char pad1D4[0x4CC];
    /* 0x06A0 */ s32 unk6A0;                        /* inferred */
    /* 0x06A4 */ char pad6A4[0xC];                  /* maybe part of unk6A0[4]? */
    /* 0x06B0 */ s32 unk6B0;                        /* inferred */
    /* 0x06B4 */ s32 unk6B4;                        /* inferred */
    /* 0x06B8 */ char pad6B8[0x68];                 /* maybe part of unk6B4[0x1B]? */
    /* 0x0720 */ ? unk720;                          /* inferred */
    /* 0x0720 */ char pad720[4];
    /* 0x0724 */ f32 unk724;                        /* inferred */
    /* 0x0728 */ s32 unk728;                        /* inferred */
    /* 0x072C */ s32 unk72C;                        /* inferred */
    /* 0x0730 */ ? unk730;                          /* inferred */
    /* 0x0730 */ char pad730[4];
    /* 0x0734 */ f32 unk734;                        /* inferred */
    /* 0x0738 */ s32 unk738;                        /* inferred */
    /* 0x073C */ s32 unk73C;                        /* inferred */
    /* 0x0740 */ f32 unk740;                        /* inferred */
    /* 0x0744 */ f32 unk744;                        /* inferred */
    /* 0x0748 */ f32 unk748;                        /* inferred */
    /* 0x074C */ s32 unk74C;                        /* inferred */
    /* 0x0750 */ char pad750[0x4C0];                /* maybe part of unk74C[0x131]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x93B];                /* maybe part of yInverted[0x93C]? */
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

? exit(?);                                          /* extern */
? sub_0dab0000(s32);                                /* extern */
s32 sub_0dbf0000(__GLcontext *, s32, s32, s32, s32, __GLcontext *, s32); /* extern */
extern s32 MgrasPrevVidTexture;

void __glMgrSendMapSpec1D(__GLcontext *gc, ...) {
    if (gc != NULL) {
        *(void *(**)(__GLcontext *, void *, u32))0x74080 = gc->imports.realloc;
        *(void *(**)(__GLcontext *, void *, u32))0x74080 = (void *(*)(__GLcontext *, void *, u32)) gc->imports.calloc;
        *(void *(**)(__GLcontext *, void *, u32))0x74080 = (void *(*)(__GLcontext *, void *, u32)) ((s32) gc->imports.fprintf * 4);
        return;
    }
    *(void *(**)(__GLcontext *, void *, u32))0x74080 = NULL;
    *(void *(**)(__GLcontext *, void *, u32))0x74080 = NULL;
    *(void *(**)(__GLcontext *, void *, u32))0x74080 = NULL;
}

void __glMgrSendMapData1D(__GLcontext *gc, ...) {
    s32 (*temp_a5)(__GLcontext *, void *, s8 *, ...);
    s32 temp_v0;
    s32 var_a2;
    void *(*var_a3)(__GLcontext *);

    if (gc != NULL) {
        var_a2 = 0;
        temp_a5 = gc->imports.fprintf;
        temp_v0 = (s32) (temp_a5 + 1) & ~1;
        *(s32 *)0x74080 = 0xB218;
        *(s32 *)0x74080 = (s32) gc->imports.malloc * 4;
        *(s32 *)0x74080 = (s32) gc->imports.fatal;
        *(s32 *)0x74080 = (s32) gc->imports.getenv;
        *(s32 *)0x74080 = (s32) gc->imports.fopen;
        *(s32 *)0x74080 = (s32) temp_a5;
        *(s32 *)0x74080 = temp_v0;
        *(s32 *)0x74080 = ((temp_v0 * 4) & 0xFFFFF) | 0x80000000;
        if ((s32) temp_a5 > 0) {
            var_a3 = gc->imports.getDrawablePrivate;
            do {
                var_a3 += 4;
                var_a2 += 1;
                *(s32 *)0x74080 = var_a3->unk-4;
            } while (var_a2 < (s32) temp_a5);
        }
        if ((s32) temp_a5 & 1) {
            *(s32 *)0x74080 = 0;
        }
    }
}

void changebasis(f32 *arg0, u32 arg1, f32 *arg2, s32 arg3, s32 arg4, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3, f64 fparg4, f32 fparg5) {
    f64 spA8;
    f64 spA0;
    f64 sp98;
    f64 sp90;
    f64 sp88;
    f64 sp80;
    f64 sp78;
    f64 sp70;
    f64 sp68;
    s64 sp58;
    f64 sp40;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 *temp_at;
    f32 *temp_at_2;
    f32 *temp_at_3;
    f32 *temp_v0;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *var_a0;
    f32 *var_a0_2;
    f32 *var_a1;
    f32 *var_a1_2;
    f32 temp_f1_2;
    f32 temp_f31;
    f32 var_f17;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f13;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f17;
    f64 temp_f17_2;
    f64 temp_f17_3;
    f64 temp_f18;
    f64 temp_f18_2;
    f64 temp_f18_3;
    f64 temp_f19;
    f64 temp_f1;
    f64 temp_f21;
    f64 temp_f23;
    f64 temp_f23_2;
    f64 temp_f24;
    f64 temp_f25;
    f64 temp_f25_2;
    f64 temp_f27;
    f64 temp_f27_2;
    f64 temp_f2;
    f64 temp_f2_2;
    f64 temp_f2_3;
    f64 temp_f31_2;
    f64 temp_f31_3;
    f64 temp_f4;
    f64 temp_f4_2;
    f64 temp_f4_3;
    f64 temp_f5;
    f64 temp_f7;
    f64 temp_f7_2;
    f64 temp_f7_3;
    f64 temp_f8;
    f64 var_f12;
    f64 var_f13;
    f64 var_f14;
    f64 var_f15;
    f64 var_f16;
    s32 *temp_a5;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a7;
    s32 var_a4;
    s32 var_a6;
    s8 *temp_a0;

    var_a4 = arg4;
    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    *arg2 = *arg0;
    temp_a5 = (arg1 * 4) + (sub_0dbf0000 - 0x1EA0);
    if (arg1 < 0x10U) {
        var_a4 = arg3 * 4;
        var_f16 = 180.0;
        var_f17 = second half of f64;
        var_f14 = 28.0;
        var_f15 = second half of f64;
        var_f13 = -21.0;
        var_f12 = second half of f64;
        switch (*temp_a5) {                         /* unable to parse jump table */
        case 1:
            sp58 = (s64) arg2;
            return;
        case 2:
            temp_a4 = arg3 * 4;
            *(temp_a4 + arg2) = *(temp_a4 + arg0);
            return;
        case 3:
            sp4 = second half of f64;
            sp8 = (f32) ((((f64) *((arg3 * 4) + arg0) * 2.0) - (f64) *arg0) - (f64) *((arg3 * 2 * 4) + arg0));
            goto block_3;
        case 4:
            temp_f4 = (f64) *arg0;
            temp_f2 = (f64) *((arg3 * 0xC) + arg0);
            sp4 = second half of f64;
            sp8 = (f32) (((second half of f64) - (temp_f4 * (second half of f64))) - temp_f2);
            spC = (f32) (((temp_f4 - (second half of f64)) + (second half of f64)) - temp_f2);
            goto block_3;
        case 5:
            temp_f7 = (f64) *((arg3 * 0xC) + arg0) * 4.0;
            sp4 = second half of f64;
            sp8 = second half of f64;
            spC = (f32) ((((second half of f64) - (second half of f64)) + temp_f7) - (second half of f64));
            sp10 = (f32) (((((second half of f64) - (second half of f64)) + ((f64) *((arg3 * 2 * 4) + arg0) * 6.0)) - temp_f7) + (f64) *((arg3 * 4 * 4) + arg0));
            goto block_3;
        case 6:
            temp_f7_2 = (f64) *((arg3 * 0x14) + arg0);
            sp4 = second half of f64;
            sp8 = (f32) (second half of f64);
            spC = (f32) (((((f64) *arg0 * 3.0) - (second half of f64)) + (second half of f64)) - (temp_f7_2 * (second half of f64)));
            sp10 = (f32) (second half of f64);
            sp14 = (f32) ((second half of f64) + temp_f7_2);
            goto block_3;
        case 7:
            temp_f7_3 = (f64) *((arg3 * 2 * 4) + arg0) * 15.0;
            temp_f4_2 = (f64) (second half of f64) * 15.0;
            sp4 = *((arg3 * 6 * 4) + arg0);
            sp8 = second half of f64;
            spC = (f32) ((((second half of f64) - ((f64) *((arg3 * 4) + arg0) * 6.0)) + (second half of f64)) - ((second half of f64) * (second half of f64)));
            sp10 = second half of f64;
            sp14 = (f32) ((((((second half of f64) + ((second half of f64) * (second half of f64))) - temp_f7_3) + temp_f4_2) - ((second half of f64) * 12.0)) + ((second half of f64) * 3.0));
            sp18 = (f32) (((((((second half of f64) - (second half of f64)) - temp_f7_3) + (second half of f64)) - temp_f4_2) + (second half of f64)) - (second half of f64));
            goto block_3;
        case 8:
            temp_f17 = (f64) *((arg3 * 0x1C) + arg0);
            sp4 = second half of f64;
            sp8 = second half of f64;
            spC = (f32) (((((second half of f64) * 5.0) - ((f64) *((arg3 * 4) + arg0) * 7.0)) + ((f64) *((arg3 * 6 * 4) + arg0) * (second half of f64))) - (temp_f17 * (second half of f64)));
            sp10 = second half of f64;
            sp14 = (f32) ((((((second half of f64) + ((second half of f64) * 21.0)) - ((f64) *((arg3 * 2 * 4) + arg0) * 21.0)) + ((f64) *((arg3 * 0x14) + arg0) * (second half of f64))) - ((second half of f64) * (second half of f64))) + (temp_f17 * 6.0));
            sp18 = (f32) (second half of f64);
            sp1C = (f32) ((second half of f64) - temp_f17);
            goto block_3;
        case 9:
            temp_f18 = (f64) *((arg3 * 8 * 4) + arg0);
            temp_f25 = (f64) *((arg3 * 0x1C) + arg0);
            temp_f23 = temp_f25 * 8.0;
            temp_f2_2 = (f64) *((arg3 * 2 * 4) + arg0);
            temp_f27 = (f64) *((arg3 * 6 * 4) + arg0) * 28.0;
            temp_f0 = (f64) (second half of f64) * (second half of f64);
            sp4 = second half of f64;
            sp8 = second half of f64;
            spC = (f32) ((((second half of f64) - ((f64) *((arg3 * 4) + arg0) * 8.0)) + temp_f23) - (temp_f18 * (second half of f64)));
            sp10 = second half of f64;
            sp14 = (f32) ((((((second half of f64) + ((f64) *arg0 * -10.0)) - (temp_f2_2 * 28.0)) + temp_f27) - (temp_f25 * 32.0)) + (second half of f64));
            sp18 = second half of f64;
            sp1C = (f32) ((((((((second half of f64) - ((second half of f64) * 24.0)) + (temp_f2_2 * (second half of f64))) - (second half of f64)) + temp_f0) - (second half of f64)) + (temp_f25 * 24.0)) - (temp_f18 * 4.0));
            sp20 = (f32) (((((((((second half of f64) - (second half of f64)) + (second half of f64)) - (second half of f64)) + ((f64) *((arg3 * 4 * 4) + arg0) * 70.0)) - temp_f0) + temp_f27) - temp_f23) + temp_f18);
            goto block_3;
        case 10:
            temp_f8 = (f64) *((arg3 * 4) + arg0);
            temp_f31 = *((arg3 * 0x24) + arg0);
            temp_f0_2 = (f64) temp_f31;
            temp_f17_2 = temp_f8 * 9.0;
            temp_f1 = (f64) *((arg3 * 8 * 4) + arg0);
            temp_f2_3 = temp_f1 * 9.0;
            sp4 = temp_f31;
            spC = (f32) (((((second half of f64) * 7.0) - temp_f17_2) + temp_f2_3) - (temp_f0_2 * 7.0));
            sp10 = (f32) ((((((f64) *arg0 * 21.0) - (temp_f8 * 54.0)) + ((f64) *((arg3 * 2 * 4) + arg0) * 36.0)) - temp_f2_3) + (temp_f0_2 * 6.0));
            sp8 = (f32) ((((second half of f64) * -8.0) + temp_f17_2) - (second half of f64));
            sp14 = (f32) (((((((second half of f64) * -15.0) + (temp_f8 * 45.0)) - (second half of f64)) + ((f64) *((arg3 * 0x1C) + arg0) * (second half of f64))) - (temp_f1 * (second half of f64))) + ((second half of f64) * 15.0));
            sp18 = second half of f64;
            sp1C = (f32) (((second half of f64) + (temp_f1 * (second half of f64))) - ((second half of f64) * 10.0));
            sp24 = (f32) (second half of f64);
            sp20 = (f32) ((second half of f64) + ((second half of f64) * 4.0));
            goto block_3;
        case 11:
            temp_at = (arg3 * 0xA * 4) + arg0;
            spC = (f32) (second half of f64);
            sp10 = (f32) ((((second half of f64) + (second half of f64)) - ((f64) *((arg3 * 0x24) + arg0) * 10.0)) + ((f64) *temp_at * 7.0));
            sp14 = (f32) (second half of f64);
            sp18 = (f32) ((second half of f64) - ((second half of f64) * (second half of f64)));
            sp8 = (f32) ((((second half of f64) * -9.0) + (second half of f64)) - (second half of f64));
            sp4 = second half of f64;
            sp20 = second half of f64;
            sp1C = (f32) ((second half of f64) - (f64) (*temp_at * 20.0f));
            sp24 = (f32) (second half of f64);
            sp28 = (f32) ((second half of f64) - (second half of f64));
            goto block_3;
        case 12:
            temp_f23_2 = (f64) *arg0;
            temp_v1 = (arg3 * 0x2C) + arg0;
            temp_f13 = (f64) *((arg3 * 2 * 4) + arg0);
            sp68 = second half of f64;
            temp_f4_3 = temp_f13 * (second half of f64);
            temp_f16 = (f64) *((arg3 * 0xC) + arg0);
            temp_f18_2 = temp_f16 * 165.0;
            temp_f27_2 = temp_f23_2 * 35.0;
            temp_f14 = (f64) *((arg3 * 4 * 4) + arg0) * (second half of f64);
            sp70 = second half of f64;
            spC = second half of f64;
            sp10 = (f32) (second half of f64);
            sp14 = (f32) (((second half of f64) - ((second half of f64) * 77.0)) + ((second half of f64) * 28.0));
            sp18 = (f32) (((((((temp_f23_2 * -56.0) + ((f64) *((arg3 * 4) + arg0) * 231.0)) - temp_f4_3) + temp_f18_2) - ((f64) (second half of f64) * (second half of f64))) + (second half of f64)) - (second half of f64));
            sp1C = (f32) (((((((temp_f27_2 - ((second half of f64) * 165.0)) + (temp_f13 * 275.0)) - temp_f18_2) + (second half of f64)) - ((second half of f64) * (second half of f64))) + ((second half of f64) * 165.0)) - (f64) (*temp_v1 * 35.0f));
            sp20 = (f32) ((((((((temp_f27_2 - ((second half of f64) * 220.0)) + ((second half of f64) * 550.0)) - (temp_f16 * 660.0)) + temp_f14) - (second half of f64)) + ((second half of f64) * 220.0)) - ((second half of f64) * 110.0)) + ((second half of f64) * 20.0));
            sp8 = (f32) ((((second half of f64) * -10.0) + (second half of f64)) - (second half of f64));
            sp24 = (f32) ((((((((((temp_f23_2 * -15.0) + ((second half of f64) * 110.0)) - temp_f4_3) + (temp_f16 * 495.0)) - temp_f14) + ((f64) *((arg3 * 0x1C) + arg0) * (second half of f64))) - ((f64) *((arg3 * 8 * 4) + arg0) * 495.0)) + ((second half of f64) * (second half of f64))) - (second half of f64)) + (second half of f64));
            sp2C = (f32) (second half of f64);
            sp4 = *temp_v1;
            sp28 = (f32) ((second half of f64) - ((second half of f64) * 5.0));
            goto block_3;
        case 13:
            sp70 = second half of f64;
            temp_f31_2 = (f64) (second half of f64);
            sp88 = second half of f64;
            sp80 = second half of f64;
            temp_f18_3 = (f64) *((arg3 * 4 * 4) + arg0);
            sp68 = second half of f64;
            sp78 = second half of f64;
            spC = (f32) (second half of f64);
            sp10 = (f32) ((((second half of f64) + ((f64) *((arg3 * 2 * 4) + arg0) * 66.0)) - ((f64) *((arg3 * 0x2C) + arg0) * (second half of f64))) + (second half of f64));
            sp14 = (f32) (second half of f64);
            sp18 = (f32) (((((second half of f64) + ((f64) *((arg3 * 0xC) + arg0) * 220.0)) - ((f64) *((arg3 * 0xA * 4) + arg0) * (second half of f64))) + (second half of f64)) - (temp_f31_2 * 28.0));
            sp1C = (f32) (second half of f64);
            sp24 = (f32) (second half of f64);
            sp20 = (f32) ((((((second half of f64) + (temp_f18_3 * (second half of f64))) - ((f64) *((arg3 * 0x24) + arg0) * (second half of f64))) + ((second half of f64) * 330.0)) - ((second half of f64) * (second half of f64))) + (temp_f31_2 * 35.0));
            sp28 = (f32) ((((((((second half of f64) - (temp_f18_3 * 1485.0)) + ((f64) *((arg3 * 0x14) + arg0) * 792.0)) - ((f64) *((arg3 * 8 * 4) + arg0) * (second half of f64))) + ((second half of f64) * 660.0)) - ((second half of f64) * 396.0)) + ((second half of f64) * 120.0)) - (temp_f31_2 * 15.0));
            sp8 = (f32) ((((second half of f64) * -11.0) + (second half of f64)) - temp_f31_2);
            sp4 = *((arg3 * 0xC * 4) + arg0);
            sp30 = (f32) (second half of f64);
            sp2C = second half of f64;
            goto block_3;
        case 14:
            sp80 = second half of f64;
            sp68 = second half of f64;
            temp_at_2 = (arg3 * 0x34) + arg0;
            temp_f21 = (f64) *((arg3 * 4) + arg0);
            sp78 = second half of f64;
            temp_f24 = (second half of f64) * 78.0;
            sp98 = second half of f64;
            sp70 = second half of f64;
            sp90 = second half of f64;
            sp88 = second half of f64;
            spC = second half of f64;
            sp10 = (f32) ((((((f64) *arg0 * 55.0) - (temp_f21 * 130.0)) + temp_f24) - (second half of f64)) + ((f64) *temp_at_2 * 10.0));
            sp14 = (f32) ((((((second half of f64) + (temp_f21 * 117.0)) - temp_f24) + (second half of f64)) - ((second half of f64) * 117.0)) + ((second half of f64) * 45.0));
            sp18 = (f32) (((((second half of f64) + (second half of f64)) - (second half of f64)) + ((second half of f64) * 104.0)) - ((second half of f64) * 36.0));
            sp1C = (f32) (second half of f64);
            sp20 = (f32) (second half of f64);
            sp24 = (f32) ((((((((((second half of f64) + (temp_f21 * 455.0)) - ((second half of f64) * 1170.0)) + ((f64) *((arg3 * 0xC) + arg0) * 1430.0)) - ((f64) *((arg3 * 4 * 4) + arg0) * 715.0)) + ((f64) *((arg3 * 0x24) + arg0) * 715.0)) - ((second half of f64) * 1430.0)) + (second half of f64)) - ((second half of f64) * (second half of f64))) + ((second half of f64) * 70.0));
            sp28 = second half of f64;
            sp8 = (f32) ((((second half of f64) * -12.0) + (temp_f21 * 13.0)) - (second half of f64));
            sp2C = (f32) ((second half of f64) - ((second half of f64) * 21.0));
            sp4 = *temp_at_2;
            sp34 = (f32) (second half of f64);
            sp30 = (f32) ((second half of f64) + ((second half of f64) * 6.0));
            goto block_3;
        case 15:
            sp88 = second half of f64;
            temp_f5 = (f64) *((arg3 * 4) + arg0);
            temp_f19 = (f64) (second half of f64);
            temp_f17_3 = (f64) (second half of f64);
            sp90 = second half of f64;
            sp78 = second half of f64;
            sp80 = second half of f64;
            sp68 = second half of f64;
            temp_f31_3 = (f64) *((arg3 * 4 * 4) + arg0);
            sp70 = second half of f64;
            sp40 = second half of f64;
            temp_f25_2 = (f64) *((arg3 * 0xA * 4) + arg0) * (second half of f64);
            spA0 = temp_f25_2;
            spA8 = second half of f64;
            sp4 = *((arg3 * 0xE * 4) + arg0);
            spC = (f32) ((((second half of f64) - (second half of f64)) + (second half of f64)) - (second half of f64));
            sp10 = (f32) (second half of f64);
            sp14 = (f32) (second half of f64);
            sp18 = (f32) (second half of f64);
            sp1C = (f32) (((((((((second half of f64) * 120.0) - (temp_f5 * 504.0)) + ((second half of f64) * 728.0)) - (second half of f64)) + ((f64) *((arg3 * 0x2C) + arg0) * (second half of f64))) - ((f64) *((arg3 * 0xC * 4) + arg0) * 728.0)) + (temp_f19 * 504.0)) - (second half of f64));
            sp20 = (f32) (second half of f64);
            sp24 = (f32) ((((((((((temp_f5 * 784.0) + (second half of f64)) - (second half of f64)) + ((second half of f64) * 2184.0)) - (temp_f31_3 * 1001.0)) + temp_f25_2) - (second half of f64)) + (second half of f64)) - (temp_f19 * (second half of f64))) + (temp_f17_3 * (second half of f64)));
            sp28 = (f32) (((((((((((temp_f5 * 980.0) + (second half of f64)) - (second half of f64)) + ((second half of f64) * 5460.0)) - (temp_f31_3 * 5005.0)) + ((f64) *((arg3 * 0x14) + arg0) * 2002.0)) - temp_f25_2) + ((second half of f64) * 1820.0)) - ((second half of f64) * 1365.0)) + (temp_f19 * 490.0)) - (second half of f64));
            sp2C = (f32) (second half of f64);
            sp30 = second half of f64;
            sp8 = (f32) ((((second half of f64) * -13.0) + (second half of f64)) - temp_f17_3);
            sp68 = second half of f64;
            sp34 = (f32) (second half of f64);
            sp38 = (f32) ((second half of f64) - temp_f17_3);
            goto block_3;
        }
    } else {
    case 0:
        sp58 = (s64) arg2;
        temp_a0 = sub_0dbf0000 - 0x1E60;
        printf(temp_a0, temp_a0, arg1, var_a4, temp_a5, var_f12, var_f13, var_f14, var_f15, var_f16, var_f17);
        exit(0);
block_3:
        temp_a7 = arg1 - 1;
        if ((s32) arg1 >= 2) {
            temp_a3 = arg3 * 4;
            var_a1 = sp + 4;
            var_a6 = temp_a7 & 3;
            var_a0 = (arg3 * 4) + arg2;
            if (var_a6 != 0) {
                do {
                    temp_f1_2 = *var_a1;
                    var_a1 += 4;
                    var_a6 -= 1;
                    *var_a0 = temp_f1_2;
                    var_a0 += temp_a3;
                } while (var_a6 != 0);
            }
            if ((temp_a7 >> 2) != 0) {
                var_a0_2 = var_a0;
                var_a1_2 = var_a1;
                do {
                    var_a1_2 += 0x10;
                    temp_v1_2 = temp_a3 + var_a0_2;
                    temp_v0 = temp_a3 + temp_v1_2;
                    temp_at_3 = temp_a3 + temp_v0;
                    *var_a0_2 = var_a1_2->unk-10;
                    var_a0_2 = temp_a3 + temp_at_3;
                    *temp_v1_2 = var_a1_2->unk-C;
                    *temp_v0 = var_a1_2->unk-8;
                    *temp_at_3 = var_a1_2->unk-4;
                } while (var_a1_2 != ((arg1 * 4) + sp));
            }
        }
    }
}

void __glMgrHostMapData1D(__GLcontext *gc, ...) {
    __GLcontext *temp_a0;
    s32 temp_a4;
    s32 temp_s4;
    s32 var_s0;
    void *(*temp_a1)(__GLcontext *, void *, u32);
    void *(*temp_v1)(__GLcontext *, u32);

    var_s0 = 0;
    temp_v1 = gc->imports.malloc;
    temp_s4 = (__glCurrentContext + ((((s32) temp_v1 * 4) - temp_v1) * 4))->unk85FC;
    if ((s32) gc->imports.calloc > 0) {
        do {
            temp_a1 = gc->imports.realloc;
            temp_a4 = (s32) temp_a1 * var_s0 * 4;
            temp_a0 = gc->imports.getDrawablePrivate + temp_a4;
            __glMgrSendMapData1D(temp_a0, temp_a0, temp_a1, temp_a4 + temp_s4, 1, temp_a4);
            var_s0 += 1;
        } while (var_s0 < (s32) gc->imports.calloc);
    }
}

void __glMgrCleanUp1D(__GLcontext *gc, s32 arg4, ...) {
    s64 sp20;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a3_5;
    __GLcontext *temp_a3_6;
    __GLcontext *temp_a3_7;
    __GLcontext *temp_a3_8;
    __GLcontext *temp_s1;
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a4;
    s64 var_ra;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a1_7;
    void *temp_a1_8;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_s0;

    var_ra = saved_reg_ra;
    var_a4 = arg4;
    var_a1 = 0;
    var_a0 = 0;
    temp_s1 = __glCurrentContext;
    temp_a3 = temp_s1->unk85F4;
    if (temp_a3 != NULL) {
        var_a4 = temp_a3->unk8;
        var_a0 = temp_a3->unk2C;
        if (var_a4 > 0) {
            var_a1 = var_a4;
        }
    }
    temp_a3_2 = temp_s1->unk8600;
    if (temp_a3_2 != NULL) {
        var_a4 = temp_a3_2->unk8;
        var_a0 += temp_a3_2->unk2C;
        if (var_a1 < var_a4) {
            var_a1 = var_a4;
        }
    }
    temp_a3_3 = temp_s1->unk860C;
    if (temp_a3_3 != NULL) {
        var_a4 = temp_a3_3->unk8;
        var_a0 += temp_a3_3->unk2C;
        if (var_a1 < var_a4) {
            var_a1 = var_a4;
        }
    }
    temp_a3_4 = temp_s1->unk8618;
    if (temp_a3_4 != NULL) {
        var_a4 = temp_a3_4->unk8;
        var_a0 += temp_a3_4->unk2C;
        if (var_a1 < var_a4) {
            var_a1 = var_a4;
        }
    }
    if (var_a0 != 0) {
        if (var_a0 >= 0xD1) {
            goto block_14;
        }
        if (var_a1 < 9) {
            sp0 = (s64) (temp_s1 + 0x10000);
            temp_s1->unk8A00 = 0;
            temp_s1->unk8A04 = __glMgrEvalCoord1DGe11;
            temp_s1->unk8A0C = __glMgrEvalMesh1DGe11;
            temp_a2 = temp_s1->unk8600;
            temp_s1->unk8610 = (s32) temp_s1->unk860C;
            temp_s1->unk8604 = temp_a2;
            temp_s1->unk861C = (s32) temp_s1->unk8618;
            temp_s1->unk85F8 = (s32) temp_s1->unk85F4;
            temp_a1 = temp_s1->unk85FC;
            if (temp_a1 != 0) {
                __glMgrHostMapData1D(temp_s1, temp_s1, temp_a1, temp_a2, temp_a3_4, var_a4, temp_s1 + 0x10000, 0x10000);
                temp_s1->unk85FC = 0;
                var_ra = sp20;
            }
            temp_a1_2 = temp_s1->unk8608;
            if (temp_a1_2 != NULL) {
                sp20 = var_ra;
                temp_s1->imports.free(temp_s1, temp_a1_2);
                temp_s1->unk8608 = NULL;
            }
            temp_a1_3 = temp_s1->unk8614;
            if (temp_a1_3 != NULL) {
                sp20 = var_ra;
                temp_s1->imports.free(temp_s1, temp_a1_3);
                temp_s1->unk8614 = NULL;
            }
            temp_a1_4 = temp_s1->unk8620;
            sp20 = var_ra;
            if (temp_a1_4 != NULL) {
                temp_s1->imports.free(temp_s1, temp_a1_4);
                temp_s1->unk8620 = NULL;
            }
            *(s32 *)0x74080 = 0xB030;
            temp_a0 = sp0->unk-7A08;
            __glMgrSendMapSpec1D(temp_a0, temp_a0);
            temp_a0_2 = sp0->unk-79E4;
            __glMgrSendMapSpec1D(temp_a0_2, temp_a0_2);
            temp_a0_3 = sp0->unk-79FC;
            __glMgrSendMapSpec1D(temp_a0_3, temp_a0_3);
            temp_a0_4 = sp0->unk-79F0;
            __glMgrSendMapSpec1D(temp_a0_4, temp_a0_4);
            temp_a0_5 = sp0->unk-7A08;
            __glMgrSendMapData1D(temp_a0_5, temp_a0_5);
            temp_a0_6 = sp0->unk-79E4;
            __glMgrSendMapData1D(temp_a0_6, temp_a0_6);
            temp_a0_7 = sp0->unk-79FC;
            __glMgrSendMapData1D(temp_a0_7, temp_a0_7);
            temp_a0_8 = sp0->unk-79F0;
            __glMgrSendMapData1D(temp_a0_8, temp_a0_8);
        } else {
block_14:
            temp_s0 = temp_s1 + 0x10000;
            temp_s1->unk8A04 = __glMgrEvalCoord1DHost;
            temp_s1->unk8A00 = 1;
            temp_s1->unk8A0C = __glMgrEvalMesh1DHost;
            temp_s1->unk8610 = (void *) temp_s1->unk860C;
            temp_s1->unk861C = (void *) temp_s1->unk8618;
            temp_s1->unk8604 = (void *) temp_s1->unk8600;
            temp_s1->unk85F8 = (void *) temp_s1->unk85F4;
            temp_a1_5 = temp_s1->unk85FC;
            if (temp_a1_5 != NULL) {
                temp_s1->imports.free(temp_s1, temp_a1_5);
                temp_s0->unk-7A04 = NULL;
                var_ra = sp20;
            }
            temp_a3_5 = temp_s0->unk-7A0C;
            if (temp_a3_5 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-7A04 = temp_s1->imports.malloc(temp_s1, temp_a3_5->imports.fprintf * 4);
                __glMgrHostMapData1D(temp_a3_5, temp_a3_5);
            }
            temp_a1_6 = temp_s0->unk-79F8;
            if (temp_a1_6 != NULL) {
                sp20 = var_ra;
                __glMgrHostMapData1D(temp_s1, temp_s1, temp_a1_6);
                temp_s0->unk-79F8 = NULL;
            }
            temp_a3_6 = temp_s0->unk-7A00;
            if (temp_a3_6 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-79F8 = temp_s1->imports.malloc(temp_s1, temp_a3_6->imports.fprintf * 4);
                __glMgrHostMapData1D(temp_a3_6, temp_a3_6);
            }
            temp_a1_7 = temp_s0->unk-79EC;
            if (temp_a1_7 != NULL) {
                sp20 = var_ra;
                __glMgrHostMapData1D(temp_s1, temp_s1, temp_a1_7);
                temp_s0->unk-79EC = NULL;
            }
            temp_a3_7 = temp_s0->unk-79F4;
            if (temp_a3_7 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-79EC = temp_s1->imports.malloc(temp_s1, temp_a3_7->imports.fprintf * 4);
                __glMgrHostMapData1D(temp_a3_7, temp_a3_7);
            }
            temp_a1_8 = temp_s0->unk-79E0;
            if (temp_a1_8 != NULL) {
                sp20 = var_ra;
                __glMgrHostMapData1D(temp_s1, temp_s1, temp_a1_8);
                temp_s0->unk-79E0 = NULL;
            }
            temp_a3_8 = temp_s0->unk-79E8;
            if (temp_a3_8 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-79E0 = temp_s1->imports.malloc(temp_s1, temp_a3_8->imports.fprintf * 4);
                __glMgrHostMapData1D(temp_a3_8, temp_a3_8);
            }
        }
    }
}

void __glMgrSendMapSpec2D(__GLcontext *gc, ...) {
    if (gc != NULL) {
        *(void *(**)(__GLcontext *, void *, u32))0x74080 = gc->imports.realloc;
        *(void *(**)(__GLcontext *, void *, u32))0x74080 = (void *(*)(__GLcontext *, void *, u32)) gc->imports.free;
        *(void *(**)(__GLcontext *, void *, u32))0x74080 = (void *(*)(__GLcontext *, void *, u32)) gc->imports.calloc;
        *(void *(**)(__GLcontext *, void *, u32))0x74080 = (void *(*)(__GLcontext *, void *, u32)) ((s32) gc->imports.fprintf * 4);
        return;
    }
    *(void *(**)(__GLcontext *, void *, u32))0x74080 = NULL;
    *(void *(**)(__GLcontext *, void *, u32))0x74080 = NULL;
    *(void *(**)(__GLcontext *, void *, u32))0x74080 = NULL;
    *(void *(**)(__GLcontext *, void *, u32))0x74080 = NULL;
}

void __glMgrSendMapData2D(__GLcontext *gc, ...) {
    s32 (*temp_a5)(__GLcontext *, void *, s8 *, ...);
    s32 temp_v0;
    s32 var_a2;
    void *(*var_a3)(__GLcontext *);

    if (gc != NULL) {
        var_a2 = 0;
        temp_a5 = gc->imports.fprintf;
        temp_v0 = (s32) (temp_a5 + 1) & ~1;
        *(s32 *)0x74080 = 0xB324;
        *(s32 *)0x74080 = (s32) gc->imports.malloc * 4;
        *(s32 *)0x74080 = (s32) gc->imports.fatal;
        *(s32 *)0x74080 = (s32) gc->imports.getenv;
        *(s32 *)0x74080 = (s32) gc->imports.fopen;
        *(s32 *)0x74080 = (s32) gc->imports.atoi;
        *(s32 *)0x74080 = (s32) gc->imports.sprintf;
        *(s32 *)0x74080 = (s32) gc->imports.fclose;
        *(s32 *)0x74080 = (s32) temp_a5;
        *(s32 *)0x74080 = temp_v0;
        *(s32 *)0x74080 = ((temp_v0 * 4) & 0xFFFFF) | 0x80000000;
        if ((s32) temp_a5 > 0) {
            var_a3 = gc->imports.getDrawablePrivate;
            do {
                var_a3 += 4;
                var_a2 += 1;
                *(s32 *)0x74080 = var_a3->unk-4;
            } while (var_a2 < (s32) temp_a5);
        }
        if ((s32) temp_a5 & 1) {
            *(s32 *)0x74080 = 0;
        }
    }
}

void __glMgrHostMapData2D(__GLcontext *gc, ...) {
    s64 sp40;
    s64 sp38;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a2;
    __GLcontext *var_a2;
    __GLcontext *var_s0;
    __GLcontext *var_s0_2;
    s32 temp_v0_2;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s5;
    s32 var_s5_2;
    s64 var_ra;
    s64 var_s1;
    void *(*temp_s1)(__GLcontext *, u32);
    void *(*temp_v0)(__GLcontext *, u32);
    void *(*var_a1)(__GLcontext *, u32, u32);
    void *(*var_s4)(__GLcontext *);

    var_s1 = saved_reg_s1;
    var_ra = saved_reg_ra;
    var_s5 = 0;
    var_s4 = gc->imports.getDrawablePrivate;
    var_a1 = gc->imports.calloc;
    temp_v0 = gc->imports.malloc;
    var_a2 = (((((s32) temp_v0 * 4) - temp_v0) * 4) + __glCurrentContext)->unk8804;
    sp0 = (s64) __glCurrentContext;
    var_s0 = var_a2;
    if ((s32) var_a1 > 0) {
loop_5:
        var_s1_2 = 0;
        if ((s32) gc->imports.free > 0) {
            do {
                __glMgrSendMapData1D((__GLcontext *) var_s4, var_s4, gc->imports.realloc, var_s0, 1);
                var_s1_2 += 1;
                temp_v0_2 = (s32) gc->imports.realloc * 4;
                var_s0 += temp_v0_2;
                var_s4 += temp_v0_2;
            } while (var_s1_2 < (s32) gc->imports.free);
            var_a1 = gc->imports.calloc;
        }
        var_s5 += 1;
        if (var_s5 < (s32) var_a1) {
            goto loop_5;
        }
        temp_s1 = gc->imports.malloc;
        var_ra = sp40;
        var_s1 = sp38;
        var_a2 = (((((s32) temp_s1 * 4) - temp_s1) * 4) + sp0)->unk8804;
    }
    var_s0_2 = var_a2;
    var_s5_2 = 0;
    if ((s32) var_a1 > 0) {
        sp40 = var_ra;
        sp38 = var_s1;
loop_14:
        var_s1_3 = 0;
        if ((s32) gc->imports.realloc > 0) {
            do {
                temp_a0 = var_s0_2;
                temp_a2 = var_s0_2;
                var_s0_2 += 4;
                __glMgrSendMapData1D(temp_a0, temp_a0, gc->imports.free, temp_a2, gc->imports.realloc);
                var_s1_3 += 1;
            } while (var_s1_3 < (s32) gc->imports.realloc);
            var_a1 = gc->imports.calloc;
        }
        var_s5_2 += 1;
        var_s0_2 += (gc->imports.free - 1) * (s32) gc->imports.realloc * 4;
        if (var_s5_2 < (s32) var_a1) {
            goto loop_14;
        }
    }
}

void __glMgrCleanUp2D(__GLcontext *gc, s32 arg4, ...) {
    s64 sp20;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a3_5;
    __GLcontext *temp_a3_6;
    __GLcontext *temp_a3_7;
    __GLcontext *temp_a3_8;
    __GLcontext *temp_s1;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 var_a0;
    s32 var_a1;
    s32 var_a4;
    s64 var_ra;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a1_7;
    void *temp_a1_8;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_s0;

    var_ra = saved_reg_ra;
    var_a4 = arg4;
    var_a0 = 0;
    var_a1 = 0;
    temp_s1 = __glCurrentContext;
    temp_a3 = temp_s1->unk87FC;
    if (temp_a3 != NULL) {
        temp_a4 = temp_a3->unk8;
        var_a1 = temp_a3->unk2C;
        if (temp_a4 > 0) {
            var_a0 = temp_a4;
        }
        var_a4 = temp_a3->unkC;
        if (var_a0 < var_a4) {
            var_a0 = var_a4;
        }
    }
    temp_a3_2 = temp_s1->unk8808;
    if (temp_a3_2 != NULL) {
        temp_a4_2 = temp_a3_2->unk8;
        var_a1 += temp_a3_2->unk2C;
        if (var_a0 < temp_a4_2) {
            var_a0 = temp_a4_2;
        }
        var_a4 = temp_a3_2->unkC;
        if (var_a0 < var_a4) {
            var_a0 = var_a4;
        }
    }
    temp_a3_3 = temp_s1->unk8814;
    if (temp_a3_3 != NULL) {
        temp_a4_3 = temp_a3_3->unk8;
        var_a1 += temp_a3_3->unk2C;
        if (var_a0 < temp_a4_3) {
            var_a0 = temp_a4_3;
        }
        var_a4 = temp_a3_3->unkC;
        if (var_a0 < var_a4) {
            var_a0 = var_a4;
        }
    }
    temp_a3_4 = temp_s1->unk8820;
    if (temp_a3_4 != NULL) {
        temp_a4_4 = temp_a3_4->unk8;
        var_a1 += temp_a3_4->unk2C;
        if (var_a0 < temp_a4_4) {
            var_a0 = temp_a4_4;
        }
        var_a4 = temp_a3_4->unkC;
        if (var_a0 < var_a4) {
            var_a0 = var_a4;
        }
    }
    if (var_a1 != 0) {
        if (var_a1 >= 0xD1) {
            goto block_22;
        }
        if (var_a0 < 9) {
            sp0 = (s64) (temp_s1 + 0x10000);
            temp_s1->unk8A00 = 0;
            temp_s1->unk8A08 = __glMgrEvalCoord2DGe11;
            temp_a2 = temp_s1->unk8820;
            temp_s1->unk8A10 = __glMgrEvalMesh2DGe11;
            temp_s1->unk8818 = (s32) temp_s1->unk8814;
            temp_s1->unk880C = (s32) temp_s1->unk8808;
            temp_s1->unk8824 = temp_a2;
            temp_s1->unk8800 = (s32) temp_s1->unk87FC;
            temp_s1->unk8A15 = (u8) temp_s1->unk8A14;
            temp_a1 = temp_s1->unk8804;
            if (temp_a1 != 0) {
                __glMgrHostMapData2D(temp_s1, temp_s1, temp_a1, temp_a2, temp_a3_4, var_a4, temp_s1 + 0x10000, 0x10000);
                temp_s1->unk8804 = 0;
                var_ra = sp20;
            }
            temp_a1_2 = temp_s1->unk8810;
            if (temp_a1_2 != NULL) {
                sp20 = var_ra;
                temp_s1->imports.free(temp_s1, temp_a1_2);
                temp_s1->unk8810 = NULL;
            }
            temp_a1_3 = temp_s1->unk881C;
            if (temp_a1_3 != NULL) {
                sp20 = var_ra;
                temp_s1->imports.free(temp_s1, temp_a1_3);
                temp_s1->unk881C = NULL;
            }
            temp_a1_4 = temp_s1->unk8828;
            sp20 = var_ra;
            if (temp_a1_4 != NULL) {
                temp_s1->imports.free(temp_s1, temp_a1_4);
                temp_s1->unk8828 = NULL;
            }
            *(s32 *)0x74080 = 0xB144;
            temp_a0 = sp0->unk-7800;
            *(s32 *)0x74080 = (s32) sp0->unk-75EC;
            __glMgrSendMapSpec2D(temp_a0, temp_a0, 0xB144);
            temp_a0_2 = sp0->unk-77DC;
            __glMgrSendMapSpec2D(temp_a0_2, temp_a0_2);
            temp_a0_3 = sp0->unk-77F4;
            __glMgrSendMapSpec2D(temp_a0_3, temp_a0_3);
            temp_a0_4 = sp0->unk-77E8;
            __glMgrSendMapSpec2D(temp_a0_4, temp_a0_4);
            temp_a0_5 = sp0->unk-7800;
            __glMgrSendMapData2D(temp_a0_5, temp_a0_5);
            temp_a0_6 = sp0->unk-77DC;
            __glMgrSendMapData2D(temp_a0_6, temp_a0_6);
            temp_a0_7 = sp0->unk-77F4;
            __glMgrSendMapData2D(temp_a0_7, temp_a0_7);
            temp_a0_8 = sp0->unk-77E8;
            __glMgrSendMapData2D(temp_a0_8, temp_a0_8);
        } else {
block_22:
            temp_s0 = temp_s1 + 0x10000;
            temp_s1->unk8A10 = __glMgrEvalMesh2DHost;
            temp_s1->unk8A00 = 1;
            temp_s1->unk8A08 = __glMgrEvalCoord2DHost;
            temp_s1->unk8818 = (void *) temp_s1->unk8814;
            temp_s1->unk8824 = (void *) temp_s1->unk8820;
            temp_s1->unk880C = (void *) temp_s1->unk8808;
            temp_s1->unk8800 = (void *) temp_s1->unk87FC;
            temp_a1_5 = temp_s1->unk8804;
            if (temp_a1_5 != NULL) {
                temp_s1->imports.free(temp_s1, temp_a1_5);
                temp_s0->unk-77FC = NULL;
                var_ra = sp20;
            }
            temp_a3_5 = temp_s0->unk-7804;
            if (temp_a3_5 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-77FC = temp_s1->imports.malloc(temp_s1, temp_a3_5->imports.fprintf * 4);
                __glMgrHostMapData2D(temp_a3_5, temp_a3_5);
            }
            temp_a1_6 = temp_s0->unk-77F0;
            if (temp_a1_6 != NULL) {
                sp20 = var_ra;
                __glMgrHostMapData2D(temp_s1, temp_s1, temp_a1_6);
                temp_s0->unk-77F0 = NULL;
            }
            temp_a3_6 = temp_s0->unk-77F8;
            if (temp_a3_6 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-77F0 = temp_s1->imports.malloc(temp_s1, temp_a3_6->imports.fprintf * 4);
                __glMgrHostMapData2D(temp_a3_6, temp_a3_6);
            }
            temp_a1_7 = temp_s0->unk-77E4;
            if (temp_a1_7 != NULL) {
                sp20 = var_ra;
                __glMgrHostMapData2D(temp_s1, temp_s1, temp_a1_7);
                temp_s0->unk-77E4 = NULL;
            }
            temp_a3_7 = temp_s0->unk-77EC;
            if (temp_a3_7 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-77E4 = temp_s1->imports.malloc(temp_s1, temp_a3_7->imports.fprintf * 4);
                __glMgrHostMapData2D(temp_a3_7, temp_a3_7);
            }
            temp_a1_8 = temp_s0->unk-77D8;
            if (temp_a1_8 != NULL) {
                sp20 = var_ra;
                __glMgrHostMapData2D(temp_s1, temp_s1, temp_a1_8);
                temp_s0->unk-77D8 = NULL;
            }
            temp_a3_8 = temp_s0->unk-77E0;
            if (temp_a3_8 != NULL) {
                sp20 = var_ra;
                temp_s0->unk-77D8 = temp_s1->imports.malloc(temp_s1, temp_a3_8->imports.fprintf * 4);
                __glMgrHostMapData2D(temp_a3_8, temp_a3_8);
            }
        }
    }
}

void EvalV(f32 *arg0, void *arg1, f32 *arg3, f32 fparg2) {
    f32 *var_a0;
    f32 *var_a3;
    f32 *var_a5;
    f32 *var_t0;
    f32 *var_t8;
    f32 temp_f0;
    f32 temp_f5;
    f32 var_f4_2;
    f64 var_f4;
    s32 temp_a4;
    s32 temp_v1;
    s32 var_a4;
    s32 var_t1;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t9;
    s32 var_t9_2;

    var_a3 = arg3;
    temp_a4 = arg1->unk4;
    if (arg1->unkC != 1) {
        if (arg1->unk20 != fparg2) {
            var_f4 = (f64) (arg1->unk28 * (fparg2 - arg1->unk1C));
        } else {
            var_f4 = 1.0;
        }
        var_t0 = arg0;
        var_t9 = 0;
        if (temp_a4 > 0) {
            temp_f5 = (f32) (1.0 - (f64) (f32) var_f4);
loop_10:
            var_t3 = 0;
            if (arg1->unk8 > 0) {
                var_t8 = var_a3;
loop_13:
                var_t1 = arg1->unkC;
                var_f4_2 = 0.0f;
                if (!(var_t1 & 1)) {
                    var_t1 -= 1;
                    var_f4_2 = *((arg1->unk8 * var_t1 * 4) + var_t0);
                }
                if (var_t1 >= 2) {
                    var_a4 = var_t1 - 1;
                    var_a5 = (arg1->unk8 * var_t1 * 4) + var_t0;
                    var_a0 = (arg1->unk8 * var_a4 * 4) + var_t0;
                    do {
                        temp_f0 = temp_f5 * (*var_a0 + ((second half of f64) * var_f4_2));
                        var_a0 += arg1->unk8 * -2 * 4;
                        var_a5 += arg1->unk8 * -2 * 4;
                        var_a4 -= 2;
                        var_f4_2 = *var_a5 + temp_f0;
                    } while (var_a4 > 0);
                }
                var_t3 += 1;
                *var_t8 = (*var_t0 * temp_f5) + ((second half of f64) * var_f4_2);
                var_t8 += 4;
                var_t0 += 4;
                if (var_t3 < arg1->unk8) {
                    goto loop_13;
                }
            }
            var_a3 += arg1->unk8 * 4;
            var_t9 += 1;
            var_t0 += (arg1->unkC - 1) * arg1->unk8 * 4;
            if (var_t9 < arg1->unk4) {
                goto loop_10;
            }
        }
        return;
    }
    var_t9_2 = 0;
    if (temp_a4 > 0) {
        do {
            var_t3_2 = 0;
            if (arg1->unk8 > 0) {
                do {
                    temp_v1 = ((arg1->unk8 * var_t9_2) + var_t3_2) * 4;
                    *(temp_v1 + var_a3) = *(temp_v1 + arg0);
                    var_t3_2 += 1;
                } while (var_t3_2 < arg1->unk8);
            }
            var_t9_2 += 1;
        } while (var_t9_2 < arg1->unk4);
    }
}

void EvalU(f32 *arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5) {
    s64 sp0;
    f32 *var_a2;
    f32 *var_a3;
    f32 *var_t0;
    f32 temp_f0;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f4;
    f32 var_f4_2;
    f64 var_f8;
    f64 var_f9;
    s32 var_a7;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_t9;

    if (arg1->unk8 != 1) {
        var_t8 = 0;
        if (arg4 > 0) {
            var_f9 = 1.0;
            var_t9 = arg3;
            sp0 = arg3 + arg4;
loop_4:
            var_t0 = arg0;
            if (arg2->unkC == var_t9) {
                var_f4 = arg2->unk4;
            } else {
                var_f4 = arg2->unk0 + (arg2->unk8 * (f32) var_t9);
            }
            if (arg1->unk18 != var_f4) {
                var_f8 = (f64) (arg1->unk24 * (var_f4 - arg1->unk14));
                var_f9 = second half of f64;
            } else {
                var_f8 = var_f9;
                var_f9 = second half of f64;
            }
            var_t2 = 0;
            if (arg1->unk4 > 0) {
                temp_f6 = (f32) var_f8;
                temp_f5 = (f32) (var_f9 - (f64) temp_f6);
loop_15:
                var_a7 = arg1->unk8;
                if (arg1->unk8 & 1) {
                    var_f4_2 = 0.0f;
                } else {
                    var_a7 -= 1;
                    var_f4_2 = *((var_a7 * 4) + var_t0);
                }
                if (var_a7 >= 2) {
                    var_a3 = (var_a7 * 4) + var_t0;
                    do {
                        temp_f0 = temp_f5 * (var_a3->unk-4 + (temp_f6 * var_f4_2));
                        var_a3 -= 8;
                        var_f4_2 = *var_a3 + temp_f0;
                    } while ((u32) (var_t0 + 4) < (u32) var_a3);
                }
                *((((arg1->unk4 * var_t8) + var_t2) * 4) + arg5) = (*var_t0 * temp_f5) + (temp_f6 * var_f4_2);
                var_t2 += 1;
                var_t0 += arg1->unk8 * 4;
                if (var_t2 < arg1->unk4) {
                    goto loop_15;
                }
            }
            var_t9 += 1;
            var_t8 += 1;
            if (var_t9 != sp0) {
                goto loop_4;
            }
        }
        return;
    }
    var_t8_2 = 0;
    if (arg4 > 0) {
loop_26:
        var_t2_2 = 0;
        if (arg1->unk4 > 0) {
            var_a2 = arg0;
            do {
                *((((arg1->unk4 * var_t8_2) + var_t2_2) * 4) + arg5) = *var_a2;
                var_t2_2 += 1;
                var_a2 += 4;
            } while (var_t2_2 < arg1->unk4);
        }
        var_t8_2 += 1;
        if (arg4 != var_t8_2) {
            goto loop_26;
        }
    }
}

void EvalVdV(f32 *arg0, void *arg1, s64 arg3, void *arg4, f32 fparg2) {
    s64 sp8;
    s64 sp0;
    f32 *var_a5;
    f32 *var_a6;
    f32 *var_t1;
    f32 temp_f0;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f4;
    f32 var_f5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_t2;
    s32 var_t8;
    s64 temp_at;
    s64 var_a3;
    void *var_a4;
    void *var_t9;

    var_a3 = arg3;
    var_a4 = arg4;
    if (arg1->unk20 == fparg2) {

    }
    var_t1 = arg0;
    sp0 = 0;
    if (arg1->unk4 > 0) {
        temp_f6 = (f32) (1.0 - (f64) (second half of f64));
loop_7:
        var_t8 = 0;
        if (arg1->unk8 > 0) {
            sp8 = var_a3;
            var_t9 = var_a4;
loop_10:
            var_t2 = arg1->unkC;
            var_f4 = 0.0f;
            if (!(var_t2 & 1)) {
                var_t2 -= 1;
                var_f4 = *((arg1->unk8 * var_t2 * 4) + var_t1);
            }
            var_t9 += 4;
            var_f5 = var_f4;
            if (var_t2 >= 2) {
                var_a0 = var_t2 - 1;
                var_a6 = (arg1->unk8 * var_t2 * 4) + var_t1;
                var_a5 = (arg1->unk8 * var_a0 * 4) + var_t1;
                do {
                    temp_f0 = *var_a5 + ((second half of f64) * var_f4);
                    temp_f5 = (second half of f64) * ((temp_f6 * var_f5) - temp_f0);
                    var_a6 += arg1->unk8 * -2 * 4;
                    var_f4 = *var_a6 + (temp_f6 * temp_f0);
                    var_a5 += arg1->unk8 * -2 * 4;
                    var_a0 -= 2;
                    var_f5 = temp_f5 + var_f4;
                } while (var_a0 > 0);
            }
            var_t8 += 1;
            *sp8 = (f32) ((*var_t1 * temp_f6) + ((second half of f64) * var_f4));
            var_t9->unk-4 = (f32) (var_f5 - *var_t1);
            var_t1 += 4;
            sp8 += 4;
            if (var_t8 < arg1->unk8) {
                goto loop_10;
            }
        }
        temp_v0 = arg1->unk8 * 4;
        var_a4 += temp_v0;
        var_a3 += temp_v0;
        temp_at = sp0 + 1;
        sp0 = temp_at;
        var_t1 += (arg1->unkC - 1) * arg1->unk8 * 4;
        if (temp_at < arg1->unk4) {
            goto loop_7;
        }
    }
}

void EvalUdU(f32 *arg0, f32 *arg1, void *arg2, void *arg3, s32 arg4, s32 arg5, s32 arg6, void *arg7) {
    s64 sp88;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 *var_a5;
    f32 *var_a6;
    f32 *var_t3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f3;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 temp_f8;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f6;
    f32 var_f6_2;
    f32 var_f7;
    f32 var_f8;
    f32 var_f9;
    f64 var_f5;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a4;
    s32 var_s1;
    s32 var_s4;
    s32 var_s6;
    s32 var_t1;
    void *temp_t0;
    void *var_a1;
    void *var_a2;
    void *var_s5;
    void *var_t2;

    var_s1 = 0;
    unksp50 = (s64) __glCurrentContext;
    if (arg5 > 0) {
        var_s4 = arg4;
        var_s5 = arg7;
        var_s6 = 0;
        sp88 = arg4 + arg5;
loop_4:
        var_a5 = arg0;
        var_a6 = arg1;
        if (arg3->unkC == var_s4) {
            var_f4 = arg3->unk4;
        } else {
            var_f4 = arg3->unk0 + (arg3->unk8 * (f32) var_s4);
        }
        if (arg2->unk18 != var_f4) {
            var_f5 = (f64) (arg2->unk24 * (var_f4 - arg2->unk14));
        } else {
            var_f5 = 1.0;
        }
        var_t1 = 0;
        if (arg2->unk4 > 0) {
            temp_f7 = (f32) var_f5;
            var_t3 = &sp10;
            var_t2 = sp;
            temp_f8 = (f32) (1.0 - (f64) temp_f7);
loop_17:
            var_f6 = 0.0f;
            var_a4 = arg2->unk8;
            if (arg2->unk8 & 1) {
                var_f4_2 = 0.0f;
            } else {
                var_a4 -= 1;
                temp_v0 = var_a4 * 4;
                var_f6 = *(temp_v0 + var_a6);
                var_f4_2 = *(temp_v0 + var_a5);
            }
            var_t3 += 4;
            var_f5_2 = var_f4_2;
            if (var_a4 >= 2) {
                temp_a1 = var_a4 * 4;
                var_a2 = temp_a1 + var_a6;
                var_a1 = temp_a1 + var_a5;
                do {
                    temp_f6 = var_a1->unk-4 + (temp_f7 * var_f4_2);
                    temp_f0 = temp_f8 * (var_a2->unk-4 + (temp_f7 * var_f6));
                    temp_f5 = temp_f7 * ((temp_f8 * var_f5_2) - temp_f6);
                    temp_f6_2 = var_a2->unk-8;
                    var_f4_2 = var_a1->unk-8 + (temp_f8 * temp_f6);
                    var_a2 -= 8;
                    var_a1 -= 8;
                    var_f6 = temp_f6_2 + temp_f0;
                    var_f5_2 = temp_f5 + var_f4_2;
                } while ((u32) (var_a5 + 4) < (u32) var_a1);
            }
            *((((arg2->unk4 * var_s1) + var_t1) * 4) + arg6) = (*var_a5 * temp_f8) + (temp_f7 * var_f4_2);
            var_t2 += 4;
            var_t1 += 1;
            temp_f3 = *var_a6 * temp_f8;
            temp_f0_2 = var_f5_2 - *var_a5;
            temp_v0_2 = arg2->unk8 * 4;
            var_a6 += temp_v0_2;
            var_a5 += temp_v0_2;
            var_t2->unk-4 = temp_f0_2;
            var_t3->unk-4 = (f32) (temp_f3 + (temp_f7 * var_f6));
            if (var_t1 < arg2->unk4) {
                goto loop_17;
            }
        }
        var_f5_3 = sp0;
        var_f4_3 = sp4;
        var_f6_2 = sp8;
        var_f7 = sp10;
        var_f8 = sp14;
        var_f9 = sp18;
        if (arg2->unk4 == 4) {
            temp_t0 = var_s6 + arg6;
            temp_f12 = temp_t0->unk8;
            temp_f11 = temp_t0->unk4;
            temp_f10 = temp_t0->unk0;
            temp_f13 = temp_t0->unkC;
            var_f5_3 = (temp_f13 * var_f5_3) - (temp_f10 * spC);
            var_f4_3 = (temp_f13 * var_f4_3) - (temp_f11 * spC);
            var_f7 = (temp_f13 * var_f7) - (temp_f10 * sp1C);
            var_f8 = (temp_f13 * var_f8) - (temp_f11 * sp1C);
            var_f9 = (temp_f13 * var_f9) - (temp_f12 * sp1C);
            var_f6_2 = (temp_f13 * var_f6_2) - (temp_f12 * spC);
            sp18 = var_f9;
            sp14 = var_f8;
            sp10 = var_f7;
            sp8 = var_f6_2;
            sp4 = var_f4_3;
            sp0 = var_f5_3;
        }
        var_s5->unk8 = (f32) ((var_f7 * var_f4_3) - (var_f8 * var_f5_3));
        var_s5->unk4 = (f32) ((var_f9 * var_f5_3) - (var_f7 * var_f6_2));
        var_s5->unk0 = (f32) ((var_f8 * var_f6_2) - (var_f9 * var_f4_3));
        unksp50->unk2EC8(var_s5, var_s5);
        var_s6 += 0x10;
        var_s5 += 0xC;
        var_s4 += 1;
        var_s1 += 1;
        if (var_s4 != sp88) {
            goto loop_4;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74], gap at: 0x38. */
void EvalRow1D(s64 arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp78;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_s1;
    s32 temp_a0_2;
    s32 var_s5;
    s32 var_s8;
    s64 temp_v0;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_s2;
    void *temp_s3;
    void *temp_s4;

    sp18 = arg2;
    unksp30 = arg1;
    unksp38 = arg0;
    temp_s1 = __glCurrentContext;
    temp_a0 = temp_s1->unk85FC;
    temp_s3 = temp_s1->unk8618;
    temp_s2 = temp_s1->unk8600;
    temp_s4 = temp_s1->unk85F4;
    unksp48 = (s64) temp_s1->unk8614;
    unksp40 = (s64) temp_s1->unk8608;
    sp20 = (s64) temp_s1->unk8620;
    sp10 = (s64) temp_s1->unk860C;
    __glMgrCleanUp2D(temp_a0, temp_a0, temp_s4, arg0, arg1, arg2, arg3);
    if (sp10 == 0) {
        if (temp_s2 == NULL) {
            goto block_2;
        }
        goto block_32;
    }
    __glMgrCleanUp2D((__GLcontext *) unksp48, unksp48, sp10, unksp38, unksp30, sp18, arg3 + 0x2000);
    if (temp_s2 != NULL) {
block_32:
        __glMgrCleanUp2D((__GLcontext *) unksp40, (__GLcontext *) unksp40, temp_s2, unksp38, unksp30, sp18, arg3 + 0x1000);
        if (temp_s3 != NULL) {
            goto block_33;
        }
    } else {
block_2:
        if (temp_s3 != NULL) {
block_33:
            __glMgrCleanUp2D((__GLcontext *) sp20, sp20, temp_s3, unksp38, unksp30, sp18, arg3 + 0x3000);
        }
    }
    if (sp18 > 0) {
        sp0 = 0;
        var_s8 = 0;
        sp8 = 0;
        var_s5 = 0;
        sp78 = sp18 * 4;
loop_11:
        if (temp_s2 != NULL) {
            temp_a2 = temp_s1->unk1608;
            if (temp_s2->unk4 != 1) {
                temp_a2->unk680(var_s5 + arg3 + 0x1000);
            } else {
                temp_a2->unk6B8(sp0 + arg3 + 0x1000);
            }
        }
        if (temp_s3 != NULL) {
            temp_a0_2 = temp_s3->unk4;
            temp_a2_2 = temp_s1->unk1608;
            if (temp_a0_2 != 1) {
                if (temp_a0_2 == 2) {
                    temp_a2_2->unk728(sp8 + arg3 + 0x3000);
                    goto block_6;
                }
                if (temp_a0_2 != 3) {
                    sub_0dab0000(var_s5 + arg3 + 0x3000);
                    goto block_6;
                }
                temp_a2_2->unk748(var_s8 + arg3 + 0x3000);
                if (sp10 != 0) {
                    goto block_23;
                }
            } else {
                temp_a2_2->unk708(sp0 + arg3 + 0x3000);
block_6:
                goto block_7;
            }
        } else {
block_7:
            if (sp10 != 0) {
block_23:
                temp_s1->unk1608->unk6E8(var_s8 + arg3 + 0x2000);
            }
        }
        temp_a2_3 = temp_s1->unk1608;
        if (temp_s4->unk4 != 3) {
            temp_a2_3->unk618(var_s5 + arg3);
        } else {
            temp_a2_3->unk5F8(var_s8 + arg3);
        }
        var_s5 += 0x10;
        var_s8 += 0xC;
        temp_v0 = sp0 + 4;
        sp8 += 8;
        sp0 = temp_v0;
        if (temp_v0 != sp78) {
            goto loop_11;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x1e0, 0x1e4, 0x220, 0x224, 0x228, 0x22c, 0x230, 0x234, 0x238, 0x23c, 0x240, 0x244, 0x248, 0x24c, 0x250, 0x254, 0x258, 0x25c, 0x260, 0x264, 0x270, 0x274], gap at: 0x1e8. */
void EvalRow2D(s32 arg1, s32 arg2, s64 arg3, s32 arg4, s32 arg5, f32 fparg0) {
    s64 sp278;
    ? spF0;
    __GLcontext *temp_a0;
    __GLcontext *temp_s1;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 var_s5;
    s32 var_s6;
    s64 temp_v0;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_s2;
    void *temp_s3;
    void *temp_s4;

    temp_s1 = __glCurrentContext;
    temp_s4 = temp_s1 + 0x10000;
    temp_s3 = temp_s1->unk8820;
    temp_s2 = temp_s1->unk8808;
    temp_a2 = temp_s1->unk8828;
    unksp218 = (s64) temp_a2;
    unksp208 = (s64) temp_s1->unk881C;
    unksp210 = (s64) temp_s1->unk8810;
    unksp1E8 = (s64) temp_s1->unk8814;
    temp_a0 = temp_s1->unk8804;
    unksp200 = (s64) temp_s1->unk87FC;
    if (temp_s1->unk8A14 != 0) {
        __glMgrCleanUp2D(temp_a0, temp_a0, unksp200, temp_a2, sp, &spF0, fparg0);
        __glMgrCleanUp2D(sp, sp, &spF0, unksp200, arg1, arg2, arg3, arg4, arg4 + 0x2000);
    } else {
        __glMgrCleanUp2D(temp_a0, temp_a0, unksp200, temp_a2, sp, fparg0);
        __glMgrCleanUp2D(sp, sp, unksp200, arg1, arg2, arg3, arg4);
        if (unksp1E8 != 0) {
            __glMgrCleanUp2D((__GLcontext *) unksp208, unksp208, unksp1E8);
            __glMgrCleanUp2D(sp, sp, unksp1E8, arg1, arg2, arg3, arg4 + 0x2000);
        }
    }
    if (temp_s2 == NULL) {
        if (temp_s3 != NULL) {
            goto block_37;
        }
    } else {
        __glMgrCleanUp2D((__GLcontext *) unksp210, unksp210, temp_s2);
        __glMgrCleanUp2D(sp, sp, temp_s2, arg1, arg2, arg3, arg4 + 0x1000);
        if (temp_s3 != NULL) {
block_37:
            __glMgrCleanUp2D((__GLcontext *) unksp218, (__GLcontext *) unksp218, temp_s3);
            __glMgrCleanUp2D(sp, sp, temp_s3, arg1, arg2, arg3, arg4 + 0x3000);
        }
    }
    var_s6 = 0;
    if (arg5 != 0) {
        sp278 = arg3;
        if (arg3 > 0) {
            unksp1F0 = 0;
            unksp1F8 = 0;
            var_s5 = 0;
            unksp268 = sp278 * 4;
loop_12:
            if (temp_s2 != NULL) {
                temp_a3 = temp_s1->unk1608;
                if (temp_s2->unk4 != 1) {
                    temp_a3->unk680(var_s5 + arg4 + 0x1000);
                } else {
                    temp_a3->unk6B8(unksp1F0 + arg4 + 0x1000);
                }
            }
            if (temp_s3 != NULL) {
                temp_a0_2 = temp_s3->unk4;
                temp_a3_2 = temp_s1->unk1608;
                if (temp_a0_2 != 1) {
                    if (temp_a0_2 == 2) {
                        temp_a3_2->unk728(unksp1F8 + arg4 + 0x3000);
                    } else if (temp_a0_2 == 3) {
                        temp_a3_2->unk748(var_s6 + arg4 + 0x3000);
                    } else {
                        temp_a3_2->unk768(var_s5 + arg4 + 0x3000);
                    }
                } else {
                    temp_a3_2->unk708(unksp1F0 + arg4 + 0x3000);
                }
            }
            if (unksp1E8 == 0) {
                if (temp_s4->unk-75EC != 0) {
                    goto block_8;
                }
            } else {
block_8:
                sub_0dab0000(var_s6 + arg4 + 0x2000);
            }
            temp_a3_3 = temp_s1->unk1608;
            if (((void *) unksp200)->unk4 != 3) {
                temp_a3_3->unk618(var_s5 + arg4);
            } else {
                temp_a3_3->unk5F8(var_s6 + arg4);
            }
            var_s5 += 0x10;
            var_s6 += 0xC;
            temp_v0 = unksp1F0 + 4;
            unksp1F8 += 8;
            unksp1F0 = temp_v0;
            if (temp_v0 != unksp268) {
                goto loop_12;
            }
        }
    }
}

void Eval2Rows(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp50;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 var_s6;
    s32 var_s7;
    s64 temp_v0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_s3;
    void *temp_s4;
    void *temp_s5;

    temp_s0 = __glCurrentContext;
    temp_s5 = temp_s0 + 0x10000;
    temp_s4 = temp_s0->unk8820;
    temp_s3 = temp_s0->unk8808;
    sp10 = (s64) temp_s0->unk8814;
    sp8 = (s64) temp_s0->unk87FC;
    if (arg0 > 0) {
        sp18 = 0;
        var_s7 = 0;
        sp0 = 0;
        var_s6 = 0;
        sp50 = arg0 * 4;
loop_24:
        if (temp_s3 != NULL) {
            temp_a1 = temp_s0->unk1608;
            if (temp_s3->unk4 != 1) {
                temp_a1->unk680(var_s6 + arg2 + 0x1000, temp_a1);
            } else {
                temp_a1->unk6B8(sp18 + arg2 + 0x1000, temp_a1);
            }
        }
        if (temp_s4 != NULL) {
            temp_a0 = temp_s4->unk4;
            temp_a1_2 = temp_s0->unk1608;
            if (temp_a0 != 1) {
                if (temp_a0 == 2) {
                    temp_a1_2->unk728(sp0 + arg2 + 0x3000, temp_a1_2);
                } else if (temp_a0 == 3) {
                    temp_a1_2->unk748(var_s7 + arg2 + 0x3000, temp_a1_2);
                } else {
                    temp_a1_2->unk768(var_s6 + arg2 + 0x3000, temp_a1_2);
                }
            } else {
                temp_a1_2->unk708(sp18 + arg2 + 0x3000, temp_a1_2);
            }
        }
        if (sp10 == 0) {
            if (temp_s5->unk-75EC != 0) {
                goto block_2;
            }
        } else {
block_2:
            temp_s0->unk1608->unk6E8(var_s7 + arg2 + 0x2000);
        }
        temp_a1_3 = temp_s0->unk1608;
        if (((void *) sp8)->unk4 != 3) {
            temp_a1_3->unk618(var_s6 + arg2, temp_a1_3);
        } else {
            temp_a1_3->unk5F8(var_s7 + arg2, temp_a1_3);
        }
        if (temp_s3 != NULL) {
            temp_a1_4 = temp_s0->unk1608;
            if (temp_s3->unk4 != 1) {
                temp_a1_4->unk680(var_s6 + arg1 + 0x1000, temp_a1_4);
            } else {
                temp_a1_4->unk6B8(sp18 + arg1 + 0x1000, temp_a1_4);
            }
        }
        if (temp_s4 != NULL) {
            temp_a0_2 = temp_s4->unk4;
            temp_a1_5 = temp_s0->unk1608;
            if (temp_a0_2 != 1) {
                if (temp_a0_2 == 2) {
                    temp_a1_5->unk728(sp0 + arg1 + 0x3000, temp_a1_5);
                } else if (temp_a0_2 == 3) {
                    temp_a1_5->unk748(var_s7 + arg1 + 0x3000, temp_a1_5);
                } else {
                    temp_a1_5->unk768(var_s6 + arg1 + 0x3000, temp_a1_5);
                }
            } else {
                temp_a1_5->unk708(sp18 + arg1 + 0x3000, temp_a1_5);
            }
        }
        if ((sp10 != 0) || (temp_s5->unk-75EC != 0)) {
            temp_s0->unk1608->unk6E8(var_s7 + arg1 + 0x2000);
        }
        temp_a1_6 = temp_s0->unk1608;
        if (((void *) sp8)->unk4 != 3) {
            temp_a1_6->unk618(var_s6 + arg1, temp_a1_6);
        } else {
            temp_a1_6->unk5F8(var_s7 + arg1, temp_a1_6);
        }
        var_s6 += 0x10;
        var_s7 += 0xC;
        temp_v0 = sp18 + 4;
        sp0 += 8;
        sp18 = temp_v0;
        if (temp_v0 != sp50) {
            goto loop_24;
        }
    }
}

void __glMgrEvalCoord1DHost(__GLcontext *gc, f32 fparg0, ...) {
    ? sp10;

    __glMgrCleanUp2D(sp, sp, 0, 1, &sp10, fparg0, 0);
}

void __glMgrEvalMesh1DHost(__GLcontext *gc, s32 arg1, s32 arg2, ...) {
    ? *temp_s5;
    ? *var_s5;
    __GLcontext *temp_s1;
    s32 var_s0;
    s32 var_s2;
    s32 var_s2_2;

    var_s0 = arg1;
    temp_s1 = __glCurrentContext;
    if (temp_s1->unk72C != 0) {
        if (arg2 >= var_s0) {
            if (gc != (__GLcontext *)0x1B00) {
                if (gc == (__GLcontext *)0x1B01) {
                    var_s2 = var_s0 + 0x100;
                    if (arg2 >= var_s2) {
                        var_s5 = &temp_s1->unk720;
                        M2C_TRAP_IF(0xFF == 0);
                        do {
                            var_s2 += 0xFF;
                            temp_s1->unk1608->unk1C(3);
                            __glMgrCleanUp2D((__GLcontext *) var_s5, var_s5, var_s0, 0x100, sp);
                            var_s0 += 0xFF;
                            temp_s1->unk1608->unk2C();
                        } while (arg2 >= var_s2);
                    } else {
                        var_s5 = &temp_s1->unk720;
                    }
                    temp_s1->unk1608->unk1C(3);
                    __glMgrCleanUp2D((__GLcontext *) var_s5, var_s5, var_s0, (arg2 - var_s0) + 1, sp);
                    temp_s1->unk1608->unk2C();
                }
            } else {
                var_s2_2 = var_s0 + 0x100;
                if (arg2 >= var_s2_2) {
                    temp_s5 = &temp_s1->unk720;
                    do {
                        var_s2_2 += 0x100;
                        temp_s1->unk1608->unk1C(0);
                        __glMgrCleanUp2D((__GLcontext *) temp_s5, temp_s5, var_s0, 0x100, sp);
                        var_s0 += 0x100;
                        temp_s1->unk1608->unk2C();
                    } while (arg2 >= var_s2_2);
                }
                temp_s1->unk1608->unk1C(0);
                __glMgrCleanUp2D((__GLcontext *) &temp_s1->unk720, (__GLcontext *) &temp_s1->unk720, var_s0, (arg2 - var_s0) + 1, sp);
                temp_s1->unk1608->unk2C();
            }
        }
    }
}

void __glMgrEvalCoord2DHost(__GLcontext *gc, f32 fparg0, f32 fparg1, ...) {
    ? sp10;

    __glMgrCleanUp2D(gc, sp, 0, 1, &sp10, 1, fparg1, fparg0, 0);
}

void __glMgrEvalMesh2DHost(__GLcontext *gc, s32 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0, ...) {
    s64 spB8;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    f64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    f64 sp8;
    ? *temp_s7;
    ? *temp_s7_2;
    ? *temp_s7_3;
    __GLcontext *temp_s0;
    __GLcontext *var_a0;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f12_3;
    f32 var_f12_4;
    f32 var_f22_2;
    f32 var_f22_3;
    f32 var_f22_4;
    f32 var_f22_5;
    f32 var_f22_6;
    f32 var_f2;
    f64 var_f22;
    s32 temp_a2;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s6_3;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a5;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 var_ra;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s1_3;
    s64 var_s1_4;
    s64 var_s1_5;
    s64 var_s1_6;
    s64 var_s1_7;
    s64 var_s2;
    s64 var_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s2_2;
    void *var_s2_3;
    void *var_s2_4;
    void *var_s2_5;
    void *var_s2_6;
    void *var_s3_2;
    void *var_s3_3;
    void *var_s3_4;
    void *var_s3_5;

    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_f22 = saved_reg_f22;
    var_ra = saved_reg_ra;
    sp28 = arg4;
    temp_s0 = __glCurrentContext;
    sp68 = arg3;
    sp18 = arg2;
    if (temp_s0->unk73C != 0) {
        temp_a2 = temp_s0->unk74C;
        if (temp_a2 != 0) {
            if ((sp18 >= arg1) && (sp28 >= sp68)) {
                if (gc != (__GLcontext *)0x1B00) {
                    if (gc == (__GLcontext *)0x1B01) {
                        var_s6 = arg1;
                        temp_a5 = sp18 - 0x100;
                        sp38 = temp_a5;
                        temp_s7 = &temp_s0->unk730;
                        if (temp_a5 >= arg1) {
                            M2C_TRAP_IF(0xFF == 0);
                            sp30 = sp28 - sp68;
                            sp48 = sp68 < sp28;
                            sp20 = sp28 + 1;
                            sp40 = sp68 + 1;
loop_57:
                            if (temp_s0->unk74C == sp68) {
                                var_f22_2 = temp_s0->unk744;
                            } else {
                                var_f22_2 = temp_s0->unk740 + (temp_s0->unk748 * (f32) sp68);
                            }
                            temp_s0->unk1608->unk1C(3);
                            __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7, var_s6, 0x100, &arg_sp0 - 0x4030, 1, var_f22_2);
                            temp_s0->unk1608->unk2C();
                            var_s3_2 = &arg_sp0 - 0x4030;
                            var_s1_2 = sp40;
                            var_s2_2 = &arg_sp0 + 0xFFFF7FD0;
                            if (sp48 != 0) {
loop_64:
                                if (temp_s0->unk74C == var_s1_2) {
                                    var_f22_3 = temp_s0->unk744;
                                } else {
                                    var_f22_3 = temp_s0->unk740 + (temp_s0->unk748 * (f32) var_s1_2);
                                }
                                temp_s0->unk1608->unk1C(3);
                                __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7, var_s6, 0x100, var_s2_2, 1, var_f22_3);
                                temp_s0->unk1608->unk2C();
                                temp_s0->unk1608->unk1C(1);
                                __glMgrCleanUp2D((__GLcontext *)0xFF, 0xFF, var_s3_2, var_s2_2);
                                var_s1_2 += 1;
                                temp_s0->unk1608->unk2C();
                                temp_v0 = var_s3_2;
                                var_s3_2 = var_s2_2;
                                var_s2_2 = temp_v0;
                                if (sp20 != var_s1_2) {
                                    goto loop_64;
                                }
                            }
                            var_s6 += 0xFF;
                            if (sp38 >= var_s6) {
                                goto loop_57;
                            }
                            var_f22 = sp78;
                            var_ra = sp98;
                            var_s3 = spA0;
                            var_s2 = spA8;
                            var_s1 = spB8;
                            if (temp_s0->unk74C != sp68) {
                                goto block_67;
                            }
                            goto block_76;
                        }
                        sp40 = sp68 + 1;
                        if (temp_a2 == sp68) {
block_76:
                            var_f2 = temp_s0->unk744;
                            sp98 = var_ra;
                        } else {
block_67:
                            var_f2 = temp_s0->unk740 + (temp_s0->unk748 * (f32) sp68);
                            sp98 = var_ra;
                        }
                        sp8 = (bitwise f64) var_f2;
                        temp_s0->unk1608->unk1C(3);
                        temp_a3 = (sp18 - var_s6) + 1;
                        sp70 = temp_a3;
                        __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7, var_s6, temp_a3, &arg_sp0 - 0x4030, 1, sp8, second half of f64);
                        spB8 = var_s1;
                        spA8 = var_s2;
                        spA0 = var_s3;
                        temp_s0->unk1608->unk2C();
                        var_s3_3 = &arg_sp0 - 0x4030;
                        var_s2_3 = &arg_sp0 + 0xFFFF7FD0;
                        var_s1_3 = sp40;
                        if (sp28 >= sp40) {
                            sp78 = var_f22;
                            sp20 = sp28 + 1;
loop_72:
                            if (temp_s0->unk74C == var_s1_3) {
                                var_f22_4 = temp_s0->unk744;
                            } else {
                                var_f22_4 = temp_s0->unk740 + (temp_s0->unk748 * (f32) var_s1_3);
                            }
                            temp_s0->unk1608->unk1C(3);
                            __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7, var_s6, sp70, var_s2_3, 1, var_f22_4);
                            temp_s0->unk1608->unk2C();
                            temp_s0->unk1608->unk1C(1);
                            __glMgrCleanUp2D((__GLcontext *) sp70, sp70, var_s3_3, var_s2_3);
                            var_s1_3 += 1;
                            temp_s0->unk1608->unk2C();
                            temp_v0_2 = var_s3_3;
                            var_s3_3 = var_s2_3;
                            var_s2_3 = temp_v0_2;
                            if (sp20 != var_s1_3) {
                                goto loop_72;
                            }
                        }
                    } else if (gc == (__GLcontext *)0x1B02) {
                        var_s6_2 = arg1;
                        temp_a5_2 = sp18 - 0x100;
                        sp38 = temp_a5_2;
                        temp_s7_2 = &temp_s0->unk730;
                        if (temp_a5_2 >= arg1) {
                            M2C_TRAP_IF(0xFF == 0);
                            sp30 = sp28 - sp68;
                            sp48 = sp68 < sp28;
                            sp20 = sp28 + 1;
                            sp40 = sp68 + 1;
loop_15:
                            var_a0 = &arg_sp0 - 0x4030;
                            if (temp_s0->unk74C == sp68) {
                                var_a0 = &arg_sp0 - 0x4030;
                                var_f12 = temp_s0->unk744;
                            } else {
                                var_f12 = temp_s0->unk740 + (temp_s0->unk748 * (f32) sp68);
                            }
                            __glMgrCleanUp2D(var_a0, var_a0, temp_s7_2, var_s6_2, 0x100, var_a0, 0, var_f12);
                            var_s3_4 = &arg_sp0 - 0x4030;
                            var_s1_4 = sp40;
                            var_s2_4 = &arg_sp0 + 0xFFFF7FD0;
                            if (sp48 != 0) {
loop_22:
                                if (temp_s0->unk74C == var_s1_4) {
                                    var_f12_2 = temp_s0->unk744;
                                } else {
                                    var_f12_2 = temp_s0->unk740 + (temp_s0->unk748 * (f32) var_s1_4);
                                }
                                __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7_2, var_s6_2, 0x100, var_s2_4, 0, var_f12_2);
                                temp_s0->unk1608->unk1C(8);
                                __glMgrCleanUp2D((__GLcontext *)0x100, 0x100, var_s3_4, var_s2_4);
                                var_s1_4 += 1;
                                temp_s0->unk1608->unk2C();
                                temp_v0_3 = var_s3_4;
                                var_s3_4 = var_s2_4;
                                var_s2_4 = temp_v0_3;
                                if (sp20 != var_s1_4) {
                                    goto loop_22;
                                }
                            }
                            var_s6_2 += 0xFF;
                            if (sp38 >= var_s6_2) {
                                goto loop_15;
                            }
                            var_ra = sp98;
                            var_s3 = spA0;
                            var_s2 = spA8;
                            var_s1 = spB8;
                            if (temp_s0->unk74C == sp68) {
                                goto block_25;
                            }
                            goto block_27;
                        }
                        sp40 = sp68 + 1;
                        if (temp_a2 != sp68) {
block_27:
                            sp98 = var_ra;
                            var_f12_3 = temp_s0->unk740 + (temp_s0->unk748 * (f32) sp68);
                        } else {
block_25:
                            sp98 = var_ra;
                            var_f12_3 = temp_s0->unk744;
                        }
                        spB8 = var_s1;
                        spA8 = var_s2;
                        spA0 = var_s3;
                        temp_a3_2 = (sp18 - var_s6_2) + 1;
                        sp70 = temp_a3_2;
                        __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7_2, var_s6_2, temp_a3_2, &arg_sp0 - 0x4030, 0, var_f12_3);
                        var_s3_5 = &arg_sp0 - 0x4030;
                        var_s2_5 = &arg_sp0 + 0xFFFF7FD0;
                        var_s1_5 = sp40;
                        if (sp28 >= sp40) {
                            sp20 = sp28 + 1;
loop_32:
                            if (temp_s0->unk74C == var_s1_5) {
                                var_f12_4 = temp_s0->unk744;
                            } else {
                                var_f12_4 = temp_s0->unk740 + (temp_s0->unk748 * (f32) var_s1_5);
                            }
                            __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7_2, var_s6_2, sp70, var_s2_5, 0, var_f12_4);
                            temp_s0->unk1608->unk1C(8);
                            __glMgrCleanUp2D((__GLcontext *) sp70, sp70, var_s3_5, var_s2_5);
                            var_s1_5 += 1;
                            temp_s0->unk1608->unk2C();
                            temp_v0_4 = var_s3_5;
                            var_s3_5 = var_s2_5;
                            var_s2_5 = temp_v0_4;
                            if (sp20 != var_s1_5) {
                                goto loop_32;
                            }
                        }
                    }
                } else {
                    var_s6_3 = arg1;
                    temp_a5_3 = sp18 - 0x100;
                    sp38 = temp_a5_3;
                    temp_s7_3 = &temp_s0->unk730;
                    if (temp_a5_3 >= arg1) {
                        var_s2_6 = &arg_sp0 - 0x4030;
                        sp20 = sp28 + 1;
                        sp10 = (sp28 - sp68) + 1;
loop_42:
                        var_s1_6 = sp68;
loop_45:
                        if (temp_s0->unk74C == var_s1_6) {
                            var_f22_5 = temp_s0->unk744;
                        } else {
                            var_f22_5 = temp_s0->unk740 + (temp_s0->unk748 * (f32) var_s1_6);
                        }
                        temp_s0->unk1608->unk1C(0);
                        __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7_3, var_s6_3, 0x100, var_s2_6, 1, var_f22_5);
                        var_s1_6 += 1;
                        temp_s0->unk1608->unk2C();
                        if (sp20 != var_s1_6) {
                            goto loop_45;
                        }
                        var_s6_3 += 0x100;
                        if (sp38 >= var_s6_3) {
                            goto loop_42;
                        }
                        var_f22 = sp78;
                        var_ra = sp98;
                    } else {
                        var_s2_6 = &arg_sp0 - 0x4030;
                        sp20 = sp28 + 1;
                        sp10 = (sp28 - sp68) + 1;
                    }
                    sp98 = var_ra;
                    sp78 = var_f22;
                    var_s1_7 = sp68;
loop_53:
                    if (temp_s0->unk74C == var_s1_7) {
                        var_f22_6 = temp_s0->unk744;
                    } else {
                        var_f22_6 = temp_s0->unk740 + (temp_s0->unk748 * (f32) var_s1_7);
                    }
                    temp_s0->unk1608->unk1C(0);
                    __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */), temp_s7_3, var_s6_3, (sp18 - var_s6_3) + 1, var_s2_6, 1, var_f22_6);
                    var_s1_7 += 1;
                    temp_s0->unk1608->unk2C();
                    if (sp20 != var_s1_7) {
                        goto loop_53;
                    }
                }
            }
        }
    }
}

void __glMgrEvalCoord1DGe11(__GLcontext *gc, f32 fparg0, ...) {
    *(f32 *)0x74080 = 6.1343e-41f;
    *(f32 *)0x74080 = 2.000002f;
    *(f32 *)0x74080 = fparg0;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 6.2061e-41f;
}

void __glMgrEvalCoord2DGe11(__GLcontext *gc, f32 fparg0, f32 fparg1, ...) {
    *(f32 *)0x74080 = 6.1702e-41f;
    *(f32 *)0x74080 = 2.000002f;
    *(f32 *)0x74080 = fparg0;
    *(f32 *)0x74080 = fparg1;
    *(f32 *)0x74080 = 6.2061e-41f;
}

void __glMgrEvalMesh1DGe11(__GLcontext *gc, s32 arg1, s32 arg2, ...) {
    s64 sp30;
    s64 sp28;
    __GLcontext *temp_s3;
    s32 temp_a1;
    s32 var_a0;
    s32 var_a1;
    s32 var_s0;
    s64 var_ra;
    void *temp_a0;
    void *var_a2;
    void *var_a4;
    void *var_a4_2;
    void *var_at;

    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    var_s0 = arg1;
    if (arg2 >= arg1) {
        var_a2 = temp_s3 + 0x10000;
        temp_a0 = temp_s3->unk8A2C;
        if (temp_a0 != NULL) {
            var_a1 = temp_a0->unkC4;
            if (var_a1 == 0) {
                sp28 = (s64) var_a2;
                mgrTM_RefreshDim(temp_a0, var_a1, var_a2, &MgrasPrevVidTexture);
                var_ra = sp30;
                var_a1 = var_a2->unk-75D4->unkC4;
            }
            if (MgrasPrevVidTexture != 0) {
                sp28 = (s64) var_a2;
                sp30 = var_ra;
                mgrTM_VidTexWait(temp_s3, var_a1, 1, MgrasPrevVidTexture);
                var_a1 = var_a2->unk-75D4->unkC4;
            }
            if (var_a2->unk-6E04->unk1E4 != var_a1) {
                sp30 = var_ra;
                M2C_ERROR(/* Read from unset register $t9 */)(temp_s3, var_a1, var_a2);
            }
        }
        var_a4 = gc - 0x1B00;
        var_a0 = var_s0 + 6;
        temp_a1 = arg2 >= var_a0;
        if (gc != (__GLcontext *)0x1B00) {
            if (temp_a1 != 0) {
                M2C_TRAP_IF(5 == 0);
                do {
                    var_a0 += 5;
                    *(void **)0x74080 = (void *)0xA90C;
                    *(void **)0x74080 = var_a4;
                    *(void **)0x74080 = (void *) var_s0;
                    var_s0 += 5;
                    *(void **)0x74080 = (void *)6;
                } while (arg2 >= var_a0);
            } else {
                var_a4 = gc - 0x1B00;
            }
            var_at = (arg2 - var_s0) + 1;
            *(void **)0x74080 = (void *)0xA90C;
            *(void **)0x74080 = var_a4;
            *(void **)0x74080 = (void *) var_s0;
        } else {
            if (temp_a1 != 0) {
                var_a4_2 = gc - 0x1B00;
                M2C_TRAP_IF(6 == 0);
                do {
                    var_a0 += 6;
                    *(void *)0x74080 = (void *)0xA90C;
                    *(void *)0x74080 = var_a4_2;
                    *(void *)0x74080 = (void *) var_s0;
                    var_s0 += 6;
                    *(void *)0x74080 = (void *)6;
                } while (arg2 >= var_a0);
            } else {
                var_a4_2 = gc - 0x1B00;
            }
            var_at = (arg2 - var_s0) + 1;
            *(void *)0x74080 = (void *)0xA90C;
            *(void *)0x74080 = var_a4_2;
            *(void *)0x74080 = (void *) var_s0;
        }
        *(void **)0x74080 = var_at;
    }
}

void __glMgrEvalMesh2DGe11(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, ...) {
    s64 sp48;
    s64 sp40;
    s64 sp8;
    s64 sp0;
    __GLcontext *var_a6;
    s32 temp_a0_2;
    s32 temp_t1;
    s32 var_a1;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_t9;
    s32 var_t9_2;
    s32 var_t9_3;
    s32 var_t9_4;
    s64 var_ra;
    void *temp_a0;
    void *var_a2;
    void *var_a3;
    void *var_a3_2;
    void *var_a6_2;
    void *var_a6_3;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a6 = __glCurrentContext;
    if ((arg2 >= arg1) && (arg4 >= arg3)) {
        var_a2 = var_a6 + 0x10000;
        temp_a0 = var_a6->unk8A2C;
        if (temp_a0 != NULL) {
            var_a1 = temp_a0->unkC4;
            if (var_a1 == 0) {
                sp8 = (s64) var_a6;
                sp40 = (s64) var_a2;
                mgrTM_RefreshDim(temp_a0, var_a1, var_a2, &MgrasPrevVidTexture, var_a6);
                var_ra = sp48;
                var_a1 = var_a2->unk-75D4->unkC4;
            }
            if (MgrasPrevVidTexture != 0) {
                sp8 = (s64) var_a6;
                sp40 = (s64) var_a2;
                sp48 = var_ra;
                mgrTM_VidTexWait(var_a6, var_a1, 1);
                var_a6 = (__GLcontext *) sp8;
                var_a1 = var_a2->unk-75D4->unkC4;
            }
            if (var_a2->unk-6E04->unk1E4 != var_a1) {
                sp48 = var_ra;
                mgrTM_DrawSetup((s64) var_a6, var_a1, var_a2);
            }
        }
        temp_t1 = arg2 - 6;
        temp_a0_2 = temp_t1 >= arg1;
        if (gc != (__GLcontext *)0x1B00) {
            var_a2_2 = arg1;
            if (temp_a0_2 != 0) {
                var_a3 = gc - 0x1B00;
                M2C_TRAP_IF(5 == 0);
                var_a4 = arg4 - 0x32;
                sp0 = (arg4 - arg3) - 1;
loop_14:
                var_t9 = arg3;
                if (var_a4 >= arg3) {
                    M2C_TRAP_IF(0x31 == 0);
                    do {
                        *(void **)0x74080 = (void *)0xAA18;
                        *(void **)0x74080 = var_a3;
                        *(void **)0x74080 = (void *)0x10;
                        *(void **)0x74080 = (void *) var_a2_2;
                        *(void **)0x74080 = (void *)6;
                        *(void **)0x74080 = (void *) var_t9;
                        var_t9 += 0x31;
                        *(void **)0x74080 = (void *)0x32;
                    } while (var_a4 >= var_t9);
                }
                *(void **)0x74080 = (void *)0xAA18;
                *(void **)0x74080 = var_a3;
                *(void **)0x74080 = (void *)0x12;
                *(void **)0x74080 = (void *) var_a2_2;
                var_a2_2 += 5;
                *(void **)0x74080 = (void *)6;
                *(void **)0x74080 = (void *) var_t9;
                *(void **)0x74080 = (arg4 - var_t9) + 1;
                if (temp_t1 >= var_a2_2) {
                    goto loop_14;
                }
            } else {
                var_a3 = gc - 0x1B00;
                var_a4 = arg4 - 0x32;
            }
            var_t9_2 = arg3;
            if (var_a4 >= arg3) {
                var_a6_2 = (arg2 - var_a2_2) + 1;
                M2C_TRAP_IF(0x31 == 0);
                do {
                    *(void **)0x74080 = (void *)0xAA18;
                    *(void **)0x74080 = var_a3;
                    *(void **)0x74080 = (void *)0x11;
                    *(void **)0x74080 = (void *) var_a2_2;
                    *(void **)0x74080 = var_a6_2;
                    *(void **)0x74080 = (void *) var_t9_2;
                    var_t9_2 += 0x31;
                    *(void **)0x74080 = (void *)0x32;
                } while (var_a4 >= var_t9_2);
            } else {
                var_a6_2 = (arg2 - var_a2_2) + 1;
            }
            var_v0 = (arg4 - var_t9_2) + 1;
            *(void **)0x74080 = (void *)0xAA18;
            *(void **)0x74080 = var_a3;
            *(void **)0x74080 = (void *)0x13;
            *(void **)0x74080 = (void *) var_a2_2;
            *(void **)0x74080 = var_a6_2;
            *(void **)0x74080 = (void *) var_t9_2;
        } else {
            var_a2_3 = arg1;
            if (temp_a0_2 != 0) {
                var_a3_2 = gc - 0x1B00;
                M2C_TRAP_IF(6 == 0);
                var_a4_2 = arg4 - 0x32;
loop_29:
                var_t9_3 = arg3;
                if (var_a4_2 >= arg3) {
                    M2C_TRAP_IF(0x32 == 0);
                    do {
                        *(void *)0x74080 = (void *)0xAA18;
                        *(void *)0x74080 = var_a3_2;
                        *(void *)0x74080 = (void *)0x13;
                        *(void *)0x74080 = (void *) var_a2_3;
                        *(void *)0x74080 = (void *)6;
                        *(void *)0x74080 = (void *) var_t9_3;
                        var_t9_3 += 0x32;
                        *(void *)0x74080 = (void *)0x32;
                    } while (var_a4_2 >= var_t9_3);
                }
                *(void *)0x74080 = (void *)0xAA18;
                *(void *)0x74080 = var_a3_2;
                *(void *)0x74080 = (void *)0x13;
                *(void *)0x74080 = (void *) var_a2_3;
                var_a2_3 += 6;
                *(void *)0x74080 = (void *)6;
                *(void *)0x74080 = (void *) var_t9_3;
                *(void *)0x74080 = (void *) ((arg4 - var_t9_3) + 1);
                if (temp_t1 >= var_a2_3) {
                    goto loop_29;
                }
            } else {
                var_a3_2 = gc - 0x1B00;
                var_a4_2 = arg4 - 0x32;
            }
            var_t9_4 = arg3;
            if (var_a4_2 >= arg3) {
                var_a6_3 = (arg2 - var_a2_3) + 1;
                M2C_TRAP_IF(0x32 == 0);
                do {
                    *(void *)0x74080 = (void *)0xAA18;
                    *(void *)0x74080 = var_a3_2;
                    *(void *)0x74080 = (void *)0x13;
                    *(void *)0x74080 = (void *) var_a2_3;
                    *(void *)0x74080 = var_a6_3;
                    *(void *)0x74080 = (void *) var_t9_4;
                    var_t9_4 += 0x32;
                    *(void *)0x74080 = (void *)0x32;
                } while (var_a4_2 >= var_t9_4);
            } else {
                var_a6_3 = (arg2 - var_a2_3) + 1;
            }
            var_v0 = (arg4 - var_t9_4) + 1;
            *(void *)0x74080 = (void *)0xAA18;
            *(void *)0x74080 = var_a3_2;
            *(void *)0x74080 = (void *)0x13;
            *(void *)0x74080 = (void *) var_a2_3;
            *(void *)0x74080 = var_a6_3;
            *(void *)0x74080 = (void *) var_t9_4;
        }
        *(void **)0x74080 = var_v0;
    }
}

void __glMgrInitEvaluators(__GLcontext *gc, ...) {
    f32 *temp_at;
    f32 temp_f0;
    s32 temp_a2;
    s32 temp_s1;
    s32 var_a0;
    s32 var_a2;
    void *temp_s0;
    void *temp_s2;
    void *temp_s6;
    void *var_a3;
    void *var_s3;

    gc->unk8A00 = 0;
    gc->unk8A10 = __glMgrEvalMesh2DGe11;
    gc->unk8A08 = __glMgrEvalCoord2DGe11;
    gc->unk8A0C = __glMgrEvalMesh1DGe11;
    gc->unk8A04 = __glMgrEvalCoord1DGe11;
    gc->unk8828 = 0;
    gc->unk8824 = 0;
    gc->unk8820 = 0;
    gc->unk8620 = 0;
    gc->unk861C = 0;
    gc->unk8618 = 0;
    gc->unk881C = 0;
    gc->unk8818 = 0;
    gc->unk8814 = 0;
    gc->unk8614 = 0;
    gc->unk8610 = 0;
    gc->unk860C = 0;
    gc->unk8810 = 0;
    gc->unk880C = 0;
    gc->unk8808 = 0;
    gc->unk8608 = 0;
    gc->unk8604 = 0;
    gc->unk8600 = 0;
    gc->unk8804 = 0;
    gc->unk8800 = 0;
    gc->unk87FC = 0;
    gc->unk85FC = 0;
    gc->unk85F8 = 0;
    gc->unk85F4 = 0;
    var_s3 = sub_0dbf0000 - 0x1FC0;
    temp_s6 = var_s3 + 0x120;
    do {
        temp_a2 = var_s3->unk8;
        temp_s1 = var_s3->unkC;
        temp_s0 = (var_s3->unk4 * 0x34) + gc + 0xFFFE0000;
        temp_s2 = (var_s3->unk0 * 0x34) + gc + 0xFFFE0000;
        temp_s2->unk-3AF0 = temp_s1;
        temp_s2->unk-3AFC = 1.0f;
        temp_s2->unk-3B00 = 0.0f;
        temp_s2->unk-3B04 = 1.0f;
        temp_s2->unk-3B08 = 0.0f;
        temp_s2->unk-3B0C = 0;
        temp_s2->unk-3B10 = 1;
        temp_s2->unk-3B14 = 1;
        temp_s2->unk-3B18 = temp_s1;
        temp_s2->unk-3B1C = temp_a2;
        temp_s0->unk-3F68 = temp_s1;
        temp_s0->unk-3F74 = 1.0f;
        temp_s0->unk-3F78 = 0.0f;
        temp_s0->unk-3F7C = 1.0f;
        temp_s0->unk-3F80 = 0.0f;
        temp_s0->unk-3F84 = 0;
        temp_s0->unk-3F88 = 1;
        temp_s0->unk-3F8C = 1;
        temp_s0->unk-3F90 = temp_s1;
        temp_s0->unk-3F94 = temp_a2;
        temp_s2->unk-3AEC = gc->imports.malloc(gc, temp_s2->unk-3AF0 * 4);
        temp_s0->unk-3F64 = gc->imports.malloc(gc, temp_s0->unk-3F68 * 4);
        var_a3 = var_s3;
        var_a0 = 0;
        if (temp_s1 > 0) {
            var_a2 = 0;
            do {
                temp_f0 = var_a3->unk10;
                *(temp_s2->unk-3AEC + var_a2) = temp_f0;
                var_a3 += 4;
                var_a0 += 1;
                temp_at = temp_s0->unk-3F64 + var_a2;
                var_a2 += 4;
                *temp_at = temp_f0;
            } while (var_a0 < temp_s1);
        }
        var_s3 += 0x20;
    } while (var_s3 != temp_s6);
}

void __glMgrFreeEvaluators(__GLcontext *gc, ...) {
    void *temp_a1;
    void *temp_a1_2;
    void *var_s0;

    var_s0 = gc + 0x10000;
loop_6:
    temp_a1 = var_s0->unk-79AC;
    if (temp_a1 != NULL) {
        gc->imports.free(gc, temp_a1);
        var_s0->unk-79AC = NULL;
    }
    temp_a1_2 = var_s0->unk-77A4;
    if (temp_a1_2 != NULL) {
        gc->imports.free(gc, temp_a1_2);
        var_s0->unk-77A4 = NULL;
    }
    var_s0 += 0x34;
    if (var_s0 != (&gc->unk1D4 + 0x10000)) {
        goto loop_6;
    }
}

void __glMgSetUpMap1(s32 arg0, s32 arg1, s32 arg4, s32 *arg5, f32 fparg2, f32 fparg3) {
    s64 sp8;
    s32 temp_a3_2;
    s32 temp_lo;
    s64 var_a3;
    u32 temp_a3;
    void *temp_s3;

    temp_a3 = arg0 - 0xD90;
    if (temp_a3 < 9U) {
        var_a3 = arg0 * 3;
        if ((fparg2 != fparg3) && (arg1 > 0) && (arg1 < 0x10)) {
            var_a3 = (s64) ((arg0 * 0x34) + __glCurrentContext);
            temp_s3 = var_a3 + 0xFFFE0000;
            if (arg4 >= temp_s3->unk-3B18) {
                if (temp_s3->unk-3B14 == arg1) {
                    sp8 = var_a3;
                    *arg5 = 0;
                } else {
                    sp8 = var_a3;
                    *arg5 = 1;
                }
                temp_a3_2 = temp_s3->unk-3B18;
                temp_lo = temp_a3_2 * arg1;
                temp_s3->unk-3B04 = fparg3;
                temp_s3->unk-3B08 = fparg2;
                temp_s3->unk-3B14 = arg1;
                temp_s3->unk-3AF0 = temp_lo;
                temp_s3->unk-3AF8 = (f32) ((second half of f64) / (f64) (second half of f64));
                temp_s3->unk-3AEC = sub_0dbf0000(__glCurrentContext, temp_s3->unk-3AEC, temp_lo * 4, temp_a3_2, arg1, __glCurrentContext);
                return;
            }
        }
        __glSetError(0x501, (void *) var_a3, arg1, __glCurrentContext);
        return;
    }
    __glSetError(0x500, (temp_a3 * 4) + (M2C_ERROR(/* Read from unset register $t9 */) - 0x1E40), arg1, __glCurrentContext);
}

void __glMgSetUpMap2(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg7, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, s32 arg_sp4, s32 *arg_spC) {
    s64 sp8;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a1;
    s32 var_a3;
    s64 var_a4;
    u32 temp_a4;
    void *temp_s3;

    var_a1 = arg1;
    var_a3 = arg3;
    temp_a5 = var_a1;
    temp_a4 = arg0 - 0xDB0;
    if (temp_a4 < 9U) {
        var_a4 = arg0 * 3;
        if ((fparg3 != fparg4) && (fparg5 != fparg6) && (temp_a5 > 0) && (temp_a5 < 0x10) && (arg2 > 0) && (arg2 < 0x10)) {
            var_a4 = (s64) ((arg0 * 0x34) + __glCurrentContext);
            temp_s3 = var_a4 + 0xFFFE0000;
            var_a1 = temp_s3->unk-3F90;
            var_a3 = arg7 < var_a1;
            if (var_a3 == 0) {
                var_a3 = 1;
                if (arg_sp4 >= var_a1) {
                    if (temp_s3->unk-3F8C == temp_a5) {
                        if (temp_s3->unk-3F88 == arg2) {
                            sp8 = var_a4;
                            *arg_spC = 0;
                        } else {
                            goto block_13;
                        }
                    } else {
block_13:
                        sp8 = var_a4;
                        *arg_spC = 1;
                    }
                    temp_lo = temp_a5 * arg2;
                    temp_a3 = temp_s3->unk-3F90;
                    temp_lo_2 = temp_a3 * temp_lo;
                    temp_s3->unk-3F74 = fparg6;
                    temp_s3->unk-3F78 = fparg5;
                    temp_s3->unk-3F7C = fparg4;
                    temp_s3->unk-3F80 = fparg3;
                    temp_s3->unk-3F88 = arg2;
                    temp_s3->unk-3F8C = temp_a5;
                    temp_s3->unk-3F68 = temp_lo_2;
                    temp_s3->unk-3F6C = (f32) ((second half of f64) / (f64) (fparg6 - fparg5));
                    temp_s3->unk-3F70 = (f32) (second half of f64);
                    temp_s3->unk-3F64 = sub_0dbf0000(__glCurrentContext, temp_s3->unk-3F64, temp_lo_2 * 4, temp_a3, temp_lo, (__GLcontext *) temp_a5, arg2);
                    return;
                }
            }
        }
        __glSetError(0x501, (void *) var_a1, var_a3, (__GLcontext *) var_a4, temp_a5, arg2);
        return;
    }
    __glSetError(0x500, (temp_a4 * 4) + (M2C_ERROR(/* Read from unset register $t9 */) - 0x1E18), temp_a5, (__GLcontext *) arg2);
}

void __glMgrim_Map1d(enum GLenum target, f64 u1, f64 u2, s32 stride, s32 order, f64 *points) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s3;
    f64 *var_a4;
    s32 temp_a7;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_a5;
    s32 var_t0;

    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgSetUpMap1(order);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (order > 0) {
                temp_a7 = order * 4;
                var_a0 = 0;
                var_t0 = 0;
                var_a5 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
loop_7:
                var_a1 = 0;
                if (var_a5 > 0) {
                    var_a4 = var_t0 + points;
                    var_a3 = var_a0;
                    do {
                        *(M2C_ERROR(/* Read from unset register $v0 */)->unk30 + var_a3) = (f32) *var_a4;
                        var_a5 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                        var_a4 += 8;
                        var_a1 += 1;
                        var_a3 += temp_a7;
                    } while (var_a1 < var_a5);
                }
                var_a0 += 4;
                var_t0 += stride * 8;
                if (var_a0 != temp_a7) {
                    goto loop_7;
                }
            }
            if (((*M2C_ERROR(/* Read from unset register $v0 */) * 0xC) + temp_s3 + 0x85F4)->unk4 == M2C_ERROR(/* Read from unset register $v0 */)) {
                if (sp0 != 0) {
                    __glMgrCleanUp1D(M2C_ERROR(/* Read from unset register $a0 */));
                } else if (temp_s3->unk8A00 != 1) {
                    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrSendMapData1D(temp_a0, temp_a0);
                } else {
                    temp_a0_2 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrHostMapData1D(temp_a0_2, temp_a0_2);
                }
            }
            return;
        }
        return;
    }
    __glSetError(0x502);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void __glMgrim_SoftMap1d(__GLcontext *gc, s64 arg3, s64 arg4, s64 arg5, f64 fparg1, f64 fparg2, ...) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    sp28 = arg5;
    sp30 = arg4;
    sp38 = arg3;
    unksp8 = fparg2;
    __glim_Map1d((enum GLenum) gc, fparg1, fparg2, (s32) arg3, (s32) arg4, (f64 *) arg5);
    __glMgrim_Map1d((enum GLenum) gc, fparg1, fparg2, (s32) arg3, (s32) arg4, (f64 *) arg5);
}

void __glMgrim_Map1f(enum GLenum target, f32 u1, f32 u2, s32 stride, s32 order, f32 *points) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s3;
    f32 *var_a4;
    s32 temp_a7;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_a5;
    s32 var_t0;

    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgSetUpMap1(order);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (order > 0) {
                temp_a7 = order * 4;
                var_a0 = 0;
                var_t0 = 0;
                var_a5 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
loop_7:
                var_a1 = 0;
                if (var_a5 > 0) {
                    var_a4 = var_t0 + points;
                    var_a3 = var_a0;
                    do {
                        *(M2C_ERROR(/* Read from unset register $v0 */)->unk30 + var_a3) = *var_a4;
                        var_a5 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                        var_a4 += 4;
                        var_a1 += 1;
                        var_a3 += temp_a7;
                    } while (var_a1 < var_a5);
                }
                var_a0 += 4;
                var_t0 += stride * 4;
                if (var_a0 != temp_a7) {
                    goto loop_7;
                }
            }
            if (((*M2C_ERROR(/* Read from unset register $v0 */) * 0xC) + temp_s3 + 0x85F4)->unk4 == M2C_ERROR(/* Read from unset register $v0 */)) {
                if (sp0 != 0) {
                    __glMgrCleanUp1D(M2C_ERROR(/* Read from unset register $a0 */));
                } else if (temp_s3->unk8A00 != 1) {
                    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrSendMapData1D(temp_a0, temp_a0);
                } else {
                    temp_a0_2 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrHostMapData1D(temp_a0_2, temp_a0_2);
                }
            }
            return;
        }
        return;
    }
    __glSetError(0x502);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void __glMgrim_SoftMap1f(__GLcontext *gc, s64 arg3, s64 arg4, s64 arg5, f32 fparg1, f64 fparg2, ...) {
    s64 sp38;
    s64 sp30;
    s64 sp28;

    sp28 = arg5;
    sp30 = arg4;
    sp38 = arg3;
    unksp8 = fparg2;
    __glim_Map1f((enum GLenum) gc, fparg1, (f32) fparg2, (s32) arg3, (s32) arg4, (f32 *) arg5);
    __glMgrim_Map1f((enum GLenum) gc, fparg1, (f32) fparg2, (s32) arg3, (s32) arg4, (f32 *) arg5);
}

void __glMgrim_Map2d(enum GLenum target, f64 u1, f64 u2, s32 ustride, s32 uorder, f64 v1, f64 v2, s32 vstride, s32 vorder, f64 *points, s32 arg_sp4, s32 arg_spC) {
    s64 sp18;
    s32 sp10;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s4;
    f64 *var_a3;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;

    temp_s4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgSetUpMap2(uorder, arg_sp4, vstride, (s32) &sp10);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_t3 = 0;
            sp18 = (s64) ((*M2C_ERROR(/* Read from unset register $v0 */) * 0xC) + temp_s4 + 0x87FC);
            if (arg_sp4 > 0) {
                var_a7 = uorder * 4;
                var_t2 = 0;
                var_t1 = 0;
loop_5:
                if (uorder > 0) {
                    var_a4 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                    var_s1 = var_t1;
                    var_s2 = var_t2;
loop_8:
                    var_a1 = 0;
                    if (var_a4 > 0) {
                        var_a2 = var_s2;
                        var_a3 = arg_spC + var_s1;
                        do {
                            *(M2C_ERROR(/* Read from unset register $v0 */)->unk30 + var_a2) = (f32) *var_a3;
                            var_a4 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                            var_a3 += 8;
                            var_a1 += 1;
                            var_a2 += uorder * arg_sp4 * 4;
                        } while (var_a1 < var_a4);
                    }
                    var_s2 += 4;
                    var_s1 += ustride * 8;
                    if (var_s2 != var_a7) {
                        goto loop_8;
                    }
                }
                var_t1 += vstride * 8;
                var_a7 += uorder * 4;
                var_t3 += 1;
                var_t2 += uorder * 4;
                if (var_t3 != arg_sp4) {
                    goto loop_5;
                }
            }
            if (sp18->unk4 == M2C_ERROR(/* Read from unset register $v0 */)) {
                if (sp10 != 0) {
                    __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */));
                } else if (temp_s4->unk8A00 != 1) {
                    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrSendMapData2D(temp_a0, temp_a0);
                } else {
                    temp_a0_2 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrHostMapData2D(temp_a0_2, temp_a0_2);
                }
            }
            return;
        }
        return;
    }
    __glSetError(0x502);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44], gap at: 0x18. */
void __glMgrim_SoftMap2d(__GLcontext *gc, s64 arg3, s64 arg4, s64 arg7, f64 fparg1, f64 fparg2, f64 fparg5, f64 fparg6, s32 arg_sp4, s32 arg_spC, ...) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;

    sp58 = arg7;
    unksp18 = fparg6;
    unksp20 = fparg5;
    sp60 = arg4;
    sp68 = arg3;
    unksp28 = fparg2;
    sp50 = (s64) arg_spC;
    sp48 = (s64) arg_sp4;
    __glim_Map2d((enum GLenum) gc, fparg1, fparg2, (s32) arg3, (s32) arg4, fparg5, fparg6, (s32) arg7, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x8 in block */), /* extra? */ arg_sp4, /* extra? */ arg_spC);
    __glMgrim_Map2d((enum GLenum) gc, fparg1, fparg2, (s32) arg3, (s32) arg4, fparg5, fparg6, (s32) arg7, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x8 in block */), /* extra? */ (s32) sp48, /* extra? */ (s32) sp50);
}

void __glMgrim_Map2f(enum GLenum target, f32 u1, f32 u2, s32 ustride, s32 uorder, f32 v1, f32 v2, s32 vstride, s32 vorder, f32 *points, s32 arg_sp4, s32 arg_spC) {
    s64 sp18;
    s32 sp10;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s4;
    f32 *var_a3;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;

    temp_s4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgSetUpMap2(uorder, arg_sp4, vstride, (s32) &sp10);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_t3 = 0;
            sp18 = (s64) ((*M2C_ERROR(/* Read from unset register $v0 */) * 0xC) + temp_s4 + 0x87FC);
            if (arg_sp4 > 0) {
                var_a7 = uorder * 4;
                var_t2 = 0;
                var_t1 = 0;
loop_5:
                if (uorder > 0) {
                    var_a4 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                    var_s1 = var_t1;
                    var_s2 = var_t2;
loop_8:
                    var_a1 = 0;
                    if (var_a4 > 0) {
                        var_a2 = var_s2;
                        var_a3 = arg_spC + var_s1;
                        do {
                            *(M2C_ERROR(/* Read from unset register $v0 */)->unk30 + var_a2) = *var_a3;
                            var_a4 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
                            var_a3 += 4;
                            var_a1 += 1;
                            var_a2 += uorder * arg_sp4 * 4;
                        } while (var_a1 < var_a4);
                    }
                    var_s2 += 4;
                    var_s1 += ustride * 4;
                    if (var_s2 != var_a7) {
                        goto loop_8;
                    }
                }
                var_t1 += vstride * 4;
                var_a7 += uorder * 4;
                var_t3 += 1;
                var_t2 += uorder * 4;
                if (var_t3 != arg_sp4) {
                    goto loop_5;
                }
            }
            if (sp18->unk4 == M2C_ERROR(/* Read from unset register $v0 */)) {
                if (sp10 != 0) {
                    __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */));
                } else if (temp_s4->unk8A00 != 1) {
                    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrSendMapData2D(temp_a0, temp_a0);
                } else {
                    temp_a0_2 = M2C_ERROR(/* Read from unset register $v0 */);
                    __glMgrHostMapData2D(temp_a0_2, temp_a0_2);
                }
            }
            return;
        }
        return;
    }
    __glSetError(0x502);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44], gap at: 0x18. */
void __glMgrim_SoftMap2f(__GLcontext *gc, s64 arg3, s64 arg4, s64 arg7, f32 fparg1, f64 fparg2, f64 fparg5, f64 fparg6, s32 arg_sp4, s32 arg_spC, ...) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;

    sp58 = arg7;
    unksp18 = fparg6;
    unksp20 = fparg5;
    sp60 = arg4;
    sp68 = arg3;
    unksp28 = fparg2;
    sp50 = (s64) arg_spC;
    sp48 = (s64) arg_sp4;
    __glim_Map2f((enum GLenum) gc, fparg1, (f32) fparg2, (s32) arg3, (s32) arg4, (f32) fparg5, (f32) fparg6, (s32) arg7, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x8 in block */), /* extra? */ arg_sp4, /* extra? */ arg_spC);
    __glMgrim_Map2f((enum GLenum) gc, fparg1, (f32) fparg2, (s32) arg3, (s32) arg4, (f32) fparg5, (f32) fparg6, (s32) arg7, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x8 in block */), /* extra? */ (s32) sp48, /* extra? */ (s32) sp50);
}

void __glMgrim_EvalCoord1d(f64 u) {
    if (__glCurrentContext->unk85F4 == 0) {
        return;
    }
    __glCurrentContext->unk8A04((f32) u);
}

void __glMgrim_EvalCoord1dv(f64 *u) {
    if (__glCurrentContext->unk85F4 == 0) {
        return;
    }
    __glCurrentContext->unk8A04((f32) *u, second half of f64);
}

void __glMgrim_EvalCoord1f(f32 u) {
    if (__glCurrentContext->unk85F4 == 0) {
        return;
    }
    __glCurrentContext->unk8A04();
}

void __glMgrim_EvalCoord1fv(f32 *u) {
    if (__glCurrentContext->unk85F4 == 0) {
        return;
    }
    __glCurrentContext->unk8A04(*u);
}

void __glMgrim_EvalCoord2d(f64 u, f64 v) {
    if (__glCurrentContext->unk87FC == 0) {
        return;
    }
    __glCurrentContext->unk8A08((f32) u, (f32) (second half of f64));
}

void __glMgrim_EvalCoord2dv(f64 *u) {
    if (__glCurrentContext->unk87FC == 0) {
        return;
    }
    __glCurrentContext->unk8A08((f32) u->unk0, (f32) (second half of f64));
}

void __glMgrim_EvalCoord2f(f32 u, f32 v) {
    if (__glCurrentContext->unk87FC == 0) {
        return;
    }
    __glCurrentContext->unk8A08();
}

void __glMgrim_EvalCoord2fv(f32 *u) {
    if (__glCurrentContext->unk87FC == 0) {
        return;
    }
    __glCurrentContext->unk8A08(u->unk0, u->unk4);
}

void __glMgrim_MapGrid1d(s32 un, f64 u1, f64 u2) {
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f4;

    if (__glBeginMode != 1) {
        __glCurrentContext->unk72C = un;
        temp_f6 = (f32) u2;
        temp_f5 = (f32) u1;
        __glCurrentContext->unk724 = temp_f6;
        __glCurrentContext->unk720 = temp_f5;
        if (un > 0) {
            var_f4 = (temp_f6 - temp_f5) / (f32) un;
        } else {
            var_f4 = 0.0f;
        }
        __glCurrentContext->unk728 = (bitwise s32) var_f4;
        *(s32 *)0x74080 = 0xAE10;
        *(s32 *)0x74080 = un;
        *(s32 *)0x74080 = (bitwise s32) (f32) u1;
        *(s32 *)0x74080 = (bitwise s32) (f32) u2;
        *(s32 *)0x74080 = (bitwise s32) var_f4;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_MapGrid1f(s32 un, f32 u1, f32 u2) {
    f32 var_f4;

    if (__glBeginMode != 1) {
        __glCurrentContext->unk72C = un;
        __glCurrentContext->unk724 = u2;
        __glCurrentContext->unk720 = u1;
        if (un > 0) {
            var_f4 = (u2 - u1) / (f32) un;
        } else {
            var_f4 = 0.0f;
        }
        __glCurrentContext->unk728 = (bitwise s32) var_f4;
        *(s32 *)0x74080 = 0xAE10;
        *(s32 *)0x74080 = un;
        *(s32 *)0x74080 = (bitwise s32) u1;
        *(s32 *)0x74080 = (bitwise s32) u2;
        *(s32 *)0x74080 = (bitwise s32) var_f4;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_MapGrid2d(s32 un, f64 u1, f64 u2, s32 vn, f64 v1, f64 v2) {
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 var_f4;
    f32 var_f5;

    if (__glBeginMode != 1) {
        temp_f7 = (f32) v2;
        __glCurrentContext->unk73C = un;
        temp_f4 = (f32) u2;
        var_f5 = 0.0f;
        temp_f6 = (f32) u1;
        __glCurrentContext->unk734 = temp_f4;
        __glCurrentContext->unk730 = temp_f6;
        if (un > 0) {
            var_f5 = (temp_f4 - temp_f6) / (f32) un;
        }
        __glCurrentContext->unk738 = (bitwise s32) var_f5;
        __glCurrentContext->unk74C = vn;
        temp_f6_2 = (f32) v1;
        __glCurrentContext->unk744 = temp_f7;
        var_f4 = 0.0f;
        __glCurrentContext->unk740 = temp_f6_2;
        if (vn > 0) {
            var_f4 = (temp_f7 - temp_f6_2) / (f32) vn;
        }
        __glCurrentContext->unk748 = var_f4;
        *(s32 *)0x74080 = 0xAF20;
        *(s32 *)0x74080 = un;
        *(s32 *)0x74080 = (bitwise s32) (f32) u1;
        *(s32 *)0x74080 = (bitwise s32) (f32) u2;
        *(s32 *)0x74080 = (bitwise s32) var_f5;
        *(s32 *)0x74080 = vn;
        *(s32 *)0x74080 = (bitwise s32) (f32) v1;
        *(s32 *)0x74080 = (bitwise s32) (f32) v2;
        *(s32 *)0x74080 = (bitwise s32) var_f4;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_MapGrid2f(s32 un, f32 u1, f32 u2, s32 vn, f32 v1, f32 v2) {
    f32 var_f4;
    f32 var_f5;

    if (__glBeginMode != 1) {
        __glCurrentContext->unk73C = un;
        __glCurrentContext->unk734 = u2;
        __glCurrentContext->unk730 = u1;
        if (un > 0) {
            var_f4 = (u2 - u1) / (f32) un;
        } else {
            var_f4 = 0.0f;
        }
        __glCurrentContext->unk738 = (bitwise s32) var_f4;
        __glCurrentContext->unk74C = vn;
        __glCurrentContext->unk744 = v2;
        __glCurrentContext->unk740 = v1;
        if (vn > 0) {
            var_f5 = (v2 - v1) / (f32) vn;
        } else {
            var_f5 = 0.0f;
        }
        __glCurrentContext->unk748 = var_f5;
        *(s32 *)0x74080 = 0xAF20;
        *(s32 *)0x74080 = un;
        *(s32 *)0x74080 = (bitwise s32) u1;
        *(s32 *)0x74080 = (bitwise s32) u2;
        *(s32 *)0x74080 = (bitwise s32) var_f4;
        *(s32 *)0x74080 = vn;
        *(s32 *)0x74080 = (bitwise s32) v1;
        *(s32 *)0x74080 = (bitwise s32) v2;
        *(s32 *)0x74080 = (bitwise s32) var_f5;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_EvalMesh1(enum GLenum mode, s32 i1, s32 i2) {
    __GLcontext *temp_a5;
    void *temp_a3;

    if (__glBeginMode != 1) {
        temp_a5 = __glCurrentContext + 0x10000;
        temp_a3 = __glCurrentContext->unk85F4;
        if (temp_a3 != NULL) {
            if ((mode != GL_POINT) && (mode != GL_LINE)) {
                __glSetError(0x500, temp_a3, (s32) __glCurrentContext, temp_a5);
                return;
            }
            __glCurrentContext->unk8A0C(temp_a3, __glCurrentContext, temp_a5);
            return;
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_EvalPoint1(s32 i) {
    f32 var_f12;

    if (__glCurrentContext->unk85F4 != 0) {
        if (__glCurrentContext->unk72C == i) {
            var_f12 = __glCurrentContext->unk724;
        } else {
            var_f12 = __glCurrentContext->unk720 + ((bitwise f32) __glCurrentContext->unk728 * (f32) i);
        }
        __glCurrentContext->unk8A04(var_f12);
    }
}

void __glMgrim_EvalMesh2(enum GLenum mode, s32 i1, s32 i2, s32 j1, s32 j2) {
    __GLcontext *temp_a7;
    void *temp_a5;

    if (__glBeginMode != 1) {
        temp_a7 = __glCurrentContext + 0x10000;
        temp_a5 = __glCurrentContext->unk87FC;
        if (temp_a5 != NULL) {
            if ((mode != GL_POINT) && (mode != GL_LINE) && (mode != GL_FILL)) {
                __glSetError(0x500, temp_a5, (s32) __glCurrentContext, temp_a7);
                return;
            }
            __glCurrentContext->unk8A10(temp_a5, __glCurrentContext, temp_a7);
            return;
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_EvalPoint2(s32 i, s32 j) {
    f32 var_f12;
    f32 var_f13;

    if (__glCurrentContext->unk87FC != 0) {
        if (__glCurrentContext->unk73C == i) {
            var_f12 = __glCurrentContext->unk734;
        } else {
            var_f12 = __glCurrentContext->unk730 + ((bitwise f32) __glCurrentContext->unk738 * (f32) i);
        }
        if (__glCurrentContext->unk74C == j) {
            var_f13 = __glCurrentContext->unk744;
        } else {
            var_f13 = __glCurrentContext->unk740 + (__glCurrentContext->unk748 * (f32) j);
        }
        __glCurrentContext->unk8A08(var_f12, var_f13);
    }
}

void __glMgrUpdateEvalAttributes(__GLcontext *gc, ...) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    void *var_a3;
    void *var_a3_2;
    void *var_a3_3;
    void *var_a3_4;

    if (gc->unk6A0 & 0x800000) {
        gc->unk8A14 = 1U;
    } else {
        gc->unk8A14 = 0U;
    }
    gc->unk89DC = 0;
    gc->unk87D4 = 0;
    gc->unk89A8 = 0;
    gc->unk87A0 = 0;
    gc->unk8974 = 0;
    gc->unk876C = 0;
    gc->unk8940 = 0;
    gc->unk8738 = 0;
    gc->unk890C = 0;
    gc->unk8704 = 0;
    gc->unk88D8 = 0;
    gc->unk86D0 = 0;
    gc->unk88A4 = 0;
    gc->unk869C = 0;
    gc->unk8870 = 0;
    gc->unk8668 = 0;
    gc->unk883C = 0;
    gc->unk8634 = 0;
    var_a3 = NULL;
    temp_a4 = gc->unk6B0;
    var_at = temp_a4 & 0x100;
    if (temp_a4 & 0x80) {
        gc->unk87A0 = 1;
        var_a3 = gc + 0x8790;
        var_at = gc->unk6B0 & 0x100;
    }
    if (var_at != 0) {
        gc->unk87D4 = 1;
        var_a3 = gc + 0x87C4;
    }
    gc->unk85F4 = var_a3;
    var_a3_2 = NULL;
    if (gc->unk6B0 & 8) {
        gc->unk86D0 = 1;
        var_a3_2 = gc + 0x86C0;
    }
    var_at_2 = gc->unk6B0 & 0x20;
    if (gc->unk6B0 & 0x10) {
        gc->unk8704 = 1;
        var_a3_2 = gc + 0x86F4;
        var_at_2 = gc->unk6B0 & 0x20;
    }
    var_at_3 = gc->unk6B0 & 0x40;
    if (var_at_2 != 0) {
        gc->unk86D0 = 1;
        var_a3_2 = gc + 0x86C0;
        var_at_3 = gc->unk6B0 & 0x40;
    }
    if (var_at_3 != 0) {
        gc->unk8704 = 1;
        var_a3_2 = gc + 0x86F4;
    }
    gc->unk8600 = NULL;
    gc->unk8618 = var_a3_2;
    if (gc->unk6B0 & 2) {
        gc->unk8668 = 1;
        if (gc->modes.colorIndexMode != 0) {
            gc->unk8600 = (void *) (gc + 0x8658);
        }
    }
    if (gc->unk6B0 & 1) {
        gc->unk8634 = 1;
        if (gc->modes.colorIndexMode == 0) {
            gc->unk8600 = (void *) (gc + 0x8624);
        }
    }
    var_a3_3 = NULL;
    gc->unk860C = NULL;
    if (gc->unk6B0 & 4) {
        gc->unk869C = 1;
        gc->unk860C = (void *) (gc + 0x868C);
    }
    temp_a4_2 = gc->unk6B4;
    var_at_4 = temp_a4_2 & 0x100;
    if (temp_a4_2 & 0x80) {
        gc->unk89A8 = 1;
        var_a3_3 = gc + 0x8998;
        var_at_4 = gc->unk6B4 & 0x100;
    }
    if (var_at_4 != 0) {
        gc->unk89DC = 1;
        var_a3_3 = gc + 0x89CC;
    }
    gc->unk87FC = var_a3_3;
    var_a3_4 = NULL;
    if (gc->unk6B4 & 8) {
        gc->unk88D8 = 1;
        var_a3_4 = gc + 0x88C8;
    }
    var_at_5 = gc->unk6B4 & 0x20;
    if (gc->unk6B4 & 0x10) {
        gc->unk890C = 1;
        var_a3_4 = gc + 0x88FC;
        var_at_5 = gc->unk6B4 & 0x20;
    }
    var_at_6 = gc->unk6B4 & 0x40;
    if (var_at_5 != 0) {
        gc->unk88D8 = 1;
        var_a3_4 = gc + 0x88C8;
        var_at_6 = gc->unk6B4 & 0x40;
    }
    if (var_at_6 != 0) {
        gc->unk890C = 1;
        var_a3_4 = gc + 0x88FC;
    }
    gc->unk8808 = NULL;
    gc->unk8820 = var_a3_4;
    if (gc->unk6B4 & 2) {
        gc->unk8870 = 1;
        if (gc->modes.colorIndexMode != 0) {
            gc->unk8808 = (void *) (gc + 0x8860);
        }
    }
    if (gc->unk6B4 & 1) {
        gc->unk883C = 1;
        if (gc->modes.colorIndexMode == 0) {
            gc->unk8808 = (void *) (gc + 0x882C);
        }
    }
    gc->unk8814 = NULL;
    if (gc->unk6B4 & 4) {
        gc->unk88A4 = 1;
        if (gc->unk8A14 == 0) {
            gc->unk8814 = (void *) (gc + 0x8894);
        }
    }
    temp_a1 = gc->unk74C;
    temp_a2 = gc->unk73C;
    temp_a4_3 = gc->unk72C;
    *(s32 *)0x74080 = 0xAE10;
    *(s32 *)0x74080 = temp_a4_3;
    *(s32 *)0x74080 = gc->unk720;
    *(s32 *)0x74080 = (bitwise s32) gc->unk724;
    *(s32 *)0x74080 = gc->unk728;
    *(s32 *)0x74080 = 0xAF20;
    *(s32 *)0x74080 = temp_a2;
    *(s32 *)0x74080 = gc->unk730;
    *(s32 *)0x74080 = (bitwise s32) gc->unk734;
    *(s32 *)0x74080 = gc->unk738;
    *(s32 *)0x74080 = temp_a1;
    *(s32 *)0x74080 = (bitwise s32) gc->unk740;
    *(s32 *)0x74080 = (bitwise s32) gc->unk744;
    *(s32 *)0x74080 = (bitwise s32) gc->unk748;
    __glMgrCleanUp1D((__GLcontext *)0x74080, (s32 *)0x74080, temp_a1, temp_a2, 0xAF20, temp_a4_3, 0xAE10);
    __glMgrCleanUp2D(M2C_ERROR(/* Read from unset register $a0 */));
}
