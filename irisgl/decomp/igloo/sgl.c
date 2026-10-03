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
    /* 0x003C */ ? (*unk3C)();                      /* inferred */
    /* 0x0040 */ ? (*unk40)();                      /* inferred */
    /* 0x0044 */ ? (*unk44)(f32, f32);              /* inferred */
    /* 0x0048 */ ? (*unk48)();                      /* inferred */
    /* 0x004C */ ? (*unk4C)();                      /* inferred */
    /* 0x0050 */ ? (*unk50)();                      /* inferred */
    /* 0x0054 */ ? (*unk54)(f32, f32);              /* inferred */
    /* 0x0058 */ ? (*unk58)();                      /* inferred */
    /* 0x005C */ ? (*unk5C)();                      /* inferred */
    /* 0x0060 */ ? (*unk60)();                      /* inferred */
    /* 0x0064 */ char pad64[0x28];                  /* maybe part of unk60[0xB]? */
    /* 0x008C */ ? (*unk8C)(gl_wstate *, s32);      /* inferred */
    /* 0x0090 */ ? (*unk90)(gl_wstate *, s32);      /* inferred */
    /* 0x0094 */ ? (*unk94)(gl_wstate *, s32);      /* inferred */
    /* 0x0098 */ ? (*unk98)(gl_wstate *, s32);      /* inferred */
    /* 0x009C */ ? (*unk9C)(gl_wstate *, s32);      /* inferred */
    /* 0x00A0 */ ? (*unkA0)(gl_wstate *, s32);      /* inferred */
    /* 0x00A4 */ char padA4[0x10];                  /* maybe part of unkA0[5]? */
    /* 0x00B4 */ ? (*unkB4)(?, gl_wstate *);        /* inferred */
    /* 0x00B8 */ void (*unkB8)();                   /* inferred */
    /* 0x00BC */ void (*unkBC)();                   /* inferred */
    /* 0x00C0 */ char padC0[0x14];                  /* maybe part of unkBC[6]? */
    /* 0x00D4 */ ? (*unkD4)(gl_wstate *, s32);      /* inferred */
    /* 0x00D8 */ void (*unkD8)(gl_wstate *, f64, ?, f32, s32, s32); /* inferred */
    /* 0x00DC */ void (*unkDC)(gl_wstate *, ?);     /* inferred */
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
    /* 0x2B00 */ char pad2B00[0x170];               /* maybe part of currentVertex[0x18]? */
    /* 0x2C70 */ s32 unk2C70;                       /* inferred */
    /* 0x2C74 */ s32 unk2C74;                       /* inferred */
    /* 0x2C78 */ char pad2C78[8];                   /* maybe part of unk2C74[3]? */
    /* 0x2C80 */ void *unk2C80;                     /* inferred */
    /* 0x2C84 */ s32 unk2C84;                       /* inferred */
    /* 0x2C88 */ char pad2C88[8];                   /* maybe part of unk2C84[3]? */
    /* 0x2C90 */ f32 unk2C90;                       /* inferred */
    /* 0x2C94 */ s32 unk2C94;                       /* inferred */
    /* 0x2C98 */ s32 unk2C98;                       /* inferred */
    /* 0x2C9C */ s32 unk2C9C;                       /* inferred */
    /* 0x2CA0 */ s32 unk2CA0;                       /* inferred */
    /* 0x2CA4 */ s32 unk2CA4;                       /* inferred */
    /* 0x2CA8 */ s32 unk2CA8;                       /* inferred */
    /* 0x2CAC */ s32 unk2CAC;                       /* inferred */
    /* 0x2CB0 */ s32 unk2CB0;                       /* inferred */
    /* 0x2CB4 */ s32 unk2CB4;                       /* inferred */
    /* 0x2CB8 */ s32 unk2CB8;                       /* inferred */
    /* 0x2CBC */ s32 unk2CBC;                       /* inferred */
    /* 0x2CC0 */ s32 unk2CC0;                       /* inferred */
    /* 0x2CC4 */ s32 unk2CC4;                       /* inferred */
    /* 0x2CC8 */ s32 unk2CC8;                       /* inferred */
    /* 0x2CCC */ s32 unk2CCC;                       /* inferred */
    /* 0x2CD0 */ s32 unk2CD0;                       /* inferred */
    /* 0x2CD4 */ s32 unk2CD4;                       /* inferred */
    /* 0x2CD8 */ s32 unk2CD8;                       /* inferred */
    /* 0x2CDC */ char pad2CDC[0xE0];                /* maybe part of unk2CD8[0x39]? */
    /* 0x2DBC */ void *unk2DBC;                     /* inferred */
    /* 0x2DC0 */ char pad2DC0[0x128];               /* maybe part of unk2DBC[0x4B]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? bcopy(void *, void *, ?, s32);                    /* extern */
? glEdgeFlag(?);                                    /* extern */
? glTexCoord2fv(void *, ?);                         /* extern */
? glTexCoord2iv(void *, ?);                         /* extern */
? glTexCoord2sv(void *, ?);                         /* extern */
? glTexCoord3fv(void *, ?);                         /* extern */
? glTexCoord3iv(s32, void *, ?);                    /* extern */
? glTexCoord3sv(s16, void *, ?);                    /* extern */
? glTexCoord4fv(void *, ?);                         /* extern */
? glTexCoord4iv(s32, void *, ?);                    /* extern */
? glTexCoord4sv(s16, void *, ?);                    /* extern */
? glVertex2fv(gl_wstate *);                         /* extern */
? glVertex2iv(gl_wstate *);                         /* extern */
? glVertex2sv(gl_wstate *);                         /* extern */
? glVertex3fv(gl_wstate *);                         /* extern */
? glVertex3iv(gl_wstate *);                         /* extern */
? glVertex3sv(gl_wstate *);                         /* extern */
? glVertex4fv(void *, gl_wstate *);                 /* extern */
? glVertex4iv(void *, gl_wstate *);                 /* extern */
? glVertex4sv(void *, gl_wstate *);                 /* extern */
? gluTessBeginContour(f32, f32);                    /* extern */
? gluTessBeginPolygon(f32, ?);                      /* extern */
? gluTessEndContour(f32);                           /* extern */
? gluTessEndPolygon(f32);                           /* extern */
? gluTessVertex(f32, s64, s64);                     /* extern */
? strcat(s32, s64);                                 /* extern */
? strcpy(s32, s32);                                 /* extern */
extern ? sub_0f030000;

void funcNameString(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp18;

    sp18 = arg2;
    strcpy(saved_reg_gp - 0x4ED8, arg0);
    strcat(saved_reg_gp - 0x4ED8, arg1);
    strcat(saved_reg_gp - 0x4ED8, sp18);
}

void __igl_concave_vertex2sv(void *arg0, s32 arg1) {
    s64 sp20;
    f32 temp_a2;
    f64 temp_f1;
    gl_wstate *temp_s2;
    s32 temp_gp;
    s32 var_a1;
    void *temp_s5;
    void *temp_s5_2;

    var_a1 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF27694;
    temp_s2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a2 = temp_s2->modelviewStack.stack[4][1][3];
        temp_s5 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep;
        temp_s5_2 = temp_s5 + 0xC70;
        if ((bitwise s32) temp_a2 < 0x100) {
            if (temp_s2->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a2 << 5;
                if ((bitwise s32) temp_a2 != 0) {
                    temp_s5->unkC70 = (s32) (var_a1 + temp_s2)->unkC50;
                } else {
                    goto block_9;
                }
            } else {
block_9:
                sp20 = (s64) arg0;
                M2C_TRAP_IF(0x44 == 0);
                temp_s5->unkC70 = (s32) ((s32) (getVDataPtrs(var_a1, temp_a2, gl_wstatep) - temp_s2->unk2C70) / 68);
            }
            temp_s5_2->unk8 = (f64) arg0->unk0;
            temp_f1 = (f64) arg0->unk2;
            temp_s5_2->unk18 = (f64) GLUE_F64(temp_f1, 0U);
            temp_s5_2->unk10 = temp_f1;
            temp_s2->unk2CD8 = 0;
            temp_s2->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s2->modelviewStack.stack[4][1][3] + 1);
        } else {
            funcNameString(temp_gp - 0x3F18, temp_gp - 0x3F10, temp_gp - 0x3F08, gl_wstatep);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex2sv(gl_wstatep);
    }
}

void __igl_concave_vertex2iv(void *arg0, s32 arg1) {
    s64 sp20;
    f32 temp_a2;
    f64 temp_f1;
    gl_wstate *temp_s2;
    s32 temp_a0;
    s32 temp_gp;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s5;

    var_a1 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF27534;
    temp_s2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a2 = temp_s2->modelviewStack.stack[4][1][3];
        temp_s5 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a2 < 0x100) {
            if (temp_s2->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a2 << 5;
                if ((bitwise s32) temp_a2 != 0) {
                    var_a1_2 = (var_a1 + temp_s2)->unkC50;
                } else {
                    goto block_9;
                }
            } else {
block_9:
                sp20 = (s64) arg0;
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs(var_a1, temp_a2, gl_wstatep) - temp_s2->unk2C70) / 68;
            }
            temp_s5->unk0 = var_a1_2;
            temp_s5->unk8 = (f64) arg0->unk0;
            temp_f1 = (f64) arg0->unk4;
            temp_s5->unk18 = (f64) GLUE_F64(temp_f1, 0U);
            temp_s5->unk10 = temp_f1;
            temp_s2->unk2CD8 = 0;
            temp_s2->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s2->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0 = temp_gp - 0x4028;
            funcNameString(temp_a0 + 0x110, temp_a0 + 0x118, temp_gp - 0x3F00, gl_wstatep);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex2iv(gl_wstatep);
    }
}

