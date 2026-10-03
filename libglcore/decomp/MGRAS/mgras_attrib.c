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
    /* 0xCC */ s32 unkCC;                           /* inferred */
    /* 0xD0 */ char padD0[8];                       /* maybe part of unkCC[3]? */
    /* 0xD8 */ void (*clear)(__GLcolorBuffer *);
} __GLcolorBuffer;                                  /* size = 0xDC */

typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ __GLcontext *unk98;                /* inferred */
    /* 0x009C */ __GLcontext *unk9C;                /* inferred */
    /* 0x00A0 */ ? unkA0;                           /* inferred */
    /* 0x00A0 */ char padA0[0x68];
    /* 0x0108 */ f32 unk108;                        /* inferred */
    /* 0x010C */ f32 unk10C;                        /* inferred */
    /* 0x0110 */ void *unk110;                      /* inferred */
    /* 0x0114 */ __GLcontext *unk114;               /* inferred */
    /* 0x0118 */ char pad118[0x50];                 /* maybe part of unk114[0x15]? */
    /* 0x0168 */ ? unk168;                          /* inferred */
    /* 0x0168 */ char pad168[0x30];
    /* 0x0198 */ f32 unk198;                        /* inferred */
    /* 0x019C */ f32 unk19C;                        /* inferred */
    /* 0x01A0 */ f32 unk1A0;                        /* inferred */
    /* 0x01A4 */ f32 unk1A4;                        /* inferred */
    /* 0x01A8 */ f32 unk1A8;                        /* inferred */
    /* 0x01AC */ char pad1AC[4];
    /* 0x01B0 */ f32 unk1B0;                        /* inferred */
    /* 0x01B4 */ f32 unk1B4;                        /* inferred */
    /* 0x01B8 */ s32 unk1B8;                        /* inferred */
    /* 0x01BC */ f32 unk1BC;                        /* inferred */
    /* 0x01C0 */ f32 unk1C0;                        /* inferred */
    /* 0x01C4 */ s32 unk1C4;                        /* inferred */
    /* 0x01C8 */ u16 unk1C8;                        /* inferred */
    /* 0x01CA */ s16 unk1CA;                        /* inferred */
    /* 0x01CC */ s32 unk1CC;                        /* inferred */
    /* 0x01D0 */ s32 unk1D0;                        /* inferred */
    /* 0x01D4 */ s32 unk1D4;                        /* inferred */
    /* 0x01D8 */ s32 unk1D8;                        /* inferred */
    /* 0x01DC */ s32 unk1DC;                        /* inferred */
    /* 0x01E0 */ s32 unk1E0;                        /* inferred */
    /* 0x01E4 */ s32 unk1E4;                        /* inferred */
    /* 0x01E8 */ ? unk1E8;                          /* inferred */
    /* 0x01E8 */ char pad1E8[0x80];
    /* 0x0268 */ s32 unk268;                        /* inferred */
    /* 0x026C */ char pad26C[0x210];                /* maybe part of unk268[0x85]? */
    /* 0x047C */ s32 unk47C;                        /* inferred */
    /* 0x0480 */ enum GLenum unk480;                /* inferred */
    /* 0x0484 */ char pad484[0x8C];                 /* maybe part of unk480[0x24]? */
    /* 0x0510 */ s32 unk510;                        /* inferred */
    /* 0x0514 */ s32 unk514;                        /* inferred */
    /* 0x0518 */ s32 unk518;                        /* inferred */
    /* 0x051C */ s32 unk51C;                        /* inferred */
    /* 0x0520 */ s32 unk520;                        /* inferred */
    /* 0x0524 */ s32 unk524;                        /* inferred */
    /* 0x0528 */ s32 unk528;                        /* inferred */
    /* 0x052C */ s32 unk52C;                        /* inferred */
    /* 0x0530 */ ? unk530;                          /* inferred */
    /* 0x0530 */ char pad530[0x50];
    /* 0x0580 */ ? unk580;                          /* inferred */
    /* 0x0580 */ char pad580[0x50];
    /* 0x05D0 */ void *unk5D0;                      /* inferred */
    /* 0x05D4 */ ? unk5D4;                          /* inferred */
    /* 0x05D4 */ char pad5D4[0x2C];
    /* 0x0600 */ s64 unk600;                        /* inferred */
    /* 0x0608 */ f64 unk608;                        /* inferred */
    /* 0x0610 */ f32 unk610;                        /* inferred */
    /* 0x0614 */ f32 unk614;                        /* inferred */
    /* 0x0618 */ f32 unk618;                        /* inferred */
    /* 0x061C */ f32 unk61C;                        /* inferred */
    /* 0x0620 */ s64 unk620;                        /* inferred */
    /* 0x0628 */ s64 unk628;                        /* inferred */
    /* 0x0630 */ s64 unk630;                        /* inferred */
    /* 0x0638 */ s64 unk638;                        /* inferred */
    /* 0x0640 */ s64 unk640;                        /* inferred */
    /* 0x0648 */ f64 unk648;                        /* inferred */
    /* 0x0650 */ f64 unk650;                        /* inferred */
    /* 0x0658 */ s64 unk658;                        /* inferred */
    /* 0x0660 */ s64 unk660;                        /* inferred */
    /* 0x0668 */ s64 unk668;                        /* inferred */
    /* 0x0670 */ s32 unk670;                        /* inferred */
    /* 0x0674 */ void *unk674;                      /* inferred */
    /* 0x0678 */ char pad678[0x28];                 /* maybe part of unk674[0xB]? */
    /* 0x06A0 */ s32 unk6A0;                        /* inferred */
    /* 0x06A4 */ s32 unk6A4;                        /* inferred */
    /* 0x06A8 */ s32 unk6A8;                        /* inferred */
    /* 0x06AC */ char pad6AC[4];
    /* 0x06B0 */ s32 unk6B0;                        /* inferred */
    /* 0x06B4 */ s32 unk6B4;                        /* inferred */
    /* 0x06B8 */ ? unk6B8;                          /* inferred */
    /* 0x06B8 */ char pad6B8[0x44];
    /* 0x06FC */ s32 unk6FC;                        /* inferred */
    /* 0x0700 */ char pad700[4];
    /* 0x0704 */ enum GLenum unk704;                /* inferred */
    /* 0x0708 */ enum GLenum unk708;                /* inferred */
    /* 0x070C */ enum GLenum unk70C;                /* inferred */
    /* 0x0710 */ enum GLenum unk710;                /* inferred */
    /* 0x0714 */ enum GLenum unk714;                /* inferred */
    /* 0x0718 */ enum GLenum unk718;                /* inferred */
    /* 0x071C */ s32 unk71C;                        /* inferred */
    /* 0x0720 */ s64 unk720;                        /* inferred */
    /* 0x0728 */ s64 unk728;                        /* inferred */
    /* 0x0730 */ s64 unk730;                        /* inferred */
    /* 0x0738 */ s64 unk738;                        /* inferred */
    /* 0x0740 */ s64 unk740;                        /* inferred */
    /* 0x0748 */ s64 unk748;                        /* inferred */
    /* 0x0750 */ s32 unk750;                        /* inferred */
    /* 0x0754 */ s32 unk754;                        /* inferred */
    /* 0x0758 */ f32 unk758;                        /* inferred */
    /* 0x075C */ char pad75C[0xC];                  /* maybe part of unk758[4]? */
    /* 0x0768 */ f32 unk768;                        /* inferred */
    /* 0x076C */ char pad76C[0x64];                 /* maybe part of unk768[0x1A]? */
    /* 0x07D0 */ s32 unk7D0;                        /* inferred */
    /* 0x07D4 */ f32 unk7D4;                        /* inferred */
    /* 0x07D8 */ char pad7D8[0xC];                  /* maybe part of unk7D4[4]? */
    /* 0x07E4 */ f32 unk7E4;                        /* inferred */
    /* 0x07E8 */ char pad7E8[0x64];                 /* maybe part of unk7E4[0x1A]? */
    /* 0x084C */ s32 unk84C;                        /* inferred */
    /* 0x0850 */ f32 unk850;                        /* inferred */
    /* 0x0854 */ char pad854[0xC];                  /* maybe part of unk850[4]? */
    /* 0x0860 */ f32 unk860;                        /* inferred */
    /* 0x0864 */ char pad864[0x64];                 /* maybe part of unk860[0x1A]? */
    /* 0x08C8 */ s32 unk8C8;                        /* inferred */
    /* 0x08CC */ f32 unk8CC;                        /* inferred */
    /* 0x08D0 */ char pad8D0[0xC];                  /* maybe part of unk8CC[4]? */
    /* 0x08DC */ f32 unk8DC;                        /* inferred */
    /* 0x08E0 */ char pad8E0[0x64];                 /* maybe part of unk8DC[0x1A]? */
    /* 0x0944 */ void *unk944;                      /* inferred */
    /* 0x0948 */ void *unk948;                      /* inferred */
    /* 0x094C */ f32 unk94C;                        /* inferred */
    /* 0x0950 */ f32 unk950;                        /* inferred */
    /* 0x0954 */ f32 unk954;                        /* inferred */
    /* 0x0958 */ f32 unk958;                        /* inferred */
    /* 0x095C */ f32 unk95C;                        /* inferred */
    /* 0x0960 */ f32 unk960;                        /* inferred */
    /* 0x0964 */ f32 unk964;                        /* inferred */
    /* 0x0968 */ f32 unk968;                        /* inferred */
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
    /* 0x0CCD */ char padCCD[3];                    /* maybe part of yInverted[4]? */
    /* 0x0CD0 */ f32 unkCD0;                        /* inferred */
    /* 0x0CD4 */ f32 unkCD4;                        /* inferred */
    /* 0x0CD8 */ char padCD8[0x28];                 /* maybe part of unkCD4[0xB]? */
    /* 0x0D00 */ u32 unkD00;                        /* inferred */
    /* 0x0D04 */ s32 unkD04;                        /* inferred */
    /* 0x0D08 */ s32 unkD08;                        /* inferred */
    /* 0x0D0C */ s32 unkD0C;                        /* inferred */
    /* 0x0D10 */ char padD10[0x68];                 /* maybe part of unkD0C[0x1B]? */
    /* 0x0D78 */ f32 unkD78;                        /* inferred */
    /* 0x0D7C */ f32 unkD7C;                        /* inferred */
    /* 0x0D80 */ f32 unkD80;                        /* inferred */
    /* 0x0D84 */ char padD84[0x14];                 /* maybe part of unkD80[6]? */
    /* 0x0D98 */ u32 unkD98;                        /* inferred */
    /* 0x0D9C */ char padD9C[8];                    /* maybe part of unkD98[3]? */
    /* 0x0DA4 */ s32 unkDA4;                        /* inferred */
    /* 0x0DA8 */ char padDA8[0x5A8];                /* maybe part of unkDA4[0x16B]? */
    /* 0x1350 */ s32 unk1350;                       /* inferred */
    /* 0x1354 */ s32 unk1354;                       /* inferred */
    /* 0x1358 */ ? unk1358;                         /* inferred */
    /* 0x1358 */ char pad1358[0x2B0];
    /* 0x1608 */ void *unk1608;                     /* inferred */
    /* 0x160C */ char pad160C[0x934];               /* maybe part of unk1608[0x24E]? */
    /* 0x1F40 */ ? (*unk1F40)(u8, u8, u8, u8);      /* inferred */
    /* 0x1F44 */ char pad1F44[4];
    /* 0x1F48 */ ? (*unk1F48)(s32);                 /* inferred */
    /* 0x1F4C */ char pad1F4C[0xE40];               /* maybe part of unk1F48[0x391]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x8C];
    /* 0x31AC */ ? (*unk31AC)(__GLcontext *, s32, ? *, s64, s32, s32, ?); /* inferred */
    /* 0x31B0 */ char pad31B0[8];                   /* maybe part of unk31AC[3]? */
    /* 0x31B8 */ u32 unk31B8;                       /* inferred */
    /* 0x31BC */ u32 unk31BC;                       /* inferred */
    /* 0x31C0 */ char pad31C0[0x4684];              /* maybe part of unk31BC[0x11A2]? */
    /* 0x7844 */ s32 unk7844;                       /* inferred */
    /* 0x7848 */ char pad7848[0xC];                 /* maybe part of unk7844[4]? */
    /* 0x7854 */ f32 unk7854;                       /* inferred */
    /* 0x7858 */ f32 unk7858;                       /* inferred */
    /* 0x785C */ f32 unk785C;                       /* inferred */
    /* 0x7860 */ char pad7860[0x1C];                /* maybe part of unk785C[8]? */
    /* 0x787C */ f32 unk787C;                       /* inferred */
    /* 0x7880 */ char pad7880[0x1FC];               /* maybe part of unk787C[0x80]? */
    /* 0x7A7C */ s32 unk7A7C;                       /* inferred */
    /* 0x7A80 */ s32 unk7A80;                       /* inferred */
    /* 0x7A84 */ s32 unk7A84;                       /* inferred */
    /* 0x7A88 */ char pad7A88[0x10C];               /* maybe part of unk7A84[0x44]? */
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
    /* 0x30 */ char pad30[4];
    /* 0x34 */ f32 unk34;                           /* inferred */
    /* 0x38 */ f32 unk38;                           /* inferred */
    /* 0x3C */ __GLcontext *unk3C;                  /* inferred */
    /* 0x40 */ __GLcontext *unk40;                  /* inferred */
    /* 0x44 */ __GLcontext *unk44;                  /* inferred */
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
    /* 0x3C */ __GLcontext *unk3C;                  /* inferred */
    /* 0x40 */ char pad40[0xC];                     /* maybe part of unk3C[4]? */
} __GLimports;                                      /* size = 0x4C */

extern ? SYMBOL_LOCATION;

void __glMgrim_SoftEnable(__GLcontext *gc, ...) {
    __GLcontext *temp_s0;
    s32 temp_a3;
    s32 temp_a3_2;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((u32) gc >= 0xBE2U) {
            if ((u32) gc >= 0xBE3U) {
                if ((u32) gc >= 0xDE0U) {
                    if ((u32) gc >= 0xDE1U) {
                        if ((u32) gc >= 0x806FU) {
                            if ((u32) gc <= 0x806FU) {
                                temp_s0->unk6A0 |= 0x40000000;
                                if (temp_s0->unk9CA5 == 0) {
                                    temp_s0->unk925C = (s32) (temp_s0->unk925C | 0x20);
                                }
                            } else {
                                goto block_34;
                            }
                        } else if (gc == (__GLcontext *)0xDE1) {
                            temp_s0->unk6A0 |= 0x20000;
                            if (temp_s0->unk9CA5 == 0) {
                                temp_s0->unk925C = (s32) (temp_s0->unk925C | 0x10);
                            }
                        } else {
                            goto block_34;
                        }
                    } else {
                        temp_s0->unk6A0 |= 0x10000;
                        if (temp_s0->unk9CA5 == 0) {
                            temp_s0->unk925C = (s32) (temp_s0->unk925C | 8);
                        }
                    }
                } else if ((u32) gc >= 0xBF2U) {
                    if ((u32) gc >= 0xBF3U) {
                        if (gc == (__GLcontext *)0xC11) {
                            *(s32 *)0x74080 = 0x6E04;
                            *(s32 *)0x74080 = 1;
                            temp_s0->unk6A0 |= 0x4000;
                        } else {
                            goto block_34;
                        }
                    } else {
                        *(void *)0x74080 = 0x6B04;
                        *(void *)0x74080 = 1;
                        temp_s0->unk6A4 |= 0x800;
                    }
                } else if (gc == (__GLcontext *)0xBF1) {
                    *(void *)0x74080 = 0x6B04;
                    *(void *)0x74080 = 1;
                    temp_s0->unk6A0 |= 4;
                } else {
                    goto block_34;
                }
            } else {
                temp_s0->unk6A0 |= 2;
                *(void *)0x74080 = 0x6504;
                *(void *)0x74080 = 1;
                *(void *)0x74080 = 0x6504;
                *(void *)0x74080 = 1;
            }
        } else if ((u32) gc >= 0xB90U) {
            if ((u32) gc >= 0xB91U) {
                if ((u32) gc >= 0xBD0U) {
                    if ((u32) gc < 0xBD1U) {
                        *(void *)0x74080 = 0x6704;
                        *(void *)0x74080 = 3;
                        temp_s0->unk6A0 |= 8;
                    } else {
                        goto block_34;
                    }
                } else if (gc == (__GLcontext *)0xBC0) {
                    *(void *)0x74080 = 0x6404;
                    *(void *)0x74080 = 1;
                    temp_s0->unk6A0 |= 1;
                } else {
                    goto block_34;
                }
            } else {
                *(void *)0x74080 = 0x6F04;
                *(void *)0x74080 = 1;
                temp_s0->unk6A0 |= 0x8000;
            }
        } else if ((u32) gc >= 0xB41U) {
            if ((u32) gc >= 0xB42U) {
                if (gc == (__GLcontext *)0xB71) {
                    temp_s0->unk6A0 |= 0x10;
                    temp_s0->unk9265 = 1;
                    if (temp_s0->modes.haveDepthBuffer != 0) {
                        *(void *)0x74080 = 0x6604;
                        *(void *)0x74080 = 1;
                    } else {
                        *(void *)0x74080 = 0x6604;
                        *(void *)0x74080 = 0;
                    }
                    __glBeginMode = 2;
                    temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 0x80);
                } else {
                    goto block_34;
                }
            } else {
                temp_a3 = temp_s0->unk6A0;
                if (~temp_a3 & 0x800) {
                    temp_s0->unk6A0 = temp_a3 | 0x800;
                    temp_s0->unk925C = (s32) (temp_s0->unk925C | 2);
                }
            }
        } else if (gc == (__GLcontext *)0xB20) {
            temp_a3_2 = temp_s0->unk6A0;
            if (~temp_a3_2 & 0x200) {
                temp_s0->unk6A0 = temp_a3_2 | 0x200;
                __glim_GetFloatv(GL_LINE_WIDTH, sp);
                if ((second half of f64) < (f64) (second half of f64)) {
                    temp_s0->unk925C = (s32) (temp_s0->unk925C | 4);
                }
            }
        } else {
block_34:
            __glim_Enable((enum GLenum) gc);
        }
        __glBeginMode = 2;
        temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
        return;
    }
    __glSetError(0x502, 1);
}

