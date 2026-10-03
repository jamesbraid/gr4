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
    /* 0x0100 */ char pad100[0x14];                 /* maybe part of screenState[6]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0xA28];                /* maybe part of unk114[0x28B]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glHint(?, ?);                                     /* extern */
extern ? sub_0f030000;

void gl_linesmooth(s64 arg0) {
    s64 sp10;
    s64 var_ra;

    var_ra = saved_reg_ra;
    gl_wstatep->modelviewStack.stack[1][3][2] = (bitwise f32) arg0;
    if (arg0 & 1) {
        if (!(arg0 & 2)) {
            if (arg0 & 4) {
                goto block_4;
            }
            glHint(0xC52, 0x1101);
        } else {
block_4:
            glHint(0xC52, 0x1102);
        }
        __iglooSetEnable(0xB20, 1);
        var_ra = sp10;
    }
    if (arg0 == 0) {
        sp10 = var_ra;
        __iglooSetEnable(0xB20, 0);
    }
}

void _pntsmooth(s64 arg0) {
    s64 sp10;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (arg0 & 1) {
        if (arg0 & 2) {
            glHint(0xC51, 0x1102);
        } else {
            glHint(0xC51, 0x1101);
        }
        __iglooSetEnable(0xB10, 1);
        var_ra = sp10;
    }
    if (arg0 == 0) {
        sp10 = var_ra;
        __iglooSetEnable(0xB10, 0);
    }
}

void _polysmooth(s64 arg0) {
    s64 sp10;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (arg0 & 1) {
        goto block_1;
    }
    if (arg0 & 2) {
block_1:
        if (gl_wstatep->unk114->unk3C->unk4 == 0) {
            glHint(0xC53, 0x1101);
            __iglooSetEnable(0xB41, 1);
            var_ra = sp10;
        }
    }
    if (arg0 == 0) {
        sp10 = var_ra;
        __iglooSetEnable(0xB41, 0);
    }
}

void gl_i_linesmooth(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_linesmooth(arg0);
}

void gl_c_linesmooth(s32 arg0) {
    if (saved_reg_gp->unk-4E1C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A58);
        saved_reg_gp->unk-4E1C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_linesmooth(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_linesmooth((s64) *arg0);
}

void gl_i_subpixel(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
}

void gl_c_subpixel(s32 arg0) {
    if (saved_reg_gp->unk-4E18 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A48);
        saved_reg_gp->unk-4E18 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_subpixel(s64 arg0) {
    s64 sp8;

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        __iglooNCloseMoveDraw();
    }
}

void gl_i_pntsmooth(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    _pntsmooth(arg0);
}

void gl_c_pntsmooth(s32 arg0) {
    if (saved_reg_gp->unk-4E14 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A38);
        saved_reg_gp->unk-4E14 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_pntsmooth(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    _pntsmooth((s64) *arg0);
}

void gl_i_polysmooth(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    _polysmooth(arg0);
}

void gl_c_polysmooth(s32 arg0) {
    if (saved_reg_gp->unk-4E10 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A28);
        saved_reg_gp->unk-4E10 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_polysmooth(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    _polysmooth((s64) *arg0);
}

void gl_g_smoothline(void) {
    gl_linesmooth();
}
