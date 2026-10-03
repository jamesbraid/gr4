typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x30];                  /* maybe part of gcState[0xD]? */
    /* 0x00C8 */ enum GLenum unkC8;                 /* inferred */
    /* 0x00CC */ f32 unkCC;                         /* inferred */
    /* 0x00D0 */ f32 unkD0;                         /* inferred */
    /* 0x00D4 */ f32 unkD4;                         /* inferred */
    /* 0x00D8 */ char padD8[0x30];                  /* maybe part of unkD4[0xD]? */
    /* 0x0108 */ enum GLenum unk108;                /* inferred */
    /* 0x010C */ f32 unk10C;                        /* inferred */
    /* 0x0110 */ f32 unk110;                        /* inferred */
    /* 0x0114 */ f32 unk114;                        /* inferred */
    /* 0x0118 */ char pad118[0x150];                /* maybe part of unk114[0x55]? */
    /* 0x0268 */ enum GLenum unk268;                /* inferred */
    /* 0x026C */ enum GLenum unk26C;                /* inferred */
    /* 0x0270 */ enum GLenum unk270;                /* inferred */
    /* 0x0274 */ enum GLenum unk274;                /* inferred */
    /* 0x0278 */ enum GLenum unk278;                /* inferred */
    /* 0x027C */ enum GLenum unk27C;                /* inferred */
    /* 0x0280 */ enum GLenum unk280;                /* inferred */
    /* 0x0284 */ enum GLenum unk284;                /* inferred */
    /* 0x0288 */ enum GLenum unk288;                /* inferred */
    /* 0x028C */ enum GLenum unk28C;                /* inferred */
    /* 0x0290 */ char pad290[0x40];                 /* maybe part of unk28C[0x11]? */
    /* 0x02D0 */ enum GLenum unk2D0;                /* inferred */
    /* 0x02D4 */ enum GLenum unk2D4;                /* inferred */
    /* 0x02D8 */ enum GLenum unk2D8;                /* inferred */
    /* 0x02DC */ enum GLenum unk2DC;                /* inferred */
    /* 0x02E0 */ u8 unk2E0;                         /* inferred */
    /* 0x02E1 */ u8 unk2E1;                         /* inferred */
    /* 0x02E2 */ char pad2E2[0x14E];                /* maybe part of unk2E1[0x14F]? */
    /* 0x0430 */ u8 unk430;                         /* inferred */
    /* 0x0431 */ u8 unk431;                         /* inferred */
    /* 0x0432 */ char pad432[2];                    /* maybe part of unk431[3]? */
    /* 0x0434 */ enum GLenum unk434;                /* inferred */
    /* 0x0438 */ enum GLenum unk438;                /* inferred */
    /* 0x043C */ enum GLenum unk43C;                /* inferred */
    /* 0x0440 */ enum GLenum unk440;                /* inferred */
    /* 0x0444 */ enum GLenum unk444;                /* inferred */
    /* 0x0448 */ enum GLenum unk448;                /* inferred */
    /* 0x044C */ char pad44C[8];                    /* maybe part of unk448[3]? */
    /* 0x0454 */ u8 unk454;                         /* inferred */
    /* 0x0455 */ u8 unk455;                         /* inferred */
    /* 0x0456 */ char pad456[2];                    /* maybe part of unk455[3]? */
    /* 0x0458 */ enum GLenum unk458;                /* inferred */
    /* 0x045C */ enum GLenum unk45C;                /* inferred */
    /* 0x0460 */ enum GLenum unk460;                /* inferred */
    /* 0x0464 */ enum GLenum unk464;                /* inferred */
    /* 0x0468 */ enum GLenum unk468;                /* inferred */
    /* 0x046C */ enum GLenum unk46C;                /* inferred */
    /* 0x0470 */ char pad470[0x10];                 /* maybe part of unk46C[5]? */
    /* 0x0480 */ enum GLenum unk480;                /* inferred */
    /* 0x0484 */ char pad484[0x18C];                /* maybe part of unk480[0x64]? */
    /* 0x0610 */ enum GLenum unk610;                /* inferred */
    /* 0x0614 */ f32 unk614;                        /* inferred */
    /* 0x0618 */ f32 unk618;                        /* inferred */
    /* 0x061C */ f32 unk61C;                        /* inferred */
    /* 0x0620 */ char pad620[0xAC];                 /* maybe part of unk61C[0x2C]? */
    /* 0x06CC */ enum GLenum unk6CC;                /* inferred */
    /* 0x06D0 */ f32 unk6D0;                        /* inferred */
    /* 0x06D4 */ f32 unk6D4;                        /* inferred */
    /* 0x06D8 */ f32 unk6D8;                        /* inferred */
    /* 0x06DC */ char pad6DC[0x18];                 /* maybe part of unk6D8[7]? */
    /* 0x06F4 */ enum GLenum unk6F4;                /* inferred */
    /* 0x06F8 */ u8 unk6F8;                         /* inferred */
    /* 0x06F9 */ u8 unk6F9;                         /* inferred */
    /* 0x06FA */ u8 unk6FA;                         /* inferred */
    /* 0x06FB */ u8 unk6FB;                         /* inferred */
    /* 0x06FC */ char pad6FC[4];                    /* maybe part of unk6FB[5]? */
    /* 0x0700 */ enum GLenum unk700;                /* inferred */
    /* 0x0704 */ enum GLenum unk704;                /* inferred */
    /* 0x0708 */ enum GLenum unk708;                /* inferred */
    /* 0x070C */ enum GLenum unk70C;                /* inferred */
    /* 0x0710 */ enum GLenum unk710;                /* inferred */
    /* 0x0714 */ enum GLenum unk714;                /* inferred */
    /* 0x0718 */ char pad718[8];                    /* maybe part of unk714[3]? */
    /* 0x0720 */ enum GLenum unk720;                /* inferred */
    /* 0x0724 */ f32 unk724;                        /* inferred */
    /* 0x0728 */ char pad728[4];
    /* 0x072C */ enum GLenum unk72C;                /* inferred */
    /* 0x0730 */ enum GLenum unk730;                /* inferred */
    /* 0x0734 */ f32 unk734;                        /* inferred */
    /* 0x0738 */ char pad738[4];
    /* 0x073C */ enum GLenum unk73C;                /* inferred */
    /* 0x0740 */ f32 unk740;                        /* inferred */
    /* 0x0744 */ f32 unk744;                        /* inferred */
    /* 0x0748 */ char pad748[4];
    /* 0x074C */ s32 unk74C;                        /* inferred */
    /* 0x0750 */ enum GLenum unk750;                /* inferred */
    /* 0x0754 */ char pad754[0x4BC];                /* maybe part of unk750[0x130]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ enum GLenum error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[3];                    /* maybe part of yInverted[4]? */
    /* 0x0CD0 */ f32 unkCD0;                        /* inferred */
    /* 0x0CD4 */ char padCD4[0x14];                 /* maybe part of unkCD0[6]? */
    /* 0x0CE8 */ f32 unkCE8;                        /* inferred */
    /* 0x0CEC */ char padCEC[0x14];                 /* maybe part of unkCE8[6]? */
    /* 0x0D00 */ enum GLenum unkD00;                /* inferred */
    /* 0x0D04 */ enum GLenum unkD04;                /* inferred */
    /* 0x0D08 */ char padD08[8];                    /* maybe part of unkD04[3]? */
    /* 0x0D10 */ enum GLenum unkD10;                /* inferred */
    /* 0x0D14 */ s32 unkD14;                        /* inferred */
    /* 0x0D18 */ char padD18[0x4C];                 /* maybe part of unkD14[0x14]? */
    /* 0x0D64 */ enum GLenum unkD64;                /* inferred */
    /* 0x0D68 */ char padD68[4];
    /* 0x0D6C */ s32 unkD6C;                        /* inferred */
    /* 0x0D70 */ enum GLenum unkD70;                /* inferred */
    /* 0x0D74 */ char padD74[4];
    /* 0x0D78 */ enum GLenum unkD78;                /* inferred */
    /* 0x0D7C */ f32 unkD7C;                        /* inferred */
    /* 0x0D80 */ enum GLenum unkD80;                /* inferred */
    /* 0x0D84 */ enum GLenum unkD84;                /* inferred */
    /* 0x0D88 */ f32 unkD88;                        /* inferred */
    /* 0x0D8C */ enum GLenum unkD8C;                /* inferred */
    /* 0x0D90 */ enum GLenum unkD90;                /* inferred */
    /* 0x0D94 */ enum GLenum unkD94;                /* inferred */
    /* 0x0D98 */ enum GLenum unkD98;                /* inferred */
    /* 0x0D9C */ enum GLenum unkD9C;                /* inferred */
    /* 0x0DA0 */ enum GLenum unkDA0;                /* inferred */
    /* 0x0DA4 */ enum GLenum unkDA4;                /* inferred */
    /* 0x0DA8 */ enum GLenum unkDA8;                /* inferred */
    /* 0x0DAC */ enum GLenum unkDAC;                /* inferred */
    /* 0x0DB0 */ char padDB0[0x434];                /* maybe part of unkDAC[0x10E]? */
    /* 0x11E4 */ enum GLenum unk11E4;               /* inferred */
    /* 0x11E8 */ enum GLenum unk11E8;               /* inferred */
    /* 0x11EC */ char pad11EC[0x18];                /* maybe part of unk11E8[7]? */
    /* 0x1204 */ enum GLenum unk1204;               /* inferred */
    /* 0x1208 */ char pad1208[0x44];                /* maybe part of unk1204[0x12]? */
    /* 0x124C */ enum GLenum unk124C;               /* inferred */
    /* 0x1250 */ enum GLenum unk1250;               /* inferred */
    /* 0x1254 */ char pad1254[0x64];                /* maybe part of unk1250[0x1A]? */
    /* 0x12B8 */ enum GLenum unk12B8;               /* inferred */
    /* 0x12BC */ enum GLenum unk12BC;               /* inferred */
    /* 0x12C0 */ char pad12C0[4];
    /* 0x12C4 */ enum GLenum unk12C4;               /* inferred */
    /* 0x12C8 */ enum GLenum unk12C8;               /* inferred */
    /* 0x12CC */ char pad12CC[8];                   /* maybe part of unk12C8[3]? */
    /* 0x12D4 */ enum GLenum unk12D4;               /* inferred */
    /* 0x12D8 */ char pad12D8[4];
    /* 0x12DC */ enum GLenum unk12DC;               /* inferred */
    /* 0x12E0 */ enum GLenum unk12E0;               /* inferred */
    /* 0x12E4 */ char pad12E4[8];                   /* maybe part of unk12E0[3]? */
    /* 0x12EC */ enum GLenum unk12EC;               /* inferred */
    /* 0x12F0 */ enum GLenum unk12F0;               /* inferred */
    /* 0x12F4 */ char pad12F4[4];
    /* 0x12F8 */ enum GLenum unk12F8;               /* inferred */
    /* 0x12FC */ enum GLenum unk12FC;               /* inferred */
    /* 0x1300 */ char pad1300[8];                   /* maybe part of unk12FC[3]? */
    /* 0x1308 */ enum GLenum unk1308;               /* inferred */
    /* 0x130C */ char pad130C[4];
    /* 0x1310 */ enum GLenum unk1310;               /* inferred */
    /* 0x1314 */ enum GLenum unk1314;               /* inferred */
    /* 0x1318 */ char pad1318[8];                   /* maybe part of unk1314[3]? */
    /* 0x1320 */ enum GLenum unk1320;               /* inferred */
    /* 0x1324 */ enum GLenum unk1324;               /* inferred */
    /* 0x1328 */ char pad1328[4];
    /* 0x132C */ enum GLenum unk132C;               /* inferred */
    /* 0x1330 */ enum GLenum unk1330;               /* inferred */
    /* 0x1334 */ char pad1334[0xC];                 /* maybe part of unk1330[4]? */
    /* 0x1340 */ enum GLenum unk1340;               /* inferred */
    /* 0x1344 */ enum GLenum unk1344;               /* inferred */
    /* 0x1348 */ char pad1348[0x1A44];              /* maybe part of unk1344[0x692]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x98];
    /* 0x31B8 */ s32 unk31B8;                       /* inferred */
    /* 0x31BC */ s32 unk31BC;                       /* inferred */
    /* 0x31C0 */ s32 unk31C0;                       /* inferred */
    /* 0x31C4 */ s32 unk31C4;                       /* inferred */
    /* 0x31C8 */ char pad31C8[0x49B5];              /* maybe part of unk31C4[0x126E]? */
    /* 0x7B7D */ u8 unk7B7D;                        /* inferred */
    /* 0x7B7E */ char pad7B7E[0x16];                /* maybe part of unk7B7D[0x17]? */
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

extern ? SYMBOL_LOCATION;
extern ? sub_0dbf0000;

