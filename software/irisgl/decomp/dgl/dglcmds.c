s32 strlen(s32, ?);                                 /* extern */
extern u32 *comm_buffer;
extern u32 *comm_curbufpos;
extern void *comm_curgfile;
extern u32 comm_endbuffer;
extern s32 comm_stdsize;

void gl_d_gversion(s64 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk8 = 0xC;
    temp_a1->unk4 = 0xC;
    temp_a1->unk0 = 1;
    comm_curbufpos = temp_a1 + 0xC;
    gl_comm_read_data(1, temp_a1, (u32 *)1, (u32 **)0xFFF8EF9C);
    gl_mem_unpack_array(arg0, comm_buffer + 8, gl_mem_copy_array);
}

void gl_d_pagecolor(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 2;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 2);
    }
}

void gl_d_textcolor(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 3;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 3);
    }
}

void gl_d_textport(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 4;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_arc(f32 arg0, f32 arg1, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    s64 temp_a1;
    s64 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *temp_v0;

    var_ra = saved_reg_ra;
    var_f5 = arg1;
    temp_a7 = comm_curbufpos;
    temp_a2 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_a1 = (s64) (arg3 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x18)) {
        sp28 = temp_a1;
        sp20 = temp_a2;
        sp18 = (f64) arg1;
        sp10 = (f64) var_f5;
        gl_comm_flush((u16) temp_a1, temp_a2);
        var_f5 = second half of f64;
        var_ra = sp30;
    }
    temp_a7->unk12 = (s16) temp_a2;
    temp_a7->unk10 = (s16) temp_a1;
    temp_a7->unkC = var_f5;
    temp_a7->unk8 = arg1;
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 5;
    temp_v0 = temp_a7 + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        sp30 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_arcf(f32 arg0, f32 arg1, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    f64 sp18;
    f64 sp10;
    f32 var_f5;
    s64 temp_a1;
    s64 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *temp_v0;

    var_ra = saved_reg_ra;
    var_f5 = arg1;
    temp_a7 = comm_curbufpos;
    temp_a2 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_a1 = (s64) (arg3 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x18)) {
        sp28 = temp_a1;
        sp20 = temp_a2;
        sp18 = (f64) arg1;
        sp10 = (f64) var_f5;
        gl_comm_flush((u16) temp_a1, temp_a2);
        var_f5 = second half of f64;
        var_ra = sp30;
    }
    temp_a7->unk12 = (s16) temp_a2;
    temp_a7->unk10 = (s16) temp_a1;
    temp_a7->unkC = var_f5;
    temp_a7->unk8 = arg1;
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 6;
    temp_v0 = temp_a7 + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        sp30 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_arcfi(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 temp_a6;
    s64 temp_a7;
    s64 var_ra;
    u32 *temp_t2;
    u32 *temp_v0;

    var_ra = saved_reg_ra;
    temp_t2 = comm_curbufpos;
    temp_a7 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_a6 = (s64) (arg3 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_t2 + 0x18)) {
        sp28 = (s64) arg1;
        sp20 = (s64) arg2;
        sp18 = temp_a6;
        sp10 = temp_a7;
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_t2->unk12 = (s16) temp_a7;
    temp_t2->unk10 = (s16) temp_a6;
    temp_t2->unkC = arg2;
    temp_t2->unk8 = arg1;
    temp_t2->unk4 = arg0;
    temp_t2->unk0 = 7;
    temp_v0 = temp_t2 + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        sp30 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_arci(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 temp_a6;
    s64 temp_a7;
    s64 var_ra;
    u32 *temp_t2;
    u32 *temp_v0;

    var_ra = saved_reg_ra;
    temp_t2 = comm_curbufpos;
    temp_a7 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_a6 = (s64) (arg3 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_t2 + 0x18)) {
        sp28 = (s64) arg1;
        sp20 = (s64) arg2;
        sp18 = temp_a6;
        sp10 = temp_a7;
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_t2->unk12 = (s16) temp_a7;
    temp_t2->unk10 = (s16) temp_a6;
    temp_t2->unkC = arg2;
    temp_t2->unk8 = arg1;
    temp_t2->unk4 = arg0;
    temp_t2->unk0 = 8;
    temp_v0 = temp_t2 + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        sp30 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_attachcursor(s32 arg0, s32 arg1) {
    s16 temp_a2;
    u16 temp_a0;
    u32 *temp_v0;

    temp_a2 = arg0 & 0xFFFF;
    temp_a0 = arg1 & 0xFFFF;
    comm_curbufpos->unk6 = temp_a0;
    comm_curbufpos->unk4 = temp_a2;
    comm_curbufpos->unk0 = 9;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, (s64) temp_a2);
    }
}

void gl_d_backbuffer(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xAU);
    }
}

void gl_d_bbox2(f32 arg3, s64 arg0, s64 arg1) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 temp_f6;
    f32 var_f5;
    s64 temp_a3;
    s64 temp_a4;
    s64 var_ra;
    u32 *temp_a7;
    u32 *temp_v0;

    var_ra = saved_reg_ra;
    temp_f6 = M2C_ERROR(/* Read from unset register $f17 */);
    var_f5 = M2C_ERROR(/* Read from unset register $f16 */);
    temp_a7 = comm_curbufpos;
    temp_a4 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x1C)) {
        sp30 = temp_a3;
        sp28 = temp_a4;
        sp20 = (f64) arg3;
        sp18 = (f64) var_f5;
        sp10 = (f64) temp_f6;
        gl_comm_flush((u16) temp_a3);
        var_f5 = second half of f64;
        var_ra = sp38;
    }
    temp_a7->unk14 = temp_f6;
    temp_a7->unk10 = var_f5;
    temp_a7->unkC = arg3;
    temp_a7->unk8 = arg1;
    temp_a7->unk6 = (s16) temp_a4;
    temp_a7->unk4 = (s16) temp_a3;
    temp_a7->unk0 = 0xB;
    temp_v0 = temp_a7 + 0x18;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        sp38 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_bbox2i(s64 arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 temp_a7;
    s64 temp_t0;
    s64 var_ra;
    u32 *temp_at;
    u32 *temp_t3;

    var_ra = saved_reg_ra;
    temp_t3 = comm_curbufpos;
    temp_t0 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a7 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_t3 + 0x1C)) {
        sp30 = temp_a7;
        sp28 = temp_t0;
        sp20 = (s64) arg2;
        sp18 = (s64) arg3;
        sp10 = M2C_ERROR(/* Read from unset register $a4 */);
        sp8 = M2C_ERROR(/* Read from unset register $a5 */);
        gl_comm_flush();
        var_ra = sp38;
    }
    temp_t3->unk14 = (s32) M2C_ERROR(/* Read from unset register $a5 */);
    temp_t3->unk10 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    temp_t3->unkC = arg3;
    temp_t3->unk8 = arg2;
    temp_t3->unk6 = (s16) temp_t0;
    temp_t3->unk4 = (s16) temp_a7;
    temp_t3->unk0 = 0xC;
    temp_at = temp_t3 + 0x18;
    comm_curbufpos = temp_at;
    if ((u32) comm_endbuffer < (u32) temp_at) {
        sp38 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_blink(s64 arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp0;
    s16 temp_a7;
    s64 temp_a6;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t2;
    s64 var_a0;
    s64 var_ra;
    u32 temp_v0;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    temp_a7 = arg1 & 0xFFFF;
    temp_t2 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t1 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg2 << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    temp_a6 = (s64) (var_a0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x18)) {
        sp30 = temp_a6;
        sp28 = (s64) temp_a7;
        sp20 = temp_t0;
        sp18 = temp_t1;
        sp10 = temp_t2;
        gl_comm_flush();
        var_a0 = (s64) comm_curbufpos;
        var_ra = sp38;
        sp0 = var_a0;
    }
    sp0->unkC = (s16) temp_t2;
    sp0->unkA = (s16) temp_t1;
    sp0->unk8 = (s16) temp_t0;
    sp0->unk6 = temp_a7;
    sp0->unk4 = (s16) temp_a6;
    sp0->unk0 = 0xD;
    temp_v0 = sp0 + 0x10;
    comm_curbufpos = (u32 *) temp_v0;
    if ((u32) comm_endbuffer < temp_v0) {
        sp38 = var_ra;
        gl_comm_flush((u16) var_a0);
    }
}

void gl_d_callobj(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xE;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xEU);
    }
}

void gl_d_charstr(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_at;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0xF;
    temp_a2 = (strlen(arg0, 0xF) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_curbufpos = var_s0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) var_s0) {
        gl_comm_flush();
    }
}

void gl_d_circ(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x10;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x10U, 0xFFF8E4F4);
    }
}

void gl_d_circf(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11U, 0xFFF8E488);
    }
}

void gl_d_circfi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x12;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x12U);
    }
}

void gl_d_circi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x13;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x13U);
    }
}

void gl_d_clear(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x14;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x14U, 0xFFF8E344);
    }
}

void gl_d_clearhitcode(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x15;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x15U, 0xFFF8E2E4);
    }
}

void gl_d_closeobj(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x16;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x16U, 0xFFF8E284);
    }
}

void gl_d_cmov(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x17;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x17U, 0xFFF8E224);
    }
}

void gl_d_cmov2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x18;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x18U, 0xFFF8E1B8);
    }
}

void gl_d_cmov2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x19;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x19U);
    }
}

void gl_d_cmovi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1A;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1AU);
    }
}

void gl_d_color(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0x1B;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 0x1B);
    }
}

void gl_d_cursoff(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1C;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1CU, 0xFFF8E014);
    }
    gl_comm_flush();
}

void gl_d_curson(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1D;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1DU, 0xFFF8DFA4);
    }
    gl_comm_flush();
}

void gl_d_curveit(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x1E;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x1E);
    }
}

void gl_d_defcursor(s64 arg0, s32 arg1) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_a6;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a6 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a6->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    temp_a6->unk0 = 0x1F;
    temp_a6->unk8 = 0x100;
    if (arg1 == 0) {
        var_v0 = temp_a6 + 0x10C;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a6 + 0xC, arg1, 0x100, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush((u16) comm_buffer);
    }
}

void gl_d_deflinestyle(s64 arg0, s32 arg1) {
    s64 temp_a2;
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg1 & 0xFFFF;
    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x20;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, temp_a2);
    }
}

void gl_d_defrasterfont(s64 arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s0;
    s64 temp_t0;
    s64 temp_t1;
    s64 var_ra;
    s64 var_t2;
    u16 temp_a0_2;
    u32 *var_v0_2;
    void *temp_a0;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_s0 = M2C_ERROR(/* Read from unset register $a5 */);
    var_t2 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t1 = (s64) (arg2 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg1 << 0x30) >> 0x30;
    sp20 = (s64) comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0xB4)) {
        sp38 = temp_t0;
        sp30 = temp_t1;
        sp28 = var_t2;
        gl_comm_flush();
        var_ra = sp40;
        sp20 = (s64) comm_curbufpos;
    }
    temp_a2 = ((temp_t1 * 8) + 3) & ~3;
    sp20->unk0 = 0x21;
    sp20->unk8 = (s16) temp_t1;
    sp20->unk6 = (s16) temp_t0;
    sp20->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    sp20->unkC = temp_a2;
    if (arg3 == 0) {
        var_v0 = temp_a2 + sp20 + 0x10;
    } else {
        sp28 = var_t2;
        sp40 = var_ra;
        var_v0 = gl_mem_pack_array(sp20 + 0x10, arg3, temp_a2, gl_mem_hton_fontchar_array);
    }
    var_v0->unk0 = (s16) var_t2;
    temp_a2_2 = ((var_t2 * 2) + 3) & ~3;
    var_v0->unk4 = temp_a2_2;
    if (temp_s0 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 8;
    } else {
        sp40 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 8, temp_s0, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a0 = comm_stdsize + comm_buffer;
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) var_v0_2;
    comm_endbuffer = temp_a0 - 0x18;
    if (temp_a0_2 != 0) {
        sp40 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_delobj(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x22;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x22U);
    }
}

void gl_d_doublebuffer(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x23;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x23U, 0xFFF8DB0C);
    }
}

void gl_d_draw(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x24;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x24U, 0xFFF8DAAC);
    }
}

void gl_d_draw2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x25;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x25U, 0xFFF8DA40);
    }
}

void gl_d_draw2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x26;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x26U);
    }
}

void gl_d_drawi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x27;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x27U);
    }
}

void gl_d_editobj(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x28;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x28U);
    }
}

void gl_d_endpick(s64 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk8 = 0x80000000;
    temp_a1->unk4 = 0x80000000;
    temp_a1->unk0 = 0x29;
    comm_curbufpos = temp_a1 + 0xC;
    gl_comm_read_data(1, temp_a1, (u32 *)0x29, (u32 **)0xFFF8D8A0);
    gl_mem_unpack_array(arg0, comm_buffer + 8, gl_mem_ntoh_short_array);
}

void gl_d_endselect(s64 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk8 = 0x80000000;
    temp_a1->unk4 = 0x80000000;
    temp_a1->unk0 = 0x2A;
    comm_curbufpos = temp_a1 + 0xC;
    gl_comm_read_data(1, temp_a1, (u32 *)0x2A, (u32 **)0xFFF8D814);
    gl_mem_unpack_array(arg0, comm_buffer + 8, gl_mem_ntoh_short_array);
}

void gl_d_finish(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x2B;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x2BU, 0xFFF8D788);
    }
    gl_d_getpattern();
}

void gl_d_font(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x2C;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x2C);
    }
}

void gl_d_frontbuffer(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x2D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x2DU);
    }
}

void gl_d_gconfig(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x2E;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x2EU, 0xFFF8D648);
    }
}

void gl_d_genobj(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x2F;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D5E8);
}

void gl_d_gentag(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x30;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D590);
}

s32 gl_d_getbuffer(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x31;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D538);
    return comm_buffer->unk4;
}

s32 gl_d_getbutton(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = (s16) (arg0 & 0xFFFF);
    temp_a1->unk0 = 0x32;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0x32, (u32 **)0xFFF8D4E0);
    return comm_buffer->unk4;
}

s32 gl_d_getcmmode(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x33;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D480);
    return comm_buffer->unk4;
}

s32 gl_d_getcolor(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x34;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D428);
    return comm_buffer->unk4;
}

s32 gl_d_getcursor(s16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp28 = arg1;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x35;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp28 = (s16) comm_buffer->unk8;
    *sp20 = (s16) comm_buffer->unkC;
    *sp18 = (s32) comm_buffer->unk10;
    return (s32) sp20;
}

void gl_d_getdepth(s16 *arg0, s64 arg1) {
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg1;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x36;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2, (u32 *)0xFFF8D32C);
    *arg0 = comm_buffer->unk4;
    *sp18 = (s16) comm_buffer->unk8;
}

s32 gl_d_getdisplaymode(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x37;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D2B0);
    return comm_buffer->unk4;
}

s32 gl_d_getfont(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x38;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D258);
    return comm_buffer->unk4;
}

s32 gl_d_getheight(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x39;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D200);
    return comm_buffer->unk4;
}

s32 gl_d_gethitcode(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x3A;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D1A8);
    return comm_buffer->unk4;
}

s32 gl_d_getlsbackup(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x3B;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D150);
    return comm_buffer->unk4;
}

s32 gl_d_getlstyle(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x3C;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D0F8);
    return comm_buffer->unk4;
}

s32 gl_d_getlwidth(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x3D;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D0A0);
    return comm_buffer->unk4;
}

s32 gl_d_getmap(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x3E;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8D048);
    return comm_buffer->unk4;
}

s32 gl_d_getmatrix(s64 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk8 = 0x40;
    temp_a1->unk4 = 0x40;
    temp_a1->unk0 = 0x3F;
    comm_curbufpos = temp_a1 + 0xC;
    gl_comm_read_data(1, temp_a1, (u32 *)0x3F, (u32 **)0xFFF8CFF0);
    return gl_mem_unpack_array(arg0, comm_buffer + 4, gl_mem_ntoh_float_array);
}

s32 gl_d_getplanes(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x40;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8CF70);
    return comm_buffer->unk4;
}

s32 gl_d_getresetls(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x41;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8CF18);
    return comm_buffer->unk4;
}

s32 gl_d_getscrmask(s16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp28 = arg1;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x42;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp28 = (s16) comm_buffer->unk8;
    *sp20 = (s16) comm_buffer->unkC;
    *sp18 = (s16) comm_buffer->unk10;
    return (s32) sp20;
}

s32 gl_d_getvaluator(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = (s16) (arg0 & 0xFFFF);
    temp_a1->unk0 = 0x43;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0x43, (u32 **)0xFFF8CE1C);
    return comm_buffer->unk4;
}

s32 gl_d_getviewport(s16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp28 = arg1;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x44;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp28 = (s16) comm_buffer->unk8;
    *sp20 = (s16) comm_buffer->unkC;
    *sp18 = (s16) comm_buffer->unk10;
    return (s32) sp20;
}

s32 gl_d_getwritemask(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x45;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8CD18);
    return comm_buffer->unk4;
}

void gl_d_gflush(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x46;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x46U, 0xFFF8CCC0);
    }
    gl_comm_flush();
}

void gl_d_ginit(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x47;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x47U, 0xFFF8CC50);
    }
}

void gl_d_greset(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x48;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x48U, 0xFFF8CBF0);
    }
}

void gl_d_gRGBcolor(s16 *arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp20 = arg1;
    sp18 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x49;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2, (u32 *)0xFFF8CB90);
    *arg0 = comm_buffer->unk4;
    *sp20 = (s16) comm_buffer->unk8;
    *sp18 = (s16) comm_buffer->unkC;
}

void gl_d_gRGBcursor(s16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = M2C_ERROR(/* Read from unset register $a7 */);
    sp20 = M2C_ERROR(/* Read from unset register $a6 */);
    sp28 = M2C_ERROR(/* Read from unset register $a5 */);
    sp38 = arg3;
    sp48 = arg1;
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp40 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x4A;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp48 = (s16) comm_buffer->unk8;
    *sp40 = (s16) comm_buffer->unkC;
    *sp38 = (s16) comm_buffer->unk10;
    *sp30 = (s16) comm_buffer->unk14;
    *sp28 = (s16) comm_buffer->unk18;
    *sp20 = (s16) comm_buffer->unk1C;
    *sp18 = (s32) comm_buffer->unk20;
}

void gl_d_gRGBmask(s16 *arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp20 = arg1;
    sp18 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x4B;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2, (u32 *)0xFFF8CA0C);
    *arg0 = comm_buffer->unk4;
    *sp20 = (s16) comm_buffer->unk8;
    *sp18 = (s16) comm_buffer->unkC;
}

void gl_d_isobj(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x4C;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8C97C);
}

void gl_d_istag(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x4D;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8C920);
}

void gl_d_linewidth(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x4E;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x4E);
    }
}

void gl_d_loadmatrix(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a5 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a5->unk0 = 0x4F;
    temp_a5->unk4 = 0x40;
    if (arg0 == 0) {
        var_v0 = temp_a5 + 0x48;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a5 + 8, arg0, 0x40, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_lookat(f32 arg0, f32 arg1, f32 arg3) {
    s64 sp40;
    s64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 temp_f8;
    f32 var_f5;
    f32 var_f7;
    s64 temp_a1;
    s64 var_ra;
    u16 temp_a0;
    u32 *temp_a4;
    u32 *temp_at;

    var_ra = saved_reg_ra;
    temp_f8 = M2C_ERROR(/* Read from unset register $f17 */);
    var_f7 = M2C_ERROR(/* Read from unset register $f16 */);
    var_f5 = arg1;
    temp_a4 = comm_curbufpos;
    temp_a1 = (s64) (M2C_ERROR(/* Read from unset register $a6 */) << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x20)) {
        sp38 = temp_a1;
        sp30 = (f64) arg1;
        sp28 = (f64) var_f5;
        sp20 = (f64) arg3;
        sp18 = (f64) var_f7;
        sp10 = (f64) temp_f8;
        gl_comm_flush((u16) temp_a1, (s64) &comm_curbufpos, &comm_endbuffer);
        var_f7 = second half of f64;
        var_f5 = second half of f64;
        var_ra = sp40;
    }
    temp_a4->unk1C = (s16) temp_a1;
    temp_a4->unk18 = temp_f8;
    temp_a4->unk14 = var_f7;
    temp_a4->unk10 = arg3;
    temp_a4->unkC = var_f5;
    temp_a4->unk8 = arg1;
    temp_a4->unk4 = arg0;
    temp_a4->unk0 = 0x50;
    temp_at = temp_a4 + 0x20;
    temp_a0 = (u32) comm_endbuffer < (u32) temp_at;
    comm_curbufpos = temp_at;
    if (temp_a0 != 0) {
        sp40 = var_ra;
        gl_comm_flush(temp_a0, temp_a1, (u32 *) &comm_curbufpos, &comm_endbuffer);
    }
}

void gl_d_lsbackup(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x51;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x51U);
    }
}

