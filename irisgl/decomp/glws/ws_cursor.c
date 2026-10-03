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

s32 XCreateBitmapFromData(void *, s32, s64, s16);   /* extern */
s32 XCreateFontCursor(void *, ?);                   /* extern */
s32 XCreatePixmapCursor(void *, s64, s64, ? *);     /* extern */
? XDefineCursor(s32, s32, s32);                     /* extern */
? XFlush(s32);                                      /* extern */
? XFree(s32 *);                                     /* extern */
? XFreeCursor(s32, s32);                            /* extern */
? XFreePixmap(void *, s64);                         /* extern */
? XGetWindowProperty(s64, s32, s32, ?);             /* extern */
? XGrabPointer(s32, s32, ?, ?);                     /* extern */
? XGrabServer(s32);                                 /* extern */
? XRecolorCursor(void *, s32, ? *, ? *);            /* extern */
? XSGIMiscSetThirdCursorColor(s64, s32, ? *);       /* extern */
? XUngrabPointer(s32, ?);                           /* extern */
? XUngrabServer(s32);                               /* extern */
? bcopy(s64, void *, s32, void *);                  /* extern */
extern s32 _GLhaveActiveGrab;
extern ? sub_0f020000;
extern ? sub_0f030000;
extern ? sub_0f040000;

void _GLgrabCurrentCursor(void *arg0) {
    if (gl_find(&sub_0f040000 - 0x6D68, arg0->unk58) != NULL) {

    }
}

void _GLBitmapToPixmap(void *arg0, void *arg1) {
    s16 temp_a2;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a4;
    s32 var_a7;
    s32 var_t2;
    s32 var_v0_2;
    s64 temp_v0;
    u8 *var_a2_2;
    u8 *var_v0;
    u8 temp_at;
    u8 temp_v1_2;
    void *temp_a6;
    void *var_a1_2;
    void *var_a2;

    temp_a2 = arg1->unk6;
    temp_s4 = (s32) (arg1->unk4 + 7) >> 3;
    temp_v0 = gl_malloc(temp_a2 * temp_s4, &sub_0f020000 + 0x5B70, temp_a2);
    unksp20 = temp_v0;
    var_a7 = 0;
    if (arg1->unk6 > 0) {
        temp_a6 = &sub_0f030000 - 0x52A0;
loop_8:
        temp_v1 = arg1->unkC * arg1->unkE * var_a7;
        temp_lo = ((arg1->unk6 - var_a7) - 1) * temp_s4;
        var_a7 += 1;
        var_a1 = 0;
        var_v0 = arg1->unk0 + temp_v1;
        var_a2 = temp_lo + temp_v0;
        if (temp_s4 > 0) {
            var_a4 = temp_s4 & 3;
            var_t2 = 0;
            if (var_a4 != 0) {
                do {
                    var_a1 += 1;
                    temp_at = *var_v0;
                    var_a2 += 1;
                    var_v0 += 1;
                    var_a4 -= 1;
                    var_a2->unk-1 = (u8) *(temp_at + temp_a6);
                } while (var_a4 != 0);
                var_t2 = var_a1;
            }
            if ((temp_s4 >> 2) != 0) {
                var_a1_2 = var_a2;
                var_v0_2 = var_t2;
                var_a2_2 = var_v0;
                do {
                    var_a1_2->unk0 = (u8) *(var_a2_2->unk0 + temp_a6);
                    var_a1_2->unk1 = (u8) *(var_a2_2->unk1 + temp_a6);
                    var_a1_2->unk2 = (u8) *(var_a2_2->unk2 + temp_a6);
                    temp_v1_2 = var_a2_2->unk3;
                    var_a1_2 += 4;
                    var_a2_2 += 4;
                    var_v0_2 += 4;
                    var_a1_2->unk-1 = (u8) *(temp_v1_2 + temp_a6);
                } while (temp_s4 != var_v0_2);
            }
        }
        if (var_a7 < arg1->unk6) {
            goto loop_8;
        }
    }
    temp_s0 = XCreateBitmapFromData(arg0, (arg0->unk8C + (arg0->unk84 * 0x50))->unk8, temp_v0, arg1->unk4);
    gl_free(unksp20, &sub_0f020000 + 0x5B88);
}

