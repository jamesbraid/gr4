? bcopy(s32, ? *, s32);                             /* extern */
s32 connect(s64, void *, ?);                        /* extern */
s32 *gethostbyaddr(s32 *, ?, u16);                  /* extern */
void *gethostbyname(s64);                           /* extern */
s32 getpeername(s64, u16 *, void *);                /* extern */
void *getservbyname(s32, s64);                      /* extern */
s32 getsockname(s64, u16 *, void *, ?);             /* extern */
s32 getsockopt(s64, ?, ?, s32 *);                   /* extern */
s32 setsockopt(s64, ?, ?, s32 *);                   /* extern */
? sleep(s64);                                       /* extern */
s64 socket(?, ?, ?);                                /* extern */
extern s32 errno;
extern ? sub_0f030000;

void gl_set_socket_opts(s64 arg0) {
    s32 spC;
    s32 sp8;

    gl_dgl_info_more(1, &sub_0f030000 - 0x5A18, 1, (s32 *)0xFFF20A54);
    if (setsockopt(arg0, 0xFFFF, 4, sp) != 0) {
        gl_dgl_perror(&sub_0f030000 - 0x5A18 + 0x10);
        return;
    }
    sp8 = 1;
    spC = 0x3C;
    if (setsockopt(arg0, 0xFFFF, 0x80, &sp8) != 0) {
        gl_dgl_perror(&sub_0f030000 - 0x5A18 + 0x20);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x60, 0x64, 0x68, 0x6c], gap at: 0x38. */
void gl_socket_init(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    ? sp4;
    s64 temp_at;
    s64 temp_v0_3;
    s64 var_a1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;

    unksp48 = arg3;
    unksp38 = arg0;
    unksp30 = 1;
    temp_at = (s64) (arg2 << 0x30) >> 0x30;
    unksp58 = temp_at;
    if (temp_at != -1) {
        goto block_1;
    }
    temp_v0 = getservbyname(saved_reg_gp - 0x3890, unksp48);
    if (temp_v0 != NULL) {
        unksp58 = (s64) temp_v0->unkA;
block_1:
        temp_v0_2 = gethostbyname(arg1);
        if (temp_v0_2 != NULL) {
            bcopy(*temp_v0_2->unk10, &sp4, temp_v0_2->unkC);
            temp_s0 = &sub_0f030000 - 0x5A18;
            sp18 = (s64) (temp_s0 + 0xB8);
            unksp40 = (s64) (temp_s0 + 0xA8);
loop_3:
            sp20 = 0;
            gl_dgl_info(1, temp_s0 + 0x88);
            temp_v0_3 = socket(2, 2, 0);
            unksp50 = temp_v0_3;
            if (temp_v0_3 >= 0) {
                gl_set_socket_opts(temp_v0_3);
                if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                    return;
                }
                gl_dgl_info_more(1, (void *) unksp40);
                var_a1 = sp20;
                if (connect(unksp50, sp, 0x10) >= 0) {
                    goto block_7;
                }
                sp10 = (s64) errno;
                unksp38->unk20(unksp50, var_a1);
                errno = (s32) sp10;
                if ((sp10 == 0x92) && (unksp30 < 0x11)) {
                    gl_dgl_info_more(1, (void *) sp18, unksp30);
                    sleep(unksp30);
                    var_a1 = 1;
                    unksp30 *= 2;
block_7:
                    if (var_a1 == 0) {
                        gl_dgl_info_more(1, saved_reg_gp - 0x3880);
                        unksp38->unk10 = (s32) unksp50;
                        unksp38->unkC = (s32) unksp50;
                        unksp38->unk4 = 2;
                        unksp38->unk14 = (s32) unksp50;
                        gl_socket_queue_init(unksp50, unksp50, unksp38);
                        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                            return;
                        }
                        if (gl_data_check_special(unksp38, unksp38->unkC, unksp38->unk10) != 0) {
                            return;
                        }
                        return;
                    }
                    goto loop_3;
                }
                gl_dgl_info_more(1, &sub_0f030000 - 0x5A18 + 0xD0);
                gl_dgl_perror(&sub_0f030000 - 0x5A18 + 0xE8);
                return;
            }
            gl_dgl_perror(saved_reg_gp - 0x3888);
            return;
        }
        temp_a0 = &sub_0f030000 - 0x5A18;
        gl_dgl_error(temp_a0 + 0x60, temp_a0 + 0x70, arg1);
        return;
    }
    temp_a0_2 = &sub_0f030000 - 0x5A18;
    gl_dgl_error(temp_a0_2 + 0x30, temp_a0_2 + 0x40, unksp48);
}

