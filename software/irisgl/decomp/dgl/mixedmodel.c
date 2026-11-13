? XCloseDisplay(s64);                               /* extern */
s64 XOpenDisplay(?);                                /* extern */
? XSync(s64, ?);                                    /* extern */
s32 strcmp(u8 *, s32);                              /* extern */
? strcpy(void *, s32);                              /* extern */
extern s32 __iglooClientDPY;
extern ? *comm_curgfile;
extern ? comm_gfiles;
extern s32 gl_template_size;
extern ? sub_0f040000;

void push_gfile(void) {
    saved_reg_gp->unk-5094 = (? *) comm_curgfile;
    if (comm_curgfile != NULL) {
        gl_comm_flush();
    }
}

void pop_gfile(void) {
    s64 sp0;
    ? *temp_a3;
    s32 temp_a0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_a3 = saved_reg_gp->unk-5094;
    if (comm_curgfile != temp_a3) {
        gl_comm_flush(&comm_curgfile, temp_a3);
        var_ra = sp0;
    }
    if (saved_reg_gp->unk-5094 != NULL) {
        temp_a0 = saved_reg_gp->unk-5094->unk4;
        if (comm_curgfile->unk4 != temp_a0) {
            sp0 = var_ra;
            gl_load_dgl_table(temp_a0);
            comm_curgfile = saved_reg_gp->unk-5094;
        }
    }
}

void gl_glx_finddisplay(s64 arg0) {
    void *var_v0;

    var_v0 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF44264)->unk-5090;
    if (var_v0 != NULL) {
loop_1:
        if (var_v0->unk4 != arg0) {
            var_v0 = var_v0->unk0;
            if (var_v0 == NULL) {

            } else {
                goto loop_1;
            }
        }
    }
}

void gl_initdisplay(s64 arg0, s64 arg1) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_v0_3;
    s32 var_a2;
    s32 var_a4_3;
    s64 temp_v0;
    s64 temp_v0_2;
    u8 *var_a4;
    void **var_a4_2;
    void *var_a5;

    sp18 = arg0;
    sp10 = arg1;
    if (arg0 == 0) {
        return;
    }
    gl_glx_finddisplay(sp18);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        temp_v0 = malloc(0x24U);
        sp8 = temp_v0;
        sp0 = temp_v0;
        bzero((void *) temp_v0, 0x24U);
        temp_a2 = saved_reg_gp->unk-5090;
        sp8->unk4 = (s32) sp18;
        saved_reg_gp->unk-5090 = (s32) sp8;
        sp8->unk0 = temp_a2;
        if (sp10 != 0) {
            var_a4 = &sub_0f040000 - 0x7988;
            if (*var_a4 != 0) {
                goto block_5;
            }
            temp_v0_2 = XOpenDisplay(0);
            sp8 = temp_v0_2;
            var_a4 = &sub_0f040000 - 0x7988;
            if (temp_v0_2 != 0) {
                strcpy(&sub_0f040000 - 0x7988, sp8->unk80);
                XCloseDisplay(sp8);
                var_a4 = &sub_0f040000 - 0x7988;
            }
            if (*var_a4 == 0) {
                goto block_7;
            }
block_5:
            if (strcmp(var_a4, sp18->unk80) != 0) {
                goto block_7;
            }
            var_a4_2 = &comm_gfiles + 4;
            if (comm_gfiles.unk4 != NULL) {
                var_a5 = comm_gfiles.unk4;
loop_17:
                var_a4_2 += 4;
                if (var_a5->unk194 != 0) {
                    var_a4_3 = var_a5->unk0;
                    sp0->unkC = var_a4_3;
                    goto block_8;
                }
                if (((u32) (&comm_gfiles + 0x400) < (u32) var_a4_2) || (var_a5 = *var_a4_2, (var_a5 == NULL))) {
                    temp_a4 = sp0->unkC;
                    var_a2 = temp_a4 * 4;
                    if (temp_a4 == 0) {
                        goto block_23;
                    }
                    goto block_10;
                }
                goto loop_17;
            }
block_7:
            var_a4_3 = ((void *) sp0)->unkC;
block_8:
            if (var_a4_3 != 0) {
                goto block_9;
            }
block_23:
            gl_sginap();
            temp_v0_3 = __GLdglopen(sp18->unk80, 4);
            sp0->unkC = temp_v0_3;
            if (temp_v0_3 >= 0) {
                gl_sginap();
                var_a4_3 = sp0->unkC;
block_9:
                var_a2 = var_a4_3 * 4;
block_10:
                if ((*(var_a2 + &comm_gfiles))->unk4 == 1) {
                    ((void *) sp0)->unk10 = (s32) (((void *) sp0)->unk10 | 2);
                }
            } else {
                free((void *) sp0);
                gl_sginap();
            }
        } else {
            sp8->unk10 = (s32) (sp8->unk10 | 3);
            gl_InitKnownAtoms(sp8);
            _GLmakedefaultcursor(sp8);
        }
    }
}

