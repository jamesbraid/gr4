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
    /* 0x003C */ char pad3C[0x84];                  /* maybe part of currentNormal[0xC]? */
    /* 0x00C0 */ ? (*unkC0)(gl_wstate *, void *);   /* inferred */
    /* 0x00C4 */ char padC4[0x14];                  /* maybe part of unkC0[6]? */
    /* 0x00D8 */ ? (*unkD8)(?, ?);                  /* inferred */
    /* 0x00DC */ ? (*unkDC)();                      /* inferred */
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
    /* 0x2B00 */ char pad2B00[0x2D8];               /* maybe part of currentVertex[0x2E]? */
    /* 0x2DD8 */ s32 unk2DD8;                       /* inferred */
    /* 0x2DDC */ f32 unk2DDC;                       /* inferred */
    /* 0x2DE0 */ f32 unk2DE0;                       /* inferred */
    /* 0x2DE4 */ f32 unk2DE4;                       /* inferred */
    /* 0x2DE8 */ f32 unk2DE8;                       /* inferred */
    /* 0x2DEC */ f32 unk2DEC;                       /* inferred */
    /* 0x2DF0 */ f32 unk2DF0;                       /* inferred */
    /* 0x2DF4 */ f32 unk2DF4;                       /* inferred */
    /* 0x2DF8 */ f32 unk2DF8;                       /* inferred */
    /* 0x2DFC */ f32 unk2DFC;                       /* inferred */
    /* 0x2E00 */ f32 unk2E00;                       /* inferred */
    /* 0x2E04 */ f32 unk2E04;                       /* inferred */
    /* 0x2E08 */ f32 unk2E08;                       /* inferred */
    /* 0x2E0C */ f32 unk2E0C;                       /* inferred */
    /* 0x2E10 */ char pad2E10[0xD8];                /* maybe part of unk2E0C[0x37]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? bgnsurface();                                     /* extern */
? endcurve();                                       /* extern */
? endsurface(s64);                                  /* extern */
? endtrim();                                        /* extern */
? fprintf(void *, void *, s64, s64);                /* extern */
s32 glGetError();                                   /* extern */
? gluBeginCurve(s32);                               /* extern */
? gluBeginSurface(s32);                             /* extern */
? gluBeginTrim(s32, ?);                             /* extern */
? gluDeleteNurbsRenderer(s32);                      /* extern */
? gluEndCurve(s32);                                 /* extern */
? gluEndSurface(s32, f64 *);                        /* extern */
? gluEndTrim(s32);                                  /* extern */
s32 gluErrorString(s32);                            /* extern */
s32 gluNewNurbsRenderer();                          /* extern */
? gluNurbsCurve(s32, s32, s32, s32);                /* extern */
? gluNurbsProperty(s32, s32, s64, s32 *, gl_wstate *); /* extern */
? gluNurbsSurface(s32, s32, s32, s32, s32);         /* extern */
? gluPwlCurve(s32, s32, s32, ?);                    /* extern */
? sprintf(f64 *, void *, s32, f64 *);               /* extern */
extern ? __iob;
extern s32 gl_openobjhdr;
extern ? sub_0f020000;
extern ? sub_0f030000;
extern ? sub_0f0f0000;

void gl_nurbsinit(void) {
    s64 sp0;
    s32 temp_v0;

    sp0 = (s64) gl_wstatep;
    if (gl_wstatep->unk2DD8 != 0) {
        return;
    }
    temp_v0 = gluNewNurbsRenderer();
    sp0->unk2DD8 = temp_v0;
    sp0->unk2DDC = 50.0f;
    gluNurbsProperty(temp_v0, 0x1876D);
    gluNurbsProperty(sp0->unk2DD8, 0x1876B, sp0);
    gluNurbsProperty(sp0->unk2DD8, 0x18769);
}

void gl_freebgnsurface(void) {

}

void gl_bgnsurface(void) {
    gl_wstate *temp_s7;

    temp_s7 = gl_wstatep;
    if (saved_reg_gp->unk-5044 != 0) {
        gl_nurbserror(&sub_0f020000 + 0x46E8);
        endsurface();
    }
    saved_reg_gp->unk-5044 = 1;
    temp_s7->unkD8(0, 1);
    temp_s7->unkDC();
    temp_s7->unkC0(temp_s7, &sub_0f030000 - 0x6368);
    __iglooSetEnable(0xD80, 1);
    gluBeginSurface(temp_s7->unk2DD8);
}

void gl_g_bgnsurface(void) {
    gl_normalmode();
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(&sub_0f0f0000 + 0x3408, &sub_0f0f0000 + 0x3400, 1, 0);
        return;
    }
    gl_normalmode(1, 0);
}

void gl_g_bgncurve(void) {
    gl_normalmode();
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(&sub_0f0f0000 + 0x35B4, &sub_0f0f0000 + 0x3BB0, 1, 0);
        return;
    }
    gl_g_bgncurve(1, 0);
}

void gl_bgncurve(void) {
    gl_wstate *temp_s7;

    temp_s7 = gl_wstatep;
    if (saved_reg_gp->unk-5040 != 0) {
        gl_nurbserror(&sub_0f020000 + 0x4710);
        endcurve();
    }
    saved_reg_gp->unk-5040 = 1;
    temp_s7->unkD8(0, 1);
    temp_s7->unkDC();
    gluBeginCurve(temp_s7->unk2DD8);
}

void gl_g_endcurve(void) {
    gl_normalmode();
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(&sub_0f0f0000 + 0x36B8, &sub_0f0f0000 + 0x3A60, 0, 0);
        return;
    }
    gl_g_endcurve();
}

void gl_endcurve(void) {
    s32 var_v0;

    if (saved_reg_gp->unk-5040 != 0) {
        saved_reg_gp->unk-5040 = 0;
        gluEndCurve(gl_wstatep->unk2DD8);
        if ((subroutine_arg0->unk2DE8 != 0.0f) && (saved_reg_gp->unk-5044 == 0)) {
            var_v0 = glGetError();
            if (var_v0 != 0) {
                do {
                    printf(&sub_0f020000 + 0x4760, gluErrorString(var_v0));
                    var_v0 = glGetError();
                } while (var_v0 != 0);
            }
        }
        return;
    }
    gl_nurbserror(&sub_0f020000 + 0x4738);
}

void gl_freeendsurface(void) {

}

