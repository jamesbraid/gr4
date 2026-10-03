typedef struct __GLcontextRec {
    /* 0x0000 */ __GLimports imports;
    /* 0x004C */ __GLexports exports;
    /* 0x0094 */ s32 gcState;
    /* 0x0098 */ char pad98[8];                     /* maybe part of gcState[3]? */
    /* 0x00A0 */ void *unkA0;                       /* inferred */
    /* 0x00A4 */ void *unkA4;                       /* inferred */
    /* 0x00A8 */ void *unkA8;                       /* inferred */
    /* 0x00AC */ void *unkAC;                       /* inferred */
    /* 0x00B0 */ char padB0[8];                     /* maybe part of unkAC[3]? */
    /* 0x00B8 */ void *unkB8;                       /* inferred */
    /* 0x00BC */ void *unkBC;                       /* inferred */
    /* 0x00C0 */ char padC0[8];                     /* maybe part of unkBC[3]? */
    /* 0x00C8 */ void (*unkC8)();                   /* inferred */
    /* 0x00CC */ char padCC[0xC];                   /* maybe part of unkC8[4]? */
    /* 0x00D8 */ void *unkD8;                       /* inferred */
    /* 0x00DC */ char padDC[0x58C];                 /* maybe part of unkD8[0x164]? */
    /* 0x0668 */ f32 unk668;                        /* inferred */
    /* 0x066C */ f32 unk66C;                        /* inferred */
    /* 0x0670 */ char pad670[0x5A0];                /* maybe part of unk66C[0x169]? */
    /* 0x0C10 */ u32 beginMode;
    /* 0x0C14 */ enum GLenum renderMode;
    /* 0x0C18 */ s32 error;
    /* 0x0C1C */ __GLcontextModes modes;
    /* 0x0C74 */ __GLcontextModes readModes;
    /* 0x0CCC */ u8 yInverted;
    /* 0x0CCD */ char padCCD[0x5F];                 /* maybe part of yInverted[0x60]? */
    /* 0x0D2C */ s32 unkD2C;                        /* inferred */
    /* 0x0D30 */ s32 unkD30;                        /* inferred */
    /* 0x0D34 */ char padD34[0x2058];               /* maybe part of unkD30[0x817]? */
    /* 0x2D8C */ u32 validateMask;
    /* 0x2D90 */ u32 dirtyMask;
    /* 0x2D94 */ __GLcolorBuffer *drawBuffer;
    /* 0x2D98 */ __GLcolorBuffer *readBuffer;
    /* 0x2D9C */ char pad2D9C[0x10];                /* maybe part of readBuffer[5]? */
    /* 0x2DAC */ void (*validate)(__GLcontext *);
    /* 0x2DB0 */ char pad2DB0[0x1C];                /* maybe part of validate[8]? */
    /* 0x2DCC */ __GLprocs procs;
    /* 0x3120 */ char pad3120[0x45F8];              /* maybe part of procs[0x16]? */
    /* 0x7718 */ s32 unk7718;                       /* inferred */
    /* 0x771C */ char pad771C[0x478];               /* maybe part of unk7718[0x11F]? */
    /* 0x7B94 */ __GLcolorBuffer *front;
    /* 0x7B98 */ __GLcolorBuffer *back;
    /* 0x7B9C */ __GLcolorBuffer frontBuffer;
    /* 0x7C78 */ __GLcolorBuffer backBuffer;
    /* 0x7D54 */ __GLcolorBuffer *auxBuffer;
    /* 0x7D58 */ __GLstencilBuffer stencilBuffer;
    /* 0x7DD0 */ __GLdepthBuffer depthBuffer;
    /* 0x7E54 */ __GLaccumBuffer accumBuffer;
    /* 0x7EC4 */ char pad7EC4[0x1C];
    /* 0x7EE0 */ s32 fd;
    /* 0x7EE4 */ s32 boardIndex;
    /* 0x7EE8 */ s32 zDepth;
    /* 0x7EEC */ s32 stencilDepth;
    /* 0x7EF0 */ s8 rendererString[0x28];
    /* 0x7F18 */ u32 swapInterval;
    /* 0x7F1C */ u8 hwFlags;
    /* 0x7F1D */ u8 haveZ;
    /* 0x7F1E */ u8 haveStencil;
    /* 0x7F1F */ u8 fastMode;
    /* 0x7F20 */ void (*primitiveProcs[0xA])(__GLcontext *);
} __GLcontext;                                      /* size = 0x7F48 */

