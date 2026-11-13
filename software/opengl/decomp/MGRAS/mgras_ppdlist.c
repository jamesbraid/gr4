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
    /* 0x0CCD */ char padCCD[0x547];                /* maybe part of yInverted[0x548]? */
    /* 0x1214 */ __GLcontext *unk1214;              /* inferred */
    /* 0x1218 */ char pad1218[0x24];                /* maybe part of unk1214[0xA]? */
    /* 0x123C */ s32 unk123C;                       /* inferred */
    /* 0x1240 */ char pad1240[8];                   /* maybe part of unk123C[3]? */
    /* 0x1248 */ s32 unk1248;                       /* inferred */
    /* 0x124C */ char pad124C[4];
    /* 0x1250 */ s32 unk1250;                       /* inferred */
    /* 0x1254 */ char pad1254[8];                   /* maybe part of unk1250[3]? */
    /* 0x125C */ s32 unk125C;                       /* inferred */
    /* 0x1260 */ char pad1260[0xC];                 /* maybe part of unk125C[4]? */
    /* 0x126C */ s64 (*unk126C)(__GLcontext *, ?);  /* inferred */
    /* 0x1270 */ char pad1270[0x18];                /* maybe part of unk126C[7]? */
    /* 0x1288 */ ? *unk1288;                        /* inferred */
    /* 0x128C */ void (*unk128C)(__GLcontext *, ...); /* inferred */
    /* 0x1290 */ char pad1290[0x10];                /* maybe part of unk128C[5]? */
    /* 0x12A0 */ s32 unk12A0;                       /* inferred */
    /* 0x12A4 */ s32 unk12A4;                       /* inferred */
    /* 0x12A8 */ s32 unk12A8;                       /* inferred */
    /* 0x12AC */ s32 unk12AC;                       /* inferred */
    /* 0x12B0 */ s32 unk12B0;                       /* inferred */
    /* 0x12B4 */ char pad12B4[0x1AD8];              /* maybe part of unk12B0[0x6B7]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x4A74];              /* maybe part of procs[0x17]? */
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

? .L0da8c7c4(void *, s64, s32, void *);             /* extern */
? .L0da8c9d4(__GLcontext *, s32);                   /* extern */
? .L0da8ce2c(s64, void *, s64, s32);                /* extern */
extern s32 MgrasPrevVidTexture;
extern ? __glmg10_spop;
extern ? __glmg_spop;
extern ? sub_0da90000;
extern ? sub_0dbf0000;

void __glMgrDlistOptimizer(__GLcontext *gc, ...) {

}

void __glMgr_Push(__GLcontext *gc, ...) {
    s64 sp20;
    __GLcontext *temp_s0;
    s32 temp_a2;
    s32 var_a1;
    s64 var_ra;
    void *temp_a0;
    void *temp_s1;

    var_ra = saved_reg_ra;
    temp_s0 = __glCurrentContext;
    temp_s1 = temp_s0 + 0x10000;
    if (((temp_s0->unk925C == 0) || (temp_s0->unk9260 != 0)) && (temp_s0->frontBuffer.redMax != (temp_s0->modes.rgbMode != 0))) {
        temp_a2 = __glBeginMode & 1;
        if (temp_a2 == 0) {
            temp_a0 = temp_s0->unk8A2C;
            if (temp_a0 != NULL) {
                var_a1 = temp_a0->unkC4;
                if (var_a1 == 0) {
                    mgrTM_RefreshDim(temp_a0, var_a1, temp_a2);
                    var_ra = sp20;
                    var_a1 = temp_s1->unk-75D4->unkC4;
                }
                if (MgrasPrevVidTexture != 0) {
                    sp20 = var_ra;
                    M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, var_a1, 1);
                    var_a1 = temp_s1->unk-75D4->unkC4;
                }
                sp20 = var_ra;
                if (temp_s1->unk-6E04->unk1E4 != var_a1) {
                    mgrTM_DrawSetup(temp_s0, var_a1);
                }
            }
        }
        __glMgr_PushTokens(gc, gc);
        return;
    }
    __glMgr_InterpretDL(gc, gc);
}

void Bogus(s32 arg0) {

}

void __glMgrDlistInitState(__GLcontext *gc, ...) {
    ? *var_v1;

    *(s32 *)0x102C = 0;
    *(s32 *)0x1028 = 0;
    *(s32 *)0x1020 = 0;
    *(s32 *)0x1024 = 0;
    if (gc->unk9CA5 != 0) {
        var_v1 = &__glmg_spop;
    } else {
        var_v1 = &__glmg10_spop;
    }
    gc->unk1288 = var_v1;
    gc->unk12A8 = 0;
    gc->unk12B0 = 0;
    gc->unk12AC = 0;
    gc->unk12A4 = 0;
    gc->unk12A0 = 0;
    gc->unk128C = __glMgr_Push;
    if (*(void *)0x1020 <= 0) {
        __glSPDlistSpace(1, __glMgr_Push);
    }
    *(void *)0x102C = 0;
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
    *(void *)0x1028 = (s32) (*(void *)0x1028 + 4);
}

void callSetError(s32 *arg0) {
    __glSetError(*arg0);
}

