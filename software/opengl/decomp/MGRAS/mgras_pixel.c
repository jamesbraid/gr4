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
    /* 0xB4 */ char padB4[4];
    /* 0xB8 */ s32 unkB8;                           /* inferred */
    /* 0xBC */ s32 unkBC;                           /* inferred */
    /* 0xC0 */ char padC0[0xC];                     /* maybe part of unkBC[4]? */
    /* 0xCC */ s32 unkCC;                           /* inferred */
    /* 0xD0 */ s32 unkD0;                           /* inferred */
    /* 0xD4 */ s32 unkD4;                           /* inferred */
    /* 0xD8 */ void (*clear)(__GLcolorBuffer *);
} __GLcolorBuffer;                                  /* size = 0xDC */

typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[8];                     /* maybe part of gcState[3]? */
    /* 0x00A0 */ s32 unkA0;                         /* inferred */
    /* 0x00A4 */ u32 unkA4;                         /* inferred */
    /* 0x00A8 */ s32 unkA8;                         /* inferred */
    /* 0x00AC */ s32 unkAC;                         /* inferred */
    /* 0x00B0 */ s32 unkB0;                         /* inferred */
    /* 0x00B4 */ u32 unkB4;                         /* inferred */
    /* 0x00B8 */ s32 unkB8;                         /* inferred */
    /* 0x00BC */ s32 unkBC;                         /* inferred */
    /* 0x00C0 */ u8 unkC0;                          /* inferred */
    /* 0x00C1 */ char padC1[3];                     /* maybe part of unkC0[4]? */
    /* 0x00C4 */ u8 (*unkC4)(__GLcontext *);        /* inferred */
    /* 0x00C8 */ char padC8[4];
    /* 0x00CC */ s32 unkCC;                         /* inferred */
    /* 0x00D0 */ s32 unkD0;                         /* inferred */
    /* 0x00D4 */ s32 unkD4;                         /* inferred */
    /* 0x00D8 */ s32 unkD8;                         /* inferred */
    /* 0x00DC */ s32 unkDC;                         /* inferred */
    /* 0x00E0 */ char padE0[8];                     /* maybe part of unkDC[3]? */
    /* 0x00E8 */ s32 unkE8;                         /* inferred */
    /* 0x00EC */ s32 unkEC;                         /* inferred */
    /* 0x00F0 */ char padF0[8];                     /* maybe part of unkEC[3]? */
    /* 0x00F8 */ s32 unkF8;                         /* inferred */
    /* 0x00FC */ s32 unkFC;                         /* inferred */
    /* 0x0100 */ s32 unk100;                        /* inferred */
    /* 0x0104 */ s32 unk104;                        /* inferred */
    /* 0x0108 */ char pad108[4];
    /* 0x010C */ s32 unk10C;                        /* inferred */
    /* 0x0110 */ s32 unk110;                        /* inferred */
    /* 0x0114 */ s32 unk114;                        /* inferred */
    /* 0x0118 */ s32 unk118;                        /* inferred */
    /* 0x011C */ s32 unk11C;                        /* inferred */
    /* 0x0120 */ ?32 unk120;                        /* inferred */
    /* 0x0124 */ ?32 unk124;                        /* inferred */
    /* 0x0128 */ ?32 unk128;                        /* inferred */
    /* 0x012C */ ?32 unk12C;                        /* inferred */
    /* 0x0130 */ char pad130[8];                    /* maybe part of unk12C[3]? */
    /* 0x0138 */ s32 unk138;                        /* inferred */
    /* 0x013C */ s32 unk13C;                        /* inferred */
    /* 0x0140 */ s32 unk140;                        /* inferred */
    /* 0x0144 */ s32 unk144;                        /* inferred */
    /* 0x0148 */ char pad148[0xC];                  /* maybe part of unk144[4]? */
    /* 0x0154 */ s32 unk154;                        /* inferred */
    /* 0x0158 */ f32 unk158;                        /* inferred */
    /* 0x015C */ f32 unk15C;                        /* inferred */
    /* 0x0160 */ char pad160[0x28];                 /* maybe part of unk15C[0xB]? */
    /* 0x0188 */ s32 unk188;                        /* inferred */
    /* 0x018C */ char pad18C[4];
    /* 0x0190 */ s32 unk190;                        /* inferred */
    /* 0x0194 */ s32 unk194;                        /* inferred */
    /* 0x0198 */ char pad198[0xC];                  /* maybe part of unk194[4]? */
    /* 0x01A4 */ s32 unk1A4;                        /* inferred */
    /* 0x01A8 */ u32 unk1A8;                        /* inferred */
    /* 0x01AC */ char pad1AC[0x38];                 /* maybe part of unk1A8[0xF]? */
    /* 0x01E4 */ __GLcontext *unk1E4;               /* inferred */
    /* 0x01E8 */ s32 unk1E8;                        /* inferred */
    /* 0x01EC */ s32 unk1EC;                        /* inferred */
    /* 0x01F0 */ s32 unk1F0;                        /* inferred */
    /* 0x01F4 */ s32 unk1F4;                        /* inferred */
    /* 0x01F8 */ char pad1F8[0xC];                  /* maybe part of unk1F4[4]? */
    /* 0x0204 */ s32 unk204;                        /* inferred */
    /* 0x0208 */ s64 unk208;                        /* inferred */
    /* 0x0210 */ s64 unk210;                        /* inferred */
    /* 0x0218 */ s64 unk218;                        /* inferred */
    /* 0x0220 */ u64 unk220;                        /* inferred */
    /* 0x0228 */ s64 unk228;                        /* inferred */
    /* 0x0230 */ s64 unk230;                        /* inferred */
    /* 0x0238 */ char pad238[0x30];                 /* maybe part of unk230[7]? */
    /* 0x0268 */ f32 unk268;                        /* inferred */
    /* 0x026C */ f32 unk26C;                        /* inferred */
    /* 0x0270 */ f32 unk270;                        /* inferred */
    /* 0x0274 */ f32 unk274;                        /* inferred */
    /* 0x0278 */ f32 unk278;                        /* inferred */
    /* 0x027C */ f32 unk27C;                        /* inferred */
    /* 0x0280 */ f32 unk280;                        /* inferred */
    /* 0x0284 */ f32 unk284;                        /* inferred */
    /* 0x0288 */ ? unk288;                          /* inferred */
    /* 0x0288 */ char pad288[4];
    /* 0x028C */ f32 unk28C;                        /* inferred */
    /* 0x0290 */ u64 unk290;                        /* inferred */
    /* 0x0298 */ s64 unk298;                        /* inferred */
    /* 0x02A0 */ u64 unk2A0;                        /* inferred */
    /* 0x02A8 */ s64 unk2A8;                        /* inferred */
    /* 0x02B0 */ s64 unk2B0;                        /* inferred */
    /* 0x02B8 */ char pad2B8[0x18];                 /* maybe part of unk2B0[4]? */
    /* 0x02D0 */ f32 unk2D0;                        /* inferred */
    /* 0x02D4 */ f32 unk2D4;                        /* inferred */
    /* 0x02D8 */ s32 unk2D8;                        /* inferred */
    /* 0x02DC */ s32 unk2DC;                        /* inferred */
    /* 0x02E0 */ s8 unk2E0;                         /* inferred */
    /* 0x02E1 */ s8 unk2E1;                         /* inferred */
    /* 0x02E2 */ char pad2E2[0xD6];                 /* maybe part of unk2E1[0xD7]? */
    /* 0x03B8 */ u32 unk3B8;                        /* inferred */
    /* 0x03BC */ char pad3BC[8];                    /* maybe part of unk3B8[3]? */
    /* 0x03C4 */ u32 unk3C4;                        /* inferred */
    /* 0x03C8 */ char pad3C8[8];                    /* maybe part of unk3C4[3]? */
    /* 0x03D0 */ s32 unk3D0;                        /* inferred */
    /* 0x03D4 */ char pad3D4[8];                    /* maybe part of unk3D0[3]? */
    /* 0x03DC */ s32 unk3DC;                        /* inferred */
    /* 0x03E0 */ char pad3E0[8];                    /* maybe part of unk3DC[3]? */
    /* 0x03E8 */ u32 unk3E8;                        /* inferred */
    /* 0x03EC */ char pad3EC[8];                    /* maybe part of unk3E8[3]? */
    /* 0x03F4 */ u32 unk3F4;                        /* inferred */
    /* 0x03F8 */ char pad3F8[0x38];                 /* maybe part of unk3F4[0xF]? */
    /* 0x0430 */ s64 unk430;                        /* inferred */
    /* 0x0438 */ s32 unk438;                        /* inferred */
    /* 0x043C */ s32 unk43C;                        /* inferred */
    /* 0x0440 */ s64 unk440;                        /* inferred */
    /* 0x0448 */ s64 unk448;                        /* inferred */
    /* 0x0450 */ s32 unk450;                        /* inferred */
    /* 0x0454 */ u8 unk454;                         /* inferred */
    /* 0x0455 */ u8 unk455;                         /* inferred */
    /* 0x0456 */ char pad456[2];                    /* maybe part of unk455[3]? */
    /* 0x0458 */ s32 unk458;                        /* inferred */
    /* 0x045C */ s32 unk45C;                        /* inferred */
    /* 0x0460 */ s32 unk460;                        /* inferred */
    /* 0x0464 */ s32 unk464;                        /* inferred */
    /* 0x0468 */ s32 unk468;                        /* inferred */
    /* 0x046C */ s32 unk46C;                        /* inferred */
    /* 0x0470 */ s32 unk470;                        /* inferred */
    /* 0x0474 */ s32 unk474;                        /* inferred */
    /* 0x0478 */ char pad478[0xC];                  /* maybe part of unk474[4]? */
    /* 0x0484 */ s32 unk484;                        /* inferred */
    /* 0x0488 */ char pad488[0x38];                 /* maybe part of unk484[0xF]? */
    /* 0x04C0 */ u8 unk4C0;                         /* inferred */
    /* 0x04C1 */ char pad4C1[0x2F];                 /* maybe part of unk4C0[0x30]? */
    /* 0x04F0 */ s32 unk4F0;                        /* inferred */
    /* 0x04F4 */ char pad4F4[0x2C];                 /* maybe part of unk4F0[0xC]? */
    /* 0x0520 */ s32 unk520;                        /* inferred */
    /* 0x0524 */ char pad524[8];                    /* maybe part of unk520[3]? */
    /* 0x052C */ u8 unk52C;                         /* inferred */
    /* 0x052D */ char pad52D[0x17];                 /* maybe part of unk52C[0x18]? */
    /* 0x0544 */ s32 unk544;                        /* inferred */
    /* 0x0548 */ char pad548[0x14];                 /* maybe part of unk544[6]? */
    /* 0x055C */ s32 unk55C;                        /* inferred */
    /* 0x0560 */ char pad560[0x38];                 /* maybe part of unk55C[0xF]? */
    /* 0x0598 */ u8 *unk598;                        /* inferred */
    /* 0x059C */ ? unk59C;                          /* inferred */
    /* 0x059C */ char pad59C[8];
    /* 0x05A4 */ s32 unk5A4;                        /* inferred */
    /* 0x05A8 */ char pad5A8[4];
    /* 0x05AC */ ? unk5AC;                          /* inferred */
    /* 0x05AC */ char pad5AC[8];
    /* 0x05B4 */ s32 unk5B4;                        /* inferred */
    /* 0x05B8 */ char pad5B8[4];
    /* 0x05BC */ ? unk5BC;                          /* inferred */
    /* 0x05BC */ char pad5BC[8];
    /* 0x05C4 */ s32 unk5C4;                        /* inferred */
    /* 0x05C8 */ char pad5C8[4];
    /* 0x05CC */ ? *unk5CC;                         /* inferred */
    /* 0x05D0 */ s32 unk5D0;                        /* inferred */
    /* 0x05D4 */ s32 unk5D4;                        /* inferred */
    /* 0x05D8 */ char pad5D8[8];                    /* maybe part of unk5D4[3]? */
    /* 0x05E0 */ s32 unk5E0;                        /* inferred */
    /* 0x05E4 */ char pad5E4[0x10];                 /* maybe part of unk5E0[5]? */
    /* 0x05F4 */ s32 unk5F4;                        /* inferred */
    /* 0x05F8 */ char pad5F8[0xC];                  /* maybe part of unk5F4[4]? */
    /* 0x0604 */ s32 unk604;                        /* inferred */
    /* 0x0608 */ s32 unk608;                        /* inferred */
    /* 0x060C */ char pad60C[4];
    /* 0x0610 */ s32 unk610;                        /* inferred */
    /* 0x0614 */ char pad614[0x5C];                 /* maybe part of unk610[0x18]? */
    /* 0x0670 */ ? unk670;                          /* inferred */
    /* 0x0670 */ char pad670[0x5A0];
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[3];                    /* maybe part of yInverted[4]? */
    /* 0x0CD0 */ f32 unkCD0;                        /* inferred */
    /* 0x0CD4 */ char padCD4[0x20B8];               /* maybe part of unkCD0[0x82F]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x4650];              /* maybe part of procs[0x16]? */
    /* 0x7770 */ u8 unk7770;                        /* inferred */
    /* 0x7771 */ char pad7771[0xD3];                /* maybe part of unk7770[0xD4]? */
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
    /* 0x30 */ __GLcontext *unk30;                  /* inferred */
    /* 0x34 */ __GLcontext *unk34;                  /* inferred */
    /* 0x38 */ __GLcontext *unk38;                  /* inferred */
    /* 0x3C */ __GLcontext *unk3C;                  /* inferred */
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
    /* 0x44 */ char pad44[4];
    /* 0x48 */ s32 unk48;                           /* inferred */
} __GLimports;                                      /* size = 0x4C */

? abort();                                          /* extern */
? bcopy(void *, s32, s32);                          /* extern */
? fprintf(void *, void *, s64, s64, s64, s64, s64); /* extern */
? perror(void *);                                   /* extern */
extern s32 MgrasPrevVidTexture;
extern ? SYMBOL_LOCATION;
extern ? __glMgr_DefaultPack;
extern ? __glMgr_DefaultUnpack;
extern ? __glMgr_InternalUnpack;
extern ? __iob;
extern s32 errno;
extern ? sub_0dbf0000;

void __glMgrGetColorMatrixState(__GLcontext *gc, ...) {
    s32 temp_a3;
    void (*temp_a0)();

    __Mgr_ReturnMode(SYMBOL_LOCATION.unk3E4, 0, 0);
    temp_a0 = gc->stencilBuffer.buf.resize;
    temp_a3 = (s32) temp_a0 & 0x100;
    if (SYMBOL_LOCATION.unk40C & M2C_ERROR(/* Read from unset register $v0 */)) {
        if (temp_a3 == 0) {
            gc->stencilBuffer.buf.other = (void *) ((s32) gc->stencilBuffer.buf.other | 0x100);
        }
        gc->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0 | 0x100);
    } else {
        if (temp_a3 != 0) {
            gc->stencilBuffer.buf.other = (void *) ((s32) gc->stencilBuffer.buf.other | 0x100);
        }
        gc->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0 & ~0x100);
    }
}

void __glMgrResetBitmapState(__GLcontext *gc, ...) {
    __glMgrInitPixelStateCRAM(NULL, 0, -2);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk35C, SYMBOL_LOCATION.unk35C, -1);
}

void __glMgrInitFastPath(__GLcontext *gc, __GLcontext *arg1, ...) {
    s64 sp8;
    s32 temp_a7;
    s32 temp_v1;
    u8 *temp_a4;
    u8 *temp_a5;
    u8 *temp_a6;
    u8 *temp_at;
    u8 *temp_t0;
    u8 *temp_t2;

    sp8 = (s64) gc;
    __glMgrInitPixelStateCRAM(NULL, 0, -2, 1, 1, 1);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3C8, SYMBOL_LOCATION.unk3C8, -1);
    temp_t2 = arg1->unk598;
    arg1->exports.shareContext = arg1->exports.forceCurrent;
    temp_t2->unk0 = (s32) temp_t2->unk8;
    temp_t0 = arg1->unk598;
    temp_a7 = temp_t0->unkC;
    temp_t0->unk4 = temp_a7;
    temp_a6 = arg1->unk598;
    temp_a6->unk50 = 4;
    temp_a5 = arg1->unk598;
    temp_a5->unk54 = 4;
    arg1->unk598->unk58 = 4.0f;
    temp_a4 = arg1->unk598;
    temp_a4->unk44 = 0x1908;
    arg1->unkDC = 0x1A000;
    __glMgrInitPixelPath(NULL, 0, 0, 0x1A000, 0x1908, temp_a4, temp_a5, temp_a6, temp_a7);
    __glMgrInitPixelPath((__GLcontext *)0xE6, 0xE6, SYMBOL_LOCATION.unk1AC);
    __glMgrInitPixelPath((__GLcontext *)0xEA, 0xEA, 0);
    __glMgrInitMaskState(arg1, arg1, 0, arg1 + 0x78, SYMBOL_LOCATION.unk1AC);
    if (arg1->unk598->unk48 != 0x1A00) {

    } else {
        temp_v1 = sp8->unk97E4 | 0xF;
        sp8->unk97E4 = temp_v1;
        sp8->unk97E4 = (s32) ((temp_v1 & ~0x3800) | ((arg1->unk68 & 7) << 0xB));
        temp_at = arg1->unk598;
        temp_at->unk41 = (s8) ((8 - (((s32) (temp_at->unk34 + 7) >> 3) & 7)) & 7);
    }
    __glMgrInitCleanupState(arg1, arg1, 0, sp, 0);
    arg1->unkF8 &= ~2;
    __glMgrInitPackingState(arg1, arg1, 0, 0, 0);
}

void __glMgrNewInitFastPath(__GLcontext *gc, void *arg1, ...) {
    s32 temp_lo;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_at;
    void *temp_t0;
    void *temp_v1;

    var_a7 = 1;
    var_a5 = 0x42000000;
    var_a6 = 0x42000000;
    if ((f64) gc->unk2D4 < (second half of f64)) {
        var_a7 = 0xFFFF;
    }
    temp_v1 = arg1->unk598;
    arg1->unk58 = (s32) arg1->unk60;
    temp_v1->unk0 = (s32) temp_v1->unk8;
    temp_at = arg1->unk598;
    temp_at->unk4 = (s32) temp_at->unkC;
    arg1->unk598->unk50 = 4;
    arg1->unk598->unk54 = 4;
    arg1->unk598->unk58 = 4.0f;
    arg1->unk598->unk44 = 0x1908;
    temp_a3 = arg1->unk598;
    if (temp_a3->unk48 == 0x1A00) {
        if (!(((s32) (temp_a3->unk18 + 7) >> 3) & 7)) {
            var_a6 = 0;
        }
        temp_v0 = gc->unk97E4 | 0xF;
        gc->unk97E4 = temp_v0;
        gc->unk97E4 = (s32) ((temp_v0 & ~0x3800) | ((arg1->unk68 & 7) << 0xB));
        temp_t0 = arg1->unk598;
        temp_t0->unk41 = (s8) ((8 - (((s32) (temp_t0->unk34 + 7) >> 3) & 7)) & 7);
        temp_a3_2 = arg1->unk598;
        var_a1 = (s32) temp_a3_2->unk58;
        var_t0 = temp_a3_2->unk0;
    } else {
        var_t0 = temp_a3->unk0;
        var_a1 = (s32) temp_a3->unk58;
        if (!((var_t0 * var_a1) & 7)) {
            var_a6 = 0;
        }
    }
    temp_t1 = arg1->unk598->unk4;
    if (!((temp_t1 * var_a1) & 7)) {
        var_a5 = 0;
    }
    temp_lo = var_t0 / 24;
    M2C_TRAP_IF(0x18 == 0);
    M2C_TRAP_IF(0x18 == 0);
    *(s32 *)0x74080 = 0x8800;
    *(s32 *)0x74080 = 0x80000060;
    *(s32 *)0x74080 = arg1->unkCC;
    *(s32 *)0x74080 = 0x1A000;
    *(s32 *)0x74080 = arg1->unkD4;
    *(s32 *)0x74080 = temp_lo;
    *(s32 *)0x74080 = var_t0 % 24;
    temp_t8 = arg1->unk78;
    *(s32 *)0x74080 = temp_t8;
    *(s32 *)0x74080 = var_a6;
    *(s32 *)0x74080 = 0x42010000;
    *(s32 *)0x74080 = arg1->unk598->unk20;
    *(s32 *)0x74080 = 1;
    *(s32 *)0x74080 = 0x34000;
    *(s32 *)0x74080 = var_a7;
    *(s32 *)0x74080 = arg1->unkD0;
    *(s32 *)0x74080 = 0x1A000;
    *(s32 *)0x74080 = arg1->unkD8;
    *(s32 *)0x74080 = temp_t1 / 24;
    *(s32 *)0x74080 = temp_t1 % 24;
    *(s32 *)0x74080 = temp_t8;
    *(s32 *)0x74080 = var_a5;
    *(s32 *)0x74080 = 0x42010000;
    *(s32 *)0x74080 = arg1->unk598->unk24;
    *(s32 *)0x74080 = 1;
    *(s32 *)0x74080 = 0x34000;
    *(s32 *)0x74080 = var_a7;
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3A8, SYMBOL_LOCATION.unk3A8, -2, temp_lo, __glMgrInitPixelStateCRAM, arg1, var_a5, var_a6, var_a7);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk408, SYMBOL_LOCATION.unk408, -1);
}

void __glMgrInitRGBTransfer(__GLcontext *gc, s64 arg1, ...) {
    s64 sp48;
    s64 sp30;
    s64 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f12;
    f32 temp_f3;
    f32 temp_f6;
    f32 temp_f9;
    s32 temp_a2;
    s32 var_a1;
    s64 var_ra;
    u8 *temp_a0;
    u8 *temp_a1;
    u8 *temp_ra;
    u8 *temp_ra_2;

    var_ra = saved_reg_ra;
    sp30 = arg1;
    sp4 = 0;
    sp0 = -1;
    sp28 = (s64) __glCurrentContext;
    if (gc->unk1A8 & 0x800000) {
        __glMgrInitPixelPath((__GLcontext *)0xEC, 0xEC, SYMBOL_LOCATION.unk34C, 0x800000);
        __glMgrInitUnpackState(gc, gc, 0, 0, SYMBOL_LOCATION.unk34C);
        temp_a0 = gc->unk598;
        gc->unkCC = temp_a0->unk28;
        gc->unkDC = 0;
        gc->unkD0 = temp_a0->unk2C;
        var_ra = sp48;
    }
    var_a1 = gc->unk598->unk48;
    if (var_a1 == 0x1405) {
        sp48 = var_ra;
        __glMgrInitPixelPath((__GLcontext *)0xE9, 0xE9, SYMBOL_LOCATION.unk1B0);
        __glMgrInitShiftAdd(gc, gc, 0, sp, SYMBOL_LOCATION.unk1B0);
        temp_a1 = gc->unk598;
        gc->unkCC = temp_a1->unk28;
        gc->unkDC = 0;
        gc->unkD0 = temp_a1->unk2C;
        var_a1 = temp_a1->unk48;
    }
    if (var_a1 != 0x1406) {
        temp_a2 = 0x800000 & gc->unk1A8;
        if (temp_a2 == 0) {
            sp48 = var_ra;
            __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E0, temp_a2, 0x800000);
            __glMgrInitI2FState(gc, gc, 0, &gc->exports.notifySwapBuffers, SYMBOL_LOCATION.unk2E0);
            temp_ra = gc->unk598;
            gc->unkCC = temp_ra->unk28;
            gc->unkDC = 0;
            gc->unkD0 = temp_ra->unk2C;
        }
    }
    if (((gc->unk1A8 & 3) != 3) || ((f64) gc->exports.dispatchExec != (second half of f64))) {
        sp48 = var_ra;
        __glMgrInitPixelPath((__GLcontext *)0xE8, 0xE8, SYMBOL_LOCATION.unk1B4);
        temp_f12 = sp28->unk268;
        sp8 = temp_f12;
        temp_f9 = sp28->unk26C;
        spC = temp_f9;
        temp_f6 = sp28->unk270;
        sp10 = temp_f6;
        temp_f3 = sp28->unk274;
        sp14 = temp_f3;
        sp18 = sp28->unk27C + ((bitwise f32) gc->exports.dispatchExec * temp_f12);
        sp1C = sp28->unk280 + ((bitwise f32) gc->exports.dispatchExec * temp_f9);
        sp20 = sp28->unk284 + ((bitwise f32) gc->exports.dispatchExec * temp_f6);
        sp24 = sp28->unk288 + ((bitwise f32) gc->exports.dispatchExec * temp_f3);
        __glMgrInitScaleBiasState(gc, gc, sp30, &sp8, SYMBOL_LOCATION.unk1B4, temp_f12);
        temp_ra_2 = gc->unk598;
        gc->unkCC = temp_ra_2->unk28;
        gc->unkDC = 0;
        gc->unkD0 = temp_ra_2->unk2C;
    }
}

void __glMgrInitCITransfer(__GLcontext *gc, ...) {
    s32 sp24;
    s32 sp20;
    u32 sp18;                                       /* compiler-managed */
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    __GLcontext *temp_s2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3_2;
    s32 temp_a3_4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a2_2;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a2;
    u32 temp_a3_3;
    u32 temp_a3_5;
    u32 var_a0;
    u32 var_a0_3;
    u32 var_a2;
    u32 var_a3;
    u32 var_a3_2;
    u8 *temp_a1;
    u8 *temp_a1_2;
    u8 *temp_a1_3;
    u8 *temp_a3;
    u8 *temp_a4;
    u8 *temp_a6;
    u8 *temp_ra;
    u8 *temp_ra_2;
    u8 *temp_v0;
    u8 *temp_v1;

    temp_s2 = __glCurrentContext;
    __glMgrInitPixelStateCRAM(NULL, 0, -2, 1.0f);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3C8, SYMBOL_LOCATION.unk3C8, -1);
    temp_a2 = gc->unk1A8;
    temp_a4 = gc->unk598;
    if ((temp_a2 & 0xC) != 0xC) {
        temp_a2_2 = temp_a4->unk48;
        if (temp_a2_2 != 0x1A00) {
            if (temp_a2_2 == 0x1406) {
                __glMgrInitPixelPath((__GLcontext *)0xE3, 0xE3, SYMBOL_LOCATION.unk334, temp_a2_2);
                __glMgrInitF2IState(gc, gc, 0, sp, SYMBOL_LOCATION.unk334);
                temp_a1 = gc->unk598;
                gc->unkCC = temp_a1->unk28;
                gc->unkDC = 0;
                gc->unkD0 = temp_a1->unk2C;
            }
        } else {
            __glMgrInitPixelPath((__GLcontext *)0xDD, 0xDD, SYMBOL_LOCATION.unk330, temp_a2_2);
            sp8 = (s32) temp_s2->unk455;
            spC = (s32) gc->unk68;
            __glMgrInitB2IState(gc, gc, 0, &sp8, SYMBOL_LOCATION.unk330);
            temp_a1_2 = gc->unk598;
            gc->unkCC = temp_a1_2->unk28;
            gc->unkDC = 0;
            gc->unkD0 = temp_a1_2->unk2C;
        }
        __glMgrInitPixelPath((__GLcontext *)0xE9, 0xE9, SYMBOL_LOCATION.unk1B0);
        sp10 = temp_s2->unk2D8;
        sp14 = temp_s2->unk2DC;
        __glMgrInitShiftAdd(gc, gc, 0, &sp10, SYMBOL_LOCATION.unk1B0);
        temp_a3 = gc->unk598;
        gc->unkCC = temp_a3->unk28;
        gc->unkDC = 0;
        gc->unkD0 = temp_a3->unk2C;
        var_a3 = temp_a3->unk44;
        if (var_a3 != 0x1901) {
            var_a2 = gc->unk1A8;
            if (var_a2 & 0x20010) {
                goto block_5;
            }
            if (var_a3 == 0x1901) {
                goto block_22;
            }
        } else {
block_22:
            var_a2 = gc->unk1A8;
            if (var_a2 & 0x200000) {
block_5:
                if (var_a3 != 0x1901) {
                    if (!(var_a2 & 0x20000)) {
                        var_a0 = temp_s2->unk3B8;
                        sp18 = var_a0;
                    } else {
                        temp_a2_3 = temp_s2->unk3D0;
                        temp_a3_2 = temp_s2->unk3DC;
                        var_a0_2 = temp_a3_2;
                        if (temp_a3_2 < temp_a2_3) {
                            var_a0_2 = temp_a2_3;
                        }
                        sp18 = var_a0_2;
                        temp_a3_3 = temp_s2->unk3E8;
                        var_a2 = (u32) var_a0_2;
                        if ((u32) var_a0_2 < temp_a3_3) {
                            var_a2 = temp_a3_3;
                        }
                        sp18 = var_a2;
                        temp_a0 = temp_s2->unk3F4;
                        var_a3 = var_a2;
                        if (var_a2 < temp_a0) {
                            var_a3 = temp_a0;
                        }
                        var_a0 = var_a3;
                        sp18 = var_a3;
                    }
                } else {
                    var_a0 = temp_s2->unk3C4;
                    sp18 = var_a0;
                }
                if (var_a0 != 0) {
                    sp18 = var_a0 - 1;
                }
                __glMgrInitPixelPath((__GLcontext *)0xE6, 0xE6, SYMBOL_LOCATION.unk360, var_a2, var_a3);
                __glMgrInitMaskState(gc, gc, 0, &sp18, SYMBOL_LOCATION.unk360);
                __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E0);
                __glMgrInitI2FState(gc, gc, 0, sp, SYMBOL_LOCATION.unk2E0);
            }
        }
    } else {
        var_a3_2 = temp_a4->unk44;
        if (var_a3_2 != 0x1901) {
            if (temp_a2 & 0x20010) {
                goto block_26;
            }
            if (var_a3_2 != 0x1901) {
                goto block_51;
            }
            goto block_48;
        }
block_48:
        if (temp_a2 & 0x200000) {
block_26:
            if (var_a3_2 != 0x1901) {
                if (!(temp_a2 & 0x20000)) {
                    var_a0_3 = temp_s2->unk3B8;
                    sp18 = var_a0_3;
                } else {
                    temp_a3_4 = temp_s2->unk3DC;
                    temp_a2_4 = temp_s2->unk3D0;
                    var_a0_4 = temp_a3_4;
                    if (temp_a3_4 < temp_a2_4) {
                        var_a0_4 = temp_a2_4;
                    }
                    sp18 = var_a0_4;
                    temp_a3_5 = temp_s2->unk3E8;
                    var_a2_2 = var_a0_4;
                    if ((u32) var_a0_4 < temp_a3_5) {
                        var_a2_2 = (s32) temp_a3_5;
                    }
                    sp18 = var_a2_2;
                    temp_a0_2 = temp_s2->unk3F4;
                    var_a3_2 = (u32) var_a2_2;
                    if ((u32) var_a2_2 < temp_a0_2) {
                        var_a3_2 = temp_a0_2;
                    }
                    var_a0_3 = var_a3_2;
                    sp18 = var_a3_2;
                }
            } else {
                var_a0_3 = temp_s2->unk3C4;
                sp18 = var_a0_3;
            }
            if (var_a0_3 != 0) {
                sp18 = var_a0_3 - 1;
            }
            temp_a2_5 = gc->unk598->unk48;
            switch (temp_a2_5) {                    /* irregular */
            default:
                __glMgrInitPixelPath((__GLcontext *)0xE6, 0xE6, SYMBOL_LOCATION.unk360, temp_a2_5, var_a3_2, temp_a4);
                __glMgrInitMaskState(gc, gc, 0, &sp18, SYMBOL_LOCATION.unk360);
                temp_v1 = gc->unk598;
                gc->unkCC = temp_v1->unk28;
                gc->unkD0 = temp_v1->unk2C;
                gc->unkDC = 0;
                __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E0);
                __glMgrInitI2FState(gc, gc, 0, sp, SYMBOL_LOCATION.unk2E0);
                break;
            case 0x1406:
                __glMgrInitPixelPath((__GLcontext *)0xE3, 0xE3, SYMBOL_LOCATION.unk334, temp_a2_5, var_a3_2, temp_a4);
                __glMgrInitF2IState(gc, gc, 0, sp, SYMBOL_LOCATION.unk334);
                temp_v0 = gc->unk598;
                gc->unkCC = temp_v0->unk28;
                gc->unkD0 = temp_v0->unk2C;
                gc->unkDC = 0;
                __glMgrInitPixelPath((__GLcontext *)0xE6, 0xE6, SYMBOL_LOCATION.unk360);
                __glMgrInitMaskState(gc, gc, 0, &sp18, SYMBOL_LOCATION.unk360);
                __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E0);
                __glMgrInitI2FState(gc, gc, 0, sp, SYMBOL_LOCATION.unk2E0);
                break;
            case 0x1405:
                __glMgrInitPixelPath((__GLcontext *)0xE9, 0xE9, SYMBOL_LOCATION.unk1B0, temp_a2_5, var_a3_2, temp_a4);
                __glMgrInitPixelPath((__GLcontext *)0xE6, 0xE6, SYMBOL_LOCATION.unk360);
                __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E0);
                temp_a5 = temp_s2->unk2D8 - 1;
                sp10 = temp_a5;
                temp_a4_2 = temp_s2->unk2DC;
                sp14 = temp_a4_2;
                __glMgrInitShiftAdd(gc, gc, 0, &sp10, SYMBOL_LOCATION.unk1B0, temp_a4_2, temp_a5);
                temp_a6 = gc->unk598;
                gc->unkCC = temp_a6->unk28;
                gc->unkDC = 0;
                gc->unkD0 = temp_a6->unk2C;
                __glMgrInitMaskState(gc, gc, 0, &sp18, SYMBOL_LOCATION.unk360);
                __glMgrInitI2FState(gc, gc, 0, sp, SYMBOL_LOCATION.unk2E0);
                break;
            case 0x1A00:
                __glMgrInitPixelPath((__GLcontext *)0xDC, 0xDC, SYMBOL_LOCATION.unk31C, temp_a2_5, var_a3_2, temp_a4);
                sp20 = (s32) temp_s2->unk455;
                sp24 = (s32) gc->unk68;
                __glMgrInitB2FState(gc, gc, 0, &sp20, SYMBOL_LOCATION.unk31C);
                temp_ra = gc->unk598;
                gc->unkCC = temp_ra->unk28;
                gc->unkDC = 0;
                gc->unkD0 = temp_ra->unk2C;
                break;
            }
        } else {
block_51:
            temp_a2_6 = temp_a4->unk48;
            if (temp_a2_6 != 0x1A00) {
                if (temp_a2_6 == 0x1406) {
                    __glMgrInitPixelPath((__GLcontext *)0xE3, 0xE3, SYMBOL_LOCATION.unk334, temp_a2_6, var_a3_2, temp_a4);
                    __glMgrInitF2IState(gc, gc, 0, sp, SYMBOL_LOCATION.unk334);
                    temp_ra_2 = gc->unk598;
                    gc->unkCC = temp_ra_2->unk28;
                    gc->unkDC = 0;
                    gc->unkD0 = temp_ra_2->unk2C;
                }
            } else {
                __glMgrInitPixelPath((__GLcontext *)0xDD, 0xDD, SYMBOL_LOCATION.unk330, temp_a2_6, var_a3_2, temp_a4);
                sp8 = (s32) temp_s2->unk455;
                spC = (s32) gc->unk68;
                __glMgrInitB2IState(gc, gc, 0, &sp8, SYMBOL_LOCATION.unk330);
                temp_a1_3 = gc->unk598;
                gc->unkCC = temp_a1_3->unk28;
                gc->unkDC = 0;
                gc->unkD0 = temp_a1_3->unk2C;
            }
        }
    }
}

