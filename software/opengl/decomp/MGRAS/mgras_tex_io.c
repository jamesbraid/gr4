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
    /* 0xB4 */ char padB4[0x14];                    /* maybe part of fetchStippledLine[6]? */
    /* 0xC8 */ s32 unkC8;                           /* inferred */
    /* 0xCC */ char padCC[8];                       /* maybe part of unkC8[3]? */
    /* 0xD4 */ s32 unkD4;                           /* inferred */
    /* 0xD8 */ void (*clear)(__GLcolorBuffer *);
} __GLcolorBuffer;                                  /* size = 0xDC */

typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0x398];                 /* maybe part of gcState[0xE7]? */
    /* 0x0430 */ u8 unk430;                         /* inferred */
    /* 0x0431 */ char pad431[3];                    /* maybe part of unk430[4]? */
    /* 0x0434 */ s32 unk434;                        /* inferred */
    /* 0x0438 */ s32 unk438;                        /* inferred */
    /* 0x043C */ s32 unk43C;                        /* inferred */
    /* 0x0440 */ char pad440[4];
    /* 0x0444 */ s32 unk444;                        /* inferred */
    /* 0x0448 */ s32 unk448;                        /* inferred */
    /* 0x044C */ s32 unk44C;                        /* inferred */
    /* 0x0450 */ s32 unk450;                        /* inferred */
    /* 0x0454 */ ? unk454;                          /* inferred */
    /* 0x0454 */ char pad454[1];
    /* 0x0455 */ u8 unk455;                         /* inferred */
    /* 0x0456 */ char pad456[2];                    /* maybe part of unk455[3]? */
    /* 0x0458 */ s32 unk458;                        /* inferred */
    /* 0x045C */ char pad45C[0xC];                  /* maybe part of unk458[4]? */
    /* 0x0468 */ s32 unk468;                        /* inferred */
    /* 0x046C */ s32 unk46C;                        /* inferred */
    /* 0x0470 */ s32 unk470;                        /* inferred */
    /* 0x0474 */ s32 unk474;                        /* inferred */
    /* 0x0478 */ char pad478[0x798];                /* maybe part of unk474[0x1E7]? */
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
    /* 0x3120 */ char pad3120[0x4A28];              /* maybe part of procs[0x17]? */
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

? abort();                                          /* extern */
? fprintf(s64, void *);                             /* extern */
? perror(void *);                                   /* extern */
extern void *MgrasPrevVidTexture;
extern ? SYMBOL_LOCATION;
extern ? __glMgr_DefaultPack;
extern ? __glMgr_DefaultUnpack;
extern ? __iob;
extern s32 errno;
extern ? sub_0dbe0000;
extern ? sub_0dbf0000;

void flushRegs(s32 arg0, void *arg1, s32 arg2, s32 arg3) {
    s32 temp_v1;
    s32 var_a6;
    void *var_a1;
    void *var_a4;

    var_a6 = arg2 & 3;
    *(s32 *)0x74080 = arg0 | 8;
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

void __glMgrasWrite(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, s32 arg4, ...) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_v0;
    void *temp_a6;

    temp_a6 = gc + 0x10000;
    temp_at = gc->unkB3FC + 1;
    gc->unkB3FC = temp_at;
    ((temp_at * 4) + gc)->unkADB8 = arg1;
    temp_a5 = gc->unkB3FC + 1;
    gc->unkB3FC = temp_a5;
    ((temp_a5 * 4) + gc)->unkADB8 = arg2;
    temp_v0 = gc->unkB3FC + 1;
    gc->unkB3FC = temp_v0;
    ((temp_v0 * 4) + gc)->unkADB8 = arg3;
    temp_a7 = gc->unkB3FC;
    if ((arg4 != 0) || (sp0 = (s64) temp_a6, ((temp_a7 < 0x190) == 0))) {
        sp0 = (s64) temp_a6;
        M2C_TRAP_IF(3 == 0);
        temp_a2 = (temp_a7 + 1) & ~1;
        gc->unkB3FC = temp_a2;
        mgrTM_FreeDMAPool(0x7C00, gc + 0xADBC, temp_a2, temp_a7 / 3, (void *)3, temp_a5, temp_a6, temp_a7);
        sp0->unk-4C04 = 0;
    }
}

void __glMgrasSet(__GLcontext *gc, s32 arg1, s32 arg2, s32 arg3, ...) {
    s64 sp0;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_v0;
    void *temp_a4;
    void *temp_a5;

    temp_a5 = gc + 0x10000;
    temp_a6 = gc->unkBA40 + 1;
    gc->unkBA40 = temp_a6;
    temp_a4 = (temp_a6 * 4) + gc;
    temp_a4->unkB3FC = arg1;
    temp_v0 = gc->unkBA40 + 1;
    gc->unkBA40 = temp_v0;
    ((temp_v0 * 4) + gc)->unkB3FC = arg2;
    temp_a6_2 = gc->unkBA40;
    if ((arg3 != 0) || (sp0 = (s64) temp_a5, ((temp_a6_2 < 0x190) == 0))) {
        sp0 = (s64) temp_a5;
        mgrTM_FreeDMAPool(0x7F00, gc + 0xB400, temp_a6_2, temp_a6_2 >> 1, temp_a4 + 0x10000, (s32) temp_a5, (void *) temp_a6_2, (s32) gc);
        sp0->unk-45C0 = 0;
    }
}

void __glMgrSaveTexmode(__GLcontext *gc, __GLcontext *arg1, __GLcontext *arg2, __GLcontext *arg3, ...) {
    *(__GLcontext **)0x74080 = (__GLcontext *)0xE910;
    *(__GLcontext **)0x74080 = gc;
    *(__GLcontext **)0x74080 = arg1;
    *(__GLcontext **)0x74080 = arg2;
    *(__GLcontext **)0x74080 = arg3;
}

void __glMgrRestoreTexmode(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0xEA00;
}

