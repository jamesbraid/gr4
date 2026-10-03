typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x3BC];                 /* maybe part of gcState[0xF0]? */
    /* 0x0454 */ ? unk454;                          /* inferred */
    /* 0x0454 */ char pad454[0x7BC];
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

extern s32 MgrasPrevVidTexture;
extern ? __glMgr_InternalUnpack;

void __glMgrle_TexImage1D(__GLcontext *gc, ...) {
    s64 sp40;
    __GLcontext *temp_s0;
    s32 *temp_a2;
    s32 *temp_a2_3;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 temp_a2_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a3;
    void *temp_a0;
    void *var_a3_2;

    var_a3 = 9;
    var_a1 = 0;
    var_a0 = 9;
    temp_s0 = __glCurrentContext;
    do {
        temp_v0 = var_a1 + &temp_s0->unk454;
        temp_v1 = var_a1 + sp;
        var_a1 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a1_2 = 0;
    do {
        temp_a2 = var_a1_2 + &temp_s0->unk454;
        temp_v1_2 = var_a1_2 + &__glMgr_InternalUnpack;
        var_a1_2 += 4;
        var_a0 -= 1;
        *temp_a2 = *temp_v1_2;
    } while (var_a0 > 0);
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s8 *(*)(__GLcontext *, s8 *), s32 (**)(__GLcontext *, s8 *, s8 *, ...)))0x10F8(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, gc->imports.getenv, &gc->imports.sprintf);
    var_a3_2 = temp_s0 + 0x10000;
    temp_a2_2 = temp_s0->unk8A2C;
    temp_a0 = temp_s0 + 0x8A30;
    if (temp_a2_2 == temp_a0) {
        var_a1_3 = temp_s0->unk8AF4;
        if ((temp_s0 != ((-1 << 0x10) | 0x75D0)) && (var_a1_3 == 0)) {
            sp40 = (s64) var_a3_2;
            mgrTM_RefreshDim(temp_a0, var_a1_3, temp_a2_2, var_a3_2);
            var_a1_3 = var_a3_2->unk-750C;
        }
        if (MgrasPrevVidTexture != 0) {
            sp40 = (s64) var_a3_2;
            mgrTM_DrawSetup(temp_s0, var_a1_3, 1, (s64) var_a3_2);
            var_a1_3 = var_a3_2->unk-750C;
        }
        if (var_a3_2->unk-6E04->unk1E4 != var_a1_3) {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, var_a1_3);
        }
    }
    var_a1_4 = 9;
    var_a0_2 = 0;
    do {
        temp_a2_3 = var_a0_2 + sp;
        temp_at = var_a0_2 + &temp_s0->unk454;
        var_a0_2 += 4;
        var_a1_4 -= 1;
        *temp_at = *temp_a2_3;
    } while (var_a1_4 > 0);
}

void __glMgrle_TexImage2D(__GLcontext *gc, ...) {
    s64 sp50;
    ? sp10;
    void *(**sp4)(__GLcontext *, s8 *, s8 *);
    __GLcontext *temp_s0;
    s32 *temp_a2;
    s32 *temp_a2_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a3;
    void *temp_a0;
    void *var_a3_2;

    var_a3 = 9;
    var_a1 = 0;
    var_a0 = 9;
    temp_s0 = __glCurrentContext;
    do {
        temp_v0 = var_a1 + &temp_s0->unk454;
        temp_v1 = var_a1 + &sp10;
        var_a1 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a1_2 = 0;
    do {
        temp_a2 = var_a1_2 + &temp_s0->unk454;
        temp_v1_2 = var_a1_2 + &__glMgr_InternalUnpack;
        var_a1_2 += 4;
        var_a0 -= 1;
        *temp_a2 = *temp_v1_2;
    } while (var_a0 > 0);
    sp4 = &gc->imports.fopen;
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s8 *(*)(__GLcontext *, s8 *), s32 (*)(__GLcontext *, s8 *)))0x10FC(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, gc->imports.getenv, gc->imports.atoi);
    var_a3_2 = temp_s0 + 0x10000;
    temp_a0 = temp_s0 + 0x8BC8;
    if (temp_s0->unk8A2C == temp_a0) {
        var_a1_3 = temp_s0->unk8C8C;
        if ((temp_s0 != ((-1 << 0x10) | 0x7438)) && (var_a1_3 == 0)) {
            sp50 = (s64) var_a3_2;
            mgrTM_RefreshDim(temp_a0, var_a1_3);
            var_a1_3 = var_a3_2->unk-7374;
        }
        if (MgrasPrevVidTexture != 0) {
            sp50 = (s64) var_a3_2;
            mgrTM_DrawSetup(temp_s0, var_a1_3, 1, (s64) var_a3_2);
            var_a1_3 = var_a3_2->unk-7374;
        }
        if (var_a3_2->unk-6E04->unk1E4 != var_a1_3) {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, var_a1_3);
        }
    }
    var_a1_4 = 9;
    var_a0_2 = 0;
    do {
        temp_a2_2 = var_a0_2 + &sp10;
        temp_at = var_a0_2 + &temp_s0->unk454;
        var_a0_2 += 4;
        var_a1_4 -= 1;
        *temp_at = *temp_a2_2;
    } while (var_a1_4 > 0);
}

