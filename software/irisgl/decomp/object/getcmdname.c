? strcat(void *, void *);                           /* extern */
? strcpy(void *, void *, s32);                      /* extern */
extern ? sub_0f030000;

void gl_intrptab_insert(void *arg0) {
    s32 temp_a2;
    s32 var_a3;
    void *temp_a1;

    var_a3 = arg0->unk4;
    if (var_a3 == 0) {
        strcpy(sp, &sub_0f030000 - 0x7BD0 + 0x110, var_a3);
        temp_a1 = arg0->unkC;
        if (temp_a1 != NULL) {
            strcat(sp, temp_a1);
        } else {
            strcat(sp, &sub_0f030000 - 0x7BD0 + 0x128);
        }
        gl_ErrorHandler(0x6C, 5, sp);
        var_a3 = arg0->unk4;
    }
    temp_a2 = var_a3 >> 2;
    arg0->unk4 = temp_a2;
    gl_insert(&sub_0f030000 - 0x120, arg0, temp_a2, var_a3);
}

void gl_init_intrp(void) {
    void *temp_s0;
    void *temp_s0_10;
    void *temp_s0_11;
    void *temp_s0_12;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_s0_6;
    void *temp_s0_7;
    void *temp_s0_8;
    void *temp_s0_9;
    void *temp_s1;

    temp_s0 = &sub_0f030000 - 0x7BD0;
    temp_s1 = temp_s0 + 0x110;
    temp_s0_2 = temp_s0 + 0x60;
    gl_intrptab_insert(temp_s0_2);
    temp_s0_3 = temp_s0_2 + 0x10;
    if (temp_s0_3 != temp_s1) {
        gl_intrptab_insert(temp_s0_3);
        temp_s0_4 = temp_s0_3 + 0x10;
        if (temp_s0_4 != temp_s1) {
            gl_intrptab_insert(temp_s0_4);
            temp_s0_5 = temp_s0_4 + 0x10;
            if (temp_s0_5 != temp_s1) {
                gl_intrptab_insert(temp_s0_5);
                temp_s0_6 = temp_s0_5 + 0x10;
                if (temp_s0_6 != temp_s1) {
                    gl_intrptab_insert(temp_s0_6);
                    temp_s0_7 = temp_s0_6 + 0x10;
                    if (temp_s0_7 != temp_s1) {
                        gl_intrptab_insert(temp_s0_7);
                        temp_s0_8 = temp_s0_7 + 0x10;
                        if (temp_s0_8 != temp_s1) {
                            gl_intrptab_insert(temp_s0_8);
                            temp_s0_9 = temp_s0_8 + 0x10;
                            if (temp_s0_9 != temp_s1) {
                                gl_intrptab_insert(temp_s0_9);
                                temp_s0_10 = temp_s0_9 + 0x10;
                                if (temp_s0_10 != temp_s1) {
                                    gl_intrptab_insert(temp_s0_10);
                                    temp_s0_11 = temp_s0_10 + 0x10;
                                    if (temp_s0_11 != temp_s1) {
                                        gl_intrptab_insert(temp_s0_11);
                                        temp_s0_12 = temp_s0_11 + 0x10;
                                        if (temp_s0_12 != temp_s1) {
                                            gl_intrptab_insert(temp_s0_12);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

void gl_getcmdlength(s32 arg0, s64 arg1) {
    s32 temp_v0_2;
    void *temp_v0;

    temp_v0 = gl_find(&sub_0f030000 - 0x120, arg0 >> 2);
    if (temp_v0 != NULL) {
        temp_v0_2 = temp_v0->unkA & 3;
        switch (temp_v0_2) {                        /* irregular */
        case 0:
            return;
        case 2:
            if (((temp_v0->unk8 * (subroutine_arg0 + 1)) + 4) & 1) {

            }
            return;
        case 1:
            return;
        case 3:
            return;
        }
    } else {
    default:
        gl_ErrorHandler(0x43, 5, &sub_0f030000 - 0x7A90);
    }
}

void gl_getcmdname(s32 arg0) {
    if (gl_find(&sub_0f030000 - 0x120, arg0 >> 2) != NULL) {
        return;
    }
    gl_ErrorHandler(0x43, 5, &sub_0f030000 - 0x7A80);
}
