Error occurred while processing instruction: sdc1 $f1, 0x48($sp)

Error occurred while processing instruction: sdc1 $f1, 0x48($sp)

Tried to use a double-precision instruction with odd-numbered float register $f1
Tried to use a double-precision instruction with odd-numbered float register $f1
typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ s32 unk98;                         /* inferred */
    /* 0x009C */ char pad9C[0x148];                 /* maybe part of unk98[0x53]? */
    /* 0x01E4 */ s8 unk1E4;                         /* inferred */
    /* 0x01E5 */ char pad1E5[4];                    /* maybe part of unk1E4[5]? */
    /* 0x01E9 */ s8 unk1E9;                         /* inferred */
    /* 0x01EA */ s8 unk1EA;                         /* inferred */
    /* 0x01EB */ s8 unk1EB;                         /* inferred */
    /* 0x01EC */ char pad1EC[0x290];                /* maybe part of unk1EB[0x291]? */
    /* 0x047C */ enum GLenum unk47C;                /* inferred */
    /* 0x0480 */ char pad480[0x150];                /* maybe part of unk47C[0x55]? */
    /* 0x05D0 */ void *unk5D0;                      /* inferred */
    /* 0x05D4 */ char pad5D4[0xA0];                 /* maybe part of unk5D0[0x29]? */
    /* 0x0674 */ void *unk674;                      /* inferred */
    /* 0x0678 */ char pad678[0x84];                 /* maybe part of unk674[0x22]? */
    /* 0x06FC */ enum GLenum unk6FC;                /* inferred */
    /* 0x0700 */ char pad700[0x26C];                /* maybe part of unk6FC[0x9C]? */
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
    /* 0x0CCD */ char padCCD[0x27];                 /* maybe part of yInverted[0x28]? */
    /* 0x0CF4 */ ? *unkCF4;                         /* inferred */
    /* 0x0CF8 */ char padCF8[4];
    /* 0x0CFC */ void *unkCFC;                      /* inferred */
    /* 0x0D00 */ s32 unkD00;                        /* inferred */
    /* 0x0D04 */ s32 unkD04;                        /* inferred */
    /* 0x0D08 */ s32 unkD08;                        /* inferred */
    /* 0x0D0C */ s32 unkD0C;                        /* inferred */
    /* 0x0D10 */ s32 unkD10;                        /* inferred */
    /* 0x0D14 */ s32 unkD14;                        /* inferred */
    /* 0x0D18 */ s32 unkD18;                        /* inferred */
    /* 0x0D1C */ s32 unkD1C;                        /* inferred */
    /* 0x0D20 */ s32 unkD20;                        /* inferred */
    /* 0x0D24 */ s32 unkD24;                        /* inferred */
    /* 0x0D28 */ s32 unkD28;                        /* inferred */
    /* 0x0D2C */ s32 unkD2C;                        /* inferred */
    /* 0x0D30 */ s32 unkD30;                        /* inferred */
    /* 0x0D34 */ char padD34[0x20];                 /* maybe part of unkD30[9]? */
    /* 0x0D54 */ s32 unkD54;                        /* inferred */
    /* 0x0D58 */ s32 unkD58;                        /* inferred */
    /* 0x0D5C */ char padD5C[8];                    /* maybe part of unkD58[3]? */
    /* 0x0D64 */ s32 unkD64;                        /* inferred */
    /* 0x0D68 */ char padD68[4];
    /* 0x0D6C */ s32 unkD6C;                        /* inferred */
    /* 0x0D70 */ s32 unkD70;                        /* inferred */
    /* 0x0D74 */ s32 unkD74;                        /* inferred */
    /* 0x0D78 */ f32 unkD78;                        /* inferred */
    /* 0x0D7C */ f32 unkD7C;                        /* inferred */
    /* 0x0D80 */ f32 unkD80;                        /* inferred */
    /* 0x0D84 */ f32 unkD84;                        /* inferred */
    /* 0x0D88 */ f32 unkD88;                        /* inferred */
    /* 0x0D8C */ f32 unkD8C;                        /* inferred */
    /* 0x0D90 */ s32 unkD90;                        /* inferred */
    /* 0x0D94 */ s32 unkD94;                        /* inferred */
    /* 0x0D98 */ s32 unkD98;                        /* inferred */
    /* 0x0D9C */ s32 unkD9C;                        /* inferred */
    /* 0x0DA0 */ s32 unkDA0;                        /* inferred */
    /* 0x0DA4 */ s32 unkDA4;                        /* inferred */
    /* 0x0DA8 */ s32 unkDA8;                        /* inferred */
    /* 0x0DAC */ s32 unkDAC;                        /* inferred */
    /* 0x0DB0 */ s32 unkDB0;                        /* inferred */
    /* 0x0DB4 */ char padDB4[0x418];                /* maybe part of unkDB0[0x107]? */
    /* 0x11CC */ s32 unk11CC;                       /* inferred */
    /* 0x11D0 */ char pad11D0[8];                   /* maybe part of unk11CC[3]? */
    /* 0x11D8 */ u8 unk11D8;                        /* inferred */
    /* 0x11D9 */ char pad11D9[3];                   /* maybe part of unk11D8[4]? */
    /* 0x11DC */ s32 unk11DC;                       /* inferred */
    /* 0x11E0 */ s32 unk11E0;                       /* inferred */
    /* 0x11E4 */ char pad11E4[4];
    /* 0x11E8 */ s32 unk11E8;                       /* inferred */
    /* 0x11EC */ char pad11EC[0xC];                 /* maybe part of unk11E8[4]? */
    /* 0x11F8 */ u8 unk11F8;                        /* inferred */
    /* 0x11F9 */ char pad11F9[3];                   /* maybe part of unk11F8[4]? */
    /* 0x11FC */ s32 unk11FC;                       /* inferred */
    /* 0x1200 */ s32 unk1200;                       /* inferred */
    /* 0x1204 */ char pad1204[4];
    /* 0x1208 */ s32 unk1208;                       /* inferred */
    /* 0x120C */ char pad120C[0xC];                 /* maybe part of unk1208[4]? */
    /* 0x1218 */ void (*unk1218)(__GLcontext *, ...); /* inferred */
    /* 0x121C */ void (*unk121C)(__GLcontext *, ...); /* inferred */
    /* 0x1220 */ void (*unk1220)(__GLcontext *, ...); /* inferred */
    /* 0x1224 */ void (*unk1224)();                 /* inferred */
    /* 0x1228 */ void (*unk1228)(__GLcontext *, ...); /* inferred */
    /* 0x122C */ void (*unk122C)(__GLcontext *, ...); /* inferred */
    /* 0x1230 */ ? *unk1230;                        /* inferred */
    /* 0x1234 */ ? *unk1234;                        /* inferred */
    /* 0x1238 */ s32 unk1238;                       /* inferred */
    /* 0x123C */ void (*unk123C)(__GLcontext *, ...); /* inferred */
    /* 0x1240 */ void (*unk1240)(__GLcontext *, ...); /* inferred */
    /* 0x1244 */ void (*unk1244)(__GLcontext *, ...); /* inferred */
    /* 0x1248 */ char pad1248[4];
    /* 0x124C */ s32 unk124C;                       /* inferred */
    /* 0x1250 */ s32 unk1250;                       /* inferred */
    /* 0x1254 */ char pad1254[0x24];                /* maybe part of unk1250[0xA]? */
    /* 0x1278 */ void (*unk1278)(__GLcontext *, ...); /* inferred */
    /* 0x127C */ void (*unk127C)(__GLcontext *, ...); /* inferred */
    /* 0x1280 */ void (*unk1280)(__GLcontext *, ...); /* inferred */
    /* 0x1284 */ void (*unk1284)(__GLcontext *, ...); /* inferred */
    /* 0x1288 */ char pad1288[8];                   /* maybe part of unk1284[3]? */
    /* 0x1290 */ s32 unk1290;                       /* inferred */
    /* 0x1294 */ s32 unk1294;                       /* inferred */
    /* 0x1298 */ s32 unk1298;                       /* inferred */
    /* 0x129C */ s32 unk129C;                       /* inferred */
    /* 0x12A0 */ char pad12A0[0x368];               /* maybe part of unk129C[0xDB]? */
    /* 0x1608 */ ? *unk1608;                        /* inferred */
    /* 0x160C */ char pad160C[4];
    /* 0x1610 */ ? unk1610;                         /* inferred */
    /* 0x1610 */ char pad1610[0x808];
    /* 0x1E18 */ ? *unk1E18;                        /* inferred */
    /* 0x1E1C */ char pad1E1C[4];
    /* 0x1E20 */ ? unk1E20;                         /* inferred */
    /* 0x1E20 */ char pad1E20[0x808];
    /* 0x2628 */ ? unk2628;                         /* inferred */
    /* 0x2628 */ char pad2628[0x764];
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x49CC];              /* maybe part of procs[0x17]? */
    /* 0x7AEC */ ? (*unk7AEC)(s32, s32, s32);       /* inferred */
    /* 0x7AF0 */ char pad7AF0[0x58];                /* maybe part of unk7AEC[0x17]? */
    /* 0x7B48 */ s32 unk7B48;                       /* inferred */
    /* 0x7B4C */ s32 unk7B4C;                       /* inferred */
    /* 0x7B50 */ ? unk7B50;                         /* inferred */
    /* 0x7B50 */ char pad7B50[0x24];
    /* 0x7B74 */ s32 unk7B74;                       /* inferred */
    /* 0x7B78 */ char pad7B78[4];
    /* 0x7B7C */ u8 unk7B7C;                        /* inferred */
    /* 0x7B7D */ char pad7B7D[0x17];                /* maybe part of unk7B7C[0x18]? */
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
    /* 0x34 */ char pad34[0x14];
} __GLexports;                                      /* size = 0x48 */

? __glMgrim_dispatchTable(?, ?, s32, s32);          /* extern */
? __glMgrim_shadowIndexcolorDispatchTable(void *, ?); /* extern */
? abort();                                          /* extern */
? close(void *, void *);                            /* extern */
f64 exp(f64, ?);                                    /* extern */
? fclose(s64, s32, s32, ? *, ? *);                  /* extern */
s64 fopen(s8 *, void *);                            /* extern */
? fprintf(void *, void *, s8 *);                    /* extern */
s32 fread(? *, ?, ?, s64);                          /* extern */
? fscanf(s64, void *, ? *);                         /* extern */
u8 *getenv(void *, s64, __GLcontextModes *, s32, s32, __GLcontextModes *, __GLcontext *, s32); /* extern */
s32 open(void *);                                   /* extern */
? perror(void *);                                   /* extern */
? sprintf(void *, void *, void *, u8, u8, u8);      /* extern */
? strcat(s8 *, void *, s32);                        /* extern */
s32 strcmp(? *, void *, s32, ? *, void *, void *);  /* extern */
s64 sysconf(?);                                     /* extern */
extern ? SYMBOL_LOCATION;
extern ? __glListExecTable;
extern ? __glMG10im_dispatchTable;
extern ? __glMG10im_rasterPosDispatchTable;
extern ? __glMgrim_normalDispatchTable;
extern ? __glMgrim_rasterPosDispatchTable;
extern ? __glMgrim_rectDispatchTable;
extern ? __glMgrim_shadowRGBcolorDispatchTable;
extern ? __glMgrim_texCoordDispatchTable;
extern ? __glMgrim_vertexDispatchTable;
extern ? __glSoftim_colorDispatchTable;
extern ? __glSoftim_dispatchTable;
extern ? __glSoftim_normalDispatchTable;
extern ? __glSoftim_rectDispatchTable;
extern ? __glSoftim_texCoordDispatchTable;
extern ? __glSoftim_vertexDispatchTable;
extern ? __gl_GenericDlOps;
extern ? __gl_varray_funcs;
extern ? __glmglc_dispatchTable;
extern ? __glmglc_normalDispatchTable;
extern ? __glmglc_rasterPosDispatchTable;
extern ? __glmglc_rectDispatchTable;
extern ? __glmglc_shadowIndexcolorDispatchTable;
extern ? __glmglc_shadowRGBcolorDispatchTable;
extern ? __glmglc_texCoordDispatchTable;
extern ? __glmglc_vertexDispatchTable;
extern ? __iob;
extern ? *__pglce_dispatchState;
extern ? sub_0da70000;
extern ? sub_0dbe0000;
extern ? sub_0dbf0000;
extern ? sub_0dc00000;

void __glMgrIoctl(__GLcontext *gc, u32 arg1, ...) {
    ioctl((s32) gc, arg1);
}

