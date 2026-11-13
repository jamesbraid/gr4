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

? XBell(s32, ?);                                    /* extern */
? XChangeKeyboardControl(s32, ?, void *, s32, s32); /* extern */
? XFlush(s32);                                      /* extern */
? XForceScreenSaver(s32, s32);                      /* extern */
? XGetScreenSaver(s32, void *, s32 *, s32 *);       /* extern */
? XSetScreenSaver(s32, s32, s32, s32);              /* extern */

void _clk(s32 arg0) {
    _GLinitgl();
    XChangeKeyboardControl(gl_sstatep->unk1C->unk4, 1, sp);
    XFlush(gl_sstatep->unk1C->unk4);
}

void gl_g_clkon(void) {
    gl_n_bbox2(0x64);
}

void gl_g_clkoff(void) {
    gl_n_bbox2(0);
}

void _lamp(s32 arg0, s32 arg1) {
    _GLinitgl();
    if ((1 << 0) & arg0) {
        XChangeKeyboardControl(gl_sstatep->unk1C->unk4, 0x30, sp, 1, arg1);
    }
    if ((1 * 2) & arg0) {
        XChangeKeyboardControl(gl_sstatep->unk1C->unk4, 0x30, sp, 2, arg1);
    }
    if ((1 * 4) & arg0) {
        XChangeKeyboardControl(gl_sstatep->unk1C->unk4, 0x30, sp, 3, arg1);
    }
    if ((1 * 8) & arg0) {
        XChangeKeyboardControl(gl_sstatep->unk1C->unk4, 0x30, sp, 4, arg1);
    }
    XFlush(gl_sstatep->unk1C->unk4);
}

void gl_g_lampon(void) {
    gl_g_clkoff(1);
}

void gl_g_lampoff(void) {
    gl_g_clkoff(0);
}

void gl_g_ringbell(void) {
    _GLinitgl();
    XBell(gl_sstatep->unk1C->unk4, 0);
    XFlush(gl_sstatep->unk1C->unk4);
}

void gl_g_setbell(s32 arg0) {
    _GLinitgl();
    if (arg0 != 0) {
        if (arg0 >= 2) {

        }
    }
    XChangeKeyboardControl(gl_sstatep->unk1C->unk4, 0xA, sp);
    XFlush(gl_sstatep->unk1C->unk4);
}

void gl_g_blanktime(s32 arg0) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 temp_s0;
    s32 temp_s8;
    s32 var_a1;

    temp_s8 = __GLgetgdesc(0x42);
    _GLinitgl();
    temp_s0 = gl_sstatep->unk1C->unk4;
    XGetScreenSaver(temp_s0, sp, &sp4, &sp8);
    M2C_TRAP_IF(temp_s8 == 0);
    var_a1 = (s32) ((temp_s8 + arg0) - 1) / temp_s8;
    if (var_a1 > 0) {
        if (sp8 == 0) {
            if (spC == 0) {
                spC = 1;
            }
        }
    } else {
        if (var_a1 == 0) {
            XForceScreenSaver(temp_s0, 0);
        }
        var_a1 = subroutine_arg0;
    }
    XSetScreenSaver(temp_s0, var_a1, sp4, sp8);
    XFlush(temp_s0);
}

void gl_g_blankscreen(s32 arg0) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 temp_s0;

    _GLinitgl();
    temp_s0 = gl_sstatep->unk1C->unk4;
    XGetScreenSaver(temp_s0, sp, &sp4, &sp8);
    if (arg0 != 0) {
        if (sp8 == 0) {
            if (spC == 0) {
                spC = 1;
                XSetScreenSaver(temp_s0, subroutine_arg0, sp4, sp8);
            }
        }
    }
    XForceScreenSaver(temp_s0, arg0 != 0);
    XFlush(temp_s0);
}
