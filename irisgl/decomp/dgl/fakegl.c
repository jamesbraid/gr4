? exit(?);                                          /* extern */
s32 select(?, s32 (*)[], ?, ?);                     /* extern */
s32 strlen(s64);                                    /* extern */
? strncpy(s64 *, s64 *, s64);                       /* extern */
extern s32 *comm_curgfile;
extern ? comm_gfiles;
extern s32 dgl_testmode;
extern ? gl_dgl_pixmodes;
extern ? sub_0f030000;

void gl_d_foreground(void) {
    *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF761C0)->unk-7F3C = 0;
}

s32 gl_d_getport(s32 arg0) {
    gl_util_background();
    return gl_dgl_getport(arg0);
}

void gl_d_winopen(s32 arg0) {
    gl_util_background();
    gl_dgl_winopen(arg0);
}

void gl_d_winope(s32 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    gl_util_background();
    gl_dgl_winope(arg0, arg1);
}

void gl_d_winset(void) {
    gl_rmt_winset();
}

void gl_d_winclose(void) {
    gl_rmt_winclose();
}

void gl_d_windepth(void) {
    gl_rmt_windepth();
}

void gl_d_swinopen(void) {
    gl_rmt_swinopen();
}

void gl_d_qtest(void) {
    s32 *temp_a5;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;

    if (comm_curgfile->unkC4 >= 0) {
        gl_comm_flush();
        memset(&sp8[0], 0, 0x80U);
        temp_t1 = comm_curgfile->unkC4;
        temp_t0 = temp_t1 >> 0x1F;
        temp_t0_2 = temp_t1 >> 0x1F;
        temp_a5 = &(&sp8[0])[(s32) (((u32) (temp_t1 >> 4) >> 0x1B) + temp_t1) >> 5];
        *temp_a5 |= 1 << (((((temp_t1 ^ temp_t0) - temp_t0) & 0x1F) ^ temp_t0_2) - temp_t0_2);
        if (select(0x14, (s32 (*)[]) &sp8[0], 0, 0) != 0) {
            return;
        }
        return;
    }
    gl_dgl_qtest();
}

void gl_d_qread(void *arg0) {
    s32 var_a0;

    if (comm_curgfile->unkC4 >= 0) {
        gl_comm_flush();
        if (comm_curgfile->unk18(comm_curgfile->unkC4, sp + 2, 1) != 1) {
            gl_comm_fatal_error(saved_reg_gp - 0x3AA0 + 0x28);
        }
        if (comm_curgfile->unk18(comm_curgfile->unkC4, sp + 3, 1) != 1) {
            gl_comm_fatal_error(saved_reg_gp - 0x3AA0 + 0x30);
        }
        if (comm_curgfile->unk18(comm_curgfile->unkC4, arg0, 1) != 1) {
            gl_comm_fatal_error(saved_reg_gp - 0x3AA0 + 0x38);
        }
        if (comm_curgfile->unk18(comm_curgfile->unkC4, arg0 + 1, 1) != 1) {
            gl_comm_fatal_error(saved_reg_gp - 0x3AA0 + 0x40);
        }
        var_a0 = subroutine_arg0;
    } else {
        var_a0 = gl_dgl_qread(arg0);
    }
    gl_d_blkqread(var_a0, arg0);
}

void gl_d_blkqread(s32 arg0, s64 arg1) {
    s16 *temp_a0;
    s32 temp_v0;
    s32 var_s2;
    s32 var_s2_2;
    s64 temp_s1;
    s64 var_s1;

    temp_s1 = (s64) (arg1 << 0x30) >> 0x30;
    if (comm_curgfile->unkC4 >= 0) {
        gl_comm_flush();
        temp_v0 = comm_curgfile->unk18(comm_curgfile->unkC4, arg0, temp_s1 * 2);
        var_s2 = temp_v0;
        if (temp_v0 & 1) {
            var_s2 += comm_curgfile->unk18(comm_curgfile->unkC4, (temp_v0 * 2) + arg0, 1);
        }
        var_s2_2 = var_s2 >> 1;
    } else {
        var_s2_2 = gl_dgl_blkqread(arg0, temp_s1);
    }
    var_s1 = 0;
    if (var_s2_2 > 0) {
        do {
            temp_a0 = (var_s1 * 2) + arg0;
            gl_d_blkqread((s32) *temp_a0, temp_a0 + 2);
            var_s1 = (s64) ((var_s1 + 2) << 0x30) >> 0x30;
        } while (var_s1 < var_s2_2);
    }
}

