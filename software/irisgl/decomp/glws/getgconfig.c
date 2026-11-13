extern s32 __iglooMixedModel;
extern s32 __iglooSoftPupShift;

s32 gl_g_getgconfig(u64 arg0) {
    s64 sp18;
    u64 sp10;
    s32 spC;
    ? sp8;
    s32 sp4;
    s32 *temp_a3;
    s32 temp_a1;
    s32 temp_v0;
    s32 var_v1;
    u8 temp_a4;

    sp18 = 0;
    sp10 = arg0;
    if (gl_wstatep == NULL) {
        return 0;
    }
    temp_v0 = __iglooGetVisualInfo();
    if (temp_v0 != 0) {
        temp_a3 = (sp10 * 4) + &jtbl_0f022f40;
        temp_a4 = (*(void **)0x1004)->unk14->unk13;
        switch (sp10) {
        case 7:
            __iglooCalcDepthExtrema(temp_v0->unk30, &sp8, &spC, temp_a3);
            var_v1 = spC;
block_6:
            sp18 = (s64) var_v1;
            break;
        case 0:
            if ((temp_a4 == 0) && (sp18 = (s64) temp_v0->unk8, (temp_v0->unkC > 0))) {
                if (__iglooMixedModel == 0) {
                    if (__iglooSoftPupShift != 0) {
                        sp18 = (s64) __iglooSoftPupShift;
                    }
                }
            }
            break;
        case 1:
            if (temp_a4 != 0) {
                sp18 = (s64) temp_v0->unk20;
            }
            break;
        case 2:
            if (temp_a4 != 0) {
                sp18 = (s64) temp_v0->unk24;
            }
            break;
        case 3:
            if (temp_a4 != 0) {
                var_v1 = temp_v0->unk28;
                goto block_6;
            }
            break;
        case 4:
            if (temp_a4 != 0) {
                sp18 = (s64) temp_v0->unk2C;
            }
            break;
        case 5:
            sp18 = (s64) temp_v0->unk30;
            break;
        case 6:
            __iglooCalcDepthExtrema(temp_v0->unk30, sp, &sp4, temp_a3);
            sp18 = (s64) sp0;
            break;
        case 8:
            sp18 = (s64) temp_v0->unk34;
            break;
        case 9:
            var_v1 = temp_v0->unk38;
            goto block_6;
        case 10:
            sp18 = (s64) temp_v0->unk4C;
            break;
        case 11:
            if (temp_v0->unk4C > 0) {
                sp18 = (s64) temp_v0->unk30;
            }
            break;
        case 12:
            sp18 = 0;
            break;
        case 13:
            if (temp_v0->unk4C > 0) {
                sp18 = __GLgetgconfig(7);
            }
            break;
        case 14:
            temp_a1 = temp_v0->unk4C;
            if (temp_a1 > 0) {
                sp18 = __GLgetgconfig(8, temp_a1);
            }
            break;
        case 15:
            sp18 = (s64) temp_v0->unk18;
            break;
        case 16:
            sp18 = (s64) temp_v0->unk14;
            break;
        }
    } else {
    default:
    }
    return (s32) sp18;
}
