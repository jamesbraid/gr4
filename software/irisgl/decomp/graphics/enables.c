s32 glIsEnabled(u32);                               /* extern */
extern ? sub_0f020000;

s32 getEnableInfo(s32 arg0) {
    s32 *var_v0;
    s32 var_a3;

    var_a3 = 0x2D;
    var_v0 = &sub_0f020000 + 0x7E98;
loop_1:
    var_a3 -= 1;
    if (*var_v0 != arg0) {
        var_v0 += 0x10;
        if (var_a3 == 0) {
            return 0;
        }
        goto loop_1;
    }
    return (s32) var_v0;
}

s32 getEnableAddress(s64 arg1) {
    gl_dgl_default_display();
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        return M2C_ERROR(/* Read from unset register $v0 */)->unk4 + subroutine_arg0;
    }
    return 0;
}

void __iglooSetEnable(u32 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp8 = arg1;
    temp_v0 = *(s32 *)0x1004;
    if (temp_v0 == 0) {
        return;
    }
    gl_dgl_default_display(arg0, temp_v0 + 0x64);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        if (arg0 != 0xB50) {
            if (*M2C_ERROR(/* Read from unset register $v0 */) != sp8) {
                sp0 = M2C_ERROR(/* Read from unset register $v0 */);
                if (sp8 == 1) {
                    glEnable(arg0);
                } else {
                    glDisable(arg0);
                }
                *sp0 = (s8) sp8;
            }
        } else {
            if (sp8 != 1) {
                if (*M2C_ERROR(/* Read from unset register $v0 */) != sp8) {
                    sp0 = M2C_ERROR(/* Read from unset register $v0 */);
                    glDisable(arg0);
                }
            } else {
                sp0 = M2C_ERROR(/* Read from unset register $v0 */);
                glEnable(arg0);
            }
            *M2C_ERROR(/* Read from unset register $v0 */) = (s8) sp8;
        }
    } else if (sp8 != 1) {
        glDisable(arg0);
    } else {
        glEnable(arg0);
    }
}

s32 __iglooIsEnabled(u32 arg0) {
    s32 temp_v0;
    u8 temp_a3;
    u8 var_a0;

    temp_v0 = *(s32 *)0x1004;
    if (temp_v0 != 0) {
        gl_dgl_default_display(arg0, temp_v0 + 0x64);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            temp_a3 = *M2C_ERROR(/* Read from unset register $v0 */);
            if (arg0 == 0xB50) {
                if (temp_a3 == 0) {
                    var_a0 = 0;
                } else {
                    var_a0 = glIsEnabled(0xB50U) & 0xFF;
                }
            } else {
                var_a0 = temp_a3;
            }
        } else {
            var_a0 = glIsEnabled(arg0) & 0xFF;
        }
    } else {
        var_a0 = 0;
    }
    return (s32) var_a0;
}

void __iglooInitializeEnables(s32 arg0) {
    s32 var_a3;
    void *temp_v0;
    void *var_a4;

    temp_v0 = (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF76970)->unk-7FA8 + 0x7E98;
    var_a4 = temp_v0 + 0x10;
    var_a3 = 0x2C;
    *(temp_v0->unk4 + arg0) = temp_v0->unk8;
    do {
        *(var_a4->unk4 + arg0) = var_a4->unk8;
        *(var_a4->unk14 + arg0) = var_a4->unk18;
        *(var_a4->unk24 + arg0) = var_a4->unk28;
        var_a4 += 0x40;
        var_a3 -= 4;
        *(var_a4->unk-C + arg0) = var_a4->unk-8;
    } while (var_a3 != 0);
}

void __iglooCloneEnables(s32 arg0) {
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_s3;
    s32 var_s1;
    u32 temp_a0_2;
    u8 temp_a3_2;
    void *temp_a2;
    void *var_s0;

    var_s1 = 0x2D;
    temp_s3 = *(s32 *)0x1004;
    var_s0 = &sub_0f020000 + 0x7E98;
loop_5:
    temp_a0 = var_s0->unkC;
    var_s1 -= 1;
    if (temp_a0 != 0) {
        if (__iglooIsExtensionSupported(temp_a0) == 1) {
            goto block_1;
        }
    } else {
block_1:
        temp_a3 = var_s0->unk4;
        temp_a2 = temp_a3 + temp_s3;
        temp_a3_2 = *(temp_a3 + arg0);
        if (temp_a2->unk64 != temp_a3_2) {
            temp_a2->unk64 = temp_a3_2;
            temp_a0_2 = var_s0->unk0;
            if (temp_a3_2 != 1) {
                glDisable(temp_a0_2);
            } else {
                glEnable(temp_a0_2);
            }
        }
    }
    var_s0 += 0x10;
    if (var_s1 != 0) {
        goto loop_5;
    }
}