void gl_endsurface(void) {
    s64 sp10;
    f64 *temp_a1;
    gl_wstate *temp_s5;
    s32 var_v0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s5 = gl_wstatep;
    if (saved_reg_gp->unk-503C != 0) {
        gl_nurbserror(&sub_0f020000 + 0x4778);
        endtrim();
        var_ra = sp10;
    }
    temp_a1 = saved_reg_gp->unk-5044;
    sp10 = var_ra;
    if (temp_a1 != NULL) {
        saved_reg_gp->unk-5044 = NULL;
        gluEndSurface(temp_s5->unk2DD8, temp_a1);
        __iglooSetEnable(0xD80, 0);
        if (temp_s5->unk2DE8 != 0.0f) {
            var_v0 = glGetError();
            if (var_v0 != 0) {
                do {
                    printf(&sub_0f020000 + 0x4760, gluErrorString(var_v0));
                    var_v0 = glGetError();
                } while (var_v0 != 0);
            }
        }
        return;
    }
    gl_nurbserror(&sub_0f020000 + 0x47A0, temp_a1);
}

void gl_g_endsurface(void) {
    gl_normalmode();
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(&sub_0f0f0000 + 0x37A0, &sub_0f0f0000 + 0x3798, 0, 0);
        return;
    }
    gl_g_endcurve();
}

void gl_freebgntrim(void) {

}

void gl_bgntrim(void) {
    s64 sp10;
    s64 sp0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp0 = (s64) gl_wstatep;
    if (saved_reg_gp->unk-5044 == 0) {
        gl_nurbserror(&sub_0f020000 + 0x47C8);
        bgnsurface();
        var_ra = sp10;
    }
    sp10 = var_ra;
    if (saved_reg_gp->unk-503C != 0) {
        gl_nurbserror(&sub_0f020000 + 0x47F0);
        endtrim();
    }
    saved_reg_gp->unk-503C = 1;
    gluBeginTrim(sp0->unk2DD8, 1);
}

void gl_g_bgntrim(void) {
    gl_normalmode();
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(&sub_0f0f0000 + 0x3940, &sub_0f0f0000 + 0x3938, 1, 0);
        return;
    }
    gl_g_endsurface(1, 0);
}

void gl_freeendcurve(void) {

}

void gl_freeendtrim(void) {

}

void gl_endtrim(void) {
    if (saved_reg_gp->unk-503C != 0) {
        saved_reg_gp->unk-503C = 0;
        gluEndTrim(gl_wstatep->unk2DD8);
        return;
    }
    gl_nurbserror(&sub_0f020000 + 0x4810);
}

void gl_g_endtrim(void) {
    gl_normalmode();
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(&sub_0f0f0000 + 0x3A70, &sub_0f0f0000 + 0x3A68, 0, 0);
        return;
    }
    gl_g_bgntrim();
}

void gl_freepwlcurve(? *arg1) {
    ? *temp_a0;

    if (arg1 != NULL) {
        temp_a0 = *arg1;
        if (temp_a0 != NULL) {
            gl_free(temp_a0, saved_reg_gp->unk-393C);
        }
        gl_free(arg1, saved_reg_gp->unk-393C);
    }
}

void gl_freebgncurve(void) {

}

void gl_pwlcurve(void *arg1) {
    if (saved_reg_gp->unk-503C != 0) {
        gluPwlCurve(gl_wstatep->unk2DD8, arg1->unk4, arg1->unk0, 2);
        return;
    }
    gl_nurbserror(&sub_0f020000 + 0x4838);
}

void gl_g_pwlcurve(s64 arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp18;
    s64 sp10;
    f32 *temp_v0;
    f32 *var_a0;
    f32 *var_a0_2;
    f32 *var_v0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f4;
    f64 *temp_a1;
    s32 temp_at;
    s32 temp_v0_2;
    s32 var_v0;
    s32 var_v1;
    s64 var_a0_3;
    s64 var_a2;
    void *temp_a0;
    void *temp_a1_2;

    sp10 = arg1;
    sp18 = arg0;
    gl_normalmode();
    if ((arg3 != 8) && (arg3 != 0xD)) {
        gl_nurbserror(&sub_0f020000 + 0x4860);
        return;
    }
    gl_malloc(0xC, &sub_0f020000 + 0x4880);
    temp_v0 = gl_malloc(sp18 * 2 * 4, &sub_0f020000 + 0x4880);
    var_a2 = sp10;
    subroutine_arg2->unk8 = arg3;
    subroutine_arg2->unk4 = (s32) sp18;
    subroutine_arg2->unk0 = temp_v0;
    if (arg3 != 8) {
        if (arg3 != 0xD) {
            goto block_5;
        }
        var_a0 = temp_v0;
        temp_a1 = subroutine_arg0 + temp_v0;
        if ((u32) temp_v0 < (u32) temp_a1) {
loop_19:
            temp_f4 = (f32) var_a2->unk10;
            if ((f64) temp_f4 != (second half of f64)) {
                *var_a0 = (f32) var_a2->unk0 / temp_f4;
                temp_f0 = (f32) var_a2->unk8 / temp_f4;
                var_a0 += 8;
                var_a2 += arg2;
                var_a0->unk-4 = temp_f0;
                if ((u32) var_a0 >= (u32) temp_a1) {
                    goto block_5;
                }
                goto loop_19;
            }
            gl_nurbserror(&sub_0f020000 + 0x4890, temp_a1, (f64 *) var_a2);
            return;
        }
        goto block_5;
    }
    var_a0_2 = temp_v0;
    temp_a1_2 = subroutine_arg0 + temp_v0;
    if ((u32) temp_v0 < (u32) temp_a1_2) {
        temp_v0_2 = subroutine_arg0 + 7;
        var_v0 = 1;
        temp_at = (s32) (((u32) (temp_v0_2 >> 2) >> 0x1D) + temp_v0_2) >> 3;
        if (temp_at >= 1) {
            var_v0 = temp_at;
        }
        var_v1 = var_v0 >> 1;
        if (var_v0 & 1) {
            *var_a0_2 = (f32) var_a2->unk0;
            temp_f0_2 = (f32) var_a2->unk8;
            var_a0_2 += 8;
            var_a2 += arg2;
            var_a0_2->unk-4 = temp_f0_2;
            var_v1 = var_v0 >> 1;
        }
        if (var_v1 != 0) {
            var_v0_2 = var_a0_2;
            var_a0_3 = var_a2;
            do {
                var_v0_2->unk0 = (f32) var_a0_3->unk0;
                var_v0_2->unk4 = (f32) var_a0_3->unk8;
                temp_a0 = arg2 + var_a0_3;
                var_v0_2->unk8 = (f32) temp_a0->unk0;
                var_v0_2 += 0x10;
                var_a0_3 = (s64) (arg2 + temp_a0);
                var_v0_2->unk-4 = (f32) temp_a0->unk8;
            } while ((u32) var_v0_2 < (u32) temp_a1_2);
        }
    }
block_5:
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(&sub_0f0f0000 + 0x3BB8, &sub_0f0f0000 + 0x3B54, 1, subroutine_arg2);
    } else {
        gl_g_endtrim(1, subroutine_arg2, (f64 *) var_a2, subroutine_arg2);
        gl_g_endtrim(1, subroutine_arg2);
    }
}

