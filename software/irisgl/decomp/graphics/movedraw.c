typedef struct __gl_wstateRec {
    /* 0x0000 */ gl_wstate *next;
    /* 0x0004 */ u32 flags;
    /* 0x0008 */ s32 drawMode;
    /* 0x000C */ s32 colorMode;
    /* 0x0010 */ s32 bufferMode;
    /* 0x0014 */ s32 shadingModel;
    /* 0x0018 */ s32 zbuffer;
    /* 0x001C */ s32 zfunction;
    /* 0x0020 */ s32 blendSrc;
    /* 0x0024 */ s32 blendDst;
    /* 0x0028 */ s16 currentColor;
    /* 0x002A */ char pad2A[2];
    /* 0x002C */ u32 currentRGB;
    /* 0x0030 */ f32 currentNormal[3];
    /* 0x003C */ char pad3C[0x9C];                  /* maybe part of currentNormal[0xE]? */
    /* 0x00D8 */ ? (*unkD8)(?, gl_wstate *);        /* inferred */
    /* 0x00DC */ ? (*unkDC)();                      /* inferred */
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ char pad100[0xA40];                /* maybe part of screenState[0x291]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x1DC];               /* maybe part of currentVertex[0x1E]? */
    /* 0x2CDC */ s32 unk2CDC;                       /* inferred */
    /* 0x2CE0 */ ? unk2CE0;                         /* inferred */
    /* 0x2CE0 */ char pad2CE0[4];
    /* 0x2CE4 */ ?32 unk2CE4;                       /* inferred */
    /* 0x2CE8 */ ?32 unk2CE8;                       /* inferred */
    /* 0x2CEC */ char pad2CEC[0x1FC];               /* maybe part of unk2CE8[0x80]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? glVertex3fv(? *);                                 /* extern */
? glVertex3i(f32, ?32, f32);                        /* extern */
? glVertex3iv(? *, s64, s64, s64);                  /* extern */
extern ? sub_0f030000;

void gl_i_move2s(s64 arg0, s64 arg1) {
    s64 sp10;

    sp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE8 = 0;
    subroutine_arg0->unk2CE4 = (s32) sp10;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
}

void gl_c_move2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-508C == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6488, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-508C = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_move2s(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk2;
    subroutine_arg0->unk2CE8 = 0;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
}

void gl_i_move2i(s64 arg0, s64 arg1) {
    s64 sp10;

    sp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE8 = 0;
    subroutine_arg0->unk2CE4 = (s32) sp10;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
}

void gl_c_move2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5088 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6478, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5088 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_move2i(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk4;
    subroutine_arg0->unk2CE8 = 0;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
}

void gl_i_move2(f64 arg0, f64 arg1) {
    s64 sp10;

    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    sp10 = (s64) gl_wstatep;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    sp10->unk2CE4 = (f32) subroutine_arg2;
    sp10->unk2CE0 = (f32) subroutine_arg0;
    sp10->unk2CDC = 1;
    sp10->unk2CE8 = (f32) (second half of f64);
    glVertex3fv(sp10 + 0x2CE0);
}

void gl_c_move2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-5084 == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6468);
        saved_reg_gp->unk-5084 = 1;
    }
    gl_compile(6, sp);
}

void gl_n_move2(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk0;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = 0.0f;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk4;
    glVertex3fv(subroutine_arg0 + 0x2CE0);
}

void gl_i_moves(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;

    sp10 = arg2;
    sp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE8 = (s32) sp10;
    subroutine_arg0->unk2CE4 = (s32) sp18;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    glVertex3iv(subroutine_arg0 + 0x2CE0, sp10);
}

void gl_c_moves(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-5080 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x6458);
        saved_reg_gp->unk-5080 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_moves(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk2;
    subroutine_arg0->unk2CE8 = (s32) arg0->unk4;
    subroutine_arg0->unk2CDC = 2;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
}

void gl_i_movei(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;

    sp10 = arg2;
    sp18 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE8 = (s32) sp10;
    subroutine_arg0->unk2CE4 = (s32) sp18;
    subroutine_arg0->unk2CDC = 2;
    subroutine_arg0->unk2CE0 = (s32) subroutine_arg2;
    glVertex3iv(subroutine_arg0 + 0x2CE0, sp10);
}

void gl_c_movei(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-507C == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x6448);
        saved_reg_gp->unk-507C = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_movei(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (s32) arg0->unk0;
    subroutine_arg0->unk2CE4 = (s32) arg0->unk4;
    subroutine_arg0->unk2CE8 = (s32) arg0->unk8;
    subroutine_arg0->unk2CDC = 2;
    glVertex3iv(subroutine_arg0 + 0x2CE0);
}