void gl_d_makeobj(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x52;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x52U);
    }
}

void gl_d_maketag(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x53;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x53U);
    }
}

void gl_d_mapcolor(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) (arg0 & 0xFFFF);
    comm_curbufpos->unk0 = 0x54;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_mapw(s32 arg0, s64 arg1, s64 arg2, f32 *arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 temp_a1;

    sp18 = M2C_ERROR(/* Read from unset register $a7 */);
    sp28 = M2C_ERROR(/* Read from unset register $a5 */);
    sp20 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unkA = (s16) ((s64) (arg2 << 0x30) >> 0x30);
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk0 = 0x55;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (u32 *) temp_a1, (u32 *)0x55);
    *arg3 = comm_buffer->unk4;
    *sp30 = (f32) comm_buffer->unk8;
    *sp28 = (f32) comm_buffer->unkC;
    *sp20 = (f32) comm_buffer->unk10;
    *sp18 = (f32) comm_buffer->unk14;
    *(f32 *) arg1 = comm_buffer->unk18;
}

void gl_d_mapw2(s32 arg0, s64 arg1, s64 arg2, f32 *arg3) {
    s64 sp18;
    s64 temp_a1;

    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unkA = (s16) ((s64) (arg2 << 0x30) >> 0x30);
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk0 = 0x56;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (u32 *) temp_a1, (u32 *)0x56);
    *arg3 = comm_buffer->unk4;
    *sp18 = (f32) comm_buffer->unk8;
}

void gl_d_move(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x57;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x57U, 0xFFF8C320);
    }
}

void gl_d_move2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x58;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x58U, 0xFFF8C2B4);
    }
}

void gl_d_move2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x59;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x59U);
    }
}

void gl_d_movei(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x5A;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x5AU);
    }
}

void gl_d_multimap(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x5B;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x5BU, 0xFFF8C178);
    }
}

void gl_d_multmatrix(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a5 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a5->unk0 = 0x5C;
    temp_a5->unk4 = 0x40;
    if (arg0 == 0) {
        var_v0 = temp_a5 + 0x48;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a5 + 8, arg0, 0x40, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_noise(s32 arg0, s64 arg1) {
    s16 temp_a2;
    s64 temp_a0;
    u32 *temp_v0;

    temp_a2 = arg0 & 0xFFFF;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = temp_a2;
    comm_curbufpos->unk0 = 0x5D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a2);
    }
}

void gl_d_onemap(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x5E;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x5EU, 0xFFF8BFA4);
    }
}

void gl_d_ortho(f32 arg0, f32 arg1, f32 arg3) {
    s64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 temp_f8;
    f32 var_f5;
    f32 var_f7;
    s64 var_ra;
    u16 temp_a0;
    u32 *temp_a3;
    u32 *temp_at;

    var_ra = saved_reg_ra;
    temp_f8 = M2C_ERROR(/* Read from unset register $f17 */);
    var_f7 = M2C_ERROR(/* Read from unset register $f16 */);
    var_f5 = arg1;
    temp_a3 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a3 + 0x1C)) {
        sp30 = (f64) arg1;
        sp28 = (f64) var_f5;
        sp20 = (f64) arg3;
        sp18 = (f64) var_f7;
        sp10 = (f64) temp_f8;
        gl_comm_flush((u16) &comm_curbufpos, (s64) &comm_endbuffer, temp_a3);
        var_f7 = second half of f64;
        var_f5 = second half of f64;
        var_ra = sp38;
    }
    temp_a3->unk18 = temp_f8;
    temp_a3->unk14 = var_f7;
    temp_a3->unk10 = arg3;
    temp_a3->unkC = var_f5;
    temp_a3->unk8 = arg1;
    temp_a3->unk4 = arg0;
    temp_a3->unk0 = 0x5F;
    temp_at = temp_a3 + 0x1C;
    temp_a0 = (u32) comm_endbuffer < (u32) temp_at;
    comm_curbufpos = temp_at;
    if (temp_a0 != 0) {
        sp38 = var_ra;
        gl_comm_flush(temp_a0, (s64) &comm_curbufpos, &comm_endbuffer, temp_a3);
    }
}

void gl_d_ortho2(f32 arg0, f32 arg1, f32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x60;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x60U, 0xFFF8BE54);
    }
}

void gl_d_perspective(f32 arg1, f32 arg3, s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x61;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x61);
    }
}

void gl_d_pick(s32 arg1) {
    s64 sp10;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_a4;
    u32 *temp_at;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a4 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x58)) {
        gl_comm_flush((u16) &comm_curbufpos, (s64) &comm_endbuffer);
        var_ra = sp10;
    }
    temp_a4->unkC = arg1;
    temp_a4->unk4 = 0x80000000;
    temp_a4->unk0 = 0x62;
    temp_a4->unk8 = (s32) (arg1 * 2);
    temp_at = temp_a4 + 0x10;
    comm_curbufpos = temp_at;
    temp_a0 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a0 - 0x18);
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) temp_at;
    if (temp_a0_2 != 0) {
        sp10 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_picksize(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x63;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_pnt(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x64;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x64U, 0xFFF8BC24);
    }
}

void gl_d_pnt2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x65;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x65U, 0xFFF8BBB8);
    }
}

void gl_d_pnt2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x66;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x66U);
    }
}

void gl_d_pnti(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x67;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x67U);
    }
}

void gl_d_polarview(f32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a1;
    comm_curbufpos->unk8 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x68;
    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkC = (s16) temp_a0;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_polf(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x69;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_polf2(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x6A;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_polf2i(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x6B;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_long_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_polfi(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x6C;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_long_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_poly(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x6D;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_poly2(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x6E;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_poly2i(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x6F;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_long_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_polyi(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x70;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_long_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_popattributes(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x71;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x71U, 0xFFF8B0D4);
    }
}

void gl_d_popmatrix(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x72;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x72U, 0xFFF8B074);
    }
}

void gl_d_popviewport(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x73;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x73U, 0xFFF8B014);
    }
}

void gl_d_pushattributes(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x74;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x74U, 0xFFF8AFB4);
    }
}

void gl_d_pushmatrix(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x75;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x75U, 0xFFF8AF54);
    }
}

void gl_d_pushviewport(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x76;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x76U, 0xFFF8AEF4);
    }
}

void gl_d_qenter(s32 arg0, s64 arg1) {
    s16 temp_a2;
    s64 temp_a0;
    u32 *temp_v0;

    temp_a2 = arg0 & 0xFFFF;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = temp_a2;
    comm_curbufpos->unk0 = 0x77;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a2);
    }
}

void gl_dgl_qread(s16 *arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x78;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8AE20);
    *arg0 = comm_buffer->unk8;
}

void gl_d_qreset(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x79;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x79U, 0xFFF8ADB0);
    }
}

void gl_dgl_qtest(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x7A;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8AD50);
}

void gl_d_readpixels(s64 arg0, s64 arg1) {
    s64 temp_v1;
    u32 *temp_a2;

    temp_v1 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a2 = comm_curbufpos;
    temp_a2->unk0 = 0x7B;
    temp_a2->unk4 = (s16) temp_v1;
    temp_a2->unkC = (s32) (temp_v1 * 2);
    temp_a2->unk8 = -2;
    comm_curbufpos = temp_a2 + 0x10;
    gl_comm_read_data(1, (u32 *)-2, temp_a2);
    gl_mem_unpack_array(arg1, comm_buffer + 8, gl_mem_ntoh_short_array);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c], gap at: 0x10. */
void gl_d_readRGB(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_s2;
    u32 *temp_a6;

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
    temp_a6->unk0 = 0x7C;
    comm_curbufpos = temp_a6 + 0x20;
    gl_comm_read_data(1, (u32 *)-1, (u32 *)0x7C);
    gl_mem_unpack_array(unksp10, gl_mem_unpack_array(unksp8, gl_mem_unpack_array(unksp18, comm_buffer + 8, gl_mem_copy_array), gl_mem_copy_array), gl_mem_copy_array);
}

void gl_d_rect(f32 arg0, f32 arg1, f32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x7D;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x7DU, 0xFFF8AB58);
    }
}

void gl_d_rectf(f32 arg0, f32 arg1, f32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x7E;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x7EU, 0xFFF8AAE8);
    }
}

void gl_d_rectfi(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x7F;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush();
    }
}

void gl_d_recti(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x80;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush();
    }
}

void gl_d_resetls(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x81;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x81U);
    }
}

void gl_d_RGBcolor(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0x82;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_RGBcursor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_ra;
    u16 temp_a0;

    var_ra = saved_reg_ra;
    temp_t8 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t3 = (s64) (arg3 << 0x30) >> 0x30;
    sp10 = (s64) (M2C_ERROR(/* Read from unset register $a6 */) << 0x30) >> 0x30;
    sp8 = (s64) (M2C_ERROR(/* Read from unset register $a5 */) << 0x30) >> 0x30;
    temp_t2 = (s64) (arg2 << 0x30) >> 0x30;
    temp_t1 = (s64) (arg1 << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    temp_t0 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x20)) {
        sp40 = temp_t0;
        sp38 = temp_t1;
        sp30 = temp_t2;
        sp28 = temp_t3;
        sp20 = temp_t8;
        gl_comm_flush();
        var_ra = sp48;
        sp0 = (s64) comm_curbufpos;
    }
    sp0->unkC = (s16) temp_t8;
    sp0->unk0 = 0x83;
    sp0->unkA = (s16) temp_t3;
    sp0->unk8 = (s16) temp_t2;
    sp0->unkE = (s16) sp8;
    sp0->unk6 = (s16) temp_t1;
    sp0->unk4 = (s16) temp_t0;
    sp0->unk10 = (s16) sp10;
    temp_a0 = sp0 + 0x14;
    comm_curbufpos = (u32 *) temp_a0;
    if ((u32) comm_endbuffer < temp_a0) {
        sp48 = var_ra;
        gl_comm_flush(temp_a0);
    }
}

void gl_d_RGBmode(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x84;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x84U, 0xFFF8A784);
    }
}

void gl_d_RGBwritemask(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0x85;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_rotate(s64 arg0, s32 arg1) {
    s64 temp_a2;
    s8 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg1 & 0xFF;
    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x86;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_scale(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x87;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x87U, 0xFFF8A62C);
    }
}

void gl_d_scrmask(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 0x88;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_gselect(s32 arg1) {
    s64 sp10;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_a4;
    u32 *temp_at;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a4 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x58)) {
        gl_comm_flush((u16) &comm_curbufpos, (s64) &comm_endbuffer);
        var_ra = sp10;
    }
    temp_a4->unkC = arg1;
    temp_a4->unk4 = 0x80000000;
    temp_a4->unk0 = 0x89;
    temp_a4->unk8 = (s32) (arg1 * 2);
    temp_at = temp_a4 + 0x10;
    comm_curbufpos = temp_at;
    temp_a0 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a0 - 0x18);
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) temp_at;
    if (temp_a0_2 != 0) {
        sp10 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_setcursor(s64 arg0, s32 arg1, s32 arg2) {
    s16 temp_a1;
    s64 temp_a3;
    u16 temp_a0;
    u32 *temp_v0;

    temp_a1 = arg1 & 0xFFFF;
    temp_a0 = arg2 & 0xFFFF;
    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = temp_a0;
    comm_curbufpos->unk6 = temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0x8A;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, (s64) temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_setdepth(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x8B;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_setlinestyle(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x8C;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x8C);
    }
}

void gl_d_setmap(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x8D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x8D);
    }
    gl_comm_flush();
}

void gl_d_setvaluator(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) (arg0 & 0xFFFF);
    comm_curbufpos->unk0 = 0x8E;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_singlebuffer(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x8F;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x8FU, 0xFFF8A1F8);
    }
}

void gl_d_strwidth(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x90;
    temp_a2 = (strlen(arg0, 0x90) + 4) & ~3;
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

void gl_d_swapbuffers(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x91;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x91U, 0xFFF8A08C);
    }
    gl_comm_flush();
}

void gl_d_swapinterval(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x92;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x92);
    }
}

void gl_d_gsync(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x93;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x93U, 0xFFF89FB0);
    }
    gl_comm_flush();
}

void gl_d_tie(s32 arg0, s32 arg1, s32 arg2) {
    s16 temp_a1;
    s16 temp_a3;
    u16 temp_a0;
    u32 *temp_v0;

    temp_a1 = arg1 & 0xFFFF;
    temp_a3 = arg0 & 0xFFFF;
    temp_a0 = arg2 & 0xFFFF;
    comm_curbufpos->unk8 = temp_a0;
    comm_curbufpos->unk6 = temp_a1;
    comm_curbufpos->unk4 = temp_a3;
    comm_curbufpos->unk0 = 0x94;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, (s64) temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_translate(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x95;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x95U, 0xFFF89EC8);
    }
}

void gl_d_viewport(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 0x96;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_window(f32 arg0, f32 arg1, f32 arg3) {
    s64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    f32 temp_f8;
    f32 var_f5;
    f32 var_f7;
    s64 var_ra;
    u16 temp_a0;
    u32 *temp_a3;
    u32 *temp_at;

    var_ra = saved_reg_ra;
    temp_f8 = M2C_ERROR(/* Read from unset register $f17 */);
    var_f7 = M2C_ERROR(/* Read from unset register $f16 */);
    var_f5 = arg1;
    temp_a3 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a3 + 0x1C)) {
        sp30 = (f64) arg1;
        sp28 = (f64) var_f5;
        sp20 = (f64) arg3;
        sp18 = (f64) var_f7;
        sp10 = (f64) temp_f8;
        gl_comm_flush((u16) &comm_curbufpos, (s64) &comm_endbuffer, temp_a3);
        var_f7 = second half of f64;
        var_f5 = second half of f64;
        var_ra = sp38;
    }
    temp_a3->unk18 = temp_f8;
    temp_a3->unk14 = var_f7;
    temp_a3->unk10 = arg3;
    temp_a3->unkC = var_f5;
    temp_a3->unk8 = arg1;
    temp_a3->unk4 = arg0;
    temp_a3->unk0 = 0x97;
    temp_at = temp_a3 + 0x1C;
    temp_a0 = (u32) comm_endbuffer < (u32) temp_at;
    comm_curbufpos = temp_at;
    if (temp_a0 != 0) {
        sp38 = var_ra;
        gl_comm_flush(temp_a0, (s64) &comm_curbufpos, &comm_endbuffer, temp_a3);
    }
}

void gl_d_writemask(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0x98;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 0x98);
    }
}

void gl_d_writepixels(s64 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 temp_s2;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    temp_s2 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = (s16) temp_s2;
    temp_a7->unk0 = 0x99;
    temp_a2 = ((temp_s2 * 2) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_a0 = comm_stdsize + comm_buffer;
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) var_v0;
    comm_endbuffer = temp_a0 - 0x18;
    if (temp_a0_2 != 0) {
        sp18 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_writeRGB(s64 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp30;
    s32 *var_v0;
    s32 *var_v0_2;
    s32 temp_s0;
    s64 temp_s5;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0_3;
    void *temp_a0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    temp_s5 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0xF8)) {
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_a7->unk4 = (s16) temp_s5;
    temp_a7->unk0 = 0x9A;
    temp_s0 = (temp_s5 + 3) & ~3;
    temp_a7->unk8 = temp_s0;
    if (arg1 == 0) {
        var_v0 = temp_s0 + temp_a7 + 0xC;
    } else {
        sp30 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_s0, gl_mem_copy_array);
    }
    *var_v0 = temp_s0;
    if (arg2 == 0) {
        var_v0_2 = temp_s0 + var_v0 + 4;
    } else {
        sp30 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg2, temp_s0, gl_mem_copy_array);
    }
    *var_v0_2 = temp_s0;
    if (arg3 == 0) {
        var_v0_3 = temp_s0 + var_v0_2 + 4;
    } else {
        sp30 = var_ra;
        var_v0_3 = gl_mem_pack_array(var_v0_2 + 4, arg3, temp_s0, gl_mem_copy_array);
    }
    comm_curbufpos = var_v0_3;
    temp_v1 = comm_stdsize + comm_buffer;
    temp_a0 = temp_v1 - 0x18;
    comm_endbuffer = (u32) temp_a0;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0_3) {
        sp30 = var_ra;
        gl_comm_flush((u16) temp_a0);
    }
}

void gl_d_tpon(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x9B;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x9BU, 0xFFF89988);
    }
}

void gl_d_tpoff(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x9C;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x9CU, 0xFFF89928);
    }
}

void gl_d_textwritemask(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0x9D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 0x9D);
    }
}

void gl_d_gexit(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x9E;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x9EU, 0xFFF89860);
    }
    gl_comm_flush();
}

void gl_d_clkon(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x9F;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x9FU, 0xFFF897F0);
    }
}

void gl_d_clkoff(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0xA0;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xA0U, 0xFFF89790);
    }
}

void gl_d_lampon(s32 arg0) {
    s8 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0xA1;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xA1);
    }
    gl_comm_flush();
}

void gl_d_lampoff(s32 arg0) {
    s8 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0xA2;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xA2);
    }
    gl_comm_flush();
}

void gl_d_setbell(s32 arg0) {
    s8 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0xA3;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xA3);
    }
}

void gl_d_ringbell(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0xA4;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xA4U, 0xFFF895D8);
    }
    gl_comm_flush();
}

void gl_d_arcfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp0;
    s64 temp_a6;
    s64 temp_a7;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t2;
    s64 var_a0;
    s64 var_ra;
    u32 temp_v0;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    temp_t2 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t1 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg2 << 0x30) >> 0x30;
    temp_a7 = (s64) (arg1 << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    temp_a6 = (s64) (var_a0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x18)) {
        sp30 = temp_a6;
        sp28 = temp_a7;
        sp20 = temp_t0;
        sp18 = temp_t1;
        sp10 = temp_t2;
        gl_comm_flush();
        var_a0 = (s64) comm_curbufpos;
        var_ra = sp38;
        sp0 = var_a0;
    }
    sp0->unkC = (s16) temp_t2;
    sp0->unkA = (s16) temp_t1;
    sp0->unk8 = (s16) temp_t0;
    sp0->unk6 = (s16) temp_a7;
    sp0->unk4 = (s16) temp_a6;
    sp0->unk0 = 0xA5;
    temp_v0 = sp0 + 0x10;
    comm_curbufpos = (u32 *) temp_v0;
    if ((u32) comm_endbuffer < temp_v0) {
        sp38 = var_ra;
        gl_comm_flush((u16) var_a0);
    }
}

void gl_d_arcs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp0;
    s64 temp_a6;
    s64 temp_a7;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t2;
    s64 var_a0;
    s64 var_ra;
    u32 temp_v0;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    temp_t2 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t1 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg2 << 0x30) >> 0x30;
    temp_a7 = (s64) (arg1 << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    temp_a6 = (s64) (var_a0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x18)) {
        sp30 = temp_a6;
        sp28 = temp_a7;
        sp20 = temp_t0;
        sp18 = temp_t1;
        sp10 = temp_t2;
        gl_comm_flush();
        var_a0 = (s64) comm_curbufpos;
        var_ra = sp38;
        sp0 = var_a0;
    }
    sp0->unkC = (s16) temp_t2;
    sp0->unkA = (s16) temp_t1;
    sp0->unk8 = (s16) temp_t0;
    sp0->unk6 = (s16) temp_a7;
    sp0->unk4 = (s16) temp_a6;
    sp0->unk0 = 0xA6;
    temp_v0 = sp0 + 0x10;
    comm_curbufpos = (u32 *) temp_v0;
    if ((u32) comm_endbuffer < temp_v0) {
        sp38 = var_ra;
        gl_comm_flush((u16) var_a0);
    }
}

void gl_d_bbox2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp0;
    s64 temp_a7;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_ra;
    u32 temp_v0;

    var_ra = saved_reg_ra;
    temp_t8 = (s64) (M2C_ERROR(/* Read from unset register $a5 */) << 0x30) >> 0x30;
    temp_t3 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t2 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t1 = (s64) (arg2 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg1 << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    temp_a7 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x1C)) {
        sp38 = temp_a7;
        sp30 = temp_t0;
        sp28 = temp_t1;
        sp20 = temp_t2;
        sp18 = temp_t3;
        sp10 = temp_t8;
        gl_comm_flush();
        var_ra = sp40;
        sp0 = (s64) comm_curbufpos;
    }
    sp0->unkE = (s16) temp_t8;
    sp0->unkC = (s16) temp_t3;
    sp0->unkA = (s16) temp_t2;
    sp0->unk8 = (s16) temp_t1;
    sp0->unk6 = (s16) temp_t0;
    sp0->unk4 = (s16) temp_a7;
    sp0->unk0 = 0xA7;
    temp_v0 = sp0 + 0x10;
    comm_curbufpos = (u32 *) temp_v0;
    if ((u32) comm_endbuffer < temp_v0) {
        sp40 = var_ra;
        gl_comm_flush(0xA7U);
    }
}

