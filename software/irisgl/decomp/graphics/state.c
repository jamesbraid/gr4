Error occurred while processing instruction: sdc1 $f3, 0xf8($s7)

Error occurred while processing instruction: sdc1 $f3, 0xf8($s7)

Tried to use a double-precision instruction with odd-numbered float register $f3
Tried to use a double-precision instruction with odd-numbered float register $f3
? glBlendEquationEXT(s32, void *);                  /* extern */
? glColorMask(u8, u8, u8, u8);                      /* extern */
? glDepthMask(u8, void *);                          /* extern */
? glEndList(void *);                                /* extern */
s32 glGetBooleanv();                                /* extern */
s32 glGetFloatv();                                  /* extern */
s32 glGetIntegerv(s64, void *);                     /* extern */
? glIndexMask(s32, s32);                            /* extern */
? glLineWidth(f64);                                 /* extern */
? glLogicOp(s32, void *);                           /* extern */
? glNewList(void *);                                /* extern */
? glPixelTransferf(?, s64);                         /* extern */
? glPixelZoom(void *);                              /* extern */
extern ? sub_0f030000;

s32 __iglooGetAndSetEnable(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp68;
    s64 sp10;
    s32 *var_s3;
    s32 temp_a0;
    s32 temp_s5;
    s32 temp_s7;
    s32 var_a1;
    s32 var_s0;
    s32 var_s1;
    s32 var_v0;

    var_s1 = 0;
    sp10 = arg1;
    var_v0 = __iglooIsExtensionSupported(0xC);
    var_s0 = 0;
    sp68 = var_v0 & 0xFF;
    var_s3 = &sub_0f030000 - 0x5638;
loop_8:
    temp_s7 = 1 << var_s0;
    if (temp_s7 & arg0) {
        if (temp_s7 == 0x10) {
            if (sp68 == 1) {
                goto block_2;
            }
        } else {
block_2:
            temp_s5 = *var_s3;
            temp_a0 = __iglooIsEnabled(temp_s5) & 0xFF;
            if (temp_a0 != 1) {
                var_a1 = 0;
            } else {
                var_a1 = temp_s7;
            }
            var_v0 = temp_s7 & sp10;
            var_s1 |= var_a1;
            if (var_v0 != 0) {
                if (temp_a0 != 1) {
                    var_v0 = __iglooSetEnable(temp_s5, 1);
                }
            } else if (temp_a0 != 0) {
                var_v0 = __iglooSetEnable(temp_s5, 0);
            }
        }
    }
    var_s0 += 1;
    var_s3 += 4;
    if (var_s0 != 0xF) {
        goto loop_8;
    }
    *subroutine_arg0 = var_s1;
    return var_v0;
}

void __iglooSetSavedEnable(s64 arg0, s32 arg1, s32 arg2) {
    s32 *var_s4;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_s8;
    s32 var_s0;

    var_s0 = 0;
    temp_s8 = __iglooIsExtensionSupported(0xC) & 0xFF;
    var_s4 = &sub_0f030000 - 0x5638;
loop_3:
    temp_a1 = 1 << var_s0;
    var_s0 += 1;
    temp_a2 = temp_a1 & arg2;
    if (temp_a1 & arg0) {
        if (temp_a1 != 0x10) {
            goto block_5;
        }
        if (temp_s8 == 1) {
block_5:
            temp_a0 = *var_s4;
            if ((temp_a1 & arg1) != temp_a2) {
                if (temp_a2 != 0) {
                    __iglooSetEnable(temp_a0, 1, temp_a2);
                } else {
                    __iglooSetEnable(temp_a0, 0, temp_a2);
                }
            }
        }
    }
    var_s4 += 4;
    if (var_s0 != 0xF) {
        goto loop_3;
    }
}

void findPackMode(s32 arg0, s32 arg1) {
    switch (arg0) {                                 /* irregular */
    case 0xCF5:
        return;
    case 0xD05:
        return;
    case 0xCF2:
        return;
    case 0xD02:
        return;
    }
}

void __iglooPixelStorei(s64 arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp10 = arg1;
    sp8 = arg0;
    temp_v0 = *(s32 *)0x1004;
    if (temp_v0 != 0) {
        __iglooSetSavedEnable(sp8, temp_v0 + 0x108);
        sp0 = M2C_ERROR(/* Read from unset register $v0 */);
        if (*M2C_ERROR(/* Read from unset register $v0 */) != sp10) {
            glPixelStorei((u32) sp8, (s32) sp10);
            *sp0 = (s32) sp10;
        }
    }
}

