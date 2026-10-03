typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x610];                 /* maybe part of gcState[0x185]? */
    /* 0x06A8 */ s32 unk6A8;                        /* inferred */
    /* 0x06AC */ char pad6AC[0x564];                /* maybe part of unk6A8[0x15A]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x93B];                /* maybe part of yInverted[0x93C]? */
    /* 0x1608 */ void *unk1608;                     /* inferred */
    /* 0x160C */ char pad160C[0x1780];              /* maybe part of unk1608[0x5E1]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0xAC];
    /* 0x31CC */ s32 unk31CC;                       /* inferred */
    /* 0x31D0 */ s32 unk31D0;                       /* inferred */
    /* 0x31D4 */ char pad31D4[0x4968];              /* maybe part of unk31D0[0x125B]? */
    /* 0x7B3C */ s32 unk7B3C;                       /* inferred */
    /* 0x7B40 */ char pad7B40[8];                   /* maybe part of unk7B3C[3]? */
    /* 0x7B48 */ __GLcontext *unk7B48;              /* inferred */
    /* 0x7B4C */ s32 unk7B4C;                       /* inferred */
    /* 0x7B50 */ char pad7B50[0x44];                /* maybe part of unk7B4C[0x12]? */
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

void __glMgrim_Swaptmesh(__GLcontext *gc, ...) {
    s32 temp_v0;
    void *temp_a2;

    if (__glCurrentContext->unk925C != 0) {
        temp_a2 = __glCurrentContext->procs.table[0x46];
        temp_v0 = __glCurrentContext->unk31D0;
        __glCurrentContext->unk31D0 = __glCurrentContext->unk31CC;
        __glCurrentContext->unk31CC = temp_v0;
        if (temp_a2 != __glOddTStripVertex) {
            if (temp_a2 == __glEvenTStripVertex) {
                __glCurrentContext->procs.table[0x46] = __glOddTStripVertex;
            }
            return;
        }
        __glCurrentContext->procs.table[0x46] = __glEvenTStripVertex;
        return;
    }
    *(s32 *)0x74080 = 0xDC00;
}

void __glMgrim_lmcolor(__GLcontext *gc, ...) {
    s32 temp_a2;

    temp_a2 = __glCurrentContext->unk6A8;
    if (gc != (__GLcontext *)1) {
        __glCurrentContext->unk6A8 = temp_a2 & 0x7FFFFFFF;
        __glCurrentContext->unk7B3C &= ~1;
        if (__glCurrentContext->modes.rgbMode != 0) {
            *(s32 *)0x74080 = 0xDE00;
        }
    } else {
        __glCurrentContext->unk6A8 = temp_a2 | 0x80000000;
        __glCurrentContext->unk7B3C |= 1;
        if (__glCurrentContext->modes.rgbMode != 0) {
            *(void *)0x74080 = 0xDD00;
        }
    }
}

void __glMgrim_FullScreen(__GLcontext *gc, s32 arg1, ...) {
    __GLcontext *temp_a0;
    s32 temp_a5;

    temp_a5 = __glCurrentContext->unk7B4C;
    temp_a0 = __glCurrentContext->unk7B48;
    __glMgrIoctl(temp_a0, temp_a0, 0x3F1, sp, 6, 2, temp_a5, temp_a5, 2, 6, 3, gc, __glCurrentContext->unk7B4C, arg1);
}

void __glMgrim_n3f(__GLcontext *gc, ...) {
    if (__glCurrentContext->unk925C == 0) {
        *(void *(**)(__GLcontext *, u32))0x74080 = (void *(*)(__GLcontext *, u32))0xDF0C;
        *(void *(**)(__GLcontext *, u32))0x74080 = gc->imports.malloc;
        *(void *(**)(__GLcontext *, u32))0x74080 = (void *(*)(__GLcontext *, u32)) gc->imports.calloc;
        *(void *(**)(__GLcontext *, u32))0x74080 = (void *(*)(__GLcontext *, u32)) gc->imports.realloc;
        return;
    }
    __glCurrentContext->unk1608->unk6E8(__glCurrentContext);
}

void __glMgrim_IglooInterfaceSGIX(__GLcontext *gc, void *arg1, ...) {
    s32 temp_a0;
    s32 temp_a2;

    switch (gc) {                                   /* irregular */
    default:
        __glSetError(0x500, 0x819E, __glCurrentContext, arg1);
        break;
    case 0x81A1:
        temp_a0 = __glCurrentContext->unk7B3C;
        if (arg1->unk0 != 0) {
            temp_a2 = temp_a0 | 2;
            __glCurrentContext->unk7B3C = temp_a2;
            if ((temp_a2 & 1) && (__glCurrentContext->procs.table[0x53] == __glNop)) {
                __glClampAndScaleColor(__glCurrentContext, temp_a2, __glCurrentContext, arg1);
            }
        } else {
            __glCurrentContext->unk7B3C = temp_a0 & ~2;
        }
        break;
    case 0x81A0:
        __glMgrim_Clear((u32) gc);
        break;
    case 0x819E:
        __glMgrim_Clear(arg1->unk0);
        break;
    case 0x81A3:
        __glMgrim_Clear((u32) arg1->unk3);
        break;
    }
}
