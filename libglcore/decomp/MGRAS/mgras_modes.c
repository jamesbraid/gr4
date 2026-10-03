typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x3E4];                 /* maybe part of gcState[0xFA]? */
    /* 0x047C */ enum GLenum unk47C;                /* inferred */
    /* 0x0480 */ enum GLenum unk480;                /* inferred */
    /* 0x0484 */ char pad484[0x278];                /* maybe part of unk480[0x9F]? */
    /* 0x06FC */ enum GLenum unk6FC;                /* inferred */
    /* 0x0700 */ enum GLenum unk700;                /* inferred */
    /* 0x0704 */ char pad704[0x50];                 /* maybe part of unk700[0x15]? */
    /* 0x0754 */ ? unk754;                          /* inferred */
    /* 0x0754 */ char pad754[0x7C];
    /* 0x07D0 */ ? unk7D0;                          /* inferred */
    /* 0x07D0 */ char pad7D0[0x7C];
    /* 0x084C */ ? unk84C;                          /* inferred */
    /* 0x084C */ char pad84C[0x7C];
    /* 0x08C8 */ ? unk8C8;                          /* inferred */
    /* 0x08C8 */ char pad8C8[0x348];
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[7];                    /* maybe part of yInverted[8]? */
    /* 0x0CD4 */ f32 unkCD4;                        /* inferred */
    /* 0x0CD8 */ char padCD8[0x14];                 /* maybe part of unkCD4[6]? */
    /* 0x0CEC */ f32 unkCEC;                        /* inferred */
    /* 0x0CF0 */ char padCF0[0x209C];               /* maybe part of unkCEC[0x828]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x4724];              /* maybe part of procs[0x16]? */
    /* 0x7844 */ s32 unk7844;                       /* inferred */
    /* 0x7848 */ char pad7848[0x34C];               /* maybe part of unk7844[0xD4]? */
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

