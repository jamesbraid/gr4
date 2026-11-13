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
    /* 0x0CCD */ char padCCD[7];                    /* maybe part of yInverted[8]? */
    /* 0x0CD4 */ f32 unkCD4;                        /* inferred */
    /* 0x0CD8 */ char padCD8[0x34];                 /* maybe part of unkCD4[0xE]? */
    /* 0x0D0C */ u32 unkD0C;                        /* inferred */
    /* 0x0D10 */ char padD10[0x207C];               /* maybe part of unkD0C[0x820]? */
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
    /* 0x3C */ char pad3C[4];
    /* 0x40 */ void *(*unk40)(__GLcontext *);       /* inferred */
    /* 0x44 */ char pad44[8];                       /* maybe part of unk40[3]? */
} __GLimports;                                      /* size = 0x4C */

s32 memcmp(void *, void *, s64);                    /* extern */
extern ? SYMBOL_LOCATION;
extern ? sub_0daa0000;
extern ? sub_0dbe0000;

void __glMgrLookUpTexture(__GLcontext *gc, u32 arg1, ...) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;

    if (arg1 >= 0x806FU) {
        if (arg1 > 0x806FU) {
            if (arg1 >= 0x8095U) {
                if (arg1 > 0x8095U) {
                    if (arg1 == 0x8134) {

                    }
                }
            } else if (arg1 == 0x8070) {

            }
        } else {
            temp_a1 = gc + 0x10000;
            temp_a2 = (-1 << 0x10) | 0x72A0;
            if (gc != temp_a2) {
                sp0 = (s64) temp_a1;
                if (gc->unk8E24 == 0) {
                    mgrTM_RefreshDim(gc + 0x8D60, temp_a1, temp_a2, gc);
                }
            }
        }
    } else {
        switch (arg1) {                             /* irregular */
        default:
            temp_a1_2 = gc + 0x10000;
            temp_a2_2 = (-1 << 0x10) | 0x7438;
            if (gc != temp_a2_2) {
                sp0 = (s64) temp_a1_2;
                if (gc->unk8C8C == 0) {
                    mgrTM_RefreshDim(gc + 0x8BC8, temp_a1_2, temp_a2_2, gc);
                }
            }
            return;
        case 0xDE0:
            temp_a1_3 = gc + 0x10000;
            temp_a3 = (-1 << 0x10) | 0x75D0;
            if (gc != temp_a3) {
                sp0 = (s64) temp_a1_3;
                if (gc->unk8AF4 == 0) {
                    mgrTM_RefreshDim(gc + 0x8A30, temp_a1_3, 0xDE0, (__GLcontext *) temp_a3, gc);
                }
            }
            return;
        case 0x8064:
            return;
        }
    }
}

void __glMgrNeedSoftFilter4(__GLcontext *gc, ...) {
    if (glIsEnabled(GL_TEXTURE_1D) != 0) {
        glGetTexParameteriv(GL_TEXTURE_1D, GL_TEXTURE_MIN_FILTER, sp);
        if (sp0 != 0x8146) {
            glGetTexParameteriv(GL_TEXTURE_1D, GL_TEXTURE_MAG_FILTER, sp);
            if (sp0 != 0x8146) {
                goto block_3;
            }
            return;
        }
        return;
    }
block_3:
    if (glIsEnabled(GL_TEXTURE_2D) != 0) {
        glGetTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, sp);
        if (sp0 != 0x8146) {
            glGetTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, sp);
            if (sp0 != 0x8146) {

            }
        }
    }
}

void __glMgrim_SoftTexParameterfv(__GLcontext *gc, enum GLenum arg1, f32 *arg2, ...) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_at;

    sp0 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        __glim_TexParameterfv((enum GLenum) gc, arg1, arg2);
        __glMgrNeedSoftFilter4(M2C_ERROR(/* Read from unset register $a0 */));
        temp_a2 = sp0->unk925C;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            sp0->unk925C = (s32) (temp_a2 | 0x40);
        } else {
            temp_at = temp_a2 & ~0x40;
            sp0->unk925C = temp_at;
            if (temp_at == 0) {
                __glMgrExitSoftPath((__GLcontext *) sp0, sp0, sp0 + 0x10000, temp_a2);
            }
        }
        return;
    }
    __glSetError(0x502, __glCurrentContext);
}

