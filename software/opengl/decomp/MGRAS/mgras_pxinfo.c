typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ s32 unk98;                         /* inferred */
    /* 0x009C */ s32 unk9C;                         /* inferred */
    /* 0x00A0 */ u8 (*unkA0)(__GLcontext *);        /* inferred */
    /* 0x00A4 */ u32 unkA4;                         /* inferred */
    /* 0x00A8 */ u32 unkA8;                         /* inferred */
    /* 0x00AC */ s32 unkAC;                         /* inferred */
    /* 0x00B0 */ s32 unkB0;                         /* inferred */
    /* 0x00B4 */ s32 unkB4;                         /* inferred */
    /* 0x00B8 */ u32 unkB8;                         /* inferred */
    /* 0x00BC */ char padBC[0x24];                  /* maybe part of unkB8[0xA]? */
    /* 0x00E0 */ s32 unkE0;                         /* inferred */
    /* 0x00E4 */ s32 unkE4;                         /* inferred */
    /* 0x00E8 */ s32 unkE8;                         /* inferred */
    /* 0x00EC */ s32 unkEC;                         /* inferred */
    /* 0x00F0 */ char padF0[8];                     /* maybe part of unkEC[3]? */
    /* 0x00F8 */ u32 unkF8;                         /* inferred */
    /* 0x00FC */ s32 unkFC;                         /* inferred */
    /* 0x0100 */ s32 unk100;                        /* inferred */
    /* 0x0104 */ char pad104[4];
    /* 0x0108 */ s32 unk108;                        /* inferred */
    /* 0x010C */ char pad10C[0x38];                 /* maybe part of unk108[0xF]? */
    /* 0x0144 */ s32 unk144;                        /* inferred */
    /* 0x0148 */ char pad148[0x54];                 /* maybe part of unk144[0x16]? */
    /* 0x019C */ s32 unk19C;                        /* inferred */
    /* 0x01A0 */ char pad1A0[4];
    /* 0x01A4 */ s32 unk1A4;                        /* inferred */
    /* 0x01A8 */ s32 unk1A8;                        /* inferred */
    /* 0x01AC */ char pad1AC[0x38];                 /* maybe part of unk1A8[0xF]? */
    /* 0x01E4 */ s32 unk1E4;                        /* inferred */
    /* 0x01E8 */ s32 unk1E8;                        /* inferred */
    /* 0x01EC */ char pad1EC[0x7C];                 /* maybe part of unk1E8[0x20]? */
    /* 0x0268 */ ? unk268;                          /* inferred */
    /* 0x0268 */ char pad268[0x1CC];
    /* 0x0434 */ s32 unk434;                        /* inferred */
    /* 0x0438 */ char pad438[4];
    /* 0x043C */ s32 unk43C;                        /* inferred */
    /* 0x0440 */ s32 unk440;                        /* inferred */
    /* 0x0444 */ char pad444[0xC];                  /* maybe part of unk440[4]? */
    /* 0x0450 */ void *unk450;                      /* inferred */
    /* 0x0454 */ s32 unk454;                        /* inferred */
    /* 0x0458 */ u32 unk458;                        /* inferred */
    /* 0x045C */ s32 unk45C;                        /* inferred */
    /* 0x0460 */ u32 unk460;                        /* inferred */
    /* 0x0464 */ s32 unk464;                        /* inferred */
    /* 0x0468 */ s32 unk468;                        /* inferred */
    /* 0x046C */ u32 unk46C;                        /* inferred */
    /* 0x0470 */ u32 unk470;                        /* inferred */
    /* 0x0474 */ s32 unk474;                        /* inferred */
    /* 0x0478 */ s32 unk478;                        /* inferred */
    /* 0x047C */ s32 unk47C;                        /* inferred */
    /* 0x0480 */ s32 unk480;                        /* inferred */
    /* 0x0484 */ void *(*unk484)(__GLcontext *, s8 *, s8 *); /* inferred */
    /* 0x0488 */ u32 unk488;                        /* inferred */
    /* 0x048C */ s32 unk48C;                        /* inferred */
    /* 0x0490 */ s32 unk490;                        /* inferred */
    /* 0x0494 */ s8 unk494;                         /* inferred */
    /* 0x0495 */ s8 unk495;                         /* inferred */
    /* 0x0496 */ char pad496[2];                    /* maybe part of unk495[3]? */
    /* 0x0498 */ s32 unk498;                        /* inferred */
    /* 0x049C */ char pad49C[8];                    /* maybe part of unk498[3]? */
    /* 0x04A4 */ s32 unk4A4;                        /* inferred */
    /* 0x04A8 */ s32 unk4A8;                        /* inferred */
    /* 0x04AC */ f32 unk4AC;                        /* inferred */
    /* 0x04B0 */ char pad4B0[0xC];                  /* maybe part of unk4AC[4]? */
    /* 0x04BC */ s8 unk4BC;                         /* inferred */
    /* 0x04BD */ char pad4BD[3];                    /* maybe part of unk4BC[4]? */
    /* 0x04C0 */ u32 unk4C0;                        /* inferred */
    /* 0x04C4 */ u32 unk4C4;                        /* inferred */
    /* 0x04C8 */ u32 unk4C8;                        /* inferred */
    /* 0x04CC */ u32 unk4CC;                        /* inferred */
    /* 0x04D0 */ s32 unk4D0;                        /* inferred */
    /* 0x04D4 */ s32 unk4D4;                        /* inferred */
    /* 0x04D8 */ u32 unk4D8;                        /* inferred */
    /* 0x04DC */ u32 unk4DC;                        /* inferred */
    /* 0x04E0 */ s32 unk4E0;                        /* inferred */
    /* 0x04E4 */ s32 unk4E4;                        /* inferred */
    /* 0x04E8 */ s32 unk4E8;                        /* inferred */
    /* 0x04EC */ s32 unk4EC;                        /* inferred */
    /* 0x04F0 */ void *(*unk4F0)(__GLcontext *, s8 *, s8 *); /* inferred */
    /* 0x04F4 */ u32 unk4F4;                        /* inferred */
    /* 0x04F8 */ s32 unk4F8;                        /* inferred */
    /* 0x04FC */ u32 unk4FC;                        /* inferred */
    /* 0x0500 */ s8 unk500;                         /* inferred */
    /* 0x0501 */ s8 unk501;                         /* inferred */
    /* 0x0502 */ char pad502[2];                    /* maybe part of unk501[3]? */
    /* 0x0504 */ s32 unk504;                        /* inferred */
    /* 0x0508 */ char pad508[8];                    /* maybe part of unk504[3]? */
    /* 0x0510 */ s32 unk510;                        /* inferred */
    /* 0x0514 */ s32 unk514;                        /* inferred */
    /* 0x0518 */ f32 unk518;                        /* inferred */
    /* 0x051C */ char pad51C[4];
    /* 0x0520 */ s32 unk520;                        /* inferred */
    /* 0x0524 */ char pad524[4];
    /* 0x0528 */ s8 unk528;                         /* inferred */
    /* 0x0529 */ char pad529[3];                    /* maybe part of unk528[4]? */
    /* 0x052C */ s32 unk52C;                        /* inferred */
    /* 0x0530 */ s32 unk530;                        /* inferred */
    /* 0x0534 */ s32 unk534;                        /* inferred */
    /* 0x0538 */ s32 unk538;                        /* inferred */
    /* 0x053C */ s32 unk53C;                        /* inferred */
    /* 0x0540 */ s32 unk540;                        /* inferred */
    /* 0x0544 */ u32 unk544;                        /* inferred */
    /* 0x0548 */ u32 unk548;                        /* inferred */
    /* 0x054C */ s32 unk54C;                        /* inferred */
    /* 0x0550 */ s32 unk550;                        /* inferred */
    /* 0x0554 */ s32 unk554;                        /* inferred */
    /* 0x0558 */ s32 unk558;                        /* inferred */
    /* 0x055C */ void *(*unk55C)(__GLcontext *, s8 *, s8 *); /* inferred */
    /* 0x0560 */ u32 unk560;                        /* inferred */
    /* 0x0564 */ s32 unk564;                        /* inferred */
    /* 0x0568 */ s32 unk568;                        /* inferred */
    /* 0x056C */ s8 unk56C;                         /* inferred */
    /* 0x056D */ u8 unk56D;                         /* inferred */
    /* 0x056E */ char pad56E[2];                    /* maybe part of unk56D[3]? */
    /* 0x0570 */ s32 unk570;                        /* inferred */
    /* 0x0574 */ char pad574[8];                    /* maybe part of unk570[3]? */
    /* 0x057C */ s32 unk57C;                        /* inferred */
    /* 0x0580 */ s32 unk580;                        /* inferred */
    /* 0x0584 */ f32 unk584;                        /* inferred */
    /* 0x0588 */ char pad588[4];
    /* 0x058C */ s32 unk58C;                        /* inferred */
    /* 0x0590 */ char pad590[4];
    /* 0x0594 */ s8 unk594;                         /* inferred */
    /* 0x0595 */ char pad595[7];                    /* maybe part of unk594[8]? */
    /* 0x059C */ s32 unk59C;                        /* inferred */
    /* 0x05A0 */ s32 unk5A0;                        /* inferred */
    /* 0x05A4 */ void *(*unk5A4)(__GLcontext *, s8 *, s8 *); /* inferred */
    /* 0x05A8 */ u32 unk5A8;                        /* inferred */
    /* 0x05AC */ s32 unk5AC;                        /* inferred */
    /* 0x05B0 */ u32 unk5B0;                        /* inferred */
    /* 0x05B4 */ u32 unk5B4;                        /* inferred */
    /* 0x05B8 */ s32 unk5B8;                        /* inferred */
    /* 0x05BC */ s32 unk5BC;                        /* inferred */
    /* 0x05C0 */ s32 unk5C0;                        /* inferred */
    /* 0x05C4 */ u32 unk5C4;                        /* inferred */
    /* 0x05C8 */ s32 unk5C8;                        /* inferred */
    /* 0x05CC */ char pad5CC[4];
    /* 0x05D0 */ u32 unk5D0;                        /* inferred */
    /* 0x05D4 */ s32 *unk5D4;                       /* inferred */
    /* 0x05D8 */ s32 *unk5D8;                       /* inferred */
    /* 0x05DC */ s32 *unk5DC;                       /* inferred */
    /* 0x05E0 */ s32 *unk5E0;                       /* inferred */
    /* 0x05E4 */ u32 unk5E4;                        /* inferred */
    /* 0x05E8 */ s32 unk5E8;                        /* inferred */
    /* 0x05EC */ u32 unk5EC;                        /* inferred */
    /* 0x05F0 */ s32 unk5F0;                        /* inferred */
    /* 0x05F4 */ s32 unk5F4;                        /* inferred */
    /* 0x05F8 */ s32 unk5F8;                        /* inferred */
    /* 0x05FC */ s32 *unk5FC;                       /* inferred */
    /* 0x0600 */ s32 *unk600;                       /* inferred */
    /* 0x0604 */ s32 unk604;                        /* inferred */
    /* 0x0608 */ u32 unk608;                        /* inferred */
    /* 0x060C */ s32 unk60C;                        /* inferred */
    /* 0x0610 */ s32 unk610;                        /* inferred */
    /* 0x0614 */ char pad614[0x5FC];                /* maybe part of unk610[0x180]? */
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
    /* 0x3120 */ char pad3120[0x4724];              /* maybe part of procs[0x16]? */
    /* 0x7844 */ s32 unk7844;                       /* inferred */
    /* 0x7848 */ char pad7848[0x17C];               /* maybe part of unk7844[0x60]? */
    /* 0x79C4 */ s32 unk79C4;                       /* inferred */
    /* 0x79C8 */ char pad79C8[0x1CC];               /* maybe part of unk79C4[0x74]? */
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

typedef struct __GLexportsRec {
    /* 0x00 */ u8 (*destroyContext)(__GLcontext *);
    /* 0x04 */ u8 (*loseCurrent)(__GLcontext *);
    /* 0x08 */ u8 (*makeCurrent)(__GLcontext *);
    /* 0x0C */ u8 (*shareContext)(__GLcontext *, __GLcontext *);
    /* 0x10 */ u8 (*copyContext)(__GLcontext *, __GLcontext *, u32);
    /* 0x14 */ u8 (*forceCurrent)(__GLcontext *);
    /* 0x18 */ u8 (*notifyResize)(__GLcontext *);
    /* 0x1C */ void (*notifyDestroy)(__GLcontext *);
    /* 0x20 */ void (*notifySwapBuffers)(__GLcontext *);
    /* 0x24 */ void *(*dispatchExec)(__GLcontext *);
    /* 0x28 */ void (*beginDispatchOverride)(__GLcontext *);
    /* 0x2C */ void (*endDispatchOverride)(__GLcontext *);
    /* 0x30 */ char pad30[0x10];                    /* maybe part of endDispatchOverride[5]? */
    /* 0x40 */ s32 unk40;                           /* inferred */
    /* 0x44 */ s32 unk44;                           /* inferred */
} __GLexports;                                      /* size = 0x48 */

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
    /* 0x3C */ s32 unk3C;                           /* inferred */
    /* 0x40 */ s32 unk40;                           /* inferred */
    /* 0x44 */ s32 unk44;                           /* inferred */
    /* 0x48 */ s32 unk48;                           /* inferred */
} __GLimports;                                      /* size = 0x4C */

