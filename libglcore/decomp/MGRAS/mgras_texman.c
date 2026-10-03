typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ s32 unk98;                         /* inferred */
    /* 0x009C */ char pad9C[4];
    /* 0x00A0 */ s16 unkA0;                         /* inferred */
    /* 0x00A2 */ s16 unkA2;                         /* inferred */
    /* 0x00A4 */ u8 unkA4;                          /* inferred */
    /* 0x00A5 */ u8 unkA5;                          /* inferred */
    /* 0x00A6 */ u8 unkA6;                          /* inferred */
    /* 0x00A7 */ u8 unkA7;                          /* inferred */
    /* 0x00A8 */ char padA8[3];                     /* maybe part of unkA7[4]? */
    /* 0x00AB */ u8 unkAB;                          /* inferred */
    /* 0x00AC */ u8 unkAC;                          /* inferred */
    /* 0x00AD */ u8 unkAD;                          /* inferred */
    /* 0x00AE */ u8 unkAE;                          /* inferred */
    /* 0x00AF */ u8 unkAF;                          /* inferred */
    /* 0x00B0 */ u8 unkB0;                          /* inferred */
    /* 0x00B1 */ u8 unkB1;                          /* inferred */
    /* 0x00B2 */ char padB2[1];
    /* 0x00B3 */ u8 unkB3;                          /* inferred */
    /* 0x00B4 */ s8 unkB4;                          /* inferred */
    /* 0x00B5 */ u8 unkB5;                          /* inferred */
    /* 0x00B6 */ char padB6[1];
    /* 0x00B7 */ u8 unkB7;                          /* inferred */
    /* 0x00B8 */ u8 unkB8;                          /* inferred */
    /* 0x00B9 */ u8 unkB9;                          /* inferred */
    /* 0x00BA */ u8 unkBA;                          /* inferred */
    /* 0x00BB */ u8 unkBB;                          /* inferred */
    /* 0x00BC */ u8 unkBC;                          /* inferred */
    /* 0x00BD */ u8 unkBD;                          /* inferred */
    /* 0x00BE */ u8 unkBE;                          /* inferred */
    /* 0x00BF */ u8 unkBF;                          /* inferred */
    /* 0x00C0 */ u8 unkC0;                          /* inferred */
    /* 0x00C1 */ u8 unkC1;                          /* inferred */
    /* 0x00C2 */ u8 unkC2;                          /* inferred */
    /* 0x00C3 */ u8 unkC3;                          /* inferred */
    /* 0x00C4 */ __GLcontext *unkC4;                /* inferred */
    /* 0x00C8 */ s32 unkC8;                         /* inferred */
    /* 0x00CC */ ? unkCC;                           /* inferred */
    /* 0x00CC */ char padCC[0x24];
    /* 0x00F0 */ __GLcontext *unkF0;                /* inferred */
    /* 0x00F4 */ char padF4[0x638];                 /* maybe part of unkF0[0x18F]? */
    /* 0x072C */ ? unk72C;                          /* inferred */
    /* 0x072C */ char pad72C[0x4E4];
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
    /* 0x34 */ ? unk34;                             /* inferred */
    /* 0x34 */ char pad34[4];
    /* 0x38 */ f32 unk38;                           /* inferred */
    /* 0x3C */ s32 unk3C;                           /* inferred */
    /* 0x40 */ u32 unk40;                           /* inferred */
    /* 0x44 */ s32 unk44;                           /* inferred */
} __GLexports;                                      /* size = 0x48 */

? .L0daba8c0(__GLcontext *, f32 *, ?, ?, f32 *, ?); /* extern */
? abort();                                          /* extern */
void *acreate(void *, ?, ?, ?, void (*)(u32, void *), s64); /* extern */
? adelete(void *);                                  /* extern */
? afree(s32, s32);                                  /* extern */
? amallinfo(void *, s32);                           /* extern */
s32 amalloc(s32, s32);                              /* extern */
? amallopt(?, ?, void *);                           /* extern */
? *calloc(s16, ?, ? *);                             /* extern */
? close(s32, s32, ?);                               /* extern */
? fflush(void *);                                   /* extern */
? fprintf(s64, void *, s32, s32, void *, s32, void *, void *); /* extern */
s32 getpagesize();                                  /* extern */
s32 *mmap(s32 *, u32, ?, ?, s32, ?);                /* extern */
s32 munmap(s32, s32, void *);                       /* extern */
s64 open(void *, ?);                                /* extern */
? perror(void *);                                   /* extern */
? sginap(?);                                        /* extern */
s32 sub_0dab0000(s32);                              /* extern */
s64 sub_0dac0000(__GLcontext *, f32 *, void *, s32, s32); /* extern */
extern void *MgrasPrevVidTexture;
extern ? SYMBOL_LOCATION;
extern ? __iob;
extern ? sub_0dbe0000;

void mgrTM_DevZero(void) {
    s64 sp8;
    s32 temp_a1;
    s64 temp_v0;

    if (saved_reg_gp->unk-33EC != -1) {
        return;
    }
    temp_v0 = open(&sub_0dbe0000 - 0x3ED0, 0x802);
    if (temp_v0 < 0) {
        sp8 = temp_v0;
        perror(&sub_0dbe0000 - 0x3EC0);
        abort();
    }
    temp_a1 = saved_reg_gp->unk-33EC;
    if (temp_a1 != -1) {
        close((s32) temp_v0, temp_a1, -1);
    } else {
        saved_reg_gp->unk-33EC = (s32) temp_v0;
    }
}

void mgrTM_BufMalloc(s64 arg0) {
    s64 sp0;
    s32 *temp_v0;

    sp0 = arg0;
    if (arg0 != 0) {
        __glMgrim_GetDetailTexFuncSGIS((__GLcontext *) arg0);
        if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
            temp_v0 = mmap(NULL, sp0 + 8, 3, 1, M2C_ERROR(/* Read from unset register $v0 */), 0);
            if (temp_v0 != (s32 *)-1) {
                *temp_v0 = (s32) sp0;
            }
        }
    }
}

void mgrTM_BufFree(void *arg0) {
    if (arg0 == NULL) {
        return;
    }
    munmap(arg0 - 8, arg0->unk-8 + 8, arg0);
}

void mgrTM_GrowSaveArena(u32 arg0, void *arg1) {
    s64 sp20;
    ? *temp_v0;
    ? *temp_v0_2;
    ? *temp_v0_3;
    ? *var_a4;
    ? *var_a4_2;
    ? *var_s0;
    s32 *temp_v0_4;
    s64 var_ra;
    void *temp_gp;
    void *temp_s2;

    var_ra = saved_reg_ra;
    var_a4 = NULL;
    temp_s2 = arg1->unk-4;
    var_s0 = temp_s2->unkC;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x1480F8;
    if (var_s0 != NULL) {
loop_1:
        temp_v0 = var_s0->unk0;
        if (var_s0->unk8 != arg0) {
            var_a4 = var_s0;
            var_s0 = temp_v0;
            if (temp_v0 == NULL) {
                goto block_3;
            }
            goto loop_1;
        }
        if (var_a4 == NULL) {
            temp_s2->unkC = temp_v0;
        } else {
            *var_a4 = temp_v0;
        }
        var_s0->unk0 = NULL;
        if (var_s0 == NULL) {
            goto block_3;
        }
        goto block_7;
    }
block_3:
    var_s0 = temp_s2->unkC;
    var_a4_2 = NULL;
    if (var_s0 != NULL) {
loop_4:
        temp_v0_2 = var_s0->unk0;
        if ((u32) var_s0->unk8 < arg0) {
            var_a4_2 = var_s0;
            var_s0 = temp_v0_2;
            if (temp_v0_2 == NULL) {
                goto block_6;
            }
            goto loop_4;
        }
        if (var_a4_2 == NULL) {
            temp_s2->unkC = temp_v0_2;
        } else {
            *var_a4_2 = temp_v0_2;
        }
        var_s0->unk0 = NULL;
        if (var_s0 == NULL) {
            goto block_6;
        }
        goto block_7;
    }
block_6:
    temp_v0_3 = calloc(1, 0xC, var_a4_2);
    var_s0 = temp_v0_3;
    var_ra = sp20;
    if (temp_v0_3 != NULL) {
block_7:
        sp20 = var_ra;
        var_s0->unk0 = temp_s2->unk8;
        if (temp_gp->unk-33EC == -1) {
            __glMgrim_GetDetailTexFuncSGIS(M2C_ERROR(/* Read from unset register $a0 */));
        }
        temp_v0_4 = mmap(var_s0->unk4, arg0, 3, 1, temp_gp->unk-33EC, 0);
        if (temp_v0_4 != (s32 *)-1) {
            var_s0->unk8 = arg0;
            var_s0->unk4 = temp_v0_4;
            temp_s2->unk8 = var_s0;
            return;
        }
        perror(&sub_0dbe0000 - 0x3E80);
        free(var_s0);
        return;
    }
    perror(&sub_0dbe0000 - 0x3EA8);
}

void mgrTM_ReconstituteSavePool(__GLcontext *arg0) {
    s64 sp0;
    ? *temp_v1;
    ? *var_s3;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_v0;
    void *var_a2;

    temp_s1 = arg0->unk91FC;
    temp_s1_2 = temp_s1 + 0x4D8;
    adelete(temp_s1->unk4D8);
    var_s3 = temp_s1_2->unk8;
    if (var_s3 != NULL) {
        sp0 = (s64) (&__iob + 0x20);
        do {
            temp_v1 = var_s3;
            if (munmap(var_s3->unk4, var_s3->unk8) < 0) {
                perror(&sub_0dbe0000 - 0x3E58);
                fprintf(sp0, &sub_0dbe0000 - 0x3E48, var_s3->unk4, var_s3->unk8);
                abort();
            }
            var_s3 = var_s3->unk0;
            temp_v1->unk0 = temp_s1_2->unkC;
            temp_s1_2->unkC = temp_v1;
        } while (var_s3 != NULL);
    }
    temp_s1_2->unk8 = NULL;
    temp_v0 = acreate(temp_s1_2->unk4 + 4, 0x400, 0, 0, mgrTM_GrowSaveArena);
    var_a2 = temp_v0;
    temp_s1->unk4D8 = temp_v0;
    if (temp_v0 == NULL) {
        perror(&sub_0dbe0000 - 0x3E30);
        abort();
        var_a2 = temp_s1->unk4D8;
    }
    amallopt(5, 0x400000, var_a2);
    temp_s1->unk4D8->unk-4 = temp_s1_2;
}

void mgrTM_RefreshDim(__GLcontext *arg0) {
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    s32 var_a0;

    temp_v0 = arg0->unkC8;
    switch (temp_v0) {                              /* irregular */
    case 4:
        sp0 = (s64) arg0;
        sp8 = (s64) __glCurrentContext;
        var_a0 = SYMBOL_LOCATION.unk44C;
block_5:
        __Mgr_ReturnMode(var_a0, 1, 1, arg0, __glCurrentContext);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            __glNamesLockData(sp8, sp8->unk91FC->unk49C, M2C_ERROR(/* Read from unset register $v0 */));
            sp0->unkC4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        } else {
            sp0->unkC4 = (s32) sp0;
        }
        return;
    case 0:
        sp0 = (s64) arg0;
        sp8 = (s64) __glCurrentContext;
        var_a0 = SYMBOL_LOCATION.unk444;
        goto block_5;
    case 2:
        sp0 = (s64) arg0;
        sp8 = (s64) __glCurrentContext;
        var_a0 = SYMBOL_LOCATION.unk448;
        goto block_5;
    }
}

void Global_TM_Interface(__GLcontext *arg0, void *arg1, f32 *arg2) {
    s32 sp0;
    __GLcontext *temp_a1;
    __GLcontext *temp_s1;
    s16 temp_ra;
    s16 var_s1;
    s32 temp_a0_2;
    s32 temp_v0;
    u16 temp_a0;
    void *temp_a4;
    void *temp_s2;

    var_s1 = 0;
    temp_a4 = arg1->unk14;
    temp_s2 = arg0->unk91FC;
    if ((temp_a4->unk18 == 0) && (*temp_a4->unk1C < 0.0f)) {
        var_s1 = temp_a4->unk26;
    }
    temp_v0 = (arg1->unk22 + arg2->unk4E) - var_s1;
    sp0 = temp_v0;
    temp_a0 = temp_s2->unk4D2;
    if ((s32) temp_a0 < temp_v0) {
        sp0 = (s32) temp_a0;
    }
    temp_a0_2 = arg0->unk7B48;
    if (ioctl(temp_a0_2, 0x6D670010U, temp_a0_2, 0x6D670010, sp, temp_a4) < 0) {
        perror(&sub_0dbe0000 - 0x3E20);
        abort();
    }
    arg0->unk9200 = 1;
    temp_s2->unk1E8 = 0;
    temp_s2->unk1E4 = 0;
    __glMgrasWrite(arg0, arg0, 0x1A0, temp_s2->unk490, SYMBOL_LOCATION.unk120, 0);
    __glMgrasWrite(arg0, arg0, 0x18B, temp_s2->unk498, SYMBOL_LOCATION.unk104, 0);
    temp_a1 = arg0->unk8C8C;
    if ((arg0 != ((-1 << 0x10) | 0x7438)) && (temp_a1 == NULL)) {
        mgrTM_RefreshDim(arg0 + 0x8BC8, temp_a1);
    }
    mgrTM_SendTexmode1(arg0, arg0->unk8C8C);
    temp_s1 = sp0 - arg1->unk22;
    mgrTM_RefreshDim(arg0, temp_s1, 1U);
    mgrTM_RefreshDim(arg0, temp_s1, 2U);
    mgrTM_RefreshDim(arg0, temp_s1, 3U);
    mgrTM_RefreshDim(arg0, temp_s1, 4U);
    temp_ra = arg2->unk4E;
    arg2->unk4E = (s16) temp_s1;
    unksp18 = (s64) temp_ra;
    arg2->unk4A = (s16) (arg1->unk22 - temp_s1);
    mgrTM_process_level(arg0, arg2);
    arg2->unk4E = (s16) unksp18;
}

void IncreaseSpace(__GLcontext *arg0, s16 arg1, s32 arg2) {
    f32 *temp_a1_4;
    f32 *temp_a4_3;
    f32 *temp_a5_3;
    s16 temp_a4;
    s32 *temp_a1_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_ra;
    s64 temp_v1_2;
    void *temp_a0_3;
    void *temp_a1;
    void *temp_a1_3;
    void *temp_a4_2;
    void *temp_at;
    void *temp_ra_2;
    void *temp_v1;

    mgrTM_SaveData(NULL);
    M2C_ERROR(/* Read from unset register $v0 */)->unk2E = 3;
    M2C_ERROR(/* Read from unset register $v0 */)->unk18 = 0;
    M2C_ERROR(/* Read from unset register $v0 */)->unk2C = 1;
    M2C_ERROR(/* Read from unset register $v0 */)->unk1C = (s32) (arg0->unk91FC + 0x4A8);
    temp_ra = arg2 * 0x30;
    temp_a0 = arg2 != 0;
    temp_a2 = temp_a0 * 2;
    temp_a4 = (arg0->unk91FC + temp_ra + temp_a2)->unk20;
    temp_v1 = M2C_ERROR(/* Read from unset register $v0 */) + temp_a2;
    temp_v1->unk24 = arg1;
    temp_v1->unk20 = temp_a4;
    temp_v1->unk28 = (s16) ((temp_a4 + arg1) - 1);
    temp_a1 = arg0->unk91FC + temp_ra + 0xF0;
    *M2C_ERROR(/* Read from unset register $v0 */) = temp_a1;
    temp_a1_2 = temp_a1->unkC;
    M2C_ERROR(/* Read from unset register $v0 */)->unkC = temp_a1_2;
    *temp_a1_2 = M2C_ERROR(/* Read from unset register $v0 */);
    (*M2C_ERROR(/* Read from unset register $v0 */))->unkC = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    temp_a4_2 = *M2C_ERROR(/* Read from unset register $v0 */) + temp_a2;
    temp_a4_2->unk28 = (s16) (temp_a4_2->unk28 + arg1);
    temp_at = *M2C_ERROR(/* Read from unset register $v0 */) + temp_a2;
    temp_at->unk20 = (s16) temp_at->unk28;
    temp_a0_2 = temp_a0 * 4;
    temp_a1_3 = M2C_ERROR(/* Read from unset register $v0 */) + temp_a0_2;
    temp_a5 = arg0->unk91FC + temp_ra;
    temp_a1_3->unk4 = temp_a5;
    temp_a5_2 = (temp_a0_2 + temp_a5)->unk10;
    temp_a1_3->unk10 = temp_a5_2;
    (temp_a0_2 + temp_a5_2)->unk4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    temp_at_2 = arg2 == 0;
    (temp_a1_3->unk4 + temp_a0_2)->unk10 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    temp_a0_3 = temp_a0_2 + M2C_ERROR(/* Read from unset register $v0 */);
    temp_v1_2 = (s64) ((temp_v1->unk28 + 1) << 0x30) >> 0x30;
    (temp_a0_3->unk4 + temp_a2)->unk28 = (s16) temp_v1_2;
    temp_ra_2 = (temp_at_2 * 2) + M2C_ERROR(/* Read from unset register $v0 */);
    (temp_a0_3->unk4 + temp_a2)->unk20 = (s16) temp_v1_2;
    ((temp_at_2 * 4) + M2C_ERROR(/* Read from unset register $v0 */))->unk4 = 0;
    temp_ra_2->unk20 = 0;
    temp_ra_2->unk28 = 0;
    temp_ra_2->unk24 = 0;
    if (arg2 != 0) {
        temp_at_3 = arg2 - 1;
        M2C_ERROR(/* Read from unset register $v0 */)->unk2E = (s16) (~temp_at_3 & (temp_at_3 ^ 3) & 1);
    }
    temp_a1_4 = temp_a0_3->unk10;
    if (temp_a0_3->unk4 != temp_a1_4) {
        temp_a4_3 = M2C_ERROR(/* Read from unset register $v0 */)->unk1C;
        temp_a5_3 = temp_a1_4->unk1C;
        if (*temp_a5_3 == *temp_a4_3) {
            mgrTM_process_level(arg0, temp_a1_4, M2C_ERROR(/* Read from unset register $v0 */), M2C_ERROR(/* Read from unset register $v0 */), temp_a4_3, temp_a5_3);
        }
    }
}

void mgrTM_SetBasereg(void *arg0) {
    s64 sp8;
    s32 sp0;
    s16 temp_a5;
    s32 temp_a0;
    void *temp_a3;

    temp_a3 = arg0->unk91FC;
    if (arg0->unk9200 == 0) {
        temp_a5 = temp_a3->unk52;
        sp8 = arg0 + 0x10000;
        if (temp_a5 > 0) {
            sp0 = (s32) temp_a5;
            temp_a0 = arg0->unk7B48;
            if (ioctl(temp_a0, 0x6D670010U, temp_a0, 0x6D670010, sp, temp_a3, arg0, temp_a5) < 0) {
                perror(&sub_0dbe0000 - 0x3E20);
                abort();
            }
            sp8->unk-6E00 = 1;
        }
    }
}

void mgrTM_InitTMhw(void *arg0) {
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t1_5;
    void *temp_a0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a4;
    void *temp_a7;
    void *temp_t0;
    void *temp_t1;
    void *temp_t2;
    void *temp_v0;
    void *temp_v1;

    temp_a4 = arg0->unk91FC;
    temp_a6 = temp_a4 + 0xF0;
    temp_a3 = temp_a4 + 0x4A8;
    temp_a4->unk4D2 = 0x100;
    temp_a4->unk4D0 = 1;
    temp_a4->unk4B4 = 1;
    temp_a4->unk4B0 = 1;
    temp_a4->unk418 = (void *) (temp_a4 + 0x300);
    temp_a4->unk414 = (void *) (temp_a4 + 0x2A4);
    temp_a4->unk4AC = 2.0f;
    temp_a4->unk4A8 = -1.0f;
    temp_a1 = temp_a4 + 0x30;
    temp_v1 = temp_a1 + 0x30;
    temp_t2 = temp_v1 + 0x30;
    temp_a7 = temp_t2 + 0x30;
    temp_t0 = temp_a7 + ((0xC0 != 0) * 4);
    temp_v0 = temp_t2 + ((0x90 != 0) * 4);
    temp_a4->unk1C = temp_a3;
    temp_a4->unk11C = 1;
    temp_a4->unkF0 = temp_a6;
    temp_a4->unkFC = temp_a6;
    temp_a4->unk10C = temp_a3;
    temp_a0 = temp_v1 + ((0x60 != 0) * 4);
    temp_a2 = temp_a1 + ((0x30 != 0) * 4);
    temp_t1 = temp_a4 + ((0 != 0) * 4);
    temp_t1->unk10 = temp_a4;
    temp_t1->unk4 = temp_a4;
    temp_t1_2 = temp_a6 + 0x30;
    temp_a1->unkFC = temp_t1_2;
    temp_a1->unkF0 = temp_t1_2;
    temp_t1_3 = temp_t1_2 + 0x30;
    temp_a1->unk1C = temp_a3;
    temp_a1->unk11C = 1;
    temp_a1->unk10C = temp_a3;
    temp_a2->unk4 = temp_a1;
    temp_a2->unk10 = temp_a1;
    temp_v1->unkFC = temp_t1_3;
    temp_v1->unkF0 = temp_t1_3;
    temp_t1_4 = temp_t1_3 + 0x30;
    temp_v1->unk1C = temp_a3;
    temp_v1->unk11C = 1;
    temp_v1->unk10C = temp_a3;
    temp_a0->unk4 = temp_v1;
    temp_a0->unk10 = temp_v1;
    temp_t2->unkFC = temp_t1_4;
    temp_t2->unkF0 = temp_t1_4;
    temp_t1_5 = temp_t1_4 + 0x30;
    temp_t2->unk1C = temp_a3;
    temp_t2->unk11C = 1;
    temp_t2->unk10C = temp_a3;
    temp_v0->unk4 = temp_t2;
    temp_v0->unk10 = temp_t2;
    temp_a7->unk1C = temp_a3;
    temp_a7->unk11C = 1;
    temp_a7->unkF0 = temp_t1_5;
    temp_a7->unkFC = temp_t1_5;
    temp_a7->unk10C = temp_a3;
    temp_t0->unk4 = temp_a7;
    temp_t0->unk10 = temp_a7;
}

void mgrTM_Init(void) {
    s64 sp48;
    __GLcontext *temp_s0;
    f32 *temp_v0;
    s32 temp_a1;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_f3;
    s32 temp_s3;
    s32 var_a1;
    s64 var_s4;
    s8 var_s5;
    void *temp_a1_2;
    void *temp_s1;
    void *temp_s2;
    void *temp_s6;
    void *var_a0;
    void *var_a1_2;
    void *var_s3;

    temp_s0 = __glCurrentContext;
    temp_s6 = temp_s0 + 0x10000;
    temp_s2 = temp_s6;
    temp_s1 = temp_s6;
    temp_s3 = temp_s0->unk91FC;
    bzero(temp_s0 + 0x8A2C, 0x830U);
    temp_s1->unk-6E04 = temp_s3;
    if (temp_s1->unk-635A != 1) {
        temp_s1->unk-6DB4 = 2;
    } else {
        temp_s1->unk-6DB4 = 0;
    }
    temp_s1->unk-6E98 = 2;
    temp_s1->unk-6EA4 = 0x2100;
    temp_v0 = temp_s0->imports.malloc(temp_s0, 0x320U);
    temp_s1->unk-6E94 = temp_v0;
    *temp_v0 = 0.0f;
    temp_s1->unk-6E94->unk4 = 0.0f;
    temp_s1->unk-6E94->unk8 = -4.0f;
    var_a1 = 1;
    temp_s1->unk-6E94->unkC = 1.0f;
    var_a0 = temp_s2;
    temp_s1->unk-6E08 = (void *) (temp_s0 + 0x9168);
    temp_s1->unk-6E90 = 0x1F;
    temp_s1->unk-6E8C = 0x1F;
    do {
        temp_a1 = var_a1 + 1;
        temp_f3 = (s32) (((f64) temp_a1 / 30.0) * (second half of f64));
        var_a0 -= 8;
        temp_at = (s32) (((f64) var_a1 / 30.0) * (second half of f64));
        var_a1 = temp_a1 + 1;
        var_a0->unk-6E0C = temp_at;
        var_a0->unk-6E10 = temp_f3;
    } while (var_a1 != 0x1F);
    sp48 = (s64) temp_s6;
    __glMgrasWrite(temp_s0, temp_s0, 0x190, 0, SYMBOL_LOCATION.unk10C, 1);
    var_a1_2 = temp_s0 + 0x10000;
    do {
        *(s32 *)0x74080 = 0xEC10;
        *(s32 *)0x74080 = SYMBOL_LOCATION.unk10C;
        *(s32 *)0x74080 = SYMBOL_LOCATION.unk11C;
        *(s32 *)0x74080 = 0x194;
        *(s32 *)0x74080 = var_a1_2->unk-6E90;
        *(s32 *)0x74080 = 0xEC10;
        *(s32 *)0x74080 = SYMBOL_LOCATION.unk10C;
        *(s32 *)0x74080 = SYMBOL_LOCATION.unk11C;
        *(s32 *)0x74080 = 0x194;
        temp_at_2 = var_a1_2->unk-6E8C;
        var_a1_2 += 8;
        *(s32 *)0x74080 = temp_at_2;
    } while (var_a1_2 != (&temp_s0->exports.unk34 + 0x10000));
    var_s3 = temp_s0 + 0x8A30;
    var_s4 = sp48;
    var_s5 = 0;
    do {
        var_s4->unk-751D = var_s5;
        temp_a1_2 = var_s3;
        var_s4->unk-750C = var_s3;
        var_s3 += 0xCC;
        var_s4->unk-7508 = (s32) var_s5;
        mgrTM_InitTexture(temp_s0, temp_a1_2);
        var_s5 += 1;
        var_s4 += 0xCC;
    } while (var_s5 != 9);
    __glMgrasWrite(temp_s0, temp_s0, 0x1A0, 0, SYMBOL_LOCATION.unk120, 0);
    __glMgrasWrite(temp_s0, temp_s0, 0x18B, 0, SYMBOL_LOCATION.unk104, 0);
    __glMgrasWrite(temp_s0, temp_s0, 0x188, 0x800800, SYMBOL_LOCATION.unkF8, 0);
    __glMgrasWrite(temp_s0, temp_s0, 0x189, 0x800800, SYMBOL_LOCATION.unkFC, 0);
    __glMgrasWrite(temp_s0, temp_s0, 0x182, 0, SYMBOL_LOCATION.unkE0, 1);
    temp_s1->unk-6DDC = 0x1000;
    temp_s1->unk-6DD0 = 0x28;
    temp_s1->unk-6DCC = 1;
    temp_s1->unk-6DFC = 0x40;
    temp_s1->unk-6DF8 = 1;
    temp_s1->unk-6DE8 = 1;
    temp_s1->unk-6DEC = 0x18;
    MgrasPrevVidTexture = NULL;
}

void mgrTM_InitTexture(__GLcontext *arg0, void *arg1) {
    arg1->unkC2 = 0;
    arg1->unk9E = 0;
    arg1->unk4C = 0;
    arg1->unk88 = 0;
    arg1->unk7C = 0x8185;
    arg1->unkA2 = -1;
    arg1->unk8C = 0x3E8;
    arg1->unkB1 = 1;
    arg1->unk78 = 0.0f;
    arg1->unk84 = 1000.0f;
    arg1->unk80 = -1000.0f;
    if ((s32) arg1->unkB3 < 4) {
        arg1->unkAB = 1;
        arg1->unkB5 = 1;
    }
    if (arg1->unkB3 == 2) {
        arg1->unkBF = 2;
        arg1->unk74 = -4.0f;
        arg1->unk50 = (s32) (arg0 + 0x9168);
    }
    if (arg1->unkB3 != 8) {
        arg1->unk6C = 0.5f;
        arg1->unk70 = 0.5f;
        return;
    }
    arg1->unk6C = 1.5f;
}

