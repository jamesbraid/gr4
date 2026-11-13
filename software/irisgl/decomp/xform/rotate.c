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
    /* 0x00D8 */ void (*unkD8)();                   /* inferred */
    /* 0x00DC */ char padDC[4];
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ char pad100[8];                    /* maybe part of screenState[3]? */
    /* 0x0108 */ s16 unk108;                        /* inferred */
    /* 0x010A */ char pad10A[0xA36];                /* maybe part of unk108[0x51C]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x358];               /* maybe part of currentVertex[0x36]? */
    /* 0x2E58 */ s8 unk2E58;                        /* inferred */
    /* 0x2E59 */ char pad2E59[0x8F];                /* maybe part of unk2E58[0x90]? */
} gl_wstate;                                        /* size = 0x2EE8 */

extern s32 gl_openobjhdr;
extern ? sub_0f030000;

void gl_i_gl_rotatex(void) {
    im_rotatex();
}

void gl_c_gl_rotatex(f32 arg0) {
    if (saved_reg_gp->unk-4EE8 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5D78);
        saved_reg_gp->unk-4EE8 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_gl_rotatex(f32 *arg0) {
    im_rotatex(*arg0);
}

void gl_i_gl_rotatey(void) {
    im_rotatey();
}

void gl_c_gl_rotatey(f32 arg0) {
    if (saved_reg_gp->unk-4EE4 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5D68);
        saved_reg_gp->unk-4EE4 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_gl_rotatey(f32 *arg0) {
    im_rotatey(*arg0);
}

void gl_i_gl_rotatez(void) {
    im_rotatez();
}

void gl_c_gl_rotatez(f32 arg0) {
    if (saved_reg_gp->unk-4EE0 == 0) {
        gl_intrptab_insert(&sub_0f030000 - 0x5D58);
        saved_reg_gp->unk-4EE0 = 1;
    }
    gl_compile(4, sp);
}

void gl_n_gl_rotatez(f32 *arg0) {
    im_rotatez(*arg0);
}

void gl_i_rotate(s32 arg0, s32 arg1, ? arg2) {
    ? var_a2;

    var_a2 = arg2;
    if ((arg1 != 0x58) && (var_a2 = 0x59, (arg1 != 0x78))) {
        switch (arg1) {                             /* irregular */
        default:
            gl_ErrorHandler(0x28, 2, sub_0f030000.unk-5D3C);
            return;
        case 0x5A:
        case 0x7A:
            gl_i_gl_rotatez((f32) arg0 * 0.1f, 0x59);
            break;
        case 0x59:
        case 0x79:
            gl_i_gl_rotatey((f32) arg0 * 0.1f, 0x59);
            break;
        }
    } else {
        gl_i_gl_rotatex((f32) arg0 * 0.1f, var_a2);
    }
}

void gl_c_rotate(s32 arg0, s32 arg1, ? arg2) {
    ? var_a2;

    var_a2 = arg2;
    if ((arg1 != 0x58) && (var_a2 = 0x59, (arg1 != 0x78))) {
        switch (arg1) {                             /* irregular */
        default:
            gl_ErrorHandler(0x28, 2, sub_0f030000.unk-5D3C);
            return;
        case 0x5A:
        case 0x7A:
            gl_c_gl_rotatez((f32) arg0 * 0.1f, 0x59);
            break;
        case 0x59:
        case 0x79:
            gl_c_gl_rotatey((f32) arg0 * 0.1f, 0x59);
            break;
        }
    } else {
        gl_c_gl_rotatex((f32) arg0 * 0.1f, var_a2);
    }
}

void gl_i_rot(s32 arg0, s32 arg1) {
    s32 var_a0;

    var_a0 = arg0;
    if ((arg1 != 0x58) && (var_a0 = 0x59, (arg1 != 0x78))) {
        switch (arg1) {                             /* irregular */
        default:
            gl_ErrorHandler(0x28, 2, sub_0f030000.unk-5D2C);
            return;
        case 0x5A:
        case 0x7A:
            gl_i_gl_rotatez(1.25e-43f);
            break;
        case 0x59:
        case 0x79:
            gl_i_gl_rotatey(1.25e-43f);
            break;
        }
    } else {
        gl_i_gl_rotatex((bitwise f32) var_a0);
    }
}

void gl_c_rot(s32 arg0, s32 arg1) {
    s32 var_a0;

    var_a0 = arg0;
    if ((arg1 != 0x58) && (var_a0 = 0x59, (arg1 != 0x78))) {
        switch (arg1) {                             /* irregular */
        default:
            gl_ErrorHandler(0x28, 2, sub_0f030000.unk-5D3C);
            return;
        case 0x5A:
        case 0x7A:
            gl_c_gl_rotatez(1.25e-43f);
            break;
        case 0x59:
        case 0x79:
            gl_c_gl_rotatey(1.25e-43f);
            break;
        }
    } else {
        gl_c_gl_rotatex((bitwise f32) var_a0);
    }
}

void gl_rotatex(void) {
    if (gl_openobjhdr == 0) {
        gl_i_gl_rotatex();
        return;
    }
    gl_c_gl_rotatex();
}

void gl_rotatey(void) {
    if (gl_openobjhdr == 0) {
        gl_i_gl_rotatey();
        return;
    }
    gl_c_gl_rotatey();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x10, 0x14, 0x18, 0x1c], gap at: 0x8. */
void im_rotatex(s32 arg0) {
    s32 var_a0;

    var_a0 = arg0;
    gl_wstatep->unk2E58 = 0;
    if ((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) {
        unksp8 = (s64) gl_wstatep;
        if (gl_wstatep->unk108 == 1) {
            __iglooRestoreUsrMat(gl_wstatep, 1);
            var_a0 = 1;
            unksp8->unkB5C = 1;
            unksp8->unkD8 = slowBegin;
        }
    }
    __iglooRotate(arg0, 0.0f, var_a0);
}

void im_rotatey(f32 arg0) {
    gl_wstatep->unk2E58 = 0;
    if (((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) && (gl_wstatep->unk108 == 1)) {
        gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
        gl_wstatep->unkD8 = slowBegin;
        __iglooRestoreUsrMat(gl_wstatep, 1);
    }
    __iglooRotate(arg0, 1.0f);
}

void im_rotatez(f32 arg0) {
    gl_wstatep->unk2E58 = 0;
    if (((bitwise s32) gl_wstatep->modelviewStack.stack[0][1][0] == 1) && (gl_wstatep->unk108 == 1)) {
        gl_wstatep->modelviewStack.stack[0][1][1] = 1e-45f;
        gl_wstatep->unkD8 = slowBegin;
        __iglooRestoreUsrMat(gl_wstatep, 1);
    }
    __iglooRotate(arg0, 0.0f);
}
