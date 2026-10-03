void gl_data_check_special(void *arg0, ? arg1, ? arg2) {
    gl_comm_io(arg0->unk1C, arg2, sp, 4);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 4) {
        gl_comm_fatal_error(saved_reg_gp - 0x3B90);
    }
    gl_comm_io(arg0->unk18, arg1, sp, 1);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 1) {
        gl_comm_fatal_error(saved_reg_gp - 0x3B90 + 8);
    }
    gl_comm_io(arg0->unk18, arg1, sp + 1, 1);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 1) {
        gl_comm_fatal_error(saved_reg_gp - 0x3B90 + 0x10);
    }
    gl_comm_io(arg0->unk18, arg1, sp + 2, 1);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 1) {
        gl_comm_fatal_error(saved_reg_gp - 0x3B90 + 0x18);
    }
    gl_comm_io(arg0->unk18, arg1, sp + 3, 1);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 1) {
        gl_comm_fatal_error(saved_reg_gp - 0x3B90 + 0x20);
    }
    if (subroutine_arg0 == -0x1234) {

    }
}

void gl_data_check_xdr(void) {
    gl_d_dglxdrformat(2, 1);
}
