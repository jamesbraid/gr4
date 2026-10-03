typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[0xB78];                 /* maybe part of gcState[0x2DF]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x543];                /* maybe part of yInverted[0x544]? */
    /* 0x1210 */ void *unk1210;                     /* inferred */
    /* 0x1214 */ s32 unk1214;                       /* inferred */
    /* 0x1218 */ char pad1218[0x30];                /* maybe part of unk1214[0xD]? */
    /* 0x1248 */ s32 unk1248;                       /* inferred */
    /* 0x124C */ char pad124C[0x20];                /* maybe part of unk1248[9]? */
    /* 0x126C */ void *(*unk126C)(?);               /* inferred */
    /* 0x1270 */ char pad1270[4];
    /* 0x1274 */ s32 unk1274;                       /* inferred */
    /* 0x1278 */ char pad1278[0x30];                /* maybe part of unk1274[0xD]? */
    /* 0x12A8 */ s32 unk12A8;                       /* inferred */
    /* 0x12AC */ char pad12AC[0x1AE0];              /* maybe part of unk12A8[0x6B9]? */
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
s32 atoi(s32, ?);                                   /* extern */
? close(s64);                                       /* extern */
s32 getenv(void *);                                 /* extern */
s64 getpagesize();                                  /* extern */
s32 mmap(?, void *(*)(__GLcontext *, void *, u32), ?, ?, s64, ?); /* extern */
s32 munmap(s32, s32);                               /* extern */
s64 open(void *, ?);                                /* extern */
? perror(__GLcontext *, void *);                    /* extern */
? sginap(?);                                        /* extern */
void *sub_0da90000(s64, void *, s32);               /* extern */
extern s32 MgrasPrevVidTexture;
extern ? sub_0dbe0000;

void __glMgrim_ListParameterfvSGIX(__GLcontext *gc, s32 arg1, s64 arg2, ...) {
    s64 sp0;
    __GLcontext *temp_s0;
    f32 var_f4;
    f64 temp_f5;
    void *temp_s1;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        if (arg1 == 0x8182) {
            sp0 = arg2;
            if (gc != NULL) {
                __glNamesLockData(temp_s0, temp_s0->unk1214, gc, 0x8182, gc);
                temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    temp_f5 = (f64) *sp0;
                    var_f4 = second half of f64;
                    if (temp_f5 < GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U)) {
                        var_f4 = 0.0f;
                    } else if (temp_f5 > 1.0) {
                        var_f4 = 1.0f;
                    }
                    temp_s1->unk2C = var_f4;
                    if (temp_s1->unk14->unkC & 4) {
                        temp_s1->unk30 = var_f4;
                    } else {
                        temp_s1->unk30 = (f32) ((f64) var_f4 * (second half of f64));
                    }
                    if (temp_s1->unk20 & 2) {
                        __glDlistHeapPriorityChanged(temp_s0->unk1210 + 4, temp_s1 + 0x30);
                    }
                    __glNamesUnlockData(temp_s0, temp_s1);
                    return;
                }
                return;
            }
            __glSetError(0x501, (__GLcontext *)0x8182, gc);
            return;
        }
        __glSetError(0x500, (__GLcontext *)0x8182, gc);
        return;
    }
    __glSetError(0x502, gc);
}

void __glMgrim_ListParameterfSGIX(__GLcontext *gc, f32 fparg2, ...) {
    f32 sp20;

    sp20 = fparg2;
    __glMgrim_ListParameterfvSGIX(gc, &sp20);
}

void __glMgrim_ListParameterivSGIX(__GLcontext *gc, s32 *arg2, ...) {
    __glMgrim_ListParameterfvSGIX(gc, sp, (f32) *arg2);
}

void __glMgrim_ListParameteriSGIX(__GLcontext *gc, s32 arg2, ...) {
    __glMgrim_ListParameterfvSGIX(gc, sp, (f32) arg2);
}

void __glMgrim_GetListParameterfvSGIX(__GLcontext *gc, s32 arg1, s64 arg2, ...) {
    s64 sp8;
    s64 sp0;

    if (__glBeginMode != 1) {
        if (arg1 == 0x8182) {
            sp0 = (s64) __glCurrentContext;
            sp8 = arg2;
            if (gc != NULL) {
                __glNamesLockData((__GLcontext *) sp0, sp0->unk1214, gc, 0x8182, (__GLcontext *) arg2, gc);
                if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                    return;
                }
                *sp8 = (f32) M2C_ERROR(/* Read from unset register $v0 */)->unk2C;
                __glNamesUnlockData((__GLcontext *) sp0, M2C_ERROR(/* Read from unset register $v0 */), sp8);
                return;
            }
            __glSetError(0x501, (__GLcontext *)0x8182, (__GLcontext *) arg2, gc);
            return;
        }
        __glSetError(0x500, (__GLcontext *)0x8182, (__GLcontext *) arg2, gc);
        return;
    }
    __glSetError(0x502, (__GLcontext *) arg2, gc);
}

