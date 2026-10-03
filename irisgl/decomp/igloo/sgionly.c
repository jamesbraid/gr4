s32 strlen(s32, ?);                                 /* extern */
extern s32 *comm_buffer;
extern s32 *comm_curbufpos;
extern u32 comm_endbuffer;
extern s32 comm_stdsize;

void gl_d_gl_sincos(s32 arg0, f32 *arg1, s64 arg2) {
    s64 sp18;
    s32 *temp_a2;

    sp18 = arg2;
    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = arg0;
    temp_a2->unk0 = 0x1C7;
    comm_curbufpos = temp_a2 + 8;
    gl_comm_read_data(1, temp_a2, (s32 *)0xFFF2822C);
    *arg1 = comm_buffer->unk4;
    *sp18 = (f32) comm_buffer->unk8;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c], gap at: 0x10. */
void gl_d_gl_readscreen(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s32 *temp_a6;
    s64 temp_s2;

    unksp10 = arg3;
    unksp8 = arg2;
    unksp18 = arg1;
    temp_a6 = comm_curbufpos;
    temp_s2 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0x20)) {
        gl_comm_flush();
    }
    temp_a6->unk1C = (s32) temp_s2;
    temp_a6->unk14 = (s32) temp_s2;
    temp_a6->unkC = (s32) temp_s2;
    temp_a6->unk4 = (s16) temp_s2;
    temp_a6->unk18 = -1;
    temp_a6->unk10 = -1;
    temp_a6->unk8 = -1;
    temp_a6->unk0 = 0x1C8;
    comm_curbufpos = temp_a6 + 0x20;
    gl_comm_read_data(1, (s32 *)-1, (s32 *)0x1C8);
    gl_mem_unpack_array(unksp10, gl_mem_unpack_array(unksp8, gl_mem_unpack_array(unksp18, comm_buffer + 8, gl_mem_copy_array), gl_mem_copy_array), gl_mem_copy_array);
}

void gl_d_gl_resetls(s32 arg0) {
    s32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1C9;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1C9);
    }
}

void gl_d_gl_misc(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 *temp_a2_2;
    s32 *temp_t1;
    s32 temp_a2;
    s32 var_a3;
    s64 var_ra;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    unksp10 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t1 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t1 + 0x68)) {
        sp30 = (s64) arg1;
        sp28 = (s64) var_a3;
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_t1->unk8 = arg1;
    temp_t1->unk4 = arg0;
    temp_a2 = (arg1 + 3) & ~3;
    temp_t1->unk0 = 0x1CB;
    temp_t1->unkC = temp_a2;
    if (arg2 == 0) {
        sp20 = var_ra;
        var_v0 = temp_a2 + temp_t1 + 0x10;
    } else {
        sp28 = (s64) var_a3;
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t1 + 0x10, arg2, temp_a2, gl_mem_copy_array);
    }
    var_v0->unk8 = var_a3;
    var_v0->unk0 = var_a3;
    var_v0->unk4 = -1;
    temp_a2_2 = var_v0 + 0xC;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2, var_a3);
    gl_mem_unpack_array(unksp10, comm_buffer + 8, gl_mem_copy_array);
}

