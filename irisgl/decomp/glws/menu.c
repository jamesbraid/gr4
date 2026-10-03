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

? .L0f0e0e70(s32);                                  /* extern */
? .L0f0e0f98(void *, s32, s32);                     /* extern */
s32 .L0f0e115c(s32, s32);                           /* extern */
? .L0f0e1ca4(s32);                                  /* extern */
? .L0f0e1e3c(void **);                              /* extern */
? .L0f0e22d0(s32, s32);                             /* extern */
? XAllocColor(void *, s32, s32 *);                  /* extern */
s32 XCheckMaskEvent(void **, ?, u32 *);             /* extern */
s32 XCheckWindowEvent(void **, void **, ?, u32 *);  /* extern */
? XClearArea(s32, s32, s16, s16);                   /* extern */
s32 XCreateColormap(void *, s32, s32, ?);           /* extern */
s32 XCreateFontCursor(void *, ?);                   /* extern */
s32 XCreateGC(void *, s32, ?, ? *);                 /* extern */
s32 XCreatePixmapFromBitmapData(void *, s32, void *, ?); /* extern */
s32 XCreateWindow(void **, s32, ?, ?, s32, s32 *);  /* extern */
? XDrawLine(void **, s32, s64, s64);                /* extern */
? XDrawLines(s32, s64, s64, void *);                /* extern */
? XDrawString(void **, s32, s32, s32);              /* extern */
s32 XEventsQueued(void *, ?);                       /* extern */
? XFillPolygon(void *, s16, s16);                   /* extern */
? XFillRectangle(void **, s64, s64, s64);           /* extern */
? XFlush(void **);                                  /* extern */
? XFreePixmap(void *, s32);                         /* extern */
? XInstallColormap(void **, s32);                   /* extern */
s32 XLoadQueryFont(s32, ? *);                       /* extern */
? XMapWindow(s32, s32);                             /* extern */
? XMoveWindow(void *, s32, s32, s32);               /* extern */
? XNextEvent(void *, ?);                            /* extern */
? XParseColor(void *, s32, s32, s32 *);             /* extern */
? XQueryPointer(void **, s32, ? *, ? *);            /* extern */
? XRaiseWindow(s32, s32);                           /* extern */
? XResizeWindow(s32, s32, s16, s16);                /* extern */
? XSetFillStyle(void **, s32, ?);                   /* extern */
? XSetFont(void **, s32, s32);                      /* extern */
? XSetTSOrigin(void **, s32, s32, s32);             /* extern */
? XTextExtents(s32, void *);                        /* extern */
? XTranslateCoordinates(void *, s32, s32, s32);     /* extern */
? XUnmapWindow(s32, s32);                           /* extern */
s32 atoi(s32);                                      /* extern */
? bcopy(?, ? *, s32);                               /* extern */
? fprintf(void *, void *);                          /* extern */
s64 newpup();                                       /* extern */
s32 select(s32, s32 (*)[], ?, ?);                   /* extern */
s32 strcmp(? *, s32, s32);                          /* extern */
s64 *strlen(? *);                                   /* extern */
u32 times(? *, s32);                                /* extern */
extern gl_wstate *_GLmenuIsUp;
extern ? __iob;
extern void *allFontInfo;
extern s32 gl_dgl_table_is_remote;
extern ? m_class;
extern ? m_inst;
extern ? sub_0f020000;
extern ? sub_0f030000;

void create_aFuncChain(void) {
    bzero(gl_malloc(8, saved_reg_gp - 0x4970), 8U);
}

void extend_aFuncChain(s64 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    void *temp_v0;

    sp8 = arg0;
    sp0 = arg1;
    if (arg1 != 0) {
        temp_v0 = gl_malloc(8, saved_reg_gp - 0x4970);
        temp_v0->unk4 = 0;
        temp_v0->unk0 = (s32) sp0;
        if (sp8->unk0 == NULL) {
            sp8->unk0 = temp_v0;
            sp8->unk4 = temp_v0;
            return;
        }
        sp8->unk4->unk4 = temp_v0;
        sp8->unk4 = temp_v0;
    }
}

void call_aFuncChain(void **arg0, s32 arg1, ? *arg2) {
    ? *sp34;
    s64 sp10;
    ? *var_a0;
    ? *var_v0;
    s64 var_ra;
    void *var_s0;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_ra = saved_reg_ra;
    sp34 = arg2;
    var_s0 = *arg0;
    var_v0 = arg2;
    if (var_s0 == NULL) {
        goto block_6;
    }
    if (arg1 == 0) {
        goto block_5;
    }
block_2:
    sp10 = var_ra;
    var_a0 = &sp34;
block_3:
    var_v0 = var_s0->unk0(var_a0);
    sp34 = var_v0;
    var_s0 = var_s0->unk4;
    var_ra = sp10;
    if (var_s0 == NULL) {
        goto block_6;
    }
    if (arg1 != 0) {
        goto block_2;
    }
block_5:
    sp10 = var_ra;
    var_a0 = var_v0;
    goto block_3;
block_6:
    return;
}

void destroy_aFuncChain(? *arg0) {
    ? *temp_s7;
    ? *var_a3;

    var_a3 = *arg0;
    if (var_a3 != NULL) {
        do {
            temp_s7 = var_a3->unk4;
            gl_free(var_a3, saved_reg_gp - 0x4970);
            var_a3 = temp_s7;
        } while (temp_s7 != NULL);
    }
    gl_free(arg0, saved_reg_gp - 0x4970);
}

void create_aFont(s32 arg0, ? *arg1) {
    ? *var_a0;
    s32 temp_a2;
    s32 temp_v0;
    s32 var_s3;
    void *temp_v0_2;
    void *var_s0;

    var_s0 = allFontInfo;
    var_s3 = 0;
    if (var_s0 != NULL) {
loop_3:
        if (var_s0->unk8 == arg0) {
            if (arg1 == NULL) {
                if (var_s0->unk4 != 0) {
                    if (arg1 != NULL) {
                        goto block_7;
                    }
                    goto block_2;
                }
                return;
            }
block_7:
            temp_a2 = var_s0->unk4;
            if ((temp_a2 != 0) && (strcmp(arg1, var_s0->unk4, temp_a2) == 0)) {
                return;
            }
            goto block_2;
        }
block_2:
        var_s0 = var_s0->unkC;
        if (var_s0 != NULL) {
            goto loop_3;
        }
        goto block_10;
    }
block_10:
    if (arg1 != NULL) {
        var_s3 = XLoadQueryFont(arg0, arg1);
    }
    if (var_s3 == 0) {
        temp_v0 = XLoadQueryFont(arg0, saved_reg_gp->unk-399C);
        var_s3 = temp_v0;
        if (temp_v0 == 0) {
            var_s3 = XLoadQueryFont(arg0, saved_reg_gp - 0x4968);
        }
    }
    temp_v0_2 = gl_malloc(0x10, saved_reg_gp - 0x4970);
    temp_v0_2->unk8 = arg0;
    temp_v0_2->unkC = (void *) allFontInfo;
    allFontInfo = temp_v0_2;
    temp_v0_2->unk0 = var_s3;
    if (arg1 == NULL) {
        var_a0 = arg1;
    } else {
        var_a0 = _GLstrdup(arg1);
    }
    temp_v0_2->unk4 = var_a0;
}

void strWidth_aFont(s32 *arg0) {
    s16 sp10;
    ? sp8;
    ? sp4;

    XTextExtents(*arg0, sp);
}