typedef struct __GLstencilBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ char pad1C[0x10];
    /* 0x2C */ ? unk2C;                             /* inferred */
    /* 0x2C */ char pad2C[4];
    /* 0x30 */ ? *unk30;                            /* inferred */
    /* 0x34 */ char pad34[0x40];                    /* maybe part of unk30[0x11]? */
    /* 0x74 */ void (*clear)(__GLstencilBuffer *, s64, __GLcontext *);
} __GLstencilBuffer;                                /* size = 0x78 */

f64 ceil(u32, u32, s32, s32, void *, s32, s32, s32, f64, ?); /* extern */
? fflush(void *);                                   /* extern */
? fprintf(void *, void *, s32 *);                   /* extern */
s32 getenv(void *);                                 /* extern */
extern ? SYMBOL_LOCATION;
extern ? __iob;
extern ? sub_0dbe0000;
extern ? sub_0dbf0000;

void __glMgrInitPixels(__GLcontext *gc, ...) {
    ? *temp_a2;
    s32 temp_a3;
    s32 temp_gp;
    s32 var_a0_2;
    s32 var_a2;
    u8 *var_a0;
    u8 temp_a1;
    void (**temp_v1)();
    void (*temp_v0)();

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x10BD1C;
    gc->frontBuffer.greenMax = temp_gp - 0x3CB0;
    var_a0 = temp_gp - 0x3CB0;
    if (getenv(&sub_0dbe0000 - 0x3BA8) != 0) {
        gc->frontBuffer.alphaTestFuncTable = var_a0;
    } else {
        gc->frontBuffer.alphaTestFuncTable = NULL;
    }
    temp_a1 = gc->unk9CA4;
    if (temp_a1 != 1) {
        goto block_4;
    }
    var_a0 = temp_gp - 0x3CB0;
    if (M2C_ERROR(/* Read from unset register $t9 */)(&sub_0dbe0000 - 0x3B98, temp_a1) != 0) {
        gc->frontBuffer.blueMax = (s32) var_a0;
    } else {
block_4:
        gc->frontBuffer.blueMax = 0;
    }
    temp_a2 = &gc->stencilBuffer.unk2C;
    if (gc->unk9CA3 == 2) {
        gc->frontBuffer.blueMax = 0;
    }
    gc->unk7D84 = temp_a2;
    gc->stencilBuffer.unk30 = temp_a2;
    gc->unk7BC4 = var_a0;
    gc->stencilBuffer.buf.other = (void *)-1;
    temp_v1 = &gc->stencilBuffer.buf.makeCurrent;
    gc->stencilBuffer.buf.makeCurrent = (void (*)()) temp_v1;
    gc->stencilBuffer.buf.loseCurrent = (void (*)()) temp_v1;
    gc->stencilBuffer.buf.resize = (void (*)())0x100C1F0F;
    var_a2 = 0x7CE - SYMBOL_LOCATION.unk310;
    gc->unk8198 = var_a2;
    gc->unk8194 = (s32) SYMBOL_LOCATION.unk310;
    gc->frontBuffer.fetchStippledSpan = NULL;
    gc->frontBuffer.fetchSpan = NULL;
    gc->frontBuffer.storeStippledLine = NULL;
    gc->frontBuffer.storeLine = NULL;
    gc->frontBuffer.redShift = 0;
    if (gc->modes.colorIndexMode == 0) {
        var_a2 = 0x100E1F0F;
        gc->stencilBuffer.buf.resize = (void (*)())0x100E1F0F;
    }
    gc->stencilBuffer.buf.gc = (__GLcontext *)1;
    gc->stencilBuffer.buf.drawableBuf = (void *)0x100;
    __glMgrInitColorMatrix(gc, gc, 0x100, var_a2, 1);
    temp_v0 = gc->imports.malloc(gc, gc->unk81D8 + 0x8000);
    gc->backBuffer.buf.resize = temp_v0;
    temp_a3 = gc->unk81D8;
    var_a0_2 = (temp_a3 - 1) & (s32) temp_v0;
    if (var_a0_2 > 0) {
        var_a0_2 = temp_a3 - var_a0_2;
    }
    gc->unk7C7C = 0;
    gc->backBuffer.buf.other = var_a0_2 + temp_v0;
}

void __glMgrFreePixelState(__GLcontext *gc, ...) {
    void (*var_a1)();

    var_a1 = gc->backBuffer.buf.resize;
    if (var_a1 != NULL) {
        if (((s32) gc->backBuffer.storeStippledSpan & 1) && (__glCurrentContext == gc)) {
            __glMgr_UnlockSingleDMAPool(gc, gc, 0, 0, 0);
            var_a1 = gc->backBuffer.buf.resize;
        }
        gc->imports.free(gc, var_a1);
    }
}

void __glMgrMakePages(__GLcontext *gc, void *arg1, ...) {
    s32 (*temp_v1_2)(__GLcontext *, s8 *, s8 *, ...);
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_v1;
    u32 temp_a4;
    u32 temp_a6;
    u32 temp_hi;
    u32 temp_hi_2;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_lo_3;
    u32 temp_t2;
    u32 temp_v0;
    void *(*temp_a2)(__GLcontext *, s8 *, s8 *);
    void *(*temp_a3)(__GLcontext *, s8 *, s8 *);
    void *(*var_a1)(__GLcontext *, s8 *, s8 *);

    if ((gc->imports.malloc == NULL) || (gc->unk1A4 & ~0x20000)) {
        if (arg1->unk856C != 0) {
            gc->unkA0 = gc->exports.notifyResize;
            temp_v0 = arg1->unk856C;
            gc->unkA4 = temp_v0;
            temp_a6 = arg1->unk8570;
            gc->unkA8 = temp_a6;
            temp_a7 = arg1->unk8574;
            gc->unkAC = temp_a7;
            gc->unkB0 = arg1->unk8578;
            gc->unkB4 = (s32) ((bitwise f32) gc->exports.makeCurrent * (f32) temp_v0);
            temp_lo = (u32) arg1->unk460 / temp_v0;
            temp_lo_2 = (u32) ((gc->imports.sprintf + temp_lo + temp_v0) - 1) / temp_v0;
            temp_t0 = (((u32) arg1->unk45C / temp_a6) * temp_a7) + temp_lo;
            gc->unk59C = temp_t0;
            gc->unkB8 = temp_lo_2;
            temp_hi = (u32) arg1->unk45C % temp_a6;
            M2C_TRAP_IF(temp_v0 == 0);
            M2C_TRAP_IF(temp_v0 == 0);
            M2C_TRAP_IF(temp_a6 == 0);
            temp_a3 = gc->imports.fopen;
            M2C_TRAP_IF(temp_a6 == 0);
            var_a1 = temp_a3;
            temp_t2 = temp_a6 - temp_hi;
            temp_v1 = temp_a7 + temp_t0;
            if (temp_t2 < (u32) temp_a3) {
                var_a1 = (void *(*)(__GLcontext *, s8 *, s8 *)) temp_t2;
            }
            temp_a4 = temp_a3 - var_a1;
            temp_hi_2 = temp_a4 % temp_a6;
            temp_lo_3 = temp_a4 / temp_a6;
            gc->unk5C8 = 0;
            gc->unk5B8 = 0;
            gc->unk5B4 = temp_a6;
            M2C_TRAP_IF(temp_a6 == 0);
            gc->unk5A8 = temp_hi;
            gc->unk5A4 = var_a1;
            gc->unk5AC = temp_v1;
            gc->unk5C4 = temp_hi_2;
            gc->unk608 = temp_lo_3;
            gc->unk604 = temp_lo_3 + 1;
            gc->unk5BC = (temp_a7 * temp_lo_3) + temp_v1;
            if (temp_hi_2 != 0) {
                gc->unk604 = temp_lo_3 + 2;
            }
            gc->unk5B0 = temp_lo_2;
            gc->unk5A0 = 0;
            gc->unk5C0 = temp_lo_2 * temp_lo_3;
            return;
        }
        temp_v1_2 = gc->imports.sprintf;
        gc->unk59C = 0;
        gc->unkB0 = 1;
        gc->unkAC = 1;
        gc->unkA0 = (u8 (*)(__GLcontext *)) &gc->exports.notifyResize;
        temp_a2 = gc->imports.fopen;
        gc->unkA4 = (u32) temp_v1_2;
        gc->unk5A4 = temp_a2;
        gc->unkA8 = (u32) temp_a2;
        gc->unkB4 = (s32) ((bitwise f32) gc->exports.makeCurrent * (f32) temp_v1_2);
        gc->unk608 = 0;
        gc->unk604 = 0;
        gc->unk5C4 = 0;
        gc->unk5B4 = 0;
        gc->unk5A8 = arg1->unk45C;
    }
}

void __glMgrMakeFastPathTiles(__GLcontext *gc, ...) {
    gc->unk4A4 = 4;
    gc->unk510 = 4;
    gc->unk57C = 4;
    gc->unk4A8 = 4;
    gc->unk514 = 4;
    gc->unk580 = 4;
    gc->unk498 = 0x1908;
    gc->unk504 = 0x1908;
    gc->unk4C0 = gc->unk4C8;
    gc->unk570 = 0x1908;
    gc->unk4C4 = gc->unk4CC;
    gc->unk454 = gc->unk45C;
    gc->exports.shareContext = (u8 (*)(__GLcontext *, __GLcontext *)) gc->exports.forceCurrent;
    gc->unk458 = gc->unk460;
    gc->unk52C = gc->unk534;
    gc->unk530 = gc->unk538;
    gc->unk4AC = 4.0f;
    gc->unk518 = 4.0f;
    gc->unk584 = 4.0f;
    if (gc->imports.wscx != (void *)0x1A00) {
        return;
    }
    gc->unk56D = (8 - (((s32) (gc->unk544 + gc->unk548 + 7) >> 3) & 7)) & 7;
    gc->unk501 = (8 - (((s32) (gc->unk4D8 + gc->unk4DC + 7) >> 3) & 7)) & 7;
    gc->unk495 = (8 - (((s32) (gc->unk46C + gc->unk470 + 7) >> 3) & 7)) & 7;
}