void __glMgrEvalEnable(__GLcontext *gc, ...) {
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_a0_7;
    __GLcontext *temp_a0_8;
    s32 temp_a1_2;
    s32 temp_a4;
    void *temp_a0;
    void *temp_a0_5;
    void *temp_a1;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *temp_a3_6;
    void *temp_a3_7;
    void *temp_a3_8;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a4_6;
    void *temp_a4_7;
    void *temp_a5;
    void *temp_a5_2;

    temp_a3 = gc - 0xD80;
    if ((u32) temp_a3 < 0x39U) {
        temp_a4 = (s32) gc * 4;
        switch (*(((s32) temp_a3 * 4) + (M2C_ERROR(/* Read from unset register $t9 */) - 0x2190))) { /* unable to parse jump table */
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
            temp_a4_2 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a3_2 = temp_a4_2 + 0xFFFE0000;
            if (temp_a3_2->unk-3B0C != 0) {
                return;
            }
            temp_a3_2->unk-3B0C = 1U;
            temp_a0 = (temp_a3_2->unk-3B1C * 0xC) + __glCurrentContext;
            temp_a0_2 = temp_a0 + 0x85F4;
            temp_a5 = temp_a4_2 + 0xFFFDC4E4;
            if ((u32) temp_a0->unk85F4 < (u32) temp_a5) {
                temp_a0->unk85F4 = (u32) temp_a5;
                __glMgrCleanUp1D(temp_a0_2, temp_a0_2, 0x85F4, __glCurrentContext, temp_a3_2, temp_a4_2, temp_a5);
            }
            break;
        case 0x10:
        case 0x11:
            temp_a4_3 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a3_3 = temp_a4_3 + 0xFFFE0000;
            if (temp_a3_3->unk-3B0C != 0) {
                return;
            }
            temp_a3_3->unk-3B0C = 1U;
            if (__glCurrentContext->modes.colorIndexMode == ((s32) gc == 0xD91)) {
                temp_a0_3 = temp_a4_3 + 0xFFFDC4E4;
                __glCurrentContext->unk8600 = temp_a0_3;
                __glMgrCleanUp1D(temp_a0_3, temp_a0_3, __glCurrentContext + 0x8600, __glCurrentContext, temp_a3_3, temp_a4_3);
            }
            break;
        case 0x12:
            temp_a4_4 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a3_4 = temp_a4_4 + 0xFFFE0000;
            if (temp_a3_4->unk-3B0C == 0) {
                temp_a1 = temp_a4_4 + 0xFFFDC4E4;
                temp_a3_4->unk-3B0C = 1U;
                __glCurrentContext->unk860C = temp_a1;
                __glMgrCleanUp1D(gc, temp_a1, __glCurrentContext + 0x860C, temp_a3_4, 1, 0x860C);
            } else {
                return;
            }
            break;
        case 0x0:
            temp_a0_4 = __glCurrentContext + 0x10000;
            if (__glCurrentContext->unk8A14 == 0) {
                __glCurrentContext->unk8814 = NULL;
                __glCurrentContext->unk8A14 = 1U;
                __glMgrCleanUp2D(temp_a0_4, temp_a0_4, 1, 0xFFFE0000, temp_a4);
            } else {
                return;
            }
            break;
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x38:
            temp_a4_5 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a3_5 = temp_a4_5 + 0xFFFE0000;
            if (temp_a3_5->unk-3F84 != 0) {
                return;
            }
            temp_a3_5->unk-3F84 = 1U;
            temp_a0_5 = (temp_a3_5->unk-3F94 * 0xC) + __glCurrentContext;
            temp_a0_6 = temp_a0_5 + 0x87FC;
            temp_a5_2 = temp_a4_5 + 0xFFFDC06C;
            temp_a1_2 = (u32) temp_a0_5->unk87FC < (u32) temp_a5_2;
            if (temp_a1_2 != 0) {
                temp_a0_5->unk87FC = (u32) temp_a5_2;
                __glMgrCleanUp2D(temp_a0_6, temp_a0_6, temp_a1_2, __glCurrentContext, temp_a3_5, temp_a4_5, temp_a5_2);
            }
            break;
        case 0x30:
        case 0x31:
            temp_a4_6 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a3_6 = temp_a4_6 + 0xFFFE0000;
            if (temp_a3_6->unk-3F84 != 0) {
                return;
            }
            temp_a3_6->unk-3F84 = 1U;
            if (__glCurrentContext->modes.colorIndexMode == ((s32) gc == 0xDB1)) {
                temp_a0_7 = temp_a4_6 + 0xFFFDC06C;
                __glCurrentContext->unk8808 = temp_a0_7;
                __glMgrCleanUp2D(temp_a0_7, temp_a0_7, __glCurrentContext + 0x8808, __glCurrentContext, temp_a3_6, temp_a4_6);
            }
            break;
        case 0x32:
            temp_a4_7 = ((s32) (((temp_a4 - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a3_7 = temp_a4_7 + 0xFFFE0000;
            if (temp_a3_7->unk-3F84 != 0) {
                return;
            }
            temp_a3_7->unk-3F84 = 1U;
            temp_a0_8 = __glCurrentContext + 0x10000;
            if (__glCurrentContext->unk8A14 == 0) {
                temp_a3_8 = temp_a4_7 + 0xFFFDC06C;
                __glCurrentContext->unk8814 = temp_a3_8;
                __glMgrCleanUp2D(temp_a0_8, temp_a0_8, 1, __glCurrentContext, temp_a3_8, temp_a4_7);
            }
            break;
        }
    }
}

void __glMgrEnableLightSource(__GLcontext *gc, s32 arg1, ...) {
    *(s32 *)0x74080 = 0x7104;
    *(s32 *)0x74080 = arg1;
}

void __glMgrim_Enable(enum GLenum cap) {
    s64 sp30;
    s64 sp28;
    s64 sp8;
    s32 sp4;
    __GLcontext *temp_s0;
    enum GLenum temp_at;
    enum GLenum temp_at_2;
    enum GLenum temp_v0;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a6;
    s32 var_a1;
    s64 var_ra;
    u8 temp_a0_2;
    u8 temp_a1;
    void *temp_a0;
    void *temp_a0_3;
    void *temp_a1_2;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_s1;
    void *temp_s1_2;
    void *var_a0;
    void *var_a2;
    void *var_a4;
    void *var_a4_2;
    void *phi_a4;
    void *phi_a4_2;
    void *phi_a4_3;

    var_ra = saved_reg_ra;
    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        var_a1 = cap < GL_MAP2_VERTEX_4;
        if (cap >= GL_MAP2_VERTEX_3) {
            if (var_a1 != 0) {
                goto block_3;
            }
            if (cap >= GL_CONVOLUTION_1D_EXT) {
                if (cap > GL_CONVOLUTION_1D_EXT) {
                    if (cap >= GL_INDEX_ARRAY) {
                        if (cap > GL_INDEX_ARRAY) {
                            var_a1 = cap < GL_POST_CONVOLUTION_COLOR_TABLE_SGI;
                            if (var_a1 == 0) {
                                if (cap > GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                                    if (cap >= 0x8139U) {
                                        var_a1 = 0xBEAD;
                                        if (cap > 0x8139U) {
                                            if (cap == 0xBEAD) {
                                                sp4 = 1;
                                                __glMgrim_IglooInterfaceSGIX((__GLcontext *)0x81A3, 0x81A3, &sp4);
                                                goto block_4;
                                            }
                                            /* Duplicate return node #41. Try simplifying control flow for better match */
                                            __glSetError(0x500, var_a1);
                                            return;
                                        }
                                        temp_s0->backBuffer.unkCC = 1;
                                        goto block_5;
                                    }
                                    if (cap >= 0x8134U) {
                                        if (cap <= 0x8134U) {
                                            var_a2 = temp_s0 + 0x10000;
                                            if (temp_s0->unk9CA5 != 0) {
                                                temp_a4 = temp_s0->unk8A2C;
                                                phi_a4 = temp_a4;
                                                phi_a4_2 = temp_a4;
                                                if (temp_a4 != NULL) {
                                                    if (temp_a4->unkC4 == 0) {
                                                        sp8 = (s64) var_a2;
                                                        M2C_ERROR(/* Read from unset register $t9 */)(temp_a4, var_a1, var_a2, 1, temp_a4);
                                                        var_ra = sp28;
                                                        temp_a4_2 = var_a2->unk-75D4;
                                                        phi_a4 = temp_a4_2;
                                                        phi_a4_2 = temp_a4_2;
                                                    }
                                                    if ((phi_a4 == NULL) || ((s32) phi_a4->unkC4->unkB3 < 6)) {
                                                        goto block_221;
                                                    }
                                                } else {
block_221:
                                                    var_a2->unk-75D4 = (void *) (temp_s0 + 0x8EF8);
                                                    if (var_a2->unk-7044 == var_a2->unk-6E04->unk1E4) {
                                                        sp8 = (s64) var_a2;
                                                        sp28 = var_ra;
                                                        __glMgrSaveTexmode((__GLcontext *)1, 1, 1, 0, 0, phi_a4_2);
                                                        *(enum GLenum *)0x74080 = 0x5F04;
                                                        *(enum GLenum *)0x74080 = 0xE0100;
                                                    }
                                                    var_a2->unk-6DB8 = 1;
                                                    *(enum GLenum *)0x74080 = GL_CURRENT_COLOR;
                                                }
                                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                                __glBeginMode = 2;
                                                temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
                                                return;
                                            }
                                            M2C_ERROR(/* Read from unset register $t9 */)(0x500, var_a1, var_a2, 1);
                                            return;
                                        }
                                        /* Duplicate return node #41. Try simplifying control flow for better match */
                                        __glSetError(0x500, var_a1);
                                        return;
                                    }
                                    if (cap == GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI) {
                                        temp_s0->unk8458 = 1;
                                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x4000);
                                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x08000000);
                                        goto block_5;
                                    }
                                    /* Duplicate return node #41. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                temp_s0->unk841C = 1;
                                temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x2000);
                                temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x04000000);
                                goto block_5;
                            }
                            if (cap >= GL_TEXTURE_COLOR_TABLE_SGI) {
                                if (cap > GL_TEXTURE_COLOR_TABLE_SGI) {
                                    var_a1 = 0x83A4;
                                    if (cap == GL_COLOR_TABLE_SGI) {
                                        temp_s0->unk83A4 = 1;
                                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x1000);
                                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x02000000);
                                        goto block_5;
                                    }
                                    /* Duplicate return node #41. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                temp_s0->unk83E0 = 1;
                                __glMgrUpdateTextureColorTableState((__GLcontext *)0x80BC, 0x80BC, 0x80D0);
                                goto block_4;
                            }
                            var_a1 = cap < GL_EDGE_FLAG_ARRAY;
                            if (var_a1 == 0) {
                                if (cap <= GL_EDGE_FLAG_ARRAY) {
                                    temp_s0->unk1354 |= 0x10;
                                    temp_s0->unk1350 |= 0x08000000;
                                    return;
                                }
                                /* Duplicate return node #41. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            if (cap == GL_TEXTURE_COORD_ARRAY) {
                                temp_s0->unk1354 |= 4;
                                temp_s0->unk1350 |= 0x07F00000;
                                return;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_s0->unk1354 |= 8;
                        temp_s0->unk1350 |= 0xF0000000;
                        return;
                    }
                    var_a1 = cap < GL_POLYGON_OFFSET_FILL;
                    if (var_a1 == 0) {
                        if (cap > GL_POLYGON_OFFSET_FILL) {
                            if (cap >= GL_NORMAL_ARRAY) {
                                var_a1 = 0x8076;
                                if (cap > GL_NORMAL_ARRAY) {
                                    if (cap == GL_COLOR_ARRAY) {
                                        temp_s0->unk1354 |= 2;
                                        temp_s0->unk1350 |= 0xFF000;
                                        return;
                                    }
                                    /* Duplicate return node #41. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                temp_s0->unk1354 |= 1;
                                temp_s0->unk1350 |= 0xF00;
                                return;
                            }
                            var_a1 = cap > GL_VERTEX_ARRAY;
                            if (cap >= GL_VERTEX_ARRAY) {
                                if (var_a1 == 0) {
                                    temp_s0->unk1354 |= 0x20;
                                    temp_s0->unk1350 |= 0xFF;
                                    return;
                                }
                                /* Duplicate return node #41. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            if (cap == GL_TEXTURE_3D_EXT) {
                                temp_s0->unk6A0 |= 0x40000000;
                                var_a0 = temp_s0 + 0x10000;
                                temp_a1 = temp_s0->unk9CA5;
                                if (temp_a1 != 0) {
                                    temp_a4_3 = temp_s0->unk8A2C;
                                    phi_a4_3 = temp_a4_3;
                                    if (temp_a4_3 != NULL) {
                                        if (temp_a4_3->unkC4 == 0) {
                                            sp8 = (s64) var_a0;
                                            M2C_ERROR(/* Read from unset register $t9 */)(temp_a4_3, temp_a1);
                                            var_ra = sp28;
                                            phi_a4_3 = var_a0->unk-75D4;
                                        }
                                        if (phi_a4_3 != NULL) {
                                            if ((s32) phi_a4_3->unkC4->unkB3 < 4) {
                                                if (phi_a4_3 != NULL) {
                                                    temp_a1_2 = phi_a4_3->unkC4;
                                                    if (temp_a1_2 == NULL) {
                                                        sp8 = (s64) var_a0;
                                                        sp28 = var_ra;
                                                        M2C_ERROR(/* Read from unset register $t9 */)(phi_a4_3, temp_a1_2);
                                                    }
                                                }
                                                goto block_236;
                                            }
                                        } else {
                                            goto block_236;
                                        }
                                    } else {
block_236:
                                        var_a0->unk-75D4 = (void *) (temp_s0 + 0x8D60);
                                        if (var_a0->unk-71DC == var_a0->unk-6E04->unk1E4) {
                                            sp8 = (s64) var_a0;
                                            sp28 = var_ra;
                                            __glMgrSaveTexmode((__GLcontext *)1, 1, 1, 0, 0);
                                            *(void *)0x74080 = 0x5F04U;
                                            *(void *)0x74080 = GL_ZERO;
                                        }
                                        var_a0->unk-6DB8 = 1;
                                        *(void *)0x74080 = GL_CURRENT_COLOR;
                                    }
                                } else {
                                    sp8 = (s64) var_a0;
                                    M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, temp_a1);
                                    sp8->unk-6DA4 = (s32) (sp8->unk-6DA4 | 0x20);
                                }
                                goto block_5;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_s0->unk6A0 |= 0x01000000;
                        *(void *)0x74080 = 0xE804U;
                        temp_at = temp_s0->unk9D50 | 1;
                        *(void *)0x74080 = temp_at;
                        temp_s0->unk9D50 = temp_at;
                        goto block_5;
                    }
                    if (cap >= GL_HISTOGRAM_EXT) {
                        var_a1 = 0x802E;
                        if (cap > GL_HISTOGRAM_EXT) {
                            if (cap == GL_MINMAX_EXT) {
                                temp_s0->unk6A0 |= 0x20000000;
                                temp_s0->unk820C = 1;
                                temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x80);
                                temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x80);
                                goto block_5;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_s0->unk6A0 |= 0x10000000;
                        temp_s0->unk81DC = 1;
                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x40);
                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x40);
                        goto block_5;
                    }
                    if (cap >= GL_SEPARABLE_2D_EXT) {
                        if (cap <= GL_SEPARABLE_2D_EXT) {
                            temp_s0->unk6A0 |= 0x08000000;
                            temp_s0->unk8334 = 1;
                            temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x800);
                            temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x100000);
                            goto block_5;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    var_a1 = 0x82E4;
                    if (cap == GL_CONVOLUTION_2D_EXT) {
                        temp_s0->unk6A0 |= 0x04000000;
                        temp_s0->unk82E4 = 1;
                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x800);
                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x100000);
                        goto block_5;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                temp_s0->unk6A0 |= 0x02000000;
                temp_s0->unk8294 = 1;
                temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x800);
                temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize | 0x100000);
                goto block_5;
            }
            if (cap >= GL_CLIP_PLANE4) {
                if (cap < GL_CLIP_PLANE5) {
                    goto block_44;
                }
                var_a1 = cap < GL_LIGHT4;
                if (cap >= GL_LIGHT3) {
                    if (var_a1 == 0) {
                        if (cap >= GL_LIGHT6) {
                            if (cap >= GL_LIGHT7) {
                                if (cap == GL_LIGHT7) {
                                    /* Duplicate return node #99. Try simplifying control flow for better match */
                                    temp_s0->unk6A8 |= 1 << cap;
                                    __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                                    return;
                                }
                                /* Duplicate return node #41. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            /* Duplicate return node #99. Try simplifying control flow for better match */
                            temp_s0->unk6A8 |= 1 << cap;
                            __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                            return;
                        }
                        var_a1 = cap < GL_LIGHT5;
                        if (var_a1 == 0) {
                            if (cap < GL_LIGHT6) {
                                /* Duplicate return node #99. Try simplifying control flow for better match */
                                temp_s0->unk6A8 |= 1 << cap;
                                __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                                return;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        if (cap == GL_LIGHT4) {
                            /* Duplicate return node #99. Try simplifying control flow for better match */
                            temp_s0->unk6A8 |= 1 << cap;
                            __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                            return;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    /* Duplicate return node #99. Try simplifying control flow for better match */
                    temp_s0->unk6A8 |= 1 << cap;
                    __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                    return;
                }
                var_a1 = cap < GL_LIGHT1;
                if (var_a1 == 0) {
                    var_a1 = cap - 0x4000;
                    if (cap < GL_LIGHT2) {
                        /* Duplicate return node #99. Try simplifying control flow for better match */
                        temp_s0->unk6A8 |= 1 << cap;
                        __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                        return;
                    }
                    if (cap == GL_LIGHT2) {
                        /* Duplicate return node #99. Try simplifying control flow for better match */
                        temp_s0->unk6A8 |= 1 << cap;
                        __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                        return;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                if (cap >= GL_LIGHT0) {
                    if (cap < GL_LIGHT1) {
                        temp_s0->unk6A8 |= 1 << cap;
                        __glMgrEnableLightSource(temp_s0, temp_s0, cap - 0x4000);
                        return;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                if (cap == GL_CLIP_PLANE5) {
                    goto block_44;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            if (cap >= GL_POLYGON_OFFSET_LINE) {
                var_a1 = cap < GL_CLIP_PLANE2;
                if (cap >= 0x2A03U) {
                    if (var_a1 == 0) {
                        if (cap >= GL_CLIP_PLANE3) {
                            if (cap == GL_CLIP_PLANE3) {
                                goto block_44;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        goto block_44;
                    }
                    var_a1 = cap < GL_CLIP_PLANE2;
                    if (cap >= GL_CLIP_PLANE1) {
                        if (var_a1 != 0) {
                            goto block_44;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    if (cap == GL_CLIP_PLANE0) {
block_44:
                        *(void *)0x74080 = 0xA604U;
                        *(void *)0x74080 = cap;
                        goto block_5;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                temp_s0->unk6A4 |= 0x400;
                *(void *)0x74080 = 0xE804U;
                temp_at_2 = temp_s0->unk9D50 | 2;
                *(void *)0x74080 = temp_at_2;
                temp_s0->unk9D50 = temp_at_2;
                goto block_5;
            }
            var_a1 = cap < 0xDE2U;
            if (cap >= GL_TEXTURE_2D) {
                if (var_a1 == 0) {
                    if (cap == GL_POLYGON_OFFSET_POINT) {
                        temp_s0->unk6A4 |= 0x200;
                        *(void *)0x74080 = 0xE804U;
                        temp_v0 = temp_s0->unk9D50 | 4;
                        *(void *)0x74080 = temp_v0;
                        temp_s0->unk9D50 = temp_v0;
                        goto block_5;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                temp_s0->unk6A0 |= 0x20000;
                temp_s1 = temp_s0 + 0x10000;
                if (temp_s0->unk9CA5 != 0) {
                    __glMgrNeedSoftFilter4((__GLcontext *)0x8010, 0x8010, var_a1);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        __glMgrEnterSoftPath(temp_s0, temp_s0);
                        temp_s0->unk925C = (s32) (temp_s0->unk925C | 0x40);
                    } else {
                        temp_a4_4 = temp_s0->unk8A2C;
                        if (temp_a4_4 != NULL) {
                            if (temp_a4_4->unkC4 == 0) {
                                M2C_ERROR(/* Read from unset register $t9 */)(temp_a4_4, -1);
                            }
                            if ((temp_s0->unk8A2C == NULL) || ((s32) temp_s0->unk8A2C->unkC4->unkB3 < 2)) {
                                goto block_182;
                            }
                        } else {
block_182:
                            temp_a1_3 = (-1 << 0x10) | 0x7438;
                            temp_a0 = temp_s0 + 0x8BC8;
                            var_a4 = temp_a0;
                            temp_s0->unk8A2C = temp_a0;
                            if ((temp_s0 != temp_a1_3) && (temp_s0->unk8C8C == 0)) {
                                M2C_ERROR(/* Read from unset register $t9 */)(temp_a0, temp_a1_3);
                                var_a4 = temp_s0->unk8A2C;
                            }
                            temp_a6 = var_a4->unkC4;
                            if (temp_s0->unk91FC->unk1E4 == temp_a6) {
                                sp30 = (s64) temp_a6;
                                __glMgrSaveTexmode((__GLcontext *)1, 1, 1, 0, 0, var_a4);
                                temp_a0_2 = sp30->unkC2;
                                if (temp_a0_2 != 0) {
                                    if (sp30->unkA2 == 1) {
                                        sp8 = (s64) temp_s1;
                                        *(void *)0x74080 = 0x5F04U;
                                        *(void *)0x74080 = (enum GLenum) sp30->unk78;
                                    } else if (temp_a0_2 != 0) {
                                        sp8 = (s64) temp_s1;
                                        if (sp30->unkA2 != 0) {
                                            goto block_256;
                                        }
                                        *(void *)0x74080 = 0x5F04U;
                                        *(void *)0x74080 = (bitwise enum GLenum) -(bitwise f32) sp30->unk78;
                                    } else {
                                        goto block_257;
                                    }
                                } else {
block_256:
block_257:
                                    sp8 = (s64) temp_s1;
                                    *(void *)0x74080 = 0x5F04U;
                                    *(void *)0x74080 = GL_ZERO;
                                }
                            } else {
                                sp8 = (s64) temp_s1;
                            }
                            ((void *) sp8)->unk-6DB8 = 1;
                            *(void *)0x74080 = GL_CURRENT_COLOR;
                        }
                    }
                } else {
                    __glMgrEnterSoftPath(temp_s0, temp_s0, var_a1);
                    temp_s0->unk925C = (s32) (temp_s0->unk925C | 0x10);
                }
                goto block_5;
            }
            var_a1 = cap < GL_TEXTURE_2D;
            if (cap >= GL_TEXTURE_1D) {
                if (var_a1 != 0) {
                    temp_s0->unk6A0 |= 0x10000;
                    temp_s1_2 = temp_s0 + 0x10000;
                    if (temp_s0->unk9CA5 != 0) {
                        __glMgrNeedSoftFilter4((__GLcontext *)0x8010, 0x8010, var_a1);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            __glMgrEnterSoftPath(temp_s0, temp_s0);
                            temp_s0->unk925C = (s32) (temp_s0->unk925C | 0x40);
                        } else if (temp_s0->unk8A2C == NULL) {
                            temp_a1_4 = (-1 << 0x10) | 0x75D0;
                            temp_a0_3 = temp_s0 + 0x8A30;
                            var_a4_2 = temp_a0_3;
                            temp_s0->unk8A2C = temp_a0_3;
                            if ((temp_s0 != temp_a1_4) && (temp_s0->unk8AF4 == 0)) {
                                mgrTM_RefreshDim(temp_a0_3, temp_a1_4);
                                sp8 = (s64) temp_s1_2;
                                var_a4_2 = temp_s0->unk8A2C;
                            }
                            sp8 = (s64) temp_s1_2;
                            if (var_a4_2->unkC4 == temp_s0->unk91FC->unk1E4) {
                                __glMgrSaveTexmode((__GLcontext *)1, 1, 1, 0, 0, var_a4_2);
                                *(void *)0x74080 = 0x5F04U;
                                *(void *)0x74080 = 0xE0100U;
                            }
                            *(void *)0x74080 = GL_CURRENT_COLOR;
                            sp8->unk-6DB8 = 1;
                        }
                    } else {
                        __glMgrEnterSoftPath(temp_s0, temp_s0, var_a1);
                        temp_s0->unk925C = (s32) (temp_s0->unk925C | 8);
                    }
                    goto block_5;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            if (cap == GL_MAP2_VERTEX_4) {
                goto block_3;
            }
            /* Duplicate return node #41. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1);
            return;
        }
        var_a1 = cap < GL_TEXTURE_GEN_T;
        if (var_a1 == 0) {
            if (cap >= GL_TEXTURE_GEN_R) {
                if (cap >= GL_MAP1_TEXTURE_COORD_4) {
                    var_a1 = cap < GL_MAP2_NORMAL;
                    if (cap >= GL_MAP1_VERTEX_3) {
                        if (var_a1 == 0) {
                            if (cap >= GL_MAP2_TEXTURE_COORD_1) {
                                if (cap >= GL_MAP2_TEXTURE_COORD_3) {
                                    var_a1 = 0xDB6;
                                    if (cap >= GL_MAP2_TEXTURE_COORD_4) {
                                        if (cap == GL_MAP2_TEXTURE_COORD_4) {
                                            goto block_3;
                                        }
                                        /* Duplicate return node #41. Try simplifying control flow for better match */
                                        __glSetError(0x500, var_a1);
                                        return;
                                    }
                                    goto block_3;
                                }
                                if (cap >= GL_MAP2_TEXTURE_COORD_2) {
                                    if (cap < GL_MAP2_TEXTURE_COORD_3) {
                                        goto block_3;
                                    }
                                    /* Duplicate return node #41. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                if (cap == GL_MAP2_TEXTURE_COORD_1) {
                                    goto block_3;
                                }
                                /* Duplicate return node #41. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            goto block_3;
                        }
                        var_a1 = cap < GL_MAP2_INDEX;
                        if (cap >= GL_MAP2_COLOR_4) {
                            if (var_a1 == 0) {
                                if (cap == GL_MAP2_INDEX) {
                                    goto block_3;
                                }
                                /* Duplicate return node #41. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
block_3:
                            __glMgrEvalEnable((__GLcontext *) cap, cap, var_a1);
                            temp_s0->unk6B4 |= (1 << (cap - 0xDB0)) & 0xFFFF;
                            goto block_4;
                        }
                        if (cap >= GL_MAP1_VERTEX_4) {
                            if (cap < 0xD99U) {
                                goto block_56;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        var_a1 = 0xD97;
                        if (cap == GL_MAP1_VERTEX_3) {
                            goto block_56;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    goto block_56;
                }
                if (cap >= GL_MAP1_INDEX) {
                    if (cap >= GL_MAP1_NORMAL) {
                        var_a1 = cap < GL_MAP1_TEXTURE_COORD_3;
                        if (cap >= GL_MAP1_TEXTURE_COORD_2) {
                            if (var_a1 == 0) {
                                if (cap == GL_MAP1_TEXTURE_COORD_3) {
                                    goto block_56;
                                }
                                /* Duplicate return node #41. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            goto block_56;
                        }
                        var_a1 = cap < GL_MAP1_TEXTURE_COORD_2;
                        if (cap >= GL_MAP1_TEXTURE_COORD_1) {
                            if (var_a1 != 0) {
                                goto block_56;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        if (cap == GL_MAP1_NORMAL) {
                            goto block_56;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    goto block_56;
                }
                if (cap >= GL_AUTO_NORMAL) {
                    var_a1 = 0xD90;
                    if (cap >= 0xD81U) {
                        if (cap == GL_MAP1_COLOR_4) {
block_56:
                            __glMgrEvalEnable((__GLcontext *) cap, cap, var_a1);
                            temp_s0->unk6B0 |= (1 << (cap - 0xD90)) & 0xFFFF;
                            goto block_4;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    temp_a1_5 = temp_s0->unk6A0 | 0x800000;
                    temp_s0->unk6A0 = temp_a1_5;
                    __glMgrEvalEnable((__GLcontext *)0xD80, 0xD80, temp_a1_5, 0x800000, 1);
                    goto block_4;
                }
                if (cap >= GL_TEXTURE_GEN_Q) {
                    if (cap < 0xC64U) {
                        temp_s0->unk6A0 |= 0x200000;
                        if (temp_s0->unk9CA5 != 0) {
                            *(void *)0x74080 = 0x7504U;
                            *(void *)0x74080 = cap;
                        }
                        goto block_5;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                if (cap == GL_TEXTURE_GEN_R) {
                    temp_s0->unk6A0 |= 0x100000;
                    if (temp_s0->unk9CA5 != 0) {
                        *(void *)0x74080 = 0x7504U;
                        *(void *)0x74080 = cap;
                    }
                    goto block_5;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            temp_s0->unk6A0 |= 0x80000;
            if (temp_s0->unk9CA5 != 0) {
                *(void *)0x74080 = 0x7504U;
                *(void *)0x74080 = cap;
            }
            goto block_5;
        }
        if (cap >= GL_DEPTH_TEST) {
            if (cap >= GL_DEPTH_WRITEMASK) {
                var_a1 = cap < 0xBE3U;
                if (cap >= GL_BLEND) {
                    if (var_a1 == 0) {
                        if (cap >= GL_SCISSOR_TEST) {
                            if (cap >= 0xC12U) {
                                if (cap == GL_TEXTURE_GEN_S) {
                                    temp_s0->unk6A0 |= 0x40000;
                                    if (temp_s0->unk9CA5 != 0) {
                                        *(void *)0x74080 = 0x7504U;
                                        *(void *)0x74080 = cap;
                                    }
                                    goto block_5;
                                }
                                /* Duplicate return node #41. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            *(void *)0x74080 = 0x6E04U;
                            *(void *)0x74080 = GL_ONE;
                            goto block_5;
                        }
                        if (cap >= GL_COLOR_LOGIC_OP) {
                            var_a1 = 0x6B04;
                            if (cap < 0xBF3U) {
                                *(void *)0x74080 = 0x6B04U;
                                *(void *)0x74080 = GL_ONE;
                                temp_s0->unk6A4 |= 0x800;
                                goto block_5;
                            }
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        var_a1 = 0xBF1;
                        if (cap == GL_LOGIC_OP) {
                            *(void *)0x74080 = 0x6B04U;
                            *(void *)0x74080 = GL_ONE;
                            temp_s0->unk6A0 |= 4;
                            goto block_5;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    *(void *)0x74080 = 0x6504U;
                    *(void *)0x74080 = GL_ONE;
                    *(void *)0x74080 = 0x6504U;
                    *(void *)0x74080 = GL_ONE;
                    goto block_5;
                }
                var_a1 = cap < GL_ALPHA_TEST_FUNC;
                if (cap >= GL_ALPHA_TEST) {
                    if (var_a1 == 0) {
                        if (cap == GL_DITHER) {
                            *(void *)0x74080 = 0x6704U;
                            *(void *)0x74080 = GL_LINE_STRIP;
                            goto block_5;
                        }
                        /* Duplicate return node #41. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    *(void *)0x74080 = 0x6404U;
                    *(void *)0x74080 = GL_ONE;
                    goto block_5;
                }
                var_a1 = cap < GL_NORMALIZE;
                if (var_a1 == 0) {
                    if (cap < GL_VIEWPORT) {
                        *(void *)0x74080 = 0xA304U;
                        *(void *)0x74080 = GL_ONE;
                        temp_s0->unk6A0 |= 0x400000;
                        goto block_5;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                var_a1 = 0xB90;
                if (cap == GL_STENCIL_TEST) {
                    *(void *)0x74080 = 0x6F04U;
                    *(void *)0x74080 = GL_ONE;
                    goto block_5;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            temp_s0->unk9265 = 1;
            if (temp_s0->modes.haveDepthBuffer != 0) {
                *(void *)0x74080 = 0x6604U;
                *(void *)0x74080 = GL_ONE;
            } else {
                *(void *)0x74080 = 0x6604U;
                *(void *)0x74080 = GL_ZERO;
            }
            goto block_5;
        }
        if (cap >= GL_POLYGON_STIPPLE) {
            if (cap >= GL_EDGE_FLAG) {
                var_a1 = cap < 0xB58U;
                if (cap >= GL_COLOR_MATERIAL) {
                    if (var_a1 == 0) {
                        if (cap != GL_FOG) {
                            /* Duplicate return node #41. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_a2 = temp_s0->unk96C0 | 0x20000;
                        temp_s0->unk96C0 = temp_a2;
                        mgrTM_SendTexmode1(temp_s0, 0, temp_a2, temp_s0 + 0x10000, 0x20000);
                        *(void *)0x74080 = 0x6804U;
                        *(void *)0x74080 = GL_ONE;
                        goto block_4;
                    }
                    *(void *)0x74080 = 0xC200U;
                    temp_s0->unk6A0 |= 0x80;
                    goto block_5;
                }
                var_a1 = cap < GL_LIGHTING;
                if (var_a1 == 0) {
                    if (cap < GL_LIGHT_MODEL_LOCAL_VIEWER) {
                        temp_s0->unk6A0 |= 0x40;
                        __glBeginMode = 2;
                        temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 0x20);
                        __glMgrEnableLightSource(temp_s0, temp_s0, var_a1);
                        ((? (*)(__GLcontext *)) temp_s0->procs.table[0x53])(temp_s0);
                        __glMgrEnableLighting(temp_s0, temp_s0);
                        return;
                    }
                    /* Duplicate return node #41. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                if (cap == GL_CULL_FACE) {
                    *(void *)0x74080 = 0x7200U;
                    temp_s0->unk6A0 |= 0x1000;
                    goto block_5;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            *(void *)0x74080 = 0x6D04U;
            *(void *)0x74080 = GL_ONE;
            temp_s0->unk31AC(temp_s0, var_a1, (? *)0x74080, 1, 0x6D04);
            return;
        }
        var_a1 = cap < GL_LINE_STIPPLE_PATTERN;
        if (cap >= GL_LINE_STIPPLE) {
            if (var_a1 == 0) {
                if (cap == GL_POLYGON_SMOOTH) {
                    if (temp_s0->unk9262 != 0) {
                        __glMgrEnterSoftPath(temp_s0, temp_s0, var_a1);
                        temp_s0->unk925C = (s32) (temp_s0->unk925C | 2);
                    }
                    temp_s0->unk6A0 |= 0x800;
                    goto block_5;
                }
                /* Duplicate return node #41. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            *(void *)0x74080 = 0x6A04U;
            *(void *)0x74080 = GL_ONE;
            goto block_5;
        }
        var_a1 = cap < GL_LINE_WIDTH;
        if (cap >= GL_LINE_SMOOTH) {
            if (var_a1 != 0) {
                if (temp_s0->unk9261 != 0) {
                    __glMgrim_GetFloatv(GL_LINE_WIDTH, sp);
                    if (!((second half of f64) < (f64) (second half of f64))) {
                        *(void *)0x74080 = 0x6904U;
                        *(void *)0x74080 = GL_ONE;
                    } else {
                        __glMgrEnterSoftPath(temp_s0, temp_s0);
                        temp_s0->unk925C = (s32) (temp_s0->unk925C | 4);
                        temp_s0->unk6A0 |= 0x200;
block_4:
                    }
                } else {
                    *(void *)0x74080 = 0x6904U;
                    *(void *)0x74080 = GL_ONE;
                }
                goto block_5;
            }
            /* Duplicate return node #41. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1);
            return;
        }
        var_a1 = 0xB10;
        if (cap == GL_POINT_SMOOTH) {
            *(void *)0x74080 = 0x6C04U;
            *(void *)0x74080 = GL_ONE;
            temp_s0->unk6A0 |= 0x400;
block_5:
            __glBeginMode = 2;
            temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
            return;
        }
        __glSetError(0x500, var_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftDisable(__GLcontext *gc, ...) {
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_4;
    s32 temp_a1_6;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_v1;
    u8 temp_a1_3;
    u8 temp_a1_5;
    void *temp_a2;
    void *temp_a2_2;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if ((u32) gc >= 0xBE2U) {
            if ((u32) gc >= 0xBE3U) {
                if ((u32) gc >= 0xDE0U) {
                    if ((u32) gc >= 0xDE1U) {
                        if ((u32) gc >= 0x806FU) {
                            if ((u32) gc <= 0x806FU) {
                                temp_a1 = temp_s0->unk6A0 & ~0x40000000;
                                temp_s0->unk6A0 = temp_a1;
                                if (temp_s0->unk9CA5 == 0) {
                                    temp_a3 = temp_s0->unk925C;
                                    if (temp_a3 & 0x20) {
                                        temp_v1 = temp_a3 & ~0x20;
                                        temp_s0->unk925C = temp_v1;
                                        if (temp_v1 == 0) {
                                            __glMgrExitSoftPath(temp_s0, temp_s0, temp_a1, 0x806F, temp_a3);
                                        }
                                    }
                                }
                            } else {
                                goto block_33;
                            }
                        } else if (gc == (__GLcontext *)0xDE1) {
                            temp_a1_2 = temp_s0->unk6A0 & ~0x20000;
                            temp_s0->unk6A0 = temp_a1_2;
                            temp_a0 = temp_s0 + 0x10000;
                            if (temp_s0->unk9CA5 != 0) {
                                sp0 = (s64) temp_a0;
                                __glMgrNeedSoftFilter4(temp_a0, temp_a0, temp_a1_2, 0x806F);
                                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                                    temp_a3_2 = sp0->unk-6DA4;
                                    if (temp_a3_2 & 0x40) {
                                        temp_at = temp_a3_2 & ~0x40;
                                        sp0->unk-6DA4 = temp_at;
                                        if (temp_at == 0) {
                                            __glMgrExitSoftPath(temp_s0, temp_s0);
                                        }
                                    }
                                }
                            } else {
                                temp_a3_3 = temp_s0->unk925C;
                                if (temp_a3_3 & 0x10) {
                                    temp_v0 = temp_a3_3 & ~0x10;
                                    temp_s0->unk925C = temp_v0;
                                    if (temp_v0 == 0) {
                                        __glMgrExitSoftPath(temp_s0, temp_s0, temp_a1_2, 0x806F, temp_a3_3);
                                    }
                                }
                            }
                        } else {
                            goto block_33;
                        }
                    } else {
                        temp_s0->unk6A0 &= ~0x10000;
                        temp_a0_2 = temp_s0 + 0x10000;
                        temp_a1_3 = temp_s0->unk9CA5;
                        if (temp_a1_3 != 0) {
                            sp0 = (s64) temp_a0_2;
                            __glMgrNeedSoftFilter4(temp_a0_2, temp_a0_2, temp_a1_3, 0x806F);
                            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                                temp_a3_4 = sp0->unk-6DA4;
                                if (temp_a3_4 & 0x40) {
                                    temp_at_2 = temp_a3_4 & ~0x40;
                                    sp0->unk-6DA4 = temp_at_2;
                                    if (temp_at_2 == 0) {
                                        __glMgrExitSoftPath(temp_s0, temp_s0);
                                    }
                                }
                            }
                        } else {
                            temp_a3_5 = temp_s0->unk925C;
                            if (temp_a3_5 & 8) {
                                temp_v1_2 = temp_a3_5 & ~8;
                                temp_s0->unk925C = temp_v1_2;
                                if (temp_v1_2 == 0) {
                                    __glMgrExitSoftPath(temp_s0, temp_s0, temp_a1_3, 0x806F, temp_a3_5);
                                }
                            }
                        }
                    }
                } else if ((u32) gc >= 0xBF2U) {
                    if ((u32) gc >= 0xBF3U) {
                        if (gc == (__GLcontext *)0xC11) {
                            *(s32 *)0x74080 = 0x6E04;
                            *(s32 *)0x74080 = 0;
                            var_v1 = temp_s0->unk6A0 & ~0x4000;
                            goto block_17;
                        }
                        goto block_33;
                    }
                    *(void *)0x74080 = 0x6B04;
                    *(void *)0x74080 = 0;
                    temp_s0->unk6A4 &= ~0x800;
                } else if (gc == (__GLcontext *)0xBF1) {
                    *(void *)0x74080 = 0x6B04;
                    *(void *)0x74080 = 0;
                    temp_s0->unk6A0 &= ~4;
                } else {
                    goto block_33;
                }
            } else {
                *(void *)0x74080 = 0x6504;
                *(void *)0x74080 = 0;
                var_v1 = temp_s0->unk6A0 & ~2;
block_17:
                temp_s0->unk6A0 = var_v1;
            }
        } else if ((u32) gc >= 0xB90U) {
            if ((u32) gc >= 0xB91U) {
                if ((u32) gc >= 0xBD0U) {
                    if ((u32) gc < 0xBD1U) {
                        *(void *)0x74080 = 0x6704;
                        *(void *)0x74080 = 0;
                        temp_s0->unk6A0 &= ~8;
                    } else {
                        goto block_33;
                    }
                } else if (gc == (__GLcontext *)0xBC0) {
                    *(void *)0x74080 = 0x6404;
                    *(void *)0x74080 = 0;
                    temp_s0->unk6A0 &= ~1;
                } else {
                    goto block_33;
                }
            } else {
                *(void *)0x74080 = 0x6F04;
                *(void *)0x74080 = 0;
                temp_s0->unk6A0 &= ~0x8000;
            }
        } else {
            temp_a1_4 = (u32) gc < 0xB42U;
            if ((u32) gc >= 0xB41U) {
                if (temp_a1_4 == 0) {
                    if (gc == (__GLcontext *)0xB71) {
                        *(void *)0x74080 = 0x6604;
                        temp_s0->unk6A0 &= ~0x10;
                        __glBeginMode = 2;
                        *(void *)0x74080 = 0;
                        temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 0x80);
                        temp_s0->unk9265 = 0;
                    } else {
                        goto block_33;
                    }
                } else {
                    temp_a2 = temp_s0 + 0x10000;
                    temp_a1_5 = temp_s0->unk9262;
                    if (temp_a1_5 != 0) {
                        temp_a3_6 = temp_s0->unk925C;
                        if (temp_a3_6 & 2) {
                            temp_v1_3 = temp_a3_6 & ~2;
                            temp_s0->unk925C = temp_v1_3;
                            temp_s0->unk6A0 &= ~0x800;
                            if (temp_v1_3 == 0) {
                                __glMgrExitSoftPath(temp_s0, temp_s0, -0x801, temp_a2, temp_a3_6);
                            }
                        }
                    } else {
                        M2C_ERROR(/* Read from unset register $t9 */)(temp_a1_5, temp_a2);
                    }
                }
            } else if (gc == (__GLcontext *)0xB20) {
                temp_a2_2 = temp_s0 + 0x10000;
                if (temp_s0->unk9261 != 0) {
                    temp_s0->unk6A0 &= ~0x200;
                    temp_a3_7 = temp_s0->unk925C;
                    if (temp_a3_7 & 4) {
                        temp_a1_6 = temp_a3_7 & ~4;
                        temp_s0->unk925C = temp_a1_6;
                        if (temp_a1_6 == 0) {
                            __glMgrExitSoftPath(temp_s0, temp_s0, temp_a1_6, temp_a2_2, temp_a3_7);
                            *(void *)0x74080 = 0x6904;
                            *(void *)0x74080 = 0;
                        }
                    }
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(temp_a1_4, temp_a2_2);
                }
            } else {
block_33:
                __glim_Disable((enum GLenum) gc);
            }
        }
        __glBeginMode = 2;
        temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrEvalDisable(__GLcontext *gc, ...) {
    ? (*temp_t9)(void *, u8, __GLcontext *, s32 *, s32, s32);
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_6;
    s32 *temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;
    u8 temp_a1_4;
    void *temp_a2;
    void *temp_a3;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a4_6;
    void *temp_a4_7;
    void *temp_a4_8;
    void *temp_a4_9;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *var_a3;
    void *var_a3_2;

    temp_a3 = gc - 0xD80;
    temp_t9 = M2C_ERROR(/* Read from unset register $t9 */) - 0x20A8;
    temp_a3_2 = ((s32) temp_a3 * 4) + temp_t9;
    if ((u32) temp_a3 < 0x39U) {
        temp_a4 = (s32) gc * 4;
        temp_a5 = (s32) gc * 4;
        switch (*temp_a3_2) {                       /* unable to parse jump table */
        case 0x32:
            temp_a0 = __glCurrentContext + 0x10000;
            __glCurrentContext->unk88A4 = 0U;
            if (__glCurrentContext->unk8A14 == 0) {
                __glCurrentContext->unk8814 = NULL;
                __glMgrCleanUp2D(temp_a0, temp_a0, __glCurrentContext, temp_a3_2, temp_a4, temp_a5);
            }
            break;
        case 0x17:
        case 0x18:
            temp_a3_3 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a4_2 = temp_a3_3 + 0xFFFE0000;
            if (temp_a4_2->unk-3B0C != 0) {
                temp_a0_2 = __glCurrentContext + 0x10000;
                temp_a4_2->unk-3B0C = 0U;
                if (__glCurrentContext->unk85F4 == (temp_a3_3 + 0xFFFDC4E4)) {
                    temp_a1 = __glCurrentContext->unk87A0;
                    if (temp_a1 == 0) {
                        __glCurrentContext->unk85F4 = NULL;
                    } else {
                        __glCurrentContext->unk85F4 = (void *) (__glCurrentContext + 0x8790);
                    }
                    __glMgrCleanUp1D(temp_a0_2, temp_a0_2, temp_a1, __glCurrentContext, temp_a3_3, temp_a4_2, temp_a5);
                }
            } else {
                return;
            }
            break;
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
            temp_a5_2 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a4_3 = temp_a5_2 + 0xFFFE0000;
            temp_a5_3 = temp_a5_2 + 0xFFFDC4E4;
            var_a3 = temp_a5_3;
            if (temp_a4_3->unk-3B0C != 0) {
                temp_a4_3->unk-3B0C = 0U;
                temp_a0_3 = __glCurrentContext + 0x10000;
                temp_a4_4 = __glCurrentContext + 0x86C0;
                if (__glCurrentContext->unk8618 == temp_a5_3) {
loop_13:
                    if (temp_a4_4 == var_a3) {
                        var_a3 = NULL;
                    } else {
                        var_a3 -= 0x34;
                        if (var_a3->unk-24 == 0) {
                            goto loop_13;
                        }
                    }
                    __glCurrentContext->unk8618 = var_a3;
                    __glMgrCleanUp1D(temp_a0_3, temp_a0_3, __glCurrentContext, var_a3, temp_a4_4, temp_a5_3);
                }
            } else {
                return;
            }
            break;
        case 0x10:
        case 0x11:
            temp_a4_5 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext + 0xFFFE0000;
            if (temp_a4_5->unk-3B0C == 0) {
                return;
            }
            temp_a4_5->unk-3B0C = 0U;
            if (__glCurrentContext->modes.colorIndexMode == ((s32) gc == 0xD91)) {
                __glCurrentContext->unk8600 = 0;
                __glMgrCleanUp1D(gc, __glCurrentContext, temp_a3_2, temp_a4_5, temp_a5);
            }
            break;
        case 0x12:
            temp_a1_2 = __glCurrentContext->unk869C;
            if (temp_a1_2 == 0) {
                return;
            }
            __glCurrentContext->unk860C = 0;
            __glCurrentContext->unk869C = 0U;
            temp_t9(__glCurrentContext + 0x10000, temp_a1_2, __glCurrentContext, temp_a3_2, temp_a4, temp_a5);
            break;
        case 0x0:
            temp_a0_4 = __glCurrentContext + 0x10000;
            if (__glCurrentContext->unk8A14 == 0) {
                return;
            }
            temp_a1_3 = __glCurrentContext->unk88A4;
            __glCurrentContext->unk8A14 = 0U;
            if (temp_a1_3 != 0) {
                temp_a2 = __glCurrentContext + 0x8894;
                __glCurrentContext->unk8814 = temp_a2;
                __glMgrCleanUp2D(temp_a0_4, temp_a0_4, temp_a1_3, temp_a2, 0x8894, temp_a4, temp_a5);
            }
            break;
        case 0x37:
        case 0x38:
            temp_a3_4 = ((s32) (((((s32) gc * 4) - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a4_6 = temp_a3_4 + 0xFFFE0000;
            if (temp_a4_6->unk-3F84 != 0) {
                temp_a0_5 = __glCurrentContext + 0x10000;
                temp_a4_6->unk-3F84 = 0U;
                if (__glCurrentContext->unk87FC == (temp_a3_4 + 0xFFFDC06C)) {
                    temp_a1_4 = __glCurrentContext->unk89A8;
                    if (temp_a1_4 == 0) {
                        __glCurrentContext->unk87FC = NULL;
                    } else {
                        __glCurrentContext->unk87FC = (void *) (__glCurrentContext + 0x8998);
                    }
                    __glMgrCleanUp2D(temp_a0_5, temp_a0_5, temp_a1_4, __glCurrentContext, temp_a3_4, temp_a4_6, temp_a5);
                }
            } else {
                return;
            }
            break;
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
            temp_a5_4 = ((s32) (((temp_a5 - gc) * 4) + gc) * 4) + __glCurrentContext;
            temp_a4_7 = temp_a5_4 + 0xFFFE0000;
            temp_a5_5 = temp_a5_4 + 0xFFFDC06C;
            var_a3_2 = temp_a5_5;
            if (temp_a4_7->unk-3F84 != 0) {
                temp_a4_7->unk-3F84 = 0U;
                temp_a0_6 = __glCurrentContext + 0x10000;
                temp_a4_8 = __glCurrentContext + 0x88C8;
                if (__glCurrentContext->unk8820 == temp_a5_5) {
loop_39:
                    if (temp_a4_8 == var_a3_2) {
                        var_a3_2 = NULL;
                    } else {
                        var_a3_2 -= 0x34;
                        if (var_a3_2->unk-24 == 0) {
                            goto loop_39;
                        }
                    }
                    __glCurrentContext->unk8820 = var_a3_2;
                    __glMgrCleanUp2D(temp_a0_6, temp_a0_6, __glCurrentContext, var_a3_2, temp_a4_8, temp_a5_5);
                }
            } else {
                return;
            }
            break;
        case 0x30:
        case 0x31:
            temp_a4_9 = ((s32) (((temp_a4 - gc) * 4) + gc) * 4) + __glCurrentContext + 0xFFFE0000;
            if (temp_a4_9->unk-3F84 == 0) {
                return;
            }
            temp_a4_9->unk-3F84 = 0U;
            if (__glCurrentContext->modes.colorIndexMode == ((s32) gc == 0xDB1)) {
                __glCurrentContext->unk8808 = 0;
                __glMgrCleanUp2D(gc, __glCurrentContext, temp_a3_2, temp_a4_9, temp_a5);
            }
            break;
        }
    }
}

void __glMgrDisableLightSource(__GLcontext *gc, s32 arg1, ...) {
    *(s32 *)0x74080 = 0xA004;
    *(s32 *)0x74080 = arg1;
}

void __glMgrim_Disable(enum GLenum cap) {
    s64 sp20;
    s32 sp0;
    __GLcontext *temp_s0;
    enum GLenum temp_a0_6;
    enum GLenum temp_at;
    enum GLenum temp_at_2;
    s32 temp_a0_11;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a1;
    s64 var_ra;
    void *temp_a0;
    void *temp_a0_10;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a0_9;
    void *temp_s2;

    var_ra = saved_reg_ra;
    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        var_a1 = cap < GL_MAP2_VERTEX_4;
        if (cap >= GL_MAP2_VERTEX_3) {
            if (var_a1 != 0) {
                goto block_3;
            }
            if (cap >= GL_CONVOLUTION_1D_EXT) {
                if (cap > GL_CONVOLUTION_1D_EXT) {
                    if (cap >= GL_INDEX_ARRAY) {
                        if (cap > GL_INDEX_ARRAY) {
                            if (cap >= GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                                if (cap > GL_POST_CONVOLUTION_COLOR_TABLE_SGI) {
                                    var_a1 = cap > 0x8139U;
                                    if (cap >= 0x8139U) {
                                        if (var_a1 != 0) {
                                            if (cap == 0xBEAD) {
                                                sp0 = 0;
                                                __glMgrim_IglooInterfaceSGIX((__GLcontext *)0x81A3, 0x81A3, sp);
                                                goto block_4;
                                            }
                                            /* Duplicate return node #36. Try simplifying control flow for better match */
                                            __glSetError(0x500, var_a1);
                                            return;
                                        }
                                        temp_s0->backBuffer.unkCC = 0;
                                        goto block_5;
                                    }
                                    var_a1 = cap < 0x8134U;
                                    if (var_a1 == 0) {
                                        if (cap <= 0x8134U) {
                                            temp_s2 = temp_s0 + 0x10000;
                                            temp_a0 = temp_s0->unk8A2C;
                                            if ((temp_a0 != NULL) && (temp_a0->unkC4 == NULL)) {
                                                M2C_ERROR(/* Read from unset register $t9 */)(temp_a0, var_a1);
                                                var_ra = sp20;
                                            }
                                            if (temp_s2->unk-635B != 0) {
                                                temp_a0_2 = temp_s2->unk-75D4;
                                                if (temp_a0_2 != NULL) {
                                                    if ((s32) temp_a0_2->unkC4->unkB3 < 7) {
                                                        if (temp_s0->unk6A0 & 0x40000000) {
                                                            temp_s2->unk-75D4 = (void *) (temp_s0 + 0x8D60);
                                                        }
                                                        if (temp_s0->unk6A0 & 0x20000) {
                                                            temp_s2->unk-75D4 = (void *) (temp_s0 + 0x8BC8);
                                                        } else if (0x10000 & temp_s0->unk6A0) {
                                                            temp_s2->unk-75D4 = (void *) (temp_s0 + 0x8A30);
                                                        } else {
                                                            sp20 = var_ra;
                                                            temp_s2->unk-75D4 = NULL;
                                                            __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0);
                                                            temp_s2->unk-6DB8 = 0;
                                                            *(enum GLenum *)0x74080 = 0x5F04;
                                                            *(enum GLenum *)0x74080 = 0xE0100;
                                                            *(enum GLenum *)0x74080 = GL_AUX_BUFFERS;
                                                        }
                                                    }
                                                }
                                            }
                                            /* Duplicate return node #6. Try simplifying control flow for better match */
                                            __glBeginMode = 2;
                                            temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
                                            return;
                                        }
                                        /* Duplicate return node #36. Try simplifying control flow for better match */
                                        __glSetError(0x500, var_a1);
                                        return;
                                    }
                                    if (cap == GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI) {
                                        temp_s0->unk8458 = 0;
                                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x4000);
                                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x08000000);
                                        goto block_5;
                                    }
                                    /* Duplicate return node #36. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                temp_s0->unk841C = 0;
                                temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x2000);
                                temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x04000000);
                                goto block_5;
                            }
                            var_a1 = cap < GL_TEXTURE_COLOR_TABLE_SGI;
                            if (var_a1 == 0) {
                                if (cap > GL_TEXTURE_COLOR_TABLE_SGI) {
                                    if (cap == GL_COLOR_TABLE_SGI) {
                                        temp_s0->unk83A4 = 0;
                                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x1000);
                                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x02000000);
                                        goto block_5;
                                    }
                                    /* Duplicate return node #36. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                temp_s0->unk83E0 = 0;
                                __glMgrUpdateTextureColorTableState((__GLcontext *)0x80BC, 0x80BC, var_a1);
                                goto block_4;
                            }
                            if (cap >= GL_EDGE_FLAG_ARRAY) {
                                if (cap <= GL_EDGE_FLAG_ARRAY) {
                                    temp_s0->unk1354 &= ~0x10;
                                    temp_s0->unk1350 &= ~0x08000000;
                                    return;
                                }
                                /* Duplicate return node #36. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            var_a1 = 0x8078;
                            if (cap == GL_TEXTURE_COORD_ARRAY) {
                                temp_s0->unk1354 &= ~4;
                                temp_s0->unk1350 &= ~0x07F00000;
                                return;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_s0->unk1354 &= ~8;
                        temp_s0->unk1350 &= 0x0FFFFFFF;
                        return;
                    }
                    var_a1 = cap > GL_POLYGON_OFFSET_FILL;
                    if (cap >= GL_POLYGON_OFFSET_FILL) {
                        if (var_a1 != 0) {
                            if (cap >= GL_NORMAL_ARRAY) {
                                if (cap > GL_NORMAL_ARRAY) {
                                    if (cap == GL_COLOR_ARRAY) {
                                        temp_s0->unk1354 &= ~2;
                                        temp_s0->unk1350 &= ~0xFF000;
                                        return;
                                    }
                                    /* Duplicate return node #36. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                temp_s0->unk1354 &= ~1;
                                temp_s0->unk1350 &= ~0xF00;
                                return;
                            }
                            if (cap >= GL_VERTEX_ARRAY) {
                                if (cap <= GL_VERTEX_ARRAY) {
                                    temp_s0->unk1354 &= ~0x20;
                                    temp_s0->unk1350 &= ~0xFF;
                                    return;
                                }
                                /* Duplicate return node #36. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            if (cap == GL_TEXTURE_3D_EXT) {
                                temp_s0->unk6A0 &= ~0x40000000;
                                temp_a0_3 = temp_s0->unk8A2C;
                                if ((temp_a0_3 != NULL) && (temp_a0_3->unkC4 == NULL)) {
                                    M2C_ERROR(/* Read from unset register $t9 */)(temp_a0_3, var_a1);
                                    var_ra = sp20;
                                }
                                if (temp_s0->unk9CA5 != 0) {
                                    temp_a0_4 = temp_s0->unk8A2C;
                                    if (temp_a0_4 != NULL) {
                                        if ((s32) temp_a0_4->unkC4->unkB3 < 5) {
                                            temp_a0_5 = temp_s0->unk6A0;
                                            if (temp_a0_5 & 0x20000) {
                                                temp_s0->unk8A2C = (void *) (temp_s0 + 0x8BC8);
                                            } else if (0x10000 & temp_a0_5) {
                                                temp_s0->unk8A2C = (void *) (temp_s0 + 0x8A30);
                                            } else {
                                                sp20 = var_ra;
                                                temp_s0->unk8A2C = NULL;
                                                __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0);
                                                temp_s0->unk9248 = 0;
                                                *(void *)0x74080 = 0x5F04U;
                                                *(void *)0x74080 = GL_ZERO;
                                                *(void *)0x74080 = GL_AUX_BUFFERS;
                                            }
                                        }
                                    }
                                }
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                __glBeginMode = 2;
                                temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
                                return;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_s0->unk6A0 &= ~0x01000000;
                        *(void *)0x74080 = 0xE804U;
                        temp_at = temp_s0->unk9D50 & ~1;
                        *(void *)0x74080 = temp_at;
                        temp_s0->unk9D50 = temp_at;
                        goto block_5;
                    }
                    var_a1 = cap > GL_HISTOGRAM_EXT;
                    if (cap >= GL_HISTOGRAM_EXT) {
                        if (var_a1 != 0) {
                            if (cap == GL_MINMAX_EXT) {
                                temp_s0->unk6A0 &= ~0x20000000;
                                temp_s0->unk820C = 0;
                                temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x80);
                                temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x80);
                                goto block_5;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_s0->unk6A0 &= ~0x10000000;
                        temp_s0->unk81DC = 0;
                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x40);
                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x40);
                        goto block_5;
                    }
                    if (cap >= GL_SEPARABLE_2D_EXT) {
                        if (cap <= GL_SEPARABLE_2D_EXT) {
                            temp_s0->unk6A0 &= ~0x08000000;
                            temp_s0->unk8334 = 0;
                            temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x800);
                            temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x100000);
                            goto block_5;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    if (cap == GL_CONVOLUTION_2D_EXT) {
                        temp_s0->unk6A0 &= ~0x04000000;
                        temp_s0->unk82E4 = 0;
                        temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x800);
                        temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x100000);
                        goto block_5;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                temp_s0->unk6A0 &= ~0x02000000;
                temp_s0->unk8294 = 0;
                temp_s0->stencilBuffer.buf.other = (void *) ((s32) temp_s0->stencilBuffer.buf.other | 0x800);
                temp_s0->stencilBuffer.buf.resize = (void (*)()) ((s32) temp_s0->stencilBuffer.buf.resize & ~0x100000);
                goto block_5;
            }
            var_a1 = cap < GL_CLIP_PLANE5;
            if (cap >= GL_CLIP_PLANE4) {
                if (var_a1 != 0) {
                    goto block_39;
                }
                if (cap >= GL_LIGHT3) {
                    if (cap < GL_LIGHT4) {
                        /* Duplicate return node #89. Try simplifying control flow for better match */
                        temp_a1 = cap - 0x4000;
                        temp_a6 = ~(1 << temp_a1);
                        temp_a5 = temp_s0->unk6A8 & temp_a6;
                        temp_s0->unk6A8 = temp_a5;
                        __glBeginMode = 2;
                        temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                        temp_s0->procs.table[0x16] = (void *) temp_a2;
                        __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                        return;
                    }
                    if (cap >= GL_LIGHT6) {
                        if (cap >= GL_LIGHT7) {
                            if (cap == GL_LIGHT7) {
                                /* Duplicate return node #89. Try simplifying control flow for better match */
                                temp_a1 = cap - 0x4000;
                                temp_a6 = ~(1 << temp_a1);
                                temp_a5 = temp_s0->unk6A8 & temp_a6;
                                temp_s0->unk6A8 = temp_a5;
                                __glBeginMode = 2;
                                temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                                temp_s0->procs.table[0x16] = (void *) temp_a2;
                                __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                                return;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        /* Duplicate return node #89. Try simplifying control flow for better match */
                        temp_a1 = cap - 0x4000;
                        temp_a6 = ~(1 << temp_a1);
                        temp_a5 = temp_s0->unk6A8 & temp_a6;
                        temp_s0->unk6A8 = temp_a5;
                        __glBeginMode = 2;
                        temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                        temp_s0->procs.table[0x16] = (void *) temp_a2;
                        __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                        return;
                    }
                    if (cap >= GL_LIGHT5) {
                        if (cap < GL_LIGHT6) {
                            /* Duplicate return node #89. Try simplifying control flow for better match */
                            temp_a1 = cap - 0x4000;
                            temp_a6 = ~(1 << temp_a1);
                            temp_a5 = temp_s0->unk6A8 & temp_a6;
                            temp_s0->unk6A8 = temp_a5;
                            __glBeginMode = 2;
                            temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                            temp_s0->procs.table[0x16] = (void *) temp_a2;
                            __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                            return;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    if (cap == GL_LIGHT4) {
                        /* Duplicate return node #89. Try simplifying control flow for better match */
                        temp_a1 = cap - 0x4000;
                        temp_a6 = ~(1 << temp_a1);
                        temp_a5 = temp_s0->unk6A8 & temp_a6;
                        temp_s0->unk6A8 = temp_a5;
                        __glBeginMode = 2;
                        temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                        temp_s0->procs.table[0x16] = (void *) temp_a2;
                        __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                        return;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                var_a1 = cap < GL_LIGHT1;
                if (var_a1 == 0) {
                    if (cap >= GL_LIGHT2) {
                        if (cap == GL_LIGHT2) {
                            /* Duplicate return node #89. Try simplifying control flow for better match */
                            temp_a1 = cap - 0x4000;
                            temp_a6 = ~(1 << temp_a1);
                            temp_a5 = temp_s0->unk6A8 & temp_a6;
                            temp_s0->unk6A8 = temp_a5;
                            __glBeginMode = 2;
                            temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                            temp_s0->procs.table[0x16] = (void *) temp_a2;
                            __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                            return;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    /* Duplicate return node #89. Try simplifying control flow for better match */
                    temp_a1 = cap - 0x4000;
                    temp_a6 = ~(1 << temp_a1);
                    temp_a5 = temp_s0->unk6A8 & temp_a6;
                    temp_s0->unk6A8 = temp_a5;
                    __glBeginMode = 2;
                    temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                    temp_s0->procs.table[0x16] = (void *) temp_a2;
                    __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                    return;
                }
                var_a1 = cap < GL_LIGHT1;
                if (cap >= GL_LIGHT0) {
                    if (var_a1 != 0) {
                        temp_a1 = cap - 0x4000;
                        temp_a6 = ~(1 << temp_a1);
                        temp_a5 = temp_s0->unk6A8 & temp_a6;
                        temp_s0->unk6A8 = temp_a5;
                        __glBeginMode = 2;
                        temp_a2 = (s32) temp_s0->procs.table[0x16] | 0x20;
                        temp_s0->procs.table[0x16] = (void *) temp_a2;
                        __glMgrDisableLightSource(temp_s0, temp_s0, temp_a1, temp_a2, 1, 2, temp_a5, temp_a6);
                        return;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                if (cap == GL_CLIP_PLANE5) {
                    goto block_39;
                }
                /* Duplicate return node #36. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            var_a1 = cap < GL_POLYGON_OFFSET_LINE;
            if (var_a1 == 0) {
                if (cap >= 0x2A03U) {
                    if (cap >= GL_CLIP_PLANE2) {
                        var_a1 = 0x3003;
                        if (cap >= GL_CLIP_PLANE3) {
                            if (cap == GL_CLIP_PLANE3) {
                                goto block_39;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        goto block_39;
                    }
                    var_a1 = cap < GL_CLIP_PLANE1;
                    if (var_a1 == 0) {
                        if (cap < GL_CLIP_PLANE2) {
                            goto block_39;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    if (cap == GL_CLIP_PLANE0) {
block_39:
                        *(void *)0x74080 = 0xA704U;
                        *(void *)0x74080 = cap;
                        goto block_5;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                temp_s0->unk6A4 &= ~0x400;
                *(void *)0x74080 = 0xE804U;
                temp_at_2 = temp_s0->unk9D50 & ~2;
                *(void *)0x74080 = temp_at_2;
                temp_s0->unk9D50 = temp_at_2;
                goto block_5;
            }
            if (cap >= GL_TEXTURE_2D) {
                if (cap >= 0xDE2U) {
                    if (cap == GL_POLYGON_OFFSET_POINT) {
                        temp_s0->unk6A4 &= ~0x200;
                        *(void *)0x74080 = 0xE804U;
                        temp_a0_6 = temp_s0->unk9D50 & ~4;
                        *(void *)0x74080 = temp_a0_6;
                        temp_s0->unk9D50 = temp_a0_6;
                        goto block_5;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                temp_a1_2 = ~0x20000;
                temp_s0->unk6A0 &= temp_a1_2;
                temp_a0_7 = temp_s0->unk8A2C;
                if ((temp_a0_7 != NULL) && (temp_a0_7->unkC4 == NULL)) {
                    M2C_ERROR(/* Read from unset register $t9 */)(temp_a0_7, temp_a1_2, 0x10000, 1);
                    var_ra = sp20;
                }
                if (temp_s0->unk9CA5 != 0) {
                    temp_a0_8 = temp_s0->unk8A2C;
                    if (temp_a0_8 != NULL) {
                        if ((s32) temp_a0_8->unkC4->unkB3 < 3) {
                            if (temp_s0->unk6A0 & 0x10000) {
                                temp_s0->unk8A2C = (void *) (temp_s0 + 0x8A30);
                            } else {
                                sp20 = var_ra;
                                temp_s0->unk8A2C = NULL;
                                __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0);
                                temp_s0->unk9248 = 0;
                                *(void *)0x74080 = 0x5F04U;
                                *(void *)0x74080 = GL_ZERO;
                                *(void *)0x74080 = GL_AUX_BUFFERS;
                            }
                        }
                    }
                }
                /* Duplicate return node #6. Try simplifying control flow for better match */
                __glBeginMode = 2;
                temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
                return;
            }
            if (cap >= GL_TEXTURE_1D) {
                if (cap < GL_TEXTURE_2D) {
                    temp_s0->unk6A0 &= ~0x10000;
                    temp_a0_9 = temp_s0->unk8A2C;
                    if ((temp_a0_9 != NULL) && (temp_a0_9->unkC4 == NULL)) {
                        M2C_ERROR(/* Read from unset register $t9 */)(temp_a0_9, var_a1);
                        var_ra = sp20;
                    }
                    if (temp_s0->unk9CA5 != 0) {
                        temp_a0_10 = temp_s0->unk8A2C;
                        if (temp_a0_10 != NULL) {
                            if ((s32) temp_a0_10->unkC4->unkB3 <= 0) {
                                sp20 = var_ra;
                                temp_s0->unk8A2C = NULL;
                                __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0);
                                temp_s0->unk9248 = 0;
                                *(void *)0x74080 = 0x5F04U;
                                *(void *)0x74080 = GL_ZERO;
                                *(void *)0x74080 = GL_AUX_BUFFERS;
                            }
                        }
                    }
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    __glBeginMode = 2;
                    temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
                    return;
                }
                /* Duplicate return node #36. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            if (cap == GL_MAP2_VERTEX_4) {
                goto block_3;
            }
            /* Duplicate return node #36. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1);
            return;
        }
        if (cap >= GL_TEXTURE_GEN_T) {
            var_a1 = 0x80000;
            if (cap >= GL_TEXTURE_GEN_R) {
                if (cap >= GL_MAP1_TEXTURE_COORD_4) {
                    if (cap < GL_MAP1_VERTEX_3) {
                        goto block_11;
                    }
                    if (cap >= GL_MAP2_NORMAL) {
                        var_a1 = cap < GL_MAP2_TEXTURE_COORD_3;
                        if (cap >= GL_MAP2_TEXTURE_COORD_1) {
                            if (var_a1 == 0) {
                                if (cap >= GL_MAP2_TEXTURE_COORD_4) {
                                    if (cap == GL_MAP2_TEXTURE_COORD_4) {
                                        goto block_3;
                                    }
                                    /* Duplicate return node #36. Try simplifying control flow for better match */
                                    __glSetError(0x500, var_a1);
                                    return;
                                }
                                goto block_3;
                            }
                            var_a1 = cap < GL_MAP2_TEXTURE_COORD_2;
                            if (var_a1 == 0) {
                                if (cap < GL_MAP2_TEXTURE_COORD_3) {
                                    goto block_3;
                                }
                                /* Duplicate return node #36. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            var_a1 = 0xDB3;
                            if (cap == GL_MAP2_TEXTURE_COORD_1) {
                                goto block_3;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        goto block_3;
                    }
                    var_a1 = cap < GL_MAP2_COLOR_4;
                    if (var_a1 == 0) {
                        if (cap >= GL_MAP2_INDEX) {
                            if (cap == GL_MAP2_INDEX) {
                                goto block_3;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
block_3:
                        __glMgrEvalDisable((__GLcontext *) cap, cap, var_a1);
                        temp_s0->unk6B4 &= ~(1 << (cap - 0xDB0)) & 0xFFFF;
                        goto block_4;
                    }
                    if (cap >= GL_MAP1_VERTEX_4) {
                        if (cap < 0xD99U) {
                            goto block_11;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    if (cap == GL_MAP1_VERTEX_3) {
                        goto block_11;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                if (cap >= GL_MAP1_INDEX) {
                    var_a1 = cap < GL_MAP1_TEXTURE_COORD_2;
                    if (cap >= GL_MAP1_NORMAL) {
                        if (var_a1 == 0) {
                            if (cap >= GL_MAP1_TEXTURE_COORD_3) {
                                if (cap == GL_MAP1_TEXTURE_COORD_3) {
                                    goto block_11;
                                }
                                /* Duplicate return node #36. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            goto block_11;
                        }
                        var_a1 = cap < GL_MAP1_TEXTURE_COORD_1;
                        if (var_a1 == 0) {
                            if (cap < GL_MAP1_TEXTURE_COORD_2) {
                                goto block_11;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        if (cap == GL_MAP1_NORMAL) {
                            goto block_11;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    goto block_11;
                }
                var_a1 = cap < 0xD81U;
                if (cap >= GL_AUTO_NORMAL) {
                    if (var_a1 == 0) {
                        if (cap == GL_MAP1_COLOR_4) {
block_11:
                            __glMgrEvalDisable((__GLcontext *) cap, cap, var_a1);
                            temp_s0->unk6B0 &= ~(1 << (cap - 0xD90)) & 0xFFFF;
                            goto block_5;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    temp_a2_2 = ~0x800000;
                    temp_a1_3 = temp_s0->unk6A0 & temp_a2_2;
                    temp_s0->unk6A0 = temp_a1_3;
                    __glMgrEvalDisable((__GLcontext *)0xD80, 0xD80, temp_a1_3, temp_a2_2, 1);
block_4:
                    goto block_5;
                }
                if (cap >= GL_TEXTURE_GEN_Q) {
                    var_a1 = 0x9CA5;
                    if (cap < 0xC64U) {
                        temp_s0->unk6A0 &= ~0x200000;
                        if (temp_s0->unk9CA5 != 0) {
                            *(void *)0x74080 = 0x7604U;
                            *(void *)0x74080 = cap;
                        }
                        goto block_5;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                var_a1 = 0x9CA5;
                if (cap == GL_TEXTURE_GEN_R) {
                    temp_s0->unk6A0 &= ~0x100000;
                    if (temp_s0->unk9CA5 != 0) {
                        *(void *)0x74080 = 0x7604U;
                        *(void *)0x74080 = cap;
                    }
                    goto block_5;
                }
                /* Duplicate return node #36. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            temp_s0->unk6A0 &= ~0x80000;
            if (temp_s0->unk9CA5 != 0) {
                *(void *)0x74080 = 0x7604U;
                *(void *)0x74080 = cap;
            }
            goto block_5;
        }
        if (cap >= GL_DEPTH_TEST) {
            if (cap >= GL_DEPTH_WRITEMASK) {
                if (cap >= GL_BLEND) {
                    if (cap >= 0xBE3U) {
                        if (cap >= GL_SCISSOR_TEST) {
                            var_a1 = 0xC60;
                            if (cap >= 0xC12U) {
                                if (cap == GL_TEXTURE_GEN_S) {
                                    temp_s0->unk6A0 &= ~0x40000;
                                    if (temp_s0->unk9CA5 != 0) {
                                        *(void *)0x74080 = 0x7604U;
                                        *(void *)0x74080 = cap;
                                    }
                                    goto block_5;
                                }
                                /* Duplicate return node #36. Try simplifying control flow for better match */
                                __glSetError(0x500, var_a1);
                                return;
                            }
                            *(void *)0x74080 = 0x6E04U;
                            *(void *)0x74080 = GL_ZERO;
                            goto block_5;
                        }
                        var_a1 = cap < 0xBF3U;
                        if (cap >= GL_COLOR_LOGIC_OP) {
                            var_a1 = 0x6B04;
                            if (var_a1 != 0) {
                                *(void *)0x74080 = 0x6B04U;
                                *(void *)0x74080 = GL_ZERO;
                                temp_s0->unk6A0 &= ~0x800;
                                goto block_5;
                            }
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        if (cap == GL_LOGIC_OP) {
                            *(void *)0x74080 = 0x6B04U;
                            *(void *)0x74080 = GL_ZERO;
                            temp_s0->unk6A0 &= ~4;
                            goto block_5;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    *(void *)0x74080 = 0x6504U;
                    *(void *)0x74080 = GL_ZERO;
                    goto block_5;
                }
                var_a1 = cap < GL_ALPHA_TEST_FUNC;
                if (cap >= GL_ALPHA_TEST) {
                    if (var_a1 == 0) {
                        if (cap == GL_DITHER) {
                            *(void *)0x74080 = 0x6704U;
                            *(void *)0x74080 = GL_ZERO;
                            goto block_5;
                        }
                        /* Duplicate return node #36. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1);
                        return;
                    }
                    *(void *)0x74080 = 0x6404U;
                    *(void *)0x74080 = GL_ZERO;
                    goto block_5;
                }
                if (cap >= GL_NORMALIZE) {
                    if (cap < GL_VIEWPORT) {
                        *(void *)0x74080 = 0xA304U;
                        *(void *)0x74080 = GL_ZERO;
                        temp_s0->unk6A0 &= ~0x400000;
                        goto block_5;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                if (cap == GL_STENCIL_TEST) {
                    *(void *)0x74080 = 0x6F04U;
                    *(void *)0x74080 = GL_ZERO;
                    goto block_5;
                }
                /* Duplicate return node #36. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            temp_s0->unk9265 = 0;
            *(void *)0x74080 = 0x6604U;
            *(void *)0x74080 = GL_ZERO;
            goto block_5;
        }
        if (cap >= GL_POLYGON_STIPPLE) {
            var_a1 = cap < GL_COLOR_MATERIAL;
            if (cap >= GL_EDGE_FLAG) {
                if (var_a1 == 0) {
                    if (cap >= 0xB58U) {
                        if (cap != GL_FOG) {
                            /* Duplicate return node #36. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1);
                            return;
                        }
                        temp_a2_3 = ~0x20000;
                        temp_s0->unk96C0 = (s32) (temp_s0->unk96C0 & temp_a2_3);
                        mgrTM_SendTexmode1(temp_s0, 0, temp_a2_3, (void *)1);
                        *(void *)0x74080 = 0x6804U;
                        *(void *)0x74080 = GL_ZERO;
                        goto block_5;
                    }
                    *(void *)0x74080 = 0xC300U;
                    temp_s0->unk6A0 &= ~0x80;
                    goto block_5;
                }
                if (cap >= GL_LIGHTING) {
                    if (cap < GL_LIGHT_MODEL_LOCAL_VIEWER) {
                        temp_a3 = temp_s0->unk6A0 & ~0x40;
                        temp_s0->unk6A0 = temp_a3;
                        __glBeginMode = 2;
                        temp_a1_4 = (s32) temp_s0->procs.table[0x16] | 0x20;
                        temp_s0->procs.table[0x16] = (void *) temp_a1_4;
                        ((? (*)(__GLcontext *, s32, ?, s32, ?)) temp_s0->procs.table[0x1F])(temp_s0, temp_a1_4, 2, temp_a3, -0x41);
                        ((? (*)(__GLcontext *)) temp_s0->procs.table[0x53])(temp_s0);
                        __glMgrDisableLighting(temp_s0, temp_s0);
                        return;
                    }
                    /* Duplicate return node #36. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1);
                    return;
                }
                var_a1 = 0xB44;
                if (cap == GL_CULL_FACE) {
                    temp_a0_11 = temp_s0->unk6A0;
                    if (temp_a0_11 & 0x1000) {
                        temp_s0->unk6A0 = temp_a0_11 & ~0x1000;
                        __glBeginMode = 2;
                        *(void *)0x74080 = 0x7300U;
                        temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 4);
                        return;
                    }
                    return;
                }
                /* Duplicate return node #36. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            *(void *)0x74080 = 0x6D04U;
            *(void *)0x74080 = GL_ZERO;
            goto block_5;
        }
        var_a1 = cap < GL_LINE_STIPPLE_PATTERN;
        if (cap >= GL_LINE_STIPPLE) {
            if (var_a1 == 0) {
                if (cap == GL_POLYGON_SMOOTH) {
                    temp_s0->unk6A0 &= ~0x800;
                    goto block_5;
                }
                /* Duplicate return node #36. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1);
                return;
            }
            *(void *)0x74080 = 0x6A04U;
            *(void *)0x74080 = GL_ZERO;
            goto block_5;
        }
        if (cap >= GL_LINE_SMOOTH) {
            if (cap < GL_LINE_WIDTH) {
                *(void *)0x74080 = 0x6904U;
                *(void *)0x74080 = GL_ZERO;
                goto block_5;
            }
            /* Duplicate return node #36. Try simplifying control flow for better match */
            __glSetError(0x500, var_a1);
            return;
        }
        if (cap == GL_POINT_SMOOTH) {
            *(void *)0x74080 = 0x6C04U;
            *(void *)0x74080 = GL_ZERO;
            temp_s0->unk6A0 &= ~0x400;
block_5:
            __glBeginMode = 2;
            temp_s0->procs.table[0x16] = (void *) ((s32) temp_s0->procs.table[0x16] | 1);
            return;
        }
        __glSetError(0x500, var_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ClearColor(f32 red, f32 green, f32 blue, f32 alpha) {
    f32 temp_f4;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;

    var_f12 = red;
    var_f13 = green;
    var_f14 = blue;
    var_f15 = alpha;
    if (__glBeginMode != 1) {
        temp_f4 = __glCurrentContext->unkCD4;
        if (var_f12 < 0.0f) {
            var_f12 = 0.0f;
        }
        if (temp_f4 < var_f12) {
            var_f12 = temp_f4;
        }
        if (var_f13 < 0.0f) {
            var_f13 = 0.0f;
        }
        if (temp_f4 < var_f13) {
            var_f13 = temp_f4;
        }
        if (var_f14 < 0.0f) {
            var_f14 = 0.0f;
        }
        if (temp_f4 < var_f14) {
            var_f14 = temp_f4;
        }
        if (var_f15 < 0.0f) {
            var_f15 = 0.0f;
        }
        if (temp_f4 < var_f15) {
            var_f15 = temp_f4;
        }
        *(f32 *)0x74080 = 6.6747e-41f;
        *(f32 *)0x74080 = var_f12;
        *(f32 *)0x74080 = var_f13;
        *(f32 *)0x74080 = var_f14;
        *(f32 *)0x74080 = var_f15;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ClearAccum(f32 red, f32 green, f32 blue, f32 alpha) {
    f32 temp_f4;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;

    var_f12 = red;
    var_f13 = green;
    var_f14 = blue;
    var_f15 = alpha;
    if (__glBeginMode != 1) {
        temp_f4 = __glCurrentContext->unkCD4;
        if (var_f12 < -1.0f) {
            var_f12 = -1.0f;
        }
        if (temp_f4 < var_f12) {
            var_f12 = temp_f4;
        }
        if (var_f13 < -1.0f) {
            var_f13 = -1.0f;
        }
        if (temp_f4 < var_f13) {
            var_f13 = temp_f4;
        }
        if (var_f14 < -1.0f) {
            var_f14 = -1.0f;
        }
        if (temp_f4 < var_f14) {
            var_f14 = temp_f4;
        }
        if (var_f15 < -1.0f) {
            var_f15 = -1.0f;
        }
        if (temp_f4 < var_f15) {
            var_f15 = temp_f4;
        }
        *(f32 *)0x74080 = 6.7105e-41f;
        *(f32 *)0x74080 = var_f12;
        *(f32 *)0x74080 = var_f13;
        *(f32 *)0x74080 = var_f14;
        *(f32 *)0x74080 = var_f15;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ClearDepth(f64 depth) {
    f64 var_f12;

    var_f12 = depth;
    if (__glBeginMode != 1) {
        if (var_f12 < GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) {
            var_f12 = GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U);
        }
        if (var_f12 > 1.0) {
            var_f12 = 1.0;
        }
        *(s32 *)0x74080 = 0xBC04;
        *(s32 *)0x74080 = (s32) (var_f12 * 16777215.0);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ClearIndex(f32 c) {
    if (__glBeginMode != 1) {
        *(f32 *)0x74080 = 6.7806e-41f;
        *(f32 *)0x74080 = (f32) ((s32) (c * 16.0f) & ((__glCurrentContext->unk7844 * 0x10) | 0xF)) * 0.0625f;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ClearStencil(s32 s) {
    if (__glBeginMode != 1) {
        *(s32 *)0x74080 = 0xBE04;
        *(s32 *)0x74080 = ((1 << __glCurrentContext->modes.stencilBits) - 1) & s;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_ColorMaterial(enum GLenum face, enum GLenum mode) {
    s32 var_a2;

    if (__glBeginMode != 1) {
        var_a2 = 0x1200;
        if ((mode != GL_AMBIENT) && (mode != GL_DIFFUSE) && (mode != GL_SPECULAR)) {
            var_a2 = 0x1602;
            if (mode != GL_EMISSION) {
                if (mode != GL_AMBIENT_AND_DIFFUSE) {
                    __glSetError(0x500, 0x1602);
                    return;
                }
                goto block_8;
            }
        }
block_8:
        switch (face) {                             /* irregular */
        default:
            __glSetError(0x500, var_a2);
            return;
        case GL_FRONT_AND_BACK:
            *(enum GLenum *)0x74080 = 0xC104;
            *(enum GLenum *)0x74080 = mode;
            return;
        case GL_FRONT:
            *(void *)0x74080 = 0xBF04;
            *(void *)0x74080 = mode;
            break;
        case GL_BACK:
            *(void *)0x74080 = 0xC004;
            *(void *)0x74080 = mode;
            break;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_Hint(enum GLenum target, enum GLenum mode) {
    if (__glBeginMode != 1) {
        switch (mode) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError(0x500, 0x1100, __glCurrentContext, __glCurrentContext);
            return;
        case GL_DONT_CARE:                          /* switch 1 */
        case GL_FASTEST:                            /* switch 1 */
            /* fallthrough */
        case GL_NICEST:                             /* switch 1 */
            switch (target) {                       /* switch 2; irregular */
            default:                                /* switch 2 */
                __glSetError(0x500, 0x812E, __glCurrentContext, __glCurrentContext);
                return;
            case 0x812E:                            /* switch 2 */
                __glCurrentContext->unk718 = mode;
                return;
            case GL_PERSPECTIVE_CORRECTION_HINT:    /* switch 2 */
                __glCurrentContext->unk704 = mode;
                break;
            case GL_POINT_SMOOTH_HINT:              /* switch 2 */
                __glCurrentContext->unk708 = mode;
                __glBeginMode = 2;
                __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 8);
                break;
            case GL_LINE_SMOOTH_HINT:               /* switch 2 */
                __glCurrentContext->unk70C = mode;
                __glBeginMode = 2;
                __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 2);
                break;
            case GL_POLYGON_SMOOTH_HINT:            /* switch 2 */
                __glCurrentContext->unk710 = mode;
                __glBeginMode = 2;
                __glCurrentContext->procs.table[0x16] = (void *) ((s32) __glCurrentContext->procs.table[0x16] | 4);
                break;
            case GL_FOG_HINT:                       /* switch 2 */
                __glCurrentContext->unk714 = mode;
                break;
            }
            break;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_SoftPushAttrib(__GLcontext *gc, ...) {
    s64 sp70;
    s64 sp50;
    f32 sp30;
    s32 sp28;
    s32 sp18;
    u8 sp10;
    ? *temp_a1;
    __GLcontext *temp_s1;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f64 temp_f1;
    f64 temp_f2;
    f64 temp_f7;
    s32 *temp_a4_3;
    s32 *temp_a4_4;
    s32 *temp_a5;
    s32 *temp_a5_2;
    s32 *temp_a5_3;
    s32 *temp_at_2;
    s32 *temp_at_5;
    s32 *temp_at_6;
    s32 *temp_v1_2;
    s32 *temp_v1_7;
    s32 temp_a0;
    s32 temp_a0_10;
    s32 temp_a0_11;
    s32 temp_a0_12;
    s32 temp_a0_13;
    s32 temp_a0_14;
    s32 temp_a0_15;
    s32 temp_a0_16;
    s32 temp_a0_17;
    s32 temp_a0_18;
    s32 temp_a0_19;
    s32 temp_a0_20;
    s32 temp_a0_21;
    s32 temp_a0_22;
    s32 temp_a0_23;
    s32 temp_a0_24;
    s32 temp_a0_25;
    s32 temp_a0_26;
    s32 temp_a0_27;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 temp_a3;
    s32 temp_a3_5;
    s32 temp_a4;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_12;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a4_6;
    s32 var_a4_7;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    s32 var_at_7;
    s32 var_at_8;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    s32 var_v1_6;
    s64 *temp_a3_2;
    s64 *temp_a3_3;
    s64 *temp_a3_4;
    s64 *temp_a3_6;
    s64 *temp_a4_2;
    s64 *temp_at;
    s64 *temp_at_3;
    s64 *temp_at_4;
    s64 *temp_at_7;
    s64 *temp_v1;
    s64 *temp_v1_3;
    s64 *temp_v1_4;
    s64 *temp_v1_5;
    s64 *temp_v1_6;
    s64 *temp_v1_8;
    s64 *temp_v1_9;
    s64 var_ra;
    u32 temp_s3;
    u32 temp_s3_2;
    u32 temp_s4;
    u32 temp_s4_2;
    u32 temp_s4_3;
    void **var_a0;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *var_s0;

    var_ra = saved_reg_ra;
    temp_s1 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_s4 = temp_s1->unk31BC;
        temp_a4 = temp_s1->unkD98 * 4;
        temp_a3 = temp_s4 < (u32) (temp_s1->unk31B8 + temp_a4);
        var_a0 = temp_s1->unk9270;
        if (temp_a3 != 0) {
            var_s0 = *temp_s4;
            if (var_s0 == NULL) {
                sp70 = (s64) var_a0;
                temp_v0 = temp_s1->imports.calloc(temp_s1, 1U, 0xB78U);
                *temp_s4 = temp_v0;
                var_s0 = temp_v0;
                var_a0 = (void **) sp70;
                var_ra = sp50;
                *var_a0 = temp_s1->imports.calloc(temp_s1, 1U, 0x390U);
            }
            var_s0->unk0 = gc;
            var_s0->unk608 = (s64) temp_s1->unk6A0;
            var_s0->unk610 = (s64) temp_s1->unk6A8;
            var_s0->unk618 = (s64) temp_s1->unk6B0;
            temp_s1->unk31BC = temp_s4 + 4;
            temp_s1->unk9270 = (void *) (var_a0 + 4);
            if ((s32) gc & 0x200) {
                var_s0->unk578 = (f32) temp_s1->unk610;
                var_s0->unk57C = (f32) temp_s1->unk614;
                var_s0->unk580 = (f32) temp_s1->unk618;
                var_s0->unk584 = (f32) temp_s1->unk61C;
            }
            var_a0_2 = 9;
            if ((s32) gc & 0x4000) {
                var_v0 = 0;
                temp_a2 = var_s0 + 0x620;
                temp_a1 = &temp_s1->unk6B8;
                do {
                    temp_at = var_v0 + temp_a2;
                    temp_a4_2 = var_v0 + temp_a1;
                    var_v0 += 8;
                    var_a0_2 -= 1;
                    *temp_at = *temp_a4_2;
                } while (var_a0_2 > 0);
                sp50 = var_ra;
                *(var_v0 + temp_a2) = *(var_v0 + temp_a1);
                temp_a0 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_ALPHA_TEST) != 0) {
                    var_s0->unk608 = (s32) (temp_a0 | 1);
                } else {
                    var_s0->unk608 = (s32) (temp_a0 & ~1);
                }
                __glMgrim_GetIntegerv(GL_ALPHA_TEST_FUNC, var_s0 + 0x620);
                __glMgrim_GetFloatv(GL_ALPHA_TEST_REF, var_s0 + 0x624);
                temp_a0_2 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_BLEND) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_2 | 2);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_2 & ~2);
                }
                __glMgrim_GetIntegerv(GL_BLEND_SRC, var_s0 + 0x628);
                __glMgrim_GetIntegerv(GL_BLEND_DST, var_s0 + 0x62C);
                __glMgrim_GetIntegerv(GL_BLEND_EQUATION_EXT, var_s0 + 0x630);
                temp_a0_3 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DITHER) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_3 | 8);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_3 & ~8);
                }
                __glMgrim_GetIntegerv(GL_DRAW_BUFFER, var_s0 + 0x668);
                var_s0->unk664 = (s32) temp_s1->unk6FC;
                temp_a0_4 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LOGIC_OP) != 0) {
                    var_at = temp_a0_4 | 4;
                } else {
                    var_at = temp_a0_4 & ~4;
                }
                var_s0->unk608 = var_at;
                temp_a0_5 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_COLOR_LOGIC_OP) != 0) {
                    var_v1 = temp_a0_5 | 0x800;
                } else {
                    var_v1 = temp_a0_5 & ~0x800;
                }
                var_s0->unk60C = var_v1;
                __glMgrim_GetIntegerv(GL_LOGIC_OP_MODE, var_s0 + 0x644);
                __glMgrim_GetFloatv(GL_COLOR_CLEAR_VALUE, sp);
                var_s0->unk648 = sp0;
                var_s0->unk64C = sp4;
                var_s0->unk650 = sp8;
                var_s0->unk654 = spC;
                __glMgrim_GetFloatv(GL_INDEX_CLEAR_VALUE, var_s0 + 0x658);
                __glMgrim_GetBooleanv(GL_COLOR_WRITEMASK, &sp10);
                var_s0->unk660 = sp10;
                var_s0->unk661 = sp11;
                var_s0->unk662 = sp12;
                var_s0->unk663 = sp13;
                __glMgrim_GetIntegerv(GL_INDEX_WRITEMASK, var_s0 + 0x65C);
                var_ra = sp50;
            }
            var_v0_2 = 0x22;
            if ((s32) gc & 1) {
                var_a0_3 = 0;
                do {
                    temp_a3_2 = var_a0_3 + (var_s0 + 8);
                    temp_v1 = var_a0_3 + &temp_s1->unkA0;
                    var_a0_3 += 8;
                    var_v0_2 -= 1;
                    *temp_a3_2 = *temp_v1;
                } while (var_v0_2 > 0);
                sp50 = var_ra;
                __glMgrim_GetFloatv(GL_CURRENT_RASTER_COLOR, var_s0 + 0xD0);
                var_s0->unk44 = &temp_s1->unk168;
            }
            var_v1_2 = (s32) gc & 0x2000;
            if ((s32) gc & 0x100) {
                var_s0->unk568 = (s64) temp_s1->unk600;
                sp50 = var_ra;
                var_s0->unk570 = (f64) temp_s1->unk608;
                temp_a0_6 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DEPTH_TEST) != 0) {
                    var_at_2 = temp_a0_6 | 0x10;
                } else {
                    var_at_2 = temp_a0_6 & ~0x10;
                }
                var_s0->unk608 = var_at_2;
                __glMgrim_GetIntegerv(GL_DEPTH_FUNC, var_s0 + 0x568);
                __glMgrim_GetBooleanv(GL_DEPTH_WRITEMASK, var_s0 + 0x56C);
                __glMgrim_GetDoublev(GL_DEPTH_CLEAR_VALUE, var_s0 + 0x570);
                var_ra = sp50;
                var_v1_2 = (s32) gc & 0x2000;
            }
            if (var_v1_2 != 0) {
                sp50 = var_ra;
                temp_a0_7 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_ALPHA_TEST) != 0) {
                    var_a3 = temp_a0_7 | 1;
                } else {
                    var_a3 = temp_a0_7 & ~1;
                }
                var_s0->unk608 = var_a3;
                temp_a0_8 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_BLEND) != 0) {
                    var_a4 = temp_a0_8 | 2;
                } else {
                    var_a4 = temp_a0_8 & ~2;
                }
                var_s0->unk608 = var_a4;
                temp_a0_9 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DEPTH_TEST) != 0) {
                    var_at_3 = temp_a0_9 | 0x10;
                } else {
                    var_at_3 = temp_a0_9 & ~0x10;
                }
                var_s0->unk608 = var_at_3;
                temp_a0_10 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DITHER) != 0) {
                    var_v1_3 = temp_a0_10 | 8;
                } else {
                    var_v1_3 = temp_a0_10 & ~8;
                }
                var_s0->unk608 = var_v1_3;
                temp_a0_11 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LINE_SMOOTH) != 0) {
                    var_a3_2 = temp_a0_11 | 0x200;
                } else {
                    var_a3_2 = temp_a0_11 & ~0x200;
                }
                var_s0->unk608 = var_a3_2;
                temp_a0_12 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LOGIC_OP) != 0) {
                    var_a4_2 = temp_a0_12 | 4;
                } else {
                    var_a4_2 = temp_a0_12 & ~4;
                }
                var_s0->unk608 = var_a4_2;
                temp_a0_13 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POINT_SMOOTH) != 0) {
                    var_at_4 = temp_a0_13 | 0x400;
                } else {
                    var_at_4 = temp_a0_13 & ~0x400;
                }
                var_s0->unk608 = var_at_4;
                temp_a0_14 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_SCISSOR_TEST) != 0) {
                    var_v1_4 = temp_a0_14 | 0x4000;
                } else {
                    var_v1_4 = temp_a0_14 & ~0x4000;
                }
                var_s0->unk608 = var_v1_4;
                temp_a0_15 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_STENCIL_TEST) != 0) {
                    var_a3_3 = temp_a0_15 | 0x8000;
                } else {
                    var_a3_3 = temp_a0_15 & ~0x8000;
                }
                var_s0->unk608 = var_a3_3;
                temp_a0_16 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_SEPARABLE_2D_EXT) != 0) {
                    var_a4_3 = temp_a0_16 | 0x08000000;
                } else {
                    var_a4_3 = temp_a0_16 & ~0x08000000;
                }
                var_s0->unk608 = var_a4_3;
                temp_a0_17 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_FILL) != 0) {
                    var_at_5 = temp_a0_17 | 0x01000000;
                } else {
                    var_at_5 = temp_a0_17 & ~0x01000000;
                }
                var_s0->unk608 = var_at_5;
                temp_a0_18 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_COLOR_LOGIC_OP) != 0) {
                    var_v1_5 = temp_a0_18 | 0x800;
                } else {
                    var_v1_5 = temp_a0_18 & ~0x800;
                }
                var_s0->unk60C = var_v1_5;
                temp_a0_19 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_LINE) != 0) {
                    var_a3_4 = temp_a0_19 | 0x400;
                } else {
                    var_a3_4 = temp_a0_19 & ~0x400;
                }
                var_s0->unk60C = var_a3_4;
                temp_a0_20 = var_s0->unk60C;
                var_ra = sp50;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_POINT) != 0) {
                    var_a4_4 = temp_a0_20 | 0x200;
                } else {
                    var_a4_4 = temp_a0_20 & ~0x200;
                }
                var_s0->unk60C = var_a4_4;
            }
            var_a4_5 = (s32) gc & 0x80;
            if (0x10000 & (s32) gc) {
                var_s0->unk688 = (s64) temp_s1->unk720;
                var_s0->unk690 = (s64) temp_s1->unk728;
                var_s0->unk698 = (s64) temp_s1->unk730;
                var_s0->unk6A0 = (s64) temp_s1->unk738;
                var_s0->unk6A8 = (s64) temp_s1->unk740;
                var_s0->unk6B0 = (s64) temp_s1->unk748;
                var_a4_5 = (s32) gc & 0x80;
            }
            var_v0_3 = 0xA;
            if (var_a4_5 != 0) {
                var_a0_4 = 0;
                do {
                    temp_v1_2 = var_a0_4 + (var_s0 + 0x53C);
                    temp_at_2 = var_a0_4 + &temp_s1->unk5D4;
                    var_a0_4 += 4;
                    var_v0_3 -= 1;
                    *temp_v1_2 = *temp_at_2;
                } while (var_v0_3 > 0);
            }
            var_v1_6 = (s32) gc & 0x40;
            if ((s32) gc & 0x8000) {
                var_s0->unk66C = (enum GLenum) temp_s1->unk704;
                var_s0->unk670 = (enum GLenum) temp_s1->unk708;
                var_s0->unk674 = (enum GLenum) temp_s1->unk70C;
                var_s0->unk678 = (enum GLenum) temp_s1->unk710;
                var_s0->unk67C = (enum GLenum) temp_s1->unk714;
                var_s0->unk680 = (enum GLenum) temp_s1->unk718;
                var_s0->unk684 = (s32) temp_s1->unk71C;
                var_v1_6 = (s32) gc & 0x40;
            }
            var_a3_5 = (s32) gc & 4;
            if (var_v1_6 != 0) {
                var_s0->unk478 = (s32) temp_s1->unk510;
                var_s0->unk47C = (s32) temp_s1->unk514;
                var_s0->unk480 = (s32) temp_s1->unk518;
                var_s0->unk484 = (s32) temp_s1->unk51C;
                var_s0->unk488 = (s32) temp_s1->unk520;
                var_v0_4 = 0xA;
                var_s0->unk48C = (s32) temp_s1->unk524;
                temp_s4_2 = temp_s1->unkD00 * 0x74;
                var_s0->unk490 = (s32) temp_s1->unk528;
                var_a0_5 = 0;
                var_s0->unk494 = (s32) temp_s1->unk52C;
                do {
                    temp_v1_3 = var_a0_5 + (var_s0 + 0x498);
                    temp_at_3 = var_a0_5 + &temp_s1->unk530;
                    var_a0_5 += 8;
                    var_v0_4 -= 1;
                    *temp_v1_3 = *temp_at_3;
                } while (var_v0_4 > 0);
                var_a0_6 = 0xA;
                var_v0_5 = 0;
                do {
                    temp_a3_3 = var_v0_5 + (var_s0 + 0x4E8);
                    temp_v1_4 = var_v0_5 + &temp_s1->unk580;
                    var_v0_5 += 8;
                    var_a0_6 -= 1;
                    *temp_a3_3 = *temp_v1_4;
                } while (var_a0_6 > 0);
                sp50 = var_ra;
                temp_v0_2 = temp_s1->imports.malloc(temp_s1, temp_s4_2);
                var_s0->unk538 = temp_v0_2;
                memcpy(temp_v0_2, temp_s1->unk5D0, temp_s4_2);
                var_a3_5 = (s32) gc & 4;
            }
            if (var_a3_5 != 0) {
                var_s0->unk124 = (f32) temp_s1->unk1BC;
                var_s0->unk128 = (f32) temp_s1->unk1C0;
                var_s0->unk12C = (s32) temp_s1->unk1C4;
                var_s0->unk130 = (u16) temp_s1->unk1C8;
                sp50 = var_ra;
                var_s0->unk132 = (s16) temp_s1->unk1CA;
                temp_a0_21 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LINE_SMOOTH) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_21 | 0x200);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_21 & ~0x200);
                }
                __glMgrim_GetFloatv(GL_LINE_WIDTH, var_s0 + 0x124);
                var_ra = sp50;
            }
            var_a4_6 = (s32) gc & 0x20;
            if ((s32) gc & 0x20000) {
                var_s0->unk6B8 = (s32) temp_s1->unk750;
                var_a4_6 = (s32) gc & 0x20;
            }
            var_a4_7 = (s32) gc & 2;
            if (var_a4_6 != 0) {
                var_a0_7 = 0xF;
                var_s0->unk3E4 = (s32) temp_s1->unk47C;
                temp_a2_2 = var_s0 + 0x1D0;
                temp_a5 = &temp_s1->unk268;
                var_v0_6 = 0;
                var_s0->unk3E8 = (enum GLenum) temp_s1->unk480;
                do {
                    temp_a3_4 = var_v0_6 + temp_a2_2;
                    temp_v1_5 = var_v0_6 + temp_a5;
                    var_v0_6 += 8;
                    var_a0_7 -= 1;
                    *temp_a3_4 = *temp_v1_5;
                } while (var_a0_7 > 0);
                sp50 = var_ra;
                temp_a3_5 = *(var_v0_6 + temp_a5);
                temp_a4_3 = var_v0_6 + temp_a2_2;
                *temp_a4_3 = temp_a3_5;
                __glCopyColorTableScaleBias(&temp_s1->unk1358, var_s0 + 0x8E4, temp_a2_2, temp_a3_5, temp_a4_3, temp_a5);
                __glMgrim_GetIntegerv(GL_READ_BUFFER, var_s0 + 0x3E8);
                var_a4_7 = (s32) gc & 2;
            }
            var_a3_6 = (s32) gc & 8;
            if (var_a4_7 != 0) {
                var_s0->unk118 = (f32) temp_s1->unk1B0;
                var_s0->unk11C = (f32) temp_s1->unk1B4;
                sp50 = var_ra;
                var_s0->unk120 = (s32) temp_s1->unk1B8;
                temp_a0_22 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POINT_SMOOTH) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_22 | 0x400);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_22 & ~0x400);
                }
                __glMgrim_GetFloatv(GL_POINT_SIZE, var_s0 + 0x118);
                var_ra = sp50;
                if (temp_s1->unk9CA5 == 0) {
                    temp_f4 = var_s0->unk118;
                    temp_f7 = (f64) temp_f4;
                    temp_f6 = temp_s1->unkD7C;
                    temp_f5 = temp_s1->unkD78;
                    if (temp_f7 < 1.0) {
                        var_s0->unk120 = 1;
                    } else {
                        var_s0->unk120 = (s32) (temp_f7 + 0.5);
                    }
                    if (!(temp_f4 <= temp_f5)) {
                        if (!(temp_f6 <= temp_f4)) {
                            var_s0->unk118 = (f32) (((f32) (s32) ((f64) ((temp_f4 - temp_f5) / temp_s1->unkD80) + 0.5) * (second half of f64)) + temp_f5);
                        } else {
                            var_s0->unk118 = temp_f6;
                        }
                    } else {
                        var_s0->unk118 = temp_f5;
                    }
                }
                var_a3_6 = (s32) gc & 8;
            }
            if (var_a3_6 != 0) {
                var_s0->unk134 = (s32) temp_s1->unk1CC;
                var_s0->unk138 = (s32) temp_s1->unk1D0;
                var_s0->unk13C = (s32) temp_s1->unk1D4;
                var_s0->unk140 = (s32) temp_s1->unk1D8;
                var_s0->unk144 = (s32) temp_s1->unk1DC;
                var_s0->unk148 = (s32) temp_s1->unk1E0;
                sp50 = var_ra;
                var_s0->unk14C = (s32) temp_s1->unk1E4;
                temp_a0_23 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_FILL) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_23 | 0x01000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_23 & ~0x01000000);
                }
                temp_a0_24 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_LINE) != 0) {
                    var_s0->unk60C = (s32) (temp_a0_24 | 0x400);
                } else {
                    var_s0->unk60C = (s32) (temp_a0_24 & ~0x400);
                }
                temp_a0_25 = var_s0->unk60C;
                var_ra = sp50;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_POINT) != 0) {
                    var_s0->unk60C = (s32) (temp_a0_25 | 0x200);
                } else {
                    var_s0->unk60C = (s32) (temp_a0_25 & ~0x200);
                }
            }
            var_a0_8 = 0x10;
            if ((s32) gc & 0x10) {
                var_v0_7 = 0;
                do {
                    temp_v1_6 = var_v0_7 + (var_s0 + 0x150);
                    temp_at_4 = var_v0_7 + &temp_s1->unk1E8;
                    var_v0_7 += 8;
                    var_a0_8 -= 1;
                    *temp_v1_6 = *temp_at_4;
                } while (var_a0_8 > 0);
            }
            var_at_6 = (s32) gc & 0x400;
            if ((s32) gc & 0x80000) {
                var_s0->unk8D4 = (s32) temp_s1->unk96C;
                var_s0->unk8D8 = (s32) temp_s1->unk970;
                var_s0->unk8DC = (s32) temp_s1->unk974;
                sp50 = var_ra;
                var_s0->unk8E0 = (s32) temp_s1->unk978;
                temp_a0_26 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_SCISSOR_TEST) != 0) {
                    var_at_7 = temp_a0_26 | 0x4000;
                } else {
                    var_at_7 = temp_a0_26 & ~0x4000;
                }
                var_s0->unk608 = var_at_7;
                __glMgrim_GetIntegerv(GL_SCISSOR_BOX, &sp18);
                var_s0->unk8D4 = sp18;
                var_s0->unk8D8 = sp1C;
                var_s0->unk8DC = sp20;
                var_ra = sp50;
                var_s0->unk8E0 = sp24;
                var_at_6 = (s32) gc & 0x400;
            }
            if (var_at_6 != 0) {
                var_s0->unk588 = (s64) temp_s1->unk620;
                sp50 = var_ra;
                var_s0->unk590 = (s64) temp_s1->unk628;
                var_s0->unk598 = (s64) temp_s1->unk630;
                temp_a0_27 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_STENCIL_TEST) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_27 | 0x8000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_27 & ~0x8000);
                }
                __glMgrim_GetIntegerv(GL_STENCIL_FUNC, var_s0 + 0x588);
                __glMgrim_GetIntegerv(GL_STENCIL_CLEAR_VALUE, &sp28);
                var_s0->unk58C = (s16) sp28;
                __glMgrim_GetIntegerv(GL_STENCIL_REF, &sp28);
                var_s0->unk58E = (s16) sp28;
                __glMgrim_GetIntegerv(GL_STENCIL_VALUE_MASK, &sp28);
                var_s0->unk590 = (s16) sp28;
                __glMgrim_GetIntegerv(GL_STENCIL_WRITEMASK, &sp28);
                var_s0->unk592 = (s16) sp28;
                __glMgrim_GetIntegerv(GL_STENCIL_FAIL, var_s0 + 0x594);
                __glMgrim_GetIntegerv(GL_STENCIL_PASS_DEPTH_FAIL, var_s0 + 0x598);
                __glMgrim_GetIntegerv(GL_STENCIL_PASS_DEPTH_PASS, var_s0 + 0x59C);
                var_ra = sp50;
            }
            var_a0_9 = 0x1F;
            if ((s32) gc & 0x40000) {
                var_v0_8 = 0;
                temp_s3 = temp_s1->unkD0C * 0x24;
                temp_s4_3 = temp_s1->unkD08 * 0xE0;
                do {
                    temp_v1_7 = var_v0_8 + (var_s0 + 0x6BC);
                    temp_at_5 = var_v0_8 + &temp_s1->unk754;
                    var_v0_8 += 4;
                    var_a0_9 -= 1;
                    *temp_v1_7 = *temp_at_5;
                } while (var_a0_9 > 0);
                var_a0_10 = 0xF;
                var_v0_9 = 0;
                temp_a2_3 = var_s0 + 0x738;
                temp_a5_2 = &temp_s1->unk7D0;
                do {
                    temp_a3_6 = var_v0_9 + temp_a2_3;
                    temp_v1_8 = var_v0_9 + temp_a5_2;
                    var_v0_9 += 8;
                    var_a0_10 -= 1;
                    *temp_a3_6 = *temp_v1_8;
                } while (var_a0_10 > 0);
                var_a0_11 = 0x1F;
                var_a1 = 0;
                *(var_v0_9 + temp_a2_3) = *(var_v0_9 + temp_a5_2);
                do {
                    temp_at_6 = var_a1 + (var_s0 + 0x7B4);
                    temp_a4_4 = var_a1 + &temp_s1->unk84C;
                    var_a1 += 4;
                    var_a0_11 -= 1;
                    *temp_at_6 = *temp_a4_4;
                } while (var_a0_11 > 0);
                var_a0_12 = 0xF;
                var_v0_10 = 0;
                temp_a2_4 = var_s0 + 0x830;
                temp_a5_3 = &temp_s1->unk8C8;
                do {
                    temp_v1_9 = var_v0_10 + temp_a2_4;
                    temp_at_7 = var_v0_10 + temp_a5_3;
                    var_v0_10 += 8;
                    var_a0_12 -= 1;
                    *temp_v1_9 = *temp_at_7;
                } while (var_a0_12 > 0);
                *(var_v0_10 + temp_a2_4) = *(var_v0_10 + temp_a5_3);
                var_s0->unk8B4 = (f32) temp_s1->unk94C;
                var_s0->unk8B8 = (f32) temp_s1->unk950;
                var_s0->unk8BC = (f32) temp_s1->unk954;
                var_s0->unk8C0 = (f32) temp_s1->unk958;
                var_s0->unk8C4 = (f32) temp_s1->unk95C;
                var_s0->unk8C8 = (f32) temp_s1->unk960;
                var_s0->unk8CC = (f32) temp_s1->unk964;
                var_s0->unk8D0 = (f32) temp_s1->unk968;
                sp50 = var_ra;
                temp_v0_3 = temp_s1->imports.malloc(temp_s1, temp_s4_3);
                var_s0->unk8AC = temp_v0_3;
                memcpy(temp_v0_3, temp_s1->unk944, temp_s4_3);
                temp_v0_4 = temp_s1->imports.malloc(temp_s1, temp_s3);
                var_s0->unk8B0 = temp_v0_4;
                memcpy(temp_v0_4, temp_s1->unk948, temp_s3);
            }
            var_at_8 = (s32) gc & 0x800;
            if ((s32) gc & 0x1000) {
                var_s0->unk5D8 = (s32) temp_s1->unk670;
                sp50 = var_ra;
                temp_s3_2 = temp_s1->unkD04 * 0x10;
                temp_v0_5 = temp_s1->imports.malloc(temp_s1, temp_s3_2);
                var_s0->unk5DC = temp_v0_5;
                memcpy(temp_v0_5, temp_s1->unk674, temp_s3_2);
                var_at_8 = (s32) gc & 0x800;
            }
            if (var_at_8 != 0) {
                var_s0->unk5A0 = (s64) temp_s1->unk638;
                var_s0->unk5A8 = (s64) temp_s1->unk640;
                var_s0->unk5B0 = (f64) temp_s1->unk648;
                var_s0->unk5B8 = (f64) temp_s1->unk650;
                var_s0->unk5C0 = (s64) temp_s1->unk658;
                sp50 = var_ra;
                var_s0->unk5C8 = (s64) temp_s1->unk660;
                var_s0->unk5D0 = (s64) temp_s1->unk668;
                __glMgrim_GetFloatv(GL_DEPTH_RANGE, &sp30);
                temp_f1 = (f64) sp30;
                var_s0->unk5B0 = temp_f1;
                temp_f2 = (f64) sp34;
                var_s0->unk5B8 = temp_f2;
                var_s0->unk5D0 = (f32) ((f64) (temp_s1->unkCD0 * (f32) ((u64) ((s64) temp_s1->unk7A7C << 0x20) >> 0x20)) * (temp_f2 - temp_f1));
                var_s0->unk5D4 = (f32) ((f64) (second half of f64) * (second half of f64));
            }
            return;
        }
        __glSetError(0x503, temp_a3, (__GLcontext *) temp_a4);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PushAttrib(u32 mask) {
    s64 sp160;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    u64 spE8;
    s64 spC8;
    f32 spC0;
    s32 spB0;
    f64 sp90;
    s32 sp80;
    s32 sp70;
    s32 sp68;
    s32 sp60;
    f32 sp50;
    f32 sp40;
    u8 sp38;
    f32 sp28;
    u8 sp20;
    f32 sp10;
    __GLcontext *temp_s3;
    __GLcontext *var_f0;
    enum GLenum var_s1_2;
    enum GLenum var_s1_3;
    enum GLenum var_s2;
    enum GLenum var_s6_2;
    f32 *temp_v0_3;
    f32 *var_s4;
    f32 *var_s6;
    f32 *var_s7;
    f32 *var_s8;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f8;
    f64 temp_f1;
    f64 temp_f2;
    f64 temp_f7;
    s32 *temp_a2_2;
    s32 *temp_a2_3;
    s32 *temp_a3_2;
    s32 *temp_a3_3;
    s32 *temp_a3_5;
    s32 *temp_a4_3;
    s32 *temp_a4_4;
    s32 *temp_a5;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_s1;
    s32 *temp_s1_2;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_4;
    s32 *temp_v1_5;
    s32 temp_a0;
    s32 temp_a0_10;
    s32 temp_a0_11;
    s32 temp_a0_12;
    s32 temp_a0_13;
    s32 temp_a0_14;
    s32 temp_a0_15;
    s32 temp_a0_16;
    s32 temp_a0_17;
    s32 temp_a0_18;
    s32 temp_a0_19;
    s32 temp_a0_20;
    s32 temp_a0_21;
    s32 temp_a0_22;
    s32 temp_a0_23;
    s32 temp_a0_24;
    s32 temp_a0_25;
    s32 temp_a0_26;
    s32 temp_a0_27;
    s32 temp_a0_28;
    s32 temp_a0_29;
    s32 temp_a0_2;
    s32 temp_a0_30;
    s32 temp_a0_31;
    s32 temp_a0_32;
    s32 temp_a0_33;
    s32 temp_a0_34;
    s32 temp_a0_35;
    s32 temp_a0_36;
    s32 temp_a0_37;
    s32 temp_a0_38;
    s32 temp_a0_39;
    s32 temp_a0_3;
    s32 temp_a0_40;
    s32 temp_a0_41;
    s32 temp_a0_42;
    s32 temp_a0_43;
    s32 temp_a0_44;
    s32 temp_a0_45;
    s32 temp_a0_46;
    s32 temp_a0_47;
    s32 temp_a0_48;
    s32 temp_a0_49;
    s32 temp_a0_4;
    s32 temp_a0_50;
    s32 temp_a0_51;
    s32 temp_a0_52;
    s32 temp_a0_53;
    s32 temp_a0_54;
    s32 temp_a0_55;
    s32 temp_a0_56;
    s32 temp_a0_57;
    s32 temp_a0_58;
    s32 temp_a0_59;
    s32 temp_a0_5;
    s32 temp_a0_60;
    s32 temp_a0_61;
    s32 temp_a0_62;
    s32 temp_a0_63;
    s32 temp_a0_64;
    s32 temp_a0_65;
    s32 temp_a0_66;
    s32 temp_a0_67;
    s32 temp_a0_68;
    s32 temp_a0_69;
    s32 temp_a0_6;
    s32 temp_a0_70;
    s32 temp_a0_71;
    s32 temp_a0_72;
    s32 temp_a0_73;
    s32 temp_a0_74;
    s32 temp_a0_75;
    s32 temp_a0_76;
    s32 temp_a0_77;
    s32 temp_a0_78;
    s32 temp_a0_79;
    s32 temp_a0_7;
    s32 temp_a0_80;
    s32 temp_a0_81;
    s32 temp_a0_82;
    s32 temp_a0_83;
    s32 temp_a0_84;
    s32 temp_a0_85;
    s32 temp_a0_86;
    s32 temp_a0_87;
    s32 temp_a0_8;
    s32 temp_a0_9;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_at_5;
    s32 var_at_6;
    s32 var_at_7;
    s32 var_s2_2;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    s32 var_v1_6;
    s32 var_v1_7;
    s64 *temp_a3;
    s64 *temp_a3_4;
    s64 *temp_a3_6;
    s64 *temp_a3_7;
    s64 *temp_a4_2;
    s64 *temp_a4_5;
    s64 *temp_a4_6;
    s64 *temp_v1_6;
    s64 var_ra;
    u32 temp_s1_3;
    u32 temp_s1_4;
    u32 temp_s2_2;
    u32 temp_s6;
    u64 temp_a4;
    void *(*temp_t9)(__GLcontext *, u32);
    void **temp_s4;
    void *temp_a1;
    void *temp_a2;
    void *temp_a5_2;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s0;
    void *var_s1;

    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_s2 = temp_s3 + 0x10000;
        temp_s6 = temp_s3->unk31BC;
        temp_s4 = temp_s3->unk9270;
        if (temp_s6 < (u32) (temp_s3->unk31B8 + (temp_s3->unkD98 * 4))) {
            var_s0 = *temp_s6;
            var_s1 = *temp_s4;
            if (var_s0 == NULL) {
                temp_v0 = temp_s3->imports.calloc(temp_s3, 1U, 0xB78U);
                *temp_s6 = temp_v0;
                var_s0 = temp_v0;
                temp_v0_2 = temp_s3->imports.calloc(temp_s3, 1U, 0x390U);
                var_s1 = temp_v0_2;
                *temp_s4 = temp_v0_2;
                var_ra = sp120;
            }
            var_s0->unk0 = mask;
            var_s0->unk608 = (s64) temp_s3->unk6A0;
            var_s0->unk610 = (s64) temp_s3->unk6A8;
            var_s0->unk618 = (s64) temp_s3->unk6B0;
            temp_s3->unk31BC = temp_s6 + 4;
            temp_s2->unk-6D90 = (void *) (temp_s4 + 4);
            if (mask & 0x200) {
                sp120 = var_ra;
                __glMgrim_GetFloatv(GL_ACCUM_CLEAR_VALUE, sp);
                var_s0->unk578 = sp0;
                var_s0->unk57C = sp4;
                var_s0->unk580 = sp8;
                var_s0->unk584 = spC;
            }
            if (mask & 0x4000) {
                sp120 = var_ra;
                temp_a0 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_ALPHA_TEST) != 0) {
                    var_a4 = temp_a0 | 1;
                } else {
                    var_a4 = temp_a0 & ~1;
                }
                var_s0->unk608 = var_a4;
                __glMgrim_GetIntegerv(GL_ALPHA_TEST_FUNC, var_s0 + 0x620);
                __glMgrim_GetFloatv(GL_ALPHA_TEST_REF, var_s0 + 0x624);
                temp_a0_2 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_BLEND) != 0) {
                    var_at = temp_a0_2 | 2;
                } else {
                    var_at = temp_a0_2 & ~2;
                }
                var_s0->unk608 = var_at;
                __glMgrim_GetIntegerv(GL_BLEND_SRC, var_s0 + 0x628);
                __glMgrim_GetIntegerv(GL_BLEND_DST, var_s0 + 0x62C);
                __glMgrim_GetIntegerv(GL_BLEND_EQUATION_EXT, var_s0 + 0x630);
                temp_a0_3 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DITHER) != 0) {
                    var_v1 = temp_a0_3 | 8;
                } else {
                    var_v1 = temp_a0_3 & ~8;
                }
                var_s0->unk608 = var_v1;
                __glMgrim_GetIntegerv(GL_DRAW_BUFFER, var_s0 + 0x668);
                temp_a0_4 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LOGIC_OP) != 0) {
                    var_a3 = temp_a0_4 | 4;
                } else {
                    var_a3 = temp_a0_4 & ~4;
                }
                var_s0->unk608 = var_a3;
                temp_a0_5 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_COLOR_LOGIC_OP) != 0) {
                    var_a4_2 = temp_a0_5 | 0x800;
                } else {
                    var_a4_2 = temp_a0_5 & ~0x800;
                }
                var_s0->unk60C = var_a4_2;
                __glMgrim_GetIntegerv(GL_LOGIC_OP_MODE, var_s0 + 0x644);
                __glMgrim_GetFloatv(GL_COLOR_CLEAR_VALUE, &sp10);
                var_s0->unk648 = sp10;
                var_s0->unk64C = sp14;
                var_s0->unk650 = sp18;
                var_s0->unk654 = sp1C;
                __glMgrim_GetFloatv(GL_INDEX_CLEAR_VALUE, var_s0 + 0x658);
                __glMgrim_GetBooleanv(GL_COLOR_WRITEMASK, &sp20);
                var_s0->unk660 = sp20;
                var_s0->unk661 = sp21;
                var_s0->unk662 = sp22;
                var_s0->unk663 = sp23;
                __glMgrim_GetIntegerv(GL_INDEX_WRITEMASK, var_s0 + 0x65C);
                var_ra = sp120;
            }
            if (mask & 1) {
                sp120 = var_ra;
                __glMgrim_GetFloatv(GL_CURRENT_RASTER_POSITION, &sp28);
                var_s0->unkC0 = (f32) ((f64) sp28 + 49151.5 + 0.5);
                var_s0->unkC4 = (f32) ((f64) sp2C + (second half of f64) + 0.5);
                var_s0->unkC8 = sp30;
                var_s0->unkBC = 1.0f;
                var_s0->unkCC = sp34;
                __glMgrim_GetFloatv(GL_CURRENT_RASTER_COLOR, var_s0 + 0xD0);
                var_s0->unk44 = &temp_s3->unk168;
                if (temp_s2->unk-635B != 0) {
                    __glMgrim_GetFloatv(GL_CURRENT_RASTER_TEXTURE_COORDS, &sp28);
                    var_s0->unk70 = sp28;
                    var_s0->unk74 = sp2C;
                    var_s0->unk78 = sp30;
                    var_f0 = sp34;
                } else {
                    var_s0->unk70 = (f32) temp_s3->unk108;
                    var_s0->unk74 = (f32) temp_s3->unk10C;
                    var_s0->unk78 = (void *) temp_s3->unk110;
                    var_f0 = temp_s3->unk114;
                }
                var_s0->unk7C = var_f0;
                __glMgrim_GetBooleanv(GL_CURRENT_RASTER_POSITION_VALID, &sp38);
                var_s0->unk114 = sp38;
                var_s0->unk100 = (f32) temp_s3->unk198;
                var_s0->unk104 = (f32) temp_s3->unk19C;
                var_s0->unk108 = (f32) temp_s3->unk1A0;
                var_s0->unk10C = (f32) temp_s3->unk1A4;
                var_s0->unk110 = (f32) temp_s3->unk1A8;
                __glMgrim_GetBooleanv(GL_EDGE_FLAG, var_s0 + 0x115);
                __glMgrim_GetFloatv(GL_CURRENT_COLOR, var_s0 + 0x100);
                __glMgrim_GetFloatv(GL_CURRENT_INDEX, var_s0 + 0x110);
                if (temp_s3->modes.rgbMode == 0) {
                    var_s0->unk10 = (f32) var_s0->unk110;
                } else {
                    var_s0->unk1C = (f32) var_s0->unk10C;
                    var_s0->unk18 = (f32) var_s0->unk108;
                    var_s0->unk14 = (f32) var_s0->unk104;
                    var_s0->unk10 = (f32) var_s0->unk100;
                }
                __glMgrim_GetFloatv(GL_CURRENT_NORMAL, &sp28);
                var_s0->unk20 = sp28;
                var_s0->unk24 = sp2C;
                var_s0->unk28 = sp30;
                __glMgrim_GetFloatv(GL_CURRENT_TEXTURE_COORDS, &sp28);
                var_s0->unk30 = sp28;
                var_s0->unk34 = sp2C;
                var_s0->unk38 = sp30;
                var_ra = sp120;
                var_s0->unk3C = sp34;
            }
            if (mask & 0x100) {
                sp120 = var_ra;
                temp_a0_6 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DEPTH_TEST) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_6 | 0x10);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_6 & ~0x10);
                }
                __glMgrim_GetIntegerv(GL_DEPTH_FUNC, var_s0 + 0x568);
                __glMgrim_GetBooleanv(GL_DEPTH_WRITEMASK, var_s0 + 0x56C);
                __glMgrim_GetDoublev(GL_DEPTH_CLEAR_VALUE, var_s0 + 0x570);
                var_ra = sp120;
            }
            if (mask & 0x2000) {
                sp120 = var_ra;
                temp_a0_7 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_ALPHA_TEST) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_7 | 1);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_7 & ~1);
                }
                temp_a0_8 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_AUTO_NORMAL) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_8 | 0x800000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_8 & ~0x800000);
                }
                temp_a0_9 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_BLEND) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_9 | 2);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_9 & ~2);
                }
                temp_a0_10 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_CULL_FACE) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_10 | 0x1000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_10 & ~0x1000);
                }
                temp_a0_11 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DEPTH_TEST) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_11 | 0x10);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_11 & ~0x10);
                }
                temp_a0_12 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_DITHER) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_12 | 8);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_12 & ~8);
                }
                temp_a0_13 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_FOG) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_13 | 0x20);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_13 & ~0x20);
                }
                temp_a0_14 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LINE_SMOOTH) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_14 | 0x200);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_14 & ~0x200);
                }
                temp_a0_15 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LINE_STIPPLE) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_15 | 0x100);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_15 & ~0x100);
                }
                temp_a0_16 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LOGIC_OP) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_16 | 4);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_16 & ~4);
                }
                temp_a0_17 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_COLOR_LOGIC_OP) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_17 | 0x800);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_17 & ~0x800);
                }
                temp_a0_18 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_NORMALIZE) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_18 | 0x400000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_18 & ~0x400000);
                }
                temp_a0_19 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POINT_SMOOTH) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_19 | 0x400);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_19 & ~0x400);
                }
                temp_a0_20 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POLYGON_SMOOTH) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_20 | 0x800);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_20 & ~0x800);
                }
                temp_a0_21 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POLYGON_STIPPLE) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_21 | 0x2000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_21 & ~0x2000);
                }
                temp_a0_22 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_SCISSOR_TEST) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_22 | 0x4000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_22 & ~0x4000);
                }
                temp_a0_23 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_STENCIL_TEST) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_23 | 0x8000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_23 & ~0x8000);
                }
                temp_a0_24 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_TEXTURE_1D) != 0) {
                    var_s0->unk608 = (s32) (0x10000 | temp_a0_24);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_24 & ~0x10000);
                }
                temp_a0_25 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_TEXTURE_2D) != 0) {
                    var_s0->unk608 = (s32) (0x20000 | temp_a0_25);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_25 & ~0x20000);
                }
                temp_a0_26 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_S) != 0) {
                    var_s0->unk608 = (s32) (0x40000 | temp_a0_26);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_26 & ~0x40000);
                }
                temp_a0_27 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_T) != 0) {
                    var_s0->unk608 = (s32) (0x80000 | temp_a0_27);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_27 & ~0x80000);
                }
                temp_a0_28 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_R) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_28 | 0x100000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_28 & ~0x100000);
                }
                temp_a0_29 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_Q) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_29 | 0x200000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_29 & ~0x200000);
                }
                temp_a0_30 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_FILL) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_30 | 0x01000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_30 & ~0x01000000);
                }
                temp_a0_31 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE0) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_31 | 1);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_31 & ~1);
                }
                temp_a0_32 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE1) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_32 | 2);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_32 & ~2);
                }
                temp_a0_33 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE2) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_33 | 4);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_33 & ~4);
                }
                temp_a0_34 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE3) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_34 | 8);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_34 & ~8);
                }
                temp_a0_35 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE4) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_35 | 0x10);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_35 & ~0x10);
                }
                temp_a0_36 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE5) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_36 | 0x20);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_36 & ~0x20);
                }
                temp_a0_37 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LIGHTING) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_37 | 0x40);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_37 & ~0x40);
                }
                temp_a0_38 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT0) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_38 | 1);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_38 & ~1);
                }
                temp_a0_39 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT1) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_39 | 2);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_39 & ~2);
                }
                temp_a0_40 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT2) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_40 | 4);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_40 & ~4);
                }
                temp_a0_41 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT3) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_41 | 8);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_41 & ~8);
                }
                temp_a0_42 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT4) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_42 | 0x10);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_42 & ~0x10);
                }
                temp_a0_43 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT5) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_43 | 0x20);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_43 & ~0x20);
                }
                temp_a0_44 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT6) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_44 | 0x40);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_44 & ~0x40);
                }
                temp_a0_45 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT7) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_45 | 0x80);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_45 & ~0x80);
                }
                temp_a0_46 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(0xBEAD) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_46 | 0x80000000);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_46 & 0x7FFFFFFF);
                }
                temp_a0_47 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_HISTOGRAM_EXT) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_47 | 0x10000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_47 & ~0x10000000);
                }
                temp_a0_48 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_MINMAX_EXT) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_48 | 0x20000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_48 & ~0x20000000);
                }
                temp_a0_49 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_CONVOLUTION_1D_EXT) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_49 | 0x02000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_49 & ~0x02000000);
                }
                temp_a0_50 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_CONVOLUTION_2D_EXT) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_50 | 0x04000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_50 & ~0x04000000);
                }
                temp_a0_51 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_SEPARABLE_2D_EXT) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_51 | 0x08000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_51 & ~0x08000000);
                }
                var_s0->unk618 = (s32) temp_s3->unk6B0;
                var_s0->unk61C = (s32) temp_s3->unk6B4;
                temp_a0_52 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_COLOR_MATERIAL) != 0) {
                    var_a3_2 = temp_a0_52 | 0x80;
                } else {
                    var_a3_2 = temp_a0_52 & ~0x80;
                }
                var_s0->unk60C = var_a3_2;
                temp_a0_53 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_LINE) != 0) {
                    var_a4_3 = temp_a0_53 | 0x400;
                } else {
                    var_a4_3 = temp_a0_53 & ~0x400;
                }
                var_s0->unk60C = var_a4_3;
                temp_a0_54 = var_s0->unk60C;
                var_ra = sp120;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_POINT) != 0) {
                    var_at_2 = temp_a0_54 | 0x200;
                } else {
                    var_at_2 = temp_a0_54 & ~0x200;
                }
                var_s0->unk60C = var_at_2;
            }
            var_at_3 = mask & 0x80;
            if (0x10000 & mask) {
                var_s0->unk688 = (s64) temp_s3->unk720;
                var_s0->unk690 = (s64) temp_s3->unk728;
                var_s0->unk698 = (s64) temp_s3->unk730;
                var_s0->unk6A0 = (s64) temp_s3->unk738;
                var_s0->unk6A8 = (s64) temp_s3->unk740;
                var_s0->unk6B0 = (s64) temp_s3->unk748;
                var_at_3 = mask & 0x80;
            }
            if (var_at_3 != 0) {
                sp120 = var_ra;
                temp_a0_55 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_FOG) != 0) {
                    var_v1_2 = temp_a0_55 | 0x20;
                } else {
                    var_v1_2 = temp_a0_55 & ~0x20;
                }
                var_s0->unk608 = var_v1_2;
                __glMgrim_GetFloatv(GL_FOG_INDEX, var_s0 + 0x560);
                __glMgrim_GetFloatv(GL_FOG_DENSITY, var_s0 + 0x550);
                __glMgrim_GetFloatv(GL_FOG_START, var_s0 + 0x554);
                __glMgrim_GetFloatv(GL_FOG_END, var_s0 + 0x558);
                __glMgrim_GetIntegerv(GL_FOG_MODE, var_s0 + 0x53C);
                __glMgrim_GetFloatv(GL_FOG_COLOR, &sp40);
                var_s0->unk540 = sp40;
                var_s0->unk544 = sp44;
                var_ra = sp120;
                var_s0->unk548 = sp48;
            }
            var_a3_3 = mask & 0x40;
            if (mask & 0x8000) {
                var_s0->unk66C = (enum GLenum) temp_s3->unk704;
                var_s0->unk670 = (enum GLenum) temp_s3->unk708;
                var_s0->unk674 = (enum GLenum) temp_s3->unk70C;
                var_s0->unk678 = (enum GLenum) temp_s3->unk710;
                var_s0->unk67C = (enum GLenum) temp_s3->unk714;
                var_s0->unk680 = (enum GLenum) temp_s3->unk718;
                var_s0->unk684 = (s32) temp_s3->unk71C;
                var_a3_3 = mask & 0x40;
            }
            sp120 = var_ra;
            if (var_a3_3 != 0) {
                spC8 = temp_s3->unkD00 * 0x74;
                temp_a0_56 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LIGHTING) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_56 | 0x40);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_56 & ~0x40);
                }
                temp_a0_57 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT0) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_57 | 1);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_57 & ~1);
                }
                temp_a0_58 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT1) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_58 | 2);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_58 & ~2);
                }
                temp_a0_59 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT2) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_59 | 4);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_59 & ~4);
                }
                temp_a0_60 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT3) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_60 | 8);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_60 & ~8);
                }
                temp_a0_61 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT4) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_61 | 0x10);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_61 & ~0x10);
                }
                temp_a0_62 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT5) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_62 | 0x20);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_62 & ~0x20);
                }
                temp_a0_63 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT6) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_63 | 0x40);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_63 & ~0x40);
                }
                temp_a0_64 = (s32) var_s0->unk610;
                if (__glMgrim_IsEnabled(GL_LIGHT7) != 0) {
                    var_s0->unk610 = (s32) (temp_a0_64 | 0x80);
                } else {
                    var_s0->unk610 = (s32) (temp_a0_64 & ~0x80);
                }
                temp_a0_65 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_COLOR_MATERIAL) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_65 | 0x80);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_65 & ~0x80);
                }
                __glMgrim_GetIntegerv(GL_COLOR_MATERIAL_FACE, var_s0 + 0x478);
                __glMgrim_GetIntegerv(GL_COLOR_MATERIAL_PARAMETER, var_s0 + 0x47C);
                __glMgrim_GetIntegerv(GL_SHADE_MODEL, var_s0 + 0x480);
                __glMgrim_GetBooleanv(GL_LIGHT_MODEL_LOCAL_VIEWER, var_s0 + 0x494);
                __glMgrim_GetBooleanv(GL_LIGHT_MODEL_TWO_SIDE, var_s0 + 0x495);
                __glMgrim_GetFloatv(GL_LIGHT_MODEL_AMBIENT, &sp50);
                var_s0->unk484 = sp50;
                var_s0->unk488 = sp54;
                var_s0->unk48C = sp58;
                var_s0->unk490 = sp5C;
                __glMgrim_GetMaterialfv(GL_FRONT, GL_AMBIENT, var_s0 + 0x498);
                __glMgrim_GetMaterialfv(GL_BACK, GL_AMBIENT, var_s0 + 0x4E8);
                __glMgrim_GetMaterialfv(GL_FRONT, GL_DIFFUSE, var_s0 + 0x4A8);
                __glMgrim_GetMaterialfv(GL_BACK, GL_DIFFUSE, var_s0 + 0x4F8);
                __glMgrim_GetMaterialfv(GL_FRONT, GL_SPECULAR, var_s0 + 0x4B8);
                __glMgrim_GetMaterialfv(GL_BACK, GL_SPECULAR, var_s0 + 0x508);
                __glMgrim_GetMaterialfv(GL_FRONT, GL_EMISSION, var_s0 + 0x4C8);
                __glMgrim_GetMaterialfv(GL_BACK, GL_EMISSION, var_s0 + 0x518);
                __glMgrim_GetMaterialfv(GL_FRONT, GL_SHININESS, var_s0 + 0x4D8);
                __glMgrim_GetMaterialfv(GL_BACK, GL_SHININESS, var_s0 + 0x528);
                __glMgrim_GetMaterialfv(GL_FRONT, GL_COLOR_INDEXES, &sp50);
                var_s0->unk4DC = sp50;
                var_s0->unk4E4 = sp54;
                var_s0->unk4E0 = sp58;
                __glMgrim_GetMaterialfv(GL_BACK, GL_COLOR_INDEXES, &sp50);
                var_s0->unk52C = sp50;
                var_s0->unk534 = sp54;
                var_s0->unk530 = sp58;
                temp_v0_3 = temp_s3->imports.malloc(temp_s3, (u32) spC8);
                var_s0->unk538 = temp_v0_3;
                sp160 = (s64) var_s1;
                var_s4 = temp_v0_3;
                spE8 = 0;
                var_ra = sp120;
                if (temp_s3->unkD00 != 0) {
                    var_s7 = var_s4 + 0x68;
                    var_s6 = var_s4 + 0x60;
                    sp118 = (s64) (var_s4 + 0x70);
                    spF0 = (s64) (var_s4 + 0x6C);
                    sp110 = (s64) (var_s4 + 0x64);
                    spF8 = (s64) (var_s4 + 0x20);
                    sp100 = (s64) (var_s4 + 0x50);
                    var_s8 = var_s4 + 0x10;
                    sp108 = (s64) (var_s4 + 0x40);
                    var_s1_2 = GL_LIGHT0;
                    do {
                        __glMgrim_GetLightfv(var_s1_2, GL_AMBIENT, var_s4);
                        __glMgrim_GetLightfv(var_s1_2, GL_DIFFUSE, var_s8);
                        __glMgrim_GetLightfv(var_s1_2, GL_SPECULAR, (f32 *) spF8);
                        __glMgrim_GetLightfv(var_s1_2, GL_POSITION, (f32 *) sp108);
                        __glMgrim_GetLightfv(var_s1_2, GL_SPOT_DIRECTION, (f32 *) sp100);
                        __glMgrim_GetLightfv(var_s1_2, GL_SPOT_EXPONENT, var_s6);
                        __glMgrim_GetLightfv(var_s1_2, GL_SPOT_CUTOFF, (f32 *) sp110);
                        var_s4 += 0x74;
                        __glMgrim_GetLightfv(var_s1_2, GL_CONSTANT_ATTENUATION, var_s7);
                        var_s7 += 0x74;
                        __glMgrim_GetLightfv(var_s1_2, GL_LINEAR_ATTENUATION, (f32 *) spF0);
                        var_s8 += 0x74;
                        __glMgrim_GetLightfv(var_s1_2, GL_QUADRATIC_ATTENUATION, (f32 *) sp118);
                        var_s6 += 0x74;
                        var_s1_2 += 1;
                        sp100 += 0x74;
                        sp108 += 0x74;
                        spF8 += 0x74;
                        sp110 += 0x74;
                        spF0 += 0x74;
                        temp_a4 = spE8 + 1;
                        spE8 = temp_a4;
                        sp118 += 0x74;
                    } while (temp_a4 < (u32) temp_s3->unkD00);
                    var_ra = sp120;
                    var_s1 = (void *) sp160;
                }
            }
            if (mask & 4) {
                sp120 = var_ra;
                temp_a0_66 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LINE_SMOOTH) != 0) {
                    var_at_4 = temp_a0_66 | 0x200;
                } else {
                    var_at_4 = temp_a0_66 & ~0x200;
                }
                var_s0->unk608 = var_at_4;
                temp_a0_67 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_LINE_STIPPLE) != 0) {
                    var_v1_3 = temp_a0_67 | 0x100;
                } else {
                    var_v1_3 = temp_a0_67 & ~0x100;
                }
                var_s0->unk608 = var_v1_3;
                __glMgrim_GetFloatv(GL_LINE_WIDTH, var_s0 + 0x124);
                __glMgrim_GetIntegerv(GL_LINE_STIPPLE_PATTERN, &sp60);
                var_s0->unk130 = (s16) sp60;
                __glMgrim_GetIntegerv(GL_LINE_STIPPLE_REPEAT, &sp60);
                var_ra = sp120;
                var_s0->unk132 = (s16) sp60;
            }
            var_v1_4 = mask & 0x20;
            if (0x20000 & mask) {
                var_s0->unk6B8 = (s32) temp_s3->unk750;
                var_v1_4 = mask & 0x20;
            }
            var_a0 = 0xF;
            if (var_v1_4 != 0) {
                var_v0 = 0;
                temp_a2 = var_s0 + 0x1D0;
                temp_a5 = &temp_s3->unk268;
                do {
                    temp_a4_2 = var_v0 + temp_a2;
                    temp_a3 = var_v0 + temp_a5;
                    var_v0 += 8;
                    var_a0 -= 1;
                    *temp_a4_2 = *temp_a3;
                } while (var_a0 > 0);
                var_a0_2 = 0xC;
                var_a1 = 0;
                *(var_v0 + temp_a2) = *(var_v0 + temp_a5);
                do {
                    temp_v1 = var_a1 + var_s1;
                    temp_at = var_a1 + (temp_s2 - 0x7E24);
                    var_a1 += 4;
                    var_a0_2 -= 1;
                    *temp_v1 = *temp_at;
                } while (var_a0_2 > 0);
                var_v0_2 = 0x14;
                var_a0_3 = 0;
                do {
                    temp_a3_2 = var_a0_3 + (var_s1 + 0x30);
                    temp_v1_2 = var_a0_3 + (temp_s2 - 0x7DF4);
                    var_a0_3 += 4;
                    var_v0_2 -= 1;
                    *temp_a3_2 = *temp_v1_2;
                } while (var_v0_2 > 0);
                var_a0_4 = 8;
                var_v0_3 = 0;
                do {
                    temp_a4_3 = var_v0_3 + (var_s1 + 0x80);
                    temp_a3_3 = var_v0_3 + (temp_s2 - 0x7DA4);
                    var_v0_3 += 4;
                    var_a0_4 -= 1;
                    *temp_a4_3 = *temp_a3_3;
                } while (var_a0_4 > 0);
                var_v0_4 = 0x44;
                var_a0_5 = 0;
                do {
                    temp_at_2 = var_a0_5 + (var_s1 + 0xA0);
                    temp_a4_4 = var_a0_5 + (temp_s2 - 0x7D84);
                    var_a0_5 += 4;
                    var_v0_4 -= 1;
                    *temp_at_2 = *temp_a4_4;
                } while (var_v0_4 > 0);
                var_v0_5 = 0x78;
                var_a0_6 = 0;
                do {
                    temp_v1_3 = var_a0_6 + (var_s1 + 0x1B0);
                    temp_at_3 = var_a0_6 + (temp_s2 - 0x7C74);
                    var_a0_6 += 4;
                    var_v0_5 -= 1;
                    *temp_v1_3 = *temp_at_3;
                } while (var_v0_5 > 0);
                sp120 = var_ra;
                __glMgrim_GetIntegerv(GL_READ_BUFFER, var_s0 + 0x3E8);
            }
            if (mask & 2) {
                sp120 = var_ra;
                temp_a0_68 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POINT_SMOOTH) != 0) {
                    var_a3_4 = temp_a0_68 | 0x400;
                } else {
                    var_a3_4 = temp_a0_68 & ~0x400;
                }
                var_s0->unk608 = var_a3_4;
                __glMgrim_GetFloatv(GL_POINT_SIZE, var_s0 + 0x118);
                var_ra = sp120;
                if (temp_s2->unk-635B == 0) {
                    temp_f4 = var_s0->unk118;
                    temp_f7 = (f64) temp_f4;
                    temp_f6 = temp_s3->unkD7C;
                    temp_f5 = temp_s3->unkD78;
                    if (temp_f7 < 1.0) {
                        var_s0->unk120 = 1;
                    } else {
                        var_s0->unk120 = (s32) (temp_f7 + 0.5);
                    }
                    if (!(temp_f4 <= temp_f5)) {
                        if (!(temp_f6 <= temp_f4)) {
                            var_s0->unk118 = (f32) (((f32) (s32) ((f64) ((temp_f4 - temp_f5) / temp_s3->unkD80) + 0.5) * (second half of f64)) + temp_f5);
                        } else {
                            var_s0->unk118 = temp_f6;
                        }
                    } else {
                        var_s0->unk118 = temp_f5;
                    }
                }
            }
            if (mask & 8) {
                sp120 = var_ra;
                __glMgrim_GetIntegerv(GL_CULL_FACE_MODE, var_s0 + 0x13C);
                __glMgrim_GetIntegerv(GL_FRONT_FACE, var_s0 + 0x140);
                __glMgrim_GetIntegerv(GL_POLYGON_MODE, &sp68);
                var_s0->unk134 = sp68;
                var_s0->unk138 = sp6C;
                temp_a0_69 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_LINE) != 0) {
                    var_s0->unk60C = (s32) (temp_a0_69 | 0x400);
                } else {
                    var_s0->unk60C = (s32) (temp_a0_69 & ~0x400);
                }
                temp_a0_70 = var_s0->unk60C;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_POINT) != 0) {
                    var_s0->unk60C = (s32) (temp_a0_70 | 0x200);
                } else {
                    var_s0->unk60C = (s32) (temp_a0_70 & ~0x200);
                }
                temp_a0_71 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_POLYGON_OFFSET_FILL) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_71 | 0x01000000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_71 & ~0x01000000);
                }
                __glMgrim_GetIntegerv(GL_POLYGON_OFFSET_FACTOR, var_s0 + 0x144);
                __glMgrim_GetIntegerv(GL_POLYGON_OFFSET_BIAS_EXT, var_s0 + 0x148);
                var_ra = sp120;
            }
            var_v0_6 = 0x10;
            if (mask & 0x10) {
                var_a0_7 = 0;
                do {
                    temp_a4_5 = var_a0_7 + (var_s0 + 0x150);
                    temp_a3_4 = var_a0_7 + &temp_s3->unk1E8;
                    var_a0_7 += 8;
                    var_v0_6 -= 1;
                    *temp_a4_5 = *temp_a3_4;
                } while (var_v0_6 > 0);
            }
            if (0x80000 & mask) {
                sp120 = var_ra;
                temp_a0_72 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_SCISSOR_TEST) != 0) {
                    var_at_5 = temp_a0_72 | 0x4000;
                } else {
                    var_at_5 = temp_a0_72 & ~0x4000;
                }
                var_s0->unk608 = var_at_5;
                __glMgrim_GetIntegerv(GL_SCISSOR_BOX, &sp70);
                var_s0->unk8D4 = sp70;
                var_s0->unk8D8 = sp74;
                var_s0->unk8DC = sp78;
                var_ra = sp120;
                var_s0->unk8E0 = sp7C;
            }
            if (mask & 0x400) {
                sp120 = var_ra;
                temp_a0_73 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_STENCIL_TEST) != 0) {
                    var_v1_5 = temp_a0_73 | 0x8000;
                } else {
                    var_v1_5 = temp_a0_73 & ~0x8000;
                }
                var_s0->unk608 = var_v1_5;
                __glMgrim_GetIntegerv(GL_STENCIL_FUNC, var_s0 + 0x588);
                __glMgrim_GetIntegerv(GL_STENCIL_CLEAR_VALUE, &sp80);
                var_s0->unk58C = (s16) sp80;
                __glMgrim_GetIntegerv(GL_STENCIL_REF, &sp80);
                var_s0->unk58E = (s16) sp80;
                __glMgrim_GetIntegerv(GL_STENCIL_VALUE_MASK, &sp80);
                var_s0->unk590 = (s16) sp80;
                __glMgrim_GetIntegerv(GL_STENCIL_WRITEMASK, &sp80);
                var_s0->unk592 = (s16) sp80;
                __glMgrim_GetIntegerv(GL_STENCIL_FAIL, var_s0 + 0x594);
                __glMgrim_GetIntegerv(GL_STENCIL_PASS_DEPTH_FAIL, var_s0 + 0x598);
                __glMgrim_GetIntegerv(GL_STENCIL_PASS_DEPTH_PASS, var_s0 + 0x59C);
                var_ra = sp120;
            }
            var_v0_7 = 0x1F;
            if (0x40000 & mask) {
                var_a0_8 = 0;
                do {
                    temp_a3_5 = var_a0_8 + (var_s0 + 0x6BC);
                    temp_v1_4 = var_a0_8 + &temp_s3->unk754;
                    var_a0_8 += 4;
                    var_v0_7 -= 1;
                    *temp_a3_5 = *temp_v1_4;
                } while (var_v0_7 > 0);
                var_a0_9 = 0xF;
                var_v0_8 = 0;
                temp_a5_2 = var_s0 + 0x738;
                temp_a2_2 = &temp_s3->unk7D0;
                do {
                    temp_a4_6 = var_v0_8 + temp_a5_2;
                    temp_a3_6 = var_v0_8 + temp_a2_2;
                    var_v0_8 += 8;
                    var_a0_9 -= 1;
                    *temp_a4_6 = *temp_a3_6;
                } while (var_a0_9 > 0);
                var_a1_2 = 0x1F;
                var_a0_10 = 0;
                *(var_v0_8 + temp_a5_2) = *(var_v0_8 + temp_a2_2);
                do {
                    temp_v1_5 = var_a0_10 + (var_s0 + 0x7B4);
                    temp_at_4 = var_a0_10 + &temp_s3->unk84C;
                    var_a0_10 += 4;
                    var_a1_2 -= 1;
                    *temp_v1_5 = *temp_at_4;
                } while (var_a1_2 > 0);
                var_a0_11 = 0xF;
                var_v0_9 = 0;
                temp_a1 = var_s0 + 0x830;
                temp_a2_3 = &temp_s3->unk8C8;
                do {
                    temp_a3_7 = var_v0_9 + temp_a1;
                    temp_v1_6 = var_v0_9 + temp_a2_3;
                    var_v0_9 += 8;
                    var_a0_11 -= 1;
                    *temp_a3_7 = *temp_v1_6;
                } while (var_a0_11 > 0);
                *(var_v0_9 + temp_a1) = *(var_v0_9 + temp_a2_3);
                sp120 = var_ra;
                temp_t9 = temp_s3->imports.malloc;
                if (temp_s2->unk-635B != 0) {
                    var_s0->unk8AC = temp_t9(temp_s3, 0x460U);
                    var_s0->unk8B0 = temp_s3->imports.malloc(temp_s3, 0x24U);
                    temp_a0_74 = (s32) var_s0->unk608;
                    if (__glMgrim_IsEnabled(GL_TEXTURE_1D) != 0) {
                        var_at_6 = 0x10000 | temp_a0_74;
                    } else {
                        var_at_6 = temp_a0_74 & ~0x10000;
                    }
                    var_s0->unk608 = var_at_6;
                    temp_a0_75 = (s32) var_s0->unk608;
                    if (__glMgrim_IsEnabled(GL_TEXTURE_2D) != 0) {
                        var_v1_6 = 0x20000 | temp_a0_75;
                    } else {
                        var_v1_6 = temp_a0_75 & ~0x20000;
                    }
                    var_s0->unk608 = var_v1_6;
                    temp_a0_76 = (s32) var_s0->unk608;
                    if (__glMgrim_IsEnabled(GL_TEXTURE_3D_EXT) != 0) {
                        var_a3_5 = temp_a0_76 | 0x40000000;
                    } else {
                        var_a3_5 = temp_a0_76 & ~0x40000000;
                    }
                    var_s0->unk608 = var_a3_5;
                    temp_a0_77 = (s32) var_s0->unk608;
                    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_S) != 0) {
                        var_a4_4 = 0x40000 | temp_a0_77;
                    } else {
                        var_a4_4 = temp_a0_77 & ~0x40000;
                    }
                    var_s0->unk608 = var_a4_4;
                    temp_a0_78 = (s32) var_s0->unk608;
                    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_T) != 0) {
                        var_at_7 = 0x80000 | temp_a0_78;
                    } else {
                        var_at_7 = temp_a0_78 & ~0x80000;
                    }
                    var_s0->unk608 = var_at_7;
                    temp_a0_79 = (s32) var_s0->unk608;
                    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_R) != 0) {
                        var_v1_7 = temp_a0_79 | 0x100000;
                    } else {
                        var_v1_7 = temp_a0_79 & ~0x100000;
                    }
                    var_s0->unk608 = var_v1_7;
                    temp_a0_80 = (s32) var_s0->unk608;
                    if (__glMgrim_IsEnabled(GL_TEXTURE_GEN_Q) != 0) {
                        var_a3_6 = temp_a0_80 | 0x200000;
                    } else {
                        var_a3_6 = temp_a0_80 & ~0x200000;
                    }
                    var_s0->unk608 = var_a3_6;
                    var_s4_2 = 0;
                    var_s2 = sp88;
                    var_s6_2 = sp84;
