Error occurred while processing instruction: c.eq.d $f2, $f5

Error occurred while processing instruction: c.eq.d $f3, $f5

Error occurred while processing instruction: c.eq.d $f2, $f5

Error occurred while processing instruction: c.eq.d $f3, $f5

Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
typedef struct __GLaccumBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ s32 unk1C;                           /* inferred */
    /* 0x20 */ s32 unk20;                           /* inferred */
    /* 0x24 */ s32 unk24;                           /* inferred */
    /* 0x28 */ f32 unk28;                           /* inferred */
    /* 0x2C */ f32 unk2C;                           /* inferred */
    /* 0x30 */ f32 unk30;                           /* inferred */
    /* 0x34 */ f32 unk34;                           /* inferred */
    /* 0x38 */ f32 unk38;                           /* inferred */
    /* 0x3C */ f32 unk3C;                           /* inferred */
    /* 0x40 */ f32 unk40;                           /* inferred */
    /* 0x44 */ f32 unk44;                           /* inferred */
    /* 0x48 */ ? unk48;                             /* inferred */
    /* 0x48 */ char pad48[4];
    /* 0x4C */ f32 unk4C;                           /* inferred */
    /* 0x50 */ f32 unk50;                           /* inferred */
    /* 0x54 */ f32 unk54;                           /* inferred */
    /* 0x58 */ s32 unk58;                           /* inferred */
    /* 0x5C */ s32 unk5C;                           /* inferred */
    /* 0x60 */ s32 unk60;                           /* inferred */
    /* 0x64 */ void (*unk64)(__GLcontext *);        /* inferred */
    /* 0x68 */ void (*unk68)(__GLcontext *);        /* inferred */
    /* 0x6C */ void (*clear)(__GLaccumBuffer *);
} __GLaccumBuffer;                                  /* size = 0x70 */

typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x34];                  /* maybe part of gcState[0xE]? */
    /* 0x00CC */ __GLcontext *unkCC;                /* inferred */
    /* 0x00D0 */ __GLcontext *unkD0;                /* inferred */
    /* 0x00D4 */ __GLcontext *unkD4;                /* inferred */
    /* 0x00D8 */ __GLcontext *unkD8;                /* inferred */
    /* 0x00DC */ __GLcontext *unkDC;                /* inferred */
    /* 0x00E0 */ char padE0[0x18];                  /* maybe part of unkDC[7]? */
    /* 0x00F8 */ s32 unkF8;                         /* inferred */
    /* 0x00FC */ s32 unkFC;                         /* inferred */
    /* 0x0100 */ s32 unk100;                        /* inferred */
    /* 0x0104 */ char pad104[4];
    /* 0x0108 */ s32 unk108;                        /* inferred */
    /* 0x010C */ s32 unk10C;                        /* inferred */
    /* 0x0110 */ s32 unk110;                        /* inferred */
    /* 0x0114 */ s32 unk114;                        /* inferred */
    /* 0x0118 */ s32 unk118;                        /* inferred */
    /* 0x011C */ char pad11C[4];
    /* 0x0120 */ s32 unk120;                        /* inferred */
    /* 0x0124 */ s32 unk124;                        /* inferred */
    /* 0x0128 */ char pad128[4];
    /* 0x012C */ f32 unk12C;                        /* inferred */
    /* 0x0130 */ f32 unk130;                        /* inferred */
    /* 0x0134 */ char pad134[0x68];                 /* maybe part of unk130[0x1B]? */
    /* 0x019C */ s32 unk19C;                        /* inferred */
    /* 0x01A0 */ char pad1A0[4];
    /* 0x01A4 */ s32 unk1A4;                        /* inferred */
    /* 0x01A8 */ s32 unk1A8;                        /* inferred */
    /* 0x01AC */ ? unk1AC;                          /* inferred */
    /* 0x01AC */ char pad1AC[4];
    /* 0x01B0 */ void *unk1B0;                      /* inferred */
    /* 0x01B4 */ char pad1B4[0x14];                 /* maybe part of unk1B0[6]? */
    /* 0x01C8 */ ? unk1C8;                          /* inferred */
    /* 0x01C8 */ char pad1C8[0x1C];
    /* 0x01E4 */ s32 unk1E4;                        /* inferred */
    /* 0x01E8 */ char pad1E8[0x80];                 /* maybe part of unk1E4[0x21]? */
    /* 0x0268 */ f32 unk268;                        /* inferred */
    /* 0x026C */ f32 unk26C;                        /* inferred */
    /* 0x0270 */ f32 unk270;                        /* inferred */
    /* 0x0274 */ f32 unk274;                        /* inferred */
    /* 0x0278 */ char pad278[4];
    /* 0x027C */ f32 unk27C;                        /* inferred */
    /* 0x0280 */ f32 unk280;                        /* inferred */
    /* 0x0284 */ f32 unk284;                        /* inferred */
    /* 0x0288 */ f32 unk288;                        /* inferred */
    /* 0x028C */ char pad28C[0x48];                 /* maybe part of unk288[0x13]? */
    /* 0x02D4 */ f32 unk2D4;                        /* inferred */
    /* 0x02D8 */ char pad2D8[0xE0];                 /* maybe part of unk2D4[0x39]? */
    /* 0x03B8 */ ? unk3B8;                          /* inferred */
    /* 0x03B8 */ char pad3B8[0x2C];
    /* 0x03E4 */ s32 unk3E4;                        /* inferred */
    /* 0x03E8 */ s32 unk3E8;                        /* inferred */
    /* 0x03EC */ s32 unk3EC;                        /* inferred */
    /* 0x03F0 */ s32 unk3F0;                        /* inferred */
    /* 0x03F4 */ u8 (*unk3F4)(__GLcontext *);       /* inferred */
    /* 0x03F8 */ void (*unk3F8)(__GLcontext *);     /* inferred */
    /* 0x03FC */ u8 unk3FC;                         /* inferred */
    /* 0x03FD */ char pad3FD[3];                    /* maybe part of unk3FC[4]? */
    /* 0x0400 */ s32 unk400;                        /* inferred */
    /* 0x0404 */ s32 unk404;                        /* inferred */
    /* 0x0408 */ void *unk408;                      /* inferred */
    /* 0x040C */ s32 unk40C;                        /* inferred */
    /* 0x0410 */ char pad410[4];
    /* 0x0414 */ void *unk414;                      /* inferred */
    /* 0x0418 */ s32 unk418;                        /* inferred */
    /* 0x041C */ char pad41C[4];
    /* 0x0420 */ void *unk420;                      /* inferred */
    /* 0x0424 */ s32 unk424;                        /* inferred */
    /* 0x0428 */ char pad428[4];
    /* 0x042C */ void *unk42C;                      /* inferred */
    /* 0x0430 */ char pad430[0x20];                 /* maybe part of unk42C[9]? */
    /* 0x0450 */ void *unk450;                      /* inferred */
    /* 0x0454 */ char pad454[0x144];                /* maybe part of unk450[0x52]? */
    /* 0x0598 */ s32 *unk598;                       /* inferred */
    /* 0x059C */ char pad59C[0x44];                 /* maybe part of unk598[0x12]? */
    /* 0x05E0 */ s32 unk5E0;                        /* inferred */
    /* 0x05E4 */ s32 unk5E4;                        /* inferred */
    /* 0x05E8 */ s32 unk5E8;                        /* inferred */
    /* 0x05EC */ char pad5EC[8];                    /* maybe part of unk5E8[3]? */
    /* 0x05F4 */ s32 unk5F4;                        /* inferred */
    /* 0x05F8 */ char pad5F8[8];                    /* maybe part of unk5F4[3]? */
    /* 0x0600 */ s32 unk600;                        /* inferred */
    /* 0x0604 */ char pad604[8];                    /* maybe part of unk600[3]? */
    /* 0x060C */ s32 unk60C;                        /* inferred */
    /* 0x0610 */ char pad610[0x600];                /* maybe part of unk60C[0x181]? */
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
    /* 0x79C8 */ char pad79C8[0x180];               /* maybe part of unk79C4[0x61]? */
    /* 0x7B48 */ s32 unk7B48;                       /* inferred */
    /* 0x7B4C */ char pad7B4C[0x48];                /* maybe part of unk7B48[0x13]? */
    /* 0x7B94 */ __GLcolorBuffer *front;
    /* 0x7B98 */ __GLcolorBuffer *back;
    /* 0x7B9C */ __GLcolorBuffer frontBuffer;
    /* 0x7C78 */ __GLcolorBuffer backBuffer;
    /* 0x7D54 */ __GLcolorBuffer *auxBuffer;
    /* 0x7D58 */ __GLstencilBuffer stencilBuffer;
    /* 0x7DD0 */ __GLdepthBuffer depthBuffer;
    /* 0x7E54 */ __GLaccumBuffer accumBuffer;
    /* 0x7EC4 */ void (*unk7EC4)(__GLcontext *);    /* inferred */
    /* 0x7EC8 */ f32 unk7EC8;                       /* inferred */
    /* 0x7ECC */ f32 unk7ECC;                       /* inferred */
    /* 0x7ED0 */ f32 unk7ED0;                       /* inferred */
    /* 0x7ED4 */ f32 unk7ED4;                       /* inferred */
    /* 0x7ED8 */ void (*unk7ED8)(__GLcontext *);    /* inferred */
    /* 0x7EDC */ f32 unk7EDC;                       /* inferred */
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

typedef struct __GLdepthBufferRec {
    /* 0x00 */ __GLbuffer buf;
    /* 0x1C */ f32 unk1C;                           /* inferred */
    /* 0x20 */ f32 unk20;                           /* inferred */
    /* 0x24 */ f32 unk24;                           /* inferred */
    /* 0x28 */ f32 unk28;                           /* inferred */
    /* 0x2C */ s32 unk2C;                           /* inferred */
    /* 0x30 */ s32 unk30;                           /* inferred */
    /* 0x34 */ s32 unk34;                           /* inferred */
    /* 0x38 */ s32 unk38;                           /* inferred */
    /* 0x3C */ s32 unk3C;                           /* inferred */
    /* 0x40 */ s32 unk40;                           /* inferred */
    /* 0x44 */ f32 unk44;                           /* inferred */
    /* 0x48 */ f32 unk48;                           /* inferred */
    /* 0x4C */ u32 scale;
    /* 0x50 */ f32 unk50;                           /* inferred */
    /* 0x54 */ f32 unk54;                           /* inferred */
    /* 0x58 */ f32 unk58;                           /* inferred */
    /* 0x5C */ f32 unk5C;                           /* inferred */
    /* 0x60 */ f32 unk60;                           /* inferred */
    /* 0x64 */ f32 unk64;                           /* inferred */
    /* 0x68 */ f32 unk68;                           /* inferred */
    /* 0x6C */ s32 unk6C;                           /* inferred */
    /* 0x70 */ f32 unk70;                           /* inferred */
    /* 0x74 */ f32 unk74;                           /* inferred */
    /* 0x78 */ void (*clear)(__GLdepthBuffer *, s64, __GLcontext *);
    /* 0x7C */ f32 unk7C;                           /* inferred */
    /* 0x80 */ f32 unk80;                           /* inferred */
} __GLdepthBuffer;                                  /* size = 0x84 */

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
    /* 0x30 */ void *unk30;                         /* inferred */
    /* 0x34 */ char pad34[0x1C];                    /* maybe part of unk30[8]? */
    /* 0x50 */ s32 unk50;                           /* inferred */
    /* 0x54 */ s8 unk54;                            /* inferred */
    /* 0x55 */ s8 unk55;                            /* inferred */
    /* 0x56 */ s8 unk56;                            /* inferred */
    /* 0x57 */ char pad57[1];
    /* 0x58 */ s32 unk58;                           /* inferred */
    /* 0x5C */ s32 unk5C;                           /* inferred */
    /* 0x60 */ f32 unk60;                           /* inferred */
    /* 0x64 */ f32 unk64;                           /* inferred */
    /* 0x68 */ f32 unk68;                           /* inferred */
    /* 0x6C */ f32 unk6C;                           /* inferred */
    /* 0x70 */ f32 unk70;                           /* inferred */
    /* 0x74 */ void (*clear)(__GLstencilBuffer *, s64, __GLcontext *);
} __GLstencilBuffer;                                /* size = 0x78 */

? abort();                                          /* extern */
? perror(void *);                                   /* extern */
extern ? SYMBOL_LOCATION;
extern ? sub_0dbf0000;

void __glMgrSaveRSS(__GLcontext *gc, __GLcontext *arg1, __GLcontext *arg2, __GLcontext *arg3, __GLcontext *arg4, ...) {
    *(__GLcontext **)0x74080 = (__GLcontext *)0xD214;
    *(__GLcontext **)0x74080 = gc;
    *(__GLcontext **)0x74080 = arg1;
    *(__GLcontext **)0x74080 = arg2;
    *(__GLcontext **)0x74080 = arg3;
    *(__GLcontext **)0x74080 = arg4;
}

void __glMgrRestoreRSS(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0xD300;
}

void __glMgrFlushImageRegs(__GLcontext *gc, void *arg1, s32 arg2, s32 arg3, ...) {
    s32 temp_v1;
    s32 var_a6;
    void *var_a1;
    void *var_a4;

    var_a6 = arg2 & 3;
    *(s32 *)0x74080 = (s32) gc | 8;
    *(s32 *)0x74080 = arg3;
    *(s32 *)0x74080 = arg2;
    *(s32 *)0x74080 = ((arg2 * 4) & 0xFFFFF) | 0x80000000;
    if (arg2 > 0) {
        var_a4 = arg1;
        if (var_a6 != 0) {
            do {
                var_a4 += 4;
                var_a6 -= 1;
                *(s32 *)0x74080 = var_a4->unk-4;
            } while (var_a6 != 0);
        }
        if ((arg2 >> 2) != 0) {
            var_a1 = var_a4;
            do {
                *(s32 *)0x74080 = var_a1->unk0;
                *(s32 *)0x74080 = var_a1->unk4;
                *(s32 *)0x74080 = var_a1->unk8;
                temp_v1 = var_a1->unkC;
                var_a1 += 0x10;
                *(s32 *)0x74080 = temp_v1;
            } while (var_a1 != ((arg2 * 4) + arg1));
        }
    }
}

void __glMgrRSSRegShadow(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, ...) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a5;

    temp_a5 = __glCurrentContext + 0x10000;
    temp_v0 = __glCurrentContext->unkA668 + 1;
    __glCurrentContext->unkA668 = temp_v0;
    ((temp_v0 * 4) + __glCurrentContext)->unkA564 = gc;
    temp_a6 = __glCurrentContext->unkA668 + 1;
    __glCurrentContext->unkA668 = temp_a6;
    ((temp_a6 * 4) + __glCurrentContext)->unkA564 = arg1;
    temp_v0_2 = __glCurrentContext->unkA668 + 1;
    __glCurrentContext->unkA668 = temp_v0_2;
    ((temp_v0_2 * 4) + __glCurrentContext)->unkA564 = arg2;
    temp_a6_2 = __glCurrentContext->unkA668;
    if ((arg3 != 0) || (sp0 = (s64) temp_a5, ((temp_a6_2 < 0x40) == 0))) {
        sp0 = (s64) temp_a5;
        M2C_TRAP_IF(3 == 0);
        temp_a2 = (temp_a6_2 + 1) & ~1;
        __glCurrentContext->unkA668 = temp_a2;
        __glMgrFlushImageRegs((__GLcontext *)0x7C00, 0x7C00, __glCurrentContext + 0xA568, temp_a2, temp_a6_2 / 3, temp_a5, temp_a5, temp_a6_2, __glCurrentContext);
        sp0->unk-5998 = 0;
    }
}

void __glMgrRSSRegSet(__GLcontext *gc, s32 arg1, s32 arg2, ...) {
    s64 sp0;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_v0;
    void *temp_a4;

    temp_a4 = __glCurrentContext + 0x10000;
    temp_a5 = __glCurrentContext->unkA76C + 1;
    __glCurrentContext->unkA76C = temp_a5;
    ((temp_a5 * 4) + __glCurrentContext)->unkA668 = gc;
    temp_v0 = __glCurrentContext->unkA76C + 1;
    __glCurrentContext->unkA76C = temp_v0;
    ((temp_v0 * 4) + __glCurrentContext)->unkA668 = arg1;
    temp_a5_2 = __glCurrentContext->unkA76C;
    if ((arg2 != 0) || (sp0 = (s64) temp_a4, ((temp_a5_2 < 0x40) == 0))) {
        sp0 = (s64) temp_a4;
        __glMgrFlushImageRegs((__GLcontext *)0x7F00, 0x7F00, __glCurrentContext + 0xA66C, temp_a5_2, temp_a5_2 >> 1, temp_a4, temp_a5_2, __glCurrentContext);
        sp0->unk-5894 = 0;
    }
}

void __glMgrLoadRasterPosInfo(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0xD700;
}

void __glMgrUpdateRasterPos(__GLcontext *gc, f32 fparg0, f32 fparg1, ...) {
    *(f32 *)0x74080 = 7.678e-41f;
    *(f32 *)0x74080 = fparg0;
    *(f32 *)0x74080 = fparg1;
}

void __glMgrInitPixelPath(__GLcontext *gc, s32 arg1, ...) {
    s32 temp_a5;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_a7;
    void *var_a0;
    void *var_a0_2;

    switch (gc) {                                   /* irregular */
    default:
        ((__glCurrentContext->unkADB0 * 4) + __glCurrentContext)->unkA768 = (s32) *(((s32) gc * 4) + &SYMBOL_LOCATION);
        temp_v1 = __glCurrentContext->unkADB0 + 1;
        __glCurrentContext->unkADB0 = temp_v1;
        ((temp_v1 * 4) + __glCurrentContext)->unkA770 = arg1;
        __glCurrentContext->unkADB0 = (s32) (__glCurrentContext->unkADB0 + 1);
        return;
    case 0xEA:
    case 0xEB:
    case 0x11F:
        temp_a7 = __glCurrentContext + 0x10000;
        ((__glCurrentContext->unkADB0 * 4) + __glCurrentContext)->unkA768 = (s32) *(((s32) gc * 4) + &SYMBOL_LOCATION);
        temp_a5 = __glCurrentContext->unkADB0;
        var_a0 = temp_a7;
        M2C_TRAP_IF(5 == 0);
        *(s32 *)0x74080 = ((temp_a5 * 8) + 0x20) | 0x8000;
        *(s32 *)0x74080 = temp_a5 / 5;
        var_a1 = 0;
        *(s32 *)0x74080 = temp_a5 % 5;
        *(s32 *)0x74080 = temp_a5 * 4;
        *(s32 *)0x74080 = SYMBOL_LOCATION.unk19C;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = temp_a5;
        if (temp_a5 > 0) {
            do {
                var_a0 += 4;
                var_a1 += 1;
                *(s32 *)0x74080 = var_a0->unk-5894;
            } while (var_a1 < temp_a5);
        }
        *(s32 *)0x74080 = temp_a5;
        var_a1_2 = 0;
        if (temp_a5 > 0) {
            var_a0_2 = temp_a7;
            do {
                var_a0_2 += 4;
                var_a1_2 += 1;
                *(s32 *)0x74080 = var_a0_2->unk-5894;
            } while (var_a1_2 < temp_a5);
        }
        __glCurrentContext->unkADB0 = 0;
        return;
    case 0x0:
        temp_v0 = __glCurrentContext->unkADB0 + 1;
        __glCurrentContext->unkADB0 = temp_v0;
        ((temp_v0 * 4) + __glCurrentContext)->unkA770 = arg1;
        __glCurrentContext->unkADB0 = (s32) (__glCurrentContext->unkADB0 + 1);
        return;
    }
}

void __glMgrAllocERAM(__GLcontext *gc, u32 arg1, s32 arg3, ...) {
    s64 sp10;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_s3;
    s32 temp_a0;
    s32 temp_a0_10;
    s32 temp_a0_11;
    s32 temp_a0_12;
    s32 temp_a0_13;
    s32 temp_a0_14;
    s32 temp_a0_15;
    s32 temp_a0_16;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 var_a3;
    s32 var_s1;

    var_a3 = arg3;
    temp_s3 = __glCurrentContext;
    if ((u32) gc < 0x101U) {
        var_s1 = 0x100;
    } else {
        var_a3 = (u32) gc < 0x401U;
        if ((u32) gc < 0x201U) {
            var_s1 = 0x200;
        } else if (var_a3 != 0) {
            var_s1 = 0x400;
        } else {
            var_a3 = (u32) gc < 0x1001U;
            if ((u32) gc < 0x801U) {
                var_s1 = 0x800;
            } else {
                var_a3 = (u32) gc < 0x2001U;
                if (var_a3 != 0) {
                    var_s1 = 0x1000;
                } else {
                    var_a3 = (u32) gc < 0x4001U;
                    if (var_a3 != 0) {
                        var_s1 = 0x2000;
                    } else if (var_a3 != 0) {
                        var_s1 = 0x4000;
                    } else {
                        var_s1 = 0x8000;
                    }
                }
            }
        }
    }
    if (arg1 >= 0x800U) {
        if (arg1 < 0x801U) {
            sp10 = (s64) (temp_s3 + 0x10000);
            temp_v0 = temp_s3->unk85B8;
            if (temp_v0 != 0) {
                sp0 = temp_v0;
                sp8 = 0;
                sp4 = sp10->unk-7A68;
                temp_a0 = temp_s3->unk7B48;
                if (ioctl(temp_a0, 0x6D670013U, temp_a0, 0x6D670013, sp, var_a3) < 0) {
                    perror(&sub_0dbf0000 - 0x1310);
                    abort();
                }
            }
            sp8 = 0;
            sp0 = var_s1;
            temp_a0_2 = temp_s3->unk7B48;
            if (ioctl(temp_a0_2, 0x6D670012U, temp_a0_2, 0x6D670012, sp) < 0) {
                perror(&sub_0dbf0000 - 0x12E8);
                abort();
            }
            sp10->unk-7A48 = var_s1;
            sp10->unk-7A68 = sp4;
        } else {
            temp_a3 = arg1 < 0x4001U;
            if (arg1 >= 0x4000U) {
                if (temp_a3 == 0) {
                    if (arg1 != 0x8000) {

                    } else {
                        sp10 = (s64) (temp_s3 + 0x10000);
                        temp_v0_2 = temp_s3->unk85C4;
                        if (temp_v0_2 != 0) {
                            sp0 = temp_v0_2;
                            sp8 = 0;
                            sp4 = sp10->unk-7A5C;
                            temp_a0_3 = temp_s3->unk7B48;
                            if (ioctl(temp_a0_3, 0x6D670013U, temp_a0_3, 0x6D670013, sp, temp_a3) < 0) {
                                perror(&sub_0dbf0000 - 0x1310);
                                abort();
                            }
                        }
                        sp0 = var_s1;
                        sp8 = 0;
                        temp_a0_4 = temp_s3->unk7B48;
                        if (ioctl(temp_a0_4, 0x6D670012U, temp_a0_4, 0x6D670012, sp) < 0) {
                            perror(&sub_0dbf0000 - 0x12E8);
                            abort();
                        }
                        sp10->unk-7A3C = var_s1;
                        sp10->unk-7A5C = sp4;
                    }
                } else {
                    sp10 = (s64) (temp_s3 + 0x10000);
                    temp_v0_3 = temp_s3->unk85C0;
                    if (temp_v0_3 != 0) {
                        sp0 = temp_v0_3;
                        sp8 = 0;
                        sp4 = sp10->unk-7A60;
                        temp_a0_5 = temp_s3->unk7B48;
                        if (ioctl(temp_a0_5, 0x6D670013U, temp_a0_5, 0x6D670013, sp, temp_a3) < 0) {
                            perror(&sub_0dbf0000 - 0x1310);
                            abort();
                        }
                    }
                    sp0 = var_s1;
                    sp8 = 0;
                    temp_a0_6 = temp_s3->unk7B48;
                    if (ioctl(temp_a0_6, 0x6D670012U, temp_a0_6, 0x6D670012, sp) < 0) {
                        perror(&sub_0dbf0000 - 0x12E8);
                        abort();
                    }
                    sp10->unk-7A40 = var_s1;
                    sp10->unk-7A60 = sp4;
                }
            } else {
                temp_a3_2 = arg1 < 0x2000U;
                if (temp_a3_2 == 0) {
                    if (arg1 < 0x2001U) {
                        sp10 = (s64) (temp_s3 + 0x10000);
                        temp_v0_4 = temp_s3->unk85BC;
                        if (temp_v0_4 != 0) {
                            sp0 = temp_v0_4;
                            sp8 = 0;
                            sp4 = sp10->unk-7A64;
                            temp_a0_7 = temp_s3->unk7B48;
                            if (ioctl(temp_a0_7, 0x6D670013U, temp_a0_7, 0x6D670013, sp, temp_a3_2) < 0) {
                                perror(&sub_0dbf0000 - 0x1310);
                                abort();
                            }
                        }
                        sp0 = var_s1;
                        sp8 = 0;
                        temp_a0_8 = temp_s3->unk7B48;
                        if (ioctl(temp_a0_8, 0x6D670012U, temp_a0_8, 0x6D670012, sp) < 0) {
                            perror(&sub_0dbf0000 - 0x12E8);
                            abort();
                        }
                        sp10->unk-7A44 = var_s1;
                        sp10->unk-7A64 = sp4;
                    }
                } else if (arg1 != 0x1000) {

                } else {
                    sp10 = (s64) (temp_s3 + 0x10000);
                    temp_v0_5 = temp_s3->unk85B4;
                    if (temp_v0_5 != 0) {
                        sp0 = temp_v0_5;
                        sp8 = 0;
                        sp4 = sp10->unk-7A6C;
                        temp_a0_9 = temp_s3->unk7B48;
                        if (ioctl(temp_a0_9, 0x6D670013U, temp_a0_9, 0x6D670013, sp, temp_a3_2) < 0) {
                            perror(&sub_0dbf0000 - 0x1310);
                            abort();
                        }
                    }
                    sp0 = var_s1;
                    sp8 = 0;
                    temp_a0_10 = temp_s3->unk7B48;
                    if (ioctl(temp_a0_10, 0x6D670012U, temp_a0_10, 0x6D670012, sp) < 0) {
                        perror(&sub_0dbf0000 - 0x12E8);
                        abort();
                    }
                    sp10->unk-7A4C = var_s1;
                    sp10->unk-7A6C = sp4;
                }
            }
        }
    } else if (arg1 >= 0x10U) {
        if (arg1 < 0x11U) {
            goto block_14;
        }
        var_a3 = arg1 < 0x40U;
        if (var_a3 == 0) {
            if (arg1 < 0x41U) {
                sp10 = (s64) (temp_s3 + 0x10000);
                temp_v0_6 = temp_s3->unk85A8;
                if (temp_v0_6 != 0) {
                    sp0 = temp_v0_6;
                    sp8 = 0;
                    sp4 = sp10->unk-7A78;
                    temp_a0_11 = temp_s3->unk7B48;
                    if (ioctl(temp_a0_11, 0x6D670013U, temp_a0_11, 0x6D670013, sp, var_a3) < 0) {
                        perror(&sub_0dbf0000 - 0x1310);
                        abort();
                    }
                }
                sp0 = var_s1;
                sp8 = 0;
                temp_a0_12 = temp_s3->unk7B48;
                if (ioctl(temp_a0_12, 0x6D670012U, temp_a0_12, 0x6D670012, sp) < 0) {
                    perror(&sub_0dbf0000 - 0x12E8);
                    abort();
                }
                sp10->unk-7A58 = var_s1;
                sp10->unk-7A78 = sp4;
            }
        } else if (arg1 != 0x20) {

        } else {
block_14:
            goto block_15;
        }
    } else if (arg1 >= 8U) {
        if (arg1 >= 9U) {

        } else {
block_15:
            sp10 = (s64) (temp_s3 + 0x10000);
            temp_v0_7 = temp_s3->unk85AC;
            if (temp_v0_7 != 0) {
                sp0 = temp_v0_7;
                sp8 = 0;
                sp4 = sp10->unk-7A74;
                temp_a0_13 = temp_s3->unk7B48;
                if (ioctl(temp_a0_13, 0x6D670013U, temp_a0_13, 0x6D670013, sp, var_a3) < 0) {
                    perror(&sub_0dbf0000 - 0x1310);
                    abort();
                }
            }
            sp8 = 0;
            sp0 = var_s1;
            temp_a0_14 = temp_s3->unk7B48;
            if (ioctl(temp_a0_14, 0x6D670012U, temp_a0_14, 0x6D670012, sp) < 0) {
                perror(&sub_0dbf0000 - 0x12E8);
                abort();
            }
            sp10->unk-7A54 = var_s1;
            sp10->unk-7A74 = sp4;
        }
    } else if (arg1 != 4) {

    } else {
        sp10 = (s64) (temp_s3 + 0x10000);
        temp_v0_8 = temp_s3->unk85B0;
        if (temp_v0_8 != 0) {
            sp0 = temp_v0_8;
            sp8 = 0;
            sp4 = sp10->unk-7A70;
            temp_a0_15 = temp_s3->unk7B48;
            if (ioctl(temp_a0_15, 0x6D670013U, temp_a0_15, 0x6D670013, sp, var_a3) < 0) {
                perror(&sub_0dbf0000 - 0x1310);
                abort();
            }
        }
        sp0 = var_s1;
        sp8 = 0;
        temp_a0_16 = temp_s3->unk7B48;
        if (ioctl(temp_a0_16, 0x6D670012U, temp_a0_16, 0x6D670012, sp) < 0) {
            perror(&sub_0dbf0000 - 0x12E8);
            abort();
        }
        sp10->unk-7A50 = var_s1;
        sp10->unk-7A70 = sp4;
    }
}