void gl_freenurbscurve(s64 arg1) {
    s64 sp0;

    sp0 = arg1;
    if (arg1 != 0) {
        gl_free(sp0->unk0, saved_reg_gp->unk-3938);
        gl_free(sp0->unk1C, saved_reg_gp->unk-3938);
        gl_free((? *) sp0, saved_reg_gp->unk-3938);
    }
}

void gl_nurbscurve(void *arg1) {
    gluNurbsCurve(gl_wstatep->unk2DD8, arg1->unk14, arg1->unk1C, arg1->unkC);
}

void gl_g_nurbscurve(f64 *arg0, f64 *arg1, s32 arg2, s64 arg3) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f3;
    f64 *temp_s2;
    f64 *var_a0_2;
    f64 *var_v0;
    f64 temp_f1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_s4;
    s32 temp_s5;
    s32 var_a0;
    s32 var_a2;
    s32 var_v0_2;
    s64 var_a1;
    s64 var_a1_4;
    s64 var_v0_4;
    s64 var_v0_5;
    void *temp_a0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_gp;
    void *temp_s3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *var_a1_2;
    void *var_a1_3;
    void *var_a3;
    void *var_a4;
    void *var_v0_3;
    void *var_v0_6;

    temp_s4 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s2 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3F2AC;
    gl_normalmode();
    gl_g_nurbssurface(arg1, arg0, temp_s2);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gl_nurbserror(arg1, arg0, temp_s2, temp_gp - 0x4280);
        return;
    }
    temp_s3 = gl_malloc(0x20, temp_gp->unk-3930);
    switch (temp_s4) {                              /* switch 1; irregular */
    default:                                        /* switch 1 */
        gl_nurbserror(&sub_0f020000 + 0x48B8);
        return;
    case 0x51:                                      /* switch 1 */
        temp_s3->unk8 = 0xD98;
block_8:
        temp_s3->unk10 = temp_s2;
        temp_s3->unk14 = arg0;
        temp_s3->unk4 = temp_s4;
        temp_s3->unkC = (s32) subroutine_arg0;
        temp_s3->unk1C = gl_malloc((s32) arg0 * 4, temp_gp->unk-3930);
        if ((s32) arg0 > 0) {
            var_a0 = 0;
            var_v0 = arg1;
            if ((s32) arg0 & 1) {
                temp_f0 = (f32) *var_v0;
                var_v0 += 8;
                var_a0 = 4;
                *temp_s3->unk1C = temp_f0;
            }
            if (((s32) arg0 >> 1) != 0) {
                var_v0_2 = var_a0;
                var_a0_2 = var_v0;
                do {
                    *(temp_s3->unk1C + var_v0_2) = (f32) var_a0_2->unk0;
                    temp_f1 = var_a0_2->unk8;
                    var_a0_2 += 0x10;
                    temp_a6 = var_v0_2 + 4;
                    var_v0_2 = temp_a6 + 4;
                    *(temp_s3->unk1C + temp_a6) = (f32) temp_f1;
                } while (var_a0_2 != &arg1[(s32) arg0]);
            }
        }
        temp_s5 = arg0 - temp_s2;
        var_v0_3 = gl_malloc(temp_s5 * subroutine_arg0 * 4, temp_gp->unk-3930, arg0);
        temp_s3->unk0 = var_v0_3;
        var_a1 = subroutine_arg2;
        temp_a0 = (temp_s5 * subroutine_arg0 * 4) + var_v0_3;
        switch (temp_s4) {                          /* switch 2; irregular */
        case 0xD:                                   /* switch 2 */
        case 0x4C:                                  /* switch 2 */
            if ((u32) var_v0_3 < (u32) temp_a0) {
                temp_a7 = (temp_a0 - var_v0_3) + 0xB;
                M2C_TRAP_IF(0xC == 0);
                if ((temp_a7 / 12) & 1) {
                    var_v0_3->unk0 = (f32) var_a1->unk0;
                    var_v0_3->unk4 = (f32) var_a1->unk8;
                    temp_f3 = (f32) var_a1->unk10;
                    var_v0_3 += 0xC;
                    var_a1 += arg2;
                    var_v0_3->unk-4 = temp_f3;
                }
                if ((temp_a7 / 24) != 0) {
                    var_a1_2 = var_v0_3;
                    var_v0_4 = var_a1;
                    do {
                        var_a1_2->unk0 = (f32) var_v0_4->unk0;
                        var_a1_2->unk4 = (f32) var_v0_4->unk8;
                        var_a1_2->unk8 = (f32) var_v0_4->unk10;
                        temp_v0 = arg2 + var_v0_4;
                        var_a1_2->unkC = (f32) temp_v0->unk0;
                        var_a1_2->unk10 = (f32) temp_v0->unk8;
                        var_a1_2 += 0x18;
                        var_v0_4 = (s64) (arg2 + temp_v0);
                        var_a1_2->unk-4 = (f32) temp_v0->unk10;
                    } while ((u32) var_a1_2 < (u32) temp_a0);
                }
            }
            break;
        case 0x8:                                   /* switch 2 */
            if ((u32) var_v0_3 < (u32) temp_a0) {
                temp_a6_2 = (temp_a0 - var_v0_3) + 7;
                temp_a2 = (s32) (((u32) (temp_a6_2 >> 2) >> 0x1D) + temp_a6_2) >> 3;
                var_a3 = var_v0_3;
                if (temp_a2 & 1) {
                    var_v0_3->unk0 = (f32) var_a1->unk0;
                    temp_f0_2 = (f32) var_a1->unk8;
                    temp_v0_2 = var_v0_3 + 8;
                    var_a1 += arg2;
                    temp_v0_2->unk-4 = temp_f0_2;
                    var_a3 = temp_v0_2;
                }
                if ((temp_a2 >> 1) != 0) {
                    var_a1_3 = var_a3;
                    var_v0_5 = var_a1;
                    do {
                        var_a1_3->unk0 = (f32) var_v0_5->unk0;
                        var_a1_3->unk4 = (f32) var_v0_5->unk8;
                        temp_v0_3 = arg2 + var_v0_5;
                        var_a1_3->unk8 = (f32) temp_v0_3->unk0;
                        var_a1_3 += 0x10;
                        var_v0_5 = (s64) (arg2 + temp_v0_3);
                        var_a1_3->unk-4 = (f32) temp_v0_3->unk8;
                    } while ((u32) var_a1_3 < (u32) temp_a0);
                }
            }
            break;
        case 0x51:                                  /* switch 2 */
            if ((u32) var_v0_3 < (u32) temp_a0) {
                temp_a6_3 = (temp_a0 - var_v0_3) + 0xF;
                temp_a3 = (s32) (((u32) (temp_a6_3 >> 3) >> 0x1C) + temp_a6_3) >> 4;
                var_a2 = temp_a3 & 3;
                var_a4 = var_v0_3;
                if (var_a2 != 0) {
                    do {
                        var_v0_3->unk0 = (f32) var_a1->unk0;
                        var_v0_3->unk4 = (f32) var_a1->unk8;
                        var_v0_3->unk8 = (f32) var_a1->unk10;
                        var_v0_3 += 0x10;
                        temp_f2 = (f32) var_a1->unk18;
                        var_a2 -= 1;
                        var_a1 += arg2;
                        var_v0_3->unk-4 = temp_f2;
                    } while (var_a2 != 0);
                    var_a4 = var_v0_3;
                }
                if ((temp_a3 >> 2) != 0) {
                    var_v0_6 = var_a4;
                    var_a1_4 = var_a1;
                    do {
                        var_v0_6->unk0 = (f32) var_a1_4->unk0;
                        var_v0_6->unk4 = (f32) var_a1_4->unk8;
                        var_v0_6->unk8 = (f32) var_a1_4->unk10;
                        var_v0_6->unkC = (f32) var_a1_4->unk18;
                        temp_a1 = arg2 + var_a1_4;
                        var_v0_6->unk10 = (f32) temp_a1->unk0;
                        var_v0_6->unk14 = (f32) temp_a1->unk8;
                        var_v0_6->unk18 = (f32) temp_a1->unk10;
                        var_v0_6->unk1C = (f32) temp_a1->unk18;
                        temp_a1_2 = arg2 + temp_a1;
                        var_v0_6->unk20 = (f32) temp_a1_2->unk0;
                        var_v0_6->unk24 = (f32) temp_a1_2->unk8;
                        var_v0_6->unk28 = (f32) temp_a1_2->unk10;
                        var_v0_6->unk2C = (f32) temp_a1_2->unk18;
                        temp_a1_3 = arg2 + temp_a1_2;
                        var_v0_6->unk30 = (f32) temp_a1_3->unk0;
                        var_v0_6->unk34 = (f32) temp_a1_3->unk8;
                        var_v0_6->unk38 = (f32) temp_a1_3->unk10;
                        var_v0_6 += 0x40;
                        var_a1_4 = (s64) (arg2 + temp_a1_3);
                        var_v0_6->unk-4 = (f32) temp_a1_3->unk18;
                    } while ((u32) var_v0_6 < (u32) temp_a0);
                }
            }
            break;
        }
        if (gl_openobjhdr != 0) {
            gl_ecallfunc(&sub_0f0f0000 + 0x3F48, &sub_0f0f0000 + 0x3EDC, 1, (s64) temp_s3);
        } else {
            gl_g_pwlcurve(1, (s64) temp_s3);
            gl_g_pwlcurve(1, (s64) temp_s3);
        }
        return;
    case 0x8:                                       /* switch 1 */
        temp_s3->unk8 = 0x18772;
        goto block_8;
    case 0xD:                                       /* switch 1 */
        temp_s3->unk8 = 0x18773;
        goto block_8;
    case 0x4C:                                      /* switch 1 */
        temp_s3->unk8 = 0xD97;
        goto block_8;
    }
}