void GetBoardInfo(void *arg0) {
    s64 spA78;
    s64 spA50;
    ? spA20;
    ? sp220;
    s8 sp180;
    u8 spDD;
    ? spB0;
    s32 spA8;
    ? *spA4;
    s32 spA0;
    ? *var_a3;
    ? *var_v0_3;
    __GLcontext *temp_a0;
    s32 *var_a2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1_2;
    s32 var_a0;
    s32 var_s1;
    s32 var_v0;
    s64 *temp_at;
    s64 *temp_v1;
    s64 temp_v0;
    s64 var_v0_2;
    void *temp_a4;
    void *temp_s3;

    var_s1 = 1;
    temp_v0 = fopen(&sub_0dbe0000 - 0x4800, saved_reg_gp - 0x3D18);
    if (temp_v0 != 0) {
        fscanf(temp_v0, saved_reg_gp - 0x3D10, sp);
        var_s1 = 1;
        if (strcmp(sp, saved_reg_gp - 0x3D08) == 0) {
            var_s1 = 0;
        }
        fclose(temp_v0);
    }
    if (var_s1 == 0) {
        temp_v0_2 = M2C_ERROR(/* Read from unset register $t9 */)(&sub_0dbe0000 - 0x47E0, 0);
        if (temp_v0_2 < 0) {
            var_s1 = 1;
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_v0_2);
        }
    }
    spA0 = open(arg0);
    spA8 = 0xCC;
    spA4 = &spB0;
    temp_a0 = arg0->unk7B48;
    __glMgrIoctl(temp_a0, temp_a0, 0x66, &spA0, 0xCC, &spB0);
    if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
        close(arg0, &sub_0dbe0000 - 0x47C8);
    }
    if (spDD != 1) {
        goto block_4;
    }
    var_a0 = 0x19;
    if (getenv(&sub_0dbe0000 - 0x47B0) != NULL) {
        spDD = 0;
block_4:
        var_a0 = 0x19;
    }
    var_v0 = 0;
    temp_a4 = arg0 + 0x9C78;
    do {
        temp_v1 = var_v0 + temp_a4;
        temp_at = var_v0 + &spB0;
        var_v0 += 8;
        var_a0 -= 1;
        *temp_v1 = *temp_at;
    } while (var_a0 > 0);
    var_a2 = var_v0 + temp_a4;
    *var_a2 = *(var_v0 + &spB0);
    if (((s32) arg0->unk9CA0 < 2) || (var_a2 = (s32 *) ((s32) arg0->unk9CB7 < 3), (var_a2 != NULL))) {
        arg0->unk9D54 = 1;
    } else {
        arg0->unk9D54 = 0;
    }
    temp_s3 = arg0 + 0x7B50;
    if (strcmp(&spB0, saved_reg_gp - 0x3D00, (s32) var_a2, &spB0, temp_a4, arg0 + 0x10000) != 0) {
        if (strcmp(&spB0, &sub_0dbe0000 - 0x4788) != 0) {
            if (strcmp(&spB0, &sub_0dbe0000 - 0x4778) != 0) {
                sprintf(temp_s3, &sub_0dbe0000 - 0x4798, saved_reg_gp - 0x3D00, spDB, spDC, spDD);
            } else {
                sprintf(temp_s3, &sub_0dbe0000 - 0x4798, saved_reg_gp - 0x3D00, spDB, spDC, spDD);
            }
        } else {
            sprintf(temp_s3, &sub_0dbe0000 - 0x4798, saved_reg_gp - 0x3D00, spDB, spDC, spDD);
        }
    } else {
        sprintf(temp_s3, &sub_0dbe0000 - 0x4798, saved_reg_gp - 0x3D00, spDB, spDC, spDD);
    }
    temp_v0_3 = saved_reg_gp->unk-3448;
    if (temp_v0_3 == 0) {
        sp180 = 0;
        temp_a2 = temp_v0_3 + 1;
        saved_reg_gp->unk-3448 = temp_a2;
        strcat(&sp180, &sub_0dbe0000 - 0x4768, temp_a2);
        if ((s32) spE8 >= 2) {
            if (spDB != 2) {
                goto block_24;
            }
            if (spDC == 1) {
                goto block_27;
            }
block_24:
            if (var_s1 != 0) {
                strcat(&sp180, &sub_0dbe0000 - 0x4740);
            } else {
                strcat(&sp180, &sub_0dbe0000 - 0x4758);
            }
        } else {
block_27:
            if (var_s1 != 0) {
                strcat(&sp180, &sub_0dbe0000 - 0x4718);
            } else {
                strcat(&sp180, &sub_0dbe0000 - 0x4728);
            }
        }
        var_v0_2 = fopen(&sp180, saved_reg_gp - 0x3D18);
        if (var_v0_2 != 0) {
            spA50 = var_v0_2;
        } else {
            spA78 = var_v0_2;
            spA50 = var_v0_2;
            fprintf(&__iob + 0x20, &sub_0dbe0000 - 0x4708, &sp180);
            abort();
            var_v0_2 = spA78;
        }
        if (fread(&sp220, 0x82C, 1, var_v0_2) != 1) {
            fprintf(&__iob + 0x20, &sub_0dbe0000 - 0x46E8, (s8 *)1);
            abort();
        }
        var_a3 = &SYMBOL_LOCATION;
        var_v0_3 = &sp220;
        do {
            var_a3 += 0x10;
            temp_v1_2 = var_v0_3->unk38;
            var_v0_3 += 0x10;
            var_a3->unk-4 = temp_v1_2;
            temp_a2_2 = var_v0_3->unk20;
            var_a3->unk-8 = (s32) var_v0_3->unk24;
            temp_a1 = var_v0_3->unk1C;
            var_a3->unk-C = temp_a2_2;
            var_a3->unk-10 = temp_a1;
        } while (var_v0_3 != &spA20);
        fclose(spA50, temp_a1, temp_a2_2, var_a3, &spA20);
    }
}

void InitTables(void) {
    f64 temp_f12;
    f64 temp_f12_2;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_s4_2;
    void *temp_a1;
    void *temp_a3;
    void *var_a2;
    void *var_a2_2;
    void *var_a2_3;

    var_s0 = 0;
    var_s4 = 0;
    *(f32 *)0x74080 = 4.6641e-41f;
    *(f32 *)0x74080 = 4.5e-44f;
    *(f32 *)0x74080 = -7.45e-43f;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 7.17e-43f;
    *(f32 *)0x74080 = SYMBOL_LOCATION.unk308;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 1.8e-43f;
    do {
        temp_f12 = (f64) var_s0;
        var_s0 -= 1;
        var_s4 += 1;
        *(f32 *)0x74080 = (f32) exp(temp_f12 * 0.0625, second half of f64);
    } while (var_s4 != 0x80);
    var_s0_2 = 0;
    var_s4_2 = 0;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 4.6641e-41f;
    *(f32 *)0x74080 = 9e-44f;
    *(f32 *)0x74080 = -1.463e-42f;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 1.435e-42f;
    *(f32 *)0x74080 = SYMBOL_LOCATION.unk30C;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 3.59e-43f;
    do {
        temp_f12_2 = (f64) var_s0_2;
        var_s0_2 -= 1;
        var_s4_2 += 1;
        *(f32 *)0x74080 = (f32) exp(temp_f12_2 * 0.000244140625, second half of f64);
    } while (var_s4_2 != 0x100);
    temp_a3 = &sub_0dbf0000 - 0x630;
    temp_a1 = temp_a3 + 0x270;
    var_a2 = temp_a3;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 4.6641e-41f;
    *(f32 *)0x74080 = 5.5e-44f;
    *(f32 *)0x74080 = -9.02e-43f;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 8.74e-43f;
    *(f32 *)0x74080 = SYMBOL_LOCATION.unk3D4;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 2.19e-43f;
    do {
        var_a2 += 0x10;
        *(f32 *)0x74080 = var_a2->unk-10;
        *(f32 *)0x74080 = var_a2->unk-C;
        *(f32 *)0x74080 = var_a2->unk-8;
        *(f32 *)0x74080 = var_a2->unk-4;
    } while (var_a2 != temp_a1);
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 4.6641e-41f;
    *(f32 *)0x74080 = 5.5e-44f;
    *(f32 *)0x74080 = -9.02e-43f;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 8.74e-43f;
    *(f32 *)0x74080 = SYMBOL_LOCATION.unk3D8;
    var_a2_2 = temp_a3;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 2.19e-43f;
    do {
        var_a2_2 += 0x10;
        *(f32 *)0x74080 = var_a2_2->unk260;
        *(f32 *)0x74080 = var_a2_2->unk264;
        *(f32 *)0x74080 = var_a2_2->unk268;
        *(f32 *)0x74080 = var_a2_2->unk26C;
    } while (var_a2_2 != temp_a1);
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 4.6641e-41f;
    *(f32 *)0x74080 = 5.5e-44f;
    *(f32 *)0x74080 = -9.02e-43f;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 8.74e-43f;
    *(f32 *)0x74080 = SYMBOL_LOCATION.unk3DC;
    var_a2_3 = temp_a3;
    *(f32 *)0x74080 = 0.0f;
    *(f32 *)0x74080 = 2.19e-43f;
    do {
        var_a2_3 += 0x10;
        *(f32 *)0x74080 = var_a2_3->unk4D0;
        *(f32 *)0x74080 = var_a2_3->unk4D4;
        *(f32 *)0x74080 = var_a2_3->unk4D8;
        *(f32 *)0x74080 = var_a2_3->unk4DC;
    } while (var_a2_3 != temp_a1);
    *(f32 *)0x74080 = 0.0f;
}

void __glMgrAllocAccum(__GLcontext *gc, s32 arg1, ...) {
    gc->unk7AEC(arg1, gc->unkD54, gc->unkD58);
}

void SwapBuffers(void *arg0) {
    s32 sp8;
    s32 sp4;
    s32 sp0;
    __GLcontext *temp_a0;
    s32 temp_a1;

    if (arg0->unkC22 != 0) {
        sp4 = 0;
        sp8 = 0;
        sp0 = arg0->unk7B4C;
        temp_a0 = arg0->unk7B48;
        __glMgrIoctl(temp_a0, temp_a0, 0x3ED, sp);
        if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
            arg0->unk14(arg0, &sub_0dbe0000 - 0x46C0);
        }
        temp_a1 = arg0->unk91FC->unk418->unkC;
        if (temp_a1 != 0) {
            mgrTM_ProcessTextureUsage(arg0, temp_a1);
        }
    }
}