void __glMgrle_TexImage3DEXT(__GLcontext *gc, ...) {
    s64 sp50;
    ? sp10;
    s32 (**spC)(__GLcontext *, void *);
    s32 (*sp4)(__GLcontext *, s8 *, s8 *, ...);
    __GLcontext *temp_s0;
    s32 *temp_a2;
    s32 *temp_a2_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a3;
    void *temp_a0;
    void *var_a3_2;

    var_a3 = 9;
    var_a1 = 0;
    var_a0 = 9;
    temp_s0 = __glCurrentContext;
    do {
        temp_v0 = var_a1 + &temp_s0->unk454;
        temp_v1 = var_a1 + &sp10;
        var_a1 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a1_2 = 0;
    do {
        temp_a2 = var_a1_2 + &temp_s0->unk454;
        temp_v1_2 = var_a1_2 + &__glMgr_InternalUnpack;
        var_a1_2 += 4;
        var_a0 -= 1;
        *temp_a2 = *temp_v1_2;
    } while (var_a0 > 0);
    spC = &gc->imports.fclose;
    sp4 = gc->imports.sprintf;
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s8 *(*)(__GLcontext *, s8 *), s32 (*)(__GLcontext *, s8 *)))0x1358(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, gc->imports.getenv, gc->imports.atoi);
    var_a3_2 = temp_s0 + 0x10000;
    temp_a0 = temp_s0 + 0x8D60;
    if (temp_s0->unk8A2C == temp_a0) {
        var_a1_3 = temp_s0->unk8E24;
        if ((temp_s0 != ((-1 << 0x10) | 0x72A0)) && (var_a1_3 == 0)) {
            sp50 = (s64) var_a3_2;
            mgrTM_RefreshDim(temp_a0, var_a1_3);
            var_a1_3 = var_a3_2->unk-71DC;
        }
        if (MgrasPrevVidTexture != 0) {
            sp50 = (s64) var_a3_2;
            mgrTM_DrawSetup(temp_s0, var_a1_3, 1, (s64) var_a3_2);
            var_a1_3 = var_a3_2->unk-71DC;
        }
        if (var_a3_2->unk-6E04->unk1E4 != var_a1_3) {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, var_a1_3);
        }
    }
    var_a1_4 = 9;
    var_a0_2 = 0;
    do {
        temp_a2_2 = var_a0_2 + &sp10;
        temp_at = var_a0_2 + &temp_s0->unk454;
        var_a0_2 += 4;
        var_a1_4 -= 1;
        *temp_at = *temp_a2_2;
    } while (var_a1_4 > 0);
}

void __glMgrle_TexSubImage1DEXT(__GLcontext *gc, ...) {
    __GLcontext *temp_s5;
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;

    var_a3 = 9;
    var_a2 = 0;
    var_a0 = 9;
    temp_s5 = __glCurrentContext;
    do {
        temp_v0 = var_a2 + &temp_s5->unk454;
        temp_v1 = var_a2 + sp;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a2_2 = 0;
    do {
        temp_a1 = var_a2_2 + &temp_s5->unk454;
        temp_v1_2 = var_a2_2 + &__glMgr_InternalUnpack;
        var_a2_2 += 4;
        var_a0 -= 1;
        *temp_a1 = *temp_v1_2;
    } while (var_a0 > 0);
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s32 (**)(__GLcontext *, s8 *)))0x12F4(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, &gc->imports.atoi);
    var_a0_2 = 9;
    var_a2_3 = 0;
    do {
        temp_a1_2 = var_a2_3 + sp;
        temp_at = var_a2_3 + &temp_s5->unk454;
        var_a2_3 += 4;
        var_a0_2 -= 1;
        *temp_at = *temp_a1_2;
    } while (var_a0_2 > 0);
}