void mgrTM_ProcessTextureUsage(__GLcontext *arg0) {
    s64 sp60;
    s64 sp58;
    f32 *temp_a1_4;
    f32 *temp_a1_5;
    f32 *var_a4;
    f32 *var_s1;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_s2;
    s32 var_s7;
    s64 var_a0;
    s64 var_a2;
    s64 var_s0;
    u8 temp_a1_2;
    void *temp_a1;
    void *temp_a1_3;
    void *temp_gp;
    void *temp_v1;
    void *var_a0_2;
    void *var_a2_2;
    void *var_s1_2;
    void *var_s4;
    void *var_s5;
    void *var_s6;
    void *var_s8;

    var_s7 = 0;
    var_s2 = 0;
    var_s0 = 0;
    var_s4 = arg0->unk91FC;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x14736C;
    var_s8 = var_s4;
    var_s6 = var_s4;
    sp58 = var_s4 + 0x35C;
    sp60 = var_s4 + 0x2A4;
    do {
        var_a2 = sp60;
        if (var_s4->unk414 == sp60) {
            var_a2 = sp58;
        }
        var_s4->unk414 = (s32) var_a2;
        var_a0 = var_a2;
        if ((var_s7 + var_s6)->unk20 == var_s8->unk4D0) {
            var_s4->unk4B0 = 0;
        }
        temp_a1 = var_a2 + var_s2;
        var_a4 = temp_a1->unk8;
        if (var_a4 != NULL) {
            var_s4->unk4B8 = 0;
            var_s4->unk4B0 = 1;
            var_s1 = temp_a1->unk8;
            if (var_s1 != NULL) {
loop_16:
                temp_a0 = var_s1->unk28;
                if ((temp_a0 == 0) || (temp_a0 == arg0)) {
                    mgrTM_RemoveLev(var_s1, var_s0);
                    var_s5 = var_s2 + var_s1;
                    var_s5->unk18 = 0;
                    if (var_s0 == 1) {
                        mgrTM_process_level(arg0, var_s1);
                    }
                    if ((var_s0 + var_s1)->unk56 != 0) {
                        temp_a2 = var_s1->unk4->unk0;
                        (var_s7 + temp_a2)->unk9C = (s16) ((var_s8->unk4D0 - ((bitwise s32) var_s1->unk0 + var_s7)->unk28) - 1);
                        temp_a1_2 = var_s1->unk4->unk3F;
                        if (temp_a1_2 < 0xDU) {
                            var_a0_2 = (temp_a1_2 * 4) + temp_a2;
loop_22:
                            temp_a1_3 = var_a0_2->unk14;
                            var_a0_2 += 4;
                            if (temp_a1_3 != NULL) {
                                temp_a3 = temp_a1_3->unk1C;
                                if (temp_a3 != 0) {
                                    (temp_a3 + var_s0)->unk56 = 0;
                                    if ((temp_a2 + 0x34) == var_a0_2) {

                                    } else {
                                        goto loop_22;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    mgrTM_DrawSetup(arg0, var_s1, var_s0);
                    var_s5 = var_s2 + var_s1;
                }
                var_s1 = var_s5->unk8;
                if (var_s1 != NULL) {
                    goto loop_16;
                }
                var_a0 = (s64) var_s4->unk414;
            }
        } else if (var_s4->unk4C0 != 0) {
            var_s1_2 = (var_s2 + var_s6)->unk4;
loop_29:
            temp_a1_4 = var_s1_2->unk18;
            if (temp_a1_4 != NULL) {
                var_a4 = (var_s2 + temp_a1_4)->unk18;
                if (var_a4 != NULL) {
                    var_a2_2 = (var_s2 + var_s1_2)->unk4;
                    goto block_28;
                }
                if (temp_a1_4->unk55 != 0) {
                    if ((temp_a1_4 + var_s0)->unk56 == 0) {
                        var_s4->unk4B8 = 0;
                        mgrTM_MakeResident(arg0, var_s1_2->unk18, NULL, var_s0, var_a4);
                        goto block_41;
                    }
                    var_a2_2 = (var_s2 + var_s1_2)->unk4;
                    goto block_28;
                }
                var_a2_2 = (var_s2 + var_s1_2)->unk4;
                goto block_28;
            }
            var_a2_2 = (var_s2 + var_s1_2)->unk4;
            if (var_s6 != var_a2_2) {
                temp_a1_5 = var_a2_2->unk18;
                if (temp_a1_5 != NULL) {
                    var_s4->unk4B8 = 0;
                    mgrTM_MakeResident(arg0, temp_a1_5, NULL, var_s0, var_a4);
block_41:
                    var_a0 = (s64) var_s4->unk414;
                } else {
block_28:
                    var_s1_2 = var_a2_2;
                    if (var_a2_2 != var_s6) {
                        goto loop_29;
                    }
                }
            }
            if (var_s6 == var_s1_2) {
                var_s4->unk4B8 = 1;
            }
            var_s4->unk4C0 = 0;
        }
        var_s4 += 4;
        temp_v1 = var_s2 + var_a0;
        var_s2 += 4;
        var_s6 += 0x30;
        var_s8 += 2;
        var_s7 += 2;
        var_s0 += 1;
        temp_v1->unk8 = 0;
        sp60 += 0x5C;
        sp58 += 0x5C;
    } while (var_s0 != 2);
    temp_gp->unk-341C = (s32) (temp_gp->unk-341C + 1);
}

void mgrTM_set_externalformat(u8 arg1, u8 arg2, void *arg3, u32 arg4) {
    s32 var_v0;
    u32 var_a2_2;
    u32 var_a4;
    u8 var_a1;
    u8 var_a2;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a4 = arg4;
    if (var_a2 >= 0x1406U) {
        var_a4 = 0x8034;
        if (var_a2 >= 0x1407U) {
            if (var_a2 >= 0x8034U) {
                var_a4 = 0x8036;
                if (var_a2 > 0x8034U) {
                    if (var_a2 >= 0x8036U) {
                        if (var_a2 <= 0x8036U) {
                            goto block_6;
                        }
                        goto block_29;
                    }
                    if (var_a2 == 0x8035) {
block_6:
                        if ((var_a1 != 0x1908) && (var_a1 != 0x8000)) {
                            __glSetError(0x500, 0x8036U);
                            return;
                        }
                        goto block_32;
                    }
                    /* Duplicate return node #30. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a2, var_a4);
                    return;
                }
                goto block_50;
            }
            var_a4 = 0x8032;
            switch (var_a2) {                       /* irregular */
            default:
                var_a2_2 = 1;
                if (var_a1 != 0x1907) {
                    __glSetError(0x500, 1U, 0x8032U);
                    return;
                }
                goto block_15;
            case 0x8033:
block_50:
                var_a2_2 = 1;
                if (var_a1 != 0x1908) {
                    var_v0 = var_a1 < 0x1907U;
                    if (var_a1 != 0x8000) {
                        __glSetError(0x500, 1U, var_a4);
                        return;
                    }
                    goto block_16;
                }
                goto block_15;
            case 0x1A00:
                if (var_a1 != 0x1900) {
                    __glSetError(0x500, 0x8032U);
                    return;
                }
                var_a2_2 = 0;
                goto block_15;
            }
        } else {
            goto block_14;
        }
    } else {
        if (var_a2 >= 0x1403U) {
            if (var_a2 < 0x1404U) {
                goto block_11;
            }
            if (var_a2 >= 0x1405U) {
                var_a2 = 8;
                if (var_a2 < 0x1406U) {
                    goto block_14;
                }
                goto block_29;
            }
            if (var_a2 == 0x1404) {
block_14:
                var_a2_2 = 8;
                goto block_15;
            }
            /* Duplicate return node #30. Try simplifying control flow for better match */
            __glSetError(0x500, var_a2, var_a4);
            return;
        }
        if (var_a2 >= 0x1401U) {
            if (var_a2 >= 0x1402U) {
                if (var_a2 != 0x1402) {
block_29:
                    /* Duplicate return node #30. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a2, var_a4);
                    return;
                }
block_11:
                var_a2_2 = 4;
                goto block_15;
            }
            goto block_32;
        }
        if (var_a2 == 0x1400) {
block_32:
            var_a2_2 = 2;
block_15:
            var_v0 = var_a1 < 0x1907U;
block_16:
            if (var_v0 == 0) {
                if (var_a1 >= 0x1908U) {
                    if (var_a1 >= 0x190AU) {
                        if (var_a1 >= 0x190BU) {
                            if (var_a1 == 0x8000) {
                                goto block_54;
                            }
                            /* Duplicate return node #38. Try simplifying control flow for better match */
                            __glSetError(0x500, var_a1, var_a2_2, var_a4);
                            return;
                        }
                        var_a1 = 2;
                        /* Duplicate return node #25. Try simplifying control flow for better match */
                        arg3->unkA8 = (s8) (s32) ((f64) (var_a2_2 * var_a1) * (second half of f64));
                        return;
                    }
                    if (var_a1 >= 0x1909U) {
                        if (var_a1 < 0x190AU) {
                            goto block_24;
                        }
                        /* Duplicate return node #38. Try simplifying control flow for better match */
                        __glSetError(0x500, var_a1, var_a2_2, var_a4);
                        return;
                    }
                    if (var_a1 == 0x1908) {
block_54:
                        var_a1 = 4;
                        /* Duplicate return node #25. Try simplifying control flow for better match */
                        arg3->unkA8 = (s8) (s32) ((f64) (var_a2_2 * var_a1) * (second half of f64));
                        return;
                    }
                    /* Duplicate return node #38. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1, var_a2_2, var_a4);
                    return;
                }
                var_a1 = 3;
                /* Duplicate return node #25. Try simplifying control flow for better match */
                arg3->unkA8 = (s8) (s32) ((f64) (var_a2_2 * var_a1) * (second half of f64));
                return;
            }
            if (var_a1 >= 0x1904U) {
                if (var_a1 < 0x1905U) {
                    goto block_24;
                }
                if (var_a1 >= 0x1906U) {
                    if (var_a1 < 0x1907U) {
                        goto block_24;
                    }
                    /* Duplicate return node #38. Try simplifying control flow for better match */
                    __glSetError(0x500, var_a1, var_a2_2, var_a4);
                    return;
                }
                if (var_a1 == 0x1905) {
                    goto block_24;
                }
                /* Duplicate return node #38. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1, var_a2_2, var_a4);
                return;
            }
            if (var_a1 >= 0x1903U) {
                if (var_a1 < 0x1904U) {
block_24:
                    var_a1 = 1;
                    /* Duplicate return node #25. Try simplifying control flow for better match */
                    arg3->unkA8 = (s8) (s32) ((f64) (var_a2_2 * var_a1) * (second half of f64));
                    return;
                }
                /* Duplicate return node #38. Try simplifying control flow for better match */
                __glSetError(0x500, var_a1, var_a2_2, var_a4);
                return;
            }
            var_a1 = 1;
            if (var_a1 != 0x1900) {
                __glSetError(0x500, var_a1, var_a2_2, var_a4);
                return;
            }
            arg3->unkA8 = (s8) (s32) ((f64) (var_a2_2 * var_a1) * (second half of f64));
            return;
        }
        __glSetError(0x500, var_a2, var_a4);
    }
}

void mgrTM_set_internalformat(void *arg0, void *arg1, void *arg2) {
    s8 var_a6;
    u16 var_a5;
    u32 var_a4;
    u32 var_a6_2;
    u32 var_a7;
    void *var_a2;
    void *var_a3;

    var_a2 = arg2;
    var_a5 = 0;
    var_a6 = 0;
    arg1->unkC3 = 0;
    arg1->unkA9 = 0;
    arg1->unkBB = 0;
    arg1->unkAA = 0U;
    var_a7 = 0x8050;
    var_a4 = var_a2->unk18;
    if (var_a4 >= 0x8050U) {
        if (var_a4 <= 0x8050U) {
            goto block_2;
        }
        if (var_a4 >= 0x8114U) {
            if (var_a4 <= 0x8114U) {
                var_a3 = arg0 + 0x10000;
                goto block_24;
            }
            var_a2 = (void *) (var_a4 < 0x811CU);
            if (var_a2 == NULL) {
                if (var_a4 <= 0x811CU) {
                    var_a3 = arg0 + 0x10000;
                    goto block_67;
                }
                if (var_a4 >= 0x8120U) {
                    if (var_a4 <= 0x8120U) {
                        var_a3 = arg0 + 0x10000;
                        goto block_147;
                    }
                    var_a3 = (void *)0x8122;
                    switch (var_a4) {               /* switch 3; irregular */
                    case 0x8123:                    /* switch 3 */
                        var_a2 = (void *)2;
                        arg1->unkC3 = 2;
                        goto block_194;
                    case 0x8121:                    /* switch 3 */
                        var_a3 = arg0 + 0x10000;
                        goto block_197;
                    default:                        /* switch 3 */
                        arg1->unkC3 = 2;
                        goto block_223;
                    }
                } else {
                    var_a3 = (void *)0x811E;
                    if (var_a4 >= 0x811EU) {
                        var_a2 = (void *)0x811F;
                        if (var_a4 > 0x811EU) {
                            if (var_a4 == 0x811F) {
                                arg1->unkC3 = 1;
block_194:
                                var_a3 = arg0 + 0x10000;
                                if (arg0->unk9CB1 != 0) {
block_197:
                                    var_a6 = 1 & 0xFF;
                                    arg1->unkBB = var_a6;
                                    goto block_198;
                                }
                                goto block_9;
                            }
                            goto block_9;
                        }
                        arg1->unkC3 = 1;
block_223:
                        var_a3 = arg0 + 0x10000;
                        if (arg0->unk9CB1 == 0) {
                            goto block_9;
                        }
block_147:
                        var_a6 = 1 & 0xFF;
                        arg1->unkBB = var_a6;
block_67:
                        var_a7 = 0x8056;
                        if (var_a3->unk-6DB4 != 0) {
                            arg1->unkBB = (s8) (var_a6 + 1);
                            goto block_69;
                        }
                        var_a5 = 1;
                        arg1->unkBB = 0;
                    } else if (var_a4 == 0x811D) {
                        var_a3 = arg0 + 0x10000;
block_198:
                        if (var_a3->unk-6DB4 != 0) {
                            arg1->unkBB = (s8) (var_a6 + 1);
                            goto block_33;
                        }
                        var_a5 = 1;
                        arg1->unkBB = 0;
                    } else {
                        goto block_9;
                    }
                }
            } else {
                if (var_a4 >= 0x8118U) {
                    var_a3 = (void *)0x811A;
                    if (var_a4 > 0x8118U) {
                        var_a2 = (void *) (var_a4 > 0x811AU);
                        if (var_a4 >= 0x811AU) {
                            if ((var_a2 == NULL) || (var_a4 == 0x811B)) {
                                arg1->unkC3 = 2;
                                goto block_106;
                            }
                            goto block_9;
                        }
                        if (var_a4 == 0x8119) {
                            arg1->unkC3 = 2;
                            goto block_188;
                        }
                        goto block_9;
                    }
                    arg1->unkC3 = 2;
                    goto block_181;
                }
                var_a3 = (void *)0x8116;
                var_a2 = (void *) (var_a4 < 0x8116U);
                if (var_a2 == NULL) {
                    var_a3 = (void *)0x10000;
                    if (var_a4 <= 0x8116U) {
                        var_a3 = arg0 + 0x10000;
                        goto block_107;
                    }
                    if (var_a4 == 0x8117) {
                        var_a3 = arg0 + 0x10000;
                        goto block_107;
                    }
                    goto block_9;
                }
                if (var_a4 == 0x8115) {
                    var_a3 = arg0 + 0x10000;
                    goto block_173;
                }
                goto block_9;
            }
        } else {
            var_a3 = (void *)0x8058;
            if (var_a4 >= 0x8058U) {
                if (var_a4 <= 0x8058U) {
                    goto block_32;
                }
                var_a2 = (void *) (var_a4 < 0x8110U);
                if (var_a2 == NULL) {
                    var_a3 = (void *)0x8112;
                    if (var_a4 > 0x8110U) {
                        if (var_a4 >= 0x8112U) {
                            var_a2 = (void *)1;
                            if (var_a4 <= 0x8112U) {
                                goto block_99;
                            }
                            if (var_a4 == 0x8113) {
                                var_a2 = (void *)1;
block_99:
                                arg1->unkC3 = 1;
block_106:
                                var_a3 = arg0 + 0x10000;
                                if (arg0->unk9CB1 != 0) {
block_107:
                                    if (var_a3->unk-6DB4 != 0) {
                                        arg1->unkBB = 1;
                                        goto block_40;
                                    }
                                    goto block_9;
                                }
                                goto block_9;
                            }
                            goto block_9;
                        }
                        if (var_a4 == 0x8111) {
                            var_a2 = (void *)1;
                            arg1->unkC3 = 1;
block_188:
                            var_a3 = arg0 + 0x10000;
                            if (arg0->unk9CB1 == 0) {
                                goto block_9;
                            }
block_173:
                            var_a7 = 0x8045;
                            if (var_a3->unk-6DB4 != 0) {
                                arg1->unkBB = 1;
                                goto block_53;
                            }
                            goto block_9;
                        }
                        goto block_9;
                    }
                    arg1->unkC3 = 1;
block_181:
                    var_a3 = arg0 + 0x10000;
                    var_a2 = (void *) arg0->unk9CB1;
                    if (var_a2 == NULL) {
                        goto block_9;
                    }
block_24:
                    var_a7 = 0x8043;
                    if (var_a3->unk-6DB4 != 0) {
                        arg1->unkBB = 1;
                        goto block_26;
                    }
                    goto block_9;
                }
                switch (var_a4) {                   /* switch 2; irregular */
                default:                            /* switch 2 */
block_136:
                    arg1->unkA6 = 3;
                    var_a4 = arg0->unk924C;
                    if (var_a4 != 0) {
                        if (var_a4 < 2U) {
                            arg1->unk98 = 0x8058;
                            arg1->unkA7 = 1;
                        } else {
                            arg1->unk98 = 0x805A;
                            arg1->unkA7 = 2;
                        }
                    } else {
                        arg1->unkA7 = 0;
                        var_a2 = (void *)0x8056;
                        arg1->unk98 = 0x8056;
                    }
                    break;
                case 0x8059:                        /* switch 2 */
                    goto block_136;
                case 0x805B:                        /* switch 2 */
                    goto block_136;
                }
            } else {
                var_a3 = (void *)0x8054;
                var_a2 = (void *) (var_a4 > 0x8054U);
                if (var_a4 >= 0x8054U) {
                    var_a7 = 0x8056;
                    if (var_a2 == NULL) {
                        goto block_61;
                    }
                    if (var_a4 >= 0x8056U) {
                        var_a3 = (void *)0x10000;
                        if (var_a4 <= 0x8056U) {
                            var_a3 = arg0 + 0x10000;
                            goto block_69;
                        }
                        if (var_a4 == 0x8057) {
                            goto block_32;
                        }
                        goto block_9;
                    }
                    if (var_a4 == 0x8055) {
                        var_a3 = arg0 + 0x10000;
block_69:
                        var_a2 = (void *)3;
                        arg1->unkA6 = 3;
                        arg1->unkA7 = 0;
                        arg1->unk98 = 0x8056;
                        if (var_a3->unk-6DB4 != 0) {
                            arg1->unkAA = 1U;
                            if ((u32) var_a3->unk-6DB4 >= 2U) {
                                arg1->unkA9 = 1;
                            }
                        }
                    } else {
                        goto block_9;
                    }
                } else {
                    var_a3 = (void *)0x8052;
                    if (var_a4 >= 0x8052U) {
                        if (var_a4 > 0x8052U) {
                            if (var_a4 == 0x8053) {
                                goto block_61;
                            }
                            goto block_9;
                        }
block_61:
                        arg1->unkA6 = 2;
                        arg1->unkA7 = 2;
                        var_a4 = arg0->unk924C;
                        if (var_a4 != 0) {
                            if (var_a4 >= 2U) {
                                arg1->unk98 = 0x8053;
                            } else {
                                arg1->unk98 = 0x8051;
                                arg1->unkA7 = 1;
                            }
                        } else {
                            arg1->unkA7 = 0;
                            var_a2 = (void *)0x804F;
                            arg1->unk98 = 0x804F;
                        }
                    } else {
                        var_a2 = (void *)0x8051;
                        if (var_a4 == 0x8051) {
                            goto block_2;
                        }
                        goto block_9;
                    }
                }
            }
        }
        goto block_10;
    }
    var_a3 = (void *)0x8040;
    var_a2 = (void *) (var_a4 > 0x8040U);
    if (var_a4 >= 0x8040U) {
        if (var_a2 == NULL) {
            goto block_7;
        }
        if (var_a4 >= 0x8048U) {
            if (var_a4 <= 0x8048U) {
                goto block_39;
            }
            var_a3 = (void *)0x804C;
            if (var_a4 >= 0x804CU) {
                var_a7 = 0x804E;
                if (var_a4 > 0x804CU) {
                    var_a2 = (void *) (var_a4 < 0x804EU);
                    if (var_a2 == NULL) {
                        if (var_a4 > 0x804EU) {
                            if (var_a4 == 0x804F) {
                                goto block_79;
                            }
                            goto block_9;
                        }
                        goto block_79;
                    }
                    if (var_a4 == 0x804D) {
                        goto block_150;
                    }
                    goto block_9;
                }
block_150:
                if (arg0->unk9CB1 != 0) {
                    arg1->unkA6 = 0;
                    arg1->unk98 = 0x804C;
                    arg1->unkA7 = 2;
                    arg1->unkC3 = 2;
                } else {
                    goto block_9;
                }
            } else {
                var_a3 = (void *)0x804A;
                switch (var_a4) {                   /* switch 1; irregular */
                case 0x804B:                        /* switch 1 */
                    /* fallthrough */
                case 0x8049:                        /* switch 1 */
                    if (arg0->unk9CB1 != 0) {
                        arg1->unkA6 = 0;
                        arg1->unkAA = 1U;
                        arg1->unkA7 = 1;
                        var_a2 = (void *)2;
                        arg1->unkC3 = 2;
                        arg1->unk98 = 0x804B;
                    } else {
                        goto block_9;
                    }
                    break;
                default:                            /* switch 1 */
                    if (arg0->unk9CB1 != 0) {
                        arg1->unkA7 = 0;
                        arg1->unkA6 = 0;
                        arg1->unk98 = 0x804A;
                        arg1->unkAA = 1U;
                        arg1->unkA9 = 1;
                        arg1->unkC3 = 2;
                    } else {
                        goto block_9;
                    }
                    break;
                }
            }
        } else if (var_a4 >= 0x8044U) {
            var_a7 = 0x8045;
            if (var_a4 <= 0x8044U) {
                goto block_52;
            }
            var_a3 = (void *)0x8046;
            var_a2 = (void *) (var_a4 > 0x8046U);
            if (var_a4 >= 0x8046U) {
                if (var_a2 == NULL) {
                    goto block_39;
                }
                var_a2 = (void *)0x8047;
                if (var_a4 == 0x8047) {
block_39:
                    var_a3 = arg0 + 0x10000;
block_40:
                    arg1->unkA6 = 1;
                    arg1->unkA7 = 2;
                    if (var_a3->unk-6DB4 != 0) {
                        arg1->unk98 = 0x8047;
                    } else {
                        arg1->unkA7 = 1;
                        arg1->unk98 = 0x8045;
                    }
                } else {
                    goto block_9;
                }
            } else {
                var_a7 = 0x8045;
                if (var_a4 == 0x8045) {
                    goto block_52;
                }
                goto block_9;
            }
        } else {
            var_a2 = (void *) (var_a4 > 0x8042U);
            if (var_a4 >= 0x8042U) {
                var_a3 = (void *)0x8041;
                if (var_a2 == NULL) {
                    goto block_84;
                }
                var_a7 = 0x8043;
                if (var_a4 == 0x8043) {
                    var_a3 = arg0 + 0x10000;
block_26:
                    arg1->unk98 = 0x8043;
                    arg1->unkA6 = 1;
                    arg1->unkA7 = 0;
                    if (var_a3->unk-6DB4 != 0) {
                        arg1->unkA9 = 1;
                    }
                    arg1->unkAA = 1U;
                } else {
                    goto block_9;
                }
            } else {
                var_a3 = (void *)0x8041;
                if (var_a4 == 0x8041) {
block_84:
                    arg1->unkA6 = 0;
                    arg1->unk98 = 0x8041;
                    arg1->unkA7 = 2;
                } else {
                    goto block_9;
                }
            }
        }
        goto block_10;
    }
    var_a2 = (void *) (var_a4 < 0x1909U);
    if (var_a2 == NULL) {
        if (var_a4 >= 0x190AU) {
            var_a3 = (void *)0x803C;
            if (var_a4 >= 0x803CU) {
                var_a2 = (void *)0x9CB1;
                if (var_a4 <= 0x803CU) {
                    goto block_57;
                }
                var_a3 = (void *)0x803E;
                if (var_a4 >= 0x803EU) {
                    if (var_a4 <= 0x803EU) {
                        goto block_118;
                    }
                    var_a3 = (void *)0x803F;
                    if (var_a4 == 0x803F) {
                        arg1->unkA7 = 0;
                        arg1->unkA6 = 0;
                        arg1->unk98 = 0x803F;
                        arg1->unkAA = 1U;
                        arg1->unkA9 = 1;
                    } else {
                        goto block_9;
                    }
                } else {
                    var_a2 = (void *)0x803D;
                    if (var_a4 == 0x803D) {
block_118:
                        if (arg0->unk9CB1 != 0) {
                            arg1->unkA6 = 0;
                            arg1->unkA7 = 2;
                            arg1->unkC3 = 1;
                            var_a2 = (void *)0x803D;
                            arg1->unk98 = 0x803D;
                        } else {
                            goto block_9;
                        }
                    } else {
                        goto block_9;
                    }
                }
                goto block_10;
            }
            if (var_a4 >= 0x2A10U) {
                var_a6_2 = 0x804F;
                if (var_a4 < 0x2A11U) {
block_79:
                    arg1->unkA6 = 2;
                    arg1->unkA7 = 0;
                    arg1->unk98 = 0x804F;
                    var_a3 = arg0 + 0x10000;
                    if (arg0->unk924C != 0) {
                        arg1->unkAA = 1U;
                        if ((u32) arg0->unk924C >= 2U) {
                            arg1->unkA9 = 1;
                        }
                    }
                    goto block_10;
                }
                var_a3 = (void *)0x803B;
                if (var_a4 == 0x803B) {
                    if (arg0->unk9CB1 == 0) {
                        var_a5 = 1;
                        /* Duplicate return node #11. Try simplifying control flow for better match */
                        __glSetError(0x501, (u8) var_a2, (u32) var_a3, var_a4, var_a5, var_a6_2, var_a7);
                        return;
                    }
                    arg1->unkA7 = 0;
                    arg1->unkA6 = 0;
                    arg1->unk98 = 0x803B;
                    arg1->unkAA = 1U;
                    arg1->unkA9 = 1;
                    arg1->unkC3 = 1;
                    goto block_10;
                }
                goto block_9;
            }
            if (var_a4 == 0x190A) {
                var_a7 = 0x8045;
                goto block_52;
            }
            goto block_9;
            goto block_10;
        }
        goto block_7;
    }
    var_a2 = (void *) (var_a4 < 4U);
    if (var_a2 == NULL) {
        var_a3 = (void *)0x10000;
        if (var_a4 < 5U) {
            goto block_32;
        }
        var_a2 = (void *) (var_a4 < 0x1908U);
        if (var_a4 >= 0x1907U) {
            if (var_a2 == NULL) {
                if (var_a4 == 0x1908) {
block_32:
                    var_a3 = arg0 + 0x10000;
block_33:
                    arg1->unkA6 = 3;
                    arg1->unkA7 = 1;
                    var_a2 = (void *)0x8058;
                    if (var_a3->unk-6DB4 != 0) {
                        arg1->unk98 = 0x8058;
                        if ((u32) var_a3->unk-6DB4 >= 2U) {
                            arg1->unkAA = 1U;
                        }
                    } else {
                        arg1->unkA7 = 0;
                        arg1->unk98 = 0x8056;
                    }
                } else {
                    goto block_9;
                }
            } else {
                goto block_2;
            }
        } else {
            var_a2 = (void *)0x1906;
            if (var_a4 == 0x1906) {
block_57:
                var_a2 = (void *) arg0->unk9CB1;
                if (var_a2 != NULL) {
                    arg1->unkA6 = 0;
                    arg1->unkAA = 1U;
                    arg1->unkA7 = 1;
                    arg1->unkC3 = 1;
                    arg1->unk98 = 0x803C;
                } else {
                    goto block_9;
                }
            } else {
                goto block_9;
            }
        }
    } else if (var_a4 >= 2U) {
        var_a7 = 0x8045;
        if (var_a4 < 3U) {
block_52:
            var_a3 = arg0 + 0x10000;
block_53:
            arg1->unk98 = 0x8045;
            arg1->unkA6 = 1;
            arg1->unkA7 = 1;
            if (var_a3->unk-6DB4 != 0) {
                arg1->unkAA = 1U;
            }
        } else if (var_a4 == 3) {
block_2:
            arg1->unkA6 = 2;
            arg1->unkA7 = 1;
            var_a3 = arg0 + 0x10000;
            var_a2 = (void *) arg0->unk924C;
            if (var_a2 != NULL) {
                arg1->unk98 = 0x8051;
                if ((u32) arg0->unk924C >= 2U) {
                    arg1->unkAA = 1U;
                }
            } else {
                arg1->unkA7 = 0;
                arg1->unk98 = 0x804F;
            }
        } else {
            goto block_9;
        }
    } else if (var_a4 != 1) {
block_9:
        var_a5 = 1;
    } else {
block_7:
        arg1->unkAA = 1U;
        arg1->unkA7 = 1;
        arg1->unkA6 = 0;
        arg1->unk98 = 0x8040;
    }
block_10:
    var_a6_2 = 1;
    if (var_a5 != 0) {
        __glSetError(0x501, (u8) var_a2, (u32) var_a3, var_a4, var_a5, var_a6_2, var_a7);
        return;
    }
    arg1->unkB7 = 0;
    arg1->unkB4 = 0;
    if (arg1->unkAA != 0) {
        if (arg0->unk718 != 0x1101) {
            arg1->unkB4 = 1;
        } else {
            arg1->unkB7 = 1;
        }
    }
}

void mgrTM_process_level(__GLcontext *arg0, f32 *arg1, f32 *arg2, f32 **arg3) {
    s64 sp0;
    f32 *temp_a1;
    f32 *temp_a1_2;
    s16 var_a1;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_t0;
    s32 var_v1;
    u16 temp_a5_2;
    u16 temp_a5_3;
    u16 temp_t0;
    u16 var_a7;
    u32 temp_a2_3;
    u32 temp_a4;
    u32 temp_a4_2;
    u32 temp_t1;
    u32 var_a6_2;
    u8 temp_a0;
    u8 temp_a0_4;
    void *temp_a0_5;
    void *temp_a2_2;

    temp_a5 = arg2->unk4;
    if ((s32) arg1->unkB3 < 4) {
        var_a0 = temp_a5 >> 1;
    } else {
        var_a0 = temp_a5;
    }
    var_a1 = 0;
    arg2->unk32 = 0;
    arg2->unk38 = -1;
    temp_a2 = var_a0 >> arg1->unkA9;
    temp_a7 = (s32) arg2->unk8 >> arg1->unkB4;
    temp_t2 = temp_a7 < 0x11;
    var_a6 = temp_a7 >> 5;
    if (temp_t2 != 0) {
        if (temp_a2 < 9) {
            var_a5 = temp_a2 >> 5;
            if ((s32) arg1->unkB3 < 4) {
                temp_a4 = arg2->unk14;
                if (temp_a4 == 0) {
                    if (arg1->unkB5 != 0) {
                        goto block_9;
                    }
                } else {
block_9:
                    arg2->unk38 = 0;
                }
                temp_a1 = arg1->unk10;
                if (temp_a1 != NULL) {
                    temp_a0 = arg2->unk3F;
                    if ((s32) temp_a0 > 0) {
                        temp_a2_2 = ((temp_a0 * 4) + arg1)->unk10;
                        if (temp_a2_2 != NULL) {
                            if (((s32) ((s32) temp_a2_2->unk4 >> 1) >> arg1->unkA9) <= 0) {
                                if (((s32) temp_a2_2->unk8 >> arg1->unkB4) < 2) {
                                    arg2->unk40 = 1;
                                    *arg3 = NULL;
                                    return;
                                }
                                goto block_16;
                            }
                            goto block_16;
                        }
                    }
block_16:
                    if (temp_a1->unk59 == 0) {
                        mgrTM_MakeResident(arg0, temp_a1, (f32 *)1, 1, NULL, var_a5, var_a6, temp_a7);
                    }
                    ((arg2->unk3F * 4) + arg1)->unk14->unk1C = arg1->unk10;
                    temp_a1_2 = arg1->unk10;
                    if ((s32) arg2->unk3F < (s32) temp_a1_2->unk4->unk3F) {
                        temp_a1_2->unk4 = arg2;
                    }
                    sp0 = arg0 + 0x10000;
                    /* Duplicate return node #54. Try simplifying control flow for better match */
                    sp0->unk-6E04->unk4B4 = 1;
                    return;
                }
                arg2->unk30 = 1U;
                sp0 = (s64) (arg0 + 0x10000);
                temp_a5_2 = arg1->unkA0;
                if ((s32) temp_a5_2 >= (s32) arg0->unk91FC->unk4D2) {
                    temp_a4_2 = arg1->unkB3 & 1;
                    if (temp_a4_2 == 0) {
                        __glSetError(0x501, (u8) arg2, (u32) temp_a2, temp_a4_2, temp_a5_2, (u32) var_a6, (u32) temp_a7);
                    }
                    bzero(arg2 + 4, 0x18U);
                    return;
                }
                arg1->unkA0 = (u16) (temp_a5_2 + 1);
                mgrTM_process_level(arg0, arg2, *arg3, temp_a4, (f32 *) temp_a5_2, (f32 *) var_a6, temp_a7);
                arg1->unk10 = (f32 *) arg2->unk1C;
                /* Duplicate return node #54. Try simplifying control flow for better match */
                sp0->unk-6E04->unk4B4 = 1;
                return;
            }
            goto block_22;
        }
        goto block_21;
    }
block_21:
    var_a5 = temp_a2 >> 5;
block_22:
    var_t0 = 0;
    if (var_a5 == 0) {
        var_a5 = 1;
    }
    if (var_a6 == 0) {
        var_a6 = 1;
    }
    if ((s32) arg1->unkB3 >= 2) {
        var_a1 = (var_a5 * var_a6) & 0xFFFF;
        arg2->unk32 = var_a1;
    }
    temp_a0_2 = arg2->unkC;
    temp_t1 = arg2->unk14;
    var_a5_2 = 0;
    var_a4 = temp_a0_2 < 2;
    arg2->unk36 = var_a1;
    if (var_a4 == 0) {
        var_a4 = temp_a0_2 >> 1;
        var_a1 = (var_a4 * var_a1) & 0xFFFF;
        arg2->unk32 = var_a1;
    }
    temp_a0_3 = arg2->unk10;
    var_a6_2 = 0;
    if (temp_a0_3 >= 2) {
        var_a1 = (temp_a0_3 * var_a1) & 0xFFFF;
        arg2->unk32 = var_a1;
        var_a6_2 = 0;
    }
    temp_a0_4 = arg1->unkB3;
    if (temp_t1 != 0) {
        goto block_31;
    }
    var_a4 = (s32) temp_a0_4 < 2;
    if (var_a4 != 0) {
block_31:
        var_a5_2 = (s32) (temp_a2 >> 8) >> arg1->unkB4;
        if (var_a5_2 == 0) {
            var_a5_2 = 1;
        }
    }
    temp_t3 = (s32) temp_a0_4 > 1;
    var_a0_2 = var_a5_2;
    if (temp_t3 != 0) {
        if (temp_t1 == 0) {
            var_a0_2 = var_a5_2;
            if (arg1->unkB5 != 0) {
                goto block_37;
            }
        } else {
block_37:
            var_t0 = temp_a7 >> 8;
            if (var_t0 != 0) {
                var_v1 = temp_a2 < 0x11;
                if (temp_t1 != 0) {
                    goto block_39;
                }
                goto block_67;
            }
            var_t0 = 1;
            if (temp_t1 == 0) {
                var_v1 = temp_a2 < 0x11;
block_67:
                var_a0_2 = var_a5_2;
                if (var_v1 != 0) {
                    goto block_40;
                }
            } else {
block_39:
                var_a0_2 = var_a5_2;
                if (temp_t2 != 0) {
block_40:
                    var_a6_2 = 1;
                    var_a0_2 = var_a5_2;
                }
            }
        }
    }
    var_a2 = var_t0 + var_a5_2;
    if (var_a5_2 != 0) {
        var_a2_2 = 1;
        if (temp_t3 == 0) {
            var_a2_2 = 1;
            if (temp_t1 == 0) {
                var_a2_2 = 1;
                if (arg1->unkB5 == 0) {
                    var_a2_2 = 0;
                }
            }
        }
        var_a0_2 = var_a2_2;
        var_a2 = var_t0 + var_a5_2;
    }
    temp_a2_3 = var_a2 + var_a0_2;
    if (temp_a2_3 != 0) {
        var_a4 = var_a1 - var_a6_2;
        arg2->unk38 = (s16) var_a4;
    }
    var_a7 = ((temp_a2_3 + var_a1) - var_a6_2) & 0xFFFF;
    arg2->unk30 = var_a7;
    temp_a0_5 = arg0 + 0x10000;
    temp_a5_3 = arg1->unkA0;
    temp_t0 = arg0->unk91FC->unk4D2;
    if ((s32) temp_t0 >= (var_a7 + temp_a5_3)) {
        sp0 = (s64) temp_a0_5;
        goto block_53;
    }
    var_a4 = (s32) temp_t0 < var_a1;
    if (temp_a5_3 != 0) {
        goto block_50;
    }
    if ((var_a4 == 0) && (temp_t1 == 0)) {
        arg1->unkB6 = 1;
        var_a7 = (u16) arg2->unk32;
        sp0 = (s64) temp_a0_5;
        arg2->unk30 = var_a7;
block_53:
        arg1->unkA0 = (u16) (var_a7 + (f32 *) arg1->unkA0);
        mgrTM_process_level(arg0, arg2, *arg3, (u32) var_a4, (f32 *) arg1->unkA0, (f32 *) var_a6_2, (s32) var_a7);
        sp0->unk-6E04->unk4B4 = 1;
        return;
    }
block_50:
    if (!(arg1->unkB3 & 1)) {
        __glSetError(0x501, (u8) var_a1, temp_a2_3, (u32) var_a4, temp_a5_3, var_a6_2, (u32) var_a7);
    }
    bzero(arg2 + 4, 0x18U);
}

void do_placement(__GLcontext *arg0, void **arg1, s32 arg2, s32 arg3, s32 arg4) {
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_a1;
    f32 *temp_v0_4;
    f32 *var_a2_2;
    s16 temp_a4;
    s16 temp_a5;
    s32 temp_a0_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_5;
    s8 temp_at;
    u32 temp_a3;
    u8 temp_a2;
    void *temp_a0;
    void *temp_s0;
    void *temp_v0_3;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    temp_s0 = arg1->unk0;
    if (var_a2 >= 0) {
        temp_v0 = arg0 + 0x10000;
        temp_a0 = arg0->unk91FC;
        if (temp_s0->unk4C == NULL) {
            temp_s0->unkB9 = 0;
            temp_s0->unkBA = 0U;
            if (arg0->unk924C != 0) {
                var_a3 = (s32) temp_s0->unkA6 < 2;
                if (var_a3 != 0) {
                    var_a4 = 1;
                    temp_s0->unkB9 = 1;
                }
            }
            temp_s0->unkB8 = 0;
            if (temp_s0->unkB7 != 0) {
                var_a2 = temp_a0->unk1E0;
                if (var_a2 != 0) {
                    temp_s0->unkC = var_a2;
                    temp_a0->unk1E0->unkC = temp_s0;
                    temp_s0->unkB8 = 1;
                    temp_s0->unkBA = (u8) temp_s0->unkC->unkBA;
                    temp_a0->unk1E0 = 0;
                    temp_a1 = (temp_s0->unkC + (arg1->unk3F * 4))->unk14->unk1C;
                    arg1->unk1C = temp_a1;
                    if (temp_a1->unk59 == 0) {
                        mgrTM_MakeResident(arg0, temp_a1, (f32 *)1, 0, NULL);
                        arg1->unk1C->unk55 = 0;
                    }
                    return;
                }
                sp10 = temp_v0;
                temp_a0->unk1E0 = (s32) temp_s0;
                goto block_20;
            }
block_20:
            sp10 = temp_v0;
            temp_v0_2 = sub_0dac0000(arg0, (f32 *)0x5C, (void *) var_a2, var_a3, var_a4);
            sp38 = temp_v0_2;
            sp8 = temp_v0_2;
            arg1->unk1C = (f32 *) temp_v0_2;
            bzero((void *) temp_v0_2, 0x5CU);
            if (sp10->unk-6DB4 != 0) {
                temp_at = (s32) temp_s0->unkA7 > 1;
                temp_v0_2->unk53 = temp_at;
                temp_a2 = temp_s0->unkA6;
                temp_v0_2->unk52 = temp_a2;
                temp_v0_2->unk44 = (s16) (((temp_a2 + 1) << 6) << temp_at);
                temp_v0_2->unk5A = temp_a2;
                temp_v0_2->unk53 = (s8) (temp_at + 1);
                temp_v0_2->unk46 = (s16) (0x20 << temp_s0->unkB4);
                if (temp_a2 == 2) {
                    temp_v0_2->unk5A = (u8) (temp_a2 + 1);
                }
            } else {
                temp_v0_2->unk5A = 0U;
                temp_v0_2->unk54 = 0;
                temp_v0_2->unk46 = 0x20;
                temp_v0_2->unk44 = 0x80;
                temp_v0_2->unk52 = 3U;
                temp_v0_2->unk51 = 1;
            }
            goto block_13;
        }
        temp_a0_2 = temp_s0->unkC;
        if (temp_a0_2 != 0) {
            temp_v0_3 = ((arg1->unk3F * 4) + temp_a0_2)->unk14;
            if (temp_v0_3 != NULL) {
                arg1->unk1C = (f32 *) temp_v0_3->unk1C;
                return;
            }
        }
        temp_v0_4 = arg0->imports.malloc(arg0, 0x5CU);
        arg1->unk1C = temp_v0_4;
        sp8 = (s64) temp_v0_4;
        memcpy(temp_v0_4, temp_s0->unk4C->unk1C, 0x5CU);
        sp8->unk58 = 0;
        sp8->unk59 = 0;
        sp8->unk55 = 0;
        sp8->unk3C = 0;
        sp8->unk40 = 0;
        sp8->unk38 = 0;
        sp8->unk34 = 0;
        sp8->unk30 = 0;
        sp8->unk2C = 0;
        sp8->unk1C = 0;
        sp8->unk18 = 0;
        sp8->unk10 = 0;
        sp8->unk14 = 0;
        sp8->unk8 = 0;
        sp8->unkC = 0;
block_13:
        sp8->unk4 = arg1;
        sp8->unk50 = (u8) temp_s0->unkB4;
        mgrTM_SaveData(arg0, NULL);
        sp8->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        M2C_ERROR(/* Read from unset register $v0 */)->unk18 = (s32) sp8;
        *M2C_ERROR(/* Read from unset register $v0 */) = M2C_ERROR(/* Read from unset register $v0 */);
        M2C_ERROR(/* Read from unset register $v0 */)->unkC = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        temp_a4 = arg1->unk30;
        sp8->unk4E = temp_a4;
        M2C_ERROR(/* Read from unset register $v0 */)->unk1C = (void *) (temp_s0 + 0x6C);
        M2C_ERROR(/* Read from unset register $v0 */)->unk26 = temp_a4;
        M2C_ERROR(/* Read from unset register $v0 */)->unk2C = (s16) ((s32) ((sp8->unk44 * sp8->unk46) << temp_s0->unkB7) >> 0xC);
        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
        M2C_ERROR(/* Read from unset register $v0 */)->unk2E = (s16) sp8->unk5A;
        mgrTM_process_level(arg0, (f32 *) sp8, (f32 *)1, temp_s0->unk4C != NULL, (f32 *) temp_a4);
        var_a2_2 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            sp8->unk54 = (u8) (*sp8->unk4)->unkBA;
        } else if (temp_s0->unk4C != NULL) {
            temp_a3 = temp_s0->unkA6 == 1;
            mgrTM_process_level(arg0, (f32 *) sp8, (temp_s0->unkBA << temp_a3) + 1, temp_a3);
            var_a2_2 = M2C_ERROR(/* Read from unset register $v0 */);
        } else {
            mgrTM_process_level(arg0, (f32 *) sp8, (f32 *)1);
            var_a2_2 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        sp0->unk2A = (s16) var_a2_2->unk2A;
        temp_a5 = sp8->unk4E;
        temp_v0_5 = (s64) (((var_a2_2->unk2A - temp_a5) + 1) << 0x30) >> 0x30;
        sp0->unk22 = (s16) temp_v0_5;
        sp8->unk57 = 0;
        sp8->unk4A = (s16) temp_v0_5;
        mgrTM_process_level(arg0, (f32 *) sp8, var_a2_2, 1U, NULL, (f32 *) temp_a5);
        mgrTM_DrawSetup(arg0, (f32 *) sp8, 1);
        mgrTM_process_level(arg0, (f32 *) sp8);
    }
}

void SearchAllSpaces(__GLcontext *arg0, f32 *arg1, s32 arg2, s32 arg3) {
    s64 sp18;
    s64 sp0;
    f32 *var_a6;
    s32 temp_a4;
    s32 temp_a5;
    s64 var_ra;
    u8 temp_t0;

    var_ra = saved_reg_ra;
    var_a6 = *arg1->unk4;
    if (arg2 == 1) {
        temp_t0 = var_a6->unkA6;
        if (arg3 != 0) {
            sp0 = (s64) var_a6;
            temp_a5 = temp_t0 == 1;
            mgrTM_process_level(arg0, arg1, (var_a6->unkBA << temp_a5) + 1, 1U, (f32 *)1, (f32 *) temp_a5, (s32) var_a6, (void **)1);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                temp_a4 = sp0->unkA6 == 1;
                mgrTM_process_level(arg0, arg1, (sp0->unkBA << temp_a4) + 1, 1U, (f32 *) temp_a4);
            }
        } else {
            if (temp_t0 != 0) {
                goto block_7;
            }
            sp0 = (s64) var_a6;
            mgrTM_process_level(arg0, arg1, (f32 *)2, 0U, var_a6, (f32 *) sub_0dac0000);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                mgrTM_process_level(arg0, arg1, (f32 *)4, 0U);
                var_a6 = (f32 *) sp0;
                var_ra = sp18;
block_7:
                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                    if ((s32) var_a6->unkA6 < 2) {
                        sp0 = (s64) var_a6;
                        sp18 = var_ra;
                        mgrTM_process_level(arg0, arg1, (f32 *)3, 0U);
                        var_a6 = (f32 *) sp0;
                    }
                    sp0 = (s64) var_a6;
                    if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) || (sp18 = var_ra, mgrTM_process_level(arg0, arg1, (f32 *)1, 1U), (M2C_ERROR(/* Read from unset register $v0 */) != 0))) {

                    } else {
                        if (sp0->unkA6 != 0) {
                            goto block_17;
                        }
                        mgrTM_process_level(arg0, arg1, (f32 *)2);
                        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                            mgrTM_process_level(arg0, arg1, (f32 *)4);
block_17:
                            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                                if ((s32) sp0->unkA6 < 2) {
                                    mgrTM_process_level(arg0, arg1, (f32 *)3);
                                }
                                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                                    mgrTM_process_level(arg0, arg1, (f32 *)1);
                                }
                            }
                        }
                    }
                }
            }
        }
    } else {
        mgrTM_process_level(arg0, arg1, NULL, 1U, var_a6, (f32 *)1);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            mgrTM_process_level(arg0, arg1, NULL);
        }
    }
}

