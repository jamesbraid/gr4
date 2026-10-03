extern s32 MgrasPrevVidTexture;

void __glMgrBeginPoints(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1600;
    gc->procs.table[0x64] = __glMgrEndPoints;
}

void __glMgrBeginLines(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1700;
    gc->procs.table[0x64] = __glMgrEndLines;
}

void __glMgrBeginLStrip(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1800;
    gc->procs.table[0x64] = __glMgrEndLStrip;
}

void __glMgrBeginLLoop(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1900;
    gc->procs.table[0x64] = __glMgrEndLLoop;
}

void __glMgrBeginTriangles(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1A00;
    gc->procs.table[0x64] = __glMgrEndTriangles;
}

void __glMgrBeginTStrip(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1B00;
    gc->procs.table[0x64] = __glMgrEndTStrip;
}

void __glMgrBeginTFan(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1C00;
    gc->procs.table[0x64] = __glMgrEndTFan;
}

void __glMgrBeginQuads(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1D00;
    gc->procs.table[0x64] = __glMgrEndQuads;
}

void __glMgrBeginQStrip(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1E00;
    gc->procs.table[0x64] = __glMgrEndQStrip;
}

void __glMgrBeginPolygon(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x1F00;
    gc->procs.table[0x64] = __glMgrEndPolygon;
}

void __glMgrEndPoints(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2000;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndLines(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2100;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndLStrip(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2200;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndLLoop(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2300;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndTriangles(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2400;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndTStrip(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2500;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndTFan(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2600;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndQuads(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2700;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndQStrip(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2800;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndPolygon(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0x2900;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrEndGeneric(__GLcontext *gc, ...) {
    *(s32 *)0x74080 = 0xCC00;
    gc->procs.table[0x64] = __glNop;
}

void __glMgrim_Begin(enum GLenum mode) {
    s64 sp20;
    s64 sp18;
    __GLcontext *temp_s0;
    s32 var_a1;
    s64 var_ra;
    void *temp_a0;
    void *var_a3;

    var_ra = saved_reg_ra;
    temp_s0 = __glCurrentContext;
    if (__glBeginMode & 1) {
        __glSetError(0x502);
        return;
    }
    if (mode < 0xAU) {
        var_a3 = temp_s0 + 0x10000;
        temp_a0 = temp_s0->unk8A2C;
        if (temp_a0 != NULL) {
            var_a1 = temp_a0->unkC4;
            if (var_a1 == 0) {
                sp20 = (s64) var_a3;
                mgrTM_RefreshDim(temp_a0, var_a1);
                var_ra = sp18;
                var_a1 = var_a3->unk-75D4->unkC4;
            }
            if (MgrasPrevVidTexture != 0) {
                sp20 = (s64) var_a3;
                sp18 = var_ra;
                mgrTM_VidTexWait(temp_s0, var_a1, 1, (s64) var_a3);
                var_a3 = (void *) sp20;
                var_a1 = var_a3->unk-75D4->unkC4;
            }
            sp18 = var_ra;
            if (var_a3->unk-6E04->unk1E4 != var_a1) {
                mgrTM_DrawSetup(temp_s0, var_a1);
            }
        }
        __glBeginMode = 1;
        ((mode * 4) + temp_s0)->unk2F44(temp_s0);
        return;
    }
    __glSetError(0x500);
}

void __glMgrim_End(void) {
    if (__glBeginMode != 0) {
        ((? (*)(__GLcontext *)) __glCurrentContext->procs.table[0x64])(__glCurrentContext);
        __glBeginMode = 0;
        return;
    }
    __glSetError(0x502);
}
