void gl_init_lighting(void *arg0) {
    arg0->unkBDC = 0;
    arg0->unkBD8 = 0;
    arg0->unkBD4 = 0;
    arg0->unkBFC = 0;
    arg0->unkBF8 = 0;
    arg0->unkBF4 = 0;
    arg0->unkBF0 = 0;
    arg0->unkBEC = 0;
    arg0->unkBE8 = 0;
    arg0->unkBE4 = 0;
    arg0->unkBE0 = 0;
    arg0->unkC00 = 0;
    arg0->unkC04 = 0;
    arg0->unkBD0 = 0;
}

void __iglooRebindLights(void *arg0) {
    s32 temp_s2_2;
    s32 var_s0;
    s32 var_s3;
    void *temp_s2;
    void *var_s1;

    var_s0 = 0x4000;
    var_s3 = 0;
    var_s1 = arg0;
loop_3:
    temp_s2 = var_s1->unkBE0;
    if (temp_s2 != NULL) {
        temp_s2->unkC = var_s3;
        temp_s2->unk8 = arg0;
        __iglooSetOglLightPosition(var_s0, temp_s2);
        __iglooSetOglLight(var_s0, temp_s2);
        temp_s2_2 = arg0->unkBD0;
        if (temp_s2_2 != 0) {
            __iglooSetOglAttenuation(var_s0, temp_s2_2, temp_s2->unk10);
        }
    }
    var_s1 += 4;
    var_s3 += 1;
    var_s0 += 1;
    if (var_s3 != 8) {
        goto loop_3;
    }
}

void __iglooRebindLightdata(void *arg0) {
    s64 sp20;
    s64 sp18;
    s64 sp0;
    s32 temp_a1;
    s32 var_a3;
    s64 var_ra;

    var_ra = saved_reg_ra;
    var_a3 = arg0->unkBD0;
    temp_a1 = arg0->unkBD4;
    if (temp_a1 != 0) {
        sp18 = (s64) var_a3;
        sp0 = (s64) arg0->unkBD8;
        if (arg0->unkBDC != 1) {
            __iglooSetOglMaterial(0x408, temp_a1, var_a3);
            var_a3 = (s32) sp18;
        } else {
            __iglooSetOglMaterial(0x404, temp_a1, var_a3);
            __iglooSetOglMaterial(0x405, (s32) sp0);
            var_a3 = (s32) sp18;
        }
        var_ra = sp20;
    }
    sp20 = var_ra;
    if (var_a3 != 0) {
        __iglooSetOglModel((s64) var_a3);
    }
    __iglooRebindLights(arg0);
    if ((arg0->unkC04 != 0) && (arg0->unkB58 == 0)) {
        __iglooOglLightingOn(arg0);
        __iglooSyncLmcolor(arg0);
    }
}