void FindSwapLocation(void *arg0, void *arg1, s32 arg2, s32 arg3, void *arg6, void *arg7) {
    s64 sp0;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_t0;
    s32 temp_t1;
    s32 var_a2;
    s32 var_a3;
    void *temp_a0;
    void *var_a0;
    void *var_a4;
    void *var_a6;
    void *var_a7;
    void *var_at;
    void *var_v0;

    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a5 = arg2 != 0;
    temp_t1 = temp_a5 * 2;
    temp_a5_2 = temp_a5 * 4;
    temp_t0 = (arg2 * 0x30) + arg0->unk91FC;
    var_v0 = (temp_a5_2 + temp_t0)->unk10;
loop_4:
    var_a0 = var_v0;
loop_5:
    var_a4 = var_a0->unk18;
    var_at = temp_t1 + var_a0;
    if (var_a4 != NULL) {
        var_a7 = arg1->unk4;
        var_a6 = var_a4->unk4;
        var_a2 = var_a7->unk0;
        if (var_a6->unk0 == var_a2) {
            var_a3 = (s32) var_a6->unk3F < (s32) var_a7->unk3F;
            if (var_a3 != 0) {
                var_a4 = NULL;
                if ((var_a4 + temp_a5_2)->unk18 != 0) {
                    var_a4 = (void *)1;
                    goto block_3;
                }
                goto block_2;
            }
        }
        var_a4 = NULL;
block_2:
        var_at = temp_t1 + var_a0;
        if (0 != 0) {
            goto block_3;
        }
        goto block_11;
    }
block_11:
    var_a3 = (s32) (temp_t1 + arg1)->unk4C;
    var_a2 = (((temp_t1 + var_v0)->unk28 - var_at->unk20) + 1) < var_a3;
    if (var_a2 != 0) {
        var_a0 = (temp_a5_2 + var_a0)->unk10;
        if (var_a0 == temp_t0) {
block_3:
            var_v0 = (temp_a5_2 + var_a0)->unk10;
            if (temp_t0 != var_a0) {
                goto loop_4;
            }
            temp_a0 = &__iob + 0x20;
            sp0 = (s64) temp_a0;
            fprintf((s64) temp_a0, &sub_0dbe0000 - 0x3E00, var_a2, var_a3, var_a4, temp_a5_2, var_a6, var_a7);
            fflush(temp_a0);
            fflush(&__iob + 0x10);
            abort();
            return;
        }
        goto loop_5;
    }
}

void CheckClearance(void *arg0, void *arg1, s32 arg2, f32 *arg5) {
    __GLcontext *var_v0;
    f32 *var_a5;
    s16 temp_a4;
    s16 temp_a7_2;
    s16 var_t1;
    s32 temp_a6;
    s32 temp_t0;
    s32 var_a7;
    s8 *(*temp_a7)(__GLcontext *, s8 *);
    void *temp_t3;
    void *temp_t8;

    var_a5 = arg5;
    temp_t0 = arg2 * 4;
    temp_a6 = arg2 * 2;
    var_v0 = *arg1->unk0;
    temp_t8 = *arg1->unk4;
    var_t1 = (temp_a6 + var_v0)->unk24;
loop_1:
    var_v0 = (temp_t0 + var_v0)->unk4;
    temp_t3 = temp_a6 + var_v0;
    var_a7 = 0;
    if ((temp_t3->unk28 >= ((temp_a6 + arg0->unk91FC)->unk4D0 - (temp_a6 + temp_t8)->unk9C)) && ((arg2 + arg1)->unk56 == 0)) {
        var_a7 = 1;
    }
    if ((var_a7 != 0) || ((temp_a7 = var_v0->imports.getenv, (temp_a7 != NULL)) && (temp_a7 != arg1) && (((var_a5 = arg2 + temp_a7, ((temp_a7 + temp_t0)->unk18 != 0)) && (var_a5 = (f32 *) var_a5->unk56, (var_a5 == NULL))) || (temp_t8->unk6C < *var_v0->imports.atoi)))) {
        return;
    }
    temp_a4 = temp_t3->unk24;
    temp_a7_2 = (temp_a6 + arg1)->unk4C;
    var_t1 += temp_a4;
    if (var_t1 >= temp_a7_2) {
        if (temp_a7_2 < var_t1) {
            mgrTM_process_level(var_v0, var_t1 - temp_a7_2, (f32 *) arg2, (u32) temp_a4, var_a5, (f32 *) temp_a6, (s32) temp_a7_2);
        }
        return;
    }
    goto loop_1;
}

void FindOpenLocation(__GLcontext *arg0, __GLcontext *arg1, s32 arg2, s32 arg3, u8 arg4, s32 arg5) {
    __GLcontext *temp_a7;
    __GLcontext *var_v0;
    f32 *temp_a6;
    s16 temp_t1;
    s16 temp_t2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_t0;
    s32 temp_t3;
    s32 var_a5;
    u8 var_a4;

    var_a4 = arg4;
    var_a5 = arg5;
    temp_t0 = arg0->unk91FC;
    temp_a7 = (arg2 * 0x30) + temp_t0;
    var_v0 = temp_a7->unkF0;
    temp_a6 = temp_a7 + 0xF0;
    if (var_v0 != temp_a6) {
        temp_t3 = arg2 != 0;
        temp_s2 = temp_t3 * 2;
loop_3:
        if (*var_v0->imports.atoi < 0.0f) {
            var_a4 = arg1->unk5A;
            if ((s32) var_v0->unk2E >= (s32) var_a4) {
                temp_t2 = (temp_s2 + arg1)->unk4C;
                temp_t1 = (temp_s2 + var_v0)->unk24;
                var_a5 = temp_t1 < temp_t2;
                if (var_a5 == 0) {
                    if (temp_t2 < temp_t1) {
                        mgrTM_process_level(var_v0, temp_t1 - temp_t2, (f32 *) temp_t3, (u32) var_a4, (f32 *) var_a5, temp_a6, (s32) temp_a7);
                    }
                    goto block_13;
                }
            }
        }
        var_v0 = var_v0->imports.malloc;
        if (var_v0 != temp_a6) {
            goto loop_3;
        }
        goto block_8;
    }
block_8:
    if ((arg3 != 0) && (temp_s2_2 = (arg2 != 0) * 2, (((temp_s2_2 + temp_a7)->unk20 < (s32) (temp_t0 + temp_s2_2)->unk4D0) != 0))) {
        if (arg2 != 0) {
            mgrTM_RefreshDim(temp_a7, arg1, var_a4, var_a5, temp_a6, temp_a7);
        } else {
            __glMgrFreeTextureManager(arg0, temp_a7, arg1, var_a4, var_a5, temp_a6, temp_a7);
        }
        if ((temp_s2_2 + M2C_ERROR(/* Read from unset register $v0 */))->unk24 == (temp_s2_2 + arg1)->unk4C) {
block_13:
            if (arg2 != 0) {
                (*arg1->imports.calloc)->unkBA = (s8) ((s32) (arg2 - 1) >> (arg1->unk52 == 1));
            }
        }
    }
}