void __glMgrim_GetListParameterivSGIX(__GLcontext *gc, s32 *arg2, ...) {
    f32 sp0;

    sp0 = (f32) *arg2;
    __glMgrim_GetListParameterfvSGIX(gc, sp);
    *arg2 = (s32) sp0;
}

void __glMgrSPBalloc(__GLcontext *gc, u32 *arg1, ...) {
    u32 var_a3;

    if (gc->unk12A8 & 1) {
        var_a3 = *arg1;
        if (var_a3 < 0x3F8U) {
            var_a3 = 0x3F8;
            goto block_3;
        }
    } else {
        var_a3 = (1 << gc->unk1210->unk10->unk14) - 6;
block_3:
        *arg1 = var_a3;
    }
    gc->imports.malloc(gc, var_a3 * 4);
}

void __glMgrSPBfree(__GLcontext *gc, void *arg1, ...) {
    gc->imports.free(gc, arg1);
}

void __glMgrSPMoreBlocks(__GLcontext *gc, ...) {

}

void __glMgrDLIoctl(__GLcontext *gc, u32 arg1, s32 arg2, ...) {
    s32 temp_a0;

    temp_a0 = gc->unk7B48;
    ioctl(temp_a0, arg1, temp_a0, arg2 + 0x20);
}

void __glMgrDLDMASync(__GLcontext *gc, ...) {
    s64 sp0;
    void *temp_s3;

    if (gc->imports.atoi != NULL) {
        if (__glCurrentContext->unk9D44 != 0) {
            sp0 = (s64) gc;
            *(s32 *)0x74080 = 0xE0100;
            temp_s3 = __glCurrentContext->unk9D48 + 0x70000;
            do {
                sginap(0);
            } while (temp_s3->unk104 & 0xF);
            sp0->unk1C = 0;
        }
    }
}

void __glMgrInitDLDMA(__GLcontext *gc, s32 arg3, ...) {
    s32 temp_a0;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_v0;
    s32 var_v0_2;
    void *temp_s1;

    var_a3 = arg3;
    gc->frontBuffer.buf.loseCurrent = NULL;
    gc->unk7BAC = 0;
    temp_s1 = gc->unk1210->unk10;
    if (temp_s1->unk14 == 0) {
        var_a0 = (s32) gc->unk81D8 >> 2;
        var_a3 = var_a0 < 2;
        var_v0 = 0;
        if (var_a3 == 0) {
loop_14:
            var_v0 += 1;
            temp_a0 = var_a0 >> 1;
            if (temp_a0 >= 2) {
                var_v0 += 1;
                var_a0 = temp_a0 >> 1;
                var_a3 = var_a0 < 2;
                if (var_a3 == 0) {
                    goto loop_14;
                }
            }
        }
        temp_s1->unk14 = var_v0;
    }
    temp_s1->unkC = 0x100;
    __glMgrDLIoctl(gc, gc, 0x6D670024, temp_s1, var_a3);
    if (M2C_ERROR(/* Read from unset register $v0 */) > 0) {
        temp_s2 = getpagesize() * M2C_ERROR(/* Read from unset register $v0 */);
        temp_v0 = getenv(&sub_0dbe0000 - 0x3FF0);
        if (temp_v0 == 0) {
            if (temp_s2 >= 0x02000000) {
                temp_s1->unkC = (s32) (temp_s1->unkC * 2);
            }
        } else {
            var_v0_2 = atoi(temp_v0, 0x02000000);
            temp_at = gc->unk81D8;
            temp_lo = temp_s2 / temp_at;
            M2C_TRAP_IF(temp_at == 0);
            if (temp_lo < var_v0_2) {
                var_v0_2 = temp_lo;
            }
            if (var_v0_2 > 0x8000) {
                var_v0_2 = 0x8000;
            }
            if (var_v0_2 < 0x10) {
                var_v0_2 = 0x10;
            }
            temp_s1->unkC = var_v0_2;
        }
    }
    gc->frontBuffer.buf.free = (void (*)()) (getenv(&sub_0dbe0000 - 0x3FD8) != 0);
}

void __glMgrDlistNewArray(__GLcontext *gc, void *arg1, ...) {
    void *temp_v0;

    temp_v0 = gc->unk126C(0x180);
    arg1->unk10 = temp_v0;
    temp_v0->unk38 = 0;
    temp_v0->unk34 = 0;
    temp_v0->unk30 = 1;
    temp_v0->unk2C = 0;
    temp_v0->unk28 = 0;
    temp_v0->unk24 = 4;
    temp_v0->unk20 = 0;
    temp_v0->unk14 = 0;
    temp_v0->unk1C = 0;
    temp_v0->unk18 = 0;
    temp_v0->unk0 = 0;
    temp_v0->unk10 = 0;
    __glDlistHeapInit(arg1 + 4, 1);
}

