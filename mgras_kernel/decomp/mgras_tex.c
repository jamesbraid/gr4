? DeriveInfo(s64, ?, s64, s32);                     /* extern */
? MgrasCleanTexBdata(s64);                          /* extern */
s32 MgrasSaveOverlap(s64, s64, s64);                /* extern */
s64 RRM_CheckValidFault(void *);                    /* extern */
? __glMgrasSet(s64, ?, ?, ?);                       /* extern */
? init_sema(s64, ?, ?, ?);                          /* extern */
s64 kern_malloc(?);                                 /* extern */
s64 mgras_baseindex(s64);                           /* extern */
s32 mgvVidTextureXfer(void *, s64);                 /* extern */
s32 psema(s64, ?, ?, s32);                          /* extern */
s32 timeout(s64, s64, ?);                           /* extern */
? untimeout(s32);                                   /* extern */
? vsema(s64);                                       /* extern */
s16 MgrasPlaceBaseAddr(s64 arg0, s64 arg1);         /* static */
void MgrasUpdateTexRefCount(s64 arg0, s64 arg1, s64 arg2); /* static */

void _MgrasWriteTexBase(void *arg0, s64 arg1) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk70080 = (s64) (((u64) (arg1 << 0x20) >> 0x20) | (0x3AC1 << 0x22));
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x38, 0x3c], gap at: 0x20. */
s32 MgrasAddTexSpace(void *gfxp, struct mgras_rnode_s *rnp, mgras_texspace_args_t *args, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg26) {
    s16 temp_v0_4;
    s64 temp_a0;
    s64 temp_at;
    s64 temp_s1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v1;
    s64 var_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg20 = (s64) rnp;
    temp_s1 = gfxp->unk20;
    args->alignment = 0;
    unksp30 = (s64) args;
    arg24 = (s64) args->size;
    arg22 = temp_s1->unkD0;
    unksp28 = temp_s1->unkC8;
    if (rnp->unk468 == 0) {
        var_v0 = -0x16;
    } else {
        temp_v0 = RRM_CheckValidFault(gfxp);
        unksp20 = temp_v0;
        if (temp_v0 >= 0) {
loop_6:
            M2C_ERROR(/* unknown instruction: ll $a4, ($a5) */);
            if (M2C_ERROR(/* unknown instruction: sc $a7, ($a5) */) == 0) {
                goto loop_6;
            }
            temp_a0 = temp_s1 + 0x6C0;
            unksp18 = temp_a0;
            mutex_lock((void *) temp_a0);
            temp_at = arg20->unk468->unk8;
            arg18 = temp_at;
            arg16 = temp_at;
            if (temp_at != 0) {
                MgrasUpdateTexRefCount(temp_s1, arg18->unk8, arg24);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg18->unk8->unk1A = (s16) arg24;
                goto block_11;
            }
            temp_v0_2 = kern_malloc(0x810);
            arg18 = temp_v0_2;
            arg16 = temp_v0_2;
            if (temp_v0_2 != 0) {
                bzero((void *) arg18, 0x810U);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg20->unk468->unk8 = arg18;
                temp_v0_3 = kern_malloc(0x30);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg18 = temp_v0_3;
                arg16->unk8 = temp_v0_3;
                if (temp_v0_3 != 0) {
                    bzero((void *) arg18, 0x30U);
                    args = arg16->unk8;
                    gfxp = (unksp28->unk2D != 1) ? 0xFF : 3;
                    temp_v0_4 = MgrasPlaceBaseAddr(temp_s1, arg24);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    ((s64) args)->unk22 = 1;
                    ((s64) args)->unk20 = (s8) (s64) gfxp;
                    ((s64) args)->unk1A = (s16) arg24;
                    ((s64) args)->unk18 = temp_v0_4;
                    DeriveInfo((s64) gfxp, 1, (s64) args, temp_s1->unk6D0->unkC);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v1 = temp_s1->unk6D0;
                    temp_v1->unk920 = (s32) (temp_v1->unk920 + 1);
block_11:
                    _MgrasWriteTexBase((void *) arg22, 0);
                    if (MgrasSaveOverlap(arg16->unk8, temp_s1, arg16) != 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        unksp30->unk4 = 1;
                    }
                    _MgrasWriteTexBase((void *) arg22, (s64) arg16->unk8->unk18);
                    mutex_unlock((void *) unksp18);
loop_14:
                    M2C_ERROR(/* unknown instruction: ll $a3, ($a4) */);
                    if (M2C_ERROR(/* unknown instruction: sc $ra, ($a4) */) == 0) {
                        goto loop_14;
                    }
                    var_v0 = unksp20;
                } else {
loop_28:
                    M2C_ERROR(/* unknown instruction: ll $a0, ($a1) */);
                    if (M2C_ERROR(/* unknown instruction: sc $a3, ($a1) */) == 0) {
                        goto loop_28;
                    }
                    mutex_unlock((void *) unksp18);
                    kern_free((void *) arg16);
                    var_v0 = 0xC;
                }
            } else {
loop_23:
                M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
                if (M2C_ERROR(/* unknown instruction: sc $a1, ($v1) */) == 0) {
                    goto loop_23;
                }
                mutex_unlock((void *) unksp18);
                var_v0 = 0xC;
            }
        } else {
            var_v0 = temp_v0;
        }
    }
    return (s32) var_v0;
}