s32 __glMgrim_RenderMode(enum GLenum mode) {
    s64 sp38;
    s64 sp18;
    s64 sp8;
    s32 sp0;
    __GLcontext *temp_s0;
    enum GLenum temp_v0;
    enum GLenum temp_v0_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 var_s1;
    s32 var_s2;
    s32 var_v0;
    s32 var_v0_2;
    s64 var_ra;
    u8 var_a1;

    var_ra = saved_reg_ra;
    temp_s0 = __glCurrentContext;
    sp18 = 0;
    if (__glBeginMode != 1) {
        temp_v0 = temp_s0->renderMode;
        if (temp_v0 != GL_RENDER) {
            if (temp_v0 != GL_FEEDBACK) {
                if (temp_v0 == GL_SELECT) {
                    *(s32 *)0x74080 = 0xC900;
                    __glMgrGetSelectData((__GLcontext *)0x1C00, 0x1C00, 0xC900, (s32 *)0x74080, 1);
                    var_ra = sp38;
                    if (mode == GL_SELECT) {
                        sp18 = 1;
                    } else {
                        __glMgrim_Flush();
                        temp_a0 = temp_s0->unk7B48;
                        var_ra = sp38;
                        if (ioctl(temp_a0, 0x6D670013U, temp_a0, 0x6D670013, temp_s0 + 0x85D0) < 0) {
                            perror(&sub_0dbe0000 - 0x46A8);
                            abort();
                            var_ra = sp38;
                        }
                    }
                    var_v0 = -1;
                    if (temp_s0->unk11F8 == 0) {
                        var_v0 = temp_s0->unk1208;
                    }
                    sp0 = var_v0;
                }
            } else {
                temp_a1 = temp_s0->unk85DC;
                if (temp_a1 == 0) {
                    var_v0_2 = -1;
                    if (temp_s0->unk11D8 == 0) {
                        var_v0_2 = (s32) (temp_s0->unk11E0 - temp_s0->unk11DC) >> 2;
                    }
                    sp0 = var_v0_2;
                } else {
                    *(void *)0x74080 = 0xC800;
                    __glMgrGetFeedbackData((__GLcontext *)0x1C00, 0x1C00, temp_a1, 0xC800, (void *)0x74080);
                    sp0 = M2C_ERROR(/* Read from unset register $v0 */);
                    var_ra = sp38;
                    if (mode == GL_FEEDBACK) {
                        sp18 = 1;
                    } else {
                        __glMgrim_Flush();
                        temp_a0_2 = temp_s0->unk7B48;
                        var_ra = sp38;
                        if (ioctl(temp_a0_2, 0x6D670013U, temp_a0_2, 0x6D670013, temp_s0 + 0x85E4) < 0) {
                            perror(&sub_0dbe0000 - 0x46A8);
                            abort();
                            var_ra = sp38;
                        }
                    }
                }
            }
        } else {
            sp0 = 0;
        }
        if (mode != GL_FEEDBACK) {
            if (mode != GL_SELECT) {
                goto block_8;
            }
            if (temp_s0->unk11FC == 0) {
                sp38 = var_ra;
                __glSetError(0x502, 0x1C02U);
                return 0;
            }
            goto block_8;
        }
        temp_a2 = temp_s0->unk11DC;
        if (temp_a2 == 0) {
            sp38 = var_ra;
            __glSetError(0x502, 0x1C02U, temp_a2, 1);
            return 0;
        }
block_8:
        temp_s0->renderMode = mode;
        __glBeginMode = 2;
        temp_v0_2 = temp_s0->renderMode;
        temp_a2_2 = (s32) temp_s0->procs.table[0x16] | 1;
        temp_s0->procs.table[0x16] = (void *) temp_a2_2;
        if (temp_v0_2 != GL_RENDER) {
            if (temp_v0_2 == GL_FEEDBACK) {
                var_a1 = temp_s0->unk11D8;
                temp_v0_3 = temp_s0->unk11DC;
                if (var_a1 != 0) {
                    var_s1 = -1;
                } else {
                    var_s1 = (s32) (temp_s0->unk11E0 - temp_v0_3) >> 2;
                }
                var_s2 = var_s1;
                if (temp_v0_3 != 0) {
                    temp_s0->unk11E0 = temp_v0_3;
                    temp_s0->unk11D8 = 0;
                    temp_a2_3 = temp_s0->unk85DC;
                    if (temp_a2_3 != 0) {
                        temp_s0->unk85EC = 0;
                        temp_s0->unk85E4 = 0x800;
                        if (sp18 == 0) {
                            sp38 = var_ra;
                            __glMgrim_Flush();
                            temp_a0_3 = temp_s0->unk7B48;
                            if (ioctl(temp_a0_3, 0x6D670012U, temp_a0_3, 0x6D670012, temp_s0 + 0x85E4) < 0) {
                                perror(&sub_0dbe0000 - 0x4690);
                                abort();
                                var_ra = sp38;
                            }
                        }
                        var_a1 = (u8) temp_s0->unk85E8;
                        *(void *)0x74080 = 0xCA08;
                        *(void *)0x74080 = (s32) temp_s0->unk11E8;
                        *(void *)0x74080 = (s32) var_a1;
                    } else {
                        temp_v0_4 = temp_s0->unk925C;
                        if (~temp_v0_4 & 1) {
                            if (temp_v0_4 == 0) {
                                sp38 = var_ra;
                                __glMgrEnterSoftPath(temp_s0, temp_s0, temp_v0_4 | 1, temp_a2_3, 1);
                            }
                            var_a1 = temp_s0->unk925C | 1;
                            temp_s0->unk925C = (s32) var_a1;
                        }
                    }
                    if (temp_s0->unk9260 == 1) {
                        temp_v0_5 = temp_s0->unk925C;
                        temp_s0->unk9260 = 0U;
                        if (temp_v0_5 != 0) {
                            sp8 = (s64) temp_v0_5;
                            sp38 = var_ra;
                            temp_s0->unk925C = 0;
                            __glMgrEnterSoftPath(temp_s0, temp_s0, var_a1);
                            temp_s0->unk925C = (s32) sp8;
                        }
                    }
                    /* Duplicate return node #21. Try simplifying control flow for better match */
                    return var_s2;
                }
                sp38 = var_ra;
                __glSetError(0x502, var_a1, temp_a2_2, 1);
                return var_s1;
            }
            if (temp_v0_2 != GL_SELECT) {
                sp38 = var_ra;
                __glSetError(0x500, 0x1C02U, temp_a2_2, 1);
                return 0;
            }
            temp_v0_6 = temp_s0->unk925C;
            temp_a1_2 = temp_v0_6 & 1;
            temp_at = temp_v0_6 & ~1;
            if (temp_a1_2 != 0) {
                temp_s0->unk925C = temp_at;
                if (temp_at != 0) {
                    goto block_16;
                }
                sp38 = var_ra;
                __glMgrExitSoftPath(temp_s0, temp_s0, temp_a1_2, temp_a2_2, 1);
                goto block_48;
            }
block_48:
            if (temp_s0->unk925C != 0) {
block_16:
                if (temp_s0->unk9260 == 0) {
                    sp38 = var_ra;
                    __glMgrExitSoftPath(temp_s0, temp_s0);
                    temp_s0->unk9260 = 1U;
                }
            }
            temp_v0_7 = temp_s0->unk11FC;
            var_s2 = sp0;
            if (temp_v0_7 != 0) {
                temp_s0->unk1200 = temp_v0_7;
                temp_s0->unk11F8 = 0;
                temp_s0->unk1208 = 0;
                temp_s0->unk85D8 = 0;
                temp_s0->unk85D0 = 0x800;
                temp_s0->unk85CC = 0;
                temp_s0->unk85C8 = 4;
                if (sp18 == 0) {
                    sp38 = var_ra;
                    __glMgrim_Flush();
                    temp_a0_4 = temp_s0->unk7B48;
                    if (ioctl(temp_a0_4, 0x6D670012U, temp_a0_4, 0x6D670012, temp_s0 + 0x85D0) < 0) {
                        perror(&sub_0dbe0000 - 0x4690);
                        abort();
                    }
                }
                *(void *)0x74080 = 0xCB04;
                *(void *)0x74080 = (s32) temp_s0->unk85D4;
                /* Duplicate return node #21. Try simplifying control flow for better match */
                return var_s2;
            }
            sp38 = var_ra;
            __glSetError(0x502);
            return var_s2;
        }
        temp_v0_8 = temp_s0->unk925C;
        if (temp_v0_8 & 1) {
            temp_at_2 = temp_v0_8 & ~1;
            temp_s0->unk925C = temp_at_2;
            if (temp_at_2 == 0) {
                sp38 = var_ra;
                __glMgrExitSoftPath(temp_s0, temp_s0, 0x1C02, temp_a2_2, 1);
            }
        }
        if (temp_s0->unk9260 == 1) {
            temp_v0_9 = temp_s0->unk925C;
            temp_s0->unk9260 = 0U;
            if (temp_v0_9 != 0) {
                sp38 = var_ra;
                temp_s0->unk925C = 0;
                __glMgrEnterSoftPath(temp_s0, temp_s0);
                temp_s0->unk925C = temp_v0_9;
            }
        }
        var_s2 = sp0;
        return var_s2;
    }
    __glSetError(0x502);
    return 0;
}

void DestroyContext(__GLcontext *arg0) {
    __glMgrTermDLPool(arg0);
    __glMgrFreeTextureManager(arg0, arg0);
    __glMgrFreeColorTableState(arg0, arg0);
    __glMgrFreeConvolutionState(arg0, arg0);
    __glMgrFreeEvaluators(arg0, arg0);
    __glMgrFreePixelStatState(arg0, arg0);
    __glMgrFreePixelState(arg0, arg0);
    __glMgrFreeAttributeState(arg0, arg0);
    arg0->imports.getDrawablePrivate(arg0);
    arg0->unk9D44 = 0;
    arg0->imports.free(arg0, arg0->unk9D5C);
    arg0->unk9D5C = NULL;
    arg0->unk9D58 = 0;
    __glDestroyContext(arg0);
}

void __glMgrPassStateToHW(__GLcontext *gc, ...) {
    s64 sp10;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_s1;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s1 = gc->unk98;
    if (temp_s1 & 0x200) {
        __glMgrPassAccum(gc, gc);
        var_ra = sp10;
    }
    if (temp_s1 & 0x4000) {
        sp10 = var_ra;
        __glMgrPassColorBuffer(gc, gc, 1);
    }
    if (temp_s1 & 1) {
        sp10 = var_ra;
        __glMgrPassCurrentBuffer(gc, gc);
    }
    if (temp_s1 & 0x100) {
        sp10 = var_ra;
        __glMgrPassDepthBuffer(gc, gc, 1);
    }
    if (temp_s1 & 0x2000) {
        sp10 = var_ra;
        __glMgrPassEnables(gc, gc);
    }
    if (temp_s1 & 0x10000) {
        sp10 = var_ra;
        __glMgrPassEval(gc, gc);
    }
    if (temp_s1 & 0x80) {
        sp10 = var_ra;
        __glMgrPassFog(gc, gc);
    }
    temp_a1 = temp_s1 & 0x40;
    if (temp_a1 != 0) {
        sp10 = var_ra;
        __glMgrPassLighting(gc, gc, temp_a1);
    }
    if (temp_s1 & 4) {
        sp10 = var_ra;
        __glMgrPassLine(gc, gc);
    }
    if (temp_s1 & 0x20) {
        sp10 = var_ra;
        __glMgrPassPixel(gc, gc);
    }
    if (temp_s1 & 2) {
        sp10 = var_ra;
        __glMgrPassPoint(gc, gc);
    }
    temp_a1_2 = temp_s1 & 8;
    if (temp_a1_2 != 0) {
        sp10 = var_ra;
        __glMgrPassPolygon(gc, gc, temp_a1_2);
    }
    if (temp_s1 & 0x80000) {
        sp10 = var_ra;
        __glMgrPassScissor(gc, gc);
    }
    if (temp_s1 & 0x400) {
        sp10 = var_ra;
        __glMgrPassStencil(gc, gc, 1);
    }
    if (temp_s1 & 0x40000) {
        sp10 = var_ra;
        __glMgrPassTexture(gc, gc);
    }
    temp_a1_3 = temp_s1 & 0x1000;
    if (temp_a1_3 != 0) {
        sp10 = var_ra;
        __glMgrPassTransform(gc, gc, temp_a1_3);
    }
    if (temp_s1 & 0x800) {
        sp10 = var_ra;
        __glMgrPassViewport(gc, gc, 1);
    }
    gc->unk7B7C = 1;
}

void __glMgrGetStateFromHW(__GLcontext *gc, s32 arg1, ...) {
    s64 sp10;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (arg1 & 0x200) {
        __glMgrGetAccum(gc, gc);
        var_ra = sp10;
    }
    if (arg1 & 0x4000) {
        sp10 = var_ra;
        __glMgrGetColorBuffer(gc, gc);
    }
    if (arg1 & 1) {
        sp10 = var_ra;
        __glMgrGetCurrentBuffer(gc, gc);
    }
    if (arg1 & 0x100) {
        sp10 = var_ra;
        __glMgrGetDepthBuffer(gc, gc);
    }
    if (arg1 & 0x2000) {
        sp10 = var_ra;
        __glMgrGetEnables(gc, gc);
    }
    if (arg1 & 0x80) {
        sp10 = var_ra;
        __glMgrGetFog(gc, gc);
    }
    if (arg1 & 0x40) {
        sp10 = var_ra;
        __glMgrGetLighting(gc, gc);
    }
    if (arg1 & 4) {
        sp10 = var_ra;
        __glMgrGetLine(gc, gc);
    }
    if (arg1 & 0x20) {
        sp10 = var_ra;
        __glMgrGetPixel(gc, gc);
    }
    if (arg1 & 2) {
        sp10 = var_ra;
        __glMgrGetPoint(gc, gc);
    }
    if (arg1 & 8) {
        sp10 = var_ra;
        __glMgrGetPolygon(gc, gc);
    }
    if (arg1 & 0x80000) {
        sp10 = var_ra;
        __glMgrGetScissor(gc, gc);
    }
    if (arg1 & 0x400) {
        sp10 = var_ra;
        __glMgrGetStencil(gc, gc);
    }
    if (arg1 & 0x40000) {
        sp10 = var_ra;
        __glMgrGetTexture(gc, gc);
    }
    if (arg1 & 0x1000) {
        sp10 = var_ra;
        __glMgrGetTransform(gc, gc);
    }
    if (arg1 & 0x800) {
        sp10 = var_ra;
        __glMgrGetViewport(gc, gc);
    }
}

void CopyContext(__GLcontext *arg0, void *arg1, s32 arg2) {
    s64 sp28;
    __GLcontext *temp_s3;
    s32 *temp_a3;
    s32 *temp_at;
    s32 var_a0;
    s32 var_a1;
    s64 var_ra;
    void *temp_a1;
    void *temp_a1_2;

    var_ra = saved_reg_ra;
    temp_s3 = __glCurrentContext;
    if (arg1->unk94 & 1) {
        if (__glCurrentContext == arg1) {
            if (temp_s3->renderMode == GL_RENDER) {
                __glMgrim_RenderMode((enum GLenum) arg1);
                var_ra = sp28;
            }
            var_a1 = 0;
            arg0->unk7B7C = 0;
            if (arg2 & 0x20) {
                var_a0 = 8;
                do {
                    temp_at = var_a1 + (arg0 + 0x825C);
                    temp_a3 = var_a1 + (arg1 + 0x825C);
                    var_a1 += 4;
                    var_a0 -= 1;
                    *temp_at = *temp_a3;
                } while (var_a0 > 0);
            }
            temp_a1 = arg0->unk5D0;
            sp28 = var_ra;
            arg0->unk98 = arg2;
            if (temp_a1 != NULL) {
                temp_s3->imports.free(temp_s3, temp_a1);
            }
            temp_a1_2 = arg0->unk674;
            arg0->unk5D0 = temp_s3->imports.malloc(temp_s3, temp_s3->unkD00 * 0x74);
            if (temp_a1_2 != NULL) {
                temp_s3->imports.free(temp_s3, temp_a1_2);
            }
            arg0->unk674 = temp_s3->imports.malloc(temp_s3, temp_s3->unkD04 * 0x10);
            __glMgrCopyContext(arg0, arg0, arg1, arg2);
        }
    }
}

void LoseCurrent(void *arg0) {
    s64 sp0;
    u32 *temp_a3;

    if (arg0->unkC14 == 0x1C00) {
        sp0 = (s64) arg0;
        if (__glBeginMode != 1) {
            __glLoseCurrentBuffers(sp0, 0);
            if ((sp0->unk9D44 != 0) && ((temp_a3 = sp0->unk9D58, (temp_a3 == NULL)) || (((u32) *temp_a3 >> 0x1F) == 0))) {
                sp0->unk9D48->unk70008 = 0x100000;
            }
            sp0->unkC10 = (u32) __glBeginMode;
            __glCurrentContext = NULL;
            if (sp0->unk1250 != 0) {
                sp0->unk1290 = (s32) *(s32 *)0x1020;
                sp0->unk1294 = (s32) *(s32 *)0x1024;
                sp0->unk1298 = (s32) *(s32 *)0x1028;
                sp0->unk129C = (s32) *(s32 *)0x102C;
            }
        }
    }
}

void ChangeWindowSize(void *arg0, s32 arg1, s64 arg2) {
    s64 sp10;

    sp10 = arg2;
    arg0->unkD58 = (s32) arg2;
    arg0->unkD54 = arg1;
    __glMgrim_Viewport(0, 0, arg1, (s32) arg2);
    __glMgrim_Scissor(0, 0, arg1, (s32) sp10);
}

void FindWindowSize(void *arg0, s32 arg1) {
    s32 spC;
    s32 sp8;
    ? sp4;

    arg0->unk1C(sp, &sp4, &sp8, &spC);
    if (arg1 != 0) {
        goto block_2;
    }
    if (arg0->unkD54 == sp8) {
        if (arg0->unkD58 != spC) {
            goto block_2;
        }
    } else {
block_2:
        __glMgrim_RenderMode((enum GLenum) arg0);
    }
}