void gl_freenurbssurface(? *arg1) {
    s64 sp10;
    ? *temp_a0;
    ? *temp_a0_2;
    ? *temp_a0_3;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (arg1 != NULL) {
        temp_a0 = arg1->unk1C;
        if (temp_a0 != NULL) {
            gl_free(temp_a0, saved_reg_gp->unk-3934);
            var_ra = sp10;
        }
        temp_a0_2 = arg1->unk2C;
        if (temp_a0_2 != NULL) {
            sp10 = var_ra;
            gl_free(temp_a0_2, saved_reg_gp->unk-3934);
        }
        temp_a0_3 = arg1->unk30;
        sp10 = var_ra;
        if (temp_a0_3 != NULL) {
            gl_free(temp_a0_3, saved_reg_gp->unk-3934);
        }
        gl_free(arg1, saved_reg_gp->unk-3934);
    }
}

void gl_nurbssurface(void *arg1) {
    s64 sp40;
    gl_wstate *temp_t1;
    s32 temp_at;

    temp_at = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3EC2C)->unk-5044;
    temp_t1 = gl_wstatep;
    unksp30 = temp_at == 0;
    if (temp_at == 0) {
        sp40 = (s64) temp_t1;
        bgnsurface();
    }
    gluNurbsSurface(temp_t1->unk2DD8, arg1->unk14, arg1->unk1C, arg1->unk24, arg1->unk4);
    if (unksp30 != 0) {
        endsurface(unksp30);
    }
}

