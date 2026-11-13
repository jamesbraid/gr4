s32 atoi(s64);                                      /* extern */
? bcopy(s32 *, s32 *, ?);                           /* extern */
? exit(s32);                                        /* extern */
s32 *realloc(s32 *, u32, u32, s32 *);               /* extern */
? sprintf(? *, s32, f64, s32);                      /* extern */
s32 strchr(s64, ?, s64);                            /* extern */
extern s32 __libc_attr;
extern ? close;
extern s32 *comm_buffer;
extern ? (**comm_curbufpos)(?);
extern s32 *comm_curgfile;
extern void *comm_endbuffer;
extern s32 comm_error_gfile;
extern ? comm_gfiles;
extern s32 *comm_save_buffer;
extern u32 comm_save_bufsize;
extern ? (**comm_save_curbufpos)(?);
extern void *comm_save_endbuffer;
extern s32 comm_save_flag;
extern s32 comm_sizeset;
extern s32 comm_staticbuff;
extern u32 comm_stdsize;
extern s32 *dgl_errors;
extern s32 errno;
extern ? read;
extern ? sub_0f020000;
extern ? write;

void gl_comm_default_init(void) {
    ? sp204;
    s32 sp200;
    s32 **temp_v0_2;
    s32 **var_s1;
    s32 **var_v0;
    s32 temp_s2;
    s32 temp_v0_3;
    s8 *temp_v0;
    void *temp_a0;
    void *temp_a0_2;

    gl_util_init();
    temp_s2 = gl_dgl_default_display(sp);
    temp_v0 = getenv(saved_reg_gp - 0x3C50);
    if (temp_v0 == NULL) {
        var_v0 = (s32 **)5;
        if (temp_s2 != 0) {
            var_v0 = (s32 **)4;
        }
        var_s1 = var_v0;
    } else {
        temp_v0_2 = gl_util_nametoi(temp_v0);
        var_s1 = temp_v0_2;
        if ((temp_s2 == 0) && (temp_v0_2 == (s32 **)1)) {
            var_s1 = (s32 **)5;
        }
    }
    gl_dgl_info(1, &sub_0f020000 + 0x7330 + 0x1B0, sp, var_s1);
    gl_parse_hostname(sp, &sp200, &sp204);
    temp_v0_3 = __GLdglopen(sp, var_s1);
    if (temp_v0_3 < 0) {
        if (temp_v0_3 == -0x22) {
            temp_a0 = &sub_0f020000 + 0x7330;
            gl_dgl_error(temp_a0 + 0x1D8, temp_a0 + 0x1E8, sp);
        } else {
            temp_a0_2 = &sub_0f020000 + 0x7330;
            gl_dgl_error(temp_a0_2 + 0x208, temp_a0_2 + 0x218, sp, var_s1);
        }
        exit(temp_v0_3);
    }
}