void mgrTM_DoTexLoad(void *arg0, s64 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s64 sp138;
    u64 sp130;
    u64 sp128;
    u64 sp120;
    s64 sp118;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    u64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp2C;
    ? sp28;
    s32 sp20;
    ? var_a1;
    ? var_a1_2;
    ? var_a1_3;
    ? var_a1_4;
    __GLcontext *temp_a0_10;
    __GLcontext *temp_a0_12;
    __GLcontext *temp_a0_14;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a0_9;
    __GLcontext *temp_s3;
    s16 temp_a0_7;
    s16 temp_a2_4;
    s16 temp_a4_3;
    s16 temp_a4_4;
    s16 temp_a4_6;
    s16 temp_a4_7;
    s16 temp_a5_3;
    s16 temp_a5_5;
    s16 temp_a5_6;
    s16 temp_a6_2;
    s16 temp_a6_3;
    s16 temp_a6_4;
    s16 temp_a6_5;
    s16 temp_a7_2;
    s16 temp_a7_3;
    s16 temp_t3;
    s16 var_a6_2;
    s16 var_v0;
    s32 *temp_s2;
    s32 *temp_s2_2;
    s32 *temp_s2_3;
    s32 *temp_s2_4;
    s32 *temp_s2_5;
    s32 temp_a0;
    s32 temp_a0_11;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_6;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_4;
    s32 temp_a5_7;
    s32 temp_a6;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_s6;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2_2;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 var_a0;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s5;
    s32 var_s6;
    s32 var_s8;
    s32 var_t2;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_a1;
    s64 temp_a2_5;
    s64 temp_a3;
    s64 temp_a4_5;
    s64 temp_lo_3;
    s64 temp_v0_2;
    s64 temp_v0_4;
    s64 temp_v1;
    s64 var_a6;
    s64 var_a7;
    s64 var_at;
    u16 temp_a0_13;
    u16 temp_a0_8;
    u32 var_a2;
    u32 var_a4;
    u32 var_a5;
    u64 temp_lo_4;
    u64 var_a3;
    u8 temp_a0_15;
    u8 temp_a7;
    u8 temp_t0_2;
    u8 temp_t3_2;
    u8 temp_t3_3;
    u8 temp_v0;
    void (*temp_a5_2)(__GLcolorBuffer *);
    void *temp_a0_16;
    void *temp_a0_4;
    void *temp_a1_2;
    void *temp_at;
    void *temp_at_2;
    void *temp_at_3;
    void *temp_s4;
    void *temp_s7;
    void *temp_t2;

    var_s8 = arg2;
    sp30 = 0;
    var_s0 = arg4;
    var_s5 = arg3;
    sp100 = arg1;
    temp_s3 = __glCurrentContext;
    temp_s7 = temp_s3 + 0x10000;
    temp_at = temp_s3->unk91FC;
    temp_s4 = ((arg1 * 4) + arg0)->unk14;
    sp40 = (s64) temp_at;
    mgrTM_VidTexWait(temp_s3, arg0, 0);
    __glMgrGetColorMatrixState(temp_s3, temp_s3);
    if (temp_at->unk1E8 != temp_s4) {
        if (((s32) arg0->unkA7 >= 2) && ((s32) arg0->unkA6 >= 2)) {
            sp30 = 1;
        }
        mgrTM_SetLoadBuffer(temp_s3, arg0);
        mgrTM_SendTlMode(temp_s3, temp_s4);
        temp_a7 = arg0->unkB3;
        temp_a6 = (s32) temp_a7 > 3;
        temp_a5 = ((temp_s4->unk3B + temp_a6) & 0xF) * 0x10;
        temp_a2 = (((sp100 & 0xF) | ((temp_s4->unk3C & 0xF) << 8)) & ~0xF0) | temp_a5;
        sp20 = temp_a2;
        __glMgrasWrite(temp_s3, temp_s3, 0x1A2, temp_a2, SYMBOL_LOCATION.unk128, 1, temp_a5, temp_a6, temp_a7);
        sp40->unk1E8 = temp_s4;
    }
    temp_a0 = temp_s3->unk458;
    if (temp_a0 == 0) {
        var_v0 = temp_s4->unk28;
    } else {
        var_v0 = (s16) temp_a0;
    }
    temp_a0_2 = temp_s3->unk46C;
    if (temp_a0_2 != 0) {
        spD0 = (s64) temp_a0_2;
    } else {
        spD0 = (s64) temp_s4->unk2A;
    }
    temp_a0_3 = temp_s3->unk474;
    if (temp_a0_3 != 0) {
        spE0 = (s64) temp_a0_3;
    } else {
        spE0 = (s64) temp_s4->unk2C;
    }
    unksp88 = (s64) var_v0;
    temp_t2 = temp_s4->unk1C;
    temp_t3 = temp_t2->unk4A;
    sp38 = (s64) temp_t3;
    temp_t2->unk4A = (s16) ((temp_s4->unk36 * ((temp_s4->unk26 * temp_s4->unkC) + ((s16) temp_s4->unk24 >> 1))) + temp_t3);
    __glMgrSaveRSS((__GLcontext *)-1, -1, 0x01400000, 0, 0, 3);
    temp_v0 = arg0->unkA8;
    temp_s6 = temp_s4->unk24 & 1;
    if (temp_v0 != 0) {
        var_at = unksp88 * temp_v0;
    } else {
        var_at = (unksp88 >> 3) + ((unksp88 & 7) != 0);
    }
    spD8 = var_at;
    temp_v0_2 = ((temp_s3->unk468 + (temp_s3->unk470 * spE0)) * spD0 * var_at) + var_s0;
    if (((temp_s4->unk2C >= 2) || (temp_s4->unk2E >= 2)) && (arg0->unkB3 != 8)) {
        if (temp_s7->unk-7A94 != 0) {
            temp_s2 = &temp_s3->frontBuffer.greenMax;
            __glMgrMakePixelDesc((__GLcontext *) temp_s2, temp_s2, 4, 0, 0, temp_s4->unk20, temp_s4->unk22, temp_s4->unk28, temp_s4->unk2A, var_s8, arg0->unk98, var_s5, var_s0);
            if (temp_s3->frontBuffer.greenMax != 0) {
                M2C_ERROR(/* Read from unset register $t9 */)(temp_s2);
                __glMgrMakeTiles((__GLcontext *) temp_s2, temp_s2, temp_s3);
                __glMgrMakePages((__GLcontext *) temp_s2, temp_s2, temp_s3);
            }
            temp_a7_2 = temp_s4->unk2E;
            temp_a6_2 = temp_s4->unk2C;
            temp_lo = temp_a6_2 * temp_a7_2;
            temp_a5_2 = temp_s3->frontBuffer.clear;
            temp_a4 = temp_s7->unk-7E40;
            temp_lo_2 = temp_a4 * (s32) temp_a5_2;
            temp_lo_3 = temp_lo * temp_lo_2;
            sp60 = temp_lo_3;
            __glMgrBuildChain(temp_s3, temp_s3, temp_lo_3 * 4, temp_lo, temp_lo_2, temp_a4, temp_a5_2, temp_a6_2, temp_a7_2);
            temp_a3 = M2C_ERROR(/* Read from unset register $v0 */);
            sp78 = M2C_ERROR(/* Read from unset register $v0 */);
            if (spD0 != 0) {
                sp138 = temp_a3;
                sp68 = spD0;
            } else {
                sp138 = temp_a3;
                sp68 = 1;
            }
            __glMgrBuildLockPageList((__GLcontext *) temp_s2, temp_s2, sp78, temp_s4->unk2C * temp_s4->unk2E, temp_a3);
            __glMgr_LockMultiDMAPool(temp_s3, temp_s3, sp60, sp78, sp68 * spD8, 1, 0);
            temp_a0_4 = temp_s3->backBuffer.storeStippledSpan;
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                temp_s3->backBuffer.storeStippledSpan = (void *) ((s32) temp_a0_4 | 1);
            } else {
                temp_s3->backBuffer.storeStippledSpan = (void *) ((s32) temp_a0_4 & ~1);
            }
            temp_s3->imports.free(temp_s3, (void *) sp138);
            goto block_27;
        }
        if (spE0 != 0) {
            var_a6 = spE0;
            if (spD0 != 0) {
                goto block_68;
            }
            goto block_109;
        }
        var_a6 = 1;
        if (spD0 == 0) {
block_109:
            sp48 = temp_v0_2;
            var_a7 = 1;
        } else {
block_68:
            sp48 = temp_v0_2;
            var_a7 = spD0;
        }
        temp_lo_4 = temp_s4->unk2E * var_a6 * (var_a7 * spD8);
        sp58 = temp_lo_4;
        __glMgr_LockSingleDMAPool(temp_s3, temp_s3, sp48, temp_lo_4, 1, &sp28, 3, var_a6, var_a7);
        var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            var_a3 = sp58 & 0xFFF;
            var_a4 = sp58 >> 0xC;
            var_a5 = var_a4 + 1;
loop_71:
            if ((errno == 0xC) || (var_v0_2 = 1, (errno == 0xB))) {
                var_v0_2 = 0;
            }
            var_a2 = var_a4;
            if (var_v0_2 == 0) {
                if (var_a3 != 0) {
                    var_a2 = var_a5;
                }
                sp130 = var_a3;
                sp128 = (u64) var_a4;
                sp120 = (u64) var_a5;
                if ((u16) temp_s7->unk-6E04->unk4D0 >= var_a2) {
                    mgrTM_UnlockPages(temp_s3, 0, (u64) var_a2, var_a3, (u64) var_a4, (u64) var_a5, 0xC, &errno);
                    __glMgr_LockSingleDMAPool(temp_s3, temp_s3, sp48, sp58, 1, &sp28, 3);
                    var_a0 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                    var_a5 = (u32) sp120;
                    var_a4 = (u32) sp128;
                    var_a3 = sp130;
                    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                        goto loop_71;
                    }
                }
            }
        }
        temp_v0_3 = temp_s3->backBuffer.unkC8;
        if (var_a0 != 0) {
            temp_s3->backBuffer.unkC8 = temp_v0_3 | 1;
            if ((temp_s4->unk2E == 1) && (temp_s3->unk46C == 0) && (temp_s3->unk458 == 0)) {
                temp_s2_2 = &temp_s3->frontBuffer.greenMax;
                __glMgrMakePixelDesc((__GLcontext *) temp_s2_2, temp_s2_2, 4, 0, 0, temp_s4->unk20, temp_s4->unk22, temp_s4->unk28, temp_s4->unk2A, var_s8, arg0->unk98, var_s5, var_s0);
                if (temp_s3->frontBuffer.greenMax != 0) {
                    __glMgrasWrite((__GLcontext *) temp_s2_2, temp_s2_2);
                    __glMgrMakeTiles((__GLcontext *) temp_s2_2, temp_s2_2, temp_s3);
                    __glMgrMakePages((__GLcontext *) temp_s2_2, temp_s2_2, temp_s3);
                }
                if (temp_s7->unk-7E70 == 1) {
                    sp70 = 0;
                    if (temp_s4->unk2E > 0) {
loop_134:
                        temp_a0_5 = temp_s4->unk4;
                        __glMgrInitPixelStateERAM(temp_a0_5, temp_a0_5, -2);
                        __glMgrInitPixelStateERAM((__GLcontext *) temp_s6, temp_s6, -2);
                        __glMgrInitPixelStateERAM(NULL, 0, -2);
                        temp_a2_2 = temp_s4->unk3A << 8;
                        temp_a0_6 = temp_s4->unk1C->unk4A | temp_a2_2;
                        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_6, temp_a0_6, -2, temp_a2_2);
                        temp_a0_7 = temp_s4->unk1C->unk4A;
                        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_7, temp_a0_7, -2);
                        temp_a0_8 = temp_s4->unk36;
                        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_8, temp_a0_8, -2);
                        temp_a0_9 = SYMBOL_LOCATION.unk4A0 + 9;
                        __glMgrInitPixelStateERAM(temp_a0_9, temp_a0_9, -1);
                        temp_s3->backBuffer.unkD4 = 0;
                        __glMgrSendPixels((__GLcontext *) temp_s2_2, temp_s2_2, 0, 0, temp_s4->unk2C);
                        temp_v0_4 = sp70 + 1;
                        sp70 = temp_v0_4;
                        var_v0_3 = temp_v0_4 < temp_s4->unk2E;
                        if (var_v0_3 != 0) {
                            temp_t0 = temp_s4->unk10;
                            temp_at_2 = temp_s4->unk1C;
                            temp_at_2->unk4A = (s16) (temp_at_2->unk4A + ((s32) temp_s4->unk32 / temp_t0));
                            M2C_TRAP_IF(temp_t0 == 0);
                            var_v0_3 = sp70 < temp_s4->unk2E;
                        }
                        if (var_v0_3 != 0) {
                            goto loop_134;
                        }
                    }
                    temp_a4_2 = temp_s3->backBuffer.unkC8 & ~1;
                    temp_s3->backBuffer.unkC8 = temp_a4_2;
                    __glMgr_UnlockSingleDMAPool(temp_s3, temp_s3, 0, 0, 3, temp_a4_2, -2);
                    __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
                    temp_s4->unk1C->unk4A = (s16) sp38;
                    temp_s4->unk1C->unk55 = 0;
                    if (sp30 != 0) {
                        __glMgrasWrite(temp_s3, temp_s3, 0x1A1, 0, SYMBOL_LOCATION.unk124, 1);
                        sp40->unk1E8 = NULL;
                    }
                    return;
                }
                goto block_27;
            }
            goto block_27;
        }
        temp_s3->backBuffer.unkC8 = temp_v0_3 & ~1;
        goto block_27;
    }