void __glMgrInitUnpackState(__GLcontext *gc, __GLcontext *arg3, ...) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    __GLcontext *sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    __GLcontext *sp10;
    __GLcontext **temp_s5;
    __GLcontext **temp_s5_3;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_10;
    __GLcontext *temp_a0_13;
    __GLcontext *temp_a0_14;
    __GLcontext *temp_a0_17;
    __GLcontext *temp_a0_18;
    __GLcontext *temp_a0_21;
    __GLcontext *temp_a0_22;
    __GLcontext *temp_a0_25;
    __GLcontext *temp_a0_26;
    __GLcontext *temp_a0_27;
    __GLcontext *temp_a0_28;
    __GLcontext *temp_a0_29;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_30;
    __GLcontext *temp_a0_31;
    __GLcontext *temp_a0_32;
    __GLcontext *temp_a0_33;
    __GLcontext *temp_a0_34;
    __GLcontext *temp_a0_35;
    __GLcontext *temp_a0_36;
    __GLcontext *temp_a0_37;
    __GLcontext *temp_a0_38;
    __GLcontext *temp_a0_39;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_40;
    __GLcontext *temp_a0_41;
    __GLcontext *temp_a0_42;
    __GLcontext *temp_a0_43;
    __GLcontext *temp_a0_44;
    __GLcontext *temp_a0_45;
    __GLcontext *temp_a0_46;
    __GLcontext *temp_a0_47;
    __GLcontext *temp_a0_48;
    __GLcontext *temp_a0_49;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_50;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_9;
    s32 *temp_a3;
    s32 temp_a0_11;
    s32 temp_a0_12;
    s32 temp_a0_15;
    s32 temp_a0_16;
    s32 temp_a0_19;
    s32 temp_a0_20;
    s32 temp_a0_23;
    s32 temp_a0_24;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_13;
    s32 temp_a2_14;
    s32 temp_a2_15;
    s32 temp_a2_16;
    s32 temp_a2_17;
    s32 temp_a2_18;
    s32 temp_a2_19;
    s32 temp_a2_20;
    s32 temp_a2_21;
    s32 temp_a2_22;
    s32 temp_a2_23;
    s32 temp_a2_24;
    s32 temp_a2_25;
    s32 temp_a2_26;
    s32 temp_a2_27;
    s32 temp_a2_28;
    s32 temp_a2_29;
    s32 temp_a2_2;
    s32 temp_a2_30;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3_10;
    s32 temp_a3_11;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a3_9;
    void *temp_s5_2;

    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, 1);
    temp_a3 = gc->unk598;
    temp_a0_6 = temp_a3->unk48;
    if (temp_a0_6 != 0x8032) {
        if (temp_a0_6 == 0x8033) {
            temp_a2 = temp_a3->unk18;
            temp_a0_7 = (s32) (((u32) (temp_a2 >> 1) >> 0x1E) + temp_a2) >> 2;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_7, temp_a0_7, 0, temp_a2, temp_a3);
            temp_a2_2 = gc->unk598->unk1C;
            temp_a0_8 = (s32) (((u32) (temp_a2_2 >> 1) >> 0x1E) + temp_a2_2) >> 2;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_8, temp_a0_8, 1, temp_a2_2);
            temp_a2_3 = gc->unk598->unk18;
            temp_a3_2 = temp_a2_3 >> 0x1F;
            temp_a2_4 = temp_a2_3 >> 0x1F;
            temp_a0_9 = ((((temp_a2_3 ^ temp_a3_2) - temp_a3_2) & 3) ^ temp_a2_4) - temp_a2_4;
            __glMgrInitPixelStateERAM(temp_a0_9, temp_a0_9, 0, temp_a2_4, temp_a3_2);
            temp_a2_5 = gc->unk598->unk1C;
            temp_a3_3 = temp_a2_5 >> 0x1F;
            temp_a2_6 = temp_a2_5 >> 0x1F;
            temp_a0_10 = ((((temp_a2_5 ^ temp_a3_3) - temp_a3_3) & 3) ^ temp_a2_6) - temp_a2_6;
            __glMgrInitPixelStateERAM(temp_a0_10, temp_a0_10, 1, temp_a2_6, temp_a3_3);
            __glMgrInitPixelStateERAM(NULL, 0, -2);
            sp1C = 0;
            sp18 = 0;
            sp14 = 0;
            sp10 = NULL;
            sp2C = 0.06666667f;
            sp28 = 0.004166667f;
            sp24 = 0.00026041668f;
            sp20 = (__GLcontext *)0x37888889;
            gc->unk598->unk48 = 0x1401;
        } else if (temp_a0_6 != 0x8034) {
            if (temp_a0_6 != 0x8035) {
                if (temp_a0_6 == 0x8036) {
                    temp_a2_7 = temp_a3->unk18;
                    temp_a0_11 = (s32) (((u32) temp_a2_7 >> 0x1F) + temp_a2_7) >> 1;
                    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_11, temp_a0_11, 0, temp_a2_7, temp_a3);
                    temp_a2_8 = gc->unk598->unk1C;
                    temp_a0_12 = (s32) (((u32) temp_a2_8 >> 0x1F) + temp_a2_8) >> 1;
                    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_12, temp_a0_12, 1, temp_a2_8);
                    temp_a2_9 = gc->unk598->unk18;
                    temp_a3_4 = temp_a2_9 >> 0x1F;
                    temp_a2_10 = temp_a2_9 >> 0x1F;
                    temp_a0_13 = ((((temp_a2_9 ^ temp_a3_4) - temp_a3_4) & 1) ^ temp_a2_10) - temp_a2_10;
                    __glMgrInitPixelStateERAM(temp_a0_13, temp_a0_13, 0, temp_a2_10, temp_a3_4);
                    temp_a2_11 = gc->unk598->unk1C;
                    temp_a3_5 = temp_a2_11 >> 0x1F;
                    temp_a2_12 = temp_a2_11 >> 0x1F;
                    temp_a0_14 = ((((temp_a2_11 ^ temp_a3_5) - temp_a3_5) & 1) ^ temp_a2_12) - temp_a2_12;
                    __glMgrInitPixelStateERAM(temp_a0_14, temp_a0_14, 1, temp_a2_12, temp_a3_5);
                    __glMgrInitPixelStateERAM((__GLcontext *)1, 1, -2);
                    sp1C = 0;
                    sp18 = 0;
                    sp14 = 0;
                    sp10 = (__GLcontext *)0x16;
                    sp2C = 0.33333334f;
                    sp28 = 0.00024437928f;
                    sp24 = 0.00000023865164f;
                    sp20 = (__GLcontext *)0x3A802008;
                    gc->unk598->unk48 = 0x1403;
                }
            } else {
                temp_a2_13 = temp_a3->unk18;
                temp_a0_15 = (s32) (((u32) temp_a2_13 >> 0x1F) + temp_a2_13) >> 1;
                __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_15, temp_a0_15, 0, temp_a2_13, temp_a3);
                temp_a2_14 = gc->unk598->unk1C;
                temp_a0_16 = (s32) (((u32) temp_a2_14 >> 0x1F) + temp_a2_14) >> 1;
                __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_16, temp_a0_16, 1, temp_a2_14);
                temp_a2_15 = gc->unk598->unk18;
                temp_a3_6 = temp_a2_15 >> 0x1F;
                temp_a2_16 = temp_a2_15 >> 0x1F;
                temp_a0_17 = ((((temp_a2_15 ^ temp_a3_6) - temp_a3_6) & 1) ^ temp_a2_16) - temp_a2_16;
                __glMgrInitPixelStateERAM(temp_a0_17, temp_a0_17, 0, temp_a2_16, temp_a3_6);
                temp_a2_17 = gc->unk598->unk1C;
                temp_a3_7 = temp_a2_17 >> 0x1F;
                temp_a2_18 = temp_a2_17 >> 0x1F;
                temp_a0_18 = ((((temp_a2_17 ^ temp_a3_7) - temp_a3_7) & 1) ^ temp_a2_18) - temp_a2_18;
                __glMgrInitPixelStateERAM(temp_a0_18, temp_a0_18, 1, temp_a2_18, temp_a3_7);
                __glMgrInitPixelStateERAM((__GLcontext *)1, 1, -2);
                sp1C = 0;
                sp18 = 0;
                sp14 = 0;
                sp10 = (__GLcontext *)0x18;
                sp2C = 0.003921569f;
                sp28 = 0.000015318628f;
                sp24 = 5.983839e-8f;
                sp20 = (__GLcontext *)0x3B808081;
                gc->unk598->unk48 = 0x1401;
            }
        } else {
            temp_a2_19 = temp_a3->unk18;
            temp_a0_19 = (s32) (((u32) (temp_a2_19 >> 1) >> 0x1E) + temp_a2_19) >> 2;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_19, temp_a0_19, 0, temp_a2_19, temp_a3);
            temp_a2_20 = gc->unk598->unk1C;
            temp_a0_20 = (s32) (((u32) (temp_a2_20 >> 1) >> 0x1E) + temp_a2_20) >> 2;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_20, temp_a0_20, 1, temp_a2_20);
            temp_a2_21 = gc->unk598->unk18;
            temp_a3_8 = temp_a2_21 >> 0x1F;
            temp_a2_22 = temp_a2_21 >> 0x1F;
            temp_a0_21 = ((((temp_a2_21 ^ temp_a3_8) - temp_a3_8) & 3) ^ temp_a2_22) - temp_a2_22;
            __glMgrInitPixelStateERAM(temp_a0_21, temp_a0_21, 0, temp_a2_22, temp_a3_8);
            temp_a2_23 = gc->unk598->unk1C;
            temp_a3_9 = temp_a2_23 >> 0x1F;
            temp_a2_24 = temp_a2_23 >> 0x1F;
            temp_a0_22 = ((((temp_a2_23 ^ temp_a3_9) - temp_a3_9) & 3) ^ temp_a2_24) - temp_a2_24;
            __glMgrInitPixelStateERAM(temp_a0_22, temp_a0_22, 1, temp_a2_24, temp_a3_9);
            __glMgrInitPixelStateERAM(NULL, 0, -2);
            sp1C = 0;
            sp18 = 0;
            sp14 = 0;
            sp10 = NULL;
            sp2C = 1.0f;
            sp28 = 0.016129032f;
            sp24 = 0.00050403224f;
            sp20 = (__GLcontext *)0x37842108;
            gc->unk598->unk48 = 0x1401;
        }
    } else {
        temp_a2_25 = temp_a3->unk18;
        temp_a0_23 = (s32) (((u32) (temp_a2_25 >> 1) >> 0x1E) + temp_a2_25) >> 2;
        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_23, temp_a0_23, 0, temp_a2_25, temp_a3);
        temp_a2_26 = gc->unk598->unk1C;
        temp_a0_24 = (s32) (((u32) (temp_a2_26 >> 1) >> 0x1E) + temp_a2_26) >> 2;
        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_24, temp_a0_24, 1, temp_a2_26);
        temp_a2_27 = gc->unk598->unk18;
        temp_a3_10 = temp_a2_27 >> 0x1F;
        temp_a2_28 = temp_a2_27 >> 0x1F;
        temp_a0_25 = ((((temp_a2_27 ^ temp_a3_10) - temp_a3_10) & 3) ^ temp_a2_28) - temp_a2_28;
        __glMgrInitPixelStateERAM(temp_a0_25, temp_a0_25, 0, temp_a2_28, temp_a3_10);
        temp_a2_29 = gc->unk598->unk1C;
        temp_a3_11 = temp_a2_29 >> 0x1F;
        temp_a2_30 = temp_a2_29 >> 0x1F;
        temp_a0_26 = ((((temp_a2_29 ^ temp_a3_11) - temp_a3_11) & 3) ^ temp_a2_30) - temp_a2_30;
        __glMgrInitPixelStateERAM(temp_a0_26, temp_a0_26, 1, temp_a2_30, temp_a3_11);
        __glMgrInitPixelStateERAM((__GLcontext *)2, 2, -2);
        sp1C = 0;
        sp18 = 0;
        sp14 = 0;
        sp10 = NULL;
        sp2C = 1.0f;
        sp28 = 0.33333334f;
        sp24 = 0.035714287f;
        sp20 = (__GLcontext *)0x3B924925;
        gc->unk598->unk48 = 0x1401;
    }
    if (gc->unk598->unk44 != 0x8000) {
        temp_a0_27 = sp20.unk0;
        __glMgrInitPixelStateERAM(temp_a0_27, temp_a0_27, -2);
        temp_a0_28 = sp20.unk4;
        __glMgrInitPixelStateERAM(temp_a0_28, temp_a0_28, -2);
        temp_a0_29 = sp20.unk8;
        __glMgrInitPixelStateERAM(temp_a0_29, temp_a0_29, -2);
        temp_a0_30 = sp20.unkC;
        __glMgrInitPixelStateERAM(temp_a0_30, temp_a0_30, -2);
        temp_a0_31 = sp->unk0;
        __glMgrInitPixelStateERAM(temp_a0_31, temp_a0_31, -2);
        temp_a0_32 = sp->unk4;
        __glMgrInitPixelStateERAM(temp_a0_32, temp_a0_32, -2);
        temp_a0_33 = sp->unk8;
        __glMgrInitPixelStateERAM(temp_a0_33, temp_a0_33, -2);
        temp_a0_34 = sp->unkC;
        __glMgrInitPixelStateERAM(temp_a0_34, temp_a0_34, -2);
        temp_a0_35 = sp10.unk0;
        __glMgrInitPixelStateERAM(temp_a0_35, temp_a0_35, -2);
        temp_a0_36 = sp10.unk4;
        __glMgrInitPixelStateERAM(temp_a0_36, temp_a0_36, -2);
        temp_a0_37 = sp10.unk8;
        __glMgrInitPixelStateERAM(temp_a0_37, temp_a0_37, -2);
        temp_a0_38 = sp10.unkC;
        __glMgrInitPixelStateERAM(temp_a0_38, temp_a0_38, -2);
    } else {
        temp_s5 = &sp20 + 0xC;
        temp_a0_39 = sp20.unkC;
        __glMgrInitPixelStateERAM(temp_a0_39, temp_a0_39, -2);
        temp_a0_40 = temp_s5->unk-4;
        __glMgrInitPixelStateERAM(temp_a0_40, temp_a0_40, -2);
        temp_a0_41 = temp_s5->unk-8;
        __glMgrInitPixelStateERAM(temp_a0_41, temp_a0_41, -2);
        temp_a0_42 = temp_s5->unk-C;
        __glMgrInitPixelStateERAM(temp_a0_42, temp_a0_42, -2);
        temp_s5_2 = sp + 0xC;
        temp_a0_43 = sp->unkC;
        __glMgrInitPixelStateERAM(temp_a0_43, temp_a0_43, -2);
        temp_a0_44 = temp_s5_2->unk-4;
        __glMgrInitPixelStateERAM(temp_a0_44, temp_a0_44, -2);
        temp_a0_45 = temp_s5_2->unk-8;
        __glMgrInitPixelStateERAM(temp_a0_45, temp_a0_45, -2);
        temp_a0_46 = temp_s5_2->unk-C;
        __glMgrInitPixelStateERAM(temp_a0_46, temp_a0_46, -2);
        temp_s5_3 = &sp10 + 0xC;
        temp_a0_47 = sp10.unkC;
        __glMgrInitPixelStateERAM(temp_a0_47, temp_a0_47, -2);
        temp_a0_48 = temp_s5_3->unk-4;
        __glMgrInitPixelStateERAM(temp_a0_48, temp_a0_48, -2);
        temp_a0_49 = temp_s5_3->unk-8;
        __glMgrInitPixelStateERAM(temp_a0_49, temp_a0_49, -2);
        temp_a0_50 = temp_s5_3->unk-C;
        __glMgrInitPixelStateERAM(temp_a0_50, temp_a0_50, -2);
        gc->unk598->unk44 = 0x1908;
    }
    __glMgrInitPixelStateERAM(arg3, arg3, -1);
}

void __glMgrInitShiftAdd(__GLcontext *gc, void *arg2, s64 arg3, ...) {
    s64 sp28;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_s8;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;

    temp_s8 = arg2->unk0;
    unksp10 = arg3;
    temp_a0 = gc->unkCC;
    sp28 = (s64) arg2->unk4;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_a2 = gc->unk598->unk0;
    temp_a0_6 = (s32) (((u32) (temp_a2 >> 2) >> 0x1D) + temp_a2) >> 3;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk4;
    temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 2) >> 0x1D) + temp_a2_2) >> 3;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk0;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 7) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk4;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 7) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
    __glMgrInitPixelStateCRAM(temp_s8, temp_s8, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) sp28, sp28, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) unksp10, unksp10, -1);
}

void __glMgrInitShiftAddRGB(__GLcontext *gc, void *arg2, s64 arg3, ...) {
    s64 sp28;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_s8;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;

    temp_s8 = arg2->unk0;
    unksp10 = arg3;
    temp_a0 = gc->unkCC;
    sp28 = (s64) arg2->unk4;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_a2 = gc->unk598->unk18;
    temp_a0_6 = (s32) (((u32) (temp_a2 >> 1) >> 0x1E) + temp_a2) >> 2;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk1C;
    temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 1) >> 0x1E) + temp_a2_2) >> 2;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk18;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 3) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk1C;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 3) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
    __glMgrInitPixelStateCRAM(temp_s8, temp_s8, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) sp28, sp28, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) unksp10, unksp10, -1);
}

void __glMgrInitShiftAddLuminance(__GLcontext *gc, void *arg2, s64 arg3, ...) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_s8;
    s32 *temp_a0_10;
    s32 *temp_a0_11;
    s32 *temp_a1;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;

    temp_s8 = arg2->unk0;
    unksp8 = arg3;
    temp_a0 = gc->unkCC;
    unksp20 = (s64) arg2->unk4;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_a2 = gc->unk598->unk18;
    temp_a0_6 = (s32) (((u32) (temp_a2 >> 1) >> 0x1E) + temp_a2) >> 2;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk1C;
    temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 1) >> 0x1E) + temp_a2_2) >> 2;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk18;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 3) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk1C;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 3) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
    __glMgrInitPixelStateCRAM(temp_s8, temp_s8, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) unksp20, unksp20, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) unksp8, unksp8, -1);
    temp_a1 = gc->unk598;
    temp_a1->unk0 = temp_a1->unk18 * 4;
    temp_a0_10 = gc->unk598;
    temp_a0_10->unk4 = (s32) (temp_a0_10->unk1C * 4);
    gc->unk598->unk64 = 8;
    temp_a0_11 = gc->unk598;
    if (gc->imports.malloc == NULL) {
        temp_a2_7 = temp_a0_11->unk54;
        temp_a3_3 = (temp_a0_11->unk18 + temp_a0_11->unk1C) * 4;
        switch (temp_a2_7) {                        /* irregular */
        case 0:
        case 1:
            temp_a0_11->unk41 = (s8) ((8 - (temp_a3_3 & 7)) & 7);
            break;
        case 4:
            temp_a0_11->unk41 = (s8) ((8 - ((temp_a3_3 * 4) & 7)) & 7);
            break;
        case 2:
        case 3:
            temp_a0_11->unk41 = (s8) ((8 - ((temp_a3_3 * 2) & 7)) & 7);
            break;
        }
    }
    gc->unk598->unk44 = 0x1908;
    gc->unk598->unk4C = 4;
    gc->unk598->unk5C = 0xF;
}

void __glMgrInitI2FState(__GLcontext *gc, __GLcontext **arg2, __GLcontext *arg3, ...) {
    __GLcontext *sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;

    temp_a0 = gc->unkCC;
    sp0 = *arg2;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, 1);
    temp_lo = (s32) gc->unk598->unk0 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk4 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_hi = (s32) gc->unk598->unk0 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_hi, temp_hi, 0);
    temp_hi_2 = (s32) gc->unk598->unk4 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
    __glMgrInitPixelStateERAM(sp0, sp0, -2);
    __glMgrInitPixelStateERAM(arg3, arg3, -1);
}

void __glMgrInitCopyFifoLineState(__GLcontext *gc, __GLcontext *arg3, ...) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;

    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, 1);
    temp_a2 = gc->unk598->unk0;
    temp_a0_6 = (s32) (((u32) (temp_a2 >> 2) >> 0x1D) + temp_a2) >> 3;
    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk4;
    temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 2) >> 0x1D) + temp_a2_2) >> 3;
    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk0;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 7) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateERAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk4;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 7) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateERAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
    __glMgrInitPixelStateERAM(arg3, arg3, -1);
}

void __glMgrInitScaleBiasState(__GLcontext *gc, void *arg1, void *arg2, __GLcontext *arg3, ...) {
    __GLcontext *sp8;
    __GLcontext *sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_s5;
    u32 temp_a3;
    u32 temp_a4_2;
    u32 temp_hi_3;
    u32 var_s4;
    void *temp_a2;
    void *temp_a4;

    if (arg1 != NULL) {
        arg1->unk0 = (f32) (arg2->unk10 + (arg1->unk0 * arg2->unk0));
        arg1->unk4 = (f32) (arg2->unk14 + (arg1->unk4 * arg2->unk4));
        arg1->unk8 = (f32) (arg2->unk18 + (arg1->unk8 * arg2->unk8));
        arg1->unkC = (f32) (arg2->unk1C + (arg1->unkC * arg2->unkC));
    }
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, 1);
    temp_lo = (s32) gc->unk598->unk0 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk4 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_hi = (s32) gc->unk598->unk0 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_hi, temp_hi, 0);
    temp_hi_2 = (s32) gc->unk598->unk4 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
    var_s4 = 0;
    var_s5 = 0;
    do {
        temp_a2 = ((var_s4 + gc->unk108) * 4) + arg2;
        sp0 = temp_a2->unk0;
        sp8 = temp_a2->unk10;
        __glMgrInitPixelStateERAM(sp8, sp8, -2, temp_a2);
        __glMgrInitPixelStateERAM(sp0, sp0, -2);
        temp_a3 = gc->unk598->unk4C;
        temp_hi_3 = (u32) (var_s4 + 1) % temp_a3;
        M2C_TRAP_IF(temp_a3 == 0);
        temp_a4 = ((temp_hi_3 + gc->unk108) * 4) + arg2;
        sp0 = temp_a4->unk0;
        sp8 = temp_a4->unk10;
        __glMgrInitPixelStateERAM(sp8, sp8, -2);
        __glMgrInitPixelStateERAM(sp0, sp0, -2);
        var_s5 += 2;
        temp_a4_2 = gc->unk598->unk4C;
        var_s4 = (u32) (temp_hi_3 + 1) % temp_a4_2;
        M2C_TRAP_IF(temp_a4_2 == 0);
    } while (var_s5 != 0xC);
    __glMgrInitPixelStateERAM(arg3, arg3, -1);
}

void __glMgrInitExpandState(__GLcontext *gc, void *arg1, f32 *arg2, ...) {
    s64 sp20;
    s64 sp18;
    __GLcontext *sp10;
    __GLcontext *spC;
    __GLcontext *sp8;
    __GLcontext *sp4;
    __GLcontext *sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_11;
    __GLcontext *temp_a0_13;
    __GLcontext *temp_a0_14;
    __GLcontext *temp_a0_15;
    __GLcontext *temp_a0_16;
    __GLcontext *temp_a0_17;
    __GLcontext *temp_a0_18;
    __GLcontext *temp_a0_19;
    __GLcontext *temp_a0_20;
    __GLcontext *temp_a0_21;
    __GLcontext *temp_a0_22;
    __GLcontext *temp_a0_23;
    __GLcontext *temp_a0_24;
    __GLcontext *temp_a0_25;
    __GLcontext *temp_a0_26;
    __GLcontext *temp_a0_27;
    __GLcontext *temp_a0_28;
    __GLcontext *temp_a0_29;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    s32 *temp_a1;
    s32 *temp_at;
    s32 *temp_v0;
    s32 temp_a0_10;
    s32 temp_a0_12;
    s32 temp_a0_30;
    s32 temp_a0_31;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_hi;
    s32 temp_hi_10;
    s32 temp_hi_2;
    s32 temp_hi_3;
    s32 temp_hi_4;
    s32 temp_hi_5;
    s32 temp_hi_6;
    s32 temp_hi_7;
    s32 temp_hi_8;
    s32 temp_hi_9;
    s32 temp_lo;
    s32 temp_lo_10;
    s32 temp_lo_11;
    s32 temp_lo_12;
    s32 temp_lo_13;
    s32 temp_lo_14;
    s32 temp_lo_15;
    s32 temp_lo_16;
    s32 temp_lo_17;
    s32 temp_lo_18;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_lo_6;
    s32 temp_lo_7;
    s32 temp_lo_8;
    s32 temp_lo_9;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a0_4;

    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    sp10 = (__GLcontext *)0x3F800000;
    sp8 = arg1->unk8;
    spC = arg1->unkC;
    sp4 = arg1->unk4;
    sp0 = arg1->unk0;
    if ((f64) *arg2 != (second half of f64)) {
        var_a1 = -gc->unk5E4;
    } else {
        var_a1 = 0;
    }
    temp_a0_4 = gc->unk598->unk44 - 0x1900;
    if (temp_a0_4 < 0xBU) {
        sp20 = (s64) var_a1;
        switch (*((temp_a0_4 * 4) + (&sub_0dbf0000 - 0x12C0))) { /* switch 1; unable to parse jump table */
        case 9:                                     /* switch 1 */
            temp_a0_5 = gc->unkD4;
            __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 0);
            temp_lo = (s32) gc->unk598->unk18 / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo, temp_lo, 0);
            temp_hi = (s32) gc->unk598->unk18 % 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi, temp_hi, 0);
            temp_a0_6 = gc->unkD8;
            __glMgrInitPixelStateCRAM(temp_a0_6, temp_a0_6, 1);
            temp_lo_2 = (s32) gc->unk598->unk1C / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
            temp_hi_2 = (s32) gc->unk598->unk1C % 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
            __glMgrInitPixelStateCRAM((__GLcontext *)4, 4, -2);
            __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            __glMgrInitPixelStateCRAM(spC, spC, -2);
            __glMgrInitPixelStateCRAM(sp10, sp10, -2);
            break;
        case 7:                                     /* switch 1 */
            temp_a0_7 = gc->unkD4;
            __glMgrInitPixelStateCRAM(temp_a0_7, temp_a0_7, 0);
            temp_lo_3 = (s32) gc->unk598->unk18 / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_3, temp_lo_3, 0);
            temp_hi_3 = (s32) gc->unk598->unk18 % 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_3, temp_hi_3, 0);
            temp_a0_8 = gc->unkD8;
            __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 1);
            temp_lo_4 = (s32) gc->unk598->unk1C / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_4, temp_lo_4, 1);
            temp_hi_4 = (s32) gc->unk598->unk1C % 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_4, temp_hi_4, 1);
            __glMgrInitPixelStateCRAM((__GLcontext *)6, 6, -2);
            __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            __glMgrInitPixelStateCRAM(spC, spC, -2);
            break;
        case 3:                                     /* switch 1 */
            temp_a0_9 = gc->unkD4;
            __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 0);
            temp_lo_5 = (s32) gc->unk598->unk18 / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_5, temp_lo_5, 0);
            temp_a3 = gc->unk598->unk18;
            M2C_TRAP_IF(6 == 0);
            temp_a0_10 = (temp_a3 % 6) * 4;
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_10, temp_a0_10, 0, 6, temp_a3);
            temp_a0_11 = gc->unkD8;
            __glMgrInitPixelStateCRAM(temp_a0_11, temp_a0_11, 1);
            temp_lo_6 = (s32) gc->unk598->unk1C / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_6, temp_lo_6, 1);
            temp_a3_2 = gc->unk598->unk1C;
            M2C_TRAP_IF(6 == 0);
            temp_a0_12 = (temp_a3_2 % 6) * 4;
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_12, temp_a0_12, 1, 6, temp_a3_2);
            __glMgrInitPixelStateCRAM((__GLcontext *)3, 3, -2);
            __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            __glMgrInitPixelStateCRAM(sp4, sp4, -2);
            __glMgrInitPixelStateCRAM(sp8, sp8, -2);
            __glMgrInitPixelStateCRAM(spC, spC, -2);
            break;
        case 4:                                     /* switch 1 */
            temp_a0_13 = gc->unkD4;
            __glMgrInitPixelStateCRAM(temp_a0_13, temp_a0_13, 0);
            temp_lo_7 = (s32) (gc->unk598->unk18 - 1) / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_7, temp_lo_7, 0);
            temp_a3_3 = gc->unk598->unk18 - 1;
            M2C_TRAP_IF(6 == 0);
            temp_a0_14 = ((temp_a3_3 % 6) * 4) + 3;
            __glMgrInitPixelStateCRAM(temp_a0_14, temp_a0_14, 0, 6, temp_a3_3);
            temp_a0_15 = gc->unkD8;
            __glMgrInitPixelStateCRAM(temp_a0_15, temp_a0_15, 1);
            temp_lo_8 = (s32) (gc->unk598->unk1C - 1) / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_8, temp_lo_8, 1);
            temp_a3_4 = gc->unk598->unk1C - 1;
            M2C_TRAP_IF(6 == 0);
            temp_a0_16 = ((temp_a3_4 % 6) * 4) + 3;
            __glMgrInitPixelStateCRAM(temp_a0_16, temp_a0_16, 1, 6, temp_a3_4);
            __glMgrInitPixelStateCRAM((__GLcontext *)2, 2, -2);
            __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            __glMgrInitPixelStateCRAM(sp8, sp8, -2);
            __glMgrInitPixelStateCRAM(spC, spC, -2);
            __glMgrInitPixelStateCRAM(sp0, sp0, -2);
            break;
        case 5:                                     /* switch 1 */
            temp_a0_17 = gc->unkD4;
            __glMgrInitPixelStateCRAM(temp_a0_17, temp_a0_17, 0);
            temp_lo_9 = (s32) (gc->unk598->unk18 - 1) / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_9, temp_lo_9, 0);
            temp_a3_5 = gc->unk598->unk18 - 1;
            M2C_TRAP_IF(6 == 0);
            temp_a0_18 = ((temp_a3_5 % 6) * 4) + 2;
            __glMgrInitPixelStateCRAM(temp_a0_18, temp_a0_18, 0, 6, temp_a3_5);
            temp_a0_19 = gc->unkD8;
            __glMgrInitPixelStateCRAM(temp_a0_19, temp_a0_19, 1);
            temp_lo_10 = (s32) (gc->unk598->unk1C - 1) / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_10, temp_lo_10, 1);
            temp_a3_6 = gc->unk598->unk1C - 1;
            M2C_TRAP_IF(6 == 0);
            temp_a0_20 = ((temp_a3_6 % 6) * 4) + 2;
            __glMgrInitPixelStateCRAM(temp_a0_20, temp_a0_20, 1, 6, temp_a3_6);
            __glMgrInitPixelStateCRAM((__GLcontext *)1, 1, -2);
            __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            __glMgrInitPixelStateCRAM(spC, spC, -2);
            __glMgrInitPixelStateCRAM(sp0, sp0, -2);
            __glMgrInitPixelStateCRAM(sp4, sp4, -2);
            break;
        case 6:                                     /* switch 1 */
            temp_a0_21 = gc->unkD4;
            __glMgrInitPixelStateCRAM(temp_a0_21, temp_a0_21, 0);
            temp_lo_11 = (s32) (gc->unk598->unk18 - 1) / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_11, temp_lo_11, 0);
            temp_a3_7 = gc->unk598->unk18 - 1;
            M2C_TRAP_IF(6 == 0);
            temp_a0_22 = ((temp_a3_7 % 6) * 4) + 1;
            __glMgrInitPixelStateCRAM(temp_a0_22, temp_a0_22, 0, 6, temp_a3_7);
            temp_a0_23 = gc->unkD8;
            __glMgrInitPixelStateCRAM(temp_a0_23, temp_a0_23, 1);
            temp_lo_12 = (s32) (gc->unk598->unk1C - 1) / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_12, temp_lo_12, 1);
            temp_a3_8 = gc->unk598->unk1C - 1;
            M2C_TRAP_IF(6 == 0);
            temp_a0_24 = ((temp_a3_8 % 6) * 4) + 1;
            __glMgrInitPixelStateCRAM(temp_a0_24, temp_a0_24, 1, 6, temp_a3_8);
            __glMgrInitPixelStateCRAM(NULL, 0, -2);
            __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            __glMgrInitPixelStateCRAM(sp0, sp0, -2);
            __glMgrInitPixelStateCRAM(sp4, sp4, -2);
            __glMgrInitPixelStateCRAM(sp8, sp8, -2);
            break;
        case 10:                                    /* switch 1 */
            temp_a0_25 = gc->unkD4;
            __glMgrInitPixelStateCRAM(temp_a0_25, temp_a0_25, 0);
            temp_lo_13 = (s32) gc->unk598->unk18 / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_13, temp_lo_13, 0);
            temp_hi_5 = (s32) gc->unk598->unk18 % 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_5, temp_hi_5, 0);
            temp_a0_26 = gc->unkD8;
            __glMgrInitPixelStateCRAM(temp_a0_26, temp_a0_26, 1);
            temp_lo_14 = (s32) gc->unk598->unk1C / 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_14, temp_lo_14, 1);
            temp_hi_6 = (s32) gc->unk598->unk1C % 6;
            M2C_TRAP_IF(6 == 0);
            __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_6, temp_hi_6, 1);
            __glMgrInitPixelStateCRAM((__GLcontext *)5, 5, -2);
            __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            sp18 = (s64) sp10;
            __glMgrInitPixelStateCRAM(sp10, sp10, -2);
            __glMgrInitPixelStateCRAM(sp10, sp10, -2);
            break;
        case 0:                                     /* switch 1 */
            sp20 = (s64) var_a1;
            temp_a0_27 = gc->unkD4;
            if (gc->unk100 & 0x2000) {
                __glMgrInitPixelStateCRAM(temp_a0_27, temp_a0_27, 0);
                temp_lo_15 = (s32) gc->unk598->unk18 / 12;
                M2C_TRAP_IF(0xC == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_15, temp_lo_15, 0);
                temp_a3_9 = gc->unk598->unk18;
                temp_hi_7 = temp_a3_9 % 12;
                M2C_TRAP_IF(0xC == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_7, temp_hi_7, 0, 0xC, temp_a3_9);
                temp_a0_28 = gc->unkD8;
                __glMgrInitPixelStateCRAM(temp_a0_28, temp_a0_28, 1);
                temp_lo_16 = (s32) gc->unk598->unk1C / 12;
                M2C_TRAP_IF(0xC == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_16, temp_lo_16, 1);
                temp_hi_8 = (s32) gc->unk598->unk1C % 12;
                M2C_TRAP_IF(0xC == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_8, temp_hi_8, 1);
                __glMgrInitPixelStateCRAM((__GLcontext *)8, 8, -2);
                __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            } else {
                __glMgrInitPixelStateCRAM(temp_a0_27, temp_a0_27, 0);
                temp_lo_17 = (s32) gc->unk598->unk18 / 6;
                M2C_TRAP_IF(6 == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_17, temp_lo_17, 0);
                temp_hi_9 = (s32) gc->unk598->unk18 % 6;
                M2C_TRAP_IF(6 == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_9, temp_hi_9, 0);
                temp_a0_29 = gc->unkD8;
                __glMgrInitPixelStateCRAM(temp_a0_29, temp_a0_29, 1);
                temp_lo_18 = (s32) gc->unk598->unk1C / 6;
                M2C_TRAP_IF(6 == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_18, temp_lo_18, 1);
                temp_hi_10 = (s32) gc->unk598->unk1C % 6;
                M2C_TRAP_IF(6 == 0);
                __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_10, temp_hi_10, 1);
                __glMgrInitPixelStateCRAM((__GLcontext *)7, 7, -2);
                __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -2);
            }
            break;
        }
    }
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk1A0, SYMBOL_LOCATION.unk1A0, -1);
    temp_v0 = gc->unk598;
    temp_v0->unk0 = temp_v0->unk18 * 4;
    temp_at = gc->unk598;
    temp_at->unk4 = (s32) (temp_at->unk1C * 4);
    gc->unk598->unk64 = 8;
    temp_a1 = gc->unk598;
    if (gc->imports.malloc == NULL) {
        temp_a0_30 = temp_a1->unk18 + temp_a1->unk1C;
        if (gc->unk100 & 0x8023) {
            var_a2 = (temp_a0_30 - (gc->unk600 * 2)) * 4;
        } else {
            var_a2 = temp_a0_30 * 4;
        }
        temp_a0_31 = temp_a1->unk54;
        switch (temp_a0_31) {                       /* switch 2; irregular */
        case 0:                                     /* switch 2 */
        case 1:                                     /* switch 2 */
            temp_a1->unk41 = (s8) ((8 - (var_a2 & 7)) & 7);
            break;
        case 4:                                     /* switch 2 */
            temp_a1->unk41 = (s8) ((8 - ((var_a2 * 4) & 7)) & 7);
            break;
        case 2:                                     /* switch 2 */
        case 3:                                     /* switch 2 */
            temp_a1->unk41 = (s8) ((8 - ((var_a2 * 2) & 7)) & 7);
            break;
        }
    }
    gc->unk598->unk44 = 0x1908;
    gc->unk598->unk4C = 4;
    gc->unk598->unk5C = 0xF;
}

