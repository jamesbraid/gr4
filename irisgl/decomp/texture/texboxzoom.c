Error occurred while processing instruction: c.lt.d $f0, $f3

Error occurred while processing instruction: c.lt.d $f0, $f3

Tried to use a double-precision instruction with odd-numbered float register $f3
Tried to use a double-precision instruction with odd-numbered float register $f3
s32 bcopy(s32, ?, s32, s32);                        /* extern */
extern ? sub_0f020000;
extern ? sub_0f120000;

void charsperrow(s32 arg0, s32 arg1) {

}

void *gl_limgalloc(s32 arg1, s32 arg2) {
    gl_g_subtexload(arg2);
    return gl_malloc(M2C_ERROR(/* Read from unset register $v0 */) * arg1, &sub_0f020000 + 0x5400);
}

s32 getimgrow(void *arg0, s32 arg1) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a5;
    s32 var_a4_5;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_7;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_v0_2;
    s32 var_v0_3;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 var_v0;
    void *temp_at;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;
    void *var_a0_4;
    void *var_a0_5;
    void *var_a4;
    void *var_a4_2;
    void *var_a4_3;
    void *var_a4_4;
    void *var_a5_8;
    void *var_t0;
    void *var_t0_2;

    var_a0 = arg0;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF187E0;
    var_v0 = 1;
    temp_a3 = temp_at->unk-4DCC;
    temp_a5 = temp_at->unk-4DDC;
    var_a6 = temp_a3 & 3;
    var_a4 = (temp_at->unk-4DD4 * arg1) + temp_at->unk-4DC4 + temp_at->unk-4DE0;
    if (temp_a5 != 1) {
        var_v0 = 2;
        if (temp_a5 != 2) {
            if (temp_a5 == 3) {
                temp_a3_2 = temp_at->unk-4DCC;
                var_a5 = 0;
                if (temp_a3_2 > 0) {
                    var_a6_2 = temp_a3_2 & 3;
                    var_t0 = var_a4;
                    if (var_a6_2 != 0) {
                        do {
                            var_a5 += 1;
                            var_a4 += 3;
                            var_a0 += 2;
                            var_a6_2 -= 1;
                            var_a0->unk-2 = (s16) var_a4->unk-3;
                        } while (var_a6_2 != 0);
                        var_t0 = var_a4;
                    }
                    if ((temp_a3_2 >> 2) != 0) {
                        var_a5_2 = var_a5;
                        var_a0_2 = var_t0;
                        var_a4_2 = var_a0;
                        do {
                            var_a4_2->unk0 = (s16) var_a0_2->unk0;
                            var_a4_2->unk2 = (s16) var_a0_2->unk3;
                            var_v0 = var_a0_2->unk6;
                            var_a0_2 += 0xC;
                            var_a4_2->unk4 = (s16) var_v0;
                            var_a4_2 += 8;
                            var_a5_2 += 4;
                            var_a4_2->unk-2 = (s16) var_a0_2->unk-3;
                        } while (var_a5_2 != temp_a3_2);
                    }
                    return (s32) var_v0;
                }
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return (s32) var_v0;
            }
            if (temp_a5 != 4) {
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return (s32) var_v0;
            }
            var_a5_3 = 0;
            if (temp_a3 > 0) {
                var_t1 = 0;
                if (var_a6 != 0) {
                    do {
                        var_a5_3 += 1;
                        var_a4 += 4;
                        var_a0 += 2;
                        var_a6 -= 1;
                        var_a0->unk-2 = (s16) var_a4->unk-4;
                    } while (var_a6 != 0);
                    var_t1 = var_a5_3;
                }
                var_v0_3 = temp_a3 >> 2;
                var_a4_3 = var_a4;
                if (var_v0_3 != 0) {
                    var_a5_4 = var_t1;
                    var_a0_3 = var_a0;
                    do {
                        var_v0_3 = (s32) var_a4_3->unk0;
                        var_a0_3->unk0 = (s16) var_v0_3;
                        var_a0_3->unk2 = (s16) var_a4_3->unk4;
                        temp_a1 = var_a4_3->unk8;
                        var_a4_3 += 0x10;
                        var_a0_3->unk4 = (s16) temp_a1;
                        var_a0_3 += 8;
                        var_a5_4 += 4;
                        var_a0_3->unk-2 = (s16) var_a4_3->unk-4;
                    } while (var_a5_4 != temp_a3);
                }
                return var_v0_3;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return (s32) var_v0;
        }
        temp_a3_3 = temp_at->unk-4DCC;
        var_a5_5 = 0;
        if (temp_a3_3 > 0) {
            var_a6_3 = temp_a3_3 & 3;
            var_t0_2 = var_a4;
            if (var_a6_3 != 0) {
                do {
                    var_a5_5 += 1;
                    var_a4 += 2;
                    var_a0 += 2;
                    var_a6_3 -= 1;
                    var_a0->unk-2 = (s16) var_a4->unk-2;
                } while (var_a6_3 != 0);
                var_t0_2 = var_a4;
            }
            var_v0_2 = temp_a3_3 >> 2;
            if (var_v0_2 != 0) {
                var_a5_6 = var_a5_5;
                var_a0_4 = var_t0_2;
                var_a4_4 = var_a0;
                do {
                    var_v0_2 = (s32) var_a0_4->unk0;
                    var_a4_4->unk0 = (s16) var_v0_2;
                    var_a4_4->unk2 = (s16) var_a0_4->unk2;
                    temp_a1_2 = var_a0_4->unk4;
                    var_a0_4 += 8;
                    var_a4_4->unk4 = (s16) temp_a1_2;
                    var_a4_4 += 8;
                    var_a5_6 += 4;
                    var_a4_4->unk-2 = (s16) var_a0_4->unk-2;
                } while (var_a5_6 != temp_a3_3);
            }
            return var_v0_2;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return (s32) var_v0;
    }
    temp_a3_4 = temp_at->unk-4DCC;
    var_a5_7 = 0;
    if (temp_a3_4 > 0) {
        var_a6_4 = temp_a3_4 & 3;
        var_t1_2 = 0;
        if (var_a6_4 != 0) {
            do {
                var_a5_7 += 1;
                var_a0 += 2;
                var_a4 += 1;
                var_a6_4 -= 1;
                var_a0->unk-2 = (s16) var_a4->unk-1;
            } while (var_a6_4 != 0);
            var_t1_2 = var_a5_7;
        }
        if ((temp_a3_4 >> 2) != 0) {
            var_a0_5 = var_a0;
            var_a4_5 = var_t1_2;
            var_a5_8 = var_a4;
            do {
                var_a0_5->unk0 = (s16) var_a5_8->unk0;
                var_a0_5->unk2 = (s16) var_a5_8->unk1;
                var_v0 = var_a5_8->unk2;
                var_a0_5 += 8;
                var_a0_5->unk-4 = (s16) var_v0;
                var_a5_8 += 4;
                var_a4_5 += 4;
                var_a0_5->unk-2 = (s16) var_a5_8->unk-1;
            } while (var_a4_5 != temp_a3_4);
        }
        return (s32) var_v0;
    }
    return (s32) var_v0;
}

void putimgrow(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a5;
    s32 var_a3;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a4_2;
    s32 var_a4_4;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;
    void *var_a0_4;
    void *var_a0_5;
    void *var_a3_2;
    void *var_a3_6;
    void *var_a4;
    void *var_a4_3;
    void *var_a4_5;
    void *var_a7;

    var_a0 = arg0;
    var_a3 = 0;
    temp_a5 = saved_reg_gp->unk-4DDC;
    var_a4 = (saved_reg_gp->unk-4DD0 * arg1) + saved_reg_gp->unk-4DC0 + arg2;
    switch (temp_a5) {                              /* irregular */
    default:
        temp_a2 = saved_reg_gp->unk-4DC8;
        if (temp_a5 != 4) {

        } else {
            if (temp_a2 > 0) {
                var_a5 = temp_a2 & 3;
                if (var_a5 != 0) {
                    do {
                        var_a3 += 1;
                        var_a4 += 4;
                        var_a0 += 2;
                        var_a5 -= 1;
                        var_a4->unk-4 = (s8) var_a0->unk-2;
                    } while (var_a5 != 0);
                }
                var_a3_2 = var_a4;
                if ((temp_a2 >> 2) != 0) {
                    var_a4_2 = var_a3;
                    var_a0_2 = var_a0;
                    do {
                        var_a3_2->unk0 = (s8) var_a0_2->unk0;
                        var_a3_2->unk4 = (s8) var_a0_2->unk2;
                        var_a3_2 += 0x10;
                        var_a3_2->unk-8 = (s8) var_a0_2->unk4;
                        var_a0_2 += 8;
                        var_a4_2 += 4;
                        var_a3_2->unk-4 = (s8) var_a0_2->unk-2;
                    } while (var_a4_2 != temp_a2);
                }
                return;
            }
            return;
        }
        break;
    case 1:
        temp_a2_2 = saved_reg_gp->unk-4DC8;
        var_a3_3 = 0;
        if (temp_a2_2 > 0) {
            var_a5_2 = temp_a2_2 & 3;
            if (var_a5_2 != 0) {
                do {
                    var_a3_3 += 1;
                    var_a4 += 1;
                    var_a0 += 2;
                    var_a5_2 -= 1;
                    var_a4->unk-1 = (s8) var_a0->unk-2;
                } while (var_a5_2 != 0);
            }
            if ((temp_a2_2 >> 2) != 0) {
                var_a3_4 = var_a3_3;
                var_a0_3 = var_a4;
                var_a4_3 = var_a0;
                do {
                    var_a0_3->unk0 = (s8) var_a4_3->unk0;
                    var_a0_3->unk1 = (s8) var_a4_3->unk2;
                    var_a0_3 += 4;
                    var_a0_3->unk-2 = (s8) var_a4_3->unk4;
                    var_a4_3 += 8;
                    var_a3_4 += 4;
                    var_a0_3->unk-1 = (s8) var_a4_3->unk-2;
                } while (var_a3_4 != temp_a2_2);
            }
            return;
        }
        break;
    case 2:
        temp_a2_3 = saved_reg_gp->unk-4DC8;
        var_a3_5 = 0;
        if (temp_a2_3 > 0) {
            var_a5_3 = temp_a2_3 & 3;
            if (var_a5_3 != 0) {
                do {
                    var_a3_5 += 1;
                    var_a4 += 2;
                    var_a0 += 2;
                    var_a5_3 -= 1;
                    var_a4->unk-2 = (s8) var_a0->unk-2;
                } while (var_a5_3 != 0);
            }
            var_a3_6 = var_a4;
            if ((temp_a2_3 >> 2) != 0) {
                var_a4_4 = var_a3_5;
                var_a0_4 = var_a0;
                do {
                    var_a3_6->unk0 = (s8) var_a0_4->unk0;
                    var_a3_6->unk2 = (s8) var_a0_4->unk2;
                    var_a3_6 += 8;
                    var_a3_6->unk-4 = (s8) var_a0_4->unk4;
                    var_a0_4 += 8;
                    var_a4_4 += 4;
                    var_a3_6->unk-2 = (s8) var_a0_4->unk-2;
                } while (var_a4_4 != temp_a2_3);
            }
            return;
        }
        break;
    case 3:
        temp_a2_4 = saved_reg_gp->unk-4DC8;
        var_a3_7 = 0;
        if (temp_a2_4 > 0) {
            var_a5_4 = temp_a2_4 & 3;
            var_a7 = var_a4;
            if (var_a5_4 != 0) {
                do {
                    var_a3_7 += 1;
                    var_a4 += 3;
                    var_a0 += 2;
                    var_a5_4 -= 1;
                    var_a4->unk-3 = (s8) var_a0->unk-2;
                } while (var_a5_4 != 0);
                var_a7 = var_a4;
            }
            if ((temp_a2_4 >> 2) != 0) {
                var_a3_8 = var_a3_7;
                var_a0_5 = var_a7;
                var_a4_5 = var_a0;
                do {
                    var_a0_5->unk0 = (s8) var_a4_5->unk0;
                    var_a0_5->unk3 = (s8) var_a4_5->unk2;
                    var_a0_5 += 0xC;
                    var_a0_5->unk-6 = (s8) var_a4_5->unk4;
                    var_a4_5 += 8;
                    var_a3_8 += 4;
                    var_a0_5->unk-3 = (s8) var_a4_5->unk-2;
                } while (var_a3_8 != temp_a2_4);
            }
            return;
        }
        break;
    }
}

void gl_limgzoom(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_s8;
    s32 var_s0;
    s32 var_s5;
    s32 var_s7;
    void *temp_gp;
    void *temp_s1;
    void *temp_s6;

    temp_s4 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF182C4;
    temp_s8 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_gp->unk-4DC8 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    temp_gp->unk-4DCC = arg2;
    temp_gp->unk-4DDC = (s32) M2C_ERROR(/* Read from unset register $a6 */);
    temp_gp->unk-4DC4 = arg0;
    temp_gp->unk-4DC0 = arg1;
    gl_g_subtexload(arg2, M2C_ERROR(/* Read from unset register $a6 */));
    temp_gp->unk-4DD4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    gl_g_subtexload(temp_s0, temp_s8);
    temp_gp->unk-4DD0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    gl_limgzoom(&sub_0f120000 - 0x5598, arg2, arg3, temp_s0);
    temp_s6 = M2C_ERROR(/* Read from unset register $v0 */);
    temp_a0 = temp_gp->unk-4DDC;
    temp_s1 = gl_malloc(temp_s0 * 2, &sub_0f020000 + 0x5410);
    temp_a1 = temp_gp->unk-4DE0;
    switch (temp_a0) {                              /* switch 1; irregular */
    case 3:                                         /* switch 1 */
        switch (temp_a1) {                          /* switch 2; irregular */
        case 2:                                     /* switch 2 */
            break;
        case 0:                                     /* switch 2 */
            break;
        case 1:                                     /* switch 2 */
            break;
        }
        break;
    case 2:                                         /* switch 1 */
        temp_gp->unk-4DD8 = (s32) (temp_a1 == 0);
        break;
    }
    var_s7 = 0;
    if (temp_s8 > 0) {
        var_s5 = subroutine_arg0;
loop_10:
        temp_a0_2 = temp_gp->unk-4DDC;
        temp_gp->unk-4DE0 = var_s7;
        if (temp_a0_2 != 2) {
            if (temp_a0_2 != 3) {
                var_s5 = var_s7;
                goto block_6;
            }
            if (var_s7 != 0) {
                if (var_s7 != 1) {
                    var_s0 = 0;
                    if (var_s7 == 2) {
                        var_s5 = 0;
                        goto block_6;
                    }
                } else {
                    var_s5 = 1;
                    goto block_6;
                }
            } else {
                var_s5 = 2;
                goto block_6;
            }
        } else {
            var_s5 = var_s7 == 0;
block_6:
            var_s0 = 0;
        }
        if (temp_s4 > 0) {
            do {
                gl_limgzoom(temp_s6, (s32) temp_s1, var_s0);
                gl_limgalloc((s32) temp_s1, var_s0, var_s5);
                var_s0 += 1;
            } while (temp_s4 != var_s0);
        }
        var_s7 += 1;
        if (temp_s8 != var_s7) {
            goto loop_10;
        }
    }
    gl_limgzoom(temp_s6);
    gl_free(temp_s1, temp_gp->unk-3844);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x30, 0x34, 0x48, 0x4c, 0x50, 0x54], gap at: 0x40. */
void newzoom(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_s4;
    s32 temp_s5;
    s32 var_s1;
    s32 var_s5;
    s64 temp_a0;
    void *temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;

    temp_s4 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s5 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_v0 = gl_malloc(0x4C, saved_reg_gp - 0x3E88);
    temp_v0->unk0 = arg0;
    temp_v0->unk4 = gl_malloc(arg1 * 2, saved_reg_gp - 0x3E88);
    temp_a0 = arg3 * 2;
    unksp40 = temp_a0;
    temp_v0_2 = gl_malloc(temp_a0, saved_reg_gp - 0x3E88);
    temp_v0->unk20 = temp_s5;
    temp_v0->unk28 = 0;
    temp_v0->unk18 = temp_s4;
    temp_v0->unk14 = arg3;
    temp_v0->unk10 = arg2;
    temp_v0->unkC = arg1;
    temp_v0->unk8 = temp_v0_2;
    temp_v0->unk24 = -1;
    if (temp_s5 != 1) {
        saved_reg_gp->unk-4DB8 = temp_s5;
        saved_reg_gp->unk-4DB4 = (f32) unksp38;
        if (temp_s5 != 5) {
            temp_v0->unk3C = 0;
        } else {
            temp_v0->unk3C = 1;
        }
        temp_v0->unk34 = gl_malloc(unksp40, saved_reg_gp - 0x3E88);
        temp_a3 = temp_v0 + 0x38;
        unksp28 = (s64) temp_a3;
        gl_limgzoom(temp_v0->unk4, arg1, arg3, (s32) temp_a3);
        temp_v0->unk2C = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        gl_limgzoom(NULL, arg2, temp_s4, (s32) temp_a3);
        temp_v0->unk30 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
        var_s1 = 0;
        temp_v0->unk44 = gl_malloc(temp_v0->unk38 * 4, saved_reg_gp - 0x3E88);
        if (temp_v0->unk38 > 0) {
            var_s5 = 0;
            do {
                var_s1 += 1;
                *(temp_v0->unk44 + var_s5) = gl_malloc(temp_v0->unk14 * 2, saved_reg_gp - 0x3E88);
                var_s5 += 4;
            } while (var_s1 < temp_v0->unk38);
        }
        temp_v0_3 = gl_malloc(temp_v0->unk14 * 4, saved_reg_gp - 0x3E88);
        temp_v0->unk40 = 0;
        temp_v0->unk48 = temp_v0_3;
    } else if (arg1 != arg3) {
        temp_v0_4 = gl_malloc(arg3 * 4, saved_reg_gp - 0x3E88);
        temp_v0->unk1C = temp_v0_4;
        gl_limgzoom(temp_v0->unk4, (s32) temp_v0_4, temp_v0->unkC, temp_v0->unk14);
    }
}

s32 getzoomrow(void *arg0, ? arg1, s32 arg2) {
    s64 sp30;
    s64 sp20;
    s64 sp18;
    s64 sp0;
    ? (*temp_t9)(void *, s32, s32);
    ? (*temp_t9_2)(void *, s32, s32);
    ? (*temp_t9_3)(void *, s32, s32);
    ? (*temp_t9_4)(void *, s32, s32);
    s16 *temp_a2_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_f0;
    s32 temp_s4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_s2_2;
    s32 var_s5_2;
    s32 var_s5_3;
    s32 var_v0;
    s64 var_ra;
    s64 var_s2;
    s64 var_s5;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_at;
    void *temp_s1;

    var_s2 = saved_reg_s2;
    var_s5 = saved_reg_s5;
    var_ra = saved_reg_ra;
    if (arg2 == 0) {
        arg0->unk40 = 0;
        arg0->unk28 = 0;
        arg0->unk24 = -1;
    }
    temp_a1 = arg0->unk10;
    if (arg0->unk20 != 1) {
        if (temp_a1 == 1) {
            temp_a3 = arg0->unk18;
            if (temp_a3 == 1) {
                temp_v0 = arg0->unk40 + 1;
                arg0->unk40 = temp_v0;
                arg0->unk0(arg0->unk4, temp_v0 - 1, temp_a3);
                gl_limgzoom(*arg0->unk44, arg0->unk2C, arg0->unk14);
                temp_t9 = saved_reg_gp->unk-4DBC;
                if (temp_t9 != NULL) {
                    temp_t9(*arg0->unk44, arg0->unk14);
                }
                temp_a3_2 = arg0->unk3C;
                temp_a4 = arg0->unk14;
                temp_a0 = *arg0->unk44;
                if (temp_a3_2 != 0) {
                    gl_limgzoom(temp_a0, arg0->unk34, temp_a4, temp_a3_2);
                    var_v0 = bcopy(arg0->unk34, arg1, arg0->unk14 * 2);
                } else {
                    var_v0 = bcopy((s32) temp_a0, arg1, temp_a4 * 2, temp_a3_2);
                }
            } else {
                goto block_5;
            }
        } else {
block_5:
            temp_s1 = arg0->unk30 + (arg0->unk28 * 0x10);
            temp_s4 = (((u32) temp_s1->unk8 >> 1) + temp_s1->unk0) - 1;
            if (temp_s4 >= arg0->unk40) {
loop_21:
                temp_v0_2 = arg0->unk40 + 1;
                arg0->unk40 = temp_v0_2;
                arg0->unk0(arg0->unk4, temp_v0_2 - 1, arg0->unk40);
                var_s5_2 = 0;
                if (arg0->unk38 >= 2) {
                    var_a0 = 0;
                    do {
                        temp_at = arg0->unk44 + var_a0;
                        temp_at->unk0 = (s32) temp_at->unk4;
                        var_s5_2 += 1;
                        var_a0 += 4;
                    } while (var_s5_2 < (arg0->unk38 - 1));
                }
                ((arg0->unk38 * 4) + arg0->unk44)->unk-4 = (void *) *arg0->unk44;
                temp_a3_3 = arg0->unk38 * 4;
                gl_limgzoom((arg0->unk44 + temp_a3_3)->unk-4, arg0->unk2C, arg0->unk14, temp_a3_3);
                temp_t9_2 = saved_reg_gp->unk-4DBC;
                if (temp_t9_2 != NULL) {
                    temp_a2 = arg0->unk38 * 4;
                    temp_t9_2((arg0->unk44 + temp_a2)->unk-4, arg0->unk14, temp_a2);
                }
                if (temp_s4 >= arg0->unk40) {
                    goto loop_21;
                }
                var_ra = sp18;
                var_s5 = sp20;
                var_s2 = sp30;
            }
            temp_a4_2 = arg0->unk14;
            if (temp_s1->unk0 == 1) {
                sp18 = var_ra;
                temp_a3_4 = arg0->unk38 * 4;
                temp_a0_2 = (arg0->unk44 + temp_a3_4)->unk-4;
                if (arg0->unk3C != 0) {
                    gl_limgzoom(temp_a0_2, arg0->unk34, temp_a4_2, temp_a3_4);
                    var_v0 = bcopy(arg0->unk34, arg1, arg0->unk14 * 2);
                } else {
                    var_v0 = bcopy((s32) temp_a0_2, arg1, temp_a4_2 * 2, temp_a3_4);
                }
            } else {
                sp20 = var_s5;
                sp18 = var_ra;
                bzero(arg0->unk48, temp_a4_2 * 4);
                sp30 = var_s2;
                var_s5_3 = 0;
                if (temp_s1->unk0 > 0) {
                    var_s2_2 = 0;
                    do {
                        temp_a2_2 = temp_s1->unkC + var_s2_2;
                        var_s2_2 += 2;
                        gl_limgzoom(arg0->unk48, *(arg0->unk44 + (((arg0->unk38 + var_s5_3) - temp_s1->unk0) * 4)), (s32) *temp_a2_2, arg0->unk14);
                        var_s5_3 += 1;
                    } while (var_s5_3 < temp_s1->unk0);
                }
                gl_limgzoom(arg0->unk48, arg0->unk8, temp_s1->unk4, arg0->unk14);
                temp_a0_3 = arg0->unk8;
                temp_a4_3 = arg0->unk14;
                if (arg0->unk3C != 0) {
                    gl_limgzoom((void *) temp_a0_3, arg0->unk34, temp_a4_3);
                    var_v0 = bcopy(arg0->unk34, arg1, arg0->unk14 * 2);
                } else {
                    var_v0 = bcopy(temp_a0_3, arg1, temp_a4_3 * 2);
                }
            }
        }
    } else {
        temp_f0 = (s32) ((f32) temp_a1 * (f32) (((f64) arg0->unk28 + 0.5) / (second half of f64)));
        temp_a3_5 = arg0->unkC;
        temp_a2_3 = arg0->unk24;
        if (temp_a3_5 == arg0->unk14) {
            sp0 = (s64) temp_f0;
            if (temp_a2_3 != temp_f0) {
                arg0->unk0(arg0->unk4, sp0, temp_a2_3, temp_a3_5);
                temp_t9_3 = saved_reg_gp->unk-4DBC;
                arg0->unk24 = (s32) sp0;
                if (temp_t9_3 != NULL) {
                    temp_t9_3(arg0->unk4, arg0->unk14);
                }
            }
            var_v0 = bcopy((s32) arg0->unk4, arg1, arg0->unk14 * 2);
        } else {
            sp0 = (s64) temp_f0;
            if (temp_a2_3 != temp_f0) {
                arg0->unk0(arg0->unk4, sp0, temp_a2_3, temp_a3_5);
                gl_limgzoom(arg0->unk1C, arg0->unk8, arg0->unk14);
                temp_t9_4 = saved_reg_gp->unk-4DBC;
                arg0->unk24 = (s32) sp0;
                if (temp_t9_4 != NULL) {
                    temp_t9_4((void *) arg0->unk8, arg0->unk14);
                }
            }
            var_v0 = bcopy(arg0->unk8, arg1, arg0->unk14 * 2);
        }
    }
    arg0->unk28 = (s32) (arg0->unk28 + 1);
    return var_v0;
}

void freezoom(void *arg0) {
    s32 temp_a1;
    s32 var_s3;
    s32 var_s5;
    void **temp_a0;

    temp_a1 = arg0->unk14;
    if (arg0->unk20 == 1) {
        if (arg0->unkC != temp_a1) {
            gl_free(arg0->unk1C, saved_reg_gp->unk-3844);
        }
    } else {
        gl_limgzoom(arg0->unk2C, temp_a1);
        gl_limgzoom(arg0->unk30, arg0->unk18);
        gl_free(arg0->unk34, saved_reg_gp->unk-3844);
        var_s5 = 0;
        if (arg0->unk38 > 0) {
            var_s3 = 0;
            do {
                temp_a0 = arg0->unk44 + var_s3;
                var_s3 += 4;
                gl_free(*temp_a0, saved_reg_gp->unk-3844);
                var_s5 += 1;
            } while (var_s5 < arg0->unk38);
        }
        gl_free(arg0->unk44, saved_reg_gp->unk-3844);
        gl_free(arg0->unk48, saved_reg_gp->unk-3844);
    }
    gl_free(arg0->unk4, saved_reg_gp->unk-3844);
    gl_free(arg0->unk8, saved_reg_gp->unk-3844);
    gl_free(arg0, saved_reg_gp->unk-3844);
}

void makexmap(s32 arg0, void *arg1, s32 arg2, s32 arg3) {
    f32 temp_f4;
    f64 temp_f5;
    s32 temp_a2;
    s32 temp_at;
    s32 temp_f1;
    s32 var_a2;
    s32 var_a5;
    void *var_a1;
    void *var_a6;

    var_a6 = arg1;
    var_a5 = 0;
    if (arg3 > 0) {
        temp_f5 = (f64) arg3;
        temp_f4 = (f32) arg2;
        if (arg3 & 1) {
            var_a6 += 4;
            var_a5 = 1;
            var_a6->unk-4 = (s32) (((s32) ((f32) (((f64) 0 + 0.5) / temp_f5) * temp_f4) * 2) + arg0);
        }
        if ((arg3 >> 1) != 0) {
            var_a1 = var_a6;
            var_a2 = var_a5;
            do {
                temp_a2 = var_a2 + 1;
                temp_at = (s32) ((f32) (((f64) var_a2 + 0.5) / temp_f5) * temp_f4);
                temp_f1 = (s32) ((f32) (((f64) temp_a2 + 0.5) / temp_f5) * temp_f4);
                var_a1 += 8;
                var_a2 = temp_a2 + 1;
                var_a1->unk-8 = (s32) ((temp_at * 2) + arg0);
                var_a1->unk-4 = (s32) ((temp_f1 * 2) + arg0);
            } while (arg3 != var_a2);
        }
    }
}

void xscalebuf(s16 **arg0, void *arg1, s32 arg2) {
    s16 **var_a0;
    s16 **var_a1_2;
    s16 **var_a5;
    s16 *temp_a3;
    s16 *temp_v0;
    s16 temp_at;
    s32 temp_a4;
    s32 temp_a6;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a4;
    s32 var_a5_2;
    s32 var_t1;
    void *var_a0_2;
    void *var_a1;
    void *var_a6;
    void *var_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 8) {
        temp_a4 = (s32) (((u32) (var_a2 >> 2) >> 0x1D) + var_a2) >> 3;
        var_t1 = var_a2;
        if (temp_a4 & 1) {
            var_a1->unk0 = (s16) *var_a0->unk0;
            var_a1->unk2 = (s16) *var_a0->unk4;
            var_a1->unk4 = (s16) *var_a0->unk8;
            var_a1->unk6 = (s16) *var_a0->unkC;
            var_a1->unk8 = (s16) *var_a0->unk10;
            var_a1->unkA = (s16) *var_a0->unk14;
            var_a1->unkC = (s16) *var_a0->unk18;
            var_a2 -= 8;
            temp_at = *var_a0->unk1C;
            var_a0 += 0x20;
            var_a1 += 0x10;
            var_a1->unk-2 = temp_at;
            var_t1 = var_a2;
        }
        var_a6 = var_a1;
        if ((temp_a4 >> 1) != 0) {
            var_a4 = var_t1;
            var_a5 = var_a0;
            do {
                var_a6->unk0 = (s16) *var_a5->unk0;
                var_a6->unk2 = (s16) *var_a5->unk4;
                var_a6->unk4 = (s16) *var_a5->unk8;
                var_a6->unk6 = (s16) *var_a5->unkC;
                var_a6->unk8 = (s16) *var_a5->unk10;
                var_a6->unkA = (s16) *var_a5->unk14;
                var_a6->unkC = (s16) *var_a5->unk18;
                var_a6->unkE = (s16) *var_a5->unk1C;
                var_a6->unk10 = (s16) *var_a5->unk20;
                var_a6->unk12 = (s16) *var_a5->unk24;
                var_a6->unk14 = (s16) *var_a5->unk28;
                var_a6->unk16 = (s16) *var_a5->unk2C;
                var_a6->unk18 = (s16) *var_a5->unk30;
                var_a6->unk1A = (s16) *var_a5->unk34;
                var_a6->unk1C = (s16) *var_a5->unk38;
                var_a5 += 0x40;
                var_a6 += 0x20;
                var_a4 -= 0x10;
                var_a6->unk-2 = (s16) *var_a5->unk-4;
            } while (var_a4 >= 8);
            var_a1 = var_a6;
            var_a0 = var_a5;
            var_a2 = var_a4;
        }
    }
    var_a2_2 = var_a2 - 1;
    temp_a6 = var_a2_2 + 1;
    if (var_a2_2 != -1) {
        var_a5_2 = temp_a6 & 3;
        var_t0 = var_a1;
        if (var_a5_2 != 0) {
            do {
                var_a2_2 -= 1;
                temp_v0 = *var_a0;
                var_a1 += 2;
                var_a0 += 4;
                var_a5_2 -= 1;
                var_a1->unk-2 = (s16) *temp_v0;
            } while (var_a5_2 != 0);
            var_t0 = var_a1;
        }
        if ((temp_a6 >> 2) != 0) {
            var_a2_3 = var_a2_2;
            var_a0_2 = var_t0;
            var_a1_2 = var_a0;
            do {
                var_a0_2->unk0 = (s16) *var_a1_2->unk0;
                var_a0_2->unk2 = (s16) *var_a1_2->unk4;
                var_a0_2->unk4 = (s16) *var_a1_2->unk8;
                temp_a3 = var_a1_2->unkC;
                var_a0_2 += 8;
                var_a1_2 += 0x10;
                var_a2_3 -= 4;
                var_a0_2->unk-2 = (s16) *temp_a3;
            } while (var_a2_3 != -1);
        }
    }
}