/*
Decompilation failure in function doAddPup:

Unable to determine jump table for jr instruction at menu.s line 486.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void gl_g_addtopup(s64 arg0, ? *arg1, s64 arg2, s64 arg3) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    ? *sp2C;
    s32 sp24;

    sp58 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $a6 */);
    sp48 = M2C_ERROR(/* Read from unset register $a5 */);
    sp40 = M2C_ERROR(/* Read from unset register $a4 */);
    sp38 = arg3;
    sp30 = arg2;
    sp2C = arg1;
    unksp8 = arg0;
    sp24 = (s32) arg0;
    gl_g_setpup();
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gl_mem_ntoh_wfmoutline_array(unksp8, sp2C, &sp30);
    }
}

void gl_g_addtop(s64 arg0, ? arg1, s32 arg2, s64 arg3) {
    ? *temp_v0;

    temp_v0 = gl_malloc(arg2 + 1, saved_reg_gp - 0x4970);
    bcopy(arg1, temp_v0, arg2);
    saved_reg_gp->unk-511C = 1;
    *(arg2 + temp_v0) = 0;
    gl_g_addtopup(arg0, temp_v0, arg3);
    saved_reg_gp->unk-511C = 0;
    gl_free(temp_v0, saved_reg_gp - 0x4970);
}

void gl_g_defpup(? *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    ? *sp24;

    sp58 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $a6 */);
    sp48 = M2C_ERROR(/* Read from unset register $a5 */);
    sp40 = M2C_ERROR(/* Read from unset register $a4 */);
    sp38 = arg3;
    sp30 = arg2;
    sp28 = arg1;
    sp24 = arg0;
    gl_g_setpup();
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    gl_mem_ntoh_wfmoutline_array(newpup(), sp24, &sp28);
}

void gl_g_idefpup(? *arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;
    s64 temp_v0;

    sp20 = arg1;
    temp_v0 = newpup();
    sp18 = temp_v0;
    gl_mem_ntoh_wfmoutline_array(temp_v0, arg0, (s64 *) sp20);
}

void __GLidefpup(void) {
    if (gl_dgl_table_is_remote != 0) {
        gl_d_idefpup();
        return;
    }
    gl_g_idefpup();
}

void gl_g_dopup(void **arg0) {
    s64 sp20;
    ? sp1C;
    gl_wstate *sp18;
    gl_wstate **sp14;
    ? sp10;
    void **temp_a0;
    void *temp_t1;

    gl_g_setpup();
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    temp_t1 = *arg0;
    temp_a0 = temp_t1->unk4;
    XQueryPointer(temp_a0, (temp_a0->unk8C + (temp_t1->unk8 * 0x50))->unk8, &sp10, &sp10);
    gl_g_setpup(arg0, 3, sp14, sp18);
    sp20 = M2C_ERROR(/* Read from unset register $v0 */);
    XFlush((*arg0)->unk4);
}

void gl_g_freepup(void **arg0) {
    gl_g_setpup();
    if ((M2C_ERROR(/* Read from unset register $v0 */) != 0) && (arg0 != NULL)) {
        gl_g_setpup(arg0);
    }
}

void gl_g_newpup(void) {
    s32 var_a1;
    u32 temp_a0;
    void **var_a0;
    void *temp_a0_2;

    gl_g_setpup();
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (gl_wstatep != NULL) {
            temp_a0 = gl_wstatep->active;
            var_a0 = temp_a0->unk4;
            var_a1 = temp_a0->unkC->unk8;
        } else {
            temp_a0_2 = gl_sstatep->unk1C;
            var_a1 = temp_a0_2->unk8;
            var_a0 = temp_a0_2->unk4;
        }
        gl_g_setpup(var_a0, var_a1, NULL, gl_wstatep);
    }
}

void gl_g_setpup(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;

    sp10 = arg1;
    sp18 = arg0;
    gl_g_setpup();
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gl_g_setpup((void **) sp18, (s32) sp10);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            gl_g_setpup((void **) subroutine_arg0, (subroutine_arg2 & 1) == 0);
            gl_g_setpup((void **) subroutine_arg0, subroutine_arg2 & 6);
        }
    }
}

