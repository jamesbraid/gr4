extern s32 gl_objchunksize;
extern s32 gl_openobj;
extern void *gl_openobjhdr;
extern s32 gl_replacemode;

void gl_g_closeobj(void) {
    s32 temp_a3;

    if (gl_openobjhdr != NULL) {
        temp_a3 = gl_openobjhdr->unkC;
        if (((gl_objchunksize * 4) >= temp_a3) || ((gl_openobjhdr->unk8 * 2) >= temp_a3)) {

        } else {
            __GLcompactify(gl_openobj, gl_openobjhdr, &gl_openobjhdr, temp_a3);
        }
        gl_openobjhdr = NULL;
        gl_SetImmediateMode(1);
        gl_replacemode = 0;
        gl_openobj = -1;
    }
}

void gl_g_isobj(void) {
    void *temp_v0;

    temp_v0 = gl_findhash(-1);
    if (temp_v0 != NULL) {
        if (temp_v0->unk1C != 0) {

        }
    }
}
