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

? glTexGenfv(s64, ?, s64);                          /* extern */
? glTexGeni(s64, ?, ?, ?);                          /* extern */
extern ? sub_0f030000;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24], gap at: 0x10. */
void gl_i_texgen(s64 arg0, s64 arg1, s64 arg2) {
    if (gl_inMoveDraw != 0) {
        unksp18 = arg2;
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_texgen(arg0, arg1, arg2);
}

void gl_c_texgen(s32 arg0, s32 arg1, void *arg2) {
    s64 sp40;
    s64 sp38;
    ? spC;
    s32 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-4D8C == 0) {
        sp38 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x5408);
        var_ra = sp40;
        saved_reg_gp->unk-4D8C = 1;
    }
    sp8 = arg1;
    sp4 = arg0;
    sp0 = gl_n_texgen;
    if ((arg1 != 2) && (arg1 != 3)) {
        spC.unkC = 0.0f;
        spC.unk8 = 0.0f;
        spC.unk4 = 0.0f;
        spC.unk0 = 0.0f;
    } else {
        spC.unk0 = (f32) arg2->unk0;
        spC.unk4 = (f32) arg2->unk4;
        spC.unk8 = (f32) arg2->unk8;
        spC.unkC = (f32) arg2->unkC;
    }
    sp40 = var_ra;
    gl_compile(0xE, sp, arg2, gl_n_texgen);
}

void gl_n_texgen(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_texgen((s64) arg0->unk0, (s64) arg0->unk4, arg0 + 8);
}

void __gl_texgen(s64 arg0, s32 arg1, s64 arg2) {
    s64 sp38;
    s64 sp8;
    s64 sp0;
    gl_wstate *temp_s3;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp8 = arg2;
    temp_s3 = gl_wstatep;
    if (gl_wstatep->unk2DBC == NULL) {
        gl_init_texturing(gl_wstatep);
        var_ra = sp38;
    }
    unksp18 = (s64) (temp_s3->unk2DBC + (arg0 * 0x60) + 0x1C);
    if ((arg0 == 0) || (arg0 == 1) || (arg0 == 2) || (arg0 == 3)) {
        switch (arg1) {                             /* irregular */
        case 4:
            sp38 = var_ra;
            glTexGeni(arg0 + 0x2000, 0x2500, 0x2402, 2);
            unksp18->unkC = 1;
            unksp18->unk8 = arg1;
            break;
        case 2:
            sp38 = var_ra;
            temp_a0 = arg0 + 0x2000;
            sp0 = temp_a0;
            glTexGeni(temp_a0, 0x2500, 0x2400, 2);
            glTexGenfv(temp_a0, 0x2502, sp8);
            unksp18->unkC = 1;
            unksp18->unk8 = arg1;
            unksp18->unk10 = (f32) sp8->unk0;
            unksp18->unk14 = (f32) sp8->unk4;
            unksp18->unk18 = (f32) sp8->unk8;
            unksp18->unk1C = (f32) sp8->unkC;
            __iglooGetMatrix(0xBA6, unksp18 + 0x20);
            break;
        case 3:
            sp38 = var_ra;
            temp_a0_2 = arg0 + 0x2000;
            sp0 = temp_a0_2;
            glTexGeni(temp_a0_2, 0x2500, 0x2401, 2);
            glTexGenfv(temp_a0_2, 0x2501, sp8);
            unksp18->unkC = 1;
            unksp18->unk8 = arg1;
            unksp18->unk10 = (f32) sp8->unk0;
            unksp18->unk14 = (f32) sp8->unk4;
            unksp18->unk18 = (f32) sp8->unk8;
            unksp18->unk1C = (f32) sp8->unkC;
            break;
        case 0:
            sp38 = var_ra;
            __iglooSetEnable(arg0 + 0xC60, 0);
            unksp18->unk4 = 1;
            unksp18->unk0 = arg1;
            break;
        case 1:
            sp38 = var_ra;
            __iglooSetEnable(arg0 + 0xC60, 1);
            unksp18->unk4 = 1;
            unksp18->unk0 = arg1;
            break;
        }
    }
}