void __igl_concave_vertex2fv(void *arg0, s32 arg1) {
    s64 sp20;
    f32 temp_a2;
    gl_wstate *temp_s2;
    s32 temp_a0;
    s32 temp_gp;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s5;

    var_a1 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF273D0;
    temp_s2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a2 = temp_s2->modelviewStack.stack[4][1][3];
        temp_s5 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a2 < 0x100) {
            if (temp_s2->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a2 << 5;
                if ((bitwise s32) temp_a2 != 0) {
                    var_a1_2 = (var_a1 + temp_s2)->unkC50;
                } else {
                    goto block_9;
                }
            } else {
block_9:
                sp20 = (s64) arg0;
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs(var_a1, temp_a2, gl_wstatep) - temp_s2->unk2C70) / 68;
            }
            temp_s5->unk0 = var_a1_2;
            temp_s5->unk8 = (f64) arg0->unk0;
            temp_s5->unk18 = (f64) (second half of f64);
            temp_s5->unk10 = (f64) arg0->unk4;
            temp_s2->unk2CD8 = 0;
            temp_s2->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s2->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0 = temp_gp - 0x4028;
            funcNameString(temp_a0 + 0x110, temp_a0 + 0x118, temp_gp - 0x3EF8, gl_wstatep);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex2fv(gl_wstatep);
    }
}

void __igl_concave_vertex2f(f32 arg0, f32 arg1) {
    __igl_concave_vertex2fv((s64) sp);
}

void __igl_concave_vertex3sv(void *arg0, s32 arg1) {
    s64 sp20;
    f32 temp_a2;
    gl_wstate *temp_s2;
    s32 temp_a0;
    s32 temp_gp;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s5;

    var_a1 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF27240;
    temp_s2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a2 = temp_s2->modelviewStack.stack[4][1][3];
        temp_s5 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a2 < 0x100) {
            if (temp_s2->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a2 << 5;
                if ((bitwise s32) temp_a2 != 0) {
                    var_a1_2 = (var_a1 + temp_s2)->unkC50;
                } else {
                    goto block_9;
                }
            } else {
block_9:
                sp20 = (s64) arg0;
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs(var_a1, temp_a2, gl_wstatep) - temp_s2->unk2C70) / 68;
            }
            temp_s5->unk0 = var_a1_2;
            temp_s5->unk8 = (f64) arg0->unk0;
            temp_s5->unk10 = (f64) arg0->unk2;
            temp_s5->unk18 = (f64) arg0->unk4;
            temp_s2->unk2CD8 = 0;
            temp_s2->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s2->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0 = temp_gp - 0x4028;
            funcNameString(temp_a0 + 0x110, temp_gp - 0x3EF0, temp_a0 + 0x120, gl_wstatep);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex3sv(gl_wstatep);
    }
}

void __igl_concave_vertex3iv(void *arg0, s32 arg1) {
    s64 sp20;
    f32 temp_a2;
    gl_wstate *temp_s2;
    s32 temp_a0;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s5;

    var_a1 = arg1;
    temp_s2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a2 = temp_s2->modelviewStack.stack[4][1][3];
        temp_s5 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a2 < 0x100) {
            if (temp_s2->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a2 << 5;
                if ((bitwise s32) temp_a2 != 0) {
                    var_a1_2 = (var_a1 + temp_s2)->unkC50;
                } else {
                    goto block_9;
                }
            } else {
block_9:
                sp20 = (s64) arg0;
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs(var_a1, temp_a2, gl_wstatep) - temp_s2->unk2C70) / 68;
            }
            temp_s5->unk0 = var_a1_2;
            temp_s5->unk8 = (f64) arg0->unk0;
            temp_s5->unk10 = (f64) arg0->unk4;
            temp_s5->unk18 = (f64) arg0->unk8;
            temp_s2->unk2CD8 = 0;
            temp_s2->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s2->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF270D0) - 0x4028;
            funcNameString(temp_a0 + 0x110, temp_a0 + 0x138, temp_a0 + 0x128, gl_wstatep);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex3iv(gl_wstatep);
    }
}

void __igl_concave_vertex3fv(void *arg0, s32 arg1) {
    s64 sp20;
    f32 temp_a2;
    gl_wstate *temp_s2;
    s32 temp_a0;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s5;

    var_a1 = arg1;
    temp_s2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a2 = temp_s2->modelviewStack.stack[4][1][3];
        temp_s5 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a2 < 0x100) {
            if (temp_s2->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a2 << 5;
                if ((bitwise s32) temp_a2 != 0) {
                    var_a1_2 = (var_a1 + temp_s2)->unkC50;
                } else {
                    goto block_9;
                }
            } else {
block_9:
                sp20 = (s64) arg0;
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs(var_a1, temp_a2, gl_wstatep) - temp_s2->unk2C70) / 68;
            }
            temp_s5->unk0 = var_a1_2;
            temp_s5->unk8 = (f64) arg0->unk0;
            temp_s5->unk10 = (f64) arg0->unk4;
            temp_s5->unk18 = (f64) arg0->unk8;
            temp_s2->unk2CD8 = 0;
            temp_s2->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s2->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF26F60) - 0x4028;
            funcNameString(temp_a0 + 0x110, temp_a0 + 0x138, temp_a0 + 0x130, gl_wstatep);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex3fv(gl_wstatep);
    }
}

void __igl_concave_vertex3f(f32 arg0, f32 arg1) {
    __igl_concave_vertex3fv((s64) sp);
}

void __igl_concave_vertex4sv(void *arg0, s32 arg1) {
    f32 temp_a0;
    f64 var_f4;
    gl_wstate *temp_s5;
    s16 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_gp;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s7;

    var_a1 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF26DC8;
    temp_s5 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a0 = temp_s5->modelviewStack.stack[4][1][3];
        temp_s7 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a0 < 0x100) {
            if (temp_s5->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a0 << 5;
                if ((bitwise s32) temp_a0 != 0) {
                    var_a1_2 = (var_a1 + temp_s5)->unkC50;
                } else {
                    goto block_12;
                }
            } else {
block_12:
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs((bitwise s32) temp_a0, (bitwise f32) var_a1, gl_wstatep) - temp_s5->unk2C70) / 68;
            }
            temp_s7->unk0 = var_a1_2;
            temp_a0_2 = arg0->unk6;
            if (temp_a0_2 != 0) {
                var_f4 = (second half of f64) / (f64) temp_a0_2;
            } else {
                var_f4 = 1.0;
            }
            temp_s7->unk8 = (f64) ((f64) arg0->unk0 * var_f4);
            temp_s7->unk10 = (f64) ((f64) arg0->unk2 * var_f4);
            temp_s7->unk18 = (f64) ((f64) arg0->unk4 * var_f4);
            temp_s5->unk2CD8 = 0;
            temp_s5->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s5->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0_3 = temp_gp - 0x4028;
            funcNameString(temp_a0_3 + 0x110, temp_gp - 0x3EE8, temp_a0_3 + 0x120);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex4sv(arg0, gl_wstatep);
    }
}

void __igl_concave_vertex4iv(void *arg0, s32 arg1) {
    f32 temp_a0;
    f64 var_f4;
    gl_wstate *temp_s5;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s7;

    var_a1 = arg1;
    temp_s5 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a0 = temp_s5->modelviewStack.stack[4][1][3];
        temp_s7 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a0 < 0x100) {
            if (temp_s5->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a0 << 5;
                if ((bitwise s32) temp_a0 != 0) {
                    var_a1_2 = (var_a1 + temp_s5)->unkC50;
                } else {
                    goto block_12;
                }
            } else {
block_12:
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs((bitwise s32) temp_a0, (bitwise f32) var_a1, gl_wstatep) - temp_s5->unk2C70) / 68;
            }
            temp_s7->unk0 = var_a1_2;
            temp_a0_2 = arg0->unkC;
            if (temp_a0_2 != 0) {
                var_f4 = (second half of f64) / (f64) temp_a0_2;
            } else {
                var_f4 = 1.0;
            }
            temp_s7->unk8 = (f64) ((f64) arg0->unk0 * var_f4);
            temp_s7->unk10 = (f64) ((f64) arg0->unk4 * var_f4);
            temp_s7->unk18 = (f64) ((f64) arg0->unk8 * var_f4);
            temp_s5->unk2CD8 = 0;
            temp_s5->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s5->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0_3 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF26C1C) - 0x4028;
            funcNameString(temp_a0_3 + 0x110, temp_a0_3 + 0x140, temp_a0_3 + 0x128);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex4iv(arg0, gl_wstatep);
    }
}

void __igl_concave_vertex4fv(void *arg0, s32 arg1) {
    f32 temp_a0;
    f32 temp_f5;
    f64 var_f4;
    gl_wstate *temp_s5;
    s32 temp_a0_2;
    s32 var_a1;
    s32 var_a1_2;
    void *temp_s7;

    var_a1 = arg1;
    temp_s5 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 0) {
        gl_wstatep->unk2C90 = gl_wstatep->modelviewStack.stack[4][1][2];
        temp_a0 = temp_s5->modelviewStack.stack[4][1][3];
        temp_s7 = ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep + 0xC70;
        if ((bitwise s32) temp_a0 < 0x100) {
            if (temp_s5->unk2CD8 != 1) {
                var_a1 = (bitwise s32) temp_a0 << 5;
                if ((bitwise s32) temp_a0 != 0) {
                    var_a1_2 = (var_a1 + temp_s5)->unkC50;
                } else {
                    goto block_12;
                }
            } else {
block_12:
                M2C_TRAP_IF(0x44 == 0);
                var_a1_2 = (s32) (getVDataPtrs((bitwise s32) temp_a0, (bitwise f32) var_a1, gl_wstatep) - temp_s5->unk2C70) / 68;
            }
            temp_s7->unk0 = var_a1_2;
            temp_f5 = arg0->unkC;
            if (temp_f5 == 0.0f) {
                var_f4 = 1.0;
            } else {
                var_f4 = 1.0 / (f64) temp_f5;
            }
            temp_s7->unk8 = (f64) ((f64) arg0->unk0 * var_f4);
            temp_s7->unk10 = (f64) ((f64) arg0->unk4 * var_f4);
            temp_s7->unk18 = (f64) ((f64) arg0->unk8 * var_f4);
            temp_s5->unk2CD8 = 0;
            temp_s5->modelviewStack.stack[4][1][3] = (bitwise f32) ((bitwise s32) temp_s5->modelviewStack.stack[4][1][3] + 1);
        } else {
            temp_a0_2 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF26A70) - 0x4028;
            funcNameString(temp_a0_2 + 0x110, temp_a0_2 + 0x140, temp_a0_2 + 0x130);
            gl_ErrorHandler(0x61, 2, M2C_ERROR(/* Read from unset register $v0 */));
        }
    } else {
        glVertex4fv(arg0, gl_wstatep);
    }
}

