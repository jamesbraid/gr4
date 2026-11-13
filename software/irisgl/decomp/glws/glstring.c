s32 XCreateColormap(void *, s32, s32, ?);           /* extern */
s64 XCreateWindow(void *, s32, ?, ?, s32, ? *);     /* extern */
? XDestroyWindow(void *, s64);                      /* extern */
? XFree(void *);                                    /* extern */
? XFreeColormap(void *, s32);                       /* extern */
s64 glGetString(?);                                 /* extern */
void *glXChooseVisual(s32);                         /* extern */
s64 glXCreateContext(void *, void *, ?, ?);         /* extern */
? glXDestroyContext(void *, s64);                   /* extern */
? glXMakeCurrent(void *, s64, s64);                 /* extern */
s32 glXQueryVersion(s32, void *, s32 *);            /* extern */
s64 gluGetString(?);                                /* extern */
s32 sscanf(void *, void *, void *, void *);         /* extern */
void *strchr(void *, ?, ?);                         /* extern */
? strcpy(void *, s64, s64);                         /* extern */
s64 strlen(s64);                                    /* extern */
s32 strncmp(s32, void *, s64);                      /* extern */
s32 strstr(s32, s32);                               /* extern */
extern s32 __libc_attr;
extern ? sub_0f020000;
extern ? sub_0f030000;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x10. */
s32 __iglooGetOpenGLStrings(s64 arg0, s64 arg1) {
    s32 var_s0;

    var_s0 = 0;
    unksp10 = arg1;
    unksp8 = arg0;
    if (__iglooIsGlxScreen(arg1) != 0) {
        if (__iglooGetCurrentContextInfo() == 0) {
            var_s0 = __iglooGetOpenGLStrings(unksp8, unksp10);
        } else {
            var_s0 = __iglooGetOpenGLStrings(unksp8);
        }
    }
    return var_s0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x60, 0x64, 0x68, 0x6c, 0x90, 0x94], gap at: 0x78. */
s32 GetOpenGLStrings(s32 arg0) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp4;
    s32 temp_a1;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_s8_2;
    s64 temp_s0;
    s64 temp_s3;
    s64 temp_s4;
    s64 temp_s5;
    s64 temp_s8;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_a0;
    s64 var_s1;
    s64 var_s2;
    u8 temp_a6;
    u8 var_a2;
    void *temp_a0;
    void *temp_a0_10;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a0_9;
    void *temp_v0;
    void *temp_v0_4;
    void *temp_v0_5;

    temp_s4 = glGetString(0x1F00);
    temp_s8 = glGetString(0x1F01);
    temp_s3 = glGetString(0x1F02);
    temp_s5 = glGetString(0x1F03);
    var_s2 = saved_reg_gp - 0x4A70;
    var_s1 = saved_reg_gp - 0x4A70;
    sp4 = 0;
    if (glXQueryVersion(arg0, sp, &sp4) == 1) {
        if ((subroutine_arg0 > 0) && (sp4 > 0)) {
            var_s1 = gluGetString(0x189C0);
            var_s2 = gluGetString(0x189C1);
        }
    }
    temp_s7 = strlen(temp_s4) + 1;
    temp_s6 = strlen(temp_s8) + 1;
    temp_v0_2 = strlen(temp_s3);
    sp58 = temp_s8;
    temp_s0 = temp_v0_2 + 1;
    temp_s8_2 = strlen(temp_s5) + 1;
    sp50 = strlen(var_s1) + 1;
    temp_v0_3 = strlen(var_s2);
    sp48 = temp_s0;
    temp_a1 = temp_v0_3 + sp50;
    temp_v0 = __iglooMalloc(temp_s7 + temp_s6 + (temp_s0 + temp_s8_2) + temp_a1 + 0x55, temp_a1);
    if (temp_v0 != NULL) {
        temp_v0->unk0 = (s32) subroutine_arg0;
        temp_v0->unk4 = sp4;
        temp_a6 = *var_s1;
        var_a0 = var_s1;
        if (temp_a6 != 0) {
            var_a2 = temp_a6;
loop_4:
            if (!(((var_a2 * 4) + __libc_attr)->unk4 & 4)) {
                var_a2 = var_a0->unk1;
                var_a0 += 1;
                if (var_a2 != 0) {
                    goto loop_4;
                }
            }
        }
        if (sscanf((void *) var_a0, saved_reg_gp - 0x4A68, temp_v0 + 8, temp_v0 + 0xC) != 2) {
            temp_v0->unkC = 0;
            temp_v0->unk8 = 0;
        }
        temp_a0 = temp_v0 + 0x54;
        temp_v0->unk10 = temp_a0;
        strcpy(temp_a0, temp_s4, 2);
        temp_a0_2 = temp_s7 + temp_v0;
        sp28 = (s64) temp_a0_2;
        temp_a0_3 = temp_a0_2 + 0x54;
        temp_v0->unk14 = temp_a0_3;
        strcpy(temp_a0_3, sp58);
        temp_a0_4 = temp_a0_2 + temp_s6;
        sp30 = (s64) temp_a0_4;
        temp_a0_5 = temp_a0_4 + 0x54;
        temp_v0->unk18 = temp_a0_5;
        strcpy(temp_a0_5, temp_s3);
        temp_a0_6 = temp_a0_4 + sp48;
        sp40 = (s64) temp_a0_6;
        temp_a0_7 = temp_a0_6 + 0x54;
        temp_v0->unk1C = temp_a0_7;
        strcpy(temp_a0_7, temp_s5, sp48);
        temp_a0_8 = temp_a0_6 + temp_s8_2;
        sp38 = (s64) temp_a0_8;
        temp_a0_9 = temp_a0_8 + 0x54;
        temp_v0->unk20 = temp_a0_9;
        strcpy(temp_a0_9, var_s1);
        temp_a0_10 = temp_a0_8 + sp50 + 0x54;
        temp_v0->unk24 = temp_a0_10;
        strcpy(temp_a0_10, var_s2);
        temp_v0->unk28 = 0;
        sp10 = strlen((s64) saved_reg_gp->unk-39F0);
        sp8 = strlen((s64) saved_reg_gp->unk-39EC);
        sp18 = strlen((s64) saved_reg_gp->unk-39E8);
        sp20 = strlen((s64) saved_reg_gp->unk-39E4);
        if (strncmp(saved_reg_gp->unk-39F0, temp_v0->unk14, sp10) != 0) {
            if (strncmp(saved_reg_gp->unk-39EC, temp_v0->unk14, sp8) != 0) {
                if (strncmp(saved_reg_gp->unk-39E8, temp_v0->unk14, sp18) != 0) {
                    if (strncmp(saved_reg_gp->unk-39E4, temp_v0->unk14, sp20) == 0) {
                        temp_v0->unk28 = 8;
                    }
                } else {
                    temp_v0->unk38 = 0;
                    temp_v0->unk34 = 0;
                    temp_v0->unk30 = 0;
                    temp_v0->unk28 = 5;
                    temp_v0_4 = strchr(temp_v0->unk14, 0x2F, 5);
                    if (temp_v0_4 != NULL) {
                        sscanf(temp_v0_4, &sub_0f020000 + 0x33B8, temp_v0 + 0x30, temp_v0 + 0x34);
                    }
                }
            } else {
                temp_v0->unk38 = 0;
                temp_v0->unk34 = 0;
                temp_v0->unk30 = 0;
                temp_v0->unk28 = 2;
                temp_v0_5 = strchr(temp_v0->unk14, 0x2F);
                if (temp_v0_5 != NULL) {
                    sscanf(temp_v0_5, &sub_0f020000 + 0x33B8, temp_v0 + 0x30, temp_v0 + 0x34);
                }
            }
        } else {
            temp_v0->unk34 = 0;
            temp_v0->unk30 = 0;
            temp_v0->unk2C = 0;
            sscanf(temp_v0->unk14 + sp10, &sub_0f020000 + 0x33A8, temp_v0 + 0x2C, temp_v0 + 0x30);
            if (temp_v0->unk34 != 0) {
                temp_v0->unk28 = 3;
            } else {
                temp_v0->unk28 = 4;
            }
        }
        __iglooGetOpenGLStrings((s64) temp_v0);
    }
    return (s32) temp_v0;
}