void __glMgrDoGet(__GLcontext *gc, s64 arg1, s64 arg2, ...) {
    s64 sp578;
    s64 sp570;
    s64 sp550;
    s64 sp548;
    s64 sp540;
    s64 sp538;
    s64 sp530;
    s64 sp528;
    f32 sp524;
    void *sp520;
    s32 sp39C;
    s32 sp398;
    s32 sp394;
    enum GLenum sp390;                              /* compiler-managed */
    enum GLenum *sp38C;
    enum GLenum *sp388;
    f32 sp204;
    f32 sp200;
    f32 sp1FC;
    enum GLenum sp1F8;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    enum GLenum sp68;
    u8 sp3;
    u8 sp2;
    u8 sp1;
    u8 sp0;
    __GLcontext *temp_a1;
    __GLcontext *temp_s0;
    enum GLenum *temp_a3;
    enum GLenum *temp_a3_10;
    enum GLenum *temp_a3_11;
    enum GLenum *temp_a3_12;
    enum GLenum *temp_a3_13;
    enum GLenum *temp_a3_14;
    enum GLenum *temp_a3_15;
    enum GLenum *temp_a3_16;
    enum GLenum *temp_a3_17;
    enum GLenum *temp_a3_18;
    enum GLenum *temp_a3_19;
    enum GLenum *temp_a3_20;
    enum GLenum *temp_a3_21;
    enum GLenum *temp_a3_2;
    enum GLenum *temp_a3_3;
    enum GLenum *temp_a3_4;
    enum GLenum *temp_a3_5;
    enum GLenum *temp_a3_6;
    enum GLenum *temp_a3_7;
    enum GLenum *temp_a3_8;
    enum GLenum *temp_a3_9;
    enum GLenum *temp_a5_15;
    enum GLenum *temp_a5_16;
    enum GLenum *temp_a5_18;
    enum GLenum *temp_a5_19;
    enum GLenum *temp_a5_20;
    enum GLenum *temp_a5_21;
    enum GLenum *temp_a5_22;
    enum GLenum *temp_a5_23;
    enum GLenum *temp_a5_27;
    enum GLenum *temp_a5_28;
    enum GLenum *temp_a5_29;
    enum GLenum *temp_a5_2;
    enum GLenum *temp_a5_31;
    enum GLenum *temp_a5_32;
    enum GLenum *temp_a5_33;
    enum GLenum *temp_a5_3;
    enum GLenum *temp_a5_4;
    enum GLenum *temp_a5_7;
    enum GLenum *temp_a5_8;
    enum GLenum *temp_a5_9;
    enum GLenum *temp_a6_6;
    enum GLenum *temp_at;
    enum GLenum *temp_at_5;
    enum GLenum *temp_at_6;
    enum GLenum *temp_at_7;
    enum GLenum *var_s1;
    enum GLenum temp_f1;
    enum GLenum var_a0_2;
    f32 *temp_a2;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a1_2;
    s32 temp_s1;
    s32 var_a1;
    s32 var_a4;
    s64 temp_a5;
    s64 temp_a5_11;
    s64 temp_a5_12;
    s64 temp_a5_13;
    s64 var_a0;
    s64 var_ra;
    u64 temp_a0;
    u64 temp_a0_2;
    u64 temp_a0_3;
    u8 temp_a5_10;
    u8 temp_a5_14;
    u8 temp_a5_26;
    u8 temp_a5_30;
    u8 temp_a5_5;
    u8 temp_a6_3;
    u8 temp_a6_4;
    u8 temp_a6_5;
    u8 temp_a6_7;
    u8 temp_a6_8;
    u8 var_a5;
    u8 var_a6;
    u8 var_a6_2;
    void *temp_a5_17;
    void *temp_a5_24;
    void *temp_a5_25;
    void *temp_a5_6;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_9;
    void *temp_at_2;
    void *temp_at_3;
    void *temp_at_4;
    void *temp_at_8;
    void *temp_t3;
    void *temp_v1;
    void *temp_v1_2;

    var_ra = saved_reg_ra;
    var_a4 = 0;
    var_s1 = &sp390;
    sp530 = arg2;
    sp528 = arg1;
    sp38C = &sp68;
    sp388 = &sp1F8;
    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a1 = temp_s0 + 0x10000;
        temp_a2 = temp_s0->unk925C;
        var_a5 = (u32) gc < 0xD33U;
        if (temp_a2 != NULL) {
            if (temp_s0->unk9260 != 0) {
                goto block_3;
            }
            if ((u32) gc >= 0xBC0U) {
                if ((u32) gc >= 0xBC1U) {
                    var_a5 = (u32) gc < 0xBF3U;
                    if ((u32) gc >= 0xBF2U) {
                        if (var_a5 == 0) {
                            if ((u32) gc >= 0xC21U) {
                                if ((u32) gc >= 0xC22U) {
                                    var_a5 = (u32) gc < 0xC24U;
                                    if ((u32) gc >= 0xC23U) {
                                        var_a6 = 0x8009;
                                        if (var_a5 == 0) {
                                            var_a5 = (u32) gc < 0xD33U;
                                            if (gc != (__GLcontext *)0x8009) {
                                                /* Duplicate return node #310. Try simplifying control flow for better match */
                                                __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                                                return;
                                            }
                                            goto block_4;
                                        }
                                        goto block_3;
                                    }
                                    var_a6 = 0xC22;
                                    if (gc == (__GLcontext *)0xC22) {
                                        goto block_3;
                                    }
                                    /* Duplicate return node #310. Try simplifying control flow for better match */
                                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                                    return;
                                }
                                goto block_3;
                            }
                            var_a6 = (u32) gc < 0xC11U;
                            if (var_a6 == 0) {
                                if ((u32) gc >= 0xC12U) {
                                    if (gc == (__GLcontext *)0xC20) {
                                        goto block_3;
                                    }
                                    /* Duplicate return node #310. Try simplifying control flow for better match */
                                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                                    return;
                                }
                                goto block_3;
                            }
                            var_a5 = 0xC10;
                            if (gc == (__GLcontext *)0xC10) {
                                goto block_3;
                            }
                            /* Duplicate return node #310. Try simplifying control flow for better match */
                            __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                            return;
                        }
                        goto block_3;
                    }
                    var_a5 = (u32) gc < 0xBE2U;
                    if ((u32) gc >= 0xBE1U) {
                        var_a6 = (u32) gc < 0xBF0U;
                        if (var_a5 == 0) {
                            if (var_a6 == 0) {
                                if ((u32) gc >= 0xBF1U) {
                                    if (gc == (__GLcontext *)0xBF1) {
                                        goto block_3;
                                    }
                                    /* Duplicate return node #310. Try simplifying control flow for better match */
                                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                                    return;
                                }
                                goto block_3;
                            }
                            if (gc == (__GLcontext *)0xBE2) {
                                goto block_3;
                            }
                            /* Duplicate return node #310. Try simplifying control flow for better match */
                            __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                            return;
                        }
                        goto block_3;
                    }
                    var_a5 = (u32) gc < 0xBD0U;
                    var_a6 = (u32) gc < 0xBD1U;
                    if (var_a5 == 0) {
                        if (var_a6 == 0) {
                            if (gc == (__GLcontext *)0xBE0) {
                                goto block_3;
                            }
                            /* Duplicate return node #310. Try simplifying control flow for better match */
                            __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                            return;
                        }
                        goto block_3;
                    }
                    var_a5 = (u32) gc < 0xBC3U;
                    if ((u32) gc >= 0xBC2U) {
                        if (var_a5 != 0) {
                            goto block_3;
                        }
                        /* Duplicate return node #310. Try simplifying control flow for better match */
                        __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                        return;
                    }
                    if (gc == (__GLcontext *)0xBC1) {
                        goto block_3;
                    }
                    /* Duplicate return node #310. Try simplifying control flow for better match */
                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                    return;
                }
                goto block_3;
            }
            if ((u32) gc >= 0xB91U) {
                if ((u32) gc >= 0xB92U) {
                    var_a5 = (u32) gc < 0xB96U;
                    if ((u32) gc >= 0xB95U) {
                        var_a6 = (u32) gc < 0xB97U;
                        if (var_a5 == 0) {
                            if (var_a6 == 0) {
                                if ((u32) gc >= 0xB98U) {
                                    if (gc == (__GLcontext *)0xB98) {
                                        goto block_3;
                                    }
                                    /* Duplicate return node #310. Try simplifying control flow for better match */
                                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                                    return;
                                }
                                goto block_3;
                            }
                            var_a6 = 0xB96;
                            if (gc == (__GLcontext *)0xB96) {
                                goto block_3;
                            }
                            /* Duplicate return node #310. Try simplifying control flow for better match */
                            __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                            return;
                        }
                        goto block_3;
                    }
                    var_a5 = (u32) gc < 0xB93U;
                    var_a6 = (u32) gc < 0xB94U;
                    if (var_a5 == 0) {
                        if (var_a6 == 0) {
                            if (gc == (__GLcontext *)0xB94) {
                                goto block_3;
                            }
                            /* Duplicate return node #310. Try simplifying control flow for better match */
                            __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                            return;
                        }
                        goto block_3;
                    }
                    if (gc == (__GLcontext *)0xB92) {
                        goto block_3;
                    }
                    /* Duplicate return node #310. Try simplifying control flow for better match */
                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                    return;
                }
                goto block_3;
            }
            var_a5 = (u32) gc < 0xB73U;
            if ((u32) gc >= 0xB72U) {
                var_a6 = (u32) gc < 0xB74U;
                if (var_a5 == 0) {
                    if (var_a6 == 0) {
                        if ((u32) gc >= 0xB75U) {
                            if (gc == (__GLcontext *)0xB90) {
                                goto block_3;
                            }
                            /* Duplicate return node #310. Try simplifying control flow for better match */
                            __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                            return;
                        }
                        goto block_3;
                    }
                    var_a6 = 0xB73;
                    if (gc == (__GLcontext *)0xB73) {
                        goto block_3;
                    }
                    /* Duplicate return node #310. Try simplifying control flow for better match */
                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                    return;
                }
                goto block_3;
            }
            var_a5 = (u32) gc < 0xB70U;
            var_a6 = (u32) gc < 0xB71U;
            if (var_a5 == 0) {
                if (var_a6 == 0) {
                    if (gc == (__GLcontext *)0xB71) {
                        goto block_3;
                    }
                    /* Duplicate return node #310. Try simplifying control flow for better match */
                    __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                    return;
                }
                goto block_3;
            }
            if ((u32) gc >= 0xB20U) {
                if ((u32) gc < 0xB21U) {
block_3:
                    var_a5 = (u32) gc < 0xD33U;
                    goto block_4;
                }
                /* Duplicate return node #310. Try simplifying control flow for better match */
                __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                return;
            }
            var_a5 = (u32) gc < 0xD33U;
            if (gc != (__GLcontext *)0xB10) {
                __glDoGet(sp528, sp530, 0, var_a5, var_a6, 0x10000);
                return;
            }
            goto block_4;
        }
block_4:
        if (var_a5 == 0) {
            if ((u32) gc >= 0xD34U) {
                if ((u32) gc >= 0x8020U) {
                    if ((u32) gc > 0x8020U) {
                        if ((u32) gc >= 0x8087U) {
                            if ((u32) gc > 0x8087U) {
                                if ((u32) gc >= 0x80BAU) {
                                    if ((u32) gc > 0x80BAU) {
                                        var_a5 = (u32) gc < 0x8141U;
                                        var_a6_2 = (u32) gc > 0x8141U;
                                        if (var_a5 == 0) {
                                            if (var_a6_2 != 0) {
                                                if ((u32) gc >= 0x814FU) {
                                                    if ((u32) gc > 0x814FU) {
                                                        var_a5 = (u32) gc < 0x817CU;
                                                        var_a6_2 = (u32) gc > 0x817CU;
                                                        if (var_a5 == 0) {
                                                            if (var_a6_2 != 0) {
                                                                if (gc == (__GLcontext *)0xBEAD) {
                                                                    goto block_22;
                                                                }
                                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                                return;
                                                            }
                                                            goto block_842;
                                                        }
                                                        var_a5 = 0x817B;
                                                        if (gc == (__GLcontext *)0x817B) {
block_842:
                                                            var_a6_2 = temp_s0->unk9CA5;
                                                            if (var_a6_2 == 0) {
                                                                __glDoGet(sp528, sp530, 0, var_a5, var_a6_2, 0x10000);
                                                                var_ra = sp570;
                                                                goto block_27;
                                                            }
                                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                            return;
                                                        }
                                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                        return;
                                                    }
                                                    goto block_365;
                                                }
                                                var_a6_2 = (u32) gc < 0x8144U;
                                                if (var_a6_2 == 0) {
                                                    if ((u32) gc > 0x8144U) {
                                                        if (gc == (__GLcontext *)0x8145) {
                                                            var_s1 = &sp390 + 4;
                                                            sp390 = temp_s0->unk8580;
                                                            goto block_27;
                                                        }
                                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                        return;
                                                    }
                                                    var_s1 = &sp390 + 4;
                                                    sp390 = temp_s0->unk857C;
                                                    goto block_27;
                                                }
                                                var_a5 = (u32) gc < 0x8143U;
                                                var_a6_2 = (u32) gc > 0x8143U;
                                                if (var_a5 == 0) {
                                                    if (var_a6_2 == 0) {
                                                        var_s1 = &sp390 + 4;
                                                        sp390 = temp_s0->unk8578;
                                                        goto block_27;
                                                    }
                                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                    return;
                                                }
                                                var_a6_2 = 0x8142;
                                                if (gc == (__GLcontext *)0x8142) {
                                                    var_s1 = &sp390 + 4;
                                                    sp390 = temp_s0->unk8574;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk8570;
                                            goto block_27;
                                        }
                                        var_a5 = (u32) gc < 0x80D2U;
                                        var_a6_2 = (u32) gc > 0x80D2U;
                                        if (var_a5 == 0) {
                                            if (var_a6_2 != 0) {
                                                if ((u32) gc >= 0x813FU) {
                                                    var_a5 = 0x8140;
                                                    if ((u32) gc > 0x813FU) {
                                                        if (gc == (__GLcontext *)0x8140) {
                                                            var_s1 = &sp390 + 4;
                                                            sp390 = temp_s0->unk856C;
                                                            goto block_27;
                                                        }
                                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                        return;
                                                    }
                                                    sp390 = GL_LIGHT0;
                                                    var_s1 = &sp390 + 4;
                                                    goto block_27;
                                                }
                                                var_a6_2 = 0x813E;
                                                if (gc == (__GLcontext *)0x813E) {
                                                    sp520 = sp + 1;
                                                    sp0 = (u8) temp_s0->unk81D8;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            sp520 = sp + 1;
                                            sp0 = temp_s0->unk8458;
                                            goto block_27;
                                        }
                                        if ((u32) gc >= 0x80D0U) {
                                            var_a5 = 0x80D1;
                                            if ((u32) gc > 0x80D0U) {
                                                if (gc == (__GLcontext *)0x80D1) {
                                                    sp520 = sp + 1;
                                                    sp0 = temp_s0->unk841C;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            sp520 = sp + 1;
                                            sp0 = temp_s0->unk83A4;
                                            goto block_27;
                                        }
                                        var_a5 = (u32) gc > 0x80BCU;
                                        if ((u32) gc >= 0x80BCU) {
                                            if (var_a5 == 0) {
                                                sp520 = sp + 1;
                                                sp0 = temp_s0->unk83E0;
                                                goto block_27;
                                            }
                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                            return;
                                        }
                                        var_a6_2 = 0x80BB;
                                        if (gc == (__GLcontext *)0x80BB) {
                                            sp388 = &sp1F8 + 4;
                                            sp1F8 = temp_s0->unk8278;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk8274;
                                    goto block_27;
                                }
                                if ((u32) gc >= 0x80B1U) {
                                    if ((u32) gc > 0x80B1U) {
                                        var_a6_2 = (u32) gc > 0x80B6U;
                                        if ((u32) gc >= 0x80B6U) {
                                            if (var_a6_2 != 0) {
                                                if ((u32) gc >= 0x80B8U) {
                                                    var_a5 = 0x80B9;
                                                    if ((u32) gc > 0x80B8U) {
                                                        var_a6_2 = (u8) (&sp1F8 + 4);
                                                        if (gc == (__GLcontext *)0x80B9) {
                                                            sp388 = (enum GLenum *) var_a6_2;
                                                            sp1F8 = temp_s0->unk8270;
                                                            goto block_27;
                                                        }
                                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                        return;
                                                    }
                                                    sp388 = &sp1F8 + 4;
                                                    sp1F8 = temp_s0->unk826C;
                                                    goto block_27;
                                                }
                                                var_a5 = (u8) (&sp1F8 + 4);
                                                if (gc == (__GLcontext *)0x80B7) {
                                                    sp388 = (enum GLenum *) var_a5;
                                                    sp1F8 = temp_s0->unk8268;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            sp388 = &sp1F8 + 4;
                                            sp1F8 = temp_s0->unk8264;
                                            goto block_27;
                                        }
                                        var_a5 = (u32) gc < 0x80B4U;
                                        var_a6_2 = (u32) gc > 0x80B4U;
                                        if (var_a5 == 0) {
                                            if (var_a6_2 != 0) {
                                                if (gc == (__GLcontext *)0x80B5) {
                                                    sp388 = &sp1F8 + 4;
                                                    sp1F8 = temp_s0->unk8260;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            sp388 = &sp1F8 + 4;
                                            sp1F8 = temp_s0->unk825C;
                                            goto block_27;
                                        }
                                        var_a5 = (u32) gc > 0x80B3U;
                                        if ((u32) gc >= 0x80B3U) {
                                            var_a6_2 = 2;
                                            if (var_a5 == 0) {
                                                sp390 = GL_LINE_LOOP;
                                                var_s1 = &sp390 + 4;
                                                goto block_27;
                                            }
                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                            return;
                                        }
                                        var_a5 = 0x80B2;
                                        if (gc == (__GLcontext *)0x80B2) {
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk200, 1, 1, 0, 0x80B2U, var_a6_2, 0x10000);
                                            var_ra = sp570;
                                            var_s1 = &sp390 + 4;
                                            sp390 = ((u32) (M2C_ERROR(/* Read from unset register $v0 */) - SYMBOL_LOCATION.unk1F0) >> 4) + 1;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    sp550 = 0;
                                    do {
                                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk1E0 + sp550, 0, 1, sp550);
                                        temp_a5 = sp550 + 1;
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        sp550 = temp_a5;
                                        temp_at = sp388 + 4;
                                        sp388 = temp_at;
                                        temp_at->unk-4 = sp524;
                                    } while (temp_a5 != 0x10);
                                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                    var_ra = sp570;
                                    goto block_27;
                                }
                                if ((u32) gc >= 0x808CU) {
                                    if ((u32) gc > 0x808CU) {
                                        var_a5 = (u32) gc > 0x8094U;
                                        if ((u32) gc >= 0x8094U) {
                                            var_a6_2 = 0x8096;
                                            if (var_a5 != 0) {
                                                var_a4 = 1;
                                                if (gc == (__GLcontext *)0x8096) {
block_365:
                                                    var_a4 += 2;
                                                    goto block_366;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            goto block_22;
                                        }
                                        var_a6_2 = 0x808D;
                                        if (gc == (__GLcontext *)0x808D) {
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk1344;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk1340;
                                    goto block_27;
                                }
                                var_a5 = (u32) gc < 0x808AU;
                                var_a6_2 = (u32) gc > 0x808AU;
                                if (var_a5 == 0) {
                                    if (var_a6_2 != 0) {
                                        if (gc == (__GLcontext *)0x808B) {
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk1330;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk132C;
                                    goto block_27;
                                }
                                var_a6_2 = (u32) gc < 0x8089U;
                                if (var_a6_2 == 0) {
                                    if ((u32) gc <= 0x8089U) {
                                        var_s1 = &sp390 + 4;
                                        sp390 = temp_s0->unk1324;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                var_a6_2 = 0x8088;
                                if (gc == (__GLcontext *)0x8088) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk1320;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk1314;
                            goto block_27;
                        }
                        var_a6_2 = (u32) gc < 0x8075U;
                        if (var_a6_2 == 0) {
                            if ((u32) gc > 0x8075U) {
                                var_a5 = (u32) gc > 0x807EU;
                                if ((u32) gc >= 0x807EU) {
                                    if (var_a5 != 0) {
                                        if ((u32) gc >= 0x8083U) {
                                            if ((u32) gc > 0x8083U) {
                                                var_a5 = (u32) gc > 0x8085U;
                                                if ((u32) gc >= 0x8085U) {
                                                    var_a6_2 = 0x8086;
                                                    if (var_a5 != 0) {
                                                        if (gc == (__GLcontext *)0x8086) {
                                                            var_s1 = &sp390 + 4;
                                                            sp390 = temp_s0->unk1310;
                                                            goto block_27;
                                                        }
                                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                        return;
                                                    }
                                                    var_s1 = &sp390 + 4;
                                                    sp390 = temp_s0->unk1308;
                                                    goto block_27;
                                                }
                                                var_a6_2 = 0x8084;
                                                if (gc == (__GLcontext *)0x8084) {
                                                    var_s1 = &sp390 + 4;
                                                    sp390 = temp_s0->unk12FC;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk12F8;
                                            goto block_27;
                                        }
                                        var_a6_2 = (u32) gc < 0x8081U;
                                        if (var_a6_2 == 0) {
                                            if ((u32) gc > 0x8081U) {
                                                if (gc == (__GLcontext *)0x8082) {
                                                    var_s1 = &sp390 + 4;
                                                    sp390 = temp_s0->unk12F0;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk12EC;
                                            goto block_27;
                                        }
                                        if ((u32) gc >= 0x8080U) {
                                            if ((u32) gc <= 0x8080U) {
                                                var_s1 = &sp390 + 4;
                                                sp390 = temp_s0->unk12E0;
                                                goto block_27;
                                            }
                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                            return;
                                        }
                                        if (gc == (__GLcontext *)0x807F) {
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk12DC;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk12D4;
                                    goto block_27;
                                }
                                var_a5 = (u32) gc > 0x807AU;
                                if ((u32) gc >= 0x807AU) {
                                    if (var_a5 != 0) {
                                        var_a6_2 = (u32) gc < 0x807CU;
                                        if (var_a6_2 == 0) {
                                            if ((u32) gc > 0x807CU) {
                                                if (gc == (__GLcontext *)0x807D) {
                                                    var_s1 = &sp390 + 4;
                                                    sp390 = temp_s0->unk12C8;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk12C4;
                                            goto block_27;
                                        }
                                        var_a5 = 0x807B;
                                        if (gc == (__GLcontext *)0x807B) {
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unk12BC;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk12B8;
                                    goto block_27;
                                }
                                if ((u32) gc >= 0x8078U) {
                                    var_a5 = 0x8079;
                                    if ((u32) gc > 0x8078U) {
                                        if (gc == (__GLcontext *)0x8079) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                var_a5 = (u32) gc > 0x8077U;
                                if ((u32) gc >= 0x8077U) {
                                    if (var_a5 == 0) {
                                        goto block_22;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                if (gc == (__GLcontext *)0x8076) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            goto block_22;
                        }
                        var_a5 = (u32) gc < 0x8069U;
                        var_a6_2 = (u32) gc > 0x8069U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                goto block_203;
                            }
                            if ((u32) gc >= 0x806EU) {
                                if ((u32) gc > 0x806EU) {
                                    var_a5 = (u32) gc < 0x8073U;
                                    var_a6_2 = (u32) gc > 0x8073U;
                                    if (var_a5 == 0) {
                                        if (var_a6_2 != 0) {
                                            if (gc == (__GLcontext *)0x8074) {
                                                goto block_22;
                                            }
                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                            return;
                                        }
                                        sp390 = 0x40;
                                        var_s1 = &sp390 + 4;
                                        goto block_27;
                                    }
                                    if (gc == (__GLcontext *)0x806F) {
                                        goto block_22;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                var_s1 = &sp390 + 4;
                                sp390 = temp_s0->unk46C;
                                goto block_27;
                            }
                            if ((u32) gc >= 0x806CU) {
                                var_a5 = 0x806D;
                                if ((u32) gc > 0x806CU) {
                                    if (gc == (__GLcontext *)0x806D) {
                                        var_s1 = &sp390 + 4;
                                        sp390 = temp_s0->unk468;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                var_s1 = &sp390 + 4;
                                sp390 = temp_s0->unk448;
                                goto block_27;
                            }
                            var_a5 = (u32) gc < 0x806BU;
                            var_a6_2 = (u32) gc > 0x806BU;
                            if (var_a5 == 0) {
                                if (var_a6_2 == 0) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk444;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_a6_2 = 0x806A;
                            if (gc == (__GLcontext *)0x806A) {
block_366:
                                var_a4 += 2;
block_203:
                                var_a4 += 2;
                                goto block_204;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        if ((u32) gc >= 0x802EU) {
                            if ((u32) gc > 0x802EU) {
                                var_a5 = (u32) gc > 0x8039U;
                                if ((u32) gc >= 0x8039U) {
                                    var_a6_2 = 0x8068;
                                    if (var_a5 != 0) {
                                        if (gc == (__GLcontext *)0x8068) {
block_204:
                                            temp_t3 = (var_a4 * 0xCC) + temp_s0;
                                            if ((temp_t3 != ((-1 << 0x10) | 0x75D0)) && (temp_t3->unk8AF4 == NULL)) {
                                                mgrTM_RefreshDim(temp_t3 + 0x8A30, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                var_ra = sp570;
                                            }
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_t3->unk8AF4->unk54;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk4D0, 1, 1, 0, var_a5, 0x8068U, 0x10000);
                                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                    var_ra = sp570;
                                    temp_a5_2 = sp388 + 4;
                                    sp388 = temp_a5_2;
                                    temp_a5_2->unk-4 = sp524;
                                    goto block_27;
                                }
                                var_a5 = (u32) gc < 0x8038U;
                                var_a6_2 = (u32) gc > 0x8038U;
                                if (var_a5 == 0) {
                                    if (var_a6_2 == 0) {
                                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk4CC, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        var_ra = sp570;
                                        temp_a5_3 = sp388 + 4;
                                        sp388 = temp_a5_3;
                                        temp_a5_3->unk-4 = sp524;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                if (gc == (__GLcontext *)0x8037) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            sp520 = sp + 1;
                            sp0 = temp_s0->unk820C;
                            goto block_27;
                        }
                        if ((u32) gc >= 0x8023U) {
                            if ((u32) gc > 0x8023U) {
                                var_a6_2 = (u8) (sp + 1);
                                if (gc == (__GLcontext *)0x8024) {
                                    sp520 = (void *) var_a6_2;
                                    sp0 = temp_s0->unk81DC;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            sp388 = &sp1F8 + 4;
                            sp1F8 = temp_s0->unk8388;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0x8022U;
                        var_a6_2 = (u32) gc > 0x8022U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                sp388 = &sp1F8 + 4;
                                sp1F8 = temp_s0->unk8384;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        if (gc == (__GLcontext *)0x8021) {
                            sp388 = &sp1F8 + 4;
                            sp1F8 = temp_s0->unk8380;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    sp388 = &sp1F8 + 4;
                    sp1F8 = temp_s0->unk837C;
                    goto block_27;
                }
                if ((u32) gc >= 0xDB5U) {
                    if ((u32) gc >= 0xDB6U) {
                        if ((u32) gc >= 0x3005U) {
                            if ((u32) gc >= 0x3006U) {
                                if ((u32) gc >= 0x8005U) {
                                    if ((u32) gc > 0x8005U) {
                                        var_a5 = (u32) gc > 0x801CU;
                                        if ((u32) gc >= 0x801CU) {
                                            if (var_a5 != 0) {
                                                var_a6_2 = (u32) gc < 0x801EU;
                                                if (var_a6_2 == 0) {
                                                    if ((u32) gc > 0x801EU) {
                                                        var_a5 = (u8) (&sp1F8 + 4);
                                                        if (gc == (__GLcontext *)0x801F) {
                                                            sp388 = (enum GLenum *) var_a5;
                                                            sp1F8 = temp_s0->unk8378;
                                                            goto block_27;
                                                        }
                                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                        return;
                                                    }
                                                    sp388 = &sp1F8 + 4;
                                                    sp1F8 = temp_s0->unk8374;
                                                    goto block_27;
                                                }
                                                var_a5 = 0x801D;
                                                var_a6_2 = (u8) (&sp1F8 + 4);
                                                if (gc == (__GLcontext *)0x801D) {
                                                    sp388 = (enum GLenum *) var_a6_2;
                                                    sp1F8 = temp_s0->unk8370;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            sp388 = &sp1F8 + 4;
                                            sp1F8 = temp_s0->unk836C;
                                            goto block_27;
                                        }
                                        if ((u32) gc >= 0x8011U) {
                                            if ((u32) gc > 0x8011U) {
                                                var_a6_2 = (u8) (sp + 1);
                                                if (gc == (__GLcontext *)0x8012) {
                                                    sp520 = (void *) var_a6_2;
                                                    sp0 = temp_s0->unk8334;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            sp520 = sp + 1;
                                            sp0 = temp_s0->unk82E4;
                                            goto block_27;
                                        }
                                        var_a6_2 = (u32) gc < 0x8010U;
                                        if (var_a6_2 == 0) {
                                            var_a5 = (u8) (sp + 1);
                                            if ((u32) gc <= 0x8010U) {
                                                sp520 = (void *) var_a5;
                                                sp0 = temp_s0->unk8294;
                                                goto block_27;
                                            }
                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                            return;
                                        }
                                        if (gc == (__GLcontext *)0x8009) {
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk3E0, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                            sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                                            var_ra = sp570;
                                            var_s1 = &sp390 + 4;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    sp38C = &sp68 + 4;
                                    sp68 = temp_s0->unk6CC;
                                    sp38C = &sp68 + 8;
                                    sp6C = temp_s0->unk6D0;
                                    sp38C = &sp68 + 0xC;
                                    sp70 = temp_s0->unk6D4;
                                    sp38C = &sp68 + 0x10;
                                    sp74 = temp_s0->unk6D8;
                                    goto block_27;
                                }
                                var_a6_2 = (u32) gc < 0x4004U;
                                if (var_a6_2 == 0) {
                                    if ((u32) gc >= 0x4005U) {
                                        var_a5 = (u32) gc < 0x4007U;
                                        if ((u32) gc >= 0x4006U) {
                                            var_a6_2 = 0x4007;
                                            if (var_a5 == 0) {
                                                if (gc == (__GLcontext *)0x4007) {
                                                    goto block_22;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            goto block_22;
                                        }
                                        if (gc == (__GLcontext *)0x4005) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                var_a5 = (u32) gc < 0x4003U;
                                if ((u32) gc >= 0x4002U) {
                                    var_a6_2 = 0x4003;
                                    if (var_a5 == 0) {
                                        if (gc == (__GLcontext *)0x4003) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                var_a5 = (u32) gc < 0x4002U;
                                if ((u32) gc >= 0x4001U) {
                                    if (var_a5 != 0) {
                                        goto block_22;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                if (gc == (__GLcontext *)0x4000) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            goto block_22;
                        }
                        var_a5 = (u32) gc < 0xDF1U;
                        if (var_a5 == 0) {
                            if ((u32) gc >= 0xDF2U) {
                                if ((u32) gc >= 0x3001U) {
                                    var_a5 = (u32) gc < 0x3003U;
                                    if ((u32) gc >= 0x3002U) {
                                        var_a6_2 = (u32) gc < 0x3004U;
                                        if (var_a5 == 0) {
                                            if (var_a6_2 == 0) {
                                                if (gc == (__GLcontext *)0x3004) {
                                                    goto block_22;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            goto block_22;
                                        }
                                        var_a5 = 0x3002;
                                        if (gc == (__GLcontext *)0x3002) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                var_a6_2 = (u32) gc < 0x2A00U;
                                if (var_a6_2 == 0) {
                                    if ((u32) gc >= 0x2A01U) {
                                        if (gc == (__GLcontext *)0x3000) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk4D4, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                    var_ra = sp570;
                                    temp_a5_4 = sp388 + 4;
                                    sp388 = temp_a5_4;
                                    temp_a5_4->unk-4 = sp524;
                                    goto block_27;
                                }
                                if ((u32) gc >= 0xDF4U) {
                                    if ((u32) gc < 0xDF5U) {
                                        var_s1 = &sp390 + 4;
                                        sp390 = temp_s0->unk1204;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                if (gc == (__GLcontext *)0xDF2) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk11E8;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk11E4;
                            goto block_27;
                        }
                        if ((u32) gc >= 0xDD1U) {
                            var_a5 = (u32) gc < 0xDE0U;
                            if ((u32) gc >= 0xDD2U) {
                                var_a6_2 = (u32) gc < 0xDE1U;
                                if (var_a5 == 0) {
                                    if (var_a6_2 == 0) {
                                        if (gc == (__GLcontext *)0xDE1) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                if ((u32) gc >= 0xDD3U) {
                                    if ((u32) gc < 0xDD4U) {
                                        sp390 = temp_s0->unk73C;
                                        var_s1 = &sp390 + 8;
                                        sp394 = temp_s0->unk74C;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                if (gc == (__GLcontext *)0xDD2) {
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk730;
                                    sp388 = &sp1F8 + 8;
                                    sp1FC = temp_s0->unk734;
                                    sp388 = &sp1F8 + 0xC;
                                    sp200 = temp_s0->unk740;
                                    sp388 = &sp1F8 + 0x10;
                                    sp204 = temp_s0->unk744;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk72C;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xDB8U;
                        var_a6_2 = (u32) gc < 0xDB9U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                var_a5 = (u8) (&sp1F8 + 4);
                                if (gc == (__GLcontext *)0xDD0) {
                                    sp388 = (enum GLenum *) var_a5;
                                    sp1F8 = temp_s0->unk720;
                                    sp388 = &sp1F8 + 8;
                                    sp1FC = temp_s0->unk724;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            goto block_22;
                        }
                        var_a6_2 = (u32) gc < 0xDB7U;
                        if (var_a6_2 == 0) {
                            if ((u32) gc < 0xDB8U) {
                                goto block_22;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        if (gc == (__GLcontext *)0xDB6) {
                            goto block_22;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    goto block_22;
                }
                if ((u32) gc >= 0xD5AU) {
                    if ((u32) gc >= 0xD5BU) {
                        if ((u32) gc >= 0xD95U) {
                            var_a6_2 = (u32) gc < 0xDB1U;
                            if ((u32) gc >= 0xD96U) {
                                if (var_a6_2 == 0) {
                                    if ((u32) gc >= 0xDB2U) {
                                        var_a5 = (u32) gc < 0xDB4U;
                                        if ((u32) gc >= 0xDB3U) {
                                            var_a6_2 = 0xDB4;
                                            if (var_a5 == 0) {
                                                if (gc == (__GLcontext *)0xDB4) {
                                                    goto block_22;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            goto block_22;
                                        }
                                        var_a6_2 = 0xDB2;
                                        if (gc == (__GLcontext *)0xDB2) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                if ((u32) gc >= 0xD98U) {
                                    var_a5 = 0xDB0;
                                    if ((u32) gc >= 0xD99U) {
                                        if (gc == (__GLcontext *)0xDB0) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                var_a5 = (u32) gc < 0xD97U;
                                var_a6_2 = (u32) gc < 0xD98U;
                                if (var_a5 == 0) {
                                    if (var_a6_2 != 0) {
                                        goto block_22;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                var_a5 = 0xD96;
                                if (gc == (__GLcontext *)0xD96) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            goto block_22;
                        }
                        var_a5 = (u32) gc < 0xD91U;
                        var_a6_2 = (u32) gc < 0xD92U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if ((u32) gc >= 0xD93U) {
                                    var_a5 = 0xD94;
                                    if ((u32) gc >= 0xD94U) {
                                        if (gc == (__GLcontext *)0xD94) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                if (gc == (__GLcontext *)0xD92) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            goto block_22;
                        }
                        if ((u32) gc >= 0xD80U) {
                            var_a5 = 0xD90;
                            if ((u32) gc >= 0xD81U) {
                                if (gc == (__GLcontext *)0xD90) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            goto block_22;
                        }
                        var_a5 = (u32) gc < 0xD71U;
                        if ((u32) gc >= 0xD70U) {
                            if (var_a5 != 0) {
                                var_s1 = &sp390 + 4;
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk3E8, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                                var_ra = sp570;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_a6_2 = 0xD5B;
                        if (gc == (__GLcontext *)0xD5B) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->modes.accumAlphaBits;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->modes.accumBlueBits;
                    goto block_27;
                }
                var_a6_2 = (u32) gc < 0xD51U;
                if (var_a6_2 == 0) {
                    if ((u32) gc >= 0xD52U) {
                        var_a5 = (u32) gc < 0xD57U;
                        if ((u32) gc >= 0xD56U) {
                            var_a6_2 = (u32) gc < 0xD58U;
                            if (var_a5 == 0) {
                                if (var_a6_2 == 0) {
                                    if ((u32) gc >= 0xD59U) {
                                        if (gc == (__GLcontext *)0xD59) {
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->modes.accumGreenBits;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->modes.accumRedBits;
                                    goto block_27;
                                }
                                if (gc == (__GLcontext *)0xD57) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->modes.stencilBits;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->modes.depthBits;
                            goto block_27;
                        }
                        if ((u32) gc >= 0xD54U) {
                            var_a5 = 0xD55;
                            if ((u32) gc >= 0xD55U) {
                                if (gc == (__GLcontext *)0xD55) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->modes.alphaBits;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->modes.blueBits;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xD53U;
                        var_a6_2 = (u32) gc < 0xD54U;
                        if (var_a5 == 0) {
                            if (var_a6_2 != 0) {
                                var_s1 = &sp390 + 4;
                                sp390 = temp_s0->modes.greenBits;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        if (gc == (__GLcontext *)0xD52) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->modes.redBits;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->modes.indexBits;
                    goto block_27;
                }
                if ((u32) gc >= 0xD38U) {
                    var_a5 = (u32) gc < 0xD3BU;
                    if ((u32) gc >= 0xD39U) {
                        var_a6_2 = (u32) gc < 0xD3CU;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if (gc == (__GLcontext *)0xD50) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unkD70;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unkD9C;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xD3AU;
                        var_a6_2 = (u32) gc < 0xD3BU;
                        if (var_a5 == 0) {
                            if (var_a6_2 != 0) {
                                sp390 = temp_s0->unkD10;
                                var_s1 = &sp390 + 8;
                                sp394 = temp_s0->unkD14;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_a6_2 = 0xD39;
                        if (gc == (__GLcontext *)0xD39) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unkDAC;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->unkDA8;
                    goto block_27;
                }
                if ((u32) gc >= 0xD36U) {
                    var_a5 = 0xD37;
                    if ((u32) gc >= 0xD37U) {
                        if (gc == (__GLcontext *)0xD37) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unkDA0;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->unkDA4;
                    goto block_27;
                }
                var_a6_2 = (u32) gc < 0xD35U;
                if (var_a6_2 == 0) {
                    if ((u32) gc < 0xD36U) {
                        var_s1 = &sp390 + 4;
                        sp390 = temp_s0->unkD98;
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                if (gc == (__GLcontext *)0xD34) {
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->unkD94;
                    goto block_27;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            var_s1 = &sp390 + 4;
            if (temp_s0->unk9CA5 != 0) {
                sp390 = GL_NEVER;
            } else {
                sp390 = temp_s0->unkD64;
            }
            sp388 = &sp1F8;
            sp38C = &sp68;
            goto block_27;
        }
        if ((u32) gc >= 0xBC0U) {
            if ((u32) gc < 0xBC1U) {
                goto block_22;
            }
            if ((u32) gc >= 0xCB4U) {
                if ((u32) gc < 0xCB5U) {
                    goto block_66;
                }
                if ((u32) gc >= 0xD11U) {
                    if ((u32) gc >= 0xD12U) {
                        if ((u32) gc >= 0xD1AU) {
                            if ((u32) gc >= 0xD1BU) {
                                var_a5 = (u32) gc < 0xD20U;
                                if ((u32) gc >= 0xD1FU) {
                                    var_a6_2 = (u32) gc < 0xD31U;
                                    if (var_a5 == 0) {
                                        if (var_a6_2 == 0) {
                                            if ((u32) gc >= 0xD32U) {
                                                if (gc == (__GLcontext *)0xD32) {
                                                    var_s1 = &sp390 + 4;
                                                    sp390 = temp_s0->unkD04;
                                                    goto block_27;
                                                }
                                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                                return;
                                            }
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unkD00;
                                            goto block_27;
                                        }
                                        if (gc == (__GLcontext *)0xD30) {
                                            var_s1 = &sp390 + 4;
                                            sp390 = temp_s0->unkD90;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk28C;
                                    goto block_27;
                                }
                                if ((u32) gc >= 0xD1DU) {
                                    var_a5 = 0xD1E;
                                    if ((u32) gc >= 0xD1EU) {
                                        var_a6_2 = (u8) (&sp1F8 + 4);
                                        if (gc == (__GLcontext *)0xD1E) {
                                            sp388 = (enum GLenum *) var_a6_2;
                                            sp1F8 = temp_s0->unk278;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk288;
                                    goto block_27;
                                }
                                var_a5 = (u32) gc < 0xD1CU;
                                var_a6_2 = (u32) gc < 0xD1DU;
                                if (var_a5 == 0) {
                                    if (var_a6_2 != 0) {
                                        sp388 = &sp1F8 + 4;
                                        sp1F8 = temp_s0->unk274;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                if (gc == (__GLcontext *)0xD1B) {
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk284;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            sp388 = &sp1F8 + 4;
                            sp1F8 = temp_s0->unk270;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xD16U;
                        var_a6_2 = (u32) gc < 0xD17U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if ((u32) gc >= 0xD18U) {
                                    var_a5 = 0xD19;
                                    if ((u32) gc >= 0xD19U) {
                                        var_a6_2 = (u8) (&sp1F8 + 4);
                                        if (gc == (__GLcontext *)0xD19) {
                                            sp388 = (enum GLenum *) var_a6_2;
                                            sp1F8 = temp_s0->unk280;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk26C;
                                    goto block_27;
                                }
                                if (gc == (__GLcontext *)0xD17) {
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk2D4;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            sp388 = &sp1F8 + 4;
                            sp1F8 = temp_s0->unk2D0;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xD14U;
                        var_a6_2 = (u32) gc < 0xD15U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if (gc == (__GLcontext *)0xD15) {
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unk27C;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            sp388 = &sp1F8 + 4;
                            sp1F8 = temp_s0->unk268;
                            goto block_27;
                        }
                        if ((u32) gc >= 0xD13U) {
                            if ((u32) gc < 0xD14U) {
                                var_s1 = &sp390 + 4;
                                sp390 = temp_s0->unk2DC;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        if (gc == (__GLcontext *)0xD12) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk2D8;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    sp520 = sp + 1;
                    sp0 = temp_s0->unk2E1;
                    goto block_27;
                }
                if ((u32) gc >= 0xCF4U) {
                    if ((u32) gc >= 0xCF5U) {
                        var_a5 = (u32) gc < 0xD04U;
                        if ((u32) gc >= 0xD03U) {
                            var_a6_2 = (u32) gc < 0xD05U;
                            if (var_a5 == 0) {
                                if (var_a6_2 == 0) {
                                    if ((u32) gc >= 0xD06U) {
                                        var_a6_2 = (u8) (sp + 1);
                                        if (gc == (__GLcontext *)0xD10) {
                                            sp520 = (void *) var_a6_2;
                                            sp0 = temp_s0->unk2E0;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk440;
                                    goto block_27;
                                }
                                var_a5 = 0xD04;
                                if (gc == (__GLcontext *)0xD04) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk43C;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk438;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xD01U;
                        var_a6_2 = (u32) gc < 0xD02U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if (gc == (__GLcontext *)0xD02) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk434;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            sp520 = sp + 1;
                            sp0 = temp_s0->unk431;
                            goto block_27;
                        }
                        if ((u32) gc >= 0xD00U) {
                            var_a6_2 = (u8) (sp + 1);
                            if ((u32) gc < 0xD01U) {
                                sp520 = (void *) var_a6_2;
                                sp0 = temp_s0->unk430;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_a5 = 0xCF5;
                        if (gc == (__GLcontext *)0xCF5) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk464;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->unk460;
                    goto block_27;
                }
                var_a5 = (u32) gc < 0xCB9U;
                var_a6_2 = (u32) gc < 0xCBAU;
                if (var_a5 == 0) {
                    if (var_a6_2 == 0) {
                        if ((u32) gc >= 0xCF2U) {
                            var_a5 = 0xCF3;
                            if ((u32) gc >= 0xCF3U) {
                                if (gc == (__GLcontext *)0xCF3) {
                                    var_s1 = &sp390 + 4;
                                    sp390 = temp_s0->unk45C;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk458;
                            goto block_27;
                        }
                        if ((u32) gc >= 0xCF1U) {
                            var_a6_2 = (u8) (sp + 1);
                            if ((u32) gc < 0xCF2U) {
                                sp520 = (void *) var_a6_2;
                                sp0 = temp_s0->unk455;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_a5 = 0xCF0;
                        if (gc == (__GLcontext *)0xCF0) {
                            sp520 = sp + 1;
                            sp0 = temp_s0->unk454;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    goto block_66;
                }
                if ((u32) gc >= 0xCB7U) {
                    var_a5 = 0xCB8;
                    if ((u32) gc >= 0xCB8U) {
                        if (gc == (__GLcontext *)0xCB8) {
                            goto block_66;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    goto block_66;
                }
                var_a6_2 = (u32) gc < 0xCB6U;
                if (var_a6_2 == 0) {
                    if ((u32) gc < 0xCB7U) {
                        goto block_66;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                var_a6_2 = 0xCB5;
                if (gc == (__GLcontext *)0xCB5) {
                    goto block_66;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            if ((u32) gc >= 0xC30U) {
                if ((u32) gc >= 0xC31U) {
                    if ((u32) gc >= 0xC54U) {
                        var_a5 = (u32) gc < 0xCB0U;
                        if ((u32) gc >= 0xC55U) {
                            var_a6_2 = (u32) gc < 0xCB1U;
                            if (var_a5 == 0) {
                                if (var_a6_2 == 0) {
                                    if ((u32) gc >= 0xCB2U) {
                                        var_a5 = 0xCB3;
                                        if ((u32) gc >= 0xCB3U) {
                                            if (gc == (__GLcontext *)0xCB3) {
                                                goto block_66;
                                            }
                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                            return;
                                        }
                                        goto block_66;
                                    }
                                    if (gc == (__GLcontext *)0xCB1) {
                                        goto block_66;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
block_66:
                                var_s1 = &sp390 + 4;
                                sp390 = *(0xFFFF6B78 + (s32) (((((s32) gc * 4) - gc) * 4) + temp_s0));
                                goto block_27;
                            }
                            var_a6_2 = (u32) gc < 0xC62U;
                            if (var_a6_2 == 0) {
                                if ((u32) gc >= 0xC63U) {
                                    if (gc == (__GLcontext *)0xC63) {
                                        goto block_22;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                goto block_22;
                            }
                            var_a5 = (u32) gc < 0xC61U;
                            var_a6_2 = (u32) gc < 0xC62U;
                            if (var_a5 == 0) {
                                if (var_a6_2 != 0) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            if (gc == (__GLcontext *)0xC60) {
                                goto block_22;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_s1 = &sp390 + 4;
                        sp390 = temp_s0->unk714;
                        goto block_27;
                    }
                    if ((u32) gc >= 0xC50U) {
                        var_a5 = (u32) gc < 0xC52U;
                        if ((u32) gc >= 0xC51U) {
                            var_a6_2 = (u32) gc < 0xC53U;
                            if (var_a5 == 0) {
                                if (var_a6_2 == 0) {
                                    if (gc == (__GLcontext *)0xC53) {
                                        var_s1 = &sp390 + 4;
                                        sp390 = temp_s0->unk710;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                var_s1 = &sp390 + 4;
                                sp390 = temp_s0->unk70C;
                                goto block_27;
                            }
                            if (gc == (__GLcontext *)0xC51) {
                                var_s1 = &sp390 + 4;
                                sp390 = temp_s0->unk708;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_s1 = &sp390 + 4;
                        sp390 = temp_s0->unk704;
                        goto block_27;
                    }
                    var_a5 = (u32) gc < 0xC33U;
                    var_a6_2 = (u32) gc < 0xC34U;
                    if (var_a5 == 0) {
                        if (var_a6_2 == 0) {
                            if (gc == (__GLcontext *)0xC40) {
                                var_s1 = &sp390 + 4;
                                sp390 = temp_s0->renderMode;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        sp520 = sp + 1;
                        sp0 = temp_s0->modes.stereoMode;
                        goto block_27;
                    }
                    var_a5 = (u32) gc < 0xC32U;
                    var_a6_2 = (u32) gc < 0xC33U;
                    if (var_a5 == 0) {
                        if (var_a6_2 != 0) {
                            sp520 = sp + 1;
                            sp0 = temp_s0->modes.doubleBufferMode != 0;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_a6_2 = (u8) (sp + 1);
                    if (gc == (__GLcontext *)0xC31) {
                        sp520 = (void *) var_a6_2;
                        sp0 = temp_s0->modes.rgbMode != 0;
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                sp520 = sp + 1;
                sp0 = temp_s0->modes.colorIndexMode != 0;
                goto block_27;
            }
            if ((u32) gc >= 0xC00U) {
                if ((u32) gc >= 0xC01U) {
                    var_a5 = (u32) gc < 0xC21U;
                    if ((u32) gc >= 0xC20U) {
                        var_a6_2 = (u32) gc < 0xC22U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if ((u32) gc >= 0xC23U) {
                                    if (gc == (__GLcontext *)0xC23) {
                                        temp_a5_5 = temp_s0->modes.rgbMode;
                                        if (temp_a5_5 != 0) {
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk4C0, 1, 1, 0, temp_a5_5, var_a6_2, 0x10000);
                                            var_ra = sp570;
                                            temp_a0 = (u64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x20) >> 0x20;
                                            if (temp_a0 & 1) {
                                                temp_at_2 = sp520 + 1;
                                                sp520 = temp_at_2;
                                                temp_at_2->unk-1 = 1;
                                            } else {
                                                temp_at_3 = sp520 + 1;
                                                sp520 = temp_at_3;
                                                temp_at_3->unk-1 = 0;
                                            }
                                            temp_a0_2 = temp_a0 >> 1;
                                            if (temp_a0_2 & 1) {
                                                temp_a6 = sp520 + 1;
                                                sp520 = temp_a6;
                                                temp_a6->unk-1 = 1;
                                            } else {
                                                temp_v1 = sp520 + 1;
                                                sp520 = temp_v1;
                                                temp_v1->unk-1 = 0;
                                            }
                                            temp_a0_3 = temp_a0_2 >> 1;
                                            if (temp_a0_3 & 1) {
                                                temp_v1_2 = sp520 + 1;
                                                sp520 = temp_v1_2;
                                                temp_v1_2->unk-1 = 1;
                                            } else {
                                                temp_a5_6 = sp520 + 1;
                                                sp520 = temp_a5_6;
                                                temp_a5_6->unk-1 = 0;
                                            }
                                            if ((temp_a0_3 >> 1) & 1) {
                                                temp_at_4 = sp520 + 1;
                                                sp520 = temp_at_4;
                                                temp_at_4->unk-1 = 1;
                                            } else {
                                                temp_a6_2 = sp520 + 1;
                                                sp520 = temp_a6_2;
                                                temp_a6_2->unk-1 = 0;
                                            }
                                        } else {
                                            sp520 = sp + 1;
                                            sp0 = temp_s0->unk6F8;
                                            sp520 = sp + 2;
                                            sp1 = temp_s0->unk6F9;
                                            sp520 = sp + 3;
                                            sp2 = temp_s0->unk6FA;
                                            sp520 = sp + 4;
                                            sp3 = temp_s0->unk6FB;
                                        }
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk168, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                temp_a3 = sp38C + 4;
                                sp38C = temp_a3;
                                temp_a3->unk-4 = sp524;
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk16C, 1, 1, (s64) temp_a3);
                                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                temp_a3_2 = temp_a3 + 4;
                                sp38C = temp_a3_2;
                                temp_a3_2->unk-4 = sp524;
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk170, 1, 1, (s64) temp_a3_2);
                                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                temp_a3_3 = temp_a3_2 + 4;
                                sp38C = temp_a3_3;
                                temp_a3_3->unk-4 = sp524;
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk174, 1, 1, (s64) temp_a3_3);
                                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                var_ra = sp570;
                                temp_a5_7 = sp38C + 4;
                                sp38C = temp_a5_7;
                                temp_a5_7->unk-4 = sp524;
                                goto block_27;
                            }
                            var_a5 = 0xC21;
                            if (gc == (__GLcontext *)0xC21) {
                                temp_a6_3 = temp_s0->modes.rgbMode;
                                if (temp_a6_3 != 0) {
                                    sp390 = temp_s0->unk6F4;
                                } else {
                                    temp_s1 = (1 << temp_s0->modes.indexBits) - 1;
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk4C0, 1, 1, 0, 0xC21U, temp_a6_3, 0x10000);
                                    var_ra = sp570;
                                    sp390 = M2C_ERROR(/* Read from unset register $v0 */) & temp_s1;
                                }
                                var_s1 = &sp390 + 4;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk18C, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                        var_ra = sp570;
                        temp_a5_8 = sp388 + 4;
                        sp388 = temp_a5_8;
                        temp_a5_8->unk-4 = sp524;
                        goto block_27;
                    }
                    var_a6_2 = (u32) gc < 0xC10U;
                    if (var_a6_2 == 0) {
                        if ((u32) gc >= 0xC11U) {
                            if (gc == (__GLcontext *)0xC11) {
                                goto block_22;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk430, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                        sp538 = M2C_ERROR(/* Read from unset register $v0 */);
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk434, 1, 1);
                        sp540 = M2C_ERROR(/* Read from unset register $v0 */);
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk438, 1, 1);
                        sp548 = M2C_ERROR(/* Read from unset register $v0 */);
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk43C, 1, 1);
                        var_s1 = &sp390 + 0x10;
                        sp390 = (enum GLenum) sp538;
                        sp394 = (s32) sp540;
                        sp398 = (sp548 - sp538) + 1;
                        sp39C = (M2C_ERROR(/* Read from unset register $v0 */) - sp540) + 1;
                        var_ra = sp570;
                        goto block_27;
                    }
                    var_a6_2 = (u32) gc < 0xC02U;
                    if (var_a6_2 == 0) {
                        if ((u32) gc < 0xC03U) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk480;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_a6_2 = 0xC01;
                    if (gc == (__GLcontext *)0xC01) {
                        var_s1 = &sp390 + 4;
                        sp390 = temp_s0->unk700;
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                var_s1 = &sp390 + 4;
                sp390 = temp_s0->modes.numAuxBuffers;
                goto block_27;
            }
            var_a5 = (u32) gc < 0xBE1U;
            var_a6_2 = (u32) gc < 0xBE2U;
            if (var_a5 == 0) {
                if (var_a6_2 == 0) {
                    if ((u32) gc >= 0xBF1U) {
                        var_a5 = 0xBF2;
                        if ((u32) gc >= 0xBF2U) {
                            if (gc == (__GLcontext *)0xBF2) {
                                goto block_22;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        goto block_22;
                    }
                    var_a5 = (u32) gc < 0xBF0U;
                    var_a6_2 = (u32) gc < 0xBF1U;
                    if (var_a5 == 0) {
                        if (var_a6_2 != 0) {
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk158, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            var_ra = sp570;
                            var_s1 = &sp390 + 4;
                            sp390 = (((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 0x1A) & 0xF) + 0x1500;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    if (gc == (__GLcontext *)0xBE2) {
                        goto block_22;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk314, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                var_ra = sp570;
                var_s1 = &sp390 + 4;
                goto block_27;
            }
            var_a6_2 = (u32) gc < 0xBD0U;
            if (var_a6_2 == 0) {
                if ((u32) gc >= 0xBD1U) {
                    if (gc == (__GLcontext *)0xBE0) {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk318, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                        sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                        var_ra = sp570;
                        var_s1 = &sp390 + 4;
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                goto block_22;
            }
            var_a5 = (u32) gc < 0xBC2U;
            var_a6_2 = (u32) gc < 0xBC3U;
            if (var_a5 == 0) {
                if (var_a6_2 != 0) {
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk94, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                    var_ra = sp570;
                    temp_a5_9 = sp388 + 4;
                    sp388 = temp_a5_9;
                    temp_a5_9->unk-4 = (f32) ((f32) (((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 3) & 0xFFF) / 4095.0f);
                    goto block_27;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            if (gc == (__GLcontext *)0xBC1) {
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk94, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                var_ra = sp570;
                var_s1 = &sp390 + 4;
                sp390 = (M2C_ERROR(/* Read from unset register $v0 */) & 7) + 0x200;
                goto block_27;
            }
            /* Duplicate return node #200. Try simplifying control flow for better match */
            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
            return;
        }
        temp_a5_10 = (u32) gc < 0xB55U;
        if ((u32) gc >= 0xB54U) {
            temp_a6_4 = (u32) gc < 0xB92U;
            if (temp_a5_10 == 0) {
                if (temp_a6_4 == 0) {
                    if ((u32) gc >= 0xB93U) {
                        var_a5 = (u32) gc < 0xBA3U;
                        if ((u32) gc >= 0xBA2U) {
                            temp_a6_5 = (u32) gc < 0xBA7U;
                            if (var_a5 == 0) {
                                if (temp_a6_5 == 0) {
                                    var_a6_2 = (u32) gc < 0xBB0U;
                                    if ((u32) gc < 0xBA8U) {
                                        sp550 = 0;
                                        do {
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk160 + sp550, 0, 1, sp550);
                                            temp_a5_11 = sp550 + 1;
                                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                            sp550 = temp_a5_11;
                                            temp_at_5 = sp388 + 4;
                                            sp388 = temp_at_5;
                                            temp_at_5->unk-4 = sp524;
                                        } while (temp_a5_11 != 0x10);
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        var_ra = sp570;
                                        goto block_27;
                                    }
                                    if (var_a6_2 == 0) {
                                        if ((u32) gc >= 0xBB1U) {
                                            if (gc == (__GLcontext *)0xBB1) {
                                                var_s1 = &sp390 + 4;
                                                sp390 = (s32) (temp_s0->unk31C4 - temp_s0->unk31C0) >> 2;
                                                goto block_27;
                                            }
                                            /* Duplicate return node #200. Try simplifying control flow for better match */
                                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                            return;
                                        }
                                        var_s1 = &sp390 + 4;
                                        sp390 = (s32) (temp_s0->unk31BC - temp_s0->unk31B8) >> 2;
                                        goto block_27;
                                    }
                                    var_a6_2 = 0xBA8;
                                    if (gc == (__GLcontext *)0xBA8) {
                                        sp550 = 0;
                                        do {
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk164 + sp550, 0, 1, sp550);
                                            temp_a5_12 = sp550 + 1;
                                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                            sp550 = temp_a5_12;
                                            temp_at_6 = sp388 + 4;
                                            sp388 = temp_at_6;
                                            temp_at_6->unk-4 = sp524;
                                        } while (temp_a5_12 != 0x10);
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        var_ra = sp570;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                var_a5 = (u32) gc < 0xBA6U;
                                if ((u32) gc >= 0xBA5U) {
                                    var_a6_2 = 0xBA6;
                                    if (var_a5 == 0) {
                                        if (gc == (__GLcontext *)0xBA6) {
                                            sp550 = 0;
                                            do {
                                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk15C + sp550, 0, 1, sp550);
                                                temp_a5_13 = sp550 + 1;
                                                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                                sp550 = temp_a5_13;
                                                temp_at_7 = sp388 + 4;
                                                sp388 = temp_at_7;
                                                temp_at_7->unk-4 = sp524;
                                            } while (temp_a5_13 != 0x10);
                                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                            var_ra = sp570;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk1FC, 1, 1, 0, var_a5, 0xBA6U, 0x10000);
                                    var_ra = sp570;
                                    var_s1 = &sp390 + 4;
                                    sp390 = ((u32) (M2C_ERROR(/* Read from unset register $v0 */) - SYMBOL_LOCATION.unk1EC) >> 4) + 1;
                                    goto block_27;
                                }
                                var_a6_2 = (u32) gc < 0xBA4U;
                                if (var_a6_2 == 0) {
                                    if ((u32) gc < 0xBA5U) {
                                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk1F8, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                        var_ra = sp570;
                                        var_s1 = &sp390 + 4;
                                        sp390 = ((u32) (M2C_ERROR(/* Read from unset register $v0 */) - SYMBOL_LOCATION.unk1E8) >> 4) + 1;
                                        goto block_27;
                                    }
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                if (gc == (__GLcontext *)0xBA3) {
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk1F4, 0, 1, 0, var_a5, var_a6_2, 0x10000);
                                    var_ra = sp570;
                                    var_s1 = &sp390 + 4;
                                    sp390 = ((u32) (M2C_ERROR(/* Read from unset register $v0 */) - SYMBOL_LOCATION.unk1E4) >> 4) + 1;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk250, 1, 1, 0, var_a5, temp_a6_5, 0x10000);
                            sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk254, 1, 1);
                            sp394 = M2C_ERROR(/* Read from unset register $v0 */);
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk258, 1, 1);
                            sp398 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_s1 = &sp390 + 0x10;
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk25C, 1, 1);
                            sp39C = M2C_ERROR(/* Read from unset register $v0 */);
                            var_ra = sp570;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xB97U;
                        var_a6_2 = (u32) gc < 0xB98U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if ((u32) gc >= 0xBA0U) {
                                    var_a5 = 0xBA1;
                                    if ((u32) gc >= 0xBA1U) {
                                        if (gc == (__GLcontext *)0xBA1) {
                                            goto block_22;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk2D8, 0, 1, 0, 0xBA1U, var_a6_2, 0x10000);
                                    var_ra = sp570;
                                    sp390 = M2C_ERROR(/* Read from unset register $v0 */) + 0x1701;
                                    var_s1 = &sp390 + 4;
                                    goto block_27;
                                }
                                var_a6_2 = 0xB98;
                                if (gc == (__GLcontext *)0xB98) {
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk8C, 1, 1, 0, var_a5, 0xB98U, 0x10000);
                                    var_ra = sp570;
                                    var_s1 = &sp390 + 4;
                                    sp390 = ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 8) & 0xFF;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk88, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            var_ra = sp570;
                            var_s1 = &sp390 + 4;
                            sp390 = (u32) (M2C_ERROR(/* Read from unset register $v0 */) & 0xFF000) >> 0xC;
                            goto block_27;
                        }
                        var_a6_2 = (u32) gc < 0xB95U;
                        if (var_a6_2 == 0) {
                            if ((u32) gc >= 0xB96U) {
                                if (gc != (__GLcontext *)0xB96) {
                                    /* Duplicate return node #200. Try simplifying control flow for better match */
                                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                    return;
                                }
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk88, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                temp_a0_4 = ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 9) & 7;
                                var_ra = sp570;
                                switch (temp_a0_4) { /* switch 3; irregular */
                                case 0:             /* switch 3 */
                                    sp390 = GL_KEEP;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 1:             /* switch 3 */
                                    sp390 = GL_ZERO;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 2:             /* switch 3 */
                                    sp390 = GL_REPLACE;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 3:             /* switch 3 */
                                    sp390 = GL_INCR;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 4:             /* switch 3 */
                                    sp390 = GL_DECR;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 5:             /* switch 3 */
                                    sp390 = GL_INVERT;
                                    var_s1 = &sp390 + 4;
                                    break;
                                }
                                goto block_27;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk88, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            temp_a0_5 = ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 6) & 7;
                            var_ra = sp570;
                            switch (temp_a0_5) {    /* switch 2; irregular */
                            case 0:                 /* switch 2 */
                                sp390 = GL_KEEP;
                                var_s1 = &sp390 + 4;
                                break;
                            case 1:                 /* switch 2 */
                                sp390 = GL_ZERO;
                                var_s1 = &sp390 + 4;
                                break;
                            case 2:                 /* switch 2 */
                                sp390 = GL_REPLACE;
                                var_s1 = &sp390 + 4;
                                break;
                            case 3:                 /* switch 2 */
                                sp390 = GL_INCR;
                                var_s1 = &sp390 + 4;
                                break;
                            case 4:                 /* switch 2 */
                                sp390 = GL_DECR;
                                var_s1 = &sp390 + 4;
                                break;
                            case 5:                 /* switch 2 */
                                sp390 = GL_INVERT;
                                var_s1 = &sp390 + 4;
                                break;
                            }
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xB95U;
                        if ((u32) gc >= 0xB94U) {
                            if (var_a5 != 0) {
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk88, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                temp_a0_6 = ((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 3) & 7;
                                var_ra = sp570;
                                switch (temp_a0_6) { /* switch 1; irregular */
                                case 0:             /* switch 1 */
                                    sp390 = GL_KEEP;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 1:             /* switch 1 */
                                    sp390 = GL_ZERO;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 2:             /* switch 1 */
                                    sp390 = GL_REPLACE;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 3:             /* switch 1 */
                                    sp390 = GL_INCR;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 4:             /* switch 1 */
                                    sp390 = GL_DECR;
                                    var_s1 = &sp390 + 4;
                                    break;
                                case 5:             /* switch 1 */
                                    sp390 = GL_INVERT;
                                    var_s1 = &sp390 + 4;
                                    break;
                                }
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_a6_2 = 0xB93;
                        if (gc == (__GLcontext *)0xB93) {
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk8C, 1, 1, 0, var_a5, 0xB93U, 0x10000);
                            var_ra = sp570;
                            sp390 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                            var_s1 = &sp390 + 4;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk88, 1, 1, 0, temp_a5_10, temp_a6_4, 0x10000);
                    var_ra = sp570;
                    var_s1 = &sp390 + 4;
                    sp390 = (M2C_ERROR(/* Read from unset register $v0 */) & 7) + 0x200;
                    goto block_27;
                }
                if ((u32) gc >= 0xB66U) {
                    var_a5 = (u32) gc < 0xB74U;
                    if ((u32) gc >= 0xB67U) {
                        var_a6_2 = (u32) gc < 0xB75U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if ((u32) gc >= 0xB90U) {
                                    var_a5 = 0xB91;
                                    if ((u32) gc >= 0xB91U) {
                                        if (gc == (__GLcontext *)0xB91) {
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk190, 1, 1, 0, 0xB91U, var_a6_2, 0x10000);
                                            sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                                            var_ra = sp570;
                                            var_s1 = &sp390 + 4;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    goto block_22;
                                }
                                if (gc == (__GLcontext *)0xB80) {
                                    temp_a5_14 = temp_s0->unk7B7D;
                                    if (temp_a5_14 != 0) {
                                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk178, 1, 1, 0, temp_a5_14, var_a6_2, 0x10000);
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        temp_a3_4 = sp38C + 4;
                                        sp38C = temp_a3_4;
                                        temp_a3_4->unk-4 = sp524;
                                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk17C, 1, 1, (s64) temp_a3_4);
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        temp_a3_5 = temp_a3_4 + 4;
                                        sp38C = temp_a3_5;
                                        temp_a3_5->unk-4 = sp524;
                                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk180, 1, 1, (s64) temp_a3_5);
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        temp_a3_6 = temp_a3_5 + 4;
                                        sp38C = temp_a3_6;
                                        temp_a3_6->unk-4 = sp524;
                                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk184, 1, 1, (s64) temp_a3_6);
                                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                        var_ra = sp570;
                                        temp_a5_15 = sp38C + 4;
                                        sp38C = temp_a5_15;
                                        temp_a5_15->unk-4 = sp524;
                                    } else {
                                        sp38C = &sp68 + 4;
                                        sp68 = temp_s0->unk610;
                                        sp38C = &sp68 + 8;
                                        sp6C = temp_s0->unk614;
                                        sp38C = &sp68 + 0xC;
                                        sp70 = temp_s0->unk618;
                                        sp38C = &sp68 + 0x10;
                                        sp74 = temp_s0->unk61C;
                                    }
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk90, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            var_ra = sp570;
                            var_s1 = &sp390 + 4;
                            sp390 = (M2C_ERROR(/* Read from unset register $v0 */) & 7) + 0x200;
                            goto block_27;
                        }
                        var_a6_2 = (u32) gc < 0xB72U;
                        if (var_a6_2 == 0) {
                            if ((u32) gc >= 0xB73U) {
                                if (gc == (__GLcontext *)0xB73) {
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk188, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                    var_ra = sp570;
                                    temp_a5_16 = sp38C + 4;
                                    sp38C = temp_a5_16;
                                    temp_a5_16->unk-4 = (f32) ((f32) ((u64) (M2C_ERROR(/* Read from unset register $v0 */) << 0x20) >> 0x20) / 1.6777215e7f);
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk90, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            var_ra = sp570;
                            if ((0x0FFFFFF0 & M2C_ERROR(/* Read from unset register $v0 */)) != 0x0FFFFFF0) {
                                temp_at_8 = sp520 + 1;
                                sp520 = temp_at_8;
                                temp_at_8->unk-1 = 0;
                            } else {
                                temp_a5_17 = sp520 + 1;
                                sp520 = temp_a5_17;
                                temp_a5_17->unk-1 = 1;
                            }
                            goto block_27;
                        }
                        var_a6_2 = (u32) gc < 0xB71U;
                        if (var_a6_2 == 0) {
                            if ((u32) gc < 0xB72U) {
                                goto block_22;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_a6_2 = 0xB70;
                        if (gc == (__GLcontext *)0xB70) {
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk248, 1, 1, 0, var_a5, 0xB70U, 0x10000);
                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                            temp_a3_7 = sp38C + 4;
                            sp38C = temp_a3_7;
                            temp_a3_7->unk-4 = sp524;
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk24C, 1, 1, (s64) temp_a3_7);
                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_ra = sp570;
                            temp_a5_18 = sp38C + 4;
                            sp38C = temp_a5_18;
                            temp_a5_18->unk-4 = sp524;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk294, 1, 1, 0, var_a5, temp_a6_4, 0x10000);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a3_8 = sp388 + 4;
                    sp388 = temp_a3_8;
                    temp_a3_8->unk-4 = sp524;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk298, 1, 1, (s64) temp_a3_8);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a3_9 = temp_a3_8 + 4;
                    sp388 = temp_a3_9;
                    temp_a3_9->unk-4 = sp524;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk29C, 1, 1, (s64) temp_a3_9);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a3_10 = temp_a3_9 + 4;
                    sp388 = temp_a3_10;
                    temp_a3_10->unk-4 = sp524;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk3FC, 1, 1, (s64) temp_a3_10);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_ra = sp570;
                    temp_a5_19 = sp388 + 4;
                    sp388 = temp_a5_19;
                    temp_a5_19->unk-4 = sp524;
                    goto block_27;
                }
                var_a5 = (u32) gc < 0xB61U;
                var_a6_2 = (u32) gc < 0xB62U;
                if (var_a5 == 0) {
                    if (var_a6_2 == 0) {
                        if ((u32) gc >= 0xB64U) {
                            var_a5 = 0xB65;
                            if ((u32) gc >= 0xB65U) {
                                if (gc == (__GLcontext *)0xB65) {
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk280, 1, 1, 0, 0xB65U, var_a6_2, 0x10000);
                                    sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                                    var_ra = sp570;
                                    var_s1 = &sp390 + 4;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk28C, 1, 1, 0, 0xB65U, var_a6_2, 0x10000);
                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_ra = sp570;
                            temp_a5_20 = sp388 + 4;
                            sp388 = temp_a5_20;
                            temp_a5_20->unk-4 = sp524;
                            goto block_27;
                        }
                        if ((u32) gc >= 0xB63U) {
                            if ((u32) gc < 0xB64U) {
                                __Mgr_ReturnMode(SYMBOL_LOCATION.unk288, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                var_ra = sp570;
                                temp_a5_21 = sp388 + 4;
                                sp388 = temp_a5_21;
                                temp_a5_21->unk-4 = sp524;
                                goto block_27;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        if (gc == (__GLcontext *)0xB62) {
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk284, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_ra = sp570;
                            temp_a5_22 = sp388 + 4;
                            sp388 = temp_a5_22;
                            temp_a5_22->unk-4 = sp524;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk290, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                    sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_ra = sp570;
                    var_s1 = &sp390 + 4;
                    goto block_27;
                }
                if ((u32) gc >= 0xB57U) {
                    var_a5 = 0xB60;
                    if ((u32) gc >= 0xB58U) {
                        if (gc == (__GLcontext *)0xB60) {
                            goto block_22;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    goto block_22;
                }
                var_a6_2 = (u32) gc < 0xB56U;
                if (var_a6_2 == 0) {
                    if ((u32) gc < 0xB57U) {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk27C, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                        sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                        var_ra = sp570;
                        var_s1 = &sp390 + 4;
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                var_a6_2 = 0xB55;
                if (gc == (__GLcontext *)0xB55) {
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk278, 1, 1, 0, var_a5, 0xB55U, 0x10000);
                    sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_ra = sp570;
                    var_s1 = &sp390 + 4;
                    goto block_27;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            __Mgr_ReturnMode(SYMBOL_LOCATION.unk2A0, 1, 1, 0, temp_a5_10, temp_a6_4, 0x10000);
            sp390 = M2C_ERROR(/* Read from unset register $v0 */);
            var_ra = sp570;
            var_s1 = &sp390 + 4;
            goto block_27;
        }
        if ((u32) gc >= 0xB24U) {
            var_a5 = (u32) gc < 0xB42U;
            if ((u32) gc >= 0xB25U) {
                if (var_a5 == 0) {
                    if ((u32) gc >= 0xB43U) {
                        if ((u32) gc >= 0xB50U) {
                            var_a5 = (u32) gc < 0xB52U;
                            if ((u32) gc >= 0xB51U) {
                                var_a6_2 = (u32) gc < 0xB53U;
                                if (var_a5 == 0) {
                                    if (var_a6_2 == 0) {
                                        if (gc == (__GLcontext *)0xB53) {
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk26C, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                            temp_a3_11 = sp38C + 4;
                                            sp38C = temp_a3_11;
                                            temp_a3_11->unk-4 = sp524;
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk270, 1, 1, (s64) temp_a3_11);
                                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                            temp_a3_12 = temp_a3_11 + 4;
                                            sp38C = temp_a3_12;
                                            temp_a3_12->unk-4 = sp524;
                                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk274, 1, 1, (s64) temp_a3_12);
                                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                                            temp_a6_6 = sp38C + 4;
                                            sp38C = temp_a6_6;
                                            temp_a6_6->unk-4 = sp524;
                                            var_ra = sp570;
                                            temp_a5_23 = sp38C + 4;
                                            sp38C = temp_a5_23;
                                            temp_a5_23->unk-4 = 1.0f;
                                            goto block_27;
                                        }
                                        /* Duplicate return node #200. Try simplifying control flow for better match */
                                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                        return;
                                    }
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk268, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                    var_ra = sp570;
                                    temp_a5_24 = sp520 + 1;
                                    sp520 = temp_a5_24;
                                    temp_a5_24->unk-1 = (s8) M2C_ERROR(/* Read from unset register $v0 */);
                                    goto block_27;
                                }
                                if (gc == (__GLcontext *)0xB51) {
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk264, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                    var_ra = sp570;
                                    temp_a5_25 = sp520 + 1;
                                    sp520 = temp_a5_25;
                                    temp_a5_25->unk-1 = (s8) M2C_ERROR(/* Read from unset register $v0 */);
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            goto block_22;
                        }
                        var_a6_2 = (u32) gc < 0xB45U;
                        if (var_a6_2 == 0) {
                            if ((u32) gc >= 0xB46U) {
                                if (gc == (__GLcontext *)0xB46) {
                                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk2B8, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                                    sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                                    var_ra = sp570;
                                    var_s1 = &sp390 + 4;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk2B4, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_ra = sp570;
                            var_s1 = &sp390 + 4;
                            goto block_27;
                        }
                        var_a5 = (u32) gc < 0xB44U;
                        var_a6_2 = (u32) gc < 0xB45U;
                        if (var_a5 == 0) {
                            if (var_a6_2 != 0) {
                                goto block_22;
                            }
                            /* Duplicate return node #200. Try simplifying control flow for better match */
                            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                            return;
                        }
                        var_a6_2 = 0xB43;
                        if (gc == (__GLcontext *)0xB43) {
                            goto block_270;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    goto block_22;
                }
                var_a5 = (u32) gc < 0xB33U;
                if ((u32) gc >= 0xB32U) {
                    var_a6_2 = (u32) gc < 0xB40U;
                    if (var_a5 == 0) {
                        if (var_a6_2 == 0) {
                            if ((u32) gc >= 0xB41U) {
                                if (gc == (__GLcontext *)0xB41) {
                                    goto block_22;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk2A4, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            sp390 = M2C_ERROR(/* Read from unset register $v0 */);
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk2A8, 1, 1);
                            sp394 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_ra = sp570;
                            var_s1 = &sp390 + 8;
                            goto block_27;
                        }
                        if (gc == (__GLcontext *)0xB33) {
                            var_s1 = &sp390 + 4;
                            sp390 = temp_s0->unk1250;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->unk750;
                    goto block_27;
                }
                var_a6_2 = (u32) gc < 0xB30U;
                if (var_a6_2 == 0) {
                    if ((u32) gc >= 0xB31U) {
                        var_a5 = 0x40;
                        if (gc == (__GLcontext *)0xB31) {
                            sp390 = 0x40;
                            var_s1 = &sp390 + 4;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    var_s1 = &sp390 + 4;
                    sp390 = temp_s0->unk124C;
                    goto block_27;
                }
                var_a5 = (u32) gc < 0xB27U;
                if ((u32) gc >= 0xB26U) {
                    if (var_a5 != 0) {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk2D4, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                        var_ra = sp570;
                        sp390 = M2C_ERROR(/* Read from unset register $v0 */) + 1;
                        var_s1 = &sp390 + 4;
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                if (gc == (__GLcontext *)0xB25) {
                    sp578 = 0;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk2D0, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                    var_a1 = 0xF;
                    var_a0 = sp578;
                    var_ra = sp570;
loop_857:
                    if (M2C_ERROR(/* Read from unset register $v0 */) & 1) {
                        var_a0 |= 1 << var_a1;
                    }
                    temp_a1_2 = var_a1 - 1;
                    if (((u32) M2C_ERROR(/* Read from unset register $v0 */) >> 1) & 1) {
                        var_a0 |= 1 << temp_a1_2;
                    }
                    var_a1 = temp_a1_2 - 1;
                    if (var_a1 != -1) {
                        goto loop_857;
                    }
                    sp390 = (enum GLenum) var_a0;
                    var_s1 = &sp390 + 4;
                    goto block_27;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            goto block_22;
        }
        temp_a5_26 = (u32) gc < 0xB09U;
        temp_a6_7 = (u32) gc < 0xB0AU;
        if (temp_a5_26 == 0) {
            if (temp_a6_7 == 0) {
                if ((u32) gc >= 0xB20U) {
                    var_a5 = (u32) gc < 0xB22U;
                    if ((u32) gc >= 0xB21U) {
                        var_a6_2 = (u32) gc < 0xB23U;
                        if (var_a5 == 0) {
                            if (var_a6_2 == 0) {
                                if (gc == (__GLcontext *)0xB23) {
                                    sp388 = &sp1F8 + 4;
                                    sp1F8 = temp_s0->unkD8C;
                                    goto block_27;
                                }
                                /* Duplicate return node #200. Try simplifying control flow for better match */
                                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                                return;
                            }
                            sp388 = &sp1F8 + 4;
                            sp1F8 = temp_s0->unkD84;
                            sp388 = &sp1F8 + 8;
                            sp1FC = temp_s0->unkD88;
                            goto block_27;
                        }
                        if (gc == (__GLcontext *)0xB21) {
                            __Mgr_ReturnMode(SYMBOL_LOCATION.unk2B0, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                            var_ra = sp570;
                            temp_a5_27 = sp388 + 4;
                            sp388 = temp_a5_27;
                            temp_a5_27->unk-4 = sp524;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    goto block_22;
                }
                var_a5 = (u32) gc < 0xB13U;
                if ((u32) gc >= 0xB12U) {
                    var_a6_2 = 0xB13;
                    if (var_a5 == 0) {
                        if (gc == (__GLcontext *)0xB13) {
                            sp388 = &sp1F8 + 4;
                            sp1F8 = temp_s0->unkD80;
                            goto block_27;
                        }
                        /* Duplicate return node #200. Try simplifying control flow for better match */
                        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                        return;
                    }
                    sp388 = &sp1F8 + 4;
                    sp1F8 = temp_s0->unkD78;
                    sp388 = &sp1F8 + 8;
                    sp1FC = temp_s0->unkD7C;
                    goto block_27;
                }
                var_a6_2 = (u32) gc < 0xB11U;
                if (var_a6_2 == 0) {
                    if ((u32) gc < 0xB12U) {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk2AC, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                        var_ra = sp570;
                        temp_a5_28 = sp388 + 4;
                        sp388 = temp_a5_28;
                        temp_a5_28->unk-4 = sp524;
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                if (gc == (__GLcontext *)0xB10) {
block_22:
                    sp520 = sp + 1;
                    sp520->unk-1 = __glMgrim_IsEnabled((enum GLenum) gc);
                    var_ra = sp570;
                    if (var_s1 != &sp390) {
                        goto block_23;
                    }
                    goto block_28;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            __Mgr_ReturnMode(SYMBOL_LOCATION.unk23C, 1, 1, 0, temp_a5_26, temp_a6_7, 0x10000);
            sp524 = M2C_ERROR(/* Read from unset register $v0 */);
            var_ra = sp570;
            temp_a5_29 = sp388 + 4;
            sp388 = temp_a5_29;
            temp_a5_29->unk-4 = sp524;
            goto block_27;
        }
        temp_a5_30 = (u32) gc < 0xB04U;
        temp_a6_8 = (u32) gc < 0xB05U;
        if (temp_a5_30 == 0) {
            if (temp_a6_8 != 0) {
                if (temp_s0->modes.colorIndexMode != 0) {
                    sp388 = &sp1F8 + 0x10;
                    sp204 = 1.0f;
                    sp200 = 1.0f;
                    sp1FC = 1.0f;
                    sp1F8 = 0x3F800000;
                } else {
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk208, 1, 1, 0, temp_a5_30, temp_a6_8, 0x10000);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a3_13 = sp388 + 4;
                    sp388 = temp_a3_13;
                    temp_a3_13->unk-4 = sp524;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk20C, 1, 1, (s64) temp_a3_13);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a3_14 = temp_a3_13 + 4;
                    sp388 = temp_a3_14;
                    temp_a3_14->unk-4 = sp524;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk210, 1, 1, (s64) temp_a3_14);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a3_15 = temp_a3_14 + 4;
                    sp388 = temp_a3_15;
                    temp_a3_15->unk-4 = sp524;
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk214, 1, 1, (s64) temp_a3_15);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_ra = sp570;
                    temp_a5_31 = sp388 + 4;
                    sp388 = temp_a5_31;
                    temp_a5_31->unk-4 = sp524;
                }
                goto block_27;
            }
            var_a5 = (u32) gc < 0xB08U;
            if ((u32) gc >= 0xB07U) {
                var_a6_2 = 0xB08;
                if (var_a5 == 0) {
                    if (gc == (__GLcontext *)0xB08) {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk238, 1, 1, 0, var_a5, 0xB08U, 0x10000);
                        var_ra = sp570;
                        temp_a6_9 = sp520 + 1;
                        sp520 = temp_a6_9;
                        temp_a6_9->unk-1 = (s8) ((SYMBOL_LOCATION.unk240 & M2C_ERROR(/* Read from unset register $v0 */)) != 0);
                        goto block_27;
                    }
                    /* Duplicate return node #200. Try simplifying control flow for better match */
                    __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                    return;
                }
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk228, 1, 1, 0, var_a5, 0xB08U, 0x10000);
                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                temp_a3_16 = sp388 + 4;
                sp388 = temp_a3_16;
                temp_a3_16->unk-4 = (f32) ((f64) (second half of f64) + (second half of f64));
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk22C, 1, 1, (s64) temp_a3_16);
                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                temp_a3_17 = temp_a3_16 + 4;
                sp388 = temp_a3_17;
                temp_a3_17->unk-4 = (f32) ((f64) sp524 + -49151.5);
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk230, 1, 1, (s64) temp_a3_17);
                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                temp_a3_18 = temp_a3_17 + 4;
                sp388 = temp_a3_18;
                temp_a3_18->unk-4 = sp524;
                __Mgr_ReturnMode(SYMBOL_LOCATION.unk234, 1, 1, (s64) temp_a3_18);
                sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                var_ra = sp570;
                temp_a5_32 = sp388 + 4;
                sp388 = temp_a5_32;
                temp_a5_32->unk-4 = sp524;
                goto block_27;
            }
            var_a6_2 = (u32) gc < 0xB06U;
            if (var_a6_2 == 0) {
                if ((u32) gc < 0xB07U) {
                    if (temp_a2 != NULL) {
                        sp388 = &sp1F8 + 4;
                        sp1F8 = temp_s0->unk108;
                        sp388 = &sp1F8 + 8;
                        sp1FC = temp_s0->unk10C;
                        sp388 = &sp1F8 + 0xC;
                        sp200 = temp_s0->unk110;
                        sp388 = &sp1F8 + 0x10;
                        sp204 = temp_s0->unk114;
                    } else {
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk218, 1, 1, 0, var_a5, var_a6_2, 0x10000);
                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                        temp_a3_19 = sp388 + 4;
                        sp388 = temp_a3_19;
                        temp_a3_19->unk-4 = sp524;
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk21C, 1, 1, (s64) temp_a3_19);
                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                        temp_a3_20 = temp_a3_19 + 4;
                        sp388 = temp_a3_20;
                        temp_a3_20->unk-4 = sp524;
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk220, 1, 1, (s64) temp_a3_20);
                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                        temp_a3_21 = temp_a3_20 + 4;
                        sp388 = temp_a3_21;
                        temp_a3_21->unk-4 = sp524;
                        __Mgr_ReturnMode(SYMBOL_LOCATION.unk224, 1, 1, (s64) temp_a3_21);
                        sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                        var_ra = sp570;
                        temp_a5_33 = sp388 + 4;
                        sp388 = temp_a5_33;
                        temp_a5_33->unk-4 = sp524;
                    }
                    goto block_27;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            var_a6_2 = 0xB05;
            if (gc == (__GLcontext *)0xB05) {
                if (temp_s0->modes.rgbMode != 0) {
                    sp390 = GL_ONE;
                } else {
                    __Mgr_ReturnMode(SYMBOL_LOCATION.unk204, 1, 1, 0, var_a5, 0xB05U, 0x10000);
                    sp524 = M2C_ERROR(/* Read from unset register $v0 */);
                    temp_f1 = (enum GLenum) sp524;
                    var_ra = sp570;
                    var_a0_2 = temp_f1;
                    if (temp_f1 >= 0x1000) {
                        var_a0_2 = temp_f1 >> 0xC;
                    }
                    sp390 = var_a0_2;
                }
                var_s1 = &sp390 + 4;
                goto block_27;
            }
            /* Duplicate return node #200. Try simplifying control flow for better match */
            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
            return;
        }
        var_a5 = (u32) gc < 0xB02U;
        var_a6_2 = (u32) gc < 0xB03U;
        if (var_a5 == 0) {
            if (var_a6_2 == 0) {
                if (gc == (__GLcontext *)0xB03) {
                    if (temp_a2 != NULL) {
                        sp388 = &sp1F8 + 4;
                        sp1F8 = temp_s0->unkC8;
                        sp388 = &sp1F8 + 8;
                        sp1FC = temp_s0->unkCC;
                        sp388 = &sp1F8 + 0xC;
                        sp200 = temp_s0->unkD0;
                        sp388 = &sp1F8 + 0x10;
                        sp204 = temp_s0->unkD4;
                    } else {
                        __Mgr_GetCurrentAttrState(&sp388, &sp38C, &sp520, 0, var_a5, var_a6_2, 0x10000);
                        var_ra = sp570;
                    }
                    goto block_27;
                }
                /* Duplicate return node #200. Try simplifying control flow for better match */
                __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
                return;
            }
            goto block_270;
        }
        var_a6_2 = (u32) gc < 0xB01U;
        if (var_a6_2 == 0) {
            if ((u32) gc < 0xB02U) {
                goto block_270;
            }
            /* Duplicate return node #200. Try simplifying control flow for better match */
            __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
            return;
        }
        var_a5 = 0xB00;
        if (gc == (__GLcontext *)0xB00) {
block_270:
            __Mgr_GetCurrentAttrState(&sp388, &sp38C, &sp520, 0, var_a5, var_a6_2, 0x10000);
            var_ra = sp570;
block_27:
            if (var_s1 == &sp390) {
block_28:
                if (sp388 == &sp1F8) {
                    if (sp520 == sp) {
                        if (sp38C != &sp68) {
                            sp570 = var_ra;
                            __glConvertResult(temp_s0, 5, &sp68, sp530, sp528, (s32) (sp38C - &sp68) >> 2);
                        }
                    } else {
                        sp570 = var_ra;
                        __glConvertResult(temp_s0, 4, sp, sp530, sp528, sp520 - sp);
                    }
                } else {
                    sp570 = var_ra;
                    __glConvertResult(temp_s0, 0, &sp1F8, sp530, sp528, (s32) (sp388 - &sp1F8) >> 2);
                }
            } else {
block_23:
                sp570 = var_ra;
                __glConvertResult(temp_s0, 3, &sp390, sp530, sp528, (s32) (var_s1 - &sp390) >> 2);
            }
            return;
        }
        __glSetError(0x500, temp_a1, temp_a2, var_a4, var_a5, var_a6_2, 0x10000);
        return;
    }
    __glSetError(0x502, NULL);
}

void __glMgrim_GetDoublev(enum GLenum pname, f64 *data) {
    __glMgrDoGet((__GLcontext *) pname, 2, &sub_0dbf0000 - 0x1E40, 0x14AFA8);
}

enum GLenum __glMgrim_GetError(void) {
    __GLcontext *temp_s0;
    enum GLenum temp_a2;
    enum GLenum var_v0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        __Mgr_ReturnMode(SYMBOL_LOCATION.unk324, 1, 1);
        temp_a2 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_v0 = temp_a2;
            temp_s0->error = temp_a2;
            *(s32 *)0x74080 = 0x6300;
        } else {
            var_v0 = temp_s0->error;
        }
        temp_s0->error = GL_ZERO;
        return var_v0;
    }
    __glSetError(0x502);
    return GL_ZERO;
}

void __glMgrim_GetFloatv(enum GLenum pname, f32 *data) {
    __glMgrDoGet((__GLcontext *) pname, 1, &sub_0dbf0000 - 0x1E30, 0x14AEC4);
}

void __glMgrim_GetIntegerv(enum GLenum pname, s32 *data) {
    __glMgrDoGet((__GLcontext *) pname, 3, &sub_0dbf0000 - 0x1E20, 0x14AE88);
}

void __glMgrim_GetBooleanv(enum GLenum pname, u8 *data) {
    __glMgrDoGet((__GLcontext *) pname, 4, &sub_0dbf0000 - 0x1E10, 0x14AE4C);
}

void __glMgrim_GetClipPlane(enum GLenum plane, f64 *equation) {
    f32 sp0;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;

    if (__glBeginMode != 1) {
        temp_s0 = SYMBOL_LOCATION.unk32C + (plane * 4) + 0xFFFF4000;
        __Mgr_ReturnMode(temp_s0, 1, 1);
        temp_s0_2 = temp_s0 + 1;
        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
        temp_s0_3 = temp_s0_2 + 1;
        equation->unk0 = (f64) sp0;
        __Mgr_ReturnMode(temp_s0_2, 1, 1);
        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
        equation->unk8 = (f64) sp0;
        __Mgr_ReturnMode(temp_s0_3, 1, 1);
        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
        equation->unk10 = (f64) sp0;
        __Mgr_ReturnMode(temp_s0_3 + 1, 1, 1);
        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
        equation->unk18 = (f64) sp0;
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetLightfv(enum GLenum light, enum GLenum pname, f32 *params) {
    s64 sp18;
    ?32 sp10;
    enum GLenum temp_a1;
    s64 temp_a3;
    u32 temp_a0;

    if (__glBeginMode != 1) {
        temp_a1 = light - 0x4000;
        temp_a3 = temp_a1 < (u32) __glCurrentContext->unkD00;
        if (temp_a3 != 0) {
            sp18 = (s64) params;
            *(enum GLenum *)0x74080 = 0xEF08;
            *(enum GLenum *)0x74080 = temp_a1;
            *(enum GLenum *)0x74080 = pname;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4, 1, 1, temp_a3, 0x74080U);
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unk0 = sp10;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 1, 1, 1);
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unk4 = sp10;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 2, 1, 1);
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unk8 = sp10;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 3, 1, 1);
            temp_a0 = pname - 0x1200;
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unkC = sp10;
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            if (temp_a0 < 0xAU) {
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x1E00))) { /* unable to parse jump table */
                case 0:
                case 1:
                case 2:
                case 3:
                    sp18->unkC = spC;
                    sp18->unk8 = sp8;
                    sp18->unk4 = sp4;
                    sp18->unk0 = sp0;
                    break;
                case 5:
                    sp18->unk0 = sp0;
                    break;
                case 4:
                    sp18->unk8 = sp8;
                    sp18->unk4 = sp4;
                    sp18->unk0 = sp0;
                    break;
                case 6:
                    sp18->unk0 = sp0;
                    break;
                case 7:
                    sp18->unk0 = sp0;
                    break;
                case 8:
                    sp18->unk0 = sp0;
                    break;
                case 9:
                    sp18->unk0 = sp0;
                    break;
                }
                return;
            }
            __glSetError(0x500);
            return;
        }
        __glSetError(0x500, (__GLcontext *) temp_a1, (f32 *) temp_a3);
        return;
    }
    __glSetError(0x502, (__GLcontext *)0x14ACF0);
}

void __glMgrim_GetLightiv(enum GLenum light, enum GLenum pname, s32 *params) {
    enum GLenum sp10;
    __GLcontext *temp_s0;
    enum GLenum temp_v0;
    s64 temp_a3;
    u32 temp_a0;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_v0 = light - 0x4000;
        temp_a3 = temp_v0 < (u32) temp_s0->unkD00;
        if (temp_a3 != 0) {
            *(enum GLenum *)0x74080 = 0xEF08;
            *(enum GLenum *)0x74080 = temp_v0;
            *(enum GLenum *)0x74080 = pname;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4, 1, 1, temp_a3);
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unk0 = sp10;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 1, 1, 1);
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unk4 = sp10;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 2, 1, 1);
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unk8 = sp10;
            __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 3, 1, 1);
            temp_a0 = pname - 0x1200;
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            sp->unkC = sp10;
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            if (temp_a0 < 0xAU) {
                switch (*((temp_a0 * 4) + (&sub_0dbf0000 - 0x1DD8))) { /* unable to parse jump table */
                case 0:
                case 1:
                case 2:
                    params->unk0 = (s32) floorf(temp_s0->unkCD0 * (temp_s0->unkCE8 * sp0));
                    params->unk4 = (s32) floorf(temp_s0->unkCD0 * (temp_s0->unkCE8 * sp4));
                    params->unk8 = (s32) floorf(temp_s0->unkCD0 * (temp_s0->unkCE8 * sp8));
                    params->unkC = (s32) floorf(temp_s0->unkCD0 * (temp_s0->unkCE8 * spC));
                    break;
                case 3:
                    __glConvertResult(temp_s0, 0, sp, 3, (s64) params, 4);
                    break;
                case 4:
                    __glConvertResult(temp_s0, 0, sp, 3, (s64) params, 3);
                    break;
                case 5:
                    __glConvertResult(temp_s0, 0, sp, 3, (s64) params, 1);
                    break;
                case 6:
                    __glConvertResult(temp_s0, 0, sp, 3, (s64) params, 1);
                    break;
                case 7:
                    __glConvertResult(temp_s0, 0, sp, 3, (s64) params, 1);
                    break;
                case 8:
                    __glConvertResult(temp_s0, 0, sp, 3, (s64) params, 1);
                    break;
                case 9:
                    __glConvertResult(temp_s0, 0, sp, 3, (s64) params, 1);
                    break;
                }
                return;
            }
            __glSetError(0x500);
            return;
        }
        __glSetError(0x500, (__GLcontext *) temp_a3);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetMaterialfv(enum GLenum face, enum GLenum pname, f32 *params) {
    s64 sp18;
    ?32 sp10;

    if (__glBeginMode != 1) {
        if ((face != GL_FRONT) && (face != GL_BACK)) {
            __glSetError(0x500, (__GLcontext *)0x14A6E8, (f32 *)0x404, 0x405);
            return;
        }
        sp18 = (s64) params;
        *(enum GLenum *)0x74080 = 0xEE08;
        *(enum GLenum *)0x74080 = face;
        *(enum GLenum *)0x74080 = pname;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4, 1, 1, 0x404);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp20->unk0 = sp10;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 1, 1, 1, sp20);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp20->unk4 = sp10;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 2, 1, 1, sp20);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp20->unk8 = sp10;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 3, 1, 1, sp20);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp20->unkC = sp10;
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        if (pname >= GL_EMISSION) {
            if (pname < GL_SHININESS) {
                goto block_6;
            }
            if (pname >= GL_AMBIENT_AND_DIFFUSE) {
                if (pname >= GL_COLOR_INDEXES) {
                    if (pname == GL_COLOR_INDEXES) {
                        sp18->unk8 = sp8;
                        sp18->unk4 = sp4;
                        goto block_8;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                goto block_6;
            }
            if (pname == GL_SHININESS) {
                sp18->unk0 = sp0;
            } else {
                /* Duplicate return node #15. Try simplifying control flow for better match */
                __glSetError(0x500);
            }
        } else {
            if (pname >= GL_DIFFUSE) {
                if (pname >= GL_SPECULAR) {
                    if (pname == GL_SPECULAR) {
block_6:
                        goto block_7;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                goto block_7;
            }
            if (pname != GL_AMBIENT) {
                __glSetError(0x500);
                return;
            }
block_7:
            ((void *) sp18)->unkC = spC;
            ((void *) sp18)->unk8 = sp8;
            ((void *) sp18)->unk4 = sp4;
block_8:
            *(f32 *) sp18 = sp0;
        }
    } else {
        __glSetError(0x502, (__GLcontext *)0x14A6E8);
    }
}

void __glMgrim_GetMaterialiv(enum GLenum face, enum GLenum pname, s32 *params) {
    s64 sp20;
    s64 sp18;
    ?32 sp10;

    if (__glBeginMode != 1) {
        if ((face != GL_FRONT) && (face != GL_BACK)) {
            __glSetError(0x500, (__GLcontext *)0x14A480, (f32 *)0x404);
            return;
        }
        sp20 = (s64) __glCurrentContext;
        sp18 = (s64) params;
        *(enum GLenum *)0x74080 = 0xEE08;
        *(enum GLenum *)0x74080 = face;
        *(enum GLenum *)0x74080 = pname;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4, 1, 1, 0x404);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp28->unk0 = sp10;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 1, 1, 1, sp28);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp28->unk4 = sp10;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 2, 1, 1, sp28);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp28->unk8 = sp10;
        __Mgr_ReturnMode(SYMBOL_LOCATION.unkF4 + 3, 1, 1, sp28);
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        sp28->unkC = sp10;
        sp10 = M2C_ERROR(/* Read from unset register $v0 */);
        if (pname >= GL_EMISSION) {
            if (pname < GL_SHININESS) {
                goto block_6;
            }
            if (pname >= GL_AMBIENT_AND_DIFFUSE) {
                if (pname >= GL_COLOR_INDEXES) {
                    if (pname == GL_COLOR_INDEXES) {
                        __glConvertResult((__GLcontext *) sp20, 0, sp, 3, sp18, 3);
                    } else {
                        /* Duplicate return node #19. Try simplifying control flow for better match */
                        __glSetError(0x500);
                    }
                } else {
                    goto block_6;
                }
            } else {
                if (pname != GL_SHININESS) {
                    /* Duplicate return node #19. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                __glConvertResult((__GLcontext *) sp20, 0, sp, 3, sp18, 1);
            }
        } else {
            if (pname >= GL_DIFFUSE) {
                if (pname >= GL_SPECULAR) {
                    if (pname == GL_SPECULAR) {
                        goto block_6;
                    }
                    /* Duplicate return node #19. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                goto block_6;
            }
            if (pname == GL_AMBIENT) {
block_6:
                sp18->unk0 = (s32) floorf(sp20->unkCD0 * (sp20->unkCE8 * sp0));
                sp18->unk4 = (s32) floorf(sp20->unkCD0 * (sp20->unkCE8 * sp4));
                sp18->unk8 = (s32) floorf(sp20->unkCD0 * (sp20->unkCE8 * sp8));
                sp18->unkC = (s32) floorf(sp20->unkCD0 * (sp20->unkCE8 * spC));
                return;
            }
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502, (__GLcontext *)0x14A480);
    }
}

void __glMgrim_GetMapfv(enum GLenum target, enum GLenum query, f32 *v) {
    f32 *var_a4;
    s32 *temp_a5_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    u32 temp_a5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_at;
    void *temp_v1;

    temp_a5 = target - 0xD90;
    if (__glBeginMode != 1) {
        var_a4 = v;
        var_a3 = temp_a5 < 0x29U;
        temp_a5_2 = (temp_a5 * 4) + (&sub_0dbf0000 - 0x1DB0);
        if (var_a3 != 0) {
            var_a3 = 0xA01;
            switch (*temp_a5_2) {                   /* switch 1; unable to parse jump table */
            case 0:                                 /* switch 1 */
            case 1:                                 /* switch 1 */
            case 2:                                 /* switch 1 */
            case 3:                                 /* switch 1 */
            case 4:                                 /* switch 1 */
            case 5:                                 /* switch 1 */
            case 6:                                 /* switch 1 */
            case 7:                                 /* switch 1 */
            case 8:                                 /* switch 1 */
                switch (query) {                    /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, (__GLcontext *)0xA01, var_a4, (s32) temp_a5_2, (u8) __glCurrentContext);
                    return;
                case GL_COEFF:                      /* switch 2 */
                    temp_a2 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a1 = 0;
                    if (temp_a2->unk-3AF0 > 0) {
                        var_a0 = 0;
                        do {
                            *var_a4 = *(temp_a2->unk-3AEC + var_a0);
                            var_a4 += 4;
                            var_a1 += 1;
                            var_a0 += 4;
                        } while (var_a1 < temp_a2->unk-3AF0);
                    }
                    return;
                case GL_ORDER:                      /* switch 2 */
                    v->unk0 = (f32) *(0xFFFDC4EC + (s32) ((target * 0x34) + __glCurrentContext));
                    break;
                case GL_DOMAIN:                     /* switch 2 */
                    temp_a3 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    v->unk0 = temp_a3->unk-3B08;
                    v->unk4 = (f32) temp_a3->unk-3B04;
                    break;
                }
                break;
            case 32:                                /* switch 1 */
            case 33:                                /* switch 1 */
            case 34:                                /* switch 1 */
            case 35:                                /* switch 1 */
            case 36:                                /* switch 1 */
            case 37:                                /* switch 1 */
            case 38:                                /* switch 1 */
            case 39:                                /* switch 1 */
            case 40:                                /* switch 1 */
                switch (query) {                    /* switch 3; irregular */
                default:                            /* switch 3 */
                    __glSetError(0x500, (__GLcontext *) (target * 4), (f32 *)0xA01, (s32) var_a4, (u8) temp_a5_2, (u8) __glCurrentContext);
                    return;
                case GL_COEFF:                      /* switch 3 */
                    temp_a2_2 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a1_2 = 0;
                    var_a0_2 = 0;
                    if (temp_a2_2->unk-3F68 > 0) {
                        do {
                            *var_a4 = *(temp_a2_2->unk-3F64 + var_a0_2);
                            var_a4 += 4;
                            var_a1_2 += 1;
                            var_a0_2 += 4;
                        } while (var_a1_2 < temp_a2_2->unk-3F68);
                    }
                    break;
                case GL_ORDER:                      /* switch 3 */
                    temp_v1 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a4->unk0 = (f32) temp_v1->unk-3F8C;
                    var_a4->unk4 = (f32) temp_v1->unk-3F88;
                    break;
                case GL_DOMAIN:                     /* switch 3 */
                    temp_at = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a4->unk0 = temp_at->unk-3F80;
                    var_a4->unk4 = (f32) temp_at->unk-3F7C;
                    var_a4->unk8 = (f32) temp_at->unk-3F78;
                    var_a4->unkC = (f32) temp_at->unk-3F74;
                    break;
                }
                break;
            }
        } else {
        case 9:                                     /* switch 1 */
        case 10:                                    /* switch 1 */
        case 11:                                    /* switch 1 */
        case 12:                                    /* switch 1 */
        case 13:                                    /* switch 1 */
        case 14:                                    /* switch 1 */
        case 15:                                    /* switch 1 */
        case 16:                                    /* switch 1 */
        case 17:                                    /* switch 1 */
        case 18:                                    /* switch 1 */
        case 19:                                    /* switch 1 */
        case 20:                                    /* switch 1 */
        case 21:                                    /* switch 1 */
        case 22:                                    /* switch 1 */
        case 23:                                    /* switch 1 */
        case 24:                                    /* switch 1 */
        case 25:                                    /* switch 1 */
        case 26:                                    /* switch 1 */
        case 27:                                    /* switch 1 */
        case 28:                                    /* switch 1 */
        case 29:                                    /* switch 1 */
        case 30:                                    /* switch 1 */
        case 31:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *) var_a3, var_a4, (s32) temp_a5_2, (u8) __glCurrentContext);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetMapdv(enum GLenum target, enum GLenum query, f64 *v) {
    f64 *var_a4;
    s32 *temp_a5_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a3;
    u32 temp_a5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_at;
    void *temp_v1;

    temp_a5 = target - 0xD90;
    if (__glBeginMode != 1) {
        var_a4 = v;
        var_a3 = temp_a5 < 0x29U;
        temp_a5_2 = (temp_a5 * 4) + (&sub_0dbf0000 - 0x1D08);
        if (var_a3 != 0) {
            var_a3 = 0xA01;
            switch (*temp_a5_2) {                   /* switch 1; unable to parse jump table */
            case 0:                                 /* switch 1 */
            case 1:                                 /* switch 1 */
            case 2:                                 /* switch 1 */
            case 3:                                 /* switch 1 */
            case 4:                                 /* switch 1 */
            case 5:                                 /* switch 1 */
            case 6:                                 /* switch 1 */
            case 7:                                 /* switch 1 */
            case 8:                                 /* switch 1 */
                switch (query) {                    /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, (__GLcontext *)0xA01, (f32 *) var_a4, (s32) temp_a5_2, (u8) __glCurrentContext);
                    return;
                case GL_COEFF:                      /* switch 2 */
                    temp_a2 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a1 = 0;
                    if (temp_a2->unk-3AF0 > 0) {
                        var_a0 = 0;
                        do {
                            *var_a4 = (f64) *(temp_a2->unk-3AEC + var_a0);
                            var_a4 += 8;
                            var_a1 += 1;
                            var_a0 += 4;
                        } while (var_a1 < temp_a2->unk-3AF0);
                    }
                    return;
                case GL_ORDER:                      /* switch 2 */
                    v->unk0 = (f64) *(0xFFFDC4EC + (s32) ((target * 0x34) + __glCurrentContext));
                    break;
                case GL_DOMAIN:                     /* switch 2 */
                    temp_a3 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    v->unk0 = (f64) temp_a3->unk-3B08;
                    v->unk8 = (f64) temp_a3->unk-3B04;
                    break;
                }
                break;
            case 32:                                /* switch 1 */
            case 33:                                /* switch 1 */
            case 34:                                /* switch 1 */
            case 35:                                /* switch 1 */
            case 36:                                /* switch 1 */
            case 37:                                /* switch 1 */
            case 38:                                /* switch 1 */
            case 39:                                /* switch 1 */
            case 40:                                /* switch 1 */
                switch (query) {                    /* switch 3; irregular */
                default:                            /* switch 3 */
                    __glSetError(0x500, (__GLcontext *) (target * 4), (f32 *)0xA01, (s32) var_a4, (u8) temp_a5_2, (u8) __glCurrentContext);
                    return;
                case GL_COEFF:                      /* switch 3 */
                    temp_a2_2 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a1_2 = 0;
                    var_a0_2 = 0;
                    if (temp_a2_2->unk-3F68 > 0) {
                        do {
                            *var_a4 = (f64) *(temp_a2_2->unk-3F64 + var_a0_2);
                            var_a4 += 8;
                            var_a1_2 += 1;
                            var_a0_2 += 4;
                        } while (var_a1_2 < temp_a2_2->unk-3F68);
                    }
                    break;
                case GL_ORDER:                      /* switch 3 */
                    temp_v1 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a4->unk0 = (f64) temp_v1->unk-3F8C;
                    var_a4->unk8 = (f64) temp_v1->unk-3F88;
                    break;
                case GL_DOMAIN:                     /* switch 3 */
                    temp_at = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    var_a4->unk0 = (f64) temp_at->unk-3F80;
                    var_a4->unk8 = (f64) temp_at->unk-3F7C;
                    var_a4->unk10 = (f64) temp_at->unk-3F78;
                    var_a4->unk18 = (f64) temp_at->unk-3F74;
                    break;
                }
                break;
            }
        } else {
        case 9:                                     /* switch 1 */
        case 10:                                    /* switch 1 */
        case 11:                                    /* switch 1 */
        case 12:                                    /* switch 1 */
        case 13:                                    /* switch 1 */
        case 14:                                    /* switch 1 */
        case 15:                                    /* switch 1 */
        case 16:                                    /* switch 1 */
        case 17:                                    /* switch 1 */
        case 18:                                    /* switch 1 */
        case 19:                                    /* switch 1 */
        case 20:                                    /* switch 1 */
        case 21:                                    /* switch 1 */
        case 22:                                    /* switch 1 */
        case 23:                                    /* switch 1 */
        case 24:                                    /* switch 1 */
        case 25:                                    /* switch 1 */
        case 26:                                    /* switch 1 */
        case 27:                                    /* switch 1 */
        case 28:                                    /* switch 1 */
        case 29:                                    /* switch 1 */
        case 30:                                    /* switch 1 */
        case 31:                                    /* switch 1 */
            __glSetError(0x500, (__GLcontext *) var_a3, (f32 *) var_a4, (s32) temp_a5_2, (u8) __glCurrentContext);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetMapiv(enum GLenum target, enum GLenum query, s32 *v) {
    s32 *temp_a5_2;
    u32 temp_a5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_at;

    if (__glBeginMode != 1) {
        temp_a5 = target - 0xD90;
        temp_a5_2 = (temp_a5 * 4) + (&sub_0dbf0000 - 0x1C60);
        if (temp_a5 < 0x29U) {
            switch (*temp_a5_2) {                   /* switch 1; unable to parse jump table */
            case 0:                                 /* switch 1 */
            case 1:                                 /* switch 1 */
            case 2:                                 /* switch 1 */
            case 3:                                 /* switch 1 */
            case 4:                                 /* switch 1 */
            case 5:                                 /* switch 1 */
            case 6:                                 /* switch 1 */
            case 7:                                 /* switch 1 */
            case 8:                                 /* switch 1 */
                switch (query) {                    /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, (__GLcontext *)0xA01, (f32 *) v, (s32) temp_a5_2);
                    return;
                case GL_ORDER:                      /* switch 2 */
                    v->unk0 = *(0xFFFDC4EC + (s32) ((target * 0x34) + __glCurrentContext));
                    return;
                case GL_COEFF:                      /* switch 2 */
                    temp_a2 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    __glConvertResult(__glCurrentContext, 0, temp_a2->unk-3AEC, 3, (s64) v, temp_a2->unk-3AF0);
                    break;
                case GL_DOMAIN:                     /* switch 2 */
                    __glConvertResult(__glCurrentContext, 0, (target * 0x34) + __glCurrentContext + 0xFFFDC4F8, 3, (s64) v, 2, 0xFFFDC4F8, target);
                    break;
                }
                break;
            case 32:                                /* switch 1 */
            case 33:                                /* switch 1 */
            case 34:                                /* switch 1 */
            case 35:                                /* switch 1 */
            case 36:                                /* switch 1 */
            case 37:                                /* switch 1 */
            case 38:                                /* switch 1 */
            case 39:                                /* switch 1 */
            case 40:                                /* switch 1 */
                switch (query) {                    /* switch 3; irregular */
                default:                            /* switch 3 */
                    __glSetError(0x500);
                    return;
                case GL_ORDER:                      /* switch 3 */
                    temp_at = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    v->unk0 = temp_at->unk-3F8C;
                    v->unk4 = (s32) temp_at->unk-3F88;
                    break;
                case GL_COEFF:                      /* switch 3 */
                    temp_a2_2 = (target * 0x34) + __glCurrentContext + 0xFFFE0000;
                    __glConvertResult(__glCurrentContext, 0, temp_a2_2->unk-3F64, 3, (s64) v, temp_a2_2->unk-3F68);
                    break;
                case GL_DOMAIN:                     /* switch 3 */
                    __glConvertResult(__glCurrentContext, 0, (target * 0x34) + __glCurrentContext + 0xFFFDC080, 3, (s64) v, 4, 0xFFFDC080, target);
                    break;
                }
                break;
            }
        } else {
        case 9:                                     /* switch 1 */
        case 10:                                    /* switch 1 */
        case 11:                                    /* switch 1 */
        case 12:                                    /* switch 1 */
        case 13:                                    /* switch 1 */
        case 14:                                    /* switch 1 */
        case 15:                                    /* switch 1 */
        case 16:                                    /* switch 1 */
        case 17:                                    /* switch 1 */
        case 18:                                    /* switch 1 */
        case 19:                                    /* switch 1 */
        case 20:                                    /* switch 1 */
        case 21:                                    /* switch 1 */
        case 22:                                    /* switch 1 */
        case 23:                                    /* switch 1 */
        case 24:                                    /* switch 1 */
        case 25:                                    /* switch 1 */
        case 26:                                    /* switch 1 */
        case 27:                                    /* switch 1 */
        case 28:                                    /* switch 1 */
        case 29:                                    /* switch 1 */
        case 30:                                    /* switch 1 */
        case 31:                                    /* switch 1 */
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetTexImage(enum GLenum target, s32 level, enum GLenum format, enum GLenum type, void *pixels) {
    s64 sp0;
    __GLcontext *temp_s3;
    s32 var_a5;
    s32 var_a6;

    temp_s3 = __glCurrentContext;
    sp0 = (s64) pixels;
    if (__glBeginMode != 1) {
        __glMgrLookUpTexture(temp_s3, temp_s3, target);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if ((target != GL_PROXY_TEXTURE_1D) && (target != GL_PROXY_TEXTURE_2D)) {
                var_a6 = format < GL_RGB;
                if (target != GL_PROXY_TEXTURE_3D_EXT) {
                    if (target != 0x8135) {
                        if ((level >= 0) && (level < temp_s3->unkD6C)) {
                            if (var_a6 == 0) {
                                if (format >= GL_RGBA) {
                                    if (format >= GL_LUMINANCE_ALPHA) {
                                        var_a6 = 0x8000;
                                        if (format >= 0x190BU) {
                                            if (format == GL_ABGR_EXT) {
                                                goto block_21;
                                            }
                                            /* Duplicate return node #18. Try simplifying control flow for better match */
                                            __glSetError(0x500);
                                            return;
                                        }
                                        goto block_21;
                                    }
                                    if (format >= GL_LUMINANCE) {
                                        if (format < GL_LUMINANCE_ALPHA) {
                                            goto block_21;
                                        }
                                        /* Duplicate return node #18. Try simplifying control flow for better match */
                                        __glSetError(0x500);
                                        return;
                                    }
                                    if (format == GL_RGBA) {
                                        goto block_21;
                                    }
                                    /* Duplicate return node #18. Try simplifying control flow for better match */
                                    __glSetError(0x500);
                                    return;
                                }
                                goto block_21;
                            }
                            if (format >= GL_BLUE) {
                                if (format >= GL_ALPHA) {
                                    if (format != GL_ALPHA) {
                                        goto block_17;
                                    }
                                    __glSetError(0x502);
                                    return;
                                }
                                goto block_21;
                            }
                            var_a6 = format < GL_GREEN;
                            if (var_a6 == 0) {
                                if (format < GL_BLUE) {
                                    goto block_21;
                                }
                                goto block_17;
                            }
                            var_a6 = 0x1903;
                            if (format == GL_RED) {
block_21:
                                var_a5 = type < GL_2_BYTES;
                                if (type >= GL_FLOAT) {
                                    if (var_a5 == 0) {
                                        var_a6 = type < GL_UNSIGNED_SHORT_5_5_5_1_EXT;
                                        if (var_a6 == 0) {
                                            if (type <= GL_UNSIGNED_SHORT_5_5_5_1_EXT) {
                                                goto block_25;
                                            }
                                            if (type >= GL_UNSIGNED_INT_10_10_10_2_EXT) {
                                                if (type <= GL_UNSIGNED_INT_10_10_10_2_EXT) {
                                                    goto block_25;
                                                }
                                                /* Duplicate return node #18. Try simplifying control flow for better match */
                                                __glSetError(0x500);
                                                return;
                                            }
                                            if (type == GL_UNSIGNED_INT_8_8_8_8_EXT) {
                                                goto block_25;
                                            }
                                            /* Duplicate return node #18. Try simplifying control flow for better match */
                                            __glSetError(0x500);
                                            return;
                                        }
                                        var_a6 = type > GL_UNSIGNED_SHORT_4_4_4_4_EXT;
                                        if (type >= GL_UNSIGNED_SHORT_4_4_4_4_EXT) {
                                            if (var_a6 == 0) {
block_25:
                                                var_a5 = 0x8000;
                                                if ((format != GL_RGBA) && (format != GL_ABGR_EXT)) {
                                                    __glSetError(0x502);
                                                    return;
                                                }
                                                /* Duplicate return node #34. Try simplifying control flow for better match */
                                                temp_s3->unk9D4C = 1;
                                                mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                                temp_s3->unk91FC->unk1E4 = 0;
                                                temp_s3->unk91FC->unk1E8 = 0;
                                                temp_s3->unk9D4C = 0;
                                                return;
                                            }
                                            /* Duplicate return node #18. Try simplifying control flow for better match */
                                            __glSetError(0x500);
                                            return;
                                        }
                                        var_a5 = 0x8032;
                                        var_a6 = 0x1907;
                                        if (type == GL_UNSIGNED_BYTE_3_3_2_EXT) {
                                            if (format != GL_RGB) {
                                                __glSetError(0x502);
                                                return;
                                            }
                                            /* Duplicate return node #34. Try simplifying control flow for better match */
                                            temp_s3->unk9D4C = 1;
                                            mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                            temp_s3->unk91FC->unk1E4 = 0;
                                            temp_s3->unk91FC->unk1E8 = 0;
                                            temp_s3->unk9D4C = 0;
                                            return;
                                        }
                                        goto block_17;
                                    }
                                    /* Duplicate return node #34. Try simplifying control flow for better match */
                                    temp_s3->unk9D4C = 1;
                                    mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                    temp_s3->unk91FC->unk1E4 = 0;
                                    temp_s3->unk91FC->unk1E8 = 0;
                                    temp_s3->unk9D4C = 0;
                                    return;
                                }
                                var_a6 = type < GL_UNSIGNED_SHORT;
                                if (var_a6 == 0) {
                                    if (type >= GL_INT) {
                                        var_a5 = type < GL_FLOAT;
                                        if (type >= GL_UNSIGNED_INT) {
                                            if (var_a5 != 0) {
                                                /* Duplicate return node #34. Try simplifying control flow for better match */
                                                temp_s3->unk9D4C = 1;
                                                mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                                temp_s3->unk91FC->unk1E4 = 0;
                                                temp_s3->unk91FC->unk1E8 = 0;
                                                temp_s3->unk9D4C = 0;
                                                return;
                                            }
                                            /* Duplicate return node #18. Try simplifying control flow for better match */
                                            __glSetError(0x500);
                                            return;
                                        }
                                        if (type == GL_INT) {
                                            /* Duplicate return node #34. Try simplifying control flow for better match */
                                            temp_s3->unk9D4C = 1;
                                            mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                            temp_s3->unk91FC->unk1E4 = 0;
                                            temp_s3->unk91FC->unk1E8 = 0;
                                            temp_s3->unk9D4C = 0;
                                            return;
                                        }
                                        /* Duplicate return node #18. Try simplifying control flow for better match */
                                        __glSetError(0x500);
                                        return;
                                    }
                                    /* Duplicate return node #34. Try simplifying control flow for better match */
                                    temp_s3->unk9D4C = 1;
                                    mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                    temp_s3->unk91FC->unk1E4 = 0;
                                    temp_s3->unk91FC->unk1E8 = 0;
                                    temp_s3->unk9D4C = 0;
                                    return;
                                }
                                if (type >= GL_UNSIGNED_BYTE) {
                                    var_a5 = 0x1402;
                                    if (type >= GL_SHORT) {
                                        if (type == GL_SHORT) {
                                            /* Duplicate return node #34. Try simplifying control flow for better match */
                                            temp_s3->unk9D4C = 1;
                                            mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                            temp_s3->unk91FC->unk1E4 = 0;
                                            temp_s3->unk91FC->unk1E8 = 0;
                                            temp_s3->unk9D4C = 0;
                                            return;
                                        }
                                        /* Duplicate return node #18. Try simplifying control flow for better match */
                                        __glSetError(0x500);
                                        return;
                                    }
                                    /* Duplicate return node #34. Try simplifying control flow for better match */
                                    temp_s3->unk9D4C = 1;
                                    mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                    temp_s3->unk91FC->unk1E4 = 0;
                                    temp_s3->unk91FC->unk1E8 = 0;
                                    temp_s3->unk9D4C = 0;
                                    return;
                                }
                                var_a6 = 0x1400;
                                if (type == GL_BYTE) {
                                    temp_s3->unk9D4C = 1;
                                    mgrTM_DoTexRead(M2C_ERROR(/* Read from unset register $v0 */), level, format, type, sp0, var_a5, var_a6, 1);
                                    temp_s3->unk91FC->unk1E4 = 0;
                                    temp_s3->unk91FC->unk1E8 = 0;
                                    temp_s3->unk9D4C = 0;
                                    return;
                                }
                                goto block_17;
                            }
                            /* Duplicate return node #18. Try simplifying control flow for better match */
                            __glSetError(0x500);
                            return;
                        }
                        __glSetError(0x501);
                        return;
                    }
                    /* Duplicate return node #18. Try simplifying control flow for better match */
                    __glSetError(0x500);
                    return;
                }
                goto block_17;
            }
            /* Duplicate return node #18. Try simplifying control flow for better match */
            __glSetError(0x500);
            return;
        }
block_17:
        __glSetError(0x500);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetTexEnvfv(enum GLenum target, enum GLenum pname, f32 *params) {
    if (__glBeginMode != 1) {
        if (target != GL_TEXTURE_ENV) {
            __glSetError(0x500, (__GLcontext *)0x2300, (f32 *) __glCurrentContext);
            return;
        }
        if (pname != GL_TEXTURE_ENV_MODE) {
            if (pname != GL_TEXTURE_ENV_COLOR) {
                __glSetError(0x500, (__GLcontext *)0x2300, (f32 *) __glCurrentContext);
                return;
            }
            params->unkC = 0.0f;
            params->unk8 = (f32) ((f64) (f32) (__glCurrentContext->unk9164 & 0xFFF) / (second half of f64));
            params->unk4 = (f32) (second half of f64);
            params->unk0 = (f32) ((f64) (f32) (__glCurrentContext->unk9160 & 0xFFF) / (second half of f64));
        } else {
            params->unk0 = (f32) ((u64) ((s64) __glCurrentContext->unk915C << 0x20) >> 0x20);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetTexEnviv(enum GLenum target, enum GLenum pname, s32 *params) {
    s32 temp_a3_2;
    s32 temp_v0;
    s32 temp_v0_2;
    u32 temp_a3;

    if (__glBeginMode != 1) {
        if (target != GL_TEXTURE_ENV) {
            __glSetError(0x500, (__GLcontext *)0x2300, (f32 *) __glCurrentContext);
            return;
        }
        if (pname != GL_TEXTURE_ENV_MODE) {
            if (pname != GL_TEXTURE_ENV_COLOR) {
                __glSetError(0x500, (__GLcontext *)0x2300, (f32 *) __glCurrentContext);
                return;
            }
            temp_a3 = __glCurrentContext->unk9160;
            params->unkC = 0;
            temp_v0 = __glCurrentContext->unk9164 & 0xFFF;
            temp_v0_2 = temp_a3 & 0xFFF;
            temp_a3_2 = (temp_a3 >> 0xC) & 0xFFFF;
            params->unk8 = (s32) ((temp_v0 << 7) | (temp_v0 << 0x13) | (temp_v0 >> 5));
            params->unk0 = (temp_v0_2 << 7) | (temp_v0_2 << 0x13) | (temp_v0_2 >> 5);
            params->unk4 = (s32) ((temp_a3_2 << 7) | (temp_a3_2 << 0x13) | (temp_a3_2 >> 5));
        } else {
            params->unk0 = __glCurrentContext->unk915C;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glMgrim_GetTexParameterfv(enum GLenum target, enum GLenum pname, f32 *params) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_a5;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    u8 temp_a1;
    u8 temp_v0;
    u8 temp_v1;
    u8 var_a0;
    void *temp_s1;
    void *var_v0;

    sp0 = (s64) params;
    sp8 = (s64) target;
    sp10 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgrLookUpTexture((__GLcontext *) sp10, sp10, sp8, __glCurrentContext);
        temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (pname >= GL_TEXTURE_WRAP_R_EXT) {
                if (pname > GL_TEXTURE_WRAP_R_EXT) {
                    if (pname >= 0x813AU) {
                        if (pname > 0x813AU) {
                            if (pname >= GL_TEXTURE_FILTER4_SIZE_SGIS) {
                                if (pname > GL_TEXTURE_FILTER4_SIZE_SGIS) {
                                    /* Duplicate return node #8. Try simplifying control flow for better match */
                                    __glSetError(0x500);
                                    return;
                                }
                                __glim_GetTexParameterfv((enum GLenum) sp8, pname, (f32 *) sp0);
                            } else if (pname == 0x813B) {
                                sp0->unk0 = (f32) temp_s1->unk84;
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                __glSetError(0x500);
                            }
                        } else {
                            sp0->unk0 = (f32) temp_s1->unk80;
                        }
                    } else if (pname >= 0x8124U) {
                        if (pname > 0x8124U) {
                            if (pname == 0x8125) {
                                sp0->unk0 = (f32) temp_s1->unkBD;
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                __glSetError(0x500);
                            }
                        } else {
                            sp0->unk0 = (f32) temp_s1->unkBC;
                        }
                    } else if (pname == 0x809C) {
                        sp0->unk0 = (f32) sp10->unk9168;
                    } else {
                        /* Duplicate return node #8. Try simplifying control flow for better match */
                        __glSetError(0x500);
                    }
                } else if (temp_s1->unkAE != 0) {
                    if (temp_s1->unkAF != 0) {
                        sp0->unk0 = 10496.0f;
                    } else {
                        sp0->unk0 = 33069.0f;
                    }
                } else {
                    sp0->unk0 = 10497.0f;
                }
            } else if (pname >= GL_TEXTURE_WRAP_S) {
                if (pname >= GL_TEXTURE_WRAP_T) {
                    if (pname >= GL_TEXTURE_PRIORITY) {
                        if (pname > GL_TEXTURE_PRIORITY) {
                            if (pname == GL_TEXTURE_RESIDENT) {
                                if (temp_s1->unkC0 != 0) {
                                    goto block_15;
                                }
                                mgrTM_TexValidate(temp_s1);
                                if (temp_s1->unkC0 == 0) {
                                    return;
                                }
block_15:
                                temp_a1 = temp_s1->unkA5;
                                var_a0 = temp_s1->unkA4;
                                var_a5 = 1;
                                temp_s1->unkC1 = 1;
                                if ((s32) temp_a1 >= (s32) var_a0) {
                                    var_v0 = (var_a0 * 4) + temp_s1;
loop_58:
                                    temp_v1 = var_v0->unk14->unk1C->unk59;
                                    var_v0 += 4;
                                    var_a0 += 1;
                                    if (temp_v1 == 0) {
                                        var_a5 = 0;
                                        temp_s1->unkC1 = 0;
                                    }
                                    if ((s32) temp_a1 >= (s32) var_a0) {
                                        goto loop_58;
                                    }
                                }
                                sp0->unk0 = (f32) (var_a5 != 0);
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                __glSetError(0x500);
                            }
                        } else {
                            sp0->unk0 = (f32) temp_s1->unk70;
                        }
                    } else if (pname == GL_TEXTURE_WRAP_T) {
                        if (temp_s1->unkAD != 0) {
                            if (temp_s1->unkAF != 0) {
                                sp0->unk0 = 10496.0f;
                            } else {
                                sp0->unk0 = 33069.0f;
                            }
                        } else {
                            sp0->unk0 = 10497.0f;
                        }
                    } else {
                        /* Duplicate return node #8. Try simplifying control flow for better match */
                        __glSetError(0x500);
                    }
                } else if (temp_s1->unkAC != 0) {
                    if (temp_s1->unkAF != 0) {
                        sp0->unk0 = 10496.0f;
                    } else {
                        sp0->unk0 = 33069.0f;
                    }
                } else {
                    sp0->unk0 = 10497.0f;
                }
            } else if (pname >= GL_TEXTURE_MAG_FILTER) {
                if (pname < GL_TEXTURE_MIN_FILTER) {
                    if (temp_s1->unkB1 != 0) {
                        if (temp_s1->unkBE != 0) {
                            sp0->unk0 = 32919.0f;
                        } else {
                            sp0->unk0 = 9729.0f;
                        }
                    } else {
                        sp0->unk0 = 9728.0f;
                    }
                } else if (pname == GL_TEXTURE_MIN_FILTER) {
                    temp_v0 = temp_s1->unkB0;
                    if (temp_s1->unkB5 != 0) {
                        if (temp_s1->unkAB != 0) {
                            if (temp_v0 != 0) {
                                var_v0_2 = 0x2703;
                            } else {
                                var_v0_2 = 0x2702;
                            }
                            sp0->unk0 = (f32) var_v0_2;
                        } else {
                            if (temp_v0 != 0) {
                                var_v0_3 = 0x2701;
                            } else {
                                var_v0_3 = 0x2700;
                            }
                            sp0->unk0 = (f32) var_v0_3;
                        }
                    } else {
                        if (temp_v0 != 0) {
                            var_v0_4 = 0x2601;
                        } else {
                            var_v0_4 = 0x2600;
                        }
                        sp0->unk0 = (f32) var_v0_4;
                    }
                } else {
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glSetError(0x500);
                }
            } else {
                if (pname == GL_TEXTURE_BORDER_COLOR) {
                    sp0->unk0 = (f32) ((f32) (temp_s1->unk90 & 0xFFF) / 4095.0f);
                    sp0->unk4 = (f32) ((f32) ((u32) temp_s1->unk90 >> 0xC) / 4095.0f);
                    sp0->unk8 = (f32) ((f32) (temp_s1->unk94 & 0xFFF) / 4095.0f);
                    sp0->unkC = (f32) ((f32) ((u32) temp_s1->unk94 >> 0xC) / 4095.0f);
                    return;
                }
                __glSetError(0x500);
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502, __glCurrentContext);
    }
}

void __glMgrim_GetTexParameteriv(enum GLenum target, enum GLenum pname, s32 *params) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_a5;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v1;
    u8 temp_a1;
    u8 temp_v0;
    u8 temp_v1;
    u8 var_a0;
    void *temp_s1;
    void *var_v0;

    sp0 = (s64) params;
    sp8 = (s64) target;
    sp10 = (s64) __glCurrentContext;
    if (__glBeginMode != 1) {
        __glMgrLookUpTexture((__GLcontext *) sp10, sp10, sp8, __glCurrentContext);
        temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if (pname >= GL_TEXTURE_WRAP_R_EXT) {
                if (pname > GL_TEXTURE_WRAP_R_EXT) {
                    if (pname >= 0x813CU) {
                        if (pname > 0x813CU) {
                            if (pname >= GL_TEXTURE_FILTER4_SIZE_SGIS) {
                                if (pname > GL_TEXTURE_FILTER4_SIZE_SGIS) {
                                    /* Duplicate return node #8. Try simplifying control flow for better match */
                                    __glSetError(0x500);
                                    return;
                                }
                                __glim_GetTexParameteriv((enum GLenum) sp8, pname, (s32 *) sp0);
                            } else if (pname == 0x813D) {
                                sp0->unk0 = (s32) temp_s1->unk8C;
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                __glSetError(0x500);
                            }
                        } else {
                            sp0->unk0 = (s32) temp_s1->unk88;
                        }
                    } else if (pname >= 0x8124U) {
                        if (pname > 0x8124U) {
                            if (pname == 0x8125) {
                                sp0->unk0 = (s32) temp_s1->unkBD;
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                __glSetError(0x500);
                            }
                        } else {
                            sp0->unk0 = (s32) temp_s1->unkBC;
                        }
                    } else {
                        if (pname == 0x809C) {
                            var_v1 = sp10->unk9168;
                            goto block_29;
                        }
                        /* Duplicate return node #8. Try simplifying control flow for better match */
                        __glSetError(0x500);
                    }
                } else {
                    if (temp_s1->unkAE == 0) {
                        var_v1 = 0x2901;
                        goto block_29;
                    }
                    if (temp_s1->unkAF != 0) {
                        var_v1 = 0x2900;
                        goto block_29;
                    }
                    sp0->unk0 = 0x812D;
                }
            } else if (pname >= GL_TEXTURE_WRAP_S) {
                if (pname >= GL_TEXTURE_WRAP_T) {
                    if (pname >= GL_TEXTURE_PRIORITY) {
                        if (pname > GL_TEXTURE_PRIORITY) {
                            if (pname == GL_TEXTURE_RESIDENT) {
                                if (temp_s1->unkC0 != 0) {
                                    goto block_15;
                                }
                                mgrTM_TexValidate(temp_s1);
                                if (temp_s1->unkC0 == 0) {
                                    return;
                                }
block_15:
                                temp_a1 = temp_s1->unkA5;
                                var_a0 = temp_s1->unkA4;
                                var_a5 = 1;
                                temp_s1->unkC1 = 1;
                                if ((s32) temp_a1 >= (s32) var_a0) {
                                    var_v0 = (var_a0 * 4) + temp_s1;
loop_64:
                                    temp_v1 = var_v0->unk14->unk1C->unk59;
                                    var_v0 += 4;
                                    var_a0 += 1;
                                    if (temp_v1 == 0) {
                                        var_a5 = 0;
                                        temp_s1->unkC1 = 0;
                                    }
                                    if ((s32) temp_a1 >= (s32) var_a0) {
                                        goto loop_64;
                                    }
                                }
                                sp0->unk0 = (s32) (var_a5 != 0);
                            } else {
                                /* Duplicate return node #8. Try simplifying control flow for better match */
                                __glSetError(0x500);
                            }
                        } else {
                            sp0->unk0 = (s32) temp_s1->unk70;
                        }
                    } else if (pname == GL_TEXTURE_WRAP_T) {
                        if (temp_s1->unkAD == 0) {
                            sp0->unk0 = 0x2901;
                        } else if (temp_s1->unkAF != 0) {
                            sp0->unk0 = 0x2900;
                        } else {
                            sp0->unk0 = 0x812D;
                        }
                    } else {
                        /* Duplicate return node #8. Try simplifying control flow for better match */
                        __glSetError(0x500);
                    }
                } else if (temp_s1->unkAC != 0) {
                    if (temp_s1->unkAF != 0) {
                        sp0->unk0 = 0x2900;
                    } else {
                        sp0->unk0 = 0x812D;
                    }
                } else {
                    sp0->unk0 = 0x2901;
                }
            } else if (pname >= GL_TEXTURE_MAG_FILTER) {
                if (pname < GL_TEXTURE_MIN_FILTER) {
                    if (temp_s1->unkB1 == 0) {
                        var_v1 = 0x2600;
                        goto block_29;
                    }
                    if (temp_s1->unkBE != 0) {
                        var_v1 = 0x8097;
block_29:
                        *(s32 *) sp0 = var_v1;
                    } else {
                        sp0->unk0 = 0x2601;
                    }
                } else if (pname == GL_TEXTURE_MIN_FILTER) {
                    temp_v0 = temp_s1->unkB0;
                    if (temp_s1->unkB5 != 0) {
                        if (temp_s1->unkAB != 0) {
                            if (temp_v0 != 0) {
                                var_v0_2 = 0x2703;
                            } else {
                                var_v0_2 = 0x2702;
                            }
                            sp0->unk0 = var_v0_2;
                        } else {
                            if (temp_v0 != 0) {
                                var_v0_3 = 0x2701;
                            } else {
                                var_v0_3 = 0x2700;
                            }
                            sp0->unk0 = var_v0_3;
                        }
                    } else {
                        if (temp_v0 != 0) {
                            var_v0_4 = 0x2601;
                        } else {
                            var_v0_4 = 0x2600;
                        }
                        sp0->unk0 = var_v0_4;
                    }
                } else {
                    /* Duplicate return node #8. Try simplifying control flow for better match */
                    __glSetError(0x500);
                }
            } else {
                if (pname == GL_TEXTURE_BORDER_COLOR) {
                    sp0->unk0 = (s32) (temp_s1->unk90 & 0xFFF);
                    sp0->unk4 = (u32) ((u32) temp_s1->unk90 >> 0xC);
                    sp0->unk8 = (s32) (temp_s1->unk94 & 0xFFF);
                    sp0->unkC = (u32) ((u32) temp_s1->unk94 >> 0xC);
                    return;
                }
                __glSetError(0x500);
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502, __glCurrentContext);
    }
}

void __glMgrim_GetTexLevelParameterfv(enum GLenum target, s32 level, enum GLenum pname, f32 *params) {
    s64 sp0;
    __GLcontext *temp_a1;
    __GLcontext *temp_s2;
    u8 temp_v0;

    temp_s2 = __glCurrentContext;
    sp0 = (s64) params;
    if (__glBeginMode != 1) {
        __glMgrLookUpTexture(temp_s2, temp_s2, target);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if ((level >= 0) && (level < temp_s2->unkD6C)) {
                temp_a1 = ((level * 4) + M2C_ERROR(/* Read from unset register $v0 */))->unk14;
                if (temp_a1 != NULL) {
                    if (pname >= GL_TEXTURE_GREEN_SIZE) {
                        if (pname > GL_TEXTURE_GREEN_SIZE) {
                            if (pname >= GL_TEXTURE_LUMINANCE_SIZE) {
                                if (pname > GL_TEXTURE_LUMINANCE_SIZE) {
                                    if (pname == GL_TEXTURE_DEPTH_EXT) {
                                        *sp0 = (f32) (temp_a1->imports.free + (temp_a1->imports.fatal * 2));
                                    } else {
                                        goto block_31;
                                    }
                                } else {
                                    goto block_15;
                                }
                            } else {
                                if (pname >= GL_TEXTURE_ALPHA_SIZE) {
                                    if (pname <= GL_TEXTURE_ALPHA_SIZE) {
                                        goto block_15;
                                    }
                                    goto block_31;
                                }
                                if (pname != GL_TEXTURE_BLUE_SIZE) {
                                    goto block_31;
                                }
                                goto block_15;
                            }
                        } else {
                            goto block_15;
                        }
                    } else if (pname >= GL_TEXTURE_INTERNAL_FORMAT) {
                        if (pname >= GL_TEXTURE_BORDER_COLOR) {
                            if (pname >= GL_TEXTURE_RED_SIZE) {
                                if (pname <= GL_TEXTURE_RED_SIZE) {
block_15:
                                    temp_v0 = M2C_ERROR(/* Read from unset register $v0 */)->unkA7;
                                    if (temp_v0 != 0) {
                                        if (temp_v0 == 1) {
                                            *sp0 = 8.0f;
                                        } else if (temp_v0 == 2) {
                                            *sp0 = 12.0f;
                                        }
                                    } else {
                                        *sp0 = 4.0f;
                                    }
                                } else {
                                    goto block_31;
                                }
                            } else if (pname == GL_TEXTURE_BORDER) {
                                *sp0 = (f32) temp_a1->imports.fatal;
                            } else {
                                goto block_31;
                            }
                        } else {
                            *sp0 = (f32) ((u64) ((s64) temp_a1->imports.getenv << 0x20) >> 0x20);
                        }
                    } else if (pname >= GL_TEXTURE_HEIGHT) {
                        if (pname < 0x1002U) {
                            *sp0 = (f32) (temp_a1->imports.realloc + (temp_a1->imports.fatal * 2));
                        } else {
                            goto block_31;
                        }
                    } else if (pname == GL_TEXTURE_WIDTH) {
                        *sp0 = (f32) (temp_a1->imports.calloc + (temp_a1->imports.fatal * 2));
                    } else {
block_31:
                        __glSetError(0x501, temp_a1);
                    }
                    return;
                }
                *sp0 = 0.0f;
                return;
            }
            __glSetError(0x501);
            return;
        }
        __glSetError(0x500);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetTexLevelParameteriv(enum GLenum target, s32 level, enum GLenum pname, s32 *params) {
    s64 sp0;
    __GLcontext *temp_a1;
    __GLcontext *temp_s2;
    u8 temp_v0;

    temp_s2 = __glCurrentContext;
    sp0 = (s64) params;
    if (__glBeginMode != 1) {
        __glMgrLookUpTexture(temp_s2, temp_s2, target);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            if ((level >= 0) && (level < temp_s2->unkD6C)) {
                temp_a1 = ((level * 4) + M2C_ERROR(/* Read from unset register $v0 */))->unk14;
                if (temp_a1 != NULL) {
                    if (pname >= GL_TEXTURE_GREEN_SIZE) {
                        if (pname > GL_TEXTURE_GREEN_SIZE) {
                            if (pname >= GL_TEXTURE_LUMINANCE_SIZE) {
                                if (pname > GL_TEXTURE_LUMINANCE_SIZE) {
                                    if (pname == GL_TEXTURE_DEPTH_EXT) {
                                        *sp0 = (s32) (temp_a1->imports.free + (temp_a1->imports.fatal * 2));
                                    } else {
                                        goto block_29;
                                    }
                                } else {
                                    goto block_15;
                                }
                            } else {
                                if (pname >= GL_TEXTURE_ALPHA_SIZE) {
                                    if (pname <= GL_TEXTURE_ALPHA_SIZE) {
                                        goto block_15;
                                    }
                                    goto block_29;
                                }
                                if (pname != GL_TEXTURE_BLUE_SIZE) {
                                    goto block_29;
                                }
                                goto block_15;
                            }
                        } else {
                            goto block_15;
                        }
                    } else if (pname >= GL_TEXTURE_INTERNAL_FORMAT) {
                        if (pname >= GL_TEXTURE_BORDER_COLOR) {
                            if (pname >= GL_TEXTURE_RED_SIZE) {
                                if (pname <= GL_TEXTURE_RED_SIZE) {
block_15:
                                    temp_v0 = M2C_ERROR(/* Read from unset register $v0 */)->unkA7;
                                    switch (temp_v0) { /* irregular */
                                    case 2:
                                        *sp0 = 0xC;
                                        break;
                                    case 0:
                                        *sp0 = 4;
                                        break;
                                    case 1:
                                        *sp0 = 8;
                                        break;
                                    }
                                } else {
                                    goto block_29;
                                }
                            } else if (pname == GL_TEXTURE_BORDER) {
                                *sp0 = (s32) temp_a1->imports.fatal;
                            } else {
                                goto block_29;
                            }
                        } else {
                            *sp0 = (s32) temp_a1->imports.getenv;
                        }
                    } else if (pname >= GL_TEXTURE_HEIGHT) {
                        if (pname < 0x1002U) {
                            *sp0 = (s32) (temp_a1->imports.realloc + (temp_a1->imports.fatal * 2));
                        } else {
                            goto block_29;
                        }
                    } else if (pname == GL_TEXTURE_WIDTH) {
                        *sp0 = (s32) (temp_a1->imports.calloc + (temp_a1->imports.fatal * 2));
                    } else {
block_29:
                        __glSetError(0x501, temp_a1);
                    }
                    return;
                }
                *sp0 = 0;
                return;
            }
            __glSetError(0x501);
            return;
        }
        __glSetError(0x500);
        return;
    }
    __glSetError(0x502);
}

void __glMgrim_GetDetailTexFuncSGIS(__GLcontext *gc, s32 arg1, ...) {
    if (__glBeginMode != 1) {
        if (gc != (__GLcontext *)0xDE1) {
            __glSetError(0x500, (__GLcontext *)0xDE1, (f32 *) __glCurrentContext, arg1);
            return;
        }
        memcpy((void *) arg1, __glCurrentContext->unk916C, __glCurrentContext->unk9168 * 4);
        return;
    }
    __glSetError(0x502, __glCurrentContext, (f32 *) arg1);
}