void __glMgrMake1GETiles(__GLcontext *gc, ...) {
    s64 sp28;
    s32 *temp_v0;
    s32 temp_a3;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_at_2;
    s32 temp_f0;
    s32 temp_f1;
    s32 temp_lo_3;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_s5;
    s32 var_s7;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 var_a2;
    s8 *(*temp_a2)(__GLcontext *, s8 *);
    s8 *(*var_a5_3)(__GLcontext *, s8 *);
    u32 temp_a1;
    u32 temp_at;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_v1;
    u32 var_a5;
    u32 var_a5_2;
    u32 var_t2;
    u64 temp_a0;
    u64 temp_a3_2;
    u8 (*temp_a7_2)(__GLcontext *, __GLcontext *);
    u8 (*temp_f5)(__GLcontext *);
    u8 (*var_f4)(__GLcontext *);
    void *(*temp_t0)(__GLcontext *, s8 *, s8 *);
    void *temp_a6;
    void *temp_v0_2;
    void *var_a4;

    var_f4 = gc->exports.destroyContext;
    temp_a7 = gc->unk1A8;
    var_s5 = 0xF;
    var_a4 = gc->imports.other;
    temp_f0 = (s32) ((second half of f64) + 1e-06);
    temp_a6 = ((s32) ((s32) var_f4 + (((s32) var_a4 * 4) + var_a4)) * 4) + (&sub_0dbf0000 + 0x2F40);
    if (0x01000000 & temp_a7) {
        var_a5 = temp_a6->unk3C;
        if (temp_a7 & 0x40000000) {
            var_s5 = 0x1F;
            var_a5 *= 2;
        }
        var_s7 = 1;
    } else {
        var_s7 = gc->unk19C;
        var_a5 = temp_a6->unk-14;
    }
    temp_a1 = gc->unk5EC;
    M2C_TRAP_IF(var_a5 == 0);
    var_t2 = (temp_a1 / var_a5) * var_a5;
    gc->unk5EC = var_t2;
    if (var_t2 == 0) {
        sp28 = (s64) temp_f0;
        gc->unk5EC = var_a5;
        gc->unkF8 |= 0x20;
        __glSetError(0x505, temp_a1, temp_f0, 0x01000000U, var_a4, var_a5, temp_a6, temp_a7);
        var_t2 = gc->unk5EC;
        var_a4 = gc->imports.other;
        var_f4 = gc->exports.destroyContext;
    }
    temp_lo = var_t2 * temp_f0;
    temp_a6_2 = gc->unk5F8;
    temp_a7_2 = gc->exports.shareContext;
    temp_a0 = temp_lo - (temp_lo % (u32) var_a4);
    var_a5_2 = (u32) (temp_a7_2 - temp_a6_2) / temp_a0;
    temp_v1 = temp_a6_2 + temp_a0;
    temp_lo_2 = temp_v1 / (u32) var_a4;
    gc->unk4EC = 0;
    gc->unk4D4 = 0;
    gc->unk4DC = 0;
    M2C_TRAP_IF(var_a4 == NULL);
    gc->unk4C4 = 0;
    gc->unk4CC = 0;
    M2C_TRAP_IF(var_a4 == NULL);
    temp_f5 = gc->exports.loseCurrent;
    temp_t0 = gc->imports.fopen;
    temp_a2 = gc->imports.getenv;
    gc->unk4F0 = temp_t0;
    temp_at = gc->unk5F4 + var_t2;
    temp_t1 = gc->unk5F0 * 4;
    gc->unk4E8 = temp_t1;
    temp_t8 = temp_at * 4;
    gc->unk4C8 = temp_at;
    M2C_TRAP_IF(temp_a0 == 0);
    gc->unk4C0 = temp_v1;
    gc->unk4D0 = (s32) ((f64) ((f32) temp_v1 * (bitwise f32) var_f4) + 0.875);
    gc->unk5D0 = var_a5_2;
    gc->unk4D8 = temp_lo_2;
    if (temp_at & 1) {
        gc->unk4E0 = temp_t8;
    } else {
        gc->unk4E0 = temp_t8 + 4;
    }
    MULTU_HI(var_s7, temp_a0);
    gc->unk4E4 = 0;
    gc->unk500 = (8 - ((s32) ((f32) ((u64) (temp_a0 << 0x20) >> 0x20) * (bitwise f32) var_f4) & 7)) & 7;
    gc->unk501 = (8 - ((s32) ((f32) ((u64) ((var_s7 * temp_a0) << 0x20) >> 0x20) * (bitwise f32) temp_f5) & 7)) & 7;
    if ((temp_a2 != NULL) && (gc->unk1A8 & 0x01000000) && (var_a5_2 != 0)) {
        var_a5_3 = temp_a2;
        if ((s32) temp_a2 >= 0) {
            var_a5_3 = (s8 *(*)(__GLcontext *, s8 *)) ((s32) temp_a2 & var_s5);
        }
        temp_v0 = gc->unk600;
        temp_v1_2 = (temp_lo_2 - temp_v0) - var_a5_3;
        var_a2 = (s32) var_a4 * temp_v1_2;
        temp_v0_2 = temp_v0 + temp_v1_2;
        temp_lo_3 = (s32) temp_v0_2 * (s32) var_a4;
        gc->unk480 = 0;
        gc->unk47C = temp_t1;
        gc->unk460 = 0;
        gc->unk468 = 0;
        gc->unk458 = 0;
        gc->unk470 = 0;
        gc->unk484 = temp_t0;
        gc->unk46C = (u32) temp_v0_2;
        temp_f1 = (s32) ((f64) ((f32) temp_lo_3 * (bitwise f32) var_f4) + 0.875);
        gc->unk454 = temp_lo_3;
        temp_at_2 = ((s64) ((bitwise f32) gc->exports.makeCurrent * (f32) ((u64) (temp_v1_2 << 0x20) >> 0x20)) << 0) & 3;
        gc->unk464 = temp_f1;
        temp_v0_3 = (s32) (temp_f1 + 3) >> 2;
        temp_a3 = temp_v0_3 * 4;
        gc->unk45C = temp_v0_3;
        if (temp_v0_3 & 1) {
            gc->unk474 = temp_a3;
        } else {
            gc->unk474 = temp_a3 + 4;
        }
        M2C_TRAP_IF(temp_a0 == 0);
        gc->unk478 = 0;
        gc->unk58C = temp_at_2;
        gc->unk520 = temp_at_2;
        gc->unk494 = (8 - (s32) ((f32) ((u64) (var_a2 << 0x20) >> 0x20) * (bitwise f32) var_f4)) & 7;
        gc->unk495 = (8 - (s32) ((f32) ((u64) ((var_s7 * var_a2) << 0x20) >> 0x20) * (bitwise f32) temp_f5)) & 7;
        var_a5_2 = (u32) ((temp_a7_2 - var_a2) - temp_a6_2) / temp_a0;
        gc->unk5D0 = var_a5_2;
    } else {
        gc->unk58C = 0;
        gc->unk520 = 0;
        var_a2 = 0;
        gc->unk494 = 0;
        gc->unk495 = 0;
        gc->unk478 = 0;
        gc->unk474 = 0;
        gc->unk480 = 0;
        gc->unk47C = 0;
        gc->unk460 = 0;
        gc->unk45C = 0;
        gc->unk468 = 0;
        gc->unk464 = 0;
        gc->unk458 = 0;
        gc->unk454 = 0;
        gc->unk470 = 0;
        gc->unk46C = 0;
        gc->unk484 = NULL;
    }
    temp_a3_2 = (temp_a7_2 - (var_a5_2 * temp_a0)) - var_a2;
    gc->unk558 = 0;
    gc->unk554 = temp_t1;
    gc->unk540 = 0;
    gc->unk548 = 0;
    M2C_TRAP_IF(var_a4 == NULL);
    gc->unk530 = 0;
    gc->unk538 = 0;
    gc->unk55C = temp_t0;
    gc->unk52C = (s32) temp_a3_2;
    gc->unk53C = (s32) (second half of f64);
    temp_v1_3 = temp_a3_2 - temp_a6_2;
    temp_v0_4 = (s32) ((s32) ((f64) (second half of f64) + 0.875) + 3) >> 2;
    temp_t3 = temp_v0_4 * 4;
    gc->unk534 = temp_v0_4;
    gc->unk544 = temp_a3_2 / (u32) var_a4;
    if (temp_v0_4 & 1) {
        gc->unk54C = temp_t3;
    } else {
        gc->unk54C = temp_t3 + 4;
    }
    MULTU_HI(var_s7, temp_v1_3);
    gc->unk550 = 0;
    gc->unk56C = (8 - ((s32) ((f32) ((u64) (temp_v1_3 << 0x20) >> 0x20) * (bitwise f32) var_f4) & 7)) & 7;
    gc->unk56D = (8 - ((s32) ((f32) ((u64) ((var_s7 * temp_v1_3) << 0x20) >> 0x20) * (bitwise f32) temp_f5) & 7)) & 7;
}

