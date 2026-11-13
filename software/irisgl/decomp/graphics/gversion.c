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

? XCloseDisplay(s64);                               /* extern */
? XDefaultScreen(s64);                              /* extern */
s64 XOpenDisplay(?);                                /* extern */
? close(s32);                                       /* extern */
s32 open(void *, ?, void *, ?);                     /* extern */
? strcat(void *, s32);                              /* extern */
s32 strcmp(void *, void *);                         /* extern */
? strcpy(void *, void *);                           /* extern */
s32 strlen(s32);                                    /* extern */
? strncat(void *, ?, ?);                            /* extern */
s32 strncmp(s32, s32, s32);                         /* extern */
? strncpy(void *, s8 *, ?);                         /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void match_gfx(s32 arg0) {
    s32 *var_s0;

    var_s0 = &sub_0f030000 - 0x7618;
    if (*var_s0 != 0) {
loop_2:
        if (strncmp(arg0, var_s0->unk4, strlen(var_s0->unk4)) != 0) {
            var_s0 += 0xC;
            if (var_s0->unkC == 0) {

            } else {
                goto loop_2;
            }
        }
    }
}

void makeGversionString(void *arg0, ? arg2) {
    strncpy((void *)7);
    arg0->unk7 = 0;
    strcat(arg0, saved_reg_gp - 0x4988);
    strncat(arg0, arg2, 3);
    arg0->unkB = 0;
}

void gl_g_gversion(void *arg0) {
    s64 temp_v0_2;
    s8 *temp_v0;

    gl_g_gversion();
    temp_v0 = getenv((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5B144)->unk-39D8);
    if (gl_sstatep != NULL) {
        if (temp_v0 == NULL) {
            strcpy(arg0, gl_sstatep->unk1C + 0x104);
        } else {
            goto block_5;
        }
    } else if (temp_v0 != NULL) {
block_5:
        strncpy(arg0, temp_v0, 0xB);
        arg0->unkB = 0;
    } else {
        temp_v0_2 = XOpenDisplay(0);
        if (temp_v0_2 != 0) {
            XDefaultScreen(temp_v0_2);
            XCloseDisplay(subroutine_arg0);
        }
        __iglooGetGraphicsType(arg0, subroutine_arg2);
    }
}

void __iglooInitializeVersion(void) {
    s64 spD10;
    ? sp202;
    s32 temp_v0;
    void *temp_v1;

    if (gl_sstatep != NULL) {
        temp_v1 = gl_sstatep->unk1C;
        spD10 = (s64) temp_v1;
        if (temp_v1->unk100 == 0) {
            uname(sp);
            temp_v0 = __iglooGetOpenGLStrings(spD10->unk4, spD10->unk8);
            spD10->unk100 = temp_v0;
            if (temp_v0 != 0) {
                gl_g_ilbuffer(temp_v0->unk14, spD10);
                spD10->unk110 = (s32) *M2C_ERROR(/* Read from unset register $v0 */);
                gl_g_ilbuffer(spD10 + 0x104, (s64) M2C_ERROR(/* Read from unset register $v0 */)->unk8, &sp202);
            }
        }
    }
}

s32 __iglooGetGraphicsType(void) {
    gl_g_gversion();
    return gl_sstatep->unk1C->unk110;
}

void gversionIoctl(s64 arg0, s32 arg1) {
    s64 spD68;
    s64 spD60;
    s64 spD58;
    ? sp23A;
    ? sp38;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 temp_v0;
    s64 temp_v0_2;
    void *var_a5;

    spD68 = arg0;
    bzero(sp, 0x28U);
    sp28 = arg1;
    sp30 = 0x28;
    temp_v0 = open(&sub_0f020000 + 0x3478, 0x800, sp, 0x28);
    if ((temp_v0 >= 0) && (ioctl(temp_v0, 0x65U, 0) > 0) && (ioctl(temp_v0, 0x66U, &sp28) >= 0)) {
        uname(&sp38);
        if ((strcmp(saved_reg_gp->unk-39D4, sp) != 0) && (strcmp(saved_reg_gp->unk-39D0, sp) != 0) && (strcmp(saved_reg_gp->unk-39CC, sp) != 0)) {
            gl_g_ilbuffer(sp);
            goto block_7;
        }
        gl_g_ilbuffer(saved_reg_gp->unk-39D4);
        spD58 = M2C_ERROR(/* Read from unset register $v0 */);
        temp_v0_2 = __iglooMalloc(sp24);
        spD60 = temp_v0_2;
        var_a5 = (void *) spD58;
        if ((temp_v0_2 != 0) && (sp2C = (s32) temp_v0_2, sp28 = arg1, sp30 = sp24, var_a5 = (void *) spD58, (ioctl(temp_v0, 0x66U, &sp28) >= 0))) {
            if (spD60->unk2D == 0) {
                gl_g_ilbuffer(saved_reg_gp->unk-39C8);
block_7:
                var_a5 = M2C_ERROR(/* Read from unset register $v0 */);
            }
        }
        gl_g_ilbuffer((void *) spD68, (s64) var_a5->unk8, &sp23A);
    }
    if (temp_v0 >= 0) {
        close(temp_v0);
    }
}