void __glMgrInitRGBMap(__GLcontext *gc, __GLcontext *arg1, s32 arg2, ...) {
    s64 sp80;
    s64 sp58;
    s64 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp10;
    s32 spC;
    s32 sp8;
    f32 sp0;
    f32 temp_f7;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s64 var_ra;
    u32 var_a4;
    u8 *temp_a4;
    u8 *temp_a6;
    u8 *temp_v0;
    u8 *temp_v1;

    var_ra = saved_reg_ra;
    sp20 = 0x800000;
    sp1C = 0;
    sp18 = 0x1000;
    sp10 = 0x800000;
    spC = 0;
    sp8 = 0;
    sp38 = 1.0f;
    sp34 = 0.0f;
    sp30 = 0.0f;
    sp2C = 0.0f;
    sp28 = 1.0f;
    sp0 = 0.000015259022f;
    var_a4 = arg1->unk1A8;
    sp50 = (s64) gc;
    sp58 = (s64) __glCurrentContext;
    if (var_a4 & 0x10) {
        if (arg1->unk100 & 1) {
            __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0, 0x1000, var_a4);
            __glMgrInitExpandState(arg1, arg1, arg2, &sp28, 0);
            temp_v0 = arg1->unk598;
            arg1->unkCC = temp_v0->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_v0->unk2C;
        }
        __glMgrInitPixelPath((__GLcontext *)0xDE, 0xDE, SYMBOL_LOCATION.unk2F4);
        __glMgrInitPixelPath((__GLcontext *)0xDB, 0xDB, SYMBOL_LOCATION.unk1C0);
        __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E4);
        sp40 = (f32) (sp58->unk400 - 1);
        sp44 = (f32) (sp58->unk40C - 1);
        sp48 = (f32) (sp58->unk418 - 1);
        sp4C = (f32) (sp58->unk424 - 1);
        __glMgrInitClampState(arg1, arg1, arg2, &sp40, SYMBOL_LOCATION.unk2F4);
        temp_a4 = arg1->unk598;
        temp_a5 = temp_a4->unk28;
        arg1->unkCC = temp_a5;
        temp_a4_2 = temp_a4->unk2C;
        arg1->unkDC = 0;
        arg1->unkD0 = temp_a4_2;
        __glMgrInitLUTRGB(arg1, arg1, arg2, &sp8, SYMBOL_LOCATION.unk1C0, temp_a4_2, temp_a5);
        __glMgrInitI2FState(arg1, arg1, 0, sp, SYMBOL_LOCATION.unk2E4);
        var_a4 = arg1->unk1A8;
        var_ra = sp80;
    }
    if (var_a4 & 0x02000000) {
        sp80 = var_ra;
        if (arg1->unk100 & 2) {
            __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0);
            __glMgrInitExpandState(arg1, arg1, arg2, &sp28, 0);
            temp_v1 = arg1->unk598;
            arg1->unkCC = temp_v1->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_v1->unk2C;
        }
        __glMgrInitPixelPath((__GLcontext *)0xDE, 0xDE, SYMBOL_LOCATION.unk2F8);
        __glMgrInitPixelPath((__GLcontext *)0xDB, 0xDB, SYMBOL_LOCATION.unk1C8);
        __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E8);
        temp_a4_3 = sp50->unk839C - 1;
        temp_f7 = (f32) temp_a4_3;
        sp40 = temp_f7;
        sp44 = temp_f7;
        sp48 = temp_f7;
        sp4C = temp_f7;
        __glMgrInitClampState(arg1, arg1, arg2, &sp40, SYMBOL_LOCATION.unk2F8, temp_a4_3, sp50);
        temp_a6 = arg1->unk598;
        arg1->unkCC = temp_a6->unk28;
        arg1->unkDC = 0;
        arg1->unkD0 = temp_a6->unk2C;
        __glMgrInitColorTable(arg1, arg1, arg2, &sp18, SYMBOL_LOCATION.unk1C8);
        __glMgrInitI2FState(arg1, arg1, 0, sp, SYMBOL_LOCATION.unk2E8);
    }
}

void __glMgrInitCIToRGB(__GLcontext *gc, s32 arg1, ...) {
    s32 sp28;
    s32 sp24;
    s32 sp20;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    s32 temp_a4;
    u8 *temp_a3;

    sp28 = 0x800000;
    sp24 = 1;
    sp20 = 0x10;
    sp18 = 1.0f;
    sp14 = 0.0f;
    sp10 = 0.0f;
    spC = 0.0f;
    sp8 = 1.0f;
    __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0, 0x800000, 0.000015259022f);
    __glMgrInitPixelPath((__GLcontext *)0xDB, 0xDB, SYMBOL_LOCATION.unk1C0);
    __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E4);
    __glMgrInitExpandState(gc, gc, arg1, &sp8, 0);
    temp_a3 = gc->unk598;
    temp_a4 = temp_a3->unk28;
    gc->unkCC = temp_a4;
    gc->unkDC = 0;
    gc->unkD0 = temp_a3->unk2C;
    __glMgrInitLUTCIST(gc, gc, 0, &sp20, SYMBOL_LOCATION.unk1C0, temp_a4);
    __glMgrInitI2FState(gc, gc, 0, sp, SYMBOL_LOCATION.unk2E4);
}

void __glMgrInitCIMap(__GLcontext *gc, s32 arg1, s32 arg2, ...) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a3;
    s32 var_a2;
    s32 var_s4;
    u8 *temp_at;

    var_a2 = arg2;
    temp_a3 = gc->unk598->unk44;
    if (temp_a3 != 0x1901) {
        if (gc->unk1A8 & 0x10) {
            goto block_2;
        }
        if (temp_a3 == 0x1901) {
            goto block_7;
        }
    } else {
block_7:
        var_a2 = 0x200000;
        if (gc->unk1A8 & 0x200000) {
block_2:
            if (arg1 != 8) {
                var_s4 = SYMBOL_LOCATION.unk1C4;
            } else {
                var_s4 = SYMBOL_LOCATION.unk1C0;
            }
            __glMgrInitPixelPath((__GLcontext *)0xDB, 0xDB, var_s4, var_a2, temp_a3, 0x1901);
            sp0 = arg1;
            sp8 = 0x800000;
            sp4 = 1;
            __glMgrInitLUTCIST(gc, gc, 0, sp, var_s4);
            temp_at = gc->unk598;
            gc->unkCC = temp_at->unk28;
            gc->unkDC = 0;
            gc->unkD0 = temp_at->unk2C;
        }
    }
}

void __glMgrInitRGBPipe(__GLcontext *gc, __GLcontext *arg1, void *arg2, ...) {
    s64 spA8;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    f32 sp64;                                       /* compiler-managed */
    f32 sp60;                                       /* compiler-managed */
    f32 sp5C;                                       /* compiler-managed */
    f32 sp58;                                       /* compiler-managed */
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    s8 sp22;
    s8 sp21;
    s8 sp20;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp0;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f6_5;
    f32 temp_f8;
    f64 temp_f6;
    f64 temp_f6_2;
    f64 temp_f6_3;
    f64 temp_f6_4;
    f64 var_f10;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    f64 var_f7;
    f64 var_f7_2;
    f64 var_f7_3;
    f64 var_f7_4;
    f64 var_f7_5;
    f64 var_f7_6;
    f64 var_f8;
    f64 var_f8_2;
    s32 (*temp_a2)(__GLcontext *, void *);
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_s7;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_v0;
    s64 var_ra;
    u32 temp_a0;
    u8 *temp_a0_2;
    u8 *temp_a3_2;
    u8 *temp_a3_3;
    u8 *temp_a3_4;
    u8 *temp_a4;
    u8 *temp_a5_2;
    u8 *temp_at;
    u8 *temp_ra;
    u8 *temp_v0;
    u8 *temp_v0_2;
    u8 *temp_v0_3;
    u8 *temp_v0_4;
    u8 *temp_v1;
    u8 *temp_v1_2;
    u8 *temp_v1_3;
    u8 *temp_v1_4;

    var_ra = saved_reg_ra;
    sp22 = 0;
    sp21 = 0;
    sp20 = 1;
    sp28 = 0.0f;
    sp2C = 0.0f;
    sp30 = 0.0f;
    sp34 = 0.0f;
    sp18 = 1.0f;
    sp14 = 0.0f;
    sp10 = 0.0f;
    spC = 0.0f;
    sp8 = 1.0f;
    sp0 = 0.000015259022f;
    if (arg1->unk598->unk44 != 0x1908) {
        temp_a3 = arg1->unk100 & 0x20;
        if (temp_a3 != 0) {
            __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0, temp_a3);
            __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0);
            temp_ra = arg1->unk598;
            arg1->unkCC = temp_ra->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_ra->unk2C;
            var_ra = spA8;
        }
    }
    if ((gc->unk8294 == 0) || (arg1->exports.unk40 != 3)) {
        if ((gc->unk82E4 != 0) && (arg1->exports.unk40 != 3)) {
            spA8 = var_ra;
            __glMgrInitConvolve2DState(arg1, arg1, arg2, &sp28, SYMBOL_LOCATION.unk328);
            temp_v0 = arg1->unk598;
            arg1->unkCC = temp_v0->unk28;
            var_v0 = temp_v0->unk2C;
            arg1->unkDC = 0;
            goto block_8;
        }
        if ((gc->unk8334 != 0) && (spA8 = var_ra, (arg1->exports.unk40 != 3))) {
            __glMgrInitSeparable2DState(arg1, arg1, arg2, &sp28, SYMBOL_LOCATION.unk328);
            temp_v1 = arg1->unk598;
            arg1->unkCC = temp_v1->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_v1->unk2C;
        } else {
            spA8 = var_ra;
            __glMgrInitPixelStateCRAM(NULL, 0, -2);
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3C8, SYMBOL_LOCATION.unk3C8, -1);
        }
    } else {
        spA8 = var_ra;
        __glMgrInitConvolve1DState(arg1, arg1, arg2, &sp28, SYMBOL_LOCATION.unk328);
        temp_v0_2 = arg1->unk598;
        arg1->unkCC = temp_v0_2->unk28;
        var_v0 = temp_v0_2->unk2C;
        arg1->unkDC = 0;
block_8:
        arg1->unkD0 = var_v0;
    }
    temp_a0 = arg1->unk1A8;
    if (!(temp_a0 & 0x80000) || !(temp_a0 & 0x40000)) {
        __glMgrInitPixelPath((__GLcontext *)0xE8, 0xE8, SYMBOL_LOCATION.unk1B8);
        sp38 = gc->unk836C;
        sp3C = gc->unk8370;
        sp40 = gc->unk8374;
        sp44 = gc->unk8378;
        sp48 = gc->unk837C;
        sp4C = gc->unk8380;
        sp50 = gc->unk8384;
        sp54 = gc->unk8388;
        __glMgrInitScaleBiasState(arg1, arg1, arg2, &sp38, SYMBOL_LOCATION.unk1B8);
        temp_at = arg1->unk598;
        arg1->unkCC = temp_at->unk28;
        arg1->unkDC = 0;
        arg1->unkD0 = temp_at->unk2C;
    }
    var_at = arg1->unk1A8 & 0x100;
    if (arg1->unk1A8 & 0x04000000) {
        if (arg1->unk100 & 4) {
            __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0);
            __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0);
            temp_a3_2 = arg1->unk598;
            arg1->unkCC = temp_a3_2->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_a3_2->unk2C;
        }
        __glMgrInitPixelPath((__GLcontext *)0xDE, 0xDE, SYMBOL_LOCATION.unk2FC);
        __glMgrInitPixelPath((__GLcontext *)0xDB, 0xDB, SYMBOL_LOCATION.unk2DC);
        __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2EC);
        temp_f3 = (f32) (gc->unk8414 - 1);
        sp58 = temp_f3;
        sp5C = temp_f3;
        sp60 = temp_f3;
        sp64 = temp_f3;
        __glMgrInitClampState(arg1, arg1, arg2, &sp58, SYMBOL_LOCATION.unk2FC);
        temp_a4 = arg1->unk598;
        temp_a5 = temp_a4->unk28;
        arg1->unkCC = temp_a5;
        temp_a4_2 = temp_a4->unk2C;
        arg1->unkDC = 0;
        arg1->unkD0 = temp_a4_2;
        sp6C = 0;
        sp68 = 0x2000;
        sp70 = 0x800000;
        __glMgrInitColorTable(arg1, arg1, arg2, &sp68, SYMBOL_LOCATION.unk2DC, temp_a4_2, temp_a5);
        __glMgrInitI2FState(arg1, arg1, 0, sp, SYMBOL_LOCATION.unk2EC);
        var_at = arg1->unk1A8 & 0x100;
    }
    if (var_at == 0) {
        if (arg1->unk598->unk4C != 4) {
            __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0);
            __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0);
            temp_v0_3 = arg1->unk598;
            arg1->unkCC = temp_v0_3->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_v0_3->unk2C;
        }
        __glMgrInitPixelPath((__GLcontext *)0xDF, 0xDF, SYMBOL_LOCATION.unk1DC);
        __glMgrInitColorMatrixState(arg1, arg1, 0, 0, SYMBOL_LOCATION.unk1DC);
        temp_a3_3 = arg1->unk598;
        arg1->unkCC = temp_a3_3->unk28;
        arg1->unkDC = 0;
        arg1->unkD0 = temp_a3_3->unk2C;
    }
    if (!(arg1->unk1A8 & 0x400) || !(arg1->unk1A8 & 0x200)) {
        __glMgrInitPixelPath((__GLcontext *)0xE8, 0xE8, SYMBOL_LOCATION.unk1BC);
        temp_f19 = gc->unk825C;
        sp38 = temp_f19;
        temp_f18 = gc->unk8260;
        sp3C = temp_f18;
        temp_f17 = gc->unk8264;
        sp40 = temp_f17;
        temp_f16 = gc->unk8268;
        sp44 = temp_f16;
        temp_f15 = gc->unk826C;
        sp48 = temp_f15;
        temp_f14 = gc->unk8270;
        sp4C = temp_f14;
        temp_f13 = gc->unk8274;
        sp50 = temp_f13;
        temp_f12 = gc->unk8278;
        sp54 = temp_f12;
        __glMgrInitScaleBiasState(arg1, arg1, arg2, &sp38, SYMBOL_LOCATION.unk1BC, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
        temp_v1_2 = arg1->unk598;
        arg1->unkCC = temp_v1_2->unk28;
        arg1->unkDC = 0;
        arg1->unkD0 = temp_v1_2->unk2C;
    }
    var_at_2 = arg1->unk1A8 & 0x40;
    if (arg1->unk1A8 & 0x08000000) {
        if (arg1->unk100 & 8) {
            __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0);
            __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0);
            temp_v0_4 = arg1->unk598;
            arg1->unkCC = temp_v0_4->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_v0_4->unk2C;
        }
        __glMgrInitPixelPath((__GLcontext *)0xDE, 0xDE, SYMBOL_LOCATION.unk300);
        __glMgrInitPixelPath((__GLcontext *)0xDB, 0xDB, SYMBOL_LOCATION.unk368);
        __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2F0);
        temp_f4 = (f32) (gc->unk8450 - 1);
        sp58 = temp_f4;
        sp5C = temp_f4;
        sp60 = temp_f4;
        sp64 = temp_f4;
        __glMgrInitClampState(arg1, arg1, 0, &sp58, SYMBOL_LOCATION.unk300);
        temp_a5_2 = arg1->unk598;
        temp_a6 = temp_a5_2->unk28;
        arg1->unkCC = temp_a6;
        temp_a5_3 = temp_a5_2->unk2C;
        arg1->unkDC = 0;
        arg1->unkD0 = temp_a5_3;
        sp70 = 0x800000;
        sp6C = 0;
        sp68 = 0x4000;
        __glMgrInitColorTable(arg1, arg1, arg2, &sp68, SYMBOL_LOCATION.unk368, 0x800000, temp_a5_3, temp_a6);
        __glMgrInitI2FState(arg1, arg1, 0, sp, SYMBOL_LOCATION.unk2F0);
        var_at_2 = arg1->unk1A8 & 0x40;
    }
    var_at_3 = arg1->unk1A8 & 0x80;
    if (var_at_2 != 0) {
        if (arg1->unk598->unk5C & 0x10) {
            if (!(gc->unk81F8 & 0x10)) {
                __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0);
                __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0);
                temp_a3_4 = arg1->unk598;
                arg1->unkCC = temp_a3_4->unk28;
                arg1->unkDC = 0;
                arg1->unkD0 = temp_a3_4->unk2C;
            }
        }
        __glMgrInitPixelPath((__GLcontext *)0xE4, 0xE4, SYMBOL_LOCATION.unk1D0);
        __glMgrInitHistogramState(arg1, arg1, arg2, 0, SYMBOL_LOCATION.unk1D0);
        if (gc->unk81F0 == 0) {
            var_at_3 = arg1->unk1A8 & 0x80;
            goto block_31;
        }
        __glMgrInitPixelPath((__GLcontext *)0xEA, 0xEA, 0);
        __glMgrInitCleanupState(arg1, arg1, 0, &sp20, 0);
        arg1->unkF8 |= 1;
        return;
    }
block_31:
    if (var_at_3 != 0) {
        if (arg1->unk598->unk44 == 0x1909) {
            __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0);
            __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0);
            temp_v1_3 = arg1->unk598;
            arg1->unkCC = temp_v1_3->unk28;
            arg1->unkDC = 0;
            arg1->unkD0 = temp_v1_3->unk2C;
        }
        __glMgrInitPixelPath((__GLcontext *)0xE7, 0xE7, SYMBOL_LOCATION.unk1D4);
        __glMgrInitMinMaxState(arg1, arg1, arg2, 0, SYMBOL_LOCATION.unk1D4);
        if (gc->unk820D != 0) {
            __glMgrInitPixelPath((__GLcontext *)0xEA, 0xEA, 0);
            __glMgrInitCleanupState(arg1, arg1, 0, &sp20, 0);
            arg1->unkF8 |= 1;
            return;
        }
        goto block_39;
    }
block_39:
    __glMgrInitPixelPath((__GLcontext *)0xDE, 0xDE, SYMBOL_LOCATION.unk304);
    sp58 = arg1->exports.beginDispatchOverride;
    sp5C = arg1->exports.beginDispatchOverride;
    sp60 = arg1->exports.beginDispatchOverride;
    sp64 = arg1->exports.beginDispatchOverride;
    temp_f6 = (f64) arg2->unk0;
    var_a0 = 1;
    if (!(temp_f6 < 1.0)) {
        var_a0 = 0;
    }
    var_f8 = temp_f6;
    if (var_a0 == 0) {
        var_f8 = 1.0;
    }
    if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f8) {
        if (var_a0 == 0) {

        }
    }
    temp_f6_2 = (f64) arg2->unk4;
    var_a0_2 = 1;
    if (!(temp_f6_2 < 1.0)) {
        var_a0_2 = 0;
    }
    arg2->unk0 = (f32) ((f64) (second half of f64) * (second half of f64));
    if (var_a0_2 != 0) {
        var_f7 = temp_f6_2;
    } else {
        var_f7 = 1.0;
    }
    var_f7_2 = GLUE_F64(0x3FF0000000000000U, 0U);
    if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7) {
        var_f8_2 = second half of f64;
        if (var_a0_2 == 0) {
            var_f8_2 = 1.0;
        }
        var_f7_2 = var_f8_2;
    }
    temp_f6_3 = (f64) arg2->unk8;
    var_a0_3 = 1;
    temp_f8 = (f32) ((f64) sp5C * var_f7_2);
    if (!(temp_f6_3 < 1.0)) {
        var_a0_3 = 0;
    }
    arg2->unk4 = temp_f8;
    if (var_a0_3 != 0) {
        var_f7_3 = temp_f6_3;
    } else {
        var_f7_3 = 1.0;
    }
    var_f7_4 = GLUE_F64(0x3FF0000000000000U, 0U);
    if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_3) {
        var_f10 = second half of f64;
        if (var_a0_3 == 0) {
            var_f10 = 1.0;
        }
        var_f7_4 = var_f10;
    }
    temp_f6_4 = (f64) arg2->unkC;
    var_a0_4 = 1;
    temp_f10 = (f32) ((f64) sp60 * var_f7_4);
    if (!(temp_f6_4 < 1.0)) {
        var_a0_4 = 0;
    }
    arg2->unk8 = temp_f10;
    if (var_a0_4 != 0) {
        var_f7_5 = temp_f6_4;
        var_f6 = second half of f64;
    } else {
        var_f7_5 = 1.0;
        var_f6 = second half of f64;
    }
    if (!(GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_5)) {
        var_f5 = GLUE_F64(0x3FF0000000000000U, 0U);
        var_f4 = second half of f64;
    } else {
        var_f7_6 = var_f6;
        if (var_a0_4 == 0) {
            var_f7_6 = 1.0;
        }
        var_f5 = var_f7_6;
        var_f4 = second half of f64;
    }
    temp_f6_5 = (f32) ((f64) sp64 * var_f5);
    arg2->unkC = temp_f6_5;
    temp_a0_2 = arg1->unk598;
    if ((((f64) (second half of f64) == var_f4) || (var_a1 = 1, ((temp_a0_2->unk5C & 8) != 0))) && (((f64) temp_f8 == var_f4) || (var_a1 = 1, ((temp_a0_2->unk5C & 4) != 0)))) {
        if (((f64) temp_f10 == var_f4) || (temp_a0_2->unk5C & 2)) {
            if (((bitwise f32) sp64 == temp_f6_5) || (var_a1 = 1, ((temp_a0_2->unk5C & 1) != 0))) {
                temp_a1 = temp_a0_2->unk44;
                if (temp_a1 == 0x190A) {
                    if (arg1->unk1A8 & 0x01000000) {
                        goto block_79;
                    }
                    goto block_81;
                }
block_79:
                if ((arg1->imports.fprintf != temp_a1) && (temp_a1 != 0x1908)) {
                    goto block_81;
                }
                temp_a4_3 = arg1->unk1A8 & 0x01000000;
                if (temp_a4_3 != 0) {
                    temp_a2 = arg1->imports.fclose;
                    if ((temp_a2 != (s32 (*)(__GLcontext *, void *))0x1903) && (temp_a2 != (s32 (*)(__GLcontext *, void *))0x1904) && (temp_a2 != (s32 (*)(__GLcontext *, void *))0x1905) && (temp_a2 != (s32 (*)(__GLcontext *, void *))0x1906)) {
                        goto block_109;
                    }
                    goto block_81;
                }
block_109:
                if (temp_a1 != 0x1906) {
                    goto block_110;
                }
                if (temp_a4_3 == 0) {
                    goto block_81;
                }
block_110:
                var_a1 = 0;
            }
        } else {
block_81:
            var_a1 = 1;
        }
    }
    if (var_a1 != 0) {
        goto block_83;
    }
    var_a0_5 = 0;
    if (temp_a0_2->unk44 == 0x1908) {
block_83:
        var_a0_5 = 0;
        if (arg1->imports.fprintf != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1908) {
            var_a0_5 = 0;
            if (arg1->unk1A8 & 0x01000000) {
                var_a0_5 = 1;
            }
        }
    }
    temp_s7 = var_a0_5 & 0xFF;
    if (var_a1 != 0) {

    } else if (temp_s7 == 0) {
        if (arg1->unk1A8 & 0x01000800) {
            arg1->unkDC = 0x1A000;
        }
    }
    __glMgrInitClampState(arg1, arg1, 0, &sp58, SYMBOL_LOCATION.unk304);
    temp_v1_4 = arg1->unk598;
    arg1->unkCC = temp_v1_4->unk28;
    arg1->unkDC = 0;
    arg1->unkD0 = temp_v1_4->unk2C;
    if (var_a1 != 0) {
        __glMgrInitPixelPath((__GLcontext *)0xE2, 0xE2, SYMBOL_LOCATION.unk1A0);
        if (temp_s7 == 0) {
            if (arg1->unk1A8 & 0x01000800) {
                arg1->unkDC = 0x1A000;
                arg1->unk100 |= 0xE00;
                sp8 = 0.0f;
                __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0, 0x1A000);
            } else {
                goto block_94;
            }
        } else {
block_94:
            __glMgrInitExpandState(arg1, arg1, arg2, &sp8, 0);
        }
    }
    if (temp_s7 != 0) {
        __glMgrInitPixelPath((__GLcontext *)0xED, 0xED, SYMBOL_LOCATION.unk350);
        arg1->unkDC = 0x1A000;
        __glMgrInitCompressState(arg1, arg1, 0, 0, SYMBOL_LOCATION.unk350);
    }
}

void __glMgrInitDepthPipe(__GLcontext *gc, ...) {
    f32 sp30;
    f32 sp20;
    f32 sp10;
    s32 spC;
    s32 sp8;
    f32 sp0;
    __GLcontext *temp_s2;
    f32 temp_f5;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a3_2;
    s32 temp_a4;
    u8 *temp_a2_2;
    u8 *temp_a3;
    u8 *temp_at;
    u8 *temp_v1;

    spC = 0;
    sp8 = -1;
    sp0 = 4.294967e9f;
    temp_a2 = gc->imports.unk40;
    temp_s2 = __glCurrentContext;
    if ((temp_a2 != 0) && (temp_a2 != 1)) {
        if ((temp_a2 != 2) && (temp_a2 != 3)) {
            if (temp_a2 == 4) {
                sp0 = 4.294967e9f;
            }
        } else {
            sp0 = 65535.0f;
        }
    } else {
        sp0 = 255.0f;
    }
    __glMgrInitPixelStateCRAM(NULL, 0, -2, temp_a2);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3C8, SYMBOL_LOCATION.unk3C8, -1);
    temp_a0 = gc->unk598->unk48;
    if (temp_a0 != 0x1405) {
        if (temp_a0 != 0x1406) {
            __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E0);
            __glMgrInitI2FState(gc, gc, 0, &gc->exports.notifySwapBuffers, SYMBOL_LOCATION.unk2E0);
            temp_at = gc->unk598;
            gc->unkCC = temp_at->unk28;
            gc->unkDC = 0;
            gc->unkD0 = temp_at->unk2C;
        }
    } else {
        __glMgrInitPixelPath((__GLcontext *)0xE9, 0xE9, SYMBOL_LOCATION.unk1B0);
        __glMgrInitPixelPath((__GLcontext *)0xE5, 0xE5, SYMBOL_LOCATION.unk2E0);
        __glMgrInitShiftAdd(gc, gc, 0, &sp8, SYMBOL_LOCATION.unk1B0);
        temp_a3 = gc->unk598;
        temp_a4 = temp_a3->unk28;
        gc->unkCC = temp_a4;
        gc->unkD0 = temp_a3->unk2C;
        gc->unkDC = 0;
        __glMgrInitI2FState(gc, gc, 0, &gc->exports.notifySwapBuffers, SYMBOL_LOCATION.unk2E0, temp_a4);
    }
    if (((f64) (second half of f64) != (second half of f64)) || ((f64) temp_s2->unk28C != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) || ((f64) gc->exports.dispatchExec != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))) {
        __glMgrInitPixelPath((__GLcontext *)0xE8, 0xE8, SYMBOL_LOCATION.unk1B4);
        temp_f5 = temp_s2->unk278;
        sp10 = temp_f5;
        sp20 = temp_s2->unk28C + ((bitwise f32) gc->exports.dispatchExec * temp_f5);
        __glMgrInitScaleBiasState(gc, gc, 0, &sp10, SYMBOL_LOCATION.unk1B4);
        temp_v1 = gc->unk598;
        gc->unkCC = temp_v1->unk28;
        gc->unkDC = 0;
        gc->unkD0 = temp_v1->unk2C;
    }
    __glMgrInitPixelPath((__GLcontext *)0xDE, 0xDE, SYMBOL_LOCATION.unk2F4);
    sp30 = 1.0f;
    __glMgrInitClampState(gc, gc, 0, &sp30, SYMBOL_LOCATION.unk2F4);
    temp_a2_2 = gc->unk598;
    temp_a3_2 = temp_a2_2->unk28;
    gc->unkCC = temp_a3_2;
    temp_a2_3 = temp_a2_2->unk2C;
    gc->unkDC = 0;
    gc->unkD0 = temp_a2_3;
    __glMgrInitPixelPath((__GLcontext *)0xE1, 0xE1, SYMBOL_LOCATION.unk338, temp_a2_3, temp_a3_2);
    if (gc->unk1A8 & 0x01000800) {
        gc->unkDC = 0x1A000;
    }
    __glMgrInitDepthFinalState(gc, gc, 0, sp, SYMBOL_LOCATION.unk338);
}

void __glMgrInitCIPipe(__GLcontext *gc, s32 arg1, ...) {
    s32 sp2C;
    u8 *temp_v0;

    sp2C = arg1;
    __glMgrInitPixelPath((__GLcontext *)0xE6, 0xE6, SYMBOL_LOCATION.unk1AC);
    if (gc->unk1A8 & 0x01000800) {
        gc->unkDC = 0x1A000;
    }
    __glMgrInitMaskState(gc, gc, 0, &sp2C, SYMBOL_LOCATION.unk1AC);
    temp_v0 = gc->unk598;
    gc->unkCC = temp_v0->unk28;
    gc->unkDC = 0;
    gc->unkD0 = temp_v0->unk2C;
}

void __glMgrInitImagingPipe(__GLcontext *gc, ...) {
    f32 sp24;
    f32 sp20;
    s32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    s8 sp2;
    s8 sp1;
    s8 sp0;
    __GLcontext *temp_s1;
    f32 temp_f6;
    f32 var_f5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 var_a0;
    s32 var_a2;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 var_a3;
    u8 *temp_a4;

    sp2 = 0;
    sp1 = 1;
    sp0 = 1;
    temp_s1 = __glCurrentContext;
    if (gc->imports.malloc == NULL) {
        gc->unk598->unk44 = (s32 (*)(__GLcontext *, void *)) gc->imports.fclose;
        gc->unk598->unk48 = (void *) gc->imports.wscx;
        gc->unk598->unk4C = (void *) gc->imports.other;
        gc->unk598->unk50 = (s32) gc->imports.unk3C;
        gc->unk598->unk54 = (s32) gc->imports.unk40;
        gc->unk598->unk58 = (u8 (*)(__GLcontext *)) gc->exports.loseCurrent;
        gc->unk598->unk5C = (s32) gc->unkFC;
        gc->unk598->unk64 = (s32) gc->imports.unk48;
        temp_a4 = gc->unk598;
        gc->unkF8 = 2;
        var_a3 = gc->unk1A8;
        gc->unkCC = temp_a4->unk20;
        gc->unkD0 = temp_a4->unk24;
        gc->unkD4 = temp_a4->unk28;
        gc->unkDC = (s32) (gc->unk5E0 + 0x80C8) >> 1;
        gc->unkD8 = temp_a4->unk2C;
        if ((var_a3 & 0x3E9E8FF3) != 0x100E8F03) {
            var_a2 = var_a3 & 0x3002483C;
            if (var_a2 != 0x1000480C) {
                if ((var_a3 & 0x3021082C) == 0x1001080C) {
                    if (temp_a4->unk48 != (void *)0x1A00) {
                        goto block_5;
                    }
                    goto block_12;
                }
                goto block_11;
            }
        }
block_5:
        var_a2 = (s32) temp_a4->unk44;
        if (var_a2 != 0x190A) {
            goto block_6;
        }
        if (!(var_a3 & 0x01000000)) {
            goto block_11;
        }
block_6:
        var_a3 = (u32) gc->imports.fprintf;
        if (gc->imports.fclose == var_a3) {
            var_a2 = (s32) gc->imports.wscx;
            if (gc->imports.getDrawablePrivate == var_a2) {
                if (var_a3 != 0x1906) {
                    gc->unkF8 = 6;
                    __glMgrNewInitFastPath(temp_s1, temp_s1, gc, var_a2, var_a3, temp_a4, 0x100E8F03);
                    return;
                }
                goto block_11;
            }
            goto block_12;
        }
block_11:
block_12:
        sp14 = 1.0f;
        sp10 = 0.0f;
        spC = 0.0f;
        sp8 = 0.0f;
        __glMgrInitPixelPath(NULL, 0, 0, var_a2, var_a3, temp_a4, 0x100E8F03);
        temp_a3 = gc->unk1A8;
        temp_a2 = temp_a3 & 0x8000;
        if (temp_a2 != 0) {
            __glMgrInitRGBTransfer(gc, gc, &sp8, temp_a2, temp_a3);
            __glMgrInitRGBMap(temp_s1, temp_s1, gc, &sp8);
            __glMgrInitRGBPipe(temp_s1, temp_s1, gc, &sp8);
            var_a0 = gc->unkF8;
        } else if (temp_a3 & 0x4000) {
            __glMgrInitCITransfer(gc, gc);
            if (gc->unk1A8 & 0x20000) {
                __glMgrInitCIToRGB(gc, gc, &sp8, 0x20000);
                __glMgrInitRGBPipe(temp_s1, temp_s1, gc, &sp8);
                var_a0 = gc->unkF8;
            } else {
                __glMgrInitCIMap(gc, gc, 8, 0x20000);
                __glMgrInitCIPipe(gc, gc, temp_s1->unk7844);
                var_a0 = gc->unkF8 & ~2;
                gc->unkF8 = var_a0;
            }
        } else if (gc->unk598->unk44 != (s32 (*)(__GLcontext *, void *))0x1901) {
            __glMgrInitDepthPipe(gc, gc);
            var_a0 = gc->unkF8;
        } else {
            __glMgrInitCITransfer(gc, gc);
            __glMgrInitCIMap(gc, gc, 4);
            temp_a2_2 = temp_s1->unk79C4;
            __glMgrInitCIPipe(gc, gc, (2 << temp_a2_2) - 1, temp_a2_2);
            var_a0 = gc->unkF8 & ~2;
            gc->unkF8 = var_a0;
        }
        if (var_a0 & 1) {
            return;
        }
        temp_a3_2 = gc->unk1A8;
        temp_a2_3 = temp_a3_2 & 0x11000000;
        if (temp_a2_3 == 0) {
            __glMgrInitPixelPath((__GLcontext *)0x115, 0x115, 0, temp_a2_3, temp_a3_2);
            if (gc->unk1A8 & 0x01000800) {
                sp18 = 0;
            } else {
                sp18 = 1;
            }
            __glMgrInitXZoomState(gc, gc, 0, &sp18, SYMBOL_LOCATION.unk450);
        }
        if (!(0x01000800 & gc->unk1A8)) {
            __glMgrInitPixelPath((__GLcontext *)0xEB, 0xEB, 0);
            temp_f6 = temp_s1->unk2D4;
            if (temp_f6 < 0.0f) {
                var_f5 = -temp_f6;
            } else {
                var_f5 = temp_f6;
            }
            sp24 = second half of f64;
            sp20 = (f32) (1.0 / (f64) var_f5);
            __glMgrInitZoomState(gc, gc, 0, &sp20, SYMBOL_LOCATION.unk244);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0xEA, 0);
            __glMgrInitCleanupState(gc, gc, 0, sp, 0);
        }
        __glMgrInitPackingState(gc, gc, 0, 0, 0);
        return;
    }
    __glMgrInitPixelPipe(gc, gc, 1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84], gap at: 0x28. */
