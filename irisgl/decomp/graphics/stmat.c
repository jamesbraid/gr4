? glGetFloatv(s64, void *);                         /* extern */
? glGetIntegerv(void *);                            /* extern */
? glRotatef(?, ?);                                  /* extern */
? glScalef(?, f64);                                 /* extern */
? glTranslatef(?, f64);                             /* extern */

void __iglooMatrixIdentify(void *arg0) {
    arg0->unk40 = 1;
    arg0->unk38 = 5.263544247e-315;
    arg0->unk34 = 0.0f;
    arg0->unk30 = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk24 = 5.263544247e-315;
    arg0->unk20 = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk10 = 5.263544247e-315;
    arg0->unkC = 0.0f;
    arg0->unk8 = 0.0f;
    arg0->unk4 = 0.0f;
    arg0->unk0 = 1.0f;
    arg0->unk44 = __iglooGetId();
}

void __iglooMatrixMode(u32 arg0) {
    void *temp_a2;
    void *var_a3;

    temp_a2 = *(void **)0x1004;
    if ((temp_a2 != NULL) && (temp_a2->unk94 != arg0)) {
        if (arg0 != 0x1700) {
            var_a3 = temp_a2 + 0xAC;
            if (arg0 != 0x1701) {
                if (arg0 != 0x1702) {
                    var_a3 = NULL;
                    if (arg0 == 0x1800) {
                        var_a3 = sp0;
                        if (temp_a2->unk98 == 1) {
                            var_a3 = temp_a2 + 0xC4;
                        }
                    }
                } else {
                    var_a3 = temp_a2 + 0xB8;
                }
            }
        } else {
            var_a3 = temp_a2 + 0xA0;
        }
        if (var_a3 != NULL) {
            temp_a2->unk94 = arg0;
            temp_a2->unk9C = var_a3;
            glMatrixMode(arg0);
        }
    }
}

s32 __iglooGetMatrixMode(void) {
    s32 var_v0;
    void *temp_a2;

    temp_a2 = *(void **)0x1004;
    var_v0 = 0;
    if (temp_a2 != NULL) {
        var_v0 = temp_a2->unk94;
    }
    return var_v0;
}

void initializeIglooMatrix(void *arg1) {
    void *temp_v0;

    glGetIntegerv(sp);
    arg1->unk8 = 0;
    arg1->unk4 = (s32) subroutine_arg0;
    temp_v0 = __iglooMalloc(subroutine_arg0 * 0x48, subroutine_arg0);
    arg1->unk0 = temp_v0;
    gl_n_stencil(temp_v0);
}

void unInitializeIglooMatrix(s32 *arg0) {
    s32 temp_a2;

    temp_a2 = *arg0;
    if (temp_a2 != 0) {
        __iglooFree(temp_a2, temp_a2);
    }
}

void __iglooInitializeMatrices(void *arg0) {
    void *temp_s7;

    arg0->unk0 = 0x1700;
    temp_s7 = arg0 + 0xC;
    arg0->unk8 = temp_s7;
    arg0->unk4 = __iglooIsExtensionSupported(0x15);
    __iglooGetMatrixMode((void *)0xD36, temp_s7);
    __iglooGetMatrixMode((void *)0xD38, arg0 + 0x18);
    __iglooGetMatrixMode((void *)0xD39, arg0 + 0x24);
    if (arg0->unk4 == 1) {
        __iglooGetMatrixMode((void *)0x80B3, arg0 + 0x30);
    }
}

void __iglooUnInitializeMatrices(void *arg0) {
    __iglooGetMatrixMode(arg0 + 0xC);
    __iglooGetMatrixMode(arg0 + 0x18);
    __iglooGetMatrixMode(arg0 + 0x24);
    if (arg0->unk4 == 1) {
        __iglooGetMatrixMode(arg0 + 0x30);
    }
}

void __iglooCloneMatrices(u32 *arg0) {
    __iglooMatrixMode(*arg0);
}

void __iglooLoadIdentity(void) {
    s32 var_a1;
    void *temp_a0;
    void *temp_a0_2;

    temp_a0 = (*(void **)0x1004)->unk9C;
    var_a1 = temp_a0->unk8 * 0x48;
    temp_a0_2 = temp_a0->unk0 + var_a1;
    if ((temp_a0_2->unk44 == 0) || (var_a1 = temp_a0_2->unk40, (var_a1 != 1))) {
        gl_n_stencil(temp_a0_2, var_a1);
        glLoadIdentity();
    }
}

void __iglooLoadMatrix(f32 *arg0) {
    void *temp_s8;
    void *temp_s8_2;

    temp_s8 = (*(void **)0x1004)->unk9C;
    temp_s8_2 = temp_s8->unk0 + (temp_s8->unk8 * 0x48);
    temp_s8_2->unk40 = 0;
    temp_s8_2->unk44 = __iglooGetId();
    memcpy(temp_s8_2, arg0, 0x40U);
    glLoadMatrixf(arg0);
}

