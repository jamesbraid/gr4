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
    /* 0x0CCD */ char padCCD[0x52B];                /* maybe part of yInverted[0x52C]? */
    /* 0x11F8 */ s8 unk11F8;                        /* inferred */
    /* 0x11F9 */ char pad11F9[3];                   /* maybe part of unk11F8[4]? */
    /* 0x11FC */ u32 *unk11FC;                      /* inferred */
    /* 0x1200 */ u32 *unk1200;                      /* inferred */
    /* 0x1204 */ s32 unk1204;                       /* inferred */
    /* 0x1208 */ s32 unk1208;                       /* inferred */
    /* 0x120C */ char pad120C[0x1B80];              /* maybe part of unk1208[0x6E1]? */
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

void __glMgrWriteSelectBuf(__GLcontext *gc, ...) {
    u32 *temp_a3;
    u32 *temp_v1;

    temp_a3 = __glCurrentContext->unk1200;
    if (((s32) (temp_a3 - __glCurrentContext->unk11FC) >> 2) >= __glCurrentContext->unk1204) {
        __glCurrentContext->unk11F8 = 1;
        return;
    }
    temp_v1 = temp_a3 + 4;
    __glCurrentContext->unk1200 = temp_v1;
    temp_v1->unk-4 = gc;
}