void __glMgrInitHostToRSS(__GLcontext *gc, void *arg1, s64 arg2, __GLcontext *arg3, ...) {
    s64 spA0;
    f32 sp18;
    s32 sp14;
    s32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f6;
    f32 var_f7;
    f32 var_f7_2;
    s32 temp_a0_2;
    s32 temp_a0_7;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_s1;
    s32 var_s5;
    s64 temp_a3_3;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3_3;
    s64 var_a3_4;
    s64 var_ra;
    s64 var_s2;
    void *temp_s4;

    var_ra = saved_reg_ra;
    spC = 0.0f;
    sp8 = 0.0f;
    sp4 = 0.0f;
    sp0 = 0.0f;
    temp_a5 = arg1->unk8C;
    unksp30 = arg2;
    if ((temp_a5 != 5) && (temp_a5 != 6) && (temp_a5 != 7)) {
        if (arg3 != NULL) {
            __glMgrim_GetFloatv(GL_CURRENT_RASTER_POSITION, sp);
            var_f6 = (f32) ((f64) sp4 + 49151.5);
            var_ra = spA0;
            sp4 = var_f6;
            sp0 = (f32) ((f64) sp0 + (second half of f64));
        } else {
            var_f6 = 0.0f;
            sp0 = 0.0f;
            sp4 = 0.0f;
        }
        var_a0 = 1;
        if (!(gc->unk2D0 < 0.0f)) {
            var_a0 = 0;
        }
        if (var_a0 != 0) {
            var_f7 = -(second half of f64);
        } else {
            var_f7 = second half of f64;
        }
        if (((f64) var_f7 > 1.0) && (arg1->unk1A8 & 0x10000000)) {
            unksp60 = 1;
        } else {
            unksp60 = 0;
        }
        unksp48 = unksp60;
        if (var_a0 != 0) {
            var_f7_2 = -(second half of f64);
        } else {
            var_f7_2 = second half of f64;
        }
        if (!((f64) var_f7_2 < 1.0) && (arg1->unk1A8 & 0x10000000)) {
            var_a0_2 = 0;
        } else {
            var_a0_2 = 1;
        }
        temp_f3 = gc->unk2D4;
        var_s2 = (s32) ((temp_f3 * (f32) (arg1->unk24 - arg1->unk5FC)) + var_f6) - (second half of f64);
        var_a3 = (second half of f64) - var_s2;
        if ((f64) temp_f3 < GLUE_F64(0x3FF0000000000000U, 0U)) {
            spA0 = var_ra;
            unksp40 = var_a0_2;
            unksp28 = var_a0_2;
            var_a3 = -var_a3;
        }
        unksp28 = var_a0_2;
        unksp40 = var_a0_2;
        spA0 = var_ra;
        sp18 = (f32) var_a3;
        __glMgrInitPixelStateCRAM((bitwise __GLcontext *) sp18, sp18, -2);
        temp_f6 = gc->unk2D4;
        if (temp_f6 < 0.0f) {
            var_f5 = -temp_f6;
        } else {
            var_f5 = temp_f6;
        }
        sp18 = (f32) ((second half of f64) / (f64) var_f5);
        __glMgrInitPixelStateCRAM((bitwise __GLcontext *) sp18, sp18, -2);
        temp_a0 = SYMBOL_LOCATION.unk244 + 3;
        __glMgrInitPixelStateCRAM(temp_a0, temp_a0, -1);
        temp_a0_2 = arg1->unkBC;
        var_ra = spA0;
        temp_a1 = arg1->unk598->unk34;
        if (unksp60 != 0) {
            temp_at = arg1->unk1A0;
            var_s5 = temp_a0_2;
            sp14 = temp_at;
            sp10 = temp_at;
            var_s1 = (s32) ((temp_a1 * temp_at) + 0xFF) >> 8;
        } else if (unksp40 != 0) {
            if (GLUE_F64(sp0, 0U) < (f64) gc->unk2D0) {
                temp_a2 = (second half of f64) - (s32) ((f32) temp_a0_2 + sp0);
                var_s1 = temp_a2;
                if (temp_a2 != 0) {
                    temp_v0 = (arg1->unk19C * temp_a1) << 8;
                    temp_lo = temp_v0 / temp_a2;
                    M2C_TRAP_IF(temp_a2 == 0);
                    M2C_TRAP_IF(temp_lo == 0);
                    sp10 = temp_lo;
                    var_a4 = (((temp_v0 / temp_lo) - temp_a2) << 8) + temp_lo;
                    goto block_59;
                }
            } else {
                temp_a2_2 = (s32) (sp0 - (f32) temp_a0_2) - (second half of f64);
                var_s1 = temp_a2_2;
                if (temp_a2_2 != 0) {
                    temp_v0_2 = (arg1->unk19C * temp_a1) << 8;
                    temp_lo_2 = temp_v0_2 / temp_a2_2;
                    M2C_TRAP_IF(temp_a2_2 == 0);
                    M2C_TRAP_IF(temp_lo_2 == 0);
                    sp10 = temp_lo_2;
                    var_a4 = (((temp_v0_2 / temp_lo_2) - temp_a2_2) << 8) + temp_lo_2;
block_59:
                    sp14 = var_a4;
                }
            }
            var_s5 = temp_a0_2;
        } else {
            var_s1 = temp_a1;
            var_s5 = (s32) unksp30;
        }
        arg1->unkBC = (s32) (temp_a0_2 + var_s1);
        var_a0_3 = 0;
        var_a2 = 1;
        if (GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U) < (f64) gc->unk2D0) {
            var_a1 = 1;
            if (var_s2 <= 0) {
                goto block_28;
            }
        } else {
            var_s1 = -var_s1;
            var_a1 = -1;
            var_s5 = -1 - var_s5;
            if (var_s2 <= 0) {
block_28:
                var_a0_3 = -1;
                var_a2 = -1;
            }
        }
    } else {
        var_s5 = (s32) unksp30;
        var_a0_3 = 0;
        unksp48 = 0;
        unksp28 = 0;
        var_a1 = 1;
        var_a2 = 1;
        var_s2 = (s64) arg1->unk24;
        var_s1 = arg1->unk598->unk34;
        sp14 = 0x100;
        sp10 = 0x100;
        arg1->unkBC = (s32) (arg1->unkBC + var_s1);
    }
    if (arg3 != NULL) {
        sp0 = (f32) ((f64) sp0 + -49151.5);
        sp4 = (f32) ((f64) sp4 + (second half of f64));
    }
    if ((var_s1 == 0) || (var_a3_2 = 0, (var_s2 == 0))) {
        var_a3_2 = 1;
    }
    if (var_a3_2 == 0) {
        temp_a3 = arg1->unk18 + var_s5;
        temp_f6_2 = (f32) temp_a3 + sp0;
        var_f4 = temp_f6_2;
        if (temp_f6_2 < 0.0f) {
            var_f4 = -temp_f6_2;
        }
        if (!(var_f4 > 12288.0f)) {
            temp_f4 = (f32) ((temp_a3 + var_s1) - var_a1) + sp0;
            var_f5_2 = temp_f4;
            if (temp_f4 < 0.0f) {
                var_f5_2 = -temp_f4;
            }
            if (!(var_f5_2 > 12288.0f)) {
                temp_a3_2 = arg1->unk1C + var_a0_3;
                temp_f5 = (f32) temp_a3_2 + sp4;
                var_f4_2 = temp_f5;
                if (temp_f5 < 0.0f) {
                    var_f4_2 = -temp_f5;
                }
                if (!(var_f4_2 > 12288.0f)) {
                    temp_a4 = (temp_a3_2 + var_s2) - var_a2;
                    temp_f5_2 = (f32) temp_a4 + sp4;
                    var_f4_3 = temp_f5_2;
                    if (temp_f5_2 < 0.0f) {
                        var_f4_3 = -temp_f5_2;
                    }
                    unksp58 = var_a0_3;
                    unksp38 = var_a1;
                    unksp50 = var_a2;
                    if (var_f4_3 > 12288.0f) {
                        /* Duplicate return node #38. Try simplifying control flow for better match */
                        arg1->unkF8 = (s32) (arg1->unkF8 | 1);
                        return;
                    }
                    spA0 = var_ra;
                    __glMgrRSSRegShadow((__GLcontext *)0x155, 0x155, sp10, SYMBOL_LOCATION.unk5C, 0, temp_a4);
                    __glMgrRSSRegShadow((__GLcontext *)0x154, 0x154, sp14, SYMBOL_LOCATION.unk58, 1);
                    temp_a7 = ((gc->unk97E4 & ~0xF0) | ((arg1->unk598->unk64 & 0xF) * 0x10)) & ~0x700 & ~0x3800;
                    gc->unk97E4 = temp_a7;
                    temp_a7_2 = (temp_a7 & ~0x1C000) | ((arg1->unk598->unk41 & 7) << 0xE);
                    gc->unk97E4 = temp_a7_2;
                    temp_a7_3 = ((temp_a7_2 & ~0x20000) | ((gc->unk455 != 0) << 0x11)) & ~0x40000;
                    temp_a1_2 = (((temp_a7_3 & ~0x80000) | ((unksp48 & 1) << 0x13)) & ~0x100000) | ((unksp28 & 1) << 0x14);
                    gc->unk97E4 = temp_a1_2;
                    temp_a6 = ~0x800000;
                    temp_a4_2 = (arg1->unk8C != 5) << 0x17;
                    temp_a1_3 = (temp_a1_2 & temp_a6) | temp_a4_2;
                    gc->unk97E4 = temp_a1_3;
                    __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, temp_a1_3, 1, gc + 0x10000, temp_a4_2, 5, temp_a6, temp_a7_3);
                    if ((arg1->unk34 == 0x1A00) && (arg1->unkF8 & 4) && (arg1->unk8C != 5)) {
                        __glMgrRSSRegSet((__GLcontext *)0x5C, 0x5C, 0xFFF000, 0);
                        __glMgrRSSRegSet((__GLcontext *)0x5D, 0x5D, 0xFFF000, 0);
                        __glMgrRSSRegSet((__GLcontext *)0x5E, 0x5E, 0, 0);
                        __glMgrRSSRegSet((__GLcontext *)0x5F, 0x5F, 0, 1);
                        __glMgrRSSRegShadow((__GLcontext *)0x140, 0x140, 0, SYMBOL_LOCATION.unk14, 0);
                        __glMgrRSSRegShadow((__GLcontext *)0x141, 0x141, 0, SYMBOL_LOCATION.unk18, 1);
                    } else {
                        __glMgrLoadRasterPosInfo(M2C_ERROR(/* Read from unset register $a0 */));
                    }
                    temp_a0_3 = arg1->unk18 + var_s5;
                    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
                    temp_a0_4 = arg1->unk1C + unksp58;
                    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, -2, unksp58);
                    temp_a0_5 = (arg1->unk18 + var_s5 + var_s1) - unksp38;
                    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, -2, unksp38);
                    temp_a0_6 = (arg1->unk1C + unksp58 + var_s2) - unksp50;
                    __glMgrInitPixelStateERAM(temp_a0_6, temp_a0_6, -2, unksp50);
                    var_a3_3 = var_s2;
                    if (var_s2 < 0) {
                        var_a3_3 = -var_s2;
                    }
                    temp_a2_3 = var_a3_3 << 0x10;
                    temp_a0_7 = ((arg1->unk598->unk34 * arg1->unk19C) & 0xFFFF) | temp_a2_3;
                    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_7, temp_a0_7, -2, temp_a2_3, var_a3_3);
                    __glMgrInitPixelStateERAM(arg3, arg3, -2);
                    __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk4A0, SYMBOL_LOCATION.unk4A0, -1);
                    if (arg1->unkC != 0) {
                        temp_s4 = &__iob + 0x20;
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2E40, var_s2);
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2E18, arg1->unk18 + var_s5, arg1->unk1C + unksp58, unksp58);
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2DF0, unksp50);
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2DD8, (arg1->unk18 + var_s5 + var_s1) - unksp38, (arg1->unk1C + unksp58 + var_s2) - unksp50, unksp38);
                        if (var_s2 >= 0) {
                            var_a3_4 = var_s2;
                        } else {
                            var_a3_4 = -var_s2;
                        }
                        temp_a4_3 = arg1->unk19C;
                        temp_a3_3 = var_a3_4 << 0x10;
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2DB0, ((arg1->unk598->unk34 * temp_a4_3) & 0xFFFF) | temp_a3_3, temp_a3_3, (s64) temp_a4_3);
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2D90, (s64) arg3);
                    }
                    return;
                }
                /* Duplicate return node #38. Try simplifying control flow for better match */
                arg1->unkF8 = (s32) (arg1->unkF8 | 1);
                return;
            }
            /* Duplicate return node #38. Try simplifying control flow for better match */
            arg1->unkF8 = (s32) (arg1->unkF8 | 1);
            return;
        }
        /* Duplicate return node #38. Try simplifying control flow for better match */
        arg1->unkF8 = (s32) (arg1->unkF8 | 1);
        return;
    }
    arg1->unkF8 = (s32) (arg1->unkF8 | 1);
}

void __glMgrInitPixelTexture(__GLcontext *gc, void *arg1, s64 arg2, ...) {
    s64 spB0;
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
    f32 sp18;
    f32 spC;
    f32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_7;
    __GLcontext *var_a0_4;
    __GLcontext *var_a0_5;
    __GLcontext *var_a6;
    f32 temp_f1;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f7_2;
    s32 temp_a0_6;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6_2;
    s32 var_s2;
    s64 temp_a2_3;
    s64 temp_a6_2;
    s64 temp_a7;
    s64 var_a0;
    s64 var_a0_3;
    s64 var_a1;
    s64 var_a3_2;
    s64 var_a5;
    s64 var_at;
    s64 var_ra;
    s64 var_s1;
    s64 var_s3;
    s64 var_t0;
    u8 temp_s3;
    void *temp_s4;

    var_ra = saved_reg_ra;
    sp28 = (s64) (gc + 0x10000);
    temp_s3 = gc->unk9CA4;
    var_a6 = arg1->unk190;
    temp_lo = (s32) (((arg1->unk24 + temp_s3) - var_a6) - 1) / (s32) temp_s3;
    var_a5 = 1;
    var_a0 = arg2;
    temp_a3 = arg1->unk8C;
    M2C_TRAP_IF(temp_s3 == 0);
    arg1->unk194 = temp_lo;
    switch (temp_a3) {                              /* irregular */
    default:
        sp40 = arg2;
        __glMgrim_GetFloatv(GL_CURRENT_RASTER_POSITION, &sp8);
        temp_f6 = (f32) ((f64) spC + (second half of f64));
        sp8 = (f32) ((f64) (second half of f64) + (second half of f64));
        spC = temp_f6;
        var_a0_2 = 1;
        if (!(gc->unk2D0 < 0.0f)) {
            var_a0_2 = 0;
        }
        var_at = 1;
        if (var_a0_2 != 0) {
            var_f7 = -(second half of f64);
        } else {
            var_f7 = second half of f64;
        }
        if (!((f64) var_f7 > 1.0)) {
            var_at = 0;
        }
        sp88 = var_at;
        sp30 = var_at;
        if (var_a0_2 != 0) {
            var_f7_2 = -(second half of f64);
        } else {
            var_f7_2 = second half of f64;
        }
        if (!((f64) var_f7_2 < 1.0) && (arg1->unk1A8 & 0x10000000)) {
            var_a0_3 = 0;
        } else {
            var_a0_3 = 1;
        }
        temp_f1 = gc->unk2D4;
        var_s1 = (s32) ((temp_f1 * (f32) ((arg1->unk194 * temp_s3) - arg1->unk5FC)) + temp_f6) - (second half of f64);
        var_a3 = (second half of f64) - var_s1;
        if ((f64) temp_f1 < GLUE_F64(0x3FF0000000000000U, 0U)) {
            sp70 = var_a0_3;
            sp38 = var_a0_3;
            var_a3 = -var_a3;
        }
        sp38 = var_a0_3;
        sp70 = var_a0_3;
        sp18 = (f32) var_a3;
        __glMgrInitPixelStateCRAM((bitwise __GLcontext *) sp18, sp18, -2);
        if (gc->unk2D4 < 0.0f) {
            var_f6 = -(second half of f64);
        } else {
            var_f6 = second half of f64;
        }
        sp18 = (f32) (1.0 / (f64) var_f6);
        __glMgrInitPixelStateCRAM((bitwise __GLcontext *) sp18, sp18, -2);
        temp_a0 = SYMBOL_LOCATION.unk244 + 3;
        __glMgrInitPixelStateCRAM(temp_a0, temp_a0, -1);
        temp_a1 = arg1->unkBC;
        var_ra = spB0;
        temp_a3_2 = arg1->unk598->unk34;
        if (sp88 != 0) {
            temp_at = arg1->unk1A0;
            var_a0 = (s64) temp_a1;
            sp4 = temp_at;
            sp0 = temp_at;
            var_s2 = (s32) ((temp_a3_2 * temp_at) + 0xFF) >> 8;
        } else if (sp70 != 0) {
            if (GLUE_F64(sp8, 0U) < (f64) gc->unk2D0) {
                temp_a2 = (second half of f64) - (s32) ((f32) temp_a1 + sp8);
                var_s2 = temp_a2;
                if (temp_a2 != 0) {
                    temp_v0 = (arg1->unk19C * temp_a3_2) << 8;
                    temp_lo_2 = temp_v0 / temp_a2;
                    M2C_TRAP_IF(temp_a2 == 0);
                    M2C_TRAP_IF(temp_lo_2 == 0);
                    sp0 = temp_lo_2;
                    var_a4 = (((temp_v0 / temp_lo_2) - temp_a2) << 8) + temp_lo_2;
                    goto block_73;
                }
            } else {
                temp_a2_2 = (s32) (sp8 - (f32) temp_a1) - (second half of f64);
                var_s2 = temp_a2_2;
                if (temp_a2_2 != 0) {
                    temp_v0_2 = (arg1->unk19C * temp_a3_2) << 8;
                    temp_lo_3 = temp_v0_2 / temp_a2_2;
                    M2C_TRAP_IF(temp_a2_2 == 0);
                    M2C_TRAP_IF(temp_lo_3 == 0);
                    sp0 = temp_lo_3;
                    var_a4 = (((temp_v0_2 / temp_lo_3) - temp_a2_2) << 8) + temp_lo_3;
block_73:
                    sp4 = var_a4;
                }
            }
            var_a0 = (s64) temp_a1;
        } else {
            var_s2 = temp_a3_2;
            var_a0 = sp40;
        }
        arg1->unkBC = (s32) (temp_a1 + var_s2);
        if (!(GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U) < (f64) gc->unk2D0)) {
            var_s2 = -var_s2;
            var_a5 = -1;
            var_a0 = -1 - var_a0;
            if (var_s1 > 0) {
                goto block_40;
            }
            goto block_38;
        }
        var_a5 = 1;
        if (var_s1 <= 0) {
block_38:
            var_a3_2 = -1;
            var_a1 = -1;
        } else {
block_40:
            var_a1 = 1;
            var_a3_2 = 0;
        }
        var_a6 = arg1->unk190;
        if (var_s1 < 0) {
block_42:
            var_t0 = -var_s1;
        } else {
block_6:
            var_t0 = var_s1;
        }
        break;
    case 7:
        /* fallthrough */
    case 5:
    case 6:
        var_a3_2 = 0;
        sp30 = 0;
        sp38 = 0;
        var_a1 = 1;
        sp4 = 0x100;
        var_s2 = arg1->unk598->unk34;
        sp0 = 0x100;
        var_s1 = temp_lo * temp_s3;
        arg1->unkBC = (s32) (arg1->unkBC + var_s2);
        if (var_s1 >= 0) {
            goto block_6;
        }
        goto block_42;
    }
    M2C_TRAP_IF(temp_s3 == 0);
    temp_a7 = temp_s3 - 1;
    var_s3 = -var_a1;
    if (temp_a7 & var_s1) {
        if (var_a6 == NULL) {
            var_s3 = var_a1;
        }
    } else {
        var_s3 = 0;
    }
    temp_f6_2 = (f32) ((f64) spC + -49151.5);
    temp_f5 = (f32) ((f64) sp8 + -49151.5);
    var_a6_2 = 0;
    spC = temp_f6_2;
    sp8 = temp_f5;
    if ((var_s2 == 0) || (var_s1 == 0)) {
        var_a6_2 = 1;
    }
    if (var_a6_2 == 0) {
        temp_a6 = arg1->unk18 + var_a0;
        temp_f7 = (f32) temp_a6 + temp_f5;
        var_f4 = temp_f7;
        if (temp_f7 < 0.0f) {
            var_f4 = -temp_f7;
        }
        if (!(var_f4 > 12288.0f)) {
            temp_a4 = (temp_a6 + var_s2) - var_a5;
            temp_f4 = (f32) temp_a4 + temp_f5;
            var_f5 = temp_f4;
            if (temp_f4 < 0.0f) {
                var_f5 = -temp_f4;
            }
            if (!(var_f5 > 12288.0f)) {
                temp_t0 = arg1->unk1C + var_a3_2;
                temp_f5_2 = (f32) temp_t0 + temp_f6_2;
                var_f4_2 = temp_f5_2;
                if (temp_f5_2 < 0.0f) {
                    var_f4_2 = -temp_f5_2;
                }
                temp_a6_2 = var_s1 + var_s3;
                if (!(var_f4_2 > 12288.0f)) {
                    temp_f5_3 = (f32) (temp_a6_2 + temp_t0) + temp_f6_2;
                    var_f4_3 = temp_f5_3;
                    if (temp_f5_3 < 0.0f) {
                        var_f4_3 = -temp_f5_3;
                    }
                    sp80 = var_a0;
                    sp20 = var_a1;
                    sp78 = var_a3_2;
                    sp48 = var_a5;
                    sp50 = (s64) ((s32) (((var_t0 + temp_s3) - var_a6) - 1) / (s32) temp_s3);
                    sp58 = temp_a7;
                    sp60 = temp_a6_2;
                    if (var_f4_3 > 12288.0f) {
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        arg1->unkF8 = (s32) (arg1->unkF8 | 1);
                        return;
                    }
                    spB0 = var_ra;
                    __glMgrRSSRegShadow((__GLcontext *)0x155, 0x155, sp0, SYMBOL_LOCATION.unk5C, 0, temp_a4, var_a5, temp_a6_2, temp_a7);
                    __glMgrRSSRegShadow((__GLcontext *)0x154, 0x154, sp4, SYMBOL_LOCATION.unk58, 1);
                    temp_a7_2 = ((sp28->unk-681C & ~0xF0) | ((arg1->unk598->unk64 & 0xF) * 0x10)) & ~0x700 & ~0x3800;
                    sp28->unk-681C = temp_a7_2;
                    temp_a7_3 = (temp_a7_2 & ~0x1C000) | ((arg1->unk598->unk41 & 7) << 0xE);
                    sp28->unk-681C = temp_a7_3;
                    temp_a7_4 = ((temp_a7_3 & ~0x20000) | ((gc->unk455 != 0) << 0x11)) & ~0x40000;
                    temp_a1_2 = (((temp_a7_4 & ~0x80000) | ((sp30 & 1) << 0x13)) & ~0x100000) | ((sp38 & 1) << 0x14);
                    sp28->unk-681C = temp_a1_2;
                    temp_a6_3 = ~0x800000;
                    temp_a4_2 = (arg1->unk8C != 5) << 0x17;
                    temp_a1_3 = (temp_a1_2 & temp_a6_3) | temp_a4_2;
                    sp28->unk-681C = temp_a1_3;
                    __glMgrRSSRegSet((__GLcontext *)0x159, 0x159, temp_a1_3, 1, sp28, temp_a4_2, 5, temp_a6_3, temp_a7_4);
                    if ((arg1->unk34 == 0x1A00) && (arg1->unkF8 & 4) && (arg1->unk8C != 5)) {
                        __glMgrRSSRegSet((__GLcontext *)0x5C, 0x5C, 0xFFF000, 0);
                        __glMgrRSSRegSet((__GLcontext *)0x5D, 0x5D, 0xFFF000, 0);
                        __glMgrRSSRegSet((__GLcontext *)0x5E, 0x5E, 0, 0);
                        __glMgrRSSRegSet((__GLcontext *)0x5F, 0x5F, 0, 1);
                        __glMgrRSSRegShadow((__GLcontext *)0x140, 0x140, 0, SYMBOL_LOCATION.unk14, 0);
                        __glMgrRSSRegShadow((__GLcontext *)0x141, 0x141, 0, SYMBOL_LOCATION.unk18, 1);
                    } else {
                        __glMgrLoadRasterPosInfo(M2C_ERROR(/* Read from unset register $a0 */));
                    }
                    temp_a0_2 = arg1->unk18 + sp80;
                    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, -2, sp80);
                    temp_a0_3 = arg1->unk1C + sp78;
                    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2, sp78);
                    temp_a0_4 = (arg1->unk18 + sp80 + var_s2) - sp48;
                    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, -2, sp48);
                    temp_a0_5 = arg1->unk1C + sp78 + sp60;
                    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, -2, sp60);
                    temp_a2_3 = sp50 << 0x10;
                    sp68 = temp_a2_3;
                    temp_a0_6 = ((arg1->unk598->unk34 * arg1->unk19C) & 0xFFFF) | temp_a2_3;
                    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_6, temp_a0_6, -2, temp_a2_3);
                    __glMgrInitPixelStateERAM((__GLcontext *)1, 1, -2);
                    var_a0_4 = (__GLcontext *)1;
                    if (var_s2 <= 0) {
                        var_a0_4 = (__GLcontext *)-1;
                    }
                    __glMgrInitPixelStateERAM(var_a0_4, var_a0_4, -2);
                    var_a0_5 = (__GLcontext *)1;
                    if (var_s1 <= 0) {
                        var_a0_5 = (__GLcontext *)-1;
                    }
                    __glMgrInitPixelStateERAM(var_a0_5, var_a0_5, -2);
                    temp_a0_7 = arg1->unk190;
                    __glMgrInitPixelStateERAM(temp_a0_7, temp_a0_7, -2);
                    __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk4A0, SYMBOL_LOCATION.unk4A0, -1);
                    temp_a4_3 = arg1->unkC;
                    if (temp_a4_3 != 0) {
                        temp_s4 = &__iob + 0x20;
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2D70, var_s1, sp58, (s64) temp_a4_3);
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2D38, arg1->unk18 + sp80, arg1->unk1C + sp78, sp80);
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2D08, sp20, var_s3);
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2CE0, (arg1->unk18 + sp80 + var_s2) - sp48, arg1->unk1C + sp78 + sp60, sp48);
                        temp_a3_3 = arg1->unk19C;
                        fprintf(temp_s4, &sub_0dbf0000 - 0x2CB8, ((arg1->unk598->unk34 * temp_a3_3) & 0xFFFF) | sp68, (s64) temp_a3_3);
                    }
                    return;
                }
                /* Duplicate return node #15. Try simplifying control flow for better match */
                arg1->unkF8 = (s32) (arg1->unkF8 | 1);
                return;
            }
            /* Duplicate return node #15. Try simplifying control flow for better match */
            arg1->unkF8 = (s32) (arg1->unkF8 | 1);
            return;
        }
        /* Duplicate return node #15. Try simplifying control flow for better match */
        arg1->unkF8 = (s32) (arg1->unkF8 | 1);
        return;
    }
    arg1->unkF8 = (s32) (arg1->unkF8 | 1);
}

void __glMgrInitRSSToRSS(__GLcontext *gc, void *arg1, ...) {
    gc->unk97E4 = (s32) (-0x701 & ((gc->unk97E4 & ~0xF0) | ((arg1->unk598->unk64 & 0xF) * 0x10)));
    arg1->unk610 = (s32) (arg1->unk610 & ~0x700);
    gc->unk97E4 = (s32) (gc->unk97E4 & ~0x3800);
    arg1->unk610 = (s32) (arg1->unk610 & ~0x3800);
    gc->unk97E4 = (s32) ((gc->unk97E4 & 0xFFFE3FFF) | ((arg1->unk598->unk41 & 7) << 0xE));
    arg1->unk610 = (s32) ((arg1->unk610 & 0xFFFE3FFF) | ((arg1->unk598->unk41 & 7) << 0xE));
    gc->unk97E4 = (s32) (gc->unk97E4 & 0xFFFDFFFF);
    arg1->unk610 = (s32) (arg1->unk610 & 0xFFFDFFFF);
    gc->unk97E4 = (s32) (gc->unk97E4 & 0xFFFBFFFF);
    arg1->unk610 = (s32) (arg1->unk610 & 0xFFFBFFFF);
    gc->unk97E4 = (s32) (gc->unk97E4 & 0xFFF7FFFF);
    arg1->unk610 = (s32) (arg1->unk610 & 0xFFF7FFFF);
    gc->unk97E4 = (s32) (gc->unk97E4 & 0xFFEFFFFF);
    arg1->unk610 = (s32) (arg1->unk610 & 0xFFEFFFFF);
    gc->unk97E4 = (s32) (gc->unk97E4 | 0x800000);
    arg1->unk610 = (s32) (arg1->unk610 | 0x800000);
}

void __glMgrInitRSSToTE(__GLcontext *gc, void *arg1, ...) {
    s32 temp_a5;
    s32 temp_t3;
    s32 temp_t3_2;

    gc->unk9688 = 0;
    gc->unk9688 = (s32) (gc->unk9688 | 4 | 1 | 0x4000);
    temp_t3 = -0x3801 & (-0x701 & ((gc->unk97E4 & ~0xF0) | ((arg1->unk598->unk64 & 0xF) * 0x10)));
    gc->unk97E4 = temp_t3;
    temp_t3_2 = 0xFFFDFFFF & ((0xFFFE3FFF & temp_t3) | ((arg1->unk598->unk41 & 7) << 0xE));
    gc->unk97E4 = temp_t3_2;
    gc->unk97E4 = (s32) (0x800000 | (0xFFEFFFFF & (0xFFF7FFFF & (0xFFFBFFFF & temp_t3_2))));
    temp_a5 = -0x3801 & (arg1->unk610 & ~0x700);
    arg1->unk610 = temp_a5;
    arg1->unk610 = (s32) (0x800000 | (0xFFEFFFFF & (0xFFF7FFFF & (0xFFFBFFFF & (0xFFFDFFFF & ((0xFFFE3FFF & temp_a5) | ((arg1->unk598->unk41 & 7) << 0xE)))))));
}

void __glMgrSendHistogramFills(__GLcontext *gc, ...) {
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a3_2;
    s32 var_at;
    s32 var_v0;
    u32 var_a3;

    *(s32 *)0x74080 = 0xD418;
    *(s32 *)0x74080 = gc->unk114;
    *(s32 *)0x74080 = gc->unk118;
    temp_a4 = gc->unk10C;
    var_a3 = 0;
    *(s32 *)0x74080 = gc->unk11C;
    var_at = temp_a4 < 3;
    if (temp_a4 != 0) {
        do {
            var_a3 += 1;
            *(s32 *)0x74080 = (s32) gc->imports.sprintf * (s32) gc->imports.fopen;
        } while (var_a3 < (u32) temp_a4);
        var_at = temp_a4 < 3;
    }
    var_a3_2 = temp_a4;
    if (var_at != 0) {
        temp_a5 = 3 - var_a3_2;
        var_a0 = temp_a5 & 3;
        var_v0 = temp_a5 >> 2;
        if (var_a0 != 0) {
            do {
                var_a3_2 += 1;
                var_a0 -= 1;
                *(s32 *)0x74080 = 0;
            } while (var_a0 != 0);
            var_v0 = temp_a5 >> 2;
        }
        if (var_v0 != 0) {
            var_a0_2 = var_a3_2;
            do {
                var_a0_2 += 4;
                *(s32 *)0x74080 = 0;
                *(s32 *)0x74080 = 0;
                *(s32 *)0x74080 = 0;
                *(s32 *)0x74080 = 0;
            } while (var_a0_2 != 3);
        }
    }
}

void __glMgrSendMinmaxFills(__GLcontext *gc, ...) {
    ?32 temp_f1;
    __GLcontext *var_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a4_2;
    s32 var_at;
    s32 var_v0;
    u32 var_a4;

    *(?32 *)0x74080 = 0xD524;
    *(?32 *)0x74080 = gc->unk120;
    *(?32 *)0x74080 = gc->unk124;
    temp_a5 = gc->unk110;
    var_a4 = 0;
    var_a3 = gc;
    *(?32 *)0x74080 = gc->unk128;
    var_at = temp_a5 < 3;
    if (temp_a5 != 0) {
        do {
            temp_f1 = var_a3->unk12C;
            var_a3 += 4;
            *(?32 *)0x74080 = temp_f1;
            var_a4 += 1;
            *(?32 *)0x74080 = var_a3->unk128;
        } while (var_a4 < (u32) temp_a5);
        var_at = temp_a5 < 3;
    }
    var_a4_2 = temp_a5;
    if (var_at != 0) {
        temp_a6 = 3 - var_a4_2;
        var_a0 = temp_a6 & 3;
        var_v0 = temp_a6 >> 2;
        if (var_a0 != 0) {
            do {
                var_a4_2 += 1;
                var_a0 -= 1;
                *(?32 *)0x74080 = 1;
                *(?32 *)0x74080 = 0;
            } while (var_a0 != 0);
            var_v0 = temp_a6 >> 2;
        }
        if (var_v0 != 0) {
            var_a0_2 = var_a4_2;
            do {
                var_a0_2 += 4;
                *(?32 *)0x74080 = 1;
                *(?32 *)0x74080 = 0;
                *(?32 *)0x74080 = 1;
                *(?32 *)0x74080 = 0;
                *(?32 *)0x74080 = 1;
                *(?32 *)0x74080 = 0;
                *(?32 *)0x74080 = 1;
                *(?32 *)0x74080 = 0;
            } while (var_a0_2 != 3);
        }
    }
}

void __glMgrPixelTilesAddr(__GLcontext *gc, s32 arg1, s64 arg2, s32 arg3, ...) {

}