void __glMgr_dlerror(__GLcontext *gc, ...) {
    s64 sp18;
    __GLcontext **temp_a4;
    __GLcontext **temp_s8;
    __GLcontext **var_a0;
    __GLcontext *temp_s1;
    s32 temp_a2;
    s32 temp_v0;
    s32 var_s5;
    s32 var_v0;
    s64 var_ra;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a4 = *(__GLcontext ***)0x1028;
    temp_s1 = __glCurrentContext;
    temp_v0 = *(s32 *)0x102C;
    if (temp_v0 == 0) {
        *(void *)0x1028 = (__GLcontext **) (temp_a4 - 4);
        var_v0 = *(s32 *)0x1020 + 1;
        *(void *)0x1020 = var_v0;
    } else {
        temp_a3 = (temp_v0 * 0xFFFFFFFC) + temp_a4;
        temp_a3->unk-4 = temp_v0;
        temp_a2 = *(void *)0x102C;
        __glsplc_AddIlist(temp_s1->unk128C, ((temp_a2 * 0xFFFFFFFC) + temp_a4) - 4, temp_a2, temp_a3, temp_a4);
        var_v0 = *(void *)0x1020;
        var_ra = sp18;
    }
    sp18 = var_ra;
    var_s5 = var_v0;
    if (var_v0 <= 0) {
        __glSPDlistSpace(1);
        var_s5 = M2C_ERROR(/* Read from unset register $v0 */);
    }
    temp_s8 = *(void *)0x1028;
    temp_s1->unk12A8 |= 1;
    __glsplc_AddIlist(&sub_0da90000 - 0x42C8, temp_s8);
    var_a0 = temp_s8 + 4;
    *temp_s8 = gc;
    *(void *)0x1028 = var_a0;
    *(void *)0x1020 = (s32) (var_s5 - 1);
    if (var_s5 < 2) {
        __glSPDlistSpace(1);
        var_a0 = *(void *)0x1028;
    }
    *(void *)0x102C = 0;
    *(void *)0x1028 = (__GLcontext **) (var_a0 + 4);
    *(void *)0x1020 = (s32) (M2C_ERROR(/* Read from unset register $v0 */) - 1);
}

