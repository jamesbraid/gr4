? glLightModelfv(?, s32);                           /* extern */
? glLightModeli(?, u8);                             /* extern */
? glLightfv(s32, ?, s64);                           /* extern */
? glLighti(s32, ?, s32);                            /* extern */
extern ? gl_lightingmodeltab;
extern ? gl_lighttab;
extern ? gl_materialtab;
extern ? sub_0f020000;

void gl_init_material(void *arg0) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    void *temp_at;

    arg0->unk48 = 0;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF57E24;
    temp_f2 = temp_at->unk-4C94;
    temp_f1 = temp_at->unk-4CCC;
    temp_f3 = temp_at->unk-4C90;
    arg0->unk50 = (f32) temp_at->unk-4C8C;
    arg0->unk44 = temp_f1;
    arg0->unk34 = temp_f1;
    arg0->unk30 = temp_f3;
    arg0->unk2C = temp_f3;
    arg0->unk28 = temp_f3;
    arg0->unk24 = temp_f1;
    arg0->unk20 = temp_f2;
    arg0->unk1C = temp_f2;
    arg0->unk54 = (f32) temp_at->unk-4CA8;
    temp_f0 = temp_at->unk-4CD0;
    arg0->unk18 = temp_f2;
    arg0->unk14 = temp_f1;
    arg0->unk4C = temp_f0;
    arg0->unk40 = temp_f0;
    arg0->unk3C = temp_f0;
    arg0->unk38 = temp_f0;
    arg0->unk10 = temp_f0;
    arg0->unkC = temp_f0;
    arg0->unk8 = temp_f0;
}

void gl_newmaterial(void) {
    gl_init_material(gl_malloc(0x58, saved_reg_gp - 0x39A8));
}

void gl_init_light(void *arg0) {
    f32 temp_f0;
    f32 temp_f1;
    void *temp_at;

    arg0->unk48 = 0;
    arg0->unk4C = 0xB4;
    arg0->unk10 = 1;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF57D58;
    temp_f0 = temp_at->unk-4CD0;
    temp_f1 = temp_at->unk-4CCC;
    arg0->unk58 = (f32) temp_at->unk-4CC4;
    arg0->unk54 = temp_f0;
    arg0->unk50 = temp_f0;
    arg0->unk3C = (f64) temp_f0;
    arg0->unk38 = temp_f0;
    arg0->unk30 = (f64) temp_f0;
    arg0->unk2C = temp_f1;
    arg0->unk28 = temp_f1;
    arg0->unk24 = temp_f1;
    arg0->unk20 = temp_f1;
    arg0->unk1C = temp_f0;
    arg0->unk18 = temp_f0;
    arg0->unk14 = temp_f0;
}

void gl_newlight(void) {
    void *temp_v0;

    temp_v0 = gl_malloc(0x64, saved_reg_gp - 0x39A8);
    temp_v0->unk60 = 0;
    temp_v0->unk8 = 0;
    temp_v0->unkC = -1;
    gl_init_light(temp_v0);
}

void gl_init_lightingmodel(void *arg0) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    void *temp_at;

    arg0->unk9 = 0;
    arg0->unk8 = 0;
    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF57C88;
    temp_f2 = temp_at->unk-4CD0;
    temp_f0 = temp_at->unk-4C94;
    temp_f1 = temp_at->unk-4CCC;
    arg0->unk14 = temp_f2;
    arg0->unk10 = temp_f2;
    arg0->unkC = temp_f1;
    arg0->unk24 = temp_f1;
    arg0->unk20 = temp_f0;
    arg0->unk1C = temp_f0;
    arg0->unk18 = temp_f0;
}

void gl_newlightingmodel(void) {
    gl_init_lightingmodel(gl_malloc(0x28, saved_reg_gp - 0x39A8));
}