void __glMgrMake2GETiles(__GLcontext *gc, s32 arg6, s32 arg7, ...) {
    u64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp48;
    u64 sp20;
    u64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 (*temp_a0)(__GLcontext *, void *, s8 *, ...);
    s32 temp_a0_3;
    s32 temp_a1_4;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_s7;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    s32 var_a4;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_t2;
    s32 var_t8;
    s64 temp_a2_2;
    s64 temp_a6;
    s64 temp_at_2;
    s64 var_a6_2;
    s64 var_ra;
    s64 var_t8_2;
    s8 *(*temp_a3_2)(__GLcontext *, s8 *);
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_5;
    u32 temp_a2;
    u32 temp_a3;
    u32 temp_a6_2;
    u32 temp_at;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 temp_lo_3;
    u32 temp_lo_4;
    u32 temp_t0_2;
    u32 temp_t3_2;
    u32 temp_v1;
    u32 temp_v1_3;
    u32 var_a3;
    u32 var_a4_2;
    u32 var_s5;
    u32 var_s5_2;
    u64 temp_a1_3;
    u64 temp_t0;
    u64 temp_t0_3;
    u8 (*temp_t2)(__GLcontext *, __GLcontext *);
    u8 (*var_f4)(__GLcontext *);
    void *(*temp_a7)(__GLcontext *, s8 *, s8 *);
    void *temp_a0_2;
    void *var_a5;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a6 = arg6;
    var_a7 = arg7;
    var_f4 = gc->exports.destroyContext;
    var_s1 = 0xF;
    var_s2 = (s64) ((bitwise f32) var_f4 / (bitwise f32) gc->exports.loseCurrent) << 0;
    if (var_s2 == 0) {
        var_s2 = 1;
    }
    temp_a0 = gc->imports.fprintf;
    temp_v0 = gc->unk100;
    if ((gc->imports.fclose != temp_a0) || (temp_v0 != 0)) {
        if ((temp_v0 != 0) && (var_a7 = gc->unk1A8, var_a6 = 0x01000000 & var_a7, (var_a6 == 0))) {

        } else {
            __glElementsPerGroup(temp_a0, var_a6, var_a7);
            var_f4 = gc->exports.destroyContext;
            var_ra = sp68;
            var_a6 = 0x01000000 & gc->unk1A8;
        }
        var_a5 = &sub_0dbf0000 + 0x2F40;
        var_a4 = (((((s32) gc->imports.other * 4) + M2C_ERROR(/* Read from unset register $v0 */)) * 4) + var_a5)->unk12C;
    } else {
        var_a4 = 1;
        var_a5 = &sub_0dbf0000 + 0x2F40;
        var_a6 = 0x01000000 & gc->unk1A8;
    }
    temp_a3 = gc->unk5EC;
    temp_s7 = (s32) ((4.0 / (f64) var_f4) + 1e-06);
    var_v0 = (((s32) var_f4 + ((s32) gc->imports.other * 5)) * 4) + var_a5;
    if (var_a6 != 0) {
        temp_a1 = gc->unk1A8 & 0x40000000;
        var_s5 = var_v0->unkDC;
        if (temp_a1 != 0) {
            var_s1 = 0x1F;
            var_s5 *= 2;
        }
        temp_lo = temp_a3 / var_s5;
        M2C_TRAP_IF(var_s5 == 0);
        var_a3 = temp_lo * var_s5;
        gc->unk5EC = var_a3;
        if (var_a3 == 0) {
            sp48 = (s64) var_a4;
            gc->unk5EC = var_s5;
            sp68 = var_ra;
            gc->unkF8 |= 0x20;
            __glSetError(0x505, temp_a1, (s32) temp_lo, var_a3, (void *) var_a4, (u32) var_a5, (void *) var_a6, gc->unk1A8);
            var_a3 = gc->unk5EC;
            var_f4 = gc->exports.destroyContext;
            temp_a0_2 = gc->imports.other;
            var_v0 = ((s32) ((s32) var_f4 + (((s32) temp_a0_2 * 4) + temp_a0_2)) * 4) + (&sub_0dbf0000 + 0x2F40);
        }
        var_a6_2 = 1;
        var_s5_2 = var_v0->unk8C * var_s2 * var_a4;
    } else {
        var_s5_2 = var_v0->unk8C * var_s2 * var_a4;
        M2C_TRAP_IF(var_s5_2 == 0);
        var_a3 = (temp_a3 / var_s5_2) * var_s5_2;
        gc->unk5EC = var_a3;
        if (var_a3 == 0) {
            gc->unk5EC = var_s5_2;
            sp68 = var_ra;
            temp_a1_2 = gc->unkF8 | 0x20;
            gc->unkF8 = temp_a1_2;
            __glSetError(0x505, temp_a1_2);
            var_a3 = gc->unk5EC;
            var_f4 = gc->exports.destroyContext;
        }
        var_a6_2 = (s64) gc->unk19C;
    }
    temp_lo_2 = var_a3 * temp_s7;
    temp_v0_2 = gc->unk5F8;
    temp_t2 = gc->exports.shareContext;
    temp_t3 = temp_lo_2 - (temp_lo_2 % (u32) gc->imports.other);
    temp_t0 = temp_t3 * 2;
    var_a4_2 = (u32) (temp_t2 - temp_v0_2) / temp_t0;
    temp_v1 = temp_v0_2 + temp_t3;
    temp_lo_3 = temp_v1 / (u32) gc->imports.other;
    M2C_TRAP_IF((u32) gc->imports.other == 0);
    M2C_TRAP_IF((u32) gc->imports.other == 0);
    temp_a7 = gc->imports.fopen;
    gc->unk4F0 = temp_a7;
    temp_t1 = gc->unk5F0 * 4;
    gc->unk4EC = temp_t1;
    gc->unk4E8 = temp_t1;
    temp_a5 = gc->unk5F4;
    temp_a1_3 = var_a3 + temp_a5;
    sp20 = temp_a1_3;
    gc->unk4C8 = (u32) temp_a1_3;
    sp18 = temp_a1_3;
    gc->unk4CC = (u32) temp_a1_3;
    M2C_TRAP_IF(temp_t0 == 0);
    gc->unk4C4 = temp_v1;
    gc->unk4C0 = temp_v1;
    temp_t9 = temp_a1_3 * 4;
    var_t8 = temp_t9;
    gc->unk4D0 = (s32) ((f64) ((f32) temp_v1 * (bitwise f32) var_f4) + 0.875);
    gc->unk4D4 = (s32) ((f64) ((f32) (temp_v1 - temp_v0_2) * (bitwise f32) var_f4) + 0.875);
    gc->unk5D0 = var_a4_2;
    sp10 = (s64) temp_lo_3;
    gc->unk4DC = temp_lo_3;
    gc->unk4D8 = temp_lo_3;
    if (temp_a1_3 & 1) {
        gc->unk4E0 = temp_t9;
    } else {
        var_t8 = temp_t9 + 4;
        gc->unk4E0 = var_t8;
    }
    gc->unk501 = 0;
    gc->unk4E4 = var_t8;
    temp_a3_2 = gc->imports.getenv;
    gc->unk500 = (8 - ((s32) ((f32) ((u64) ((temp_v0_2 + temp_t0) << 0x20) >> 0x20) * (second half of f64)) & 7)) & 7;
    if ((temp_a3_2 != NULL) && (gc->unk1A8 & 0x01000000) && (var_a4_2 != 0)) {
        var_a4_3 = (s32) temp_a3_2 & var_s1;
        if ((s32) temp_a3_2 < 0) {
            var_a4_3 = (s32) temp_a3_2;
        }
        temp_a2 = var_s5_2 * 2;
        sp78 = temp_t0;
        sp70 = var_a6_2;
        temp_a6 = ((sp10 - gc->unk600) * 2) - var_a4_3;
        var_t8_2 = (u32) gc->imports.other * temp_a6;
        temp_a3_3 = (s64) ((bitwise f32) gc->exports.makeCurrent * (f32) ((u64) (temp_a6 << 0x20) >> 0x20)) << 0;
        temp_at = (u32) (temp_a3_3 + 3) >> 2;
        temp_v1_2 = ((temp_at / temp_a2) * var_s5_2) + temp_a5;
        temp_t0_2 = ((temp_v1_2 - temp_a5) * temp_s7) + temp_v0_2;
        temp_a6_2 = (var_t8_2 - temp_t0_2) + (temp_v0_2 * 2);
        M2C_TRAP_IF(temp_a2 == 0);
        gc->unk484 = temp_a7;
        M2C_TRAP_IF((u32) gc->imports.other == 0);
        gc->unk47C = temp_t1;
        M2C_TRAP_IF((u32) gc->imports.other == 0);
        gc->unk480 = temp_t1;
        gc->unk45C = temp_v1_2;
        gc->unk454 = (s32) temp_t0_2;
        gc->unk458 = temp_a6_2;
        sp0 = temp_v1_2 * 4;
        temp_at_2 = (temp_at - temp_v1_2) + (temp_a5 * 2);
        sp8 = temp_at_2;
        gc->unk468 = (s32) (second half of f64);
        gc->unk460 = (u32) temp_at_2;
        gc->unk464 = (s32) ((f64) (second half of f64) + 0.875);
        gc->unk46C = temp_t0_2 / (u32) gc->imports.other;
        gc->unk470 = temp_a6_2 / (u32) gc->imports.other;
        if (temp_v1_2 & 1) {
            gc->unk474 = (s32) sp0;
        } else {
            gc->unk474 = sp0 + 4;
        }
        temp_a4 = sp8 * 4;
        if (sp8 & 1) {
            gc->unk478 = temp_a4;
        } else {
            gc->unk478 = temp_a4 + 4;
        }
        M2C_TRAP_IF(temp_t0 == 0);
        temp_a1_4 = temp_a3_3 & 3;
        gc->unk58C = temp_a1_4;
        gc->unk520 = temp_a1_4;
        gc->unk494 = (8 - (s32) ((f32) ((u64) (var_t8_2 << 0x20) >> 0x20) * (second half of f64))) & 7;
        gc->unk495 = (8 - (s32) ((f32) ((u64) ((var_a6_2 * var_t8_2) << 0x20) >> 0x20) * (bitwise f32) gc->exports.loseCurrent)) & 7;
        var_a4_2 = (u32) ((temp_t2 - var_t8_2) - temp_v0_2) / temp_t0;
        gc->unk5D0 = var_a4_2;
    } else {
        gc->unk58C = 0;
        gc->unk520 = 0;
        var_t8_2 = 0;
        gc->unk495 = 0;
        gc->unk494 = 0;
        gc->unk478 = 0;
        gc->unk474 = 0;
        gc->unk480 = 0;
        gc->unk47C = 0;
        gc->unk460 = 0;
        gc->unk45C = 0;
        gc->unk468 = 0;
        gc->unk464 = 0;
        gc->unk458 = 0;
        gc->unk454 = 0;
        gc->unk470 = 0;
        gc->unk46C = 0;
        gc->unk484 = NULL;
    }
    temp_t0_3 = (temp_t2 - (var_a4_2 * temp_t3 * 2)) - var_t8_2;
    temp_a3_4 = (s32) ((s32) ((f64) ((f32) ((u64) (temp_t0_3 << 0x20) >> 0x20) * (second half of f64)) + 0.875) + 3) >> 2;
    if ((((u32) temp_a3_4 >= 0x20U) || (sp20 < (u32) temp_a3_4)) && (temp_v1_3 = var_s5_2 * 2, temp_lo_4 = (u32) temp_a3_4 / temp_v1_3, M2C_TRAP_IF(temp_v1_3 == 0), (temp_lo_4 != 0))) {
        gc->unk144 = 0;
        var_a4_4 = (temp_lo_4 * var_s5_2) + temp_a5;
        gc->unk534 = var_a4_4;
        var_t2 = (temp_a3_4 - var_a4_4) + temp_a5;
        gc->unk538 = var_t2;
        if ((s32) sp18 < var_t2) {
            var_a4_4 = (s32) sp20;
            gc->unk534 = var_a4_4;
            var_t2 = (temp_a3_4 - var_a4_4) + temp_a5;
            gc->unk538 = var_t2;
        }
        temp_a1_5 = ((var_a4_4 - temp_a5) * temp_s7) + temp_v0_2;
        temp_t3_2 = temp_t0_3 - (temp_a1_5 - temp_v0_2);
        temp_a3_5 = var_a4_4 * 4;
        gc->unk558 = temp_t1;
        M2C_TRAP_IF((u32) gc->imports.other == 0);
        gc->unk554 = temp_t1;
        M2C_TRAP_IF((u32) gc->imports.other == 0);
        gc->unk52C = (s32) temp_a1_5;
        gc->unk530 = (s32) temp_t3_2;
        gc->unk53C = (s32) ((f64) ((f32) temp_a1_5 * (second half of f64)) + 0.875);
        gc->unk540 = (s32) ((f64) ((f32) (temp_t3_2 - temp_v0_2) * (second half of f64)) + 0.875);
        temp_a0_3 = var_t2 * 4;
        gc->unk544 = temp_a1_5 / (u32) gc->imports.other;
        gc->unk548 = temp_t3_2 / (u32) gc->imports.other;
        if (var_a4_4 & 1) {
            gc->unk54C = temp_a3_5;
        } else {
            gc->unk54C = temp_a3_5 + 4;
        }
        if (var_t2 & 1) {
            gc->unk550 = temp_a0_3;
        } else {
            gc->unk550 = temp_a0_3 + 4;
        }
    } else {
        temp_a4_2 = temp_a3_4 * 4;
        gc->unk558 = 0;
        gc->unk554 = temp_t1;
        gc->unk540 = 0;
        gc->unk548 = 0;
        M2C_TRAP_IF((u32) gc->imports.other == 0);
        gc->unk530 = 0;
        gc->unk52C = (s32) temp_t0_3;
        gc->unk538 = 0;
        gc->unk534 = temp_a3_4;
        gc->unk144 = 1;
        gc->unk53C = (s32) ((f64) ((f32) temp_t0_3 * (second half of f64)) + 0.875);
        gc->unk544 = temp_t0_3 / (u32) gc->imports.other;
        if (temp_a3_4 & 1) {
            gc->unk54C = temp_a4_2;
        } else {
            gc->unk54C = temp_a4_2 + 4;
        }
        gc->unk550 = 0;
    }
    temp_a2_2 = temp_t0_3 - temp_v0_2;
    MULTU_HI(var_a6_2, temp_a2_2);
    gc->unk55C = temp_a7;
    gc->unk56C = (8 - ((s32) ((f32) ((u64) (temp_a2_2 << 0x20) >> 0x20) * (second half of f64)) & 7)) & 7;
    gc->unk56D = (8 - ((s32) ((f32) ((u64) ((var_a6_2 * temp_a2_2) << 0x20) >> 0x20) * (bitwise f32) gc->exports.loseCurrent) & 7)) & 7;
}

void __glMgrMakeHQTiles(__GLcontext *gc, ...) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    u32 temp_a6;
    u32 temp_a7_2;
    u32 temp_a7_3;
    u32 temp_t0;
    u32 temp_t1;
    u32 temp_t2;
    u32 temp_t3;

    temp_t2 = gc->unk46C;
    temp_t1 = gc->unk4D8;
    temp_a6 = gc->unk544;
    temp_a7 = gc->unk45C;
    temp_t0 = gc->unk4C8;
    temp_a5 = gc->unk534;
    temp_a2 = gc->unk53C;
    temp_a3 = gc->unk4D0;
    temp_a4 = gc->unk464;
    gc->unk564 = temp_a2;
    gc->unk4F8 = temp_a3;
    gc->unk48C = temp_a4;
    gc->unk568 = temp_a5;
    gc->unk4FC = temp_t0;
    gc->unk490 = temp_a7;
    gc->unk560 = temp_a6;
    gc->unk4F4 = temp_t1;
    gc->unk488 = temp_t2;
    if (__glCurrentContext->unk9CA3 != 1) {
        temp_t3 = gc->unk470;
        if (temp_t3 != 0) {
            gc->unk490 = (gc->unk460 - gc->unk5F4) + temp_a7;
            gc->unk488 = (temp_t3 - gc->unk600) + temp_t2;
        }
        temp_a7_2 = gc->unk4DC;
        if (temp_a7_2 != 0) {
            gc->unk4FC = (gc->unk4CC - gc->unk5F4) + temp_t0;
            gc->unk4F4 = (temp_a7_2 - gc->unk600) + temp_t1;
        }
        temp_a7_3 = gc->unk548;
        if (temp_a7_3 != 0) {
            gc->unk568 = (gc->unk538 - gc->unk5F4) + temp_a5;
            gc->unk560 = (temp_a7_3 - gc->unk600) + temp_a6;
        }
        gc->unk564 = gc->unk540 + temp_a2;
        gc->unk4F8 = gc->unk4D4 + temp_a3;
        gc->unk48C = gc->unk468 + temp_a4;
    }
}