block_27:
    temp_a0_10 = temp_s4->unk4;
    __glMgrInitPixelStateERAM(temp_a0_10, temp_a0_10, -2);
    __glMgrInitPixelStateERAM((__GLcontext *) temp_s6, temp_s6, -2);
    __glMgrInitPixelStateERAM((__GLcontext *) sp100, sp100, -2);
    temp_a2_3 = temp_s4->unk3A << 8;
    temp_a0_11 = temp_s4->unk1C->unk4A | temp_a2_3;
    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_11, temp_a0_11, -2, temp_a2_3);
    temp_a2_4 = temp_s4->unk1C->unk4A;
    temp_a0_12 = temp_s4->unk38 + temp_a2_4;
    __glMgrInitPixelStateERAM(temp_a0_12, temp_a0_12, -2, temp_a2_4);
    temp_a0_13 = temp_s4->unk36;
    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_13, temp_a0_13, -2);
    temp_a0_14 = SYMBOL_LOCATION.unk4A0 + 9;
    __glMgrInitPixelStateERAM(temp_a0_14, temp_a0_14, -1);
    spF0 = (s64) var_s5;
    spF8 = (s64) var_s8;
    sp70 = 0;
    if (temp_s4->unk2E > 0) {
        spE8 = (s64) var_s0;
        temp_s2_3 = &temp_s3->frontBuffer.greenMax;
        sp108 = (s64) sp2C;
loop_31:
        var_s0_2 = 0;
        var_s6 = temp_s4->unk24 & 1;
        if (temp_s4->unk2C > 0) {
loop_42:
            if (arg0->unkC2 != 0) {
                mgrTM_SendTlTable((s32 *) temp_s3, arg0, sp100);
            } else {
                *(s32 *)0x74080 = 0x9B00;
            }
            temp_t3_2 = arg0->unkB3;
            var_t2 = var_s0_2;
            if (temp_t3_2 == 8) {
                var_t2 = 0;
            }
            temp_v0_5 = arg0->unk98;
            temp_a5_3 = temp_s4->unk22;
            temp_a4_3 = temp_s4->unk20;
            temp_a7_3 = temp_s4->unk2A;
            temp_a6_3 = temp_s4->unk28;
            if (temp_s7->unk-7A94 != 0) {
                var_a1 = 4;
                if (temp_t3_2 == 0) {
                    var_a1 = 3;
                }
                __glMgrMakePixelDesc((__GLcontext *) temp_s2_3, temp_s2_3, var_a1, 0, 0, temp_a4_3, temp_a5_3, temp_a6_3, temp_a7_3, (s32) spF8, temp_v0_5, (s32) spF0, (s32) spE8);
            } else {
                var_a1_2 = 4;
                if (temp_t3_2 == 0) {
                    var_a1_2 = 3;
                }
                __glMgrMakePixelDesc((__GLcontext *) temp_s2_3, temp_s2_3, var_a1_2, 0, 0, temp_a4_3, temp_a5_3, temp_a6_3, temp_a7_3, (s32) spF8, temp_v0_5, (s32) spF0, ((temp_s3->unk468 + var_t2 + ((temp_s3->unk470 + sp70) * spE0)) * spD0 * spD8) + spE8);
            }
            if (temp_s3->frontBuffer.greenMax != 0) {
                mgrTM_SendTlTable(temp_s2_3);
                __glMgrMakeTiles((__GLcontext *) temp_s2_3, temp_s2_3, temp_s3);
                __glMgrMakePages((__GLcontext *) temp_s2_3, temp_s2_3, temp_s3);
            }
            temp_s3->backBuffer.unkD4 = 0;
            if (temp_s7->unk-7A94 != 0) {
                sp108 = 0;
            } else {
                sp108 = 3;
            }
            __glMgrSendPixels((__GLcontext *) temp_s2_3, temp_s2_3, 0, var_s0_2, 1);
            var_s0_2 += 1;
            temp_at_3 = temp_s4->unk1C;
            temp_at_3->unk4A = (s16) (temp_at_3->unk4A + (temp_s4->unk36 * var_s6));
            var_s6 ^= 1;
            *(s32 *)0x74080 = 0x9C00;
            if (var_s0_2 < temp_s4->unk2C) {
                goto loop_42;
            }
        }
        temp_v1 = sp70 + 1;
        sp70 = temp_v1;
        if (temp_v1 < temp_s4->unk2E) {
            goto loop_31;
        }
        var_s8 = (s32) spF8;
        var_s5 = (s32) spF0;
        var_s0 = (s32) spE8;
        sp2C = (s32) sp108;
    }
    if (temp_s4->unk14 == 0) {
        if (arg0->unkB3 != 0) {
            sp108 = (s64) sp2C;
        } else {
            goto block_55;
        }
    } else {
block_55:
        temp_a0_15 = arg0->unkA9;
        if (((s32) temp_s4->unk4 >> temp_a0_15) != 0x200) {
            goto block_56;
        }
        if (arg0->unkB4 != 0) {
            var_a6_2 = temp_s4->unk28;
            temp_a4_4 = temp_s4->unk20;
            temp_a1 = 0x100 << temp_a0_15;
            var_v0_4 = var_s0;
            if (temp_a4_4 < temp_a1) {
                temp_t1 = temp_a1 - temp_a4_4;
                var_a6_2 = (s16) ((s64) ((var_a6_2 - temp_t1) << 0x30) >> 0x30);
                temp_s4->unk28 = var_a6_2;
                temp_a4_5 = (s64) (temp_a1 << 0x30) >> 0x30;
                temp_s4->unk20 = (s16) temp_a4_5;
                temp_t0_2 = arg0->unkA8;
                MULT_HI(temp_t0_2, temp_t1);
                var_v0_4 = (temp_t0_2 * temp_t1) + var_s0;
                if ((((s64) (temp_a1 << 0x30) >> 0x30) + var_a6_2) == ((temp_a1 * 2) + 1)) {
                    var_a6_2 = (s16) ((s64) ((var_a6_2 - 1) << 0x30) >> 0x30);
                    temp_s4->unk28 = var_a6_2;
                }
                temp_s4->unk20 = (s16) (temp_a4_5 + temp_a1);
            }
            sp48 = (s64) var_v0_4;
            if (var_a6_2 > 0) {
                *(void *)0x74080 = 0x9C00;
                temp_a5_4 = ((arg0->unkA9 + 0xA) & 0xF) * 0x10;
                temp_a2_5 = (-0xF1 & sp20) | temp_a5_4;
                sp50 = temp_a2_5;
                __glMgrasWrite(temp_s3, temp_s3, 0x1A2, temp_a2_5, SYMBOL_LOCATION.unk128, 1, temp_a5_4, sp20, 0x9C00);
                temp_a5_5 = temp_s4->unk22;
                if (temp_a5_5 == -1) {
                    temp_a6_4 = temp_s4->unk28;
                    if (temp_a6_4 > 0) {
                        temp_v0_6 = arg0->unk98;
                        temp_a4_6 = temp_s4->unk20;
                        temp_s2_4 = &temp_s3->frontBuffer.greenMax;
                        temp_t3_3 = arg0->unkB3;
                        if (temp_s7->unk-7A94 != 0) {
                            var_a1_3 = 4;
                            if (temp_t3_3 == 0) {
                                var_a1_3 = 3;
                            }
                            __glMgrMakePixelDesc((__GLcontext *) temp_s2_4, temp_s2_4, var_a1_3, 0, 0, temp_a4_6, temp_a5_5, temp_a6_4, 1, var_s8, temp_v0_6, var_s5, var_s0);
                        } else {
                            var_a1_4 = 4;
                            if (temp_t3_3 == 0) {
                                var_a1_4 = 3;
                            }
                            __glMgrMakePixelDesc((__GLcontext *) temp_s2_4, temp_s2_4, var_a1_4, 0, 0, temp_a4_6, temp_a5_5, temp_a6_4, 1, var_s8, temp_v0_6, var_s5, (s32) sp48);
                        }
                        if (temp_s3->frontBuffer.greenMax != 0) {
                            M2C_ERROR(/* Read from unset register $t9 */)(temp_s2_4);
                            __glMgrMakeTiles((__GLcontext *) temp_s2_4, temp_s2_4, temp_s3);
                            __glMgrMakePages((__GLcontext *) temp_s2_4, temp_s2_4, temp_s3);
                        }
                        temp_s3->backBuffer.unkD4 = 0;
                        if (temp_s7->unk-7A94 != 0) {
                            sp2C = 0;
                        } else {
                            sp2C = 3;
                        }
                        __glMgrSendPixels((__GLcontext *) temp_s2_4, temp_s2_4, 0, 0, 1);
                    }
                }
                if (arg0->unkB3 != 0) {
                    temp_a5_6 = temp_s4->unk22;
                    temp_t2_2 = temp_s4->unk8;
                    if ((temp_s4->unk2A + temp_a5_6) == (temp_s4->unk14 + temp_t2_2)) {
                        temp_v0_7 = arg0->unk98;
                        temp_a4_7 = temp_s4->unk20;
                        temp_a6_5 = temp_s4->unk28;
                        temp_s2_5 = &temp_s3->frontBuffer.greenMax;
                        sp48 += (temp_t2_2 - temp_a5_6) * spD8;
                        if (temp_s7->unk-7A94 != 0) {
                            __glMgrMakePixelDesc((__GLcontext *) temp_s2_5, temp_s2_5, 4, 0, 0, temp_a4_7, temp_t2_2, temp_a6_5, 1, var_s8, temp_v0_7, var_s5, var_s0);
                        } else {
                            __glMgrMakePixelDesc((__GLcontext *) temp_s2_5, temp_s2_5, 4, 0, 0, temp_a4_7, temp_t2_2, temp_a6_5, 1, var_s8, temp_v0_7, var_s5, (s32) sp48);
                        }
                        if (temp_s3->frontBuffer.greenMax != 0) {
                            M2C_ERROR(/* Read from unset register $t9 */)(temp_s2_5);
                            __glMgrMakeTiles((__GLcontext *) temp_s2_5, temp_s2_5, temp_s3);
                            __glMgrMakePages((__GLcontext *) temp_s2_5, temp_s2_5, temp_s3);
                        }
                        temp_s3->backBuffer.unkD4 = 0;
                        if (temp_s7->unk-7A94 != 0) {
                            sp108 = 0;
                        } else {
                            sp108 = 3;
                        }
                        __glMgrSendPixels((__GLcontext *) temp_s2_5, temp_s2_5, 0, 0, 1);
                    } else {
                        goto block_114;
                    }
                } else {
block_114:
                    sp108 = (s64) sp2C;
                }
                temp_a5_7 = ((arg0->unkA9 + 9) & 0xF) * 0x10;
                __glMgrasWrite(temp_s3, temp_s3, 0x1A2, (-0xF1 & sp50) | temp_a5_7, SYMBOL_LOCATION.unk128, 1, temp_a5_7, sp50);
            } else {
block_56:
                sp108 = (s64) sp2C;
            }
        } else {
            sp108 = (s64) sp2C;
        }
    }
    temp_a0_16 = (sp108 * 0x10) + temp_s3;
    temp_v0_8 = temp_a0_16->unk7D10;
    if (temp_v0_8 & 1) {
        temp_a0_16->unk7D10 = (s32) (temp_v0_8 & ~1);
        if (sp108 != 3) {
            __glMgr_UnlockMultiDMAPool(temp_s3, temp_s3, 0);
        } else {
            __glMgr_UnlockSingleDMAPool(temp_s3, temp_s3, 0, 0, 3);
        }
    }
    __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
    temp_s4->unk1C->unk4A = (s16) sp38;
    if (sp30 != 0) {
        __glMgrasWrite(temp_s3, temp_s3, 0x1A1, 0, SYMBOL_LOCATION.unk124, 1);
        sp40->unk1E8 = NULL;
    }
    temp_a1_2 = temp_s4->unk1C;
    if (temp_s7->unk-6E04->unk4D4 != 0) {
        mgrTM_SaveData(temp_s3, temp_a1_2);
    } else {
        temp_a1_2->unk55 = 0;
    }
}