void gl_i_move(f64 arg0, f64 arg1) {
    s64 sp18;
    f64 sp10;

    sp10 = arg1;
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    sp18 = (s64) gl_wstatep;
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    sp18->unk2CE8 = (bitwise f32) sp10;
    sp18->unk2CE4 = (f32) subroutine_arg2;
    sp18->unk2CDC = 1;
    sp18->unk2CE0 = (f32) (second half of f64);
    glVertex3fv(sp18 + 0x2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_move(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-5078 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6438);
        saved_reg_gp->unk-5078 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_move(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_wstatep->unkD8(3);
    __iglooSetMoveDraw(1);
    subroutine_arg0->unk2CE0 = (f32) arg0->unk0;
    subroutine_arg0->unk2CE4 = (f32) arg0->unk4;
    subroutine_arg0->unk2CDC = 1;
    subroutine_arg0->unk2CE8 = (f32) arg0->unk8;
    glVertex3fv(subroutine_arg0 + 0x2CE0);
}

void gl_i_draw2s(s32 arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;

    sp20 = arg1;
    sp18 = (s64) gl_wstatep;
    __iglooCheckDrawRestart();
    sp18->unk2CE8 = 0;
    sp18->unk2CE4 = (s32) sp20;
    sp18->unk2CE0 = arg0;
    sp18->unk2CDC = 2;
    glVertex3iv(sp18 + 0x2CE0, sp18, sp20);
}

void gl_c_draw2s(s16 arg0, s16 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5074 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6428, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5074 = 1;
    }
    gl_compile(4, sp, var_a2, arg1);
}

void gl_n_draw2s(void *arg0) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = (s32) arg0->unk0;
    temp_s8->unk2CDC = 2;
    temp_s8->unk2CE8 = 0;
    temp_s8->unk2CE4 = (?32) arg0->unk2;
    glVertex3iv(&temp_s8->unk2CE0);
}

void gl_i_draw2i(s32 arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;

    sp20 = arg1;
    sp18 = (s64) gl_wstatep;
    __iglooCheckDrawRestart();
    sp18->unk2CE8 = 0;
    sp18->unk2CE4 = (s32) sp20;
    sp18->unk2CE0 = arg0;
    sp18->unk2CDC = 2;
    glVertex3iv(sp18 + 0x2CE0, sp18, sp20);
}

void gl_c_draw2i(s32 arg0, s32 arg1, s16 arg2) {
    s64 sp28;
    s16 var_a2;

    var_a2 = arg2;
    if (saved_reg_gp->unk-5070 == 0) {
        sp28 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6418, (s64) arg1);
        var_a2 = 1;
        saved_reg_gp->unk-5070 = 1;
    }
    gl_compile(6, sp, var_a2, (s16) arg1);
}

void gl_n_draw2i(void *arg0) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = (s32) arg0->unk0;
    temp_s8->unk2CDC = 2;
    temp_s8->unk2CE8 = 0;
    temp_s8->unk2CE4 = arg0->unk4;
    glVertex3iv(&temp_s8->unk2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24], gap at: 0x8. */
void gl_i_draw2(f32 arg0, f64 arg1) {
    gl_wstate *temp_s8;

    unksp8 = arg1;
    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = arg0;
    temp_s8->unk2CDC = 1;
    temp_s8->unk2CE4 = (?32) unksp8;
    temp_s8->unk2CE8 = 0;
    glVertex3fv(&temp_s8->unk2CE0);
}

void gl_c_draw2(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-506C == 0) {
        unksp20 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x6408);
        saved_reg_gp->unk-506C = 1;
    }
    gl_compile(6, sp);
}

void gl_n_draw2(void *arg0) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = (f32) arg0->unk0;
    temp_s8->unk2CDC = 1;
    temp_s8->unk2CE8 = 0;
    temp_s8->unk2CE4 = arg0->unk4;
    glVertex3fv(&temp_s8->unk2CE0);
}

void gl_i_draws(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s64 sp18;

    sp20 = arg2;
    sp28 = arg1;
    sp18 = (s64) gl_wstatep;
    __iglooCheckDrawRestart();
    sp18->unk2CE8 = (s32) sp20;
    sp18->unk2CE4 = (s32) sp28;
    sp18->unk2CE0 = arg0;
    sp18->unk2CDC = 2;
    glVertex3iv(sp18 + 0x2CE0, sp18, sp28, sp20);
}

void gl_c_draws(s16 arg0, s64 arg1, s16 arg2) {
    s64 sp30;
    s64 sp28;

    if (saved_reg_gp->unk-5068 == 0) {
        sp30 = arg1;
        sp28 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x63F8);
        saved_reg_gp->unk-5068 = 1;
    }
    gl_compile(6, sp, arg2);
}