void __glMgrim_TexParameterfv(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp48;
    s64 sp18;
    s64 sp10;
    __GLcontext *temp_s2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f6;
    f32 var_f0;
    f32 var_f5;
    f32 var_f5_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_f1;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 var_v0_2;
    s64 var_v0_3;
    u32 temp_v0_6;
    u32 temp_v0_8;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_a0;
    void *temp_a1_2;
    void *temp_a5_2;
    void *temp_s1;
    void *var_v0;
    void *var_v0_4;

    temp_s2 = __glCurrentContext;
    sp10 = (s64) params;
    sp18 = (s64) target;
    if (__glBeginMode != 1) {
        __glMgrLookUpTexture(temp_s2, temp_s2, sp18);
        temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (pname >= 0x809BU) {
                if (pname <= 0x809BU) {
                    if (((s64) *sp10 << 0) != 0x104) {
                        goto block_5;
                    }
                } else if (pname >= 0x813AU) {
                    if (pname > 0x813AU) {
                        switch (pname) {            /* switch 2; irregular */
                        default:                    /* switch 2 */
                            temp_f0 = *sp10;
                            if (!(temp_f0 < 0.0f)) {
                                if ((u32) ((s64) temp_f0 << 0) < (u32) temp_s1->unk88) {
                                    temp_s1->unkC1 = 0;
                                }
                                temp_s1->unkC0 = 0;
                                temp_s2->unk91FC->unk1E4 = 0;
                                temp_s1->unk88 = (u32) (s64) *sp10;
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(0x501);
                                return;
                            }
                            break;
                        case 0x813B:                /* switch 2 */
                            var_f5 = temp_s1->unk84;
                            var_f0 = *sp10;
                            if (var_f0 != var_f5) {
                                if (var_f5 == 1000.0f) {
                                    var_f5 = -1.0f;
                                    temp_s1->unk84 = -1.0f;
                                    var_f0 = *sp10;
                                }
                                if (var_f5 < var_f0) {
                                    temp_s1->unkC1 = 0;
                                }
                                temp_s2->unk91FC->unk1E4 = 0;
                                temp_s1->unk84 = (f32) *sp10;
                            }
                            break;
                        case 0x813D:                /* switch 2 */
                            temp_f0_2 = *sp10;
                            if (!(temp_f0_2 < 0.0f)) {
                                if ((u32) temp_s1->unk8C < (u32) ((s64) temp_f0_2 << 0)) {
                                    temp_s1->unkC1 = 0;
                                }
                                temp_s1->unkC0 = 0;
                                temp_s1->unk8C = (u32) (s64) *sp10;
                                temp_s2->unk91FC->unk1E4 = 0;
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(0x501);
                                return;
                            }
                            break;
                        }
                    } else {
                        temp_f6 = temp_s1->unk80;
                        temp_f0_3 = *sp10;
                        if (temp_f0_3 != temp_f6) {
                            var_f5_2 = temp_f0_3;
                            if (temp_f0_3 < 0.0f) {
                                var_f5_2 = 0.0f;
                            }
                            if (var_f5_2 < temp_f6) {
                                temp_s1->unkC1 = 0;
                                temp_a1 = (s64) var_f5_2 << 0;
                                if (temp_a1 < 0xC) {
                                    var_v0 = ((temp_a1 + 1) * 4) + temp_s1;
loop_86:
                                    temp_a0 = var_v0->unk14;
                                    var_v0 += 4;
                                    if (temp_a0 != NULL) {
                                        temp_a1_2 = temp_a0->unk1C;
                                        if (temp_a1_2 != NULL) {
                                            temp_a1_2->unk57 = 0;
                                            if ((temp_s1 + 0x34) != var_v0) {
                                                goto loop_86;
                                            }
                                        }
                                    }
                                }
                            }
                            temp_s2->unk91FC->unk1E4 = 0;
                            temp_s1->unk80 = (f32) *sp10;
                        }
                    }
                } else {
                    switch (pname) {                /* switch 4; irregular */
                    default:                        /* switch 4 */
                        temp_v0 = (s64) *sp10 << 0;
                        if (temp_v0 < 4U) {
                            temp_s1->unkBD = temp_v0;
                            if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unkBB != 0)) {
                                mgrTM_tram_select(temp_s2, temp_s1);
                                mgrTM_SendTexmode1(temp_s2, temp_s1);
                            }
                        } else {
                            __glSetError(0x501);
                            return;
                        }
                        break;
                    case 0x8124:                    /* switch 4 */
                        temp_v0_2 = (s64) *sp10 << 0;
                        if (temp_v0_2 < 2U) {
                            temp_s1->unkBC = temp_v0_2;
                            if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unkBB != 0)) {
                                mgrTM_tram_select(temp_s2, temp_s1);
                                mgrTM_SendTexmode1(temp_s2, temp_s1);
                            }
                        } else {
                            __glSetError(0x501);
                            return;
                        }
                        break;
                    case 0x8137:                    /* switch 4 */
                        temp_v0_3 = (s64) *sp10 << 0;
                        if ((temp_v0_3 != 0x2900) && (temp_v0_3 != 0x2901) && (temp_v0_3 != 0x812D)) {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        break;
                    }
                }
            } else {
                temp_a3 = pname < GL_TEXTURE_WRAP_T;
                temp_a4 = pname < 0x2804U;
                if (temp_a3 == 0) {
                    if (temp_a4 != 0) {
                        temp_v0_4 = (s64) *sp10 << 0;
                        switch (temp_v0_4) {        /* switch 1; irregular */
                        case 0x812D:                /* switch 1 */
                            temp_s1->unkAF = 0;
                            temp_s1->unkAD = 1;
                            temp_s1->unk68 = (s32) ((temp_s1->unk68 | 0x1000) & ~0x4000);
block_13:
                            if (temp_s2->unk91FC->unk1E4 == temp_s1) {
                                __glMgrim_TexParameteri((enum GLenum) temp_s2, (enum GLenum) temp_s1, M2C_ERROR(/* Read from unset register $a2 */));
                            }
                            break;
                        case 0x2901:                /* switch 1 */
                            temp_s1->unkAD = 0;
                            temp_s1->unk68 = (s32) (temp_s1->unk68 & ~0x1000);
                            goto block_13;
                        case 0x2900:                /* switch 1 */
                            temp_s1->unkAF = 1;
                            temp_s1->unkAD = 1;
                            temp_s1->unk68 = (s32) (temp_s1->unk68 | 0x1000 | 0x4000);
                            goto block_13;
                        }
                    } else if (pname >= GL_TEXTURE_WRAP_R_EXT) {
                        if (pname > GL_TEXTURE_WRAP_R_EXT) {
                            if (pname == 0x809A) {
                                temp_f0_4 = *sp10;
                                if (!(temp_f0_4 > 0.0f)) {
                                    temp_s1->unk74 = temp_f0_4;
                                    temp_f1 = (s32) ((f64) *sp10 + -0.5);
                                    switch (temp_f1) { /* switch 3; irregular */
                                    default:        /* switch 3 */
                                        var_v0_2 = 0;
                                        if (temp_f1 != -5) {
                                            temp_s1->unkBF = 0;
                                        } else {
                                            var_v0_2 = 1;
                                            temp_s1->unkBF = 1;
                                        }
                                        break;
                                    case -2:        /* switch 3 */
                                    case -1:        /* switch 3 */
                                    case 0:         /* switch 3 */
                                        var_v0_2 = 4;
                                        temp_s1->unkBF = 4;
                                        break;
                                    case -3:        /* switch 3 */
                                        var_v0_2 = 3;
                                        temp_s1->unkBF = 3;
                                        break;
                                    case -4:        /* switch 3 */
                                        var_v0_2 = 2;
                                        temp_s1->unkBF = 2;
                                        break;
                                    }
                                    if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unkBE == 1)) {
                                        temp_a5 = (var_v0_2 & 7) << 0x10;
                                        temp_a2 = (temp_s1->unk60 & ~0x70000) | temp_a5;
                                        temp_s1->unk60 = temp_a2;
                                        __glMgrasWrite(temp_s2, temp_s2, 0x181, temp_a2, SYMBOL_LOCATION.unkDC, 1, temp_a5);
                                    }
                                } else {
                                    __glSetError(0x501);
                                }
                            } else {
                                goto block_5;
                            }
                        } else {
                            temp_v0_5 = (s64) *sp10 << 0;
                            switch (temp_v0_5) {    /* switch 6; irregular */
                            case 0x812D:            /* switch 6 */
                                temp_s1->unkAF = 0;
                                temp_s1->unkAE = 1;
                                temp_s1->unk68 = (s32) ((temp_s1->unk68 | 0x2000) & ~0x4000);
block_107:
                                if (temp_s2->unk91FC->unk1E4 == temp_s1) {
                                    __glMgrim_TexParameteri((enum GLenum) temp_s2, (enum GLenum) temp_s1, M2C_ERROR(/* Read from unset register $a2 */));
                                }
                                break;
                            case 0x2901:            /* switch 6 */
                                temp_s1->unkAE = 0;
                                temp_s1->unk68 = (s32) (temp_s1->unk68 & ~0x2000);
                                goto block_107;
                            case 0x2900:            /* switch 6 */
                                temp_s1->unkAF = 1;
                                temp_s1->unkAE = 1;
                                temp_s1->unk68 = (s32) (temp_s1->unk68 | 0x2000 | 0x4000);
                                goto block_107;
                            }
                        }
                    } else if (pname == GL_TEXTURE_PRIORITY) {
                        __glMgrim_DeleteTexturesEXT(M2C_ERROR(/* Read from unset register $a0 */), M2C_ERROR(/* Read from unset register $a1 */));
                        temp_s1->unk70 = (f32) M2C_ERROR(/* Read from unset register $f0 */);
                        if (temp_s1->unkB3 != 8) {
                            temp_s1->unk6C = (f32) M2C_ERROR(/* Read from unset register $f0 */);
                        }
                    } else {
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        __glSetError(0x500);
                    }
                } else if (pname >= GL_TEXTURE_MIN_FILTER) {
                    if (pname < GL_TEXTURE_WRAP_S) {
                        temp_f0_5 = *sp10;
                        temp_v0_6 = (s64) temp_f0_5 << 0;
                        if (temp_v0_6 >= 0x2703U) {
                            if (temp_v0_6 < 0x2704U) {
                                if ((s32) temp_s1->unkB3 < 4) {
                                    temp_s1->unkAB = 1;
                                    temp_s1->unkB0 = 1;
                                    temp_s1->unkB5 = 1;
                                    goto block_21;
                                }
                                goto block_5;
                            }
                            if (temp_v0_6 >= 0x8185U) {
                                if (temp_v0_6 > 0x8185U) {
                                    if (temp_v0_6 == 0x8186) {
                                        goto block_138;
                                    }
                                    /* Duplicate return node #6. Try simplifying control flow for better match */
                                    __glSetError(0x500);
                                    return;
                                }
                                goto block_138;
                            }
                            if (temp_v0_6 >= 0x8184U) {
                                if (temp_v0_6 <= 0x8184U) {
block_138:
                                    var_v0_3 = (s64) (temp_s2 + 0x10000);
                                    temp_s1->unk7C = (s32) temp_f0_5;
                                    goto block_22;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if (temp_v0_6 == 0x8146) {
                                temp_a5_2 = temp_s2 + 0x10000;
                                if (glIsEnabled((enum GLenum) sp18) != 0) {
                                    sp48 = (s64) temp_a5_2;
                                    __glMgrEnterSoftPath(temp_s2, temp_s2);
                                    temp_s2->unk925C = (s32) (temp_s2->unk925C | 0x40);
                                }
                                sp48 = (s64) temp_a5_2;
                                __glim_TexParameterfv((enum GLenum) sp18, pname, (f32 *) sp10);
                                var_v0_3 = sp48;
                                goto block_22;
                            }
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (temp_v0_6 >= 0x2700U) {
                            if (temp_v0_6 < 0x2701U) {
                                if ((s32) temp_s1->unkB3 < 4) {
                                    temp_s1->unkAB = 0;
                                    temp_s1->unkB0 = 0;
                                    temp_s1->unkB5 = 1;
                                    goto block_21;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if (temp_v0_6 >= 0x2702U) {
                                if ((temp_v0_6 < 0x2703U) && ((s32) temp_s1->unkB3 < 4)) {
                                    temp_s1->unkB0 = 0;
                                    temp_s1->unkAB = 1;
                                    temp_s1->unkB5 = 1;
                                    goto block_21;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if ((temp_v0_6 == 0x2701) && ((s32) temp_s1->unkB3 < 4)) {
                                temp_s1->unkAB = 0;
                                temp_s1->unkB0 = 1;
                                temp_s1->unkB5 = 1;
                                goto block_21;
                            }
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (temp_v0_6 >= 0x2601U) {
                            if (temp_v0_6 < 0x2602U) {
                                temp_s1->unkB5 = 0;
                                var_v0_3 = (s64) (temp_s2 + 0x10000);
                                temp_s1->unkB0 = 1;
                                temp_s1->unkAB = (s8) ((s32) temp_s1->unkB3 > 3);
                                goto block_22;
                            }
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (temp_v0_6 == 0x2600) {
                            temp_s1->unkAB = 0;
                            temp_s1->unkB0 = 0;
                            temp_s1->unkB5 = 0;
block_21:
                            var_v0_3 = (s64) (temp_s2 + 0x10000);
block_22:
                            temp_s1->unkC0 = 0;
                            var_v0_3->unk-6E04->unk1E4 = 0;
                        } else {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                        }
                    } else if (pname == GL_TEXTURE_WRAP_S) {
                        temp_v0_7 = (s64) *sp10 << 0;
                        switch (temp_v0_7) {        /* switch 5; irregular */
                        case 0x812D:                /* switch 5 */
                            temp_s1->unkAF = 0;
                            temp_s1->unkAC = 1;
                            temp_s1->unk68 = (s32) ((temp_s1->unk68 | 0x800) & ~0x4000);
block_70:
                            if (temp_s2->unk91FC->unk1E4 == temp_s1) {
                                __glMgrim_TexParameteri((enum GLenum) temp_s2, (enum GLenum) temp_s1, M2C_ERROR(/* Read from unset register $a2 */));
                            }
                            break;
                        case 0x2901:                /* switch 5 */
                            temp_s1->unkAC = 0;
                            temp_s1->unk68 = (s32) (temp_s1->unk68 & ~0x800);
                            goto block_70;
                        case 0x2900:                /* switch 5 */
                            temp_s1->unkAF = 1;
                            temp_s1->unkAC = 1;
                            temp_s1->unk68 = (s32) (temp_s1->unk68 | 0x800 | 0x4000);
                            goto block_70;
                        }
                    } else {
                        goto block_5;
                    }
                } else if (pname >= GL_TEXTURE_MAG_FILTER) {
                    if (pname < GL_TEXTURE_MIN_FILTER) {
                        temp_f0_6 = *sp10;
                        temp_v0_8 = (s64) temp_f0_6 << 0;
                        if (temp_v0_8 >= 0x8146U) {
                            if (temp_v0_8 > 0x8146U) {
                                if (temp_v0_8 >= 0x8185U) {
                                    if (temp_v0_8 > 0x8185U) {
                                        if (temp_v0_8 == 0x8186) {
                                            goto block_119;
                                        }
                                        /* Duplicate return node #6. Try simplifying control flow for better match */
                                        __glSetError(0x500);
                                        return;
                                    }
                                    goto block_119;
                                }
                                if (temp_v0_8 == 0x8184) {
block_119:
                                    var_v0_4 = temp_s2 + 0x10000;
                                    temp_s1->unk7C = (s32) temp_f0_6;
                                    goto block_120;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if (glIsEnabled((enum GLenum) sp18) != 0) {
                                __glMgrEnterSoftPath(temp_s2, temp_s2);
                                temp_s2->unk925C = (s32) (temp_s2->unk925C | 0x40);
                            }
                            sp48 = (s64) (temp_s2 + 0x10000);
                            __glim_TexParameterfv((enum GLenum) sp18, pname, (f32 *) sp10);
                            var_v0_4 = (void *) sp48;
                            goto block_121;
                        }
                        if (temp_v0_8 >= 0x8097U) {
                            if ((temp_v0_8 <= 0x8097U) || (temp_v0_8 == 0x8099)) {
                                if ((temp_s1->unkB3 & 0x1E) == 2) {
                                    var_v0_4 = temp_s2 + 0x10000;
                                    temp_s1->unkBE = 1U;
                                    temp_s1->unkB1 = 1;
                                    goto block_120;
                                }
                                goto block_5;
                            }
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (temp_v0_8 >= 0x2601U) {
                            if (temp_v0_8 < 0x2602U) {
                                temp_s1->unkBE = 0U;
                                var_v0_4 = temp_s2 + 0x10000;
                                temp_s1->unkB1 = 1;
block_120:
                                goto block_121;
                            }
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (temp_v0_8 == 0x2600) {
                            temp_s1->unkBE = 0U;
                            temp_s1->unkB1 = 0;
                            var_v0_4 = temp_s2 + 0x10000;
block_121:
                            var_v0_4->unk-6E04->unk1E4 = 0;
                        } else {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                        }
                    } else {
                        goto block_5;
                    }
                } else {
                    if (pname == GL_TEXTURE_BORDER_COLOR) {
                        __glClampColorf(temp_s2, sp, sp10, temp_a3, temp_a4);
                        temp_a2_2 = ((s32) (sp4 * 1.6777215e7f) & 0xFFF000) | ((s32) (sp0 * 1.6777215e7f) >> 0xC);
                        temp_s1->unk90 = temp_a2_2;
                        temp_s1->unk94 = (s32) (((s32) (spC * 1.6777215e7f) & 0xFFF000) | ((s32) (sp8 * 1.6777215e7f) >> 0xC));
                        if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unk4C->unk14 == 0)) {
                            __glMgrasWrite(temp_s2, temp_s2, 0x184, temp_a2_2, SYMBOL_LOCATION.unkE8, 0);
                            __glMgrasWrite(temp_s2, temp_s2, 0x185, temp_s1->unk94, SYMBOL_LOCATION.unkEC, 1);
                        }
                        return;
                    }
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    __glSetError(0x500);
                }
            }
        } else {
block_5:
        default:                                    /* switch 5 */
        default:                                    /* switch 6 */
        default:                                    /* switch 1 */
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_SoftTexParameterf(__GLcontext *gc, u32 arg1, f32 fparg2, ...) {
    f32 sp20;
    f32 *var_a3;
    s32 var_a2;

    sp20 = fparg2;
    var_a3 = (f32 *)0x8066;
    if (arg1 >= 0x8066U) {
        var_a3 = (f32 *)0x819A;
        if (arg1 > 0x8066U) {
            var_a2 = arg1 < 0x819AU;
            if (var_a2 == 0) {
                if ((arg1 > 0x819AU) && (arg1 != 0x819B)) {
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
                    return;
                }
                /* Duplicate return node #12. Try simplifying control flow for better match */
                __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
                return;
            }
            var_a3 = (f32 *)0x80BF;
            if (arg1 >= 0x80BFU) {
                if (arg1 <= 0x80BFU) {
                    /* Duplicate return node #12. Try simplifying control flow for better match */
                    __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
                    return;
                }
                /* Duplicate return node #5. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
                return;
            }
            if (arg1 == 0x8072) {
                /* Duplicate return node #12. Try simplifying control flow for better match */
                __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
                return;
            }
            /* Duplicate return node #5. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
            return;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
        return;
    }
    var_a2 = arg1 < 0x2803U;
    if (arg1 >= 0x2802U) {
        if (var_a2 == 0) {
            if (arg1 == 0x2803) {
                /* Duplicate return node #12. Try simplifying control flow for better match */
                __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
                return;
            }
            /* Duplicate return node #5. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
            return;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
        return;
    }
    if (arg1 >= 0x2801U) {
        if (arg1 < 0x2802U) {
            /* Duplicate return node #12. Try simplifying control flow for better match */
            __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
            return;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
        return;
    }
    var_a2 = 0x2800;
    if (arg1 == 0x2800) {
        __glMgrim_SoftTexParameterfv(gc, &sp20, var_a3);
        return;
    }
    __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
}

void __glMgrim_TexParameterf(enum GLenum target, enum GLenum pname, f32 param) {
    f32 sp20;
    f32 *var_a3;
    s32 var_a2;

    sp20 = param;
    if (pname >= 0x8125U) {
        if (pname > 0x8125U) {
            var_a2 = pname < 0x813DU;
            if (var_a2 == 0) {
                var_a3 = (f32 *)0x8185;
                if (pname > 0x813DU) {
                    if (pname >= 0x8185U) {
                        var_a2 = 0x8186;
                        if (pname > 0x8185U) {
                            if (pname == 0x8186) {
                                /* Duplicate return node #10. Try simplifying control flow for better match */
                                __glMgrim_TexParameterfv(target, pname, &sp20);
                                return;
                            }
                            /* Duplicate return node #14. Try simplifying control flow for better match */
                            __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
                            return;
                        }
                        /* Duplicate return node #10. Try simplifying control flow for better match */
                        __glMgrim_TexParameterfv(target, pname, &sp20);
                        return;
                    }
                    if (pname == 0x8184) {
                        /* Duplicate return node #10. Try simplifying control flow for better match */
                        __glMgrim_TexParameterfv(target, pname, &sp20);
                        return;
                    }
                    /* Duplicate return node #14. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
                    return;
                }
                /* Duplicate return node #10. Try simplifying control flow for better match */
                __glMgrim_TexParameterfv(target, pname, &sp20);
                return;
            }
            var_a3 = (f32 *)0x813B;
            var_a2 = pname > 0x813BU;
            if (pname >= 0x813BU) {
                if (var_a2 != 0) {
                    if (pname == 0x813C) {
                        /* Duplicate return node #10. Try simplifying control flow for better match */
                        __glMgrim_TexParameterfv(target, pname, &sp20);
                        return;
                    }
                    /* Duplicate return node #14. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
                    return;
                }
                /* Duplicate return node #10. Try simplifying control flow for better match */
                __glMgrim_TexParameterfv(target, pname, &sp20);
                return;
            }
            var_a3 = (f32 *)0x813A;
            if (pname >= 0x813AU) {
                if (pname <= 0x813AU) {
                    /* Duplicate return node #10. Try simplifying control flow for better match */
                    __glMgrim_TexParameterfv(target, pname, &sp20);
                    return;
                }
                /* Duplicate return node #14. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
                return;
            }
            var_a2 = 0x8137;
            if (pname == 0x8137) {
                /* Duplicate return node #10. Try simplifying control flow for better match */
                __glMgrim_TexParameterfv(target, pname, &sp20);
                return;
            }
            /* Duplicate return node #14. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
            return;
        }
        /* Duplicate return node #10. Try simplifying control flow for better match */
        __glMgrim_TexParameterfv(target, pname, &sp20);
        return;
    }
    var_a3 = (f32 *)0x8066;
    if (pname >= GL_TEXTURE_PRIORITY) {
        if (pname <= GL_TEXTURE_PRIORITY) {
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameterfv(target, pname, &sp20);
            return;
        }
        var_a3 = (f32 *)0x809B;
        var_a2 = pname < 0x809BU;
        if (var_a2 == 0) {
            if (pname > 0x809BU) {
                if (pname == 0x8124) {
                    /* Duplicate return node #10. Try simplifying control flow for better match */
                    __glMgrim_TexParameterfv(target, pname, &sp20);
                    return;
                }
                /* Duplicate return node #14. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
                return;
            }
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameterfv(target, pname, &sp20);
            return;
        }
        var_a3 = (f32 *)0x809A;
        var_a2 = pname > 0x809AU;
        if (pname >= 0x809AU) {
            if (var_a2 == 0) {
                /* Duplicate return node #10. Try simplifying control flow for better match */
                __glMgrim_TexParameterfv(target, pname, &sp20);
                return;
            }
            /* Duplicate return node #14. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
            return;
        }
        if (pname == GL_TEXTURE_WRAP_R_EXT) {
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameterfv(target, pname, &sp20);
            return;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
        return;
    }
    var_a2 = pname < GL_TEXTURE_WRAP_T;
    if (pname >= GL_TEXTURE_WRAP_S) {
        if ((var_a2 == 0) && (pname != GL_TEXTURE_WRAP_T)) {
            /* Duplicate return node #14. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
            return;
        }
        /* Duplicate return node #10. Try simplifying control flow for better match */
        __glMgrim_TexParameterfv(target, pname, &sp20);
        return;
    }
    if (pname >= GL_TEXTURE_MIN_FILTER) {
        if (pname < GL_TEXTURE_WRAP_S) {
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameterfv(target, pname, &sp20);
            return;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
        return;
    }
    if (pname == GL_TEXTURE_MAG_FILTER) {
        __glMgrim_TexParameterfv(target, pname, &sp20);
        return;
    }
    __glSetError(0x500, (__GLcontext *) var_a2, var_a3);
}

void __glMgrim_SoftTexParameteriv(__GLcontext *gc, enum GLenum arg1, s32 *arg2, ...) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_at;

    sp0 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        __glim_TexParameteriv((enum GLenum) gc, arg1, arg2);
        __glMgrNeedSoftFilter4(M2C_ERROR(/* Read from unset register $a0 */));
        temp_a2 = sp0->unk925C;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            sp0->unk925C = (s32) (temp_a2 | 0x40);
        } else {
            temp_at = temp_a2 & ~0x40;
            sp0->unk925C = temp_at;
            if (temp_at == 0) {
                __glMgrExitSoftPath((__GLcontext *) sp0, sp0, sp0 + 0x10000, temp_a2);
            }
        }
        return;
    }
    __glSetError(0x502, __glCurrentContext);
}

void __glMgrim_TexParameteriv(enum GLenum target, enum GLenum pname, s32 *params) {
    s64 sp48;
    s64 sp18;
    s64 sp10;
    __GLcontext *temp_s2;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f4;
    f32 var_f5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a5_7;
    s32 temp_a5_9;
    s32 temp_f0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a4;
    s32 var_v0_2;
    s64 var_v0_3;
    s64 var_v0_4;
    void *temp_a0;
    void *temp_a1;
    void *temp_a5_8;
    void *temp_s1;
    void *var_v0;

    temp_s2 = __glCurrentContext;
    sp10 = (s64) params;
    sp18 = (s64) target;
    if (__glBeginMode != 1) {
        __glMgrLookUpTexture(temp_s2, temp_s2, sp18);
        temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            temp_a4 = pname > 0x809BU;
            if (pname >= 0x809BU) {
                if (temp_a4 == 0) {
                    if (*sp10 != 0x104) {
                        goto block_5;
                    }
                } else if (pname >= 0x813AU) {
                    if (pname > 0x813AU) {
                        switch (pname) {            /* switch 3; irregular */
                        case 0x813D:                /* switch 3 */
                            temp_a5 = *sp10;
                            if (temp_a5 >= 0) {
                                if ((u32) temp_s1->unk8C < (u32) temp_a5) {
                                    temp_s1->unkC1 = 0;
                                }
                                temp_s1->unkC0 = 0;
                                temp_s2->unk91FC->unk1E4 = 0;
                                temp_s1->unk8C = (u32) *sp10;
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(0x501);
                                return;
                            }
                            break;
                        case 0x813B:                /* switch 3 */
                            var_f5 = (f32) *sp10;
                            var_f4 = temp_s1->unk84;
                            if (var_f4 != var_f5) {
                                if (var_f4 == 1000.0f) {
                                    var_f4 = -1.0f;
                                    temp_s1->unk84 = -1.0f;
                                    var_f5 = (f32) *sp10;
                                }
                                if (var_f4 < var_f5) {
                                    temp_s1->unkC1 = 0;
                                }
                                temp_s2->unk91FC->unk1E4 = 0;
                                temp_s1->unk84 = (f32) *sp10;
                            }
                            break;
                        default:                    /* switch 3 */
                            temp_a5_2 = *sp10;
                            if (temp_a5_2 >= 0) {
                                if ((u32) temp_a5_2 < (u32) temp_s1->unk88) {
                                    temp_s1->unkC1 = 0;
                                }
                                temp_s1->unkC0 = 0;
                                temp_s2->unk91FC->unk1E4 = 0;
                                temp_s1->unk88 = (u32) *sp10;
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(0x501);
                                return;
                            }
                            break;
                        }
                    } else {
                        temp_a5_3 = *sp10;
                        temp_f4 = temp_s1->unk80;
                        if ((f32) temp_a5_3 != temp_f4) {
                            var_a0 = temp_a5_3;
                            if (temp_a5_3 < 0) {
                                var_a0 = 0;
                            }
                            if ((f32) var_a0 < temp_f4) {
                                temp_s1->unkC1 = 0;
                                if (var_a0 < 0xC) {
                                    var_v0 = ((var_a0 + 1) * 4) + temp_s1;
loop_40:
                                    temp_a0 = var_v0->unk14;
                                    var_v0 += 4;
                                    if (temp_a0 != NULL) {
                                        temp_a1 = temp_a0->unk1C;
                                        if (temp_a1 != NULL) {
                                            temp_a1->unk57 = 0;
                                            if ((temp_s1 + 0x34) != var_v0) {
                                                goto loop_40;
                                            }
                                        }
                                    }
                                }
                            }
                            temp_s2->unk91FC->unk1E4 = 0;
                            temp_s1->unk80 = (f32) *sp10;
                        }
                    }
                } else {
                    switch (pname) {                /* switch 4; irregular */
                    case 0x8137:                    /* switch 4 */
                        temp_v0 = *sp10;
                        if ((temp_v0 != 0x2900) && (temp_v0 != 0x2901) && (temp_v0 != 0x812D)) {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        break;
                    case 0x8124:                    /* switch 4 */
                        temp_a5_4 = *sp10;
                        if ((u32) temp_a5_4 < 2U) {
                            temp_s1->unkBC = (s8) temp_a5_4;
                            if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unkBB != 0)) {
                                mgrTM_tram_select(temp_s2, temp_s1);
                                mgrTM_SendTexmode1(temp_s2, temp_s1);
                            }
                        } else {
                            __glSetError(0x501);
                            return;
                        }
                        break;
                    default:                        /* switch 4 */
                        temp_a5_5 = *sp10;
                        if ((u32) temp_a5_5 < 4U) {
                            temp_s1->unkBD = (s8) temp_a5_5;
                            if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unkBB != 0)) {
                                mgrTM_tram_select(temp_s2, temp_s1);
                                mgrTM_SendTexmode1(temp_s2, temp_s1);
                            }
                        } else {
                            __glSetError(0x501);
                            return;
                        }
                        break;
                    }
                }
            } else {
                temp_a3 = pname < GL_TEXTURE_WRAP_T;
                if (pname >= GL_TEXTURE_WRAP_S) {
                    if (temp_a3 == 0) {
                        switch (pname) {            /* switch 1; irregular */
                        default:                    /* switch 1 */
                            temp_v0_2 = *sp10;
                            switch (temp_v0_2) {    /* switch 2; irregular */
                            case 0x812D:            /* switch 2 */
                                temp_s1->unkAF = 0;
                                temp_s1->unkAE = 1;
                                temp_s1->unk68 = (s32) ((temp_s1->unk68 | 0x2000) & ~0x4000);
block_15:
                                if (temp_s2->unk91FC->unk1E4 == temp_s1) {
                                    __glMgrim_TexParameteri((enum GLenum) temp_s2, (enum GLenum) temp_s1, M2C_ERROR(/* Read from unset register $a2 */));
                                }
                                break;
                            case 0x2901:            /* switch 2 */
                                temp_s1->unkAE = 0;
                                temp_s1->unk68 = (s32) (temp_s1->unk68 & ~0x2000);
                                goto block_15;
                            case 0x2900:            /* switch 2 */
                                temp_s1->unkAF = 1;
                                temp_s1->unkAE = 1;
                                temp_s1->unk68 = (s32) (temp_s1->unk68 | 0x2000 | 0x4000);
                                goto block_15;
                            }
                            break;
                        case GL_TEXTURE_WRAP_T:     /* switch 1 */
                            temp_v0_3 = *sp10;
                            switch (temp_v0_3) {    /* switch 6; irregular */
                            case 0x812D:            /* switch 6 */
                                temp_s1->unkAF = 0;
                                temp_s1->unkAD = 1;
                                temp_s1->unk68 = (s32) ((temp_s1->unk68 | 0x1000) & ~0x4000);
block_70:
                                if (temp_s2->unk91FC->unk1E4 == temp_s1) {
                                    __glMgrim_TexParameteri((enum GLenum) temp_s2, (enum GLenum) temp_s1, M2C_ERROR(/* Read from unset register $a2 */));
                                }
                                break;
                            case 0x2901:            /* switch 6 */
                                temp_s1->unkAD = 0;
                                temp_s1->unk68 = (s32) (temp_s1->unk68 & ~0x1000);
                                goto block_70;
                            case 0x2900:            /* switch 6 */
                                temp_s1->unkAF = 1;
                                temp_s1->unkAD = 1;
                                temp_s1->unk68 = (s32) (temp_s1->unk68 | 0x1000 | 0x4000);
                                goto block_70;
                            }
                            break;
                        case 0x809A:                /* switch 1 */
                            temp_f4_2 = (f32) *sp10;
                            if (!(temp_f4_2 > 0.0f)) {
                                temp_s1->unk74 = temp_f4_2;
                                temp_f0 = (s32) ((second half of f64) + -0.5);
                                switch (temp_f0) {  /* switch 7; irregular */
                                default:            /* switch 7 */
                                    var_v0_2 = 0;
                                    if (temp_f0 != -5) {
                                        temp_s1->unkBF = 0;
                                    } else {
                                        var_v0_2 = 1;
                                        temp_s1->unkBF = 1;
                                    }
                                    break;
                                case -2:            /* switch 7 */
                                case -1:            /* switch 7 */
                                case 0:             /* switch 7 */
                                    var_v0_2 = 4;
                                    temp_s1->unkBF = 4;
                                    break;
                                case -3:            /* switch 7 */
                                    var_v0_2 = 3;
                                    temp_s1->unkBF = 3;
                                    break;
                                case -4:            /* switch 7 */
                                    var_v0_2 = 2;
                                    temp_s1->unkBF = 2;
                                    break;
                                }
                                if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unkBE == 1)) {
                                    temp_a5_6 = (var_v0_2 & 7) << 0x10;
                                    temp_a2 = (temp_s1->unk60 & ~0x70000) | temp_a5_6;
                                    temp_s1->unk60 = temp_a2;
                                    __glMgrasWrite(temp_s2, temp_s2, 0x181, temp_a2, SYMBOL_LOCATION.unkDC, 1, temp_a5_6);
                                }
                            } else {
                                __glSetError(0x501);
                                return;
                            }
                            break;
                        }
                    } else {
                        temp_v0_4 = *sp10;
                        switch (temp_v0_4) {        /* switch 5; irregular */
                        case 0x812D:                /* switch 5 */
                            temp_s1->unkAF = 0;
                            temp_s1->unkAC = 1;
                            var_a4 = (temp_s1->unk68 | 0x800) & ~0x4000;
block_61:
                            temp_s1->unk68 = var_a4;
block_62:
                            if (temp_s2->unk91FC->unk1E4 == temp_s1) {
                                __glMgrim_TexParameteri((enum GLenum) temp_s2, (enum GLenum) temp_s1, M2C_ERROR(/* Read from unset register $a2 */));
                            }
                            break;
                        case 0x2901:                /* switch 5 */
                            temp_s1->unkAC = 0;
                            temp_s1->unk68 = (s32) (temp_s1->unk68 & ~0x800);
                            goto block_62;
                        case 0x2900:                /* switch 5 */
                            temp_s1->unkAF = 1;
                            temp_s1->unkAC = 1;
                            var_a4 = temp_s1->unk68 | 0x800 | 0x4000;
                            goto block_61;
                        }
                    }
                } else if (pname >= GL_TEXTURE_MAG_FILTER) {
                    if (pname >= GL_TEXTURE_MIN_FILTER) {
                        if (pname == GL_TEXTURE_MIN_FILTER) {
                            temp_a5_7 = *sp10;
                            if ((u32) temp_a5_7 >= 0x2703U) {
                                if ((u32) temp_a5_7 < 0x2704U) {
                                    if ((s32) temp_s1->unkB3 < 4) {
                                        temp_s1->unkAB = 1;
                                        temp_s1->unkB0 = 1;
                                        temp_s1->unkB5 = 1;
                                        goto block_24;
                                    }
                                    goto block_5;
                                }
                                if ((u32) temp_a5_7 >= 0x8185U) {
                                    if ((u32) temp_a5_7 > 0x8185U) {
                                        if (temp_a5_7 == 0x8186) {
                                            goto block_136;
                                        }
                                        /* Duplicate return node #6. Try simplifying control flow for better match */
                                        __glSetError(0x500);
                                        return;
                                    }
                                    goto block_136;
                                }
                                if ((u32) temp_a5_7 >= 0x8184U) {
                                    if ((u32) temp_a5_7 <= 0x8184U) {
block_136:
                                        temp_s1->unk7C = temp_a5_7;
                                        goto block_24;
                                    }
                                    /* Duplicate return node #6. Try simplifying control flow for better match */
                                    __glSetError(0x500);
                                    return;
                                }
                                if (temp_a5_7 == 0x8146) {
                                    temp_a5_8 = temp_s2 + 0x10000;
                                    if (glIsEnabled((enum GLenum) sp18) != 0) {
                                        sp48 = (s64) temp_a5_8;
                                        __glMgrEnterSoftPath(temp_s2, temp_s2);
                                        temp_s2->unk925C = (s32) (temp_s2->unk925C | 0x40);
                                    }
                                    sp48 = (s64) temp_a5_8;
                                    __glim_TexParameteriv((enum GLenum) sp18, pname, (s32 *) sp10);
                                    var_v0_3 = sp48;
                                    goto block_25;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if ((u32) temp_a5_7 >= 0x2700U) {
                                if ((u32) temp_a5_7 < 0x2701U) {
                                    if ((s32) temp_s1->unkB3 < 4) {
                                        temp_s1->unkAB = 0;
                                        temp_s1->unkB0 = 0;
                                        temp_s1->unkB5 = 1;
                                        goto block_24;
                                    }
                                    /* Duplicate return node #6. Try simplifying control flow for better match */
                                    __glSetError(0x500);
                                    return;
                                }
                                if ((u32) temp_a5_7 >= 0x2702U) {
                                    if (((u32) temp_a5_7 < 0x2703U) && ((s32) temp_s1->unkB3 < 4)) {
                                        temp_s1->unkB0 = 0;
                                        temp_s1->unkAB = 1;
                                        temp_s1->unkB5 = 1;
                                        goto block_24;
                                    }
                                    /* Duplicate return node #6. Try simplifying control flow for better match */
                                    __glSetError(0x500);
                                    return;
                                }
                                if ((temp_a5_7 == 0x2701) && ((s32) temp_s1->unkB3 < 4)) {
                                    temp_s1->unkAB = 0;
                                    temp_s1->unkB0 = 1;
                                    temp_s1->unkB5 = 1;
                                    goto block_24;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if ((u32) temp_a5_7 >= 0x2601U) {
                                if ((u32) temp_a5_7 < 0x2602U) {
                                    temp_s1->unkB5 = 0;
                                    temp_s1->unkB0 = 1;
                                    var_v0_3 = (s64) (temp_s2 + 0x10000);
                                    temp_s1->unkAB = (s8) ((s32) temp_s1->unkB3 > 3);
                                    goto block_25;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if (temp_a5_7 == 0x2600) {
                                temp_s1->unkAB = 0;
                                temp_s1->unkB0 = 0;
                                temp_s1->unkB5 = 0;
block_24:
                                var_v0_3 = (s64) (temp_s2 + 0x10000);
block_25:
                                temp_s1->unkC0 = 0;
                                var_v0_3->unk-6E04->unk1E4 = 0;
                            } else {
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                            }
                        } else {
                            goto block_5;
                        }
                    } else {
                        temp_a5_9 = *sp10;
                        if ((u32) temp_a5_9 >= 0x8146U) {
                            if ((u32) temp_a5_9 > 0x8146U) {
                                if ((u32) temp_a5_9 >= 0x8185U) {
                                    if ((u32) temp_a5_9 > 0x8185U) {
                                        if (temp_a5_9 == 0x8186) {
                                            goto block_111;
                                        }
                                        /* Duplicate return node #6. Try simplifying control flow for better match */
                                        __glSetError(0x500);
                                        return;
                                    }
                                    goto block_111;
                                }
                                if (temp_a5_9 == 0x8184) {
block_111:
                                    temp_s1->unk7C = temp_a5_9;
                                    goto block_112;
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glSetError(0x500);
                                return;
                            }
                            if (glIsEnabled((enum GLenum) sp18) != 0) {
                                __glMgrEnterSoftPath(temp_s2, temp_s2);
                                temp_s2->unk925C = (s32) (temp_s2->unk925C | 0x40);
                            }
                            sp48 = (s64) (temp_s2 + 0x10000);
                            __glim_TexParameteriv((enum GLenum) sp18, pname, (s32 *) sp10);
                            var_v0_4 = sp48;
                            goto block_113;
                        }
                        if ((u32) temp_a5_9 >= 0x8097U) {
                            if ((u32) temp_a5_9 <= 0x8097U) {
                                goto block_104;
                            }
                            if (temp_a5_9 == 0x8099) {
block_104:
                                if ((temp_s1->unkB3 & 0x1E) == 2) {
                                    var_v0_4 = (s64) (temp_s2 + 0x10000);
                                    temp_s1->unkBE = 1U;
                                    temp_s1->unkB1 = 1;
                                    goto block_113;
                                }
                                goto block_5;
                            }
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if ((u32) temp_a5_9 >= 0x2601U) {
                            if ((u32) temp_a5_9 < 0x2602U) {
                                temp_s1->unkBE = 0U;
                                var_v0_4 = (s64) (temp_s2 + 0x10000);
                                temp_s1->unkB1 = 1;
                                goto block_113;
                            }
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        if (temp_a5_9 == 0x2600) {
                            temp_s1->unkBE = 0U;
                            temp_s1->unkB1 = 0;
block_112:
                            var_v0_4 = (s64) (temp_s2 + 0x10000);
block_113:
                            var_v0_4->unk-6E04->unk1E4 = 0;
                        } else {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            __glSetError(0x500);
                        }
                    }
                } else {
                    if (pname == GL_TEXTURE_BORDER_COLOR) {
                        __glClampColori(temp_s2, sp, sp10, temp_a3, temp_a4);
                        temp_a2_2 = ((s32) (sp4 * 1.6777215e7f) & 0xFFF000) | ((s32) (sp0 * 1.6777215e7f) >> 0xC);
                        temp_s1->unk90 = temp_a2_2;
                        temp_s1->unk94 = (s32) (((s32) (spC * 1.6777215e7f) & 0xFFF000) | ((s32) (sp8 * 1.6777215e7f) >> 0xC));
                        if ((temp_s2->unk91FC->unk1E4 == temp_s1) && (temp_s1->unk4C->unk14 == 0)) {
                            __glMgrasWrite(temp_s2, temp_s2, 0x184, temp_a2_2, SYMBOL_LOCATION.unkE8, 0);
                            __glMgrasWrite(temp_s2, temp_s2, 0x185, temp_s1->unk94, SYMBOL_LOCATION.unkEC, 1);
                        }
                        return;
                    }
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    __glSetError(0x500);
                }
            }
        } else {
block_5:
        default:                                    /* switch 5 */
        default:                                    /* switch 2 */
        default:                                    /* switch 6 */
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_SoftTexParameteri(__GLcontext *gc, u32 arg1, s32 arg2, f32 *arg3, ...) {
    s32 sp24;
    f32 *var_a3;
    s32 var_a2;

    var_a3 = arg3;
    sp24 = arg2;
    if (arg1 >= 0x8066U) {
        var_a3 = (f32 *)0x819A;
        if (arg1 > 0x8066U) {
            var_a2 = arg1 < 0x819AU;
            if (var_a2 == 0) {
                if ((arg1 > 0x819AU) && (arg1 != 0x819B)) {
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8066);
                    return;
                }
                /* Duplicate return node #12. Try simplifying control flow for better match */
                __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
                return;
            }
            var_a3 = (f32 *)0x80BF;
            if (arg1 >= 0x80BFU) {
                if (arg1 <= 0x80BFU) {
                    /* Duplicate return node #12. Try simplifying control flow for better match */
                    __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
                    return;
                }
                /* Duplicate return node #5. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8066);
                return;
            }
            if (arg1 == 0x8072) {
                /* Duplicate return node #12. Try simplifying control flow for better match */
                __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
                return;
            }
            /* Duplicate return node #5. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8066);
            return;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
        return;
    }
    var_a2 = arg1 < 0x2803U;
    if (arg1 >= 0x2802U) {
        if (var_a2 == 0) {
            if (arg1 == 0x2803) {
                /* Duplicate return node #12. Try simplifying control flow for better match */
                __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
                return;
            }
            /* Duplicate return node #5. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8066);
            return;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
        return;
    }
    if (arg1 >= 0x2801U) {
        if (arg1 < 0x2802U) {
            /* Duplicate return node #12. Try simplifying control flow for better match */
            __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
            return;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8066);
        return;
    }
    var_a2 = 0x2800;
    if (arg1 == 0x2800) {
        __glMgrim_SoftTexParameteriv(gc, &sp24, var_a3, 0x8066);
        return;
    }
    __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8066);
}

void __glMgrim_TexParameteri(enum GLenum target, enum GLenum pname, s32 param) {
    s32 sp24;
    f32 *var_a3;
    s32 var_a2;

    sp24 = param;
    if (pname >= 0x8125U) {
        if (pname > 0x8125U) {
            var_a2 = pname < 0x813DU;
            if (var_a2 == 0) {
                var_a3 = (f32 *)0x8185;
                if (pname > 0x813DU) {
                    if (pname >= 0x8185U) {
                        var_a2 = 0x8186;
                        if (pname > 0x8185U) {
                            if (pname == 0x8186) {
                                /* Duplicate return node #10. Try simplifying control flow for better match */
                                __glMgrim_TexParameteriv(target, pname, &sp24);
                                return;
                            }
                            /* Duplicate return node #14. Try simplifying control flow for better match */
                            __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
                            return;
                        }
                        /* Duplicate return node #10. Try simplifying control flow for better match */
                        __glMgrim_TexParameteriv(target, pname, &sp24);
                        return;
                    }
                    if (pname == 0x8184) {
                        /* Duplicate return node #10. Try simplifying control flow for better match */
                        __glMgrim_TexParameteriv(target, pname, &sp24);
                        return;
                    }
                    /* Duplicate return node #14. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
                    return;
                }
                /* Duplicate return node #10. Try simplifying control flow for better match */
                __glMgrim_TexParameteriv(target, pname, &sp24);
                return;
            }
            var_a3 = (f32 *)0x813B;
            var_a2 = pname > 0x813BU;
            if (pname >= 0x813BU) {
                if (var_a2 != 0) {
                    if (pname == 0x813C) {
                        /* Duplicate return node #10. Try simplifying control flow for better match */
                        __glMgrim_TexParameteriv(target, pname, &sp24);
                        return;
                    }
                    /* Duplicate return node #14. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
                    return;
                }
                /* Duplicate return node #10. Try simplifying control flow for better match */
                __glMgrim_TexParameteriv(target, pname, &sp24);
                return;
            }
            var_a3 = (f32 *)0x813A;
            var_a2 = pname < 0x813AU;
            if (var_a2 == 0) {
                if (pname <= 0x813AU) {
                    /* Duplicate return node #10. Try simplifying control flow for better match */
                    __glMgrim_TexParameteriv(target, pname, &sp24);
                    return;
                }
                /* Duplicate return node #14. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
                return;
            }
            if (pname == 0x8137) {
                /* Duplicate return node #10. Try simplifying control flow for better match */
                __glMgrim_TexParameteriv(target, pname, &sp24);
                return;
            }
            /* Duplicate return node #14. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
            return;
        }
        /* Duplicate return node #10. Try simplifying control flow for better match */
        __glMgrim_TexParameteriv(target, pname, &sp24);
        return;
    }
    var_a3 = (f32 *)0x8072;
    if (pname >= GL_TEXTURE_WRAP_R_EXT) {
        if (pname <= GL_TEXTURE_WRAP_R_EXT) {
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameteriv(target, pname, &sp24);
            return;
        }
        var_a3 = (f32 *)0x809B;
        var_a2 = pname < 0x809BU;
        if (var_a2 == 0) {
            if (pname > 0x809BU) {
                if (pname == 0x8124) {
                    /* Duplicate return node #10. Try simplifying control flow for better match */
                    __glMgrim_TexParameteriv(target, pname, &sp24);
                    return;
                }
                /* Duplicate return node #14. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
                return;
            }
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameteriv(target, pname, &sp24);
            return;
        }
        if (pname == 0x809A) {
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameteriv(target, pname, &sp24);
            return;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
        return;
    }
    var_a2 = pname < GL_TEXTURE_WRAP_T;
    if (pname >= GL_TEXTURE_WRAP_S) {
        if ((var_a2 == 0) && (pname != GL_TEXTURE_WRAP_T)) {
            /* Duplicate return node #14. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
            return;
        }
        /* Duplicate return node #10. Try simplifying control flow for better match */
        __glMgrim_TexParameteriv(target, pname, &sp24);
        return;
    }
    if (pname >= GL_TEXTURE_MIN_FILTER) {
        if (pname < GL_TEXTURE_WRAP_S) {
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glMgrim_TexParameteriv(target, pname, &sp24);
            return;
        }
        /* Duplicate return node #14. Try simplifying control flow for better match */
        __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
        return;
    }
    if (pname == GL_TEXTURE_MAG_FILTER) {
        __glMgrim_TexParameteriv(target, pname, &sp24);
        return;
    }
    __glSetError(0x500, (__GLcontext *) var_a2, var_a3, 0x8125);
}

void send_only_texmode2(__GLcontext *arg0, void *arg1) {
    s16 temp_a1;

    __glMgrasWrite(arg0, 0x180, arg1->unk68, SYMBOL_LOCATION.unkD8, 1);
    if (arg1->unkC2 != 0) {
        temp_a1 = arg1->unkA2;
        if (temp_a1 != 1) {
            if (temp_a1 == 0) {
                *(f32 *)0x74080 = 3.4085e-41f;
                *(f32 *)0x74080 = -arg1->unk78;
            }
        } else {
            *(void *)0x74080 = 3.4085e-41f;
            *(void *)0x74080 = (f32) arg1->unk78;
        }
    } else {
        *(void *)0x74080 = 3.4085e-41f;
        *(void *)0x74080 = 0.0f;
    }
}

void __glMgrim_TexEnvfv(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp18;
    s64 sp10;
    __GLcontext *temp_a4;
    enum GLenum temp_a0_2;
    enum GLenum var_a1;
    f32 *var_a2;
    s32 temp_a2;
    s32 temp_a5;
    s64 temp_a0;
    s64 temp_a6;
    void *temp_a0_3;
    void *var_a1_2;

    var_a1 = pname;
    var_a2 = params;
    temp_a4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (target == GL_TEXTURE_ENV) {
            if (var_a1 != GL_TEXTURE_ENV_MODE) {
                sp10 = (s64) temp_a4;
                if (var_a1 != GL_TEXTURE_ENV_COLOR) {
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a1, var_a2, 0x2100, temp_a4);
                    return;
                }
                __glClampColorf((__GLcontext *) sp10, sp, 0x2100, (s32) temp_a4);
                temp_a6 = sp10 + 0x10000;
                temp_a2 = ((s32) (sp4 * 1.6777215e7f) & 0xFFF000) | ((s32) (sp0 * 1.6777215e7f) >> 0xC);
                sp10->unk9160 = temp_a2;
                sp18 = temp_a6;
                temp_a5 = (s32) (sp8 * 1.6777215e7f) >> 0xC;
                sp10->unk9164 = temp_a5;
                __glMgrasWrite((__GLcontext *) sp10, sp10, 0x142, temp_a2, SYMBOL_LOCATION.unk1C, 0, temp_a5, temp_a6);
                __glMgrasWrite((__GLcontext *) sp10, sp10, 0x143, sp18->unk-6E9C, SYMBOL_LOCATION.unk20, 1);
            } else {
                temp_a0 = (s64) *var_a2;
                var_a2 = temp_a4 + 0x10000;
                temp_a0_2 = temp_a0 << 0;
                var_a1 = temp_a0_2;
                switch (temp_a0_2) {                /* irregular */
                case GL_BLEND:
                case GL_MODULATE:
                case GL_DECAL:
                    if (temp_a0_2 == GL_REPLACE) {
                    case GL_REPLACE:
                        var_a1 = GL_MODULATE;
                    }
                    temp_a0_3 = temp_a4->unk8A2C;
                    temp_a4->unk915C = var_a1;
                    if (temp_a0_3 != NULL) {
                        var_a1_2 = temp_a0_3->unkC4;
                        sp18 = (s64) var_a2;
                        if (var_a1_2 == NULL) {
                            sp10 = (s64) temp_a4;
                            mgrTM_RefreshDim(temp_a0_3, var_a1_2, (s32) var_a2, (__GLcontext *)0x2100, temp_a4, 0x1E01);
                            var_a1_2 = sp18->unk-75D4->unkC4;
                        }
                        mgrTM_SendTexmode1(temp_a4, var_a1_2);
                    }
                    return;
                }
            }
        } else {
        default:
            __glSetError(0x500, (__GLcontext *) var_a1, var_a2, 0x2100, temp_a4);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_TexEnvf(enum GLenum target, enum GLenum pname, f32 param) {
    f32 sp20;

    sp20 = param;
    if (pname != GL_TEXTURE_ENV_MODE) {
        __glSetError(0x500);
        return;
    }
    __glMgrim_TexEnvfv(target, pname, &sp20);
}

void __glMgrim_TexEnviv(enum GLenum target, enum GLenum pname, enum GLenum *params) {
    s64 sp10;
    __GLcontext *temp_s0;
    enum GLenum *var_a2;
    enum GLenum temp_a0;
    enum GLenum var_a1;
    s32 temp_a2;
    s32 temp_a5;
    s64 var_a3;
    void *temp_a0_2;
    void *temp_a2_2;
    void *temp_a6;
    void *var_a1_2;

    var_a1 = pname;
    var_a2 = params;
    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        var_a3 = (u32) (target - 0x2300) < (u32) temp_s0->unkD0C;
        if (var_a3 != 0) {
            var_a3 = 0x2100;
            if (var_a1 != GL_TEXTURE_ENV_MODE) {
                if (var_a1 != GL_TEXTURE_ENV_COLOR) {
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a1, (f32 *) var_a2, var_a3);
                    return;
                }
                __glClampAndScaleColori(temp_s0, sp, 0x2100, 0x1E01);
                temp_a6 = temp_s0 + 0x10000;
                temp_a2 = ((s32) (sp4 * 1.6777215e7f) & 0xFFF000) | ((s32) (sp0 * 1.6777215e7f) >> 0xC);
                temp_s0->unk9160 = temp_a2;
                sp10 = (s64) temp_a6;
                temp_a5 = (s32) (sp8 * 1.6777215e7f) >> 0xC;
                temp_s0->unk9164 = temp_a5;
                __glMgrasWrite(temp_s0, temp_s0, 0x142, temp_a2, SYMBOL_LOCATION.unk1C, 0, temp_a5, temp_a6);
                __glMgrasWrite(temp_s0, temp_s0, 0x143, sp10->unk-6E9C, SYMBOL_LOCATION.unk20, 1);
            } else {
                temp_a0 = *var_a2;
                var_a2 = (enum GLenum *)0x10000;
                var_a1 = temp_a0;
                switch (temp_a0) {                  /* irregular */
                case GL_BLEND:
                case GL_MODULATE:
                case GL_DECAL:
                    if (temp_a0 == GL_REPLACE) {
                    case GL_REPLACE:
                        var_a1 = GL_MODULATE;
                    }
                    temp_a2_2 = temp_s0 + 0x10000;
                    temp_a0_2 = temp_s0->unk8A2C;
                    temp_s0->unk915C = var_a1;
                    if (temp_a0_2 != NULL) {
                        var_a1_2 = temp_a0_2->unkC4;
                        sp10 = (s64) temp_a2_2;
                        if (var_a1_2 == NULL) {
                            mgrTM_RefreshDim(temp_a0_2, var_a1_2, (s32) temp_a2_2, (__GLcontext *)0x2100, (__GLcontext *)0x1E01);
                            var_a1_2 = sp10->unk-75D4->unkC4;
                        }
                        mgrTM_SendTexmode1(temp_s0, var_a1_2);
                    }
                    return;
                }
            }
        } else {
        default:
            __glSetError(0x500, (__GLcontext *) var_a1, (f32 *) var_a2, var_a3);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_TexEnvi(enum GLenum target, enum GLenum pname, enum GLenum param) {
    enum GLenum sp24;

    sp24 = param;
    if (pname != GL_TEXTURE_ENV_MODE) {
        __glSetError(0x500);
        return;
    }
    __glMgrim_TexEnviv(target, pname, &sp24);
}

void __glMgrim_TexImage1D(enum GLenum target, s32 level, enum GLenum internalformat, s32 width, s32 border, enum GLenum format, enum GLenum type, void *pixels) {
    s64 sp70;
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
    s32 sp0;
    s32 temp_at;
    s64 temp_v0;
    s64 temp_v1;
    s64 var_a5;

    sp20 = (s64) pixels;
    sp8 = (s64) type;
    sp10 = (s64) format;
    sp38 = (s64) border;
    sp48 = (s64) width;
    sp50 = (s64) internalformat;
    sp18 = (s64) level;
    sp0 = pixels != NULL;
    sp58 = (s64) target;
    __glMgrim_CopyTexImage1DEXT(target, level, internalformat, width, border, format, type);
    var_a5 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (M2C_ERROR(/* Read from unset register $v0 */)->unkB3 != 1) {
            goto block_2;
        }
        if (M2C_ERROR(/* Read from unset register $v0 */)->unkB5 != 0) {
            sp0 = 0;
            sp28 = 0;
            temp_v0 = sp38 * 2;
            temp_v1 = (sp48 - temp_v0) << sp18;
            sp30 = temp_v1;
            if (temp_v1 > 0) {
                sp70 = var_a5;
                sp40 = temp_v0;
loop_9:
                sp70 = var_a5;
                __glMgrim_CopyTexImage1DEXT((enum GLenum) sp58, (s32) sp28, (enum GLenum) sp50, sp40 + sp30, (s32) sp38, (enum GLenum) sp10, (enum GLenum) sp8);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    temp_at = sp30 >> 1;
                    sp30 = (s64) temp_at;
                    sp28 += 1;
                    if (temp_at <= 0) {
                        goto block_2;
                    }
                    goto loop_9;
                }
                return;
            }
        }
block_2:
        if (sp0 > 0) {
            mgrTM_DoTexLoad(var_a5, sp18, sp10, sp8, sp20, var_a5);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x48, 0x4c, 0x50, 0x54], gap at: 0x38. */
void __glMgrim_CopyTexImage1DEXT(enum GLenum target, s32 level, enum GLenum internalformat, s32 x, s32 y, enum GLenum width, enum GLenum border) {
    s64 sp18;
    s64 sp10;
    ? sp8;
    enum GLenum sp4;

    unksp40 = (s64) internalformat;
    unksp30 = (s64) border;
    unksp38 = (s64) width;
    sp10 = (s64) y;
    sp18 = (s64) x;
    __glMgrGetVisualInfo((__GLcontext *)0x1800, 0x1800, sp, &sp4);
    __glMgrim_CopyTexImage1DEXT(target, level, (enum GLenum) unksp40, (s32) unksp38, (s32) unksp30, sp4, sp0);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    mgrTM_DoCopyTex(M2C_ERROR(/* Read from unset register $v0 */), level, sp4, sp0, sp18, sp10);
}

void mgrTM_TexImage1D_setup(s32 arg0, s8 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 spA0;
    s64 sp98;
    s64 sp80;
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
    s32 sp0;
    s16 var_v0;
    s32 temp_at;
    s32 var_a0;
    s32 var_a6;
    s32 var_t8;
    s32 var_t9;
    s64 temp_a5;
    s64 temp_v0;
    s64 var_a1;
    s64 var_a2;
    u8 var_t2;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_v1;

    if (__glBeginMode != 1) {
        if (arg0 != 0x8063) {
            if (arg0 != 0xDE0) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                __glSetError(0x500);
                return;
            }
            var_t9 = 0;
            if (arg1 >= 0) {
                goto block_5;
            }
            /* Duplicate return node #21. Try simplifying control flow for better match */
            __glSetError(0x501);
            return;
        }
        var_t9 = 1;
        *arg7 = -1;
        if (arg1 < 0) {
            /* Duplicate return node #21. Try simplifying control flow for better match */
            __glSetError(0x501);
            return;
        }
block_5:
        if (arg1 < 0xE) {
            if ((arg3 < 0) || (arg3 >= 0x2001)) {
                var_a0 = 1;
            } else {
                var_a0 = 0;
            }
            if (var_a0 != 0) {
                /* Duplicate return node #21. Try simplifying control flow for better match */
                __glSetError(0x501);
                return;
            }
            sp28 = (s64) __glCurrentContext;
            sp40 = arg3;
            sp18 = arg7;
            sp38 = arg4;
            sp48 = 0;
            sp50 = arg2;
            temp_v1 = (var_t9 * 0xCC) + __glCurrentContext;
            sp60 = (s64) temp_v1;
            var_t8 = temp_v1->unk8AF4;
            if (temp_v1 != ((-1 << 0x10) | 0x75D0)) {
                sp28 = (s64) __glCurrentContext;
                sp40 = arg3;
                sp18 = arg7;
                sp38 = arg4;
                sp48 = 0;
                sp50 = arg2;
                sp58 = (s64) (temp_v1 + 0x10000);
                if (var_t8 == 0) {
                    spA0 = arg6;
                    sp98 = arg5;
                    mgrTM_RefreshDim(sp60 + 0x8A30, (void *)0x8A30);
                    var_t8 = sp58->unk-750C;
                }
            }
            sp20 = (s64) var_t8;
            mgrTM_set_externalformat(sp28, arg5, arg6, (s64) var_t8);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp80 = sp28 + 0x10000;
                sp28->unk91FC->unk1E4 = 0;
                if (sp40 == 0) {
                    goto block_17;
                }
                temp_v0 = sp28->unk0(sp28, 0x44);
                sp78 = temp_v0;
                sp30 = temp_v0;
                bzero((void *) temp_v0, 0x44U);
                sp78->unk28 = (s16) sp40;
                sp78->unk3F = arg1;
                sp78->unk0 = (s32) sp20;
                temp_v0->unk2A = 1;
                temp_v0->unk2C = 1;
                temp_v0->unk2E = 1;
                if ((sp28->unk7D64 & 0x100000) && (sp80->unk-7D6C != 0)) {
                    sp40 = (sp40 - sp80->unk-7D74) + 1;
                }
                temp_v0->unk8 = 0;
                temp_v0->unkC = 0;
                temp_v0->unk10 = 0;
                temp_v0->unk18 = (s32) sp50;
                temp_v0->unk14 = (s32) sp38;
                temp_v0->unk4 = (s32) (sp40 - (sp38 * 2));
                temp_a6 = sp20->unk4C;
                if (temp_a6 != NULL) {
                    temp_a5 = temp_v0 + 4;
                    if ((s32) temp_a6->unk3F < arg1) {
                        sp70 = temp_a5;
                        memcpy(sp, temp_a6 + 4, 0x18U);
                        var_t2 = sp20->unk4C->unk3F;
                        var_a1 = sp70;
                        var_a6 = arg1 - var_t2;
                    } else {
                        memcpy(sp, (void *) temp_a5, 0x18U);
                        temp_a1 = sp20->unk4C;
                        var_t2 = temp_a1->unk3F;
                        var_a1 = (s64) (temp_a1 + 4);
                        var_a6 = var_t2 - arg1;
                    }
                    if ((arg1 != var_t2) && ((sp0 >> (var_a6 - 1)) < 2)) {
                        sp48 = 1;
                    } else {
                        temp_at = sp0 >> var_a6;
                        sp0 = temp_at;
                        if (temp_at == 0) {
                            sp0 = 1;
                        }
                    }
                    if (sp48 != 0) {
                        goto block_34;
                    }
                    if (memcmp(sp, (void *) var_a1, 0x18) == 0) {
                        temp_a5_2 = (arg1 * 4) + sp20;
                        temp_a6_2 = temp_a5_2->unk14;
                        if (temp_a6_2 != NULL) {
                            temp_a6_2->unk28 = (s16) sp30->unk28;
                            sp68 = (s64) temp_a5_2;
                            mgrTM_RemoveTex(sp28, sp30);
                            var_a2 = (s64) sp68->unk14;
                            if (var_a2->unk40 != 0) {
                                *sp18 = 0;
                                return;
                            }
                            temp_a1_2 = var_a2->unk1C;
                            if ((temp_a1_2 != NULL) && (temp_a1_2->unk59 == 0)) {
                                if (*sp18 > 0) {
                                    sp30 = var_a2;
                                    mgrTM_MakeResident(sp28, temp_a1_2, 1, 1, 1);
                                }
                            }
                            goto block_38;
                        }
                        temp_a5_2->unk14 = (void *) sp30;
                        __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp30, sp30, sp30);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            mgrTM_process_level(sp28, sp20, sp30, sp18);
                            var_a2 = sp30;
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                goto block_37;
                            }
                        }
                        goto block_17;
                    }
block_34:
                    mgrTM_RemoveTex(sp28, sp20);
                    temp_a2 = (arg1 * 4) + sp20;
                    temp_a2->unk14 = (s32) sp30;
                    __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp30, sp30, sp30, temp_a2, sp20);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        mgrTM_set_internalformat(sp28, sp20, sp30);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            mgrTM_process_level(sp28, sp20, sp30, sp18);
                            var_a2 = sp30;
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                goto block_37;
                            }
                        }
                    }
                    goto block_17;
                }
                ((arg1 * 4) + sp20)->unk14 = (s32) sp30;
                __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp30, sp30, sp20);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    mgrTM_set_internalformat(sp28, sp20, sp30);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        mgrTM_process_level(sp28, sp20, sp30, sp18);
                        var_a2 = sp30;
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
block_37:
block_38:
                            var_v0 = -1;
                            if (sp38 == 0) {
                                var_v0 = 0;
                            }
                            var_a2->unk24 = 0;
                            var_a2->unk26 = 0;
                            var_a2->unk20 = var_v0;
                            var_a2->unk3A = (s8) (arg1 & 1);
                            var_a2->unk22 = -1;
                            temp_a6_3 = sp20->unk4C;
                            if (temp_a6_3 != NULL) {
                                if (arg1 < (s32) temp_a6_3->unk3F) {
                                    goto block_42;
                                }
                            } else {
block_42:
                                sp20->unk4C = (void *) var_a2;
                            }
                            ((void *) sp80)->unk-6E04->unk1E8 = 0;
                            return;
                        }
                    }
                }
block_17:
                if (sp20->unkB3 != 1) {
                    mgrTM_RemoveLev(sp28, sp20, arg1);
                } else {
                    mgrTM_RemoveTex(sp28, sp20);
                }
                return;
            }
            __glSetError(0x500);
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_TexSubImage1DEXT(enum GLenum target, s32 level, s32 xoffset, s32 width, enum GLenum format, enum GLenum type, void *pixels) {
    s64 sp60;
    s64 sp58;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a1;
    __GLcontext *var_t0;
    s32 temp_a1_2;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_t9;
    s32 var_a3;
    s32 var_a7_2;
    s64 var_ra;
    u8 var_a7;
    void *temp_a1_3;
    void *temp_t3;

    var_ra = saved_reg_ra;
    var_a3 = width;
    var_t0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (target != GL_TEXTURE_1D) {
            __glSetError(0x500, (__GLcontext *)0xDE0);
            return;
        }
        temp_a1 = var_t0 + 0x10000;
        if (var_t0 != ((-1 << 0x10) | 0x75D0)) {
            if (var_t0->unk8AF4 == 0) {
                sp18 = (s64) var_t0;
                sp20 = (s64) var_a3;
                sp28 = (s64) xoffset;
                sp8 = (s64) type;
                sp0 = (s64) format;
                sp30 = (s64) pixels;
                sp60 = (s64) temp_a1;
                mgrTM_RefreshDim(var_t0 + 0x8A30, (void *)0x8A30, 0xDE0);
                var_t0 = (__GLcontext *) sp18;
                var_ra = sp58;
            }
        }
        if (level >= 0) {
            var_a7 = level < 0xE;
            if (var_a7 != 0) {
                temp_t3 = ((level * 4) + (s64) var_t0->unk8AF4)->unk14;
                if (temp_t3 != NULL) {
                    if (temp_t3->unk40 != 0) {
                        return;
                    }
                    temp_t3->unk28 = (s16) var_a3;
                    temp_t2 = temp_t3->unk14;
                    if ((s32) var_t0->stencilBuffer.buf.resize & 0x100000) {
                        var_a7 = var_t0->unk8294;
                        if (var_a7 != 0) {
                            var_a7 = (u8) var_t0->unk828C;
                            var_a3 = (var_a3 - var_a7) + 1;
                        }
                    }
                    temp_a1_2 = xoffset + var_a3;
                    if ((var_a3 > 0) && (xoffset >= -temp_t2)) {
                        temp_t8 = temp_t3->unk4;
                        temp_t9 = temp_t8 + temp_t2;
                        if (temp_t9 >= temp_a1_2) {
                            var_a7_2 = temp_t2 * 2;
                            if ((!(temp_a1_2 & 0x1F) || (var_a7_2 = temp_t2 * 2, (temp_a1_2 == temp_t9))) && ((var_a7_2 += temp_t8, (var_a7_2 == var_a3)) || (sp58 = var_ra, sp18 = (s64) var_t0, sp20 = (s64) var_a3, sp28 = (s64) xoffset, sp10 = (s64) var_t0->unk8AF4, sp8 = (s64) type, sp0 = (s64) format, sp30 = (s64) pixels, sp38 = (s64) temp_t3, sp40 = (s64) temp_t2, ((var_a3 < 0x20) == 0)))) {
                                sp18 = (s64) var_t0;
                                sp8 = (s64) type;
                                sp0 = (s64) format;
                                sp30 = (s64) pixels;
                                sp38 = (s64) temp_t3;
                                sp40 = (s64) temp_t2;
                                sp10 = (s64) var_t0->unk8AF4;
                                sp28 = (s64) xoffset;
                                sp20 = (s64) var_a3;
                                sp58 = var_ra;
                                mgrTM_set_externalformat((s64) var_t0, (s64) format, (s64) type, sp10, (s64) format, (s64) type, (s64) pixels, var_a7_2);
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    if (sp30 != 0) {
                                        sp38->unk2A = 1;
                                        sp38->unk2C = 1;
                                        sp38->unk2E = 1;
                                        sp38->unk22 = 0;
                                        sp38->unk24 = 0;
                                        sp38->unk26 = 0;
                                        temp_a1_3 = sp38->unk1C;
                                        sp38->unk20 = (s16) sp28;
                                        if (temp_a1_3->unk59 == 0) {
                                            mgrTM_MakeResident(sp18, temp_a1_3, 1, 1, (sp38->unk4 + (sp40 * 2)) == sp20, sp20);
                                        }
                                        mgrTM_DoTexLoad(sp10, (s64) level, sp0, sp8, sp30);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            sp58 = var_ra;
                            __glSetError(0x501, (__GLcontext *) temp_a1_2, (f32 *) xoffset, (s64) var_a3, (__GLcontext *) format, (s64) type, (s64) pixels, var_a7_2);
                            return;
                        }
                    }
                    sp58 = var_ra;
                    __glSetError(0x501, (__GLcontext *) temp_a1_2, (f32 *) xoffset, (s64) var_a3, (__GLcontext *) format, (s64) type, (s64) pixels, (s32) var_a7);
                    return;
                }
                sp58 = var_ra;
                __glSetError(0x502, temp_a1, (f32 *) xoffset, (s64) var_a3, (__GLcontext *) format, (s64) type, (s64) pixels, (s32) var_a7);
                return;
            }
        }
        sp58 = var_ra;
        __glSetError(0x501, temp_a1, (f32 *) xoffset, (s64) var_a3, (__GLcontext *) format, (s64) type, (s64) pixels);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_CopyTexSubImage1DEXT(enum GLenum target, s32 level, s32 xoffset, s32 x, s32 y, s32 width) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    enum GLenum sp4;
    __GLcontext *temp_a7;
    s32 temp_at;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t9;
    s32 var_a5;
    s64 var_a6_2;
    s64 var_ra;
    u8 var_a6;
    void *temp_a0;
    void *temp_a1;

    var_ra = saved_reg_ra;
    var_a5 = width;
    temp_a7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (target != GL_TEXTURE_1D) {
            __glSetError(0x500, (__GLcontext *)0xDE0, (f32 *) temp_a7);
            return;
        }
        if ((temp_a7 != ((-1 << 0x10) | 0x75D0)) && (temp_a7->unk8AF4 == 0)) {
            sp8 = (s64) var_a5;
            sp10 = (s64) temp_a7;
            sp70 = (s64) xoffset;
            sp28 = (s64) x;
            sp30 = (s64) y;
            sp68 = (s64) (temp_a7 + 0x10000);
            sp18 = (s64) level;
            mgrTM_RefreshDim(temp_a7 + 0x8A30, (void *)0x8A30, 0xDE0, temp_a7);
            var_ra = sp58;
        }
        temp_a0 = ((level * 4) + (s64) temp_a7->unk8AF4)->unk14;
        if (temp_a0 != NULL) {
            var_a6 = temp_a0->unk40;
            if (var_a6 != 0) {
                return;
            }
            temp_a0->unk28 = (s16) var_a5;
            temp_t3 = temp_a0->unk14;
            if (((s32) temp_a7->stencilBuffer.buf.resize & 0x100000) && (temp_a7->unk8294 != 0)) {
                var_a6 = (u8) temp_a7->unk828C;
                var_a5 = (var_a5 - var_a6) + 1;
            }
            temp_t0 = xoffset + var_a5;
            if (var_a5 > 0) {
                temp_at = -temp_t3;
                sp48 = (s64) temp_at;
                if (xoffset >= temp_at) {
                    temp_t8 = temp_a0->unk4;
                    temp_t9 = temp_t8 + temp_t3;
                    if (temp_t9 >= temp_t0) {
                        var_a6_2 = temp_t3 * 2;
                        if (((temp_t0 & 0x1F) && (var_a6_2 = temp_t3 * 2, (temp_t0 != temp_t9))) || ((var_a6_2 += temp_t8, (var_a6_2 != var_a5)) && (sp58 = var_ra, sp8 = (s64) var_a5, sp10 = (s64) temp_a7, sp18 = (s64) level, sp20 = (s64) temp_a0, sp28 = (s64) x, sp30 = (s64) y, sp60 = (s64) temp_a0, sp38 = (s64) temp_a7->unk8AF4, sp40 = (s64) temp_t3, ((var_a5 < 0x20) != 0)))) {
                            sp58 = var_ra;
                            __glSetError(0x501, (__GLcontext *) level, (f32 *) xoffset, (s64) x, (__GLcontext *) y, (s64) var_a5, var_a6_2, (s32) temp_a7);
                            return;
                        }
                        sp8 = (s64) var_a5;
                        sp10 = (s64) temp_a7;
                        sp28 = (s64) x;
                        sp30 = (s64) y;
                        sp60 = (s64) temp_a0;
                        sp38 = (s64) temp_a7->unk8AF4;
                        sp40 = (s64) temp_t3;
                        sp18 = (s64) level;
                        sp20 = (s64) temp_a0;
                        sp58 = var_ra;
                        __glMgrGetVisualInfo((__GLcontext *)0x1800, 0x1800, sp, &sp4, x, y, var_a5, var_a6_2, temp_a7);
                        sp20->unk20 = (s16) sp48;
                        sp60->unk2A = 1;
                        sp60->unk2C = 1;
                        sp60->unk2E = 1;
                        sp60->unk22 = 0;
                        sp60->unk24 = 0;
                        temp_a1 = sp60->unk1C;
                        sp60->unk26 = 0;
                        if (temp_a1->unk59 == 0) {
                            mgrTM_MakeResident(sp10, temp_a1, 1, 1, (sp60->unk4 + (sp40 * 2)) == sp8, sp8);
                        }
                        mgrTM_DoCopyTex(sp38, (s32) sp18, sp4, sp0, sp28, sp30);
                        return;
                    }
                }
            }
            sp58 = var_ra;
            __glSetError(0x501, (__GLcontext *) level, (f32 *) xoffset, (s64) x, (__GLcontext *) y, (s64) var_a5, (s64) var_a6, (s32) temp_a7);
            return;
        }
        sp58 = var_ra;
        __glSetError(0x502, (__GLcontext *) level, (f32 *) xoffset, (s64) x, (__GLcontext *) y, (s64) var_a5);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_TexImage2D(enum GLenum target, s32 level, enum GLenum internalformat, s32 width, s32 height, s32 border, enum GLenum format, enum GLenum type, void *pixels, s32 arg_sp4) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 sp10;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s64 temp_at;

    sp50 = (s64) height;
    sp48 = (s64) width;
    sp18 = (s64) level;
    sp28 = (s64) arg_sp4;
    sp10 = arg_sp4 != 0;
    __glMgrim_CopyTexImage2DEXT(target, level, internalformat, width, height, border, format, type, /* extra? */ &sp10);
    sp58 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (M2C_ERROR(/* Read from unset register $v0 */)->unkB3 != 3) {
            goto block_2;
        }
        if (M2C_ERROR(/* Read from unset register $v0 */)->unkB5 != 0) {
            sp10 = 0;
            temp_at = border * 2;
            sp20 = temp_at;
            temp_v0 = (sp50 - temp_at) << sp18;
            var_s1 = (sp48 - temp_at) << sp18;
            var_s2 = 0;
            var_s0 = temp_v0;
            if (var_s1 != 0) {
                goto loop_9;
            }
            if (temp_v0 != 0) {
loop_9:
                if (var_s1 == 0) {
                    var_s1 = 1;
                }
loop_10:
                if (var_s0 == 0) {
                    var_s0 = 1;
                }
                __glMgrim_CopyTexImage2DEXT(target, var_s2, internalformat, sp20 + var_s1, sp20 + var_s0, border, format, type, /* extra? */ &sp10);
                var_s2 += 1;
                var_s1 = var_s1 >> 1;
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    var_s0 = var_s0 >> 1;
                    if (var_s1 == 0) {
                        if (var_s0 == 0) {
                            goto block_2;
                        }
                        goto loop_9;
                    }
                    goto loop_10;
                }
                return;
            }
            goto block_3;
        }
block_2:
block_3:
        if (sp10 > 0) {
            mgrTM_DoTexLoad(sp58, sp18, (s64) format, (s64) type, sp28);
        }
    }
}

void __glMgrim_CopyTexImage2DEXT(enum GLenum target, s32 level, enum GLenum internalformat, s32 x, s32 y, s32 width, enum GLenum height, enum GLenum border) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    ? sp18;
    enum GLenum sp14;
    enum GLenum sp10;

    sp30 = (s64) border;
    sp40 = (s64) height;
    sp50 = (s64) width;
    sp28 = (s64) y;
    sp20 = (s64) x;
    sp48 = (s64) internalformat;
    sp38 = (s64) target;
    if (target != GL_PROXY_TEXTURE_2D) {
        __glMgrGetVisualInfo((__GLcontext *)0x1800, 0x1800, &sp10, &sp14);
        __glMgrim_CopyTexImage2DEXT((enum GLenum) sp38, level, (enum GLenum) sp48, (s32) sp50, (s32) sp40, (s32) sp30, sp14, sp10, /* extra? */ &sp18);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            return;
        }
        mgrTM_DoCopyTex(M2C_ERROR(/* Read from unset register $v0 */), level, sp14, sp10, sp20, sp28);
        return;
    }
    __glSetError(0x500);
}

void mgrTM_TexImage2D_setup(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 *arg_sp4) {
    s64 spF0;
    s64 spE8;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
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
    s32 sp4;
    s32 sp0;
    __GLcontext *var_a1;
    s16 var_v0;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v1;
    s32 var_a4;
    s64 temp_a6;
    s64 temp_v0;
    s64 var_a0;
    s64 var_a1_2;
    u8 var_a7;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a6_2;
    void *temp_t0_2;

    spB0 = 0;
    spC0 = 0;
    spA0 = 0;
    spA8 = 0;
    spC8 = 0;
    spB8 = 0;
    spD8 = 0;
    spD0 = 0;
    if (__glBeginMode != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError(0x500);
            return;
        case 0xDE1:
            var_a0 = 2;
block_6:
            var_a1 = (__GLcontext *)8;
            if (var_a0 != 8) {
                if (arg5 & ~1) {
                    goto block_8;
                }
                if ((arg1 < 0) || (arg1 >= 0xE)) {
                    var_a1 = (__GLcontext *)1;
                } else {
                    var_a1 = NULL;
                }
                if (var_a1 == NULL) {
                    goto block_15;
                }
                goto block_8;
            }
            if (arg1 != 0) {
                goto block_33;
            }
            var_a1 = (__GLcontext *)1;
            if (arg5 == 0) {
                if (arg3 == arg4) {
                    if ((arg3 == 0x80) || (var_a1 = (__GLcontext *)1, (arg3 == 0x100))) {
                        var_a1 = NULL;
                    }
                } else {
block_33:
                    var_a1 = (__GLcontext *)1;
                }
            }
            if (var_a1 == NULL) {
block_15:
                var_a1 = (__GLcontext *)1;
                if ((arg3 >= 0) && (arg3 < 0x2001) && (arg4 >= 0) && (arg4 < 0x2001)) {
                    var_a1 = NULL;
                }
                if (var_a1 == NULL) {
                    sp38 = arg1;
                    sp20 = arg3;
                    sp48 = (s64) __glCurrentContext;
                    sp18 = arg4;
                    sp30 = arg5;
                    sp40 = 0;
                    sp50 = arg2;
                    sp58 = 0;
                    sp60 = 0;
                    sp68 = var_a0;
                    temp_a1 = (var_a0 * 0xCC) + __glCurrentContext;
                    sp98 = (s64) (temp_a1 + 0x10000);
                    sp90 = (s64) temp_a1->unk8AF4;
                    if (temp_a1 != ((-1 << 0x10) | 0x75D0)) {
                        sp38 = arg1;
                        sp20 = arg3;
                        sp48 = (s64) __glCurrentContext;
                        sp18 = arg4;
                        sp30 = arg5;
                        sp40 = 0;
                        sp50 = arg2;
                        sp58 = 0;
                        sp60 = 0;
                        sp68 = var_a0;
                        if (sp90 == 0) {
                            spF0 = arg6;
                            spE8 = arg7;
                            mgrTM_RefreshDim(temp_a1 + 0x8A30, temp_a1);
                            sp90 = (s64) sp98->unk-750C;
                        }
                    }
                    sp28 = sp90;
                    mgrTM_set_externalformat(sp48, arg6, arg7, sp90);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        if (!(sp68 & 1)) {
                            sp48->unk91FC->unk1E4 = 0;
                        }
                        if ((sp20 == 0) || (sp18 == 0)) {
                            goto block_27;
                        }
                        __glSetError(sp48, (__GLcontext *)0x44);
                        sp88 = M2C_ERROR(/* Read from unset register $v0 */);
                        sp78 = M2C_ERROR(/* Read from unset register $v0 */);
                        bzero(M2C_ERROR(/* Read from unset register $v0 */), 0x44U);
                        sp88->unk28 = (s16) sp20;
                        sp88->unk2A = (s16) sp18;
                        temp_v0 = M2C_ERROR(/* Read from unset register $v0 */);
                        sp88->unk3F = (s8) sp38;
                        sp88->unk0 = (s32) sp28;
                        temp_v0->unk2C = 1;
                        temp_v0->unk2E = 1;
                        if (sp48->unk7D64 & 0x100000) {
                            if (sp48->unk82E4 == 0) {
                                if (sp48->unk8334 != 0) {
                                    sp18 = (sp18 - sp48->unk8330) + 1;
                                    sp20 = (sp20 - sp48->unk832C) + 1;
                                }
                            } else {
                                sp18 = (sp18 - sp48->unk82E0) + 1;
                                sp20 = (sp20 - sp48->unk82DC) + 1;
                            }
                        }
                        temp_v0->unkC = 0;
                        temp_v0->unk10 = 0;
                        temp_v0->unk14 = (s32) sp30;
                        temp_v1 = sp30 * 2;
                        temp_v0->unk18 = (s32) sp50;
                        temp_v0->unk4 = (s32) (sp20 - temp_v1);
                        temp_v0->unk8 = (s32) (sp18 - temp_v1);
                        if (sp38 == 0) {
                            sp28->unk78 = (f32) (0.25 / (second half of f64));
                        }
                        temp_a4 = sp28->unk4C;
                        if (temp_a4 != NULL) {
                            temp_a6 = temp_v0 + 4;
                            if ((s32) temp_a4->unk3F < sp38) {
                                sp70 = temp_a6;
                                memcpy(sp, temp_a4 + 4, 0x18U);
                                var_a7 = sp28->unk4C->unk3F;
                                var_a1_2 = sp70;
                                var_a4 = sp38 - var_a7;
                            } else {
                                memcpy(sp, (void *) temp_a6, 0x18U);
                                temp_a1_2 = sp28->unk4C;
                                var_a7 = temp_a1_2->unk3F;
                                var_a1_2 = (s64) (temp_a1_2 + 4);
                                var_a4 = var_a7 - sp38;
                            }
                            if (sp38 != var_a7) {
                                temp_t2 = var_a4 - 1;
                                if (((sp0 >> temp_t2) < 2) && ((sp4 >> temp_t2) < 2)) {
                                    sp40 = 1;
                                } else {
                                    goto block_51;
                                }
                            } else {
block_51:
                                temp_t0 = sp0 >> var_a4;
                                sp0 = temp_t0;
                                if (temp_t0 == 0) {
                                    sp0 = 1;
                                }
                                temp_t1 = sp4 >> var_a4;
                                sp4 = temp_t1;
                                if (temp_t1 == 0) {
                                    sp4 = 1;
                                }
                            }
                            if (sp40 != 0) {
                                goto block_54;
                            }
                            if (memcmp(sp, (void *) var_a1_2, 0x18) == 0) {
                                temp_a4_2 = (sp38 * 4) + sp28;
                                temp_a6_2 = temp_a4_2->unk14;
                                if (temp_a6_2 != NULL) {
                                    temp_a6_2->unk28 = (s16) sp78->unk28;
                                    temp_a4_2->unk14->unk2A = (s16) sp78->unk2A;
                                    sp80 = (s64) temp_a4_2;
                                    mgrTM_RemoveTex(sp48, sp78);
                                    temp_t0_2 = sp80->unk14;
                                    sp78 = (s64) temp_t0_2;
                                    if (temp_t0_2->unk40 != 0) {
                                        *arg_sp4 = 0;
                                        return;
                                    }
                                    temp_a1_3 = sp78->unk1C;
                                    if (temp_a1_3 != NULL) {
                                        if (temp_a1_3->unk59 == 0) {
                                            if (*arg_sp4 > 0) {
                                                mgrTM_MakeResident(sp48, temp_a1_3, 1, 1, 1);
                                            }
                                        }
                                    }
                                    goto block_97;
                                }
                                temp_a4_2->unk14 = (void *) sp78;
                                __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp78, sp78, sp78);
                                spB8 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    mgrTM_process_level(sp48, sp28, sp78, (s64) arg_sp4);
                                    spD0 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                }
block_97:
                                spC8 = spB8;
                                if (spB8 == 0) {
                                    spD8 = spD0;
                                }
                                goto block_57;
                            }
block_54:
                            mgrTM_RemoveTex(sp48, sp28);
                            ((sp38 * 4) + sp28)->unk14 = (s32) sp78;
                            __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp78, sp78, sp28);
                            sp60 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                mgrTM_set_internalformat(sp48, sp28, sp78);
                                spA0 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    mgrTM_process_level(sp48, sp28, sp78, (s64) arg_sp4);
                                    spA8 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                }
                            }
                            goto block_57;
                        }
                        ((sp38 * 4) + sp28)->unk14 = (s32) sp78;
                        __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp78, sp78);
                        sp58 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            mgrTM_set_internalformat(sp48, sp28, sp78);
                            spB0 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                mgrTM_process_level(sp48, sp28, sp78, (s64) arg_sp4);
                                spC0 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                            }
                        }
block_57:
                        if ((sp58 == 0) && (spB0 == 0) && (spC0 == 0) && (sp60 == 0) && (spA0 == 0) && (spA8 == 0) && (spC8 == 0) && (spD8 == 0)) {
                            if (sp28->unkB3 == 8) {
                                sp78->unk2C = (s16) (sp78->unk2C + 1);
                                __glMgrasWrite((__GLcontext *) sp48, sp48, 0x192, sp28->unk14->unk1C->unk4A, SYMBOL_LOCATION.unk114, 1, sp78);
                            }
                            var_v0 = -1;
                            if (sp30 == 0) {
                                var_v0 = 0;
                            }
                            sp78->unk24 = 0;
                            sp78->unk26 = 0;
                            sp78->unk20 = var_v0;
                            sp78->unk22 = var_v0;
                            sp78->unk3A = (s8) (sp38 & 1);
                            temp_a4_3 = sp28->unk4C;
                            if (temp_a4_3 != NULL) {
                                if (sp38 < (s32) temp_a4_3->unk3F) {
                                    goto block_70;
                                }
                            } else {
block_70:
                                sp28->unk4C = (void *) sp78;
                            }
                            ((void *) sp48)->unk91FC->unk1E8 = 0;
                            return;
                        }
block_27:
                        if (((void *) sp28)->unkB3 != 3) {
                            mgrTM_RemoveLev(sp48, sp28, (s8) sp38);
                        } else {
                            mgrTM_RemoveTex(sp48, sp28);
                        }
                        return;
                    }
                    /* Duplicate return node #4. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                /* Duplicate return node #9. Try simplifying control flow for better match */
                __glSetError(0x501, var_a1);
                return;
            }
block_8:
            __glSetError(0x501, var_a1);
            return;
        case 0x8064:
            var_a0 = 3;
            *arg_sp4 = -1;
            goto block_6;
        case 0x8095:
            var_a0 = 8;
            goto block_6;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_TexSubImage2DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 width, s32 height, enum GLenum format, enum GLenum type, void *pixels, s32 arg_sp4) {
    s64 sp0;

    sp0 = (s64) arg_sp4;
    if (arg_sp4 != 0) {
        __glMgrim_CopyTexSubImage2DEXT(target, level, xoffset, yoffset, width, height, format, type);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            return;
        }
        mgrTM_DoTexLoad(M2C_ERROR(/* Read from unset register $v0 */), (s64) level, (s64) format, (s64) type, sp0);
    }
}

void __glMgrIsCurrentGLXReadVideo(__GLcontext *gc, s64 arg1, ...) {
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    void *temp_v0;

    sp8 = (s64) gc;
    sp0 = arg1;
    temp_v0 = __glCurrentContext->imports.unk40(__glCurrentContext);
    if (temp_v0->unk0 == 3) {
        temp_a0 = temp_v0->unk1C->unk14;
        if (temp_a0 != 0x8051) {
            if (temp_a0 != 0x8058) {
                *sp0 = temp_a0;
            } else {
                *sp0 = 0x1908;
            }
        } else {
            *sp0 = 0x1907;
        }
        *sp8 = 0x1401;
    }
}

void __glMgrim_CopyTexSubImage2DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 x, s32 y, enum GLenum width, enum GLenum height) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    enum GLenum sp4;

    sp20 = (s64) height;
    sp18 = (s64) width;
    sp28 = (s64) y;
    sp30 = (s64) x;
    sp10 = (s64) yoffset;
    sp8 = (s64) xoffset;
    __glMgrIsCurrentGLXReadVideo(sp, sp, &sp4);
    sp38 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        __glMgrGetVisualInfo((__GLcontext *)0x1800, 0x1800, sp, &sp4);
    }
    __glMgrim_CopyTexSubImage2DEXT(target, level, (s32) sp8, (s32) sp10, (s32) sp18, (s32) sp20, sp4, sp0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (sp38 != 0) {
            M2C_ERROR(/* Read from unset register $v0 */)->unkC2 = 1;
        } else {
            M2C_ERROR(/* Read from unset register $v0 */)->unkC2 = 0;
        }
        mgrTM_DoCopyTex(M2C_ERROR(/* Read from unset register $v0 */), level, sp4, sp0, sp30, sp28);
    }
}

