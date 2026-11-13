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
    /* 0x0100 */ char pad100[0x14];                 /* maybe part of screenState[6]? */
    /* 0x0114 */ void *unk114;                      /* inferred */
    /* 0x0118 */ char pad118[0x9FC];                /* maybe part of unk114[0x280]? */
    /* 0x0B14 */ u8 unkB14;                         /* inferred */
    /* 0x0B15 */ char padB15[0x2B];                 /* maybe part of unkB14[0x2C]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glXSwapBuffers(s32, s32, gl_wstate *);            /* extern */
? glXSwapIntervalSGI(s64);                          /* extern */
extern ? sub_0f020000;

void __gl_swapbuffers(void) {
    if (*gl_wstatep->unk114->unk3C != 1) {
        glXSwapBuffers(gl_sstatep->unk1C->unk4, gl_wstatep->active->unk8, gl_wstatep);
    }
}

void gl_i_swapbuffers(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_swapbuffers();
}

void gl_c_swapbuffers(void) {
    if (saved_reg_gp->unk-5264 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7060);
        saved_reg_gp->unk-5264 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_swapbuffers(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_swapbuffers();
}

void gl_i_swapinterval(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    glXSwapIntervalSGI(arg0);
}

void gl_c_swapinterval(s16 arg0) {
    if (saved_reg_gp->unk-5260 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7070);
        saved_reg_gp->unk-5260 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_swapinterval(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glXSwapIntervalSGI((s64) *arg0);
}

void gl_zdraw(s64 arg0) {
    void *temp_a2;
    void *temp_a4;

    temp_a2 = gl_wstatep->unk114;
    if (temp_a2->unk38 == 0x10) {
        temp_a4 = temp_a2->unk3C;
        if (arg0 != 0) {
            if (gl_wstatep->unkB14 != 0) {
                gl_ErrorHandler(0x62, 2, &sub_0f020000 + 0x21A0, gl_wstatep);
            } else {
                temp_a4->unk34 = (u16) (temp_a4->unk34 | 4);
            }
        } else {
            temp_a4->unk34 = (u16) (temp_a4->unk34 & ~4);
        }
    }
}

void gl_i_zdraw(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_zdraw(arg0);
}

void gl_c_zdraw(s32 arg0) {
    if (saved_reg_gp->unk-525C == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7080);
        saved_reg_gp->unk-525C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_zdraw(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_zdraw((s64) *arg0);
}

void gl_g_RGBsize(s32 arg0) {
    void *temp_a3;

    temp_a3 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9C744)->unk-5B00)->unk114;
    if (temp_a3->unk38 == 0x10) {
        temp_a3->unk3C->unk24 = arg0;
    }
}

void gl_g_overlay(s32 arg0) {
    void *temp_a3;

    temp_a3 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9C70C)->unk-5B00)->unk114;
    if ((temp_a3->unk38 != 0x10) || ((arg0 != 0) && (arg0 != 2) && (arg0 != 4) && (arg0 != 8))) {
        return;
    }
    temp_a3->unk1C = arg0;
}

void gl_g_underlay(s32 arg0) {
    void *temp_a3;

    temp_a3 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9C6B0)->unk-5B00)->unk114;
    if ((temp_a3->unk38 != 0x10) || ((arg0 != 0) && (arg0 != 2) && (arg0 != 4) && (arg0 != 8))) {
        return;
    }
    temp_a3->unk20 = arg0;
}

void gl_g_zbsize(s32 arg0) {
    void *temp_a3;

    temp_a3 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9C654)->unk-5B00)->unk114;
    if (temp_a3->unk38 == 0x10) {
        temp_a3->unk3C->unk2C = arg0;
    }
}

void gl_g_acsize(s32 arg0) {
    void *temp_a3;

    temp_a3 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9C61C)->unk-5B00)->unk114;
    if (temp_a3->unk38 != 0x10) {
        return;
    }
    temp_a3->unk24 = arg0;
}

void gl_g_stensize(s32 arg0) {
    void *temp_a3;

    temp_a3 = (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9C5E4)->unk-5B00)->unk114;
    if ((temp_a3->unk38 == 0x10) && ((arg0 >= 0) || (arg0 < 9))) {
        temp_a3->unk28 = arg0;
    }
}

void DrawBufferIrisToOpen(s32 arg0) {
    s64 temp_v0;

    temp_v0 = (s64) ((arg0 & ~4) << 0x30) >> 0x30;
    switch (temp_v0) {
    default:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
        /* fallthrough */
    case 17:
        return;
    case 0:
        return;
    case 1:
    case 25:
        return;
    case 2:
    case 26:
        return;
    case 3:
    case 27:
        return;
    case 11:
        return;
    case 19:
        return;
    case 10:
        return;
    case 18:
        return;
    case 9:
        return;
    }
}