void dgl_fix_queue(s32 arg0, s16 *arg1, ? arg2) {
    ? var_a2;

    var_a2 = arg2;
    if (arg0 != 0x210) {
        if (arg0 != 0x21D) {
            var_a2 = 0x218;
            switch (arg0) {                         /* irregular */
            default:
                var_a2 = 0x222;
                if (arg0 != 0x21C) {
                    if (arg0 != 0x222) {
                        if ((arg0 == 0x216) && (*arg1 != 0)) {
                            goto block_13;
                        }
                    } else {
                        goto block_12;
                    }
                } else {
                    goto block_12;
                }
                break;
            case 0x21F:
                goto block_12;
            case 0x218:
                goto block_12;
            case 0x21E:
                goto block_12;
            case 0x21B:
                goto block_12;
            }
        } else {
            goto block_12;
        }
    } else {
block_12:
block_13:
        *arg1 = __GLgl_dgl_wid_from_gl(*arg1, var_a2);
    }
}

void __GLgl_dgl_wid_from_gl(s16 arg0) {

}

void gl_dgl_wid_to_gl(s64 arg0, void *arg1) {
    s64 sp0;
    s32 **temp_v0;
    s32 *var_a1;
    s32 temp_a5;

    if (dgl_testmode == 0) {
        temp_a5 = (arg0 >> 8) & 0xFF;
        if ((comm_curgfile == NULL) || (*comm_curgfile != temp_a5)) {
            if ((temp_a5 < 0x101) && (temp_v0 = (temp_a5 * 4) + &comm_gfiles, var_a1 = *temp_v0, (var_a1 != NULL))) {
                sp0 = (s64) temp_v0;
                if (comm_curgfile != NULL) {
                    gl_comm_flush(comm_curgfile, var_a1, &comm_curgfile);
                    var_a1 = *sp0;
                }
                comm_curgfile = var_a1;
            } else {
                gl_dgl_error(arg1, &sub_0f030000 - 0x7D38, arg0);
            }
        }
    }
}

s32 gettoken(u8 *arg0, u8 *arg1) {
    u8 *temp_a6;
    u8 *var_a0;
    u8 *var_a4;
    u8 temp_a3;
    u8 temp_a3_2;
    u8 var_a3;

    var_a0 = arg0;
    var_a3 = *var_a0;
    temp_a6 = var_a0;
    var_a4 = arg1;
    if (var_a3 != 0) {
        if (var_a3 == 0x7C) {
loop_2:
            var_a3 = var_a0->unk1;
            var_a0 += 1;
            if (var_a3 != 0) {
                if (var_a3 != 0x7C) {
                    goto block_4;
                }
                goto loop_2;
            }
        } else {
block_4:
            if ((var_a3 != 0) && (var_a3 != 0x7C)) {
loop_6:
                *var_a4 = var_a0->unk0;
                temp_a3 = var_a0->unk1;
                var_a4 += 1;
                var_a0 += 1;
                if ((temp_a3 != 0) && (temp_a3 != 0x7C)) {
                    *var_a4 = var_a0->unk0;
                    temp_a3_2 = var_a0->unk1;
                    var_a4 += 1;
                    var_a0 += 1;
                    if (temp_a3_2 != 0) {
                        if (temp_a3_2 != 0x7C) {
                            goto loop_6;
                        }
                    }
                }
            }
        }
    }
    *var_a4 = 0;
    if (arg1 != var_a4) {
        return var_a0 - temp_a6;
    }
    return 0;
}

void gl_d_idefpup(s64 *arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    gl_d_addtop(gl_d_newpup(), arg0, sp18, (f32 *)1);
}