void mgrTM_TexSubImage2D_setup(s32 arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_v0;
    __GLcontext *var_t8;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t9_3;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_v1;
    s64 var_a4;
    s64 var_a5;
    s64 var_ra;
    void *temp_a1;
    void *temp_t9;
    void *temp_t9_2;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_a4 = arg4;
    var_a5 = arg5;
    temp_v0 = __glCurrentContext;
    temp_s0 = var_a1;
    if (__glBeginMode != 1) {
        if (arg0 != 0xDE1) {
            if (arg0 == 0x8095) {
                var_a1 = 8;
                if (temp_s0 != 0) {
                    __glSetError(0x501, (__GLcontext *)8);
                    return;
                }
                goto block_5;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(0x500);
            return;
        }
        if (temp_s0 >= 0) {
            var_a1 = 2;
            if (temp_s0 < 0xE) {
block_5:
                temp_t9 = (var_a1 * 0xCC) + temp_v0;
                var_t8 = temp_t9->unk8AF4;
                if (temp_t9 != ((-1 << 0x10) | 0x75D0)) {
                    sp28 = (s64) (temp_t9 + 0x10000);
                    sp48 = (s64) temp_t9;
                    if (var_t8 == NULL) {
                        sp30 = (s64) temp_v0;
                        sp8 = var_a4;
                        sp10 = var_a5;
                        sp18 = arg2;
                        sp20 = arg3;
                        sp60 = arg7;
                        sp58 = arg6;
                        mgrTM_RefreshDim(sp48 + 0x8A30, (void *)0x8A30);
                        var_ra = sp40;
                        var_t8 = sp28->unk-750C;
                    }
                }
                temp_t9_2 = ((temp_s0 * 4) + var_t8)->unk14;
                if (temp_t9_2 != NULL) {
                    if (temp_t9_2->unk40 != 0) {
                        return;
                    }
                    temp_s0_2 = temp_t9_2->unk14;
                    temp_t9_2->unk28 = (s16) var_a4;
                    temp_t9_2->unk2A = (s16) var_a5;
                    temp_t9_2->unk2E = 1;
                    temp_t9_2->unk2C = 1;
                    if ((s32) temp_v0->stencilBuffer.buf.resize & 0x100000) {
                        if (temp_v0->unk82E4 == 0) {
                            if (temp_v0->unk8334 != 0) {
                                var_a5 = (var_a5 - temp_v0->unk8330) + 1;
                                var_a4_2 = var_a4 - temp_v0->unk832C;
                                goto block_19;
                            }
                        } else {
                            var_a4_2 = var_a4 - temp_v0->unk82DC;
                            var_a5 = (var_a5 - temp_v0->unk82E0) + 1;
block_19:
                            var_a4 = var_a4_2 + 1;
                        }
                    }
                    temp_t2 = arg2 + var_a4;
                    if (var_a4 > 0) {
                        temp_t3 = -temp_s0_2;
                        if ((var_a5 > 0) && (arg2 >= temp_t3)) {
                            temp_t8 = temp_t9_2->unk4;
                            temp_t9_3 = temp_t8 + temp_s0_2;
                            if (temp_t9_3 >= temp_t2) {
                                if (arg3 < temp_t3) {
                                    /* Duplicate return node #39. Try simplifying control flow for better match */
                                    sp40 = var_ra;
                                    __glSetError(0x501, var_t8, (f32 *) arg2, arg3, (__GLcontext *) var_a4, var_a5, arg6, (s32) arg7);
                                    return;
                                }
                                if ((temp_t9_2->unk8 + temp_s0_2) >= (arg3 + var_a5)) {
                                    var_v1 = temp_s0_2 * 2;
                                    if ((!(temp_t2 & 0x1F) || (var_v1 = temp_s0_2 * 2, (temp_t2 == temp_t9_3))) && (((var_v1 + temp_t8) == var_a4) || (sp40 = var_ra, sp30 = (s64) temp_v0, sp8 = var_a4, sp10 = var_a5, sp18 = arg2, sp20 = arg3, sp50 = (s64) temp_t9_2, sp0 = (s64) var_t8, ((var_a4 < 0x20) == 0)))) {
                                        sp30 = (s64) temp_v0;
                                        sp8 = var_a4;
                                        sp10 = var_a5;
                                        sp50 = (s64) temp_t9_2;
                                        sp0 = (s64) var_t8;
                                        sp18 = arg2;
                                        sp20 = arg3;
                                        sp40 = var_ra;
                                        mgrTM_set_externalformat((s64) temp_v0, arg6, arg7, sp0, var_a4, var_a5, arg6, (s32) arg7);
                                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                            temp_t9_2->unk24 = 0;
                                            temp_t9_2->unk26 = 0;
                                            temp_a1 = temp_t9_2->unk1C;
                                            temp_t9_2->unk22 = (s16) sp20;
                                            temp_t9_2->unk20 = (s16) sp18;
                                            if (temp_a1->unk59 == 0) {
                                                temp_v0_2 = temp_s0_2 * 2;
                                                var_a4_3 = 0;
                                                if ((temp_t9_2->unk4 + temp_v0_2) == sp8) {
                                                    var_a4_3 = 0;
                                                    if ((temp_t9_2->unk8 + temp_v0_2) == sp10) {
                                                        var_a4_3 = 1;
                                                    }
                                                }
                                                mgrTM_MakeResident(sp30, temp_a1, 1, 1, var_a4_3);
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                    sp40 = var_ra;
                                    __glSetError(0x501, var_t8, (f32 *) arg2, arg3, (__GLcontext *) var_a4, var_a5, arg6, (s32) arg7);
                                    return;
                                }
                                /* Duplicate return node #39. Try simplifying control flow for better match */
                                sp40 = var_ra;
                                __glSetError(0x501, var_t8, (f32 *) arg2, arg3, (__GLcontext *) var_a4, var_a5, arg6, (s32) arg7);
                                return;
                            }
                        }
                    }
                    sp40 = var_ra;
                    __glSetError(0x501, var_t8, (f32 *) arg2, arg3, (__GLcontext *) var_a4, var_a5, arg6, (s32) arg7);
                    return;
                }
                sp40 = var_ra;
                __glSetError(0x502, var_t8, (f32 *) arg2, arg3, (__GLcontext *) var_a4, var_a5, arg6, (s32) arg7);
                return;
            }
        }
        __glSetError(0x501, (__GLcontext *) var_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_TexImage3DEXT(enum GLenum target, s32 level, enum GLenum internalformat, s32 width, s32 height, s32 depth, s32 border, enum GLenum format, enum GLenum type, void *pixels, s32 arg_sp4, s32 arg_spC) {
    s64 spD8;
    s64 spD0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
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
    s32 sp0;
    s16 temp_a3;
    s16 var_a0_5;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_v0_2;
    s64 temp_a6;
    s64 var_a0_2;
    s64 var_a0_4;
    s64 var_v0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_a4;
    void *temp_t0;

    var_a6 = border;
    spB0 = 0;
    spB8 = 0;
    sp98 = 0;
    spA8 = 0;
    spA0 = 0;
    sp90 = 0;
    if (__glBeginMode != 1) {
        sp0 = arg_spC != 0;
        if (target != GL_PROXY_TEXTURE_3D_EXT) {
            if (target != GL_TEXTURE_3D_EXT) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                __glSetError(0x500);
                return;
            }
            var_a0 = 4;
            goto block_5;
        }
        var_a0 = 5;
        sp0 = -1;
block_5:
        if ((level != 0) || (var_a6 != 0)) {
            /* Duplicate return node #8. Try simplifying control flow for better match */
            __glSetError(0x501, (__GLcontext *) var_a6);
            return;
        }
        if (width >= 0) {
            var_a6 = 1;
            if (width < 0x2001) {
                if (height >= 0) {
                    var_a6 = 1;
                    if (height < 0x2001) {
                        if ((depth < 0) || (depth >= 0x201)) {
                            goto block_16;
                        }
                        var_a6 = 0;
                    }
                } else {
                    goto block_16;
                }
            }
        } else {
block_16:
            var_a6 = 1;
        }
        if (var_a6 == 0) {
            sp20 = (s64) __glCurrentContext;
            sp38 = (s64) width;
            sp8 = (s64) level;
            sp30 = (s64) height;
            sp28 = (s64) depth;
            spD0 = 0;
            sp40 = (s64) format;
            sp48 = 0;
            sp58 = 0;
            sp60 = (s64) internalformat;
            sp68 = (s64) arg_spC;
            temp_t0 = (var_a0 * 0xCC) + __glCurrentContext;
            sp80 = (s64) temp_t0;
            sp78 = (s64) (temp_t0 + 0x10000);
            var_a6_2 = temp_t0->unk8AF4;
            if (temp_t0 != ((-1 << 0x10) | 0x75D0)) {
                sp20 = (s64) __glCurrentContext;
                sp38 = (s64) width;
                sp8 = (s64) level;
                sp30 = (s64) height;
                sp28 = (s64) depth;
                spD0 = 0;
                sp40 = (s64) format;
                sp48 = 0;
                sp58 = 0;
                sp60 = (s64) internalformat;
                sp68 = (s64) arg_spC;
                if (var_a6_2 == 0) {
                    mgrTM_RefreshDim(sp80 + 0x8A30, (void *)0x8A30, var_a6_2);
                    var_a6_2 = sp78->unk-750C;
                }
            }
            sp50 = (s64) var_a6_2;
            sp18 = (s64) arg_sp4;
            mgrTM_set_externalformat(sp20, sp40, (s64) arg_sp4, (s64) var_a6_2);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp20->unk91FC->unk1E4 = 0;
                if ((sp38 >= 2) && (sp30 != 0)) {
                    sp10 = sp20 + 0x10000;
                    if (sp28 != 0) {
                        mgrTM_RemoveLev(sp20, 0x44);
                        spD8 = M2C_ERROR(/* Read from unset register $v0 */);
                        sp88 = M2C_ERROR(/* Read from unset register $v0 */);
                        bzero(M2C_ERROR(/* Read from unset register $v0 */), 0x44U);
                        var_v0 = sp30;
                        spD8->unk0 = (s32) sp50;
                        spD8->unk2A = (s16) var_v0;
                        spD8->unk3F = (s8) sp8;
                        var_a0_2 = sp38;
                        spD8->unk2C = (s16) sp28;
                        spD8->unk2E = 1;
                        spD8->unk28 = (s16) var_a0_2;
                        if (sp20->unk7D64 & 0x100000) {
                            if (sp10->unk-7D1C != 0) {
                                var_a0_3 = var_a0_2 - sp10->unk-7D24;
                                var_v0 = (var_v0 - sp10->unk-7D20) + 1;
                                goto block_27;
                            }
                            if (sp10->unk-7CCC != 0) {
                                var_a0_3 = var_a0_2 - sp10->unk-7CD4;
                                var_v0 = (var_v0 - sp10->unk-7CD0) + 1;
block_27:
                                var_a0_2 = var_a0_3 + 1;
                            }
                        }
                        spD8->unk4 = (s32) var_a0_2;
                        spD8->unk8 = (s32) var_v0;
                        spD8->unk10 = 0;
                        spD8->unk14 = 0;
                        spD8->unk18 = (s32) sp60;
                        spD8->unkC = (s32) sp28;
                        temp_t2 = sp50->unk4C;
                        temp_a6 = (sp8 * 4) + sp50;
                        if (temp_t2 != 0) {
                            sp70 = temp_a6;
                            if (memcmp(temp_t2 + 4, sp88 + 4, 0x18) != 0) {
                                mgrTM_RemoveTex(sp20, sp50);
                                sp70->unk14 = (void *) sp88;
                                __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp88, sp88);
                                var_a0_4 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    spD0 = var_a0_4;
                                    mgrTM_set_internalformat(sp20, sp50, sp88);
                                    sp98 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                        mgrTM_process_level(sp20, sp50, sp88, (s64) sp);
                                        var_a0_4 = spD0;
                                        spB0 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                    }
                                }
                            } else {
                                temp_a4 = sp70->unk14;
                                temp_a3 = sp88->unk28;
                                temp_a4->unk28 = temp_a3;
                                temp_a2 = sp70->unk14;
                                temp_a2->unk2A = (s16) sp88->unk2A;
                                sp20->unkC(sp20, sp88, temp_a2, temp_a3, temp_a4);
                                temp_a1 = sp70->unk14;
                                sp88 = (s64) temp_a1;
                                temp_a1_2 = temp_a1->unk1C;
                                var_a0_4 = spD0;
                                if (temp_a1_2 != NULL) {
                                    if ((temp_a1_2->unk59 == 0) && (sp0 > 0)) {
                                        mgrTM_MakeResident(sp20, temp_a1_2, 1, 1, 1);
                                        var_a0_4 = spD0;
                                    }
                                }
                            }
                            sp58 = var_a0_4;
                            if (var_a0_4 == 0) {
                                spA8 = sp98;
                                if (sp98 == 0) {
                                    spB8 = spB0;
                                }
                            }
                        } else {
                            temp_a6->unk14 = (s32) spD8;
                            __glMgrim_TexSubImage4DSGIS((__GLcontext *) spD8, spD8);
                            sp48 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                mgrTM_set_internalformat(sp20, sp50, sp88);
                                sp90 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    mgrTM_process_level(sp20, sp50, sp88, (s64) sp);
                                    spA0 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                }
                            }
                        }
                        if ((sp48 == 0) && (sp90 == 0) && (spA0 == 0) && (sp58 == 0) && (spA8 == 0) && (spB8 == 0)) {
                            var_a0_5 = 0;
                            sp88->unk3A = 1;
                            sp88->unk20 = 0;
                            sp88->unk22 = 0;
                            sp88->unk24 = 0;
                            sp88->unk26 = 0;
                            var_v0_2 = (s32) sp88->unk36 >> 1;
                            sp88->unk34 = 0;
                            if (var_v0_2 != 0) {
                                do {
                                    var_v0_2 = var_v0_2 >> 1;
                                    var_a0_5 = (var_a0_5 + 1) & 0xFFFF;
                                    sp88->unk34 = var_a0_5;
                                } while (var_v0_2 != 0);
                            }
                            sp50->unk4C = (s32) sp88;
                            sp10->unk-6E04->unk1E8 = 0;
                            if (sp0 > 0) {
                                mgrTM_DoTexLoad(sp50, 0, sp40, sp18, sp68);
                            }
                            return;
                        }
                        /* Duplicate return node #46. Try simplifying control flow for better match */
                        mgrTM_RemoveLev(sp20, sp50, (s8) sp8);
                        return;
                    }
                }
                mgrTM_RemoveLev(sp20, sp50, (s8) sp8);
                return;
            }
            __glSetError(0x500);
            return;
        }
        __glSetError(0x501, (__GLcontext *) var_a6);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_TexSubImage3DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 zoffset, s32 width, s32 height, s32 depth, enum GLenum format, enum GLenum type, void *pixels, s32 arg_sp4, s32 arg_spC, s32 arg_sp14) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s2;
    s32 temp_a0;
    s32 var_a1;
    s32 var_a4;
    s32 var_a7;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s1;
    s64 var_ra;
    void *temp_a0_2;
    void *temp_a1;
    void *var_a5;
    s64 phi_a0;

    var_ra = saved_reg_ra;
    var_a1 = level;
    var_a7 = depth;
    temp_s2 = __glCurrentContext;
    var_s1 = height;
    var_s0 = width;
    if (__glBeginMode != 1) {
        if (arg_sp14 != 0) {
            if (target != GL_TEXTURE_3D_EXT) {
                __glSetError(0x500, (__GLcontext *)0x10000);
                return;
            }
            var_a5 = temp_s2 + 0x10000;
            temp_a0 = temp_s2->unk8E24;
            phi_a0 = (s64) temp_a0;
            if (temp_s2 != ((-1 << 0x10) | 0x72A0)) {
                if (temp_a0 == 0) {
                    sp18 = (s64) var_a7;
                    sp20 = (s64) xoffset;
                    sp28 = (s64) yoffset;
                    sp30 = (s64) zoffset;
                    sp78 = (s64) var_a1;
                    sp70 = (s64) var_a5;
                    sp38 = (s64) arg_sp14;
                    mgrTM_RefreshDim(temp_s2 + 0x8D60, var_a5);
                    var_a7 = (s32) sp18;
                    var_ra = sp60;
                    phi_a0 = (s64) var_a5->unk-71DC;
                }
            }
            if (var_a1 != 0) {
                sp60 = var_ra;
                __glSetError(0x501, (__GLcontext *) var_a1, (f32 *) xoffset, (s64) yoffset, (__GLcontext *) zoffset, (s64) var_a5, phi_a0, var_a7);
                return;
            }
            temp_a0_2 = phi_a0->unk14;
            if (temp_a0_2 != NULL) {
                temp_a0_2->unk2E = 1;
                temp_a0_2->unk2C = (s16) var_a7;
                temp_a0_2->unk2A = (s16) var_s1;
                temp_a0_2->unk28 = (s16) var_s0;
                if ((s32) temp_s2->stencilBuffer.buf.resize & 0x100000) {
                    if (var_a5->unk-7D1C == 0) {
                        if (var_a5->unk-7CCC != 0) {
                            var_s1 = (var_s1 - var_a5->unk-7CD0) + 1;
                            var_s0_2 = var_s0 - var_a5->unk-7CD4;
                            goto block_16;
                        }
                    } else {
                        var_s0_2 = var_s0 - var_a5->unk-7D24;
                        var_s1 = (var_s1 - var_a5->unk-7D20) + 1;
block_16:
                        var_s0 = var_s0_2 + 1;
                    }
                }
                if ((var_s0 > 0) && (var_s1 > 0) && (var_a7 > 0)) {
                    var_a1 = xoffset + var_s0;
                    if (xoffset >= 0) {
                        var_a5 = temp_a0_2->unk4;
                        if (((u32) var_a5 >= (u32) var_a1) && (yoffset >= 0) && (temp_a0_2->unk8 >= (yoffset + var_s1)) && (zoffset >= 0) && (temp_a0_2->unkC >= (zoffset + var_a7))) {
                            if ((!(var_a1 & 0x1F) || (((s32) var_a5 * 2) == var_a1)) && ((var_a5 == var_s0) || (sp60 = var_ra, sp18 = (s64) var_a7, sp20 = (s64) xoffset, sp68 = (s64) temp_a0_2, sp28 = (s64) yoffset, sp30 = (s64) zoffset, sp0 = phi_a0, sp38 = (s64) arg_sp14, ((var_s0 < 0x20) == 0)))) {
                                sp18 = (s64) var_a7;
                                sp30 = (s64) zoffset;
                                sp0 = phi_a0;
                                sp38 = (s64) arg_sp14;
                                sp28 = (s64) yoffset;
                                sp68 = (s64) temp_a0_2;
                                sp60 = var_ra;
                                sp20 = (s64) xoffset;
                                sp10 = (s64) arg_spC;
                                sp8 = (s64) arg_sp4;
                                mgrTM_set_externalformat((s64) temp_s2, (s64) arg_sp4, (s64) arg_spC, phi_a0, (s64) zoffset, (s64) var_a5, phi_a0, var_a7);
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    temp_a0_2->unk26 = 0;
                                    temp_a1 = temp_a0_2->unk1C;
                                    temp_a0_2->unk24 = (s16) sp30;
                                    temp_a0_2->unk22 = (s16) sp28;
                                    temp_a0_2->unk20 = (s16) sp20;
                                    if (temp_a1->unk59 == 0) {
                                        var_a4 = 0;
                                        if (temp_a0_2->unk4 == var_s0) {
                                            if (temp_a0_2->unk8 == var_s1) {
                                                var_a4 = 0;
                                                if (temp_a0_2->unkC == sp18) {
                                                    var_a4 = 1;
                                                }
                                            } else {
                                                var_a4 = 0;
                                            }
                                        }
                                        mgrTM_MakeResident((s64) temp_s2, temp_a1, 1, 1, var_a4);
                                    }
                                    mgrTM_DoTexLoad(sp0, 0, sp8, sp10, sp38);
                                    return;
                                }
                                return;
                            }
                            sp60 = var_ra;
                            __glSetError(0x501, (__GLcontext *) var_a1, (f32 *) xoffset, (s64) yoffset, (__GLcontext *) zoffset, (s64) var_a5, phi_a0, var_a7);
                            return;
                        }
                    }
                }
                sp60 = var_ra;
                __glSetError(0x501, (__GLcontext *) var_a1, (f32 *) xoffset, (s64) yoffset, (__GLcontext *) zoffset, (s64) var_a5, phi_a0, var_a7);
                return;
            }
            sp60 = var_ra;
            M2C_ERROR(/* Read from unset register $t9 */)(0x502, var_a1, xoffset, yoffset, zoffset, var_a5, phi_a0, var_a7);
            return;
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_CopyTexSubImage3DEXT(enum GLenum target, s32 level, s32 xoffset, s32 yoffset, s32 zoffset, s32 x, s32 y, s32 width, s32 height, s32 arg_sp4) {
    s64 sp78;
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
    s64 sp8;
    enum GLenum sp4;
    __GLcontext *temp_a0;
    __GLcontext *temp_s1;
    s32 var_a2;
    s32 var_a4;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_v0;
    s64 var_ra;
    u32 temp_a7;
    void (*temp_a0_2)(__GLcontext *, s8 *);
    void *temp_a1;
    void *var_a5;
    __GLcontext *phi_a0;

    var_ra = saved_reg_ra;
    var_v0 = xoffset;
    temp_s1 = __glCurrentContext;
    var_s0 = width;
    if (__glBeginMode != 1) {
        if (target != GL_TEXTURE_3D_EXT) {
            __glSetError(0x500);
            return;
        }
        var_a5 = temp_s1 + 0x10000;
        temp_a0 = temp_s1->unk8E24;
        phi_a0 = temp_a0;
        if (temp_s1 != ((-1 << 0x10) | 0x72A0)) {
            if (temp_a0 == NULL) {
                sp8 = (s64) var_v0;
                sp10 = (s64) level;
                sp18 = (s64) yoffset;
                sp78 = (s64) var_a5;
                sp38 = (s64) zoffset;
                sp40 = (s64) x;
                sp48 = (s64) y;
                mgrTM_RefreshDim(temp_s1 + 0x8D60, var_a5);
                var_v0 = (s32) sp8;
                var_ra = sp70;
                phi_a0 = var_a5->unk-71DC;
            }
        }
        if (level != 0) {
            sp70 = var_ra;
            __glSetError(0x501, (__GLcontext *) level);
            return;
        }
        temp_a0_2 = phi_a0->imports.fatal;
        if (temp_a0_2 != NULL) {
            temp_a0_2->unk28 = (s16) var_s0;
            var_a2 = arg_sp4;
            temp_a0_2->unk2E = 1;
            temp_a0_2->unk2C = 1;
            temp_a0_2->unk2A = (s16) var_a2;
            if ((s32) temp_s1->stencilBuffer.buf.resize & 0x100000) {
                if (var_a5->unk-7D1C == 0) {
                    if (var_a5->unk-7CCC != 0) {
                        var_a2 = (var_a2 - var_a5->unk-7CD0) + 1;
                        var_s0_2 = var_s0 - var_a5->unk-7CD4;
                        goto block_15;
                    }
                } else {
                    var_s0_2 = var_s0 - var_a5->unk-7D24;
                    var_a2 = (var_a2 - var_a5->unk-7D20) + 1;
block_15:
                    var_s0 = var_s0_2 + 1;
                }
            }
            if ((var_s0 > 0) && (var_a2 > 0) && (var_v0 >= 0)) {
                temp_a7 = temp_a0_2->unk4;
                var_a5 = var_v0 + var_s0;
                if ((temp_a7 >= (u32) var_a5) && (yoffset >= 0) && (temp_a0_2->unk8 >= (yoffset + var_a2))) {
                    if ((!((s32) var_a5 & 0x1F) || ((temp_a7 * 2) == var_a5)) && ((temp_a7 == var_s0) || (sp70 = var_ra, sp8 = (s64) var_v0, sp10 = (s64) level, sp18 = (s64) yoffset, sp20 = (s64) temp_a0_2, sp28 = (s64) var_a2, sp30 = (s64) phi_a0, sp38 = (s64) zoffset, sp40 = (s64) x, sp48 = (s64) y, ((var_s0 < 0x20) == 0)))) {
                        sp8 = (s64) var_v0;
                        sp18 = (s64) yoffset;
                        sp28 = (s64) var_a2;
                        sp30 = (s64) phi_a0;
                        sp38 = (s64) zoffset;
                        sp40 = (s64) x;
                        sp48 = (s64) y;
                        sp10 = (s64) level;
                        sp20 = (s64) temp_a0_2;
                        sp70 = var_ra;
                        __glMgrIsCurrentGLXReadVideo(sp, sp, &sp4, var_a2, yoffset, phi_a0, var_a5, y, temp_a7);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            sp68 = M2C_ERROR(/* Read from unset register $v0 */);
                            __glMgrGetVisualInfo((__GLcontext *)0x1800, 0x1800, sp, &sp4);
                        }
                        sp20->unk26 = 0;
                        sp20->unk24 = (s16) sp38;
                        sp20->unk22 = (s16) sp18;
                        temp_a1 = sp20->unk1C;
                        sp20->unk20 = (s16) sp8;
                        if (temp_a1->unk59 == 0) {
                            if ((sp20->unk4 == var_s0) && (sp20->unk8 == sp28)) {
                                if (sp20->unkC == 1) {
                                    sp68 = M2C_ERROR(/* Read from unset register $v0 */);
                                    var_a4 = 1;
                                } else {
                                    goto block_41;
                                }
                            } else {
block_41:
                                sp68 = M2C_ERROR(/* Read from unset register $v0 */);
                                var_a4 = 0;
                            }
                            mgrTM_MakeResident((s64) temp_s1, temp_a1, 1, 1, var_a4);
                        }
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            sp30->unkC2 = 1;
                        } else {
                            sp30->unkC2 = 0;
                        }
                        mgrTM_DoCopyTex(sp30, (s32) sp10, sp4, sp0, sp40, sp48);
                        return;
                    }
                    sp70 = var_ra;
                    __glSetError(0x501, (__GLcontext *) level, (f32 *) var_a2, (s64) yoffset, phi_a0, (s64) var_a5, (s64) y, (s32) temp_a7);
                    return;
                }
            }
            sp70 = var_ra;
            __glSetError(0x501, (__GLcontext *) level, (f32 *) var_a2, (s64) yoffset, phi_a0, (s64) var_a5, (s64) y);
            return;
        }
        sp70 = var_ra;
        M2C_ERROR(/* Read from unset register $t9 */)(0x502, level);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_TexImage4DSGIS(__GLcontext *gc, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC, __GLcontext *arg_sp14, ...) {
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
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
    s32 sp0;
    s16 var_v0_2;
    s32 temp_a3;
    s32 temp_t3;
    s32 var_a0_3;
    s32 var_a1_2;
    s64 temp_t2;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a1;
    s64 var_a5;
    s64 var_a7;
    s64 var_v0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a2;

    var_a7 = arg7;
    spA0 = 0;
    spA8 = 0;
    sp88 = 0;
    sp98 = 0;
    spB0 = 0;
    sp90 = 0;
    sp80 = 0;
    if (__glBeginMode != 1) {
        sp0 = arg_sp14 != NULL;
        if (gc != (__GLcontext *)0x8135) {
            if (gc != (__GLcontext *)0x8134) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                __glSetError(0x500);
                return;
            }
            var_a0 = 6;
            goto block_5;
        }
        var_a0 = 7;
        sp0 = -1;
block_5:
        if ((arg1 == 0) && (var_a7 == 0)) {
            if (arg3 >= 0) {
                var_a7 = 1;
                if (arg3 < 0x2001) {
                    var_a7 = 1;
                    if (arg4 >= 0) {
                        var_a7 = 1;
                        if (arg4 < 0x2001) {
                            if (arg5 >= 0) {
                                var_a7 = 1;
                                if (arg5 < 0x201) {
                                    if ((arg6 < 0) || (arg6 >= 0x101)) {
                                        goto block_15;
                                    }
                                    var_a7 = 0;
                                }
                            } else {
                                goto block_15;
                            }
                        }
                    }
                }
            } else {
block_15:
                var_a7 = 1;
            }
            sp8 = arg1;
            sp50 = arg3;
            sp48 = arg4;
            sp38 = (s64) __glCurrentContext;
            sp20 = arg5;
            sp18 = arg6;
            spD0 = 0;
            sp40 = 0;
            sp58 = arg2;
            sp60 = (s64) arg_sp14;
            spD8 = var_a0;
            if (var_a7 != 0) {
                /* Duplicate return node #17. Try simplifying control flow for better match */
                __glSetError(0x501, arg_sp14, (f32 *) var_a7);
                return;
            }
            sp30 = (s64) arg_spC;
            temp_a3 = ((spD8 * 0xCC) + sp38)->unk8AF4;
            sp28 = (s64) arg_sp4;
            sp68 = (s64) temp_a3;
            mgrTM_set_externalformat(sp38, (s64) arg_sp4, (s64) arg_spC, (s64) temp_a3, 0x10000, spD8, var_a7);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp38->unk91FC->unk1E4 = 0;
                if ((sp50 >= 2) && (sp48 != 0) && (sp20 != 0)) {
                    sp10 = sp38 + 0x10000;
                    if (sp18 != 0) {
                        mgrTM_RemoveLev(sp38, 0x44);
                        spC8 = M2C_ERROR(/* Read from unset register $v0 */);
                        sp70 = M2C_ERROR(/* Read from unset register $v0 */);
                        bzero(M2C_ERROR(/* Read from unset register $v0 */), 0x44U);
                        var_a1 = sp50;
                        var_v0 = sp48;
                        spC8->unk2E = (s16) sp18;
                        spC8->unk2C = (s16) sp20;
                        spC8->unk2A = (s16) var_v0;
                        spC8->unk28 = (s16) var_a1;
                        spC8->unk0 = (s32) sp68;
                        spC8->unk3F = (s8) sp8;
                        if (sp38->unk7D64 & 0x100000) {
                            if (sp10->unk-7D1C != 0) {
                                var_a1_2 = var_a1 - sp10->unk-7D24;
                                var_v0 = (var_v0 - sp10->unk-7D20) + 1;
                                goto block_27;
                            }
                            if (sp10->unk-7CCC != 0) {
                                var_a1_2 = var_a1 - sp10->unk-7CD4;
                                var_v0 = (var_v0 - sp10->unk-7CD0) + 1;
block_27:
                                var_a1 = var_a1_2 + 1;
                            }
                        }
                        spC8->unk14 = 0;
                        spC8->unk8 = (s32) var_v0;
                        spC8->unk4 = (s32) var_a1;
                        spC8->unkC = (s32) sp20;
                        spC8->unk10 = (s32) sp18;
                        spC8->unk18 = (s32) sp58;
                        temp_t3 = sp68->unk4C;
                        temp_t2 = (sp8 * 4) + sp68;
                        if (temp_t3 != 0) {
                            sp78 = temp_t2;
                            if (memcmp(temp_t3 + 4, sp70 + 4, 0x18) != 0) {
                                mgrTM_RemoveTex(sp38, sp68);
                                sp78->unk14 = (void *) sp70;
                                __glMgrim_TexSubImage4DSGIS((__GLcontext *) sp70, sp70);
                                var_a0_2 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    spD0 = var_a0_2;
                                    mgrTM_set_internalformat(sp38, sp68, sp70);
                                    sp88 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                        mgrTM_process_level(sp38, sp68, sp70, (s64) sp);
                                        var_a0_2 = spD0;
                                        spA0 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                    }
                                }
                            } else {
                                temp_a2 = sp78->unk14;
                                temp_a2->unk28 = (s16) sp70->unk28;
                                sp78->unk14->unk2A = (s16) sp70->unk2A;
                                sp38->unkC(sp38, sp70, temp_a2);
                                temp_a1 = sp78->unk14;
                                sp70 = (s64) temp_a1;
                                temp_a1_2 = temp_a1->unk1C;
                                var_a0_2 = spD0;
                                if ((temp_a1_2 != NULL) && (temp_a1_2->unk59 == 0) && (sp0 > 0)) {
                                    mgrTM_MakeResident(sp38, temp_a1_2, 1, 1, 1);
                                    var_a0_2 = spD0;
                                }
                            }
                            var_a5 = var_a0_2;
                            if (var_a0_2 == 0) {
                                sp98 = sp88;
                                if (sp88 == 0) {
                                    spA8 = spA0;
                                }
                            }
                        } else {
                            temp_t2->unk14 = (s32) spC8;
                            __glMgrim_TexSubImage4DSGIS((__GLcontext *) spC8, spC8, var_a1);
                            var_a5 = spB0;
                            sp40 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                mgrTM_set_internalformat(sp38, sp68, sp70);
                                var_a5 = spB0;
                                sp80 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    mgrTM_process_level(sp38, sp68, sp70, (s64) sp);
                                    var_a5 = spB0;
                                    sp90 = M2C_ERROR(/* Read from unset register $v0 */) == 0;
                                }
                            }
                        }
                        if ((sp40 == 0) && (sp80 == 0) && (sp90 == 0) && (var_a5 == 0) && (sp98 == 0) && (spA8 == 0)) {
                            var_v0_2 = 0;
                            sp70->unk3A = 1;
                            sp70->unk20 = 0;
                            sp70->unk22 = 0;
                            sp70->unk24 = 0;
                            sp70->unk26 = 0;
                            var_a0_3 = (s32) sp70->unk36 >> 1;
                            sp70->unk34 = 0;
                            if (var_a0_3 != 0) {
                                do {
                                    var_a0_3 = var_a0_3 >> 1;
                                    var_v0_2 = (var_v0_2 + 1) & 0xFFFF;
                                    sp70->unk34 = var_v0_2;
                                } while (var_a0_3 != 0);
                            }
                            sp68->unk4C = (s32) sp70;
                            sp10->unk-6E04->unk1E8 = 0;
                            if (sp0 > 0) {
                                mgrTM_DoTexLoad(sp68, 0, sp28, sp30, sp60, var_a5);
                            }
                            return;
                        }
                        /* Duplicate return node #45. Try simplifying control flow for better match */
                        mgrTM_RemoveLev(sp38, sp68, (s8) sp8);
                        return;
                    }
                }
                mgrTM_RemoveLev(sp38, sp68, (s8) sp8);
                return;
            }
            __glSetError(0x500);
            return;
        }
        __glSetError(0x501, arg_sp14, (f32 *) var_a7);
        return;
    }
    __glSetError(0x502, (__GLcontext *)0x16623C);
}