s32 gl_comm_get_bufsize(void) {
    s64 sp8;
    s32 *temp_v0_2;
    s32 *var_a1;
    s64 var_ra;
    s8 *temp_v0;
    s8 *var_a0;
    u32 temp_a2;
    u32 temp_a4;
    u32 var_a2;
    u8 var_v0_2;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a2 = comm_stdsize;
    if (comm_sizeset == 0) {
        comm_stdsize = 0;
        temp_v0 = getenv(&sub_0f020000 + 0x7330 + 0x240);
        var_a0 = temp_v0;
        var_ra = sp8;
        if (temp_v0 != NULL) {
            if ((u8) *temp_v0 != 0) {
                var_v0_2 = (u8) *var_a0;
                var_a2 = comm_stdsize;
loop_13:
                if (!(((var_v0_2 * 4) + __libc_attr)->unk4 & 4)) {
                    switch (var_v0_2) {             /* irregular */
                    case 0x4D:
                        /* fallthrough */
                    case 0x6D:
                        var_a2 <<= 0x14;
                        comm_stdsize = var_a2;
                        break;
                    case 0x6B:
                    case 0x4B:
                        var_a2 <<= 0xA;
                        comm_stdsize = var_a2;
                        break;
                    }
                } else {
                    temp_a4 = var_a2 * 0xA;
                    comm_stdsize = temp_a4;
                    var_a2 = ((u8) var_a0->unk0 + temp_a4) - 0x30;
                    comm_stdsize = var_a2;
                    var_v0_2 = var_a0->unk1;
                    var_a0 += 1;
                    if (var_v0_2 != 0) {
                        goto loop_13;
                    }
                }
            } else {
                var_a2 = comm_stdsize;
            }
        } else {
            var_a2 = comm_stdsize;
        }
    }
    if (var_a2 == 0) {
        sp8 = var_ra;
        var_a2 = 0x1000;
        comm_stdsize = 0x1000;
    }
    sp8 = var_ra;
    var_v0 = gl_dgl_info(1, &sub_0f020000 + 0x7330 + 0x250, (s32 *) var_a2);
    temp_a2 = comm_stdsize;
    if (temp_a2 != 0x1000) {
        temp_v0_2 = malloc(temp_a2);
        var_a1 = temp_v0_2;
        comm_buffer = temp_v0_2;
        if (temp_v0_2 == NULL) {
            gl_dgl_error(saved_reg_gp - 0x3C48, &sub_0f020000 + 0x7330 + 0x270, saved_reg_gp->unk-5194, &comm_buffer);
            exit(0xC);
            var_a1 = comm_buffer;
        }
        bcopy(&comm_staticbuff, var_a1, 0x1000);
        var_v0 = (comm_stdsize + comm_buffer) - 0x18;
        comm_endbuffer = var_v0;
        comm_curbufpos = (comm_curbufpos - &comm_staticbuff) + comm_buffer;
    }
    saved_reg_gp->unk-5194 = (s32 *) temp_a2;
    return (s32) var_v0;
}

void gl_comm_io(s32 (*arg0)(s32, s32 *, s32), s32 arg1, s32 *arg2, s32 arg3) {
    s32 *var_s2;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s4;
    s32 var_v1;

    var_s2 = arg2;
    var_s0 = 0;
    if (arg3 > 0) {
loop_4:
        var_s4 = 0;
        temp_v0 = arg0(arg1, var_s2, arg3 - var_s0);
        if (temp_v0 >= 0) {
            if (temp_v0 == 0) {
                return;
            }
            goto block_8;
        }
        var_s4 = 1;
        if (errno != 4) {
            return;
        }
block_8:
        var_v1 = var_s0 < arg3;
        if (var_s4 == 0) {
            var_s2 += temp_v0;
            var_s0 += temp_v0;
            var_v1 = var_s0 < arg3;
        }
        if (var_v1 != 0) {
            goto loop_4;
        }
    }
}

void gl_comm_new_gfile(void) {
    s32 var_s7;
    void **var_s5;
    void *temp_v0;

    var_s7 = 1;
    var_s5 = &comm_gfiles + 4;
loop_1:
    if (*var_s5 != NULL) {
        var_s7 += 1;
        var_s5 += 4;
        if (var_s7 == 0x101) {
            return;
        }
        goto loop_1;
    }
    temp_v0 = malloc(0x19CU);
    temp_v0->unk194 = 0;
    temp_v0->unkC8 = 0;
    temp_v0->unk74 = 0;
    temp_v0->unk24 = 0;
    temp_v0->unkC4 = -1;
    temp_v0->unk14 = -1;
    temp_v0->unk10 = -1;
    temp_v0->unkC = -1;
    temp_v0->unk4 = -1;
    temp_v0->unk0 = var_s7;
    temp_v0->unk8 = 0x37777770;
    temp_v0->unk20 = &close;
    temp_v0->unk1C = &write;
    temp_v0->unk18 = &read;
    *var_s5 = temp_v0;
}

void gl_comm_local_gfile(void) {
    s32 var_a3;
    s32 var_a4;
    void **var_a2;
    void *temp_a4;

    var_a3 = 1;
    var_a2 = &comm_gfiles + 4;
loop_4:
    temp_a4 = *var_a2;
    if ((temp_a4 != NULL) && (var_a4 = 1, (temp_a4->unk4 == 1))) {

    } else {
        var_a4 = 0;
    }
    var_a2 += 4;
    if (var_a4 == 0) {
        var_a3 += 1;
        if (var_a2 != (&comm_gfiles + 0x404)) {
            goto loop_4;
        }
    }
    if (var_a3 >= 0x101) {
        gl_comm_new_gfile(var_a2, var_a3);
        M2C_ERROR(/* Read from unset register $v0 */)->unk4 = 1;
    }
}

