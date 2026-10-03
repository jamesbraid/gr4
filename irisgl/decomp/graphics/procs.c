s32 dlopen(void *, ?);                              /* extern */
void *dlsym(s32);                                   /* extern */
? glNormal3fv(void *);                              /* extern */
extern ? sub_0f020000;
extern ? sub_0f100000;

void dummyFunction(void) {

}

s32 getDsoHandle(void) {
    s32 var_v0;

    var_v0 = saved_reg_gp->unk-4F88;
    if (var_v0 == 0) {
        var_v0 = dlopen(&sub_0f020000 + 0x5140, 1);
        saved_reg_gp->unk-4F88 = var_v0;
    }
    return var_v0;
}

void loadSymbol(s32 arg0, void *arg1) {
    void *temp_v0;

    if (arg0 != 0) {
        temp_v0 = dlsym(arg1->unk0);
        arg1->unk4 = temp_v0;
        if (temp_v0 == NULL) {
            arg1->unk4 = (void *) (&sub_0f100000 + 0x3848);
        }
    }
}

s32 __iglooGetNewInterface(void) {
    getDsoHandle(getDsoHandle(), saved_reg_gp - 0x38E0);
    return saved_reg_gp->unk-38DC;
}

void __iglooLoadInterface(s64 arg0) {
    s64 sp8;
    s64 sp0;
    s32 temp_a3;
    s32 temp_v0;
    s64 temp_v0_2;
    void *temp_v0_3;

    temp_v0 = saved_reg_gp->unk-4F84;
    sp8 = arg0;
    if (temp_v0 == 0) {
        saved_reg_gp->unk-4F84 = (s32) (temp_v0 == 0);
        temp_v0_2 = getDsoHandle();
        sp0 = temp_v0_2;
        if (temp_v0_2 != 0) {
            saved_reg_gp->unk-4F80 = 0;
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 8);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 0x10);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 0x18);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 0x20);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 0x28);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 0x30);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 0x38);
            getDsoHandle((s32) sp0, saved_reg_gp - 0x38E0 + 0x40);
            temp_a3 = saved_reg_gp->unk-38CC;
            temp_v0_3 = &sub_0f100000 + 0x3848;
            if (saved_reg_gp->unk-38DC != temp_v0_3) {
                if (temp_a3 != temp_v0_3) {
                    saved_reg_gp->unk-4F80 = 2;
                } else if ((sp8 != 5) && (sp8 != 6) && (sp8 != 7)) {
                    saved_reg_gp->unk-4F80 = 1;
                }
            } else {
                if (saved_reg_gp->unk-38AC != temp_v0_3) {
                    saved_reg_gp->unk-4F80 = 3;
                }
                if (temp_a3 != temp_v0_3) {
                    saved_reg_gp->unk-4F80 = 2;
                }
            }
        }
    }
}

void __iglooPickDefaultVertexProcs(void *arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF2F77C;
    arg0->unk24 = (s32) temp_at->unk-5B6C;
    arg0->unk28 = (s32) temp_at->unk-5B98;
    arg0->unk20 = (s32) temp_at->unk-5B60;
    arg0->unk14 = (s32) temp_at->unk-5B70;
    arg0->unk10 = (s32) temp_at->unk-5BA4;
    arg0->unkC = (s32) temp_at->unk-5B40;
    arg0->unk30 = (s32) temp_at->unk-5B3C;
    arg0->unk2C = (s32) temp_at->unk-5B38;
    arg0->unk1C = (s32) temp_at->unk-5B68;
    arg0->unk18 = (s32) temp_at->unk-5B64;
    arg0->unk8 = (s32) temp_at->unk-5B30;
    arg0->unk4 = (s32) temp_at->unk-5B20;
}

void __iglooPickDefaultTexCoordProcs(void *arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF2F70C;
    arg0->unk54 = (s32) temp_at->unk-5B34;
    arg0->unk58 = (s32) temp_at->unk-5B5C;
    arg0->unk50 = (s32) temp_at->unk-5B48;
    arg0->unk44 = (s32) temp_at->unk-5B50;
    arg0->unk40 = (s32) temp_at->unk-5B58;
    arg0->unk3C = (s32) temp_at->unk-5B18;
    arg0->unk60 = (s32) temp_at->unk-5B28;
    arg0->unk5C = (s32) temp_at->unk-5B24;
    arg0->unk4C = (s32) temp_at->unk-5B2C;
    arg0->unk48 = (s32) temp_at->unk-5B14;
    arg0->unk38 = (s32) temp_at->unk-5B94;
    arg0->unk34 = (s32) temp_at->unk-5B90;
}

void __iglooPickDefaultBeginEndProcs(void *arg0) {
    void *temp_at;

    temp_at = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF2F69C;
    arg0->unkDC = (s32) temp_at->unk-6170;
    arg0->unkD8 = (s32) temp_at->unk-6180;
}

void __iglooSwapTMeshNotImplemented(void) {

}

void __iglooCNModeNotImplemented(void) {

}

void __iglooNormal3fv(void *arg1) {
    (*(void **)0x1004)->unk40 = 0;
    glNormal3fv(arg1);
}

void __iglooNewSwapTMesh(void) {
    saved_reg_gp->unk-38DC(0x81A0, 0);
}

void __iglooNewTmeshMode(s32 arg0) {
    glIglooInterfaceSGIX(0x81A4U, sp);
}

void __iglooNullSwapTMesh(void) {

}

void __iglooMgrFullScreen(void) {
    saved_reg_gp->unk-38D4();
}

