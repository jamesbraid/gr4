extern void *comm_curgfile;
extern ? sub_0f030000;

void gl_rmt_winset(s32 arg0) {
    s32 temp_v0;

    if (gl_findwin() != 0) {
        gl_g_winset(arg0);
    } else {
        temp_v0 = gl_dgl_wid_to_gl(arg0, saved_reg_gp - 0x3898);
        if (temp_v0 >= 0) {
            gl_dgl_winset(temp_v0);
        }
    }
}

void gl_rmt_winclose(s32 arg0) {
    s32 temp_v0;

    if (gl_findwin() != 0) {
        gl_g_winclose(arg0);
    } else {
        temp_v0 = gl_dgl_wid_to_gl(arg0, &sub_0f030000 - 0x5F28);
        if (temp_v0 >= 0) {
            gl_dgl_winclose(temp_v0);
        }
    }
}

void gl_rmt_windepth(s32 arg0) {
    s32 temp_v0;

    if (gl_findwin() != 0) {
        gl_g_windepth(arg0);
    } else {
        temp_v0 = gl_dgl_wid_to_gl(arg0, &sub_0f030000 - 0x5F18);
        if (temp_v0 >= 0) {
            gl_dgl_windepth(temp_v0);
        }
    }
}

void gl_rmt_swinopen(s32 arg0) {
    s32 temp_v0;

    if (gl_findwin() != 0) {
        gl_g_swinopen(arg0);
    } else {
        temp_v0 = gl_dgl_wid_to_gl(arg0, &sub_0f030000 - 0x5F08);
        if (temp_v0 >= 0) {
            gl_dgl_swinopen(temp_v0);
        }
    }
}

void __GLgl_islocal(void) {
    if (gl_shlib_version() >= 4) {
        if (comm_curgfile != NULL) {
            return;
        }
        gl_comm_default_init();
    }
}