void __glMgrInitClampState(__GLcontext *gc, void *arg1, void *arg2, __GLcontext *arg3, ...) {
    __GLcontext *sp8;
    __GLcontext **temp_a2;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    f64 temp_f6;
    f64 temp_f6_2;
    f64 temp_f6_3;
    f64 temp_f6_4;
    f64 var_f6;
    f64 var_f7;
    f64 var_f7_2;
    f64 var_f7_3;
    f64 var_f7_4;
    f64 var_f7_5;
    f64 var_f7_6;
    f64 var_f7_7;
    f64 var_f8;
    f64 var_f8_2;
    f64 var_f8_3;
    s32 temp_a0_6;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_s0;
    s32 var_s5_2;
    u32 temp_a0_7;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_hi_3;
    u32 var_f4;
    u32 var_s5;

    if (arg1 != NULL) {
        var_a0 = 1;
        temp_f6 = (f64) arg1->unk0;
        if (!(temp_f6 < 1.0)) {
            var_a0 = 0;
        }
        var_f4 = 0;
        if (var_a0 != 0) {
            var_f7 = temp_f6;
        } else {
            var_f7 = 1.0;
        }
        var_f7_2 = GLUE_F64(0x3FF0000000000000U, 0U);
        if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7) {
            var_f8 = second half of f64;
            if (var_a0 == 0) {
                var_f8 = 1.0;
            }
            var_f7_2 = var_f8;
        }
        temp_f6_2 = (f64) arg1->unk4;
        var_a0_2 = 1;
        if (!(temp_f6_2 < 1.0)) {
            var_a0_2 = 0;
        }
        arg1->unk0 = (f32) ((f64) arg2->unk0 * var_f7_2);
        if (var_a0_2 != 0) {
            var_f7_3 = temp_f6_2;
        } else {
            var_f7_3 = 1.0;
        }
        var_f7_4 = GLUE_F64(0x3FF0000000000000U, 0U);
        if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_3) {
            var_f8_2 = second half of f64;
            if (var_a0_2 == 0) {
                var_f8_2 = 1.0;
            }
            var_f7_4 = var_f8_2;
        }
        temp_f6_3 = (f64) arg1->unk8;
        var_a0_3 = 1;
        if (!(temp_f6_3 < 1.0)) {
            var_a0_3 = 0;
        }
        arg1->unk4 = (f32) ((f64) arg2->unk4 * var_f7_4);
        if (var_a0_3 != 0) {
            var_f7_5 = temp_f6_3;
        } else {
            var_f7_5 = 1.0;
        }
        var_f7_6 = GLUE_F64(0x3FF0000000000000U, 0U);
        if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_5) {
            var_f8_3 = second half of f64;
            if (var_a0_3 == 0) {
                var_f8_3 = 1.0;
            }
            var_f7_6 = var_f8_3;
        }
        temp_f6_4 = (f64) arg1->unkC;
        var_a0_4 = 1;
        if (!(temp_f6_4 < 1.0)) {
            var_a0_4 = 0;
        }
        arg1->unk8 = (f32) ((f64) arg2->unk8 * var_f7_6);
        if (var_a0_4 != 0) {
            var_f7_7 = temp_f6_4;
            var_f6 = second half of f64;
        } else {
            var_f7_7 = 1.0;
            var_f6 = second half of f64;
        }
        if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_7) {
            var_f4 = (bitwise u32) var_f6;
            if (var_a0_4 == 0) {
                var_f4 = (bitwise u32) (second half of f64);
            }
        }
        arg1->unkC = (f32) ((f64) arg2->unkC * (bitwise f64) var_f4);
    }
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, 1);
    temp_lo = (s32) gc->unk598->unk0 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk4 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_hi = (s32) gc->unk598->unk0 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_hi, temp_hi, 0);
    temp_hi_2 = (s32) gc->unk598->unk4 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
    temp_a0_6 = gc->unk598->unk44;
    switch (temp_a0_6) {                            /* switch 1; irregular */
    default:                                        /* switch 1 */
        var_s5 = 0;
        var_s0 = 0;
        do {
            sp8 = *((var_s5 * 4) + arg2);
            __glMgrInitPixelStateERAM(sp8, sp8, -2);
            var_s0 += 2;
            temp_a0_7 = gc->unk598->unk4C;
            temp_a3 = var_s5 + 1;
            temp_hi_3 = temp_a3 % temp_a0_7;
            temp_a2 = (temp_hi_3 * 4) + arg2;
            M2C_TRAP_IF(temp_a0_7 == 0);
            sp8 = *temp_a2;
            __glMgrInitPixelStateERAM(sp8, sp8, -2, temp_a2, temp_a3);
            temp_a4 = gc->unk598->unk4C;
            var_s5 = (u32) (temp_hi_3 + 1) % temp_a4;
            M2C_TRAP_IF(temp_a4 == 0);
        } while (var_s0 != 0xC);
        break;
    case 0x1903:                                    /* switch 1 */
    case 0x1905:                                    /* switch 1 */
        /* fallthrough */
    case 0x1904:                                    /* switch 1 */
    case 0x1906:                                    /* switch 1 */
        if (temp_a0_6 != 0x1903) {
            switch (temp_a0_6) {                    /* switch 2; irregular */
            default:                                /* switch 2 */
                var_s5_2 = sp0;
                break;
            case 0x1904:                            /* switch 2 */
                var_s5_2 = 1;
                break;
            case 0x1905:                            /* switch 2 */
                var_s5_2 = 2;
                break;
            case 0x1906:                            /* switch 2 */
                var_s5_2 = 3;
                break;
            }
        } else {
            var_s5_2 = 0;
        }
        sp8 = *((var_s5_2 * 4) + arg2);
        __glMgrInitPixelStateERAM(sp8, sp8, -2, 0x1903);
        if (1 != 0xC) {
            __glMgrInitPixelStateERAM(sp8, sp8, -2);
            if (2 != 0xC) {
                __glMgrInitPixelStateERAM(sp8, sp8, -2);
                if (3 != 0xC) {
                    __glMgrInitPixelStateERAM(sp8, sp8, -2);
                    if (4 != 0xC) {
                        __glMgrInitPixelStateERAM(sp8, sp8, -2);
                        if (5 != 0xC) {
                            __glMgrInitPixelStateERAM(sp8, sp8, -2);
                            if (6 != 0xC) {
                                __glMgrInitPixelStateERAM(sp8, sp8, -2);
                                if (7 != 0xC) {
                                    __glMgrInitPixelStateERAM(sp8, sp8, -2);
                                    if (8 != 0xC) {
                                        __glMgrInitPixelStateERAM(sp8, sp8, -2);
                                        if (9 != 0xC) {
                                            __glMgrInitPixelStateERAM(sp8, sp8, -2);
                                            if (0xA != 0xC) {
                                                __glMgrInitPixelStateERAM(sp8, sp8, -2);
                                                if (0xB != 0xC) {
                                                    __glMgrInitPixelStateERAM(sp8, sp8, -2);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        break;
    }
    __glMgrInitPixelStateERAM(arg3, arg3, -1);
}

void __glMgrInitLUTState(__GLcontext *gc, __GLcontext *arg1, s64 arg2, s64 arg3, s32 arg4, u32 arg5, f64 fparg6, ...) {
    s64 sp38;
    s64 sp30;
    f64 sp28;
    __GLcontext *sp20;
    __GLcontext *sp18;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_12;
    __GLcontext *temp_a0_13;
    __GLcontext *temp_a0_15;
    __GLcontext *temp_a0_16;
    __GLcontext *temp_a0_17;
    __GLcontext *temp_a0_18;
    __GLcontext *temp_a0_19;
    __GLcontext *temp_a0_20;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_a1_2;
    __GLcontext *temp_a6;
    __GLcontext *temp_at;
    __GLcontext *temp_at_2;
    __GLcontext *temp_v0;
    __GLcontext *temp_v1;
    __GLcontext *var_a0;
    s32 temp_a0_10;
    s32 temp_a0_11;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_hi_3;
    s32 temp_hi_4;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    u32 temp_a0_14;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s1_4;

    sp28 = fparg6;
    sp38 = arg3;
    sp30 = arg2;
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, 1);
    temp_a4 = gc->unk598->unk0;
    if (gc->unk100 & 0x2000) {
        temp_lo = (s32) (temp_a4 >> 1) / 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_lo, temp_lo, 0);
        temp_lo_2 = (s32) ((s32) gc->unk598->unk4 >> 1) / 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
        temp_hi = (s32) ((s32) gc->unk598->unk0 >> 1) % 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_hi, temp_hi, 0);
        temp_hi_2 = (s32) ((s32) gc->unk598->unk4 >> 1) % 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
    } else if (gc->unk3E4 & 2) {
        if (gc->imports.other != (void *)2) {
            temp_a2 = temp_a4 >> 2;
            temp_a0_6 = (s32) (((u32) (temp_a2 >> 2) >> 0x1D) + temp_a2) >> 3;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
            temp_a2_2 = (s32) gc->unk598->unk4 >> 2;
            temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 2) >> 0x1D) + temp_a2_2) >> 3;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
            temp_a2_3 = (s32) gc->unk598->unk0 >> 2;
            temp_a3 = temp_a2_3 >> 0x1F;
            temp_a2_4 = temp_a2_3 >> 0x1F;
            temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 7) ^ temp_a2_4) - temp_a2_4;
            __glMgrInitPixelStateERAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
            temp_a2_5 = (s32) gc->unk598->unk4 >> 2;
            temp_a3_2 = temp_a2_5 >> 0x1F;
            temp_a2_6 = temp_a2_5 >> 0x1F;
            temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 7) ^ temp_a2_6) - temp_a2_6;
            __glMgrInitPixelStateERAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
        } else {
            temp_a2_7 = temp_a4 >> 1;
            temp_a0_10 = (s32) (((u32) (temp_a2_7 >> 2) >> 0x1D) + temp_a2_7) >> 3;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_10, temp_a0_10, 0, temp_a2_7);
            temp_a2_8 = (s32) gc->unk598->unk4 >> 1;
            temp_a0_11 = (s32) (((u32) (temp_a2_8 >> 2) >> 0x1D) + temp_a2_8) >> 3;
            __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_11, temp_a0_11, 1, temp_a2_8);
            temp_a2_9 = (s32) gc->unk598->unk0 >> 1;
            temp_a3_3 = temp_a2_9 >> 0x1F;
            temp_a2_10 = temp_a2_9 >> 0x1F;
            temp_a0_12 = ((((temp_a2_9 ^ temp_a3_3) - temp_a3_3) & 7) ^ temp_a2_10) - temp_a2_10;
            __glMgrInitPixelStateERAM(temp_a0_12, temp_a0_12, 0, temp_a2_10, temp_a3_3);
            temp_a2_11 = (s32) gc->unk598->unk4 >> 1;
            temp_a3_4 = temp_a2_11 >> 0x1F;
            temp_a2_12 = temp_a2_11 >> 0x1F;
            temp_a0_13 = ((((temp_a2_11 ^ temp_a3_4) - temp_a3_4) & 7) ^ temp_a2_12) - temp_a2_12;
            __glMgrInitPixelStateERAM(temp_a0_13, temp_a0_13, 1, temp_a2_12, temp_a3_4);
        }
    } else {
        temp_lo_3 = temp_a4 / 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_3, temp_lo_3, 0);
        temp_lo_4 = (s32) gc->unk598->unk4 / 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_4, temp_lo_4, 1);
        temp_hi_3 = (s32) gc->unk598->unk0 % 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_hi_3, temp_hi_3, 0);
        temp_hi_4 = (s32) gc->unk598->unk4 % 24;
        M2C_TRAP_IF(0x18 == 0);
        __glMgrInitPixelStateERAM((__GLcontext *) temp_hi_4, temp_hi_4, 1);
    }
    temp_a1 = gc->unk1A4;
    if (temp_a1 & arg5) {
        if (arg5 >= 0x20U) {
            if (arg5 >= 0x21U) {
                if (arg5 >= 0x2000U) {
                    if (arg5 >= 0x2001U) {
                        if (arg5 == 0x4000) {
                            gc->unk1A4 = temp_a1 & ~0x4000;
                        }
                    } else {
                        gc->unk1A4 = temp_a1 & ~0x2000;
                    }
                } else if (arg5 == 0x1000) {
                    gc->unk1A4 = temp_a1 & ~0x1000;
                }
            } else {
                goto block_11;
            }
        } else {
            switch (arg5) {                         /* switch 1; irregular */
            case 4:                                 /* switch 1 */
                gc->unk1A4 = temp_a1 & ~4;
                break;
            case 16:                                /* switch 1 */
block_11:
                gc->unk1A4 = ~arg5 & (temp_a1 | 0x38);
                break;
            }
        }
        temp_a0_14 = gc->unk598->unk44 - 0x1900;
        if (temp_a0_14 < 0xBU) {
            switch (*((temp_a0_14 * 4) + (&sub_0dbf0000 - 0x1290))) { /* switch 2; unable to parse jump table */
            case 8:                                 /* switch 2 */
                temp_v0 = sp38->unk4;
                sp->unk14 = temp_v0;
                temp_at = sp38->unk0;
                sp->unkC = temp_v0;
                sp->unk4 = temp_v0;
                sp->unk10 = temp_at;
                sp->unk8 = temp_at;
                sp->unk0 = temp_at;
                break;
            case 7:                                 /* switch 2 */
                temp_at_2 = sp38->unk8;
                sp->unk14 = temp_at_2;
                temp_a6 = sp38->unk4;
                sp->unk8 = temp_at_2;
                temp_v1 = sp38->unk0;
                sp->unk10 = temp_a6;
                sp->unk4 = temp_a6;
                sp->unkC = temp_v1;
                sp->unk0 = temp_v1;
                break;
            case 0:                                 /* switch 2 */
            case 1:                                 /* switch 2 */
            case 3:                                 /* switch 2 */
            case 4:                                 /* switch 2 */
            case 5:                                 /* switch 2 */
            case 6:                                 /* switch 2 */
            case 9:                                 /* switch 2 */
            case 10:                                /* switch 2 */
                temp_a1_2 = sp38->unk0;
                sp->unk14 = temp_a1_2;
                sp->unk10 = temp_a1_2;
                sp->unkC = temp_a1_2;
                sp->unk8 = temp_a1_2;
                sp->unk4 = temp_a1_2;
                sp->unk0 = temp_a1_2;
                break;
            }
        }
        if (arg4 != 0x100) {
            if (arg4 != 0x400) {
                var_a0 = sp18;
                if (arg4 == 0x1000) {
                    var_a0 = (__GLcontext *)0xE;
                }
            } else {
                var_a0 = (__GLcontext *)0xD;
            }
        } else {
            var_a0 = (__GLcontext *)0xC;
        }
        __glMgrInitPixelStateERAM(var_a0, var_a0, -2);
        __glMgrInitPixelStateERAM((__GLcontext *) sp30, sp30, -2);
        temp_a0_15 = sp->unk0;
        __glMgrInitPixelStateERAM(temp_a0_15, temp_a0_15, -2);
        temp_s1 = sp + 4;
        if (temp_s1 != &sp18) {
            temp_a0_16 = sp->unk4;
            __glMgrInitPixelStateERAM(temp_a0_16, temp_a0_16, -2);
            temp_s1_2 = temp_s1 + 4;
            if (temp_s1_2 != &sp18) {
                temp_a0_17 = temp_s1->unk4;
                __glMgrInitPixelStateERAM(temp_a0_17, temp_a0_17, -2);
                temp_s1_3 = temp_s1_2 + 4;
                if (temp_s1_3 != &sp18) {
                    temp_a0_18 = temp_s1_2->unk4;
                    __glMgrInitPixelStateERAM(temp_a0_18, temp_a0_18, -2);
                    temp_s1_4 = temp_s1_3 + 4;
                    if (temp_s1_4 != &sp18) {
                        temp_a0_19 = temp_s1_3->unk4;
                        __glMgrInitPixelStateERAM(temp_a0_19, temp_a0_19, -2);
                        if ((temp_s1_4 + 4) != &sp18) {
                            temp_a0_20 = temp_s1_4->unk4;
                            __glMgrInitPixelStateERAM(temp_a0_20, temp_a0_20, -2);
                        }
                    }
                }
            }
        }
        sp20 = (bitwise __GLcontext *) sp28;
        __glMgrInitPixelStateERAM(sp20, sp20, -2);
        __glMgrInitPixelStateERAM(arg1, arg1, -1);
        return;
    }
    __glMgrInitPixelStateERAM(arg1, arg1, -1);
}

void __glMgrInitLUTRGB(__GLcontext *gc, void *arg1, void *arg2, s64 arg3, ...) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    f64 sp50;
    s16 sp4A;
    s16 sp48;
    void *sp44;
    void *sp40;
    void *sp3C;
    void *sp38;
    void *sp34;
    void *sp30;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    f32 temp_f4;
    s32 *var_a3_2;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_lo;
    s32 temp_ra;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_s5;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t8;
    s64 temp_a5_5;
    s64 var_s1;
    s64 var_t9;
    u8 temp_s4;
    void **var_t3;
    void *temp_a0_2;
    void *temp_a4;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_4;
    void *temp_a6_2;
    void *temp_a6_4;
    void *temp_at;
    void *temp_at_2;
    void *temp_at_3;
    void *temp_v1;
    void *temp_v1_4;
    void *temp_v1_5;

    if (__glBeginMode != 1) {
        temp_s4 = arg2->unk1;
        temp_f4 = (f32) ((u64) ((s64) arg2->unk8 << 0x20) >> 0x20);
        if (arg1 != NULL) {
            arg1->unk0 = (f32) *(__glCurrentContext->unk408 + ((s32) arg1->unk0 * 4));
            arg1->unk4 = (f32) *(__glCurrentContext->unk414 + ((s32) arg1->unk4 * 4));
            arg1->unk8 = (f32) *(__glCurrentContext->unk420 + ((s32) arg1->unk8 * 4));
            arg1->unkC = (f32) *(__glCurrentContext->unk42C + ((s32) arg1->unkC * 4));
        }
        temp_a6 = gc->unk1A4 & 0x20;
        if (temp_a6 != 0) {
            sp10.unk14 = 0;
            sp10.unk10 = 0;
            sp10.unkC = 0;
            sp10.unk8 = 0;
            sp10.unk4 = 0;
            sp10.unk0 = 0;
            temp_a0 = gc->unk598->unk44;
            switch (temp_a0) {                      /* irregular */
            default:
                var_a3 = sp14;
                var_a0 = sp10;
                var_s5 = sp28;
                var_a1 = sp18;
                var_a4 = sp1C;
                break;
            case 0x1908:
                var_s5 = 2;
                var_a3 = __glCurrentContext->unk40C;
                var_a1 = __glCurrentContext->unk418;
                var_a4 = __glCurrentContext->unk424;
                sp38 = __glCurrentContext->unk420;
                sp34 = __glCurrentContext->unk414;
                sp30 = __glCurrentContext->unk408;
                sp1C = var_a4;
                sp18 = var_a1;
                sp3C = __glCurrentContext->unk42C;
                var_a0 = __glCurrentContext->unk400;
                sp14 = var_a3;
                sp10 = var_a0;
                break;
            case 0x1907:
                var_s5 = 3;
                temp_a4 = __glCurrentContext->unk408;
                var_a0 = __glCurrentContext->unk400;
                var_a3 = __glCurrentContext->unk40C;
                temp_a6_2 = __glCurrentContext->unk420;
                temp_a5 = __glCurrentContext->unk414;
                var_a1 = __glCurrentContext->unk418;
                sp44 = temp_a6_2;
                sp40 = temp_a5;
                sp38 = temp_a6_2;
                sp34 = temp_a5;
                sp24 = var_a1;
                sp20 = var_a3;
                sp18 = var_a1;
                sp14 = var_a3;
                sp10 = var_a0;
                sp3C = temp_a4;
                sp30 = temp_a4;
                var_a4 = var_a0;
                sp1C = var_a0;
                break;
            case 0x1903:
                var_a1 = sp18;
                var_a4 = sp1C;
                temp_at = __glCurrentContext->unk408;
                var_s5 = 1;
                var_a3 = __glCurrentContext->unk400;
                sp30 = temp_at;
                sp34 = temp_at;
                sp14 = var_a3;
                var_a0 = var_a3;
                sp10 = var_a3;
                break;
            case 0x1904:
                var_a1 = sp18;
                var_a4 = sp1C;
                temp_v1 = __glCurrentContext->unk414;
                var_s5 = 1;
                var_a3 = __glCurrentContext->unk40C;
                sp30 = temp_v1;
                sp34 = temp_v1;
                sp14 = var_a3;
                var_a0 = var_a3;
                sp10 = var_a3;
                break;
            case 0x1905:
                var_a1 = sp18;
                var_a4 = sp1C;
                var_a3 = __glCurrentContext->unk418;
                temp_a0_2 = __glCurrentContext->unk420;
                var_s5 = 1;
                sp14 = var_a3;
                sp30 = temp_a0_2;
                sp34 = temp_a0_2;
                var_a0 = var_a3;
                sp10 = var_a3;
                break;
            case 0x1906:
                var_a1 = sp18;
                var_a4 = sp1C;
                temp_a5_2 = __glCurrentContext->unk42C;
                var_s5 = 1;
                var_a3 = __glCurrentContext->unk424;
                sp30 = temp_a5_2;
                sp34 = temp_a5_2;
                sp14 = var_a3;
                var_a0 = var_a3;
                sp10 = var_a3;
                break;
            }
            temp_a6_3 = var_a3 < var_a0;
            var_a2 = var_a3;
            if (temp_a6_3 != 0) {
                var_a2 = var_a0;
            }
            var_a0_2 = var_a2;
            if (var_a2 < var_a1) {
                var_a0_2 = var_a1;
            }
            var_a1_2 = var_a0_2;
            if (var_a0_2 < var_a4) {
                var_a1_2 = var_a4;
            }
            temp_a5_3 = var_a1_2 < 0x401;
            if (var_a1_2 < 0x101) {
                sp78 = arg3;
                sp50 = (bitwise f64) temp_f4;
                var_s1 = 0x100;
            } else if (temp_a5_3 != 0) {
                sp78 = arg3;
                sp50 = (bitwise f64) temp_f4;
                var_s1 = 0x400;
            } else {
                sp78 = arg3;
                sp50 = (bitwise f64) temp_f4;
                var_s1 = 0x1000;
            }
            temp_lo = var_s1 * var_s5;
            __glMgrAllocERAM((__GLcontext *) temp_lo, temp_lo, 0x20, var_a2, var_a3, var_a4, temp_a5_3, temp_a6_3, __glCurrentContext);
            sp58 = 0;
            if (var_s5 > 0) {
                var_t3 = &sp30;
                var_a3_2 = &sp10;
                sp68 = (s64) ((var_s5 * 4) + sp);
loop_22:
                var_t9 = sp58;
                *sp60 = (s32) sp58;
                var_a0_3 = 0;
                if (temp_s4 != 0) {
                    sp70 = var_s1;
                } else {
                    temp_t1 = var_a3_2->unk4;
                    temp_t2 = var_a3_2->unk0;
                    var_t0 = temp_t1;
                    if (temp_t1 < temp_t2) {
                        var_t0 = temp_t2;
                    }
                    sp70 = (s64) var_t0;
                }
                if (sp70 > 0) {
loop_32:
                    if (temp_s4 != 0) {
                        goto block_33;
                    }
                    temp_t0 = sp70 - var_a0_3;
                    var_t8 = temp_t0;
                    if (temp_t0 < 0x100) {

                    } else {
block_33:
                        var_t8 = 0x100;
                    }
                    *(s32 *)0x74080 = 0x8904;
                    *(s32 *)0x74080 = (s32) (((u32) (var_t8 >> 1) >> 0x1E) + var_t8) >> 2;
                    temp_ra = var_t8 + 6;
                    temp_v1_2 = var_t8 >> 0x1F;
                    temp_v1_3 = var_t8 >> 0x1F;
                    *(s32 *)0x74080 = ((temp_ra * 4) & 0xFFFFF) | 0x80000000;
                    *(s32 *)0x74080 = ((((var_t8 ^ temp_v1_2) - temp_v1_2) & 3) ^ temp_v1_3) - temp_v1_3;
                    *(s32 *)0x74080 = var_t8 * 4;
                    var_t0_2 = 0;
                    *(s32 *)0x74080 = M2C_ERROR(/* Read from unset register $v0 */);
                    *(s32 *)0x74080 = 0;
                    *(s32 *)0x74080 = (s32) var_t9;
                    *(s32 *)0x74080 = var_t8;
                    if (var_t8 > 0) {
                        temp_t2_2 = var_a3_2->unk0;
                        temp_t1_2 = var_a3_2->unk4;
                        if (var_t8 & 1) {
                            if (var_a0_3 >= temp_t2_2) {
                                sp48 = 0xFFFF;
                            } else {
                                temp_v1_4 = var_t3->unk0 + 4;
                                var_t3->unk0 = temp_v1_4;
                                sp48 = (s16) (s32) (temp_v1_4->unk-4 * 65535.0f);
                            }
                            var_a0_3 += 1;
                            if (var_a0_3 < temp_t1_2) {
                                temp_a5_4 = var_t3->unk4 + 4;
                                var_t3->unk4 = temp_a5_4;
                                sp4A = (s16) (s32) (temp_a5_4->unk-4 * 65535.0f);
                            } else {
                                sp4A = 0xFFFF;
                            }
                            var_t0_2 = 1;
                            *(s32 *)0x74080 = (s32) sp48;
                        }
                        var_a6 = var_a0_3 < temp_t2_2;
                        if ((var_t8 >> 1) != 0) {
loop_43:
                            if (var_a6 != 0) {
                                temp_v1_5 = var_t3->unk0 + 4;
                                var_t3->unk0 = temp_v1_5;
                                sp48 = (s16) (s32) (temp_v1_5->unk-4 * 65535.0f);
                            } else {
                                sp48 = 0xFFFF;
                            }
                            temp_a0_3 = var_a0_3 + 1;
                            if (var_a0_3 >= temp_t1_2) {
                                sp4A = 0xFFFF;
                            } else {
                                temp_at_2 = var_t3->unk4 + 4;
                                var_t3->unk4 = temp_at_2;
                                sp4A = (s16) (s32) (temp_at_2->unk-4 * 65535.0f);
                            }
                            *(s32 *)0x74080 = (s32) sp48;
                            if (temp_a0_3 < temp_t2_2) {
                                temp_at_3 = var_t3->unk0 + 4;
                                var_t3->unk0 = temp_at_3;
                                sp48 = (s16) (s32) (temp_at_3->unk-4 * 65535.0f);
                            } else {
                                sp48 = 0xFFFF;
                            }
                            var_t0_2 += 2;
                            var_a0_3 = temp_a0_3 + 1;
                            if (temp_a0_3 < temp_t1_2) {
                                temp_a6_4 = var_t3->unk4 + 4;
                                var_t3->unk4 = temp_a6_4;
                                sp4A = (s16) (s32) (temp_a6_4->unk-4 * 65535.0f);
                            } else {
                                sp4A = 0xFFFF;
                            }
                            *(s32 *)0x74080 = (s32) sp48;
                            if (var_t8 != var_t0_2) {
                                var_a6 = var_a0_3 < temp_t2_2;
                                goto loop_43;
                            }
                        }
                    }
                    var_t9 += var_t8;
                    if (temp_ra & 1) {
                        *(s32 *)0x74080 = 0;
                    }
                    if (var_a0_3 < sp70) {
                        goto loop_32;
                    }
                }
                var_a3_2 += 8;
                var_t3 += 8;
                temp_a5_5 = sp60 + 4;
                sp60 = temp_a5_5;
                sp58 += var_s1;
                if (temp_a5_5 != sp68) {
                    goto loop_22;
                }
            }
            __glMgrInitLUTState(gc, gc, sp78, M2C_ERROR(/* Read from unset register $v0 */), sp, var_s1, 0x20);
            return;
        }
        __glMgrInitLUTState(gc, gc, arg3, 0, sp, 0, 0x20, temp_a6, __glCurrentContext, temp_f4);
        return;
    }
    __glSetError(0x502, __glCurrentContext);
}

void __glMgrInitColorTable(__GLcontext *gc, void *arg1, void *arg2, s64 arg3, ...) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    f64 sp48;
    s16 sp42;
    s16 sp40;                                       /* compiler-managed */
    s8 sp35;
    u8 sp34;
    u8 sp33;
    s8 sp32;
    u8 sp31;
    u8 sp30;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;                                        /* compiler-managed */
    s32 sp4;                                        /* compiler-managed */
    s32 sp0;                                        /* compiler-managed */
    f32 *temp_t1;
    f32 *temp_t1_2;
    f32 *temp_t1_3;
    f32 *temp_t2;
    f32 *temp_t2_2;
    f32 *temp_t2_3;
    f32 *var_a7;
    f32 temp_f4;
    f32 temp_f5;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s6;
    s32 temp_t9;
    s32 temp_v1;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a6;
    s32 var_ra;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_t8;
    s32 var_v1;
    s64 temp_at_5;
    s64 var_s1;
    s8 temp_a6_4;
    u32 temp_a0_2;
    u8 *var_t3;
    u8 temp_a1;
    u8 temp_at_2;
    u8 temp_at_3;
    u8 temp_at_4;
    u8 temp_v1_2;
    void *temp_a2;
    void *var_a5;
    void *var_a6_2;

    if (__glBeginMode != 1) {
        temp_s4 = arg2->unk4;
        temp_s0 = arg2->unk0;
        temp_f4 = (f32) ((u64) ((s64) arg2->unk8 << 0x20) >> 0x20);
        if (temp_s0 & 0x1000) {
            var_a2 = 0x838C;
        } else if (!(temp_s0 & 0x2000)) {
            var_a2 = 0x8440;
        } else {
            var_a2 = 0x8404;
        }
        temp_a2 = __glCurrentContext + var_a2;
        temp_a0 = temp_a2->unkC;
        temp_a3 = temp_a2->unk14;
        var_a6 = 0x1908;
        temp_s3 = temp_a2->unk10;
        if (temp_a0 != 0x1908) {
            var_a7 = (f32 *)0x1907;
            if (temp_a0 != 0x1907) {
                if (temp_a0 != 0x1909) {
                    var_a6 = 0x1906;
                    if (temp_a0 != 0x190A) {
                        var_a7 = (f32 *)0x8049;
                        if (temp_a0 != 0x1906) {
                            if (temp_a0 == 0x8049) {
                                temp_at = temp_a2->unk0;
                                sp18 = 1;
                                sp0 = temp_at;
                                sp4 = temp_at;
                                sp8 = temp_at;
                                spC = temp_at;
                            }
                        } else {
                            sp18 = 1;
                            sp0 = 0;
                            sp4 = 0;
                            sp8 = 0;
                            spC = temp_a2->unk0;
                        }
                    } else {
                        temp_a6 = temp_a2->unk0;
                        var_a7 = (f32 *)2;
                        sp18 = 2;
                        sp0 = temp_a6;
                        sp4 = temp_a6;
                        sp8 = temp_a6;
                        var_a6 = temp_a6 + 4;
                        spC = var_a6;
                    }
                } else {
                    temp_v1 = temp_a2->unk0;
                    sp18 = 1;
                    spC = 0;
                    sp0 = temp_v1;
                    sp4 = temp_v1;
                    sp8 = temp_v1;
                }
            } else {
                spC = 0;
                temp_a6_2 = temp_a2->unk0;
                sp18 = 3;
                sp0 = temp_a6_2;
                var_a7 = temp_a6_2 + 8;
                sp8 = var_a7;
                var_a6 = temp_a6_2 + 4;
                sp4 = var_a6;
            }
        } else {
            temp_a6_3 = temp_a2->unk0;
            sp18 = 4;
            sp0 = temp_a6_3;
            spC = temp_a6_3 + 0xC;
            var_a7 = temp_a6_3 + 8;
            sp8 = var_a7;
            var_a6 = temp_a6_3 + 4;
            sp4 = var_a6;
        }
        if (arg1 != NULL) {
            if (sp0 != 0) {
                var_a6 = sp18;
                arg1->unk0 = (f32) *(((s32) arg1->unk0 * var_a6 * 4) + sp0);
            }
            if (sp4 != 0) {
                var_a7 = ((s32) arg1->unk4 * sp18 * 4) + sp4;
                arg1->unk4 = (f32) *var_a7;
            }
            if (sp8 != NULL) {
                var_a7 = (f32 *) (s32) arg1->unk8;
                var_a6 = (s32) (((s32) var_a7 * sp18 * 4) + sp8);
                arg1->unk8 = (f32) *var_a6;
            }
            if (spC != 0) {
                var_a6 = (s32) arg1->unkC;
                var_a7 = (f32 *) sp18;
                arg1->unkC = (f32) *((var_a6 * (s32) var_a7 * 4) + spC);
            }
        }
        if (gc->unk1A4 & temp_s0) {
            temp_a0_2 = gc->unk598->unk44 - 0x1903;
            var_a6_2 = &sub_0dbf0000 - 0x1260;
            if (temp_a0_2 < 8U) {
                var_a6_2 = *((temp_a0_2 * 4) + var_a6_2);
                switch (var_a6_2) {                 /* unable to parse jump table */
                case 5:
                    var_s5 = 2;
                    var_a6_2 = (void *) (temp_a3 & 4);
                    sp33 = temp_a3 & 1;
                    sp32 = temp_a3 & 2;
                    sp31 = (u8) var_a6_2;
                    sp30 = temp_a3 & 8;
                    break;
                case 4:
                    var_s5 = 3;
                    temp_at_2 = temp_a3 & 8;
                    sp30 = temp_at_2;
                    sp33 = temp_at_2;
                    sp14 = (s32) sp8;
                    temp_v1_2 = temp_a3 & 4;
                    temp_a6_4 = temp_a3 & 2;
                    sp32 = temp_a6_4;
                    sp35 = temp_a6_4;
                    var_a6_2 = (void *) sp4;
                    sp31 = temp_v1_2;
                    sp34 = temp_v1_2;
                    sp10 = (s32) var_a6_2;
                    spC = sp0;
                    break;
                case 0:
                case 6:
                    var_s5 = 1;
                    temp_at_3 = temp_a3 & 8;
                    sp30 = temp_at_3;
                    sp31 = temp_at_3;
                    sp4 = sp0;
                    break;
                case 1:
                    var_s5 = 1;
                    var_a6_2 = (void *) (temp_a3 & 4);
                    sp30 = (u8) var_a6_2;
                    sp31 = (u8) var_a6_2;
                    sp0 = sp4;
                    break;
                case 2:
                    var_s5 = 1;
                    temp_at_4 = temp_a3 & 2;
                    sp30 = temp_at_4;
                    sp31 = temp_at_4;
                    sp0 = sp8;
                    sp4 = sp8;
                    break;
                case 3:
                    var_s5 = 1;
                    var_a6_2 = (void *) (temp_a3 & 1);
                    sp30 = (u8) var_a6_2;
                    sp31 = (u8) var_a6_2;
                    sp0 = spC;
                    sp4 = spC;
                    break;
                case 7:
                    temp_a1 = temp_a3 & 1;
                    sp4 = spC;
                    if (gc->unk3E4 & 2) {
                        sp30 = temp_a1;
                        sp0 = spC;
                    } else {
                        var_a6_2 = (void *) (temp_a3 & 8);
                        sp30 = (u8) var_a6_2;
                    }
                    var_s5 = 1;
                    sp31 = temp_a1;
                    break;
                }
            } else {
                var_s5 = sp38;
            }
            temp_a7 = temp_s3 < 0x101;
            if (temp_a7 != 0) {
                sp68 = arg3;
                sp48 = (bitwise f64) temp_f4;
                var_s1 = 0x100;
            } else if (temp_s3 < 0x401) {
                sp68 = arg3;
                sp48 = (bitwise f64) temp_f4;
                var_s1 = 0x400;
            } else {
                sp68 = arg3;
                sp48 = (bitwise f64) temp_f4;
                var_s1 = 0x1000;
            }
            temp_lo = var_s1 * var_s5;
            __glMgrAllocERAM((__GLcontext *) temp_lo, temp_lo, temp_s0, temp_a2, temp_a3, __glCurrentContext, 1, var_a6_2, temp_a7);
            var_a3 = 0;
            if (var_s5 > 0) {
                var_a5 = sp;
                var_t3 = &sp30;
                sp50 = (s64) &sp20[0];
                sp58 = (s64) &(&sp20[0])[var_s5];
                temp_t9 = sp18 * 4;
                temp_f5 = (f32) (65535.0 / (f64) (temp_s3 - 1));
loop_29:
                var_s5_2 = var_a3;
                *sp50 = var_a3;
                var_a0 = 0;
                if (temp_s4 != 0) {
                    sp60 = var_s1;
                } else {
                    sp60 = (s64) temp_s3;
                }
                if (sp60 > 0) {
loop_43:
                    if (temp_s4 != 0) {
                        goto block_44;
                    }
                    temp_a4 = sp60 - var_a0;
                    var_ra = temp_a4;
                    if (temp_a4 < 0x100) {

                    } else {
block_44:
                        var_ra = 0x100;
                    }
                    *(s32 *)0x74080 = 0x8904;
                    temp_s6 = var_ra + 6;
                    *(s32 *)0x74080 = (s32) (((u32) (var_ra >> 1) >> 0x1E) + var_ra) >> 2;
                    temp_v1_3 = var_ra >> 0x1F;
                    temp_v1_4 = var_ra >> 0x1F;
                    *(s32 *)0x74080 = ((temp_s6 * 4) & 0xFFFFF) | 0x80000000;
                    *(s32 *)0x74080 = ((((var_ra ^ temp_v1_3) - temp_v1_3) & 3) ^ temp_v1_4) - temp_v1_4;
                    *(s32 *)0x74080 = var_ra * 4;
                    var_t8 = 0;
                    *(s32 *)0x74080 = M2C_ERROR(/* Read from unset register $v0 */);
                    *(s32 *)0x74080 = 0;
                    *(s32 *)0x74080 = var_s5_2;
                    *(s32 *)0x74080 = var_ra;
                    if (var_ra > 0) {
                        if (var_ra & 1) {
                            var_t8 = 1;
                            if (var_a0 >= temp_s3) {
                                var_a4 = -1;
                                sp40 = -1;
                            } else {
                                temp_t1 = var_a5->unk0;
                                if (var_t3->unk0 != 0) {
                                    sp40 = (s16) (s32) (*temp_t1 * 65535.0f);
                                } else {
                                    sp40 = (s16) (s32) ((f32) var_a0 * temp_f5);
                                }
                                temp_t2 = var_a5->unk4;
                                if (var_t3->unk1 != 0) {
                                    sp42 = (s16) (s32) (*temp_t2 * 65535.0f);
                                } else {
                                    sp42 = (s16) (s32) ((f32) var_a0 * temp_f5);
                                }
                                var_a4 = (s32) sp40;
                                var_a5->unk4 = (f32 *) (temp_t9 + temp_t2);
                                var_a5->unk0 = (f32 *) (temp_t9 + temp_t1);
                            }
                            var_a0 += 1;
                            *(s32 *)0x74080 = var_a4;
                        }
                        var_v1 = var_a0 < temp_s3;
                        if ((var_ra >> 1) != 0) {
loop_56:
                            if (var_v1 != 0) {
                                temp_t1_2 = var_a5->unk0;
                                if (var_t3->unk0 != 0) {
                                    sp40 = (s16) (s32) (*temp_t1_2 * 65535.0f);
                                } else {
                                    sp40 = (s16) (s32) ((f32) var_a0 * temp_f5);
                                }
                                temp_t2_2 = var_a5->unk4;
                                if (var_t3->unk1 != 0) {
                                    sp42 = (s16) (s32) (*temp_t2_2 * 65535.0f);
                                } else {
                                    sp42 = (s16) (s32) ((f32) var_a0 * temp_f5);
                                }
                                var_a4_2 = (s32) sp40;
                                var_a5->unk4 = (f32 *) (temp_t9 + temp_t2_2);
                                var_a5->unk0 = (f32 *) (temp_t9 + temp_t1_2);
                            } else {
                                var_a4_2 = -1;
                                sp40 = -1;
                            }
                            var_t8 += 2;
                            temp_a0_3 = var_a0 + 1;
                            *(s32 *)0x74080 = var_a4_2;
                            if (temp_a0_3 >= temp_s3) {
                                var_a4_3 = -1;
                                sp40 = -1;
                            } else {
                                temp_t1_3 = var_a5->unk0;
                                if (var_t3->unk0 != 0) {
                                    sp40 = (s16) (s32) (*temp_t1_3 * 65535.0f);
                                } else {
                                    sp40 = (s16) (s32) ((f32) temp_a0_3 * temp_f5);
                                }
                                temp_t2_3 = var_a5->unk4;
                                if (var_t3->unk1 != 0) {
                                    sp42 = (s16) (s32) (*temp_t2_3 * 65535.0f);
                                } else {
                                    sp42 = (s16) (s32) ((f32) temp_a0_3 * temp_f5);
                                }
                                var_a4_3 = (s32) sp40;
                                var_a5->unk4 = (f32 *) (temp_t9 + temp_t2_3);
                                var_a5->unk0 = (f32 *) (temp_t9 + temp_t1_3);
                            }
                            var_a0 = temp_a0_3 + 1;
                            *(s32 *)0x74080 = var_a4_3;
                            if (var_ra != var_t8) {
                                var_v1 = var_a0 < temp_s3;
                                goto loop_56;
                            }
                        }
                    }
                    if (temp_s6 & 1) {
                        *(s32 *)0x74080 = 0;
                    }
                    var_s5_2 += var_ra;
                    if (var_a0 < sp60) {
                        goto loop_43;
                    }
                }
                var_t3 += 2;
                var_a5 += 8;
                var_a3 += var_s1;
                temp_at_5 = sp50 + 4;
                sp50 = temp_at_5;
                if (temp_at_5 != sp58) {
                    goto loop_29;
                }
            }
            __glMgrInitLUTState(gc, gc, sp68, M2C_ERROR(/* Read from unset register $v0 */), &sp20[0], var_s1, temp_s0);
            return;
        }
        __glMgrInitLUTState(gc, gc, arg3, 0, &sp20[0], 0, temp_s0, var_a6, var_a7, temp_f4);
        return;
    }
    __glSetError(0x502, __glCurrentContext, 1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x48, 0x4c, 0x58, 0x5c], gap at: 0x18. */