void __glMgrSendPagedRows(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, ...) {
    s64 spA8;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp10;
    ? *var_v0;
    s32 *var_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_f2;
    s32 temp_lo;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_s4_5;
    s32 temp_s8;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t1;
    s32 temp_t1_3;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a5;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_s7_3;
    s32 var_s7_4;
    s32 var_s8;
    s32 var_t0;
    s32 var_t1;
    s32 var_t1_3;
    s32 var_t2_2;
    s32 var_t3;
    s32 var_v0_10;
    s32 var_v0_11;
    s32 var_v0_12;
    s32 var_v0_13;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 temp_a6_7;
    s64 temp_t1_2;
    s64 var_s6;
    s64 var_s6_2;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 temp_a5_3;
    u32 temp_a6_2;
    u32 temp_at_2;
    u32 temp_hi;
    u32 temp_hi_2;
    u32 temp_s4_4;
    u32 temp_s5_2;
    u32 temp_t0;
    u32 temp_t2;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 var_s2_2;
    u32 var_s2_3;
    u32 var_s5_3;
    u32 var_t0_2;
    u32 var_t1_2;
    u32 var_t2;
    u8 *temp_s5;

    temp_a6 = gc->unkAC;
    temp_lo = gc->unkB0 * (temp_a6 * arg4);
    var_v0 = gc->unk5CC;
    temp_t1 = var_v0->unkC;
    temp_t0 = arg1 + __glCurrentContext->unk460;
    temp_t2 = gc->unkA4;
    if (arg3 != 0) {
        temp_hi = temp_t0 % temp_t2;
        temp_a1 = gc->unkB8;
        M2C_TRAP_IF(temp_t2 == 0);
        M2C_TRAP_IF(temp_t2 == 0);
        temp_s8 = temp_t1;
        temp_a6_2 = gc->unkB4;
        var_s2 = 0;
        if (temp_a1 > 0) {
            var_a0 = &sp10;
            var_v0_2 = (var_v0->unk4 + (temp_hi / temp_t2) + ((temp_a1 * arg2) + temp_lo)) - 1;
            do {
                var_v0_2 += 1;
                *var_a0 = var_v0_2;
                var_s2 += 1;
                var_a0 += 4;
            } while (var_s2 < gc->unkB8);
            var_v0 = gc->unk5CC;
        }
        __glMgr_WriteMultiDMAHQSetup(__glCurrentContext, __glCurrentContext, gc->unkB8, &sp10, temp_a6_2 * temp_s8, (s64) ((bitwise f32) gc->exports.makeCurrent * (f32) ((u64) ((s64) temp_hi << 0x20) >> 0x20)) << 0, gc->unk598->unk38, temp_a6_2, var_v0->unk8, 0);
    } else {
        temp_hi_2 = temp_t0 % temp_t2;
        var_s8 = temp_t1;
        M2C_TRAP_IF(temp_t2 == 0);
        sp30 = (s64) temp_hi_2;
        temp_s4 = var_v0->unk0 + (temp_t0 / temp_t2) + ((temp_a6 * arg2) + temp_lo);
        __glMgrPixelTilesAddr(gc, gc, temp_s4, temp_hi_2, temp_t1, temp_a6);
        sp38 = M2C_ERROR(/* Read from unset register $v0 */);
        if (gc->unkB4 & 3) {
            goto block_8;
        }
        if (!(M2C_ERROR(/* Read from unset register $v0 */) & 3)) {
            var_s2_2 = 0;
            if (gc->unk5CC->unk8 != 0) {
                sp40 = temp_s4 + 1;
loop_83:
                temp_v0 = gc->unk598->unk3C;
                temp_a7 = sp38 & 3;
                *(void *)0x74080 = (s32) (((temp_v0 * 4) & 0xFFFFF) | (temp_a7 << 0x16) | 0x80000000);
                temp_s4_2 = (s32) (((bitwise f32) gc->exports.makeCurrent * (f32) ((u64) ((gc->unkA4 - sp30) << 0x20) >> 0x20)) + 3.0f) >> 2;
                if (temp_a7 != 0) {
                    var_s7 = temp_v0 + 1;
                } else {
                    var_s7 = temp_v0;
                }
                var_s5 = var_s7;
                if (temp_s4_2 < var_s7) {
                    var_s5 = temp_s4_2;
                }
                __glMgr_PushPixels((__GLcontext *) var_s5, var_s5, -4 & sp38, sp38);
                var_s3 = var_s7 - var_s5;
                var_s6 = sp40;
                if (var_s3 != 0) {
loop_90:
                    __glMgrPixelTilesAddr(gc, gc, var_s6, 0, var_s8);
                    var_s6 += 1;
                    temp_s4_3 = (s32) (((bitwise f32) gc->exports.makeCurrent * (f32) gc->unkA4) + 3.0f) >> 2;
                    var_s5_2 = var_s3;
                    if (temp_s4_3 < var_s3) {
                        var_s5_2 = temp_s4_3;
                    }
                    __glMgr_PushPixels((__GLcontext *) var_s5_2, var_s5_2, M2C_ERROR(/* Read from unset register $v0 */));
                    var_s3 -= var_s5_2;
                    if (var_s3 != 0) {
                        goto loop_90;
                    }
                }
                if (var_s7 & 1) {
                    *(void *)0x74080 = 0;
                }
                var_s8 += 1;
                var_s2_2 += 1;
                sp38 += gc->exports.unk44;
                if (var_s2_2 < (u32) gc->unk5CC->unk8) {
                    goto loop_83;
                }
            }
        } else {
block_8:
            var_t2 = gc->unk5CC->unk8;
            var_s2_3 = 0;
            if (var_t2 != 0) {
                sp40 = temp_s4 + 1;
loop_16:
                var_a4 = -4 & sp38;
                temp_s5 = gc->unk598;
                temp_v1 = temp_s5->unk3C;
                temp_s5_2 = temp_s5->unk38;
                temp_f2 = (s32) ((f32) ((u64) ((gc->unkA4 - sp30) << 0x20) >> 0x20) * (bitwise f32) gc->exports.makeCurrent);
                sp48 = temp_v1 & 1;
                *(s32 *)0x74080 = ((temp_v1 * 4) & 0xFFFFF) | 0x80000000;
                if ((u32) temp_f2 < temp_s5_2) {
                    var_v0_3 = temp_f2;
                } else {
                    var_v0_3 = (s32) temp_s5_2;
                }
                var_s5_3 = temp_s5_2 - var_v0_3;
                temp_t3 = var_v0_3 >> 2;
                temp_a6_3 = temp_t3 - 1;
                var_s4 = var_v0_3 & 3;
                temp_at = var_s4 * 8;
                temp_a3 = (sp38 & 3) * 8;
                temp_t1_2 = ((1 << temp_at) - 1) << (0x20 - temp_at);
                if (temp_a3 != 0) {
                    var_v0_4 = temp_a6_3;
                    if (temp_a6_3 != -1) {
                        var_t0 = temp_t3 & 3;
                        temp_a6_4 = 0x20 - temp_a3;
                        if (var_t0 != 0) {
                            do {
                                var_v0_4 -= 1;
                                var_a4 += 4;
                                var_t0 -= 1;
                                *(s32 *)0x74080 = (var_a4->unk-4 << temp_a3) | ((u32) var_a4->unk0 >> temp_a6_4);
                            } while (var_t0 != 0);
                        }
                        if ((temp_t3 >> 2) != 0) {
                            var_a4_2 = var_v0_4;
                            var_v0_5 = var_a4;
                            do {
                                *(s32 *)0x74080 = (var_v0_5->unk0 << temp_a3) | ((u32) var_v0_5->unk4 >> temp_a6_4);
                                *(s32 *)0x74080 = (var_v0_5->unk4 << temp_a3) | ((u32) var_v0_5->unk8 >> temp_a6_4);
                                temp_v1_2 = var_v0_5->unk8;
                                temp_a5 = var_v0_5->unkC;
                                var_v0_5 += 0x10;
                                *(s32 *)0x74080 = (temp_v1_2 << temp_a3) | (temp_a5 >> temp_a6_4);
                                var_a4_2 -= 4;
                                *(s32 *)0x74080 = (var_v0_5->unk-4 << temp_a3) | ((u32) var_v0_5->unk0 >> temp_a6_4);
                            } while (var_a4_2 != -1);
                            var_a4 = var_v0_5;
                        }
                    }
                    var_s7_2 = *var_a4 << temp_a3;
                } else {
                    var_v0_6 = temp_a6_3;
                    if (temp_a6_3 != -1) {
                        var_a3 = temp_t3 & 3;
                        if (var_a3 != 0) {
                            do {
                                var_v0_6 -= 1;
                                var_a4 += 4;
                                var_a3 -= 1;
                                *(s32 *)0x74080 = var_a4->unk-4;
                            } while (var_a3 != 0);
                        }
                        if ((temp_t3 >> 2) != 0) {
                            var_a3_2 = var_v0_6;
                            var_v0_7 = var_a4;
                            do {
                                var_v0_7 += 0x10;
                                var_a3_2 -= 4;
                                *(s32 *)0x74080 = var_v0_7->unk-10;
                                *(s32 *)0x74080 = var_v0_7->unk-C;
                                *(s32 *)0x74080 = var_v0_7->unk-8;
                                *(s32 *)0x74080 = var_v0_7->unk-4;
                            } while (var_a3_2 != -1);
                            var_a4 = var_v0_7;
                        }
                    }
                    var_s7_2 = *var_a4;
                }
                var_s7_3 = var_s7_2 & temp_t1_2;
                spA8 = temp_t1_2;
                var_s6_2 = sp40;
                if (var_s5_3 != 0) {
loop_42:
                    __glMgrPixelTilesAddr(gc, gc, var_s6_2, 0, var_s8, var_a4);
                    temp_t2_2 = -4 & M2C_ERROR(/* Read from unset register $v0 */);
                    var_a4 = temp_t2_2;
                    temp_a6_5 = (M2C_ERROR(/* Read from unset register $v0 */) & 3) - var_s4;
                    temp_a6_6 = temp_a6_5 * 8;
                    var_a3_3 = temp_a6_6;
                    if (!(temp_a6_5 & 0x10000000)) {
                        var_t1 = 0;
                    } else {
                        var_t1 = 1;
                        var_a3_3 = temp_a6_6 + 0x20;
                    }
                    temp_s4_4 = gc->unkB4;
                    var_t0_2 = var_s5_3;
                    if (temp_s4_4 < var_s5_3) {
                        var_t0_2 = temp_s4_4;
                    }
                    var_s5_3 -= var_t0_2;
                    temp_s4_5 = var_t0_2 - ((4 - var_s4) & 3);
                    temp_v0_2 = temp_s4_5 >> 2;
                    var_s4 = temp_s4_5 & 3;
                    temp_a7_2 = var_s4 * 8;
                    temp_a6_7 = ((1 << temp_a7_2) - 1) << (0x20 - temp_a7_2);
                    if (var_a3_3 != 0) {
                        temp_t0_2 = 0x20 - var_a3_3;
                        if (var_t1 != 0) {
                            var_t1_2 = var_a4->unk0;
                            var_v0_8 = temp_v0_2 - 1;
                            *(s32 *)0x74080 = (var_t1_2 >> temp_t0_2) | var_s7_3;
                            if (var_v0_8 != -1) {
                                temp_t1_3 = var_v0_8 + 1;
                                var_t2_2 = temp_t1_3 & 3;
                                if (var_t2_2 != 0) {
                                    do {
                                        var_v0_8 -= 1;
                                        var_a4 += 4;
                                        var_t2_2 -= 1;
                                        *(s32 *)0x74080 = (var_a4->unk-4 << var_a3_3) | ((u32) var_a4->unk0 >> temp_t0_2);
                                    } while (var_t2_2 != 0);
                                }
                                if ((temp_t1_3 >> 2) != 0) {
                                    var_a4_3 = var_v0_8;
                                    var_v0_9 = var_a4;
                                    do {
                                        *(s32 *)0x74080 = (var_v0_9->unk0 << var_a3_3) | ((u32) var_v0_9->unk4 >> temp_t0_2);
                                        *(s32 *)0x74080 = (var_v0_9->unk4 << var_a3_3) | ((u32) var_v0_9->unk8 >> temp_t0_2);
                                        temp_at_2 = var_v0_9->unk8;
                                        temp_v1_3 = var_v0_9->unkC;
                                        var_v0_9 += 0x10;
                                        *(s32 *)0x74080 = (temp_at_2 << var_a3_3) | (temp_v1_3 >> temp_t0_2);
                                        var_a4_3 -= 4;
                                        *(s32 *)0x74080 = (var_v0_9->unk-4 << var_a3_3) | ((u32) var_v0_9->unk0 >> temp_t0_2);
                                    } while (var_a4_3 != -1);
                                    var_a4 = var_v0_9;
                                }
                                var_t1_2 = *var_a4;
                            }
                            var_s7_4 = (var_t1_2 << var_a3_3) | ((u32) var_a4->unk4 >> temp_t0_2);
                        } else {
                            var_v0_10 = temp_v0_2 - 1;
                            if (spA8 != 0) {
                                temp_a5_2 = var_a4->unk4;
                                temp_v1_4 = var_a4->unk0;
                                var_a4 += 4;
                                *(s32 *)0x74080 = (temp_v1_4 << var_a3_3) | var_s7_3 | (temp_a5_2 >> temp_t0_2);
                            }
                            temp_t2_3 = var_v0_10 + 1;
                            if (var_v0_10 != -1) {
                                var_t1_3 = temp_t2_3 & 3;
                                var_t3 = var_v0_10;
                                if (var_t1_3 != 0) {
                                    do {
                                        var_v0_10 -= 1;
                                        var_a4 += 4;
                                        var_t1_3 -= 1;
                                        *(s32 *)0x74080 = (var_a4->unk-4 << var_a3_3) | ((u32) var_a4->unk0 >> temp_t0_2);
                                    } while (var_t1_3 != 0);
                                    var_t3 = var_v0_10;
                                }
                                if ((temp_t2_3 >> 2) != 0) {
                                    var_a4_4 = var_t3;
                                    var_v0_11 = var_a4;
                                    do {
                                        *(s32 *)0x74080 = (var_v0_11->unk0 << var_a3_3) | ((u32) var_v0_11->unk4 >> temp_t0_2);
                                        *(s32 *)0x74080 = (var_v0_11->unk4 << var_a3_3) | ((u32) var_v0_11->unk8 >> temp_t0_2);
                                        temp_v1_5 = var_v0_11->unk8;
                                        temp_a5_3 = var_v0_11->unkC;
                                        var_v0_11 += 0x10;
                                        *(s32 *)0x74080 = (temp_v1_5 << var_a3_3) | (temp_a5_3 >> temp_t0_2);
                                        var_a4_4 -= 4;
                                        *(s32 *)0x74080 = (var_v0_11->unk-4 << var_a3_3) | ((u32) var_v0_11->unk0 >> temp_t0_2);
                                    } while (var_a4_4 != -1);
                                    var_a4 = var_v0_11;
                                }
                            }
                            var_s7_4 = (var_a4->unk0 << var_a3_3) | ((u32) var_a4->unk4 >> temp_t0_2);
                        }
                    } else {
                        var_v0_12 = temp_v0_2 - 1;
                        if (spA8 != 0) {
                            var_a4 = temp_t2_2 + 4;
                            *(s32 *)0x74080 = (temp_t2_2->unk0 & ~spA8) | var_s7_3;
                        }
                        temp_t0_3 = var_v0_12 + 1;
                        if (var_v0_12 != -1) {
                            var_a3_4 = temp_t0_3 & 3;
                            var_a5 = temp_t0_3 >> 2;
                            if (var_a3_4 != 0) {
                                do {
                                    var_v0_12 -= 1;
                                    var_a4 += 4;
                                    var_a3_4 -= 1;
                                    *(s32 *)0x74080 = var_a4->unk-4;
                                } while (var_a3_4 != 0);
                                var_a5 = temp_t0_3 >> 2;
                            }
                            if (var_a5 != 0) {
                                var_a3_5 = var_v0_12;
                                var_v0_13 = var_a4;
                                do {
                                    var_v0_13 += 0x10;
                                    var_a3_5 -= 4;
                                    *(s32 *)0x74080 = var_v0_13->unk-10;
                                    *(s32 *)0x74080 = var_v0_13->unk-C;
                                    *(s32 *)0x74080 = var_v0_13->unk-8;
                                    *(s32 *)0x74080 = var_v0_13->unk-4;
                                } while (var_a3_5 != -1);
                                var_a4 = var_v0_13;
                            }
                        }
                        var_s7_4 = *var_a4;
                    }
                    var_s7_3 = var_s7_4 & temp_a6_7;
                    var_s6_2 += 1;
                    spA8 = temp_a6_7;
                    if (var_s5_3 != 0) {
                        goto loop_42;
                    }
                    var_t2 = gc->unk5CC->unk8;
                }
                if (var_s4 != 0) {
                    *(s32 *)0x74080 = var_s7_3;
                }
                if (sp48 != 0) {
                    *(s32 *)0x74080 = 0;
                }
                var_s8 += 1;
                var_s2_3 += 1;
                sp38 += gc->exports.unk44;
                if (var_s2_3 < var_t2) {
                    goto loop_16;
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x68, 0x6c], gap at: 0x18. */
void __glMgrFastSendPixels(__GLcontext *gc, void *arg1, s32 arg2, s32 arg3, ...) {
    s64 sp78;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_f0;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a5;
    s32 var_s4;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s8;
    s64 var_a3;
    s64 var_ra;
    u8 temp_s7;

    var_ra = saved_reg_ra;
    if (arg1->unkC0 != 0) {
        var_s4 = 0;
    } else {
        var_s4 = 3;
    }
    arg1->unkBC = 0;
    temp_v1 = arg1->unk548;
    arg1->unk548 = 0;
    temp_a6 = arg1->unk544;
    temp_s6 = arg1->unk560;
    arg1->unk598 = (void *) (arg1 + 0x52C);
    temp_v0 = arg1->unk20;
    arg1->unk560 = temp_v0;
    arg1->unk544 = temp_v0;
    temp_s7 = arg1->unk56D;
    arg1->unk56D = (u8) ((8 - (arg1->unk5C & 7)) & 7);
    unksp10 = (s64) temp_v1;
    unksp18 = (s64) temp_a6;
    temp_s5 = arg1->unk28;
    if (gc->unk91FC->unk488 != 0) {
        gc->unk9904 = 0;
        temp_f0 = (s32) (arg1->unk50 * 2.0f);
        if (temp_f0 != 1) {
            if (temp_f0 != 2) {
                var_a5 = (gc->unk9904 & ~0x60) | 0x40;
            } else {
                var_a5 = (gc->unk9904 & ~0x60) | 0x20;
            }
        } else {
            var_a5 = gc->unk9904 & ~0x60;
        }
        gc->unk9904 = var_a5;
        temp_a6_2 = arg1->unk38;
        temp_a5 = ((temp_a6_2 - 1) & 3) * 2;
        temp_a2 = (var_a5 & ~6) | temp_a5;
        gc->unk9904 = temp_a2;
        __glMgrasWrite(gc, gc, 0x1A1, temp_a2, SYMBOL_LOCATION.unk124, 1, temp_a5, temp_a6_2);
        var_ra = unksp58;
    }
    if (temp_s5 != 0x8000) {
        goto block_8;
    }
    if (!(arg1->unk1A8 & 0x800000)) {
        arg1->unk28 = 0x1908;
        if (arg1->unk2C == 0x8000) {
            arg1->unk2C = 0x1908;
        }
    }
    if (temp_s5 == 0x8000) {
        if (arg1->unk1A8 & 0x800000) {
            goto block_8;
        }
        goto block_38;
    }
block_8:
    if (temp_s5 == 0x190A) {
        if (arg1->unkF8 & 4) {
block_38:
            unksp58 = var_ra;
            var_s5 = 1;
        } else {
            goto block_11;
        }
    } else {
block_11:
        unksp58 = var_ra;
        var_s5 = 0;
    }
    __glBytesPerElement(arg1->unk34);
    var_a2 = (s32) M2C_ERROR(/* Read from unset register $f0 */);
    if (var_a2 == 0) {
        var_a2 = 1;
    }
    if (var_a2 == 4) {
        var_a2 = 3;
    }
    arg1->unk598->unk64 = (s32) arg1->unk48;
    temp_a1 = arg1->unk1E8;
    var_a0 = arg1->unkF8 & 1;
    var_a3 = (var_a2 & 3) | (((var_s5 & 1) << 7) | ((gc->unk454 != 0) << 6) | (((arg1->unk38 - 1) & 3) * 4)) | 0x600;
    if (temp_a1 != 0x129) {
        if (temp_a1 != 0x12A) {
            var_s5_2 = sp4;
            if (temp_a1 != 0x12B) {
                var_s8 = sp0;
                if (var_a0 == 0) {
                    goto block_18;
                }
                goto block_24;
            }
            if (var_a0 == 0) {
                sp78 = var_a3;
                __glMgrInitPixelTexture(gc, gc, arg1, 0, var_a3);
                var_a3 = sp78;
                var_a0 = arg1->unkF8 & 1;
            }
            var_s5_2 = arg1->unk194;
            var_s8 = gc->unk9CA4 * arg1->unk90;
            goto block_23;
        }
        if (var_a0 == 0) {
            sp78 = var_a3;
            __glMgrInitHostToTE(gc, gc, arg1, 0, var_a3);
            var_a3 = sp78;
            var_a0 = arg1->unkF8 & 1;
        }
        var_s5_2 = arg1->unk24;
        var_s8 = arg1->unk90;
        goto block_23;
    }
    if (var_a0 == 0) {
        sp78 = var_a3;
        __glMgrInitHostToRSS(gc, gc, arg1, 0, arg3);
        var_a0 = arg1->unkF8 & 1;
    }
    var_s5_2 = arg1->unk24;
    var_s8 = arg1->unk90;
block_23:
    if (var_a0 != 0) {
block_24:
        unksp60 = (s64) temp_s6;
        var_a2_2 = 0x12C;
        arg1->unk1E8 = 0x12C;
    } else {
block_18:
        unksp60 = (s64) temp_s6;
        var_a2_2 = arg1->unk1E8;
    }
    temp_a5_2 = arg1->unk190;
    *(s32 *)0x74080 = 0xC0004;
    *(s32 *)0x74080 = (s32) var_a3;
    temp_a0 = (arg1->unk5C + 7) & ~7;
    __glMgr_WriteDMAGESetup((__GLcontext *) temp_a0, temp_a0, var_s5_2, var_a2_2, -8, 0xC0004, temp_a5_2);
    __glMgr_WriteDMAHQSetup(gc, gc, (temp_a5_2 * arg1->unk90) + arg2, arg1->unk5C, var_s8, var_s5_2, var_s4);
    *(s32 *)0x74080 = 0xC0004;
    *(s32 *)0x74080 = 0xE00;
    __glMgrRSSRegSet((__GLcontext *)0x156, 0x156, -1, 1);
    __glMgrInitPixelStateCRAM(NULL, 0, -2);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3D0, SYMBOL_LOCATION.unk3D0, -1);
    if (!(((var_s4 * 0x10) + gc)->unk7D10 & 1)) {
        __glMgr_UnlockSingleDMAPool(gc, gc, 0, 0, var_s4);
    }
    if (gc->unk91FC->unk488 != 0) {
        *(s32 *)0x74080 = 0x9900;
    }
    arg1->unk548 = (s32) unksp10;
    arg1->unk56D = temp_s7;
    arg1->unk560 = (s32) unksp60;
    arg1->unk544 = (s32) unksp18;
}

void __glMgrSendPixels(__GLcontext *gc, s64 arg1, s64 arg2, u64 arg3, ...) {
    s64 sp178;
    s64 sp170;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    u64 sp90;
    s64 sp88;
    u64 sp80;
    s64 sp78;
    u64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    u64 sp48;
    s64 sp40;
    s64 sp38;
    s32 sp4;
    ? *temp_a5_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a0_8;
    __GLcontext *var_s6;
    __GLcontext *var_s6_2;
    s32 (*temp_a0)(__GLcontext *, void *);
    s32 (*temp_a2_2)(__GLcontext *, void *, s8 *, ...);
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7_2;
    s32 temp_at_2;
    s32 temp_f2;
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_v0;
    s32 temp_v0_5;
    s32 temp_v0_9;
    s32 temp_v1_2;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a6;
    s32 var_s3_3;
    s32 var_s5;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_s8;
    s32 var_t0;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s64 temp_at_3;
    s64 temp_lo_2;
    s64 temp_v1_3;
    s64 var_a1;
    s64 var_ra;
    s64 var_s3_2;
    u32 temp_at;
    u32 temp_v0_3;
    u64 var_a2;
    u64 var_v0;
    u8 *temp_v0_4;
    u8 *temp_v0_6;
    u8 *temp_v0_8;
    u8 *temp_v1;
    u8 *var_a2_4;
    void *(*temp_a5)(__GLcontext *, s8 *, s8 *);
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a2;
    void *temp_a7;
    void *temp_v0_2;
    void *temp_v0_7;
    void *var_s3;
    void *var_s3_4;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_v0 = arg3;
    var_s6 = __glCurrentContext;
    var_s5 = 0;
    sp170 = arg2;
    temp_a4 = gc->unkF8;
    if (temp_a4 & 0x20) {
        temp_v0 = gc->unk104;
        if (temp_v0 & 1) {
            gc->unk104 = temp_v0 & ~1;
            *(s32 *)0x74080 = 0x8600;
            gc->unk1A4 |= 0x800;
        }
        return;
    }
    if (((f64) var_s6->unk2D0 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) && ((f64) var_s6->unk2D4 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))) {
        if (gc->unkC0 != 0) {
            spF0 = 0;
        } else {
            spF0 = 3;
        }
        sp60 = (s64) (var_s6 + 0x10000);
        gc->unk110 = 0;
        gc->unk10C = 0;
        spE8 = (s64) gc->imports.fprintf;
        sp68 = (s64) gc->imports.fclose;
        spF8 = (s64) var_s6->unk9CA4;
        if (!(temp_a4 & 1)) {
            temp_a6 = gc->unk1A8 & 0x01000000;
            if ((temp_a6 != 0) || (sp48 = var_v0, spE0 = var_a1, (sp60->unk-6E04->unk488 != 0))) {
                sp48 = var_v0;
                spE0 = var_a1;
                __glMgrInitPixelStateERAM((__GLcontext *)0x152, 0x152, -2, temp_a4, temp_a6, 0x01000000);
                __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk3CC, SYMBOL_LOCATION.unk3CC, -1);
                var_ra = sp178;
            } else {
                __glMgrInitPixelStateERAM((__GLcontext *)0x18D, 0x18D, -2, temp_a4, temp_a6, 0x01000000);
                __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk3CC, SYMBOL_LOCATION.unk3CC, -1);
                var_a1 = spE0;
                var_v0 = sp48;
                var_ra = sp178;
            }
        }
        if (gc->unk46C == 0) {
            if (gc->unk5D0 == 0) {
                sp178 = var_ra;
                sp48 = var_v0;
                spE0 = var_a1;
                gc->unk598 = &gc->unk52C;
            } else {
                sp178 = var_ra;
                sp48 = var_v0;
                spE0 = var_a1;
                gc->unk598 = &gc->unk4C0;
            }
        } else {
            sp178 = var_ra;
            sp48 = var_v0;
            spE0 = var_a1;
            gc->unk598 = &gc->unk454;
        }
        __glMgr_UseDMAForWrite(gc, gc, var_a1);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (sp60->unk-7A94 == 0) {
                temp_t0 = gc->exports.unk44;
                temp_a7 = gc->imports.fopen - 1;
                temp_lo = (s32) temp_a7 * temp_t0;
                temp_a1 = gc->gcState + (gc->exports.notifyResize + (var_s6->unk45C * temp_t0));
                sp88 = (s64) temp_a1;
                temp_a2 = gc->exports.copyContext + temp_lo;
                sp90 = (u64) temp_a2;
                __glMgr_LockSingleDMAPool(var_s6, var_s6, temp_a1, temp_a2, 1, sp, spF0, temp_lo, temp_a7);
                var_s5 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                    sp78 = sp90 & 0xFFF;
                    temp_at = sp90 >> 0xC;
                    sp70 = (u64) temp_at;
                    sp80 = temp_at + 1;
loop_165:
                    if ((errno != 0xC) && (errno != 0xB)) {
                        perror(&sub_0dbf0000 - 0x2C98);
                        abort();
                    }
                    var_a2 = sp70;
                    if (sp78 != 0) {
                        var_a2 = sp80;
                    }
                    if ((u16) sp60->unk-6E04->unk4D0 >= var_a2) {
                        mgrTM_UnlockPages(var_s6, 0, var_a2);
                        __glMgr_LockSingleDMAPool(var_s6, var_s6, sp88, sp90, 1, sp, spF0);
                        var_s5 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            goto loop_165;
                        }
                    }
                }
                if (var_s5 == 0) {
                    temp_t0_2 = gc->exports.unk44;
                    var_s7 = 0;
                    temp_a5 = gc->imports.fopen;
                    var_s3 = gc->exports.notifyResize + (var_s6->unk45C * temp_t0_2);
                    if ((s32) temp_a5 > 0) {
loop_204:
                        temp_v0_2 = gc->gcState + var_s3 + gc->unk598->unk60;
                        var_a1_2 = ((s32) (gc->exports.copyContext + ((s32) temp_v0_2 & 3) + 3) >> 2) - 1;
                        var_v0_2 = -4 & (s32) temp_v0_2;
                        if (var_a1_2 != -1) {
                            temp_a4_2 = var_a1_2 + 1;
                            var_a3 = temp_a4_2 & 3;
                            var_t8 = var_a1_2;
                            if (var_a3 != 0) {
                                do {
                                    var_a1_2 -= 1;
                                    var_v0_2 += 4;
                                    var_a3 -= 1;
                                    sp4 = var_v0_2->unk-4;
                                } while (var_a3 != 0);
                                var_t8 = var_a1_2;
                            }
                            if ((temp_a4_2 >> 2) != 0) {
                                var_v0_3 = var_t8;
                                var_a1_3 = var_v0_2;
                                do {
                                    var_a1_3 += 0x10;
                                    var_v0_3 -= 4;
                                    sp4 = var_a1_3->unk-10;
                                    sp4 = var_a1_3->unk-C;
                                    sp4 = var_a1_3->unk-8;
                                    sp4 = var_a1_3->unk-4;
                                } while (var_v0_3 != -1);
                            }
                        }
                        var_s7 += 1;
                        var_s3 += temp_t0_2;
                        if (var_s7 < (s32) temp_a5) {
                            goto loop_204;
                        }
                    }
                    return;
                }
                temp_v0_3 = gc->unk1A8;
                if (((temp_v0_3 & 0x3E9E8FF3) == 0x100E8F03) || ((temp_v0_3 & 0x3002483C) == 0x1000480C) || (((temp_v0_3 & 0x3021082C) == 0x1001080C) && (gc->unk598->unk48 != 0x1A00))) {
                    temp_a0 = gc->imports.fclose;
                    if (temp_a0 != (s32 (*)(__GLcontext *, void *))0x190A) {
                        goto block_181;
                    }
                    if (temp_v0_3 & 0x01000000) {
block_181:
                        temp_a2_2 = gc->imports.fprintf;
                        if (temp_a0 != temp_a2_2) {
                            if (temp_a2_2 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1908) {
                                goto block_183;
                            }
                            if (temp_a0 != (s32 (*)(__GLcontext *, void *))0x8000) {
block_183:
                                if (temp_v0_3 & 0x01000000) {
                                    if ((temp_a2_2 == (s32 (*)(__GLcontext *, void *, s8 *, ...))0x8049) && (temp_a0 == (s32 (*)(__GLcontext *, void *))0x1909)) {
                                        goto block_186;
                                    }
                                    goto block_22;
                                }
                                goto block_21;
                            }
                            goto block_186;
                        }
block_186:
                        temp_a0_2 = gc->imports.wscx;
                        if (gc->imports.getDrawablePrivate == temp_a0_2) {
                            if (temp_v0_3 & 0x01000000) {
                                goto block_188;
                            }
                            if (temp_a2_2 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1906) {
block_188:
                                if (temp_a0_2 != (void *)0x1A00) {
                                    if (sp48 == 1) {
                                        gc->unkF8 |= 4;
                                        __glMgrFastSendPixels(var_s6, var_s6, gc, sp0, spE0);
                                        gc->unk1A4 = 0;
                                        return;
                                    }
                                    goto block_22;
                                }
                                goto block_21;
                            }
                            goto block_22;
                        }
                        goto block_21;
                    }
                    goto block_22;
                }
                goto block_22;
            }
            if (!(gc->unk154 & 1)) {
                temp_a3 = gc->unk604;
                temp_a2_3 = gc->unkB8;
                temp_lo_2 = temp_a2_3 * temp_a3;
                spA8 = temp_lo_2;
                __glMgrFastSendPixels(var_s6, var_s6, temp_lo_2 * 4, temp_a2_3, temp_a3);
                sp98 = M2C_ERROR(/* Read from unset register $v0 */);
                spA0 = (s64) ((bitwise f32) gc->exports.makeCurrent * (f32) (gc->unkA4 * gc->unkA8)) << 0;
                __glMgrBuildLockPageList(gc, gc, M2C_ERROR(/* Read from unset register $v0 */), 1);
                __glMgr_LockMultiDMAPool(var_s6, var_s6, temp_lo_2, M2C_ERROR(/* Read from unset register $v0 */), spA0, 1, 0);
                var_s5 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                var_s6->imports.free(var_s6, (void *) sp98);
            } else {
                var_s5 = 1;
            }
            goto block_21;
        }
