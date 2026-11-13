? XFree(s32 *);                                     /* extern */
? XFreeExtensionList(s64, ?);                       /* extern */
s32 XGetWindowProperty(void *, s32, s32, ?, ? *, s32 **); /* extern */
s64 XListExtensions(s32, void *, void *);           /* extern */
void *XOpenDisplay(s64, void *);                    /* extern */
s32 XQueryExtension(s32, s32, s32 *, ? *);          /* extern */
? XSetIOErrorHandler(void *, ?);                    /* extern */
? exit(?);                                          /* extern */
? fprintf(void *, void *, u8, u8);                  /* extern */
? sprintf(void *, void *, s64);                     /* extern */
extern void *_GLappclass;
extern void *_GLappinstance;
extern ? __iob;
extern u8 gl_curdname;
extern s32 gl_nscrns;
extern void *gl_scrntab;
extern s32 gl_selected_scrn;
extern void *gl_thedisplay;
extern ? sub_0f020000;
extern ? sub_0f040000;
extern ? sub_0f130000;

void __iglooEarlyDisplayAccess(s32 *arg0) {
    s32 temp_v0;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0A3F0;
    temp_v0 = temp_at->unk-4D34;
    temp_at->unk-4D34 = 0;
    *arg0 = temp_v0;
}

void gl_catch_x_errors(s32 arg0) {
    (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0A3D4)->unk-4D38 = arg0;
}

void _GLioerrorhandler(void) {
    exit(0);
}

void _GLerrorhandler(s32 arg0, void *arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    ? spC;
    ? sp8;
    s32 sp4;
    s32 var_s4;
    s64 temp_v0_2;
    s64 var_s3;
    u8 temp_t0;
    void *temp_a3;
    void *temp_v0;

    if (saved_reg_gp->unk-4D38 != 0) {
        return;
    }
    temp_t0 = arg1->unk11;
    temp_v0 = &__iob + 0x20;
    if ((s32) temp_t0 < 0x23) {
        fprintf(temp_v0, &sub_0f020000 + 0x5988, temp_t0, arg1->unk10);
    } else {
        sp20 = (s64) temp_v0;
        temp_a3 = &sub_0f020000 + 0x5970;
        sp10 = (s64) temp_a3;
        temp_v0_2 = XListExtensions(arg0, sp, temp_a3);
        var_s3 = temp_v0_2;
        sp18 = temp_v0_2;
        var_s4 = 0;
        if (sp0 > 0) {
loop_10:
            if (XQueryExtension(arg0, *var_s3, &sp4, &sp8) != 0) {
                var_s4 += 1;
                if (sp4 == arg1->unk11) {
                    sp10 = (s64) *var_s3;
                } else {
                    goto block_9;
                }
            } else {
                var_s4 += 1;
block_9:
                var_s3 += 4;
                if (var_s4 < sp0) {
                    goto loop_10;
                }
            }
        }
        fprintf((void *) sp20, &sub_0f020000 + 0x59B0, (u8) sp10, arg1->unk11);
        if (sp18 != 0) {
            XFreeExtensionList(sp18, 1);
        }
    }
    gl_ErrorHandler(0x5D, 1, &sub_0f020000 + 0x59F0);
}

void _GLmakeglwindow(s32 arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;
    s64 temp_v0;

    sp20 = arg1;
    temp_v0 = gl_malloc(0xBC, &sub_0f020000 + 0x5A20);
    sp18 = temp_v0;
    bzero((void *) temp_v0, 0xBCU);
    temp_v0->unkC = (s32) sp20;
    temp_v0->unk8 = arg0;
    temp_v0->unk40 = arg0;
    temp_v0->unk0 = (s32) (*sp20)->unk14;
    temp_v0->unk4 = (s32) (*sp20)->unk4;
    (*sp20)->unk14 = (s32) temp_v0;
}

void board_number_of_screen(s32 arg0) {
    ? sp30;
    ? sp2C;
    ? sp28;
    ? sp24;
    s32 *sp20;
    s32 var_s8;
    void *temp_a0;

    temp_a0 = gl_thedisplay->unk4;
    sp20 = NULL;
    if ((XGetWindowProperty(temp_a0, (temp_a0->unk8C + (arg0 * 0x50))->unk8, gl_thedisplay->unk18->unk28, 0, &sp30, &sp20) == 0) && (sp20 != NULL)) {
        var_s8 = *sp20;
        XFree(sp20);
    } else {
        var_s8 = arg0;
    }
    (gl_scrntab + (arg0 * 0x28))->unk18 = var_s8;
}

