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
    /* 0x0100 */ char pad100[0xA40];                /* maybe part of screenState[0x291]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x1DC];               /* maybe part of currentVertex[0x1E]? */
    /* 0x2CDC */ s32 unk2CDC;                       /* inferred */
    /* 0x2CE0 */ f32 unk2CE0;                       /* inferred */
    /* 0x2CE4 */ ?32 unk2CE4;                       /* inferred */
    /* 0x2CE8 */ f32 unk2CE8;                       /* inferred */
    /* 0x2CEC */ char pad2CEC[0x1FC];               /* maybe part of unk2CE8[0x80]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glFeedbackBuffer(?, ?, ? *);                      /* extern */
? glVertex3i(f32, ?32, f32);                        /* extern */
extern s32 __iglooMixedModel;
extern s32 __iglooSoftPupShift;

s32 gl_g_getbuffer(void) {
    s32 var_a0;
    s32 var_a1;
    s32 var_v0;
    u16 temp_a3;
    void *temp_a4;

    temp_a4 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF7308C)->unk-5B00)->unk114->unk3C;
    var_v0 = 0;
    if (temp_a4->unk0 != 1) {
        temp_a3 = temp_a4->unk34;
        var_a0 = temp_a3 & 2;
        if (temp_a3 & 1) {
            var_v0 = 1;
            var_a0 = temp_a3 & 2;
        }
        var_a1 = temp_a3 & 4;
        if (var_a0 != 0) {
            var_v0 |= 2;
            var_a1 = temp_a3 & 4;
        }
        if (var_a1 != 0) {
            var_v0 |= 4;
        }
        return var_v0;
    }
    return 0;
}

s32 gl_g_getothermonitor(void) {
    return 0;
}

s32 gl_g_getvideo(void) {
    return 0;
}

s32 gl_g_getmap(void) {
    return 0;
}

void gl_g_gRGBcolor(s16 *arg0, s64 arg1, s64 arg2) {
    s64 sp30;
    s64 sp28;

    sp30 = arg1;
    sp28 = arg2;
    __iglooGetFloatv(0xB00, sp);
    *arg0 = (s16) (s32) (subroutine_arg0 * 255.0f);
    *sp30 = (s16) (s32) (subroutine_arg1 * 255.0f);
    *sp28 = (s16) (s32) (subroutine_arg2 * 255.0f);
}

s32 gl_g_getbackface(void) {
    s32 var_s7;

    var_s7 = 0;
    if (__iglooIsEnabled(0xB44) != 0) {
        __iglooGetIntegerv(0xB45, sp);
        if (subroutine_arg0 == 0x405) {
            var_s7 = 1;
        }
    }
    return var_s7;
}

s32 gl_g_getcolor(void) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooGetFloatv(0xB01, sp);
    return (s32) subroutine_arg0 >> temp_s8->unk2F50;
}

s32 gl_g_getcpos(s16 *arg0, s64 arg1) {
    s64 sp30;
    s32 sp8;
    s32 sp4;
    s16 temp_v0;

    sp30 = arg1;
    __GLgetorigin(sp, &sp4);
    __iglooGetIntegerv(0xB07, &sp8);
    *arg0 = sp8 + subroutine_arg0;
    temp_v0 = sp4 + spC;
    *sp30 = temp_v0;
    return (s32) temp_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x90, 0x94, 0xa0, 0xa4, 0xa8, 0xac, 0xd0, 0xd4], gap at: 0xb8. */