s32 ByAllMeansGetOpenGLStrings(void *arg0, s64 arg1) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp54;
    s32 sp48;
    s32 sp2C;
    s32 sp24;
    ? sp20;
    s32 temp_v0_2;
    s32 var_s1;
    s64 temp_a4;
    s64 temp_v0_3;
    void *temp_v0;

    unksp80 = arg1;
    var_s1 = 0;
    temp_v0 = glXChooseVisual(saved_reg_gp - 0x39E0);
    if (temp_v0 != NULL) {
        sp68 = glXCreateContext(arg0, temp_v0, 0, 1);
        temp_a4 = unksp80 * 0x50;
        sp60 = temp_a4;
        temp_v0_2 = XCreateColormap(arg0, (arg0->unk8C + temp_a4)->unk8, temp_v0->unk0, 0);
        sp48 = 0;
        sp24 = 0;
        sp2C = 0;
        sp54 = temp_v0_2;
        temp_v0_3 = XCreateWindow(arg0, (arg0->unk8C + sp60)->unk8, 0, 0, 0x280A, &sp20);
        sp70 = temp_v0_3;
        glXMakeCurrent(arg0, temp_v0_3, sp68);
        var_s1 = __iglooGetOpenGLStrings((s64) arg0);
        glXMakeCurrent(arg0, 0, 0);
        if (sp68 != 0) {
            glXDestroyContext(arg0, sp68);
        }
        if (sp70 != 0) {
            XDestroyWindow(arg0, sp70);
        }
        if (sp54 != 0) {
            XFreeColormap(arg0, sp54);
        }
        XFree(temp_v0);
    }
    return var_s1;
}

void parseExtensions(void *arg0) {
    s32 temp_v0;
    s32 var_a0;
    s32 var_s2;
    u8 temp_a0;
    void *var_s0;

    var_s2 = 0x18;
    var_s0 = &sub_0f030000 - 0x7768;
loop_3:
    (var_s0->unk8 + arg0)->unk3C = 0;
    var_s2 -= 1;
    var_a0 = arg0->unk1C;
loop_4:
    temp_v0 = strstr(var_a0, var_s0->unk0);
    if (temp_v0 != 0) {
        temp_a0 = *(var_s0->unk4 + temp_v0);
        if (temp_a0 != 0) {
            var_a0 = temp_v0 + 1;
            if (!((__libc_attr + (temp_a0 * 4))->unk4 & 0x80000008)) {
                goto loop_4;
            }
        }
        (var_s0->unk8 + arg0)->unk3C = 1;
    }
    var_s0 += 0xC;
    if (var_s2 != 0) {
        goto loop_3;
    }
}

s32 __iglooIsExtensionSupported(s32 arg0) {
    return (s32) ((*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5C92C)->unk-7E70)->unk1C->unk100 + arg0)->unk3C;
}
