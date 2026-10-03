typedef struct __gl_wstateRec {
    /* 0x0000 */ gl_wstate *next;
    /* 0x0004 */ u32 flags;
    /* 0x0008 */ s32 drawMode;
    /* 0x000C */ s32 colorMode;
    /* 0x0010 */ s32 bufferMode;
    /* 0x0014 */ s32 shadingModel;
    /* 0x0018 */ s32 zbuffer;
    /* 0x001C */ s32 zfunction;
    /* 0x0020 */ s32 blendSrc;
    /* 0x0024 */ s32 blendDst;
    /* 0x0028 */ s16 currentColor;
    /* 0x002A */ char pad2A[2];
    /* 0x002C */ u32 currentRGB;
    /* 0x0030 */ f32 currentNormal[3];
    /* 0x003C */ char pad3C[0x74];                  /* maybe part of currentNormal[0xA]? */
    /* 0x00B0 */ ? (*unkB0)(gl_wstate *);           /* inferred */
    /* 0x00B4 */ char padB4[0x2C];                  /* maybe part of unkB0[0xC]? */
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ char pad100[8];                    /* maybe part of screenState[3]? */
    /* 0x0108 */ s16 unk108;                        /* inferred */
    /* 0x010A */ char pad10A[0xA];                  /* maybe part of unk108[6]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0xA28];                /* maybe part of unk114[0x28B]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x180];               /* maybe part of currentVertex[0x19]? */
    /* 0x2C80 */ void *unk2C80;                     /* inferred */
    /* 0x2C84 */ char pad2C84[0x20];                /* maybe part of unk2C80[9]? */
    /* 0x2CA4 */ s32 unk2CA4;                       /* inferred */
    /* 0x2CA8 */ s32 unk2CA8;                       /* inferred */
    /* 0x2CAC */ s32 unk2CAC;                       /* inferred */
    /* 0x2CB0 */ s32 unk2CB0;                       /* inferred */
    /* 0x2CB4 */ s32 unk2CB4;                       /* inferred */
    /* 0x2CB8 */ s32 unk2CB8;                       /* inferred */
    /* 0x2CBC */ s32 unk2CBC;                       /* inferred */
    /* 0x2CC0 */ s32 unk2CC0;                       /* inferred */
    /* 0x2CC4 */ s32 unk2CC4;                       /* inferred */
    /* 0x2CC8 */ s32 unk2CC8;                       /* inferred */
    /* 0x2CCC */ s32 unk2CCC;                       /* inferred */
    /* 0x2CD0 */ s32 unk2CD0;                       /* inferred */
    /* 0x2CD4 */ s32 unk2CD4;                       /* inferred */
    /* 0x2CD8 */ s32 unk2CD8;                       /* inferred */
    /* 0x2CDC */ char pad2CDC[0x20C];               /* maybe part of unk2CD8[0x84]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glLightModelfv(?, s32);                           /* extern */
? glLightModeli(?, u8);                             /* extern */
? glLightf(f32, s64, ?);                            /* extern */
? glLightfv(s64, s32, void *);                      /* extern */
? glLighti(s64, ?, s32);                            /* extern */
? glMaterialfv(f32 *, ?);                           /* extern */
? sprintf(? *, void *, s32, s16);                   /* extern */
extern ? *gl_lightingmodeltab;
extern ? *gl_lighttab;
extern ? *gl_materialtab;
extern ? sub_0f020000;
extern ? sub_0f030000;

void OglMaterialWrapperfv(s32 arg0, s32 arg1, f32 *arg2) {
    s64 sp0;
    ? var_a3;
    gl_wstate *temp_a5;
    void *temp_a2;

    var_a3 = 0x1601;
    temp_a5 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][0] == 1) {
        if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
            temp_a2 = gl_wstatep->unk2C80;
            if (arg1 != 0x1600) {
                if (arg1 != 0x1200) {
                    if (arg1 != 0x1201) {
                        if (arg1 == 0x1202) {
                            var_a3 = 0x404;
                            switch (arg0) {         /* switch 4; irregular */
                            case 0x408:             /* switch 4 */
                                temp_a2->unk60 = (f32) arg2->unk0;
                                temp_a2->unkB0 = (f32) arg2->unk0;
                                temp_a2->unk64 = (f32) arg2->unk4;
                                temp_a2->unkB4 = (f32) arg2->unk4;
                                temp_a2->unk68 = (f32) arg2->unk8;
                                temp_a2->unkB8 = (f32) arg2->unk8;
                                temp_a2->unk6C = (f32) arg2->unkC;
                                temp_a2->unkBC = (f32) arg2->unkC;
                                break;
                            case 0x404:             /* switch 4 */
                                temp_a2->unk60 = (f32) arg2->unk0;
                                temp_a2->unk64 = (f32) arg2->unk4;
                                temp_a2->unk68 = (f32) arg2->unk8;
                                temp_a2->unk6C = (f32) arg2->unkC;
                                break;
                            case 0x405:             /* switch 4 */
                                temp_a2->unkB0 = (f32) arg2->unk0;
                                temp_a2->unkB4 = (f32) arg2->unk4;
                                temp_a2->unkB8 = (f32) arg2->unk8;
                                temp_a2->unkBC = (f32) arg2->unkC;
                                break;
                            }
                        } else {
                            switch (arg1) {         /* switch 1; irregular */
                            case 0x1601:            /* switch 1 */
                                var_a3 = 0x405;
                                switch (arg0) {     /* switch 5; irregular */
                                case 0x408:         /* switch 5 */
                                    temp_a2->unk70 = (f32) arg2->unk0;
                                    temp_a2->unkC0 = (f32) arg2->unk0;
                                    break;
                                case 0x404:         /* switch 5 */
                                    temp_a2->unk70 = (f32) arg2->unk0;
                                    break;
                                case 0x405:         /* switch 5 */
                                    temp_a2->unkC0 = (f32) arg2->unk0;
                                    break;
                                }
                                break;
                            case 0x1603:            /* switch 1 */
                                if (arg0 != 0x404) {
                                    var_a3 = 0x408;
                                    if (arg0 != 0x405) {
                                        if (arg0 == 0x408) {
                                            temp_a2->unk74 = (f32) arg2->unk0;
                                            temp_a2->unkC4 = (f32) arg2->unk0;
                                            temp_a2->unk78 = (f32) arg2->unk4;
                                            temp_a2->unkC8 = (f32) arg2->unk4;
                                            temp_a2->unk7C = (f32) arg2->unk8;
                                            temp_a2->unkCC = (f32) arg2->unk8;
                                        }
                                    } else {
                                        temp_a2->unkC4 = (f32) arg2->unk0;
                                        temp_a2->unkC8 = (f32) arg2->unk4;
                                        temp_a2->unkCC = (f32) arg2->unk8;
                                    }
                                } else {
                                    temp_a2->unk74 = (f32) arg2->unk0;
                                    temp_a2->unk78 = (f32) arg2->unk4;
                                    temp_a2->unk7C = (f32) arg2->unk8;
                                }
                                break;
                            }
                        }
                    } else {
                        switch (arg0) {             /* switch 3; irregular */
                        case 0x408:                 /* switch 3 */
                            temp_a2->unk50 = (f32) arg2->unk0;
                            temp_a2->unkA0 = (f32) arg2->unk0;
                            temp_a2->unk54 = (f32) arg2->unk4;
                            temp_a2->unkA4 = (f32) arg2->unk4;
                            temp_a2->unk58 = (f32) arg2->unk8;
                            temp_a2->unkA8 = (f32) arg2->unk8;
                            temp_a2->unk5C = (f32) arg2->unkC;
                            temp_a2->unkAC = (f32) arg2->unkC;
                            break;
                        case 0x404:                 /* switch 3 */
                            temp_a2->unk50 = (f32) arg2->unk0;
                            temp_a2->unk54 = (f32) arg2->unk4;
                            temp_a2->unk58 = (f32) arg2->unk8;
                            temp_a2->unk5C = (f32) arg2->unkC;
                            break;
                        case 0x405:                 /* switch 3 */
                            temp_a2->unkA0 = (f32) arg2->unk0;
                            temp_a2->unkA4 = (f32) arg2->unk4;
                            temp_a2->unkA8 = (f32) arg2->unk8;
                            temp_a2->unkAC = (f32) arg2->unkC;
                            break;
                        }
                    }
                } else if (arg0 != 0x404) {
                    var_a3 = 0x408;
                    if (arg0 != 0x405) {
                        if (arg0 == 0x408) {
                            temp_a2->unk40 = (f32) arg2->unk0;
                            temp_a2->unk90 = (f32) arg2->unk0;
                            temp_a2->unk44 = (f32) arg2->unk4;
                            temp_a2->unk94 = (f32) arg2->unk4;
                            temp_a2->unk48 = (f32) arg2->unk8;
                            temp_a2->unk98 = (f32) arg2->unk8;
                            temp_a2->unk4C = (f32) arg2->unkC;
                            temp_a2->unk9C = (f32) arg2->unkC;
                        }
                    } else {
                        temp_a2->unk90 = (f32) arg2->unk0;
                        temp_a2->unk94 = (f32) arg2->unk4;
                        temp_a2->unk98 = (f32) arg2->unk8;
                        temp_a2->unk9C = (f32) arg2->unkC;
                    }
                } else {
                    temp_a2->unk40 = (f32) arg2->unk0;
                    temp_a2->unk44 = (f32) arg2->unk4;
                    temp_a2->unk48 = (f32) arg2->unk8;
                    temp_a2->unk4C = (f32) arg2->unkC;
                }
            } else {
                var_a3 = 0x405;
                switch (arg0) {                     /* switch 2; irregular */
                case 0x408:                         /* switch 2 */
                    temp_a2->unk30 = (f32) arg2->unk0;
                    temp_a2->unk80 = (f32) arg2->unk0;
                    temp_a2->unk34 = (f32) arg2->unk4;
                    temp_a2->unk84 = (f32) arg2->unk4;
                    temp_a2->unk38 = (f32) arg2->unk8;
                    temp_a2->unk88 = (f32) arg2->unk8;
                    temp_a2->unk3C = (f32) arg2->unkC;
                    temp_a2->unk8C = (f32) arg2->unkC;
                    break;
                case 0x404:                         /* switch 2 */
                    temp_a2->unk30 = (f32) arg2->unk0;
                    temp_a2->unk34 = (f32) arg2->unk4;
                    temp_a2->unk38 = (f32) arg2->unk8;
                    temp_a2->unk3C = (f32) arg2->unkC;
                    break;
                case 0x405:                         /* switch 2 */
                    temp_a2->unk80 = (f32) arg2->unk0;
                    temp_a2->unk84 = (f32) arg2->unk4;
                    temp_a2->unk88 = (f32) arg2->unk8;
                    temp_a2->unk8C = (f32) arg2->unkC;
                    break;
                }
            }
            glMaterialfv(arg2, var_a3);
        } else {
            if (arg1 != 0x1600) {
                if (arg1 != 0x1200) {
                    if (arg1 == 0x1201) {
                        switch (arg0) {             /* switch 8; irregular */
                        case 0x408:                 /* switch 8 */
                            sp0 = (s64) temp_a5;
                            sp0->unk2CAC = putData(4, arg2, 0x1202);
                            temp_a5->unk2CC4 = putData(4, arg2, sp0);
                            temp_a5->unk2CD4 = temp_a5->unk2CD4 | 4 | 0x100;
                            break;
                        case 0x404:                 /* switch 8 */
                            sp0 = (s64) temp_a5;
                            temp_a5->unk2CAC = putData(4, arg2, 0x1202);
                            temp_a5->unk2CD4 |= 4;
                            break;
                        case 0x405:                 /* switch 8 */
                            sp0 = (s64) temp_a5;
                            temp_a5->unk2CC4 = putData(4, arg2, 0x1202);
                            temp_a5->unk2CD4 |= 0x100;
                            break;
                        }
                    } else if (arg1 == 0x1202) {
                        switch (arg0) {             /* switch 9; irregular */
                        case 0x408:                 /* switch 9 */
                            sp0 = (s64) temp_a5;
                            sp0->unk2CB0 = putData(4, arg2, 0x1202);
                            temp_a5->unk2CC8 = putData(4, arg2, sp0);
                            temp_a5->unk2CD4 = temp_a5->unk2CD4 | 8 | 0x200;
                            break;
                        case 0x404:                 /* switch 9 */
                            sp0 = (s64) temp_a5;
                            temp_a5->unk2CB0 = putData(4, arg2, 0x1202);
                            temp_a5->unk2CD4 |= 8;
                            break;
                        case 0x405:                 /* switch 9 */
                            sp0 = (s64) temp_a5;
                            temp_a5->unk2CC8 = putData(4, arg2, 0x1202);
                            temp_a5->unk2CD4 |= 0x200;
                            break;
                        }
                    } else if (arg1 != 0x1601) {
                        if (arg1 == 0x1603) {
                            switch (arg0) {         /* switch 11; irregular */
                            case 0x408:             /* switch 11 */
                                sp0 = (s64) temp_a5;
                                sp0->unk2CB8 = putData(3, arg2, 0x1202);
                                temp_a5->unk2CD0 = putData(3, arg2, sp0);
                                temp_a5->unk2CD4 = temp_a5->unk2CD4 | 0x20 | 0x800;
                                break;
                            case 0x404:             /* switch 11 */
                                sp0 = (s64) temp_a5;
                                temp_a5->unk2CB8 = putData(3, arg2, 0x1202);
                                temp_a5->unk2CD4 |= 0x20;
                                break;
                            case 0x405:             /* switch 11 */
                                sp0 = (s64) temp_a5;
                                temp_a5->unk2CD0 = putData(3, arg2, 0x1202);
                                temp_a5->unk2CD4 |= 0x800;
                                break;
                            }
                        }
                    } else {
                        switch (arg0) {             /* switch 10; irregular */
                        case 0x408:                 /* switch 10 */
                            sp0 = (s64) temp_a5;
                            sp0->unk2CB4 = putData(1, arg2, 0x1202);
                            temp_a5->unk2CCC = putData(1, arg2, sp0);
                            temp_a5->unk2CD4 = temp_a5->unk2CD4 | 0x10 | 0x400;
                            break;
                        case 0x404:                 /* switch 10 */
                            sp0 = (s64) temp_a5;
                            temp_a5->unk2CB4 = putData(1, arg2, 0x1202);
                            temp_a5->unk2CD4 |= 0x10;
                            break;
                        case 0x405:                 /* switch 10 */
                            sp0 = (s64) temp_a5;
                            temp_a5->unk2CCC = putData(1, arg2, 0x1202);
                            temp_a5->unk2CD4 |= 0x400;
                            break;
                        }
                    }
                } else {
                    switch (arg0) {                 /* switch 7; irregular */
                    case 0x408:                     /* switch 7 */
                        sp0 = (s64) temp_a5;
                        sp0->unk2CA8 = putData(4, arg2, 0x1202);
                        temp_a5->unk2CC0 = putData(4, arg2, sp0);
                        temp_a5->unk2CD4 = temp_a5->unk2CD4 | 2 | 0x80;
                        break;
                    case 0x404:                     /* switch 7 */
                        sp0 = (s64) temp_a5;
                        temp_a5->unk2CA8 = putData(4, arg2, 0x1202);
                        temp_a5->unk2CD4 |= 2;
                        break;
                    case 0x405:                     /* switch 7 */
                        sp0 = (s64) temp_a5;
                        temp_a5->unk2CC0 = putData(4, arg2, 0x1202);
                        temp_a5->unk2CD4 |= 0x80;
                        break;
                    }
                }
            } else {
                switch (arg0) {                     /* switch 6; irregular */
                case 0x408:                         /* switch 6 */
                    sp0 = (s64) temp_a5;
                    sp0->unk2CA4 = putData(4, arg2, 0x1202);
                    temp_a5->unk2CBC = putData(4, arg2, sp0);
                    temp_a5->unk2CD4 = temp_a5->unk2CD4 | 1 | 0x40;
                    break;
                case 0x404:                         /* switch 6 */
                    sp0 = (s64) temp_a5;
                    temp_a5->unk2CA4 = putData(4, arg2, 0x1202);
                    temp_a5->unk2CD4 |= 1;
                    break;
                case 0x405:                         /* switch 6 */
                    sp0 = (s64) temp_a5;
                    temp_a5->unk2CBC = putData(4, arg2, 0x1202);
                    temp_a5->unk2CD4 |= 0x40;
                    break;
                }
            }
            temp_a5->unk2CD8 = 1;
        }
    } else {
        glMaterialfv(arg2, 0x1601);
    }
}

