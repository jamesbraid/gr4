? glFogf(f32, ?, gl_wstate *, gl_wstate *);         /* extern */
? glFogfv(?, f32 *);                                /* extern */
extern ? sub_0f030000;

void gl_fogvertex(f32 arg0, void *arg1) {
    f32 temp_a0;
    f32 var_f12;
    gl_wstate *temp_s0;

    var_f12 = arg0;
    temp_s0 = gl_wstatep;
    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        gl_wstatep->modelviewStack.stack[3][1][1] = 1.0f;
        switch (arg0) {                             /* switch 1 */
        default:                                    /* switch 1 */
            return;
        case 1:                                     /* switch 1 */
            temp_a0 = temp_s0->modelviewStack.stack[3][0][1];
            temp_s0->modelviewStack.stack[3][0][0] = 1e-45f;
            switch ((bitwise s32) temp_a0) {        /* switch 2; irregular */
            case 0x2601:                            /* switch 2 */
                glFogf(4.085e-42f, 0x2601, gl_wstatep);
                glFogf(4.086e-42f);
                break;
            case 0x800:                             /* switch 2 */
            case 0x801:                             /* switch 2 */
                glFogf(4.083e-42f, 0x2601, gl_wstatep);
                break;
            }
            glFogfv(0xB66, &temp_s0->modelviewStack.stack[3][0][2]);
            glFogf(4.088e-42f);
            __iglooSetEnable(0xB60, 1);
            return;
        case 0:                                     /* switch 1 */
            temp_s0->modelviewStack.stack[3][0][0] = 0.0f;
            __iglooSetEnable(0xB60, 0, 0x2601, gl_wstatep);
            return;
        case 2:                                     /* switch 1 */
        case 4:                                     /* switch 1 */
            if (arg1 == NULL) {

            } else {
                var_f12 = second half of f64;
                temp_s0->modelviewStack.stack[3][1][2] = (f32) ((f64) arg1->unk0 * 5.5);
                temp_s0->modelviewStack.stack[3][0][2] = arg1->unk4;
                temp_s0->modelviewStack.stack[3][0][3] = arg1->unk8;
                temp_s0->modelviewStack.stack[3][1][0] = arg1->unkC;
            }
            glFogf(var_f12, 0xB62, (gl_wstate *)0x2601, gl_wstatep);
            glFogfv(0xB66, &temp_s0->modelviewStack.stack[3][0][2]);
            temp_s0->modelviewStack.stack[3][0][1] = 2.87e-42f;
            return;
        case 6:                                     /* switch 1 */
        case 7:                                     /* switch 1 */
            if (arg1 != NULL) {
                temp_s0->modelviewStack.stack[3][1][2] = arg1->unk0 * 2.345208f;
                temp_s0->modelviewStack.stack[3][0][2] = arg1->unk4;
                temp_s0->modelviewStack.stack[3][0][3] = arg1->unk8;
                temp_s0->modelviewStack.stack[3][1][0] = arg1->unkC;
            }
            glFogf(4.083e-42f, 0x2601, gl_wstatep);
            glFogfv(0xB66, &temp_s0->modelviewStack.stack[3][0][2]);
            temp_s0->modelviewStack.stack[3][0][1] = 2.871e-42f;
            return;
        case 3:                                     /* switch 1 */
        case 5:                                     /* switch 1 */
            if (arg1 == NULL) {

            } else {
                temp_s0->modelviewStack.stack[3][1][3] = arg1->unk0;
                temp_s0->modelviewStack.stack[3][2][0] = arg1->unk4;
                temp_s0->modelviewStack.stack[3][0][2] = arg1->unk8;
                temp_s0->modelviewStack.stack[3][0][3] = arg1->unkC;
                temp_s0->modelviewStack.stack[3][1][0] = arg1->unk10;
            }
            glFogf(4.085e-42f, 0x2601, gl_wstatep);
            glFogf(4.086e-42f);
            glFogfv(0xB66, &temp_s0->modelviewStack.stack[3][0][2]);
            temp_s0->modelviewStack.stack[3][0][1] = 1.3633e-41f;
            return;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void gl_i_fogvertex(u64 arg0, s64 arg1) {
    if (gl_inMoveDraw != 0) {
        unksp10 = arg1;
        unksp8 = arg0;
        __iglooNCloseMoveDraw();
    }
    gl_fogvertex(arg0, (void *) arg1);
}

void gl_c_fogvertex(s32 arg0, void *arg1) {
    s64 spC0;
    s64 spB8;
    ? spC;
    s32 sp8;
    s32 sp4;
    void (*sp0)(void *);
    ? *var_a3;
    ? var_a2;
    f32 temp_f1;
    s32 temp_a0;
    s32 var_a6;
    s32 var_a7;
    s64 var_ra;
    void *var_a1;
    void *var_a5;

    var_ra = saved_reg_ra;
    if (saved_reg_gp->unk-513C == 0) {
        spB8 = (s64) arg1;
        gl_intrptab_insert(&sub_0f030000 - 0x7BE0);
        var_ra = spC0;
        saved_reg_gp->unk-513C = 1;
    }
    var_a2 = 4;
    if ((arg0 != 2) && (arg0 != 4) && (arg0 != 6) && (arg0 != 7)) {
        var_a2 = 5;
        if ((arg0 != 3) && (var_a7 = 0, (arg0 != 5))) {

        } else {
            var_a7 = 5;
        }
    } else {
        var_a7 = 4;
    }
    var_a3 = &spC;
    var_a6 = var_a7 & 3;
    sp4 = arg0;
    temp_a0 = (var_a7 * 2) + 8;
    sp8 = temp_a0;
    sp0 = gl_n_fogvertex;
    if (var_a7 > 0) {
        var_a5 = arg1;
        if (var_a6 != 0) {
            do {
                var_a5 += 4;
                var_a3 += 4;
                var_a6 -= 1;
                var_a3->unk-4 = (f32) var_a5->unk-4;
            } while (var_a6 != 0);
        }
        if ((var_a7 >> 2) != 0) {
            var_a1 = var_a5;
            do {
                var_a3->unk0 = (f32) var_a1->unk0;
                var_a3->unk4 = (f32) var_a1->unk4;
                var_a3->unk8 = (f32) var_a1->unk8;
                var_a3 += 0x10;
                temp_f1 = var_a1->unkC;
                var_a1 += 0x10;
                var_a3->unk-4 = temp_f1;
            } while (var_a1 != ((var_a7 * 4) + arg1));
        }
        spC0 = var_ra;
    }
    spC0 = var_ra;
    gl_compile(temp_a0, sp, var_a2, var_a3);
}

void gl_n_fogvertex(void *arg0) {
    if (gl_inMoveDraw != 0) {
        __iglooNCloseMoveDraw();
    }
    gl_fogvertex((u64) arg0->unk0, arg0 + 8);
}