void __glMgrTermDLPool(__GLcontext *gc, ...) {
    s64 sp0;
    s32 temp_a2;

    temp_a2 = gc->unk1210->unk10;
    if (gc->unk7BAC != 0) {
        sp0 = (s64) temp_a2;
        if (__glCurrentContext == gc) {
            __glMgrDLIoctl((__GLcontext *) sp0, sp0, temp_a2);
            sp0->unk20 = 3;
            __glMgrDLIoctl(gc, gc, 0x6D67000B, sp0);
        }
        gc->unk7BAC = 0U;
    }
}

void __glMgrDlistFreeArray(__GLcontext *gc, void *arg1, ...) {
    void *temp_s0;

    temp_s0 = arg1->unk10;
    if (temp_s0->unk0 != 0) {
        __glMgrDLAllocClose(gc, gc, temp_s0);
        __glMgrDLFlushClose(gc, gc, temp_s0);
        if (munmap(temp_s0->unk4, temp_s0->unk8) < 0) {
            M2C_ERROR(/* Read from unset register $t9 */)(&sub_0dbe0000 - 0x3FC0);
        }
        temp_s0->unk0 = 0;
        temp_s0->unk4 = 0;
        temp_s0->unk10 = 0;
    }
    perror(gc, temp_s0);
    __glDlistHeapFree(arg1 + 4);
}

void __glMgrDLOutOfPool(__GLcontext *gc, void *arg1, ...) {
    s64 sp20;
    __GLcontext *temp_s3;
    s32 temp_a2;
    s64 var_ra;
    u32 temp_v0;
    u32 var_s2;
    void *temp_s6;
    void *var_s1;

    var_ra = saved_reg_ra;
    if (arg1->unk20 & 2) {
        __glDlistHeapRemove(gc->unk1210 + 4, arg1 + 0x30);
        temp_a2 = arg1->unk20 & ~2;
        arg1->unk20 = temp_a2;
        __glMgrDLNotResident(gc, gc, arg1, temp_a2, -3);
        var_ra = sp20;
    }
    temp_s6 = arg1->unk14;
    temp_v0 = temp_s6->unk34;
    if (temp_v0 != 0) {
        var_s2 = 0;
        var_s1 = temp_s6->unk38;
        temp_s3 = gc->unk1210->unk10;
        if (temp_v0 != 0) {
            sp20 = var_ra;
loop_6:
            var_s2 += 1;
            if (var_s1->unk0 != -1) {
                __glMgrDLIoctl(temp_s3, temp_s3);
                __glMgrDLFree(temp_s3, temp_s3, var_s1);
                var_s1->unk0 = -1;
            }
            var_s1 += 0x1C;
            if (var_s2 < temp_s6->unk34) {
                goto loop_6;
            }
        }
    }
}

void __glMgrTexOutOfPool(__GLcontext *gc, void *arg1, ...) {
    __GLcontext *temp_s3;
    s32 *var_s0;
    u32 temp_a0;
    u32 var_s1;
    void *temp_a3;

    temp_a3 = gc->unk1210;
    if ((temp_a3 != NULL) && (arg1 != NULL)) {
        temp_a0 = arg1->unk2C;
        if (temp_a0 != 0) {
            temp_s3 = temp_a3->unk10;
            var_s0 = arg1->unk30;
            var_s1 = 0;
            if (temp_a0 != 0) {
loop_6:
                var_s1 += 1;
                if (*var_s0 != -1) {
                    __glMgrDLIoctl(temp_s3, temp_s3);
                    __glMgrDLFree(temp_s3, temp_s3, var_s0);
                    *var_s0 = -1;
                }
                var_s0 += 0x1C;
                if (var_s1 < arg1->unk2C) {
                    goto loop_6;
                }
            }
            arg1->unk28 = 0;
        }
    }
}

void __glMgrDLEmptyPool(__GLcontext *gc, ...) {
    s32 *temp_s1_2;
    void *temp_s1;

    temp_s1 = gc->unk1210;
    temp_s1_2 = temp_s1->unk10;
    __glDlistHeapQueryMin(temp_s1 + 4);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
loop_3:
        if (*temp_s1_2 != 0) {
            __glMgrDlistFreeArray(gc, gc, M2C_ERROR(/* Read from unset register $v0 */)->unk8);
        }
        __glDlistHeapQueryMin(gc->unk1210 + 4);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            goto loop_3;
        }
    }
}

