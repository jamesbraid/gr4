typedef struct __GLcolorBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ s32 redMax;
    /* 0x20 */ s32 greenMax;
    /* 0x24 */ s32 blueMax;
    /* 0x28 */ u8 needColorFragmentOps;
    /* 0x29 */ char pad29[3];                       /* maybe part of needColorFragmentOps[4]? */
    /* 0x2C */ u8 *alphaTestFuncTable;
    /* 0x30 */ f32 redScale;
    /* 0x34 */ f32 greenScale;
    /* 0x38 */ f32 blueScale;
    /* 0x3C */ s32 iRedScale;
    /* 0x40 */ s32 iGreenScale;
    /* 0x44 */ s32 iBlueScale;
    /* 0x48 */ s32 redShift;
    /* 0x4C */ s32 greenShift;
    /* 0x50 */ s32 blueShift;
    /* 0x54 */ s32 alphaShift;
    /* 0x58 */ f32 alphaScale;
    /* 0x5C */ s32 iAlphaScale;
    /* 0x60 */ f32 oneOverRedScale;
    /* 0x64 */ f32 oneOverGreenScale;
    /* 0x68 */ f32 oneOverBlueScale;
    /* 0x6C */ f32 oneOverAlphaScale;
    /* 0x70 */ u32 sourceMask;
    /* 0x74 */ u32 destMask;
    /* 0x78 */ void (*pick)();
    /* 0x7C */ s32 (*getDisplayMasks)();
    /* 0x80 */ void (*store)();
    /* 0x84 */ void (*fetch)();
    /* 0x88 */ void (*readColor)();
    /* 0x8C */ u8 (*readSpan)();
    /* 0x90 */ void (*returnSpan)();
    /* 0x94 */ void *storeSpan;
    /* 0x98 */ void *storeStippledSpan;
    /* 0x9C */ void *storeLine;
    /* 0xA0 */ void *storeStippledLine;
    /* 0xA4 */ void *fetchSpan;
    /* 0xA8 */ void *fetchStippledSpan;
    /* 0xAC */ void *fetchLine;
    /* 0xB0 */ void *fetchStippledLine;
    /* 0xB4 */ char padB4[0x18];                    /* maybe part of fetchStippledLine[7]? */
    /* 0xCC */ u32 unkCC;                           /* inferred */
    /* 0xD0 */ char padD0[8];                       /* maybe part of unkCC[3]? */
    /* 0xD8 */ void (*clear)(__GLcolorBuffer *);
} __GLcolorBuffer;                                  /* size = 0xDC */

typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x608];                 /* maybe part of gcState[0x183]? */
    /* 0x06A0 */ s32 unk6A0;                        /* inferred */
    /* 0x06A4 */ s32 unk6A4;                        /* inferred */
    /* 0x06A8 */ s32 unk6A8;                        /* inferred */
    /* 0x06AC */ char pad6AC[4];
    /* 0x06B0 */ s32 unk6B0;                        /* inferred */
    /* 0x06B4 */ s32 unk6B4;                        /* inferred */
    /* 0x06B8 */ char pad6B8[0x558];                /* maybe part of unk6B4[0x157]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x683];                /* maybe part of yInverted[0x684]? */
    /* 0x1350 */ s32 unk1350;                       /* inferred */
    /* 0x1354 */ char pad1354[0x1A38];              /* maybe part of unk1350[0x68F]? */
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

? sginap(?);                                        /* extern */
extern ? SYMBOL_LOCATION;

void __Mgr_ReturnMode(s32 arg0, s32 arg1, s32 arg2) {
    void *temp_v1;

    temp_v1 = __glCurrentContext->unk9D48;
    temp_v1->unk7000C = 0x20000;
    *(s32 *)0x74080 = 0xA20C;
    *(s32 *)0x74080 = arg0;
    *(s32 *)0x74080 = arg1;
    *(s32 *)0x74080 = arg2;
    __glMgrim_IsEnabled((enum GLenum) temp_v1);
}