void __glMgrInitLUTCIST(__GLcontext *gc, void *arg2, s64 arg3, ...) {
    s64 spD0;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    f32 temp_f30;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_s5;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a7;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2;
    s64 temp_a6_2;
    s64 var_s3;

    unksp50 = arg3;
    temp_v0 = gc->unk400;
    unksp30 = (s64) gc;
    var_s0 = arg2->unk0;
    unksp28 = (s64) arg2->unk4;
    temp_a5 = gc->unk404;
    temp_f30 = (f32) ((u64) ((s64) arg2->unk8 << 0x20) >> 0x20);
    if (var_s0 & 4) {
        var_a2 = 0x30;
        var_a7 = temp_a5 & 0x30;
        unksp40 = 0x10;
        var_s1 = 1;
        var_a1 = unksp30->unk1A4;
        unksp38 = unksp30 + 0x420;
        if ((temp_v0 & 0x30) != var_a7) {
            var_a1 |= 4;
            unksp30->unk1A4 = var_a1;
        }
    } else if (var_s0 & 8) {
        var_a2 = 3;
        var_a7 = 1;
        unksp40 = 1;
        var_a1 = unksp30->unk1A4;
        unksp38 = unksp30 + 0x408;
        var_s1 = 1;
        if ((temp_v0 & 3) != (temp_a5 & 3)) {
            var_a1 |= 8;
            unksp30->unk1A4 = var_a1;
        }
    } else {
        var_a2 = 0xC;
        var_a7 = 4;
        unksp40 = 4;
        var_a1 = unksp30->unk1A4;
        unksp38 = unksp30 + 0x414;
        var_s1 = 2;
        if ((temp_v0 & 0xC) != (temp_a5 & 0xC)) {
            var_a1 |= 0x10;
            unksp30->unk1A4 = var_a1;
        }
    }
    temp_a6 = var_a1 & var_s0;
    if (temp_a6 != 0) {
        unksp30->unk400 = (s32) ((temp_a5 & var_a2) | (~var_a2 & temp_v0));
        temp_a7 = unksp38->unk0;
        temp_lo = var_s1 * temp_a7;
        unksp18 = (s64) temp_a7;
        __glMgrAllocERAM((__GLcontext *) temp_lo, temp_lo, var_s0, var_a2, temp_a5, temp_a6, temp_a7);
        unksp20 = M2C_ERROR(/* Read from unset register $v0 */);
        sp80 = 0;
        if (var_s1 > 0) {
            spD0 = (s64) var_s0;
            sp70 = 0;
            sp60 = unksp18 * 4;
            sp68 = (s64) ((var_s1 * 4) + sp);
loop_8:
            var_s3 = sp80;
            *sp78 = (s32) sp80;
            var_s1_2 = 0;
            if (unksp30->unk404 & unksp40) {
                var_s2 = unksp38->unk4;
            } else {
                var_s2 = unksp38->unk8 + sp70;
            }
            if (unksp18 > 0) {
loop_14:
                var_s0_2 = 0x100;
                if (unksp28 == 0) {
                    temp_v0_2 = unksp18 - var_s1_2;
                    if (temp_v0_2 < 0x100) {
                        var_s0_2 = temp_v0_2;
                    }
                }
                *(s32 *)0x74080 = 0x8904;
                temp_s5 = var_s0_2 + 6;
                *(s32 *)0x74080 = (s32) (((u32) (var_s0_2 >> 1) >> 0x1E) + var_s0_2) >> 2;
                temp_t2 = var_s0_2 >> 0x1F;
                temp_t2_2 = var_s0_2 >> 0x1F;
                *(s32 *)0x74080 = ((temp_s5 * 4) & 0xFFFFF) | 0x80000000;
                *(s32 *)0x74080 = ((((var_s0_2 ^ temp_t2) - temp_t2) & 3) ^ temp_t2_2) - temp_t2_2;
                *(s32 *)0x74080 = var_s0_2 * 4;
                *(s32 *)0x74080 = (s32) unksp20;
                *(s32 *)0x74080 = 0;
                *(s32 *)0x74080 = (s32) var_s3;
                *(s32 *)0x74080 = var_s0_2;
                __glMgr_PushPixels((__GLcontext *) var_s0_2, var_s0_2, var_s2);
                var_s1_2 += var_s0_2;
                var_s2 += var_s0_2 * 4;
                if (temp_s5 & 1) {
                    *(s32 *)0x74080 = 0;
                }
                var_s3 += var_s0_2;
                if (var_s1_2 < unksp18) {
                    goto loop_14;
                }
            }
            sp70 += sp60;
            sp80 += unksp18;
            temp_a6_2 = sp78 + 4;
            sp78 = temp_a6_2;
            if (temp_a6_2 != sp68) {
                goto loop_8;
            }
            var_s0 = (s32) spD0;
        }
        __glMgrInitLUTState((__GLcontext *) unksp30, unksp30, unksp50, unksp20, sp, unksp18, var_s0);
        return;
    }
    __glMgrInitLUTState((__GLcontext *) unksp30, unksp30, unksp50, 0, sp, 0, var_s0, temp_a6, var_a7, temp_f30);
}

void __glMgrInitConvolve2DState(__GLcontext *gc, void *arg1, void *arg2, __GLcontext *arg3, ...) {
    s64 spE0;
    f64 spC8;
    s64 spC0;
    s64 spB8;
    u64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    __GLcontext *sp58;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    __GLcontext *sp10;
    __GLcontext *sp8;
    __GLcontext *sp4;
    __GLcontext *temp_a0_10;
    __GLcontext *temp_a0_11;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_s8;
    __GLcontext *var_a0;
    __GLcontext *var_s2;
    f64 var_f30;
    s32 *temp_a4;
    s32 *temp_a4_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_s7_2;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_s1;
    s32 temp_s6;
    s32 temp_v0_2;
    s32 temp_v0_5;
    s32 temp_v1_2;
    s32 var_a0_2;
    s32 var_a5;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s6;
    s32 var_s7;
    s32 var_v0_3;
    s64 temp_a5_4;
    s64 temp_v1_3;
    s64 var_ra;
    s64 var_s0;
    s64 var_v0_2;
    u32 temp_a0_13;
    u32 var_a1;
    u64 temp_a4_4;
    void *temp_a0_12;
    void *temp_s3;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *var_v0_4;

    var_f30 = saved_reg_f30;
    var_ra = saved_reg_ra;
    temp_a4 = gc->unk598;
    temp_s8 = arg2->unk10;
    temp_a4->unk0 -= gc->unk600 * temp_a4->unk4C;
    temp_at = gc->unk598;
    temp_at->unk8 = (s32) (temp_at->unk8 - gc->unk5F4);
    temp_a4_2 = gc->unk598;
    temp_a2 = temp_a4_2->unk18 - gc->unk600;
    temp_a4_2->unk18 = temp_a2;
    sp68 = (s64) gc;
    var_v0 = gc->unk598;
    if (var_v0->unk1C != 0) {
        var_v0->unk4 = (s32) (var_v0->unk4 - (sp68->unk600 * var_v0->unk4C));
        temp_v0 = sp68->unk598;
        temp_v0->unkC = (s32) (temp_v0->unkC - sp68->unk5F4);
        temp_v1 = sp68->unk598;
        temp_v1->unk1C = (s32) (temp_v1->unk1C - sp68->unk600);
        var_v0 = sp68->unk598;
    }
    var_v0->unk34 = (s32) (var_v0->unk34 - sp68->unk600);
    temp_s3 = __glCurrentContext + 0x10000;
    temp_s1 = __glCurrentContext->unk82DC;
    sp60 = (s64) __glCurrentContext->unk82E0;
    temp_s6 = sp68->unk598->unk4C * 4;
    if (arg1 != NULL) {
        arg1->unk0 = (f32) (__glCurrentContext->unk82E8 * arg1->unk0);
        arg1->unk4 = (f32) (__glCurrentContext->unk82EC * arg1->unk4);
        arg1->unk8 = (f32) (__glCurrentContext->unk82F0 * arg1->unk8);
        arg1->unkC = (f32) (__glCurrentContext->unk82F4 * arg1->unkC);
    }
    if (sp60 >= temp_s1) {
        var_v0_2 = sp60;
    } else {
        var_v0_2 = (s64) temp_s1;
    }
    var_a5 = var_v0_2 < 4;
    var_s0 = var_v0_2;
    if (var_a5 != 0) {
        var_s0 = 3;
    } else {
        var_a5 = var_v0_2 & 1;
        if (var_a5 == 0) {
            var_s0 = var_v0_2 + 1;
        }
    }
    if (sp60 != 1) {
        var_v0_3 = (sp60 - var_s0) - 1;
    } else {
        var_v0_3 = 0;
    }
    sp68->unk7C = var_v0_3;
    switch (var_s0) {                               /* switch 1; irregular */
    default:                                        /* switch 1 */
        var_s2 = sp0;
        break;
    case 3:                                         /* switch 1 */
        if (sp68->unk0 == 0) {
            __glMgrInitPixelPath((__GLcontext *)0xE0, 0xE0, 0, temp_a2, sp68, var_a5, __glCurrentContext);
            var_ra = spE0;
        }
        sp4 = NULL;
        var_s2 = SYMBOL_LOCATION.unk3C4;
        break;
    case 5:                                         /* switch 1 */
        if (sp68->unk0 == 0) {
            __glMgrInitPixelPath((__GLcontext *)0xEE, 0xEE, 0, temp_a2, 0x64, 5, __glCurrentContext);
            var_ra = spE0;
        }
        var_s2 = (SYMBOL_LOCATION.unk3C4 + SYMBOL_LOCATION.unk3C0) - 0x64;
        sp4 = 0x64 - SYMBOL_LOCATION.unk3C0;
        if (sp68->unk1A4 & 0x800) {
            spE0 = var_ra;
            __glMgrAllocERAM((__GLcontext *)0x100, 0x100, 0x800);
            sp8 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        break;
    case 7:                                         /* switch 1 */
        if (sp68->unk0 == 0) {
            __glMgrInitPixelPath((__GLcontext *)0xEF, 0xEF, 0, temp_a2, sp68, 0xC4, __glCurrentContext);
            var_ra = spE0;
        }
        var_s2 = (SYMBOL_LOCATION.unk3C4 + SYMBOL_LOCATION.unk3C0) - 0xC4;
        sp4 = 0xC4 - SYMBOL_LOCATION.unk3C0;
        if (sp68->unk1A4 & 0x800) {
            spE0 = var_ra;
            __glMgrAllocERAM((__GLcontext *)0x100, 0x100, 0x800);
            sp8 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        break;
    }
    if (sp68->unk198 == NULL) {
        if ((u32) SYMBOL_LOCATION.unk310 < 0x400U) {
            spE0 = var_ra;
            var_a0 = (__GLcontext *)0x800;
        } else {
            spE0 = var_ra;
            var_a0 = (__GLcontext *)0x400;
        }
        __glMgrAllocERAM(var_a0, var_a0, 0x8000);
        var_ra = spE0;
        sp68->unk198 = (__GLcontext *) M2C_ERROR(/* Read from unset register $v0 */);
    }
    temp_a1 = sp68->unk5E0;
    if (sp68->unk100 & 0x9023) {
        var_s7 = sp68->unk5E4;
        spE0 = var_ra;
        var_a0_2 = (temp_a1 - var_s7) + 0x80C8;
    } else {
        spE0 = var_ra;
        var_s7 = 0;
        var_a0_2 = temp_a1 + 0x80C8;
    }
    temp_a2_2 = var_a0_2 >> 1;
    temp_at_2 = sp68->unk5F0;
    sp68->unk84 = temp_a2_2;
    sp68->unk88 = (s32) ((s32) ((temp_at_2 * 0x18) + var_a0_2) >> 1);
    sp68->unk80 = (s32) ((s32) ((temp_at_2 * 0xC) + var_a0_2) >> 1);
    __glMgrInitPixelStateCRAM((__GLcontext *) var_a0_2, var_a0_2, -2, temp_a2_2);
    __glMgrInitPixelStateCRAM(temp_s8, temp_s8, -2);
    temp_a0 = var_s7 >> 1;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0, temp_a0, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_s6, temp_s6, -2);
    __glMgrInitPixelStateCRAM(var_s2, var_s2, -2);
    temp_a0_2 = sp68->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, -2);
    temp_a0_3 = sp68->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, 0);
    temp_a0_4 = sp68->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 1);
    temp_a0_5 = sp68->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 0);
    temp_a0_6 = sp68->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_6, temp_a0_6, 1);
    temp_a2_3 = *sp68->unk598;
    temp_a0_7 = (s32) (((u32) (temp_a2_3 >> 1) >> 0x1E) + temp_a2_3) >> 2;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, 0, temp_a2_3);
    temp_a2_4 = sp68->unk598->unk4;
    temp_a0_8 = (s32) (((u32) (temp_a2_4 >> 1) >> 0x1E) + temp_a2_4) >> 2;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_8, temp_a0_8, 1, temp_a2_4);
    temp_a2_5 = *sp68->unk598;
    temp_a3 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3) - temp_a3) & 3) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 0, temp_a2_6, temp_a3);
    temp_a2_7 = sp68->unk598->unk4;
    temp_a3_2 = temp_a2_7 >> 0x1F;
    temp_a2_8 = temp_a2_7 >> 0x1F;
    temp_a0_10 = ((((temp_a2_7 ^ temp_a3_2) - temp_a3_2) & 3) ^ temp_a2_8) - temp_a2_8;
    __glMgrInitPixelStateCRAM(temp_a0_10, temp_a0_10, 1, temp_a2_8, temp_a3_2);
    __glMgrInitPixelStateCRAM((__GLcontext *)1, 1, -2);
    sp10 = arg2->unk0;
    __glMgrInitPixelStateCRAM(sp10, sp10, -2);
    sp10 = arg2->unk4;
    __glMgrInitPixelStateCRAM(sp10, sp10, -2);
    sp10 = arg2->unk8;
    __glMgrInitPixelStateCRAM(sp10, sp10, -2);
    sp10 = arg2->unkC;
    __glMgrInitPixelStateCRAM(sp10, sp10, -2);
    temp_a0_11 = sp68->unk198;
    __glMgrInitPixelStateCRAM(temp_a0_11, temp_a0_11, -2);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
    temp_v0_2 = sp68->unk1A4;
    if (temp_v0_2 & 0x800) {
        temp_a1_2 = sp68->unk104;
        sp68->unk1A4 = (s32) (temp_v0_2 & ~0x800);
        if (sp4 != NULL) {
            sp68->unk104 = (s32) (temp_a1_2 | 1);
            *(__GLcontext **)0x74080 = (__GLcontext *)0x850C;
            *(__GLcontext **)0x74080 = sp4;
            *(__GLcontext **)0x74080 = var_s2;
            *(__GLcontext **)0x74080 = sp8;
        } else {
            sp68->unk104 = (s32) (temp_a1_2 & ~1);
        }
        var_v0_4 = __glCurrentContext->imports.malloc(__glCurrentContext, temp_s1 * sp60 * 0x10);
        temp_a0_12 = var_v0_4 + (temp_s1 * sp60 * 4 * 4);
        sp70 = (s64) var_v0_4;
        if (var_v0_4 != temp_a0_12) {
loop_26:
            temp_v0_3 = var_v0_4 + 4;
            temp_v0_3->unk-4 = 0.0f;
            if (temp_a0_12 != temp_v0_3) {
                temp_v0_4 = temp_v0_3 + 4;
                temp_v0_4->unk-4 = 0.0f;
                if (temp_a0_12 != temp_v0_4) {
                    var_v0_4 = temp_v0_4 + 4;
                    var_v0_4->unk-4 = 0.0f;
                    if (temp_a0_12 != var_v0_4) {
                        goto loop_26;
                    }
                }
            }
            var_f30 = spC8;
        }
        temp_v0_5 = temp_s3->unk-7D28;
        if (temp_v0_5 != 0x1909) {
            if (temp_v0_5 != 0x1906) {
                if (temp_v0_5 != 0x190A) {
                    if (temp_v0_5 != 0x8049) {
                        if (temp_v0_5 != 0x1907) {
                            if (temp_v0_5 == 0x1908) {
                                temp_v0_6 = (((s32) (temp_s1 - 1) >> 1) * 4 * 4) + ((((s32) (sp60 - 1) >> 1) * temp_s1 * 4 * 4) + sp70);
                                temp_v0_6->unkC = 1.0f;
                                temp_v0_6->unk8 = 1.0f;
                                temp_v0_6->unk4 = 1.0f;
                                temp_v0_6->unk0 = 1.0f;
                                sp28 = 0;
                                sp2C = 1;
                                sp34 = 3;
                                temp_a4_3 = temp_s3->unk-7D34;
                                sp38 = 4;
                                sp30 = 2;
                                sp18 = temp_a4_3;
                                sp1C = temp_a4_3;
                                sp20 = temp_a4_3;
                                sp24 = temp_a4_3;
                            }
                        } else {
                            temp_v0_7 = (((s32) (temp_s1 - 1) >> 1) * 0xC) + ((((s32) (sp60 - 1) >> 1) * temp_s1 * 0xC) + sp70);
                            temp_v0_7->unk8 = 1.0f;
                            temp_v0_7->unk4 = 1.0f;
                            temp_v0_7->unk0 = 1.0f;
                            sp34 = 0;
                            sp28 = 0;
                            sp2C = 1;
                            sp38 = 3;
                            temp_a5 = temp_s3->unk-7D34;
                            sp30 = 2;
                            sp24 = (s32) sp70;
                            sp18 = temp_a5;
                            sp1C = temp_a5;
                            sp20 = temp_a5;
                        }
                    } else {
                        sp28 = 0;
                        sp38 = 1;
                        *((((s32) (sp60 - 1) >> 1) * temp_s1 * 4) + sp70 + (((s32) (temp_s1 - 1) >> 1) * 4)) = 1.0f;
                        sp2C = 0;
                        temp_v1_2 = temp_s3->unk-7D34;
                        sp30 = 0;
                        sp34 = 0;
                        sp18 = temp_v1_2;
                        sp1C = temp_v1_2;
                        sp20 = temp_v1_2;
                        sp24 = temp_v1_2;
                    }
                } else {
                    temp_v0_8 = (((temp_s1 - 1) & ~1) * 4) + ((((s32) (sp60 - 1) >> 1) * temp_s1 * 2 * 4) + sp70);
                    temp_v0_8->unk4 = 1.0f;
                    temp_v0_8->unk0 = 1.0f;
                    sp28 = 0;
                    sp2C = 0;
                    sp30 = 0;
                    temp_a5_2 = temp_s3->unk-7D34;
                    sp34 = 1;
                    sp38 = 2;
                    sp18 = temp_a5_2;
                    sp1C = temp_a5_2;
                    sp20 = temp_a5_2;
                    goto block_40;
                }
            } else {
                sp28 = 0;
                sp2C = 0;
                sp30 = 0;
                sp34 = 0;
                sp18 = (s32) sp70;
                sp38 = 1;
                *((((s32) (sp60 - 1) >> 1) * temp_s1 * 4) + sp70 + (((s32) (temp_s1 - 1) >> 1) * 4)) = 1.0f;
                sp1C = (s32) sp70;
                sp20 = (s32) sp70;
block_40:
                sp24 = temp_s3->unk-7D34;
            }
        } else {
            sp28 = 0;
            sp2C = 0;
            sp38 = 1;
            *((((s32) (sp60 - 1) >> 1) * temp_s1 * 4) + sp70 + (((s32) (temp_s1 - 1) >> 1) * 4)) = 1.0f;
            sp30 = 0;
            temp_at_3 = temp_s3->unk-7D34;
            sp34 = 0;
            sp24 = (s32) sp70;
            sp18 = temp_at_3;
            sp1C = temp_at_3;
            sp20 = temp_at_3;
        }
        temp_v0_9 = ((void *) sp68)->unk598;
        temp_a0_13 = temp_v0_9->unk44 - 0x1903;
        if (temp_a0_13 < 8U) {
            switch (*((temp_a0_13 * 4) + (&sub_0dbf0000 - 0x1240))) { /* switch 2; unable to parse jump table */
            case 0:                                 /* switch 2 */
            case 6:                                 /* switch 2 */
                sp40 = 0;
                spA0 = 4;
                break;
            case 1:                                 /* switch 2 */
                spA0 = 4;
                sp40 = 1;
                break;
            case 2:                                 /* switch 2 */
                spA0 = 4;
                sp40 = 2;
                break;
            case 3:                                 /* switch 2 */
                spA0 = 4;
                sp40 = 3;
                break;
            case 4:                                 /* switch 2 */
            case 5:                                 /* switch 2 */
                sp40 = 0;
                spA0 = 1;
                sp4C = 3;
                sp44 = 1;
                sp48 = 2;
                break;
            case 7:                                 /* switch 2 */
                sp40 = 0;
                sp44 = 3;
                spA0 = 2;
                break;
            }
        } else {
            spA0 = (s64) sp50;
        }
        sp78 = (s64) var_s2;
        spC8 = var_f30;
        spA8 = 0;
        if (spA0 > 0) {
            sp78 = (s64) var_s2;
            var_a1 = temp_v0_9->unk4C;
            spB8 = temp_s1 * sp38 * 4;
loop_48:
            spB0 = 0;
            if (var_a1 != 0) {
                var_s7_2 = &sp40;
loop_52:
                spC0 = 0;
                if (var_s0 > 0) {
                    var_s6 = 0;
loop_55:
                    var_s2_2 = 0;
                    if (var_s0 > 0) {
                        var_s3 = 0;
loop_59:
                        if ((var_s2_2 < temp_s1) && (spC0 < sp60)) {
                            temp_a5_3 = *var_s7_2;
                            sp58 = *((&sp18)[temp_a5_3] + var_s6 + (((&sp28)[temp_a5_3] + var_s3) * 4));
                        } else {
                            sp58 = NULL;
                        }
                        var_s2_2 += 1;
                        __glMgrInitPixelStateCRAM(sp58, sp58, -2);
                        var_s3 += sp38;
                        if (var_s0 != var_s2_2) {
                            goto loop_59;
                        }
                    }
                    var_s6 += spB8;
                    temp_a5_4 = spC0 + 1;
                    spC0 = temp_a5_4;
                    if (var_s0 != temp_a5_4) {
                        goto loop_55;
                    }
                    var_a1 = sp68->unk598->unk4C;
                }
                temp_a4_4 = spB0 + 1;
                spB0 = temp_a4_4;
                var_s7_2 += 4;
                if (temp_a4_4 < var_a1) {
                    goto loop_52;
                }
            }
            temp_v1_3 = spA8 + 1;
            spA8 = temp_v1_3;
            if (temp_v1_3 != spA0) {
                goto loop_48;
            }
        }
        __glMgrInitPixelStateCRAM((__GLcontext *) sp78, sp78, -1);
        __glCurrentContext->imports.free(__glCurrentContext, (void *) sp70);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void __glMgrInitConvolve1DState(__GLcontext *gc, void *arg1, ...) {
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_s8;
    void *temp_s0;

    temp_s0 = __glCurrentContext + 0x10000;
    if (arg1 != NULL) {
        arg1->unk0 = (f32) (__glCurrentContext->unk8298 * arg1->unk0);
        arg1->unk4 = (f32) (__glCurrentContext->unk829C * arg1->unk4);
        arg1->unk8 = (f32) (__glCurrentContext->unk82A0 * arg1->unk8);
        arg1->unkC = (f32) (__glCurrentContext->unk82A4 * arg1->unkC);
    }
    temp_s8 = __glCurrentContext->unk82CC;
    temp_a6 = __glCurrentContext->unk82E0;
    temp_a5 = __glCurrentContext->unk8290;
    temp_a4 = __glCurrentContext->unk82DC;
    unksp10 = (s64) temp_a6;
    __glCurrentContext->unk82E0 = temp_a5;
    unksp18 = (s64) temp_a4;
    __glCurrentContext->unk82DC = (s32) __glCurrentContext->unk828C;
    unksp20 = (s64) __glCurrentContext->unk82D8;
    __glCurrentContext->unk82CC = (s32) __glCurrentContext->unk827C;
    __glCurrentContext->unk82D8 = (s32) __glCurrentContext->unk8288;
    __glMgrInitConvolve2DState(gc, 0, temp_a4, temp_a5, temp_a6);
    temp_s0->unk-7D34 = temp_s8;
    temp_s0->unk-7D20 = (s32) unksp10;
    temp_s0->unk-7D28 = (s32) unksp20;
    temp_s0->unk-7D24 = (s32) unksp18;
}

void __glMgrInitSeparable2DState(__GLcontext *gc, void *arg1, void *arg2, __GLcontext *arg3, ...) {
    s64 sp130;
    f64 sp108;
    s64 sp100;
    u64 spF8;
    s64 spF0;
    s64 spE8;
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
    __GLcontext *sp58;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    f32 *sp24;
    f32 *sp20;
    f32 *sp1C;
    f32 *sp18;
    __GLcontext *sp10;
    __GLcontext *sp8;
    __GLcontext *sp4;
    __GLcontext *temp_a0_10;
    __GLcontext *temp_a0_11;
    __GLcontext *temp_a0_12;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a5_2;
    __GLcontext *var_a0;
    __GLcontext *var_s3;
    f32 *temp_a4_2;
    f32 *temp_at_3;
    f32 *temp_t2_2;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 *temp_v1_4;
    f32 *var_a2_2;
    f32 *var_a2_3;
    f32 *var_a7;
    f32 *var_t8;
    f32 *var_v0_5;
    f32 temp_f0;
    f32 temp_f0_2;
    f64 var_f30;
    s32 (*temp_a0_17)(__GLcontext *, void *, s8 *, ...);
    s32 (*temp_t2)(__GLcontext *, void *, s8 *, ...);
    s32 *temp_a2;
    s32 *temp_a5;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_v1;
    s32 *var_a2;
    s32 *var_s5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_6;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_at;
    s32 var_s1;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s3_4;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_t0;
    s32 var_v0;
    s32 var_v1;
    s64 temp_a5_5;
    s64 var_a1;
    s64 var_a3_2;
    s64 var_ra;
    s64 var_v0_4;
    u32 temp_v0_8;
    u32 var_v0_3;
    u64 temp_v1_5;
    void *temp_a0_13;
    void *temp_a0_14;
    void *temp_a0_15;
    void *temp_a0_16;
    void *temp_a2_10;
    void *temp_s5;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *var_v0_2;

    var_f30 = saved_reg_f30;
    var_ra = saved_reg_ra;
    sp68 = (s64) gc;
    spB8 = (s64) __glCurrentContext;
    temp_s5 = __glCurrentContext + 0x10000;
    if (arg1 != NULL) {
        arg1->unk0 = (f32) (__glCurrentContext->unk8338 * arg1->unk0);
        arg1->unk4 = (f32) (__glCurrentContext->unk833C * arg1->unk4);
        arg1->unk8 = (f32) (__glCurrentContext->unk8340 * arg1->unk8);
        arg1->unkC = (f32) (__glCurrentContext->unk8344 * arg1->unkC);
    }
    temp_s0 = __glCurrentContext->unk832C;
    temp_a2 = sp68->unk598;
    temp_s2 = __glCurrentContext->unk8330;
    temp_v0 = temp_a2->unk4C;
    var_a1 = temp_v0 * 4;
    if (temp_s2 < temp_s0) {
        var_a3 = temp_s0;
    } else {
        var_a3 = temp_s2;
    }
    var_a4 = var_a3 < 4;
    var_s1 = var_a3;
    if (var_a4 != 0) {
        var_s1 = 3;
    } else {
        var_a4 = var_a3 & 1;
        if (var_a4 == 0) {
            var_s1 = var_a3 + 1;
        }
    }
    if ((((void *) sp68)->unk8 != 0) && (sp68->unk0 != 0) && (var_s1 != 3)) {
        temp_a2->unk0 -= sp68->unk600 * temp_v0;
        temp_at = sp68->unk598;
        temp_at->unk8 = (s32) (temp_at->unk8 - sp68->unk5F4);
        temp_v1 = sp68->unk598;
        temp_v1->unk18 = (s32) (temp_v1->unk18 - sp68->unk600);
        var_a2 = sp68->unk598;
        if (var_a2->unk1C != 0) {
            var_a2->unk4 = (s32) (var_a2->unk4 - (sp68->unk600 * var_a2->unk4C));
            temp_a5 = sp68->unk598;
            temp_a5->unkC = (s32) (temp_a5->unkC - sp68->unk5F4);
            temp_at_2 = sp68->unk598;
            temp_at_2->unk1C = (s32) (temp_at_2->unk1C - sp68->unk600);
            var_a2 = sp68->unk598;
        }
        var_a2->unk34 = (s32) (var_a2->unk34 - sp68->unk600);
        if (temp_s2 != 1) {
            var_v0 = (temp_s2 - var_s1) - 1;
        } else {
            var_v0 = 0;
        }
        sp68->unk7C = var_v0;
        if (var_s1 != 5) {
            if (var_s1 != 7) {
                var_s3 = sp0;
            } else {
                temp_a5_2 = 0x38 - SYMBOL_LOCATION.unk3C0;
                temp_a4 = sp68->unk1A4 & 0x800;
                var_s3 = (SYMBOL_LOCATION.unk3C4 + SYMBOL_LOCATION.unk3C0) - 0x38;
                sp4 = temp_a5_2;
                if (temp_a4 != 0) {
                    sp70 = var_a1;
                    __glMgrAllocERAM((__GLcontext *)0x100, 0x100, 0x800, &SYMBOL_LOCATION, var_a3, temp_a4, temp_a5_2);
                    sp8 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_ra = sp130;
                }
            }
        } else {
            sp4 = NULL;
            var_s3 = SYMBOL_LOCATION.unk3C4;
        }
        if (sp68->unk198 == NULL) {
            if ((u32) SYMBOL_LOCATION.unk310 < 0x400U) {
                sp130 = var_ra;
                sp70 = var_a1;
                var_a0 = (__GLcontext *)0x800;
            } else {
                sp130 = var_ra;
                sp70 = var_a1;
                var_a0 = (__GLcontext *)0x400;
            }
            __glMgrAllocERAM(var_a0, var_a0, 0x8000, &SYMBOL_LOCATION);
            var_a1 = sp70;
            sp68->unk198 = (__GLcontext *) M2C_ERROR(/* Read from unset register $v0 */);
            var_ra = sp130;
        }
        temp_a2_2 = sp68->unk5E0;
        if (sp68->unk100 & 0x9023) {
            temp_a0 = sp68->unk5E4;
            sp130 = var_ra;
            sp70 = var_a1;
            spB0 = (s64) temp_a0;
            var_a0_2 = (temp_a2_2 - temp_a0) + 0x80C8;
        } else {
            sp130 = var_ra;
            sp70 = var_a1;
            spB0 = 0;
            var_a0_2 = temp_a2_2 + 0x80C8;
        }
        temp_a5_3 = sp68->unk5F0;
        temp_a7 = var_a0_2 >> 1;
        sp68->unk84 = temp_a7;
        temp_a6 = (s32) ((temp_a5_3 * 0xC) + var_a0_2) >> 1;
        temp_a3 = (s32) ((temp_a5_3 * 0x18) + var_a0_2) >> 1;
        sp68->unk88 = temp_a3;
        sp68->unk80 = temp_a6;
        temp_a2_3 = arg2->unk10;
        spA8 = (s64) temp_a2_3;
        __glMgrInitPixelStateCRAM((__GLcontext *) var_a0_2, var_a0_2, -2, temp_a2_3, temp_a3, sp68, temp_a5_3, temp_a6, temp_a7);
        __glMgrInitPixelStateCRAM((__GLcontext *) spA8, spA8, -2);
        temp_a0_2 = spB0 >> 1;
        __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_2, temp_a0_2, -2);
        __glMgrInitPixelStateCRAM((__GLcontext *) sp70, sp70, -2);
        __glMgrInitPixelStateCRAM(var_s3, var_s3, -2);
        temp_a0_3 = sp68->unkDC;
        __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
        temp_a0_4 = sp68->unkCC;
        __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
        temp_a0_5 = sp68->unkD0;
        __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
        temp_a0_6 = sp68->unkD4;
        __glMgrInitPixelStateCRAM(temp_a0_6, temp_a0_6, 0);
        temp_a0_7 = sp68->unkD8;
        __glMgrInitPixelStateCRAM(temp_a0_7, temp_a0_7, 1);
        temp_a2_4 = *sp68->unk598;
        temp_a0_8 = (s32) (((u32) (temp_a2_4 >> 1) >> 0x1E) + temp_a2_4) >> 2;
        __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_8, temp_a0_8, 0, temp_a2_4);
        temp_a2_5 = sp68->unk598->unk4;
        temp_a0_9 = (s32) (((u32) (temp_a2_5 >> 1) >> 0x1E) + temp_a2_5) >> 2;
        __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_9, temp_a0_9, 1, temp_a2_5);
        temp_a2_6 = *sp68->unk598;
        temp_a3_2 = temp_a2_6 >> 0x1F;
        temp_a2_7 = temp_a2_6 >> 0x1F;
        temp_a0_10 = ((((temp_a2_6 ^ temp_a3_2) - temp_a3_2) & 3) ^ temp_a2_7) - temp_a2_7;
        __glMgrInitPixelStateCRAM(temp_a0_10, temp_a0_10, 0, temp_a2_7, temp_a3_2);
        temp_a2_8 = sp68->unk598->unk4;
        temp_a3_3 = temp_a2_8 >> 0x1F;
        temp_a2_9 = temp_a2_8 >> 0x1F;
        temp_a0_11 = ((((temp_a2_8 ^ temp_a3_3) - temp_a3_3) & 3) ^ temp_a2_9) - temp_a2_9;
        __glMgrInitPixelStateCRAM(temp_a0_11, temp_a0_11, 1, temp_a2_9, temp_a3_3);
        __glMgrInitPixelStateCRAM((__GLcontext *)1, 1, -2);
        sp10 = arg2->unk0;
        __glMgrInitPixelStateCRAM(sp10, sp10, -2);
        sp10 = arg2->unk4;
        __glMgrInitPixelStateCRAM(sp10, sp10, -2);
        sp10 = arg2->unk8;
        __glMgrInitPixelStateCRAM(sp10, sp10, -2);
        sp10 = arg2->unkC;
        __glMgrInitPixelStateCRAM(sp10, sp10, -2);
        temp_a0_12 = sp68->unk198;
        __glMgrInitPixelStateCRAM(temp_a0_12, temp_a0_12, -2);
        __glMgrInitPixelStateCRAM(arg3, arg3, -1);
        temp_v0_2 = sp68->unk1A4;
        if (temp_v0_2 & 0x800) {
            temp_a1 = sp68->unk104;
            sp68->unk1A4 = (s32) (temp_v0_2 & ~0x800);
            if (sp4 != NULL) {
                sp68->unk104 = (s32) (temp_a1 | 1);
                *(__GLcontext **)0x74080 = (__GLcontext *)0x850C;
                *(__GLcontext **)0x74080 = sp4;
                *(__GLcontext **)0x74080 = var_s3;
                *(__GLcontext **)0x74080 = sp8;
            } else {
                sp68->unk104 = (s32) (temp_a1 & ~1);
            }
            temp_s4 = temp_s0 + temp_s2;
            var_v0_2 = __glCurrentContext->imports.malloc(__glCurrentContext, temp_s4 * 0x10);
            temp_a0_13 = var_v0_2 + (temp_s4 * 4 * 4);
            sp60 = (s64) var_v0_2;
            if (var_v0_2 != temp_a0_13) {
loop_26:
                temp_v0_3 = var_v0_2 + 4;
                temp_v0_3->unk-4 = 0.0f;
                if (temp_a0_13 != temp_v0_3) {
                    temp_v0_4 = temp_v0_3 + 4;
                    temp_v0_4->unk-4 = 0.0f;
                    if (temp_a0_13 != temp_v0_4) {
                        var_v0_2 = temp_v0_4 + 4;
                        var_v0_2->unk-4 = 0.0f;
                        if (temp_a0_13 != var_v0_2) {
                            goto loop_26;
                        }
                    }
                }
                var_f30 = sp108;
            }
            temp_t2 = temp_s5->unk-7CD8;
            if (temp_t2 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1909) {
                if (temp_t2 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1906) {
                    if (temp_t2 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x190A) {
                        if (temp_t2 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x8049) {
                            if (temp_t2 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1907) {
                                if (temp_t2 == (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1908) {
                                    temp_v0_5 = (temp_s0 * 4 * 4) + sp60 + (((s32) (temp_s2 - 1) >> 1) * 4 * 4);
                                    temp_a0_14 = (((s32) (temp_s0 - 1) >> 1) * 4 * 4) + sp60;
                                    temp_a0_14->unk0 = 1.0f;
                                    temp_v0_5->unk0 = 1.0f;
                                    temp_a0_14->unk4 = 1.0f;
                                    temp_v0_5->unk4 = 1.0f;
                                    temp_a0_14->unk8 = 1.0f;
                                    temp_v0_5->unk8 = 1.0f;
                                    temp_a0_14->unkC = 1.0f;
                                    temp_v0_5->unkC = 1.0f;
                                    sp28 = 0;
                                    sp2C = 1;
                                    sp34 = 3;
                                    temp_v1_2 = temp_s5->unk-7CE4;
                                    sp38 = 4;
                                    sp30 = 2;
                                    sp18 = temp_v1_2;
                                    sp1C = temp_v1_2;
                                    sp20 = temp_v1_2;
                                    goto block_42;
                                }
                            } else {
                                temp_v0_6 = (temp_s0 * 0xC) + sp60 + (((s32) (temp_s2 - 1) >> 1) * 0xC);
                                temp_a0_15 = (((s32) (temp_s0 - 1) >> 1) * 0xC) + sp60;
                                temp_a0_15->unk0 = 1.0f;
                                temp_v0_6->unk0 = 1.0f;
                                temp_a0_15->unk4 = 1.0f;
                                temp_v0_6->unk4 = 1.0f;
                                temp_a0_15->unk8 = 1.0f;
                                temp_v0_6->unk8 = 1.0f;
                                sp34 = 0;
                                sp28 = 0;
                                sp2C = 1;
                                sp38 = 3;
                                temp_v1_3 = temp_s5->unk-7CE4;
                                sp30 = 2;
                                sp24 = (f32 *) sp60;
                                sp18 = temp_v1_3;
                                sp1C = temp_v1_3;
                                sp20 = temp_v1_3;
                            }
                        } else {
                            sp28 = 0;
                            sp38 = 1;
                            *((((s32) (temp_s0 - 1) >> 1) * 4) + sp60) = 1.0f;
                            *((temp_s0 * 4) + sp60 + (((s32) (temp_s2 - 1) >> 1) * 4)) = 1.0f;
                            sp2C = 0;
                            temp_at_3 = temp_s5->unk-7CE4;
                            sp30 = 0;
                            sp34 = 0;
                            sp18 = temp_at_3;
                            sp1C = temp_at_3;
                            sp20 = temp_at_3;
                            sp24 = temp_at_3;
                        }
                    } else {
                        temp_a0_16 = (((temp_s0 - 1) & ~1) * 4) + sp60;
                        temp_v0_7 = (temp_s0 * 2 * 4) + sp60 + (((temp_s2 - 1) & ~1) * 4);
                        temp_a0_16->unk0 = 1.0f;
                        temp_v0_7->unk0 = 1.0f;
                        temp_a0_16->unk4 = 1.0f;
                        temp_v0_7->unk4 = 1.0f;
                        sp28 = 0;
                        sp2C = 0;
                        sp30 = 0;
                        temp_v1_4 = temp_s5->unk-7CE4;
                        sp34 = 1;
                        sp38 = 2;
                        sp18 = temp_v1_4;
                        sp1C = temp_v1_4;
                        sp20 = temp_v1_4;
block_42:
                        sp24 = temp_s5->unk-7CE4;
                    }
                } else {
                    sp28 = 0;
                    sp2C = 0;
                    sp30 = 0;
                    sp34 = 0;
                    sp18 = (f32 *) sp60;
                    sp38 = 1;
                    *((((s32) (temp_s0 - 1) >> 1) * 4) + sp60) = 1.0f;
                    *((temp_s0 * 4) + sp60 + (((s32) (temp_s2 - 1) >> 1) * 4)) = 1.0f;
                    sp1C = (f32 *) sp60;
                    sp20 = (f32 *) sp60;
                    sp24 = temp_s5->unk-7CE4;
                }
            } else {
                sp28 = 0;
                sp2C = 0;
                sp38 = 1;
                *((((s32) (temp_s0 - 1) >> 1) * 4) + sp60) = 1.0f;
                *((temp_s0 * 4) + sp60 + (((s32) (temp_s2 - 1) >> 1) * 4)) = 1.0f;
                sp30 = 0;
                temp_a4_2 = temp_s5->unk-7CE4;
                sp34 = 0;
                sp24 = (f32 *) sp60;
                sp18 = temp_a4_2;
                sp1C = temp_a4_2;
                sp20 = temp_a4_2;
            }
            temp_a2_10 = ((void *) sp68)->unk598;
            temp_v0_8 = temp_a2_10->unk44 - 0x1903;
            if (temp_v0_8 < 8U) {
                switch (*((temp_v0_8 * 4) + (&sub_0dbf0000 - 0x1220))) { /* unable to parse jump table */
                case 0:
                case 6:
                    sp40 = 0;
                    spE8 = 4;
                    break;
                case 1:
                    spE8 = 4;
                    sp40 = 1;
                    break;
                case 2:
                    spE8 = 4;
                    sp40 = 2;
                    break;
                case 3:
                    spE8 = 4;
                    sp40 = 3;
                    break;
                case 4:
                case 5:
                    sp40 = 0;
                    spE8 = 1;
                    sp4C = 3;
                    sp44 = 1;
                    sp48 = 2;
                    break;
                case 7:
                    sp40 = 0;
                    sp44 = 3;
                    spE8 = 2;
                    break;
                }
            } else {
                spE8 = (s64) sp50;
            }
            spC0 = (s64) var_s3;
            sp108 = var_f30;
            spF0 = 0;
            if (spE8 > 0) {
                spC0 = (s64) var_s3;
                var_v0_3 = temp_a2_10->unk4C;
                sp100 = temp_s0 * sp38 * 4;
loop_63:
                spF8 = 0;
                if (var_v0_3 != 0) {
                    var_s5 = &sp40;
loop_66:
                    var_s3_2 = 0;
                    if (var_s1 > 0) {
                        var_s4 = 0;
                        var_v1 = temp_s0 > 0;
loop_70:
                        if (var_v1 != 0) {
                            temp_a5_4 = *var_s5;
                            sp58 = *((&sp18)[temp_a5_4] + var_s4 + ((&sp28)[temp_a5_4] * 4));
                        } else {
                            sp58 = NULL;
                        }
                        var_s3_2 += 1;
                        __glMgrInitPixelStateCRAM(sp58, sp58, -2);
                        var_s4 += sp38 * 4;
                        var_v1 = var_s3_2 < temp_s0;
                        if (var_s1 != var_s3_2) {
                            goto loop_70;
                        }
                    }
                    var_s4_2 = 0;
                    if (var_s1 > 0) {
                        var_s3_3 = 0;
                        var_at = temp_s2 > 0;
loop_76:
                        if (var_at != 0) {
                            temp_a4_3 = *var_s5;
                            sp58 = *((&sp18)[temp_a4_3] + sp100 + (((&sp28)[temp_a4_3] + var_s3_3) * 4));
                        } else {
                            sp58 = NULL;
                        }
                        var_s4_2 += 1;
                        __glMgrInitPixelStateCRAM(sp58, sp58, -2);
                        var_s3_3 += sp38;
                        var_at = var_s4_2 < temp_s2;
                        if (var_s1 != var_s4_2) {
                            goto loop_76;
                        }
                    }
                    var_v0_3 = sp68->unk598->unk4C;
                    temp_v1_5 = spF8 + 1;
                    spF8 = temp_v1_5;
                    var_s5 += 4;
                    if (temp_v1_5 < var_v0_3) {
                        goto loop_66;
                    }
                }
                temp_a5_5 = spF0 + 1;
                spF0 = temp_a5_5;
                if (temp_a5_5 != spE8) {
                    goto loop_63;
                }
            }
            __glMgrInitPixelStateCRAM((__GLcontext *) spC0, spC0, -1);
            __glCurrentContext->imports.free(__glCurrentContext, (void *) sp60);
            return;
        }
        return;
    }
    temp_a5_6 = temp_s5->unk-7D34;
    temp_a0_17 = temp_s5->unk-7CD8;
    temp_a7_2 = temp_s5->unk-7D24;
    temp_a6_2 = temp_s5->unk-7D28;
    sp80 = (s64) temp_s5->unk-7D20;
    sp88 = (s64) temp_a7_2;
    sp78 = (s64) temp_a6_2;
    sp90 = (s64) temp_a0_17;
    sp98 = (s64) temp_a5_6;
    __glElementsPerGroup(temp_a0_17, var_a1, temp_a2, var_a3, var_a4, temp_a5_6, temp_a6_2, temp_a7_2);
    temp_s0_2 = temp_s5->unk-7CD4;
    temp_s2_2 = temp_s5->unk-7CD0;
    temp_lo = temp_s2_2 * temp_s0_2;
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    var_v0_4 = spB8->unk0(spB8, temp_lo * M2C_ERROR(/* Read from unset register $v0 */) * 4, temp_lo);
    spA0 = var_v0_4;
    var_s4_3 = 0;
    temp_t2_2 = temp_s5->unk-7CE4;
    var_t8 = &temp_t2_2[temp_s0_2 * temp_s1];
    if (temp_s2_2 > 0) {
loop_47:
        var_a7 = temp_t2_2;
        var_s3_4 = 0;
        if (temp_s0_2 > 0) {
loop_54:
            var_a2_2 = var_t8;
            if (temp_s1 > 0) {
                var_t0 = temp_s1 & 3;
                if (var_t0 != 0) {
                    do {
                        temp_f0 = *var_a7 * *var_a2_2;
                        var_a2_2 += 4;
                        var_v0_4 += 4;
                        var_a7 += 4;
                        var_t0 -= 1;
                        var_v0_4->unk-4 = temp_f0;
                    } while (var_t0 != 0);
                }
                if ((temp_s1 >> 2) != 0) {
                    var_a3_2 = var_v0_4;
                    var_v0_5 = var_a2_2;
                    var_a2_3 = var_a7;
                    do {
                        var_a3_2->unk0 = (f32) (var_a2_3->unk0 * var_v0_5->unk0);
                        var_a3_2->unk4 = (f32) (var_a2_3->unk4 * var_v0_5->unk4);
                        var_a3_2->unk8 = (f32) (var_a2_3->unk8 * var_v0_5->unk8);
                        temp_f0_2 = var_a2_3->unkC * var_v0_5->unkC;
                        var_a3_2 += 0x10;
                        var_a2_3 += 0x10;
                        var_v0_5 += 0x10;
                        var_a3_2->unk-4 = temp_f0_2;
                    } while (var_v0_5 != &var_t8[temp_s1]);
                    var_a7 = var_a2_3;
                    var_v0_4 = var_a3_2;
                }
            }
            var_s3_4 += 1;
            if (temp_s0_2 != var_s3_4) {
                goto loop_54;
            }
        }
        var_s4_3 += 1;
        var_t8 = &var_t8[temp_s1];
        if (temp_s2_2 != var_s4_3) {
            goto loop_47;
        }
    }
    temp_s5->unk-7D20 = temp_s2_2;
    temp_s5->unk-7D24 = temp_s0_2;
    temp_s5->unk-7D28 = (s32) sp90;
    temp_s5->unk-7D34 = (s32) spA0;
    __glMgrInitConvolve2DState((__GLcontext *) sp68, sp68, 0, arg2, arg3);
    temp_s5->unk-7D20 = (s32) sp80;
    temp_s5->unk-7D24 = (s32) sp88;
    temp_s5->unk-7D28 = (s32) sp78;
    temp_s5->unk-7D34 = (s32) sp98;
    __glMgrInitConvolve2DState((__GLcontext *) spB8, spB8, spA0);
}

