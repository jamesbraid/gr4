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
    /* 0x3C */ s32 unk3C;                           /* inferred */
    /* 0x40 */ s32 unk40;                           /* inferred */
    /* 0x44 */ ? *unk44;                            /* inferred */
    /* 0x48 */ ? *unk48;                            /* inferred */
} __GLimports;                                      /* size = 0x4C */

? *sub_0da90000(__GLcontext *, ?, s64, __GLcontext *); /* extern */

void __glMgrDLFlushInit(__GLcontext *gc, ...) {
    gc->imports.unk48 = NULL;
    gc->imports.unk44 = NULL;
    gc->imports.unk40 = 0;
    gc->imports.unk3C = 0;
}

void __glMgrDLFlushClose(__GLcontext *gc, void *arg1, ...) {
    s64 sp20;
    ? *temp_a1;
    ? *temp_a1_2;
    ? *var_s0;
    ? *var_s0_2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_s0 = arg1->unk44;
    if (var_s0 != NULL) {
        do {
            temp_a1 = var_s0;
            var_s0 = *var_s0;
            gc->imports.free(gc, temp_a1);
        } while (var_s0 != NULL);
        var_ra = sp20;
    }
    var_s0_2 = arg1->unk48;
    if (var_s0_2 != NULL) {
        sp20 = var_ra;
        do {
            temp_a1_2 = var_s0_2;
            var_s0_2 = *var_s0_2;
            gc->imports.free(gc, temp_a1_2);
        } while (var_s0_2 != NULL);
    }
}

void flushSegsNow(__GLcontext *arg0, void *arg1, s32 arg3) {
    s64 sp8;
    s64 sp0;
    ? *temp_a3;
    ? *temp_s2;
    ? *var_a2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 var_a1;
    s32 var_a3;
    s32 var_s1;

    var_a3 = arg3;
    var_a2 = arg1->unk8;
    sp0 = (s64) arg1;
    sp8 = (s64) __glCurrentContext;
    if (var_a2 != NULL) {
        var_s1 = var_a2->unk8;
        var_a1 = var_a2->unk4;
loop_4:
        temp_s2 = var_a2;
        var_a2 = *var_a2;
        if (var_a2 != NULL) {
            temp_a4 = var_a2->unk4;
            temp_a0 = var_a1 - temp_a4;
            if (temp_a0 > 0) {
                var_s1 += temp_a0 >> 2;
                var_a1 = temp_a4;
            }
            var_a3 = (var_s1 * 4) + var_a1;
            temp_a0_2 = ((var_a2->unk8 * 4) + temp_a4) - var_a3;
            if (temp_a0_2 > 0) {
                var_a3 = temp_a0_2 >> 2;
                var_s1 += var_a3;
            }
            goto loop_4;
        }
        arg0->imports.sprintf = (s32 (*)(__GLcontext *, s8 *, s8 *, ...))8;
        __glMgrDLPoolToPtr(arg0, arg0, var_a1, var_a2, var_a3, 8);
        arg0->imports.wscx = M2C_ERROR(/* Read from unset register $v0 */);
        arg0->imports.other = (void *) (var_s1 * 4);
        __glMgrDLIoctl((__GLcontext *) sp8, sp8, 0x6D67000B, arg0);
        *temp_s2 = sp0->unkC;
        temp_a3 = sp0->unk8;
        sp0->unk0 = 0;
        sp0->unk8 = NULL;
        sp0->unkC = temp_a3;
    }
}

void implicitFlush(__GLcontext *arg0, void *arg1) {
    s32 temp_a2;

    if (!(arg1->unk4 & 1)) {
        temp_a2 = arg0->imports.fatal;
        if ((u32) arg1->unk0 >= (u32) (1 << temp_a2)) {
            __glMgrDLFlushClose(arg0, temp_a2);
        }
    }
}

void __glMgrDLFlushDefer(__GLcontext *gc, s32 arg1, ...) {
    s32 temp_a3;

    temp_a3 = gc->imports.unk40;
    if (arg1 != 0) {
        gc->imports.unk40 = temp_a3 | 1;
    } else {
        gc->imports.unk40 = temp_a3 & ~1;
        __glMgrDLFlushClose(gc, &gc->imports.unk3C, temp_a3);
    }
}

void __glMgrDLFlushSeg(__GLcontext *gc, s64 arg1, ...) {
    s64 sp10;
    ? *var_v0;
    s32 temp_a2;
    s32 temp_a3;
    s64 var_a4;

    var_a4 = arg1;
    if (__glCurrentContext->unk9D54 != 0) {
        var_v0 = gc->imports.unk48;
        if (var_v0 == NULL) {
            sp10 = var_a4;
            var_v0 = sub_0da90000(__glCurrentContext, 0xC, var_a4, __glCurrentContext);
            var_a4 = sp10;
        } else {
            gc->imports.unk48 = *var_v0;
        }
        var_v0->unk0 = gc->imports.unk44;
        gc->imports.unk44 = var_v0;
        var_v0->unk4 = (s32) var_a4->unk0;
        var_v0->unk8 = (s32) var_a4->unk4;
        temp_a3 = gc->imports.unk3C;
        temp_a2 = var_a4->unk4 + temp_a3;
        gc->imports.unk3C = temp_a2;
        __glMgrDLFlushClose(gc, gc, &gc->imports.unk3C, temp_a2, temp_a3, var_a4);
    }
}

void __glMgrDLFlushPool(__GLcontext *gc, ...) {
    __glMgrDLFlushClose(gc, &gc->imports.unk3C);
}
