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
    /* 0x0100 */ s32 unk100;                        /* inferred */
    /* 0x0104 */ char pad104[0x10];                 /* maybe part of unk100[5]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0xA28];                /* maybe part of unk114[0x28B]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? XFlush(s32, ?);                                   /* extern */
s32 XOpenDisplay(s32);                              /* extern */
? XQueryColor(s32, s32, void *);                    /* extern */
? XSGIMiscCycleColorCell(s32, s32, s64, void *);    /* extern */
? XSetCloseDownMode(s32, ?);                        /* extern */
extern s32 _GLdirtycmaps;
extern s32 _GLsyncmapcolors;
extern s32 __iglooSoftPupPlanes;
extern s32 __iglooSoftPupShift;
extern ? sub_0f030000;

void _GLflushcmaps(void) {
    XFlush(gl_sstatep->unk1C->unk4, 0xFFF4FFE0);
    _GLdirtycmaps = 0;
}

void _GLmakemap(void *arg0) {
    bzero(sp, 0x2CU);
    XSetCloseDownMode(XOpenDisplay(arg0->unk4->unk80), 1);
    _GLloadCurrentCursorMap();
    _GLrecolorAllCursors();
}

void gl_g_blink(s64 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp10;
    gl_sstate *var_t0;
    s32 temp_at;
    s32 var_a3;
    s32 var_s0;
    s32 var_s5;
    void *temp_s1;
    void *temp_t0;

    var_t0 = gl_sstatep;
    temp_s1 = var_t0->unk1C;
    var_s0 = 0;
    sp10 = arg0;
    if (temp_s1->unk1C > 0) {
        var_s5 = 0;
loop_5:
        temp_t0 = temp_s1->unk20 + var_s5;
        temp_at = temp_t0->unk4;
        var_s0 += 1;
        var_s5 += 0x50;
        if (temp_at != 0) {
            var_a3 = var_s0 < temp_s1->unk1C;
            if (temp_t0->unk10 == 0) {
                var_a3 = var_s0 < temp_s1->unk1C;
                if (arg1 < (1 << temp_t0->unk8)) {
                    if (temp_t0->unkC != 0) {
                        var_a3 = var_s0 < temp_s1->unk1C;
                        if (arg1 != 0) {
                            goto block_2;
                        }
                    } else {
block_2:
                        XSGIMiscCycleColorCell(gl_sstatep->unk1C->unk4, temp_t0->unk4, sp10, sp);
                        goto block_3;
                    }
                }
            }
        } else {
block_3:
            var_a3 = var_s0 < temp_s1->unk1C;
        }
        var_t0 = gl_sstatep;
        if (var_a3 != 0) {
            goto loop_5;
        }
    }
    XFlush(var_t0->unk1C->unk4);
}

void determineGLVisual(s32 arg0) {
    switch (arg0) {                                 /* irregular */
    case 0x10:
        if (gl_wstatep->unk100 & 2) {
            return;
        }
        return;
    case 0x40:
        if (__iglooSoftPupPlanes != 0) {

        } else {
            return;
        }
        break;
    case 0x80:
        return;
    case 0x20:
        return;
    }
}

void do_mapcolor(s32 arg0, void *arg1, s32 arg2, s32 arg3) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    gl_wstate *temp_s5;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_t0;
    s32 var_a3;
    s32 var_s0;
    s32 var_s1;
    void ***temp_a1;
    void **temp_a3;

    var_s1 = 0;
    temp_s5 = gl_wstatep;
    if ((arg1 != NULL) && (arg1->unk0 > 0)) {
        var_s0 = 0;
        sp0 = M2C_ERROR(/* Read from unset register $a4 */) & 0xFF;
        sp8 = M2C_ERROR(/* Read from unset register $a5 */) & 0xFF;
        sp10 = arg3 + 1;
loop_11:
        temp_a1 = arg1->unk4 + var_s0;
        temp_a3 = temp_a1->unk0;
        var_s0 += 0x50;
        temp_a1_2 = temp_a1->unk4;
        var_a3 = (*temp_a3)->unk1C;
        if (arg2 == 0x40) {
            if (__iglooSoftPupShift != 0) {
                var_a3 = var_a3 >> __iglooSoftPupShift;
            }
        }
        if (var_a3 != 0) {
            temp_t0 = temp_s5->unk2F50;
            temp_a2 = arg3 << temp_t0;
            if (temp_a2 < var_a3) {
                if (temp_t0 != 0) {
                    if (arg3 > 0) {
                        __iglooFillColormap(arg0, temp_a1_2, temp_a2, (sp10 << temp_t0) - 1);
                    }
                } else if ((arg3 > 0) || (arg2 == 0x10) || (arg2 == 0x80)) {
                    __iglooStoreColor(arg0, temp_a1_2, arg3, sp0);
                }
            }
        }
        var_s1 += 1;
        if (var_s1 < arg1->unk0) {
            goto loop_11;
        }
    }
}