loop_233:
                    temp_s1 = var_s0->unk8AC + var_s4_2;
                    if (var_s4_2 != 0) {
                        if (var_s4_2 == 0xE0) {
                            var_s6_2 = GL_TEXTURE_BINDING_2D;
                            var_s2 = GL_TEXTURE_2D;
                        } else {
                            switch (var_s4_2) {     /* irregular */
                            case 0x380:
                                var_s6_2 = 0x8096;
                                var_s2 = 0x8095;
                                break;
                            case 0x1C0:
                                var_s6_2 = GL_TEXTURE_3D_BINDING_EXT;
                                var_s2 = GL_TEXTURE_3D_EXT;
                                break;
                            case 0x2A0:
                                var_s6_2 = 0x814F;
                                var_s2 = 0x8134;
                                break;
                            }
                        }
                    } else {
                        var_s6_2 = GL_TEXTURE_BINDING_1D;
                        var_s2 = GL_TEXTURE_1D;
                    }
                    __glMgrim_GetTexParameteriv(var_s2, GL_TEXTURE_WRAP_S, temp_s1);
                    __glMgrim_GetTexParameteriv(var_s2, GL_TEXTURE_WRAP_T, temp_s1 + 4);
                    __glMgrim_GetTexParameteriv(var_s2, GL_TEXTURE_WRAP_R_EXT, temp_s1 + 8);
                    __glMgrim_GetTexParameteriv(var_s2, GL_TEXTURE_MIN_FILTER, temp_s1 + 0xC);
                    __glMgrim_GetTexParameteriv(var_s2, GL_TEXTURE_MAG_FILTER, temp_s1 + 0x10);
                    __glMgrim_GetTexParameterfv(var_s2, GL_TEXTURE_BORDER_COLOR, (f32 *) (temp_s1 + 0x98));
                    __glMgrim_GetTexParameterfv(var_s2, GL_TEXTURE_PRIORITY, (f32 *) (temp_s1 + 0xDC));
                    __glMgrim_GetIntegerv(var_s6_2, temp_s1 + 0xD8);
                    var_s4_2 += 0xE0;
                    if (var_s4_2 != 0x460) {
                        goto loop_233;
                    }
                    temp_s1_2 = var_s0->unk8B0;
                    __glMgrim_GetTexEnviv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, temp_s1_2);
                    __glMgrim_GetTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, (f32 *) (temp_s1_2 + 4));
                } else {
                    temp_s1_3 = temp_s3->unkD0C * 0x24;
                    temp_s2_2 = temp_s3->unkD08 * 0xE0;
                    var_s0->unk8AC = temp_t9(temp_s3, temp_s2_2);
                    var_s0->unk8B0 = temp_s3->imports.malloc(temp_s3, temp_s1_3);
                    var_s0->unk8B4 = (f32) temp_s3->unk94C;
                    var_s0->unk8B8 = (f32) temp_s3->unk950;
                    var_s0->unk8BC = (f32) temp_s3->unk954;
                    var_s0->unk8C0 = (f32) temp_s3->unk958;
                    var_s0->unk8C4 = (f32) temp_s3->unk95C;
                    var_s0->unk8C8 = (f32) temp_s3->unk960;
                    var_s0->unk8CC = (f32) temp_s3->unk964;
                    var_s0->unk8D0 = (f32) temp_s3->unk968;
                    memcpy(var_s0->unk8AC, temp_s3->unk944, temp_s2_2);
                    memcpy(var_s0->unk8B0, temp_s3->unk948, temp_s1_3);
                }
                var_ra = sp120;
            }
            sp120 = var_ra;
            if (mask & 0x1000) {
                temp_s1_4 = temp_s3->unkD04 * 0x10;
                temp_a0_81 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE0) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_81 | 1);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_81 & ~1);
                }
                temp_a0_82 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE1) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_82 | 2);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_82 & ~2);
                }
                temp_a0_83 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE2) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_83 | 4);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_83 & ~4);
                }
                temp_a0_84 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE3) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_84 | 8);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_84 & ~8);
                }
                temp_a0_85 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE4) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_85 | 0x10);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_85 & ~0x10);
                }
                temp_a0_86 = var_s0->unk614;
                if (__glMgrim_IsEnabled(GL_CLIP_PLANE5) != 0) {
                    var_s0->unk614 = (s32) (temp_a0_86 | 0x20);
                } else {
                    var_s0->unk614 = (s32) (temp_a0_86 & ~0x20);
                }
                temp_a0_87 = (s32) var_s0->unk608;
                if (__glMgrim_IsEnabled(GL_NORMALIZE) != 0) {
                    var_s0->unk608 = (s32) (temp_a0_87 | 0x400000);
                } else {
                    var_s0->unk608 = (s32) (temp_a0_87 & ~0x400000);
                }
                __glMgrim_GetIntegerv(GL_MATRIX_MODE, var_s0 + 0x5D8);
                var_s0->unk5DC = temp_s3->imports.malloc(temp_s3, temp_s1_4);
                var_s2_2 = 0;
                var_ra = sp120;
                if (temp_s3->unkD04 > 0) {
                    var_s1_3 = GL_CLIP_PLANE0;
                    var_s4_3 = 0;
                    do {
                        var_s2_2 += 1;
                        __glMgrim_GetClipPlane(var_s1_3, &sp90);
                        *(var_s0->unk5DC + var_s4_3) = (f32) sp90;
                        (var_s0->unk5DC + var_s4_3)->unk4 = (f32) sp98;
                        (var_s0->unk5DC + var_s4_3)->unk8 = (f32) spA0;
                        (var_s0->unk5DC + var_s4_3)->unkC = (f32) spA8;
                        var_s1_3 += 1;
                        var_s4_3 += 0x10;
                    } while (var_s2_2 < temp_s3->unkD04);
                    var_ra = sp120;
                }
            }
            if (mask & 0x800) {
                sp120 = var_ra;
                __glMgrim_GetIntegerv(GL_VIEWPORT, &spB0);
                var_s0->unk5A0 = spB0;
                var_s0->unk5A4 = spB4;
                var_s0->unk5A8 = spB8;
                var_s0->unk5AC = spBC;
                temp_f8 = temp_s3->unkCD0 * (f32) spB8;
                var_s0->unk5C0 = temp_f8;
                var_s0->unk5C4 = (f32) ((f32) spB0 + temp_f8);
                temp_f5_2 = temp_s3->unkCD0 * (f32) spBC;
                var_s0->unk5C8 = temp_f5_2;
                var_s0->unk5CC = (f32) ((f32) spB4 + temp_f5_2);
                __glMgrim_GetFloatv(GL_DEPTH_RANGE, &spC0);
                temp_f1 = (f64) spC0;
                var_s0->unk5B0 = temp_f1;
                temp_f2 = (f64) spC4;
                var_s0->unk5B8 = temp_f2;
                var_s0->unk5D0 = (f32) ((f64) temp_s3->unkCD0 * (temp_f2 - temp_f1));
                var_s0->unk5D4 = (f32) ((f64) temp_s3->unkCD0 * (second half of f64));
            }
            return;
        }
        __glSetError(0x503);
        return;
    }
    __glSetError(0x502);
}

