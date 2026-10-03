extern void *gl_currentpos;
extern s32 gl_openobj;
extern void *gl_openobjhdr;
extern ? gl_replacemode;

void gl_g_maketag(s64 arg0) {
    s64 sp0;
    s32 temp_a1;
    void *temp_v0;

    if (arg0 >= 0) {
        sp0 = arg0;
        if (gl_openobjhdr == NULL) {
            return;
        }
        if (__GListag(sp0) != 0) {
            gl_ErrorHandler(0x24, 2, saved_reg_gp->unk-3850, &gl_replacemode);
            return;
        }
        if (gl_replacemode != (? *)1) {
            if (gl_makeroom(4) != 0) {
                if (gl_addhash(gl_currentpos, gl_openobj, sp0) != 0) {
                    temp_v0 = gl_malloc(8, saved_reg_gp->unk-3850);
                    if (temp_v0 == NULL) {
                        gl_removehash(gl_openobj, sp0, &gl_openobjhdr);
                        return;
                    }
                    temp_v0->unk4 = (s32) sp0;
                    temp_v0->unk0 = (void *) gl_openobjhdr->unk10;
                    gl_openobjhdr->unk10 = temp_v0;
                    temp_a1 = gl_openobjhdr->unk8 + 4;
                    gl_openobjhdr->unk8 = temp_a1;
                    gl_addtag(sp0, temp_a1, gl_openobjhdr, gl_openobjhdr);
                    return;
                }
                return;
            }
            return;
        }
        gl_ErrorHandler(0x3E, 2, saved_reg_gp->unk-3850, gl_replacemode);
        return;
    }
    gl_ErrorHandler(0x23, 2, saved_reg_gp->unk-3850);
}

void gl_g_istag(s32 arg0) {
    if ((arg0 != -2) && (arg0 != -3)) {
        if ((gl_findhash(gl_openobj, arg0) != 0) && (arg0 != -1)) {

        }
    }
}

void gl_addtag(s64 arg0) {
    s32 temp_a2;

    if (gl_makeroom(4) != 0) {
        temp_a2 = gl_openobjhdr->unk14;
        if (temp_a2 == gl_currentpos) {
            gl_openobjhdr->unk14 = (s32) (temp_a2 + 8);
        }
        gl_currentpos->unkC = (s32) gl_currentpos->unk4;
        gl_currentpos->unk8 = (void (*)()) gl_currentpos->unk0;
        gl_currentpos->unk0 = gl_n_tag;
        gl_currentpos += 4;
        gl_currentpos->unk4 = (s32) subroutine_arg0;
        gl_currentpos += 4;
    }
}
