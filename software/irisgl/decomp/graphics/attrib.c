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

? glCullFace(?);                                    /* extern */
? glPassThrough(f32, ?, s32, ?, ?);                 /* extern */
? glPointSize(f32, s64);                            /* extern */
extern ? sub_0f020000;

void gl_i_pntsize(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    glPointSize((f32) arg0, arg0);
}

void gl_c_pntsize(s16 arg0) {
    if (saved_reg_gp->unk-52AC == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6ED8);
        saved_reg_gp->unk-52AC = 1;
    }
    gl_compile(4, sp);
}

void gl_n_pntsize(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glPointSize((f32) *arg0);
}

void gl_i_pntsizef(f64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    glPointSize((f32) arg0);
}

void gl_c_pntsizef(f32 arg0) {
    if (saved_reg_gp->unk-52A8 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6EE8);
        saved_reg_gp->unk-52A8 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_pntsizef(f32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    glPointSize(*arg0);
}

void gl_i_linewidth(s16 arg0) {
    s64 sp18;
    s16 sp2;
    s8 sp1;
    s8 sp0;
    s16 var_a0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    var_a0 = arg0;
    gl_wstatep->unk114->unk10 = (f32) arg0;
    if (arg0 != 0) {
        sp18 = var_ra;
    } else {
        sp18 = var_ra;
        var_a0 = 1;
    }
    __iglooLineWidth((f32) var_a0, var_a0);
    if (__iglooGetRenderMode() == 0x1C01) {
        sp2 = arg0;
        sp1 = 4;
        sp0 = 0x3F;
        glPassThrough((f32) sp0, 0x1C01, 4, 0x3F);
    }
}

void gl_c_linewidth(s16 arg0) {
    if (saved_reg_gp->unk-52A4 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6EF8);
        saved_reg_gp->unk-52A4 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_linewidth(s16 *arg0) {
    s64 sp18;
    s16 sp2;
    s8 sp1;
    s8 sp0;
    s16 temp_a1;
    s16 temp_a2;
    s16 var_a0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    temp_a1 = *arg0;
    gl_wstatep->unk114->unk10 = (f32) temp_a1;
    temp_a2 = *arg0;
    var_a0 = 1;
    if (temp_a2 != 0) {
        var_a0 = temp_a2;
    }
    sp18 = var_ra;
    __iglooLineWidth((f32) var_a0, var_a0, temp_a1, temp_a2);
    if (__iglooGetRenderMode() == 0x1C01) {
        sp1 = 4;
        sp0 = 0x3F;
        sp2 = *arg0;
        glPassThrough((f32) sp0);
    }
}

void gl_i_linewidthf(f64 arg0) {
    s64 sp18;
    f64 sp8;
    s16 sp2;
    s8 sp1;
    s8 sp0;
    f64 var_f12;
    s32 temp_f2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp8 = arg0;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    var_f12 = 5.263544247e-315;
    gl_wstatep->unk114->unk10 = (bitwise f32) sp8;
    if ((f32) sp8 == (second half of f64)) {

    } else {
        var_f12 = sp8;
    }
    sp18 = var_ra;
    __iglooLineWidth((f32) var_f12);
    if (__iglooGetRenderMode() == 0x1C01) {
        temp_f2 = (s32) ((f32) sp8 * (second half of f64));
        sp1 = 5;
        sp0 = 0x3F;
        sp2 = (s16) temp_f2;
        glPassThrough((f32) sp0, 0x1C01, temp_f2, 5, 0x3F);
    }
}

void gl_c_linewidthf(f32 arg0) {
    if (saved_reg_gp->unk-52A0 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6F08);
        saved_reg_gp->unk-52A0 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_linewidthf(f32 *arg0) {
    s64 sp18;
    s16 sp2;
    s8 sp1;
    s8 sp0;
    f32 temp_f4;
    f32 var_f12;
    s32 temp_f2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp18;
    }
    gl_wstatep->unk114->unk10 = (f32) *arg0;
    temp_f4 = *arg0;
    var_f12 = temp_f4;
    if (temp_f4 == 0.0f) {
        sp18 = var_ra;
        var_f12 = 1.0f;
    } else {
        sp18 = var_ra;
    }
    __iglooLineWidth(var_f12);
    if (__iglooGetRenderMode() == 0x1C01) {
        temp_f2 = (s32) (*arg0 * 128.0f);
        sp1 = 5;
        sp0 = 0x3F;
        sp2 = (s16) temp_f2;
        glPassThrough((f32) sp0, 0x1C01, temp_f2, 5);
    }
}

void _CallOpenGLCulling(s32 arg0, s32 arg1) {
    if (arg1 != 0) {
        if (arg0 != 0) {
            glCullFace(0x408);
            __iglooSetEnable(0xB44, 1);
        } else {
            glCullFace(0x405);
            __iglooSetEnable(0xB44, 1);
        }
    } else if (arg0 != 0) {
        glCullFace(0x404);
        __iglooSetEnable(0xB44, 1);
    } else {
        __iglooSetEnable(0xB44, 0);
    }
}

void __gl_backface(gl_wstate *arg0) {
    s16 temp_a5;
    s16 var_at;

    temp_a5 = gl_wstatep->unkBCC;
    if (arg0 != NULL) {
        var_at = temp_a5 | 4;
    } else {
        var_at = temp_a5 & ~4;
    }
    gl_wstatep->unkBCC = var_at;
    gl_n_linewidthf((f32 *) (temp_a5 & 8), arg0, gl_wstatep);
}

void __gl_frontface(s64 arg0) {
    s16 temp_a4;
    s16 var_at;

    temp_a4 = gl_wstatep->unkBCC;
    if (arg0 != 0) {
        var_at = temp_a4 | 8;
    } else {
        var_at = temp_a4 & ~8;
    }
    gl_wstatep->unkBCC = var_at;
    gl_n_linewidthf((f32 *) (temp_a4 & 4), gl_wstatep);
}

void gl_i_backface(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_backface((gl_wstate *) arg0);
}

void gl_c_backface(s32 arg0) {
    if (saved_reg_gp->unk-529C == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6F18);
        saved_reg_gp->unk-529C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_backface(gl_wstate **arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_backface(*arg0);
}

void gl_i_frontface(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_frontface(arg0);
}

void gl_c_frontface(s32 arg0) {
    if (saved_reg_gp->unk-5298 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6F28);
        saved_reg_gp->unk-5298 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_frontface(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_frontface((s64) *arg0);
}

void gl_writemask(s64 arg0) {
    s32 temp_a1;

    temp_a1 = gl_wstatep->unk2F50;
    __iglooIndexMask(gl_wstatep->unk2F54 & (arg0 << temp_a1), temp_a1);
}

void gl_i_writemask(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_writemask(arg0);
}

void gl_c_writemask(s16 arg0) {
    if (saved_reg_gp->unk-5294 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6F38);
        saved_reg_gp->unk-5294 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_writemask(u16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_writemask((s64) *arg0);
}

void __gl_RGBwritemask(s64 arg0, s64 arg1, s64 arg2) {
    __iglooColorMask(arg0 != 0, arg1 != 0, arg2 != 0, 1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24], gap at: 0x10. */
void gl_i_RGBwritemask(s64 arg0, s64 arg1, s64 arg2) {
    if (gl_inMoveDraw != 0) {
        unksp18 = arg2;
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_RGBwritemask(arg0, arg1, arg2);
}

void gl_c_RGBwritemask(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-5290 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f020000 + 0x6F48);
        saved_reg_gp->unk-5290 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_RGBwritemask(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_RGBwritemask((s64) arg0->unk0, (s64) arg0->unk2, (s64) arg0->unk4);
}

void gl_g_gRGBmask(s16 *arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s16 var_a0;
    s16 var_a2;
    s16 var_a2_2;

    sp20 = arg2;
    sp28 = arg1;
    __iglooGetColorMask(sp);
    if (subroutine_arg0 != 0) {
        var_a2 = 0xFF;
    } else {
        var_a2 = 0;
    }
    *arg0 = var_a2;
    var_a2_2 = 0xFF;
    if (subroutine_arg0 == 0) {
        var_a2_2 = 0;
    }
    *sp28 = var_a2_2;
    var_a0 = 0xFF;
    if (subroutine_arg0 == 0) {
        var_a0 = 0;
    }
    *sp20 = var_a0;
}

void __gl_wmpack(s64 arg0) {
    __iglooColorMask((arg0 & 0xFF) != 0, (arg0 & 0xFF00) != 0, (arg0 & 0xFF0000) != 0, (arg0 & 0xFF000000) != 0);
}

void gl_i_wmpack(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_wmpack(arg0);
}

void gl_c_wmpack(s32 arg0) {
    if (saved_reg_gp->unk-528C == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6F58);
        saved_reg_gp->unk-528C = 1;
    }
    gl_compile(6, sp);
}

void gl_n_wmpack(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_wmpack((s64) *arg0);
}

void gl_shademodel(s64 arg0, f32 arg1) {
    s64 sp8;
    s64 sp0;
    f32 var_a1;

    var_a1 = arg1;
    sp0 = arg0;
    sp8 = (s64) gl_wstatep;
    if (arg0 != 0) {
        __iglooShadeModel(0x1D01, gl_wstatep);
    } else if (gl_iglooGouraudCIDepthCue != 0) {
        if (((*(void **)0x1004)->unk14->unk10 != 0) || (var_a1 = gl_wstatep->modelviewStack.stack[0][1][0], ((bitwise s32) var_a1 != 1))) {
            __iglooShadeModel(0x1D00, (bitwise gl_wstate *) var_a1, gl_wstatep);
        }
    } else {
        __iglooShadeModel(0x1D00, gl_wstatep);
    }
    sp8->unk114->unk14 = (s32) sp0;
}

void gl_i_shademodel(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_shademodel(arg0);
}

void gl_c_shademodel(s32 arg0) {
    if (saved_reg_gp->unk-5288 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x6F68);
        saved_reg_gp->unk-5288 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_shademodel(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_shademodel((s64) *arg0);
}