void __igl_concave_vertex4f(f32 arg0, f32 arg1, f32 arg3) {
    __igl_concave_vertex4fv(sp);
}

void gl_i_v2s(void) {
    ((? (*)()) gl_wstatep->bufferMode)();
}

void gl_c_v2s(void *arg0) {
    if (saved_reg_gp->unk-4ED0 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5D28);
        saved_reg_gp->unk-4ED0 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_v2s(s32 arg0) {
    ((? (*)()) gl_wstatep->bufferMode)();
}

void gl_i_v2i(void) {
    ((? (*)()) gl_wstatep->colorMode)();
}

void gl_c_v2i(void *arg0) {
    if (saved_reg_gp->unk-4ECC == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5D18);
        saved_reg_gp->unk-4ECC = 1;
    }
    gl_compile(6, sp);
}

void gl_n_v2i(s32 arg0) {
    ((? (*)()) gl_wstatep->colorMode)();
}

void gl_i_v2f(void) {
    ((? (*)()) gl_wstatep->drawMode)();
}

void gl_c_v2f(void *arg0) {
    if (saved_reg_gp->unk-4EC8 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5D08);
        saved_reg_gp->unk-4EC8 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_v2f(s32 arg0) {
    ((? (*)()) gl_wstatep->drawMode)();
}

void gl_i_v2d(void *arg0) {
    ((? (*)(f32)) gl_wstatep->flags)((f32) arg0->unk0);
}

void gl_c_v2d(void *arg0) {
    if (saved_reg_gp->unk-4EC4 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5CF8);
        saved_reg_gp->unk-4EC4 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_v2d(void *arg0) {
    ((? (*)(f32)) gl_wstatep->flags)(arg0->unk0);
}

void gl_i_v3s(void) {
    ((? (*)()) gl_wstatep->blendSrc)();
}

void gl_c_v3s(void *arg0) {
    if (saved_reg_gp->unk-4EC0 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5CE8);
        saved_reg_gp->unk-4EC0 = 1;
    }
    gl_compile(6, sp, gl_n_v3s);
}

void gl_n_v3s(s32 arg0) {
    ((? (*)()) gl_wstatep->blendSrc)();
}

void gl_i_v3i(void) {
    ((? (*)()) gl_wstatep->zfunction)();
}

void gl_c_v3i(void *arg0) {
    if (saved_reg_gp->unk-4EBC == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5CD8);
        saved_reg_gp->unk-4EBC = 1;
    }
    gl_compile(8, sp, gl_n_v3i);
}

void gl_n_v3i(s32 arg0) {
    ((? (*)()) gl_wstatep->zfunction)();
}

void gl_i_v3f(void) {
    ((? (*)()) gl_wstatep->zbuffer)();
}

void gl_c_v3f(void *arg0) {
    if (saved_reg_gp->unk-4EB8 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5CC8);
        saved_reg_gp->unk-4EB8 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_v3f(s32 arg0) {
    ((? (*)()) gl_wstatep->zbuffer)();
}

void gl_i_v3d(void *arg0) {
    ((? (*)(f32, f32)) gl_wstatep->shadingModel)((f32) arg0->unk0, (f32) arg0->unk10);
}

void gl_c_v3d(void *arg0) {
    if (saved_reg_gp->unk-4EB4 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5CB8);
        saved_reg_gp->unk-4EB4 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_v3d(void *arg0) {
    ((? (*)(f32, f32)) gl_wstatep->shadingModel)(arg0->unk0, arg0->unk8);
}

void gl_i_v4s(void) {
    (bitwise ? (*)()) gl_wstatep->currentNormal[0]();
}

void gl_c_v4s(void *arg0) {
    if (saved_reg_gp->unk-4EB0 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5CA8);
        saved_reg_gp->unk-4EB0 = 1;
    }
    gl_compile(6, sp, (void (*)(s32)) arg0->unk0, gl_n_v4s);
}

void gl_n_v4s(s32 arg0) {
    (bitwise ? (*)()) gl_wstatep->currentNormal[0]();
}

void gl_i_v4i(void) {
    ((? (*)()) gl_wstatep->currentRGB)();
}

void gl_c_v4i(void *arg0) {
    if (saved_reg_gp->unk-4EAC == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C98);
        saved_reg_gp->unk-4EAC = 1;
    }
    gl_compile(0xA, sp, arg0->unk0, gl_n_v4i, arg0->unkC);
}

void gl_n_v4i(s32 arg0) {
    ((? (*)()) gl_wstatep->currentRGB)();
}

void gl_i_v4f(void) {
    gl_wstatep->unk28();
}

void gl_c_v4f(void *arg0) {
    if (saved_reg_gp->unk-4EA8 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C88);
        saved_reg_gp->unk-4EA8 = 1;
    }
    gl_compile(0xA, sp, arg0->unkC);
}

void gl_n_v4f(s32 arg0) {
    gl_wstatep->unk28();
}

void gl_i_v4d(void *arg0) {
    ((? (*)(f32, f32)) gl_wstatep->blendDst)((f32) arg0->unk0, (f32) (second half of f64));
}

void gl_c_v4d(void *arg0) {
    if (saved_reg_gp->unk-4EA4 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C78);
        saved_reg_gp->unk-4EA4 = 1;
    }
    gl_compile(0xA, sp, (bitwise void (*)(s32)) (f32) arg0->unk18);
}

void gl_n_v4d(void *arg0) {
    ((? (*)(f32, f32)) gl_wstatep->blendDst)(arg0->unk0, arg0->unk8);
}