void __glMgrim_TexSubImage4DSGIS(__GLcontext *gc, s32 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s16 arg6, s16 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14, s32 arg_sp1C, s32 arg_sp24, ...) {
    s64 sp70;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s2;
    __GLcontext *var_a7;
    s16 var_s0;
    s16 var_s1;
    s32 temp_t1;
    s32 var_a4;
    s32 var_a6;
    s32 var_s0_2;
    void *temp_a0;
    void *temp_a1;
    void *temp_s3;

    temp_s2 = __glCurrentContext;
    var_s0 = arg6;
    var_s1 = arg7;
    if (__glBeginMode != 1) {
        if (gc != (__GLcontext *)0x8134) {
            __glSetError(0x500, (__GLcontext *)0x10000);
            return;
        }
        var_a7 = temp_s2 + 0x10000;
        temp_a0 = temp_s2->unk8FBC;
        if (arg1 != 0) {
            __glSetError(0x501, var_a7);
            return;
        }
        temp_s3 = temp_a0->unk14;
        if (temp_s3 != NULL) {
            temp_s3->unk2A = var_s1;
            temp_s3->unk28 = var_s0;
            temp_s3->unk2C = (s16) arg_sp4;
            temp_s3->unk2E = (s16) arg_spC;
            if ((s32) temp_s2->stencilBuffer.buf.resize & 0x100000) {
                if (temp_s2->unk82E4 == 0) {
                    if (temp_s2->unk8334 != 0) {
                        var_s1 = (var_s1 - temp_s2->unk8330) + 1;
                        var_s0_2 = var_s0 - temp_s2->unk832C;
                        goto block_11;
                    }
                } else {
                    var_s0_2 = var_s0 - temp_s2->unk82DC;
                    var_s1 = (var_s1 - temp_s2->unk82E0) + 1;
block_11:
                    var_s0 = var_s0_2 + 1;
                }
            }
            if ((var_s0 > 0) && (var_s1 > 0) && (arg_sp4 > 0) && (arg_spC > 0)) {
                var_a7 = arg2 + var_s0;
                if (arg2 >= 0) {
                    temp_t1 = temp_s3->unk4;
                    if ((temp_t1 >= (s32) var_a7) && (arg3 >= 0) && (temp_s3->unk8 >= (arg3 + var_s1)) && (arg4 >= 0) && (temp_s3->unkC >= (arg4 + arg_sp4)) && (arg5 >= 0) && (temp_s3->unk10 >= (arg5 + arg_spC))) {
                        if ((!((s32) var_a7 & 0x1F) || ((temp_t1 * 2) == var_a7)) && ((temp_t1 == var_s0) || (sp18 = arg2, sp20 = arg3, sp28 = arg4, sp30 = arg5, sp0 = (s64) temp_a0, sp38 = (s64) arg_sp4, sp40 = (s64) arg_spC, ((var_s0 < 0x20) == 0)))) {
                            sp28 = arg4;
                            sp30 = arg5;
                            sp40 = (s64) arg_spC;
                            sp0 = (s64) temp_a0;
                            sp20 = arg3;
                            sp18 = arg2;
                            sp38 = (s64) arg_sp4;
                            sp8 = (s64) arg_sp1C;
                            sp10 = (s64) arg_sp14;
                            mgrTM_set_externalformat((s64) temp_s2, (s64) arg_sp14, (s64) arg_sp1C, (s64) temp_a0, (s64) arg_spC, (s64) var_a7);
                            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                var_a6 = arg_sp24;
                                if (var_a6 == 0) {
                                    return;
                                }
                                temp_a1 = temp_s3->unk1C;
                                temp_s3->unk26 = (s16) sp30;
                                temp_s3->unk24 = (s16) sp28;
                                temp_s3->unk22 = (s16) sp20;
                                temp_s3->unk20 = (s16) sp18;
                                if (temp_a1->unk59 == 0) {
                                    if ((temp_s3->unk4 == var_s0) && (temp_s3->unk8 == var_s1) && (temp_s3->unkC == sp38) && (temp_s3->unk10 == sp40)) {
                                        sp70 = (s64) var_a6;
                                        var_a4 = 1;
                                    } else {
                                        sp70 = (s64) var_a6;
                                        var_a4 = 0;
                                    }
                                    mgrTM_MakeResident((s64) temp_s2, temp_a1, 1, 1, var_a4);
                                    var_a6 = (s32) sp70;
                                }
                                mgrTM_DoTexLoad(sp0, 0, sp10, sp8, (s64) var_a6);
                                return;
                            }
                            return;
                        }
                        __glSetError(0x501, (__GLcontext *) arg_sp4, (f32 *) arg_spC, (s64) var_a7);
                        return;
                    }
                }
            }
            __glSetError(0x501, (__GLcontext *) arg_sp4, (f32 *) arg_spC, (s64) var_a7);
            return;
        }
        __glSetError(0x502, (__GLcontext *) arg_sp4, (f32 *) var_a7);
        return;
    }
    __glSetError(0x502);
}