void resetOpenGLMaterial(s32 arg0, void *arg1, s32 arg2) {
    s64 sp38;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 var_v1;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        if (arg2 & 8) {
            OglMaterialWrapperfv(arg0, 0x1200, arg1 + 0x18);
            var_ra = sp38;
        }
        if (arg2 & 0x90) {
            sp38 = var_ra;
            OglMaterialWrapperfv(arg0, 0x1201, arg1 + 0x28);
        }
        temp_a3 = arg2 & 4;
        if (temp_a3 != 0) {
            sp38 = var_ra;
            OglMaterialWrapperfv(arg0, 0x1600, arg1 + 8, temp_a3);
        }
        var_v1 = arg2 & 0x40;
        if (arg2 & 0x20) {
            sp38 = var_ra;
            if (arg1->unk48 != 0) {
                OglMaterialWrapperfv(arg0, 0x1202, arg1 + 0x38);
            } else {
                spC = 1.0f;
                sp0 = 0.0f;
                sp4 = 0.0f;
                sp8 = 0.0f;
                OglMaterialWrapperfv(arg0, 0x1202, sp);
            }
            goto block_10;
        }
    } else {
        temp_a3_2 = arg2 & 0x100;
        var_v1 = arg2 & 0x40;
        if (temp_a3_2 != 0) {
            sp0 = arg1->unk4C;
            sp4 = arg1->unk50;
            sp8 = arg1->unk54;
            OglMaterialWrapperfv(arg0, 0x1603, sp, temp_a3_2);
block_10:
            var_ra = sp38;
            var_v1 = arg2 & 0x40;
        }
    }
    if (var_v1 != 0) {
        sp38 = var_ra;
        sp10 = (f32) arg1->unk48;
        OglMaterialWrapperfv(arg0, 0x1601, &sp10);
    }
}

void resetOpenGLLight(void *arg0, s32 arg1, s32 arg2) {
    s64 sp28;
    s64 sp0;
    s32 temp_s0;
    s64 temp_a2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s0 = arg1 + 0x4000;
    if (arg2 & 8) {
        glLightfv(temp_s0, 0x1200, arg0 + 0x14);
        var_ra = sp28;
    }
    if (arg2 & 0x30) {
        sp28 = var_ra;
        temp_a2 = arg0 + 0x24;
        sp0 = temp_a2;
        glLightfv(temp_s0, 0x1201, temp_a2);
        glLightfv(temp_s0, 0x1202, temp_a2);
    }
    if (arg2 & 0x400) {
        sp28 = var_ra;
        glLightfv(temp_s0, 0x1204, arg0 + 0x50);
    }
    if (!(arg2 & 0x200)) {
        sp28 = var_ra;
        if (arg2 & 2) {
            goto block_9;
        }
    } else {
block_9:
        sp28 = var_ra;
        glLightfv(temp_s0, 0x1203, arg0 + 0x34);
        if (arg0->unk10 == 0) {
            glLighti(temp_s0, 0x1206, arg0->unk4C);
            glLighti(temp_s0, 0x1205, arg0->unk48);
        } else {
            glLighti(temp_s0, 0x1206, 0xB4);
            glLighti(temp_s0, 0x1205, 0);
            __iglooSetEnable(temp_s0, 1);
        }
    }
    __iglooSetEnable(temp_s0, 1);
}

void resetOpenGLModel(void *arg0) {
    glLightModelfv(0xB53, arg0 + 0x18);
    glLightModeli(0xB51, arg0->unk8);
    glLightModeli(0xB52, arg0->unk9);
}