void addrow(void *arg0, s16 *arg1, s32 arg2, s32 arg3) {
    s16 *var_a1;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a3;
    s32 var_a3_2;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a3 = arg3;
    if (var_a3 >= 8) {
        do {
            var_a0->unk0 = (s32) (var_a0->unk0 + (var_a1->unk0 * arg2));
            var_a0->unk4 = (s32) (var_a0->unk4 + (var_a1->unk2 * arg2));
            var_a0->unk8 = (s32) (var_a0->unk8 + (var_a1->unk4 * arg2));
            var_a0->unkC = (s32) (var_a0->unkC + (var_a1->unk6 * arg2));
            var_a0->unk10 = (s32) (var_a0->unk10 + (var_a1->unk8 * arg2));
            var_a0->unk14 = (s32) (var_a0->unk14 + (var_a1->unkA * arg2));
            var_a0->unk18 = (s32) (var_a0->unk18 + (var_a1->unkC * arg2));
            temp_lo = var_a1->unkE * arg2;
            var_a1 += 0x10;
            var_a0 += 0x20;
            var_a3 -= 8;
            var_a0->unk-4 = (s32) (var_a0->unk-4 + temp_lo);
        } while (var_a3 >= 8);
    }
    var_a3_2 = var_a3 - 1;
    if (var_a3_2 != -1) {
        do {
            temp_lo_2 = *var_a1 * arg2;
            var_a0 += 4;
            var_a1 += 2;
            var_a3_2 -= 1;
            var_a0->unk-4 = (s32) (var_a0->unk-4 + temp_lo_2);
        } while (var_a3_2 != -1);
    }
}