void MgrasDeleteTexSpace(void *gfxp, struct mgras_rnode_s *rnp, mgras_texspace_args_t *args, s64 arg6, s64 arg8) {
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 var_a4;
    s32 var_a7;
    s64 *temp_a5;
    s64 temp_a0;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 temp_s1;
    s64 temp_s3;
    s64 temp_s3_2;
    s64 temp_t1;
    s64 var_a3_2;
    u16 var_a3;
    void *temp_a6;
    void *temp_v1;

    temp_a3 = rnp->unk468;
    if (temp_a3 != 0) {
        temp_s3 = temp_a3->unk8;
        args = (s64) rnp;
        if (temp_s3 != 0) {
            temp_s1 = gfxp->unk20;
            temp_a0 = temp_s1 + 0x6C0;
            gfxp = temp_a0;
            mutex_lock((void *) temp_a0);
            temp_a3_2 = temp_s3->unk8;
            temp_t1 = temp_s1->unk6D0;
            var_a4 = 0;
            var_a7 = 0;
            var_a3 = temp_a3_2->unk18;
            if ((s32) temp_a3_2->unk1A > 0) {
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v1 = temp_s1->unk6D0 + ((var_a3 & 0xFF) * 4);
                    temp_v1->unk924 = (s32) (temp_v1->unk924 - 1);
                    var_a4 += 1;
                    var_a3 = (var_a3 + 1) & 0xFFFF;
                } while (var_a4 < (s32) temp_s3->unk8->unk1A);
            }
            var_a3_2 = 0;
loop_6:
            temp_a4 = var_a3_2 * 8;
            temp_a5 = temp_a4 + (temp_t1 + 0x120);
            temp_a6 = temp_s3 + temp_a4;
            temp_a4_2 = var_a3_2 * 4;
            if (*temp_a5 == temp_s3) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *(var_a3_2 + (temp_t1 + 0x20)) = 0;
                *temp_a5 = 0;
            }
            temp_a5_2 = temp_a6->unk10;
            var_a3_2 += 1;
            if (temp_a5_2 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *temp_a5_2 = (s64) temp_s1->unk6D0->unk10;
                temp_s1->unk6D0->unk10 = (s64) temp_a6->unk10;
            }
            temp_a5_3 = temp_s1->unk6D0;
            temp_a4_3 = (temp_a5_3 + temp_a4_2)->unk924;
            if (var_a7 < temp_a4_3) {
                var_a7 = temp_a4_3;
            }
            if (var_a3_2 < 0x100) {
                goto loop_6;
            }
            if (var_a7 < temp_a5_3->unkD24) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a5_3->unkD24 = var_a7;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) args)->unk468->unk8 = 0;
            kern_free((void *) temp_s3->unk8);
            kern_free((void *) temp_s3);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s3_2 = temp_s1->unk6D0;
            temp_s3_2->unk920 = (s32) (temp_s3_2->unk920 - 1);
            if (temp_s1->unk6D0->unk920 == 0) {
                MgrasCleanTexBdata(temp_s1);
            }
            mutex_unlock((void *) (s64) gfxp);
        }
    }
}