void ApplyViewport(void *arg0) {
    if (arg0->unk9CA5 != 0) {
        __glMgrim_RenderMode((enum GLenum) arg0);
    } else {
        __glFindWindowSize();
    }
}

void ApplyScissor(void *arg0) {
    s32 spC;
    s32 sp8;
    ? sp4;

    arg0->unk1C(sp, &sp4, &sp8, &spC);
    if ((arg0->unkD54 != sp8) || (arg0->unkD58 != spC)) {
        __glMgrim_Scissor(0, 0, sp8, spC);
    }
}

void InitFnPtrs(void *arg0) {
    arg0->unk30E4 = __glSpanRenderDepth;
    arg0->unk30D0 = __glSpanReadStencil2;
    arg0->unk30BC = __glSpanReadRGBA;
    arg0->unk30E8 = __glSpanRenderDepth2;
    arg0->unk3158 = __glGenericPickCopyImage;
    arg0->unk30D4 = __glSpanRenderCI;
    arg0->unk2E5C = __glGenericPickTextureProcs;
    arg0->unk30C0 = __glSpanReadRGBA2;
    arg0->unk2E68 = __glGenericPickPointProcs;
    arg0->unk315C = __glGenericPickReadImage;
    arg0->unk2E98 = __glGenericPickInvTransposeProcs;
    arg0->unk2EF4 = __glNop;
    arg0->unk2EA0 = __glNop;
    arg0->unk2E60 = __glGenericPickFogProcs;
    arg0->unk2E54 = __glNop;
    arg0->unk2EA4 = __glMgrPickAllProcs;
    arg0->unk2F04 = __glSecondLinesVertex;
    arg0->unk2F00 = __glFirstLinesVertex;
    arg0->unk2F60 = __glMgrBeginQuads;
    arg0->unk2F64 = __glMgrBeginQStrip;
    arg0->unk2F68 = __glMgrBeginPolygon;
    arg0->unk2F44 = __glMgrBeginPoints;
    arg0->unk2E40 = __glMgrim_Flush;
    arg0->unk2E44 = __glMgrim_Finish;
    arg0->unk2EB0 = __glMakeIdentity;
    arg0->unk2EAC = __glInvertTransposeMatrix;
    arg0->unk2EB8 = __glPushModelViewMatrix;
    arg0->unk31AC = __glMgrConvertStipple;
    arg0->unk3150 = __glMgrDoCopyPixels;
    arg0->unk314C = __glMgrDrawPixels;
    arg0->unk2F1C = __glDoEvalCoord1;
    arg0->unk78 = (void *) (&sub_0da70000 - 0x18D8);
    arg0->unk2ED4 = __glComputeClipBox;
    arg0->unk30F0 = __glSpanRenderStencil2;
    arg0->unk30EC = __glSpanRenderStencil;
    arg0->unk30DC = __glSpanRenderRGBA;
    arg0->unk30D8 = __glSpanRenderCI2;
    arg0->unk30E0 = __glSpanRenderRGBA2;
    arg0->unk30C4 = __glSpanReadDepth;
    arg0->unk30CC = __glSpanReadStencil;
    arg0->unk30C8 = __glSpanReadDepth2;
    arg0->unk30B8 = __glSpanReadCI2;
    arg0->unk30B4 = __glSpanReadCI;
    arg0->unk31B4 = __glColorTableSGI;
    arg0->unk2E90 = __glGenericPickVertexProcs;
    arg0->unk2E70 = __glGenericPickTriangleProcs;
    arg0->unk31B0 = &__gl_varray_funcs;
    arg0->unk2E74 = __glMgrPickRenderBitmapProcs;
    arg0->unk2E88 = __glMgrPickStoreProcs;
    arg0->unk2E8C = __glMgrPickSpanProcs;
    arg0->unk2E78 = __glMgrPickPixelProcs;
    arg0->unk2E80 = __glGenericPickParameterClipProcs;
    arg0->unk2E9C = __glGenericPickMvpMatrixProcs;
    arg0->unk2E6C = __glMgrPickLineProcs;
    arg0->unk2E64 = __glGenericPickTransformProcs;
    arg0->unk2E94 = __glGenericPickMatrixProcs;
    arg0->unk2E84 = __glGenericPickBufferProcs;
    arg0->unk2E58 = __glGenericPickColorMaterialProcs;
    arg0->unk2E7C = __glGenericPickClipProcs;
    arg0->unk318C = __glRasterPos4;
    arg0->unk3188 = __glRasterPos3;
    arg0->unk3184 = __glRasterPos2;
    arg0->unk2F0C = __glEvenTStripVertex;
    arg0->unk2F6C = __glEndPrim;
    arg0->unk2F08 = __glOddTStripVertex;
    arg0->unk2F58 = __glMgrBeginTStrip;
    arg0->unk2F54 = __glMgrBeginTriangles;
    arg0->unk2F5C = __glMgrBeginTFan;
    arg0->unk2F48 = __glMgrBeginLines;
    arg0->unk2F50 = __glMgrBeginLStrip;
    arg0->unk2F4C = __glMgrBeginLLoop;
    arg0->unk2EC4 = __glComputeInverseTranspose;
    arg0->unk2EB4 = __glMultMatrix;
    arg0->unk2EC8 = __glNormalize;
    arg0->unk2EBC = __glPopModelViewMatrix;
    arg0->unk2EA8 = __glCopyMatrix;
    arg0->unk2EC0 = __glLoadIdentityModelViewMatrix;
    arg0->unk2E50 = __glGenericValidate;
    arg0->unk2F84 = __glClipPolygon;
    arg0->unk2F8C = __glRect;
    arg0->unk3118 = __glDrawBitmap;
    arg0->unk2F20 = __glDoEvalCoord2;
    arg0->unk311C = __glMgrRenderBitmap;
    arg0->unk54 = (void *) (&sub_0da70000 - 0x11AC);
    arg0->unk2ED0 = (void *) (&sub_0da70000 - 0x950);
    arg0->unk2ECC = (void *) (&sub_0da70000 - 0x8F4);
}

void InitBuffers(void *arg0) {
    __GLcontext *temp_a0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    __GLcontext *temp_a0_4;
    __GLcontext *temp_a0_5;
    __GLcontext *temp_a3;
    __GLcontext *temp_at;
    s32 var_s1;
    s32 var_s2;
    u8 temp_a2;
    u8 temp_a2_2;
    u8 temp_a2_3;

    temp_a3 = arg0 + 0x77FC;
    __glBeginMode = 2;
    arg0->unk2E3C = temp_a3;
    arg0->unk77F4 = temp_a3;
    arg0->unk2E34 = (s32) (arg0->unk2E34 | 0xFF);
    if (arg0->unkC22 != 0) {
        temp_a2 = arg0->unkC21;
        temp_at = arg0 + 0x78D8;
        arg0->unk2E38 = temp_at;
        arg0->unk77F8 = temp_at;
        if (temp_a2 != 0) {
            __glMgrInitCI(temp_a3, temp_a3, arg0, temp_a2, temp_a3);
            temp_a0 = arg0->unk77F8;
            __glMgrInitCI(temp_a0, temp_a0, arg0);
        } else {
            __glMgrInitRGB(temp_a3, temp_a3, arg0, temp_a2, temp_a3);
            temp_a0_2 = arg0->unk77F8;
            __glMgrInitRGB(temp_a0_2, temp_a0_2, arg0);
        }
    } else {
        temp_a2_2 = arg0->unkC21;
        arg0->unk2E38 = temp_a3;
        if (temp_a2_2 != 0) {
            __glMgrInitCI(temp_a3, temp_a3, arg0, temp_a2_2, temp_a3);
        } else {
            __glMgrInitRGB(temp_a3, temp_a3, arg0, temp_a2_2, temp_a3);
        }
    }
    if (arg0->unkC6C > 0) {
        var_s2 = 0;
        var_s1 = 0;
loop_7:
        temp_a2_3 = arg0->unkC21;
        temp_a0_3 = arg0->unk79B4 + var_s1;
        if (temp_a2_3 == 0) {
            __glMgrInitRGB(temp_a0_3, temp_a0_3, arg0, temp_a2_3);
        } else {
            __glMgrInitCI(temp_a0_3, temp_a0_3, arg0, temp_a2_3);
        }
        var_s2 += 1;
        var_s1 += 0xDC;
        if (var_s2 < arg0->unkC6C) {
            goto loop_7;
        }
    }
    if (arg0->unkC24 != 0) {
        __glInitAccum64(arg0 + 0x7AB4, arg0);
        arg0->unk7B38 = __glMgrAllocAccum;
        arg0->unk9268 = (void (*)(__GLcontext *, ...)) arg0->unk7B20;
        arg0->unk7B20 = __glMgrim_SoftAccumClear;
    }
    if (arg0->unkC25 != 0) {
        temp_a0_4 = arg0 + 0x7A30;
        __glMgrInitDepth(temp_a0_4, temp_a0_4, arg0);
    } else {
        arg0->unk7A7C = 1;
    }
    if (arg0->unkC26 != 0) {
        temp_a0_5 = arg0 + 0x79B8;
        __glMgrInitStencil(temp_a0_5, temp_a0_5, arg0);
    }
    __glUpdateDepthRange(arg0);
}

void InitFormatValues(void *arg0) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s5;
    s32 var_s5_2;
    void *var_s7;

    var_s1 = 0;
    var_s5 = 0;
    if (arg0->unkC20 != 0) {
        temp_a0 = arg0->unkC44;
        switch (temp_a0) {                          /* irregular */
        default:
            var_s7 = arg0 + 0x10000;
            break;
        case 4:
            var_s7 = arg0 + 0x10000;
            var_s5 = 0;
            arg0->unk980C = 0x0F000FFF;
            arg0->unk9810 = 0xF0FFF000;
            arg0->unk9808 = 0;
            break;
        case 5:
            var_s7 = arg0 + 0x10000;
            var_s5 = 0x100;
            arg0->unk980C = 0x40007FFF;
            arg0->unk9810 = 0xBFFF8000;
            arg0->unk9808 = 0;
            break;
        case 12:
            var_s5 = 0x2300;
            if (arg0->unkC48 != 0) {
                var_s7 = arg0 + 0x10000;
                goto block_33;
            }
            var_s7 = arg0 + 0x10000;
            if (arg0->unkC50 == 0) {
                var_s7 = arg0 + 0x10000;
                arg0->unk9808 = 0;
                arg0->unk980C = 0xFFF;
                arg0->unk9810 = 0xFFF000;
                var_s5 = 0x2400;
                if (!(arg0->unk94 & 6)) {
                    spC = 1.0f;
                    sp8 = 0.0f;
                    sp4 = 0.0f;
                    sp0 = 1.0f;
                    __glMgrim_shadowIndexcolorDispatchTable(sp, 0xFFF000);
                }
            } else {
block_33:
                var_s7->unk-67F4 = -1;
                var_s7->unk-67F0 = -1;
                var_s7->unk-67F8 = 0xF;
            }
            break;
        case 8:
            var_s5 = 0x2200;
            var_s7 = arg0 + 0x10000;
            arg0->unk980C = -1;
            arg0->unk9810 = -1;
            arg0->unk9808 = 0;
            break;
        }
    } else {
        var_s7 = arg0 + 0x10000;
        if (arg0->unkC21 != 0) {
            arg0->unk9808 = 0;
            arg0->unk96C0 = (s32) (arg0->unk96C0 | 0x8000);
            temp_a0_2 = arg0->unkC40;
            var_s5_2 = 0;
            if (temp_a0_2 < 5) {
                if (arg0->unkC70 != 0) {
                    arg0->unk980C = 0x783C1E0F;
                    arg0->unk9808 = 0;
                    arg0->unk9810 = 0x83C1E0F0;
                    arg0->unk9808 = (s32) (arg0->unk9808 | 0x70);
                } else {
                    arg0->unk980C = 0xFF;
                    arg0->unk9810 = 0xFF000;
                }
                var_s5 = 0x600;
            } else if (temp_a0_2 < 9) {
                if (arg0->unkC70 != 0) {
                    var_s5_2 = 0x2000;
                    arg0->unk980C = 0xFBFDFEFF;
                    arg0->unk9810 = 0;
                    arg0->unk9808 = 7;
                } else {
                    arg0->unk980C = 0xFF;
                    arg0->unk9810 = 0xFF000;
                }
                var_s5 = (-0x701 & var_s5_2) | 0x500;
            } else {
                var_s5 = 0x400;
                arg0->unk980C = 0xFFF;
                arg0->unk9810 = 0xFFF000;
            }
        }
    }
    if (arg0->unkC78 != 0) {
        temp_a0_3 = arg0->unkC9C;
        if (temp_a0_3 != 4) {
            if (temp_a0_3 != 5) {
                if (temp_a0_3 != 8) {
                    if (temp_a0_3 == 0xC) {
                        var_s1 = 0x2300;
                        if ((arg0->unkCA0 != 0) || (arg0->unkCA8 != 0)) {

                        } else {
                            var_s1 = 0x2400;
                        }
                    }
                } else {
                    var_s1 = 0x2200;
                }
            } else {
                var_s1 = 0x100;
            }
        } else {
            var_s1 = 0;
        }
    } else if (arg0->unkC79 != 0) {
        temp_a0_4 = arg0->unkC98;
        var_s1_2 = 0;
        if (temp_a0_4 >= 5) {
            if (temp_a0_4 < 9) {
                if (arg0->unkCC8 != 0) {
                    var_s1_2 = 0x2000;
                }
                var_s1 = (-0x701 & var_s1_2) | 0x500;
            } else {
                var_s1 = 0x400;
            }
        } else {
            var_s1 = 0x600;
        }
    }
    *(s32 *)0x74080 = 0x9A08;
    *(s32 *)0x74080 = var_s1;
    *(s32 *)0x74080 = var_s5;
    var_s7->unk-67FC = (s32) ((((var_s7->unk-67FC & ~0x700) | ((((u32) (var_s5 & 0x7FF) >> 8) & 7) << 8)) & ~0x2000) | ((((u32) (var_s5 & 0x3FFF) >> 0xD) & 1) << 0xD));
}