void gl_socket_queue_init(s64 arg0, s64 arg1) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    ? sp4;
    s32 temp_a1;
    s64 temp_a0;
    s64 temp_v0_2;
    s64 var_a2;
    void *temp_a0_2;
    void *temp_a4;
    void *temp_v0;

    sp10 = 1;
    sp50 = arg1 & 0xFFFF;
    sp30 = arg0;
    temp_a0 = arg0 + 0xC8;
    sp40 = temp_a0;
    temp_v0 = gethostbyname(temp_a0);
    if (temp_v0 != NULL) {
        bcopy(*temp_v0->unk10, &sp4, temp_v0->unkC);
        gl_dgl_info(1, &sub_0f030000 - 0x5A18 + 0x120, sp50, sp50);
        temp_a4 = &sub_0f030000 - 0x5A18;
        sp28 = (s64) (temp_a4 + 0x170);
        sp38 = (s64) (temp_a4 + 0x160);
        sp58 = (s64) (temp_a4 + 0x140);
loop_2:
        sp20 = 0;
        gl_dgl_info(1, (void *) sp58);
        temp_v0_2 = socket(2, 2, 0);
        sp48 = temp_v0_2;
        if (temp_v0_2 >= 0) {
            gl_set_socket_opts(temp_v0_2);
            if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                return;
            }
            gl_dgl_info_more(1, (void *) sp38);
            var_a2 = sp20;
            if (connect(sp48, sp, 0x10) >= 0) {
                goto block_6;
            }
            sp18 = (s64) errno;
            sp30->unk20(sp48);
            errno = (s32) sp18;
            if ((sp18 == 0x92) && (sp10 < 0x11)) {
                gl_dgl_info_more(1, (void *) sp28, sp10, &errno);
                sleep(sp10);
                var_a2 = 1;
                sp10 *= 2;
block_6:
                if (var_a2 == 0) {
                    gl_dgl_info_more(1, saved_reg_gp - 0x3870, var_a2);
                    sp30->unkC4 = (s32) sp48;
                    gl_socket_queue_init(sp48);
                    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
                        return;
                    }
                    temp_a1 = sp30->unkC4;
                    if (gl_data_check_special(sp30, temp_a1, temp_a1) != 0) {
                        return;
                    }
                    return;
                }
                goto loop_2;
            }
            gl_dgl_info_more(1, &sub_0f030000 - 0x5A18 + 0x188);
            gl_dgl_perror(&sub_0f030000 - 0x5A18 + 0x1A0);
            return;
        }
        gl_dgl_perror(saved_reg_gp - 0x3878);
        return;
    }
    temp_a0_2 = &sub_0f030000 - 0x5A18;
    gl_dgl_error(temp_a0_2 + 0xF8, temp_a0_2 + 0x108, sp40);
}