void __glMgrim_Flush(void) {
    __GLcontext *temp_a1;

    temp_a1 = __glCurrentContext->unk9D48;
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0x3600;
        temp_a1->unk70008 = 0x100000;
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glMgrim_Finish(void) {
    void *temp_s8;

    temp_s8 = __glCurrentContext->unk9D48;
    __glMgrim_GetBooleanv(GL_DITHER, sp);
    if (!(temp_s8->unk70000 & 2)) {
        do {

        } while (!(temp_s8->unk70000 & 2));
    }
}

void __glMgrim_StencilMask(u32 mask) {
    if (__glBeginMode != 1) {
        *(u32 *)0x74080 = 0x3A04;
        *(u32 *)0x74080 = mask;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ColorMask(u8 red, u8 green, u8 blue, u8 alpha) {
    enum GLenum var_a2;
    enum GLenum var_a3;
    s32 temp_a1;
    s32 var_a4;

    if (green != 0) {
        var_a4 = 2;
        if (blue != 0) {
            goto block_2;
        }
        goto block_7;
    }
    var_a4 = 0;
    if (blue == 0) {
block_7:
        var_a2 = GL_ZERO;
        if (alpha == 0) {
            goto block_8;
        }
        goto block_3;
    }
block_2:
    var_a2 = GL_TRIANGLES;
    if (alpha != 0) {
block_3:
        var_a3 = GL_QUAD_STRIP;
    } else {
block_8:
        var_a3 = GL_ZERO;
    }
    temp_a1 = var_a2 | var_a3;
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0x3B04;
        *(s32 *)0x74080 = (red != 0) | var_a4 | temp_a1;
        return;
    }
    __glSetError(0x502, (__GLcontext *) temp_a1, var_a2, var_a3, var_a4);
}

void __glMgrim_DepthMask(u8 flag) {
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0x3C04;
        *(s32 *)0x74080 = (s32) flag;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_IndexMask(u32 mask) {
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0x3D04;
        *(s32 *)0x74080 = __glCurrentContext->unk7844 & mask;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_AlphaFunc(enum GLenum func, f32 ref) {
    f32 var_f13;
    f32 var_f4;
    s32 temp_a1;

    var_f13 = ref;
    if (__glBeginMode != 1) {
        temp_a1 = func < GL_NEVER;
        if (temp_a1 == 0) {
            var_f4 = 0.0f;
            if (func < 0x208U) {
                if (!(var_f13 < 0.0f)) {
                    var_f4 = __glCurrentContext->unkCD4;
                    if (var_f4 < var_f13) {
                        goto block_5;
                    }
                } else {
block_5:
                    var_f13 = var_f4;
                }
                *(s32 *)0x74080 = 0x3E08;
                *(s32 *)0x74080 = func - 0x200;
                *(s32 *)0x74080 = (s32) ((s64) ((s64) (s32) ((f64) (var_f13 * (second half of f64)) + (second half of f64)) << 0x30) >> 0x30);
                return;
            }
        }
        __glSetError(0x500, (__GLcontext *) temp_a1, (enum GLenum) __glCurrentContext);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_BlendEquationEXT(enum GLenum mode) {
    if (__glBeginMode != 1) {
        if ((mode != GL_LOGIC_OP) && (mode != GL_FUNC_ADD_EXT) && (mode != GL_MIN_EXT) && (mode != GL_MAX_EXT) && (mode != GL_FUNC_SUBTRACT_EXT) && (mode != GL_FUNC_REVERSE_SUBTRACT_EXT)) {
            __glSetError(0x500, (__GLcontext *)0x800A);
            return;
        }
        *(enum GLenum *)0x74080 = 0x6004;
        *(enum GLenum *)0x74080 = mode;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_BlendFunc(enum GLenum sfactor, enum GLenum dfactor) {
    s32 var_a2;
    s32 var_a2_2;
    s32 var_v0;

    if (__glBeginMode != 1) {
        if (sfactor >= GL_DST_COLOR) {
            if (sfactor < GL_ONE_MINUS_DST_COLOR) {
                goto block_3;
            }
            if (sfactor >= GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                if (sfactor > GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                    var_a2 = sfactor > GL_ONE_MINUS_CONSTANT_ALPHA_EXT;
                    if (sfactor >= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                        if (var_a2 == 0) {
                            goto block_3;
                        }
                        /* Duplicate return node #43. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) var_a2);
                        return;
                    }
                    var_v0 = dfactor < GL_DST_ALPHA;
                    if (sfactor != GL_CONSTANT_ALPHA_EXT) {
                        /* Duplicate return node #43. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) var_a2);
                        return;
                    }
                    goto block_4;
                }
                goto block_3;
            }
            var_a2 = sfactor < 0x309U;
            if (sfactor >= GL_SRC_ALPHA_SATURATE) {
                if (var_a2 == 0) {
                    if (sfactor == GL_CONSTANT_COLOR_EXT) {
                        goto block_3;
                    }
                    /* Duplicate return node #43. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2);
                    return;
                }
                goto block_3;
            }
            var_v0 = dfactor < GL_DST_ALPHA;
            if (sfactor != GL_ONE_MINUS_DST_COLOR) {
                /* Duplicate return node #43. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2);
                return;
            }
            goto block_4;
        }
        if (sfactor >= GL_ONE_MINUS_SRC_ALPHA) {
            if (sfactor >= GL_DST_ALPHA) {
                var_a2 = sfactor < GL_DST_COLOR;
                if (sfactor >= GL_ONE_MINUS_DST_ALPHA) {
                    if (var_a2 != 0) {
                        goto block_3;
                    }
                    /* Duplicate return node #43. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2);
                    return;
                }
                if (sfactor == GL_DST_ALPHA) {
                    goto block_3;
                }
                /* Duplicate return node #43. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2);
                return;
            }
            goto block_3;
        }
        if (sfactor != GL_ZERO) {
            var_a2 = 0x302;
            if (sfactor >= GL_LINE_LOOP) {
                if (sfactor == GL_SRC_ALPHA) {
                    goto block_3;
                }
                __glSetError(0x500, (__GLcontext *) var_a2);
                return;
            }
        }
block_3:
        var_v0 = dfactor < GL_DST_ALPHA;
block_4:
        if (var_v0 == 0) {
            if (dfactor >= GL_ONE_MINUS_DST_ALPHA) {
                var_a2_2 = dfactor < GL_ONE_MINUS_CONSTANT_COLOR_EXT;
                if (var_a2_2 == 0) {
                    if (dfactor > GL_ONE_MINUS_CONSTANT_COLOR_EXT) {
                        if (dfactor >= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                            if (dfactor <= GL_ONE_MINUS_CONSTANT_ALPHA_EXT) {
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                *(enum GLenum *)0x74080 = 0x3F08;
                                *(enum GLenum *)0x74080 = sfactor;
                                *(enum GLenum *)0x74080 = dfactor;
                                return;
                            }
                            /* Duplicate return node #25. Try simplifying control flow for better match */
                            __glSetError(0x500, (__GLcontext *) var_a2_2);
                            return;
                        }
                        if (dfactor != GL_CONSTANT_ALPHA_EXT) {
                            goto block_24;
                        }
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        *(enum GLenum *)0x74080 = 0x3F08;
                        *(enum GLenum *)0x74080 = sfactor;
                        *(enum GLenum *)0x74080 = dfactor;
                        return;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    *(enum GLenum *)0x74080 = 0x3F08;
                    *(enum GLenum *)0x74080 = sfactor;
                    *(enum GLenum *)0x74080 = dfactor;
                    return;
                }
                if (dfactor >= GL_CONSTANT_COLOR_EXT) {
                    if (dfactor <= GL_CONSTANT_COLOR_EXT) {
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        *(enum GLenum *)0x74080 = 0x3F08;
                        *(enum GLenum *)0x74080 = sfactor;
                        *(enum GLenum *)0x74080 = dfactor;
                        return;
                    }
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2_2);
                    return;
                }
                var_a2_2 = 0x305;
                if (dfactor == GL_ONE_MINUS_DST_ALPHA) {
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    *(enum GLenum *)0x74080 = 0x3F08;
                    *(enum GLenum *)0x74080 = sfactor;
                    *(enum GLenum *)0x74080 = dfactor;
                    return;
                }
                /* Duplicate return node #25. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2_2);
                return;
            }
            /* Duplicate return node #15. Try simplifying control flow for better match */
            *(enum GLenum *)0x74080 = 0x3F08;
            *(enum GLenum *)0x74080 = sfactor;
            *(enum GLenum *)0x74080 = dfactor;
            return;
        }
        var_a2_2 = dfactor < GL_ONE_MINUS_SRC_COLOR;
        if (var_a2_2 == 0) {
            if (dfactor >= GL_SRC_ALPHA) {
                if (dfactor >= GL_ONE_MINUS_SRC_ALPHA) {
                    if (dfactor < GL_DST_ALPHA) {
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        *(enum GLenum *)0x74080 = 0x3F08;
                        *(enum GLenum *)0x74080 = sfactor;
                        *(enum GLenum *)0x74080 = dfactor;
                        return;
                    }
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) var_a2_2);
                    return;
                }
                if (dfactor == GL_SRC_ALPHA) {
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    *(enum GLenum *)0x74080 = 0x3F08;
                    *(enum GLenum *)0x74080 = sfactor;
                    *(enum GLenum *)0x74080 = dfactor;
                    return;
                }
                /* Duplicate return node #25. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) var_a2_2);
                return;
            }
            /* Duplicate return node #15. Try simplifying control flow for better match */
            *(enum GLenum *)0x74080 = 0x3F08;
            *(enum GLenum *)0x74080 = sfactor;
            *(enum GLenum *)0x74080 = dfactor;
            return;
        }
        if ((dfactor != GL_ZERO) && (dfactor >= GL_LINE_LOOP) && (dfactor != GL_SRC_COLOR)) {
block_24:
            __glSetError(0x500, (__GLcontext *) var_a2_2);
            return;
        }
        *(enum GLenum *)0x74080 = 0x3F08;
        *(enum GLenum *)0x74080 = sfactor;
        *(enum GLenum *)0x74080 = dfactor;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_LogicOp(enum GLenum opcode) {
    s32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = opcode < GL_CLEAR;
        if ((temp_a1 == 0) && (opcode < 0x1510U)) {
            *(s32 *)0x74080 = 0x4004;
            *(s32 *)0x74080 = opcode - 0x1500;
            return;
        }
        __glSetError(0x500, (__GLcontext *) temp_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_StencilFunc(enum GLenum func, s32 ref, u32 mask) {
    s32 temp_a3;
    s32 var_a1;

    var_a1 = ref;
    if (__glBeginMode != 1) {
        temp_a3 = func < GL_NEVER;
        if ((temp_a3 == 0) && (func < 0x208U)) {
            if (var_a1 < 0) {
                var_a1 = 0;
            }
            if (var_a1 >= 0x100) {
                var_a1 = 0xFF;
            }
            *(s32 *)0x74080 = 0x410C;
            *(s32 *)0x74080 = func - 0x200;
            *(s32 *)0x74080 = var_a1;
            *(s32 *)0x74080 = (s32) mask;
            return;
        }
        __glSetError(0x500, (__GLcontext *) temp_a3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_StencilOp(enum GLenum fail, enum GLenum zfail, enum GLenum zpass) {
    __GLcontext *var_a0;
    __GLcontext *var_a1;
    __GLcontext *var_a2;
    s32 var_a3;
    s32 var_v1;

    if (__glBeginMode != 1) {
        if (fail != GL_ZERO) {
            if ((fail < GL_KEEP) || (var_a3 = zfail < 0x1E04U, ((fail < 0x1E04U) == 0))) {
                var_a3 = zfail < 0x1E04U;
                if (fail != GL_INVERT) {
                    __glSetError(0x500, (__GLcontext *) var_a3);
                    return;
                }
            }
            goto block_7;
        }
        var_a3 = zfail < 0x1E04U;
block_7:
        if (zfail != GL_ZERO) {
            if ((zfail < GL_KEEP) || (var_v1 = zpass < 0x1E04U, (var_a3 == 0))) {
                var_v1 = zpass < 0x1E04U;
                if (zfail != GL_INVERT) {
                    __glSetError(0x500, (__GLcontext *) var_a3);
                    return;
                }
            }
            goto block_13;
        }
        var_v1 = zpass < 0x1E04U;
block_13:
        if ((zpass != GL_ZERO) && ((zpass < GL_KEEP) || (var_v1 == 0))) {
            if (zpass != GL_INVERT) {
                __glSetError(0x500, (__GLcontext *)0x150A, GL_KEEP);
                return;
            }
            goto block_19;
        }
block_19:
        switch (fail) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *)0x150A, GL_KEEP);
            return;
        case GL_INVERT:                             /* switch 1 */
            var_a0 = (__GLcontext *)5;
block_27:
            if (zfail != GL_KEEP) {
block_28:
                switch (zfail) {                    /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, (__GLcontext *)0x150A, GL_KEEP);
                    return;
                case GL_INVERT:                     /* switch 2 */
                    var_a1 = (__GLcontext *)5;
block_38:
                    if (zpass != GL_KEEP) {
                        goto block_39;
                    }
                    goto block_36;
                case GL_ZERO:                       /* switch 2 */
                    var_a1 = (__GLcontext *)1;
                    goto block_38;
                case GL_REPLACE:                    /* switch 2 */
                    var_a1 = (__GLcontext *)2;
                    goto block_38;
                case GL_INCR:                       /* switch 2 */
                    var_a1 = (__GLcontext *)3;
                    goto block_38;
                case GL_DECR:                       /* switch 2 */
                    var_a1 = (__GLcontext *)4;
                    goto block_38;
                }
            } else {
block_35:
                var_a1 = NULL;
                if (zpass == GL_KEEP) {
block_36:
                    var_a2 = NULL;
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    *(__GLcontext **)0x74080 = (__GLcontext *)0x420C;
                    *(__GLcontext **)0x74080 = var_a0;
                    *(__GLcontext **)0x74080 = var_a1;
                    *(__GLcontext **)0x74080 = var_a2;
                    return;
                }
block_39:
                switch (zpass) {                    /* switch 3; irregular */
                default:                            /* switch 3 */
                    __glSetError(0x500, var_a1, GL_INVERT, GL_KEEP);
                    return;
                case GL_INVERT:                     /* switch 3 */
                    var_a2 = (__GLcontext *)5;
                    *(__GLcontext **)0x74080 = (__GLcontext *)0x420C;
                    *(__GLcontext **)0x74080 = var_a0;
                    *(__GLcontext **)0x74080 = var_a1;
                    *(__GLcontext **)0x74080 = var_a2;
                    return;
                case GL_ZERO:                       /* switch 3 */
                    var_a2 = (__GLcontext *)1;
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    *(__GLcontext **)0x74080 = (__GLcontext *)0x420C;
                    *(__GLcontext **)0x74080 = var_a0;
                    *(__GLcontext **)0x74080 = var_a1;
                    *(__GLcontext **)0x74080 = var_a2;
                    return;
                case GL_REPLACE:                    /* switch 3 */
                    var_a2 = (__GLcontext *)2;
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    *(__GLcontext **)0x74080 = (__GLcontext *)0x420C;
                    *(__GLcontext **)0x74080 = var_a0;
                    *(__GLcontext **)0x74080 = var_a1;
                    *(__GLcontext **)0x74080 = var_a2;
                    return;
                case GL_INCR:                       /* switch 3 */
                    var_a2 = (__GLcontext *)3;
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    *(__GLcontext **)0x74080 = (__GLcontext *)0x420C;
                    *(__GLcontext **)0x74080 = var_a0;
                    *(__GLcontext **)0x74080 = var_a1;
                    *(__GLcontext **)0x74080 = var_a2;
                    return;
                case GL_DECR:                       /* switch 3 */
                    var_a2 = (__GLcontext *)4;
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    *(__GLcontext **)0x74080 = (__GLcontext *)0x420C;
                    *(__GLcontext **)0x74080 = var_a0;
                    *(__GLcontext **)0x74080 = var_a1;
                    *(__GLcontext **)0x74080 = var_a2;
                    return;
                }
            }
            break;
        case GL_KEEP:                               /* switch 1 */
            var_a0 = NULL;
            if (zfail == GL_KEEP) {
                goto block_35;
            }
            goto block_28;
        case GL_ZERO:                               /* switch 1 */
            var_a0 = (__GLcontext *)1;
            goto block_27;
        case GL_REPLACE:                            /* switch 1 */
            var_a0 = (__GLcontext *)2;
            goto block_27;
        case GL_INCR:                               /* switch 1 */
            var_a0 = (__GLcontext *)3;
            goto block_27;
        case GL_DECR:                               /* switch 1 */
            var_a0 = (__GLcontext *)4;
            goto block_27;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_DepthFunc(enum GLenum func) {
    s32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = func < GL_NEVER;
        if ((temp_a1 == 0) && (func < 0x208U)) {
            *(s32 *)0x74080 = 0x4304;
            *(s32 *)0x74080 = func - 0x200;
            return;
        }
        __glSetError(0x500, (__GLcontext *) temp_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_CullFace(enum GLenum mode) {
    s32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = mode < GL_FRONT;
        if ((temp_a1 == 0) && (mode < GL_AUX0)) {
            *(enum GLenum *)0x74080 = 0x7404;
            *(enum GLenum *)0x74080 = mode;
            return;
        }
        __glSetError(0x500, (__GLcontext *) temp_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PolygonMode(enum GLenum face, enum GLenum mode) {
    s32 var_a2;

    if (__glBeginMode != 1) {
        var_a2 = 0x404;
        if ((face == GL_FRONT) || (face == GL_BACK) || (face == GL_FRONT_AND_BACK)) {
            var_a2 = mode < 0x1B03U;
            if ((mode >= GL_POINT) && (var_a2 != 0)) {
                *(enum GLenum *)0x74080 = 0xA808;
                *(enum GLenum *)0x74080 = face;
                *(enum GLenum *)0x74080 = mode;
                return;
            }
        }
        __glSetError(0x500, (__GLcontext *) var_a2);
        return;
    }
    __glSetError(0x502);
}

void __glMgrasReadBuffer(enum GLenum src) {
    s32 temp_a5;
    s32 temp_a5_2;

    if (__glCurrentContext->readModes.stereoMode != 0) {
        switch (src) {                              /* irregular */
        default:
            *(enum GLenum *)0x74080 = 0x440C;
            *(enum GLenum *)0x74080 = GL_LINE_STRIP;
            *(enum GLenum *)0x74080 = GL_LINE_LOOP;
            *(enum GLenum *)0x74080 = src;
            return;
        case GL_AUX0:
            *(enum GLenum *)0x74080 = 0x440C;
            *(enum GLenum *)0x74080 = GL_ZERO;
            *(enum GLenum *)0x74080 = GL_ZERO;
            *(enum GLenum *)0x74080 = src;
            return;
        case GL_FRONT_LEFT:
            *(enum GLenum *)0x74080 = 0x440C;
            *(enum GLenum *)0x74080 = GL_LINE_LOOP;
            *(enum GLenum *)0x74080 = GL_LINE_STRIP;
            *(enum GLenum *)0x74080 = src;
            return;
        case GL_FRONT_RIGHT:
            *(enum GLenum *)0x74080 = 0x440C;
            *(enum GLenum *)0x74080 = GL_ZERO;
            *(enum GLenum *)0x74080 = GL_ONE;
            *(enum GLenum *)0x74080 = src;
            return;
        case GL_BACK_RIGHT:
            *(enum GLenum *)0x74080 = 0x440C;
            *(enum GLenum *)0x74080 = GL_ONE;
            *(enum GLenum *)0x74080 = GL_ZERO;
            *(enum GLenum *)0x74080 = src;
            return;
        }
    } else {
        if (__glCurrentContext->readModes.doubleBufferMode != 0) {
            if (src == GL_FRONT) {
                temp_a5 = __glCurrentContext->readModes.maxAuxBuffers;
                if (temp_a5 != 0) {
                    *(enum GLenum *)0x74080 = 0x440C;
                    *(enum GLenum *)0x74080 = GL_TRIANGLES;
                } else {
                    *(enum GLenum *)0x74080 = 0x440C;
                    *(enum GLenum *)0x74080 = GL_ZERO;
                }
                if (__glCurrentContext->readModes.greenBits >= 8) {
                    *(enum GLenum *)0x74080 = GL_LINE_LOOP;
                } else if (temp_a5 != 0) {
                    *(enum GLenum *)0x74080 = GL_TRIANGLE_STRIP;
                } else {
                    *(enum GLenum *)0x74080 = GL_ONE;
                }
                *(enum GLenum *)0x74080 = src;
                return;
            }
            if (src != GL_AUX0) {
                if (__glCurrentContext->readModes.greenBits >= 8) {
                    *(enum GLenum *)0x74080 = 0x440C;
                    *(enum GLenum *)0x74080 = GL_LINE_LOOP;
                    if (__glCurrentContext->readModes.maxAuxBuffers == 0) {
                        goto block_13;
                    }
                    goto block_17;
                }
                temp_a5_2 = __glCurrentContext->readModes.maxAuxBuffers;
                if (temp_a5_2 != 0) {
                    *(enum GLenum *)0x74080 = 0x440C;
                    *(enum GLenum *)0x74080 = GL_TRIANGLE_STRIP;
                } else {
                    *(enum GLenum *)0x74080 = 0x440C;
                    *(enum GLenum *)0x74080 = GL_ONE;
                }
                if (temp_a5_2 != 0) {
block_17:
                    *(enum GLenum *)0x74080 = GL_TRIANGLES;
                } else {
block_13:
                    *(enum GLenum *)0x74080 = GL_ZERO;
                }
                *(enum GLenum *)0x74080 = src;
                return;
            }
            *(enum GLenum *)0x74080 = 0x440C;
            *(enum GLenum *)0x74080 = GL_ZERO;
            *(enum GLenum *)0x74080 = GL_ZERO;
            *(enum GLenum *)0x74080 = src;
            return;
        }
        if (src != GL_AUX0) {
            if (__glCurrentContext->readModes.maxAuxBuffers != 0) {
                *(enum GLenum *)0x74080 = 0x440C;
                *(enum GLenum *)0x74080 = GL_TRIANGLES;
                *(enum GLenum *)0x74080 = GL_TRIANGLES;
            } else {
                *(enum GLenum *)0x74080 = 0x440C;
                *(enum GLenum *)0x74080 = GL_ZERO;
                *(enum GLenum *)0x74080 = GL_ZERO;
            }
            *(enum GLenum *)0x74080 = src;
            return;
        }
        *(enum GLenum *)0x74080 = 0x440C;
        *(enum GLenum *)0x74080 = GL_ZERO;
        *(enum GLenum *)0x74080 = GL_ZERO;
        *(enum GLenum *)0x74080 = src;
    }
}

void __glMgrasSetData(__GLcontext *gc, __GLcontext *arg1, ...) {
    *(__GLcontext **)0x74080 = (__GLcontext *)0xED08;
    *(__GLcontext **)0x74080 = gc;
    *(__GLcontext **)0x74080 = arg1;
}

void __glMgrim_ReadBuffer(enum GLenum src) {
    __GLcontext *temp_s0;
    enum GLenum var_a2;
    u32 temp_a0;
    u8 var_v1;
    void *var_at;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        var_v1 = 0x400;
        temp_a0 = src - 0x400;
        if (temp_s0->readModes.stereoMode != 0) {
            if (temp_a0 < 0xDU) {
                var_at = (void *)0x403;
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x2F10))); /* switch 1; unable to parse jump table */
            } else {
                /* Duplicate return node #4. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) src);
            }
        } else {
            var_v1 = temp_s0->readModes.doubleBufferMode;
            if (var_v1 != 0) {
                if (temp_a0 < 0xDU) {
                    var_at = src - 0x409;
                    switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x2ED8))); /* switch 2; unable to parse jump table */
                } else {
                    __glSetError(0x500, (__GLcontext *) src);
                }
            } else {
                var_at = &sub_0dbf0000 - 0x2EA0;
                if (temp_a0 < 0xDU) {
                    switch (*((temp_a0 * 4) + var_at)) { /* switch 3; unable to parse jump table */
                    case 8:                         /* switch 3 */
                    case 8:                         /* switch 2 */
                    case 8:                         /* switch 1 */
                        __glSetError(0x500, (__GLcontext *) src);
                        return;
                    case 0:                         /* switch 3 */
                    case 4:                         /* switch 3 */
                    case 6:                         /* switch 3 */
                    case 0:                         /* switch 2 */
                    case 4:                         /* switch 2 */
                    case 6:                         /* switch 2 */
                    case 0:                         /* switch 1 */
                    case 4:                         /* switch 1 */
                    case 6:                         /* switch 1 */
                        temp_s0->unk47C = (enum GLenum) var_v1;
                        temp_s0->unk480 = src;
                        __glMgrasSetData(SYMBOL_LOCATION.unk70, SYMBOL_LOCATION.unk70, src);
                        __glMgrasReadBuffer(temp_s0->unk47C);
                        return;
                    case 2:                         /* switch 3 */
                    case 5:                         /* switch 3 */
                    case 2:                         /* switch 2 */
                    case 5:                         /* switch 2 */
                    case 2:                         /* switch 1 */
                    case 5:                         /* switch 1 */
                        var_a2 = GL_BACK_LEFT;
block_10:
                        temp_s0->unk47C = var_a2;
                        /* Duplicate return node #11. Try simplifying control flow for better match */
                        temp_s0->unk480 = src;
                        __glMgrasSetData(SYMBOL_LOCATION.unk70, SYMBOL_LOCATION.unk70, src);
                        __glMgrasReadBuffer(temp_s0->unk47C);
                        return;
                    case 1:                         /* switch 3 */
                    case 7:                         /* switch 3 */
                    case 1:                         /* switch 2 */
                    case 7:                         /* switch 2 */
                    case 1:                         /* switch 1 */
                    case 7:                         /* switch 1 */
                        var_a2 = GL_FRONT_RIGHT;
                        goto block_10;
                    case 3:                         /* switch 3 */
                    case 3:                         /* switch 2 */
                    case 3:                         /* switch 1 */
                        temp_s0->unk47C = (enum GLenum) var_at;
                        /* Duplicate return node #11. Try simplifying control flow for better match */
                        temp_s0->unk480 = src;
                        __glMgrasSetData(SYMBOL_LOCATION.unk70, SYMBOL_LOCATION.unk70, src);
                        __glMgrasReadBuffer(temp_s0->unk47C);
                        return;
                    case 9:                         /* switch 3 */
                    case 10:                        /* switch 3 */
                    case 11:                        /* switch 3 */
                    case 12:                        /* switch 3 */
                    case 9:                         /* switch 2 */
                    case 10:                        /* switch 2 */
                    case 11:                        /* switch 2 */
                    case 12:                        /* switch 2 */
                    case 9:                         /* switch 1 */
                    case 10:                        /* switch 1 */
                    case 11:                        /* switch 1 */
                    case 12:                        /* switch 1 */
                        if ((src - 0x409) < temp_s0->readModes.numAuxBuffers) {
                            temp_s0->unk47C = src;
                            /* Duplicate return node #11. Try simplifying control flow for better match */
                            temp_s0->unk480 = src;
                            __glMgrasSetData(SYMBOL_LOCATION.unk70, SYMBOL_LOCATION.unk70, src);
                            __glMgrasReadBuffer(temp_s0->unk47C);
                            return;
                        }
                        M2C_ERROR(/* Read from unset register $t9 */)(0x502, src);
                        return;
                    }
                } else {
                    __glSetError(0x500, (__GLcontext *) src);
                }
            }
        }
    } else {
        __glSetError(0x502, (__GLcontext *) src);
    }
}

void __glMgrasDrawBuffer(enum GLenum buf) {
    s32 temp_a0;
    u32 temp_a4;

    if (__glCurrentContext->modes.stereoMode != 0) {
        temp_a4 = buf - 0x400;
        if (temp_a4 < 0xAU) {
            switch (*((temp_a4 * 4) + (&sub_0dbf0000 - 0x2E68))) { /* unable to parse jump table */
            case 0:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 4;
                *(s32 *)0x74080 = 8;
                *(s32 *)0x74080 = 0;
                return;
            case 1:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 1;
                *(s32 *)0x74080 = 2;
                *(s32 *)0x74080 = 0;
                return;
            case 2:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 8;
                *(s32 *)0x74080 = 4;
                *(s32 *)0x74080 = 0;
                return;
            case 3:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 2;
                *(s32 *)0x74080 = 1;
                *(s32 *)0x74080 = 0;
                return;
            case 4:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 5;
                *(s32 *)0x74080 = 0xA;
                *(s32 *)0x74080 = 1;
                return;
            case 5:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 0xA;
                *(s32 *)0x74080 = 5;
                *(s32 *)0x74080 = 1;
                return;
            case 6:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 0xC;
                *(s32 *)0x74080 = 0xC;
                *(s32 *)0x74080 = 1;
                return;
            case 7:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 3;
                *(s32 *)0x74080 = 3;
                *(s32 *)0x74080 = 1;
                return;
            case 8:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 0xF;
                *(s32 *)0x74080 = 0xF;
                *(s32 *)0x74080 = 3;
                return;
            case 9:
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 1;
                *(s32 *)0x74080 = 1;
                *(s32 *)0x74080 = 0;
                return;
            }
        } else {
            *(s32 *)0x74080 = 0x490C;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
            *(s32 *)0x74080 = 0;
        }
    } else {
        if (__glCurrentContext->modes.doubleBufferMode != 0) {
            if (buf != GL_FRONT) {
                if (buf != GL_BACK) {
                    if (buf == GL_FRONT_AND_BACK) {
                        if (__glCurrentContext->modes.greenBits < 8) {
                            if (__glCurrentContext->modes.maxAuxBuffers != 0) {
                                *(s32 *)0x74080 = 0x490C;
                                *(s32 *)0x74080 = 0x43;
                                *(s32 *)0x74080 = 0x43;
                            } else {
                                *(s32 *)0x74080 = 0x490C;
                                *(s32 *)0x74080 = 3;
                                *(s32 *)0x74080 = 3;
                            }
                        } else {
                            *(s32 *)0x74080 = 0x490C;
                            *(s32 *)0x74080 = 5;
                            *(s32 *)0x74080 = 5;
                        }
                        *(s32 *)0x74080 = 1;
                        return;
                    }
                    if (buf != GL_AUX0) {
                        *(s32 *)0x74080 = 0x490C;
                        *(s32 *)0x74080 = 0;
                        *(s32 *)0x74080 = 0;
                        *(s32 *)0x74080 = 0;
                        return;
                    }
                    *(s32 *)0x74080 = 0x490C;
                    *(s32 *)0x74080 = 1;
                    *(s32 *)0x74080 = 1;
                    *(s32 *)0x74080 = 0;
                    return;
                }
                if (__glCurrentContext->modes.greenBits < 8) {
                    if (__glCurrentContext->modes.maxAuxBuffers != 0) {
                        *(s32 *)0x74080 = 0x490C;
                        *(s32 *)0x74080 = 0x48;
                    } else {
                        *(s32 *)0x74080 = 0x490C;
                        *(s32 *)0x74080 = 2;
                    }
                } else {
                    *(s32 *)0x74080 = 0x490C;
                    *(s32 *)0x74080 = 4;
                }
                if (__glCurrentContext->modes.maxAuxBuffers != 0) {
                    *(s32 *)0x74080 = 0x48;
                    *(s32 *)0x74080 = 1;
                    return;
                }
                *(s32 *)0x74080 = 1;
                *(s32 *)0x74080 = 0;
                return;
            }
            temp_a0 = __glCurrentContext->modes.maxAuxBuffers;
            if (temp_a0 != 0) {
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 0x48;
            } else {
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 1;
            }
            if (__glCurrentContext->modes.greenBits < 8) {
                if (temp_a0 != 0) {
                    *(s32 *)0x74080 = 0x48;
                    *(s32 *)0x74080 = 1;
                    return;
                }
                *(s32 *)0x74080 = 2;
                *(s32 *)0x74080 = 0;
                return;
            }
            *(s32 *)0x74080 = 4;
            *(s32 *)0x74080 = 0;
            return;
        }
        if (buf != GL_FRONT) {
            if (buf != GL_AUX0) {
                *(s32 *)0x74080 = 0x490C;
                *(s32 *)0x74080 = 0;
                *(s32 *)0x74080 = 0;
                *(s32 *)0x74080 = 0;
                return;
            }
            *(s32 *)0x74080 = 0x490C;
            *(s32 *)0x74080 = 1;
            *(s32 *)0x74080 = 1;
            *(s32 *)0x74080 = 0;
            return;
        }
        if (__glCurrentContext->modes.maxAuxBuffers != 0) {
            *(s32 *)0x74080 = 0x490C;
            *(s32 *)0x74080 = 0x48;
            *(s32 *)0x74080 = 0x48;
            *(s32 *)0x74080 = 1;
            return;
        }
        *(s32 *)0x74080 = 0x490C;
        *(s32 *)0x74080 = 1;
        *(s32 *)0x74080 = 1;
        *(s32 *)0x74080 = 0;
    }
}

void __glMgrim_DrawBuffer(enum GLenum buf) {
    __GLcontext *temp_s0;
    enum GLenum var_a2;
    s32 temp_a0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a0 = buf >= GL_LEFT;
        if (temp_s0->modes.stereoMode != 0) {
            var_a2 = buf < GL_FRONT_LEFT;
            if (temp_a0 != 0) {
                if (buf >= GL_RIGHT) {
                    if (buf >= GL_AUX1) {
                        if (buf < GL_AUX2) {
                            goto block_6;
                        }
                        if (buf >= GL_AUX3) {
                            if (buf < 0x40DU) {
                                goto block_6;
                            }
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            __glSetError(0x500, (__GLcontext *) buf, var_a2);
                            return;
                        }
                        var_a2 = GL_AUX2;
                        if (buf == GL_AUX2) {
                            goto block_6;
                        }
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    var_a2 = buf < GL_FRONT_AND_BACK;
                    if (var_a2 == GL_ZERO) {
                        if (buf >= GL_AUX0) {
                            if (buf != GL_AUX0) {
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                __glSetError(0x500, (__GLcontext *) buf, var_a2);
                                return;
                            }
block_6:
                            var_a2 = (buf - 0x409) < temp_s0->modes.numAuxBuffers;
                            if (var_a2 != GL_ZERO) {
                                goto block_10;
                            }
                            __glSetError(0x502, (__GLcontext *) buf, var_a2);
                            return;
                        }
                        goto block_9;
                    }
                    if (buf == GL_RIGHT) {
                        goto block_9;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) buf, var_a2);
                    return;
                }
                goto block_9;
            }
            if (buf >= GL_BACK_LEFT) {
                if (buf >= GL_BACK_RIGHT) {
                    var_a2 = buf < GL_BACK;
                    if (buf >= GL_FRONT) {
                        if (var_a2 == GL_ZERO) {
                            if (buf == GL_BACK) {
                                goto block_9;
                            }
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            __glSetError(0x500, (__GLcontext *) buf, var_a2);
                            return;
                        }
                        goto block_9;
                    }
                    if (buf == GL_BACK_RIGHT) {
                        goto block_9;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) buf, var_a2);
                    return;
                }
                goto block_9;
            }
            if (var_a2 == GL_ZERO) {
                if (buf >= GL_FRONT_RIGHT) {
                    if (buf == GL_FRONT_RIGHT) {
                        goto block_9;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) buf, var_a2);
                    return;
                }
                goto block_9;
            }
            if (buf == GL_ZERO) {
block_9:
                goto block_10;
            }
            __glSetError(0x500, (__GLcontext *) buf, var_a2);
            return;
        }
        var_a2 = buf < GL_RIGHT;
        if (temp_s0->modes.doubleBufferMode != 0) {
            if (temp_a0 == 0) {
                if (buf >= GL_BACK_LEFT) {
                    if (buf >= GL_BACK_RIGHT) {
                        var_a2 = buf < GL_BACK;
                        if (buf >= GL_FRONT) {
                            if (var_a2 == GL_ZERO) {
                                if (buf == GL_BACK) {
                                    goto block_45;
                                }
                                /* Duplicate return node #65. Try simplifying control flow for better match */
                                __glSetError(0x500, (__GLcontext *) buf, var_a2);
                                return;
                            }
                            goto block_45;
                        }
                        var_a2 = GL_BACK_RIGHT;
                        if (buf == GL_BACK_RIGHT) {
                            /* Duplicate return node #60. Try simplifying control flow for better match */
                            __glSetError(0x502, (__GLcontext *) buf, var_a2);
                            return;
                        }
                        /* Duplicate return node #65. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    var_a2 = GL_BACK;
                    temp_s0->unk6FC = GL_BACK;
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    temp_s0->unk700 = buf;
                    __glMgrasSetData(SYMBOL_LOCATION.unk260, SYMBOL_LOCATION.unk260, buf, var_a2);
                    __glMgrasDrawBuffer(temp_s0->unk6FC);
                    return;
                }
                var_a2 = buf < GL_FRONT_RIGHT;
                if (buf >= GL_FRONT_LEFT) {
                    if (var_a2 == GL_ZERO) {
                        if (buf == GL_FRONT_RIGHT) {
                            /* Duplicate return node #60. Try simplifying control flow for better match */
                            __glSetError(0x502, (__GLcontext *) buf, var_a2);
                            return;
                        }
                        /* Duplicate return node #65. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    temp_s0->unk6FC = GL_FRONT;
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    temp_s0->unk700 = buf;
                    __glMgrasSetData(SYMBOL_LOCATION.unk260, SYMBOL_LOCATION.unk260, buf, var_a2);
                    __glMgrasDrawBuffer(temp_s0->unk6FC);
                    return;
                }
                if (buf == GL_ZERO) {
                    goto block_45;
                }
                /* Duplicate return node #65. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) buf, var_a2);
                return;
            }
            if (var_a2 == GL_ZERO) {
                if (buf >= GL_AUX1) {
                    var_a2 = buf < GL_AUX3;
                    if (buf < GL_AUX2) {
                        goto block_23;
                    }
                    if (var_a2 == GL_ZERO) {
                        if (buf < 0x40DU) {
                            goto block_23;
                        }
                        /* Duplicate return node #65. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    if (buf != GL_AUX2) {
                        /* Duplicate return node #65. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    goto block_23;
                }
                if (buf >= GL_FRONT_AND_BACK) {
                    var_a2 = GL_AUX0;
                    if (buf < GL_AUX0) {
block_45:
                        goto block_10;
                    }
                    if (buf == GL_AUX0) {
block_23:
                        var_a2 = temp_s0->modes.numAuxBuffers;
                        if ((buf - 0x409) < var_a2) {
                            goto block_10;
                        }
                        M2C_ERROR(/* Read from unset register $t9 */)(0x502, buf, var_a2);
                        return;
                    }
                    /* Duplicate return node #65. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) buf, var_a2);
                    return;
                }
                if (buf == GL_RIGHT) {
                    __glSetError(0x502, (__GLcontext *) buf, var_a2);
                    return;
                }
                __glSetError(0x500, (__GLcontext *) buf, var_a2);
                return;
            }
            temp_s0->unk6FC = GL_FRONT_AND_BACK;
            /* Duplicate return node #11. Try simplifying control flow for better match */
            temp_s0->unk700 = buf;
            __glMgrasSetData(SYMBOL_LOCATION.unk260, SYMBOL_LOCATION.unk260, buf, var_a2);
            __glMgrasDrawBuffer(temp_s0->unk6FC);
            return;
        }
        if (temp_a0 != 0) {
            if (buf < GL_RIGHT) {
                goto block_48;
            }
            if (buf >= GL_AUX1) {
                var_a2 = buf < GL_AUX3;
                if (buf >= GL_AUX2) {
                    if (var_a2 == GL_ZERO) {
                        if (buf < 0x40DU) {
                            goto block_74;
                        }
                        /* Duplicate return node #95. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    if (buf != GL_AUX2) {
                        /* Duplicate return node #95. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    goto block_74;
                }
                goto block_74;
            }
            if (buf >= GL_FRONT_AND_BACK) {
                if (buf >= GL_AUX0) {
                    if (buf == GL_AUX0) {
block_74:
                        if ((buf - 0x409) < temp_s0->modes.numAuxBuffers) {
block_10:
                            temp_s0->unk6FC = buf;
                            /* Duplicate return node #11. Try simplifying control flow for better match */
                            temp_s0->unk700 = buf;
                            __glMgrasSetData(SYMBOL_LOCATION.unk260, SYMBOL_LOCATION.unk260, buf, var_a2);
                            __glMgrasDrawBuffer(temp_s0->unk6FC);
                            return;
                        }
                        __glSetError(0x502, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    /* Duplicate return node #95. Try simplifying control flow for better match */
                    __glSetError(0x500, (__GLcontext *) buf, var_a2);
                    return;
                }
                goto block_48;
            }
            if (buf == GL_RIGHT) {
                /* Duplicate return node #92. Try simplifying control flow for better match */
                __glSetError(0x502, (__GLcontext *) buf, var_a2);
                return;
            }
            /* Duplicate return node #95. Try simplifying control flow for better match */
            __glSetError(0x500, (__GLcontext *) buf, var_a2);
            return;
        }
        if (buf >= GL_BACK_LEFT) {
            if (buf >= GL_BACK_RIGHT) {
                var_a2 = buf < GL_BACK;
                if (buf >= GL_FRONT) {
                    if (var_a2 == GL_ZERO) {
                        if (buf == GL_BACK) {
                            /* Duplicate return node #92. Try simplifying control flow for better match */
                            __glSetError(0x502, (__GLcontext *) buf, var_a2);
                            return;
                        }
                        /* Duplicate return node #95. Try simplifying control flow for better match */
                        __glSetError(0x500, (__GLcontext *) buf, var_a2);
                        return;
                    }
                    goto block_48;
                }
                if (buf == GL_BACK_RIGHT) {
                    /* Duplicate return node #92. Try simplifying control flow for better match */
                    __glSetError(0x502, (__GLcontext *) buf, var_a2);
                    return;
                }
                /* Duplicate return node #95. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) buf, var_a2);
                return;
            }
            /* Duplicate return node #92. Try simplifying control flow for better match */
            __glSetError(0x502, (__GLcontext *) buf, var_a2);
            return;
        }
        if (buf >= GL_FRONT_LEFT) {
            var_a2 = GL_FRONT_RIGHT;
            if (buf >= GL_FRONT_RIGHT) {
                if (buf == GL_FRONT_RIGHT) {
                    __glSetError(0x502, (__GLcontext *) buf, var_a2);
                    return;
                }
                /* Duplicate return node #95. Try simplifying control flow for better match */
                __glSetError(0x500, (__GLcontext *) buf, var_a2);
                return;
            }
block_48:
            var_a2 = GL_FRONT;
            temp_s0->unk6FC = GL_FRONT;
            /* Duplicate return node #11. Try simplifying control flow for better match */
            temp_s0->unk700 = buf;
            __glMgrasSetData(SYMBOL_LOCATION.unk260, SYMBOL_LOCATION.unk260, buf, var_a2);
            __glMgrasDrawBuffer(temp_s0->unk6FC);
            return;
        }
        if (buf == GL_ZERO) {
            temp_s0->unk6FC = GL_ZERO;
            temp_s0->unk700 = buf;
            __glMgrasSetData(SYMBOL_LOCATION.unk260, SYMBOL_LOCATION.unk260, buf, var_a2);
            __glMgrasDrawBuffer(temp_s0->unk6FC);
            return;
        }
        __glSetError(0x500, (__GLcontext *) buf, var_a2);
        return;
    }
    __glSetError(0x502, (__GLcontext *) buf);
}

void __glMgrim_LineStipple(s32 factor, u16 pattern) {
    s32 temp_a3;
    s32 temp_at;
    s32 var_a0;
    s32 var_a3;
    s32 var_a4;
    u16 var_a1;
    u32 temp_a1;

    var_a0 = factor;
    var_a1 = pattern;
    if (__glBeginMode != 1) {
        if (var_a0 <= 0) {
            var_a0 = 1;
        }
        var_a4 = 0;
        var_a3 = 0;
        if (var_a0 >= 0x101) {
            var_a0 = 0x100;
        }
loop_9:
        temp_a1 = var_a1 >> 1;
        if (var_a1 & 1) {
            var_a4 = ((1 << (0xF - var_a3)) | var_a4) & 0xFFFF;
        }
        temp_at = temp_a1 & 1;
        var_a1 = (u16) (temp_a1 >> 1);
        temp_a3 = (var_a3 + 1) & 0xFFFF;
        if (temp_at != 0) {
            var_a4 = ((1 << (0xF - temp_a3)) | var_a4) & 0xFFFF;
        }
        var_a3 = (temp_a3 + 1) & 0xFFFF;
        if (var_a3 != 0x10) {
            goto loop_9;
        }
        *(s32 *)0x74080 = 0x4608;
        *(s32 *)0x74080 = var_a0 - 1;
        *(s32 *)0x74080 = var_a4;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftLineWidth(__GLcontext *gc, f32 fparg0, ...) {
    s64 sp18;
    f64 sp0;
    f64 temp_f0;
    s32 temp_a3;
    s32 temp_at;

    if (__glBeginMode != 1) {
        temp_f0 = (f64) fparg0;
        sp18 = (s64) __glCurrentContext;
        sp0 = temp_f0;
        if (!(temp_f0 <= (second half of f64))) {
            __glim_LineWidth(fparg0);
            temp_a3 = sp18->unk925C;
            if (!((second half of f64) > 1.0)) {
                temp_at = temp_a3 & ~4;
                sp18->unk925C = temp_at;
                if (temp_at == 0) {
                    __glMgrExitSoftPath((__GLcontext *) sp18, sp18);
                }
            } else {
                sp18->unk925C = (s32) (temp_a3 | 4);
            }
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c], gap at: 0x8. */
void __glMgrim_LineWidth(f32 width) {
    __GLcontext *temp_s3;
    f64 temp_f4;

    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_f4 = (f64) width;
        if (!(temp_f4 <= GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U))) {
            if (temp_s3->unk9261 != 0) {
                unksp8 = (s64) (temp_s3 + 0x10000);
                if ((temp_f4 > 1.0) && (__glMgrim_IsEnabled(GL_LINE_SMOOTH) != 0)) {
                    __glMgrEnterSoftPath(temp_s3, temp_s3);
                    unksp8->unk-6DA4 = (s32) (unksp8->unk-6DA4 | 4);
                    __glim_LineWidth(width);
                    return;
                }
            }
            *(f32 *)0x74080 = 2.4758e-41f;
            *(f32 *)0x74080 = width;
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PointSize(f32 size) {
    if (__glBeginMode != 1) {
        if (!(size <= 0.0f)) {
            *(f32 *)0x74080 = 2.7628e-41f;
            *(f32 *)0x74080 = size;
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ShadeModel(enum GLenum mode) {
    s32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = mode < GL_FLAT;
        if ((temp_a1 == 0) && (mode < 0x1D02U)) {
            *(enum GLenum *)0x74080 = 0x4704;
            *(enum GLenum *)0x74080 = mode;
            return;
        }
        __glSetError(0x500, (__GLcontext *) temp_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_DepthRange(f64 n, f64 f) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 2.584e-41f;
        *(f32 *)0x74080 = (f32) n;
        *(f32 *)0x74080 = (f32) f;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_BlendColorEXT(f32 red, f32 green, f32 blue, f32 alpha) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 7.7867e-41f;
        *(f32 *)0x74080 = red;
        *(f32 *)0x74080 = green;
        *(f32 *)0x74080 = blue;
        *(f32 *)0x74080 = alpha;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_TexGenfv(enum GLenum coord, enum GLenum pname, f32 *params) {
    ? *var_a5;
    s32 temp_a4;

    if (__glBeginMode != 1) {
        switch (coord) {                            /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *)0x2000, (enum GLenum) __glCurrentContext);
            return;
        case GL_Q:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk8C8;
block_7:
            switch (pname) {                        /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, (__GLcontext *)0x70000, (enum GLenum) __glCurrentContext, (enum GLenum) var_a5);
                return;
            case GL_TEXTURE_GEN_MODE:               /* switch 2 */
                temp_a4 = (s64) params->unk0 << 0;
                if ((temp_a4 != 0x2402) || (coord < GL_R)) {
                    var_a5->unk0 = temp_a4;
                    *(void *)0x74080 = 0x5A0CU;
                    *(void *)0x74080 = coord;
                    *(void *)0x74080 = pname;
                    *(void *)0x74080 = (enum GLenum) (s64) params->unk0;
                    return;
                }
                M2C_ERROR(/* Read from unset register $t9 */)(0x500, 0x5A0C, temp_a4, var_a5);
                return;
            case GL_EYE_PLANE:                      /* switch 2 */
                var_a5->unk4 = (f32) params->unk0;
                var_a5->unk8 = (enum GLenum) params->unk4;
                var_a5->unkC = (enum GLenum) params->unk8;
                *(enum GLenum *)0x74080 = 0x5B08;
                var_a5->unk10 = (enum GLenum) params->unkC;
                *(enum GLenum *)0x74080 = coord;
                *(enum GLenum *)0x74080 = pname;
                *(enum GLenum *)0x74080 = 0x5C10;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) params->unk0;
                *(enum GLenum *)0x74080 = params->unk4;
                *(enum GLenum *)0x74080 = params->unk8;
                *(enum GLenum *)0x74080 = params->unkC;
                break;
            case GL_OBJECT_PLANE:                   /* switch 2 */
                var_a5->unk14 = (f32) params->unk0;
                var_a5->unk18 = (enum GLenum) params->unk4;
                var_a5->unk1C = (enum GLenum) params->unk8;
                *(void *)0x74080 = 0x5B08U;
                *(void *)0x74080 = coord;
                *(void *)0x74080 = pname;
                var_a5->unk20 = (enum GLenum) params->unkC;
                *(void *)0x74080 = 0x5C10U;
                *(void *)0x74080 = (bitwise enum GLenum) params->unk0;
                *(void *)0x74080 = (enum GLenum) params->unk4;
                *(void *)0x74080 = (enum GLenum) params->unk8;
                *(void *)0x74080 = (enum GLenum) params->unkC;
                break;
            }
            break;
        case GL_S:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk754;
            goto block_7;
        case GL_T:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk7D0;
            goto block_7;
        case GL_R:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk84C;
            goto block_7;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_TexGenf(enum GLenum coord, enum GLenum pname, f32 param) {
    f32 sp20;

    sp20 = param;
    if (pname != GL_TEXTURE_GEN_MODE) {
        __glSetError(0x500);
        return;
    }
    __glMgrim_TexGenfv(coord, pname, &sp20);
}

void __glMgrim_TexGendv(enum GLenum coord, enum GLenum pname, f64 *params) {
    ? *var_a5;
    s32 temp_a4;

    if (__glBeginMode != 1) {
        switch (coord) {                            /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *)0x2000, (enum GLenum) __glCurrentContext);
            return;
        case GL_Q:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk8C8;
block_7:
            switch (pname) {                        /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, (__GLcontext *)0x70000, (enum GLenum) __glCurrentContext, (enum GLenum) var_a5);
                return;
            case GL_TEXTURE_GEN_MODE:               /* switch 2 */
                temp_a4 = (s64) params->unk0 << 0;
                if ((temp_a4 != 0x2402) || (coord < GL_R)) {
                    var_a5->unk0 = temp_a4;
                    *(void *)0x74080 = 0x5A0CU;
                    *(void *)0x74080 = coord;
                    *(void *)0x74080 = pname;
                    *(void *)0x74080 = (enum GLenum) (s64) params->unk0;
                    return;
                }
                M2C_ERROR(/* Read from unset register $t9 */)(0x500, 0x5A0C, temp_a4, var_a5);
                return;
            case GL_EYE_PLANE:                      /* switch 2 */
                var_a5->unk4 = (f32) params->unk0;
                var_a5->unk8 = (f32) params->unk8;
                var_a5->unkC = (f32) params->unk10;
                var_a5->unk10 = (f32) params->unk18;
                *(enum GLenum *)0x74080 = 0x5B08;
                *(enum GLenum *)0x74080 = coord;
                *(enum GLenum *)0x74080 = pname;
                *(enum GLenum *)0x74080 = 0x5C10;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) params->unk0;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) params->unk8;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) params->unk10;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) params->unk18;
                break;
            case GL_OBJECT_PLANE:                   /* switch 2 */
                var_a5->unk14 = (f32) params->unk0;
                var_a5->unk18 = (f32) params->unk8;
                var_a5->unk1C = (f32) params->unk10;
                var_a5->unk20 = (f32) params->unk18;
                *(void *)0x74080 = 0x5B08U;
                *(void *)0x74080 = coord;
                *(void *)0x74080 = pname;
                *(void *)0x74080 = 0x5C10U;
                *(void *)0x74080 = (bitwise enum GLenum) (f32) params->unk0;
                *(void *)0x74080 = (enum GLenum) (second half of f64);
                *(void *)0x74080 = (enum GLenum) (second half of f64);
                *(void *)0x74080 = (bitwise enum GLenum) (f32) params->unk18;
                break;
            }
            break;
        case GL_S:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk754;
            goto block_7;
        case GL_T:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk7D0;
            goto block_7;
        case GL_R:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk84C;
            goto block_7;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_TexGend(enum GLenum coord, enum GLenum pname, f64 param) {
    f64 sp20;

    sp20 = param;
    if (pname != GL_TEXTURE_GEN_MODE) {
        __glSetError(0x500);
        return;
    }
    __glMgrim_TexGendv(coord, pname, &sp20);
}

void __glMgrim_TexGeniv(enum GLenum coord, enum GLenum pname, enum GLenum *params) {
    ? *var_a5;
    enum GLenum temp_a4;
    s32 temp_a3;

    if (__glBeginMode != 1) {
        switch (coord) {                            /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *)0x2000, (enum GLenum) __glCurrentContext);
            return;
        case GL_Q:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk8C8;
block_7:
            switch (pname) {                        /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, (__GLcontext *)0x2500, (enum GLenum) __glCurrentContext, (enum GLenum) var_a5);
                return;
            case GL_TEXTURE_GEN_MODE:               /* switch 2 */
                temp_a4 = params->unk0;
                temp_a3 = (u32) coord < GL_R;
                if ((temp_a4 != GL_SPHERE_MAP) || (temp_a3 != 0)) {
                    var_a5->unk0 = temp_a4;
                    *(void *)0x74080 = 0x5A0C;
                    *(void *)0x74080 = coord;
                    *(void *)0x74080 = pname;
                    *(void *)0x74080 = (enum GLenum) params->unk0;
                    return;
                }
                __glSetError(0x500, (__GLcontext *) temp_a3, temp_a4, (enum GLenum) var_a5);
                return;
            case GL_EYE_PLANE:                      /* switch 2 */
                var_a5->unk14 = (f32) params->unk0;
                var_a5->unk18 = (f32) params->unk4;
                var_a5->unk1C = (f32) params->unk8;
                *(enum GLenum *)0x74080 = 0x5B08;
                var_a5->unk20 = (f32) params->unkC;
                *(enum GLenum *)0x74080 = coord;
                *(enum GLenum *)0x74080 = pname;
                *(enum GLenum *)0x74080 = 0x18005C10;
                *(enum GLenum *)0x74080 = params->unk0;
                *(enum GLenum *)0x74080 = params->unk4;
                *(enum GLenum *)0x74080 = params->unk8;
                *(enum GLenum *)0x74080 = params->unkC;
                break;
            case GL_OBJECT_PLANE:                   /* switch 2 */
                var_a5->unk14 = (f32) params->unk0;
                var_a5->unk18 = (f32) params->unk4;
                var_a5->unk1C = (f32) params->unk8;
                *(void *)0x74080 = 0x5B08;
                *(void *)0x74080 = coord;
                *(void *)0x74080 = pname;
                var_a5->unk20 = (f32) params->unkC;
                *(void *)0x74080 = 0x18005C10;
                *(void *)0x74080 = (enum GLenum) params->unk0;
                *(void *)0x74080 = (enum GLenum) params->unk4;
                *(void *)0x74080 = (enum GLenum) params->unk8;
                *(void *)0x74080 = (enum GLenum) params->unkC;
                break;
            }
            break;
        case GL_S:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk754;
            goto block_7;
        case GL_T:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk7D0;
            goto block_7;
        case GL_R:                                  /* switch 1 */
            var_a5 = &__glCurrentContext->unk84C;
            goto block_7;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_TexGeni(enum GLenum coord, enum GLenum pname, enum GLenum param) {
    enum GLenum sp24;

    sp24 = param;
    if (pname != GL_TEXTURE_GEN_MODE) {
        __glSetError(0x500);
        return;
    }
    __glMgrim_TexGeniv(coord, pname, &sp24);
}

void __glMgrim_SoftTexGenfv(__GLcontext *gc, s32 arg1, void *arg2, ...) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    ? *var_a5;
    __GLcontext *var_a4;
    f32 *temp_a1;
    s32 temp_a6;

    var_a4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (gc) {                               /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *)0x2001, (enum GLenum) var_a4, GL_ONE);
            return;
        case 0x2003:                                /* switch 1 */
            var_a5 = &var_a4->unk8C8;
block_7:
            if (arg1 != 0x2500) {
                if (arg1 == 0x2501) {
                    var_a5->unk14 = (f32) arg2->unk0;
                    var_a5->unk18 = (f32) arg2->unk4;
                    var_a5->unk1C = (f32) arg2->unk8;
                    var_a5->unk20 = (f32) arg2->unkC;
                    /* Duplicate return node #21. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                    return;
                }
                sp20 = (s64) var_a4;
                sp10 = (s64) var_a5;
                if (arg1 != 0x2502) {
                    __glSetError(0x500, (__GLcontext *)0x2501, (enum GLenum) var_a4, (enum GLenum) var_a5, 1);
                    return;
                }
                sp0 = arg2->unk0;
                sp4 = arg2->unk4;
                sp8 = arg2->unk8;
                spC = arg2->unkC;
                temp_a1 = sp20->unk7410;
                sp18 = (s64) temp_a1;
                __glMgrim_GetFloatv(GL_MODELVIEW_MATRIX, temp_a1);
                temp_a1->unk10C = 1;
                temp_a1->unk40 = 0;
                sp20->unk2E94(sp20, temp_a1, 1);
                sp20->unk2EC4(sp20, temp_a1);
                sp18->unkA8(sp10 + 4, sp, sp18 + 0x58);
                var_a4 = (__GLcontext *) sp20;
                /* Duplicate return node #21. Try simplifying control flow for better match */
                __glBeginMode = 2;
                var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                return;
            }
            temp_a6 = (s64) arg2->unk0 << 0;
            switch (temp_a6) {                      /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, (__GLcontext *) temp_a6, GL_OBJECT_PLANE, (enum GLenum) var_a4, (s32) var_a5, temp_a6);
                return;
            case 0x2402:                            /* switch 2 */
                if ((gc != (__GLcontext *)0x2002) && (gc != (__GLcontext *)0x2003)) {
                    var_a5->unk0 = temp_a6;
                    __glBeginMode = 2;
                    var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                    return;
                }
                __glSetError(0x500, (__GLcontext *) temp_a6, GL_OBJECT_PLANE, (enum GLenum) var_a4, (s32) var_a5, temp_a6);
                return;
            case 0x2400:                            /* switch 2 */
            case 0x2401:                            /* switch 2 */
                var_a5->unk0 = temp_a6;
                /* Duplicate return node #21. Try simplifying control flow for better match */
                __glBeginMode = 2;
                var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                return;
            }
            break;
        case 0x2000:                                /* switch 1 */
            var_a5 = &var_a4->unk754;
            goto block_7;
        case 0x2001:                                /* switch 1 */
            var_a5 = &var_a4->unk7D0;
            goto block_7;
        case 0x2002:                                /* switch 1 */
            var_a5 = &var_a4->unk84C;
            goto block_7;
        }
    } else {
        __glSetError(0x502, var_a4, GL_ONE);
    }
}

void __glMgrim_SoftTexGendv(__GLcontext *gc, s32 arg1, void *arg2, ...) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    ? *var_a5;
    __GLcontext *var_a4;
    f32 *temp_a1;
    s32 temp_a6;

    var_a4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (gc) {                               /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *)0x2001, (enum GLenum) var_a4, GL_ONE);
            return;
        case 0x2003:                                /* switch 1 */
            var_a5 = &var_a4->unk8C8;
block_7:
            if (arg1 != 0x2500) {
                if (arg1 == 0x2501) {
                    var_a5->unk14 = (f32) arg2->unk0;
                    var_a5->unk18 = (f32) arg2->unk8;
                    var_a5->unk1C = (f32) arg2->unk10;
                    var_a5->unk20 = (f32) arg2->unk18;
                    /* Duplicate return node #21. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                    return;
                }
                sp20 = (s64) var_a4;
                sp10 = (s64) var_a5;
                if (arg1 != 0x2502) {
                    __glSetError(0x500, (__GLcontext *)0x2501, (enum GLenum) var_a4, (enum GLenum) var_a5, 1);
                    return;
                }
                sp0 = (f32) arg2->unk0;
                sp4 = (f32) arg2->unk8;
                sp8 = (f32) arg2->unk10;
                spC = (f32) arg2->unk18;
                temp_a1 = sp20->unk7410;
                sp18 = (s64) temp_a1;
                __glMgrim_GetFloatv(GL_MODELVIEW_MATRIX, temp_a1);
                temp_a1->unk10C = 1;
                temp_a1->unk40 = 0;
                sp20->unk2E94(sp20, temp_a1, 1);
                sp20->unk2EC4(sp20, temp_a1);
                sp18->unkA8(sp10 + 4, sp, sp18 + 0x58);
                var_a4 = (__GLcontext *) sp20;
                /* Duplicate return node #21. Try simplifying control flow for better match */
                __glBeginMode = 2;
                var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                return;
            }
            temp_a6 = (s64) arg2->unk0 << 0;
            switch (temp_a6) {                      /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, (__GLcontext *) temp_a6, GL_OBJECT_PLANE, (enum GLenum) var_a4, (s32) var_a5, temp_a6);
                return;
            case 0x2402:                            /* switch 2 */
                if ((gc != (__GLcontext *)0x2002) && (gc != (__GLcontext *)0x2003)) {
                    var_a5->unk0 = temp_a6;
                    __glBeginMode = 2;
                    var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                    return;
                }
                __glSetError(0x500, (__GLcontext *) temp_a6, GL_OBJECT_PLANE, (enum GLenum) var_a4, (s32) var_a5, temp_a6);
                return;
            case 0x2400:                            /* switch 2 */
            case 0x2401:                            /* switch 2 */
                var_a5->unk0 = temp_a6;
                /* Duplicate return node #21. Try simplifying control flow for better match */
                __glBeginMode = 2;
                var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                return;
            }
            break;
        case 0x2000:                                /* switch 1 */
            var_a5 = &var_a4->unk754;
            goto block_7;
        case 0x2001:                                /* switch 1 */
            var_a5 = &var_a4->unk7D0;
            goto block_7;
        case 0x2002:                                /* switch 1 */
            var_a5 = &var_a4->unk84C;
            goto block_7;
        }
    } else {
        __glSetError(0x502, var_a4, GL_ONE);
    }
}

void __glMgrim_SoftTexGeniv(__GLcontext *gc, s32 arg1, void *arg2, ...) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    ? *var_a5;
    __GLcontext *var_a4;
    f32 *temp_a1;
    s32 temp_a6;

    var_a4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (gc) {                               /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *)0x2001, (enum GLenum) var_a4, GL_ONE);
            return;
        case 0x2003:                                /* switch 1 */
            var_a5 = &var_a4->unk8C8;
block_7:
            if (arg1 != 0x2500) {
                if (arg1 == 0x2501) {
                    var_a5->unk14 = (f32) arg2->unk0;
                    var_a5->unk18 = (f32) arg2->unk4;
                    var_a5->unk1C = (f32) arg2->unk8;
                    var_a5->unk20 = (f32) arg2->unkC;
                    /* Duplicate return node #21. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                    return;
                }
                sp20 = (s64) var_a4;
                sp10 = (s64) var_a5;
                if (arg1 != 0x2502) {
                    __glSetError(0x500, (__GLcontext *)0x2501, (enum GLenum) var_a4, (enum GLenum) var_a5, 1);
                    return;
                }
                sp0 = (f32) arg2->unk0;
                sp4 = (f32) arg2->unk4;
                sp8 = (f32) arg2->unk8;
                spC = (f32) arg2->unkC;
                temp_a1 = sp20->unk7410;
                sp18 = (s64) temp_a1;
                __glMgrim_GetFloatv(GL_MODELVIEW_MATRIX, temp_a1);
                temp_a1->unk10C = 1;
                temp_a1->unk40 = 0;
                sp20->unk2E94(sp20, temp_a1);
                sp20->unk2EC4(sp20, temp_a1);
                sp18->unkA8(sp10 + 4, sp, sp18 + 0x58);
                var_a4 = (__GLcontext *) sp20;
                /* Duplicate return node #21. Try simplifying control flow for better match */
                __glBeginMode = 2;
                var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                return;
            }
            temp_a6 = arg2->unk0;
            switch (temp_a6) {                      /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, (__GLcontext *) temp_a6, GL_SPHERE_MAP, (enum GLenum) var_a4, (s32) var_a5, temp_a6);
                return;
            case 0x2402:                            /* switch 2 */
                if ((gc != (__GLcontext *)0x2002) && (gc != (__GLcontext *)0x2003)) {
                    var_a5->unk0 = temp_a6;
                    __glBeginMode = 2;
                    var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                    return;
                }
                __glSetError(0x500, (__GLcontext *) temp_a6, GL_SPHERE_MAP, (enum GLenum) var_a4, (s32) var_a5, temp_a6);
                return;
            case 0x2400:                            /* switch 2 */
            case 0x2401:                            /* switch 2 */
                var_a5->unk0 = temp_a6;
                /* Duplicate return node #21. Try simplifying control flow for better match */
                __glBeginMode = 2;
                var_a4->procs.table[0x16] = (void *) ((s32) var_a4->procs.table[0x16] | 1);
                return;
            }
            break;
        case 0x2000:                                /* switch 1 */
            var_a5 = &var_a4->unk754;
            goto block_7;
        case 0x2001:                                /* switch 1 */
            var_a5 = &var_a4->unk7D0;
            goto block_7;
        case 0x2002:                                /* switch 1 */
            var_a5 = &var_a4->unk84C;
            goto block_7;
        }
    } else {
        __glSetError(0x502, var_a4, GL_ONE);
    }
}

void __glMgrim_Fogfv(enum GLenum pname, f32 *params) {
    f32 temp_f4;
    f32 temp_f4_2;
    s32 temp_a0;

    if (__glBeginMode != 1) {
        switch (pname) {                            /* irregular */
        default:
            __glSetError(0x500, (__GLcontext *)0xB61, (enum GLenum) __glCurrentContext);
            return;
        case GL_FOG_MODE:
            temp_f4 = params->unk0;
            temp_a0 = (s64) temp_f4 << 0;
            if (temp_a0 != 0x800) {
                if (temp_a0 != 0x801) {
                    if (temp_a0 == 0x2601) {
                        goto block_11;
                    }
                    __glSetError(0x500, (__GLcontext *)0x801, (enum GLenum) __glCurrentContext);
                    return;
                }
                goto block_12;
            }
block_11:
block_12:
            *(s32 *)0x74080 = 0xB904;
            *(s32 *)0x74080 = (s32) temp_f4;
            __glBeginMode = 2;
            __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
            return;
        case GL_FOG_DENSITY:
            temp_f4_2 = params->unk0;
            if (!(temp_f4_2 < 0.0f)) {
                *(void *)0x74080 = 0xB704;
                *(void *)0x74080 = (bitwise s32) temp_f4_2;
                /* Duplicate return node #13. Try simplifying control flow for better match */
                __glBeginMode = 2;
                __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
                return;
            }
            __glSetError(0x501, (__GLcontext *)0xB66, (enum GLenum) __glCurrentContext);
            return;
        case GL_FOG_COLOR:
            *(void *)0x74080 = 0xB410;
            *(void *)0x74080 = (bitwise s32) params->unk0;
            *(void *)0x74080 = (s32) params->unk4;
            *(void *)0x74080 = (s32) params->unk8;
            *(void *)0x74080 = (s32) params->unkC;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            __glBeginMode = 2;
            __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
            return;
        case GL_FOG_END:
            *(void *)0x74080 = 0xB604;
            *(void *)0x74080 = (bitwise s32) params->unk0;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            __glBeginMode = 2;
            __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
            return;
        case GL_FOG_START:
            *(void *)0x74080 = 0xB504;
            *(void *)0x74080 = (bitwise s32) params->unk0;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            __glBeginMode = 2;
            __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
            return;
        case GL_FOG_INDEX:
            *(void *)0x74080 = 0xB804;
            *(void *)0x74080 = (s32) params->unk0;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            __glBeginMode = 2;
            __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
            return;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_Fogf(enum GLenum pname, f32 param) {
    f32 sp18;

    sp18 = param;
    if ((pname != GL_FOG_INDEX) && (pname != GL_FOG_DENSITY) && (pname != GL_FOG_START) && (pname != GL_FOG_END) && (pname != GL_FOG_MODE)) {
        __glSetError(0x500, (__GLcontext *)0xB63);
        return;
    }
    __glMgrim_Fogfv(pname, &sp18);
}

void __glMgrim_Fogiv(enum GLenum pname, enum GLenum *params) {
    enum GLenum temp_a4;
    enum GLenum temp_a4_2;
    f32 temp_f5;

    if (__glBeginMode != 1) {
        if (pname != GL_FOG_COLOR) {
            if (pname == GL_FOG_DENSITY) {
                temp_a4 = params->unk0;
                if (temp_a4 >= GL_ZERO) {
                    *(f32 *)0x74080 = 6.5654e-41f;
                    *(f32 *)0x74080 = (f32) temp_a4;
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
                    return;
                }
                __glSetError(0x501, (__GLcontext *)0xB66, (enum GLenum) __glCurrentContext, temp_a4);
                return;
            }
            switch (pname) {                        /* irregular */
            default:
                __glSetError(0x500, (__GLcontext *)0xB61, (enum GLenum) __glCurrentContext);
                return;
            case GL_FOG_MODE:
                temp_a4_2 = params->unk0;
                if ((temp_a4_2 == GL_EXP) || (temp_a4_2 == GL_EXP2) || (temp_a4_2 == GL_LINEAR)) {
                    *(void *)0x74080 = 6.6371e-41f;
                    *(void *)0x74080 = (bitwise f32) temp_a4_2;
                    /* Duplicate return node #16. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
                    return;
                }
                __glSetError(0x500, (__GLcontext *)0x2601, (enum GLenum) __glCurrentContext, temp_a4_2);
                return;
            case GL_FOG_END:
                *(void *)0x74080 = 6.5295e-41f;
                *(void *)0x74080 = (f32) params->unk0;
                /* Duplicate return node #16. Try simplifying control flow for better match */
                __glBeginMode = 2;
                __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
                return;
            case GL_FOG_START:
                *(void *)0x74080 = 6.4936e-41f;
                *(void *)0x74080 = (f32) params->unk0;
                /* Duplicate return node #16. Try simplifying control flow for better match */
                __glBeginMode = 2;
                __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
                return;
            case GL_FOG_INDEX:
                *(void *)0x74080 = 6.6012e-41f;
                *(void *)0x74080 = (bitwise f32) params->unk0;
                /* Duplicate return node #16. Try simplifying control flow for better match */
                __glBeginMode = 2;
                __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
                return;
            }
        } else {
            temp_f5 = __glCurrentContext->unkCEC;
            *(void *)0x74080 = 6.4594e-41f;
            *(void *)0x74080 = (f32) ((((f32) params->unk0 * 2.0f) + 1.0f) * temp_f5);
            *(void *)0x74080 = (f32) ((((f32) params->unk4 * 2.0f) + 1.0f) * temp_f5);
            *(void *)0x74080 = (f32) ((((f32) params->unk8 * 2.0f) + 1.0f) * temp_f5);
            *(void *)0x74080 = (f32) ((((f32) params->unkC * 2.0f) + 1.0f) * temp_f5);
            __glBeginMode = 2;
            __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 1);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_Fogi(enum GLenum pname, enum GLenum param) {
    enum GLenum sp1C;

    sp1C = param;
    if ((pname != GL_FOG_INDEX) && (pname != GL_FOG_DENSITY) && (pname != GL_FOG_START) && (pname != GL_FOG_END) && (pname != GL_FOG_MODE)) {
        __glSetError(0x500, (__GLcontext *)0xB63);
        return;
    }
    __glMgrim_Fogiv(pname, &sp1C);
}

void __glMgrim_PolygonOffsetEXT(f32 factor, f32 bias) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 8.2884e-41f;
        *(f32 *)0x74080 = factor;
        *(f32 *)0x74080 = bias;
        *(f32 *)0x74080 = 1.0f;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PolygonOffset(f32 factor, f32 units) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 8.2884e-41f;
        *(f32 *)0x74080 = factor;
        *(f32 *)0x74080 = units;
        *(f32 *)0x74080 = 1.1f;
        return;
    }
    __glSetError(0x502);
}