void gl_frontbuffer(s64 arg0) {
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a3;
    void *temp_a2;

    temp_a2 = gl_wstatep->unk114->unk3C;
    temp_a3 = temp_a2->unk34;
    if (arg0 != 0) {
        temp_a0 = (temp_a3 | 2) & 0xFFFF;
        temp_a2->unk34 = temp_a0;
        gl_g_stensize((s32) ((s64) ((s64) temp_a0 << 0x30) >> 0x30), temp_a2, temp_a3);
        __iglooDrawBuffer(M2C_ERROR(/* Read from unset register $v0 */));
    } else if ((temp_a2->unk0 == 2) || (temp_a3 & 4)) {
        temp_a0_2 = temp_a3 & ~2 & 0xFFFF;
        temp_a2->unk34 = temp_a0_2;
        gl_g_stensize((s32) ((s64) ((s64) temp_a0_2 << 0x30) >> 0x30), temp_a2, temp_a3);
        __iglooDrawBuffer(M2C_ERROR(/* Read from unset register $v0 */));
    }
}

void gl_backbuffer(s64 arg0) {
    u16 temp_a2;
    u16 var_a2;
    void *temp_a3;

    temp_a3 = gl_wstatep->unk114->unk3C;
    if (temp_a3->unk0 != 1) {
        temp_a2 = temp_a3->unk34;
        if (arg0 != 0) {
            var_a2 = (temp_a2 | 1) & 0xFFFF;
        } else {
            var_a2 = temp_a2 & ~1 & 0xFFFF;
        }
        temp_a3->unk34 = var_a2;
        gl_g_stensize((s32) ((s64) ((s64) var_a2 << 0x30) >> 0x30), (void *) var_a2, (u16) temp_a3);
        __iglooDrawBuffer(M2C_ERROR(/* Read from unset register $v0 */));
    }
}

void gl_leftbuffer(s64 arg0) {
    u16 temp_a3;
    u16 var_a3;
    void *temp_a2;
    void *temp_a2_2;

    temp_a2 = gl_wstatep->unk114;
    temp_a2_2 = temp_a2->unk3C;
    if ((temp_a2->unk38 == 0x10) && (temp_a2_2->unk8 != 0)) {
        temp_a3 = temp_a2_2->unk34;
        if (arg0 != 0) {
            var_a3 = (temp_a3 | 8) & 0xFFFF;
        } else {
            var_a3 = temp_a3 & ~8 & 0xFFFF;
        }
        temp_a2_2->unk34 = var_a3;
        gl_g_stensize((s32) ((s64) ((s64) var_a3 << 0x30) >> 0x30), temp_a2_2, var_a3);
        __iglooDrawBuffer(M2C_ERROR(/* Read from unset register $v0 */));
    }
}

void gl_rightbuffer(s64 arg0) {
    u16 temp_a3;
    u16 var_a3;
    void *temp_a2;
    void *temp_a2_2;

    temp_a2 = gl_wstatep->unk114;
    temp_a2_2 = temp_a2->unk3C;
    if ((temp_a2->unk38 == 0x10) && (temp_a2_2->unk8 != 0)) {
        temp_a3 = temp_a2_2->unk34;
        if (arg0 != 0) {
            var_a3 = (temp_a3 | 0x10) & 0xFFFF;
        } else {
            var_a3 = temp_a3 & ~0x10 & 0xFFFF;
        }
        temp_a2_2->unk34 = var_a3;
        gl_g_stensize((s32) ((s64) ((s64) var_a3 << 0x30) >> 0x30), temp_a2_2, var_a3);
        __iglooDrawBuffer(M2C_ERROR(/* Read from unset register $v0 */));
    }
}

void gl_i_frontbuffer(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_frontbuffer(arg0);
}

void gl_c_frontbuffer(s32 arg0) {
    if (saved_reg_gp->unk-5258 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7090);
        saved_reg_gp->unk-5258 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_frontbuffer(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_frontbuffer((s64) *arg0);
}

void gl_i_backbuffer(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_backbuffer(arg0);
}

void gl_c_backbuffer(s32 arg0) {
    if (saved_reg_gp->unk-5254 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x70A0);
        saved_reg_gp->unk-5254 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_backbuffer(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_backbuffer((s64) *arg0);
}

void gl_i_leftbuffer(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_leftbuffer(arg0);
}

void gl_c_leftbuffer(s32 arg0) {
    if (saved_reg_gp->unk-5250 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x70B0);
        saved_reg_gp->unk-5250 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_leftbuffer(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_leftbuffer((s64) *arg0);
}

void gl_i_rightbuffer(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_rightbuffer(arg0);
}

void gl_c_rightbuffer(s32 arg0) {
    if (saved_reg_gp->unk-524C == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x70C0);
        saved_reg_gp->unk-524C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_rightbuffer(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_rightbuffer((s64) *arg0);
}