block_21:
block_22:
        gc->unkBC = 0;
        var_s8 = 0;
        spC0 = 0;
        sp138 = 0;
        if (((void *) sp60)->unk-6E04->unk488 != 0) {
            sp60->unk-66FC = 0;
            temp_f2 = (s32) ((bitwise f32) gc->exports.loseCurrent * 2.0f);
            if (temp_f2 != 1) {
                if (temp_f2 != 2) {
                    var_v0_4 = (sp60->unk-66FC & ~0x60) | 0x40;
                } else {
                    var_v0_4 = (sp60->unk-66FC & ~0x60) | 0x20;
                }
                sp60->unk-66FC = var_v0_4;
            } else {
                var_v0_4 = sp60->unk-66FC & ~0x60;
                sp60->unk-66FC = var_v0_4;
            }
            temp_a2_4 = (var_v0_4 & ~6) | (((s32) (gc->imports.other - 1) & 3) * 2);
            sp60->unk-66FC = temp_a2_4;
            __glMgrasWrite(var_s6, var_s6, 0x1A1, temp_a2_4, SYMBOL_LOCATION.unk124, 1, sp60);
        }
        sp140 = 0;
        if (gc->unk5D4 > 0) {
            spC8 = (s64) var_s6;
            sp130 = (s64) sp24;
            sp110 = (s64) sp20;
            sp50 = (s64) spC;
            spB8 = (s64) sp8;
            sp120 = (s64) sp2C;
            sp128 = (s64) sp30;
            sp40 = (s64) sp14;
            sp38 = (s64) sp18;
            sp100 = (s64) sp34;
            sp118 = (s64) sp28;
            sp108 = (s64) sp1C;
            sp148 = (s64) &gc->unk454;
            spB0 = (s64) sp10;
            sp58 = sp48 > 1U;
loop_86:
            temp_v0_4 = gc->unk598;
            if ((sp148 == temp_v0_4) || (sp138 == 0) || (gc->unk5D0 == sp138)) {
                sp108 = (s64) temp_v0_4->unk34;
                sp110 = (s64) temp_v0_4->unk1C;
                sp130 = (s64) temp_v0_4->unk18;
                sp118 = (s64) temp_v0_4->unkC;
                sp128 = (s64) temp_v0_4->unk4;
                sp100 = (s64) temp_v0_4->unk0;
                sp120 = (s64) temp_v0_4->unk8;
                if (sp68 == 0x8000) {
                    if (!(gc->unk1A8 & 0x800000)) {
                        gc->imports.fclose = (s32 (*)(__GLcontext *, void *))0x1908;
                        if (spE8 == 0x8000) {
                            gc->imports.fprintf = (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1908;
                        }
                    }
                }
                if ((gc->unk138 == temp_v0_4->unk34) && (temp_a2_5 = temp_v0_4->unk18, (gc->unk13C == temp_a2_5)) && (temp_a4_3 = temp_v0_4->unk1C, (gc->unk140 == temp_a4_3))) {
                    if (((s32) sp60->unk-635D >= 2) && (temp_a2_5 != temp_a4_3)) {
                        goto block_30;
                    }
                } else {
block_30:
                    gc->unk1A4 |= 0x20000;
                    gc->unk138 = temp_v0_4->unk34;
                    gc->unk13C = temp_v0_4->unk18;
                    gc->unk140 = temp_v0_4->unk1C;
                }
                __glMgrInitImagingPipe(gc, gc);
                var_s3_2 = 0;
                if (sp68 != 0x8000) {
                    goto block_32;
                }
                if (gc->unk1A8 & 0x800000) {
block_32:
                    if (sp68 == 0x190A) {
                        if (gc->unkF8 & 4) {
                            goto block_131;
                        }
                    }
                } else {
block_131:
                    var_s3_2 = 1;
                }
                sp38 = var_s3_2;
                if ((var_s3_2 != 0) || (spC8->unk454 != 0)) {
                    __glBytesPerElement(gc->imports.wscx);
                    var_v0_5 = (s32) M2C_ERROR(/* Read from unset register $f0 */);
                    if (var_v0_5 != 0) {
                        if (var_v0_5 == 4) {
                            var_v0_5 = 3;
                        }
                    } else {
                        var_v0_5 = 1;
                    }
                    sp40 = (var_v0_5 & 3) | (((var_s3_2 & 1) << 7) | ((spC8->unk454 != 0) << 6) | (((s32) (gc->imports.other - 1) & 3) * 4)) | 0xE00;
                }
            }
            temp_v0_5 = gc->unk1E8;
            var_a2_2 = gc->unkF8 & 1;
            switch (temp_v0_5) {                    /* irregular */
            case 0x129:
                if (var_a2_2 == 0) {
                    __glMgrInitHostToRSS((__GLcontext *) spC8, spC8, gc, var_s8, spE0);
                    var_a2_2 = gc->unkF8 & 1;
                }
                spB8 = (s64) gc->exports.unk44;
                spB0 = (s64) gc->imports.fopen;
                sp50 = (s64) gc->unk598->unk30;
                break;
            case 0x12A:
                if (var_a2_2 == 0) {
                    __glMgrInitHostToRSS((__GLcontext *) spC8, spC8, gc, var_s8);
                    var_a2_2 = gc->unkF8 & 1;
                }
                spB8 = (s64) gc->exports.unk44;
                spB0 = (s64) gc->imports.fopen;
                sp50 = (s64) gc->unk598->unk30;
                break;
            case 0x12B:
                if (var_a2_2 == 0) {
                    __glMgrInitPixelTexture((__GLcontext *) spC8, spC8, gc, var_s8);
                    var_a2_2 = gc->unkF8 & 1;
                }
                temp_at_2 = gc->unk194;
                spB0 = (s64) temp_at_2;
                sp50 = (s64) temp_at_2;
                spB8 = gc->exports.unk44 * spF8;
                break;
            }
            if (var_a2_2 != 0) {
                gc->unk1E8 = 0x12C;
            }
            temp_a0_3 = gc->exports.unk30;
            __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2, var_a2_2);
            temp_a0_4 = gc->exports.unk34;
            __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, -2);
            temp_a0_5 = gc->exports.unk38;
            __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, -2);
            temp_a0_6 = gc->exports.unk3C;
            __glMgrInitPixelStateERAM(temp_a0_6, temp_a0_6, -2);
            temp_a0_7 = gc->unk598->unk50;
            __glMgrInitPixelStateERAM(temp_a0_7, temp_a0_7, -2);
            temp_a0_8 = gc->unk1E4;
            __glMgrInitPixelStateERAM(temp_a0_8, temp_a0_8, -2);
            __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk4B4, SYMBOL_LOCATION.unk4B4, -1);
            if (sp38 != 0) {
                goto block_46;
            }
            if (spC8->unk454 != 0) {
block_46:
                *(void *)0x74080 = 0xC0004;
                *(void *)0x74080 = (s32) sp40;
            }
            temp_v0_6 = gc->unk598;
            *(void *)0x74080 = 0x8D20;
            if ((sp60->unk-635D != 1) && ((&gc->unk52C != temp_v0_6) || (gc->unk144 != 1))) {
                var_t3 = temp_v0_6->unk8;
                temp_t1 = gc->unk5F4;
                var_t2 = temp_t1 + var_t3;
                var_t0 = temp_t1;
            } else {
                var_t0 = 0;
                var_t2 = gc->unk5F4 + temp_v0_6->unk8;
                var_t3 = var_t2;
            }
            M2C_TRAP_IF(3 == 0);
            temp_a4_4 = temp_v0_6->unkC;
            *(void *)0x74080 = var_t3;
            *(void *)0x74080 = temp_a4_4;
            *(void *)0x74080 = var_t0;
            *(void *)0x74080 = (s32) (sp50 % 3);
            var_a6 = sp50 / 3;
            *(void *)0x74080 = var_a6;
            *(void *)0x74080 = (s32) sp48;
            var_a2_3 = 0;
            *(void *)0x74080 = (s32) *((gc->unk1E8 * 4) + &SYMBOL_LOCATION);
            if (var_t3 != 0) {
                if (temp_a4_4 != 0) {
                    goto block_53;
                }
                goto block_108;
            }
            var_a2_3 = 4;
            if (temp_a4_4 == 0) {
block_108:
                var_a2_3 |= 0x10;
                if (var_t0 == 0) {
                    goto block_109;
                }
            } else {
block_53:
                if (var_t0 == 0) {
block_109:
                    var_a2_3 |= 8;
                }
            }
            if (var_t2 & 1) {
                var_a2_3 |= 1;
            }
            if ((gc->unk5F4 + temp_a4_4) & 1) {
                var_a2_3 |= 2;
            }
            if (var_s5 != 0) {
                var_a6 = 0x01000800;
                if (gc->unk1A8 & 0x01000800) {
                    var_a2_3 |= 0x80;
                }
            }
            if (sp58 != 0) {
                var_a2_3 |= 0x100;
            }
            *(void *)0x74080 = var_a2_3;
            if (sp60->unk-7A94 != 0) {
                if (gc->unk5A4 != 0) {
                    temp_a5_2 = &gc->unk59C;
                    gc->unk5CC = temp_a5_2;
                    __glMgrSendPagedRows(gc, gc, var_s8, 0, var_s5, sp170, temp_a5_2, var_a6, sp58);
                }
                if (gc->unk5B4 != 0) {
                    var_s3_3 = 0;
                    gc->unk5CC = &gc->unk5AC;
                    if (gc->unk608 > 0) {
                        do {
                            __glMgrSendPagedRows(gc, gc, var_s8, var_s3_3, var_s5, sp170);
                            var_s3_3 += 1;
                        } while (var_s3_3 < gc->unk608);
                    }
                }
                if (gc->unk5C4 != 0) {
                    gc->unk5CC = &gc->unk5BC;
                    __glMgrSendPagedRows(gc, gc, var_s8, 0, var_s5, sp170);
                }
            } else {
                temp_t1_2 = spC0 * 4;
                temp_t0_3 = gc->exports.unk44;
                if (var_s5 != 0) {
                    temp_a7_2 = gc->unk190;
                    temp_a6_2 = temp_t1_2 + sp0;
                    __glMgr_WriteDMAHQSetup((__GLcontext *) spC8, spC8, temp_v0_6->unk60 + (temp_a7_2 * temp_t0_3) + temp_a6_2, temp_v0_6->unk38, spB8, spB0 * sp48, spF0, temp_a6_2, temp_a7_2);
                } else {
                    var_s7_2 = 0;
                    var_s3_4 = gc->exports.notifyResize + (spC8->unk45C * temp_t0_3) + temp_t1_2;
                    if (spB0 > 0) {
loop_142:
                        temp_v1 = gc->unk598;
                        temp_t0_4 = temp_v1->unk3C;
                        var_s6_2 = temp_t0_4 + 1;
                        temp_v0_7 = gc->gcState + var_s3_4 + (temp_v1->unk60 + (gc->exports.unk44 * gc->unk190));
                        temp_v1_2 = (s32) temp_v0_7 & 3;
                        *(void *)0x74080 = (s32) (((temp_t0_4 * 4) & 0xFFFFF) | (temp_v1_2 << 0x16) | 0x80000000);
                        if (temp_v1_2 == 0) {
                            var_s6_2 = (__GLcontext *) temp_t0_4;
                        }
                        __glMgr_PushPixels(var_s6_2, var_s6_2, -4 & (s32) temp_v0_7);
                        var_s7_2 += 1;
                        if ((s32) var_s6_2 & 1) {
                            *(void *)0x74080 = 0;
                        }
                        var_s3_4 += spB8;
                        if (var_s7_2 != spB0) {
                            goto loop_142;
                        }
                    }
                }
            }
            if (sp38 != 0) {
                goto block_73;
            }
            if (spC8->unk454 != 0) {
block_73:
                *(void *)0x74080 = 0xC0004;
                *(void *)0x74080 = 0xE00;
            }
            __glMgrRSSRegSet((__GLcontext *)0x156, 0x156, -1, 1);
            if (gc->unk68 != 0) {
                __glMgrResetBitmapState(M2C_ERROR(/* Read from unset register $a0 */));
                gc->unk68 = 0U;
            }
            temp_v0_8 = gc->unk598;
            var_s8 += temp_v0_8->unk34;
            var_a2_4 = temp_v0_8;
            spC0 += temp_v0_8->unk8 + temp_v0_8->unkC;
            if (sp148 == temp_v0_8) {
                if (gc->unk520 != 0) {
                    spC0 -= 1;
                }
                if (gc->unk5D0 != 0) {
                    gc->unk598 = &gc->unk4C0;
                } else {
                    gc->unk598 = &gc->unk52C;
                }
            } else if (&gc->unk4C0 == temp_v0_8) {
                temp_at_3 = sp138 + 1;
                sp138 = temp_at_3;
                if (gc->unk5D0 == temp_at_3) {
                    gc->unk598 = &gc->unk52C;
                } else {
                    var_a2_4 = NULL;
                }
            }
            if (var_a2_4 != NULL) {
                var_a2_4->unk34 = (s32) sp108;
                var_a2_4->unkC = (s32) sp118;
                var_a2_4->unk1C = (s32) sp110;
                var_a2_4->unk18 = (s32) sp130;
                var_a2_4->unk8 = (s32) sp120;
                var_a2_4->unk4 = (s32) sp128;
                var_a2_4->unk0 = (s32) sp100;
            }
            temp_v1_3 = sp140 + 1;
            if (sp60->unk-6E04->unk488 != 0) {
                *(void *)0x74080 = 0x9900;
            }
            sp140 = temp_v1_3;
            if (temp_v1_3 < gc->unk5D4) {
                goto loop_86;
            }
            var_s6 = (__GLcontext *) spC8;
        }
        if (sp60->unk-7A94 != 0) {
            if ((var_s5 != 0) && !((s32) var_s6->backBuffer.storeStippledSpan & 1)) {
                M2C_ERROR(/* Read from unset register $t9 */)(var_s6, 0);
            }
        } else if ((var_s5 != 0) && !(((spF0 * 0x10) + var_s6)->unk7D10 & 1)) {
            __glMgr_UnlockSingleDMAPool(var_s6, var_s6, 0, 0, spF0);
        }
        if (gc->unk10C != 0) {
            __glMgrSendHistogramFills(gc, gc);
        }
        if (gc->unk110 != 0) {
            __glMgrSendMinmaxFills(gc, gc);
        }
        temp_v0_9 = gc->unk104;
        if (temp_v0_9 & 1) {
            gc->unk104 = temp_v0_9 & ~1;
            *(void *)0x74080 = 0x8600;
            gc->unk1A4 |= 0x800;
        }
        gc->imports.fprintf = (s32 (*)(__GLcontext *, void *, s8 *, ...)) spE8;
        gc->imports.fclose = (s32 (*)(__GLcontext *, void *)) sp68;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44], gap at: 0x28. */
void __glMgrCopyTile(__GLcontext *gc, s64 arg1, ...) {
    s64 sp10;
    s64 sp8;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    s32 (*temp_at_2)(__GLcontext *, s8 *);
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    s32 var_t0;
    s32 var_t3;
    s64 temp_a3_3;
    s64 temp_at;
    u32 temp_s1;
    u8 *temp_t1;
    void (*temp_t3)(__GLcontext *, s8 *);
    void (*var_a0)(__GLcontext *, s8 *);
    void *(*temp_t0)(__GLcontext *, s8 *, s8 *);
    void *temp_a6_2;
    void *temp_v0;
    void *var_a4_2;
    void *var_a7_2;

    unksp20 = arg1;
    unksp28 = (s64) __glCurrentContext;
    __Mgr_ReturnMode(SYMBOL_LOCATION.unk414, 1, 1);
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    var_a2 = M2C_ERROR(/* Read from unset register $v0 */) & 0x80000000;
    var_a0 = gc->imports.fatal;
    if (var_a2 != 0) {
        goto block_1;
    }
    if ((s32) var_a0 < 0) {
block_1:
        temp_v0 = var_a0 + ((s64) ((s64) (temp_s1 >> 0x10) << 0x30) >> 0x30);
        if ((s32) temp_v0 < 0) {
            temp_at = (s64) ((s64) temp_v0 * -0x1000000000000) >> 0x30;
            gc->imports.atoi += temp_at;
            var_a0 += temp_at;
            gc->imports.fatal = var_a0;
            temp_a3 = gc->imports.fopen - temp_at;
            gc->unk55C = temp_a3;
            gc->unk4F0 = temp_a3;
            gc->unk484 = temp_a3;
            gc->imports.fopen = (void *(*)(__GLcontext *, s8 *, s8 *)) temp_a3;
            if (temp_a3 <= 0) {
                return;
            }
            goto block_4;
        }
block_4:
        if (((s32) var_a0 >= 0) || (gc->imports.fatal = NULL, temp_a3_2 = -(s32) var_a0, var_a2 = gc->imports.fopen - temp_a3_2, gc->unk55C = var_a2, gc->unk4F0 = var_a2, gc->unk484 = var_a2, gc->imports.fopen = (void *(*)(__GLcontext *, s8 *, s8 *)) var_a2, gc->imports.atoi += temp_a3_2, (var_a2 > 0))) {
            goto block_6;
        }
        return;
    }
block_6:
    temp_a0 = gc->exports.unk30;
    temp_s5 = (gc->unk1A8 & 0x01000000) != 0;
    temp_a5 = gc->unk610;
    temp_a5_2 = (((u32) (temp_a5 & 0x1FFFF) >> 0xE) & 4) << 0xE;
    sp10 = (temp_a5 & ~0x1C000) | temp_a5_2;
    temp_a3_3 = ((s32) ((bitwise f32) gc->exports.destroyContext * (f32) ((u64) ((gc->unk598->unk34 * (s32) gc->imports.other) << 0x20) >> 0x20)) + 3) & ~3;
    sp8 = temp_a3_3;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, -2, var_a2, temp_a3_3, -4, temp_a5_2, 0x1FFFF);
    temp_a0_2 = gc->exports.unk34;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, -2);
    temp_a0_3 = gc->exports.unk38;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->exports.unk3C;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, -2);
    temp_a0_5 = gc->unk598->unk50;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, -2);
    temp_a0_6 = gc->unk1E4;
    __glMgrInitPixelStateERAM(temp_a0_6, temp_a0_6, -2);
    __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk4B4, SYMBOL_LOCATION.unk4B4, -1);
    temp_t1 = gc->unk598;
    *(s32 *)0x74080 = 0x8E70;
    temp_t2 = gc->unk5F4;
    temp_a6 = temp_t1->unkC;
    temp_a4 = temp_t1->unk8;
    temp_t8 = temp_t2 + temp_a4;
    if (temp_a6 != 0) {
        var_a7 = temp_a4;
        var_t0 = temp_t2;
    } else {
        var_a7 = temp_t8;
        var_t0 = 0;
    }
    temp_t9 = temp_t1->unk30;
    M2C_TRAP_IF(3 == 0);
    *(s32 *)0x74080 = var_a7;
    *(s32 *)0x74080 = temp_a6;
    *(s32 *)0x74080 = var_t0;
    var_a4 = 0;
    var_t3 = temp_t9 % 3;
    if (var_t3 == 0) {
        var_t3 = 3;
    }
    M2C_TRAP_IF(3 == 0);
    *(s32 *)0x74080 = var_t3;
    *(s32 *)0x74080 = (s32) (temp_t9 + 2) / 3;
    *(s32 *)0x74080 = var_t3 - 1;
    if (var_a7 == 0) {
        var_a4 = 4;
    }
    if (temp_a6 == 0) {
        var_a4 |= 0x10;
    }
    if (var_t0 == 0) {
        var_a4 |= 8;
    }
    if (temp_t8 & 1) {
        var_a4 |= 1;
    }
    if ((temp_t2 + temp_a6) & 1) {
        var_a4 |= 2;
    }
    if (temp_s5 != 0) {
        var_a4 |= 0x20;
    }
    if (temp_a6 == 0) {
        var_a4 |= 0x80;
    }
    temp_s5_2 = temp_s5 == 0;
    temp_t0 = gc->imports.fopen;
    *(s32 *)0x74080 = var_a4;
    temp_a6_2 = temp_t0 - 1;
    if ((s32) temp_t0 < 7) {
        var_a4_2 = temp_a6_2;
        var_a7_2 = temp_a6_2;
    } else {
        var_a7_2 = (void *)2;
        var_a4_2 = (void *)5;
    }
    temp_at_2 = gc->imports.atoi;
    *(s32 *)0x74080 = (s32) temp_s1;
    temp_t3 = gc->imports.fatal;
    *(s32 *)0x74080 = (s32) (gc->imports.warning + unksp20);
    *(s32 *)0x74080 = (s32) temp_t3;
    *(s32 *)0x74080 = (s32) temp_at_2;
    *(s32 *)0x74080 = (s32) var_a4_2;
    temp_t8_2 = temp_t1->unk34;
    *(s32 *)0x74080 = unksp28->unk92CC;
    *(s32 *)0x74080 = gc->unk610;
    temp_t9_2 = temp_t8_2 - 1;
    *(s32 *)0x74080 = (unksp28->unk9688 | 8) & ~4;
    *(s32 *)0x74080 = temp_t9_2;
    *(s32 *)0x74080 = (s32) temp_a6_2;
    *(s32 *)0x74080 = temp_s5_2;
    *(s32 *)0x74080 = (s32) (gc->imports.getenv + unksp20);
    *(s32 *)0x74080 = (s32) temp_at_2;
    *(s32 *)0x74080 = (s32) temp_t3;
    *(s32 *)0x74080 = (s32) var_a7_2;
    *(s32 *)0x74080 = unksp28->unk92CC;
    *(s32 *)0x74080 = unksp28->unk97E4;
    *(s32 *)0x74080 = unksp28->unk9688 & ~8;
    *(s32 *)0x74080 = temp_t9_2;
    *(s32 *)0x74080 = (s32) temp_a6_2;
    *(s32 *)0x74080 = temp_s5_2;
    *(s32 *)0x74080 = 0x300;
    *(s32 *)0x74080 = 0xA0204;
    *(s32 *)0x74080 = (s32) sp8;
    *(s32 *)0x74080 = 0xA0304;
    *(s32 *)0x74080 = (temp_t8_2 & 0xFFFF) | ((s32) temp_t0 << 0x10);
    *(s32 *)0x74080 = 0xA0404;
    *(s32 *)0x74080 = (s32) sp10;
    *(s32 *)0x74080 = 0xA0604;
    *(s32 *)0x74080 = 9;
    *(s32 *)0x74080 = 0xA0504;
    *(s32 *)0x74080 = (unksp28->unk9688 | 8) & ~4;
    *(s32 *)0x74080 = 0xE0300;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x78, 0x7c], gap at: 0x50. */
void __glMgrFastCopyPixels(__GLcontext *gc, s32 arg1, ...) {
    s64 sp20;
    __GLcontext *temp_s5;
    s32 (*var_s1)(__GLcontext *, s8 *, s8 *, ...);
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a2;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s7;
    s32 var_s8;
    u32 var_s3;
    u8 *temp_a3;
    u8 *temp_a3_2;
    u8 *var_a4;

    temp_s5 = __glCurrentContext;
    if (gc->imports.malloc != NULL) {
        __glMgrBuildChain(gc, gc);
        __glMgrMakeTiles(gc, gc, temp_s5);
        __glMgrMakePages(gc, gc, temp_s5);
    }
    __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0);
    if (gc->unk1A8 & 0x01000000) {
        __glMgrSaveRSS((__GLcontext *)-1, -1, 0x01400000, 0, 0, 3);
        if (arg1 != 0) {
            goto block_3;
        }
        goto block_58;
    }
    __glMgrSaveRSS((__GLcontext *)0x01E03929, 0x01E03929, 0x01400000, gc->unkE8, gc->unkEC, 3);
    if (arg1 == 0) {
block_58:
        if (gc->unk544 == 0) {
            if (gc->unk5D0 == 0) {
                gc->unk598 = &gc->unk454;
            } else {
                gc->unk598 = &gc->unk4C0;
            }
        } else {
            gc->unk598 = &gc->unk52C;
        }
        var_s1 = gc->imports.sprintf;
    } else {
block_3:
        if (gc->unk46C != 0) {
            gc->unk598 = &gc->unk454;
        } else if (gc->unk5D0 == 0) {
            gc->unk598 = &gc->unk52C;
        } else {
            gc->unk598 = &gc->unk4C0;
        }
        var_s1 = NULL;
    }
    var_s4 = 0;
    sp20 = (s64) temp_s5;
    var_s3 = 0;
    if (gc->unk5D4 != 0) {
        var_s7 = sp18;
        var_s6 = sp8;
        var_s8 = sp0;
        unksp50 = (s64) spC;
        unksp58 = (s64) sp14;
        var_s5 = sp4;
        unksp48 = (s64) sp10;
loop_20:
        if (arg1 != 0) {
            if (&gc->unk454 != gc->unk598) {
                if (arg1 != 0) {
                    goto block_23;
                }
                goto block_35;
            }
            goto block_26;
        }
block_35:
        if (&gc->unk52C != gc->unk598) {
block_23:
            if (var_s4 != 0) {
                var_a2 = gc->unk5D0;
                if (var_a2 == var_s4) {
                    goto block_25;
                }
            } else {
block_25:
                goto block_26;
            }
        } else {
block_26:
            var_s7 = gc->unk598->unk0;
            temp_a4 = gc->unk598->unk18;
            var_s8 = gc->unk598->unk34;
            temp_a5 = gc->unk598->unk1C;
            unksp50 = (s64) gc->unk598->unkC;
            unksp48 = (s64) gc->unk598->unk8;
            unksp58 = (s64) gc->unk598->unk4;
            var_s5 = temp_a5;
            var_s6 = temp_a4;
            if ((gc->unk138 == var_s8) && (gc->unk13C == temp_a4) && (gc->unk140 == temp_a5)) {
                if (((s32) sp20->unk9CA3 >= 2) && (temp_a4 != temp_a5)) {
                    goto block_8;
                }
            } else {
block_8:
                gc->unk1A4 |= 0x20000;
                gc->unk138 = gc->unk598->unk34;
                gc->unk13C = gc->unk598->unk18;
                gc->unk140 = gc->unk598->unk1C;
            }
            __glMgrInitImagingPipe(gc, gc);
            if (!(gc->unkF8 & 1)) {
                if (gc->unk1A8 & 0x01000000) {
                    __glMgrInitRSSToTE((__GLcontext *) sp20, sp20, gc, 0x01000000);
                } else {
                    __glMgrInitRSSToRSS((__GLcontext *) sp20, sp20, gc, 0x01000000);
                }
            }
            var_a2 = (gc->unk598->unk40 & 7) << 0xE;
            gc->unk610 = (gc->unk610 & 0xFFFE3FFF) | var_a2;
        }
        if (arg1 != 0) {
            __glMgrCopyTile(gc, gc, var_s1, var_a2);
            temp_a3 = gc->unk598;
            var_a4 = temp_a3;
            var_s1 += temp_a3->unk34;
            if (&gc->unk454 == temp_a3) {
                if (gc->unk5D0 != 0) {
                    gc->unk598 = &gc->unk4C0;
                } else {
                    gc->unk598 = &gc->unk52C;
                }
            } else if (&gc->unk4C0 == temp_a3) {
                var_s4 += 1;
                if (gc->unk5D0 == var_s4) {
                    gc->unk598 = &gc->unk52C;
                } else {
                    var_a4 = NULL;
                }
            }
        } else {
            var_s1 -= gc->unk598->unk34;
            __glMgrCopyTile(gc, gc, var_s1, var_a2);
            temp_a3_2 = gc->unk598;
            var_a4 = temp_a3_2;
            if (&gc->unk52C == temp_a3_2) {
                if (gc->unk5D0 != 0) {
                    gc->unk598 = &gc->unk4C0;
                } else {
                    gc->unk598 = &gc->unk454;
                }
            } else if (&gc->unk4C0 == temp_a3_2) {
                var_s4 += 1;
                if (gc->unk5D0 == var_s4) {
                    gc->unk598 = &gc->unk454;
                } else {
                    var_a4 = NULL;
                }
            }
        }
        if (var_a4 != NULL) {
            var_a4->unk34 = var_s8;
            var_a4->unk1C = var_s5;
            var_a4->unk18 = var_s6;
            var_a4->unk0 = var_s7;
            var_a4->unk8 = (s32) unksp48;
            var_a4->unk4 = (s32) unksp58;
            var_a4->unkC = (s32) unksp50;
        }
        var_s3 += 1;
        if (((s32) gc->imports.fopen > 0) && (var_s3 < (u32) gc->unk5D4)) {
            goto loop_20;
        }
    }
    __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
    __glMgrRestoreTexmode(M2C_ERROR(/* Read from unset register $a0 */));
    if (gc->unk10C != 0) {
        __glMgrSendHistogramFills(gc, gc);
    }
    if (gc->unk110 != 0) {
        __glMgrSendMinmaxFills(gc, gc);
    }
    temp_a0 = gc->unk104;
    if (temp_a0 & 1) {
        *(s32 *)0x74080 = 0x8600;
        gc->unk104 = temp_a0 & ~1;
        gc->unk1A4 |= 0x800;
    }
}

void __glMgrSlowCopyPixels(__GLcontext *gc, ...) {
    s64 spA0;
    u64 sp90;
    u64 sp88;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    void *sp24;
    ? sp20;
    u8 (*sp1C)(__GLcontext *);
    void *(*sp14)(__GLcontext *);
    s32 spC;
    s32 sp4;
    __GLcontext *temp_s1;
    s32 (*temp_s7)(__GLcontext *, s8 *, s8 *, ...);
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a6;
    s32 var_a7;
    s32 var_s4;
    s32 var_s5;
    s32 var_s8;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_lo;
    s64 var_a0;
    u8 (*var_a7_2)(__GLcontext *);
    u8 (*var_s3)(__GLcontext *);
    u8 temp_v1;
    void *(*temp_s6)(__GLcontext *, s8 *, s8 *);
    void *(*temp_v0_2)(__GLcontext *);
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t3;
    void *temp_v0_4;
    void *var_a1;
    void *var_s2;

    var_s4 = 0;
    temp_s1 = __glCurrentContext;
    sp38 = (s64) gc->imports.getenv;
    var_s8 = gc->exports.unk40;
    temp_s6 = gc->imports.fopen;
    temp_s7 = gc->imports.sprintf;
    sp40 = (s64) gc->imports.atoi;
    sp48 = (s64) gc->imports.fprintf;
    sp28 = (s64) gc->imports.fclose;
    if (gc->imports.getDrawablePrivate != gc->imports.wscx) {
        var_v0 = (s32) gc->exports.loseCurrent;
    } else {
        var_v0 = (s32) gc->exports.destroyContext;
    }
    temp_lo = (s32) gc->imports.other * ((s32) (temp_s7 + 3) * (s32) temp_s6) * var_v0;
    temp_v1 = temp_lo <= 0x8000;
    gc->unkC0 = temp_v1;
    if (temp_v1 != 0) {
        var_s3 = gc->unkC4;
        var_s5 = 0;
    } else {
        var_s3 = temp_s1->imports.malloc(temp_s1, (u32) temp_lo);
        var_s5 = 3;
    }
    __glMgr_UseDMAForWrite(gc, gc);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        goto block_6;
    }
    __glMgr_UseDMAForRead(gc, gc);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        sp30 = temp_lo;
        var_s2 = temp_s1 + 0x10000;
    } else {
block_6:
        __glMgr_LockSingleDMAPool(temp_s1, temp_s1, var_s3, temp_lo, 0, &sp20, var_s5);
        sp30 = temp_lo;
        var_s4 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            var_s2 = temp_s1 + 0x10000;
            var_a0 = sp30 & 0xFFF;
            var_a6 = sp30 >> 0xC;
            var_a7 = var_a6 + 1;
loop_8:
            if ((errno == 0xC) || (var_v0_2 = 1, (errno == 0xB))) {
                var_v0_2 = 0;
            }
            if (var_v0_2 == 0) {
                var_a2 = var_a6;
                if (var_a0 != 0) {
                    var_a2 = var_a7;
                }
                spA0 = var_a0;
                sp90 = (u64) var_a6;
                sp88 = (u64) var_a7;
                if ((u16) temp_s1->unk91FC->unk4D0 >= (u32) var_a2) {
                    mgrTM_UnlockPages(temp_s1, 0, (u64) var_a2);
                    __glMgr_LockSingleDMAPool(temp_s1, temp_s1, var_s3, sp30, 0, &sp20, var_s5);
                    var_s4 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                    var_a7 = (s32) sp88;
                    var_a6 = (s32) sp90;
                    var_a0 = spA0;
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {

                    } else {
                        goto loop_8;
                    }
                }
            }
        } else {
            var_s2 = temp_s1 + 0x10000;
        }
        temp_a0 = (var_s5 * 0x10) + temp_s1;
        temp_v0 = temp_a0->unk7D10;
        if (var_s4 != 1) {
            temp_a0->unk7D10 = (s32) (temp_v0 & ~1);
        } else {
            temp_a0->unk7D10 = (s32) (temp_v0 | 1);
        }
    }
    var_a7_2 = var_s3;
    temp_v0_2 = gc->imports.getDrawablePrivate;
    gc->exports.notifyResize = var_s3;
    gc->exports.unk40 = 2;
    if (temp_v0_2 != gc->imports.wscx) {
        sp1C = var_s3;
        sp14 = temp_v0_2;
        spC = (s32) sp28;
        sp4 = (s32) sp28;
        __glMgrMakePixelDesc(gc, gc, 2, gc->imports.warning, gc->imports.fatal, 0, 0, temp_s7, temp_s6);
        if (gc->imports.malloc != NULL) {
            M2C_ERROR(/* Read from unset register $t9 */)(gc, temp_s1);
            __glMgrMakePages(gc, gc, temp_s1);
        }
        var_a7_2 = gc->exports.notifyResize;
    }
    *(s32 *)0x74080 = 0x9600;
    __glMgrDoReadPixels(temp_s1, temp_s1, gc->imports.warning, gc->imports.fatal, gc->imports.sprintf, gc->imports.fopen, gc->imports.fclose, gc->imports.wscx, var_a7_2);
    *(void *)0x74080 = 0x9700;
    if (gc->unk188 != 0) {
        temp_a0_2 = var_s2->unk-75D4;
        if (temp_a0_2 == NULL) {
            return;
        }
        var_a1 = temp_a0_2->unkC4;
        if (var_a1 == NULL) {
            mgrTM_RefreshDim(temp_a0_2, var_a1);
            var_a1 = var_s2->unk-75D4->unkC4;
        }
        if (MgrasPrevVidTexture != 0) {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s1, var_a1, 1);
            var_a1 = var_s2->unk-75D4->unkC4;
        }
        var_a0_2 = var_s2->unk-6E04->unk1E4;
        if (var_a0_2 != var_a1) {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s1, var_a1);
            var_a1 = var_s2->unk-75D4->unkC4;
            var_a0_2 = var_s2->unk-6E04->unk1E4;
        }
        if (var_a0_2 == var_a1) {
            var_s2->unk-6E04->unk488 = 1;
            temp_a0_3 = var_s2->unk-75D4->unkC4;
            var_a2_2 = temp_a0_3->unk58 | 1;
            temp_a0_3->unk58 = var_a2_2;
            sp24 = temp_a0_3;
            if (var_s2->unk-6DB0 != 0) {
                var_a2_2 |= 2;
                temp_a0_3->unk58 = var_a2_2;
            }
            if (var_s2->unk-6DAC != 0) {
                var_a2_2 |= 0x400000;
                temp_a0_3->unk58 = var_a2_2;
            }
            temp_v0_3 = temp_a0_3->unk7C;
            if ((temp_v0_3 == 0x8185) || (temp_v0_3 == 0x8186)) {
                var_a2_2 = (var_a2_2 & ~0xC0000) | 0x40000;
                temp_a0_3->unk58 = var_a2_2;
            }
            __glMgrasWrite(temp_s1, temp_s1, 0x18A, var_a2_2, SYMBOL_LOCATION.unk100, 1);
        }
        if (var_s8 == 1) {
            goto block_55;
        }
        goto block_37;
    }
    if (var_s8 == 1) {
block_55:
        var_s8 = 0;
block_37:
    }
    spC = (s32) sp48;
    sp4 = (s32) sp28;
    sp1C = var_s3;
    sp14 = gc->imports.getDrawablePrivate;
    __glMgrMakePixelDesc(gc, gc, var_s8, 0, 0, sp38, sp40, temp_s7, temp_s6);
    if (gc->imports.malloc != NULL) {
        __glMgrBuildChain(gc, gc);
        __glMgrMakeTiles(gc, gc, temp_s1);
        __glMgrMakePages(gc, gc, temp_s1);
    }
    __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0);
    __glMgrSaveRSS((__GLcontext *)0x01E03929, 0x01E03929, 0x01400000, gc->unkE8, gc->unkEC, 3);
    gc->unk190 = 0;
    __glMgrSendPixels(gc, gc, 1, 0, 1);
    __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
    temp_v0_4 = var_s2->unk-6E04;
    if (temp_v0_4->unk488 != 0) {
        temp_v0_4->unk488 = 0;
        temp_a2 = sp24->unk58 & ~1;
        sp24->unk58 = temp_a2;
        __glMgrasWrite(temp_s1, temp_s1, 0x18A, temp_a2, SYMBOL_LOCATION.unk100, 1, sp24, -2);
        var_s2->unk-6E04->unk1E8 = 0;
    } else {
        __glMgrRestoreTexmode(M2C_ERROR(/* Read from unset register $a0 */));
    }
    if (gc->unkC0 == 0) {
        if (var_s4 != 0) {
            temp_t3 = (var_s5 * 0x10) + temp_s1;
            temp_t3->unk7D10 = (s32) (temp_t3->unk7D10 & ~1);
            __glMgr_UnlockSingleDMAPool(temp_s1, temp_s1, var_s3, sp30, var_s5);
        }
        temp_s1->imports.free(temp_s1, var_s3);
    }
    gc->unkC0 = 0;
}

void __glMgrCopyPixels(__GLcontext *gc, ...) {
    s64 sp20;
    ? var_a1;
    s64 var_ra;
    void *(*temp_a2)(__GLcontext *, u32, u32);

    var_ra = saved_reg_ra;
    if (gc->imports.calloc != NULL) {
        if (gc->unk5D4 >= 2) {
            var_a1 = 1;
            if (!(gc->unk1A8 & 0x01000000)) {
                __glMgrim_GetFloatv(GL_CURRENT_RASTER_POSITION, sp);
                var_a1 = 1;
                if (!(sp0 <= (f32) gc->imports.warning)) {
                    var_a1 = 0;
                }
                var_ra = sp20;
            }
        } else {
            goto block_7;
        }
    } else {
block_7:
        var_a1 = 1;
    }
    gc->unk110 = 0;
    gc->unk10C = 0;
    if ((gc->unk1A8 & 0x1000) && (gc->unk1A8 & 0x800) && !(gc->unk1A8 & 0x100000)) {
        temp_a2 = gc->imports.calloc;
        sp20 = var_ra;
        if (temp_a2 != NULL) {
            __glMgrFastCopyPixels(gc, gc, var_a1, temp_a2);
            return;
        }
    }
    sp20 = var_ra;
    __glMgrSlowCopyPixels(gc, gc, var_a1);
}

void __glMgrInitColorMatrix(__GLcontext *gc, ...) {
    gc->unk8278 = 0.0f;
    gc->unk8274 = 0.0f;
    gc->unk8270 = 0.0f;
    gc->unk826C = 0.0f;
    gc->unk8268 = 1.0f;
    gc->unk8264 = 1.0f;
    gc->unk8260 = 1.0f;
    gc->unk825C = 1.0f;
}

void stackAdjustmentDummyRoutine(void) {

}