void gl_d_blankscreen(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xA8;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xA8U);
    }
}

void gl_dgl_blkqread(s64 arg0, s64 arg1) {
    s32 temp_a3;
    s64 temp_v1;
    u32 *temp_a2;

    temp_a2 = comm_curbufpos;
    temp_v1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a2->unkC = (s16) temp_v1;
    temp_a2->unk0 = 0xA9;
    temp_a2->unk4 = -2;
    temp_a3 = temp_v1 * 2;
    temp_a2->unk8 = temp_a3;
    comm_curbufpos = temp_a2 + 0x10;
    gl_comm_read_data(1, temp_a2, (u32 *) temp_a3);
    gl_mem_unpack_array(arg0, comm_buffer + 8, gl_mem_ntoh_short_array);
}

s32 gl_d_getmcolor(s32 arg0, s16 *arg1, s64 arg2, s64 arg3) {
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = (s16) (arg0 & 0xFFFF);
    temp_a2->unk0 = 0xAA;
    comm_curbufpos = temp_a2 + 8;
    gl_comm_read_data(1, temp_a2, (u32 *)0xAA);
    *arg1 = comm_buffer->unk4;
    *sp20 = (s16) comm_buffer->unk8;
    *sp18 = (s16) comm_buffer->unkC;
    return (s32) sp20;
}

void gl_d_chunksize(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xAB;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xABU);
    }
}

void gl_d_circfs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xAC;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_circs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xAD;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_cmov2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xAE;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_cmovs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xAF;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_compactify(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xB0;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xB0U);
    }
}

void gl_d_qdevice(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0xB1;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 0xB1);
    }
}

void gl_d_unqdevice(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0xB2;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 0xB2);
    }
}

void gl_d_curvebasis(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0xB3;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xB3);
    }
}

void gl_d_curveprecision(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0xB4;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xB4);
    }
}

void gl_d_crv(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a5 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a5->unk0 = 0xB5;
    temp_a5->unk4 = 0x30;
    if (arg0 == 0) {
        var_v0 = temp_a5 + 0x38;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a5 + 8, arg0, 0x30, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        gl_comm_flush();
    }
}

s32 gl_d_gettp(s16 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp28 = arg1;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0xB6;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp28 = (s16) comm_buffer->unk8;
    *sp20 = (s16) comm_buffer->unkC;
    *sp18 = (s16) comm_buffer->unk10;
    return (s32) sp20;
}

void gl_d_gbegin(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0xB7;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xB7U, 0xFFF88AA0);
    }
}

void gl_d_textinit(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0xB8;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xB8U, 0xFFF88A40);
    }
}

void gl_d_crvn(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0xB9;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_defbasis(s64 arg0, s32 arg1) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_a6;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a6 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a6->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    temp_a6->unk0 = 0xBA;
    temp_a6->unk8 = 0x40;
    if (arg1 == 0) {
        var_v0 = temp_a6 + 0x4C;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a6 + 0xC, arg1, 0x40, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush((u16) comm_buffer);
    }
}

void gl_d_deltag(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xBB;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xBBU);
    }
}

void gl_d_depthcue(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xBC;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xBCU);
    }
}

void gl_d_draw2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xBD;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_draws(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xBE;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_dgl_endfeedback(s64 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk8 = 0x80000000;
    temp_a1->unk4 = -2;
    temp_a1->unk0 = 0xBF;
    comm_curbufpos = temp_a1 + 0xC;
    gl_comm_read_data(1, temp_a1, (u32 *)-2, (u32 **)0xBF);
    gl_mem_unpack_array(arg0, comm_buffer + 8, gl_mem_ntoh_short_array);
}

void gl_dgl_feedback(s32 arg1) {
    s64 sp10;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_a4;
    u32 *temp_at;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a4 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x58)) {
        gl_comm_flush((u16) &comm_curbufpos, (s64) &comm_endbuffer);
        var_ra = sp10;
    }
    temp_a4->unkC = arg1;
    temp_a4->unk4 = 0x80000000;
    temp_a4->unk0 = 0xC0;
    temp_a4->unk8 = (s32) (arg1 * 2);
    temp_at = temp_a4 + 0x10;
    comm_curbufpos = temp_at;
    temp_a0 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a0 - 0x18);
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) temp_at;
    if (temp_a0_2 != 0) {
        sp10 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

s32 gl_d_getcpos(s16 *arg0, s64 arg1) {
    s64 sp18;
    s32 temp_v0;
    u32 *temp_a2;

    sp18 = arg1;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0xC1;
    comm_curbufpos = temp_a2 + 4;
    temp_v0 = gl_comm_read_data(1, temp_a2, (u32 *)0xFFF8847C);
    *arg0 = comm_buffer->unk4;
    *sp18 = (s16) comm_buffer->unk8;
    return temp_v0;
}

s32 gl_d_getdcm(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0xC2;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF88400);
    return comm_buffer->unk4;
}

s32 gl_d_getgpos(f32 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp28 = arg1;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0xC3;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp28 = (f32) comm_buffer->unk8;
    *sp20 = (f32) comm_buffer->unkC;
    *sp18 = (f32) comm_buffer->unk10;
    return (s32) comm_buffer;
}

s32 gl_d_getlsrepeat(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0xC4;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF88304);
    return comm_buffer->unk4;
}

s32 gl_d_getmonitor(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0xC5;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF882AC);
    return comm_buffer->unk4;
}

s32 gl_d_getopenobj(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0xC6;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF88254);
    return comm_buffer->unk4;
}

s32 gl_d_getzbuffer(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0xC7;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF881FC);
    return comm_buffer->unk4;
}

void gl_d_gewrite(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a4;
    u32 *temp_a7;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a2 = ((arg1 * 2) + 3) & ~3;
    temp_a7->unk0 = 0xC8;
    temp_a7->unk4 = temp_a2;
    if (arg0 == 0) {
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_hton_short_array);
    }
    *var_v0 = arg1;
    temp_a4 = var_v0 + 4;
    comm_curbufpos = temp_a4;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a4) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_initnames(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0xC9;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xC9U, 0xFFF88084);
    }
}

void gl_d_loadname(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0xCA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xCA);
    }
}

void gl_d_lsrepeat(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xCB;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xCBU);
    }
}

void gl_d_move2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xCC;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_moves(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xCD;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_newtag(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xCE;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xCEU);
    }
}

void gl_d_passthrough(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0xCF;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xCF);
    }
}

void gl_d_patchbasis(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xD0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xD0U);
    }
}

void gl_d_patchprecision(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xD1;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xD1U);
    }
}

void gl_d_patch(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s64 var_ra;
    u32 *temp_a6;
    u32 *var_v0;
    u32 *var_v0_2;
    u32 *var_v0_3;
    void *temp_a4;

    var_ra = saved_reg_ra;
    temp_a6 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0xF4)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp20;
    }
    temp_a6->unk0 = 0xD2;
    temp_a6->unk4 = 0x40;
    if (arg0 == 0) {
        var_v0 = temp_a6 + 0x48;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a6 + 8, arg0, 0x40, gl_mem_hton_float_array);
    }
    *var_v0 = 0x40;
    if (arg1 == 0) {
        var_v0_2 = var_v0 + 0x44;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg1, 0x40, gl_mem_hton_float_array);
    }
    *var_v0_2 = 0x40;
    if (arg2 == 0) {
        var_v0_3 = var_v0_2 + 0x44;
    } else {
        sp20 = var_ra;
        var_v0_3 = gl_mem_pack_array(var_v0_2 + 4, arg2, 0x40, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0_3;
    temp_a4 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a4 - 0x18);
    if ((u32) (temp_a4 - 0x18) < (u32) var_v0_3) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_pclos(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0xD3;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xD3U, 0xFFF87B1C);
    }
}

void gl_d_pdr(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xD4;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xD4U, 0xFFF87ABC);
    }
}

void gl_d_pdr2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xD5;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xD5U, 0xFFF87A50);
    }
}

void gl_d_pdri(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xD6;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xD6U);
    }
}

void gl_d_pdr2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xD7;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xD7U);
    }
}

void gl_d_pdrs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xD8;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_pdr2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xD9;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_polf2s(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0xDA;
    temp_a2 = ((arg0 * 4) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_polfs(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0xDB;
    temp_a2 = ((arg0 * 6) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_poly2s(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0xDC;
    temp_a2 = ((arg0 * 4) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_polys(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0xDD;
    temp_a2 = ((arg0 * 6) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_pmv(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xDE;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xDEU, 0xFFF87388);
    }
}

void gl_d_pmv2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xDF;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xDFU, 0xFFF8731C);
    }
}

void gl_d_pmvi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xE0;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xE0U);
    }
}

void gl_d_pmv2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xE1;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xE1U);
    }
}

void gl_d_pmvs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xE2;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_pmv2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xE3;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_pnt2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xE4;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_pnts(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xE5;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_popname(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0xE6;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xE6U, 0xFFF86FE8);
    }
}

void gl_d_pushname(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0xE7;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0xE7);
    }
}

void gl_d_rdr(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xE8;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xE8U, 0xFFF86F1C);
    }
}

void gl_d_rdr2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xE9;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xE9U, 0xFFF86EB0);
    }
}

void gl_d_rdri(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xEA;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xEAU);
    }
}

void gl_d_rdr2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xEB;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xEBU);
    }
}

void gl_d_rdrs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xEC;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_rdr2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xED;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_rectcopy(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp0;
    s64 temp_a7;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_ra;
    u32 temp_v0;

    var_ra = saved_reg_ra;
    temp_t8 = (s64) (M2C_ERROR(/* Read from unset register $a5 */) << 0x30) >> 0x30;
    temp_t3 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t2 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t1 = (s64) (arg2 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg1 << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    temp_a7 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x1C)) {
        sp38 = temp_a7;
        sp30 = temp_t0;
        sp28 = temp_t1;
        sp20 = temp_t2;
        sp18 = temp_t3;
        sp10 = temp_t8;
        gl_comm_flush();
        var_ra = sp40;
        sp0 = (s64) comm_curbufpos;
    }
    sp0->unkE = (s16) temp_t8;
    sp0->unkC = (s16) temp_t3;
    sp0->unkA = (s16) temp_t2;
    sp0->unk8 = (s16) temp_t1;
    sp0->unk6 = (s16) temp_t0;
    sp0->unk4 = (s16) temp_a7;
    sp0->unk0 = 0xEE;
    temp_v0 = sp0 + 0x10;
    comm_curbufpos = (u32 *) temp_v0;
    if ((u32) comm_endbuffer < temp_v0) {
        sp40 = var_ra;
        gl_comm_flush(0xEEU);
    }
}

void gl_d_rmv(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xEF;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xEFU, 0xFFF86B60);
    }
}

void gl_d_rmv2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xF0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xF0U, 0xFFF86AF4);
    }
}

void gl_d_rmvi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xF1;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xF1U);
    }
}

void gl_d_rmv2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xF2;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xF2U);
    }
}

void gl_d_rmvs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xF3;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_rmv2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xF4;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_rpdr(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xF5;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xF5U, 0xFFF868BC);
    }
}

void gl_d_rpdr2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xF6;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xF6U, 0xFFF86850);
    }
}

void gl_d_rpdri(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xF7;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xF7U);
    }
}

void gl_d_rpdr2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xF8;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xF8U);
    }
}

void gl_d_rpdrs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xF9;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_rpdr2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0xFA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_rpmv(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xFB;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xFBU, 0xFFF86618);
    }
}

void gl_d_rpmv2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xFC;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xFCU, 0xFFF865AC);
    }
}

void gl_d_rpmvi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xFD;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xFDU);
    }
}

void gl_d_rpmv2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0xFE;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0xFEU);
    }
}

void gl_d_rpmvs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0xFF;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_rpmv2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x100;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_setdblights(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x101;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x101U);
    }
    gl_comm_flush();
}

void gl_d_setmonitor(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x102;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x102);
    }
    gl_comm_flush();
}

void gl_d_setshade(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0x103;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 0x103);
    }
}

void gl_d_shaderange(s32 arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) (arg0 & 0xFFFF);
    comm_curbufpos->unk0 = 0x104;
    comm_curbufpos->unk6 = (s16) (arg1 & 0xFFFF);
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_spclos(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x105;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x105U, 0xFFF86194);
    }
}

void gl_d_splf(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0_2;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0xA8)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x106;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    temp_a2_2 = ((arg0 * 2) + 3) & ~3;
    *var_v0 = temp_a2_2;
    if (arg2 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 4;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg2, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0_2) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_splf2(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0_2;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0xA8)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x107;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    temp_a2_2 = ((arg0 * 2) + 3) & ~3;
    *var_v0 = temp_a2_2;
    if (arg2 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 4;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg2, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0_2) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_splfi(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0_2;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0xA8)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x108;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_long_array);
    }
    temp_a2_2 = ((arg0 * 2) + 3) & ~3;
    *var_v0 = temp_a2_2;
    if (arg2 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 4;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg2, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0_2) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_splf2i(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0_2;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0xA8)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x109;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_long_array);
    }
    temp_a2_2 = ((arg0 * 2) + 3) & ~3;
    *var_v0 = temp_a2_2;
    if (arg2 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 4;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg2, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0_2) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_splfs(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0_2;
    void *temp_a4;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0xA8)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x10A;
    temp_a2 = ((arg0 * 6) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    temp_a2_2 = ((arg0 * 2) + 3) & ~3;
    *var_v0 = temp_a2_2;
    if (arg2 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 4;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg2, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a4 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a4 - 0x18;
    if ((u32) (temp_a4 - 0x18) < (u32) var_v0_2) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_splf2s(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0_2;
    void *temp_a4;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0xA8)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x10B;
    temp_a2 = ((arg0 * 4) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    temp_a2_2 = ((arg0 * 2) + 3) & ~3;
    *var_v0 = temp_a2_2;
    if (arg2 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 4;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg2, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a4 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a4 - 0x18;
    if ((u32) (temp_a4 - 0x18) < (u32) var_v0_2) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_xfpt(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x10C;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x10CU, 0xFFF85824);
    }
}

void gl_d_xfpti(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x10D;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x10DU);
    }
}

void gl_d_xfpts(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0x10E;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_xfpt2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x10F;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x10FU, 0xFFF856C8);
    }
}

void gl_d_xfpt2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x110;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x110U);
    }
}

void gl_d_xfpt2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x111;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_xfpt4(f32 arg0, f32 arg1, f32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x112;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x112U, 0xFFF85580);
    }
}

void gl_d_xfpt4i(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x113;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush();
    }
}

void gl_d_xfpt4s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 0x114;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_zbuffer(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x115;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x115U);
    }
}

void gl_d_charst(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a4;
    u32 *temp_a7;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a2 = (arg1 + 3) & ~3;
    temp_a7->unk0 = 0x116;
    temp_a7->unk4 = temp_a2;
    if (arg0 == 0) {
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    *var_v0 = arg1;
    temp_a4 = var_v0 + 4;
    comm_curbufpos = temp_a4;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a4) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_strwid(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a2_2;
    u32 *temp_a7;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a2 = (arg1 + 3) & ~3;
    temp_a7->unk0 = 0x117;
    temp_a7->unk4 = temp_a2;
    if (arg0 == 0) {
        sp18 = var_ra;
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    *var_v0 = arg1;
    temp_a2_2 = var_v0 + 4;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2);
}

void gl_d_defpattern(s64 arg0, s64 arg1, s32 arg2) {
    s64 sp20;
    s32 temp_a2;
    s32 temp_lo;
    s64 temp_s8;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    temp_s8 = (s64) (arg1 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_lo = temp_s8 * temp_s8;
    temp_a7->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    temp_a7->unk6 = (s16) temp_s8;
    temp_a7->unk0 = 0x118;
    temp_a2 = ((((s32) (((u32) (temp_lo >> 3) >> 0x1C) + temp_lo) >> 4) * 2) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg2 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg2, temp_a2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_a0 = comm_stdsize + comm_buffer;
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) var_v0;
    comm_endbuffer = temp_a0 - 0x18;
    if (temp_a0_2 != 0) {
        sp20 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

s32 gl_d_getpattern(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x119;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF85028);
    return comm_buffer->unk4;
}

void gl_d_setpattern(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x11A;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x11A);
    }
}

void gl_d_objinsert(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11B;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11BU);
    }
}

void gl_d_objdelete(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11C;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11CU);
    }
}

void gl_d_objreplace(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11DU);
    }
}

void gl_d_zclear(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x11E;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11EU, 0xFFF84E34);
    }
}

void gl_d_curorigin(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0x11F;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_pagewritemask(s32 arg0) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg0 & 0xFFFF;
    comm_curbufpos->unk4 = temp_a0;
    comm_curbufpos->unk0 = 0x120;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0, 0x120);
    }
}

void gl_d_patchcurves(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x121;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x121U);
    }
}

void gl_d_dbtext(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a5 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a5->unk0 = 0x122;
    temp_a5->unk4 = 8;
    if (arg0 == 0) {
        var_v0 = temp_a5 + 0x10;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a5 + 8, arg0, 8, gl_mem_copy_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_backface(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x123;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x123U);
    }
}

void gl_d_cyclemap(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0x124;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
    gl_comm_flush();
}

void gl_d_minsize(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x125;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x125U);
    }
}

void gl_d_maxsize(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x126;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x126U);
    }
}

void gl_d_keepaspect(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x127;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x127U);
    }
}

void gl_d_prefsize(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x128;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x128U);
    }
}

void gl_d_stepunit(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x129;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x129U);
    }
}

void gl_d_fudge(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x12A;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x12AU);
    }
}

void gl_d_prefposition(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x12B;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush();
    }
}

s32 gl_dgl_getport(s32 arg0) {
    s32 temp_a2;
    s32 var_v0;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_at;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x12C;
    var_v0 = strlen(arg0, 0x12C);
    temp_a2 = (var_v0 + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_v0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
        var_s0 = (u32 *) var_v0;
    }
    comm_curbufpos = var_s0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) var_s0) {
        var_v0 = gl_comm_flush();
    }
    return var_v0;
}

s32 gl_d_getpor(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a4;
    u32 *temp_a7;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a2 = (arg1 + 3) & ~3;
    temp_a7->unk0 = 0x12D;
    temp_a7->unk4 = temp_a2;
    if (arg0 == 0) {
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    *var_v0 = arg1;
    temp_a4 = var_v0 + 4;
    comm_curbufpos = temp_a4;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a4) {
        sp18 = var_ra;
        var_v0 = gl_comm_flush();
    }
    return (s32) var_v0;
}

s32 gl_d_getsize(s32 *arg0, s64 arg1) {
    s64 sp18;
    s32 temp_v0;
    u32 *temp_a2;

    sp18 = arg1;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x12E;
    comm_curbufpos = temp_a2 + 4;
    temp_v0 = gl_comm_read_data(1, temp_a2, (u32 *)0xFFF84574);
    *arg0 = comm_buffer->unk4;
    *sp18 = (s32) comm_buffer->unk8;
    return temp_v0;
}

s32 gl_d_getorigin(s32 *arg0, s64 arg1) {
    s64 sp18;
    s32 temp_v0;
    u32 *temp_a2;

    sp18 = arg1;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x12F;
    comm_curbufpos = temp_a2 + 4;
    temp_v0 = gl_comm_read_data(1, temp_a2, (u32 *)0xFFF844F8);
    *arg0 = comm_buffer->unk4;
    *sp18 = (s32) comm_buffer->unk8;
    return temp_v0;
}

void gl_d_screenspace(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x130;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x130U, 0xFFF8447C);
    }
}

void gl_d_reshapeviewport(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x131;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x131U, 0xFFF8441C);
    }
    gl_comm_flush();
}

void gl_dgl_winopen(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x132;
    temp_a2 = (strlen(arg0, 0x132) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = var_s0;
    gl_comm_read_data(1);
    __GLgl_dgl_wid_from_gl(comm_buffer->unk4);
}

void gl_dgl_winope(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a2_2;
    u32 *temp_a7;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a2 = (arg1 + 3) & ~3;
    temp_a7->unk0 = 0x133;
    temp_a7->unk4 = temp_a2;
    if (arg0 == 0) {
        sp18 = var_ra;
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    *var_v0 = arg1;
    temp_a2_2 = var_v0 + 4;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2);
    __GLgl_dgl_wid_from_gl(comm_buffer->unk4);
}

void gl_dgl_winclose(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x134;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x134U);
    }
    gl_comm_flush();
}

void gl_dgl_winset(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x135;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x135U);
    }
    gl_comm_flush();
}

s32 gl_d_winget(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x136;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF84094);
    return __GLgl_dgl_wid_from_gl(comm_buffer->unk4);
}

void gl_d_winpush(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x137;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x137U, 0xFFF84034);
    }
    gl_comm_flush();
}