void __glMgrComputeStrideSkipBytes(__GLcontext *gc, void *arg1, ...) {
    s32 (*temp_v0)(__GLcontext *, void *, s8 *, ...);
    s32 temp_a6;
    s32 temp_v0_3;
    s32 temp_v0_4;
    void *(*temp_v0_2)(__GLcontext *);

    temp_a6 = gc->unk1A8 & 0x01000000;
    if (temp_a6 != 0) {

    }
    if (gc->unkF8 & 0x10) {
        temp_v0 = gc->imports.fprintf;
        if ((temp_v0 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1906) && (temp_v0 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1909)) {
            if (temp_v0 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x8049) {
                if (temp_v0 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x190A) {
                    if (temp_v0 == (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1907) {

                    }
                }
            } else if (temp_a6 != 0) {

            }
        }
        temp_v0_2 = gc->imports.getDrawablePrivate;
        switch ((u32) temp_v0_2) {                  /* switch 1; irregular */
        case 0x1403:                                /* switch 1 */
            break;
        case 0x1405:                                /* switch 1 */
            break;
        case 0x1400:                                /* switch 1 */
            break;
        case 0x1A00:                                /* switch 1 */
            break;
        }
    } else {
        temp_v0_3 = gc->unk100;
        if (temp_v0_3 != 0) {
            if (!(temp_v0_3 & 0x2000)) {

            }
            temp_v0_4 = gc->imports.unk40;
            switch (temp_v0_4) {                    /* switch 2; irregular */
            case 0:                                 /* switch 2 */
            case 1:                                 /* switch 2 */
                break;
            case 4:                                 /* switch 2 */
                break;
            case 2:                                 /* switch 2 */
            case 3:                                 /* switch 2 */
                break;
            }
        }
    }
}

void __glMgrUnfoldSmallImage(__GLcontext *gc, ...) {
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_v0;
    s32 var_a5;
    s32 var_at;
    s32 var_v0_2;
    u32 temp_a4;
    u32 temp_a6;
    u32 var_v0;
    void *(*temp_a0)(__GLcontext *, s8 *, s8 *);

    __glMgrComputeStrideSkipBytes(gc, &gc->unk52C);
    if ((gc->unk5D4 == (s32 *)1) && ((s32) gc->unk4F4 >= (gc->unk560 * 2)) && (gc->unk56D == 0) && (M2C_ERROR(/* Read from unset register $v0 */) == 0)) {
        temp_v0 = gc->exports.unk40;
        if ((temp_v0 != 1) && (temp_v0 != 8) && (temp_v0 != 9) && (!(gc->unkF8 & 4) || (gc->imports.wscx != (void *)0x1A00))) {
            temp_a4 = gc->unk548;
            temp_a6 = gc->unk544;
            var_v0 = temp_a4;
            if ((s32) temp_a4 < (s32) temp_a6) {
                var_v0 = temp_a6;
            }
            temp_a0 = gc->imports.fopen;
            var_a5 = (s32) ((f32) gc->unk4D8 / (f32) var_v0);
            var_at = var_a5 < 2;
            if ((s32) temp_a0 < var_a5) {
                var_a5 = (s32) temp_a0;
                var_at = var_a5 < 2;
            }
            var_v0_2 = var_a5;
            if (var_at == 0) {
loop_15:
                M2C_TRAP_IF(var_v0_2 == 0);
                if (((s32) temp_a0 % var_v0_2) != 0) {
                    var_v0_2 -= 1;
                    if (var_v0_2 != 1) {
                        goto loop_15;
                    }
                }
            }
            gc->unk60C = var_v0_2;
            if (var_v0_2 != 1) {
                temp_a0_2 = gc->unk534;
                temp_a3 = gc->unk54C;
                M2C_TRAP_IF(var_v0_2 == 0);
                gc->unk55C = (void *(*)(__GLcontext *, s8 *, s8 *)) ((s32) gc->unk55C / var_v0_2);
                if (temp_a0_2 & 1) {
                    temp_lo = temp_a3 * var_v0_2;
                    if (var_v0_2 & 1) {
                        gc->unk54C = temp_lo;
                    } else {
                        gc->unk54C = temp_lo + 4;
                    }
                } else {
                    gc->unk54C = ((temp_a3 - 4) * var_v0_2) + 4;
                }
                gc->unk52C *= var_v0_2;
                gc->unk534 = temp_a0_2 * var_v0_2;
                gc->unk53C *= var_v0_2;
                gc->unk544 = temp_a6 * var_v0_2;
                if (temp_a4 != 0) {
                    temp_a3_2 = gc->unk538;
                    temp_a0_3 = gc->unk550;
                    if (temp_a3_2 & 1) {
                        temp_lo_2 = temp_a0_3 * var_v0_2;
                        if (var_v0_2 & 1) {
                            gc->unk550 = temp_lo_2;
                        } else {
                            gc->unk550 = temp_lo_2 + 4;
                        }
                    } else {
                        gc->unk550 = ((temp_a0_3 - 4) * var_v0_2) + 4;
                    }
                    gc->unk530 *= var_v0_2;
                    gc->unk538 = temp_a3_2 * var_v0_2;
                    gc->unk540 *= var_v0_2;
                    gc->unk548 = temp_a4 * var_v0_2;
                }
            }
        }
    }
}

void __glMgrPrintTileInfo(__GLcontext *gc, void *arg1, ...) {
    s64 sp20;
    s32 *temp_a2;
    s64 var_ra;
    void *temp_s1;

    var_ra = saved_reg_ra;
    temp_s1 = &__iob + 0x20;
    if (&gc->unk454 == arg1) {
        fprintf(temp_s1, &sub_0dbe0000 - 0x3B88);
        var_ra = sp20;
    }
    if (&gc->unk4C0 == arg1) {
        sp20 = var_ra;
        fprintf(temp_s1, &sub_0dbe0000 - 0x3B78);
    }
    sp20 = var_ra;
    temp_a2 = &gc->unk52C;
    if (temp_a2 == arg1) {
        fprintf(temp_s1, &sub_0dbe0000 - 0x3B68, temp_a2);
    }
    fprintf(temp_s1, &sub_0dbe0000 - 0x3B58, arg1->unk0);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3B40, arg1->unk4);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3B28, arg1->unk8);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3B10, arg1->unkC);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3AF8, arg1->unk10);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3AE0, arg1->unk14);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3AC8, arg1->unk18);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3AB0, arg1->unk1C);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3A98, arg1->unk28);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3A80, arg1->unk2C);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3A68, arg1->unk20);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3A50, arg1->unk24);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3A38, (s32 *) arg1->unk41);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3A20, arg1->unk60);
    fflush(temp_s1);
}

void __glMgrPrintTilingInfo(__GLcontext *gc, ...) {
    void *temp_s1;

    temp_s1 = &__iob + 0x20;
    fprintf(temp_s1, &sub_0dbe0000 - 0x3A08, (s32 *)0x10A168);
    fprintf(temp_s1, &sub_0dbe0000 - 0x39E0, gc->unk5D8);
    fprintf(temp_s1, &sub_0dbe0000 - 0x39C8, gc->unk5DC);
    fprintf(temp_s1, &sub_0dbe0000 - 0x39B0, gc->unk5E0);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3998, (s32 *) gc->unk5D0);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3980, gc->unk5D4);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3968, (s32 *) gc->unk5EC);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3950, (s32 *) gc->unk5F0);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3938, (s32 *) gc->unk5F4);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3920, (s32 *) gc->unk5F8);
    fprintf(temp_s1, &sub_0dbe0000 - 0x3908, gc->unk5FC);
    fprintf(temp_s1, &sub_0dbe0000 - 0x38F0, gc->unk600);
    __glMgrPrintTileInfo(gc, gc, &gc->unk454);
    __glMgrPrintTileInfo(gc, gc, &gc->unk4C0);
    __glMgrPrintTileInfo(gc, gc, &gc->unk52C);
    fflush(temp_s1);
}

void __glMgrMakeTiles(__GLcontext *gc, void *arg1, ...) {
    s64 sp50;
    s64 sp28;
    s64 sp0;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f4;
    s32 (*temp_a1)(__GLcontext *, void *);
    s32 (*temp_a1_2)(__GLcontext *, void *);
    s32 *var_a1_2;
    s32 *var_a3;
    s32 *var_a3_2;
    s32 temp_a0;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_f0;
    s32 temp_f3;
    s32 temp_s7;
    s32 var_a0;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_s1;
    s32 var_s4;
    s32 var_s6;
    s32 var_t1;
    s32 var_t2;
    s64 var_ra;
    u32 temp_a1_4;
    u32 temp_a5_2;
    u32 temp_lo;
    u32 temp_lo_2;
    u32 var_a0_2;
    u32 var_a0_3;
    u32 var_a1;
    u32 var_t0;
    u32 var_v1;
    u8 (*temp_f5_2)(__GLcontext *);
    u8 temp_a2_2;
    void *(*temp_a3)(__GLcontext *, u32);
    void *(*temp_a3_4)(__GLcontext *, u32);
    void *temp_a4_2;
    void *var_s3;

    var_ra = saved_reg_ra;
    var_s3 = gc->unk450;
    temp_a3 = gc->imports.malloc;
    if (temp_a3 != NULL) {
        if (!(gc->unk1A4 & ~0x20000)) {
            return;
        }
        goto block_4;
    }
block_4:
    gc->unk594 = 0;
    gc->unk528 = 0;
    temp_a5 = gc->unk1A8;
    temp_s7 = temp_a5 & 0x01000000;
    gc->unk4BC = 0;
    if (temp_s7 != 0) {
        var_t1 = 1;
    } else {
        var_t1 = gc->unk19C;
    }
    temp_a4 = gc->exports.unk40;
    if ((temp_a4 == 2) || (temp_a4 == 5) || (temp_a4 == 6) || (temp_a4 == 7)) {
        var_s3 = NULL;
    }
    if (var_s3 != NULL) {
        temp_a7 = var_s3->unk14;
        temp_a0 = var_s3->unk10;
        var_a4 = 6;
        if (temp_a7 < temp_a0) {
            var_a6 = temp_a0;
        } else {
            var_a6 = temp_a7;
        }
        if (var_a6 < 4) {
            var_s6 = 6;
        } else {
            var_s6 = 9;
        }
    } else if ((temp_a3 != NULL) && (gc->unkF8 & 4)) {
        if ((temp_a4 != 1) && (temp_a4 != 8) && (temp_a4 != 9)) {
            var_a4 = 3;
            var_s6 = 0;
        } else {
            var_s6 = 3;
            var_a4 = 6;
        }
    } else {
        var_s6 = 3;
        var_a4 = 6;
    }
    temp_f0 = (s32) ((second half of f64) + 1e-06);
    var_s1 = (s32) ((s32) gc->unk5D8 * temp_f0) / var_a4;
    M2C_TRAP_IF(var_a4 == 0);
    if (var_s6 > 0) {
        M2C_TRAP_IF(var_s6 == 0);
        var_a0 = (s32) gc->unk5DC / var_s6;
    } else {
        var_a0 = 0x32000;
    }
    temp_f5 = arg1->unk2D0;
    if (!(temp_f5 < 0.0f)) {
        var_f4 = temp_f5;
    } else {
        var_f4 = -temp_f5;
    }
    temp_a4_2 = gc->imports.other;
    temp_f3 = (s32) ((f32) ((u64) (((s32) temp_a4_2 << 0xB) << 0x20) >> 0x20) / ((f32) arg1->unk9CA3 * var_f4));
    if (temp_f3 < var_s1) {
        var_s1 = temp_f3;
    }
    if (temp_a3 != NULL) {
        var_a6_2 = gc->unk100;
        gc->unk5E8 = 0;
        var_a1 = 0;
        gc->unk5E0 = NULL;
        if (var_a6_2 & 0x4000) {
            var_t0 = (u32) ((4 - temp_a4_2) * var_a0) >> 2;
            var_a0 -= var_t0;
            gc->unk5E4 = var_t0;
            var_a1 = var_t0;
            gc->unk5E0 = (s32 *) var_t0;
        } else {
            var_t0 = 0;
            gc->unk5E4 = 0;
        }
    } else {
        var_a6_2 = 0;
        gc->unk100 = 0;
        if (temp_a5 & 0x10) {
            if (gc->unkFC & 0x10) {
                var_a6_2 = 1;
                gc->unk100 = 1;
            }
        }
        if ((temp_a5 & 0x02000000) && (gc->unkFC & 0x10)) {
            if (!(arg1->unk83A0 & 0x10)) {
                var_a6_2 |= 2;
                gc->unk100 = var_a6_2;
            }
        }
        if ((temp_a5 & 0x04000000) && (gc->unkFC & 0x10)) {
            if (!(arg1->unk8418 & 0x10)) {
                var_a6_2 |= 4;
                gc->unk100 = var_a6_2;
            }
        }
        if ((temp_a5 & 0x08000000) && (gc->unkFC & 0x10)) {
            if (!(arg1->unk8454 & 0x10)) {
                var_a6_2 |= 8;
                gc->unk100 = var_a6_2;
            }
        }
        if ((temp_s7 != 0) && ((temp_a1 = gc->imports.fclose, (gc->imports.fprintf != temp_a1)) || (temp_a1 == (s32 (*)(__GLcontext *, void *))0x1903) || (temp_a1 == (s32 (*)(__GLcontext *, void *))0x1905) || (temp_a1 == (s32 (*)(__GLcontext *, void *))0x1904) || (temp_a1 == (s32 (*)(__GLcontext *, void *))0x1906))) {
            var_a6_2 |= 0x10;
            gc->unk100 = var_a6_2;
        }
        if (var_s3 != NULL) {
            temp_a1_2 = gc->imports.fclose;
            switch (temp_a1_2) {                    /* irregular */
            case 0x1909:
            case 0x190A:
                temp_a1_3 = var_s3->unkC;
                if ((temp_a1_3 == 0x1907) || (temp_a1_3 == 0x1908)) {
                case 0x1907:
                    var_a6_2 |= 0x20;
                    gc->unk100 = var_a6_2;
                }
                break;
            }
        }
        if ((((temp_a5 & 0x2E000) == 0x28000) && ((temp_a5 & 0x10400900) != 0x10000900)) || ((0x24000 & temp_a5) == 0x24000) || (var_a6_2 & ~0xE00)) {
            var_t0 = (u32) ((4 - temp_a4_2) * var_a0) >> 2;
            var_a0 -= var_t0;
            gc->unk5E4 = var_t0;
            var_a1 = var_t0;
            gc->unk5E0 = (s32 *) var_t0;
        } else {
            var_t0 = 0;
            gc->unk5E4 = 0;
            var_a1 = 0;
            gc->unk5E0 = NULL;
        }
        gc->unk5E8 = 0;
    }
    var_v1 = var_t0 * 4;
    if (var_a0 < var_s1) {
        var_s1 = var_a0;
        var_v1 = var_t0 * 4;
    }
    var_t2 = var_a1 + var_a0;
    if (var_s6 > 0) {
        gc->unk5F0 = var_t2;
    } else {
        var_t2 = 0;
        gc->unk5F0 = 0;
    }
    gc->unk5E4 = var_v1;
    gc->unk5E0 = (s32 *) (var_a1 * 4);
    gc->unk5E8 = 0 * 4;
    if (temp_s7 == 0) {
        if (temp_a5 & 0x20000000) {
            temp_lo = gc->unk19C * arg1->unk9CA3;
            temp_lo_2 = (u32) ((s32) temp_a4_2 << 8) / temp_lo;
            M2C_TRAP_IF(temp_lo == 0);
            if ((s32) temp_lo_2 < var_s1) {
                var_s1 = (s32) temp_lo_2;
            }
        }
    }
    if ((temp_a3 == NULL) || (var_a6_2 != 0)) {
        if (temp_a4_2 != (void *)3) {
            M2C_TRAP_IF(temp_a4_2 == NULL);
            var_a0_2 = 4U / (u32) temp_a4_2;
        } else {
            var_a0_2 = 2;
        }
    } else {
        var_a0_2 = 1;
    }
    temp_f5_2 = gc->exports.loseCurrent;
    temp_f6 = (f32) var_a0_2;
    temp_f4 = (f32) var_t1;
    if (((f32) var_s1 * (bitwise f32) temp_f5_2 * temp_f6 * temp_f4) > 800.0f) {
        var_s1 = (s32) (800.0f / (temp_f6 * (bitwise f32) temp_f5_2 * temp_f4));
    }
    if ((var_s3 != NULL) && (temp_a2 = temp_a5 & 0x28000, (temp_a2 != 0))) {
        temp_a3_2 = var_s3->unk10;
        sp0 = (s64) temp_a3_2;
        temp_a3_3 = temp_a3_2 - 1;
        var_s4 = temp_a3_3 * (s32) temp_a4_2;
        sp50 = (s64) var_t2;
        var_ra = sp28;
        var_a1_2 = sp0 - 1;
        var_a4_2 = (s32) ceil(var_a0_2, var_a1, temp_a2, temp_a3_3, temp_a4_2, temp_a5, var_a6_2, 0, (f64) ((f32) var_s4 / (f32) temp_f0), second half of f64);
        var_a3 = var_s3->unk14 - 1;
    } else {
        var_s4 = 0;
        var_a4_2 = 0;
        var_a3 = NULL;
        var_a1_2 = NULL;
    }
    M2C_TRAP_IF(temp_f0 == 0);
    gc->unk600 = var_a1_2;
    gc->unk5FC = var_a3;
    gc->unk5F4 = var_a4_2;
    gc->unk5F8 = var_s4;
    temp_a5_2 = (var_s1 / temp_f0) - var_a4_2;
    var_a0_3 = temp_a5_2;
    gc->unk5EC = temp_a5_2;
    if (temp_s7 != 0) {
        var_a1_2 = (s32 *) gc->imports.getenv;
        if ((s32) var_a1_2 < 0) {
            var_a0_3 = temp_a5_2 - ((s32) (((bitwise f32) gc->exports.makeCurrent * (f32) -(s32) var_a1_2) + 3.0f) >> 2);
            gc->unk5EC = var_a0_3;
        }
    }
    if ((var_s6 != 0) && !(var_t2 & 1)) {
        temp_at = var_t2 - 1;
        gc->unk5F0 = temp_at;
        if (temp_at < (var_a0_3 * temp_f0)) {
            var_a0_3 -= 1;
            gc->unk5EC = var_a0_3;
        }
    }
    if (!(var_a0_3 & 1)) {
        gc->unk5EC = var_a0_3 - 1;
    }
    temp_a2_2 = arg1->unk9CA3;
    sp28 = var_ra;
    if (temp_a2_2 != 1) {
        __glMgrMake2GETiles(gc, gc, var_a1_2, temp_a2_2, var_a3, var_a4_2, temp_a5_2);
    } else {
        __glMgrMake1GETiles(gc, gc, var_a1_2, temp_a2_2, var_a3, var_a4_2, temp_a5_2);
    }
    __glMgrMakeHQTiles(gc, gc);
    temp_a1_4 = gc->unk5D0;
    if (var_s4 < gc->unk52C) {
        var_a3_2 = temp_a1_4 + 1;
        gc->unk5D4 = var_a3_2;
    } else {
        var_a3_2 = (s32 *) temp_a1_4;
        gc->unk5D4 = (s32 *) temp_a1_4;
    }
    if (gc->unk46C != 0) {
        gc->unk5D4 = var_a3_2 + 1;
    }
    temp_a3_4 = gc->imports.malloc;
    gc->unk60C = 1;
    if (temp_a3_4 != NULL) {
        if (var_s3 == NULL) {
            if (!(gc->unk100 & 0x4000)) {
                if (gc->unk1A8 & 0x800) {
                    temp_a2_3 = arg1->unk91FC->unk488;
                    if (temp_a2_3 == 0) {
                        __glMgrUnfoldSmallImage(gc, gc, temp_a1_4, temp_a2_3, temp_a3_4);
                    }
                }
            }
        }
        if ((gc->imports.malloc != NULL) && (gc->unkF8 & 4)) {
            __glMgrMakeFastPathTiles(gc, gc);
        }
    }
}

