Error occurred while processing instruction: bal __glMgrim_SoftAccum - 0x21c

Error occurred while processing instruction: bal __glMgrim_SoftAccum - 0x21c

Error occurred while processing instruction: bal __glMgrim_SoftAccum - 0x21c

Error occurred while processing instruction: bal __glMgrim_SoftAccum - 0x21c

Bad function call operand __glMgrim_SoftAccum - 0x21c
Bad function call operand __glMgrim_SoftAccum - 0x21c
Bad function call operand __glMgrim_SoftAccum - 0x21c
Bad function call operand __glMgrim_SoftAccum - 0x21c
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
    /* 0x0CCD */ char padCCD[0x5F];                 /* maybe part of yInverted[0x60]? */
    /* 0x0D2C */ s32 unkD2C;                        /* inferred */
    /* 0x0D30 */ s32 unkD30;                        /* inferred */
    /* 0x0D34 */ char padD34[0x494];                /* maybe part of unkD30[0x126]? */
    /* 0x11C8 */ u8 unk11C8;                        /* inferred */
    /* 0x11C9 */ char pad11C9[0x1BC3];              /* maybe part of unk11C8[0x1BC4]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x4318];              /* maybe part of procs[0x15]? */
    /* 0x7438 */ s32 unk7438;                       /* inferred */
    /* 0x743C */ s32 unk743C;                       /* inferred */
    /* 0x7440 */ s32 unk7440;                       /* inferred */
    /* 0x7444 */ s32 unk7444;                       /* inferred */
    /* 0x7448 */ char pad7448[0x66C];               /* maybe part of unk7444[0x19C]? */
    /* 0x7AB4 */ ? unk7AB4;                         /* inferred */
    /* 0x7AB4 */ char pad7AB4[4];
    /* 0x7AB8 */ s32 unk7AB8;                       /* inferred */
    /* 0x7ABC */ s32 unk7ABC;                       /* inferred */
    /* 0x7AC0 */ char pad7AC0[0x2C];                /* maybe part of unk7ABC[0xC]? */
    /* 0x7AEC */ ? (*unk7AEC)(? *, u64, s32, s32);  /* inferred */
    /* 0x7AF0 */ char pad7AF0[0xA4];                /* maybe part of unk7AEC[0x2A]? */
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
extern ? sub_0da70000;

void __glMgrGetClipBox(__GLcontext *gc, ...) {
    s64 sp18;
    u64 sp10;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s64 temp_a1;
    s64 temp_a3;
    s64 temp_s1;
    u64 temp_a0;

    __Mgr_ReturnMode(SYMBOL_LOCATION.unk414, 1, 1);
    temp_a3 = (s64) ((s64) ((s32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x10) << 0x30) >> 0x30;
    unksp30 = temp_a3;
    __Mgr_ReturnMode(SYMBOL_LOCATION.unk30, 1, 1, temp_a3);
    temp_s1 = (s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30;
    __Mgr_ReturnMode(SYMBOL_LOCATION.unk34, 1, 1);
    temp_a1 = (s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30;
    var_a3 = gc->unk7AB8;
    temp_a0 = ((temp_s1 & 0xFFFF) - ((s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30)) + 1;
    temp_s4 = (((s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30) & 0xFFFF) - unksp30;
    temp_a2 = temp_s4 + 1;
    temp_s4_2 = temp_s4 + 1;
    if ((var_a3 != temp_a0) || (var_a3 = gc->unk7ABC, sp10 = temp_a0, sp18 = temp_a1, (var_a3 != temp_a2))) {
        sp10 = temp_a0;
        sp18 = temp_a1;
        gc->unk7AEC(&gc->unk7AB4, temp_a0, temp_a2, var_a3);
    }
    var_a0 = temp_s4_2;
    if (__glMgrim_IsEnabled(GL_SCISSOR_TEST) != 0) {
        __glMgrim_GetIntegerv(GL_SCISSOR_BOX, sp);
        var_a4 = sp0;
        var_a5 = sp4;
        var_a2 = sp8 + var_a4;
        var_a0 = spC + var_a5;
        if ((var_a2 < 0) || (var_a0 < 0) || (var_a4 >= var_a2) || (var_a5 >= var_a0)) {
            var_a0 = 0;
            var_a2 = 0;
            var_a5 = 0;
            var_a4 = 0;
        } else {
            if (var_a4 >= 0) {
                if (var_a5 < 0) {
                    goto block_21;
                }
            } else {
                var_a4 = 0;
                if (var_a5 < 0) {
block_21:
                    var_a5 = 0;
                }
            }
            if (sp10 < (u32) var_a2) {
                var_a2 = (s32) sp10;
            }
            if ((u32) temp_s4_2 < (u32) var_a0) {
                var_a0 = temp_s4_2;
            }
        }
    } else {
        var_a5 = sp18 >> 0x10;
        var_a2 = (s32) sp10;
        var_a4 = temp_s1 >> 0x10;
    }
    temp_a1_2 = gc->unkD30;
    temp_v0 = gc->unkD2C;
    gc->unk7440 = temp_v0 + var_a2;
    gc->unk7438 = temp_v0 + var_a4;
    if (gc->unk11C8 != 0) {
        gc->unk7444 = (temp_s4_2 - var_a5) + temp_a1_2;
        gc->unk743C = (temp_s4_2 - var_a0) + temp_a1_2;
    } else {
        gc->unk7444 = temp_a1_2 + var_a0;
        gc->unk743C = temp_a1_2 + var_a5;
    }
}

void __glMgrim_SoftAccum(__GLcontext *gc, f64 fparg1, ...) {
    s64 sp8;
    f64 sp0;
    u8 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = __glCurrentContext->yInverted;
        if (temp_a1 != 0) {
            sp8 = (s64) gc;
            sp0 = fparg1;
            if (__glCurrentContext->modes.haveAccumBuffer != 0) {
                // Error: Bad function call operand __glMgrim_SoftAccum - 0x21c
                // At instruction: bal __glMgrim_SoftAccum - 0x21c
                return;
            }
            __glSetError(0x502, temp_a1, gc, __glCurrentContext);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x502, temp_a1, gc, __glCurrentContext);
        return;
    }
    __glSetError(0x502, (u8) gc, __glCurrentContext);
}

void __glMgrim_SoftAccumClear(__GLcontext *gc, ...) {
    s64 sp18;

    // Error: Bad function call operand __glMgrim_SoftAccum - 0x21c
    // At instruction: bal __glMgrim_SoftAccum - 0x21c
}

void __glMgrim_Accum(enum GLenum op, f32 value) {

}

void Clear(void) {

}

void Pick(void) {

}

void __glMgrInitAccum(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;

    sp18 = arg1;
    __glInitBuffer();
    gc->imports.getenv = NULL;
    gc->exports.notifyDestroy = &sub_0da70000 - 0x26DC;
    gc->exports.notifySwapBuffers = &sub_0da70000 - 0x26E4;
    gc->imports.free = sp18->unkC28;
}