void FindUnusedLocation(void *arg0, void *arg1, s64 arg2, void *arg4) {
    s64 sp8;
    __GLcontext *temp_a1_2;
    __GLcontext *var_v0;
    s16 temp_t0;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_a6;
    s8 *(*temp_a1)(__GLcontext *, s8 *);
    void *temp_t9;
    void *var_a4;

    var_a4 = arg4;
    var_a6 = 0;
    temp_a3 = arg2 != 0;
    temp_a7 = temp_a3 * 2;
    temp_t1 = temp_a3 * 4;
    temp_t8 = arg0->unk91FC;
    temp_t3 = (arg2 * 0x30) + temp_t8;
    temp_t9 = *arg1->unk4;
    var_v0 = (temp_t1 + temp_t3)->unk4;
    temp_t8_2 = (temp_t8 + temp_a7)->unk4D0 - (temp_a7 + temp_t9)->unk9C;
    if ((temp_a7 + var_v0)->unk28 < temp_t8_2) {
        temp_t0 = (temp_a7 + arg1)->unk4C;
loop_2:
        if (((s32) var_v0->unk2E >= (s32) arg1->unk5A) && ((*var_v0->imports.atoi < temp_t9->unk6C) || ((temp_a1 = var_v0->imports.getenv, var_a4 = temp_a1 + temp_t1, (temp_a1 != NULL)) && (var_a4 = var_a4->unk18, (var_a4 == NULL))))) {
            var_a6 += (temp_a7 + var_v0)->unk24;
        } else {
            var_a6 = 0;
        }
        if (var_a6 < temp_t0) {
            temp_a1_2 = (temp_t1 + var_v0)->unk4;
            var_v0 = temp_a1_2;
            if ((temp_a1_2 == temp_t3) || (var_a4 = (void *) ((temp_a1_2 + temp_a7)->unk28 < temp_t8_2), (var_a4 == NULL))) {

            } else {
                goto loop_2;
            }
        } else {
            temp_a5 = temp_t0 < var_a6;
            if (temp_a5 != 0) {
                sp8 = arg2;
                mgrTM_process_level(var_v0, var_a6 - temp_t0, (f32 *) temp_a3, (u32) var_a4, (f32 *) temp_a5, (f32 *) var_a6, temp_a7);
            }
            if (arg2 != 0) {
                (*arg1->unk4)->unkBA = (s8) ((s32) (arg2 - 1) >> (arg1->unk52 == 1));
            }
        }
    }
}

void SplitDesc(__GLcontext *arg0, f32 *arg1, s32 arg2, s32 arg3) {
    s64 sp28;
    s32 sp4;
    s32 sp0;
    f32 *temp_v0;
    f32 *var_s0;
    s32 *temp_ra_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_at;
    s32 var_a0;
    s64 var_ra;
    u16 temp_ra;
    u16 temp_v0_2;
    void *temp_a0;
    void *temp_a2;
    void *temp_a3_3;
    void *temp_a7;
    void *temp_t0;

    var_ra = saved_reg_ra;
    var_s0 = arg1;
    temp_v0 = arg1->unk18;
    if ((temp_v0 != NULL) && (temp_v0->unk55 == 0)) {
        mgrTM_SaveData(arg0, temp_v0);
        var_ra = sp28;
    }
    temp_v0_2 = var_s0->unk2C;
    sp0 = arg2;
    sp4 = arg2;
    if (arg3 != 0) {
        sp28 = var_ra;
        sp0 = arg2 * temp_v0_2;
    } else {
        var_a0 = arg2 / (s32) temp_v0_2;
        M2C_TRAP_IF(temp_v0_2 == 0);
        if ((arg2 % (s32) temp_v0_2) != 0) {
            sp28 = var_ra;
            mgrTM_MakeResident(arg0, var_s0->unk18, var_s0, 0);
            temp_ra = M2C_ERROR(/* Read from unset register $v0 */)->unk2C;
            var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
            M2C_TRAP_IF(temp_ra == 0);
            var_a0 = arg2 / (s32) temp_ra;
        }
        sp28 = var_ra;
        sp4 = var_a0;
    }
    mgrTM_SaveData(arg0, NULL);
    M2C_ERROR(/* Read from unset register $v0 */)->unk18 = (s32) var_s0->unk18;
    M2C_ERROR(/* Read from unset register $v0 */)->unk1C = (s32) var_s0->unk1C;
    temp_a2 = var_s0 + 4;
    temp_a7 = M2C_ERROR(/* Read from unset register $v0 */) + 2;
    M2C_ERROR(/* Read from unset register $v0 */)->unk2C = (u16) var_s0->unk2C;
    temp_t0 = var_s0 + 2;
    M2C_ERROR(/* Read from unset register $v0 */)->unk2E = (u16) var_s0->unk2E;
    temp_a3 = sp4.unk0;
    temp_ra_2 = var_s0->unkC;
    temp_a0 = M2C_ERROR(/* Read from unset register $v0 */) + 4;
    M2C_ERROR(/* Read from unset register $v0 */)->unkC = temp_ra_2;
    *temp_ra_2 = M2C_ERROR(/* Read from unset register $v0 */);
    *M2C_ERROR(/* Read from unset register $v0 */) = var_s0;
    var_s0->unkC = (s32 *) M2C_ERROR(/* Read from unset register $v0 */);
    temp_a7->unk24 = (s16) (temp_t0->unk24 - temp_a3);
    temp_a7->unk28 = (s16) (temp_t0->unk28 - temp_a3);
    temp_t0->unk24 = (s16) temp_a3;
    temp_a7->unk20 = (s16) temp_t0->unk20;
    temp_t0->unk20 = (s16) (temp_t0->unk20 + temp_a7->unk24);
    temp_a3_2 = temp_a2->unk10;
    temp_a0->unk10 = temp_a3_2;
    if (temp_a2->unk4 != 0) {
        (temp_a3_2 + 4)->unk4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        temp_a0->unk4 = var_s0;
        temp_a2->unk10 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    } else {
        temp_a0->unk4 = NULL;
    }
    temp_at = sp4.unk-4;
    temp_a7->unk26 = (s16) (temp_t0->unk26 - temp_at);
    temp_a7->unk22 = (s16) (temp_t0->unk22 - temp_at);
    temp_t0->unk22 = (s16) temp_at;
    temp_a7->unk1E = (s16) temp_t0->unk1E;
    temp_t0->unk1E = (s16) (temp_t0->unk1E + temp_a7->unk22);
    temp_a3_3 = temp_a2->unkC;
    temp_a0->unkC = temp_a3_3;
    if (var_s0->unk4 != 0) {
        temp_a3_3->unk4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        M2C_ERROR(/* Read from unset register $v0 */)->unk4 = var_s0;
        temp_a2->unkC = (void *) M2C_ERROR(/* Read from unset register $v0 */);
    } else {
        M2C_ERROR(/* Read from unset register $v0 */)->unk4 = NULL;
    }
}

void CombineDesc(f32 *arg1, __GLcontext *arg2, s32 arg3) {
    f32 **temp_v0;
    f32 *var_a4;
    s16 var_a5;
    void *(*temp_a6)(__GLcontext *, u32);
    void *(*temp_v1)(__GLcontext *, u32, u32);

    if (((arg1->unk8 == NULL) == (arg2->imports.realloc == NULL)) && ((arg1->unk4 == NULL) == (arg2->imports.calloc == NULL)) && (arg1->unk2E == arg2->unk2E) && (arg1->unk18 == arg2->imports.getenv) && (arg1->unk1C == arg2->imports.atoi)) {
        temp_a6 = arg2->imports.malloc;
        arg1->unk0 = temp_a6;
        temp_a6->unkC = arg1;
        arg1->unk28 = (s16) arg2->unk28;
        arg1->unk24 = (s16) (arg1->unk24 + arg2->unk24);
        if (arg1->unk4 != NULL) {
            temp_v1 = arg2->imports.calloc;
            arg1->unk4 = temp_v1;
            temp_v1->unk10 = arg1;
        }
        arg1->unk26 = (s16) (arg1->unk26 + arg2->unk26);
        var_a5 = arg2->unk2A;
        arg1->unk2A = var_a5;
        var_a4 = arg1->unk8;
        if (var_a4 != NULL) {
            var_a5 = (s16) (arg2 + 4)->unk4;
            arg1->unk8 = (f32 *) var_a5;
            var_a4 = var_a5 + 4;
            var_a4->unk10 = arg1;
        }
        temp_v0 = arg1->unk18;
        if ((temp_v0 != NULL) && (*temp_v0 == arg2)) {
            *temp_v0 = arg1;
        }
        if (arg2 == arg3) {

        }
        mgrTM_SaveData(arg2, arg1, var_a4, (f32 *) var_a5, arg1, arg2);
    }
}

void EstablishLocation(s64 arg0, void *arg1, f32 *arg2, u32 arg3, s64 arg4) {
    s64 sp40;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    f32 *temp_a1;
    f32 *temp_a4;
    f32 *temp_a5;
    f32 *temp_s0;
    f32 *temp_s0_3;
    f32 *temp_s6_2;
    f32 *temp_s6_3;
    f32 *temp_v0_3;
    f32 *var_s0;
    f32 *var_s1;
    f32 *var_s2;
    s16 temp_a7_2;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_s5;
    s32 var_s3;
    s64 temp_a7;
    s64 var_ra;
    void *temp_at;
    void *temp_s0_2;
    void *temp_s6;
    void *temp_s7;

    var_ra = saved_reg_ra;
    sp10 = arg0;
    var_s2 = arg2;
    temp_s0 = arg1->unk0;
    temp_a7 = arg3 * 2;
    sp8 = temp_a7;
    temp_a7_2 = (temp_a7 + arg2)->unk28;
    temp_v0 = (temp_a7 + temp_s0)->unk28;
    sp40 = arg4;
    if (temp_v0 >= temp_a7_2) {

    } else {
        mgrTM_process_level((__GLcontext *) sp10, var_s2, temp_a7_2 - temp_v0, arg3, (f32 *) temp_a7_2);
        var_s2 = M2C_ERROR(/* Read from unset register $v0 */);
        var_ra = sp18;
    }
    sp18 = var_ra;
    temp_s0_2 = *temp_s0;
    var_s3 = 0;
    temp_s5 = arg3 * 4;
    var_s1 = (temp_s5 + var_s2)->unk4;
    temp_s7 = sp8 + arg1;
loop_5:
    temp_s6 = sp8 + var_s2;
    var_s3 += temp_s6->unk24;
    if (arg3 == 1) {
        temp_a1 = var_s2->unk18;
        if ((temp_a1 != NULL) && (temp_a1->unk55 == 0)) {
            mgrTM_SaveData((__GLcontext *) sp10, temp_a1);
        }
    }
    if (temp_s7->unk4C < var_s3) {
        mgrTM_process_level((__GLcontext *) sp10, var_s2, (temp_s6->unk28 - (sp8 + temp_s0_2)->unk20) + 1, arg3);
        var_s2 = (M2C_ERROR(/* Read from unset register $v0 */) + temp_s5)->unk4;
    }
    temp_s6_2 = &var_s2[arg3];
    if (var_s2->unk18 == temp_s0_2->unk18) {
        var_s2 = temp_s6_2->unk10;
    } else {
        var_s2 = temp_s6_2->unk10;
        temp_s6_2->unk4 = 0;
        temp_s6_3 = &var_s2[arg3];
        mgrTM_process_level((__GLcontext *) sp10, temp_s6_3->unk4, NULL, arg3);
        temp_s6_3->unk4 = var_s1;
        var_s1[arg3].unk10 = var_s2;
    }
    if (var_s3 < temp_s7->unk4C) {
        goto loop_5;
    }
    var_s0 = arg1->unk0;
    if (sp40 == 0) {
        if (arg3 == 1) {
            mgrTM_VidTexWait(sp10, NULL, 0);
        }
    }
loop_21:
    var_s0->unk2E = (s16) arg1->unk5A;
    if (sp40 == 0) {
        if (arg3 == 1) {
            if ((var_s0->unk8 == 0) && (arg1->unk55 != 0)) {
                temp_at = sp10->unk91FC;
                temp_at->unk4D6 = (u16) (var_s0->unk26 + temp_at->unk4D6);
                temp_v0_2 = var_s0->unk26;
                if (temp_v0_2 < 0x81) {
                    mgrTM_SaveData((__GLcontext *) sp10, var_s0);
                } else {
                    mgrTM_process_level((__GLcontext *) sp10, var_s0, temp_v0_2 - 0x80, 1U);
                    temp_s0_3 = M2C_ERROR(/* Read from unset register $v0 */);
                    mgrTM_SaveData((__GLcontext *) sp10, M2C_ERROR(/* Read from unset register $v0 */));
                    mgrTM_SaveData((__GLcontext *) sp10, *temp_s0_3);
                    mgrTM_process_level((__GLcontext *) sp10, temp_s0_3, *temp_s0_3, (u32) temp_s0_3);
                    var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
                }
            }
        } else if (arg1->unk58 == 0) {
            __glMgrFreeTextureManager((__GLcontext *) sp10, sp10, var_s0, var_s1);
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        }
    }
    temp_a5 = arg1->unk0;
    temp_a4 = temp_s5 + var_s0;
    temp_v0_3 = &var_s1[arg3];
    if (temp_a5 == var_s0) {
        temp_v0_3->unk10 = var_s0;
        var_s0[arg3].unk4 = var_s1;
        var_s1 = var_s0;
    } else {
        temp_v0_3->unk10 = var_s0;
        temp_a4->unk4 = var_s1;
        mgrTM_process_level((__GLcontext *) sp10, var_s0, var_s1, (u32) var_s0, temp_a4, temp_a5);
        var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    }
    var_s0 = var_s1->unkC;
    if (arg1->unk0 != var_s0) {
        goto loop_21;
    }
    var_s2[arg3].unk4 = var_s1;
    var_s1[arg3].unk10 = var_s2;
    (arg3 + arg1)->unk58 = 1;
}

void space_assert(__GLcontext *arg0, f32 *arg1, f32 **arg2, s32 *arg3, u16 arg4, s32 arg5, s32 arg6) {
    s64 sp40;
    f32 *temp_a1;
    f32 *temp_a2;
    f32 *temp_a4;
    f32 *var_a4;
    f32 *var_t1;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a5;
    s32 temp_v0;
    s32 var_s5;
    s64 var_ra;
    u16 var_s2;
    void *temp_a0;

    var_ra = saved_reg_ra;
    var_t1 = arg1;
    var_s2 = arg4;
    unksp18 = 1;
    if (arg6 != 0) {
        goto block_1;
    }
    temp_a0 = var_t1->unk18;
    if (temp_a0 != NULL) {
        var_s5 = var_t1->unk1C;
        if (temp_a0->unk1C != 0) {
            var_s2 = var_t1->unk2E;
        }
    } else {
block_1:
        var_s5 = arg0->unk91FC + (arg5 * 4) + 0x4A8;
    }
    if ((arg6 != 0) && (var_t1->unk18 != NULL)) {
        goto block_4;
    }
    if (var_t1->unk2E == var_s2) {
        if (var_t1->unk1C != var_s5) {
            goto block_4;
        }
    } else {
block_4:
        temp_a4 = *arg2;
        unksp28 = 1;
        if (var_t1->unk22 == temp_a4) {
            unksp28 = 0;
            var_a4 = sub_0dac0000 - 0x6A08;
        } else {
            mgrTM_process_level(arg0, var_t1, (var_t1->unk2A - temp_a4) + 1, 1U, temp_a4);
            var_t1 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
            temp_a0_2 = var_t1->unk22;
            var_ra = sp40;
            var_a4 = sub_0dac0000 - 0x6A08;
            if ((s32) *arg2 < temp_a0_2) {
                *arg2 = (f32 *) temp_a0_2;
            }
        }
        temp_v0 = *arg3;
        temp_a5 = var_t1->unk2A;
        if (temp_a5 == temp_v0) {
            unksp18 = 0;
        } else {
            sp40 = var_ra;
            mgrTM_process_level(arg0, var_t1, temp_a5 - temp_v0, 1U, var_a4, (f32 *) temp_a5);
            temp_a0_3 = M2C_ERROR(/* Read from unset register $v0 */)->unk2A;
            var_t1 = M2C_ERROR(/* Read from unset register $v0 */);
            if (temp_a0_3 < *arg3) {
                *arg3 = (s32) temp_a0_3;
            }
        }
        if ((arg6 != 0) && (var_t1->unk18 != 0)) {
            sp40 = var_ra;
            mgrTM_MakeResident(arg0, var_t1, var_t1, 1);
            var_t1 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        var_t1->unk1C = var_s5;
        var_t1->unk2E = var_s2;
        if (arg6 != 0) {
            goto block_11;
        }
        if (unksp28 != 0) {

        } else {
block_11:
            temp_a1 = var_t1->unk14;
            if (temp_a1->unk26 != 0) {
                sp40 = var_ra;
                mgrTM_process_level(arg0, temp_a1, var_t1, (u32) var_t1);
                var_t1 = M2C_ERROR(/* Read from unset register $v0 */);
            }
        }
        if (arg6 != 0) {
            goto block_14;
        }
        if (unksp18 == 0) {
block_14:
            temp_a2 = var_t1->unk8;
            if (temp_a2->unk26 != 0) {
                sp40 = var_ra;
                mgrTM_process_level(arg0, var_t1, temp_a2, (u32) var_t1, sub_0dac0000 - 0x67E8);
            }
        }
    }
}

void UpdateSpaces(__GLcontext *arg0, void *arg1) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    void *sp24;
    void *sp20;
    s32 sp1C;
    void *sp18;
    void *sp14;
    void *sp10;
    void *spC;
    f32 *sp8;
    s32 sp4;
    s32 sp0;
    f32 *temp_v0;
    f32 *var_a0;
    f32 *var_a0_4;
    f32 *var_a4_2;
    f32 *var_a4_3;
    f32 *var_s4;
    f32 *var_s6;
    f32 *var_s7;
    f32 *var_v0;
    f32 *var_v0_2;
    f32 *var_v0_3;
    f32 *var_v0_4;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a0_4;
    s16 temp_a0_5;
    s16 temp_a0_6;
    s16 temp_a0_7;
    s16 temp_a0_8;
    s16 temp_s8;
    s16 var_a0_5;
    s16 var_a0_6;
    s16 var_a0_7;
    s16 var_a0_8;
    s16 var_a4;
    s32 temp_v0_5;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_at;
    s32 var_v1;
    s32 var_v1_2;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_a1;
    u16 var_a6;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s1;
    void *var_s1_2;
    void *var_s2;
    void *var_s3;
    void *var_v0_5;
    void *var_v0_6;
    void *var_v0_7;

    var_a4 = 0;
    var_s3 = arg1;
    sp78 = arg0 + 0x10000;
    temp_s8 = arg1->unk4A;
    var_a6 = arg0->unk91FC->unk4D2;
    sp0 = 0;
    sp88 = (arg1->unk4E + temp_s8) - 1;
    sp4 = (s32) var_a6;
    spB0 = (s64) var_a6;
    temp_v0 = sp78->unk-6E04->unk38;
    sp8.unk0 = temp_v0;
    sp18.unk0 = temp_v0->unk18;
    if (temp_v0->unk2A < (s32) var_a6) {
        var_a6 = (u16) temp_v0->unk2A;
        sp4 = (s32) var_a6;
    }
    temp_a0 = temp_v0->unk22;
    if (temp_a0 > 0) {
        var_a4 = temp_a0;
        sp0 = (s32) temp_a0;
    }
    temp_v0_2 = (sp78->unk-6E04 + 0x30)->unk38;
    sp8.unk4 = temp_v0_2;
    sp18.unk4 = (s32) temp_v0_2->unk18;
    if (temp_v0_2->unk2A < (s32) var_a6) {
        var_a6 = (u16) temp_v0_2->unk2A;
        sp4 = (s32) var_a6;
    }
    temp_a0_2 = temp_v0_2->unk22;
    if (var_a4 < temp_a0_2) {
        var_a4 = temp_a0_2;
        sp0 = (s32) temp_a0_2;
    }
    temp_v0_3 = (sp78->unk-6E04 + 0x60)->unk38;
    sp8.unk8 = temp_v0_3;
    sp18.unk8 = (s32) temp_v0_3->unk18;
    if (temp_v0_3->unk2A < (s32) var_a6) {
        var_a6 = (u16) temp_v0_3->unk2A;
        sp4 = (s32) var_a6;
    }
    temp_a0_3 = temp_v0_3->unk22;
    if (var_a4 < temp_a0_3) {
        var_a4 = temp_a0_3;
        sp0 = (s32) temp_a0_3;
    }
    temp_v0_4 = (sp78->unk-6E04 + 0x90)->unk38;
    sp8.unkC = temp_v0_4;
    sp18.unkC = (s32) temp_v0_4->unk18;
    if (temp_v0_4->unk2A < (s32) var_a6) {
        var_a6 = (u16) temp_v0_4->unk2A;
        sp4 = (s32) var_a6;
    }
    temp_a0_4 = temp_v0_4->unk22;
    if (var_a4 < temp_a0_4) {
        var_a4 = temp_a0_4;
        sp0 = (s32) temp_a0_4;
    }
    var_s4 = sp8;
    if (var_s4->unk26 == 0) {
        if ((spC->unk26 == 0) && (sp10->unk26 == 0)) {
            if (sp14->unk26 != 0) {
                goto block_19;
            }
        } else {
            goto block_19;
        }
    } else {
block_19:
loop_35:
        var_at = var_a4 < temp_s8;
loop_36:
        if (var_at != 0) {
            goto block_37;
        }
        var_a6_2 = 1;
        var_v0 = (f32 *)1;
        if (sp88 >= var_a4) {
            var_s1 = sp18;
            if (var_s3->unk59 == 0) {
                var_s3 = sp78->unk-6E04 + 0x41C;
            }
            if ((var_s1 == NULL) || ((s32) var_s1->unk52 <= 0)) {
                var_v0 = NULL;
            }
            var_s6 = var_v0;
            if ((var_s1 == NULL) || (var_a0 = (f32 *)1, (((s32) var_s1->unk52 < 2) != 0))) {
                var_a0 = NULL;
            }
            var_s7 = var_a0;
            if ((var_v0 == NULL) || (sp1C != var_s3)) {
                var_s2 = sp20;
                if ((var_a0 == NULL) || ((var_s3 != var_s2) && (sp24 != var_s3))) {
                    var_a6_2 = 0;
                }
            } else {
                var_s2 = sp20;
            }
            if (var_a6_2 != 0) {
                mgrTM_process_level(arg0, var_s4, sp, (u32) &sp4, (f32 *)5, NULL, var_a6_2, &sp18);
                var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                var_s1 = M2C_ERROR(/* Read from unset register $v0 */)->unk18;
                sp8 = M2C_ERROR(/* Read from unset register $v0 */);
                sp18 = var_s1;
                if ((var_s1 == NULL) || (var_v0_2 = (f32 *)1, ((s32) var_s1->unk52 <= 0))) {
                    var_v0_2 = NULL;
                }
                var_s6 = var_v0_2;
                if (var_s1 != NULL) {
                    var_v0_3 = NULL;
                    if ((s32) var_s1->unk52 >= 2) {
                        var_v0_3 = (f32 *)1;
                    }
                } else {
                    var_v0_3 = NULL;
                }
                var_s7 = var_v0_3;
            }
            var_a0_2 = 0;
            if ((var_s2 != NULL) && ((s32) var_s2->unk52 > 0)) {
                var_a0_2 = 1;
            }
            spA8 = var_a0_2;
            if (var_s6 != NULL) {
                var_a6_3 = 0;
                if (var_s3 == var_s1) {
                    var_a6_3 = 1;
                }
            } else {
                var_a6_3 = 0;
            }
            sp98 = (s64) spC;
            if (var_a6_3 != 0) {
                spB8 = var_a0_2;
                mgrTM_process_level(arg0, (f32 *) sp98, sp, (u32) &sp4, (f32 *)5, NULL, var_a6_3);
                sp98 = M2C_ERROR(/* Read from unset register $v0 */);
                temp_v0_5 = M2C_ERROR(/* Read from unset register $v0 */)->unk18;
                var_a0_2 = spB8;
                spC = M2C_ERROR(/* Read from unset register $v0 */);
                sp90 = (s64) temp_v0_5;
                sp1C = temp_v0_5;
            } else {
                sp90 = (s64) sp1C;
            }
            var_a6_4 = 1;
            if ((var_s7 == NULL) || (var_s3 != var_s1)) {
                if (var_a0_2 == 0) {
                    var_a6_4 = 0;
                } else if (sp24 != var_s3) {
                    var_a6_4 = 0;
                }
            }
            sp80 = (s64) sp10;
            if (var_a6_4 != 0) {
                mgrTM_process_level(arg0, (f32 *) sp80, sp, (u32) &sp4, (f32 *)5, NULL, var_a6_4);
                var_s2 = M2C_ERROR(/* Read from unset register $v0 */)->unk18;
                sp80 = M2C_ERROR(/* Read from unset register $v0 */);
                sp10 = M2C_ERROR(/* Read from unset register $v0 */);
                sp20 = var_s2;
                if ((var_s2 == NULL) || (var_a0_3 = 1, ((s32) var_s2->unk52 <= 0))) {
                    var_a0_3 = 0;
                }
                spA8 = var_a0_3;
            }
            var_a6_5 = 1;
            if ((var_s7 == NULL) || (var_s3 != var_s1)) {
                if (spA8 == 0) {
                    var_a6_5 = 0;
                } else if (var_s3 != var_s2) {
                    var_a6_5 = 0;
                }
            }
            var_s1_2 = sp24;
            spA0 = (s64) sp14;
            if (var_a6_5 != 0) {
                mgrTM_process_level(arg0, (f32 *) spA0, sp, (u32) &sp4, (f32 *)5, NULL, var_a6_5);
                spA0 = M2C_ERROR(/* Read from unset register $v0 */);
                var_s1_2 = M2C_ERROR(/* Read from unset register $v0 */)->unk18;
                sp14 = M2C_ERROR(/* Read from unset register $v0 */);
                sp24 = var_s1_2;
            }
            var_a0_4 = (f32 *)1;
            if (((var_s2 == NULL) || (var_s2->unk1C == 0)) && ((var_s1_2 == NULL) || (var_s1_2->unk1C == 0))) {
                var_a0_4 = (f32 *)3;
            }
            var_a4_2 = var_a0_4;
            if (sp90 != 0) {
                if (sp90->unk1C != 0) {
                    var_a4_2 = NULL;
                }
            }
            mgrTM_process_level(arg0, var_s4, sp, (u32) &sp4, var_a4_2, NULL, 0);
            sp8 = M2C_ERROR(/* Read from unset register $v0 */);
            mgrTM_process_level(arg0, (f32 *) sp98, sp, (u32) &sp4, NULL, var_s6, 0);
            spC = M2C_ERROR(/* Read from unset register $v0 */);
            if ((var_s1_2 != NULL) && (var_a4_3 = NULL, (var_s1_2->unk1C != 0))) {

            } else {
                var_a4_3 = (f32 *)1;
            }
            mgrTM_process_level(arg0, (f32 *) sp80, sp, (u32) &sp4, var_a4_3, var_s7, 0);
            sp10 = M2C_ERROR(/* Read from unset register $v0 */);
            mgrTM_process_level(arg0, (f32 *) spA0, sp, (u32) &sp4, NULL, (f32 *) ((s32) var_s6 | spA8), 0);
            var_a4 = (s16) sp0;
            var_a6 = (u16) sp4;
            sp14 = M2C_ERROR(/* Read from unset register $v0 */);
block_37:
            var_a1 = spB0;
            var_v0_4 = sp8.unk0;
            var_a0_5 = var_v0_4->unk2A;
            var_a2 = var_a0_5 < var_a1;
            if (var_a0_5 == var_a6) {
                var_v0_4 = var_v0_4->unk8;
                var_a0_5 = var_v0_4->unk2A;
                sp8.unk0 = var_v0_4;
                sp18.unk0 = var_v0_4->unk18;
                var_a2 = var_a0_5 < var_a1;
            }
            if (var_a2 != 0) {
                var_a1 = (s64) var_a0_5;
            }
            temp_a0_5 = var_v0_4->unk22;
            if (var_a4 < temp_a0_5) {
                var_a4 = temp_a0_5;
                sp0 = (s32) temp_a0_5;
            }
            var_v0_5 = sp8.unk4;
            var_a0_6 = var_v0_5->unk2A;
            var_v1 = var_a0_6 < var_a1;
            if (var_a0_6 == var_a6) {
                var_v0_5 = var_v0_5->unk8;
                var_a0_6 = var_v0_5->unk2A;
                sp8.unk4 = var_v0_5;
                sp18.unk4 = (s32) var_v0_5->unk18;
                var_v1 = var_a0_6 < var_a1;
            }
            if (var_v1 != 0) {
                var_a1 = (s64) var_a0_6;
            }
            temp_a0_6 = var_v0_5->unk22;
            if (var_a4 < temp_a0_6) {
                var_a4 = temp_a0_6;
                sp0 = (s32) temp_a0_6;
            }
            var_v0_6 = sp8.unk8;
            var_a0_7 = var_v0_6->unk2A;
            var_a2_2 = var_a0_7 < var_a1;
            if (var_a0_7 == var_a6) {
                var_v0_6 = var_v0_6->unk8;
                var_a0_7 = var_v0_6->unk2A;
                sp8.unk8 = var_v0_6;
                sp18.unk8 = (s32) var_v0_6->unk18;
                var_a2_2 = var_a0_7 < var_a1;
            }
            if (var_a2_2 != 0) {
                var_a1 = (s64) var_a0_7;
            }
            temp_a0_7 = var_v0_6->unk22;
            if (var_a4 < temp_a0_7) {
                var_a4 = temp_a0_7;
                sp0 = (s32) temp_a0_7;
            }
            var_v0_7 = sp8.unkC;
            var_a0_8 = var_v0_7->unk2A;
            var_v1_2 = var_a0_8 < var_a1;
            if (var_a0_8 == var_a6) {
                var_v0_7 = var_v0_7->unk8;
                var_a0_8 = var_v0_7->unk2A;
                sp8.unkC = var_v0_7;
                sp18.unkC = (s32) var_v0_7->unk18;
                var_v1_2 = var_a0_8 < var_a1;
            }
            if (var_v1_2 != 0) {
                var_a1 = (s64) var_a0_8;
            }
            temp_a0_8 = var_v0_7->unk22;
            var_a6 = (u16) var_a1;
            var_s4 = sp8;
            if (var_a4 < temp_a0_8) {
                var_a4 = temp_a0_8;
                sp0 = (s32) temp_a0_8;
            }
            sp4 = (s32) var_a1;
            if (var_s4->unk26 != 0) {
                goto loop_35;
            }
            var_at = var_a4 < temp_s8;
            if (spC->unk26 == 0) {
                var_at = var_a4 < temp_s8;
                if (sp10->unk26 == 0) {
                    var_at = var_a4 < temp_s8;
                    if (sp14->unk26 == 0) {
                        return;
                    }
                }
            }
            goto loop_36;
        }
    }
}

