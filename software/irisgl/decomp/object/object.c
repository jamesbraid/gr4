extern void *gl_currentend;
extern void (**gl_currentpos)();
extern s32 gl_objchunksize;
extern s16 gl_objsizefrozen;
extern s32 gl_openobj;
extern s32 gl_openobjhdr;
extern s32 gl_replacemode;
extern ? sub_0f030000;

void gl_initobjectstuff(void) {
    gl_objsizefrozen = 0;
    gl_objchunksize = 0x3FC;
    gl_openobj = -1;
    gl_init_intrp(&gl_objchunksize, &gl_objsizefrozen, 0xFFF3D89C);
}

s32 gl_g_getopenobj(void) {
    return *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF3D84C)->unk-7EE8;
}

void gl_g_makeobj(s32 arg0) {
    if (arg0 >= 0) {
        gl_objsizefrozen = 1;
        gl_makeobject();
        return;
    }
    gl_ErrorHandler(0x26, 2, saved_reg_gp - 0x3920);
}

void gl_g_chunksize(s32 arg0) {
    s32 var_a0;

    var_a0 = arg0;
    if (var_a0 <= 0) {
        var_a0 = 0x3FC;
    }
    if (gl_objsizefrozen != 0) {
        gl_ErrorHandler(0x35, 2, &sub_0f030000 - 0x6348);
        return;
    }
    gl_objchunksize = var_a0;
    gl_objsizefrozen = 1;
}

void gl_makeobject(s32 arg0) {
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v0_2;

    if (gl_openobjhdr != 0) {
        __GLcloseobj();
    }
    if (__GLisobj(arg0) != 0) {
        __GLdelobj(arg0);
    }
    temp_v0 = gl_findhash(arg0, -1);
    gl_openobjhdr = temp_v0;
    if (temp_v0 == 0) {
        temp_v0_2 = gl_getnewobjhdr(arg0);
        gl_openobjhdr = temp_v0_2;
        if (temp_v0_2 != 0) {
            gl_SetImmediateMode(0);
            goto block_7;
        }
        gl_SetImmediateMode(1);
        return;
    }
    gl_SetImmediateMode(0);
block_7:
    gl_addchunk(&sub_0f030000 - 0x6338);
    temp_a1 = gl_openobjhdr;
    gl_currentpos = M2C_ERROR(/* Read from unset register $v0 */);
    temp_a1->unk0 = (s32) M2C_ERROR(/* Read from unset register $v0 */);
    if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
        gl_openobjhdr->unk14 = (void (**)()) gl_currentpos;
        gl_openobjhdr->unk18 = (void *) (gl_currentpos + (((s32) gl_objchunksize >> 1) * 2));
        gl_openobjhdr->unk1C = 1;
        gl_openobjhdr->unk8 = 0;
        *gl_currentpos = gl_n_retsym;
        gl_replacemode = 0;
        gl_openobj = arg0;
        gl_currentend = gl_currentpos + (((s32) gl_objchunksize >> 1) * 2);
        return;
    }
    gl_openobjhdr = 0;
    gl_SetImmediateMode(1, temp_a1, 1);
}

s32 gl_getnewobjhdr(s64 arg0) {
    s64 temp_v0;

    temp_v0 = gl_malloc(0x20, saved_reg_gp->unk-3928);
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk14 = 0;
    temp_v0->unk10 = 0;
    temp_v0->unkC = 0;
    temp_v0->unk4 = 0;
    temp_v0->unk1C = 0;
    temp_v0->unk0 = 0;
    if (gl_addhash(temp_v0, subroutine_arg0, -1) != 0) {
        return (s32) subroutine_arg2;
    }
    gl_free(subroutine_arg2, saved_reg_gp->unk-3928);
    return 0;
}

void gl_addchunk(s64 arg0) {
    void *temp_v0;

    if (gl_malloc(8, (s32) arg0) == 0) {
        return;
    }
    temp_v0 = gl_malloc(gl_objchunksize, (s32) subroutine_arg0);
    if (temp_v0 != NULL) {
        subroutine_arg2->unk4 = temp_v0;
        subroutine_arg2->unk0 = (s32) gl_openobjhdr->unk4;
        gl_openobjhdr->unk4 = (s32) subroutine_arg2;
        gl_openobjhdr->unkC = (s32) (gl_openobjhdr->unkC + ((s32) gl_objchunksize >> 1));
        return;
    }
    gl_free(subroutine_arg2, (s32) subroutine_arg0);
}
