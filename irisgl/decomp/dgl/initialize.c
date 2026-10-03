extern s32 gl_connection_inited;
extern s32 gl_dgl_table_is_remote;

void gl_initializer(void) {
    if (gl_connection_inited != 0) {
        return;
    }
    gl_InitMemory();
    gl_SetImmediateMode(1);
    gl_dgl_table_is_remote = 0;
    (gl_comm_default_init())->unk194 = 1;
}

void gl_InitMemory(void) {

}

void gl_SetImmediateMode(s32 arg0) {
    *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5A514)->unk-7E44 = arg0;
}