void InitTexmode1(void *arg0) {
    s64 sp10;
    s64 var_ra;
    void *temp_s0;

    var_ra = saved_reg_ra;
    temp_s0 = arg0->unk8A2C;
    if (temp_s0 != NULL) {
        if (temp_s0->unkC4 == 0) {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s0);
            var_ra = sp10;
        }
        sp10 = var_ra;
        if (temp_s0 != NULL) {
            mgrTM_SendTexmode1(arg0, temp_s0->unkC4);
        } else {
            goto block_4;
        }
    } else {
block_4:
        sp10 = var_ra;
        mgrTM_SendTexmode1(arg0, 0);
    }
}

void MakeCurrentRead(__GLcontext *arg0, s32 arg1, s32 arg2) {
    s64 sp88;
    s64 sp80;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s32 sp20;
    s32 sp1C;
    ? sp18;
    s8 sp14;
    s32 sp10;
    s64 sp8;
    s32 sp4;
    s32 sp0;
    ? *temp_s2;
    ? *var_a5_2;
    ? *var_a6;
    s32 *temp_a3;
    s32 *temp_a3_10;
    s32 *temp_a3_11;
    s32 *temp_a3_12;
    s32 *temp_a3_13;
    s32 *temp_a3_14;
    s32 *temp_a3_15;
    s32 *temp_a3_16;
    s32 *temp_a3_2;
    s32 *temp_a3_3;
    s32 *temp_a3_4;
    s32 *temp_a3_5;
    s32 *temp_a3_6;
    s32 *temp_a3_7;
    s32 *temp_a3_8;
    s32 *temp_a3_9;
    s32 *temp_a4;
    s32 *temp_a4_10;
    s32 *temp_a4_11;
    s32 *temp_a4_12;
    s32 *temp_a4_13;
    s32 *temp_a4_14;
    s32 *temp_a4_15;
    s32 *temp_a4_16;
    s32 *temp_a4_17;
    s32 *temp_a4_2;
    s32 *temp_a4_5;
    s32 *temp_a4_6;
    s32 *temp_a4_7;
    s32 *temp_a4_8;
    s32 *temp_a4_9;
    s32 *temp_a6;
    s32 *temp_at;
    s32 *temp_at_10;
    s32 *temp_at_11;
    s32 *temp_at_12;
    s32 *temp_at_13;
    s32 *temp_at_14;
    s32 *temp_at_15;
    s32 *temp_at_16;
    s32 *temp_at_17;
    s32 *temp_at_2;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_at_5;
    s32 *temp_at_6;
    s32 *temp_at_7;
    s32 *temp_at_8;
    s32 *temp_at_9;
    s32 *temp_v1;
    s32 *temp_v1_10;
    s32 *temp_v1_11;
    s32 *temp_v1_12;
    s32 *temp_v1_13;
    s32 *temp_v1_14;
    s32 *temp_v1_15;
    s32 *temp_v1_16;
    s32 *temp_v1_17;
    s32 *temp_v1_18;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_4;
    s32 *temp_v1_5;
    s32 *temp_v1_6;
    s32 *temp_v1_7;
    s32 *temp_v1_8;
    s32 *temp_v1_9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_9;
    s32 temp_a2;
    s32 temp_a3_18;
    s32 temp_a5;
    s32 temp_gp;
    s32 temp_v0_2;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_12;
    s32 var_a0_13;
    s32 var_a0_14;
    s32 var_a0_15;
    s32 var_a0_16;
    s32 var_a0_17;
    s32 var_a0_18;
    s32 var_a0_19;
    s32 var_a0_20;
    s32 var_a0_21;
    s32 var_a0_22;
    s32 var_a0_23;
    s32 var_a0_24;
    s32 var_a0_25;
    s32 var_a0_26;
    s32 var_a0_27;
    s32 var_a0_28;
    s32 var_a0_29;
    s32 var_a0_2;
    s32 var_a0_30;
    s32 var_a0_31;
    s32 var_a0_32;
    s32 var_a0_33;
    s32 var_a0_34;
    s32 var_a0_35;
    s32 var_a0_36;
    s32 var_a0_37;
    s32 var_a0_38;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1_10;
    s32 var_a1_11;
    s32 var_a1_12;
    s32 var_a1_13;
    s32 var_a1_14;
    s32 var_a1_15;
    s32 var_a1_16;
    s32 var_a1_17;
    s32 var_a1_18;
    s32 var_a1_19;
    s32 var_a1_20;
    s32 var_a1_21;
    s32 var_a1_22;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a1_7;
    s32 var_a1_8;
    s32 var_a1_9;
    s32 var_a4;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_11;
    s32 var_v0_12;
    s32 var_v0_13;
    s32 var_v0_14;
    s32 var_v0_15;
    s32 var_v0_16;
    s32 var_v0_17;
    s32 var_v0_18;
    s32 var_v0_19;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 *temp_a3_17;
    s64 *temp_a3_19;
    s64 *temp_a4_18;
    s64 *temp_a4_19;
    s64 *temp_at_18;
    s64 *temp_at_19;
    s64 *temp_at_20;
    s64 *temp_v1_19;
    s64 *temp_v1_20;
    s64 *temp_v1_21;
    s64 temp_v0;
    s64 var_a5;
    s64 var_ra;
    s64 var_v0_4;
    s8 *temp_a0_8;
    u32 temp_a4_3;
    u8 *temp_v0_5;
    u8 temp_a0_7;
    u8 temp_a1;
    u8 temp_v0_3;
    u8 temp_v0_6;
    u8 var_a3;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a4_4;
    void *temp_a6_2;
    void *var_a1;
    void *var_a1_2;
    void *var_s1;

    var_ra = saved_reg_ra;
    var_a5 = 0;
    sp40 = 0;
    sp38 = 0;
    sp50 = 0;
    sp28 = arg0 + 0x10000;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18E650;
    if (!(arg0->unk9274 & 0x80)) {
        sp30 = 0;
        temp_v0 = getenv(&sub_0dbe0000 - 0x4678, 0);
        sp58 = temp_v0;
        var_a5 = 0;
        var_ra = sp80;
        sp28->unk-6D8C = 0x80U;
        if (temp_v0 != 0) {
            var_a5 = sp30;
            var_ra = sp80;
            if (strcmp((? *) temp_v0, temp_gp - 0x3CF8) != 0) {
                temp_a1 = sp28->unk-6D8C;
                if (strcmp((? *) sp58, &sub_0dbe0000 - 0x4668) != 0) {
                    sp28->unk-6D8C = (u8) (temp_a1 | 1);
                } else {
                    sp28->unk-6D8C = (u8) (temp_a1 | 4);
                }
                if (strcmp((? *) sp58, temp_gp - 0x3CF0) == 0) {
                    sp28->unk-6D8C = (u8) (sp28->unk-6D8C | 2);
                }
                if (strcmp((? *) sp58, &sub_0dbe0000 - 0x4658) == 0) {
                    sp28->unk-6D8C = (u8) (sp28->unk-6D8C | 0x10);
                }
                __glMgrSimInit(arg0, arg0);
                var_a5 = sp30;
                var_ra = sp80;
            }
        }
    }
    var_a3 = arg1 == arg2;
    arg0->yInverted = var_a3;
    var_a0 = 0;
    temp_v0_2 = arg0->readModes.visualID;
    if (arg2->unk0 != 3) {
        temp_a6 = arg2->unk4;
        if (*temp_a6 != temp_v0_2) {
            var_v0 = 0x16;
            var_a5 = 1;
            do {
                temp_v1 = var_a0 + (arg0 + 0xC74);
                temp_at = var_a0 + temp_a6;
                var_a0 += 4;
                var_v0 -= 1;
                *temp_v1 = *temp_at;
            } while (var_v0 > 0);
        }
        var_a1 = arg0->modes.visualID;
    } else {
        var_a1 = (void *) arg0->modes.visualID;
        var_a0_2 = 0x16;
        if (var_a1 != temp_v0_2) {
            var_v0_2 = 0;
            var_a5 = 1;
            do {
                temp_a4 = var_v0_2 + &arg0->readModes;
                temp_a3 = var_v0_2 + &arg0->modes;
                var_v0_2 += 4;
                var_a3 = (u8) *temp_a3;
                var_a0_2 -= 1;
                *temp_a4 = (s32) var_a3;
            } while (var_a0_2 > 0);
        }
    }
    temp_a6_2 = arg1->unk4;
    if (temp_a6_2->unk0 != var_a1) {
        temp_v0_3 = arg0->modes.rgbMode;
        var_a0_3 = 0;
        sp50 = 1;
        if (temp_v0_3 != 0) {
            if ((arg0->modes.greenBits != 0) && (temp_a6_2->unk2C == 0)) {
                sp38 = 1;
            }
            var_a1 = arg0 + 0xC1C;
            if (temp_v0_3 != 0) {
                if (arg0->modes.greenBits == 0) {
                    if (temp_a6_2->unk2C != 0) {
                        sp40 = 1;
                    }
                }
                goto block_12;
            }
        } else {
block_12:
            var_a1 = arg0 + 0xC1C;
        }
        var_v0_3 = 0x16;
        do {
            temp_a4_2 = var_a0_3 + var_a1;
            temp_a3_2 = var_a0_3 + temp_a6_2;
            var_a0_3 += 4;
            var_a3 = (u8) *temp_a3_2;
            var_v0_3 -= 1;
            *temp_a4_2 = (s32) var_a3;
        } while (var_v0_3 > 0);
        sp80 = var_ra;
        sp30 = var_a5;
    }
    __glCurrentContext = arg0;
    temp_a4_3 = arg0->beginMode;
    __glBeginMode = temp_a4_3;
    sp30 = var_a5;
    sp80 = var_ra;
    var_v0_4 = ((s64 (*)(__GLcontext *, void *, void *, u8, u32, s64, void *)) arg0->imports.other)(arg0, var_a1, temp_a6_2, var_a3, temp_a4_3, var_a5, temp_a6_2);
    temp_a0 = arg0->gcState;
    if (var_v0_4 != 0) {
        if (temp_a0 & 2) {
            return;
        }
        if (arg1 != arg2) {
            return;
        }
        arg0->unk1234 = &__gl_GenericDlOps;
        arg0->unk1230 = &__glListExecTable;
        arg0->unk122C = __glNop;
        arg0->unk1228 = __glNop;
        arg0->unk1220 = __glGenericDlistOptimizer;
        arg0->unk1224 = __glGenericDlistCompiler;
        if (!(temp_a0 & 4)) {
            temp_a4_4 = sp28->unk-6E04->unk49C;
            temp_a4_4->unk8 = (s32) (temp_a4_4->unk8 - 1);
            temp_a1_2 = sp28->unk-6E04->unk49C;
            sp88 = var_v0_4;
            if (temp_a1_2->unk8 == 0) {
                __glNamesFreeArray(arg0, temp_a1_2);
                arg0->imports.free(arg0, sp28->unk-6E04);
                sp28->unk-6E04 = NULL;
            }
            __glMgrFreeAttributeState(arg0, arg0);
            arg0->imports.free(arg0, sp28->unk-62A4);
            var_v0_4 = sp88;
            sp28->unk-62A4 = NULL;
            sp28->unk-62A8 = 0;
        }
        __glPixmapMakeCurrent(arg0, var_v0_4);
        return;
    }
    if (temp_a0 & 4) {
        return;
    }
    arg0->unk1234 = NULL;
    arg0->unk1230 = NULL;
    arg0->unk1228 = NULL;
    arg0->unk122C = __glMgrDlistInitState;
    arg0->unk1220 = __glMgrDlistOptimizer;
    arg0->unk1224 = __glSPDlistCompiler;
    temp_s2 = &arg0->unk1E20;
    arg0->unk1608 = temp_s2;
    arg0->unk1E18 = __pglce_dispatchState;
    __glBeginMode = 2;
    arg0->procs.table[0x16] = (void *) ((s32) arg0->procs.table[0x16] | 0x80);
    if (arg0->gcState & 1) {
        goto block_30;
    }
    if (sp28->unk-6D8C & 4) {
        var_a1_2 = (void *)0x220000;
        sp28->unk-62B8 = (void *)0x220000;
    } else {
        var_a1_2 = (void *)0x4000;
        sp28->unk-62B8 = (void *)0x4000;
    }
    arg0->unk7B48 = arg0->imports.fclose(arg0, var_a1_2);
    temp_a1_3 = sp28->unk-62B8;
    temp_v0_4 = arg0->imports.fprintf(arg0, temp_a1_3, M2C_ERROR(/* Read from unset register $a2 */), arg0, temp_a1_3);
    arg0->unk7B4C = temp_v0_4;
    sp28->unk-62B0 = 0;
    sp28->unk-62BC = 1;
    if (temp_v0_4 != -1) {
        __glMgrIoctl(arg0, arg0);
        temp_a0_2 = arg0->unk7B48;
        sp28->unk-7E28 = ioctl(temp_a0_2, 0x6D67000AU, temp_a0_2, 0x6D67000A, 0);
block_30:
        temp_a2 = sp28->unk-6DA4;
        if (temp_a2 != 0) {
            if (sp28->unk-6DA0 == 0) {
                var_v0_5 = 0x173;
                var_a0_4 = 0;
                var_s1 = &sub_0dc00000 - 0x4D38;
                do {
                    temp_at_2 = var_a0_4 + &__glSoftim_dispatchTable;
                    temp_v1_2 = var_a0_4 + (var_s1 + 0x1008);
                    var_a0_4 += 4;
                    var_v0_5 -= 1;
                    *temp_v1_2 = *temp_at_2;
                } while (var_v0_5 > 0);
                var_a0_5 = 0x18;
                var_v0_6 = 0;
                do {
                    temp_v1_3 = var_v0_6 + &__glSoftim_vertexDispatchTable;
                    temp_a3_3 = var_v0_6 + (var_s1 + 0x15D4);
                    var_v0_6 += 4;
                    var_a0_5 -= 1;
                    *temp_a3_3 = *temp_v1_3;
                } while (var_a0_5 > 0);
                var_v0_7 = 0xA;
                var_a0_6 = 0;
                do {
                    temp_a3_4 = var_a0_6 + &__glSoftim_normalDispatchTable;
                    temp_a4_5 = var_a0_6 + (var_s1 + 0x16DC);
                    var_a0_6 += 4;
                    var_v0_7 -= 1;
                    *temp_a4_5 = *temp_a3_4;
                } while (var_v0_7 > 0);
                var_a0_7 = 0x20;
                var_v0_8 = 0;
                do {
                    temp_a4_6 = var_v0_8 + &__glSoftim_texCoordDispatchTable;
                    temp_at_3 = var_v0_8 + (var_s1 + 0x1704);
                    var_v0_8 += 4;
                    var_a0_7 -= 1;
                    *temp_at_3 = *temp_a4_6;
                } while (var_a0_7 > 0);
                var_v0_9 = 0x18;
                var_a0_8 = 0;
                do {
                    temp_at_4 = var_a0_8 + &__glMG10im_rasterPosDispatchTable;
                    temp_v1_4 = var_a0_8 + (var_s1 + 0x1784);
                    var_a0_8 += 4;
                    var_v0_9 -= 1;
                    *temp_v1_4 = *temp_at_4;
                } while (var_v0_9 > 0);
                var_v0_10 = 8;
                var_a0_9 = 0;
                do {
                    temp_v1_5 = var_a0_9 + &__glSoftim_rectDispatchTable;
                    temp_a3_5 = var_a0_9 + (var_s1 + 0x17E4);
                    var_a0_9 += 4;
                    var_v0_10 -= 1;
                    *temp_a3_5 = *temp_v1_5;
                } while (var_v0_10 > 0);
            } else {
                goto block_46;
            }
        } else {
block_46:
            var_a0_10 = 0x173;
            if (((void *) sp28)->unk-635B != 0) {
                var_a1_3 = 0;
                var_s1 = &sub_0dc00000 - 0x4D38;
                do {
                    temp_at_5 = var_a1_3 + __glMgrim_dispatchTable;
                    temp_v1_6 = var_a1_3 + (var_s1 + 0x1008);
                    var_a1_3 += 4;
                    var_a0_10 -= 1;
                    *temp_v1_6 = *temp_at_5;
                } while (var_a0_10 > 0);
                var_a0_11 = 0x18;
                var_a1_4 = 0;
                do {
                    temp_v1_7 = var_a1_4 + &__glMgrim_vertexDispatchTable;
                    temp_a3_6 = var_a1_4 + (var_s1 + 0x15D4);
                    var_a1_4 += 4;
                    var_a0_11 -= 1;
                    *temp_a3_6 = *temp_v1_7;
                } while (var_a0_11 > 0);
                var_a1_5 = 0xA;
                var_a0_12 = 0;
                do {
                    temp_a3_7 = var_a0_12 + &__glMgrim_normalDispatchTable;
                    temp_a4_7 = var_a0_12 + (var_s1 + 0x16DC);
                    var_a0_12 += 4;
                    var_a1_5 -= 1;
                    *temp_a4_7 = *temp_a3_7;
                } while (var_a1_5 > 0);
                var_a1_6 = 0x20;
                var_a0_13 = 0;
                do {
                    temp_a4_8 = var_a0_13 + &__glMgrim_texCoordDispatchTable;
                    temp_at_6 = var_a0_13 + (var_s1 + 0x1704);
                    var_a0_13 += 4;
                    var_a1_6 -= 1;
                    *temp_at_6 = *temp_a4_8;
                } while (var_a1_6 > 0);
                var_a1_7 = 0x18;
                var_a0_14 = 0;
                do {
                    temp_at_7 = var_a0_14 + &__glMgrim_rasterPosDispatchTable;
                    temp_v1_8 = var_a0_14 + (var_s1 + 0x1784);
                    var_a0_14 += 4;
                    var_a1_7 -= 1;
                    *temp_v1_8 = *temp_at_7;
                } while (var_a1_7 > 0);
                var_a0_15 = 8;
                var_a1_8 = 0;
                do {
                    temp_v1_9 = var_a1_8 + &__glMgrim_rectDispatchTable;
                    temp_a3_8 = var_a1_8 + (var_s1 + 0x17E4);
                    var_a1_8 += 4;
                    var_a0_15 -= 1;
                    *temp_a3_8 = *temp_v1_9;
                } while (var_a0_15 > 0);
            } else {
                var_a0_16 = 0x173;
                var_v0_11 = 0;
                var_s1 = &sub_0dc00000 - 0x4D38;
                do {
                    temp_at_8 = var_v0_11 + &__glMG10im_dispatchTable;
                    temp_v1_10 = var_v0_11 + (var_s1 + 0x1008);
                    var_v0_11 += 4;
                    var_a0_16 -= 1;
                    *temp_v1_10 = *temp_at_8;
                } while (var_a0_16 > 0);
                var_a0_17 = 0x18;
                var_v0_12 = 0;
                do {
                    temp_v1_11 = var_v0_12 + &__glMgrim_vertexDispatchTable;
                    temp_a3_9 = var_v0_12 + (var_s1 + 0x15D4);
                    var_v0_12 += 4;
                    var_a0_17 -= 1;
                    *temp_a3_9 = *temp_v1_11;
                } while (var_a0_17 > 0);
                var_v0_13 = 0xA;
                var_a0_18 = 0;
                do {
                    temp_a3_10 = var_a0_18 + &__glMgrim_normalDispatchTable;
                    temp_a4_9 = var_a0_18 + (var_s1 + 0x16DC);
                    var_a0_18 += 4;
                    var_v0_13 -= 1;
                    *temp_a4_9 = *temp_a3_10;
                } while (var_v0_13 > 0);
                var_v0_14 = 0x20;
                var_a0_19 = 0;
                do {
                    temp_a4_10 = var_a0_19 + &__glMgrim_texCoordDispatchTable;
                    temp_at_9 = var_a0_19 + (var_s1 + 0x1704);
                    var_a0_19 += 4;
                    var_v0_14 -= 1;
                    *temp_at_9 = *temp_a4_10;
                } while (var_v0_14 > 0);
                var_v0_15 = 0x18;
                var_a0_20 = 0;
                do {
                    temp_at_10 = var_a0_20 + &__glMG10im_rasterPosDispatchTable;
                    temp_v1_12 = var_a0_20 + (var_s1 + 0x1784);
                    var_a0_20 += 4;
                    var_v0_15 -= 1;
                    *temp_v1_12 = *temp_at_10;
                } while (var_v0_15 > 0);
                var_v0_16 = 8;
                var_a0_21 = 0;
                do {
                    temp_v1_13 = var_a0_21 + &__glMgrim_rectDispatchTable;
                    temp_a3_11 = var_a0_21 + (var_s1 + 0x17E4);
                    var_a0_21 += 4;
                    var_v0_16 -= 1;
                    *temp_a3_11 = *temp_v1_13;
                } while (var_v0_16 > 0);
            }
        }
        var_a0_22 = 0x173;
        var_a1_9 = 0;
        do {
            temp_a3_12 = var_a1_9 + &__glmglc_dispatchTable;
            temp_a4_11 = var_a1_9 + (var_s1 + 0x800);
            var_a1_9 += 4;
            var_a0_22 -= 1;
            *temp_a4_11 = *temp_a3_12;
        } while (var_a0_22 > 0);
        var_a1_10 = 0x18;
        var_a0_23 = 0;
        do {
            temp_a4_12 = var_a0_23 + &__glmglc_vertexDispatchTable;
            temp_at_11 = var_a0_23 + (var_s1 + 0xDCC);
            var_a0_23 += 4;
            var_a1_10 -= 1;
            *temp_at_11 = *temp_a4_12;
        } while (var_a1_10 > 0);
        var_a1_11 = 0xA;
        var_a0_24 = 0;
        do {
            temp_at_12 = var_a0_24 + &__glmglc_normalDispatchTable;
            temp_v1_14 = var_a0_24 + (var_s1 + 0xED4);
            var_a0_24 += 4;
            var_a1_11 -= 1;
            *temp_v1_14 = *temp_at_12;
        } while (var_a1_11 > 0);
        var_a1_12 = 0x18;
        var_a0_25 = 0;
        do {
            temp_v1_15 = var_a0_25 + &__glmglc_rasterPosDispatchTable;
            temp_a3_13 = var_a0_25 + (var_s1 + 0xF7C);
            var_a0_25 += 4;
            var_a1_12 -= 1;
            *temp_a3_13 = *temp_v1_15;
        } while (var_a1_12 > 0);
        var_a1_13 = 8;
        var_a0_26 = 0;
        do {
            temp_a3_14 = var_a0_26 + &__glmglc_rectDispatchTable;
            temp_a4_13 = var_a0_26 + (var_s1 + 0xFDC);
            var_a0_26 += 4;
            var_a1_13 -= 1;
            *temp_a4_13 = *temp_a3_14;
        } while (var_a1_13 > 0);
        var_a1_14 = 0x20;
        var_a0_27 = 0;
        do {
            temp_a4_14 = var_a0_27 + &__glmglc_texCoordDispatchTable;
            temp_at_13 = var_a0_27 + (var_s1 + 0xEFC);
            var_a0_27 += 4;
            var_a1_14 -= 1;
            *temp_at_13 = *temp_a4_14;
        } while (var_a1_14 > 0);
        if (arg0->modes.rgbMode != 0) {
            if ((temp_a2 == 0) || (sp28->unk-6DA0 != 0)) {
                var_a0_28 = 0x2A;
                var_a1_15 = 0;
                do {
                    temp_a3_15 = var_a1_15 + __glMgrim_shadowIndexcolorDispatchTable;
                    temp_a4_15 = var_a1_15 + (var_s1 + 0x1634);
                    var_a1_15 += 4;
                    var_a0_28 -= 1;
                    *temp_a4_15 = *temp_a3_15;
                } while (var_a0_28 > 0);
            } else {
                var_a0_29 = 0x2A;
                var_a1_16 = 0;
                do {
                    temp_a4_16 = var_a1_16 + &__glSoftim_colorDispatchTable;
                    temp_at_14 = var_a1_16 + (var_s1 + 0x1634);
                    var_a1_16 += 4;
                    var_a0_29 -= 1;
                    *temp_at_14 = *temp_a4_16;
                } while (var_a0_29 > 0);
            }
            var_a0_30 = 0x2A;
            var_a1_17 = 0;
            var_s1->unk1130 = __glim_IndexMask;
            var_s1->unk1128 = __glMgrim_ColorMask;
            do {
                temp_v1_16 = var_a1_17 + &__glmglc_shadowIndexcolorDispatchTable;
                temp_a3_16 = var_a1_17 + (var_s1 + 0xE2C);
                var_a1_17 += 4;
                var_a0_30 -= 1;
                *temp_a3_16 = *temp_v1_16;
            } while (var_a0_30 > 0);
            var_s1->unk928 = __glsplc_IndexMask;
            var_s1->unk920 = __glMgrlc_ColorMask;
        } else {
            if ((temp_a2 == 0) || (sp28->unk-6DA0 != 0)) {
                var_a1_18 = 0x2A;
                var_a0_31 = 0;
                do {
                    temp_at_15 = var_a0_31 + &__glMgrim_shadowRGBcolorDispatchTable;
                    temp_v1_17 = var_a0_31 + (var_s1 + 0x1634);
                    var_a0_31 += 4;
                    var_a1_18 -= 1;
                    *temp_v1_17 = *temp_at_15;
                } while (var_a1_18 > 0);
            } else {
                var_a0_32 = 0x2A;
                var_a1_19 = 0;
                do {
                    temp_at_16 = var_a1_19 + &__glSoftim_colorDispatchTable;
                    temp_v1_18 = var_a1_19 + (var_s1 + 0x1634);
                    var_a1_19 += 4;
                    var_a0_32 -= 1;
                    *temp_v1_18 = *temp_at_16;
                } while (var_a0_32 > 0);
            }
            var_a0_33 = 0x2A;
            var_a1_20 = 0;
            var_s1->unk1128 = __glim_ColorMask;
            var_s1->unk1130 = __glMgrim_IndexMask;
            do {
                temp_a4_17 = var_a1_20 + &__glmglc_shadowRGBcolorDispatchTable;
                temp_at_17 = var_a1_20 + (var_s1 + 0xE2C);
                var_a1_20 += 4;
                var_a0_33 -= 1;
                *temp_at_17 = *temp_a4_17;
            } while (var_a0_33 > 0);
            var_s1->unk928 = __glMgrlc_IndexMask;
            var_s1->unk920 = __glsplc_ColorMask;
        }
        var_a0_34 = 0x101;
        var_a1_21 = 0;
        do {
            temp_at_18 = var_a1_21 + (var_s1 + 0x1008);
            temp_v1_19 = var_a1_21 + &arg0->unk1E20;
            var_a1_21 += 8;
            var_a0_34 -= 1;
            *temp_v1_19 = *temp_at_18;
        } while (var_a0_34 > 0);
        var_a0_35 = 0x101;
        var_a1_22 = 0;
        do {
            temp_v1_20 = var_a1_22 + (var_s1 + 0x800);
            temp_a3_17 = var_a1_22 + &arg0->unk1610;
            var_a1_22 += 8;
            var_a0_35 -= 1;
            *temp_a3_17 = *temp_v1_20;
        } while (var_a0_35 > 0);
        arg0->unk7B48 = arg0->imports.fclose(arg0, sp28->unk-62B8);
        ((? (*)(__GLcontext *)) arg0->imports.wscx)(arg0);
        temp_a0_3 = arg0->gcState;
        temp_a3_18 = temp_a0_3 & 1;
        if (temp_a3_18 != 0) {
            goto block_84;
        }
        sp4 = 4;
        sp0 = sp28->unk-62A8;
        temp_a0_4 = arg0->unk7B48;
        if (ioctl(temp_a0_4, 0x6D670027U, temp_a0_4, 0x6D670027, sp, temp_a3_18, temp_a0_3 & 2) < 0) {
            arg0->imports.free(arg0, sp28->unk-62A4);
            sp28->unk-62A4 = NULL;
            sp28->unk-62A8 = 0;
        }
        temp_a0_5 = arg0->gcState;
        var_a4 = temp_a0_5 & 2;
        if (!(temp_a0_5 & 1)) {
            *(void *)0x74080 = 0x600;
            *(void *)0x74080 = 0x8C04;
            *(void *)0x74080 = (s32) ((s32) sp28->unk-635C >> 1);
            __glMgrIoctl((__GLcontext *) temp_a0_5, temp_a0_5);
            sp8 = sp28->unk-6E04->unk4A0;
            temp_a0_6 = arg0->unk7B48;
            if (ioctl(temp_a0_6, 0x6D67001EU, temp_a0_6, 0x6D67001E, &sp8) < 0) {
                perror(&sub_0dbe0000 - 0x4648);
            }
            sp28->unk-6E04->unk4A0 = sp8;
            temp_v0_5 = getenv(&sub_0dbe0000 - 0x4630);
            if ((temp_v0_5 != NULL) && ((temp_a0_7 = *temp_v0_5, (temp_a0_7 == 0x79)) || (temp_a0_7 == 0x59) || (temp_a0_7 == 0x31))) {
                temp_a0_8 = &sub_0dbe0000 - 0x4618;
                printf(temp_a0_8, temp_a0_8);
                temp_a0_9 = arg0->unk7B48;
                if (ioctl(temp_a0_9, 0x6D67001AU, temp_a0_9, 0x6D67001A, 1) != 0) {
                    perror(&sub_0dbe0000 - 0x4600);
                    abort();
                }
            }
block_84:
            var_a4 = arg0->gcState & 2;
        }
        if (var_a4 != 0) {
            if (sp50 == 0) {
                if (sp30 != 0) {
                    goto block_88;
                }
            } else {
                goto block_89;
            }
        } else {
block_88:
block_89:
            __glMgrim_RenderMode((enum GLenum) arg0);
            __glMgrim_RenderMode((enum GLenum) arg0);
        }
        if (sp50 != 0) {
            *(s32 *)0x74080 = 0x9F04;
            *(s32 *)0x74080 = (s32) arg0->modes.rgbMode;
        }
        if ((sp38 != 0) || (sp40 != 0)) {
            __glMgrim_RenderMode((enum GLenum) arg0);
        }
        if (sp38 != 0) {
            *(void *)0x74080 = 0x9E00;
        }
        sp48 = (s64) temp_s2;
        sp10 = 0;
        __glMakeCurrentBuffers(arg0, &sp10);
        if (!(arg0->gcState & 2)) {
            __glMgrim_RenderMode((enum GLenum) arg0);
        }
        if (arg0->gcState & 6) {
            if (M2C_ERROR(/* Read from unset register $v0 */) & 0xFF) {
                __glFindWindowSize(arg0);
            }
            if (sp50 != 0) {
                __glMgrasDrawBuffer(arg0->unk6FC);
            }
            if (sp30 != 0) {
                __glMgrasReadBuffer(arg0->unk47C);
            }
            if ((sp50 != 0) && (sp28->unk-6D9B != 0)) {
                var_s1->unk113C(0xB71);
            }
            __glUpdateViewport(arg0);
        } else {
            __glSoftResetContext(arg0);
            temp_v0_6 = sp28->unk-635B;
            switch (temp_v0_6) {                    /* irregular */
            case 4:
                arg0->unkCFC = &sub_0dbe0000 - 0x45E0;
                break;
            case 1:
                arg0->unkCFC = &sub_0dbe0000 - 0x43D0;
                break;
            case 0:
                arg0->unkCFC = &sub_0dbe0000 - 0x41D8;
                break;
            }
            arg0->imports.atoi(arg0, &sp14);
            arg0->unkD54 = sp1C;
            arg0->unkD58 = sp20;
            __glMgrim_dispatchTable(0, 0, sp1C, sp20);
            __glMgrim_dispatchTable(0, 0, sp1C, sp20);
            __glMgrasInitDefaultValues(arg0, arg0);
            if (arg0->modes.doubleBufferMode != 0) {
                __glMgrim_DrawBuffer(GL_BACK);
            } else {
                __glMgrim_DrawBuffer(GL_FRONT);
            }
            if (arg0->readModes.doubleBufferMode != 0) {
                __glMgrim_ReadBuffer(GL_BACK);
            } else {
                __glMgrim_ReadBuffer(GL_FRONT);
            }
        }
        if (!(arg0->gcState & 1)) {
            arg0->unkCF4 = &arg0->unk7B50;
            mgrTM_Init();
            __glMgrInitEvaluators(arg0, arg0);
            __glMgrInitPixels(arg0, arg0);
            __glMgrInitConvolutionState(arg0, arg0);
            __glMgrInitColorTableState(arg0, arg0);
            __glMgrInitDLDMA(arg0, arg0);
            ((? (*)(__GLcontext *)) arg0->procs.table[0x1D])(arg0);
        }
        mgrTM_SetBasereg(arg0);
        __glContextSetColorScales(arg0);
        temp_a5 = arg0->unk1250;
        if (*(s32 *)0x1040 != 0) {
            if (temp_a5 != 0) {
                arg0->unk1608 = &arg0->unk2628;
                if (arg0->unk124C != 0x1300) {
                    var_a6 = arg0->unk1E18;
                } else {
                    var_a6 = &arg0->unk1610;
                }
                var_a0_36 = 0x101;
                var_v0_17 = 0;
                do {
                    temp_at_19 = var_v0_17 + &arg0->unk1E20;
                    temp_a4_18 = var_v0_17 + var_a6;
                    var_v0_17 += 8;
                    var_a0_36 -= 1;
                    *temp_at_19 = *temp_a4_18;
                } while (var_a0_36 > 0);
            } else {
                arg0->unk1608 = (? *) sp48;
            }
        } else {
            var_a0_37 = 0x101;
            if (temp_a5 != 0) {
                arg0->unk1608 = &arg0->unk2628;
                if (arg0->unk124C != 0x1300) {
                    var_a5_2 = arg0->unk1E18;
                } else {
                    var_a5_2 = &arg0->unk1610;
                }
                var_a0_38 = 0x101;
                var_v0_18 = 0;
                do {
                    temp_v1_21 = var_v0_18 + 0x1048;
                    temp_at_20 = var_v0_18 + var_a5_2;
                    var_v0_18 += 8;
                    var_a0_38 -= 1;
                    *temp_v1_21 = *temp_at_20;
                } while (var_a0_38 > 0);
            } else {
                var_v0_19 = 0;
                arg0->unk1608 = (? *)0x1048;
                do {
                    temp_a4_19 = var_v0_19 + 0x1048;
                    temp_a3_19 = var_v0_19 + &arg0->unk1E20;
                    var_v0_19 += 8;
                    var_a0_37 -= 1;
                    *temp_a4_19 = *temp_a3_19;
                } while (var_a0_37 > 0);
            }
        }
        if (arg0->unk1250 != 0) {
            *(s32 *)0x1020 = arg0->unk1290;
            *(s32 *)0x1024 = arg0->unk1294;
            *(s32 *)0x1028 = arg0->unk1298;
            *(s32 *)0x102C = arg0->unk129C;
        }
        if (arg0->unk7B7C == 0) {
            __glMgrim_RenderMode((enum GLenum) arg0);
        }
        arg0->gcState = (arg0->gcState | 3) & ~4;
        return;
    }
    arg0->imports.free(NULL, arg0);
}