void mgrTM_DoTexRead(void *arg0, s32 arg1, s64 arg2, u64 arg3, s64 arg4) {
    s64 sp1B8;
    u64 sp190;
    s64 sp188;
    u64 sp180;
    u64 sp178;
    u64 sp170;
    u64 sp168;
    u64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    u64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    u64 sp80;
    s32 sp7C;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    ?32 sp28;
    ?32 sp20;
    s32 sp18;
    s32 sp10;
    s32 sp8;
    __GLcontext *sp4;
    s32 sp0;
    ? var_a7;
    __GLcontext *temp_s6;
    __GLcontext *temp_v0_8;
    __GLcontext *var_s1;
    f32 temp_f28;
    s16 temp_a1_2;
    s16 temp_a5_6;
    s16 temp_v0_11;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_f0;
    s32 temp_lo;
    s32 temp_lo_5;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a2;
    s32 var_a3_2;
    s32 var_a3_4;
    s32 var_a6;
    s32 var_s2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s8;
    s32 var_t0_3;
    s32 var_t3;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a0;
    s64 temp_a4;
    s64 temp_a7_2;
    s64 temp_t0_2;
    s64 var_a5_2;
    s64 var_t1;
    s64 var_t1_2;
    s64 var_t1_3;
    s64 var_v0_3;
    u32 var_a2_2;
    u32 var_a2_3;
    u32 var_a3;
    u32 var_a5_3;
    u32 var_t0;
    u32 var_t0_2;
    u64 temp_lo_2;
    u64 temp_lo_3;
    u64 temp_lo_4;
    u64 var_a3_3;
    u8 temp_a6;
    u8 temp_t2;
    u8 temp_t2_2;
    u8 temp_v0_10;
    u8 temp_v0_12;
    u8 temp_v0_7;
    u8 temp_v0_9;
    u8 var_a0;
    u8 var_a5;
    void *temp_a1;
    void *temp_a6_5;
    void *temp_s3;
    void *temp_s5;
    void *temp_v0_3;
    void *temp_v1;
    void *var_s4;

    spC0 = arg4;
    temp_s6 = __glCurrentContext;
    temp_s5 = ((arg1 * 4) + arg0)->unk14;
    sp90 = (s64) (temp_s6 + 0x10000);
    temp_s3 = temp_s6->unk91FC;
    if (temp_s5 != NULL) {
        temp_v0 = temp_s5->unkC;
        temp_s5->unk2C = 1;
        temp_s5->unk2E = 1;
        if (temp_v0 != 0) {
            temp_s5->unk2C = (s16) temp_v0;
        }
        temp_v0_2 = temp_s5->unk10;
        if (temp_v0_2 != 0) {
            temp_s5->unk2E = (s16) temp_v0_2;
        }
        mgrTM_VidTexWait(temp_s6, arg0, 0);
        temp_a1 = temp_s5->unk1C;
        if (temp_a1->unk59 == 0) {
            mgrTM_MakeResident(temp_s6, temp_a1, 1, 1, 0);
        }
        temp_s3->unk1E8 = 0;
        temp_s3->unk1E4 = 0;
        __glMgrasWrite(temp_s6, temp_s6, 0x183, 0, SYMBOL_LOCATION.unkE4, 0);
        temp_a5 = temp_s5->unk4 << 0xD;
        __glMgrasWrite(temp_s6, temp_s6, 0x18C, temp_s5->unk8 | temp_a5, SYMBOL_LOCATION.unk108, 0, temp_a5);
        temp_v0_3 = temp_s5->unk0;
        temp_a6 = temp_v0_3->unkB7;
        if (temp_a6 != 0) {
            temp_a7 = temp_s3->unk490;
            var_a5 = temp_v0_3->unkB8;
            if (temp_a7 == var_a5) {
                __glMgrasWrite(temp_s6, temp_s6, 0x1A0, var_a5 == 0, SYMBOL_LOCATION.unk120, 0, var_a5, temp_a6, temp_a7);
                temp_s3->unk490 = (s32) (temp_s5->unk0->unkB8 == 0);
                var_a5 = temp_s5->unk0->unkB8;
            }
            if (temp_s3->unk498 != var_a5) {
                __glMgrasWrite(temp_s6, temp_s6, 0x18B, var_a5, SYMBOL_LOCATION.unk104, 0, var_a5);
                temp_s3->unk498 = (s32) temp_s5->unk0->unkB8;
            }
        }
        if (temp_s5->unk0->unkB9 != 0) {
            var_a0 = temp_s5->unk0->unkBA;
            if (temp_s3->unk48C == var_a0) {
                temp_s3->unk48C = (s32) (var_a0 ^ 1);
                var_a0 = temp_s5->unk0->unkBA;
            }
            if (temp_s3->unk494 != var_a0) {
                temp_s3->unk494 = (s32) var_a0;
            }
        }
        if (sp90->unk-6E04->unk488 != 0) {
            __glMgrasWrite(temp_s6, temp_s6, 0x18A, 0, SYMBOL_LOCATION.unk100, 0);
            sp90->unk-6E04->unk488 = 0;
        }
        temp_a5_2 = temp_s3->unk48C * 8;
        __glMgrasWrite(temp_s6, temp_s6, 0x1A1, (temp_s5->unk0->unkB7 << 8) | temp_a5_2, SYMBOL_LOCATION.unk124, 0, temp_a5_2);
        arg0->unk60 = 0;
        temp_a2 = temp_s5->unk3B & 0xF;
        arg0->unk60 = temp_a2;
        temp_a2_2 = (temp_a2 & ~0xF00) | ((temp_s5->unk3B & 0xF) << 8);
        arg0->unk60 = temp_a2_2;
        temp_a2_3 = (-0xF1 & temp_a2_2) | ((temp_s5->unk3C & 0xF) * 0x10);
        arg0->unk60 = temp_a2_3;
        temp_a2_4 = (temp_a2_3 & ~0xF000) | ((temp_s5->unk3C & 0xF) << 0xC);
        arg0->unk60 = temp_a2_4;
        var_a2 = (temp_a2_4 & ~0x780000) | ((temp_s5->unk3D & 0xF) << 0x13);
        arg0->unk60 = var_a2;
        if ((s32) arg0->unkB3 >= 4) {
            var_a2 = (((var_a2 & 0xF) + 1) & 0xF) | (var_a2 & ~0xF);
            arg0->unk60 = var_a2;
        }
        __glMgrasWrite(temp_s6, temp_s6, 0x181, var_a2, SYMBOL_LOCATION.unkDC, 0);
        temp_a5_3 = arg0->unkA6 * 8;
        temp_a6_2 = sp90->unk-6E04->unk494 << 7;
        __glMgrasWrite(temp_s6, temp_s6, 0x111, (sp90->unk-6DB4 << 5) | temp_a6_2 | temp_a5_3, SYMBOL_LOCATION.unkD4, 0, temp_a5_3, temp_a6_2);
        temp_a5_4 = temp_s5->unk0->unkB7 * 0x10;
        __glMgrasWrite(temp_s6, temp_s6, 0x180, (arg0->unkA7 * 4) | temp_a5_4 | 0x1800, SYMBOL_LOCATION.unkD8, 1, temp_a5_4);
        temp_v0_4 = temp_s6->unk434;
        if (temp_v0_4 == 0) {
            var_s3 = temp_s5->unk4 + (temp_s5->unk14 * 2);
        } else {
            var_s3 = temp_v0_4;
        }
        temp_v0_5 = temp_s6->unk448;
        if (temp_v0_5 != 0) {
            spC8 = (s64) temp_v0_5;
        } else {
            spC8 = temp_s5->unk8 + (temp_s5->unk14 * 2);
        }
        temp_v0_6 = temp_s6->unk450;
        if (temp_v0_6 != 0) {
            spD0 = (s64) temp_v0_6;
        } else {
            spD0 = (s64) temp_s5->unkC;
        }
        temp_a1_2 = temp_s5->unk1C->unk4A;
        spF0 = (s64) temp_a1_2;
        __glElementsPerGroup(arg2, temp_a1_2);
        spF8 = M2C_ERROR(/* Read from unset register $v0 */);
        sp98 = M2C_ERROR(/* Read from unset register $v0 */);
        __glBytesPerElement(arg3);
        temp_f28 = M2C_ERROR(/* Read from unset register $f0 */);
        temp_f0 = (s32) (temp_f28 * (f32) (spF8 * var_s3));
        temp_t2 = arg0->unkA6;
        var_a6 = spF8 - 1;
        if ((var_a6 != temp_t2) || ((arg3 >= 0x1406U) && (var_a6 = 0x8034, (arg3 != 0x8033)) && (arg3 != 0x8034))) {
            spA8 = 1;
        } else {
            spA8 = 0;
        }
        if (temp_t2 != 0) {

        } else {
            var_a6 = 0x1904;
            if ((arg2 == 0x1904) || (arg2 == 0x1905) || (arg2 == 0x1906)) {
                spA8 = 1;
            }
        }
        temp_a3 = temp_s5->unk14 * 2;
        temp_t0 = temp_s5->unk8 + temp_a3;
        if (spA8 != 0) {
            temp_v0_7 = arg0->unkA7;
            temp_a0 = temp_t2 + 1;
            if (temp_v0_7 != 0) {
                sp88 = (1 << (temp_v0_7 - 1)) * temp_a0;
            } else {
                sp88 = temp_a0;
            }
            temp_lo = (temp_s5->unk4 + temp_a3) * sp88;
            temp_lo_2 = temp_t0 * temp_lo;
            sp0 = temp_lo;
            spB8 = temp_lo_2;
            temp_v0_8 = temp_s6->imports.malloc(temp_s6, (u32) temp_lo_2);
            sp4 = temp_v0_8;
            __glMgr_LockSingleDMAPool(temp_s6, temp_s6, temp_v0_8, spB8, 0, &sp8, 3);
            var_a0_2 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                var_a5_2 = spB8 & 0xFFF;
                var_a3 = spB8 >> 0xC;
                var_t0 = var_a3 + 1;
loop_41:
                if ((errno == 0xC) || (var_v0 = 1, (errno == 0xB))) {
                    var_v0 = 0;
                }
                if (var_v0 == 0) {
                    var_a2_2 = var_a3;
                    if (var_a5_2 != 0) {
                        var_a2_2 = var_t0;
                    }
                    sp190 = (u64) var_a3;
                    sp188 = var_a5_2;
                    sp180 = (u64) var_t0;
                    if ((u16) sp90->unk-6E04->unk4D0 >= var_a2_2) {
                        mgrTM_UnlockPages(temp_s6, 0, (u64) var_a2_2, (u64) var_a3);
                        __glMgr_LockSingleDMAPool(temp_s6, temp_s6, temp_v0_8, spB8, 0, &sp8, 3);
                        var_a0_2 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                        var_t0 = (u32) sp180;
                        var_a5_2 = sp188;
                        var_a3 = (u32) sp190;
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            goto loop_41;
                        }
                    }
                }
            }
            sp10 = 0;
            sp10 |= 0x400000;
            var_s4 = &sub_0dbe0000 - 0x3C30;
            temp_v0_9 = arg0->unkA7;
            sp10 = (-0xF1 & sp10) | ((*((arg0->unkA6 * 4) + var_s4) & 0xF) * 0x10);
            if (temp_v0_9 != 0) {
                var_a3_2 = temp_v0_9 - 1;
            } else {
                var_a3_2 = 0;
            }
            sp10 = (var_a3_2 & 0xF) | (sp10 & ~0xF);
            if (var_a0_2 != 0) {
                goto block_53;
            }
        } else {
            temp_lo_3 = temp_t0 * temp_f0;
            temp_lo_4 = temp_s5->unk2C * temp_s5->unk2E * temp_lo_3;
            spB8 = temp_lo_3;
            sp80 = temp_lo_4;
            sp18 = (s32) temp_lo_4;
            __glMgr_LockSingleDMAPool(temp_s6, temp_s6, spC0, temp_lo_4, 0, &sp8, 3, var_a6, temp_lo_4);
            var_a0_3 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                var_a3_3 = sp80 & 0xFFF;
                var_a5_3 = sp80 >> 0xC;
                var_t0_2 = var_a5_3 + 1;
loop_124:
                if ((errno == 0xC) || (var_v0_2 = 1, (errno == 0xB))) {
                    var_v0_2 = 0;
                }
                if (var_v0_2 == 0) {
                    var_a2_3 = var_a5_3;
                    if (var_a3_3 != 0) {
                        var_a2_3 = var_t0_2;
                    }
                    sp178 = var_a3_3;
                    sp170 = (u64) var_a5_3;
                    sp168 = (u64) var_t0_2;
                    if ((u16) sp90->unk-6E04->unk4D0 >= var_a2_3) {
                        mgrTM_UnlockPages(temp_s6, 0, (u64) var_a2_3, var_a3_3);
                        __glMgr_LockSingleDMAPool(temp_s6, temp_s6, spC0, sp80, 0, &sp8, 3);
                        var_a0_3 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
                        var_t0_2 = (u32) sp168;
                        var_a5_3 = (u32) sp170;
                        var_a3_3 = sp178;
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            goto loop_124;
                        }
                    }
                }
            }
            sp10 = 0;
            temp_a6_3 = 0x400000 | sp10;
            sp10 = temp_a6_3;
            var_s4 = &sub_0dbe0000 - 0x3C30;
            sp10 = (-0xF1 & temp_a6_3) | ((*((arg0->unkA6 * 4) + var_s4) & 0xF) * 0x10);
            if (arg3 >= 0x1404U) {
                if (arg3 >= 0x1405U) {
                    switch (arg3) {                 /* irregular */
                    case 0x8034:
                        sp10 = (sp10 & ~0xF) | 0xA;
                        break;
                    case 0x1405:
                        sp10 = (sp10 & ~0xF) | 3;
                        break;
                    default:
                        sp10 = (sp10 & ~0xF) | 8;
                        break;
                    }
                } else {
                    sp10 = (sp10 & ~0xF) | 7;
                }
            } else if (arg3 >= 0x1402U) {
                if (arg3 >= 0x1403U) {
                    if (arg3 == 0x1403) {
                        sp10 = (sp10 & ~0xF) | 1;
                    }
                } else {
                    sp10 = (sp10 & ~0xF) | 5;
                }
            } else if (arg3 >= 0x1401U) {
                if (arg3 < 0x1402U) {
                    sp10 &= ~0xF;
                }
            } else if (arg3 == 0x1400) {
                sp10 = (sp10 & ~0xF) | 4;
            }
            if (var_a0_3 == 0) {
                return;
            }
