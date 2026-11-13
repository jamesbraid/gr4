typedef struct __gl_sstateRec {
    /* 0x000 */ void **display;
    /* 0x004 */ s32 screen;
    /* 0x008 */ u32 root;
    /* 0x00C */ u32 colormap;
    /* 0x010 */ void **visual;
    /* 0x014 */ char pad14[8];                      /* maybe part of visual[3]? */
    /* 0x01C */ void *unk1C;                        /* inferred */
    /* 0x020 */ char pad20[0xF0];                   /* maybe part of unk1C[0x3D]? */
    /* 0x110 */ s32 graphicsType;
} gl_sstate;                                        /* size = 0x114 */

? XFlush(s32);                                      /* extern */
? XSGIvcQueryChannelGammaMap(s32, s32, ?, s32 *);   /* extern */
? XSGIvcQueryGammaMap(s32, s32, s32, s32 *);        /* extern */
? XSGIvcQueryScreenGammaMaps(s32, s32, s32 *);      /* extern */
s32 XSGIvcQueryVersion(s32, void *, ? *);           /* extern */
? XSGIvcStoreGammaColors16(s64, s64, s64, s32);     /* extern */
? XSGIvcStoreGammaColors8(s64, s64, s64, s32);      /* extern */
s16 atoi(s8 *);                                     /* extern */
? sprintf(void *, void *, void *);                  /* extern */
? system(void *);                                   /* extern */
extern ? sub_0f020000;

void gl_g_gammaramp(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    ? sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    ? sp4;
    s32 temp_s0;
    s32 temp_s1;
    void *temp_a4;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF42944;
    temp_a4 = gl_sstatep->unk1C;
    temp_s0 = temp_a4->unk4;
    sp28 = arg2;
    sp30 = arg1;
    sp20 = arg0;
    if (temp_s0 != 0) {
        temp_s1 = temp_a4->unk8;
        if (XSGIvcQueryVersion(temp_s0, sp, &sp4) != 0) {
            XSGIvcQueryScreenGammaMaps(temp_s0, temp_s1, &sp8);
            if (sp8 != 0) {
                XSGIvcQueryChannelGammaMap(temp_s0, temp_s1, 0, &spC);
                XSGIvcQueryGammaMap(temp_s0, temp_s1, spC, &sp10);
                gl_g_gammaramp(temp_s0, temp_s1, spC, sp14);
                gl_g_gammaramp(temp_s0, temp_s1, spC, sp14);
                gl_g_gammaramp(temp_s0, temp_s1, spC, sp14);
                XFlush(temp_s0);
            } else {
                gl_ErrorHandler(0x73, 2, temp_gp->unk-394C);
            }
        } else {
            gl_ErrorHandler(0x73, 2, temp_gp->unk-394C);
        }
    }
}