void __iglooRebindTGen(void) {
    gl_wstate *temp_s3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;

    temp_s3 = gl_wstatep;
    if (gl_wstatep->unk2DBC != NULL) {
        __iglooGetMatrixMode(gl_wstatep, 0xFFF0FED8);
        __iglooMatrixMode(0x1700);
        temp_s0 = temp_s3->unk2DBC;
        temp_s0_2 = temp_s0 + 0x1C;
        if (temp_s0_2->unkC != 0) {
            temp_v0 = temp_s0_2->unk8;
            switch (temp_v0) {                      /* switch 1; irregular */
            case 2:                                 /* switch 1 */
                __iglooPushMatrix();
                __iglooLoadMatrix(temp_s0_2 + 0x20);
                glTexGeni(subroutine_arg2, 0x2500, 0x2400);
                glTexGenfv(subroutine_arg2, 0x2502, (s64) (temp_s0_2 + 0x10));
                __iglooPopMatrix();
                break;
            case 3:                                 /* switch 1 */
                glTexGeni(subroutine_arg2, 0x2500, 0x2401);
                glTexGenfv(subroutine_arg2, 0x2501, (s64) (temp_s0_2 + 0x10));
                break;
            case 4:                                 /* switch 1 */
                glTexGeni(subroutine_arg2, 0x2500, 0x2402);
                break;
            }
        }
        temp_a2 = temp_s0_2->unk4;
        if (temp_a2 != 0) {
            if (temp_s0->unk1C != 1) {
                __iglooSetEnable(0xC60, 0, temp_a2);
            } else {
                __iglooSetEnable(0xC60, 1, temp_a2);
            }
        }
        if (0x120 != 0x60) {
            temp_s0_3 = temp_s3->unk2DBC + 0x60;
            temp_s0_4 = temp_s0_3 + 0x1C;
            if (temp_s0_4->unkC != 0) {
                temp_v0_2 = temp_s0_4->unk8;
                switch (temp_v0_2) {                /* switch 2; irregular */
                case 2:                             /* switch 2 */
                    __iglooPushMatrix();
                    __iglooLoadMatrix(temp_s0_4 + 0x20);
                    glTexGeni(subroutine_arg2, 0x2500, 0x2400);
                    glTexGenfv(subroutine_arg2, 0x2502, (s64) (temp_s0_4 + 0x10));
                    __iglooPopMatrix();
                    break;
                case 3:                             /* switch 2 */
                    glTexGeni(subroutine_arg2, 0x2500, 0x2401);
                    glTexGenfv(subroutine_arg2, 0x2501, (s64) (temp_s0_4 + 0x10));
                    break;
                case 4:                             /* switch 2 */
                    glTexGeni(subroutine_arg2, 0x2500, 0x2402);
                    break;
                }
            }
            temp_a2_2 = temp_s0_4->unk4;
            if (temp_a2_2 != 0) {
                if (temp_s0_3->unk1C != 1) {
                    __iglooSetEnable(0xC61, 0, temp_a2_2);
                } else {
                    __iglooSetEnable(0xC61, 1, temp_a2_2);
                }
            }
            if (0x120 != 0xC0) {
                temp_s0_5 = temp_s3->unk2DBC + 0xC0;
                temp_s0_6 = temp_s0_5 + 0x1C;
                if (temp_s0_6->unkC != 0) {
                    temp_v0_3 = temp_s0_6->unk8;
                    switch (temp_v0_3) {            /* switch 3; irregular */
                    case 2:                         /* switch 3 */
                        __iglooPushMatrix();
                        __iglooLoadMatrix(temp_s0_6 + 0x20);
                        glTexGeni(subroutine_arg2, 0x2500, 0x2400);
                        glTexGenfv(subroutine_arg2, 0x2502, (s64) (temp_s0_6 + 0x10));
                        __iglooPopMatrix();
                        break;
                    case 3:                         /* switch 3 */
                        glTexGeni(subroutine_arg2, 0x2500, 0x2401);
                        glTexGenfv(subroutine_arg2, 0x2501, (s64) (temp_s0_6 + 0x10));
                        break;
                    case 4:                         /* switch 3 */
                        glTexGeni(subroutine_arg2, 0x2500, 0x2402);
                        break;
                    }
                }
                temp_a2_3 = temp_s0_6->unk4;
                if (temp_a2_3 != 0) {
                    if (temp_s0_5->unk1C != 1) {
                        __iglooSetEnable(0xC62, 0, temp_a2_3);
                    } else {
                        __iglooSetEnable(0xC62, 1, temp_a2_3);
                    }
                }
            }
        }
        __iglooMatrixMode(subroutine_arg0);
        return;
    }
    gl_init_texturing(gl_wstatep, 0xFFF0FED8);
}