void _GLsetwincursor(void *arg0, s32 arg1) {
    s32 sp4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;

    if (arg0->unk54 != arg1) {
        arg0->unk54 = arg1;
        XDefineCursor(arg0->unk4, arg0->unk8, arg1);
        temp_a1 = arg0->unk8C;
        if (temp_a1 != 0) {
            XDefineCursor(arg0->unk4, temp_a1, arg1);
        }
        temp_a1_2 = arg0->unk90;
        if (temp_a1_2 != 0) {
            XDefineCursor(arg0->unk4, temp_a1_2, arg1);
        }
        temp_a1_3 = arg0->unk88;
        if (temp_a1_3 != 0) {
            XDefineCursor(arg0->unk4, temp_a1_3, arg1);
        }
        if (_GLhaveActiveGrab != 0) {
            XGrabServer(arg0->unk4);
            XUngrabPointer(arg0->unk4, 0);
            sp4 = 0;
            XGrabPointer(arg0->unk4, arg0->unk40, 1, 0x4C);
            XUngrabServer(arg0->unk4);
        }
        XFlush(arg0->unk4);
    }
}

void _GLmakedefaultcursor(void *arg0) {
    s64 sp50;
    s16 sp36;
    s16 sp34;
    s16 sp2E;
    s16 sp2C;
    void *sp28;
    ? spC;
    s32 temp_a2;
    void *temp_v0;

    arg0->unk1C = XCreateFontCursor(arg0->unk4, 0x44);
    temp_v0 = gl_malloc(0x18, &sub_0f020000 + 0x5BA0);
    temp_a2 = arg0->unk1C;
    temp_v0->unk4 = 0;
    temp_v0->unk10 = 0;
    temp_v0->unk14 = 0;
    temp_v0->unkC = temp_a2;
    gl_insert(&sub_0f040000 - 0x6D88 + 0x20, temp_v0, temp_a2);
    _GLgetCurrentCursorColors(sp);
    XRecolorCursor(arg0->unk4, arg0->unk1C, sp, &spC);
    sp36 = 2;
    sp34 = 1;
    sp2C = 0x10;
    sp2E = 0x10;
    sp28 = &sub_0f040000 - 0x6D88;
    _GLgrabCurrentCursor(arg0->unk4, &sp28);
    sp50 = M2C_ERROR(/* Read from unset register $v0 */);
    arg0->unk20 = XCreatePixmapCursor(arg0->unk4, M2C_ERROR(/* Read from unset register $v0 */), M2C_ERROR(/* Read from unset register $v0 */), sp);
    XFreePixmap(arg0->unk4, sp50);
}

void gl_g_curstype(s32 arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF085F0;
    if ((arg0 != 0) && (arg0 != 1) && (arg0 != 2) && (arg0 != 3) && (arg0 != 4)) {
        temp_at->unk-4D2C = 0;
        return;
    }
    temp_at->unk-4D2C = arg0;
}

