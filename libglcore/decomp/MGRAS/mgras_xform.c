typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x8D4];                 /* maybe part of gcState[0x236]? */
    /* 0x096C */ s32 unk96C;                        /* inferred */
    /* 0x0970 */ s32 unk970;                        /* inferred */
    /* 0x0974 */ s32 unk974;                        /* inferred */
    /* 0x0978 */ s32 unk978;                        /* inferred */
    /* 0x097C */ char pad97C[0x294];                /* maybe part of unk978[0xA6]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x37];                 /* maybe part of yInverted[0x38]? */
    /* 0x0D04 */ u32 unkD04;                        /* inferred */
    /* 0x0D08 */ char padD08[8];                    /* maybe part of unkD04[3]? */
    /* 0x0D10 */ s32 unkD10;                        /* inferred */
    /* 0x0D14 */ char padD14[0x2078];               /* maybe part of unkD10[0x81F]? */
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

void __glMgrim_Scissor(s32 x, s32 y, s32 width, s32 height) {
    if (__glBeginMode != 1) {
        if ((width >= 0) && (height >= 0)) {
            __glCurrentContext->unk978 = height;
            __glCurrentContext->unk974 = width;
            __glCurrentContext->unk970 = y;
            __glCurrentContext->unk96C = x;
            *(s32 *)0x74080 = 0x3910;
            *(s32 *)0x74080 = x;
            *(s32 *)0x74080 = width - 1;
            *(s32 *)0x74080 = y;
            *(s32 *)0x74080 = height - 1;
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ClipPlane(enum GLenum plane, f64 *equation) {
    s32 temp_a2;

    if (__glBeginMode != 1) {
        temp_a2 = plane < GL_CLIP_PLANE0;
        if ((temp_a2 == 0) && ((u32) __glCurrentContext->unkD04 >= (u32) (plane - 0x3000))) {
            *(enum GLenum *)0x74080 = 0xA514;
            *(enum GLenum *)0x74080 = plane;
            *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) equation->unk0;
            *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) equation->unk8;
            *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) equation->unk10;
            *(enum GLenum *)0x74080 = (bitwise enum GLenum) (f32) equation->unk18;
            return;
        }
        __glSetError(0x500, temp_a2);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PassClipPlane(__GLcontext *gc, s64 arg1, s64 arg2, ...) {
    s64 sp10;
    s64 sp8;

    sp10 = arg2;
    sp8 = arg1;
    *(__GLcontext **)0x74080 = (__GLcontext *)0xA514;
    *(__GLcontext **)0x74080 = gc;
    *(__GLcontext **)0x74080 = (__GLcontext *) sp8;
    *(__GLcontext **)0x74080 = unkspC;
    *(__GLcontext **)0x74080 = (__GLcontext *) sp10;
    *(__GLcontext **)0x74080 = unksp14;
}

void __glMgrim_MultMatrixf(f32 *m) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.6233e-41f;
        *(f32 *)0x74080 = m->unk0;
        *(f32 *)0x74080 = m->unk4;
        *(f32 *)0x74080 = m->unk8;
        *(f32 *)0x74080 = m->unkC;
        *(f32 *)0x74080 = m->unk10;
        *(f32 *)0x74080 = m->unk14;
        *(f32 *)0x74080 = m->unk18;
        *(f32 *)0x74080 = m->unk1C;
        *(f32 *)0x74080 = m->unk20;
        *(f32 *)0x74080 = m->unk24;
        *(f32 *)0x74080 = m->unk28;
        *(f32 *)0x74080 = m->unk2C;
        *(f32 *)0x74080 = m->unk30;
        *(f32 *)0x74080 = m->unk34;
        *(f32 *)0x74080 = m->unk38;
        *(f32 *)0x74080 = m->unk3C;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_MultMatrixd(f64 *m) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.6233e-41f;
        *(f32 *)0x74080 = (f32) m->unk0;
        *(f32 *)0x74080 = (f32) m->unk8;
        *(f32 *)0x74080 = (f32) m->unk10;
        *(f32 *)0x74080 = (f32) m->unk18;
        *(f32 *)0x74080 = (f32) m->unk20;
        *(f32 *)0x74080 = (f32) m->unk28;
        *(f32 *)0x74080 = (f32) m->unk30;
        *(f32 *)0x74080 = (f32) m->unk38;
        *(f32 *)0x74080 = (f32) m->unk40;
        *(f32 *)0x74080 = (f32) m->unk48;
        *(f32 *)0x74080 = (f32) m->unk50;
        *(f32 *)0x74080 = (f32) m->unk58;
        *(f32 *)0x74080 = (f32) m->unk60;
        *(f32 *)0x74080 = (f32) m->unk68;
        *(f32 *)0x74080 = (f32) m->unk70;
        *(f32 *)0x74080 = (f32) m->unk78;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_LoadMatrixf(f32 *m) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.5515e-41f;
        *(f32 *)0x74080 = m->unk0;
        *(f32 *)0x74080 = m->unk4;
        *(f32 *)0x74080 = m->unk8;
        *(f32 *)0x74080 = m->unkC;
        *(f32 *)0x74080 = m->unk10;
        *(f32 *)0x74080 = m->unk14;
        *(f32 *)0x74080 = m->unk18;
        *(f32 *)0x74080 = m->unk1C;
        *(f32 *)0x74080 = m->unk20;
        *(f32 *)0x74080 = m->unk24;
        *(f32 *)0x74080 = m->unk28;
        *(f32 *)0x74080 = m->unk2C;
        *(f32 *)0x74080 = m->unk30;
        *(f32 *)0x74080 = m->unk34;
        *(f32 *)0x74080 = m->unk38;
        *(f32 *)0x74080 = m->unk3C;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_LoadMatrixd(f64 *m) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.5515e-41f;
        *(f32 *)0x74080 = (f32) m->unk0;
        *(f32 *)0x74080 = (f32) m->unk8;
        *(f32 *)0x74080 = (f32) m->unk10;
        *(f32 *)0x74080 = (f32) m->unk18;
        *(f32 *)0x74080 = (f32) m->unk20;
        *(f32 *)0x74080 = (f32) m->unk28;
        *(f32 *)0x74080 = (f32) m->unk30;
        *(f32 *)0x74080 = (f32) m->unk38;
        *(f32 *)0x74080 = (f32) m->unk40;
        *(f32 *)0x74080 = (f32) m->unk48;
        *(f32 *)0x74080 = (f32) m->unk50;
        *(f32 *)0x74080 = (f32) m->unk58;
        *(f32 *)0x74080 = (f32) m->unk60;
        *(f32 *)0x74080 = (f32) m->unk68;
        *(f32 *)0x74080 = (f32) m->unk70;
        *(f32 *)0x74080 = (f32) m->unk78;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_LoadIdentity(void) {
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0x2C00;
        return;
    }
    __glSetError(0x502, 0x70000);
}

void __glMgrim_Frustum(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    if (__glBeginMode != 1) {
        if (((f32) (right - left) != 0.0f) && ((f32) (top - bottom) != 0.0f) && ((f32) (zFar - zNear) != 0.0f)) {
            *(f32 *)0x74080 = 1.8688e-41f;
            *(f32 *)0x74080 = (f32) left;
            *(f32 *)0x74080 = (f32) right;
            *(f32 *)0x74080 = (f32) bottom;
            *(f32 *)0x74080 = (f32) top;
            *(f32 *)0x74080 = (f32) zNear;
            *(f32 *)0x74080 = (f32) zFar;
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Ortho(f64 left, f64 right, f64 bottom, f64 top, f64 zNear, f64 zFar) {
    if (__glBeginMode != 1) {
        if (((right - left) != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) && ((top - bottom) != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) && ((zFar - zNear) != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))) {
            *(f32 *)0x74080 = 1.9046e-41f;
            *(f32 *)0x74080 = (f32) left;
            *(f32 *)0x74080 = (f32) right;
            *(f32 *)0x74080 = (f32) bottom;
            *(f32 *)0x74080 = (f32) top;
            *(f32 *)0x74080 = (f32) zNear;
            *(f32 *)0x74080 = (f32) zFar;
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PopMatrix(void) {
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0x2E00;
        return;
    }
    __glSetError(0x502, 0x70000);
}

void __glMgrim_PushMatrix(void) {
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0x2F00;
        return;
    }
    __glSetError(0x502, 0x70000);
}

void __glMgrim_Rotated(f64 angle, f64 x, f64 y, f64 z) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.7242e-41f;
        *(f32 *)0x74080 = (f32) angle;
        *(f32 *)0x74080 = (f32) x;
        *(f32 *)0x74080 = (f32) y;
        *(f32 *)0x74080 = (f32) z;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Rotatef(f32 angle, f32 x, f32 y, f32 z) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.7242e-41f;
        *(f32 *)0x74080 = angle;
        *(f32 *)0x74080 = x;
        *(f32 *)0x74080 = y;
        *(f32 *)0x74080 = z;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Scaled(f64 x, f64 y, f64 z) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.7595e-41f;
        *(f32 *)0x74080 = (f32) x;
        *(f32 *)0x74080 = (f32) y;
        *(f32 *)0x74080 = (f32) z;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Scalef(f32 x, f32 y, f32 z) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.7595e-41f;
        *(f32 *)0x74080 = x;
        *(f32 *)0x74080 = y;
        *(f32 *)0x74080 = z;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Translated(f64 x, f64 y, f64 z) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.7953e-41f;
        *(f32 *)0x74080 = (f32) x;
        *(f32 *)0x74080 = (f32) y;
        *(f32 *)0x74080 = (f32) z;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Translatef(f32 x, f32 y, f32 z) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 1.7953e-41f;
        *(f32 *)0x74080 = x;
        *(f32 *)0x74080 = y;
        *(f32 *)0x74080 = z;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_Viewport(s32 x, s32 y, s32 width, s32 height) {
    s32 temp_a5;
    s32 var_a2;
    s32 var_a3;

    var_a2 = width;
    var_a3 = height;
    if (__glBeginMode != 1) {
        if (var_a2 >= 0) {
            if (var_a3 >= 0) {
                temp_a5 = __glCurrentContext->unkD10;
                if (temp_a5 < var_a3) {
                    var_a3 = temp_a5;
                }
                if (temp_a5 < var_a2) {
                    var_a2 = temp_a5;
                }
                *(s32 *)0x74080 = 0x3310;
                *(s32 *)0x74080 = x;
                *(s32 *)0x74080 = y;
                *(s32 *)0x74080 = var_a2;
                *(s32 *)0x74080 = var_a3;
                return;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(0x501);
            return;
        }
        __glSetError(0x501);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_MatrixMode(enum GLenum mode) {
    s32 temp_a1;

    if (__glBeginMode != 1) {
        temp_a1 = mode < GL_MODELVIEW;
        if (((temp_a1 != 0) || (mode >= 0x1703U)) && (mode != GL_COLOR)) {
            __glSetError(0x500, temp_a1);
            return;
        }
        *(enum GLenum *)0x74080 = 0x2A04;
        *(enum GLenum *)0x74080 = mode;
        return;
    }
    __glSetError(0x502);
}