block_53:
            __glMgrSaveRSS((__GLcontext *)-1, -1, 0x01001000, 0x1FC0FF, 0, 0);
            __glMgrInitPixelStateERAM((__GLcontext *)0x18D, 0x18D, -2);
            __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk3CC, SYMBOL_LOCATION.unk3CC, -1);
            __glMgrim_Finish();
            sp100 = 0;
            temp_v0_10 = arg0->unkB3;
            var_s8 = 0;
            sp28 = 0x3F000000;
            sp20 = 0x3F000000;
            if (temp_v0_10 != 0) {
                if (temp_v0_10 == 2) {
                    if (temp_s5->unk14 != 0) {
                        var_s8 = 2;
                        sp100 = 2;
                        sp28 = 0xBF000000;
                        sp20 = 0xBF000000;
                    }
                }
            } else {
                if (temp_s5->unk14 != 0) {
                    sp28 = 0xBF000000;
                    var_s8 = 2;
                }
                sp20 = 0xBF000000;
            }
            spB0 = 0;
            if (temp_s5->unk2E > 0) {
                sp150 = arg2;
                sp158 = arg3;
                temp_a3_2 = SYMBOL_LOCATION.unk10C;
                spE0 = (s64) sp28;
                sp88 = (s64) sp0;
                spD8 = spA8 ^ 1;
                spE8 = (s64) sp20;
                sp148 = (s64) temp_f28 << 0;
loop_60:
                spA0 = 0;
                __glMgrasWrite(temp_s6, temp_s6, 0x190, 0, temp_a3_2, 1);
                *(s32 *)0x74080 = 0xEC10;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk10C;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk110;
                *(s32 *)0x74080 = 0x191;
                temp_v0_11 = temp_s5->unk1C->unk4A;
                *(s32 *)0x74080 = (temp_s5->unk3A << 8) | temp_v0_11;
                if ((temp_s5->unk0->unkB3 == 0) || (temp_s5->unk14 != 0)) {
                    *(void *)0x74080 = 0xEC10;
                    *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk10C;
                    *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk118;
                    *(void *)0x74080 = 0x193;
                    *(void *)0x74080 = (s32) (temp_s5->unk38 + temp_v0_11);
                }
                var_v0_3 = 0;
                if (temp_s5->unk2C > 0) {
                    var_t0_3 = sp8;
loop_66:
                    if (arg0->unkB3 != 8) {
                        var_t1 = var_v0_3;
                    } else {
                        var_t1 = 0;
                    }
                    sp30 = 7;
                    sp34 = 0xF018;
                    var_t3 = 0x200;
                    sp38 = temp_s5->unk4 + var_s8;
                    sp48 = sp10;
                    sp4C = 0x400D;
                    sp40 = (s32) spE0;
                    sp3C = temp_s5->unk8 + sp100;
                    var_a7 = 4;
                    sp44 = (s32) spE8;
                    temp_a4 = ((temp_s6->unk444 + var_t1 + ((temp_s6->unk44C + spB0) * spD0)) * spC8 * temp_f0) + spC0;
                    if (spA8 != 0) {
                        sp1B8 = var_v0_3;
                        sp108 = temp_a4;
                        sp5C = var_t0_3;
                        sp64 = (s32) sp88;
                        sp60 = (s32) sp88;
                        sp68 = temp_s5->unk4 + var_s8;
                        sp78 = 0x200;
                        sp74 = 0x400D;
                        sp70 = sp10;
                        sp7C = 3;
                        temp_a6_4 = temp_s5->unk8 + sp100;
                        sp6C = temp_a6_4;
                        temp_a0_2 = temp_s6->unk7B48;
                        if (ioctl(temp_a0_2, 0x6D670015U, temp_a0_2, 0x6D670015, &sp30, 0x200, 0x400D, sp10, temp_a6_4, sp100) < 0) {
                            perror(&sub_0dbe0000 - 0x3C20);
                            abort();
                        }
                    } else {
                        temp_t2_2 = arg0->unkA6;
                        if (temp_s6->unk430 != 0) {
                            var_t1_2 = sp148;
                            if (sp148 != 0) {
                                if (var_t1_2 == 4) {
                                    var_t1_2 = 3;
                                }
                            } else {
                                var_t1_2 = 1;
                            }
                            sp1B8 = var_v0_3;
                            sp108 = temp_a4;
                            var_t3 = (var_t1_2 & 3) | ((temp_t2_2 & 3) * 4) | 0x240;
                        } else if (temp_t2_2 != 1) {
                            var_a7 = 0x8000;
                            if (sp150 != 0x8000) {
                                sp1B8 = var_v0_3;
                                sp108 = temp_a4;
                            } else {
                                goto block_93;
                            }
                        } else {
block_93:
                            var_a7 = 4;
                            var_t1_3 = sp148;
                            if (sp148 != 0) {
                                if (var_t1_3 == 4) {
                                    var_t1_3 = 3;
                                }
                            } else {
                                var_t1_3 = 1;
                            }
                            sp1B8 = var_v0_3;
                            sp108 = temp_a4;
                            var_t3 = (var_t1_3 & 3) | ((temp_t2_2 & 3) * 4) | 0x280;
                        }
                        sp64 = temp_f0;
                        sp60 = temp_f0;
                        sp5C = var_t0_3;
                        temp_a5_5 = temp_s5->unk4 + var_s8;
                        sp68 = temp_a5_5;
                        sp7C = 3;
                        sp78 = var_t3;
                        sp74 = 0x400D;
                        sp70 = sp10;
                        temp_a3_3 = temp_s5->unk8 + sp100;
                        sp6C = temp_a3_3;
                        temp_a0_3 = temp_s6->unk7B48;
                        if (ioctl(temp_a0_3, 0x6D670015U, temp_a0_3, 0x6D670015, &sp30, temp_a3_3, sp100, temp_a5_5, sp148, var_a7) < 0) {
                            perror(&sub_0dbe0000 - 0x3C20);
                            abort();
                        }
                    }
                    __glMgrWaitForDMARead(temp_s6, temp_s6);
                    temp_v1 = sp90->unk-62B8;
                    *(void *)0x74080 = 0xA0704;
                    *(void *)0x74080 = 0;
                    *(void *)0x74080 = 0xC0004;
                    *(void *)0x74080 = 0xE00;
                    if (!(temp_v1->unk70000 & 2)) {
                        do {

                        } while (!(temp_v1->unk70000 & 2));
                    }
                    *(void *)0x74080 = 0xDA00;
                    if (spA8 != 0) {
                        var_s3_2 = (temp_s5->unk8 + sp100) - 1;
                        var_s1 = sp4;
                        var_s2 = ((s64) ((f32) ((u64) ((temp_s6->unk438 * temp_f0) << 0x20) >> 0x20) + ((f32) ((u64) ((temp_s6->unk43C * sp98) << 0x20) >> 0x20) * temp_f28)) << 0) + sp108;
                        if (var_s3_2 != -1) {
loop_77:
                            temp_v0_12 = arg0->unkA7;
                            var_a3_4 = 0;
                            var_s3_2 -= 1;
                            if (temp_v0_12 == 0) {

                            } else {
                                var_a3_4 = temp_v0_12 - 1;
                            }
                            __glMgr_FormatTexels(var_s1, var_s1, var_s2, *((arg0->unkA6 * 4) + var_s4), var_a3_4, sp150, sp158, temp_s5->unk4 + var_s8, temp_s6->unk430);
                            var_s2 += temp_f0;
                            var_s1 += sp88;
                            if (var_s3_2 != -1) {
                                goto loop_77;
                            }
                        }
                    }
                    temp_lo_5 = temp_s5->unk36 * spA0;
                    temp_a6_5 = temp_s5->unk1C;
                    temp_t0_2 = spA0 ^ 1;
                    spA0 = temp_t0_2;
                    temp_a5_6 = temp_a6_5->unk4A + temp_lo_5;
                    temp_a6_5->unk4A = temp_a5_6;
                    __glMgrasWrite(temp_s6, temp_s6, 0x190, 0, SYMBOL_LOCATION.unk10C, 1, temp_a5_6, temp_a6_5, temp_lo_5);
                    *(void *)0x74080 = 0xEC10;
                    *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk10C;
                    *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk110;
                    *(void *)0x74080 = 0x191;
                    var_t0_3 = (spD8 * spB8) + sp8;
                    sp8 = var_t0_3;
                    var_v0_3 = sp1B8 + 1;
                    *(void *)0x74080 = (s32) (temp_s5->unk1C->unk4A | ((temp_s5->unk3A ^ temp_t0_2) << 8));
                    if (var_v0_3 < temp_s5->unk2C) {
                        goto loop_66;
                    }
                }
                temp_a7_2 = spB0 + 1;
                spB0 = temp_a7_2;
                if (temp_a7_2 < temp_s5->unk2E) {
                    goto loop_60;
                }
            }
            __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
            if (spA8 != 0) {
                __glMgr_UnlockSingleDMAPool(temp_s6, temp_s6, sp4, spB8, 3);
                temp_s6->imports.free(temp_s6, sp4);
            } else {
                __glMgr_UnlockSingleDMAPool(temp_s6, temp_s6, spC0, sp18, 3);
            }
            temp_s5->unk1C->unk4A = (s16) spF0;
        }
    }
}

