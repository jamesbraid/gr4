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
    /* 0x003C */ char pad3C[0xA4];                  /* maybe part of currentNormal[0xE]? */
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ char pad100[0x14];                 /* maybe part of screenState[6]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0xA28];                /* maybe part of unk114[0x28B]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

s32 XCreateWindow(s32, s32, ?, ?, s32, ? *);        /* extern */
? XDestroyWindow(s32, s64);                         /* extern */
? XFlush(s32);                                      /* extern */
? XGetGeometry(s32, s32, ? *, ? *);                 /* extern */
? XGetWindowAttributes(s32, s32, ? *);              /* extern */
? XInstallColormap(s32, s32);                       /* extern */
? XMapWindow(s32, s32);                             /* extern */
? XReparentWindow(s32, s32, void *, s32);           /* extern */
? XSetInputFocus(s32, s32, ?, ?);                   /* extern */
? XSync(s32, ?, s64);                               /* extern */
? XUnmapWindow(s32, void *);                        /* extern */
extern void *GLlasterror;
extern s32 __iglooSoftPupShift;
extern s32 gl_selected_scrn;
extern ? *gl_valid_cxs;
extern ? sub_0f020000;

void _GLattachScreen(s32 arg0) {
    if (saved_reg_gp->unk-3814 != arg0) {
        if (arg0 >= 0) {
            gl_selected_scrn = arg0;
            gl_devdepattach(arg0);
        }
        saved_reg_gp->unk-3814 = arg0;
    }
}

void *_GLnewcontext(void *arg0) {
    ? *temp_v0;

    temp_v0 = gl_malloc(0x2F80, saved_reg_gp - 0x3E28);
    bzero(temp_v0, 0x2F80U);
    temp_v0->unkEC = arg0;
    temp_v0->unkE4 = 1;
    temp_v0->unkF8 = 0;
    temp_v0->unkFC = (s32) arg0->unkC;
    _GLattachScreen(arg0->unkC, 0U);
    temp_v0->unk0 = gl_valid_cxs;
    gl_valid_cxs = temp_v0;
    return temp_v0;
}

void _GLisvalidcx(gl_wstate *arg0) {
    ? *var_a3;

    var_a3 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0998C)->unk-7E8C;
    if (var_a3 != NULL) {
loop_1:
        if (arg0 != var_a3) {
            var_a3 = *var_a3;
            if (var_a3 == NULL) {

            } else {
                goto loop_1;
            }
        }
    }
}

void *_GLdestroycontext(void *arg0) {
    ? *temp_a2;
    ? *var_a0;
    ? *var_s1;
    s32 var_s4;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    _GLisvalidcx();
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        goto block_20;
    }
    var_a0 = NULL;
    var_s1 = gl_valid_cxs;
    var_s4 = 1;
    if (var_s1 == NULL) {
        goto block_21;
    }
    temp_a2 = gl_valid_cxs;
    if (arg0 == var_s1) {
        goto block_11;
    }
block_3:
    var_a0 = var_s1;
    if (var_s4 == 0) {
        goto block_7;
    }
    if (var_s1->unkE0 == 0) {
        goto block_6;
    }
    var_s4 = 0;
    if (gl_wstatep == arg0) {
        goto block_19;
    }
block_6:
    var_a0 = var_s1;
block_7:
    var_s1 = *var_s1;
    if (var_s1 != NULL) {
        goto block_9;
    }
    goto block_16;
block_9:
    if (arg0 != var_s1) {
        goto block_3;
    }
block_11:
    if (var_s1 == temp_a2) {
        goto block_13;
    }
    goto block_15;
block_13:
    gl_valid_cxs = *temp_a2;
    goto block_6;
block_15:
    *var_a0 = *var_s1;
    goto block_6;
block_16:
    _GLfreezeWindows(arg0);
    if (var_s4 == 0) {
        goto block_18;
    }
    gl_wstatep = NULL;
    *(s32 *)0x1008 = 0;
block_18:
    _GLunbindcontext(arg0);
    bzero(arg0, 0x2F80U);
    gl_free(arg0, saved_reg_gp - 0x3E20);
    GLlasterror = NULL;
    return NULL;