void gl_d_defpup(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 sp14;

    sp18 = arg1;
    sp48 = M2C_ERROR(/* Read from unset register $a7 */);
    sp40 = M2C_ERROR(/* Read from unset register $a6 */);
    sp38 = M2C_ERROR(/* Read from unset register $a5 */);
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg3;
    sp20 = arg2;
    sp14 = arg0;
    gl_d_idefpup(&sp18);
}

void gl_d_addtopup(s32 arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 sp1C;
    s32 sp14;

    sp28 = arg3;
    sp20 = arg2;
    sp48 = M2C_ERROR(/* Read from unset register $a7 */);
    sp40 = M2C_ERROR(/* Read from unset register $a6 */);
    sp38 = M2C_ERROR(/* Read from unset register $a5 */);
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp1C = arg1;
    sp14 = arg0;
    gl_d_addtop(&sp20, (s64 *)1);
}

void gl_d_callfunc(s32 arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 sp1C;
    s32 sp14;
    void *temp_at;

    sp48 = M2C_ERROR(/* Read from unset register $a7 */);
    sp40 = M2C_ERROR(/* Read from unset register $a6 */);
    sp38 = M2C_ERROR(/* Read from unset register $a5 */);
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg3;
    sp20 = arg2;
    sp14 = arg0;
    sp1C = arg1;
    temp_at = &sub_0f030000 - 0x7E98;
    gl_dgl_error(temp_at + 0x178, temp_at + 0x188);
}

void gl_d_addtop(s64 *arg0, s64 *arg1, s64 arg2, f32 *arg3) {
    f32 *sp4C;
    s64 *temp_v0;

    sp4C = arg3;
    temp_v0 = malloc(arg2 + 1);
    strncpy(temp_v0, arg1, arg2);
    *(arg2 + temp_v0) = 0;
    gl_d_addtop(arg0, temp_v0, (s64) &sp4C, NULL);
    free(temp_v0);
}

void dgl_do_addpup(s32 arg0, s64 arg1, void *arg2, s32 arg3) {
    s64 sp160;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s32 temp_a4;
    s32 temp_at_2;
    s64 temp_v0;
    s64 var_a2;
    s64 var_s1;
    u8 temp_a3;
    u8 var_a3;
    void *temp_a3_2;
    void *temp_at;
    void *var_s3;
    void *var_s4;

    var_s1 = arg1;
    var_s3 = arg2;
    if (dgl_testmode != 0) {
        temp_v0 = (var_s3 + 7) & ~7;
        if (arg3 != 1) {
            sp160 = temp_v0;
            gl_dgl_addtop(arg0, var_s1, strlen(var_s1), temp_v0->unk4);
        } else {
            gl_dgl_addtopup(arg0, var_s1, temp_v0->unk4);
        }
    } else {
        gl_dgl_wid_to_gl(var_s1, sp);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            temp_a4 = saved_reg_gp - 0x3AA0;
            sp108 = temp_a4 + 0x50;
            sp130 = temp_a4 + 0x48;
            sp110 = (s64) sp100;
            sp120 = arg3 == 1;
            temp_at = &sub_0f030000 - 0x7E98;
            sp118 = (s64) (temp_at + 0x1B8);
            sp128 = (s64) (temp_at + 0x1A0);
loop_12:
            var_s4 = sp;
            var_a2 = 0;
            var_s1 += M2C_ERROR(/* Read from unset register $v0 */);
            if (sp0 != 0) {
                if (sp0 != 0x25) {
loop_14:
                    var_a3 = var_s4->unk1;
                    var_s4 += 1;
                    if (var_a3 != 0) {
                        if (var_a3 == 0x25) {
                            goto block_16;
                        }
                        goto loop_14;
                    }
                } else {
                    var_a3 = sp0;
                    goto block_16;
                }
            } else {
                var_a3 = sp0;
block_16:
                if (var_a3 != 0) {
loop_21:
                    if (var_s4->unk0 == 0x25) {
                        temp_a3 = var_s4->unk1;
                        switch (temp_a3) {          /* irregular */
                        case 0x46:
                        case 0x66:
                        case 0x70:
                            var_s3 = (-8 & (var_s3 + 7)) + 8;
                            gl_d_dgladdcallback(var_s3->unk-4, sp120, var_a2, temp_a3);
                            sp110 = M2C_ERROR(/* Read from unset register $v0 */);
                            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                                gl_dgl_error((void *) sp130, (void *) sp128);
                            }
                            var_a2 = 1;
                            break;
                        case 0x6D:
                            temp_a3_2 = (-8 & (s32) (var_s3 + 7)) + 8;
                            if (arg3 != 1) {
                                temp_at_2 = *temp_a3_2->unk-4;
                                var_s3 = temp_a3_2;
                                sp110 = (s64) temp_at_2;
                            } else {
                                var_s3 = temp_a3_2;
                                sp110 = (s64) temp_a3_2->unk-4;
                            }
                            var_a2 = 1;
                            break;
                        }
                    }
                    var_s4 += 1;
                    if (var_s4->unk1 != 0) {
                        goto loop_21;
                    }
                }
            }
            if (var_a2 != 0) {
                if (var_a2 != 1) {
                    gl_dgl_error((void *) sp108, (void *) sp118, var_a2);
                } else {
                    gl_dgl_addtopup(arg0, (s64) sp, (s32) sp110);
                }
            } else {
                gl_dgl_addtopup(arg0, (s64) sp, 0);
            }
            gl_dgl_wid_to_gl(var_s1, sp);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                goto loop_12;
            }
        }
    }
}

