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

s8 *XResourceManagerString(s32);                    /* extern */
s64 XrmGetFileDatabase(s8 *);                       /* extern */
s32 XrmGetResource(s32, s8 *, s8 *, s8 **);         /* extern */
s64 XrmGetStringDatabase(s8 *);                     /* extern */
? XrmMergeDatabases(s64, void *);                   /* extern */
? bcopy(s8 *, s8 *, s32);                           /* extern */
s32 gethostname(s8 *, s32);                         /* extern */
? strcat(s8 *, s8 *);                               /* extern */
? strcpy(s8 *, s8 *);                               /* extern */
s32 strlen(s8 *);                                   /* extern */
s8 *strtok(?, ?);                                   /* extern */
extern s8 *_GLappclass;
extern s8 *_GLappinstance;
extern ? sub_0f020000;

void finddb(s32 arg0, s8 *arg1, ? arg2) {
    s64 sp208;
    s64 temp_v0;
    s8 *temp_v0_2;
    s8 *var_a1;

    if (arg0 == 0) {
        return;
    }
    var_a1 = strtok(arg2);
loop_3:
    strcpy(sp, var_a1);
    strcat(sp, saved_reg_gp - 0x3E10);
    strcat(sp, arg1);
    temp_v0 = XrmGetFileDatabase(sp);
    sp208 = temp_v0;
    if (temp_v0 == 0) {
        temp_v0_2 = strtok(0, arg2);
        var_a1 = temp_v0_2;
        if (temp_v0_2 == NULL) {
            return;
        }
        goto loop_3;
    }
    if (strtok(0, arg2) != NULL) {
        do {

        } while (strtok(0, arg2) != NULL);
    }
}

void _GLresourceinit(void) {
    s32 temp_v0_4;
    s8 *temp_v0;
    s8 *temp_v0_2;
    s8 *temp_v0_3;
    s8 *temp_v0_5;
    s8 *var_s2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;

    saved_reg_gp->unk-4D0C = 1;
    temp_v0 = getenv(saved_reg_gp - 0x3DE8);
    var_s2 = temp_v0;
    if (temp_v0 == NULL) {
        var_s2 = saved_reg_gp - 0x3E10;
    }
    temp_s0 = saved_reg_gp - 0x3E10 + 8;
    gl_g_gl_glx_winset(getenv(&sub_0f020000 + 0x5ED8), _GLappclass, temp_s0);
    saved_reg_gp->unk-4D08 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        gl_g_gl_glx_winset(&sub_0f020000 + 0x5EE8, _GLappclass, saved_reg_gp - 0x3E10 + 0x18);
        saved_reg_gp->unk-4D08 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    }
    gl_g_gl_glx_winset(getenv(&sub_0f020000 + 0x5F08), _GLappclass, temp_s0);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        temp_s0_2 = saved_reg_gp - 0x3E10 + 0x18;
        gl_g_gl_glx_winset(getenv(&sub_0f020000 + 0x5F20), _GLappclass, temp_s0_2);
        if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
            gl_g_gl_glx_winset(var_s2, _GLappclass, temp_s0_2);
        }
    }
    temp_s0_3 = saved_reg_gp - 0x4D08;
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        XrmMergeDatabases(M2C_ERROR(/* Read from unset register $v0 */), temp_s0_3);
    }
    temp_v0_2 = XResourceManagerString(gl_sstatep->unk1C->unk4);
    if (temp_v0_2 != NULL) {
        XrmMergeDatabases(XrmGetStringDatabase(temp_v0_2), temp_s0_3);
    } else {
        gl_g_gl_glx_winset(var_s2, &sub_0f020000 + 0x5EB8, saved_reg_gp - 0x3E10 + 0x18);
        XrmMergeDatabases(M2C_ERROR(/* Read from unset register $v0 */), temp_s0_3);
    }
    temp_v0_3 = getenv(&sub_0f020000 + 0x5F30);
    if (temp_v0_3 != NULL) {
        XrmMergeDatabases(XrmGetFileDatabase(temp_v0_3), temp_s0_3);
    } else {
        strcpy(sp, var_s2);
        strcat(sp, saved_reg_gp - 0x3E10);
        strcat(sp, &sub_0f020000 + 0x5EB8);
        strcat(sp, saved_reg_gp - 0x3E10 + 0x20);
        temp_v0_4 = strlen(sp);
        if (gethostname(&sp[temp_v0_4], 0x200 - temp_v0_4) == 0) {
            XrmMergeDatabases(XrmGetFileDatabase(sp), temp_s0_3);
        }
    }
    temp_v0_5 = getenv(saved_reg_gp - 0x3DE0);
    if (temp_v0_5 != NULL) {
        XrmMergeDatabases(XrmGetStringDatabase(temp_v0_5), temp_s0_3);
    }
}

