extern s32 gl_dgl_table_is_remote;
extern s32 gl_immediate_mode;
extern s32 gl_openobjhdr;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLgbegin(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_gbegin;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gbegin;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gbegin;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetwscrn(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getwscrn;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getwscrn;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getwscrn;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLblanktime(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_blanktime;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_blanktime;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_blanktime;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLnoport(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_noport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_noport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_noport;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLtextcolor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_textcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_textcolor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_textcolor;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLscrnattach(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_scrnattach;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_scrnattach;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_scrnattach;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLvideocmd(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_videocmd;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_videocmd;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_videocmd;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLtextinit(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_textinit;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_textinit;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_textinit;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetvaluator(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getvaluator;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getvaluator;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getvaluator;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetresetls(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_getresetls;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getresetls;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getresetls;
        }
    }
    return var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLblink(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_blink;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_blink;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_blink;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLqreset(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_qreset;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_qreset;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_qreset;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLdbtext(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_dbtext;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_dbtext;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_dbtext;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLpagecolor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_pagecolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pagecolor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pagecolor;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLtpoff(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_tpoff;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_tpoff;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_tpoff;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLqread(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_qread;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_qread;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_qread;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLqenter(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_qenter;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_qenter;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_qenter;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgethitcode(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_gethitcode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gethitcode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gethitcode;
        }
    }
    return var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetpor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getpor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getpor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getpor;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetbutton(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getbutton;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getbutton;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getbutton;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLsetvideo(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_setvideo;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setvideo;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setvideo;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetothermonitor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getothermonitor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getothermonitor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getothermonitor;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLismex(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_ismex;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_ismex;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_ismex;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLqtest(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_qtest;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_qtest;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_qtest;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLqcontrol(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_qcontrol;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_qcontrol;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_qcontrol;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLprefposition(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_prefposition;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_prefposition;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_prefposition;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLblankscreen(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_blankscreen;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_blankscreen;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_blankscreen;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLsetfastcom(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_setfastcom;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setfastcom;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setfastcom;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLimakebackground(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_imakebackground;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_imakebackground;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_imakebackground;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLringbell(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_ringbell;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_ringbell;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_ringbell;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLprefsize(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_prefsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_prefsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_prefsize;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLforeground(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_foreground;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_foreground;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_foreground;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetport(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getport;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLkeepaspect(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_keepaspect;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_keepaspect;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_keepaspect;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLattachcursor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_attachcursor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_attachcursor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_attachcursor;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLwinope(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_winope;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winope;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winope;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLwinopen(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_winopen;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winopen;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winopen;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetvideo(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getvideo;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getvideo;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getvideo;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLtextport(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_textport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_textport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_textport;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLfudge(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_fudge;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_fudge;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_fudge;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLsetbell(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_setbell;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setbell;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setbell;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLpagewritemask(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_pagewritemask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pagewritemask;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pagewritemask;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLclkon(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_clkon;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_clkon;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_clkon;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLscrnselect(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_scrnselect;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_scrnselect;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_scrnselect;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLsetslowcom(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_setslowcom;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setslowcom;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setslowcom;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLstepunit(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_stepunit;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_stepunit;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_stepunit;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLisqueued(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_isqueued;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_isqueued;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_isqueued;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLminsize(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_minsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_minsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_minsize;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLclkoff(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_clkoff;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_clkoff;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_clkoff;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLtpon(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_tpon;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_tpon;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_tpon;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLmaxsize(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_maxsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_maxsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_maxsize;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetgdesc(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_getgdesc;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getgdesc;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getgdesc;
        }
    }
    return var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLicontitle(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_icontitle;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_icontitle;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_icontitle;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLgversion(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_gversion;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gversion;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gversion;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLiconti(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_iconti;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_iconti;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_iconti;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLlampon(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_lampon;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lampon;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lampon;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLlampoff(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    if (gl_inMoveDraw != 0) {
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_g_lampoff;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lampoff;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lampoff;
        }
    }
    var_t9(unksp8, unksp10, unksp18, unksp20);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLginit(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_ginit;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_ginit;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_ginit;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
s32 __GLgetlsbackup(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s32 (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_getlsbackup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getlsbackup;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getlsbackup;
        }
    }
    return var_t9(arg0, arg1, arg2, arg3);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x48, 0x4c], gap at: 0x10. */
void __GLclearhitcode(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    void (*var_t9)(s64, s64, s64, s64);

    unksp8 = arg0;
    unksp10 = arg1;
    unksp18 = arg2;
    unksp20 = arg3;
    unksp28 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp30 = M2C_ERROR(/* Read from unset register $a5 */);
    unksp38 = M2C_ERROR(/* Read from unset register $a6 */);
    unksp40 = M2C_ERROR(/* Read from unset register $a7 */);
    sp50 = M2C_ERROR(/* Read from unset register $t0 */);
    gl_initializer();
    var_t9 = gl_g_clearhitcode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_clearhitcode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_clearhitcode;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

s32 __GLgetlsrepeat(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getlsrepeat;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getlsrepeat;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getlsrepeat;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgreset(void) {
    void (*var_t9)();

    var_t9 = gl_g_greset;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_greset;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_greset;
        }
    }
    var_t9();
}

void __GLfbsubtexload(void) {
    void (*var_t9)();

    var_t9 = gl_g_fbsubtexload;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_fbsubtexload;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_fbsubtexload;
        }
    }
    var_t9();
}

void __GLdefbasis(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_defbasis;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_defbasis;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_defbasis;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLscreenspace(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_screenspace;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_screenspace;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_screenspace;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwinclose(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winclose;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winclose;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winclose;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLtevdef(void) {
    void (*var_t9)();

    var_t9 = gl_g_tevdef;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_tevdef;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_tevdef;
        }
    }
    var_t9();
}

s32 __GLgetdcm(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getdcm;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getdcm;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getdcm;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLRGBmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_RGBmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_RGBmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_RGBmode;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsetmap(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setmap;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setmap;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setmap;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_pixmode_misc(void) {
    void (*var_t9)();

    var_t9 = gl_g_gl_pixmode_misc;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_pixmode_misc;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_pixmode_misc;
        }
    }
    var_t9();
}

void __GLgRGBcursor(void) {
    void (*var_t9)();

    var_t9 = gl_g_gRGBcursor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gRGBcursor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gRGBcursor;
        }
    }
    var_t9();
}

s32 __GLgetmcolor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getmcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getmcolor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getmcolor;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLobjreplace(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_objreplace;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_objreplace;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_objreplace;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLortho(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_ortho;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_ortho;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_ortho;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsetdepth(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setdepth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setdepth;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setdepth;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgsync(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gsync;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gsync;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gsync;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLstensize(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_stensize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_stensize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_stensize;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLrectwrite(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_rectwrite;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_rectwrite;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_rectwrite;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlmdef(void) {
    void (*var_t9)();

    var_t9 = gl_g_lmdef;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lmdef;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lmdef;
        }
    }
    var_t9();
}

void __GLsetdblights(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setdblights;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setdblights;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setdblights;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_misc(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gl_misc;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_misc;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_misc;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLtextwritemask(void) {
    void (*var_t9)();

    var_t9 = gl_g_textwritemask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_textwritemask;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_textwritemask;
        }
    }
    var_t9();
}

s32 __GLgetopenobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getopenobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getopenobj;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getopenobj;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLobjinsert(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_objinsert;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_objinsert;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_objinsert;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdefcursor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_defcursor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_defcursor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_defcursor;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLmapw(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_mapw;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_mapw;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_mapw;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlsetdepth(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lsetdepth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lsetdepth;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lsetdepth;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgflush(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gflush;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gflush;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gflush;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpixelmap(void) {
    void (*var_t9)();

    var_t9 = gl_g_pixelmap;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pixelmap;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pixelmap;
        }
    }
    var_t9();
}

void __GLonemap(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_onemap;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_onemap;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_onemap;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcrvn(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_crvn;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_crvn;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_crvn;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLtie(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_tie;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_tie;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_tie;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLzbsize(void) {
    void (*var_t9)();

    var_t9 = gl_g_zbsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_zbsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_zbsize;
        }
    }
    var_t9();
}

void __GLcompactify(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_compactify;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_compactify;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_compactify;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_setdisplay(void) {
    void (*var_t9)();

    var_t9 = gl_g_gl_setdisplay;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_setdisplay;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_setdisplay;
        }
    }
    var_t9();
}

s32 __GLgetmmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getmmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getmmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getmmode;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcircfi(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_circfi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_circfi;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_circfi;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLfullscrn(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_fullscrn;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_fullscrn;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_fullscrn;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLmultimap(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_multimap;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_multimap;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_multimap;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlshaderange(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lshaderange;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lshaderange;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lshaderange;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLperspective(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_perspective;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_perspective;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_perspective;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwriteRGB(void) {
    void (*var_t9)();

    var_t9 = gl_g_writeRGB;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_writeRGB;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_writeRGB;
        }
    }
    var_t9();
}

void __GLendselect(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_endselect;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endselect;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endselect;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_sincos(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gl_sincos;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_sincos;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_sincos;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwinconstraints(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winconstraints;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winconstraints;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winconstraints;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpicksize(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_picksize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_picksize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_picksize;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLreshapeviewport(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_reshapeviewport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_reshapeviewport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_reshapeviewport;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcircfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_circfs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_circfs;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_circfs;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgexit(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gexit;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gexit;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gexit;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLtlutdef(void) {
    void (*var_t9)();

    var_t9 = gl_g_tlutdef;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_tlutdef;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_tlutdef;
        }
    }
    var_t9();
}

void __GLwinset(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winset;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winset;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winset;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLrectzoom(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_rectzoom;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_rectzoom;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_rectzoom;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcirc(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_circ;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_circ;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_circ;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcloseobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_closeobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_closeobj;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_closeobj;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLstereobuffer(void) {
    void (*var_t9)();

    var_t9 = gl_g_stereobuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_stereobuffer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_stereobuffer;
        }
    }
    var_t9();
}

void __GLminmax(void) {
    void (*var_t9)();

    var_t9 = gl_g_minmax;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_minmax;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_minmax;
        }
    }
    var_t9();
}

void __GLarc(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_arc;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_arc;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_arc;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLarcf(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_arcf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_arcf;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_arcf;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetdrawmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getdrawmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getdrawmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getdrawmode;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwinmove(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winmove;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winmove;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winmove;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLarci(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_arci;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_arci;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_arci;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GListag(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_istag;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_istag;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_istag;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdoublebuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_doublebuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_doublebuffer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_doublebuffer;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetcmmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getcmmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getcmmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getcmmode;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetmonitor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getmonitor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getmonitor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getmonitor;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLnoborder(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_noborder;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_noborder;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_noborder;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLfeedback(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_feedback;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_feedback;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_feedback;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLscrmask(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_scrmask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_scrmask;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_scrmask;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLglcompat(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_glcompat;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_glcompat;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_glcompat;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpopviewport(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_popviewport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_popviewport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_popviewport;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpopattributes(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_popattributes;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_popattributes;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_popattributes;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLarcs(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_arcs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_arcs;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_arcs;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgl_glx_getconfig(void) {
    s32 (*var_t9)();

    var_t9 = gl_g_gl_glx_getconfig;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_glx_getconfig;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_glx_getconfig;
        }
    }
    return var_t9();
}

void __GLendsurface(void) {
    void (*var_t9)();

    var_t9 = gl_g_endsurface;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endsurface;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endsurface;
        }
    }
    var_t9();
}

void __GLrectread(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_rectread;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_rectread;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_rectread;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetzbuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getzbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getzbuffer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getzbuffer;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwinpop(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winpop;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winpop;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winpop;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLRGBsize(void) {
    void (*var_t9)();

    var_t9 = gl_g_RGBsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_RGBsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_RGBsize;
        }
    }
    var_t9();
}

void __GLcmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_cmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_cmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_cmode;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcurorigin(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_curorigin;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_curorigin;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_curorigin;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdopup(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_dopup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_dopup;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_dopup;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpick(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_pick;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pick;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pick;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetgpos(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getgpos;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getgpos;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getgpos;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLreadpixels(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_readpixels;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_readpixels;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_readpixels;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLaddtop(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_addtop;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_addtop;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_addtop;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwintitle(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_wintitle;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_wintitle;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_wintitle;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetcolor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getcolor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getcolor;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetdepth(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getdepth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getdepth;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getdepth;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdeflfont(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_deflfont;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_deflfont;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_deflfont;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLviewport(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_viewport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_viewport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_viewport;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetdev(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getdev;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getdev;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getdev;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetminmax(void) {
    s32 (*var_t9)();

    var_t9 = gl_g_getminmax;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getminmax;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getminmax;
        }
    }
    return var_t9();
}

s32 __GLgethgram(void) {
    s32 (*var_t9)();

    var_t9 = gl_g_gethgram;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gethgram;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gethgram;
        }
    }
    return var_t9();
}

void __GLreadsource(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_readsource;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_readsource;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_readsource;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLnoise(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_noise;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_noise;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_noise;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_resetls(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gl_resetls;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_resetls;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_resetls;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_readscreen(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gl_readscreen;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_readscreen;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_readscreen;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLisobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_isobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_isobj;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_isobj;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetscrbox(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getscrbox;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getscrbox;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getscrbox;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLmapw2(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_mapw2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_mapw2;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_mapw2;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLreadRGB(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_readRGB;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_readRGB;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_readRGB;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLshaderange(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_shaderange;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_shaderange;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_shaderange;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgammaramp(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gammaramp;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gammaramp;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gammaramp;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLstrwid(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_strwid;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_strwid;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_strwid;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLobjdelete(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_objdelete;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_objdelete;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_objdelete;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetpattern(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getpattern;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getpattern;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getpattern;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlookat(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lookat;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lookat;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lookat;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsetshade(void) {
    void (*var_t9)();

    var_t9 = gl_g_setshade;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setshade;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setshade;
        }
    }
    var_t9();
}

void __GLfinish(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_finish;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_finish;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_finish;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpolarview(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_polarview;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_polarview;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_polarview;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgselect(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gselect;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gselect;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gselect;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLmaketag(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_maketag;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_maketag;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_maketag;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsubtexload(void) {
    void (*var_t9)();

    var_t9 = gl_g_subtexload;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_subtexload;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_subtexload;
        }
    }
    var_t9();
}

void __GLlstwid(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lstwid;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lstwid;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lstwid;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetsb(void) {
    s32 (*var_t9)();

    var_t9 = gl_g_getsb;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getsb;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getsb;
        }
    }
    return var_t9();
}

s32 __GLgetfont(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getfont;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getfont;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getfont;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetplanes(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getplanes;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getplanes;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getplanes;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcharst(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_charst;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_charst;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_charst;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLtexdef2d(void) {
    void (*var_t9)();

    var_t9 = gl_g_texdef2d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_texdef2d;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_texdef2d;
        }
    }
    var_t9();
}

void __GLsetmonitor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setmonitor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setmonitor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setmonitor;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLendfeedback(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_endfeedback;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endfeedback;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endfeedback;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpushviewport(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_pushviewport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pushviewport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pushviewport;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLrectcopy(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_rectcopy;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_rectcopy;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_rectcopy;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgconfig(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gconfig;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gconfig;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gconfig;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgRGBmask(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gRGBmask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gRGBmask;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gRGBmask;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLendpupmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_endpupmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endpupmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endpupmode;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLbgnsurface(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_bgnsurface;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_bgnsurface;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_bgnsurface;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetviewport(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getviewport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getviewport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getviewport;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwinpush(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winpush;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winpush;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winpush;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcyclemap(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_cyclemap;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_cyclemap;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_cyclemap;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLildraw(void) {
    void (*var_t9)();

    var_t9 = gl_g_ildraw;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_ildraw;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_ildraw;
        }
    }
    var_t9();
}

s32 __GLgetsm(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getsm;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getsm;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getsm;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLRGBrange(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_RGBrange;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_RGBrange;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_RGBrange;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsetcursor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setcursor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setcursor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setcursor;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetdescender(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getdescender;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getdescender;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getdescender;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLreaddisplay(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_readdisplay;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_readdisplay;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_readdisplay;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetcpos(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getcpos;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getcpos;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getcpos;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetmatrix(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getmatrix;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getmatrix;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getmatrix;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLoverlay(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_overlay;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_overlay;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_overlay;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsetpup(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setpup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setpup;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setpup;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetbackface(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getbackface;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getbackface;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getbackface;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLwinget(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winget;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winget;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winget;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlRGBrange(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lRGBrange;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lRGBrange;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lRGBrange;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLarcfi(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_arcfi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_arcfi;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_arcfi;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLreadcomponent(void) {
    void (*var_t9)();

    var_t9 = gl_g_readcomponent;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_readcomponent;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_readcomponent;
        }
    }
    var_t9();
}

void __GLgl_glx_link(void) {
    void (*var_t9)();

    var_t9 = gl_g_gl_glx_link;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_glx_link;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_glx_link;
        }
    }
    var_t9();
}

void __GLsinglebuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_singlebuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_singlebuffer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_singlebuffer;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLmakeobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_makeobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_makeobj;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_makeobj;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdevport(void) {
    void (*var_t9)();

    var_t9 = gl_g_devport;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_devport;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_devport;
        }
    }
    var_t9();
}

void __GLhgram(void) {
    void (*var_t9)();

    var_t9 = gl_g_hgram;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_hgram;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_hgram;
        }
    }
    var_t9();
}

void __GLtexdef3d(void) {
    void (*var_t9)();

    var_t9 = gl_g_texdef3d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_texdef3d;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_texdef3d;
        }
    }
    var_t9();
}

void __GLmssize(void) {
    void (*var_t9)();

    var_t9 = gl_g_mssize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_mssize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_mssize;
        }
    }
    var_t9();
}

void __GLdrawmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_drawmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_drawmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_drawmode;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetdisplaymode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getdisplaymode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getdisplaymode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getdisplaymode;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLarcfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_arcfs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_arcfs;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_arcfs;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpatch(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_patch;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_patch;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_patch;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_glx_unlink(void) {
    void (*var_t9)();

    var_t9 = gl_g_gl_glx_unlink;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_glx_unlink;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_glx_unlink;
        }
    }
    var_t9();
}

void __GLnurbssurface(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_nurbssurface;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_nurbssurface;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_nurbssurface;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLnewpup(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_newpup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_newpup;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_newpup;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwintit(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_wintit;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_wintit;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_wintit;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetheight(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getheight;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getheight;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getheight;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetbuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getbuffer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getbuffer;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdeltag(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_deltag;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_deltag;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_deltag;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpushattributes(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_pushattributes;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pushattributes;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pushattributes;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgettp(void) {
    s32 (*var_t9)();

    var_t9 = gl_g_gettp;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gettp;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gettp;
        }
    }
    return var_t9();
}

s32 __GLgetlstyle(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getlstyle;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getlstyle;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getlstyle;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLendcurve(void) {
    void (*var_t9)();

    var_t9 = gl_g_endcurve;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endcurve;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endcurve;
        }
    }
    var_t9();
}

void __GLcurstype(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_curstype;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_curstype;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_curstype;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLeditobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_editobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_editobj;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_editobj;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgRGBcolor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gRGBcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gRGBcolor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gRGBcolor;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLunqdevice(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_unqdevice;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_unqdevice;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_unqdevice;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLfreepup(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_freepup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_freepup;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_freepup;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLaddtopup(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_addtopup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_addtopup;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_addtopup;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLconvolve(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_convolve;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_convolve;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_convolve;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetscrmask(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getscrmask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getscrmask;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getscrmask;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwindow(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_window;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_window;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_window;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GListexloaded(void) {
    void (*var_t9)();

    var_t9 = gl_g_istexloaded;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_istexloaded;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_istexloaded;
        }
    }
    var_t9();
}

void __GLsmoothline(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_smoothline;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_smoothline;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_smoothline;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLnewtag(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_newtag;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_newtag;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_newtag;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcurson(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_curson;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_curson;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_curson;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLortho2(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_ortho2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_ortho2;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_ortho2;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLRGBcursor(void) {
    void (*var_t9)();

    var_t9 = gl_g_RGBcursor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_RGBcursor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_RGBcursor;
        }
    }
    var_t9();
}

void __GLgl_lrectproc(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gl_lrectproc;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_lrectproc;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_lrectproc;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_glx_winset(void) {
    void (*var_t9)();

    var_t9 = gl_g_gl_glx_winset;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_glx_winset;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_glx_winset;
        }
    }
    var_t9();
}

void __GLendpick(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_endpick;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endpick;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endpick;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLendtrim(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_endtrim;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endtrim;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endtrim;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetshade(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getshade;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getshade;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getshade;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgewrite(void) {
    void (*var_t9)();

    var_t9 = gl_g_gewrite;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gewrite;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gewrite;
        }
    }
    var_t9();
}

s32 __GLqgetfd(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_qgetfd;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_qgetfd;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_qgetfd;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLbgntrim(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_bgntrim;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_bgntrim;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_bgntrim;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetwritemask(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getwritemask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getwritemask;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getwritemask;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlrectwrite(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lrectwrite;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lrectwrite;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lrectwrite;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcircf(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_circf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_circf;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_circf;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcirci(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_circi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_circi;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_circi;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLnurbscurve(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_nurbscurve;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_nurbscurve;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_nurbscurve;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcursoff(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_cursoff;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_cursoff;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_cursoff;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdelobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_delobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_delobj;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_delobj;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLbgncurve(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_bgncurve;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_bgncurve;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_bgncurve;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLendfullscrn(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_endfullscrn;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_endfullscrn;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_endfullscrn;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsetnurbsproperty(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setnurbsproperty;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setnurbsproperty;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setnurbsproperty;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetsize(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getsize;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLmapcolor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_mapcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_mapcolor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_mapcolor;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdeflinestyle(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_deflinestyle;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_deflinestyle;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_deflinestyle;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpixeltransfer(void) {
    void (*var_t9)();

    var_t9 = gl_g_pixeltransfer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pixeltransfer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pixeltransfer;
        }
    }
    var_t9();
}

void __GLiconsize(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_iconsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_iconsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_iconsize;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLspclos(void) {
    void (*var_t9)();

    var_t9 = gl_g_spclos;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_spclos;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_spclos;
        }
    }
    var_t9();
}

void __GLgentag(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_gentag;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gentag;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gentag;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLmonobuffer(void) {
    void (*var_t9)();

    var_t9 = gl_g_monobuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_monobuffer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_monobuffer;
        }
    }
    var_t9();
}

void __GLwritepixels(void) {
    void (*var_t9)();

    var_t9 = gl_g_writepixels;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_writepixels;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_writepixels;
        }
    }
    var_t9();
}

void __GLcircs(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_circs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_circs;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_circs;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLstrwidth(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_strwidth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_strwidth;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_strwidth;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpupmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_pupmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pupmode;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pupmode;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdefpup(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_defpup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_defpup;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_defpup;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwinattach(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winattach;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winattach;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winattach;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdefrasterfont(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_defrasterfont;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_defrasterfont;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_defrasterfont;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetgconfig(void) {
    s32 (*var_t9)();

    var_t9 = gl_g_getgconfig;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getgconfig;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getgconfig;
        }
    }
    return var_t9();
}

void __GLacsize(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_acsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_acsize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_acsize;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgl_rectzoomoffset(void) {
    void (*var_t9)();

    var_t9 = gl_g_gl_rectzoomoffset;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_rectzoomoffset;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_rectzoomoffset;
        }
    }
    var_t9();
}

s32 __GLgetcursor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getcursor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getcursor;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getcursor;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLsetvaluator(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_setvaluator;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_setvaluator;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_setvaluator;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlrectread(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lrectread;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lrectread;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lrectread;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwindepth(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_windepth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_windepth;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_windepth;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLqdevice(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_qdevice;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_qdevice;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_qdevice;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLlstrwidth(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_lstrwidth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_lstrwidth;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_lstrwidth;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLpwlcurve(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_pwlcurve;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_pwlcurve;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_pwlcurve;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLilbuffer(void) {
    void (*var_t9)();

    var_t9 = gl_g_ilbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_ilbuffer;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_ilbuffer;
        }
    }
    var_t9();
}

void __GLswinopen(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_swinopen;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_swinopen;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_swinopen;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetorigin(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getorigin;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getorigin;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getorigin;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLwinposition(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_winposition;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_winposition;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_winposition;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLchunksize(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_chunksize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_chunksize;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_chunksize;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLcrv(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_crv;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_crv;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_crv;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetlwidth(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getlwidth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getlwidth;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getlwidth;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetnurbsproperty(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getnurbsproperty;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getnurbsproperty;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getnurbsproperty;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLdefpattern(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_defpattern;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_defpattern;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_defpattern;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLunderlay(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_underlay;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_underlay;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_underlay;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

s32 __GLgetmultisample(void) {
    s32 (*var_t9)();

    var_t9 = gl_g_getmultisample;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getmultisample;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getmultisample;
        }
    }
    return var_t9();
}

void __GLgl_ms_init_pixels(void) {
    void (*var_t9)();

    var_t9 = gl_g_gl_ms_init_pixels;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_gl_ms_init_pixels;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_gl_ms_init_pixels;
        }
    }
    var_t9();
}

s32 __GLgetmap(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 (*var_t9)(s64, s64, s64, s64);
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_getmap;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_getmap;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_getmap;
        }
    }
    return var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLblkqread(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_blkqread;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_blkqread;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_blkqread;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLgenobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void (*var_t9)(s64, s64, s64, s64);

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    if (gl_inMoveDraw != 0) {
        arg2 = var_a0;
        arg4 = var_a1;
        arg6 = var_a2;
        arg8 = var_a3;
        arg10 = M2C_ERROR(/* Read from unset register $a4 */);
        arg12 = M2C_ERROR(/* Read from unset register $a5 */);
        arg14 = M2C_ERROR(/* Read from unset register $a6 */);
        arg16 = M2C_ERROR(/* Read from unset register $a7 */);
        __iglooCloseMoveDrawFromTable();
        var_a0 = arg2;
        var_a1 = arg4;
        var_a2 = arg6;
        var_a3 = arg8;
    }
    var_t9 = gl_g_genobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_d_genobj;
        if (gl_dgl_table_is_remote == 0) {
            var_t9 = gl_g_genobj;
        }
    }
    var_t9(var_a0, var_a1, var_a2, var_a3);
}

void __GLnmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_nmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_nmode;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_nmode;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcmov2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_cmov2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_cmov2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_cmov2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt4s(void) {
    void (*var_t9)();

    var_t9 = gl_i_t4s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t4s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t4s;
        }
    }
    var_t9();
}

void __GLpnti(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pnti;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pnti;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pnti;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpntsmooth(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pntsmooth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pntsmooth;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pntsmooth;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpclos(void) {
    void (*var_t9)();

    var_t9 = gl_i_pclos;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pclos;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pclos;
        }
    }
    var_t9();
}

void __GLpolys(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polys;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polys;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polys;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolfi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polfi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polfi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polfi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLdepthcue(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_depthcue;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_depthcue;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_depthcue;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsboxfi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_sboxfi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_sboxfi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_sboxfi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLzclear(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_zclear;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_zclear;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_zclear;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpnts(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pnts;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pnts;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pnts;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLczclear(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_czclear;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_czclear;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_czclear;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLscrsubdivide(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_scrsubdivide;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_scrsubdivide;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_scrsubdivide;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbbox2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bbox2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bbox2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bbox2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcmov(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_cmov;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_cmov;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_cmov;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLzfunction(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_zfunction;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_zfunction;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_zfunction;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polfs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polfs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polfs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlinewidthf(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_linewidthf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_linewidthf;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_linewidthf;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpdr(void) {
    void (*var_t9)();

    var_t9 = gl_i_rpdr;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpdr;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpdr;
        }
    }
    var_t9();
}

void __GLrect(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rect;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rect;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rect;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsboxfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_sboxfs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_sboxfs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_sboxfs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLc3f(void) {
    void (*var_t9)();

    var_t9 = gl_i_c3f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_c3f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_c3f;
        }
    }
    var_t9();
}

void __GLsplf2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_splf2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_splf2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_splf2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmovei(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_movei;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_movei;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_movei;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpmv2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pmv2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pmv2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pmv2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLc3i(void) {
    void (*var_t9)();

    var_t9 = gl_i_c3i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_c3i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_c3i;
        }
    }
    var_t9();
}

void __GLrcrvn(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rcrvn;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rcrvn;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rcrvn;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlmbind(void) {
    void (*var_t9)();

    var_t9 = gl_i_lmbind;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_lmbind;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_lmbind;
        }
    }
    var_t9();
}

void __GLsetpattern(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_setpattern;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_setpattern;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_setpattern;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLdraw2(void) {
    void (*var_t9)();

    var_t9 = gl_i_draw2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_draw2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_draw2;
        }
    }
    var_t9();
}

void __GLrmv2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rmv2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rmv2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rmv2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsplf2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_splf2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_splf2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_splf2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbbox2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bbox2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bbox2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bbox2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcmovi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_cmovi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_cmovi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_cmovi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLendqstrip(void) {
    void (*var_t9)();

    var_t9 = gl_i_endqstrip;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_endqstrip;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_endqstrip;
        }
    }
    var_t9();
}

void __GLcurveit(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_curveit;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_curveit;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_curveit;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmoves(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_moves;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_moves;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_moves;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpmv2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pmv2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pmv2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pmv2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLc3s(void) {
    void (*var_t9)();

    var_t9 = gl_i_c3s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_c3s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_c3s;
        }
    }
    var_t9();
}

void __GLdraw2i(void) {
    void (*var_t9)();

    var_t9 = gl_i_draw2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_draw2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_draw2i;
        }
    }
    var_t9();
}

void __GLpixmodef(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pixmodef;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pixmodef;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pixmodef;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpmv2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rpmv2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpmv2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpmv2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLleftbuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_leftbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_leftbuffer;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_leftbuffer;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbbox2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bbox2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bbox2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bbox2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcmovs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_cmovs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_cmovs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_cmovs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpmv2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rpmv2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpmv2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpmv2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcharstr(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_charstr;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_charstr;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_charstr;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLdraw2s(void) {
    void (*var_t9)();

    var_t9 = gl_i_draw2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_draw2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_draw2s;
        }
    }
    var_t9();
}

void __GLpdr(void) {
    void (*var_t9)();

    var_t9 = gl_i_pdr;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pdr;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pdr;
        }
    }
    var_t9();
}

void __GLxfpt4i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpt4i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpt4i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpt4i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsplf(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_splf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_splf;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_splf;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv2d(void) {
    void (*var_t9)();

    var_t9 = gl_i_v2d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v2d;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v2d;
        }
    }
    var_t9();
}

void __GLrpmv2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rpmv2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpmv2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpmv2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolf2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polf2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polf2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polf2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLdisplacepolygon(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_displacepolygon;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_displacepolygon;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_displacepolygon;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmove(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_move;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_move;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_move;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpmv2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pmv2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pmv2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pmv2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv2f(void) {
    void (*var_t9)();

    var_t9 = gl_i_v2f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v2f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v2f;
        }
    }
    var_t9();
}

void __GLrmv(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rmv;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rmv;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rmv;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLzsource(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_zsource;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_zsource;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_zsource;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv2i(void) {
    void (*var_t9)();

    var_t9 = gl_i_v2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v2i;
        }
    }
    var_t9();
}

void __GLc4f(void) {
    void (*var_t9)();

    var_t9 = gl_i_c4f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_c4f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_c4f;
        }
    }
    var_t9();
}

void __GLswaptmesh(void) {
    void (*var_t9)();

    var_t9 = gl_i_swaptmesh;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_swaptmesh;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_swaptmesh;
        }
    }
    var_t9();
}

void __GLc4i(void) {
    void (*var_t9)();

    var_t9 = gl_i_c4i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_c4i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_c4i;
        }
    }
    var_t9();
}

void __GLswapbuffers(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_swapbuffers;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_swapbuffers;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_swapbuffers;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLscrbox(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_scrbox;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_scrbox;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_scrbox;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpt4s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpt4s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpt4s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpt4s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolf2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polf2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polf2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polf2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrdr2(void) {
    void (*var_t9)();

    var_t9 = gl_i_rdr2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rdr2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rdr2;
        }
    }
    var_t9();
}

void __GLstencil(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_stencil;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_stencil;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_stencil;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpatchcurves(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_patchcurves;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_patchcurves;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_patchcurves;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpdr2i(void) {
    void (*var_t9)();

    var_t9 = gl_i_pdr2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pdr2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pdr2i;
        }
    }
    var_t9();
}

void __GLpntsizef(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pntsizef;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pntsizef;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pntsizef;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpntsize(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pntsize;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pntsize;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pntsize;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv2s(void) {
    void (*var_t9)();

    var_t9 = gl_i_v2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v2s;
        }
    }
    var_t9();
}

void __GLendpolygon(void) {
    void (*var_t9)();

    var_t9 = gl_i_endpolygon;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_endpolygon;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_endpolygon;
        }
    }
    var_t9();
}

void __GLfrontbuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_frontbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_frontbuffer;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_frontbuffer;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLc4s(void) {
    void (*var_t9)();

    var_t9 = gl_i_c4s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_c4s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_c4s;
        }
    }
    var_t9();
}

void __GLrmv2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rmv2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rmv2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rmv2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlinewidth(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_linewidth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_linewidth;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_linewidth;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpopmatrix(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_popmatrix;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_popmatrix;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_popmatrix;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpdr2(void) {
    void (*var_t9)();

    var_t9 = gl_i_rpdr2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpdr2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpdr2;
        }
    }
    var_t9();
}

void __GLpatchbasis(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_patchbasis;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_patchbasis;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_patchbasis;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcurvebasis(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_curvebasis;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_curvebasis;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_curvebasis;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpdr2s(void) {
    void (*var_t9)();

    var_t9 = gl_i_pdr2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pdr2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pdr2s;
        }
    }
    var_t9();
}

void __GLendclosedline(void) {
    void (*var_t9)();

    var_t9 = gl_i_endclosedline;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_endclosedline;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_endclosedline;
        }
    }
    var_t9();
}

void __GLrpdr2i(void) {
    void (*var_t9)();

    var_t9 = gl_i_rpdr2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpdr2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpdr2i;
        }
    }
    var_t9();
}

void __GLrmv2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rmv2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rmv2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rmv2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpdr2(void) {
    void (*var_t9)();

    var_t9 = gl_i_pdr2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pdr2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pdr2;
        }
    }
    var_t9();
}

void __GLfrontface(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_frontface;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_frontface;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_frontface;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLtranslate(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_translate;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_translate;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_translate;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv3d(void) {
    void (*var_t9)();

    var_t9 = gl_i_v3d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v3d;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v3d;
        }
    }
    var_t9();
}

void __GLnormal(void) {
    void (*var_t9)();

    var_t9 = gl_i_normal;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_normal;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_normal;
        }
    }
    var_t9();
}

void __GLfont(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_font;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_font;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_font;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLloadmatrix(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_loadmatrix;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_loadmatrix;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_loadmatrix;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_mmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_mmode;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_mmode;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpt2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpt2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpt2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpt2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLtexgen(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_texgen;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_texgen;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_texgen;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv3f(void) {
    void (*var_t9)();

    var_t9 = gl_i_v3f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v3f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v3f;
        }
    }
    var_t9();
}

void __GLmsmask(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_msmask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_msmask;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_msmask;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpt4(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpt4;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpt4;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpt4;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsetlinestyle(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_setlinestyle;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_setlinestyle;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_setlinestyle;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrightbuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rightbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rightbuffer;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rightbuffer;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv3i(void) {
    void (*var_t9)();

    var_t9 = gl_i_v3i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v3i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v3i;
        }
    }
    var_t9();
}

void __GLpopname(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_popname;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_popname;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_popname;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLendpoint(void) {
    void (*var_t9)();

    var_t9 = gl_i_endpoint;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_endpoint;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_endpoint;
        }
    }
    var_t9();
}

void __GLrpdr2s(void) {
    void (*var_t9)();

    var_t9 = gl_i_rpdr2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpdr2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpdr2s;
        }
    }
    var_t9();
}

void __GLdrawi(void) {
    void (*var_t9)();

    var_t9 = gl_i_drawi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_drawi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_drawi;
        }
    }
    var_t9();
}

void __GLendtmesh(void) {
    void (*var_t9)();

    var_t9 = gl_i_endtmesh;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_endtmesh;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_endtmesh;
        }
    }
    var_t9();
}

void __GLpatchprecision(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_patchprecision;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_patchprecision;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_patchprecision;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrmvi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rmvi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rmvi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rmvi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrectfi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rectfi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rectfi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rectfi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLscale(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_scale;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_scale;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_scale;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLshademodel(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_shademodel;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_shademodel;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_shademodel;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbackface(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_backface;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_backface;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_backface;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpnt2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pnt2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pnt2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pnt2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv3s(void) {
    void (*var_t9)();

    var_t9 = gl_i_v3s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v3s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v3s;
        }
    }
    var_t9();
}

void __GLlcharstr(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_lcharstr;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_lcharstr;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_lcharstr;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcurveprecision(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_curveprecision;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_curveprecision;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_curveprecision;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLdraws(void) {
    void (*var_t9)();

    var_t9 = gl_i_draws;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_draws;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_draws;
        }
    }
    var_t9();
}

void __GLrmvs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rmvs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rmvs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rmvs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLblendfunction(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_blendfunction;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_blendfunction;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_blendfunction;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbgnpolygon(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bgnpolygon;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bgnpolygon;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bgnpolygon;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrectfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rectfs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rectfs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rectfs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmultmatrix(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_multmatrix;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_multmatrix;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_multmatrix;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpmvi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rpmvi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpmvi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpmvi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpassthrough(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_passthrough;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_passthrough;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_passthrough;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLRGBcolor(void) {
    void (*var_t9)();

    var_t9 = gl_i_RGBcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_RGBcolor;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_RGBcolor;
        }
    }
    var_t9();
}

void __GLrpmv(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rpmv;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpmv;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpmv;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbackbuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_backbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_backbuffer;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_backbuffer;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpnt2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pnt2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pnt2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pnt2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrdr2i(void) {
    void (*var_t9)();

    var_t9 = gl_i_rdr2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rdr2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rdr2i;
        }
    }
    var_t9();
}

void __GLmsalpha(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_msalpha;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_msalpha;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_msalpha;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmssample(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_mssample;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_mssample;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_mssample;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsbox(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_sbox;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_sbox;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_sbox;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLswapinterval(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_swapinterval;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_swapinterval;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_swapinterval;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpmvi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pmvi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pmvi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pmvi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsplf2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_splf2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_splf2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_splf2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpoly2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_poly2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_poly2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_poly2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpmvs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rpmvs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpmvs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpmvs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv4d(void) {
    void (*var_t9)();

    var_t9 = gl_i_v4d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v4d;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v4d;
        }
    }
    var_t9();
}

void __GLlogicop(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_logicop;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_logicop;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_logicop;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbgnpoint(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bgnpoint;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bgnpoint;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bgnpoint;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrot(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rot;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rot;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rot;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLv4f(void) {
    void (*var_t9)();

    var_t9 = gl_i_v4f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v4f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v4f;
        }
    }
    var_t9();
}

void __GLbgntmesh(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bgntmesh;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bgntmesh;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bgntmesh;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolf(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polf;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polf;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrdri(void) {
    void (*var_t9)();

    var_t9 = gl_i_rdri;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rdri;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rdri;
        }
    }
    var_t9();
}

void __GLrdr2s(void) {
    void (*var_t9)();

    var_t9 = gl_i_rdr2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rdr2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rdr2s;
        }
    }
    var_t9();
}

void __GLpmvs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pmvs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pmvs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pmvs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcolorf(void) {
    void (*var_t9)();

    var_t9 = gl_i_colorf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_colorf;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_colorf;
        }
    }
    var_t9();
}

void __GLv4i(void) {
    void (*var_t9)();

    var_t9 = gl_i_v4i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v4i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v4i;
        }
    }
    var_t9();
}

void __GLrotate(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rotate;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rotate;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rotate;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLwritemask(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_writemask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_writemask;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_writemask;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpoly2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_poly2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_poly2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_poly2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLendline(void) {
    void (*var_t9)();

    var_t9 = gl_i_endline;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_endline;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_endline;
        }
    }
    var_t9();
}

void __GLswritemask(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_swritemask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_swritemask;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_swritemask;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolysmooth(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polysmooth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polysmooth;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polysmooth;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlmcolor(void) {
    void (*var_t9)();

    var_t9 = gl_i_lmcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_lmcolor;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_lmcolor;
        }
    }
    var_t9();
}

void __GLrectf(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rectf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rectf;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rectf;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcolor(void) {
    void (*var_t9)();

    var_t9 = gl_i_color;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_color;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_color;
        }
    }
    var_t9();
}

void __GLrdrs(void) {
    void (*var_t9)();

    var_t9 = gl_i_rdrs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rdrs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rdrs;
        }
    }
    var_t9();
}

void __GLtlutbind(void) {
    void (*var_t9)();

    var_t9 = gl_i_tlutbind;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_tlutbind;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_tlutbind;
        }
    }
    var_t9();
}

void __GLv4s(void) {
    void (*var_t9)();

    var_t9 = gl_i_v4s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_v4s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_v4s;
        }
    }
    var_t9();
}

void __GLbgnline(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bgnline;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bgnline;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bgnline;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpdri(void) {
    void (*var_t9)();

    var_t9 = gl_i_rpdri;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpdri;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpdri;
        }
    }
    var_t9();
}

void __GLrecti(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_recti;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_recti;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_recti;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt2d(void) {
    void (*var_t9)();

    var_t9 = gl_i_t2d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t2d;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t2d;
        }
    }
    var_t9();
}

void __GLsboxf(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_sboxf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_sboxf;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_sboxf;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLresetls(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_resetls;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_resetls;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_resetls;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolymode(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polymode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polymode;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polymode;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt2f(void) {
    void (*var_t9)();

    var_t9 = gl_i_t2f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t2f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t2f;
        }
    }
    var_t9();
}

void __GLsboxi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_sboxi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_sboxi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_sboxi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpmv(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pmv;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pmv;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pmv;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLblendcolor(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_blendcolor;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_blendcolor;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_blendcolor;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpixmode(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pixmode;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pixmode;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pixmode;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpt(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpt;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpt;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpt;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt2i(void) {
    void (*var_t9)();

    var_t9 = gl_i_t2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t2i;
        }
    }
    var_t9();
}

void __GLpdri(void) {
    void (*var_t9)();

    var_t9 = gl_i_pdri;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pdri;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pdri;
        }
    }
    var_t9();
}

void __GLgl_scrrect(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_gl_scrrect;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_gl_scrrect;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_gl_scrrect;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpoly(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_poly;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_poly;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_poly;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpushname(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pushname;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pushname;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pushname;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLRGBwritemask(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_RGBwritemask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_RGBwritemask;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_RGBwritemask;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrects(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rects;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rects;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rects;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpti(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpti;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpti;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpti;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpdrs(void) {
    void (*var_t9)();

    var_t9 = gl_i_rpdrs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpdrs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpdrs;
        }
    }
    var_t9();
}

void __GLafunction(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_afunction;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_afunction;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_afunction;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLfogvertex(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_fogvertex;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_fogvertex;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_fogvertex;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmultisample(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_multisample;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_multisample;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_multisample;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmswapbuffers(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_mswapbuffers;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_mswapbuffers;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_mswapbuffers;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsboxs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_sboxs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_sboxs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_sboxs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt2s(void) {
    void (*var_t9)();

    var_t9 = gl_i_t2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t2s;
        }
    }
    var_t9();
}

void __GLpdrs(void) {
    void (*var_t9)();

    var_t9 = gl_i_pdrs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pdrs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pdrs;
        }
    }
    var_t9();
}

void __GLzdraw(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_zdraw;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_zdraw;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_zdraw;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrpatch(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rpatch;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rpatch;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rpatch;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpoly2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_poly2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_poly2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_poly2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLwmpack(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_wmpack;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_wmpack;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_wmpack;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmove2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_move2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_move2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_move2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpts(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpts;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpts;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpts;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpnt2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pnt2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pnt2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pnt2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLdither(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_dither;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_dither;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_dither;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsubpixel(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_subpixel;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_subpixel;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_subpixel;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLacbuf(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_acbuf;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_acbuf;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_acbuf;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLbgnclosedline(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bgnclosedline;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bgnclosedline;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bgnclosedline;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolf2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polf2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polf2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polf2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLtevbind(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_tevbind;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_tevbind;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_tevbind;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLsclear(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_sclear;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_sclear;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_sclear;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmove2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_move2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_move2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_move2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpushmatrix(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pushmatrix;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pushmatrix;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pushmatrix;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt3d(void) {
    void (*var_t9)();

    var_t9 = gl_i_t3d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t3d;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t3d;
        }
    }
    var_t9();
}

void __GLpnt(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_pnt;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_pnt;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_pnt;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt3f(void) {
    void (*var_t9)();

    var_t9 = gl_i_t3f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t3f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t3f;
        }
    }
    var_t9();
}

void __GLconcave(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_concave;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_concave;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_concave;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcallobj(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_callobj;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_callobj;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_callobj;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt3i(void) {
    void (*var_t9)();

    var_t9 = gl_i_t3i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t3i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t3i;
        }
    }
    var_t9();
}

void __GLsplfi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_splfi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_splfi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_splfi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLclipplane(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_clipplane;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_clipplane;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_clipplane;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcpack(void) {
    void (*var_t9)();

    var_t9 = gl_i_cpack;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_cpack;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_cpack;
        }
    }
    var_t9();
}

void __GLrcrv(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_rcrv;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rcrv;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rcrv;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLrdr(void) {
    void (*var_t9)();

    var_t9 = gl_i_rdr;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_rdr;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_rdr;
        }
    }
    var_t9();
}

void __GLmove2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_move2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_move2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_move2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLmspattern(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_mspattern;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_mspattern;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_mspattern;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlinesmooth(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_linesmooth;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_linesmooth;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_linesmooth;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt3s(void) {
    void (*var_t9)();

    var_t9 = gl_i_t3s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t3s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t3s;
        }
    }
    var_t9();
}

void __GLsplfs(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_splfs;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_splfs;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_splfs;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlchstr(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_lchstr;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_lchstr;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_lchstr;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLinitnames(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_initnames;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_initnames;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_initnames;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcmov2(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_cmov2;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_cmov2;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_cmov2;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlsbackup(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_lsbackup;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_lsbackup;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_lsbackup;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLlsrepeat(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_lsrepeat;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_lsrepeat;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_lsrepeat;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLdraw(void) {
    void (*var_t9)();

    var_t9 = gl_i_draw;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_draw;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_draw;
        }
    }
    var_t9();
}

void __GLzwritemask(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_zwritemask;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_zwritemask;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_zwritemask;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpt2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpt2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpt2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpt2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLzbuffer(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_zbuffer;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_zbuffer;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_zbuffer;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt4d(void) {
    void (*var_t9)();

    var_t9 = gl_i_t4d;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t4d;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t4d;
        }
    }
    var_t9();
}

void __GLclear(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_clear;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_clear;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_clear;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt4f(void) {
    void (*var_t9)();

    var_t9 = gl_i_t4f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t4f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t4f;
        }
    }
    var_t9();
}

void __GLbgnqstrip(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_bgnqstrip;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_bgnqstrip;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_bgnqstrip;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLcmov2i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_cmov2i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_cmov2i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_cmov2i;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLt4i(void) {
    void (*var_t9)();

    var_t9 = gl_i_t4i;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_t4i;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_t4i;
        }
    }
    var_t9();
}

void __GLn3f(void) {
    void (*var_t9)();

    var_t9 = gl_i_n3f;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_n3f;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_n3f;
        }
    }
    var_t9();
}

void __GLloadname(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_loadname;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_loadname;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_loadname;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLxfpt2s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_xfpt2s;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_xfpt2s;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_xfpt2s;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLtexbind(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_texbind;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_texbind;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_texbind;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}

void __GLpolyi(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    void (*var_t9)(s64, s64, s64, s64);

    if (gl_inMoveDraw != 0) {
        sp8 = arg0;
        sp10 = arg1;
        sp18 = arg2;
        sp20 = arg3;
        sp28 = M2C_ERROR(/* Read from unset register $a4 */);
        sp30 = M2C_ERROR(/* Read from unset register $a5 */);
        sp38 = M2C_ERROR(/* Read from unset register $a6 */);
        sp40 = M2C_ERROR(/* Read from unset register $a7 */);
        sp50 = M2C_ERROR(/* Read from unset register $t0 */);
        __iglooCloseMoveDrawFromTable();
    }
    var_t9 = gl_i_polyi;
    if (gl_immediate_mode == 0) {
        var_t9 = gl_c_polyi;
        if (gl_openobjhdr == 0) {
            var_t9 = gl_d_polyi;
        }
    }
    var_t9(arg0, arg1, arg2, arg3);
}