void MakeCurrent(void *arg0) {
    s32 temp_s8;

    temp_s8 = arg0->unk3C();
    arg0->unk40(arg0);
    __glMgrim_RenderMode((enum GLenum) arg0);
}

void VisualsMatch(void *arg1, s32 arg2, void *arg3, s32 arg4) {
    if ((arg3->unk9 != 0) && (arg1->unk9 != 0)) {
        if (arg4 != 4) {
            if (arg2 != 4) {

            } else {
                goto block_6;
            }
        } else {
block_6:
            if ((arg4 == 1) || (arg2 == 1)) {

            }
        }
    }
}

void __glMgrCreateContext(__GLcontext *gc, s64 arg1, void *arg2, ...) {
    s64 sp10;
    s64 sp8;
    __GLcontext *temp_v0;
    __GLcontext *var_v0_3;
    __GLcontextModes *temp_a2;
    __GLcontextModes *temp_a5;
    s32 *temp_a3;
    s32 *temp_a4;
    s32 *temp_a4_2;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_v1;
    s32 temp_a3_2;
    s32 temp_a4_3;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_v0_2;
    s64 var_a1_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_v0_3;
    void *temp_v0_4;

    sp10 = arg1;
    temp_v0 = gc->imports.calloc(NULL, 1U, 0xBA48U);
    if (temp_v0 == NULL) {
        return;
    }
    temp_v0_2 = sysconf(0xB);
    sp8 = temp_v0_2;
    temp_v0_3 = gc->imports.malloc(temp_v0, temp_v0_2 + 3);
    temp_t0 = ~(sp8 - 1) & ((u64) (((sp8 + temp_v0_3) - 1) << 0x20) >> 0x20);
    temp_a7 = temp_t0 << 0;
    var_a1 = 0;
    if (temp_a7 != 0) {
        var_a2 = 0x13;
        temp_v0->unk9D58 = temp_t0;
        temp_v0->unk9D5C = temp_v0_3;
        var_v0 = 0x16;
        *temp_a7 = (s32) (*temp_a7 & 0x7FFFFFFF);
        do {
            temp_a4 = var_a1 + temp_v0;
            temp_a3 = var_a1 + gc;
            var_a1 += 4;
            temp_a3_2 = *temp_a3;
            var_a2 -= 1;
            *temp_a4 = temp_a3_2;
        } while (var_a2 > 0);
        var_a1_2 = 0;
        do {
            temp_at = var_a1_2 + &temp_v0->readModes;
            temp_a4_2 = var_a1_2 + sp10;
            var_a1_2 += 4;
            temp_a4_3 = *temp_a4_2;
            var_v0 -= 1;
            *temp_at = temp_a4_3;
        } while (var_v0 > 0);
        var_v0_2 = 0x16;
        var_a1_3 = 0;
        temp_a5 = &temp_v0->modes;
        temp_a2 = &temp_v0->readModes;
        do {
            temp_v1 = var_a1_3 + temp_a5;
            temp_at_2 = var_a1_3 + temp_a2;
            var_a1_3 += 4;
            var_v0_2 -= 1;
            *temp_v1 = *temp_at_2;
        } while (var_v0_2 > 0);
        temp_v0->unk9260 = 0;
        temp_v0->unk925C = 0;
        if (getenv(&sub_0dbe0000 - 0x4040, var_a1_3, temp_a2, temp_a3_2, temp_a4_3, temp_a5, gc, temp_a7) != NULL) {
            temp_v0->unk9261 = 1;
        } else {
            temp_v0->unk9261 = 0;
        }
        if (getenv(&sub_0dbe0000 - 0x4028) != NULL) {
            temp_v0->unk9262 = 1;
        } else {
            temp_v0->unk9262 = 0;
        }
        temp_v0->unkD0C = 1;
        temp_v0->unkD08 = 1;
        temp_v0->unkD70 = 3;
        temp_v0->unkD10 = 0x800;
        temp_v0->unkD14 = 0x800;
        temp_v0->unkD04 = 6;
        temp_v0->unkD00 = 8;
        temp_v0->unkD2C = 0xC000;
        temp_v0->unkD30 = 0xC000;
        temp_v0->unkD64 = 0x2000;
        if (temp_v0->unk9CA5 != 0) {
            temp_v0->unkD6C = 0xE;
        } else {
            temp_v0->unkD6C = 0xB;
        }
        temp_v0->unk1238 = 0;
        temp_v0->unk1234 = NULL;
        temp_v0->unk1230 = NULL;
        temp_v0->unk1228 = NULL;
        temp_v0->unk11CC = 1;
        temp_v0->unkD88 = 10.0f;
        temp_v0->unkD7C = 10.0f;
        temp_v0->unkD8C = 0.125f;
        temp_v0->unkD80 = 0.125f;
        temp_v0->unkD84 = 0.5f;
        temp_v0->unkD9C = 0x10;
        temp_v0->unkD98 = 0x10;
        temp_v0->unkDA0 = 0x40;
        temp_v0->unkD74 = 0x40;
        temp_v0->unkD90 = 0x1E;
        temp_v0->unk1278 = __glMgrSPBalloc;
        temp_v0->unk127C = __glMgrSPBfree;
        temp_v0->unk121C = __glMgrDlistFreeArray;
        temp_v0->unk123C = __glMgrSPFreeDlist;
        temp_v0->unkD78 = 0.5f;
        temp_v0->unk1224 = __glSPDlistCompiler;
        temp_v0->unk1220 = __glMgrDlistOptimizer;
        temp_v0->unkDA4 = 0x20;
        temp_v0->unkDB0 = 2;
        temp_v0->unkDAC = 2;
        temp_v0->unkDA8 = 2;
        temp_v0->unkD28 = 7;
        temp_v0->unkD24 = 7;
        temp_v0->unkD20 = 7;
        temp_v0->unkD1C = 7;
        temp_v0->unkD18 = 7;
        temp_v0->unkD94 = 0x1000;
        temp_v0->unk1280 = __glMgrSPCompMachdep;
        temp_v0->unk1284 = __glMgr_dlerror;
        temp_v0->unk1244 = __glMgrSPValidateDLExec;
        temp_v0->unk1240 = __glMgrSPMoreBlocks;
        temp_v0->unk1218 = __glMgrDlistNewArray;
        temp_v0->unk122C = __glMgrDlistInitState;
        if (arg2 != NULL) {
            __glShareDlist(temp_v0, arg2);
            __glShareTextureObjects(temp_v0, arg2);
            temp_a4_4 = arg2->unk91FC;
            temp_v0->unk91FC = temp_a4_4;
            temp_a4_5 = temp_a4_4->unk49C;
            temp_a4_5->unk8 = (s32) (temp_a4_5->unk8 + 1);
        } else {
            temp_v0_4 = temp_v0->imports.malloc(temp_v0, 0x4E8U);
            temp_v0->unk91FC = temp_v0_4;
            memset(temp_v0_4, 0, 0x4E8U);
            __glNamesNewArray(temp_v0, 1);
            temp_v0->unk91FC->unk49C = (s32) M2C_ERROR(/* Read from unset register $v0 */);
            mgrTM_InitTMhw(temp_v0);
        }
        __glEarlyInitContext(temp_v0);
        temp_v0->unk7B7C = 1;
        temp_v0->exports.beginDispatchOverride = &sub_0da70000 - 0xCC0;
        temp_v0->exports.notifyResize = &sub_0da70000 + 0x124C;
        temp_v0->exports.forceCurrent = &sub_0da70000 + 0x48;
        temp_v0->exports.copyContext = &sub_0da70000 + 0x11E0;
        temp_v0->exports.shareContext = &sub_0da70000 - 0xB24;
        __glMgr_InitPixelStatState(temp_v0, temp_v0);
        __glMgrInitAttributeState(temp_v0, temp_v0);
        var_v0_3 = temp_v0;
        do {
            var_v0_3->unk1EB = 0xFF;
            var_v0_3->unk1EA = 0xFF;
            var_v0_3->unk1E9 = 0xFF;
            var_v0_3 += 4;
            var_v0_3->unk1E4 = 0xFF;
        } while (var_v0_3 != &temp_v0->exports.unk34);
        temp_v0->unk9D44 = 0;
        return;
    }
    gc->imports.free(NULL, temp_v0);
}