void __glMgrRestoreRasterPosition(__GLcontext *gc, s64 arg1, ...) {
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_11;
    __GLcontext *temp_a0_12;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_8;
    __GLcontext *temp_s2;
    f32 temp_a0_10;
    f32 temp_a0_9;
    s32 temp_a0_2;
    u8 temp_a2;
    void *(*temp_a0_5)(__GLcontext *);
    void *temp_a0_6;
    void *temp_a0_7;

    temp_s2 = __glCurrentContext;
    sp0 = arg1;
    if (__glBeginMode != 1) {
        temp_a0 = gc->exports.unk44;
        __glMgrInitPixelStateERAM(temp_a0, temp_a0, -2);
        temp_a0_2 = gc->gcState;
        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_2, temp_a0_2, -2);
        temp_a0_3 = gc->unk98;
        __glMgrInitPixelStateERAM(temp_a0_3, temp_a0_3, -2);
        temp_a0_4 = gc->unk9C;
        __glMgrInitPixelStateERAM(temp_a0_4, temp_a0_4, -2);
        temp_a0_5 = gc->imports.getDrawablePrivate;
        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_5, temp_a0_5, -2);
        temp_a0_6 = gc->imports.wscx;
        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_6, temp_a0_6, -2);
        temp_a0_7 = gc->imports.other;
        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_7, temp_a0_7, -2);
        temp_a0_8 = gc->imports.unk3C;
        __glMgrInitPixelStateERAM(temp_a0_8, temp_a0_8, -2);
        temp_a2 = temp_s2->unk9CA5;
        if (temp_a2 == 0) {
            temp_s2->unk108 = (bitwise f32) gc->imports.getDrawablePrivate;
            temp_s2->unk10C = (bitwise f32) gc->imports.wscx;
            temp_s2->unk110 = gc->imports.other;
            temp_s2->unk114 = gc->imports.unk3C;
        }
        gc->exports.unk38 = (f32) (second half of f64);
        gc->exports.unk34 = (f32) ((f64) gc->exports.unk34 + -0.5);
        temp_a0_9 = gc->exports.unk34;
        __glMgrInitPixelStateERAM((bitwise __GLcontext *) temp_a0_9, temp_a0_9, -2, temp_a2);
        temp_a0_10 = gc->exports.unk38;
        __glMgrInitPixelStateERAM((bitwise __GLcontext *) temp_a0_10, temp_a0_10, -2);
        temp_a0_11 = gc->exports.unk3C;
        __glMgrInitPixelStateERAM(temp_a0_11, temp_a0_11, -2);
        __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk208, SYMBOL_LOCATION.unk208, -1);
        temp_a0_12 = gc->exports.unk40;
        __glMgrInitPixelStateERAM(temp_a0_12, temp_a0_12, -2);
        __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk234, SYMBOL_LOCATION.unk234, -1);
        if (sp0 != 0) {
            __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk240, SYMBOL_LOCATION.unk240, -2);
        } else {
            __glMgrInitPixelStateERAM(NULL, 0, -2);
        }
        __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk238, SYMBOL_LOCATION.unk238, -1);
        __glMgrUpdateRasterPos(M2C_ERROR(/* Read from unset register $a0 */), 0, 0);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_SoftPopAttrib(__GLcontext *gc, ...) {
    s64 sp18;
    s64 sp10;
    ? *temp_a2;
    ? *temp_a2_2;
    ? *temp_a2_4;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s3;
    f64 temp_a2_9;
    f64 temp_a3_13;
    s32 *temp_a3_2;
    s32 *temp_a3_8;
    s32 *temp_a3_9;
    s32 *temp_a4_2;
    s32 *temp_a4_6;
    s32 *temp_a4_7;
    s32 *temp_a5;
    s32 *temp_a5_4;
    s32 *temp_a6;
    s32 *temp_a7;
    s32 *temp_at;
    s32 *temp_at_5;
    s32 *temp_v1_7;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a3;
    s32 temp_a3_12;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_7;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a5_2;
    s32 temp_at_8;
    s32 temp_at_9;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_13;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_8;
    s32 temp_v1_3;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_12;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_at;
    s32 var_s0;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s64 *temp_a3_10;
    s64 *temp_a3_5;
    s64 *temp_at_2;
    s64 *temp_at_3;
    s64 *temp_at_4;
    s64 *temp_at_6;
    s64 *temp_at_7;
    s64 *temp_v0;
    s64 *temp_v0_12;
    s64 *temp_v0_3;
    s64 *temp_v0_6;
    s64 *temp_v0_7;
    s64 *temp_v0_9;
    s64 *temp_v1;
    s64 *temp_v1_2;
    s64 *temp_v1_4;
    s64 temp_a1_2;
    s64 temp_a1_4;
    s64 temp_a2_3;
    s64 temp_a3_11;
    s64 temp_a3_6;
    s64 temp_a4_8;
    s64 temp_a5_5;
    s64 var_ra;
    u32 temp_a0;
    void *temp_a4;
    void *temp_a5_3;
    void *temp_s4;
    void *var_a2;
    void *var_s1;
    void *var_s2;

    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a0 = temp_s3->unk31BC;
        temp_a3 = (u32) temp_s3->unk31B8 < temp_a0;
        if (temp_a3 != 0) {
            temp_s4 = temp_a0->unk-4;
            temp_s6 = temp_s4->unk0;
            temp_s3->unk31BC = temp_a0 - 4;
            temp_s3->unk9270 = (s32) (temp_s3->unk9270 - 4);
            if (temp_s6 & 0x200) {
                temp_s3->unk610 = temp_s4->unk578;
                temp_s3->unk614 = temp_s4->unk57C;
                temp_s3->unk618 = temp_s4->unk580;
                temp_s3->unk61C = temp_s4->unk584;
            }
            var_a1 = 9;
            if (temp_s6 & 0x4000) {
                var_a0 = 0;
                temp_a2 = &temp_s3->unk6B8;
                temp_a4 = temp_s4 + 0x620;
                do {
                    temp_v1 = var_a0 + temp_a2;
                    temp_v0 = var_a0 + temp_a4;
                    var_a0 += 8;
                    var_a1 -= 1;
                    *temp_v1 = *temp_v0;
                } while (var_a1 > 0);
                *(var_a0 + temp_a2) = *(var_a0 + temp_a4);
                temp_v0_2 = temp_s3->unk6A0 & ~0xF;
                temp_s3->unk6A0 = temp_v0_2;
                temp_s3->procs.table[0x15] = (void *) ((s32) temp_s3->procs.table[0x15] | 1);
                temp_s3->unk6A0 = (temp_s4->unk608 & 0xF) | temp_v0_2;
                if (temp_s4->unk608 & 1) {
                    __glMgrim_Enable(GL_ALPHA_TEST);
                } else {
                    __glMgrim_Disable(GL_ALPHA_TEST);
                }
                __glMgrim_AlphaFunc(temp_s4->unk620, temp_s4->unk624);
                if (temp_s4->unk608 & 2) {
                    __glMgrim_Enable(GL_BLEND);
                } else {
                    __glMgrim_Disable(GL_BLEND);
                }
                __glMgrim_BlendFunc(temp_s4->unk628, temp_s4->unk62C);
                __glMgrim_BlendEquationEXT(temp_s4->unk630);
                if (temp_s4->unk608 & 8) {
                    __glMgrim_Enable(GL_DITHER);
                } else {
                    __glMgrim_Disable(GL_DITHER);
                }
                __glMgrim_DrawBuffer(temp_s4->unk668);
                if (temp_s4->unk608 & 4) {
                    __glMgrim_Enable(GL_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_LOGIC_OP);
                }
                if (temp_s4->unk60C & 0x800) {
                    __glMgrim_Enable(GL_COLOR_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_COLOR_LOGIC_OP);
                }
                __glMgrim_LogicOp(temp_s4->unk644);
                temp_s3->unk1F40(temp_s4->unk660, temp_s4->unk661, temp_s4->unk662, temp_s4->unk663);
                temp_s3->unk1F48(temp_s4->unk65C);
                __glMgrim_ClearIndex(temp_s4->unk658);
                __glMgrim_ClearColor(temp_s4->unk648, temp_s4->unk64C, temp_s4->unk650, temp_s4->unk654);
                var_ra = sp10;
            }
            var_a1_2 = 0x22;
            if (temp_s6 & 1) {
                var_a0_2 = 0;
                temp_a2_2 = &temp_s3->unkA0;
                do {
                    temp_v1_2 = var_a0_2 + temp_a2_2;
                    temp_v0_3 = var_a0_2 + (temp_s4 + 8);
                    var_a0_2 += 8;
                    var_a1_2 -= 1;
                    *temp_v1_2 = *temp_v0_3;
                } while (var_a1_2 > 0);
                sp10 = var_ra;
                temp_a0_2 = temp_s4 + 0x40;
                __glMgrRestoreRasterPosition(temp_a0_2, temp_a0_2, temp_s4->unk114, temp_a2_2);
            }
            if (temp_s6 & 0x100) {
                temp_s3->unk600 = temp_s4->unk568;
                temp_v1_3 = temp_s3->unk6A0 & ~0x10;
                temp_s3->unk6A0 = temp_v1_3;
                temp_s3->unk608 = temp_s4->unk570;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x10) | temp_v1_3;
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 0x80);
                sp10 = var_ra;
                if (temp_s4->unk608 & 0x10) {
                    __glMgrim_Enable(GL_DEPTH_TEST);
                } else {
                    __glMgrim_Disable(GL_DEPTH_TEST);
                }
                __glMgrim_DepthFunc((enum GLenum) temp_s4->unk568);
                __glMgrim_DepthMask(temp_s4->unk56C);
                __glMgrim_ClearDepth(temp_s4->unk570);
                var_ra = sp10;
            }
            if (temp_s6 & 0x2000) {
                temp_a1 = temp_s3->unk6A0;
                if (~temp_s4->unk608 & temp_a1 & 0x4000) {
                    sp10 = var_ra;
                    __glReadjustZCounts(temp_s3, temp_a1);
                }
                if (~temp_s3->unk6A0 & temp_s4->unk608 & 0x4000) {
                    sp10 = var_ra;
                    temp_s3->unk7A84 = temp_s3->unk7A80;
                }
                temp_a2_3 = (s64) temp_s4->unk608;
                temp_s3->unk6A0 = temp_a2_3;
                temp_a1_2 = temp_s4->unk610;
                temp_s3->unk6A8 = temp_a1_2;
                temp_s3->unk6B0 = (s64) temp_s4->unk618;
                __glBeginMode = 2;
                sp10 = var_ra;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 0xBE);
                ((? (*)(__GLcontext *, s64, s64)) temp_s3->procs.table[0x1F])(temp_s3, temp_a1_2, temp_a2_3);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x53])(temp_s3);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x3E])(temp_s3);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x3C])(temp_s3);
                if (temp_s4->unk608 & 1) {
                    __glMgrim_Enable(GL_ALPHA_TEST);
                } else {
                    __glMgrim_Disable(GL_ALPHA_TEST);
                }
                if (temp_s4->unk608 & 2) {
                    __glMgrim_Enable(GL_BLEND);
                } else {
                    __glMgrim_Disable(GL_BLEND);
                }
                if (temp_s4->unk608 & 0x10) {
                    __glMgrim_Enable(GL_DEPTH_TEST);
                } else {
                    __glMgrim_Disable(GL_DEPTH_TEST);
                }
                if (temp_s4->unk608 & 8) {
                    __glMgrim_Enable(GL_DITHER);
                } else {
                    __glMgrim_Disable(GL_DITHER);
                }
                if (temp_s4->unk608 & 0x200) {
                    __glMgrim_Enable(GL_LINE_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_LINE_SMOOTH);
                }
                if (temp_s4->unk608 & 4) {
                    __glMgrim_Enable(GL_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_LOGIC_OP);
                }
                if (temp_s4->unk608 & 0x01000000) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_FILL);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_FILL);
                }
                if (temp_s4->unk60C & 0x800) {
                    __glMgrim_Enable(GL_COLOR_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_COLOR_LOGIC_OP);
                }
                if (temp_s4->unk60C & 0x400) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_LINE);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_LINE);
                }
                if (temp_s4->unk60C & 0x200) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_POINT);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_POINT);
                }
                if (temp_s4->unk608 & 0x4000) {
                    __glMgrim_Enable(GL_SCISSOR_TEST);
                } else {
                    __glMgrim_Disable(GL_SCISSOR_TEST);
                }
                if (temp_s4->unk608 & 0x8000) {
                    __glMgrim_Enable(GL_STENCIL_TEST);
                } else {
                    __glMgrim_Disable(GL_STENCIL_TEST);
                }
                if (temp_s4->unk608 & 0x10000000) {
                    __glMgrim_Enable(GL_HISTOGRAM_EXT);
                } else {
                    __glMgrim_Disable(GL_HISTOGRAM_EXT);
                }
                if (temp_s4->unk608 & 0x20000000) {
                    __glMgrim_Enable(GL_MINMAX_EXT);
                } else {
                    __glMgrim_Disable(GL_MINMAX_EXT);
                }
                if (temp_s4->unk608 & 0x02000000) {
                    __glMgrim_Enable(GL_CONVOLUTION_1D_EXT);
                } else {
                    __glMgrim_Disable(GL_CONVOLUTION_1D_EXT);
                }
                if (temp_s4->unk608 & 0x04000000) {
                    __glMgrim_Enable(GL_CONVOLUTION_2D_EXT);
                } else {
                    __glMgrim_Disable(GL_CONVOLUTION_2D_EXT);
                }
                if (temp_s4->unk608 & 0x08000000) {
                    __glMgrim_Enable(GL_SEPARABLE_2D_EXT);
                } else {
                    __glMgrim_Disable(GL_SEPARABLE_2D_EXT);
                }
                if ((s32) temp_s4->unk618 & 1) {
                    __glMgrim_Enable(GL_MAP1_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_COLOR_4);
                }
                if ((s32) temp_s4->unk618 & 2) {
                    __glMgrim_Enable(GL_MAP1_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP1_INDEX);
                }
                if ((s32) temp_s4->unk618 & 4) {
                    __glMgrim_Enable(GL_MAP1_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP1_NORMAL);
                }
                if ((s32) temp_s4->unk618 & 8) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_1);
                }
                if ((s32) temp_s4->unk618 & 0x10) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_2);
                }
                if ((s32) temp_s4->unk618 & 0x20) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_3);
                }
                if ((s32) temp_s4->unk618 & 0x40) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_4);
                }
                if ((s32) temp_s4->unk618 & 0x80) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_3);
                }
                if ((s32) temp_s4->unk618 & 0x100) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_4);
                }
                if (temp_s4->unk61C & 1) {
                    __glMgrim_Enable(GL_MAP2_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_COLOR_4);
                }
                if (temp_s4->unk61C & 2) {
                    __glMgrim_Enable(GL_MAP2_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP2_INDEX);
                }
                if (temp_s4->unk61C & 4) {
                    __glMgrim_Enable(GL_MAP2_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP2_NORMAL);
                }
                if (temp_s4->unk61C & 8) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_1);
                }
                if (temp_s4->unk61C & 0x10) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_2);
                }
                if (temp_s4->unk61C & 0x20) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_3);
                }
                if (temp_s4->unk61C & 0x40) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_4);
                }
                if (temp_s4->unk61C & 0x80) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_3);
                }
                if (temp_s4->unk61C & 0x100) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_4);
                }
                var_ra = sp10;
            }
            var_v1 = temp_s6 & 0x80;
            if (0x10000 & temp_s6) {
                temp_s3->unk720 = temp_s4->unk688;
                temp_s3->unk728 = temp_s4->unk690;
                temp_s3->unk730 = temp_s4->unk698;
                temp_s3->unk738 = temp_s4->unk6A0;
                temp_s3->unk740 = temp_s4->unk6A8;
                temp_v0_4 = temp_s3->unk6A0 & ~0x800000;
                temp_s3->unk6A0 = temp_v0_4;
                temp_s3->unk748 = temp_s4->unk6B0;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x800000) | temp_v0_4;
                temp_s3->unk6B0 = (s32) temp_s4->unk618;
                temp_s3->unk6B4 = temp_s4->unk61C;
                sp10 = var_ra;
                if ((s32) temp_s4->unk618 & 1) {
                    __glMgrim_Enable(GL_MAP1_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_COLOR_4);
                }
                if ((s32) temp_s4->unk618 & 2) {
                    __glMgrim_Enable(GL_MAP1_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP1_INDEX);
                }
                if ((s32) temp_s4->unk618 & 4) {
                    __glMgrim_Enable(GL_MAP1_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP1_NORMAL);
                }
                if ((s32) temp_s4->unk618 & 8) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_1);
                }
                if ((s32) temp_s4->unk618 & 0x10) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_2);
                }
                if ((s32) temp_s4->unk618 & 0x20) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_3);
                }
                if ((s32) temp_s4->unk618 & 0x40) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_4);
                }
                if ((s32) temp_s4->unk618 & 0x80) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_3);
                }
                if ((s32) temp_s4->unk618 & 0x100) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_4);
                }
                if (temp_s4->unk61C & 1) {
                    __glMgrim_Enable(GL_MAP2_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_COLOR_4);
                }
                if (temp_s4->unk61C & 2) {
                    __glMgrim_Enable(GL_MAP2_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP2_INDEX);
                }
                if (temp_s4->unk61C & 4) {
                    __glMgrim_Enable(GL_MAP2_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP2_NORMAL);
                }
                if (temp_s4->unk61C & 8) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_1);
                }
                if (temp_s4->unk61C & 0x10) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_2);
                }
                if (temp_s4->unk61C & 0x20) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_3);
                }
                if (temp_s4->unk61C & 0x40) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_4);
                }
                if (temp_s4->unk61C & 0x80) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_3);
                }
                if (temp_s4->unk61C & 0x100) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_4);
                }
                __glMgrUpdateEvalAttributes(temp_s3, temp_s3);
                var_ra = sp10;
                var_v1 = temp_s6 & 0x80;
            }
            var_a1_3 = 0xA;
            if (var_v1 != 0) {
                var_a0_3 = 0;
                do {
                    temp_at = var_a0_3 + &temp_s3->unk5D4;
                    temp_a3_2 = var_a0_3 + (temp_s4 + 0x53C);
                    var_a0_3 += 4;
                    var_a1_3 -= 1;
                    *temp_at = *temp_a3_2;
                } while (var_a1_3 > 0);
                temp_v0_5 = temp_s3->unk6A0 & ~0x20;
                temp_s3->unk6A0 = temp_v0_5;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x20) | temp_v0_5;
            }
            var_a3 = temp_s6 & 0x40;
            if (temp_s6 & 0x8000) {
                temp_s3->unk704 = temp_s4->unk66C;
                temp_s3->unk708 = temp_s4->unk670;
                temp_s3->unk70C = temp_s4->unk674;
                temp_s3->unk710 = temp_s4->unk678;
                temp_s3->unk714 = temp_s4->unk67C;
                temp_s3->unk718 = temp_s4->unk680;
                temp_s3->unk71C = temp_s4->unk684;
                var_a3 = temp_s6 & 0x40;
            }
            var_a3_2 = temp_s6 & 4;
            if (var_a3 != 0) {
                temp_s3->unk510 = temp_s4->unk478;
                temp_s3->unk514 = temp_s4->unk47C;
                temp_s3->unk518 = temp_s4->unk480;
                temp_s3->unk51C = temp_s4->unk484;
                temp_s3->unk520 = temp_s4->unk488;
                temp_s3->unk524 = temp_s4->unk48C;
                var_a1_4 = 0xA;
                temp_s3->unk528 = temp_s4->unk490;
                var_a0_4 = 0;
                temp_s3->unk52C = temp_s4->unk494;
                do {
                    temp_v0_6 = var_a0_4 + &temp_s3->unk530;
                    temp_at_2 = var_a0_4 + (temp_s4 + 0x498);
                    var_a0_4 += 8;
                    var_a1_4 -= 1;
                    *temp_v0_6 = *temp_at_2;
                } while (var_a1_4 > 0);
                var_a1_5 = 0xA;
                var_a0_5 = 0;
                do {
                    temp_v1_4 = var_a0_5 + &temp_s3->unk580;
                    temp_v0_7 = var_a0_5 + (temp_s4 + 0x4E8);
                    var_a0_5 += 8;
                    var_a1_5 -= 1;
                    *temp_v1_4 = *temp_v0_7;
                } while (var_a1_5 > 0);
                sp10 = var_ra;
                memcpy(temp_s3->unk5D0, temp_s4->unk538, temp_s3->unkD00 * 0x74);
                temp_s3->imports.free(temp_s3, temp_s4->unk538);
                temp_s4->unk538 = NULL;
                temp_v0_8 = temp_s3->unk6A0 & ~0xC0;
                temp_s3->unk6A0 = temp_v0_8;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0xC0) | temp_v0_8;
                temp_s3->unk6A8 = (s32) temp_s4->unk610;
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 0x20);
                var_a3_2 = temp_s6 & 4;
            }
            if (var_a3_2 != 0) {
                temp_s3->unk1BC = temp_s4->unk124;
                temp_s3->unk1C0 = temp_s4->unk128;
                temp_s3->unk1C4 = temp_s4->unk12C;
                temp_s3->unk1C8 = temp_s4->unk130;
                temp_a3_3 = temp_s3->unk6A0 & ~0x300;
                temp_s3->unk6A0 = temp_a3_3;
                temp_s3->unk1CA = temp_s4->unk132;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x300) | temp_a3_3;
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 2);
                sp10 = var_ra;
                if (temp_s4->unk608 & 0x200) {
                    __glMgrim_Enable(GL_LINE_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_LINE_SMOOTH);
                }
                if (temp_s4->unk608 & 0x100) {
                    __glMgrim_Enable(GL_LINE_STIPPLE);
                } else {
                    __glMgrim_Disable(GL_LINE_STIPPLE);
                }
                __glMgrim_LineWidth(temp_s4->unk124);
                __glMgrim_LineStipple((s32) temp_s4->unk132, temp_s4->unk130);
                var_ra = sp10;
            }
            var_a3_3 = temp_s6 & 0x20;
            if (0x20000 & temp_s6) {
                temp_s3->unk750 = temp_s4->unk6B8;
                var_a3_3 = temp_s6 & 0x20;
            }
            var_a0_6 = 0xF;
            if (var_a3_3 != 0) {
                var_a2 = NULL;
                temp_a4_2 = &temp_s3->unk268;
                temp_a5 = temp_s4 + 0x1D0;
                do {
                    temp_v0_9 = var_a2 + temp_a4_2;
                    temp_at_3 = var_a2 + temp_a5;
                    var_a2 += 8;
                    var_a0_6 -= 1;
                    *temp_v0_9 = *temp_at_3;
                } while (var_a0_6 > 0);
                *(var_a2 + temp_a4_2) = *(var_a2 + temp_a5);
                sp10 = var_ra;
                temp_s3->unk480 = temp_s4->unk3E8;
                temp_s3->unk47C = temp_s4->unk3E4;
                __glCopyColorTableScaleBias(temp_s4 + 0x8E4, &temp_s3->unk1358, var_a2, var_a3_3, temp_a4_2, temp_a5);
                temp_a4_3 = temp_s3->unk6A0 & ~0x0E000000;
                temp_s3->unk6A0 = temp_a4_3;
                temp_a3_4 = ((temp_s4->unk608 & 0x0E000000) | temp_a4_3) & ~0x30000000;
                temp_s3->unk6A0 = temp_a3_4;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x30000000) | temp_a3_4;
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 0x10);
                __glMgrim_ReadBuffer(temp_s4->unk3E8);
            }
            var_a3_4 = temp_s6 & 8;
            if (temp_s6 & 2) {
                temp_s3->unk1B0 = temp_s4->unk118;
                temp_s3->unk1B4 = temp_s4->unk11C;
                temp_a0_3 = temp_s3->unk6A0 & ~0x400;
                temp_s3->unk6A0 = temp_a0_3;
                temp_s3->unk1B8 = temp_s4->unk120;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x400) | temp_a0_3;
                __glBeginMode = 2;
                sp10 = var_ra;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 8);
                __glMgrim_PointSize(temp_s4->unk118);
                var_a3_4 = temp_s6 & 8;
            }
            var_v1_2 = temp_s6 & 0x10;
            if (var_a3_4 != 0) {
                temp_s3->unk1CC = temp_s4->unk134;
                temp_s3->unk1D0 = temp_s4->unk138;
                temp_s3->unk1D4 = temp_s4->unk13C;
                temp_s3->unk1D8 = temp_s4->unk140;
                temp_s3->unk1DC = temp_s4->unk144;
                temp_s3->unk1E0 = temp_s4->unk148;
                temp_s3->unk1E4 = temp_s4->unk14C;
                temp_v0_10 = temp_s3->unk6A0 & (M2C_ERROR(/* Read from unset register $t9 */) + 0x15C350)->unk-39D0;
                temp_s3->unk6A0 = temp_v0_10;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x01003800) | temp_v0_10;
                temp_v1_5 = temp_s3->unk6A4 & ~0x600;
                temp_s3->unk6A4 = temp_v1_5;
                temp_s3->unk6A4 = (temp_s4->unk60C & 0x600) | temp_v1_5;
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 4);
                var_v1_2 = temp_s6 & 0x10;
            }
            var_a1_6 = 0x10;
            if (var_v1_2 != 0) {
                var_a0_7 = 0;
                temp_a2_4 = &temp_s3->unk1E8;
                do {
                    temp_at_4 = var_a0_7 + temp_a2_4;
                    temp_a3_5 = var_a0_7 + (temp_s4 + 0x150);
                    var_a0_7 += 8;
                    temp_a3_6 = *temp_a3_5;
                    var_a1_6 -= 1;
                    *temp_at_4 = temp_a3_6;
                } while (var_a1_6 > 0);
                temp_a5_2 = temp_s3->unk6A0 & ~0x2000;
                temp_s3->unk6A0 = temp_a5_2;
                sp10 = var_ra;
                temp_a4_4 = (temp_s4->unk608 & 0x2000) | temp_a5_2;
                temp_s3->unk6A0 = temp_a4_4;
                temp_s3->unk31AC(temp_s3, var_a1_6, temp_a2_4, temp_a3_6, temp_a4_4, temp_a5_2, -0x2001);
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 4);
            }
            var_v0 = temp_s6 & 0x400;
            if (temp_s6 & 0x80000) {
                temp_a1_3 = temp_s3->unk6A0;
                if (((temp_a1_3 & 0x4000) && ((temp_s4->unk8D4 != temp_s3->unk96C) || (temp_s4->unk8D8 != temp_s3->unk970) || (temp_s4->unk8DC != temp_s3->unk974) || (temp_s4->unk8E0 != temp_s3->unk978))) || (~temp_s4->unk608 & temp_a1_3 & 0x4000)) {
                    sp10 = var_ra;
                    __glReadjustZCounts(temp_s3, temp_a1_3);
                }
                if (~temp_s3->unk6A0 & temp_s4->unk608 & 0x4000) {
                    sp10 = var_ra;
                    temp_s3->unk7A84 = temp_s3->unk7A80;
                }
                temp_a4_5 = temp_s4->unk8D4;
                temp_s3->unk96C = temp_a4_5;
                temp_a3_7 = temp_s4->unk8D8;
                temp_s3->unk970 = temp_a3_7;
                temp_a2_5 = temp_s4->unk8DC;
                temp_s3->unk974 = temp_a2_5;
                temp_v1_6 = temp_s3->unk6A0 & ~0x4000;
                temp_s3->unk6A0 = temp_v1_6;
                temp_s3->unk978 = temp_s4->unk8E0;
                sp10 = var_ra;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x4000) | temp_v1_6;
                ((? (*)(__GLcontext *, s32, s32, s32, s32)) temp_s3->procs.table[0x3E])(temp_s3, temp_s3->unk6A0, temp_a2_5, temp_a3_7, temp_a4_5);
                ((? (*)(__GLcontext *)) temp_s3->procs.table[0x3C])(temp_s3);
                if (temp_s4->unk608 & 0x4000) {
                    __glMgrim_Enable(GL_SCISSOR_TEST);
                } else {
                    __glMgrim_Disable(GL_SCISSOR_TEST);
                }
                __glMgrim_Scissor(temp_s4->unk8D4, temp_s4->unk8D8, temp_s4->unk8DC, temp_s4->unk8E0);
                var_ra = sp10;
                var_v0 = temp_s6 & 0x400;
            }
            if (var_v0 != 0) {
                temp_s3->unk620 = temp_s4->unk588;
                temp_s3->unk628 = temp_s4->unk590;
                temp_v0_11 = temp_s3->unk6A0 & ~0x8000;
                temp_s3->unk6A0 = temp_v0_11;
                temp_s3->unk630 = temp_s4->unk598;
                temp_s3->procs.table[0x15] = (void *) ((s32) temp_s3->procs.table[0x15] | 6);
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x8000) | temp_v0_11;
                sp10 = var_ra;
                if (temp_s4->unk608 & 0x8000) {
                    __glMgrim_Enable(GL_STENCIL_TEST);
                } else {
                    __glMgrim_Disable(GL_STENCIL_TEST);
                }
                __glMgrim_StencilMask((u32) temp_s4->unk592);
                __glMgrim_StencilFunc((enum GLenum) temp_s4->unk588, (s32) temp_s4->unk58E, (u32) (s16) temp_s4->unk590);
                __glMgrim_StencilOp(temp_s4->unk594, (enum GLenum) temp_s4->unk598, temp_s4->unk59C);
                __glMgrim_ClearStencil((s32) temp_s4->unk58C);
                var_ra = sp10;
            }
            var_a0_8 = 0x1F;
            if (temp_s6 & 0x40000) {
                var_a1_7 = 0;
                temp_s5 = temp_s3->unkD08;
                do {
                    temp_at_5 = var_a1_7 + &temp_s3->unk754;
                    temp_a3_8 = var_a1_7 + (temp_s4 + 0x6BC);
                    var_a1_7 += 4;
                    var_a0_8 -= 1;
                    *temp_at_5 = *temp_a3_8;
                } while (var_a0_8 > 0);
                var_a1_8 = 0xF;
                var_a0_9 = 0;
                temp_a4_6 = &temp_s3->unk7D0;
                temp_a5_3 = temp_s4 + 0x738;
                do {
                    temp_v0_12 = var_a0_9 + temp_a4_6;
                    temp_at_6 = var_a0_9 + temp_a5_3;
                    var_a0_9 += 8;
                    var_a1_8 -= 1;
                    *temp_v0_12 = *temp_at_6;
                } while (var_a1_8 > 0);
                var_a2_2 = 0x1F;
                var_a1_9 = 0;
                temp_a7 = &temp_s3->unk84C;
                temp_a6 = temp_s4 + 0x7B4;
                *(var_a0_9 + temp_a4_6) = *(var_a0_9 + temp_a5_3);
                do {
                    temp_a3_9 = var_a1_9 + temp_a7;
                    temp_v1_7 = var_a1_9 + temp_a6;
                    var_a1_9 += 4;
                    var_a2_2 -= 1;
                    *temp_a3_9 = *temp_v1_7;
                } while (var_a2_2 > 0);
                var_a0_10 = 0xF;
                var_a2_3 = 0;
                temp_a5_4 = &temp_s3->unk8C8;
                temp_a4_7 = temp_s4 + 0x830;
                do {
                    temp_at_7 = var_a2_3 + temp_a5_4;
                    temp_a3_10 = var_a2_3 + temp_a4_7;
                    var_a2_3 += 8;
                    temp_a3_11 = *temp_a3_10;
                    var_a0_10 -= 1;
                    *temp_at_7 = temp_a3_11;
                } while (var_a0_10 > 0);
                *(var_a2_3 + temp_a5_4) = *(var_a2_3 + temp_a4_7);
                temp_s3->unk94C = temp_s4->unk8B4;
                temp_s3->unk950 = temp_s4->unk8B8;
                temp_s3->unk954 = temp_s4->unk8BC;
                temp_s3->unk958 = temp_s4->unk8C0;
                temp_s3->unk95C = temp_s4->unk8C4;
                temp_s3->unk960 = temp_s4->unk8C8;
                temp_s3->unk964 = temp_s4->unk8CC;
                sp10 = var_ra;
                temp_s3->unk968 = temp_s4->unk8D0;
                var_s0 = 0;
                var_s1 = temp_s3->unk944;
                var_s2 = temp_s4->unk8AC;
                if (temp_s5 != 0) {
                    var_a0_11 = temp_s5;
                    if (temp_s5 & 1) {
                        temp_a2_6 = var_s2->unkD8;
                        if (var_s1->unkD8 != temp_a2_6) {
                            sp18 = (s64) var_a0_11;
                            sp10 = var_ra;
                            __glBindTexture(temp_s3, 0, temp_a2_6, temp_a3_11, temp_a4_7, temp_a5_4, temp_a6, temp_a7);
                            var_a0_11 = (s32) sp18;
                        }
                        var_s2 += 0xE0;
                        var_s1 += 0xE0;
                        var_s0 = 1;
                    }
                    sp10 = var_ra;
                    if ((var_a0_11 >> 1) != 0) {
loop_237:
                        temp_a2_7 = var_s2->unkD8;
                        temp_a3_12 = var_s1->unkD8;
                        if (temp_a3_12 != temp_a2_7) {
                            __glBindTexture(temp_s3, var_s0, temp_a2_7, (s64) temp_a3_12);
                        }
                        temp_a2_8 = var_s2->unk1B8;
                        temp_at_8 = var_s1->unk1B8;
                        var_s2 += 0x1C0;
                        var_s1 += 0x1C0;
                        temp_s0 = var_s0 + 1;
                        if (temp_at_8 != temp_a2_8) {
                            M2C_ERROR(/* Read from unset register $t9 */)(temp_s3, temp_s0, temp_a2_8);
                        }
                        var_s0 = temp_s0 + 1;
                        if (temp_s5 != var_s0) {
                            goto loop_237;
                        }
                    }
                }
                memcpy(temp_s3->unk944, temp_s4->unk8AC, temp_s5 * 0xE0);
                memcpy(temp_s3->unk948, temp_s4->unk8B0, temp_s3->unkD0C * 0x24);
                temp_s3->imports.free(temp_s3, temp_s4->unk8AC);
                temp_s4->unk8AC = NULL;
                temp_s3->imports.free(temp_s3, temp_s4->unk8B0);
                temp_s4->unk8B0 = NULL;
                temp_at_9 = temp_s3->unk6A0 & 0x3FC0FFFF;
                temp_s3->unk6A0 = temp_at_9;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0xC03F0000) | temp_at_9;
                var_ra = sp10;
            }
            var_v0_2 = temp_s6 & 0x800;
            if (temp_s6 & 0x1000) {
                sp10 = var_ra;
                temp_s3->unk670 = temp_s4->unk5D8;
                memcpy(temp_s3->unk674, temp_s4->unk5DC, temp_s3->unkD04 * 0x10);
                temp_s3->imports.free(temp_s3, temp_s4->unk5DC);
                temp_s4->unk5DC = NULL;
                temp_ra = temp_s3->unk6A0 & ~0x400000;
                temp_s3->unk6A0 = temp_ra;
                temp_s3->unk6A0 = (temp_s4->unk608 & 0x400000) | temp_ra;
                var_v0_2 = temp_s6 & 0x800;
            }
            if (var_v0_2 != 0) {
                temp_a5_5 = temp_s4->unk5A0;
                temp_s3->unk638 = temp_a5_5;
                temp_a4_8 = temp_s4->unk5A8;
                temp_s3->unk640 = temp_a4_8;
                temp_a3_13 = temp_s4->unk5B0;
                temp_s3->unk648 = temp_a3_13;
                temp_a2_9 = temp_s4->unk5B8;
                temp_s3->unk650 = temp_a2_9;
                temp_a1_4 = temp_s4->unk5C0;
                temp_s3->unk658 = temp_a1_4;
                sp10 = var_ra;
                temp_s3->unk660 = temp_s4->unk5C8;
                temp_s3->unk668 = temp_s4->unk5D0;
                __glUpdateViewportTransform(temp_s3, temp_a1_4, temp_a2_9, temp_a3_13, temp_a4_8, temp_a5_5);
                __glim_Viewport((s32) temp_s4->unk5A0, temp_s4->unk5A4, (s32) temp_s4->unk5A8, temp_s4->unk5AC);
                __glMgrim_DepthRange(temp_s4->unk5B0, second half of f64);
            }
            temp_s4->unk0 = 0;
            __glBeginMode = 2;
            temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 1);
            var_a0_12 = temp_s3->unk925C;
            if ((temp_s3->unk9261 != 0) && (var_a0_12 & 4)) {
                if (~temp_s3->unk6A0 & 0x200) {
                    goto block_214;
                }
                if ((f64) (second half of f64) == (second half of f64)) {
block_214:
                    var_a0_12 &= ~4;
                    temp_s3->unk925C = var_a0_12;
                    if (var_a0_12 == 0) {
                        sp10 = var_ra;
                        __glMgrExitSoftPath(temp_s3, temp_s3);
                        var_a0_12 = temp_s3->unk925C;
                    }
                }
            }
            if (temp_s3->unk9262 != 0) {
                var_v0_3 = var_a0_12 & 8;
                if (var_a0_12 & 2) {
                    if (~temp_s3->unk6A0 & 0x800) {
                        var_a0_12 &= ~2;
                        temp_s3->unk925C = var_a0_12;
                        if (var_a0_12 == 0) {
                            sp10 = var_ra;
                            __glMgrExitSoftPath(temp_s3, temp_s3);
                            var_a0_12 = temp_s3->unk925C;
                        }
                    }
                    goto block_219;
                }
            } else {
block_219:
                var_v0_3 = var_a0_12 & 8;
            }
            var_at = var_a0_12 & 0x10;
            if (var_v0_3 != 0) {
                if (~temp_s3->unk6A0 & 0x10000) {
                    var_a0_12 &= ~8;
                    temp_s3->unk925C = var_a0_12;
                    if (var_a0_12 == 0) {
                        sp10 = var_ra;
                        __glMgrExitSoftPath(temp_s3, temp_s3);
                        var_a0_12 = temp_s3->unk925C;
                    }
                }
                var_at = var_a0_12 & 0x10;
            }
            var_a3_5 = var_a0_12 & 0x20;
            if (var_at != 0) {
                if (~temp_s3->unk6A0 & 0x20000) {
                    var_a0_12 &= ~0x10;
                    temp_s3->unk925C = var_a0_12;
                    if (var_a0_12 == 0) {
                        sp10 = var_ra;
                        __glMgrExitSoftPath(temp_s3, temp_s3);
                        var_a0_12 = temp_s3->unk925C;
                    }
                }
                var_a3_5 = var_a0_12 & 0x20;
            }
            var_v1_3 = var_a0_12 & 0x40;
            if (var_a3_5 != 0) {
                if (~temp_s3->unk6A0 & 0x40000000) {
                    var_a0_12 &= ~0x20;
                    temp_s3->unk925C = var_a0_12;
                    if (var_a0_12 == 0) {
                        sp10 = var_ra;
                        __glMgrExitSoftPath(temp_s3, temp_s3);
                        var_a0_12 = temp_s3->unk925C;
                    }
                }
                var_v1_3 = var_a0_12 & 0x40;
            }
            if (var_v1_3 != 0) {
                sp10 = var_ra;
                __glMgrNeedSoftFilter4((__GLcontext *) var_a0_12, var_a0_12);
                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                    temp_v0_13 = temp_s3->unk925C & ~0x40;
                    temp_s3->unk925C = temp_v0_13;
                    if (temp_v0_13 == 0) {
                        __glMgrExitSoftPath(temp_s3, temp_s3);
                    }
                }
            }
            return;
        }
        __glSetError(0x504, temp_a3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_PopAttrib(void) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp60;
    s64 sp50;
    s64 sp30;
    s64 sp28;
    u64 sp20;
    enum GLenum sp1C;
    enum GLenum sp14;
    enum GLenum sp10;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s3;
    __GLcontext *var_s1_4;
    enum GLenum var_s1_2;
    enum GLenum var_s2_4;
    f32 *var_s2_2;
    f32 *var_s6_2;
    f32 *var_s7_2;
    f32 temp_f14;
    s32 *temp_a2_6;
    s32 *temp_a3_2;
    s32 *temp_a3_3;
    s32 *temp_a3_4;
    s32 *temp_a4;
    s32 *temp_a4_3;
    s32 *temp_a5;
    s32 *temp_a6;
    s32 *temp_a7;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_s1_2;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_5;
    s32 temp_a1_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a3;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_at_5;
    s32 temp_s1;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s8;
    s32 temp_v0_10;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_10;
    s32 var_a1_11;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2;
    s32 var_a3;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_at_4;
    s32 var_s1_3;
    s32 var_s4_2;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    s64 *temp_a3_5;
    s64 *temp_v0_3;
    s64 *temp_v0_6;
    s64 *temp_v0_9;
    s64 *temp_v1;
    s64 *temp_v1_4;
    s64 *temp_v1_6;
    s64 *temp_v1_7;
    s64 temp_at_6;
    s64 var_ra;
    s64 var_s1;
    s64 var_s2;
    s64 var_s6;
    s64 var_s7;
    u32 temp_a0;
    u64 temp_v0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a4_2;
    void *temp_s0;
    void *temp_s4;
    void *var_s2_3;
    void *var_s4;

    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_s6 = saved_reg_s6;
    var_s7 = saved_reg_s7;
    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a0 = temp_s3->unk31BC;
        temp_s4 = temp_s3 + 0x10000;
        temp_a1 = temp_s3->unk9270;
        if ((u32) temp_s3->unk31B8 < temp_a0) {
            temp_s0 = temp_a0->unk-4;
            temp_s5 = temp_s0->unk0;
            temp_s3->unk31BC = temp_a0 - 4;
            temp_s8 = temp_a1->unk-4;
            temp_s3->unk9270 = (void *) (temp_a1 - 4);
            if (temp_s5 & 0x200) {
                __glim_ClearAccum(temp_s0->unk578, temp_s0->unk57C, temp_s0->unk580, temp_s0->unk584);
                var_ra = sp50;
            }
            if (temp_s5 & 0x4000) {
                sp50 = var_ra;
                __glMgrim_DrawBuffer(temp_s0->unk668);
                if (temp_s0->unk608 & 1) {
                    __glMgrim_Enable(GL_ALPHA_TEST);
                } else {
                    __glMgrim_Disable(GL_ALPHA_TEST);
                }
                __glMgrim_AlphaFunc(temp_s0->unk620, temp_s0->unk624);
                if (temp_s0->unk608 & 2) {
                    __glMgrim_Enable(GL_BLEND);
                } else {
                    __glMgrim_Disable(GL_BLEND);
                }
                __glMgrim_BlendFunc(temp_s0->unk628, temp_s0->unk62C);
                __glMgrim_BlendEquationEXT(temp_s0->unk630);
                if (temp_s0->unk608 & 8) {
                    __glMgrim_Enable(GL_DITHER);
                } else {
                    __glMgrim_Disable(GL_DITHER);
                }
                if (temp_s0->unk608 & 4) {
                    __glMgrim_Enable(GL_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_LOGIC_OP);
                }
                if (temp_s0->unk60C & 0x800) {
                    __glMgrim_Enable(GL_COLOR_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_COLOR_LOGIC_OP);
                }
                __glMgrim_LogicOp(temp_s0->unk644);
                glColorMask(temp_s0->unk660, temp_s0->unk661, temp_s0->unk662, temp_s0->unk663);
                glIndexMask(temp_s0->unk65C);
                __glMgrim_ClearIndex(temp_s0->unk658);
                __glMgrim_ClearColor(temp_s0->unk648, temp_s0->unk64C, temp_s0->unk650, temp_s0->unk654);
                var_ra = sp50;
            }
            var_at = temp_s5 & 0x100;
            if (temp_s5 & 1) {
                sp50 = var_ra;
                __glMgrim_ClearColor(temp_s0->unk100, temp_s0->unk104, temp_s0->unk108, temp_s0->unk10C);
                temp_s3->unk1608->unk6B4(temp_s0->unk110);
                temp_a0_2 = temp_s0 + 0x40;
                __glMgrRestoreRasterPosition(temp_a0_2, temp_a0_2, temp_s0->unk114);
                __glMgrim_Normal3f(temp_s0->unk20, temp_s0->unk24, temp_s0->unk28);
                glTexCoord4f(temp_s0->unk30, temp_s0->unk34, temp_s0->unk38, temp_s0->unk3C);
                __glMgrim_EdgeFlag(temp_s0->unk115);
                var_at = temp_s5 & 0x100;
            }
            var_v1 = temp_s5 & 0x2000;
            if (var_at != 0) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x10) {
                    __glMgrim_Enable(GL_DEPTH_TEST);
                } else {
                    __glMgrim_Disable(GL_DEPTH_TEST);
                }
                __glMgrim_DepthFunc(temp_s0->unk568);
                __glMgrim_DepthMask(temp_s0->unk56C);
                __glMgrim_ClearDepth(temp_s0->unk570);
                var_ra = sp50;
                var_v1 = temp_s5 & 0x2000;
            }
            if (var_v1 != 0) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 1) {
                    __glMgrim_Enable(GL_ALPHA_TEST);
                } else {
                    __glMgrim_Disable(GL_ALPHA_TEST);
                }
                if (temp_s0->unk608 & 0x800000) {
                    __glMgrim_Enable(GL_AUTO_NORMAL);
                } else {
                    __glMgrim_Disable(GL_AUTO_NORMAL);
                }
                if (temp_s0->unk608 & 2) {
                    __glMgrim_Enable(GL_BLEND);
                } else {
                    __glMgrim_Disable(GL_BLEND);
                }
                if (temp_s0->unk608 & 0x1000) {
                    __glMgrim_Enable(GL_CULL_FACE);
                } else {
                    __glMgrim_Disable(GL_CULL_FACE);
                }
                if (temp_s0->unk608 & 0x10) {
                    __glMgrim_Enable(GL_DEPTH_TEST);
                } else {
                    __glMgrim_Disable(GL_DEPTH_TEST);
                }
                if (temp_s0->unk608 & 8) {
                    __glMgrim_Enable(GL_DITHER);
                } else {
                    __glMgrim_Disable(GL_DITHER);
                }
                if (temp_s0->unk608 & 0x80) {
                    __glMgrim_Enable(GL_COLOR_MATERIAL);
                } else {
                    __glMgrim_Disable(GL_COLOR_MATERIAL);
                }
                if (temp_s0->unk608 & 0x20) {
                    __glMgrim_Enable(GL_FOG);
                } else {
                    __glMgrim_Disable(GL_FOG);
                }
                if (temp_s0->unk608 & 0x200) {
                    __glMgrim_Enable(GL_LINE_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_LINE_SMOOTH);
                }
                if (temp_s0->unk608 & 0x100) {
                    __glMgrim_Enable(GL_LINE_STIPPLE);
                } else {
                    __glMgrim_Disable(GL_LINE_STIPPLE);
                }
                if (temp_s0->unk608 & 4) {
                    __glMgrim_Enable(GL_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_LOGIC_OP);
                }
                if (temp_s0->unk60C & 0x800) {
                    __glMgrim_Enable(GL_COLOR_LOGIC_OP);
                } else {
                    __glMgrim_Disable(GL_COLOR_LOGIC_OP);
                }
                if (temp_s0->unk608 & 0x400000) {
                    __glMgrim_Enable(GL_NORMALIZE);
                } else {
                    __glMgrim_Disable(GL_NORMALIZE);
                }
                if (temp_s0->unk608 & 0x400) {
                    __glMgrim_Enable(GL_POINT_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_POINT_SMOOTH);
                }
                if (temp_s0->unk608 & 0x800) {
                    __glMgrim_Enable(GL_POLYGON_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_POLYGON_SMOOTH);
                }
                if (temp_s0->unk608 & 0x2000) {
                    __glMgrim_Enable(GL_POLYGON_STIPPLE);
                } else {
                    __glMgrim_Disable(GL_POLYGON_STIPPLE);
                }
                if (temp_s0->unk608 & 0x4000) {
                    __glMgrim_Enable(GL_SCISSOR_TEST);
                } else {
                    __glMgrim_Disable(GL_SCISSOR_TEST);
                }
                if (temp_s0->unk608 & 0x8000) {
                    __glMgrim_Enable(GL_STENCIL_TEST);
                } else {
                    __glMgrim_Disable(GL_STENCIL_TEST);
                }
                if (temp_s0->unk608 & 0x10000) {
                    __glMgrim_Enable(GL_TEXTURE_1D);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_1D);
                }
                if (temp_s0->unk608 & 0x20000) {
                    __glMgrim_Enable(GL_TEXTURE_2D);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_2D);
                }
                if (temp_s0->unk608 & 0x40000000) {
                    __glMgrim_Enable(GL_TEXTURE_3D_EXT);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_3D_EXT);
                }
                if (temp_s0->unk608 & 0x40000) {
                    __glMgrim_Enable(GL_TEXTURE_GEN_S);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_GEN_S);
                }
                if (temp_s0->unk608 & 0x80000) {
                    __glMgrim_Enable(GL_TEXTURE_GEN_T);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_GEN_T);
                }
                if (temp_s0->unk608 & 0x100000) {
                    __glMgrim_Enable(GL_TEXTURE_GEN_R);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_GEN_R);
                }
                if (temp_s0->unk608 & 0x200000) {
                    __glMgrim_Enable(GL_TEXTURE_GEN_Q);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_GEN_Q);
                }
                if (temp_s0->unk608 & 0x01000000) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_FILL);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_FILL);
                }
                if (temp_s0->unk60C & 0x400) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_LINE);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_LINE);
                }
                if (temp_s0->unk60C & 0x200) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_POINT);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_POINT);
                }
                if (temp_s0->unk614 & 1) {
                    __glMgrim_Enable(GL_CLIP_PLANE0);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE0);
                }
                if (temp_s0->unk614 & 2) {
                    __glMgrim_Enable(GL_CLIP_PLANE1);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE1);
                }
                if (temp_s0->unk614 & 4) {
                    __glMgrim_Enable(GL_CLIP_PLANE2);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE2);
                }
                if (temp_s0->unk614 & 8) {
                    __glMgrim_Enable(GL_CLIP_PLANE3);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE3);
                }
                if (temp_s0->unk614 & 0x10) {
                    __glMgrim_Enable(GL_CLIP_PLANE4);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE4);
                }
                if (temp_s0->unk614 & 0x20) {
                    __glMgrim_Enable(GL_CLIP_PLANE5);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE5);
                }
                if (temp_s0->unk608 & 0x40) {
                    __glMgrim_Enable(GL_LIGHTING);
                } else {
                    __glMgrim_Disable(GL_LIGHTING);
                }
                if (temp_s0->unk610 & 1) {
                    __glMgrim_Enable(GL_LIGHT0);
                } else {
                    __glMgrim_Disable(GL_LIGHT0);
                }
                if (temp_s0->unk610 & 2) {
                    __glMgrim_Enable(GL_LIGHT1);
                } else {
                    __glMgrim_Disable(GL_LIGHT1);
                }
                if (temp_s0->unk610 & 4) {
                    __glMgrim_Enable(GL_LIGHT2);
                } else {
                    __glMgrim_Disable(GL_LIGHT2);
                }
                if (temp_s0->unk610 & 8) {
                    __glMgrim_Enable(GL_LIGHT3);
                } else {
                    __glMgrim_Disable(GL_LIGHT3);
                }
                if (temp_s0->unk610 & 0x10) {
                    __glMgrim_Enable(GL_LIGHT4);
                } else {
                    __glMgrim_Disable(GL_LIGHT4);
                }
                if (temp_s0->unk610 & 0x20) {
                    __glMgrim_Enable(GL_LIGHT5);
                } else {
                    __glMgrim_Disable(GL_LIGHT5);
                }
                if (temp_s0->unk610 & 0x40) {
                    __glMgrim_Enable(GL_LIGHT6);
                } else {
                    __glMgrim_Disable(GL_LIGHT6);
                }
                if (temp_s0->unk610 & 0x80) {
                    __glMgrim_Enable(GL_LIGHT7);
                } else {
                    __glMgrim_Disable(GL_LIGHT7);
                }
                if (temp_s0->unk610 & 0x80000000) {
                    __glMgrim_Enable(0xBEADU);
                } else {
                    __glMgrim_Disable(0xBEADU);
                }
                if (temp_s0->unk608 & 0x10000000) {
                    __glMgrim_Enable(GL_HISTOGRAM_EXT);
                } else {
                    __glMgrim_Disable(GL_HISTOGRAM_EXT);
                }
                if (temp_s0->unk608 & 0x20000000) {
                    __glMgrim_Enable(GL_MINMAX_EXT);
                } else {
                    __glMgrim_Disable(GL_MINMAX_EXT);
                }
                if (temp_s0->unk608 & 0x02000000) {
                    __glMgrim_Enable(GL_CONVOLUTION_1D_EXT);
                } else {
                    __glMgrim_Disable(GL_CONVOLUTION_1D_EXT);
                }
                if (temp_s0->unk608 & 0x04000000) {
                    __glMgrim_Enable(GL_CONVOLUTION_2D_EXT);
                } else {
                    __glMgrim_Disable(GL_CONVOLUTION_2D_EXT);
                }
                if (temp_s0->unk608 & 0x08000000) {
                    __glMgrim_Enable(GL_SEPARABLE_2D_EXT);
                } else {
                    __glMgrim_Disable(GL_SEPARABLE_2D_EXT);
                }
                if (temp_s0->unk618 & 1) {
                    __glMgrim_Enable(GL_MAP1_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_COLOR_4);
                }
                if (temp_s0->unk618 & 2) {
                    __glMgrim_Enable(GL_MAP1_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP1_INDEX);
                }
                if (temp_s0->unk618 & 4) {
                    __glMgrim_Enable(GL_MAP1_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP1_NORMAL);
                }
                if (temp_s0->unk618 & 8) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_1);
                }
                if (temp_s0->unk618 & 0x10) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_2);
                }
                if (temp_s0->unk618 & 0x20) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_3);
                }
                if (temp_s0->unk618 & 0x40) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_4);
                }
                if (temp_s0->unk618 & 0x80) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_3);
                }
                if (temp_s0->unk618 & 0x100) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_4);
                }
                if (temp_s0->unk61C & 1) {
                    __glMgrim_Enable(GL_MAP2_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_COLOR_4);
                }
                if (temp_s0->unk61C & 2) {
                    __glMgrim_Enable(GL_MAP2_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP2_INDEX);
                }
                if (temp_s0->unk61C & 4) {
                    __glMgrim_Enable(GL_MAP2_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP2_NORMAL);
                }
                if (temp_s0->unk61C & 8) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_1);
                }
                if (temp_s0->unk61C & 0x10) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_2);
                }
                if (temp_s0->unk61C & 0x20) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_3);
                }
                if (temp_s0->unk61C & 0x40) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_4);
                }
                if (temp_s0->unk61C & 0x80) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_3);
                }
                if (temp_s0->unk61C & 0x100) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_4);
                }
                var_ra = sp50;
            }
            var_at_2 = temp_s5 & 0x80;
            if (0x10000 & temp_s5) {
                temp_s3->unk720 = temp_s0->unk688;
                temp_s3->unk728 = temp_s0->unk690;
                temp_s3->unk730 = temp_s0->unk698;
                temp_s3->unk738 = temp_s0->unk6A0;
                temp_s3->unk740 = temp_s0->unk6A8;
                temp_a3 = temp_s3->unk6A0 & ~0x800000;
                temp_s3->unk6A0 = temp_a3;
                temp_s3->unk748 = temp_s0->unk6B0;
                temp_s3->unk6A0 = (temp_s0->unk608 & 0x800000) | temp_a3;
                temp_s3->unk6B0 = temp_s0->unk618;
                temp_s3->unk6B4 = temp_s0->unk61C;
                sp50 = var_ra;
                if (temp_s0->unk618 & 1) {
                    __glMgrim_Enable(GL_MAP1_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_COLOR_4);
                }
                if (temp_s0->unk618 & 2) {
                    __glMgrim_Enable(GL_MAP1_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP1_INDEX);
                }
                if (temp_s0->unk618 & 4) {
                    __glMgrim_Enable(GL_MAP1_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP1_NORMAL);
                }
                if (temp_s0->unk618 & 8) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_1);
                }
                if (temp_s0->unk618 & 0x10) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_2);
                }
                if (temp_s0->unk618 & 0x20) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_3);
                }
                if (temp_s0->unk618 & 0x40) {
                    __glMgrim_Enable(GL_MAP1_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_TEXTURE_COORD_4);
                }
                if (temp_s0->unk618 & 0x80) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_3);
                }
                if (temp_s0->unk618 & 0x100) {
                    __glMgrim_Enable(GL_MAP1_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP1_VERTEX_4);
                }
                if (temp_s0->unk61C & 1) {
                    __glMgrim_Enable(GL_MAP2_COLOR_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_COLOR_4);
                }
                if (temp_s0->unk61C & 2) {
                    __glMgrim_Enable(GL_MAP2_INDEX);
                } else {
                    __glMgrim_Disable(GL_MAP2_INDEX);
                }
                if (temp_s0->unk61C & 4) {
                    __glMgrim_Enable(GL_MAP2_NORMAL);
                } else {
                    __glMgrim_Disable(GL_MAP2_NORMAL);
                }
                if (temp_s0->unk61C & 8) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_1);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_1);
                }
                if (temp_s0->unk61C & 0x10) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_2);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_2);
                }
                if (temp_s0->unk61C & 0x20) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_3);
                }
                if (temp_s0->unk61C & 0x40) {
                    __glMgrim_Enable(GL_MAP2_TEXTURE_COORD_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_TEXTURE_COORD_4);
                }
                if (temp_s0->unk61C & 0x80) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_3);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_3);
                }
                if (temp_s0->unk61C & 0x100) {
                    __glMgrim_Enable(GL_MAP2_VERTEX_4);
                } else {
                    __glMgrim_Disable(GL_MAP2_VERTEX_4);
                }
                __glMgrUpdateEvalAttributes(temp_s3, temp_s3);
                var_ra = sp50;
                var_at_2 = temp_s5 & 0x80;
            }
            var_v1_2 = temp_s5 & 0x8000;
            if (var_at_2 != 0) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x20) {
                    __glMgrim_Enable(GL_FOG);
                } else {
                    __glMgrim_Disable(GL_FOG);
                }
                __glMgrim_Fogi(GL_FOG_MODE, temp_s0->unk53C);
                __glMgrim_Fogf(GL_FOG_DENSITY, temp_s0->unk550);
                __glMgrim_Fogf(GL_FOG_INDEX, temp_s0->unk560);
                __glMgrim_Fogf(GL_FOG_START, temp_s0->unk554);
                __glMgrim_Fogf(GL_FOG_END, temp_s0->unk558);
                __glMgrim_Fogfv(GL_FOG_COLOR, temp_s0 + 0x540);
                var_ra = sp50;
                var_v1_2 = temp_s5 & 0x8000;
            }
            var_v1_3 = temp_s5 & 0x40;
            if (var_v1_2 != 0) {
                temp_s3->unk704 = temp_s0->unk66C;
                temp_s3->unk708 = temp_s0->unk670;
                temp_s3->unk70C = temp_s0->unk674;
                temp_s3->unk710 = temp_s0->unk678;
                temp_s3->unk714 = temp_s0->unk67C;
                temp_s3->unk718 = temp_s0->unk680;
                temp_s3->unk71C = temp_s0->unk684;
                var_v1_3 = temp_s5 & 0x40;
            }
            var_a3 = temp_s5 & 4;
            if (var_v1_3 != 0) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x40) {
                    __glMgrim_Enable(GL_LIGHTING);
                } else {
                    __glMgrim_Disable(GL_LIGHTING);
                }
                if (temp_s0->unk610 & 1) {
                    __glMgrim_Enable(GL_LIGHT0);
                } else {
                    __glMgrim_Disable(GL_LIGHT0);
                }
                if (temp_s0->unk610 & 2) {
                    __glMgrim_Enable(GL_LIGHT1);
                } else {
                    __glMgrim_Disable(GL_LIGHT1);
                }
                if (temp_s0->unk610 & 4) {
                    __glMgrim_Enable(GL_LIGHT2);
                } else {
                    __glMgrim_Disable(GL_LIGHT2);
                }
                if (temp_s0->unk610 & 8) {
                    __glMgrim_Enable(GL_LIGHT3);
                } else {
                    __glMgrim_Disable(GL_LIGHT3);
                }
                if (temp_s0->unk610 & 0x10) {
                    __glMgrim_Enable(GL_LIGHT4);
                } else {
                    __glMgrim_Disable(GL_LIGHT4);
                }
                if (temp_s0->unk610 & 0x20) {
                    __glMgrim_Enable(GL_LIGHT5);
                } else {
                    __glMgrim_Disable(GL_LIGHT5);
                }
                if (temp_s0->unk610 & 0x40) {
                    __glMgrim_Enable(GL_LIGHT6);
                } else {
                    __glMgrim_Disable(GL_LIGHT6);
                }
                if (temp_s0->unk610 & 0x80) {
                    __glMgrim_Enable(GL_LIGHT7);
                } else {
                    __glMgrim_Disable(GL_LIGHT7);
                }
                if (temp_s0->unk608 & 0x80) {
                    __glMgrim_Enable(GL_COLOR_MATERIAL);
                } else {
                    __glMgrim_Disable(GL_COLOR_MATERIAL);
                }
                glColorMaterial(temp_s0->unk478, temp_s0->unk47C);
                glShadeModel(temp_s0->unk480);
                glLightModelfv(GL_LIGHT_MODEL_AMBIENT, temp_s0 + 0x484);
                glLightModelf(GL_LIGHT_MODEL_LOCAL_VIEWER, (f32) temp_s0->unk494);
                glLightModelf(GL_LIGHT_MODEL_TWO_SIDE, (f32) temp_s0->unk495);
                glMaterialfv(GL_FRONT, GL_AMBIENT, temp_s0 + 0x498);
                glMaterialfv(GL_BACK, GL_AMBIENT, temp_s0 + 0x4E8);
                glMaterialfv(GL_FRONT, GL_DIFFUSE, temp_s0 + 0x4A8);
                glMaterialfv(GL_BACK, GL_DIFFUSE, temp_s0 + 0x4F8);
                glMaterialfv(GL_FRONT, GL_SPECULAR, temp_s0 + 0x4B8);
                glMaterialfv(GL_BACK, GL_SPECULAR, temp_s0 + 0x508);
                glMaterialfv(GL_FRONT, GL_EMISSION, temp_s0 + 0x4C8);
                glMaterialfv(GL_BACK, GL_EMISSION, temp_s0 + 0x518);
                glMaterialf(GL_FRONT, GL_SHININESS, temp_s0->unk4D8);
                glMaterialf(GL_BACK, GL_SHININESS, temp_s0->unk528);
                sp0 = temp_s0->unk4DC;
                sp4 = temp_s0->unk4E4;
                sp8 = temp_s0->unk4E0;
                glMaterialfv(GL_FRONT, GL_COLOR_INDEXES, sp);
                sp0 = temp_s0->unk52C;
                sp4 = temp_s0->unk534;
                sp8 = temp_s0->unk530;
                glMaterialfv(GL_BACK, GL_COLOR_INDEXES, sp);
                sp20 = 0;
                var_s2_2 = temp_s0->unk538;
                if (temp_s3->unkD00 != 0) {
                    var_s7_2 = var_s2_2 + 0x20;
                    var_s6_2 = var_s2_2 + 0x10;
                    var_s1_2 = GL_LIGHT0;
loop_349:
                    glLightfv(var_s1_2, GL_AMBIENT, var_s2_2);
                    glLightfv(var_s1_2, GL_DIFFUSE, var_s6_2);
                    glLightfv(var_s1_2, GL_SPECULAR, var_s7_2);
                    glGetIntegerv(GL_MODELVIEW_STACK_DEPTH, &sp10);
                    var_s7_2 += 0x74;
                    var_s6_2 += 0x74;
                    if (sp10 < temp_s3->unkDA4) {
                        glGetIntegerv(GL_MATRIX_MODE, &sp14);
                        glMatrixMode(GL_MODELVIEW);
                        glPushMatrix();
                        glLoadIdentity();
                        glLightfv(var_s1_2, GL_POSITION, var_s2_2 + 0x40);
                        glLightfv(var_s1_2, GL_SPOT_DIRECTION, var_s2_2 + 0x50);
                        glPopMatrix();
                        glMatrixMode(sp14);
                    } else {
                        __glSetError(0x503);
                    }
                    glLightf(var_s1_2, GL_SPOT_EXPONENT, var_s2_2->unk60);
                    glLightf(var_s1_2, GL_SPOT_CUTOFF, var_s2_2->unk64);
                    glLightf(var_s1_2, GL_CONSTANT_ATTENUATION, var_s2_2->unk68);
                    glLightf(var_s1_2, GL_LINEAR_ATTENUATION, var_s2_2->unk6C);
                    temp_f14 = var_s2_2->unk70;
                    var_s2_2 += 0x74;
                    glLightf(var_s1_2, GL_QUADRATIC_ATTENUATION, temp_f14);
                    temp_v0 = sp20 + 1;
                    sp20 = temp_v0;
                    var_s1_2 += 1;
                    if (temp_v0 < (u32) temp_s3->unkD00) {
                        goto loop_349;
                    }
                    var_s1 = sp78;
                    var_s7 = sp80;
                    var_s6 = sp88;
                }
                var_s2 = sp90;
                temp_s3->imports.free(temp_s3, temp_s0->unk538);
                temp_s0->unk538 = NULL;
                temp_v0_2 = temp_s3->unk6A0 & ~0xC0;
                temp_s3->unk6A0 = temp_v0_2;
                temp_s3->unk6A0 = (temp_s0->unk608 & 0xC0) | temp_v0_2;
                temp_s3->unk6A8 = temp_s0->unk610;
                var_ra = sp50;
                var_a3 = temp_s5 & 4;
            }
            if (var_a3 != 0) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x200) {
                    __glMgrim_Enable(GL_LINE_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_LINE_SMOOTH);
                }
                if (temp_s0->unk608 & 0x100) {
                    __glMgrim_Enable(GL_LINE_STIPPLE);
                } else {
                    __glMgrim_Disable(GL_LINE_STIPPLE);
                }
                __glMgrim_LineWidth(temp_s0->unk124);
                __glMgrim_LineStipple((s32) temp_s0->unk132, temp_s0->unk130);
                var_ra = sp50;
            }
            var_at_3 = temp_s5 & 0x20;
            if (0x20000 & temp_s5) {
                temp_s3->unk750 = temp_s0->unk6B8;
                var_at_3 = temp_s5 & 0x20;
            }
            var_a0 = 0xF;
            if (var_at_3 != 0) {
                var_a1 = 0;
                temp_a4 = &temp_s3->unk268;
                temp_a2 = temp_s0 + 0x1D0;
                do {
                    temp_v1 = var_a1 + temp_a4;
                    temp_v0_3 = var_a1 + temp_a2;
                    var_a1 += 8;
                    var_a0 -= 1;
                    *temp_v1 = *temp_v0_3;
                } while (var_a0 > 0);
                sp50 = var_ra;
                *(var_a1 + temp_a4) = *(var_a1 + temp_a2);
                __glMgrim_ReadBuffer(temp_s0->unk3E8);
                if (temp_s0->unk608 & 0x10000000) {
                    __glMgrim_Enable(GL_HISTOGRAM_EXT);
                } else {
                    __glMgrim_Disable(GL_HISTOGRAM_EXT);
                }
                if (temp_s0->unk608 & 0x20000000) {
                    __glMgrim_Enable(GL_MINMAX_EXT);
                } else {
                    __glMgrim_Disable(GL_MINMAX_EXT);
                }
                if (temp_s0->unk608 & 0x02000000) {
                    __glMgrim_Enable(GL_CONVOLUTION_1D_EXT);
                } else {
                    __glMgrim_Disable(GL_CONVOLUTION_1D_EXT);
                }
                if (temp_s0->unk608 & 0x04000000) {
                    __glMgrim_Enable(GL_CONVOLUTION_2D_EXT);
                } else {
                    __glMgrim_Disable(GL_CONVOLUTION_2D_EXT);
                }
                var_ra = sp50;
                var_a1_2 = 0xC;
                var_a0_2 = 0;
                do {
                    temp_at = var_a0_2 + (temp_s4 - 0x7E24);
                    temp_a3_2 = var_a0_2 + temp_s8;
                    var_a0_2 += 4;
                    var_a1_2 -= 1;
                    *temp_at = *temp_a3_2;
                } while (var_a1_2 > 0);
                var_a0_3 = 0x14;
                var_a1_3 = 0;
                do {
                    temp_v0_4 = var_a1_3 + (temp_s4 - 0x7DF4);
                    temp_at_2 = var_a1_3 + (temp_s8 + 0x30);
                    var_a1_3 += 4;
                    var_a0_3 -= 1;
                    *temp_v0_4 = *temp_at_2;
                } while (var_a0_3 > 0);
                var_a1_4 = 8;
                var_a0_4 = 0;
                do {
                    temp_v1_2 = var_a0_4 + (temp_s4 - 0x7DA4);
                    temp_v0_5 = var_a0_4 + (temp_s8 + 0x80);
                    var_a0_4 += 4;
                    var_a1_4 -= 1;
                    *temp_v1_2 = *temp_v0_5;
                } while (var_a1_4 > 0);
                var_a1_5 = 0x44;
                var_a0_5 = 0;
                do {
                    temp_a3_3 = var_a0_5 + (temp_s4 - 0x7D84);
                    temp_v1_3 = var_a0_5 + (temp_s8 + 0xA0);
                    var_a0_5 += 4;
                    var_a1_5 -= 1;
                    *temp_a3_3 = *temp_v1_3;
                } while (var_a1_5 > 0);
                var_a0_6 = 0x78;
                var_a1_6 = 0;
                do {
                    temp_at_3 = var_a1_6 + (temp_s4 - 0x7C74);
                    temp_a3_4 = var_a1_6 + (temp_s8 + 0x1B0);
                    var_a1_6 += 4;
                    var_a0_6 -= 1;
                    *temp_at_3 = *temp_a3_4;
                } while (var_a0_6 > 0);
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 0x10);
            }
            if (temp_s5 & 2) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x400) {
                    __glMgrim_Enable(GL_POINT_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_POINT_SMOOTH);
                }
                __glMgrim_PointSize(temp_s0->unk118);
                var_ra = sp50;
            }
            var_at_4 = temp_s5 & 0x10;
            if (temp_s5 & 8) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x1000) {
                    __glMgrim_Enable(GL_CULL_FACE);
                } else {
                    __glMgrim_Disable(GL_CULL_FACE);
                }
                if (temp_s0->unk608 & 0x800) {
                    __glMgrim_Enable(GL_POLYGON_SMOOTH);
                } else {
                    __glMgrim_Disable(GL_POLYGON_SMOOTH);
                }
                if (temp_s0->unk608 & 0x2000) {
                    __glMgrim_Enable(GL_POLYGON_STIPPLE);
                } else {
                    __glMgrim_Disable(GL_POLYGON_STIPPLE);
                }
                if (temp_s0->unk608 & 0x01000000) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_FILL);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_FILL);
                }
                if (temp_s0->unk608 & 0x400) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_LINE);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_LINE);
                }
                if (temp_s0->unk608 & 0x200) {
                    __glMgrim_Enable(GL_POLYGON_OFFSET_POINT);
                } else {
                    __glMgrim_Disable(GL_POLYGON_OFFSET_POINT);
                }
                __glMgrim_CullFace(temp_s0->unk13C);
                __glMgrim_PolygonMode(GL_FRONT, temp_s0->unk134);
                __glMgrim_PolygonMode(GL_BACK, temp_s0->unk138);
                __glMgrim_FrontFace(temp_s0->unk140);
                __glMgrim_PolygonOffsetEXT(temp_s0->unk144, temp_s0->unk148);
                var_ra = sp50;
                var_at_4 = temp_s5 & 0x10;
            }
            var_a0_7 = 0x10;
            if (var_at_4 != 0) {
                var_a1_7 = 0;
                do {
                    temp_v1_4 = var_a1_7 + &temp_s3->unk1E8;
                    temp_v0_6 = var_a1_7 + (temp_s0 + 0x150);
                    var_a1_7 += 8;
                    var_a0_7 -= 1;
                    *temp_v1_4 = *temp_v0_6;
                } while (var_a0_7 > 0);
                temp_a1_2 = temp_s3->unk6A0 & ~0x2000;
                temp_s3->unk6A0 = temp_a1_2;
                sp50 = var_ra;
                temp_s3->unk6A0 = (temp_s0->unk608 & 0x2000) | temp_a1_2;
                temp_s3->unk31AC(temp_s3, temp_a1_2, (? *)-0x2001);
                __glBeginMode = 2;
                temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 4);
            }
            var_v1_4 = temp_s5 & 0x400;
            if (0x80000 & temp_s5) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x4000) {
                    __glMgrim_Enable(GL_SCISSOR_TEST);
                } else {
                    __glMgrim_Disable(GL_SCISSOR_TEST);
                }
                __glMgrim_Scissor(temp_s0->unk8D4, temp_s0->unk8D8, temp_s0->unk8DC, temp_s0->unk8E0);
                var_ra = sp50;
                var_v1_4 = temp_s5 & 0x400;
            }
            if (var_v1_4 != 0) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x8000) {
                    __glMgrim_Enable(GL_STENCIL_TEST);
                } else {
                    __glMgrim_Disable(GL_STENCIL_TEST);
                }
                __glMgrim_StencilMask((u32) temp_s0->unk592);
                __glMgrim_StencilFunc(temp_s0->unk588, (s32) temp_s0->unk58E, (u32) temp_s0->unk590);
                __glMgrim_StencilOp(temp_s0->unk594, temp_s0->unk598, temp_s0->unk59C);
                __glMgrim_ClearStencil((s32) temp_s0->unk58C);
                var_ra = sp50;
            }
            var_a0_8 = 0x1F;
            if (0x40000 & temp_s5) {
                var_a1_8 = 0;
                do {
                    temp_v1_5 = var_a1_8 + &temp_s3->unk754;
                    temp_v0_7 = var_a1_8 + (temp_s0 + 0x6BC);
                    var_a1_8 += 4;
                    var_a0_8 -= 1;
                    *temp_v1_5 = *temp_v0_7;
                } while (var_a0_8 > 0);
                var_a1_9 = 0xF;
                var_a0_9 = 0;
                temp_a5 = &temp_s3->unk7D0;
                temp_a4_2 = temp_s0 + 0x738;
                do {
                    temp_a3_5 = var_a0_9 + temp_a5;
                    temp_v1_6 = var_a0_9 + temp_a4_2;
                    var_a0_9 += 8;
                    var_a1_9 -= 1;
                    *temp_a3_5 = *temp_v1_6;
                } while (var_a1_9 > 0);
                var_a2 = 0x1F;
                var_a1_10 = 0;
                temp_a6 = &temp_s3->unk84C;
                temp_a7 = temp_s0 + 0x7B4;
                *(var_a0_9 + temp_a5) = *(var_a0_9 + temp_a4_2);
                do {
                    temp_v0_8 = var_a1_10 + temp_a6;
                    temp_at_4 = var_a1_10 + temp_a7;
                    var_a1_10 += 4;
                    var_a2 -= 1;
                    *temp_v0_8 = *temp_at_4;
                } while (var_a2 > 0);
                var_a1_11 = 0xF;
                var_a0_10 = 0;
                temp_a4_3 = &temp_s3->unk8C8;
                temp_a2_2 = temp_s0 + 0x830;
                do {
                    temp_v1_7 = var_a0_10 + temp_a4_3;
                    temp_v0_9 = var_a0_10 + temp_a2_2;
                    var_a0_10 += 8;
                    var_a1_11 -= 1;
                    *temp_v1_7 = *temp_v0_9;
                } while (var_a1_11 > 0);
                *(var_a0_10 + temp_a4_3) = *(var_a0_10 + temp_a2_2);
                if (temp_s4->unk-635B == 0) {
                    temp_s3->unk94C = temp_s0->unk8B4;
                    temp_s3->unk950 = temp_s0->unk8B8;
                    temp_s3->unk954 = temp_s0->unk8BC;
                    temp_s3->unk958 = temp_s0->unk8C0;
                    temp_s3->unk95C = temp_s0->unk8C4;
                    temp_s3->unk960 = temp_s0->unk8C8;
                    sp50 = var_ra;
                    sp78 = var_s1;
                    var_s1_3 = 0;
                    temp_s3->unk964 = temp_s0->unk8CC;
                    sp90 = var_s2;
                    sp88 = var_s6;
                    temp_s3->unk968 = temp_s0->unk8D0;
                    temp_s6 = temp_s3->unkD08;
                    var_s2_3 = temp_s3->unk944;
                    var_s4 = temp_s0->unk8AC;
                    if (temp_s6 != 0) {
                        var_a0_11 = temp_s6;
                        if (temp_s6 & 1) {
                            temp_a3_6 = var_s2_3->unkD8;
                            temp_a2_3 = var_s4->unkD8;
                            if (temp_a3_6 != temp_a2_3) {
                                sp60 = (s64) var_a0_11;
                                sp50 = var_ra;
                                __glBindTexture(temp_s3, 0, temp_a2_3, (s64) temp_a3_6, temp_a4_3, temp_a5, temp_a6, temp_a7);
                                var_a0_11 = (s32) sp60;
                            }
                            var_s4 += 0xE0;
                            var_s2_3 += 0xE0;
                            var_s1_3 = 1;
                        }
                        sp50 = var_ra;
                        if ((var_a0_11 >> 1) != 0) {
loop_502:
                            temp_a2_4 = var_s4->unkD8;
                            temp_a3_7 = var_s2_3->unkD8;
                            if (temp_a3_7 != temp_a2_4) {
                                M2C_ERROR(/* Read from unset register $t9 */)(temp_s3, var_s1_3, temp_a2_4, temp_a3_7);
                            }
                            temp_a2_5 = var_s4->unk1B8;
                            temp_at_5 = var_s2_3->unk1B8;
                            var_s4 += 0x1C0;
                            var_s2_3 += 0x1C0;
                            temp_s1 = var_s1_3 + 1;
                            if (temp_at_5 != temp_a2_5) {
                                __glBindTexture(temp_s3, temp_s1, temp_a2_5);
                            }
                            var_s1_3 = temp_s1 + 1;
                            if (temp_s6 != var_s1_3) {
                                goto loop_502;
                            }
                        }
                    }
                    var_s1 = sp78;
                    memcpy(temp_s3->unk944, temp_s0->unk8AC, temp_s6 * 0xE0);
                    memcpy(temp_s3->unk948, temp_s0->unk8B0, temp_s3->unkD0C * 0x24);
                    temp_s3->imports.free(temp_s3, temp_s0->unk8AC);
                    temp_s0->unk8AC = NULL;
                    temp_s3->imports.free(temp_s3, temp_s0->unk8B0);
                    temp_s0->unk8B0 = NULL;
                    temp_v0_10 = temp_s3->unk6A0 & 0x3FC0FFFF;
                    temp_s3->unk6A0 = temp_v0_10;
                    temp_s3->unk6A0 = (temp_s0->unk608 & 0xC03F0000) | temp_v0_10;
                } else {
                    sp50 = var_ra;
                    if (temp_s0->unk608 & 0x40000) {
                        __glMgrim_Enable(GL_TEXTURE_GEN_S);
                    } else {
                        __glMgrim_Disable(GL_TEXTURE_GEN_S);
                    }
                    if (temp_s0->unk608 & 0x80000) {
                        __glMgrim_Enable(GL_TEXTURE_GEN_T);
                    } else {
                        __glMgrim_Disable(GL_TEXTURE_GEN_T);
                    }
                    if (temp_s0->unk608 & 0x100000) {
                        __glMgrim_Enable(GL_TEXTURE_GEN_R);
                    } else {
                        __glMgrim_Disable(GL_TEXTURE_GEN_R);
                    }
                    if (temp_s0->unk608 & 0x200000) {
                        __glMgrim_Enable(GL_TEXTURE_GEN_Q);
                    } else {
                        __glMgrim_Disable(GL_TEXTURE_GEN_Q);
                    }
                    __glMgrim_TexGeniv(GL_S, GL_TEXTURE_GEN_MODE, &temp_s3->unk754);
                    __glMgrim_TexGenfv(GL_S, GL_OBJECT_PLANE, &temp_s3->unk768);
                    __glMgrim_TexGenfv(GL_S, GL_EYE_PLANE, &temp_s3->unk758);
                    __glMgrim_TexGeniv(GL_T, GL_TEXTURE_GEN_MODE, &temp_s3->unk7D0);
                    __glMgrim_TexGenfv(GL_T, GL_OBJECT_PLANE, &temp_s3->unk7E4);
                    __glMgrim_TexGenfv(GL_T, GL_EYE_PLANE, &temp_s3->unk7D4);
                    __glMgrim_TexGeniv(GL_R, GL_TEXTURE_GEN_MODE, &temp_s3->unk84C);
                    __glMgrim_TexGenfv(GL_R, GL_OBJECT_PLANE, &temp_s3->unk860);
                    __glMgrim_TexGenfv(GL_R, GL_EYE_PLANE, &temp_s3->unk850);
                    __glMgrim_TexGeniv(GL_Q, GL_TEXTURE_GEN_MODE, &temp_s3->unk8C8);
                    __glMgrim_TexGenfv(GL_Q, GL_OBJECT_PLANE, &temp_s3->unk8DC);
                    __glMgrim_TexGenfv(GL_Q, GL_EYE_PLANE, &temp_s3->unk8CC);
                    sp90 = var_s2;
                    sp88 = var_s6;
                    sp80 = var_s7;
                    sp78 = var_s1;
                    var_s4_2 = 0;
                    var_s2_4 = sp18;
loop_312:
                    temp_s1_2 = temp_s0->unk8AC + var_s4_2;
                    switch (var_s4_2) {             /* irregular */
                    case 0x0:
                        var_s2_4 = GL_TEXTURE_1D;
                        break;
                    case 0x380:
                        var_s2_4 = 0x8095;
                        break;
                    case 0xE0:
                        var_s2_4 = GL_TEXTURE_2D;
                        break;
                    case 0x1C0:
                        var_s2_4 = GL_TEXTURE_3D_EXT;
                        break;
                    case 0x2A0:
                        var_s2_4 = 0x8134;
                        break;
                    }
                    __glMgrim_BindTextureEXT(var_s2_4, temp_s1_2->unkD8);
                    __glMgrim_TexParameteriv(var_s2_4, GL_TEXTURE_WRAP_S, temp_s1_2);
                    __glMgrim_TexParameteriv(var_s2_4, GL_TEXTURE_WRAP_T, temp_s1_2 + 4);
                    __glMgrim_TexParameteriv(var_s2_4, GL_TEXTURE_WRAP_R_EXT, temp_s1_2 + 8);
                    __glMgrim_TexParameteriv(var_s2_4, GL_TEXTURE_MIN_FILTER, temp_s1_2 + 0xC);
                    __glMgrim_TexParameteriv(var_s2_4, GL_TEXTURE_MAG_FILTER, temp_s1_2 + 0x10);
                    __glMgrim_TexParameterfv(var_s2_4, GL_TEXTURE_BORDER_COLOR, (f32 *) (temp_s1_2 + 0x98));
                    __glMgrim_TexParameterfv(var_s2_4, GL_TEXTURE_PRIORITY, (f32 *) (temp_s1_2 + 0xDC));
                    var_s4_2 += 0xE0;
                    if (var_s4_2 != 0x460) {
                        goto loop_312;
                    }
                    __glMgrim_BindTextureEXT((enum GLenum) temp_s3, (u32) temp_s0->unk8AC);
                    temp_s0->unk8AC = NULL;
                    var_s1 = sp78;
                    temp_a2_6 = temp_s0->unk8B0;
                    sp28 = (s64) temp_a2_6;
                    __glMgrim_TexEnviv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, temp_a2_6);
                    __glMgrim_TexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, (f32 *) (temp_a2_6 + 4));
                    temp_s3->imports.free(temp_s3, temp_s0->unk8B0);
                    temp_s0->unk8B0 = NULL;
                }
                if (temp_s0->unk608 & 0x10000) {
                    __glMgrim_Enable(GL_TEXTURE_1D);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_1D);
                }
                if (temp_s0->unk608 & 0x20000) {
                    __glMgrim_Enable(GL_TEXTURE_2D);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_2D);
                }
                if (temp_s0->unk608 & 0x40000000) {
                    __glMgrim_Enable(GL_TEXTURE_3D_EXT);
                } else {
                    __glMgrim_Disable(GL_TEXTURE_3D_EXT);
                }
                var_ra = sp50;
            }
            if (temp_s5 & 0x1000) {
                sp50 = var_ra;
                if (temp_s0->unk608 & 0x400000) {
                    __glMgrim_Enable(GL_NORMALIZE);
                } else {
                    __glMgrim_Disable(GL_NORMALIZE);
                }
                if (temp_s0->unk614 & 1) {
                    __glMgrim_Enable(GL_CLIP_PLANE0);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE0);
                }
                if (temp_s0->unk614 & 2) {
                    __glMgrim_Enable(GL_CLIP_PLANE1);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE1);
                }
                if (temp_s0->unk614 & 4) {
                    __glMgrim_Enable(GL_CLIP_PLANE2);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE2);
                }
                if (temp_s0->unk614 & 8) {
                    __glMgrim_Enable(GL_CLIP_PLANE3);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE3);
                }
                if (temp_s0->unk614 & 0x10) {
                    __glMgrim_Enable(GL_CLIP_PLANE4);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE4);
                }
                if (temp_s0->unk614 & 0x20) {
                    __glMgrim_Enable(GL_CLIP_PLANE5);
                } else {
                    __glMgrim_Disable(GL_CLIP_PLANE5);
                }
                var_ra = sp50;
                if (temp_s0->unk5DC != NULL) {
                    glGetIntegerv(GL_MODELVIEW_STACK_DEPTH, &sp1C);
                    if (sp1C < temp_s3->unkDA4) {
                        glMatrixMode(GL_MODELVIEW);
                        glPushMatrix();
                        glLoadIdentity();
                        sp78 = var_s1;
                        sp30 = 0;
                        if (temp_s3->unkD04 > 0) {
                            var_s1_4 = (__GLcontext *)0x3000;
                            do {
                                M2C_ERROR(/* unknown instruction: ldl $a1, ($a4) */);
                                M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($a4) */);
                                __glMgrim_PassClipPlane(var_s1_4, var_s1_4, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($a4) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($a4) */));
                                temp_at_6 = sp30 + 1;
                                sp30 = temp_at_6;
                                var_s1_4 += 1;
                            } while (temp_at_6 < temp_s3->unkD04);
                        }
                        temp_s3->imports.free(temp_s3, temp_s0->unk5DC);
                        temp_s0->unk5DC = NULL;
                        glPopMatrix();
                    } else {
                        __glSetError(0x503);
                    }
                    glMatrixMode(temp_s0->unk5D8);
                    var_ra = sp50;
                }
            }
            if (temp_s5 & 0x800) {
                sp50 = var_ra;
                __glMgrim_Viewport(temp_s0->unk5A0, temp_s0->unk5A4, temp_s0->unk5A8, temp_s0->unk5AC);
                __glMgrim_DepthRange(temp_s0->unk5B0, second half of f64);
            }
            temp_s0->unk0 = 0;
            __glBeginMode = 2;
            temp_s3->procs.table[0x16] = (void *) ((s32) temp_s3->procs.table[0x16] | 1);
            return;
        }
        __glSetError(0x504, (s32) temp_a1);
        return;
    }
    __glSetError(0x502);
}