void __glMgrDLBreakdownDMA(__GLcontext *gc, void *arg1, ...) {
    void *temp_a1;
    void *temp_s3;

    unksp10 = (s64) gc;
    temp_s3 = arg1->unk14;
    __glMgrDlistFreeArray(gc);
    temp_a1 = temp_s3->unk38;
    if (temp_a1 != NULL) {
        sub_0da90000(unksp10, temp_a1);
    }
}

void __glMgrTexBreakdownDMA(__GLcontext *gc, void *arg1, ...) {
    void *temp_a1;

    unksp10 = (s64) gc;
    __glMgrDlistFreeArray(gc);
    temp_a1 = arg1->unk30;
    if (temp_a1 != NULL) {
        sub_0da90000(unksp10, temp_a1);
    }
}

void __glMgrBuildSegs(__GLcontext *gc, void *arg1, ...) {
    s64 sp20;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a1;
    s32 var_a2;
    s32 var_at;
    s32 var_s2;
    s64 var_ra;
    u32 var_s1;
    void *temp_a0;
    void *var_s0;
    void *var_v0;
    void *var_v0_2;

    var_ra = saved_reg_ra;
    var_v0 = arg1->unk10;
    unksp10 = (s64) arg1->unk14;
    if (var_v0 == NULL) {
        var_v0 = gc->imports.malloc(gc, 8U);
        arg1->unk10 = var_v0;
        var_ra = sp20;
    }
    var_a2 = arg1->unk18;
    if (var_a2 == 0) {
        var_v0->unk4 = 0;
        var_v0->unk0 = __glsple_Sentinel;
        var_a2 = 1;
        arg1->unk18 = 1;
    }
    var_s2 = 0;
    var_v0_2 = NULL;
    if (var_a2 > 0) {
        sp20 = var_ra;
        var_s1 = 0;
        var_s0 = var_v0;
loop_8:
        var_s2 += 1;
        var_s1 += 0x1C;
        var_v0_2 = gc->imports.realloc(gc, var_v0_2, var_s1);
        temp_a0 = var_v0_2 + var_s1;
        temp_a0->unk-8 = 0;
        temp_a0->unk-1C = -1;
        temp_a1 = var_s0->unk0;
        if (temp_a1 == __glMgr_Push) {
            var_a1 = var_s0->unk4->unk0;
            temp_a0->unk-18 = var_a1;
            temp_a0->unk-C = (void *) var_s0->unk4;
            temp_a5 = var_s0->unk8;
            var_s0 += 8;
            if (temp_a5 == __glMgr_Push) {
                temp_a0->unk-10 = 0;
                temp_a0->unk-12 = 0;
                temp_a0->unk-14 = 1U;
            } else if (temp_a5 == __glMgrle_CallList) {
                temp_a0->unk-12 = 0;
                temp_a0->unk-14 = 2U;
                temp_a4 = var_s0->unk4->unk0;
                var_s0 += 8;
                temp_a0->unk-10 = temp_a4;
            } else if (temp_a5 == __glMgrle_BindTextureEXT) {
                temp_a0->unk-12 = 2;
                temp_a0->unk-14 = 2U;
                temp_a3 = var_s0->unk4->unk4;
                var_s0 += 8;
                temp_a0->unk-10 = temp_a3;
            } else if (temp_a5 == __glsple_Sentinel) {
                var_s0 += 8;
                temp_a0->unk-10 = 0;
                temp_a0->unk-12 = 0;
                temp_a0->unk-14 = 0U;
            }
        } else {
            if (temp_a1 == __glMgrle_CallList) {
                temp_a0->unk-12 = 0;
                temp_a0->unk-C = NULL;
                temp_a0->unk-18 = 0;
                temp_a0->unk-14 = 2U;
                var_at = var_s0->unk4->unk0;
                var_a1 = 0;
                var_s0 += 8;
                goto block_6;
            }
            if (temp_a1 == __glMgrle_BindTextureEXT) {
                temp_a0->unk-C = NULL;
                temp_a0->unk-18 = 0;
                temp_a0->unk-12 = 2;
                temp_a0->unk-14 = 2U;
                var_a1 = 0;
                var_at = var_s0->unk4->unk4;
                var_s0 += 8;
block_6:
                temp_a0->unk-10 = var_at;
            } else if (temp_a1 != __glsple_Sentinel) {
                var_a1 = temp_a0->unk-18;
                var_s0 += 8;
            } else {
                var_a1 = 0;
                var_s0 += 8;
                temp_a0->unk-10 = 0;
                temp_a0->unk-12 = 0;
                temp_a0->unk-14 = 0U;
                temp_a0->unk-C = NULL;
                temp_a0->unk-18 = 0;
            }
        }
        temp_a0->unk-18 = (s32) (*((temp_a0->unk-14 * 4) + (&sub_0dbe0000 - 0x4000)) + var_a1);
        if ((u32) var_s0 < (u32) ((var_a2 * 8) + var_v0)) {
            goto loop_8;
        }
    }
    unksp10->unk38 = var_v0_2;
    unksp10->unk34 = var_s2;
}

