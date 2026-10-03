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
    /* 0x003C */ void (*unk3C)();                   /* inferred */
    /* 0x0040 */ void (*unk40)();                   /* inferred */
    /* 0x0044 */ void (*unk44)();                   /* inferred */
    /* 0x0048 */ void (*unk48)();                   /* inferred */
    /* 0x004C */ void (*unk4C)();                   /* inferred */
    /* 0x0050 */ void (*unk50)();                   /* inferred */
    /* 0x0054 */ void (*unk54)();                   /* inferred */
    /* 0x0058 */ void (*unk58)();                   /* inferred */
    /* 0x005C */ void (*unk5C)();                   /* inferred */
    /* 0x0060 */ void (*unk60)();                   /* inferred */
    /* 0x0064 */ s32 unk64;                         /* inferred */
    /* 0x0068 */ s32 unk68;                         /* inferred */
    /* 0x006C */ s32 unk6C;                         /* inferred */
    /* 0x0070 */ ? (*unk70)(gl_wstate *, void *, s32, s32); /* inferred */
    /* 0x0074 */ s32 unk74;                         /* inferred */
    /* 0x0078 */ s32 unk78;                         /* inferred */
    /* 0x007C */ s32 unk7C;                         /* inferred */
    /* 0x0080 */ s32 unk80;                         /* inferred */
    /* 0x0084 */ s32 unk84;                         /* inferred */
    /* 0x0088 */ ? (*unk88)(gl_wstate *, s32, s32); /* inferred */
    /* 0x008C */ s32 unk8C;                         /* inferred */
    /* 0x0090 */ s32 unk90;                         /* inferred */
    /* 0x0094 */ s32 unk94;                         /* inferred */
    /* 0x0098 */ ? (*unk98)(gl_wstate *, void *, s32, s32); /* inferred */
    /* 0x009C */ s32 unk9C;                         /* inferred */
    /* 0x00A0 */ s32 unkA0;                         /* inferred */
    /* 0x00A4 */ s32 unkA4;                         /* inferred */
    /* 0x00A8 */ s32 unkA8;                         /* inferred */
    /* 0x00AC */ s32 unkAC;                         /* inferred */
    /* 0x00B0 */ ? (*unkB0)(gl_wstate *, s32, s32); /* inferred */
    /* 0x00B4 */ char padB4[0xC];                   /* maybe part of unkB0[4]? */
    /* 0x00C0 */ void (*unkC0)(gl_wstate *, void *, s32, s32); /* inferred */
    /* 0x00C4 */ char padC4[0x10];                  /* maybe part of unkC0[5]? */
    /* 0x00D4 */ void (*unkD4)(gl_wstate *, void *, s32, s32); /* inferred */
    /* 0x00D8 */ void (*unkD8)(s32);                /* inferred */
    /* 0x00DC */ char padDC[4];
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
    /* 0x2C70 */ void *unk2C70;                     /* inferred */
    /* 0x2C74 */ u32 unk2C74;                       /* inferred */
    /* 0x2C78 */ u32 unk2C78;                       /* inferred */
    /* 0x2C7C */ s32 unk2C7C;                       /* inferred */
    /* 0x2C80 */ void *unk2C80;                     /* inferred */
    /* 0x2C84 */ s32 unk2C84;                       /* inferred */
    /* 0x2C88 */ u32 unk2C88;                       /* inferred */
    /* 0x2C8C */ u32 unk2C8C;                       /* inferred */
    /* 0x2C90 */ ? unk2C90;                         /* inferred */
    /* 0x2C90 */ char pad2C90[0x44];
    /* 0x2CD4 */ s32 unk2CD4;                       /* inferred */
    /* 0x2CD8 */ char pad2CD8[0x210];               /* maybe part of unk2CD4[0x85]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? bcopy(s64, s64, s32, s32);                        /* extern */
void glEdgeFlag(s32 arg0);                          /* extern */
? glGetMaterialfv(?, ?, void *, s32);               /* extern */
? glMaterialfv(?, ?, void *);                       /* extern */
? glTexCoord4fv(void *);                            /* extern */
? glVertex3dv(s32);                                 /* extern */
? gluDeleteTess(s32);                               /* extern */
s32 gluNewTess(f32, ?, f32);                        /* extern */
? gluTessCallback(s32, ?, void (*)(s32));           /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void outOfMemory(void) {
    gl_ErrorHandler(2, 5, &sub_0f020000 + 0x5270);
}