void mgrTM_compute_log_sizes(void *arg0) {
    __GLcontext *temp_a5;
    __GLcontext *temp_a5_2;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 var_a1;
    s32 var_at;
    s32 var_v0;
    s32 var_v1;
    s8 var_a2;
    s8 var_a2_2;
    s8 var_a2_3;
    s8 var_a2_4;
    u8 temp_a5_3;
    void *temp_a6;

    temp_a5 = arg0->unk4;
    var_a2 = 0;
    arg0->unk3B = 0;
    arg0->unk3C = 0;
    arg0->unk3D = 0;
    arg0->unk3E = 0;
    var_at = 1 << 0;
loop_1:
    if (var_at != temp_a5) {
        var_a2 += 1;
        var_at = 1 << var_a2;
        if (var_a2 == 0xF) {
            /* Duplicate return node #3. Try simplifying control flow for better match */
            __glSetError(0x501, (__GLcontext *) var_a2, (f32 *)1, 0xF, temp_a5);
            return;
        }
        goto loop_1;
    }
    if (var_a2 != 0xF) {
        temp_a6 = arg0->unk0;
        arg0->unk3B = var_a2;
        var_a2_2 = 0;
        if ((s32) temp_a6->unkB3 >= 2) {
            temp_a5_2 = arg0->unk8;
            var_v1 = 1 << 0;
loop_7:
            if (var_v1 != temp_a5_2) {
                var_a2_2 += 1;
                var_v1 = 1 << var_a2_2;
                if (var_a2_2 == 0xF) {
                    /* Duplicate return node #9. Try simplifying control flow for better match */
                    __glSetError(0x501, (__GLcontext *) var_a2_2, (f32 *)1, 0xF, temp_a5_2, (s64) temp_a6);
                    return;
                }
                goto loop_7;
            }
            if (var_a2_2 != 0xF) {
                arg0->unk3C = var_a2_2;
                temp_a5_3 = temp_a6->unkB3;
                var_a2_3 = 0;
                if (temp_a5_3 != 8) {
                    if ((s32) temp_a5_3 >= 4) {
                        temp_a5_4 = arg0->unkC;
                        var_v0 = 1 << 0;
loop_14:
                        if (var_v0 != temp_a5_4) {
                            var_a2_3 += 1;
                            var_v0 = 1 << var_a2_3;
                            if (var_a2_3 == 0xF) {
                                /* Duplicate return node #16. Try simplifying control flow for better match */
                                __glSetError(0x501, (__GLcontext *)8, (f32 *) var_a2_3, 1, (__GLcontext *)0xF, (s64) temp_a5_4, (s64) temp_a6);
                                return;
                            }
                            goto loop_14;
                        }
                        if (var_a2_3 != 0xF) {
                            arg0->unk3D = var_a2_3;
                            var_a2_4 = 0;
                            if ((s32) temp_a6->unkB3 >= 6) {
                                temp_a5_5 = arg0->unk10;
                                var_a1 = 1 << 0;
loop_24:
                                if (var_a1 != temp_a5_5) {
                                    var_a2_4 += 1;
                                    var_a1 = 1 << var_a2_4;
                                    if (var_a2_4 == 0xF) {
                                        /* Duplicate return node #26. Try simplifying control flow for better match */
                                        __glSetError(0x501, (__GLcontext *) var_a1, (f32 *) var_a2_4, 1, (__GLcontext *)0xF, (s64) temp_a5_5, (s64) temp_a6);
                                        return;
                                    }
                                    goto loop_24;
                                }
                                if (var_a2_4 != 0xF) {
                                    arg0->unk3E = var_a2_4;
                                } else {
                                    __glSetError(0x501, (__GLcontext *) var_a1, (f32 *) var_a2_4, 1, (__GLcontext *)0xF, (s64) temp_a5_5, (s64) temp_a6);
                                }
                            }
                        } else {
                            __glSetError(0x501, (__GLcontext *)8, (f32 *) var_a2_3, 1, (__GLcontext *)0xF, (s64) temp_a5_4, (s64) temp_a6);
                        }
                    }
                }
            } else {
                __glSetError(0x501, (__GLcontext *) var_a2_2, (f32 *)1, 0xF, temp_a5_2, (s64) temp_a6);
            }
        }
    } else {
        __glSetError(0x501, (__GLcontext *) var_a2, (f32 *)1, 0xF, temp_a5);
    }
}