void mgrTM_DoCopyTex(void *arg0, s64 arg1, s32 arg2, s32 arg3, s64 arg4, s64 arg5) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s32 sp94;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    s32 sp7C;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    ? sp48;
    ? sp20;
    s32 sp1C;
    s32 sp14;
    s32 spC;
    s32 sp4;
    ? *temp_a3;
    ? var_a1_4;
    ? var_a1_6;
    __GLcontext *temp_a0_6;
    __GLcontext *temp_s1;
    s16 temp_a5;
    s16 temp_a5_2;
    s16 temp_t2;
    s16 var_a4;
    s32 *temp_a0_4;
    s32 *temp_a6;
    s32 *temp_a6_2;
    s32 *temp_a6_3;
    s32 *temp_a6_4;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_v0_2;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a5_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_5;
    s32 var_a1_7;
    s32 var_a7;
    s32 var_t0;
    s64 temp_a1;
    u8 *temp_v0;
    u8 var_a6;
    void *temp_s2;
    void *temp_t1;
    void *var_a0_3;

    var_t0 = 9;
    var_a7 = 0;
    spB8 = arg5;
    spB0 = arg4;
    temp_s2 = ((arg1 * 4) + arg0)->unk14;
    temp_s1 = __glCurrentContext;
    sp20.unk8 = (s64) temp_s1->unk438;
    sp20.unk0 = (s64) temp_s1->unk430;
    sp20.unk18 = (s64) temp_s1->unk448;
    var_a1 = 9;
    sp20.unk10 = (s64) temp_s1->unk440;
    var_a0 = 0;
    sp20.unk20 = (s32) temp_s1->unk450;
    do {
        temp_v0 = &(&temp_s1->unk430)[var_a7];
        temp_at = var_a7 + &__glMgr_DefaultPack;
        var_a7 += 4;
        var_t0 -= 1;
        *temp_v0 = (s32) *temp_at;
    } while (var_t0 > 0);
    do {
        temp_v0_2 = var_a0 + &temp_s1->unk454;
        temp_v1 = var_a0 + &sp48;
        var_a0 += 4;
        var_a1 -= 1;
        *temp_v1 = *temp_v0_2;
    } while (var_a1 > 0);
    var_a0_2 = 9;
    var_a1_2 = 0;
    temp_a3 = &temp_s1->unk454;
    do {
        temp_a6 = var_a1_2 + temp_a3;
        temp_v1_2 = var_a1_2 + &__glMgr_DefaultUnpack;
        var_a1_2 += 4;
        var_a0_2 -= 1;
        *temp_a6 = *temp_v1_2;
    } while (var_a0_2 > 0);
    var_a6 = arg0->unkC2;
    if (var_a6 != 0) {
        if (arg0->unkB5 != 0) {
            if (arg1 < 9) {
                var_a0_3 = (arg1 * 4) + arg0;
loop_10:
                var_a6 = (u8) var_a0_3->unk14;
                var_a0_3 += 4;
                if (var_a6 != 0) {
                    if ((arg0 + 0x24) == var_a0_3) {
                        goto block_12;
                    }
                    goto loop_10;
                }
                __glSetError(0x501, arg1, &__glMgr_DefaultUnpack, temp_a3, (s32) var_a6, var_a7);
                var_a1_3 = 9;
                var_a0_4 = 0;
                temp_s1->unk450 = sp20.unk20;
                temp_s1->unk448 = (s64) sp20.unk18;
                temp_s1->unk440 = (s64) sp20.unk10;
                temp_s1->unk438 = (s64) sp20.unk8;
                temp_s1->unk430 = (s64) sp20.unk0;
                do {
                    temp_v1_3 = var_a0_4 + &sp48;
                    temp_a6_2 = var_a0_4 + &temp_s1->unk454;
                    var_a0_4 += 4;
                    var_a1_3 -= 1;
                    *temp_a6_2 = *temp_v1_3;
                } while (var_a1_3 > 0);
                return;
            }
            goto block_12;
        }
        goto block_13;
    }
block_12:
block_13:
    mgrTM_VidTexWait(temp_s1, arg0, 0, temp_a3, (s32) var_a6, var_a7);
    if ((temp_s1->unk91FC->unk1E8 != temp_s2) || (arg0->unkC2 != 0)) {
        mgrTM_SetLoadBuffer(temp_s1, arg0);
        mgrTM_SendTlMode(temp_s1, temp_s2);
        temp_s1->unk9908 = 0;
        temp_a0 = (temp_s1->unk9908 & ~0xF) | (arg1 & 0xF);
        temp_s1->unk9908 = temp_a0;
        temp_a0_2 = (temp_a0 & ~0xF00) | ((temp_s2->unk3C & 0xF) << 8);
        temp_s1->unk9908 = temp_a0_2;
        temp_a0_3 = (temp_a0_2 & ~0xF0) | (((temp_s2->unk3B + ((s32) arg0->unkB3 > 3)) & 0xF) * 0x10);
        temp_s1->unk9908 = temp_a0_3;
        if (arg0->unkC2 != 0) {
            if (arg0->unkB5 != 0) {
                temp_s1->unk9908 = (s32) ((temp_a0_3 & ~0xF000) | 0x9000);
            }
        }
        __glMgrasWrite(temp_s1, temp_s1, 0x1A2, temp_s1->unk9908, SYMBOL_LOCATION.unk128, 0);
        temp_s1->unk91FC->unk1E8 = temp_s2;
    }
    temp_t1 = temp_s2->unk1C;
    temp_t2 = temp_t1->unk4A;
    temp_t1->unk4A = (s16) ((temp_s2->unk32 * ((temp_s2->unk26 * temp_s2->unkC) + ((s16) temp_s2->unk24 >> 1))) + temp_t2);
    spA0 = (s64) temp_t2;
    spA8 = temp_s2->unk24 & 1;
    mgrTM_SendTlTable((s32 *) temp_s1, arg0, arg1);
    __glMgrGetColorMatrixState(temp_s1, temp_s1);
    if (arg0->unkB3 != 2) {
        var_a1_4 = 8;
    } else {
        var_a1_4 = 9;
    }
    temp_a0_4 = &temp_s1->frontBuffer.greenMax;
    sp98 = (s64) temp_a0_4;
    sp4 = arg2;
    sp1C = 0;
    sp14 = arg3;
    spC = arg0->unk98;
    __glMgrMakePixelDesc((__GLcontext *) temp_a0_4, temp_a0_4, var_a1_4, spB0, spB8, temp_s2->unk20 + (temp_s2->unk4 * spA8), temp_s2->unk22, temp_s2->unk28, temp_s2->unk2A);
    if (arg0->unkC2 != 0) {
        arg0->unkA2 = -1;
        MgrasPrevVidTexture = arg0;
        __glMgrasWrite(temp_s1, temp_s1, 0x1A9, temp_s2->unk28, SYMBOL_LOCATION.unk144, 0);
        __glMgrasWrite(temp_s1, temp_s1, 0x1AA, temp_s2->unk2A, SYMBOL_LOCATION.unk148, 0);
        __glMgrasWrite(temp_s1, temp_s1, 0x1AB, temp_s2->unk20, SYMBOL_LOCATION.unk14C, 0);
        temp_a5 = temp_s2->unk2A;
        __glMgrasWrite(temp_s1, temp_s1, 0x1AC, (temp_s2->unk22 + temp_a5) - 1, SYMBOL_LOCATION.unk150, 1, temp_a5);
        __glMgrim_Finish();
        sp70 = 0;
        sp74 = 1;
        sp94 = (s32) arg0->unkB7;
        sp78 = (s32) temp_s2->unk28;
        sp7C = (s32) temp_s2->unk2A;
        if (arg0->unkB5 != 0) {
            sp80 = 1;
        } else {
            sp80 = 0;
        }
        if (arg2 != 0x1907) {
            if (arg2 != 0x1908) {
                sp84 = -1;
            } else {
                sp84 = 1;
            }
        } else {
            sp84 = 0;
        }
        if (arg3 != 0x1401) {
            sp88 = -1;
        } else {
            sp88 = 0;
        }
        temp_a0_5 = temp_s1->unk7B48;
        if (ioctl(temp_a0_5, 0x6D670016U, temp_a0_5, 0x6D670016, &sp70) >= 0) {
            goto block_31;
        }
        if ((sp90 != 3) && (sp90 != 4) && (sp90 != 5) && (sp90 != 6)) {
            __glSetError(0x502);
        } else {
            __glSetError(0x501);
        }
        var_a0_5 = 9;
        var_a1_5 = 0;
        temp_s1->unk450 = sp20.unk20;
        temp_s1->unk448 = (s64) sp20.unk18;
        temp_s1->unk440 = (s64) sp20.unk10;
        temp_s1->unk438 = (s64) sp20.unk8;
        temp_s1->unk430 = (s64) sp20.unk0;
        do {
            temp_a6_3 = var_a1_5 + &sp48;
            temp_at_2 = var_a1_5 + &temp_s1->unk454;
            var_a1_5 += 4;
            var_a0_5 -= 1;
            *temp_at_2 = *temp_a6_3;
        } while (var_a0_5 > 0);
        return;
    }
    __glMgrInitPixelStateERAM(NULL, 0, -2);
    __glMgrInitPixelStateERAM(NULL, 0, -2);
    temp_a0_6 = SYMBOL_LOCATION.unk4A0 + 9;
    __glMgrInitPixelStateERAM(temp_a0_6, temp_a0_6, -1);
    __glMgrCopyPixels((__GLcontext *) sp98, sp98);