void __glMgrDLResolveCalls(__GLcontext *gc, void *arg1, ...) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a2;
    __GLcontext *temp_s3;
    s32 temp_a2_3;
    s32 temp_a4_2;
    u32 var_s1;
    u32 var_v0;
    void *temp_a2_2;
    void *temp_a4;
    void *temp_s0;
    void *var_s0;

    sp10 = (s64) gc;
    temp_s3 = gc->unk1210->unk10;
    __glMgrDLFlushDefer(temp_s3, temp_s3, 1);
    temp_s0 = arg1->unk14;
    var_s1 = 0;
    var_v0 = temp_s0->unk34;
    sp8 = (s64) temp_s0;
    var_s0 = temp_s0->unk38;
    if (var_v0 != 0) {
        do {
            var_s1 += 1;
            if (var_s0->unk8 == 2) {
                __glMgrDLPoolToPtr(temp_s3, temp_s3, var_s0->unk0);
                sp0 = M2C_ERROR(/* Read from unset register $v0 */);
                __glMgrDLIoctl(temp_s3, temp_s3);
                temp_a2 = var_s0->unkC;
                if (var_s0->unkA & 2) {
                    __glNamesLockData((__GLcontext *) sp10, sp10->unk91FC->unk49C, temp_a2, sp10);
                    temp_a4 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
                    sp0->unk10 = (s32) temp_a4->unk30->unk0;
                    sp0->unk14 = (s32) temp_a4->unk30->unk4;
                    __glNamesUnlockData((__GLcontext *) sp10, M2C_ERROR(/* Read from unset register $v0 */));
                } else {
                    __glNamesLockData((__GLcontext *) sp10, sp10->unk1214, temp_a2);
                    temp_a2_2 = M2C_ERROR(/* Read from unset register $v0 */)->unk14;
                    temp_a4_2 = temp_a2_2->unk38->unk0;
                    sp0->unk10 = temp_a4_2;
                    temp_a2_3 = temp_a2_2->unk38->unk4;
                    sp0->unk14 = temp_a2_3;
                    __glNamesUnlockData((__GLcontext *) sp10, M2C_ERROR(/* Read from unset register $v0 */), (s64) temp_a2_3, sp0, temp_a4_2);
                }
                __glMgrDLFlushSeg(temp_s3, temp_s3, var_s0);
                var_v0 = sp8->unk34;
            }
            var_s0 += 0x1C;
        } while (var_s1 < var_v0);
    }
    __glMgrDLFlushDefer(temp_s3, temp_s3, 0);
}

void __glMgrSegToPool(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    s64 sp20;
    s64 sp0;
    s32 *temp_a5;
    s32 *var_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_s2;
    s32 var_v0;
    s32 var_v0_2;
    s64 var_ra;
    u16 temp_v0;
    u32 temp_a0;
    u32 var_v0_3;
    void *var_s1;

    var_ra = saved_reg_ra;
    if (arg2 != 0) {
        temp_a1 = arg1->unk0;
        if (temp_a1 == -1) {
            var_s1 = NULL;
        } else {
            __glMgrDLPoolToPtr(gc, temp_a1);
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            goto block_4;
        }
    } else {
        __glMgrDLMalloc(gc, arg1);
        var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
block_4:
        var_ra = sp20;
    }
    if (var_s1 != NULL) {
        temp_v0 = arg1->unk8;
        switch (temp_v0) {                          /* irregular */
        case 1:
            var_v0 = 0x80E08;
            if (!(arg1->unkA & 1)) {
                var_v0 = 0x80C08;
            }
            var_s1->unk0 = var_v0;
            break;
        case 0:
            var_s1->unk0 = 0x83904;
            var_s1->unk4 = (s32) ((arg1->unkA & 1) != 0);
            break;
        case 2:
            var_s1->unk0 = 0x83708;
            var_v0_2 = 0x80E08;
            if (!(arg1->unkA & 1)) {
                var_v0_2 = 0x80C08;
            }
            var_s1->unkC = var_v0_2;
            break;
        }
        temp_a5 = arg1->unk10;
        if (temp_a5 != NULL) {
            sp20 = var_ra;
            temp_a2 = *temp_a5;
            temp_s2 = *((arg1->unk8 * 4) + (&sub_0dbe0000 - 0x4000));
            sp0 = (s64) temp_a2;
            memcpy((temp_s2 * 4) + var_s1, temp_a5 + 4, temp_a2 * 4);
            temp_a0 = arg1->unk14;
            if (temp_a0 != 0) {
                var_v0_3 = 0;
                if (temp_a0 != 0) {
                    var_a0 = ((temp_s2 + sp0) * 4) + var_s1;
                    do {
                        *var_a0 = 0xE0100;
                        var_v0_3 += 1;
                        var_a0 += 4;
                    } while (var_v0_3 < (u32) arg1->unk14);
                }
            }
        }
    }
}