void __glMgrGetSelectData(__GLcontext *gc, ...) {
    s64 sp4020;
    u32 sp400C;
    u32 sp4008;
    f32 sp4;
    ?32 sp0;
    __GLcontext *temp_s5;
    f32 temp_f1;
    s32 temp_s6;
    s32 var_a0;
    s32 var_a2;
    s32 var_s1_3;
    s32 var_v0;
    s64 var_s4;
    u32 *var_s4_2;
    u32 *var_s6;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_s3;
    u32 temp_s4;
    u32 temp_v0;
    u32 var_a3;
    u32 var_a4;
    u32 var_s1;
    u32 var_s1_2;
    u32 var_s2;
    void *temp_s0;

    var_s4 = saved_reg_s4;
    temp_s5 = __glCurrentContext;
    temp_s0 = temp_s5 + 0x10000;
    if (temp_s5->unk9CA3 != 1) {
        __Mgr_ReturnMode(SYMBOL_LOCATION.unk3F8, 1, 1);
        temp_s3 = M2C_ERROR(/* Read from unset register $v0 */);
        var_s1 = 0;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_s4_2 = &sp8[0];
            do {
                temp_a0 = var_s1;
                var_s1 += 1;
                __Mgr_ReturnMode(temp_a0, -1, temp_s0->unk-7A2C);
                var_s4_2 += 4;
                var_s4_2->unk-4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
            } while (var_s1 < temp_s3);
            var_s4 = sp4020;
        }
        sp4020 = var_s4;
        *(s32 *)0x74080 = 0x6100;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unk3F8, 1, 1);
        temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
        var_s1_2 = 0;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_s6 = &sp2008[0];
            do {
                temp_a0_2 = var_s1_2;
                var_s1_2 += 1;
                __Mgr_ReturnMode(temp_a0_2, -1, temp_s0->unk-7A2C);
                var_s6 += 4;
                var_s6->unk-4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
            } while (var_s1_2 < temp_s4);
        }
        var_a4 = 0;
        var_v0 = temp_s4 != 0;
        var_a0 = temp_s3 != 0;
        sp4008 = 0;
        var_a3 = 0;
        sp400C = 0;
        do {
loop_12:
            if (var_a0 != 0) {
                if (var_v0 != 0) {
                    temp_v0 = (&sp2008[0])[var_a3];
                    temp_a0_3 = (&sp8[0])[var_a4];
                    if (temp_a0_3 >= temp_v0) {
                        if (temp_v0 < temp_a0_3) {
                            writehit(&sp2008[0], &sp400C);
                            var_a2 = temp_s5->unk1208 + 1;
                        } else {
                            writemergehit(&sp8[0], &sp4008, &sp2008[0], &sp400C, var_a4);
                            var_a2 = temp_s5->unk1208 + 1;
                        }
                        goto block_10;
                    }
                    writehit(&sp8[0], &sp4008);
                    temp_s5->unk1208 += 1;
                } else {
                    writehit(&sp8[0], &sp4008);
                    var_a2 = temp_s5->unk1208 + 1;
block_10:
                    temp_s5->unk1208 = var_a2;
                }
            } else if (var_v0 != 0) {
                writehit(&sp2008[0], &sp400C);
                temp_s5->unk1208 += 1;
            }
            var_a4 = sp4008;
            var_a3 = sp400C;
            var_a0 = var_a4 < temp_s3;
            var_v0 = var_a3 < temp_s4;
            if (var_a0 != 0) {
                goto loop_12;
            }
            var_v0 = var_a3 < temp_s4;
        } while (var_v0 != 0);
    } else {
        __Mgr_ReturnMode(SYMBOL_LOCATION.unk3F8, 1, 1);
        var_s2 = 0;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
loop_26:
            __Mgr_ReturnMode(var_s2 + 1, -1, temp_s0->unk-7A2C);
            temp_s6 = M2C_ERROR(/* Read from unset register $v0 */);
            __glMgrim_GetMinmaxParameterfvEXT(M2C_ERROR(/* Read from unset register $v0 */), M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
            __Mgr_ReturnMode(var_s2 + 2, -1, temp_s0->unk-7A2C);
            sp0 = M2C_ERROR(/* Read from unset register $v0 */);
            sp0 = second half of f64;
            __glMgrim_GetMinmaxParameterfvEXT((s64) ((f64) (f32) ((f64) (second half of f64) * (second half of f64)) + 0.5) << 0, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
            __Mgr_ReturnMode(var_s2 + 3, -1, temp_s0->unk-7A2C);
            sp4 = M2C_ERROR(/* Read from unset register $v0 */);
            temp_f1 = (f32) ((f64) sp4 * 4294967295.0);
            sp4 = temp_f1;
            __glMgrim_GetMinmaxParameterfvEXT((s64) ((f64) temp_f1 + (second half of f64)) << 0, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
            var_s2 += 4;
            var_s1_3 = 0;
            if (temp_s6 != 0) {
                do {
                    __Mgr_ReturnMode(var_s2, -1, temp_s0->unk-7A2C);
                    var_s2 += 1;
                    __glMgrim_GetMinmaxParameterfvEXT(M2C_ERROR(/* Read from unset register $v0 */), M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
                    var_s1_3 += 1;
                } while (var_s1_3 != temp_s6);
            }
            temp_s5->unk1208 += 1;
            if (var_s2 < (u32) M2C_ERROR(/* Read from unset register $v0 */)) {
                goto loop_26;
            }
        }
    }
    temp_s0->unk-7A34 = 0;
    *(s32 *)0x74080 = 0x6200;
}

void writehit(u32 *arg0, u32 *arg1, f32 *arg2) {
    f32 sp4;
    ?32 sp0;
    enum GLenum temp_a0_2;
    enum GLenum temp_a1;
    s32 var_s4;
    void *temp_a0;

    temp_a1 = *arg1 * 4;
    temp_a0 = temp_a1 + arg0;
    temp_a0_2 = temp_a0->unk4;
    sp4 = temp_a0->unkC;
    sp0 = temp_a0->unk8;
    __glMgrim_GetMinmaxParameterfvEXT(temp_a0_2, temp_a1, arg2);
    __glMgrim_GetMinmaxParameterfvEXT((s64) ((f64) (second half of f64) + (second half of f64)) << 0, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
    __glMgrim_GetMinmaxParameterfvEXT((s64) ((f64) (f32) ((f64) sp4 * 4294967295.0) + 0.5) << 0, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
    var_s4 = 0;
    if (temp_a0_2 != GL_ZERO) {
        do {
            __glMgrim_GetMinmaxParameterfvEXT((((*arg1 + var_s4) * 4) + arg0)->unk10, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
            var_s4 += 1;
        } while (temp_a0_2 != var_s4);
    }
    *arg1 = *arg1 + temp_a0_2 + 4;
}

void writemergehit(u32 *arg0, u32 *arg1, f32 *arg2, u32 *arg3) {
    s64 sp18;
    f64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    enum GLenum temp_a5_2;
    s32 var_s4;
    void *temp_a5;
    void *temp_s0;

    temp_s0 = (*arg3 * 4) + arg2;
    sp18 = (s64) temp_s0->unk4;
    temp_a5 = (*arg1 * 4) + arg0;
    spC = temp_s0->unkC;
    sp0 = temp_a5->unk8;
    sp8 = temp_s0->unk8;
    temp_a5_2 = temp_a5->unk4;
    sp4 = temp_a5->unkC;
    if (sp0 < sp8) {

    }
    if (spC < sp4) {
        sp10 = (bitwise f64) sp4;
    } else {
        sp10 = (bitwise f64) spC;
    }
    __glMgrim_GetMinmaxParameterfvEXT(temp_a5_2, (enum GLenum) arg1, arg2);
    __glMgrim_GetMinmaxParameterfvEXT((s64) ((f64) (second half of f64) + (second half of f64)) << 0, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
    __glMgrim_GetMinmaxParameterfvEXT((s64) ((f64) (second half of f64) + (second half of f64)) << 0, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
    var_s4 = 0;
    if (temp_a5_2 != GL_ZERO) {
        do {
            __glMgrim_GetMinmaxParameterfvEXT((((*arg1 + var_s4) * 4) + arg0)->unk10, M2C_ERROR(/* Read from unset register $a1 */), M2C_ERROR(/* Read from unset register $a2 */));
            var_s4 += 1;
        } while (temp_a5_2 != var_s4);
    }
    *arg1 = *arg1 + temp_a5_2 + 4;
    *arg3 = *arg3 + sp18 + 4;
}

void __glMgrim_SelectBuffer(s32 size, u32 *buffer) {
    enum GLenum temp_a2;

    if (__glBeginMode != 1) {
        if (size >= 0) {
            temp_a2 = __glCurrentContext->renderMode;
            if (temp_a2 != GL_SELECT) {
                __glCurrentContext->unk1208 = 0;
                __glCurrentContext->unk1200 = buffer;
                __glCurrentContext->unk1204 = size;
                __glCurrentContext->unk11FC = buffer;
                __glCurrentContext->unk11F8 = 0;
                return;
            }
            __glSetError(0x502, temp_a2, __glCurrentContext);
            return;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_InitNames(void) {
    s64 sp10;
    s32 temp_v0;
    void *temp_a1;

    if (__glBeginMode != 1) {
        if (__glCurrentContext->renderMode == GL_SELECT) {
            temp_a1 = __glCurrentContext + 0x10000;
            *(s32 *)0x74080 = 0xC400;
            temp_v0 = __glCurrentContext->unk85C8 + __glCurrentContext->unk85CC;
            __glCurrentContext->unk85CC = temp_v0;
            if ((u32) (temp_v0 + 0x44) >= 0x801U) {
                sp10 = (s64) temp_a1;
                __glMgrGetSelectData((__GLcontext *)0xC400, 0xC400, temp_a1, __glCurrentContext);
            }
            temp_a1->unk-7A38 = 4;
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_LoadName(u32 name) {
    s32 temp_a1;
    s32 temp_v0;

    if (__glBeginMode != 1) {
        if (__glCurrentContext->renderMode == GL_SELECT) {
            *(u32 *)0x74080 = 0xC504;
            *(u32 *)0x74080 = name;
            temp_v0 = __glCurrentContext->unk85C8 + __glCurrentContext->unk85CC;
            temp_a1 = (u32) (temp_v0 + 0x44) < 0x801U;
            __glCurrentContext->unk85CC = temp_v0;
            if (temp_a1 == 0) {
                __glMgrGetSelectData((__GLcontext *) name, temp_a1, __glCurrentContext, (u32 *)0x74080);
            }
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PopName(void) {
    s64 sp10;
    s32 temp_v0;
    u32 temp_a3;
    u32 var_a2;
    void *temp_a1;
    u32 phi_a3;

    if (__glBeginMode != 1) {
        if (__glCurrentContext->renderMode == GL_SELECT) {
            temp_a1 = __glCurrentContext + 0x10000;
            temp_a3 = __glCurrentContext->unk85C8;
            *(s32 *)0x74080 = 0xC600;
            temp_v0 = __glCurrentContext->unk85CC + temp_a3;
            __glCurrentContext->unk85CC = temp_v0;
            phi_a3 = temp_a3;
            if ((u32) (temp_v0 + 0x44) >= 0x801U) {
                sp10 = (s64) temp_a1;
                __glMgrGetSelectData((__GLcontext *)0x74080, (s32 *)0x74080, temp_a1, __glCurrentContext, temp_a3);
                phi_a3 = temp_a1->unk-7A38;
            }
            var_a2 = phi_a3 - 1;
            if (phi_a3 >= 5U) {

            } else {
                var_a2 = 4;
            }
            temp_a1->unk-7A38 = var_a2;
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PushName(u32 name) {
    s64 sp10;
    s32 temp_v0;
    u32 temp_a4;
    u32 var_a0;
    void *temp_a2;
    u32 phi_a4;

    if (__glBeginMode != 1) {
        if (__glCurrentContext->renderMode == GL_SELECT) {
            temp_a2 = __glCurrentContext + 0x10000;
            temp_a4 = __glCurrentContext->unk85C8;
            *(u32 *)0x74080 = 0xC704;
            *(u32 *)0x74080 = name;
            temp_v0 = __glCurrentContext->unk85CC + temp_a4;
            __glCurrentContext->unk85CC = temp_v0;
            phi_a4 = temp_a4;
            if ((u32) (temp_v0 + 0x44) >= 0x801U) {
                sp10 = (s64) temp_a2;
                __glMgrGetSelectData((__GLcontext *) name, 0xC704, temp_a2, __glCurrentContext, temp_a4);
                phi_a4 = temp_a2->unk-7A38;
            }
            var_a0 = phi_a4 + 1;
            if (phi_a4 < 0x44U) {

            } else {
                var_a0 = 0x44;
            }
            temp_a2->unk-7A38 = var_a0;
        }
        return;
    }
    __glSetError(0x502);
}