void prop_lookup(s32 arg0, s32 *arg1) {
    s32 *var_a1;
    s32 var_a3;

    var_a1 = arg1;
    var_a3 = *var_a1;
    if (var_a3 != 0) {
loop_1:
        if (var_a3 != arg0) {
            var_a3 = var_a1->unk8;
            var_a1 += 8;
            if (var_a3 == 0) {

            } else {
                goto loop_1;
            }
        }
    }
}

void gl_d_lmdef(s64 arg0, s64 arg1, s64 arg2, f32 *arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_a0;
    f32 *var_a0;
    f32 *var_a0_2;
    f32 *var_s0;
    f32 temp_f5;
    f32 var_f4;
    s64 var_a6;
    s64 var_ra;
    s64 var_v0;

    var_ra = saved_reg_ra;
    var_v0 = (s64) (arg2 << 0x30) >> 0x30;
    var_a6 = (s64) (arg1 << 0x30) >> 0x30;
    var_s0 = arg3;
    if (arg3 == NULL) {
        var_s0 = saved_reg_gp - 0x3AA0;
        var_v0 = 1;
    } else if (var_v0 == 0) {
        var_a0 = var_s0;
        if (dgl_testmode == 0) {
            temp_f5 = *var_s0;
            var_f4 = temp_f5;
            if ((f64) temp_f5 != (second half of f64)) {
                sp30 = var_a6;
                sp0 = (s64) var_a0;
                sp8 = saved_reg_gp - 0x3A48;
                sp10 = (s64) (&sub_0f030000 - 0x7E98 + 0x1D8);
                do {
                    sp30 = var_a6;
                    sp0 = (s64) var_a0;
                    gl_d_addtop((s64 *) (s32) var_f4, &sub_0f030000 - 0x7E98);
                    var_a0_2 = var_a0;
                    if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
                        gl_dgl_error((void *) sp8, (void *) sp10);
                        var_a0_2 = (f32 *) sp0;
                        var_a6 = sp30;
                    }
                    temp_a0 = &var_a0_2[M2C_ERROR(/* Read from unset register $v0 */)];
                    var_a0 = temp_a0 + 4;
                    var_f4 = temp_a0->unk4;
                } while ((f64) var_f4 != GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U));
                var_ra = sp38;
            }
            sp38 = var_ra;
            var_v0 = (s64) ((((s32) (var_a0 - var_s0) >> 2) + 1) << 0x30) >> 0x30;
        }
    }
    sp38 = var_ra;
    gl_dgl_lmdef((s64) (arg0 << 0x30) >> 0x30, var_a6, var_v0, var_s0);
}

