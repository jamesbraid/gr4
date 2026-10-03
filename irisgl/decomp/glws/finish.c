typedef struct __gl_sstateRec {
    /* 0x000 */ void **display;
    /* 0x004 */ s32 screen;
    /* 0x008 */ u32 root;
    /* 0x00C */ u32 colormap;
    /* 0x010 */ void **visual;
    /* 0x014 */ char pad14[8];                      /* maybe part of visual[3]? */
    /* 0x01C */ void *unk1C;                        /* inferred */
    /* 0x020 */ char pad20[0xF0];                   /* maybe part of unk1C[0x3D]? */
    /* 0x110 */ s32 graphicsType;
} gl_sstate;                                        /* size = 0x114 */

? XFlush(s32);                                      /* extern */
? glXWaitVideoSyncSGI(?, ?, void *);                /* extern */
extern s32 _GLdirtycmaps;

void gl_g_gflush(void) {
    glFlush();
    if (_GLdirtycmaps != 0) {
        _GLflushcmaps();
    } else {
        XFlush(gl_sstatep->unk1C->unk4);
    }
}

void gl_g_finish(void) {
    if (_GLdirtycmaps != 0) {
        _GLflushcmaps();
    }
    glFinish();
}

void gl_g_gsync(void) {
    glXWaitVideoSyncSGI(1, 0, sp);
}
