? close(s32);                                       /* extern */
? fflush(void *);                                   /* extern */
? open(void *, ?);                                  /* extern */
? sprintf(u8 *, void *, ?, ?);                      /* extern */
? write(u8 *, u8 *, s32);                           /* extern */
extern ? __iob;
extern ? sub_0f020000;

void gl_open_textport(void) {
    open(&sub_0f020000 + 0x57C8, 2);
}

void opentty(s64 arg0) {
    s32 temp_s0;

    fflush(&__iob + 0x10);
    unksp30 = arg0;
    gl_open_textport();
    temp_s0 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {
        ioctl(temp_s0, 0x5401U, unksp30);
        ioctl(temp_s0, 0x5401U, sp);
        ioctl(temp_s0, 0x5404U, sp, (subroutine_arg2 & ~0x30) | 0x30, 1, 1);
    }
}

void closetty(s32 arg0, ? arg1) {
    ioctl(arg0, 0x5404U, arg1);
    close(arg0);
}

void sendtty(u8 *arg0) {
    s32 var_a2;
    u8 *temp_s1;
    u8 temp_a3;
    void *var_v0;

    gl_open_textport(sp);
    temp_s1 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {
        var_a2 = 0;
        var_v0 = arg0 + 1;
        if (*arg0 != 0) {
loop_2:
            var_a2 += 1;
            if (var_v0->unk0 != 0) {
                temp_a3 = var_v0->unk1;
                var_v0 += 2;
                var_a2 += 1;
                if (temp_a3 != 0) {
                    goto loop_2;
                }
            }
        }
        write(temp_s1, arg0, var_a2);
        gl_open_textport(temp_s1, sp);
    }
}

void gl_g_textinit(void) {
    sprintf(sp, &sub_0f020000 + 0x57D8, 0x1B, 0x5B);
    gl_open_textport(sp);
}

void gl_g_tpon(void) {
    sprintf(sp, &sub_0f020000 + 0x57D8, 0x1B, 0x5B);
    gl_open_textport(sp);
}

void gl_g_tpoff(void) {
    sprintf(sp, &sub_0f020000 + 0x57D8, 0x1B, 0x5B);
    gl_open_textport(sp);
}

void gl_g_textport(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    ? sp61;
    u8 sp60;
    ? sp41;
    u8 sp40;
    u16 sp3A;
    u16 sp38;
    u8 sp10;
    ? *var_v0_3;
    ? *var_v0_4;
    s32 temp_a1_2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_s6;
    s32 var_s6_2;
    s32 var_s7;
    s32 var_s7_2;
    s32 var_t2;
    s32 var_v0_2;
    u16 var_a0;
    u16 var_v0;
    u8 *temp_s5;
    u8 temp_a4;
    u8 temp_v1;
    void **temp_a1;

    gl_open_textport(&sp10);
    temp_s5 = M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {
        if (arg1 < arg0) {
            var_s6 = arg0 - arg1;
        } else {
            var_s6 = arg1 - arg0;
        }
        var_s6_2 = var_s6 + 1;
        temp_a1 = gl_sstatep->display;
        if ((s32) temp_a1 < var_s6_2) {
            var_s6_2 = (s32) temp_a1;
        }
        if (arg3 < arg2) {
            var_s7 = arg2 - arg3;
        } else {
            var_s7 = arg3 - arg2;
        }
        var_s7_2 = var_s7 + 1;
        temp_a1_2 = gl_sstatep->screen;
        if (temp_a1_2 < var_s7_2) {
            var_s7_2 = temp_a1_2;
        }
        var_a0 = sp38;
        if (ioctl(M2C_ERROR(/* Read from unset register $v0 */), 0x40087468U, &sp38) >= 0) {
            var_v0 = sp3A;
            if (var_v0 == 0) {
                var_v0 = 0x50;
                sp3A = 0x50;
            }
            if (var_a0 == 0) {
                var_a0 = 0x18;
                sp38 = 0x18;
            }
            temp_lo = (s32) sp3C / (s32) var_v0;
            M2C_TRAP_IF(var_v0 == 0);
            if (temp_lo != 0) {
                M2C_TRAP_IF(temp_lo == 0);
                var_v0_2 = var_s6_2 / temp_lo;
            } else {
                var_v0_2 = 1;
            }
            if (var_v0_2 >= 0x51) {
                var_v0_2 = 0x50;
            }
            if (var_v0_2 <= 0) {

            }
            temp_lo_2 = (s32) sp3E / (s32) var_a0;
            M2C_TRAP_IF(var_a0 == 0);
            if (temp_lo_2 != 0) {
                M2C_TRAP_IF(temp_lo_2 == 0);
                var_t2 = var_s7_2 / temp_lo_2;
            } else {
                var_t2 = 1;
            }
            if (var_t2 >= 0x29) {
                var_t2 = 0x28;
            }
            if (var_t2 <= 0) {

            }
            sprintf(&sp40, &sub_0f020000 + 0x57E8, 0x1B, 0x5B);
            var_a2 = 0;
            var_v0_3 = &sp41;
            if (sp40 != 0) {
loop_27:
                var_a2 += 1;
                if (var_v0_3->unk0 != 0) {
                    temp_v1 = var_v0_3->unk1;
                    var_v0_3 += 2;
                    var_a2 += 1;
                    if (temp_v1 != 0) {
                        goto loop_27;
                    }
                }
            }
            write(temp_s5, &sp40, var_a2);
            sprintf(&sp60, &sub_0f020000 + 0x57E8, 0x1B, 0x5B);
            var_a2_2 = 0;
            var_v0_4 = &sp61;
            if (sp60 != 0) {
loop_30:
                var_a2_2 += 1;
                if (var_v0_4->unk0 != 0) {
                    temp_a4 = var_v0_4->unk1;
                    var_v0_4 += 2;
                    var_a2_2 += 1;
                    if (temp_a4 != 0) {
                        goto loop_30;
                    }
                }
            }
            write(temp_s5, &sp60, var_a2_2);
        }
        gl_open_textport(temp_s5, &sp10);
    }
}

void gl_g_pagecolor(s32 arg0) {
    sprintf(sp, &sub_0f020000 + 0x5800, 0x1B, 0x5B);
    gl_open_textport(sp);
}

void gl_g_textcolor(s32 arg0) {
    sprintf(sp, &sub_0f020000 + 0x5800, 0x1B, 0x5B);
    gl_open_textport(sp);
}

void gl_g_gettp(void) {

}

void gl_g_pagewritemask(void) {

}

void gl_g_textwritemask(void) {

}
