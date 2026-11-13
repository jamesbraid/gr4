? glClipPlane(s32, void *);                         /* extern */
extern ? sub_0f020000;

void __gl_clipplane(s64 arg0, s64 arg1, void *arg2) {
    s64 sp28;
    s64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;

    sp28 = arg0;
    sp20 = (s64) gl_wstatep;
    if (arg1 != 2) {
        if (arg1 == 1) {
            __iglooSetEnable(sp28 + 0x3000, 1);
            sp20->unk110 = (s32) (sp20->unk110 | (1 << sp28));
            if (sp20->unkB58 == 1) {
                __iglooRestoreUsrMat();
                sp20->unkB5C = 0;
            }
        } else if (arg1 == 0) {
            __iglooSetEnable(sp28 + 0x3000, 0);
            sp20->unk110 = (s32) (sp20->unk110 & ~(1 << sp28));
            if (sp20->unkB58 == 1) {
                sp20->unkB5C = 1;
                sp20->unkD8 = slowBegin;
            }
        }
    } else {
        sp0 = (f64) arg2->unk0;
        sp8 = (f64) arg2->unk4;
        sp10 = (f64) arg2->unk8;
        sp18 = (f64) arg2->unkC;
        glClipPlane(sp28 + 0x3000, sp);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24], gap at: 0x10. */
void gl_i_clipplane(s64 arg0, s64 arg1, s64 arg2) {
    if (gl_inMoveDraw != 0) {
        unksp18 = arg2;
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    __gl_clipplane(arg0, arg1, (void *) arg2);
}

void gl_c_clipplane(s32 arg0, s32 arg1, void *arg2) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    ? spC;
    s32 sp8;
    s32 sp4;
    void (*sp0)(void *);
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-51F4 == 0) {
        sp40 = (s64) arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f020000 + 0x7270);
        var_ra = sp38;
        saved_reg_gp->unk-51F4 = 1;
    }
    sp8 = arg1;
    sp4 = arg0;
    sp0 = gl_n_clipplane;
    if (arg1 != 2) {
        spC.unkC = 0.0f;
        spC.unk8 = 0.0f;
        spC.unk4 = 0.0f;
        spC.unk0 = 0.0f;
    } else {
        spC.unk0 = (f32) arg2->unk0;
        spC.unk4 = (f32) arg2->unk4;
        spC.unk8 = (f32) arg2->unk8;
        spC.unkC = (f32) arg2->unkC;
    }
    sp38 = var_ra;
    gl_compile(0xE, sp, arg2, 2);
}

void gl_n_clipplane(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    __gl_clipplane((s64) arg0->unk0, (s64) arg0->unk4, arg0 + 8);
}
