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

void Clear(void) {
    *(s32 *)0x74080 = 0x4A00;
}

void Store(void) {

}

void __glMgrInitDepth(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;

    sp18 = arg1;
    __glInitDepth32();
    gc->imports.getenv = (s8 *(*)(__GLcontext *, s8 *))4;
    gc->exports.destroyContext = (u8 (*)(__GLcontext *))0xFFFFFF;
    gc->imports.unk48 = 0xFFFFFF;
    gc->exports.endDispatchOverride = &sub_0da70000 + 0x21CC;
    gc->exports.beginDispatchOverride = &sub_0da70000 + 0x21E0;
    gc->imports.free = sp18->unkC38;
}