void __iglooSetOglMaterial(s32 arg0, void *arg1) {
    f32 spC;
    f32 var_f4;
    s32 temp_a0;

    spC = 1.0f;
    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        OglMaterialWrapperfv(arg0, 0x1200, arg1 + 0x18);
        OglMaterialWrapperfv(arg0, 0x1201, arg1 + 0x28);
        OglMaterialWrapperfv(arg0, 0x1600, arg1 + 8);
        if (arg1->unk48 != 0) {
            OglMaterialWrapperfv(arg0, 0x1202, arg1 + 0x38);
            OglMaterialWrapperfv(arg0, 0x1601, sp);
        } else {
            OglMaterialWrapperfv(arg0, 0x1202, sp);
            OglMaterialWrapperfv(arg0, 0x1601, &spC);
        }
    } else {
        OglMaterialWrapperfv(arg0, 0x1603, sp);
        temp_a0 = arg1->unk48;
        var_f4 = 1.0f;
        if (temp_a0 != 0) {
            var_f4 = (f32) temp_a0;
        }
        spC = var_f4;
        OglMaterialWrapperfv(arg0, 0x1601, &spC);
    }
}

void __iglooSetOglModel(void *arg0) {
    glLightModelfv(0xB53, arg0 + 0x18);
    glLightModeli(0xB51, arg0->unk8);
    glLightModeli(0xB52, arg0->unk9);
}