void divrow(s32 *arg0, void *arg1, s32 arg2, s32 arg3) {
    s32 *var_a0;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 var_a3;
    s32 var_a3_2;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a3 = arg3;
    if (var_a3 >= 8) {
        do {
            var_a1->unk0 = (s16) ((s32) var_a0->unk0 / arg2);
            var_a1->unk2 = (s16) ((s32) var_a0->unk4 / arg2);
            var_a1->unk4 = (s16) ((s32) var_a0->unk8 / arg2);
            var_a1->unk6 = (s16) ((s32) var_a0->unkC / arg2);
            var_a1->unk8 = (s16) ((s32) var_a0->unk10 / arg2);
            var_a1->unkA = (s16) ((s32) var_a0->unk14 / arg2);
            var_a1->unkC = (s16) ((s32) var_a0->unk18 / arg2);
            temp_lo = (s32) var_a0->unk1C / arg2;
            M2C_TRAP_IF(arg2 == 0);
            M2C_TRAP_IF(arg2 == 0);
            M2C_TRAP_IF(arg2 == 0);
            M2C_TRAP_IF(arg2 == 0);
            M2C_TRAP_IF(arg2 == 0);
            M2C_TRAP_IF(arg2 == 0);
            var_a0 += 0x20;
            M2C_TRAP_IF(arg2 == 0);
            var_a1 += 0x10;
            M2C_TRAP_IF(arg2 == 0);
            var_a3 -= 8;
            var_a1->unk-2 = (s16) temp_lo;
        } while (var_a3 >= 8);
    }
    var_a3_2 = var_a3 - 1;
    if (var_a3_2 != -1) {
        do {
            temp_lo_2 = (s32) *var_a0 / arg2;
            M2C_TRAP_IF(arg2 == 0);
            var_a1 += 2;
            var_a0 += 4;
            var_a3_2 -= 1;
            var_a1->unk-2 = (s16) temp_lo_2;
        } while (var_a3_2 != -1);
    }
}

