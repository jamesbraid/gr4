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
    /* 0x3120 */ char pad3120[0x43C0];              /* maybe part of procs[0x15]? */
    /* 0x74E0 */ s32 unk74E0;                       /* inferred */
    /* 0x74E4 */ s32 unk74E4;                       /* inferred */
    /* 0x74E8 */ s32 unk74E8;                       /* inferred */
    /* 0x74EC */ s32 unk74EC;                       /* inferred */
    /* 0x74F0 */ s32 unk74F0;                       /* inferred */
    /* 0x74F4 */ s32 unk74F4;                       /* inferred */
    /* 0x74F8 */ s32 unk74F8;                       /* inferred */
    /* 0x74FC */ s32 unk74FC;                       /* inferred */
    /* 0x7500 */ char pad7500[0x130];               /* maybe part of unk74FC[0x4D]? */
    /* 0x7630 */ s32 unk7630;                       /* inferred */
    /* 0x7634 */ char pad7634[0x28];                /* maybe part of unk7630[0xB]? */
    /* 0x765C */ s32 unk765C;                       /* inferred */
    /* 0x7660 */ char pad7660[0x48];                /* maybe part of unk765C[0x13]? */
    /* 0x76A8 */ s32 unk76A8;                       /* inferred */
    /* 0x76AC */ char pad76AC[0x88];                /* maybe part of unk76A8[0x23]? */
    /* 0x7734 */ void *unk7734;                     /* inferred */
    /* 0x7738 */ char pad7738[4];
    /* 0x773C */ s32 unk773C;                       /* inferred */
    /* 0x7740 */ char pad7740[4];
    /* 0x7744 */ void *unk7744;                     /* inferred */
    /* 0x7748 */ char pad7748[0x44C];               /* maybe part of unk7744[0x114]? */
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

void __glMgrStoreLine(__GLcontext *gc, s32 arg2, s32 arg3, ...) {
    s64 sp40;
    s64 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    ? (*temp_s4)(void *, void *, s32, s32);
    f32 temp_f1;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s2;
    void *temp_s3;
    void *var_s1;

    var_a2 = arg2;
    var_a3 = arg3;
    var_s1 = gc->unk7734;
    temp_s5 = gc->unk74FC;
    var_s0 = gc->unk74F8;
    temp_s7 = gc->unk74F0;
    temp_s8 = gc->unk74E8;
    temp_s3 = gc->unk7744;
    temp_s4 = temp_s3->unkA4;
    sp0 = gc->unk74E0;
    sp40 = (s64) gc->unk74EC;
    sp4 = gc->unk74E4;
    sp38 = (s64) gc->unk74F4;
    var_s2 = gc->unk765C - 1;
    sp8 = gc->unk7630;
    temp_s6 = gc->unk76A8;
    if (var_s2 >= 0) {
loop_4:
        spC = var_s1->unk0;
        sp10 = var_s1->unk4;
        temp_f1 = var_s1->unk8;
        var_s1 += 0x10;
        sp14 = temp_f1;
        var_s0 += temp_s5;
        sp18 = var_s1->unk-4;
        temp_s4(temp_s3, sp, var_a2, var_a3);
        var_s2 -= 1;
        var_a3 = sp0;
        var_a2 = sp4;
        if (var_s0 < 0) {
            sp4 = sp38 + var_a2;
            var_s0 &= 0x7FFFFFFF;
            sp0 = sp40 + var_a3;
        } else {
            sp4 = temp_s7 + var_a2;
            sp0 = temp_s8 + var_a3;
        }
        sp8 += temp_s6;
        if (var_s2 != -1) {
            goto loop_4;
        }
    }
}

void __glMgrStoreStippledLine(__GLcontext *gc, ...) {
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp40;
    s64 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_at;
    s32 temp_s7;
    s32 temp_s8;
    s32 var_s1;
    s32 var_s2;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6_2;
    s64 var_s6;
    u32 var_s0;
    void *temp_v0;
    void *var_s3;

    var_s4 = gc->unk7630;
    var_s2 = gc->unk74E0;
    var_s3 = gc->unk7734;
    temp_s8 = gc->unk74FC;
    var_s5 = gc->unk74F8;
    spB0 = (s64) gc->unk76A8;
    var_s1 = gc->unk74E4;
    spA8 = (s64) gc->unk74E8;
    spA0 = (s64) gc->unk74F0;
    sp98 = (s64) gc->unk74EC;
    sp90 = (s64) gc->unk74F4;
    temp_v0 = gc->unk7744;
    temp_at = gc->unk765C;
    sp80 = (s64) gc->unk773C;
    sp40 = (s64) temp_v0;
    sp88 = (s64) temp_at;
    sp38 = (s64) temp_v0->unkA4;
    if (temp_at != 0) {
loop_3:
        var_s6 = sp88;
        if (sp88 >= 0x21) {
            var_s6 = 0x20;
        }
        var_s0 = 0x80000000;
        temp_s7 = *sp80;
        sp80 += 4;
        var_s6_2 = var_s6 - 1;
        sp88 -= var_s6;
        if (var_s6_2 >= 0) {
loop_10:
            var_s5 += temp_s8;
            var_s6_2 -= 1;
            if (temp_s7 & var_s0) {
                sp8 = var_s4;
                sp4 = var_s1;
                sp0 = var_s2;
                spC = var_s3->unk0;
                sp10 = var_s3->unk4;
                sp14 = var_s3->unk8;
                sp18 = var_s3->unkC;
                ((? (*)(s64, void *)) sp38)(sp40, sp);
            }
            var_s3 += 0x10;
            if (var_s5 >= 0) {
                var_s2 += spA8;
                var_s1 += spA0;
            } else {
                var_s2 += sp98;
                var_s5 &= 0x7FFFFFFF;
                var_s1 += sp90;
            }
            var_s0 = var_s0 >> 1;
            var_s4 += spB0;
            if (var_s6_2 != -1) {
                goto loop_10;
            }
        }
        if (sp88 != 0) {
            goto loop_3;
        }
    }
}