block_19:
    _GLsetcontext(var_s1);
    var_s4 = 0;
    goto block_6;
block_20:
    GLlasterror = (void *)-1;
    return (void *)-1;
block_21:
    goto block_16;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64], gap at: 0x30. */
void *gl_glws_init_context(s32 arg0, void *arg1) {
    s32 *temp_a1_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 var_s1;
    s32 var_s7;
    s32 var_s8;
    s64 var_ra;
    u32 temp_a2;
    void *var_s0;

    var_ra = saved_reg_ra;
    var_s8 = 0;
    unksp28 = 0;
    unksp30 = 0;
    var_s7 = 0;
    var_s0 = arg1;
    var_s1 = arg0 - 3;
    if (var_s1 >= 0) {
        M2C_TRAP_IF(3 == 0);
loop_5:
        temp_a1 = var_s0->unk0;
        temp_a0 = var_s0->unk8;
        var_s1 -= 3;
        temp_a2 = var_s0->unk4;
        switch (temp_a1) {                          /* switch 1; irregular */
        case 0x2000:                                /* switch 1 */
            if (temp_a2 != 4) {
                if (temp_a2 == 2) {
                    var_s7 = temp_a0;
                }
            } else {
                __GLoverlay(temp_a0, temp_a1, temp_a2);
            }
            break;
        case 0x4000:                                /* switch 1 */
            if (temp_a2 == 4) {
                __GLunderlay(temp_a0, temp_a1, temp_a2);
            }
            break;
        case 0x1000:                                /* switch 1 */
            temp_a1_2 = (temp_a2 * 4) + &jtbl_0f025ab8;
            switch (temp_a2) {                      /* switch 2 */
            case 1:                                 /* switch 2 */
                if (temp_a0 != 0) {
                    __GLRGBmode(temp_a0, temp_a1_2, temp_a2, temp_a0);
                }
                break;
            case 2:                                 /* switch 2 */
                if (temp_a0 != 0) {
                    __GLdoublebuffer(temp_a0, temp_a1_2, temp_a2, temp_a0);
                }
                break;
            case 6:                                 /* switch 2 */
                __GLacsize(temp_a0, temp_a1_2, temp_a2, temp_a0);
                break;
            case 5:                                 /* switch 2 */
                __GLstensize(temp_a0, temp_a1_2, temp_a2, temp_a0);
                break;
            case 10:                                /* switch 2 */
                var_s8 = temp_a0;
                break;
            case 11:                                /* switch 2 */
                unksp28 = (s64) temp_a0;
                break;
            case 12:                                /* switch 2 */
                unksp30 = (s64) temp_a0;
                break;
            case 3:                                 /* switch 2 */
                __GLzbsize(temp_a0, temp_a1_2, temp_a2, temp_a0);
                break;
            case 13:                                /* switch 2 */
                if (temp_a0 != 0) {
                    __GLstereobuffer(temp_a0, temp_a1_2, temp_a2, temp_a0);
                } else {
                    __GLmonobuffer(temp_a0, temp_a1_2, temp_a2, temp_a0);
                }
                break;
            case 14:                                /* switch 2 */
                __GLRGBsize(temp_a0, temp_a1_2, temp_a2, temp_a0);
                break;
            }
            break;
        }
        var_s0 += 0xC;
        if (var_s1 >= 0) {
            goto loop_5;
        }
        var_ra = unksp38;
    }
    if (var_s7 != 0) {
        unksp38 = var_ra;
        __GLdrawmode(0x40);
        __GLdoublebuffer();
        __GLdrawmode(0x10);
    }
    unksp38 = var_ra;
    if ((unksp28 | var_s8 | unksp30) != 0) {
        __GLmssize(var_s8, unksp28, unksp30);
    }
    return gl_gconfig();
}