void gl_g_mapcolor(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a0_2;
    s32 *temp_a1;
    s32 *var_a1;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_v0;
    void *temp_a2;
    void *temp_t1;

    if (gl_wstatep != NULL) {
        temp_s0 = gl_wstatep->unk114->unk38;
        temp_v0 = gl_sstatep->unk1C->unk4;
        if (temp_s0 == 0x100) {
            if (arg0 > 0) {
                sp0 = (s64) temp_v0;
                if (arg0 < 4) {
                    temp_a2 = &sub_0f030000 - 0x6FF0;
                    temp_a0 = (arg2 << 8) | arg1 | (arg3 << 0x10) | 0x01000000;
                    temp_a1 = (arg0 * 4) + temp_a2;
                    *temp_a1 = temp_a0;
                    _GLrecolorAllCursors(temp_a0, temp_a1, temp_a2);
                    XFlush((s32) sp0);
                }
            }
        } else {
            sp0 = (s64) temp_v0;
            sp8 = arg3;
            sp10 = arg2;
            sp18 = arg1;
            gl_g_blink((s64) temp_s0);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                sp20 = M2C_ERROR(/* Read from unset register $v0 */);
                gl_g_blink(sp0, M2C_ERROR(/* Read from unset register $v0 */), temp_s0, arg0);
            }
            if (temp_s0 == 0x10) {
                temp_t1 = gl_sstatep->unk1C;
                temp_a0_2 = temp_t1 + 0x2C;
                var_a1 = temp_a0_2;
                if (M2C_ERROR(/* Read from unset register $v0 */) == temp_a0_2) {
                    var_a1 = temp_t1 + 0x1C;
                }
                if (*var_a1 != 0) {
                    gl_g_blink(sp0, (s32) var_a1, temp_s0, arg0);
                }
            }
            if (_GLsyncmapcolors != 0) {
                XFlush((s32) sp0);
            } else {
                _GLdirtycmaps = 1;
            }
        }
    }
}

void gl_g_getmcolor(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 sp0;
    s32 temp_a0;
    s32 temp_at;
    s32 temp_s0;
    s32 temp_t0;
    s32 var_a6;
    u32 temp_a7;
    void **var_a0;

    sp20 = arg3;
    sp18 = arg2;
    sp10 = arg1;
    sp30 = (s64) gl_wstatep;
    if (gl_wstatep != NULL) {
        temp_a0 = gl_wstatep->unk114->unk38;
        sp28 = (s64) temp_a0;
        gl_g_blink((s64) temp_a0);
        var_a6 = 0;
        if ((sp28 != 0x100) && (temp_t0 = *M2C_ERROR(/* Read from unset register $v0 */), temp_s0 = (arg0 << sp30->unk2F50) & 0xFFFF, (temp_t0 > 0))) {
            var_a0 = M2C_ERROR(/* Read from unset register $v0 */)->unk4;
            temp_a7 = var_a0 + (temp_t0 * 0x50);
loop_4:
            temp_at = (*var_a0)->unk20;
            var_a0 += 0x50;
            if (temp_s0 >= temp_at) {
                var_a6 += 0x50;
                if ((u32) var_a0 >= temp_a7) {

                } else {
                    goto loop_4;
                }
            } else {
                sp0 = temp_s0;
                XQueryColor(gl_sstatep->unk1C->unk4, (M2C_ERROR(/* Read from unset register $v0 */)->unk4 + var_a6)->unk4, sp);
                *sp10 = (s16) ((s32) (((f32) sp4 * 255.0f) / 65535.0f) & 0xFF);
                *sp18 = (s16) ((s32) (((f32) sp6 * 255.0f) / 65535.0f) & 0xFF);
                *sp20 = (s16) ((s32) (((f32) sp8 * 255.0f) / 65535.0f) & 0xFF);
            }
        }
    }
}

s32 _GLgetCurrentCursorColors(void *arg0) {
    s16 temp_v0;
    u32 temp_a1;
    u32 temp_a2;
    u32 temp_v1;
    void *temp_a3;

    temp_a3 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4F830)->unk-7FA4 - 0x6FF0;
    temp_a2 = temp_a3->unk8;
    temp_a1 = temp_a3->unkC;
    arg0->unk1C = (s16) ((temp_a1 & 0xFF) << 8);
    temp_v1 = temp_a3->unk4;
    arg0->unk10 = (s16) ((temp_a2 & 0xFF) << 8);
    arg0->unk4 = (s16) ((temp_v1 & 0xFF) << 8);
    arg0->unk1E = (s16) (((temp_a1 >> 8) & 0xFF) << 8);
    arg0->unk20 = (s16) (((temp_a1 >> 0x10) & 0xFF) << 8);
    temp_v0 = ((temp_a2 >> 0x10) & 0xFF) << 8;
    arg0->unk14 = temp_v0;
    arg0->unk12 = (s16) (((temp_a2 >> 8) & 0xFF) << 8);
    arg0->unk8 = (s16) (((temp_v1 >> 0x10) & 0xFF) << 8);
    arg0->unk6 = (s16) (((temp_v1 >> 8) & 0xFF) << 8);
    return (s32) temp_v0;
}

void _GLloadCurrentCursorMap(void) {

}

void _GLsetCurrentCursorColor(s32 arg0, void *arg1) {
    *((arg0 * 4) + ((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4F77C)->unk-7FA4 - 0x6FF0)) = ((s64) ((s64) ((s32) arg1->unk4 >> 8) << 0x30) >> 0x30) | (((s64) ((s64) ((s32) arg1->unk6 >> 8) << 0x30) >> 0x30) << 8) | (((s64) ((s64) ((s32) arg1->unk8 >> 8) << 0x30) >> 0x30) << 0x10) | 0x01000000;
}
