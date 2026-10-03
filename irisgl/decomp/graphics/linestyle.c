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

? glLineStipple(s32, u16, ?, s64);                  /* extern */
? glPassThrough(f32, ?);                            /* extern */
extern ? sub_0f030000;

void gl_findlinestyle(s32 arg0) {
    s32 var_v0;

    var_v0 = 0;
    if (arg0 != 0) {
        var_v0 = gl_find(&sub_0f030000 + 0x510, arg0);
    }
    if (var_v0 == 0) {

    }
}

void gl_g_deflinestyle(s32 arg0, s64 arg1) {
    void *var_v0;

    if (arg0 != 0) {
        var_v0 = gl_remove(&sub_0f030000 + 0x510, arg0);
        if (var_v0 == NULL) {
            var_v0 = gl_malloc(0xC, saved_reg_gp->unk-39BC);
            if (var_v0 == NULL) {
                return;
            }
        }
        var_v0->unk4 = arg0;
        var_v0->unk8 = (s16) subroutine_arg0;
        gl_insert(&sub_0f030000 + 0x510, var_v0, subroutine_arg0);
        return;
    }
    gl_ErrorHandler(0x37, 2, saved_reg_gp->unk-39BC);
}

void gl_setlinestyle(void) {
    gl_wstate *temp_s0;
    s64 temp_a3;
    u16 temp_a1;

    temp_s0 = gl_wstatep;
    gl_findlinestyle();
    temp_s0->unk114->unk4 = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk4;
    temp_a3 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */)->unk4 != 0) {
        temp_a1 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
        unksp10 = temp_a3;
        if (temp_a1 != 0xFFFF) {
            glLineStipple(temp_s0->unk114->unk8, temp_a1, 0xFFFF, temp_a3);
            __iglooSetEnable(0xB24, 1);
        } else {
            __iglooSetEnable(0xB24, 0, 0xFFFF, temp_a3);
        }
    } else {
        unksp10 = temp_a3;
        __iglooSetEnable(0xB24, 0);
    }
    if (__iglooGetRenderMode() == 0x1C01) {
        glPassThrough(subroutine_arg0);
    }
}

void gl_i_setlinestyle(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_setlinestyle(arg0);
}

void gl_c_setlinestyle(s16 arg0) {
    if (saved_reg_gp->unk-512C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x7120);
        saved_reg_gp->unk-512C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_setlinestyle(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_setlinestyle((s64) *arg0);
}

s32 gl_g_getlstyle(void) {
    return (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF59CB4)->unk-5B00)->unk114->unk4;
}

void gl_free_linestyles(void) {
    ? **var_s5;
    ? *temp_s1;
    ? *var_a0;
    void *temp_s7;

    var_s5 = &sub_0f030000 + 0x510;
    temp_s7 = var_s5 + 0x200;
loop_2:
    var_a0 = *var_s5;
    var_s5 += 4;
    if (var_a0 != NULL) {
        do {
            temp_s1 = *var_a0;
            gl_free(var_a0, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF59C94)->unk-39B8);
            var_a0 = temp_s1;
        } while (temp_s1 != NULL);
    }
    var_s5->unk-4 = 0;
    if (var_s5 != temp_s7) {
        goto loop_2;
    }
}

void gl_lsrepeat(s64 arg0) {
    u16 temp_a1;
    void *temp_a2;

    temp_a2 = gl_wstatep->unk114;
    unksp10 = arg0;
    temp_a2->unk8 = (s32) arg0;
    gl_findlinestyle(gl_wstatep->unk114->unk4, gl_wstatep, temp_a2);
    temp_a1 = M2C_ERROR(/* Read from unset register $v0 */)->unk8;
    if (temp_a1 != 0xFFFF) {
        glLineStipple((s32) unksp10, temp_a1);
    }
    if (__iglooGetRenderMode() == 0x1C01) {
        glPassThrough(subroutine_arg0, 0x3F);
    }
}

void gl_i_lsrepeat(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_lsrepeat(arg0);
}

void gl_c_lsrepeat(s32 arg0) {
    if (saved_reg_gp->unk-5128 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x7110);
        saved_reg_gp->unk-5128 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_lsrepeat(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_lsrepeat((s64) *arg0);
}

s32 gl_g_getlsrepeat(void) {
    return (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF59A4C)->unk-5B00)->unk114->unk8;
}

void gl_g_gl_resetls(s32 arg0) {
    if (saved_reg_gp->unk-5124 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x7100);
        saved_reg_gp->unk-5124 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_gl_resetls(s32 arg0) {

}