void *_GLsetcontext(gl_wstate *arg0) {
    s32 sp4;
    s32 temp_v0;
    u32 temp_s1;
    void *temp_a1;
    void *var_a1;
    void *var_a3;
    void *var_v0;

    GLlasterror = NULL;
    if ((gl_wstatep != arg0) || (__iglooGetCurrentContextInfo() == 0)) {
        _GLisvalidcx(arg0);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            temp_s1 = arg0->active;
            var_v0 = (void *)-3;
            if (temp_s1 != 0) {
                _GLattachScreen((s32) arg0->screenState, arg0->screen);
                gl_wstatep = arg0;
                *(gl_wstate **)0x1008 = arg0;
                if (arg0->valid == 0) {
                    temp_v0 = arg0->unk114->unk38;
                    switch (temp_v0) {              /* irregular */
                    default:
                        var_a1 = NULL;
                        if (temp_v0 != 0x80) {
                            var_a3 = NULL;
                        } else {
                            var_a3 = temp_s1->unkA8;
                            var_a1 = temp_s1->unk90;
                        }
                        break;
                    case 0x10:
                    case 0x100:
                        var_a3 = temp_s1->unk18;
                        goto block_8;
                    case 0x40:
                        if (__iglooSoftPupShift == 0) {
                            var_a3 = temp_s1->unkA4;
                            var_a1 = temp_s1->unk8C;
                        } else {
                            var_a3 = temp_s1->unkA0;
                            var_a1 = temp_s1->unk88;
                        }
                        break;
                    case 0x20:
                        var_a3 = temp_s1->unkA0;
                        var_a1 = temp_s1->unk88;
                        break;
                    }
                } else {
                    var_a3 = temp_s1->unk18;
block_8:
                    var_a1 = temp_s1->unk8;
                }
                __iglooMakeCurrent(temp_s1->unk4, var_a1, (? *) temp_s1, var_a3);
                if (arg0->valid != 0) {
                    gl_init_wstate(arg0);
                    gl_dogreset(0);
                    __GLgetsize(sp, &sp4);
                    __GLviewport(0, (s64) ((subroutine_arg0 - 1) << 0x30) >> 0x30, 0, (s64) ((sp4 - 1) << 0x30) >> 0x30);
                    __GLortho2(-0.5f, -0.5f);
                    temp_a1 = temp_s1->unk80;
                    if (temp_a1 != NULL) {
                        gl_glws_init_context(temp_s1->unk84, temp_a1);
                        gl_free(temp_s1->unk80, &sub_0f020000 + 0x5AF8);
                        temp_s1->unk80 = NULL;
                    }
                    arg0->valid = 0;
                }
                var_v0 = NULL;
                GLlasterror = NULL;
            } else {
                GLlasterror = (void *)-3;
            }
        } else {
            var_v0 = (void *)-1;
            GLlasterror = (void *)-1;
        }
    } else {
        __iglooFlush();
        var_v0 = GLlasterror;
    }
    return var_v0;
}

void xerox(void *arg0, void *arg1) {
    s32 spD8;
    s32 spD4;
    s32 spD0;
    s32 spC8;
    ? spA0;
    ? sp40;
    ? sp38;
    ? sp34;
    s32 sp30;
    s32 sp2C;
    ? sp28;
    ? sp24;
    ? sp20;
    s32 temp_s0;

    temp_s0 = gl_sstatep->unk1C->unk4;
    XGetGeometry(temp_s0, arg0->unk8, &sp20, &sp24);
    XGetWindowAttributes(temp_s0, arg0->unk8, &sp40);
    _GLinitXWindowAttributes(&spA0);
    spC8 = 0;
    spD0 = sp94;
    spD4 = arg1->unk4;
    spD8 = arg0->unk54;
    XMapWindow(temp_s0, XCreateWindow(temp_s0, arg0->unk40, 0, 0, M2C_ERROR(/* Read from unset register $v0 */) | 0x6200, &spA0));
}

void *_GLbindcontext(s64 arg0, s64 arg1) {
    _GLisvalidcx((gl_wstate *) arg1);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        GLlasterror = (void *)-1;
        return (void *)-1;
    }
    subroutine_arg2->unkE0 = (s32) subroutine_arg0;
    XSync(subroutine_arg0->unk4, 0, subroutine_arg2);
    GLlasterror = NULL;
    return NULL;
}

void *_GLunbindcontext(s64 arg0) {
    _GLisvalidcx();
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        subroutine_arg0->unkE0 = 0;
        subroutine_arg0->unkE4 = 1;
        GLlasterror = NULL;
        return NULL;
    }
    GLlasterror = (void *)-1;
    return (void *)-1;
}