void __glMgrInitColorMatrixState(__GLcontext *gc, __GLcontext *arg3, ...) {
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;

    temp_a2 = *gc->unk598;
    temp_a0 = (s32) (((u32) (temp_a2 >> 2) >> 0x1D) + temp_a2) >> 3;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0, temp_a0, 0, temp_a2, 0x114078);
    temp_a2_2 = gc->unk598->unk4;
    temp_a0_2 = (s32) (((u32) (temp_a2_2 >> 2) >> 0x1D) + temp_a2_2) >> 3;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_2, temp_a0_2, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk0;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_3 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 7) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk4;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_4 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 7) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 1, temp_a2_6, temp_a3_2);
    temp_a0_5 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, -2);
    temp_a0_6 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_6, temp_a0_6, 0);
    temp_a0_7 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_7, temp_a0_7, 1);
    temp_a0_8 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 0);
    temp_a0_9 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 1);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
}

void __glMgrInitHistogramState(__GLcontext *gc, void *arg1, __GLcontext *arg3, ...) {
    f64 sp10;
    __GLcontext *sp8;                               /* compiler-managed */
    s32 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a0_8;
    s32 *var_a1_2;
    s32 *var_a5;
    s32 temp_a0_6;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_lo;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a6;
    s32 var_a7;
    s64 temp_t0;
    void *temp_s1;

    var_a5 = &gc->unk114;
    var_a7 = 0;
    temp_a4 = gc->unk598->unk5C;
    temp_s1 = __glCurrentContext + 0x10000;
    var_a6 = __glCurrentContext->unk81F8;
    gc->unk10C = 0;
    temp_t0 = __glCurrentContext->unk81EC - 1;
    if (!(var_a6 & 8) || (temp_a4 & 8)) {
        sp0 = __glCurrentContext->unk81E0;
    } else {
        var_a5 = &gc->unk118;
        gc->unk114 = __glCurrentContext->unk81E0 + ((s64) ((f64) (arg1->unk0 * (f32) ((u64) (temp_t0 << 0x20) >> 0x20)) + 0.5) << 0);
        var_a7 = 1;
        gc->unk10C = 1;
    }
    if (!(var_a6 & 4) || (temp_a4 & 4)) {
        sp0 = __glCurrentContext->unk81E0 + __glCurrentContext->unk81E4;
    } else {
        *var_a5 = __glCurrentContext->unk81E4 + ((s64) ((f64) (arg1->unk4 * (f32) ((u64) (temp_t0 << 0x20) >> 0x20)) + 0.5) << 0) + __glCurrentContext->unk81E0;
        var_a7 = gc->unk10C + 1;
        gc->unk10C = var_a7;
        var_a5 += 4;
    }
    if (!(var_a6 & 2) || (temp_a4 & 2)) {
        sp0 = (__glCurrentContext->unk81E4 * 2) + __glCurrentContext->unk81E0;
    } else {
        *var_a5 = ((s64) ((f64) (arg1->unk8 * (f32) ((u64) (temp_t0 << 0x20) >> 0x20)) + 0.5) << 0) + (__glCurrentContext->unk81E4 * 2) + __glCurrentContext->unk81E0;
        var_a7 = gc->unk10C + 1;
        gc->unk10C = var_a7;
        var_a5 += 4;
    }
    if (!(var_a6 & 1) || (temp_a4 & 1)) {
        sp0 = (__glCurrentContext->unk81E4 * 3) + __glCurrentContext->unk81E0;
    } else {
        *var_a5 = ((s64) ((f64) (arg1->unkC * (f32) ((u64) (temp_t0 << 0x20) >> 0x20)) + 0.5) << 0) + (__glCurrentContext->unk81E4 * 3) + __glCurrentContext->unk81E0;
        var_a5 += 4;
        var_a7 = gc->unk10C + 1;
        gc->unk10C = var_a7;
    }
    var_a0 = var_a7;
    if (var_a7 < 3) {
        var_a6 = 3 - var_a0;
        var_a1 = var_a6 & 3;
        var_a7 = var_a0;
        if (var_a1 != 0) {
            do {
                var_a0 += 1;
                *var_a5 = sp0;
                var_a1 -= 1;
                var_a5 += 4;
            } while (var_a1 != 0);
            var_a7 = var_a0;
        }
        if ((var_a6 >> 2) != 0) {
            var_a0_2 = var_a7;
            var_a1_2 = var_a5;
            do {
                var_a1_2 += 0x10;
                var_a0_2 += 4;
                var_a1_2->unk-10 = sp0;
                var_a1_2->unk-C = sp0;
                var_a1_2->unk-8 = sp0;
                var_a1_2->unk-4 = sp0;
            } while (var_a0_2 != 3);
        }
    }
    temp_a5 = gc->unk108;
    temp_a4_2 = __glCurrentContext->unk81E4;
    temp_lo = temp_a4_2 * temp_a5;
    temp_a3 = __glCurrentContext->unk81EC - 1;
    sp10 = (bitwise f64) (f32) temp_a3;
    temp_a0 = __glCurrentContext->unk81E0 + temp_lo;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, -2, temp_lo, temp_a3, temp_a4_2, temp_a5, var_a6, var_a7);
    temp_a0_2 = gc->unk598->unk4C;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, -2);
    temp_a0_3 = temp_s1->unk-7E1C;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    sp8 = (__GLcontext *) sp10;
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    sp8 = (f32) (temp_s1->unk-7E14 - 1);
    __glMgrInitPixelStateCRAM((bitwise __GLcontext *) sp8, sp8, -2);
    temp_a0_4 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_a0_6 = gc->unk598->unk0;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, 0);
    temp_a0_7 = gc->unk598->unk4;
    __glMgrInitPixelStateCRAM(temp_a0_7, temp_a0_7, 1);
    temp_a0_8 = temp_s1->unk-7E04;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, -2);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
}

void __glMgrInitMinMaxState(__GLcontext *gc, void *arg1, __GLcontext *arg3, ...) {
    __GLcontext *sp8;
    s32 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    f32 *var_t0;
    s32 *var_a1_2;
    s32 *var_a5;
    s32 temp_a0_4;
    s32 temp_a2;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;

    var_t0 = &gc->unk12C;
    var_a5 = &gc->unk120;
    var_a6 = __glCurrentContext->unk8214;
    var_a7 = 0;
    var_a4 = gc->unk598->unk5C;
    gc->unk110 = 0;
    if (!(var_a6 & 8) || (var_a4 & 8)) {
        sp0 = SYMBOL_LOCATION.unk1D8;
    } else {
        var_t0 = &gc->unk130;
        var_a5 = &gc->unk124;
        gc->unk120 = SYMBOL_LOCATION.unk1D8;
        var_a7 = 1;
        gc->unk110 = 1;
        gc->unk12C = arg1->unk0;
    }
    if (!(var_a6 & 4) || (var_a4 & 4)) {
        sp0 = SYMBOL_LOCATION.unk340;
    } else {
        *var_a5 = SYMBOL_LOCATION.unk340;
        *var_t0 = arg1->unk4;
        var_t0 += 4;
        var_a5 += 4;
        var_a7 = gc->unk110 + 1;
        gc->unk110 = var_a7;
    }
    if (!(var_a6 & 2) || (var_a4 & 2)) {
        sp0 = SYMBOL_LOCATION.unk344;
    } else {
        *var_a5 = SYMBOL_LOCATION.unk344;
        *var_t0 = arg1->unk8;
        var_t0 += 4;
        var_a5 += 4;
        var_a7 = gc->unk110 + 1;
        gc->unk110 = var_a7;
    }
    if (!(var_a6 & 1) || (var_a4 & 1)) {
        sp0 = SYMBOL_LOCATION.unk348;
    } else {
        *var_a5 = SYMBOL_LOCATION.unk348;
        *var_t0 = arg1->unkC;
        var_a5 += 4;
        var_a7 = gc->unk110 + 1;
        gc->unk110 = var_a7;
    }
    var_a0 = var_a7;
    if (var_a7 < 3) {
        var_a4 = 3;
        var_a6 = 3 - var_a0;
        var_a1 = var_a6 & 3;
        var_a7 = var_a0;
        if (var_a1 != 0) {
            do {
                var_a0 += 1;
                *var_a5 = sp0;
                var_a1 -= 1;
                var_a5 += 4;
            } while (var_a1 != 0);
            var_a7 = var_a0;
        }
        if ((var_a6 >> 2) != 0) {
            var_a0_2 = var_a7;
            var_a1_2 = var_a5;
            do {
                var_a1_2 += 0x10;
                var_a0_2 += 4;
                var_a1_2->unk-10 = sp0;
                var_a1_2->unk-C = sp0;
                var_a1_2->unk-8 = sp0;
                var_a1_2->unk-4 = sp0;
            } while (var_a0_2 != 3);
        }
    }
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0, SYMBOL_LOCATION.unk348, sp0, var_a4, var_a5, var_a6, var_a7);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_lo = (s32) gc->unk598->unk0 / 12;
    M2C_TRAP_IF(0xC == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk4 / 12;
    M2C_TRAP_IF(0xC == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_hi = (s32) gc->unk598->unk0 % 12;
    M2C_TRAP_IF(0xC == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi, temp_hi, 0);
    temp_a2 = gc->unk598->unk4;
    temp_hi_2 = temp_a2 % 12;
    M2C_TRAP_IF(0xC == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_2, temp_hi_2, 1, temp_a2);
    temp_a0_3 = gc->unk598->unk4C;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unk108;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_4, temp_a0_4, -2);
    sp8 = NULL;
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    sp8 = (__GLcontext *)0x3F800000;
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
}

void __glMgrInitCompressState(__GLcontext *gc, __GLcontext *arg3, ...) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *var_a0;
    s32 (*temp_a0_10)(__GLcontext *, void *, s8 *, ...);
    s32 *temp_a1;
    s32 *temp_a2_7;
    s32 *temp_s8;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 var_a1;
    s32 var_v0;
    void *(*temp_a0_11)(__GLcontext *);

    temp_a0 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, -2);
    temp_a0_2 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 0);
    temp_a0_3 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, 1);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_a2 = gc->unk598->unk18;
    temp_a0_6 = (s32) (((u32) (temp_a2 >> 2) >> 0x1D) + temp_a2) >> 3;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk1C;
    temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 2) >> 0x1D) + temp_a2_2) >> 3;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk18;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 7) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk1C;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 7) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
    temp_a0_10 = gc->imports.fprintf;
    if (temp_a0_10 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1906) {
        if (temp_a0_10 == (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1909) {
            var_a0 = (__GLcontext *)1;
            var_v0 = 1;
            goto block_8;
        }
        if (temp_a0_10 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x190A) {
            if (temp_a0_10 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x8049) {
                var_v0 = sp0;
                if (temp_a0_10 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1907) {
                    var_a0 = sp4;
                    goto block_8;
                }
                var_a0 = (__GLcontext *)4;
                unksp20 = 3;
            } else {
                var_a0 = (__GLcontext *)1;
                if (gc->unk1A8 & 0x01000000) {
                    var_v0 = 1;
block_8:
                    unksp20 = (s64) var_v0;
                } else {
                    var_a0 = (__GLcontext *)3;
                    unksp20 = 2;
                }
            }
        } else {
            var_a0 = (__GLcontext *)2;
            unksp20 = 2;
        }
    } else {
        var_a0 = NULL;
        unksp20 = 1;
    }
    __glMgrInitPixelStateCRAM(var_a0, var_a0, -2);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
    temp_a1 = gc->unk598;
    temp_a1->unk0 = temp_a1->unk18 * unksp20;
    temp_s8 = gc->unk598;
    temp_s8->unk4 = (s32) (temp_s8->unk1C * unksp20);
    var_a1 = (s32) gc->imports.fprintf & 0xF;
    gc->unk598->unk64 = var_a1;
    temp_a2_7 = gc->unk598;
    if (gc->imports.malloc == NULL) {
        temp_a0_11 = gc->imports.getDrawablePrivate;
        temp_a3_3 = temp_a2_7->unk0 + temp_a2_7->unk4;
        if ((u32) temp_a0_11 >= 0x1404U) {
            var_a1 = 8;
            switch ((u32) temp_a0_11) {             /* irregular */
            default:
block_12:
                var_a1 = (8 - ((temp_a3_3 * 4) & 7)) & 7;
                temp_a2_7->unk41 = (s8) var_a1;
                break;
            case 0x1A00:
                var_a1 = (8 - ((temp_a3_3 * 2) & 7)) & 7;
                temp_a2_7->unk41 = (s8) var_a1;
                break;
            case 0x1405:
                goto block_12;
            }
        } else {
            var_a1 = (u32) temp_a0_11 < 0x1402U;
            if (var_a1 == 0) {
                if ((u32) temp_a0_11 < 0x1403U) {
                    goto block_17;
                }
                if (temp_a0_11 == (void *(*)(__GLcontext *))0x1403) {
block_17:
                    temp_a2_7->unk41 = (s8) ((8 - ((temp_a3_3 * 2) & 7)) & 7);
                }
            } else if ((u32) temp_a0_11 >= 0x1401U) {
                if ((u32) temp_a0_11 < 0x1402U) {
                    goto block_21;
                }
            } else {
                var_a1 = 0x1400;
                if (temp_a0_11 == (void *(*)(__GLcontext *))0x1400) {
block_21:
                    var_a1 = temp_a3_3 & 7;
                    temp_a2_7->unk41 = (s8) ((8 - var_a1) & 7);
                }
            }
        }
    }
    gc->unk598->unk44 = (s32 (*)(__GLcontext *, void *, s8 *, ...)) gc->imports.fprintf;
    __glElementsPerGroup(gc->imports.fprintf, (s64) var_a1, gc->unk598);
    gc->unk598->unk4C = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    getchannels(gc->imports.fprintf);
    gc->unk598->unk5C = (s32) M2C_ERROR(/* Read from unset register $v0 */);
}

void __glMgrInitXZoomState(__GLcontext *gc, s32 *arg2, s64 arg3, s32 arg4, ...) {
    s64 sp78;
    s64 sp38;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    __GLcontext *temp_a0_10;
    __GLcontext *temp_a0_11;
    __GLcontext *temp_a0_12;
    __GLcontext *temp_a0_13;
    __GLcontext *temp_a0_14;
    __GLcontext *temp_a0_15;
    __GLcontext *temp_a0_16;
    __GLcontext *temp_a0_17;
    __GLcontext *temp_a0_18;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *var_s4;
    s32 *temp_a3_2;
    s32 *temp_at_9;
    s32 *temp_ra;
    s32 temp_a0;
    s32 temp_a0_19;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_at_7;
    s32 temp_at_8;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a4;
    s32 var_s1;
    s32 var_s5;
    void *temp_s2;
    void *temp_s4;
    void *temp_s4_10;
    void *temp_s4_2;
    void *temp_s4_3;
    void *temp_s4_4;
    void *temp_s4_5;
    void *temp_s4_6;
    void *temp_s4_7;
    void *temp_s4_8;
    void *temp_s4_9;

    var_a4 = arg4;
    sp38 = arg3;
    var_s1 = *arg2;
    if (var_s1 != 0) {
        var_s1 = -gc->unk5E8;
    }
    temp_s2 = sp + 0x2C;
    sp->unk28 = 0;
    sp->unk24 = 0;
    sp->unk20 = 0;
    sp->unk1C = 0;
    sp->unk18 = 0;
    sp->unk14 = 0;
    sp->unk10 = 0;
    sp->unkC = 0;
    sp->unk8 = 0;
    sp->unk4 = NULL;
    sp->unk0 = NULL;
    temp_a0 = gc->unk19C;
    temp_a3 = gc->unk598->unk4C;
    switch (temp_a0) {                              /* switch 1; irregular */
    default:                                        /* switch 1 */
        var_s4 = sp34;
        var_s5 = sp30;
        break;
    case 6:                                         /* switch 1 */
        var_a4 = temp_a3 * 4;
        temp_s4 = sp + 0x14;
        var_s5 = 2;
        sp78 = temp_a3 * 8;
        temp_s4->unk14 = var_a4;
        temp_s4->unk10 = var_a4;
        temp_s4->unkC = var_a4;
        temp_s4->unk8 = var_a4;
        temp_s4->unk4 = var_a4;
        sp->unk14 = var_a4;
        var_s4 = (__GLcontext *) sp78;
        break;
    case 2:                                         /* switch 1 */
        var_s5 = 6;
        temp_v0 = temp_a3 * 4;
        sp8 = temp_v0;
        sp4 = temp_v0;
        var_s4 = (__GLcontext *) (temp_a3 * 0x18);
        temp_at = temp_a3 * 8;
        sp10 = temp_at;
        spC = temp_at;
        temp_at_2 = temp_a3 * 0xC;
        sp18 = temp_at_2;
        sp14 = temp_at_2;
        temp_at_3 = temp_a3 * 0x10;
        sp20 = temp_at_3;
        sp1C = temp_at_3;
        temp_at_4 = temp_a3 * 0x14;
        sp28 = temp_at_4;
        sp24 = temp_at_4;
        break;
    case 3:                                         /* switch 1 */
        var_s5 = 4;
        var_s4 = (__GLcontext *) (temp_a3 * 0x10);
        temp_v0_2 = temp_a3 * 4;
        sp10 = temp_v0_2;
        spC = temp_v0_2;
        sp8 = temp_v0_2;
        temp_at_5 = temp_a3 * 8;
        sp1C = temp_at_5;
        sp18 = temp_at_5;
        sp14 = temp_at_5;
        temp_at_6 = temp_a3 * 0xC;
        sp28 = temp_at_6;
        sp24 = temp_at_6;
        sp20 = temp_at_6;
        break;
    case 4:                                         /* switch 1 */
        var_s5 = 3;
        temp_at_7 = temp_a3 * 4;
        sp18 = temp_at_7;
        sp14 = temp_at_7;
        spC = temp_at_7;
        temp_at_8 = temp_a3 * 8;
        sp28 = temp_at_8;
        sp24 = temp_at_8;
        sp20 = temp_at_8;
        sp1C = temp_at_8;
        var_s4 = (__GLcontext *) (temp_a3 * 0xC);
        break;
    case 12:                                        /* switch 1 */
        var_s5 = 1;
        var_s4 = (__GLcontext *) (temp_a3 * 4);
        break;
    }
    if (temp_a3 & 1) {
        var_s5 *= 2;
    }
    temp_a0_2 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, -2, 2, temp_a3, var_a4, sp);
    temp_a0_3 = gc->unkCC;
    __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, 0);
    temp_a0_4 = gc->unkD0;
    __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, 1);
    temp_a0_5 = gc->unkD4;
    __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, 0);
    temp_a0_6 = gc->unkD8;
    __glMgrInitPixelStateERAM(temp_a0_6, temp_a0_6, 1);
    temp_lo = (s32) gc->unk598->unk18 / var_s5;
    M2C_TRAP_IF(var_s5 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk1C / var_s5;
    M2C_TRAP_IF(var_s5 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_a2 = gc->unk598->unk18;
    temp_lo_3 = gc->unk19C * (temp_a2 % var_s5);
    M2C_TRAP_IF(var_s5 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_3, temp_lo_3, 0, temp_a2);
    temp_lo_4 = gc->unk19C * ((s32) gc->unk598->unk1C % var_s5);
    M2C_TRAP_IF(var_s5 == 0);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_lo_4, temp_lo_4, 1);
    temp_a0_7 = gc->unk598->unk4C;
    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_7, temp_a0_7, -2);
    __glMgrInitPixelStateERAM(var_s4, var_s4, -2);
    __glMgrInitPixelStateERAM((__GLcontext *) var_s1, var_s1, -2);
    temp_a0_8 = sp->unk0;
    __glMgrInitPixelStateERAM(temp_a0_8, temp_a0_8, -2);
    temp_s4_2 = sp + 4;
    if (temp_s4_2 != temp_s2) {
        temp_a0_9 = sp->unk4;
        __glMgrInitPixelStateERAM(temp_a0_9, temp_a0_9, -2);
        temp_s4_3 = temp_s4_2 + 4;
        if (temp_s4_3 != temp_s2) {
            temp_a0_10 = temp_s4_2->unk4;
            __glMgrInitPixelStateERAM(temp_a0_10, temp_a0_10, -2);
            temp_s4_4 = temp_s4_3 + 4;
            if (temp_s4_4 != temp_s2) {
                temp_a0_11 = temp_s4_3->unk4;
                __glMgrInitPixelStateERAM(temp_a0_11, temp_a0_11, -2);
                temp_s4_5 = temp_s4_4 + 4;
                if (temp_s4_5 != temp_s2) {
                    temp_a0_12 = temp_s4_4->unk4;
                    __glMgrInitPixelStateERAM(temp_a0_12, temp_a0_12, -2);
                    temp_s4_6 = temp_s4_5 + 4;
                    if (temp_s4_6 != temp_s2) {
                        temp_a0_13 = temp_s4_5->unk4;
                        __glMgrInitPixelStateERAM(temp_a0_13, temp_a0_13, -2);
                        temp_s4_7 = temp_s4_6 + 4;
                        if (temp_s4_7 != temp_s2) {
                            temp_a0_14 = temp_s4_6->unk4;
                            __glMgrInitPixelStateERAM(temp_a0_14, temp_a0_14, -2);
                            temp_s4_8 = temp_s4_7 + 4;
                            if (temp_s4_8 != temp_s2) {
                                temp_a0_15 = temp_s4_7->unk4;
                                __glMgrInitPixelStateERAM(temp_a0_15, temp_a0_15, -2);
                                temp_s4_9 = temp_s4_8 + 4;
                                if (temp_s4_9 != temp_s2) {
                                    temp_a0_16 = temp_s4_8->unk4;
                                    __glMgrInitPixelStateERAM(temp_a0_16, temp_a0_16, -2);
                                    temp_s4_10 = temp_s4_9 + 4;
                                    if (temp_s4_10 != temp_s2) {
                                        temp_a0_17 = temp_s4_9->unk4;
                                        __glMgrInitPixelStateERAM(temp_a0_17, temp_a0_17, -2);
                                        if ((temp_s4_10 + 4) != temp_s2) {
                                            temp_a0_18 = temp_s4_10->unk4;
                                            __glMgrInitPixelStateERAM(temp_a0_18, temp_a0_18, -2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    __glMgrInitPixelStateERAM((__GLcontext *) sp38, sp38, -1);
    temp_ra = gc->unk598;
    temp_ra->unk0 *= gc->unk19C;
    temp_at_9 = gc->unk598;
    temp_at_9->unk4 = (s32) (temp_at_9->unk4 * gc->unk19C);
    if (gc->imports.malloc == NULL) {
        temp_a3_2 = gc->unk598;
        temp_a0_19 = temp_a3_2->unk54;
        temp_a2_2 = temp_a3_2->unk0 + temp_a3_2->unk4;
        switch (temp_a0_19) {                       /* switch 2; irregular */
        case 0:                                     /* switch 2 */
        case 1:                                     /* switch 2 */
            temp_a3_2->unk41 = (s8) ((8 - (temp_a2_2 & 7)) & 7);
            break;
        case 4:                                     /* switch 2 */
            temp_a3_2->unk41 = (s8) ((8 - ((temp_a2_2 * 4) & 7)) & 7);
            break;
        case 2:                                     /* switch 2 */
        case 3:                                     /* switch 2 */
            temp_a3_2->unk41 = (s8) ((8 - ((temp_a2_2 * 2) & 7)) & 7);
            break;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44], gap at: 0x20. */
void __glMgrInitZoomState(__GLcontext *gc, void *arg2, __GLcontext *arg3, ...) {
    __GLcontext *sp10;
    __GLcontext *sp8;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_f30;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 var_a0;
    s32 var_a2;
    void *temp_a0_7;

    temp_f30 = arg2->unk4;
    unksp20 = (f64) arg2->unk0;
    __glMgrInitCleanupState(gc, 0, sp, 0, 1, 1, 0);
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a2 = gc->unk598->unk0;
    temp_a0_3 = (s32) (((u32) (temp_a2 >> 3) >> 0x1C) + temp_a2) >> 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_3, temp_a0_3, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk4;
    temp_a0_4 = (s32) (((u32) (temp_a2_2 >> 3) >> 0x1C) + temp_a2_2) >> 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_4, temp_a0_4, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk0;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_5 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 0xF) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk4;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_6 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 0xF) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_6, temp_a0_6, 1, temp_a2_6, temp_a3_2);
    sp8 = temp_f30;
    __glMgrInitPixelStateCRAM(sp8, sp8, -2);
    sp10 = (__GLcontext *) unksp20;
    __glMgrInitPixelStateCRAM(sp10, sp10, -2);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
    temp_a0_7 = gc->unk450;
    if (temp_a0_7 != NULL) {
        temp_a4 = temp_a0_7->unk10;
        temp_a3_3 = temp_a0_7->unk14;
        var_a2 = temp_a3_3;
        if (temp_a3_3 < temp_a4) {
            var_a2 = temp_a4;
        }
        var_a0 = var_a2;
        if (var_a2 < 4) {
            var_a0 = 3;
            goto block_7;
        }
        if (!(var_a2 & 1)) {
            var_a0 = var_a2 + 1;
        }
        goto block_6;
    }
    var_a0 = 0;
block_6:
    if (var_a0 != 0) {
block_7:
        switch (var_a0) {                           /* irregular */
        case 3:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk464, SYMBOL_LOCATION.unk464, -2);
            break;
        case 5:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk468, SYMBOL_LOCATION.unk468, -2);
            break;
        case 7:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk46C, SYMBOL_LOCATION.unk46C, -2);
            break;
        }
    } else {
        __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3AC, SYMBOL_LOCATION.unk3AC, -2);
    }
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk408, SYMBOL_LOCATION.unk408, -1);
}

void __glMgrInitXYZoomState(__GLcontext *gc, __GLcontext *arg3, ...) {
    __GLcontext *temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_a0;
    s32 var_a2;
    void *temp_a0_2;

    __glMgrInitCleanupState(gc, 0, sp, 0, 1, 1, 0);
    temp_a0 = gc->unkDC;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, -2);
    __glMgrInitPixelStateERAM(arg3, arg3, -1);
    temp_a0_2 = gc->unk450;
    if (temp_a0_2 != NULL) {
        temp_a4 = temp_a0_2->unk10;
        temp_a3 = temp_a0_2->unk14;
        var_a2 = temp_a3;
        if (temp_a3 < temp_a4) {
            var_a2 = temp_a4;
        }
        var_a0 = var_a2;
        if (var_a2 < 4) {
            var_a0 = 3;
            goto block_7;
        }
        if (!(var_a2 & 1)) {
            var_a0 = var_a2 + 1;
        }
        goto block_6;
    }
    var_a0 = 0;
block_6:
    if (var_a0 != 0) {
block_7:
        switch (var_a0) {                           /* irregular */
        case 3:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk464, SYMBOL_LOCATION.unk464, -2);
            break;
        case 5:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk468, SYMBOL_LOCATION.unk468, -2);
            break;
        case 7:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk46C, SYMBOL_LOCATION.unk46C, -2);
            break;
        }
    } else {
        __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3AC, SYMBOL_LOCATION.unk3AC, -2);
    }
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk408, SYMBOL_LOCATION.unk408, -1);
}