void create_aPopupInfo(void *arg0, s32 arg1, s32 arg3) {
    s32 sp60;
    s32 sp50;
    s32 sp3C;
    s32 sp38;
    ? sp30;
    s16 sp28;
    s16 sp26;
    s16 sp24;
    s32 sp20;
    s16 sp18;
    s16 sp16;
    s16 sp14;
    s32 sp10;
    s16 sp8;
    s16 sp6;
    s16 sp4;
    s32 temp_a2;
    s32 temp_ra;
    s32 temp_s3;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 var_a3;
    void *temp_s2;
    void *temp_v0;
    void *temp_v1;
    void *var_s0;

    var_a3 = arg3;
    var_s0 = saved_reg_gp->unk-5100;
    temp_s3 = (arg0->unk8C + (arg1 * 0x50))->unk8;
    if (var_s0 != NULL) {
loop_3:
        if (var_s0->unk4 == arg0) {
            var_a3 = var_s0->unk8;
            if (var_a3 == arg1) {
                return;
            }
        }
        var_s0 = var_s0->unk0;
        if (var_s0 != NULL) {
            goto loop_3;
        }
        goto block_7;
    }
block_7:
    temp_v0 = gl_malloc(0x9C, saved_reg_gp - 0x4970, var_a3);
    temp_v0->unk8 = arg1;
    temp_v0->unk4 = arg0;
    temp_a2 = **gl_sstatep->unk1C->unk18;
    temp_v0->unk38 = temp_a2;
    temp_v0->unk3C = (s32) (*gl_sstatep->unk1C->unk18)->unkC;
    temp_v0->unk34 = XCreateColormap(arg0, temp_s3, temp_a2, 0);
    temp_v0_2 = XCreateFontCursor(arg0, 2);
    temp_v0->unkC = 0;
    temp_v0->unk98 = temp_v0_2;
    temp_v0_3 = _GLgetresource(&m_class, &m_inst, saved_reg_gp - 0x4960, &sub_0f020000 + 0x3738);
    if (temp_v0_3 == 0) {
        saved_reg_gp->unk-5110 = 0x3E8;
    } else {
        saved_reg_gp->unk-5110 = atoi(temp_v0_3);
        gl_free((? *) temp_v0_3, saved_reg_gp - 0x4970);
    }
    temp_v0_4 = _GLgetresource(&m_class, &m_inst, saved_reg_gp - 0x4960, &sub_0f020000 + 0x3748);
    if (temp_v0_4 == 0) {
        saved_reg_gp->unk-5114 = 0xA0;
    } else {
        saved_reg_gp->unk-5114 = atoi(temp_v0_4);
        gl_free((? *) temp_v0_4, saved_reg_gp - 0x4970);
    }
    temp_v0_5 = _GLgetresource(&m_class, &m_inst, &sub_0f020000 + 0x3758, &sub_0f020000 + 0x3768);
    if (temp_v0_5 != 0) {
        if (gl_strcasecmp(temp_v0_5, saved_reg_gp - 0x4958) == 0) {
            temp_v0->unkC = 1;
        }
        gl_free((? *) temp_v0_5, saved_reg_gp - 0x4970);
    }
    temp_v0_6 = _GLgetresource(&m_class, &m_inst, &sub_0f020000 + 0x3778, &sub_0f020000 + 0x3788);
    if (temp_v0_6 != 0) {
        XParseColor(arg0, temp_v0->unk34, temp_v0_6, sp);
        gl_free((? *) temp_v0_6, saved_reg_gp - 0x4970);
    } else {
        sp4 = 0xAA00;
        sp6 = 0xAA00;
        sp8 = 0xAA00;
    }
    XAllocColor(arg0, temp_v0->unk34, sp);
    temp_v0_7 = _GLgetresource(&m_class, &m_inst, &sub_0f020000 + 0x3798, &sub_0f020000 + 0x37A8);
    if (temp_v0_7 != 0) {
        XParseColor(arg0, temp_v0->unk34, temp_v0_7, &sp10);
        gl_free((? *) temp_v0_7, saved_reg_gp - 0x4970);
    } else {
        sp14 = 0;
        sp16 = 0;
        sp18 = 0;
    }
    XAllocColor(arg0, temp_v0->unk34, &sp10);
    temp_v0_8 = _GLgetresource(&m_class, &m_inst, &sub_0f020000 + 0x3778, &sub_0f020000 + 0x37B8);
    if (temp_v0_8 != 0) {
        XParseColor(arg0, temp_v0->unk34, temp_v0_8, &sp20);
        gl_free((? *) temp_v0_8, saved_reg_gp - 0x4970);
    } else {
        sp24 = 0xFF00;
        sp26 = 0xFF00;
        sp28 = 0xFF00;
    }
    XAllocColor(arg0, temp_v0->unk34, &sp20);
    temp_s2 = &sub_0f030000 - 0x7090;
    temp_v0->unk40 = XCreatePixmapFromBitmapData(arg0, temp_s3, temp_s2, 0x10);
    sp38 = sp10;
    sp60 = XCreatePixmapFromBitmapData(arg0, temp_s3, temp_s2 + 0x20, 0x10);
    temp_v0->unk10 = XCreateGC(arg0, temp_v0->unk40, 0x804, &sp30);
    XFreePixmap(arg0, sp60);
    sp50 = 3;
    sp60 = XCreatePixmapFromBitmapData(arg0, temp_s3, temp_s2, 0x10);
    sp38 = sp0;
    temp_v0->unk1C = XCreateGC(arg0, temp_v0->unk40, 4, &sp30);
    sp3C = sp10;
    temp_v0->unk14 = XCreateGC(arg0, temp_v0->unk40, 0x90C, &sp30);
    sp38 = sp20;
    temp_v0->unk18 = XCreateGC(arg0, temp_v0->unk40, 0x90C, &sp30);
    temp_v0->unk24 = XCreateGC(arg0, temp_v0->unk40, 4, &sp30);
    sp3C = sp0;
    temp_v0->unk20 = XCreateGC(arg0, temp_v0->unk40, 0x90C, &sp30);
    temp_v0->unk28 = sp20;
    temp_v0->unk2C = sp10;
    temp_v0->unk30 = sp0;
    XFreePixmap(arg0, sp60);
    temp_ra = temp_v0->unk18;
    temp_t1 = temp_v0->unk14;
    temp_t2 = temp_v0->unk24;
    temp_v0->unk94 = temp_t1;
    temp_v0->unk90 = temp_t2;
    temp_v0->unk8C = temp_t1;
    temp_v0->unk88 = temp_t1;
    temp_v0->unk84 = temp_t2;
    temp_v0->unk80 = (s32) temp_v0->unk1C;
    temp_v0->unk7C = temp_t2;
    temp_v0->unk78 = (s32) temp_v0->unk10;
    temp_v0->unk74 = temp_t2;
    temp_v0->unk70 = temp_t2;
    temp_v0->unk6C = temp_t1;
    temp_v0->unk68 = temp_t2;
    temp_v0->unk54 = temp_ra;
    temp_v0->unk50 = (s32) temp_v0->unk20;
    temp_v0->unk4C = temp_t1;
    temp_v0->unk48 = temp_t2;
    temp_v0->unk64 = temp_ra;
    temp_v0->unk60 = temp_t2;
    temp_v0->unk5C = temp_t1;
    temp_v0->unk58 = temp_t2;
    temp_v0_9 = XCreatePixmapFromBitmapData(arg0, temp_s3, temp_s2, 0x10);
    temp_v1 = saved_reg_gp->unk-5100;
    saved_reg_gp->unk-5100 = temp_v0;
    temp_v0->unk44 = temp_v0_9;
    temp_v0->unk0 = temp_v1;
}

void create_aMenu(void **arg0, s32 arg1, s8 arg2) {
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp48;
    s32 sp2C;
    s32 sp24;
    s32 sp20;
    s32 temp_s8;
    s32 var_t2;
    void *temp_v0;

    temp_v0 = gl_malloc(0x3C, saved_reg_gp - 0x4970);
    bzero(temp_v0, 0x3CU);
    gl_g_setpup(arg0, arg1);
    temp_v0->unkD = arg2;
    temp_v0->unk0 = (void *) M2C_ERROR(/* Read from unset register $v0 */);
    if (arg2 & 0xFF) {
        gl_mem_ntoh_wfmoutline_array((s64) arg0, _GLgetresource(&sub_0f020000 + 0x37C8, &sub_0f020000 + 0x37D8, saved_reg_gp - 0x4950, saved_reg_gp - 0x4948));
        temp_v0->unk34 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        var_t2 = 2;
        sp24 = temp_v0->unk0->unk30;
    } else {
        gl_mem_ntoh_wfmoutline_array((s64) arg0, _GLgetresource(&m_class, &m_inst, saved_reg_gp - 0x4950, saved_reg_gp - 0x4948));
        temp_v0->unk34 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        var_t2 = 1;
        sp20 = temp_v0->unk0->unk44;
    }
    sp50 = 1;
    sp2C = temp_v0->unk0->unk2C;
    sp58 = temp_v0->unk0->unk98;
    sp48 = 0xA07C;
    sp54 = temp_v0->unk0->unk34;
    temp_s8 = arg1 * 0x50;
    temp_v0->unk18 = XCreateWindow(arg0, (arg0->unk8C + temp_s8)->unk8, 0, 0, var_t2 | 0x6A08, &sp20);
    sp48 = 0xC;
    sp20 = temp_v0->unk0->unk40;
    temp_v0->unk1C = XCreateWindow(arg0, (arg0->unk8C + temp_s8)->unk8, 0, 0, 0x6A09, &sp20);
}

void setTitle_aMenu(void *arg0, s64 arg1) {
    s64 sp0;
    void **temp_a0;
    void *temp_a0_2;

    if (arg0->unkD != 0) {
        return;
    }
    temp_a0 = arg0->unk24;
    sp0 = arg1;
    if (temp_a0 != NULL) {
        gl_g_setpup(temp_a0);
    }
    temp_a0_2 = arg0->unk0;
    gl_g_setpup(temp_a0_2->unk4, temp_a0_2->unk8, (gl_wstate **)1);
    arg0->unk24 = (void **) M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_setpup(M2C_ERROR(/* Read from unset register $v0 */), 0, (gl_wstate **) sp0);
    arg0->unk10 = 0;
}

void destroy_aMenu(? *arg0) {
    s64 sp8;
    s32 temp_a0;
    s64 var_ra;
    void **temp_a2;

    var_ra = saved_reg_ra;
    temp_a2 = arg0->unk4;
    if (temp_a2 != NULL) {
        gl_g_setpup(temp_a2, (s32) temp_a2);
        var_ra = sp8;
    }
    temp_a0 = arg0->unk24;
    sp8 = var_ra;
    if (temp_a0 != 0) {
        .L0f0e0e70(temp_a0);
    }
    bzero(arg0, 0x3CU);
    gl_free(arg0, saved_reg_gp - 0x4970);
}

