? glSampleMaskSGIS(f64, s64, s32);                  /* extern */
? glSamplePatternSGIS(?, s32);                      /* extern */
extern ? sub_0f020000;
extern ? sub_0f030000;

void gl_i_msalpha(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_msalpha(arg0);
}

void gl_c_msalpha(s32 arg0) {
    if (saved_reg_gp->unk-505C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x63C8);
        saved_reg_gp->unk-505C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_msalpha(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_msalpha((s64) *arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_msmask(f64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_msmask(arg0, arg1);
}

void gl_c_msmask(f32 arg0, s32 arg1) {
    if (saved_reg_gp->unk-5058 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x63B8);
        saved_reg_gp->unk-5058 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_msmask(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_msmask((bitwise f64) arg0->unk0, (s64) arg0->unk4);
}

void gl_i_mspattern(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_mspattern(arg0);
}

void gl_c_mspattern(s32 arg0) {
    if (saved_reg_gp->unk-5054 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x63A8);
        saved_reg_gp->unk-5054 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_mspattern(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_mspattern((s64) *arg0);
}

void gl_i_mssample(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_mssample(arg0);
}

void gl_c_mssample(s32 arg0) {
    if (saved_reg_gp->unk-5050 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6398);
        saved_reg_gp->unk-5050 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_mssample(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_mssample((s64) *arg0);
}

void gl_i_multisample(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_multisample(arg0);
}

void gl_c_multisample(s32 arg0) {
    if (saved_reg_gp->unk-504C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x6388);
        saved_reg_gp->unk-504C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_multisample(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_multisample((s64) *arg0);
}

void gl_msalpha(s64 arg0) {
    unksp8 = arg0;
    if ((__iglooIsExtensionSupported(0x10) == 1) && (gl_wstatep->unk2F58 != 0) && (gl_wstatep->unk2F5C != unksp8)) {
        gl_wstatep->unk2F5C = (s32) unksp8;
        switch (unksp8) {                           /* irregular */
        case 2:
            __iglooSetEnable(0x809E, 0);
            __iglooSetEnable(0x809F, 0);
            break;
        case 0:
            __iglooSetEnable(0x809F, 0);
            __iglooSetEnable(0x809E, 1);
            break;
        case 1:
            __iglooSetEnable(0x809E, 0);
            __iglooSetEnable(0x809F, 1);
            break;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void gl_msmask(f64 arg0, s64 arg1) {
    unksp10 = arg1;
    unksp18 = (s64) (gl_wstatep + 0x2F58);
    if (__iglooIsExtensionSupported(0x10) == 1) {
        if (unksp18->unk10 == (bitwise f32) subroutine_arg0) {
            if (unksp18->unk14 != unksp10) {
                goto block_5;
            }
        } else {
block_5:
            unksp18->unk14 = (s32) unksp10;
            unksp18->unk10 = (bitwise f32) subroutine_arg0;
            glSampleMaskSGIS(subroutine_arg0, unksp18, unksp10 & 0xFF);
        }
    }
}

void gl_mspattern(s64 arg0) {
    ? var_a0;

    if (__iglooIsExtensionSupported(0x10) != 1) {

    } else {
        gl_wstatep->unk2F64 = (s32) subroutine_arg0;
        if ((u64) subroutine_arg0 < 7U) {
            var_a0 = 0x80A7;
            switch (subroutine_arg0) {
            case 0:
                var_a0 = 0x80A1;
                break;
            case 2:
                var_a0 = 0x80A3;
                break;
            case 1:
                var_a0 = 0x80A2;
                break;
            case 3:
                var_a0 = 0x80A4;
                break;
            case 4:
                var_a0 = 0x80A5;
                break;
            case 5:
                var_a0 = 0x80A6;
                break;
            }
            glSamplePatternSGIS(var_a0, *((subroutine_arg0 * 4) + &jtbl_0f024648));
            return;
        }
        gl_ErrorHandler(0x38, 2, &sub_0f020000 + 0x4668);
    }
}

void gl_mssample(s32 arg0) {
    (*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF40648)->unk-5B00)->unk2F60 = arg0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_multisample(s64 arg0) {
    unksp8 = arg0;
    unksp10 = (s64) (gl_wstatep + 0x2F58);
    if ((__iglooIsExtensionSupported(0x10) == 1) && (*unksp10 != unksp8)) {
        *unksp10 = (s32) unksp8;
        __iglooSetEnable(0x809D, unksp8 & 0xFF, unksp8, unksp10);
    }
}

s32 gl_g_getmultisample(void) {
    s32 var_v0;
    void *temp_a3;
    void *temp_a4;

    var_v0 = 0;
    temp_a3 = *(void **)0x1004;
    if (temp_a3 != NULL) {
        temp_a4 = temp_a3->unk14;
        if ((temp_a4 != NULL) && (temp_a4->unk48 != 0) && ((*(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF405A8)->unk-5B00)->unk2F58 != 0)) {
            var_v0 = 1;
        }
    }
    return var_v0;
}

void gl_g_gl_ms_init_pixels(void) {
    glClear(0x4100U);
}
