extern ? sub_0f030000;

void gl_i_nmode(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_normalmode(arg0);
}

void gl_c_nmode(s32 arg0) {
    if (saved_reg_gp->unk-5048 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6378);
        saved_reg_gp->unk-5048 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_nmode(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_normalmode((s64) *arg0);
}

void gl_normalmode(s64 arg0) {
    if ((arg0 != 0) && (arg0 != 1)) {
        gl_ErrorHandler(0x62, 2, saved_reg_gp - 0x4288);
    } else {
        __iglooSetEnable(0xBA1, 1);
    }
}