u8 __glMgrim_IsEnabled(enum GLenum cap) {
    s64 sp8;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    u32 var_a0;
    void *temp_a0;
    void *var_a3;

    if (__glBeginMode != 1) {
        if (cap >= GL_MAP2_VERTEX_4) {
            if (cap < 0xDB9U) {
                goto block_3;
            }
            if (cap >= GL_CONVOLUTION_2D_EXT) {
                if (cap > GL_CONVOLUTION_2D_EXT) {
                    if (cap >= GL_TEXTURE_COORD_ARRAY) {
                        if (cap <= GL_TEXTURE_COORD_ARRAY) {
                            var_a0_2 = __glCurrentContext->unk1350;
                            var_a1 = 0x07F00000;
                            goto block_4;
                        }
                        var_a1_2 = cap < GL_POST_CONVOLUTION_COLOR_TABLE_SGI;
                        var_a2 = cap > GL_POST_CONVOLUTION_COLOR_TABLE_SGI;
                        if (var_a1_2 == 0) {
                            if (var_a2 != 0) {
                                if (cap >= 0x8139U) {
                                    var_a1_2 = 0xBEAD;
                                    if (cap > 0x8139U) {
                                        if (cap == 0xBEAD) {
                                            var_a0_2 = __glCurrentContext->unk6A8;
                                            var_a1 = 0x80000000;
                                            goto block_4;
                                        }
                                        /* Duplicate return node #61. Try simplifying control flow for better match */
                                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                        return 0U;
                                    }
                                    var_a0 = __glCurrentContext->backBuffer.unkCC;
                                    /* Duplicate return node #5. Try simplifying control flow for better match */
                                    return var_a0 != 0;
                                }
                                var_a2 = cap < 0x8134U;
                                if (var_a2 == 0) {
                                    if (cap <= 0x8134U) {
                                        temp_a0 = __glCurrentContext->unk8A2C;
                                        if (temp_a0 != NULL) {
                                            var_a3 = temp_a0->unkC4;
                                            sp8 = (s64) (__glCurrentContext + 0x10000);
                                            if (var_a3 == NULL) {
                                                mgrTM_RefreshDim(temp_a0, var_a1_2, var_a2, var_a3);
                                                var_a3 = sp8->unk-75D4->unkC4;
                                            }
                                            var_a0 = var_a3->unkB3 == 6;
                                        } else {
                                            var_a0 = sp0;
                                        }
                                        /* Duplicate return node #5. Try simplifying control flow for better match */
                                        return var_a0 != 0;
                                    }
                                    /* Duplicate return node #61. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                    return 0U;
                                }
                                var_a1_2 = 0x80D2;
                                if (cap == GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI) {
                                    var_a0 = (u32) __glCurrentContext->unk8458;
                                    /* Duplicate return node #5. Try simplifying control flow for better match */
                                    return var_a0 != 0;
                                }
                                /* Duplicate return node #61. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                return 0U;
                            }
                            var_a0 = (u32) __glCurrentContext->unk841C;
                            /* Duplicate return node #5. Try simplifying control flow for better match */
                            return var_a0 != 0;
                        }
                        var_a2 = cap < GL_TEXTURE_COLOR_TABLE_SGI;
                        if (var_a2 == 0) {
                            if (cap > GL_TEXTURE_COLOR_TABLE_SGI) {
                                if (cap == GL_COLOR_TABLE_SGI) {
                                    var_a0 = (u32) __glCurrentContext->unk83A4;
                                    /* Duplicate return node #5. Try simplifying control flow for better match */
                                    return var_a0 != 0;
                                }
                                /* Duplicate return node #61. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                return 0U;
                            }
                            var_a0 = (u32) __glCurrentContext->unk83E0;
                            /* Duplicate return node #5. Try simplifying control flow for better match */
                            return var_a0 != 0;
                        }
                        var_a1_2 = cap < 0x8094U;
                        var_a2 = cap > 0x8094U;
                        if (var_a1_2 == 0) {
                            if (var_a2 == 0) {
                                var_a0 = __glCurrentContext->unk6A4 & 0x20;
                                /* Duplicate return node #5. Try simplifying control flow for better match */
                                return var_a0 != 0;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        var_a2 = 0x8079;
                        if (cap == GL_EDGE_FLAG_ARRAY) {
                            var_a0_2 = __glCurrentContext->unk1350;
                            var_a1 = 0x08000000;
                            goto block_4;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    if (cap >= GL_TEXTURE_3D_EXT) {
                        if (cap <= GL_TEXTURE_3D_EXT) {
                            var_a0_2 = __glCurrentContext->unk6A0;
                            var_a1 = 0x40000000;
                            goto block_4;
                        }
                        var_a1_2 = cap < GL_COLOR_ARRAY;
                        var_a2 = cap > GL_COLOR_ARRAY;
                        if (var_a1_2 == 0) {
                            var_a1_2 = 0x8077;
                            if (var_a2 == 0) {
                                var_a0_2 = __glCurrentContext->unk1350;
                                var_a1 = 0xFF000;
                                goto block_4;
                            }
                            if (cap == GL_INDEX_ARRAY) {
                                var_a0_2 = __glCurrentContext->unk1350;
                                var_a1 = 0xF0000000;
                                goto block_4;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        var_a2 = cap < GL_NORMAL_ARRAY;
                        if (var_a2 == 0) {
                            if (cap <= GL_NORMAL_ARRAY) {
                                var_a0 = __glCurrentContext->unk1350 & 0xF00;
                                /* Duplicate return node #5. Try simplifying control flow for better match */
                                return var_a0 != 0;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        if (cap == GL_VERTEX_ARRAY) {
                            var_a0 = __glCurrentContext->unk1350 & 0xFF;
                            /* Duplicate return node #5. Try simplifying control flow for better match */
                            return var_a0 != 0;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    var_a2 = cap > GL_MINMAX_EXT;
                    if (cap >= GL_MINMAX_EXT) {
                        if (var_a2 == 0) {
                            var_a0 = (u32) __glCurrentContext->unk820C;
                            /* Duplicate return node #5. Try simplifying control flow for better match */
                            return var_a0 != 0;
                        }
                        var_a1_2 = 0x8037;
                        if (cap == GL_POLYGON_OFFSET_FILL) {
                            var_a0_2 = __glCurrentContext->unk6A0;
                            var_a1 = 0x01000000;
                            goto block_4;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    var_a1_2 = cap < GL_HISTOGRAM_EXT;
                    var_a2 = cap > GL_HISTOGRAM_EXT;
                    if (var_a1_2 == 0) {
                        if (var_a2 == 0) {
                            var_a0 = (u32) __glCurrentContext->unk81DC;
                            /* Duplicate return node #5. Try simplifying control flow for better match */
                            return var_a0 != 0;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    var_a2 = 0x8012;
                    if (cap == GL_SEPARABLE_2D_EXT) {
                        var_a0 = (u32) __glCurrentContext->unk8334;
                        /* Duplicate return node #5. Try simplifying control flow for better match */
                        return var_a0 != 0;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                var_a0 = (u32) __glCurrentContext->unk82E4;
                /* Duplicate return node #5. Try simplifying control flow for better match */
                return var_a0 != 0;
            }
            if (cap >= GL_CLIP_PLANE5) {
                var_a2 = cap < GL_LIGHT4;
                if (cap >= 0x3006U) {
                    if (var_a2 == 0) {
                        if (cap >= GL_LIGHT5) {
                            var_a1_2 = cap < 0x4008U;
                            if (cap >= GL_LIGHT7) {
                                var_a2 = 0x8010;
                                if (var_a1_2 == 0) {
                                    if (cap == GL_CONVOLUTION_1D_EXT) {
                                        var_a0 = (u32) __glCurrentContext->unk8294;
                                        /* Duplicate return node #5. Try simplifying control flow for better match */
                                        return var_a0 != 0;
                                    }
                                    /* Duplicate return node #61. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                    return 0U;
                                }
                                goto block_78;
                            }
                            var_a1_2 = cap < GL_LIGHT7;
                            if (cap >= GL_LIGHT6) {
                                if (var_a1_2 != 0) {
                                    goto block_78;
                                }
                                /* Duplicate return node #61. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                return 0U;
                            }
                            var_a2 = 0x4005;
                            if (cap == GL_LIGHT5) {
                                goto block_78;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        goto block_78;
                    }
                    var_a1_2 = cap < GL_LIGHT2;
                    var_a2 = cap < GL_LIGHT3;
                    if (var_a1_2 == 0) {
                        if (var_a2 != 0) {
                            goto block_78;
                        }
                        if (cap == GL_LIGHT3) {
                            goto block_78;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    if (cap >= GL_LIGHT1) {
                        if (cap < GL_LIGHT2) {
                            goto block_78;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    var_a2 = 0x4000;
                    if (cap == GL_LIGHT0) {
block_78:
                        var_a0_2 = __glCurrentContext->unk6A8;
                        var_a1 = 1 << (cap - 0x4000);
                        goto block_4;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                goto block_42;
            }
            var_a1_2 = cap < GL_CLIP_PLANE0;
            if (var_a1_2 == 0) {
                if (cap < GL_CLIP_PLANE1) {
                    goto block_42;
                }
                var_a2 = cap < GL_CLIP_PLANE3;
                if (var_a2 == 0) {
                    if (cap >= GL_CLIP_PLANE4) {
                        if (cap == GL_CLIP_PLANE4) {
                            goto block_42;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    goto block_42;
                }
                var_a1_2 = cap < GL_CLIP_PLANE2;
                var_a2 = cap < GL_CLIP_PLANE3;
                if (var_a1_2 == 0) {
                    if (var_a2 != 0) {
                        goto block_42;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                var_a1_2 = 0x3001;
                if (cap == GL_CLIP_PLANE1) {
block_42:
                    __Mgr_ReturnMode((SYMBOL_LOCATION.unk33C + cap) - 0x3000, 1, 1, __glCurrentContext);
                    var_a0 = (u32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x1F;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            var_a1_2 = cap < GL_POLYGON_OFFSET_POINT;
            if (var_a1_2 == 0) {
                var_a2 = 0x2A02;
                if (cap < GL_POLYGON_OFFSET_LINE) {
                    var_a0 = __glCurrentContext->unk6A4 & 0x200;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                if (cap == GL_POLYGON_OFFSET_LINE) {
                    var_a0 = __glCurrentContext->unk6A4 & 0x400;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            var_a1_2 = cap < GL_TEXTURE_2D;
            var_a2 = cap < 0xDE2U;
            if (var_a1_2 == 0) {
                if (var_a2 != 0) {
                    var_a0_2 = __glCurrentContext->unk6A0;
                    var_a1 = 0x20000;
                    goto block_4;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            if (cap == GL_TEXTURE_1D) {
                var_a0_2 = __glCurrentContext->unk6A0;
                var_a1 = 0x10000;
                goto block_4;
            }
            /* Duplicate return node #61. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
            return 0U;
        }
        if (cap >= GL_TEXTURE_GEN_R) {
            var_a1 = 0x100000;
            if (cap < GL_TEXTURE_GEN_Q) {
                var_a0_2 = __glCurrentContext->unk6A0;
                goto block_4;
            }
            var_a1_2 = cap < GL_MAP1_VERTEX_3;
            if (var_a1_2 == 0) {
                if (cap >= GL_MAP1_VERTEX_4) {
                    if (cap >= GL_MAP2_TEXTURE_COORD_1) {
                        var_a1_2 = cap < GL_MAP2_TEXTURE_COORD_4;
                        if (cap >= GL_MAP2_TEXTURE_COORD_2) {
                            var_a2 = cap < GL_MAP2_VERTEX_3;
                            if (var_a1_2 == 0) {
                                if (var_a2 == 0) {
                                    if (cap == GL_MAP2_VERTEX_3) {
                                        goto block_3;
                                    }
                                    /* Duplicate return node #61. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                    return 0U;
                                }
                                goto block_3;
                            }
                            if (cap >= GL_MAP2_TEXTURE_COORD_3) {
                                if (cap < GL_MAP2_TEXTURE_COORD_4) {
                                    goto block_3;
                                }
                                /* Duplicate return node #61. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                                return 0U;
                            }
                            var_a1_2 = 0xDB4;
                            if (cap == GL_MAP2_TEXTURE_COORD_2) {
                                goto block_3;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        goto block_3;
                    }
                    var_a2 = cap < GL_MAP2_INDEX;
                    if (var_a2 == 0) {
                        if (cap >= GL_MAP2_NORMAL) {
                            if (cap == GL_MAP2_NORMAL) {
                                goto block_3;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        goto block_3;
                    }
                    var_a1_2 = cap < GL_MAP2_COLOR_4;
                    var_a2 = cap < GL_MAP2_INDEX;
                    if (var_a1_2 == 0) {
                        if (var_a2 != 0) {
block_3:
                            var_a0_2 = __glCurrentContext->unk6B4;
                            var_a1 = 1 << (cap - 0xDB0);
                            goto block_4;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    var_a2 = 0xD98;
                    if (cap == GL_MAP1_VERTEX_4) {
                        goto block_56;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                goto block_56;
            }
            var_a1_2 = cap < GL_MAP1_NORMAL;
            var_a2 = cap < GL_MAP1_TEXTURE_COORD_1;
            if (var_a1_2 == 0) {
                if (var_a2 == 0) {
                    if (cap >= GL_MAP1_TEXTURE_COORD_3) {
                        var_a1_2 = 0xD96;
                        if (cap >= GL_MAP1_TEXTURE_COORD_4) {
                            if (cap == GL_MAP1_TEXTURE_COORD_4) {
                                goto block_56;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        goto block_56;
                    }
                    if (cap >= GL_MAP1_TEXTURE_COORD_2) {
                        if (cap < GL_MAP1_TEXTURE_COORD_3) {
                            goto block_56;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    var_a1_2 = 0xD93;
                    if (cap == GL_MAP1_TEXTURE_COORD_1) {
                        goto block_56;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                goto block_56;
            }
            if (cap >= GL_MAP1_COLOR_4) {
                var_a1_2 = cap - 0xD90;
                if (cap < GL_MAP1_INDEX) {
                    goto block_56;
                }
                var_a2 = 0xD91;
                if (cap == GL_MAP1_INDEX) {
block_56:
                    var_a0_2 = __glCurrentContext->unk6B0;
                    var_a1 = 1 << (cap - 0xD90);
                    goto block_4;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            var_a1_2 = cap < GL_AUTO_NORMAL;
            var_a2 = cap < 0xD81U;
            if (var_a1_2 == 0) {
                if (var_a2 != 0) {
                    var_a0_2 = __glCurrentContext->unk6A0;
                    var_a1 = 0x800000;
                    goto block_4;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            var_a1_2 = 0xC63;
            if (cap == GL_TEXTURE_GEN_Q) {
                var_a0_2 = __glCurrentContext->unk6A0;
                var_a1 = 0x200000;
                goto block_4;
            }
            /* Duplicate return node #61. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
            return 0U;
        }
        if (cap >= GL_STENCIL_TEST) {
            if (cap >= GL_STENCIL_CLEAR_VALUE) {
                var_a1_2 = cap < GL_COLOR_LOGIC_OP;
                if (cap >= GL_LOGIC_OP) {
                    var_a2 = cap < GL_TEXTURE_GEN_S;
                    if (var_a1_2 == 0) {
                        if (var_a2 == 0) {
                            var_a1_2 = 0xC61;
                            if (cap < GL_TEXTURE_GEN_T) {
                                var_a0_2 = __glCurrentContext->unk6A0;
                                var_a1 = 0x40000;
                                goto block_4;
                            }
                            if (cap == GL_TEXTURE_GEN_T) {
                                var_a0_2 = __glCurrentContext->unk6A0;
                                var_a1 = 0x80000;
                                goto block_4;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        var_a2 = cap < GL_SCISSOR_TEST;
                        if (var_a2 == 0) {
                            if (cap < 0xC12U) {
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk42C, 1, 1, __glCurrentContext);
                                var_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                                /* Duplicate return node #5. Try simplifying control flow for better match */
                                return var_a0 != 0;
                            }
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        var_a1_2 = 0xBF2;
                        if (cap == GL_COLOR_LOGIC_OP) {
                            var_a0 = __glCurrentContext->unk6A4 & 0x800;
                            /* Duplicate return node #5. Try simplifying control flow for better match */
                            return var_a0 != 0;
                        }
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                        return 0U;
                    }
                    var_a0 = __glCurrentContext->unk6A0 & 4;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                var_a1_2 = cap < GL_DITHER;
                var_a2 = cap < 0xBD1U;
                if (var_a1_2 == 0) {
                    if (var_a2 == 0) {
                        if (cap != GL_BLEND) {
                            /* Duplicate return node #61. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                            return 0U;
                        }
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk320, 1, 1, __glCurrentContext);
                        var_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                        /* Duplicate return node #5. Try simplifying control flow for better match */
                        return var_a0 != 0;
                    }
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk158, 1, 1, __glCurrentContext);
                    var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 1;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                var_a2 = cap < GL_ALPHA_TEST;
                if (var_a2 == 0) {
                    if (cap < GL_ALPHA_TEST_FUNC) {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk158, 1, 1, __glCurrentContext);
                        var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 0x40;
                        /* Duplicate return node #5. Try simplifying control flow for better match */
                        return var_a0 != 0;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                var_a1_2 = 0xBA1;
                if (cap == GL_NORMALIZE) {
                    var_a0_2 = __glCurrentContext->unk6A0;
                    var_a1 = 0x400000;
block_4:
                    var_a0 = var_a0_2 & var_a1;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            __Mgr_ReturnMode(SYMBOL_LOCATION.unk158, 1, 1, __glCurrentContext);
            var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 0x10;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            return var_a0 != 0;
        }
        if (cap >= GL_CULL_FACE) {
            var_a1_2 = cap < GL_FOG;
            if (cap < GL_CULL_FACE_MODE) {
                var_a0 = __glCurrentContext->unk6A0 & 0x1000;
                /* Duplicate return node #5. Try simplifying control flow for better match */
                return var_a0 != 0;
            }
            var_a2 = cap < GL_FOG_INDEX;
            if (var_a1_2 == 0) {
                if (var_a2 == 0) {
                    if (cap == GL_DEPTH_TEST) {
                        var_a0 = (u32) __glCurrentContext->unk9265;
                        /* Duplicate return node #5. Try simplifying control flow for better match */
                        return var_a0 != 0;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk154, 1, 1, __glCurrentContext);
                var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 0x20000;
                if (var_a0 == 0) {
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk3E4, 0, 1);
                    var_a0 = SYMBOL_LOCATION.unk440 & M2C_ERROR(/* Read from unset register $v0 */);
                }
                /* Duplicate return node #5. Try simplifying control flow for better match */
                return var_a0 != 0;
            }
            var_a1_2 = cap < GL_COLOR_MATERIAL;
            var_a2 = cap < 0xB58U;
            if (var_a1_2 == 0) {
                if (var_a2 != 0) {
                    var_a0 = __glCurrentContext->unk6A0 & 0x80;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            var_a1_2 = 0xB50;
            if (cap == GL_LIGHTING) {
                var_a0 = __glCurrentContext->unk6A0 & 0x40;
                /* Duplicate return node #5. Try simplifying control flow for better match */
                return var_a0 != 0;
            }
            /* Duplicate return node #61. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
            return 0U;
        }
        var_a1_2 = cap < GL_LINE_STIPPLE;
        var_a2 = cap < GL_LINE_STIPPLE_PATTERN;
        if (var_a1_2 == 0) {
            if (var_a2 == 0) {
                if (cap >= GL_POLYGON_STIPPLE) {
                    if (cap < GL_EDGE_FLAG) {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk154, 1, 1, __glCurrentContext);
                        var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 1;
                        /* Duplicate return node #5. Try simplifying control flow for better match */
                        return var_a0 != 0;
                    }
                    /* Duplicate return node #61. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                    return 0U;
                }
                var_a2 = 0xB41;
                if (cap == GL_POLYGON_SMOOTH) {
                    var_a0 = __glCurrentContext->unk6A0 & 0x800;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    return var_a0 != 0;
                }
                /* Duplicate return node #61. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
                return 0U;
            }
            __Mgr_ReturnMode(SYMBOL_LOCATION.unk154, 1, 1, __glCurrentContext);
            var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 0x20;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            return var_a0 != 0;
        }
        var_a1_2 = cap < GL_LINE_WIDTH;
        if (cap >= GL_LINE_SMOOTH) {
            if (var_a1_2 != 0) {
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk474, 1, 1, __glCurrentContext);
                var_a0 = M2C_ERROR(/* Read from unset register $v0 */);
                /* Duplicate return node #5. Try simplifying control flow for better match */
                return var_a0 != 0;
            }
            /* Duplicate return node #61. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
            return 0U;
        }
        var_a1_2 = 0xB10;
        if (cap == GL_POINT_SMOOTH) {
            var_a0 = __glCurrentContext->unk6A0 & 0x400;
            return var_a0 != 0;
        }
        __glSetError(0x500, var_a1_2, var_a2, __glCurrentContext);
        return 0U;
    }
    __glSetError(0x502);
    return 0U;
}

void spin_and_return(s32 arg0) {
    void *temp_at;

    temp_at = __glCurrentContext->unk9D48;
    temp_at->unk7000C = 0x20000;
    *(s32 *)0x74080 = 0xA104;
    *(s32 *)0x74080 = arg0;
    __glMgrim_IsEnabled((enum GLenum) temp_at);
}

void spin_and_return_inner(void *arg0, void *arg1) {
    s32 var_a3;

    var_a3 = 5;
    if (!(arg0->unk70008 & 0x20000)) {
loop_1:
        var_a3 -= 1;
        if (var_a3 != 0) {
            if (arg0->unk70008 & 0x20000) {
                goto block_3;
            }
            goto loop_1;
        }
        goto block_4;
    }
block_3:
    if (var_a3 == 0) {
block_4:
        if (!(arg0->unk70008 & 0x20000)) {
            do {
                sginap(0);
            } while (!(arg0->unk70008 & 0x20000));
        }
    }
    arg1->unk1210->unk10->unk1C = 0;
}

void __Mgr_GetCurrentAttrState(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s8 temp_ra;
    void *temp_at;
    void *temp_ra_10;
    void *temp_ra_11;
    void *temp_ra_12;
    void *temp_ra_13;
    void *temp_ra_2;
    void *temp_ra_3;
    void *temp_ra_4;
    void *temp_ra_5;
    void *temp_ra_6;
    void *temp_ra_7;
    void *temp_ra_8;
    void *temp_ra_9;

    sp10 = arg1;
    if (arg0 != 0xB00) {
        if (arg0 != 0xB01) {
            sp18 = arg2;
            if (arg0 != 0xB02) {
                if (arg0 != 0xB03) {
                    sp8 = arg3;
                    if (arg0 == 0xB43) {
                        temp_ra = (__glMgrim_IsEnabled(0xFU) & 0x01C00000) != 0;
                        temp_at = *sp8 + 1;
                        *sp8 = temp_at;
                        temp_at->unk-1 = temp_ra;
                    }
                } else {
                    sp0 = __glMgrim_IsEnabled(0xBU);
                    temp_ra_2 = *sp10 + 4;
                    *sp10 = temp_ra_2;
                    temp_ra_2->unk-4 = sp0;
                    sp0 = __glMgrim_IsEnabled(0xCU);
                    temp_ra_3 = *sp10 + 4;
                    *sp10 = temp_ra_3;
                    temp_ra_3->unk-4 = sp0;
                    sp0 = __glMgrim_IsEnabled(0xDU);
                    temp_ra_4 = *sp10 + 4;
                    *sp10 = temp_ra_4;
                    temp_ra_4->unk-4 = sp0;
                    sp0 = __glMgrim_IsEnabled(0xEU);
                    temp_ra_5 = *sp10 + 4;
                    *sp10 = temp_ra_5;
                    temp_ra_5->unk-4 = sp0;
                }
            } else {
                sp0 = __glMgrim_IsEnabled(GL_QUAD_STRIP);
                temp_ra_6 = *sp18 + 4;
                *sp18 = temp_ra_6;
                temp_ra_6->unk-4 = sp0;
                sp0 = __glMgrim_IsEnabled(GL_POLYGON);
                temp_ra_7 = *sp18 + 4;
                *sp18 = temp_ra_7;
                temp_ra_7->unk-4 = sp0;
                sp0 = __glMgrim_IsEnabled(0xAU);
                temp_ra_8 = *sp18 + 4;
                *sp18 = temp_ra_8;
                temp_ra_8->unk-4 = sp0;
            }
        } else {
            sp0 = __glMgrim_IsEnabled(GL_TRIANGLES);
            temp_ra_9 = *sp10 + 4;
            *sp10 = temp_ra_9;
            temp_ra_9->unk-4 = sp0;
        }
    } else {
        sp18 = arg2;
        sp0 = __glMgrim_IsEnabled(GL_TRIANGLES);
        temp_ra_10 = *sp18 + 4;
        *sp18 = temp_ra_10;
        temp_ra_10->unk-4 = sp0;
        sp0 = __glMgrim_IsEnabled(GL_TRIANGLE_STRIP);
        temp_ra_11 = *sp18 + 4;
        *sp18 = temp_ra_11;
        temp_ra_11->unk-4 = sp0;
        sp0 = __glMgrim_IsEnabled(GL_TRIANGLE_FAN);
        temp_ra_12 = *sp18 + 4;
        *sp18 = temp_ra_12;
        temp_ra_12->unk-4 = sp0;
        sp0 = __glMgrim_IsEnabled(GL_QUADS);
        temp_ra_13 = *sp18 + 4;
        *sp18 = temp_ra_13;
        temp_ra_13->unk-4 = sp0;
    }
}