void map_aMenu(void *arg0) {
    s32 temp_s1;

    temp_s1 = arg0->unk0->unk4;
    if (arg0->unkC != 0) {
        XRaiseWindow(temp_s1, arg0->unk1C);
        XResizeWindow(temp_s1, arg0->unk1C, arg0->unk14, arg0->unk16);
        XResizeWindow(temp_s1, arg0->unk18, arg0->unk14, arg0->unk16);
        XRaiseWindow(temp_s1, arg0->unk18);
        XMapWindow(temp_s1, arg0->unk1C);
        XMapWindow(temp_s1, arg0->unk18);
        arg0->unkE = 1;
    }
}

void realize_aMenu(void **arg0, s32 arg1, s32 arg2) {
    s64 sp30;
    s16 temp_a0_2;
    s16 temp_at;
    s16 temp_v1;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_s3_2;
    s32 temp_s4;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_ra;
    void *temp_a0;
    void *temp_a0_3;
    void *temp_s3;
    void *temp_s8;
    void *temp_v0;

    var_ra = saved_reg_ra;
    var_s1 = arg1;
    var_s0 = arg2;
    temp_v0 = arg0->unk0;
    temp_s8 = temp_v0->unk4;
    temp_s3 = temp_s8->unk8C + (temp_v0->unk8 * 0x50);
    temp_s4 = temp_s3->unk10;
    temp_s3_2 = temp_s3->unkC;
    if (arg0->unkD == 0) {
        gl_g_setpup(arg0);
        var_ra = sp30;
        if (arg0->unk11 != 0) {
            temp_a0 = arg0->unk4;
            if (temp_a0 != NULL) {
                temp_v1 = temp_a0->unk28;
                temp_at = temp_a0->unk2A;
                var_s0 -= (s32) (((u32) temp_at >> 0x1F) + temp_at) >> 1;
                var_s1 -= (s32) (((u32) temp_v1 >> 0x1F) + temp_v1) >> 1;
            }
        }
    }
    if (var_s1 < 0) {
        var_s1 = 0;
    }
    temp_a0_2 = arg0->unk14;
    if (temp_s3_2 < (temp_a0_2 + var_s1)) {
        var_s1 = (temp_s3_2 - temp_a0_2) - 2;
    }
    temp_a0_3 = arg0->unk24;
    temp_a1 = arg0->unk16 + 2;
    if (temp_a0_3 != NULL) {
        temp_a2 = temp_a0_3->unk16 + 6;
        var_a4 = var_s0 + temp_a1;
        if (var_s0 < temp_a2) {
            var_s0 = temp_a2;
            goto block_7;
        }
    } else {
        var_a4 = var_s0 + temp_a1;
        if (var_s0 < 0) {
            var_s0 = 0;
block_7:
            var_a4 = var_s0 + temp_a1;
        }
    }
    if (temp_s4 < var_a4) {
        var_s0 = temp_s4 - temp_a1;
    }
    sp30 = var_ra;
    if (temp_a0_3 != NULL) {
        .L0f0e0f98(temp_a0_3, var_s1, (var_s0 - temp_a0_3->unk16) - 6);
    }
    XMoveWindow(temp_s8, arg0->unk18, var_s1, var_s0);
    XMoveWindow(temp_s8, arg0->unk1C, var_s1 + 7, var_s0 + 7);
    arg0->unk30 = 0;
    arg0->unk2C = 0;
    arg0->unk28 = 0;
    arg0->unkC = 1;
    gl_g_setpup(arg0);
}

void find_aMenu(void *arg0, s32 arg1) {
    s32 temp_a0;
    void *temp_v0;
    void *var_s1;

    if (arg0->unk18 != arg1) {
        temp_v0 = arg0->unk24;
        if (temp_v0 != NULL) {
            if (temp_v0->unk18 == arg1) {
                return;
            }
            goto block_5;
        }
block_5:
        var_s1 = arg0->unk4;
        if (var_s1 != NULL) {
loop_11:
            temp_a0 = var_s1->unk8;
            if (temp_a0 != 0) {
                if (.L0f0e115c(temp_a0, arg1) != 0) {
                    return;
                }
                goto block_10;
            }
block_10:
            var_s1 = var_s1->unk4;
            if (var_s1 != NULL) {
                goto loop_11;
            }
        }
    }
}

void popup_aMenu(void **arg0, s8 arg1, s64 arg2, s64 arg3) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    u32 sp8;
    gl_wstate *temp_a3;
    s16 var_s4;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5_2;
    s32 temp_s2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s8;
    void **temp_s1;
    void **var_s6;
    void *temp_a5;
    void *temp_a6;
    void *temp_s0;
    void *var_s4_2;

    temp_a6 = arg0->unk0;
    temp_s1 = temp_a6->unk4;
    arg0->unkF = arg1;
    if (_GLmenuIsUp != NULL) {
        fprintf(&__iob + 0x20, &sub_0f020000 + 0x37E8);
        return;
    }
    sp80 = (s64) arg1;
    sp88 = (s64) temp_a6;
    sp70 = arg2;
    sp78 = arg3;
    if (gl_wstatep == NULL) {
        return;
    }
    _GLupdateQueue(0, 0);
    sp90 = gl_findEndOfQueue();
    XInstallColormap(temp_s1, sp88->unk34);
    _GLsetwmcolormaps(gl_wstatep->active, arg0->unk18);
    XFlush(temp_s1);
    temp_a3 = sp88->unkC;
    arg0->unk11 = (s8) temp_a3;
    gl_g_setpup(arg0, (s32) sp70, (gl_wstate **) sp78, temp_a3);
    if (gl_rightmouseinqueue(sp90) != 0) {
        gl_g_setpup(arg0);
        _GLsetwmcolormaps(gl_wstatep->active, 0);
        return;
    }
    saved_reg_gp->unk-5104 = arg0;
    _GLmenuIsUp = (gl_wstate *)1;
    gl_g_setpup(NULL, 1, &_GLmenuIsUp);
    sp68 = (s64) arg0;
    var_s6 = sp4;
    var_s8 = sp0;
