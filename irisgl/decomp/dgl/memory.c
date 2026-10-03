extern u32 comm_endbuffer;
extern s32 gl_dgl_pixmodes;

void gl_mem_pack_lstring(s32 arg0, void *arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 var_ra;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_v0 = arg1;
    if ((u32) comm_endbuffer < (u32) (M2C_ERROR(/* Read from unset register $a5 */) + (arg3 + arg1))) {
        unksp8 = arg3;
        sp28 = arg2;
        sp20 = M2C_ERROR(/* Read from unset register $a4 */);
        var_v0 = gl_comm_makeroom(arg3 + M2C_ERROR(/* Read from unset register $a5 */), var_v0);
        var_ra = sp30;
    }
    switch (arg0) {                                 /* irregular */
    case 0x0:
    case 0x10:
    case 0x11:
        /* fallthrough */
    case 0x1:
        sp30 = var_ra;
        M2C_ERROR(/* Read from unset register $a4 */)(var_v0, arg2, arg3, arg3);
        break;
    case 0x101:
        sp30 = var_ra;
        gl_mem_hton_long_array(var_v0, arg2, arg3, arg3);
        break;
    case 0x100:
        sp30 = var_ra;
        gl_mem_hton_short_array(var_v0, arg2, arg3, arg3);
        break;
    }
}

void gl_mem_pack_array(void *arg0, s64 arg1, s64 arg2, void (*arg3)(void *, s64, s64, s64)) {
    void *var_v0;

    var_v0 = arg0;
    if ((u32) comm_endbuffer < (u32) (M2C_ERROR(/* Read from unset register $a4 */) + (arg2 + arg0))) {
        var_v0 = gl_comm_makeroom(arg2 + M2C_ERROR(/* Read from unset register $a4 */), var_v0);
    }
    arg3(var_v0, arg1, arg2);
}

void gl_mem_unpack_array(s32 *arg1, ? (*arg2)(s32, s32)) {
    s64 sp18;
    s32 temp_at;

    temp_at = *arg1;
    sp18 = (s64) temp_at;
    arg2(arg1 + 4, temp_at);
}

void gl_mem_copy_array(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_at_2;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_6;
    s32 var_a1;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_3;
    s32 var_a5_5;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    s32 var_t1;
    s32 var_t2;
    s32 var_t2_2;
    u8 temp_a3_3;
    u8 temp_v1;
    void *var_a0;
    void *var_a0_5;
    void *var_a0_7;
    void *var_a1_2;
    void *var_a5_2;
    void *var_a5_4;
    void *var_a6_2;
    void *var_a6_3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a5 = var_a1;
    if (var_a1 & 3) {
        goto block_1;
    }
    if (!((s32) var_a0 & 3)) {
        var_a2_2 = var_a2 >> 2;
        temp_at = var_a2_2 - 1;
        if (var_a2_2 >= 5) {
            temp_a4 = (s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2;
            var_t2 = var_a2_2;
            if (temp_a4 & 1) {
                var_a0->unk0 = (s32) var_a1->unk0;
                var_a0->unk4 = (s32) var_a1->unk4;
                var_a0->unk8 = (s32) var_a1->unk8;
                var_a2_2 -= 4;
                temp_at_2 = var_a1->unkC;
                var_a1 += 0x10;
                var_a0 += 0x10;
                var_a0->unk-4 = temp_at_2;
                var_t2 = var_a2_2;
            }
            if ((temp_a4 >> 1) != 0) {
                var_a6 = var_t2;
                var_a5_2 = var_a0;
                var_a4 = var_a1;
                do {
                    var_a5_2->unk0 = (s32) var_a4->unk0;
                    var_a5_2->unk4 = (s32) var_a4->unk4;
                    var_a5_2->unk8 = (s32) var_a4->unk8;
                    var_a5_2->unkC = (s32) var_a4->unkC;
                    var_a5_2->unk10 = (s32) var_a4->unk10;
                    var_a5_2->unk14 = (s32) var_a4->unk14;
                    temp_a3 = var_a4->unk18;
                    var_a4 += 0x20;
                    var_a5_2 += 0x20;
                    var_a5_2->unk-8 = temp_a3;
                    var_a6 -= 8;
                    var_a5_2->unk-4 = (s32) var_a4->unk-4;
                } while (var_a6 >= 5);
                var_a0 = var_a5_2;
                var_a1 = var_a4;
                var_a2_2 = var_a6;
            }
        }
        var_a2_3 = var_a2_2 - 1;
        temp_a6 = var_a2_3 + 1;
        if (var_a2_3 >= 0) {
            var_a5_3 = temp_a6 & 3;
            if (var_a5_3 != 0) {
                do {
                    var_a2_3 -= 1;
                    var_a0 += 4;
                    var_a1 += 4;
                    var_a5_3 -= 1;
                    var_a0->unk-4 = (s32) var_a1->unk-4;
                } while (var_a5_3 != 0);
            }
            if ((temp_a6 >> 2) != 0) {
                var_a0_2 = var_a2_3;
                var_a5_4 = var_a0;
                var_a2_4 = var_a1;
                do {
                    var_a5_4->unk0 = (s32) var_a2_4->unk0;
                    var_a5_4->unk4 = (s32) var_a2_4->unk4;
                    var_a5_4 += 0x10;
                    var_a5_4->unk-8 = (s32) var_a2_4->unk8;
                    var_a2_4 += 0x10;
                    var_a0_2 -= 4;
                    var_a5_4->unk-4 = (s32) var_a2_4->unk-4;
                } while (var_a0_2 != -1);
                var_a1 = var_a2_4;
                var_a0 = var_a5_4;
            }
        }
        var_a6_2 = var_a0;
        var_a7 = (var_a2 & 3) - 1;
        var_a5_5 = var_a1;
        if (var_a7 >= 0) {
            temp_a1 = var_a7 + 1;
            var_a0_3 = temp_a1 & 3;
            var_t2_2 = var_a7;
            if (var_a0_3 != 0) {
                do {
                    var_a7 -= 1;
                    var_a6_2 += 1;
                    var_a5_5 += 1;
                    var_a0_3 -= 1;
                    var_a6_2->unk-1 = (u8) var_a5_5->unk-1;
                } while (var_a0_3 != 0);
                var_t2_2 = var_a7;
            }
            var_a1_2 = var_a6_2;
            if ((temp_a1 >> 2) != 0) {
                var_a2_5 = var_t2_2;
                var_a0_4 = var_a5_5;
                do {
                    var_a1_2->unk0 = (u8) var_a0_4->unk0;
                    var_a1_2->unk1 = (u8) var_a0_4->unk1;
                    var_a1_2 += 4;
                    var_a1_2->unk-2 = (u8) var_a0_4->unk2;
                    var_a0_4 += 4;
                    var_a2_5 -= 4;
                    var_a1_2->unk-1 = (u8) var_a0_4->unk-1;
                } while (var_a2_5 != -1);
            }
        }
    } else {
block_1:
        var_a6_3 = var_a0;
        if (var_a2 >= 5) {
            temp_a3_2 = var_a2 - 1;
            temp_a0 = (s32) (((u32) (temp_a3_2 >> 1) >> 0x1E) + temp_a3_2) >> 2;
            var_t1 = var_a2;
            if (temp_a0 & 1) {
                var_a6_3->unk0 = (u8) var_a5->unk0;
                var_a6_3->unk1 = (u8) var_a5->unk1;
                var_a6_3->unk2 = (u8) var_a5->unk2;
                var_a2 -= 4;
                temp_a3_3 = var_a5->unk3;
                var_a5 += 4;
                var_a6_3 += 4;
                var_a6_3->unk-1 = temp_a3_3;
                var_t1 = var_a2;
            }
            var_a0_5 = var_a6_3;
            if ((temp_a0 >> 1) != 0) {
                var_a1_3 = var_t1;
                var_a4_2 = var_a5;
                do {
                    var_a0_5->unk0 = (u8) var_a4_2->unk0;
                    var_a0_5->unk1 = (u8) var_a4_2->unk1;
                    var_a0_5->unk2 = (u8) var_a4_2->unk2;
                    var_a0_5->unk3 = (u8) var_a4_2->unk3;
                    var_a0_5->unk4 = (u8) var_a4_2->unk4;
                    var_a0_5->unk5 = (u8) var_a4_2->unk5;
                    temp_v1 = var_a4_2->unk6;
                    var_a4_2 += 8;
                    var_a0_5 += 8;
                    var_a0_5->unk-2 = temp_v1;
                    var_a1_3 -= 8;
                    var_a0_5->unk-1 = (u8) var_a4_2->unk-1;
                } while (var_a1_3 >= 5);
                var_a6_3 = var_a0_5;
                var_a5 = var_a4_2;
                var_a2 = var_a1_3;
            }
        }
        var_a2_6 = var_a2 - 1;
        if (var_a2_6 >= 0) {
            temp_a1_2 = var_a2_6 + 1;
            var_a0_6 = temp_a1_2 & 3;
            var_t0 = var_a2_6;
            if (var_a0_6 != 0) {
                do {
                    var_a2_6 -= 1;
                    var_a6_3 += 1;
                    var_a5 += 1;
                    var_a0_6 -= 1;
                    var_a6_3->unk-1 = (u8) var_a5->unk-1;
                } while (var_a0_6 != 0);
                var_t0 = var_a2_6;
            }
            var_a0_7 = var_a6_3;
            if ((temp_a1_2 >> 2) != 0) {
                var_a1_4 = var_t0;
                var_a2_7 = var_a5;
                do {
                    var_a0_7->unk0 = (u8) var_a2_7->unk0;
                    var_a0_7->unk1 = (u8) var_a2_7->unk1;
                    var_a0_7 += 4;
                    var_a0_7->unk-2 = (u8) var_a2_7->unk2;
                    var_a2_7 += 4;
                    var_a1_4 -= 4;
                    var_a0_7->unk-1 = (u8) var_a2_7->unk-1;
                } while (var_a1_4 != -1);
            }
        }
    }
}

void gl_mem_unpack_lrect(s32 *arg0, s32 *arg1, s64 arg2, s64 arg3) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a7;

    temp_a7 = *arg1;
    sp8 = (s64) (arg3 << 0x30) >> 0x30;
    sp0 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    if ((gl_dgl_pixmodes.unk4 != 0) || (sp10 = (s64) temp_a7, (gl_dgl_pixmodes.unk8 != 0))) {
        sp10 = (s64) temp_a7;
        gl_mem_strideread(arg1 + 4, arg0, (sp0 - ((s64) (arg2 << 0x30) >> 0x30)) + 1, (((s64) (M2C_ERROR(/* Read from unset register $a5 */) << 0x30) >> 0x30) - sp8) + 1);
    } else {
        gl_mem_ntoh_long_array(arg0, arg1 + 4, sp10);
    }
}

