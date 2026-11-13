extern s32 gl_currentend;
extern s32 gl_currentpos;
extern s32 gl_objchunksize;
extern s32 gl_openobj;
extern void *gl_openobjhdr;

void gl_g_newtag(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp60;
    s64 sp58;
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s32 var_s5;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_v0_2;
    s64 temp_s4;
    s64 var_a0;
    void *var_a0_3;
    void *var_a5;
    void *var_s0_2;
    void *var_s1_2;
    void *var_v0;
    void *var_v0_3;

    var_s1 = arg2;
    if (gl_openobjhdr != NULL) {
        sp58 = arg1;
        sp60 = 0;
        if (arg0 >= 0) {
            var_a0 = sp60;
            if (__GListag(arg0) != 0) {
                gl_ErrorHandler(0x24, 2, saved_reg_gp->unk-3940);
                return;
            }
            if (sp58 == -2) {
                var_s0 = gl_openobjhdr->unk0 - 8;
            } else {
                temp_v0 = gl_findhash(gl_openobj, sp58);
                var_s0 = temp_v0;
                var_a0 = temp_v0 == 0;
            }
            if (var_a0 == 0) {
                var_s0_2 = var_s0 + 8;
                if (var_s1 != 0) {
loop_13:
                    temp_a0 = var_s0_2->unk0;
                    if (temp_a0 == gl_n_tag) {
                        var_s0_2 += 8;
                        goto block_12;
                    }
                    if (temp_a0 == gl_n_slopnop2) {
                        var_s0_2 += 4;
                        goto block_12;
                    }
                    if (temp_a0 == gl_n_slopnop3) {
                        var_s0_2 += 6;
                        goto block_12;
                    }
                    if (temp_a0 == gl_n_jump) {
                        var_s0_2 = var_s0_2->unk4;
                        goto block_12;
                    }
                    var_s1 -= 1;
                    if (temp_a0 != gl_n_retsym) {
                        var_s0_2 += gl_getcmdlength(temp_a0, var_s0_2->unk4, gl_n_slopnop3) * 2;
block_12:
                        if (var_s1 != 0) {
                            goto loop_13;
                        }
                        goto block_22;
                    }
                    gl_ErrorHandler(0x25, 2, saved_reg_gp->unk-3940);
                    return;
                }
block_22:
                gl_addchunk(saved_reg_gp->unk-3940, gl_n_slopnop2);
                temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    sp8 = temp_s4;
                    sp0 = (s64) var_s0_2;
                    gl_currentpos = (s32) temp_s4;
                    gl_currentend = (((s32) gl_objchunksize >> 1) * 2) + temp_s4;
                    __GLmaketag(arg0);
                    var_s1_2 = temp_s4 + 8;
                    temp_v0_2 = gl_getcmdlength(var_s0_2->unk0, var_s0_2->unk4);
                    var_s5 = temp_v0_2;
                    if (temp_v0_2 < 4) {
                        var_s5_2 = temp_v0_2 - 1;
                        if (temp_v0_2 != 0) {
                            var_a0_2 = temp_v0_2 & 3;
                            if (var_a0_2 != 0) {
                                do {
                                    var_s5_2 -= 1;
                                    var_s1_2 += 2;
                                    var_s0_2 += 2;
                                    var_a0_2 -= 1;
                                    var_s1_2->unk-2 = (s16) var_s0_2->unk-2;
                                } while (var_a0_2 != 0);
                            }
                            if ((temp_v0_2 >> 2) != 0) {
                                var_a6 = var_s5_2;
                                var_a5 = var_s1_2;
                                var_v0 = var_s0_2;
                                do {
                                    var_a5->unk0 = (s16) var_v0->unk0;
                                    var_a5->unk2 = (s16) var_v0->unk2;
                                    var_a5 += 8;
                                    var_a5->unk-4 = (s16) var_v0->unk4;
                                    var_v0 += 8;
                                    var_a6 -= 4;
                                    var_a5->unk-2 = (s16) var_v0->unk-2;
                                } while (var_a6 != -1);
                                var_s0_2 = var_v0;
                                var_s1_2 = var_a5;
                            }
                        }
                        var_s5 = gl_getcmdlength(var_s0_2->unk0, var_s0_2->unk4);
                    }
                    temp_a0_2 = var_s0_2->unk0;
                    var_s5_3 = var_s5 - 1;
                    if (temp_a0_2 != gl_n_tag) {
                        if (temp_a0_2 == gl_n_retsym) {
                            gl_openobjhdr->unk14 = var_s1_2;
                            gl_openobjhdr->unk18 = (s32) gl_currentend;
                        }
                    } else {
                        gl_replacehash(var_s1_2, gl_openobj, var_s0_2->unk4);
                    }
                    temp_a0_3 = var_s5_3 + 1;
                    if (var_s5_3 != -1) {
                        var_v0_2 = temp_a0_3 & 3;
                        var_a4 = temp_a0_3 >> 2;
                        if (var_v0_2 != 0) {
                            do {
                                var_s5_3 -= 1;
                                var_s1_2 += 2;
                                var_s0_2 += 2;
                                var_v0_2 -= 1;
                                var_s1_2->unk-2 = (s16) var_s0_2->unk-2;
                            } while (var_v0_2 != 0);
                            var_a4 = temp_a0_3 >> 2;
                        }
                        if (var_a4 != 0) {
                            var_a1 = var_s5_3;
                            var_v0_3 = var_s1_2;
                            var_a0_3 = var_s0_2;
                            do {
                                var_v0_3->unk0 = (s16) var_a0_3->unk0;
                                var_v0_3->unk2 = (s16) var_a0_3->unk2;
                                var_v0_3 += 8;
                                var_v0_3->unk-4 = (s16) var_a0_3->unk4;
                                var_a0_3 += 8;
                                var_a1 -= 4;
                                var_v0_3->unk-2 = (s16) var_a0_3->unk-2;
                            } while (var_a1 != -1);
                            var_s0_2 = var_a0_3;
                            var_s1_2 = var_v0_3;
                        }
                    }
                    sp0->unk4 = (s32) sp8;
                    sp0->unk0 = gl_n_jump;
                    var_s1_2->unk4 = var_s0_2;
                    var_s1_2->unk0 = gl_n_jump;
                    __GLobjinsert(arg0);
                    return;
                }
                /* Duplicate return node #32. Try simplifying control flow for better match */
                __GLeditobj(gl_openobj);
                return;
            }
            __GLeditobj(gl_openobj);
            return;
        }
        gl_ErrorHandler(0x23, 2, saved_reg_gp->unk-3940);
        return;
    }
    gl_ErrorHandler(5, 2, saved_reg_gp->unk-3940);
}
