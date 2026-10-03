extern ? sub_0f020000;

void gl_decnet_init(void) {
    void *temp_a0;

    temp_a0 = &sub_0f020000 + 0x7978;
    gl_dgl_error(temp_a0, temp_a0 + 0x10);
}