void loadGamma(s64 arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s16 *var_a3_3;
    s16 *var_v0_2;
    s16 temp_t0;
    s32 temp_s0;
    s32 temp_t2;
    s32 var_a3_4;
    s32 var_a6_2;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_v0;
    s64 var_a3;
    s64 var_a6;
    s64 var_t1;
    void *temp_v0;
    void *var_a3_2;
    void *var_t2;

    sp28 = arg0;
    sp30 = arg1;
    sp20 = arg2;
    temp_s0 = M2C_ERROR(/* Read from unset register $a4 */);
    sp18 = M2C_ERROR(/* Read from unset register $a5 */);
    sp10 = M2C_ERROR(/* Read from unset register $a6 */);
    if (arg3 < 9) {
        temp_v0 = __iglooMalloc(temp_s0);
        if (temp_v0 != NULL) {
            var_t2 = temp_v0;
            if (temp_s0 != 0) {
                var_t3 = temp_s0 & 3;
                var_a3 = sp10;
                if (var_t3 != 0) {
                    do {
                        var_a3 += 2;
                        var_t2 += 1;
                        var_t3 -= 1;
                        var_t2->unk-1 = (s8) var_a3->unk-2;
                    } while (var_t3 != 0);
                }
                if ((temp_s0 >> 2) != 0) {
                    var_a3_2 = var_t2;
                    var_a6 = var_a3;
                    do {
                        var_a3_2->unk0 = (s8) var_a6->unk0;
                        var_a3_2->unk1 = (s8) var_a6->unk2;
                        var_a3_2->unk2 = (s8) var_a6->unk4;
                        var_a3_2 += 4;
                        temp_t0 = var_a6->unk6;
                        var_a6 += 8;
                        var_a3_2->unk-1 = (s8) temp_t0;
                    } while (var_a6 != ((temp_s0 * 2) + sp10));
                }
            }
            XSGIvcStoreGammaColors8(sp28, sp30, sp20, temp_s0);
            __iglooFree(subroutine_arg2);
        }
    } else {
        var_a3_3 = __iglooMalloc(temp_s0 * 2);
        var_t3_2 = 0;
        var_t1 = sp10;
        temp_t2 = (s32) (((u32) (temp_s0 >> 7) >> 0x18) + temp_s0) >> 8;
loop_20:
        var_v0 = 0;
        var_t3_2 += 1;
        *var_a3_3 = *var_t1 << 8;
        if (temp_t2 != 0) {
            var_a6_2 = temp_t2 & 3;
            if (var_a6_2 != 0) {
                do {
                    var_v0 += 1;
                    var_a3_3 += 2;
                    var_a6_2 -= 1;
                    var_a3_3->unk-2 = (s16) (*var_t1 << 8);
                } while (var_a6_2 != 0);
            }
            if ((temp_t2 >> 2) != 0) {
                var_a3_4 = var_v0;
                var_v0_2 = var_a3_3;
                do {
                    var_v0_2->unk0 = *var_t1 << 8;
                    var_v0_2->unk2 = (s16) (*var_t1 << 8);
                    var_v0_2->unk4 = (s16) (*var_t1 << 8);
                    var_v0_2 += 8;
                    var_a3_4 += 4;
                    var_v0_2->unk-2 = (s16) (*var_t1 << 8);
                } while (temp_t2 != var_a3_4);
                var_a3_3 = var_v0_2;
            }
        }
        var_t1 += 2;
        if (var_t3_2 != 0x100) {
            goto loop_20;
        }
        XSGIvcStoreGammaColors16(sp28, sp30, sp20, temp_s0);
        __iglooFree(subroutine_arg0);
    }
}

void initMonitor(void) {
    s8 *temp_v0;

    temp_v0 = getenv(&sub_0f020000 + 0x4550);
    if (temp_v0 != NULL) {
        saved_reg_gp->unk-3950 = atoi(temp_v0);
    }
}

s32 gl_g_getmonitor(void) {
    gl_g_gammaramp();
    return (s32) (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF42548)->unk-3950;
}

void gl_g_setmonitor(u64 arg0) {
    u64 sp100;
    void *var_a2;

    if (arg0 < 0x1DU) {
        var_a2 = saved_reg_gp - 0x4308;
        switch (arg0) {
        case 11:
            var_a2 = saved_reg_gp - 0x4358;
            break;
        case 24:
            var_a2 = saved_reg_gp - 0x4350;
            break;
        case 1:
            var_a2 = saved_reg_gp - 0x4348;
            break;
        case 26:
            var_a2 = saved_reg_gp - 0x4340;
            break;
        case 23:
            var_a2 = saved_reg_gp - 0x4338;
            break;
        case 25:
            var_a2 = saved_reg_gp - 0x4330;
            break;
        case 2:
            var_a2 = saved_reg_gp - 0x4328;
            break;
        case 9:
            var_a2 = saved_reg_gp - 0x4320;
            break;
        case 15:
            var_a2 = &sub_0f020000 + 0x45E0;
            break;
        case 27:
            var_a2 = saved_reg_gp - 0x4318;
            break;
        case 28:
            var_a2 = saved_reg_gp - 0x4310;
            break;
        }
    } else {
    case 0:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
        var_a2 = NULL;
    }
    sp100 = arg0;
    if (var_a2 != NULL) {
        sprintf(sp, &sub_0f020000 + 0x45F0, var_a2);
        system(sp);
        saved_reg_gp->unk-3950 = (s16) sp100;
    }
}