void __glSPDlalloc(s64 arg0, u32 arg1) {
    s64 sp28;
    s64 sp8;
    __GLcontext **temp_a4;
    __GLcontext **temp_s2;
    __GLcontext **var_a0_2;
    __GLcontext *temp_s0;
    s32 *temp_a0;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a5;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_s5;
    s64 var_ra;
    void *temp_a2;
    void *temp_a3;

    var_ra = saved_reg_ra;
    sp8 = arg0;
    temp_s0 = __glCurrentContext;
    temp_v0 = temp_s0->unk12A8;
    var_a3 = arg1 < 0xF1U;
    if (temp_v0 & 4) {
        temp_a2 = &sub_0dbf0000 - 0x2B30;
        temp_a0 = (arg1 * 4) + temp_a2;
        if (var_a3 != 0) {
            var_a3 = *temp_a0;
            switch (var_a3);                        /* unable to parse jump table */
        } else {
        case 0x0:
        case 0x2:
        case 0x3:
        case 0x4:
        case 0x15:
        case 0x16:
        case 0x1B:
        case 0x1C:
        case 0x1D:
        case 0x1E:
        case 0x1F:
        case 0x20:
        case 0x21:
        case 0x22:
        case 0x23:
        case 0x24:
        case 0x25:
        case 0x26:
        case 0x27:
        case 0x28:
        case 0x29:
        case 0x2A:
        case 0x2B:
        case 0x2C:
        case 0x2D:
        case 0x2E:
        case 0x2F:
        case 0x40:
        case 0x41:
        case 0x42:
        case 0x43:
        case 0x44:
        case 0x45:
        case 0x46:
        case 0x47:
        case 0x48:
        case 0x49:
        case 0x4A:
        case 0x4B:
        case 0x4C:
        case 0x4D:
        case 0x4E:
        case 0x4F:
        case 0x50:
        case 0x51:
        case 0x52:
        case 0x53:
        case 0x54:
        case 0x55:
        case 0x56:
        case 0x57:
        case 0x58:
        case 0x59:
        case 0x5A:
        case 0x5B:
        case 0x5C:
        case 0x5D:
        case 0x5E:
        case 0x5F:
        case 0x60:
        case 0x61:
        case 0x62:
        case 0x63:
        case 0x64:
        case 0x65:
        case 0x66:
        case 0x67:
        case 0x68:
        case 0x69:
        case 0x6A:
        case 0x6B:
        case 0x6C:
        case 0x6D:
        case 0x6E:
        case 0x6F:
        case 0x70:
        case 0x71:
        case 0x72:
        case 0x73:
        case 0x74:
        case 0x75:
        case 0x76:
        case 0x77:
        case 0x78:
        case 0x79:
        case 0x7A:
        case 0x7B:
        case 0x7C:
        case 0x7D:
        case 0x7E:
        case 0x7F:
        case 0x80:
        case 0x81:
        case 0x82:
        case 0x83:
        case 0x84:
        case 0x85:
        case 0x86:
        case 0x87:
        case 0x88:
        case 0x89:
        case 0x8A:
        case 0x8B:
        case 0x8C:
        case 0x8D:
        case 0x8E:
        case 0x8F:
        case 0x90:
        case 0x91:
        case 0x92:
        case 0x93:
        case 0x94:
        case 0x99:
        case 0x9B:
        case 0x9D:
        case 0x9E:
        case 0x9F:
        case 0xA0:
        case 0xA1:
        case 0xA2:
        case 0xA3:
        case 0xA4:
        case 0xA5:
        case 0xA6:
        case 0xA7:
        case 0xA8:
        case 0xA9:
        case 0xAA:
        case 0xAB:
        case 0xAC:
        case 0xAD:
        case 0xAE:
        case 0xAF:
        case 0xB0:
        case 0xB1:
        case 0xB2:
        case 0xB3:
        case 0xB4:
        case 0xB5:
        case 0xB6:
        case 0xB7:
        case 0xB8:
        case 0xB9:
        case 0xBA:
        case 0xBB:
        case 0xBC:
        case 0xBD:
        case 0xBE:
        case 0xBF:
        case 0xC0:
        case 0xC1:
        case 0xC2:
        case 0xC3:
        case 0xC4:
        case 0xC5:
        case 0xC6:
        case 0xC7:
        case 0xC8:
        case 0xC9:
        case 0xCA:
        case 0xCB:
        case 0xCC:
        case 0xCD:
        case 0xCE:
        case 0xCF:
        case 0xD0:
        case 0xD1:
        case 0xD3:
        case 0xD4:
        case 0xD5:
        case 0xD6:
        case 0xD7:
        case 0xD8:
        case 0xD9:
        case 0xDA:
        case 0xDB:
        case 0xDC:
        case 0xDD:
        case 0xDE:
        case 0xDF:
        case 0xE0:
        case 0xE1:
        case 0xE2:
        case 0xE3:
        case 0xE4:
        case 0xE5:
        case 0xE6:
        case 0xE7:
        case 0xE8:
        case 0xE9:
        case 0xEA:
        case 0xEB:
        case 0xEC:
        case 0xED:
        case 0xEE:
            __glsplc_InvalidOperation(temp_a0, temp_a2, var_a3);
        }
    } else {
    case 0x1:
    case 0x5:
    case 0x6:
    case 0x7:
    case 0x8:
    case 0x9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x95:
    case 0x96:
    case 0x97:
    case 0x98:
    case 0x9A:
    case 0x9C:
    case 0xD2:
    case 0xEF:
    case 0xF0:
        temp_s0->unk12A8 = temp_v0 | 1;
        temp_a5 = *(s32 *)0x102C;
        temp_a4 = *(__GLcontext ***)0x1028;
        if (temp_a5 == 0) {
            *(void *)0x1028 = (__GLcontext **) (temp_a4 - 4);
            *(void *)0x1020 = (s32) (*(s32 *)0x1020 + 1);
        } else {
            temp_a3 = (temp_a5 * 0xFFFFFFFC) + temp_a4;
            temp_a3->unk-4 = temp_a5;
            temp_a2_2 = *(void *)0x102C;
            __glsplc_AddIlist(temp_s0->unk128C, ((temp_a2_2 * 0xFFFFFFFC) + temp_a4) - 4, temp_a2_2, temp_a3, temp_a4, temp_a5);
            var_ra = sp28;
        }
        temp_v0_2 = temp_s0->unk12A8;
        if (temp_v0_2 & 4) {
            temp_s0->unk12A8 = temp_v0_2 & ~4;
            if (arg1 == 1) {
                sp28 = var_ra;
                temp_s0->unk125C = 0;
            }
            sp28 = var_ra;
            __glsplc_AddIlist(__glMgrle_CallSetBegin, NULL, 1);
        }
        var_s5 = *(void *)0x1020;
        temp_s4 = sp8 >> 2;
        sp28 = var_ra;
        if (var_s5 < temp_s4) {
            var_a0 = temp_s4;
            if (temp_s4 >= 0x3F7) {

            } else {
                var_a0 = 1;
            }
            sp28 = var_ra;
            __glSPDlistSpace(var_a0);
            var_s5 = M2C_ERROR(/* Read from unset register $v0 */);
        }
        temp_s5 = var_s5 - temp_s4;
        temp_a2_3 = arg1 * 4;
        temp_s2 = *(void *)0x1028;
        __glsplc_AddIlist(*(temp_s0->unk1288 + temp_a2_3), temp_s2, temp_a2_3);
        *(void *)0x1020 = temp_s5;
        var_a1 = temp_s5;
        var_a0_2 = &temp_s2[temp_s4];
        *(void *)0x1028 = var_a0_2;
        if (temp_s5 <= 0) {
            __glSPDlistSpace(1, (void (*)(__GLcontext *, ...)) var_a1);
            var_a1 = M2C_ERROR(/* Read from unset register $v0 */);
            var_a0_2 = *(void *)0x1028;
        }
        *(void *)0x102C = 0;
        *(void *)0x1028 = (__GLcontext **) (var_a0_2 + 4);
        *(void *)0x1020 = (s32) (var_a1 - 1);
    }
}