default:
loop_8:
    do {
loop_9:
        gl_g_setpup(temp_s1, (s32) &sp8);
        _GLupdatePointer(&sp8);
        switch (sp8) {
        case 2:
        case 3:
        case 4:
            _GLgrabEverything(&sp8, 0);
            goto loop_8;
        case 6:
            var_s3 = 0;
            temp_s2 = saved_reg_gp->unk-5104->unk18;
loop_22:
            temp_a4 = saved_reg_gp->unk-5118;
            if (sp18 == temp_s2) {
                var_s3 = 1;
                temp_a4_2 = temp_a4 + 1;
                var_s8 = (s32) sp2C;
                var_s6 = (void **) sp28;
                temp_a5 = (temp_a4 * 8) + (&sub_0f030000 + 0xD10);
                temp_a5->unk4 = var_s8;
                temp_a5->unk0 = var_s6;
                temp_a5_2 = temp_a4_2 >> 0x1F;
                temp_a4_3 = temp_a4_2 >> 0x1F;
                saved_reg_gp->unk-5118 = (s32) (((((temp_a4_2 ^ temp_a5_2) - temp_a5_2) & 3) ^ temp_a4_3) - temp_a4_3);
            }
            if (XCheckMaskEvent(temp_s1, 0x2000, &sp8) != 0) {
                goto loop_22;
            }
            if (var_s3 != 0) {
                gl_g_setpup(var_s6, var_s8);
            }
            goto loop_9;
        case 7:
        case 8:
            do {

            } while (XCheckMaskEvent(temp_s1, 0x30, &sp8) != 0);
            if (sp8 != 7) {
                if (saved_reg_gp->unk-510C != 3) {
                    gl_g_setpup(saved_reg_gp->unk-5104);
                }
            } else {
                gl_g_setpup(sp18, sp28, sp2C);
            }
            goto loop_9;
        case 12:
            gl_g_setpup((void **) sp68, (s32) sp18);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                var_s4 = M2C_ERROR(/* Read from unset register $v0 */)->unk16;
                var_s3_2 = 0;
loop_37:
                if (sp20 < var_s4) {
                    var_s4 = (s16) sp20;
                }
                temp_a2 = sp28 + sp20;
                if (var_s3_2 < temp_a2) {
                    var_s3_2 = temp_a2;
                }
                if (sp2C == NULL) {
                    gl_g_setpup(M2C_ERROR(/* Read from unset register $v0 */), (s32) var_s4, (gl_wstate **) var_s3_2);
                }
                if (XCheckWindowEvent(temp_s1, sp18, 0x8000, &sp8) != 0) {
                    goto loop_37;
                }
            }
            goto loop_8;
        }
        _GLgrabEverything(&sp8, 0);
    } while (sp80 != sp3C);
    temp_s0 = saved_reg_gp->unk-5104->unk28;
    gl_mem_ntoh_wfmoutline_array((s64) temp_s1);
    sp90 = M2C_ERROR(/* Read from unset register $v0 */);
    if (temp_s0 == NULL) {

    } else {
        gl_mem_ntoh_wfmoutline_array(sp90, temp_s0->unk40);
        if (temp_s0->unk3C != 0) {
            var_s4_2 = temp_s0->unk0;
            if (var_s4_2 != NULL) {
                do {
                    gl_mem_ntoh_wfmoutline_array(sp90, var_s4_2->unk38);
                    var_s4_2 = var_s4_2->unk30;
                } while (var_s4_2 != NULL);
            }
        }
    }
    gl_g_setpup((void **) sp68);
    if ((temp_s0 != NULL) && (temp_s0->unk14 != 0) && (temp_s0->unk8 == 0)) {
        gl_mem_ntoh_wfmoutline_array(sp90, (? *) sp68->unk12, temp_s0->unk1C);
    }
    _GLmenuIsUp = NULL;
    gl_mem_ntoh_wfmoutline_array(M2C_ERROR(/* Read from unset register $v0 */));
    _GLsetwmcolormaps(gl_wstatep->active, 0);
}

void enter_aMenu(s32 arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp8;
    s64 sp0;
    s32 var_a3;
    void **temp_a4;
    void **temp_s0;
    void **var_a0;
    void **var_s0;

    var_a3 = arg3;
    sp8 = arg1;
    temp_a4 = saved_reg_gp->unk-5104->unk2C;
    sp0 = arg2;
    if ((temp_a4 == NULL) || (temp_a4->unk18 != arg0)) {
        if (saved_reg_gp->unk-510C == 3) {
            var_a3 = temp_a4->unk18;
            if (var_a3 != arg0) {
                return;
            }
            goto block_6;
        }
block_6:
        gl_g_setpup(NULL, var_a3);
        var_a0 = saved_reg_gp->unk-5104;
        temp_s0 = var_a0->unk30;
        if ((temp_s0 == NULL) || (temp_s0->unk18 != arg0)) {
            var_s0 = var_a0;
            if (var_a0 != NULL) {
loop_9:
                if (var_s0->unk18 != arg0) {
                    var_s0 = var_s0->unk30;
                    if (var_s0 == NULL) {
                        /* Duplicate return node #11. Try simplifying control flow for better match */
                        gl_g_setpup(var_a0);
                        return;
                    }
                    goto loop_9;
                }
                if (var_s0 != var_a0) {
                    do {
                        gl_g_setpup(var_a0);
                        var_a0 = saved_reg_gp->unk-5104->unk30;
                        saved_reg_gp->unk-5104 = var_a0;
                    } while (var_s0 != var_a0);
                }
                gl_g_setpup((void **) sp8, (s32) sp0);
                return;
            }
            gl_g_setpup(var_a0);
            return;
        }
        gl_g_setpup(var_a0);
        saved_reg_gp->unk-5104->unk30 = NULL;
        saved_reg_gp->unk-5104 = temp_s0;
        gl_g_setpup((void **) sp8, (s32) sp0);
        return;
    }
    gl_g_setpup(NULL);
    temp_a4->unk30 = (void **) saved_reg_gp->unk-5104;
    saved_reg_gp->unk-5104 = temp_a4;
    gl_g_setpup((void **) sp8, (s32) sp0);
}

void leaveItem_aMenu(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;

    gl_g_setpup(NULL);
    temp_a0 = arg0->unk28;
    if (temp_a0 != NULL) {
        gl_g_setpup(temp_a0);
        temp_a0_2 = arg0->unk2C;
        arg0->unk28 = NULL;
        if (temp_a0_2 != NULL) {
            gl_g_setpup(temp_a0_2);
            arg0->unk2C = NULL;
        }
    }
}

void HistoryAllows(void) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_v0_2;
    s32 temp_v1;
    void *temp_a0_2;
    void *temp_v0;
    void *temp_v1_2;

    temp_v1 = saved_reg_gp->unk-5118;
    temp_a1 = temp_v1 + 3;
    temp_a0 = temp_a1 >> 0x1F;
    temp_a1_2 = temp_a1 >> 0x1F;
    temp_a0_2 = &sub_0f030000 + 0xD10;
    temp_v1_2 = (temp_v1 * 8) + temp_a0_2;
    temp_v0 = ((((((temp_a1 ^ temp_a0) - temp_a0) & 3) ^ temp_a1_2) - temp_a1_2) * 8) + temp_a0_2;
    temp_a2 = temp_v0->unk0 - temp_v1_2->unk0;
    temp_v0_2 = temp_v0->unk4 - temp_v1_2->unk4;
    if ((temp_a2 <= 0) || (temp_v0_2 <= 0) || (temp_v0_2 >= (temp_a2 * 2))) {

    }
}

void moveTo(s16 arg0, s32 arg1, s32 arg2) {
    s64 sp10;
    gl_wstate **temp_a3;
    s16 temp_s1;
    s16 var_a0;
    s32 var_a2;
    s64 var_ra;
    void **temp_a5;
    void *var_s0;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a2 = arg2;
    temp_s1 = var_a0;
    temp_a3 = saved_reg_gp->unk-510C;
    temp_a5 = saved_reg_gp->unk-5104;
    var_s0 = temp_a5->unk4;
    if (temp_a3 != (gl_wstate **)3) {
        if (var_s0 != NULL) {
loop_4:
            var_a0 = var_s0->unk24;
            if ((temp_s1 >= var_a0) && (temp_s1 < (var_s0->unk28 + var_a0)) && (var_a0 = var_s0->unk26, ((arg1 < var_a0) == 0)) && (var_a2 = arg1 < (var_s0->unk2A + var_a0), (var_a2 != 0))) {
                if (temp_a5->unk28 != var_s0) {
                    if (temp_a3 == (gl_wstate **)2) {
                        gl_g_setpup((void **) var_a0, var_a2, temp_a3);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            gl_g_setpup((void **)3);
                            return;
                        }
                    }
                    gl_g_setpup(NULL);
                    gl_g_setpup(saved_reg_gp->unk-5104);
                    gl_g_setpup(saved_reg_gp->unk-5104, (s32) var_s0);
                    saved_reg_gp->unk-5104->unk20 = (s32) temp_s1;
                }
            } else {
                var_s0 = var_s0->unk4;
                if (var_s0 != NULL) {
                    goto loop_4;
                }
                goto block_13;
            }
        } else {
block_13:
            if (temp_a3 == (gl_wstate **)2) {
                gl_g_setpup((void **) var_a0, var_a2, temp_a3);
                var_ra = sp10;
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    gl_g_setpup((void **)3);
                    var_ra = sp10;
                }
            }
            if (saved_reg_gp->unk-510C != (gl_wstate **)3) {
                sp10 = var_ra;
                gl_g_setpup(saved_reg_gp->unk-5104);
            }
        }
    }
}

