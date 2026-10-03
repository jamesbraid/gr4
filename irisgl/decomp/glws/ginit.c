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
    /* 0x2B00 */ char pad2B00[0x1EC];               /* maybe part of currentVertex[0x1F]? */
    /* 0x2CEC */ s32 unk2CEC;                       /* inferred */
    /* 0x2CF0 */ char pad2CF0[0xC4];                /* maybe part of unk2CEC[0x32]? */
    /* 0x2DB4 */ s16 unk2DB4;                       /* inferred */
    /* 0x2DB6 */ char pad2DB6[0x132];               /* maybe part of unk2DB4[0x9A]? */
} gl_wstate;                                        /* size = 0x2EE8 */

extern ? sub_0f020000;

void gl_dogreset(void) {
    gl_g_greset();
}

void do_ginit(s64 arg0) {
    _GLisginit();
    if (__GLwinopen(&sub_0f020000 + 0x3158) >= 0) {
        if (subroutine_arg0 != 0) {
            __GLgreset();
        } else {
            __GLcmode();
            __GLsinglebuffer();
            __GLonemap();
            gl_g_greset();
        }
    }
}

void gl_g_ginit(void) {
    gl_dogreset(1);
}

void gl_g_gbegin(void) {
    gl_dogreset(0);
}

void gl_g_greset(void) {
    gl_g_greset();
    gl_g_greset();
}

void gl_reset_colormap(void) {
    __GLdrawmode(0x10);
    __GLmapcolor(0, 0, 0, 0);
    __GLmapcolor(1, 0xFF, 0, 0);
    __GLmapcolor(2, 0, 0xFF, 0);
    __GLmapcolor(3, 0xFF, 0xFF, 0);
    __GLmapcolor(4, 0, 0, 0xFF);
    __GLmapcolor(5, 0xFF, 0, 0xFF);
    __GLmapcolor(6, 0, 0xFF, 0xFF);
    __GLmapcolor(7, 0xFF, 0xFF, 0xFF);
    __GLdrawmode(0x100);
    __GLmapcolor(1, 0xFF, 0, 0);
    __GLmapcolor(2, 0xFF, 0xFF, 0xFF);
    __GLmapcolor(3, 0xFF, 0, 0);
    __GLdrawmode(0x20);
    __GLmapcolor(1, 0xFF, 0, 0);
    __GLmapcolor(2, 0, 0, 0);
    __GLmapcolor(3, 0xFF, 0xFF, 0xFF);
    __GLdrawmode(0x10);
}

void gl_reset_attributes(void) {
    gl_wstate *temp_s1;
    s32 temp_s1_2;
    s32 temp_v0;

    temp_s1 = gl_wstatep;
    __GLcmode();
    __GLsinglebuffer();
    __GLonemap();
    __GLoverlay(2);
    __GLunderlay(0);
    __GLacsize(0);
    __GLzbsize(0x20);
    gl_gconfig();
    __GLcloseobj();
    if (temp_s1->unk2DB4 != 0) {
        __GLendpick(0);
    }
    if (temp_s1->unk2CEC == 2) {
        __GLendselect(0);
    }
    if (temp_s1->unk2CEC == 1) {
        __GLendfeedback(0);
    }
    __GLdrawmode(0x10);
    __GLafunction(0, 7);
    __GLbackface(0);
    __GLblendfunction(1, 0);
    __GLconcave(0);
    __GLsetcursor(0, 1, 1);
    __GLdepthcue(0);
    __GLdither(1);
    __GLfont(0);
    __GLfrontface(0);
    __GLsetlinestyle(0);
    __GLlinewidth(1);
    __GLlinesmooth(0);
    __GLlogicop(3);
    __GLpntsmooth(0);
    __GLlmcolor(0);
    temp_s1_2 = __GLgetgdesc(4);
    temp_v0 = __GLgetgdesc(5);
    __GLlsetdepth(temp_s1_2, temp_v0);
    __GLlshaderange(0, 7, temp_s1_2, temp_v0);
    __GLlsrepeat(1);
    __GLmmode(0);
    __GLpicksize(0xA, 0xA);
    __GLrectzoom(1.0f);
    __GLsetpattern(0);
    __GLshademodel(1);
    __GLsubpixel(0);
    __GLzbuffer(0);
    __GLzdraw(0);
    __GLzfunction(3);
    __GLzsource(0);
    __GLzwritemask(-1);
    __GLdisplacepolygon(0);
    __GLcurson();
    __GLviewport(0, gl_sstatep->unk2, 0, gl_sstatep->unk6);
    __GLortho2(-0.5f, -0.5f, gl_sstatep->display, gl_sstatep->screen);
}
