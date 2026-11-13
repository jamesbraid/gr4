typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x664];                 /* maybe part of gcState[0x19A]? */
    /* 0x06FC */ s32 unk6FC;                        /* inferred */
    /* 0x0700 */ char pad700[0x510];                /* maybe part of unk6FC[0x145]? */
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
    /* 0x3120 */ char pad3120[0x4994];              /* maybe part of procs[0x17]? */
    /* 0x7AB4 */ ? unk7AB4;                         /* inferred */
    /* 0x7AB4 */ char pad7AB4[0x6C];
    /* 0x7B20 */ ? (*unk7B20)(? *, s32);            /* inferred */
    /* 0x7B24 */ char pad7B24[0x70];                /* maybe part of unk7B20[0x1D]? */
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

void __glMgrim_Clear(u32 mask) {
    __GLcontext *temp_s7;
    s32 temp_a1;
    s32 temp_a2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_v0;

    temp_s7 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a1 = mask & ~0x4700;
        if (temp_a1 == 0) {
            if (temp_s7->renderMode == GL_RENDER) {
                var_v0 = mask & 0x200;
                if (mask & 0x4000) {
                    temp_a2 = temp_s7->unk6FC;
                    switch (temp_a2) {              /* irregular */
                    default:
                        *(s32 *)0x74080 = 0x1500;
                        break;
                    case 0x409:
                    case 0x40A:
                    case 0x40B:
                    case 0x40C:
                        if ((temp_a2 - 0x409) < temp_s7->modes.numAuxBuffers) {
                            *(void *)0x74080 = 0x1500;
                        }
                        break;
                    }
                    var_v0 = mask & 0x200;
                }
                var_a1 = mask & 0x400;
                if (var_v0 != 0) {
                    var_a1 = mask & 0x400;
                    if (temp_s7->modes.haveAccumBuffer != 0) {
                        temp_s7->unk7B20(&temp_s7->unk7AB4, var_a1);
                        var_a1 = mask & 0x400;
                    }
                }
                var_a1_2 = mask & 0x100;
                if (var_a1 != 0) {
                    if (temp_s7->modes.haveStencilBuffer != 0) {
                        *(void *)0x74080 = 0x4C00;
                    }
                    var_a1_2 = mask & 0x100;
                }
                if (var_a1_2 != 0) {
                    if (temp_s7->modes.haveDepthBuffer != 0) {
                        *(void *)0x74080 = 0x4A00;
                    }
                }
            }
            return;
        }
        __glSetError(0x501, temp_a1);
        return;
    }
    __glSetError(0x502);
}