void __glMgrim_DetailTexFuncSGIS(__GLcontext *gc, s32 arg1, void *arg2, ...) {
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s4;
    f32 temp_f3;
    f32 temp_f4;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_at;
    s32 temp_f0;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a4;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a6;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v1;
    s64 temp_a1;
    void *temp_a2;
    void *temp_t3;
    void *temp_t3_2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a0_2;
    void *var_a2;
    void *var_a2_2;
    void *var_a7;
    void *var_a7_2;
    void *var_a7_3;
    void *var_s0;
    void *var_s1;
    void *var_s3;
    void *var_v0_4;
    void *var_v0_5;
    void *var_v0_6;
    void *var_v0_7;

    temp_s4 = __glCurrentContext;
    var_s1 = arg2;
    if (__glBeginMode != 1) {
        if (gc == (__GLcontext *)0xDE1) {
            sp0 = (s64) (temp_s4 + 0x10000);
            var_s0 = temp_s4->unk91F4;
            var_s3 = temp_s4 + 0x9168;
            if (var_s0 != NULL) {
                sp8 = arg1 * 8;
loop_8:
                if ((var_s0->unk0 != arg1) || (memcmp(var_s0->unk4, var_s1, sp8) != 0)) {
                    var_s3 = var_s3->unk8C;
                    var_s0 = var_s3->unk8C;
                    if (var_s0 != NULL) {
                        goto loop_8;
                    }
                }
                if (var_s0 == NULL) {
                    goto block_16;
                }
            } else {
block_16:
                temp_v0 = temp_s4->imports.malloc(temp_s4, 0x90U);
                temp_v0->unk8C = (void *) var_s3->unk8C;
                var_s3->unk8C = temp_v0;
                var_s0 = temp_v0;
                temp_a1 = arg1 * 8;
                sp8 = temp_a1;
                temp_v0_2 = temp_s4->imports.malloc(temp_s4, (u32) temp_a1);
                var_s0->unk4 = temp_v0_2;
                memcpy(temp_v0_2, var_s1, (u32) sp8);
                var_s0->unk0 = arg1;
                memset(var_s0 + 8, 0xFF, 0x80U);
                var_a5 = 0;
                if (arg1 > 0) {
                    temp_a2 = &sub_0dbe0000 - 0x3F50;
loop_19:
                    temp_f4 = var_s1->unk0;
                    var_v0 = 0 | 0x10;
                    if (temp_f4 < *((var_v0 * 4) + temp_a2)) {
                        var_v0 ^= 0x10;
                    }
                    temp_a0 = 0x10 >> 1;
                    if (1 != 5) {
                        var_v0 |= temp_a0;
                        if (temp_f4 < *((var_v0 * 4) + temp_a2)) {
                            var_v0 ^= temp_a0;
                        }
                        temp_a0_2 = temp_a0 >> 1;
                        if (2 != 5) {
                            var_v0 |= temp_a0_2;
                            if (temp_f4 < *((var_v0 * 4) + temp_a2)) {
                                var_v0 ^= temp_a0_2;
                            }
                            temp_a0_3 = temp_a0_2 >> 1;
                            if (3 != 5) {
                                var_v0 |= temp_a0_3;
                                if (temp_f4 < *((var_v0 * 4) + temp_a2)) {
                                    var_v0 ^= temp_a0_3;
                                }
                                temp_a0_4 = temp_a0_3 >> 1;
                                if (4 != 5) {
                                    var_v0 |= temp_a0_4;
                                    if (temp_f4 < *((var_v0 * 4) + temp_a2)) {
                                        var_v0 ^= temp_a0_4;
                                    }
                                }
                            }
                        }
                    }
                    var_a5 += 1;
                    temp_f0 = (s32) ((f64) var_s1->unk4 * 31.999);
                    var_s1 += 8;
                    ((var_v0 * 4) + var_s0)->unk8 = (s32) (temp_f0 & 0x1F);
                    if (arg1 != var_a5) {
                        goto loop_19;
                    }
                }
                var_a5_2 = 0;
                var_t0 = 4;
                var_a2 = var_s0;
                var_a6 = 0;
                var_v0_2 = -1;
loop_39:
                temp_a0_5 = var_a2->unk8;
                temp_a1_2 = var_a5_2 - var_v0_2;
                temp_t3 = (var_v0_2 * 4) + var_s0;
                if (temp_a0_5 >= 0) {
                    if (var_v0_2 < 0) {
                        var_v0_3 = var_a5_2 & 3;
                        if (var_a5_2 > 0) {
                            var_a7 = var_s0;
                            var_a4 = var_a5_2 >> 2;
                            if (var_v0_3 != 0) {
                                do {
                                    var_a7 += 4;
                                    var_v0_3 -= 1;
                                    var_a7->unk4 = (s32) var_a2->unk8;
                                } while (var_v0_3 != 0);
                                var_a4 = var_a5_2 >> 2;
                            }
                            if (var_a4 != 0) {
                                var_v0_4 = var_a7;
                                do {
                                    var_v0_4->unk8 = (s32) var_a2->unk8;
                                    var_v0_4->unkC = (s32) var_a2->unk8;
                                    var_v0_4->unk10 = (s32) var_a2->unk8;
                                    var_v0_4 += 0x10;
                                    var_v0_4->unk4 = (s32) var_a2->unk8;
                                } while (var_v0_4 != (var_a6 + var_s0));
                            }
                        }
                    } else {
                        var_f4 = (f32) temp_t3->unk8;
                        var_f5 = ((f32) temp_a0_5 - var_f4) / (f32) temp_a1_2;
                        if (var_v0_2 < var_a5_2) {
                            var_a7_2 = temp_t3;
                            if (temp_a1_2 & 1) {
                                temp_v1 = (s32) ((f64) var_f4 + 0.5);
                                var_f4 += var_f5;
                                var_a7_2 += 4;
                                var_a7_2->unk4 = temp_v1;
                            }
                            if ((temp_a1_2 >> 1) != 0) {
                                var_v0_5 = var_a7_2;
                                var_f4_2 = var_f4;
                                do {
                                    temp_f3 = var_f4_2 + var_f5;
                                    var_f5 = second half of f64;
                                    var_v0_5 += 8;
                                    temp_a3 = (s32) ((f64) var_f4_2 + 0.5);
                                    var_f4_2 = (second half of f64) + (second half of f64);
                                    var_v0_5->unk0 = temp_a3;
                                    var_v0_5->unk4 = (s32) ((f64) temp_f3 + 0.5);
                                } while (var_v0_5 != (var_a6 + var_s0));
                            }
                        }
                    }
                    var_v0_2 = var_a5_2;
                } else if (var_a5_2 == 0x1F) {
                    temp_t9 = var_a5_2 - var_v0_2;
                    temp_a1_3 = var_v0_2 + 1;
                    if (var_a5_2 >= temp_a1_3) {
                        temp_t3_2 = (var_v0_2 * 4) + var_s0;
                        var_a0 = temp_t9 & 3;
                        var_a7_3 = (temp_a1_3 * 4) + var_s0;
                        if (var_a0 != 0) {
                            do {
                                var_a7_3 += 4;
                                var_a0 -= 1;
                                var_a7_3->unk4 = (s32) temp_t3_2->unk8;
                            } while (var_a0 != 0);
                        }
                        if ((temp_t9 >> 2) != 0) {
                            var_a0_2 = var_a7_3;
                            do {
                                var_a0_2->unk8 = (s32) temp_t3_2->unk8;
                                var_a0_2->unkC = (s32) temp_t3_2->unk8;
                                var_a0_2->unk10 = (s32) temp_t3_2->unk8;
                                var_a0_2 += 0x10;
                                var_a0_2->unk4 = (s32) temp_t3_2->unk8;
                            } while (var_a0_2 != (var_t0 + var_s0));
                        }
                    }
                }
                var_a2 += 4;
                var_a6 += 4;
                var_a5_2 += 1;
                var_t0 += 4;
                if (var_a5_2 != 0x20) {
                    goto loop_39;
                }
                var_a2_2 = var_s0 + 0x7C;
                var_a5_3 = 0x1F;
                var_s0->unk88 = 0;
                var_v1 = 0x1F * 2;
loop_63:
                var_s0->unk88 = var_v1;
                temp_at = var_a2_2->unk8;
                var_a2_2 -= 4;
                var_a5_3 -= 1;
                if (temp_at == 0) {
                    var_v1 = var_a5_3 * 2;
                    if (var_a5_3 != -1) {
                        goto loop_63;
                    }
                }
            }
            var_v0_6 = sp0->unk-7374;
            if ((temp_s4 != ((-1 << 0x10) | 0x7438)) && (var_v0_6 == NULL)) {
                mgrTM_RefreshDim(temp_s4 + 0x8BC8);
                var_v0_6 = sp0->unk-7374;
            }
            var_v0_6->unk50 = var_s0;
            __glMgrasWrite(temp_s4, temp_s4, 0x190, 0, SYMBOL_LOCATION.unk10C, 1);
            var_v0_7 = var_s0;
            do {
                *(s32 *)0x74080 = 0xEC10;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk10C;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk11C;
                *(s32 *)0x74080 = 0x194;
                *(s32 *)0x74080 = var_v0_7->unk8;
                *(s32 *)0x74080 = 0xEC10;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk10C;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk11C;
                *(s32 *)0x74080 = 0x194;
                temp_a3_2 = var_v0_7->unkC;
                var_v0_7 += 8;
                *(s32 *)0x74080 = temp_a3_2;
            } while (var_v0_7 != (var_s0 + 0x80));
            sp0->unk-6E08 = var_s0;
            return;
        }
        __glSetError(0x500, (__GLcontext *)0xDE1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PixelTexGenSGIX(__GLcontext *gc, ...) {
    s32 var_a1;
    s64 var_a3;

    if (__glBeginMode != 1) {
        var_a3 = 0x8187;
        var_a1 = (u32) gc > 0x8187U;
        if ((u32) gc >= 0x8187U) {
            var_a3 = 0x8189;
            if (var_a1 != 0) {
                if ((u32) gc >= 0x8189U) {
                    if ((u32) gc > 0x8189U) {
                        var_a1 = 0x9254;
                        if (gc == (__GLcontext *)0x818A) {
                            __glCurrentContext->unk9254 = 0;
                        } else {
                            goto block_14;
                        }
                    } else {
                        __glCurrentContext->unk9254 = 1;
                    }
                } else if (gc == (__GLcontext *)0x8188) {
                    __glCurrentContext->unk9250 = 0;
                } else {
                    goto block_14;
                }
            } else {
                __glCurrentContext->unk9250 = 1;
            }
        } else if ((u32) gc >= 0x1907U) {
            if ((u32) gc >= 0x1908U) {
                if (gc == (__GLcontext *)0x1908) {

                } else {
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a1, (f32 *) __glCurrentContext, var_a3, (__GLcontext *)1);
                }
            }
        } else if (gc != NULL) {
block_14:
            __glSetError(0x500, (__GLcontext *) var_a1, (f32 *) __glCurrentContext, var_a3, (__GLcontext *)1);
        }
    } else {
        __glSetError(0x502, __glCurrentContext, (f32 *)1);
    }
}

void FreeTextureInfo(__GLcontext *arg0, void *arg1) {
    void *temp_a0;
    void *temp_a0_2;

    if (arg1->unkB7 != 0) {
        temp_a0 = arg0->unk91FC;
        if (temp_a0->unk1E0 == arg1) {
            temp_a0->unk1E0 = 0;
        }
        temp_a0_2 = arg1->unkC;
        if (temp_a0_2 != NULL) {
            temp_a0_2->unkC = 0;
        }
    }
    __glMgrFreeDLTex(arg0, arg0, arg1->unk8);
    mgrTM_RemoveTex((s64) arg0, (s64) arg1);
    arg0->imports.free(arg0, arg1);
}

void __glMgr_NewTexObj(__GLcontext *gc, s32 arg1, s8 arg2, ...) {
    s32 temp_a2;
    void *temp_a3;
    void *temp_v0;

    temp_v0 = gc->imports.calloc(gc, 1U, 0xC4U);
    __glNamesNewData(gc, gc->unk91FC->unk49C, arg1, temp_v0);
    temp_v0->unkB3 = arg2;
    temp_v0->unk54 = arg1;
    temp_v0->unk8 = 0;
    temp_a2 = temp_v0->unk0 + 1;
    temp_a3 = &sub_0daa0000 - 0x6970;
    temp_v0->unk4 = temp_a3;
    temp_v0->unk0 = temp_a2;
    mgrTM_InitTexture(gc, temp_v0, temp_a2, temp_a3);
}

void __glMgrim_BindTextureEXT(enum GLenum target, u32 texture) {
    s64 sp38;
    s64 sp28;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s2;
    s32 temp_a3;
    s32 var_s0;
    s64 var_ra;
    s64 var_s1;
    void *temp_a1;
    void *temp_a4;
    void *temp_v0;
    void *var_a0;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_s2 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (target >= GL_TEXTURE_3D_EXT) {
            if (target > GL_TEXTURE_3D_EXT) {
                if (target >= 0x8134U) {
                    if (target > 0x8134U) {
                        if (target == 0x8135) {
                            var_s0 = 7;
                            goto block_11;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500);
                        return;
                    }
                    var_s0 = 6;
                    goto block_11;
                }
                if (target >= 0x8095U) {
                    if (target <= 0x8095U) {
                        var_s0 = 8;
                        goto block_11;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                if (target == GL_PROXY_TEXTURE_3D_EXT) {
                    var_s0 = 5;
                    goto block_11;
                }
                /* Duplicate return node #36. Try simplifying control flow for better match */
                __glSetError(0x500);
                return;
            }
            var_s0 = 4;
            goto block_11;
        }
        if (target >= GL_PROXY_TEXTURE_1D) {
            if (target <= GL_PROXY_TEXTURE_1D) {
                var_s0 = 1;
                goto block_11;
            }
            if (target == GL_PROXY_TEXTURE_2D) {
                var_s0 = 3;
                goto block_11;
            }
            /* Duplicate return node #36. Try simplifying control flow for better match */
            __glSetError(0x500);
            return;
        }
        if (target >= GL_TEXTURE_2D) {
            if (target < 0xDE2U) {
                var_s0 = 2;
                goto block_11;
            }
            /* Duplicate return node #36. Try simplifying control flow for better match */
            __glSetError(0x500);
            return;
        }
        if (target == GL_TEXTURE_1D) {
            var_s0 = 0;
block_11:
            var_a0 = (var_s0 * 0xCC) + temp_s2;
            sp8 = (s64) (var_a0 + 0x10000);
            var_v0 = var_a0->unk8AF4;
            if (var_a0 != ((-1 << 0x10) | 0x75D0)) {
                if (var_v0 == NULL) {
                    sp0 = (s64) var_a0;
                    mgrTM_RefreshDim(var_a0 + 0x8A30, (void *)0x8A30);
                    var_a0 = (void *) sp0;
                    var_ra = sp28;
                    var_v0 = sp8->unk-750C;
                }
            }
            temp_a3 = var_v0->unk54;
            temp_a4 = var_a0 + 0x8A30;
            if (temp_a3 != texture) {
                if (texture == 0) {
                    sp38 = (s64) temp_a4;
                    if (temp_a4 == NULL) {
                        goto block_18;
                    }
                    goto block_20;
                }
                sp28 = var_ra;
                __glNamesLockData(temp_s2, temp_s2->unk91FC->unk49C, texture, temp_a3, (s64) temp_a4);
                sp38 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
block_20:
                    var_s1 = sp38;
                    if (var_s1->unkB3 == var_s0) {
                        goto block_21;
                    }
                    sp28 = var_ra;
                    __glSetError(0x502, (__GLcontext *) sp8);
                    return;
                }
block_18:
                sp28 = var_ra;
                __glMgr_NewTexObj(temp_s2, temp_s2, texture, var_s0);
                var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
block_21:
                temp_a1 = sp8->unk-750C;
                if (temp_a1->unk54 != 0) {
                    sp28 = var_ra;
                    if (temp_a1->unk0 != 1) {
                        __glNamesUnlockData(temp_s2, temp_a1);
                    } else {
                        __glMgrim_PixelTexGenSGIX(temp_s2, temp_s2, temp_a1);
                    }
                    var_ra = sp28;
                }
                sp8->unk-750C = (void *) var_s1;
                if (var_s0 == 8) {
                    temp_v0 = var_s1->unk14;
                    if (temp_v0 != NULL) {
                        sp28 = var_ra;
                        __glMgrasWrite(temp_s2, temp_s2, 0x192, temp_v0->unk1C->unk4A, SYMBOL_LOCATION.unk114, 1);
                    }
                }
                if (!(var_s0 & 1)) {
                    temp_s2->unk91FC->unk1E4 = 0;
                }
                return;
            }
            return;
        }
        __glSetError(0x500);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PrioritizeTexturesEXT(s32 n, u32 *textures, f32 *priorities) {
    __GLcontext *temp_s3;
    u32 *var_s0;
    u32 temp_a2;
    void *temp_s4;

    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (n > 0) {
            var_s0 = textures;
loop_5:
            temp_a2 = *var_s0;
            var_s0 += 4;
            if (temp_a2 != 0) {
                __glNamesLockData(temp_s3, temp_s3->unk91FC->unk49C, temp_a2);
                temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    __glMgrim_DeleteTexturesEXT(M2C_ERROR(/* Read from unset register $a0 */), M2C_ERROR(/* Read from unset register $a1 */));
                    temp_s4->unk70 = (f32) M2C_ERROR(/* Read from unset register $f0 */);
                    if (temp_s4->unkB3 != 8) {
                        temp_s4->unk6C = (f32) M2C_ERROR(/* Read from unset register $f0 */);
                    }
                    __glNamesUnlockData(temp_s3, temp_s4);
                }
            }
            if (var_s0 != &textures[n]) {
                goto loop_5;
            }
        }
        return;
    }
    __glSetError(0x502);
}

u8 __glMgrim_AreTexturesResidentEXT(s32 n, u32 *textures, u8 *residences) {
    s64 sp30;
    __GLcontext *temp_s0;
    s32 var_s2;
    u32 *var_s1;
    u32 temp_a2;
    u8 *temp_s7;
    u8 temp_a1;
    u8 temp_a3;
    u8 var_a0;
    u8 var_a2;
    void *temp_s4;
    void *var_v0;

    temp_s0 = __glCurrentContext;
    sp30 = 1;
    if (__glBeginMode != 1) {
        var_s2 = 0;
        if (n > 0) {
            var_s1 = textures;
loop_6:
            temp_a2 = *var_s1;
            temp_s7 = &residences[var_s2];
            if (temp_a2 != 0) {
                __glNamesLockData(temp_s0, temp_s0->unk91FC->unk49C, temp_a2);
                temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    *temp_s7 = 0;
                    var_s2 += 1;
                    var_s1 += 4;
                    if (temp_s4->unkC0 != 0) {
                        goto block_9;
                    }
                    mgrTM_TexValidate(temp_s4);
                    if (temp_s4->unkC0 == 0) {
                        var_a2 = temp_s4->unkC1;
                        goto block_16;
                    }
block_9:
                    var_a0 = temp_s4->unkA4;
                    temp_a1 = temp_s4->unkA5;
                    var_a2 = 1;
                    temp_s4->unkC1 = 1U;
                    if ((s32) temp_a1 >= (s32) var_a0) {
                        var_v0 = temp_s4 + (var_a0 * 4);
loop_12:
                        temp_a3 = var_v0->unk14->unk1C->unk59;
                        var_v0 += 4;
                        var_a0 += 1;
                        if (temp_a3 == 0) {
                            var_a2 = 0;
                            temp_s4->unkC1 = 0U;
                        }
                        if ((s32) temp_a1 >= (s32) var_a0) {
                            goto loop_12;
                        }
                        if (var_a2 != 0) {
                            goto block_4;
                        }
                        goto block_17;
                    }
block_16:
                    if (var_a2 == 0) {
block_17:
                        sp30 = 0;
                    } else {
block_4:
                        *temp_s7 = 1;
                    }
                    __glNamesUnlockData(temp_s0, temp_s4, var_a2);
                    if (&textures[n] != var_s1) {
                        goto loop_6;
                    }
                    /* Duplicate return node #19. Try simplifying control flow for better match */
                    return (u8) sp30;
                }
                __glSetError(0x501);
                return 0U;
            }
            __glSetError(0x501);
            return 0U;
        }
        return (u8) sp30;
    }
    __glSetError(0x502, (__GLcontext *)1);
    return 0U;
}

u8 __glMgrim_IsTextureEXT(u32 texture) {
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (texture != 0) {
            __glNamesLockData(temp_s0, temp_s0->unk91FC->unk49C, texture);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                return 0U;
            }
            __glNamesUnlockData(temp_s0, M2C_ERROR(/* Read from unset register $v0 */));
            return 1U;
        }
        return 0U;
    }
    __glSetError(0x502);
    return 0U;
}

