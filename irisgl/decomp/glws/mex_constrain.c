extern ? initportreq;

void _GLhintinit(s32 arg0) {
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF4F710;
    if ((arg0 != 0) || (temp_at->unk-50F4 == 0)) {
        temp_a0 = temp_at->unk-7FA8;
        temp_at->unk-50F4 = 1;
        temp_a1 = temp_at->unk-7EC8;
        temp_a0_2 = temp_a0 + 0x3850;
        temp_a1->unk3C = (u16) temp_a0_2->unk3C;
        temp_a1->unk28 = (s64) temp_a0_2->unk28;
        temp_a1->unk38 = (s32) temp_a0_2->unk38;
        temp_a1->unk30 = (s64) temp_a0_2->unk30;
        temp_a1->unk20 = (s64) temp_a0_2->unk20;
        temp_a1->unk18 = (s64) temp_a0_2->unk18;
        temp_a1->unk10 = (s64) temp_a0_2->unk10;
        temp_a1->unk8 = (s64) temp_a0_2->unk8;
        temp_a1->unk0 = (s64) temp_a0->unk3850;
    }
}

void gl_g_minsize(s16 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    _GLhintinit(0);
    initportreq.unk2 = (s16) sp18;
    initportreq.unk0 = arg0;
}

void gl_g_maxsize(s16 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    _GLhintinit(0);
    initportreq.unk6 = (s16) sp18;
    initportreq.unk4 = arg0;
}

void gl_g_keepaspect(s16 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    _GLhintinit(0);
    initportreq.unkC = (s16) sp18;
    initportreq.unk8 = 1;
    initportreq.unkA = arg0;
}

void gl_g_prefsize(s16 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    _GLhintinit(0);
    initportreq.unk12 = (s16) sp18;
    initportreq.unkE = 1;
    initportreq.unk10 = arg0;
}

void gl_g_stepunit(s16 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    _GLhintinit(0);
    initportreq.unk1C = (s16) sp18;
    initportreq.unk1A = arg0;
}

void gl_g_fudge(s16 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    _GLhintinit(0);
    initportreq.unk20 = (s16) sp18;
    initportreq.unk1E = arg0;
}

void gl_g_prefposition(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    s16 var_a1;
    s16 var_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 var_a1_3;
    s32 var_a1_4;

    _GLhintinit(0);
    initportreq.unk14 = 1;
    if (arg0 < arg1) {
        var_a1 = arg0;
    } else {
        var_a1 = arg1;
    }
    temp_a2 = arg1 - arg0;
    initportreq.unk16 = var_a1;
    if (arg2 < arg3) {
        var_a1_2 = arg2;
    } else {
        var_a1_2 = arg3;
    }
    initportreq.unkE = 1;
    initportreq.unk18 = var_a1_2;
    if (temp_a2 >= 0) {
        var_a1_3 = temp_a2;
    } else {
        var_a1_3 = arg0 - arg1;
    }
    temp_a2_2 = arg3 - arg2;
    initportreq.unk10 = (s16) (var_a1_3 + 1);
    if (temp_a2_2 >= 0) {
        var_a1_4 = temp_a2_2;
    } else {
        var_a1_4 = arg2 - arg3;
    }
    initportreq.unk12 = (s16) (var_a1_4 + 1);
}

void gl_g_noport(void) {
    _GLhintinit(0);
    initportreq.unk3C = 1;
}

void gl_g_imakebackground(void) {
    _GLhintinit(0);
    initportreq.unk22 = 1;
}

void gl_g_noborder(void) {
    _GLhintinit(0);
    initportreq.unk34 = 1;
}

void gl_g_iconsize(s16 arg0, s64 arg1) {
    s64 sp18;

    sp18 = arg1;
    _GLhintinit(0);
    initportreq.unk3A = (s16) sp18;
    initportreq.unk36 = 1;
    initportreq.unk38 = arg0;
}
