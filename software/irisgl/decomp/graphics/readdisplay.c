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

? XGrabServer(void *);                              /* extern */
void *XReadDisplay(void *, s32, s32, s32);          /* extern */
? XSync(void *, ?);                                 /* extern */
? XUngrabServer(void *);                            /* extern */
? bcopy(s32, s64, s32);                             /* extern */

void gl_g_readdisplay(s32 arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_s1;
    s32 var_a7;
    s32 var_s0;
    s64 temp_a1;
    s64 temp_a4;
    s64 temp_s1_2;
    s64 temp_s1_3;
    s64 var_ra;
    s64 var_s1;
    s64 var_s2;
    s64 var_s5;
    void *temp_s8;
    void *temp_v0;
    void *var_v0;

    var_ra = saved_reg_ra;
    sp0 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s1 = M2C_ERROR(/* Read from unset register $a5 */);
    var_v0 = gl_sstatep->unk1C;
    var_s5 = M2C_ERROR(/* Read from unset register $a5 */) & 1;
    temp_s8 = var_v0->unk4;
    if (var_s5 != 0) {
        sp70 = arg2;
        sp68 = arg1;
        XGrabServer(temp_s8);
        XSync(temp_s8, 0);
        var_ra = sp60;
        var_v0 = gl_sstatep->unk1C;
    }
    var_a7 = temp_s1 & 8;
    if (temp_s1 & 0x10) {
        var_a7 = temp_s1 & 8;
    }
    if (var_a7 != 0) {

    }
    if (temp_s1 & 4) {
        sp60 = var_ra;
    }
    sp60 = var_ra;
    temp_s1_2 = arg3 - arg1;
    temp_a4 = arg2 - arg0;
    unksp30 = temp_a4;
    unksp20 = temp_s1_2;
    temp_s1_3 = temp_s1_2 + 1;
    sp8 = temp_a4 + 1;
    temp_v0 = XReadDisplay(temp_s8, gl_wstatep->active->unkC->unk70->unk40, arg0, ((temp_s8->unk8C + (var_v0->unk8 * 0x50))->unk10 - arg3) - 1);
    sp78 = var_s5;
    if (temp_s1_3 != 0) {
        sp10 = temp_s1_3;
        var_s2 = unksp20;
        var_s1 = sp0;
        var_s0 = sp8 * unksp20 * 4;
        do {
            var_s2 -= 1;
            temp_a1 = var_s1;
            var_s1 += sp8 * 4;
            bcopy(temp_v0->unk10 + var_s0, temp_a1, (unksp30 * 4) + 4);
            var_s0 += sp8 * -4;
        } while (var_s2 != (unksp20 - temp_s1_3));
        var_s5 = sp78;
    }
    temp_v0->unk44(temp_v0);
    if (var_s5 != 0) {
        XUngrabServer(temp_s8);
        XSync(temp_s8, 0);
    }
}

void gl_g_gl_readscreen(u32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp2018;
    s64 sp2010;
    s64 sp2008;
    s16 sp2;
    s32 var_t1;
    s64 temp_s2;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a7;
    s64 var_v0;
    s64 var_v0_2;
    u32 *var_a0_2;
    u32 *var_t0;
    u32 temp_a4;
    u32 temp_a7;
    u32 temp_v1;
    u32 var_s3;
    void *temp_t9;

    temp_t9 = gl_sstatep->unk1C;
    temp_a7 = (temp_t9->unk4->unk8C + (temp_t9->unk8 * 0x50))->unkC;
    if (arg0 < temp_a7) {
        var_s3 = arg0;
    } else {
        var_s3 = temp_a7;
    }
    sp2008 = arg3;
    sp2010 = arg2;
    sp2018 = arg1;
    __GLgetcpos(sp, &sp2);
    temp_s2 = (s64) ((s64) var_s3 << 0x30) >> 0x30;
    __GLreaddisplay(sp0, sp2, (s64) (((temp_s2 + sp0) - 1) << 0x30) >> 0x30, sp2);
    var_v0 = sp2008;
    var_a7 = sp2018;
    var_t1 = temp_s2 & 3;
    if (temp_s2 > 0) {
        var_a0 = sp2010;
        var_t0 = &sp8[0];
        if (var_t1 != 0) {
            do {
                *var_a7 = (s8) *var_t0;
                temp_a4 = *var_t0;
                var_t0 += 4;
                var_a7 += 1;
                *var_a0 = (s8) (temp_a4 >> 8);
                var_a0 += 1;
                var_v0 += 1;
                var_t1 -= 1;
                var_v0->unk-1 = (s8) ((u32) var_t0->unk-4 >> 0x10);
            } while (var_t1 != 0);
        }
        var_a1 = var_a7;
        var_v0_2 = var_a0;
        if ((temp_s2 >> 2) != 0) {
            var_a0_2 = var_t0;
            var_a2 = var_v0;
            do {
                var_a1->unk0 = (s8) var_a0_2->unk0;
                var_v0_2->unk0 = (s8) ((u32) var_a0_2->unk0 >> 8);
                var_a2->unk0 = (s8) ((u32) var_a0_2->unk0 >> 0x10);
                var_a1->unk1 = (s8) var_a0_2->unk4;
                var_v0_2->unk1 = (s8) ((u32) var_a0_2->unk4 >> 8);
                var_a2->unk1 = (s8) ((u32) var_a0_2->unk4 >> 0x10);
                var_a1->unk2 = (s8) var_a0_2->unk8;
                var_v0_2->unk2 = (s8) ((u32) var_a0_2->unk8 >> 8);
                var_a2->unk2 = (s8) ((u32) var_a0_2->unk8 >> 0x10);
                var_a1->unk3 = (s8) var_a0_2->unkC;
                var_a1 += 4;
                var_v0_2->unk3 = (s8) ((u32) var_a0_2->unkC >> 8);
                var_v0_2 += 4;
                temp_v1 = var_a0_2->unkC;
                var_a2 += 4;
                var_a0_2 += 0x10;
                var_a2->unk-1 = (s8) (temp_v1 >> 0x10);
            } while (var_a0_2 != &(&sp8[0])[temp_s2]);
        }
    }
}