void gl_lmdef_material(void *arg0, f32 *arg1) {
    s64 sp30;
    f32 *var_s4;
    f32 temp_a3;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f5;
    gl_wstate *temp_s2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_s0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_s0 = 0;
    temp_s2 = gl_wstatep;
    if (arg1 != NULL) {
        if (*arg1 != 0.0f) {
            var_a0 = (s32) (*arg1 + 0.5f);
            var_s4 = arg1 + 4;
            if (var_a0 != 0) {
loop_6:
                switch (var_a0) {
                default:
                    gl_ErrorHandler(0x16, 2, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF5786C) - 0x39A8, &jtbl_0f023548);
                    break;
                case 1:
                    arg0->unk8 = (f32) var_s4->unk0;
                    arg0->unkC = (f32) var_s4->unk4;
                    var_s4 += 0xC;
                    var_s0 |= 4;
                    arg0->unk10 = (f32) var_s4->unk-4;
                    break;
                case 2:
                    arg0->unk18 = (f32) var_s4->unk0;
                    arg0->unk1C = (f32) var_s4->unk4;
                    var_s4 += 0xC;
                    var_s0 |= 8;
                    arg0->unk20 = (f32) var_s4->unk-4;
                    break;
                case 3:
                    arg0->unk28 = (f32) var_s4->unk0;
                    arg0->unk2C = (f32) var_s4->unk4;
                    var_s4 += 0xC;
                    var_s0 |= 0x10;
                    arg0->unk30 = (f32) var_s4->unk-4;
                    break;
                case 4:
                    arg0->unk38 = (f32) var_s4->unk0;
                    arg0->unk3C = (f32) var_s4->unk4;
                    var_s4 += 0xC;
                    var_s0 |= 0x20;
                    arg0->unk40 = (f32) var_s4->unk-4;
                    break;
                case 5:
                    var_a0_2 = (s32) var_s4->unk0;
                    var_s4 += 4;
                    arg0->unk48 = var_a0_2;
                    if (var_a0_2 < 0) {
                        var_a0_2 = 0;
                        arg0->unk48 = 0;
                    }
                    if (var_a0_2 >= 0x81) {
                        arg0->unk48 = 0x80;
                    }
                    var_s0 |= 0x40;
                    break;
                case 7:
                    var_s4 += 4;
                    var_s0 |= 0x80;
                    arg0->unk34 = (f32) var_s4->unk-4;
                    break;
                case 6:
                    temp_f2 = var_s4->unk0;
                    arg0->unk4C = temp_f2;
                    temp_f5 = var_s4->unk4;
                    var_s4 += 0xC;
                    arg0->unk50 = temp_f5;
                    temp_f4 = var_s4->unk-4;
                    var_s0 |= 0x100;
                    arg0->unk54 = temp_f4;
                    if ((temp_f5 < temp_f2) || (temp_f4 < temp_f5)) {
                        gl_ErrorHandler(0x5B, 2, &sub_0f020000 + 0x3568, &jtbl_0f023548);
                    }
                    break;
                }
                var_a0 = (s32) (*var_s4 + 0.5f);
                var_s4 += 4;
                if (var_a0 != 0) {
                    goto loop_6;
                }
                var_ra = sp30;
            }
        } else {
            goto block_27;
        }
    } else {
block_27:
        gl_init_material(arg0);
        var_ra = sp30;
        var_s0 = 0xFFFFFF;
    }
    if ((bitwise s32) temp_s2->modelviewStack.stack[2][0][3] == arg0) {
        sp30 = var_ra;
        if (temp_s2->unkBDC != 0) {
            resetOpenGLMaterial(0x404, arg0, var_s0);
        } else {
            resetOpenGLMaterial(0x408, arg0, var_s0);
        }
    } else {
        temp_a3 = temp_s2->modelviewStack.stack[2][1][0];
        if ((bitwise s32) temp_a3 == arg0) {
            sp30 = var_ra;
            resetOpenGLMaterial(0x405, arg0, var_s0, temp_a3);
        }
    }
}

