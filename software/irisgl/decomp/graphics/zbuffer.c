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
    /* 0x0118 */ char pad118[0xA04];                /* maybe part of unk114[0x282]? */
    /* 0x0B1C */ s8 unkB1C;                         /* inferred */
    /* 0x0B1D */ char padB1D[0x23];                 /* maybe part of unkB1C[0x24]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x3E8];               /* maybe part of currentVertex[0x3F]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glPassThrough(f32);                               /* extern */
? glPolygonOffsetEXT(f64);                          /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void im_zbuffer(s64 arg0) {
    s64 sp10;
    void *temp_a3;

    temp_a3 = gl_wstatep->unk114;
    if (temp_a3->unk38 == 0x10) {
        if (arg0 == 0) {
            sp10 = (s64) gl_wstatep;
            __iglooSetEnable(0xB71, 0, gl_wstatep, temp_a3);
            sp10->unkB14 = 0;
        } else {
            sp10 = (s64) gl_wstatep;
            if (temp_a3->unk3C->unk34 & 4) {
                gl_ErrorHandler(0x62, 2, &sub_0f020000 + 0x6E78, temp_a3);
            } else {
                __iglooSetEnable(0xB71, 1, gl_wstatep, temp_a3);
                sp10->unkB14 = 1;
            }
        }
    }
    if (__iglooGetRenderMode() == 0x1C01) {
        glPassThrough(subroutine_arg0);
    }
}

void gl_i_zbuffer(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    im_zbuffer(arg0);
}

void gl_c_zbuffer(s32 arg0) {
    if (saved_reg_gp->unk-4CE4 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x4DF8);
        saved_reg_gp->unk-4CE4 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_zbuffer(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    im_zbuffer((s64) *arg0);
}

void gl_i_zfunction(s64 arg0) {
    s64 sp18;
    s64 sp8;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp0 = arg0;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    sp8 = (s64) gl_wstatep;
    if (gl_wstatep->unk114->unk38 == 0x10) {
        sp18 = var_ra;
        __iglooDepthFunc(sp0 + 0x200, 0x10);
        sp8->unkB18 = (s32) sp0;
    }
}

void gl_c_zfunction(s32 arg0) {
    if (saved_reg_gp->unk-4CE0 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x4DE8);
        saved_reg_gp->unk-4CE0 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_zfunction(s32 *arg0) {
    s64 sp18;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    sp0 = (s64) gl_wstatep;
    if (gl_wstatep->unk114->unk38 == 0x10) {
        sp18 = var_ra;
        __iglooDepthFunc(*arg0 + 0x200, 0x10);
        sp0->unkB18 = (s32) *arg0;
    }
}

void gl_i_zwritemask(s64 arg0) {
    s8 temp_a0;

    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw(arg0);
    }
    temp_a0 = arg0 != 0;
    gl_wstatep->unkB1C = temp_a0;
    __iglooDepthMask(temp_a0);
}

void gl_c_zwritemask(s32 arg0) {
    if (saved_reg_gp->unk-4CDC == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x4DD8);
        saved_reg_gp->unk-4CDC = 1;
    }
    gl_compile(4, sp);
}

void gl_n_zwritemask(s32 *arg0) {
    s8 temp_a0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    temp_a0 = *arg0 != 0;
    gl_wstatep->unkB1C = temp_a0;
    __iglooDepthMask(temp_a0);
}

void gl_polygonOffset(f64 arg0) {
    if (__iglooIsExtensionSupported(9) == 1) {
        if ((bitwise f32) subroutine_arg0 != 0.0f) {
            glPolygonOffsetEXT(subroutine_arg0);
            __iglooSetEnable(0x8037, 1);
        } else {
            __iglooSetEnable(0x8037, 0);
        }
    }
}

void gl_i_displacepolygon(f64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_polygonOffset(arg0);
}

void gl_c_displacepolygon(f32 arg0) {
    if (saved_reg_gp->unk-4CD8 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x4DC8);
        saved_reg_gp->unk-4CD8 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_displacepolygon(f32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_polygonOffset((bitwise f64) *arg0);
}

void im_zsource(void) {

}

void gl_i_zsource(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    im_zsource(arg0);
}

void gl_c_zsource(s32 arg0) {
    if (saved_reg_gp->unk-4CD4 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x4DB8);
        saved_reg_gp->unk-4CD4 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_zsource(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    im_zsource((s64) *arg0);
}