void putData(s64 arg0, s64 arg1) {
    s64 sp30;
    s64 sp28;
    s64 sp18;
    s64 sp10;
    s32 temp_t0;
    s64 var_a5;
    s64 var_a6;
    u32 temp_a2;
    u32 temp_v0;
    void **temp_s0;
    void *temp_v0_2;
    void *var_a7;

    var_a6 = arg1;
    temp_v0 = gl_wstatep->unk2C88;
    var_a5 = arg0;
    temp_s0 = &gl_wstatep->unk2C80;
    if (temp_v0 >= (u32) (gl_wstatep->unk2C84 + arg0)) {
        var_a7 = temp_s0->unk0;
    } else {
        sp30 = var_a5;
        sp28 = var_a6;
        temp_a2 = gl_wstatep->unk2C8C + temp_v0;
        gl_wstatep->unk2C88 = temp_a2;
        temp_v0_2 = __iglooRealloc(temp_s0->unk0, temp_s0->unk8 * 4, temp_a2);
        if (temp_v0_2 == NULL) {
            sp18 = (s64) temp_v0_2;
            gl_socket_queue_init();
            var_a6 = sp28;
            var_a5 = sp30;
        }
        var_a7 = temp_v0_2;
        temp_s0->unk0 = temp_v0_2;
    }
    temp_t0 = temp_s0->unk4;
    sp10 = (s64) temp_t0;
    temp_s0->unk4 = (s32) (var_a5 + temp_t0);
    bcopy(var_a6, (s64) ((temp_t0 * 4) + var_a7), var_a5 * 4);
}

s32 getVDataPtrs(void) {
    s64 sp28;
    s64 sp18;
    ? *var_a0;
    s32 temp_a3_2;
    u32 temp_a2;
    u32 temp_a3;
    u32 temp_v0;
    void **temp_s0;
    void *temp_a1;
    void *temp_v0_2;
    void *var_a5;

    temp_v0 = gl_wstatep->unk2C78;
    temp_s0 = &gl_wstatep->unk2C70;
    var_a0 = &gl_wstatep->unk2C90;
    if ((u32) gl_wstatep->unk2C74 < temp_v0) {
        var_a5 = temp_s0->unk0;
    } else {
        temp_a3 = gl_wstatep->unk2C7C + temp_v0;
        gl_wstatep->unk2C78 = temp_a3;
        sp28 = (s64) var_a0;
        temp_a2 = temp_s0->unk8;
        temp_v0_2 = __iglooRealloc(temp_s0->unk0, temp_a2 * 0x44, temp_a2, temp_a3);
        if (temp_v0_2 == NULL) {
            sp18 = (s64) temp_v0_2;
            gl_socket_queue_init(var_a0);
            var_a0 = (? *) sp28;
        }
        var_a5 = temp_v0_2;
        temp_s0->unk0 = temp_v0_2;
    }
    temp_a3_2 = temp_s0->unk4;
    temp_a1 = (temp_a3_2 * 0x44) + var_a5;
    unksp8 = (s64) temp_a1;
    bcopy((s64) var_a0, (s64) temp_a1, 0x44, temp_a3_2);
    temp_s0->unk4 = (s32) (temp_s0->unk4 + 1);
    return (s32) unksp8;
}