void __glMgrle_TexSubImage2DEXT(__GLcontext *gc, ...) {
    ? sp10;
    void *(**sp4)(__GLcontext *, s8 *, s8 *);
    __GLcontext *temp_s5;
    s32 *temp_a1;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;

    var_a3 = 9;
    var_a2 = 0;
    var_a0 = 9;
    temp_s5 = __glCurrentContext;
    do {
        temp_v0 = var_a2 + &temp_s5->unk454;
        temp_v1 = var_a2 + &sp10;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a2_2 = 0;
    do {
        temp_a1 = var_a2_2 + &temp_s5->unk454;
        temp_v1_2 = var_a2_2 + &__glMgr_InternalUnpack;
        var_a2_2 += 4;
        var_a0 -= 1;
        *temp_a1 = *temp_v1_2;
    } while (var_a0 > 0);
    sp4 = &gc->imports.fopen;
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s8 *(*)(__GLcontext *, s8 *), s32 (*)(__GLcontext *, s8 *)))0x12F8(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, gc->imports.getenv, gc->imports.atoi);
    var_a0_2 = 9;
    var_a2_3 = 0;
    do {
        temp_at = var_a2_3 + &sp10;
        temp_v0_2 = var_a2_3 + &temp_s5->unk454;
        var_a2_3 += 4;
        var_a0_2 -= 1;
        *temp_v0_2 = *temp_at;
    } while (var_a0_2 > 0);
}

void __glMgrle_TexSubImage3DEXT(__GLcontext *gc, ...) {
    ? sp20;
    s32 (**sp14)(__GLcontext *, void *, s8 *, ...);
    void *(*spC)(__GLcontext *, s8 *, s8 *);
    s32 (*sp4)(__GLcontext *, s8 *, s8 *, ...);
    __GLcontext *temp_s5;
    s32 *temp_a1;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;

    var_a3 = 9;
    var_a2 = 0;
    var_a0 = 9;
    temp_s5 = __glCurrentContext;
    do {
        temp_v0 = var_a2 + &temp_s5->unk454;
        temp_v1 = var_a2 + &sp20;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a2_2 = 0;
    do {
        temp_a1 = var_a2_2 + &temp_s5->unk454;
        temp_v1_2 = var_a2_2 + &__glMgr_InternalUnpack;
        var_a2_2 += 4;
        var_a0 -= 1;
        *temp_a1 = *temp_v1_2;
    } while (var_a0 > 0);
    sp4 = gc->imports.sprintf;
    sp14 = &gc->imports.fprintf;
    spC = gc->imports.fopen;
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s8 *(*)(__GLcontext *, s8 *), s32 (*)(__GLcontext *, s8 *)))0x135C(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, gc->imports.getenv, gc->imports.atoi);
    var_a0_2 = 9;
    var_a2_3 = 0;
    do {
        temp_at = var_a2_3 + &sp20;
        temp_v0_2 = var_a2_3 + &temp_s5->unk454;
        var_a2_3 += 4;
        var_a0_2 -= 1;
        *temp_v0_2 = *temp_at;
    } while (var_a0_2 > 0);
}

void __glMgrle_ConvolutionFilter1DEXT(__GLcontext *gc, ...) {
    __GLcontext *temp_s5;
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;

    var_a3 = 9;
    var_a2 = 0;
    var_a0 = 9;
    temp_s5 = __glCurrentContext;
    do {
        temp_v0 = var_a2 + &temp_s5->unk454;
        temp_v1 = var_a2 + sp;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a2_2 = 0;
    do {
        temp_a1 = var_a2_2 + &temp_s5->unk454;
        temp_v1_2 = var_a2_2 + &__glMgr_InternalUnpack;
        var_a2_2 += 4;
        var_a0 -= 1;
        *temp_a1 = *temp_v1_2;
    } while (var_a0 > 0);
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), s8 *(**)(__GLcontext *, s8 *)))0x12FC(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, &gc->imports.getenv);
    var_a0_2 = 9;
    var_a2_3 = 0;
    do {
        temp_a1_2 = var_a2_3 + sp;
        temp_at = var_a2_3 + &temp_s5->unk454;
        var_a2_3 += 4;
        var_a0_2 -= 1;
        *temp_at = *temp_a1_2;
    } while (var_a0_2 > 0);
}