void __glSPDlalloc2(s64 arg0, s32 arg1) {
    s64 sp48;
    s64 sp30;
    s64 sp0;
    __GLcontext *temp_s2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s3;
    s32 var_s4;
    s32 var_v1;
    s64 var_ra;
    void *temp_a3;

    var_ra = saved_reg_ra;
    var_s3 = 0;
    temp_s2 = __glCurrentContext;
    temp_a4 = temp_s2->unk12A8;
    if (temp_a4 & 4) {
        var_a2 = arg1 < 0x34;
        var_a3 = arg1 < 0x35;
        if (var_a2 == 0) {
            if (var_a3 == 0) {
                if (arg1 >= 0x95) {
                    var_a2 = 0x97;
                    if (arg1 >= 0x96) {
                        var_v1 = temp_a4 | 1;
                        if (arg1 != 0x97) {
                            /* Duplicate return node #29. Try simplifying control flow for better match */
                            __glsplc_InvalidOperation((s32 *) var_a2, (void *) var_a3, temp_a4);
                            return;
                        }
                        goto block_10;
                    }
                    goto block_9;
                }
                if (arg1 >= 0x3C) {
                    if (arg1 < 0x3D) {
                        goto block_9;
                    }
                    /* Duplicate return node #29. Try simplifying control flow for better match */
                    __glsplc_InvalidOperation((s32 *) var_a2, (void *) var_a3, temp_a4);
                    return;
                }
                var_a2 = 0x38;
                if (arg1 == 0x38) {
                    goto block_9;
                }
                /* Duplicate return node #29. Try simplifying control flow for better match */
                __glsplc_InvalidOperation((s32 *) var_a2, (void *) var_a3, temp_a4);
                return;
            }
            goto block_9;
        }
        var_a3 = arg1 < 0x17;
        if (var_a3 == 0) {
            if (arg1 < 0x18) {
                goto block_9;
            }
            var_a2 = 0x30;
            var_v1 = temp_a4 | 1;
            if (arg1 != 0x30) {
                /* Duplicate return node #29. Try simplifying control flow for better match */
                __glsplc_InvalidOperation((s32 *) var_a2, (void *) var_a3, temp_a4);
                return;
            }
            goto block_10;
        }
        if (arg1 >= 0xE) {
            if (arg1 < 0xF) {
                goto block_9;
            }
            /* Duplicate return node #29. Try simplifying control flow for better match */
            __glsplc_InvalidOperation((s32 *) var_a2, (void *) var_a3, temp_a4);
            return;
        }
        var_a3 = 6;
        if (arg1 == 6) {
            goto block_9;
        }
        __glsplc_InvalidOperation((s32 *) var_a2, (void *) var_a3, temp_a4);
        return;
    }
block_9:
    var_v1 = temp_a4 | 1;
block_10:
    temp_s2->unk12A8 = var_v1;
    temp_a6 = *(s32 *)0x102C;
    temp_a5 = *(s32 *)0x1028;
    if (temp_a6 == 0) {
        var_a0 = temp_a5 - 4;
        *(void *)0x1028 = var_a0;
        var_a1 = *(s32 *)0x1020 + 1;
        *(void *)0x1020 = var_a1;
    } else {
        sp48 = arg0;
        temp_a3 = (temp_a6 * 0xFFFFFFFC) + temp_a5;
        temp_a3->unk-4 = temp_a6;
        temp_a2 = *(void *)0x102C;
        __glsplc_AddIlist(temp_s2->unk128C, ((temp_a2 * 0xFFFFFFFC) + temp_a5) - 4, temp_a2, temp_a3, (__GLcontext **) temp_a4, temp_a5, temp_a6);
        var_a1 = *(void *)0x1020;
        var_a0 = *(void *)0x1028;
        var_ra = sp30;
    }
    if (var_a0 & 4) {
        var_s3 = 1;
    }
    temp_s5 = arg0 >> 2;
    sp0 = (s64) temp_s5;
    temp_s5_2 = temp_s5 + var_s3;
    var_s4 = var_a1;
    if (var_a1 < temp_s5_2) {
        var_a0_2 = temp_s5_2;
        if (temp_s5_2 >= 0x3F7) {

        } else {
            var_a0_2 = 1;
        }
        sp30 = var_ra;
        __glSPDlistSpace(var_a0_2, (void (*)(__GLcontext *, ...)) var_a1);
        var_s4 = M2C_ERROR(/* Read from unset register $v0 */);
        var_a0 = *(void *)0x1028;
    }
    var_s0 = var_a0;
    temp_s4 = var_s4 - temp_s5_2;
    if ((var_s3 != 0) && (var_s0 & 4)) {
        sp30 = var_ra;
        var_s0 += 4;
    }
    sp30 = var_ra;
    temp_a2_2 = arg1 * 4;
    __glsplc_AddIlist(*(temp_s2->unk1288 + temp_a2_2), (__GLcontext **) var_s0, temp_a2_2);
    *(void *)0x1020 = temp_s4;
    var_a1_2 = temp_s4;
    var_a0_3 = (sp0 * 4) + var_s0;
    *(void *)0x1028 = var_a0_3;
    if (temp_s4 <= 0) {
        __glSPDlistSpace(1, (void (*)(__GLcontext *, ...)) var_a1_2);
        var_a1_2 = M2C_ERROR(/* Read from unset register $v0 */);
        var_a0_3 = *(void *)0x1028;
    }
    *(void *)0x102C = 0;
    *(void *)0x1028 = (s32) (var_a0_3 + 4);
    *(void *)0x1020 = (s32) (var_a1_2 - 1);
}

void __glMgrle_CallSetBegin(__GLcontext *gc, ...) {
    __glBeginMode = 1;
    __glCurrentContext->procs.table[0x64] = __glMgrEndGeneric;
}

void __glMgrle_CallUnsetBegin(__GLcontext *gc, ...) {
    __glBeginMode = 0;
    __glCurrentContext->procs.table[0x64] = __glNop;
}