void __glMgrSetupPool(__GLcontext *gc, ...) {
    s64 sp38;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    __GLcontext *temp_a0;
    __GLcontext *var_s1;
    s32 temp_s2;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_v0_2;
    s64 temp_a1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_ra;
    u32 temp_a3;
    void *(*temp_a1_2)(__GLcontext *, void *, u32);
    void *(*var_v0)(__GLcontext *, u32);

    var_ra = saved_reg_ra;
    var_s1 = gc->unk1210->unk10;
    var_v0 = var_s1->imports.malloc;
    temp_s2 = 4 << var_s1->imports.fatal;
    if (var_v0 != NULL) {
        goto block_1;
    }
    if (var_s1->imports.getenv == NULL) {
        var_s1->imports.warning = var_s1->imports.free;
        temp_v0 = open(&sub_0dbe0000 - 0x3FA0, 0x802);
        sp8 = temp_v0;
        if (temp_v0 < 0) {
            perror(&sub_0dbe0000 - 0x3F90);
            abort();
        }
        if ((u32) var_s1->imports.warning >= 0x10U) {
loop_12:
            temp_v0_2 = getpagesize();
            sp10 = temp_v0_2;
            temp_a1 = (var_s1->imports.warning * temp_s2) + temp_v0_2;
            sp18 = temp_a1;
            temp_a1_2 = temp_s2 + temp_a1;
            var_s1->imports.realloc = temp_a1_2;
            var_v0_2 = mmap(0, temp_a1_2, 3, 1, sp8, 0);
            var_s1->imports.calloc = var_v0_2;
            if (var_v0_2 == -1) {
                var_v0_2 = 0;
                var_s1->imports.calloc = 0;
            }
            if (var_v0_2 == 0) {
                temp_a3 = (u32) var_s1->imports.warning >> 1;
                var_s1->imports.warning = temp_a3;
                if (temp_a3 < 0x10U) {
                    sp0 = (s32) sp18;
                } else {
                    goto loop_12;
                }
            } else {
                sp0 = (s32) sp18;
                if (munmap(var_v0_2, (s32) sp10) < 0) {
                    M2C_ERROR(/* Read from unset register $t9 */)(&sub_0dbe0000 - 0x3F68);
                    abort();
                }
                temp_v0_3 = var_s1->imports.calloc + sp10;
                var_s1->imports.realloc -= sp10;
                var_a0 = (temp_s2 - 1) & temp_v0_3;
                var_s1->imports.calloc = temp_v0_3;
                if (var_a0 != 0) {
                    var_a0 = temp_s2 - var_a0;
                }
                var_s1->imports.malloc = temp_v0_3 + var_a0;
            }
        }
        close(sp8);
        var_v0 = var_s1->imports.malloc;
        var_ra = sp38;
        if (var_v0 != NULL) {
            __glMgrDLAllocInit(var_s1, var_s1);
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            temp_a0 = M2C_ERROR(/* Read from unset register $v0 */);
            gc->unk1210->unk10 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
            __glMgrDLFlushInit(temp_a0, temp_a0);
            var_v0 = var_s1->imports.malloc;
            var_ra = sp38;
        } else {
            var_s1->imports.getenv = (s8 *(*)(__GLcontext *, s8 *))0x32;
        }
    } else {
block_1:
        sp0 = var_s1->imports.warning * temp_s2;
    }
    if (var_v0 != NULL) {
        if (gc->unk7BAC == 0) {
            if (gc->frontBuffer.buf.loseCurrent == NULL) {
                sp38 = var_ra;
                var_s1->imports.sprintf = (s32 (*)(__GLcontext *, s8 *, s8 *, ...))4;
                var_s1->imports.fclose = var_v0;
                var_s1->imports.fprintf = sp0;
                __glMgrDLIoctl(gc, gc, 0x6D67000B, var_s1, 4);
                if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {
                    gc->unk7BAC = 1U;
                } else {
                    gc->frontBuffer.buf.loseCurrent = (void (*)())0x32;
                }
                var_v0 = var_s1->imports.malloc;
            }
        }
        if (var_v0 != NULL) {
            if (gc->unk7BAC != 0) {
                return;
            }
            gc->frontBuffer.buf.loseCurrent -= 1;
            return;
        }
        /* Duplicate return node #22. Try simplifying control flow for better match */
        var_s1->imports.getenv -= 1;
        return;
    }
    var_s1->imports.getenv -= 1;
}

