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
    /* 0x2B00 */ char pad2B00[0x358];               /* maybe part of currentVertex[0x36]? */
    /* 0x2E58 */ u8 unk2E58;                        /* inferred */
    /* 0x2E59 */ char pad2E59[3];                   /* maybe part of unk2E58[4]? */
    /* 0x2E5C */ f32 unk2E5C;                       /* inferred */
    /* 0x2E60 */ f32 unk2E60;                       /* inferred */
    /* 0x2E64 */ f32 unk2E64;                       /* inferred */
    /* 0x2E68 */ char pad2E68[0x80];                /* maybe part of unk2E64[0x21]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glBitmap(s32, s16, s16, s16);                     /* extern */
? glListBase(s32);                                  /* extern */
? glRasterPos3f(f32, f32);                          /* extern */
? gl_outcharmap(?);                                 /* extern */
u64 strlen(s64);                                    /* extern */

void __GLgl_beginstring(void) {
    f32 sp8;
    gl_wstate *temp_s3;

    temp_s3 = gl_wstatep;
    __iglooCloseMoveDraw();
    __iglooPixelStorei(0xCF5, 1);
    __iglooPixelStorei(0xCF2, 0);
    __iglooGetAndSetEnable(0x19, 0, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9D8A8) - 0x5278);
    if (temp_s3->unk2E58 != 1) {
        __iglooGetBooleanv(0xB08, sp);
        if (subroutine_arg0 == 1) {
            __iglooGetFloatv(0xB07, &sp8);
            glLoadRasterPosSGIXXX(sp8, sp10);
        }
    } else {
        glRasterPos3f(temp_s3->unk2E5C, temp_s3->unk2E64);
    }
}

void __GLgl_endstring(void) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooSetSavedEnable(0x19, 0, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9D7BC)->unk-5278);
    temp_s8->unk2E58 = 0;
}

void __GLgl_drawbitmap(void) {
    gl_outcharmap(0);
}

void __GLgl_outcharmap(s64 arg0) {
    if (__iglooGetRenderMode() != 0x1C00) {
        return;
    }
    __iglooCloseMoveDraw();
    glBitmap(subroutine_arg0->unk10 * 0x10, subroutine_arg0->unk6, subroutine_arg0->unk8, subroutine_arg0->unkA);
}

void __igloo_outcharmaps(s32 arg0, s64 arg1) {
    s64 var_s2;
    u64 temp_v0;
    u8 temp_a0;

    if (__iglooGetRenderMode() != 0x1C00) {
        return;
    }
    __iglooCloseMoveDraw();
    temp_v0 = strlen(subroutine_arg2);
    if (temp_v0 < 0xBU) {
        if (temp_v0 != 0) {
            var_s2 = subroutine_arg2;
            do {
                temp_a0 = *var_s2;
                var_s2 += 1;
                glCallList(temp_a0 + arg0);
            } while (var_s2 != (temp_v0 + subroutine_arg2));
        }
    } else {
        glListBase(arg0);
        glCallLists((s32) subroutine_arg0, 0x1401U, (void *) subroutine_arg2);
        glListBase(0);
    }
}