s32 __iglooGetPixelStorei(s64 arg0) {
    s64 sp8;
    s32 sp0;
    s32 temp_a4;
    s32 var_v0;

    var_v0 = 0;
    sp8 = arg0;
    temp_a4 = *(s32 *)0x1004;
    sp0 = 0;
    if (temp_a4 != 0) {
        __iglooSetSavedEnable(sp8, temp_a4 + 0x108);
        if (M2C_ERROR(/* Read from unset register $v0 */) != 0) {
            sp0 = *M2C_ERROR(/* Read from unset register $v0 */);
        } else {
            glGetIntegerv(sp8, sp);
        }
        var_v0 = sp0;
    }
    return var_v0;
}

/*
Decompilation failure in function GetPixelTransferLocation:

Unable to determine jump table for jr instruction at state.s line 403.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __iglooPixelTransferf(f64 arg1, s64 arg0) {
    s64 sp10;
    s64 sp8;
    f64 sp0;
    s32 temp_v0;
    s32 temp_v0_2;

    sp0 = arg1;
    sp10 = arg0;
    temp_v0 = *(s32 *)0x1004;
    if (temp_v0 != 0) {
        temp_v0_2 = GetPixelTransferLocation(sp10, temp_v0 + 0x118);
        if (temp_v0_2 != 0) {
            sp8 = (s64) temp_v0_2;
            if (*temp_v0_2 != (f32) sp0) {
                glPixelTransferf(second half of f64, sp10);
                *sp8 = (bitwise f32) sp0;
            }
        }
    }
}

s32 __iglooGetPixelTransferf(void) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_f0;

    temp_v0 = *(s32 *)0x1004;
    if (temp_v0 != 0) {
        temp_v0_2 = GetPixelTransferLocation(temp_v0 + 0x118);
        if (temp_v0_2 != 0) {
            var_f0 = *temp_v0_2;
        } else {
            var_f0 = sp0;
        }
    } else {
        var_f0 = sp0;
    }
    return var_f0;
}

void __iglooPixelZoom(f32 arg0, f32 arg1) {
    void *temp_a1;

    temp_a1 = *(void **)0x1004;
    if (temp_a1->unk58 == arg0) {
        if (temp_a1->unk5C != arg1) {
            goto block_4;
        }
    } else {
block_4:
        temp_a1->unk5C = arg1;
        temp_a1->unk58 = arg0;
        glPixelZoom(temp_a1);
    }
}

void __iglooDrawBuffer(u32 arg0) {
    u32 var_a0;
    void *temp_a2;
    void *temp_a3;

    var_a0 = arg0;
    temp_a2 = *(void **)0x1004;
    if (temp_a2->unk30 != var_a0) {
        temp_a3 = temp_a2->unk14;
        if (temp_a3->unk14 == 0) {
            switch (var_a0) {                       /* switch 2; irregular */
            case 0x407:                             /* switch 2 */
                var_a0 = 0x401;
                break;
            case 0x402:                             /* switch 2 */
            case 0x403:                             /* switch 2 */
            case 0x405:                             /* switch 2 */
                var_a0 = 0;
                break;
            case 0x408:                             /* switch 2 */
                var_a0 = 0x404;
                break;
            case 0x406:                             /* switch 2 */
                var_a0 = 0x400;
                break;
            }
        }
        if (temp_a3->unk18 == 0) {
            switch (var_a0) {                       /* switch 1; irregular */
            case 0x400:                             /* switch 1 */
            case 0x401:                             /* switch 1 */
                var_a0 = 0x404;
                break;
            case 0x402:                             /* switch 1 */
            case 0x403:                             /* switch 1 */
                var_a0 = 0x405;
                break;
            }
        }
        temp_a2->unk30 = var_a0;
        glDrawBuffer(var_a0);
    }
}

void __iglooReadBuffer(u32 arg0) {
    u32 var_a0;
    void *temp_a2;
    void *temp_a3;

    var_a0 = arg0;
    temp_a2 = *(void **)0x1004;
    if (temp_a2->unk34 != var_a0) {
        temp_a3 = temp_a2->unk14;
        if (temp_a3->unk14 == 0) {
            switch (var_a0) {                       /* switch 2; irregular */
            case 0x407:                             /* switch 2 */
                var_a0 = 0x401;
                break;
            case 0x402:                             /* switch 2 */
            case 0x403:                             /* switch 2 */
            case 0x405:                             /* switch 2 */
                var_a0 = 0;
                break;
            case 0x406:                             /* switch 2 */
                var_a0 = 0x400;
                break;
            }
        }
        if (temp_a3->unk18 == 0) {
            switch (var_a0) {                       /* switch 1; irregular */
            case 0x400:                             /* switch 1 */
            case 0x401:                             /* switch 1 */
                var_a0 = 0x404;
                break;
            case 0x402:                             /* switch 1 */
            case 0x403:                             /* switch 1 */
                var_a0 = 0x405;
                break;
            }
        }
        temp_a2->unk34 = var_a0;
        glReadBuffer(var_a0);
    }
}