void __glMgrle_ConvolutionFilter2DEXT(__GLcontext *gc, ...) {
    __GLcontext *temp_s5;
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;

    var_a3 = 9;
    var_a2 = 0;
    var_a0 = 9;
    temp_s5 = __glCurrentContext;
    do {
        temp_v0 = var_a2 + &temp_s5->unk454;
        temp_v1 = var_a2 + sp;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a2_2 = 0;
    do {
        temp_a1 = var_a2_2 + &temp_s5->unk454;
        temp_v1_2 = var_a2_2 + &__glMgr_InternalUnpack;
        var_a2_2 += 4;
        var_a0 -= 1;
        *temp_a1 = *temp_v1_2;
    } while (var_a0 > 0);
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s32 (**)(__GLcontext *, s8 *)))0x1300(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, &gc->imports.atoi);
    var_a0_2 = 9;
    var_a2_3 = 0;
    do {
        temp_a1_2 = var_a2_3 + sp;
        temp_at = var_a2_3 + &temp_s5->unk454;
        var_a2_3 += 4;
        var_a0_2 -= 1;
        *temp_at = *temp_a1_2;
    } while (var_a0_2 > 0);
}

void __glMgrle_SeparableFilter2DEXT(__GLcontext *gc, ...) {
    __GLcontext *temp_s5;
    s32 *temp_a1;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;

    var_a3 = 9;
    var_a2 = 0;
    var_a0 = 9;
    temp_s5 = __glCurrentContext;
    do {
        temp_v0 = var_a2 + &temp_s5->unk454;
        temp_v1 = var_a2 + sp;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a2_2 = 0;
    do {
        temp_a1 = var_a2_2 + &temp_s5->unk454;
        temp_v1_2 = var_a2_2 + &__glMgr_InternalUnpack;
        var_a2_2 += 4;
        var_a0 -= 1;
        *temp_a1 = *temp_v1_2;
    } while (var_a0 > 0);
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), void (*)(__GLcontext *, s8 *), s32 (**)(__GLcontext *, s8 *, s8 *, ...), void *))0x132C(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, gc->imports.fatal, &gc->imports.sprintf, gc->imports.getenv + gc + 0x20);
    var_a0_2 = 9;
    var_a2_3 = 0;
    do {
        temp_at = var_a2_3 + sp;
        temp_v0_2 = var_a2_3 + &temp_s5->unk454;
        var_a2_3 += 4;
        var_a0_2 -= 1;
        *temp_v0_2 = *temp_at;
    } while (var_a0_2 > 0);
}

void __glMgrle_ColorTableSGI(__GLcontext *gc, ...) {
    __GLcontext *temp_s5;
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;

    var_a3 = 9;
    var_a2 = 0;
    var_a0 = 9;
    temp_s5 = __glCurrentContext;
    do {
        temp_v0 = var_a2 + &temp_s5->unk454;
        temp_v1 = var_a2 + sp;
        var_a2 += 4;
        var_a3 -= 1;
        *temp_v1 = *temp_v0;
    } while (var_a3 > 0);
    var_a2_2 = 0;
    do {
        temp_a1 = var_a2_2 + &temp_s5->unk454;
        temp_v1_2 = var_a2_2 + &__glMgr_InternalUnpack;
        var_a2_2 += 4;
        var_a0 -= 1;
        *temp_a1 = *temp_v1_2;
    } while (var_a0 > 0);
    *(? (**)(void *(*)(__GLcontext *, u32), void *(*)(__GLcontext *, u32, u32), void *(*)(__GLcontext *, void *, u32), void (*)(__GLcontext *, void *), void (*)(__GLcontext *, s8 *), s8 *(**)(__GLcontext *, s8 *)))0x1400(gc->imports.malloc, gc->imports.calloc, gc->imports.realloc, gc->imports.free, gc->imports.warning, &gc->imports.getenv);
    var_a0_2 = 9;
    var_a2_3 = 0;
    do {
        temp_a1_2 = var_a2_3 + sp;
        temp_at = var_a2_3 + &temp_s5->unk454;
        var_a2_3 += 4;
        var_a0_2 -= 1;
        *temp_at = *temp_a1_2;
    } while (var_a0_2 > 0);
}