void gl_mem_unpack_lrectproc(s32 *arg0, s32 *arg1) {
    s64 sp0;
    s32 temp_a4;

    temp_a4 = *arg1;
    if ((gl_dgl_pixmodes.unk4 != 0) || (sp0 = (s64) temp_a4, (gl_dgl_pixmodes.unk8 != 0))) {
        sp0 = (s64) temp_a4;
        gl_mem_strideread(arg1 + 4, arg0);
    } else {
        gl_mem_ntoh_long_array(arg0, arg1 + 4, sp0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x50, 0x54], gap at: 0x48. */
void gl_mem_strideread(s32 *arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_v0;
    s32 *var_s0;
    s32 *var_s0_2;
    s32 *var_s1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_v1;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s5;
    u32 temp_a0_2;
    u32 temp_s3;
    void *var_s0_3;

    temp_s3 = M2C_ERROR(/* Read from unset register $a4 */);
    var_s1 = arg0;
    temp_s2 = M2C_ERROR(/* Read from unset register $a5 */);
    var_s0 = arg1;
    if (M2C_ERROR(/* Read from unset register $a5 */) != 0) {
        var_s5 = -1 << (0x20 - temp_s2);
    } else {
        var_s5 = 0;
    }
    temp_lo = arg2 * ((s32) gl_dgl_pixmodes >> 0x10);
    temp_a1 = temp_lo + temp_s2;
    temp_a0 = temp_a1 & 0x1F;
    temp_a2 = arg3 - 1;
    if (temp_a0 != 0) {
        sp0 = (1 << (0x20 - temp_a0)) - 1;
    } else {
        sp0 = 0;
    }
    temp_a0_2 = (u32) (temp_a1 + 0x1F) >> 5;
    if ((s32) temp_a0_2 >= 2) {
        var_s4 = temp_a2;
        if (arg3 != 0) {
            sp8 = temp_a0_2 * 4;
            unksp40 = (temp_a0_2 - 2) * 4;
            sp10 = ~sp0;
loop_24:
            *var_s0 = (*var_s1 & ~var_s5) | (*var_s0 & var_s5);
            gl_mem_ntoh_long_array(var_s0 + 4, var_s1 + 4, unksp40);
            temp_v0 = sp8 + var_s0;
            var_s1 += sp8;
            temp_v1 = temp_v0->unk-4;
            var_s0 = temp_v0;
            temp_v0->unk-4 = (s32) ((var_s1->unk-4 & sp10) | (temp_v1 & sp0));
            if (temp_a0_2 < temp_s3) {
                var_s0 += (temp_s3 - ((u32) (temp_lo + temp_s2 + 0x1F) >> 5)) * 4;
            }
            var_s4 -= 1;
            if (var_s4 != -1) {
                goto loop_24;
            }
        }
    } else {
        var_s4_2 = temp_a2;
        temp_s5 = var_s5 | sp0;
        if (arg3 != 0) {
            temp_s7 = temp_a0_2 < temp_s3;
            temp_s6 = ~temp_s5;
            if (arg3 & 1) {
                var_s1 += 4;
                temp_at = *var_s0;
                var_s0 += 4;
                var_s0->unk-4 = (s32) ((var_s1->unk-4 & temp_s6) | (temp_at & temp_s5));
                if (temp_s7 != 0) {
                    var_s0 += (temp_s3 - ((u32) (temp_lo + temp_s2 + 0x1F) >> 5)) * 4;
                }
                var_s4_2 -= 1;
            }
            var_s0_2 = var_s0 + 4;
            if ((arg3 >> 1) != 0) {
loop_18:
                temp_at_2 = *var_s1;
                var_s1 += 8;
                var_s0_2->unk-4 = (s32) ((temp_at_2 & temp_s6) | (var_s0_2->unk-4 & temp_s5));
                if (temp_s7 != 0) {
                    var_s0_2 += (temp_s3 - ((u32) (temp_lo + temp_s2 + 0x1F) >> 5)) * 4;
                }
                var_s0_3 = var_s0_2 + 4;
                var_s0_3->unk-4 = (s32) ((var_s1->unk-4 & temp_s6) | (*var_s0_2 & temp_s5));
                if (temp_s7 != 0) {
                    var_s0_3 += (temp_s3 - ((u32) (temp_lo + temp_s2 + 0x1F) >> 5)) * 4;
                }
                var_s4_2 -= 2;
                var_s0_2 = var_s0_3 + 4;
                if (var_s4_2 != -1) {
                    goto loop_18;
                }
            }
        }
    }
}

void gl_mem_pack_lrect(void *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 temp_t3;
    void *var_v0;

    temp_t3 = M2C_ERROR(/* Read from unset register $a4 */);
    var_v0 = arg0;
    if (gl_dgl_pixmodes.unk4 != 0) {
        if ((u32) comm_endbuffer < (u32) (M2C_ERROR(/* Read from unset register $a7 */) + (arg2 + var_v0))) {
            sp40 = M2C_ERROR(/* Read from unset register $a6 */);
            sp38 = M2C_ERROR(/* Read from unset register $a5 */);
            sp30 = temp_t3;
            sp28 = arg3;
            var_v0 = gl_comm_makeroom(arg2 + M2C_ERROR(/* Read from unset register $a7 */), var_v0);
        }
        gl_mem_stridewrite(var_v0, arg1, arg3, temp_t3);
        return;
    }
    gl_mem_pack_array(var_v0, arg1, arg2, gl_mem_hton_long_array);
}

void gl_mem_stridewrite(void *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s32 temp_a7;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s6;
    s32 temp_t2;
    s32 var_s2;
    s32 var_s2_2;
    s64 temp_a1;
    s64 temp_s3_2;
    s64 var_a1;
    s64 var_s1;
    void *var_s0;

    temp_a7 = M2C_ERROR(/* Read from unset register $a5 */) - arg3;
    var_s1 = arg1;
    var_s0 = arg0;
    var_s2 = temp_a7;
    temp_s3 = gl_dgl_pixmodes.unk8 + ((gl_dgl_pixmodes.unk0 & 0xFFFF) * ((M2C_ERROR(/* Read from unset register $a4 */) - arg2) + 1)) + 0x1F;
    temp_t2 = (s32) (((u32) (temp_s3 >> 4) >> 0x1B) + temp_s3) >> 5;
    temp_s3_2 = temp_t2 * 4;
    if (temp_t2 < gl_dgl_pixmodes.unk4) {
        if (temp_a7 != -1) {
            temp_s6 = (gl_dgl_pixmodes.unk4 - temp_t2) * 4;
            temp_s4 = temp_t2 * 4;
            do {
                var_s2 -= 1;
                temp_a1 = var_s1;
                var_s1 = temp_s6 + (temp_s4 + var_s1);
                gl_mem_hton_long_array(var_s0, temp_a1, temp_s3_2);
                var_s0 += temp_s4;
            } while (var_s2 != -1);
        }
    } else {
        var_s2_2 = temp_a7;
        if (temp_a7 != -1) {
            temp_s4_2 = temp_t2 * 4;
            var_a1 = var_s1;
            do {
                var_s2_2 -= 1;
                gl_mem_hton_long_array(var_s0, var_a1, temp_s3_2);
                var_s0 += temp_s4_2;
                var_s1 += temp_s4_2;
                var_a1 = var_s1;
            } while (var_s2_2 != -1);
        }
    }
}

void gl_mem_hton_short_array(void *arg0, void *arg1, s64 arg2) {
    s16 temp_a2;
    s16 temp_at_2;
    s16 temp_v1;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_t1;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;
    void *var_a4;
    void *var_a5;
    void *var_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a6 = arg2 >> 1;
    temp_at = var_a6 - 1;
    if (var_a6 >= 5) {
        temp_a3 = (s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2;
        var_t1 = var_a6;
        if (temp_a3 & 1) {
            var_a0->unk0 = (s16) var_a1->unk0;
            var_a0->unk2 = (s16) var_a1->unk2;
            var_a0->unk4 = (s16) var_a1->unk4;
            var_a6 -= 4;
            temp_at_2 = var_a1->unk6;
            var_a1 += 8;
            var_a0 += 8;
            var_a0->unk-2 = temp_at_2;
            var_t1 = var_a6;
        }
        var_a5 = var_a0;
        if ((temp_a3 >> 1) != 0) {
            var_a3 = var_t1;
            var_a4 = var_a1;
            do {
                var_a5->unk0 = (s16) var_a4->unk0;
                var_a5->unk2 = (s16) var_a4->unk2;
                var_a5->unk4 = (s16) var_a4->unk4;
                var_a5->unk6 = (s16) var_a4->unk6;
                var_a5->unk8 = (s16) var_a4->unk8;
                var_a5->unkA = (s16) var_a4->unkA;
                temp_a2 = var_a4->unkC;
                var_a4 += 0x10;
                var_a5 += 0x10;
                var_a5->unk-4 = temp_a2;
                var_a3 -= 8;
                var_a5->unk-2 = (s16) var_a4->unk-2;
            } while (var_a3 >= 5);
            var_a0 = var_a5;
            var_a1 = var_a4;
            var_a6 = var_a3;
        }
    }
    var_a6_2 = var_a6 - 1;
    if (var_a6_2 >= 0) {
        temp_a5 = var_a6_2 + 1;
        var_a3_2 = temp_a5 & 3;
        var_t0 = var_a0;
        if (var_a3_2 != 0) {
            do {
                var_a6_2 -= 1;
                var_a1 += 2;
                var_a0 += 2;
                var_a3_2 -= 1;
                var_a0->unk-2 = (s16) var_a1->unk-2;
            } while (var_a3_2 != 0);
            var_t0 = var_a0;
        }
        if ((temp_a5 >> 2) != 0) {
            var_a3_3 = var_a6_2;
            var_a1_2 = var_t0;
            var_a0_2 = var_a1;
            do {
                var_a1_2->unk0 = (s16) var_a0_2->unk0;
                var_a1_2->unk2 = (s16) var_a0_2->unk2;
                temp_v1 = var_a0_2->unk4;
                var_a0_2 += 8;
                var_a1_2->unk4 = temp_v1;
                var_a1_2 += 8;
                var_a3_3 -= 4;
                var_a1_2->unk-2 = (s16) var_a0_2->unk-2;
            } while (var_a3_3 != -1);
        }
    }
}

void gl_mem_ntoh_short_array(void *arg0, void *arg1, s32 arg2) {
    s16 temp_a2;
    s16 temp_at_2;
    s16 temp_v1;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_t1;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;
    void *var_a4;
    void *var_a5;
    void *var_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a6 = arg2 >> 1;
    temp_at = var_a6 - 1;
    if (var_a6 >= 5) {
        temp_a3 = (s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2;
        var_t1 = var_a6;
        if (temp_a3 & 1) {
            var_a0->unk0 = (s16) var_a1->unk0;
            var_a0->unk2 = (s16) var_a1->unk2;
            var_a0->unk4 = (s16) var_a1->unk4;
            var_a6 -= 4;
            temp_at_2 = var_a1->unk6;
            var_a1 += 8;
            var_a0 += 8;
            var_a0->unk-2 = temp_at_2;
            var_t1 = var_a6;
        }
        var_a5 = var_a0;
        if ((temp_a3 >> 1) != 0) {
            var_a3 = var_t1;
            var_a4 = var_a1;
            do {
                var_a5->unk0 = (s16) var_a4->unk0;
                var_a5->unk2 = (s16) var_a4->unk2;
                var_a5->unk4 = (s16) var_a4->unk4;
                var_a5->unk6 = (s16) var_a4->unk6;
                var_a5->unk8 = (s16) var_a4->unk8;
                var_a5->unkA = (s16) var_a4->unkA;
                temp_a2 = var_a4->unkC;
                var_a4 += 0x10;
                var_a5 += 0x10;
                var_a5->unk-4 = temp_a2;
                var_a3 -= 8;
                var_a5->unk-2 = (s16) var_a4->unk-2;
            } while (var_a3 >= 5);
            var_a0 = var_a5;
            var_a1 = var_a4;
            var_a6 = var_a3;
        }
    }
    var_a6_2 = var_a6 - 1;
    if (var_a6_2 >= 0) {
        temp_a5 = var_a6_2 + 1;
        var_a3_2 = temp_a5 & 3;
        var_t0 = var_a0;
        if (var_a3_2 != 0) {
            do {
                var_a6_2 -= 1;
                var_a1 += 2;
                var_a0 += 2;
                var_a3_2 -= 1;
                var_a0->unk-2 = (s16) var_a1->unk-2;
            } while (var_a3_2 != 0);
            var_t0 = var_a0;
        }
        if ((temp_a5 >> 2) != 0) {
            var_a3_3 = var_a6_2;
            var_a1_2 = var_t0;
            var_a0_2 = var_a1;
            do {
                var_a1_2->unk0 = (s16) var_a0_2->unk0;
                var_a1_2->unk2 = (s16) var_a0_2->unk2;
                temp_v1 = var_a0_2->unk4;
                var_a0_2 += 8;
                var_a1_2->unk4 = temp_v1;
                var_a1_2 += 8;
                var_a3_3 -= 4;
                var_a1_2->unk-2 = (s16) var_a0_2->unk-2;
            } while (var_a3_3 != -1);
        }
    }
}

void gl_mem_hton_long_array(void *arg0, void *arg1, s64 arg2) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_t1;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;
    void *var_a4;
    void *var_a5;
    void *var_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a6 = arg2 >> 2;
    temp_at = var_a6 - 1;
    if (var_a6 >= 5) {
        temp_a3 = (s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2;
        var_t1 = var_a6;
        if (temp_a3 & 1) {
            var_a0->unk0 = (s32) var_a1->unk0;
            var_a0->unk4 = (s32) var_a1->unk4;
            var_a0->unk8 = (s32) var_a1->unk8;
            var_a6 -= 4;
            temp_at_2 = var_a1->unkC;
            var_a1 += 0x10;
            var_a0 += 0x10;
            var_a0->unk-4 = temp_at_2;
            var_t1 = var_a6;
        }
        var_a5 = var_a0;
        if ((temp_a3 >> 1) != 0) {
            var_a3 = var_t1;
            var_a4 = var_a1;
            do {
                var_a5->unk0 = (s32) var_a4->unk0;
                var_a5->unk4 = (s32) var_a4->unk4;
                var_a5->unk8 = (s32) var_a4->unk8;
                var_a5->unkC = (s32) var_a4->unkC;
                var_a5->unk10 = (s32) var_a4->unk10;
                var_a5->unk14 = (s32) var_a4->unk14;
                temp_a2 = var_a4->unk18;
                var_a4 += 0x20;
                var_a5 += 0x20;
                var_a5->unk-8 = temp_a2;
                var_a3 -= 8;
                var_a5->unk-4 = (s32) var_a4->unk-4;
            } while (var_a3 >= 5);
            var_a0 = var_a5;
            var_a1 = var_a4;
            var_a6 = var_a3;
        }
    }
    var_a6_2 = var_a6 - 1;
    if (var_a6_2 >= 0) {
        temp_a5 = var_a6_2 + 1;
        var_a3_2 = temp_a5 & 3;
        var_t0 = var_a0;
        if (var_a3_2 != 0) {
            do {
                var_a6_2 -= 1;
                var_a1 += 4;
                var_a0 += 4;
                var_a3_2 -= 1;
                var_a0->unk-4 = (s32) var_a1->unk-4;
            } while (var_a3_2 != 0);
            var_t0 = var_a0;
        }
        if ((temp_a5 >> 2) != 0) {
            var_a3_3 = var_a6_2;
            var_a1_2 = var_t0;
            var_a0_2 = var_a1;
            do {
                var_a1_2->unk0 = (s32) var_a0_2->unk0;
                var_a1_2->unk4 = (s32) var_a0_2->unk4;
                temp_v1 = var_a0_2->unk8;
                var_a0_2 += 0x10;
                var_a1_2->unk8 = temp_v1;
                var_a1_2 += 0x10;
                var_a3_3 -= 4;
                var_a1_2->unk-4 = (s32) var_a0_2->unk-4;
            } while (var_a3_3 != -1);
        }
    }
}

void gl_mem_ntoh_long_array(s32 *arg0, void *arg1, s64 arg2) {
    s32 *var_a0;
    s32 *var_a1_2;
    s32 *var_a5;
    s32 *var_t0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_t1;
    void *var_a0_2;
    void *var_a1;
    void *var_a4;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a6 = arg2 >> 2;
    temp_at = var_a6 - 1;
    if (var_a6 >= 5) {
        temp_a3 = (s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2;
        var_t1 = var_a6;
        if (temp_a3 & 1) {
            var_a0->unk0 = var_a1->unk0;
            var_a0->unk4 = (s32) var_a1->unk4;
            var_a0->unk8 = (s32) var_a1->unk8;
            var_a6 -= 4;
            temp_at_2 = var_a1->unkC;
            var_a1 += 0x10;
            var_a0 += 0x10;
            var_a0->unk-4 = temp_at_2;
            var_t1 = var_a6;
        }
        var_a5 = var_a0;
        if ((temp_a3 >> 1) != 0) {
            var_a3 = var_t1;
            var_a4 = var_a1;
            do {
                var_a5->unk0 = var_a4->unk0;
                var_a5->unk4 = (s32) var_a4->unk4;
                var_a5->unk8 = (s32) var_a4->unk8;
                var_a5->unkC = (s32) var_a4->unkC;
                var_a5->unk10 = (s32) var_a4->unk10;
                var_a5->unk14 = (s32) var_a4->unk14;
                temp_a2 = var_a4->unk18;
                var_a4 += 0x20;
                var_a5 += 0x20;
                var_a5->unk-8 = temp_a2;
                var_a3 -= 8;
                var_a5->unk-4 = (s32) var_a4->unk-4;
            } while (var_a3 >= 5);
            var_a0 = var_a5;
            var_a1 = var_a4;
            var_a6 = var_a3;
        }
    }
    var_a6_2 = var_a6 - 1;
    if (var_a6_2 >= 0) {
        temp_a5 = var_a6_2 + 1;
        var_a3_2 = temp_a5 & 3;
        var_t0 = var_a0;
        if (var_a3_2 != 0) {
            do {
                var_a6_2 -= 1;
                var_a1 += 4;
                var_a0 += 4;
                var_a3_2 -= 1;
                var_a0->unk-4 = (s32) var_a1->unk-4;
            } while (var_a3_2 != 0);
            var_t0 = var_a0;
        }
        if ((temp_a5 >> 2) != 0) {
            var_a3_3 = var_a6_2;
            var_a1_2 = var_t0;
            var_a0_2 = var_a1;
            do {
                var_a1_2->unk0 = var_a0_2->unk0;
                var_a1_2->unk4 = (s32) var_a0_2->unk4;
                temp_v1 = var_a0_2->unk8;
                var_a0_2 += 0x10;
                var_a1_2->unk8 = temp_v1;
                var_a1_2 += 0x10;
                var_a3_3 -= 4;
                var_a1_2->unk-4 = (s32) var_a0_2->unk-4;
            } while (var_a3_3 != -1);
        }
    }
}

void gl_mem_hton_float_array(void *arg0, void *arg1, s32 arg2) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_t1;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;
    void *var_a4;
    void *var_a5;
    void *var_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a6 = arg2 >> 2;
    temp_at = var_a6 - 1;
    if (var_a6 >= 5) {
        temp_a3 = (s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2;
        var_t1 = var_a6;
        if (temp_a3 & 1) {
            var_a0->unk0 = (f32) var_a1->unk0;
            var_a0->unk4 = (f32) var_a1->unk4;
            var_a0->unk8 = (f32) var_a1->unk8;
            var_a6 -= 4;
            temp_f0 = var_a1->unkC;
            var_a1 += 0x10;
            var_a0 += 0x10;
            var_a0->unk-4 = temp_f0;
            var_t1 = var_a6;
        }
        var_a5 = var_a0;
        if ((temp_a3 >> 1) != 0) {
            var_a3 = var_t1;
            var_a4 = var_a1;
            do {
                var_a5->unk0 = (f32) var_a4->unk0;
                var_a5->unk4 = (f32) var_a4->unk4;
                var_a5->unk8 = (f32) var_a4->unk8;
                var_a5->unkC = (f32) var_a4->unkC;
                var_a5->unk10 = (f32) var_a4->unk10;
                var_a5->unk14 = (f32) var_a4->unk14;
                temp_f1 = var_a4->unk18;
                var_a4 += 0x20;
                var_a5 += 0x20;
                var_a5->unk-8 = temp_f1;
                var_a3 -= 8;
                var_a5->unk-4 = (f32) var_a4->unk-4;
            } while (var_a3 >= 5);
            var_a0 = var_a5;
            var_a1 = var_a4;
            var_a6 = var_a3;
        }
    }
    var_a6_2 = var_a6 - 1;
    if (var_a6_2 >= 0) {
        temp_a5 = var_a6_2 + 1;
        var_a3_2 = temp_a5 & 3;
        var_t0 = var_a0;
        if (var_a3_2 != 0) {
            do {
                var_a6_2 -= 1;
                var_a1 += 4;
                var_a0 += 4;
                var_a3_2 -= 1;
                var_a0->unk-4 = (f32) var_a1->unk-4;
            } while (var_a3_2 != 0);
            var_t0 = var_a0;
        }
        if ((temp_a5 >> 2) != 0) {
            var_a3_3 = var_a6_2;
            var_a1_2 = var_t0;
            var_a0_2 = var_a1;
            do {
                var_a1_2->unk0 = (f32) var_a0_2->unk0;
                var_a1_2->unk4 = (f32) var_a0_2->unk4;
                temp_f2 = var_a0_2->unk8;
                var_a0_2 += 0x10;
                var_a1_2->unk8 = temp_f2;
                var_a1_2 += 0x10;
                var_a3_3 -= 4;
                var_a1_2->unk-4 = (f32) var_a0_2->unk-4;
            } while (var_a3_3 != -1);
        }
    }
}

void gl_mem_ntoh_float_array(void *arg0, void *arg1, s32 arg2) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_t1;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;
    void *var_a4;
    void *var_a5;
    void *var_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a6 = arg2 >> 2;
    temp_at = var_a6 - 1;
    if (var_a6 >= 5) {
        temp_a3 = (s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2;
        var_t1 = var_a6;
        if (temp_a3 & 1) {
            var_a0->unk0 = (f32) var_a1->unk0;
            var_a0->unk4 = (f32) var_a1->unk4;
            var_a0->unk8 = (f32) var_a1->unk8;
            var_a6 -= 4;
            temp_f0 = var_a1->unkC;
            var_a1 += 0x10;
            var_a0 += 0x10;
            var_a0->unk-4 = temp_f0;
            var_t1 = var_a6;
        }
        var_a5 = var_a0;
        if ((temp_a3 >> 1) != 0) {
            var_a3 = var_t1;
            var_a4 = var_a1;
            do {
                var_a5->unk0 = (f32) var_a4->unk0;
                var_a5->unk4 = (f32) var_a4->unk4;
                var_a5->unk8 = (f32) var_a4->unk8;
                var_a5->unkC = (f32) var_a4->unkC;
                var_a5->unk10 = (f32) var_a4->unk10;
                var_a5->unk14 = (f32) var_a4->unk14;
                temp_f1 = var_a4->unk18;
                var_a4 += 0x20;
                var_a5 += 0x20;
                var_a5->unk-8 = temp_f1;
                var_a3 -= 8;
                var_a5->unk-4 = (f32) var_a4->unk-4;
            } while (var_a3 >= 5);
            var_a0 = var_a5;
            var_a1 = var_a4;
            var_a6 = var_a3;
        }
    }
    var_a6_2 = var_a6 - 1;
    if (var_a6_2 >= 0) {
        temp_a5 = var_a6_2 + 1;
        var_a3_2 = temp_a5 & 3;
        var_t0 = var_a0;
        if (var_a3_2 != 0) {
            do {
                var_a6_2 -= 1;
                var_a1 += 4;
                var_a0 += 4;
                var_a3_2 -= 1;
                var_a0->unk-4 = (f32) var_a1->unk-4;
            } while (var_a3_2 != 0);
            var_t0 = var_a0;
        }
        if ((temp_a5 >> 2) != 0) {
            var_a3_3 = var_a6_2;
            var_a1_2 = var_t0;
            var_a0_2 = var_a1;
            do {
                var_a1_2->unk0 = (f32) var_a0_2->unk0;
                var_a1_2->unk4 = (f32) var_a0_2->unk4;
                temp_f2 = var_a0_2->unk8;
                var_a0_2 += 0x10;
                var_a1_2->unk8 = temp_f2;
                var_a1_2 += 0x10;
                var_a3_3 -= 4;
                var_a1_2->unk-4 = (f32) var_a0_2->unk-4;
            } while (var_a3_3 != -1);
        }
    }
}

void gl_mem_hton_double_array(void *arg0, void *arg1, s32 arg2) {
    s32 var_s2;
    s32 var_s2_2;
    s64 var_ra;
    s64 var_s4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a1;
    void *var_s0;
    void *var_s1;
    void *var_s3;
    void *var_s4_2;
    void *var_s5;
    void *var_s6;
    void *var_s7;
    void *var_s8;

    var_s4 = saved_reg_s4;
    var_ra = saved_reg_ra;
    var_s1 = arg1;
    var_s0 = arg0;
    var_s2 = arg2 >> 3;
    if (var_s2 >= 5) {
        var_s7 = var_s1 + 0x18;
        var_s5 = var_s0 + 0x18;
        var_s8 = var_s1 + 0x10;
        var_s4_2 = var_s0 + 0x10;
        var_s6 = var_s1 + 8;
        var_s3 = var_s0 + 8;
        do {
            temp_a0 = var_s0;
            var_s0 += 0x20;
            memcpy(temp_a0, var_s1, 8U);
            var_s2 -= 4;
            temp_a0_2 = var_s3;
            var_s3 += 0x20;
            memcpy(temp_a0_2, var_s6, 8U);
            var_s1 += 0x20;
            memcpy(var_s4_2, var_s8, 8U);
            var_s4_2 += 0x20;
            var_s8 += 0x20;
            temp_a1 = var_s7;
            var_s7 += 0x20;
            temp_a0_3 = var_s5;
            var_s5 += 0x20;
            memcpy(temp_a0_3, temp_a1, 8U);
            var_s6 += 0x20;
        } while (var_s2 >= 5);
        var_s4 = unksp38;
        var_ra = unksp40;
    }
    var_s2_2 = var_s2 - 1;
    if (var_s2_2 >= 0) {
        unksp40 = var_ra;
        unksp38 = var_s4;
        do {
            var_s2_2 -= 1;
            temp_a0_4 = var_s0;
            var_s0 += 8;
            memcpy(temp_a0_4, var_s1, 8U);
            var_s1 += 8;
        } while (var_s2_2 != -1);
    }
}

void gl_mem_ntoh_double_array(void *arg0, void *arg1, s32 arg2) {
    s32 var_s2;
    s32 var_s2_2;
    s64 var_ra;
    s64 var_s4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a1;
    void *var_s0;
    void *var_s1;
    void *var_s3;
    void *var_s4_2;
    void *var_s5;
    void *var_s6;
    void *var_s7;
    void *var_s8;

    var_s4 = saved_reg_s4;
    var_ra = saved_reg_ra;
    var_s1 = arg1;
    var_s0 = arg0;
    var_s2 = arg2 >> 3;
    if (var_s2 >= 5) {
        var_s7 = var_s1 + 0x18;
        var_s5 = var_s0 + 0x18;
        var_s8 = var_s1 + 0x10;
        var_s4_2 = var_s0 + 0x10;
        var_s6 = var_s1 + 8;
        var_s3 = var_s0 + 8;
        do {
            temp_a0 = var_s0;
            var_s0 += 0x20;
            memcpy(temp_a0, var_s1, 8U);
            var_s2 -= 4;
            temp_a0_2 = var_s3;
            var_s3 += 0x20;
            memcpy(temp_a0_2, var_s6, 8U);
            var_s1 += 0x20;
            memcpy(var_s4_2, var_s8, 8U);
            var_s4_2 += 0x20;
            var_s8 += 0x20;
            temp_a1 = var_s7;
            var_s7 += 0x20;
            temp_a0_3 = var_s5;
            var_s5 += 0x20;
            memcpy(temp_a0_3, temp_a1, 8U);
            var_s6 += 0x20;
        } while (var_s2 >= 5);
        var_s4 = unksp38;
        var_ra = unksp40;
    }
    var_s2_2 = var_s2 - 1;
    if (var_s2_2 >= 0) {
        unksp40 = var_ra;
        unksp38 = var_s4;
        do {
            var_s2_2 -= 1;
            temp_a0_4 = var_s0;
            var_s0 += 8;
            memcpy(temp_a0_4, var_s1, 8U);
            var_s1 += 8;
        } while (var_s2_2 != -1);
    }
}

void gl_mem_hton_fontchar_array(void *arg0, void *arg1, u32 arg2) {
    s16 temp_at;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_a3;
    s32 var_a7;
    s8 temp_a2;
    s8 temp_at_2;
    u32 var_a4;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a4 = arg2 >> 3;
    if ((s32) var_a4 >= 5) {
        do {
            var_a0->unk0 = (u16) var_a1->unk0;
            var_a0->unk2 = (u8) var_a1->unk2;
            var_a0->unk3 = (u8) var_a1->unk3;
            var_a0->unk4 = (s8) var_a1->unk4;
            var_a0->unk5 = (s8) var_a1->unk5;
            var_a0->unk6 = (s16) var_a1->unk6;
            var_a0->unk8 = (u16) var_a1->unk8;
            var_a0->unkA = (u8) var_a1->unkA;
            var_a0->unkB = (u8) var_a1->unkB;
            var_a0->unkC = (s8) var_a1->unkC;
            var_a0->unkD = (s8) var_a1->unkD;
            var_a0->unkE = (s16) var_a1->unkE;
            var_a0->unk10 = (u16) var_a1->unk10;
            var_a0->unk12 = (u8) var_a1->unk12;
            var_a0->unk13 = (u8) var_a1->unk13;
            var_a0->unk14 = (s8) var_a1->unk14;
            var_a0->unk15 = (s8) var_a1->unk15;
            var_a0->unk16 = (s16) var_a1->unk16;
            var_a0->unk18 = (u16) var_a1->unk18;
            var_a0->unk1A = (u8) var_a1->unk1A;
            var_a0->unk1B = (u8) var_a1->unk1B;
            var_a0->unk1C = (s8) var_a1->unk1C;
            temp_a2 = var_a1->unk1D;
            var_a1 += 0x20;
            var_a0 += 0x20;
            var_a0->unk-3 = temp_a2;
            var_a4 -= 4;
            var_a0->unk-2 = (s16) var_a1->unk-2;
        } while ((s32) var_a4 >= 5);
    }
    temp_a4 = var_a4 - 1;
    if (temp_a4 >= 0) {
        temp_a3 = temp_a4 + 1;
        var_a7 = temp_a4;
        if (temp_a3 & 1) {
            var_a0->unk0 = (u16) var_a1->unk0;
            var_a0->unk2 = (u8) var_a1->unk2;
            var_a0->unk3 = (u8) var_a1->unk3;
            var_a0->unk4 = (s8) var_a1->unk4;
            var_a0->unk5 = (s8) var_a1->unk5;
            temp_at = var_a1->unk6;
            var_a1 += 8;
            var_a0 += 8;
            var_a0->unk-2 = temp_at;
            var_a7 = temp_a4 - 1;
        }
        var_a0_2 = var_a0;
        if ((temp_a3 >> 1) != 0) {
            var_a3 = var_a7;
            var_a1_2 = var_a1;
            do {
                var_a0_2->unk0 = (u16) var_a1_2->unk0;
                var_a0_2->unk2 = (u8) var_a1_2->unk2;
                var_a0_2->unk3 = (u8) var_a1_2->unk3;
                var_a0_2->unk4 = (s8) var_a1_2->unk4;
                var_a0_2->unk5 = (s8) var_a1_2->unk5;
                var_a0_2->unk6 = (s16) var_a1_2->unk6;
                var_a0_2->unk8 = (u16) var_a1_2->unk8;
                var_a0_2->unkA = (u8) var_a1_2->unkA;
                var_a0_2->unkB = (u8) var_a1_2->unkB;
                var_a0_2->unkC = (s8) var_a1_2->unkC;
                temp_at_2 = var_a1_2->unkD;
                var_a1_2 += 0x10;
                var_a0_2->unkD = temp_at_2;
                var_a0_2 += 0x10;
                var_a3 -= 2;
                var_a0_2->unk-2 = (s16) var_a1_2->unk-2;
            } while (var_a3 != -1);
        }
    }
}

void gl_mem_hton_lfontchar_array(void *arg0, void *arg1, u32 arg2) {
    s16 temp_at;
    s16 temp_v0;
    s16 temp_v1;
    s32 temp_a6;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4_2;
    s32 var_a7;
    u32 var_a4;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a4 = arg2 / 20U;
    M2C_TRAP_IF(0x14 == 0);
    if ((s32) var_a4 >= 5) {
        do {
            var_a0->unk0 = (s32) var_a1->unk0;
            var_a0->unk4 = (s32) var_a1->unk4;
            var_a0->unk8 = (s16) var_a1->unk8;
            var_a0->unkA = (s16) var_a1->unkA;
            var_a0->unkC = (s16) var_a1->unkC;
            var_a0->unkE = (s16) var_a1->unkE;
            var_a0->unk10 = (s16) var_a1->unk10;
            var_a0->unk12 = (s16) var_a1->unk12;
            var_a0->unk14 = (s32) var_a1->unk14;
            var_a0->unk18 = (s32) var_a1->unk18;
            var_a0->unk1C = (s16) var_a1->unk1C;
            var_a0->unk1E = (s16) var_a1->unk1E;
            var_a0->unk20 = (s16) var_a1->unk20;
            var_a0->unk22 = (s16) var_a1->unk22;
            var_a0->unk24 = (s16) var_a1->unk24;
            var_a0->unk26 = (s16) var_a1->unk26;
            var_a0->unk28 = (s32) var_a1->unk28;
            var_a0->unk2C = (s32) var_a1->unk2C;
            var_a0->unk30 = (s16) var_a1->unk30;
            var_a0->unk32 = (s16) var_a1->unk32;
            var_a0->unk34 = (s16) var_a1->unk34;
            var_a0->unk36 = (s16) var_a1->unk36;
            var_a0->unk38 = (s16) var_a1->unk38;
            var_a0->unk3A = (s16) var_a1->unk3A;
            var_a0->unk3C = (s32) var_a1->unk3C;
            var_a0->unk40 = (s32) var_a1->unk40;
            var_a0->unk44 = (s16) var_a1->unk44;
            var_a0->unk46 = (s16) var_a1->unk46;
            var_a0->unk48 = (s16) var_a1->unk48;
            var_a0->unk4A = (s16) var_a1->unk4A;
            temp_at = var_a1->unk4C;
            var_a1 += 0x50;
            var_a0 += 0x50;
            var_a0->unk-4 = temp_at;
            var_a4 -= 4;
            var_a0->unk-2 = (s16) var_a1->unk-2;
        } while ((s32) var_a4 >= 5);
    }
    var_a4_2 = var_a4 - 1;
    if (var_a4_2 >= 0) {
        temp_a6 = var_a4_2 + 1;
        var_a3 = temp_a6 & 3;
        var_a7 = var_a4_2;
        if (var_a3 != 0) {
            do {
                var_a0->unk0 = (s32) var_a1->unk0;
                var_a0->unk4 = (s32) var_a1->unk4;
                var_a0->unk8 = (s16) var_a1->unk8;
                var_a0->unkA = (s16) var_a1->unkA;
                var_a0->unkC = (s16) var_a1->unkC;
                var_a0->unkE = (s16) var_a1->unkE;
                temp_v0 = var_a1->unk10;
                var_a4_2 -= 1;
                var_a1 += 0x14;
                var_a0->unk10 = temp_v0;
                var_a0 += 0x14;
                var_a3 -= 1;
                var_a0->unk-2 = (s16) var_a1->unk-2;
            } while (var_a3 != 0);
            var_a7 = var_a4_2;
        }
        var_a0_2 = var_a0;
        if ((temp_a6 >> 2) != 0) {
            var_a3_2 = var_a7;
            var_a1_2 = var_a1;
            do {
                var_a0_2->unk0 = (s32) var_a1_2->unk0;
                var_a0_2->unk4 = (s32) var_a1_2->unk4;
                var_a0_2->unk8 = (s16) var_a1_2->unk8;
                var_a0_2->unkA = (s16) var_a1_2->unkA;
                var_a0_2->unkC = (s16) var_a1_2->unkC;
                var_a0_2->unkE = (s16) var_a1_2->unkE;
                var_a0_2->unk10 = (s16) var_a1_2->unk10;
                var_a0_2->unk12 = (s16) var_a1_2->unk12;
                var_a0_2->unk14 = (s32) var_a1_2->unk14;
                var_a0_2->unk18 = (s32) var_a1_2->unk18;
                var_a0_2->unk1C = (s16) var_a1_2->unk1C;
                var_a0_2->unk1E = (s16) var_a1_2->unk1E;
                var_a0_2->unk20 = (s16) var_a1_2->unk20;
                var_a0_2->unk22 = (s16) var_a1_2->unk22;
                var_a0_2->unk24 = (s16) var_a1_2->unk24;
                var_a0_2->unk26 = (s16) var_a1_2->unk26;
                var_a0_2->unk28 = (s32) var_a1_2->unk28;
                var_a0_2->unk2C = (s32) var_a1_2->unk2C;
                var_a0_2->unk30 = (s16) var_a1_2->unk30;
                var_a0_2->unk32 = (s16) var_a1_2->unk32;
                var_a0_2->unk34 = (s16) var_a1_2->unk34;
                var_a0_2->unk36 = (s16) var_a1_2->unk36;
                var_a0_2->unk38 = (s16) var_a1_2->unk38;
                var_a0_2->unk3A = (s16) var_a1_2->unk3A;
                var_a0_2->unk3C = (s32) var_a1_2->unk3C;
                var_a0_2->unk40 = (s32) var_a1_2->unk40;
                var_a0_2->unk44 = (s16) var_a1_2->unk44;
                var_a0_2->unk46 = (s16) var_a1_2->unk46;
                var_a0_2->unk48 = (s16) var_a1_2->unk48;
                var_a0_2->unk4A = (s16) var_a1_2->unk4A;
                temp_v1 = var_a1_2->unk4C;
                var_a1_2 += 0x50;
                var_a0_2->unk4C = temp_v1;
                var_a0_2 += 0x50;
                var_a3_2 -= 4;
                var_a0_2->unk-2 = (s16) var_a1_2->unk-2;
            } while (var_a3_2 != -1);
        }
    }
}

void gl_mem_ntoh_fmglyphinfo_array(void *arg0, void *arg1, u32 arg2) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a6;
    s32 temp_at;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4_2;
    s32 var_a7;
    u32 var_a4;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a1_2;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a4 = arg2 >> 5;
    if ((s32) var_a4 >= 5) {
        do {
            var_a0->unk0 = (s32) var_a1->unk0;
            var_a0->unk4 = (s32) var_a1->unk4;
            var_a0->unk8 = (s32) var_a1->unk8;
            var_a0->unkC = (s32) var_a1->unkC;
            var_a0->unk10 = (f32) var_a1->unk10;
            var_a0->unk14 = (f32) var_a1->unk14;
            var_a0->unk18 = (s32) var_a1->unk18;
            var_a0->unk1C = (s32) var_a1->unk1C;
            var_a0->unk20 = (s32) var_a1->unk20;
            var_a0->unk24 = (s32) var_a1->unk24;
            var_a0->unk28 = (s32) var_a1->unk28;
            var_a0->unk2C = (s32) var_a1->unk2C;
            var_a0->unk30 = (f32) var_a1->unk30;
            var_a0->unk34 = (f32) var_a1->unk34;
            var_a0->unk38 = (s32) var_a1->unk38;
            var_a0->unk3C = (s32) var_a1->unk3C;
            var_a0->unk40 = (s32) var_a1->unk40;
            var_a0->unk44 = (s32) var_a1->unk44;
            var_a0->unk48 = (s32) var_a1->unk48;
            var_a0->unk4C = (s32) var_a1->unk4C;
            var_a0->unk50 = (f32) var_a1->unk50;
            var_a0->unk54 = (f32) var_a1->unk54;
            var_a0->unk58 = (s32) var_a1->unk58;
            var_a0->unk5C = (s32) var_a1->unk5C;
            var_a0->unk60 = (s32) var_a1->unk60;
            var_a0->unk64 = (s32) var_a1->unk64;
            var_a0->unk68 = (s32) var_a1->unk68;
            var_a0->unk6C = (s32) var_a1->unk6C;
            var_a0->unk70 = (f32) var_a1->unk70;
            var_a0->unk74 = (f32) var_a1->unk74;
            temp_a2 = var_a1->unk78;
            var_a1 += 0x80;
            var_a0 += 0x80;
            var_a0->unk-8 = temp_a2;
            var_a4 -= 4;
            var_a0->unk-4 = (s32) var_a1->unk-4;
        } while ((s32) var_a4 >= 5);
    }
    var_a4_2 = var_a4 - 1;
    if (var_a4_2 >= 0) {
        temp_a6 = var_a4_2 + 1;
        var_a3 = temp_a6 & 3;
        var_a7 = var_a4_2;
        if (var_a3 != 0) {
            do {
                var_a0->unk0 = (s32) var_a1->unk0;
                var_a0->unk4 = (s32) var_a1->unk4;
                var_a0->unk8 = (s32) var_a1->unk8;
                var_a0->unkC = (s32) var_a1->unkC;
                var_a0->unk10 = (f32) var_a1->unk10;
                var_a0->unk14 = (f32) var_a1->unk14;
                temp_at = var_a1->unk18;
                var_a4_2 -= 1;
                var_a1 += 0x20;
                var_a0->unk18 = temp_at;
                var_a0 += 0x20;
                var_a3 -= 1;
                var_a0->unk-4 = (s32) var_a1->unk-4;
            } while (var_a3 != 0);
            var_a7 = var_a4_2;
        }
        var_a0_2 = var_a0;
        if ((temp_a6 >> 2) != 0) {
            var_a3_2 = var_a7;
            var_a1_2 = var_a1;
            do {
                var_a0_2->unk0 = (s32) var_a1_2->unk0;
                var_a0_2->unk4 = (s32) var_a1_2->unk4;
                var_a0_2->unk8 = (s32) var_a1_2->unk8;
                var_a0_2->unkC = (s32) var_a1_2->unkC;
                var_a0_2->unk10 = (f32) var_a1_2->unk10;
                var_a0_2->unk14 = (f32) var_a1_2->unk14;
                var_a0_2->unk18 = (s32) var_a1_2->unk18;
                var_a0_2->unk1C = (s32) var_a1_2->unk1C;
                var_a0_2->unk20 = (s32) var_a1_2->unk20;
                var_a0_2->unk24 = (s32) var_a1_2->unk24;
                var_a0_2->unk28 = (s32) var_a1_2->unk28;
                var_a0_2->unk2C = (s32) var_a1_2->unk2C;
                var_a0_2->unk30 = (f32) var_a1_2->unk30;
                var_a0_2->unk34 = (f32) var_a1_2->unk34;
                var_a0_2->unk38 = (s32) var_a1_2->unk38;
                var_a0_2->unk3C = (s32) var_a1_2->unk3C;
                var_a0_2->unk40 = (s32) var_a1_2->unk40;
                var_a0_2->unk44 = (s32) var_a1_2->unk44;
                var_a0_2->unk48 = (s32) var_a1_2->unk48;
                var_a0_2->unk4C = (s32) var_a1_2->unk4C;
                var_a0_2->unk50 = (f32) var_a1_2->unk50;
                var_a0_2->unk54 = (f32) var_a1_2->unk54;
                var_a0_2->unk58 = (s32) var_a1_2->unk58;
                var_a0_2->unk5C = (s32) var_a1_2->unk5C;
                var_a0_2->unk60 = (s32) var_a1_2->unk60;
                var_a0_2->unk64 = (s32) var_a1_2->unk64;
                var_a0_2->unk68 = (s32) var_a1_2->unk68;
                var_a0_2->unk6C = (s32) var_a1_2->unk6C;
                var_a0_2->unk70 = (f32) var_a1_2->unk70;
                var_a0_2->unk74 = (f32) var_a1_2->unk74;
                temp_a2_2 = var_a1_2->unk78;
                var_a1_2 += 0x80;
                var_a0_2->unk78 = temp_a2_2;
                var_a0_2 += 0x80;
                var_a3_2 -= 4;
                var_a0_2->unk-4 = (s32) var_a1_2->unk-4;
            } while (var_a3_2 != -1);
        }
    }
}

void gl_mem_ntoh_fmfontinfo_array(void *arg0, void *arg1, u32 arg2) {
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_a2;
    s32 temp_v0;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_v0_2;
    s64 var_ra;
    s64 var_s2;
    s64 var_s3;
    s64 var_s4;
    s64 var_s5;
    s64 var_s6;
    s64 var_s7;
    s64 var_s8;
    u32 temp_lo;
    void *temp_a0;
    void *temp_a1;
    void *var_s0;
    void *var_s1;
    void *var_s2_2;
    void *var_s2_3;
    void *var_s3_2;
    void *var_s3_3;
    void *var_s4_2;
    void *var_s4_3;
    void *var_s5_2;
    void *var_s5_3;
    void *var_s6_2;
    void *var_s6_3;
    void *var_s7_2;
    void *var_s7_3;
    void *var_s8_2;
    void *var_s8_3;

    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_s5 = saved_reg_s5;
    var_s6 = saved_reg_s6;
    var_s7 = saved_reg_s7;
    var_ra = saved_reg_ra;
    var_s8 = saved_reg_fp;
    temp_lo = arg2 / 216U;
    var_s0 = arg0;
    M2C_TRAP_IF(0xD8 == 0);
    var_s1 = arg1;
    spD8 = (s64) temp_lo;
    if ((s32) temp_lo >= 5) {
        sp80 = var_s1 + 0x2A0;
        sp38 = var_s0 + 0x1C0;
        sp18 = var_s1 + 0x1D0;
        sp78 = var_s0 + 0x290;
        sp70 = var_s0 + 0x1D0;
        sp20 = var_s1 + 0x1C8;
        spC8 = var_s1 + 0x290;
        sp88 = var_s0 + 0x298;
        sp90 = var_s1 + 0x298;
        sp98 = var_s0 + 0x2A0;
        sp40 = var_s1 + 0x1B8;
        spC0 = var_s0 + 0x1B8;
        sp50 = var_s1 + 0xF8;
        spD0 = var_s0 + 0xF8;
        var_s8_2 = var_s1 + 0x20;
        spA8 = var_s0 + 0xE8;
        var_s4_2 = var_s1 + 0x18;
        spB0 = var_s1 + 0xE8;
        var_s5_2 = var_s1 + 0x10;
        sp60 = var_s1 + 0xF0;
        var_s7_2 = var_s0 + 0x10;
        spB8 = var_s0 + 0xF0;
        var_s6_2 = var_s1 + 8;
        spE0 = var_s0 + 8;
        sp28 = var_s1 + 0x2A8;
        spA0 = var_s0 + 0x2A8;
        sp48 = var_s1 + 0x1C0;
        sp58 = var_s0 + 0x1C8;
        sp68 = var_s1 + 0xE0;
        var_s3_2 = var_s0 + 0x20;
        sp30 = var_s0 + 0xE0;
        var_s2_2 = var_s0 + 0x18;
        do {
            var_s0->unk0 = (s32) var_s1->unk0;
            var_s0->unk4 = (s32) var_s1->unk4;
            memcpy((void *) spE0, var_s6_2, 8U);
            memcpy(var_s7_2, var_s5_2, 8U);
            memcpy(var_s2_2, var_s4_2, 8U);
            memcpy(var_s3_2, var_s8_2, 8U);
            var_s0->unk28 = (s32) var_s1->unk28;
            var_s0->unk2C = (s32) var_s1->unk2C;
            var_s0->unk30 = (s32) var_s1->unk30;
            var_s0->unk34 = (s32) var_s1->unk34;
            var_s0->unk38 = (s32) var_s1->unk38;
            var_s0->unk3C = (s32) var_s1->unk3C;
            var_s0->unk40 = (s32) var_s1->unk40;
            var_s0->unk44 = (s32) var_s1->unk44;
            var_s0->unk48 = (s32) var_s1->unk48;
            var_s0->unk4C = (s32) var_s1->unk4C;
            var_s0->unk50 = (s32) var_s1->unk50;
            var_s0->unk54 = (s32) var_s1->unk54;
            var_s0->unk58 = (s32) var_s1->unk58;
            var_s0->unk5C = (s32) var_s1->unk5C;
            var_s0->unk60 = (s32) var_s1->unk60;
            var_s0->unk64 = (s32) var_s1->unk64;
            var_s0->unkD8 = (s32) var_s1->unkD8;
            var_s0->unkDC = (s32) var_s1->unkDC;
            memcpy((void *) sp30, (void *) sp68, 8U);
            memcpy((void *) spA8, (void *) spB0, 8U);
            memcpy((void *) spB8, (void *) sp60, 8U);
            memcpy((void *) spD0, (void *) sp50, 8U);
            var_s0->unk100 = (s32) var_s1->unk100;
            var_s0->unk104 = (s32) var_s1->unk104;
            var_s0->unk108 = (s32) var_s1->unk108;
            var_s0->unk10C = (s32) var_s1->unk10C;
            var_s0->unk110 = (s32) var_s1->unk110;
            var_s0->unk114 = (s32) var_s1->unk114;
            var_s0->unk118 = (s32) var_s1->unk118;
            var_s0->unk11C = (s32) var_s1->unk11C;
            var_s0->unk120 = (s32) var_s1->unk120;
            var_s0->unk124 = (s32) var_s1->unk124;
            var_s0->unk128 = (s32) var_s1->unk128;
            var_s0->unk12C = (s32) var_s1->unk12C;
            var_s0->unk130 = (s32) var_s1->unk130;
            var_s0->unk134 = (s32) var_s1->unk134;
            var_s0->unk138 = (s32) var_s1->unk138;
            var_s0->unk13C = (s32) var_s1->unk13C;
            var_s0->unk1B0 = (s32) var_s1->unk1B0;
            var_s0->unk1B4 = (s32) var_s1->unk1B4;
            memcpy((void *) spC0, (void *) sp40, 8U);
            memcpy((void *) sp38, (void *) sp48, 8U);
            memcpy((void *) sp58, (void *) sp20, 8U);
            memcpy((void *) sp70, (void *) sp18, 8U);
            var_s2_2 += 0x360;
            var_s0->unk1D8 = (s32) var_s1->unk1D8;
            var_s0->unk1DC = (s32) var_s1->unk1DC;
            var_s0->unk1E0 = (s32) var_s1->unk1E0;
            var_s0->unk1E4 = (s32) var_s1->unk1E4;
            var_s0->unk1E8 = (s32) var_s1->unk1E8;
            var_s0->unk1EC = (s32) var_s1->unk1EC;
            var_s0->unk1F0 = (s32) var_s1->unk1F0;
            var_s0->unk1F4 = (s32) var_s1->unk1F4;
            var_s0->unk1F8 = (s32) var_s1->unk1F8;
            var_s0->unk1FC = (s32) var_s1->unk1FC;
            var_s0->unk200 = (s32) var_s1->unk200;
            var_s0->unk204 = (s32) var_s1->unk204;
            var_s0->unk208 = (s32) var_s1->unk208;
            var_s0->unk20C = (s32) var_s1->unk20C;
            var_s0->unk210 = (s32) var_s1->unk210;
            var_s0->unk214 = (s32) var_s1->unk214;
            var_s0->unk288 = (s32) var_s1->unk288;
            var_s0->unk28C = (s32) var_s1->unk28C;
            memcpy((void *) sp78, (void *) spC8, 8U);
            memcpy((void *) sp88, (void *) sp90, 8U);
            var_s8_2 += 0x360;
            memcpy((void *) sp98, (void *) sp80, 8U);
            var_s5_2 += 0x360;
            memcpy((void *) spA0, (void *) sp28, 8U);
            var_s3_2 += 0x360;
            var_s0->unk2B0 = (s32) var_s1->unk2B0;
            var_s0->unk2B4 = (s32) var_s1->unk2B4;
            sp68 += 0x360;
            sp50 += 0x360;
            sp20 += 0x360;
            sp90 += 0x360;
            var_s7_2 += 0x360;
            var_s4_2 += 0x360;
            spE0 += 0x360;
            var_s6_2 += 0x360;
            spA8 += 0x360;
            var_s0->unk2B8 = (s32) var_s1->unk2B8;
            temp_v0 = var_s1->unk2BC;
            var_s1 += 0x360;
            var_s0->unk2BC = temp_v0;
            spC0 += 0x360;
            sp60 += 0x360;
            var_s0 += 0x360;
            sp48 += 0x360;
            sp70 += 0x360;
            spC8 += 0x360;
            sp98 += 0x360;
            sp28 += 0x360;
            var_s0->unk-A0 = (s32) var_s1->unk-A0;
            spB0 += 0x360;
            sp30 += 0x360;
            var_s0->unk-9C = (s32) var_s1->unk-9C;
            sp40 += 0x360;
            var_s0->unk-98 = (s32) var_s1->unk-98;
            sp18 += 0x360;
            var_s0->unk-94 = (s32) var_s1->unk-94;
            var_s0->unk-90 = (s32) var_s1->unk-90;
            sp80 += 0x360;
            spD0 += 0x360;
            var_s0->unk-8C = (s32) var_s1->unk-8C;
            sp58 += 0x360;
            spB8 += 0x360;
            var_s0->unk-88 = (s32) var_s1->unk-88;
            sp38 += 0x360;
            var_s0->unk-84 = (s32) var_s1->unk-84;
            sp78 += 0x360;
            var_s0->unk-80 = (s32) var_s1->unk-80;
            sp88 += 0x360;
            var_s0->unk-7C = (s32) var_s1->unk-7C;
            spA0 += 0x360;
            temp_at = spD8 - 4;
            var_s0->unk-78 = (s32) var_s1->unk-78;
            spD8 = temp_at;
            var_s0->unk-74 = (s32) var_s1->unk-74;
        } while (temp_at >= 5);
        var_s8 = sp120;
        var_s7 = sp118;
        var_s5 = sp110;
        var_s4 = sp108;
        var_ra = spE8;
        var_s6 = sp100;
        var_s3 = spF8;
        var_s2 = spF0;
    }
    temp_v0_2 = spD8 - 1;
    spD8 = temp_v0_2;
    if (temp_v0_2 >= 0) {
        spE8 = var_ra;
        sp120 = var_s8;
        var_s8_3 = var_s1 + 0x20;
        spF8 = var_s3;
        var_s3_3 = var_s0 + 0x20;
        sp108 = var_s4;
        var_s4_3 = var_s1 + 0x18;
        spF0 = var_s2;
        var_s2_3 = var_s0 + 0x18;
        sp110 = var_s5;
        var_s5_3 = var_s1 + 0x10;
        sp118 = var_s7;
        var_s7_3 = var_s0 + 0x10;
        sp100 = var_s6;
        var_s6_3 = var_s1 + 8;
        spE0 = (s64) (var_s0 + 8);
        do {
            var_s0->unk0 = (s32) var_s1->unk0;
            var_s0->unk4 = (s32) var_s1->unk4;
            memcpy((void *) spE0, var_s6_3, 8U);
            memcpy(var_s7_3, var_s5_3, 8U);
            temp_a0 = var_s2_3;
            var_s2_3 += 0xD8;
            memcpy(temp_a0, var_s4_3, 8U);
            var_s5_3 += 0xD8;
            temp_a1 = var_s8_3;
            var_s8_3 += 0xD8;
            memcpy(var_s3_3, temp_a1, 8U);
            var_s3_3 += 0xD8;
            var_s0->unk28 = (s32) var_s1->unk28;
            var_s0->unk2C = (s32) var_s1->unk2C;
            var_s0->unk30 = (s32) var_s1->unk30;
            var_s0->unk34 = (s32) var_s1->unk34;
            var_s0->unk38 = (s32) var_s1->unk38;
            var_s0->unk3C = (s32) var_s1->unk3C;
            var_s0->unk40 = (s32) var_s1->unk40;
            var_s0->unk44 = (s32) var_s1->unk44;
            var_s0->unk48 = (s32) var_s1->unk48;
            var_s0->unk4C = (s32) var_s1->unk4C;
            var_s0->unk50 = (s32) var_s1->unk50;
            var_s7_3 += 0xD8;
            var_s0->unk54 = (s32) var_s1->unk54;
            var_s4_3 += 0xD8;
            temp_a2 = var_s1->unk58;
            var_s6_3 += 0xD8;
            var_s1 += 0xD8;
            var_s0->unk58 = temp_a2;
            var_s0 += 0xD8;
            var_s0->unk-7C = (s32) var_s1->unk-7C;
            spE0 += 0xD8;
            var_s0->unk-78 = (s32) var_s1->unk-78;
            temp_at_2 = spD8 - 1;
            spD8 = temp_at_2;
            var_s0->unk-74 = (s32) var_s1->unk-74;
        } while (temp_at_2 != -1);
    }
}

void gl_mem_ntoh_wfmoutline_array(void *arg0, void *arg1) {
    s32 temp_at;
    s32 var_s2;
    s32 var_s4;
    s32 var_s5;
    u32 temp_s3;
    void *temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *var_s0;

    temp_at = arg1->unk0;
    arg0->unk0 = temp_at;
    arg0->unk4 = (f32) arg1->unk4;
    arg0->unk8 = (f32) arg1->unk8;
    temp_v0 = malloc(temp_at * 2);
    arg0->unkC = temp_v0;
    gl_mem_ntoh_short_array(temp_v0, arg1 + 0x14, arg0->unk0 * 2);
    var_s0 = arg1 + 0x3C;
    var_s4 = 0;
    arg0->unk10 = malloc(arg0->unk0 * 4);
    if (arg0->unk0 > 0) {
        var_s2 = 0;
        var_s5 = 0;
        do {
            temp_s3 = *(arg0->unkC + var_s2) * 8;
            temp_v0_2 = malloc(temp_s3);
            temp_a1 = var_s0;
            var_s0 += temp_s3;
            gl_mem_ntoh_float_array(temp_v0_2, temp_a1, (s32) temp_s3);
            var_s4 += 1;
            *(arg0->unk10 + var_s5) = temp_v0_2;
            var_s2 += 2;
            var_s5 += 4;
        } while (var_s4 < arg0->unk0);
    }
}
