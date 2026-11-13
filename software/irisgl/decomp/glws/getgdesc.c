typedef struct __gl_sstateRec {
    /* 0x000 */ void **display;
    /* 0x004 */ s32 screen;
    /* 0x008 */ u32 root;
    /* 0x00C */ u32 colormap;
    /* 0x010 */ void **visual;
    /* 0x014 */ char pad14[8];                      /* maybe part of visual[3]? */
    /* 0x01C */ void *unk1C;                        /* inferred */
    /* 0x020 */ char pad20[0xF0];                   /* maybe part of unk1C[0x3D]? */
    /* 0x110 */ s32 graphicsType;
} gl_sstate;                                        /* size = 0x114 */

s32 atoi(s8 *);                                     /* extern */
s32 glXGetCurrentContext(void *, void *, ?);        /* extern */
s32 sprintf(void *, void *, s32, s32);              /* extern */
extern s32 _GLnoDestAlpha;
extern s32 __iglooMixedModel;
extern s32 __iglooSoftPupPlanes;
extern s32 __iglooSoftPupShift;
extern s32 gl_nscrns;
extern s32 gl_scrntab;
extern s32 gl_selected_scrn;
extern ? sub_0f020000;
extern ? sub_0f030000;

s32 gdIsExtension(void) {
    s32 var_v0;

    if (__iglooIsExtensionSupported() != 1) {
        var_v0 = 0;
    } else {
        var_v0 = 1;
    }
    return var_v0;
}

s32 getRendererInfo(s32 *arg0) {
    s32 temp_a5_2;
    void *temp_a4;
    void *temp_a5;
    void *var_v0;

    temp_a5 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF7378C)->unk-7E70)->unk1C;
    var_v0 = NULL;
    *arg0 = 0;
    if (temp_a5 != NULL) {
        temp_a4 = temp_a5->unk100;
        if (temp_a4 != NULL) {
            temp_a5_2 = temp_a4->unk28;
            if (temp_a5_2 != 0) {
                var_v0 = temp_a4 + 0x2C;
                *arg0 = temp_a5_2;
            }
        }
    }
    return (s32) var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x50, 0x54, 0x58, 0x5c], gap at: 0x40. */