void gl_lmdef_light(void *arg0, f32 *arg1) {
    s64 sp50;
    f32 *var_s0;
    f32 *var_s0_2;
    f32 temp_a0;
    f32 temp_a0_2;
    f32 temp_a0_3;
    f32 temp_a0_4;
    f32 temp_a0_5;
    f32 temp_a0_6;
    f32 temp_a0_7;
    f32 temp_a0_8;
    f32 temp_f2;
    gl_wstate *temp_s4;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_s3;
    s32 var_v0;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_s3 = 0;
    temp_s4 = gl_wstatep;
    if (arg1 != NULL) {
        if (*arg1 != 0.0f) {
            var_a0 = (s32) (*arg1 + 0.5f);
            var_s0 = arg1 + 4;
            if (var_a0 != 0) {
loop_6:
                if (var_a0 == 2) {
                    arg0->unk14 = (f32) var_s0->unk0;
                    arg0->unk18 = (f32) var_s0->unk4;
                    var_s0 += 0xC;
                    var_s3 |= 8;
                    arg0->unk1C = (f32) var_s0->unk-4;
                } else if (var_a0 == 0x65) {
                    arg0->unk24 = (f32) var_s0->unk0;
                    arg0->unk28 = (f32) var_s0->unk4;
                    var_s0 += 0xC;
                    var_s3 |= 0x30;
                    arg0->unk2C = (f32) var_s0->unk-4;
                } else {
                    var_v0 = 1;
                    if (var_a0 != 0x66) {
                        if (var_a0 == 0x67) {
                            arg0->unk50 = (f32) var_s0->unk0;
                            arg0->unk54 = (f32) var_s0->unk4;
                            var_s0 += 0xC;
                            var_s3 |= 0x400;
                            arg0->unk58 = (f32) var_s0->unk-4;
                        } else if (var_a0 == 0x68) {
                            var_a0_2 = arg0->unk48;
                            if (var_s0->unk0 == (f32) var_a0_2) {
                                var_s0_2 = var_s0 + 4;
                            } else {
                                var_s3 |= 0x200;
                                var_a0_2 = (s32) var_s0->unk0;
                                var_s0_2 = var_s0 + 4;
                                arg0->unk48 = var_a0_2;
                            }
                            if (var_a0_2 < 0) {
                                var_a0_2 = 0;
                                arg0->unk48 = 0;
                            }
                            if (var_a0_2 >= 0x81) {
                                arg0->unk48 = 0x80;
                            }
                            var_a0_3 = (s32) *var_s0_2;
                            var_s0 = var_s0_2 + 4;
                            if (var_a0_3 <= 0) {
                                var_a0_3 = 0;
                            }
                            if (var_a0_3 >= 0x5B) {
                                var_a0_3 = 0xB4;
                            }
                            if (arg0->unk4C != var_a0_3) {
                                var_s3 |= 0x200;
                                arg0->unk4C = var_a0_3;
                            }
                        } else {
                            gl_ErrorHandler(0x16, 2, saved_reg_gp - 0x39A8);
                        }
                    } else {
                        arg0->unk34 = (f32) var_s0->unk0;
                        arg0->unk38 = (f32) var_s0->unk4;
                        arg0->unk3C = (f32) var_s0->unk8;
                        temp_f2 = var_s0->unkC;
                        if (temp_f2 != 0.0f) {
                            var_v0 = 0;
                        }
                        var_s0 += 0x10;
                        var_s3 |= 2;
                        arg0->unk40 = temp_f2;
                        arg0->unk10 = var_v0;
                    }
                }
                var_a0 = (s32) (*var_s0 + 0.5f);
                var_s0 += 4;
                if (var_a0 != 0) {
                    goto loop_6;
                }
                var_ra = sp50;
            }
        } else {
            goto block_62;
        }
    } else {
block_62:
        gl_init_light(arg0);
        var_ra = sp50;
        var_s3 = 0xFFFFFF;
    }
    temp_a0 = temp_s4->modelviewStack.stack[2][1][2];
    if (((bitwise s32) temp_a0 != 0) && (arg0->unk4 == temp_a0->unk4)) {
        temp_a3 = arg0->unk8;
        if (temp_a3 == temp_s4) {
            sp50 = var_ra;
            resetOpenGLLight(arg0, 0, var_s3, temp_a3);
        }
    }
    temp_a0_2 = temp_s4->modelviewStack.stack[2][1][3];
    if (((bitwise s32) temp_a0_2 != 0) && (arg0->unk4 == temp_a0_2->unk4) && (arg0->unk8 == temp_s4)) {
        sp50 = var_ra;
        resetOpenGLLight(arg0, 1, var_s3);
    }
    temp_a0_3 = temp_s4->modelviewStack.stack[2][2][0];
    if ((bitwise s32) temp_a0_3 != 0) {
        temp_a3_2 = arg0->unk4;
        if ((temp_a3_2 == temp_a0_3->unk4) && (arg0->unk8 == temp_s4)) {
            sp50 = var_ra;
            resetOpenGLLight(arg0, 2, var_s3, temp_a3_2);
        }
    }
    temp_a0_4 = temp_s4->modelviewStack.stack[2][2][1];
    if ((bitwise s32) temp_a0_4 != 0) {
        temp_a3_3 = temp_a0_4->unk4;
        if ((arg0->unk4 == temp_a3_3) && (arg0->unk8 == temp_s4)) {
            sp50 = var_ra;
            resetOpenGLLight(arg0, 3, var_s3, temp_a3_3);
        }
    }
    temp_a0_5 = temp_s4->modelviewStack.stack[2][2][2];
    if (((bitwise s32) temp_a0_5 != 0) && (arg0->unk4 == temp_a0_5->unk4)) {
        temp_a3_4 = arg0->unk8;
        if (temp_a3_4 == temp_s4) {
            sp50 = var_ra;
            resetOpenGLLight(arg0, 4, var_s3, temp_a3_4);
        }
    }
    temp_a0_6 = temp_s4->modelviewStack.stack[2][2][3];
    if (((bitwise s32) temp_a0_6 != 0) && (arg0->unk4 == temp_a0_6->unk4) && (arg0->unk8 == temp_s4)) {
        sp50 = var_ra;
        resetOpenGLLight(arg0, 5, var_s3);
    }
    temp_a0_7 = temp_s4->modelviewStack.stack[2][3][0];
    if ((bitwise s32) temp_a0_7 != 0) {
        temp_a3_5 = arg0->unk4;
        if ((temp_a3_5 == temp_a0_7->unk4) && (arg0->unk8 == temp_s4)) {
            sp50 = var_ra;
            resetOpenGLLight(arg0, 6, var_s3, temp_a3_5);
        }
    }
    temp_a0_8 = temp_s4->modelviewStack.stack[2][3][1];
    if ((bitwise s32) temp_a0_8 != 0) {
        temp_a3_6 = temp_a0_8->unk4;
        if ((arg0->unk4 == temp_a3_6) && (arg0->unk8 == temp_s4)) {
            sp50 = var_ra;
            resetOpenGLLight(arg0, 7, var_s3, temp_a3_6);
        }
    }
}

