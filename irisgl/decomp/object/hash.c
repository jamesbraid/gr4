extern ? *gl_hashtable;
extern s32 gl_objchunksize;
extern s32 gl_openobj;
extern ? sub_0f030000;

void gl_free_objects(void) {
    ? **temp_s5;
    ? **var_s4;
    ? **var_s4_2;
    ? *temp_s1;
    ? *var_s0;
    ? *var_s0_2;
    s32 temp_a0;

    temp_s5 = &gl_hashtable + 0x400;
    var_s4 = &gl_hashtable;
loop_2:
    var_s0 = *var_s4;
    var_s4 += 4;
    if (var_s0 != NULL) {
loop_6:
        temp_a0 = var_s0->unk8;
        if (temp_a0 == -1) {
            if (var_s0->unk4->unk1C != 0) {
                __GLdelobj(var_s0->unkC);
                if (var_s0->unk8 == -1) {
                    goto block_10;
                }
            } else if (temp_a0 == -1) {
block_10:
                gl_free(var_s0->unk4, saved_reg_gp->unk-39C4);
            }
        }
        var_s0 = var_s0->unk0;
        if (var_s0 != NULL) {
            goto loop_6;
        }
    }
    if (var_s4 != temp_s5) {
        goto loop_2;
    }
    var_s4_2 = &gl_hashtable;
loop_13:
    var_s0_2 = *var_s4_2;
    var_s4_2 += 4;
    if (var_s0_2 != NULL) {
        do {
            temp_s1 = *var_s0_2;
            gl_free(var_s0_2, saved_reg_gp->unk-39C4);
            var_s0_2 = temp_s1;
        } while (temp_s1 != NULL);
    }
    var_s4_2->unk-4 = 0;
    if (var_s4_2 != temp_s5) {
        goto loop_13;
    }
    gl_objchunksize = 0;
    gl_openobj = -1;
}

void gl_addhash(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    ? **temp_v1;
    ? *temp_v0;

    sp10 = arg2;
    temp_v0 = gl_malloc(0x10, &sub_0f030000 - 0x7560);
    if (temp_v0 == NULL) {
        return;
    }
    temp_v0->unk4 = (s32) subroutine_arg0;
    temp_v1 = &(&gl_hashtable)[(subroutine_arg2 + sp10) & 0xFF];
    temp_v0->unkC = (s32) subroutine_arg2;
    temp_v0->unk0 = *temp_v1;
    temp_v0->unk8 = (s32) sp10;
    *temp_v1 = temp_v0;
}

void gl_removehash(? *arg0, s32 arg1) {
    ? **temp_a4;
    ? *temp_a2;
    ? *temp_a2_2;
    ? *temp_a3;
    ? *temp_a5;
    ? *var_a0;
    ? *var_a4;

    temp_a4 = &(&gl_hashtable)[(arg0 + arg1) & 0xFF];
    temp_a5 = *temp_a4;
    if (temp_a5 != NULL) {
        if ((temp_a5->unkC != arg0) || (temp_a5->unk8 != arg1)) {
            var_a0 = temp_a5->unk0;
            var_a4 = temp_a5;
            if (var_a0 != NULL) {
loop_6:
                if (var_a0->unkC == arg0) {
                    temp_a2 = var_a0->unk8;
                    if (temp_a2 == arg1) {
                        temp_a3 = var_a0->unk0;
                        *var_a4 = temp_a3;
                        gl_free(var_a0, &sub_0f030000 - 0x7540, temp_a2, temp_a3);
                        return;
                    }
                }
                var_a4 = var_a0;
                var_a0 = var_a0->unk0;
                if (var_a0 != NULL) {
                    goto loop_6;
                }
            }
        } else {
            temp_a2_2 = temp_a5->unk0;
            *temp_a4 = temp_a2_2;
            gl_free(temp_a5, &sub_0f030000 - 0x7550, temp_a2_2, arg0);
        }
    }
}

void gl_findhash(s32 arg0, s32 arg1) {
    void *var_a5;

    var_a5 = *((((arg0 + arg1) & 0xFF) * 4) + (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5AACC)->unk-7EDC);
    if (var_a5 != NULL) {
loop_3:
        if ((var_a5->unkC == arg0) && (var_a5->unk8 == arg1)) {
            return;
        }
        var_a5 = var_a5->unk0;
        if (var_a5 != NULL) {
            goto loop_3;
        }
    }
}

void gl_replacehash(s32 arg0, s32 arg1, s32 arg2) {
    void *var_a6;

    var_a6 = *((((arg1 + arg2) & 0xFF) * 4) + (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5AA64)->unk-7EDC);
    if (var_a6 != NULL) {
loop_3:
        if ((var_a6->unkC == arg1) && (var_a6->unk8 == arg2)) {
            var_a6->unk4 = arg0;
            return;
        }
        var_a6 = var_a6->unk0;
        if (var_a6 != NULL) {
            goto loop_3;
        }
    }
}
