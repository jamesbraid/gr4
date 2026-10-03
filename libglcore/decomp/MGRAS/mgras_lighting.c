typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x10];                  /* maybe part of gcState[5]? */
    /* 0x00A8 */ f32 unkA8;                         /* inferred */
    /* 0x00AC */ f32 unkAC;                         /* inferred */
    /* 0x00B0 */ f32 unkB0;                         /* inferred */
    /* 0x00B4 */ f32 unkB4;                         /* inferred */
    /* 0x00B8 */ char padB8[0xE0];                  /* maybe part of unkB4[0x39]? */
    /* 0x0198 */ f32 unk198;                        /* inferred */
    /* 0x019C */ f32 unk19C;                        /* inferred */
    /* 0x01A0 */ f32 unk1A0;                        /* inferred */
    /* 0x01A4 */ f32 unk1A4;                        /* inferred */
    /* 0x01A8 */ char pad1A8[0x4F8];                /* maybe part of unk1A4[0x13F]? */
    /* 0x06A0 */ s32 unk6A0;                        /* inferred */
    /* 0x06A4 */ char pad6A4[0x56C];                /* maybe part of unk6A0[0x15C]? */
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

extern ? sub_0dbf0000;

void __glMgrEnableLighting(__GLcontext *gc, ...) {
    if (gc->unk6A0 & 0x40) {
        *(s32 *)0x74080 = 0xD00;
    }
}

void __glMgrDisableLighting(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0xE00;
}

void __glMgrClampColor(__GLcontext *gc, ...) {
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f4;

    temp_f4 = gc->unkCD4;
    temp_f12 = gc->unk19C;
    temp_f10 = gc->unk1A4;
    temp_f13 = gc->unk198;
    temp_f11 = gc->unk1A0;
    if (temp_f13 < 0.0f) {
        gc->unkA8 = 0.0f;
    } else if (!(temp_f4 < temp_f13)) {
        gc->unkA8 = temp_f13;
    } else {
        gc->unkA8 = temp_f4;
    }
    if (!(temp_f12 < 0.0f)) {
        if (!(temp_f4 < temp_f12)) {
            gc->unkAC = temp_f12;
        } else {
            gc->unkAC = temp_f4;
        }
    } else {
        gc->unkAC = 0.0f;
    }
    if (!(temp_f11 < 0.0f)) {
        if (!(temp_f4 < temp_f11)) {
            gc->unkB0 = temp_f11;
        } else {
            gc->unkB0 = temp_f4;
        }
    } else {
        gc->unkB0 = 0.0f;
    }
    if (!(temp_f10 < 0.0f)) {
        if (!(temp_f4 < temp_f10)) {
            gc->unkB4 = temp_f10;
            return;
        }
        gc->unkB4 = temp_f4;
        return;
    }
    gc->unkB4 = 0.0f;
}

