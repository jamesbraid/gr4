extern s32 gl_openobj;
extern void *gl_openobjhdr;

void gl_g_deltag(s32 arg0) {
    ? *temp_a5;
    ? *temp_v0_2;
    ? *temp_v0_3;
    ? *var_a0;
    ? *var_a4;
    s32 temp_a2;
    void *temp_v0;

    if (__GLgetopenobj() != -1) {
        if (arg0 >= 0) {
            temp_v0 = gl_findhash(gl_openobj, arg0);
            if (temp_v0 != NULL) {
                temp_a2 = temp_v0 + 8;
                temp_v0->unk4 = temp_a2;
                temp_v0->unk0 = gl_n_jump;
                gl_removehash(gl_openobj, arg0, temp_a2, gl_n_jump);
                gl_openobjhdr->unk8 = (s32) (gl_openobjhdr->unk8 - 4);
                temp_v0_2 = gl_openobjhdr->unk10;
                temp_a5 = temp_v0_2->unk0;
                if (temp_v0_2->unk4 != arg0) {
                    var_a4 = temp_v0_2;
                    var_a0 = temp_a5;
                    if (temp_a5 != NULL) {
loop_5:
                        temp_v0_3 = var_a0->unk0;
                        if (var_a0->unk4 != arg0) {
                            var_a4 = var_a0;
                            var_a0 = temp_v0_3;
                            if (temp_v0_3 == NULL) {
                                /* Duplicate return node #7. Try simplifying control flow for better match */
                                gl_ErrorHandler(0x22, 1, saved_reg_gp->unk-3B48);
                                return;
                            }
                            goto loop_5;
                        }
                        *var_a4 = temp_v0_3;
                        gl_free(var_a0, saved_reg_gp->unk-3B48);
                        return;
                    }
                    gl_ErrorHandler(0x22, 1, saved_reg_gp->unk-3B48);
                    return;
                }
                gl_openobjhdr->unk10 = temp_a5;
                gl_free(temp_v0_2, saved_reg_gp->unk-3B48);
                return;
            }
            gl_ErrorHandler(0x20, 2, saved_reg_gp->unk-3B48);
            return;
        }
        gl_ErrorHandler(0x23, 2, saved_reg_gp->unk-3B48);
        return;
    }
    gl_ErrorHandler(5, 2, saved_reg_gp->unk-3B48);
}