void __glMgrDoReadPixels(__GLcontext *gc, s32 arg1, s32 arg2, s64 arg3, s32 arg4, u32 arg5, s64 arg6, s64 arg7, ...) {
    s64 sp2B8;
    s64 sp2B0;
    u64 sp2A8;
    s64 sp2A0;
    u64 sp298;
    s64 sp290;
    s64 sp238;
    s64 sp230;
    u64 sp228;
    s64 sp220;
    s64 sp218;
    s64 sp210;
    s32 sp20C;
    ? sp8;
    s32 sp0;
    ? var_a1;
    ? var_a5_11;
    ? var_a5_8;
    s32 *temp_s2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a5_7;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5_2;
    s32 var_a5_4;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s8;
    s32 var_t0;
    s32 var_v1;
    s32 var_v1_2;
    s64 temp_a6_3;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_a0_4;
    s64 var_a0_5;
    s64 var_a3_2;
    s64 var_a3_3;
    s64 var_a3_4;
    s64 var_a5;
    s64 var_a5_10;
    s64 var_a5_3;
    s64 var_a5_5;
    s64 var_a5_6;
    s64 var_a5_7;
    s64 var_a5_9;
    s64 var_a7_2;
    s64 var_ra;
    s64 var_s7;
    u32 var_a2;
    u32 var_a3;
    u32 var_a7;
    u64 temp_a2;
    u64 temp_t2;

    var_ra = saved_reg_ra;
    sp210 = 0;
    var_s5 = 0;
    sp238 = arg6;
    var_s6 = arg4;
    var_s7 = arg3;
    var_s4 = arg2;
    var_s3 = arg1;
    if ((s32) gc->unk9CA4 >= 2) {
        sp2B8 = arg7;
        __glMgrim_Finish();
        var_ra = sp2B0;
    }
    if (gc->unk7C7C != 0) {
        var_s8 = 0;
    } else {
        var_s8 = 3;
    }
    temp_v1 = gc->frontBuffer.unkB8;
    sp218 = 0;
    sp230 = gc->frontBuffer.unkBC + ((gc->unk438 * temp_v1) + arg7);
    temp_a1 = ((gc->unk97E4 & ~0xF) | ((bitwise s32) gc->frontBuffer.oneOverGreenScale & 0xF)) & ~0x700;
    gc->unk97E4 = temp_a1;
    temp_a1_2 = ((temp_a1 & ~0x1C000) | ((gc->unk7C25 & 7) << 0xE)) & ~0x40000;
    gc->unk97E4 = temp_a1_2;
    sp228 = (u64) (gc->frontBuffer.getDisplayMasks + ((var_s6 - 1) * temp_v1));
    if (arg5 >= 0x1906U) {
        if (arg5 < 0x1907U) {
            goto block_5;
        }
        if (arg5 >= 0x1909U) {
            if (arg5 >= 0x190AU) {
                if (arg5 >= 0x8000U) {
                    sp2B0 = var_ra;
                    if (arg5 <= 0x8000U) {
                        sp2B0 = var_ra;
                        var_v1 = (temp_a1_2 & ~0x400000 & ~0xF0) | 0x80;
                        goto block_6;
                    }
                } else {
                    sp2B0 = var_ra;
                    if (arg5 == 0x190A) {
                        temp_t2 = var_s7 * var_s6 * 4 * 4;
                        sp228 = temp_t2;
                        __glMgrRestoreRSS(gc, gc, temp_t2, -0x10);
                        sp218 = M2C_ERROR(/* Read from unset register $v0 */);
                        sp230 = M2C_ERROR(/* Read from unset register $v0 */);
                        gc->unk97E4 = (s32) ((((gc->unk97E4 & ~0xF) | 3 | 0x400000) & ~0xF0) | 0x80);
                    }
                }
            } else {
                temp_lo = var_s7 * var_s6;
                sp2B0 = var_ra;
                temp_a2 = temp_lo * 0xC;
                sp228 = temp_a2;
                __glMgrRestoreRSS(gc, gc, temp_a2, temp_a2, temp_lo);
                sp218 = M2C_ERROR(/* Read from unset register $v0 */);
                sp230 = M2C_ERROR(/* Read from unset register $v0 */);
                gc->unk97E4 = (s32) ((((gc->unk97E4 & ~0xF) | 3 | 0x400000) & ~0xF0) | 0x70);
            }
        } else if (arg5 >= 0x1908U) {
            sp2B0 = var_ra;
            if (arg5 < 0x1909U) {
                goto block_90;
            }
        } else {
            sp2B0 = var_ra;
            if (arg5 == 0x1907) {
block_90:
                sp2B0 = var_ra;
                gc->unk97E4 = (s32) (((temp_a1_2 | 0x400000) & ~0xF0) | ((arg5 & 0xF) * 0x10));
            }
        }
    } else if (arg5 >= 0x1903U) {
        if (arg5 >= 0x1904U) {
            if (arg5 >= 0x1905U) {
                sp2B0 = var_ra;
                if (arg5 < 0x1906U) {
                    goto block_5;
                }
            } else {
                sp2B0 = var_ra;
                if (arg5 == 0x1904) {
                    goto block_5;
                }
            }
        } else {
            goto block_5;
        }
    } else if (arg5 >= 0x1901U) {
        if (arg5 >= 0x1902U) {
            sp2B0 = var_ra;
            if (arg5 == 0x1902) {
                goto block_5;
            }
        } else {
            goto block_5;
        }
    } else {
        sp2B0 = var_ra;
        if (arg5 == 0x1900) {
block_5:
            sp2B0 = var_ra;
            var_v1 = (temp_a1_2 & ~0xF0) | ((arg5 & 0xF) * 0x10);
block_6:
            gc->unk97E4 = var_v1;
        }
    }
    temp_s2 = &gc->frontBuffer.greenMax;
    __glMgr_UseDMAForRead((__GLcontext *) temp_s2, temp_s2);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        __glMgr_LockSingleDMAPool(gc, gc, sp230, sp228, 0, sp, var_s8);
        var_s5 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            var_a5 = sp228 & 0xFFF;
            var_a3 = sp228 >> 0xC;
            var_a7 = var_a3 + 1;
loop_10:
            if ((errno == 0xC) || (var_a0 = 1, (errno == 0xB))) {
                var_a0 = 0;
            }
            var_a2 = var_a3;
            if (var_a0 == 0) {
                if (var_a5 != 0) {
                    var_a2 = var_a7;
                }
                sp2A8 = (u64) var_a3;
                sp2A0 = var_a5;
                sp298 = (u64) var_a7;
                if ((u16) gc->unk91FC->unk4D0 >= var_a2) {
                    mgrTM_UnlockPages(gc, 0, (u64) var_a2, (u64) var_a3);
                    __glMgr_LockSingleDMAPool(gc, gc, sp230, sp228, 0, sp, var_s8);
                    var_s5 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                    var_a7 = (u32) sp298;
                    var_a5 = sp2A0;
                    var_a3 = (u32) sp2A8;
                    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                        goto loop_10;
                    }
                }
            }
        }
        if (var_s5 != 0) {
            goto block_18;
        }
        perror(&sub_0dbf0000 - 0x2C70);
        return;
    }
    __glMgrInitColorMatrix((__GLcontext *) &sp8, &sp8);
block_18:
    temp_a5 = gc->unk9688;
    if (var_s5 != 0) {
        var_a1 = 0x01000000;
        var_a5_2 = (temp_a5 | 1) & ~2;
    } else {
        var_a1 = 0x800000;
        var_a5_2 = (temp_a5 & ~1) | 2;
    }
    gc->unk9688 = var_a5_2;
    temp_a5_2 = (var_a5_2 & ~4) | 8;
    gc->unk9688 = temp_a5_2;
    gc->unk92CC = (s32) ((-0x10 & (gc->unk92CC | 0x10)) | 8);
    __glMgrSaveRSS((__GLcontext *)0x11E23929, 0x11E23929, var_a1, gc->backBuffer.blueMax, gc->unk7CA0, 2, temp_a5_2, -5);
    __glMgrInitPixelStateERAM((__GLcontext *)0x18D, 0x18D, -2);
    __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk3CC, SYMBOL_LOCATION.unk3CC, -1);
    var_s1 = 0;
    __Mgr_ReturnMode(SYMBOL_LOCATION.unk414, 1, 1);
    var_a7_2 = sp210;
    var_a3_2 = (s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30;
    var_a0_2 = (s64) ((s64) ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x10) << 0x30) >> 0x30;
    if (0x80008000 & M2C_ERROR(/* Read from unset register $v0 */)) {
        goto block_21;
    }
    var_a5_3 = var_a3_2 + var_s3;
    if (var_s3 >= 0) {
        var_a5_4 = var_a3_2 + var_s3;
        if (var_s4 < 0) {
block_21:
            var_a5_3 = var_a3_2 + var_s3;
            goto block_22;
        }
    } else {
block_22:
        if (var_a5_3 < 0) {
            var_a3_2 = (s64) (var_a5_3 * -0x1000000000000) >> 0x30;
            var_s7 -= var_a3_2;
            var_s3 += var_a3_2;
            if (var_s7 <= 0) {
                var_a7_2 = 1;
            }
            var_s1 = (s32) ((bitwise f32) gc->frontBuffer.destMask * (f32) var_a3_2);
            var_a5_5 = var_a0_2 + var_s4;
            if (var_s3 < 0) {
                goto block_80;
            }
        } else {
            if (var_s3 < 0) {
block_80:
                var_s7 += var_s3;
                if (var_s7 <= 0) {
                    var_a7_2 = 1;
                }
                temp_t0 = (s32) ((bitwise f32) gc->frontBuffer.destMask * (f32) -var_s3);
                var_s3 = 0;
                var_s1 += temp_t0;
            }
            var_a5_5 = var_a0_2 + var_s4;
        }
        if (var_a5_5 < 0) {
            var_a0_2 = (s64) (var_a5_5 * -0x1000000000000) >> 0x30;
            var_s6 -= var_a0_2;
            var_s4 += var_a0_2;
            if (var_s6 <= 0) {
                var_a7_2 = 1;
            }
            var_s1 += gc->frontBuffer.unkB8 * var_a0_2;
            if (var_s4 < 0) {
                goto block_84;
            }
        } else if (var_s4 < 0) {
block_84:
            var_s6 += var_s4;
            if (var_s6 <= 0) {
                var_a7_2 = 1;
            }
            var_s1 -= gc->frontBuffer.unkB8 * var_s4;
            var_s4 = 0;
        }
        var_a5_4 = var_a3_2 + var_s3;
    }
    if ((var_a5_4 + var_s7) >= 0x800) {
        var_s7 = 0x7FF - var_a5_4;
        if (var_a5_4 >= 0x7FF) {
            var_a7_2 = 1;
        }
    }
    temp_a5_3 = var_a0_2 + var_s4;
    if ((temp_a5_3 + var_s6) >= 0x800) {
        var_s6 = 0x7FF - temp_a5_3;
        if (temp_a5_3 >= 0x7FF) {
            var_a7_2 = 1;
        }
    }
    if (var_a7_2 != 0) {
        if ((var_s5 == 0) || (((var_s8 * 0x10) + gc)->unk7D10 & 1)) {

        } else {
            __glMgr_UnlockSingleDMAPool(gc, gc, sp230, sp228, var_s8);
        }
    } else {
        var_a0_3 = var_s7;
        if (var_s7 >= 0x2A) {
            sp220 = 2;
            M2C_TRAP_IF(0x18 == 0);
            temp_at = ((s32) (var_s7 + 7) / 24) * 0x18;
            var_a0_3 = temp_at - 7;
            temp_at_2 = var_s7 - temp_at;
            sp20C = temp_at_2 + 7;
            if (temp_at_2 == -7) {
                sp220 = 1;
            }
        } else {
            sp220 = 1;
        }
        sp290 = var_a0_3;
        if (var_s5 != 0) {
            temp_a6 = sp0 + var_s1;
            sp0 = temp_a6;
            __glMgrRE4DMARd(gc, gc, temp_s2, var_s3, var_s4, sp290, var_s6, temp_a6, var_a7_2);
            if (sp220 != 2) {

            } else {
                temp_a3 = gc->frontBuffer.redShift;
                var_s3_2 = var_s3 + sp290;
                if (temp_a3 != 0x1909) {
                    if (temp_a3 != 0x190A) {
                        var_v1_2 = ((s32) gc->frontBuffer.destMask * sp290) + sp0;
                    } else {
                        var_v1_2 = (sp290 * 0x10) + sp0;
                    }
                    sp0 = var_v1_2;
                } else {
                    sp0 += sp290 * 0xC;
                }
                sp210 = 0;
                var_s1_2 = 0;
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk414, 1, 1, temp_a3);
                var_a3_3 = (s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30;
                var_a0_4 = (s64) ((s64) ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x10) << 0x30) >> 0x30;
                if (0x80008000 & M2C_ERROR(/* Read from unset register $v0 */)) {
                    var_a5_6 = var_a3_3 + var_s3_2;
                    goto block_118;
                }
                var_a5_6 = var_a3_3 + var_s3_2;
                if ((var_s3_2 >= 0) && (var_a5_6 = var_a3_3 + var_s3_2, (var_s4 >= 0))) {
                    var_a4 = sp20C;
                } else {
block_118:
                    var_a4 = sp20C;
                    if (var_a5_6 >= 0) {
                        if (var_s3_2 < 0) {
                            goto block_143;
                        }
                        goto block_120;
                    }
                    var_a3_3 = (s64) (var_a5_6 * -0x1000000000000) >> 0x30;
                    var_a4 -= var_a3_3;
                    var_s3_2 += var_a3_3;
                    if (var_a4 <= 0) {
                        sp210 = 1;
                    }
                    var_s1_2 = (s32) ((bitwise f32) gc->frontBuffer.destMask * (f32) var_a3_3);
                    var_a5_7 = var_a0_4 + var_s4;
                    if (var_s3_2 < 0) {
block_143:
                        var_a4 += var_s3_2;
                        if (var_a4 <= 0) {
                            sp210 = 1;
                        }
                        temp_t0_2 = (s32) ((bitwise f32) gc->frontBuffer.destMask * (f32) -var_s3_2);
                        var_s3_2 = 0;
                        var_s1_2 += temp_t0_2;
block_120:
                        var_a5_7 = var_a0_4 + var_s4;
                    }
                    if (var_a5_7 < 0) {
                        var_a0_4 = (s64) (var_a5_7 * -0x1000000000000) >> 0x30;
                        var_s6 -= var_a0_4;
                        var_s4 += var_a0_4;
                        if (var_s6 <= 0) {
                            sp210 = 1;
                        }
                        var_s1_2 += gc->frontBuffer.unkB8 * var_a0_4;
                        if (var_s4 < 0) {
                            goto block_147;
                        }
                    } else if (var_s4 < 0) {
block_147:
                        var_s6 += var_s4;
                        if (var_s6 <= 0) {
                            sp210 = 1;
                        }
                        var_s1_2 -= gc->frontBuffer.unkB8 * var_s4;
                        var_s4 = 0;
                    }
                }
                temp_a5_4 = var_a3_3 + var_s3_2;
                if ((temp_a5_4 + var_a4) >= 0x800) {
                    var_a4 = 0x7FF - temp_a5_4;
                    if (temp_a5_4 >= 0x7FF) {
                        sp210 = 1;
                    }
                }
                temp_a5_5 = var_a0_4 + var_s4;
                if ((temp_a5_5 + var_s6) >= 0x800) {
                    var_s6 = 0x7FF - temp_a5_5;
                    if (temp_a5_5 >= 0x7FF) {
                        sp210 = 1;
                    }
                }
                if (sp210 == 0) {
                    temp_a6_2 = sp0 + var_s1_2;
                    sp0 = temp_a6_2;
                    __glMgrRE4DMARd(gc, gc, temp_s2, var_s3_2, var_s4, var_a4, var_s6, temp_a6_2, 0x1909);
                }
            }
            temp_v0 = gc->frontBuffer.redShift;
            if (temp_v0 != 0x1909) {
                if (temp_v0 != 0x190A) {
                    var_t0 = var_s8 * 0x10;
                    if (sp238 == 0x1406) {
                        PackFloatData(gc, temp_s2, var_s7, var_s6);
                        var_t0 = var_s8 * 0x10;
                    }
                } else {
                    goto block_135;
                }
            } else {
                var_a5_8 = 0;
                if (temp_v0 == 0x190A) {
block_135:
                    var_a5_8 = 1;
                }
                PackLuminanceData(gc, temp_s2, var_s7, var_s6, sp218, var_a5_8);
                var_t0 = var_s8 * 0x10;
            }
            if (!((var_t0 + gc)->unk7D10 & 1)) {
                __glMgr_UnlockSingleDMAPool(gc, gc, sp230, sp228, var_s8);
            }
        } else {
            temp_a6_3 = sp230 + var_s1;
            sp230 = temp_a6_3;
            __glMgrRE4PIORd(gc, gc, temp_s2, var_s3, var_s4, sp290, var_s6, temp_a6_3, var_a7_2);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                if (sp220 == 2) {
                    temp_a3_2 = gc->frontBuffer.redShift;
                    var_s3_3 = var_s3 + sp290;
                    if (temp_a3_2 != 0x1909) {
                        if (temp_a3_2 != 0x190A) {
                            sp230 += (s32) gc->frontBuffer.destMask * sp290;
                        } else {
                            sp230 += sp290 * 0x10;
                        }
                    } else {
                        sp230 += sp290 * 0xC;
                    }
                    sp210 = 0;
                    var_s1_3 = 0;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk414, 1, 1, temp_a3_2);
                    var_a3_4 = (s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30;
                    var_a0_5 = (s64) ((s64) ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x10) << 0x30) >> 0x30;
                    if (0x80008000 & M2C_ERROR(/* Read from unset register $v0 */)) {
                        var_a5_9 = var_a3_4 + var_s3_3;
                        goto block_158;
                    }
                    var_a5_9 = var_a3_4 + var_s3_3;
                    if ((var_s3_3 >= 0) && (var_a5_9 = var_a3_4 + var_s3_3, (var_s4 >= 0))) {
                        var_a4_2 = sp20C;
                    } else {
block_158:
                        var_a4_2 = sp20C;
                        if (var_a5_9 >= 0) {
                            if (var_s3_3 < 0) {
                                goto block_183;
                            }
                            goto block_160;
                        }
                        var_a3_4 = (s64) (var_a5_9 * -0x1000000000000) >> 0x30;
                        var_a4_2 -= var_a3_4;
                        var_s3_3 += var_a3_4;
                        if (var_a4_2 <= 0) {
                            sp210 = 1;
                        }
                        var_s1_3 = (s32) ((bitwise f32) gc->frontBuffer.destMask * (f32) var_a3_4);
                        var_a5_10 = var_a0_5 + var_s4;
                        if (var_s3_3 < 0) {
block_183:
                            var_a4_2 += var_s3_3;
                            if (var_a4_2 <= 0) {
                                sp210 = 1;
                            }
                            temp_t0_3 = (s32) ((bitwise f32) gc->frontBuffer.destMask * (f32) -var_s3_3);
                            var_s3_3 = 0;
                            var_s1_3 += temp_t0_3;
block_160:
                            var_a5_10 = var_a0_5 + var_s4;
                        }
                        if (var_a5_10 < 0) {
                            var_a0_5 = (s64) (var_a5_10 * -0x1000000000000) >> 0x30;
                            var_s6 -= var_a0_5;
                            var_s4 += var_a0_5;
                            if (var_s6 <= 0) {
                                sp210 = 1;
                            }
                            var_s1_3 += gc->frontBuffer.unkB8 * var_a0_5;
                            if (var_s4 < 0) {
                                goto block_187;
                            }
                        } else if (var_s4 < 0) {
block_187:
                            var_s6 += var_s4;
                            if (var_s6 <= 0) {
                                sp210 = 1;
                            }
                            var_s1_3 -= gc->frontBuffer.unkB8 * var_s4;
                            var_s4 = 0;
                        }
                    }
                    temp_a5_6 = var_a3_4 + var_s3_3;
                    if ((temp_a5_6 + var_a4_2) >= 0x800) {
                        var_a4_2 = 0x7FF - temp_a5_6;
                        if (temp_a5_6 >= 0x7FF) {
                            sp210 = 1;
                        }
                    }
                    temp_a5_7 = var_a0_5 + var_s4;
                    if ((temp_a5_7 + var_s6) >= 0x800) {
                        var_s6 = 0x7FF - temp_a5_7;
                        if (temp_a5_7 >= 0x7FF) {
                            sp210 = 1;
                        }
                    }
                    if (sp210 == 0) {
                        __glMgrRE4PIORd(gc, gc, temp_s2, var_s3_3, var_s4, var_a4_2, var_s6, sp230 + var_s1_3);
                    }
                }
                temp_v0_2 = gc->frontBuffer.redShift;
                if (temp_v0_2 != 0x1909) {
                    if (temp_v0_2 == 0x190A) {
                        goto block_106;
                    }
                } else {
                    var_a5_11 = 0;
                    if (temp_v0_2 == 0x190A) {
block_106:
                        var_a5_11 = 1;
                    }
                    PackLuminanceData(gc, temp_s2, var_s7, var_s6, sp218, var_a5_11);
                }
            }
        }
    }
    __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
    if ((void *) sp218 != NULL) {
        gc->imports.free(gc, (void *) sp218);
    }
}

void __glMgrim_ReadPixels(s32 x, s32 y, s32 width, s32 height, enum GLenum format, enum GLenum type, void *pixels) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    void *sp1C;
    enum GLenum sp14;
    enum GLenum spC;
    enum GLenum sp4;
    __GLcontext *temp_s4;
    s32 *temp_a0;

    temp_s4 = __glCurrentContext;
    if (__glBeginMode != 1) {
        switch (format) {                           /* irregular */
        default:
block_4:
            if (type != GL_BITMAP) {
                goto block_5;
            }
            if ((format != GL_STENCIL_INDEX) && (format != GL_COLOR_INDEX)) {
                __glSetError((__GLcontext *)0x500, 0x1900, (__GLcontext *)1);
                return;
            }
block_5:
            if ((width > 0) && (height > 0)) {
                sp28 = (s64) x;
                sp20 = (s64) y;
                if (pixels == NULL) {
                    return;
                }
                sp1C = pixels;
                sp14 = type;
                spC = format;
                sp4 = format;
                temp_a0 = &temp_s4->frontBuffer.greenMax;
                sp38 = (s64) temp_a0;
                __glMgrMakePixelDesc((__GLcontext *) temp_a0, temp_a0, 2, sp28, sp20, 0, 0, width, height);
                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                    if (temp_s4->frontBuffer.greenMax != 0) {
                        __glMgrMakeTiles((__GLcontext *) sp38, sp38, temp_s4);
                        __glMgrMakePages((__GLcontext *) sp38, sp38, temp_s4);
                    }
                    *(s32 *)0x74080 = 0x9600;
                    sp30 = (s64) (temp_s4 + 0x10000);
                    temp_s4->unk9D4C = 1;
                    __glMgrDoReadPixels(temp_s4, temp_s4, sp28, sp20, width, height, format, type, pixels);
                    *(void *)0x74080 = 0x9700;
                    sp30->unk-62B4 = 0;
                    return;
                }
                __glSetError(M2C_ERROR(/* Read from unset register $v0 */));
                return;
            }
            if ((width < 0) || (height < 0)) {
                __glSetError((__GLcontext *)0x501, 0x1900, (__GLcontext *)1);
            }
            return;
        case GL_COLOR_INDEX:
            if (temp_s4->readModes.colorIndexMode == 0) {
                __glSetError((__GLcontext *)0x502, 0x1900, (__GLcontext *)1);
                return;
            }
            if (format != GL_STENCIL_INDEX) {
                goto block_3;
            }
        case GL_STENCIL_INDEX:
            if (temp_s4->readModes.haveStencilBuffer == 0) {
                __glSetError((__GLcontext *)0x502, 0x1900, (__GLcontext *)1);
                return;
            }
block_3:
            if (format != GL_DEPTH_COMPONENT) {
                goto block_4;
            }
        case GL_DEPTH_COMPONENT:
            if (temp_s4->readModes.haveDepthBuffer == 0) {
                __glSetError((__GLcontext *)0x502, 0x1900, (__GLcontext *)1);
                return;
            }
            goto block_4;
        }
    } else {
        __glSetError((__GLcontext *)0x502, 1);
    }
}

void __glMgrFastDrawPixels(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, ...) {
    ? sp20;

    __glMgrMakePixelDesc((__GLcontext *) &sp20, &sp20, 0, 0, 0, (s32) gc->unk158, (s32) gc->unk15C, arg1, arg2, arg3, arg3, arg4, arg5);
}

