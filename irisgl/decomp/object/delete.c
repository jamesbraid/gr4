extern s32 gl_currentend;
extern u32 gl_currentpos;
extern s32 gl_objchunksize;
extern s32 gl_openobj;
extern void *gl_openobjhdr;
extern s32 gl_replacemode;

void gl_g_objdelete(s32 arg0, s32 arg1) {
    s64 sp10;
    s32 temp_a0;
    s32 var_a0;
    s64 var_ra;
    u32 temp_a0_3;
    void *temp_a0_2;
    void *temp_gp;
    void *temp_s5;
    void *temp_v0;
    void *var_s0;
    void *var_s3;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF904B4;
    if (gl_openobjhdr != NULL) {
        if (arg0 != -2) {
            temp_v0 = gl_findhash(gl_openobj, arg0);
            var_s3 = temp_v0;
            var_ra = sp10;
            if (temp_v0 != NULL) {
                goto block_6;
            }
            gl_ErrorHandler(0x20, 2, temp_gp->unk-3B68);
            return;
        }
        var_s3 = gl_openobjhdr->unk0 - 8;
block_6:
        sp10 = var_ra;
        temp_s5 = var_s3 + 8;
        var_s0 = temp_s5;
loop_9:
        temp_a0 = var_s0->unk0;
        if (temp_a0 != gl_n_retsym) {
            if (temp_a0 == gl_n_jump) {
                var_s0 = var_s0->unk4;
                goto loop_9;
            }
            if (temp_a0 == gl_n_tag) {
                temp_a0_2 = var_s0->unk4;
                if (arg1 == temp_a0_2) {
                    if (temp_s5 != var_s0) {
                        if ((var_s3 + 0xC) != var_s0) {
                            if ((var_s3 + 0x10) != var_s0) {
                                var_s3->unkC = var_s0;
                                var_s3->unk8 = gl_n_jump;
                            } else {
                                var_s3->unk8 = gl_n_slopnop3;
                            }
                        } else {
                            var_s3->unk8 = gl_n_slopnop2;
                        }
                    }
                } else {
                    var_s0 += 8;
                    __GLdeltag(temp_a0_2, gl_n_tag, gl_n_gl_ecallfunc);
                    goto loop_9;
                }
            } else {
                if (temp_a0 == gl_n_gl_ecallfunc) {
                    gl_intrp_freefunc(var_s0, gl_n_tag, gl_n_gl_ecallfunc);
                }
                var_s0 += gl_getcmdlength(var_s0->unk0, var_s0->unk4) * 2;
                goto loop_9;
            }
        } else {
            if (arg1 != -3) {
                gl_ErrorHandler(0x20, 2, temp_gp->unk-3B68);
            }
            var_s3->unk8 = gl_n_retsym;
            gl_openobjhdr->unk14 = temp_s5;
            var_v0 = gl_openobjhdr->unk4;
            if (var_v0 != NULL) {
loop_24:
                temp_a0_3 = var_v0->unk4;
                if (((u32) temp_s5 < temp_a0_3) || (var_a0 = 1, (((u32) temp_s5 < (u32) (temp_a0_3 + (((s32) gl_objchunksize >> 1) * 2))) == 0))) {
                    var_a0 = 0;
                }
                if (var_a0 == 0) {
                    var_v0 = var_v0->unk0;
                    if (var_v0 == NULL) {
                        goto block_29;
                    }
                    goto loop_24;
                }
                goto block_31;
            }
block_31:
            if (var_v0 != NULL) {
                gl_openobjhdr->unk18 = (s32) (var_v0->unk4 + (((s32) gl_objchunksize >> 1) * 2));
            } else {
block_29:
                gl_ErrorHandler(0x6C, 5, temp_gp->unk-3B68);
            }
        }
        gl_replacemode = 0;
        gl_currentpos = (u32) gl_openobjhdr->unk14;
        gl_currentend = gl_openobjhdr->unk18;
        return;
    }
    gl_ErrorHandler(5, 2, temp_gp->unk-3B68);
}