void gl_d_winpop(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x138;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x138U, 0xFFF83FC4);
    }
    gl_comm_flush();
}

void gl_d_winattach(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x139;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF83F54);
    __GLgl_dgl_wid_from_gl(comm_buffer->unk4);
}

void gl_d_winmove(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x13A;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x13AU);
    }
    gl_comm_flush();
}

void gl_d_winposition(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x13B;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush();
    }
    gl_comm_flush();
}

void gl_d_wintitle(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_at;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x13C;
    temp_a2 = (strlen(arg0, 0x13C) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_curbufpos = var_s0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) var_s0) {
        gl_comm_flush();
    }
}

void gl_d_wintit(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a4;
    u32 *temp_a7;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a2 = (arg1 + 3) & ~3;
    temp_a7->unk0 = 0x13D;
    temp_a7->unk4 = temp_a2;
    if (arg0 == 0) {
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    *var_v0 = arg1;
    temp_a4 = var_v0 + 4;
    comm_curbufpos = temp_a4;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a4) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_rects(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 0x13E;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_rectfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 0x13F;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_dgl_foreground(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x140;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x140U, 0xFFF83AA8);
    }
}

void gl_d_devport(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x141;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x141U);
    }
}

s32 gl_d_getdev(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s32 temp_a1;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a2_2;
    u32 *temp_a7;
    void *var_v0;

    var_ra = saved_reg_ra;
    unksp10 = arg2;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x60)) {
        gl_comm_flush();
        var_ra = sp28;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x142;
    temp_a1 = arg0 * 2;
    temp_a2 = (temp_a1 + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        sp28 = var_ra;
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp20 = (s64) temp_a1;
        sp28 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_short_array);
    }
    var_v0->unk0 = temp_a1;
    var_v0->unk4 = temp_a1;
    temp_a2_2 = var_v0 + 8;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2, &comm_buffer);
    return gl_mem_unpack_array(unksp10, comm_buffer + 4, gl_mem_ntoh_short_array);
}

void gl_d_ismex(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x143;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF838A0);
}

void gl_d_rcrv(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a5 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a5->unk0 = 0x144;
    temp_a5->unk4 = 0x40;
    if (arg0 == 0) {
        var_v0 = temp_a5 + 0x48;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a5 + 8, arg0, 0x40, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_rcrvn(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x145;
    temp_a2 = ((arg0 * 0x10) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_rpatch(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp30;
    s64 var_ra;
    u32 *temp_a6;
    u32 *var_v0;
    u32 *var_v0_2;
    u32 *var_v0_3;
    u32 *var_v0_4;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a6 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0x144)) {
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_a6->unk0 = 0x146;
    temp_a6->unk4 = 0x40;
    if (arg0 == 0) {
        var_v0 = temp_a6 + 0x48;
    } else {
        sp30 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a6 + 8, arg0, 0x40, gl_mem_hton_float_array);
    }
    *var_v0 = 0x40;
    if (arg1 == 0) {
        var_v0_2 = var_v0 + 0x44;
    } else {
        sp30 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg1, 0x40, gl_mem_hton_float_array);
    }
    *var_v0_2 = 0x40;
    if (arg2 == 0) {
        var_v0_3 = var_v0_2 + 0x44;
    } else {
        sp30 = var_ra;
        var_v0_3 = gl_mem_pack_array(var_v0_2 + 4, arg2, 0x40, gl_mem_hton_float_array);
    }
    *var_v0_3 = 0x40;
    if (arg3 == 0) {
        var_v0_4 = var_v0_3 + 0x44;
    } else {
        sp30 = var_ra;
        var_v0_4 = gl_mem_pack_array(var_v0_3 + 4, arg3, 0x40, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0_4;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_v1 - 0x18);
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0_4) {
        sp30 = var_ra;
        gl_comm_flush();
    }
}

s32 gl_d_getothermonitor(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x147;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF83450);
    return comm_buffer->unk4;
}

void gl_d_blanktime(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x148;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x148U);
    }
}

void gl_d_isqueued(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = (s16) (arg0 & 0xFFFF);
    temp_a1->unk0 = 0x149;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0x149, (u32 **)0xFFF83394);
}

void gl_d_rot(f32 arg0, s32 arg1) {
    s8 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg1 & 0xFF;
    comm_curbufpos->unk8 = temp_a0;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x14A;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0);
    }
}

void gl_dgl_addtopup(s32 arg0, s32 arg1, s64 arg2) {
    s32 *var_s1;
    s32 temp_a2;
    u32 *temp_a4;
    u32 *temp_v0;
    void *temp_a3;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x5C)) {
        gl_comm_flush();
    }
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0x14B;
    temp_a2 = (strlen(arg1, 0x14B) + 4) & ~3;
    temp_v0->unk8 = temp_a2;
    if (arg1 == 0) {
        var_s1 = temp_a2 + temp_v0 + 0xC;
    } else {
        var_s1 = gl_mem_pack_array(temp_v0 + 0xC, arg1, temp_a2, gl_mem_copy_array);
    }
    *var_s1 = (s32) subroutine_arg0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a3 - 0x18);
    temp_a4 = var_s1 + 4;
    comm_curbufpos = temp_a4;
    if ((u32) (temp_a3 - 0x18) < (u32) temp_a4) {
        gl_comm_flush();
    }
}

void gl_dgl_addtop(s32 arg0, s32 arg1, s32 arg2, s32 *arg3) {
    s64 sp28;
    s64 sp20;
    s32 *var_a3;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a5;
    u32 *temp_t0;
    void *temp_v1;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    temp_t0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t0 + 0xAC)) {
        sp20 = (s64) var_a3;
        gl_comm_flush();
        var_ra = sp28;
    }
    temp_t0->unk4 = arg0;
    temp_a2 = (arg2 + 3) & ~3;
    temp_t0->unk0 = 0x14C;
    temp_t0->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_t0 + 0xC;
    } else {
        sp20 = (s64) var_a3;
        sp28 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t0 + 0xC, arg1, temp_a2, gl_mem_copy_array);
    }
    var_v0->unk0 = arg2;
    var_v0->unk4 = (s32) *var_a3;
    temp_a5 = var_v0 + 8;
    comm_curbufpos = temp_a5;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a5) {
        sp28 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_dopup(s32 arg0) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x14D;
    comm_curbufpos += 8;
    gl_comm_callback(0x14D, 0xFFF8304C);
    gl_comm_read_data(1);
}

void gl_d_freepup(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x14E;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x14EU);
    }
}

void gl_d_newpup(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x14F;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF82F84);
}

void gl_d_fullscrn(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x150;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x150U, 0xFFF82F2C);
    }
}

void gl_d_endfullscrn(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x151;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x151U, 0xFFF82ECC);
    }
}

s32 gl_d_getshade(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x152;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF82E6C);
    return comm_buffer->unk4;
}

void gl_d_winconstraints(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x153;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x153U, 0xFFF82E14);
    }
}

void gl_d_noport(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x154;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x154U, 0xFFF82DB4);
    }
}

void gl_d_noborder(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x155;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x155U, 0xFFF82D54);
    }
}

void gl_d_imakebackground(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x156;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x156U, 0xFFF82CF4);
    }
}

void gl_d_setfastcom(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x157;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF82C94);
}

void gl_d_setslowcom(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x158;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF82C3C);
}

void gl_d_RGBrange(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_t1;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_ra;
    u32 temp_v0;

    var_ra = saved_reg_ra;
    temp_t8 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t3 = (s64) (arg2 << 0x30) >> 0x30;
    temp_t2 = (s64) (arg1 << 0x30) >> 0x30;
    temp_t1 = (s64) (arg0 << 0x30) >> 0x30;
    sp10 = (s64) (M2C_ERROR(/* Read from unset register $a5 */) << 0x30) >> 0x30;
    sp8 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    sp20 = (s64) (M2C_ERROR(/* Read from unset register $a7 */) << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    sp18 = (s64) (M2C_ERROR(/* Read from unset register $a6 */) << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x24)) {
        sp48 = temp_t1;
        sp40 = temp_t2;
        sp38 = temp_t3;
        sp30 = temp_t8;
        gl_comm_flush();
        var_ra = sp50;
        sp0 = (s64) comm_curbufpos;
    }
    sp0->unk0 = 0x159;
    sp0->unkC = (s16) sp8;
    sp0->unkE = (s16) sp10;
    sp0->unkA = (s16) temp_t8;
    sp0->unk8 = (s16) temp_t3;
    sp0->unk10 = (s16) sp18;
    sp0->unk6 = (s16) temp_t2;
    sp0->unk4 = (s16) temp_t1;
    sp0->unk12 = (s16) sp20;
    temp_v0 = sp0 + 0x14;
    comm_curbufpos = (u32 *) temp_v0;
    if ((u32) comm_endbuffer < temp_v0) {
        sp50 = var_ra;
        gl_comm_flush((u16) sp20);
    }
}

void gl_d_cmode(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x15A;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x15AU, 0xFFF82AA4);
    }
}

void gl_d_concave(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x15B;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x15BU);
    }
}

void gl_d_curstype(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x15C;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x15CU);
    }
}

void gl_d_drawmode(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x15D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x15DU);
    }
}

s32 gl_d_getdrawmode(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x15E;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF82918);
    return comm_buffer->unk4;
}

void gl_d_gammaramp(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s64 var_ra;
    u32 *temp_a6;
    u32 *var_v0;
    u32 *var_v0_2;
    u32 *var_v0_3;
    void *temp_a4;

    var_ra = saved_reg_ra;
    temp_a6 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0xF4)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp20;
    }
    temp_a6->unk0 = 0x15F;
    temp_a6->unk4 = 0x200;
    if (arg0 == 0) {
        var_v0 = temp_a6 + 0x208;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a6 + 8, arg0, 0x200, gl_mem_hton_short_array);
    }
    *var_v0 = 0x200;
    if (arg1 == 0) {
        var_v0_2 = var_v0 + 0x204;
    } else {
        sp20 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 4, arg1, 0x200, gl_mem_hton_short_array);
    }
    *var_v0_2 = 0x200;
    if (arg2 == 0) {
        var_v0_3 = var_v0_2 + 0x204;
    } else {
        sp20 = var_ra;
        var_v0_3 = gl_mem_pack_array(var_v0_2 + 4, arg2, 0x200, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_3;
    temp_a4 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a4 - 0x18);
    if ((u32) (temp_a4 - 0x18) < (u32) var_v0_3) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_shademodel(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x160;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x160U);
    }
}

void gl_d_overlay(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x161;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x161U);
    }
}

void gl_d_underlay(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x162;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x162U);
    }
}

s32 gl_d_getvideo(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x163;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF82600);
    return comm_buffer->unk4;
}

void gl_d_setvideo(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x164;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x164U);
    }
    gl_comm_flush();
}

s32 gl_d_getsm(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x166;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8252C);
    return comm_buffer->unk4;
}

s32 gl_d_getbackface(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x167;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF824D4);
    return comm_buffer->unk4;
}

s32 gl_d_getdescender(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x168;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF8247C);
    return comm_buffer->unk4;
}

s32 gl_d_getmmode(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x169;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF82424);
    return comm_buffer->unk4;
}

void gl_d_lmbind(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x16A;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_dgl_lmdef(s64 arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_a2;
    s64 temp_a6;
    s64 temp_a7;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_t2;
    u32 *var_v0;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a7 = (s64) (arg2 << 0x30) >> 0x30;
    temp_a6 = (s64) (arg1 << 0x30) >> 0x30;
    temp_t2 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t2 + 0x60)) {
        sp20 = temp_a6;
        sp18 = temp_a7;
        gl_comm_flush();
        var_ra = sp28;
    }
    temp_t2->unk8 = (s16) temp_a7;
    temp_t2->unk6 = (s16) temp_a6;
    temp_t2->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    temp_t2->unk0 = 0x16B;
    temp_a2 = ((temp_a7 * 4) + 3) & ~3;
    temp_t2->unkC = temp_a2;
    if (arg3 == 0) {
        var_v0 = temp_a2 + temp_t2 + 0x10;
    } else {
        sp28 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t2 + 0x10, arg3, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a0 = comm_stdsize + comm_buffer;
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) var_v0;
    comm_endbuffer = temp_a0 - 0x18;
    if (temp_a0_2 != 0) {
        sp28 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_mmode(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x16C;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x16C);
    }
}

void gl_d_normal(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x16D;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x16DU);
    }
}

void gl_d_bgnclosedline(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x16E;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x16EU, 0xFFF82128);
    }
}

void gl_d_bgnline(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x16F;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x16FU, 0xFFF820C8);
    }
}

void gl_d_bgnpoint(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x170;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x170U, 0xFFF82068);
    }
}

void gl_d_bgnpolygon(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x171;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x171U, 0xFFF82008);
    }
}

void gl_d_bgntmesh(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x172;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x172U, 0xFFF81FA8);
    }
}

void gl_d_blendfunction(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x173;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x173U);
    }
}

void gl_d_c3f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x174;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x174U);
    }
}

void gl_d_c3i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x175;
    comm_curbufpos->unk4 = (s32) arg0->unk0;
    temp_a1 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a1;
    temp_a0 = arg0->unk8;
    comm_curbufpos->unkC = temp_a0;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_c3s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x176;
    comm_curbufpos->unk4 = (s16) arg0->unk0;
    temp_a1 = arg0->unk2;
    comm_curbufpos->unk6 = temp_a1;
    temp_a0 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_c4f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x177;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    comm_curbufpos->unk10 = (f32) arg0->unkC;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x177U);
    }
}

void gl_d_c4i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x178;
    comm_curbufpos->unk4 = (s32) arg0->unk0;
    comm_curbufpos->unk8 = (s32) arg0->unk4;
    temp_a1 = arg0->unk8;
    comm_curbufpos->unkC = temp_a1;
    temp_a0 = arg0->unkC;
    comm_curbufpos->unk10 = temp_a0;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_c4s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x179;
    comm_curbufpos->unk4 = (s16) arg0->unk0;
    comm_curbufpos->unk6 = (s16) arg0->unk2;
    temp_a1 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a1;
    temp_a0 = arg0->unk6;
    comm_curbufpos->unkA = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_cpack(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x17A;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x17AU);
    }
}

void gl_d_czclear(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x17B;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x17BU);
    }
}

void gl_d_endclosedline(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x17C;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x17CU, 0xFFF81B2C);
    }
}

void gl_d_endline(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x17D;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x17DU, 0xFFF81ACC);
    }
}

void gl_d_endpoint(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x17E;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x17EU, 0xFFF81A6C);
    }
}

void gl_d_endpolygon(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x17F;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x17FU, 0xFFF81A0C);
    }
}

void gl_d_endtmesh(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x180;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x180U, 0xFFF819AC);
    }
}

void gl_d_glcompat(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x181;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x181U);
    }
}

void gl_d_lRGBrange(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_t1;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_ra;
    u16 temp_a0;

    var_ra = saved_reg_ra;
    temp_t8 = (s64) (arg3 << 0x30) >> 0x30;
    sp10 = (s64) (M2C_ERROR(/* Read from unset register $a5 */) << 0x30) >> 0x30;
    sp8 = (s64) (M2C_ERROR(/* Read from unset register $a4 */) << 0x30) >> 0x30;
    temp_t3 = (s64) (arg2 << 0x30) >> 0x30;
    temp_t2 = (s64) (arg1 << 0x30) >> 0x30;
    sp0 = (s64) comm_curbufpos;
    temp_t1 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x24)) {
        sp48 = temp_t1;
        sp40 = temp_t2;
        sp38 = temp_t3;
        sp30 = temp_t8;
        sp28 = M2C_ERROR(/* Read from unset register $a6 */);
        sp20 = M2C_ERROR(/* Read from unset register $a7 */);
        gl_comm_flush();
        var_ra = sp50;
        sp0 = (s64) comm_curbufpos;
    }
    sp0->unk14 = (s32) M2C_ERROR(/* Read from unset register $a7 */);
    sp0->unk10 = (s32) M2C_ERROR(/* Read from unset register $a6 */);
    sp0->unk0 = 0x182;
    sp0->unkA = (s16) temp_t8;
    sp0->unk8 = (s16) temp_t3;
    sp0->unkC = (s16) sp8;
    sp0->unk6 = (s16) temp_t2;
    sp0->unk4 = (s16) temp_t1;
    sp0->unkE = (s16) sp10;
    temp_a0 = sp0 + 0x18;
    comm_curbufpos = (u32 *) temp_a0;
    if ((u32) comm_endbuffer < temp_a0) {
        sp50 = var_ra;
        gl_comm_flush(temp_a0);
    }
}

void gl_d_lsetdepth(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x183;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x183U);
    }
}

void gl_d_lshaderange(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u16 temp_a0;
    u32 *temp_v0;

    temp_a0 = arg1 & 0xFFFF;
    comm_curbufpos->unkC = arg3;
    comm_curbufpos->unk8 = arg2;
    comm_curbufpos->unk6 = temp_a0;
    comm_curbufpos->unk4 = (s16) (arg0 & 0xFFFF);
    comm_curbufpos->unk0 = 0x184;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(temp_a0);
    }
}

void gl_dgl_lrectread(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_s0;
    s64 temp_s1;
    s64 temp_s2;
    s64 temp_s3;
    u32 *temp_a7;

    unksp20 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s2 = (s64) (arg3 << 0x30) >> 0x30;
    temp_s0 = (s64) (arg2 << 0x30) >> 0x30;
    temp_s1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a7 = comm_curbufpos;
    temp_s3 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x1C)) {
        gl_comm_flush();
    }
    temp_a7->unkA = (s16) temp_s2;
    temp_a7->unk8 = (s16) temp_s0;
    temp_a7->unk6 = (s16) temp_s1;
    temp_a7->unk4 = (s16) temp_s3;
    temp_a7->unkC = -4;
    temp_a7->unk0 = 0x185;
    temp_a7->unk10 = (s32) (((temp_s0 - temp_s3) + 1) * ((temp_s2 - temp_s1) + 1) * 4);
    comm_curbufpos = temp_a7 + 0x14;
    gl_comm_read_data(1);
    gl_mem_unpack_lrect(unksp20, comm_buffer + 8, temp_s3, temp_s1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x28. */
void gl_dgl_lrectwrite(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s32 temp_a2;
    s64 temp_s0;
    s64 temp_s1;
    s64 temp_s2;
    s64 temp_s3;
    u32 *temp_a5;
    u32 *temp_v0;
    void *temp_a7;

    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s1 = (s64) (arg3 << 0x30) >> 0x30;
    temp_s0 = (s64) (arg2 << 0x30) >> 0x30;
    temp_s2 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a5 = comm_curbufpos;
    temp_s3 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x64)) {
        gl_comm_flush();
    }
    unksp20 = (s64) temp_a5;
    temp_a5->unkA = (s16) temp_s1;
    temp_a5->unk0 = 0x186;
    temp_a5->unk8 = (s16) temp_s0;
    temp_a5->unk6 = (s16) temp_s2;
    temp_a5->unk4 = (s16) temp_s3;
    temp_a2 = ((gl_dgl_alen(temp_s3, temp_s0, temp_s2, temp_s1) * 4) + 3) & ~3;
    unksp20->unkC = temp_a2;
    temp_v0 = gl_mem_pack_lrect(unksp20 + 0x10, unksp28, temp_a2, temp_s3);
    comm_curbufpos = temp_v0;
    temp_a7 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a7 - 0x18);
    if ((u32) (temp_a7 - 0x18) < (u32) temp_v0) {
        gl_comm_flush();
    }
}

void gl_d_n3f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x187;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x187U);
    }
}

void gl_d_readsource(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x188;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x188U);
    }
}

void gl_d_rectread(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 temp_a6;
    s64 temp_a7;
    s64 temp_s1;
    s64 temp_t0;
    u32 *temp_t2;

    unksp8 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t0 = (s64) (arg3 << 0x30) >> 0x30;
    temp_a7 = (s64) (arg2 << 0x30) >> 0x30;
    temp_a6 = (s64) (arg1 << 0x30) >> 0x30;
    temp_t2 = comm_curbufpos;
    temp_s1 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_t2 + 0x1C)) {
        sp30 = temp_a6;
        sp28 = temp_a7;
        sp20 = temp_t0;
        gl_comm_flush();
    }
    temp_t2->unkA = (s16) temp_t0;
    temp_t2->unk8 = (s16) temp_a7;
    temp_t2->unk6 = (s16) temp_a6;
    temp_t2->unk4 = (s16) temp_s1;
    temp_t2->unk0 = 0x189;
    temp_t2->unkC = -2;
    temp_t2->unk10 = (s32) (((temp_a7 - temp_s1) + 1) * ((temp_t0 - temp_a6) + 1) * 2);
    comm_curbufpos = temp_t2 + 0x14;
    gl_comm_read_data(1);
    gl_mem_unpack_array(unksp8, comm_buffer + 8, gl_mem_ntoh_short_array);
}