void __iglooSetOglLightPosition(s64 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    glLightfv(0x1203, arg1 + 0x34, (void *)0xFFF58B58);
    glLightfv(arg0, 0x1204, sp18 + 0x50);
}

void __iglooSetOglLight(s64 arg0, void *arg1) {
    if (arg1->unk10 != 0) {
        glLighti(arg0, 0x1206, 0xB4);
        glLighti(arg0, 0x1205, 0);
    } else {
        glLighti(arg0, 0x1206, arg1->unk4C);
        glLighti(arg0, 0x1205, arg1->unk48);
    }
    glLightfv(arg0, 0x1200, arg1 + 0x14);
    glLightfv(arg0, 0x1201, arg1 + 0x24);
    glLightfv(arg0, 0x1202, (void *) subroutine_arg0);
    __iglooSetEnable(arg0, 1);
}

void __iglooSetOglAttenuation(s64 arg0, void *arg1, s32 arg2) {
    f32 temp_f14;

    if (arg2 == 0) {
        temp_f14 = arg1->unkC;
        if ((temp_f14 == 0.0f) && (arg1->unk10 == 0.0f)) {
            if (arg1->unk14 == 0.0f) {
                goto block_4;
            }
            goto block_6;
        }
block_6:
        glLightf(temp_f14, arg0, 0x1207);
        glLightf((bitwise f32) arg0, 0x1208);
        glLightf((bitwise f32) arg0, 0x1209);
        return;
    }
block_4:
    glLightf(1.0f, arg0, 0x1207);
    glLightf((bitwise f32) arg0, 0x1208);
    glLightf((bitwise f32) arg0, 0x1209);
}