void __glsplc_AddSentinel(void) {
    s64 sp10;
    __GLcontext *temp_s7;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a4;
    s64 var_ra;
    void *temp_a3;
    void *temp_a5;

    var_ra = saved_reg_ra;
    temp_s7 = __glCurrentContext;
    temp_a3 = *(void **)0x1028;
    temp_a4 = *(s32 *)0x102C;
    if (temp_a4 == 0) {
        *(void *)0x1028 = (void *) (temp_a3 - 4);
        *(void *)0x1020 = (s32) (*(s32 *)0x1020 + 1);
    } else {
        temp_a5 = (temp_a4 * 0xFFFFFFFC) + temp_a3;
        temp_a5->unk-4 = temp_a4;
        temp_a2 = *(void *)0x102C;
        __glsplc_AddIlist(temp_s7->unk128C, ((temp_a2 * 0xFFFFFFFC) + temp_a3) - 4, temp_a2, temp_a3, (__GLcontext **) temp_a4, (s32) temp_a5);
        var_ra = sp10;
    }
    temp_a3_2 = temp_s7->unk12A8;
    sp10 = var_ra;
    if (temp_a3_2 & 4) {
        temp_s7->unk12A8 = temp_a3_2 | 1;
        __glsplc_AddIlist(__glMgrle_CallSetBegin, NULL);
    }
    __glsplc_AddIlist(__glsple_Sentinel, NULL);
}

void __glMgrle_CallList(__GLcontext *gc, ...) {
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_s1;
    s32 temp_a2;
    s32 temp_a3;

    temp_s1 = __glCurrentContext;
    if (temp_s1->unk1248 >= 0x40) {
        temp_s1->unk1248 = 0x80;
    } else {
        __glNamesLockData(temp_s1, temp_s1->unk1214, gc->imports.malloc);
        sp8 = M2C_ERROR(/* Read from unset register $v0 */);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            temp_a3 = temp_s1->unk1248 + 1;
            temp_s1->unk1248 = temp_a3;
            temp_a2 = temp_s1->frontBuffer.redMax;
            sp0 = (s64) temp_a2;
            sp8->unk8(temp_s1, sp8, temp_a2, temp_a3);
            temp_s1->frontBuffer.redMax = (s32) sp0;
            temp_s1->unk1248 -= 1;
            __glNamesUnlockData(temp_s1, sp8);
        }
    }
}

void __glMgrle_BindTextureEXT(__GLcontext *gc, ...) {
    s64 sp0;
    __GLcontext *temp_s0;
    s32 var_a1;
    void *temp_a0;

    temp_s0 = __glCurrentContext;
    unksp10 = (s64) gc;
    __glMgrim_BindTextureEXT((enum GLenum) gc->imports.malloc, (u32) gc->imports.calloc);
    sp0 = (s64) (temp_s0 + 0x10000);
    temp_a0 = temp_s0->unk8A2C;
    if (temp_a0 != NULL) {
        var_a1 = temp_a0->unkC4;
        if (var_a1 == 0) {
            mgrTM_RefreshDim(temp_a0, var_a1, (s32) &MgrasPrevVidTexture);
            var_a1 = sp0->unk-75D4->unkC4;
        }
        if (MgrasPrevVidTexture != 0) {
            mgrTM_VidTexWait(temp_s0, var_a1, 1);
        }
        if (sp0->unk-6E04->unk1E4 != var_a1) {
            M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, var_a1);
        }
    }
}

u8 __glMgrim_IsList(u32 list) {
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a1;
    __GLcontext *temp_s0;
    s64 temp_a3;
    s64 temp_a4;

    temp_s0 = __glCurrentContext;
    if (__glBeginMode != 1) {
        temp_a1 = temp_s0->unk1214;
        sp8 = (s64) temp_a1;
        __glNamesIsName(temp_s0, temp_a1, list);
        temp_a4 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
        temp_a3 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
        sp0 = temp_a4;
        if (temp_a3 != 0) {
            __glNamesLockData(temp_s0, (__GLcontext *) sp8, (void *(*)(__GLcontext *, u32)) list, temp_a3, temp_a4);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                if (M2C_ERROR(/* Read from unset register $v0 */)->unk20 & 8) {
                    sp0 = 0;
                }
                __glNamesUnlockData(temp_s0, M2C_ERROR(/* Read from unset register $v0 */));
            }
        }
        return (u8) sp0;
    }
    __glSetError(0x502);
    return 0U;
}

void __glMgrExecuteDlist(__GLcontext *gc, void *arg1, ...) {
    gc->frontBuffer.redMax = (arg1->unk14->unkC & 0x10) != 0;
    __glSPInterpret(arg1->unk10);
}

void InvalidateRecurse(void *arg0, s32 arg1) {
    s64 sp0;
    __GLcontext *temp_a0_2;
    s32 temp_a2;
    void *temp_a0;
    void *temp_a1;
    void *temp_s0;
    void *temp_s3;
    void *var_a3;

    temp_s0 = arg0->unk14;
    var_a3 = temp_s0->unk24;
    temp_s0->unk2C = arg1;
    if (var_a3 != NULL) {
        sp0 = arg1 + 1;
loop_4:
        temp_a0 = *var_a3->unk4;
        temp_a1 = temp_a0->unk14;
        temp_s3 = var_a3->unk8;
        if (temp_a1->unk2C == 0) {
            temp_a2 = temp_a1->unkC & 1;
            if (temp_a2 != 0) {
                .L0da8c7c4(temp_a0, sp0, temp_a2, var_a3);
            }
        }
        var_a3 = temp_s3;
        if (temp_s3 != NULL) {
            goto loop_4;
        }
    }
    temp_a0_2 = temp_s0 + 0x14;
    temp_s0->unk2C = 0;
    __glMgrDLNodeUnlink(temp_a0_2, temp_a0_2);
    temp_s0->unkC = (s32) (temp_s0->unkC & ~0xF);
    arg0->unk8 = __glMgrSPValidateDLExec;
}