void gl_d_rectwrite(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_a2;
    s32 temp_s0;
    s64 temp_a7;
    s64 temp_s1;
    s64 temp_t0;
    s64 temp_t1;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_t8;
    u32 *var_v0;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t1 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg2 << 0x30) >> 0x30;
    temp_a7 = (s64) (arg1 << 0x30) >> 0x30;
    temp_t8 = comm_curbufpos;
    temp_s1 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_t8 + 0x64)) {
        sp28 = temp_a7;
        sp20 = temp_t0;
        sp18 = temp_t1;
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_t8->unkA = (s16) temp_t1;
    temp_t8->unk8 = (s16) temp_t0;
    temp_t8->unk6 = (s16) temp_a7;
    temp_t8->unk4 = (s16) temp_s1;
    temp_t8->unk0 = 0x18A;
    temp_a2 = ((((temp_t0 - temp_s1) + 1) * ((temp_t1 - temp_a7) + 1) * 2) + 3) & ~3;
    temp_t8->unkC = temp_a2;
    if (temp_s0 == 0) {
        var_v0 = temp_a2 + temp_t8 + 0x10;
    } else {
        sp30 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t8 + 0x10, temp_s0, temp_a2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_a0 = comm_stdsize + comm_buffer;
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) var_v0;
    comm_endbuffer = temp_a0 - 0x18;
    if (temp_a0_2 != 0) {
        sp30 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_rectzoom(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x18B;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x18BU, 0xFFF810F0);
    }
}

void gl_d_smoothline(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x18C;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x18CU);
    }
}

void gl_d_swaptmesh(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x18D;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x18DU, 0xFFF81024);
    }
}

void gl_d_v2d(void *arg0) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_s4;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x1C)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp18;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp18 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp18 = var_ra;
    *var_a4 = 0x18E;
    memcpy(var_a4 + 8, arg0, 8U);
    memcpy(var_a4 + 0x10, arg0 + 8, 8U);
    temp_s4 = var_a4 + 0x18;
    comm_curbufpos = temp_s4;
    if ((u32) comm_endbuffer < (u32) temp_s4) {
        gl_comm_flush();
    }
}

void gl_d_v2f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x18F;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x18FU);
    }
}

void gl_d_v2i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x190;
    temp_a1 = arg0->unk0;
    comm_curbufpos->unk4 = temp_a1;
    temp_a0 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_v2s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x191;
    temp_a1 = arg0->unk0;
    comm_curbufpos->unk4 = temp_a1;
    temp_a0 = arg0->unk2;
    comm_curbufpos->unk6 = temp_a0;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_v3d(void *arg0) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_s4;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x24)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp18;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp18 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp18 = var_ra;
    *var_a4 = 0x192;
    memcpy(var_a4 + 8, arg0, 8U);
    memcpy(var_a4 + 0x10, arg0 + 8, 8U);
    memcpy(var_a4 + 0x18, arg0 + 0x10, 8U);
    temp_s4 = var_a4 + 0x20;
    comm_curbufpos = temp_s4;
    if ((u32) comm_endbuffer < (u32) temp_s4) {
        gl_comm_flush();
    }
}

void gl_d_v3f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x193;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x193U);
    }
}

void gl_d_v3i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x194;
    comm_curbufpos->unk4 = (s32) arg0->unk0;
    temp_a1 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a1;
    temp_a0 = arg0->unk8;
    comm_curbufpos->unkC = temp_a0;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_v3s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x195;
    comm_curbufpos->unk4 = (s16) arg0->unk0;
    temp_a1 = arg0->unk2;
    comm_curbufpos->unk6 = temp_a1;
    temp_a0 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_v4d(void *arg0) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_s4;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x2C)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp18;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp18 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp18 = var_ra;
    *var_a4 = 0x196;
    memcpy(var_a4 + 8, arg0, 8U);
    memcpy(var_a4 + 0x10, arg0 + 8, 8U);
    memcpy(var_a4 + 0x18, arg0 + 0x10, 8U);
    memcpy(var_a4 + 0x20, arg0 + 0x18, 8U);
    temp_s4 = var_a4 + 0x28;
    comm_curbufpos = temp_s4;
    if ((u32) comm_endbuffer < (u32) temp_s4) {
        gl_comm_flush();
    }
}

void gl_d_v4f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x197;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    comm_curbufpos->unk10 = (f32) arg0->unkC;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x197U);
    }
}

void gl_d_v4i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x198;
    comm_curbufpos->unk4 = (s32) arg0->unk0;
    comm_curbufpos->unk8 = (s32) arg0->unk4;
    temp_a1 = arg0->unk8;
    comm_curbufpos->unkC = temp_a1;
    temp_a0 = arg0->unkC;
    comm_curbufpos->unk10 = temp_a0;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_v4s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x199;
    comm_curbufpos->unk4 = (s16) arg0->unk0;
    comm_curbufpos->unk6 = (s16) arg0->unk2;
    temp_a1 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a1;
    temp_a0 = arg0->unk6;
    comm_curbufpos->unkA = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_wmpack(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x19A;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x19AU);
    }
}

void gl_d_zdraw(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x19B;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x19BU);
    }
}

void gl_d_zfunction(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x19C;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x19CU);
    }
}

void gl_d_zsource(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x19D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x19DU);
    }
}

void gl_d_zwritemask(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x19E;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x19EU);
    }
}

void gl_dgl_windepth(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x19F;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF80608);
}

void gl_d_iconsize(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1A0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1A0U);
    }
}

void gl_d_icontitle(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_at;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x1A1;
    temp_a2 = (strlen(arg0, 0x1A1) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_curbufpos = var_s0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) var_s0) {
        gl_comm_flush();
    }
}

void gl_d_iconti(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 *var_v0;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a4;
    u32 *temp_a7;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a2 = (arg1 + 3) & ~3;
    temp_a7->unk0 = 0x1A2;
    temp_a7->unk4 = temp_a2;
    if (arg0 == 0) {
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    *var_v0 = arg1;
    temp_a4 = var_v0 + 4;
    comm_curbufpos = temp_a4;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a4) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_dgl_swinopen(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x1A3;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF80310);
    __GLgl_dgl_wid_from_gl(comm_buffer->unk4);
}

void gl_d_pntsmooth(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1A7;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1A7U);
    }
}

void gl_d_linesmooth(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1A8;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1A8U);
    }
}

void gl_d_subpixel(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1A9;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1A9U);
    }
}

void gl_d_sbox(f32 arg0, f32 arg1, f32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1AA;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1AAU, 0xFFF80180);
    }
}

void gl_d_sboxf(f32 arg0, f32 arg1, f32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1AB;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1ABU, 0xFFF80110);
    }
}

void gl_d_sboxfi(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1AC;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush();
    }
}

void gl_d_sboxi(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1AD;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush();
    }
}

void gl_d_sboxs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 0x1AE;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_sboxfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 temp_a0;
    s64 temp_a1;
    u32 *temp_v0;

    temp_a0 = (s64) (arg3 << 0x30) >> 0x30;
    comm_curbufpos->unkA = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    comm_curbufpos->unk0 = 0x1AF;
    temp_a1 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a1;
    comm_curbufpos->unk6 = (s16) ((s64) (arg1 << 0x30) >> 0x30);
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1);
    }
}

void gl_d_bgnsurface(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1B0;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1B0U, 0xFFF7FEA0);
    }
}

void gl_d_endsurface(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1B1;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1B1U, 0xFFF7FE40);
    }
}

void gl_d_bgntrim(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1B2;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1B2U, 0xFFF7FDE0);
    }
}

void gl_d_endtrim(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1B3;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1B3U, 0xFFF7FD80);
    }
}

void gl_d_nurbssurface(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp48;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_s1;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_v0;
    s64 var_ra;
    u32 *temp_s0;
    u32 *temp_t0;
    u32 *var_v0;
    void *temp_at;
    void *var_s0;
    void *var_s0_2;
    void *var_s0_3;

    var_ra = saved_reg_ra;
    temp_s1 = M2C_ERROR(/* Read from unset register $a7 */);
    temp_s6 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_s7 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp8 = M2C_ERROR(/* Read from unset register $a4 */);
    var_v0 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_v0 + 0x114)) {
            gl_comm_flush();
            var_ra = sp48;
            var_v0 = comm_curbufpos;
        }
        temp_s0 = var_v0;
        if ((s32) var_v0 & 7) {
            var_v0 = temp_s0 + 4;
            *temp_s0 = -1U;
            comm_curbufpos = var_v0;
        }
    }
    var_v0->unk4 = arg0;
    var_v0->unk0 = 0x1B4;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    var_v0->unk8 = temp_a2;
    if (arg1 == 0) {
        var_s0 = temp_a2 + var_v0 + 0x10;
    } else {
        sp48 = var_ra;
        var_s0 = gl_mem_pack_array(var_v0 + 0x10, arg1, temp_a2, gl_mem_hton_double_array);
    }
    var_s0->unk0 = arg2;
    temp_a2_2 = ((arg2 * 8) + 3) & ~3;
    var_s0->unk4 = temp_a2_2;
    if (arg3 == 0) {
        sp48 = var_ra;
        var_s0_2 = temp_a2_2 + var_s0 + 8;
    } else {
        sp48 = var_ra;
        var_s0_2 = gl_mem_pack_array(var_s0 + 8, arg3, temp_a2_2, gl_mem_hton_double_array);
    }
    var_s0_2->unk4 = temp_s7;
    var_s0_2->unk0 = (s32) unksp8;
    temp_v0 = gl_dgl_max((arg0 - temp_s1) * unksp8, (arg2 - arg1) * temp_s7);
    temp_a2_3 = ((((s32) (((u32) (temp_v0 >> 2) >> 0x1D) + temp_v0) >> 3) * 8) + 3) & ~3;
    var_s0_2->unk8 = temp_a2_3;
    if (temp_s6 == 0) {
        var_s0_3 = temp_a2_3 + var_s0_2 + 0x10;
    } else {
        var_s0_3 = gl_mem_pack_array(var_s0_2 + 0x10, temp_s6, temp_a2_3, gl_mem_hton_double_array);
    }
    var_s0_3->unk4 = arg1;
    var_s0_3->unk0 = temp_s1;
    var_s0_3->unk8 = arg3;
    temp_t0 = var_s0_3 + 0xC;
    comm_curbufpos = temp_t0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) temp_t0) {
        gl_comm_flush();
    }
}

void gl_d_nurbscurve(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp38;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_lo;
    s32 temp_s1;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_t1;
    void *temp_v1;
    void *var_v0;
    void *var_v0_2;

    var_ra = saved_reg_ra;
    sp0 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s1 = M2C_ERROR(/* Read from unset register $a4 */);
    var_t1 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_t1 + 0xB8)) {
            gl_comm_flush((u16) &comm_endbuffer);
            var_ra = sp38;
            var_t1 = comm_curbufpos;
        }
        if ((s32) var_t1 & 7) {
            *var_t1 = -1U;
            var_t1 += 4;
            comm_curbufpos = var_t1;
        }
    }
    var_t1->unk4 = arg0;
    var_t1->unk0 = 0x1B5;
    temp_a2 = ((arg0 * 8) + 3) & ~3;
    var_t1->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + var_t1 + 0x10;
    } else {
        sp38 = var_ra;
        var_v0 = gl_mem_pack_array(var_t1 + 0x10, arg1, temp_a2, gl_mem_hton_double_array);
    }
    temp_lo = (arg0 - temp_s1) * arg2;
    var_v0->unk0 = arg2;
    temp_a2_2 = ((((s32) (((u32) (temp_lo >> 2) >> 0x1D) + temp_lo) >> 3) * 8) + 3) & ~3;
    var_v0->unk4 = temp_a2_2;
    if (arg3 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 8;
    } else {
        sp38 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 8, arg3, temp_a2_2, gl_mem_hton_double_array);
    }
    var_v0_2->unk0 = temp_s1;
    var_v0_2->unk4 = (s32) sp0;
    temp_a7 = var_v0_2 + 8;
    comm_curbufpos = temp_a7;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a7) {
        sp38 = var_ra;
        gl_comm_flush((u16) &comm_endbuffer);
    }
}

void gl_d_pwlcurve(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp28;
    s64 sp20;
    s32 temp_a2;
    s32 temp_lo;
    s32 var_a3;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_a7;
    void *temp_a4;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    var_a7 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a7 + 0x64)) {
            sp20 = (s64) var_a3;
            gl_comm_flush((u16) &comm_endbuffer);
            var_ra = sp28;
            var_a7 = comm_curbufpos;
        }
        if ((s32) var_a7 & 7) {
            *var_a7 = -1U;
            var_a7 += 4;
            comm_curbufpos = var_a7;
        }
    }
    temp_lo = arg0 * arg2;
    var_a7->unk4 = arg0;
    var_a7->unk0 = 0x1B6;
    temp_a2 = ((((s32) (((u32) (temp_lo >> 2) >> 0x1D) + temp_lo) >> 3) * 8) + 3) & ~3;
    var_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + var_a7 + 0x10;
    } else {
        sp20 = (s64) var_a3;
        sp28 = var_ra;
        var_v0 = gl_mem_pack_array(var_a7 + 0x10, arg1, temp_a2, gl_mem_hton_double_array);
    }
    var_v0->unk4 = var_a3;
    var_v0->unk0 = arg2;
    temp_a5 = var_v0 + 8;
    comm_curbufpos = temp_a5;
    temp_a4 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a4 - 0x18;
    if ((u32) (temp_a4 - 0x18) < (u32) temp_a5) {
        sp28 = var_ra;
        gl_comm_flush((u16) &comm_endbuffer);
    }
}

void gl_d_setnurbsproperty(f32 arg1, s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1B7;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1B7U);
    }
}

s32 gl_d_getnurbsproperty(s32 arg0, f32 *arg1) {
    s32 temp_v0;
    u32 *temp_a2;

    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = arg0;
    temp_a2->unk0 = 0x1B8;
    comm_curbufpos = temp_a2 + 8;
    temp_v0 = gl_comm_read_data(1, temp_a2, (u32 *)0xFFF7F6AC);
    *arg1 = comm_buffer->unk4;
    return temp_v0;
}

void gl_d_lmcolor(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1B9;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1B9U);
    }
}

void gl_d_videocmd(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1BA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1BAU);
    }
}

void gl_d_logicop(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1BB;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1BBU);
    }
}

void gl_d_colorf(f32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1BC;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1BCU, 0xFFF7F514);
    }
}

void gl_d_setpup(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1BD;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1BDU);
    }
}

s32 gl_d_getgdesc(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x1BE;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7F444);
    return comm_buffer->unk4;
}

void gl_d_frontface(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1BF;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1BFU);
    }
}

void gl_d_scrnselect(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x1C0;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7F384);
}

s32 gl_d_getwscrn(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x1C1;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7F328);
    return comm_buffer->unk4;
}

void gl_d_scrnattach(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x1C2;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7F2D0);
}

void gl_d_pupmode(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1C3;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1C3U, 0xFFF7F274);
    }
}

void gl_d_endpupmode(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1C4;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1C4U, 0xFFF7F214);
    }
}

void gl_d_qcontrol(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a2;
    s32 var_a3;
    s64 var_ra;
    u32 *temp_a2_2;
    u32 *temp_t1;
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
    temp_t1->unk0 = 0x1C5;
    temp_a2 = ((arg1 * 2) + 3) & ~3;
    temp_t1->unkC = temp_a2;
    if (arg2 == 0) {
        sp20 = var_ra;
        var_v0 = temp_a2 + temp_t1 + 0x10;
    } else {
        sp28 = (s64) var_a3;
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t1 + 0x10, arg2, temp_a2, gl_mem_hton_short_array);
    }
    var_v0->unk0 = var_a3;
    var_v0->unk4 = -2;
    var_v0->unk8 = (s32) (var_a3 * 2);
    temp_a2_2 = var_v0 + 0xC;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2, (u32 **) var_a3);
    gl_mem_unpack_array(unksp10, comm_buffer + 8, gl_mem_ntoh_short_array);
}

s32 gl_dgl_qgetfd(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x1C6;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7F04C);
    return comm_buffer->unk4;
}

void gl_d_bgnqstrip(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1CC;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1CCU, 0xFFF7EFF4);
    }
}

void gl_d_endqstrip(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1CD;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1CDU, 0xFFF7EF94);
    }
}

void gl_d_nmode(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1CF;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1CFU);
    }
}

void gl_d_t2f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x1D0;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1D0U);
    }
}

void gl_d_t2d(void *arg0) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_s4;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x1C)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp18;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp18 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp18 = var_ra;
    *var_a4 = 0x1D1;
    memcpy(var_a4 + 8, arg0, 8U);
    memcpy(var_a4 + 0x10, arg0 + 8, 8U);
    temp_s4 = var_a4 + 0x18;
    comm_curbufpos = temp_s4;
    if ((u32) comm_endbuffer < (u32) temp_s4) {
        gl_comm_flush();
    }
}

void gl_d_t2i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x1D2;
    temp_a1 = arg0->unk0;
    comm_curbufpos->unk4 = temp_a1;
    temp_a0 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_t2s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x1D3;
    temp_a1 = arg0->unk0;
    comm_curbufpos->unk4 = temp_a1;
    temp_a0 = arg0->unk2;
    comm_curbufpos->unk6 = temp_a0;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_sclear(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1D4;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1D4U);
    }
}

void gl_d_acbuf(f32 arg1, s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1D5;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1D5U);
    }
}

void gl_d_acsize(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1D6;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1D6U);
    }
}

void gl_d_clipplane(s32 arg0, u32 arg1, s32 arg2) {
    s64 sp20;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk8 = arg1;
    temp_a7->unk0 = 0x1D7;
    temp_a2 = ((((s32) ((arg1 >> 0x1F) + arg1) >> 1) * 0x10) + 3) & ~3;
    temp_a7->unkC = temp_a2;
    if (arg2 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0x10;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0x10, arg2, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_fogvertex(s32 arg0, s32 arg1) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_a6;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a6 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a6->unk4 = arg0;
    temp_a6->unk0 = 0x1D8;
    temp_a6->unk8 = 0x80;
    if (arg1 == 0) {
        var_v0 = temp_a6 + 0x8C;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a6 + 0xC, arg1, 0x80, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

s32 gl_d_getscrbox(s32 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp28 = arg1;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x1D9;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp28 = (s32) comm_buffer->unk8;
    *sp20 = (s32) comm_buffer->unkC;
    *sp18 = (s32) comm_buffer->unk10;
    return (s32) sp20;
}

void gl_d_scrbox(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1DA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1DAU);
    }
}

void gl_d_stensize(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1DB;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1DBU);
    }
}

void gl_d_stencil(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 var_ra;
    u32 *temp_s0;
    u32 *temp_t1;

    var_ra = saved_reg_ra;
    temp_t1 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t1 + 0x20)) {
        sp38 = (s64) arg1;
        sp30 = (s64) arg2;
        sp28 = (s64) arg3;
        sp20 = M2C_ERROR(/* Read from unset register $a4 */);
        sp18 = M2C_ERROR(/* Read from unset register $a5 */);
        sp10 = M2C_ERROR(/* Read from unset register $a6 */);
        gl_comm_flush();
        var_ra = sp40;
    }
    temp_t1->unk1C = (s32) M2C_ERROR(/* Read from unset register $a6 */);
    temp_t1->unk18 = (s32) M2C_ERROR(/* Read from unset register $a5 */);
    temp_t1->unk14 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    temp_t1->unk10 = arg3;
    temp_t1->unkC = arg2;
    temp_t1->unk8 = arg1;
    temp_t1->unk4 = arg0;
    temp_t1->unk0 = 0x1DC;
    temp_s0 = temp_t1 + 0x20;
    comm_curbufpos = temp_s0;
    if ((u32) comm_endbuffer < (u32) temp_s0) {
        sp40 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_swritemask(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1DD;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1DDU);
    }
}

void gl_d_pixmode(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1DE;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1DEU);
    }
}

void gl_d_polymode(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1DF;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1DFU);
    }
}

void gl_d_afunction(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1E0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1E0U);
    }
}

void gl_d_tevbind(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1E1;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1E1U);
    }
}

void gl_d_texbind(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1E2;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1E2U);
    }
}

void gl_d_mswapbuffers(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1E3;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1E3U);
    }
    gl_comm_flush();
}

void gl_d_polysmooth(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1E4;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1E4U);
    }
}

void gl_d_scrsubdivide(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x58)) {
        gl_comm_flush();
        var_ra = sp18;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x1E5;
    temp_a2 = ((arg0 * 0xC) + 3) & ~3;
    temp_a7->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0xC;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0xC, arg1, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp18 = var_ra;
        gl_comm_flush();
    }
}