void __glCheckBindMoveDraw(gl_wstate *arg0, s32 arg1, void *arg2) {
    void *temp_a0;
    void *temp_a0_2;

    if ((arg0 != (gl_wstate *)0x3E8) && (arg0 != (gl_wstate *)0x3E9)) {

    } else {
        temp_a0 = arg2->unkBD4;
        if (temp_a0 != NULL) {
            if (arg1 == 0) {
                if (temp_a0->unk4 != 0) {

                }
                if (arg1 != 0) {
                    goto block_8;
                }
            } else {
block_8:
                if (temp_a0->unk4 == 0) {

                }
            }
        }
        temp_a0_2 = arg2->unkBD8;
        if (temp_a0_2 != NULL) {
            if (arg1 == 0) {
                if (temp_a0_2->unk4 != 0) {

                }
                if (arg1 != 0) {
                    goto block_13;
                }
            } else {
block_13:
                if (temp_a0_2->unk4 == 0) {

                }
            }
        }
    }
}

void __gllmbind(s16 arg0, s16 arg1) {
    s64 sp128;
    s64 sp118;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    f32 spB8;
    ? sp60;
    f32 temp_a1;
    f32 temp_a1_2;
    f32 temp_v0_10;
    f32 var_a0_2;
    gl_wstate *temp_s0;
    s16 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_gp;
    s64 temp_v0_9;
    s64 var_a0;
    s64 var_a1;
    s64 var_a1_2;
    s64 var_s2;
    void *temp_a3;
    void *temp_a4;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF58840;
    temp_s0 = gl_wstatep;
    spD0 = (bitwise s64) temp_s0->modelviewStack.stack[2][3][3];
    __glCheckBindMoveDraw(temp_s0);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        __iglooCloseMoveDraw();
    }
    if (arg0 >= 0x44F) {
        temp_a2 = arg0 < 0x452;
        if (arg0 >= 0x450) {
            if (temp_a2 == 0) {
                if (arg0 >= 0x453) {
                    if (arg0 >= 0x4B0) {
                        if (arg0 < 0x4B1) {
                            if (arg1 != 0) {
                                var_a0 = gl_find(&gl_lightingmodeltab, arg1, temp_a2);
                            } else {
                                var_a0 = 0;
                            }
                            spD8 = var_a0;
                            temp_s0->modelviewStack.stack[2][0][2] = (bitwise f32) var_a0;
                            if (var_a0 != 0) {
                                __iglooSetOglModel((void *) var_a0);
                                spE0 = (s64) temp_s0;
                                spC8 = 0x4000;
                                temp_v0 = spE0->unkBE0;
                                if (temp_v0 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0->unk10);
                                }
                                temp_v0_2 = spE0->unkBE4;
                                spC8 += 1;
                                if (temp_v0_2 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0_2->unk10);
                                }
                                temp_v0_3 = spE0->unkBE8;
                                spC8 += 1;
                                if (temp_v0_3 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0_3->unk10);
                                }
                                temp_v0_4 = spE0->unkBEC;
                                spC8 += 1;
                                if (temp_v0_4 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0_4->unk10);
                                }
                                temp_v0_5 = spE0->unkBF0;
                                spC8 += 1;
                                if (temp_v0_5 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0_5->unk10);
                                }
                                temp_v0_6 = spE0->unkBF4;
                                spC8 += 1;
                                if (temp_v0_6 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0_6->unk10);
                                }
                                temp_v0_7 = spE0->unkBF8;
                                spC8 += 1;
                                if (temp_v0_7 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0_7->unk10);
                                }
                                temp_v0_8 = spE0->unkBFC;
                                spC8 += 1;
                                if (temp_v0_8 != NULL) {
                                    __iglooSetOglAttenuation(spC8, (bitwise void *) temp_s0->modelviewStack.stack[2][0][2], temp_v0_8->unk10);
                                }
                                temp_s0->modelviewStack.stack[2][3][3] = (bitwise f32) ((bitwise s32) temp_s0->modelviewStack.stack[2][0][3] != 0);
                            } else {
                                temp_s0->modelviewStack.stack[2][3][3] = 0.0f;
                            }
                            goto block_29;
                        }
                        goto block_43;
                        goto block_30;
                    }
                    if (arg0 == 0x453) {
                        goto block_12;
                    }
                    goto block_43;
                }
                goto block_12;
            }
            if (arg0 >= 0x451) {
                if (arg0 < 0x452) {
                    goto block_12;
                }
                goto block_43;
            }
            if (arg0 == 0x450) {
                goto block_12;
            }
            goto block_43;
        }
        goto block_12;
    }
    if (arg0 >= 0x44C) {
        if (arg0 < 0x44D) {
            goto block_12;
        }
        if (arg0 >= 0x44E) {
            if (arg0 < 0x44F) {
                goto block_12;
            }
            goto block_43;
        }
        if (arg0 == 0x44D) {
block_12:
            if (temp_s0->unk108 == 0) {
                gl_ErrorHandler(0x62, 2, &sub_0f020000 + 0x34E0);
            }
            if (arg1 != 0) {
                var_s2 = gl_find(&gl_lighttab, arg1);
            } else {
                var_s2 = 0;
            }
            temp_a3 = (arg0 * 4) + temp_s0;
            temp_a4 = temp_a3->unk-550;
            spD8 = var_s2;
            if (var_s2 != temp_a4) {
                if (temp_a4 == NULL) {
                    if (var_s2 != 0) {
                        temp_s0->modelviewStack.stack[2][3][2] = (bitwise f32) ((bitwise s32) temp_s0->modelviewStack.stack[2][3][2] + 1);
                    } else {
                        goto block_40;
                    }
                    goto block_20;
                }
                if (var_s2 == 0) {
block_40:
                    if (temp_a4 != NULL) {
                        temp_s0->modelviewStack.stack[2][3][2] = (bitwise f32) ((bitwise s32) temp_s0->modelviewStack.stack[2][3][2] - 1);
                    }
                    goto block_20;
                }
                goto block_21;
            }
block_20:
            if (var_s2 != 0) {
block_21:
                if (var_s2 != temp_a4) {
                    temp_v0_9 = arg0 + 0x3BB4;
                    if (var_s2->unk8 != temp_s0) {
                        if (temp_a4 == NULL) {
                            spE8 = temp_v0_9;
                            sp128 = (s64) temp_a3;
                            __iglooSetEnable(temp_v0_9, 1);
                        } else {
                            spE8 = temp_v0_9;
                            temp_a4->unk8 = 0;
                            temp_a4->unkC = -1;
                        }
                        var_s2->unk8 = temp_s0;
                        temp_a2_2 = arg0 - 0x44C;
                        var_s2->unkC = temp_a2_2;
                        temp_a3->unk-550 = (void *) var_s2;
                        __iglooSetOglLightPosition(spE8, var_s2, temp_a2_2, temp_a3);
                        __iglooSetOglLight(spE8, (void *) var_s2);
                        temp_a1 = temp_s0->modelviewStack.stack[2][0][2];
                        if ((bitwise s32) temp_a1 != 0) {
                            __iglooSetOglAttenuation(spE8, (bitwise void *) temp_a1, var_s2->unk10);
                        }
                        goto block_29;
                    }
                    sprintf(sp, &sub_0f020000 + 0x3500, temp_gp - 0x39B0, arg1);
                    gl_ErrorHandler(0x5B, 2, sp);
                    return;
                }
                __iglooSetOglLightPosition(arg0 + 0x3BB4, var_s2);
                goto block_29;
            }
            if (temp_a4 != NULL) {
                temp_a3->unk-550 = NULL;
                temp_a4->unk8 = 0;
                temp_a4->unkC = -1;
                __iglooSetEnable(arg0 + 0x3BB4, 0);
            }
            goto block_29;
        }
        goto block_43;
    }
    temp_a2_3 = arg0 < 0x3E9;
    if (temp_a2_3 == 0) {
        if (arg0 < 0x3EA) {
            temp_a0 = temp_s0->unkBDC;
            if (arg1 != 0) {
                sp118 = (s64) temp_a0;
                var_a1 = gl_find(&gl_materialtab, arg1, temp_a2_3);
            } else {
                var_a1 = 0;
            }
            spD8 = var_a1;
            temp_s0->modelviewStack.stack[2][1][0] = (bitwise f32) var_a1;
            if (var_a1 != 0) {
                temp_s0->unkBDC = 1;
                __iglooSetOglMaterial(0x405, (void *) var_a1, var_a1, 1);
                temp_s0->modelviewStack.stack[4][0][1] = 1.44e-42f;
            } else {
                temp_a1_2 = temp_s0->modelviewStack.stack[2][0][3];
                temp_s0->unkBDC = 0;
                if (((bitwise s32) temp_a1_2 != 0) && (temp_a0 != 0)) {
                    temp_s0->modelviewStack.stack[4][0][1] = 1.446e-42f;
                    __iglooSetOglMaterial(0x408, (bitwise void *) temp_a1_2, var_a1);
                }
            }
            goto block_29;
        }
        goto block_43;
    }
    if (arg0 != 0x3E8) {
block_43:
        gl_ErrorHandler(0x16, 2, temp_gp - 0x39B0);
        spD8 = (s64) sp58;
        if (sp58 == 0) {
            goto block_44;
        }
    } else {
        if (arg1 != 0) {
            var_a1_2 = gl_find(&gl_materialtab, arg1, temp_a2_3);
        } else {
            var_a1_2 = 0;
        }
        spD8 = var_a1_2;
        temp_s0->modelviewStack.stack[2][0][3] = (bitwise f32) var_a1_2;
        if (var_a1_2 != 0) {
            temp_s0->modelviewStack.stack[2][3][3] = (bitwise f32) ((bitwise s32) temp_s0->modelviewStack.stack[2][0][2] != 0);
            if (temp_s0->unkBDC != 0) {
                var_a0_2 = 1.44e-42f;
            } else {
                var_a0_2 = 1.446e-42f;
            }
            temp_s0->modelviewStack.stack[4][0][1] = var_a0_2;
            __iglooSetOglMaterial((bitwise s32) var_a0_2, (void *) var_a1_2);
        } else {
            temp_s0->modelviewStack.stack[2][3][3] = 0.0f;
        }
block_29:
        if (spD8 == 0) {
block_44:
            if (arg1 != 0) {
                sprintf(&sp60, &sub_0f020000 + 0x3520, temp_gp - 0x39B0, arg1);
                gl_ErrorHandler(0x5B, 2, &sp60);
            }
        }
    }
