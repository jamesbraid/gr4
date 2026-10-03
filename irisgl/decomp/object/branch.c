extern s32 gl_connection_inited;
extern s32 gl_dgl_table_is_remote;

void gl_load_dgl_table(s32 arg0) {
    s64 sp10;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (gl_connection_inited == 0) {
        gl_InitMemory();
        var_ra = sp10;
    }
    sp10 = var_ra;
    if (arg0 != 1) {
        gl_SetImmediateMode(0);
        gl_dgl_table_is_remote = 1;
    } else {
        gl_SetImmediateMode(1);
        gl_dgl_table_is_remote = 0;
    }
}