void __glMgrInitCleanupState(__GLcontext *gc, void *arg2, ...) {
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    s32 *temp_a0;
    s32 *temp_v0;
    s32 temp_a0_4;
    s32 temp_a3;
    s32 temp_a3_2;
    u8 temp_s1;
    void *var_a0;
    void *var_a2;

    temp_a3 = gc->unk60C;
    temp_s1 = arg2->unk1;
    sp0 = (s64) arg2->unk0;
    if ((f64) __glCurrentContext->unk2D4 < (second half of f64)) {
        sp8 = (s64) -temp_a3;
    } else {
        sp8 = (s64) temp_a3;
    }
    if (temp_s1 != 0) {
        temp_a0 = gc->unk598;
        if (arg2->unk2 != 0) {
            if (((s32) (temp_a0->unk18 + 7) >> 3) & 7) {
                __glMgrInitPixelStateCRAM((__GLcontext *)0x42000000, 0x42000000, 0, temp_a3);
            } else {
                __glMgrInitPixelStateCRAM(NULL, 0, 0, temp_a3);
            }
        } else if ((temp_a0->unk0 * (s32) temp_a0->unk58) & 7) {
            __glMgrInitPixelStateCRAM((__GLcontext *)0x42000000, 0x42000000, 0, temp_a3);
        } else {
            __glMgrInitPixelStateCRAM(NULL, 0, 0, temp_a3);
        }
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(0, 0, temp_a3);
    }
    if ((temp_s1 != 0) && (temp_v0 = gc->unk598, (((temp_v0->unk4 * (s32) temp_v0->unk58) & 7) != 0))) {
        __glMgrInitPixelStateCRAM((__GLcontext *)0x42000000, 0x42000000, 1);
    } else {
        __glMgrInitPixelStateCRAM(NULL, 0, 1);
    }
    __glMgrInitPixelStateCRAM((__GLcontext *)0x42010000, 0x42010000, -2);
    temp_a0_2 = gc->unk598->unk20;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 0);
    temp_a0_3 = gc->unk598->unk24;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, 1);
    __glMgrInitPixelStateCRAM((__GLcontext *) sp0, sp0, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *)0x34000, 0x34000, -2);
    __glMgrInitPixelStateCRAM(NULL, 0, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) sp8, sp8, -2);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk1A4, SYMBOL_LOCATION.unk1A4, -1);
    var_a2 = gc->unk450;
    if (var_a2 != NULL) {
        temp_a3_2 = var_a2->unk10;
        temp_a0_4 = var_a2->unk14;
        var_a2 = (void *) temp_a0_4;
        if (temp_a0_4 < temp_a3_2) {
            var_a2 = (void *) temp_a3_2;
        }
        var_a0 = var_a2;
        if ((s32) var_a2 < 4) {
            var_a0 = (void *)3;
            goto block_17;
        }
        if (!((s32) var_a2 & 1)) {
            var_a0 = var_a2 + 1;
        }
        goto block_16;
    }
    var_a0 = NULL;
block_16:
    if (var_a0 != NULL) {
block_17:
        switch (var_a0) {                           /* irregular */
        case 3:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk494, SYMBOL_LOCATION.unk494, -2, var_a2);
            break;
        case 5:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk498, SYMBOL_LOCATION.unk498, -2, var_a2);
            break;
        case 7:
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk49C, SYMBOL_LOCATION.unk49C, -2, var_a2);
            break;
        }
    } else {
        __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3A8, SYMBOL_LOCATION.unk3A8, -2, var_a2);
    }
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk408, SYMBOL_LOCATION.unk408, -1);
}

void __glMgrInitPackingState(__GLcontext *gc, s32 arg6, ...) {
    s64 sp50;
    ? sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    ? *var_a0;
    s32 (*temp_a2_3)(__GLcontext *, void *);
    s32 *var_a3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a4;
    s32 var_a6;
    s64 var_s7;

    var_s7 = saved_reg_s7;
    var_a6 = arg6;
    if (gc->unkF8 & 2) {
        var_a4 = 0;
    } else {
        var_a4 = 2;
    }
    var_a3 = gc->unk598;
    temp_a2 = var_a3->unk54;
    switch (temp_a2) {                              /* irregular */
    case 0:
    case 1:
        temp_a1 = (var_a4 << 0x18) & 0x03000000;
        sp1C = temp_a1 | 0x40080000;
        sp18 = temp_a1 | 0x80800;
        sp14 = temp_a1 | 0x81000;
        sp10 = temp_a1 | 0x81800;
        spC = temp_a1 | 0x82000;
        sp8 = temp_a1 | 0x82800;
        sp4 = temp_a1 | 0x83000;
        sp0 = temp_a1 | 0x83800;
        break;
    case 2:
    case 3:
        temp_v0 = (var_a4 << 0x18) & 0x03000000;
        temp_a2_2 = temp_v0 | 0x40100000;
        sp1C = temp_a2_2;
        temp_a1_2 = temp_v0 | 0x101000;
        sp18 = temp_a1_2;
        temp_v1 = temp_v0 | 0x102000;
        sp14 = temp_v1;
        temp_v0_2 = temp_v0 | 0x103000;
        sp10 = temp_v0_2;
        spC = temp_a2_2;
        sp8 = temp_a1_2;
        sp4 = temp_v1;
        sp0 = temp_v0_2;
        break;
    case 4:
        temp_v1_2 = (var_a4 << 0x18) & 0x03000000;
        temp_a1_3 = temp_v1_2 | 0x40200000;
        sp1C = temp_a1_3;
        temp_v1_3 = temp_v1_2 | 0x202000;
        sp18 = temp_v1_3;
        sp14 = temp_a1_3;
        sp10 = temp_v1_3;
        spC = temp_a1_3;
        sp8 = temp_v1_3;
        sp4 = temp_a1_3;
        sp0 = temp_v1_3;
        break;
    }
    var_a2 = gc->unk100;
    if (!(var_a2 & 0x4000)) {
        if (var_a2 & 0xE00) {
            temp_a2_3 = gc->imports.fclose;
            var_a6 = 1;
            if (temp_a2_3 != (s32 (*)(__GLcontext *, void *))0x1906) {
                if (temp_a2_3 != (s32 (*)(__GLcontext *, void *))0x1905) {
                    var_a2 = 1;
                    if (temp_a2_3 != (s32 (*)(__GLcontext *, void *))0x1904) {

                    } else {
                        goto block_30;
                    }
                } else {
                    goto block_29;
                }
            } else {
                var_a6 = 2;
block_29:
                var_a6 += 1;
                var_a2 = var_a6;
block_30:
                var_a0 = &sp20;
                var_a4 = var_a6 + 8;
                do {
                    var_a0 += 4;
                    temp_v1_4 = var_a2 >> 0x1F;
                    temp_v1_5 = var_a2 >> 0x1F;
                    temp_v0_3 = *(((((((var_a2 ^ temp_v1_4) - temp_v1_4) & 7) ^ temp_v1_5) - temp_v1_5) * 4) + sp);
                    var_a2 += 1;
                    var_a0->unk-4 = temp_v0_3;
                } while (var_a2 != var_a4);
                sp->unk1C = (s32) sp20.unk1C;
                sp->unk18 = (s32) sp20.unk18;
                sp->unk14 = (s32) sp20.unk14;
                sp->unk10 = (s32) sp20.unk10;
                sp->unkC = (s32) sp20.unkC;
                sp->unk8 = (s32) sp20.unk8;
                sp->unk4 = (s32) sp20.unk4;
                sp->unk0 = (s32) sp20.unk0;
                var_s7 = sp50;
            }
        }
    }
    sp50 = var_s7;
    if (var_a3->unk44 == 0x190A) {
        var_a3 = (s32 *)0x40000000;
        var_a4 = 0xBFFFFFFF;
        var_a0_2 = sp->unk4;
        var_a2_2 = sp->unk0;
        if (0x40000000 & var_a0_2) {
            var_a0_2 &= 0xBFFFFFFF;
            sp->unk4 = var_a0_2;
            var_a2_2 |= 0x40000000;
            sp->unk0 = var_a2_2;
        }
        sp->unk0 = var_a0_2;
        var_a0_3 = sp->unkC;
        sp->unk4 = var_a2_2;
        var_a2_3 = sp->unk8;
        if (0x40000000 & var_a0_3) {
            var_a0_3 &= 0xBFFFFFFF;
            sp->unkC = var_a0_3;
            var_a2_3 |= 0x40000000;
            sp->unk8 = var_a2_3;
        }
        sp->unk8 = var_a0_3;
        var_a0_4 = sp->unk14;
        sp->unkC = var_a2_3;
        var_a2_4 = sp->unk10;
        if (0x40000000 & var_a0_4) {
            var_a0_4 &= 0xBFFFFFFF;
            sp->unk14 = var_a0_4;
            var_a2_4 |= 0x40000000;
            sp->unk10 = var_a2_4;
        }
        sp->unk10 = var_a0_4;
        var_a0_5 = sp->unk1C;
        sp->unk14 = var_a2_4;
        var_a2 = sp->unk18;
        if (0x40000000 & var_a0_5) {
            var_a0_5 &= 0xBFFFFFFF;
            sp->unk1C = var_a0_5;
            var_a2 |= 0x40000000;
            sp->unk18 = var_a2;
        }
        sp->unk1C = var_a2;
        sp->unk18 = var_a0_5;
    }
    temp_a0 = sp->unk0;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0, temp_a0, -2, var_a2, var_a3, var_a4, sp, var_a6);
    temp_a0_2 = sp->unk4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_2, temp_a0_2, -2);
    temp_a0_3 = sp->unk8;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = sp->unkC;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_4, temp_a0_4, -2);
    temp_a0_5 = sp->unk10;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_5, temp_a0_5, -2);
    temp_a0_6 = sp->unk14;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, -2);
    temp_a0_7 = sp->unk18;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, -2);
    temp_a0_8 = sp->unk1C;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_8, temp_a0_8, -2);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk1A8, SYMBOL_LOCATION.unk1A8, -1);
}

void __glMgrInitMaskState(__GLcontext *gc, __GLcontext **arg2, s64 arg3, ...) {
    s64 sp20;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_s8;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;

    temp_s8 = *arg2;
    sp20 = arg3;
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_lo = (s32) gc->unk598->unk0 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk4 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_hi = (s32) gc->unk598->unk0 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi, temp_hi, 0);
    temp_hi_2 = (s32) gc->unk598->unk4 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
    __glMgrInitPixelStateCRAM(temp_s8, temp_s8, -2);
    __glMgrInitPixelStateCRAM((__GLcontext *) sp20, sp20, -1);
}

void __glMgrInitB2IState(__GLcontext *gc, void *arg2, s64 arg3, ...) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_s8;
    s32 temp_a0_10;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_s1;

    temp_s1 = arg2->unk4;
    temp_s8 = arg2->unk0;
    unksp18 = arg3;
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_a2 = gc->unk598->unk0 + temp_s1;
    temp_a0_6 = (s32) (((u32) (temp_a2 >> 3) >> 0x1C) + temp_a2) >> 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk4;
    temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 3) >> 0x1C) + temp_a2_2) >> 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk0 + temp_s1;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 0xF) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk4;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 0xF) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
    __glMgrInitPixelStateCRAM(temp_s8, temp_s8, -2);
    temp_a0_10 = temp_s1 * 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_10, temp_a0_10, 0);
    __glMgrInitPixelStateCRAM(NULL, 0, 1);
    __glMgrInitPixelStateCRAM((__GLcontext *) unksp18, unksp18, -1);
}

void __glMgrInitF2IState(__GLcontext *gc, __GLcontext **arg2, __GLcontext *arg3, ...) {
    __GLcontext *sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;

    temp_a0 = gc->unkCC;
    sp0 = *arg2;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_lo = (s32) gc->unk598->unk0 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk4 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_hi = (s32) gc->unk598->unk0 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi, temp_hi, 0);
    temp_hi_2 = (s32) gc->unk598->unk4 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
    __glMgrInitPixelStateCRAM(sp0, sp0, -2);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
}

void __glMgrInitB2FState(__GLcontext *gc, void *arg2, s64 arg3, ...) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_s8;
    s32 temp_a0_10;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_s1;

    temp_s1 = arg2->unk4;
    temp_s8 = arg2->unk0;
    unksp18 = arg3;
    temp_a0 = gc->unkCC;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_a2 = gc->unk598->unk0 + temp_s1;
    temp_a0_6 = (s32) (((u32) (temp_a2 >> 3) >> 0x1C) + temp_a2) >> 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_6, temp_a0_6, 0, temp_a2);
    temp_a2_2 = gc->unk598->unk4;
    temp_a0_7 = (s32) (((u32) (temp_a2_2 >> 3) >> 0x1C) + temp_a2_2) >> 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_7, temp_a0_7, 1, temp_a2_2);
    temp_a2_3 = gc->unk598->unk0 + temp_s1;
    temp_a3 = temp_a2_3 >> 0x1F;
    temp_a2_4 = temp_a2_3 >> 0x1F;
    temp_a0_8 = ((((temp_a2_3 ^ temp_a3) - temp_a3) & 0xF) ^ temp_a2_4) - temp_a2_4;
    __glMgrInitPixelStateCRAM(temp_a0_8, temp_a0_8, 0, temp_a2_4, temp_a3);
    temp_a2_5 = gc->unk598->unk4;
    temp_a3_2 = temp_a2_5 >> 0x1F;
    temp_a2_6 = temp_a2_5 >> 0x1F;
    temp_a0_9 = ((((temp_a2_5 ^ temp_a3_2) - temp_a3_2) & 0xF) ^ temp_a2_6) - temp_a2_6;
    __glMgrInitPixelStateCRAM(temp_a0_9, temp_a0_9, 1, temp_a2_6, temp_a3_2);
    __glMgrInitPixelStateCRAM(temp_s8, temp_s8, -2);
    temp_a0_10 = temp_s1 * 4;
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_a0_10, temp_a0_10, 0);
    __glMgrInitPixelStateCRAM(NULL, 0, 1);
    __glMgrInitPixelStateCRAM((__GLcontext *) unksp18, unksp18, -1);
}

void __glMgrInitDepthFinalState(__GLcontext *gc, __GLcontext **arg2, __GLcontext *arg3, ...) {
    __GLcontext *sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    s32 temp_hi;
    s32 temp_hi_2;
    s32 temp_lo;
    s32 temp_lo_2;

    temp_a0 = gc->unkCC;
    sp0 = *arg2;
    __glMgrInitPixelStateCRAM(temp_a0, temp_a0, 0);
    temp_a0_2 = gc->unkD0;
    __glMgrInitPixelStateCRAM(temp_a0_2, temp_a0_2, 1);
    temp_a0_3 = gc->unkDC;
    __glMgrInitPixelStateCRAM(temp_a0_3, temp_a0_3, -2);
    temp_a0_4 = gc->unkD4;
    __glMgrInitPixelStateCRAM(temp_a0_4, temp_a0_4, 0);
    temp_a0_5 = gc->unkD8;
    __glMgrInitPixelStateCRAM(temp_a0_5, temp_a0_5, 1);
    temp_lo = (s32) gc->unk598->unk0 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo, temp_lo, 0);
    temp_lo_2 = (s32) gc->unk598->unk4 / 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_lo_2, temp_lo_2, 1);
    temp_hi = (s32) gc->unk598->unk0 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi, temp_hi, 0);
    temp_hi_2 = (s32) gc->unk598->unk4 % 24;
    M2C_TRAP_IF(0x18 == 0);
    __glMgrInitPixelStateCRAM((__GLcontext *) temp_hi_2, temp_hi_2, 1);
    __glMgrInitPixelStateCRAM(sp0, sp0, -2);
    __glMgrInitPixelStateCRAM(arg3, arg3, -1);
}

void __glMgrInitScaleBiasFill(__GLcontext *gc, void *arg1, ...) {
    gc->imports.malloc = (bitwise void *(*)(__GLcontext *, u32)) (arg1->unk10 + ((bitwise f32) gc->imports.malloc * arg1->unk0));
    gc->imports.calloc = (bitwise void *(*)(__GLcontext *, u32, u32)) (arg1->unk14 + ((bitwise f32) gc->imports.calloc * arg1->unk4));
    gc->imports.realloc = (bitwise void *(*)(__GLcontext *, void *, u32)) (arg1->unk18 + ((bitwise f32) gc->imports.realloc * arg1->unk8));
    gc->imports.free = (bitwise void (*)(__GLcontext *, void *)) (arg1->unk1C + ((bitwise f32) gc->imports.free * arg1->unkC));
}

void __glMgrInitClampFill(__GLcontext *gc, void *arg1, ...) {
    f64 temp_f6;
    f64 temp_f6_2;
    f64 temp_f6_3;
    f64 temp_f6_4;
    f64 var_f6;
    f64 var_f7;
    f64 var_f7_2;
    f64 var_f7_3;
    f64 var_f7_4;
    f64 var_f7_5;
    f64 var_f7_6;
    f64 var_f7_7;
    f64 var_f8;
    f64 var_f8_2;
    f64 var_f8_3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    u32 var_f4;

    temp_f6 = (f64) gc->imports.malloc;
    var_a4 = 1;
    if (!(temp_f6 < 1.0)) {
        var_a4 = 0;
    }
    var_f4 = 0;
    var_f7 = temp_f6;
    if (var_a4 == 0) {
        var_f7 = 1.0;
    }
    var_f7_2 = GLUE_F64(0x3FF0000000000000U, 0U);
    if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7) {
        var_f8 = second half of f64;
        if (var_a4 == 0) {
            var_f8 = 1.0;
        }
        var_f7_2 = var_f8;
    }
    temp_f6_2 = (f64) gc->imports.calloc;
    var_a4_2 = 1;
    if (!(temp_f6_2 < 1.0)) {
        var_a4_2 = 0;
    }
    var_f7_3 = temp_f6_2;
    gc->imports.malloc = (bitwise void *(*)(__GLcontext *, u32)) (f32) ((f64) arg1->unk0 * var_f7_2);
    if (var_a4_2 == 0) {
        var_f7_3 = 1.0;
    }
    var_f7_4 = GLUE_F64(0x3FF0000000000000U, 0U);
    if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_3) {
        var_f8_2 = second half of f64;
        if (var_a4_2 == 0) {
            var_f8_2 = 1.0;
        }
        var_f7_4 = var_f8_2;
    }
    temp_f6_3 = (f64) gc->imports.realloc;
    var_a4_3 = 1;
    if (!(temp_f6_3 < 1.0)) {
        var_a4_3 = 0;
    }
    var_f7_5 = temp_f6_3;
    gc->imports.calloc = (bitwise void *(*)(__GLcontext *, u32, u32)) (f32) ((f64) arg1->unk4 * var_f7_4);
    if (var_a4_3 == 0) {
        var_f7_5 = 1.0;
    }
    var_f7_6 = GLUE_F64(0x3FF0000000000000U, 0U);
    if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_5) {
        var_f8_3 = second half of f64;
        if (var_a4_3 == 0) {
            var_f8_3 = 1.0;
        }
        var_f7_6 = var_f8_3;
    }
    temp_f6_4 = (f64) gc->imports.free;
    var_a4_4 = 1;
    if (!(temp_f6_4 < 1.0)) {
        var_a4_4 = 0;
    }
    var_f7_7 = temp_f6_4;
    var_f6 = second half of f64;
    gc->imports.realloc = (bitwise void *(*)(__GLcontext *, void *, u32)) (f32) ((f64) arg1->unk8 * var_f7_6);
    if (var_a4_4 == 0) {
        var_f7_7 = 1.0;
        var_f6 = second half of f64;
    }
    if (GLUE_F64(0x3FF0000000000000U, 0U) < var_f7_7) {
        var_f4 = (bitwise u32) var_f6;
        if (var_a4_4 == 0) {
            var_f4 = (bitwise u32) (second half of f64);
        }
    }
    gc->imports.free = (bitwise void (*)(__GLcontext *, void *)) (f32) ((f64) arg1->unkC * (bitwise f64) var_f4);
}

void __glMgrInitLUTRGBFill(__GLcontext *gc, ...) {
    gc->imports.malloc = *(__glCurrentContext->unk408 + ((s32) gc->imports.malloc * 4));
    gc->imports.calloc = *(__glCurrentContext->unk414 + ((s32) gc->imports.calloc * 4));
    gc->imports.realloc = *(__glCurrentContext->unk420 + ((s32) gc->imports.realloc * 4));
    gc->imports.free = *(__glCurrentContext->unk42C + ((s32) gc->imports.free * 4));
}

void __glMgrInitColorTableFill(__GLcontext *gc, s32 *arg1, ...) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a4;
    void *temp_a4_2;

    temp_a4 = *arg1;
    if (temp_a4 & 0x1000) {
        var_a4 = 0x838C;
    } else {
        var_a4 = 0x8404;
        if (temp_a4 & 0x2000) {

        } else {
            var_a4 = 0x8440;
        }
    }
    temp_a4_2 = __glCurrentContext + var_a4;
    temp_a3 = temp_a4_2->unk0;
    temp_a2 = temp_a4_2->unkC;
    temp_a6 = temp_a3 + 8;
    temp_a5 = temp_a3 + 4;
    if (temp_a2 != 0x1908) {
        if (temp_a2 != 0x1907) {
            if (temp_a2 == 0x1909) {
                gc->imports.malloc = *(((s32) gc->imports.malloc * 4) + temp_a3);
                gc->imports.calloc = *(((s32) gc->imports.calloc * 4) + temp_a3);
                gc->imports.realloc = *(((s32) gc->imports.realloc * 4) + temp_a3);
                return;
            }
            if (temp_a2 == 0x190A) {
                gc->imports.malloc = *(((s32) gc->imports.malloc * 2 * 4) + temp_a3);
                gc->imports.calloc = *(((s32) gc->imports.calloc * 2 * 4) + temp_a3);
                gc->imports.realloc = *(((s32) gc->imports.realloc * 2 * 4) + temp_a3);
                gc->imports.free = *(((s32) gc->imports.free * 2 * 4) + temp_a5);
                return;
            }
            if (temp_a2 != 0x1906) {
                if (temp_a2 == 0x8049) {
                    gc->imports.malloc = *(((s32) gc->imports.malloc * 4) + temp_a3);
                    gc->imports.calloc = *(((s32) gc->imports.calloc * 4) + temp_a3);
                    gc->imports.realloc = *(((s32) gc->imports.realloc * 4) + temp_a3);
                    gc->imports.free = *(((s32) gc->imports.free * 4) + temp_a3);
                    return;
                }
                return;
            }
            gc->imports.free = *(((s32) gc->imports.free * 4) + temp_a3);
            return;
        }
        gc->imports.malloc = *(((s32) gc->imports.malloc * 0xC) + temp_a3);
        gc->imports.calloc = *(((s32) gc->imports.calloc * 0xC) + temp_a5);
        gc->imports.realloc = *(((s32) gc->imports.realloc * 0xC) + temp_a6);
        return;
    }
    gc->imports.malloc = *(((s32) gc->imports.malloc * 4 * 4) + temp_a3);
    gc->imports.calloc = *(((s32) gc->imports.calloc * 4 * 4) + temp_a5);
    gc->imports.realloc = *(((s32) gc->imports.realloc * 4 * 4) + temp_a6);
    gc->imports.free = *(((s32) gc->imports.free * 4 * 4) + (temp_a3 + 0xC));
}

void __glMgrInitConvolve2DFill(__GLcontext *gc, ...) {
    gc->imports.malloc = (bitwise void *(*)(__GLcontext *, u32)) (__glCurrentContext->unk82E8 * (bitwise f32) gc->imports.malloc);
    gc->imports.calloc = (bitwise void *(*)(__GLcontext *, u32, u32)) (__glCurrentContext->unk82EC * (bitwise f32) gc->imports.calloc);
    gc->imports.realloc = (bitwise void *(*)(__GLcontext *, void *, u32)) (__glCurrentContext->unk82F0 * (bitwise f32) gc->imports.realloc);
    gc->imports.free = (bitwise void (*)(__GLcontext *, void *)) (__glCurrentContext->unk82F4 * (bitwise f32) gc->imports.free);
}

void __glMgrInitConvolve1DFill(__GLcontext *gc, ...) {
    gc->imports.malloc = (bitwise void *(*)(__GLcontext *, u32)) (__glCurrentContext->unk8298 * (bitwise f32) gc->imports.malloc);
    gc->imports.calloc = (bitwise void *(*)(__GLcontext *, u32, u32)) (__glCurrentContext->unk829C * (bitwise f32) gc->imports.calloc);
    gc->imports.realloc = (bitwise void *(*)(__GLcontext *, void *, u32)) (__glCurrentContext->unk82A0 * (bitwise f32) gc->imports.realloc);
    gc->imports.free = (bitwise void (*)(__GLcontext *, void *)) (__glCurrentContext->unk82A4 * (bitwise f32) gc->imports.free);
}

void __glMgrInitSeparable2DFill(__GLcontext *gc, ...) {
    gc->imports.malloc = (bitwise void *(*)(__GLcontext *, u32)) (__glCurrentContext->unk8338 * (bitwise f32) gc->imports.malloc);
    gc->imports.calloc = (bitwise void *(*)(__GLcontext *, u32, u32)) (__glCurrentContext->unk833C * (bitwise f32) gc->imports.calloc);
    gc->imports.realloc = (bitwise void *(*)(__GLcontext *, void *, u32)) (__glCurrentContext->unk8340 * (bitwise f32) gc->imports.realloc);
    gc->imports.free = (bitwise void (*)(__GLcontext *, void *)) (__glCurrentContext->unk8344 * (bitwise f32) gc->imports.free);
}

void __glMgrBuildFastPathChain(__GLcontext *gc, ...) {
    ? *temp_a0;
    ? *temp_a0_2;
    __GLcontext *temp_s5;
    s32 temp_at;

    temp_s5 = __glCurrentContext;
    temp_s5->stencilBuffer.unk50 = -1;
    temp_s5->stencilBuffer.unk54 = 1;
    temp_s5->stencilBuffer.unk55 = 1;
    temp_s5->stencilBuffer.unk56 = 1;
    if (gc->imports.wscx != (void *)0x1A00) {
        temp_s5->stencilBuffer.unk56 = 0;
    } else {
        temp_at = temp_s5->unk97E4 | 0xF;
        temp_s5->unk97E4 = temp_at;
        temp_s5->unk97E4 = (s32) ((temp_at & ~0x3800) | ((gc->unk68 & 7) << 0xB));
        temp_s5->stencilBuffer.unk56 = 1;
    }
    temp_a0 = &gc->unk1AC;
    __glMgrAddModule((__GLcontext *) temp_a0, temp_a0, 0xE6, __glMgrInitMaskState, 0, SYMBOL_LOCATION.unk1AC, &temp_s5->stencilBuffer.unk50);
    temp_a0_2 = &gc->unk1C8;
    __glMgrAddModule((__GLcontext *) temp_a0_2, temp_a0_2, 0xEA, __glMgrInitCleanupState, 0, 0, &temp_s5->stencilBuffer.unk54);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x28, 0x2c], gap at: 0x20. */
void __glMgrBuildColorChainHead(__GLcontext *gc, ...) {
    s64 sp38;
    s64 sp30;
    ? *temp_a0;
    ? *temp_a0_2;
    ? *temp_a0_3;
    ? *temp_a7;
    ? *temp_s2;
    ? *temp_s2_2;
    ? *temp_s2_3;
    __GLcontext *temp_s1;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s64 var_ra;
    s64 var_s2;
    void *var_a7;

    var_s2 = saved_reg_s2;
    var_ra = saved_reg_ra;
    temp_s1 = __glCurrentContext;
    temp_s1->depthBuffer.unk40 = 0x800000;
    temp_s1->depthBuffer.unk3C = 0;
    temp_s1->depthBuffer.unk38 = 0;
    temp_s1->depthBuffer.unk34 = 0x800000;
    temp_s1->depthBuffer.unk30 = 0;
    temp_s1->depthBuffer.unk2C = 0x1000;
    temp_s1->stencilBuffer.unk5C = 0;
    temp_s1->stencilBuffer.unk58 = -1;
    temp_s1->depthBuffer.unk54 = 1.0f;
    temp_s1->depthBuffer.unk50 = 0.0f;
    temp_s1->depthBuffer.scale = 0;
    temp_s1->depthBuffer.unk48 = 0.0f;
    temp_s1->depthBuffer.unk44 = 1.0f;
    temp_s1->depthBuffer.unk28 = 0.000015259022f;
    if (gc->unk1A8 & 0x800000) {
        temp_a0 = &gc->unk1AC;
        __glMgrAddModule((__GLcontext *) temp_a0, temp_a0, 0xEC, __glMgrInitUnpackState, 0, SYMBOL_LOCATION.unk34C, 0);
        var_ra = sp38;
    }
    if (gc->imports.wscx == (void *)0x1405) {
        sp38 = var_ra;
        temp_a0_2 = &gc->unk1AC;
        __glMgrAddModule((__GLcontext *) temp_a0_2, temp_a0_2, 0xE9, __glMgrInitShiftAdd, 0, SYMBOL_LOCATION.unk1B0, &temp_s1->stencilBuffer.unk58);
    }
    if (gc->imports.wscx != (void *)0x1406) {
        if (!(0x800000 & gc->unk1A8)) {
            sp38 = var_ra;
            temp_a0_3 = &gc->unk1AC;
            __glMgrAddModule((__GLcontext *) temp_a0_3, temp_a0_3, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E0, &gc->exports.notifySwapBuffers);
        }
    }
    if (!(gc->unk1A8 & 2) || !(gc->unk1A8 & 1) || ((f64) gc->exports.dispatchExec != GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U))) {
        temp_f6 = __glCurrentContext->unk268;
        temp_s1->stencilBuffer.unk60 = temp_f6;
        temp_f4 = __glCurrentContext->unk26C;
        temp_s1->stencilBuffer.unk64 = temp_f4;
        temp_f7 = __glCurrentContext->unk270;
        temp_s1->stencilBuffer.unk68 = temp_f7;
        temp_f2 = __glCurrentContext->unk274;
        temp_s1->stencilBuffer.unk6C = temp_f2;
        temp_f8 = __glCurrentContext->unk27C + ((bitwise f32) gc->exports.dispatchExec * temp_f6);
        temp_s1->stencilBuffer.unk70 = temp_f8;
        temp_f5 = __glCurrentContext->unk280 + ((bitwise f32) gc->exports.dispatchExec * temp_f4);
        temp_s1->stencilBuffer.clear = (bitwise void (*)(__GLstencilBuffer *, s64, __GLcontext *)) temp_f5;
        temp_f9 = __glCurrentContext->unk284 + ((bitwise f32) gc->exports.dispatchExec * temp_f7);
        temp_s1->depthBuffer.buf.gc = (bitwise __GLcontext *) temp_f9;
        temp_s1->depthBuffer.buf.drawableBuf = (bitwise void *) (__glCurrentContext->unk288 + ((bitwise f32) gc->exports.dispatchExec * temp_f2));
        temp_t1 = gc->unk100;
        if (temp_t1 == 0) {
            if (gc->unkFC & 0x10) {
                if ((temp_f6 == temp_f4) && (temp_f4 == temp_f7) && (temp_f8 == temp_f5) && (temp_f5 == temp_f9)) {
                    sp38 = var_ra;
                } else {
                    sp38 = var_ra;
                    temp_s2 = &gc->unk1AC;
                    gc->unk100 = temp_t1 | 0xC000;
                    __glMgrAddModule((__GLcontext *) temp_s2, temp_s2, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->depthBuffer.unk44);
                }
            } else {
                sp38 = var_ra;
            }
        } else {
            sp38 = var_ra;
        }
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE8, __glMgrInitScaleBiasState, __glMgrInitScaleBiasFill, SYMBOL_LOCATION.unk1B4, &temp_s1->stencilBuffer.unk60);
        var_s2 = sp30;
        var_ra = sp38;
    }
    if (gc->unk1A8 & 0x10) {
        sp30 = var_s2;
        temp_t1_2 = gc->unk100;
        temp_a7 = &__glCurrentContext->unk3B8;
        if (temp_t1_2 != 0) {
            sp38 = var_ra;
        } else {
            sp38 = var_ra;
            temp_s2_2 = &gc->unk1AC;
            if (gc->unkFC & 0x10) {
                unksp18 = (s64) temp_a7;
                gc->unk100 = temp_t1_2 | 0x4001;
                __glMgrAddModule((__GLcontext *) temp_s2_2, temp_s2_2, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->depthBuffer.unk44);
            }
        }
        temp_f13 = (f32) (temp_a7->unk48 - 1);
        temp_s1->depthBuffer.buf.other = (bitwise void *) temp_f13;
        temp_f12 = (f32) (temp_a7->unk54 - 1);
        temp_s1->depthBuffer.buf.resize = (bitwise void (*)()) temp_f12;
        temp_s1->depthBuffer.buf.makeCurrent = (bitwise void (*)()) (f32) (temp_a7->unk60 - 1);
        temp_s1->depthBuffer.buf.loseCurrent = (bitwise void (*)()) (f32) (temp_a7->unk6C - 1);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDE, __glMgrInitClampState, __glMgrInitClampFill, SYMBOL_LOCATION.unk2F4, &temp_s1->depthBuffer.buf.other, temp_f12, temp_f13);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDB, __glMgrInitLUTRGB, __glMgrInitLUTRGBFill, SYMBOL_LOCATION.unk1C0, &temp_s1->depthBuffer.unk38);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E4, &temp_s1->depthBuffer.unk28);
        var_s2 = sp30;
        var_ra = sp38;
    }
    if (gc->unk1A8 & 0x02000000) {
        temp_t1_3 = gc->unk100;
        var_a7 = temp_s1 + 0x10000;
        if (temp_t1_3 != 0) {
            sp38 = var_ra;
            sp30 = var_s2;
        } else {
            sp30 = var_s2;
            var_a7 = temp_s1 + 0x10000;
            if (gc->unkFC & 0x10) {
                sp38 = var_ra;
                temp_s2_3 = &gc->unk1AC;
                if (!(temp_s1->unk83A0 & 0x10)) {
                    unksp20 = (s64) var_a7;
                    gc->unk100 = temp_t1_3 | 0x4002;
                    __glMgrAddModule((__GLcontext *) temp_s2_3, temp_s2_3, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->depthBuffer.unk44);
                }
            } else {
                sp38 = var_ra;
            }
        }
        temp_f14 = (f32) (var_a7->unk-7C64 - 1);
        temp_s1->depthBuffer.buf.free = (bitwise void (*)()) temp_f14;
        temp_s1->depthBuffer.unk1C = temp_f14;
        temp_s1->depthBuffer.unk20 = temp_f14;
        temp_s1->depthBuffer.unk24 = temp_f14;
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDE, __glMgrInitClampState, __glMgrInitClampFill, SYMBOL_LOCATION.unk2F8, &temp_s1->depthBuffer.buf.free);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDB, __glMgrInitColorTable, __glMgrInitColorTableFill, SYMBOL_LOCATION.unk1C8, &temp_s1->depthBuffer.unk2C);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E8, &temp_s1->depthBuffer.unk28);
    }
}