void gl_dgl_tevdef(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk8 = arg1;
    temp_a7->unk0 = 0x1E6;
    temp_a2 = ((arg1 * 4) + 3) & ~3;
    temp_a7->unkC = temp_a2;
    if (arg2 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0x10;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0x10, arg2, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_dgl_texdef2d(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_at;
    s32 temp_s0;
    s32 temp_s1;
    s64 var_ra;
    u32 *temp_t3;
    u32 *var_v0_2;
    void *temp_a7;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_s0 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_s1 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t3 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t3 + 0xB8)) {
        sp40 = (s64) arg2;
        sp38 = (s64) arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a5 */);
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_at = (arg1 * arg2) - arg1;
    temp_t3->unk10 = arg3;
    temp_t3->unkC = arg2;
    temp_t3->unk4 = arg0;
    temp_t3->unk8 = arg1;
    temp_t3->unk0 = 0x1E7;
    temp_a2 = (((((s32) (((u32) (temp_at >> 1) >> 0x1E) + temp_at) >> 2) + 1) * arg3 * 4) + 3) & ~3;
    temp_t3->unk14 = temp_a2;
    if (temp_s1 == 0) {
        var_v0 = temp_a2 + temp_t3 + 0x18;
    } else {
        sp28 = M2C_ERROR(/* Read from unset register $a5 */);
        sp30 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t3 + 0x18, temp_s1, temp_a2, gl_mem_hton_long_array);
    }
    var_v0->unk0 = (s32) M2C_ERROR(/* Read from unset register $a5 */);
    temp_a2_2 = ((M2C_ERROR(/* Read from unset register $a5 */) * 4) + 3) & ~3;
    var_v0->unk4 = temp_a2_2;
    if (temp_s0 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 8;
    } else {
        sp30 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 8, temp_s0, temp_a2_2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a7 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a7 - 0x18;
    if ((u32) (temp_a7 - 0x18) < (u32) var_v0_2) {
        sp30 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_texgen(s32 arg0, u32 arg1, s32 arg2) {
    s64 sp20;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk8 = arg1;
    temp_a7->unk0 = 0x1E8;
    temp_a2 = ((((s32) ((arg1 >> 0x1F) + arg1) >> 1) * 0x10) + 3) & ~3;
    temp_a7->unkC = temp_a2;
    if (arg2 == 0) {
        var_v0 = temp_a2 + temp_a7 + 0x10;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0x10, arg2, temp_a2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) var_v0) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

s32 gl_d_getsb(s32 *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp18 = arg3;
    sp28 = arg1;
    sp20 = arg2;
    temp_a2 = comm_curbufpos;
    *temp_a2 = 0x1E9;
    comm_curbufpos = temp_a2 + 4;
    gl_comm_read_data(1, temp_a2);
    *arg0 = comm_buffer->unk4;
    *sp28 = (s32) comm_buffer->unk8;
    *sp20 = (s32) comm_buffer->unkC;
    *sp18 = (s32) comm_buffer->unk10;
    return (s32) sp20;
}

void gl_d_linewidthf(f32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1EA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1EAU, 0xFFF7DD28);
    }
}

void gl_d_pntsize(s64 arg0) {
    s64 temp_a0;
    u32 *temp_v0;

    temp_a0 = (s64) (arg0 << 0x30) >> 0x30;
    comm_curbufpos->unk4 = (s16) temp_a0;
    comm_curbufpos->unk0 = 0x1EB;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, 0x1EB);
    }
}

void gl_d_pntsizef(f32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1EC;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1ECU, 0xFFF7DC58);
    }
}

void gl_d_readdisplay(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 temp_a7;
    s64 temp_s0;
    s64 temp_t0;
    s64 temp_t1;
    u32 *temp_t3;

    unksp8 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t1 = (s64) (arg3 << 0x30) >> 0x30;
    temp_t0 = (s64) (arg2 << 0x30) >> 0x30;
    temp_a7 = (s64) (arg1 << 0x30) >> 0x30;
    temp_t3 = comm_curbufpos;
    temp_s0 = (s64) (arg0 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_t3 + 0x20)) {
        sp38 = temp_a7;
        sp30 = temp_t0;
        sp28 = temp_t1;
        sp20 = M2C_ERROR(/* Read from unset register $a5 */);
        gl_comm_flush();
    }
    temp_t3->unk14 = (s32) M2C_ERROR(/* Read from unset register $a5 */);
    temp_t3->unkA = (s16) temp_t1;
    temp_t3->unk8 = (s16) temp_t0;
    temp_t3->unk6 = (s16) temp_a7;
    temp_t3->unk4 = (s16) temp_s0;
    temp_t3->unkC = -4;
    temp_t3->unk0 = 0x1ED;
    temp_t3->unk10 = (s32) (((temp_t0 - temp_s0) + 1) * ((temp_t1 - temp_a7) + 1) * 4);
    comm_curbufpos = temp_t3 + 0x18;
    gl_comm_read_data(1);
    gl_mem_unpack_array(unksp8, comm_buffer + 8, gl_mem_ntoh_long_array);
}

void gl_d_bgncurve(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1EF;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1EFU, 0xFFF7DAD4);
    }
}

void gl_d_endcurve(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1F0;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1F0U, 0xFFF7DA74);
    }
}

void gl_d_pixmodef(f32 arg1, s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1F1;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1F1U);
    }
}

void gl_d_dither(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1FA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1FAU);
    }
}

void gl_d_deflfont(s64 arg0, s64 arg1, s32 arg2, s32 arg3) {
    s64 sp30;
    s64 sp28;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s0;
    s64 temp_a7;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_t2;
    u32 *var_v0_2;
    void *temp_a0;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_a7 = (s64) (arg1 << 0x30) >> 0x30;
    temp_t2 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t2 + 0xB0)) {
        sp28 = temp_a7;
        gl_comm_flush();
        var_ra = sp30;
    }
    temp_t2->unk6 = (s16) temp_a7;
    temp_t2->unk4 = (s16) ((s64) (arg0 << 0x30) >> 0x30);
    temp_t2->unk0 = 0x1FB;
    temp_a2 = ((temp_a7 * 0x14) + 3) & ~3;
    temp_t2->unk8 = temp_a2;
    if (arg2 == 0) {
        var_v0 = temp_a2 + temp_t2 + 0xC;
    } else {
        sp30 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t2 + 0xC, arg2, temp_a2, gl_mem_hton_lfontchar_array);
    }
    var_v0->unk0 = arg3;
    temp_a2_2 = ((arg3 * 2) + 3) & ~3;
    var_v0->unk4 = temp_a2_2;
    if (temp_s0 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 8;
    } else {
        sp30 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 8, temp_s0, temp_a2_2, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a0 = comm_stdsize + comm_buffer;
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) var_v0_2;
    comm_endbuffer = temp_a0 - 0x18;
    if (temp_a0_2 != 0) {
        sp30 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_lcharstr(s32 arg0, ? arg1) {
    s32 temp_a3;
    u32 *temp_a2;
    u32 *temp_v0;
    void *temp_at;

    temp_a2 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a2 + 0x58)) {
        gl_comm_flush((u16) temp_a2, 0xFFF7D79C);
    }
    temp_a2->unk4 = arg0;
    temp_a2->unk0 = 0x1FC;
    temp_a3 = (gl_mbnbytes(arg0, arg1, temp_a2) + 3) & ~3;
    temp_a2->unk8 = temp_a3;
    temp_v0 = gl_mem_pack_lstring(arg0, temp_a2 + 0xC, arg1, temp_a3);
    comm_curbufpos = temp_v0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) temp_v0) {
        gl_comm_flush();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24, 0x28, 0x2c], gap at: 0x18. */
void gl_d_lchstr(s32 arg0, ? arg1, s64 arg2) {
    s32 *temp_v0;
    s32 temp_a3;
    u32 *temp_a3_2;
    u32 *temp_a4;
    void *temp_at;

    unksp10 = arg2;
    temp_a4 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x5C)) {
        gl_comm_flush();
    }
    unksp18 = (s64) temp_a4;
    temp_a4->unk0 = 0x1FD;
    temp_a4->unk4 = arg0;
    temp_a3 = (gl_mbnbytes(arg0, arg1) + 3) & ~3;
    unksp18->unk8 = temp_a3;
    temp_v0 = gl_mem_pack_lstring(arg0, unksp18 + 0xC, arg1, temp_a3);
    *temp_v0 = (s32) unksp10;
    temp_a3_2 = temp_v0 + 4;
    comm_curbufpos = temp_a3_2;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) temp_a3_2) {
        gl_comm_flush();
    }
}

void gl_d_lstrwidth(s32 arg0, ? arg1) {
    s32 temp_a3;
    u32 *temp_a2;

    temp_a2 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a2 + 0x58)) {
        gl_comm_flush((u16) temp_a2, 0xFFF7D568);
    }
    unksp10 = (s64) temp_a2;
    temp_a2->unk4 = arg0;
    temp_a2->unk0 = 0x1FE;
    temp_a3 = (gl_mbnbytes(arg0, arg1, temp_a2, (s64) temp_a2) + 3) & ~3;
    unksp10->unk8 = temp_a3;
    comm_curbufpos = gl_mem_pack_lstring(arg0, unksp10 + 0xC, arg1, temp_a3);
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    gl_comm_read_data(1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24, 0x28, 0x2c], gap at: 0x18. */
void gl_d_lstwid(s32 arg0, ? arg1, s64 arg2) {
    s32 *temp_v0;
    s32 temp_a3;
    u32 *temp_a4;

    unksp10 = arg2;
    temp_a4 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x5C)) {
        gl_comm_flush();
    }
    unksp18 = (s64) temp_a4;
    temp_a4->unk4 = arg0;
    temp_a4->unk0 = 0x1FF;
    temp_a3 = (gl_mbnbytes(arg0, arg1) + 3) & ~3;
    unksp18->unk8 = temp_a3;
    temp_v0 = gl_mem_pack_lstring(arg0, unksp18 + 0xC, arg1, temp_a3);
    *temp_v0 = (s32) unksp10;
    comm_curbufpos = temp_v0 + 4;
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    gl_comm_read_data(1);
}

void gl_d_t3f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x215;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x215U);
    }
}

void gl_d_t3d(void *arg0) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_s4;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x24)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp18;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp18 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp18 = var_ra;
    *var_a4 = 0x201;
    memcpy(var_a4 + 8, arg0, 8U);
    memcpy(var_a4 + 0x10, arg0 + 8, 8U);
    memcpy(var_a4 + 0x18, arg0 + 0x10, 8U);
    temp_s4 = var_a4 + 0x20;
    comm_curbufpos = temp_s4;
    if ((u32) comm_endbuffer < (u32) temp_s4) {
        gl_comm_flush();
    }
}

void gl_d_t3i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x202;
    comm_curbufpos->unk4 = (s32) arg0->unk0;
    temp_a1 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a1;
    temp_a0 = arg0->unk8;
    comm_curbufpos->unkC = temp_a0;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_t3s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x203;
    comm_curbufpos->unk4 = (s16) arg0->unk0;
    temp_a1 = arg0->unk2;
    comm_curbufpos->unk6 = temp_a1;
    temp_a0 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_t4f(void *arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x204;
    comm_curbufpos->unk4 = (f32) arg0->unk0;
    comm_curbufpos->unk8 = (f32) arg0->unk4;
    comm_curbufpos->unkC = (f32) arg0->unk8;
    comm_curbufpos->unk10 = (f32) arg0->unkC;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x204U);
    }
}

void gl_d_t4d(void *arg0) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_s4;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x2C)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp18;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp18 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp18 = var_ra;
    *var_a4 = 0x205;
    memcpy(var_a4 + 8, arg0, 8U);
    memcpy(var_a4 + 0x10, arg0 + 8, 8U);
    memcpy(var_a4 + 0x18, arg0 + 0x10, 8U);
    memcpy(var_a4 + 0x20, arg0 + 0x18, 8U);
    temp_s4 = var_a4 + 0x28;
    comm_curbufpos = temp_s4;
    if ((u32) comm_endbuffer < (u32) temp_s4) {
        gl_comm_flush();
    }
}

void gl_d_t4i(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x206;
    comm_curbufpos->unk4 = (s32) arg0->unk0;
    comm_curbufpos->unk8 = (s32) arg0->unk4;
    temp_a1 = arg0->unk8;
    comm_curbufpos->unkC = temp_a1;
    temp_a0 = arg0->unkC;
    comm_curbufpos->unk10 = temp_a0;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_t4s(void *arg0) {
    s16 temp_a0;
    s16 temp_a1;
    u32 *temp_v0;

    comm_curbufpos->unk0 = 0x207;
    comm_curbufpos->unk4 = (s16) arg0->unk0;
    comm_curbufpos->unk6 = (s16) arg0->unk2;
    temp_a1 = arg0->unk4;
    comm_curbufpos->unk8 = temp_a1;
    temp_a0 = arg0->unk6;
    comm_curbufpos->unkA = temp_a0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, (s64) temp_a1);
    }
}

void gl_d_mssize(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x208;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x208U);
    }
}

void gl_d_mssample(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x209;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x209U);
    }
}

void gl_dgl_texdef3d(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_v1;
    s64 var_ra;
    u32 *temp_t3;
    u32 *var_v0_2;
    void *temp_v1_2;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_s1 = M2C_ERROR(/* Read from unset register $a7 */);
    temp_s0 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_s4 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t3 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t3 + 0xBC)) {
        sp40 = (s64) arg2;
        sp38 = (s64) arg3;
        sp30 = M2C_ERROR(/* Read from unset register $a6 */);
        gl_comm_flush();
        var_ra = sp48;
    }
    temp_v1 = (arg1 * arg2) - arg1;
    temp_t3->unk10 = arg3;
    temp_t3->unkC = arg2;
    temp_t3->unk14 = temp_s4;
    temp_t3->unk4 = arg0;
    temp_t3->unk8 = arg1;
    temp_t3->unk0 = 0x20A;
    temp_a2 = (((((s32) (((u32) (temp_v1 >> 1) >> 0x1E) + temp_v1) >> 2) + 1) * arg3 * temp_s4 * 4) + 3) & ~3;
    temp_t3->unk18 = temp_a2;
    if (temp_s0 == 0) {
        var_v0 = temp_a2 + temp_t3 + 0x1C;
    } else {
        sp30 = M2C_ERROR(/* Read from unset register $a6 */);
        sp48 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t3 + 0x1C, temp_s0, temp_a2, gl_mem_hton_long_array);
    }
    var_v0->unk0 = (s32) M2C_ERROR(/* Read from unset register $a6 */);
    temp_a2_2 = ((M2C_ERROR(/* Read from unset register $a6 */) * 4) + 3) & ~3;
    var_v0->unk4 = temp_a2_2;
    if (temp_s1 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 8;
    } else {
        sp48 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 8, temp_s1, temp_a2_2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0_2;
    temp_v1_2 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_v1_2 - 0x18);
    if ((u32) (temp_v1_2 - 0x18) < (u32) var_v0_2) {
        sp48 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_monobuffer(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x20B;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x20BU, 0xFFF7CB24);
    }
}

void gl_d_stereobuffer(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x20C;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x20CU, 0xFFF7CAC4);
    }
}

void gl_d_leftbuffer(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x20D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x20DU);
    }
}

void gl_d_rightbuffer(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x20E;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x20EU);
    }
}

void gl_d_zbsize(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x20F;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x20FU);
    }
}

void gl_d_blendcolor(f32 arg0, f32 arg1, f32 arg3) {
    u32 *temp_v0;

    comm_curbufpos->unk10 = arg3;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x210;
    temp_v0 = comm_curbufpos + 0x14;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x210U, 0xFFF7C938);
    }
}

void gl_d_msalpha(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x211;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x211U);
    }
}

void gl_d_msmask(f32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x212;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x212U);
    }
}

void gl_d_mspattern(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x213;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x213U);
    }
}

void gl_d_multisample(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x214;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x214U);
    }
}

s32 gl_d_getgconfig(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x216;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7C734);
    return comm_buffer->unk4;
}

void gl_d_hgram(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x235;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x235U);
    }
}

void gl_d_minmax(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x236;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x236U);
    }
}

void gl_d_pixeltransfer(f32 arg1, s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x237;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x237U);
    }
}

s32 gl_d_getmultisample(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x239;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7C5A0);
    return comm_buffer->unk4;
}

void gl_dgl_tlutdef(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s0;
    s64 var_ra;
    u32 *temp_t3;
    u32 *var_v0_2;
    void *temp_a6;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_s0 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_t3 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t3 + 0xB4)) {
        sp30 = (s64) arg2;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_comm_flush();
        var_ra = sp38;
    }
    temp_t3->unkC = arg2;
    temp_t3->unk8 = arg1;
    temp_t3->unk4 = arg0;
    temp_t3->unk0 = 0x23A;
    temp_a2 = ((arg2 * 4) + 3) & ~3;
    temp_t3->unk10 = temp_a2;
    if (arg3 == 0) {
        var_v0 = temp_a2 + temp_t3 + 0x14;
    } else {
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp38 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t3 + 0x14, arg3, temp_a2, gl_mem_hton_long_array);
    }
    var_v0->unk0 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    temp_a2_2 = ((M2C_ERROR(/* Read from unset register $a4 */) * 4) + 3) & ~3;
    var_v0->unk4 = temp_a2_2;
    if (temp_s0 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 8;
    } else {
        sp38 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 8, temp_s0, temp_a2_2, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a6 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a6 - 0x18;
    if ((u32) (temp_a6 - 0x18) < (u32) var_v0_2) {
        sp38 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_tlutbind(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x23B;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x23BU);
    }
}

void gl_d_subtexload(f32 arg1, f32 arg3, s32 arg0) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f32 *var_v0;
    f32 temp_f6;
    f32 var_f5;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_s0;
    s64 var_ra;
    u32 *temp_a4;
    u32 *temp_t1;
    void *temp_a3;

    var_ra = saved_reg_ra;
    temp_a5 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_f6 = M2C_ERROR(/* Read from unset register $f17 */);
    var_f5 = M2C_ERROR(/* Read from unset register $f16 */);
    temp_s0 = M2C_ERROR(/* Read from unset register $a7 */);
    temp_t1 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t1 + 0x74)) {
        sp40 = (bitwise s64) arg1;
        sp38 = (s64) temp_a5;
        sp30 = (f64) arg3;
        sp28 = (f64) var_f5;
        sp20 = (f64) temp_f6;
        gl_comm_flush((u16) &comm_endbuffer);
        var_f5 = second half of f64;
        var_ra = sp48;
    }
    temp_t1->unk1C = temp_a5;
    temp_t1->unk18 = temp_f6;
    temp_t1->unk14 = var_f5;
    temp_t1->unk10 = arg3;
    temp_t1->unk8 = arg1;
    temp_t1->unkC = arg1;
    temp_t1->unk4 = arg0;
    temp_t1->unk0 = 0x23C;
    temp_a6 = ((temp_a5 * 4) + 3) & ~3;
    temp_t1->unk20 = temp_a6;
    if (temp_s0 == 0) {
        var_v0 = temp_a6 + temp_t1 + 0x24;
    } else {
        sp48 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t1 + 0x24, temp_s0, temp_a6, gl_mem_hton_long_array);
    }
    *var_v0 = arg1;
    temp_a4 = var_v0 + 4;
    comm_curbufpos = temp_a4;
    temp_a3 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a3 - 0x18;
    if ((u32) (temp_a3 - 0x18) < (u32) temp_a4) {
        sp48 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_convolve(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    f32 *var_v0;
    s32 temp_a2;
    s32 temp_s0;
    s64 var_ra;
    u32 *temp_a6;
    u32 *temp_t2;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_t2 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t2 + 0x68)) {
        sp30 = (s64) arg1;
        sp28 = (s64) arg2;
        sp20 = (s64) arg3;
        gl_comm_flush();
        var_ra = sp38;
    }
    temp_t2->unk10 = arg3;
    temp_t2->unkC = arg2;
    temp_t2->unk8 = arg1;
    temp_t2->unk4 = arg0;
    temp_t2->unk0 = 0x23E;
    temp_a2 = ((arg2 * arg3 * 4) + 3) & ~3;
    temp_t2->unk14 = temp_a2;
    if (temp_s0 == 0) {
        var_v0 = temp_a2 + temp_t2 + 0x18;
    } else {
        sp38 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t2 + 0x18, temp_s0, temp_a2, gl_mem_hton_float_array);
    }
    *var_v0 = M2C_ERROR(/* Read from unset register $f17 */);
    temp_a6 = var_v0 + 4;
    comm_curbufpos = temp_a6;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a6) {
        sp38 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_ildraw(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x23F;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x23FU);
    }
}

void gl_d_ilbuffer(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x240;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1, (u32 *)0xFFF7BFE0);
}

void gl_d_displacepolygon(f32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x241;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x241U, 0xFFF7BF84);
    }
}

void gl_d_RGBsize(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x242;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x242U);
    }
}