void setVData(s32 *arg0) {
    s64 sp20;
    gl_wstate *temp_s0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_at;
    s64 var_ra;
    void *temp_s1;
    void *temp_s2;

    var_ra = saved_reg_ra;
    temp_s2 = gl_wstatep->unk2C80;
    temp_a2 = gl_wstatep->unk2CD4;
    temp_s0 = gl_wstatep;
    temp_s1 = gl_wstatep->unk2C70 + (*arg0 * 0x44);
    temp_a3 = temp_s1->unk0;
    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        if (temp_a3 != 1) {
            if (temp_a2 & 0x1000) {
                gl_wstatep->unk70(gl_wstatep, (temp_s1->unk4 * 4) + temp_s2, temp_a2, temp_a3);
                var_ra = sp20;
            }
            temp_a0 = temp_s0->unk2CD4;
            var_at = temp_a0 & 0x8000;
            if (temp_a0 & 0x4000) {
                sp20 = var_ra;
                temp_s0->unkC0(temp_s0, (temp_s1->unkC * 4) + temp_s2);
                goto block_6;
            }
        } else {
            if (temp_a2 & 0x4000) {
                gl_wstatep->unkC0(gl_wstatep, (temp_s1->unkC * 4) + temp_s2, temp_a2, temp_a3);
                var_ra = sp20;
            }
            temp_a0_2 = temp_s0->unk2CD4;
            var_at = temp_a0_2 & 0x8000;
            if (temp_a0_2 & 0x1000) {
                sp20 = var_ra;
                temp_s0->unk70(temp_s0, (temp_s1->unk4 * 4) + temp_s2);
block_6:
                var_ra = sp20;
                var_at = temp_s0->unk2CD4 & 0x8000;
            }
        }
        if (var_at != 0) {
            sp20 = var_ra;
            glTexCoord4fv((temp_s1->unk10 * 4) + temp_s2);
        }
        if ((bitwise s32) temp_s0->modelviewStack.stack[2][3][3] != 0) {
            if (temp_s0->unk2CD4 & 1) {
                sp20 = var_ra;
                glMaterialfv(0x404, 0x1600, (temp_s1->unk14 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 2) {
                sp20 = var_ra;
                glMaterialfv(0x404, 0x1200, (temp_s1->unk18 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 4) {
                sp20 = var_ra;
                glMaterialfv(0x404, 0x1201, (temp_s1->unk1C * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 8) {
                sp20 = var_ra;
                glMaterialfv(0x404, 0x1202, (temp_s1->unk20 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x10) {
                sp20 = var_ra;
                glMaterialfv(0x404, 0x1601, (temp_s1->unk24 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x40) {
                sp20 = var_ra;
                glMaterialfv(0x405, 0x1600, (temp_s1->unk2C * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x80) {
                sp20 = var_ra;
                glMaterialfv(0x405, 0x1200, (temp_s1->unk30 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x100) {
                sp20 = var_ra;
                glMaterialfv(0x405, 0x1201, (temp_s1->unk34 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x200) {
                sp20 = var_ra;
                glMaterialfv(0x405, 0x1202, (temp_s1->unk38 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x400) {
                sp20 = var_ra;
                glMaterialfv(0x405, 0x1601, (temp_s1->unk3C * 4) + temp_s2);
            }
        }
    } else {
        if (temp_a3 != 1) {
            if (temp_a2 & 0x2000) {
                gl_wstatep->unk88(gl_wstatep, temp_a2, temp_a3);
                var_ra = sp20;
            }
            if (temp_s0->unk2CD4 & 0x4000) {
                sp20 = var_ra;
                temp_s0->unkC0(temp_s0, (temp_s1->unkC * 4) + temp_s2);
                goto block_37;
            }
        } else {
            if (temp_a2 & 0x4000) {
                gl_wstatep->unkC0(gl_wstatep, (temp_s1->unkC * 4) + temp_s2, temp_a2, temp_a3);
                var_ra = sp20;
            }
            if (temp_s0->unk2CD4 & 0x2000) {
                sp20 = var_ra;
                temp_s0->unk88(temp_s0);
block_37:
                var_ra = sp20;
            }
        }
        if ((bitwise s32) temp_s0->modelviewStack.stack[2][3][3] != 0) {
            if (temp_s0->unk2CD4 & 0x20) {
                sp20 = var_ra;
                glMaterialfv(0x404, 0x1603, (temp_s1->unk28 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x800) {
                sp20 = var_ra;
                glMaterialfv(0x405, 0x1603, (temp_s1->unk40 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x10) {
                sp20 = var_ra;
                glMaterialfv(0x404, 0x1601, (temp_s1->unk24 * 4) + temp_s2);
            }
            if (temp_s0->unk2CD4 & 0x400) {
                sp20 = var_ra;
                glMaterialfv(0x405, 0x1601, (temp_s1->unk3C * 4) + temp_s2);
            }
        }
    }
}

void vertexCallbackFunc(s32 arg0) {
    setVData();
    glVertex3dv(arg0 + 8);
}

void gl_free_concave_data(void *arg0) {
    s64 sp10;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (arg0 != NULL) {
        temp_a0 = arg0->unkC6C;
        if (temp_a0 != 0) {
            gluDeleteTess(temp_a0);
            arg0->unkC6C = 0;
            var_ra = sp10;
        }
        temp_a0_2 = arg0->unk2C80;
        if (temp_a0_2 != 0) {
            sp10 = var_ra;
            __iglooFree(temp_a0_2);
            arg0->unk2C80 = 0;
        }
        temp_a0_3 = arg0->unk2C70;
        if (temp_a0_3 != 0) {
            sp10 = var_ra;
            __iglooFree(temp_a0_3);
            arg0->unk2C70 = 0;
        }
    }
}

void __iglooSetColorProcsHeavy(gl_wstate *arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF1F820;
    arg0->unk8C = temp_at->unk-61F0;
    arg0->unkA8 = temp_at->unk-61E0;
    arg0->unkAC = temp_at->unk-61D4;
    arg0->unkB0 = temp_at->unk-61D8;
    arg0->unkA4 = temp_at->unk-61DC;
    arg0->unk90 = temp_at->unk-61F8;
    arg0->unk94 = temp_at->unk-61F4;
    arg0->unk98 = temp_at->unk-61E4;
    arg0->unk9C = temp_at->unk-61EC;
    arg0->unkA0 = temp_at->unk-61E8;
}

void __iglooSetColorProcsLight(gl_wstate *arg0) {
    arg0->unkA4 = arg0->unk7C;
    arg0->unkA8 = arg0->unk80;
    arg0->unk94 = arg0->unk6C;
    arg0->unk98 = arg0->unk70;
    arg0->unkB0 = arg0->unk88;
    arg0->unkAC = arg0->unk84;
    arg0->unk8C = arg0->unk64;
    arg0->unk90 = arg0->unk68;
    arg0->unk9C = arg0->unk74;
    arg0->unkA0 = arg0->unk78;
}

void __iglooInitLightColorProcs(void *arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF1F76C;
    arg0->unk64 = (s32) temp_at->unk-7A88;
    arg0->unk80 = (s32) temp_at->unk-7A70;
    arg0->unk84 = (s32) temp_at->unk-7A68;
    arg0->unk88 = (s32) temp_at->unk-7A64;
    arg0->unk7C = (s32) temp_at->unk-7A6C;
    arg0->unk68 = (s32) temp_at->unk-7A80;
    arg0->unk6C = (s32) temp_at->unk-7A84;
    arg0->unk70 = (s32) temp_at->unk-7A7C;
    arg0->unk74 = (s32) temp_at->unk-7A74;
    arg0->unk78 = (s32) temp_at->unk-7A78;
}

void setSoftProcs(void) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    temp_s8->blendDst = (s32) __igl_concave_vertex4f;
    temp_s8->unk28 = __igl_concave_vertex4fv;
    temp_s8->currentRGB = (u32) __igl_concave_vertex4iv;
    temp_s8->currentNormal[0] = (bitwise f32) __igl_concave_vertex4sv;
    temp_s8->shadingModel = (s32) __igl_concave_vertex3f;
    temp_s8->zbuffer = (s32) __igl_concave_vertex3fv;
    temp_s8->zfunction = (s32) __igl_concave_vertex3iv;
    temp_s8->blendSrc = (s32) __igl_concave_vertex3sv;
    temp_s8->flags = (u32) __igl_concave_vertex2f;
    temp_s8->drawMode = (s32) __igl_concave_vertex2fv;
    temp_s8->colorMode = (s32) __igl_concave_vertex2iv;
    temp_s8->bufferMode = (s32) __igl_concave_vertex2sv;
    temp_s8->unkD8 = slowBegin;
    __iglooSetColorProcsHeavy(temp_s8, __igl_concave_vertex2fv, __igl_concave_vertex2f, __igl_concave_vertex3sv);
    temp_s8->unk44 = __igl_concave_TexCoord3f;
    temp_s8->unk58 = __igl_concave_TexCoord4fv;
    temp_s8->unk60 = __igl_concave_TexCoord4sv;
    temp_s8->unk5C = __igl_concave_TexCoord4iv;
    temp_s8->unk54 = __igl_concave_TexCoord4f;
    temp_s8->unkD4 = __igl_concave_Normal3fv;
    temp_s8->unk50 = __igl_concave_TexCoord3sv;
    temp_s8->unk48 = __igl_concave_TexCoord3fv;
    temp_s8->unk4C = __igl_concave_TexCoord3iv;
    temp_s8->currentNormal[1] = (bitwise f32) __igl_concave_TexCoord2f;
    temp_s8->unk3C = __igl_concave_TexCoord2iv;
    temp_s8->currentNormal[2] = (bitwise f32) __igl_concave_TexCoord2fv;
    temp_s8->unk40 = __igl_concave_TexCoord2sv;
}

void initDataPool(void) {
    ? *temp_s5;
    s32 temp_a3;
    void **temp_s1;
    void *temp_s7;

    temp_s1 = &gl_wstatep->unk2C80;
    temp_s7 = gl_wstatep->unk2C80;
    temp_s5 = &gl_wstatep->unk2C90;
    __iglooGetFloatv(0xB00, temp_s7);
    temp_s5->unk4 = (s32) ((s32) (temp_s7 - *temp_s1) >> 2);
    __iglooGetFloatv(0xB02, temp_s7 + 0x14);
    temp_s5->unkC = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x14) >> 2);
    __iglooGetFloatv(0xB01, temp_s7 + 0x10);
    temp_s5->unk8 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x10) >> 2);
    __iglooGetFloatv(0xB03, temp_s7 + 0x20);
    temp_s5->unk10 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x20) >> 2);
    glGetMaterialfv(0x404, 0x1600, temp_s7 + 0x30);
    temp_a3 = (s32) ((temp_s7 - *temp_s1) + 0x30) >> 2;
    temp_s5->unk14 = temp_a3;
    glGetMaterialfv(0x404, 0x1200, temp_s7 + 0x40, temp_a3);
    temp_s5->unk18 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x40) >> 2);
    glGetMaterialfv(0x404, 0x1201, temp_s7 + 0x50);
    temp_s5->unk1C = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x50) >> 2);
    glGetMaterialfv(0x404, 0x1202, temp_s7 + 0x60);
    temp_s5->unk20 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x60) >> 2);
    glGetMaterialfv(0x404, 0x1601, temp_s7 + 0x70);
    temp_s5->unk24 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x70) >> 2);
    glGetMaterialfv(0x404, 0x1603, temp_s7 + 0x74);
    temp_s5->unk28 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x74) >> 2);
    glGetMaterialfv(0x405, 0x1600, temp_s7 + 0x80);
    temp_s5->unk2C = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x80) >> 2);
    glGetMaterialfv(0x405, 0x1200, temp_s7 + 0x90);
    temp_s5->unk30 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0x90) >> 2);
    glGetMaterialfv(0x405, 0x1201, temp_s7 + 0xA0);
    temp_s5->unk34 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0xA0) >> 2);
    glGetMaterialfv(0x405, 0x1202, temp_s7 + 0xB0);
    temp_s5->unk38 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0xB0) >> 2);
    glGetMaterialfv(0x405, 0x1601, temp_s7 + 0xC0);
    temp_s5->unk3C = (s32) ((s32) ((temp_s7 - *temp_s1) + 0xC0) >> 2);
    glGetMaterialfv(0x405, 0x1603, temp_s7 + 0xC4);
    temp_s5->unk40 = (s32) ((s32) ((temp_s7 - *temp_s1) + 0xC4) >> 2);
}