void MgrasPlaceBaseAddr(void *arg0, s64 arg1) {
    s32 *temp_a3;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_t3;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_t0;
    s32 var_t1;
    s64 temp_a6;
    s64 temp_t0;
    s64 var_a4;
    u16 var_a4_2;
    u16 var_a7;
    u16 var_v0;

    temp_a6 = arg0->unk6D0;
    temp_t3 = temp_a6->unkD24;
    var_t0 = 0;
    var_a7 = (u16) arg0;
    var_v0 = (u16) arg0;
    temp_a6_2 = temp_a6 + 0x924;
    if (temp_t3 >= 0) {
loop_1:
        var_v0 = 0;
        var_t1 = 0;
        var_a5 = 0;
        var_a4 = 0;
loop_5:
        if (*((var_a4 * 4) + temp_a6_2) == var_t0) {
            var_a5 += 1;
            var_a7 = ((var_a5 == 1) ? var_a4 : (s64) var_a7) & 0xFFFF;
        } else if (var_t1 < var_a5) {
            var_v0 = var_a7;
            var_t1 = var_a5;
            var_a5 = 0;
        }
        var_a4 += 1;
        if (var_a4 < 0x100) {
            goto loop_5;
        }
        if ((var_a5 > 0) || (var_t1 > 0)) {
            var_v0 = ((var_t1 >= var_a5) ? var_v0 : var_a7) & 0xFFFF;
        } else {
            var_t0 += 1;
            if (temp_t3 < var_t0) {

            } else {
                goto loop_1;
            }
        }
    }
    var_a4_2 = var_v0;
    var_a5_2 = 0;
    if (arg1 > 0) {
loop_13:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a3 = ((var_a4_2 & 0xFF) * 4) + temp_a6_2;
        temp_a7 = *temp_a3 + 1;
        *temp_a3 = temp_a7;
        temp_t0 = arg0->unk6D0;
        var_a4_2 += 1;
        var_a5_2 += 1;
        if (temp_t0->unkD24 < temp_a7) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_t0->unkD24 = temp_a7;
        }
        if (var_a5_2 < arg1) {
            goto loop_13;
        }
    }
}

void MgrasUpdateTexRefCount(void *arg0, void *arg1, s64 arg2) {
    s32 *temp_v1;
    s32 temp_a2;
    s32 temp_a6_2;
    s32 var_a4;
    s32 var_a5;
    s64 temp_a3;
    u16 temp_a6;

    temp_a6 = arg1->unk1A;
    var_a4 = arg1->unk18 + temp_a6;
    temp_a6_2 = arg2 - temp_a6;
    var_a5 = 0;
    if (temp_a6_2 > 0) {
loop_3:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v1 = ((var_a4 & 0xFF) * 4) + (arg0->unk6D0 + 0x924);
        temp_a2 = *temp_v1 + 1;
        *temp_v1 = temp_a2;
        temp_a3 = arg0->unk6D0;
        var_a4 += 1;
        var_a5 += 1;
        if (temp_a3->unkD24 < temp_a2) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a3->unkD24 = temp_a2;
        }
        if (var_a5 < temp_a6_2) {
            goto loop_3;
        }
    }
}