void __glMgrExtractTypeInfo(__GLcontext *gc, void *arg1, ...) {
    s32 (*temp_a2)(__GLcontext *, s8 *, s8 *, ...);
    s32 (*temp_a4_6)(__GLcontext *, void *);
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a4_7;
    s32 var_a5;
    s8 temp_a3_2;
    s8 var_v1;
    void *temp_a4;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0x109798;
    temp_a4 = gc->imports.wscx;
    if ((u32) temp_a4 >= 0x1406U) {
        if ((u32) temp_a4 >= 0x1407U) {
            if ((u32) temp_a4 >= 0x8034U) {
                if ((u32) temp_a4 > 0x8034U) {
                    if ((u32) temp_a4 >= 0x8036U) {
                        if ((u32) temp_a4 <= 0x8036U) {
                            temp_a4_2 = gc->unk1A8;
                            var_a5 = 1;
                            if (temp_a4_2 & 0x01020000) {
                                gc->imports.unk44 = 1;
                                gc->imports.unk40 = 3;
                                gc->imports.unk3C = 4;
                                gc->unk1A8 = (temp_a4_2 | 0x800000) & ~0x20;
                                gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x40000000;
                                gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x477FFF00;
                                gc->exports.dispatchExec = NULL;
                                gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x37800080;
                                gc->unk69 = (s8) ((8 - (((s32) gc->exports.shareContext * 4) & 7)) & 7);
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                temp_a3 = var_a5 & 0xF;
                                gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                                arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
                            }
                        }
                    } else if (temp_a4 == (void *)0x8035) {
                        temp_a4_3 = gc->unk1A8;
                        var_a5 = 0;
                        if (temp_a4_3 & 0x01020000) {
                            gc->imports.unk44 = 0;
                            gc->imports.unk40 = 1;
                            gc->imports.unk3C = 4;
                            gc->unk1A8 = (temp_a4_3 | 0x800000) & ~0x20;
                            gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x3F800000;
                            gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x437F0000;
                            gc->exports.dispatchExec = NULL;
                            gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x3B808081;
                            var_v1 = (8 - ((s32) gc->exports.shareContext & 7)) & 7;
                            goto block_14;
                        }
                    }
                } else {
                    temp_a4_4 = gc->unk1A8;
                    var_a5 = 0;
                    if (temp_a4_4 & 0x01020000) {
                        gc->imports.unk44 = 0;
                        gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x3B808081;
                        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x437F0000;
                        gc->exports.dispatchExec = NULL;
                        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x3F800000;
                        gc->imports.unk3C = 3;
                        gc->imports.unk40 = 1;
                        gc->unk1A8 = ((temp_a4_4 | 0x800000) & ~0x20) | 0x40000000;
                        gc->unk69 = (s8) ((8 - ((s32) gc->exports.shareContext & 7)) & 7);
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        temp_a3 = var_a5 & 0xF;
                        gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                        arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
                    }
                }
            } else {
                switch ((u32) temp_a4) {            /* switch 1; irregular */
                case 0x8033:                        /* switch 1 */
                    temp_a4_5 = gc->unk1A8;
                    var_a5 = 0;
                    if (temp_a4_5 & 0x01020000) {
                        gc->imports.unk44 = 0;
                        gc->imports.unk40 = 1;
                        gc->imports.unk3C = 3;
                        gc->unk1A8 = (temp_a4_5 | 0x800000) & ~0x20;
                        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x3F800000;
                        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x437F0000;
                        gc->exports.dispatchExec = NULL;
                        gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x3B808081;
                        gc->unk69 = (s8) ((8 - ((s32) gc->exports.shareContext & 7)) & 7);
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        temp_a3 = var_a5 & 0xF;
                        gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                        arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
                        return;
                    }
                    return;
                case 0x1A00:                        /* switch 1 */
                    if (gc->exports.unk40 != 5) {
                        temp_a4_6 = gc->imports.fclose;
                        switch (temp_a4_6) {        /* switch 2; irregular */
                        case 0x1900:                /* switch 2 */
                            goto block_49;
                        }
                    } else {
                    case 0x1901:                    /* switch 2 */
block_49:
                        temp_a2 = gc->imports.sprintf;
                        gc->imports.other = (void *)1;
                        gc->exports.shareContext = (u8 (*)(__GLcontext *, __GLcontext *)) temp_a2;
                        gc->imports.unk3C = 3;
                        gc->imports.unk40 = 3;
                        var_a5 = 1;
                        gc->imports.unk44 = 1;
                        gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x37800080;
                        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x477FFF00;
                        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x40000000;
                        gc->unk69 = (s8) ((8 - (((s32) temp_a2 * 2) & 7)) & 7);
                        gc->unk1A8 &= temp_at->unk-3490;
                        temp_a3_2 = __glCurrentContext->unk268.unk1F8 & 7;
                        gc->unk68 = temp_a3_2;
                        gc->imports.sprintf = temp_a2 + temp_a3_2;
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        temp_a3 = var_a5 & 0xF;
                        gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                        arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
                        return;
                    }
                    break;
                default:                            /* switch 1 */
                    temp_a4_7 = gc->unk1A8;
                    var_a5 = 0;
                    if (temp_a4_7 & 0x01020000) {
                        gc->imports.unk44 = 0;
                        gc->imports.unk40 = 1;
                        gc->imports.unk3C = 1;
                        gc->unk1A8 = (temp_a4_7 | 0x800000) & ~0x20;
                        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x3F800000;
                        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x437F0000;
                        gc->exports.dispatchExec = NULL;
                        gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x3B808081;
                        gc->unk69 = (s8) (((s32) gc->imports.sprintf & 1) * 4);
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        temp_a3 = var_a5 & 0xF;
                        gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                        arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
                        return;
                    }
                    return;
                }
            }
        } else {
            gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x3F800000;
            gc->exports.dispatchExec = NULL;
            var_a5 = 3;
            gc->imports.unk44 = 3;
            gc->imports.unk40 = 4;
            gc->imports.unk3C = 4;
            gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x4F7FFFFF;
            gc->exports.loseCurrent = gc->exports.destroyContext;
            gc->unk1A8 = (gc->unk1A8 | 0x20) & ~0x800000;
            var_v1 = (8 - (((s32) gc->exports.shareContext * 4) & 7)) & 7;
            goto block_14;
        }
    } else if ((u32) temp_a4 >= 0x1403U) {
        if ((u32) temp_a4 >= 0x1404U) {
            if ((u32) temp_a4 >= 0x1405U) {
                if ((u32) temp_a4 < 0x1406U) {
                    gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x30000001;
                    gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x4F7FFFFF;
                    var_a5 = 3;
                    gc->imports.unk44 = 3;
                    gc->imports.unk40 = 4;
                    gc->imports.unk3C = 4;
                    gc->exports.dispatchExec = NULL;
                    gc->exports.loseCurrent = gc->exports.destroyContext;
                    gc->unk1A8 &= temp_at->unk-3490;
                    gc->unk69 = (s8) ((8 - (((s32) gc->exports.shareContext * 4) & 7)) & 7);
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    temp_a3 = var_a5 & 0xF;
                    gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                    arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
                }
            } else {
                var_a5 = 7;
                if (temp_a4 == (void *)0x1404) {
                    gc->imports.unk44 = 7;
                    gc->imports.unk40 = 4;
                    gc->imports.unk3C = 4;
                    gc->exports.loseCurrent = gc->exports.destroyContext;
                    gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x4EFFFFFE;
                    gc->exports.dispatchExec = (void *(*)(__GLcontext *))0x2F800001;
                    gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x30000001;
                    gc->unk1A8 &= temp_at->unk-3490;
                    var_v1 = (8 - (((s32) gc->exports.shareContext * 4) & 7)) & 7;
block_14:
                    gc->unk69 = var_v1;
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    temp_a3 = var_a5 & 0xF;
                    gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                    arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
                }
            }
        } else {
            gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x37800080;
            gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x477FFF00;
            var_a5 = 1;
            gc->imports.unk44 = 1;
            gc->imports.unk40 = 3;
            gc->imports.unk3C = 3;
            gc->exports.dispatchExec = NULL;
            gc->exports.loseCurrent = gc->exports.destroyContext;
            gc->unk1A8 &= temp_at->unk-3490;
            gc->unk69 = (s8) ((8 - (((s32) gc->exports.shareContext * 2) & 7)) & 7);
            /* Duplicate return node #15. Try simplifying control flow for better match */
            temp_a3 = var_a5 & 0xF;
            gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
            arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
        }
    } else if ((u32) temp_a4 >= 0x1401U) {
        if ((u32) temp_a4 >= 0x1402U) {
            var_a5 = 5;
            if (temp_a4 == (void *)0x1402) {
                gc->imports.unk44 = 5;
                gc->imports.unk40 = 2;
                gc->imports.unk3C = 2;
                gc->exports.loseCurrent = gc->exports.destroyContext;
                gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x46FFFE00;
                gc->exports.dispatchExec = (void *(*)(__GLcontext *))0x37800080;
                gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x38000080;
                gc->unk1A8 &= temp_at->unk-3490;
                gc->unk69 = (s8) ((8 - (((s32) gc->exports.shareContext * 2) & 7)) & 7);
                /* Duplicate return node #15. Try simplifying control flow for better match */
                temp_a3 = var_a5 & 0xF;
                gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
                arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
            }
        } else {
            var_a5 = 0;
            gc->imports.unk44 = 0;
            gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x3B808081;
            gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x437F0000;
            gc->exports.dispatchExec = NULL;
            gc->exports.loseCurrent = gc->exports.destroyContext;
            gc->imports.unk40 = 1;
            gc->imports.unk3C = 1;
            gc->unk1A8 &= temp_at->unk-3490;
            gc->unk69 = (s8) ((8 - ((s32) gc->exports.shareContext & 7)) & 7);
            /* Duplicate return node #15. Try simplifying control flow for better match */
            temp_a3 = var_a5 & 0xF;
            gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
            arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
        }
    } else if (temp_a4 == (void *)0x1400) {
        gc->imports.unk40 = 0;
        gc->imports.unk3C = 0;
        var_a5 = 4;
        gc->imports.unk44 = 4;
        gc->exports.loseCurrent = gc->exports.destroyContext;
        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x42FE0000;
        gc->exports.dispatchExec = (void *(*)(__GLcontext *))0x3B808081;
        gc->exports.notifySwapBuffers = (void (*)(__GLcontext *))0x3C008081;
        gc->unk1A8 &= temp_at->unk-3490;
        gc->unk69 = (s8) ((8 - ((s32) gc->exports.shareContext & 7)) & 7);
        temp_a3 = var_a5 & 0xF;
        gc->unk610 = -0x701 & ((gc->unk610 & ~0xF) | temp_a3);
        arg1->unk97E4 = (s32) (-0x701 & ((arg1->unk97E4 & ~0xF) | temp_a3));
    }
}