void __glMgrDLToPool(__GLcontext *gc, s64 arg1, ...) {
    s64 sp8;
    __GLcontext *temp_s4;
    s32 temp_a2;
    s32 temp_s5;
    s32 var_a2;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s7;
    u16 temp_a0;
    u32 temp_s1;
    u32 var_s0_2;
    void *temp_a1;
    void *temp_s6;
    void *var_s0;
    void *var_s0_3;

    sp8 = arg1;
    temp_s6 = arg1->unk14;
    __glMgrDLResolveCalls(gc);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    temp_s4 = gc->unk1210->unk10;
    if (temp_s6->unk38 == NULL) {
        __glMgrTexBreakdownDMA(gc, gc, sp8);
    }
    var_s2 = sp0;
    temp_s5 = temp_s6->unk34;
loop_5:
    var_s0 = temp_s6->unk38;
    var_s1 = 0;
    temp_s6->unk10 = -0x2C;
    var_s7 = 1;
    if (temp_s5 != 0) {
loop_6:
        var_s2 = var_s0->unk4;
        __glMgrDLResolveCalls(temp_s4, temp_s4, var_s0, 0);
        var_s1 += 1;
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_s0 += 0x1C;
            temp_s6->unk10 = (s32) ((temp_s6->unk10 + (var_s2 * 3)) - 0xA);
            if (var_s1 == temp_s5) {

            } else {
                goto loop_6;
            }
        } else {
            var_s7 = 0;
        }
    }
    var_a2 = var_s7;
    if (var_s7 == 0) {
        __glMgrDlistFreeArray(gc, gc, sp8, var_a2);
        temp_s1 = M2C_ERROR(/* Read from unset register $v0 */) + var_s2;
        var_s0_2 = 0;
        if (temp_s1 != 0) {
loop_14:
            __glDlistHeapQueryMin(gc->unk1210 + 4);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                temp_a1 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
                if (!(sp8->unk30 <= temp_a1->unk30)) {
                    __glMgrDlistFreeArray(gc, gc, temp_a1, sp8);
                    var_s0_2 += M2C_ERROR(/* Read from unset register $v0 */);
                    if (var_s0_2 < temp_s1) {
                        goto loop_14;
                    }
                }
            }
        }
        if (var_s0_2 == 0) {
            var_s7 = -1;
        }
        if (var_s7 != 0) {
            var_a2 = var_s7;
        } else {
            goto loop_5;
        }
    }
    if (var_a2 == 1) {
        temp_a2 = sp8->unk20 | 2;
        sp8->unk20 = temp_a2;
        __glDlistHeapInsert(gc->unk1210 + 4, sp8 + 0x30, temp_a2);
        __glMgrDLFlushDefer(temp_s4, temp_s4, 1);
        var_s0_3 = temp_s6->unk38;
        var_s1_2 = 0;
        if (temp_s5 != 0) {
loop_27:
            __glMgrDLPoolToPtr(temp_s4, temp_s4, var_s0_3->unk0);
            temp_a0 = var_s0_3->unk8;
            var_s1_2 += 1;
            if (temp_a0 != 0) {
                if (temp_a0 == 2) {
                    M2C_ERROR(/* Read from unset register $v0 */)->unk14 = 0;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk10 = -1;
                    goto block_25;
                }
                if (temp_a0 != 1) {

                } else {
block_25:
                    M2C_ERROR(/* Read from unset register $v0 */)->unk4 = (s32) var_s0_3->unk1C;
                    M2C_ERROR(/* Read from unset register $v0 */)->unk8 = (s32) var_s0_3->unk20;
                }
            }
            __glMgrDLFlushSeg(temp_s4, temp_s4, var_s0_3);
            var_s0_3 += 0x1C;
            if (var_s1_2 != temp_s5) {
                goto loop_27;
            }
        }
        __glMgrDLFlushDefer(temp_s4, temp_s4, 0);
    }
}