void gl_d_gl_scrrect(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 *temp_s1;
    s32 *temp_t0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_t0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t0 + 0x18)) {
        sp28 = (s64) arg1;
        sp20 = (s64) arg2;
        sp18 = (s64) arg3;
        sp10 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_t0->unk14 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    temp_t0->unk10 = arg3;
    temp_t0->unkC = arg2;
    temp_t0->unk8 = arg1;
    temp_t0->unk4 = arg0;
    temp_t0->unk0 = 0x1CE;
    temp_s1 = temp_t0 + 0x18;
    comm_curbufpos = temp_s1;
    if ((u32) comm_endbuffer < (u32) temp_s1) {
        sp30 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_gl_setdisplay(s32 arg0) {
    s32 *temp_v0;
    s32 *var_s0;
    s32 temp_a2;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x1CA;
    temp_a2 = (strlen(arg0, 0x1CA) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = var_s0;
    gl_comm_read_data(1);
}

s32 gl_d_gl_glx_getconfig(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp0;
    s32 *temp_a2_3;
    s32 *temp_t3;
    s32 temp_a2;
    s32 temp_a2_2;
    s64 var_ra;
    void *var_v0;

    var_ra = saved_reg_ra;
    sp0 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_t3 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t3 + 0x6C)) {
        sp38 = (s64) arg0;
        sp30 = (s64) arg1;
        sp28 = (s64) arg2;
        sp20 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_t3->unkC = arg2;
    temp_t3->unk8 = arg1;
    temp_t3->unk4 = arg0;
    temp_t3->unk0 = 0x1F6;
    temp_a2 = ((arg2 * 4) + 3) & ~3;
    temp_t3->unk10 = temp_a2;
    if (arg3 == 0) {
        sp18 = var_ra;
        var_v0 = temp_a2 + temp_t3 + 0x14;
    } else {
        sp20 = M2C_ERROR(/* Read from unset register $a4 */);
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t3 + 0x14, arg3, temp_a2, gl_mem_hton_long_array);
    }
    var_v0->unk0 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    temp_a2_2 = M2C_ERROR(/* Read from unset register $a4 */) * 4;
    var_v0->unk4 = temp_a2_2;
    var_v0->unk8 = temp_a2_2;
    temp_a2_3 = var_v0 + 0xC;
    comm_curbufpos = temp_a2_3;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_3);
    gl_mem_unpack_array(sp0, comm_buffer + 8, gl_mem_ntoh_long_array);
    return comm_buffer->unk4;
}

void gl_d_gl_glx_link(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s64 sp18;
    s32 *temp_a7;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        sp20 = (s64) arg1;
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk8 = arg1;
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x1F7;
    temp_a2 = ((arg1 * 4) + 3) & ~3;
    temp_a7->unkC = temp_a2;
    if (arg2 == 0) {
        sp18 = var_ra;
        var_v0 = temp_a2 + temp_a7 + 0x10;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0x10, arg2, temp_a2, gl_mem_hton_long_array);
    }
    comm_curbufpos = var_v0;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer);
}

void gl_d_gl_glx_unlink(s32 arg0, s32 arg1) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x1F8;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (s32 *)0x1F8, (s32 *)0xFFF27A78);
}

void gl_d_gl_glx_winset(s32 arg0, s32 arg1) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x1F9;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (s32 *)0x1F9, (s32 *)0xFFF27A18);
}

void gl_d_gl_pixmode_misc(s32 arg0, s64 arg1) {
    s32 *temp_a2;

    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = arg0;
    temp_a2->unkC = 0xC;
    temp_a2->unk8 = 0xC;
    temp_a2->unk0 = 0x200;
    comm_curbufpos = temp_a2 + 0x10;
    gl_comm_read_data(1, temp_a2, (s32 *)0x200);
    gl_mem_unpack_array(arg1, comm_buffer + 4, gl_mem_ntoh_long_array);
}

void gl_d_gl_ms_init_pixels(void) {
    s32 *temp_v0;

    *comm_curbufpos = 0x217;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x217, 0xFFF27934);
    }
}

void gl_d_gl_rectzoomoffset(f32 arg0, f32 arg1) {
    s32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x238;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x238, 0xFFF278D4);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c, 0x40, 0x44], gap at: 0x30. */
void gl_dgl_gl_lrectproc(s32 arg0, s32 arg1, ? arg2, s64 arg3) {
    s32 *temp_t1;
    s32 temp_a2;
    s64 temp_t0;
    void *temp_v0;

    unksp30 = arg3;
    temp_t1 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t1 + 0x6C)) {
        gl_comm_flush();
    }
    temp_t1->unk8 = arg1;
    temp_t1->unk4 = arg0;
    temp_t1->unk0 = 0x23D;
    temp_t0 = arg0 * arg1 * 4;
    unksp28 = temp_t0;
    temp_a2 = -4 & (temp_t0 + 3);
    temp_t1->unkC = temp_a2;
    temp_v0 = gl_mem_pack_lrect(temp_t1 + 0x10, arg2, temp_a2, 0);
    temp_v0->unk0 = -4;
    temp_v0->unkC = (s32) M2C_ERROR(/* Read from unset register $a5 */);
    temp_v0->unk8 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    temp_v0->unk4 = (s32) unksp28;
    comm_curbufpos = temp_v0 + 0x10;
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    gl_comm_read_data(1);
    gl_mem_unpack_lrectproc(unksp30, comm_buffer + 4, arg0, arg1);
}