void gl_g_nurbssurface(f64 *arg0, f64 *arg1, f64 *arg2, s64 arg3) {
    s64 sp68;
    s64 sp10;
    f32 *var_a4_4;
    f32 *var_a6;
    f32 *var_a6_2;
    f32 *var_a6_3;
    f32 *var_a6_4;
    f32 *var_a6_5;
    f32 *var_v0_11;
    f32 *var_v0_13;
    f32 *var_v0_5;
    f32 *var_v0_7;
    f32 *var_v0_9;
    f32 temp_f0;
    f32 temp_f1_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f3;
    f64 *temp_s3;
    f64 *temp_v0;
    f64 *var_a2_2;
    f64 *var_a5;
    f64 *var_a5_2;
    f64 temp_f0_2;
    f64 temp_f1;
    f64 temp_f4;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s3_2;
    s32 temp_s7;
    s32 temp_t0;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_3;
    s32 var_a0_5;
    s32 var_a0_7;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_v0;
    s64 var_a0_2;
    s64 var_a0_4;
    s64 var_a0_6;
    s64 var_a0_8;
    s64 var_a1_7;
    s64 var_a3_2;
    s64 var_v0_10;
    s64 var_v0_12;
    s64 var_v0_2;
    s64 var_v0_3;
    s64 var_v0_4;
    s64 var_v0_6;
    s64 var_v0_8;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_gp;

    temp_s3 = M2C_ERROR(/* Read from unset register $a7 */);
    sp10 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_s1 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3EB74;
    gl_normalmode();
    gl_g_nurbssurface(arg1, arg0, temp_s3);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gl_nurbserror(arg1, arg0, temp_s3, &sub_0f020000 + 0x48D0);
        return;
    }
    gl_g_nurbssurface((f64 *) subroutine_arg0, arg2, arg1);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gl_nurbserror((f64 *) subroutine_arg0, arg2, (f64 *) subroutine_arg2, &sub_0f020000 + 0x48E0);
        return;
    }
    temp_v0 = gl_malloc(0x34, temp_gp->unk-3934);
    temp_v0->unk28 = temp_s1;
    temp_v0->unk24 = arg2;
    temp_v0->unk10 = temp_s3;
    temp_v0->unk18 = temp_s0;
    temp_v0->unk14 = arg0;
    temp_v0->unk20 = (s32) subroutine_arg2;
    temp_v0->unk0 = (s32) arg3;
    switch ((s32) arg3) {                           /* switch 1; irregular */
    default:                                        /* switch 1 */
        sp68 = (s64) (s32) arg3;
        gl_nurbserror(&sub_0f020000 + 0x48F0, (f64 *)0x88);
        var_v0 = temp_v0->unk8;
        break;
    case 0xD0:                                      /* switch 1 */
    case 0xD5:                                      /* switch 1 */
        sp68 = (s64) (s32) arg3;
        var_v0 = 4;
        temp_v0->unk4 = 0xDB0;
        temp_v0->unk8 = 4;
        break;
    case 0x88:                                      /* switch 1 */
        sp68 = (s64) (s32) arg3;
        var_v0 = 2;
        temp_v0->unk4 = 0xDB4;
        temp_v0->unk8 = 2;
        break;
    case 0x8D:                                      /* switch 1 */
        sp68 = (s64) (s32) arg3;
        var_v0 = 4;
        temp_v0->unk4 = 0xDB6;
        temp_v0->unk8 = 4;
        break;
    case 0x4C:                                      /* switch 1 */
        sp68 = (s64) (s32) arg3;
        var_v0 = 3;
        temp_v0->unk4 = 0xDB7;
        temp_v0->unk8 = 3;
        break;
    case 0x51:                                      /* switch 1 */
        sp68 = (s64) (s32) arg3;
        var_v0 = 4;
        temp_v0->unk4 = 0xDB8;
        temp_v0->unk8 = 4;
        break;
    }
    temp_s7 = arg0 - temp_s3;
    temp_lo = var_v0 * temp_s7;
    temp_v0->unkC = temp_lo;
    temp_v0->unk1C = gl_malloc((s32) arg0 * 4, temp_gp->unk-3934, (f64 *) temp_lo);
    temp_s3_2 = arg2 - subroutine_arg2;
    temp_v0->unk2C = gl_malloc((s32) arg2 * 4, temp_gp->unk-3934);
    temp_v0->unk30 = gl_malloc(temp_v0->unk8 * temp_v0->unkC * temp_s3_2 * 4, temp_gp->unk-3934);
    if ((s32) arg0 > 0) {
        var_a5 = arg1;
        var_a4 = 0;
        if ((s32) arg0 & 1) {
            temp_f0 = (f32) *var_a5;
            var_a5 += 8;
            var_a4 = 4;
            *temp_v0->unk1C = temp_f0;
        }
        if (((s32) arg0 >> 1) != 0) {
            var_a4_2 = var_a4;
            var_a5_2 = var_a5;
            do {
                *(temp_v0->unk1C + var_a4_2) = (f32) var_a5_2->unk0;
                temp_f1 = var_a5_2->unk8;
                var_a5_2 += 0x10;
                temp_v1 = var_a4_2 + 4;
                var_a4_2 = temp_v1 + 4;
                *(temp_v0->unk1C + temp_v1) = (f32) temp_f1;
            } while (var_a5_2 != &arg1[(s32) arg0]);
        }
    }
    var_a4_3 = 0;
    if ((s32) arg2 > 0) {
        var_v0_2 = subroutine_arg0;
        if ((s32) arg2 & 1) {
            temp_f3 = (f32) *var_v0_2;
            var_v0_2 += 8;
            var_a4_3 = 4;
            *temp_v0->unk2C = temp_f3;
        }
        if (((s32) arg2 >> 1) != 0) {
            var_a3 = var_a4_3;
            var_v0_3 = var_v0_2;
            do {
                *(temp_v0->unk2C + var_a3) = (f32) var_v0_3->unk0;
                temp_f0_2 = var_v0_3->unk8;
                var_v0_3 += 0x10;
                temp_t0 = var_a3 + 4;
                var_a3 = temp_t0 + 4;
                *(temp_v0->unk2C + temp_t0) = (f32) temp_f0_2;
            } while (var_v0_3 != (((s32) arg2 * 8) + subroutine_arg0));
        }
    }
    var_a4_4 = temp_v0->unk30;
    var_a3_2 = sp10;
    switch (sp68) {                                 /* switch 2; irregular */
    default:                                        /* switch 2 */
        gl_nurbserror(&sub_0f020000 + 0x48F0, (f64 *) sp68, (f64 *)0x88, (void *) var_a3_2);
block_30:
block_31:
        if (gl_openobjhdr != 0) {
            gl_ecallfunc(&sub_0f0f0000 + 0x461C, &sub_0f0f0000 + 0x4588, 1, (s64) temp_v0);
        } else {
            gl_g_nurbscurve((f64 *)1, temp_v0);
            gl_g_nurbscurve((f64 *)1, temp_v0);
        }
        return;
    case 0x51:                                      /* switch 2 */
    case 0xD0:                                      /* switch 2 */
        var_a2 = 0;
        if (temp_s3_2 > 0) {
            var_v0_4 = var_a3_2;
loop_46:
            var_a3_2 += temp_s1;
            var_a0 = 0;
            if (temp_s7 > 0) {
                var_a1 = temp_s7 & 3;
                var_a6 = var_a4_4;
                if (var_a1 != 0) {
                    do {
                        var_a4_4->unk0 = (f32) var_v0_4->unk0;
                        var_a4_4->unk4 = (f32) var_v0_4->unk8;
                        var_a4_4->unk8 = (f32) var_v0_4->unk10;
                        var_a0 += 1;
                        var_a4_4 += 0x10;
                        temp_f2 = (f32) var_v0_4->unk18;
                        var_a1 -= 1;
                        var_v0_4 += temp_s0;
                        var_a4_4->unk-4 = temp_f2;
                    } while (var_a1 != 0);
                    var_a6 = var_a4_4;
                }
                if ((temp_s7 >> 2) != 0) {
                    var_a1_2 = var_a0;
                    var_v0_5 = var_a6;
                    var_a0_2 = var_v0_4;
                    do {
                        var_v0_5->unk0 = (f32) var_a0_2->unk0;
                        var_v0_5->unk4 = (f32) var_a0_2->unk8;
                        var_v0_5->unk8 = (f32) var_a0_2->unk10;
                        var_v0_5->unkC = (f32) var_a0_2->unk18;
                        temp_a0 = temp_s0 + var_a0_2;
                        var_v0_5->unk10 = (f32) temp_a0->unk0;
                        var_v0_5->unk14 = (f32) temp_a0->unk8;
                        var_v0_5->unk18 = (f32) temp_a0->unk10;
                        var_v0_5->unk1C = (f32) temp_a0->unk18;
                        temp_a0_2 = temp_s0 + temp_a0;
                        var_v0_5->unk20 = (f32) temp_a0_2->unk0;
                        var_v0_5->unk24 = (f32) temp_a0_2->unk8;
                        var_v0_5->unk28 = (f32) temp_a0_2->unk10;
                        var_v0_5->unk2C = (f32) temp_a0_2->unk18;
                        temp_a0_3 = temp_s0 + temp_a0_2;
                        var_v0_5->unk30 = (f32) temp_a0_3->unk0;
                        var_v0_5->unk34 = (f32) temp_a0_3->unk8;
                        var_v0_5->unk38 = (f32) temp_a0_3->unk10;
                        var_v0_5 += 0x40;
                        var_a1_2 += 4;
                        var_a0_2 = (s64) (temp_s0 + temp_a0_3);
                        var_v0_5->unk-4 = (f32) temp_a0_3->unk18;
                    } while (temp_s7 != var_a1_2);
                    var_a4_4 = var_v0_5;
                }
            }
            var_a2 += 1;
            var_v0_4 = var_a3_2;
            if (temp_s3_2 != var_a2) {
                goto loop_46;
            }
        }
        goto block_30;
    case 0xD5:                                      /* switch 2 */
        var_a2_2 = NULL;
        if (temp_s3_2 > 0) {
loop_58:
            temp_f4 = var_a3_2->unk20;
            var_v0_6 = var_a3_2;
            if (temp_f4 != (second half of f64)) {
                var_a0_3 = 0;
                var_a3_2 += temp_s1;
                if (temp_s7 > 0) {
                    var_a6_2 = var_a4_4;
                    if (temp_s7 & 1) {
                        var_a4_4->unk0 = (f32) (var_v0_6->unk0 / temp_f4);
                        var_a4_4->unk4 = (f32) (var_v0_6->unk8 / temp_f4);
                        var_a4_4->unk8 = (f32) (var_v0_6->unk10 / temp_f4);
                        temp_f2_2 = (f32) (var_v0_6->unk18 / temp_f4);
                        var_a0_3 = 1;
                        var_a4_4 += 0x10;
                        var_v0_6 += temp_s0;
                        var_a4_4->unk-4 = temp_f2_2;
                        var_a6_2 = var_a4_4;
                    }
                    if ((temp_s7 >> 1) != 0) {
                        var_a1_3 = var_a0_3;
                        var_v0_7 = var_a6_2;
                        var_a0_4 = var_v0_6;
                        do {
                            var_v0_7->unk0 = (f32) (var_a0_4->unk0 / temp_f4);
                            var_v0_7->unk4 = (f32) (var_a0_4->unk8 / temp_f4);
                            var_v0_7->unk8 = (f32) (var_a0_4->unk10 / temp_f4);
                            var_v0_7->unkC = (f32) (var_a0_4->unk18 / temp_f4);
                            temp_a0_4 = temp_s0 + var_a0_4;
                            var_v0_7->unk10 = (f32) (temp_a0_4->unk0 / temp_f4);
                            var_v0_7->unk14 = (f32) (temp_a0_4->unk8 / temp_f4);
                            var_v0_7->unk18 = (f32) (temp_a0_4->unk10 / temp_f4);
                            var_v0_7 += 0x20;
                            var_a1_3 += 2;
                            var_a0_4 = (s64) (temp_s0 + temp_a0_4);
                            var_v0_7->unk-4 = (f32) (temp_a0_4->unk18 / temp_f4);
                        } while (temp_s7 != var_a1_3);
                        var_a4_4 = var_v0_7;
                    }
                }
                var_a2_2 += 1;
                if (temp_s3_2 != var_a2_2) {
                    goto loop_58;
                }
                goto block_31;
            }
            gl_nurbserror(&sub_0f020000 + 0x4910, (f64 *) temp_s7, var_a2_2, (void *) var_a3_2);
            return;
        }
        goto block_30;
    case 0x88:                                      /* switch 2 */
        var_a2_3 = 0;
        if (temp_s3_2 > 0) {
            var_v0_8 = var_a3_2;
loop_68:
            var_a3_2 += temp_s1;
            var_a0_5 = 0;
            if (temp_s7 > 0) {
                var_a6_3 = var_a4_4;
                if (temp_s7 & 1) {
                    *var_a4_4 = (f32) var_v0_8->unk0;
                    temp_f2_3 = (f32) var_v0_8->unk8;
                    var_a0_5 = 1;
                    var_a4_4 += 8;
                    var_v0_8 += temp_s0;
                    var_a4_4->unk-4 = temp_f2_3;
                    var_a6_3 = var_a4_4;
                }
                if ((temp_s7 >> 1) != 0) {
                    var_a1_4 = var_a0_5;
                    var_v0_9 = var_a6_3;
                    var_a0_6 = var_v0_8;
                    do {
                        var_v0_9->unk0 = (f32) var_a0_6->unk0;
                        var_v0_9->unk4 = (f32) var_a0_6->unk8;
                        temp_a0_5 = temp_s0 + var_a0_6;
                        var_v0_9->unk8 = (f32) temp_a0_5->unk0;
                        var_v0_9 += 0x10;
                        var_a1_4 += 2;
                        var_a0_6 = (s64) (temp_s0 + temp_a0_5);
                        var_v0_9->unk-4 = (f32) temp_a0_5->unk8;
                    } while (temp_s7 != var_a1_4);
                    var_a4_4 = var_v0_9;
                }
            }
            var_a2_3 += 1;
            var_v0_8 = var_a3_2;
            if (temp_s3_2 != var_a2_3) {
                goto loop_68;
            }
        }
        goto block_30;
    case 0x8D:                                      /* switch 2 */
        var_a2_4 = 0;
        if (temp_s3_2 > 0) {
loop_80:
            var_v0_10 = var_a3_2;
            var_a3_2 += temp_s1;
            var_a0_7 = 0;
            if (temp_s7 > 0) {
                var_a6_4 = var_a4_4;
                if (temp_s7 & 1) {
                    var_a4_4->unk0 = (f32) var_v0_10->unk0;
                    var_a4_4->unk8 = 1.0f;
                    var_a4_4->unk4 = (f32) var_v0_10->unk8;
                    temp_f2_4 = (f32) var_v0_10->unk10;
                    var_a0_7 = 1;
                    var_a4_4 += 0x10;
                    var_v0_10 += temp_s0;
                    var_a4_4->unk-4 = temp_f2_4;
                    var_a6_4 = var_a4_4;
                }
                if ((temp_s7 >> 1) != 0) {
                    var_a1_5 = var_a0_7;
                    var_v0_11 = var_a6_4;
                    var_a0_8 = var_v0_10;
                    do {
                        var_v0_11->unk0 = (f32) var_a0_8->unk0;
                        var_v0_11->unk4 = (f32) var_a0_8->unk8;
                        var_v0_11->unk8 = 1.0f;
                        var_v0_11->unkC = (f32) var_a0_8->unk10;
                        temp_a0_6 = temp_s0 + var_a0_8;
                        var_v0_11->unk10 = (f32) temp_a0_6->unk0;
                        var_v0_11->unk14 = (f32) temp_a0_6->unk8;
                        var_v0_11->unk18 = 1.0f;
                        var_v0_11 += 0x20;
                        var_a1_5 += 2;
                        var_a0_8 = (s64) (temp_s0 + temp_a0_6);
                        var_v0_11->unk-4 = (f32) temp_a0_6->unk10;
                    } while (temp_s7 != var_a1_5);
                    var_a4_4 = var_v0_11;
                }
            }
            var_a2_4 += 1;
            if (temp_s3_2 != var_a2_4) {
                goto loop_80;
            }
        }
        goto block_30;
    case 0x4C:                                      /* switch 2 */
        var_a2_5 = 0;
        if (temp_s3_2 > 0) {
            var_v0_12 = var_a3_2;
loop_93:
            var_a3_2 += temp_s1;
            var_a0_9 = 0;
            if (temp_s7 > 0) {
                var_a1_6 = temp_s7 & 3;
                var_a6_5 = var_a4_4;
                if (var_a1_6 != 0) {
                    do {
                        var_a4_4->unk0 = (f32) var_v0_12->unk0;
                        var_a4_4->unk4 = (f32) var_v0_12->unk8;
                        var_a0_9 += 1;
                        var_a4_4 += 0xC;
                        temp_f1_2 = (f32) var_v0_12->unk10;
                        var_a1_6 -= 1;
                        var_v0_12 += temp_s0;
                        var_a4_4->unk-4 = temp_f1_2;
                    } while (var_a1_6 != 0);
                    var_a6_5 = var_a4_4;
                }
                if ((temp_s7 >> 2) != 0) {
                    var_a0_10 = var_a0_9;
                    var_v0_13 = var_a6_5;
                    var_a1_7 = var_v0_12;
                    do {
                        var_v0_13->unk0 = (f32) var_a1_7->unk0;
                        var_v0_13->unk4 = (f32) var_a1_7->unk8;
                        var_v0_13->unk8 = (f32) var_a1_7->unk10;
                        temp_a1 = temp_s0 + var_a1_7;
                        var_v0_13->unkC = (f32) temp_a1->unk0;
                        var_v0_13->unk10 = (f32) temp_a1->unk8;
                        var_v0_13->unk14 = (f32) temp_a1->unk10;
                        temp_a1_2 = temp_s0 + temp_a1;
                        var_v0_13->unk18 = (f32) temp_a1_2->unk0;
                        var_v0_13->unk1C = (f32) temp_a1_2->unk8;
                        var_v0_13->unk20 = (f32) temp_a1_2->unk10;
                        temp_a1_3 = temp_s0 + temp_a1_2;
                        var_v0_13->unk24 = (f32) temp_a1_3->unk0;
                        var_v0_13->unk28 = (f32) temp_a1_3->unk8;
                        var_v0_13 += 0x30;
                        var_a0_10 += 4;
                        var_a1_7 = (s64) (temp_s0 + temp_a1_3);
                        var_v0_13->unk-4 = (f32) temp_a1_3->unk10;
                    } while (temp_s7 != var_a0_10);
                    var_a4_4 = var_v0_13;
                }
            }
            var_a2_5 += 1;
            var_v0_12 = var_a3_2;
            if (temp_s3_2 != var_a2_5) {
                goto loop_93;
            }
        }
        goto block_30;
    }
}