s32 gl_g_getgpos(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    f64 sp88;
    f64 sp80;
    f64 sp78;
    f64 sp70;
    ? sp20;
    ? sp18;
    ? sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    gl_wstate *temp_s0;
    s32 temp_s1;
    s32 temp_v0;

    unkspB0 = arg3;
    unkspB8 = arg2;
    unkspC0 = arg1;
    unkspC8 = arg0;
    temp_s0 = gl_wstatep;
    temp_s1 = __iglooGetCurrentContextInfo();
    __iglooGetViewport(sp, &sp4, &sp8, &spC);
    sp70 = (bitwise f64) (f32) spC;
    sp78 = (bitwise f64) (f32) sp8;
    sp80 = (bitwise f64) (f32) sp4;
    sp88 = (bitwise f64) (f32) subroutine_arg0;
    __iglooGetDepthRange(&sp10, &sp18);
    unksp98 = __iglooGetRenderMode();
    glFeedbackBuffer(0x14, 0x604, &sp20);
    __iglooRenderMode(0x1C01, temp_s1);
    glBegin(0U);
    if (temp_s0->unk2CDC != 1) {
        glVertex3i(temp_s0->unk2CE0, temp_s0->unk2CE4, temp_s0->unk2CE8);
    } else {
        glVertex3f(temp_s0->unk2CE0, temp_s0->unk2CE8, M2C_ERROR(/* Read from unset register $a2 */));
    }
    glEnd();
    temp_v0 = __iglooRenderMode(unksp98, temp_s1);
    if (temp_v0 < 5) {
        *unkspC8 = 0.0f;
        *unkspC0 = 0.0f;
        *unkspB8 = 0.0f;
        *unkspB0 = 0.0f;
    } else {
        *unkspC8 = (f32) (((second half of f64) / (bitwise f32) sp78) + -1.0f);
        *unkspC0 = (f32) ((((sp28 - (bitwise f32) sp80) * (second half of f64)) / (bitwise f32) sp70) + -1.0f);
        *unkspB8 = (f32) (((sp2C - (bitwise f32) sp88) * (second half of f64)) + -1.0f);
        *unkspB0 = sp30;
    }
    return temp_v0;
}

void gl_g_gethgram(void) {

}

s32 gl_g_gethitcode(void) {
    return 0;
}

s32 gl_g_getlsbackup(void) {
    return 0;
}

s32 gl_g_getlwidth(void) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF72C00;
    return (s32) ((*temp_at->unk-5B00)->unk114->unk10 + temp_at->unk-4C9C);
}

void gl_g_getminmax(void) {

}

s32 gl_g_getresetls(void) {
    return 0;
}

void gl_g_getscrbox(void) {

}

s32 gl_g_getshade(void) {
    return __GLgetcolor();
}

s32 gl_g_getsm(void) {
    return (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF72B80)->unk-5B00)->unk114->unk14;
}

s32 gl_g_getviewport(s16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s32 spC;
    s32 sp8;
    s32 sp4;

    sp28 = arg3;
    sp30 = arg2;
    sp38 = arg1;
    __iglooGetExtViewport(sp, &sp4, &sp8, &spC);
    *arg0 = (s16) subroutine_arg0;
    *sp30 = (s16) sp4;
    *sp38 = (s16) ((subroutine_arg0 + sp8) - 1);
    *sp28 = (s16) ((sp4 + spC) - 1);
    return (s32) sp38;
}

s32 gl_g_getwritemask(void) {
    s64 sp10;
    s64 sp8;
    u32 sp0;
    s32 temp_at;
    u32 var_v0;

    var_v0 = 0;
    temp_at = *(s32 *)0x1004;
    sp0 = 0;
    sp10 = (s64) temp_at;
    sp8 = (s64) gl_wstatep;
    if (temp_at != 0) {
        __iglooGetIndexMask(sp);
        var_v0 = sp0;
        if (sp10->unk14->unkC > 0) {
            if (__iglooMixedModel == 0) {
                var_v0 = sp0;
                if (__iglooSoftPupShift != 0) {
                    var_v0 = var_v0 >> sp8->unk2F50;
                }
            }
        } else {
            var_v0 = sp0;
        }
    }
    return (s32) var_v0;
}

s32 gl_g_getzbuffer(void) {
    return __iglooIsEnabled(0xB71);
}