void _GLbuildconfig(void *arg0, void *arg1) {
    s32 var_a3;
    s32 var_a5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a4;
    void *temp_at;
    void *temp_at_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;

    var_a5 = 0;
    temp_a4 = arg0->unk3C + 0x18;
    if (arg0->unk1C != 0) {
        arg1->unk4 = 4;
        arg1->unk0 = 0x2000;
        var_a5 = 3;
        arg1->unk8 = (s32) arg0->unk1C;
    }
    var_a3 = var_a5 * 4;
    if (arg0->unk20 != 0) {
        temp_v0 = var_a3 + arg1;
        temp_v0->unk4 = 4;
        temp_v0->unk0 = 0x4000;
        var_a3 += 0xC;
        temp_v0->unk8 = (s32) arg0->unk20;
    }
    temp_v1 = var_a3 + arg1;
    if (arg0->unk24 != 0) {
        temp_v1->unk4 = 6;
        temp_v1->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_v1->unk8 = (s32) arg0->unk24;
    }
    temp_a2 = var_a3 + arg1;
    if (arg0->unk28 != 0) {
        temp_a2->unk4 = 5;
        temp_a2->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_a2->unk8 = (s32) arg0->unk28;
    }
    temp_at = var_a3 + arg1;
    if (arg0->unk2C != 0) {
        temp_at->unk4 = 0xA;
        temp_at->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_at->unk8 = (s32) arg0->unk2C;
    }
    temp_v0_2 = var_a3 + arg1;
    if (arg0->unk30 != 0) {
        temp_v0_2->unk4 = 0xB;
        temp_v0_2->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_v0_2->unk8 = (s32) arg0->unk30;
    }
    if (arg0->unk34 != 0) {
        temp_v1_2 = var_a3 + arg1;
        temp_v1_2->unk4 = 0xC;
        temp_v1_2->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_v1_2->unk8 = (s32) arg0->unk34;
    }
    temp_a2_2 = var_a3 + arg1;
    if (temp_a4->unk8 != 0) {
        var_a3 += 0xC;
        temp_a2_2->unk0 = 0x1000;
        temp_a2_2->unk8 = 1;
        temp_a2_2->unk4 = 0xD;
    }
    temp_at_2 = var_a3 + arg1;
    if (temp_a4->unkC != 0) {
        temp_at_2->unk4 = 0xE;
        temp_at_2->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_at_2->unk8 = (s32) temp_a4->unkC;
    }
    temp_v0_3 = var_a3 + arg1;
    if (temp_a4->unk10 != 0) {
        temp_v0_3->unk4 = 4;
        temp_v0_3->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_v0_3->unk8 = (s32) temp_a4->unk10;
    }
    temp_v1_3 = var_a3 + arg1;
    if (temp_a4->unk14 != 0) {
        temp_v1_3->unk4 = 3;
        temp_v1_3->unk0 = 0x1000;
        var_a3 += 0xC;
        temp_v1_3->unk8 = (s32) temp_a4->unk14;
    }
    temp_v0_4 = var_a3 + arg1;
    temp_v0_4->unk8 = 0;
    temp_v0_4->unk4 = 0;
    temp_v0_4->unk0 = 0;
}