void __iglooLogicOp(s32 arg0) {
    s64 sp0;
    void *temp_a2;

    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        sp0 = (s64) temp_a2;
        if (temp_a2->unk48 != arg0) {
            glLogicOp(arg0, temp_a2);
            sp0->unk48 = arg0;
        }
    }
}

void __iglooBlendFunc(u32 arg0, u32 arg1) {
    void *temp_s0;

    temp_s0 = *(void **)0x1004;
    if ((temp_s0 != NULL) && ((temp_s0->unk4C != arg0) || (temp_s0->unk50 != arg1))) {
        glBlendFunc(arg0, arg1);
        temp_s0->unk50 = arg1;
        temp_s0->unk4C = arg0;
    }
}

void __iglooBlendEquationEXT(s32 arg0) {
    s64 sp0;
    void *temp_a2;

    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        sp0 = (s64) temp_a2;
        if (temp_a2->unk54 != arg0) {
            glBlendEquationEXT(arg0, temp_a2);
            sp0->unk54 = arg0;
        }
    }
}

void __iglooDepthFunc(u32 arg0) {
    s64 sp0;
    void *temp_a2;

    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        sp0 = (s64) temp_a2;
        if (temp_a2->unk38 != arg0) {
            glDepthFunc(arg0);
            sp0->unk38 = arg0;
        }
    }
}

void __iglooDepthMask(u8 arg0) {
    s64 sp0;
    void *temp_a2;

    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        sp0 = (s64) temp_a2;
        if (temp_a2->unk158 != arg0) {
            glDepthMask(arg0, temp_a2);
            sp0->unk158 = arg0;
        }
    }
}

void __iglooIndexMask(s32 arg0) {
    s32 temp_s5;
    s32 var_a2;
    u32 temp_a0;
    void *temp_s1;

    temp_s1 = *(void **)0x1004;
    if (temp_s1 != NULL) {
        temp_a0 = temp_s1->unk14->unk8;
        var_a2 = -1;
        if (temp_a0 < 0x20U) {
            if (temp_a0 != 0) {
                var_a2 = ~(-1 << temp_a0);
            } else {
                var_a2 = -1;
            }
        }
        if (temp_s1->unk150 != arg0) {
            temp_s5 = arg0 & var_a2;
            glIndexMask(temp_s5, var_a2);
            temp_s1->unk150 = temp_s5;
        }
    }
}

void __iglooGetIndexMask(s32 *arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        *arg0 = temp_a2->unk150;
    }
}

void __iglooColorMask(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    void *temp_s0;

    temp_s0 = *(void **)0x1004;
    if ((temp_s0 != NULL) && ((temp_s0->unk154 != arg0) || (temp_s0->unk155 != arg1) || (temp_s0->unk156 != arg2) || (temp_s0->unk157 != arg3))) {
        glColorMask(arg0, arg1, arg2, arg3);
        temp_s0->unk157 = arg3;
        temp_s0->unk156 = arg2;
        temp_s0->unk155 = arg1;
        temp_s0->unk154 = arg0;
    }
}

void __iglooGetColorMask(void *arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1004;
    if (temp_a2 != NULL) {
        arg0->unk0 = (u8) temp_a2->unk154;
        arg0->unk1 = (u8) temp_a2->unk155;
        arg0->unk2 = (u8) temp_a2->unk156;
        arg0->unk3 = (u8) temp_a2->unk157;
    }
}

void __iglooShadeModel(s64 arg0) {
    s64 sp8;
    s64 sp0;
    void *temp_at;

    temp_at = *(void **)0x1004;
    sp8 = arg0;
    sp0 = (s64) temp_at;
    if (temp_at->unk15C != arg0) {
        glShadeModel((u32) sp8);
        sp0->unk15C = (s32) sp8;
    }
}

void __iglooLineWidth(f64 arg0) {
    s64 sp8;
    f64 sp0;
    void *temp_v0;

    temp_v0 = *(void **)0x1004;
    sp0 = arg0;
    sp8 = (s64) temp_v0;
    if (temp_v0->unk160 != (f32) arg0) {
        glLineWidth(sp0);
        sp8->unk160 = (bitwise f32) sp0;
    }
}