void gl_g_setcursor(s16 arg0) {
    s64 spB0;
    s64 spA8;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    ? sp58;
    ? sp54;
    ? sp50;
    s32 sp4C;
    s32 *sp48;
    ? sp2C;
    ? sp20;
    s32 **sp1C;
    ? *sp14;
    ? *spC;
    ? *sp4;
    s32 temp_v0_3;
    s64 temp_s2;
    s64 var_ra;
    u32 temp_s1;
    void **temp_a1;
    void **temp_v0_2;
    void **var_s2;
    void *temp_a1_2;
    void *temp_v0;
    void *var_a0;

    var_ra = saved_reg_ra;
    temp_s1 = gl_wstatep->active;
    var_s2 = NULL;
    if (temp_s1->unk2C != 5) {
        if (arg0 == 0) {
            var_s2 = temp_s1->unk5C;
        } else {
            temp_v0 = gl_find(&sub_0f040000 - 0x6D68, arg0);
            var_a0 = temp_v0;
            var_ra = spB0;
            if (temp_v0 != NULL) {
                spA8 = (s64) temp_v0;
                if (temp_v0->unkC == 0) {
                    sp68 = (s64) var_a0;
                    sp80 = (s64) gl_sstatep->unk1C->unk4;
                    _GLgetCurrentCursorColors(&sp20);
                    temp_v0_2 = spA8->unk10;
                    var_a0 = (void *) sp68;
                    var_ra = spB0;
                    if (temp_v0_2 != NULL) {
                        sp70 = (s64) temp_v0_2;
                        _GLgrabCurrentCursor((void *) sp80, temp_v0_2);
                        temp_s2 = M2C_ERROR(/* Read from unset register $v0 */);
                        temp_a1 = sp68->unk14;
                        sp78 = M2C_ERROR(/* Read from unset register $v0 */);
                        if (temp_a1 != NULL) {
                            sp60 = (s64) (&sp20 + 0xC);
                            _GLgrabCurrentCursor((void *) sp80, temp_a1);
                            temp_v0_3 = XCreatePixmapCursor((void *) sp80, sp78, M2C_ERROR(/* Read from unset register $v0 */), &sp20 + 0x18);
                            sp68->unkC = temp_v0_3;
                            XSGIMiscSetThirdCursorColor(sp80, temp_v0_3, &sp20);
                            XFreePixmap((void *) sp80, M2C_ERROR(/* Read from unset register $v0 */));
                        } else {
                            sp68->unkC = XCreatePixmapCursor((void *) sp80, temp_s2, temp_s2, &sp20);
                        }
                        XFreePixmap((void *) sp80, sp78);
                        var_a0 = (void *) sp68;
                        var_ra = spB0;
                    } else if (spA8->unk8 == 4) {
                        sp48 = NULL;
                        temp_a1_2 = gl_sstatep->unk1C;
                        sp1C = &sp48;
                        sp14 = &sp58;
                        spC = &sp54;
                        sp4 = &sp50;
                        XGetWindowProperty(sp80, temp_a1_2->unk70->unk40, temp_a1_2->unk0->unk18->unk8, 0);
                        var_a0 = (void *) sp68;
                        var_ra = spB0;
                        if (sp4C == 8) {
                            spA8->unkC = (s32) *sp48;
                            XRecolorCursor((void *) sp80, *sp48, &sp20, &sp2C);
                            XFree(sp48);
                            var_a0 = (void *) sp68;
                            var_ra = spB0;
                        }
                    }
                }
                var_s2 = var_a0->unkC;
            }
        }
        if (var_s2 != NULL) {
            temp_s1->unk58 = arg0;
            if ((*temp_s1->unkC)->unk20 != temp_s1->unk54) {
                spB0 = var_ra;
                _GLgrabCurrentCursor((void *) temp_s1, var_s2);
            }
        }
    }
}

void gl_g_curorigin(s16 arg0, s16 arg1, s16 arg2) {
    s16 temp_v0_2;
    s16 var_s0;
    s16 var_s1;
    s32 var_a3;
    s32 var_a4;
    s32 var_v1;
    void *temp_v0;

    var_s1 = arg1;
    var_s0 = arg2;
    if (arg0 == 0) {
        gl_ErrorHandler(0x37, 2, saved_reg_gp->unk-3810);
    }
    temp_v0 = gl_find(&sub_0f040000 - 0x6D68, arg0);
    if (temp_v0 != NULL) {
        temp_v0_2 = temp_v0->unk8;
        switch (temp_v0_2) {                        /* irregular */
        default:
            var_a3 = var_s1 < 0x20;
            if (temp_v0_2 == 3) {
block_18:
                var_a4 = var_s0 < 0x20;
                if (var_a3 == 0) {
                    var_s1 = 0x1F;
                    var_a4 = var_s0 < 0x20;
                }
                if (var_a4 == 0) {
                    var_s0 = 0x1F;
                }
            }
block_7:
            if (var_s1 < 0) {
                var_s1 = 0;
            }
            if (var_s0 < 0) {
                var_s0 = 0;
            }
            temp_v0->unk10->unk8 = var_s1;
            temp_v0->unk10->unkA = var_s0;
            break;
        case 0:
        case 1:
            var_v1 = var_s0 < 0x10;
            if (var_s1 >= 0x10) {
                var_s1 = 0xF;
                var_v1 = var_s0 < 0x10;
            }
            if (var_v1 == 0) {
                var_s0 = 0xF;
            }
            goto block_7;
        case 4:
            return;
        case 2:
            var_a3 = var_s1 < 0x20;
            goto block_18;
        }
    } else {
        gl_ErrorHandler(0x39, 2, saved_reg_gp->unk-3810);
    }
}

