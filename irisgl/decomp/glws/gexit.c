extern s32 gl_initialized;

void gl_free_pups(void) {

}

void gl_g_gexit(void) {
    gl_wmgexit();
    gl_free_cursors();
    gl_free_fonts();
    gl_free_linestyles();
    gl_free_patterns();
    gl_free_objects();
    gl_free_bases();
    gl_free_lighting();
    gl_free_pups();
    gl_free_windows();
    gl_initialized = 0;
}

void gl_free_cursors(void) {

}