void __iglooInitializeOpenglState(void) {
    s32 var_a2;
    void *temp_a1;
    void *temp_s7;

    temp_s7 = *(void **)0x1004;
    temp_a1 = temp_s7->unk14;
    if (temp_a1->unk14 != 0) {
        var_a2 = 0x405;
    } else {
        var_a2 = 0x404;
    }
    // Error: Tried to use a double-precision instruction with odd-numbered float register $f3
    // At instruction: sdc1 $f3, 0xf8($s7)
    if (M2C_ERROR()) {

    } else {
        var_a2 = ~(-1 << temp_a1->unk8);
    }
    temp_s7->unkF4 = 0;
    temp_s7->unkE0 = 0;
    temp_s7->unk158 = 1;
    temp_s7->unk157 = 1;
    temp_s7->unk156 = 1;
    temp_s7->unk155 = 1;
    temp_s7->unk154 = 1;
    temp_s7->unk150 = var_a2;
    __iglooInitializeMatrices(temp_s7 + 0x94, temp_a1, var_a2, 1);
    __iglooInitializeEnables(temp_s7 + 0x64);
}

void __iglooUnInitializeOpenglState(s32 arg0) {
    __iglooUnInitializeMatrices(arg0 + 0x64);
}

void __iglooCloneOpenglState(void *arg0) {
    void *temp_s5;

    temp_s5 = *(void **)0x1004;
    __iglooDrawBuffer(arg0->unk0);
    __iglooReadBuffer(arg0->unk4);
    __iglooPixelStorei(0xCF5, (s64) temp_s5->unk10C);
    __iglooPixelStorei(0xD05, (s64) temp_s5->unk108);
    __iglooPixelStorei(0xCF2, (s64) temp_s5->unk114);
    __iglooPixelStorei(0xD02, (s64) temp_s5->unk110);
    __iglooPixelTransferf(1.659e-320);
    __iglooPixelTransferf(1.654e-320);
    __iglooPixelTransferf(1.656e-320);
    __iglooPixelTransferf(1.657e-320);
    __iglooPixelTransferf(1.658e-320);
    __iglooPixelTransferf(1.6596e-320);
    __iglooPixelTransferf(1.6546e-320);
    __iglooPixelTransferf(1.6566e-320);
    __iglooPixelTransferf(1.6576e-320);
    __iglooPixelTransferf(1.6586e-320);
    __iglooPixelTransferf(1.652e-320);
    __iglooPixelTransferf(1.6526e-320);
    __iglooPixelTransferf(1.653e-320);
    __iglooPixelTransferf(1.6536e-320);
    __iglooPixelZoom(arg0->unk28);
    __iglooDepthRange(arg0->unkC8);
    __iglooLogicOp(arg0->unk18);
    __iglooBlendFunc(arg0->unk1C, arg0->unk20);
    __iglooBlendEquationEXT(arg0->unk24);
    __iglooDepthFunc(arg0->unk8);
    __iglooDepthMask(arg0->unk128);
    __iglooShadeModel((s64) arg0->unk12C);
    __iglooLineWidth((bitwise f64) arg0->unk130);
    __iglooColorMask(arg0->unk124, arg0->unk125, arg0->unk126, arg0->unk127);
    __iglooIndexMask(arg0->unk120);
    if (arg0->unkB0 == 1) {
        __iglooViewport(arg0->unkA0, arg0->unkA4, arg0->unkA8, arg0->unkAC);
    } else {
        arg0->unkB0 = 0U;
    }
    if (arg0->unkC4 == 1) {
        __iglooScissor(arg0->unkB4, arg0->unkB8, arg0->unkBC, arg0->unkC0);
    } else {
        arg0->unkC4 = 0U;
    }
    __iglooCloneMatrices(arg0 + 0x64);
    __iglooCloneEnables(arg0 + 0x34);
}

void __iglooNewList(void) {
    void *temp_a3;

    temp_a3 = *(void **)0x1004;
    if (temp_a3 != NULL) {
        temp_a3->unk60 = (s32) (temp_a3->unk60 | 8);
        glNewList(temp_a3);
    }
}

void __iglooEndList(void) {
    void *temp_a1;

    temp_a1 = *(void **)0x1004;
    if (temp_a1 != NULL) {
        temp_a1->unk60 = (s32) (temp_a1->unk60 & ~8);
        glEndList(temp_a1);
    }
}

s32 __iglooGetBooleanv(void) {
    return glGetBooleanv();
}

s32 __iglooGetFloatv(void) {
    return glGetFloatv();
}

s32 __iglooGetIntegerv(void) {
    return glGetIntegerv();
}
