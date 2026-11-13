? glColorTableSGI(?, s32, ?, s32);                  /* extern */
extern ? gl_texturetab;
extern ? gl_tluttab;
extern ? sub_0f030000;

void __iglooIgl2OglCTFmtandIFmt(void *arg0, s32 *arg1, s32 *arg2) {
    s32 temp_a4;

    temp_a4 = arg0->unk40C;
    switch (temp_a4) {                              /* irregular */
    case 4:
        *arg1 = 0x1908;
        *arg2 = 0x1908;
        return;
    case 2:
        *arg1 = 0x190A;
        *arg2 = 0x190A;
        return;
    case 3:
        *arg1 = 0x1907;
        *arg2 = 0x1907;
        return;
    }
}

void gl_tlutbind(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp4;
    s32 temp_a3;
    s32 temp_v0;
    void *temp_s0;
    void *var_a0;

    sp18 = arg2;
    sp20 = arg1;
    sp10 = arg0;
    sp8 = (s64) gl_wstatep;
    temp_v0 = __iglooGetGraphicsType();
    if ((temp_v0 != 3) && (temp_v0 != 4)) {
        var_a0 = sp8->unk2DBC;
        temp_s0 = gl_find(&gl_tluttab, sp20);
        if (var_a0 == NULL) {
            gl_init_texturing(sp8);
            var_a0 = sp8->unk2DBC;
        }
        if (sp10 == 0) {
            if (temp_s0 == NULL) {
                var_a0->unk1A0 = NULL;
                var_a0->unk19C = 0;
                __iglooTexColTabDisable(var_a0);
            } else if ((var_a0->unk1A0 == temp_s0) && (sp18 != 1)) {
                __iglooTexColTabEnable(var_a0);
            } else {
                temp_a3 = temp_s0->unk4;
                var_a0->unk1A0 = temp_s0;
                var_a0->unk19C = temp_a3;
                __iglooIgl2OglCTFmtandIFmt(temp_s0, sp, &sp4, temp_a3);
                glColorTableSGI(0x80BC, sp4, 0x100, subroutine_arg0);
                __iglooTexColTabEnable(sp8->unk2DBC);
            }
        }
    }
}

void gl_i_tlutbind(void) {
    gl_tlutbind(0);
}

void gl_c_tlutbind(s32 arg0, s32 arg1, ? arg2) {
    s64 sp28;
    ? var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-4D88 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x53F8, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-4D88 = 1;
    }
    gl_compile(6, sp, var_a2, arg1);
}

void gl_n_tlutbind(void *arg0) {
    gl_tlutbind((s64) arg0->unk0, (s64) arg0->unk4, 0);
}

void __iglooTexColTabEnable(void *arg0) {
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    void *temp_a0;
    void *temp_s0;
    void *temp_v0;

    temp_s0 = gl_find(&gl_tluttab, (s64) arg0->unk19C);
    temp_v0 = gl_find(&gl_texturetab, (s64) arg0->unk4);
    temp_a0 = temp_v0;
    if ((temp_s0 != NULL) && (temp_v0 != NULL)) {
        temp_v0_2 = temp_s0->unk40C;
        switch (temp_v0_2) {                        /* irregular */
        default:
            __iglooSetEnable(0x80BC, 0);
            break;
        case 2:
            temp_v0_3 = temp_a0->unk20;
            if ((temp_v0_3 != 1) && (temp_v0_3 != 2)) {
                __iglooSetEnable(0x80BC, 0);
            } else {
                __iglooSetEnable(0x80BC, 1);
            }
            break;
        case 4:
            __iglooSetEnable(0x80BC, 1);
            break;
        case 3:
            temp_v0_4 = temp_a0->unk20;
            if (temp_v0_4 != 1) {
                if (temp_v0_4 != 3) {
                    __iglooSetEnable(0x80BC, 0, 1, 3);
                } else {
                    goto block_16;
                }
            } else {
block_16:
                __iglooSetEnable(0x80BC, 1, 1, 3);
            }
            break;
        }
    }
}

void __iglooTexColTabDisable(void) {
    __iglooSetEnable(0x80BC, 0);
}