void socket_info(s64 arg0) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s32 sp20;
    s32 sp18;
    s32 spC;
    u16 sp8;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s64 var_a3;
    void *temp_a0;
    void *var_s0;

    sp58 = arg0;
    sp40 = 0;
    sp38 = 0;
    sp30 = 0;
    sp28 = 0;
    sp50 = 0;
    if (gl_dgl_info(1, saved_reg_gp - 0x3890 + 0x28) != 0) {
        if (getsockname(sp58, &sp8, sp, 0x10) != 0) {
            gl_dgl_perror(&sub_0f030000 - 0x5868);
            return;
        }
        sp48 = (s64) &spC;
        temp_v0 = gethostbyaddr(&spC, 4, sp8);
        if (temp_v0 != NULL) {
            var_s0 = &sub_0f030000 - 0x5A18;
            gl_dgl_info_more(1, var_s0 + 0x1E8, (s64) *temp_v0, (s32 *) spA);
            if (getpeername(sp58, &sp8, sp) != 0) {
                gl_dgl_perror(var_s0 + 0x208);
                return;
            }
            temp_v0_2 = gethostbyaddr((s32 *) sp48, 4, sp8);
            if (temp_v0_2 != NULL) {
                gl_dgl_info_more(1, var_s0 + 0x240, (s64) *temp_v0_2, (s32 *) spA);
                goto block_4;
            }
            gl_dgl_error(var_s0 + 0x218, var_s0 + 0x228, (s64) spC, spA);
            return;
        }
        temp_a0 = &sub_0f030000 - 0x5A18;
        gl_dgl_error(temp_a0 + 0x1C0, temp_a0 + 0x1D0, (s64) spC, spA);
        return;
    }
    var_s0 = &sub_0f030000 - 0x5A18;
block_4:
    var_a3 = sp50;
    if (gl_dgl_info(3, var_s0 + 0x260) != 0) {
        __GLgl_dgl_printf(var_s0 + 0x270);
        temp_v0_3 = getsockopt(sp58, 0xFFFF, 4, &sp18);
        var_a3 = temp_v0_3 != 0;
        if (temp_v0_3 == 0) {
            sp50 = var_a3;
            __GLgl_dgl_printf(var_s0 + 0x280, sp18);
            temp_v0_4 = getsockopt(sp58, 0xFFFF, 8, &sp18);
            var_a3 = sp50;
            sp28 = temp_v0_4 != 0;
            if (temp_v0_4 == 0) {
                __GLgl_dgl_printf(var_s0 + 0x290, sp18);
                temp_v0_5 = getsockopt(sp58, 0xFFFF, 0x80, &sp20);
                var_a3 = sp50;
                sp30 = temp_v0_5 != 0;
                if (temp_v0_5 == 0) {
                    __GLgl_dgl_printf(var_s0 + 0x2A0, sp20, sp24, var_a3);
                    temp_v0_6 = getsockopt(sp58, 0xFFFF, 0x1001, &sp18);
                    var_a3 = sp50;
                    sp38 = temp_v0_6 != 0;
                    if (temp_v0_6 == 0) {
                        __GLgl_dgl_printf(var_s0 + 0x2B0, sp18);
                        temp_v0_7 = getsockopt(sp58, 0xFFFF, 0x1002, &sp18);
                        var_a3 = sp50;
                        sp40 = temp_v0_7 != 0;
                        if (temp_v0_7 == 0) {
                            __GLgl_dgl_printf(var_s0 + 0x2C0, sp18);
                            __GLgl_dgl_printf(saved_reg_gp - 0x3890 + 0x30);
                            var_a3 = sp50;
                        }
                    }
                }
            }
        }
    }
    if (var_a3 == 0) {
        if ((sp28 == 0) && (sp30 == 0)) {
            if (sp38 == 0) {
                if (sp40 == 0) {
                    return;
                }
                /* Duplicate return node #13. Try simplifying control flow for better match */
                gl_dgl_perror(var_s0 + 0x2D0, sp38);
                return;
            }
            goto block_12;
        }
        /* Duplicate return node #13. Try simplifying control flow for better match */
        gl_dgl_perror(var_s0 + 0x2D0, sp38);
        return;
    }
block_12:
    gl_dgl_perror(var_s0 + 0x2D0, sp38);
}