void __glMgrim_DrawPixels(s32 width, s32 height, enum GLenum format, enum GLenum type, void *pixels) {
    s64 sp180;
    f64 sp178;
    f64 sp170;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spE0;
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
    s64 sp50;
    s64 sp48;
    f64 sp38;
    void *sp34;
    s32 sp28;
    u8 sp20;
    s32 sp1C;
    enum GLenum sp14;
    s32 spC;
    enum GLenum sp4;
    __GLcontext *temp_s0;
    enum GLenum temp_a0;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f7;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f5_4;
    s32 *temp_s1;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_f0;
    s32 temp_f2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_t0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a6;
    s32 var_s4_2;
    s32 var_s8;
    s32 var_v0;
    s32 var_v0_3;
    s64 temp_at_2;
    s64 temp_v0;
    s64 var_a0_2;
    s64 var_a4;
    s64 var_a4_2;
    s64 var_a4_3;
    s64 var_a7;
    s64 var_a7_2;
    s64 var_s2;
    s64 var_s2_2;
    s64 var_s4;
    s64 var_v0_2;
    s64 var_v1;
    u8 temp_a3;
    u8 var_s5;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_v0_3;
    void *temp_v0_5;

    var_s2 = saved_reg_s2;
    temp_s0 = __glCurrentContext;
    var_s8 = height;
    if (__glBeginMode != 1) {
        if (format != GL_STENCIL_INDEX) {
            goto block_2;
        }
        if (temp_s0->modes.haveStencilBuffer == 0) {
            __glSetError((__GLcontext *)0x502, 1);
            return;
        }
block_2:
        if (format != GL_DEPTH_COMPONENT) {
            goto block_3;
        }
        if (temp_s0->modes.haveDepthBuffer == 0) {
            __glSetError((__GLcontext *)0x502, 1);
            return;
        }
block_3:
        if (type != GL_BITMAP) {
            goto block_4;
        }
        if ((format != GL_STENCIL_INDEX) && (format != GL_COLOR_INDEX)) {
            __glSetError((__GLcontext *)0x500, 1);
            return;
        }
block_4:
        if ((width > 0) && (var_s8 > 0)) {
            switch (type) {                         /* switch 1; irregular */
            default:                                /* switch 1 */
            default:                                /* switch 2 */
block_11:
                temp_a0 = temp_s0->renderMode;
                if (temp_a0 == GL_SELECT) {
                    return;
                }
                sp138 = (s64) format;
                sp130 = (s64) pixels;
                if (temp_a0 != GL_FEEDBACK) {
                    __glMgrim_GetBooleanv(GL_CURRENT_RASTER_POSITION_VALID, &sp20);
                    if (sp20 != 0) {
                        if (sp130 == 0) {
                            return;
                        }
                        __glSetError(temp_s0);
                        temp_f4 = temp_s0->unk2D4;
                        var_v0 = 1;
                        if (!(temp_f4 < 0.0f)) {
                            var_v0 = 0;
                        }
                        spD0 = 0;
                        spD8 = sp130;
                        if (var_v0 != 0) {
                            var_f5 = -temp_f4;
                        } else {
                            var_f5 = temp_f4;
                        }
                        if ((f64) var_f5 > 1.0) {
                            if (var_v0 != 0) {
                                var_f5_2 = -temp_f4;
                            } else {
                                var_f5_2 = temp_f4;
                            }
                            spB0 = (s64) (s32) (3071.0f / var_f5_2);
                        } else {
                            spB0 = 0xBFF;
                        }
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk8, 1, 1);
                        sp128 = M2C_ERROR(/* Read from unset register $v0 */);
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unkC, 1, 1);
                        sp110 = (s64) ((s32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x10);
                        sp108 = (s64) (s16) M2C_ERROR(/* Read from unset register $v0 */);
                        __glMgrim_GetIntegerv(GL_CURRENT_RASTER_POSITION, &sp28);
                        temp_f7 = temp_s0->unk2D0;
                        var_f4 = 0.0f;
                        temp_f0 = (s32) ((f32) sp28 + (temp_f7 * (f32) width));
                        var_a3 = temp_f0;
                        if (temp_f7 < 0.0f) {
                            var_a6 = sp28;
                        } else {
                            var_a3 = sp28;
                            var_a6 = temp_f0;
                        }
                        temp_f5 = temp_s0->unk2D4;
                        temp_f2 = (s32) ((f32) sp2C + ((f32) var_s8 * temp_f5));
                        if (temp_f5 < 0.0f) {
                            var_a0 = temp_f2;
                            var_a1 = sp2C;
                        } else {
                            var_a0 = sp2C;
                            var_a1 = temp_f2;
                        }
                        var_v0_2 = 0;
                        spB8 = 0;
                        sp60 = (s64) temp_s0->unk460;
                        sp50 = (s64) temp_s0->unk45C;
                        if (temp_s0->frontBuffer.alphaTestFuncTable == NULL) {

                        } else {
                            sp180 = 0;
                            sp120 = (s64) var_a6;
                            sp178 = (bitwise f64) temp_f5;
                            sp170 = (bitwise f64) temp_f7;
                            spF8 = (s64) var_a0;
                            sp100 = (s64) var_a1;
                            sp118 = (s64) var_a3;
                            temp_s2 = &__iob + 0x20;
                            fprintf(temp_s2, &sub_0dbf0000 - 0x2C40, (s64) (sp128 >> 0x10), (s64) (s16) sp128, sp110, sp108, (s64) var_a6);
                            fprintf(temp_s2, &sub_0dbf0000 - 0x2C20, sp118, sp120, spF8, sp100);
                            fprintf(temp_s2, &sub_0dbf0000 - 0x2C08, (s64) sp28, (s64) sp2C);
                            var_f4 = second half of f64;
                            var_v0_2 = 0;
                            var_s2 = spC0;
                        }
                        if (temp_s0->backBuffer.unkCC != 0) {
                            if (var_f4 < temp_f5) {
                                temp_v0 = sp110 - var_a0;
                                var_a7 = temp_v0;
                                if (temp_v0 <= 0) {
                                    var_a7 = 0;
                                }
                                var_v0_2 = var_a7;
                                spD0 = var_a7;
                                if (sp108 < var_a1) {
                                    if (temp_f5 < var_f4) {
                                        var_f5_3 = -temp_f5;
                                    } else {
                                        var_f5_3 = temp_f5;
                                    }
                                    var_s8 = (s32) ((f32) (((sp108 - var_a0) - var_a7) + 1) / var_f5_3);
                                    var_a0_2 = var_v0_2;
                                    if (var_v0_2 < 0) {
                                        goto block_140;
                                    }
                                } else {
                                    goto block_65;
                                }
                            } else {
                                temp_v0_2 = sp108 - var_a1;
                                var_a7_2 = 0;
                                if (temp_v0_2 < -1) {
                                    var_a7_2 = temp_v0_2 + 1;
                                }
                                var_v0_2 = var_a7_2;
                                spD0 = var_a7_2;
                                if (var_a0 < sp110) {
                                    if (temp_f5 < var_f4) {
                                        var_f5_4 = -temp_f5;
                                    } else {
                                        var_f5_4 = temp_f5;
                                    }
                                    var_s8 = (s32) ((f32) ((var_a1 - sp110) + var_a7_2 + 1) / var_f5_4);
                                }
                                goto block_65;
                            }
                        } else {
block_65:
                            var_a0_2 = var_v0_2;
                            if (var_v0_2 < 0) {
block_140:
                                var_a0_2 = -var_v0_2;
                            }
                        }
                        spC0 = var_s2;
                        temp_s0->unk45C += var_a0_2;
                        if (var_s8 != 0) {
                            var_s2_2 = 1;
                            if (!(var_f4 < temp_f7)) {
                                var_s2_2 = 0;
                            }
                            temp_at = sp128 >> 0x10;
                            sp68 = var_a3 < temp_at;
                            var_v1 = 1;
                            if (!(temp_f7 < var_f4)) {
                                var_v1 = 0;
                            }
                            sp48 = (s64) width;
                            sp38 = (bitwise f64) temp_f7;
                            spC8 = (s64) sp30;
                            temp_s1 = &temp_s0->frontBuffer.greenMax;
                            sp90 = var_s2_2;
                            temp_s2_2 = &__iob + 0x20;
                            sp88 = temp_at - var_a3;
                            spA8 = (s16) sp128 - var_a3;
                            sp78 = var_a6 - temp_at;
                            temp_t0 = (s16) sp128 - var_a6;
                            spA0 = (s16) sp128 < var_a6;
                            sp80 = temp_t0 + 1;
                            sp70 = temp_t0 < -1;
                            sp98 = var_v1;
loop_72:
                            var_s4 = spB8;
                            if (var_s8 < spB0) {
                                spE0 = (s64) var_s8;
                                var_s4 = spB8;
                            } else {
                                spE0 = spB0;
                            }
                            if (temp_s0->backBuffer.unkCC != 0) {
                                temp_a0_2 = temp_s0->unk8A2C;
                                if (temp_a0_2 != NULL) {
                                    if (temp_a0_2->unkC4 == NULL) {
                                        M2C_ERROR(/* Read from unset register $t9 */)(temp_a0_2);
                                    }
                                    temp_s0->backBuffer.unkD0 = 0;
                                    temp_a3 = temp_s0->unk8A2C->unkC4->unkB3;
                                    var_v0_3 = 0;
                                    if (temp_a3 != 6) {
                                        if (temp_a3 == 4) {
                                            sp138 = 0x1907;
                                            var_v0_3 = 3;
                                            temp_s0->backBuffer.unkD0 = 3;
                                        }
                                        if (var_v0_3 != 0) {
                                            goto block_81;
                                        }
                                    } else {
                                        sp138 = 0x1908;
                                        temp_s0->backBuffer.unkD0 = 4;
block_81:
                                        if (MgrasPrevVidTexture != 0) {
                                            mgrTM_VidTexWait(temp_s0, temp_s0->unk8A2C->unkC4, 1, temp_a3);
                                        }
                                        temp_a1 = temp_s0->unk8A2C->unkC4;
                                        if (temp_a1 == temp_s0->unk91FC->unk1E4) {
                                            goto block_83;
                                        }
                                        mgrTM_DrawSetup(temp_s0, temp_a1);
                                        if (temp_s0->unk8A2C->unkC4 == temp_s0->unk91FC->unk1E4) {
block_83:
                                            temp_s0->unk91FC->unk488 = 1;
                                        }
                                    }
                                }
                                if (temp_s0->unk91FC->unk488 != 0) {
                                    temp_v0_3 = temp_s0->unk8A2C->unkC4;
                                    var_a2 = temp_v0_3->unk58 | 1;
                                    temp_v0_3->unk58 = var_a2;
                                    sp34 = temp_v0_3;
                                    if (temp_s0->unk9250 != 0) {
                                        var_a2 |= 2;
                                        temp_v0_3->unk58 = var_a2;
                                    }
                                    if (temp_s0->unk9254 != 0) {
                                        var_a2 |= 0x400000;
                                        temp_v0_3->unk58 = var_a2;
                                    }
                                    temp_s5 = temp_v0_3->unk7C;
                                    if ((temp_s5 == 0x8185) || (temp_s5 == 0x8186)) {
                                        var_a2 = (0xFFF3FFFF & var_a2) | 0x40000;
                                        temp_v0_3->unk58 = var_a2;
                                    }
                                    __glMgrasWrite(temp_s0, temp_s0, 0x18A, var_a2, SYMBOL_LOCATION.unk100, 1);
                                    temp_v0_4 = temp_s0->unk458;
                                    if (sp90 != 0) {
                                        var_a4 = sp88;
                                        if (sp88 <= 0) {
                                            var_a4 = 0;
                                        }
                                        var_s4 = var_a4;
                                        if (spA0 != 0) {
                                            if (temp_v0_4 == 0) {
                                                temp_s0->unk458 = (s32) sp48;
                                            }
                                            if (sp98 != 0) {
                                                var_f4_2 = -(bitwise f32) sp38;
                                            } else {
                                                var_f4_2 = (bitwise f32) sp38;
                                            }
                                            sp48 = (s64) (s32) ((f32) ((spA8 - var_a4) + 1) / var_f4_2);
                                            if (var_s4 >= 0) {
                                                var_a4_2 = var_s4;
                                            } else {
                                                goto block_127;
                                            }
                                        } else {
                                            goto block_126;
                                        }
                                    } else {
                                        if (sp70 != 0) {
                                            var_a4_3 = sp80;
                                        } else {
                                            var_a4_3 = 0;
                                        }
                                        var_s4 = var_a4_3;
                                        if (sp68 != 0) {
                                            if (temp_v0_4 == 0) {
                                                temp_s0->unk458 = (s32) sp48;
                                            }
                                            if (sp98 != 0) {
                                                var_f4_3 = -(bitwise f32) sp38;
                                            } else {
                                                var_f4_3 = (bitwise f32) sp38;
                                            }
                                            sp48 = (s64) (s32) ((f32) (var_a4_3 + sp78 + 1) / var_f4_3);
                                        }
block_126:
                                        var_a4_2 = var_s4;
                                        if (var_s4 < 0) {
block_127:
                                            var_a4_2 = -var_s4;
                                        }
                                    }
                                    spC8 = (s64) temp_v0_4;
                                    temp_s0->unk460 += var_a4_2;
                                }
                            }
                            sp14 = type;
                            sp4 = format;
                            sp1C = (s32) spD8;
                            spC = (s32) sp138;
                            __glMgrMakePixelDesc((__GLcontext *) temp_s1, temp_s1, 0, 0, 0, var_s4, spD0, sp48, spE0);
                            temp_s5_2 = M2C_ERROR(/* Read from unset register $v0 */);
                            if (temp_s0->frontBuffer.alphaTestFuncTable != NULL) {
                                fprintf(temp_s2_2, &sub_0dbf0000 - 0x2BF0, var_s4, spD0);
                                fprintf(temp_s2_2, &sub_0dbf0000 - 0x2BD8, sp48, spE0);
                            }
                            if (temp_s5_2 == 0) {
                                if (temp_s0->frontBuffer.greenMax != 0) {
                                    M2C_ERROR(/* Read from unset register $t9 */)(temp_s1);
                                    __glMgrMakeTiles((__GLcontext *) temp_s1, temp_s1, temp_s0);
                                    __glMgrMakePages((__GLcontext *) temp_s1, temp_s1, temp_s0);
                                }
                                if (temp_s0->unk91FC->unk488 != 0) {
                                    __glMgrSaveRSS((__GLcontext *)-1, -1, 0x1000, temp_s0->backBuffer.alphaTestFuncTable, temp_s0->backBuffer.redScale, 3);
                                    spB8 = var_s4;
                                    var_s5 = temp_s0->unk9CA4;
                                } else {
                                    __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0, 3);
                                    __glMgrSaveRSS((__GLcontext *)0x01E03929, 0x01E03929, 0x01400000, temp_s0->backBuffer.alphaTestFuncTable, temp_s0->backBuffer.redScale, 3);
                                    spB8 = var_s4;
                                    var_s5 = 1;
                                }
                                var_s4_2 = 0;
                                if ((s32) var_s5 > 0) {
loop_111:
                                    if (temp_s0->frontBuffer.alphaTestFuncTable != NULL) {
                                        fprintf(temp_s2_2, &sub_0dbf0000 - 0x2BB8, (s64) var_s4_2, 1);
                                    }
                                    temp_s0->backBuffer.unkD4 = var_s4_2;
                                    __glMgrSendPixels((__GLcontext *) temp_s1, temp_s1, 1, 0, 1);
                                    var_s4_2 += 1;
                                    if (var_s5 != var_s4_2) {
                                        goto loop_111;
                                    }
                                }
                                __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
                                temp_v0_5 = temp_s0->unk91FC;
                                if (temp_v0_5->unk488 != 0) {
                                    temp_v0_5->unk488 = 0;
                                    temp_a2 = sp34->unk58 & ~1;
                                    sp34->unk58 = temp_a2;
                                    __glMgrasWrite(temp_s0, temp_s0, 0x18A, temp_a2, SYMBOL_LOCATION.unk100, 1, sp34, -2);
                                    temp_s0->unk91FC->unk1E8 = 0;
                                    if (spC8 == 0) {
                                        temp_s0->unk458 = 0;
                                    }
                                    temp_s0->unk45C = (s32) sp50;
                                    temp_s0->unk460 = (s32) sp60;
                                } else {
                                    __glMgrRestoreTexmode(M2C_ERROR(/* Read from unset register $a0 */));
                                }
                                temp_at_2 = spE0 - temp_s0->unk81B8;
                                var_s8 -= spE0;
                                spD8 += (s32) temp_s0->frontBuffer.fetchStippledLine * temp_at_2;
                                spD0 += (s32) (temp_s0->unk2D4 * (f32) ((u64) (temp_at_2 << 0x20) >> 0x20));
                                if (var_s8 == 0) {

                                } else {
                                    goto loop_72;
                                }
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(temp_s5_2);
                                if ((temp_s0->unk91FC->unk488 != 0) && (spC8 == 0)) {
                                    temp_s0->unk458 = 0;
                                }
                                temp_s0->unk45C = (s32) sp50;
                                temp_s0->unk460 = (s32) sp60;
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } else {
                    *(s32 *)0x74080 = 0x10004;
                    *(s32 *)0x74080 = 0x705;
                    return;
                }
                break;
            case GL_UNSIGNED_SHORT_4_4_4_4_EXT:     /* switch 1 */
            case GL_UNSIGNED_SHORT_5_5_5_1_EXT:     /* switch 1 */
            case GL_UNSIGNED_INT_8_8_8_8_EXT:       /* switch 1 */
            case GL_UNSIGNED_SHORT_4_4_4_4_EXT:     /* switch 2 */
            case GL_UNSIGNED_SHORT_5_5_5_1_EXT:     /* switch 2 */
            case GL_UNSIGNED_INT_8_8_8_8_EXT:       /* switch 2 */
                /* fallthrough */
            case GL_UNSIGNED_INT_10_10_10_2_EXT:    /* switch 1 */
            case GL_UNSIGNED_INT_10_10_10_2_EXT:    /* switch 2 */
                if ((format != GL_RGBA) && (format != GL_ABGR_EXT)) {
                    __glSetError((__GLcontext *)0x500, 1);
                    return;
                }
                goto block_11;
            case GL_UNSIGNED_BYTE_3_3_2_EXT:        /* switch 1 */
                if (format == GL_RGB) {
                    switch (type);                  /* switch 2; irregular */
                } else {
                    /* Duplicate return node #21. Try simplifying control flow for better match */
                    __glSetError((__GLcontext *)0x500, 1);
                    return;
                }
                break;
            }
        } else if ((width < 0) || (var_s8 < 0)) {
            __glSetError((__GLcontext *)0x501, 1);
        }
    } else {
        __glSetError((__GLcontext *)0x502, 1);
    }
}

void __glMgrDrawPixels(__GLcontext *gc, s32 arg1, s32 arg2, enum GLenum arg3, enum GLenum arg4, void *arg5, s32 arg6, ...) {
    s32 *temp_at;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    u8 *temp_a7;
    u8 *temp_v0;
    u8 *temp_v0_2;

    var_a0 = 0;
    if (arg6 != 0) {
        var_a1 = 9;
        do {
            temp_v0 = &(&gc->unk454)[var_a0];
            temp_v1 = var_a0 + sp;
            var_a0 += 4;
            var_a1 -= 1;
            *temp_v1 = *temp_v0;
        } while (var_a1 > 0);
        var_a1_2 = 9;
        var_a0_2 = 0;
        do {
            temp_a7 = &(&gc->unk454)[var_a0_2];
            temp_v1_2 = var_a0_2 + &__glMgr_InternalUnpack;
            var_a0_2 += 4;
            var_a1_2 -= 1;
            *temp_a7 = (s32) *temp_v1_2;
        } while (var_a1_2 > 0);
    }
    __glMgrim_DrawPixels(arg1, arg2, arg3, arg4, arg5);
    var_a0_3 = 0;
    if (arg6 != 0) {
        var_a1_3 = 9;
        do {
            temp_at = var_a0_3 + sp;
            temp_v0_2 = &(&gc->unk454)[var_a0_3];
            var_a0_3 += 4;
            var_a1_3 -= 1;
            *temp_v0_2 = (s32) *temp_at;
        } while (var_a1_3 > 0);
    }
}

void __glMgrim_CopyPixels(s32 x, s32 y, s32 width, s32 height, enum GLenum type) {
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    ? sp58;
    ? sp30;
    u8 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp14;
    s32 spC;
    s32 sp4;
    __GLcontext *temp_s0;
    enum GLenum temp_v0;
    s32 *temp_a0;
    s32 *temp_at_4;
    s32 *temp_t0_3;
    s32 *temp_t1_2;
    s32 *temp_t1_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_s1;
    s32 var_s2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_a2;
    s64 temp_a6;
    s64 temp_a6_2;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t3;
    s64 temp_t9;
    s64 temp_v1;
    u8 *temp_at_3;
    u8 *temp_t0_2;
    u8 *temp_t1_4;
    u8 *temp_v1_2;

    temp_s0 = __glCurrentContext;
    var_s2 = height;
    var_s1 = width;
    spA0 = (s64) y;
    sp98 = (s64) x;
    if (__glBeginMode != 1) {
        if ((var_s1 > 0) && (var_s2 > 0)) {
            switch (type) {                         /* irregular */
            default:
                __glSetError((__GLcontext *)0x500);
                return;
            case GL_STENCIL:
                if ((temp_s0->modes.haveStencilBuffer != 0) && (temp_s0->readModes.haveStencilBuffer != 0)) {
                case GL_COLOR:
block_12:
                    __glMgrGetVisualInfo((__GLcontext *) type, type, &sp20, &sp24);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        __glSetError(M2C_ERROR(/* Read from unset register $v0 */));
                        return;
                    }
                    temp_v0 = temp_s0->renderMode;
                    if (temp_v0 != GL_SELECT) {
                        if (temp_v0 != GL_FEEDBACK) {
                            __glMgrim_GetBooleanv(GL_CURRENT_RASTER_POSITION_VALID, &sp28);
                            if (sp28 != 0) {
                                sp88 = 0;
                                sp90 = 0;
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk414, 1, 1);
                                if (M2C_ERROR(/* Read from unset register $v0 */) & ((-1 << 0x1F) | 0x8000)) {
                                    goto block_18;
                                }
                                if (sp98 >= 0) {
                                    if (spA0 < 0) {
                                        goto block_18;
                                    }
                                    goto block_23;
                                }
block_18:
                                temp_a6 = ((s64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x30) >> 0x30) + sp98;
                                if (temp_a6 >= 0) {
                                    goto block_19;
                                }
                                sp90 = (s64) (temp_a6 * -0x1000000000000) >> 0x30;
                                temp_t0 = (s64) (temp_a6 * -0x1000000000000) >> 0x30;
                                var_s1 -= temp_t0;
                                sp98 += temp_t0;
                                if (var_s1 <= 0) {
                                    return;
                                }
block_19:
                                if (sp98 >= 0) {
                                    goto block_20;
                                }
                                temp_at = sp98;
                                sp98 = 0;
                                var_s1 += temp_at;
                                sp90 -= temp_at;
                                if (var_s1 <= 0) {
                                    return;
                                }
block_20:
                                temp_a6_2 = ((s64) ((s64) ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x10) << 0x30) >> 0x30) + spA0;
                                if (temp_a6_2 >= 0) {
                                    goto block_21;
                                }
                                sp88 = (s64) (temp_a6_2 * -0x1000000000000) >> 0x30;
                                temp_t1 = (s64) (temp_a6_2 * -0x1000000000000) >> 0x30;
                                var_s2 -= temp_t1;
                                spA0 += temp_t1;
                                if (var_s2 <= 0) {
                                    return;
                                }
block_21:
                                if (spA0 >= 0) {
                                    goto block_22;
                                }
                                temp_v1 = spA0;
                                spA0 = 0;
                                var_s2 += temp_v1;
                                sp88 -= temp_v1;
                                if (var_s2 <= 0) {
                                    return;
                                }
block_22:
block_23:
                                var_v0 = 9;
                                var_a6 = 0;
                                temp_t3 = temp_s0->unk430;
                                temp_s0->unk430 = __glMgr_DefaultPack.unk0;
                                temp_t9 = temp_s0->unk438;
                                temp_s0->unk438 = (s64) __glMgr_DefaultPack.unk8;
                                temp_at_2 = temp_s0->unk440;
                                sp30.unk20 = (s32) temp_s0->unk450;
                                temp_s0->unk440 = __glMgr_DefaultPack.unk10;
                                sp30.unk10 = temp_at_2;
                                sp30.unk8 = temp_t9;
                                temp_a2 = temp_s0->unk448;
                                temp_s0->unk448 = __glMgr_DefaultPack.unk18;
                                sp30.unk0 = temp_t3;
                                sp30.unk18 = temp_a2;
                                temp_s0->unk450 = __glMgr_DefaultPack.unk20;
                                do {
                                    temp_t0_2 = &(&temp_s0->unk454)[var_a6];
                                    temp_t1_2 = var_a6 + &sp58;
                                    var_a6 += 4;
                                    var_v0 -= 1;
                                    *temp_t1_2 = *temp_t0_2;
                                } while (var_v0 > 0);
                                var_v0_2 = 9;
                                var_a6_2 = 0;
                                do {
                                    temp_at_3 = &(&temp_s0->unk454)[var_a6_2];
                                    temp_t1_3 = var_a6_2 + &__glMgr_DefaultUnpack;
                                    var_a6_2 += 4;
                                    var_v0_2 -= 1;
                                    *temp_at_3 = (s32) *temp_t1_3;
                                } while (var_v0_2 > 0);
                                __glMgrGetColorMatrixState(temp_s0, temp_s0);
                                temp_a0 = &temp_s0->frontBuffer.greenMax;
                                sp80 = (s64) temp_a0;
                                spC = sp24;
                                sp4 = sp24;
                                sp1C = 0;
                                sp14 = sp20;
                                __glMgrMakePixelDesc((__GLcontext *) temp_a0, temp_a0, 1, sp98, spA0, sp90, sp88, var_s1, var_s2);
                                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                                    __glSetError(M2C_ERROR(/* Read from unset register $v0 */));
                                    var_a0 = 9;
                                    var_v0_3 = 0;
                                    temp_s0->unk450 = sp30.unk20;
                                    temp_s0->unk448 = sp30.unk18;
                                    temp_s0->unk440 = sp30.unk10;
                                    temp_s0->unk438 = (s64) sp30.unk8;
                                    temp_s0->unk430 = sp30.unk0;
                                    do {
                                        temp_t0_3 = var_v0_3 + &sp58;
                                        temp_t1_4 = &(&temp_s0->unk454)[var_v0_3];
                                        var_v0_3 += 4;
                                        var_a0 -= 1;
                                        *temp_t1_4 = (s32) *temp_t0_3;
                                    } while (var_a0 > 0);
                                    return;
                                }
                                __glMgrCopyPixels((__GLcontext *) sp80, sp80);
                                var_a0_2 = 9;
                                var_v0_4 = 0;
                                temp_s0->unk450 = sp30.unk20;
                                temp_s0->unk448 = sp30.unk18;
                                temp_s0->unk440 = sp30.unk10;
                                temp_s0->unk438 = (s64) sp30.unk8;
                                temp_s0->unk430 = sp30.unk0;
                                do {
                                    temp_at_4 = var_v0_4 + &sp58;
                                    temp_v1_2 = &(&temp_s0->unk454)[var_v0_4];
                                    var_v0_4 += 4;
                                    var_a0_2 -= 1;
                                    *temp_v1_2 = (s32) *temp_at_4;
                                } while (var_a0_2 > 0);
                                return;
                            }
                            return;
                        }
                        *(s32 *)0x74080 = 0x10004;
                        *(s32 *)0x74080 = 0x706;
                        return;
                    }
                    return;
                }
                __glSetError((__GLcontext *)0x502);
                return;
            case GL_DEPTH:
                if ((temp_s0->modes.haveDepthBuffer == 0) || (temp_s0->readModes.haveDepthBuffer == 0)) {
                    __glSetError((__GLcontext *)0x502);
                    return;
                }
                goto block_12;
            }
        } else if ((var_s1 < 0) || (var_s2 < 0)) {
            __glSetError((__GLcontext *)0x501);
        }
    } else {
        __glSetError((__GLcontext *)0x502);
    }
}

void __glMgrDoCopyPixels(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, enum GLenum arg5, ...) {
    __glMgrim_CopyPixels(arg1, arg2, arg3, arg4, arg5);
}

void __glMgrim_PixelTransferf(enum GLenum pname, f32 param) {
    ? var_a3;
    f32 temp_f5;
    f32 temp_f5_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s8 var_at;
    s8 var_v1;
    void (*temp_a0)();
    void (*temp_a0_2)();
    void (*temp_a0_3)();
    void (*temp_a0_4)();

    if (__glBeginMode != 1) {
        var_a3 = 0x801D;
        var_a1 = pname < GL_POST_CONVOLUTION_GREEN_SCALE_EXT;
        if (var_a1 == 0) {
            if (pname > GL_POST_CONVOLUTION_GREEN_SCALE_EXT) {
                if (pname >= GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI) {
                    if (pname > GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI) {
                        var_a1 = pname < GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI;
                        if (var_a1 == 0) {
                            var_a3 = 0x80BB;
                            if (pname > GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI) {
                                if (pname >= GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI) {
                                    if (pname <= GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI) {
                                        __glCurrentContext->unk8278 = param;
                                        if ((param == 0.0f) && (__glCurrentContext->unk826C == 0.0f) && (__glCurrentContext->unk8270 == 0.0f) && (__glCurrentContext->unk8274 == 0.0f)) {
                                            var_a1_2 = (s32) __glCurrentContext->stencilBuffer.buf.resize | 0x200;
                                        } else {
                                            var_a1_2 = (s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x200;
                                        }
                                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a1_2;
                                        __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x200);
                                    } else {
                                        /* Duplicate return node #84. Try simplifying control flow for better match */
                                        __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                                    }
                                } else {
                                    if (pname == GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI) {
                                        __glCurrentContext->unk8274 = param;
                                        if ((param == 0.0f) && (__glCurrentContext->unk826C == 0.0f) && (__glCurrentContext->unk8270 == 0.0f) && (__glCurrentContext->unk8278 == 0.0f)) {
                                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x200);
                                        } else {
                                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x200);
                                        }
                                        var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 0x200;
                                        goto block_38;
                                    }
                                    /* Duplicate return node #84. Try simplifying control flow for better match */
                                    __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                                }
                            } else {
                                __glCurrentContext->unk8270 = param;
                                if ((param == 0.0f) && (__glCurrentContext->unk826C == 0.0f) && (__glCurrentContext->unk8274 == 0.0f) && (__glCurrentContext->unk8278 == 0.0f)) {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x200);
                                } else {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x200);
                                }
                                __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x200);
                            }
                        } else {
                            var_a3 = 0x80B7;
                            var_a1 = pname < GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI;
                            if (var_a1 == 0) {
                                if (pname > GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI) {
                                    if (pname == GL_POST_COLOR_MATRIX_RED_BIAS_SGI) {
                                        __glCurrentContext->unk826C = param;
                                        if ((param == 0.0f) && (__glCurrentContext->unk8270 == 0.0f) && (__glCurrentContext->unk8274 == 0.0f) && (__glCurrentContext->unk8278 == 0.0f)) {
                                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x200);
                                        } else {
                                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x200);
                                        }
                                        __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x200);
                                    } else {
                                        /* Duplicate return node #84. Try simplifying control flow for better match */
                                        __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                                    }
                                } else {
                                    __glCurrentContext->unk8268 = param;
                                    if ((param == 1.0f) && (__glCurrentContext->unk825C == 1.0f) && (__glCurrentContext->unk8260 == 1.0f) && (__glCurrentContext->unk8264 == 1.0f)) {
                                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x400);
                                    } else {
                                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x400);
                                    }
                                    var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 0x200;
                                    goto block_38;
                                }
                            } else if (pname == GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI) {
                                __glCurrentContext->unk8264 = param;
                                if ((param == 1.0f) && (__glCurrentContext->unk825C == 1.0f) && (__glCurrentContext->unk8260 == 1.0f) && (__glCurrentContext->unk8268 == 1.0f)) {
                                    var_a1_4 = (s32) __glCurrentContext->stencilBuffer.buf.resize | 0x400;
                                } else {
                                    var_a1_4 = (s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x400;
                                }
                                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a1_4;
                                __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x200);
                            } else {
                                /* Duplicate return node #84. Try simplifying control flow for better match */
                                __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                            }
                        }
                    } else {
                        __glCurrentContext->unk8260 = param;
                        if ((param == 1.0f) && (__glCurrentContext->unk825C == 1.0f) && (__glCurrentContext->unk8264 == 1.0f) && (__glCurrentContext->unk8268 == 1.0f)) {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x400);
                        } else {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x400);
                        }
                        __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x200);
                    }
                } else if (pname >= GL_POST_CONVOLUTION_GREEN_BIAS_EXT) {
                    var_a3 = 0x8023;
                    if (pname > GL_POST_CONVOLUTION_GREEN_BIAS_EXT) {
                        var_a1 = pname > GL_POST_CONVOLUTION_ALPHA_BIAS_EXT;
                        if (pname >= GL_POST_CONVOLUTION_ALPHA_BIAS_EXT) {
                            if (var_a1 != 0) {
                                if (pname == GL_POST_COLOR_MATRIX_RED_SCALE_SGI) {
                                    __glCurrentContext->unk825C = param;
                                    if ((param == 1.0f) && (__glCurrentContext->unk8260 == 1.0f) && (__glCurrentContext->unk8264 == 1.0f) && (__glCurrentContext->unk8268 == 1.0f)) {
                                        var_a1_5 = (s32) __glCurrentContext->stencilBuffer.buf.resize | 0x400;
                                    } else {
                                        var_a1_5 = (s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x400;
                                    }
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a1_5;
                                    __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x200);
                                } else {
                                    /* Duplicate return node #84. Try simplifying control flow for better match */
                                    __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                                }
                            } else {
                                __glCurrentContext->unk8388 = param;
                                if ((param == 0.0f) && (__glCurrentContext->unk837C == 0.0f) && (__glCurrentContext->unk8380 == 0.0f) && (__glCurrentContext->unk8384 == 0.0f)) {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x40000);
                                } else {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x40000);
                                }
                                __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x400);
                            }
                        } else {
                            var_a1 = 0x8022;
                            if (pname == GL_POST_CONVOLUTION_BLUE_BIAS_EXT) {
                                __glCurrentContext->unk8384 = param;
                                if ((param == 0.0f) && (__glCurrentContext->unk837C == 0.0f) && (__glCurrentContext->unk8380 == 0.0f) && (__glCurrentContext->unk8388 == 0.0f)) {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x40000);
                                } else {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x40000);
                                }
                                var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 0x400;
                                goto block_38;
                            }
                            /* Duplicate return node #84. Try simplifying control flow for better match */
                            __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                        }
                    } else {
                        __glCurrentContext->unk8380 = param;
                        if ((param == 0.0f) && (__glCurrentContext->unk837C == 0.0f) && (__glCurrentContext->unk8384 == 0.0f) && (__glCurrentContext->unk8388 == 0.0f)) {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x40000);
                        } else {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x40000);
                        }
                        var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 0x400;
                        goto block_38;
                    }
                } else {
                    var_a3 = 0x801F;
                    if (pname >= GL_POST_CONVOLUTION_ALPHA_SCALE_EXT) {
                        if (pname > GL_POST_CONVOLUTION_ALPHA_SCALE_EXT) {
                            if (pname == GL_POST_CONVOLUTION_RED_BIAS_EXT) {
                                __glCurrentContext->unk837C = param;
                                if ((param == 0.0f) && (__glCurrentContext->unk8380 == 0.0f) && (__glCurrentContext->unk8384 == 0.0f) && (__glCurrentContext->unk8388 == 0.0f)) {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x40000);
                                } else {
                                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x40000);
                                }
                                __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x400);
                            } else {
                                /* Duplicate return node #84. Try simplifying control flow for better match */
                                __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                            }
                        } else {
                            __glCurrentContext->unk8378 = param;
                            if ((param == 1.0f) && (__glCurrentContext->unk836C == 1.0f) && (__glCurrentContext->unk8370 == 1.0f) && (__glCurrentContext->unk8374 == 1.0f)) {
                                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x80000);
                            } else {
                                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x80000);
                            }
                            var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 0x400;
                            goto block_38;
                        }
                    } else if (pname == GL_POST_CONVOLUTION_BLUE_SCALE_EXT) {
                        __glCurrentContext->unk8374 = param;
                        if ((param == 1.0f) && (__glCurrentContext->unk836C == 1.0f) && (__glCurrentContext->unk8370 == 1.0f) && (__glCurrentContext->unk8378 == 1.0f)) {
                            var_a1_6 = (s32) __glCurrentContext->stencilBuffer.buf.resize | 0x80000;
                        } else {
                            var_a1_6 = (s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x80000;
                        }
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a1_6;
                        __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x400);
                    } else {
                        /* Duplicate return node #84. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                    }
                }
            } else {
                __glCurrentContext->unk8370 = param;
                if (param == 1.0f) {
                    if ((__glCurrentContext->unk836C == 1.0f) && (__glCurrentContext->unk8374 == 1.0f) && (__glCurrentContext->unk8378 == 1.0f)) {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x80000);
                    } else {
                        goto block_36;
                    }
                } else {
block_36:
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x80000);
                }
                var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 0x400;
                goto block_38;
            }
        } else if (pname >= GL_GREEN_BIAS) {
            if (pname >= GL_BLUE_SCALE) {
                var_a1 = pname < GL_DEPTH_SCALE;
                if (pname >= GL_ALPHA_BIAS) {
                    if (var_a1 == 0) {
                        if (pname >= GL_DEPTH_BIAS) {
                            if (pname >= 0xD20U) {
                                if (pname == GL_POST_CONVOLUTION_RED_SCALE_EXT) {
                                    __glCurrentContext->unk836C = param;
                                    if ((param == 1.0f) && (__glCurrentContext->unk8370 == 1.0f) && (__glCurrentContext->unk8374 == 1.0f) && (__glCurrentContext->unk8378 == 1.0f)) {
                                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 0x80000);
                                    } else {
                                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~0x80000);
                                    }
                                    __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x400);
                                } else {
                                    /* Duplicate return node #84. Try simplifying control flow for better match */
                                    __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                                }
                            } else {
                                __glCurrentContext->unk28C = param;
                            }
                        } else if (pname == GL_DEPTH_SCALE) {
                            __glCurrentContext->unk278 = param;
                        } else {
                            /* Duplicate return node #84. Try simplifying control flow for better match */
                            __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                        }
                    } else {
                        __glCurrentContext->unk288 = param;
                        if ((param == 0.0f) && (__glCurrentContext->unk27C == 0.0f) && (__glCurrentContext->unk280 == 0.0f) && (__glCurrentContext->unk284 == 0.0f)) {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 1);
                        } else {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~1);
                        }
                        __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 1);
                    }
                } else if (pname >= GL_BLUE_BIAS) {
                    if (pname >= GL_ALPHA_SCALE) {
                        if (pname == GL_ALPHA_SCALE) {
                            __glCurrentContext->unk274 = param;
                            if ((param == 1.0f) && (__glCurrentContext->unk268 == 1.0f) && (__glCurrentContext->unk26C == 1.0f) && (__glCurrentContext->unk270 == 1.0f)) {
                                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 2);
                            } else {
                                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~2);
                            }
                            __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 1);
                        } else {
                            /* Duplicate return node #84. Try simplifying control flow for better match */
                            __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                        }
                    } else {
                        __glCurrentContext->unk284 = param;
                        if ((param == 0.0f) && (__glCurrentContext->unk27C == 0.0f) && (__glCurrentContext->unk280 == 0.0f) && (__glCurrentContext->unk288 == 0.0f)) {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 1);
                        } else {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~1);
                        }
                        __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 1);
                    }
                } else if (pname == GL_BLUE_SCALE) {
                    __glCurrentContext->unk270 = param;
                    if ((param == 1.0f) && (__glCurrentContext->unk268 == 1.0f) && (__glCurrentContext->unk26C == 1.0f) && (__glCurrentContext->unk274 == 1.0f)) {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 2);
                    } else {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~2);
                    }
                    __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 1);
                } else {
                    /* Duplicate return node #84. Try simplifying control flow for better match */
                    __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                }
            } else {
                __glCurrentContext->unk280 = param;
                var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 1;
                if (param == 0.0f) {
                    if ((__glCurrentContext->unk27C == 0.0f) && (__glCurrentContext->unk284 == 0.0f) && (__glCurrentContext->unk288 == 0.0f)) {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 1);
                    } else {
                        goto block_61;
                    }
                } else {
block_61:
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~1);
                }
                goto block_38;
            }
        } else if (pname >= GL_INDEX_OFFSET) {
            if (pname < GL_RED_SCALE) {
                temp_f5 = __glCurrentContext->unkCD0;
                if (param > 0.0f) {
                    __glCurrentContext->unk2DC = (s32) (temp_f5 + param);
                } else {
                    __glCurrentContext->unk2DC = (s32) (param - temp_f5);
                }
                temp_a0 = __glCurrentContext->stencilBuffer.buf.resize;
                if (param == 0.0f) {
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0 | 4);
                } else {
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0 & ~4);
                }
                var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 2;
                goto block_38;
            }
            if (pname >= GL_RED_BIAS) {
                if (pname >= GL_ZOOM_X) {
                    if (pname == GL_GREEN_SCALE) {
                        __glCurrentContext->unk26C = param;
                        if ((param == 1.0f) && (__glCurrentContext->unk268 == 1.0f) && (__glCurrentContext->unk270 == 1.0f) && (__glCurrentContext->unk274 == 1.0f)) {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 2);
                        } else {
                            __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~2);
                        }
                        __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 1);
                    } else {
                        /* Duplicate return node #84. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                    }
                } else {
                    __glCurrentContext->unk27C = param;
                    if ((param == 0.0f) && (__glCurrentContext->unk280 == 0.0f) && (__glCurrentContext->unk284 == 0.0f) && (__glCurrentContext->unk288 == 0.0f)) {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 1);
                    } else {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~1);
                    }
                    var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 1;
                    goto block_38;
                }
            } else if (pname == GL_RED_SCALE) {
                __glCurrentContext->unk268 = param;
                if ((param == 1.0f) && (__glCurrentContext->unk26C == 1.0f) && (__glCurrentContext->unk270 == 1.0f) && (__glCurrentContext->unk274 == 1.0f)) {
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize | 2);
                } else {
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) __glCurrentContext->stencilBuffer.buf.resize & ~2);
                }
                __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 1);
            } else {
                /* Duplicate return node #84. Try simplifying control flow for better match */
                __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
            }
        } else if (pname >= GL_MAP_STENCIL) {
            if (pname >= GL_INDEX_SHIFT) {
                if (pname == GL_INDEX_SHIFT) {
                    temp_f5_2 = __glCurrentContext->unkCD0;
                    if (param > 0.0f) {
                        __glCurrentContext->unk2D8 = (s32) (temp_f5_2 + param);
                    } else {
                        __glCurrentContext->unk2D8 = (s32) (param - temp_f5_2);
                    }
                    temp_a0_2 = __glCurrentContext->stencilBuffer.buf.resize;
                    if (param == 0.0f) {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0_2 | 8);
                    } else {
                        __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0_2 & ~8);
                    }
                    var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 2;
                    goto block_38;
                }
                /* Duplicate return node #84. Try simplifying control flow for better match */
                __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
                return;
            }
            var_at = 1;
            if (param == 0.0f) {
                var_at = 0;
            }
            temp_a0_3 = __glCurrentContext->stencilBuffer.buf.resize;
            __glCurrentContext->unk2E1 = var_at;
            if (param != 0.0f) {
                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0_3 | 0x200000);
            } else {
                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0_3 & ~0x200000);
            }
            var_a1_3 = (s32) __glCurrentContext->stencilBuffer.buf.other | 4;
block_38:
            __glCurrentContext->stencilBuffer.buf.other = (void *) var_a1_3;
        } else {
            if (pname == GL_MAP_COLOR) {
                var_v1 = 1;
                if (param == 0.0f) {
                    var_v1 = 0;
                }
                temp_a0_4 = __glCurrentContext->stencilBuffer.buf.resize;
                __glCurrentContext->unk2E0 = var_v1;
                if (param != 0.0f) {
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0_4 | 0x10);
                } else {
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_a0_4 & ~0x10);
                }
                __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x28);
                return;
            }
            __glSetError((__GLcontext *)0x500, var_a1, __glCurrentContext, var_a3);
        }
    } else {
        __glSetError((__GLcontext *)0x502);
    }
}

void __glMgrim_PixelTransferi(enum GLenum pname, s32 param) {
    __glMgrim_PixelTransferf(pname, (f32) param);
}

void ResizeLUT(void *arg0, void *arg1, s32 arg2, s32 arg4) {
    u64 sp0;
    s32 temp_lo;
    s32 temp_s4;
    s32 var_a2;
    s32 var_a4;
    s32 var_s1;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    u32 temp_a2;
    u32 temp_s2;
    u32 temp_s3;
    u64 var_v1;
    void *temp_a1;
    void *temp_s5;
    void *temp_s7;
    void *temp_v0;

    var_a4 = arg4;
    if (arg2 < 0x101) {
        var_v1 = 0x100;
        goto block_2;
    }
    var_a4 = arg2 < 0x401;
    if (var_a4 != 0) {
        sp0 = 0x400;
    } else {
        var_v1 = 0x1000;
block_2:
        sp0 = var_v1;
    }
    temp_a1 = arg1->unk4;
    temp_s3 = sp0 * 8;
    temp_s2 = sp0 * 4;
    if (temp_a1 != NULL) {
        arg1->unk4 = arg0->unk8(arg0, temp_a1, temp_s2, var_a4);
        temp_v0 = arg0->unk8(arg0, arg1->unk8, temp_s3);
        temp_a2 = arg1->unk0;
        temp_s4 = (sp0 / temp_a2) - 1;
        temp_lo = temp_a2 * temp_s4;
        arg1->unk8 = temp_v0;
        M2C_TRAP_IF(temp_a2 == 0);
        temp_s5 = arg1->unk4;
        var_s4 = temp_s4 - 1;
        var_a2 = temp_a2 * 4;
        var_s3 = temp_s5 + var_a2;
        temp_s7 = temp_v0 + var_a2;
        var_s2 = (temp_lo * 8) + temp_s7;
        var_s1 = (temp_lo * 4) + temp_v0;
        if (var_s4 != -1) {
            do {
                bcopy(temp_s5, var_s3, var_a2);
                bcopy(temp_s7, var_s2, arg1->unk0 * 4);
                bcopy(temp_v0, var_s1, arg1->unk0 * 4);
                var_s4 -= 1;
                var_a2 = arg1->unk0 * 4;
                var_s2 -= var_a2;
                var_s1 -= var_a2;
                var_s3 += var_a2;
            } while (var_s4 != -1);
        }
    } else {
        arg1->unk4 = arg0->unk0(arg0, temp_s2, var_a4);
        arg1->unk8 = arg0->unk0(arg0, temp_s3);
        bzero(arg1->unk4, temp_s2);
        bzero(arg1->unk8, temp_s3);
    }
    arg1->unk0 = (u32) sp0;
}

void FillCILUTFloat(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    f64 var_f4;
    f64 var_f4_2;
    f64 var_f4_3;
    s16 *var_a5_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a4;
    s32 var_a5;
    s32 var_at;
    s8 *var_a6;

    temp_t0 = arg0->unk0;
    temp_a7 = arg0->unk8;
    var_a6 = arg0->unk4 + arg2;
    if (arg2 < 2) {
        var_a5 = temp_a7;
    } else {
        var_a5 = (temp_t0 * 4) + temp_a7;
    }
    var_a4 = 0;
    var_a5_2 = ((arg2 & 1) * 2) + var_a5;
    if (temp_t0 != 0) {
        temp_a2 = arg1 - 1;
        if (temp_t0 & 1) {
            var_f4 = (f64) *(((temp_a2 & 0) * 4) + arg3);
            var_a6 += 4;
            var_a4 = 1;
            if (var_f4 < (second half of f64)) {
                var_f4 = second half of f64;
            } else if (var_f4 > 1.0) {
                var_f4 = 1.0;
            }
            var_a5_2 += 4;
            var_a5_2->unk-4 = (s16) (s32) (second half of f64);
            var_a6->unk-4 = (s8) (s32) (var_f4 * 255.0);
        }
        var_at = temp_a2 & var_a4;
        if ((temp_t0 >> 1) != 0) {
loop_16:
            var_f4_2 = (f64) *((var_at * 4) + arg3);
            temp_a4 = var_a4 + 1;
            if (var_f4_2 < (second half of f64)) {
                var_f4_2 = second half of f64;
            } else if (var_f4_2 > 1.0) {
                var_f4_2 = 1.0;
            }
            *var_a5_2 = (s16) (s32) (second half of f64);
            *var_a6 = (s8) (s32) (var_f4_2 * 255.0);
            var_f4_3 = (f64) *(((temp_a2 & temp_a4) * 4) + arg3);
            var_a5_2 += 8;
            var_a6 += 8;
            if (var_f4_3 < (second half of f64)) {
                var_f4_3 = second half of f64;
            } else if (var_f4_3 > 1.0) {
                var_f4_3 = 1.0;
            }
            var_a4 = temp_a4 + 1;
            var_a5_2->unk-4 = (s16) (s32) (second half of f64);
            var_a6->unk-4 = (s8) (s32) (var_f4_3 * 255.0);
            if (temp_t0 != var_a4) {
                var_at = temp_a2 & var_a4;
                goto loop_16;
            }
        }
    }
}