void gl_d_fbsubtexload(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f32 temp_f4;
    f32 temp_f6;
    f32 var_f5;
    s64 var_ra;
    u32 *temp_a7;
    u32 *temp_s1;

    var_ra = saved_reg_ra;
    temp_f6 = M2C_ERROR(/* Read from unset register $f19 */);
    var_f5 = M2C_ERROR(/* Read from unset register $f18 */);
    temp_f4 = M2C_ERROR(/* Read from unset register $f17 */);
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x28)) {
        sp40 = (s64) arg1;
        sp38 = (s64) arg2;
        sp30 = (s64) arg3;
        sp28 = (f64) temp_f4;
        sp20 = (f64) var_f5;
        sp18 = (f64) temp_f6;
        gl_comm_flush();
        var_f5 = second half of f64;
        var_ra = sp48;
    }
    temp_a7->unk20 = temp_f6;
    temp_a7->unk1C = var_f5;
    temp_a7->unk18 = temp_f4;
    temp_a7->unk10 = arg3;
    temp_a7->unkC = arg2;
    temp_a7->unk8 = arg1;
    temp_a7->unk14 = (f32) M2C_ERROR(/* Read from unset register $f16 */);
    temp_a7->unk4 = arg0;
    temp_a7->unk0 = 0x243;
    temp_a7->unk24 = arg1;
    temp_s1 = temp_a7 + 0x28;
    comm_curbufpos = temp_s1;
    if ((u32) comm_endbuffer < (u32) temp_s1) {
        sp48 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_readcomponent(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x244;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x244U);
    }
}

s32 gl_d_gethgram(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a6;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a6 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a6 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a6->unk0 = 0x245;
    temp_a6->unk4 = 0x10000;
    if (arg0 == 0) {
        var_v0 = temp_a6 + 0x10008;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a6 + 8, arg0, 0x10000, gl_mem_hton_long_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        var_v0 = gl_comm_flush();
    }
    return (s32) var_v0;
}

s32 gl_d_getminmax(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a5 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a5->unk0 = 0x246;
    temp_a5->unk4 = 0x20;
    if (arg0 == 0) {
        var_v0 = temp_a5 + 0x28;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a5 + 8, arg0, 0x20, gl_mem_hton_float_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        var_v0 = gl_comm_flush();
    }
    return (s32) var_v0;
}

void gl_d_istexloaded(s32 arg0, s32 arg1) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x247;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (u32 *)0x247, (u32 *)0xFFF7BB44);
}

void gl_d_pixelmap(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s64 var_ra;
    u32 *temp_a7;
    u32 *var_v0;
    void *temp_v1;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a7->unk4 = arg0;
    temp_a7->unk8 = arg1;
    temp_a7->unk0 = 0x248;
    temp_a7->unkC = 0x8000;
    if (arg2 == 0) {
        var_v0 = temp_a7 + 0x8010;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 0x10, arg2, 0x8000, gl_mem_hton_short_array);
    }
    comm_curbufpos = var_v0;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) var_v0) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_fmconcatpagematrix(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a2;
    u32 *var_a4;
    u32 *var_v0;
    void *temp_at;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        temp_a2 = var_a4 + 0x58;
        if ((u32) comm_endbuffer < (u32) temp_a2) {
            gl_comm_flush((u16) &comm_endbuffer, (s64) &comm_curbufpos, temp_a2, (u32 *) ((s32) var_a4 & 7));
            var_ra = sp10;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    var_a4->unk4 = 0x30;
    var_a4->unk0 = 0x11171;
    if (arg0 == 0) {
        var_v0 = var_a4 + 0x38;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(var_a4 + 8, arg0, 0x30, gl_mem_hton_double_array);
    }
    comm_curbufpos = var_v0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_at - 0x18;
    if ((u32) (temp_at - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        gl_comm_flush((u16) &comm_endbuffer, (s64) &comm_curbufpos);
    }
}

void gl_d_fmenumerate(s32 arg0) {
    u32 *temp_s8;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11172;
    temp_s8 = comm_curbufpos + 8;
    comm_curbufpos = temp_s8;
    gl_comm_callback(0xFFF7B884);
    if ((u32) comm_endbuffer < (u32) temp_s8) {
        gl_comm_flush();
    }
}

void gl_d_fmfindfont(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x11173;
    temp_a2 = (strlen(arg0, 0x11173) + 4) & ~3;
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

void gl_d_fm_fontpath_int(s64 arg0, s32 arg1) {
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg1;
    comm_curbufpos->unk0 = 0x11174;
    comm_curbufpos += 0x10;
    gl_comm_read_data(1, (u32 *)0x11174, (u32 *)0xFFF7B6F8);
    gl_mem_unpack_array(arg0, comm_buffer + 4, gl_mem_copy_array);
}

void gl_d_fmfreefont(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11175;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11175U);
    }
}

s32 gl_d_fmgetchrwidth(s32 arg0, s32 arg1) {
    u32 *temp_a2;

    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = arg0;
    temp_a2->unk8 = (s8) (arg1 & 0xFF);
    temp_a2->unk0 = 0x11176;
    comm_curbufpos = temp_a2 + 0xC;
    gl_comm_read_data(1, temp_a2, (u32 *)0x11176);
    return comm_buffer->unk4;
}

s32 gl_d_fmgetcomment(s32 arg0, s32 arg1, s64 arg2) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk10 = arg1;
    comm_curbufpos->unkC = -1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x11177;
    comm_curbufpos += 0x14;
    gl_comm_read_data(1, (u32 *)-1, (u32 *)0x11177);
    gl_mem_unpack_array(arg2, comm_buffer + 8, gl_mem_copy_array);
    return comm_buffer->unk4;
}

s32 gl_d_fmgetfontinfo(s32 arg0, s64 arg1) {
    u32 *temp_a2;

    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = arg0;
    temp_a2->unkC = 0xD8;
    temp_a2->unk8 = 0xD8;
    temp_a2->unk0 = 0x11178;
    comm_curbufpos = temp_a2 + 0x10;
    gl_comm_read_data(1, temp_a2, (u32 *)0x11178);
    gl_mem_unpack_array(arg1, comm_buffer + 8, gl_mem_ntoh_fmfontinfo_array);
    return comm_buffer->unk4;
}

s32 gl_d_fmgetfontname(s32 arg0, s32 arg1, s64 arg2) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk10 = arg1;
    comm_curbufpos->unkC = -1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x11179;
    comm_curbufpos += 0x14;
    gl_comm_read_data(1, (u32 *)-1, (u32 *)0x11179);
    gl_mem_unpack_array(arg2, comm_buffer + 8, gl_mem_copy_array);
    return comm_buffer->unk4;
}

s32 gl_d_fmgetpagematrix(s64 arg0) {
    s64 sp10;
    s64 sp8;
    s64 var_ra;
    u32 *temp_at;
    u32 *var_a3;

    var_ra = saved_reg_ra;
    sp8 = arg0;
    var_a3 = comm_curbufpos;
    if (comm_curgfile->unk198 == 0) {
        if ((u32) comm_endbuffer < (u32) (comm_curbufpos + 0x10)) {
            gl_comm_flush((s32) var_a3 & 7, (s64) &comm_curbufpos, var_a3);
            var_ra = sp10;
            var_a3 = comm_curbufpos;
        }
        if ((s32) var_a3 & 7) {
            sp10 = var_ra;
            temp_at = var_a3 + 4;
            var_a3 += 4;
            var_a3->unk-4 = -1;
            comm_curbufpos = temp_at;
        }
    }
    sp10 = var_ra;
    var_a3->unk8 = 0x30;
    var_a3->unk4 = 0x30;
    var_a3->unk0 = 0x1117A;
    comm_curbufpos = var_a3 + 0xC;
    gl_comm_read_data(1, (u32 *)0x30, (u32 *) &comm_curbufpos, (u32 **) var_a3);
    return gl_mem_unpack_array(sp8, comm_buffer + 4, gl_mem_ntoh_double_array);
}

s32 gl_d_fmgetstrwidth(s32 arg0, s32 arg1) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s2;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x58)) {
        gl_comm_flush();
    }
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0x1117B;
    temp_a2 = (strlen(arg1, 0x1117B) + 4) & ~3;
    temp_v0->unk8 = temp_a2;
    if (arg1 == 0) {
        var_s2 = temp_a2 + temp_v0 + 0xC;
    } else {
        var_s2 = gl_mem_pack_array(temp_v0 + 0xC, arg1, temp_a2, gl_mem_copy_array);
    }
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = var_s2;
    gl_comm_read_data(1);
    return comm_buffer->unk4;
}

s32 gl_d_fm_getwholemetrics_int(s32 arg0, s64 arg1, s32 arg2) {
    s32 temp_a1;

    temp_a1 = arg2 << 5;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk10 = arg2;
    comm_curbufpos->unkC = temp_a1;
    comm_curbufpos->unk8 = temp_a1;
    comm_curbufpos->unk0 = 0x1117C;
    comm_curbufpos += 0x14;
    gl_comm_read_data(1, (u32 *) temp_a1, (u32 *)0x1117C);
    gl_mem_unpack_array(arg1, comm_buffer + 8, gl_mem_ntoh_fmglyphinfo_array);
    return comm_buffer->unk4;
}

void gl_d_fminit(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1117D;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1117DU, 0xFFF7B144);
    }
}

void gl_d_fminitpagematrix(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1117E;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1117EU, 0xFFF7B0E0);
    }
}

void gl_d_fmmakefont(s32 arg0, s32 arg1) {
    s64 sp18;
    s64 var_ra;
    u32 *temp_a2;
    u32 *var_a5;
    u32 *var_v0;

    var_ra = saved_reg_ra;
    var_a5 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        temp_a2 = var_a5 + 0x5C;
        if ((u32) comm_endbuffer < (u32) temp_a2) {
            gl_comm_flush((u16) &comm_endbuffer, (s64) temp_a2, (u32 *) ((s32) var_a5 & 7));
            var_ra = sp18;
            var_a5 = comm_curbufpos;
        }
        if ((s32) var_a5 & 7) {
            *var_a5 = -1U;
            var_a5 += 4;
            comm_curbufpos = var_a5;
        }
    }
    var_a5->unk4 = arg0;
    var_a5->unk8 = 0x30;
    var_a5->unk0 = 0x1117F;
    if (arg1 == 0) {
        sp18 = var_ra;
        var_v0 = var_a5 + 0x40;
    } else {
        sp18 = var_ra;
        var_v0 = gl_mem_pack_array(var_a5 + 0x10, arg1, 0x30, gl_mem_hton_double_array);
    }
    comm_curbufpos = var_v0;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, &comm_endbuffer);
}

void gl_d_fmoutchar(s32 arg0, s32 arg1) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x11180;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (u32 *)0x11180, (u32 *)0xFFF7AF44);
}

void gl_d_fmprintermatch(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11181;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11181U);
    }
}

void gl_d_fmprstr(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x11182;
    temp_a2 = (strlen(arg0, 0x11182) + 4) & ~3;
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

void gl_d_fmrotatepagematrix(f64 arg0) {
    f64 sp20;
    s64 sp10;
    s64 var_ra;
    u16 temp_a0;
    u32 *temp_s3;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    sp20 = arg0;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x10)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp10;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp10 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp10 = var_ra;
    *var_a4 = 0x11183;
    memcpy(var_a4 + 8, &sp20, 8U);
    temp_s3 = var_a4 + 0x10;
    comm_curbufpos = temp_s3;
    temp_a0 = (u32) comm_endbuffer < (u32) temp_s3;
    if (temp_a0 != 0) {
        gl_comm_flush(temp_a0);
    }
}

void gl_d_fmscalefont(f64 arg1, s64 arg0) {
    f64 sp28;
    s64 sp18;
    s64 var_ra;
    u32 *temp_a1;
    u32 *temp_a1_2;
    u32 *var_a5;

    var_ra = saved_reg_ra;
    sp28 = arg1;
    var_a5 = comm_curbufpos;
    if (comm_curgfile->unk198 == 0) {
        temp_a1 = var_a5 + 0x14;
        if ((u32) comm_endbuffer < (u32) temp_a1) {
            sp18 = arg0;
            gl_comm_flush((u16) temp_a1);
            var_ra = unksp8;
            var_a5 = comm_curbufpos;
        }
        if ((s32) var_a5 & 7) {
            unksp8 = var_ra;
            *var_a5 = -1U;
            var_a5 += 4;
            comm_curbufpos = var_a5;
        }
    }
    var_a5->unk4 = (s32) arg0;
    unksp8 = var_ra;
    var_a5->unk0 = 0x11184;
    memcpy(var_a5 + 8, &sp28, 8U);
    temp_a1_2 = var_a5 + 0x10;
    comm_curbufpos = temp_a1_2;
    gl_comm_read_data(1, temp_a1_2, (u32 *) &comm_curbufpos);
}

void gl_d_fmscalepagematrix(f64 arg0) {
    f64 sp20;
    s64 sp10;
    s64 var_ra;
    u16 temp_a0;
    u32 *temp_s3;
    u32 *var_a4;

    var_ra = saved_reg_ra;
    sp20 = arg0;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        if ((u32) comm_endbuffer < (u32) (var_a4 + 0x10)) {
            gl_comm_flush((u16) &comm_curbufpos);
            var_ra = sp10;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            sp10 = var_ra;
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    sp10 = var_ra;
    *var_a4 = 0x11185;
    memcpy(var_a4 + 8, &sp20, 8U);
    temp_s3 = var_a4 + 0x10;
    comm_curbufpos = temp_s3;
    temp_a0 = (u32) comm_endbuffer < (u32) temp_s3;
    if (temp_a0 != 0) {
        gl_comm_flush(temp_a0);
    }
}

void gl_d_fmsetfont(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11186;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11186U);
    }
}

void gl_d_fmsetpagematrix(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a2;
    u32 *var_a4;
    u32 *var_v0;
    void *temp_at;

    var_ra = saved_reg_ra;
    var_a4 = comm_curbufpos;
    if (comm_curgfile->unk198 != 0) {

    } else {
        temp_a2 = var_a4 + 0x58;
        if ((u32) comm_endbuffer < (u32) temp_a2) {
            gl_comm_flush((u16) &comm_endbuffer, (s64) &comm_curbufpos, temp_a2, (u32 *) ((s32) var_a4 & 7));
            var_ra = sp10;
            var_a4 = comm_curbufpos;
        }
        if ((s32) var_a4 & 7) {
            *var_a4 = -1U;
            var_a4 += 4;
            comm_curbufpos = var_a4;
        }
    }
    var_a4->unk4 = 0x30;
    var_a4->unk0 = 0x11187;
    if (arg0 == 0) {
        var_v0 = var_a4 + 0x38;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(var_a4 + 8, arg0, 0x30, gl_mem_hton_double_array);
    }
    comm_curbufpos = var_v0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_at - 0x18;
    if ((u32) (temp_at - 0x18) < (u32) var_v0) {
        sp10 = var_ra;
        gl_comm_flush((u16) &comm_endbuffer, (s64) &comm_curbufpos);
    }
}

void gl_d_fmsetpath(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_at;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x11188;
    temp_a2 = (strlen(arg0, 0x11188) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_curbufpos = var_s0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) var_s0) {
        gl_comm_flush();
    }
}

void gl_d_fmcachelimit(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x11189;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1);
}

s32 gl_d_fmgetcacheused(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x1118A;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1);
    return comm_buffer->unk4;
}

void gl_d_fmcacheenable(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1118B;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1118BU, 0xFFF7A6F0);
    }
}

void gl_d_fmcachedisable(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1118C;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1118CU, 0xFFF7A68C);
    }
}

void gl_d_fmsetcachelimit(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1118D;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1118DU);
    }
}

void gl_d_fm_pixels_to_pointsize_int(f32 *arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x1118E;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1);
    *arg0 = comm_buffer->unk4;
}

void gl_d_fm_pointsize_to_pixels_int(f32 *arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x1118F;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1);
    *arg0 = comm_buffer->unk4;
}

void gl_d_fmfprstr(s32 arg0, s32 arg1, s64 arg2, u32 **arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_a2;
    s64 temp_s1;
    s64 var_ra;
    u32 **var_a3;
    u32 *temp_a2_2;
    u32 *temp_t1;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a3 = arg3;
    temp_t1 = comm_curbufpos;
    temp_s1 = (s64) (arg2 << 0x30) >> 0x30;
    if ((u32) comm_endbuffer < (u32) (temp_t1 + 0x64)) {
        sp30 = (s64) var_a3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_t1->unk4 = arg0;
    temp_a2 = (temp_s1 + 3) & ~3;
    temp_t1->unk8 = temp_a2;
    temp_t1->unk0 = 0x11190;
    if (arg1 == 0) {
        sp20 = var_ra;
        var_v0 = temp_a2 + temp_t1 + 0xC;
    } else {
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = (s64) var_a3;
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t1 + 0xC, arg1, temp_a2, gl_mem_copy_array);
    }
    var_v0->unk8 = (s32) M2C_ERROR(/* Read from unset register $a4 */);
    var_v0->unk4 = var_a3;
    var_v0->unk0 = (s16) temp_s1;
    temp_a2_2 = var_v0 + 0xC;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2, var_a3);
}

void gl_d_wfm_makefont_int(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s32 *var_s0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_s2;
    u32 *temp_v0;
    u32 *var_s0_3;
    void *var_s0_2;

    temp_s2 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp28 = arg3;
    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x100)) {
        gl_comm_flush();
    }
    temp_v0->unk4 = arg0;
    temp_v0->unk0 = 0x11191;
    temp_a2 = -4 & (strlen(arg1, 0x11191) + 4);
    temp_v0->unk8 = temp_a2;
    if (arg1 == 0) {
        var_s0 = temp_a2 + temp_v0 + 0xC;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 0xC, arg1, temp_a2, gl_mem_copy_array);
    }
    *var_s0 = 0x10;
    if (arg2 == 0) {
        var_s0_2 = var_s0 + 0x14;
    } else {
        var_s0_2 = gl_mem_pack_array(var_s0 + 4, arg2, 0x10, gl_mem_hton_float_array);
    }
    var_s0_2->unk0 = (s32) unksp28;
    var_s0_2->unk4 = (s32) subroutine_arg0;
    temp_a2_2 = (subroutine_arg0 + 3) & ~3;
    var_s0_2->unk8 = temp_a2_2;
    if (temp_s2 == 0) {
        var_s0_3 = temp_a2_2 + var_s0_2 + 0xC;
    } else {
        var_s0_3 = gl_mem_pack_array(var_s0_2 + 0xC, temp_s2, temp_a2_2, gl_mem_copy_array);
    }
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = var_s0_3;
    gl_comm_read_data(1);
}

void gl_d_wfm_font(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x11192;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1);
}

s32 gl_d_wfm_getfont(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x11193;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1);
    return comm_buffer->unk4;
}

s32 gl_d_wfm_getfontinfo(s32 arg0, s64 arg1) {
    u32 *temp_a2;

    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = arg0;
    temp_a2->unkC = 0xD8;
    temp_a2->unk8 = 0xD8;
    temp_a2->unk0 = 0x11194;
    comm_curbufpos = temp_a2 + 0x10;
    gl_comm_read_data(1, temp_a2, (u32 *)0x11194);
    gl_mem_unpack_array(arg1, comm_buffer + 8, gl_mem_ntoh_fmfontinfo_array);
    return comm_buffer->unk4;
}

void gl_d_wfm_makefontmat(f32 arg1, s64 arg0) {
    comm_curbufpos->unk10 = arg1;
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = 0x10;
    comm_curbufpos->unk4 = 0x10;
    comm_curbufpos->unk0 = 0x11195;
    comm_curbufpos += 0x14;
    gl_comm_read_data(1, (u32 *)0x10, (u32 *)0x11195, (u32 **)0xFFF7A074);
    gl_mem_unpack_array(arg0, comm_buffer + 4, gl_mem_ntoh_float_array);
}

void gl_d_wfm_fontunits(f32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11196;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x11196U, 0xFFF79FE8);
    }
}

void gl_d_wfm_setfontpath(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_at;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x11197;
    temp_a2 = (strlen(arg0, 0x11197) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_curbufpos = var_s0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) var_s0) {
        gl_comm_flush();
    }
}

void gl_d_wfm_fontpath(s64 arg0, s32 arg1) {
    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = -1;
    comm_curbufpos->unk0 = 0x11198;
    comm_curbufpos += 0x10;
    gl_comm_read_data(1, (u32 *)-1, (u32 *)0x11198);
    gl_mem_unpack_array(arg0, comm_buffer + 4, gl_mem_copy_array);
}

void gl_d_wfm_enumerate(s32 arg0) {
    u32 *temp_s8;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x11199;
    temp_s8 = comm_curbufpos + 8;
    comm_curbufpos = temp_s8;
    gl_comm_callback(0xFFF79DDC);
    if ((u32) comm_endbuffer < (u32) temp_s8) {
        gl_comm_flush();
    }
}

