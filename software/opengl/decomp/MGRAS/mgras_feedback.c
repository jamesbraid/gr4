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
    /* 0x0CCD */ char padCCD[0x50B];                /* maybe part of yInverted[0x50C]? */
    /* 0x11D8 */ s8 unk11D8;                        /* inferred */
    /* 0x11D9 */ char pad11D9[3];                   /* maybe part of unk11D8[4]? */
    /* 0x11DC */ s32 unk11DC;                       /* inferred */
    /* 0x11E0 */ void *unk11E0;                     /* inferred */
    /* 0x11E4 */ s32 unk11E4;                       /* inferred */
    /* 0x11E8 */ char pad11E8[0x1BA4];              /* maybe part of unk11E4[0x6EA]? */
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

void __glMgrim_FeedbackBuffer(s32 size, enum GLenum type, f32 *buffer) {
    if (__glBeginMode != 1) {
        __glCurrentContext->unk85DC = 0;
        __glim_FeedbackBuffer(size, type, buffer);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PassThrough(f32 token) {
    if (__glBeginMode != 1) {
        if (__glCurrentContext->renderMode == GL_FEEDBACK) {
            if (__glCurrentContext->unk85DC != 0) {
                *(f32 *)0x74080 = 3.3368e-41f;
                *(f32 *)0x74080 = token;
            } else {
                __glim_PassThrough(token);
            }
        }
        return;
    }
    __glSetError(0x502, __glCurrentContext);
}

void __glMgrWriteFeedbackBuf(__GLcontext *gc, ...) {
    void *temp_a3;
    void *temp_v1;

    temp_a3 = __glCurrentContext->unk11E0;
    if (((s32) (temp_a3 - __glCurrentContext->unk11DC) >> 2) >= __glCurrentContext->unk11E4) {
        __glCurrentContext->unk11D8 = 1;
        return;
    }
    temp_v1 = temp_a3 + 4;
    __glCurrentContext->unk11E0 = temp_v1;
    temp_v1->unk-4 = (void *(*)(__GLcontext *, u32)) gc->imports.malloc;
}

void __glMgrGetFeedbackData(__GLcontext *gc, ...) {
    s64 sp4058;
    s64 sp4010;
    u64 sp4008;
    f32 sp2008;
    f32 sp8;
    f32 *var_s1_2;
    f32 *var_s1_3;
    f32 *var_s5;
    f32 *var_s8;
    s32 var_s0_4;
    s32 var_s0_5;
    s64 var_s1;
    s64 var_s6;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_s3;
    u32 temp_s4;
    u32 var_s0;
    u32 var_s0_2;
    u32 var_s0_6;
    u32 var_s7;
    u64 var_s0_3;
    void *temp_s2;

    var_s1 = saved_reg_s1;
    temp_s2 = __glCurrentContext + 0x10000;
    if (__glCurrentContext->unk9CA3 != 1) {
        var_s0 = 0;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unk4C4, 1, 1);
        temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_s1_2 = &sp8;
            do {
                temp_a0 = var_s0;
                var_s0 += 1;
                __Mgr_ReturnMode(temp_a0, -1, temp_s2->unk-7A18);
                var_s1_2 += 4;
                var_s1_2->unk-4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
            } while (var_s0 < temp_s4);
            var_s1 = sp4058;
        }
        var_s0_2 = 0;
        *(s32 *)0x74080 = 0x6100;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unk4C4, 1, 1, 0x6100, 0x74080);
        sp4058 = var_s1;
        temp_s3 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_s1_3 = &sp2008;
            do {
                temp_a0_2 = var_s0_2;
                var_s0_2 += 1;
                __Mgr_ReturnMode(temp_a0_2, -1, temp_s2->unk-7A18);
                var_s1_3 += 4;
                var_s1_3->unk-4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
            } while (var_s0_2 < temp_s3);
            var_s1 = sp4058;
        }
        if (temp_s4 != 0) {
            if (temp_s3 != 0) {
                sp4058 = var_s1;
                var_s7 = 0;
                var_s0_3 = 0;
                var_s6 = 0;
                var_s5 = &sp2008;
                var_s8 = &sp8;
                if (temp_s4 != 0) {
loop_17:
                    if (*var_s8 == 1792.0f) {
                        var_s8 += 8;
                        if (*var_s5 != 1792.0f) {
                            do {
                                var_s5 += 4;
                                var_s6 += 1;
                                __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */));
                                var_s0_3 += 1;
                            } while (*var_s5 != 1792.0f);
                        }
                        var_s0_3 += 2;
                        __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */));
                        var_s5 += 8;
                        __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */));
                        var_s6 += 2;
                        var_s7 += 2;
                    } else {
                        var_s6 += 1;
                        var_s8 += 4;
                        __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */));
                        var_s7 += 1;
                    }
                    if (var_s7 < temp_s4) {
                        goto loop_17;
                    }
                }
                if (var_s0_3 < temp_s3) {
                    sp4010 = var_s6;
                    sp4008 = var_s0_3;
                    do {
                        __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */));
                        var_s0_3 += 1;
                    } while (var_s0_3 != temp_s3);
                }
            } else if (temp_s4 != 0) {
                var_s0_4 = 0;
                if (temp_s4 != 0) {
                    sp4058 = var_s1;
                    do {
                        __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */));
                        var_s0_4 += 1;
                    } while (var_s0_4 != temp_s4);
                }
            } else {
                goto block_37;
            }
        } else {
block_37:
            if (temp_s3 != 0) {
                sp4058 = var_s1;
                var_s0_5 = 0;
                if (temp_s3 != 0) {
                    do {
                        __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */));
                        var_s0_5 += 1;
                    } while (var_s0_5 != temp_s3);
                }
            }
        }
    } else {
        __Mgr_ReturnMode(SYMBOL_LOCATION.unk4C4, 1, 1);
        var_s0_6 = 0;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            do {
                __Mgr_ReturnMode(var_s0_6, -1, temp_s2->unk-7A18);
                __glMgrim_PassThrough(M2C_ERROR(/* Read from unset register $f12 */), /* extra? */ M2C_ERROR(/* Read from unset register $v0 */));
                var_s0_6 += 1;
            } while (var_s0_6 < (u32) M2C_ERROR(/* Read from unset register $v0 */));
        }
    }
}