void __glMgrDLInvalidate(__GLcontext *gc, __GLcontext *arg1, ...) {
    if (arg1->imports.fatal->unkC & 1) {
        __glMgrExecuteDlist(arg1, arg1, 1);
    }
}

void __glMgrSPFreeDlist(__GLcontext *gc, s32 arg1, ...) {
    __glMgrDLBreakdownDMA(gc);
    __glMgrDLInvalidate(gc, gc, arg1);
    __glMgrDLTexFree(gc, gc, arg1);
    __glSPFreeDlist(gc, arg1);
}

void __glMgrFreeDLTex(__GLcontext *gc, void *arg1, ...) {
    void *var_s5;

    if (arg1 != NULL) {
        __glMgrTexBreakdownDMA(gc, gc, arg1);
        var_s5 = arg1->unk18;
        if (var_s5 != NULL) {
            do {
                __glMgrDLInvalidate(gc, gc, *var_s5->unk4);
                var_s5 = var_s5->unk8;
            } while (var_s5 != NULL);
        }
    }
}

void __glMgrDLNotResident(__GLcontext *gc, s64 arg1, ...) {
    void *temp_s1;
    void *var_s2;

    unksp8 = arg1;
    temp_s1 = arg1->unk14;
    if (temp_s1->unkC & 8) {
        var_s2 = temp_s1->unk24;
        if (var_s2 != NULL) {
            do {
                .L0da8c9d4(gc, *var_s2->unk4);
                var_s2 = var_s2->unk8;
            } while (var_s2 != NULL);
        }
        temp_s1->unkC = (s32) (temp_s1->unkC & ~8);
        unksp8->unk8 = __glMgrExecuteDlist;
    }
}

void makePullState(__GLcontext *arg0, void *arg1, s32 arg2) {
    __GLcontext *temp_a0;
    s32 var_a5;
    void *temp_v0;

    temp_v0 = arg0->unk126C(0x3C);
    arg1->unk14 = temp_v0;
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0;
    var_a5 = 0;
    if (arg0->modes.rgbMode == 0) {
        var_a5 = 0x10;
    }
    temp_a0 = temp_v0 + 0x14;
    temp_v0->unk38 = 0;
    temp_v0->unk34 = 0;
    temp_v0->unk10 = 0;
    temp_v0->unkC = var_a5;
    __glMgrDLNodeInit(temp_a0, temp_a0, arg2, arg1);
    __glMgrDLTexInit(arg0, arg0, arg1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c], gap at: 0x10. */
void __glMgrDLLookupDL(__GLcontext *gc, __GLcontext *arg1, ...) {
    s32 var_a6;
    s64 temp_a3;
    s64 temp_v0;
    s64 var_s0;

    __glNamesIsName(gc->unk1214, arg1);
    temp_a3 = M2C_ERROR(/* Read from unset register $v0 */) & 0xFF;
    if (M2C_ERROR(/* Read from unset register $v0 */) & 0xFF) {
        unksp8 = temp_a3;
        __glNamesLockData(gc, gc->unk1214, (void *(*)(__GLcontext *, u32)) arg1, temp_a3);
        var_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    } else {
        var_s0 = 0;
        unksp8 = temp_a3;
    }
    if ((var_s0 == 0) || (__glNamesUnlockData(gc, var_s0), (var_s0 == 0)) || (var_s0->unk4 == __glEmptyFreeDlist)) {
        temp_v0 = gc->unk126C(gc, 0x48);
        unksp10 = temp_v0;
        temp_v0->unk0 = 1;
        temp_v0->unk1C = 0;
        temp_v0->unk18 = 0;
        temp_v0->unk14 = 0;
        temp_v0->unk10 = 0;
        temp_v0->unkC = 0;
        temp_v0->unk8 = __glEmptyExecuteDlist;
        temp_v0->unk4 = (s32) gc->unk123C;
        if (unksp8 != 0) {
            var_a6 = 0;
        } else {
            var_a6 = 8;
        }
        unksp10->unk28 = 0;
        unksp10->unk24 = 0;
        unksp10->unk20 = var_a6;
        unksp10->unk30 = 1.0f;
        unksp10->unk2C = 1.0f;
        __glMgrDLNotResident(gc, gc, unksp10, arg1);
        __glNamesNewData(gc, gc->unk1214, arg1, unksp10);
    }
}

void __glMgrDLLookupTex(__GLcontext *gc, void *(*arg1)(__GLcontext *, u32), s32 arg2, s64 arg3, s64 arg4, ...) {
    s64 sp40;
    s32 sp0;
    __GLcontext *temp_a0;
    s64 temp_v0;
    s64 var_a3;
    s64 var_a4;
    s64 var_ra;
    void *var_s1;
    void *var_s3;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a4 = arg4;
    if (arg2 != 0xDE0) {
        var_a3 = 0x806F;
        if (arg2 != 0xDE1) {
            if (arg2 == 0x806F) {
                sp0 = 4;
            }
        } else {
            var_a4 = 2;
            sp0 = 2;
        }
    } else {
        sp0 = 0;
    }
    if (arg1 != NULL) {
        __glNamesLockData(gc, gc->unk91FC->unk49C, arg1, var_a3, var_a4);
        var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
        var_ra = sp40;
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            __glMgr_NewTexObj(gc, gc, arg1, sp0);
            var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            var_ra = sp40;
        }
    } else {
        var_s1 = (sp0 * 0xCC) + gc + 0x8A30;
    }
    var_s3 = var_s1->unk8;
    if (var_s3 != NULL) {
        if (var_s3->unk4 != arg2) {

        }
    } else {
        if (var_s1->unkB3 == sp0) {
            sp40 = var_ra;
            temp_v0 = gc->imports.malloc(gc, 0x34U);
            unksp10 = temp_v0;
            var_s3 = (void *) temp_v0;
            if (temp_v0 != 0) {
                temp_a0 = unksp10 + 8;
                unksp10->unk4 = arg2;
                unksp10->unk0 = arg1;
                __glMgrDLNodeInit(temp_a0, temp_a0, arg1, 0);
                var_ra = sp40;
                unksp10->unk30 = 0;
                unksp10->unk2C = 0;
                unksp10->unk28 = 0;
                unksp10->unk24 = 0;
            }
        }
        var_s1->unk8 = var_s3;
    }
    if (arg1 != NULL) {
        sp40 = var_ra;
        __glNamesUnlockData(gc, (s64) var_s1);
    }
}