void gl_check_knots(void *arg0, s32 arg1, s32 arg2) {
    f64 *var_a3;
    s32 var_a5_2;
    s32 var_v0;
    void *var_a5;

    var_a5 = arg0;
    if ((arg2 > 0) && (arg2 < 9)) {
        if (arg1 >= (arg2 * 2)) {
            if (!((*(((arg1 - arg2) * 8) + arg0) - (second half of f64)) < 1e-05)) {
                var_a3 = NULL;
                if (arg1 >= 2) {
loop_5:
                    var_a5 += 8;
                    if (!(var_a5->unk8 < (second half of f64))) {
                        var_a3 += 1;
                        if ((arg1 - 1) == var_a3) {
                            goto block_7;
                        }
                        goto loop_5;
                    }
                    sprintf(sp, &sub_0f020000 + 0x4990, var_a3 + 1, var_a3);
                    gl_nurbserror(sp);
                    return;
                }
block_7:
                var_a5_2 = 1;
                if (arg1 >= 4) {
                    var_a3 = ((arg1 - 2) * 8) + arg0;
loop_11:
                    var_a3 -= 8;
                    if ((var_a3->unk0 - (second half of f64)) < 1e-05) {
                        var_a5_2 += 1;
                        goto block_10;
                    }
                    var_a5_2 = 1;
                    if (arg2 >= var_a5_2) {
block_10:
                        var_v0 = arg2 < var_a5_2;
                        if ((arg0 + 8) != var_a3) {
                            goto loop_11;
                        }
                        goto block_14;
                    }
                    gl_nurbserror(&sub_0f020000 + 0x49C0, var_a3);
                    return;
                }
                var_v0 = arg2 < 1;
block_14:
                if (var_v0 == 0) {
                    return;
                }
                gl_nurbserror(&sub_0f020000 + 0x49C0, var_a3);
                return;
            }
            gl_nurbserror(&sub_0f020000 + 0x4970);
            return;
        }
        gl_nurbserror(&sub_0f020000 + 0x4960);
        return;
    }
    gl_nurbserror(&sub_0f020000 + 0x4940);
}