s32 MgrasVidTextureXfer(void *arg0, void *arg1, s64 arg2, s64 arg4, s64 arg6) {
    s32 temp_a3;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_s1;
    void *temp_s0;
    void *temp_t9;

    temp_s1 = arg0->unk20;
    temp_s0 = arg0;
    arg2 = mgras_baseindex(temp_s1->unkD0);
    if (arg1->unk4 != 0) {
        if (RRM_CheckValidFault(temp_s0) >= 0) {
loop_3:
            M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
            temp_a3 = M2C_ERROR(/* unknown instruction: sc $a3, ($v1) */);
            if (temp_a3 == 0) {
                goto loop_3;
            }
            temp_a0 = temp_s1 + 0x790;
            arg4 = temp_a0;
            if (psema(temp_a0, 0x1A, 1, temp_a3) != 0) {
loop_7:
                if (temp_s1->unkC8->unk44 != 0) {
loop_9:
                    M2C_ERROR(/* unknown instruction: ll $a3, ($s0) */);
                    if (M2C_ERROR(/* unknown instruction: sc $s2, ($s0) */) == 0) {
                        goto loop_9;
                    }
                    var_v0 = -1;
                } else {
                    temp_a0_2 = temp_s1 + 0x710;
                    arg6 = temp_a0_2;
                    init_sema(temp_a0_2, 0, 0, -1);
                    timeout(saved_reg_gp->unk-77F8, arg6, 1);
                    psema(arg6, 0x19);
                    if (psema(arg4, 0x1A) == 0) {
                        goto block_15;
                    }
                    goto loop_7;
                }
            } else {
block_15:
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_t9 = (arg2 * 0x18) + saved_reg_gp->unk-77F0;
                temp_t9->unk0 = temp_s1;
                arg0 = (s64) temp_t9;
                temp_t9->unk10 = (s64) temp_s0;
                temp_t9->unk8 = (s32) arg1->unk24;
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s1->unk788 = timeout(saved_reg_gp->unk-77E8, temp_s1, 0x3E8);
                if (mgvVidTextureXfer(arg1, (s64) arg0) >= 0) {
loop_17:
                    M2C_ERROR(/* unknown instruction: ll $at, ($v0) */);
                    if (M2C_ERROR(/* unknown instruction: sc $a2, ($v0) */) == 0) {
                        goto loop_17;
                    }
                    var_v0 = 0;
                } else {
                    untimeout(temp_s1->unk788);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s1->unk788 = 0;
                    vsema(arg4);
loop_26:
                    M2C_ERROR(/* unknown instruction: ll $v1, ($a2) */);
                    if (M2C_ERROR(/* unknown instruction: sc $s0, ($a2) */) == 0) {
                        goto loop_26;
                    }
                    var_v0 = -1;
                }
            }
        } else {
            cmn_err(4, (s8 *) saved_reg_gp->unk-7800);
            var_v0 = -1;
        }
    } else if (mgvVidTextureXfer(arg1, 0) >= 0) {
        var_v0 = 0;
    } else {
        var_v0 = -1;
    }
    return var_v0;
}

s64 MgrasGetVertLineCnt(s64 *arg0) {
    s64 temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0 = (*arg0)->unkD0;
    temp_v0->unk62008 = 0xB;
    return (s64) ((s64) temp_v0->unk620B0 << 0x30) >> 0x30;
}

void MgrasVidTextureXferStart(void *arg0) {
    s64 temp_a6;

    temp_a6 = arg0->unk0->unkD0;
    if (arg0->unk8 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a6->unk70084 = 0x9300;
    } else {
        __glMgrasSet(temp_a6, 0x1A6, 1, 1);
    }
}

void MgrasVidTextureXferDone(s64 *arg0) {
    s64 temp_s8;

    temp_s8 = *arg0;
    untimeout(temp_s8->unk788);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s8->unk788 = 0;
    vsema(temp_s8 + 0x790);
}

void mgras_vdmatimeout(s32 arg0) {
    cmn_err(4, saved_reg_gp->unk-7800 + 0x30);
    vsema(arg0 + 0x790);
}
/* Warning: struct mgras_rnode_s is not defined (only forward-declared) */
