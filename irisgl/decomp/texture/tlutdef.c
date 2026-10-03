typedef struct __gl_wstateRec {
    /* 0x0000 */ gl_wstate *next;
    /* 0x0004 */ u32 flags;
    /* 0x0008 */ s32 drawMode;
    /* 0x000C */ s32 colorMode;
    /* 0x0010 */ s32 bufferMode;
    /* 0x0014 */ s32 shadingModel;
    /* 0x0018 */ s32 zbuffer;
    /* 0x001C */ s32 zfunction;
    /* 0x0020 */ s32 blendSrc;
    /* 0x0024 */ s32 blendDst;
    /* 0x0028 */ s16 currentColor;
    /* 0x002A */ char pad2A[2];
    /* 0x002C */ u32 currentRGB;
    /* 0x0030 */ f32 currentNormal[3];
    /* 0x003C */ char pad3C[0xA4];                  /* maybe part of currentNormal[0xE]? */
    /* 0x00E0 */ u32 active;
    /* 0x00E4 */ u32 valid;
    /* 0x00E8 */ char padE8[4];
    /* 0x00EC */ u32 xwindow;
    /* 0x00F0 */ void *glxcx;
    /* 0x00F4 */ void **display;
    /* 0x00F8 */ u32 screen;
    /* 0x00FC */ void *screenState;
    /* 0x0100 */ char pad100[0xA40];                /* maybe part of screenState[0x291]? */
    /* 0x0B40 */ IglooMatrixStack modelviewStack;
    /* 0x1348 */ IglooMatrixStack projStack;
    /* 0x1B50 */ char pad1B50[0xFA0];               /* maybe part of projStack[2]? */
    /* 0x2AF0 */ f32 currentVertex[4];
    /* 0x2B00 */ char pad2B00[0x2BC];               /* maybe part of currentVertex[0x2C]? */
    /* 0x2DBC */ void *unk2DBC;                     /* inferred */
    /* 0x2DC0 */ char pad2DC0[0x128];               /* maybe part of unk2DBC[0x4B]? */
} gl_wstate;                                        /* size = 0x2EE8 */

? exit(?);                                          /* extern */
extern ? gl_tluttab;