void __glMgrim_GenTexturesEXT(s32 n, u32 *textures) {
    if (__glBeginMode != 1) {
        if (n > 0) {
            if (textures == NULL) {
                return;
            }
            __glNamesGenNames(__glCurrentContext, __glCurrentContext->unk91FC->unk49C, n, textures);
            return;
        }
        if (n < 0) {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, n, textures);
        }
        return;
    }
    __glSetError(0x502, (__GLcontext *) n, (f32 *) textures);
}

void __glMgrim_DeleteTexturesEXT(s32 n, u32 *textures) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp0;
    __GLcontext *temp_s1;
    s32 temp_s6;
    s64 var_s4;
    u32 *var_s2;
    u32 var_s6;
    void *temp_at;
    void *var_s5;

    temp_s1 = __glCurrentContext;
    if (__glBeginMode != 1) {
        var_s6 = *textures;
        temp_at = temp_s1 + 0x10000;
        sp28 = (s64) temp_at;
        sp20 = (s64) temp_at;
        sp18 = (s64) var_s6;
        sp0 = (s64) temp_s1->unk91FC->unk49C;
        if (n != 0) {
            var_s2 = textures;
loop_8:
            var_s5 = temp_s1 + 0x8A30;
            var_s4 = sp28;
            if (var_s2->unk0 != 0) {
loop_13:
                if (var_s4 != 0x75D0) {
                    if (var_s4->unk-750C == NULL) {
                        M2C_ERROR(/* Read from unset register $t9 */)(var_s5);
                    }
                }
                if (var_s4->unk-750C->unk54 != (u8) var_s2->unk0) {
                    var_s4 += 0xCC;
                    var_s5 += 0xCC;
                    if ((temp_s1 + 0x1072C) != var_s4) {
                        goto loop_13;
                    }
                } else {
                    __glNamesUnlockData(temp_s1, var_s4->unk-750C, (u8) var_s2->unk0);
                    var_s4->unk-750C = var_s5;
                    if (sp20->unk-75D4 == var_s5) {
                        sp20->unk-6E04->unk1E4 = 0;
                    }
                }
                if (var_s2->unk0 != var_s6) {
                    __glNamesDeleteRange(temp_s1, sp0, sp18, var_s6 - sp18);
                    var_s6 = var_s2->unk0;
                    sp18 = (s64) var_s6;
                }
            } else {
                __glNamesDeleteRange(temp_s1, sp0, sp18, var_s6 - sp18);
                temp_s6 = var_s2->unk4;
                sp18 = (s64) temp_s6;
                var_s6 = temp_s6 - 1;
            }
            var_s2 += 4;
            var_s6 += 1;
            if (var_s2 != &textures[n]) {
                goto loop_8;
            }
        }
        __glNamesDeleteRange(temp_s1, sp0, sp18, var_s6 - sp18);
        return;
    }
    __glSetError(0x502);
}

void Clampf(f32 fparg0, f32 fparg1, f32 fparg2) {
    if (!(fparg0 < fparg1)) {
        if (fparg2 < fparg0) {

        }
    }
}