void ValidateRecurse(s64 arg0, void (*arg1)(__GLcontext *, ...), s64 arg2, s32 arg3) {
    s64 sp80;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    u64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s32 var_s1;
    s32 var_s3_3;
    s32 var_v0_2;
    s64 var_a1_2;
    s64 var_s3;
    s64 var_v0;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a5_2;
    u32 var_a7;
    u32 var_s1_2;
    void (*temp_s2)(__GLcontext *, ...);
    void (*var_a1)(__GLcontext *, ...);
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a5;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_s0;
    void *var_a1_3;
    void *var_s3_2;

    var_s3 = saved_reg_s3;
    var_a1 = arg1;
    var_a3 = arg3;
    sp28 = arg0;
    temp_s2 = var_a1;
    sp0 = arg2;
    temp_s0 = var_a1->unk14;
    if (!(var_a1->unk20 & 1)) {
        var_s1 = 0;
        sp18 = 0;
        temp_s0->unkC = (s32) (temp_s0->unkC | 2);
        sp10 = 0;
        sp20 = 0;
        if (temp_s2->unk18 > 0) {
            var_a1 = __glMgrle_BindTextureEXT;
            var_s3_2 = temp_s2->unk10;
            sp8 = (s64) (temp_s0 + 0x14);
loop_13:
            temp_v0 = var_s3_2->unk0;
            var_s1 += 1;
            if (temp_v0 != __glMgrle_CallList) {
                var_a3 = var_s1 < temp_s2->unk18;
                if (temp_v0 == __glMgrle_BindTextureEXT) {
                    temp_a1 = var_s3_2->unk4;
                    sp20 = 1;
                    __glMgrDLLookupTex((__GLcontext *) sp28, sp28, temp_a1->unk4, temp_a1->unk0, var_a3);
                    var_a1 = __glMgrle_BindTextureEXT;
                    sp38 = M2C_ERROR(/* Read from unset register $v0 */);
                    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                        goto block_17;
                    }
                    __glMgrDLNodeCall((__GLcontext *) sp8, sp8, sp38 + 8);
                    __glMgrTexToPool((__GLcontext *) sp28, sp28, sp38);
                    temp_a2 = sp38->unk2C;
                    var_a1 = __glMgrle_BindTextureEXT;
                    if ((u32) sp38->unk28 < temp_a2) {
block_17:
                        sp10 = 1;
                    } else {
                        sp18 = ((temp_a2 * 0xB6) + sp18) - 0x2C;
                    }
                    goto block_11;
                }
            } else {
                __glMgrDLNotResident((__GLcontext *) sp28, sp28, var_s3_2->unk4->unk0, temp_s2->unk18, var_a3);
                __glMgrDLNodeCall((__GLcontext *) sp8, sp8, M2C_ERROR(/* Read from unset register $v0 */)->unk14 + 0x14);
                var_a1 = __glMgrle_BindTextureEXT;
block_11:
                var_a3 = var_s1 < temp_s2->unk18;
            }
            var_s3_2 += 8;
            if (var_a3 != 0) {
                goto loop_13;
            }
            var_s3 = sp80;
        } else {
            sp8 = (s64) (temp_s0 + 0x14);
        }
        __glMgrDLNodeLink((__GLcontext *) sp8, sp8, var_a1, temp_s2->unk18, var_a3);
        var_a1_2 = 0;
        var_v0 = 0;
        var_s1_2 = 0;
        temp_s0->unk2C = (s32) sp0;
        if (temp_s0->unk1C != 0) {
            sp80 = var_s3;
            var_s3_3 = 0;
            sp30 = sp0 + 1;
loop_25:
            temp_a6 = **(temp_s0->unk20 + var_s3_3);
            var_s1_2 += 1;
            var_s3_3 += 0x10;
            if (temp_a6 != NULL) {
                temp_a5 = temp_a6->unk14;
                var_a2 = temp_a5->unkC;
                if (!(var_a2 & 1)) {
                    temp_a3 = temp_a5->unk2C;
                    if (temp_a3 == 0) {
                        sp68 = var_v0;
                        sp60 = (s64) temp_a5;
                        sp58 = var_a1_2;
                        .L0da8ce2c(sp28, temp_a6, sp30, temp_a3);
                        var_v0 = sp68;
                        var_a2 = temp_a5->unkC;
                    } else {
                        var_v0 = 1;
                    }
                }
                if (!(var_a2 & 4)) {
                    var_a1_2 = 1;
                }
                temp_a3_2 = temp_s0->unkC & 0x10;
                if (temp_a3_2 != (var_a2 & 0x10)) {
                    var_a1_2 = 1;
                }
                if (var_v0 == 0) {
                    if (var_a1_2 == 0) {
                        temp_a2_2 = temp_a5->unk0;
                        temp_a4 = temp_a2_2 < sp20;
                        if (temp_a4 == 0) {
                            sp68 = var_v0;
                            sp58 = var_a1_2;
                            sp20 = temp_a2_2 + 1;
                        }
                        sp68 = var_v0;
                        sp58 = var_a1_2;
                        __glMgrDLTexMerge((__GLcontext *) sp28, sp28, temp_s0, temp_a5, temp_a3_2, temp_a4, temp_a5);
                    }
                }
            }
            if (var_s1_2 < temp_s0->unk1C) {
                goto loop_25;
            }
        }
        temp_s0->unk2C = 0;
        temp_s0->unk0 = (s32) sp20;
        if (var_v0 != 0) {
            goto block_32;
        }
        if ((var_a1_2 == 0) && (sp20 < 9U)) {
            temp_s0->unkC = (s32) (temp_s0->unkC | 4);
            temp_s2->unk30 = (f32) temp_s2->unk2C;
            if (temp_s2->unk20 & 2) {
                __glDlistHeapPriorityChanged(sp28->unk1210 + 4, temp_s2 + 0x30);
                if (temp_s2->unk20 & 2) {
                    goto block_49;
                }
            }
            __glMgrDLToPool((__GLcontext *) sp28, sp28, temp_s2);
            if (temp_s2->unk20 & 2) {
block_49:
                temp_a5_2 = temp_s0->unk1C;
                var_v0_2 = temp_s0->unk10;
                if (temp_a5_2 != 0) {
                    var_a7 = 1;
                    if (temp_a5_2 >= 1U) {
                        var_a7 = temp_a5_2;
                    }
                    var_a1_3 = temp_s0->unk20;
                    temp_a2_3 = var_a1_3 + (temp_a5_2 * 0x10);
                    if (var_a7 & 1) {
                        temp_a6_2 = *var_a1_3->unk0;
                        if (temp_a6_2 != NULL) {
                            temp_a5_3 = temp_a6_2->unk14;
                            if (!(temp_a5_3->unkC & 8)) {
                                sp10 = 1;
                            }
                            var_v0_2 += temp_a5_3->unk4 * var_a1_3->unkC;
                        }
                        var_a1_3 += 0x10;
                    }
                    if (((s32) var_a7 >> 1) != 0) {
loop_68:
                        temp_a6_3 = *var_a1_3->unk0;
                        if (temp_a6_3 != NULL) {
                            temp_a5_4 = temp_a6_3->unk14;
                            if (!(temp_a5_4->unkC & 8)) {
                                sp10 = 1;
                            }
                            var_v0_2 += temp_a5_4->unk4 * var_a1_3->unkC;
                        }
                        temp_a6_4 = *var_a1_3->unk10;
                        temp_a1_2 = var_a1_3 + 0x10;
                        if (temp_a6_4 != NULL) {
                            temp_a5_5 = temp_a6_4->unk14;
                            if (!(temp_a5_5->unkC & 8)) {
                                sp10 = 1;
                            }
                            var_v0_2 += temp_a5_5->unk4 * temp_a1_2->unkC;
                        }
                        var_a1_3 = temp_a1_2 + 0x10;
                        if ((u32) var_a1_3 < temp_a2_3) {
                            goto loop_68;
                        }
                    }
                }
                if (sp10 == 0) {
                    sp50 = (s64) var_v0_2;
                    temp_s0->unkC = (s32) (temp_s0->unkC | 8);
                    __glMgrDLResolveCalls((__GLcontext *) sp28, sp28, temp_s2);
                }
                temp_s0->unk4 = (s32) (sp18 + var_v0_2);
            }
        } else {
block_32:
            temp_s2->unk30 = (f32) ((f64) (second half of f64) * (second half of f64));
            if (temp_s2->unk20 & 2) {
                __glDlistHeapPriorityChanged(sp28->unk1210 + 4, temp_s2 + 0x30);
            }
        }
    }
    if (temp_s2->unkC != 0) {
        if (!(~temp_s0->unkC & 0xE) && (temp_s0->unk4 >= 0)) {
            temp_s2->unk8 = __glMgrDLExecuteDMA;
        } else {
            temp_s2->unk8 = __glMgrExecuteDlist;
        }
    } else {
        temp_s2->unk8 = __glEmptyExecuteDlist;
    }
    temp_s0->unkC = (s32) (temp_s0->unkC | 1);
}

void __glMgrSPValidateDL(__GLcontext *gc, void *arg1, ...) {
    if (!(arg1->unk14->unkC & 1)) {
        __glMgrDLLookupTex(gc, 1);
    }
}

void __glMgrSPValidateDLExec(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;

    sp18 = arg1;
    __glMgrSPValidateDL(gc);
    __glMgrSPValidateDL(gc, gc, sp18);
}

void __glMgrSPCompMachdep(__GLcontext *gc, void *arg1, ...) {
    arg1->unk38 = arg1;
    __glMgrDLNotResident(gc, gc->unk1250);
}