void __igl_concave_TexCoord2sv(void *arg0) {
    s64 sp10;
    f64 sp8;
    void *temp_a2;

    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2 = gl_wstatep->unk2C80;
        temp_a2->unk28 = 5.263544247e-315;
        temp_a2->unk20 = (f32) arg0->unk0;
        temp_a2->unk24 = (f32) arg0->unk2;
        glTexCoord2sv(temp_a2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = (f32) arg0->unk0;
        sp10 = (s64) gl_wstatep;
        sp->flags = (f32) arg0->unk2;
        putData(4, sp, gl_wstatep, (gl_wstate *)1);
        sp10->unk2CD8 = 1;
        sp10->unk2CA0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igl_concave_TexCoord2iv(void *arg0) {
    s64 sp10;
    f64 sp8;
    void *temp_a2;

    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2 = gl_wstatep->unk2C80;
        temp_a2->unk28 = 5.263544247e-315;
        temp_a2->unk20 = (f32) arg0->unk0;
        temp_a2->unk24 = (f32) arg0->unk4;
        glTexCoord2iv(temp_a2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = (f32) arg0->unk0;
        sp10 = (s64) gl_wstatep;
        sp->flags = (f32) arg0->unk4;
        putData(4, sp, gl_wstatep, (gl_wstate *)1);
        sp10->unk2CD8 = 1;
        sp10->unk2CA0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igl_concave_TexCoord2fv(void *arg0) {
    s64 sp10;
    f64 sp8;
    void *temp_a2;

    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2 = gl_wstatep->unk2C80;
        temp_a2->unk28 = 5.263544247e-315;
        temp_a2->unk20 = (f32) arg0->unk0;
        temp_a2->unk24 = (f32) arg0->unk4;
        glTexCoord2fv(temp_a2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = arg0->unk0;
        sp10 = (s64) gl_wstatep;
        sp->flags = arg0->unk4;
        putData(4, sp, gl_wstatep, (gl_wstate *)1);
        sp10->unk2CD8 = 1;
        sp10->unk2CA0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igl_concave_TexCoord2f(f32 arg0, f32 arg1) {
    __igl_concave_TexCoord2fv(sp);
}

void __igl_concave_TexCoord3sv(void *arg0) {
    s64 sp10;
    f64 sp8;
    gl_wstate *temp_a2;
    s16 temp_a1;
    void *temp_a2_2;

    temp_a2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2_2 = gl_wstatep->unk2C80;
        temp_a2_2->unk28 = 5.263544247e-315;
        temp_a1 = arg0->unk0;
        temp_a2_2->unk20 = (f32) temp_a1;
        temp_a2_2->unk24 = (f32) arg0->unk2;
        temp_a2_2->unk28 = (f32) arg0->unk4;
        glTexCoord3sv(temp_a1, temp_a2_2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = (f32) arg0->unk0;
        sp->flags = (f32) arg0->unk2;
        sp10 = (s64) temp_a2;
        sp->drawMode = (f32) arg0->unk4;
        putData(4, sp, temp_a2, (gl_wstate *)1);
        temp_a2->unk2CA0 = M2C_ERROR(/* Read from unset register $v0 */);
        temp_a2->unk2CD8 = 1;
    }
}

void __igl_concave_TexCoord3iv(void *arg0) {
    s64 sp10;
    f64 sp8;
    gl_wstate *temp_a2;
    s32 temp_a1;
    void *temp_a2_2;

    temp_a2 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2_2 = gl_wstatep->unk2C80;
        temp_a2_2->unk28 = 5.263544247e-315;
        temp_a1 = arg0->unk0;
        temp_a2_2->unk20 = (f32) temp_a1;
        temp_a2_2->unk24 = (f32) arg0->unk4;
        temp_a2_2->unk28 = (f32) arg0->unk8;
        glTexCoord3iv(temp_a1, temp_a2_2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = (f32) arg0->unk0;
        sp->flags = (f32) arg0->unk4;
        sp10 = (s64) temp_a2;
        sp->drawMode = (f32) arg0->unk8;
        putData(4, sp, temp_a2, (gl_wstate *)1);
        temp_a2->unk2CA0 = M2C_ERROR(/* Read from unset register $v0 */);
        temp_a2->unk2CD8 = 1;
    }
}

void __igl_concave_TexCoord3fv(void *arg0) {
    s64 sp10;
    f64 sp8;
    void *temp_a2;

    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2 = gl_wstatep->unk2C80;
        temp_a2->unk28 = 5.263544247e-315;
        temp_a2->unk20 = (f32) arg0->unk0;
        temp_a2->unk24 = (f32) arg0->unk4;
        temp_a2->unk28 = (f32) arg0->unk8;
        glTexCoord3fv(temp_a2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = arg0->unk0;
        sp->flags = arg0->unk4;
        sp10 = (s64) gl_wstatep;
        sp->drawMode = arg0->unk8;
        putData(4, sp, gl_wstatep, (gl_wstate *)1);
        sp10->unk2CD8 = 1;
        sp10->unk2CA0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igl_concave_TexCoord3f(f32 arg0, f32 arg1) {
    __igl_concave_TexCoord3fv(sp);
}

void __igl_concave_TexCoord4sv(void *arg0) {
    s64 sp10;
    f64 sp8;
    s16 temp_a1;
    void *temp_a2;

    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2 = gl_wstatep->unk2C80;
        temp_a2->unk28 = 5.263544247e-315;
        temp_a2->unk20 = (f32) arg0->unk0;
        temp_a1 = arg0->unk2;
        temp_a2->unk24 = (f32) temp_a1;
        temp_a2->unk28 = (f32) arg0->unk4;
        temp_a2->unk2C = (f32) arg0->unk6;
        glTexCoord4sv(temp_a1, temp_a2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = (f32) arg0->unk0;
        sp->flags = (f32) arg0->unk2;
        sp->drawMode = (f32) arg0->unk4;
        sp10 = (s64) gl_wstatep;
        sp->colorMode = (f32) arg0->unk6;
        putData(4, sp, gl_wstatep, (gl_wstate *)1);
        sp10->unk2CD8 = 1;
        sp10->unk2CA0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igl_concave_TexCoord4iv(void *arg0) {
    s64 sp10;
    f64 sp8;
    s32 temp_a1;
    void *temp_a2;

    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2 = gl_wstatep->unk2C80;
        temp_a2->unk28 = 5.263544247e-315;
        temp_a2->unk20 = (f32) arg0->unk0;
        temp_a1 = arg0->unk4;
        temp_a2->unk24 = (f32) temp_a1;
        temp_a2->unk28 = (f32) arg0->unk8;
        temp_a2->unk2C = (f32) arg0->unkC;
        glTexCoord4iv(temp_a1, temp_a2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = (f32) arg0->unk0;
        sp->flags = (f32) arg0->unk4;
        sp->drawMode = (f32) arg0->unk8;
        sp10 = (s64) gl_wstatep;
        sp->colorMode = (f32) arg0->unkC;
        putData(4, sp, gl_wstatep, (gl_wstate *)1);
        sp10->unk2CD8 = 1;
        sp10->unk2CA0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igl_concave_TexCoord4fv(void *arg0) {
    s64 sp10;
    f64 sp8;
    void *temp_a2;

    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] != 1) {
        temp_a2 = gl_wstatep->unk2C80;
        temp_a2->unk28 = 5.263544247e-315;
        temp_a2->unk20 = (f32) arg0->unk0;
        temp_a2->unk24 = (f32) arg0->unk4;
        temp_a2->unk28 = (f32) arg0->unk8;
        temp_a2->unk2C = (f32) arg0->unkC;
        glTexCoord4fv(temp_a2, 1);
    } else {
        gl_wstatep->unk2CD4 |= 0x8000;
        sp8 = 5.263544247e-315;
        sp->next = arg0->unk0;
        sp->flags = arg0->unk4;
        sp->drawMode = arg0->unk8;
        sp10 = (s64) gl_wstatep;
        sp->colorMode = arg0->unkC;
        putData(4, sp, gl_wstatep, (gl_wstate *)1);
        sp10->unk2CD8 = 1;
        sp10->unk2CA0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igl_concave_TexCoord4f(f32 arg0, f32 arg1, f32 arg3) {
    __igl_concave_TexCoord4fv(sp);
}

void gl_i_t2s(void) {
    gl_wstatep->unk40();
}

void gl_c_t2s(void *arg0) {
    if (saved_reg_gp->unk-4EA0 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C68);
        saved_reg_gp->unk-4EA0 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_t2s(s32 arg0) {
    gl_wstatep->unk40();
}

void gl_i_t2i(void) {
    gl_wstatep->unk3C();
}

void gl_c_t2i(void *arg0) {
    if (saved_reg_gp->unk-4E9C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C58);
        saved_reg_gp->unk-4E9C = 1;
    }
    gl_compile(6, sp);
}

void gl_n_t2i(s32 arg0) {
    gl_wstatep->unk3C();
}

void gl_i_t2f(void) {
    (bitwise ? (*)()) gl_wstatep->currentNormal[2]();
}

void gl_c_t2f(void *arg0) {
    if (saved_reg_gp->unk-4E98 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C48);
        saved_reg_gp->unk-4E98 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_t2f(s32 arg0) {
    (bitwise ? (*)()) gl_wstatep->currentNormal[2]();
}

void gl_i_t2d(void *arg0) {
    (bitwise ? (*)(f32)) gl_wstatep->currentNormal[1]((f32) arg0->unk0);
}

void gl_c_t2d(void *arg0) {
    if (saved_reg_gp->unk-4E94 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C38);
        saved_reg_gp->unk-4E94 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_t2d(void *arg0) {
    (bitwise ? (*)(f32)) gl_wstatep->currentNormal[1](arg0->unk0);
}

void gl_i_t3s(void) {
    gl_wstatep->unk50();
}

void gl_c_t3s(void *arg0) {
    if (saved_reg_gp->unk-4E90 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C28);
        saved_reg_gp->unk-4E90 = 1;
    }
    gl_compile(6, sp, gl_n_t3s);
}

void gl_n_t3s(s32 arg0) {
    gl_wstatep->unk50();
}

void gl_i_t3i(void) {
    gl_wstatep->unk4C();
}

void gl_c_t3i(void *arg0) {
    if (saved_reg_gp->unk-4E8C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C18);
        saved_reg_gp->unk-4E8C = 1;
    }
    gl_compile(8, sp, gl_n_t3i);
}

void gl_n_t3i(s32 arg0) {
    gl_wstatep->unk4C();
}

void gl_i_t3f(void) {
    gl_wstatep->unk48();
}

void gl_c_t3f(void *arg0) {
    if (saved_reg_gp->unk-4E88 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5C08);
        saved_reg_gp->unk-4E88 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_t3f(s32 arg0) {
    gl_wstatep->unk48();
}

void gl_i_t3d(void *arg0) {
    gl_wstatep->unk44((f32) arg0->unk0, (f32) arg0->unk10);
}

void gl_c_t3d(void *arg0) {
    if (saved_reg_gp->unk-4E84 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5BF8);
        saved_reg_gp->unk-4E84 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_t3d(void *arg0) {
    gl_wstatep->unk44(arg0->unk0, arg0->unk8);
}

void gl_i_t4s(void) {
    gl_wstatep->unk60();
}

void gl_c_t4s(void *arg0) {
    if (saved_reg_gp->unk-4E80 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5BE8);
        saved_reg_gp->unk-4E80 = 1;
    }
    gl_compile(6, sp, (void (*)(s32)) arg0->unk0, gl_n_t4s);
}

void gl_n_t4s(s32 arg0) {
    gl_wstatep->unk60();
}

void gl_i_t4i(void) {
    gl_wstatep->unk5C();
}

void gl_c_t4i(void *arg0) {
    if (saved_reg_gp->unk-4E7C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5BD8);
        saved_reg_gp->unk-4E7C = 1;
    }
    gl_compile(0xA, sp, arg0->unk0, gl_n_t4i, arg0->unkC);
}

void gl_n_t4i(s32 arg0) {
    gl_wstatep->unk5C();
}

void gl_i_t4f(void) {
    gl_wstatep->unk58();
}

void gl_c_t4f(void *arg0) {
    if (saved_reg_gp->unk-4E78 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5BC8);
        saved_reg_gp->unk-4E78 = 1;
    }
    gl_compile(0xA, sp, arg0->unkC);
}

void gl_n_t4f(s32 arg0) {
    gl_wstatep->unk58();
}

void gl_i_t4d(void *arg0) {
    gl_wstatep->unk54((f32) arg0->unk0, (f32) (second half of f64));
}

void gl_c_t4d(void *arg0) {
    if (saved_reg_gp->unk-4E74 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5BB8);
        saved_reg_gp->unk-4E74 = 1;
    }
    gl_compile(0xA, sp, (bitwise void (*)(s32)) (f32) arg0->unk18);
}

void gl_n_t4d(void *arg0) {
    gl_wstatep->unk54(arg0->unk0, arg0->unk8);
}

void __igloo_concave_Color3sv(void *arg0, void *arg1, s16 arg2) {
    f32 spC;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f3;
    s16 temp_a2;
    s16 var_a2;
    void *temp_a0;
    void *temp_a3;
    void *temp_a4;

    var_a2 = arg2;
    if (arg0->unkC5C != 1) {
        temp_a3 = arg0->unk2C80;
        temp_a3->unkC = 1.0f;
        temp_a3->unk0 = (f32) ((f32) arg1->unk0 * 0.003921569f);
        temp_a2 = arg1->unk2;
        temp_a3->unk4 = (f32) ((f32) temp_a2 * 0.003921569f);
        temp_a3->unk8 = (f32) ((f32) arg1->unk4 * 0.003921569f);
        arg0->unk68(arg0, temp_a2, temp_a3);
    } else {
        temp_a4 = arg1 + 6;
        arg0->unkC60 = 1;
        arg0->unk2CD8 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        spC = 1.0f;
        temp_f3 = (f32) arg1->unk0 * 0.003921569f;
        temp_a0 = arg1 + 2;
        sp->next = temp_f3;
        if (temp_f3 >= 1.0f) {
            sp->next = 1.0f;
        }
        if (temp_a0 != temp_a4) {
            var_a2 = arg1->unk2;
            temp_f0 = (f32) var_a2 * 0.003921569f;
            sp->flags = temp_f0;
            if (temp_f0 >= 1.0f) {
                sp->flags = 1.0f;
            }
            if ((temp_a0 + 2) != temp_a4) {
                temp_f1 = (f32) temp_a0->unk2 * 0.003921569f;
                sp->drawMode = temp_f1;
                if (temp_f1 >= 1.0f) {
                    sp->drawMode = 1.0f;
                }
            }
        }
        putData(4, sp, (gl_wstate *) var_a2, sp);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_Color3iv(void *arg0, void *arg1, s32 arg2) {
    f32 spC;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f3;
    s32 temp_a2;
    s32 var_a2;
    void *temp_a0;
    void *temp_a3;
    void *temp_a4;

    var_a2 = arg2;
    if (arg0->unkC5C != 1) {
        temp_a3 = arg0->unk2C80;
        temp_a3->unkC = 1.0f;
        temp_a3->unk0 = (f32) ((f32) arg1->unk0 * 0.003921569f);
        temp_a2 = arg1->unk4;
        temp_a3->unk4 = (f32) ((f32) temp_a2 * 0.003921569f);
        temp_a3->unk8 = (f32) ((f32) arg1->unk8 * 0.003921569f);
        arg0->unk6C(arg0, temp_a2, temp_a3);
    } else {
        temp_a4 = arg1 + 0xC;
        arg0->unkC60 = 1;
        arg0->unk2CD8 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        spC = 1.0f;
        temp_f3 = (f32) arg1->unk0 * 0.003921569f;
        temp_a0 = arg1 + 4;
        sp->next = temp_f3;
        if (temp_f3 >= 1.0f) {
            sp->next = 1.0f;
        }
        if (temp_a0 != temp_a4) {
            var_a2 = arg1->unk4;
            temp_f0 = (f32) var_a2 * 0.003921569f;
            sp->flags = temp_f0;
            if (temp_f0 >= 1.0f) {
                sp->flags = 1.0f;
            }
            if ((temp_a0 + 4) != temp_a4) {
                temp_f1 = (f32) temp_a0->unk4 * 0.003921569f;
                sp->drawMode = temp_f1;
                if (temp_f1 >= 1.0f) {
                    sp->drawMode = 1.0f;
                }
            }
        }
        putData(4, sp, (gl_wstate *) var_a2, sp);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_Color3fv(void *arg0, void *arg1) {
    f32 spC;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f3;
    void *temp_a0;
    void *temp_a3;
    void *temp_a4;

    if (arg0->unkC5C != 1) {
        temp_a3 = arg0->unk2C80;
        temp_a3->unkC = 1.0f;
        temp_a3->unk0 = (f32) arg1->unk0;
        temp_a3->unk4 = (f32) arg1->unk4;
        temp_a3->unk8 = (f32) arg1->unk8;
        arg0->unk64(arg0, temp_a3);
    } else {
        arg0->unkC60 = 1;
        arg0->unk2CD8 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        spC = 1.0f;
        temp_a4 = arg1 + 0xC;
        temp_f3 = arg1->unk0;
        temp_a0 = arg1 + 4;
        sp->next = temp_f3;
        if (temp_f3 >= 1.0f) {
            sp->next = 1.0f;
        }
        if (temp_a0 != temp_a4) {
            temp_f0 = arg1->unk4;
            sp->flags = temp_f0;
            if (temp_f0 >= 1.0f) {
                sp->flags = 1.0f;
            }
            if ((temp_a0 + 4) != temp_a4) {
                temp_f1 = temp_a0->unk4;
                sp->drawMode = temp_f1;
                if (temp_f1 >= 1.0f) {
                    sp->drawMode = 1.0f;
                }
            }
        }
        putData(4, sp, sp);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_Color4sv(void *arg0, void *arg1) {
    f32 spC;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    s16 temp_a2;
    s16 temp_a2_2;
    void *temp_a3;

    if (arg0->unkC5C != 1) {
        temp_a3 = arg0->unk2C80;
        temp_a3->unkC = 1.0f;
        temp_a3->unk0 = (f32) ((f32) arg1->unk0 * 0.003921569f);
        temp_a3->unk4 = (f32) ((f32) arg1->unk2 * 0.003921569f);
        temp_a2 = arg1->unk4;
        temp_a3->unk8 = (f32) ((f32) temp_a2 * 0.003921569f);
        temp_a3->unkC = (f32) ((f32) arg1->unk6 * 0.003921569f);
        arg0->unk74(arg0, temp_a2, temp_a3);
    } else {
        arg0->unk2CD8 = 1;
        arg0->unkC60 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        spC = 1.0f;
        temp_a2_2 = arg1->unk0;
        temp_f0 = (f32) temp_a2_2 * 0.003921569f;
        sp->next = temp_f0;
        if (temp_f0 >= 1.0f) {
            sp->next = 1.0f;
        }
        temp_f1 = (f32) arg1->unk2 * 0.003921569f;
        sp->flags = temp_f1;
        if (temp_f1 >= 1.0f) {
            sp->flags = 1.0f;
        }
        temp_f2 = (f32) arg1->unk4 * 0.003921569f;
        sp->drawMode = temp_f2;
        if (temp_f2 >= 1.0f) {
            sp->drawMode = 1.0f;
        }
        temp_f3 = (f32) arg1->unk6 * 0.003921569f;
        sp->colorMode = temp_f3;
        if (temp_f3 >= 1.0f) {
            sp->colorMode = 1.0f;
        }
        putData(4, sp, (gl_wstate *) temp_a2_2, sp);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_Color4iv(void *arg0, void *arg1) {
    f32 spC;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    s32 temp_a2;
    s32 temp_a2_2;
    void *temp_a3;

    if (arg0->unkC5C != 1) {
        temp_a3 = arg0->unk2C80;
        temp_a3->unkC = 1.0f;
        temp_a3->unk0 = (f32) ((f32) arg1->unk0 * 0.003921569f);
        temp_a3->unk4 = (f32) ((f32) arg1->unk4 * 0.003921569f);
        temp_a2 = arg1->unk8;
        temp_a3->unk8 = (f32) ((f32) temp_a2 * 0.003921569f);
        temp_a3->unkC = (f32) ((f32) arg1->unkC * 0.003921569f);
        arg0->unk78(arg0, temp_a2, temp_a3);
    } else {
        arg0->unk2CD8 = 1;
        arg0->unkC60 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        spC = 1.0f;
        temp_a2_2 = arg1->unk0;
        temp_f0 = (f32) temp_a2_2 * 0.003921569f;
        sp->next = temp_f0;
        if (temp_f0 >= 1.0f) {
            sp->next = 1.0f;
        }
        temp_f1 = (f32) arg1->unk4 * 0.003921569f;
        sp->flags = temp_f1;
        if (temp_f1 >= 1.0f) {
            sp->flags = 1.0f;
        }
        temp_f2 = (f32) arg1->unk8 * 0.003921569f;
        sp->drawMode = temp_f2;
        if (temp_f2 >= 1.0f) {
            sp->drawMode = 1.0f;
        }
        temp_f3 = (f32) arg1->unkC * 0.003921569f;
        sp->colorMode = temp_f3;
        if (temp_f3 >= 1.0f) {
            sp->colorMode = 1.0f;
        }
        putData(4, sp, (gl_wstate *) temp_a2_2, sp);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_Color4fv(void *arg0, void *arg1) {
    f32 spC;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    void *temp_a3;

    if (arg0->unkC5C != 1) {
        temp_a3 = arg0->unk2C80;
        temp_a3->unkC = 1.0f;
        temp_a3->unk0 = (f32) arg1->unk0;
        temp_a3->unk4 = (f32) arg1->unk4;
        temp_a3->unk8 = (f32) arg1->unk8;
        temp_a3->unkC = (f32) arg1->unkC;
        arg0->unk70(arg0, temp_a3);
    } else {
        arg0->unkC60 = 1;
        arg0->unk2CD8 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        spC = 1.0f;
        temp_f0 = arg1->unk0;
        sp->next = temp_f0;
        if (temp_f0 >= 1.0f) {
            sp->next = 1.0f;
        }
        temp_f1 = arg1->unk4;
        sp->flags = temp_f1;
        if (temp_f1 >= 1.0f) {
            sp->flags = 1.0f;
        }
        temp_f2 = arg1->unk8;
        sp->drawMode = temp_f2;
        if (temp_f2 >= 1.0f) {
            sp->drawMode = 1.0f;
        }
        temp_f3 = arg1->unkC;
        sp->colorMode = temp_f3;
        if (temp_f3 >= 1.0f) {
            sp->colorMode = 1.0f;
        }
        putData(4, sp, sp);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_cpack(void *arg0, u32 arg1) {
    u64 temp_a2;
    void *temp_t8;

    temp_a2 = (u64) ((arg1 & 0xFF) << 0x20) >> 0x20;
    if (arg0->unkC5C != 1) {
        temp_t8 = arg0->unk2C80;
        temp_t8->unkC = (f32) ((f32) ((u64) ((s64) (arg1 >> 0x18) << 0x20) >> 0x20) * 0.003921569f);
        temp_t8->unk8 = (f32) ((f32) ((u64) (((arg1 >> 0x10) & 0xFF) << 0x20) >> 0x20) * 0.003921569f);
        temp_t8->unk4 = (f32) ((f32) ((u64) (((arg1 >> 8) & 0xFF) << 0x20) >> 0x20) * 0.003921569f);
        temp_t8->unk0 = (f32) ((f32) temp_a2 * 0.003921569f);
        arg0->unk80(arg0, temp_a2, 1);
    } else {
        arg0->unk2CD8 = 1;
        arg0->unkC60 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        putData(4, sp, (gl_wstate *) temp_a2, (gl_wstate *)1);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_rgbcolor(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_4;
    f32 var_f5_5;
    f32 var_f5_6;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    u32 var_f5_3;
    void *temp_a5;

    temp_t0 = arg3 > 0xFF;
    temp_a6 = arg2 > 0xFF;
    temp_a7 = arg1 > 0xFF;
    if (arg0->unkC5C != 1) {
        temp_a5 = arg0->unk2C80;
        if (temp_a7 != 0) {
            var_f5 = 1.0f;
        } else {
            var_f5 = (f32) arg1 / 255.0f;
        }
        temp_a5->unk0 = var_f5;
        if (temp_a6 != 0) {
            var_f5_2 = 1.0f;
        } else {
            var_f5_2 = (f32) arg2 / 255.0f;
        }
        temp_a5->unk4 = var_f5_2;
        if (temp_t0 != 0) {
            var_f5_3 = 0x3F800000;
        } else {
            var_f5_3 = (bitwise u32) ((f32) arg3 / 255.0f);
        }
        temp_a5->unk8 = (f64) GLUE_F64(var_f5_3, 0x3F800000U);
        arg0->unk7C(arg0);
    } else {
        arg0->unk2CD8 = 1;
        arg0->unkC60 = 1;
        arg0->unk2CD4 = (s32) (arg0->unk2CD4 | 0x1000);
        if (temp_a7 != 0) {
            var_f5_4 = 1.0f;
        } else {
            var_f5_4 = (f32) arg1 / 255.0f;
        }
        sp0 = var_f5_4;
        if (temp_a6 != 0) {
            var_f5_5 = 1.0f;
        } else {
            var_f5_5 = (f32) arg2 / 255.0f;
        }
        sp4 = var_f5_5;
        if (temp_t0 != 0) {
            var_f5_6 = 1.0f;
        } else {
            var_f5_6 = (f32) arg3 / 255.0f;
        }
        spC = 1.0f;
        sp8 = var_f5_6;
        putData(4, sp);
        arg0->unk2C94 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_indexf(f32 arg1, void *arg0) {
    f32 sp28;
    s32 temp_a2;

    sp28 = arg1;
    if (arg0->unkC5C != 1) {
        arg0->unk2C80->unk10 = arg1;
        arg0->unk88(arg0, 1);
    } else {
        arg0->unk2CD8 = 1;
        arg0->unkC60 = 1;
        temp_a2 = arg0->unk2CD4 | 0x2000;
        arg0->unk2CD4 = temp_a2;
        putData(1, (gl_wstate *) &sp28, (gl_wstate *) temp_a2, (gl_wstate *)1);
        arg0->unk2C98 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void __igloo_concave_index(s32 arg1) {
    __igloo_concave_indexf();
}

void gl_i_c3s(s32 arg0) {
    gl_wstatep->unk90(gl_wstatep, arg0);
}

void gl_c_c3s(void *arg0) {
    if (saved_reg_gp->unk-4E70 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5BA8);
        saved_reg_gp->unk-4E70 = 1;
    }
    gl_compile(6, sp, gl_n_c3s);
}

void gl_n_c3s(s32 arg0) {
    gl_wstatep->unk90(gl_wstatep, arg0);
}

void gl_i_c3i(s32 arg0) {
    gl_wstatep->unk94(gl_wstatep, arg0);
}

void gl_c_c3i(void *arg0) {
    if (saved_reg_gp->unk-4E6C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B98);
        saved_reg_gp->unk-4E6C = 1;
    }
    gl_compile(8, sp, gl_n_c3i);
}

void gl_n_c3i(s32 arg0) {
    gl_wstatep->unk94(gl_wstatep, arg0);
}

void gl_i_c3f(s32 arg0) {
    gl_wstatep->unk8C(gl_wstatep, arg0);
}

void gl_c_c3f(void *arg0) {
    if (saved_reg_gp->unk-4E68 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B88);
        saved_reg_gp->unk-4E68 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_c3f(s32 arg0) {
    gl_wstatep->unk8C(gl_wstatep, arg0);
}

void gl_i_c4s(s32 arg0) {
    gl_wstatep->unk9C(gl_wstatep, arg0);
}

void gl_c_c4s(void *arg0) {
    if (saved_reg_gp->unk-4E64 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B78);
        saved_reg_gp->unk-4E64 = 1;
    }
    gl_compile(6, sp, (void (*)(s32)) arg0->unk0, gl_n_c4s);
}

void gl_n_c4s(s32 arg0) {
    gl_wstatep->unk9C(gl_wstatep, arg0);
}

void gl_i_c4i(s32 arg0) {
    gl_wstatep->unkA0(gl_wstatep, arg0);
}

void gl_c_c4i(void *arg0) {
    if (saved_reg_gp->unk-4E60 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B68);
        saved_reg_gp->unk-4E60 = 1;
    }
    gl_compile(0xA, sp, arg0->unk0, gl_n_c4i, arg0->unkC);
}

void gl_n_c4i(s32 arg0) {
    gl_wstatep->unkA0(gl_wstatep, arg0);
}

void gl_i_c4f(s32 arg0) {
    gl_wstatep->unk98(gl_wstatep, arg0);
}

void gl_c_c4f(void *arg0) {
    if (saved_reg_gp->unk-4E5C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B58);
        saved_reg_gp->unk-4E5C = 1;
    }
    gl_compile(0xA, sp, arg0->unkC);
}

void gl_n_c4f(s32 arg0) {
    gl_wstatep->unk98(gl_wstatep, arg0);
}

void beginCheckConcave(gl_wstate *arg0) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][0] == 1) {
        if (arg0 == (gl_wstate *)9) {
            gl_wstatep->modelviewStack.stack[4][1][1] = 1e-45f;
            temp_s8->modelviewStack.stack[4][1][3] = 0.0f;
            temp_s8->unkDC = concaveEnd;
            temp_s8->unk2C74 = 0;
            temp_s8->unk2CD8 = 1;
            temp_s8->unk2CD4 = 0;
            temp_s8->modelviewStack.stack[4][1][2] = (*(void **)0x1004)->unk40;
            return;
        }
        goto block_4;
    }
block_4:
    simpleBegin(gl_wstatep, 5e-324);
    temp_s8->unkDC = simpleEnd;
}

void slowBegin(gl_wstate *arg0) {
    s64 sp18;
    gl_wstate *temp_s7;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s7 = gl_wstatep;
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0);
        glEnd();
        var_ra = sp18;
    }
    if ((bitwise s32) temp_s7->modelviewStack.stack[0][1][1] != 0) {
        sp18 = var_ra;
        SyncDepthCueGeom();
        temp_s7->modelviewStack.stack[0][1][1] = 0.0f;
        if ((bitwise s32) temp_s7->modelviewStack.stack[4][1][0] == 0) {
            temp_s7->unkD8 = simpleBegin;
        }
    }
    sp18 = var_ra;
    if ((bitwise s32) temp_s7->modelviewStack.stack[4][1][0] != 1) {
        simpleBegin(arg0, 5e-324);
    } else {
        beginCheckConcave(arg0, 1);
    }
}

void simpleBegin(s64 arg0) {
    s64 sp18;
    s64 sp8;
    s64 sp0;
    s64 var_ra;
    void *temp_at;

    var_ra = saved_reg_ra;
    temp_at = *(void **)0x1004;
    sp0 = arg0;
    sp8 = (s64) temp_at;
    if (temp_at->unk3D == 1) {
        __igloolmcolor(gl_wstatep->modelviewStack.stack[3][3][2], 1);
        var_ra = sp18;
    }
    sp18 = var_ra;
    if (gl_inMoveDraw != 0) {
        __iglooSetMoveDraw(0);
        glEnd();
    }
    sp8->unk3C = 1;
    glBegin((u32) sp0);
}

void setStartData(gl_wstate *arg0, s64 arg1) {
    s64 sp20;
    s32 temp_a1;
    s32 var_a1;

    sp20 = (s64) arg0->unk2CD4;
    setVData(arg0 + 0xC70);
    if (arg0->unk114->unk14 == 0) {
        *subroutine_arg0 = 1;
        var_a1 = arg0->unk2CD4;
        if (arg0->modelviewStack.stack[0][1][0] == 0) {
            var_a1 = var_a1 & ~0x1000 & ~0x2000;
            arg0->unk2CD4 = var_a1;
        }
        if (arg0->unk2DBC->unk18 == 0) {
            var_a1 &= ~0x4000;
            arg0->unk2CD4 = var_a1;
        }
        arg0->unk2CD4 = var_a1 & ~0xFFF;
    }
    if ((arg0->modelviewStack.stack[2][3][3] == 0) || (arg0->modelviewStack.stack[0][1][0] != 0)) {
        *subroutine_arg0 = 1;
        temp_a1 = arg0->unk2CD4 & ~0xFFF;
        arg0->unk2CD4 = temp_a1;
        if (arg0->unk2DBC->unk18 == 0) {
            arg0->unk2CD4 = temp_a1 & ~0x4000;
        }
    }
    if ((arg0->unk2DBC->unk4 == 0) && (arg0->unk2DBC->unk14 != 0)) {
        arg0->unk2CD4 &= ~0x8000;
    }
}

void setEndData(gl_wstate *arg0, s32 arg1, s32 arg2) {
    if (arg2 != 0) {
        arg0->unk2CD4 = arg1;
        setVData((arg0->modelviewStack.stack[4][1][3] << 5) + arg0 + 0xC50);
    }
}

void concaveEnd(void) {
    s64 sp58;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    f32 temp_a1;
    f32 temp_a1_2;
    f32 temp_f5;
    f32 var_f16;
    f32 var_f6;
    f64 temp_f11;
    f64 temp_f12;
    f64 temp_f14;
    f64 temp_f18;
    f64 temp_f21;
    f64 temp_f21_2;
    f64 temp_f7;
    f64 temp_f8;
    f64 temp_f8_2;
    gl_wstate *temp_s1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a5;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_a4;
    s64 var_ra;
    void *temp_a0;
    void *temp_s0;
    void *temp_s2;

    var_ra = saved_reg_ra;
    sp0 = 0;
    temp_s1 = gl_wstatep;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][1] == 1) {
        temp_s0 = gl_wstatep->unk2C80;
        temp_s2 = gl_wstatep->unk2C70 + ((((bitwise s32) gl_wstatep->modelviewStack.stack[4][1][3] << 5) + gl_wstatep)->unkC50 * 0x44);
        if (gl_wstatep->unk2DBC == NULL) {
            gl_init_texturing(gl_wstatep, 0xFFF22DFC);
            var_ra = sp58;
        }
        temp_a1 = temp_s1->modelviewStack.stack[4][1][3];
        if ((bitwise s32) temp_a1 < 3) {
            sp58 = var_ra;
            if ((bitwise s32) temp_a1 > 0) {
                setVData(((bitwise s32) temp_a1 << 5) + temp_s1 + 0xC50, temp_a1);
            }
        } else {
            sp58 = var_ra;
            setStartData(temp_s1, (s64) sp);
            temp_a1_2 = temp_s1->modelviewStack.stack[4][1][3];
            temp_a3 = (bitwise s32) temp_a1_2 < 4;
            sp28 = M2C_ERROR(/* Read from unset register $v0 */);
            if (temp_a3 == 0) {
                if ((bitwise s32) temp_a1_2 == 4) {
                    temp_f21 = temp_s1->unkCA8;
                    temp_f7 = temp_s1->unkC78;
                    temp_f12 = temp_f7 - (second half of f64);
                    temp_f8 = temp_s1->unkC88;
                    temp_f21_2 = temp_f21 - temp_f8;
                    temp_f18 = (second half of f64) - temp_f7;
                    temp_f8_2 = temp_f8 - temp_s1->unkCE8;
                    temp_f14 = (((second half of f64) - (second half of f64)) * temp_f8_2) - (second half of f64);
                    temp_f11 = (temp_f18 * ((second half of f64) - (second half of f64))) - (second half of f64);
                    var_a0 = 1;
                    if (!((f32) ((temp_f11 * (((second half of f64) * (second half of f64)) - (temp_f18 * (second half of f64)))) + ((((temp_f18 * (temp_s1->unkCC8 - temp_f21)) - ((second half of f64) * temp_f21_2)) * (second half of f64)) + (temp_f14 * ((temp_f21_2 * (second half of f64)) - ((second half of f64) * (second half of f64)))))) > 0.0f)) {
                        var_a0 = 0;
                    }
                    temp_f5 = (f32) ((temp_f11 * (((temp_s1->unkCD8 - temp_s1->unkCB8) * (temp_s1->unkCC0 - (second half of f64))) - (second half of f64))) + ((((second half of f64) - (second half of f64)) * (second half of f64)) + (second half of f64)));
                    if (var_a0 != 0) {
                        var_f16 = second half of f64;
                        var_f6 = (f32) ((temp_f11 * ((temp_f12 * (second half of f64)) - (second half of f64))) + (((second half of f64) * (((second half of f64) * temp_f8_2) - (second half of f64))) + (temp_f14 * ((second half of f64) - ((second half of f64) * temp_f8_2)))));
                        if (!((second half of f64) < temp_f5) || !((second half of f64) < var_f6)) {
                            goto block_53;
                        }
                        simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, temp_a1_2);
                        vertexCallbackFunc(&temp_s1->modelviewStack.stack[4][2][2]);
                        vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][0][2]);
                        vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][2][2]);
                        vertexCallbackFunc(&temp_s1->modelviewStack.stack[6][0][2]);
                        simpleEnd();
                    } else {
                        var_f16 = second half of f64;
                        var_f6 = (f32) ((temp_f11 * ((temp_f12 * (second half of f64)) - (second half of f64))) + (((second half of f64) * (((second half of f64) * temp_f8_2) - (second half of f64))) + (temp_f14 * (((second half of f64) * (second half of f64)) - ((second half of f64) * temp_f8_2)))));
block_53:
                        var_a1 = 1;
                        if (!(var_f16 <= (second half of f64))) {
                            var_a1 = 0;
                        }
                        var_v0 = 0;
                        if (var_a1 != 0) {
                            var_v0 = 1;
                        }
                        var_a2 = 1;
                        if (!(temp_f5 <= (second half of f64))) {
                            var_a2 = 0;
                        }
                        if (var_a2 != 0) {
                            var_v0 += 1;
                        }
                        var_a5 = 1;
                        if (!(var_f6 <= (second half of f64))) {
                            var_a5 = 0;
                        }
                        if (var_a5 != 0) {
                            var_v0 += 1;
                        }
                        if (var_v0 != 1) {
                            if (var_v0 != 3) {
                                if (var_v0 == 2) {
                                    sp8 = (s64) &temp_s1->modelviewStack.stack[5][2][2];
                                    sp18 = (s64) &temp_s1->modelviewStack.stack[5][0][2];
                                    temp_a3_2 = temp_s1->unk114->unk18;
                                    sp20 = (s64) &temp_s1->modelviewStack.stack[6][0][2];
                                    sp10 = (s64) &temp_s1->modelviewStack.stack[4][2][2];
                                    if (temp_a3_2 != 3) {
                                        if (var_a0 != 0) {
                                            simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, (bitwise f32) var_a1, var_a2, temp_a3_2);
                                            vertexCallbackFunc((f32 *) sp10);
                                            vertexCallbackFunc((f32 *) sp18);
                                            vertexCallbackFunc((f32 *) sp8);
                                            simpleEnd();
                                            simpleBegin((gl_wstate *)9);
                                            vertexCallbackFunc((f32 *) sp10);
                                            vertexCallbackFunc((f32 *) sp8);
                                            vertexCallbackFunc((f32 *) sp20);
                                            simpleEnd();
                                        } else if ((second half of f64) < var_f6) {
                                            simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, (bitwise f32) var_a1, var_a2, temp_a3_2);
                                            vertexCallbackFunc((f32 *) sp10);
                                            vertexCallbackFunc((f32 *) sp18);
                                            vertexCallbackFunc((f32 *) sp20);
                                            simpleEnd();
                                            simpleBegin((gl_wstate *)9);
                                            vertexCallbackFunc((f32 *) sp18);
                                            vertexCallbackFunc((f32 *) sp8);
                                            vertexCallbackFunc((f32 *) sp20);
                                            simpleEnd();
                                        } else {
                                            simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, (bitwise f32) var_a1, var_a2, temp_a3_2);
                                            vertexCallbackFunc((f32 *) sp10);
                                            vertexCallbackFunc((f32 *) sp18);
                                            vertexCallbackFunc((f32 *) sp8);
                                            simpleEnd();
                                            simpleBegin((gl_wstate *)9);
                                            vertexCallbackFunc((f32 *) sp18);
                                            vertexCallbackFunc((f32 *) sp8);
                                            vertexCallbackFunc((f32 *) sp20);
                                            simpleEnd();
                                        }
                                    } else {
                                        simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 2, (bitwise f32) var_a1, var_a2, temp_a3_2);
                                        vertexCallbackFunc((f32 *) sp10);
                                        vertexCallbackFunc((f32 *) sp18);
                                        vertexCallbackFunc((f32 *) sp8);
                                        vertexCallbackFunc((f32 *) sp20);
                                        simpleEnd();
                                    }
                                }
                            } else {
                                goto block_86;
                            }
                        } else if (var_v0 != 3) {
                            if (var_a1 != 0) {
                                simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, (bitwise f32) var_a1, var_a2, temp_a3);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[6][0][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[4][2][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][0][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][2][2]);
                                simpleEnd();
                                sp0 = 1;
                            } else if (var_a2 != 0) {
                                simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, (bitwise f32) var_a1, var_a2, temp_a3);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[4][2][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][0][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][2][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[6][0][2]);
                                simpleEnd();
                            } else if (var_a5 != 0) {
                                simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, (bitwise f32) var_a1, var_a2, temp_a3);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][0][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][2][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[6][0][2]);
                                vertexCallbackFunc(&temp_s1->modelviewStack.stack[4][2][2]);
                                simpleEnd();
                                sp0 = 1;
                            }
                        } else {
block_86:
                            simpleBegin((bitwise gl_wstate *) temp_f12, temp_f14, 9, (bitwise f32) var_a1, var_a2, temp_a3);
                            vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][2][2]);
                            vertexCallbackFunc(&temp_s1->modelviewStack.stack[6][0][2]);
                            vertexCallbackFunc(&temp_s1->modelviewStack.stack[4][2][2]);
                            vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][0][2]);
                            simpleEnd();
                            sp0 = 1;
                        }
                    }
                } else {
                    gluTessBeginContour(temp_s1->modelviewStack.stack[4][2][1], temp_a1_2);
                    gluTessBeginPolygon(temp_s1->modelviewStack.stack[4][2][1], 0);
                    sp30 = 0;
                    if ((bitwise s32) temp_s1->modelviewStack.stack[4][1][3] > 0) {
                        sp38 = (s64) &temp_s1->modelviewStack.stack[4][2][2];
                        sp40 = (s64) temp_s1->modelviewStack.stack[4][3];
                        do {
                            gluTessVertex(temp_s1->modelviewStack.stack[4][2][1], sp40, sp38);
                            temp_a4 = sp30 + 1;
                            sp30 = temp_a4;
                            sp40 += 0x20;
                            sp38 += 0x20;
                        } while (temp_a4 < (bitwise s32) temp_s1->modelviewStack.stack[4][1][3]);
                    }
                    gluTessEndContour(temp_s1->modelviewStack.stack[4][2][1]);
                    gluTessEndPolygon(temp_s1->modelviewStack.stack[4][2][1]);
                    sp0 = 1;
                }
            } else {
                simpleBegin((gl_wstate *)9, (f64) temp_a1_2);
                vertexCallbackFunc(&temp_s1->modelviewStack.stack[4][2][2]);
                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][0][2]);
                vertexCallbackFunc(&temp_s1->modelviewStack.stack[5][2][2]);
                simpleEnd();
            }
            setEndData(temp_s1, (s32) sp28, sp0);
        }
        glEdgeFlag(1);
        var_a3 = temp_s1->unk2CD4 & 0x1000;
        temp_s1->modelviewStack.stack[4][1][1] = 0.0f;
        if (var_a3 != 0) {
            bcopy((temp_s2->unk4 * 4) + temp_s1->unk2C80, temp_s0, 0x10, var_a3);
            var_a3 = (s32) (temp_s0 - temp_s1->unk2C80) >> 2;
            temp_s1->unk2C94 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x4000) {
            bcopy((temp_s2->unkC * 4) + temp_s1->unk2C80, temp_s0 + 0x14, 0xC, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x14) >> 2;
            temp_s1->unk2C9C = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x2000) {
            bcopy((temp_s2->unk8 * 4) + temp_s1->unk2C80, temp_s0 + 0x10, 4, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x10) >> 2;
            temp_s1->unk2C98 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x8000) {
            bcopy((temp_s2->unk10 * 4) + temp_s1->unk2C80, temp_s0 + 0x20, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x20) >> 2;
            temp_s1->unk2CA0 = var_a3;
        }
        if (temp_s1->unk2CD4 & 1) {
            bcopy((temp_s2->unk14 * 4) + temp_s1->unk2C80, temp_s0 + 0x30, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x30) >> 2;
            temp_s1->unk2CA4 = var_a3;
        }
        if (temp_s1->unk2CD4 & 2) {
            bcopy((temp_s2->unk18 * 4) + temp_s1->unk2C80, temp_s0 + 0x40, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x40) >> 2;
            temp_s1->unk2CA8 = var_a3;
        }
        if (temp_s1->unk2CD4 & 4) {
            bcopy((temp_s2->unk1C * 4) + temp_s1->unk2C80, temp_s0 + 0x50, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x50) >> 2;
            temp_s1->unk2CAC = var_a3;
        }
        if (temp_s1->unk2CD4 & 8) {
            bcopy((temp_s2->unk20 * 4) + temp_s1->unk2C80, temp_s0 + 0x60, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x60) >> 2;
            temp_s1->unk2CB0 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x10) {
            bcopy((temp_s2->unk24 * 4) + temp_s1->unk2C80, temp_s0 + 0x70, 4, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x70) >> 2;
            temp_s1->unk2CB4 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x20) {
            bcopy((temp_s2->unk28 * 4) + temp_s1->unk2C80, temp_s0 + 0x74, 0xC, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x74) >> 2;
            temp_s1->unk2CB8 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x40) {
            bcopy((temp_s2->unk2C * 4) + temp_s1->unk2C80, temp_s0 + 0x80, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x80) >> 2;
            temp_s1->unk2CBC = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x80) {
            bcopy((temp_s2->unk30 * 4) + temp_s1->unk2C80, temp_s0 + 0x90, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0x90) >> 2;
            temp_s1->unk2CC0 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x100) {
            bcopy((temp_s2->unk34 * 4) + temp_s1->unk2C80, temp_s0 + 0xA0, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0xA0) >> 2;
            temp_s1->unk2CC4 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x200) {
            bcopy((temp_s2->unk38 * 4) + temp_s1->unk2C80, temp_s0 + 0xB0, 0x10, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0xB0) >> 2;
            temp_s1->unk2CC8 = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x400) {
            bcopy((temp_s2->unk3C * 4) + temp_s1->unk2C80, temp_s0 + 0xC0, 4, var_a3);
            var_a3 = (s32) ((temp_s0 - temp_s1->unk2C80) + 0xC0) >> 2;
            temp_s1->unk2CCC = var_a3;
        }
        if (temp_s1->unk2CD4 & 0x800) {
            bcopy((temp_s2->unk40 * 4) + temp_s1->unk2C80, temp_s0 + 0xC4, 0xC, var_a3);
            var_v0_2 = temp_s0 - temp_s1->unk2C80;
            temp_s1->unk2CD0 = (s32) (var_v0_2 + 0xC4) >> 2;
        } else {
            var_v0_2 = temp_s0 - temp_s1->unk2C80;
        }
        temp_s1->unk2CD8 = 0;
        temp_s1->modelviewStack.stack[4][1][3] = 0.0f;
        temp_s1->unk2C84 = (s32) (var_v0_2 + 0xD0) >> 2;
    } else {
        simpleEnd(gl_wstatep, 0xFFF22DFC);
        __iglooSetMoveDraw(0);
        temp_a0 = *(void **)0x1004;
        if (temp_a0 != NULL) {
            temp_v0 = temp_a0->unk30;
            switch (temp_v0) {                      /* irregular */
            case 0x401:
                /* fallthrough */
            case 0x404:
            case 0x400:
            case 0x408:
                glFlush();
                break;
            }
        }
    }
}

