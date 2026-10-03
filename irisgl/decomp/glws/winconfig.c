void *XAllocClassHint();                            /* extern */
s32 *XAllocSizeHints();                             /* extern */
s32 *XAllocWMHints();                               /* extern */
? XChangeProperty(s32, s32, s64, s64);              /* extern */
? XFlush(s32);                                      /* extern */
s32 XFree(void *, void *);                          /* extern */
? XGetWindowProperty(s32, s32, s32, ?, ? *, void **); /* extern */
? XSetClassHint(s32, s32, void *);                  /* extern */
? XStoreName(s32, s32, s32);                        /* extern */
? strcpy(s64, s32);                                 /* extern */
s32 strlen();                                       /* extern */
s32 tolower(u8, u8);                                /* extern */
s8 toupper(u8, s32);                                /* extern */
extern s8 *_GLappclass;
extern s32 _GLappinstance;
extern s32 __libc_attr;
extern ? sub_0f020000;

void _GLinvertY(void *arg0, s32 arg1) {

}

void *_GLallocSizeHints(s64 arg0, s64 arg1) {
    s64 sp10;
    s64 sp0;
    s32 *temp_v0_2;
    s32 *var_a4;
    s32 temp_v0;

    sp0 = arg0;
    var_a4 = arg0->unk60;
    if (var_a4 == NULL) {
        sp10 = arg1;
        temp_v0_2 = XAllocSizeHints();
        sp0->unk60 = temp_v0_2;
        *temp_v0_2 = 0;
        var_a4 = sp0->unk60;
    }
    temp_v0 = *var_a4 | arg1;
    *var_a4 = temp_v0;
    return (void *) temp_v0;
}

void *_GLallocWMHints(s64 arg0, s64 arg1) {
    s64 sp10;
    s64 sp0;
    s32 *temp_v0_2;
    s32 *var_a4;
    s32 temp_v0;

    sp0 = arg0;
    var_a4 = arg0->unk64;
    if (var_a4 == NULL) {
        sp10 = arg1;
        temp_v0_2 = XAllocWMHints();
        sp0->unk64 = temp_v0_2;
        *temp_v0_2 = 0;
        var_a4 = sp0->unk64;
    }
    temp_v0 = *var_a4 | arg1;
    *var_a4 = temp_v0;
    return (void *) temp_v0;
}

void _GLminwinsize(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp8 = arg2;
    sp0 = arg1;
    sp10 = arg0;
    if (arg0->unk2C != 2) {
        return;
    }
    _GLallocSizeHints(sp10, 0x10);
    sp10->unk60->unk14 = (s32) sp0;
    sp10->unk60->unk18 = (s32) sp8;
}

void _GLmaxwinsize(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp8 = arg2;
    sp0 = arg1;
    sp10 = arg0;
    if (arg0->unk2C != 2) {
        return;
    }
    _GLallocSizeHints(sp10, 0x20);
    sp10->unk60->unk1C = (s32) sp0;
    sp10->unk60->unk20 = (s32) sp8;
}

void _GLwinstep(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp8 = arg2;
    sp0 = arg1;
    sp10 = arg0;
    if (arg0->unk2C != 2) {
        return;
    }
    _GLallocSizeHints(sp10, 0x40);
    sp10->unk60->unk24 = (s32) sp0;
    sp10->unk60->unk28 = (s32) sp8;
}

void _GLwinmargin(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp8 = arg2;
    sp0 = arg1;
    sp10 = arg0;
    if (arg0->unk2C != 2) {
        return;
    }
    _GLallocSizeHints(sp10, 0x100);
    sp10->unk60->unk3C = (s32) sp0;
    sp10->unk60->unk40 = (s32) sp8;
}

void _GLwinaspect(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp8 = arg2;
    sp0 = arg1;
    sp10 = arg0;
    if (arg0->unk2C != 2) {
        return;
    }
    _GLallocSizeHints(sp10, 0x80);
    sp10->unk60->unk34 = (s32) sp0;
    sp10->unk60->unk2C = (s32) sp0;
    sp10->unk60->unk38 = (s32) sp8;
    sp10->unk60->unk30 = (s32) sp8;
}

void _GLstrdup(s32 arg0) {
    s64 sp18;
    s64 temp_v0;

    temp_v0 = gl_malloc(strlen() + 1, &sub_0f020000 + 0x5928);
    sp18 = temp_v0;
    strcpy(temp_v0, arg0);
}

