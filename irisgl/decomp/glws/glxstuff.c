typedef struct __gl_sstateRec {
    /* 0x000 */ void **display;
    /* 0x004 */ s32 screen;
    /* 0x008 */ u32 root;
    /* 0x00C */ u32 colormap;
    /* 0x010 */ void **visual;
    /* 0x014 */ char pad14[8];                      /* maybe part of visual[3]? */
    /* 0x01C */ void *unk1C;                        /* inferred */
    /* 0x020 */ char pad20[0xF0];                   /* maybe part of unk1C[0x3D]? */
    /* 0x110 */ s32 graphicsType;
} gl_sstate;                                        /* size = 0x114 */

? XChangeProperty(s32, s32, s32);                   /* extern */
? XCloseDisplay(void *);                            /* extern */
? XFree(s32 *, s32 *, void *);                      /* extern */
? XGetWindowProperty(void *, s32, s32, ?, s32 *, s32 **); /* extern */
s32 XInternAtom(void *, void *, ?);                 /* extern */
void *XOpenDisplay(s32);                            /* extern */
? XSetCloseDownMode(void *, ?);                     /* extern */
? bcopy(void **, void **, s64, s64);                /* extern */
extern s32 __iglooMixedModel;
extern s32 __iglooSoftPupMask;
extern s32 __iglooSoftPupPlanes;
extern s32 __iglooSoftPupShift;
extern ? sub_0f030000;

void use_deepest_visual(void *arg0) {
    s32 *temp_at_2;
    s32 *temp_v0;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a7;
    s32 temp_at;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a6;
    s32 var_t0;
    void *temp_t1;
    void *var_a3;

    temp_a7 = arg0->unk0;
    var_a6 = 0;
    var_t0 = 1;
    if (temp_a7 >= 2) {
        temp_at = temp_a7 - 1;
        if (temp_at >= 1) {
            var_t0 = temp_at;
        }
        temp_t1 = arg0->unk4;
        var_a2 = 1;
        var_a3 = temp_t1 + 0x50;
        var_a4 = temp_t1->unk0->unkC;
        if (var_t0 & 1) {
            temp_a5 = temp_t1->unk50->unkC;
            var_a3 += 0x50;
            if (var_a4 < temp_a5) {
                var_a6 = 1;
                var_a4 = temp_a5;
            }
            var_a2 = 2;
        }
        if ((var_t0 >> 1) != 0) {
loop_14:
            temp_a5_2 = var_a3->unk0->unkC;
            if (var_a4 < temp_a5_2) {
                var_a6 = var_a2;
                var_a4 = temp_a5_2;
            }
            temp_a5_3 = var_a3->unk50->unkC;
            var_a3 += 0xA0;
            temp_a2 = var_a2 + 1;
            if (var_a4 < temp_a5_3) {
                var_a6 = temp_a2;
                var_a4 = temp_a5_3;
            }
            var_a2 = temp_a2 + 1;
            if (var_a2 < temp_a7) {
                goto loop_14;
            }
        }
        var_a3_2 = 0;
        if (var_a6 > 0) {
            var_a2_2 = 0x14;
            do {
                temp_v0 = var_a3_2 + temp_t1;
                temp_at_2 = var_a3_2 + ((var_a6 * 0x50) + temp_t1);
                var_a3_2 += 4;
                var_a2_2 -= 1;
                *temp_v0 = *temp_at_2;
            } while (var_a2_2 > 0);
            arg0->unk0 = 1;
        }
    }
}

void __iglooFindAllGLVisualsAndColormaps(void *arg0) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s64 temp_s1;
    void **temp_v0;

    __iglooGetId(arg0 + 0x14);
    __iglooGetId(arg0 + 0x3C);
    temp_a2 = arg0->unk4C;
    temp_a3 = arg0->unk44;
    temp_s1 = arg0->unk64 + (arg0->unk5C + (arg0->unk54 + (temp_a2 + (temp_a3 + (arg0->unk3C + (arg0->unk34 + (arg0->unk2C + (arg0->unk24 + (arg0->unk1C + arg0->unk14)))))))));
    __iglooCancelSoftPup(arg0, temp_s1, temp_a2, temp_a3);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        __iglooCancelSoftPup(arg0, temp_s1);
    }
    if (arg0->unk14 == 0) {
        arg0->unkEC = (s32) arg0->unkE8;
        temp_a4 = arg0->unk3C;
        if (__iglooMixedModel != 0) {
            arg0->unk14 = temp_a4;
            temp_v0 = malloc((u32) (temp_a4 * 0x50));
            arg0->unk18 = temp_v0;
            bcopy(arg0->unk40, temp_v0, subroutine_arg0);
        } else {
            arg0->unk18 = (void **) arg0->unk40;
            arg0->unk14 = temp_a4;
            bzero((void *) subroutine_arg2, 8U);
        }
    }
    if ((__iglooMixedModel == 0) && (arg0->unk3C == 0) && (arg0->unk14 != 0)) {
        temp_a0 = (*arg0->unk18)->unkC;
        if (temp_a0 >= 3) {
            temp_a3_2 = temp_a0 >> 1;
            __iglooSoftPupPlanes = temp_a3_2;
            __iglooSoftPupShift = temp_a3_2;
            __iglooSoftPupMask = ~((1 << temp_a3_2) - 1) & ((1 << temp_a0) - 1);
        }
    }
}