void gl_freenurbsproperty(? *arg1) {
    gl_free(arg1, saved_reg_gp->unk-392C);
}

void gl_setnurbsproperty(void *arg1) {
    s64 sp0;
    s32 *temp_a2_2;
    s32 temp_f0;
    s32 var_a4;
    s32 var_f14;
    u32 temp_a2;

    temp_a2 = arg1->unk0;
    temp_a2_2 = (temp_a2 * 4) + &jtbl_0f0249f0;
    if (temp_a2 < 0xFU) {
        sp0 = (s64) gl_wstatep;
        switch (temp_a2) {
        case 3:
            gl_wstatep->unk2DE4 = arg1->unk4;
            temp_f0 = (s32) gl_wstatep->unk2DE4;
            if (temp_f0 != 1) {
                if (temp_f0 == 2) {
                    var_f14 = 0x47C3C800;
                } else if (temp_f0 == 5) {
                    var_f14 = 0x47C3C880;
                } else {
                    var_f14 = 0x47C35600;
                    if (temp_f0 != 0xC) {

                    } else {
                        var_f14 = 0x47C3C800;
                    }
                }
            } else {
                var_f14 = 0x47C35600;
            }
            gluNurbsProperty(var_f14, gl_wstatep->unk2DD8, 0x1876C, temp_a2_2, gl_wstatep);
            break;
        case 1:
            gl_wstatep->unk2DDC = arg1->unk4;
            gluNurbsProperty(0x47C3BB80, sp0->unk2DD8, 0x1876D, temp_a2_2, gl_wstatep);
            gluNurbsProperty(sp0->unk2DD8, 0x1876B, sp0);
            break;
        case 2:
            gl_wstatep->unk2DE0 = arg1->unk4;
            var_a4 = 1;
            if (arg1->unk4 == 0.0f) {
                var_a4 = 0;
            }
            gluNurbsProperty((bitwise s32) (f32) var_a4, gl_wstatep->unk2DD8, 0x18769, temp_a2_2, gl_wstatep);
            break;
        case 4:
            gl_wstatep->unk2DE8 = arg1->unk4;
            break;
        case 6:
            gl_wstatep->unk2DF0 = arg1->unk4;
            break;
        case 7:
            gl_wstatep->unk2DF4 = arg1->unk4;
            break;
        case 5:
            gl_wstatep->unk2DEC = arg1->unk4;
            break;
        case 9:
            gl_wstatep->unk2DF8 = arg1->unk4;
            break;
        case 10:
            gl_wstatep->unk2DFC = arg1->unk4;
            break;
        case 11:
            gl_wstatep->unk2E00 = arg1->unk4;
            break;
        case 12:
            gl_wstatep->unk2E04 = arg1->unk4;
            break;
        case 13:
            gl_wstatep->unk2E08 = arg1->unk4;
            break;
        case 14:
            gl_wstatep->unk2E0C = arg1->unk4;
            break;
        }
    }
}