void __glMgrInitAttributeState(__GLcontext *gc, ...) {
    void *temp_v0;

    temp_v0 = gc->imports.calloc(gc, gc->unkD98, 4U);
    gc->unk9270 = temp_v0;
    gc->unk926C = temp_v0;
}

void __glMgrFreeAttributeState(__GLcontext *gc, ...) {
    u32 temp_a3;
    u32 var_s4;
    void *temp_a1;

    temp_a3 = gc->unk926C;
    var_s4 = temp_a3;
    if (temp_a3 < (u32) ((gc->unkD98 * 4) + temp_a3)) {
loop_2:
        temp_a1 = *var_s4;
        if (temp_a1 != NULL) {
            gc->imports.free(gc, temp_a1);
            var_s4 += 4;
            if (var_s4 < (u32) ((gc->unkD98 * 4) + gc->unk926C)) {
                goto loop_2;
            }
        }
    }
    gc->imports.free(gc, (void *) gc->unk926C);
    gc->unk926C = 0U;
}

void __glMgrCopyContext(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    ? *temp_a2;
    s32 *temp_a3_8;
    s32 *temp_a4_2;
    s32 *temp_a4_4;
    s32 *temp_a5_3;
    s32 *temp_a7;
    s32 *temp_at_4;
    s32 *temp_at_8;
    s32 *temp_at_9;
    s32 *temp_v0_3;
    s32 *temp_v0_6;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a4_3;
    s32 temp_a6;
    s32 temp_at_11;
    s32 temp_at_2;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_ra;
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a4;
    s32 var_at;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    s64 *temp_a3;
    s64 *temp_a3_4;
    s64 *temp_a3_5;
    s64 *temp_at;
    s64 *temp_at_10;
    s64 *temp_at_3;
    s64 *temp_at_7;
    s64 *temp_v0_2;
    s64 *temp_v0_4;
    s64 *temp_v0_5;
    s64 *temp_v0_7;
    s64 *temp_v0_8;
    s64 *temp_v1_10;
    s64 *temp_v1_2;
    s64 *temp_v1_3;
    s64 *temp_v1_4;
    void *temp_a4;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6_2;

    gc->unk7854 = arg1->unk7854;
    gc->unk7858 = arg1->unk7858;
    gc->unk785C = arg1->unk785C;
    gc->unk787C = arg1->unk787C;
    __glContextSetColorScales();
    if (arg2 & 0x200) {
        gc->unk610 = arg1->unk610;
        gc->unk614 = arg1->unk614;
        gc->unk618 = arg1->unk618;
        gc->unk61C = arg1->unk61C;
    }
    var_a1 = 9;
    if (arg2 & 0x4000) {
        var_a0 = 0;
        temp_a2 = &gc->unk6B8;
        temp_a4 = arg1 + 0x6B8;
        do {
            temp_at = var_a0 + temp_a2;
            temp_a3 = var_a0 + temp_a4;
            var_a0 += 8;
            var_a1 -= 1;
            *temp_at = *temp_a3;
        } while (var_a1 > 0);
        *(var_a0 + temp_a2) = *(var_a0 + temp_a4);
        temp_at_2 = gc->unk6A0 & ~0xF;
        gc->unk6A0 = temp_at_2;
        gc->unk6A0 = (arg1->unk6A0 & 0xF) | temp_at_2;
        temp_v0 = gc->unk6A4 & ~0x800;
        gc->unk6A4 = temp_v0;
        gc->unk6A4 = (arg1->unk6A4 & 0x800) | temp_v0;
    }
    var_a1_2 = 0x22;
    if (arg2 & 1) {
        var_a0_2 = 0;
        do {
            temp_v0_2 = var_a0_2 + &gc->unkA0;
            temp_at_3 = var_a0_2 + (arg1 + 0xA0);
            var_a0_2 += 8;
            var_a1_2 -= 1;
            *temp_v0_2 = *temp_at_3;
        } while (var_a1_2 > 0);
    }
    var_a3 = arg2 & 0x2000;
    if (arg2 & 0x100) {
        gc->unk600 = arg1->unk600;
        gc->unk608 = arg1->unk608;
        temp_a3_2 = gc->unk6A0 & ~0x10;
        gc->unk6A0 = temp_a3_2;
        gc->unk6A0 = (arg1->unk6A0 & 0x10) | temp_a3_2;
        var_a3 = arg2 & 0x2000;
    }
    if (var_a3 != 0) {
        gc->unk6A0 = (s64) arg1->unk6A0;
        gc->unk6A8 = (s64) arg1->unk6A8;
        gc->unk6B0 = (s64) arg1->unk6B0;
    }
    var_a3_2 = arg2 & 0x80;
    if (arg2 & 0x10000) {
        gc->unk720 = arg1->unk720;
        gc->unk728 = arg1->unk728;
        gc->unk730 = arg1->unk730;
        gc->unk738 = arg1->unk738;
        gc->unk740 = arg1->unk740;
        gc->unk748 = arg1->unk748;
        temp_a3_3 = gc->unk6A0 & ~0x800000;
        gc->unk6A0 = temp_a3_3;
        gc->unk6A0 = (arg1->unk6A0 & 0x800000) | temp_a3_3;
        gc->unk6B0 = (s32) arg1->unk6B0;
        gc->unk6B4 = arg1->unk6B4;
        var_a3_2 = arg2 & 0x80;
    }
    var_a0_3 = 0xA;
    if (var_a3_2 != 0) {
        var_a1_3 = 0;
        do {
            temp_v0_3 = var_a1_3 + &gc->unk5D4;
            temp_at_4 = var_a1_3 + (arg1 + 0x5D4);
            var_a1_3 += 4;
            var_a0_3 -= 1;
            *temp_v0_3 = *temp_at_4;
        } while (var_a0_3 > 0);
        temp_v1 = gc->unk6A0 & ~0x20;
        gc->unk6A0 = temp_v1;
        gc->unk6A0 = (arg1->unk6A0 & 0x20) | temp_v1;
    }
    var_at = arg2 & 0x40;
    if (arg2 & 0x8000) {
        gc->unk704 = arg1->unk704;
        gc->unk708 = arg1->unk708;
        gc->unk70C = arg1->unk70C;
        gc->unk710 = arg1->unk710;
        gc->unk714 = arg1->unk714;
        gc->unk718 = arg1->unk718;
        gc->unk71C = arg1->unk71C;
        var_at = arg2 & 0x40;
    }
    var_v1 = arg2 & 4;
    if (var_at != 0) {
        gc->unk510 = arg1->unk510;
        gc->unk514 = arg1->unk514;
        gc->unk518 = arg1->unk518;
        gc->unk51C = arg1->unk51C;
        gc->unk520 = arg1->unk520;
        gc->unk524 = arg1->unk524;
        var_a0_4 = 0xA;
        gc->unk528 = arg1->unk528;
        var_a1_4 = 0;
        gc->unk52C = arg1->unk52C;
        do {
            temp_v1_2 = var_a1_4 + &gc->unk530;
            temp_v0_4 = var_a1_4 + (arg1 + 0x530);
            var_a1_4 += 8;
            var_a0_4 -= 1;
            *temp_v1_2 = *temp_v0_4;
        } while (var_a0_4 > 0);
        var_a1_5 = 0xA;
        var_a0_5 = 0;
        do {
            temp_a3_4 = var_a0_5 + &gc->unk580;
            temp_v1_3 = var_a0_5 + (arg1 + 0x580);
            var_a0_5 += 8;
            var_a1_5 -= 1;
            *temp_a3_4 = *temp_v1_3;
        } while (var_a1_5 > 0);
        memcpy(gc->unk5D0, arg1->unk5D0, gc->unkD00 * 0x74);
        temp_at_5 = gc->unk6A0 & ~0xC0;
        gc->unk6A0 = temp_at_5;
        gc->unk6A0 = (arg1->unk6A0 & 0xC0) | temp_at_5;
        gc->unk6A8 = (s32) arg1->unk6A8;
        var_v1 = arg2 & 4;
    }
    if (var_v1 != 0) {
        gc->unk1BC = arg1->unk1BC;
        gc->unk1C0 = arg1->unk1C0;
        gc->unk1C4 = arg1->unk1C4;
        gc->unk1C8 = arg1->unk1C8;
        gc->unk1CA = arg1->unk1CA;
        temp_at_6 = gc->unk6A0 & ~0x300;
        gc->unk6A0 = temp_at_6;
        gc->unk6A0 = (arg1->unk6A0 & 0x300) | temp_at_6;
    }
    var_a3_3 = arg2 & 0x20;
    if (arg2 & 0x20000) {
        gc->unk750 = arg1->unk750;
        var_a3_3 = arg2 & 0x20;
    }
    var_at_2 = arg2 & 2;
    if (var_a3_3 != 0) {
        var_a0_6 = 0xF;
        gc->unk47C = arg1->unk47C;
        var_a2 = 0;
        temp_a4_2 = &gc->unk268;
        temp_a5 = arg1 + 0x268;
        gc->unk480 = arg1->unk480;
        do {
            temp_a3_5 = var_a2 + temp_a4_2;
            temp_v1_4 = var_a2 + temp_a5;
            var_a2 += 8;
            var_a0_6 -= 1;
            *temp_a3_5 = *temp_v1_4;
        } while (var_a0_6 > 0);
        temp_a6 = *(var_a2 + temp_a5);
        temp_a7 = var_a2 + temp_a4_2;
        *temp_a7 = temp_a6;
        temp_a4_3 = gc->unk6A0 & ~0x0E000000;
        gc->unk6A0 = temp_a4_3;
        temp_a3_6 = ((arg1->unk6A0 & 0x0E000000) | temp_a4_3) & ~0x30000000;
        gc->unk6A0 = temp_a3_6;
        temp_a2_2 = (arg1->unk6A0 & 0x30000000) | temp_a3_6;
        gc->unk6A0 = temp_a2_2;
        __glCopyColorTableScaleBias(arg1 + 0x1358, &gc->unk1358, (void *) temp_a2_2, temp_a3_6, (s32 *)0x30000000, (s32 *)0x0E000000, temp_a6, temp_a7);
        var_at_2 = arg2 & 2;
    }
    var_v0 = arg2 & 8;
    if (var_at_2 != 0) {
        gc->unk1B0 = arg1->unk1B0;
        gc->unk1B4 = arg1->unk1B4;
        gc->unk1B8 = arg1->unk1B8;
        temp_v1_5 = gc->unk6A0 & ~0x400;
        gc->unk6A0 = temp_v1_5;
        gc->unk6A0 = (arg1->unk6A0 & 0x400) | temp_v1_5;
        var_v0 = arg2 & 8;
    }
    var_a3_4 = arg2 & 0x10;
    if (var_v0 != 0) {
        gc->unk1CC = arg1->unk1CC;
        gc->unk1D0 = arg1->unk1D0;
        gc->unk1D4 = arg1->unk1D4;
        gc->unk1D8 = arg1->unk1D8;
        gc->unk1DC = arg1->unk1DC;
        gc->unk1E0 = arg1->unk1E0;
        gc->unk1E4 = arg1->unk1E4;
        temp_v1_6 = gc->unk6A0 & (M2C_ERROR(/* Read from unset register $t9 */) + 0x157F88)->unk-39D0;
        gc->unk6A0 = temp_v1_6;
        gc->unk6A0 = (arg1->unk6A0 & 0x01003800) | temp_v1_6;
        temp_a3_7 = gc->unk6A4 & ~0x600;
        gc->unk6A4 = temp_a3_7;
        gc->unk6A4 = (arg1->unk6A4 & 0x600) | temp_a3_7;
        var_a3_4 = arg2 & 0x10;
    }
    var_a0_7 = 0x10;
    if (var_a3_4 != 0) {
        var_a1_6 = 0;
        do {
            temp_v0_5 = var_a1_6 + &gc->unk1E8;
            temp_at_7 = var_a1_6 + (arg1 + 0x1E8);
            var_a1_6 += 8;
            var_a0_7 -= 1;
            *temp_v0_5 = *temp_at_7;
        } while (var_a0_7 > 0);
        temp_v1_7 = gc->unk6A0 & ~0x2000;
        gc->unk6A0 = temp_v1_7;
        gc->unk6A0 = (arg1->unk6A0 & 0x2000) | temp_v1_7;
    }
    var_at_3 = arg2 & 0x400;
    if (arg2 & 0x80000) {
        gc->unk96C = arg1->unk96C;
        gc->unk970 = arg1->unk970;
        gc->unk974 = arg1->unk974;
        gc->unk978 = arg1->unk978;
        temp_v1_8 = gc->unk6A0 & ~0x4000;
        gc->unk6A0 = temp_v1_8;
        gc->unk6A0 = (arg1->unk6A0 & 0x4000) | temp_v1_8;
        var_at_3 = arg2 & 0x400;
    }
    if (var_at_3 != 0) {
        gc->unk620 = arg1->unk620;
        gc->unk628 = arg1->unk628;
        gc->unk630 = arg1->unk630;
        temp_v1_9 = gc->unk6A0 & ~0x8000;
        gc->unk6A0 = temp_v1_9;
        gc->unk6A0 = (arg1->unk6A0 & 0x8000) | temp_v1_9;
    }
    var_a0_8 = 0x1F;
    if (arg2 & 0x40000) {
        var_a1_7 = 0;
        do {
            temp_v0_6 = var_a1_7 + &gc->unk754;
            temp_at_8 = var_a1_7 + (arg1 + 0x754);
            var_a1_7 += 4;
            var_a0_8 -= 1;
            *temp_v0_6 = *temp_at_8;
        } while (var_a0_8 > 0);
        var_a1_8 = 0xF;
        var_a0_9 = 0;
        temp_a4_4 = &gc->unk7D0;
        temp_a5_2 = arg1 + 0x7D0;
        var_a2_2 = 0;
        do {
            temp_v1_10 = var_a0_9 + temp_a4_4;
            temp_v0_7 = var_a0_9 + temp_a5_2;
            var_a0_9 += 8;
            var_a1_8 -= 1;
            *temp_v1_10 = *temp_v0_7;
        } while (var_a1_8 > 0);
        var_a1_9 = 0x1F;
        var_a0_10 = 0xF;
        var_a4 = 0;
        *(var_a0_9 + temp_a4_4) = *(var_a0_9 + temp_a5_2);
        do {
            temp_at_9 = var_a2_2 + &gc->unk84C;
            temp_a3_8 = var_a2_2 + (arg1 + 0x84C);
            var_a2_2 += 4;
            var_a1_9 -= 1;
            *temp_at_9 = *temp_a3_8;
        } while (var_a1_9 > 0);
        temp_a5_3 = &gc->unk8C8;
        temp_a6_2 = arg1 + 0x8C8;
        do {
            temp_v0_8 = var_a4 + temp_a5_3;
            temp_at_10 = var_a4 + temp_a6_2;
            var_a4 += 8;
            var_a0_10 -= 1;
            *temp_v0_8 = *temp_at_10;
        } while (var_a0_10 > 0);
        *(var_a4 + temp_a5_3) = *(var_a4 + temp_a6_2);
        gc->unk94C = arg1->unk94C;
        gc->unk950 = arg1->unk950;
        gc->unk954 = arg1->unk954;
        gc->unk958 = arg1->unk958;
        gc->unk95C = arg1->unk95C;
        gc->unk960 = arg1->unk960;
        gc->unk964 = arg1->unk964;
        gc->unk968 = arg1->unk968;
        memcpy(gc->unk944, arg1->unk944, gc->unkD08 * 0xE0);
        memcpy(gc->unk948, arg1->unk948, gc->unkD0C * 0x24);
        temp_at_11 = gc->unk6A0 & 0x3FC0FFFF;
        gc->unk6A0 = temp_at_11;
        gc->unk6A0 = (arg1->unk6A0 & 0xC03F0000) | temp_at_11;
    }
    var_v0_2 = arg2 & 0x800;
    if (arg2 & 0x1000) {
        gc->unk670 = arg1->unk670;
        memcpy(gc->unk674, arg1->unk674, gc->unkD04 * 0x10);
        temp_ra = gc->unk6A0 & ~0x400000;
        gc->unk6A0 = temp_ra;
        gc->unk6A0 = (arg1->unk6A0 & 0x400000) | temp_ra;
        var_v0_2 = arg2 & 0x800;
    }
    if (var_v0_2 != 0) {
        gc->unk638 = arg1->unk638;
        gc->unk640 = arg1->unk640;
        gc->unk648 = arg1->unk648;
        gc->unk650 = arg1->unk650;
        gc->unk658 = arg1->unk658;
        gc->unk660 = arg1->unk660;
        gc->unk668 = arg1->unk668;
    }
}