void FillCILUTInt(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s16 *var_a4_2;
    s16 *var_a4_3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    u32 temp_a0;
    u32 temp_at;
    u32 temp_v0;
    void *var_a1;
    void *var_t0;

    temp_a6 = arg0->unk0;
    temp_a5 = arg0->unk8;
    var_t0 = arg0->unk4 + arg2;
    if (arg2 < 2) {
        var_a4 = temp_a5;
    } else {
        var_a4 = (temp_a6 * 4) + temp_a5;
    }
    var_a7 = 0;
    var_a4_2 = ((arg2 & 1) * 2) + var_a4;
    if (temp_a6 != 0) {
        temp_a6_2 = arg1 - 1;
        if (temp_a6 & 1) {
            var_a7 = 1;
            temp_v0 = *(((temp_a6_2 & 0) * 4) + arg3);
            var_t0 += 4;
            var_a4_2 += 4;
            var_a4_2->unk-4 = (s16) (temp_v0 >> 0x10);
            var_t0->unk-4 = (s8) (temp_v0 >> 0x18);
        }
        var_a4_3 = var_a4_2;
        if ((temp_a6 >> 1) != 0) {
            var_a1 = var_t0;
            var_a2 = var_a7;
            do {
                var_a1 += 8;
                temp_v0_2 = var_a2 + 1;
                temp_a0 = *(((temp_a6_2 & var_a2) * 4) + arg3);
                *var_a4_3 = (s16) (temp_a0 >> 0x10);
                var_a1->unk-8 = (s8) (temp_a0 >> 0x18);
                temp_at = *(((temp_a6_2 & temp_v0_2) * 4) + arg3);
                var_a4_3 += 8;
                var_a2 = temp_v0_2 + 1;
                var_a4_3->unk-4 = (s16) (temp_at >> 0x10);
                var_a1->unk-4 = (s8) (temp_at >> 0x18);
            } while (temp_a6 != var_a2);
        }
    }
}

void FillCILUTShort(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    u16 *var_a4_2;
    u16 *var_a4_3;
    u16 temp_a0;
    u16 temp_at;
    u16 temp_v0;
    void *var_a1;
    void *var_t0;

    temp_a6 = arg0->unk0;
    temp_a5 = arg0->unk8;
    var_t0 = arg0->unk4 + arg2;
    if (arg2 < 2) {
        var_a4 = temp_a5;
    } else {
        var_a4 = (temp_a6 * 4) + temp_a5;
    }
    var_a7 = 0;
    var_a4_2 = ((arg2 & 1) * 2) + var_a4;
    if (temp_a6 != 0) {
        temp_a6_2 = arg1 - 1;
        if (temp_a6 & 1) {
            var_a7 = 1;
            temp_v0 = *(((temp_a6_2 & 0) * 2) + arg3);
            var_t0 += 4;
            var_a4_2 += 4;
            var_a4_2->unk-4 = temp_v0;
            var_t0->unk-4 = (s8) ((s32) temp_v0 >> 8);
        }
        var_a4_3 = var_a4_2;
        if ((temp_a6 >> 1) != 0) {
            var_a1 = var_t0;
            var_a2 = var_a7;
            do {
                var_a1 += 8;
                temp_v0_2 = var_a2 + 1;
                temp_a0 = *(((temp_a6_2 & var_a2) * 2) + arg3);
                *var_a4_3 = temp_a0;
                var_a1->unk-8 = (s8) ((s32) temp_a0 >> 8);
                temp_at = *(((temp_a6_2 & temp_v0_2) * 2) + arg3);
                var_a4_3 += 8;
                var_a2 = temp_v0_2 + 1;
                var_a4_3->unk-4 = temp_at;
                var_a1->unk-4 = (s8) ((s32) temp_at >> 8);
            } while (temp_a6 != var_a2);
        }
    }
}

void FillIndexLUTFloat(void *arg0, s32 arg1, s32 arg2) {
    f32 temp_f4;
    f32 temp_f4_3;
    f32 temp_f4_5;
    f32 var_f5;
    f64 temp_f4_2;
    f64 temp_f4_4;
    f64 temp_f4_6;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a7;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a4;
    s8 *var_a5;
    void *var_a6;

    var_a6 = arg0->unk8;
    var_a5 = arg0->unk4;
    temp_a7 = arg0->unk0;
    var_a4 = 0;
    if (temp_a7 != 0) {
        var_f5 = 0.0f;
        temp_a3 = arg1 - 1;
        if (temp_a7 & 1) {
            temp_f4 = *(((temp_a3 & 0) * 4) + arg2);
            var_a4 = 1;
            var_a5 += 4;
            var_a6 += 4;
            temp_f4_2 = (f64) temp_f4;
            var_f5 = second half of f64;
            if (temp_f4 > 0.0f) {
                var_a1 = (s32) (temp_f4_2 + (second half of f64));
            } else {
                var_a1 = (s32) (temp_f4_2 + -0.5);
            }
            var_a6->unk-2 = (s16) var_a1;
            var_a6->unk-4 = (s16) var_a1;
            var_a5->unk-4 = (s8) var_a1;
        }
        var_a0 = temp_a3 & var_a4;
        if ((temp_a7 >> 1) != 0) {
loop_11:
            temp_f4_3 = *((var_a0 * 4) + arg2);
            temp_a4 = var_a4 + 1;
            temp_f4_4 = (f64) temp_f4_3;
            if (var_f5 < temp_f4_3) {
                var_a1_2 = (s32) (temp_f4_4 + (second half of f64));
            } else {
                var_a1_2 = (s32) (temp_f4_4 + -0.5);
            }
            var_a6->unk0 = (s16) var_a1_2;
            var_a6->unk2 = (s16) var_a1_2;
            *var_a5 = (s8) var_a1_2;
            temp_f4_5 = *(((temp_a3 & temp_a4) * 4) + arg2);
            var_a4 = temp_a4 + 1;
            var_a5 += 8;
            var_a6 += 8;
            temp_f4_6 = (f64) temp_f4_5;
            var_f5 = second half of f64;
            if ((second half of f64) < temp_f4_5) {
                var_a1_3 = (s32) (temp_f4_6 + (second half of f64));
            } else {
                var_a1_3 = (s32) (temp_f4_6 + -0.5);
            }
            var_a6->unk-2 = (s16) var_a1_3;
            var_a6->unk-4 = (s16) var_a1_3;
            var_a5->unk-4 = (s8) var_a1_3;
            if (temp_a7 != var_a4) {
                var_a0 = temp_a3 & var_a4;
                goto loop_11;
            }
        }
    }
}

void FillIndexLUTInt(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a4_2;
    void *var_a1;
    void *var_a3;
    void *var_a7;
    void *var_t0;

    var_a7 = arg0->unk8;
    var_t0 = arg0->unk4;
    temp_a5 = arg0->unk0;
    temp_a6 = arg1 - 1;
    var_a4 = 0;
    if (temp_a5 != 0) {
        if (temp_a5 & 1) {
            var_a4 = 1;
            temp_v0 = *(((temp_a6 & 0) * 4) + arg2);
            var_t0 += 4;
            var_a7 += 4;
            var_a7->unk-2 = (s16) temp_v0;
            var_a7->unk-4 = (s16) temp_v0;
            var_t0->unk-4 = (s8) temp_v0;
        }
        var_a1 = var_a7;
        if ((temp_a5 >> 1) != 0) {
            var_a3 = var_t0;
            var_a4_2 = var_a4;
            do {
                var_a3 += 8;
                temp_at = var_a4_2 + 1;
                temp_a4 = *(((temp_a6 & var_a4_2) * 4) + arg2);
                var_a1->unk0 = (s16) temp_a4;
                var_a1->unk2 = (s16) temp_a4;
                var_a3->unk-8 = (s8) temp_a4;
                temp_a0 = *(((temp_a6 & temp_at) * 4) + arg2);
                var_a1 += 8;
                var_a4_2 = temp_at + 1;
                var_a1->unk-4 = (s16) temp_a0;
                var_a1->unk-2 = (s16) temp_a0;
                var_a3->unk-4 = (s8) temp_a0;
            } while (temp_a5 != var_a4_2);
        }
    }
}

void FillIndexLUTShort(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_at;
    s32 var_a4;
    s32 var_a4_2;
    u16 temp_a0;
    u16 temp_a4;
    u16 temp_v0;
    void *var_a1;
    void *var_a3;
    void *var_a7;
    void *var_t0;

    var_a7 = arg0->unk8;
    var_t0 = arg0->unk4;
    temp_a5 = arg0->unk0;
    temp_a6 = arg1 - 1;
    var_a4 = 0;
    if (temp_a5 != 0) {
        if (temp_a5 & 1) {
            var_a4 = 1;
            temp_v0 = *(((temp_a6 & 0) * 2) + arg2);
            var_t0 += 4;
            var_a7 += 4;
            var_a7->unk-2 = temp_v0;
            var_a7->unk-4 = temp_v0;
            var_t0->unk-4 = (s8) temp_v0;
        }
        var_a1 = var_a7;
        if ((temp_a5 >> 1) != 0) {
            var_a3 = var_t0;
            var_a4_2 = var_a4;
            do {
                var_a3 += 8;
                temp_at = var_a4_2 + 1;
                temp_a4 = *(((temp_a6 & var_a4_2) * 2) + arg2);
                var_a1->unk0 = temp_a4;
                var_a1->unk2 = temp_a4;
                var_a3->unk-8 = (s8) temp_a4;
                temp_a0 = *(((temp_a6 & temp_at) * 2) + arg2);
                var_a1 += 8;
                var_a4_2 = temp_at + 1;
                var_a1->unk-4 = temp_a0;
                var_a1->unk-2 = temp_a0;
                var_a3->unk-4 = (s8) temp_a0;
            } while (temp_a5 != var_a4_2);
        }
    }
}

void __glMgrim_PixelMapfv(enum GLenum map, s32 mapsize, f32 *values) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s2;
    u32 *var_a0;
    u32 temp_a0;
    void *temp_a0_2;
    void *temp_a1;

    temp_s2 = __glCurrentContext;
    if (__glBeginMode != 1) {
        sp10 = 0;
        __glim_PixelMapfv(map, mapsize, values);
        if (mapsize < 0x1001) {
            temp_a0 = map - 0xC70;
            if (temp_a0 < 0xAU) {
                var_a0 = temp_s2 + 0x7FC4;
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x2BA8))) { /* unable to parse jump table */
                case 0:
                    sp10 = 1;
                    /* fallthrough */
                case 1:
                    temp_a1 = temp_s2->stencilBuffer.buf.other;
                    if (sp10 != 0) {
                        temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_a1 | 8);
                        temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 2) & ~1);
                    } else {
                        var_a0 = temp_s2 + 0x7FDC;
                        temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_a1 | 4);
                        temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 0x20) & ~0x10);
                    }
                    *(0xFFFF6E78 + (s32) ((map * 0xC) + temp_s2)) = mapsize;
                    if ((u32) *var_a0 < (u32) mapsize) {
                        sp8 = (s64) var_a0;
                        __glMgrim_PixelTransferi((enum GLenum) temp_s2, (s32) sp8);
                    }
                    __glMgrim_PixelTransferi((enum GLenum) var_a0, mapsize);
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_s2->stencilBuffer.buf.other | 0x10);
                    temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 8) & ~4);
                    *(0xFFFF6E78 + (s32) ((map * 0xC) + temp_s2)) = mapsize;
                    temp_a0_2 = temp_s2 + 0x7FD0;
                    if ((u32) temp_s2->unk7FD0 < (u32) mapsize) {
                        sp0 = (s64) temp_a0_2;
                        __glMgrim_PixelTransferi((enum GLenum) temp_s2, (s32) sp0);
                    }
                    __glMgrim_PixelTransferi((enum GLenum) temp_a0_2, mapsize);
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                    temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_s2->stencilBuffer.buf.other | 0x20);
                    break;
                }
                return;
            }
            __glSetError((__GLcontext *)0x500);
            return;
        }
        __glSetError((__GLcontext *)0x501);
        return;
    }
    __glSetError((__GLcontext *)0x502);
}

void __glMgrim_PixelMapuiv(enum GLenum map, s32 mapsize, u32 *values) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s2;
    u32 *var_a0;
    u32 temp_a0;
    void *temp_a0_2;
    void *temp_a1;

    temp_s2 = __glCurrentContext;
    if (__glBeginMode != 1) {
        sp10 = 0;
        __glim_PixelMapuiv(map, mapsize, values);
        if (mapsize < 0x1001) {
            temp_a0 = map - 0xC70;
            if (temp_a0 < 0xAU) {
                var_a0 = temp_s2 + 0x7FC4;
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x2B80))) { /* unable to parse jump table */
                case 0:
                    sp10 = 1;
                    /* fallthrough */
                case 1:
                    temp_a1 = temp_s2->stencilBuffer.buf.other;
                    if (sp10 != 0) {
                        temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_a1 | 8);
                        temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 2) & ~1);
                    } else {
                        var_a0 = temp_s2 + 0x7FDC;
                        temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_a1 | 4);
                        temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 0x20) & ~0x10);
                    }
                    *(0xFFFF6E78 + (s32) ((map * 0xC) + temp_s2)) = mapsize;
                    if ((u32) *var_a0 < (u32) mapsize) {
                        sp8 = (s64) var_a0;
                        __glMgrim_PixelTransferi((enum GLenum) temp_s2, (s32) sp8);
                    }
                    __glMgrim_PixelTransferi((enum GLenum) var_a0, mapsize);
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_s2->stencilBuffer.buf.other | 0x10);
                    temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 8) & ~4);
                    *(0xFFFF6E78 + (s32) ((map * 0xC) + temp_s2)) = mapsize;
                    temp_a0_2 = temp_s2 + 0x7FD0;
                    if ((u32) temp_s2->unk7FD0 < (u32) mapsize) {
                        sp0 = (s64) temp_a0_2;
                        __glMgrim_PixelTransferi((enum GLenum) temp_s2, (s32) sp0);
                    }
                    __glMgrim_PixelTransferi((enum GLenum) temp_a0_2, mapsize);
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                    temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_s2->stencilBuffer.buf.other | 0x20);
                    break;
                }
                return;
            }
            __glSetError((__GLcontext *)0x500);
            return;
        }
        __glSetError((__GLcontext *)0x501);
        return;
    }
    __glSetError((__GLcontext *)0x502);
}

void __glMgrim_PixelMapusv(enum GLenum map, s32 mapsize, u16 *values) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s2;
    u32 *var_a0;
    u32 temp_a0;
    void *temp_a0_2;
    void *temp_a1;

    temp_s2 = __glCurrentContext;
    if (__glBeginMode != 1) {
        sp10 = 0;
        __glim_PixelMapusv(map, mapsize, values);
        if (mapsize < 0x1001) {
            temp_a0 = map - 0xC70;
            if (temp_a0 < 0xAU) {
                var_a0 = temp_s2 + 0x7FC4;
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x2B58))) { /* unable to parse jump table */
                case 0:
                    sp10 = 1;
                    /* fallthrough */
                case 1:
                    temp_a1 = temp_s2->stencilBuffer.buf.other;
                    if (sp10 != 0) {
                        temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_a1 | 8);
                        temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 2) & ~1);
                    } else {
                        var_a0 = temp_s2 + 0x7FDC;
                        temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_a1 | 4);
                        temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 0x20) & ~0x10);
                    }
                    *(0xFFFF6E78 + (s32) ((map * 0xC) + temp_s2)) = mapsize;
                    if ((u32) *var_a0 < (u32) mapsize) {
                        sp8 = (s64) var_a0;
                        __glMgrim_PixelTransferi((enum GLenum) temp_s2, (s32) sp8);
                    }
                    __glMgrim_PixelTransferi((enum GLenum) var_a0, mapsize);
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_s2->stencilBuffer.buf.other | 0x10);
                    temp_s2->unk7FC0 = (s32) ((temp_s2->unk7FC0 | 8) & ~4);
                    *(0xFFFF6E78 + (s32) ((map * 0xC) + temp_s2)) = mapsize;
                    temp_a0_2 = temp_s2 + 0x7FD0;
                    if ((u32) temp_s2->unk7FD0 < (u32) mapsize) {
                        sp0 = (s64) temp_a0_2;
                        __glMgrim_PixelTransferi((enum GLenum) temp_s2, (s32) sp0);
                    }
                    __glMgrim_PixelTransferi((enum GLenum) temp_a0_2, mapsize);
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                    temp_s2->stencilBuffer.buf.other = (void *) ((s32) temp_s2->stencilBuffer.buf.other | 0x20);
                    break;
                }
                return;
            }
            __glSetError((__GLcontext *)0x500);
            return;
        }
        __glSetError((__GLcontext *)0x501);
        return;
    }
    __glSetError((__GLcontext *)0x502);
}

void __glMgrim_PixelZoom(f32 xfactor, f32 yfactor) {
    f32 sp18;
    f32 sp10;
    __GLcontext *var_a3_2;
    f32 temp_f7;
    f32 var_f12;
    f32 var_f13;
    f32 var_f5;
    f32 var_f6;
    f32 var_f6_2;
    f64 temp_f6;
    f64 temp_f6_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_f13_2;
    void (*temp_a2)();
    void *temp_gp;

    var_f12 = xfactor;
    var_f13 = yfactor;
    sp10 = var_f12;
    sp18 = var_f13;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x173A50;
    if (__glBeginMode != 1) {
        if (((bitwise s32) sp10 & 0x7F000000) != 0x7F000000) {
            if (((bitwise s32) sp18 & 0x7F000000) == 0x7F000000) {
                return;
            }
            var_a3 = 1;
            temp_f6 = (f64) var_f13;
            if (!(GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U) <= (f64) var_f12)) {
                var_a3 = 0;
            }
            var_a2 = 1;
            if (!(GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U) <= temp_f6)) {
                var_a2 = 0;
            }
            if (__glCurrentContext->frontBuffer.greenMax != 0) {
                if (var_a3 != 0) {
                    if ((second half of f64) >= 6.0) {
                        var_f13 = second half of f64;
                        var_f12 = (f32) (s32) ((second half of f64) + 0.5);
                        if (var_a2 == 0) {
                            goto block_13;
                        }
                        goto block_18;
                    }
                    goto block_17;
                }
                if ((second half of f64) <= -6.0) {
                    var_f13 = second half of f64;
                    var_f12 = (f32) (s32) ((second half of f64) + -0.5);
                }
block_17:
                if (var_a2 != 0) {
block_18:
                    if (temp_f6 >= 6.0) {
                        var_f12 = second half of f64;
                        var_f13_2 = (s32) (temp_f6 + 0.5);
                        goto block_20;
                    }
                } else {
block_13:
                    if (temp_f6 <= -6.0) {
                        var_f12 = second half of f64;
                        var_f13_2 = (s32) (temp_f6 + -0.5);
block_20:
                        var_f13 = (f32) var_f13_2;
                    }
                }
            } else {
                if (var_a3 != 0) {
                    if ((second half of f64) >= 1.0) {
                        var_f13 = second half of f64;
                        var_f12 = (f32) (s32) ((second half of f64) + 0.5);
                        if (var_a2 == 0) {
                            goto block_41;
                        }
                        goto block_46;
                    }
                    goto block_45;
                }
                if ((second half of f64) <= -1.0) {
                    var_f13 = second half of f64;
                    var_f12 = (f32) (s32) ((second half of f64) + -0.5);
                }
block_45:
                if (var_a2 != 0) {
block_46:
                    if (temp_f6 >= 1.0) {
                        var_f12 = second half of f64;
                        var_f13 = (f32) (s32) (temp_f6 + 0.5);
                    }
                } else {
block_41:
                    if (temp_f6 <= -1.0) {
                        var_f12 = second half of f64;
                        var_f13 = (f32) (s32) (temp_f6 + -0.5);
                    }
                }
            }
            if (var_f12 < 0.0f) {
                var_f5 = -var_f12;
            } else {
                var_f5 = var_f12;
            }
            temp_f6_2 = (f64) var_f5;
            temp_a2 = __glCurrentContext->stencilBuffer.buf.resize;
            if (temp_f6_2 == 1.0) {
                __glCurrentContext->stencilBuffer.buf.gc = (__GLcontext *)1;
                __glCurrentContext->stencilBuffer.buf.drawableBuf = (void *)0x100;
                var_a2_2 = ((s32) temp_a2 & ~0x20000000) | 0x10001000;
                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a2_2;
            } else if (!(temp_f6_2 < 1.0)) {
                if ((f32) (s32) var_f12 == var_f12) {
                    __glCurrentContext->stencilBuffer.buf.gc = (__GLcontext *)1;
                    var_a2_2 = ((s32) temp_a2 & temp_gp->unk-3A18) | 0x10000000;
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a2_2;
                    __glCurrentContext->stencilBuffer.buf.drawableBuf = (void *) (s32) (var_f5 * 256.0f);
                } else {
                    var_a2_2 = ((s32) temp_a2 & temp_gp->unk-3A10) | 0x20000000;
                    __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a2_2;
                    if (temp_f6_2 > 6.0) {
                        var_a3_2 = (__GLcontext *)0xC;
                    } else if (temp_f6_2 > 4.0) {
                        var_a3_2 = (__GLcontext *)6;
                    } else if (temp_f6_2 > 3.0) {
                        var_a3_2 = (__GLcontext *)4;
                    } else {
                        var_a3_2 = (__GLcontext *)3;
                        if (temp_f6_2 > 2.0) {

                        } else {
                            var_a3_2 = (__GLcontext *)2;
                        }
                    }
                    __glCurrentContext->stencilBuffer.buf.gc = var_a3_2;
                    temp_f7 = var_f12 / (f32) var_a3_2;
                    var_f6 = temp_f7;
                    if (temp_f7 < 0.0f) {
                        var_f6 = -temp_f7;
                    }
                    __glCurrentContext->stencilBuffer.buf.drawableBuf = (void *) (s32) ((1.0f / var_f6) * 256.0f);
                }
            } else {
                __glCurrentContext->stencilBuffer.buf.gc = (__GLcontext *)1;
                var_a2_2 = ((s32) temp_a2 & ~0x1000) | 0x30000000;
                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) var_a2_2;
                __glCurrentContext->stencilBuffer.buf.drawableBuf = (void *) (s32) ((1.0f / var_f5) * 256.0f);
            }
            if (var_f13 < 0.0f) {
                var_f6_2 = -var_f13;
            } else {
                var_f6_2 = var_f13;
            }
            if ((f64) var_f6_2 == 1.0) {
                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) (var_a2_2 | 0x800);
            } else {
                __glCurrentContext->stencilBuffer.buf.resize = (void (*)()) (var_a2_2 & ~0x800);
            }
            __glCurrentContext->unk2D4 = var_f13;
            __glCurrentContext->unk2D0 = var_f12;
            __glCurrentContext->stencilBuffer.buf.other = (void *) ((s32) __glCurrentContext->stencilBuffer.buf.other | 0x40000);
            return;
        }
        return;
    }
    __glSetError((__GLcontext *)0x502, (s32) __glCurrentContext);
}

void __glMgrim_PixelStorei(enum GLenum pname, s32 param) {
    ? var_a4;
    s32 temp_a2;
    s32 var_a2;

    if (__glBeginMode != 1) {
        var_a4 = 0x806C;
        var_a2 = pname > GL_PACK_IMAGE_HEIGHT_EXT;
        if (pname >= GL_PACK_IMAGE_HEIGHT_EXT) {
            if (var_a2 == 0) {
                if (param >= 0) {
                    __glCurrentContext->unk448 = param;
                } else {
                    __glSetError((__GLcontext *)0x501, var_a2, __glCurrentContext, 0x8140, 1);
                }
            } else if (pname >= 0x8140U) {
                if (pname > 0x8140U) {
                    temp_a2 = pname > 0x8143U;
                    if (pname >= 0x8143U) {
                        var_a4 = 0x8145;
                        if (temp_a2 == 0) {
                            if (param >= 0) {
                                __glCurrentContext->unk8578 = param;
                            } else {
                                __glSetError((__GLcontext *)0x501, temp_a2, __glCurrentContext, 0x8145, 1);
                            }
                        } else {
                            var_a2 = pname > 0x8145U;
                            if (pname >= 0x8145U) {
                                if (var_a2 == 0) {
                                    if (param >= 0) {
                                        __glCurrentContext->unk8580 = param;
                                    } else {
                                        __glSetError((__GLcontext *)0x501, var_a2, __glCurrentContext, 0x8145, 1);
                                    }
                                } else {
                                    /* Duplicate return node #54. Try simplifying control flow for better match */
                                    __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                                }
                            } else if (pname == 0x8144) {
                                if (param >= 0) {
                                    __glCurrentContext->unk857C = param;
                                } else {
                                    __glSetError((__GLcontext *)0x501, var_a2, __glCurrentContext, 0x8145, 1);
                                }
                            } else {
                                /* Duplicate return node #54. Try simplifying control flow for better match */
                                __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                            }
                        }
                    } else {
                        var_a4 = 0x8142;
                        var_a2 = pname > 0x8142U;
                        if (pname >= 0x8142U) {
                            if (var_a2 == 0) {
                                if (param >= 0) {
                                    __glCurrentContext->unk8574 = param;
                                } else {
                                    __glSetError((__GLcontext *)0x501, var_a2, __glCurrentContext, 0x8142, 1);
                                }
                            } else {
                                /* Duplicate return node #54. Try simplifying control flow for better match */
                                __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                            }
                        } else if (pname == 0x8141) {
                            if (param >= 0) {
                                __glCurrentContext->unk8570 = param;
                            } else {
                                __glSetError((__GLcontext *)0x501, var_a2, __glCurrentContext, 0x8142, 1);
                            }
                        } else {
                            /* Duplicate return node #54. Try simplifying control flow for better match */
                            __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                        }
                    }
                } else if (param >= 0) {
                    __glCurrentContext->unk856C = param;
                } else {
                    __glSetError((__GLcontext *)0x501, 0x856C, __glCurrentContext, 0x8143, 1);
                }
            } else if (pname >= 0x8131U) {
                var_a4 = 0x8133;
                if (pname <= 0x8131U) {
                    if (param >= 0) {
                        __glCurrentContext->unk450 = param;
                    } else {
                        M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x8133, 1);
                    }
                } else if (pname >= 0x8133U) {
                    if (pname <= 0x8133U) {
                        if (param >= 0) {
                            __glCurrentContext->unk474 = param;
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x8133, 1);
                        }
                    } else {
                        /* Duplicate return node #54. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                    }
                } else {
                    var_a2 = 0x8132;
                    if (pname == 0x8132) {
                        if (param >= 0) {
                            __glCurrentContext->unk470 = param;
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0x8132, __glCurrentContext, 0x8133, 1);
                        }
                    } else {
                        /* Duplicate return node #54. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                    }
                }
            } else {
                var_a4 = 0x806E;
                if (pname >= GL_UNPACK_IMAGE_HEIGHT_EXT) {
                    if (pname > GL_UNPACK_IMAGE_HEIGHT_EXT) {
                        if (pname == 0x8130) {
                            if (param >= 0) {
                                __glCurrentContext->unk44C = param;
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806E, 1);
                            }
                        } else {
                            /* Duplicate return node #54. Try simplifying control flow for better match */
                            __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                        }
                    } else if (param >= 0) {
                        __glCurrentContext->unk46C = param;
                    } else {
                        M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806E, 1);
                    }
                } else {
                    var_a2 = 0x806D;
                    if (pname == GL_UNPACK_SKIP_IMAGES_EXT) {
                        if (param >= 0) {
                            __glCurrentContext->unk468 = param;
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0x806D, __glCurrentContext, 0x806E, 1);
                        }
                    } else {
                        /* Duplicate return node #54. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                    }
                }
            }
        } else if (pname >= GL_PACK_SWAP_BYTES) {
            if (pname >= GL_PACK_LSB_FIRST) {
                var_a2 = pname < GL_PACK_ALIGNMENT;
                if (pname >= GL_PACK_SKIP_PIXELS) {
                    var_a4 = 0x806B;
                    if (var_a2 == 0) {
                        if (pname >= GL_PACK_SKIP_IMAGES_EXT) {
                            if (pname <= GL_PACK_SKIP_IMAGES_EXT) {
                                if (param >= 0) {
                                    __glCurrentContext->unk444 = param;
                                } else {
                                    M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806B, 1);
                                }
                            } else {
                                /* Duplicate return node #54. Try simplifying control flow for better match */
                                __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                            }
                        } else {
                            var_a2 = 0xD05;
                            if (pname == GL_PACK_ALIGNMENT) {
                                if ((param == 1) || (param == 2) || (param == 4) || (param == 8)) {
                                    __glCurrentContext->unk440 = param;
                                } else {
                                    __glSetError((__GLcontext *)0x501, 0xD05, __glCurrentContext, 0x806B, 1);
                                }
                            } else {
                                /* Duplicate return node #54. Try simplifying control flow for better match */
                                __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                            }
                        }
                    } else if (param >= 0) {
                        __glCurrentContext->unk43C = param;
                    } else {
                        M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806B, 1);
                    }
                } else {
                    var_a2 = pname < GL_PACK_ROW_LENGTH;
                    if (var_a2 == 0) {
                        if (pname < GL_PACK_SKIP_ROWS) {
                            if (param >= 0) {
                                __glCurrentContext->unk434 = param;
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806C, 1);
                            }
                        } else if (pname == GL_PACK_SKIP_ROWS) {
                            if (param >= 0) {
                                __glCurrentContext->unk438 = param;
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806C, 1);
                            }
                        } else {
                            /* Duplicate return node #54. Try simplifying control flow for better match */
                            __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                        }
                    } else if (pname == GL_PACK_LSB_FIRST) {
                        __glCurrentContext->unk431 = (s8) (param != 0);
                    } else {
                        /* Duplicate return node #54. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                    }
                }
            } else {
                __glCurrentContext->unk430 = (s8) (param != 0);
            }
        } else {
            var_a2 = pname < GL_UNPACK_SKIP_PIXELS;
            if (pname >= GL_UNPACK_SKIP_ROWS) {
                var_a2 = pname < GL_UNPACK_ALIGNMENT;
                if (var_a2 != 0) {
                    if (param >= 0) {
                        __glCurrentContext->unk45C = param;
                    } else {
                        M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806C, 1);
                    }
                } else if (var_a2 == 0) {
                    if (pname < 0xCF6U) {
                        if ((param == 1) || (param == 2) || (param == 4) || (param == 8)) {
                            __glCurrentContext->unk464 = param;
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 8, __glCurrentContext, 0x806C, 1);
                        }
                    } else {
                        /* Duplicate return node #54. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                    }
                } else if (pname == GL_UNPACK_SKIP_PIXELS) {
                    if (param >= 0) {
                        __glCurrentContext->unk460 = param;
                    } else {
                        M2C_ERROR(/* Read from unset register $t9 */)(0x501, var_a2, __glCurrentContext, 0x806C, 1);
                    }
                } else {
                    /* Duplicate return node #54. Try simplifying control flow for better match */
                    __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                }
            } else if (pname >= GL_UNPACK_LSB_FIRST) {
                var_a2 = 0xCF2;
                if (pname >= GL_UNPACK_ROW_LENGTH) {
                    if (pname == GL_UNPACK_ROW_LENGTH) {
                        if (param >= 0) {
                            __glCurrentContext->unk458 = param;
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0xCF2, __glCurrentContext, 0x806C, 1);
                        }
                    } else {
                        /* Duplicate return node #54. Try simplifying control flow for better match */
                        __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
                    }
                } else {
                    __glCurrentContext->unk455 = param != 0;
                }
            } else {
                if (pname == GL_UNPACK_SWAP_BYTES) {
                    __glCurrentContext->unk454 = param != 0;
                    return;
                }
                __glSetError((__GLcontext *)0x500, var_a2, __glCurrentContext, var_a4, 1);
            }
        }
    } else {
        __glSetError((__GLcontext *)0x502);
    }
}

void __glMgrim_PixelStoref(enum GLenum pname, f32 param) {
    if (pname >= GL_PACK_SKIP_IMAGES_EXT) {
        switch (pname) {                            /* switch 1; irregular */
        case GL_PACK_IMAGE_HEIGHT_EXT:              /* switch 1 */
            goto block_18;
        case 0x8131:                                /* switch 1 */
            goto block_18;
        case 0x8141:                                /* switch 1 */
            goto block_18;
        case 0x8144:                                /* switch 1 */
            goto block_18;
        }
    } else if (pname >= GL_PACK_SWAP_BYTES) {
        switch (pname) {                            /* switch 2; irregular */
        case GL_PACK_LSB_FIRST:                     /* switch 2 */
            goto block_21;
        case GL_PACK_SKIP_PIXELS:                   /* switch 2 */
            goto block_18;
        }
    } else {
        if (pname >= GL_UNPACK_SKIP_ROWS) {
            if (pname < GL_UNPACK_SKIP_PIXELS) {
                goto block_18;
            }
            if (pname >= GL_UNPACK_ALIGNMENT) {
                if (pname < 0xCF6U) {
                    goto block_18;
                }
                goto block_23;
            }
            if (pname == GL_UNPACK_SKIP_PIXELS) {
                goto block_18;
            }
            goto block_23;
        }
        if (pname >= GL_UNPACK_LSB_FIRST) {
            if (pname >= GL_UNPACK_ROW_LENGTH) {
                if (pname == GL_UNPACK_ROW_LENGTH) {
block_18:
                    if (param < 0.0f) {
                        __glMgrim_PixelStorei(pname, (s32) (param + -0.5f));
                    } else {
                        __glMgrim_PixelStorei(pname, (s32) (param + 0.5f));
                    }
                } else {
                    goto block_23;
                }
            } else {
                goto block_21;
            }
        } else {
            if (pname == GL_UNPACK_SWAP_BYTES) {
block_21:
                if (param == 0.0f) {
                    __glMgrim_PixelStorei(pname, 0);
                } else {
                    __glMgrim_PixelStorei(pname, 1);
                }
            }
block_23:
            __glMgrim_PixelStorei(pname, (s32) param);
        }
    }
}

void __glMgrFastReadPixels(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, ...) {
    ? sp20;

    __glMgrMakePixelDesc((__GLcontext *) &sp20, &sp20, 2, arg1, arg2, 0, 0, arg3, arg4, arg5, arg5, arg6, arg7);
}

void __glMgrPickDrawPixels(__GLcontext *gc, ...) {
    void (*var_t0)(__GLcontext *, ...);

    var_t0 = __glSlowPickDrawPixels;
    if (gc->unk7770 == 0) {
        var_t0 = __glMgrFastDrawPixels;
    }
    var_t0(gc);
}

void __glMgrPickReadPixels(__GLcontext *gc, ...) {
    void (*var_t1)(__GLcontext *, ...);

    var_t1 = __glSlowPickReadPixels;
    if (gc->unk7770 == 0) {
        var_t1 = __glMgrFastReadPixels;
    }
    var_t1(gc);
}

void __glMgrLoadPolygonStippleRAM(__GLcontext *gc, ...) {
    __GLcontext **temp_a3;
    __GLcontext *var_a0;
    s32 temp_at;

    var_a0 = gc;
    var_a0 = gc;
    temp_a3 = &var_a0->exports.unk34;
    *(s32 *)0x74080 = 0x4E80;
    do {
        *(s32 *)0x74080 = var_a0->unk1E8;
        *(s32 *)0x74080 = var_a0->unk1EC;
        *(s32 *)0x74080 = var_a0->unk1F0;
        temp_at = var_a0->unk1F4;
        var_a0 += 0x10;
        *(s32 *)0x74080 = temp_at;
    } while (var_a0 != temp_a3);
}

void __glMgrConvertStipple(__GLcontext *gc, ...) {
    __glConvertStipple();
    __glMgrLoadPolygonStippleRAM(gc, gc);
}