void _GLmakescreen(s32 arg0) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a6;
    void *temp_a0;
    void *temp_a5;
    void *temp_t2;
    void *temp_t9;
    void *temp_v0;

    temp_v0 = gl_malloc(0x114, &sub_0f020000 + 0x5A30, 0xFFF0A084);
    bzero(temp_v0, 0x114U);
    temp_v0->unk8 = arg0;
    temp_v0->unk4 = (void *) gl_thedisplay->unk4;
    temp_v0->unk0 = (void *) gl_thedisplay;
    _GLmakeglwindow(arg0);
    temp_a0 = temp_v0->unk4;
    temp_v0->unkC = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    temp_a3 = temp_v0->unk8;
    temp_v0->unk10 = (s32) temp_a0->unk84;
    temp_a2 = temp_a3 * 0x50;
    _GLmakeglwindow((temp_a0->unk8C + temp_a2)->unk8, (s64) temp_v0, temp_a2, temp_a3);
    temp_v0->unk70 = (void *) M2C_ERROR(/* Read from unset register $v0 */);
    M2C_ERROR(/* Read from unset register $v0 */)->unk2C = 1;
    temp_t9 = temp_v0->unk70;
    temp_t9->unk20 = (s32) (temp_t9->unk20 | 2);
    temp_v0->unk70->unk5C = (s32) temp_v0->unk0->unk1C;
    temp_t2 = temp_v0->unk70;
    temp_t2->unk54 = (s32) temp_t2->unk5C;
    temp_v0->unk70->unk58 = 0;
    temp_a5 = temp_v0->unk4;
    temp_a6 = temp_v0->unk8 * 0x50;
    temp_v0->unk78 = (s32) (temp_a5->unk8C + temp_a6)->unk10;
    temp_v0->unk84 = 0;
    temp_v0->unk74 = (s32) (temp_a5->unk8C + temp_a6)->unkC;
    temp_v0->unk80 = (s32) (second half of f64);
    temp_v0->unk7C = (s32) ((second half of f64) + 0.5);
    __iglooGetFullVisualInfo(temp_v0);
    (gl_scrntab + (temp_v0->unkC * 0x28))->unk1C = temp_v0;
}

void IOErrorHandler(void) {
    exit(0);
}

void _GLinitgl(void) {
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    ? sp100;
    s32 var_a0;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_v0;
    u8 var_a1;
    void *temp_a2;
    void *temp_v0;
    void *temp_v0_2;

    __iglooTlsInit();
    if (*(void **)0x100C == NULL) {
        __iglooInitCriticalSection();
        sp120 = (s64) &gl_curdname;
        var_a1 = gl_curdname;
        if (var_a1 == 0) {
            var_a1 = (u8) (saved_reg_gp - 0x3E30);
            sp120 = (s64) var_a1;
        }
        temp_v0 = XOpenDisplay(sp120, (void *) var_a1);
        if (temp_v0 == NULL) {
            sp118 = (s64) temp_v0;
            sprintf(sp, &sub_0f020000 + 0x5A40, sp120);
            gl_ErrorHandler(0x6A, 1, sp);
        }
        saved_reg_gp->unk-4D34 = temp_v0;
        *(void *)0x100C = temp_v0;
        if (saved_reg_gp->unk-4D30 != 0) {
            gl_thedisplay->unk4 = temp_v0;
            var_s1 = 0;
            if (temp_v0->unk88 > 0) {
                var_a0 = 0;
                do {
                    _GLmakeglwindow(var_a0);
                    var_s1 += 1;
                    temp_v0_2 = (gl_scrntab + (((M2C_ERROR(/* Read from unset register $v0 */) * 4) + M2C_ERROR(/* Read from unset register $v0 */)) * 8))->unk1C;
                    temp_v0_2->unk70->unk4 = temp_v0;
                    temp_v0_2->unk4 = temp_v0;
                    var_a0 = var_s1;
                } while (var_s1 < temp_v0->unk88);
            }
            return;
        }
        sp118 = (s64) temp_v0;
        saved_reg_gp->unk-4D30 = 1;
        XSetIOErrorHandler(&sub_0f130000 - 0x6C70, 1);
        gl_init();
        _GLloadCurrentCursorMap();
        var_s1_2 = 0;
        gl_thedisplay = gl_initdisplay(sp118, 0);
        if (gl_nscrns > 0) {
            var_v0 = 0;
            do {
                (gl_scrntab + var_v0)->unk1C = 0;
                var_s1_2 += 1;
                var_v0 += 0x28;
            } while (var_s1_2 < gl_nscrns);
        }
        var_s1_3 = 0;
        if (temp_v0->unk88 > 0) {
            sp108 = (s64) (&sub_0f040000 - 0x6DE0);
loop_20:
            _GLmakescreen(var_s1_3);
            sp110 = M2C_ERROR(/* Read from unset register $v0 */);
            *sp108 = 1;
            gl_selected_scrn = M2C_ERROR(/* Read from unset register $v0 */)->unkC;
            temp_a2 = &sub_0f020000 + 0x5A68;
            _GLappclass = temp_a2;
            _GLappinstance = &sub_0f020000 + 0x5A78;
            gl_devdepattach(M2C_ERROR(/* Read from unset register $v0 */)->unkC, &_GLappinstance, temp_a2, &_GLappclass);
            if (__iglooIsGlxScreen(var_s1_3) != 0) {
                __iglooFindAllGLVisualsAndColormaps(sp110);
            }
            var_s1_3 += 1;
            sp108 += 4;
            if (var_s1_3 < temp_v0->unk88) {
                goto loop_20;
            }
        }
        gl_parse_hostname(sp120, &sp100, &gl_selected_scrn);
        gl_devdepattach(gl_selected_scrn);
        _GLInitInput();
    }
}

void gl_g_scrnselect(s32 arg0) {
    s32 var_a3;
    void *temp_a4;
    void *var_a0;

    _GLinitgl();
    var_a3 = 0;
    if (__iglooIsGlxScreen(arg0) != 0) {
        var_a0 = gl_scrntab;
        if (gl_nscrns > 0) {
loop_4:
            temp_a4 = var_a0->unk1C;
            var_a0 += 0x28;
            if ((temp_a4 != NULL) && (temp_a4->unk8 == arg0)) {
                if (*((arg0 * 4) + (&sub_0f040000 - 0x6DE0)) != 0) {
                    gl_selected_scrn = var_a3;
                    return;
                }
                fprintf(&__iob + 0x20, &sub_0f020000 + 0x5A88);
                return;
            }
            var_a3 += 1;
            if (var_a3 != gl_nscrns) {
                goto loop_4;
            }
        }
    }
}