void simpleEnd(void) {
    s32 temp_a1;
    void *temp_a2;
    void *temp_s8;

    temp_s8 = *(void **)0x1004;
    glEnd();
    temp_s8->unk3C = 0;
    temp_a2 = *(void *)0x1004;
    if (temp_a2 != NULL) {
        temp_a1 = temp_a2->unk30;
        switch (temp_a1) {                          /* irregular */
        case 0x404:
        case 0x408:
            /* fallthrough */
        case 0x400:
        case 0x401:
            glFlush();
            break;
        }
    }
    __iglooSetMoveDraw(0);
}

void gl_i_bgnpoint(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(NULL);
}

void gl_c_bgnpoint(void) {
    if (saved_reg_gp->unk-4E58 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B48);
        saved_reg_gp->unk-4E58 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_bgnpoint(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(NULL);
}

void gl_i_bgnline(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)3);
}

void gl_c_bgnline(void) {
    if (saved_reg_gp->unk-4E54 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B38);
        saved_reg_gp->unk-4E54 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_bgnline(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)3);
}

void gl_i_bgnclosedline(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)2);
}

void gl_c_bgnclosedline(void) {
    if (saved_reg_gp->unk-4E50 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B28);
        saved_reg_gp->unk-4E50 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_bgnclosedline(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)2);
}

