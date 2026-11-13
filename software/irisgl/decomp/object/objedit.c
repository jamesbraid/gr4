extern s32 gl_currentend;
extern s32 gl_currentpos;
extern s32 gl_objchunksize;
extern s32 gl_openobj;
extern s32 *gl_openobjhdr;
extern s32 gl_replacemode;

void gl_g_editobj(s32 arg0) {
    s32 *temp_v0;

    if (gl_openobjhdr != NULL) {
        __GLcloseobj();
    }
    temp_v0 = gl_findhash(arg0, -1);
    gl_openobjhdr = temp_v0;
    if ((temp_v0 != NULL) && (temp_v0->unk1C != 0)) {
        gl_SetImmediateMode(0);
        gl_currentpos = gl_openobjhdr->unk14;
        gl_replacemode = 0;
        gl_openobj = arg0;
        gl_currentend = gl_openobjhdr->unk18;
        return;
    }
    gl_SetImmediateMode(1);
    gl_openobjhdr = NULL;
    gl_ErrorHandler(5, 2, saved_reg_gp - 0x3910, &gl_openobjhdr);
}

void gl_g_objreplace(s32 arg0) {
    s32 temp_v0;

    if (gl_openobjhdr != NULL) {
        if (arg0 != -3) {
            if (arg0 != -2) {
                temp_v0 = gl_findhash(gl_openobj, arg0, &gl_replacemode, -2);
                gl_currentpos = temp_v0;
                if (temp_v0 != 0) {
                    gl_currentpos = temp_v0 + 8;
                    gl_replacemode = 1;
                    return;
                }
                gl_ErrorHandler(0x20, 2, saved_reg_gp->unk-3918);
                return;
            }
            gl_replacemode = 1;
            gl_currentpos = *gl_openobjhdr;
            return;
        }
        return;
    }
    gl_ErrorHandler(5, 2, saved_reg_gp->unk-3918, (s32 **)-2);
}

void gl_g_objinsert(s32 arg0) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s64 temp_v0;

    if (gl_openobjhdr != NULL) {
        if (arg0 != -3) {
            if (arg0 != -2) {
                temp_v0 = gl_findhash(gl_openobj, arg0, (s32 *)-2);
                sp0 = temp_v0;
                temp_a2 = saved_reg_gp->unk-3914;
                if (temp_v0 != 0) {
                    gl_addchunk(temp_a2);
                    if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                        return;
                    }
                    sp0->unk0 = gl_n_jump;
                    sp0->unk4 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
                    temp_a3 = sp0 + 8;
                    gl_currentpos = M2C_ERROR(/* Read from unset register $v0 */);
                    gl_currentend = (((s32) gl_objchunksize >> 1) * 2) + M2C_ERROR(/* Read from unset register $v0 */);
                    M2C_ERROR(/* Read from unset register $v0 */)->unk4 = temp_a3;
                    *M2C_ERROR(/* Read from unset register $v0 */) = gl_n_jump;
                    gl_replacehash(M2C_ERROR(/* Read from unset register $v0 */), gl_openobj, arg0, temp_a3);
                    gl_addtag(arg0);
                    gl_replacemode = 0;
                    return;
                }
                gl_ErrorHandler(0x20, 2, temp_a2);
                return;
            }
            gl_addchunk(saved_reg_gp->unk-3914, -2);
            if (M2C_ERROR(/* Read from unset register $v0 */) == 0) {
                return;
            }
            *M2C_ERROR(/* Read from unset register $v0 */) = gl_n_jump;
            M2C_ERROR(/* Read from unset register $v0 */)->unk4 = (s32) *gl_openobjhdr;
            *gl_openobjhdr = M2C_ERROR(/* Read from unset register $v0 */);
            gl_replacemode = 0;
            gl_currentpos = M2C_ERROR(/* Read from unset register $v0 */);
            gl_currentend = (((s32) gl_objchunksize >> 1) * 2) + M2C_ERROR(/* Read from unset register $v0 */);
            return;
        }
        __GLeditobj(gl_openobj, -2);
        gl_replacemode = 0;
        return;
    }
    gl_ErrorHandler(5, 2, saved_reg_gp->unk-3914, (s32 **)-2);
}