void __glMgrExtractInternalTypeInfo(__GLcontext *gc, void *arg1, ...) {
    s32 var_a3;

    if (gc->unk1A8 & 0x01000000) {
        goto block_2;
    }
    if (arg1->unk91FC->unk488 == 0) {
        if (gc->imports.wscx == gc->imports.getDrawablePrivate) {
            return;
        }
        goto block_3;
    }
block_2:
block_3:
    switch (gc->imports.getDrawablePrivate) {       /* irregular */
    default:
        var_a3 = gc->imports.unk44;
        break;
    case 0x1403:
        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x40000000;
        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x477FFF00;
        var_a3 = 1;
        gc->imports.unk40 = 3;
        gc->imports.unk44 = 1;
        gc->unk69 = (s8) ((8 - (((s32) gc->exports.shareContext * 2) & 7)) & 7);
        break;
    case 0x1400:
        gc->imports.unk40 = 0;
        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x3F800000;
        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x42FE0000;
        var_a3 = 4;
        gc->imports.unk44 = 4;
        gc->unk69 = (s8) ((8 - ((s32) gc->exports.shareContext & 7)) & 7);
        break;
    case 0x1401:
        var_a3 = 0;
        gc->imports.unk44 = 0;
        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x3F800000;
        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x437F0000;
        gc->imports.unk40 = 1;
        gc->unk69 = (s8) ((8 - ((s32) gc->exports.shareContext & 7)) & 7);
        break;
    case 0x1402:
        gc->exports.beginDispatchOverride = (void (*)(__GLcontext *))0x46FFFE00;
        var_a3 = 5;
        gc->imports.unk44 = 5;
        gc->imports.unk40 = 2;
        gc->exports.loseCurrent = (u8 (*)(__GLcontext *))0x40000000;
        gc->unk69 = (s8) ((8 - (((s32) gc->exports.shareContext * 2) & 7)) & 7);
        break;
    }
    arg1->unk97E4 = (s32) ((arg1->unk97E4 & ~0xF) | (var_a3 & 0xF));
}

void __glMgrExtractFormatInfo(__GLcontext *gc, void *arg1, ...) {
    s32 (*temp_a5)(__GLcontext *, void *);
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a6_2;
    s32 temp_at;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a7;
    s32 var_at;
    s32 var_v1;
    s32 var_v1_2;
    void (*temp_a6)(__GLcontext *);
    void *temp_a3;
    void *temp_a3_2;
    void *var_a6;

    temp_a5 = gc->imports.fclose;
    temp_a4 = gc->unk1A8 & 0xFFBFFFFF;
    gc->unk1A8 = temp_a4;
    if ((u32) temp_a5 >= 0x1906U) {
        if ((u32) temp_a5 < 0x1907U) {
            if (temp_a4 & 0x01020000) {
                gc->imports.unk48 = (s32) temp_a5 & 0xF;
                gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x8000;
                var_a6 = arg1 + 0x10000;
                arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                gc->unk108 = 3;
                gc->unkE4 = 0;
                gc->unkE0 = 0xFF;
                gc->unkEC = 0;
                gc->unkE8 = 0;
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                gc->unkFC = 1;
                goto block_4;
            }
            return;
        }
        if ((u32) temp_a5 >= 0x1909U) {
            if ((u32) temp_a5 >= 0x190AU) {
                if ((u32) temp_a5 >= 0x8000U) {
                    if ((u32) temp_a5 <= 0x8000U) {
                        goto block_25;
                    }
                } else if (temp_a5 == (s32 (*)(__GLcontext *, void *))0x190A) {
                    if (temp_a4 & 0x01020000) {
                        gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x8000;
                        gc->imports.unk48 = (s32) temp_a5 & 0xF;
                        var_a6 = arg1 + 0x10000;
                        arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                        gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                        gc->unkE8 = 0;
                        gc->unkEC = 0;
                        gc->unkE0 = 0xFF;
                        gc->unkE4 = 0;
                        gc->unkFC = 0x1F;
                        gc->unk108 = 0;
                        if (arg1->unk81DC != 0) {
                            if (!(arg1->unk81F8 & 0x10)) {
                                gc->unk1A8 |= 0x400000;
                            }
                        }
                        goto block_4;
                    }
                }
            } else if (temp_a4 & 0x01020000) {
                gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x8000;
                gc->imports.unk48 = (s32) temp_a5 & 0xF;
                var_a6 = arg1 + 0x10000;
                arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                gc->unkE8 = 0;
                gc->unkEC = 0;
                gc->unkE0 = 0xFF;
                gc->unkE4 = 0;
                gc->unkFC = 0x1E;
                gc->unk108 = 0;
                if (arg1->unk820C == 0) {
                    if ((arg1->unk81DC != 0) && !(arg1->unk81F8 & 0x10)) {
                        gc->unk1A8 |= 0x400000;
                    }
                } else {
                    gc->unk1A8 |= 0x400000;
                }
                goto block_4;
            }
        } else if ((u32) temp_a5 >= 0x1908U) {
            if ((u32) temp_a5 < 0x1909U) {
block_25:
                if (temp_a4 & 0x01020000) {
                    gc->unk1A8 = (temp_a4 & ~0x1E000) | 0xA000;
                    var_a6 = arg1 + 0x10000;
                    arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                    gc->unk108 = 0;
                    gc->unkFC = 0xF;
                    gc->unkE4 = 0;
                    gc->unkE0 = 0xFF;
                    gc->unkEC = 0;
                    gc->unkE8 = 0;
                    gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                    var_a7 = 8;
                    gc->imports.unk48 = 8;
                    /* Duplicate return node #5. Try simplifying control flow for better match */
                    temp_v0 = (gc->unk610 & ~0xF0) | ((var_a7 & 0xF) * 0x10);
                    gc->unk610 = temp_v0;
                    gc->unk610 = (0xFFBFFFFF & temp_v0) | ((((u32) (var_a6->unk-681C & 0x7FFFFF) >> 0x16) & 1) << 0x16);
                }
            }
        } else if (temp_a5 == (s32 (*)(__GLcontext *, void *))0x1907) {
            if (temp_a4 & 0x01020000) {
                gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x8000;
                var_a6 = arg1 + 0x10000;
                arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                gc->unk108 = 0;
                gc->unkFC = 0xE;
                gc->unkE4 = 0;
                gc->unkE0 = 0xFF;
                gc->unkEC = 0;
                gc->unkE8 = 0;
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                var_a7 = (s32) gc->imports.fclose & 0xF;
                gc->imports.unk48 = var_a7;
                /* Duplicate return node #5. Try simplifying control flow for better match */
                temp_v0 = (gc->unk610 & ~0xF0) | ((var_a7 & 0xF) * 0x10);
                gc->unk610 = temp_v0;
                gc->unk610 = (0xFFBFFFFF & temp_v0) | ((((u32) (var_a6->unk-681C & 0x7FFFFF) >> 0x16) & 1) << 0x16);
            }
        }
    } else if ((u32) temp_a5 >= 0x1903U) {
        if ((u32) temp_a5 < 0x1904U) {
            var_a6 = arg1 + 0x10000;
            if (temp_a4 & 0x01020000) {
                gc->imports.unk48 = (s32) temp_a5 & 0xF;
                gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x8000;
                arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                gc->unk108 = 0;
                gc->unkE4 = 0;
                gc->unkE0 = 0xFF;
                gc->unkEC = 0;
                gc->unkE8 = 0;
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                gc->unkFC = 8;
                goto block_4;
            }
            return;
        }
        if ((u32) temp_a5 >= 0x1905U) {
            if ((u32) temp_a5 < 0x1906U) {
                if (temp_a4 & 0x01020000) {
                    gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x8000;
                    gc->imports.unk48 = (s32) temp_a5 & 0xF;
                    var_a6 = arg1 + 0x10000;
                    arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                    gc->unk108 = 2;
                    gc->unkFC = 2;
                    gc->unkE4 = 0;
                    gc->unkE0 = 0xFF;
                    gc->unkEC = 0;
                    gc->unkE8 = 0;
                    gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                    goto block_4;
                }
            }
        } else if (temp_a5 == (s32 (*)(__GLcontext *, void *))0x1904) {
            if (temp_a4 & 0x01020000) {
                gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x8000;
                gc->imports.unk48 = (s32) temp_a5 & 0xF;
                var_a6 = arg1 + 0x10000;
                arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
                gc->unk108 = 1;
                gc->unkFC = 4;
                gc->unkE4 = 0;
                gc->unkE0 = 0xFF;
                gc->unkEC = 0;
                gc->unkE8 = 0;
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                goto block_4;
            }
        }
    } else if ((u32) temp_a5 >= 0x1901U) {
        if ((u32) temp_a5 < 0x1902U) {
            temp_a3 = gc->imports.wscx;
            temp_a6 = (1 << __glCurrentContext->unk79C4) - 1;
            if ((u32) temp_a3 >= 0x1403U) {
                if ((u32) temp_a3 >= 0x1404U) {
                    if ((u32) temp_a3 >= 0x1405U) {
                        if ((u32) temp_a3 >= 0x1406U) {
                            if (temp_a3 == (void *)0x1A00) {
                                gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                            }
                        } else {
                            goto block_78;
                        }
                    } else if (temp_a3 == (void *)0x1404) {
block_78:
                        gc->exports.endDispatchOverride = temp_a6;
                    }
                } else {
                    goto block_68;
                }
            } else if ((u32) temp_a3 >= 0x1401U) {
                var_v1 = (s32) temp_a6 << 8;
                if ((u32) temp_a3 < 0x1402U) {
                    goto block_66;
                }
                if (temp_a3 == (void *)0x1402) {
block_68:
                    gc->exports.endDispatchOverride = (void (*)(__GLcontext *)) (((s32) temp_a6 << 0x10) | (s32) temp_a6);
                }
            } else if (temp_a3 == (void *)0x1400) {
                var_v1 = (s32) temp_a6 << 8;
block_66:
                temp_v1 = var_v1 | (s32) temp_a6;
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *)) ((temp_v1 << 0x10) | temp_v1);
            }
            gc->imports.unk48 = (s32) temp_a5 & 0xF;
            gc->unk1A8 = (temp_a4 & ~0x1E000) | 0x10000;
            var_a6 = arg1 + 0x10000;
            arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
            gc->unkE0 = 0x01E000FF;
            gc->unkEC = 0x180000;
            gc->unkE8 = 0x1FC0FF;
            gc->unkE4 = 0x01800000;
            goto block_4;
        }
        if (temp_a5 == (s32 (*)(__GLcontext *, void *))0x1902) {
            gc->unk1A8 = temp_a4 & ~0x1E000;
            gc->imports.unk48 = (s32) temp_a5 & 0xF;
            var_a6 = arg1 + 0x10000;
            arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
            gc->unk108 = 0;
            gc->unkE4 = 0x01C00000;
            gc->unkE0 = 0x01E000FF;
            gc->unkEC = 0x1C0000;
            gc->unkE8 = 0x1FC0CF;
            goto block_4;
        }
    } else if (temp_a5 == (s32 (*)(__GLcontext *, void *))0x1900) {
        temp_a3_2 = gc->imports.wscx;
        temp_a6_2 = __glCurrentContext->unk7844;
        if ((u32) temp_a3_2 >= 0x1403U) {
            var_v1_2 = temp_a6_2 << 0x10;
            if ((u32) temp_a3_2 < 0x1404U) {
                goto block_52;
            }
            switch ((u32) temp_a3_2) {              /* irregular */
            default:
block_86:
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *)) temp_a6_2;
                break;
            case 0x1404:
                goto block_86;
            case 0x1A00:
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *))-1;
                break;
            }
        } else if ((u32) temp_a3_2 >= 0x1401U) {
            var_at = temp_a6_2 << 8;
            if ((u32) temp_a3_2 < 0x1402U) {
                goto block_73;
            }
            if (temp_a3_2 == (void *)0x1402) {
                var_v1_2 = temp_a6_2 << 0x10;
block_52:
                gc->exports.endDispatchOverride = (void (*)(__GLcontext *)) (var_v1_2 | temp_a6_2);
            }
        } else if (temp_a3_2 == (void *)0x1400) {
            var_at = temp_a6_2 << 8;
block_73:
            temp_at = var_at | temp_a6_2;
            gc->exports.endDispatchOverride = (void (*)(__GLcontext *)) ((temp_at << 0x10) | temp_at);
        }
        temp_a2 = (temp_a4 & ~0x1E000) | 0x4000;
        gc->unk1A8 = temp_a2;
        if (temp_a2 & 0x20000) {
            gc->imports.unk48 = 8;
        } else {
            gc->imports.unk48 = (s32) temp_a5 & 0xF;
        }
        var_a6 = arg1 + 0x10000;
        arg1->unk97E4 = (s32) (arg1->unk97E4 | 0x400000);
        gc->unkE4 = 0;
        gc->unkE0 = 0xFF;
        gc->unkEC = 0;
        gc->unkE8 = 0;