void __glMgrTexToPool(__GLcontext *gc, void *arg1, u32 arg2, ...) {
    s64 sp8;
    u32 temp_a4;
    u32 var_a2;
    u32 var_a4;
    u32 var_a5;
    u32 var_s2;
    u32 var_s2_2;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a0;
    void *var_s1;

    var_a2 = arg2;
    temp_a4 = arg1->unk2C;
    if ((temp_a4 != 0) && (temp_a4 >= (u32) arg1->unk24)) {
        var_a2 = arg1->unk28;
        if (var_a2 == temp_a4) {
            return;
        }
    }
    __glMgrDLResolveCalls(gc, gc, var_a2, temp_a4);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        var_a4 = arg1->unk2C;
        sp8 = (s64) gc->unk1210->unk10;
        if (var_a4 != 0) {
            var_a5 = arg1->unk24;
            var_s1 = arg1->unk30;
        } else {
            temp_v0 = gc->imports.malloc(gc, 0x1CU);
            var_s1 = temp_v0;
            var_a5 = 1;
            var_a4 = 1;
            temp_v0->unk14 = 0;
            temp_v0->unk10 = 0;
            temp_v0->unkC = 0;
            temp_v0->unkA = 0;
            temp_v0->unk8 = 0;
            temp_v0->unk4 = 0x40;
            temp_v0->unk0 = -1;
            arg1->unk30 = temp_v0;
            arg1->unk2C = 1U;
            arg1->unk24 = 1U;
        }
        if (var_a4 < var_a5) {
            temp_v0_2 = sub_0da90000((s64) gc, var_s1, var_a5 * 0x1C);
            var_s1 = temp_v0_2;
            var_s2 = 0;
            if (arg1->unk24 != 0) {
                var_a0 = temp_v0_2;
loop_23:
                if (var_s2 >= (u32) (arg1->unk24 - 1)) {
                    var_a0->unk8 = 0;
                } else {
                    var_a0->unk8 = 1;
                }
                if (var_s2 >= (u32) arg1->unk2C) {
                    var_a0->unk14 = 0;
                    var_a0->unk10 = 0;
                    var_a0->unkC = 0;
                    var_a0->unkA = 0;
                    var_a0->unk4 = 0x40;
                    var_a0->unk0 = -1;
                }
                var_s2 += 1;
                var_a0 += 0x1C;
                if (var_s2 < (u32) arg1->unk24) {
                    goto loop_23;
                }
            }
            var_a4 = arg1->unk24;
            arg1->unk30 = temp_v0_2;
            arg1->unk2C = arg1->unk24;
        }
        var_s2_2 = 0;
        if (var_a4 != 0) {
loop_10:
            __glMgrDLResolveCalls((__GLcontext *) sp8, sp8, var_s1, var_s2_2 < (u32) arg1->unk28);
            var_s1 += 0x1C;
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                var_s2_2 += 1;
                if (var_s2_2 >= (u32) arg1->unk2C) {
                    goto block_14;
                }
                goto loop_10;
            }
        } else {
block_14:
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                arg1->unk28 = (u32) arg1->unk2C;
            }
        }
    }
}

void __glMgrDLExecuteDMA(__GLcontext *gc, void *arg1, s32 arg2, ...) {
    s64 sp28;
    s64 sp0;
    __GLcontext *temp_s2;
    s32 temp_a2;
    s32 var_a1;
    s32 var_a2;
    s64 var_ra;
    void *temp_a0;
    void *temp_s1;
    void *temp_v0;

    var_ra = saved_reg_ra;
    var_a2 = arg2;
    temp_s1 = arg1->unk14;
    if (((gc->unk925C == 0) || (gc->unk9260 != 0)) && ((u32) (gc->unk1248 + temp_s1->unk0) < 0x40U)) {
        var_a2 = gc->modes.rgbMode != 0;
        if (var_a2 != (temp_s1->unkC & 0x10)) {
            sp0 = (s64) arg1;
            if (gc->unk7BAC != 0) {
                goto block_5;
            }
            __glMgrDLResolveCalls(gc, gc, var_a2);
            var_ra = sp28;
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                __glMgrExecuteDlist(gc, gc, sp0);
                return;
            }
block_5:
            sp28 = var_ra;
            if (!(__glBeginMode & 1)) {
                temp_a0 = gc->unk8A2C;
                sp28 = var_ra;
                if (temp_a0 != NULL) {
                    var_a1 = temp_a0->unkC4;
                    if (var_a1 == 0) {
                        sp28 = var_ra;
                        mgrTM_RefreshDim(temp_a0, var_a1);
                        var_a1 = gc->unk8A2C->unkC4;
                    }
                    if (MgrasPrevVidTexture != 0) {
                        sp28 = var_ra;
                        __glMgrExecuteDlist(gc, gc, var_a1, 1);
                        var_a1 = gc->unk8A2C->unkC4;
                    }
                    temp_a2 = gc->unk91FC->unk1E4;
                    sp28 = var_ra;
                    if (temp_a2 != var_a1) {
                        mgrTM_DrawSetup(gc, var_a1, temp_a2);
                    }
                }
            }
            temp_s2 = gc->unk1210->unk10;
            __glMgrDLFlushPool(temp_s2, temp_s2);
            temp_v0 = temp_s1->unk38;
            *(s32 *)0x74080 = 0x80C08;
            *(s32 *)0x74080 = temp_v0->unk0;
            *(s32 *)0x74080 = temp_v0->unk4;
            temp_s2->imports.atoi = (s32 (*)(__GLcontext *, s8 *))1;
            return;
        }
    }
    __glMgrExecuteDlist(gc, gc, var_a2);
}