s32 _GLgetresource(s8 *arg0, s8 *arg1, s64 arg2, s64 arg3) {
    s64 sp478;
    s64 sp470;
    s64 sp468;
    s64 sp460;
    s64 sp458;
    s64 sp450;
    s8 *sp44C;
    s8 *sp444;
    s32 sp408;
    s8 *sp400;
    s8 sp200;
    s32 temp_a0;
    s64 *var_s4;
    s8 *temp_s1;
    s8 *temp_v0;
    s8 *var_s0;

    var_s0 = arg0;
    var_s4 = &sp450;
    sp478 = M2C_ERROR(/* Read from unset register $a7 */);
    sp470 = M2C_ERROR(/* Read from unset register $a6 */);
    sp468 = M2C_ERROR(/* Read from unset register $a5 */);
    sp460 = M2C_ERROR(/* Read from unset register $a4 */);
    sp458 = arg3;
    sp450 = arg2;
    sp44C = arg1;
    sp444 = var_s0;
    strcpy(sp, _GLappclass);
    strcpy(&sp200, _GLappinstance);
    strcat(sp, saved_reg_gp - 0x3DD8);
    strcat(&sp200, saved_reg_gp - 0x3DD0);
    temp_s1 = saved_reg_gp - 0x3E00;
loop_2:
    strcat(sp, temp_s1);
    strcat(sp, var_s0);
    strcat(&sp200, temp_s1);
    strcat(&sp200, sp44C);
    temp_a0 = -8 & (s32) (var_s4 + 7);
    var_s0 = temp_a0->unk4;
    sp444 = var_s0;
    if (var_s0 != NULL) {
        var_s4 = (-8 & (temp_a0 + 0xF)) + 8;
        sp44C = var_s4->unk-4;
        goto loop_2;
    }
    if (saved_reg_gp->unk-4D0C == 0) {
        gl_g_gl_glx_winset((s8 *) temp_a0);
    }
    if (XrmGetResource(saved_reg_gp->unk-4D08, &sp200, sp, &sp400) != 0) {
        temp_v0 = gl_malloc(sp408 + 1, &sub_0f020000 + 0x5F40);
        sp400 = temp_v0;
        bcopy(sp40C, temp_v0, sp408);
        sp400[sp408] = 0;
        return (s32) temp_v0;
    }
    return 0;
}

s32 _GLgetwinresource(void *arg0, s64 arg1, s64 arg2) {
    s8 sp3FF;
    s8 sp1FF;
    s32 temp_v0;
    s32 temp_v0_2;
    s8 *temp_s4;
    s8 *var_s0;
    s8 *var_s2;
    u8 temp_a3;
    void *var_s1;

    var_s1 = arg0;
    temp_a3 = arg0->unk2C;
    switch (temp_a3) {                              /* irregular */
    default:
        sp1FF = 0;
        sp3FF = 0;
        var_s0 = &sp3FF;
        var_s2 = &sp1FF;
        if (var_s1->unk44 != 0) {
            temp_s4 = &sub_0f020000 + 0x5EC8;
loop_5:
            temp_v0 = strlen(temp_s4);
            var_s2 -= temp_v0;
            bcopy(temp_s4, var_s2, temp_v0);
            temp_v0_2 = strlen(var_s1->unk68);
            var_s0 -= temp_v0_2;
            bcopy(var_s1->unk68, var_s0, temp_v0_2);
            var_s1 = var_s1->unk44;
            if (var_s1->unk2C != 1) {
                var_s0->unk-1 = 0x2E;
                var_s2->unk-1 = 0x2E;
                var_s0 -= 1;
                var_s2 -= 1;
                if (var_s1->unk44 != 0) {
                    goto loop_5;
                }
            }
        }
        return _GLgetresource(var_s2, var_s0, arg1, arg2);
    case 3:
        return _GLgetresource(&sub_0f020000 + 0x5F90, &sub_0f020000 + 0x5FA0, arg1, arg2);
    case 1:
        return _GLgetresource(&sub_0f020000 + 0x5F50, &sub_0f020000 + 0x5F60, arg1, arg2);
    case 5:
        return _GLgetresource(&sub_0f020000 + 0x5F70, &sub_0f020000 + 0x5F80, arg1, arg2);
    }
}
