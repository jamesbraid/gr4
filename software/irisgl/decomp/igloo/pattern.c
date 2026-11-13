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

? glPassThrough(f32, ?, s32, ?);                    /* extern */
? glPolygonStipple(s32);                            /* extern */
extern ? sub_0f030000;
extern ? sub_0f040000;

void gl_findpattern(s32 arg0) {
    s32 var_v0;

    var_v0 = 0;
    if (arg0 != 0) {
        var_v0 = gl_find(&sub_0f040000 - 0x7698 + 0x90, arg0);
    }
    if (var_v0 == 0) {

    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x28, 0x2c], gap at: 0x20. */
void gl_setpattern(void) {
    gl_wstate *temp_s3;

    temp_s3 = gl_wstatep;
    gl_findpattern();
    temp_s3->unk114->unkC = (s32) M2C_ERROR(/* Read from unset register $v0 */)->unk4;
    unksp20 = M2C_ERROR(/* Read from unset register $v0 */);
    unksp18 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */)->unk8 != 0) {
        __iglooPixelStorei(0xCF5, 1);
        __iglooPixelStorei(0xCF2, 0);
        glPolygonStipple(unksp20 + 0xC);
        __iglooSetEnable(0xB42, 1);
    } else {
        __iglooSetEnable(0xB42, 0);
    }
    if (__iglooGetRenderMode() == 0x1C01) {
        glPassThrough(subroutine_arg0, 0x1C01, unksp18->unk4, 3);
    }
}

void gl_free_patterns(void) {
    ? *temp_s1;
    ? *var_a0;
    void *temp_s7;
    void *var_s5;

    var_s5 = &sub_0f040000 - 0x7698;
    temp_s7 = var_s5 + 0x200;
loop_2:
    var_a0 = var_s5->unk90;
    var_s5 += 4;
    if (var_a0 != NULL) {
        do {
            temp_s1 = *var_a0;
            gl_free(var_a0, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3B594)->unk-3900);
            var_a0 = temp_s1;
        } while (temp_s1 != NULL);
    }
    var_s5->unk8C = 0;
    if (var_s5 != temp_s7) {
        goto loop_2;
    }
}

s32 gl_g_getpattern(void) {
    return (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3B510)->unk-5B00)->unk114->unkC;
}

void gl_g_defpattern(s32 arg0, s32 arg1, s64 arg2) {
    ? *temp_v0;
    ? *temp_v0_2;
    ? *var_s2;
    s32 *temp_t0;
    s32 *var_a0_2;
    s32 *var_a5;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_v1;
    s32 var_v0;
    s64 var_a1;
    s64 var_a1_2;
    u16 temp_a4;
    u16 temp_v1_2;
    void *var_a0;

    if (arg0 != 0) {
        temp_v0 = gl_remove(&sub_0f040000 - 0x7608, arg0);
        var_s2 = temp_v0;
        if (temp_v0 != NULL) {
            goto block_2;
        }
        temp_v0_2 = gl_malloc(0x8C, saved_reg_gp->unk-38FC);
        var_s2 = temp_v0_2;
        if (temp_v0_2 == NULL) {
            return;
        }
block_2:
        temp_t0 = var_s2 + 0xC;
        var_a5 = temp_t0;
        var_a0 = var_s2 + 0x4C;
        if (arg1 != 0x10) {
            var_v0 = -1;
            if (arg1 == 0x20) {
                var_a1 = subroutine_arg2;
                var_a0_2 = temp_t0;
                temp_a5 = var_a1 + 0x80;
                do {
                    temp_v1 = var_a1->unk2 | (var_a1->unk0 << 0x10);
                    *var_a0_2 = temp_v1;
                    var_a0_2 += 8;
                    temp_a3 = var_a1->unk6 | (var_a1->unk4 << 0x10);
                    var_a0_2->unk-4 = temp_a3;
                    var_a1 += 8;
                    var_v0 = temp_a3 & (temp_v1 & var_v0);
                } while (var_a1 != temp_a5);
                /* Duplicate return node #6. Try simplifying control flow for better match */
                var_s2->unk4 = arg0;
                var_s2->unk8 = (s32) (var_v0 != -1);
                gl_insert(subroutine_arg0, var_s2);
                return;
            }
            gl_ErrorHandler(0x38, 2, saved_reg_gp->unk-38FC, 0x10);
            gl_free(var_s2, saved_reg_gp->unk-38FC);
            return;
        }
        var_v0 = -1;
        var_a1_2 = subroutine_arg2;
        temp_a7 = var_a1_2 + 0x20;
        do {
            temp_a4 = var_a1_2->unk0;
            var_a0 += 8;
            temp_a3_2 = (temp_a4 << 0x10) | temp_a4;
            *var_a5 = temp_a3_2;
            var_a0->unk-8 = temp_a3_2;
            var_a5 += 8;
            temp_v1_2 = var_a1_2->unk2;
            var_a1_2 += 4;
            temp_at = (temp_v1_2 << 0x10) | temp_v1_2;
            var_v0 = temp_at & (temp_a3_2 & var_v0);
            var_a5->unk-4 = temp_at;
            var_a0->unk-4 = temp_at;
        } while (var_a1_2 != temp_a7);
        var_s2->unk4 = arg0;
        var_s2->unk8 = (s32) (var_v0 != -1);
        gl_insert(subroutine_arg0, var_s2);
        return;
    }
    gl_ErrorHandler(0x37, 2, saved_reg_gp->unk-38FC);
}

void gl_i_setpattern(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_setpattern(arg0);
}

void gl_c_setpattern(s16 arg0) {
    if (saved_reg_gp->unk-5038 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x62B8);
        saved_reg_gp->unk-5038 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_setpattern(s16 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_setpattern((s64) *arg0);
}