void gl_d_tevdef(s32 arg0, s32 arg1, f32 *arg2, s32 arg3) {
    s64 sp38;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_a0;
    f32 *var_a0;
    f32 *var_a0_2;
    f32 *var_s0;
    f32 temp_f5;
    f32 var_f4;
    s32 temp_a3;
    s32 var_a1;
    s32 var_a3;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_a3 = arg3;
    var_s0 = arg2;
    if (arg2 == NULL) {
        var_s0 = saved_reg_gp - 0x3A98;
        var_a1 = 1;
    } else {
        var_a3 = (s32) &sub_0f030000;
        if (var_a1 == 0) {
            var_a0 = var_s0;
            if (dgl_testmode == 0) {
                temp_f5 = *var_s0;
                var_f4 = temp_f5;
                if ((f64) temp_f5 != (second half of f64)) {
                    sp0 = (s64) var_a0;
                    sp8 = saved_reg_gp - 0x3A40;
                    temp_a3 = (s32) &sub_0f030000 - 0x7E98;
                    sp10 = temp_a3 + 0x1F8;
                    sp18 = temp_a3 + 0x80;
                    do {
                        sp0 = (s64) var_a0;
                        gl_d_addtop((s64 *) (s32) var_f4, (s64 *) sp18);
                        var_a0_2 = var_a0;
                        if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
                            gl_dgl_error((void *) sp8, (void *) sp10, sp0);
                            var_a0_2 = (f32 *) sp0;
                        }
                        var_a3 = M2C_ERROR(/* Read from unset register $v0 */) * 4;
                        temp_a0 = &var_a0_2[M2C_ERROR(/* Read from unset register $v0 */)];
                        var_a0 = temp_a0 + 4;
                        var_f4 = temp_a0->unk4;
                    } while ((f64) var_f4 != GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U));
                    var_ra = sp38;
                }
                sp38 = var_ra;
                var_a1 = ((s32) (var_a0 - var_s0) >> 2) + 1;
            }
        }
    }
    sp38 = var_ra;
    gl_dgl_tevdef(arg0, var_a1, var_s0, var_a3);
}

void gl_d_texdef2d(s64 arg0, s64 arg1, ? arg2, ? arg3) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_s0;
    f32 *var_a2;
    f32 *var_a2_2;
    f32 temp_f5;
    f32 var_f4;
    s64 var_a0;
    s64 var_a1;
    s64 var_ra;
    void *temp_a2;
    void *temp_a7;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a1 = arg1;
    temp_s0 = M2C_ERROR(/* Read from unset register $a6 */);
    if (M2C_ERROR(/* Read from unset register $a6 */) == 0) {

    } else if (M2C_ERROR(/* Read from unset register $a5 */) == 0) {
        var_a2 = temp_s0;
        if (dgl_testmode == 0) {
            temp_f5 = *temp_s0;
            var_f4 = temp_f5;
            if ((f64) temp_f5 != (second half of f64)) {
                sp50 = var_a0;
                sp48 = var_a1;
                sp0 = (s64) var_a2;
                temp_a7 = &sub_0f030000 - 0x7E98;
                sp10 = (s64) (temp_a7 + 0x228);
                sp8 = (s64) (temp_a7 + 0x218);
                sp18 = (s64) (temp_a7 + 0xC0);
                do {
                    sp0 = (s64) var_a2;
                    sp48 = var_a1;
                    sp50 = var_a0;
                    gl_d_addtop((s64 *) (s32) var_f4, (s64 *) sp18, (s64) var_a2);
                    var_a2_2 = var_a2;
                    if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
                        gl_dgl_error((void *) sp8, (void *) sp10, (s64) var_a2_2);
                        var_a2_2 = (f32 *) sp0;
                        var_a1 = sp48;
                        var_a0 = sp50;
                    }
                    temp_a2 = (M2C_ERROR(/* Read from unset register $v0 */) * 4) + var_a2_2;
                    var_a2 = temp_a2 + 4;
                    var_f4 = temp_a2->unk4;
                } while ((f64) var_f4 != GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U));
                var_ra = sp58;
            }
            sp58 = var_ra;
        }
    }
    sp58 = var_ra;
    gl_dgl_texdef2d(var_a0, var_a1, arg2, arg3);
}