void checkInitDataPools(void) {
    s64 sp10;
    s32 var_a2;
    s64 var_ra;
    void **temp_s5;
    void **temp_s7;

    var_ra = saved_reg_ra;
    temp_s5 = &gl_wstatep->unk2C70;
    temp_s7 = &gl_wstatep->unk2C80;
    if (gl_wstatep->unk2C88 == 0) {
        gl_wstatep->unk2C88 = gl_wstatep->unk2C8C;
    }
    if (temp_s7->unk0 == NULL) {
        temp_s7->unk0 = __iglooMalloc(temp_s7->unk8 * 4, gl_wstatep);
        var_ra = sp10;
    }
    var_a2 = temp_s5->unk8;
    if (var_a2 == 0) {
        var_a2 = temp_s5->unkC;
        temp_s5->unk8 = var_a2;
    }
    if (temp_s5->unk0 == NULL) {
        sp10 = var_ra;
        temp_s5->unk0 = __iglooMalloc(var_a2 * 0x44);
    }
}

void __iglooSyncConcavePmode(void) {
    s64 sp10;
    f32 var_a0;
    gl_wstate *temp_s7;
    s32 temp_v0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s7 = gl_wstatep;
    if ((bitwise s32) temp_s7->modelviewStack.stack[4][2][1] != 0) {
        var_a0 = temp_s7->modelviewStack.stack[4][2][1];
    } else {
        temp_v0 = gluNewTess();
        var_a0 = (bitwise f32) temp_v0;
        temp_s7->modelviewStack.stack[4][2][1] = (bitwise f32) temp_v0;
        var_ra = sp10;
    }
    if (temp_s7->unk114->unk18 == 3) {
        sp10 = var_ra;
        if ((bitwise s32) temp_s7->modelviewStack.stack[4][1][0] != 1) {
            goto block_5;
        }
        gluTessCallback((bitwise s32) var_a0, 0x18708, glEdgeFlag);
    } else {
block_5:
        sp10 = var_ra;
        gluTessCallback((bitwise s32) var_a0, 0x18708, NULL);
    }
}