void enterItem_aMenu(s64 arg0, void **arg1) {
    s32 temp_s0;

    temp_s0 = arg1->unk8;
    arg0->unk28 = arg1;
    gl_g_setpup(arg1);
    if ((arg1->unk14 != 0) && (temp_s0 != 0)) {
        subroutine_arg0->unk2C = temp_s0;
        gl_g_setpup((void **)1);
    }
}

void postSubMenu(void) {
    s64 sp20;
    ? sp8;
    gl_wstate **sp4;
    void *temp_a2;
    void *temp_s8;
    void *temp_t0;
    void *temp_t1;

    temp_s8 = saved_reg_gp->unk-5104;
    temp_t0 = temp_s8->unk28;
    temp_t1 = temp_s8->unk0;
    temp_a2 = temp_t1->unk4;
    sp20 = (s64) temp_a2;
    XTranslateCoordinates(temp_a2, temp_s8->unk18, (temp_a2->unk8C + (temp_t1->unk8 * 0x50))->unk8, (temp_t0->unk24 + temp_t0->unk28) - 2);
    temp_s8->unk2C->unk11 = 0;
    gl_g_setpup(temp_s8->unk2C, subroutine_arg0, sp4);
    XFlush((void **) sp20);
    gl_g_setpup((void **)2);
}

void cancel_aMenu(void **arg0) {
    s32 temp_a0;
    s32 temp_s8;

    temp_s8 = arg0->unk0->unk4;
    XUnmapWindow(temp_s8, arg0->unk1C);
    XUnmapWindow(temp_s8, arg0->unk18);
    gl_g_setpup(NULL);
    temp_a0 = arg0->unk24;
    arg0->unkE = 0;
    if (temp_a0 != 0) {
        .L0f0e1ca4(temp_a0);
    }
    arg0->unkC = 0;
    gl_g_setpup(arg0);
    arg0->unk30 = 0;
}

void render_aMenu(void *arg0, s32 arg1, s32 arg2) {
    gl_wstate **var_a2;
    s16 temp_a0;
    void **var_s0;
    void *temp_t1;

    temp_t1 = arg0->unk0;
    var_s0 = arg0->unk4;
    if (arg0->unkE != 0) {
        var_a2 = temp_t1 + 0x48;
        if (arg0->unkD == 0) {
            var_a2 = temp_t1 + 0x58;
        }
        gl_g_setpup(temp_t1->unk4, arg0->unk18, var_a2, NULL);
        if (var_s0 != NULL) {
loop_5:
            temp_a0 = var_s0->unk26;
            if (((var_s0->unk2A + temp_a0) >= arg1) && (temp_a0 < arg2)) {
                gl_g_setpup(var_s0);
            }
            var_s0 = var_s0->unk4;
            if (var_s0 != NULL) {
                goto loop_5;
            }
        }
    }
}

void appendItem_aMenu(void *arg0, void *arg1) {
    if (arg0->unk4 == NULL) {
        arg0->unk4 = arg1;
    } else {
        arg0->unk8->unk4 = arg1;
    }
    arg0->unk8 = arg1;
}

void layout_aMenu(void *arg0) {
    s64 sp40;
    s64 sp0;
    gl_wstate **var_s1;
    s16 temp_a1;
    s16 temp_a2;
    s16 temp_s5;
    s16 var_s2;
    s16 var_s3;
    s32 temp_a3;
    s32 var_s6;
    s64 var_ra;
    s64 var_s2_2;
    void **temp_a0;
    void **temp_a0_2;
    void **temp_s4;
    void **var_s0;
    void **var_s0_2;

    var_ra = saved_reg_ra;
    var_s2 = 0;
    sp0 = 0;
    var_s0 = arg0->unk4;
    var_s6 = 0;
    var_s1 = (gl_wstate **)4;
    if (arg0->unk10 != 0) {
        return;
    }
    arg0->unk10 = 1U;
    if (var_s0 != NULL) {
loop_12:
        temp_s4 = var_s0->unk4;
        gl_g_setpup(var_s0);
        var_s3 = var_s0->unk2A;
        temp_s5 = var_s0->unk28;
        if (var_s0->unk8 != 0) {
            sp0 = 0xF;
            if (var_s3 < 8) {
                var_s3 = 8;
                gl_g_setpup(var_s0, (s32) temp_s5, (gl_wstate **)8, (gl_wstate *)0xF);
            }
        }
        if (var_s0->unkC == 1) {
            var_s6 = 0x12;
        }
        temp_a3 = var_s3 < 0xB;
        if ((var_s0->unk30 != 0) && (temp_a3 != 0)) {
            var_s3 = 0xB;
        }
        if (var_s2 < temp_s5) {
            var_s2 = temp_s5;
        }
        gl_g_setpup(var_s0, 4, var_s1, (gl_wstate *) temp_a3);
        var_s1 += var_s3;
        var_s0 = temp_s4;
        if ((var_s0->unk30 != 0) && (temp_s4 != NULL)) {
            var_s1 += 2;
        }
        if (temp_s4 != NULL) {
            goto loop_12;
        }
        var_ra = sp40;
    }
    temp_a0 = arg0->unk24;
    var_s2_2 = (s64) ((var_s6 + sp0 + var_s2 + 8) << 0x30) >> 0x30;
    arg0->unk14 = (s16) (var_s2_2 + 8);
    if (temp_a0 != NULL) {
        sp40 = var_ra;
        .L0f0e1e3c(temp_a0);
        temp_a0_2 = arg0->unk24;
        temp_a1 = arg0->unk14;
        temp_a2 = temp_a0_2->unk14;
        if (temp_a2 >= temp_a1) {
            arg0->unk14 = temp_a2;
            var_s2_2 = (s64) ((var_s2_2 + (temp_a2 - temp_a1)) << 0x30) >> 0x30;
        } else {
            gl_g_setpup(temp_a0_2, (s32) temp_a1, (gl_wstate **) temp_a0_2->unk16);
            var_ra = sp40;
        }
    }
    var_s0_2 = arg0->unk4;
    arg0->unk16 = (s16) (var_s1 + 4);
    if (var_s0_2 != NULL) {
        sp40 = var_ra;
        do {
            var_s0_2->unk20 = var_s6;
            gl_g_setpup(var_s0_2, (s32) var_s2_2, (gl_wstate **) var_s0_2->unk2A);
            var_s0_2 = var_s0_2->unk4;
        } while (var_s0_2 != NULL);
    }
}

void resize_aMenu(void *arg0, s16 arg1, s16 arg2) {
    arg0->unk16 = arg2;
    arg0->unk14 = arg1;
}

void findItemNo_aMenu(void *arg0, s32 arg1) {
    void *var_v0;

    var_v0 = arg0->unk4;
    if (var_v0 != NULL) {
loop_1:
        if (var_v0->unk18 != arg1) {
            var_v0 = var_v0->unk4;
            if (var_v0 == NULL) {

            } else {
                goto loop_1;
            }
        }
    }
}

void drawArrow(s32 arg0, s64 arg1, s64 arg3) {
    s64 sp30;
    s64 sp28;

    sp30 = arg1;
    sp28 = arg3;
    XFillPolygon(sp, M2C_ERROR(/* Read from unset register $a4 */), M2C_ERROR(/* Read from unset register $a5 */));
    XDrawLines(arg0, arg1, sp28, sp);
}

