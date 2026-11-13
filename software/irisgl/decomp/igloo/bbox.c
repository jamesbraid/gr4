? glFeedbackBuffer(?, ?, void *);                   /* extern */
extern ? sub_0f020000;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x50, 0x54, 0x80, 0x84, 0x88, 0x8c], gap at: 0x58. */
void gl_bbox(f64 arg3, s64 arg0, f64 arg1) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    s32 temp_s0;
    s32 temp_s3;
    void *temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;

    unksp70 = arg0;
    unksp78 = arg1;
    unksp68 = arg3;
    unksp60 = M2C_ERROR(/* Read from unset register $f16 */);
    unksp58 = M2C_ERROR(/* Read from unset register $f17 */);
    temp_s0 = __iglooGetCurrentContextInfo();
    temp_s3 = __iglooGetRenderMode();
    glFeedbackBuffer(0x14, 0x600, sp);
    __iglooRenderMode(0x1C01, temp_s0);
    glRectf(second half of f64, second half of f64, M2C_ERROR(/* Read from unset register $a2 */), M2C_ERROR(/* Read from unset register $a3 */));
    var_f5 = subroutine_arg1;
    if (__iglooRenderMode(temp_s3, temp_s0) != 0) {
        var_f6 = var_f5;
        temp_a0 = sp + 0x24;
        var_f8 = subroutine_arg2;
        temp_v0 = sp + 0xC;
        temp_f4 = sp->unkC;
        var_f7 = var_f8;
        if (temp_f4 < var_f6) {
            var_f6 = temp_f4;
        }
        if (var_f5 < temp_f4) {
            var_f5 = temp_f4;
        }
        temp_f4_2 = temp_v0->unk4;
        temp_v0_2 = temp_v0 + 8;
        if (temp_f4_2 < var_f7) {
            var_f7 = temp_f4_2;
        }
        if (var_f8 < temp_f4_2) {
            var_f8 = temp_f4_2;
        }
        if (temp_v0_2 != temp_a0) {
            temp_f4_3 = temp_v0->unk8;
            if (temp_f4_3 < var_f6) {
                var_f6 = temp_f4_3;
            }
            if (var_f5 < temp_f4_3) {
                var_f5 = temp_f4_3;
            }
            temp_f4_4 = temp_v0_2->unk4;
            temp_v0_3 = temp_v0_2 + 8;
            if (temp_f4_4 < var_f7) {
                var_f7 = temp_f4_4;
            }
            if (var_f8 < temp_f4_4) {
                var_f8 = temp_f4_4;
            }
            if (temp_v0_3 != temp_a0) {
                temp_f4_5 = temp_v0_2->unk8;
                if (temp_f4_5 < var_f6) {
                    var_f6 = temp_f4_5;
                }
                if (var_f5 < temp_f4_5) {
                    var_f5 = temp_f4_5;
                }
                temp_f4_6 = temp_v0_3->unk4;
                if (temp_f4_6 < var_f7) {
                    var_f7 = temp_f4_6;
                }
                if (var_f8 < temp_f4_6) {
                    var_f8 = temp_f4_6;
                }
            }
        }
        if (((f32) unksp70 <= (var_f5 - var_f6)) || ((f32) unksp78 <= (var_f8 - var_f7))) {

        }
    }
}

void gl_i_bbox2s(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
}

void gl_c_bbox2s(s16 arg0, s64 arg1, s16 arg2, s16 arg3) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-5284 == 0) {
        sp50 = arg1;
        sp48 = (s64) arg2;
        sp40 = (s64) arg3;
        sp38 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        gl_intrptab_insert(&sub_0f020000 + 0x6F78);
        saved_reg_gp->unk-5284 = 1;
    }
    gl_compile(8, sp, arg2, arg3);
}

void gl_n_bbox2s(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_remove(arg0->unk0, arg0->unk2);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {

    }
}

void gl_i_bbox2i(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
}

void gl_c_bbox2i(s16 arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;

    if (saved_reg_gp->unk-5280 == 0) {
        sp58 = arg1;
        sp50 = (s64) arg2;
        sp48 = (s64) arg3;
        sp40 = M2C_ERROR(/* Read from unset register $a4 */);
        sp38 = M2C_ERROR(/* Read from unset register $a5 */);
        gl_intrptab_insert(&sub_0f020000 + 0x6F88);
        saved_reg_gp->unk-5280 = 1;
    }
    gl_compile(0xC, sp, (s16) arg2, (s16) arg3, M2C_ERROR(/* Read from unset register $a4 */), M2C_ERROR(/* Read from unset register $a5 */));
}

void gl_n_bbox2i(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_remove(arg0->unk0, arg0->unk2);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {

    }
}

void gl_i_bbox2(void) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x50, 0x54], gap at: 0x40. */
void gl_c_bbox2(f64 arg3, s16 arg0, f32 arg1, s16 arg2) {
    s64 sp58;
    ?32 temp_f6;
    ?32 var_f5;
    s16 var_a2;

    var_a2 = arg2;
    temp_f6 = M2C_ERROR(/* Read from unset register $f17 */);
    var_f5 = M2C_ERROR(/* Read from unset register $f16 */);
    if (saved_reg_gp->unk-527C == 0) {
        sp58 = (bitwise s64) arg1;
        unksp48 = arg3;
        unksp40 = (f64) var_f5;
        unksp38 = (f64) temp_f6;
        gl_intrptab_insert(&sub_0f020000 + 0x6F98, arg1);
        var_f5 = second half of f64;
        var_a2 = 1;
        saved_reg_gp->unk-527C = 1;
    }
    gl_compile(0xC, sp, var_a2, (bitwise s16) arg1, var_f5, temp_f6);
}

void gl_n_bbox2(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_remove(arg0->unk0, arg0->unk2);
    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {

    }
}