block_31:
    if (temp_s2->unk14 == 0) {
        var_a0_6 = 9;
        if (arg0->unkB3 == 0) {
            goto block_34;
        }
    } else {
block_34:
        if (temp_s2->unk4 == 0x200) {
            if (arg0->unkB4 != 0) {
                temp_a2 = (temp_s1->unk9908 & ~0xF0) | 0xA0;
                temp_s1->unk9908 = temp_a2;
                __glMgrasWrite(temp_s1, temp_s1, 0x1A2, temp_a2, SYMBOL_LOCATION.unk128, 1);
                var_a4 = temp_s2->unk20;
                if (var_a4 < 0x100) {
                    temp_s2->unk20 = 0x100;
                    temp_a1 = (s64) (((temp_s2->unk28 + var_a4) - 0x100) << 0x30) >> 0x30;
                    temp_s2->unk28 = (s16) temp_a1;
                    if (temp_a1 == 0x101) {
                        temp_s2->unk28 = (s16) ((s64) ((temp_a1 - 1) << 0x30) >> 0x30);
                    }
                    var_a4 = (s16) ((s64) (0x200 << 0x30) >> 0x30);
                    temp_s2->unk20 = var_a4;
                }
                temp_a5_2 = temp_s2->unk22;
                if (temp_a5_2 == -1) {
                    var_a1_6 = 9;
                    if (arg0->unkB3 == 0) {
                        var_a1_6 = 8;
                    }
                    sp4 = arg2;
                    sp1C = 0;
                    sp14 = arg3;
                    spC = arg0->unk98;
                    __glMgrMakePixelDesc((__GLcontext *) sp98, sp98, var_a1_6, 0, 0, var_a4, temp_a5_2, temp_s2->unk28, 1);
                    __glMgrCopyPixels((__GLcontext *) sp98, sp98);
                }
                if (arg0->unkB3 != 0) {
                    temp_a5_3 = temp_s2->unk8;
                    if ((temp_s2->unk22 + temp_s2->unk2A) == (temp_s2->unk14 + temp_a5_3)) {
                        sp4 = arg2;
                        sp1C = 0;
                        sp14 = arg3;
                        spC = arg0->unk98;
                        __glMgrMakePixelDesc((__GLcontext *) sp98, sp98, 9, 0, 0, temp_s2->unk20, temp_a5_3, temp_s2->unk28, 1);
                        __glMgrCopyPixels((__GLcontext *) sp98, sp98);
                    }
                }
                temp_a2_2 = (temp_s1->unk9908 & ~0xF0) | 0x90;
                temp_s1->unk9908 = temp_a2_2;
                __glMgrasWrite(temp_s1, temp_s1, 0x1A2, temp_a2_2, SYMBOL_LOCATION.unk128, 1);
            }
        }
        var_a0_6 = 9;
    }
    var_a1_7 = 0;
    temp_s2->unk1C->unk4A = (s16) spA0;
    temp_s2->unk1C->unk55 = 0;
    temp_s1->unk450 = sp20.unk20;
    temp_s1->unk448 = (s64) sp20.unk18;
    temp_s1->unk440 = (s64) sp20.unk10;
    temp_s1->unk438 = (s64) sp20.unk8;
    temp_s1->unk430 = (s64) sp20.unk0;
    do {
        temp_a6_4 = var_a1_7 + &sp48;
        temp_at_3 = var_a1_7 + &temp_s1->unk454;
        var_a1_7 += 4;
        var_a0_6 -= 1;
        *temp_at_3 = *temp_a6_4;
    } while (var_a0_6 > 0);
}

void __glMgrInitHostToTE(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_s1;
    __GLcontext *temp_s4;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 var_a5;

    var_a5 = (gc->unk97E4 & ~0xF0) | ((arg1->unk598->unk64 & 0xF) * 0x10);
    gc->unk97E4 = var_a5;
    if (arg1->unk598->unk64 == 6) {
        var_a5 = (-0xF1 & var_a5) | 0x90;
        gc->unk97E4 = var_a5;
    }
    temp_ra = var_a5 & ~0x700 & ~0x3800;
    gc->unk97E4 = temp_ra;
    temp_ra_2 = (temp_ra & ~0x1C000) | ((arg1->unk598->unk41 & 7) << 0xE);
    gc->unk97E4 = temp_ra_2;
    temp_ra_3 = (temp_ra_2 & ~0x20000) | ((gc->unk455 != 0) << 0x11);
    gc->unk97E4 = temp_ra_3;
    temp_a2 = (temp_ra_3 & ~0x40000 & ~0x80000 & ~0x100000) | 0x800000;
    gc->unk97E4 = temp_a2;
    temp_s4 = arg1->unk24 - arg1->unk5FC;
    temp_s1 = arg1->unk598->unk34;
    __glMgrasSet(gc, 0x159, temp_a2, 1, 0x800000, var_a5, gc + 0x10000);
    temp_a0 = arg1->unk18 + arg2;
    __glMgrInitPixelStateERAM(temp_a0, temp_a0, -2);
    temp_a0_2 = arg1->unk1C;
    __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, -2);
    __glMgrInitPixelStateERAM(temp_s1, temp_s1, -2);
    __glMgrInitPixelStateERAM(temp_s4, temp_s4, -2);
    temp_a0_3 = ((s32) temp_s4 << 0x10) | (s32) temp_s1;
    __glMgrInitPixelStateERAM((__GLcontext *) temp_a0_3, temp_a0_3, -2);
    __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk4A0, SYMBOL_LOCATION.unk4A0, -1);
}