typedef struct __GLexportsRec {
    /* 0x00 */ u8 (*destroyContext)(__GLcontext *);
    /* 0x04 */ u8 (*loseCurrent)(__GLcontext *);
    /* 0x08 */ u8 (*makeCurrent)(__GLcontext *);
    /* 0x0C */ u8 (*shareContext)(__GLcontext *, __GLcontext *);
    /* 0x10 */ u8 (*copyContext)(__GLcontext *, __GLcontext *, u32);
    /* 0x14 */ u8 (*forceCurrent)(__GLcontext *);
    /* 0x18 */ u8 (*notifyResize)(__GLcontext *);
    /* 0x1C */ void (*notifyDestroy)(__GLcontext *);
    /* 0x20 */ void (*notifySwapBuffers)(__GLcontext *);
    /* 0x24 */ void *(*dispatchExec)(__GLcontext *);
    /* 0x28 */ void (*beginDispatchOverride)(__GLcontext *);
    /* 0x2C */ void (*endDispatchOverride)(__GLcontext *);
    /* 0x30 */ char pad30[4];
    /* 0x34 */ f32 unk34;                           /* inferred */
    /* 0x38 */ char pad38[0x10];                    /* maybe part of unk34[5]? */
} __GLexports;                                      /* size = 0x48 */

typedef struct __GLimportsRec {
    /* 0x00 */ void *(*malloc)(__GLcontext *, u32);
    /* 0x04 */ void *(*calloc)(__GLcontext *, u32, u32);
    /* 0x08 */ void *(*realloc)(__GLcontext *, void *, u32);
    /* 0x0C */ void (*free)(__GLcontext *, void *);
    /* 0x10 */ void (*warning)(__GLcontext *, s8 *);
    /* 0x14 */ void (*fatal)(__GLcontext *, s8 *);
    /* 0x18 */ s8 *(*getenv)(__GLcontext *, s8 *);
    /* 0x1C */ s32 (*atoi)(__GLcontext *, s8 *);
    /* 0x20 */ s32 (*sprintf)(__GLcontext *, s8 *, s8 *, ...);
    /* 0x24 */ void *(*fopen)(__GLcontext *, s8 *, s8 *);
    /* 0x28 */ s32 (*fclose)(__GLcontext *, void *);
    /* 0x2C */ s32 (*fprintf)(__GLcontext *, void *, s8 *, ...);
    /* 0x30 */ void *(*getDrawablePrivate)(__GLcontext *);
    /* 0x34 */ void *wscx;
    /* 0x38 */ void *other;
    /* 0x3C */ char pad3C[0xC];                     /* maybe part of other[4]? */
    /* 0x48 */ s32 unk48;                           /* inferred */
} __GLimports;                                      /* size = 0x4C */

extern ? sub_0da70000;

void Store(void *arg1) {
    __GLcontext *temp_s5;
    f32 temp_f12;
    s32 temp_a1;
    s32 temp_a2;

    temp_s5 = __glCurrentContext;
    *(s32 *)0x74080 = 0x1600;
    __glMgrim_Indexf(arg1->unkC);
    temp_a2 = temp_s5->unkD2C;
    temp_a1 = arg1->unk4;
    temp_f12 = (f32) (arg1->unk0 - temp_a2);
    if (temp_s5->unk7718 & 0x4000) {
        __glMgrim_Vertex3f(temp_f12, (f32) (temp_a1 - temp_s5->unkD30), ((f32) ((u64) ((s64) arg1->unk8 << 0x20) >> 0x20) - temp_s5->unk66C) / temp_s5->unk668);
    } else {
        __glMgrim_Vertex2f(temp_f12, (f32) (temp_a1 - temp_a2));
    }
    *(void *)0x74080 = 0x2000;
}

void Clear(void) {
    *(s32 *)0x74080 = 0x1500;
}

void Resize(void **arg0, s32 arg1, s32 arg2) {
    if ((*arg0)->unk925C != 0) {
        __glResizeBuffer(arg1, arg2);
        *(s32 *)0x74080 = 0x3310;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = arg1;
        *(s32 *)0x74080 = arg2;
        *(s32 *)0x74080 = 0x2A04;
        *(s32 *)0x74080 = 0x1701;
        *(s32 *)0x74080 = 0x2C00;
        *(s32 *)0x74080 = 0x3518;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = (bitwise s32) (f32) arg1;
        *(s32 *)0x74080 = 0;
        *(s32 *)0x74080 = (bitwise s32) (f32) arg2;
        *(s32 *)0x74080 = 0x3F800000;
        *(s32 *)0x74080 = 0xBF800000;
    }
}

void Pick(void) {

}