void gl_n_draws(void *arg0) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = (s32) arg0->unk0;
    temp_s8->unk2CE4 = (?32) arg0->unk2;
    temp_s8->unk2CDC = 2;
    temp_s8->unk2CE8 = (?32) arg0->unk4;
    glVertex3iv(&temp_s8->unk2CE0);
}

void gl_i_drawi(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s64 sp18;

    sp20 = arg2;
    sp28 = arg1;
    sp18 = (s64) gl_wstatep;
    __iglooCheckDrawRestart();
    sp18->unk2CE8 = (s32) sp20;
    sp18->unk2CE4 = (s32) sp28;
    sp18->unk2CE0 = arg0;
    sp18->unk2CDC = 2;
    glVertex3iv(sp18 + 0x2CE0, sp18, sp28, sp20);
}

void gl_c_drawi(s32 arg0, s64 arg1, s32 arg2) {
    s64 sp38;
    s64 sp30;

    if (saved_reg_gp->unk-5064 == 0) {
        sp38 = arg1;
        sp30 = (s64) arg2;
        gl_intrptab_insert(&sub_0f030000 - 0x63E8);
        saved_reg_gp->unk-5064 = 1;
    }
    gl_compile(8, sp, (s16) arg2);
}

void gl_n_drawi(void *arg0) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = (s32) arg0->unk0;
    temp_s8->unk2CE4 = arg0->unk4;
    temp_s8->unk2CDC = 2;
    temp_s8->unk2CE8 = arg0->unk8;
    glVertex3iv(&temp_s8->unk2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c], gap at: 0x8. */
void gl_i_draw(f32 arg0, f64 arg1) {
    gl_wstate *temp_s8;

    unksp8 = arg1;
    unksp10 = arg1;
    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = arg0;
    temp_s8->unk2CDC = 1;
    temp_s8->unk2CE8 = second half of f64;
    temp_s8->unk2CE4 = (?32) unksp10;
    glVertex3fv(&temp_s8->unk2CE0);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x38, 0x3c], gap at: 0x30. */
void gl_c_draw(f32 arg0, f64 arg1) {
    if (saved_reg_gp->unk-5060 == 0) {
        unksp30 = arg1;
        unksp28 = arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x63D8);
        saved_reg_gp->unk-5060 = 1;
    }
    gl_compile(8, sp);
}

void gl_n_draw(void *arg0) {
    gl_wstate *temp_s8;

    temp_s8 = gl_wstatep;
    __iglooCheckDrawRestart();
    temp_s8->unk2CE0 = (f32) arg0->unk0;
    temp_s8->unk2CE4 = arg0->unk4;
    temp_s8->unk2CDC = 1;
    temp_s8->unk2CE8 = arg0->unk8;
    glVertex3fv(&temp_s8->unk2CE0);
}

void __iglooCheckDrawRestart(void) {
    s64 sp0;

    sp0 = (s64) gl_wstatep;
    if (gl_inMoveDraw == 0) {
        gl_wstatep->unkD8(3, gl_wstatep);
        __iglooSetMoveDraw(1);
        if (sp0->unk2CDC != 1) {
            glVertex3i(sp0->unk2CE0, sp0->unk2CE4, sp0->unk2CE8);
        } else {
            glVertex3f(sp0->unk2CE0, sp0->unk2CE8, M2C_ERROR(/* Read from unset register $a2 */));
        }
    }
}

void __iglooSetMoveDraw(s32 arg0) {
    s32 temp_a4;
    void *temp_a3;

    *(M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF40FB8)->unk-7E6C = arg0;
    temp_a3 = *(void **)0x1004;
    if (temp_a3 != NULL) {
        temp_a4 = temp_a3->unk60;
        if (arg0 != 0) {
            temp_a3->unk60 = (s32) (temp_a4 | 1);
        } else {
            temp_a3->unk60 = (s32) (temp_a4 & ~1);
        }
    }
}

void __iglooCloseMoveDraw(void) {
    ? (*temp_t9)();

    if ((__iglooGetCurrentContextInfo() != 0) && (gl_inMoveDraw != 0)) {
        if (gl_wstatep != NULL) {
            temp_t9 = gl_wstatep->unkDC;
            if (temp_t9 == NULL) {
                goto block_5;
            }
            temp_t9();
        } else {
block_5:
            glEnd();
        }
        __iglooSetMoveDraw(0);
    }
}

void __iglooCloseMoveDrawFromTable(void) {
    __iglooCloseMoveDraw();
}

void __iglooNCloseMoveDraw(void) {
    __iglooCloseMoveDraw();
}