void mgrTM_SR_TexLoad(__GLcontext *arg0, void *arg1) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp18;
    s32 sp0;
    __GLcontext *temp_a0_2;
    __GLcontext *var_s3;
    s16 *var_a3;
    s16 *var_a6;
    s16 *var_a6_2;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_at_2;
    s32 temp_s4_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_s1;
    s32 var_s2;
    s32 var_s5;
    s64 temp_at;
    s64 temp_lo_2;
    u16 temp_a0_3;
    u16 temp_a1;
    u32 temp_a1_2;
    u32 temp_a4_2;
    u32 temp_a7;
    u32 temp_lo;
    void *temp_a3;
    void *temp_s4;
    void *temp_s7;

    temp_s7 = arg1->unk18;
    temp_s4 = *temp_s7->unk4;
    __glMgrSaveRSS((__GLcontext *)-1, -1, 0x01400000, 0, 0, 3);
    sp0 = 0;
    sp0 |= 0x400000;
    sp0 = (sp0 & ~0xF0) | ((*((temp_s7->unk52 * 4) + (&sub_0dbe0000 - 0x3C30)) & 0xF) * 0x10);
    if (temp_s7->unk51 != 0) {
        var_a5 = 8;
    } else {
        var_a5 = temp_s7->unk53 - 1;
    }
    temp_a4 = sp0 & ~0xF;
    temp_a2 = (var_a5 & 0xF) | temp_a4;
    sp0 = temp_a2;
    __glMgrasSet(arg0, arg0, 0x159, temp_a2, 1, temp_a4, -0x10);
    __glMgrInitPixelStateERAM((__GLcontext *)0x152, 0x152, -2);
    __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk3CC, SYMBOL_LOCATION.unk3CC, -1);
    var_s3 = NULL;
    var_s5 = *(temp_s7->unk34 + ((arg1->unk20 - temp_s7->unk48) * 4));
    *(s32 *)0x74080 = 0x80404;
    *(s32 *)0x74080 = 0x1000;
    *(s32 *)0x74080 = 0x80604;
    *(s32 *)0x74080 = 0;
    var_s2 = (arg1->unk26 * temp_s7->unk46) << temp_s4->unkB7;
    sp50 = var_s5 & ~0xFFF;
    if (var_s2 != 0) {
        sp18 = (s64) (arg0 + 0x10000);
loop_13:
        temp_a1 = temp_s7->unk44;
        temp_a7 = var_s5 - sp50;
        temp_s4_2 = temp_a7 & 0xFFF;
        temp_lo = (u32) (0x8000 - temp_s4_2) / temp_a1;
        var_s1 = var_s2;
        M2C_TRAP_IF(temp_a1 == 0);
        if ((s32) temp_lo < var_s2) {
            var_s1 = (s32) temp_lo;
        }
        temp_lo_2 = var_s1 * temp_a1;
        var_a5_2 = 0;
        temp_a4_2 = (u32) (temp_lo_2 + temp_s4_2 + 0xFFF) >> 0xC;
        if (temp_a4_2 != 1) {
            sp58 = 0x1000 - temp_s4_2;
            temp_at = ((temp_lo_2 + temp_s4_2) - 0x1000) & 0xFFF;
            sp60 = temp_at;
            if (temp_at == 0) {
                sp60 = 0x1000;
            }
        } else {
            sp60 = temp_lo_2;
            sp58 = temp_lo_2;
        }
        temp_a1_2 = temp_a7 >> 0xC;
        if ((s32) temp_a4_2 > 0) {
            var_a6 = &sp8[0];
            var_a3 = &(&sp8[0])[temp_a4_2];
            if (temp_a4_2 & 1) {
                var_a6 += 2;
                var_a5_2 = 1;
                var_a6->unk-2 = (s16) ((u16) arg1->unk20 + temp_a1_2);
            }
            if (((s32) temp_a4_2 >> 1) != 0) {
                var_a6_2 = var_a6;
                var_a5_3 = var_a5_2;
                do {
                    *var_a6_2 = (u16) arg1->unk20 + temp_a1_2 + var_a5_3;
                    var_a6_2 += 4;
                    temp_at_2 = var_a5_3 + 1;
                    var_a5_3 = temp_at_2 + 1;
                    var_a6_2->unk-2 = (s16) ((u16) arg1->unk20 + temp_a1_2 + temp_at_2);
                } while (var_a6_2 != var_a3);
            }
        } else {
            var_a3 = &(&sp8[0])[temp_a4_2];
        }
        var_a3->unk-2 = (u16) (var_a3->unk-2 | 0x8000);
        __glMgrInitPixelStateERAM(NULL, 0, -2);
        __glMgrInitPixelStateERAM(var_s3, var_s3, -2);
        __glMgrInitPixelStateERAM((__GLcontext *)0x40, 0x40, -2);
        __glMgrInitPixelStateERAM((__GLcontext *) var_s1, var_s1, -2);
        temp_a0 = (var_s1 << 0x10) | 0x40;
        __glMgrInitPixelStateERAM((__GLcontext *) temp_a0, temp_a0, -2);
        __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk4A0, SYMBOL_LOCATION.unk4A0, -1);
        __glMgrInitPixelStateERAM(NULL, 0, -2);
        __glMgrInitPixelStateERAM(NULL, 0, -2);
        temp_a0_2 = SYMBOL_LOCATION.unk4A0 + 9;
        __glMgrInitPixelStateERAM(temp_a0_2, temp_a0_2, -1);
        temp_a0_3 = temp_s7->unk44;
        __glMgr_WriteDMAGESetup((__GLcontext *) temp_a0_3, temp_a0_3, var_s1, 0x12A);
        var_s5 += temp_lo_2;
        *(void *)0x74080 = 0x80010;
        temp_a3 = sp18->unk-62B8;
        *(void *)0x74080 = (s32) sp8[0];
        *(void *)0x74080 = spC;
        *(void *)0x74080 = sp10;
        *(void *)0x74080 = sp14;
        *(void *)0x74080 = 0x80504;
        *(void *)0x74080 = temp_s4_2;
        *(void *)0x74080 = 0x80804;
        *(void *)0x74080 = (s32) sp58;
        *(void *)0x74080 = 0x80904;
        *(void *)0x74080 = (s32) sp60;
        *(void *)0x74080 = 0x80704;
        *(void *)0x74080 = 1;
        *(void *)0x74080 = 0x80B04;
        temp_a3->unk7000C = 0x10000;
        __glMgrim_pipe((__GLcontext *)0xA3, 0xA3, 0xE0400, 0x10000, temp_a3 + 0x70000, 0x80B04, (void *)0x74080, 1, 0x80704);
        var_s2 -= var_s1;
        __glMgrWaitForDMAWrite(arg0, arg0);
        __glMgrasSet(arg0, arg0, 0x156, -1, 1);
        var_s3 += var_s1;
        if (var_s2 != 0) {
            goto loop_13;
        }
    }
    __glMgrInitPixelStateCRAM(NULL, 0, -2);
    __glMgrInitPixelStateCRAM(SYMBOL_LOCATION.unk3D0, SYMBOL_LOCATION.unk3D0, -1);
    __glMgrRestoreRSS(M2C_ERROR(/* Read from unset register $a0 */));
}

void mgrTM_SR_TexRead(__GLcontext *arg0, void *arg1) {
    s64 spD0;
    s64 sp98;
    s64 sp90;
    u64 sp88;
    u64 sp80;
    u64 sp78;
    u64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    u32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp20;
    s32 sp1C;
    u32 sp18;
    s32 sp14;
    s32 sp10;
    s32 sp8;
    s32 sp0;
    s16 var_s3;
    s32 temp_a0;
    s32 var_a0;
    s32 var_a3;
    u16 temp_a7;
    u32 temp_s7;
    u32 temp_v0;
    u32 temp_v1;
    u32 var_s0;
    u32 var_s4;
    u64 temp_lo;
    u64 var_a2;
    void *temp_a1;
    void *temp_a5;
    void *temp_s4;
    void *temp_t8;

    temp_t8 = arg1->unk0;
    sp68 = (s64) temp_t8;
    temp_s4 = *arg1->unk4;
    var_s0 = (temp_t8->unk26 * arg1->unk46) << temp_s4->unkB7;
    temp_lo = arg1->unk44 * var_s0;
    sp70 = temp_lo;
    __glMgr_LockSingleDMAPool(arg0, *arg1->unk2C, temp_lo, 0, sp, 0);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        sp98 = (s64) (arg0 + 0x10000);
        sp80 = sp70 & 0xFFF;
        sp60 = (s64) (&__iob + 0x20);
        temp_v0 = sp70 >> 0xC;
        sp78 = (u64) temp_v0;
        sp88 = temp_v0 + 1;
loop_2:
        if ((errno != 0xC) && (errno != 0xB)) {
            fprintf(sp60, &sub_0dbe0000 - 0x3C08);
            abort();
        }
        var_a2 = sp78;
        if (sp80 != 0) {
            var_a2 = sp88;
        }
        if ((u16) sp98->unk-6E04->unk4D0 >= var_a2) {
            mgrTM_UnlockPages(arg0, 0, var_a2, sp80);
            __glMgr_LockSingleDMAPool(arg0, arg0, *arg1->unk2C, sp70, 0, sp, 0);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {

            } else {
                goto loop_2;
            }
        }
    } else {
        sp98 = (s64) (arg0 + 0x10000);
    }
    temp_a1 = &sub_0dbe0000 - 0x3C30;
    sp8 = 0;
    sp8 |= 0x400000;
    sp8 = (sp8 & ~0xF0) | ((*((arg1->unk52 * 4) + temp_a1) & 0xF) * 0x10);
    if (arg1->unk51 != 0) {
        var_a0 = 8;
    } else {
        var_a0 = arg1->unk53 - 1;
    }
    temp_s7 = *((sp98->unk-635C * 4) + (&sub_0dbf0000 + 0x2F28));
    temp_v1 = arg1->unk46 << temp_s4->unkB7;
    var_s3 = sp68->unk22;
    M2C_TRAP_IF(temp_v1 == 0);
    sp8 = (var_a0 & 0xF) | (sp8 & ~0xF);
    spD0 = (s64) (temp_s7 / temp_v1);
    if (var_s0 != 0) {
        sp90 = (s64) (temp_a1 + 0x10);
loop_20:
        var_s4 = var_s0;
        if (var_s0 < temp_s7) {

        } else {
            var_s4 = temp_s7;
        }
        __glMgrasWrite(arg0, arg0, 0x190, 0, SYMBOL_LOCATION.unk10C, 1);
        *(s32 *)0x74080 = 0xEC10;
        *(s32 *)0x74080 = SYMBOL_LOCATION.unk10C;
        *(s32 *)0x74080 = SYMBOL_LOCATION.unk110;
        *(s32 *)0x74080 = 0x191;
        *(s32 *)0x74080 = var_s3 & 0xFF;
        __glMgrSaveRSS((__GLcontext *)-1, -1, 0x01001000, 0x1FC0FF, 0, 0, SYMBOL_LOCATION.unk110, SYMBOL_LOCATION.unk10C);
        __glMgrInitPixelStateERAM((__GLcontext *)0x18D, 0x18D, -2);
        __glMgrInitPixelStateERAM(SYMBOL_LOCATION.unk3CC, SYMBOL_LOCATION.unk3CC, -1);
        __glMgrim_Finish();
        sp18 = var_s4;
        sp20 = 0x400D;
        sp14 = 0xE50C;
        sp10 = 4;
        sp3C = sp0;
        sp1C = sp8;
        sp40 = (s32) arg1->unk44;
        temp_a7 = arg1->unk44;
        sp5C = 0;
        sp58 = 0x200;
        sp54 = 0x400D;
        sp50 = sp8;
        sp4C = var_s4;
        sp48 = 0x40;
        sp44 = (s32) temp_a7;
        temp_a0 = arg0->unk7B48;
        if (ioctl(temp_a0, 0x6D670015U, temp_a0, 0x6D670015, &sp10, 0x200, 0x400D, sp8, 0x40, temp_a7) < 0) {
            perror((void *) sp90);
            abort();
        }
        __glMgrWaitForDMARead(arg0, arg0);
        *(s32 *)0x74080 = 0xA0704;
        *(s32 *)0x74080 = 0;
        temp_a5 = sp98->unk-62B8;
        *(s32 *)0x74080 = 0xC0004;
        *(s32 *)0x74080 = 0xE00;
        var_a3 = temp_a5->unk70000 & 2;
        if (var_a3 == 0) {
            do {
                var_a3 = temp_a5->unk70000 & 2;
            } while (var_a3 == 0);
        }
        *(s32 *)0x74080 = 0xDA00;
        __glMgrRestoreRSS((__GLcontext *)0xA0704, 0xA0704, 0xC0004, 0x70000, var_a3, 0xE00, temp_a5 + 0x70000, 0xDA00);
        var_s0 -= var_s4;
        var_s3 += spD0;
        sp0 += arg1->unk44 * var_s4;
        if (var_s0 != 0) {
            goto loop_20;
        }
    }
    __glMgr_UnlockSingleDMAPool(arg0, arg0, 0, 0, 0);
}
