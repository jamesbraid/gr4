typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0xC0];                  /* maybe part of gcState[0x31]? */
    /* 0x0158 */ f32 unk158;                        /* inferred */
    /* 0x015C */ f32 unk15C;                        /* inferred */
    /* 0x0160 */ f32 unk160;                        /* inferred */
    /* 0x0164 */ f32 unk164;                        /* inferred */
    /* 0x0168 */ char pad168[0x500];                /* maybe part of unk164[0x141]? */
    /* 0x0668 */ f32 unk668;                        /* inferred */
    /* 0x066C */ f32 unk66C;                        /* inferred */
    /* 0x0670 */ char pad670[0x5A0];                /* maybe part of unk66C[0x169]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x5F];                 /* maybe part of yInverted[0x60]? */
    /* 0x0D2C */ s32 unkD2C;                        /* inferred */
    /* 0x0D30 */ s32 unkD30;                        /* inferred */
    /* 0x0D34 */ char padD34[0x2058];               /* maybe part of unkD30[0x817]? */
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

void __glMgrim_RasterPos2dWrapper(__GLcontext *gc, f64 fparg0, f64 fparg1, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2d(fparg0, fparg1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos2fWrapper(__GLcontext *gc, f32 fparg0, f32 fparg1, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2f(fparg0, fparg1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos2iWrapper(__GLcontext *gc, s32 arg1, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2i((s32) gc, arg1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos2sWrapper(__GLcontext *gc, s16 arg1, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2s((s16) gc, arg1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3dWrapper(__GLcontext *gc, f64 fparg0, f64 fparg1, f64 fparg2, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3d(fparg0, fparg1, fparg2);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3fWrapper(__GLcontext *gc, f32 fparg0, f32 fparg1, f32 fparg2, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3f(fparg0, fparg1, fparg2);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3iWrapper(__GLcontext *gc, s32 arg1, s32 arg2, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3i((s32) gc, arg1, arg2);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3sWrapper(__GLcontext *gc, s16 arg1, s16 arg2, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3s((s16) gc, arg1, arg2);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4dWrapper(__GLcontext *gc, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4d(fparg0, fparg1, fparg2, fparg3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4fWrapper(__GLcontext *gc, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4f(fparg0, fparg1, fparg2, fparg3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4iWrapper(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4i((s32) gc, arg1, arg2, arg3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4sWrapper(__GLcontext *gc, s16 arg1, s16 arg2, s16 arg3, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4s((s16) gc, arg1, arg2, arg3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos2dvWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2dv((f64 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos2fvWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2fv((f32 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos2ivWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2iv((s32 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos2svWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos2sv((s16 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3dvWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3dv((f64 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3fvWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3fv((f32 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3ivWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3iv((s32 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos3svWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos3sv((s16 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4dvWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4dv((f64 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4fvWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4fv((f32 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4ivWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4iv((s32 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_RasterPos4svWrapper(__GLcontext *gc, ...) {
    if (__glBeginMode != 1) {
        __glMgrim_RasterPos4sv((s16 *) gc);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2d(__GLcontext *gc, f64 fparg0, f64 fparg1, ...) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s7->unk925C == 0) || (temp_s7->unk9260 != 0)) {
            __glMgrim_RasterPos2d(fparg0, fparg1);
        } else {
            __glim_RasterPos2d(fparg0, fparg1);
            sp0 = (f64) (temp_s7->unk158 - (f32) temp_s7->unkD2C);
            sp8 = (f64) (temp_s7->unk15C - (f32) temp_s7->unkD30);
            sp10 = (f64) ((temp_s7->unk160 - temp_s7->unk66C) / temp_s7->unk668);
            sp18 = (f64) temp_s7->unk164;
            __glMgrim_RasterPos4dv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2f(__GLcontext *gc, f32 fparg0, f32 fparg1, ...) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s7->unk925C == 0) || (temp_s7->unk9260 != 0)) {
            __glMgrim_RasterPos2f(fparg0, fparg1);
        } else {
            __glim_RasterPos2f(fparg0, fparg1);
            sp0 = temp_s7->unk158 - (f32) temp_s7->unkD2C;
            sp4 = temp_s7->unk15C - (f32) temp_s7->unkD30;
            sp8 = (temp_s7->unk160 - temp_s7->unk66C) / temp_s7->unk668;
            spC = temp_s7->unk164;
            __glMgrim_RasterPos4fv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2i(__GLcontext *gc, s32 arg1, ...) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos2i((s32) gc, arg1);
        } else {
            __glim_RasterPos2i((s32) gc, arg1);
            sp0 = (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp4 = (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp8 = (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            spC = (s32) temp_s0->unk164;
            __glMgrim_RasterPos4iv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2s(__GLcontext *gc, s16 arg1, ...) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos2s((s16) gc, arg1);
        } else {
            __glim_RasterPos2s((s16) gc, arg1);
            sp0 = (s16) (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp2 = (s16) (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp4 = (s16) (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp6 = (s16) (s32) temp_s0->unk164;
            __glMgrim_RasterPos4sv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3d(__GLcontext *gc, f64 fparg0, f64 fparg1, f64 fparg2, ...) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s7->unk925C == 0) || (temp_s7->unk9260 != 0)) {
            __glMgrim_RasterPos3d(fparg0, fparg1, fparg2);
        } else {
            __glim_RasterPos3d(fparg0, fparg1, fparg2);
            sp0 = (f64) (temp_s7->unk158 - (f32) temp_s7->unkD2C);
            sp8 = (f64) (temp_s7->unk15C - (f32) temp_s7->unkD30);
            sp10 = (f64) ((temp_s7->unk160 - temp_s7->unk66C) / temp_s7->unk668);
            sp18 = (f64) temp_s7->unk164;
            __glMgrim_RasterPos4dv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3f(__GLcontext *gc, f32 fparg0, f32 fparg1, f32 fparg2, ...) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s7->unk925C == 0) || (temp_s7->unk9260 != 0)) {
            __glMgrim_RasterPos3f(fparg0, fparg1, fparg2);
        } else {
            __glim_RasterPos3f(fparg0, fparg1, fparg2);
            sp0 = temp_s7->unk158 - (f32) temp_s7->unkD2C;
            sp4 = temp_s7->unk15C - (f32) temp_s7->unkD30;
            sp8 = (temp_s7->unk160 - temp_s7->unk66C) / temp_s7->unk668;
            spC = temp_s7->unk164;
            __glMgrim_RasterPos4fv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3i(__GLcontext *gc, s32 arg1, s32 arg2, ...) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos3i((s32) gc, arg1, arg2);
        } else {
            __glim_RasterPos3i((s32) gc, arg1, arg2);
            sp0 = (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp4 = (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp8 = (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            spC = (s32) temp_s0->unk164;
            __glMgrim_RasterPos4iv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3s(__GLcontext *gc, s16 arg1, s16 arg2, ...) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos3s((s16) gc, arg1, arg2);
        } else {
            __glim_RasterPos3s((s16) gc, arg1, arg2);
            sp0 = (s16) (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp2 = (s16) (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp4 = (s16) (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp6 = (s16) (s32) temp_s0->unk164;
            __glMgrim_RasterPos4sv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4d(__GLcontext *gc, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3, ...) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s7->unk925C == 0) || (temp_s7->unk9260 != 0)) {
            __glMgrim_RasterPos4d(fparg0, fparg1, fparg2, fparg3);
        } else {
            __glim_RasterPos4d(fparg0, fparg1, fparg2, fparg3);
            sp0 = (f64) (temp_s7->unk158 - (f32) temp_s7->unkD2C);
            sp8 = (f64) (temp_s7->unk15C - (f32) temp_s7->unkD30);
            sp10 = (f64) ((temp_s7->unk160 - temp_s7->unk66C) / temp_s7->unk668);
            sp18 = (f64) temp_s7->unk164;
            __glMgrim_RasterPos4dv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4f(__GLcontext *gc, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, ...) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_s7;

    temp_s7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s7->unk925C == 0) || (temp_s7->unk9260 != 0)) {
            __glMgrim_RasterPos4f(fparg0, fparg1, fparg2, fparg3);
        } else {
            __glim_RasterPos4f(fparg0, fparg1, fparg2, fparg3);
            sp0 = temp_s7->unk158 - (f32) temp_s7->unkD2C;
            sp4 = temp_s7->unk15C - (f32) temp_s7->unkD30;
            sp8 = (temp_s7->unk160 - temp_s7->unk66C) / temp_s7->unk668;
            spC = temp_s7->unk164;
            __glMgrim_RasterPos4fv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4i(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, ...) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos4i((s32) gc, arg1, arg2, arg3);
        } else {
            __glim_RasterPos4i((s32) gc, arg1, arg2, arg3);
            sp0 = (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp4 = (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp8 = (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            spC = (s32) temp_s0->unk164;
            __glMgrim_RasterPos4iv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4s(__GLcontext *gc, s16 arg1, s16 arg2, s16 arg3, ...) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos4s((s16) gc, arg1, arg2, arg3);
        } else {
            __glim_RasterPos4s((s16) gc, arg1, arg2, arg3);
            sp0 = (s16) (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp2 = (s16) (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp4 = (s16) (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp6 = (s16) (s32) temp_s0->unk164;
            __glMgrim_RasterPos4sv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2dv(__GLcontext *gc, ...) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos2dv((f64 *) gc);
        } else {
            __glim_RasterPos2dv((f64 *) gc);
            sp0 = (f64) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp8 = (f64) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp10 = (f64) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp18 = (f64) temp_s0->unk164;
            __glMgrim_RasterPos4dv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2fv(__GLcontext *gc, ...) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos2fv((f32 *) gc);
        } else {
            __glim_RasterPos2fv((f32 *) gc);
            sp0 = temp_s0->unk158 - (f32) temp_s0->unkD2C;
            sp4 = temp_s0->unk15C - (f32) temp_s0->unkD30;
            sp8 = (temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668;
            spC = temp_s0->unk164;
            __glMgrim_RasterPos4fv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2iv(__GLcontext *gc, ...) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos2iv((s32 *) gc);
        } else {
            __glim_RasterPos2iv((s32 *) gc);
            sp0 = (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp4 = (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp8 = (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            spC = (s32) temp_s0->unk164;
            __glMgrim_RasterPos4iv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos2sv(__GLcontext *gc, ...) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos2sv((s16 *) gc);
        } else {
            __glim_RasterPos2sv((s16 *) gc);
            sp0 = (s16) (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp2 = (s16) (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp4 = (s16) (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp6 = (s16) (s32) temp_s0->unk164;
            __glMgrim_RasterPos4sv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3dv(__GLcontext *gc, ...) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos3dv((f64 *) gc);
        } else {
            __glim_RasterPos3dv((f64 *) gc);
            sp0 = (f64) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp8 = (f64) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp10 = (f64) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp18 = (f64) temp_s0->unk164;
            __glMgrim_RasterPos4dv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3fv(__GLcontext *gc, ...) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos3fv((f32 *) gc);
        } else {
            __glim_RasterPos3fv((f32 *) gc);
            sp0 = temp_s0->unk158 - (f32) temp_s0->unkD2C;
            sp4 = temp_s0->unk15C - (f32) temp_s0->unkD30;
            sp8 = (temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668;
            spC = temp_s0->unk164;
            __glMgrim_RasterPos4fv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3iv(__GLcontext *gc, ...) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos3iv((s32 *) gc);
        } else {
            __glim_RasterPos3iv((s32 *) gc);
            sp0 = (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp4 = (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp8 = (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            spC = (s32) temp_s0->unk164;
            __glMgrim_RasterPos4iv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos3sv(__GLcontext *gc, ...) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos3sv((s16 *) gc);
        } else {
            __glim_RasterPos3sv((s16 *) gc);
            sp0 = (s16) (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp2 = (s16) (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp4 = (s16) (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp6 = (s16) (s32) temp_s0->unk164;
            __glMgrim_RasterPos4sv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4dv(__GLcontext *gc, ...) {
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos4dv((f64 *) gc);
        } else {
            __glim_RasterPos4dv((f64 *) gc);
            sp0 = (f64) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp8 = (f64) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp10 = (f64) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp18 = (f64) temp_s0->unk164;
            __glMgrim_RasterPos4dv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4fv(__GLcontext *gc, ...) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos4fv((f32 *) gc);
        } else {
            __glim_RasterPos4fv((f32 *) gc);
            sp0 = temp_s0->unk158 - (f32) temp_s0->unkD2C;
            sp4 = temp_s0->unk15C - (f32) temp_s0->unkD30;
            sp8 = (temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668;
            spC = temp_s0->unk164;
            __glMgrim_RasterPos4fv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4iv(__GLcontext *gc, ...) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos4iv((s32 *) gc);
        } else {
            __glim_RasterPos4iv((s32 *) gc);
            sp0 = (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp4 = (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp8 = (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            spC = (s32) temp_s0->unk164;
            __glMgrim_RasterPos4iv(sp);
        }
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftRasterPos4sv(__GLcontext *gc, ...) {
    s16 sp6;
    s16 sp4;
    s16 sp2;
    s16 sp0;
    __GLcontext *temp_s0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) {
            __glMgrim_RasterPos4sv((s16 *) gc);
        } else {
            __glim_RasterPos4sv((s16 *) gc);
            sp0 = (s16) (s32) (temp_s0->unk158 - (f32) temp_s0->unkD2C);
            sp2 = (s16) (s32) (temp_s0->unk15C - (f32) temp_s0->unkD30);
            sp4 = (s16) (s32) ((temp_s0->unk160 - temp_s0->unk66C) / temp_s0->unk668);
            sp6 = (s16) (s32) temp_s0->unk164;
            __glMgrim_RasterPos4sv(sp);
        }
        return;
    }
    __glSetError(0x502);
}
