? XFree(s32);                                       /* extern */
s8 atoi(s8 *);                                      /* extern */
s32 glXChooseVisual(void *);                        /* extern */
? sginap();                                         /* extern */
extern s32 gl_nscrns;
extern void *gl_scrntab;
extern s32 gl_selected_scrn;
extern s32 gl_standalone;
extern ? sub_0f020000;
extern ? sub_0f030000;

void gl_init(void) {
    if (gl_scrntab == NULL) {
        gl_init_scrntab();
    }
    gl_devdepattach(gl_selected_scrn);
    gl_initobjectstuff();
}

s32 __iglooIsGlxScreen(s32 arg0) {
    s32 temp_a4;
    s32 var_v0;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF445B4;
    var_v0 = 0;
    if ((arg0 >= 0) && (arg0 < *temp_at->unk-7E74)) {
        temp_a4 = *temp_at->unk-7E78;
        if (temp_a4 != 0) {
            var_v0 = ((arg0 * 0x28) + temp_a4)->unk24;
        }
    }
    return var_v0;
}

s32 isGlxScreen(void) {
    s32 temp_v0;
    s32 var_v0;

    temp_v0 = glXChooseVisual(&sub_0f030000 - 0x66A8);
    if (temp_v0 == 0) {
        var_v0 = 0;
    } else {
        XFree(temp_v0);
        var_v0 = 1;
    }
    return var_v0;
}

void gl_init_scrntab(void) {
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_v0_2;
    s32 var_s0;
    s32 var_s2;
    s32 var_s3;
    s32 var_v0;
    s8 *temp_v0_3;
    void *temp_a4;
    void *temp_v0;

    gl_standalone = 0;
    __iglooEarlyDisplayAccess(sp);
    temp_a1 = subroutine_arg0->unk88;
    gl_selected_scrn = 0;
    gl_nscrns = temp_a1;
    temp_v0 = __iglooCalloc(temp_a1 * 0x28, temp_a1);
    var_s0 = 0;
    gl_scrntab = temp_v0;
    gl_sstatep = (gl_selected_scrn * 0x28) + temp_v0;
    if (gl_nscrns > 0) {
        var_s3 = 0;
        var_s2 = 0;
loop_4:
        gl_selected_scrn = var_s0;
        var_v0 = 1;
        temp_a4 = gl_scrntab + var_s3;
        if (var_s0 == 0) {
            if (gl_standalone == 0) {
                var_v0 = 0;
            }
        }
        temp_a4->unk8 = var_v0;
        temp_a4->unk20 = 0;
        temp_v0_2 = __iglooIsGlxScreen(subroutine_arg0, var_s0);
        temp_a4->unk8 = 0;
        temp_a4->unk24 = temp_v0_2;
        temp_a4->unk0 = (s32) ((subroutine_arg0->unk8C + var_s2)->unkC - 1);
        var_s0 += 1;
        temp_a5 = (subroutine_arg0->unk8C + var_s2)->unk10;
        var_s2 += 0x50;
        temp_a4->unk4 = (s32) (temp_a5 - 1);
        temp_v0_3 = getenv(&sub_0f020000 + 0x44D0);
        temp_at = gl_nscrns;
        if (temp_v0_3 != NULL) {
            temp_a4->unk21 = atoi(temp_v0_3);
        }
        var_s3 += 0x28;
        if (var_s0 < temp_at) {
            goto loop_4;
        }
    }
}

void gl_devdepattach(s32 arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4436C;
    *temp_at->unk-7E70 = *temp_at->unk-7E78 + (arg0 * 0x28);
}

void gl_sginap(void) {
    sginap();
}