void __iglooLoadIglooMatrix(s32 arg0) {
    f32 *temp_a5_2;
    s32 *temp_at;
    s32 *temp_v0;
    s32 var_a2;
    s32 var_a3;
    void *temp_a5;

    var_a2 = 0x12;
    var_a3 = 0;
    temp_a5 = (*(void **)0x1004)->unk9C;
    temp_a5_2 = temp_a5->unk0 + (temp_a5->unk8 * 0x48);
    do {
        temp_v0 = var_a3 + temp_a5_2;
        temp_at = var_a3 + arg0;
        var_a3 += 4;
        var_a2 -= 1;
        *temp_v0 = *temp_at;
    } while (var_a2 > 0);
    glLoadMatrixf(temp_a5_2);
}

void __iglooPushMatrix(void) {
    s32 *temp_at;
    s32 *temp_v0_2;
    s32 temp_a5;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a6;
    u32 temp_v0;
    void *temp_a7;

    var_a2 = 0;
    temp_a7 = (*(void **)0x1004)->unk9C;
    temp_v0 = temp_a7->unk8;
    temp_a6 = temp_v0 + 1;
    temp_a5 = temp_a7->unk0 + (temp_v0 * 0x48);
    if (temp_a6 < (u32) temp_a7->unk4) {
        var_a1 = 0x12;
        do {
            temp_v0_2 = var_a2 + (temp_a5 + 0x48);
            temp_at = var_a2 + temp_a5;
            var_a2 += 4;
            var_a1 -= 1;
            *temp_v0_2 = *temp_at;
        } while (var_a1 > 0);
        temp_a7->unk8 = temp_a6;
        glPushMatrix();
    }
}

void __iglooPopMatrix(void) {
    s32 temp_a1;
    void *temp_a2;

    temp_a2 = (*(void **)0x1004)->unk9C;
    temp_a1 = temp_a2->unk8;
    if (temp_a1 != 0) {
        temp_a2->unk8 = (s32) (temp_a1 - 1);
        glPopMatrix();
    }
}

void invalidateMatrix(void) {
    void *temp_at;

    temp_at = (*(void **)0x1004)->unk9C;
    (temp_at->unk0 + (temp_at->unk8 * 0x48))->unk44 = 0;
}

void __iglooMultMatrix(f32 *arg0) {
    __iglooPopMatrix();
    glMultMatrixf(arg0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c], gap at: 0x8. */
void __iglooRotate(f32 arg0, f64 arg1, f64 arg3) {
    unksp8 = arg3;
    unksp10 = arg1;
    unksp18 = arg1;
    __iglooPopMatrix();
    glRotatef(second half of f64, second half of f64);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void __iglooTranslate(f32 arg0, f64 arg1) {
    unksp8 = arg1;
    unksp10 = arg1;
    __iglooPopMatrix();
    glTranslatef(second half of f64, arg1);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void __iglooScale(f32 arg0, f64 arg1) {
    unksp8 = arg1;
    unksp10 = arg1;
    __iglooPopMatrix();
    glScalef(second half of f64, arg1);
}

s32 getMatrixState(s32 arg0, s32 arg1) {
    s32 var_v0;

    switch (arg1) {                                 /* irregular */
    default:
        var_v0 = sp0;
        if (arg1 == 0x80B1) {
            var_v0 = arg0 + 0xC4;
        }
        break;
    case 0xBA6:
        var_v0 = arg0 + 0xA0;
        break;
    case 0xBA7:
        var_v0 = arg0 + 0xAC;
        break;
    case 0xBA8:
        var_v0 = arg0 + 0xB8;
        break;
    }
    return var_v0;
}

s32 __iglooGetRawIglooMatrix(s32 arg0) {
    __iglooScale(*(f32 *)0x1004, (bitwise f64) arg0);
    return *M2C_ERROR(/* Read from unset register $v0 */) + (M2C_ERROR(/* Read from unset register $v0 */)->unk8 * 0x48);
}

s32 __iglooGetIglooMatrix(s64 arg0) {
    s32 temp_v0_2;
    void *temp_v0;

    unksp8 = arg0;
    temp_v0 = __iglooGetRawIglooMatrix();
    if (temp_v0->unk44 == 0) {
        glGetFloatv(unksp8, temp_v0);
        temp_v0_2 = __iglooGetId();
        temp_v0->unk40 = 0;
        temp_v0->unk44 = temp_v0_2;
    }
    return (s32) temp_v0;
}

s32 __iglooGetMatrix(void *arg1) {
    return memcpy(arg1, __iglooGetIglooMatrix(), 0x40U);
}