void __iglooCancelSoftPup(void) {
    s64 sp8;
    s64 sp0;
    s32 temp_a1;
    s64 temp_a0;
    void **temp_v0;
    void *temp_a2;

    if (__iglooSoftPupPlanes != 0) {
        temp_a2 = gl_sstatep->unk1C;
        __iglooSoftPupShift = 0;
        __iglooSoftPupPlanes = 0;
        __iglooSoftPupMask = -1;
        temp_a1 = temp_a2->unk14;
        sp0 = (s64) temp_a2;
        temp_a2->unk3C = temp_a1;
        temp_a0 = temp_a1 * 0x50;
        sp8 = temp_a0;
        temp_v0 = malloc((u32) temp_a0);
        sp0->unk40 = temp_v0;
        bcopy(sp0->unk18, temp_v0, sp8, sp0);
    }
}

void _GLputGLcolormaps(void *arg0, void *arg1, ? arg2, ? arg3) {
    s32 temp_a5;
    s32 var_t1;
    void *temp_t3;

    temp_a5 = saved_reg_gp->unk-5130;
    temp_t3 = arg1->unk0->unk18;
    var_t1 = temp_t3->unk0;
    if (temp_a5 != 0) {
        var_t1 = temp_a5;
    }
    XChangeProperty((arg0->unk8C + (arg1->unk8 * 0x50))->unk8, var_t1, temp_t3->unkC);
}

s32 _GLgetGLcolormaps(void *arg0, ? arg1) {
    s32 *sp24;
    s32 sp20;
    s32 *var_a1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_s1;
    s32 var_v0;
    void *temp_s2;
    void *var_a2;

    temp_s2 = arg0->unk4;
    sp24 = NULL;
    sp20 = 0;
    var_s1 = *arg0->unk0->unk18;
    temp_v0 = __iglooGetGraphicsType();
    if ((temp_v0 == 5) || (temp_v0 == 6) || (temp_v0 == 7)) {
        temp_v0_2 = XInternAtom(temp_s2, &sub_0f030000 - 0x7640, 0);
        var_s1 = temp_v0_2;
        saved_reg_gp->unk-5130 = temp_v0_2;
    }
    XGetWindowProperty(temp_s2, (temp_s2->unk8C + (arg0->unk8 * 0x50))->unk8, var_s1, 0, &sp20, &sp24);
    var_a1 = sp24;
    if (sp24 != NULL) {
        var_a2 = arg0;
        do {
            var_v0 = 0;
            if (var_a2->unk14 > 0) {
                var_a0 = 0;
                do {
                    (var_a2->unk18 + var_a0)->unk4 = (s32) *var_a1;
                    var_a1 += 4;
                    var_v0 += 1;
                    var_a0 += 0x50;
                } while (var_v0 < var_a2->unk14);
            }
            var_a2 += 8;
        } while (var_a2 != (arg0 + 0x58));
        XFree(sp24, var_a1, var_a2);
        return 1;
    }
    return 0;
}

void _GLmakemap(s64 arg0, s64 arg1) {
    s32 *var_s5;
    s32 temp_a3;
    s32 temp_v0_2;
    s32 var_s0;
    s32 var_s2;
    s32 var_s3;
    s32 var_s6;
    s64 temp_sp;
    s64 var_s1;
    u32 temp_a1;
    void *temp_s4;
    void *temp_s4_2;
    void *temp_v0;

    arg0.unk-40 = (s64) saved_reg_fp;
    arg0.unk-38 = (s64) saved_reg_ra;
    arg0.unk-28 = arg0;
    arg0.unk-30 = arg1;
    temp_a1 = arg1 * 4;
    temp_sp = sp - ((temp_a1 + 0xF) & ~0xF);
    arg0.unk-20 = temp_sp;
    bzero((void *) temp_sp, temp_a1);
    arg0.unk-80 = (s64) saved_reg_s7;
    temp_v0 = XOpenDisplay(arg0.unk-28->unk4->unk80);
    arg0.unk-78 = (s64) saved_reg_s6;
    arg0.unk-60 = (s64) saved_reg_s3;
    arg0.unk-48 = (s64) saved_reg_s1;
    XSetCloseDownMode(temp_v0, 1);
    arg0.unk-70 = (s64) saved_reg_s0;
    arg0.unk-68 = (s64) saved_reg_s4;
    arg0.unk-58 = (s64) saved_reg_s5;
    arg0.unk-50 = (s64) saved_reg_s2;
    var_s6 = 0;
    var_s3 = 0;
    var_s1 = arg0.unk-28;
loop_4:
    var_s2 = 0;
    if (var_s1->unk14 > 0) {
        var_s0 = 0;
        var_s5 = var_s3 + arg0.unk-20;
        do {
            var_s2 += 1;
            var_s3 += 4;
            temp_s4 = var_s1->unk18 + var_s0;
            temp_v0_2 = __iglooFindColormap(temp_v0, temp_s4->unk0, var_s6);
            temp_s4->unk4 = temp_v0_2;
            *var_s5 = temp_v0_2;
            var_s0 += 0x50;
            var_s5 += 4;
        } while (var_s2 < var_s1->unk14);
    }
    var_s6 += 1;
    var_s1 += 8;
    if (var_s6 != 0xB) {
        goto loop_4;
    }
    if ((arg0.unk-28->unk3C != 0) && (arg0.unk-28->unk14 == 0)) {
        temp_s4_2 = arg0.unk-28->unk40;
        temp_a3 = temp_s4_2->unk0->unkC;
        if (temp_a3 >= 3) {
            __iglooSoftPupInitColormap(temp_v0, temp_s4_2->unk4, temp_a3 >> 1, temp_a3);
        }
    }
    _GLloadCurrentCursorMap();
    _GLrecolorAllCursors();
    __iglooCancelSoftPup(temp_v0, arg0.unk-28, (s32) arg0.unk-20, (s32) arg0.unk-30);
    XCloseDisplay(temp_v0);
}
