extern ? sub_0da90000;

void Clear(void) {
    *(s32 *)0x74080 = 0x4C00;
}

void Store(void) {

}

void Pick(void) {

}

void __glMgrInitStencil(__GLcontext *gc, s64 arg1, ...) {
    s64 sp18;

    sp18 = arg1;
    __glInitBuffer();
    gc->imports.getenv = NULL;
    gc->exports.shareContext = &sub_0da90000 + 0x2B50;
    gc->exports.copyContext = &sub_0da90000 + 0x2B48;
    gc->exports.beginDispatchOverride = &sub_0da90000 + 0x2B34;
    gc->imports.free = sp18->unkC3C;
}