void _GLchangevisual(? *arg0, void *arg1, s32 arg2) {
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    ? *temp_s5;
    ? *temp_s5_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_s0_2;
    s32 temp_s2;
    u8 temp_s0;
    void *temp_a1_4;
    void *temp_s0_3;
    void *var_s5;

    temp_s0 = arg0->unk2C;
    temp_s2 = arg0->unk4;
    if (temp_s0 != 1) {
        if (temp_s0 == 5) {
            gl_ErrorHandler(4, 1, &sub_0f020000 + 0x5B30);
        }
    } else {
        gl_ErrorHandler(4, 1, &sub_0f020000 + 0x5B08);
    }
    _GLunbindcontext(arg1->unk114, sp);
    __iglooChooseVisual(arg2, sp);
    sp118 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_s0_2 = M2C_ERROR(/* Read from unset register $v0 */);
    if (arg0->unk14 == temp_s0_2) {
        return;
    }
    temp_s0_3 = _GLsetcontext(arg0, temp_s0_2);
    sp100 = (s64) (arg0 + 0xC);
    temp_a1 = arg0->unk88;
    if (temp_a1 != 0) {
        XReparentWindow(temp_s2, temp_a1, temp_s0_3, 0);
    }
    temp_s5 = arg0 + 4;
    if (temp_s5 != sp100) {
        temp_a1_2 = temp_s5->unk88;
        if (temp_a1_2 != 0) {
            XReparentWindow(temp_s2, temp_a1_2, temp_s0_3, 0);
        }
        temp_s5_2 = temp_s5 + 4;
        if (temp_s5_2 != sp100) {
            temp_a1_3 = temp_s5_2->unk88;
            if (temp_a1_3 != 0) {
                XReparentWindow(temp_s2, temp_a1_3, temp_s0_3, 0);
            }
        }
    }
    var_s5 = arg0->unk48;
    if (var_s5 != NULL) {
        do {
            XReparentWindow(temp_s2, var_s5->unk40, temp_s0_3, var_s5->unk30 - var_s5->unk44->unk30);
            var_s5 = var_s5->unk4C;
        } while (var_s5 != NULL);
    }
    temp_a1_4 = arg0->unk8;
    sp108 = (s64) temp_a1_4;
    XUnmapWindow(temp_s2, temp_a1_4);
    arg0->unk10 = arg2;
    arg0->unk8 = temp_s0_3;
    sp110 = (s64) arg0->unk18;
    arg0->unk14 = (void *) sp118;
    arg0->unk18 = __iglooCreateContextInfo(arg0->unk4, arg0, *sp118, 0);
    _GLsetwmcolormaps(arg0, 0);
    _GLbindcontext((s64) arg0, (s64) arg1);
    if (arg0->unk20 & 1) {
        gl_wmfullscrn(1);
    }
    if (arg0->unk20 & 0x10) {
        XInstallColormap(temp_s2, arg0->unk14->unk4);
        XSetInputFocus(temp_s2, arg0->unk40, 1, 0);
    }
    _GLSelectInput(arg0);
    XSync(temp_s2, 0);
    __iglooMakeCurrent(temp_s2, arg0->unk8, arg0, arg0->unk18);
    if (sp110 != 0) {
        __iglooDestroyContextInfo(temp_s2, sp110);
    }
    XDestroyWindow(temp_s2, sp108);
    XFlush(temp_s2);
}

void gl_ws_displaymode(void *arg0) {
    s32 temp_a0;
    s32 temp_a3;
    s32 var_a5;
    void *temp_a4;

    temp_a4 = arg0->unkE0;
    if ((arg0->unkE4 == 0) && (temp_a4 != NULL)) {
        if (!(temp_a4->unk20 & 0x10000)) {
            temp_a0 = arg0->unk100 & 3;
            if (temp_a0 != 3) {
                if (temp_a0 != 1) {
                    if (temp_a0 == 2) {
                        var_a5 = 3;
                    } else {
                        var_a5 = sp0;
                        if (temp_a0 != 0) {

                        } else {
                            var_a5 = 1;
                        }
                    }
                } else {
                    var_a5 = 2;
                }
            } else {
                var_a5 = 4;
            }
            temp_a3 = var_a5 * 8;
            _GLunbindcontext(temp_a4, arg0, temp_a4->unkC + temp_a3 + 0x14, temp_a3);
        }
    }
}

void _GLunblock(void) {

}

void _GLfreezeWindows(void *arg0) {
    ? *var_s0;
    void *temp_a0;

    var_s0 = gl_valid_cxs;
    if (var_s0 != NULL) {
loop_6:
        temp_a0 = var_s0->unkE0;
        if ((temp_a0 != NULL) && (temp_a0->unk2C != 5)) {
            _GLunblock(var_s0, arg0);
        }
        var_s0 = var_s0->unk0;
        if (var_s0 != NULL) {
            goto loop_6;
        }
    }
}

void gl_clear_wstate(s64 arg0) {
    s64 sp0;

    sp0 = arg0;
    if (arg0 != 0) {
        gl_free_nurbs(sp0);
        gl_free_concave_data(sp0);
    }
}