void gl_g_defcursor(s32 arg0, s64 arg1) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s16 var_s2;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 var_s3;
    void *temp_a0;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_4;
    void *temp_v0_5;

    var_s2 = 0x10;
    sp10 = 1;
    var_s3 = 0;
    sp18 = arg1;
    if (arg0 > 0) {
        temp_a0 = &sub_0f040000 - 0x6D68;
        sp8 = (s64) temp_a0;
        temp_v0 = gl_remove(temp_a0, arg0);
        if (temp_v0 != NULL) {
            temp_a1 = temp_v0->unkC;
            if ((temp_a1 != 0) && (temp_v0->unk8 != 4)) {
                XFreeCursor(gl_sstatep->unk1C->unk4, temp_a1);
            }
            temp_v0_2 = temp_v0->unk10;
            if (temp_v0_2 != NULL) {
                gl_free((s64) *temp_v0_2, &sub_0f020000 + 0x5BB8);
                gl_free((s64) temp_v0->unk10, &sub_0f020000 + 0x5BB8);
            }
            temp_v0_3 = temp_v0->unk14;
            if (temp_v0_3 != NULL) {
                gl_free((s64) *temp_v0_3, &sub_0f020000 + 0x5BB8);
                gl_free((s64) temp_v0->unk14, &sub_0f020000 + 0x5BB8);
            }
            gl_free((s64) temp_v0, &sub_0f020000 + 0x5BB8);
        }
        temp_a2 = saved_reg_gp->unk-4D2C;
        temp_s0 = gl_malloc(0x18, &sub_0f020000 + 0x5BB8);
        if (temp_a2 != 1) {
            if (temp_a2 != 0) {
                if (temp_a2 == 3) {
                    var_s3 = 1;
                    goto block_27;
                }
                if (temp_a2 != 2) {
                    if (temp_a2 == 4) {
                        sp10 = 0;
                    }
                } else {
block_27:
                    var_s2 = 0x20;
                    sp0 = 0x40;
                }
            } else {
                goto block_25;
            }
        } else {
            var_s3 = 1;
block_25:
            sp0 = 0x10;
        }
        temp_s0->unkC = 0;
        temp_s0->unk8 = (s16) temp_a2;
        temp_s0->unk4 = arg0;
        if (sp10 != 0) {
            temp_v0_4 = gl_malloc(0x10, &sub_0f020000 + 0x5BB8, (s16) temp_a2, sp10);
            temp_s0->unk10 = temp_v0_4;
            temp_v0_4->unk6 = var_s2;
            temp_s0->unk10->unk4 = var_s2;
            temp_s0->unk10->unkA = 0;
            temp_s1 = sp0 * 2;
            temp_s0->unk10->unk8 = 0;
            temp_s0->unk10->unkC = (s16) ((s32) (((u32) (var_s2 >> 3) >> 0x1C) + var_s2) >> 4);
            temp_a3 = temp_s0->unk10;
            temp_a3->unkE = 2;
            temp_a3_2 = temp_s0->unk10;
            temp_a3_2->unk0 = gl_malloc(temp_s1, &sub_0f020000 + 0x5BB8, 2, (s64) temp_a3);
            bcopy(sp18, temp_s0->unk10->unk0, temp_s1, temp_a3_2);
        } else {
            temp_s0->unk10 = NULL;
        }
        if (var_s3 != 0) {
            temp_v0_5 = gl_malloc(0x10, &sub_0f020000 + 0x5BB8);
            temp_s0->unk14 = temp_v0_5;
            temp_v0_5->unk6 = var_s2;
            temp_s1_2 = sp0 * 2;
            temp_a2_2 = temp_s0->unk14;
            temp_a2_2->unk4 = var_s2;
            temp_s0->unk14->unk0 = gl_malloc(temp_s1_2, &sub_0f020000 + 0x5BB8, (s16) temp_a2_2);
            temp_s0->unk14->unkC = (s16) ((s32) (((u32) (var_s2 >> 3) >> 0x1C) + var_s2) >> 4);
            temp_a3_3 = temp_s0->unk14;
            temp_a3_3->unkE = 2;
            bcopy(temp_s1_2 + sp18, temp_s0->unk14->unk0, temp_s1_2, temp_a3_3);
        } else {
            temp_s0->unk14 = NULL;
        }
        gl_insert((void *) sp8, temp_s0);
    }
}