void switch_to_display(void *arg0) {
    ? *temp_a0;

    if (comm_curgfile != NULL) {
        if (*comm_curgfile == arg0->unkC) {
            return;
        }
        gl_comm_flush(comm_curgfile);
        /* Duplicate return node #4. Try simplifying control flow for better match */
        temp_a0 = *((arg0->unkC * 4) + &comm_gfiles);
        comm_curgfile = temp_a0;
        gl_load_dgl_table(temp_a0->unk4, &comm_curgfile, &comm_gfiles);
        return;
    }
    temp_a0 = *((arg0->unkC * 4) + &comm_gfiles);
    comm_curgfile = temp_a0;
    gl_load_dgl_table(temp_a0->unk4, &comm_curgfile, &comm_gfiles);
}

void __GLGLXwinset(s32 arg0, s64 arg1) {
    s32 temp_a0;
    s64 temp_s0;

    __iglooClientDPY = arg0;
    gl_initdisplay(1);
    temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    gl_initdisplay(temp_s0);
    temp_a0 = temp_s0->unk8;
    if (comm_curgfile->unk4 != 1) {
        gl_d_gl_glx_winset(temp_a0, subroutine_arg0);
        return;
    }
    __GLgl_glx_winset(temp_a0, subroutine_arg0);
}

void __GLGLXunlink(s64 arg1) {
    s32 temp_a0;
    s64 temp_s0;

    gl_initdisplay(1);
    temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    gl_initdisplay(temp_s0);
    temp_a0 = temp_s0->unk8;
    if (comm_curgfile->unk4 != 1) {
        gl_d_gl_glx_unlink(temp_a0, subroutine_arg0);
        return;
    }
    __GLgl_glx_unlink(temp_a0, subroutine_arg0);
}

s32 __GLGLXgetconfig(s64 arg0, s64 arg1, s32 *arg2) {
    s64 sp10;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_t0;
    s32 temp_v1;
    s32 var_a5;
    s64 temp_s0;
    s64 var_s0;

    gl_initializer();
    gl_initdisplay(arg0, 1);
    temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    sp10 = M2C_ERROR(/* Read from unset register $v0 */);
    if (temp_s0 == 0) {
        return 0;
    }
    gl_sginap();
    gl_initdisplay(temp_s0);
    var_a5 = 0;
    *((gl_template_size * 4) + malloc((gl_template_size * 4) + 4)) = 0;
    var_v0 = arg2;
    if (*arg2 != 0) {
loop_3:
        var_a5 += 1;
        if (var_v0->unkC != 0) {
            temp_v1 = var_v0->unk18;
            var_v0 += 0x18;
            var_a5 += 1;
            if (temp_v1 != 0) {
                goto loop_3;
            }
        }
    }
    temp_t0 = sp10->unk8;
    temp_a2 = var_a5 * 3;
    if (comm_curgfile->unk4 != 1) {
        if (gl_d_gl_glx_getconfig(temp_t0, subroutine_arg0, temp_a2, arg2) == 0) {
            goto block_7;
        }
        goto block_10;
    }
    if (__GLgl_glx_getconfig(temp_t0, subroutine_arg0, temp_a2, arg2) != 0) {
block_10:
        var_s0 = 0;
        free((void *) subroutine_arg2);
    } else {
block_7:
        var_s0 = subroutine_arg2;
    }
    gl_sginap();
    return (s32) var_s0;
}

void __GLGLXlink(s64 arg0, s32 *arg1) {
    s32 *var_a0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 var_v0;
    s64 temp_s1;

    gl_initdisplay(1);
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
        return;
    }
    gl_initdisplay(temp_s1);
    XSync(subroutine_arg0, 0);
    var_a0 = arg1;
    var_v0 = 0;
    if (*arg1 != 0) {
loop_3:
        var_v0 += 1;
        if (var_a0->unkC != 0) {
            temp_a3 = var_a0->unk18;
            var_a0 += 0x18;
            var_v0 += 1;
            if (temp_a3 != 0) {
                goto loop_3;
            }
        }
    }
    temp_a0 = temp_s1->unk8;
    temp_a3_2 = comm_curgfile->unk4;
    temp_a1 = var_v0 * 3;
    if (temp_a3_2 != 1) {
        gl_d_gl_glx_link(temp_a0, temp_a1, arg1, temp_a3_2);
        return;
    }
    __GLgl_glx_link(temp_a0, temp_a1, arg1, temp_a3_2);
}
