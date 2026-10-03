extern ? sub_0f020000;

void gl_i_callobj(s64 arg0) {
    s32 *var_v0;
    s32 temp_a0;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    var_v0 = gl_findhash(subroutine_arg0, -1);
    if (var_v0 != NULL) {
        goto block_3;
    }
    var_v0 = gl_getnewobjhdr(subroutine_arg0);
    if (var_v0 == NULL) {
        return;
    }
block_3:
    temp_a0 = *var_v0;
    if (temp_a0 != 0) {
        gl_interpret(temp_a0);
    }
}

void gl_c_callobj(s64 arg0) {
    if (saved_reg_gp->unk-5244 == 0) {
        gl_intrptab_insert(&sub_0f020000 + 0x7130);
        saved_reg_gp->unk-5244 = 1;
    }
    if ((gl_findhash(arg0, -1) == 0) && (gl_getnewobjhdr(arg0) == 0)) {
        return;
    }
    gl_compile(4, sp);
}

void gl_n_callobj(s64 arg0) {
    s64 sp10;
    s64 sp0;
    s32 temp_a0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    sp0 = arg0;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
        var_ra = sp10;
    }
    temp_a0 = **sp0;
    if (temp_a0 != 0) {
        sp10 = var_ra;
        gl_interpret(temp_a0);
    }
}
