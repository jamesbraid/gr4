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
    /* 0x2B00 */ char pad2B00[0x2BC];               /* maybe part of currentVertex[0x2C]? */
    /* 0x2DBC */ void *unk2DBC;                     /* inferred */
    /* 0x2DC0 */ char pad2DC0[0x128];               /* maybe part of unk2DBC[0x4B]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? exit(?);                                          /* extern */
extern ? gl_tevtab;

void gl_g_tevdef(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    s32 var_s1;

    if (arg0 != 0) {
        sp0 = arg2;
        sp8 = arg1;
        if (gl_wstatep->unk2DBC->unk14 != arg0) {
            temp_v0 = gl_remove(&gl_tevtab, arg0);
            var_s1 = temp_v0;
            if (temp_v0 == 0) {
                gl_g_tevdef();
                var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
                M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg0;
            }
            gl_g_tevdef(var_s1, sp8, sp0);
            gl_insert(&gl_tevtab, var_s1);
        } else {
            gl_g_tevdef(gl_find(&gl_tevtab, arg0), sp8, sp0);
            gl_dotexturing();
        }
        return;
    }
    gl_ErrorHandler(0x37, 2, saved_reg_gp->unk-384C);
}

void gl_newtev(void) {
    void *temp_v0;

    temp_v0 = gl_malloc(0x24, saved_reg_gp->unk-384C);
    if (temp_v0 == NULL) {
        exit(1);
    }
    temp_v0->unk20 = 0;
    temp_v0->unkC = 0x101;
    temp_v0->unk1C = 1.0f;
    temp_v0->unk18 = 1.0f;
    temp_v0->unk14 = 1.0f;
    temp_v0->unk10 = 1.0f;
}

void gl_tevdef(void *arg0, f32 *arg2) {
    f32 *var_a2;
    f32 temp_f3;
    s32 temp_a3;

    var_a2 = arg2;
    if ((var_a2 != NULL) && ((s32) *var_a2 != 0)) {
loop_6:
        temp_a3 = (s32) *var_a2;
        var_a2 += 4;
        if (temp_a3 >= 0x104) {
            if (temp_a3 >= 0x105) {
                if (temp_a3 >= 0x200) {
                    if (temp_a3 < 0x201) {
                        arg0->unk10 = (f32) var_a2->unk0;
                        arg0->unk14 = (f32) var_a2->unk4;
                        arg0->unk18 = (f32) var_a2->unk8;
                        temp_f3 = var_a2->unkC;
                        var_a2 += 0x10;
                        arg0->unk1C = temp_f3;
                        goto block_4;
                    }
                    var_a2 += 4;
                    if (temp_a3 == 0x300) {
                        goto block_4;
                    }
                    /* Duplicate return node #24. Try simplifying control flow for better match */
                    gl_ErrorHandler(0x16, 2, saved_reg_gp->unk-384C, temp_a3);
                    return;
                }
                if (temp_a3 == 0x105) {
                    arg0->unkC = 0x8062;
                    goto block_4;
                }
                /* Duplicate return node #24. Try simplifying control flow for better match */
                gl_ErrorHandler(0x16, 2, saved_reg_gp->unk-384C, temp_a3);
                return;
            }
            arg0->unkC = 0x104;
            goto block_4;
        }
        if (temp_a3 >= 0x102) {
            if (temp_a3 >= 0x103) {
                if (temp_a3 == 0x103) {
                    arg0->unkC = 0x103;
                    goto block_4;
                }
                /* Duplicate return node #24. Try simplifying control flow for better match */
                gl_ErrorHandler(0x16, 2, saved_reg_gp->unk-384C, temp_a3);
                return;
            }
            arg0->unkC = 0x102;
            goto block_4;
        }
        if (temp_a3 == 0x101) {
            arg0->unkC = 0x101;
block_4:
            if ((var_a2 != NULL) && ((s32) *var_a2 != 0)) {
                goto loop_6;
            }
        } else {
            gl_ErrorHandler(0x16, 2, saved_reg_gp->unk-384C, temp_a3);
        }
    }
}