block_4:
        var_a7 = gc->imports.unk48;
        temp_v0 = (gc->unk610 & ~0xF0) | ((var_a7 & 0xF) * 0x10);
        gc->unk610 = temp_v0;
        gc->unk610 = (0xFFBFFFFF & temp_v0) | ((((u32) (var_a6->unk-681C & 0x7FFFFF) >> 0x16) & 1) << 0x16);
    }
}

void __glMgrGetCurrentConvFilter(__GLcontext *gc, ...) {
    if (__glCurrentContext->unk8294 != 0) {
        if (gc->exports.unk40 == 3) {
            return;
        }
        goto block_4;
    }
block_4:
    if ((__glCurrentContext->unk82E4 != 0) && (gc->exports.unk40 != 3)) {

    } else if ((__glCurrentContext->unk8334 == 0) || (gc->exports.unk40 == 3)) {

    }
}

void __glMgrMakePixelDesc(__GLcontext *gc, s32 arg1, void (*arg2)(__GLcontext *, s8 *), s64 arg3, s32 arg4, s64 arg5, s32 (*arg6)(__GLcontext *, s8 *, s8 *, ...), void *(*arg7)(__GLcontext *, s8 *, s8 *), s32 (*arg_sp4)(__GLcontext *, void *, s8 *, ...), s32 (*arg_spC)(__GLcontext *, void *, s8 *, ...), void *arg_sp14, u8 (*arg_sp1C)(__GLcontext *), ...) {
    s64 sp58;
    s64 sp0;
    __GLcontext *temp_s5;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f6_2;
    s32 (*var_a1)(__GLcontext *, s8 *, s8 *, ...);
    s32 (*var_s4)(__GLcontext *, void *, s8 *, ...);
    s32 (*var_v0)(__GLcontext *, s8 *, s8 *, ...);
    s32 (*var_v0_2)(__GLcontext *, s8 *, s8 *, ...);
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_f0;
    s32 temp_t1;
    s32 temp_v0;
    s32 var_a2;
    s32 var_t0;
    s32 var_t1;
    s32 var_v1;
    s64 var_ra;
    u32 temp_a0;
    u8 (*temp_f5)(__GLcontext *);

    var_ra = saved_reg_ra;
    temp_s5 = __glCurrentContext;
    unksp18 = arg5;
    unksp30 = arg3;
    if ((arg1 != 3) && (arg1 != 4) && (arg1 != 8) && (arg1 != 9)) {
        var_a2 = gc->unk1A8 & ~0x01000000 & ~0x40000000;
        gc->unk1A8 = var_a2;
        var_s4 = arg_spC;
        if (temp_s5->unk91FC->unk488 != 0) {

        } else {
            var_s4 = arg_sp4;
        }
        var_a1 = (s32 (*)(__GLcontext *, s8 *, s8 *, ...))0x01000000;
    } else {
        sp0 = (s64) arg_spC;
        gc->unk1A8 |= 0x01000000;
        getbaseformat(arg_spC);
        var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
        getbasetype(arg_spC, arg_sp14);
        var_a1 = (s32 (*)(__GLcontext *, s8 *, s8 *, ...))0x01000000;
        var_ra = sp58;
        if ((arg_spC != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x803B) && (arg_spC != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x803F) && (arg_spC != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x8043) && (arg_spC != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x804A) && (arg_spC != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x804F) && (arg_spC != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x8056)) {
            var_a2 = gc->unk1A8 & ~0x40000000;
        } else {
            var_a2 = gc->unk1A8 | 0x40000000;
        }
        gc->unk1A8 = var_a2;
    }
    temp_a3 = 0x01000000 & var_a2;
    var_t1 = 0x12A;
    if (temp_a3 == 0) {
        var_t1 = 0x12B;
        if (temp_s5->unk91FC->unk488 != 0) {

        } else {
            var_t1 = 0x129;
        }
    }
    gc->unk1E8 = var_t1;
    if ((gc->imports.fclose == ((s32 (*)(__GLcontext *, void *)) arg_sp4)) && (gc->imports.fprintf == var_s4) && (gc->imports.wscx == arg_sp14) && (gc->imports.getDrawablePrivate == M2C_ERROR(/* Read from unset register $v0 */)) && (gc->exports.unk40 == arg1) && (arg_sp14 != (void *)0x1A00)) {
        var_a1 = gc->imports.sprintf;
        if ((temp_a3 != 0) && ((var_a1 != arg6) || (gc->imports.fopen != arg7) || (((s32) gc->imports.getenv != 0x1F) & arg4 & 0x1F))) {
            sp58 = var_ra;
            gc->unk1A4 |= 0x10000;
        } else if ((var_a1 != arg6) || (gc->imports.fopen != arg7)) {
            sp58 = var_ra;
            var_t0 = gc->unk1A4 | 0x10000;
            goto block_20;
        }
    } else {
        sp58 = var_ra;
        var_t0 = -1;
block_20:
        gc->unk1A4 = var_t0;
    }
    gc->unk1E4 = 0;
    gc->imports.wscx = arg_sp14;
    gc->imports.fclose = (s32 (*)(__GLcontext *, void *)) arg_sp4;
    gc->imports.fopen = arg7;
    gc->imports.sprintf = arg6;
    gc->imports.getenv = (s8 *(*)(__GLcontext *, s8 *)) arg4;
    gc->imports.warning = arg2;
    gc->exports.unk40 = arg1;
    gc->imports.getDrawablePrivate = M2C_ERROR(/* Read from unset register $v0 */);
    gc->imports.fprintf = var_s4;
    sp58 = var_ra;
    gc->imports.atoi = (s32 (*)(__GLcontext *, s8 *)) unksp18;
    gc->imports.fatal = (void (*)(__GLcontext *, s8 *)) unksp30;
    gc->exports.notifyResize = arg_sp1C;
    __glElementsPerGroup((s32 (*)(__GLcontext *, void *, s8 *, ...)) ((s32 (*)(__GLcontext *, void *)) arg_sp4), (s32) var_a1, var_a2, temp_a3);
    gc->imports.other = M2C_ERROR(/* Read from unset register $v0 */);
    __glBytesPerElement(arg_sp14);
    gc->unk68 = 0;
    gc->exports.destroyContext = M2C_ERROR(/* Read from unset register $f0 */);
    gc->exports.shareContext = (u8 (*)(__GLcontext *, __GLcontext *)) ((s32) gc->imports.other * (s32) arg6);
    __glMgrGetCurrentConvFilter(gc, gc);
    temp_a2 = gc->unk1A8;
    gc->unk450 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gc->unk1A8 = temp_a2 | 0x100000;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            goto block_25;
        }
        goto block_27;
    }
    gc->unk1A8 = temp_a2 & ~0x100000;
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
block_25:
        if ((s32) gc->imports.sprintf >= M2C_ERROR(/* Read from unset register $v0 */)->unk10) {
            if ((s32) gc->imports.fopen >= M2C_ERROR(/* Read from unset register $v0 */)->unk14) {
                goto block_27;
            }
        }
    } else {
block_27:
        __glMgrExtractTypeInfo(gc, gc, temp_s5, temp_a2);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            return;
        }
        __glMgrExtractInternalTypeInfo(gc, gc, temp_s5);
        __glMgrExtractFormatInfo(gc, gc, temp_s5);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            return;
        }
        temp_t1 = temp_s5->unk9688 & ~8 & ~2;
        temp_s5->unk9688 = temp_t1;
        temp_s5->unk9688 = (s32) (((temp_t1 | 1) & ~4) | 0x4000);
        temp_s5->unk92CC = (s32) (((temp_s5->unk92CC | 0x10) & ~0xF) | 8);
        temp_f5 = gc->exports.destroyContext;
        temp_f0 = (s32) ((f64) ((f32) gc->exports.shareContext * (bitwise f32) temp_f5) + 0.875);
        temp_f4 = (f32) ((u64) ((s64) gc->imports.other << 0x20) >> 0x20) * (bitwise f32) temp_f5;
        gc->exports.copyContext = (u8 (*)(__GLcontext *, __GLcontext *, u32)) temp_f0;
        gc->exports.forceCurrent = (u8 (*)(__GLcontext *)) ((s32) (temp_f0 + 3) >> 2);
        gc->exports.makeCurrent = (bitwise u8 (*)(__GLcontext *)) temp_f4;
        temp_v0 = temp_s5->unk856C;
        if (temp_v0 == 0) {
            temp_a0 = temp_s5->unk458;
            var_v0 = arg6;
            if (temp_a0 != 0) {
                var_v0 = (s32 (*)(__GLcontext *, s8 *, s8 *, ...)) temp_a0;
            }
            temp_a0_2 = temp_s5->unk464;
            temp_f6 = temp_f4 * (f32) var_v0;
            if ((f32) temp_a0_2 <= (bitwise f32) temp_f5) {
                gc->exports.unk44 = (s32) temp_f6;
            } else {
                var_v1 = (s32) ((second half of f64) + ((f64) temp_f6 + 0.875)) & ~(temp_a0_2 - 1);
                goto block_50;
            }
        } else {
            var_v1 = (s32) ((f32) temp_v0 * temp_f4);
block_50:
            gc->exports.unk44 = var_v1;
        }
        gc->gcState = (s32) ((f32) ((u64) ((s64) temp_s5->unk460 << 0x20) >> 0x20) * temp_f4);
        temp_a0_3 = temp_s5->unk434;
        var_v0_2 = arg6;
        if (temp_a0_3 != 0) {
            var_v0_2 = (s32 (*)(__GLcontext *, s8 *, s8 *, ...)) temp_a0_3;
        }
        temp_a0_4 = temp_s5->unk440;
        temp_f6_2 = temp_f4 * (f32) var_v0_2;
        if ((f32) temp_a0_4 <= (bitwise f32) temp_f5) {
            gc->unk98 = (s32) temp_f6_2;
        } else {
            gc->unk98 = (s32) ((second half of f64) + ((f64) temp_f6_2 + 0.875)) & ~(temp_a0_4 - 1);
        }
        gc->unk9C = (s32) ((f32) ((u64) ((s64) temp_s5->unk43C << 0x20) >> 0x20) * temp_f4);
        if (gc->imports.malloc == NULL) {
            __glMgrMakeTiles(gc, gc, temp_s5);
            __glMgrMakePages(gc, gc, temp_s5);
        }
    }
}