s32 gl_g_getgdesc(s32 arg0) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 temp_a1_2;
    s32 temp_v0;
    s32 temp_v0_11;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 var_s0;
    s32 var_v0;
    s64 temp_a0_2;
    s8 *temp_v0_2;
    u8 temp_v0_10;
    u8 temp_v0_9;
    void *temp_a0;
    void *temp_a1;
    void *temp_a5;

    _GLinitgl();
    var_s0 = -1;
    temp_a5 = gl_sstatep->unk1C;
    if ((arg0 >= 0) && ((u32) arg0 < 0x61U)) {
        temp_a1 = &sub_0f030000 - 0x7A70;
        temp_a0 = (arg0 * 8) + temp_a1;
        temp_v0 = temp_a0->unk0;
        switch (temp_v0) {                          /* switch 1; irregular */
        case 1:                                     /* switch 1 */
            var_s0 = (temp_a0->unk4 + temp_a5)->unkA4;
            if (saved_reg_gp->unk-39FC == (s8 *)-1) {
                temp_v0_2 = getenv(saved_reg_gp->unk-39F8);
                saved_reg_gp->unk-39FC = temp_v0_2;
                if (temp_v0_2 != NULL) {
                    saved_reg_gp->unk-5138 = atoi(temp_v0_2);
                }
            }
            temp_v0_3 = saved_reg_gp->unk-5138;
            if (temp_v0_3 != 0) {
                if ((arg0 == 9) || (arg0 == 0xA) || (arg0 == 0xB)) {
                    var_s0 = temp_v0_3;
                }
            }
            break;
        case 3:                                     /* switch 1 */
            switch (arg0) {                         /* switch 5 */
            default:                                /* switch 5 */
                unksp38 = (s64) temp_a5;
                goto block_6;
            case 0x17:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = 2;
                break;
            case 0x5:                               /* switch 5 */
                __iglooCalcDepthExtrema(temp_a5->unkDC, sp, &sp4);
                var_s0 = sp4;
                break;
            case 0x4:                               /* switch 5 */
                __iglooCalcDepthExtrema(temp_a5->unkDC, &sp8, &spC);
                var_s0 = sp8;
                break;
            case 0x43:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = _GLExtDialsExist(temp_a0, temp_a1, 2);
                break;
            case 0x23:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = 0;
                unksp40 = 0;
                unksp48 = (s64) gl_nscrns;
                if (gl_nscrns > 0) {
loop_96:
                    if (__iglooIsGlxScreen(unksp40) != 0) {
                        var_s0 += 1;
                    }
                    temp_a0_2 = unksp40 + 1;
                    unksp40 = temp_a0_2;
                    if (temp_a0_2 < unksp48) {
                        goto loop_96;
                    }
                }
                break;
            case 0x3D:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = (gl_scrntab + (gl_selected_scrn * 0x28))->unk8;
                break;
            case 0x47:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                temp_v0_4 = __iglooGetGraphicsType(temp_a0, temp_a1, 2);
                if (temp_v0_4 != 2) {
                    if (temp_v0_4 != 5) {
                        var_s0 = 0;
                    } else {
                        goto block_105;
                    }
                } else {
block_105:
                    var_s0 = ((void *) unksp38)->unkE0;
                }
                break;
            case 0x5E:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                temp_v0_5 = getRendererInfo(&sp10, temp_a1, 2);
                if (sp10 != 4) {
                    if (sp10 != 3) {
                        if (sp10 != 2) {
                            if (sp10 != 8) {
                                if (sp10 == 5) {
                                    var_s0 = temp_v0_5->unkC * 2;
                                } else {
                                    goto block_6;
                                }
                            } else {
                                var_s0 = 8;
                            }
                        } else {
                            var_s0 = temp_v0_5->unkC;
                        }
                    } else {
                        var_s0 = temp_v0_5->unk8;
                    }
                } else {
                    var_s0 = 0;
                }
                break;
            case 0x49:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                if (glXGetCurrentContext(temp_a0, temp_a1, 2) == 0) {
                    var_s0 = 6;
                } else {
                    __iglooGetIntegerv(0xD32, &sp14);
                    var_s0 = sp14;
                }
                break;
            case 0x4A:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = 1;
                break;
            case 0x51:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                if (__iglooGetGraphicsType(temp_a0, temp_a1, 2) != 2) {
                    var_s0 = 0;
                } else {
                    var_s0 = 1;
                }
                break;
            case 0x55:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = gl_g_getgconfig(0xC, temp_a1, 2);
                break;
            case 0x56:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = gl_g_getgconfig(0x17, temp_a1, 2);
                break;
            case 0x58:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                gl_g_getgconfig(0xE, temp_a1, 2);
                __iglooGetGraphicsType();
                var_s0 = 0;
                break;
            case 0x57:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = gl_g_getgconfig(0x11, temp_a1, 2);
                break;
            case 0x24:                              /* switch 5 */
            case 0x36:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                if (glXGetCurrentContext(temp_a0, temp_a1, 2) == 0) {
                    var_s0 = 0x18;
                } else {
                    __iglooGetIntegerv(0xD30, &sp18);
                    var_s0 = sp18;
                }
                break;
            case 0x42:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                var_s0 = 0x43;
                break;
            case 0x11:                              /* switch 5 */
                var_s0 = temp_a5->unkE8;
                if (__iglooMixedModel == 0) {
                    if (__iglooSoftPupShift != 0) {
                        var_s0 = __iglooSoftPupShift;
                    }
                }
                break;
            case 0x13:                              /* switch 5 */
                var_s0 = temp_a5->unkEC;
                if (__iglooMixedModel == 0) {
                    if (__iglooSoftPupPlanes != 0) {
                        var_s0 = __iglooSoftPupPlanes;
                    }
                }
                break;
            case 0x4E:                              /* switch 5 */
                unksp38 = (s64) temp_a5;
                if ((__iglooGetGraphicsType(temp_a0, temp_a1, 2) != 3) && (__iglooGetGraphicsType() != 4)) {
                    if ((unksp38->unkD4 == 0) || (unksp38->unkC0 == 0) || (_GLnoDestAlpha != 0)) {
                        var_v0 = 0;
                    } else {
                        var_v0 = 1;
                    }
                    var_s0 = var_v0;
                } else {
                    var_s0 = 0;
                }
                break;
            }
            break;
        case 0:                                     /* switch 1 */
            var_s0 = temp_a0->unk4;
            break;
        case 2:                                     /* switch 1 */
            goto block_6;
        }
    } else {
        temp_a1_2 = (u32) (arg0 + 0xB) < 0xBU;
        if (temp_a1_2 != 0) {
            switch (arg0) {                         /* switch 2 */
            case -5:                                /* switch 2 */
                temp_v0_6 = getRendererInfo(&sp1C, (void *) temp_a1_2);
                if (sp1C != 2) {
                    if (sp1C == 5) {
                        var_s0 = temp_v0_6->unk8;
                    }
                } else {
                    var_s0 = temp_v0_6->unk8;
                }
                break;
            case -6:                                /* switch 2 */
                var_s0 = 0;
                break;
            case -7:                                /* switch 2 */
                temp_v0_7 = getRendererInfo(&sp20, (void *) temp_a1_2);
                switch (sp20) {                     /* switch 3; irregular */
                case 3:                             /* switch 3 */
                case 4:                             /* switch 3 */
                    var_s0 = *temp_v0_7;
                    break;
                case 2:                             /* switch 3 */
block_6:
                    var_s0 = -1;
                    break;
                case 5:                             /* switch 3 */
                    goto block_6;
                }
                break;
            case -8:                                /* switch 2 */
                temp_v0_8 = getRendererInfo(&sp24, (void *) temp_a1_2);
                if (sp24 != 2) {
                    if (sp24 == 5) {
                        temp_v0_9 = temp_v0_8->unk4;
                        switch (temp_v0_9) {        /* switch 4; irregular */
                        case 0x4C:                  /* switch 4 */
                            var_s0 = 0x3F;
                            break;
                        case 0x53:                  /* switch 4 */
                            var_s0 = 0x10;
                            break;
                        case 0x4D:                  /* switch 4 */
                            var_s0 = 0x20;
                            break;
                        }
                    }
                } else {
                    temp_v0_10 = temp_v0_8->unk4;
                    switch (temp_v0_10) {           /* switch 6; irregular */
                    case 0x4C:                      /* switch 6 */
                        var_s0 = 0x3F;
                        break;
                    case 0x53:                      /* switch 6 */
                        var_s0 = 0x10;
                        break;
                    case 0x4D:                      /* switch 6 */
                        var_s0 = 0x20;
                        break;
                    }
                }
                break;
            case -10:                               /* switch 2 */
                temp_v0_11 = __GLgetgdesc(0x5E, temp_a1_2);
                var_s0 = temp_v0_11;
                if (temp_v0_11 != -1) {
                    var_s0 = temp_v0_11 << 0x14;
                }
                break;
            case -11:                               /* switch 2 */
                var_s0 = 1;
                break;
            }
        } else {
            gl_g_getgdesc(arg0, temp_a1_2);
            var_s0 = -1;
        }
    }
    return var_s0;
}

s32 getgdescNotSupported(s32 arg0) {
    return sprintf(sp, &sub_0f020000 + 0x3140, arg0, arg0);
}