void myfloor(f32 arg0) {
    if (arg0 < (f32) (s32) arg0) {

    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x58, 0x5c, 0xa0, 0xa4, 0xa8, 0xac], gap at: 0x68. */
void makefilt(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 temp_f20;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f26;
    f32 temp_f28;
    s16 temp_a5;
    s16 temp_at_2;
    s32 temp_a7;
    s32 temp_at;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s7;
    s64 var_a6;
    s64 var_a6_2;
    void *temp_a1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *var_s1;

    sp30 = arg2;
    sp28 = arg3;
    sp40 = arg0;
    sp48 = arg1;
    temp_a1 = &sub_0f020000 + 0x53F0;
    sp38 = (s64) temp_a1;
    temp_v0 = gl_malloc(arg2 * 0x10, temp_a1);
    var_s1 = temp_v0;
    unksp60 = (s64) temp_v0;
    saved_reg_gp->unk-4DB0 = 0;
    var_s7 = 0;
    *sp28 = 0;
    if (sp30 > 0) {
        temp_f26 = (f32) sp30;
        sp50 = sp48 - 1;
        unksp68 = sp30 < sp48;
        temp_f20 = (f32) sp48;
loop_11:
        if (unksp68 != 0) {
            gl_limgzoom();
            temp_f24 = (f32) ((second half of f64) / subroutine_arg0);
            gl_limgzoom((bitwise void *) (f32) ((f64) (second half of f64) + (second half of f64)));
            var_s2 = M2C_ERROR(/* Read from unset register $v0 */);
            gl_limgzoom((bitwise void *) (f32) ((f64) (second half of f64) + (second half of f64)));
            var_a6 = M2C_ERROR(/* Read from unset register $v0 */);
            if (var_s2 < 0) {
                var_s2 = 0;
            }
            if (M2C_ERROR(/* Read from unset register $v0 */) >= sp48) {
                var_a6 = sp50;
            }
            temp_at = var_a6 - var_s2;
            var_s1->unk0 = (s32) (temp_at + 1);
            saved_reg_gp->unk-4DB0 = (s32) (saved_reg_gp->unk-4DB0 + temp_at + 1);
            var_s1->unk8 = (s32) ((var_s2 * 2) + sp40);
            temp_v0_2 = gl_malloc((temp_at * 2) + 2, (void *) sp38, sp40);
            var_s3 = 0;
            var_s1->unk4 = 0;
            var_s1->unkC = temp_v0_2;
            if (var_s1->unk0 > 0) {
                var_s4 = 0;
                sp20 = (bitwise f64) (f32) var_s2;
                do {
                    temp_f28 = (second half of f64) + (bitwise f32) sp20;
                    gl_limgzoom((bitwise void *) ((((temp_f28 + 1.0f) / temp_f20) - temp_f24) * temp_f26), 1, var_s1->unk0);
                    gl_limgzoom((bitwise void *) (((temp_f28 / temp_f20) - temp_f24) * temp_f26), 0);
                    var_s3 += 1;
                    *(var_s1->unkC + var_s4) = (s16) (s32) ((f64) ((M2C_ERROR(/* Read from unset register $f0 */) - M2C_ERROR(/* Read from unset register $f0 */)) * 4096.0f) + 0.5);
                    temp_a5 = *(var_s1->unkC + var_s4);
                    var_s4 += 2;
                    var_s1->unk4 = (s32) (temp_a5 + var_s1->unk4);
                } while (var_s3 < var_s1->unk0);
            }
        } else {
            gl_limgzoom();
            sp10 = (bitwise f64) (M2C_ERROR(/* Read from unset register $f0 */) / temp_f20);
            gl_limgzoom((bitwise void *) (f32) ((second half of f64) + 0.0001));
            var_s2_2 = M2C_ERROR(/* Read from unset register $v0 */);
            gl_limgzoom((bitwise void *) (f32) ((second half of f64) + -0.0001), (s32) -0.5);
            var_a6_2 = M2C_ERROR(/* Read from unset register $v0 */);
            if (var_s2_2 < 0) {
                var_s2_2 = 0;
            }
            if (M2C_ERROR(/* Read from unset register $v0 */) >= sp48) {
                var_a6_2 = sp50;
            }
            temp_a7 = var_a6_2 - var_s2_2;
            var_s1->unk0 = (s32) (temp_a7 + 1);
            var_s1->unk8 = (s32) ((var_s2_2 * 2) + sp40);
            saved_reg_gp->unk-4DB0 = (s32) (saved_reg_gp->unk-4DB0 + temp_a7 + 1);
            temp_v0_3 = gl_malloc((temp_a7 * 2) + 2, (void *) sp38);
            var_s3_2 = 0;
            var_s1->unk4 = 0;
            var_s1->unkC = temp_v0_3;
            if (var_s1->unk0 > 0) {
                var_s4_2 = 0;
                sp18 = (f64) sp48;
                do {
                    temp_f24_2 = (f32) ((second half of f64) / sp18);
                    gl_limgzoom((bitwise void *) (((f32) ((second half of f64) / subroutine_arg0) - temp_f24_2) * temp_f20), 1, var_s1->unk0);
                    var_s3_2 += 1;
                    gl_limgzoom((bitwise void *) (((bitwise f32) subroutine_arg2 - temp_f24_2) * temp_f20), 0);
                    *(var_s1->unkC + var_s4_2) = (s16) (s32) ((f64) ((M2C_ERROR(/* Read from unset register $f0 */) - M2C_ERROR(/* Read from unset register $f0 */)) * 4096.0f) + 0.5);
                    temp_at_2 = *(var_s1->unkC + var_s4_2);
                    var_s4_2 += 2;
                    var_s1->unk4 = (s32) (temp_at_2 + var_s1->unk4);
                } while (var_s3_2 < var_s1->unk0);
            }
        }
        var_s7 += 1;
        if (*sp28 < var_s1->unk0) {
            *sp28 = var_s1->unk0;
        }
        var_s1 += 0x10;
        if (sp30 != var_s7) {
            goto loop_11;
        }
    }
}

void freefilt(void *arg0, s32 arg1) {
    s32 var_s5;
    void *var_s1;

    var_s5 = arg1 - 1;
    var_s1 = arg0;
    if (var_s5 != -1) {
        do {
            var_s5 -= 1;
            gl_free(var_s1->unkC, saved_reg_gp->unk-3844);
            var_s1 += 0x10;
        } while (var_s5 != -1);
    }
    gl_free(arg0, saved_reg_gp->unk-3844);
}

void applyxfilt(void *arg0, void *arg1, s32 arg2) {
    s16 *temp_t1;
    s16 *var_a4;
    s16 *var_a5;
    s32 temp_lo;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_t0;
    void *var_a0;
    void *var_a1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_t0 = arg2 - 1;
    if (var_t0 != -1) {
loop_4:
        temp_t2 = var_a1->unk0;
        var_t0 -= 1;
        var_a3 = 0;
        temp_t1 = var_a1->unk8;
        if (temp_t2 != 1) {
            var_a4 = temp_t1;
            var_a6 = temp_t2 - 1;
            var_a5 = var_a1->unkC;
            if (var_a6 != -1) {
                do {
                    temp_lo = *var_a5 * *var_a4;
                    var_a4 += 2;
                    var_a5 += 2;
                    var_a6 -= 1;
                    var_a3 += temp_lo;
                } while (var_a6 != -1);
            }
            var_a0 += 2;
            temp_v0 = var_a1->unk4;
            M2C_TRAP_IF(temp_v0 == 0);
            var_a0->unk-2 = (s16) (var_a3 / temp_v0);
        } else {
            var_a0 += 2;
            var_a0->unk-2 = (s16) *temp_t1;
        }
        var_a1 += 0x10;
        if (var_t0 != -1) {
            goto loop_4;
        }
    }
}

void filterrad(void) {
    s32 temp_a1;

    temp_a1 = saved_reg_gp->unk-4DB8;
    switch (temp_a1) {                              /* irregular */
    case 5:
        return;
    case 2:
        return;
    case 3:
        return;
    case 4:
        return;
    }
}

void quadinteg(f32 arg0) {
    f64 temp_f5;

    temp_f5 = (f64) arg0;
    if (!(temp_f5 < -1.0)) {
        if (temp_f5 < -0.5) {

        }
    }
}

void filterinteg(f32 arg0) {
    f64 sp0;
    f32 temp_f5;
    f64 temp_f0;
    f64 temp_f0_2;
    s32 temp_a1;
    void *var_a1;

    temp_a1 = saved_reg_gp->unk-4DB8;
    temp_f5 = arg0 / saved_reg_gp->unk-4DB4;
    switch (temp_a1) {                              /* irregular */
    case 2:
        temp_f0 = (f64) temp_f5;
        if (!(temp_f0 < (second half of f64))) {
            if (!(temp_f0 > 0.5)) {

            }
        }
        break;
    case 3:
        temp_f0_2 = (f64) temp_f5;
        if (!(temp_f0_2 < -1.0)) {
            if (!(temp_f0_2 > 1.0)) {
                // Error: Tried to use a double-precision instruction with odd-numbered float register $f3
                // At instruction: c.lt.d $f0, $f3
                if (M2C_ERROR()) {

                }
            }
        }
        break;
    case 4:
        var_a1 = &sub_0f120000 - 0x39EC;
        if (!((f64) temp_f5 < (second half of f64))) {

        } else {
            sp0 = (bitwise f64) temp_f5;
            gl_limgzoom((bitwise void *) temp_f5, 5, (s32) var_a1);
            var_a1 = &sub_0f120000 - 0x39EC;
        }
        gl_limgzoom((bitwise void *) -temp_f5, (s32) var_a1);
        break;
    case 5:
        gl_limgzoom((bitwise void *) temp_f5, 5, temp_a1);
        break;
    }
}

void mitchell(f32 arg0) {
    if (saved_reg_gp->unk-4D90 == 0) {
        gl_limgzoom((void *)0x3EAAAAAB);
        saved_reg_gp->unk-4D90 = 1;
    }
    if (!((second half of f64) < -2.0)) {
        if (!((second half of f64) < -1.0)) {
            if (!((second half of f64) < GLUE_F64(0x3FF0000000000000U, 0U))) {
                if (!((second half of f64) < 1.0)) {
                    if ((second half of f64) < 2.0) {

                    }
                }
            }
        }
    }
}

void mitchellinit(f32 arg0, f32 arg1) {
    f64 temp_f0;

    temp_f0 = (f64) arg0;
    saved_reg_gp->unk-4D94 = (f32) (((f64) -arg0 - ((f64) arg1 * 6.0)) / (second half of f64));
    saved_reg_gp->unk-4D98 = (f32) (second half of f64);
    saved_reg_gp->unk-4DAC = (f32) (second half of f64);
    saved_reg_gp->unk-4D9C = (f32) (((temp_f0 * -12.0) - ((second half of f64) * 48.0)) / (second half of f64));
    saved_reg_gp->unk-4DA0 = (f32) (((temp_f0 * 8.0) + ((second half of f64) * 24.0)) / (second half of f64));
    saved_reg_gp->unk-4DA4 = (f32) (second half of f64);
    saved_reg_gp->unk-4DA8 = (f32) ((((second half of f64) * 12.0) + -18.0 + (second half of f64)) / (second half of f64));
}

void clamprow(s16 *arg0, s16 *arg1, s32 arg2) {
    s16 *var_a0;
    s16 *var_a1;
    s16 temp_a4;
    s16 temp_a4_10;
    s16 temp_a4_11;
    s16 temp_a4_2;
    s16 temp_a4_3;
    s16 temp_a4_4;
    s16 temp_a4_5;
    s16 temp_a4_6;
    s16 temp_a4_7;
    s16 temp_a4_8;
    s16 temp_a4_9;
    s16 var_a4;
    s16 var_a5;
    s16 var_a5_10;
    s16 var_a5_11;
    s16 var_a5_2;
    s16 var_a5_3;
    s16 var_a5_4;
    s16 var_a5_5;
    s16 var_a5_6;
    s16 var_a5_7;
    s16 var_a5_8;
    s16 var_a5_9;
    s16 var_a6;
    s16 var_a6_10;
    s16 var_a6_2;
    s16 var_a6_3;
    s16 var_a6_4;
    s16 var_a6_5;
    s16 var_a6_6;
    s16 var_a6_7;
    s16 var_a6_8;
    s16 var_a6_9;
    s32 temp_t0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_at;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    if (var_a2 >= 8) {
loop_4:
        temp_a4 = var_a0->unk0;
        var_a6 = 0xFF;
        var_a5 = 0;
        var_a2 -= 8;
        if (temp_a4 >= 0) {
            if (temp_a4 < 0x100) {
                var_a6 = temp_a4;
            }
            var_a5 = var_a6;
        }
        var_a1->unk0 = var_a5;
        temp_a4_2 = var_a0->unk2;
        var_a5_2 = 0;
        var_a6_2 = 0xFF;
        if (temp_a4_2 >= 0) {
            if (temp_a4_2 < 0x100) {
                var_a6_2 = temp_a4_2;
            }
            var_a5_2 = var_a6_2;
        }
        var_a1->unk2 = var_a5_2;
        temp_a4_3 = var_a0->unk4;
        var_a5_3 = 0;
        var_a6_3 = 0xFF;
        if (temp_a4_3 >= 0) {
            if (temp_a4_3 < 0x100) {
                var_a6_3 = temp_a4_3;
            }
            var_a5_3 = var_a6_3;
        }
        var_a1->unk4 = var_a5_3;
        temp_a4_4 = var_a0->unk6;
        var_a5_4 = 0;
        var_a6_4 = 0xFF;
        if (temp_a4_4 >= 0) {
            if (temp_a4_4 < 0x100) {
                var_a6_4 = temp_a4_4;
            }
            var_a5_4 = var_a6_4;
        }
        var_a1->unk6 = var_a5_4;
        temp_a4_5 = var_a0->unk8;
        var_a5_5 = 0;
        var_a6_5 = 0xFF;
        if (temp_a4_5 >= 0) {
            if (temp_a4_5 < 0x100) {
                var_a6_5 = temp_a4_5;
            }
            var_a5_5 = var_a6_5;
        }
        var_a1->unk8 = var_a5_5;
        temp_a4_6 = var_a0->unkA;
        var_a5_6 = 0;
        var_a6_6 = 0xFF;
        if (temp_a4_6 >= 0) {
            if (temp_a4_6 < 0x100) {
                var_a6_6 = temp_a4_6;
            }
            var_a5_6 = var_a6_6;
        }
        var_a1->unkA = var_a5_6;
        temp_a4_7 = var_a0->unkC;
        var_a5_7 = 0;
        var_a6_7 = 0xFF;
        if (temp_a4_7 >= 0) {
            if (temp_a4_7 < 0x100) {
                var_a6_7 = temp_a4_7;
            }
            var_a5_7 = var_a6_7;
        }
        var_a1->unkC = var_a5_7;
        temp_a4_8 = var_a0->unkE;
        var_a0 += 0x10;
        var_a5_8 = 0xFF;
        var_a1 += 0x10;
        if (temp_a4_8 >= 0) {
            if (temp_a4_8 < 0x100) {
                var_a5_8 = temp_a4_8;
            }
            var_a4 = var_a5_8;
        } else {
            var_a4 = 0;
        }
        var_a1->unk-2 = var_a4;
        if (var_a2 >= 8) {
            goto loop_4;
        }
    }
    var_a2_2 = var_a2 - 1;
    temp_t0 = var_a2_2 + 1;
    if (var_a2_2 != -1) {
        var_at = temp_t0 >> 1;
        if (temp_t0 & 1) {
            temp_a4_9 = *var_a0;
            var_a1 += 2;
            var_a2_2 -= 1;
            if (temp_a4_9 >= 0) {
                var_a6_8 = 0xFF;
                if (temp_a4_9 < 0x100) {
                    var_a6_8 = temp_a4_9;
                }
                var_a5_9 = var_a6_8;
            } else {
                var_a5_9 = 0;
            }
            var_a0 += 2;
            var_a1->unk-2 = var_a5_9;
            var_at = temp_t0 >> 1;
        }
        if (var_at != 0) {
loop_49:
            temp_a4_10 = *var_a0;
            var_a5_10 = 0;
            var_a6_9 = 0xFF;
            if (temp_a4_10 >= 0) {
                if (temp_a4_10 < 0x100) {
                    var_a6_9 = temp_a4_10;
                }
                var_a5_10 = var_a6_9;
            }
            *var_a1 = var_a5_10;
            var_a0 += 4;
            temp_a4_11 = var_a0->unk-2;
            var_a6_10 = 0xFF;
            var_a5_11 = 0;
            var_a1 += 4;
            if (temp_a4_11 >= 0) {
                if (temp_a4_11 < 0x100) {
                    var_a6_10 = temp_a4_11;
                }
                var_a5_11 = var_a6_10;
            }
            var_a2_2 -= 2;
            var_a1->unk-2 = var_a5_11;
            if (var_a2_2 != -1) {
                goto loop_49;
            }
        }
    }
}