void gl_g_setnurbsproperty(f32 arg1, s64 arg0) {
    void *temp_v0;

    gl_normalmode();
    temp_v0 = gl_malloc(0xC, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3DCA4)->unk-392C);
    temp_v0->unk4 = arg1;
    temp_v0->unk0 = (s32) ((s64) (arg0 << 0x30) >> 0x30);
    if (gl_openobjhdr != 0) {
        gl_ecallfunc(gl_setnurbsproperty, gl_freenurbsproperty, 1, (s64) temp_v0);
        return;
    }
    gl_setnurbsproperty((void *)1, temp_v0);
    gl_freenurbsproperty((? *)1, temp_v0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void gl_g_getnurbsproperty(u32 arg0, s64 arg1) {
    unksp18 = arg1;
    unksp10 = (s64) gl_wstatep;
    gl_normalmode();
    switch (arg0) {
    default:
        gl_nurbserror(&sub_0f020000 + 0x4A70);
        break;
    case 1:
        *unksp18 = (f32) unksp10->unk2DDC;
        break;
    case 2:
        *unksp18 = (f32) unksp10->unk2DE0;
        break;
    case 3:
        *unksp18 = (f32) unksp10->unk2DE4;
        break;
    case 4:
        *unksp18 = (f32) unksp10->unk2DE8;
        break;
    case 6:
        *unksp18 = (f32) unksp10->unk2DF0;
        break;
    case 7:
        *unksp18 = (f32) unksp10->unk2DF4;
        break;
    case 8:
        *unksp18 = 0.0f;
        break;
    case 5:
        *unksp18 = (f32) unksp10->unk2DEC;
        break;
    case 9:
        *unksp18 = (f32) unksp10->unk2DF8;
        break;
    case 10:
        *unksp18 = (f32) unksp10->unk2DFC;
        break;
    case 11:
        *unksp18 = (f32) unksp10->unk2E00;
        break;
    case 12:
        *unksp18 = (f32) unksp10->unk2E04;
        break;
    case 13:
        *unksp18 = (f32) unksp10->unk2E08;
        break;
    case 14:
        *unksp18 = (f32) unksp10->unk2E0C;
        break;
    }
}

void gl_nurbserror(f64 *arg0) {
    s64 sp0;

    sp0 = (s64) gl_wstatep;
    if (gl_wstatep->unk2DE8 != 0.0f) {
        gl_ErrorHandler(0x5B, 2, arg0);
        sp0->unk2DE8 = (f32) (sp0->unk2DE8 + 1.0f);
    }
}

void gl_show_knots(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp8;
    s64 sp0;
    s64 var_s2;
    s64 var_s4;
    void *temp_s1;

    sp0 = arg0;
    sp8 = arg2;
    if (gl_wstatep->unk2DE8 == 0.0f) {
        return;
    }
    temp_s1 = &__iob + 0x20;
    fprintf(temp_s1, saved_reg_gp - 0x4278, arg3);
    fprintf(temp_s1, &sub_0f020000 + 0x4A88, sp8, arg1);
    var_s2 = 0;
    if (arg1 > 0) {
        var_s4 = sp0;
        do {
            var_s4 += 8;
            fprintf(temp_s1, &sub_0f020000 + 0x4AA8, var_s2, var_s4->unk-8);
            var_s2 += 1;
        } while (arg1 != var_s2);
    }
}

void gl_free_nurbs(void *arg0) {
    s32 temp_a0;

    if (arg0 != NULL) {
        temp_a0 = arg0->unk2DD8;
        if (temp_a0 != 0) {
            gluDeleteNurbsRenderer(temp_a0);
            arg0->unk2DD8 = 0;
        }
    }
}
