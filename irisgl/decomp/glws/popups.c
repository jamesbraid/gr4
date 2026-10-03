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
    /* 0x003C */ char pad3C[0x94];                  /* maybe part of currentNormal[0xD]? */
    /* 0x00D0 */ ? (*unkD0)(s32, s32);              /* inferred */
    /* 0x00D4 */ char padD4[0xC];                   /* maybe part of unkD0[4]? */
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
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

s32 getmmode();                                     /* extern */
? loadmatrix(void *);                               /* extern */
? mmode(?);                                         /* extern */
? ortho2(f32, f32, void **, s32);                   /* extern */
? viewport(?, s16, ?, s16);                         /* extern */
extern s32 __iglooSoftPupPlanes;
extern ? sub_0f030000;

void gl_g_pupmode(void) {
    saved_reg_gp->unk-4F8C = __GLgetdrawmode();
    __GLdrawmode(0x20);
}

void gl_g_endpupmode(void) {
    __GLdrawmode(saved_reg_gp->unk-4F8C);
}

void gl_wmfullscrn(s32 arg0) {
    gl_wstate *temp_s1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s4;
    u32 temp_a7;
    void *temp_s2;

    temp_s2 = *(void **)0x1004;
    temp_s1 = gl_wstatep;
    temp_v0 = __GLgetdrawmode();
    temp_a7 = temp_s1->active;
    var_s4 = 0;
    if (temp_a7 != 0) {
        switch (temp_v0) {                          /* irregular */
        case 0x10:
            var_s4 = temp_a7->unk8;
            break;
        case 0x40:
            if (__iglooSoftPupPlanes != 0) {
                var_s4 = temp_a7->unk88;
            } else {
                var_s4 = temp_a7->unk8C;
            }
            break;
        case 0x80:
            var_s4 = temp_a7->unk90;
            break;
        case 0x20:
            var_s4 = temp_a7->unk88;
            break;
        }
        if (var_s4 != 0) {
            temp_v0_2 = temp_a7->unk20;
            if (arg0 != 1) {
                temp_a7->unk20 = (s32) (temp_v0_2 & ~1);
                if (temp_s2->unk24 != 0) {
                    __iglooCalculateBias(temp_a7->unk4, temp_a7->unk8, var_s4, temp_a7 + 0xAC);
                }
            } else {
                temp_a7->unkAC = 0;
                temp_a7->unkB0 = 0;
                temp_a7->unk20 = (s32) (temp_v0_2 | 1);
            }
            if (temp_s2->unk16F != arg0) {
                temp_s2->unk16C = arg0;
                temp_s1->unkD0(var_s4, arg0);
            }
        }
    }
}

void gl_g_fullscrn(void) {
    s32 temp_v0;

    gl_wmfullscrn(1);
    viewport(0, gl_sstatep->unk2, 0, gl_sstatep->unk6);
    temp_v0 = getmmode();
    switch (temp_v0) {                              /* irregular */
    case 0:
        ortho2(-0.5f, -0.5f, gl_sstatep->display, gl_sstatep->screen);
        break;
    case 1:
        ortho2(-0.5f, -0.5f, gl_sstatep->display, gl_sstatep->screen);
        mmode(2);
        loadmatrix(&sub_0f030000 - 0x6038);
        mmode(1);
        break;
    case 2:
        ortho2(-0.5f, -0.5f, gl_sstatep->display, gl_sstatep->screen);
        loadmatrix(&sub_0f030000 - 0x6038);
        break;
    }
}

void gl_g_endfullscrn(void) {
    gl_wmfullscrn(0);
    __GLreshapeviewport();
}