void ReturnDesc(__GLcontext *arg0, f32 *arg1, f32 *arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    f32 *temp_a4;
    f32 *temp_a5;
    f32 *temp_a7;
    f32 *var_s0;
    f32 *var_s1;
    s64 var_ra;
    s64 var_v0;
    void *temp_a0;
    void *temp_a5_2;
    void *temp_s2;
    void *var_at;

    var_ra = saved_reg_ra;
    var_v0 = arg3;
    temp_s2 = arg1->unk18;
    var_s0 = arg1;
    var_s1 = arg2;
    if (temp_s2 == NULL) {
        temp_a5 = var_s0->unk0;
        temp_a4 = var_s0->unkC;
        temp_a5->unkC = temp_a4;
        *var_s0->unkC = var_s0->unk0;
        if (var_s0 == var_s1) {

        }
        mgrTM_SaveData(arg0, var_s0, temp_a4, temp_a5);
        return;
    }
    if (var_v0 != 1) {
        sp28 = var_v0;
        __glMgrFreeTextureManager(arg0, arg0, var_s0);
        var_v0 = sp28;
        var_ra = sp20;
        goto block_11;
    }
    var_s0->unk2E = (s16) temp_s2->unk5A;
    var_at = var_v0 + temp_s2;
    if (temp_s2->unk59 != 0) {
        temp_a5_2 = *temp_s2->unk4;
        temp_a0 = temp_a5_2->unkC;
        temp_a5_2->unkC1 = 0;
        if (temp_a0 != NULL) {
            temp_a0->unkC1 = 0;
        }
block_11:
        var_at = var_v0 + temp_s2;
    }
    var_at->unk58 = 0;
    temp_a7 = var_s0->unkC;
    if (var_s1 == temp_a7) {
        var_s1 = var_s0;
    }
    if (temp_s2->unk0 != temp_a7) {
        sp20 = var_ra;
        mgrTM_process_level(arg0, temp_a7, var_s0, (u32) var_s0);
        var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    }
    if (var_s0 == var_s1) {

    }
    if (temp_s2->unk0 != var_s0) {
        sp20 = var_ra;
        mgrTM_process_level(arg0, var_s0, (bitwise f32 *) *var_s0, (u32) var_s0);
    }
}

