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
    /* 0x2DBC */ s32 *unk2DBC;                      /* inferred */
    /* 0x2DC0 */ char pad2DC0[0x128];               /* maybe part of unk2DBC[0x4B]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glTexEnvfv(?, ?, s32);                            /* extern */
? glTexEnvi(?, ?, s64);                             /* extern */
extern ? gl_tevtab;
extern ? gl_texturetab;
extern ? gl_tluttab;
extern ? sub_0f020000;
extern ? sub_0f030000;

void gl_init_texturing(void *arg0) {
    void *var_v0;

    var_v0 = arg0->unk2DBC;
    if (var_v0 == NULL) {
        var_v0 = gl_malloc(0x1A4, &sub_0f020000 + 0x52F0);
        arg0->unk2DBC = var_v0;
    }
    var_v0->unk14 = 0;
    arg0->unk2DBC->unk4 = 0;
    arg0->unk2DBC->unk8 = 0;
    arg0->unk2DBC->unk19C = 0;
    arg0->unk2DBC->unk1A0 = 0;
    arg0->unk2DBC->unk0 = 0;
    arg0->unk2DBC->unk28 = 0;
    arg0->unk2DBC->unk20 = 0;
    arg0->unk2DBC->unk88 = 0;
    arg0->unk2DBC->unk80 = 0;
    arg0->unk2DBC->unkE8 = 0;
    arg0->unk2DBC->unkE0 = 0;
    arg0->unk2DBC->unk148 = 0;
    arg0->unk2DBC->unk140 = 0;
}

void gl_tevbind(void) {
    gl_wstate *temp_s7;
    s32 *temp_a2;
    s32 temp_a3;
    void *temp_v0;

    temp_s7 = gl_wstatep;
    temp_v0 = gl_find(&gl_tevtab);
    temp_a2 = temp_s7->unk2DBC;
    if (temp_v0 == NULL) {
        temp_a2->unk14 = 0;
        if (temp_s7->unk2DBC->unk0 != 0) {
            gl_notexturing();
        }
    } else {
        temp_a3 = temp_v0->unk4;
        if (temp_a2->unk14 != temp_a3) {
            temp_a2->unk14 = temp_a3;
            gl_dotexturing();
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_tevbind(s64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_tevbind(arg0, arg1);
}

void gl_c_tevbind(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4DE8 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x55D8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4DE8 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_tevbind(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_tevbind((s64) arg0->unk0, (s64) arg0->unk4);
}

void gl_dotexturing(void) {
    s64 sp30;
    s64 sp28;
    s64 sp0;
    ? var_a0;
    ? var_a0_2;
    gl_wstate *temp_s0;
    s32 *temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s64 var_ra;
    s64 var_v0;
    s64 var_v0_2;
    void *var_s1;

    var_ra = saved_reg_ra;
    temp_s0 = gl_wstatep;
    temp_a1 = temp_s0->unk2DBC->unk4;
    if (temp_a1 != 0) {
        var_s1 = gl_find(&gl_texturetab, temp_a1);
        var_ra = sp30;
    } else {
        var_s1 = NULL;
    }
    temp_a1_2 = temp_s0->unk2DBC->unk14;
    if (temp_a1_2 != 0) {
        sp30 = var_ra;
        sp0 = gl_find(&gl_tevtab, temp_a1_2);
    } else {
        sp0 = 0;
    }
    temp_a1_3 = temp_s0->unk2DBC->unk19C;
    var_v0 = 0;
    if (temp_a1_3 != 0) {
        sp30 = var_ra;
        var_v0 = gl_find(&gl_tluttab, temp_a1_3);
    }
    if (var_s1 != NULL) {
        unksp10 = var_v0;
        if (sp0 != 0) {
            sp30 = var_ra;
            temp_v0 = __iglooGetGraphicsType();
            if (temp_v0 != 3) {
                goto block_11;
            }
            if (temp_v0 != 4) {
block_11:
                temp_a0 = temp_s0->unk2DBC;
                if (unksp10 != 0) {
                    __iglooTexColTabEnable(temp_a0);
                } else {
                    __iglooTexColTabDisable(temp_a0);
                }
            }
            temp_v0_2 = ((void *) sp0)->unkC;
            switch (temp_v0_2) {                    /* irregular */
            default:
                var_v0_2 = 0xBE2;
                if (temp_v0_2 == 0x300) {
                    var_v0_2 = 0x8062;
                }
                break;
            case 0x101:
                var_v0_2 = 0x2100;
                break;
            case 0x103:
                var_v0_2 = 0x2101;
                break;
            case 0x102:
                sp28 = 0xBE2;
                glTexEnvfv(0x2300, 0x2201, sp0 + 0x10);
                var_v0_2 = 0xBE2;
                break;
            }
            glTexEnvi(0x2300, 0x2200, var_v0_2);
            temp_s0->unk2DBC->unk0 = 1;
            temp_a0_2 = var_s1->unk1C;
            if (__iglooIsExtensionSupported(0xC) != 1) {
                if (temp_a0_2 == 2) {
                    __iglooSetEnable(0xDE1, 1);
                }
            } else {
                var_a0 = 0xDE1;
                if (temp_a0_2 == 3) {
                    var_a0 = 0x806F;
                }
                __iglooSetEnable(var_a0, 1);
                var_a0_2 = 0xDE1;
                if (var_s1->unk1C == 2) {
                    var_a0_2 = 0x806F;
                }
                __iglooSetEnable(var_a0_2, 0);
            }
        }
    }
}

void gl_notexturing(void) {
    *gl_wstatep->unk2DBC = 0;
    __iglooSetEnable(0xDE1, 0);
    if (__iglooIsExtensionSupported(0xC) == 1) {
        __iglooSetEnable(0x806F, 0);
    }
}