void __glMgrBuildColorChainTail(__GLcontext *gc, ...) {
    s64 sp58;
    s64 sp50;
    s64 sp38;
    s64 sp10;
    s32 spC;
    void (*sp4)(__GLcontext *, ...);
    void (*sp0)(__GLcontext *, ...);
    ? *temp_a0_3;
    ? *temp_a0_4;
    ? *temp_a0_5;
    ? *temp_s2;
    __GLcontext *temp_f14;
    __GLcontext *temp_s1;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 var_f4;
    s32 (*temp_a3_2)(__GLcontext *, void *);
    s32 (*temp_a3_3)(__GLcontext *, void *);
    s32 (*temp_a3_4)(__GLcontext *, void *);
    s32 *temp_a5_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_a7_7;
    s32 temp_a7_8;
    s32 temp_a7_9;
    s32 var_a0;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a7;
    s32 var_s4;
    s32 var_v1;
    s32 var_v1_2;
    s64 var_a1;
    s64 var_ra;
    void (*temp_f17)(__GLdepthBuffer *, s64, __GLcontext *);
    void (*var_at)(__GLcontext *, ...);
    void *temp_f12;
    void *temp_f13;
    void *temp_s4;
    void *var_s4_2;
    void *var_s4_3;
    void *var_s4_4;

    var_ra = saved_reg_ra;
    temp_s1 = __glCurrentContext;
    temp_s1->unk7EED = 0;
    temp_s1->unk7EEC = 0;
    temp_s1->unk7EEB = 1;
    temp_s1->unk7EEA = 0;
    temp_s1->unk7EE9 = 1;
    temp_s1->unk7EE8 = 1;
    temp_s1->accumBuffer.unk60 = 0x800000;
    temp_s1->accumBuffer.unk5C = 0;
    temp_s1->accumBuffer.unk58 = 0x4000;
    temp_s1->accumBuffer.unk24 = 0x800000;
    temp_s1->accumBuffer.unk20 = 0;
    temp_s1->accumBuffer.unk1C = 0x2000;
    temp_s1->depthBuffer.unk5C = 0.0f;
    temp_s1->depthBuffer.unk60 = 0.0f;
    temp_s1->depthBuffer.unk64 = 0.0f;
    temp_s1->depthBuffer.unk68 = 0.0f;
    temp_s1->unk7ED8 = (void (*)(__GLcontext *))0x3F800000;
    temp_s1->unk7ED4 = 0.0f;
    temp_s1->unk7ED0 = 0.0f;
    temp_s1->unk7ECC = 0.0f;
    temp_s1->unk7EC8 = 1.0f;
    temp_s1->depthBuffer.unk58 = 0.000015259022f;
    temp_s4 = gc->unk450;
    var_a1 = 0;
    if ((temp_s1 + 0x827C) == temp_s4) {
        var_at = __glMgrInitConvolve1DState;
        sp4 = __glMgrInitConvolve1DFill;
        goto block_2;
    }
    if ((temp_s1 + 0x82CC) == temp_s4) {
        var_at = __glMgrInitConvolve2DState;
        sp4 = __glMgrInitConvolve2DFill;
block_2:
        sp0 = var_at;
    } else if ((temp_s1 + 0x831C) == temp_s4) {
        var_a1 = 1;
        sp4 = __glMgrInitSeparable2DFill;
        sp0 = __glMgrInitSeparable2DState;
    }
    temp_a3 = gc->unkF8;
    if (temp_s4 != NULL) {
        temp_a5 = temp_s4->unk14;
        temp_a2 = temp_s4->unk10;
        var_a0 = temp_a5;
        if (temp_a5 < temp_a2) {
            var_a0 = temp_a2;
        }
        temp_a7 = gc->unk100;
        gc->unkF8 = temp_a3 | 8;
        if (temp_a7 != 0) {

        } else {
            temp_s2 = &gc->unk1AC;
            if (gc->imports.fclose != (s32 (*)(__GLcontext *, void *))0x1907) {

            } else {
                sp58 = var_a1;
                sp50 = (s64) var_a0;
                temp_a6 = temp_a7 | 0x4020;
                gc->unk100 = temp_a6;
                __glMgrAddModule((__GLcontext *) temp_s2, temp_s2, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8, temp_a6, temp_a7);
                var_ra = sp38;
            }
        }
        if (gc->unk100 == 0) {
            temp_a3_2 = gc->imports.fclose;
            if (((temp_a3_2 == (s32 (*)(__GLcontext *, void *))0x1909) || (temp_a3_2 == (s32 (*)(__GLcontext *, void *))0x190A)) && ((temp_a2_2 = temp_s4->unkC, (temp_a2_2 == 0x1908)) || (temp_a2_2 == 0x1907))) {
                sp58 = var_a1;
                sp50 = (s64) var_a0;
                sp38 = var_ra;
                gc->unk100 |= 0x4020;
                __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8);
            }
        }
        var_v1 = var_a0 < 4;
        if ((var_a1 != 0) && (var_v1 = var_a0 < 4, (gc->imports.realloc != NULL))) {
            if (gc->imports.malloc != NULL) {
                if (var_a0 < 4) {
                    var_s4 = 0xE0;
                } else if (var_a0 < 6) {
                    var_s4 = 0x117;
                } else if (var_a0 < 8) {
                    var_s4 = 0x118;
                } else {
                    var_s4 = sp8;
                }
            } else {
                var_v1 = var_a0 < 4;
                goto block_19;
            }
        } else {
block_19:
            var_s4 = 0xE0;
            if (var_v1 == 0) {
                if (var_a0 < 6) {
                    var_s4 = 0xEE;
                } else if (var_a0 < 8) {
                    var_s4 = 0xEF;
                } else {
                    var_s4 = sp8;
                }
            }
        }
        temp_a0 = gc->unk1B0->unk10;
        if (temp_a0 != 0xE5) {
            if (temp_a0 == 0xEC) {
                sp38 = var_ra;
                spC = SYMBOL_LOCATION.unk34C + SYMBOL_LOCATION.unk4BC;
            } else {
                sp38 = var_ra;
                __glMgrInsertModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0x120, __glMgrInitCopyFifoLineState, 0, SYMBOL_LOCATION.unk484, 0);
                spC = SYMBOL_LOCATION.unk484 + SYMBOL_LOCATION.unk488;
            }
        } else {
            sp38 = var_ra;
            spC = SYMBOL_LOCATION.unk2E0 + SYMBOL_LOCATION.unk48C;
        }
        temp_s1->depthBuffer.unk6C = spC;
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, var_s4, sp0, sp4, SYMBOL_LOCATION.unk328, &temp_s1->depthBuffer.unk5C);
        var_ra = sp38;
    } else {
        gc->unkF8 = temp_a3 & ~8;
    }
    temp_a0_2 = gc->unk1A8;
    if (temp_a0_2 & 0x100000) {
        if (temp_a0_2 & 0x80000) {
            if (!(temp_a0_2 & 0x40000)) {
                goto block_108;
            }
        } else {
block_108:
            temp_f19 = temp_s1->unk836C;
            temp_s1->depthBuffer.unk70 = temp_f19;
            temp_f18 = temp_s1->unk8370;
            temp_s1->depthBuffer.unk74 = temp_f18;
            temp_f17 = temp_s1->unk8374;
            temp_s1->depthBuffer.clear = temp_f17;
            temp_f16 = temp_s1->unk8378;
            temp_s1->depthBuffer.unk7C = temp_f16;
            temp_f15 = temp_s1->unk837C;
            temp_s1->depthBuffer.unk80 = temp_f15;
            temp_f14 = temp_s1->unk8380;
            temp_s1->accumBuffer.buf.gc = temp_f14;
            temp_f13 = temp_s1->unk8384;
            temp_s1->accumBuffer.buf.drawableBuf = temp_f13;
            temp_f12 = temp_s1->unk8388;
            sp38 = var_ra;
            temp_s1->accumBuffer.buf.other = temp_f12;
            __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE8, __glMgrInitScaleBiasState, __glMgrInitScaleBiasFill, SYMBOL_LOCATION.unk1B8, &temp_s1->depthBuffer.unk70, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
        }
    }
    if (gc->unk1A8 & 0x04000000) {
        temp_a7_2 = gc->unk100;
        if (temp_a7_2 != 0) {
            sp38 = var_ra;
            var_s4_2 = temp_s1 + 0x10000;
        } else {
            sp38 = var_ra;
            var_s4_2 = temp_s1 + 0x10000;
            if (gc->unkFC & 0x10) {
                sp38 = var_ra;
                if (!(temp_s1->unk8418 & 0x10)) {
                    gc->unk100 = temp_a7_2 | 0x4004;
                    __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8);
                }
            }
        }
        temp_f4 = (f32) (var_s4_2->unk-7BEC - 1);
        temp_s1->accumBuffer.buf.resize = (bitwise void (*)()) temp_f4;
        temp_s1->accumBuffer.buf.makeCurrent = (bitwise void (*)()) temp_f4;
        temp_s1->accumBuffer.buf.loseCurrent = (bitwise void (*)()) temp_f4;
        temp_s1->accumBuffer.buf.free = (bitwise void (*)()) temp_f4;
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDE, __glMgrInitClampState, __glMgrInitClampFill, SYMBOL_LOCATION.unk2FC, &temp_s1->accumBuffer.buf.resize);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDB, __glMgrInitColorTable, __glMgrInitColorTableFill, SYMBOL_LOCATION.unk2DC, &temp_s1->accumBuffer.unk1C);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2EC, &temp_s1->depthBuffer.unk58);
        var_ra = sp38;
    }
    if (!(gc->unk1A8 & 0x100)) {
        temp_a7_3 = gc->unk100;
        sp38 = var_ra;
        if (temp_a7_3 == 0) {
            sp38 = var_ra;
            if (gc->imports.other != (void *)4) {
                gc->unk100 = temp_a7_3 | 0x4040;
                __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8);
            }
        }
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDF, __glMgrInitColorMatrixState, 0, SYMBOL_LOCATION.unk1DC, 0);
        var_ra = sp38;
    }
    if (!(gc->unk1A8 & 0x400) || !(gc->unk1A8 & 0x200)) {
        temp_s1->accumBuffer.unk28 = temp_s1->unk825C;
        temp_s1->accumBuffer.unk2C = temp_s1->unk8260;
        temp_s1->accumBuffer.unk30 = temp_s1->unk8264;
        temp_s1->accumBuffer.unk34 = temp_s1->unk8268;
        temp_s1->accumBuffer.unk38 = temp_s1->unk826C;
        temp_s1->accumBuffer.unk3C = temp_s1->unk8270;
        temp_s1->accumBuffer.unk40 = temp_s1->unk8274;
        sp38 = var_ra;
        temp_s1->accumBuffer.unk44 = temp_s1->unk8278;
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE8, __glMgrInitScaleBiasState, __glMgrInitScaleBiasFill, SYMBOL_LOCATION.unk1BC, &temp_s1->accumBuffer.unk28);
    }
    var_a4 = gc->unk1A8 & 0x40;
    if (gc->unk1A8 & 0x08000000) {
        temp_a7_4 = gc->unk100;
        if (temp_a7_4 != 0) {
            sp38 = var_ra;
            var_s4_3 = temp_s1 + 0x10000;
        } else {
            sp38 = var_ra;
            var_s4_3 = temp_s1 + 0x10000;
            if (gc->unkFC & 0x10) {
                sp38 = var_ra;
                if (!(temp_s1->unk8454 & 0x10)) {
                    temp_a6_2 = temp_a7_4 | 0x4008;
                    gc->unk100 = temp_a6_2;
                    __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8, temp_a6_2, temp_a7_4);
                }
            }
        }
        temp_f5 = (f32) (var_s4_3->unk-7BB0 - 1);
        temp_s1->unk7E9C = temp_f5;
        temp_s1->accumBuffer.unk4C = temp_f5;
        temp_s1->accumBuffer.unk50 = temp_f5;
        temp_s1->accumBuffer.unk54 = temp_f5;
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDE, __glMgrInitClampState, __glMgrInitClampFill, SYMBOL_LOCATION.unk300, &temp_s1->accumBuffer.unk48);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDB, __glMgrInitColorTable, __glMgrInitColorTableFill, SYMBOL_LOCATION.unk368, &temp_s1->accumBuffer.unk58);
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2F0, &temp_s1->depthBuffer.unk58);
        var_ra = sp38;
        var_a4 = gc->unk1A8 & 0x40;
    }
    var_v1_2 = gc->unk1A8 & 0x80;
    if (var_a4 != 0) {
        temp_a7_5 = gc->unk100;
        if (temp_a7_5 != 0) {
            sp38 = var_ra;
            var_s4_4 = temp_s1 + 0x10000;
        } else {
            sp38 = var_ra;
            var_s4_4 = temp_s1 + 0x10000;
            if (gc->unkFC & 0x10) {
                sp38 = var_ra;
                if (!(temp_s1->unk81F8 & 0x10)) {
                    gc->unk100 = temp_a7_5 | 0x4080;
                    __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8);
                }
            }
        }
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE4, __glMgrInitHistogramState, 0, SYMBOL_LOCATION.unk1D0, 0);
        var_ra = sp38;
        if (var_s4_4->unk-7E10 != 0) {
            temp_a0_3 = &gc->unk1C8;
            __glMgrAddModule((__GLcontext *) temp_a0_3, temp_a0_3, 0xEA, __glMgrInitCleanupState, 0, 0, temp_s1 + 0x7EEB);
            gc->unkF8 |= 1;
            return;
        }
        var_v1_2 = gc->unk1A8 & 0x80;
        goto block_46;
    }
block_46:
    sp38 = var_ra;
    if (var_v1_2 != 0) {
        temp_a7_6 = gc->unk100;
        sp38 = var_ra;
        if (temp_a7_6 == 0) {
            sp38 = var_ra;
            if (gc->imports.fclose == (s32 (*)(__GLcontext *, void *))0x1909) {
                gc->unk100 = temp_a7_6 | 0x4100;
                __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8);
            }
        }
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE7, __glMgrInitMinMaxState, 0, SYMBOL_LOCATION.unk1D4, 0);
        if (temp_s1->unk820D != 0) {
            temp_a0_4 = &gc->unk1C8;
            __glMgrAddModule((__GLcontext *) temp_a0_4, temp_a0_4, 0xEA, __glMgrInitCleanupState, 0, 0, temp_s1 + 0x7EEB);
            gc->unkF8 |= 1;
            return;
        }
        goto block_52;
    }
block_52:
    temp_s1->accumBuffer.unk64 = gc->exports.beginDispatchOverride;
    temp_s1->accumBuffer.unk68 = gc->exports.beginDispatchOverride;
    temp_s1->accumBuffer.clear = (void (*)(__GLaccumBuffer *)) gc->exports.beginDispatchOverride;
    temp_s1->unk7EC4 = gc->exports.beginDispatchOverride;
    temp_s1->unk7ED8 = gc->exports.beginDispatchOverride;
    __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xDE, __glMgrInitClampState, __glMgrInitClampFill, SYMBOL_LOCATION.unk304, &temp_s1->accumBuffer.unk64);
    var_a7 = gc->unk100;
    if (var_a7 != 0) {
        goto block_53;
    }
    temp_a3_3 = gc->imports.fclose;
    if (gc->unk1A8 & 0x01000000) {
        if ((temp_a3_3 != gc->imports.fprintf) && (temp_a3_3 != (s32 (*)(__GLcontext *, void *))0x1908)) {
            if (temp_a3_3 != (s32 (*)(__GLcontext *, void *))0x8000) {
                goto block_116;
            }
            goto block_129;
        }
block_129:
        if ((temp_a3_3 != (s32 (*)(__GLcontext *, void *))0x1903) && (temp_a3_3 != (s32 (*)(__GLcontext *, void *))0x1904) && (temp_a3_3 != (s32 (*)(__GLcontext *, void *))0x1905)) {
            var_a4_2 = var_a7 & 0xE00;
            if (temp_a3_3 == (s32 (*)(__GLcontext *, void *))0x1906) {
                goto block_116;
            }
        } else {
block_116:
            var_a7 |= 0x200;
            gc->unk100 = var_a7;
            goto block_54;
        }
    } else {
        if ((temp_a3_3 != (s32 (*)(__GLcontext *, void *))0x190A) && (temp_a3_3 != (s32 (*)(__GLcontext *, void *))0x1906)) {
            var_a7 |= 0x800;
        } else {
            var_a7 |= 0x400;
        }
        gc->unk100 = var_a7;
block_53:
block_54:
        var_a4_2 = var_a7 & 0xE00;
    }
    if (var_a4_2 != 0) {
        __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s1->unk7EC8);
        var_a7 = gc->unk100;
    }
    if (var_a7 == 0) {
        temp_a3_4 = gc->imports.fclose;
        if ((temp_a3_4 != (s32 (*)(__GLcontext *, void *))0x1908) && (temp_a3_4 != (s32 (*)(__GLcontext *, void *))0x8000)) {

        } else {
            goto block_60;
        }
    } else {
block_60:
        if (gc->imports.fprintf != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1908) {
            if (gc->unk1A8 & 0x01000000) {
                __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xED, __glMgrInitCompressState, 0, SYMBOL_LOCATION.unk350, 0);
                temp_a7_7 = gc->unk100;
                gc->unkF8 |= 0x10;
                if (temp_a7_7 != 0) {
                    gc->unk100 = temp_a7_7 | 0x4000;
                }
            }
        }
    }
    if (gc->unk1A8 & 0x11000000) {

    } else {
        temp_a5_2 = &temp_s1->boardIndex;
        if (0x01000800 & gc->unk1A8) {
            temp_s1->boardIndex = 0;
            __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0x115, __glMgrInitXZoomState, 0, SYMBOL_LOCATION.unk450, temp_a5_2);
        } else {
            sp10 = (s64) temp_a5_2;
            temp_s1->boardIndex = 0;
            __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0x11E, __glMgrInitZoomState, 0, SYMBOL_LOCATION.unk244, &temp_s1->unk7EDC);
            __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0x115, __glMgrInitXZoomState, 0, SYMBOL_LOCATION.unk450, temp_a5_2);
            __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0x11F, __glMgrInitXYZoomState, 0, SYMBOL_LOCATION.unk450, 0);
        }
        temp_a7_8 = gc->unk100;
        if (temp_a7_8 != 0) {
            gc->unk100 = temp_a7_8 | 0x4000;
        }
    }
    if (!(0x01000800 & gc->unk1A8)) {
        temp_f5_2 = __glCurrentContext->unk2D4;
        var_f4 = temp_f5_2;
        if (temp_f5_2 < 0.0f) {
            var_f4 = -temp_f5_2;
        }
        temp_s1->fd = 0;
        temp_s1->unk7EDC = (f32) ((second half of f64) / (f64) var_f4);
        if (gc->unk1A8 & 0x10000000) {
            __glMgrAddModule((__GLcontext *) &gc->unk1AC, (__GLcontext *) &gc->unk1AC, 0xEB, __glMgrInitZoomState, 0, SYMBOL_LOCATION.unk244, &temp_s1->unk7EDC);
        }
        temp_a7_9 = gc->unk100;
        if (temp_a7_9 != 0) {
            gc->unk100 = temp_a7_9 | 0x4000;
        }
    } else {
        temp_a0_5 = &gc->unk1C8;
        __glMgrAddModule((__GLcontext *) temp_a0_5, temp_a0_5, 0xEA, __glMgrInitCleanupState, 0, 0, &temp_s1->zDepth);
    }
}

void __glMgrBuildCIChainHead(__GLcontext *gc, ...) {
    s64 sp0;
    ? *temp_a0_3;
    ? *temp_a0_4;
    ? *temp_s1;
    ? *temp_s1_2;
    ? *temp_s3;
    __GLcontext *temp_s0;
    f32 *var_a7;
    s32 (*temp_a0)(__GLcontext *, void *);
    s32 (*temp_a0_5)(__GLcontext *, void *);
    s32 temp_a0_2;
    s32 temp_a0_6;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a6_4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_2;
    s8 *temp_s3_2;
    u32 temp_a2_2;
    u32 temp_a2_6;
    u32 temp_a3_2;
    u32 temp_a3_4;
    u8 temp_a6;
    u8 temp_a6_2;
    u8 temp_a6_3;
    u8 temp_a7;
    u8 temp_a7_2;
    u8 temp_a7_3;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a2_5;
    void *temp_s2;

    temp_s0 = __glCurrentContext;
    temp_s0->unkADB4 = 1.0f;
    temp_s0->unkADB8 = 1.0f;
    temp_a2 = gc->unk1A8;
    temp_s3 = &temp_s0->unk3B8;
    var_a7 = &temp_s0->unk268;
    if ((temp_a2 & 8) && (temp_a2 & 4)) {
        temp_a0 = gc->imports.fclose;
        if (temp_a0 != (s32 (*)(__GLcontext *, void *))0x1901) {
            if (temp_a2 & 0x01020010) {
                goto block_4;
            }
            if (temp_a0 != (s32 (*)(__GLcontext *, void *))0x1901) {
                goto block_52;
            }
            goto block_49;
        }
block_49:
        if (temp_a2 & 0x200000) {
block_4:
            if (temp_a0 != (s32 (*)(__GLcontext *, void *))0x1901) {
                if (!(temp_a2 & 0x01020000)) {
                    var_a0 = temp_s3->unk0;
                    temp_s0->unk7F00 = var_a0;
                } else {
                    temp_a3 = temp_s3->unk18;
                    temp_a0_2 = temp_s3->unk24;
                    var_a2 = temp_a0_2;
                    if (temp_a0_2 < temp_a3) {
                        var_a2 = temp_a3;
                    }
                    temp_s0->unk7F00 = var_a2;
                    temp_a3_2 = temp_s3->unk30;
                    var_a0_2 = var_a2;
                    if ((u32) var_a2 < temp_a3_2) {
                        var_a0_2 = (s32) temp_a3_2;
                    }
                    temp_s0->unk7F00 = var_a0_2;
                    temp_a2_2 = temp_s3->unk3C;
                    var_a3 = var_a0_2;
                    if ((u32) var_a0_2 < temp_a2_2) {
                        var_a3 = (s32) temp_a2_2;
                    }
                    var_a0 = var_a3;
                    temp_s0->unk7F00 = var_a3;
                }
            } else {
                var_a0 = temp_s3->unkC;
                temp_s0->unk7F00 = var_a0;
            }
            if (var_a0 != 0) {
                var_a0 -= 1;
                temp_s0->unk7F00 = var_a0;
            }
            temp_a2_3 = gc->imports.wscx;
            temp_s1 = &gc->unk1AC;
            if (temp_a2_3 != (void *)0x1A00) {
                temp_s3_2 = &temp_s0->rendererString[0x10];
                temp_s2 = temp_s0 + 0xADB8;
                if (temp_a2_3 != (void *)0x1405) {
                    if (temp_a2_3 != (void *)0x1406) {
                        if (temp_a2_3 == (void *)0x1400) {
                            var_a2_2 = 0x7F;
                            if ((u32) var_a0 < 0x7FU) {
                                var_a2_2 = var_a0;
                            }
                            temp_s0->unk7F00 = var_a2_2;
                        }
                        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE6, __glMgrInitMaskState, 0, SYMBOL_LOCATION.unk360, temp_s3_2, var_a7);
                        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E0, temp_s2);
                    } else {
                        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE3, __glMgrInitF2IState, 0, SYMBOL_LOCATION.unk334, temp_s0 + 0xADB4, var_a7);
                        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE6, __glMgrInitMaskState, 0, SYMBOL_LOCATION.unk360, temp_s3_2);
                        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E0, temp_s2);
                    }
                } else {
                    __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE6, __glMgrInitMaskState, 0, SYMBOL_LOCATION.unk360, temp_s3_2, var_a7);
                    __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E0, temp_s2);
                }
            } else {
                temp_a7 = var_a7->unk1ED;
                temp_s0->unk7F04 = (s32) temp_a7;
                temp_a6 = gc->unk68;
                temp_s0->unk7F08 = (s32) temp_a6;
                __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xDC, __glMgrInitB2FState, 0, SYMBOL_LOCATION.unk31C, &temp_s0->rendererString[0x14], temp_a6, temp_a7);
            }
        } else {
block_52:
            temp_a2_4 = gc->imports.wscx;
            if (temp_a2_4 != (void *)0x1A00) {
                if (temp_a2_4 == (void *)0x1406) {
                    temp_a0_3 = &gc->unk1AC;
                    __glMgrAddModule((__GLcontext *) temp_a0_3, temp_a0_3, 0xE3, __glMgrInitF2IState, 0, SYMBOL_LOCATION.unk334, temp_s0 + 0xADB4, var_a7);
                }
            } else {
                temp_a7_2 = var_a7->unk1ED;
                temp_a0_4 = &gc->unk1AC;
                temp_s0->unk7EF0 = (s32) temp_a7_2;
                temp_a6_2 = gc->unk68;
                temp_s0->unk7EF4 = (s32) temp_a6_2;
                __glMgrAddModule((__GLcontext *) temp_a0_4, temp_a0_4, 0xDD, __glMgrInitB2IState, 0, SYMBOL_LOCATION.unk330, temp_s0->rendererString, temp_a6_2, temp_a7_2);
            }
        }
    } else {
        temp_a2_5 = gc->imports.wscx;
        temp_s1_2 = &gc->unk1AC;
        if (temp_a2_5 != (void *)0x1A00) {
            if (temp_a2_5 == (void *)0x1406) {
                sp0 = (s64) var_a7;
                __glMgrAddModule((__GLcontext *) temp_s1_2, temp_s1_2, 0xE3, __glMgrInitF2IState, 0, SYMBOL_LOCATION.unk334, temp_s0 + 0xADB4, var_a7);
                var_a7 = (f32 *) sp0;
            }
        } else {
            sp0 = (s64) var_a7;
            temp_a7_3 = var_a7->unk1ED;
            temp_s0->unk7EF0 = (s32) temp_a7_3;
            temp_a6_3 = gc->unk68;
            temp_s0->unk7EF4 = (s32) temp_a6_3;
            __glMgrAddModule((__GLcontext *) temp_s1_2, temp_s1_2, 0xDD, __glMgrInitB2IState, 0, SYMBOL_LOCATION.unk330, temp_s0->rendererString, temp_a6_3, temp_a7_3);
        }
        temp_s0->unk7EF8 = (s32) var_a7->unk70;
        temp_a6_4 = var_a7->unk74;
        temp_s0->unk7EFC = temp_a6_4;
        __glMgrAddModule((__GLcontext *) temp_s1_2, temp_s1_2, 0xE9, __glMgrInitShiftAdd, 0, SYMBOL_LOCATION.unk1B0, &temp_s0->rendererString[8], temp_a6_4, var_a7);
        temp_a0_5 = gc->imports.fclose;
        if (temp_a0_5 != (s32 (*)(__GLcontext *, void *))0x1901) {
            if (gc->unk1A8 & 0x01020010) {
                goto block_34;
            }
            if (temp_a0_5 == (s32 (*)(__GLcontext *, void *))0x1901) {
                goto block_56;
            }
        } else {
block_56:
            if (gc->unk1A8 & 0x200000) {
block_34:
                if (temp_a0_5 != (s32 (*)(__GLcontext *, void *))0x1901) {
                    if (!(gc->unk1A8 & 0x01020000)) {
                        var_a0_3 = temp_s3->unk0;
                        temp_s0->unk7F00 = var_a0_3;
                    } else {
                        temp_a0_6 = temp_s3->unk24;
                        temp_a3_3 = temp_s3->unk18;
                        var_a2_3 = temp_a0_6;
                        if (temp_a0_6 < temp_a3_3) {
                            var_a2_3 = temp_a3_3;
                        }
                        temp_s0->unk7F00 = var_a2_3;
                        temp_a3_4 = temp_s3->unk30;
                        var_a0_4 = var_a2_3;
                        if ((u32) var_a2_3 < temp_a3_4) {
                            var_a0_4 = (s32) temp_a3_4;
                        }
                        temp_s0->unk7F00 = var_a0_4;
                        temp_a2_6 = temp_s3->unk3C;
                        var_a3_2 = var_a0_4;
                        if ((u32) var_a0_4 < temp_a2_6) {
                            var_a3_2 = (s32) temp_a2_6;
                        }
                        var_a0_3 = var_a3_2;
                        temp_s0->unk7F00 = var_a3_2;
                    }
                } else {
                    var_a0_3 = temp_s3->unkC;
                    temp_s0->unk7F00 = var_a0_3;
                }
                if (var_a0_3 != 0) {
                    temp_s0->unk7F00 = (s32) (var_a0_3 - 1);
                }
                __glMgrAddModule((__GLcontext *) temp_s1_2, temp_s1_2, 0xE6, __glMgrInitMaskState, 0, SYMBOL_LOCATION.unk360, &temp_s0->rendererString[0x10]);
                __glMgrAddModule((__GLcontext *) temp_s1_2, temp_s1_2, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E0, temp_s0 + 0xADB8);
            }
        }
    }
}

void __glMgrBuildCItoColorChain(__GLcontext *gc, ...) {
    ? *temp_s1;
    __GLcontext *temp_s0;
    s32 temp_a6;

    temp_s1 = &gc->unk1AC;
    temp_s0 = __glCurrentContext;
    temp_s0->swapInterval = 0x800000;
    temp_s0->unk7F14 = 1;
    temp_s0->unk7F10 = 0x10;
    temp_s0->primitiveProcs[3] = (void (*)(__GLcontext *))0x3F800000;
    temp_s0->primitiveProcs[2] = NULL;
    temp_s0->primitiveProcs[1] = NULL;
    temp_s0->primitiveProcs[0] = NULL;
    temp_s0->unk7F1C = 1.0f;
    temp_s0->unk7F0C = 0.000015259022f;
    temp_a6 = gc->unk100 | 0x5000;
    gc->unk100 = temp_a6;
    __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE2, __glMgrInitExpandState, 0, SYMBOL_LOCATION.unk1A0, &temp_s0->hwFlags, temp_a6, 0x800000);
    __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xDB, __glMgrInitLUTCIST, 0, SYMBOL_LOCATION.unk1C0, &temp_s0->rendererString[0x20]);
    __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E4, &temp_s0->rendererString[0x1C]);
}

void __glMgrBuildCIChainTail(__GLcontext *gc, void (*arg1)(__GLcontext *), s64 arg2, ...) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a0;
    ? *temp_a0_2;
    __GLcontext *temp_s1;
    f32 temp_f5;
    f32 var_f4;
    s32 (*temp_a4)(__GLcontext *, void *);
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 var_a0;
    s32 var_a4;
    void (**temp_a5)(__GLcontext *);

    sp10 = arg2;
    temp_s1 = __glCurrentContext;
    temp_s1->unk7F4E = 0;
    temp_s1->unk7F4D = 1;
    temp_s1->unk7F4C = 1;
    temp_a4 = gc->imports.fclose;
    if (temp_a4 != (s32 (*)(__GLcontext *, void *))0x1901) {
        if (gc->unk1A8 & 0x10) {
            goto block_2;
        }
        if (temp_a4 != (s32 (*)(__GLcontext *, void *))0x1901) {
            sp8 = (s64) &gc->unk1AC;
        } else {
            goto block_15;
        }
    } else {
block_15:
        if (!(gc->unk1A8 & 0x200000)) {
            sp8 = (s64) &gc->unk1AC;
        } else {
block_2:
            if (arg1 != (void (*)(__GLcontext *))8) {
                var_a4 = SYMBOL_LOCATION.unk1C4;
            } else {
                var_a4 = SYMBOL_LOCATION.unk1C0;
            }
            temp_s1->primitiveProcs[5] = NULL;
            temp_s1->primitiveProcs[4] = arg1;
            temp_a0 = &gc->unk1AC;
            sp8 = (s64) temp_a0;
            temp_s1->primitiveProcs[6] = (void (*)(__GLcontext *))0x800000;
            __glMgrAddModule((__GLcontext *) temp_a0, temp_a0, 0xDB, __glMgrInitLUTCIST, 0, var_a4, &temp_s1->primitiveProcs[4], 0x800000, arg1);
        }
    }
    temp_s1->unk7F48 = (s32) sp10;
    __glMgrAddModule((__GLcontext *) sp8, sp8, 0xE6, __glMgrInitMaskState, 0, SYMBOL_LOCATION.unk1AC, temp_s1 + 0x7F48, sp10);
    temp_a1 = gc->unk1A8;
    var_a0 = 0x01000800;
    if (!(temp_a1 & 0x11000000)) {
        temp_a5 = &temp_s1->primitiveProcs[9];
        if (0x01000800 & temp_a1) {
            temp_s1->primitiveProcs[9] = NULL;
            __glMgrAddModule((__GLcontext *) sp8, sp8, 0x115, __glMgrInitXZoomState, 0, SYMBOL_LOCATION.unk450, temp_a5);
        } else {
            sp0 = (s64) temp_a5;
            temp_s1->primitiveProcs[9] = NULL;
            __glMgrAddModule((__GLcontext *) sp8, sp8, 0x11E, __glMgrInitZoomState, 0, SYMBOL_LOCATION.unk244, &temp_s1->primitiveProcs[7]);
            __glMgrAddModule((__GLcontext *) sp8, sp8, 0x115, __glMgrInitXZoomState, 0, SYMBOL_LOCATION.unk450, temp_a5);
            __glMgrAddModule((__GLcontext *) sp8, sp8, 0x11F, __glMgrInitXYZoomState, 0, SYMBOL_LOCATION.unk450, 0);
        }
        var_a0 = 0x01000800;
        temp_a1_2 = gc->unk100;
        if (temp_a1_2 != 0) {
            gc->unk100 = temp_a1_2 | 0x4000;
        }
    }
    if (!(var_a0 & gc->unk1A8)) {
        temp_f5 = __glCurrentContext->unk2D4;
        var_f4 = temp_f5;
        if (temp_f5 < 0.0f) {
            var_f4 = -temp_f5;
        }
        temp_s1->primitiveProcs[8] = NULL;
        temp_s1->primitiveProcs[7] = (bitwise void (*)(__GLcontext *)) (f32) ((second half of f64) / (f64) var_f4);
        if (gc->unk1A8 & 0x10000000) {
            __glMgrAddModule((__GLcontext *) sp8, sp8, 0xEB, __glMgrInitZoomState, 0, SYMBOL_LOCATION.unk244, &temp_s1->primitiveProcs[7]);
        }
        temp_a1_3 = gc->unk100;
        if (temp_a1_3 != 0) {
            gc->unk100 = temp_a1_3 | 0x4000;
        }
    } else {
        temp_a0_2 = &gc->unk1C8;
        __glMgrAddModule((__GLcontext *) temp_a0_2, temp_a0_2, 0xEA, __glMgrInitCleanupState, 0, 0, temp_s1 + 0x7F4C);
    }
}

void __glMgrBuildDepthChain(__GLcontext *gc, ...) {
    s64 sp30;
    ? *temp_a0;
    ? *temp_s1;
    __GLcontext *temp_s2;
    f32 *temp_s3;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f5;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 var_a0;
    s64 var_ra;
    void *temp_a2;
    void *temp_a5;

    var_ra = saved_reg_ra;
    temp_s2 = __glCurrentContext;
    temp_s1 = &gc->unk1AC;
    temp_s2->unk7F86 = 0;
    temp_s2->unk7F85 = 1;
    temp_s2->unk7F84 = 1;
    temp_s2->unk7F54 = 0;
    temp_s2->unk7F50 = -1;
    temp_a2 = gc->imports.wscx;
    temp_s3 = &temp_s2->unk268;
    if (temp_a2 != (void *)0x1405) {
        if (temp_a2 != (void *)0x1406) {
            __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E0, &gc->exports.notifySwapBuffers);
            goto block_3;
        }
    } else {
        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE9, __glMgrInitShiftAdd, 0, SYMBOL_LOCATION.unk1B0, temp_s2 + 0x7F50);
        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE5, __glMgrInitI2FState, 0, SYMBOL_LOCATION.unk2E0, &gc->exports.notifySwapBuffers);