void gl_lmdef_lightingmodel(void *arg0, f32 *arg1) {
    s64 sp58;
    s64 sp0;
    f32 *var_s1;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f3;
    f32 temp_f4;
    gl_wstate *temp_s3;
    s32 temp_at;
    s32 temp_cond;
    s32 temp_v0;
    s32 var_a0;
    s64 var_ra;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a4_6;
    void *temp_a4_7;
    void *temp_a4_8;

    var_ra = saved_reg_ra;
    temp_s3 = gl_wstatep;
    if (arg1 != NULL) {
        if (*arg1 != 0.0f) {
            var_a0 = (s32) (*arg1 + 0.5f);
            var_s1 = arg1 + 4;
            if (var_a0 != 0) {
loop_6:
                if (var_a0 == 2) {
                    arg0->unk18 = (f32) var_s1->unk0;
                    arg0->unk1C = (f32) var_s1->unk4;
                    temp_f0 = var_s1->unk8;
                    var_s1 += 0xC;
                    arg0->unk20 = temp_f0;
                } else if (var_a0 == 0xC9) {
                    temp_at = (s32) (var_s1->unk0 + 0.5f);
                    var_s1 += 4;
                    arg0->unk8 = (s8) temp_at;
                } else if (var_a0 == 0xCC) {
                    temp_v0 = (s32) (var_s1->unk0 + 0.5f);
                    var_s1 += 4;
                    arg0->unk9 = (s8) temp_v0;
                } else if (var_a0 == 0xCA) {
                    temp_f1 = var_s1->unk0;
                    arg0->unkC = temp_f1;
                    temp_f4 = var_s1->unk4;
                    var_s1 += 8;
                    arg0->unk10 = temp_f4;
                    if (temp_f1 < 0.0f) {
                        arg0->unkC = 0.0f;
                    }
                    if (temp_f4 < 0.0f) {
                        arg0->unk10 = 0.0f;
                    }
                } else if (var_a0 == 0xCB) {
                    temp_f3 = var_s1->unk0;
                    temp_cond = temp_f3 < 0.0f;
                    var_s1 += 4;
                    arg0->unk14 = temp_f3;
                    if (temp_cond) {
                        arg0->unk14 = 0.0f;
                    }
                } else {
                    gl_ErrorHandler(0x16, 2, saved_reg_gp - 0x39A8);
                }
                var_a0 = (s32) (*var_s1 + 0.5f);
                var_s1 += 4;
                if (var_a0 != 0) {
                    goto loop_6;
                }
                var_ra = sp58;
            }
        } else {
            goto block_48;
        }
    } else {
block_48:
        gl_init_lightingmodel(arg0);
        var_ra = sp58;
    }
    if ((bitwise s32) temp_s3->modelviewStack.stack[2][0][2] == arg0) {
        sp58 = var_ra;
        resetOpenGLModel(arg0);
        sp0 = (s64) temp_s3;
        temp_a4 = sp0->unkBE0;
        if (temp_a4 != NULL) {
            __iglooSetOglAttenuation(0x4000, arg0, temp_a4->unk10);
        }
        temp_a4_2 = sp0->unkBE4;
        if (temp_a4_2 != NULL) {
            __iglooSetOglAttenuation(0x4001, arg0, temp_a4_2->unk10);
        }
        temp_a4_3 = sp0->unkBE8;
        if (temp_a4_3 != NULL) {
            __iglooSetOglAttenuation(0x4002, arg0, temp_a4_3->unk10);
        }
        temp_a4_4 = sp0->unkBEC;
        if (temp_a4_4 != NULL) {
            __iglooSetOglAttenuation(0x4003, arg0, temp_a4_4->unk10);
        }
        temp_a4_5 = sp0->unkBF0;
        if (temp_a4_5 != NULL) {
            __iglooSetOglAttenuation(0x4004, arg0, temp_a4_5->unk10);
        }
        temp_a4_6 = sp0->unkBF4;
        if (temp_a4_6 != NULL) {
            __iglooSetOglAttenuation(0x4005, arg0, temp_a4_6->unk10);
        }
        temp_a4_7 = sp0->unkBF8;
        if (temp_a4_7 != NULL) {
            __iglooSetOglAttenuation(0x4006, arg0, temp_a4_7->unk10);
        }
        temp_a4_8 = sp0->unkBFC;
        if (temp_a4_8 != NULL) {
            __iglooSetOglAttenuation(0x4007, arg0, temp_a4_8->unk10);
        }
    }
}