void gl_comm_free_gfile(s32 *arg0) {
    *((*arg0 * 4) + &comm_gfiles) = 0;
    free(arg0);
}

void gl_comm_close(s32 arg0) {
    f64 spD0;
    ? sp68;
    f64 temp_f28;
    s32 **var_s0;
    s32 *temp_a0;
    s32 *var_s1;
    s32 temp_a3;
    s32 temp_s5;
    void *temp_gp;
    void *temp_s0;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF93764;
    var_s1 = NULL;
    var_s0 = &comm_gfiles + 4;
loop_3:
    temp_a0 = *var_s0;
    var_s0 += 4;
    if ((temp_a0 != NULL) && (temp_a0->unk4 != 1)) {
        gl_comm_close_gfile(temp_a0, arg0);
        var_s1 += M2C_ERROR(/* Read from unset register $v0 */);
    }
    if (var_s0 != (&comm_gfiles + 0x404)) {
        goto loop_3;
    }
    temp_s0 = &sub_0f020000 + 0x7330;
    gl_dgl_info(1, temp_s0 + 0x298, dgl_errors);
    gl_dgl_info(1, temp_s0 + 0x2B8, var_s1);
    temp_s5 = temp_gp - 0x3C50;
    if (gl_dgl_info(1, temp_s5 + 0x10) != 0) {
        spD0 = (bitwise f64) gl_util_timer(1);
        __GLgl_dgl_printf(temp_s0 + 0x2D8);
        __GLgl_dgl_printf(temp_s0 + 0x2F8);
        __GLgl_dgl_printf(temp_s0 + 0x318);
        temp_a3 = temp_gp->unk-519C;
        temp_f28 = (f64) spD0;
        sprintf(sp, temp_s5 + 0x18, (f64) (f32) temp_a3 / temp_f28, temp_a3);
        sprintf(&sp68, temp_s5 + 0x20, (f64) (f32) temp_gp->unk-51A0 / temp_f28);
        __GLgl_dgl_printf(temp_s0 + 0x338, temp_gp->unk-519C, sp, temp_gp->unk-51A0);
        sprintf(sp, temp_s5 + 0x28, (f64) (f32) temp_gp->unk-51BC / temp_f28);
        sprintf(&sp68, temp_s5 + 0x30, (f64) (f32) temp_gp->unk-51C0 / temp_f28);
        __GLgl_dgl_printf(temp_s0 + 0x360, temp_gp->unk-51BC, sp, temp_gp->unk-51C0);
        sprintf(sp, temp_s5 + 0x38, (f64) (f32) temp_gp->unk-51B4 / temp_f28);
        sprintf(&sp68, temp_s5 + 0x40, (f64) (f32) temp_gp->unk-51B8 / temp_f28);
        __GLgl_dgl_printf(temp_s0 + 0x388, temp_gp->unk-51B4, sp, temp_gp->unk-51B8);
        sprintf(sp, temp_s5 + 0x48, (f64) (f32) temp_gp->unk-51A4 / temp_f28);
        sprintf(&sp68, temp_s5 + 0x50, (f64) (f32) temp_gp->unk-51A8 / temp_f28);
        __GLgl_dgl_printf(temp_s0 + 0x3B0, temp_gp->unk-51A4, sp, temp_gp->unk-51A8);
        sprintf(sp, temp_s5 + 0x58, (f64) (f32) temp_gp->unk-51AC / temp_f28);
        sprintf(&sp68, temp_s5 + 0x60, (f64) (f32) temp_gp->unk-51B0 / temp_f28);
        __GLgl_dgl_printf(temp_s0 + 0x3D8, temp_gp->unk-51AC, sp, temp_gp->unk-51B0);
        sprintf(sp, temp_s5 + 0x68, (f64) (f32) temp_gp->unk-5198 / temp_f28);
        __GLgl_dgl_printf(temp_s0 + 0x400, temp_gp->unk-5198, sp);
        __GLgl_dgl_printf(temp_s0 + 0x420, temp_gp->unk-5194);
    }
    if ((comm_buffer != &comm_staticbuff) && (comm_buffer != NULL)) {
        free(comm_buffer);
    }
    temp_gp->unk-5194 = 0x1000;
    comm_buffer = &comm_staticbuff;
    comm_curbufpos = (? (**)(?)) (&comm_staticbuff + 4);
    comm_endbuffer = (comm_stdsize + &comm_staticbuff) - 0x18;
}