void gl_d_wfm_sizeenumerate(s32 arg0, s32 arg1) {
    s32 *var_s1;
    s32 temp_a2;
    u32 *temp_v0;
    u32 *temp_v0_2;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x58)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x1119A;
    temp_a2 = (strlen(arg0, 0x1119A) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s1 = temp_a2 + temp_v0 + 8;
    } else {
        var_s1 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    temp_v0_2 = var_s1 + 4;
    unksp10 = (s64) temp_v0_2;
    *var_s1 = arg1;
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = temp_v0_2;
    gl_comm_callback();
    if ((u32) comm_endbuffer < unksp10) {
        gl_comm_flush();
    }
}

s32 gl_d_wfm_getcharmetrics_int(s32 arg0, s64 arg1, s32 arg2) {
    s32 temp_a1;

    temp_a1 = arg2 << 5;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk10 = arg2;
    comm_curbufpos->unkC = temp_a1;
    comm_curbufpos->unk8 = temp_a1;
    comm_curbufpos->unk0 = 0x1119B;
    comm_curbufpos += 0x14;
    gl_comm_read_data(1, (u32 *) temp_a1, (u32 *)0x1119B);
    gl_mem_unpack_array(arg1, comm_buffer + 8, gl_mem_ntoh_fmglyphinfo_array);
    return comm_buffer->unk4;
}

void gl_d_wfm_init(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x1119C;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1119CU, 0xFFF79B88);
    }
}

void gl_d_wfm_cmov(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg1;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1119D;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1119DU, 0xFFF79B24);
    }
}

void gl_d_wfm_cmov2(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1119E;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1119EU, 0xFFF79AB4);
    }
}

void gl_d_wfm_cmov2i(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1119F;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1119FU);
    }
}

void gl_d_wfm_cmovi(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111A0;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111A0U);
    }
}

void gl_d_wfm_cmovs(s64 arg0, s64 arg1, s64 arg2) {
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a3;
    u32 *temp_v0;

    temp_a3 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a1 = (s64) (arg1 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg2 << 0x30) >> 0x30;
    comm_curbufpos->unk8 = (s16) temp_a0;
    comm_curbufpos->unk6 = (s16) temp_a1;
    comm_curbufpos->unk4 = (s16) temp_a3;
    comm_curbufpos->unk0 = 0x111A1;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a1, (u32 *) temp_a3);
    }
}

void gl_d_wfm_cmov2s(s64 arg0, s64 arg1) {
    s64 temp_a0;
    s64 temp_a2;
    u32 *temp_v0;

    temp_a2 = (s64) (arg0 << 0x30) >> 0x30;
    temp_a0 = (s64) (arg1 << 0x30) >> 0x30;
    comm_curbufpos->unk6 = (s16) temp_a0;
    comm_curbufpos->unk4 = (s16) temp_a2;
    comm_curbufpos->unk0 = 0x111A2;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush((u16) temp_a0, temp_a2);
    }
}

void gl_d_wfm_charstr(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;
    void *temp_at;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x111A3;
    temp_a2 = (strlen(arg0, 0x111A3) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_curbufpos = var_s0;
    temp_at = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_at - 0x18);
    if ((u32) (temp_at - 0x18) < (u32) var_s0) {
        gl_comm_flush();
    }
}

void gl_d_wfm_skipspace(f32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111A4;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111A4U, 0xFFF7974C);
    }
}

void gl_d_wfm_strwidth(s32 arg0) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s0;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x111A5;
    temp_a2 = (strlen(arg0, 0x111A5) + 4) & ~3;
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

void gl_d_wfm_freefont(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111A6;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111A6U);
    }
}

void gl_d_wfm_hint(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111A7;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111A7U);
    }
}

void gl_d_wfm_aacolor(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111A8;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111A8U);
    }
}

void gl_d_wfm_aacpack(s32 arg0, s32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111A9;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111A9U);
    }
}

void gl_d_wfm_cpack(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111AA;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111AAU);
    }
}

s32 gl_d_wfm_getcoutline(f32 arg1, s32 arg0, s64 arg2) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk10 = 0x14;
    temp_a1->unkC = 0x14;
    temp_a1->unk8 = arg1;
    temp_a1->unk0 = 0x111AB;
    comm_curbufpos = temp_a1 + 0x14;
    gl_comm_read_data(1, temp_a1, (u32 *)0x111AB, (u32 **)0xFFF793C0);
    gl_mem_unpack_array(arg2, comm_buffer + 8, gl_mem_ntoh_wfmoutline_array);
    return comm_buffer->unk4;
}

s32 gl_d_wfm_getcbbox(s32 arg0, f32 *arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u32 *temp_a2;

    sp20 = arg3;
    sp18 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg2;
    temp_a2 = comm_curbufpos;
    temp_a2->unk4 = arg0;
    temp_a2->unk0 = 0x111AD;
    comm_curbufpos = temp_a2 + 8;
    gl_comm_read_data(1, temp_a2);
    *arg1 = comm_buffer->unk4;
    *sp28 = (f32) comm_buffer->unk8;
    *sp20 = (f32) comm_buffer->unkC;
    *sp18 = (f32) comm_buffer->unk10;
    return (s32) comm_buffer;
}

void gl_d_wfm_outchar(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x111AE;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1);
}

void gl_d_wfm_pos(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111AF;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111AFU, 0xFFF7921C);
    }
}

void gl_d_wfm_rpos(f32 arg0, f32 arg1) {
    u32 *temp_v0;

    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111B0;
    temp_v0 = comm_curbufpos + 0xC;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111B0U, 0xFFF791B0);
    }
}

void gl_d_wfm_color(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x111B1;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x111B1U);
    }
}

void gl_d_wfm_charstrn(s32 arg0, s32 arg1) {
    s32 *var_s1;
    s32 temp_a2;
    u32 *temp_a4;
    u32 *temp_v0;
    void *temp_a3;

    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x58)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x111B2;
    temp_a2 = (strlen(arg0, 0x111B2) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s1 = temp_a2 + temp_v0 + 8;
    } else {
        var_s1 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    *var_s1 = arg1;
    temp_a3 = comm_stdsize + comm_buffer;
    temp_a4 = var_s1 + 4;
    comm_curbufpos = temp_a4;
    comm_endbuffer = (u32) (temp_a3 - 0x18);
    if ((u32) (temp_a3 - 0x18) < (u32) temp_a4) {
        gl_comm_flush();
    }
}

void gl_d_wfm_charstrl(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a4;
    u32 *temp_a7;
    void *temp_v1;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a2 = ((arg1 * arg2) + 3) & ~3;
    temp_a7->unk4 = temp_a2;
    temp_a7->unk0 = 0x111B3;
    if (arg0 == 0) {
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    var_v0->unk4 = arg2;
    var_v0->unk0 = arg1;
    temp_a4 = var_v0 + 8;
    comm_curbufpos = temp_a4;
    temp_v1 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_v1 - 0x18;
    if ((u32) (temp_v1 - 0x18) < (u32) temp_a4) {
        sp20 = var_ra;
        gl_comm_flush();
    }
}

void gl_d_wfm_strnwidth(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp20;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a2_2;
    u32 *temp_a7;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_a7 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a7 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp20;
    }
    temp_a2 = ((arg1 * arg2) + 3) & ~3;
    temp_a7->unk4 = temp_a2;
    temp_a7->unk0 = 0x111B4;
    if (arg0 == 0) {
        sp20 = var_ra;
        var_v0 = temp_a2 + temp_a7 + 8;
    } else {
        sp20 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a7 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    var_v0->unk4 = arg2;
    var_v0->unk0 = arg1;
    temp_a2_2 = var_v0 + 8;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x28, 0x2c, 0x38, 0x3c], gap at: 0x10. */
void gl_d_wfm_strbounds(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s32 temp_a2;
    u32 *temp_v0;
    u32 *var_s1;

    unksp8 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp10 = arg3;
    unksp18 = arg2;
    unksp20 = arg1;
    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x54)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x111B5;
    temp_a2 = (strlen(arg0, 0x111B5) + 4) & ~3;
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s1 = temp_a2 + temp_v0 + 8;
    } else {
        var_s1 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = var_s1;
    gl_comm_read_data(1);
    *unksp20 = (s32) comm_buffer->unk4;
    *unksp18 = (s32) comm_buffer->unk8;
    *unksp10 = (s32) comm_buffer->unkC;
    *unksp8 = (s32) comm_buffer->unk10;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x38, 0x3c], gap at: 0x20. */
void gl_d_wfm_strnbounds(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 sp40;
    s32 temp_a2;
    s64 var_ra;
    u32 *temp_a2_2;
    u32 *temp_t2;
    void *var_v0;

    var_ra = saved_reg_ra;
    unksp30 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp18 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp20 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp28 = arg3;
    temp_t2 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t2 + 0x5C)) {
        gl_comm_flush();
        var_ra = sp40;
    }
    temp_a2 = ((arg1 * arg2) + 3) & ~3;
    temp_t2->unk4 = temp_a2;
    temp_t2->unk0 = 0x111B6;
    if (arg0 == 0) {
        sp40 = var_ra;
        var_v0 = temp_a2 + temp_t2 + 8;
    } else {
        sp40 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t2 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    var_v0->unk4 = arg2;
    var_v0->unk0 = arg1;
    temp_a2_2 = var_v0 + 8;
    comm_curbufpos = temp_a2_2;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, comm_buffer, temp_a2_2);
    *unksp28 = (s32) comm_buffer->unk4;
    *unksp20 = (s32) comm_buffer->unk8;
    *unksp18 = (s32) comm_buffer->unkC;
    *unksp30 = (s32) comm_buffer->unk10;
}

void gl_d_dgllogin(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s32 *var_s0;
    s32 *var_s0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    u32 *temp_v0;
    void *var_s0_3;

    unksp8 = arg3;
    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x100)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x10001;
    temp_a2 = -4 & (strlen(arg0, 0x10001) + 4);
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    temp_a2_2 = -4 & (strlen(arg1) + 4);
    *var_s0 = temp_a2_2;
    if (arg1 == 0) {
        var_s0_2 = temp_a2_2 + var_s0 + 4;
    } else {
        var_s0_2 = gl_mem_pack_array(var_s0 + 4, arg1, temp_a2_2, gl_mem_copy_array);
    }
    temp_a2_3 = -4 & (strlen(arg2) + 4);
    *var_s0_2 = temp_a2_3;
    if (arg2 == 0) {
        var_s0_3 = temp_a2_3 + var_s0_2 + 4;
    } else {
        var_s0_3 = gl_mem_pack_array(var_s0_2 + 4, arg2, temp_a2_3, gl_mem_copy_array);
    }
    var_s0_3->unk4 = -1;
    var_s0_3->unk8 = (s32) unksp8;
    var_s0_3->unk0 = (s32) unksp8;
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = var_s0_3 + 0xC;
    gl_comm_read_data(1);
    gl_mem_unpack_array(M2C_ERROR(/* Read from unset register $a4 */), comm_buffer + 0xC, gl_mem_copy_array);
    *M2C_ERROR(/* Read from unset register $a5 */) = comm_buffer->unk8;
}

void gl_d_dglcheckxdr(s32 arg0) {
    s64 sp10;
    s64 var_ra;
    u32 *temp_a5;
    u32 *var_v0;

    var_ra = saved_reg_ra;
    temp_a5 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a5 + 0x54)) {
        gl_comm_flush((u16) &comm_curbufpos);
        var_ra = sp10;
    }
    temp_a5->unk4 = 0x3E8;
    temp_a5->unk0 = 0x10002;
    if (arg0 == 0) {
        sp10 = var_ra;
        var_v0 = temp_a5 + 0x3F0;
    } else {
        sp10 = var_ra;
        var_v0 = gl_mem_pack_array(temp_a5 + 8, arg0, 0x3E8, gl_mem_copy_array);
    }
    *(u32 *) &comm_curbufpos = var_v0;
    comm_endbuffer = (comm_stdsize + comm_buffer) - 0x18;
    gl_comm_read_data(1, (u32 *) &comm_curbufpos);
}

void gl_d_dglxdrformat(s32 arg0, s32 arg1) {
    s8 temp_a3;
    u32 *temp_a2;

    temp_a3 = arg0 & 0xFF;
    temp_a2 = comm_curbufpos;
    temp_a2->unk5 = (s8) (arg1 & 0xFF);
    temp_a2->unk4 = temp_a3;
    temp_a2->unk0 = 0x10003;
    comm_curbufpos = temp_a2 + 8;
    gl_comm_read_data(1, temp_a2, (u32 *) temp_a3);
}

void gl_d_dglreturndata(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x10004;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x10004U, 0xFFF786E8);
    }
}

void gl_d_dgladdcallback(s32 arg0, s32 arg1) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x10005;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (u32 *)0x10005, (u32 *)0xFFF78684);
}

void gl_d_dglexit(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x10006;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1);
}

void gl_d_dglversion(s32 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk4 = arg0;
    temp_a1->unk0 = 0x10007;
    comm_curbufpos = temp_a1 + 8;
    gl_comm_read_data(1, temp_a1);
}

void gl_d_dgltestcallback(s32 arg0, s32 arg1) {
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x10008;
    comm_curbufpos += 0xC;
    gl_comm_callback(0x10008, 0xFFF78564);
    gl_comm_read_data(1);
}

void gl_d_dgltest(s32 arg0, s32 arg1) {
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk0 = 0x10009;
    comm_curbufpos += 0xC;
    gl_comm_read_data(1, (u32 *)0x10009, (u32 *)0xFFF784F8);
}

void gl_d_dglprof(s32 arg0, s32 arg1, s32 arg2) {
    u32 *temp_v0;

    comm_curbufpos->unkC = arg2;
    comm_curbufpos->unk8 = arg1;
    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1000A;
    temp_v0 = comm_curbufpos + 0x10;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1000AU);
    }
}

void gl_d_dglreturncallback(s32 arg0) {
    u32 *temp_v0;

    comm_curbufpos->unk4 = arg0;
    comm_curbufpos->unk0 = 0x1000B;
    temp_v0 = comm_curbufpos + 8;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x1000BU);
    }
}

void gl_d_dglendfeedbackf(s64 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk8 = 0x80000000;
    temp_a1->unk4 = -4;
    temp_a1->unk0 = 0x1000C;
    comm_curbufpos = temp_a1 + 0xC;
    gl_comm_read_data(1, temp_a1, (u32 *)-4, (u32 **)0x1000C);
    gl_mem_unpack_array(arg0, comm_buffer + 8, gl_mem_ntoh_float_array);
}

void gl_d_dglfeedbackf(s32 arg1) {
    s64 sp10;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_a4;
    u32 *temp_at;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a4 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x58)) {
        gl_comm_flush((u16) &comm_curbufpos, (s64) &comm_endbuffer);
        var_ra = sp10;
    }
    temp_a4->unkC = arg1;
    temp_a4->unk4 = 0x80000000;
    temp_a4->unk0 = 0x1000D;
    temp_a4->unk8 = (s32) (arg1 * 4);
    temp_at = temp_a4 + 0x10;
    comm_curbufpos = temp_at;
    temp_a0 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a0 - 0x18);
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) temp_at;
    if (temp_a0_2 != 0) {
        sp10 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_dglendfeedbacks(s64 arg0) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    temp_a1->unk8 = 0x80000000;
    temp_a1->unk4 = -2;
    temp_a1->unk0 = 0x1000E;
    comm_curbufpos = temp_a1 + 0xC;
    gl_comm_read_data(1, temp_a1, (u32 *)-2, (u32 **)0x1000E);
    gl_mem_unpack_array(arg0, comm_buffer + 8, gl_mem_ntoh_short_array);
}

void gl_d_dglfeedbacks(s32 arg1) {
    s64 sp10;
    s64 var_ra;
    u16 temp_a0_2;
    u32 *temp_a4;
    u32 *temp_at;
    void *temp_a0;

    var_ra = saved_reg_ra;
    temp_a4 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_a4 + 0x58)) {
        gl_comm_flush((u16) &comm_curbufpos, (s64) &comm_endbuffer);
        var_ra = sp10;
    }
    temp_a4->unkC = arg1;
    temp_a4->unk4 = 0x80000000;
    temp_a4->unk0 = 0x1000F;
    temp_a4->unk8 = (s32) (arg1 * 2);
    temp_at = temp_a4 + 0x10;
    comm_curbufpos = temp_at;
    temp_a0 = comm_stdsize + comm_buffer;
    comm_endbuffer = (u32) (temp_a0 - 0x18);
    temp_a0_2 = (u32) (temp_a0 - 0x18) < (u32) temp_at;
    if (temp_a0_2 != 0) {
        sp10 = var_ra;
        gl_comm_flush(temp_a0_2);
    }
}

void gl_d_dglloginX(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s32 *var_s0;
    s32 *var_s0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    u32 *temp_v0;
    void *var_s0_3;

    unksp8 = arg3;
    temp_v0 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_v0 + 0x100)) {
        gl_comm_flush();
    }
    temp_v0->unk0 = 0x10010;
    temp_a2 = -4 & (strlen(arg0, 0x10010) + 4);
    temp_v0->unk4 = temp_a2;
    if (arg0 == 0) {
        var_s0 = temp_a2 + temp_v0 + 8;
    } else {
        var_s0 = gl_mem_pack_array(temp_v0 + 8, arg0, temp_a2, gl_mem_copy_array);
    }
    temp_a2_2 = -4 & (strlen(arg1) + 4);
    *var_s0 = temp_a2_2;
    if (arg1 == 0) {
        var_s0_2 = temp_a2_2 + var_s0 + 4;
    } else {
        var_s0_2 = gl_mem_pack_array(var_s0 + 4, arg1, temp_a2_2, gl_mem_copy_array);
    }
    temp_a2_3 = -4 & (strlen(arg2) + 4);
    *var_s0_2 = temp_a2_3;
    if (arg2 == 0) {
        var_s0_3 = temp_a2_3 + var_s0_2 + 4;
    } else {
        var_s0_3 = gl_mem_pack_array(var_s0_2 + 4, arg2, temp_a2_3, gl_mem_copy_array);
    }
    var_s0_3->unk4 = -1;
    var_s0_3->unk8 = (s32) unksp8;
    var_s0_3->unk0 = (s32) unksp8;
    comm_endbuffer = (u32) ((comm_stdsize + comm_buffer) - 0x18);
    comm_curbufpos = var_s0_3 + 0xC;
    gl_comm_read_data(1);
    gl_mem_unpack_array(M2C_ERROR(/* Read from unset register $a4 */), comm_buffer + 0xC, gl_mem_copy_array);
    *M2C_ERROR(/* Read from unset register $a5 */) = comm_buffer->unk8;
}

s32 gl_d_dglgetqport(void) {
    u32 *temp_a1;

    temp_a1 = comm_curbufpos;
    *temp_a1 = 0x10011;
    comm_curbufpos = temp_a1 + 4;
    gl_comm_read_data(1, temp_a1);
    return comm_buffer->unk4;
}

void gl_d_dglacceptqsocket(void) {
    u32 *temp_v0;

    *comm_curbufpos = 0x10012;
    temp_v0 = comm_curbufpos + 4;
    comm_curbufpos = temp_v0;
    if ((u32) comm_endbuffer < (u32) temp_v0) {
        gl_comm_flush(0x10012U, 0xFFF77E74);
    }
}

void gl_d_dglxauthority(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp28;
    s64 sp20;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 var_a6;
    s64 var_ra;
    u32 *temp_t1;
    u32 *var_v0_2;
    void *temp_a4;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a6 = arg2;
    temp_t1 = comm_curbufpos;
    if ((u32) comm_endbuffer < (u32) (temp_t1 + 0xAC)) {
        sp20 = (s64) var_a6;
        gl_comm_flush();
        var_ra = sp28;
    }
    temp_t1->unk4 = arg0;
    temp_a2 = (arg0 + 3) & ~3;
    temp_t1->unk0 = 0x10013;
    temp_t1->unk8 = temp_a2;
    if (arg1 == 0) {
        var_v0 = temp_a2 + temp_t1 + 0xC;
    } else {
        sp20 = (s64) var_a6;
        sp28 = var_ra;
        var_v0 = gl_mem_pack_array(temp_t1 + 0xC, arg1, temp_a2, gl_mem_copy_array);
    }
    var_v0->unk0 = var_a6;
    temp_a2_2 = (var_a6 + 3) & ~3;
    var_v0->unk4 = temp_a2_2;
    if (arg3 == 0) {
        var_v0_2 = temp_a2_2 + var_v0 + 8;
    } else {
        sp28 = var_ra;
        var_v0_2 = gl_mem_pack_array(var_v0 + 8, arg3, temp_a2_2, gl_mem_copy_array);
    }
    comm_curbufpos = var_v0_2;
    temp_a4 = comm_stdsize + comm_buffer;
    comm_endbuffer = temp_a4 - 0x18;
    if ((u32) (temp_a4 - 0x18) < (u32) var_v0_2) {
        sp28 = var_ra;
        gl_comm_flush();
    }
}