void create_aMenuItem(void **arg0, s16 arg1, ? *arg2) {
    s64 *temp_v0_2;
    s64 temp_ra;
    void *temp_at;
    void *temp_v0;

    temp_v0 = gl_malloc(0x44, saved_reg_gp - 0x4970);
    temp_v0->unk0 = arg0;
    gl_g_setpup(arg0, (s32) temp_v0);
    temp_v0->unk4 = 0;
    temp_v0->unkC = 0;
    temp_v0->unk10 = 0;
    temp_v0->unk20 = 0;
    temp_v0->unk8 = 0;
    temp_v0->unk14 = 1;
    temp_v0->unkD = 1;
    temp_v0->unk18 = arg1;
    temp_v0->unk1C = (s32) arg1;
    temp_v0->unk3C = 1;
    if (arg2 == NULL) {
        temp_v0->unk14 = 0;
        temp_v0->unk2C = 0;
        temp_v0->unk28 = 0;
        temp_v0->unk30 = 0;
        temp_v0->unk2E = 3;
        temp_v0->unk2A = 3;
    } else {
        temp_v0->unk30 = _GLstrdup(arg2);
        temp_v0_2 = strlen(arg2);
        temp_v0->unk34 = temp_v0_2;
        gl_mem_ntoh_wfmoutline_array((s64) arg0->unk34, arg2, temp_v0_2);
        temp_v0->unk2C = (s16) M2C_ERROR(/* Read from unset register $v0 */);
        temp_v0->unk28 = (s16) M2C_ERROR(/* Read from unset register $v0 */);
        temp_at = *arg0->unk34;
        temp_ra = (s64) ((temp_at->unk48 + temp_at->unk4C + 4) << 0x30) >> 0x30;
        temp_v0->unk2E = (s16) temp_ra;
        temp_v0->unk2A = (s16) temp_ra;
    }
}

void destroy_aMenuItem(? *arg0) {
    s64 sp8;
    ? *temp_a0;
    s32 temp_a2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_a2 = arg0->unk4;
    if (temp_a2 != 0) {
        .L0f0e22d0(temp_a2, temp_a2);
        var_ra = sp8;
    }
    temp_a0 = arg0->unk30;
    sp8 = var_ra;
    if (temp_a0 != NULL) {
        gl_free(temp_a0, saved_reg_gp - 0x4970);
    }
    bzero(arg0, 0x44U);
    gl_free(arg0, saved_reg_gp - 0x4970);
}

void setEnable_aMenuItem(void *arg0, s32 arg1) {
    arg0->unk14 = arg1;
    arg0->unkD = (s8) (arg1 != 0);
}

void setCheck_aMenuItem(void *arg0, s32 arg1) {
    arg0->unk10 = arg1;
    arg0->unkC = (s8) (arg1 != 0);
    arg0->unk0->unk10 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x28, 0x2c, 0x30, 0x34], gap at: 0x18. */
void renderBackground_aMenuItem(void *arg0) {
    s64 sp38;
    s64 sp0;
    gl_wstate **var_a2;
    s32 temp_s1_2;
    s32 var_a6;
    s64 var_ra;
    u32 temp_at;
    void **temp_s2_2;
    void *temp_s1;
    void *temp_s2;

    var_ra = saved_reg_ra;
    temp_s1 = arg0->unk0;
    temp_s2 = temp_s1->unk0;
    temp_s1_2 = temp_s1->unk18;
    sp0 = (s64) temp_s2;
    temp_s2_2 = temp_s2->unk4;
    if (arg0->unkD == 2) {
        gl_g_setpup(temp_s2_2, temp_s1_2, sp0 + 0x68, (gl_wstate *) sp0->unk24);
        var_ra = sp38;
    }
    if (arg0->unk8 != 0) {
        temp_at = arg0->unk2A - 8;
        unksp20 = (arg0->unk24 + arg0->unk28) - 0xC;
        unksp10 = arg0->unk26 + ((s32) ((temp_at >> 0x1F) + temp_at) >> 1);
        if (arg0->unkD != 0) {
            var_a6 = sp0->unk10;
            sp38 = var_ra;
            var_a2 = sp0->unk24;
        } else {
            sp38 = var_ra;
            var_a6 = sp0->unk14;
            var_a2 = sp0->unk20;
        }
        unksp18 = (s64) var_a6;
        gl_g_setpup(temp_s2_2, temp_s1_2, var_a2, (gl_wstate *) unksp18);
        XDrawLine(temp_s2_2, temp_s1_2, unksp18, unksp20);
        var_ra = sp38;
    }
    if (arg0->unkC == 1) {
        sp38 = var_ra;
        gl_g_setpup((void **) sp0, temp_s1_2, arg0->unk10, (gl_wstate *) arg0->unk24);
    }
}

void enter_aMenuItem(void *arg0) {
    if (arg0->unk14 != 0) {
        arg0->unkD = 2;
        gl_g_setpup();
    }
}

void leave_aMenuItem(void **arg0) {
    void *temp_a1;

    if (arg0->unk14 != 0) {
        temp_a1 = arg0->unk0;
        arg0->unkD = 1;
        XClearArea(temp_a1->unk0->unk4, temp_a1->unk18, arg0->unk24, arg0->unk26);
        if (arg0->unk0->unkE != 0) {
            gl_g_setpup(arg0);
        }
    }
}

void render_aMenuItem(void **arg0) {
    s64 sp18;
    s64 sp10;
    s16 temp_a3;
    s32 temp_s2;
    s32 var_s4;
    void *temp_s1;
    void *temp_s1_2;

    temp_a3 = arg0->unk24;
    temp_s1 = arg0->unk0;
    temp_s2 = temp_s1->unk18;
    temp_s1_2 = temp_s1->unk0;
    if (arg0->unk30 != 0) {
        sp18 = arg0->unk26 + 2;
        sp10 = temp_a3 + 4;
        gl_g_setpup(arg0, (s32) temp_a3);
        if (arg0->unkD != 0) {
            var_s4 = temp_s1_2->unk10;
        } else {
            var_s4 = temp_s1_2->unk14;
        }
        XSetFont(temp_s1_2->unk4, var_s4, (*arg0->unk0->unk34)->unk4);
        XDrawString(temp_s1_2->unk4, temp_s2, var_s4, arg0->unk20 + sp10);
    } else {
        XDrawLine(temp_s1_2->unk4, temp_s2, (s64) temp_s1_2->unk14, (s64) temp_a3);
        XDrawLine(temp_s1_2->unk4, temp_s2, (s64) temp_s1_2->unk24, (s64) arg0->unk24);
    }
}

void resize_aMenuItem(void *arg0, s16 arg1, s16 arg2) {
    arg0->unk2A = arg2;
    arg0->unk28 = arg1;
}

void reset_aMenuItem(void *arg0) {
    arg0->unk2A = (s16) arg0->unk2E;
    arg0->unk28 = (s16) arg0->unk2C;
}

void move_aMenuItem(void *arg0, s16 arg1, s16 arg2) {
    arg0->unk26 = arg2;
    arg0->unk24 = arg1;
}

void renderEdges(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;

    sp48 = arg1;
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp38 = arg3;
    sp40 = arg2;
    sp28 = (M2C_ERROR(/* Read from unset register $a4 */) + M2C_ERROR(/* Read from unset register $a6 */)) - 1;
    sp20 = arg3 + M2C_ERROR(/* Read from unset register $a5 */);
    XDrawLines(arg2->unk0, (s64) sp);
    XDrawLines(arg0, arg1, (s64) arg2->unk4, sp);
}

