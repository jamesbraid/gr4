s64 realloc();                                      /* extern */
? sprintf(void *, void *, s64, s64);                /* extern */
extern ? sub_0f020000;

void *__iglooMalloc(s64 arg0) {
    s64 sp118;
    void *temp_v0;

    unksp108 = arg0;
    temp_v0 = malloc((u32) arg0);
    if (temp_v0 == NULL) {
        sp118 = (s64) temp_v0;
        sprintf(sp, &sub_0f020000 + 0x2E68, unksp108);
        gl_ErrorHandler(2, 2, sp);
    }
    return temp_v0;
}

void *__iglooCalloc(s64 arg0) {
    void *temp_v0;

    unksp8 = arg0;
    temp_v0 = __iglooMalloc();
    if (temp_v0 != NULL) {
        bzero(temp_v0, (u32) unksp8);
    }
    return temp_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x100, 0x104, 0x118, 0x11c], gap at: 0x110. */
void *__iglooRealloc(s64 arg0, s64 arg1) {
    s64 sp120;
    s64 temp_v0;

    unksp110 = arg1;
    unksp108 = arg0;
    temp_v0 = realloc();
    if (temp_v0 == 0) {
        sp120 = temp_v0;
        sprintf(sp, &sub_0f020000 + 0x2E88, unksp110, unksp108);
        gl_ErrorHandler(2, 2, sp);
    }
    return (void *) temp_v0;
}

void __iglooFree(void *arg0) {
    free(arg0);
}

void *gl_malloc(s32 arg0) {
    if (arg0 == 0) {
        return NULL;
    }
    return __iglooMalloc();
}

void *gl_realloc(void) {
    return __iglooRealloc();
}

void gl_free(void) {
    __iglooFree();
}
