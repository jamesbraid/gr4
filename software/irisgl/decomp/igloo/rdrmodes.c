? glXGetVideoSyncSGI(s32 *);                        /* extern */
? glXWaitVideoSyncSGI(s32, s32, void *);            /* extern */
extern void *gl_zrangemap;
extern ? sub_0f030000;

void gl_g_readcomponent(void) {

}

void gl_g_glcompat(s32 arg0, void *arg1, s32 arg2) {
    s64 sp8;
    s32 sp4;
    s32 var_a2;

    var_a2 = arg2;
    if (arg0 >= 0x3ED) {
        var_a2 = arg0 < 0x41A;
        if (arg0 >= 0x3EE) {
            if (var_a2 == 0) {
                if (arg0 >= 0x41B) {
                    if (arg0 >= 0x7D0) {
                        var_a2 = arg0 < 0x7D2;
                        if (arg0 >= 0x7D1) {
                            if (var_a2 == 0) {
                                if (arg0 < 0x7D3) {

                                } else {
                                    goto block_18;
                                }
                            } else if (arg0 == 0x7D1) {

                            } else {
                                goto block_18;
                            }
                        }
                    } else if (arg0 >= 0x41C) {
                        if (arg0 < 0x41D) {

                        } else {
                            goto block_18;
                        }
                    } else {
                        var_a2 = 0x41B;
                        if (arg0 == 0x41B) {

                        } else {
                            goto block_18;
                        }
                    }
                }
            } else if (arg0 >= 0x3F0) {
                if (arg0 >= 0x3F1) {
                    var_a2 = arg0 < 0x3FB;
                    if (arg0 >= 0x3FA) {
                        if (var_a2 != 0) {

                        } else {
                            goto block_18;
                        }
                    } else if (arg0 == 0x3F6) {

                    } else {
                        goto block_18;
                    }
                }
            } else {
                var_a2 = arg0 < 0x3EF;
                if (var_a2 == 0) {
                    if (arg0 < 0x3F0) {

                    } else {
                        goto block_18;
                    }
                } else if (arg0 == 0x3EE) {

                } else {
                    goto block_18;
                }
            }
        }
    } else if (arg0 >= 0xA) {
        var_a2 = arg0 < 0x3EA;
        if (arg0 >= 0xB) {
            if (var_a2 == 0) {
                if (arg0 >= 0x3EB) {
                    if (arg0 >= 0x3EC) {
                        if (arg0 < 0x3ED) {

                        } else {
                            goto block_18;
                        }
                    } else if (arg0 == 0x3EB) {

                    } else {
                        goto block_18;
                    }
                }
            } else if (arg0 >= 0x3E9) {
                if (arg0 < 0x3EA) {

                } else {
                    goto block_18;
                }
            } else {
                var_a2 = 0x3E8;
                if (arg0 == 0x3E8) {

                } else {
                    goto block_18;
                }
            }
        } else {
            glXWaitVideoSyncSGI(arg1->unk0, arg1->unk4, sp);
        }
    } else if (arg0 > 0) {
        if (arg0 >= 2) {
            if (arg0 >= 9) {
                if (arg0 < 0xA) {
                    sp8 = (s64) arg1;
                    glXGetVideoSyncSGI(&sp4);
                    *sp8 = sp4;
                } else {
                    goto block_17;
                }
            } else {
                var_a2 = 8;
                if (arg0 != 8) {
                    goto block_17;
                }
            }
        } else {
            gl_zrangemap = arg1;
        }
    } else if (arg0 >= 0) {
        if (arg0 <= 0) {

        } else {
            goto block_18;
        }
    } else if (arg0 == 0xCACACACA) {
        gl_iglooUseTexObj = (s32) arg1;
    } else {
block_17:
block_18:
        gl_ws_compat(arg1, var_a2);
    }
}

void gl_dither(s64 arg0) {
    gl_wstatep->modelviewStack.stack[1][3][3] = (bitwise f32) arg0;
    if (arg0 != 0) {
        if (arg0 == 1) {
            __iglooSetEnable(0xBD0, 1);
        }
    } else {
        __iglooSetEnable(0xBD0, 0);
    }
}

void gl_i_dither(s64 arg0) {
    if (gl_inMoveDraw != 0) {
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_dither(arg0);
}

void gl_c_dither(s32 arg0) {
    if (saved_reg_gp->unk-4F7C == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5FF8);
        saved_reg_gp->unk-4F7C = 1;
    }
    gl_compile(4, sp);
}

void gl_n_dither(s32 *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_dither((s64) *arg0);
}