void render_outline(void **arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;

    sp38 = arg1;
    sp30 = arg2;
    sp28 = arg3;
    sp20 = M2C_ERROR(/* Read from unset register $a4 */);
    sp18 = M2C_ERROR(/* Read from unset register $a5 */);
    sp10 = M2C_ERROR(/* Read from unset register $a6 */);
    gl_g_setpup();
    gl_g_setpup(arg0, (s32) arg1, arg2 + 8, arg3 + 1);
}

void render_fill(void **arg0, s64 arg1, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;

    sp38 = arg1;
    sp30 = arg3;
    sp28 = M2C_ERROR(/* Read from unset register $a4 */);
    sp20 = M2C_ERROR(/* Read from unset register $a5 */);
    sp18 = M2C_ERROR(/* Read from unset register $a6 */);
    sp10 = M2C_ERROR(/* Read from unset register $a7 */);
    gl_g_setpup(M2C_ERROR(/* Read from unset register $a4 */));
    XFillRectangle(arg0, arg1, sp30, sp28 + 2);
}

void drawCheck(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp38;
    s64 sp8;
    s64 sp0;
    gl_wstate **var_a2;
    s32 temp_a4_2;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s64 temp_a4;
    s64 temp_a4_3;
    s64 var_ra;
    u32 temp_v0;

    var_ra = saved_reg_ra;
    if (arg2 != 0) {
        var_a2 = arg0 + 0x78;
    } else {
        var_a2 = arg0 + 0x88;
    }
    temp_v0 = M2C_ERROR(/* Read from unset register $a5 */) - 0xB;
    if (arg2 != 0) {
        gl_g_setpup(arg0->unk4, arg1, var_a2, arg0->unk1C);
        var_ra = sp38;
    }
    if (arg2 & 4) {
        sp38 = var_ra;
        XSetFillStyle(arg0->unk4, arg0->unk10, 2);
        temp_a4 = ((s32) ((temp_v0 >> 0x1F) + temp_v0) >> 1) + M2C_ERROR(/* Read from unset register $a4 */) + 2;
        sp8 = temp_a4;
        temp_a5 = temp_a4 >> 0x1F;
        temp_a4_2 = temp_a4 >> 0x1F;
        temp_a4_3 = arg3 + 6;
        sp0 = temp_a4_3;
        temp_a5_2 = temp_a4_3 >> 0x1F;
        temp_a4_4 = temp_a4_3 >> 0x1F;
        XSetTSOrigin(arg0->unk4, arg0->unk10, ((((temp_a4_3 ^ temp_a5_2) - temp_a5_2) & 0xF) ^ temp_a4_4) - temp_a4_4, ((((temp_a4 ^ temp_a5) - temp_a5) & 7) ^ temp_a4_2) - temp_a4_2);
        XFillRectangle(arg0->unk4, (s64) arg1, (s64) arg0->unk10, sp0);
        XSetFillStyle(arg0->unk4, arg0->unk10, 0);
    }
}

void SetState(s32 arg0, s32 arg1) {
    s64 sp18;
    ? sp8;
    s32 var_a1;

    var_a1 = arg1;
    saved_reg_gp->unk-510C = arg0;
    switch (arg0) {                                 /* irregular */
    default:
        var_a1 = sp0;
        if (arg0 != 1) {
            sp18 = (s64) var_a1;
        } else {
            sp18 = (s64) saved_reg_gp->unk-5114;
        }
        M2C_TRAP_IF(0x3E8 == 0);
        saved_reg_gp->unk-5108 = (s32) (((s32) (sp18 * 0x64) / 1000) + times(&sp8, var_a1));
        return;
    case 3:
        sp18 = (s64) saved_reg_gp->unk-5110;
        /* Duplicate return node #5. Try simplifying control flow for better match */
        M2C_TRAP_IF(0x3E8 == 0);
        saved_reg_gp->unk-5108 = (s32) (((s32) (sp18 * 0x64) / 1000) + times(&sp8, var_a1));
        return;
    case 0:
    case 2:
        saved_reg_gp->unk-5108 = 0;
        return;
    }
}

void TimeoutHappened(void) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    void *temp_a0;

    temp_a1 = saved_reg_gp->unk-510C;
    if (temp_a1 != 1) {
        if (temp_a1 != 3) {
            gl_g_setpup(NULL, temp_a1);
        } else {
            gl_g_setpup(saved_reg_gp->unk-5104->unk2C, temp_a1);
            saved_reg_gp->unk-5104->unk2C = NULL;
            gl_g_setpup(NULL);
            temp_a2 = saved_reg_gp->unk-5118 + 3;
            temp_a1_2 = temp_a2 >> 0x1F;
            temp_a2_2 = temp_a2 >> 0x1F;
            temp_a0 = ((((((temp_a2 ^ temp_a1_2) - temp_a1_2) & 3) ^ temp_a2_2) - temp_a2_2) * 8) + (&sub_0f030000 + 0xD10);
            gl_g_setpup(temp_a0->unk0, temp_a0->unk4, (gl_wstate **) temp_a2_2);
        }
    } else {
        gl_g_setpup((void **) temp_a1);
    }
}

void GLMenuNextEvent(void *arg0, ? arg1) {
    u32 sp94;
    u32 sp90;
    s32 *temp_a7;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_v0_2;
    s32 var_s2;
    u32 temp_a0;
    u32 temp_ra;
    u32 temp_v0;
    u32 var_s1;

    if (saved_reg_gp->unk-5108 != 0) {
        temp_v0 = times(sp);
        temp_a0 = saved_reg_gp->unk-5108;
        var_s1 = temp_v0;
        if (temp_a0 < temp_v0) {
            gl_g_setpup((void **) temp_a0);
        }
        if ((saved_reg_gp->unk-5108 != 0) && (XEventsQueued(arg0, 2) == 0)) {
            var_s2 = arg0->unk8;
loop_7:
            memset(&sp10[0], 0, 0x80U);
            temp_ra = saved_reg_gp->unk-5108 - var_s1;
            M2C_TRAP_IF(0x64 == 0);
            M2C_TRAP_IF(0x64 == 0);
            temp_t2 = var_s2 >> 0x1F;
            temp_t2_2 = var_s2 >> 0x1F;
            temp_a7 = &(&sp10[0])[(s32) (((u32) (var_s2 >> 4) >> 0x1B) + var_s2) >> 5];
            *temp_a7 |= 1 << (((((var_s2 ^ temp_t2) - temp_t2) & 0x1F) ^ temp_t2_2) - temp_t2_2);
            sp90 = temp_ra / 100U;
            sp94 = (u32) ((temp_ra % 100U) * 0xF4240) / 100U;
            temp_v0_2 = select(var_s2 + 1, (s32 (*)[]) &sp10[0], 0, 0);
            if (temp_v0_2 != 0) {
                if (temp_v0_2 != -1) {
                    var_s2 = -1;
                    if (XEventsQueued(arg0, 1) == 0) {
                        _GLioerrorhandler(gl_sstatep->unk1C->unk4);
                        var_s2 = -1;
                    }
                    goto block_6;
                }
                goto block_12;
            }
            gl_g_setpup();
            if (saved_reg_gp->unk-5108 == 0) {
                var_s2 = -1;
block_6:
                if (var_s2 >= 0) {
                    goto loop_7;
                }
            } else {
block_12:
                var_s1 = times(sp);
                if (var_s2 >= 0) {
                    goto loop_7;
                }
            }
        }
    }
    XNextEvent(arg0, arg1);
}

void ArePopupsAvailable(void) {
    if (gl_sstatep->unk1C->unk14 != 0) {

    }
}
