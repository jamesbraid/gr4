extern s32 gl_objchunksize;
extern s32 gl_openobj;
extern s32 gl_openobjhdr;

void gl_g_compactify(s64 arg0) {
    s64 sp78;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp10;
    s32 temp_a0;
    s32 temp_at;
    s32 temp_s2;
    s32 temp_t0;
    s32 temp_v0_4;
    s32 var_a1;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_t0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_a5_3;
    s64 var_s2;
    void *temp_a0_2;
    void *temp_v0_5;
    void *var_a1_2;
    void *var_s0;
    void *var_s0_2;
    void *var_t1;

    sp10 = arg0;
    if (__GLisobj() != 0) {
        temp_v0 = gl_findhash(sp10, -1);
        sp40 = temp_v0;
        if (gl_openobjhdr == temp_v0) {
            gl_openobjhdr = 0;
            gl_SetImmediateMode(1);
            gl_openobj = -1;
        }
        temp_v0_2 = gl_malloc(gl_objchunksize, saved_reg_gp->unk-3BA0);
        sp28 = temp_v0_2;
        var_s2 = temp_v0_2;
        if (temp_v0_2 == 0) {
            return;
        }
        temp_v0_3 = gl_malloc(8, saved_reg_gp->unk-3BA0, temp_v0_2);
        if (temp_v0_3 != 0) {
            temp_v0_3->unk4 = (s32) var_s2;
            temp_v0_3->unk0 = 0;
            sp30 = 0;
            var_s0 = sp40->unk0;
            temp_at = (s32) gl_objchunksize >> 1;
            sp20 = (s64) temp_at;
            sp38 = temp_at - 4;
loop_8:
            temp_a0 = var_s0->unk0;
            if (temp_a0 != gl_n_retsym) {
                if (temp_a0 == gl_n_jump) {
                    var_s0 = var_s0->unk4;
                    goto loop_8;
                }
                if (temp_a0 == gl_n_slopnop2) {
                    var_s0 += 4;
                    goto loop_8;
                }
                if (temp_a0 == gl_n_slopnop3) {
                    var_s0 += 8;
                    goto loop_8;
                }
                temp_v0_4 = gl_getcmdlength(temp_a0, var_s0->unk4);
                var_a5 = temp_v0_4;
                if (sp38 >= temp_v0_4) {
                    goto block_18;
                }
                sp78 = (s64) var_a5;
                var_s2->unk0 = gl_n_jump;
                if ((gl_malloc(gl_objchunksize, saved_reg_gp->unk-3BA0) != NULL) || (subroutine_arg2 == 0)) {
                    temp_v0_5 = gl_malloc(8, saved_reg_gp->unk-3BA0);
                    var_a5 = (s32) sp78;
                    if (temp_v0_5 != NULL) {
                        goto block_33;
                    }
                    gl_free((void *) subroutine_arg0, saved_reg_gp->unk-3BA0);
                    var_a5 = (s32) sp78;
                    if (subroutine_arg2 != 0) {
                        gl_free(subroutine_arg2->unk4, saved_reg_gp->unk-3BA0, subroutine_arg2);
                        gl_free((void *) subroutine_arg2, saved_reg_gp->unk-3BA0);
                        return;
                    }
block_33:
                    temp_v0_5->unk0 = (s32) subroutine_arg2;
                    temp_v0_5->unk4 = (s32) subroutine_arg0;
                    var_s2->unk4 = (s32) subroutine_arg0;
                    temp_s2 = (s32) gl_objchunksize >> 1;
                    sp20 += temp_s2;
                    sp38 = temp_s2 - 4;
                    var_s2 = subroutine_arg0;
block_18:
                    if (var_s0->unk0 == gl_n_tag) {
                        sp78 = (s64) var_a5;
                        gl_replacehash(var_s2, sp10, var_s0->unk4, gl_n_tag);
                    }
                    var_a5_2 = var_a5 - 1;
                    sp38 -= var_a5;
                    sp30 += var_a5;
                    if (var_a5_2 != -1) {
                        temp_t0 = var_a5_2 + 1;
                        var_a1 = temp_t0 & 3;
                        var_t1 = var_s0;
                        if (var_a1 != 0) {
                            do {
                                var_a5_2 -= 1;
                                var_s2 += 2;
                                var_s0 += 2;
                                var_a1 -= 1;
                                var_s2->unk-2 = (s16) var_s0->unk-2;
                            } while (var_a1 != 0);
                            var_t1 = var_s0;
                        }
                        var_a5_3 = var_s2;
                        if ((temp_t0 >> 2) != 0) {
                            var_t0 = var_a5_2;
                            var_a1_2 = var_t1;
                            do {
                                var_a5_3->unk0 = (s16) var_a1_2->unk0;
                                var_a5_3->unk2 = (s16) var_a1_2->unk2;
                                var_a5_3 += 8;
                                var_a5_3->unk-4 = (s16) var_a1_2->unk4;
                                var_a1_2 += 8;
                                var_t0 -= 4;
                                var_a5_3->unk-2 = (s16) var_a1_2->unk-2;
                            } while (var_t0 != -1);
                            var_s0 = var_a1_2;
                            var_s2 = var_a5_3;
                        }
                    }
                    goto loop_8;
                }
                gl_free(subroutine_arg2->unk4, saved_reg_gp->unk-3BA0, subroutine_arg2);
                gl_free((void *) subroutine_arg2, saved_reg_gp->unk-3BA0);
                return;
            }
            var_s2->unk0 = gl_n_retsym;
            var_s0_2 = sp40->unk4;
            sp40->unk8 = (s32) sp30;
            sp40->unkC = (s32) sp20;
            if (var_s0_2 != NULL) {
                do {
                    gl_free(var_s0_2->unk4, saved_reg_gp->unk-3BA0);
                    temp_a0_2 = var_s0_2;
                    var_s0_2 = var_s0_2->unk0;
                    gl_free(temp_a0_2, saved_reg_gp->unk-3BA0);
                } while (var_s0_2 != NULL);
            }
            sp40->unk14 = (s32) var_s2;
            sp40->unk0 = (void *) sp28;
            sp40->unk4 = (void *) subroutine_arg2;
            sp40->unk18 = (s32) ((sp38 * 2) + var_s2 + 8);
            return;
        }
        gl_free((void *) sp28, saved_reg_gp->unk-3BA0);
    }
}