block_30:
    temp_v0_10 = temp_s0->modelviewStack.stack[2][3][3];
    if ((bitwise s32) temp_v0_10 != spD0) {
        if ((bitwise s32) temp_v0_10 != 0) {
            if ((bitwise s32) temp_s0->modelviewStack.stack[0][1][0] == 0) {
                __iglooOglLightingOn(temp_s0);
                if ((*(void **)0x1004)->unk14->unk10 == 0) {
                    __iglooGetFloatv(0xB01, &spB8);
                    temp_s0->unkB0(temp_s0);
                }
            }
        } else {
            __iglooSetEnable(0xB50, 0);
        }
        __iglooSyncLmcolor(temp_s0);
    }
}

void gl_i_lmbind(void) {
    __gllmbind();
}

void gl_c_lmbind(s16 arg0, s16 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5120 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x70F0, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5120 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_lmbind(void *arg0) {
    __gllmbind(arg0->unk0, arg0->unk2);
}

void __iglooOglLightingOn(gl_wstate *arg0) {
    if (arg0->unk114->unk38 == 0x10) {
        __iglooSetEnable(0xB50, 1);
    }
}

void gl_free_materials(void) {
    ? **var_s4;
    ? *temp_s0;
    ? *var_a0;

    var_s4 = &gl_materialtab;
loop_2:
    var_a0 = *var_s4;
    var_s4 += 4;
    if (var_a0 != NULL) {
        do {
            temp_s0 = *var_a0;
            gl_free(var_a0, &sub_0f030000 - 0x70E0);
            var_a0 = temp_s0;
        } while (temp_s0 != NULL);
    }
    var_s4->unk-4 = 0;
    if (var_s4 != (&gl_materialtab + 0x200)) {
        goto loop_2;
    }
}

void gl_free_lights(void) {
    ? **var_s4;
    ? *temp_s0;
    ? *var_a0;

    var_s4 = &gl_lighttab;
loop_2:
    var_a0 = *var_s4;
    var_s4 += 4;
    if (var_a0 != NULL) {
        do {
            temp_s0 = *var_a0;
            gl_free(var_a0, &sub_0f030000 - 0x70C8);
            var_a0 = temp_s0;
        } while (temp_s0 != NULL);
    }
    var_s4->unk-4 = 0;
    if (var_s4 != (&gl_lighttab + 0x200)) {
        goto loop_2;
    }
}

void gl_free_lightingmodels(void) {
    ? **var_s4;
    ? *temp_s0;
    ? *var_a0;

    var_s4 = &gl_lightingmodeltab;
loop_2:
    var_a0 = *var_s4;
    var_s4 += 4;
    if (var_a0 != NULL) {
        do {
            temp_s0 = *var_a0;
            gl_free(var_a0, &sub_0f030000 - 0x70B8);
            var_a0 = temp_s0;
        } while (temp_s0 != NULL);
    }
    var_s4->unk-4 = 0;
    if (var_s4 != (&gl_lightingmodeltab + 0x200)) {
        goto loop_2;
    }
}

void gl_free_lighting(void) {
    gl_free_materials();
    gl_free_lightingmodels();
    gl_free_lights();
}