void __glCheckDefMoveDraw(s32 arg0, s32 arg1) {
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a4_6;
    void *temp_a4_7;
    void *temp_a4_8;
    void *temp_a4_9;
    void *temp_a5;

    if (arg0 != 0) {
        temp_a4 = *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF56D70)->unk-5B00;
        temp_a5 = temp_a4->unkBD0;
        if ((temp_a5 == NULL) || (temp_a5->unk4 != arg1)) {
            temp_a4_2 = temp_a4->unkBE0;
            if ((temp_a4_2 != NULL) && (temp_a4_2->unk4 == arg1)) {

            }
            temp_a4_3 = temp_a4->unkBE4;
            if ((temp_a4_3 != NULL) && (temp_a4_3->unk4 == arg1)) {

            }
            temp_a4_4 = temp_a4->unkBE8;
            if ((temp_a4_4 != NULL) && (temp_a4_4->unk4 == arg1)) {

            }
            temp_a4_5 = temp_a4->unkBEC;
            if ((temp_a4_5 != NULL) && (temp_a4_5->unk4 == arg1)) {

            }
            temp_a4_6 = temp_a4->unkBF0;
            if ((temp_a4_6 != NULL) && (temp_a4_6->unk4 == arg1)) {

            }
            temp_a4_7 = temp_a4->unkBF4;
            if ((temp_a4_7 != NULL) && (temp_a4_7->unk4 == arg1)) {

            }
            temp_a4_8 = temp_a4->unkBF8;
            if ((temp_a4_8 != NULL) && (temp_a4_8->unk4 == arg1)) {

            }
            temp_a4_9 = temp_a4->unkBFC;
            if ((temp_a4_9 != NULL) && (temp_a4_9->unk4 == arg1)) {

            }
        }
    }
}

void gl_g_lmdef(s32 arg0, s32 arg1, s64 arg3) {
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *var_s1;
    void *var_s1_2;
    void *var_s1_3;

    if (arg1 != 0) {
        __glCheckDefMoveDraw(arg0, arg1);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            __iglooCloseMoveDraw();
        }
        switch (arg0) {                             /* irregular */
        default:
            gl_ErrorHandler(0x16, 2, saved_reg_gp - 0x39A8);
            break;
        case 0xC8:
            temp_v0 = gl_remove(&gl_lightingmodeltab, arg1, 0xC8);
            var_s1 = temp_v0;
            if (temp_v0 == NULL) {
                gl_newlightingmodel();
                var_s1 = M2C_ERROR(/* Read from unset register $v0 */);
            }
            var_s1->unk4 = arg1;
            gl_lmdef_lightingmodel(var_s1, (f32 *) subroutine_arg0);
            gl_insert(&gl_lightingmodeltab, var_s1);
            break;
        case 0x0:
            temp_v0_2 = gl_remove(&gl_materialtab, arg1);
            var_s1_2 = temp_v0_2;
            if (temp_v0_2 == NULL) {
                gl_newmaterial();
                var_s1_2 = M2C_ERROR(/* Read from unset register $v0 */);
            }
            var_s1_2->unk4 = arg1;
            gl_lmdef_material(var_s1_2, (f32 *) subroutine_arg0);
            gl_insert(&gl_materialtab, var_s1_2);
            break;
        case 0x64:
            temp_v0_3 = gl_remove(&gl_lighttab, arg1, 0xC8);
            var_s1_3 = temp_v0_3;
            if (temp_v0_3 == NULL) {
                gl_newlight();
                var_s1_3 = M2C_ERROR(/* Read from unset register $v0 */);
            }
            var_s1_3->unk4 = arg1;
            gl_lmdef_light(var_s1_3, (f32 *) subroutine_arg0);
            gl_insert(&gl_lighttab, var_s1_3);
            break;
        }
        return;
    }
    gl_ErrorHandler(0x37, 2, saved_reg_gp - 0x39A8);
}
