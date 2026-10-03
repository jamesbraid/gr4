extern s32 gl_openobj;
extern void *gl_openobjhdr;

void gl_g_delobj(s64 arg0) {
    s32 temp_a5;
    void *temp_a0;
    void *temp_s2;
    void *temp_v0;
    void *var_s2;

    unksp10 = arg0;
    temp_v0 = gl_findhash(-1);
    if ((temp_v0 != NULL) && (temp_v0->unk1C != 0)) {
        temp_a5 = gl_openobj;
        gl_openobj = (s32) unksp10;
        temp_s2 = gl_openobjhdr;
        gl_openobjhdr = temp_v0;
        __GLobjdelete(-2, -3, &gl_openobjhdr, unksp10);
        if (temp_v0 != temp_s2) {
            gl_openobjhdr = temp_s2;
            gl_openobj = (s32) subroutine_arg0;
        } else {
            gl_openobjhdr = NULL;
            gl_SetImmediateMode(1);
            gl_openobj = -1;
        }
        var_s2 = temp_v0->unk4;
        if (var_s2 != NULL) {
            do {
                gl_free(var_s2->unk4, saved_reg_gp->unk-3B58);
                temp_a0 = var_s2;
                var_s2 = var_s2->unk0;
                gl_free(temp_a0, saved_reg_gp->unk-3B58);
            } while (var_s2 != NULL);
        }
        temp_v0->unk0 = 0;
        temp_v0->unk4 = NULL;
        temp_v0->unkC = 0;
        temp_v0->unk1C = 0;
        return;
    }
    gl_ErrorHandler(0x49, 2, saved_reg_gp->unk-3B58);
}