void StoreSpan(void *arg0) {
    f32 *var_s0;
    f32 temp_f12;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 var_f20;
    s32 temp_s4;
    s32 temp_t9;
    s32 var_s2;

    var_s0 = arg0->unk7734;
    *(s32 *)0x74080 = 0x1600;
    temp_t9 = arg0->unkD2C;
    var_f20 = (f32) ((u64) ((s64) arg0->unk7630 << 0x20) >> 0x20);
    temp_f22 = (f32) (arg0->unk762C - temp_t9);
    temp_f26 = (f32) arg0->unk76A8;
    var_s2 = arg0->unk7628 - temp_t9;
    temp_s4 = arg0->unk765C + var_s2;
    temp_f24 = (f32) (1.0 / (f64) arg0->unk668);
    if (var_s2 < temp_s4) {
loop_4:
        __glMgrim_Indexf(*var_s0);
        var_s0 += 0x10;
        temp_f12 = (f32) var_s2;
        if (!(arg0->unk7718 & 0x4000)) {
            __glMgrim_Vertex2f(temp_f12, temp_f22);
        } else {
            __glMgrim_Vertex3f(temp_f12, temp_f22, (var_f20 - arg0->unk66C) * temp_f24);
        }
        var_s2 += 1;
        var_f20 += temp_f26;
        if (temp_s4 != var_s2) {
            goto loop_4;
        }
    }
    *(void *)0x74080 = 0x2000;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x60, 0x64], gap at: 0x58. */
void StoreStippledSpan(void *arg0) {
    f32 *var_s2;
    f32 temp_f12;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 var_f20;
    s32 *var_s7;
    s32 temp_s5;
    s32 var_s4;
    s32 var_s6;
    s64 var_s1;
    s64 var_s4_2;
    u32 var_s0;

    var_s2 = arg0->unk7734;
    var_s7 = arg0->unk773C;
    var_f20 = (f32) ((u64) ((s64) arg0->unk7630 << 0x20) >> 0x20);
    temp_f26 = (f32) arg0->unk76A8;
    temp_f22 = (f32) (arg0->unk762C - arg0->unkD30);
    var_s6 = arg0->unk765C;
    *(s32 *)0x74080 = 0x1600;
    var_s1 = arg0->unk7628 - arg0->unkD2C;
    temp_f24 = (f32) (1.0 / (f64) arg0->unk668);
    if (var_s6 != 0) {
loop_4:
        var_s4 = var_s6;
        if (var_s6 >= 0x21) {
            var_s4 = 0x20;
        }
        var_s0 = 0x80000000;
        temp_s5 = *var_s7;
        var_s6 -= var_s4;
        var_s4_2 = var_s4 - 1;
        var_s7 += 4;
        if (var_s4_2 >= 0) {
            unksp58 = var_s4_2;
            unksp50 = var_s1;
loop_10:
            var_s4_2 -= 1;
            if (temp_s5 & var_s0) {
                __glMgrim_Indexf(*var_s2);
                temp_f12 = (f32) var_s1;
                if (!(arg0->unk7718 & 0x4000)) {
                    __glMgrim_Vertex2f(temp_f12, temp_f22);
                } else {
                    __glMgrim_Vertex3f(temp_f12, temp_f22, (var_f20 - arg0->unk66C) * temp_f24);
                }
            }
            var_s0 = var_s0 >> 1;
            var_s2 += 0x10;
            var_f20 += temp_f26;
            var_s1 += 1;
            if (var_s4_2 != -1) {
                goto loop_10;
            }
            var_s1 = unksp58 + unksp50 + 1;
        }
        if (var_s6 != 0) {
            goto loop_4;
        }
    }
    *(void *)0x74080 = 0x2000;
}

void ReadColor(s32 arg1, s32 arg2, void *arg3) {
    __glMgrim_ReadPixels(arg1, arg2, 1, 1, GL_COLOR_INDEX, GL_FLOAT, arg3);
}

void __glMgrInitCI(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;
    void (*temp_v1)(__GLcontext *, void *);
    void *temp_a3;

    sp18 = arg1;
    __glInitBuffer();
    gc->imports.other = &sub_0da70000 - 0x2564;
    gc->imports.getenv = NULL;
    gc->imports.malloc = (void *(*)(__GLcontext *, u32)) sp18;
    temp_a3 = &sub_0da70000 - 0x2150;
    temp_v1 = sp18->unkC40;
    gc->unkAC = temp_a3;
    gc->unkA8 = temp_a3;
    gc->unkB8 = &sub_0da70000 - 0x2484;
    gc->unkA4 = &sub_0da70000 - 0x266C;
    gc->exports.unk34 = 1.0f;
    gc->exports.forceCurrent = (u8 (*)(__GLcontext *))0x3F800000;
    gc->exports.copyContext = (u8 (*)(__GLcontext *, __GLcontext *, u32))0x3F800000;
    gc->exports.shareContext = (u8 (*)(__GLcontext *, __GLcontext *))0x3F800000;
    gc->unkC8 = __glFetchSpan;
    gc->unkBC = &sub_0da70000 - 0x2330;
    gc->unkA0 = &sub_0da70000 - 0x248C;
    gc->imports.free = temp_v1;
    gc->imports.unk48 = (1 << (s32) temp_v1) - 1;
    gc->unkD8 = &sub_0da70000 - 0x2578;
    *(void (**)(__GLcontext *, void *))0x74080 = (void (*)(__GLcontext *, void *))0xA04;
    *(void (**)(__GLcontext *, void *))0x74080 = sp18->unkC40;
}