void gl_g_curson(void) {
    s64 sp18;
    s16 temp_a1;
    s64 var_ra;
    u32 temp_s1;
    void **var_s0;
    void *temp_v0;

    var_ra = saved_reg_ra;
    temp_s1 = gl_wstatep->active;
    var_s0 = NULL;
    if (temp_s1->unk2C != 5) {
        temp_a1 = temp_s1->unk58;
        if (temp_a1 == 0) {
            var_s0 = temp_s1->unk5C;
        } else {
            temp_v0 = gl_find(&sub_0f040000 - 0x6D68, temp_a1);
            var_ra = sp18;
            if (temp_v0 != NULL) {
                var_s0 = temp_v0->unkC;
            }
        }
        if (var_s0 != NULL) {
            sp18 = var_ra;
            _GLgrabCurrentCursor((void *) temp_s1, var_s0);
        }
    }
}

void gl_g_cursoff(void) {
    u32 temp_a0;

    temp_a0 = gl_wstatep->active;
    if (temp_a0->unk2C != 5) {
        _GLgrabCurrentCursor((void *) temp_a0, (*temp_a0->unkC)->unk20);
    }
}

s32 gl_g_getcursor(s16 *arg0, s32 *arg3) {
    s32 temp_v0_2;
    u8 temp_v0;
    void **temp_a5;
    void *temp_a4;
    void *temp_v1;

    temp_a5 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF07D28)->unk-5B00;
    temp_a4 = (*temp_a5)->unkE0;
    temp_v0 = temp_a4->unk2C;
    if (temp_v0 != 5) {
        *arg0 = temp_a4->unk58;
        temp_v1 = (*temp_a5)->unkE0;
        temp_v0_2 = (*temp_v1->unkC)->unk20 != temp_v1->unk54;
        *arg3 = temp_v0_2;
        return temp_v0_2;
    }
    return (s32) temp_v0;
}

void _GLrecolorAllCursors(void) {
    s64 sp28;
    ? *temp_s7;
    s16 temp_a0;
    s32 temp_a1;
    void *temp_s6;
    void *temp_s8;
    void *var_s0;
    void *var_s5;

    temp_s6 = gl_sstatep->unk1C->unk4;
    _GLgetCurrentCursorColors(sp);
    temp_s7 = sp + 0xC;
    sp28 = (s64) (sp + 0x18);
    var_s5 = &sub_0f040000 - 0x6D88;
    temp_s8 = var_s5 + 0x200;
loop_4:
    var_s0 = var_s5->unk20;
    var_s5 += 4;
    if (var_s0 != NULL) {
loop_9:
        temp_a1 = var_s0->unkC;
        if (temp_a1 != 0) {
            temp_a0 = var_s0->unk8;
            switch (temp_a0) {                      /* irregular */
            case 0:
            case 2:
            case 4:
                XRecolorCursor(temp_s6, temp_a1, sp, temp_s7);
                break;
            case 3:
                /* fallthrough */
            case 1:
                XRecolorCursor(temp_s6, temp_a1, (? *) sp28, temp_s7);
                XSGIMiscSetThirdCursorColor((s64) temp_s6, var_s0->unkC, sp);
                break;
            }
        }
        var_s0 = var_s0->unk0;
        if (var_s0 != NULL) {
            goto loop_9;
        }
    }
    if (var_s5 != temp_s8) {
        goto loop_4;
    }
}