void __glMgrasInitOpenGLDefaultValues(__GLcontext *gc, ...) {
    ? sp30;
    ? var_a0;

    // Error: Tried to use a double-precision instruction with odd-numbered float register $f1
    // At instruction: sdc1 $f1, 0x48($sp)
    if (M2C_ERROR()) {
        var_a0 = 0x404;
    }
    saved_reg_s0->unk11D8(var_a0);
    saved_reg_s0->unk1094(1.0f);
    saved_reg_s0->unk1040(0x405);
    saved_reg_s0->unk1098(0x408, 0x1B02);
    saved_reg_s0->unk1054(0x901);
    saved_reg_s0->unk102C(1);
    saved_reg_s0->unk1038(0x3000, &sp30);
    saved_reg_s0->unk1038(0x3001, &sp30);
    saved_reg_s0->unk1038(0x3002, &sp30);
    saved_reg_s0->unk1038(0x3003, &sp30);
    saved_reg_s0->unk1038(0x3004, &sp30);
    saved_reg_s0->unk1038(0x3005, &sp30);
    saved_reg_s0->unk111C(0);
    saved_reg_s0->unk1114(0);
    saved_reg_s0->unk1138(0xB71);
}

void __glMgrasInitDefaultValues(__GLcontext *gc, ...) {
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t8;

    gc->unk96D4 = 0;
    gc->unk979C = 0x4FF;
    gc->unk97A0 = 0x3FF;
    gc->unk97A4 = 0x4FF;
    gc->unk97A8 = 0x3FF;
    gc->unk97AC = 0x4FF;
    gc->unk97B0 = 0x3FF;
    gc->unk97B4 = 0x4FF;
    gc->unk97B8 = 0x3FF;
    gc->unk97BC = 0;
    gc->unk96C0 = (s32) ((gc->unk96C0 | 0x10000000 | 0x1000) & ~0x2000);
    temp_at = gc->unk96C4 & ~1 & ~6;
    gc->unk96C4 = temp_at;
    gc->unk96C4 = (s32) ((((-0xE01 & ((temp_at & ~0x18 & ~0x60) | 0x40)) | 0x400) & ~0x70000) | 0x40000);
    gc->unk96C8 = (s32) (-9 & ((gc->unk96C8 & ~7) | 4) & ~0xFF0);
    temp_t3 = gc->unk96C;
    gc->unk96CC = (s32) (((gc->unk974 + temp_t3) - 1) | (temp_t3 << 0x10));
    temp_t3_2 = gc->unk970;
    gc->unk97E4 = (s32) (gc->unk97E4 | 0x40000);
    temp_a7 = gc->unk9804 | 1;
    gc->unk9804 = temp_a7;
    gc->unk96D0 = (s32) (((gc->unk978 + temp_t3_2) - 1) | (temp_t3_2 << 0x10));
    gc->unk9788 = 0;
    gc->unk978C = 0;
    gc->unk9790 = 0;
    gc->unk9798 = (s32) (gc->unk9798 & ~0xFF);
    gc->unk97EC = (s32) (-0x100 & ((gc->unk97EC | 0xF0000) & ~0xFF00));
    temp_at_2 = gc->unk9880 & ~0x800000 & ~0x400000 & ~0x200000 & ~0x100000;
    gc->unk9880 = temp_at_2;
    temp_t8 = ((temp_at_2 | 0x80000) & ~0x8000) | 0x4000 | 0x100;
    gc->unk9880 = temp_t8;
    gc->unk9794 = 0;
    gc->unk9814 = (s32) (((gc->unk9814 & ~0xF) | 1) & ~0xF0);
    gc->unk97D8 = -1;
    gc->unk97DC = -1;
    gc->unk97E8 = -1;
    gc->unk9890 = 0;
    gc->unk9894 = 0;
    gc->unk9800 = 0;
    gc->unk9880 = (s32) (((temp_t8 | 0x80 | 0x40 | 0x20) & ~0xC) | 4);
    gc->unk982C = 0;
    gc->unk9830 = 0;
    temp_a5 = gc->unk981C | 0xFF | 0xFF00;
    temp_a3 = -9 & ((temp_a7 | 2) & ~4) & ~0x10;
    gc->unk9804 = temp_a3;
    gc->unk981C = temp_a5;
    temp_a3_2 = (gc->unk9820 & ~7) | 1;
    gc->unk9820 = (s32) ((-9 & temp_a3_2) | 0x0FFFFFF0);
    temp_t0 = gc->unk9818 | 7;
    gc->unk9818 = temp_t0;
    gc->unk9804 = (s32) ((temp_a3 & ~0x20 & ~0x40 & ~0x80 & ~0x3C000000) | 0x0C000000);
    gc->unk9824 = (s32) ((gc->unk9824 | 7) & ~0x7FF8);
    temp_a7_2 = temp_t0 & ~0x38 & ~0x1C0;
    gc->unk9828 = (s32) (gc->unk9828 & ~1 & ~0x3FFF0);
    temp_a6 = -0xE01 & temp_a7_2 & ~0xFF000;
    gc->unk9818 = temp_a6;
    temp_a0 = gc->unk7B48;
    if (ioctl(temp_a0, 0x6D670017U, temp_a0, 0x6D670017, sp, temp_a3_2, 0x0FFFFFF0, temp_a5, temp_a6, temp_a7_2) < 0) {
        __glMgrasInitOpenGLDefaultValues(gc, gc, &sub_0dbe0000 - 0x4018);
    }
    if (gc->modes.maxAuxBuffers != 0) {
        gc->unk9834 = sp4;
    } else {
        gc->unk9834 = sp8;
    }
    gc->unk94B0 = 0x3F;
    gc->unk983C = 0;
    gc->unk7B74 = 0;
    __glMgrasWrite(gc, gc, 0x110, gc->unk96C0, SYMBOL_LOCATION.unk154, 0);
    __glMgrasWrite(gc, gc, 0x111, gc->unk96C4, SYMBOL_LOCATION.unkD4, 0);
    __glMgrasWrite(gc, gc, 0x112, gc->unk96C8, SYMBOL_LOCATION.unk4, 0);
    __glMgrasWrite(gc, gc, 0x113, gc->unk96CC, SYMBOL_LOCATION.unk8, 0);
    __glMgrasWrite(gc, gc, 0x114, gc->unk96D0, SYMBOL_LOCATION.unkC, 0);
    __glMgrasWrite(gc, gc, 0x142, gc->unk9788, SYMBOL_LOCATION.unk1C, 0);
    __glMgrasWrite(gc, gc, 0x143, gc->unk978C, SYMBOL_LOCATION.unk20, 0);
    __glMgrasWrite(gc, gc, 0x144, gc->unk9790, SYMBOL_LOCATION.unk24, 0);
    __glMgrasWrite(gc, gc, 0x145, gc->unk9794, SYMBOL_LOCATION.unk28, 0);
    __glMgrasWrite(gc, gc, 0x116, gc->unk9798, SYMBOL_LOCATION.unk2C, 0);
    __glMgrasWrite(gc, gc, 0x156, gc->unk97D8, SYMBOL_LOCATION.unk60, 0);
    __glMgrasWrite(gc, gc, 0x157, gc->unk97DC, SYMBOL_LOCATION.unk64, 0);
    __glMgrasWrite(gc, gc, 0x192, gc->unk98C8, SYMBOL_LOCATION.unk114, 0);
    __glMgrasWrite(gc, gc, 0x182, gc->unk9888, SYMBOL_LOCATION.unkE0, 0);
    __glMgrasWrite(gc, gc, 0x184, gc->unk9890, SYMBOL_LOCATION.unkE8, 0);
    __glMgrasWrite(gc, gc, 0x185, gc->unk9894, SYMBOL_LOCATION.unkEC, 0);
    __glMgrasWrite(gc, gc, 0x8C, gc->unk94B0, SYMBOL_LOCATION.unk0, 0);
    gc->unk98A0 = 0x7FF7FF;
    gc->unk98A4 = 0x7FF7FF;
    gc->unk989C = (s32) ((((gc->unk989C & ~0xFF) | 1) & ~0xF00) | 0x100);
    __glMgrasWrite(gc, gc, 0x188, gc->unk98A0, SYMBOL_LOCATION.unkF8, 0, -0xF01, 0x7FF7FF);
    __glMgrasWrite(gc, gc, 0x189, gc->unk98A4, SYMBOL_LOCATION.unkFC, 0);
    __glMgrasWrite(gc, gc, 0x18B, gc->unk98AC, SYMBOL_LOCATION.unk104, 0);
    __glMgrasWrite(gc, gc, 0x0C000160, gc->unk9800, SYMBOL_LOCATION.unk74, 0);
    __glMgrasWrite(gc, gc, 0x0C000161, gc->unk9804, SYMBOL_LOCATION.unk158, 0);
    __glMgrasWrite(gc, gc, 0x0C000168, gc->unk9820, SYMBOL_LOCATION.unk90, 0);
    __glMgrasWrite(gc, gc, 0x0C000162, gc->unk9808, SYMBOL_LOCATION.unk78, 0);
    __glMgrasWrite(gc, gc, 0x0C000163, gc->unk980C, SYMBOL_LOCATION.unk7C, 0);
    __glMgrasWrite(gc, gc, 0x0C000164, gc->unk9810, SYMBOL_LOCATION.unk80, 0);
    __glMgrasWrite(gc, gc, 0x0C000165, sub_0dbf0000.unk-62C, SYMBOL_LOCATION.unk84, 0);
    __glMgrasWrite(gc, gc, 0x0C00016B, gc->unk982C, SYMBOL_LOCATION.unk9C, 0);
    __glMgrasWrite(gc, gc, 0x0C00016C, gc->unk9830, SYMBOL_LOCATION.unkA0, 0);
    __glMgrasWrite(gc, gc, 0x0C000166, gc->unk9818, SYMBOL_LOCATION.unk88, 0);
    __glMgrasWrite(gc, gc, 0x0C000167, gc->unk981C, SYMBOL_LOCATION.unk8C, 0);
    __glMgrasWrite(gc, gc, 0x0C000169, gc->unk9824, SYMBOL_LOCATION.unk94, 0);
    __glMgrasWrite(gc, gc, 0x0C00016A, gc->unk9828, SYMBOL_LOCATION.unk98, 1);
    __glMgrasWrite(gc, gc, 0x0C00016F, gc->unk983C, SYMBOL_LOCATION.unkA8, 1);
    __glMgrasSet(gc, gc, 0x15A, gc->unk97E8, 0);
    __glMgrasSet(gc, gc, 0x15B, gc->unk97EC, 0);
    __glMgrasSet(gc, gc, 0x187, gc->unk989C, 1);
    __glMgrasInitOpenGLDefaultValues(gc, gc);
}