void MakeInstance(u8 *arg0) {
    s64 sp20;
    s32 temp_a1;
    s32 var_a0;
    s64 var_ra;
    u8 *var_s0;
    u8 *var_s2;
    u8 var_a3;

    var_ra = saved_reg_ra;
    var_a3 = *arg0;
    var_s0 = arg0;
    if ((__libc_attr + (var_a3 * 4))->unk4 & 1) {
        var_ra = sp20;
        var_a3 = tolower(var_a3, var_a3) & 0xFF;
        *var_s0 = var_a3;
    }
    var_s2 = var_s0;
    var_a0 = 0;
    if (var_a3 != 0) {
        sp20 = var_ra;
loop_7:
        if ((var_a0 == 0) || (temp_a1 = var_a3 * 4, (((__libc_attr + temp_a1)->unk4 & 2) == 0))) {
            var_a0 = 1;
            if (var_a3 != 0x20) {
                if ((__libc_attr + (var_a3 * 4))->unk4 & 0x4007) {
                    goto block_11;
                }
                if (var_a3 != 0x2D) {
                    var_a0 = 0;
                    if (var_a3 == 0x5F) {
                        goto block_11;
                    }
                } else {
block_11:
                    *var_s2 = var_a3;
                    var_s2 += 1;
                    goto block_5;
                }
            }
        } else {
            var_s2 += 1;
            var_s2->unk-1 = toupper(var_a3, temp_a1);
block_5:
            var_a0 = 0;
        }
        var_a3 = var_s0->unk1;
        var_s0 += 1;
        if (var_a3 != 0) {
            goto loop_7;
        }
    }
    *var_s2 = 0;
}

void _GLappname(void) {
    s8 *temp_s0;
    u8 temp_a0;

    _GLstrdup();
    _GLappinstance = M2C_ERROR(/* Read from unset register $v0 */);
    _GLstrdup(M2C_ERROR(/* Read from unset register $v0 */));
    _GLstrdup(_GLappinstance);
    temp_a0 = *M2C_ERROR(/* Read from unset register $v0 */);
    temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    if ((__libc_attr + (temp_a0 * 4))->unk4 & 2) {
        *temp_s0 = toupper(temp_a0);
    }
    _GLappclass = temp_s0;
}

void _GLwinname(void *arg0, s32 arg1) {
    void *temp_s1;

    temp_s1 = XAllocClassHint();
    _GLstrdup(arg1);
    arg0->unk68 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    _GLstrdup(M2C_ERROR(/* Read from unset register $v0 */));
    XStoreName(arg0->unk4, arg0->unk40, arg0->unk68);
    temp_s1->unk4 = (s8 *) _GLappclass;
    temp_s1->unk0 = (s32) arg0->unk68;
    XSetClassHint(arg0->unk4, arg0->unk40, temp_s1);
    XFree(temp_s1);
}

void _GLiconwindow(s64 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;

    sp8 = arg1;
    sp0 = arg0;
    if (arg0->unk2C != 2) {
        return;
    }
    sp8->unk2C = 3;
    _GLallocWMHints(sp0, 8, 3, sp8);
    sp0->unk64->unk10 = (s32) sp8->unk40;
}

s32 GetMwmHints(void *arg0, void *arg1) {
    ? sp30;
    ? sp2C;
    ? sp28;
    ? sp24;
    void *sp20;
    s32 var_v0;

    sp20 = NULL;
    XGetWindowProperty(arg0->unk4, arg0->unk40, (*arg0->unkC)->unk18->unk14, 0, &sp30, &sp20);
    if (sp20 != NULL) {
        arg1->unk0 = (s32) sp20->unk0;
        arg1->unk4 = (s32) sp20->unk4;
        arg1->unk8 = (s32) sp20->unk8;
        arg1->unkC = (s32) sp20->unkC;
        var_v0 = XFree(sp20, sp20);
    } else {
        var_v0 = bzero(arg1, 0x10U);
    }
    return var_v0;
}

void _GLsetwmfunction(void *arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp4;
    s32 sp0;

    sp20 = (s64) arg0;
    sp18 = arg1;
    sp10 = (s64) (*arg0->unkC)->unk18->unk14;
    if (arg0->unk6C == arg1) {
        return;
    }
    sp20->unk6C = (s32) sp18;
    _GLiconwindow(sp20, (s64) sp, sp18, sp20);
    sp4 = (s32) sp18;
    sp0 |= 1;
    XChangeProperty(sp20->unk4, sp20->unk40, sp10, sp10);
    XFlush(sp20->unk4);
}

void _GLsetwmdecor(void *arg0, s32 arg1) {
    s64 sp30;

    sp30 = (s64) (*arg0->unkC)->unk18->unk14;
    _GLiconwindow((s64) sp);
    XChangeProperty(arg0->unk4, arg0->unk40, sp30, sp30);
    XFlush(arg0->unk4);
}