void __gl_concave(s64 arg0) {
    s64 sp0;
    f32 temp_a3;
    f32 var_a0;
    gl_wstate *temp_s0;
    s32 temp_v0;

    temp_s0 = gl_wstatep;
    if (arg0 == 1) {
        gl_wstatep->modelviewStack.stack[4][1][0] = 1e-45f;
        temp_a3 = temp_s0->modelviewStack.stack[4][2][1];
        sp0 = (s64) &gl_wstatep->unk2C80;
        temp_s0->modelviewStack.stack[4][1][1] = 0.0f;
        temp_s0->unk2CD4 = 0;
        if ((bitwise s32) temp_a3 == 0) {
            temp_s0->modelviewStack.stack[4][2][1] = (bitwise f32) gluNewTess((bitwise f32) gl_wstatep, 1, temp_a3);
        }
        initDataPool();
        gluTessCallback((bitwise s32) temp_s0->modelviewStack.stack[4][2][1], 0x18704, simpleBegin);
        gluTessCallback((bitwise s32) temp_s0->modelviewStack.stack[4][2][1], 0x18705, vertexCallbackFunc);
        gluTessCallback((bitwise s32) temp_s0->modelviewStack.stack[4][2][1], 0x18706, simpleEnd);
        initDataPool();
        sp0->unk4 = 0x34;
        temp_s0->unk2C74 = 0;
        __iglooInitLightColorProcs();
        var_a0 = temp_s0->modelviewStack.stack[4][2][1];
        if ((bitwise s32) var_a0 == 0) {
            temp_v0 = gluNewTess(var_a0);
            var_a0 = (bitwise f32) temp_v0;
            temp_s0->modelviewStack.stack[4][2][1] = (bitwise f32) temp_v0;
        }
        gluTessCallback((bitwise s32) var_a0, 0x18704, simpleBegin);
        gluTessCallback((bitwise s32) temp_s0->modelviewStack.stack[4][2][1], 0x18705, vertexCallbackFunc);
        gluTessCallback((bitwise s32) temp_s0->modelviewStack.stack[4][2][1], 0x18706, simpleEnd);
        __iglooSyncConcavePmode();
    } else {
        gl_wstatep->modelviewStack.stack[4][1][0] = 0.0f;
        __iglooSyncConcavePmode(gl_wstatep, 1);
        __iglooSetColorProcsLight(temp_s0);
        __iglooPickDefaultVertexProcs(temp_s0);
        __iglooPickDefaultTexCoordProcs(temp_s0);
        temp_s0->unkD4 = temp_s0->unkC0;
        if ((bitwise s32) temp_s0->modelviewStack.stack[0][1][1] == 0) {
            temp_s0->unkD8 = simpleBegin;
        }
    }
}

void gl_i_concave(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_concave(arg0);
}

void gl_c_concave(s32 arg0) {
    if (saved_reg_gp->unk-4E0C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5738);
        saved_reg_gp->unk-4E0C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_concave(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_concave((s64) *arg0);
}