void gl_comm_close_gfile(s32 *arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    *((arg0->unk0 * 4) + &comm_gfiles) = 0;
    if ((comm_curgfile != NULL) && (arg1 != 0)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    sp18 = var_ra;
    comm_curgfile = arg0;
    if (arg1 != 0) {
        gl_d_dglexit();
    }
    arg0->unk20(arg0->unkC);
    arg0->unk20(arg0->unk10);
    temp_a0 = arg0->unkC4;
    if (temp_a0 >= 0) {
        arg0->unk20(temp_a0);
    }
    gl_comm_free_gfile(arg0);
    comm_curgfile = &comm_error_gfile;
}

void gl_comm_makeroom(s32 arg0, s32 arg1) {
    s64 sp0;
    s32 temp_a5_2;
    s32 temp_v0;
    void *temp_a5;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9325C;
    temp_v0 = temp_gp->unk-5194;
    temp_a5 = temp_v0 + comm_buffer;
    temp_a5_2 = (arg0 - (temp_a5 - arg1)) + 0x18;
    comm_endbuffer = temp_a5 - 0x18;
    if (temp_a5_2 <= 0) {
        return;
    }
    sp0 = (s64) comm_buffer;
    gl_comm_makeroom(temp_a5_2 + temp_v0);
    comm_curbufpos = (comm_buffer - sp0) + arg1;
    comm_endbuffer = (temp_gp->unk-5194 + comm_buffer) - 0x18;
}

void comm_check_bufsize(s32 arg0) {
    s32 *temp_v0;
    s32 *var_v0;
    s32 temp_a1;
    s32 var_a1;

    temp_a1 = saved_reg_gp->unk-5194;
    if (temp_a1 < arg0) {
        var_a1 = comm_stdsize + temp_a1;
        if (var_a1 < arg0) {
            var_a1 = arg0;
            saved_reg_gp->unk-5194 = arg0;
        } else {
            saved_reg_gp->unk-5194 = var_a1;
        }
        saved_reg_gp->unk-51A0 = (s32) (saved_reg_gp->unk-51A0 + 1);
        if (comm_buffer == &comm_staticbuff) {
            temp_v0 = malloc((u32) var_a1);
            comm_buffer = temp_v0;
            if (temp_v0 != NULL) {
                bcopy(&comm_staticbuff, temp_v0, 0x1000);
            }
            var_v0 = comm_buffer;
        } else {
            var_v0 = realloc(comm_buffer, (u32) var_a1, comm_stdsize, &comm_staticbuff);
            comm_buffer = var_v0;
        }
        if (var_v0 == NULL) {
            gl_dgl_error(saved_reg_gp - 0x3BE0, &sub_0f020000 + 0x7770, (s32 *) saved_reg_gp->unk-5194);
            gl_comm_close(0);
            exit(0xC);
        }
    }
}

void gl_comm_flush(void) {
    s64 sp28;
    s64 sp8;
    s32 *var_s0;
    s32 *var_s1;
    s32 *var_s3;
    s32 temp_a5;
    s32 temp_s2;
    s32 temp_s5;
    s64 var_ra;
    void *var_s2;

    var_ra = saved_reg_ra;
    var_s3 = comm_curgfile;
    var_s0 = comm_buffer;
    if (var_s3 == NULL) {
        gl_comm_default_init(&comm_buffer);
        var_s3 = M2C_ERROR(/* Read from unset register $v0 */);
        var_ra = sp28;
    }
    if (var_s3->unk4 != 1) {
        *comm_curbufpos = NULL;
        temp_a5 = comm_curbufpos - var_s0;
        var_s1 = temp_a5 + 4;
        if (temp_a5 != 4) {
            sp28 = var_ra;
            comm_curbufpos = (? (**)(?)) (comm_buffer + 4);
            comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
            temp_s2 = var_s3->unk8;
            gl_dgl_info(6, &sub_0f020000 + 0x7790, var_s1, &comm_buffer);
            if (temp_s2 >= (s32) var_s1) {
                var_s2 = saved_reg_gp - 0x3C50;
            } else {
                temp_s5 = saved_reg_gp - 0x3C50;
                sp8 = temp_s5 + 0x80;
loop_11:
                *var_s0 = temp_s2 - 4;
                saved_reg_gp->unk-51A4 = (s32) (saved_reg_gp->unk-51A4 + 1);
                gl_dgl_info_more(6, temp_s5 + 0x78, temp_s2);
                gl_comm_io(var_s3->unk1C, var_s3->unk10, var_s0, temp_s2);
                if (M2C_ERROR(/* Read from unset register $v0 */) != temp_s2) {
                    gl_comm_fatal_error(sp8);
                }
                var_s1 = (var_s1 - temp_s2) + 4;
                var_s0 = (temp_s2 + var_s0) - 4;
                saved_reg_gp->unk-51AC = (void *) (saved_reg_gp->unk-51AC + temp_s2);
                saved_reg_gp->unk-51B4 = (s32) (saved_reg_gp->unk-51B4 + 1);
                if (temp_s2 < (s32) var_s1) {
                    goto loop_11;
                }
                var_s2 = saved_reg_gp - 0x3C50;
            }
            *var_s0 = (s32) (var_s1 - 4) | 0x10000000;
            saved_reg_gp->unk-51A4 = (s32) (saved_reg_gp->unk-51A4 + 1);
            gl_dgl_info_more(6, var_s2 + 0x88, (s32) var_s1, 0x10000000);
            gl_comm_io(var_s3->unk1C, var_s3->unk10, var_s0, (s32) var_s1);
            if (M2C_ERROR(/* Read from unset register $v0 */) != var_s1) {
                gl_comm_fatal_error((s64) (var_s2 + 0x90));
            }
            saved_reg_gp->unk-51AC = (void *) (saved_reg_gp->unk-51AC + var_s1);
            saved_reg_gp->unk-51BC = (s32) (saved_reg_gp->unk-51BC + 1);
        }
    }
}

void gl_comm_callback(void) {
    ? (**var_a0)(?);
    ? *(*temp_t9)(? *);
    s32 temp_a3;

loop_4:
    gl_comm_read_data(0);
    if (*comm_buffer != 0) {
        var_a0 = comm_curbufpos->unk8;
        temp_t9 = comm_curbufpos->unk0;
        temp_a3 = comm_curbufpos->unk4;
        switch (temp_a3) {                          /* irregular */
        case 0:
            var_a0 = temp_t9(sp);
            break;
        case 2:
            var_a0 = temp_t9(comm_curbufpos + 0xC);
            break;
        case 1:
            var_a0 = temp_t9(var_a0);
            break;
        }
        gl_d_dglreturncallback(var_a0);
        goto loop_4;
    }
}

void comm_fillbuffer(s32 *arg0, s32 arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_s2;
    s32 *var_s1;
    s32 temp_s4;
    s32 temp_v1;
    s32 var_a3;
    s32 var_s0;

    var_s1 = arg0;
    var_s0 = arg1;
    temp_s2 = comm_curgfile;
    if (arg1 > 0) {
        sp10 = (s64) (&sub_0f020000 + 0x77B0);
        temp_v1 = saved_reg_gp - 0x3C50;
        sp8 = temp_v1 + 0xA0;
        sp0 = temp_v1 + 0x98;
        var_a3 = var_s0;
        do {
            saved_reg_gp->unk-51A8 = (s32) (saved_reg_gp->unk-51A8 + 1);
            gl_comm_io(temp_s2->unk18, temp_s2->unkC, var_s1, var_a3);
            temp_s4 = M2C_ERROR(/* Read from unset register $v0 */);
            if (M2C_ERROR(/* Read from unset register $v0 */) < 0) {
                gl_comm_fatal_error(sp0);
            }
            var_s0 -= temp_s4;
            var_s1 += temp_s4;
            saved_reg_gp->unk-51B0 = (s32) (saved_reg_gp->unk-51B0 + temp_s4);
            if (temp_s4 == 0) {
                gl_dgl_info(1, (void *) sp8, (s32 *) sp10);
                gl_comm_close(0);
                exit(5);
            }
            var_a3 = var_s0;
        } while (var_s0 > 0);
    }
}

void gl_comm_read_data(s32 arg0) {
    s64 sp20;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 var_s0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (comm_curgfile == NULL) {
        gl_comm_default_init();
        var_ra = sp20;
    }
    sp20 = var_ra;
    saved_reg_gp->unk-5198 = (s32) (saved_reg_gp->unk-5198 + 1);
    if (arg0 != 0) {
        gl_d_dglreturndata();
    }
    gl_comm_flush();
    var_s0 = 0;
loop_4:
    gl_comm_callback(comm_buffer, 4);
    temp_s3 = *comm_buffer;
    temp_s4 = temp_s3 & 0xEFFFFFFF;
    temp_s5 = temp_s4 + var_s0;
    gl_comm_makeroom(temp_s5 + 4);
    gl_comm_callback(comm_buffer + var_s0 + 4, temp_s4);
    var_s0 = temp_s5;
    if (!(temp_s3 & 0x10000000)) {
        saved_reg_gp->unk-51B8 = (s32) (saved_reg_gp->unk-51B8 + 1);
        goto loop_4;
    }
    *comm_buffer = var_s0;
    saved_reg_gp->unk-51C0 = (s32) (saved_reg_gp->unk-51C0 + 1);
    comm_curbufpos = (? (**)(?)) (comm_buffer + 4);
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
}

void gl_comm_pushbuffer(void) {
    s32 *temp_v0;
    s32 temp_a3;
    u32 temp_a1;

    temp_a3 = comm_save_flag;
    if (temp_a3 != 0) {
        gl_dgl_internal_error(&sub_0f020000 + 0x77C0, &comm_save_flag, temp_a3);
    }
    temp_a1 = saved_reg_gp->unk-5194;
    saved_reg_gp->unk-5194 = (u32) comm_stdsize;
    comm_save_flag = temp_a3 + 1;
    comm_save_curbufpos = comm_curbufpos;
    comm_save_bufsize = temp_a1;
    comm_save_endbuffer = comm_endbuffer;
    comm_save_buffer = comm_buffer;
    temp_v0 = malloc(comm_stdsize);
    comm_buffer = temp_v0;
    comm_endbuffer = (comm_stdsize + temp_v0) - 0x18;
    comm_curbufpos = (? (**)(?)) (temp_v0 + 4);
}

void gl_comm_popbuffer(void) {
    s32 temp_at;

    temp_at = comm_save_flag - 1;
    comm_save_flag = temp_at;
    if (temp_at != 0) {
        gl_dgl_internal_error(&sub_0f020000 + 0x77E0);
    }
    free(comm_buffer);
    saved_reg_gp->unk-5194 = (u32) comm_save_bufsize;
    comm_curbufpos = comm_save_curbufpos;
    comm_buffer = comm_save_buffer;
    comm_endbuffer = comm_save_endbuffer;
}

void comm_bad_gfile(void) {
    gl_dgl_error((M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF9298C) - 0x3BA8, &sub_0f020000 + 0x7800, (s32 *)0xFFF9298C);
}

void gl_comm_fatal_error(void) {
    s32 temp_s8;

    temp_s8 = errno;
    gl_dgl_perror();
    gl_comm_close(0);
    exit(temp_s8);
}

void gl_parse_hostname(s32 *arg1, s32 *arg2) {
    s64 sp18;
    s32 temp_v0;
    s32 temp_v0_2;
    s64 temp_a0;

    if (arg1 != NULL) {
        *arg1 = 0;
    }
    if (arg2 != NULL) {
        *arg2 = 0;
    }
    temp_v0 = strchr(0x3A);
    if (temp_v0 != 0) {
        temp_a0 = temp_v0 + 1;
        if (arg1 != NULL) {
            sp18 = temp_a0;
            *arg1 = atoi(temp_a0);
        }
        temp_v0_2 = strchr(temp_a0, 0x2E, temp_a0);
        if ((temp_v0_2 != 0) && (arg2 != NULL)) {
            *arg2 = atoi(temp_v0_2 + 1);
        }
    }
}