block_3:
        var_ra = sp30;
    }
    temp_f4 = temp_s3->unk10;
    if (((f64) temp_f4 != (second half of f64)) || (// Error: Tried to use a double-precision instruction with odd-numbered float register $f5, // At instruction: c.eq.d $f2, $f5, M2C_ERROR()) || (// Error: Tried to use a double-precision instruction with odd-numbered float register $f5, // At instruction: c.eq.d $f3, $f5, M2C_ERROR())) {
        temp_s2->unk7F58 = temp_f4;
        sp30 = var_ra;
        temp_s2->unk7F68 = (f32) (temp_s3->unk24 + ((bitwise f32) gc->exports.dispatchExec * temp_f4));
        __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xE8, __glMgrInitScaleBiasState, __glMgrInitScaleBiasFill, SYMBOL_LOCATION.unk1B4, temp_s2 + 0x7F58);
    }
    __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xDE, __glMgrInitClampState, __glMgrInitClampFill, SYMBOL_LOCATION.unk2F4, &gc->exports.beginDispatchOverride);
    temp_a3 = gc->unk1A8;
    var_a0 = 0x01000800;
    if (temp_a3 & 0x11000000) {

    } else {
        temp_a5 = temp_s2 + 0x7F80;
        if (0x01000800 & temp_a3) {
            temp_s2->unk7F80 = 0;
            __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0x115, __glMgrInitXZoomState, 0, SYMBOL_LOCATION.unk450, temp_a5);
        } else {
            unksp10 = (s64) temp_a5;
            temp_s2->unk7F80 = 0;
            __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0x11E, __glMgrInitZoomState, 0, SYMBOL_LOCATION.unk244, temp_s2 + 0x7F78);
            __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0x115, __glMgrInitXZoomState, 0, SYMBOL_LOCATION.unk450, temp_a5);
            __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0x11F, __glMgrInitXYZoomState, 0, SYMBOL_LOCATION.unk450, 0);
        }
        var_a0 = 0x01000800;
        temp_a3_2 = gc->unk100;
        if (temp_a3_2 != 0) {
            gc->unk100 = temp_a3_2 | 0x4000;
        }
    }
    if (!(var_a0 & gc->unk1A8)) {
        temp_f4_2 = __glCurrentContext->unk2D4;
        var_f5 = temp_f4_2;
        if (temp_f4_2 < 0.0f) {
            var_f5 = -temp_f4_2;
        }
        temp_s2->unk7F7C = 0.0f;
        temp_s2->unk7F78 = (f32) ((second half of f64) / (f64) var_f5);
        if (gc->unk1A8 & 0x10000000) {
            __glMgrAddModule((__GLcontext *) temp_s1, temp_s1, 0xEB, __glMgrInitZoomState, 0, SYMBOL_LOCATION.unk244, temp_s2 + 0x7F78);
        }
    } else {
        temp_a0 = &gc->unk1C8;
        __glMgrAddModule((__GLcontext *) temp_a0, temp_a0, 0xEA, __glMgrInitCleanupState, 0, 0, temp_s2 + 0x7F84);
    }
}

void __glMgrAddModule(__GLcontext *gc, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, ...) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *(*temp_ra)(__GLcontext *, u32);
    void *(*temp_v0)(__GLcontext *, u32);

    sp38 = arg1;
    sp18 = arg5;
    sp20 = arg4;
    sp28 = arg3;
    sp30 = arg2;
    temp_v0 = __glCurrentContext->imports.malloc(__glCurrentContext, 0x1CU);
    temp_ra = gc->imports.malloc;
    temp_v0->unk4 = gc;
    temp_v0->unk0 = temp_ra;
    temp_ra->unk4 = temp_v0;
    gc->imports.malloc = temp_v0;
    temp_v0->unk10 = (s32) sp38;
    temp_v0->unk18 = (s32) sp18;
    temp_v0->unkC = (s32) sp28;
    temp_v0->unk8 = (s32) sp30;
    temp_v0->unk14 = (s32) sp20;
}

void __glMgrInsertModule(__GLcontext *gc, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, ...) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *(*temp_v0)(__GLcontext *, u32, u32);

    sp38 = arg1;
    sp18 = arg5;
    sp20 = arg4;
    sp28 = arg3;
    sp30 = arg2;
    temp_v0 = __glCurrentContext->imports.malloc(__glCurrentContext, 0x1CU);
    temp_v0->unk4 = (void *(*)(__GLcontext *, u32, u32)) gc->imports.calloc;
    *gc->imports.calloc = temp_v0;
    gc->imports.calloc = temp_v0;
    temp_v0->unk10 = (s32) sp38;
    temp_v0->unk18 = (s32) sp18;
    temp_v0->unkC = (s32) sp28;
    temp_v0->unk8 = (s32) sp30;
    temp_v0->unk14 = (s32) sp20;
    temp_v0->unk0 = gc;
}

void __glMgrDeleteModule(__GLcontext *gc, ...) {
    gc->imports.malloc->unk4 = (void *(*)(__GLcontext *, u32, u32)) gc->imports.calloc;
    *gc->imports.calloc = (void *(*)(__GLcontext *, u32)) gc->imports.malloc;
    __glCurrentContext->imports.free(__glCurrentContext, gc);
}

void __glMgrFreeChain(__GLcontext *gc, ...) {
    __GLcontext *temp_s5;
    void *(*var_s0)(__GLcontext *, u32, u32);

    temp_s5 = __glCurrentContext;
    var_s0 = gc->imports.calloc;
    if (gc != var_s0) {
        do {
            var_s0 = var_s0->unk4;
            temp_s5->imports.free(temp_s5, *var_s0);
        } while (gc != var_s0);
    }
    gc->imports.malloc = (void *(*)(__GLcontext *, u32)) gc;
    gc->imports.calloc = (void *(*)(__GLcontext *, u32, u32)) gc;
}

void __glMgrOptimizationFixups(__GLcontext *gc, void *arg1, ...) {
    s32 temp_a2;

    if (arg1->unk3E4 & 1) {
        temp_a2 = arg1->unk3EC;
        arg1->unk44 = temp_a2;
        arg1->unk50 = (f32) arg1->unk3F4;
        arg1->unk1E4 = (s32) arg1->unk3E8;
        arg1->unk6C = (f32) arg1->unk3F8;
        arg1->unk40 = (s32) arg1->unk3F0;
        arg1->unk69 = (u8) arg1->unk3FC;
        gc->unk97E4 = (s32) ((gc->unk97E4 & ~0xF) | (temp_a2 & 0xF));
    }
}

void __glMgrOptimizeFinalExpand(__GLcontext *gc, void *arg1, ...) {
    s64 sp30;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    ? (*temp_t9)(void *, s32);
    f32 var_f4;
    s64 var_ra;
    void (*var_s0)();
    void *temp_a0;
    void *temp_a0_2;

    var_ra = saved_reg_ra;
    var_f4 = 0.0f;
    spC = 1.0f;
    sp8 = 0.0f;
    sp4 = 0.0f;
    sp0 = 0.0f;
    var_s0 = gc->stencilBuffer.buf.loseCurrent;
    if (var_s0->unk10 != 0xE2) {
loop_3:
        temp_t9 = var_s0->unkC;
        if (temp_t9 != NULL) {
            temp_t9(sp, var_s0->unk18);
        }
        var_s0 = var_s0->unk4;
        var_f4 = sp0;
        if (var_s0->unk10 != 0xE2) {
            goto loop_3;
        }
        var_ra = sp30;
    }
    temp_a0 = var_s0->unk18;
    temp_a0_2 = temp_a0 + 4;
    if (((temp_a0->unk4 == var_f4) || (arg1->unkFC & 8)) && ((temp_a0_2->unk4 == sp4) || (arg1->unkFC & 4)) && ((temp_a0_2->unk8 == sp8) || (arg1->unkFC & 2)) && ((temp_a0_2->unkC == spC) || (arg1->unkFC & 1))) {
        sp30 = var_ra;
        __glMgrDeleteModule((__GLcontext *) var_s0, var_s0);
        arg1->unk100 = (s32) (arg1->unk100 & ~0x4800);
    }
}

void __glMgrOptimizeCILUT(__GLcontext *gc, void *arg1, ...) {
    s64 sp10;
    __GLcontext *spC;
    __GLcontext *sp8;
    void *(*sp4)(__GLcontext *, u32, u32);
    __GLcontext *sp0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_a3;
    void (*var_a4)();
    void *temp_s0;
    void *var_a1;

    var_a1 = arg1;
    var_a3 = 0;
    temp_s0 = var_a1;
    gc->unk7F88 = 0;
    var_a4 = gc->stencilBuffer.buf.loseCurrent;
    gc->unk7F8C = 0;
    if (var_a4->unk10 == 0xE6) {
        var_a4 = var_a4->unk4;
        var_a1 = (void *)0xE5;
        if ((var_a4 != NULL) && (var_a4->unk10 == 0xE5)) {
            sp0 = (__GLcontext *) var_a4;
            var_a4 = var_a4->unk4;
            if (var_a4 != NULL) {
                if (var_a4->unk10 == 0xE2) {
                    var_a4 = var_a4->unk4;
                }
                if ((var_a4 != NULL) && (var_a4->unk10 == 0xDB)) {
                    sp4 = (void *(*)(__GLcontext *, u32, u32)) var_a4;
                    var_a4 = var_a4->unk4;
                    if ((var_a4 != NULL) && (var_a4->unk10 == 0xE5)) {
                        sp8 = (__GLcontext *) var_a4;
                        var_a4 = var_a4->unk4;
                        if ((var_a4 != NULL) && (var_a4->unk10 == 0xDE)) {
                            spC = (__GLcontext *) var_a4;
                            if (var_a4->unk4 == &gc->stencilBuffer.buf.makeCurrent) {
                                var_a3 = 1;
                            }
                        }
                    }
                }
            }
        }
    }
    sp10 = (s64) gc;
    temp_a2 = (temp_s0->unk404 | 8) & ~4;
    temp_s0->unk404 = temp_a2;
    if (var_a3 != 0) {
        temp_a3 = temp_s0->unk3E4 | 1;
        temp_s0->unk3E4 = temp_a3;
        __glMgrDeleteModule(spC, spC, var_a1, temp_a2, temp_a3, var_a4);
        __glMgrDeleteModule(sp0, sp0);
        __glMgrDeleteModule(sp8, sp8);
        sp4->unk18->unk8 = 0;
        temp_s0->unk1E4 = 0x10;
        temp_a1 = temp_s0->unk40;
        temp_s0->unkF8 = (s32) (temp_s0->unkF8 & ~2);
        switch (temp_a1) {                          /* irregular */
        case 2:
        case 3:
            break;
        case 0:
            /* fallthrough */
        case 1:
            temp_s0->unk100 = (s32) (temp_s0->unk100 | 0x6000);
            temp_s0->unk404 = (s32) ((temp_s0->unk404 | 4) & ~8);
            temp_s0->unk40 = 3;
            sp10->unk97E4 = (s32) (sp10->unk97E4 & ~0xF);
            break;
        case 4:
            temp_s0->unk44 = 1;
            temp_s0->unk40 = 3;
            temp_s0->unk50 = 2.0f;
            temp_s0->unk69 = (s8) ((8 - ((temp_s0->unk58 * 2) & 7)) & 7);
            sp10->unk97E4 = (s32) ((sp10->unk97E4 & ~0xF) | 1);
            break;
        }
    }
}

void __glMgrOptimizeRGBLUT(__GLcontext *gc, ...) {

}

void AdjustLUTI2F(void *arg0, void *arg1, void *arg2) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;

    __glCurrentContext->unk7F94 = 0;
    __glCurrentContext->unk7F90 = 0;
    temp_a4 = arg0->unk3C;
    switch (temp_a4) {                              /* irregular */
    case 0:
    case 1:
        temp_a3 = arg1->unk10;
        if (temp_a3 >= 0x101) {
            if (temp_a3 < 0x401) {
                __glCurrentContext->unk7F90 = 2;
            } else {
                __glCurrentContext->unk7F90 = 4;
            }
        } else {
            __glCurrentContext->unk7F90 = 0;
        }
        break;
    case 2:
    case 3:
        temp_a3_2 = arg1->unk10;
        if (temp_a3_2 >= 0x101) {
            if (temp_a3_2 < 0x401) {
                __glCurrentContext->unk7F90 = -6;
            } else {
                __glCurrentContext->unk7F90 = -4;
            }
        } else {
            __glCurrentContext->unk7F90 = -8;
        }
        break;
    case 4:
        temp_a3_3 = arg1->unk10;
        if (temp_a3_3 >= 0x101) {
            if (temp_a3_3 < 0x401) {
                __glCurrentContext->unk7F90 = -0x16;
            } else {
                __glCurrentContext->unk7F90 = -0x14;
            }
        } else {
            __glCurrentContext->unk7F90 = -0x18;
        }
        break;
    }
    arg2->unkC = 0;
    arg2->unk10 = 0xE9;
    arg2->unk18 = (void *) (__glCurrentContext + 0x7F90);
    arg2->unk8 = __glMgrInitShiftAdd;
    arg2->unk14 = (s32) SYMBOL_LOCATION.unk1B0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x40, 0x44, 0x58, 0x5c], gap at: 0x50. */
void __glMgrOptimizeColorTable(__GLcontext *gc, __GLcontext *arg1, void (**arg3)(), ...) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    __GLcontext *sp14;
    __GLcontext *sp10;
    __GLcontext *spC;
    __GLcontext *sp8;
    __GLcontext *sp4;
    void (*sp0)();
    ? *temp_a7;
    f32 *temp_v1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a4_6;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a0;
    s32 var_a2;
    s32 var_v1;
    s8 *(*temp_a4)(__GLcontext *, s8 *);
    void (**var_a3)();
    void (*var_a4)();
    void *temp_a0_2;
    void *temp_a3;
    void *temp_a4_3;
    void *temp_a5_2;

    var_a3 = arg3;
    var_a2 = 0;
    gc->unk7F9C = 0;
    gc->unk7F98 = 0;
    var_a4 = gc->stencilBuffer.buf.loseCurrent;
    if (var_a4 != NULL) {
        if (var_a4->unk10 == 0xE5) {
            sp0 = var_a4;
            var_a4 = var_a4->unk4;
            if (var_a4 != NULL) {
                var_a3 = var_a4->unk10;
                if (var_a3 == (void (**)())0xE2) {
                    sp4 = (__GLcontext *) var_a4;
                    var_a4 = var_a4->unk4;
                }
                if ((var_a4 != NULL) && (var_a4->unk10 == 0xDE)) {
                    sp8 = (__GLcontext *) var_a4;
                    var_a4 = var_a4->unk4;
                    if (var_a4 != NULL) {
                        var_a3 = (void (**)())0xDB;
                        if (var_a4->unk10 == 0xDB) {
                            spC = (__GLcontext *) var_a4;
                            var_a4 = var_a4->unk4;
                            if ((var_a4 != NULL) && (var_a4->unk10 == 0xE5)) {
                                sp10 = (__GLcontext *) var_a4;
                                var_a4 = var_a4->unk4;
                                if ((var_a4 != NULL) && (var_a4->unk10 == 0xDE)) {
                                    var_a3 = &gc->stencilBuffer.buf.makeCurrent;
                                    sp14 = (__GLcontext *) var_a4;
                                    if (var_a4->unk4 == var_a3) {
                                        var_a2 = 1;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (var_a2 != 0) {
        unksp50 = (s64) sp8;
        temp_a1 = arg1->unk3E4 | 1;
        arg1->unk3E4 = temp_a1;
        unksp48 = (s64) sp0;
        temp_v1 = sp0->unk18;
        *temp_v1 *= *sp8->imports.getenv;
        __glMgrDeleteModule(sp10, sp10, temp_a1, var_a2, var_a3, var_a4);
        __glMgrDeleteModule(sp8, sp8);
        __glMgrDeleteModule(sp14, sp14);
        arg1->unkF8 &= ~2;
        temp_a4 = spC->imports.getenv;
        temp_a0 = temp_a4->unk0;
        if (temp_a0 & 0x1000) {
            var_a0 = 0x838C;
        } else {
            var_a0 = 0x8404;
            if (temp_a0 & 0x2000) {

            } else {
                var_a0 = 0x8440;
            }
        }
        temp_a0_2 = gc + var_a0;
        temp_a5 = arg1->imports.unk40;
        switch (temp_a5) {                          /* irregular */
        case 0:
            /* fallthrough */
        case 1:
            temp_a7 = &arg1->unk1AC;
            if (arg1->unk1A8 & 0x01000000) {
                temp_a5_2 = gc + 0x7F98;
                unksp38 = (s64) temp_a0_2;
                sp18 = (s64) spC;
                if (temp_a0_2->unkC == 0x1906) {
                    sp28 = (s64) temp_a7;
                    sp20 = (s64) temp_a5_2;
                    arg1->unk1E4 = 0x10;
                    arg1->unk3E4 |= 2;
                    temp_a4->unk8 = 0;
                    __glMgrOptimizeRGBLUT(arg1, arg1, unksp38, unksp48, 0x01000000, temp_a4, temp_a5_2);
                    temp_a4_2 = unksp38->unk10;
                    if (temp_a4_2 < 0x101) {
                        gc->unk7F98 = 0;
                    } else if (temp_a4_2 < 0x401) {
                        gc->unk7F98 = -2;
                    } else {
                        gc->unk7F98 = -4;
                    }
                    gc->unk7F9C = -8;
                    temp_a3 = arg1->imports.other;
                    if (temp_a3 != (void *)2) {
                        sp18->unk10 = 0x106;
                        __glMgrAddModule((__GLcontext *) sp28, sp28, 0x108, __glMgrInitShiftAddRGB, 0, SYMBOL_LOCATION.unk428, sp20, 0x106, sp18);
                    } else {
                        sp18->unk10 = 0x107;
                        __glMgrDeleteModule(sp4, sp4, 0x107, sp18, temp_a3, temp_a4_2, sp20);
                        __glMgrAddModule((__GLcontext *) sp28, sp28, 0x109, __glMgrInitShiftAddLuminance, 0, SYMBOL_LOCATION.unk428, sp20);
                    }
                } else {
                    gc->unk7F98 = -8;
                    __glMgrAddModule((__GLcontext *) temp_a7, temp_a7, 0xE9, __glMgrInitShiftAdd, 0, SYMBOL_LOCATION.unk428, temp_a5_2);
                }
            } else {
                arg1->imports.unk44 = 1;
                arg1->exports.loseCurrent = (u8 (*)(__GLcontext *))0x40000000;
                arg1->imports.unk40 = 3;
                arg1->unk69 = (s8) ((8 - (((s32) arg1->exports.shareContext * 2) & 7)) & 7);
                gc->unk97E4 = (s32) ((gc->unk97E4 & ~0xF) | 1);
                unksp38 = (s64) temp_a0_2;
                sp18 = (s64) spC;
                if (temp_a0_2->unkC == 0x1906) {
                    arg1->unk1E4 = 0x10;
                    temp_a6 = arg1->unk3E4 | 2;
                    arg1->unk3E4 = temp_a6;
                    temp_a4_3 = sp18->unk18;
                    temp_a4_3->unk8 = 0;
                    __glMgrOptimizeRGBLUT(arg1, arg1, unksp38, unksp48, -0x10, temp_a4_3, 0x10, temp_a6, temp_a7);
                    temp_a4_4 = unksp38->unk10;
                    if (temp_a4_4 < 0x101) {
                        gc->unk7F98 = 8;
                    } else if (temp_a4_4 < 0x401) {
                        gc->unk7F98 = 6;
                    } else {
                        gc->unk7F98 = 4;
                    }
                    gc->unk7F9C = 0;
                    sp20 = (s64) (gc + 0x7F98);
                    sp28 = (s64) &arg1->unk1AC;
                    if (arg1->imports.other != (void *)2) {
                        sp18->unk10 = 0x106;
                        __glMgrAddModule((__GLcontext *) sp28, sp28, 0x108, __glMgrInitShiftAddRGB, 0, SYMBOL_LOCATION.unk428, sp20, 0x106, sp18);
                    } else {
                        sp18->unk10 = 0x107;
                        __glMgrDeleteModule(sp4, sp4);
                        __glMgrAddModule((__GLcontext *) sp28, sp28, 0x109, __glMgrInitShiftAddLuminance, 0, SYMBOL_LOCATION.unk428, sp20);
                    }
                }
            }
            break;
        case 2:
        case 3:
            unksp38 = (s64) temp_a0_2;
            sp18 = (s64) spC;
            if (temp_a0_2->unkC == 0x1906) {
                arg1->unk1E4 = 0x10;
                temp_a3_2 = arg1->unk3E4 | 2;
                arg1->unk3E4 = temp_a3_2;
                sp18->unk18->unk8 = 0;
                __glMgrOptimizeRGBLUT(arg1, arg1, unksp38, unksp48, temp_a3_2, 4, temp_a5);
                temp_a4_5 = unksp38->unk10;
                if (temp_a4_5 < 0x101) {
                    gc->unk7F98 = 8;
                } else if (temp_a4_5 < 0x401) {
                    gc->unk7F98 = 6;
                } else {
                    gc->unk7F98 = 4;
                }
                gc->unk7F9C = 0;
                sp20 = (s64) (gc + 0x7F98);
                sp28 = (s64) &arg1->unk1AC;
                if (arg1->imports.other != (void *)2) {
                    sp18->unk10 = 0x106;
                    __glMgrAddModule((__GLcontext *) sp28, sp28, 0x108, __glMgrInitShiftAddRGB, 0, SYMBOL_LOCATION.unk428, sp20, 0x106, sp18);
                } else {
                    sp18->unk10 = 0x107;
                    __glMgrDeleteModule(sp4, sp4);
                    __glMgrAddModule((__GLcontext *) sp28, sp28, 0x109, __glMgrInitShiftAddLuminance, 0, SYMBOL_LOCATION.unk428, sp20);
                }
            }
            break;
        case 4:
            arg1->imports.unk40 = 3;
            arg1->imports.unk44 = 1;
            arg1->exports.loseCurrent = (u8 (*)(__GLcontext *))0x40000000;
            arg1->unk69 = (s8) ((8 - ((arg1->exports.shareContext * 2) & 7)) & 7);
            gc->unk97E4 = (s32) ((gc->unk97E4 & ~0xF) | 1);
            temp_a3_3 = temp_a0_2->unkC;
            unksp38 = (s64) temp_a0_2;
            sp18 = (s64) spC;
            if (temp_a3_3 == 0x1906) {
                arg1->unk1E4 = 0x10;
                arg1->unk3E4 |= 2;
                sp18->unk18->unk8 = 0;
                __glMgrOptimizeRGBLUT(arg1, arg1, unksp38, unksp48, temp_a3_3, 4, temp_a5, 3, 1);
                sp18->unk10 = 0x107;
                temp_a4_6 = unksp38->unk10;
                if (temp_a4_6 < 0x101) {
                    var_v1 = 8;
                    goto block_60;
                }
                if (temp_a4_6 < 0x401) {
                    gc->unk7F98 = 6;
                } else {
                    var_v1 = 4;
block_60:
                    gc->unk7F98 = var_v1;
                }
                gc->unk7F9C = 0;
                sp20 = (s64) (gc + 0x7F98);
                sp28 = (s64) &arg1->unk1AC;
                if (arg1->imports.other != (void *)2) {
                    sp18->unk10 = 0x106;
                    __glMgrAddModule((__GLcontext *) sp28, sp28, 0x108, __glMgrInitShiftAddRGB, 0, SYMBOL_LOCATION.unk428, sp20, 0x106, sp18);
                } else {
                    __glMgrDeleteModule(sp4, sp4);
                    __glMgrAddModule((__GLcontext *) sp28, sp28, 0x109, __glMgrInitShiftAddLuminance, 0, SYMBOL_LOCATION.unk428, sp20);
                }
            }
            break;
        }
    }
}

void __glMgrOptimizeCIMask(__GLcontext *gc, void *arg1, ...) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 var_a1;
    void (*temp_a4)();
    void *temp_a1;

    temp_a4 = gc->stencilBuffer.buf.loseCurrent;
    if (temp_a4->unk10 == 0xE6) {
        temp_a3 = arg1->unk34;
        switch (temp_a3) {                          /* irregular */
        default:
            var_a1 = 0xFFFF;
            if (temp_a3 != 0x1403) {
                var_a1 = -1;
                if (temp_a3 != 0x1404) {
                    var_a1 = -1;
                    if (temp_a3 == 0x1405) {
                        var_a1 = -1;
                    }
                }
            }
            break;
        case 0x1400:
        case 0x1401:
            var_a1 = 0xFF;
            break;
        case 0x1402:
            var_a1 = 0xFFFF;
            break;
        }
        if ((*temp_a4->unk18 & var_a1) == var_a1) {
            temp_a1 = temp_a4->unk4;
            if ((temp_a1 != NULL) && (&gc->stencilBuffer.buf.makeCurrent != temp_a1)) {
                temp_a3_2 = temp_a1->unk10;
                if ((temp_a3_2 != 0xEB) && (temp_a3_2 != 0x115) && (temp_a3_2 != 0x11E)) {
                    __glMgrDeleteModule((__GLcontext *) temp_a4, temp_a4, temp_a1, 0xEB, temp_a3_2, temp_a4);
                }
            }
        }
    }
}

void __glMgrOptimizeChain(__GLcontext *gc, ...) {
    s64 sp18;
    s64 sp0;
    s32 temp_a2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    gc->unk3E4 = 0;
    sp0 = (s64) __glCurrentContext;
    if (gc->unkF8 & 4) {
        return;
    }
    temp_a2 = gc->unk100 & 0x800;
    if (temp_a2 != 0) {
        __glMgrOptimizeFinalExpand((__GLcontext *) sp0, sp0, gc, temp_a2);
        var_ra = sp18;
    }
    if (gc->unk100 & 0x1000) {
        sp18 = var_ra;
        __glMgrOptimizeCILUT((__GLcontext *) sp0, sp0, gc);
        goto block_6;
    }
    if (gc->unk1A8 & 0x10) {
        sp18 = var_ra;
        __glMgrOptimizeRGBLUT((__GLcontext *) sp0, sp0, gc);
block_6:
        var_ra = sp18;
    }
    if (gc->unk1A8 & 0x02000000) {
        sp18 = var_ra;
        __glMgrOptimizeColorTable((__GLcontext *) sp0, sp0, gc);
    }
    if (gc->unk1A8 & 0x4000) {
        sp18 = var_ra;
        __glMgrOptimizeCIMask((__GLcontext *) sp0, sp0, gc);
    }
    if (gc->unk3E4 & 1) {
        gc->unk3F8 = gc->exports.notifySwapBuffers;
        gc->unk3FC = gc->unk69;
        gc->unk3F4 = gc->exports.loseCurrent;
        gc->unk3F0 = gc->imports.unk40;
        gc->unk3EC = gc->imports.unk44;
        gc->unk3E8 = gc->unk1E4;
    }
}

void __glMgrBuildChain(__GLcontext *gc, ...) {
    s64 sp0;
    ? *temp_a0;
    ? *temp_a0_2;
    ? *temp_s4;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_s1;
    s32 (*temp_a3)(__GLcontext *, void *);
    s32 (*temp_a4)(__GLcontext *, void *, s8 *, ...);
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 var_a2;
    void (**temp_s5)();
    void (*var_s2)();
    void *var_s2_2;

    temp_s1 = __glCurrentContext;
    if (gc->unk1A4 & ~0x30000) {
        temp_a0 = &gc->unk1AC;
        gc->unk100 = 0;
        gc->unkF8 = 2;
        __glMgrFreeChain((__GLcontext *) temp_a0, temp_a0);
        temp_a0_2 = &gc->unk1C8;
        sp0 = (s64) temp_a0_2;
        __glMgrFreeChain((__GLcontext *) temp_a0_2, temp_a0_2);
        temp_a1 = gc->unk1A8;
        if (((temp_a1 & 0x3E9E8FF3) == 0x100E8F03) || (((temp_a1 & 0x3002483C) == 0x1000480C) && (gc->imports.wscx != (void *)0x1A00))) {
            goto block_4;
        }
        var_a2 = temp_a1 & 0x8000;
        if (((temp_a1 & 0x3021082C) == 0x1001080C) && (var_a2 = temp_a1 & 0x8000, (gc->imports.wscx != (void *)0x1A00))) {
block_4:
            temp_a3 = gc->imports.fclose;
            if (temp_a3 != (s32 (*)(__GLcontext *, void *))0x190A) {
                goto block_5;
            }
            var_a2 = temp_a1 & 0x8000;
            if (temp_a1 & 0x01000000) {
block_5:
                temp_a4 = gc->imports.fprintf;
                if (temp_a3 != temp_a4) {
                    if (temp_a4 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1908) {
                        goto block_7;
                    }
                    if (temp_a3 == (s32 (*)(__GLcontext *, void *))0x8000) {
                        goto block_23;
                    }
block_7:
                    if (!(temp_a1 & 0x01000000) || (temp_a4 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x8049)) {
                        goto block_9;
                    }
                    var_a2 = temp_a1 & 0x8000;
                    if (temp_a3 == (s32 (*)(__GLcontext *, void *))0x1909) {
                        goto block_23;
                    }
                    goto block_10;
                }
block_23:
                var_a2 = (s32) gc->imports.wscx;
                if (gc->imports.getDrawablePrivate == var_a2) {
                    if ((temp_a1 & 0x01000000) || (var_a2 = temp_a1 & 0x8000, (temp_a4 != (s32 (*)(__GLcontext *, void *, s8 *, ...))0x1906))) {
                        gc->unkF8 = (gc->unkF8 | 4) & ~2;
                        __glMgrBuildFastPathChain(gc, gc, -3, var_a2, temp_a3, temp_a4);
                    } else {
                        goto block_10;
                    }
                } else {
block_9:
                    var_a2 = temp_a1 & 0x8000;
                    goto block_10;
                }
            } else {
                goto block_10;
            }
        } else {
block_10:
            if (var_a2 != 0) {
                __glMgrBuildColorChainHead(gc, gc, temp_a1, var_a2);
                __glMgrBuildColorChainTail(gc, gc);
            } else {
                temp_a2 = temp_a1 & 0x4000;
                if (temp_a2 != 0) {
                    __glMgrBuildCIChainHead(gc, gc, temp_a1, temp_a2);
                    if (gc->unk1A8 & 0x01020000) {
                        __glMgrBuildCItoColorChain(gc, gc);
                        __glMgrBuildColorChainTail(gc, gc);
                    } else {
                        __glMgrBuildCIChainTail(gc, gc, 8, __glCurrentContext->unk7844);
                        gc->unkF8 &= ~2;
                    }
                } else if (gc->imports.fclose != (s32 (*)(__GLcontext *, void *))0x1901) {
                    __glMgrBuildDepthChain(gc, gc, temp_a1, temp_a2);
                } else {
                    __glMgrBuildCIChainHead(gc, gc, temp_a1, temp_a2);
                    temp_a3_2 = __glCurrentContext->unk79C4;
                    __glMgrBuildCIChainTail(gc, gc, 4, (2 << temp_a3_2) - 1, temp_a3_2);
                    gc->unkF8 &= ~2;
                }
            }
        }
        __glMgrAddModule((__GLcontext *) sp0, sp0, 0, __glMgrInitPackingState, 0, 0, 0);
        __glMgrOptimizeChain(gc, gc);
        __glMgrInitPixelPath(NULL, 0, 0);
        temp_s5 = &temp_s1->stencilBuffer.buf.makeCurrent;
        var_s2 = temp_s1->stencilBuffer.buf.loseCurrent;
        if (temp_s5 != var_s2) {
            do {
                temp_a0_3 = var_s2->unk10;
                __glMgrInitPixelPath(temp_a0_3, temp_a0_3, var_s2->unk14);
                var_s2 = var_s2->unk4;
            } while (temp_s5 != var_s2);
        }
        var_s2_2 = temp_s1->stencilBuffer.unk30;
        temp_s4 = &temp_s1->stencilBuffer.unk2C;
        if (temp_s4 != var_s2_2) {
loop_18:
            temp_a0_4 = var_s2_2->unk10;
            if (temp_a0_4 != NULL) {
                __glMgrInitPixelPath(temp_a0_4, temp_a0_4, var_s2_2->unk14);
            }
            var_s2_2 = var_s2_2->unk4;
            if (temp_s4 != var_s2_2) {
                goto loop_18;
            }
        }
        if (!(gc->unkF8 & 8)) {
            __glMgrInitPixelStateCRAM(NULL, 0, -2);
            __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3C8, SYMBOL_LOCATION.unk3C8, -1);
        }
        return;
    }
    __glMgrOptimizationFixups(temp_s1, temp_s1, gc);
}

void __glMgrInitPixelPipe(__GLcontext *gc, ...) {
    s64 sp10;
    ? *temp_s4;
    __GLcontext *temp_s2;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a0_3;
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_s0;
    s32 *temp_v0;
    s32 *temp_v1;
    void (**temp_v0_2)();
    void (*var_s0)();
    void *var_s0_2;

    temp_s2 = __glCurrentContext;
    __glMgrComputeStrideSkipBytes(gc, gc->unk598);
    gc->unk598->unk41 = (s8) M2C_ERROR(/* Read from unset register $v0 */);
    temp_a0 = gc->unk598;
    if (gc->unk1A4 & ~0x10000) {
        goto block_1;
    }
    if (temp_a0->unk68 != 0) {
        if (gc->unkF8 & 8) {
            temp_a0->unk0 -= gc->unk600 * (s32) temp_a0->unk4C;
            temp_v0 = gc->unk598;
            temp_v0->unk8 = (s32) (temp_v0->unk8 - gc->unk5F4);
            temp_a0_2 = gc->unk598;
            temp_a0_2->unk18 = (s32) (temp_a0_2->unk18 - gc->unk600);
            temp_a0_3 = gc->unk598;
            if (temp_a0_3->unk1C != 0) {
                temp_a0_3->unk4 = (s32) (temp_a0_3->unk4 - (gc->unk600 * (s32) temp_a0_3->unk4C));
                temp_v1 = gc->unk598;
                temp_v1->unkC = (s32) (temp_v1->unkC - gc->unk5F4);
                temp_a1 = gc->unk598;
                temp_a1->unk1C = (s32) (temp_a1->unk1C - gc->unk600);
            }
            gc->unk598->unk34 = (s32) (gc->unk598->unk34 - gc->unk600);
        }
        return;
    }
block_1:
    if (!(gc->unkF8 & 4)) {
        temp_a0->unk44 = (s32 (*)(__GLcontext *, void *)) gc->imports.fclose;
        gc->unk598->unk50 = (s32) gc->imports.unk3C;
        gc->unk598->unk54 = (s32) gc->imports.unk40;
        gc->unk598->unk58 = (u8 (*)(__GLcontext *)) gc->exports.loseCurrent;
    }
    gc->unk598->unk48 = (void *) gc->imports.wscx;
    gc->unk598->unk4C = (void *) gc->imports.other;
    gc->unk598->unk5C = (s32) gc->unkFC;
    gc->unk598->unk64 = (s32) gc->imports.unk48;
    temp_s0 = gc->unk598;
    gc->unkCC = temp_s0->unk20;
    gc->unkD0 = temp_s0->unk24;
    gc->unkD4 = temp_s0->unk28;
    gc->unkDC = (__GLcontext *) ((s32) (gc->unk5E0 + 0x80C8) >> 1);
    gc->unkD8 = temp_s0->unk2C;
    var_s0 = temp_s2->stencilBuffer.buf.loseCurrent;
    temp_v0_2 = &temp_s2->stencilBuffer.buf.makeCurrent;
    sp10 = (s64) temp_v0_2;
    if (var_s0->unk4 == temp_v0_2) {

    } else {
        var_s0->unk8(gc, sp, var_s0->unk18, var_s0->unk14);
        temp_a1_2 = gc->unk598;
        var_s0 = var_s0->unk4;
        gc->unkCC = temp_a1_2->unk28;
        gc->unkDC = NULL;
        gc->unkD0 = temp_a1_2->unk2C;
        if (var_s0->unk4 != sp10) {
            do {
                var_s0->unk8(gc, sp, var_s0->unk18, var_s0->unk14);
                var_s0 = var_s0->unk4;
            } while (var_s0->unk4 != sp10);
        }
    }
    gc->unkDC = (__GLcontext *)0x1A000;
    __glMgrComputeStrideSkipBytes(gc, gc, sp, var_s0->unk18, var_s0->unk14);
    var_s0_2 = temp_s2->stencilBuffer.unk30;
    temp_s4 = &temp_s2->stencilBuffer.unk2C;
    if (temp_s4 != var_s0_2) {
        do {
            var_s0_2->unk8(gc, sp, var_s0_2->unk18, var_s0_2->unk14);
            var_s0_2 = var_s0_2->unk4;
        } while (temp_s4 != var_s0_2);
    }
    gc->unk1A4 = 0;
    gc->unk598->unk68 = 1U;
}
