? sprintf(void *, void *, s32, s32);                /* extern */
extern s32 *gl_currentpos;
extern void *gl_openobjhdr;
extern s32 gl_replacemode;
extern ? sub_0f030000;

void gl_compile(u32 arg0, void *arg1) {
    s64 sp18;
    s32 *var_a0_2;
    s32 *var_a1;
    s32 var_a0;
    s64 var_ra;
    u32 temp_a3;
    u32 var_a3;
    u32 var_a6;
    u32 var_s0;
    void (**temp_a1)();
    void *var_a1_2;
    void *var_s1;

    var_ra = saved_reg_ra;
    var_s1 = arg1;
    if (arg0 & 1) {
        gl_ErrorHandler(0x6C, 5, &sub_0f030000 - 0x5728);
        var_ra = sp18;
    }
    sp18 = var_ra;
    if (gl_openobjhdr != NULL) {
        gl_compile(arg0);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            var_s0 = arg0 >> 1;
            temp_a3 = var_s0;
            var_a1 = gl_currentpos;
            if ((s32) var_s0 > 0) {
                var_a0 = var_s0 & 3;
                var_a6 = var_s0;
                if (var_a0 != 0) {
                    do {
                        var_s0 -= 1;
                        var_a1 += 4;
                        var_s1 += 4;
                        var_a0 -= 1;
                        var_a1->unk-4 = (s32) var_s1->unk-4;
                    } while (var_a0 != 0);
                    var_a6 = var_s0;
                }
                var_a0_2 = var_a1;
                if (((s32) temp_a3 >> 2) != 0) {
                    var_a3 = var_a6;
                    var_a1_2 = var_s1;
                    do {
                        var_a0_2->unk0 = var_a1_2->unk0;
                        var_a0_2->unk4 = (s32) var_a1_2->unk4;
                        var_a0_2 += 0x10;
                        var_a0_2->unk-8 = (s32) var_a1_2->unk8;
                        var_a1_2 += 0x10;
                        var_a3 -= 4;
                        var_a0_2->unk-4 = (s32) var_a1_2->unk-4;
                    } while (var_a3 != 0);
                    var_a1 = var_a0_2;
                }
            }
            gl_currentpos = var_a1;
            return;
        }
        return;
    }
    temp_a1 = ((arg0 >> 1) * 4) + var_s1;
    *temp_a1 = gl_n_retsym;
    gl_interpret(var_s1, temp_a1);
}

void gl_checkspace(void) {
    if (gl_replacemode != 0) {
        gl_nonprim_checkspace();
        return;
    }
    gl_nonprim_checkspace();
}

void gl_nonprim_checkspace(void) {
    if ((gl_openobjhdr == NULL) || (gl_replacemode != 0)) {
        return;
    }
    gl_makeroom();
}

void gl_replacespace(s32 arg0) {
    s64 sp70;
    s32 *var_v0;
    s32 temp_a2;
    s32 var_a0;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_t0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_openobjhdr != NULL) {

    } else {
        gl_ErrorHandler(0x6C, 5, &sub_0f030000 - 0x5728 + 0x10);
        var_ra = sp70;
    }
    var_v0 = gl_currentpos;
loop_5:
    do {
loop_6:
        var_t0 = 0;
        var_a6 = 0;
        var_a4 = 0;
        temp_a2 = var_v0->unk0;
        var_a5 = 0;
        var_a0 = 0;
        if (temp_a2 == gl_n_jump) {
            var_v0 = var_v0->unk4;
            gl_currentpos = var_v0;
            goto loop_5;
        }
        if (gl_replacemode == 0) {
            if (temp_a2 == gl_n_quad_nop1) {
                var_a5 = 1;
                var_v0 += 4;
                gl_currentpos = var_v0;
            } else {
                if (temp_a2 == gl_n_quad_nop2) {
                    var_a6 = 1;
                    var_v0 += 8;
                    gl_currentpos = var_v0;
                } else {
                    var_t0 = 0;
                    if (temp_a2 == gl_n_quad_nop3) {
                        var_v0 += 0xC;
                        gl_currentpos = var_v0;
                        var_t0 = 1;
                    }
                }
                var_a4 = var_a6;
            }
            var_a0 = var_a5;
        }
        if (var_a0 != 0) {
            goto loop_5;
        }
        if (var_a4 != 0) {
            goto loop_6;
        }
    } while (var_t0 != 0);
    if (temp_a2 == gl_n_tag) {
        var_v0 += 8;
        gl_currentpos = var_v0;
        goto loop_5;
    }
    if (temp_a2 == gl_n_slopnop2) {
        var_v0 += 4;
        gl_currentpos = var_v0;
        goto loop_5;
    }
    if (temp_a2 == gl_n_slopnop3) {
        var_v0 += 8;
        gl_currentpos = var_v0;
        goto loop_5;
    }
    if (temp_a2 != gl_n_retsym) {
        if (temp_a2 == gl_n_nonprim) {
            if (arg0 == 4) {
                goto block_27;
            }
            /* Duplicate return node #30. Try simplifying control flow for better match */
            sp70 = var_ra;
            sprintf(sp, &sub_0f030000 - 0x5728 + 0x58, arg0, gl_getcmdname(*gl_currentpos));
            gl_ErrorHandler(0x3B, 2, sp);
            return;
        }
        sp70 = var_ra;
        if (arg0 != gl_getcmdlength(var_v0->unk0, var_v0->unk4, temp_a2, gl_n_nonprim)) {
            sp70 = var_ra;
            sprintf(sp, &sub_0f030000 - 0x5728 + 0x58, arg0, gl_getcmdname(*gl_currentpos));
            gl_ErrorHandler(0x3B, 2, sp);
            return;
        }
block_27:
        if (temp_a2 == gl_n_gl_ecallfunc) {
            sp70 = var_ra;
            gl_intrp_freefunc(gl_currentpos);
        }
        return;
    }
    sp70 = var_ra;
    gl_ErrorHandler(0x3B, 2, &sub_0f030000 - 0x5728 + 0x20, gl_n_nonprim);
}

void gl_insertspace(s64 arg0) {
    s32 temp_a2;
    s32 temp_a3;

    if (gl_makeroom() != 0) {
        gl_openobjhdr->unk8 = (s32) (gl_openobjhdr->unk8 + subroutine_arg0);
        temp_a2 = gl_openobjhdr->unk14;
        temp_a3 = subroutine_arg0 * 2;
        if (temp_a2 == gl_currentpos) {
            gl_openobjhdr->unk14 = (s32) (temp_a2 + temp_a3);
        }
        (temp_a3 + gl_currentpos)->unk4 = (s32) gl_currentpos->unk4;
        *(temp_a3 + gl_currentpos) = gl_currentpos->unk0;
    }
}