void mgrTM_MakeResident(__GLcontext *arg0, f32 *arg1, s64 arg2, u32 arg3, f32 *arg4) {
    s64 sp60;
    s64 sp58;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_a1_3;
    f32 *var_s4;
    f32 *var_v0_2;
    s16 temp_a0;
    s32 temp_a1_2;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_13;
    s32 temp_a2_14;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s6_3;
    s32 temp_s6_4;
    s32 temp_v0_2;
    s64 var_ra;
    u32 temp_a3;
    u8 temp_a1;
    u8 temp_a4;
    u8 temp_a5;
    u8 temp_a7;
    void *temp_a0_10;
    void *temp_a0_11;
    void *temp_a0_12;
    void *temp_a0_13;
    void *temp_a0_14;
    void *temp_a0_15;
    void *temp_a0_16;
    void *temp_a0_17;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a0_9;
    void *temp_a1_6;
    void *temp_s1;
    void *temp_s6_2;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *var_a5;
    void *var_v0;
    void *var_v0_3;

    var_ra = saved_reg_ra;
    sp8 = 0;
    sp18 = arg2;
    temp_s1 = *arg1->unk4;
    if (arg1->unk55 != 0) {
        if (arg2 != 1) {

        } else if (arg4 == NULL) {
            if (arg1->unk58 == 0) {
                .L0daba8c0(arg0, arg1, 0, 0, arg4, 1);
            }
            mgrTM_DrawSetup(arg0, arg1, 0);
            var_ra = sp58;
        }
        temp_s5 = arg2 * 4;
        if (((*arg1->unk0 + temp_s5)->unk4 != 0) && ((arg3 == 0) || (arg1->unk54 == temp_s1->unkBA)) && (sp58 = var_ra, mgrTM_process_level(arg0, arg1, (f32 *) arg2), var_s4 = M2C_ERROR(/* Read from unset register $v0 */), (M2C_ERROR(/* Read from unset register $v0 */) != 0))) {
            if (arg2 == 1) {
                temp_s1->unkBA = (u8) arg1->unk54;
            }
        } else if (((arg1[arg2].unk18 == 0) || ((arg0->unk91FC + temp_s5)->unk4B0 != 0)) && (sp58 = var_ra, mgrTM_process_level(arg0, arg1, (f32 *) arg2, arg3), var_s4 = M2C_ERROR(/* Read from unset register $v0 */), (M2C_ERROR(/* Read from unset register $v0 */) != 0))) {
            temp_s6 = arg2 * 2;
            temp_a0 = ((bitwise s32) arg1->unk0 + temp_s6)->unk28;
            if (((M2C_ERROR(/* Read from unset register $v0 */) + temp_s6)->unk28 != temp_a0) || (arg1->unk54 != arg1->unk4->unk0->unkBA)) {
                if ((arg2 + arg1)->unk56 != 0) {
                    (temp_s6 + temp_s1)->unk9C = (s16) (((arg0->unk91FC + temp_s6)->unk4D0 - temp_a0) - 1);
                    temp_a1 = arg1->unk4->unk3F;
                    if ((s32) temp_a1 < 0xD) {
                        var_v0 = (temp_a1 * 4) + temp_s1;
loop_75:
                        temp_a0_2 = var_v0->unk14;
                        var_v0 += 4;
                        if (temp_a0_2 != NULL) {
                            temp_a1_2 = temp_a0_2->unk1C;
                            if (temp_a1_2 != 0) {
                                (arg2 + temp_a1_2)->unk56 = 0;
                                if ((temp_s1 + 0x34) != var_v0) {
                                    goto loop_75;
                                }
                            }
                        }
                    }
                }
                mgrTM_MakeResident(arg0, arg1, var_s4, arg2);
                var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                mgrTM_MakeResident(arg0, arg1, (f32 *) (M2C_ERROR(/* Read from unset register $v0 */) + temp_s6)->unk28, arg2);
                if (arg2 != 0) {
                    arg1->unk54 = (u8) arg1->unk4->unk0->unkBA;
                }
            }
        } else {
            temp_v0 = arg2 + arg1;
            temp_s6_2 = arg0 + 0x10000;
            if (temp_v0->unk56 != 0) {
                (arg0->unk91FC + temp_s5)->unk4C0 = 1;
                if (arg2 == 1) {
                    sp18 = (arg1->unk54 << (arg1->unk52 == 1)) + 1;
                }
                temp_a1_3 = (sp18 * 0x30) + arg0->unk91FC;
                var_v0_2 = (temp_s5 + temp_a1_3)->unk10;
                sp58 = var_ra;
                var_s4 = temp_a1_3;
                if (var_v0_2 != temp_a1_3) {
                    temp_s6_3 = arg2 * 2;
                    var_a5 = temp_s6_3 + var_v0_2;
loop_84:
                    var_s4 = var_v0_2;
                    if (((bitwise s32) arg1->unk0 + temp_s6_3)->unk28 < var_a5->unk20) {
                        var_v0_2 = var_s4[arg2].unk10;
                        var_a5 = temp_s6_3 + var_v0_2;
                        if (var_v0_2 != temp_a1_3) {
                            goto loop_84;
                        }
                    }
                    sp58 = var_ra;
                }
            } else {
                if (arg2 != 0) {
                    sp58 = var_ra;
                    sp0 = (s64) temp_v0;
                    temp_a7 = temp_s1->unkBA;
                    temp_a5 = temp_s1->unkA6;
                    temp_a4 = arg1->unk54;
                    temp_a3 = temp_a5 == 1;
                    if (temp_a4 != temp_a7) {
                        mgrTM_process_level(arg0, arg1, (temp_a7 << temp_a3) + 1, temp_a3, (f32 *) temp_a4, (f32 *) temp_a5);
                        sp10 = (s64) temp_s6_2;
                        var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                        sp8 = 1;
                    } else {
                        mgrTM_process_level(arg0, arg1, (temp_a4 << temp_a3) + 1, temp_a3, (f32 *) temp_a4, (f32 *) temp_a5);
                        sp10 = (s64) temp_s6_2;
                        var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                    }
                } else {
                    sp0 = (s64) temp_v0;
                    sp58 = var_ra;
                    mgrTM_process_level(arg0, arg1, (f32 *) arg2);
                    sp10 = (s64) temp_s6_2;
                    var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                }
                temp_s6_4 = arg2 * 2;
                if ((sp8 != 0) || (((bitwise s32) arg1->unk0 + temp_s6_4)->unk28 != (temp_s6_4 + var_s4)->unk28)) {
                    mgrTM_MakeResident(arg0, arg1, var_s4, arg2);
                    var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                    if (sp8 != 0) {
                        arg1->unk54 = (u8) temp_s1->unkBA;
                    }
                    mgrTM_MakeResident(arg0, arg1, (f32 *) (M2C_ERROR(/* Read from unset register $v0 */) + temp_s6_4)->unk28, arg2);
                }
                ((void *) sp0)->unk56 = 1;
                (temp_s6_4 + temp_s1)->unk9C = (s16) ((sp10->unk-6E04 + temp_s6_4)->unk4D0 - (temp_s6_4 + arg1)->unk48);
                temp_a1_4 = arg1->unk4->unk3F + 1;
                if (temp_a1_4 < 0xD) {
                    var_v0_3 = (temp_a1_4 * 4) + temp_s1;
loop_104:
                    temp_a0_3 = var_v0_3->unk14;
                    var_v0_3 += 4;
                    if (temp_a0_3 != NULL) {
                        temp_a1_5 = temp_a0_3->unk1C;
                        if (temp_a1_5 != 0) {
                            (arg2 + temp_a1_5)->unk56 = 0;
                            if ((temp_s1 + 0x34) == var_v0_3) {

                            } else {
                                goto loop_104;
                            }
                        }
                    }
                }
            }
        }
        mgrTM_process_level(arg0, arg1, var_s4, (u32) arg2, arg4);
        temp_v0_2 = temp_s1->unk10;
        if (temp_v0_2 != 0) {
            temp_a1_6 = temp_s1 + 0x38;
            if (temp_v0_2 == arg1) {
                temp_a0_4 = temp_s1->unk14;
                temp_v0_3 = temp_s1 + 4;
                if (temp_a0_4 != NULL) {
                    temp_a2 = temp_a0_4->unk1C;
                    if (temp_s1->unk10 == temp_a2) {
                        (arg2 + temp_a2)->unk58 = 1;
                    }
                }
                if (temp_v0_3 != temp_a1_6) {
                    temp_a0_5 = temp_v0_3->unk14;
                    temp_v0_4 = temp_v0_3 + 4;
                    if (temp_a0_5 != NULL) {
                        temp_a2_2 = temp_a0_5->unk1C;
                        if (temp_s1->unk10 == temp_a2_2) {
                            (arg2 + temp_a2_2)->unk58 = 1;
                        }
                    }
                    if (temp_v0_4 != temp_a1_6) {
                        temp_a0_6 = temp_v0_4->unk14;
                        temp_v0_5 = temp_v0_4 + 4;
                        if (temp_a0_6 != NULL) {
                            temp_a2_3 = temp_a0_6->unk1C;
                            if (temp_s1->unk10 == temp_a2_3) {
                                (arg2 + temp_a2_3)->unk58 = 1;
                            }
                        }
                        if (temp_v0_5 != temp_a1_6) {
                            temp_a0_7 = temp_v0_5->unk14;
                            temp_v0_6 = temp_v0_5 + 4;
                            if (temp_a0_7 != NULL) {
                                temp_a2_4 = temp_a0_7->unk1C;
                                if (temp_s1->unk10 == temp_a2_4) {
                                    (arg2 + temp_a2_4)->unk58 = 1;
                                }
                            }
                            if (temp_v0_6 != temp_a1_6) {
                                temp_a0_8 = temp_v0_6->unk14;
                                temp_v0_7 = temp_v0_6 + 4;
                                if (temp_a0_8 != NULL) {
                                    temp_a2_5 = temp_a0_8->unk1C;
                                    if (temp_s1->unk10 == temp_a2_5) {
                                        (arg2 + temp_a2_5)->unk58 = 1;
                                    }
                                }
                                if (temp_v0_7 != temp_a1_6) {
                                    temp_a0_9 = temp_v0_7->unk14;
                                    if (temp_a0_9 != NULL) {
                                        temp_a2_6 = temp_a0_9->unk1C;
                                        if (temp_s1->unk10 == temp_a2_6) {
                                            (arg2 + temp_a2_6)->unk58 = 1;
                                        }
                                    }
                                    temp_v0_8 = temp_v0_7 + 4;
                                    if (temp_v0_8 != temp_a1_6) {
                                        temp_a0_10 = temp_v0_8->unk14;
                                        if (temp_a0_10 != NULL) {
                                            temp_a2_7 = temp_a0_10->unk1C;
                                            if (temp_s1->unk10 == temp_a2_7) {
                                                (arg2 + temp_a2_7)->unk58 = 1;
                                            }
                                        }
                                        temp_v0_9 = temp_v0_8 + 4;
                                        if (temp_v0_9 != temp_a1_6) {
                                            temp_a0_11 = temp_v0_9->unk14;
                                            if (temp_a0_11 != NULL) {
                                                temp_a2_8 = temp_a0_11->unk1C;
                                                if (temp_s1->unk10 == temp_a2_8) {
                                                    (arg2 + temp_a2_8)->unk58 = 1;
                                                }
                                            }
                                            temp_v0_10 = temp_v0_9 + 4;
                                            if (temp_v0_10 != temp_a1_6) {
                                                temp_a0_12 = temp_v0_10->unk14;
                                                if (temp_a0_12 != NULL) {
                                                    temp_a2_9 = temp_a0_12->unk1C;
                                                    if (temp_s1->unk10 == temp_a2_9) {
                                                        (arg2 + temp_a2_9)->unk58 = 1;
                                                    }
                                                }
                                                temp_v0_11 = temp_v0_10 + 4;
                                                if (temp_v0_11 != temp_a1_6) {
                                                    temp_a0_13 = temp_v0_11->unk14;
                                                    if (temp_a0_13 != NULL) {
                                                        temp_a2_10 = temp_a0_13->unk1C;
                                                        if (temp_s1->unk10 == temp_a2_10) {
                                                            (arg2 + temp_a2_10)->unk58 = 1;
                                                        }
                                                    }
                                                    temp_v0_12 = temp_v0_11 + 4;
                                                    if (temp_v0_12 != temp_a1_6) {
                                                        temp_a0_14 = temp_v0_12->unk14;
                                                        if (temp_a0_14 != NULL) {
                                                            temp_a2_11 = temp_a0_14->unk1C;
                                                            if (temp_s1->unk10 == temp_a2_11) {
                                                                (arg2 + temp_a2_11)->unk58 = 1;
                                                            }
                                                        }
                                                        temp_v0_13 = temp_v0_12 + 4;
                                                        if (temp_v0_13 != temp_a1_6) {
                                                            temp_a0_15 = temp_v0_13->unk14;
                                                            if (temp_a0_15 != NULL) {
                                                                temp_a2_12 = temp_a0_15->unk1C;
                                                                if (temp_s1->unk10 == temp_a2_12) {
                                                                    (arg2 + temp_a2_12)->unk58 = 1;
                                                                }
                                                            }
                                                            temp_v0_14 = temp_v0_13 + 4;
                                                            if (temp_v0_14 != temp_a1_6) {
                                                                temp_a0_16 = temp_v0_14->unk14;
                                                                if (temp_a0_16 != NULL) {
                                                                    temp_a2_13 = temp_a0_16->unk1C;
                                                                    if (temp_s1->unk10 == temp_a2_13) {
                                                                        (arg2 + temp_a2_13)->unk58 = 1;
                                                                    }
                                                                }
                                                                temp_v0_15 = temp_v0_14 + 4;
                                                                if (temp_v0_15 != temp_a1_6) {
                                                                    temp_a0_17 = temp_v0_15->unk14;
                                                                    if (temp_a0_17 != NULL) {
                                                                        temp_a2_14 = temp_a0_17->unk1C;
                                                                        if (temp_s1->unk10 == temp_a2_14) {
                                                                            (arg2 + temp_a2_14)->unk58 = 1;
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
                            }
                        }
                    }
                }
            }
        }
        mgrTM_DrawSetup(arg0, arg1, arg2);
    }
}

void MovePlacement(__GLcontext *arg0, void *arg1, s16 arg2, s32 arg3) {
    s16 temp_a1;
    s16 var_a0;
    s16 var_a2;
    s16 var_a7;
    s32 *var_a2_2;
    s32 *var_a3;
    s32 *var_a5;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 var_a1;
    void *temp_a1_3;
    void *var_v0;

    var_a2 = arg2;
    var_a5 = arg1->unk0;
    var_a7 = arg3 * 2;
    var_v0 = var_a7 + var_a5;
    do {
        var_v0->unk28 = var_a2;
        var_a2 -= var_v0->unk24;
        temp_a1 = var_a2 + 1;
        var_v0->unk20 = temp_a1;
        var_a5 = var_a5->unkC;
        var_v0 = var_a7 + var_a5;
    } while (arg1->unk0 != var_a5);
    (var_a7 + arg1)->unk48 = temp_a1;
    if (arg3 != 0) {
        goto block_3;
    }
    var_a5 = arg1->unk38;
    var_a7 = arg1->unk48;
    var_a1 = 0;
    var_a2_2 = var_a5;
    if (*var_a5 != var_a7) {
        var_a0 = var_a7;
        var_a3 = arg1->unk30;
        if (arg1->unk4C > 0) {
loop_9:
            var_a2_2->unk0 = (s32) var_a0;
            *var_a3 = (s32) var_a0;
            temp_a0 = var_a0 + 1;
            temp_a1_2 = var_a1 + 1;
            var_a3 += 0x18;
            if (temp_a1_2 < arg1->unk4C) {
                var_a2_2->unk4 = temp_a0;
                var_a3->unk-C = temp_a0;
                var_a2_2 += 8;
                var_a0 = temp_a0 + 1;
                var_a1 = temp_a1_2 + 1;
                if (var_a1 < arg1->unk4C) {
                    goto loop_9;
                }
            }
        }
    } else {
block_3:
        if (arg3 == 1) {
            temp_a1_3 = *arg1->unk4;
            if ((temp_a1_3->unkB3 == 8) && (arg0->unk9154 == temp_a1_3)) {
                __glMgrasWrite(arg0, 0x192, arg1->unk4A, SYMBOL_LOCATION.unk114, 1, var_a5, arg1, var_a7);
            }
        }
    }
}

void RemoveResidency(__GLcontext *arg0, f32 *arg1, f32 *arg2, s64 arg3) {
    f32 *temp_a0;
    f32 *temp_a1;
    f32 *var_a2;
    f32 *var_s1;
    f32 *var_v0;
    s32 var_a6;

    var_a6 = 0;
    var_s1 = arg2;
loop_3:
    temp_a0 = *arg1;
    var_a2 = (f32 *)1;
    var_v0 = temp_a0;
loop_4:
    temp_a1 = *var_v0;
    var_v0 = temp_a1;
    if ((temp_a1 + (arg3 * 4))->unk4 == 0) {
        if (temp_a1 == temp_a0) {

        } else {
            goto loop_4;
        }
    } else {
        mgrTM_MakeResident(arg0, temp_a1, var_s1, arg3);
        var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        var_a6 = 1;
        var_a2 = NULL;
    }
    if (var_a2 == NULL) {
        goto loop_3;
    }
    if ((var_a6 != 0) && (arg3 == 1)) {
        mgrTM_process_level(arg0, arg1, var_a2);
    }
}

void RemoveDesc(__GLcontext *arg0, f32 *arg1, f32 *arg2, u32 arg3) {
    ? **temp_s1;
    ? *var_v0_2;
    f32 *temp_a4;
    f32 *temp_a4_2;
    f32 *temp_a5;
    f32 *temp_a6;
    f32 *temp_v0_2;
    f32 *var_s0;
    f32 *var_s3;
    f32 temp_v0_3;
    s32 temp_s2_2;
    s32 temp_s7;
    s32 temp_v1;
    u32 var_v0;
    u8 temp_a0;
    void *temp_a1;
    void *temp_at;
    void *temp_s2;
    void *temp_v0;
    void *var_a4;

    var_v0 = arg3;
    temp_a6 = arg1->unk18;
    var_s3 = arg2;
    if (arg3 == 1) {
        temp_a0 = temp_a6->unk54;
        if (temp_a0 != 0) {
            var_v0 = (temp_a0 << (temp_a6->unk52 == 1)) + 1;
        }
    }
    temp_s1 = arg0->unk91FC + (var_v0 * 0x30) + 0xF0;
    mgrTM_SaveData(arg0, NULL, temp_a6);
    temp_s2 = M2C_ERROR(/* Read from unset register $v0 */);
    var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    memcpy(M2C_ERROR(/* Read from unset register $v0 */), arg1, 0x30U);
    temp_s2->unk18 = 0;
    temp_s2->unk2C = 1;
    temp_v1 = arg3 == 0;
    temp_at = (temp_v1 * 2) + var_s0;
    temp_s2->unk1C = (s32) (arg0->unk91FC + 0x4A8);
    ((temp_v1 * 4) + temp_s2)->unk4 = 0;
    temp_at->unk20 = 0;
    temp_at->unk28 = 0;
    temp_at->unk24 = 0;
    if (arg1 == var_s3) {
        var_s3 = var_s0;
    }
    temp_s7 = arg3 * 4;
    temp_v0 = temp_s7 + var_s0;
    (temp_v0->unk10 + temp_s7)->unk4 = var_s0;
    temp_s2_2 = arg3 * 2;
    (temp_v0->unk4 + temp_s7)->unk10 = var_s0;
    temp_a1 = temp_s2_2 + var_s0;
    var_v0_2 = *temp_s1;
    var_a4 = temp_s2_2 + var_v0_2;
loop_4:
    if (temp_a1->unk28 >= var_a4->unk20) {
        var_v0_2 = *var_v0_2;
        var_a4 = temp_s2_2 + var_v0_2;
        if (var_v0_2 != temp_s1) {
            goto loop_4;
        }
    }
    *var_v0_2->unkC = var_s0;
    temp_a5 = var_v0_2->unkC;
    var_s0->unk0 = var_v0_2;
    var_s0->unkC = temp_a5;
    var_v0_2->unkC = var_s0;
    temp_v0_2 = var_s0->unkC;
    if (temp_s1 != temp_v0_2) {
        temp_a4 = (temp_s2_2 + temp_v0_2)->unk28 + 1;
        if (temp_a1->unk20 == temp_a4) {
            if (var_s3 != var_s0) {
                mgrTM_process_level(arg0, temp_v0_2, var_s0, (u32) var_s0, temp_a4, temp_a5, (s32) sub_0dac0000);
                var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
            }
        }
    }
    temp_v0_3 = *var_s0;
    if (temp_s1 != (bitwise s32) temp_v0_3) {
        temp_a4_2 = (temp_s2_2 + var_s0)->unk28 + 1;
        if (((temp_s2_2 + (bitwise s32) temp_v0_3)->unk20 == temp_a4_2) && (var_s3 != (bitwise s32) temp_v0_3)) {
            mgrTM_process_level(arg0, var_s0, (bitwise f32 *) temp_v0_3, (u32) var_s0, temp_a4_2);
        }
    }
    (temp_s7 + arg1)->unk4 = 0;
    mgrTM_process_level(arg0, arg1, var_s3, arg3);
    (arg0->unk91FC + temp_s7)->unk4B0 = 1;
}

void mgrTM_SetLoadBuffer(__GLcontext *arg0, void *arg1) {
    s64 sp20;
    s64 sp0;
    s32 temp_a0;
    s64 var_ra;
    u8 temp_a0_2;
    u8 temp_a7;
    void *temp_s0;

    var_ra = saved_reg_ra;
    temp_s0 = arg0->unk91FC;
    if (arg1->unkB7 != 0) {
        temp_a7 = arg1->unkB8;
        if (temp_s0->unk490 != temp_a7) {
            sp0 = (s64) arg0;
            __glMgrasWrite(arg0, 0x1A0, temp_a7, SYMBOL_LOCATION.unk120, 0, &SYMBOL_LOCATION, temp_a7);
            var_ra = sp20;
            temp_s0->unk490 = (s32) arg1->unkB8;
        }
        if (temp_s0->unk498 == arg1->unkB8) {
            sp20 = var_ra;
            __glMgrasWrite(arg0, arg0, 0x18B, arg1->unkB8 == 0, SYMBOL_LOCATION.unk104, 0);
            temp_s0->unk498 = (s32) (arg1->unkB8 == 0);
        }
        temp_a0 = arg1->unkC;
        if (temp_a0 == 0) {
            temp_s0->unk1E4 = 0;
        } else if (temp_s0->unk1E4 != arg1) {
            temp_s0->unk1E4 = 0;
        } else {
            temp_s0->unk1E4 = temp_a0;
        }
    }
    if (arg1->unkB9 != 0) {
        temp_a0_2 = arg1->unkBA;
        if (temp_s0->unk48C != temp_a0_2) {
            temp_s0->unk48C = (s32) temp_a0_2;
        }
        if (temp_s0->unk494 == arg1->unkBA) {
            temp_s0->unk494 = (s32) (arg1->unkBA ^ 1);
        }
    }
}

void mgrTM_VidTexWait(void *arg0, void *arg1, s32 arg2) {
    s32 sp4;
    s32 sp0;
    s32 temp_a0;
    s32 var_s4;

    if (MgrasPrevVidTexture != NULL) {
        if ((arg2 != 0) && (arg1 != NULL) && (MgrasPrevVidTexture->unkB7 != 0) && (arg1->unkB7 != 0) && (arg1->unkB8 != MgrasPrevVidTexture->unkB8) && (arg1->unkC1 != 0)) {
            return;
        }
        var_s4 = 0xC350;
loop_9:
        sp0 = 0;
        sp4 = 0;
        temp_a0 = arg0->unk7B48;
        if (ioctl(temp_a0, 0x6D670016U, temp_a0, 0x6D670016, sp) >= 0) {
            if (sp20 != 0) {
                var_s4 -= 1;
                if (sp20 == 7) {
                    if (var_s4 == 0) {
                        goto block_13;
                    }
                    goto loop_9;
                }
                __glSetError(0x502);
                return;
            }
block_13:
            if (arg2 == 0) {
                sginap(0);
            }
            if (var_s4 != 0) {
                MgrasPrevVidTexture->unkA2 = (s16) sp1C;
                MgrasPrevVidTexture = NULL;
                return;
            }
            __glSetError(0x502);
            return;
        }
        __glSetError(0x502);
    }
}

void mgrTM_DrawSetup(__GLcontext *arg0, u8 arg4) {
    s64 sp78;
    s64 sp60;
    s64 sp50;
    s64 sp48;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0;
    __GLcontext *var_a1;
    f32 *temp_a1_2;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f7;
    f64 temp_f1;
    s16 temp_a4_8;
    s16 temp_v0_3;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a5_2;
    s32 temp_f0;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4_2;
    s32 var_f2;
    s64 temp_a4_6;
    s64 var_ra;
    s64 var_s1;
    s64 var_s2;
    u8 (*temp_v0_2)(__GLcontext *);
    u8 temp_a0_3;
    u8 temp_a1;
    u8 temp_a5;
    u8 temp_a6;
    u8 var_a2;
    u8 var_a4;
    u8 var_s5;
    u8 var_s7;
    void (*temp_a0_4)(__GLcontext *, void *);
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a4_7;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s2_3;
    void *temp_s2_4;
    void *temp_s8;
    void *temp_v0;
    void *var_a2_2;
    void *var_s1_2;
    void *var_s1_3;
    void *var_s1_4;
    void *var_s1_5;
    void *var_s2_2;

    var_s1 = saved_reg_s1;
    var_s2 = saved_reg_s2;
    var_ra = saved_reg_ra;
    var_a4 = arg4;
    sp48 = 0;
    sp0 = (s64) (arg0 + 0x10000);
    temp_s8 = arg0->unk91FC;
    if (arg0->stencilBuffer.buf.resize & 0x20000) {
        temp_a0 = sp0->unk-75D4;
        if (temp_a0 != NULL) {
            var_a1 = temp_a0->unkC4;
            if (var_a1 == NULL) {
                mgrTM_RefreshDim(temp_a0, var_a1);
                var_ra = sp50;
                var_a1 = sp0->unk-75D4->unkC4;
            }
            if (var_a1->unkC0 != 0) {
                goto block_4;
            }
            sp50 = var_ra;
            mgrTM_TexValidate(var_a1, var_a1);
            var_a4 = var_a1->unkC0;
            if (var_a4 == 0) {
                goto block_75;
            }
block_4:
            var_a0 = 0;
            var_s7 = var_a1->unkA5;
            var_a1->exports.copyContext = 0;
            temp_a1 = var_a1->unkB5;
            temp_a5 = var_a1->unkA4;
            var_s5 = temp_a5;
            if (temp_a1 != 0) {
                temp_f5 = (f32) var_s5;
                temp_f6 = var_a1->unk80;
                var_f4 = temp_f5;
                if ((s32) var_s5 > 0) {
                    goto block_6;
                }
                if ((second half of f64) < (f64) temp_f6) {
block_6:
                    var_f4_2 = temp_f6;
                    if ((f64) temp_f6 < (second half of f64)) {
                        var_f4_2 = 0.0f;
                    }
                    temp_f6_2 = (f32) var_s7;
                    var_f4 = temp_f5 + var_f4_2;
                    if (temp_f6_2 < var_f4) {
                        var_f4 = temp_f6_2;
                    }
                    var_a0 = (((s64) (var_f4 * 64.0f) << 0) & 0x3FF) << 0x10;
                    var_a1->exports.copyContext = var_a0;
                }
                temp_f6_3 = var_a1->exports.unk38;
                temp_f1 = (f64) temp_f6_3;
                var_f2 = (s32) var_f4;
                if (temp_f1 < 1000.0) {
                    var_f2 = second half of f64;
                    var_f7 = temp_f6_3;
                    if ((f64) temp_f6_3 < GLUE_F64(temp_f1, 0U)) {
                        var_f7 = (f32) var_s7;
                    }
                    temp_f0 = (s32) var_f7;
                    var_a3 = temp_f0;
                    if ((f32) temp_f0 < var_f7) {
                        var_a3 = temp_f0 + 1;
                    }
                    temp_f6_4 = temp_f5 + (f32) var_a3;
                    if ((var_f4 <= temp_f6_4) && (temp_f6_4 < (f32) var_s7)) {
                        var_s7 = (u8) (s32) temp_f6_4;
                    }
                }
                var_s5 = (u8) var_f2;
            }
            var_a2 = var_s7;
            if (var_s7 == 0) {
                var_a2 = 1;
            }
            temp_a0_2 = (var_a2 & 0xF) | (-0x10 & var_a0);
            var_a1->exports.copyContext = temp_a0_2;
            if ((temp_a1 == 0) || (var_a3_2 = 1, ((s32) var_s7 <= 0))) {
                var_a3_2 = 0;
            }
            temp_a2 = (var_a1->exports.notifyDestroy & ~0x20) | ((var_a3_2 & 1) << 5);
            var_a1->exports.notifyDestroy = temp_a2;
            if ((temp_a1 == 0) || (var_a1_2 = 1, ((s32) var_s7 <= 0))) {
                var_a1_2 = 0;
            }
            var_a1->exports.notifyDestroy = ((temp_a2 & ~0x80000) | ((var_a1_2 & 1) << 0x13)) & ~0x200;
            if (var_a1->unkBE != 0) {
                if (temp_a5 == 0) {
                    if (var_a1->imports.getenv != NULL) {
                        temp_a2_2 = sp0->unk-6EAC;
                        sp48 = (s64) temp_a2_2;
                        var_a2_2 = temp_a2_2->unk14;
                        if ((var_a2_2 != NULL) && (var_a4_2 = var_a1->unk98, (var_a4_2 == sp48->unk98))) {
                            if (var_s7 == 0) {
                                var_s7 = 1;
                                var_a4_2 = (-0x10 & temp_a0_2) | 1;
                                var_a1->exports.copyContext = var_a4_2;
                                var_a2_2 = sp48->unk14;
                            }
                            temp_v0 = var_a2_2->unk1C;
                            sp8 = (s64) temp_v0;
                            sp50 = var_ra;
                            if (temp_v0->unk59 != 0) {
                                mgrTM_DrawSetup(arg0, (f32 *) sp8, 1, var_a3_2, var_a4_2, temp_a5);
                                var_ra = sp50;
                            } else {
                                mgrTM_MakeResident(arg0, (f32 *) sp8, (f32 *)1, 0, NULL, (s32) temp_a5);
                                var_ra = sp50;
                            }
                            sp8->unk28 = arg0;
                            temp_a0_3 = sp48->unkBA;
                            if (var_a1->unkBA != temp_a0_3) {
                                var_a1->unkBA = temp_a0_3;
                                if ((s32) var_s7 >= (s32) var_s5) {
                                    var_s1_2 = (var_s5 * 4) + var_a1;
                                    sp18 = (s64) (((var_s7 + 1) * 4) + var_a1);
loop_110:
                                    temp_s2 = var_s1_2->unk14;
                                    var_s1_2 += 4;
                                    if (temp_s2 != NULL) {
                                        temp_a1_2 = temp_s2->unk1C;
                                        if (temp_a1_2 != NULL) {
                                            if (temp_a1_2->unk55 == 0) {
                                                mgrTM_SaveData(arg0, temp_a1_2);
                                            }
                                            mgrTM_MakeResident(arg0, temp_s2->unk1C, NULL, 1);
                                            temp_s2->unk1C->unk54 = (u8) var_a1->unkBA;
                                        }
                                    }
                                    if (var_s1_2 != sp18) {
                                        goto loop_110;
                                    }
                                    var_s1 = sp78;
                                    var_ra = sp50;
                                    var_s2 = sp60;
                                }
                            }
                        } else {
                            sp48 = 0;
                        }
                    }
                }
            }
            if (var_a1->unkC1 != 0) {
                if ((s32) var_s7 >= (s32) var_s5) {
                    sp60 = var_s2;
                    sp50 = var_ra;
                    sp78 = var_s1;
                    var_s1_3 = (var_s5 * 4) + var_a1;
loop_34:
                    temp_s2_2 = var_s1_3->unk14;
                    mgrTM_DrawSetup(arg0, temp_s2_2->unk1C, 1);
                    temp_s2_2->unk1C->unk28 = arg0;
                    var_s1_3 += 4;
                    if (var_a1->imports.warning != temp_s2_2->unk1C) {
                        if ((((var_s7 + 1) * 4) + var_a1) != var_s1_3) {
                            goto loop_34;
                        }
                    }
                    var_s1 = sp78;
                    var_ra = sp50;
                    var_s2 = sp60;
                }
            } else {
                sp50 = var_ra;
                mgrTM_TexValidate(arg0, var_a1, (s32) var_s5, (s32) var_s7);
            }
            if (var_a1->unkB7 != 0) {
                temp_a6 = var_a1->unkB8;
                if (temp_s8->unk498 != temp_a6) {
                    sp50 = var_ra;
                    __glMgrasWrite(arg0, arg0, 0x18B, temp_a6, SYMBOL_LOCATION.unk104, 0);
                    temp_s8->unk498 = (s32) var_a1->unkB8;
                }
                if (temp_s8->unk490 == var_a1->unkB8) {
                    sp50 = var_ra;
                    __glMgrasWrite(arg0, arg0, 0x1A0, var_a1->unkB8 == 0, SYMBOL_LOCATION.unk120, 1);
                    temp_s8->unk490 = (s32) (var_a1->unkB8 == 0);
                }
                temp_a0_4 = var_a1->imports.free;
                if ((temp_a0_4 != NULL) && (temp_s8->unk1E4 == temp_a0_4)) {
                    temp_s8->unk1E4 = var_a1;
                    sp60 = var_s2;
                    temp_s2_3 = temp_s8->unk1E8;
                    if ((temp_s2_3 != NULL) && (temp_s2_3->unk0 == var_a1)) {
                        temp_s8->unk1E8 = (void *) (var_a1->imports.free + (temp_s2_3->unk3F * 4))->unk14;
                    } else {
                        temp_s8->unk1E8 = NULL;
                    }
                    return;
                }
                goto block_46;
            }
block_46:
            var_a0_2 = 0;
            var_a1->exports.forceCurrent = 0;
            if (sp48 != 0) {
                temp_a4 = var_a1->exports.notifyDestroy | 0x200 | 0x20 | 0x40 | 0x80000;
                var_a1->exports.notifyDestroy = temp_a4;
                var_a0_2 = (var_a1->unkBF & 7) << 0x10;
                var_a1->exports.forceCurrent = var_a0_2;
                var_a1->exports.notifyDestroy = (temp_a4 & ~0x400) | ((sp48->unk14->unk3C == 7) << 0xA);
                sp60 = var_s2;
                var_a1->exports.copyContext = (var_a1->exports.copyContext & ~0xFC00) | ((sp0->unk-6E08->unk88 & 0x3F) << 0xA);
            }
            sp60 = var_s2;
            temp_s2_4 = (var_s5 * 4) + var_a1;
            sp20 = (s64) temp_s2_4;
            var_s2_2 = temp_s2_4->unk14;
            temp_a4_2 = ((var_s2_2->unk3B + var_s5) & 0xF) | (-0x10 & var_a0_2);
            var_a1->exports.forceCurrent = temp_a4_2;
            temp_a4_3 = (temp_a4_2 & ~0xF00) | (((var_s2_2->unk3B + var_s5) & 0xF) << 8);
            var_a1->exports.forceCurrent = temp_a4_3;
            temp_a4_4 = (temp_a4_3 & ~0xF0) | (((var_s2_2->unk3C + var_s5) & 0xF) * 0x10);
            var_a1->exports.forceCurrent = temp_a4_4;
            temp_a4_5 = (temp_a4_4 & ~0xF000) | (((var_s2_2->unk3C + var_s5) & 0xF) << 0xC);
            var_a1->exports.forceCurrent = temp_a4_5;
            var_a1->exports.forceCurrent = (temp_a4_5 & ~0x780000) | ((var_s2_2->unk3D & 0xF) << 0x13);
            if ((s32) var_a1->unkB3 >= 4) {
                sp50 = var_ra;
                __glMgrasWrite(arg0, arg0, 0x18A, var_a1->exports.shareContext, SYMBOL_LOCATION.unk100, 0);
                if ((s32) var_a1->unkB3 >= 4) {
                    temp_v0_2 = var_a1->exports.forceCurrent;
                    var_a1->exports.forceCurrent = (u8 (*)(__GLcontext *)) (((((s32) temp_v0_2 & 0xF) + 1) & 0xF) | (-0x10 & (s32) temp_v0_2));
                    if (((s32) var_a1->unkA6 >= 2) && ((s32) var_a1->unkA7 >= 2)) {
                        __glMgrasWrite(arg0, arg0, 0x1A1, 0, SYMBOL_LOCATION.unk124, 0);
                        temp_s8->unk1E8 = NULL;
                        var_ra = sp50;
                    }
                }
            }
            if ((var_a1->unkB9 != 0) || (sp50 = var_ra, (var_a1->unkBB != 0))) {
                sp50 = var_ra;
                mgrTM_tram_select(arg0, var_a1);
            }
            __glMgrasWrite(arg0, arg0, 0x180, var_a1->exports.notifyDestroy, SYMBOL_LOCATION.unkD8, 1);
            mgrTM_SendTexmode1(arg0, var_a1);
            if (var_s2_2->unk14 == 0) {
                __glMgrasWrite(arg0, arg0, 0x184, var_a1->exports.unk44, SYMBOL_LOCATION.unkE8, 0);
                __glMgrasWrite(arg0, arg0, 0x185, var_a1->gcState, SYMBOL_LOCATION.unkEC, 0);
            }
            __glMgrasWrite(arg0, arg0, 0x190, var_s5, SYMBOL_LOCATION.unk10C, 1);
            temp_a4_6 = (s32) var_s7 >= (s32) var_s5;
            sp10 = temp_a4_6;
            if ((temp_a4_6 != 0) && ((s32) var_s5 < 0xA)) {
                sp78 = var_s1;
                var_s1_4 = (var_s5 * 4) + var_a1 + 4;
loop_56:
                var_s2_2 = var_s1_4->unk10;
                *(s32 *)0x74080 = 0xEC10;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk10C;
                *(s32 *)0x74080 = SYMBOL_LOCATION.unk110;
                *(s32 *)0x74080 = 0x191;
                *(s32 *)0x74080 = var_s2_2->unk1C->unk4A | (var_s2_2->unk3A << 8);
                if ((u32) ((var_s7 * 4) + var_a1) >= (u32) var_s1_4) {
                    var_s1_4 += 4;
                    if ((u32) var_s1_4 < (u32) &var_a1->imports.fclose) {
                        goto loop_56;
                    }
                }
                var_s1 = sp78;
            }
            if ((var_a1->unkB3 != 0) && (var_s2_2->unk14 == 0)) {
                if (var_a1->unkB5 != 0) {
                    goto block_63;
                }
            } else {
block_63:
                __glMgrasWrite(arg0, arg0, 0x190, var_s5, SYMBOL_LOCATION.unk10C, 1);
                if ((sp10 != 0) && ((s32) var_s5 < 0xA)) {
                    sp78 = var_s1;
                    var_s1_5 = (var_s5 * 4) + var_a1;
loop_66:
                    temp_a4_7 = var_s1_5->unk14;
                    *(void *)0x74080 = 0xEC10;
                    *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk10C;
                    *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk118;
                    *(void *)0x74080 = 0x193;
                    temp_a4_8 = temp_a4_7->unk38;
                    temp_v0_3 = temp_a4_7->unk1C->unk4A;
                    var_s1_5 += 4;
                    *(void *)0x74080 = (s32) ((temp_a4_8 + temp_v0_3) & 0xFF);
                    if ((u32) ((var_s7 * 4) + var_a1) >= (u32) var_s1_5) {
                        if ((u32) var_s1_5 < (u32) &var_a1->imports.fclose) {
                            goto loop_66;
                        }
                    }
                }
            }
            __glMgrasWrite(arg0, arg0, 0x181, var_a1->exports.forceCurrent, SYMBOL_LOCATION.unkDC, 0);
            __glMgrasWrite(arg0, arg0, 0x183, var_a1->exports.copyContext, SYMBOL_LOCATION.unkE4, 0);
            temp_a2_3 = sp20->unk14;
            temp_a5_2 = temp_a2_3->unk4 << 0xD;
            __glMgrasWrite(arg0, arg0, 0x18C, (temp_a2_3->unk8 | temp_a5_2) << var_s5, SYMBOL_LOCATION.unk108, 1, temp_a5_2);
            temp_s8->unk1E4 = var_a1;
            return;
        }
block_75:
        if (sp0->unk-6DB8 != 0) {
            sp50 = var_ra;
            __glMgrSaveTexmode((__GLcontext *)1, 1, 0, 0, 0, var_a4);
            sp0->unk-6DB8 = 0;
            *(void *)0x74080 = 0x5F04;
            *(void *)0x74080 = 0;
            *(void *)0x74080 = 0xC00;
        }
    }
}

void LevelUsed(void *arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_s0;
    s32 var_a6;
    void *temp_a0;
    void *var_a4;

    temp_s0 = arg2 * 4;
    var_a4 = temp_s0 + arg1;
    var_a6 = var_a4->unk18;
    if (var_a6 != 0) {
        if ((arg0->unk91FC + temp_s0)->unk414 != var_a6) {
            sp18 = (s64) var_a4;
            sp10 = arg1;
            mgrTM_RemoveLev((f32 *) arg1, arg2, var_a4, arg1, var_a6);
            var_a6 = 0;
            var_a4 = (void *) sp18;
            var_a4->unk18 = 0;
        }
        if (var_a6 == 0) {
            goto block_5;
        }
    } else {
block_5:
        temp_a1 = (arg0->unk91FC + temp_s0)->unk414;
        temp_a0 = temp_s0 + temp_a1;
        temp_a2 = temp_a0->unk8;
        var_a4->unk8 = temp_a2;
        if (temp_a2 != 0) {
            (temp_a2 + temp_s0)->unk10 = (s32) arg1;
        }
        temp_a0->unk8 = (s32) arg1;
        var_a4->unk18 = temp_a1;
        var_a4->unk10 = temp_a1;
    }
}

void mgrTM_tram_select(__GLcontext *arg0, __GLcontext *arg1) {
    s32 var_a3;
    u8 temp_a4;
    u8 temp_a5;
    void *temp_a1;

    temp_a4 = arg1->unkBB;
    var_a3 = sp0;
    if (arg1->unkB9 != 0) {
        temp_a5 = arg1->unkBA;
        var_a3 = (s32) temp_a5;
        if (temp_a4 != 0) {
            var_a3 = arg1->unkBC | (temp_a5 * 2);
        }
    } else {
        switch (temp_a4) {                          /* irregular */
        case 1:
            var_a3 = (s32) arg1->unkBC;
            break;
        case 2:
            var_a3 = (s32) arg1->unkBD;
            break;
        }
    }
    temp_a1 = arg0->unk91FC;
    if (temp_a1->unk494 != var_a3) {
        temp_a1->unk494 = var_a3;
    }
}

void mgrTM_TexValidate(__GLcontext *arg0) {
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a5_4;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    u32 temp_a5_2;
    u8 (*temp_a6)(__GLcontext *);
    u8 temp_a2;
    u8 temp_a5;
    u8 temp_a7;
    u8 var_a2;
    u8 var_a2_3;
    u8 var_a3;
    u8 var_a4;
    u8 var_a4_2;
    void *temp_a3_2;
    void *temp_a5_3;
    void *var_a2_2;

    temp_a6 = arg0->exports.destroyContext;
    arg0->unkC0 = 0;
    if (temp_a6 != NULL) {
        var_a2 = 0;
        arg0->unkA5 = 0;
        arg0->unkA4 = 0;
        if (arg0->unkB5 != 0) {
            temp_a3 = arg0->exports.unk3C;
            if (temp_a3 != 0) {
                var_a2 = temp_a3 & 0xFF;
                arg0->unkA4 = var_a2;
            }
            temp_a3_2 = ((var_a2 * 4) + arg0)->unk14;
            if (temp_a3_2 != NULL) {
                temp_a5 = temp_a3_2->unk3B;
                temp_a7 = temp_a3_2->unk3C;
                var_a4 = temp_a7;
                if ((s32) temp_a7 < (s32) temp_a5) {
                    var_a4 = temp_a5;
                }
                temp_a5_2 = arg0->exports.unk40;
                var_a4_2 = arg0->unkA4;
                var_a3 = (var_a4 + var_a2) & 0xFF;
                arg0->unkA5 = var_a3;
                if (temp_a5_2 < var_a3) {
                    var_a3 = temp_a5_2 & 0xFF;
                    arg0->unkA5 = var_a3;
                }
                if ((s32) var_a3 >= (s32) var_a4_2) {
                    var_a2_2 = (var_a4_2 * 4) + arg0;
loop_13:
                    temp_a5_3 = var_a2_2->unk14;
                    var_a4_2 += 1;
                    if (temp_a5_3 != NULL) {
                        var_a2_2 += 4;
                        if (temp_a5_3->unk40 != 0) {
                            var_a3 = (var_a3 - 1) & 0xFF;
                            arg0->unkA5 = var_a3;
                        }
                        if ((s32) var_a3 >= (s32) var_a4_2) {
                            goto loop_13;
                        }
                        goto block_16;
                    }
                    return;
                }
block_16:
                var_a2_3 = 1;
                goto block_17;
            }
            return;
        }
        var_a2_3 = arg0->imports.fatal != NULL;
block_17:
        arg0->unkC0 = var_a2_3;
        if (var_a2_3 != 0) {
            temp_a2 = arg0->unkB3;
            temp_a5_4 = (arg0->unkA7 & 3) * 4;
            arg0->exports.shareContext = 0;
            temp_a7_2 = (temp_a6->unk34 & 7) << 0x17;
            arg0->exports.shareContext = temp_a7_2;
            temp_a7_3 = (temp_a7_2 & ~0x3C000000) | ((((temp_a6->unk3D + temp_a6->unk34) - 1) & 0xF) << 0x1A);
            arg0->exports.shareContext = temp_a7_3;
            temp_a7_4 = (temp_a7_3 & ~0x3C) | ((temp_a6->unk3B & 0xF) * 4);
            arg0->exports.shareContext = temp_a7_4;
            temp_a7_5 = (temp_a7_4 & ~0x3C0) | ((temp_a6->unk3C & 0xF) << 6);
            arg0->exports.shareContext = temp_a7_5;
            temp_a7_6 = (temp_a7_5 & ~0x3C00) | ((temp_a6->unk3D & 0xF) << 0xA);
            arg0->exports.shareContext = temp_a7_6;
            arg0->exports.notifyDestroy = temp_a5_4;
            temp_t2 = arg0->unkB0 & 1;
            arg0->exports.shareContext = (temp_a7_6 & ~0x3C000) | ((temp_a6->unk3E & 0xF) << 0xE);
            temp_a3_3 = (((((-0x41 & ((temp_a5_4 & ~0x10) | ((arg0->unkB7 & 1) * 0x10))) | ((arg0->unkAB & 1) << 6)) & ~0x80) | ((arg0->unkB1 & 1) << 7)) & ~0x100) | (temp_t2 << 8);
            arg0->exports.notifyDestroy = temp_a3_3;
            temp_t1 = (((((((temp_a3_3 & ~0x800) | ((arg0->unkAC & 1) << 0xB)) & ~0x1000) | ((arg0->unkAD & 1) << 0xC)) & ~0x2000) | ((arg0->unkAE & 1) << 0xD)) & ~0x4000) | ((arg0->unkAF & 1) << 0xE);
            arg0->exports.notifyDestroy = temp_t1;
            temp_t1_2 = (temp_t1 & ~0x10000) | ((temp_a6->unk14 == 0) << 0x10);
            arg0->exports.notifyDestroy = temp_t1_2;
            if ((s32) temp_a2 < 4) {
                if (temp_a2 != 0) {

                } else {
                    arg0->exports.notifyDestroy = temp_t1_2 | 0x01000000 | 0x1000;
                }
            } else {
                arg0->exports.notifyDestroy = (-0x41 & ((temp_t1_2 | 0x800000) & ~0x20)) | (temp_t2 << 6);
            }
        }
    }
}

void MakeTextureResident(__GLcontext *arg0, void *arg1, s32 arg2, s32 arg3) {
    f32 *temp_a1;
    s64 var_a3;
    u32 temp_s3;
    u8 temp_a0;
    u8 temp_a4;
    void *temp_s2;
    void *var_s0;

    if (arg3 >= arg2) {
        var_s0 = (arg2 * 4) + arg1;
loop_8:
        temp_s2 = var_s0->unk14;
        temp_a1 = temp_s2->unk1C;
        temp_s3 = (arg2 * 4) + arg1;
        if (temp_a1 != NULL) {
            if ((temp_s3 < (u32) var_s0) && (temp_a1->unk54 != arg1->unkBA)) {
                if (temp_a1->unk55 == 0) {
                    mgrTM_SaveData(arg0, temp_a1);
                }
                mgrTM_MakeResident(arg0, temp_s2->unk1C, NULL, 1);
                temp_s2->unk1C->unk54 = (u8) arg1->unkBA;
            }
            temp_a4 = temp_s2->unk1C->unk59;
            var_a3 = 1;
            if (temp_a4 != 0) {
                if (var_s0 == temp_s3) {
                    temp_a0 = temp_s2->unk1C->unk54;
                    if (arg1->unkBA != temp_a0) {
                        arg1->unkBA = temp_a0;
                    }
                }
                mgrTM_DrawSetup(arg0, temp_s2->unk1C, 1, 1, (s32) temp_a4);
            } else {
                if ((var_s0 == temp_s3) && (arg1->unkBE == 0)) {
                    var_a3 = 0;
                }
                mgrTM_MakeResident(arg0, temp_s2->unk1C, (f32 *)1, var_a3, NULL);
                mgrTM_process_level(arg0, temp_s2->unk1C);
            }
            temp_s2->unk1C->unk28 = arg0;
        }
        var_s0 += 4;
        if (var_s0 != (((arg3 + 1) * 4) + arg1)) {
            goto loop_8;
        }
    }
    arg1->unkC1 = 1;
}

void mgrTM_SendTlMode(__GLcontext *arg0, void *arg1) {
    s32 sp0;
    s32 temp_a2;
    s32 temp_a4_2;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_t0;
    u8 temp_a5;
    u8 temp_a5_2;
    void *temp_a3;
    void *temp_a4;

    temp_a3 = arg1->unk0;
    if ((temp_a3->unkB5 == 0) || (temp_a3->unkB6 != 0)) {
        var_t0 = 0;
    } else {
        var_t0 = 1;
    }
    temp_a5 = temp_a3->unkBA;
    if (temp_a3->unkB9 != 0) {
        temp_a4 = arg0->unk91FC;
        if (temp_a4->unk48C != temp_a5) {
            temp_a4->unk48C = (s32) temp_a5;
        }
    }
    sp0 = 0;
    sp0 = (sp0 & ~0x70000) | 0x30000;
    if (temp_a3->unkC2 != 0) {
        if (temp_a3->unkB5 != 0) {
            sp0 |= 0x80;
        }
    } else {
        sp0 |= 0x4000;
    }
    temp_a4_2 = arg1->unk14;
    temp_a2 = (sp0 & ~6) | ((temp_a3->unkA6 & 3) * 2);
    sp0 = temp_a2;
    sp0 = (((temp_a2 & ~0x18) | ((temp_a3->unkBA & 3) * 8)) & ~0x60) | ((temp_a3->unkA7 & 3) << 5);
    if (temp_a4_2 != 0) {
        var_a1 = 0;
    } else {
        var_a1 = 0;
        if (var_t0 != 0) {
            var_a1 = 1;
        }
    }
    sp0 = (((sp0 & ~0x400) | ((var_a1 & 1) << 0xA)) & ~0x100) | ((temp_a3->unkB7 & 1) << 8);
    if (temp_a4_2 != 0) {
        var_a1_2 = 1;
    } else {
        var_a1_2 = 1;
        if (var_t0 == 0) {
            var_a1_2 = 0;
        }
    }
    sp0 = (sp0 & ~0x800) | ((var_a1_2 & 1) << 0xB);
    if (temp_a4_2 != 0) {
        var_a1_3 = 1;
    } else {
        var_a1_3 = 1;
        if (var_t0 == 0) {
            var_a1_3 = 0;
        }
    }
    temp_a5_2 = temp_a3->unkB3;
    sp0 = (((sp0 & ~0x200) | ((var_a1_3 & 1) << 9)) & ~0x1000) | ((temp_a4_2 & 1) << 0xC);
    if (temp_a5_2 != 0) {
        if (temp_a5_2 == 8) {
            temp_v1 = sp0 & ~0x800;
            sp0 = temp_v1;
            sp0 = temp_v1 & ~0x1000 & ~0x200;
        }
    } else {
        sp0 = sp0 | 1 | 0x1000;
    }
    __glMgrasWrite(arg0, 0x1A1, sp0, SYMBOL_LOCATION.unk124, 1, temp_a5_2, -0x1001, -0x201);
}

void mgrTM_SendTexmode1(__GLcontext *arg0, __GLcontext *arg1) {
    s64 sp38;
    __GLcontext *temp_s3;
    __GLcontext *var_s0;
    f32 var_at;
    s16 temp_a1_2;
    s32 temp_a0_2;
    s32 temp_a7;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_at;
    s32 var_a0;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s64 var_ra;
    u32 var_a1;
    u8 temp_a0;
    u8 temp_a1;
    u8 temp_a7_2;
    void *var_s1;

    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    var_s0 = arg1;
    if (arg1 == NULL) {
        var_s1 = arg0 + 0x10000;
        if ((arg0 != ((-1 << 0x10) | 0x7438)) && (arg0->unk8C8C == NULL)) {
            mgrTM_RefreshDim(arg0 + 0x8BC8);
            var_ra = sp38;
        }
        var_s0 = arg0->unk8C8C;
    } else {
        var_s1 = arg0 + 0x10000;
    }
    var_s0->exports.notifyResize = 0;
    var_a2 = 0;
    if (var_s1->unk-75D4 != 0) {
        var_at = 4.305e-42f;
        if (var_s0->unkC0 != 0) {
            var_a2 = 1;
            var_s0->exports.notifyResize = 1;
            var_at = 3.946e-42f;
        }
    } else {
        var_at = 4.305e-42f;
    }
    *(f32 *)0x74080 = var_at;
    temp_a1 = var_s0->unkBB;
    temp_a0 = var_s0->unkA6;
    var_a2_2 = (-0x19 & ((var_a2 & ~6) | ((var_s1->unk-6EA4 & 3) * 2))) | ((temp_a0 & 3) * 8);
    var_s0->exports.notifyResize = var_a2_2;
    if (temp_a1 != 0) {
        if (temp_a0 != 1) {
            if (temp_a0 == 3) {
                var_a2_2 = (-0x19 & var_a2_2) | ((((((u32) (var_a2_2 & 0x1F) >> 3) - temp_a1) - 1) & 3) * 8);
                var_s0->exports.notifyResize = var_a2_2;
            }
        } else {
            var_a2_2 = (-0x19 & var_a2_2) | (((((u32) (var_a2_2 & 0x1F) >> 3) - temp_a1) & 3) * 8);
            var_s0->exports.notifyResize = var_a2_2;
        }
    }
    temp_at = (var_a2_2 & ~0x60) | ((var_s1->unk-6DB4 & 3) << 5);
    var_s0->exports.notifyResize = temp_at;
    var_a2_3 = (temp_at & ~0x180) | ((var_s1->unk-6E04->unk494 & 3) << 7);
    var_s0->exports.notifyResize = var_a2_3;
    var_a0 = 0;
    var_a1 = (u32) (var_a2_2 & 0x1F) >> 3;
    if ((temp_s3->modes.redBits > 0) && (temp_s3->modes.greenBits == 0)) {
        var_a2_3 |= 0x80000;
        var_s0->exports.notifyResize = var_a2_3;
    }
    if (var_s1->unk-7C20 != 0) {
        if (((u32) (var_s1->unk-6940 & 0x3FFFF) >> 0x11) == 0) {
            var_a0 = var_s1->unk-7C2C;
        }
    }
    var_a2_4 = 0xFFFF0FFF & var_a2_3;
    var_s0->exports.notifyResize = var_a2_4;
    if (var_a1 != 0) {
        if (var_a1 != 1) {
            var_a2_4 = (var_a2_4 & ~0xE00) | 0x800;
            goto block_21;
        }
        if (var_s1->unk-634F != 0) {
            if (var_a0 != 0x190A) {
                if (var_a0 != 0x8049) {
                    var_a1 = 3;
                    var_a2_4 = (var_a2_4 & ~0xE00) | 0x400;
                } else {
                    goto block_69;
                }
            } else {
block_69:
                var_a2_4 &= ~0xE00;
            }
            goto block_21;
        }
        temp_a7 = var_a2_4 & ~0xE00;
        if (((u32) (var_a2_4 & 0xFFFFF) >> 0x13) != 0) {
            var_a2_4 = temp_a7;
            var_s0->exports.notifyResize = temp_a7;
        } else {
            var_a2_4 = temp_a7 | 0x400;
            goto block_21;
        }
    } else if (var_s1->unk-634F != 0) {
        temp_a7_2 = var_s0->unkC3;
        if (temp_a7_2 == 1) {
            var_a1 = 1;
            var_a2_4 = (var_a2_4 & ~0xE00) | 0x200 | 6;
            goto block_21;
        }
        if (temp_a7_2 != 0) {
            if (temp_a7_2 == 2) {
                if ((var_a0 != 0x190A) && (var_a1 = 3, (var_a0 != 0x8049))) {
                    var_a2_4 = (var_a2_4 & ~0xE00) | 0x600;
                } else {
                    var_a1 = 1;
                    var_a2_4 = (var_a2_4 & ~0xE00) | 0x200;
                }
                goto block_21;
            }
        } else {
            if (var_a0 != 0x190A) {
                if (var_a0 != 0x8049) {
                    var_a1 = 2;
                    var_a2_4 = (var_a2_4 & ~0xE00) | 0x400;
                } else {
                    goto block_81;
                }
            } else {
block_81:
                var_a2_4 &= ~0xE00;
            }
            goto block_21;
        }
    } else {
        temp_a7_3 = var_a2_4 & ~0xE00;
        if (((u32) (var_a2_4 & 0xFFFFF) >> 0x13) != 0) {
            var_a2_4 = temp_a7_3;
            var_s0->exports.notifyResize = temp_a7_3;
        } else {
            var_a2_4 = temp_a7_3 | 0x400;
block_21:
            var_s0->exports.notifyResize = var_a2_4;
        }
    }
    var_a2_5 = 0xFFFF0FFF & var_a2_4;
    var_s0->exports.notifyResize = var_a2_5;
    switch (var_a0) {                               /* irregular */
    case 0x0:
        break;
    default:
        temp_a7_4 = 0xFFFF0FFF & var_a2_5;
        if (var_a0 != 0x190A) {
            var_a2_5 = temp_a7_4 | 0xE000;
        } else {
            var_a2_5 = temp_a7_4 | 0x9000;
        }
block_27:
        var_s0->exports.notifyResize = var_a2_5;
        break;
    case 0x8049:
        if (var_s1->unk-634F != 0) {
            temp_a7_5 = 0xFFFF0FFF & var_a2_5;
            if (var_a1 != 2) {
                var_a2_5 = temp_a7_5 | 0x9000;
            } else {
                var_a2_5 = temp_a7_5 | 0xE000;
            }
            goto block_27;
        }
        break;
    case 0x1906:
        var_a2_5 = (0xFFFF0FFF & var_a2_5) | 0x1000;
        goto block_27;
    }
    temp_a0_2 = var_a2_5 & ~0x70000;
    if (((u32) (var_s1->unk-6940 & 0x3FFFF) >> 0x11) != 0) {
        var_a2_6 = 0x10000 | temp_a0_2;
        if (temp_s3->modes.colorIndexMode != 0) {
            sp38 = var_ra;
        } else {
            sp38 = var_ra;
            var_a2_6 = temp_a0_2 | 0x40000;
        }
    } else {
        if ((s32) var_s0->unkA7 >= 2) {
            var_a1_2 = 1;
        } else {
            var_a1_2 = 4;
        }
        sp38 = var_ra;
        var_a2_6 = ((var_a1_2 & 7) << 0x10) | temp_a0_2;
    }
    var_s0->exports.notifyResize = var_a2_6;
    __glMgrasWrite(arg0, arg0, 0x111, var_a2_6, SYMBOL_LOCATION.unkD4, 1, 0xFFFF0FFF, (f32 *)0x74080);
    if (var_s0->unkC2 != 0) {
        temp_a1_2 = var_s0->unkA2;
        if (temp_a1_2 == 1) {
            *(void *)0x74080 = 3.4085e-41f;
            *(void *)0x74080 = (f32) var_s0->exports.endDispatchOverride;
        } else if (temp_a1_2 != 0) {
            *(void *)0x74080 = 3.4085e-41f;
            *(void *)0x74080 = 0.0f;
        } else {
            *(void *)0x74080 = 3.4085e-41f;
            *(void *)0x74080 = (f32) -var_s0->exports.endDispatchOverride;
        }
    } else {
        *(void *)0x74080 = 3.4085e-41f;
        *(void *)0x74080 = 0.0f;
    }
    var_s1->unk-6DB8 = 1;
}

void mgrTM_SendTlTable(__GLcontext *arg0, void *arg1, s32 arg2) {
    void *sp0;
    s16 temp_a3_2;
    s16 temp_a3_4;
    s16 temp_at_2;
    s32 var_s3;
    s64 temp_a3;
    u8 temp_at;
    void *temp_a3_3;
    void *temp_a6;
    void *var_a0;
    void *var_a0_2;

    if ((arg1->unkC2 != 0) && (arg1->unkB5 != 0)) {
        var_s3 = 9;
    } else {
        var_s3 = arg2;
    }
    __glMgrasWrite(arg0, arg0, 0x1A3, arg2, SYMBOL_LOCATION.unk12C, 1);
    temp_a3 = var_s3 >= arg2;
    unksp10 = temp_a3;
    if (temp_a3 != 0) {
        var_a0 = (arg2 * 4) + arg1;
        do {
            temp_a6 = var_a0->unk14;
            *(s32 *)0x74080 = 0xEC10;
            *(s32 *)0x74080 = SYMBOL_LOCATION.unk12C;
            *(s32 *)0x74080 = SYMBOL_LOCATION.unk130;
            *(s32 *)0x74080 = 0x1A4;
            temp_at = temp_a6->unk3A;
            temp_a3_2 = temp_a6->unk1C->unk4A;
            var_a0 += 4;
            *(s32 *)0x74080 = temp_a3_2 | (temp_at << 8);
        } while (var_a0 != (((var_s3 + 1) * 4) + arg1));
        sp0 = temp_a6;
    }
    if (arg1->unkB3 != 0) {
        if (sp0->unk14 == 0) {
            if (arg1->unkB5 != 0) {
                goto block_10;
            }
        } else {
            goto block_11;
        }
    } else {
block_10:
block_11:
        __glMgrasWrite(arg0, arg0, 0x1A3, arg2, SYMBOL_LOCATION.unk12C, 1);
        if (unksp10 != 0) {
            var_a0_2 = (arg2 * 4) + arg1;
            do {
                temp_a3_3 = var_a0_2->unk14;
                *(void *)0x74080 = 0xEC10;
                *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk12C;
                *(void *)0x74080 = (s32) SYMBOL_LOCATION.unk134;
                *(void *)0x74080 = 0x1A5;
                temp_a3_4 = temp_a3_3->unk38;
                temp_at_2 = temp_a3_3->unk1C->unk4A;
                var_a0_2 += 4;
                *(void *)0x74080 = (s32) ((temp_a3_4 + temp_at_2) & 0xFF);
            } while (var_a0_2 != (((var_s3 + 1) * 4) + arg1));
        }
    }
}

void mgrTM_RemoveTex(f32 *arg0, __GLcontext *arg1) {
    __GLcontext *var_s0;
    void (*temp_a4)(__GLcontext *, s8 *);

    var_s0 = arg1;
loop_4:
    temp_a4 = var_s0->imports.fatal;
    var_s0 += 4;
    if (temp_a4 != NULL) {
        mgrTM_RemoveLev(arg0, (s64) arg1, (void *) temp_a4->unk3F);
    }
    if (var_s0 != (arg1 + 0x38)) {
        goto loop_4;
    }
    arg1->exports.destroyContext = NULL;
    arg1->unkB9 = 0;
    arg1->unkB7 = 0;
    arg1->unkB4 = 0;
    arg1->unkC0 = 0;
    arg1->unkA0 = 0;
}

void mgrTM_RemoveLev(__GLcontext *arg0, void *arg1, s32 arg2) {
    s64 sp28;
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 *temp_a4;
    f32 *temp_s2;
    f32 *var_a4;
    s32 temp_a1_3;
    s32 var_a3;
    s64 var_ra;
    void *temp_a0;
    void *temp_a4_2;
    void *temp_s4;
    void *var_a0;
    void *var_a0_2;

    var_ra = saved_reg_ra;
    temp_s4 = (arg2 * 4) + arg1;
    temp_a4 = temp_s4->unk14;
    var_a0 = arg1;
    if (temp_a4 != NULL) {
        temp_a1 = arg1->unk10;
        temp_s2 = temp_a4->unk1C;
        if ((temp_a1 != NULL) && (temp_a1 == temp_s2)) {
            temp_a4->unk1C = NULL;
            var_a3 = 0;
            temp_a1_2 = arg1->unk10;
loop_7:
            temp_a4_2 = var_a0->unk14;
            if ((temp_a4_2 != NULL) && (var_a4 = (f32 *)1, (temp_a4_2->unk1C == temp_a1_2))) {

            } else {
                var_a4 = NULL;
            }
            if (var_a4 == NULL) {
                var_a0 += 4;
                var_a3 += 1;
                if ((arg1 + 0x38) != var_a0) {
                    goto loop_7;
                }
            }
            if (var_a3 != 0xE) {
                temp_a1_2->unk4 = temp_a4_2;
            } else {
                mgrTM_MakeResident(arg0, temp_a1_2, NULL, 1, var_a4);
                mgrTM_MakeResident(arg0, arg1->unk10, NULL, 0);
                if (temp_a1_2->unk55 != 0) {
                    mgrTM_UnlockPages(arg0, arg1->unk10, 1);
                }
                mgrTM_SaveData(arg0, (bitwise f32 *) arg1->unk10->unk0);
                temp_a1_2->unk0 = M2C_ERROR(/* Read from unset register $v0 */);
                mgrTM_RemoveLev(temp_a1_2, 0);
                mgrTM_RemoveLev(temp_a1_2, 1);
                sub_0dac0000(arg0, arg1->unk10);
                arg1->unk10 = NULL;
                arg1->unkA0 = (u16) (arg1->unkA0 - 1);
                var_ra = sp28;
            }
            goto block_13;
        }
        var_a0_2 = arg1;
        if (temp_s2 != NULL) {
            mgrTM_MakeResident(arg0, temp_s2, NULL, 1, temp_a4);
            mgrTM_MakeResident(arg0, temp_s2, NULL, 0);
            if (temp_s2->unk55 != 0) {
                mgrTM_UnlockPages(arg0, temp_s2, 1);
            }
            mgrTM_SaveData(arg0, (bitwise f32 *) temp_s2->unk0);
            temp_s2->unk0 = M2C_ERROR(/* Read from unset register $v0 */);
            mgrTM_RemoveLev(temp_s2, 0);
            mgrTM_RemoveLev(temp_s2, 1);
            sub_0dac0000(arg0, temp_s2);
            arg1->unkA0 = (u16) (arg1->unkA0 - temp_a4->unk30);
            var_ra = sp28;
block_13:
            var_a0_2 = arg1;
        }
        arg1->unk4C = 0;
        temp_s4->unk14 = NULL;
loop_15:
        temp_a1_3 = var_a0_2->unk14;
        var_a0_2 += 4;
        if (temp_a1_3 == 0) {
            if ((arg1 + 0x38) != var_a0_2) {
                goto loop_15;
            }
        } else {
            arg1->unk4C = temp_a1_3;
        }
        temp_a0 = arg0->unk91FC;
        if (temp_a0->unk1E8 == temp_s4->unk14) {
            sp28 = var_ra;
            temp_a0->unk1E8 = 0;
        }
        sp28 = var_ra;
        arg0->imports.free(arg0, temp_s4->unk14);
        arg1->unkC0 = 0;
    }
}

void RemoveUsed(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a4;
    void *temp_a3;

    temp_a4 = arg1 * 4;
    if (arg0 != 0) {
        temp_a3 = temp_a4 + arg0;
        if (temp_a3->unk18 != 0) {
            (temp_a3->unk10 + temp_a4)->unk8 = (s32) temp_a3->unk8;
            temp_a0 = temp_a3->unk8;
            if (temp_a0 != 0) {
                (temp_a4 + temp_a0)->unk10 = (s32) temp_a3->unk10;
            }
        }
    }
}

void mgrTM_SaveData(__GLcontext *arg0, s64 arg1) {
    s64 sp0;
    f32 *temp_a1;
    s32 var_s2;
    void *var_a0;
    void *var_s0;

    sp0 = arg1;
    mgrTM_VidTexWait(0, NULL);
    if (arg0->unk91FC->unk4D4 == 0) {
        var_s2 = 0x30;
loop_3:
        var_a0 = var_s2 + arg0->unk91FC;
        var_s0 = var_a0->unk8;
        if (var_s0 != var_a0) {
loop_6:
            temp_a1 = var_s0->unk18;
            if ((temp_a1 != NULL) && (temp_a1->unk55 == 0)) {
                mgrTM_SaveData(arg0, temp_a1);
                var_a0 = var_s2 + arg0->unk91FC;
            }
            var_s0 = var_s0->unk8;
            if (var_s0 != var_a0) {
                goto loop_6;
            }
        }
        var_s2 += 0x30;
        arg0->unk91FC->unk4D4 = 1;
        if (var_s2 != 0xF0) {
            goto loop_3;
        }
    } else {
        mgrTM_SaveData(arg0, (f32 *) sp0);
    }
}

void mgrTM_DoSaveData(__GLcontext *arg0, f32 *arg1) {
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a6;
    u8 temp_a0;
    void *temp_s0;
    void *temp_s7;

    temp_s0 = arg0->unk91FC;
    temp_s7 = *arg1->unk4;
    __glMgrasWrite(arg0, 0x181, 0xD6D6, SYMBOL_LOCATION.unkDC, 0);
    __glMgrasWrite(arg0, arg0, 0x183, 0, SYMBOL_LOCATION.unkE4, 0);
    __glMgrasWrite(arg0, arg0, 0x18C, 0x80000, SYMBOL_LOCATION.unk108, 0);
    if (temp_s0->unk488 != 0) {
        __glMgrasWrite(arg0, arg0, 0x18A, 0, SYMBOL_LOCATION.unk100, 0);
        temp_s0->unk488 = 0;
    }
    var_a6 = temp_s0->unk48C;
    if (temp_s7->unkB9 != 0) {
        temp_a0 = arg1->unk54;
        if (temp_a0 == var_a6) {
            var_a6 = temp_a0 ^ 1;
            temp_s0->unk48C = var_a6;
        }
        if (temp_s0->unk494 != (s32) arg1->unk54) {
            temp_s0->unk494 = (s32) arg1->unk54;
        }
    }
    __glMgrasWrite(arg0, arg0, 0x1A1, var_a6 * 8, SYMBOL_LOCATION.unk124, 0);
    temp_a5 = arg1->unk52 * 8;
    temp_a6 = temp_s0->unk494 << 7;
    __glMgrasWrite(arg0, arg0, 0x111, (arg0->unk924C << 5) | temp_a6 | temp_a5, SYMBOL_LOCATION.unkD4, 0, temp_a5, temp_a6);
    __glMgrasWrite(arg0, arg0, 0x180, (arg1->unk53 * 4) | 0x11800, SYMBOL_LOCATION.unkD8, 0, 0x11800);
    if (temp_s0->unk45C == 0) {
        mgrTM_UnlockPages(arg0);
    }
    if (arg1->unk40 == 0) {
        mgrTM_UnlockPages(arg0, arg1, 1);
    }
    mgrTM_SR_TexRead(arg0, arg1);
    temp_s0->unk1E4 = 0;
    temp_s0->unk1E8 = 0;
    arg1->unk55 = 1;
}

void RestoreData(__GLcontext *arg0, void *arg1) {
    s64 sp8;
    s32 sp0;
    s16 temp_a5_3;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_v1;
    u8 temp_a6_2;
    void *temp_s1;
    void *temp_s3;
    void *temp_s7;

    sp8 = arg0 + 0x10000;
    temp_s1 = arg0->unk91FC;
    temp_s3 = arg1->unk18;
    temp_s7 = *temp_s3->unk4;
    if (arg0->unk9258 != temp_s1->unk4CC) {
        temp_a0 = arg0->unk7B48;
        if (ioctl(temp_a0, 0x6D670029U, temp_a0, 0x6D670029) < 0) {
            perror(&sub_0dbe0000 - 0x3DE0);
            abort();
        }
        sp8->unk-6DA8 = (s32) temp_s1->unk4CC;
    }
    sp0 = 0;
    temp_a6 = (temp_s3->unk54 & 3) * 8;
    temp_a7 = (temp_s3->unk52 & 3) * 2;
    temp_a5 = (sp0 & ~6) | temp_a7;
    temp_v1 = (temp_a5 & ~0x18) | temp_a6;
    sp0 = temp_v1;
    temp_a2 = (temp_v1 & ~0x60) | ((temp_s3->unk53 & 3) << 5) | 0x4000;
    sp0 = temp_a2;
    __glMgrasWrite(arg0, arg0, 0x1A1, temp_a2, SYMBOL_LOCATION.unk124, 0, temp_a5, temp_a6, temp_a7);
    if (temp_s7->unkB9 != 0) {
        temp_a6_2 = temp_s3->unk54;
        if (temp_s1->unk48C != temp_a6_2) {
            temp_s1->unk48C = (s32) temp_a6_2;
        }
        if (temp_s1->unk494 == temp_s3->unk54) {
            temp_a6_3 = temp_s3->unk54 ^ 1;
            temp_s1->unk494 = temp_a6_3;
            temp_a6_4 = temp_a6_3 << 7;
            temp_a5_2 = temp_s3->unk52 * 8;
            __glMgrasWrite(arg0, arg0, 0x111, (sp8->unk-6DB4 << 5) | temp_a6_4 | temp_a5_2, SYMBOL_LOCATION.unkD4, 0, temp_a5_2, temp_a6_4);
        }
    }
    __glMgrasWrite(arg0, arg0, 0x1A3, 0, SYMBOL_LOCATION.unk12C, 1);
    *(s32 *)0x74080 = 0xEC10;
    *(s32 *)0x74080 = SYMBOL_LOCATION.unk12C;
    *(s32 *)0x74080 = SYMBOL_LOCATION.unk130;
    *(s32 *)0x74080 = 0x1A4;
    temp_a5_3 = arg1->unk22;
    *(s32 *)0x74080 = (s32) temp_a5_3;
    __glMgrasWrite(arg0, arg0, 0x1A2, 0xD60, SYMBOL_LOCATION.unk128, 1, temp_a5_3, (s32 *)0x74080, 0x1A4);
    mgrTM_SR_TexLoad(arg0, arg1);
    temp_s1->unk1E4 = 0;
    temp_s1->unk1E8 = 0;
}

void desc_alloc(void *arg0, ? *arg1, s32 arg3) {
    s64 sp18;
    ? *temp_s2;
    ? *var_a0_2;
    ? *var_a1;
    ? *var_a5;
    ? *var_s2;
    ? *var_v0_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a0;
    s32 var_a3;
    s32 var_a6;
    s32 var_v0;
    s32 var_v0_3;
    s64 var_ra;
    void *temp_at;
    void *temp_at_2;
    void *temp_at_3;
    void *temp_s1;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    temp_s1 = arg0->unk91FC;
    if ((arg0 + 0x8A2C) == arg1) {
        var_v0 = 0;
        temp_s1->unk480 = 0;
        if (temp_s1->unk484 > 0) {
            do {
                temp_a2 = var_v0 * 4;
                arg0->unkC(arg0, *(temp_s1->unk47C + temp_a2), temp_a2, var_a3);
                var_v0 = temp_s1->unk480 + 1;
                var_a3 = var_v0 < temp_s1->unk484;
                temp_s1->unk480 = var_v0;
            } while (var_a3 != 0);
            var_ra = sp18;
        }
        temp_a1 = temp_s1->unk47C;
        if (temp_a1 != 0) {
            sp18 = var_ra;
            arg0->unkC(arg0, temp_a1);
        }
        return;
    }
    if (arg1 == NULL) {
        temp_v1 = temp_s1->unk480 - 1;
        temp_s1->unk480 = temp_v1;
        if (temp_v1 < 0) {
            temp_v0 = temp_s1->unk484;
            temp_v1_2 = temp_v0 >> 0x1F;
            temp_v1_3 = temp_v0 >> 0x1F;
            if ((((((temp_v0 ^ temp_v1_2) - temp_v1_2) & 0xFF) ^ temp_v1_3) - temp_v1_3) == 0) {
                temp_v0_2 = arg0->unk8(arg0, temp_s1->unk47C, (temp_v0 * 4) + 0x400);
                temp_s1->unk47C = temp_v0_2;
                if (temp_v0_2 == 0) {
                    __glSetError(0x505);
                    perror(&sub_0dbe0000 - 0x3DC8);
                    abort();
                }
            }
            var_v0_2 = arg0->unk0(arg0, 0x3000);
            var_ra = sp18;
            *(temp_s1->unk47C + (temp_s1->unk484 * 4)) = var_v0_2;
            temp_s1->unk478 = var_v0_2;
            if (var_v0_2 == NULL) {
                __glSetError(0x505);
                perror(&sub_0dbe0000 - 0x3DB8);
                abort();
                var_v0_2 = temp_s1->unk478;
                var_ra = sp18;
            }
            var_a6 = 0;
            var_s2 = var_v0_2;
            var_a0 = 3;
            var_a5 = var_v0_2 + 0x30;
            do {
                *var_s2 = var_a5;
                var_a5 += 0x30;
                var_s2 += 0x30;
                var_a6 += 1;
                var_s2->unk-2C = 0;
                var_a0 -= 1;
                var_s2->unk-28 = 0;
            } while (var_a0 != 0);
            var_v0_3 = var_a6;
            var_a1 = var_a5;
            var_a0_2 = var_s2;
            do {
                var_a0_2 += 0xC0;
                var_a0_2->unk-2C = 0;
                var_a0_2->unk-28 = 0;
                var_a0_2->unk-5C = 0;
                var_a0_2->unk-58 = 0;
                var_a0_2->unk-8C = 0;
                var_a0_2->unk-88 = 0;
                var_a0_2->unk-BC = 0;
                var_a0_2->unk-B8 = 0;
                var_v0_3 += 4;
                temp_at = var_a1 + 0x30;
                var_a0_2->unk-90 = temp_at;
                temp_at_2 = temp_at + 0x30;
                var_a0_2->unk-60 = temp_at_2;
                var_a0_2->unk-C0 = var_a1;
                temp_at_3 = temp_at_2 + 0x30;
                var_a1 = temp_at_3 + 0x30;
                var_a0_2->unk-30 = temp_at_3;
            } while (var_v0_3 != 0xFF);
            temp_s1->unk484 = (s32) (temp_s1->unk484 + 1);
            temp_s1->unk480 = (s32) (temp_s1->unk480 + 0x100);
        }
        temp_s2 = temp_s1->unk478;
        temp_s1->unk478 = (? *) *temp_s2;
        if (temp_s2 != NULL) {
            sp18 = var_ra;
            bzero(temp_s2, 0x30U);
        }
        return;
    }
    arg1->unk8 = 0;
    arg1->unk4 = 0;
    arg1->unk0 = temp_s1->unk478;
    temp_s1->unk478 = arg1;
    temp_s1->unk480 = (s32) (temp_s1->unk480 + 1);
}

void __glMgrBindHWContextToThread(__GLcontext *gc, s32 arg1, s32 *arg2, ...) {
    s64 sp8;
    s32 sp0;
    s32 temp_a0;
    s32 var_a0;
    s32 var_a5;

    sp8 = (s64) gc;
    if (arg1 != 0) {
        var_a0 = *arg2;
        var_a5 = var_a0;
    } else {
        var_a0 = 0;
        if (__glCurrentContext == NULL) {
            *arg2 = 0;
        } else {
            var_a0 = __glCurrentContext->unk7B4C;
            *arg2 = var_a0;
        }
        var_a5 = sp8->unk7B4C;
    }
    if ((arg1 != 0) || (var_a0 != var_a5)) {
        sp0 = var_a5;
        temp_a0 = sp8->unk7B48;
        if (ioctl(temp_a0, 0x3EAU, temp_a0, 0x3EA, sp, var_a5) < 0) {
            sp8->unk14(sp8, &sub_0dbe0000 - 0x3DA8);
        }
    }
}

void __glMgrFreeTextureManager(__GLcontext *gc, ...) {
    s64 sp8;
    __GLcontext *temp_a1;
    __GLcontext *temp_at;
    __GLcontext *var_s2;
    f32 *temp_s6;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_a1_2;
    void *temp_s1;
    void *var_s1;

    temp_s6 = gc->unk91FC;
    gc->unk7B48 = gc->imports.fclose(gc, gc->unk9D48);
    mgrTM_SaveData(gc, NULL, sp);
    unksp28 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_at = __glCurrentContext;
    __glCurrentContext = gc;
    var_s2 = gc + 0x8A30;
    var_s1 = gc + 0x10000;
    sp8 = (s64) temp_at;
loop_2:
    temp_a1 = var_s1->unk-750C;
    if ((var_s1 != (void *)0x75D0) && (temp_a1 == NULL)) {
        mgrTM_RefreshDim(var_s2, temp_a1);
    }
    var_s1 += 0xCC;
    if (var_s1->unk-750C->exports.makeCurrent != NULL) {
        __glNamesUnlockData(gc, var_s1->unk-750C);
    }
    mgrTM_RemoveTex((f32 *) gc, var_s2);
    var_s2 += 0xCC;
    if (var_s1 != (&gc->unk72C + 0x10000)) {
        goto loop_2;
    }
    temp_s1 = temp_s6->unk49C;
    temp_a3 = temp_s1->unk8 - 1;
    temp_s1->unk8 = temp_a3;
    temp_a1_2 = temp_s6->unk49C;
    temp_a2 = temp_a1_2->unk8;
    if (temp_a2 == 0) {
        __glNamesFreeArray(gc, temp_a1_2, temp_a2, temp_a3);
        mgrTM_FreeDMAPool(gc);
        mgrTM_SaveData(gc, gc + 0x8A2C);
        sub_0dac0000(gc, temp_s6);
        gc->unk91FC = NULL;
    }
    mgrTM_RemoveTex((f32 *) gc, gc->unk916C);
    gc->unk916C = NULL;
    if (unksp28 != 0) {
        mgrTM_SaveData(gc, (f32 *)1, sp);
    }
    __glCurrentContext = (__GLcontext *) sp8;
}

void mgrTM_AppendPages(__GLcontext *arg0, void *arg1, void *arg2) {
    s64 sp30;
    __GLcontext *var_s0_2;
    s16 temp_a6;
    s16 temp_a7;
    s16 var_s0;
    s32 temp_a0;
    s32 temp_a0_3;
    s32 temp_a3;
    s64 var_ra;
    u16 temp_a0_2;
    u32 temp_v0;
    void *temp_a5;
    void *temp_s5;
    void *temp_v0_2;

    var_ra = saved_reg_ra;
    temp_a5 = arg0->unk91FC;
    var_s0 = 0;
    temp_s5 = arg1->unk10;
    if (arg0->unk9258 != temp_a5->unk4CC) {
        temp_a0 = arg0->unk7B48;
        var_ra = sp30;
        if (ioctl(temp_a0, 0x6D670029U, temp_a0, 0x6D670029, temp_a5) < 0) {
            perror(&sub_0dbe0000 - 0x3DE0);
            abort();
            var_ra = sp30;
        }
        arg0->unk9258 = (s32) arg0->unk91FC->unk4CC;
    }
    if ((temp_s5->unk18 == 0) && (*temp_s5->unk1C < 0.0f)) {
        var_s0 = temp_s5->unk24;
    }
    temp_a7 = arg2->unk4C;
    temp_a6 = arg1->unk20;
    temp_a0_2 = arg0->unk91FC->unk4D0;
    temp_v0 = (temp_a6 + temp_a7) - var_s0;
    var_s0_2 = temp_v0 - temp_a6;
    if (temp_a0_2 < temp_v0) {
        sp30 = var_ra;
        var_s0_2 = temp_a0_2 - temp_a6;
    }
    arg0->unk921C = (s32) temp_a7;
    arg0->unk9228 = (s32) temp_a7;
    sp30 = var_ra;
    temp_a3 = arg2->unk34;
    arg0->unk9220 = temp_a3;
    arg0->unk922C = (s32) arg2->unk2C;
    temp_a0_3 = arg0->unk7B48;
    if (ioctl(temp_a0_3, 0x6D67000FU, temp_a0_3, 0x6D67000F, arg0 + 0x9214, temp_a3) < 0) {
        arg0->unk91FC->unk4D0 = (s16) arg1->unk20;
        return;
    }
    mgrTM_RefreshDim(arg0, var_s0_2, 0U);
    arg2->unk58 = 1;
    temp_v0_2 = arg0->unk91FC;
    temp_v0_2->unk4CC = (s32) (temp_v0_2->unk4CC + 1);
    arg0->unk9258 = (s32) arg0->unk91FC->unk4CC;
}

void mgrTM_LockSaveData(__GLcontext *arg0, void *arg1, f32 *arg2) {
    f32 *var_s0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v1;
    void *temp_at;
    void *temp_s4;

    var_s0 = arg2;
    temp_at = arg1->unk18;
    arg0->unk9238 = (s32) arg1->unk24;
    temp_v1 = arg1->unk20 - temp_at->unk48;
    arg0->unk923C = (s32) (temp_at->unk30 + (temp_v1 * 0xC));
    temp_s4 = arg0 + 0x9230;
    arg0->unk9240 = (s32) arg1->unk24;
    arg0->unk9244 = (s32) (temp_at->unk2C + (temp_v1 * 8));
    temp_a0 = arg0->unk7B48;
    if (ioctl(temp_a0, 0x6D67000EU, temp_a0, 0x6D67000E, temp_s4) < 0) {
loop_4:
        mgrTM_UnlockPages(arg0, var_s0, arg1->unk24);
        var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            perror(&sub_0dbe0000 - 0x3D88);
            abort();
        }
        temp_a0_2 = arg0->unk7B48;
        if (ioctl(temp_a0_2, 0x6D67000EU, temp_a0_2, 0x6D67000E, temp_s4) < 0) {
            goto loop_4;
        }
    }
}

void mgrTM_UnlockSaveData(void *arg0, void *arg1) {
    ? *temp_v0;
    ? *var_a0;
    ? *var_v0_2;
    s16 temp_s1;
    s16 var_a0_2;
    s16 var_v0;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 var_a4;

    unksp8 = arg0 + 0x10000;
    unksp20 = (s64) arg1->unk18;
    arg0->unk920C = (s32) arg1->unk24;
    temp_s1 = arg1->unk24;
    temp_v0 = calloc(temp_s1, 4);
    if (temp_v0 == NULL) {
        perror(&sub_0dbe0000 - 0x3D58);
        abort();
    }
    var_a4 = temp_s1 & 3;
    var_v0 = arg1->unk20;
    if (temp_s1 > 0) {
        var_a0 = temp_v0;
        if (var_a4 != 0) {
            do {
                *var_a0 = (? *) var_v0;
                var_v0 += 1;
                var_a4 -= 1;
                var_a0 += 4;
            } while (var_a4 != 0);
        }
        if ((temp_s1 >> 2) != 0) {
            var_v0_2 = var_a0;
            var_a0_2 = var_v0;
            do {
                var_v0_2 += 0x10;
                temp_a3 = var_a0_2 + 1;
                var_v0_2->unk-C = temp_a3;
                temp_a3_2 = temp_a3 + 1;
                var_v0_2->unk-8 = temp_a3_2;
                var_v0_2->unk-10 = (s32) var_a0_2;
                temp_a3_3 = temp_a3_2 + 1;
                var_a0_2 = temp_a3_3 + 1;
                var_v0_2->unk-4 = temp_a3_3;
            } while (var_v0_2 != &temp_v0[temp_s1]);
        }
    }
    unksp8->unk-6DF0 = temp_v0;
    temp_a0 = arg0->unk7B48;
    if (ioctl(temp_a0, 0x6D67001FU, temp_a0, 0x6D67001F, arg0 + 0x9204) < 0) {
        perror(&sub_0dbe0000 - 0x3D30);
        abort();
    }
    free(temp_v0);
    unksp20->unk58 = 0;
}

void mgrTM_UnlockPages(__GLcontext *arg0, f32 *arg1, u32 arg2, s32 arg4) {
    s64 sp2040;
    s64 sp2038;
    f32 *temp_a1;
    f32 *temp_a5;
    f32 *temp_s4;
    f32 *temp_v0;
    f32 *var_s0;
    f32 *var_s0_2;
    f32 *var_s6;
    s16 temp_a0;
    s16 var_v0;
    s16 var_v0_2;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 var_a2;
    s32 var_a4;
    s64 var_ra;
    s64 var_s4;
    u16 temp_a4_4;
    u32 var_s1;

    var_s4 = saved_reg_s4;
    var_ra = saved_reg_ra;
    var_a4 = arg4;
    var_s1 = 0;
    var_s6 = arg1;
    temp_v0 = arg0->unk91FC;
    if (arg2 < 0x801U) {
        temp_a0 = temp_v0->unk20;
        if (temp_v0->unk4D0 != temp_a0) {
            temp_v0->unk4D0 = (u16) temp_a0;
        }
        var_s0 = temp_v0;
        if (arg2 != 0) {
loop_6:
            var_s0 = var_s0->unk10;
            var_s4 = sp2040;
            if (var_s0 != temp_v0) {
                temp_a1 = var_s0->unk18;
                var_s1 += var_s0->unk24;
                if (temp_a1 != NULL) {
                    mgrTM_MakeResident(arg0, temp_a1, var_s0, 0, (f32 *) var_a4);
                    var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
                    if (var_s6 == var_s0) {
                        var_s6 = M2C_ERROR(/* Read from unset register $v0 */);
                    }
                }
                var_a4 = var_s1 < arg2;
                var_s4 = sp2040;
                if (var_a4 != 0) {
                    goto loop_6;
                }
            }
            var_ra = sp2038;
        }
        if (var_s1 != 0) {
            if (arg2 < var_s1) {
                sp2040 = var_s4;
                sp2038 = var_ra;
                mgrTM_process_level(arg0, var_s0, (f32 *) arg2, 0U, (f32 *) var_a4);
                var_s0_2 = M2C_ERROR(/* Read from unset register $v0 */);
                if (var_s6 == var_s0) {

                }
                var_s1 = arg2;
            } else {
                sp2040 = var_s4;
                var_s0_2 = var_s0->unk10;
            }
            temp_s4 = var_s0_2->unk4;
            arg0->unk920C = var_s1;
            var_v0 = temp_s4->unk20;
            if (var_s1 != 0) {
                var_a0 = sp;
                var_a2 = var_s1 & 3;
                if (var_a2 != 0) {
                    do {
                        *var_a0 = (s32) var_v0;
                        var_v0 += 1;
                        var_a2 -= 1;
                        var_a0 += 4;
                    } while (var_a2 != 0);
                }
                if (((s32) var_s1 >> 2) != 0) {
                    var_a0_2 = var_a0;
                    var_v0_2 = var_v0;
                    do {
                        var_a0_2 += 0x10;
                        temp_a4 = var_v0_2 + 1;
                        var_a0_2->unk-C = temp_a4;
                        temp_a4_2 = temp_a4 + 1;
                        var_a0_2->unk-8 = temp_a4_2;
                        var_a0_2->unk-10 = (s32) var_v0_2;
                        temp_a4_3 = temp_a4_2 + 1;
                        var_v0_2 = temp_a4_3 + 1;
                        var_a0_2->unk-4 = temp_a4_3;
                    } while (var_a0_2 != ((var_s1 * 4) + sp));
                }
            }
            sp2038 = var_ra;
            arg0->unk9210 = (s32 *) sp;
            temp_a0_2 = arg0->unk7B48;
            if (ioctl(temp_a0_2, 0x6D67001FU, temp_a0_2, 0x6D67001F, arg0 + 0x9204) < 0) {
                sub_0dac0000(&sub_0dbe0000 - 0x3CF8);
                abort();
            }
            var_s0_2->unk4 = (f32 *) temp_s4->unk4;
            temp_s4->unk4->unk10 = var_s0_2;
            temp_a5 = arg0->unk91FC;
            temp_a4_4 = (var_s0_2->unk28 + 1) & 0xFFFF;
            temp_a5->unk4D0 = temp_a4_4;
            temp_v0->unk20 = (s16) temp_a4_4;
            temp_v0->unk28 = temp_a4_4;
            mgrTM_process_level(arg0, temp_s4, var_s0_2, 0U, (f32 *) temp_a4_4, temp_a5);
            if (arg2 == var_s1) {

            }
        }
    }
}

void mgrTM_AllocSaveData(void *arg0, void *arg1, s32 arg2) {
    s64 sp10;
    void *sp8;
    void *sp4;
    void *sp0;
    s16 temp_lo;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_at_2;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_s2;
    s32 var_v0;
    s32 var_v0_3;
    s64 temp_a1;
    void *temp_at;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;
    void *var_a4_2;
    void *var_a5_2;
    void *var_s3;
    void *var_v0_2;

    temp_at = arg1->unk0;
    temp_lo = arg1->unk4E * temp_at->unk2C;
    temp_at->unk24 = temp_lo;
    arg1->unk4C = temp_lo;
    temp_v0 = arg0->unk81D8 + (temp_lo << 0xC);
    if (arg2 != 0) {
        var_v0 = amalloc(temp_v0, arg0->unk91FC->unk4D8);
        arg1->unk40 = var_v0;
        if (var_v0 == 0) {
            perror(&sub_0dbe0000 - 0x3CC8);
            abort();
            var_v0 = arg1->unk40;
        }
    } else {
        var_v0 = sub_0dab0000(temp_v0);
        arg1->unk40 = var_v0;
        if (var_v0 == 0) {
            perror(&sub_0dbe0000 - 0x3CB8);
            abort();
            var_v0 = arg1->unk40;
        }
    }
    temp_a0 = arg0->unk81D8;
    temp_a4 = (temp_a0 - 1) & var_v0;
    var_s2 = var_v0 + temp_a4;
    if (temp_a4 != 0) {
        var_s2 = var_v0 + (temp_a0 - temp_a4);
    }
    arg1->unk3C = var_s2;
    temp_v0_2 = arg0->unk0(arg0, temp_lo * 8);
    var_s3 = temp_v0_2;
    arg1->unk2C = temp_v0_2;
    if ((temp_v0_2 == NULL) || (temp_a1 = temp_lo * 4, sp10 = temp_a1, temp_v0_3 = arg0->unk0(arg0, temp_a1), sp0 = temp_v0_3, arg1->unk34 = temp_v0_3, (temp_v0_3 == NULL)) || (temp_v0_4 = arg0->unk0(arg0, sp10), sp4 = temp_v0_4, arg1->unk38 = temp_v0_4, (temp_v0_4 == NULL)) || (temp_v0_5 = arg0->unk0(arg0, temp_lo * 0xC), sp8 = temp_v0_5, arg1->unk30 = temp_v0_5, (temp_v0_5 == NULL))) {
        perror(&sub_0dbe0000 - 0x3DB8);
        abort();
    }
    var_a1 = sp0;
    var_v0_2 = sp8;
    var_a4 = 0;
    if (temp_lo != 0) {
        var_a0 = sp4;
        var_a5 = temp_lo & 3;
        if (var_a5 != 0) {
            do {
                var_a0 += 4;
                var_v0_2 += 0xC;
                var_a1 += 4;
                var_s3 += 8;
                var_a4 += 1;
                var_a5 -= 1;
                var_s3->unk-8 = var_s2;
                var_s3->unk-4 = 0x1000;
                var_a1->unk-4 = var_s2;
                var_v0_2->unk-8 = var_s2;
                var_s2 += 0x1000;
                var_v0_2->unk-4 = 0x1000;
                var_a0->unk-4 = 0;
            } while (var_a5 != 0);
        }
        var_a5_2 = var_v0_2;
        var_a1_2 = var_s3;
        var_a4_2 = var_a0;
        if ((temp_lo >> 2) != 0) {
            var_a6 = var_s2;
            var_a0_2 = var_a1;
            var_v0_3 = var_a4;
            do {
                var_a4_2 += 0x10;
                var_a5_2 += 0x30;
                var_a0_2 += 0x10;
                var_a1_2 += 0x20;
                var_v0_3 += 4;
                temp_v1 = var_a6 + 0x1000;
                temp_at_2 = temp_v1 + 0x1000;
                temp_a3 = temp_at_2 + 0x1000;
                var_a1_2->unk-20 = var_a6;
                var_a1_2->unk-1C = 0x1000;
                var_a0_2->unk-10 = var_a6;
                var_a5_2->unk-2C = var_a6;
                var_a6 = temp_a3 + 0x1000;
                var_a5_2->unk-28 = 0x1000;
                var_a4_2->unk-10 = 0;
                var_a1_2->unk-18 = temp_v1;
                var_a1_2->unk-14 = 0x1000;
                var_a0_2->unk-C = temp_v1;
                var_a5_2->unk-20 = temp_v1;
                var_a5_2->unk-1C = 0x1000;
                var_a4_2->unk-C = 0;
                var_a1_2->unk-10 = temp_at_2;
                var_a1_2->unk-C = 0x1000;
                var_a0_2->unk-8 = temp_at_2;
                var_a5_2->unk-14 = temp_at_2;
                var_a5_2->unk-10 = 0x1000;
                var_a4_2->unk-8 = 0;
                var_a1_2->unk-8 = temp_a3;
                var_a1_2->unk-4 = 0x1000;
                var_a0_2->unk-4 = temp_a3;
                var_a5_2->unk-8 = temp_a3;
                var_a5_2->unk-4 = 0x1000;
                var_a4_2->unk-4 = 0;
            } while (var_v0_3 != temp_lo);
        }
    }
}

void mgrTM_FreeSaveData(__GLcontext *arg0, f32 *arg1, s32 arg2) {
    s64 sp28;
    s32 temp_a0;

    if (arg1->unk40 != 0) {
        if (arg2 != 0) {
            mgrTM_MakeResident(arg0, arg1, NULL, 0);
        }
        sub_0dac0000(arg0, arg1->unk2C);
        arg0->imports.free(arg0, arg1->unk34);
        arg0->imports.free(arg0, arg1->unk30);
        arg0->imports.free(arg0, arg1->unk38);
        temp_a0 = arg1->unk40;
        sp28 = (s64) (arg0 + 0x10000);
        if (arg2 != 0) {
            afree(temp_a0, sp28->unk-6E04->unk4D8);
        } else {
            sub_0dab0000(temp_a0);
        }
        arg1->unk40 = 0;
        amallinfo(sp, sp28->unk-6E04->unk4D8);
        if ((sp14 + sp1C) == 0) {
            mgrTM_ReconstituteSavePool(arg0);
        }
    }
}

void mgrTM_InitDMAPool(__GLcontext *arg0) {
    s64 sp28;
    s64 sp20;
    f32 *temp_s1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a5;
    s32 temp_lo;
    s32 temp_v0;
    s32 var_s4;
    void *temp_a7;
    void *temp_s3;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    temp_s1 = arg0->unk91FC + 0x41C;
    mgrTM_SaveData(NULL);
    temp_s3 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_s1->unk0 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_a0 = arg0->unk7B48;
    sp20 = (s64) arg0->unk91FC;
    temp_v0 = ioctl(temp_a0, 0x6D670024U, temp_a0, 0x6D670024, 0);
    if (temp_v0 > 0) {
        temp_lo = getpagesize() * temp_v0;
        if (temp_lo <= 0x01000000) {
            goto block_3;
        }
        var_s4 = temp_lo + 0xFF800000;
    } else {
block_3:
        var_s4 = 0x800000;
    }
    arg0->unk91FC->unk4D0 = (s16) ((s32) (((u32) (var_s4 >> 0xB) >> 0x14) + var_s4) >> 0xC);
    temp_v0_2 = arg0->unk91FC;
    if (temp_v0_2->unk4D8 == 0) {
        sp28 = (s64) (temp_v0_2 + 0x4D8);
        temp_v0_3 = arg0->imports.malloc(arg0, 0x604U);
        if (temp_v0_3 == NULL) {
            unksp50 = (s64) temp_v0_3;
            perror(&sub_0dbe0000 - 0x3CA0);
            abort();
        }
        sp28->unk4 = temp_v0_3;
        temp_v0_4 = acreate(temp_v0_3 + 4, 0x400, 0, 0, mgrTM_GrowSaveArena, sp28);
        sp28->unk0 = temp_v0_4;
        amallopt(5, 0x400000, temp_v0_4);
        sp28->unk0->unk-4 = (s32) sp28;
    }
    temp_s3->unk10 = (s32) sp20;
    temp_s3->unk4 = (s32) sp20;
    sp20->unk4 = temp_s3;
    sp20->unk10 = temp_s3;
    temp_s3->unk0 = temp_s3;
    temp_s3->unkC = temp_s3;
    temp_s1->unk48 = 0;
    temp_s3->unk20 = 0;
    temp_s3->unk28 = 0;
    sp20->unk20 = 1;
    sp20->unk28 = 1;
    temp_s1->unk4E = 1;
    temp_s3->unk2C = 1;
    mgrTM_UnlockPages(arg0, temp_s1, 0, (f32 *) sp20);
    bzero(temp_s1->unk3C, 0x1000U);
    temp_s3->unk18 = 0;
    temp_s3->unk1C = (void *) (arg0->unk91FC + 0x4AC);
    temp_a7 = arg0->unk91FC;
    temp_a7->unk110 = 1;
    temp_a7->unk118 = 1;
    temp_a5 = temp_s1->unk34;
    temp_a0_2 = arg0->unk7B48;
    if (ioctl(temp_a0_2, 0x6D67000DU, temp_a0_2, 0x6D67000D, sp, 1, 0x1000, temp_a5, 0xC, temp_a7, 0xC, 1, 1, temp_a5, 0x1000, 0, 1, temp_s1->unk2C) < 0) {
        perror(&sub_0dbe0000 - 0x3C80);
        abort();
    }
    arg0->unk91FC->unk4CC = 1;
    arg0->unk9258 = 1;
}

void mgrTM_FreeDMAPool(__GLcontext *arg0) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    ? *temp_a0_4;
    ? *var_s0_2;
    f32 *temp_s3_2;
    s16 var_s4;
    s32 temp_a0;
    s64 var_ra;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a1;
    void *temp_a2;
    void *temp_s1;
    void *temp_s3;
    void *var_s0;

    var_ra = saved_reg_ra;
    temp_s3 = arg0->unk91FC;
    var_s4 = temp_s3->unk20;
    temp_s1 = temp_s3 + 0x4D8;
    temp_s3_2 = temp_s3 + 0x41C;
    if (var_s4 >= 0x801) {
        do {
            mgrTM_UnlockPages(arg0, NULL, 0x800);
            var_s4 -= 0x800;
        } while (var_s4 >= 0x801);
        var_ra = unksp60;
    }
    if (var_s4 >= 2) {
        unksp60 = var_ra;
        mgrTM_UnlockPages(arg0, NULL, var_s4 - 1);
    }
    if (temp_s3_2->unk40 != 0) {
        unksp60 = var_ra;
        temp_a0 = arg0->unk7B48;
        if (ioctl(temp_a0, 0x6D67000DU, temp_a0, 0x6D67000D, sp, 1, 3, 3, 1, 1, temp_s3_2->unk3C, 0x1000) < 0) {
            perror(&sub_0dbe0000 - 0x3C60);
            abort();
        }
        mgrTM_UnlockPages(arg0, temp_s3_2, 0);
        var_ra = unksp60;
    }
    temp_a0_2 = temp_s3->unk4D8;
    if (temp_a0_2 != NULL) {
        unksp60 = var_ra;
        adelete(temp_a0_2);
    }
    temp_a1 = temp_s1->unk4;
    if (temp_a1 != NULL) {
        unksp60 = var_ra;
        arg0->imports.free(arg0, temp_a1);
    }
    var_s0 = temp_s1->unk8;
    if (var_s0 != NULL) {
        unksp60 = var_ra;
        temp_a2 = &sub_0dbe0000 - 0x3ED0;
        sp28 = (s64) (&__iob + 0x20);
        sp30 = (s64) (temp_a2 + 0x88);
        sp20 = (s64) (temp_a2 + 0x78);
        do {
            if (munmap(var_s0->unk4, var_s0->unk8) < 0) {
                perror((void *) sp20);
                fprintf(sp28, (void *) sp30, var_s0->unk4, var_s0->unk8);
                abort();
            }
            temp_a0_3 = var_s0;
            var_s0 = var_s0->unk0;
            free(temp_a0_3);
        } while (var_s0 != NULL);
        var_ra = unksp60;
    }
    var_s0_2 = temp_s1->unkC;
    if (var_s0_2 != NULL) {
        unksp60 = var_ra;
        do {
            temp_a0_4 = var_s0_2;
            var_s0_2 = *var_s0_2;
            free(temp_a0_4);
        } while (var_s0_2 != NULL);
    }
    temp_s1->unk4 = NULL;
    temp_s3->unk4D8 = NULL;
}