void gl_i_bgntmesh(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkB8 = gl_wstatep->unkBC;
    gl_wstatep->unkB4(1, gl_wstatep);
    subroutine_arg0->unkD8(5);
}

void gl_c_bgntmesh(void) {
    if (saved_reg_gp->unk-4E4C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B18);
        saved_reg_gp->unk-4E4C = 1;
    }
    gl_compile(2, sp);
}

void gl_n_bgntmesh(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkB8 = gl_wstatep->unkBC;
    gl_wstatep->unkB4(1, gl_wstatep);
    subroutine_arg0->unkD8(5);
}

void gl_i_bgnqstrip(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)8);
}

void gl_c_bgnqstrip(void) {
    if (saved_reg_gp->unk-4E48 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5B08);
        saved_reg_gp->unk-4E48 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_bgnqstrip(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)8);
}

void gl_i_bgnpolygon(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)9);
}

void gl_c_bgnpolygon(void) {
    if (saved_reg_gp->unk-4E44 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5AF8);
        saved_reg_gp->unk-4E44 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_bgnpolygon(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8((gl_wstate *)9);
}

void gl_i_endpoint(void) {
    gl_wstatep->unkDC();
}

void gl_c_endpoint(void) {
    if (saved_reg_gp->unk-4E40 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5AE8);
        saved_reg_gp->unk-4E40 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_endpoint(s32 arg0) {
    gl_wstatep->unkDC();
}

void gl_i_endline(void) {
    gl_wstatep->unkDC();
}

void gl_c_endline(void) {
    if (saved_reg_gp->unk-4E3C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5AD8);
        saved_reg_gp->unk-4E3C = 1;
    }
    gl_compile(2, sp);
}

void gl_n_endline(s32 arg0) {
    gl_wstatep->unkDC();
}

void gl_i_endclosedline(void) {
    gl_wstatep->unkDC();
}

void gl_c_endclosedline(void) {
    if (saved_reg_gp->unk-4E38 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5AC8);
        saved_reg_gp->unk-4E38 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_endclosedline(s32 arg0) {
    gl_wstatep->unkDC();
}

void gl_i_endtmesh(void) {
    gl_wstate *temp_s7;

    temp_s7 = gl_wstatep;
    temp_s7->unkDC();
    temp_s7->unkB4(0);
    temp_s7->unkB8 = __iglooNullSwapTMesh;
}

void gl_c_endtmesh(void) {
    if (saved_reg_gp->unk-4E34 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5AB8);
        saved_reg_gp->unk-4E34 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_endtmesh(s32 arg0) {
    gl_wstate *temp_s0;

    temp_s0 = gl_wstatep;
    temp_s0->unkDC();
    temp_s0->unkB4(0);
    temp_s0->unkB8 = __iglooNullSwapTMesh;
}

void gl_i_endqstrip(void) {
    gl_wstatep->unkDC();
}

void gl_c_endqstrip(void) {
    if (saved_reg_gp->unk-4E30 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5AA8);
        saved_reg_gp->unk-4E30 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_endqstrip(s32 arg0) {
    gl_wstatep->unkDC();
}

void gl_i_endpolygon(void) {
    gl_wstatep->unkDC();
}

void gl_c_endpolygon(void) {
    if (saved_reg_gp->unk-4E2C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A98);
        saved_reg_gp->unk-4E2C = 1;
    }
    gl_compile(2, sp);
}

void gl_n_endpolygon(s32 arg0) {
    gl_wstatep->unkDC();
}

void __igl_concave_Normal3fv(void *arg0, void *arg1) {
    s32 temp_a2;
    void *temp_v1;

    if (arg0->unkC5C != 1) {
        temp_v1 = arg0->unk2C80;
        temp_v1->unk14 = (f32) arg1->unk0;
        temp_v1->unk18 = (f32) arg1->unk4;
        temp_v1->unk1C = (f32) arg1->unk8;
        arg0->unkC0(arg0, 1);
    } else {
        arg0->unk2CD8 = 1;
        arg0->unkC60 = 0;
        temp_a2 = arg0->unk2CD4 | 0x4000;
        arg0->unk2CD4 = temp_a2;
        putData(3, (gl_wstate *) temp_a2, (gl_wstate *)1);
        arg0->unk2C9C = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
}

void gl_i_n3f(s32 arg0) {
    gl_wstatep->unkD4(gl_wstatep, arg0);
}

void gl_c_n3f(void *arg0) {
    if (saved_reg_gp->unk-4E28 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A88);
        saved_reg_gp->unk-4E28 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_n3f(s32 arg0) {
    gl_wstatep->unkD4(gl_wstatep, arg0);
}

void gl_i_normal(s32 arg0) {
    gl_wstatep->unkD4(gl_wstatep, arg0);
}

void gl_c_normal(void *arg0) {
    if (saved_reg_gp->unk-4E24 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A78);
        saved_reg_gp->unk-4E24 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_normal(s32 arg0) {
    gl_wstatep->unkD4(gl_wstatep, arg0);
}

void gl_i_swaptmesh(void) {
    gl_wstatep->unkB8();
}

void gl_c_swaptmesh(void) {
    if (saved_reg_gp->unk-4E20 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5A68);
        saved_reg_gp->unk-4E20 = 1;
    }
    gl_compile(2, sp);
}

void gl_n_swaptmesh(s32 arg0) {
    gl_wstatep->unkB8();
}