void __iglooCrmFullScreen(void) {
    saved_reg_gp->unk-38B4();
}

void __iglooNewFullScreen(s32 arg0, s32 arg1) {
    saved_reg_gp->unk-38DC(0x819E, sp);
}

void __iglooFullScreenNotImplemented(void) {

}

void __iglooMgrNormal(? arg1) {
    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        (*(void *)0x1004)->unk40 = 0;
        saved_reg_gp->unk-38C4(arg1);
        saved_reg_gp->unk-38DC(0x81A1, sp);
    } else {
        __iglooNormal3fv();
    }
}

void __iglooCrmNormal(? arg1) {
    void *temp_a3;

    temp_a3 = *(void **)0x1004;
    if (temp_a3->unk14->unk10 != 0) {
        temp_a3->unk40 = 0;
        saved_reg_gp->unk-38A4(arg1, temp_a3);
    } else {
        __iglooNormal3fv(temp_a3);
    }
}

void __iglooNewSetCNState(s32 arg0) {
    s32 sp14;
    s32 temp_v0;

    sp14 = arg0;
    (*(void **)0x1004)->unk40 = arg0;
    temp_v0 = __iglooGetGraphicsType();
    if (((*(void *)0x1004)->unk14->unk10 != 0) || ((temp_v0 != 3) && (temp_v0 != 4))) {
        saved_reg_gp->unk-38DC(0x81A1, &sp14);
    }
}

void __iglooNewNormal(void *arg0, s64 arg1) {
    s64 sp28;
    void *temp_s0;

    temp_s0 = *(void **)0x1004;
    if ((temp_s0->unk44 != 0) && (temp_s0->unk40 == 1)) {
        sp28 = arg1;
        saved_reg_gp->unk-38DC(0x81A1, sp, 1);
    }
    temp_s0->unk40 = 0;
    __iglooNormal3fv(arg0, arg1);
}

void __iglooMgrCNMode(void) {
    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        saved_reg_gp->unk-38BC();
    }
}

void __iglooCrmCNMode(void) {
    if ((*(void **)0x1004)->unk14->unk10 != 0) {
        saved_reg_gp->unk-389C();
    }
}

void __iglooNewCNMode(s32 arg0) {
    saved_reg_gp->unk-38DC(0x81A3, sp);
}

void __iglooInitProcs(void *arg0) {
    s64 temp_v0;
    void (*temp_a1_2)(void *, s64);
    void (*var_v0)(void *, s64);
    void *temp_a0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a3;

    __iglooPickDefaultVertexProcs();
    __iglooPickDefaultTexCoordProcs(arg0);
    __iglooPickDefaultBeginEndProcs(arg0);
    __iglooInitLightColorProcs(arg0);
    __iglooSetColorProcsLight(arg0);
    temp_v0 = __iglooGetGraphicsType();
    unksp8 = temp_v0;
    __iglooLoadInterface(temp_v0);
    temp_a1 = &sub_0f100000 + 0x3848;
    arg0->unkCC = temp_a1;
    arg0->unkB4 = temp_a1;
    if (M2C_ERROR(/* Read from unset register $v0 */) != 1) {
        if (M2C_ERROR(/* Read from unset register $v0 */) != 3) {
            if (M2C_ERROR(/* Read from unset register $v0 */) != 2) {
                arg0->unkD0 = (void *) (&sub_0f100000 + 0x3D3C);
                var_v0 = __iglooNormal3fv;
                arg0->unkC0 = __iglooNormal3fv;
                arg0->unkC8 = (void *) (&sub_0f100000 + 0x3BD4);
                arg0->unkBC = (void *) (&sub_0f100000 + 0x3BCC);
            } else {
                arg0->unkC8 = (void *) (&sub_0f100000 + 0x3F10);
                arg0->unkBC = (void *) saved_reg_gp->unk-38CC;
                var_v0 = &sub_0f100000 + 0x3D44;
                arg0->unkD0 = (void *) (&sub_0f100000 + 0x3C94);
                arg0->unkC0 = var_v0;
            }
        } else {
            arg0->unkC8 = (void *) (&sub_0f100000 + 0x3F54);
            arg0->unkBC = (void *) saved_reg_gp->unk-38AC;
            var_v0 = &sub_0f100000 + 0x3DB8;
            arg0->unkD0 = (void *) (&sub_0f100000 + 0x3CC8);
            arg0->unkC0 = var_v0;
        }
    } else {
        if (unksp8 == 2) {
            arg0->unkB4 = (void *) (&sub_0f100000 + 0x3C50);
        }
        temp_a0 = &sub_0f100000 + 0x3C18;
        temp_a1_2 = &sub_0f100000 + 0x3E88;
        temp_a2 = &sub_0f100000 + 0x3F98;
        temp_a3 = &sub_0f100000 + 0x3E14;
        arg0->unkD0 = (void *) (&sub_0f100000 + 0x3CFC);
        arg0->unkCC = temp_a3;
        arg0->unkC8 = temp_a2;
        arg0->unkC0 = temp_a1_2;
        arg0->unkBC = temp_a0;
        if ((__iglooGetGraphicsType(temp_a0, temp_a1_2, temp_a2, temp_a3) != 3) && (__iglooGetGraphicsType() != 4)) {
            var_v0 = arg0->unkC0;
        } else {
            var_v0 = &sub_0f100000 + 0x3D44;
            arg0->unkC0 = var_v0;
        }
    }
    arg0->unkD4 = var_v0;
    arg0->unkB8 = __iglooNullSwapTMesh;
}