void gl_g_tlutdef(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    gl_wstate *temp_s5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_s0_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s2;
    s64 var_a3;
    s64 var_a3_3;
    s64 var_a6_2;
    s64 var_v0;
    s64 var_v0_2;
    s64 var_v0_3;
    u32 temp_s0;
    u8 temp_at;
    u8 temp_at_2;
    u8 temp_v1;
    void *temp_a6;
    void *var_a3_2;
    void *var_a6;
    void *var_a7;
    void *var_a7_2;
    void *var_a7_3;
    void *var_v0_4;

    unksp10 = arg3;
    var_s2 = arg2;
    temp_s5 = gl_wstatep;
    if (gl_wstatep->unk2DBC == NULL) {
        gl_init_texturing(gl_wstatep);
    }
    temp_v0 = gl_remove(&gl_tluttab, arg0);
    if (temp_v0 != 0) {
        gl_g_tlutdef(temp_v0);
    }
    gl_g_tlutdef();
    M2C_ERROR(/* Read from unset register $v0 */)->unk40C = arg1;
    temp_a6 = M2C_ERROR(/* Read from unset register $v0 */);
    M2C_ERROR(/* Read from unset register $v0 */)->unk4 = arg0;
    if (var_s2 >= 0x101) {
        var_s2 = 0x100;
    }
    switch (arg1) {                                 /* irregular */
    case 2:
        temp_lo = arg1 * var_s2;
        var_v0 = unksp10;
        var_a7 = temp_a6;
        if (temp_lo > 0) {
            temp_a2 = temp_lo + var_v0;
            temp_s0 = temp_lo + 1;
            temp_t1 = (s32) ((temp_s0 >> 0x1F) + temp_s0) >> 1;
            if (temp_t1 & 1) {
                var_a7->unkD = (u8) var_v0->unk0;
                temp_at = var_v0->unk1;
                var_v0 += 2;
                var_a7 += 2;
                var_a7->unkA = temp_at;
            }
            if ((temp_t1 >> 1) != 0) {
                var_a6 = var_a7;
                var_a3 = var_v0;
                do {
                    var_a6->unkD = (u8) var_a3->unk0;
                    var_a6->unkC = (u8) var_a3->unk1;
                    var_a6 += 4;
                    var_a6->unkB = (u8) var_a3->unk2;
                    var_a3 += 4;
                    var_a6->unkA = (u8) var_a3->unk-1;
                } while (var_a3 < temp_a2);
            }
        }
        break;
    case 3:
        temp_lo_2 = arg1 * var_s2;
        temp_v0_2 = temp_lo_2 + 2;
        if (temp_lo_2 > 0) {
            var_a7_2 = temp_a6;
            M2C_TRAP_IF(3 == 0);
            var_v0_2 = unksp10;
            temp_a2_2 = temp_lo_2 + var_v0_2;
            if ((temp_v0_2 / 3) & 1) {
                var_a7_2->unkE = (u8) var_v0_2->unk0;
                var_a7_2->unkD = (u8) var_v0_2->unk1;
                temp_v1 = var_v0_2->unk2;
                var_v0_2 += 3;
                var_a7_2 += 3;
                var_a7_2->unk9 = temp_v1;
            }
            if ((temp_v0_2 / 6) != 0) {
                var_a3_2 = var_a7_2;
                var_a6_2 = var_v0_2;
                do {
                    var_a3_2->unkE = (u8) var_a6_2->unk0;
                    var_a3_2->unkD = (u8) var_a6_2->unk1;
                    var_a3_2->unkC = (u8) var_a6_2->unk2;
                    var_a3_2->unk11 = (u8) var_a6_2->unk3;
                    var_a3_2 += 6;
                    var_a3_2->unkA = (u8) var_a6_2->unk4;
                    var_a6_2 += 6;
                    var_a3_2->unk9 = (u8) var_a6_2->unk-1;
                } while (var_a6_2 < temp_a2_2);
            }
        }
        break;
    case 4:
        temp_lo_3 = arg1 * var_s2;
        var_v0_3 = unksp10;
        if (temp_lo_3 > 0) {
            var_a7_3 = temp_a6;
            temp_a2_3 = temp_lo_3 + var_v0_3;
            temp_s0_2 = temp_lo_3 + 3;
            temp_t1_2 = (s32) (((u32) (temp_s0_2 >> 1) >> 0x1E) + temp_s0_2) >> 2;
            if (temp_t1_2 & 1) {
                var_a7_3->unkF = (u8) var_v0_3->unk0;
                var_a7_3->unkE = (u8) var_v0_3->unk1;
                var_a7_3->unkD = (u8) var_v0_3->unk2;
                temp_at_2 = var_v0_3->unk3;
                var_v0_3 += 4;
                var_a7_3 += 4;
                var_a7_3->unk8 = temp_at_2;
            }
            if ((temp_t1_2 >> 1) != 0) {
                var_v0_4 = var_a7_3;
                var_a3_3 = var_v0_3;
                do {
                    var_v0_4->unkF = (u8) var_a3_3->unk0;
                    var_v0_4->unkE = (u8) var_a3_3->unk1;
                    var_v0_4->unkD = (u8) var_a3_3->unk2;
                    var_v0_4->unkC = (u8) var_a3_3->unk3;
                    var_v0_4->unk13 = (u8) var_a3_3->unk4;
                    var_v0_4->unk12 = (u8) var_a3_3->unk5;
                    var_v0_4 += 8;
                    var_v0_4->unk9 = (u8) var_a3_3->unk6;
                    var_a3_3 += 8;
                    var_v0_4->unk8 = (u8) var_a3_3->unk-1;
                } while (var_a3_3 < temp_a2_3);
            }
        }
        break;
    }
    gl_insert(&gl_tluttab, M2C_ERROR(/* Read from unset register $v0 */));
    if (temp_s5->unk2DBC->unk19C == arg0) {
        gl_tlutbind(0, arg0, 1);
    }
}

void gl_newtlut(void) {
    void *temp_v0;

    temp_v0 = gl_malloc(0x410, saved_reg_gp->unk-383C);
    if (temp_v0 == NULL) {
        exit(1);
    }
    temp_v0->unk8 = 0;
}

void gl_freetlut(void) {
    gl_free(saved_reg_gp->unk-383C);
}