void __glMgrim_FrontFace(enum GLenum mode) {
    if (__glBeginMode != 1) {
        if ((mode != GL_CW) && (mode != GL_CCW)) {
            __glSetError(0x500, 0x900);
            return;
        }
        *(enum GLenum *)0x74080 = 0x5604;
        *(enum GLenum *)0x74080 = mode;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Lightf(enum GLenum light, enum GLenum pname, f32 param) {
    s32 temp_a2;

    if (__glBeginMode != 1) {
        temp_a2 = light < GL_LIGHT0;
        if ((temp_a2 == 0) && (light < 0x4008U)) {
            switch (pname) {                        /* irregular */
            default:
                __glSetError(0x500, 0x1207);
                return;
            case GL_QUADRATIC_ATTENUATION:
                *(s32 *)0x74080 = 0x5508;
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) param;
                return;
            case GL_SPOT_EXPONENT:
                *(void *)0x74080 = 0x5108;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) param;
                return;
            case GL_SPOT_CUTOFF:
                *(void *)0x74080 = 0x5208;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) param;
                return;
            case GL_CONSTANT_ATTENUATION:
                *(void *)0x74080 = 0x5308;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) param;
                return;
            case GL_LINEAR_ATTENUATION:
                *(void *)0x74080 = 0x5408;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) param;
                return;
            }
        } else {
            __glSetError(0x500, temp_a2);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_Lightfv(enum GLenum light, enum GLenum pname, f32 *params) {
    s32 temp_a3;
    u32 temp_a4;
    void *(**temp_a4_2)(__GLcontext *, u32);

    if (__glBeginMode != 1) {
        temp_a3 = light < GL_LIGHT0;
        if (temp_a3 == 0) {
            temp_a4 = pname - 0x1200;
            if (light < 0x4008U) {
                temp_a4_2 = (temp_a4 * 4) + (&sub_0dbf0000 - 0x3000);
                if (temp_a4 < 0xAU) {
                    switch (*temp_a4_2) {           /* unable to parse jump table */
                    case 0:
                        *(s32 *)0x74080 = 0x1214;
                        *(s32 *)0x74080 = light - 0x4000;
                        *(s32 *)0x74080 = (bitwise s32) params->unk0;
                        *(s32 *)0x74080 = params->unk4;
                        *(s32 *)0x74080 = params->unk8;
                        *(s32 *)0x74080 = params->unkC;
                        break;
                    case 7:
                        *(void *)0x74080 = 0x5308;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        break;
                    case 1:
                        *(void *)0x74080 = 0x1314;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        *(void *)0x74080 = (s32) params->unk4;
                        *(void *)0x74080 = (s32) params->unk8;
                        *(void *)0x74080 = (s32) params->unkC;
                        break;
                    case 2:
                        *(void *)0x74080 = 0x1414;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        *(void *)0x74080 = (s32) params->unk4;
                        *(void *)0x74080 = (s32) params->unk8;
                        *(void *)0x74080 = (s32) params->unkC;
                        break;
                    case 3:
                        *(void *)0x74080 = 0x4F14;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        *(void *)0x74080 = (s32) params->unk4;
                        *(void *)0x74080 = (s32) params->unk8;
                        *(void *)0x74080 = (s32) params->unkC;
                        break;
                    case 4:
                        *(void *)0x74080 = 0x5010;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        *(void *)0x74080 = (s32) params->unk4;
                        *(void *)0x74080 = (s32) params->unk8;
                        break;
                    case 5:
                        *(void *)0x74080 = 0x5108;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        break;
                    case 6:
                        *(void *)0x74080 = 0x5208;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        break;
                    case 8:
                        *(void *)0x74080 = 0x5408;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        break;
                    case 9:
                        *(void *)0x74080 = 0x5508;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) params->unk0;
                        break;
                    }
                    return;
                }
                __glSetError(0x500, temp_a3, temp_a4_2);
                return;
            }
        }
        __glSetError(0x500, temp_a3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Lighti(enum GLenum light, enum GLenum pname, s32 param) {
    s32 temp_a3;

    if (__glBeginMode != 1) {
        temp_a3 = light < GL_LIGHT0;
        if ((temp_a3 == 0) && (light < 0x4008U)) {
            switch (pname) {                        /* irregular */
            default:
                __glSetError(0x500, 0x1207);
                return;
            case GL_QUADRATIC_ATTENUATION:
                *(s32 *)0x74080 = 0x5508;
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) (f32) param;
                return;
            case GL_SPOT_EXPONENT:
                *(void *)0x74080 = 0x5108;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) (f32) param;
                return;
            case GL_SPOT_CUTOFF:
                *(void *)0x74080 = 0x5208;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) (f32) param;
                return;
            case GL_CONSTANT_ATTENUATION:
                *(void *)0x74080 = 0x5308;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) (f32) param;
                return;
            case GL_LINEAR_ATTENUATION:
                *(void *)0x74080 = 0x5408;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                *(s32 *)0x74080 = light - 0x4000;
                *(s32 *)0x74080 = (bitwise s32) (f32) param;
                return;
            }
        } else {
            __glSetError(0x500, temp_a3);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_Lightiv(enum GLenum light, enum GLenum pname, s32 *params) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f3;
    s32 temp_a3;
    u32 temp_a4;
    void *(**temp_a4_2)(__GLcontext *, u32);

    if (__glBeginMode != 1) {
        temp_a3 = light < GL_LIGHT0;
        if (temp_a3 == 0) {
            temp_a4 = pname - 0x1200;
            if (light < 0x4008U) {
                temp_a4_2 = (temp_a4 * 4) + (&sub_0dbf0000 - 0x2FD8);
                if (temp_a4 < 0xAU) {
                    switch (*temp_a4_2) {           /* unable to parse jump table */
                    case 0:
                        temp_f1 = __glCurrentContext->unkCEC;
                        *(s32 *)0x74080 = 0x1214;
                        *(s32 *)0x74080 = light - 0x4000;
                        *(s32 *)0x74080 = (bitwise s32) ((((f32) params->unk0 * 2.0f) + 1.0f) * temp_f1);
                        *(s32 *)0x74080 = (bitwise s32) ((((f32) params->unk4 * 2.0f) + 1.0f) * temp_f1);
                        *(s32 *)0x74080 = (bitwise s32) ((((f32) params->unk8 * 2.0f) + 1.0f) * temp_f1);
                        *(s32 *)0x74080 = (bitwise s32) ((((f32) params->unkC * 2.0f) + 1.0f) * temp_f1);
                        break;
                    case 7:
                        *(void *)0x74080 = 0x5308;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk0;
                        break;
                    case 1:
                        temp_f3 = __glCurrentContext->unkCEC;
                        *(void *)0x74080 = 0x1314;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unk0 * 2.0f) + 1.0f) * temp_f3);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unk4 * 2.0f) + 1.0f) * temp_f3);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unk8 * 2.0f) + 1.0f) * temp_f3);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unkC * 2.0f) + 1.0f) * temp_f3);
                        break;
                    case 2:
                        temp_f0 = __glCurrentContext->unkCEC;
                        *(void *)0x74080 = 0x1414;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unk0 * 2.0f) + 1.0f) * temp_f0);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unk4 * 2.0f) + 1.0f) * temp_f0);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unk8 * 2.0f) + 1.0f) * temp_f0);
                        *(void *)0x74080 = (bitwise s32) ((((f32) params->unkC * 2.0f) + 1.0f) * temp_f0);
                        break;
                    case 3:
                        *(void *)0x74080 = 0x4F14;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk0;
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk4;
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk8;
                        *(void *)0x74080 = (bitwise s32) (f32) params->unkC;
                        break;
                    case 4:
                        *(void *)0x74080 = 0x5010;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk0;
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk4;
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk8;
                        break;
                    case 5:
                        *(void *)0x74080 = 0x5108;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk0;
                        break;
                    case 6:
                        *(void *)0x74080 = 0x5208;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk0;
                        break;
                    case 8:
                        *(void *)0x74080 = 0x5408;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk0;
                        break;
                    case 9:
                        *(void *)0x74080 = 0x5508;
                        *(void *)0x74080 = (s32) (light - 0x4000);
                        *(void *)0x74080 = (bitwise s32) (f32) params->unk0;
                        break;
                    }
                    return;
                }
                __glSetError(0x500, temp_a3, temp_a4_2, __glCurrentContext);
                return;
            }
        }
        __glSetError(0x500, temp_a3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_LightModelf(enum GLenum pname, f32 param) {
    if (__glBeginMode != 1) {
        if (pname != GL_LIGHT_MODEL_LOCAL_VIEWER) {
            if (pname != GL_LIGHT_MODEL_TWO_SIDE) {
                __glSetError(0x500, 0xB51);
                return;
            }
            *(s32 *)0x74080 = 0x5904;
            *(s32 *)0x74080 = (s32) param;
        } else {
            *(void *)0x74080 = 0x5804;
            *(void *)0x74080 = (s32) param;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_LightModelfv(enum GLenum pname, f32 *params) {
    if (__glBeginMode != 1) {
        switch (pname) {                            /* irregular */
        default:
            __glSetError(0x500, 0xB53);
            return;
        case GL_LIGHT_MODEL_TWO_SIDE:
            *(s32 *)0x74080 = 0x5904;
            *(s32 *)0x74080 = (s32) params->unk0;
            return;
        case GL_LIGHT_MODEL_AMBIENT:
            *(void *)0x74080 = 0x570C;
            *(void *)0x74080 = (bitwise s32) params->unk0;
            *(void *)0x74080 = (s32) params->unk4;
            *(void *)0x74080 = (s32) params->unk8;
            break;
        case GL_LIGHT_MODEL_LOCAL_VIEWER:
            *(void *)0x74080 = 0x5804;
            *(void *)0x74080 = (s32) params->unk0;
            break;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_LightModeli(enum GLenum pname, s32 param) {
    if (__glBeginMode != 1) {
        if (pname != GL_LIGHT_MODEL_LOCAL_VIEWER) {
            if (pname != GL_LIGHT_MODEL_TWO_SIDE) {
                __glSetError(0x500, 0xB51);
                return;
            }
            *(s32 *)0x74080 = 0x5904;
            *(s32 *)0x74080 = param;
        } else {
            *(void *)0x74080 = 0x5804;
            *(void *)0x74080 = param;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_LightModeliv(enum GLenum pname, s32 *params) {
    f32 temp_f1;

    if (__glBeginMode != 1) {
        switch (pname) {                            /* irregular */
        default:
            __glSetError(0x500, 0xB51, &__glCurrentContext->imports.malloc);
            return;
        case GL_LIGHT_MODEL_AMBIENT:
            temp_f1 = __glCurrentContext->unkCEC;
            *(f32 *)0x74080 = 3.1227e-41f;
            *(f32 *)0x74080 = (((f32) params->unk0 * 2.0f) + 1.0f) * temp_f1;
            *(f32 *)0x74080 = (((f32) params->unk4 * 2.0f) + 1.0f) * temp_f1;
            *(f32 *)0x74080 = (((f32) params->unk8 * 2.0f) + 1.0f) * temp_f1;
            return;
        case GL_LIGHT_MODEL_LOCAL_VIEWER:
            *(void *)0x74080 = 3.1574e-41f;
            *(void *)0x74080 = (bitwise f32) params->unk0;
            break;
        case GL_LIGHT_MODEL_TWO_SIDE:
            *(void *)0x74080 = 3.1933e-41f;
            *(void *)0x74080 = (bitwise f32) params->unk0;
            break;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_Materialf(enum GLenum face, enum GLenum pname, f32 param) {
    if ((face < GL_FRONT) || (face >= GL_LEFT)) {
        if (face != GL_FRONT_AND_BACK) {
            __glSetError(0x500, 0x408);
            return;
        }
        goto block_5;
    }
block_5:
    if (pname != GL_SHININESS) {
        __glSetError(0x500, 0x408);
        return;
    }
    *(enum GLenum *)0x74080 = 0x1118;
    *(enum GLenum *)0x74080 = face;
    *(enum GLenum *)0x74080 = pname;
    *(enum GLenum *)0x74080 = (bitwise enum GLenum) param;
    *(enum GLenum *)0x74080 = GL_ZERO;
    *(enum GLenum *)0x74080 = GL_ZERO;
    *(enum GLenum *)0x74080 = GL_ZERO;
}

void __glMgrim_Materialfv(enum GLenum face, enum GLenum pname, f32 *params) {
    s32 var_a3;
    s32 var_at;

    if ((face < GL_FRONT) || (var_a3 = 0x408, ((face < GL_LEFT) == 0))) {
        var_a3 = 0x408;
        var_at = pname < GL_EMISSION;
        if (face != GL_FRONT_AND_BACK) {
            __glSetError(0x500, 0x408);
            return;
        }
        goto block_5;
    }
    var_at = pname < GL_EMISSION;
block_5:
    if (var_at == 0) {
        if (pname >= GL_SHININESS) {
            var_a3 = pname < GL_COLOR_INDEXES;
            if (pname >= GL_AMBIENT_AND_DIFFUSE) {
                if ((var_a3 == 0) && (pname != GL_COLOR_INDEXES)) {
                    /* Duplicate return node #10. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a3);
                    return;
                }
                /* Duplicate return node #16. Try simplifying control flow for better match */
                *(enum GLenum *)0x74080 = 0x1118;
                *(enum GLenum *)0x74080 = face;
                *(enum GLenum *)0x74080 = pname;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) params->unk0;
                *(enum GLenum *)0x74080 = params->unk4;
                *(enum GLenum *)0x74080 = params->unk8;
                *(enum GLenum *)0x74080 = params->unkC;
                return;
            }
            if (pname == GL_SHININESS) {
                /* Duplicate return node #16. Try simplifying control flow for better match */
                *(enum GLenum *)0x74080 = 0x1118;
                *(enum GLenum *)0x74080 = face;
                *(enum GLenum *)0x74080 = pname;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) params->unk0;
                *(enum GLenum *)0x74080 = params->unk4;
                *(enum GLenum *)0x74080 = params->unk8;
                *(enum GLenum *)0x74080 = params->unkC;
                return;
            }
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glSetError(0x500, var_a3);
            return;
        }
        /* Duplicate return node #16. Try simplifying control flow for better match */
        *(enum GLenum *)0x74080 = 0x1118;
        *(enum GLenum *)0x74080 = face;
        *(enum GLenum *)0x74080 = pname;
        *(enum GLenum *)0x74080 = (bitwise enum GLenum) params->unk0;
        *(enum GLenum *)0x74080 = params->unk4;
        *(enum GLenum *)0x74080 = params->unk8;
        *(enum GLenum *)0x74080 = params->unkC;
        return;
    }
    if (pname >= GL_DIFFUSE) {
        var_a3 = 0x1202;
        if (pname >= GL_SPECULAR) {
            if (pname == GL_SPECULAR) {
                /* Duplicate return node #16. Try simplifying control flow for better match */
                *(enum GLenum *)0x74080 = 0x1118;
                *(enum GLenum *)0x74080 = face;
                *(enum GLenum *)0x74080 = pname;
                *(enum GLenum *)0x74080 = (bitwise enum GLenum) params->unk0;
                *(enum GLenum *)0x74080 = params->unk4;
                *(enum GLenum *)0x74080 = params->unk8;
                *(enum GLenum *)0x74080 = params->unkC;
                return;
            }
            /* Duplicate return node #10. Try simplifying control flow for better match */
            __glSetError(0x500, var_a3);
            return;
        }
        /* Duplicate return node #16. Try simplifying control flow for better match */
        *(enum GLenum *)0x74080 = 0x1118;
        *(enum GLenum *)0x74080 = face;
        *(enum GLenum *)0x74080 = pname;
        *(enum GLenum *)0x74080 = (bitwise enum GLenum) params->unk0;
        *(enum GLenum *)0x74080 = params->unk4;
        *(enum GLenum *)0x74080 = params->unk8;
        *(enum GLenum *)0x74080 = params->unkC;
        return;
    }
    if (pname == GL_AMBIENT) {
        *(enum GLenum *)0x74080 = 0x1118;
        *(enum GLenum *)0x74080 = face;
        *(enum GLenum *)0x74080 = pname;
        *(enum GLenum *)0x74080 = (bitwise enum GLenum) params->unk0;
        *(enum GLenum *)0x74080 = params->unk4;
        *(enum GLenum *)0x74080 = params->unk8;
        *(enum GLenum *)0x74080 = params->unkC;
        return;
    }
    __glSetError(0x500, var_a3);
}

void __glMgrim_Materiali(enum GLenum face, enum GLenum pname, s32 param) {
    if ((face < GL_FRONT) || (face >= GL_LEFT)) {
        if (face != GL_FRONT_AND_BACK) {
            __glSetError(0x500, 0x408);
            return;
        }
        goto block_5;
    }
block_5:
    if (pname != GL_SHININESS) {
        __glSetError(0x500, 0x408);
        return;
    }
    *(enum GLenum *)0x74080 = 0x1118;
    *(enum GLenum *)0x74080 = face;
    *(enum GLenum *)0x74080 = pname;
    *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) param;
    *(enum GLenum *)0x74080 = GL_ZERO;
    *(enum GLenum *)0x74080 = GL_ZERO;
    *(enum GLenum *)0x74080 = GL_ZERO;
}

void __glMgrim_Materialiv(enum GLenum face, enum GLenum pname, s32 *params) {
    f32 temp_f0;
    s32 var_a3;
    s32 var_v0;

    if ((face < GL_FRONT) || (var_a3 = 0x408, ((face < GL_LEFT) == 0))) {
        var_a3 = 0x408;
        var_v0 = pname < GL_DIFFUSE;
        if (face != GL_FRONT_AND_BACK) {
            __glSetError(0x500, 0x408, &__glCurrentContext->imports.malloc);
            return;
        }
        goto block_5;
    }
    var_v0 = pname < GL_DIFFUSE;
block_5:
    if (pname >= GL_EMISSION) {
        if (pname >= GL_SHININESS) {
            var_a3 = pname < GL_COLOR_INDEXES;
            if (pname >= GL_AMBIENT_AND_DIFFUSE) {
                if (var_a3 == 0) {
                    if (pname == GL_COLOR_INDEXES) {
                        *(enum GLenum *)0x74080 = 0x1118;
                        *(enum GLenum *)0x74080 = face;
                        *(enum GLenum *)0x74080 = pname;
                        *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) params->unk0;
                        *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) params->unk4;
                        *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) params->unk8;
                        *(enum GLenum *)0x74080 = GL_ZERO;
                    } else {
                        goto block_14;
                    }
                } else {
                    goto block_16;
                }
            } else {
                var_a3 = 0x74080;
                if (pname == GL_SHININESS) {
                    *0x74080 = 0x1118U;
                    *0x74080 = face;
                    *0x74080 = pname;
                    *0x74080 = (bitwise enum GLenum) (f32) params->unk0;
                    *0x74080 = GL_ZERO;
                    *0x74080 = GL_ZERO;
                    *0x74080 = GL_ZERO;
                } else {
                    goto block_14;
                }
            }
        } else {
            goto block_16;
        }
    } else {
        if (var_v0 == 0) {
            var_a3 = 0x1202;
            if ((pname >= GL_SPECULAR) && (pname != GL_SPECULAR)) {
                goto block_14;
            }
            goto block_16;
        }
        if (pname == GL_AMBIENT) {
block_16:
            temp_f0 = __glCurrentContext->unkCEC;
            *(void *)0x74080 = 0x1118U;
            *(void *)0x74080 = face;
            *(void *)0x74080 = pname;
            *(void *)0x74080 = (bitwise enum GLenum) ((((f32) params->unk0 * 2.0f) + 1.0f) * temp_f0);
            *(void *)0x74080 = (bitwise enum GLenum) ((((f32) params->unk4 * 2.0f) + 1.0f) * temp_f0);
            *(void *)0x74080 = (bitwise enum GLenum) ((((f32) params->unk8 * 2.0f) + 1.0f) * temp_f0);
            *(void *)0x74080 = (bitwise enum GLenum) ((((f32) params->unkC * 2.0f) + 1.0f) * temp_f0);
        } else {
block_14:
            __glSetError(0x500, var_a3, &__glCurrentContext->imports.malloc);
        }
    }
}
