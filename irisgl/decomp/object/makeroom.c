extern void *gl_currentend;
extern void (**gl_currentpos)();
extern s32 gl_objchunksize;
extern void *gl_openobjhdr;
extern s32 gl_replacemode;

void gl_makeroom(s64 arg0) {
    s64 sp10;
    s64 sp0;
    s32 temp_a1;
    s32 temp_a2;
    s64 var_ra;
    void (**temp_v0)();

    var_ra = saved_reg_ra;
    sp0 = arg0;
    if (gl_openobjhdr != NULL) {
        if (gl_replacemode != 0) {
            gl_ErrorHandler(0x4A, 2, saved_reg_gp->unk-39A0);
            var_ra = sp10;
        }
        temp_a2 = sp0 * 2;
        temp_a1 = ((gl_currentend - gl_currentpos) - 8) < temp_a2;
        if (temp_a1 == 0) {
            return;
        }
        sp10 = var_ra;
        temp_v0 = gl_addchunk(saved_reg_gp->unk-39A0, temp_a1, temp_a2);
        if (temp_v0 != NULL) {
            if (gl_openobjhdr->unk14 == gl_currentpos) {
                gl_openobjhdr->unk14 = temp_v0;
                gl_openobjhdr->unk18 = (s32) ((((s32) gl_objchunksize >> 1) * 2) + temp_v0);
            }
            temp_v0->unk0 = gl_currentpos->unk0;
            temp_v0->unk4 = (void (**)()) gl_currentpos->unk4;
            gl_currentpos->unk0 = gl_n_jump;
            gl_currentpos->unk4 = temp_v0;
            gl_currentpos = temp_v0;
            gl_currentend = (((s32) gl_objchunksize >> 1) * 2) + temp_v0;
        }
    }
}