void gl_d_texdef3d(s64 arg0, s64 arg1, s64 arg2, ? arg3) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_s0;
    f32 *var_a3;
    f32 *var_a3_2;
    f32 temp_f5;
    f32 var_f4;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_ra;
    void *temp_a3;
    void *temp_t0;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    temp_s0 = M2C_ERROR(/* Read from unset register $a7 */);
    if (M2C_ERROR(/* Read from unset register $a7 */) == 0) {

    } else if (M2C_ERROR(/* Read from unset register $a6 */) == 0) {
        var_a3 = temp_s0;
        if (dgl_testmode == 0) {
            temp_f5 = *temp_s0;
            var_f4 = temp_f5;
            if ((f64) temp_f5 != (second half of f64)) {
                sp58 = var_a0;
                sp50 = var_a1;
                sp48 = var_a2;
                sp0 = (s64) var_a3;
                temp_t0 = &sub_0f030000 - 0x7E98;
                sp10 = (s64) (temp_t0 + 0x258);
                sp8 = (s64) (temp_t0 + 0x248);
                sp18 = (s64) (temp_t0 + 0xC0);
                do {
                    sp48 = var_a2;
                    sp0 = (s64) var_a3;
                    sp50 = var_a1;
                    sp58 = var_a0;
                    gl_d_addtop((s64 *) (s32) var_f4, (s64 *) sp18, var_a2, var_a3);
                    var_a3_2 = var_a3;
                    if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
                        gl_dgl_error((void *) sp8, (void *) sp10, var_a2, (s64) var_a3_2);
                        var_a3_2 = (f32 *) sp0;
                        var_a2 = sp48;
                        var_a1 = sp50;
                        var_a0 = sp58;
                    }
                    temp_a3 = (M2C_ERROR(/* Read from unset register $v0 */) * 4) + var_a3_2;
                    var_a3 = temp_a3 + 4;
                    var_f4 = temp_a3->unk4;
                } while ((f64) var_f4 != GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U));
                var_ra = sp60;
            }
            sp60 = var_ra;
        }
    }
    sp60 = var_ra;
    gl_dgl_texdef3d(var_a0, var_a1, var_a2, arg3);
}

void gl_d_tlutdef(s64 arg0, s64 arg1, ? arg2, ? arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_s0;
    f32 *var_a2;
    f32 *var_a2_2;
    f32 temp_f5;
    f32 var_f4;
    s64 var_a0;
    s64 var_a1;
    s64 var_ra;
    void *temp_a2;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a1 = arg1;
    temp_s0 = M2C_ERROR(/* Read from unset register $a5 */);
    if (M2C_ERROR(/* Read from unset register $a5 */) == 0) {

    } else if (M2C_ERROR(/* Read from unset register $a4 */) == 0) {
        var_a2 = temp_s0;
        if (dgl_testmode == 0) {
            temp_f5 = *temp_s0;
            if ((f64) temp_f5 != (second half of f64)) {
                var_f4 = temp_f5;
                sp40 = var_a0;
                sp38 = var_a1;
                sp0 = (s64) var_a2;
                sp8 = saved_reg_gp - 0x3A38;
                sp10 = (s64) (&sub_0f030000 - 0x7C20);
                do {
                    sp0 = (s64) var_a2;
                    sp38 = var_a1;
                    sp40 = var_a0;
                    gl_d_addtop((s64 *) (s32) var_f4, saved_reg_gp - 0x5148, (s64) var_a2);
                    var_a2_2 = var_a2;
                    if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
                        gl_dgl_error((void *) sp8, (void *) sp10, (s64) var_a2_2);
                        var_a2_2 = (f32 *) sp0;
                        var_a1 = sp38;
                        var_a0 = sp40;
                    }
                    temp_a2 = (M2C_ERROR(/* Read from unset register $v0 */) * 4) + var_a2_2;
                    var_a2 = temp_a2 + 4;
                    var_f4 = temp_a2->unk4;
                } while ((f64) var_f4 != GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U));
                var_ra = sp48;
            }
            sp48 = var_ra;
        }
    }
    sp48 = var_ra;
    gl_dgl_tlutdef(var_a0, var_a1, arg2, arg3);
}

s32 gl_d_qgetfd(void) {
    s64 sp0;
    s32 var_v0;

    var_v0 = comm_curgfile->unkC4;
    if (var_v0 < 0) {
        sp0 = gl_d_dglgetqport();
        gl_d_dglacceptqsocket();
        gl_comm_flush();
        if (gl_socket_queue_init(comm_curgfile, sp0 & 0xFFFF) != 0) {
            gl_dgl_error(saved_reg_gp - 0x3A30, &sub_0f030000 - 0x7C00);
            gl_comm_close(0);
            exit(1);
        }
        var_v0 = comm_curgfile->unkC4;
    }
    return var_v0;
}

void gl_d_endfeedback(void) {
    if (comm_curgfile->unk190 != 0) {
        gl_d_dglendfeedbackf();
        return;
    }
    gl_d_dglendfeedbacks();
}

void gl_d_feedback(void) {
    if (comm_curgfile->unk190 != 0) {
        gl_d_dglfeedbackf();
    } else {
        gl_d_dglfeedbacks();
    }
}

void gl_d_lrectread(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;

    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    sp20 = (s64) (arg3 << 0x30) >> 0x30;
    sp28 = (s64) (arg2 << 0x30) >> 0x30;
    sp30 = (s64) (arg1 << 0x30) >> 0x30;
    gl_d_gl_pixmode_misc(0xBBA, &gl_dgl_pixmodes);
    gl_dgl_lrectread((s64) (arg0 << 0x30) >> 0x30, sp30, sp28, sp20);
}

void gl_d_lrectwrite(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;

    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    sp20 = (s64) (arg3 << 0x30) >> 0x30;
    sp28 = (s64) (arg2 << 0x30) >> 0x30;
    sp30 = (s64) (arg1 << 0x30) >> 0x30;
    gl_d_gl_pixmode_misc(0xBBA, &gl_dgl_pixmodes);
    gl_dgl_lrectwrite((s64) (arg0 << 0x30) >> 0x30, sp30, sp28, sp20);
}

void gl_d_gl_lrectproc(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;

    sp18 = M2C_ERROR(/* Read from unset register $a5 */);
    sp20 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg3;
    sp30 = arg2;
    sp38 = arg1;
    gl_d_gl_pixmode_misc(0xBBA, &gl_dgl_pixmodes);
    gl_dgl_gl_lrectproc(arg0, arg1, arg2, arg3);
}

void gl_g_gl_pixmode_misc(s32 arg0, void *arg1) {
    s32 temp_a2;
    void *temp_a4;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF74A98;
    temp_a4 = *temp_at->unk-5B00;
    if (arg0 != 0xBB8) {
        if (arg0 != 0xBB9) {
            if (arg0 == 0xBBA) {
                arg1->unk0 = (s32) (temp_a4->unk2E2C * 0x10001);
                arg1->unk4 = (s32) temp_a4->unk2E34;
                arg1->unk8 = (s32) temp_a4->unk2E30;
                return;
            }
            return;
        }
        temp_a4->unk2E34 = (s32) temp_at->unk-5140;
        return;
    }
    temp_a2 = temp_a4->unk2E34;
    temp_a4->unk2E34 = 0;
    temp_at->unk-5140 = temp_a2;
}

void gl_dgl_alen(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    MULT_HI(((((s64) (arg1 << 0x30) >> 0x30) - ((s64) (arg0 << 0x30) >> 0x30)) + 1), ((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF74A20)->unk-7E3C->unk0 & 0xFFFF));
}
