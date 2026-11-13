? MgrasCcvUpdate(void *);                           /* extern */
? MgrasDestroyDMA(s64, ?);                          /* extern */
s64 MgrasDmaEditAppend(s64, s64, s32 *);            /* extern */
s64 MgrasDmaEditRelease(s64, s64, s32 *);           /* extern */
s64 MgrasDmaEditReplace(s64, s64, s32 *);           /* extern */
s64 MgrasDmaUpdateTMTLB(s64, s64);                  /* extern */
s64 MgrasDmaUtil_Multi(s64, s64, s32 *);            /* extern */
s64 MgrasDmaUtil_Single(s64, s64, s32 *);           /* extern */
s32 MgrasDownloadGE11Ucode(s64, s64, s32, u8);      /* extern */
s32 MgrasDownloadHQ3Ucode(s64, s64, s32, ?);        /* extern */
? MgrasGatherDynamicInfo(s64, void *);              /* extern */
? MgrasInitGioIntrVectors();                        /* extern */
? MgrasInitHQ(s64, u8);                             /* extern */
? MgrasInitRasterBackend(s64, s64);                 /* extern */
? MgrasInstallTxTbl_Kern(s64, ?, s64, s32);         /* extern */
? MgrasPositionCursor(s64, s32, s32, u16);          /* extern */
? MgrasResetTxTbl_Kern(s64, ?);                     /* extern */
s32 MgrasRestoreOverlap(void *, s64, s64, s64);     /* extern */
? MgrasSchedSwapBufFinish(s64, ?, s32, ?);          /* extern */
s64 MgrasSetColors(s64, s64, s64, s32);             /* extern */
s64 MgrasSetDisplayMode(s64, void *, s32);          /* extern */
s64 MgrasSetGammaRamp(s64, s64, s32, s32);          /* extern */
? MgrasSetGenlock(s64, s32, s32);                   /* extern */
s64 MgrasSetTiming(s64, s64, ?, s32 *);             /* extern */
s64 MgrasShare(s64, s64, s32 *);                    /* extern */
? MgrasUnSchedRetraceEvent(void *, void *);         /* extern */
? MgrasUnSchedSwapTask(void *, void *, ?);          /* extern */
? MgrasUnshare(s64, void *);                        /* extern */
s32 MgrasUserSaveTexData(s64, s32 *);               /* extern */
? MgrasValidateAllRetrace(s64);                     /* extern */
s32 MgrasVidTextureXfer(s64, s32 *);                /* extern */
s64 RRM_CheckValidFault(s64, s64);                  /* extern */
s32 atoi(u8 *);                                     /* extern */
s32 badaddr_val(s64, ?, s32 *);                     /* extern */
s32 copyin(s64, s32 *, s32, s64);                   /* extern */
s32 copyin_xlate(s64, s32 *, ?, s64);               /* extern */
s32 copyout(s64, s64, s64, s32);                    /* extern */
? curproc_abi(?);                                   /* extern */
s32 curthreadhandle(s32, s32);                      /* extern */
? ddv_destroy_handle(s64, s64, s64);                /* extern */
s32 ddv_getaddr(s64, void *);                       /* extern */
s32 ddv_invalphys_fal(s64, ?, ?);                   /* extern */
? ddv_invaltlb(s64, ?, ?);                          /* extern */
? dki_dcache_wbinval(s64, s32);                     /* extern */
? force_resched();                                  /* extern */
? freesema(s32);                                    /* extern */
void *get_current_cred(?);                          /* extern */
s32 gfxdd_mmap(s32, ?, s64, s64);                   /* extern */
? gfxdd_munmap(s64);                                /* extern */
s32 gfxdd_recycle(s64, s64, s64);                   /* extern */
void *gthread_find(s32);                            /* extern */
? gthread_scan(s64, void *, ?, s64);                /* extern */
? hold_nonfatalsig(void *);                         /* extern */
? htp_register_board(?, ?, ?, ?);                   /* extern */
? init_sema(s64, ?, ?, ?);                          /* extern */
s64 kern_malloc(s64, ?);                            /* extern */
s64 kmem_alloc(s32, ?);                             /* extern */
? kmem_free(s64, s32);                              /* extern */
u8 *kopt_find(s32);                                 /* extern */
s64 kvpalloc(s32, ?, ?, s32);                       /* extern */
? kvpfree(s64, s32, s32, s32);                      /* extern */
s32 kvtophyspnum(s64);                              /* extern */
s64 malloc(s64, s32, s64, void *);                  /* extern */
s64 maputokv(s64, s32, ?, s64);                     /* extern */
? mfree(s64, s32, s64, s32);                        /* extern */
s64 mgras_baseindex(s64, ?);                        /* extern */
s32 mgras_fp_reinit(s64, ?);                        /* extern */
s64 mgras_fpi2c_command(s64, s32 *);                /* extern */
s64 mgras_mco_download(s64, s64);                   /* extern */
s64 mgras_mco_load_channel_gamma(s64, s32, s32);    /* extern */
? mgras_mco_shutdown(s64);                          /* extern */
? mutex_destroy(void *);                            /* extern */
s32 psema(s64, ?, s64, s64);                        /* extern */
? release_nonfatalsig(void *);                      /* extern */
? rrmInvalidateRN(s64, s64, ?, s32);                /* extern */
s64 rrmWaitVideoSync(s64, s64, s32, s32);           /* extern */
? spinlock_destroy(s64);                            /* extern */
? spinlock_init(s64, ?, s32, u32);                  /* extern */
s32 thread_issproc(s64);                            /* extern */
s32 timeout(s64, s64, ?, void *);                   /* extern */
? undma(s64, s32, ?);                               /* extern */
? unmaputokv(s64, s32);                             /* extern */
? untimeout(s32, void *);                           /* extern */
? unuseracc(s64, s32, ?);                           /* extern */
s64 useracc(s64, s32, ?, ?);                        /* extern */
s32 userdma(s64, s32, ?, ?);                        /* extern */
? v_mapkvsegment(s64, s32, s32, u64);               /* extern */
? vsema(s64, s64, s32, ?);                          /* extern */
s32 xlate_copyout(s32 *, s64, ?, s64);              /* extern */
s32 MgrasCtxsw(void *arg0, void *arg1, void *arg2, s64 arg4, s64 arg6); /* static */
void MgrasGlContextInit(s64 arg0);                  /* static */
s32 MgrasInvalTLB(void *arg0, s64 arg2);            /* static */
s32 MgrasUnMapGfx(s64 arg0, s64 arg2);              /* static */
void freeblock(s64 arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8); /* static */
void freenode(void *arg0, s64 arg1);                /* static */
s64 getnode(s64 arg0, s64, s32);                    /* static */
void insertnode(s64 arg0, s64 arg1, void *, s16);   /* static */
void mgras_error(void *arg0, s64 arg1, s64 arg6, s64 arg8, s64 arg10); /* static */
void mgras_fifotimer(void *arg0, s32 arg1, s64 arg2, s64); /* static */
void mgras_hqlook(s64 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 arg10, s64 arg12, s64 arg22, s64 arg24, s64 arg26, s64 arg28, s64 arg30, s64 arg32, s64 arg34, s64 arg36, s64 arg38); /* static */

s32 MgrasFlushHQ3Poll(void *arg0, u64 arg1, s64 arg2, s64 arg6) {
    s32 var_s5;
    s32 var_s5_2;
    s32 var_v0;
    void *temp_s3;

    temp_s3 = arg0 + 0x70000;
    if (arg2 != 0) {
        var_s5 = 0x3E8;
loop_2:
        if (arg0->unk70104 & 0x17) {
            us_delay(0xA);
            var_s5 -= 1;
            if (var_s5 > 0) {
                goto loop_2;
            }
        }
        var_v0 = 0;
        if (var_s5 != 0) {

        } else {
            goto block_7;
        }
    } else {
        var_s5_2 = 0x3E8;
        if (arg1 < (u32) (arg0->unk70004 & 0x7F)) {
            arg0 = arg1;
loop_10:
            us_delay(1);
            var_s5_2 -= 1;
            if (var_s5_2 > 0) {
                if ((u64) arg0 < (u32) (temp_s3->unk4 & 0x7F)) {
                    goto loop_10;
                }
            }
        }
        if (var_s5_2 != 0) {
            var_v0 = 0;
        } else {
block_7:
            var_v0 = -1;
        }
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
s32 MgrasFlushHQ3(void *arg0, s64 arg1, u64 arg2, s64 arg3, s64 arg8, s64 arg10, s64 arg12, u64 arg14, s64 arg16) {
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a3;
    s64 temp_a4;
    void *temp_a0_2;

    arg14 = arg2;
    arg12 = arg1;
    arg8 = arg3;
    if (MgrasFlushHQ3Poll((void *) arg1, arg2, arg3) != 0) {
        temp_a0 = arg0 + 0x728;
        arg16 = temp_a0;
        init_sema(temp_a0, 0, 0, -1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk738 = 1;
        mgras_fifotimer(arg0, 1);
        temp_v0 = splhi();
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk68 = 1;
loop_2:
        M2C_ERROR(/* unknown instruction: ll $a2, ($a3) */);
        if (M2C_ERROR(/* unknown instruction: sc $a5, ($a3) */) == 0) {
            goto loop_2;
        }
        arg12->unk50024 = (s32) (arg14 + 1);
        temp_a1 = arg12->unk50018;
        unksp10 = arg12 + 0x50000;
        temp_v0_2 = (temp_a1 & ~0x04000000) | 0x08000000;
        arg12->unk5001C = (s32) (temp_v0_2 ^ temp_a1);
        arg12->unk50018 = temp_v0_2;
        splx(temp_v0);
        if (psema(arg16, 0x1A) != 0) {
loop_6:
            if (arg0->unkC8->unk44 != 0) {
loop_8:
                M2C_ERROR(/* unknown instruction: ll $s0, ($ra) */);
                if (M2C_ERROR(/* unknown instruction: sc $v0, ($ra) */) == 0) {
                    goto loop_8;
                }
                goto block_12;
            }
            temp_a0_2 = arg0 + 0x710;
            arg10 = (s64) temp_a0_2;
            init_sema((s64) temp_a0_2, 0, 0, -1);
            timeout(saved_reg_gp->unk-7800, arg10, 1);
            psema(arg10, 0x19);
            if (psema(arg16, 0x1A) == 0) {
                goto block_15;
            }
            goto loop_6;
        }
block_15:
        if (arg0->unkC8->unk44 != 0) {
loop_17:
            M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
            if (M2C_ERROR(/* unknown instruction: sc $a5, ($v1) */) == 0) {
                goto loop_17;
            }
block_12:
            var_v0 = -1;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            unksp10->unk24 = 0x14;
loop_23:
            M2C_ERROR(/* unknown instruction: ll $a0, ($a1) */);
            temp_a3 = M2C_ERROR(/* unknown instruction: sc $a3, ($a1) */);
            if (temp_a3 == 0) {
                goto loop_23;
            }
            if (MgrasFlushHQ3Poll((void *) arg12, arg14, arg8, temp_a3) != 0) {
                unksp8 = 0;
loop_28:
                if (MgrasFlushHQ3Poll((void *) arg12, arg14, arg8) != 0) {
                    temp_a4 = unksp8 + 1;
                    unksp8 = temp_a4;
                    if (temp_a4 >= 5) {
                        var_v0 = -1;
                    } else {
                        goto loop_28;
                    }
                } else {
                    var_v0 = 0;
                }
            } else {
                var_v0 = 0;
            }
        }
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

void MgrasThrowManagerRssShadow(void *arg0, void *arg1, void *arg2) {
    s32 temp_at;
    s32 temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk4 = (s32) (arg0->unk4 | 0x20000000);
    temp_at = arg2->unk454;
    arg0->unk8 = temp_at;
    arg0->unkC = (s32) arg2->unk53C;
    arg0->unk10 = (s32) arg2->unk5EC;
    arg0->unk14 = (s32) arg2->unk534;
    arg0->unk18 = (s32) arg2->unk538;
    arg0->unk1C = (s32) arg2->unk52C;
    arg0->unk20 = (s32) arg2->unk530;
    arg0->unk24 = (s32) arg2->unk524;
    arg0->unk28 = (s32) arg2->unk528;
    arg0->unk2C = (s32) arg2->unk51C;
    arg0->unk30 = (s32) arg2->unk520;
    temp_v0 = arg2->unk5B4;
    arg0->unk38 = temp_at;
    arg0->unk3C = temp_v0;
    arg0->unk34 = temp_v0;
    arg1->unk4 = (s32) (arg1->unk4 | 0x08000000);
    arg1->unk48 = (s32) arg2->unk118;
    arg1->unk4C = (s32) arg2->unk11C;
    arg1->unk50 = (s32) arg2->unk54C;
    arg1->unk54 = (s32) arg2->unk440;
    arg1->unk58 = (s32) arg2->unk500;
    arg1->unk5C = (s32) arg2->unk504;
    arg1->unk60 = (s32) arg2->unk448;
    arg1->unk64 = (s32) arg2->unk584;
    arg1->unk68 = (s32) arg2->unk588;
    arg1->unk6C = (s32) arg2->unk58C;
    arg1->unk70 = (s32) arg2->unk590;
    arg1->unk74 = (s32) arg2->unk5D8;
    arg1->unk78 = (s32) arg2->unk5DC;
    arg1->unk7C = (s32) arg2->unk5E0;
    arg1->unk80 = (s32) arg2->unk580;
    arg1->unk84 = (s32) arg2->unk5BC;
    arg1->unk88 = (s32) arg2->unk1A0;
    arg1->unk8C = (s32) arg2->unk1A4;
    arg1->unk90 = (s32) arg2->unk44C;
    arg1->unk94 = (s32) arg2->unk450;
    arg1->unk98 = (s32) arg2->unk55C;
    arg1->unk9C = (s32) arg2->unk558;
}

s64 MgrasSetShadowRgn(void *arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6) {
    s64 temp_a1;
    s64 temp_a2;
    s64 temp_at;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_v0;
    void *temp_v0;

    temp_at = arg0->unk70;
    arg4 = temp_at;
    temp_v0 = arg0;
    arg0 = arg1;
    if (temp_at->unk438 != 0) {
        var_v0 = 0xE;
    } else {
        temp_a2 = temp_v0->unk40;
        if ((*temp_a2)->unk8 == temp_a2) {
loop_4:
            M2C_ERROR(/* unknown instruction: ll $a3, ($at) */);
            if (M2C_ERROR(/* unknown instruction: sc $a2, ($at) */) == 0) {
                goto loop_4;
            }
            arg2 = (s64) temp_v0;
            if (*saved_reg_gp >= 0) {
                goto block_8;
            }
loop_12:
            M2C_ERROR(/* unknown instruction: ll $a2, ($a3) */);
            if (M2C_ERROR(/* unknown instruction: sc $v0, ($a3) */) == 0) {
                goto loop_12;
            }
            var_v0 = 0x10;
        } else {
block_8:
            arg2 = (s64) temp_v0;
            temp_v0_2 = useracc(*(s64) arg0, 0x9F8, 0x111, 0);
            if (temp_v0_2 != 0) {
                var_v0 = temp_v0_2;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg4->unk428 = (s64) *(s64) arg0;
                temp_v0_3 = maputokv(*(s64) arg0, 0x9F8, 0x2C);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg4->unk438 = temp_v0_3;
                arg4->unk430 = temp_v0_3;
                temp_a1 = arg2->unk40;
                if (temp_a1->unk0->unk8 == temp_a1) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a1->unk20->unkE0 = (s64) (temp_v0_3 + 0x9F0);
                }
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

void MgrasGE11EramInit(s64 arg0, s64 arg2) {
    s32 temp_a2;
    s32 var_s1;
    s32 var_s1_2;
    s64 temp_a0;
    s64 temp_at;
    s64 temp_at_3;
    s64 temp_s0;
    s64 temp_s2;
    s64 temp_s4;
    s64 temp_v0;
    s64 temp_v0_2;
    void *temp_at_2;

    arg2 = arg0;
    temp_v0 = mgras_baseindex(arg0->unkD0);
    temp_s0 = temp_v0;
    var_s1 = 0;
    temp_s2 = saved_reg_gp->unk-77F8;
    temp_s4 = temp_v0 << 9;
    do {
        temp_a0 = var_s1 + temp_s4;
        var_s1 += 1;
        freenode((temp_a0 << 5) + temp_s2, temp_s0);
    } while (var_s1 < 0x200);
    var_s1_2 = 0;
    do {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_at = (var_s1_2 + (temp_s0 * 9)) << 5;
        var_s1_2 += 1;
        temp_at_2 = temp_at + temp_s2;
        temp_a2 = var_s1_2 < 9;
        temp_at_3 = temp_at_2 + 0x8010;
        temp_at_2->unk8010 = temp_at_3;
        temp_at_2->unk8018 = temp_at_3;
    } while (temp_a2 != 0);
    temp_v0_2 = getnode(temp_s0, 0x10000, temp_a2);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0 = temp_v0_2;
    temp_v0_2->unk1A = 0;
    temp_v0_2->unk19 = 0x10;
    temp_v0_2->unk10 = 0;
    insertnode(temp_v0_2, temp_s0);
    freeblock(arg0, temp_s0);
    MgrasGlContextInit(arg2);
}

void freenode(void *arg0, s64 arg1) {
    s64 temp_at;
    void *temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0 = (arg1 * 8) + saved_reg_gp->unk-77F8;
    arg0->unk0 = 0;
    temp_at = temp_v0->unk8000;
    temp_v0->unk8000 = (s64) arg0;
    arg0->unk8 = temp_at;
}

void getnode(s64 arg0) {
    void *temp_v1;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v1 = (arg0 * 8) + saved_reg_gp->unk-77F8;
    temp_v1->unk8000 = (s64) temp_v1->unk8000->unk8;
}

void insertnode(void *arg0, s64 arg1) {
    s64 temp_v1;
    s64 var_a3;
    void *temp_a5;
    void *var_a4;

    temp_a5 = ((arg0->unk19 + (arg1 * 9)) << 5) + saved_reg_gp->unk-77F8 + 0x7F10;
    var_a3 = temp_a5->unk8;
    var_a4 = temp_a5;
    if (var_a3 != temp_a5) {
loop_2:
        if ((s32) arg0->unk1A >= (s32) var_a3->unk1A) {
            var_a4 = (void *) var_a3;
            var_a3 = var_a3->unk8;
            if (var_a3 != temp_a5) {
                goto loop_2;
            }
        }
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v1 = var_a4->unk8;
    var_a4->unk8 = (s64) arg0;
    arg0->unk8 = temp_v1;
    *temp_v1 = (s64) arg0;
    arg0->unk0 = (s64) var_a4;
}

void removenode(void *arg0) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk0->unk8 = (s64) arg0->unk8;
    *arg0->unk8 = (s64) arg0->unk0;
}

void *findblock(s32 arg0, u8 arg1, s64 arg2) {
    s64 var_a5;
    s64 var_v0;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = ((arg1 + (arg2 * 9)) << 5) + saved_reg_gp->unk-77F8;
    var_a5 = temp_v0->unk7F18;
    temp_v0_2 = temp_v0 + 0x7F10;
    if (temp_v0_2 != var_a5) {
loop_1:
        if (var_a5->unk1A != arg0) {
            var_a5 = var_a5->unk8;
            if (temp_v0_2 == var_a5) {
                goto block_3;
            }
            goto loop_1;
        }
        var_v0 = var_a5;
    } else {
block_3:
        var_v0 = 0;
    }
    return (void *) var_v0;
}

void findbuddy(void *arg0, s64 arg1) {
    s32 temp_a3;
    u8 temp_a1;

    temp_a1 = arg0->unk19;
    temp_a3 = 1 << temp_a1;
    findblock(arg0->unk1A ^ temp_a3, temp_a1, arg1, temp_a3);
}

void freeblock(void *arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8) {
    void *temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk18 = 0;
    arg6 = (s64) arg0;
    arg8 = arg1;
    temp_v0 = findbuddy();
    if (temp_v0 != NULL) {
        arg4 = (s64) temp_v0;
        if (temp_v0->unk18 == 0) {
            arg2 = arg6->unk10;
            removenode((void *) arg6);
            removenode((void *) arg4);
            freenode((void *) arg6, arg8);
            freenode((void *) arg4, arg8);
            if (arg2 != 0) {
                freeblock(arg2, arg8);
            }
        }
    }
}

s32 logbase2(s32 arg0) {
    s32 var_a3;
    s32 var_v0;
    s32 var_v0_2;

    var_v0_2 = arg0;
    if (arg0 > 0) {
        var_a3 = -1;
        do {
            var_v0_2 = (s32) ((u32) var_v0_2 >> 1);
            var_a3 += 1;
        } while (var_v0_2 != 0);
        if ((1 << var_a3) < arg0) {
            var_a3 += 1;
        }
        var_v0 = var_a3;
    } else {
        var_v0 = 1;
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24, 0x28, 0x2c], gap at: 0x18. */
s64 getblock(s32 arg1, s64 arg2, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s16 temp_a3;
    s32 temp_a0;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_v0;
    s64 temp_s5;
    s64 var_a1;
    s64 var_s0;
    s64 var_s0_2;
    s64 var_v0;
    s64 var_v0_2;
    s8 var_s2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;

    temp_v0 = logbase2();
    temp_s7 = (temp_v0 >= 8) ? temp_v0 : 8;
    var_v0 = 0;
    if (temp_s7 < 0x11) {
        temp_s4 = arg2 * 9;
        temp_s5 = saved_reg_gp->unk-77F8;
        temp_v0_2 = ((temp_s7 + temp_s4) << 5) + temp_s5;
        var_s0 = temp_v0_2->unk7F18;
        temp_v0_3 = temp_v0_2 + 0x7F10;
        if (temp_v0_3 != var_s0) {
loop_2:
            if (var_s0->unk18 != 0) {
                var_s0 = var_s0->unk8;
                if (temp_v0_3 == var_s0) {
                    goto block_4;
                }
                goto loop_2;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_s0->unk18 = 1U;
            var_v0 = var_s0;
        } else {
block_4:
            var_s2 = temp_s7 + 1;
            if (var_s2 < 0x11) {
loop_10:
                temp_v0_4 = ((var_s2 + temp_s4) << 5) + temp_s5;
                temp_a0 = temp_v0_4 + 0x7F10;
                if (arg1 != 0) {
                    var_a1 = temp_v0_4->unk7F18;
                } else {
                    var_a1 = temp_v0_4->unk7F10;
                }
                var_s0_2 = var_a1;
                if (var_a1 != temp_a0) {
loop_16:
                    if (var_s0_2->unk18 != 0) {
                        if (arg1 == 0) {
                            var_v0_2 = var_s0_2->unk0;
                        } else {
                            var_v0_2 = var_s0_2->unk8;
                        }
                        var_s0_2 = var_v0_2;
                        if (var_v0_2 != temp_a0) {
                            goto loop_16;
                        }
                        goto block_7;
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_s0_2->unk18 = 1U;
                    unksp10 = getnode(arg2, var_a1);
                    temp_v0_5 = getnode(arg2);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0_5->unk10 = var_s0_2;
                    unksp10->unk10 = var_s0_2;
                    temp_v0_5->unk18 = 0;
                    unksp10->unk18 = 0;
                    var_s2 -= 1;
                    temp_v0_5->unk19 = var_s2;
                    unksp10->unk19 = var_s2;
                    unksp10->unk1A = (u16) var_s0_2->unk1A;
                    temp_a3 = var_s0_2->unk1A | (1 << var_s2);
                    temp_v0_5->unk1A = temp_a3;
                    if (temp_s7 == var_s2) {
                        if (arg1 != 0) {
                            insertnode((s64) temp_v0_5, arg2, temp_v0_5, temp_a3);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            unksp10->unk18 = 1;
                            insertnode(unksp10, arg2);
                            var_v0 = unksp10;
                        } else {
                            unksp18 = (s64) temp_v0_5;
                            insertnode(unksp10, arg2, temp_v0_5, temp_a3);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            unksp18->unk18 = 1;
                            insertnode(unksp18, arg2);
                            var_v0 = unksp18;
                        }
                    } else {
                        unksp18 = (s64) temp_v0_5;
                        insertnode(unksp10, arg2, temp_v0_5, temp_a3);
                        insertnode(unksp18, arg2);
                        goto block_7;
                    }
                } else {
block_7:
                    if (var_s0_2 == temp_a0) {
                        var_s2 += 1;
                    }
                    if (var_s2 < 0x11) {
                        goto loop_10;
                    }
                    goto block_20;
                }
            } else {
block_20:
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

void reservelow(s64 arg0, s32 arg1, s64 arg2, s64 arg24) {
    s32 var_s1_2;
    s32 var_s3;
    s64 temp_at;
    s64 temp_s0;
    s64 temp_s5;
    s64 temp_s6;
    s64 var_s0;
    s8 var_s1;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;

    temp_s6 = arg2;
    var_s3 = (arg0 + 0xFF) & ~0xFF;
    temp_s0 = (arg0 + arg1 + 0xFF) & ~0xFF;
    if (arg1 >= 0) {
        temp_at = var_s3 < temp_s0;
        arg0 = temp_at;
        if (temp_at != 0) {
            arg2 = temp_s0;
            temp_s5 = saved_reg_gp->unk-77F8;
loop_5:
            temp_v0 = findblock(var_s3, 8U, temp_s6);
            if (temp_v0 != NULL) {
                if (temp_v0->unk18 != 0) {
                    cmn_err(0, saved_reg_gp->unk-77F0 + 0x50);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0->unk18 = 1U;
                var_s3 += 0x100;
                arg0 = var_s3 < arg2;
            } else {
                var_s1 = 9;
loop_12:
                temp_v0_2 = ((var_s1 + (temp_s6 * 9)) << 5) + temp_s5;
                var_s0 = temp_v0_2->unk7F18;
                temp_v0_3 = temp_v0_2 + 0x7F10;
                if (temp_v0_3 != var_s0) {
loop_15:
                    if ((var_s0->unk18 == 0) && (var_s0->unk1A == var_s3)) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_s0->unk18 = 1U;
                        arg24 = getnode(temp_s6);
                        temp_v0_4 = getnode(temp_s6);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_s1 -= 1;
                        temp_v0_4->unk10 = var_s0;
                        arg24->unk10 = var_s0;
                        temp_v0_4->unk18 = 0;
                        arg24->unk18 = 0;
                        temp_v0_4->unk19 = var_s1;
                        arg24->unk19 = var_s1;
                        arg24->unk1A = (u16) var_s0->unk1A;
                        temp_v0_4->unk1A = (s16) (var_s0->unk1A | (1 << var_s1));
                        insertnode(arg24, temp_s6);
                        insertnode((s64) temp_v0_4, temp_s6);
                    } else {
                        var_s0 = var_s0->unk8;
                        if (temp_v0_3 != var_s0) {
                            goto loop_15;
                        }
                    }
                }
                if (temp_v0_3 == var_s0) {
                    var_s1 += 1;
                    goto block_11;
                }
                if (var_s1 != 8) {
block_11:
                    if (var_s1 < 0x11) {
                        goto loop_12;
                    }
                }
                if (var_s1 >= 0x11) {
                    cmn_err(0, saved_reg_gp->unk-77F0 + 0x70);
                }
            }
            if (arg0 != 0) {
                goto loop_5;
            }
        }
    } else if (temp_s0 < var_s3) {
        var_s1_2 = var_s3 - 0x100;
loop_26:
        temp_v0_5 = findblock(var_s1_2, 8U, temp_s6);
        if (temp_v0_5 == NULL) {
            cmn_err(0, saved_reg_gp->unk-77F0 + 0x30);
        } else {
            freeblock((s64) temp_v0_5, temp_s6);
        }
        var_s1_2 -= 0x100;
        var_s3 -= 0x100;
        if (temp_s0 < var_s3) {
            goto loop_26;
        }
    }
}

void MgrasGlContextInit(void *arg0) {
    s32 temp_a2;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_v1;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_ra = arg0->unk660;
    arg0->unk65C = (s32) ((1 << temp_ra) - 1);
    temp_s0 = arg0->unk664 + (arg0->unk668 * temp_ra);
    reservelow(0, temp_s0, mgras_baseindex(arg0->unkD0));
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v1 = arg0->unk668;
    temp_a2 = (0x10000 - temp_s0) & ~0xFF;
    arg0->unk698 = temp_a2;
    arg0->unk694 = temp_a2;
    M2C_TRAP_IF(temp_v1 == 0);
    arg0->unk690 = (s32) ((s32) (0x10000 - arg0->unk664) / temp_v1);
}

s32 MgrasGlContextAlloc(void *arg0) {
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a3;

    temp_v0 = arg0->unk660;
    var_a3 = 0;
    if (temp_v0 > 0) {
        temp_a4 = arg0->unk65C;
loop_2:
        temp_a5 = 1 << var_a3;
        if (!(temp_a4 & temp_a5)) {
            var_a3 += 1;
            if (var_a3 >= temp_v0) {
                goto block_4;
            }
            goto loop_2;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk65C = (s32) (~temp_a5 & temp_a4);
        return arg0->unk664 + (arg0->unk668 * var_a3);
    }
block_4:
    return -1;
}

void MgrasGlContextFree(void *arg0, s32 arg1) {
    s32 temp_v1;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v1 = arg0->unk668;
    M2C_TRAP_IF(temp_v1 == 0);
    arg0->unk65C = (s32) (arg0->unk65C | (1 << ((s32) (arg1 - arg0->unk664) / temp_v1)));
}

s32 MgrasEramBufAlloc(void *arg0, void *arg1) {
    s64 temp_s8;
    s64 temp_v0;

    temp_s8 = mgras_baseindex(arg0->unkD0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk7DC = splhi();
    temp_v0 = getblock(arg1->unk0, 0, temp_s8);
    if (temp_v0 == 0) {
        splx(arg0->unk7DC);
        return -1;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg1->unk20 = temp_v0;
    arg1->unk4 = (s32) temp_v0->unk1A;
    splx(arg0->unk7DC);
    return arg1->unk4;
}

void MgrasEramBufFree(void *arg0, void *arg1) {
    s64 temp_s8;

    temp_s8 = mgras_baseindex(arg0->unkD0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk7DC = splhi();
    freeblock(arg1->unk20, temp_s8);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg1->unk20 = 0;
    arg1->unk4 = -1;
    splx(arg0->unk7DC);
}

s32 MgrasEramRead(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg26, s64 arg28, s64 arg30, s64 arg32, s64 arg34, s64 arg36, s64 arg38) {
    s32 temp_lo;
    s32 var_s0;
    s32 var_v0;
    s64 temp_a0_2;
    s64 temp_a4;
    s64 temp_a4_2;
    s64 temp_a4_3;
    s64 temp_s7;
    s64 temp_v1;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s4;
    u32 temp_s2;
    u8 var_v0_2;
    void *temp_a0;
    void *temp_at;

    temp_a0 = arg0;
    temp_at = temp_a0;
    arg0 = arg2;
    arg2 = (s64) temp_a0;
    temp_a0_2 = temp_a0->unkD0;
    arg4 = temp_a0_2;
    MgrasInstallTxTbl_Kern(temp_a0_2, 2, temp_at->unk6A0, temp_at->unk6A8);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg6 = arg3;
    arg8 = arg1;
    arg2->unk6BC = 0;
    var_v0_2 = arg2->unkC8->unk2B;
    arg24 = 0;
    if ((s32) var_v0_2 > 0) {
        arg6 = arg3;
        arg8 = arg1;
        arg20 = arg3 + 1;
        arg18 = arg1 - 1;
        temp_a4 = arg3 * 4;
        arg16 = temp_a4;
        temp_s7 = saved_reg_gp->unk-77C8;
        arg22 = ((u64) (temp_a4 << 0x20) >> 0x20) | saved_reg_gp->unk-7800;
loop_3:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a4_2 = (s64) arg0 & ~0xFFF;
        var_s4 = arg18;
        arg4->unk70080 = (s64) (((u64) ((((temp_a4_2 >> 0x16) + 0x8000) << 0x10) << 0x20) >> 0x20) | saved_reg_gp->unk-77F8);
        arg4->unk70080 = (s64) saved_reg_gp->unk-77F0;
        var_s3 = arg20;
        arg4->unk70080 = (s64) (((u64) (((s64) arg0 & 0xFFF) << 0x20) >> 0x20) | saved_reg_gp->unk-77E8);
        arg4->unk70080 = (s64) (((u64) (temp_a4_2 << 0x20) >> 0x20) | saved_reg_gp->unk-77E0);
        arg4->unk70080 = (s64) saved_reg_gp->unk-77D8;
        arg4->unk70080 = arg22;
        arg4->unk70080 = (s64) saved_reg_gp->unk-77D0;
        if (!((s64) arg0 & 4)) {
            var_s4 = arg8;
            var_s3 = arg6;
        }
        var_s3_2 = (var_s3 + 1) & ~1;
        if (var_s3_2 > 0) {
loop_8:
            temp_s2 = ((u32) (arg4->unk70004 & 0x1FC00000) >> 0x16) - 5;
            var_s0 = 0x3E8;
            if (temp_s2 < (u32) (arg4->unk70004 & 0x7F)) {
loop_9:
                us_delay(1);
                var_s0 -= 1;
                if (var_s0 > 0) {
                    if (temp_s2 >= (u32) (arg4->unk70004 & 0x7F)) {
                        goto block_11;
                    }
                    goto loop_9;
                }
                goto block_14;
            }
block_11:
            if (var_s0 > 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg4->unk70080 = (s64) (((u64) (var_s4 << 0x20) >> 0x20) | (0x1F81 << 0x23));
                if (var_s3_2 < 0x3FFF) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a4_3 = var_s3_2 << 0x20;
                    var_s3_2 = 0;
                    arg4->unk70080 = (s64) (temp_a4_3 | 0x100);
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg4->unk70080 = temp_s7;
                    var_s3_2 -= 0x3FFE;
                    var_s4 += 0x3FFE;
                    arg4->unk70084 = 0xF900;
                }
                if (var_s3_2 > 0) {
                    goto loop_8;
                }
                goto block_2;
            }
block_14:
            printf(saved_reg_gp->unk-77F0 + 0x90);
            var_v0 = -1;
        } else {
block_2:
            var_v0_2 = arg2->unkC8->unk2B;
            temp_v1 = arg24 + 1;
            arg24 = temp_v1;
            arg0 = arg16 + (s64) arg0;
            if (temp_v1 < (s32) var_v0_2) {
                goto loop_3;
            }
            goto block_19;
        }
    } else {
block_19:
        temp_lo = arg6 * var_v0_2;
        if (arg8 < (0x10000 - arg2->unk698)) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg2->unk6E0 = (s64) (arg2->unk6E0 + temp_lo);
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg2->unk6F0 = (s64) (arg2->unk6F0 + temp_lo);
        }
        var_v0 = 0;
    }
    return var_v0;
}

void MgrasNextEramResource(s64 arg0) {
    s32 *var_v0;
    s32 temp_a5;
    s64 var_a3;
    void *temp_a4;

    var_v0 = NULL;
    var_a3 = 0;
loop_3:
    temp_a4 = (var_a3 * 0x28) + arg0;
    temp_a5 = temp_a4->unk130;
    var_a3 += 1;
    if ((temp_a5 != 0) && (temp_a4->unk134 == -1)) {
        if (var_v0 != NULL) {
            if (*var_v0 < temp_a5) {
                goto block_1;
            }
        } else {
block_1:
            var_v0 = temp_a4 + 0x130;
        }
    }
    if (var_a3 < 8) {
        goto loop_3;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x68, 0x6c, 0x70, 0x74], gap at: 0x38. */
s32 MgrasEramWrite(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg30, s64 arg32) {
    s32 temp_lo;
    s32 var_s0;
    s32 var_v0;
    s64 temp_a2;
    s64 temp_a4;
    s64 temp_at;
    s64 temp_s0;
    s64 var_s3;
    s64 var_s4;
    s64 var_s5;
    s64 var_s6;
    u32 temp_s2;
    u8 var_v0_2;

    temp_a2 = arg2;
    arg2 = arg3;
    arg4 = temp_a2;
    arg6 = arg1;
    temp_s0 = arg0->unkD0;
    MgrasInstallTxTbl_Kern(temp_s0, 2, arg0->unk6A0, arg0->unk6A8);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    ((s64) arg0)->unk6BC = 0;
    temp_s0->unk70080 = (s64) saved_reg_gp->unk-77C0;
    var_v0_2 = ((s64) arg0)->unkC8->unk2B;
    unksp30 = 0;
    var_s6 = 0;
    if ((s32) var_v0_2 > 0) {
        unksp38 = ((u64) (arg6 << 0x20) >> 0x20) | saved_reg_gp->unk-77E0;
        unksp40 = ((u64) ((((arg6 >> 0x16) + 0x8000) << 0x10) << 0x20) >> 0x20) | saved_reg_gp->unk-77F8;
loop_3:
        var_s4 = 0x384;
        var_s5 = arg4;
        var_s3 = arg2;
        if (arg2 > 0) {
loop_9:
            temp_s2 = ((u32) (temp_s0->unk70004 & 0x1FC00000) >> 0x16) - 0x14;
            var_s0 = 0x3E8;
            if (temp_s2 < (u32) (temp_s0->unk70004 & 0x7F)) {
loop_5:
                us_delay(1);
                var_s0 -= 1;
                if (var_s0 > 0) {
                    if (temp_s2 >= (u32) (temp_s0->unk70004 & 0x7F)) {
                        goto block_7;
                    }
                    goto loop_5;
                }
                goto block_11;
            }
block_7:
            if (var_s0 > 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_s4 = (var_s3 < var_s4) ? var_s3 : var_s4;
                temp_s0->unk70080 = unksp40;
                temp_s0->unk70080 = (s64) saved_reg_gp->unk-77F0;
                temp_s0->unk70080 = unksp38;
                temp_s0->unk70080 = (s64) saved_reg_gp->unk-77D8;
                temp_s0->unk70080 = (s64) (((u64) (var_s6 << 0x20) >> 0x20) | saved_reg_gp->unk-77E8);
                temp_a4 = var_s4 * 4;
                temp_s0->unk70080 = (s64) (((u64) (var_s4 << 0x20) >> 0x20) | (0x3F41 << 0x22));
                temp_s0->unk70080 = (s64) (((u64) (temp_a4 << 0x20) >> 0x20) | saved_reg_gp->unk-7800);
                var_s3 -= var_s4;
                temp_s0->unk70080 = (s64) saved_reg_gp->unk-77B8;
                var_s6 += temp_a4;
                temp_s0->unk70080 = (s64) (((u64) (var_s5 << 0x20) >> 0x20) | (0x1F61 << 0x23));
                var_s5 += var_s4;
                temp_s0->unk70084 = (s32) var_s4;
                if (var_s3 > 0) {
                    goto loop_9;
                }
                goto block_2;
            }
block_11:
            printf(saved_reg_gp->unk-77F0 + 0xB8);
            var_v0 = -1;
        } else {
block_2:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk70084 = 0xFA00;
            var_v0_2 = ((s64) arg0)->unkC8->unk2B;
            temp_at = unksp30 + 1;
            unksp30 = temp_at;
            if (temp_at < (s32) var_v0_2) {
                goto loop_3;
            }
            goto block_15;
        }
    } else {
block_15:
        temp_lo = arg2 * var_v0_2;
        if (arg4 < (0x10000 - ((s64) arg0)->unk698)) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) arg0)->unk6E0 = (s64) (((s64) arg0)->unk6E0 + temp_lo);
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) arg0)->unk6F0 = (s64) (((s64) arg0)->unk6F0 + temp_lo);
        }
        var_v0 = 0;
    }
    return var_v0;
}

s32 MgrasValidateEramRes(void *arg0, void *arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg26, s64 arg28) {
    s32 temp_v0;
    s32 var_s0;
    s32 var_s4;
    s32 var_v0;
    s64 temp_a1_2;
    s64 temp_s6;
    s64 temp_s8;
    s64 var_a3;
    u32 temp_s3;
    void *temp_a0;
    void *temp_a1;
    void *temp_s1;

    arg4 = arg0->unkD0;
    temp_s1 = arg0;
    var_v0 = 0;
    arg6 = arg2;
    if (arg0->unk1A8 == arg1) {
        if (RRM_CheckValidFault(arg1->unk10->unk40) >= 0) {
            temp_a0 = temp_s1;
            temp_a1 = (arg6 * 0x28) + arg1;
            arg0 = (s64) temp_a1;
            temp_v0 = MgrasEramBufAlloc(temp_a0, temp_a1 + 0x130, arg6);
            var_a3 = (s64) arg0;
            if ((temp_v0 >= 0) && (var_a3 = (s64) var_a3->unk148, (var_a3 != 0))) {
                var_s4 = 0;
                arg2 = (s64) arg1;
                temp_s3 = ((u32) (arg4->unk70004 & 0x1FC00000) >> 0x16) - 0xC;
                if ((s32) temp_s1->unkC8->unk2B > 0) {
                    temp_s6 = saved_reg_gp->unk-77B0;
                    temp_s8 = saved_reg_gp->unk-77A8;
                    arg2 = (s64) arg1;
                    arg8 = ((u64) ((arg1->unk34 + temp_s1->unk688 + arg6) << 0x20) >> 0x20) | (0x1F61 << 0x23);
loop_11:
                    var_s4 += 1;
                    var_s0 = 0x3E8;
                    if (temp_s3 < (u32) (arg4->unk70004 & 0x7F)) {
loop_7:
                        us_delay(1);
                        var_s0 -= 1;
                        if (var_s0 > 0) {
                            if (temp_s3 >= (u32) (arg4->unk70004 & 0x7F)) {
                                goto block_9;
                            }
                            goto loop_7;
                        }
                        goto block_15;
                    }
block_9:
                    if (var_s0 > 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg4->unk70080 = temp_s6;
                        arg4->unk70084 = 0x80000008;
                        arg4->unk70080 = temp_v0;
                        arg4->unk70080 = 0;
                        arg4->unk70080 = arg8;
                        arg4->unk70080 = temp_s8;
                        if (var_s4 < (s32) temp_s1->unkC8->unk2B) {
                            goto loop_11;
                        }
                        goto block_13;
                    }
block_15:
                    printf(saved_reg_gp->unk-77F0 + 0xE0);
                    var_v0 = -1;
                } else {
block_13:
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    ((s64) arg0)->unk134 = temp_v0;
                    ((s64) arg0)->unk148 = 0;
                    ((arg6 * 4) + arg2)->unkD4 = temp_v0;
                    var_v0 = 0;
                }
            } else {
                temp_a1_2 = arg1->unk10;
                rrmInvalidateRN(temp_a1_2->unk40, temp_a1_2, 1, (s32) var_a3);
                MgrasUnMapGfx(arg1->unk10->unk40);
                var_v0 = MgrasCtxsw(temp_s1, temp_s1 + 0x1B8, arg1);
            }
        } else {
            var_v0 = -1;
        }
    }
    return var_v0;
}

void MgrasEramManagerTimeout(void *arg0) {
    s64 temp_at;
    s64 temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk700 = 1;
    temp_at = arg0->unk6E0;
    arg0->unk6E0 = 0;
    temp_v0 = arg0->unk6F0;
    arg0->unk6F0 = 0;
    arg0->unk6F8 = temp_v0;
    arg0->unk6E8 = temp_at;
    timeout(saved_reg_gp->unk-77E8, (s64) arg0, 0x1770);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x40, 0x44, 0x48, 0x4c], gap at: 0x30. */
s32 MgrasMoveDemarcationUp(void *arg0, s64 arg2) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s8_2;
    s32 var_v0;
    s64 var_s2;
    s64 var_s3;
    void *temp_s0;
    void *temp_s1;
    void *temp_s8;

    temp_s0 = arg0;
    temp_s8 = arg0 + 0x7B8;
    temp_s5 = temp_s0 + 0x7C8;
    mutex_lock(temp_s8);
    var_s3 = temp_s0->unk7C8;
    if (temp_s5 != var_s3) {
loop_3:
        var_s2 = 0;
loop_7:
        temp_s1 = (var_s2 * 0x28) + var_s3;
        temp_a3 = temp_s1->unk130;
        var_s2 += 1;
        if ((temp_a3 != 0) && (temp_a1 = temp_s1->unk134, (temp_a1 != -1))) {
            if (MgrasEramRead(temp_s0, (s64) temp_a1, (s64) temp_s1->unk140, (s64) temp_a3) >= 0) {
                MgrasEramBufFree(temp_s0, temp_s1 + 0x130);
                goto block_6;
            }
            mutex_unlock(temp_s8);
            var_v0 = -1;
        } else {
block_6:
            if (var_s2 < 8) {
                goto loop_7;
            }
            var_s3 = *var_s3;
            if (temp_s5 != var_s3) {
                goto loop_3;
            }
            goto block_10;
        }
    } else {
block_10:
        mutex_unlock(temp_s8);
        temp_s8_2 = temp_s0->unk668;
        temp_s4 = temp_s0->unk660;
        arg2 = (s64) temp_s4;
        arg0 = temp_s0->unk664 + (temp_s4 * temp_s8_2);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk7DC = splhi();
        reservelow((s64) arg0, temp_s8_2, mgras_baseindex(temp_s0->unkD0));
        splx(temp_s0->unk7DC);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk65C = (s32) (temp_s0->unk65C | (1 << arg2));
        temp_s0->unk660 = (s32) (temp_s0->unk660 + 1);
        temp_s0->unk698 = (s32) ((temp_s0->unk698 - temp_s8_2) & ~0xFF);
        var_v0 = 0;
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34], gap at: 0x10. */
s32 MgrasMoveDemarcationDown(void *arg0, s64 arg14, s64 arg16, s64 arg18, s64 arg20) {
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_s5;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_v1;
    s64 var_s2;
    void *temp_a0;
    void *temp_s3;

    var_v0_2 = arg0->unk660;
    temp_s5 = var_v0_2 - 1;
    temp_v1 = 1 << temp_s5;
    temp_s1 = arg0->unk668;
    unksp18 = temp_v1;
    if (!(arg0->unk65C & temp_v1)) {
        arg14 = (s64) var_v0_2;
        temp_a0 = arg0 + 0x7B8;
        unksp8 = (s64) temp_a0;
        temp_s3 = arg0 + 0x7C8;
        mutex_lock(temp_a0);
        var_s2 = arg0->unk7C8;
        if (temp_s3 != var_s2) {
loop_3:
            temp_s4 = var_s2->unk34;
            M2C_TRAP_IF(temp_s1 == 0);
            if (((s32) (temp_s4 - arg0->unk664) / temp_s1) != temp_s5) {
                var_s2 = var_s2->unk0;
                if (temp_s3 == var_s2) {
                    goto block_5;
                }
                goto loop_3;
            }
            if (MgrasEramRead(arg0, (s64) temp_s4, (s64) var_s2->unk278, (s64) temp_s1) >= 0) {
                MgrasGlContextFree(arg0, temp_s4);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_s2->unk34 = -1;
                if (temp_s3 == var_s2) {
                    goto block_5;
                }
                goto block_6;
            }
            var_v0 = -1;
        } else {
block_5:
            cmn_err(4, saved_reg_gp->unk-77F0 + 0x110);
block_6:
            mutex_unlock((void *) unksp8);
            var_v0_2 = (s32) arg14;
            goto block_7;
        }
    } else {
block_7:
        unksp10 = arg0->unk664 + (var_v0_2 * temp_s1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk7DC = splhi();
        reservelow(unksp10, -temp_s1, mgras_baseindex(arg0->unkD0));
        splx(arg0->unk7DC);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk660 = (s32) (arg0->unk660 - 1);
        arg0->unk65C = (s32) (arg0->unk65C & ~unksp18);
        arg0->unk698 = (s32) ((arg0->unk698 + temp_s1) & ~0xFF);
        var_v0 = 0;
    }
    return var_v0;
}

s32 MgrasInfo(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10) {
    s32 var_v0;
    s64 temp_a2;

    arg8 = arg2;
    arg4 = arg3;
    arg10 = arg1;
    MgrasGatherDynamicInfo(arg0->unkD0, arg0);
    temp_a2 = ((u64) ((u64) (arg8 << 0x20) >> 0x20) <= 0xCCU) ? arg8 : 0xCC;
    arg6 = temp_a2;
    if (copyout(arg0->unkC8, arg10, temp_a2) != 0) {
        var_v0 = 0xE;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_v0 = 0;
        *arg4 = (s32) arg6;
    }
    return var_v0;
}

void mgras_regmatch(s64 arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6) {
    s64 temp_a0;
    s64 var_a1;
    s64 var_a2;

    var_a1 = arg1;
    var_a2 = arg2;
    if (arg0 != 0) {
        arg4 = var_a2;
        arg2 = var_a1;
        MgrasUnMapGfx(arg0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk48 = 0;
        temp_a0 = arg0->unk28;
        var_a1 = arg2;
        var_a2 = arg4;
        if (temp_a0 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk28 = 0;
            ddv_destroy_handle(temp_a0, var_a1, var_a2);
            var_a1 = arg2;
            var_a2 = arg4;
        }
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_a2->unk28 = var_a1;
}

s32 MgrasAttach(s64 arg0, s64 arg1, s64 arg2, s64 arg8, s64 arg10, s64 arg12) {
    s32 temp_a6;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a3;
    s64 temp_v1;
    s64 var_v0_2;
    void *temp_a5;

    temp_a0 = arg0;
    arg10 = arg1;
    arg7 = 0;
    arg5 = 0;
    arg4 = 2;
    arg0 = 0;
    arg2 = 0x100000;
    arg8 = temp_a0;
    var_v0 = 0x16;
    arg6 = 3;
    if (!(arg1 & 0x3FFF)) {
        temp_a6 = saved_reg_gp->unk-77FC;
        if (gfxdd_recycle(saved_reg_gp->unk-77E0, arg8, arg10) != 0) {
            if (temp_a6 != 0) {
                printf(saved_reg_gp->unk-77F0 + 0x130);
            }
            var_v0 = 0;
        } else {
            if (temp_a6 != 0) {
                printf(saved_reg_gp->unk-77F0 + 0x158);
            }
            var_v0_2 = 0;
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a5 = (var_v0_2 << 5) + sp;
                temp_v1 = temp_a5->unk8;
                var_v0_2 += 1;
                temp_a5->unk8 = (s64) (temp_v1 + arg10);
                temp_a3 = temp_a5->unk0 + arg10;
                temp_a5->unk0 = temp_a3;
            } while (var_v0_2 <= 0);
            if (saved_reg_gp->unk-77FC != 0) {
                printf(saved_reg_gp->unk-77F0 + 0x188, arg0, arg2, temp_a3);
                printf(saved_reg_gp->unk-77F0 + 0x1A0, arg10, 0x100000, (arg8->unk30 & 8) == 0);
            }
            if (gfxdd_mmap((arg8->unk30 & 8) != 0, 0x100000, arg0, saved_reg_gp->unk-77D8) != 0) {
                var_v0 = 0xC;
            } else {
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

s32 MgrasDetach(void *arg0) {
    s64 temp_at;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_at = arg0->unk28;
    arg0->unk28 = 0;
    gfxdd_munmap(temp_at);
    return 0;
}

s32 MgrasInitialize(void *arg0, s64 arg2, s64 arg12, s64 arg14, s64 arg16, s64 arg18) {
    s32 var_s3;
    s32 var_v0;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_s0;
    s64 temp_s2;
    s64 temp_s4;
    s64 temp_s5;
    s64 temp_s6;
    void *temp_s1;

    temp_s0 = arg0->unk20;
    temp_s6 = temp_s0->unkD0;
    temp_s1 = arg0;
    arg2 = temp_s0->unkC8;
    arg0 = mgras_baseindex(temp_s6);
    htp_register_board(0, 0, 0, 0);
    var_s3 = 0;
    temp_s4 = saved_reg_gp->unk-7800;
    temp_s2 = temp_s0 + 0x748;
    if (temp_s0->unk69C != 0) {
        temp_s5 = saved_reg_gp->unk-77F0;
loop_2:
        cmn_err(4, temp_s5 + 0x1C8, temp_s0->unk69C);
        init_sema(temp_s2, 0, 0, -1);
        timeout(temp_s4, temp_s2, 0x1F4);
        psema(temp_s2, 0x19);
        var_s3 += 1;
        if (var_s3 < 0xB) {
            if (temp_s0->unk69C == 0) {
                goto block_4;
            }
            goto loop_2;
        }
        var_v0 = -1;
    } else {
block_4:
        temp_a2 = temp_s1->unk20;
        temp_a3 = temp_a2->unk48;
        if (temp_a3 != temp_s1) {
            psema(temp_a2 + 0x38, 0x219, temp_a2, temp_a3);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s1->unk20->unk48 = (s64) temp_s1;
            if (temp_s1->unk20->unk68 != 0) {
                do {
                    us_delay(2);
                } while (temp_s1->unk20->unk68 != 0);
            }
        }
        MgrasReset((mgras_hw *) temp_s6);
        MgrasRetraceInit((mgras_data_t *) temp_s0);
        MgrasInitHQ(temp_s6, arg2->unk2B);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        (((s64) arg0 * 0x30) + saved_reg_gp->unk-77D0)->unk20 = 1;
        MgrasInitGioIntrVectors();
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s6->unk50018 = 0x4400E200;
        var_v0 = 0;
    }
    return var_v0;
}

s64 MgrasDownload(void *arg0, void *arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg10) {
    s32 temp_a2;
    s32 temp_a7;
    s64 temp_a6;
    s64 var_a3;
    s64 var_v0;

    temp_a7 = arg1->unk0;
    temp_a6 = arg0->unk20;
    if ((temp_a7 > 0) && (arg2 = 0, arg4 = temp_a6->unkD0, arg6 = temp_a6, ((temp_a7 > 0x100000) == 0))) {
        if (userdma(arg1->unk8, temp_a7, 0, 0) != 0) {
            var_v0 = 0xE;
        } else {
            temp_a2 = arg1->unk10;
            arg0 = maputokv(arg1->unk8, arg1->unk0, 0x10);
            if (temp_a2 != 3) {
                if (temp_a2 != 0xB) {
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x280, temp_a2, 3);
                    var_a3 = 0x16;
                    goto block_9;
                }
                if (MgrasDownloadGE11Ucode(arg4, (s64) arg0, arg1->unk0, arg6->unkC8->unk2B) != 0) {
                    printf(saved_reg_gp->unk-77F0 + 0x250);
                    var_a3 = 5;
                    goto block_9;
                }
            } else if (MgrasDownloadHQ3Ucode(arg4, (s64) arg0, arg1->unk0, 0) != 0) {
                printf(saved_reg_gp->unk-77F0 + 0x220);
                var_a3 = 5;
block_9:
                arg2 = var_a3;
            }
            undma(arg1->unk8, arg1->unk0, 0);
            unmaputokv((s64) arg0, arg1->unk0);
            var_v0 = arg2;
        }
    } else {
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x200, temp_a7);
        var_v0 = 0x16;
    }
    return var_v0;
}

s32 MgrasStart(void *arg0, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg22, s64 arg24) {
    s32 temp_a2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a3;
    s32 var_s3;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_s0;
    s64 temp_s1;
    s64 temp_s3;
    s64 temp_s3_3;
    s64 temp_s4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 temp_v1;
    s64 var_s3_2;
    u32 temp_a3;
    u8 *temp_v0;
    u8 temp_v0_2;
    u8 temp_v0_7;
    void *temp_s2;
    void *temp_s3_2;
    void *temp_s5;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg6 = 0;
    arg4 = 0;
    arg2 = 0;
    temp_s0 = arg0->unk20;
    temp_s0->unk758 = 0;
    temp_s0->unkE0 = 0;
    temp_s0->unk1A0 = 0;
    temp_s0->unk54 = 0;
    temp_s0->unk78 = 0;
    temp_s0->unk68 = 0;
    temp_s0->unk10 = 0;
    temp_s0->unk8 = 0;
    temp_s1 = temp_s0->unkC8;
    temp_s4 = temp_s0->unkD0;
    temp_s2 = arg0;
    temp_s1->unk44 = 0;
    temp_s4->unk70080 = (s64) (temp_s1->unk2B | (0x3FC1 << 0x22));
    arg8 = 0;
    var_s3 = 0x7E8C;
    arg0 = temp_s4 + 0x70000;
    temp_s4->unk70080 = (s64) (((u64) ((s64) ((s32) temp_s1->unk2C >> 1) << 0x20) >> 0x20) | (0x2301 << 0x22));
    temp_v0 = kopt_find(saved_reg_gp->unk-77F0 + 0x2A8);
    if ((temp_v0 != NULL) && (*temp_v0 != 0)) {
        var_s3 = (((atoi(temp_v0) << 0) & 0x3F) << 9) | 0x8C;
    }
    temp_v0_2 = temp_s1->unk2B;
    if (temp_v0_2 != 0) {
        var_s3 = (var_s3 | temp_v0_2) & ~8;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s4->unk50000 = var_s3;
    temp_s3 = temp_s0 + 0x7D8;
    temp_s0->unkD0->unk70008 = 0x10000;
    init_sema(temp_s0 + 0x7A0, 0, 0, -1);
    init_sema(temp_s0 + 0x630, 0, 0, -1);
    init_sema(temp_s0 + 0x640, 0, 0, -1);
    init_sema(temp_s0 + 0x778, 1, 0, -1);
    init_sema(temp_s0 + 0x790, 1, 0, -1);
    temp_s5 = temp_s0 + 0x7B8;
    if (temp_s0->unk6A0 != 0) {
        mutex_destroy(temp_s5);
        spinlock_destroy(temp_s3);
        spinlock_destroy(temp_s0 + 0x6AC);
    }
    init_mutex(temp_s5);
    temp_s3_2 = temp_s0 + 0x1B8;
    spinlock_init(temp_s3, 0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s0->unk654 = 0;
    temp_s0->unk1A8 = 0;
    bzero(temp_s3_2, 0x478U);
    temp_v0_3 = MgrasGlContextAlloc((void *) temp_s0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s0->unk1EC = temp_v0_3;
    if (temp_v0_3 != -1) {
loop_8:
        M2C_ERROR(/* unknown instruction: ll $a4, ($a5) */);
        if (M2C_ERROR(/* unknown instruction: sc $a7, ($a5) */) == 0) {
            goto loop_8;
        }
        if (MgrasCtxsw((void *) temp_s0, temp_s3_2, temp_s3_2, -1) >= 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk1A8 = (s64) temp_s3_2;
            ((s64) arg0)->unk80 = (s64) (temp_s1->unk2B | (0x3FC1 << 0x22));
            temp_v1 = temp_s0 + 0x7C8;
            temp_s0->unk7C8 = temp_v1;
            temp_s0->unk7D0 = temp_v1;
            temp_s0->unk69C = 0;
            temp_s0->unk658 = 0;
            temp_s0->unk1F0 = (s32) (temp_s0->unk1F0 | 0x80000000 | 0x10000000);
            temp_v0_4 = saved_reg_gp->unk0 * 0x10;
            temp_s0->unk6A8 = temp_v0_4;
            if (temp_s0->unk6A0 != 0) {
                if (arg8 != 0) {
                    goto block_14;
                }
                goto block_23;
            }
            temp_v0_5 = kmem_alloc((s64) temp_v0_4 * 4, 0x8100);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk6A0 = temp_v0_5;
            if (temp_v0_5 == 0) {
                MgrasGlContextFree((void *) temp_s0, temp_s0->unk1EC);
                arg2 = 1;
            }
            arg8 = arg2;
            if (arg2 == 0) {
block_23:
                bzero((void *) temp_s0->unk6A0, (s64) temp_s0->unk6A8 * 4);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a3 = saved_reg_gp->unk0;
                temp_s3_3 = temp_s0 + 0x6AC;
                temp_a2 = (s32) ((temp_a3 >> 0x1F) + temp_a3) >> 1;
                temp_s0->unk6B8 = temp_a2;
                spinlock_init(temp_s3_3, 0, temp_a2, temp_a3);
                if (temp_s0->unk6B0 == 0) {
                    temp_v0_6 = kern_malloc((s64) temp_s0->unk6B8 * 0x10);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s0->unk6B0 = temp_v0_6;
                    if (temp_v0_6 == 0) {
                        spinlock_destroy(temp_s3_3);
                        kmem_free(temp_s0->unk6A0, (s64) temp_s0->unk6A8 * 4);
                        MgrasGlContextFree((void *) temp_s0, temp_s0->unk1EC);
                        arg6 = 1;
                    }
                    arg4 = arg6;
                }
                if (arg4 == 0) {
                    bzero((void *) temp_s0->unk6B0, (s64) temp_s0->unk6B8 * 0x10);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s0->unk6B0->unk0 = (s64) (temp_s0->unk6B8 - 3);
                    temp_s0->unk6B0->unk10 = temp_s3_3;
                    temp_s0->unk6B0->unk18 = 0;
                    var_a3 = temp_s0->unk6A8 < 2;
                    arg22 = 1;
                    if (var_a3 == 0) {
                        var_s3_2 = arg22;
                        do {
                            mfree(temp_s0->unk6B0, 0x3FF, var_s3_2, var_a3);
                            var_s3_2 = (var_s3_2 + 0x400) & 0xFFFF;
                            var_a3 = var_s3_2 < temp_s0->unk6A8;
                        } while (var_a3 != 0);
                    }
                    if (temp_s1->unk2B != 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        ((s64) arg0)->unk84 = 0xF200;
                    }
                    MgrasInitRasterBackend(temp_s4, temp_s1);
                    if ((s32) temp_s1->unk2C > 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_s4->unk62008 = 0x1F;
                        temp_s1->unk3C = (s8) (((s32) temp_s4->unk620B0 >> 6) & 3);
                    }
                    if (temp_s1->unk2D != 0) {
                        MgrasInitGblTexMgr((mgras_data_t *) temp_s0);
                    }
                    temp_v0_7 = temp_s1->unk2B;
                    if (temp_v0_7 != 0) {
                        temp_a0 = saved_reg_gp->unk-77A0;
                        if (temp_v0_7 != 1) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            ((s64) arg0)->unk80 = temp_a0;
                            ((s64) arg0)->unk84 = 0xF200;
                            ((s64) arg0)->unk80 = temp_a0;
                        } else {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            ((s64) arg0)->unk80 = temp_a0;
                        }
                        temp_s0->unk650 = 0;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_s0->unk650 = 1;
                    }
                    MgrasEnableRetraceInterrupts((mgras_hw *) temp_s4);
loop_39:
                    M2C_ERROR(/* unknown instruction: ll $at, ($v0) */);
                    if (M2C_ERROR(/* unknown instruction: sc $a3, ($v0) */) == 0) {
                        goto loop_39;
                    }
                    var_v0 = 0;
                } else {
                    goto block_14;
                }
            } else {
                goto block_14;
            }
        } else {
block_14:
loop_15:
            M2C_ERROR(/* unknown instruction: ll $a3, ($a4) */);
            if (M2C_ERROR(/* unknown instruction: sc $v1, ($a4) */) == 0) {
                goto loop_15;
            }
            goto block_18;
        }
    } else {
block_18:
        var_v0 = -1;
    }
    return var_v0;
}

s32 MgrasExit(void *arg0, s64 arg2, s64 arg4, s64 arg6, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22) {
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a0_6;
    s64 temp_a0_7;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_at;
    s64 temp_s2;
    s64 temp_s3;
    s64 temp_s3_2;
    s64 temp_s4;
    s64 temp_s4_2;
    s64 var_ra;
    s64 var_s0;
    s64 var_s3;
    s64 var_s4;
    void *temp_a0;
    void *temp_s6;

    var_s3 = saved_reg_s3;
    var_s4 = saved_reg_s4;
    var_ra = saved_reg_ra;
    temp_a0 = arg0;
    temp_at = temp_a0->unk48;
    arg6 = temp_at;
    arg0 = temp_a0->unk20;
    if (temp_at == 0) {

    } else {
        temp_s3 = ((s64) arg6->unk2 * 0x10) + saved_reg_gp->unk-77C8;
        psema(temp_s3, 0x19);
        if (arg6->unk38 == 0) {
            temp_s4 = arg6->unk70;
            MgrasDestroyDMA(temp_s4, 0);
            if (temp_s4->unk460 == 0) {
                if (temp_s4->unk438 != 0) {
                    temp_a1 = arg6->unk40;
                    if ((*temp_a1)->unk8 == temp_a1) {
loop_34:
                        M2C_ERROR(/* unknown instruction: ll $a2, ($a3) */);
                        if (M2C_ERROR(/* unknown instruction: sc $a5, ($a3) */) == 0) {
                            goto loop_34;
                        }
                        temp_a0_2 = (s64) arg0 + 0x8E8;
                        arg2 = temp_a0_2;
                        mutex_lock((void *) temp_a0_2);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        ((s64) arg0)->unkE0 = 0;
                        mutex_unlock((void *) arg2);
                    }
                    temp_a0_3 = (s64) arg0 + 0x900;
                    arg4 = temp_a0_3;
                    mutex_lock((void *) temp_a0_3);
                    unmaputokv(temp_s4->unk438, 0x9F8);
                    unuseracc(temp_s4->unk428, 0x9F8, 0x111);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s4->unk438 = 0;
                    mutex_unlock((void *) arg4);
                }
                temp_a0_4 = temp_s4->unk450;
                if (temp_a0_4 != 0) {
                    unmaputokv(temp_a0_4, temp_s4->unk458);
                    unuseracc(temp_s4->unk440, temp_s4->unk458, 0x111);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s4->unk460 = 1;
            }
        }
        var_s4 = arg14;
        vsema(temp_s3);
        var_ra = arg16;
        var_s3 = arg20;
    }
    var_s0 = 1;
    if (saved_reg_gp->unk0 >= 2) {
        arg20 = var_s3;
        arg16 = var_ra;
        arg14 = var_s4;
        temp_s2 = saved_reg_gp->unk-77C0;
loop_7:
        temp_s6 = (var_s0 * 0xB0) + temp_s2;
        temp_s3_2 = (var_s0 * 0x10) + saved_reg_gp->unk-77C8;
        if (temp_s6->unk38 == temp_a0) {
            psema(temp_s3_2, 0x19);
            temp_s4_2 = temp_s6->unk70;
            if (temp_s6->unk54 != 0) {
                if (temp_s6->unk40 == temp_a0) {
                    goto block_4;
                }
            } else {
block_4:
                MgrasDestroyDMA(temp_s4_2, 0);
                if (temp_s4_2->unk460 == 0) {
                    if (temp_s4_2->unk438 != 0) {
                        temp_a1_2 = temp_s6->unk40;
                        if ((*temp_a1_2)->unk8 == temp_a1_2) {
loop_29:
                            M2C_ERROR(/* unknown instruction: ll $a2, ($a3) */);
                            if (M2C_ERROR(/* unknown instruction: sc $a5, ($a3) */) == 0) {
                                goto loop_29;
                            }
                            temp_a0_5 = (s64) arg0 + 0x8E8;
                            arg2 = temp_a0_5;
                            mutex_lock((void *) temp_a0_5);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            ((s64) arg0)->unkE0 = 0;
                            mutex_unlock((void *) arg2);
                        }
                        temp_a0_6 = (s64) arg0 + 0x900;
                        arg4 = temp_a0_6;
                        mutex_lock((void *) temp_a0_6);
                        unmaputokv(temp_s4_2->unk438, 0x9F8);
                        unuseracc(temp_s4_2->unk428, 0x9F8, 0x111);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_s4_2->unk438 = 0;
                        mutex_unlock((void *) arg4);
                    }
                    temp_a0_7 = temp_s4_2->unk450;
                    if (temp_a0_7 != 0) {
                        unmaputokv(temp_a0_7, temp_s4_2->unk458);
                        unuseracc(temp_s4_2->unk440, temp_s4_2->unk458, 0x111);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s4_2->unk460 = 1;
                }
            }
            vsema(temp_s3_2);
        }
        var_s0 += 1;
        if (var_s0 < saved_reg_gp->unk0) {
            goto loop_7;
        }
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x28, 0x2c, 0x30, 0x34], gap at: 0x10. */
s32 MgrasCreateDDRN(void *arg0, s64 arg1, s64 arg14, s64 arg16, s64 arg18) {
    s32 temp_a3;
    s32 temp_at;
    s32 temp_s5;
    s32 temp_v0_4;
    s32 var_s3;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a4;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_s2;
    void *temp_a0_2;
    void *var_s4;

    unksp20 = arg1;
    temp_v0 = kern_malloc(0x478);
    if (temp_v0 == 0) {
        var_v0 = -1;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_at = arg0->unk69C + 1;
        arg0->unk69C = temp_at;
        unksp8 = temp_at - 1;
        bzero((void *) temp_v0, 0x478U);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v0->unk34 = -1;
        temp_v0->unk38 = (s32) (temp_v0->unk38 | 0x40000000 | 0x80000000);
        temp_v0->unk20 = (s32) arg0->unk1D8;
        temp_v0->unk24 = (s32) arg0->unk1DC;
        temp_v0->unk2C = (s32) arg0->unk1E4;
        temp_a3 = arg0->unk1E0;
        temp_v0->unk10 = unksp20;
        temp_v0->unk28 = temp_a3;
        temp_s5 = ((u64) ((arg0->unk668 * arg0->unkC8->unk2B * 4) + 0x3FFF) >> 0xE) << 0;
        temp_v0->unk27C = temp_s5;
        var_s3 = temp_s5;
        if (temp_s5 != 0) {
            temp_v0_2 = kvpalloc(temp_s5, 0x80090, 0, temp_a3);
            var_s2 = temp_v0_2;
            if (temp_v0_2 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0->unk270 = temp_v0_2;
                temp_a0 = arg0->unk6B0;
                if (temp_a0 != 0) {
                    temp_v0_3 = malloc(temp_a0, temp_s5 * 4);
                    if (temp_v0_3 != 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_v0->unk278 = (s32) (temp_v0_3 << 0xC);
                        var_s4 = arg0->unk6A0 + (temp_v0_3 * 4);
                        if (var_s3 != 0) {
                            do {
                                var_s4 += 0x10;
                                var_s3 -= 1;
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_v0_4 = kvtophyspnum(var_s2) * 4;
                                var_s4->unk-10 = temp_v0_4;
                                var_s4->unk-C = (s32) (temp_v0_4 + 1);
                                var_s2 += 0x4000;
                                var_s4->unk-8 = (s32) (temp_v0_4 + 2);
                                var_s4->unk-4 = (s32) (temp_v0_4 + 3);
                            } while (var_s3 != 0);
                        }
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a0_2 = arg0 + 0x7B8;
                        unksp10 = (s64) temp_a0_2;
                        arg0->unk6BC = (s32) (arg0->unk6BC + 1);
                        mutex_lock(temp_a0_2);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a4 = arg0->unk7C8;
                        temp_v0->unk8 = (s64) temp_a4->unk8;
                        temp_a4->unk8 = temp_v0;
                        temp_v0->unk0 = temp_a4;
                        arg0->unk7C8 = temp_v0;
                        mutex_unlock(temp_a0_2);
                        init_sema(temp_v0 + 0x410, 0, 0, -1);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        unksp20->unk70 = temp_v0;
                        var_v0 = 0;
                    } else {
                        cmn_err(4, saved_reg_gp->unk-77F0 + 0x300);
                        kvpfree(temp_v0->unk270, temp_v0->unk27C);
                        kern_free((void *) temp_v0);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg0->unk69C = (s32) unksp8;
                        var_v0 = -1;
                    }
                } else {
                    kern_free((void *) temp_v0);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg0->unk69C = (s32) unksp8;
                    var_v0 = -1;
                }
            } else {
                cmn_err(4, saved_reg_gp->unk-77F0 + 0x2C8);
                kern_free((void *) temp_v0);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg0->unk69C = (s32) unksp8;
                var_v0 = -1;
            }
        } else {
            kern_free((void *) temp_v0);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk69C = (s32) unksp8;
            var_v0 = -1;
        }
    }
    return var_v0;
}

s64 MgrasSetTgvRgn(void *arg0, s64 arg1, s64 arg2, s64 arg4) {
    s64 temp_at;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_v0;

    temp_at = arg0->unk70;
    arg0 = temp_at;
    var_v0 = 0xE;
    arg2 = arg1;
    if (temp_at->unk450 == 0) {
        temp_v0 = useracc(arg2->unk0, arg2->unk8, 0x111, 0);
        if (temp_v0 != 0) {
            var_v0 = temp_v0;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) arg0)->unk440 = (s64) arg2->unk0;
            temp_v0_2 = maputokv(arg2->unk0, arg2->unk8, 0x2C, temp_v0);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) arg0)->unk448 = temp_v0_2;
            if (temp_v0_2 == 0) {
                var_v0 = -1;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                ((s64) arg0)->unk450 = temp_v0_2;
                ((s64) arg0)->unk458 = (s32) arg2->unk8;
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

s32 MgrasDestroyDDRN(void *arg0, s64 arg1, void *arg2, s64 arg4, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22) {
    s32 temp_a1;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_v0;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_v0;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_s1;
    s64 var_s5;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_s0;
    void *temp_s3;
    void *temp_s7;
    void *var_v0_2;
    void *var_v0_3;
    s32 phi_v0;

    temp_s1 = arg2->unk70;
    temp_s0 = arg0;
    temp_s7 = arg2;
    if (temp_s1 != 0) {
        arg4 = arg1;
        if (temp_s0->unkC8->unk44 == 0) {
            temp_a3 = temp_s0->unk1A8;
            arg4 = arg1;
            if (temp_a3 == temp_s1) {
                MgrasCtxsw(temp_s0, temp_s0 + 0x1B8, (void *) temp_s1, temp_a3);
            }
        }
        temp_a0 = temp_s0 + 0x7B8;
        arg2 = (s64) temp_a0;
        mutex_lock(temp_a0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk0->unk8 = (s64) temp_s1->unk8;
        *temp_s1->unk8 = (s64) temp_s1->unk0;
        mutex_unlock((void *) (s64) arg2);
        temp_a1 = temp_s1->unk34;
        if (temp_a1 != -1) {
            MgrasGlContextFree(temp_s0, temp_a1);
        }
        MgrasUnSchedRetraceEvent(temp_s0, temp_s7);
        MgrasUnSchedSwapTask(temp_s0, temp_s7, -0x11);
        MgrasDestroyDMA(temp_s1, 1);
        temp_a4 = temp_s7->unk40;
        if ((*temp_a4)->unk8 == temp_a4) {
            temp_a0_2 = temp_s0 + 0x8E8;
            arg0 = (s64) temp_a0_2;
            mutex_lock(temp_a0_2);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unkE0 = 0;
            mutex_unlock((void *) (s64) arg0);
        }
        if (temp_s1->unk460 == 0) {
            temp_a0_3 = temp_s1->unk438;
            if (temp_a0_3 != 0) {
                unmaputokv(temp_a0_3, 0x9F8);
                unuseracc(temp_s1->unk428, 0x9F8, 0x111);
            }
            temp_a0_4 = temp_s1->unk450;
            if (temp_a0_4 != 0) {
                unmaputokv(temp_a0_4, temp_s1->unk458);
                unuseracc(temp_s1->unk440, temp_s1->unk458, 0x111);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s1->unk460 = 1;
        }
        freesema(temp_s1 + 0x410);
        MgrasUnshare(arg4, temp_s7);
        temp_s4 = (s32) temp_s1->unk278 >> 0xC;
        var_s2 = ((u64) ((temp_s0->unk668 * temp_s0->unkC8->unk2B * 4) + 0x3FFF) >> 0xE) << 0;
        kvpfree(temp_s1->unk270, var_s2);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk270 = 0;
        mfree(temp_s0->unk6B0, var_s2 * 4, (s64) temp_s4);
        var_v0_2 = temp_s0->unk6A0 + ((s64) temp_s4 * 4);
        if (var_s2 != 0) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_v0_2 += 0x10;
                var_v0_2->unk-10 = 0;
                var_v0_2->unk-C = 0;
                var_s2 -= 1;
                var_v0_2->unk-8 = 0;
                var_v0_2->unk-4 = 0;
            } while (var_s2 != 0);
        }
        var_s5 = 0;
loop_13:
        temp_s3 = (var_s5 * 0x28) + temp_s1;
        temp_v0 = temp_s3->unk130;
        var_s5 += 1;
        phi_v0 = temp_v0;
        if (temp_v0 != 0) {
            if (temp_s3->unk134 != -1) {
                MgrasEramBufFree(temp_s0, temp_s3 + 0x130);
                phi_v0 = temp_s3->unk130;
            }
            temp_s4_2 = (s32) temp_s3->unk140 >> 0xC;
            var_s2_2 = ((u64) ((temp_s0->unkC8->unk2B * phi_v0 * 4) + 0x3FFF) >> 0xE) << 0;
            kvpfree(temp_s3->unk138, var_s2_2);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s3->unk138 = 0;
            temp_s3->unk130 = 0;
            mfree(temp_s0->unk6B0, var_s2_2 * 4, (s64) temp_s4_2);
            var_v0_3 = temp_s0->unk6A0 + ((s64) temp_s4_2 * 4);
            if (var_s2_2 != 0) {
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_v0_3 += 0x10;
                    var_v0_3->unk-10 = 0;
                    var_v0_3->unk-C = 0;
                    var_s2_2 -= 1;
                    var_v0_3->unk-8 = 0;
                    var_v0_3->unk-4 = 0;
                } while (var_s2_2 != 0);
            }
        }
        if (var_s5 < 8) {
            goto loop_13;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk6BC = (s32) (temp_s0->unk6BC + 1);
        kern_free((void *) temp_s7->unk70);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s7->unk70 = 0;
        temp_s0->unk69C = (s32) (temp_s0->unk69C - 1);
        var_v0 = 0;
    } else {
        var_v0 = 0x16;
    }
    return var_v0;
}

s32 compute_drb_pointers(void *arg0, void *arg1, void *arg2, s32 arg10) {
    s32 *temp_v1;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a3;
    void *temp_a5;
    void *var_v0;

    var_a1 = 9;
    var_a3 = 0;
    temp_a4 = *((mgras_baseindex(arg0->unkD0) * 8) + saved_reg_gp->unk-77B8) + 0x64;
    do {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a1 -= 1;
        temp_at = *(var_a3 + temp_a4);
        temp_v1 = var_a3 + sp;
        var_a3 += 4;
        *temp_v1 = temp_at;
    } while (var_a1 > 0);
    temp_a1 = arg1->unk3C;
    var_v0 = arg1;
    temp_a3 = temp_a1 >> 0x1C;
    if (((s32) (temp_a1 * 0x10) >> 0x1C) == 0) {
        if (temp_a3 != 0) {
            temp_at_2 = (s32) (temp_a1 << 8) >> 0x1C;
            temp_a5 = ((temp_a3 + temp_at_2) * 4) + sp;
            temp_v0 = (temp_a5->unk8 & 0x3FF) | (arg10 & ~0x3FF);
            temp_a4_2 = temp_v0 & saved_reg_gp->unk-7798;
            if (temp_at_2 < 2) {
                var_v0 = (void *) (((temp_v0 & 0x3FF) << 0xA) | temp_a4_2);
            } else {
                var_v0 = (void *) (((temp_a5->unk4 & 0x3FF) << 0xA) | temp_a4_2);
            }
        } else {
            var_v0 = arg2;
        }
    }
    return (s32) var_v0;
}

s32 MgrasValidateBanks(void *arg0, s32 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12) {
    s32 var_v0;
    s64 temp_a4;
    s64 temp_at;

    arg2 = (s64) arg0;
    temp_a4 = arg0->unk40;
    arg10 = arg0->unk70;
    temp_at = temp_a4->unk20;
    arg6 = temp_at;
    arg8 = temp_at->unkD0;
    if (arg0 != arg1) {
        if (saved_reg_gp->unk-77F8 != 0) {
            printf(saved_reg_gp->unk-77F0 + 0x3E0, temp_a4->unk48, arg2->unk78->unk12 ^ 1);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg10->unk38 = (s32) (arg10->unk38 | 0x04000000);
        arg10->unk74 = (s32) (arg2->unk78->unk12 ^ 1);
        arg10->unk78 = (s32) (arg2->unk80->unk12 ^ 1);
        goto block_4;
    }
    arg4 = temp_a4;
    if (RRM_CheckValidFault(temp_a4) >= 0) {
        arg0 = arg8 + 0x70000;
        if (MgrasFlushHQ3((void *) arg6, arg6->unkD0, ((u32) (arg8->unk70004 & 0x1FC00000) >> 0x16) - 3, 0) >= 0) {
            if (saved_reg_gp->unk-77F8 != 0) {
                printf(saved_reg_gp->unk-77F0 + 0x3A8, arg4->unk48, arg2->unk78->unk12 ^ 1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) arg0)->unk80 = (s64) (((u64) ((arg2->unk78->unk12 ^ 1) << 0x20) >> 0x20) | (0x1301 << 0x23));
            ((s64) arg0)->unk84 = (s32) (arg2->unk80->unk12 ^ 1);
            ((s64) arg0)->unk8 = 0x100000;
block_4:
            var_v0 = 0;
        } else {
            printf(saved_reg_gp->unk-77F0 + 0x378);
            var_v0 = -1;
        }
    } else {
        printf(saved_reg_gp->unk-77F0 + 0x330);
        var_v0 = -1;
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x58, 0x5c, 0x68, 0x6c, 0x70, 0x74, 0x88, 0x8c, 0x90, 0x94], gap at: 0x80. */
s32 MgrasValidateClip(void *arg0, void *arg1, s32 arg2, void *arg3, u32 arg4, u32 arg5, u32 arg6, u32 arg7, s32 arg8, s32 arg11, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg38, s64 arg40, s64 arg42, s64 arg44, s64 arg46) {
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_s8;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a3;
    s32 var_s4;
    s32 var_s7;
    s32 var_t3;
    s32 var_v0;
    s64 temp_a1_3;
    s64 temp_a6;
    s64 temp_s3;
    s64 temp_s5;
    s64 temp_t0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v1_5;
    s64 var_ra;
    s64 var_t0;
    u16 temp_a0;
    u16 temp_a7;
    u32 temp_v1_4;
    void *temp_at_4;
    void *temp_s2;

    var_ra = saved_reg_ra;
    temp_v0 = arg1->unk80;
    var_a3 = 0;
    temp_s3 = arg1->unk70;
    temp_s2 = temp_v0 + 0x60;
    if ((arg1->unk78->unk8 != arg1->unk88) || (temp_v0->unk8 != arg1->unk8C)) {
        temp_t1 = arg3->unk14;
        temp_a1 = arg3->unk18;
        temp_s5 = arg0->unk20;
        temp_t0 = temp_s5->unkC8;
        var_s7 = 1;
        var_s4 = 0;
        temp_t2 = arg3->unkC;
        temp_a7 = temp_t0->unk22;
        temp_a6 = arg3->unk20;
        temp_a2 = temp_a7 - (temp_t2 + temp_t1);
        unksp78 = temp_a7 - (temp_s2->unkC + temp_s2->unk14);
        temp_v0_2 = temp_s5->unkD0;
        switch (temp_a1) {                          /* irregular */
        default:
block_9:
            arg14 = temp_v0_2;
            unksp80 = temp_a2 << 0x10;
            break;
        case 4:
            temp_a5 = temp_a6->unk30;
            temp_at = temp_a6->unk3C;
            temp_v1 = temp_a7 - (temp_a6->unk34 + temp_at);
            arg3 = (void *) (((temp_a6->unk38 + temp_a5) - 1) | (temp_a5 << 0x10));
            var_s4 = 8;
            arg7 = ((temp_at + temp_v1) - 1) | (temp_v1 << 0x10);
            /* fallthrough */
        case 3:
            temp_a4 = temp_a6->unk20;
            temp_a5_2 = temp_a6->unk2C;
            temp_at_2 = temp_a7 - (temp_a6->unk24 + temp_a5_2);
            arg2 = ((temp_a6->unk28 + temp_a4) - 1) | (temp_a4 << 0x10);
            var_s4 |= 4;
            arg6 = ((temp_a5_2 + temp_at_2) - 1) | (temp_at_2 << 0x10);
            /* fallthrough */
        case 2:
            temp_v1_2 = temp_a6->unk10;
            temp_a4_2 = temp_a6->unk1C;
            temp_a5_3 = temp_a7 - (temp_a6->unk14 + temp_a4_2);
            arg1 = (void *) (((temp_a6->unk18 + temp_v1_2) - 1) | (temp_v1_2 << 0x10));
            var_s4 |= 2;
            arg5 = ((temp_a4_2 + temp_a5_3) - 1) | (temp_a5_3 << 0x10);
            /* fallthrough */
        case 1:
            temp_at_3 = temp_a6->unk0;
            temp_v1_3 = temp_a6->unkC;
            var_s4 |= 1;
            temp_a4_3 = temp_a7 - (temp_a6->unk4 + temp_v1_3);
            arg0 = (void *) (((temp_a6->unk8 + temp_at_3) - 1) | (temp_at_3 << 0x10));
            arg4 = ((temp_v1_3 + temp_a4_3) - 1) | (temp_a4_3 << 0x10);
            if (temp_a1 == 0) {
            case 0:
                temp_a1_2 = arg3->unk10;
                temp_a6_2 = arg3->unk8;
                temp_a0 = temp_t0->unk20;
                if (temp_a1_2 != 0) {
                    if (arg3->unk2C != 0) {
                        var_a3 = 1 << (arg3->unk28 + 4);
                    }
                    var_s4 |= 1;
                    if (temp_a6_2 >= 0) {
                        var_t3 = temp_a6_2 << 0x10;
                    } else {
                        var_t3 = 0;
                    }
                    unksp80 = temp_a2 << 0x10;
                    if (temp_t2 >= 0) {
                        var_t0 = unksp80;
                    } else {
                        var_t0 = 0;
                    }
                    temp_t2_2 = (temp_a1_2 + temp_a6_2) - 1;
                    if (temp_t2_2 >= (s32) temp_a0) {
                        arg0 = (void *) ((temp_a0 - 1) | var_t3);
                    } else {
                        arg0 = (void *) (temp_t2_2 | var_t3);
                    }
                    temp_a0_2 = (temp_t1 + temp_a2) - 1;
                    if (temp_a0_2 >= (s32) temp_a7) {
                        arg14 = temp_v0_2;
                        arg4 = (temp_a7 - 1) | var_t0;
                    } else {
                        arg14 = temp_v0_2;
                        arg4 = temp_a0_2 | var_t0;
                    }
                } else {
                    arg14 = temp_v0_2;
                    temp_v1_4 = temp_a7 - 1;
                    arg5 = temp_v1_4;
                    temp_at_4 = temp_a0 - 1;
                    arg1 = temp_at_4;
                    unksp80 = temp_a2 << 0x10;
                    var_s4 |= 3;
                    arg4 = temp_v1_4;
                    var_s7 = 2;
                    arg0 = temp_at_4;
                }
            } else {
                goto block_9;
            }
            break;
        }
        temp_v0_3 = compute_drb_pointers((void *) temp_s5, arg3, temp_a2, var_a3);
        arg16 = (arg3->unk8 & 3) | (((temp_a2 & 3) * 4) | var_a3);
        unksp60 = (s64) temp_v0_3;
        arg8 = temp_v0_3;
        temp_v0_4 = compute_drb_pointers((void *) temp_s5, temp_s2);
        arg11 = temp_v0_4;
        temp_a1_3 = temp_s3->unk438;
        temp_a0_3 = (temp_s2->unk8 & 0xFFFF) | (unksp78 << 0x10);
        temp_s8 = (arg3->unk8 & 0xFFFF) | unksp80;
        var_ra = arg42;
        if (temp_a1_3 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a1_3->unk454 = temp_s8;
            temp_s3->unk438->unk53C = (s32) ((var_s7 * 0x10) | var_s4);
            temp_s3->unk438->unk5EC = (s32) arg16;
            temp_s3->unk438->unk534 = arg3;
            temp_s3->unk438->unk538 = arg7;
            temp_s3->unk438->unk52C = arg2;
            temp_s3->unk438->unk530 = arg6;
            temp_s3->unk438->unk524 = arg1;
            temp_s3->unk438->unk528 = arg5;
            temp_s3->unk438->unk51C = arg0;
            temp_s3->unk438->unk520 = arg4;
            temp_s3->unk438->unk5B4 = (s32) arg8;
        }
        arg20 = (s64) temp_v0_4;
        if (arg1 != arg2) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s3->unk6C = temp_a0_3;
            temp_s3->unk3C = temp_s8;
            temp_s3->unk60 = arg0;
            temp_s3->unk58 = arg1;
            temp_s3->unk4C = arg7;
            temp_s3->unk40 = (s32) ((var_s7 * 0x10) | var_s4);
            temp_s3->unk44 = (s32) arg16;
            temp_s3->unk54 = arg6;
            temp_s3->unk5C = arg5;
            temp_s3->unk48 = arg3;
            temp_s3->unk38 = (s32) (temp_s3->unk38 | 0x20000000);
            temp_s3->unk64 = arg4;
            temp_s3->unk50 = arg2;
            temp_s3->unk70 = (s32) arg11;
            temp_s3->unk68 = (s32) arg8;
            goto block_14;
        }
        arg18 = (s64) temp_a0_3;
        if (RRM_CheckValidFault(temp_s3->unk10->unk40, temp_a1_3) >= 0) {
            arg12 = arg14 + 0x70000;
            var_ra = arg42;
            if (MgrasFlushHQ3((void *) temp_s5, temp_s5->unkD0, ((u32) (arg14->unk70004 & 0x1FC00000) >> 0x16) - 0x10, 0) >= 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg12->unk80 = (s64) (((u64) ((s64) temp_s8 << 0x20) >> 0x20) | (0x390F << 0x22));
                arg12->unk80 = (s64) (((u64) (arg16 << 0x20) >> 0x20) | (((var_s7 * 0x10) | var_s4) << 0x20));
                arg12->unk80 = (s64) (((s64) arg3 << 0x20) | arg7);
                arg12->unk80 = (s64) (((s64) arg2 << 0x20) | arg6);
                arg12->unk80 = (s64) (((s64) arg1 << 0x20) | arg5);
                arg12->unk80 = (s64) (((s64) arg0 << 0x20) | arg4);
                arg12->unk80 = (s64) (unksp60 << 0x20);
                arg12->unk80 = (s64) (((u64) (arg20 << 0x20) >> 0x20) | (arg18 << 0x20));
                arg12->unk8 = 0x100000;
block_14:
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk88 = (s32) arg1->unk78->unk8;
                arg1->unk8C = (s32) arg1->unk80->unk8;
                goto block_15;
            }
            printf(saved_reg_gp->unk-77F0 + 0x458);
            var_v0 = -1;
        } else {
            printf(saved_reg_gp->unk-77F0 + 0x410);
            var_v0 = -1;
        }
    } else {
block_15:
        temp_v1_5 = arg1->unk40;
        if (((*temp_v1_5)->unk8 == temp_v1_5) || (arg42 = var_ra, (MgrasValidateBanks(arg1, arg2) >= 0))) {
            var_v0 = 0;
        } else {
            var_v0 = -1;
        }
    }
    return var_v0;
}

s32 MgrasSetNullClip(void *arg0) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk3C = 0;
    arg0->unk28 = -1;
    arg0->unk18 = 0;
    arg0->unk14 = 0;
    arg0->unk10 = 0;
    arg0->unkC = 0;
    arg0->unk34 = 1;
    arg0->unk30 = 1;
    arg0->unk2C = 1;
    arg0->unk8 = 0;
    return 0;
}

s32 MgrasMapGfx(void *arg0, void *arg1, s64 arg26, s64 arg28, s64 arg30, s64 arg32) {
    s32 temp_a1_2;
    s32 temp_v0_2;
    s32 var_s3;
    s32 var_s7;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_s1;
    s64 temp_s5;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 var_a2;
    s64 var_a3;
    s64 var_ra;
    s64 var_s0;
    s64 var_s0_2;
    u32 temp_a0_2;
    u32 temp_a3;
    u64 temp_a1_3;
    void *temp_a1;
    void *temp_s2;
    void *var_a1;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    temp_s1 = arg0->unk28;
    temp_v0 = arg0->unk48;
    var_a3 = 0x7FFFFFFF;
    temp_s2 = var_a1;
    temp_s5 = arg0->unk20;
    var_s7 = 0;
    if (temp_v0 != 0) {
        temp_a0 = temp_v0->unk70->unk450;
        if (temp_a0 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *temp_a0 = (s32) (*temp_a0 & 0x7FFFFFFF);
        }
    }
    if (arg0->unk0->unk8 == arg0) {
        var_a2 = 0x20000;
        arg1 = (void *)0x20000;
        arg0 = (void *)0x60000;
        goto block_8;
    }
    var_a3 = arg0->unk48;
    var_a2 = 0x200;
    if (var_a3 != 0) {
        var_a3 = 0x4000;
        arg3 = (s32) 0x4000;
        arg1 = (void *)0x200;
        arg0 = (void *)0x70000;
        var_s3 = 2;
        arg2 = 0x7C000;
    } else {
        arg1 = (void *)0x100000;
        arg0 = NULL;
block_8:
        var_s3 = 1;
    }
    if (temp_s2 != NULL) {
        var_s0 = 0;
        if (var_s3 > 0) {
loop_13:
            temp_v0_2 = ddv_getaddr(temp_s1, var_a1);
            var_a1 = (var_s0 * 8) + sp;
            temp_a0_2 = ((u64) ((s64) var_a1->unk0 << 0x20) >> 0x20) + temp_v0_2;
            var_s0 += 1;
            if (((u32) temp_s2 >= temp_a0_2) && ((u32) temp_s2 < (u32) (var_a1->unk4 + temp_a0_2))) {
                var_s7 = 1;
            }
            if (var_s0 < var_s3) {
                goto loop_13;
            }
            var_ra = arg32;
            if (var_s7 != 0) {
                goto block_17;
            }
            goto block_26;
        }
        if (0 == 0) {
block_26:
            var_v0 = -1;
        } else {
            goto block_17;
        }
    } else {
        temp_v0_3 = arg0->unk20;
        if (temp_v0_3->unk48 != arg0) {
            psema(temp_v0_3 + 0x38, 0x219, var_a2, var_a3);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk20->unk48 = (s64) arg0;
            var_ra = arg32;
            if (arg0->unk20->unk68 != 0) {
                do {
                    us_delay(2);
                } while (arg0->unk20->unk68 != 0);
                var_ra = arg32;
            }
        }
block_17:
        var_s0_2 = 0;
        if (var_s3 > 0) {
            arg32 = var_ra;
            do {
                temp_a1 = (var_s0_2 * 8) + sp;
                temp_a3 = temp_a1->unk4;
                temp_a1_2 = temp_a1->unk0;
                var_s0_2 += 1;
                temp_a1_3 = (u64) ((s64) temp_a1_2 << 0x20) >> 0x20;
                v_mapkvsegment(temp_s1, temp_a1_3 + ddv_getaddr(temp_s1), temp_s5->unkD0 + temp_a1_3, (u64) (temp_a3 + 0x3FFF) >> 0xE);
            } while (var_s0_2 < var_s3);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk38 = 1;
        var_v0 = 0;
        arg0->unk30 = (s32) (arg0->unk30 | 1);
    }
    return var_v0;
}

s32 MgrasUnMapGfx(void *arg0, s64 arg2) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v0;
    s32 temp_v0_3;
    void *temp_v0_2;

    temp_v0 = arg0->unk30;
    temp_a2 = temp_v0 & ~1;
    temp_a1 = temp_v0 & ~1;
    if ((arg0->unk20->unk48 == arg0) && (temp_v0 & 1)) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk30 = temp_a1;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk30 = temp_a2;
    }
    if (arg0->unk28 == 0) {

    } else {
        temp_v0_2 = gthread_find(curthreadhandle(temp_a1, temp_a2));
        if ((temp_v0_2->unk8 & 4) && (thread_issproc(temp_v0_2->unk0) != 0)) {

        } else {
            temp_v0_3 = ddv_invalphys_fal(arg0->unk28, 0, -1);
            if (temp_v0_3 != 0) {
                if (temp_v0_3 != 2) {
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x480);
                }
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg0->unk38 = 0;
                MgrasInvalTLB(arg0, 2);
            }
        }
    }
    return 0;
}

s32 MgrasInvalTLB(s64 arg0, s64 arg2) {
    void *temp_v0;

    arg2 = arg0;
    temp_v0 = gthread_find(curthreadhandle());
    if ((temp_v0->unk8 & 4) && (thread_issproc(temp_v0->unk0) != 0)) {

    } else {
        ddv_invaltlb(arg2->unk28, 0, -1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg2->unk38 = (s32) (arg2->unk38 | 1);
    }
    return 0;
}

s32 MgrasPcxSwap(void *arg0, s64 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg26, s64 arg28, s64 arg30, s64 arg32, s64 arg34, s64 arg36, s64 arg38, s64 arg40, s64 arg42, s64 arg44, s64 arg46, s64 arg48, s64 arg50, s64 arg52, s64 arg54, s64 arg56, s64 arg58, s64 arg60, s64 arg62, s64 arg68, s64 arg70, s64 arg72, s64 arg74, s64 arg76, s64 arg78, s64 arg80) {
    s32 *temp_a4_2;
    s32 *temp_a5_4;
    s32 *temp_a5_5;
    s32 *temp_at;
    s32 *temp_at_4;
    s32 *temp_v1;
    s32 *temp_v1_5;
    s32 *temp_v1_6;
    s32 temp_a0_5;
    s32 temp_a1_2;
    s32 temp_a3_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_at_2;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_s2;
    s32 temp_v0;
    s32 temp_v0_15;
    s32 temp_v0_17;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_s2_2;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 temp_a0;
    s64 temp_a0_9;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_a7;
    s64 temp_at_7;
    s64 temp_lo;
    s64 temp_s3;
    s64 temp_v0_10;
    s64 temp_v0_12;
    s64 temp_v0_13;
    s64 temp_v0_14;
    s64 temp_v0_16;
    s64 temp_v0_9;
    s64 var_ra;
    s64 var_s0;
    s64 var_s0_2;
    s64 var_s0_3;
    s64 var_s0_4;
    s64 var_s0_5;
    s64 var_s2;
    s64 var_s2_3;
    s64 var_s4;
    s64 var_s4_2;
    s64 var_s4_3;
    s64 var_s4_4;
    s64 var_s4_5;
    s64 var_s5;
    s64 var_v0_2;
    s64 var_v0_5;
    u64 temp_a0_4;
    u64 temp_a1;
    void *temp_a0_10;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a4;
    void *temp_a6;
    void *temp_at_3;
    void *temp_s0;
    void *temp_s1;
    void *temp_v0_11;
    void *temp_v0_2;
    void *temp_v0_6;
    void *var_a7;

    var_s0 = saved_reg_s0;
    var_s2 = saved_reg_s2;
    var_s4 = saved_reg_s4;
    var_ra = saved_reg_ra;
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg22 = 0;
    arg58 = 0;
    arg26 = 0;
    arg30 = 0;
    arg32 = 0;
    arg62 = 0;
    arg24 = 0;
    arg60 = 0;
    arg28 = 0;
    arg56 = 0;
    arg14 = 0;
    arg16 = 0;
    arg20 = 0;
    arg54 = 0;
    arg18 = 0;
    arg4 = 0;
    arg8 = 0;
    arg0->unk7B0 = (s32) (arg0->unk7B0 | 0x10);
    arg6 = 0;
    arg12 = 0;
    var_v0_2 = arg3;
    arg10 = 0;
    temp_s1 = arg0;
    if (arg0->unkC8->unk44 != 0) {
        goto block_1;
    }
    *(s32 *)-0x3CA8 = 1;
    if (arg2->unk4 & 2) {
        arg68 = var_v0_2;
        MgrasValidateClip((void *) arg2->unk40, (void *) arg2, 0, arg2->unk78 + 0x60);
        var_v0_2 = arg68;
        var_ra = arg80;
    }
    temp_a4 = temp_s1 + 0x1B8;
    arg0 = (s64) temp_a4;
    temp_a0 = temp_s1->unk1A8;
    arg52 = 0;
    temp_s3 = arg2->unk70;
    if (temp_a0 == temp_a4) {
        var_s5 = (s64) arg0;
        arg52 = 1;
        goto block_7;
    }
    if (var_v0_2 == 0) {
        arg80 = var_ra;
        var_s5 = temp_a0;
    } else {
        arg80 = var_ra;
        var_s5 = var_v0_2->unk70;
    }
    temp_a0_2 = temp_s1 + 0x900;
    arg50 = (s64) temp_a0_2;
    mutex_lock(temp_a0_2);
    if (var_s5->unk438 != 0) {
        if (MgrasFlushHQ3(temp_s1, temp_s1->unkD0, 0U, 1) >= 0) {
            MgrasThrowManagerRssShadow(var_s5 + 0x34, temp_s3 + 0x34, (void *) var_s5->unk438);
            goto block_31;
        }
        temp_a3 = temp_s1->unkD0;
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x4C0, temp_a3->unk70004 & 0x7F, temp_a3);
        mutex_unlock((void *) arg50);
        goto block_53;
    }
block_31:
    mutex_unlock((void *) arg50);
    var_ra = arg80;
    temp_a7 = temp_s1->unkD0;
    temp_v0 = temp_s1->unk7B0;
    if (temp_a7->unk70008 & 0x100000) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk7B0 = (s32) (temp_v0 | 1);
        temp_a7->unk7000C = 0x100000;
        var_ra = arg80;
        if (MgrasFlushHQ3(temp_s1, temp_s1->unkD0, 0U, 0) < 0) {
            cmn_err(4, saved_reg_gp->unk-77F0 + 0x4F0, temp_s1->unkD0->unk70004 & 0x7F, 0x70000);
            goto block_53;
        }
        goto block_7;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk7B0 = (s32) (temp_v0 & 0xF0);
block_7:
    if (temp_s1->unk740 != 0) {
        arg80 = var_ra;
        if ((s64) arg0 != var_s5) {
            if (((u32) (temp_s3->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a0 = 0x16;
                var_v0_3 = 0;
                temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                do {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a0 -= 1;
                    temp_at = var_v0_3 + (temp_s1 + 0x234);
                    temp_a5 = *(var_v0_3 + (temp_s3 + 0x7C));
                    var_v0_3 += 4;
                    *temp_at = temp_a5;
                } while (var_a0 > 0);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg80 = var_ra;
                temp_s3->unk38 = (s32) (temp_s3->unk38 & ~0x08000000);
            }
            arg80 = var_ra;
            if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                var_s5 = (s64) arg0;
                goto block_15;
            }
            cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
            goto block_53;
        }
block_15:
        arg52 = 1;
        MgrasCcvUpdate(temp_s1);
        var_ra = arg80;
        goto block_16;
    }
block_16:
    arg80 = var_ra;
    if (temp_s1->unk704 != 0) {
        var_s2_2 = 0;
        temp_a0_3 = temp_s1 + 0x7B8;
        arg36 = (s64) temp_a0_3;
        mutex_lock(temp_a0_3);
        var_s0_2 = temp_s1->unk7C8;
        temp_v0_2 = temp_s1 + 0x7C8;
        if (temp_v0_2 != var_s0_2) {
            do {
                var_s4_2 = 0;
                var_a3 = 0;
loop_20:
                temp_a5_2 = var_s4_2 * 0x28;
                var_s4_2 += 1;
                var_a3 += (temp_a5_2 + var_s0_2)->unk130;
                if (var_s4_2 < 8) {
                    goto loop_20;
                }
                var_s0_2 = *var_s0_2;
                var_s2_2 = (var_s2_2 < var_a3) ? var_a3 : var_s2_2;
            } while (temp_v0_2 != var_s0_2);
            var_s4 = arg74;
        }
        var_s0 = arg72;
        mutex_unlock((void *) arg36);
        if (temp_s1->unk698 < var_s2_2) {
loop_58:
            if (!(temp_s1->unk65C & (1 << (temp_s1->unk660 - 1)))) {
                if ((s64) arg0 != var_s5) {
                    if (((u32) (temp_s3->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_4 = 0x16;
                        var_a0_2 = 0;
                        temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                        do {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_v0_4 -= 1;
                            temp_v1 = var_a0_2 + (temp_s1 + 0x234);
                            temp_at_2 = *(var_a0_2 + (temp_s3 + 0x7C));
                            var_a0_2 += 4;
                            *temp_v1 = temp_at_2;
                        } while (var_v0_4 > 0);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_s3->unk38 = (s32) (temp_s3->unk38 & 0xF7FFFFFF);
                    }
                    if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                        var_s5 = (s64) arg0;
                        goto block_55;
                    }
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
                    arg74 = var_s4;
                    goto block_54;
                }
block_55:
                arg52 = 1;
                goto block_56;
            }
block_56:
            if (MgrasMoveDemarcationDown(temp_s1) >= 0) {
                if (temp_s1->unk698 < var_s2_2) {
                    goto loop_58;
                }
                goto block_34;
            }
            cmn_err(4, saved_reg_gp->unk-77F0 + 0x530);
            arg74 = var_s4;
            goto block_54;
        }
block_34:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk704 = 0;
        var_s2 = arg78;
        var_ra = arg80;
        goto block_35;
    }
block_35:
    if (temp_s1->unk700 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0_4 = temp_s1->unk6E8;
        temp_a1 = temp_s1->unk6F8;
        var_v0_5 = temp_s1->unk708 * 4;
        temp_s1->unk708 = var_v0_5;
        if ((u32) (temp_a0_4 * 0xA) < temp_a1) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_v0_5 |= 2;
            goto block_40;
        }
        if ((u32) (temp_a1 * 0xA) < temp_a0_4) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_v0_5 |= 1;
block_40:
            temp_s1->unk708 = var_v0_5;
        }
        if ((var_v0_5 & 0x26) != 0x26) {
            goto block_42;
        }
        temp_a0_5 = temp_s1->unk660;
        if (temp_a0_5 >= 4) {
            if (!(temp_s1->unk65C & (1 << (temp_a0_5 - 1)))) {
                if ((s64) arg0 != var_s5) {
                    if (((u32) (temp_s3->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_6 = 0x16;
                        var_a0_3 = 0;
                        temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                        do {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_v0_6 -= 1;
                            temp_a4_2 = var_a0_3 + (temp_s1 + 0x234);
                            temp_v1_2 = *(var_a0_3 + (temp_s3 + 0x7C));
                            var_a0_3 += 4;
                            *temp_a4_2 = temp_v1_2;
                        } while (var_v0_6 > 0);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg80 = var_ra;
                        temp_s3->unk38 = (s32) (temp_s3->unk38 & ~0x08000000);
                    }
                    arg80 = var_ra;
                    var_ra = arg80;
                    if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                        var_s5 = (s64) arg0;
                        goto block_77;
                    }
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
                    arg78 = var_s2;
                    arg74 = var_s4;
block_53:
                    arg72 = var_s0;
                    goto block_54;
                }
block_77:
                arg80 = var_ra;
                arg52 = 1;
                goto block_78;
            }
block_78:
            arg80 = var_ra;
            temp_v0_3 = MgrasMoveDemarcationDown(temp_s1);
            arg78 = var_s2;
            arg74 = var_s4;
            arg72 = var_s0;
            var_ra = arg80;
            if (temp_v0_3 >= 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s1->unk708 = 0;
                goto block_44;
            }
            goto block_54;
        }
block_42:
        if ((var_v0_5 & 0x15) == 0x15) {
            if (temp_s1->unk660 < temp_s1->unk690) {
                arg72 = var_s0;
                arg78 = var_s2;
                temp_a0_6 = temp_s1 + 0x7B8;
                arg80 = var_ra;
                arg36 = (s64) temp_a0_6;
                temp_s2 = temp_s1->unk698 - temp_s1->unk668;
                mutex_lock(temp_a0_6);
                var_s0_3 = temp_s1->unk7C8;
                temp_at_3 = temp_s1 + 0x7C8;
                arg38 = (s64) temp_at_3;
                if (temp_at_3 != var_s0_3) {
                    arg74 = var_s4;
loop_83:
                    var_s4_3 = 0;
                    var_a3_2 = 0;
                    do {
                        temp_v1_3 = var_s4_3 * 0x28;
                        var_s4_3 += 1;
                        var_a3_2 += (temp_v1_3 + var_s0_3)->unk130;
                    } while (var_s4_3 < 8);
                    if (temp_s2 >= var_a3_2) {
                        var_s0_3 = *var_s0_3;
                        if (arg38 != var_s0_3) {
                            goto loop_83;
                        }
                    }
                    var_s4 = arg74;
                }
                var_s2 = arg78;
                mutex_unlock((void *) arg36);
                var_s0 = arg72;
                var_ra = arg80;
                if (arg38 == var_s0_3) {
                    var_s0 = arg72;
                    if ((s64) arg0 != var_s5) {
                        if (((u32) (temp_s3->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_v0_7 = 0x16;
                            var_a0_4 = 0;
                            temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                            do {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_v0_7 -= 1;
                                temp_at_4 = var_a0_4 + (temp_s1 + 0x234);
                                temp_a5_3 = *(var_a0_4 + (temp_s3 + 0x7C));
                                var_a0_4 += 4;
                                *temp_at_4 = temp_a5_3;
                            } while (var_v0_7 > 0);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_s3->unk38 = (s32) (temp_s3->unk38 & ~0x08000000);
                        }
                        var_ra = arg80;
                        if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                            var_s5 = (s64) arg0;
                        } else {
                            cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
                            arg32 = 1;
                            var_ra = arg80;
                        }
                        arg30 = arg32;
                    }
                    arg26 = arg30;
                    if (arg30 == 0) {
                        arg52 = 1;
                        temp_v0_4 = MgrasMoveDemarcationUp(temp_s1);
                        arg28 = temp_v0_4 < 0;
                        var_ra = arg80;
                        if (temp_v0_4 >= 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_s1->unk708 = 0;
                        }
                    }
                }
                arg58 = arg26;
                arg60 = (arg26 == 0) ? arg28 : 0;
            }
        }
        arg22 = arg58;
        arg24 = (arg58 == 0) ? arg60 : 0;
block_44:
        arg80 = var_ra;
        arg78 = var_s2;
        arg74 = var_s4;
        arg72 = var_s0;
        if (arg22 == 0) {
            arg62 = arg24;
            if (arg24 == 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s1->unk700 = 0;
            }
            goto block_46;
        }
        goto block_54;
    }
block_46:
    arg80 = var_ra;
    arg78 = var_s2;
    arg74 = var_s4;
    arg72 = var_s0;
    if (arg62 == 0) {
        if (temp_s3->unk34 != -1) {
            goto block_48;
        }
        arg80 = var_ra;
        temp_v0_5 = MgrasGlContextAlloc(temp_s1);
        arg72 = var_s0;
        var_a0_5 = temp_v0_5;
        if (temp_v0_5 < 0) {
            arg72 = var_s0;
loop_187:
            if ((s64) arg0 != var_s5) {
                if (((u32) (temp_s3->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_v0_8 = 0x16;
                    var_a0_6 = 0;
                    temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                    do {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_8 -= 1;
                        temp_a5_4 = var_a0_6 + (temp_s1 + 0x234);
                        temp_a4_3 = *(var_a0_6 + (temp_s3 + 0x7C));
                        var_a0_6 += 4;
                        *temp_a5_4 = temp_a4_3;
                    } while (var_v0_8 > 0);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s3->unk38 = (s32) (temp_s3->unk38 & 0xF7FFFFFF);
                }
                if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                    var_s5 = (s64) arg0;
                    goto block_194;
                }
                cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
                arg78 = var_s2;
                arg74 = var_s4;
                goto block_54;
            }
block_194:
            arg52 = 1;
            temp_a0_7 = temp_s1 + 0x7B8;
            arg36 = (s64) temp_a0_7;
            mutex_lock(temp_a0_7);
            var_s0_4 = temp_s1->unk7C8;
            temp_v0_6 = temp_s1 + 0x7C8;
            if (temp_v0_6 != var_s0_4) {
loop_199:
                temp_v1_4 = var_s0_4->unk34;
                var_a3_3 = 1;
                arg46 = (s64) temp_v1_4;
                if ((temp_v1_4 == -1) || (var_s0_4->unk438 != 0)) {

                } else {
                    var_a3_3 = 0;
                }
                if (var_a3_3 != 0) {
                    var_s0_4 = var_s0_4->unk0;
                    if (temp_v0_6 != var_s0_4) {
                        goto loop_199;
                    }
                    goto block_186;
                }
                if (MgrasEramRead(temp_s1, arg46, (s64) var_s0_4->unk278, (s64) temp_s1->unk668) >= 0) {
                    MgrasGlContextFree(temp_s1, (s32) arg46);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_s0_4->unk34 = -1;
                    goto block_186;
                }
                mutex_unlock((void *) arg36);
                arg78 = var_s2;
                arg74 = var_s4;
                goto block_54;
            }
block_186:
            mutex_unlock((void *) arg36);
            temp_v0_7 = MgrasGlContextAlloc(temp_s1);
            var_a0_5 = temp_v0_7;
            if (temp_v0_7 < 0) {
                goto loop_187;
            }
            goto block_174;
        }
block_174:
        temp_v0_8 = temp_s3->unk38;
        var_s0 = arg72;
        var_ra = arg80;
        if (((u32) (temp_v0_8 & 0x7FFFFFFF) >> 0x1E) == 0) {
            var_s0 = arg72;
            var_ra = arg80;
            if ((s64) arg0 != var_s5) {
                if (((u32) (temp_v0_8 & 0x0FFFFFFF) >> 0x1B) != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_v0_9 = 0x16;
                    var_a1 = 0;
                    temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                    do {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_9 -= 1;
                        temp_v1_5 = var_a1 + (temp_s1 + 0x234);
                        temp_at_5 = *(var_a1 + (temp_s3 + 0x7C));
                        var_a1 += 4;
                        *temp_v1_5 = temp_at_5;
                    } while (var_v0_9 > 0);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg34 = (s64) var_a0_5;
                    temp_s3->unk38 = (s32) (temp_s3->unk38 & ~0x08000000);
                }
                arg34 = (s64) var_a0_5;
                var_a0_5 = (s32) arg34;
                var_ra = arg80;
                if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                    var_s5 = (s64) arg0;
                } else {
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
                    arg20 = 1;
                    var_a0_5 = (s32) arg34;
                    var_ra = arg80;
                }
                arg16 = arg20;
            }
            arg14 = arg16;
            if (arg16 == 0) {
                arg34 = (s64) var_a0_5;
                arg52 = 1;
                arg18 = MgrasEramWrite(temp_s1, (s64) temp_s3->unk278, (s64) var_a0_5, (s64) temp_s1->unk668) < 0;
                var_a0_5 = (s32) arg34;
                var_ra = arg80;
            }
        }
        arg56 = arg14;
        if (arg14 == 0) {
            arg54 = arg18;
            if (arg18 == 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s3->unk34 = var_a0_5;
            }
        }
block_48:
        arg80 = var_ra;
        arg78 = var_s2;
        arg74 = var_s4;
        arg72 = var_s0;
        if ((arg56 == 0) && (arg80 = var_ra, arg78 = var_s2, arg74 = var_s4, arg72 = var_s0, (arg54 == 0))) {
            arg42 = 0;
            temp_v0_9 = MgrasNextEramResource(temp_s3);
            arg78 = var_s2;
            arg74 = var_s4;
            arg72 = var_s0;
            if (temp_v0_9 != 0) {
                arg74 = var_s4;
                arg72 = var_s0;
                arg78 = var_s2;
                arg66 = temp_v0_9;
                var_s2_3 = temp_v0_9;
loop_104:
                temp_a2 = (var_s2_3 - temp_s3) - 0x130;
                temp_lo = temp_a2 / 40;
                M2C_TRAP_IF(0x28 == 0);
                arg48 = temp_lo << 0;
                temp_v0_10 = MgrasEramBufAlloc(temp_s1, (void *) var_s2_3, temp_a2);
                arg46 = temp_v0_10;
                if (temp_v0_10 < 0) {
                    arg40 = temp_lo << 0;
loop_106:
                    var_a6 = 0x16;
                    var_a0_7 = 0;
                    if ((s64) arg0 != var_s5) {
                        if (((u32) (temp_s3->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                            do {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_a6 -= 1;
                                temp_v1_6 = var_a0_7 + (temp_s1 + 0x234);
                                temp_at_6 = *(var_a0_7 + (temp_s3 + 0x7C));
                                var_a0_7 += 4;
                                *temp_v1_6 = temp_at_6;
                            } while (var_a6 > 0);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_s3->unk38 = (s32) (temp_s3->unk38 & 0xF7FFFFFF);
                        }
                        if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                            var_s5 = (s64) arg0;
                            goto block_113;
                        }
                        cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
                        goto block_54;
                    }
block_113:
                    arg52 = 1;
                    temp_a0_8 = temp_s1 + 0x7B8;
                    arg36 = (s64) temp_a0_8;
                    mutex_lock(temp_a0_8);
                    var_s0_5 = temp_s1->unk7C8;
                    temp_v0_11 = temp_s1 + 0x7C8;
                    arg38 = (s64) temp_v0_11;
                    if (temp_v0_11 != var_s0_5) {
loop_114:
                        if (temp_s3 != var_s0_5) {
                            var_s4_4 = 0;
loop_116:
                            temp_a6 = (var_s4_4 * 0x28) + var_s0_5;
                            var_a7 = temp_a6 + 0x130;
                            if ((temp_a6->unk130 == 0) || (var_a6_2 = 1, (temp_a6->unk134 == -1))) {
                                var_a6_2 = 0;
                            }
                            if (var_a6_2 == 0) {
                                var_s4_4 += 1;
                                if (var_s4_4 < 8) {
                                    goto loop_116;
                                }
                            }
                            if (var_s4_4 != 8) {
                                arg38 = (s64) temp_v0_11;
                                if (var_a7->unk18 != 0) {
                                    goto block_122;
                                }
                                arg44 = (s64) var_a7;
                                var_a7 = (void *) arg44;
                                if (MgrasEramRead(temp_s1, (s64) var_a7->unk4, (s64) var_a7->unk10, (s64) temp_a6->unk130) < 0) {
                                    mutex_unlock((void *) arg36);
                                    goto block_54;
                                }
block_122:
                                MgrasEramBufFree(temp_s1, var_a7);
                                goto block_123;
                            }
                            goto block_126;
                        }
block_126:
                        var_s0_5 = *var_s0_5;
                        if (temp_v0_11 == var_s0_5) {
                            arg38 = (s64) temp_v0_11;
                            goto block_123;
                        }
                        goto loop_114;
                    }
block_123:
                    mutex_unlock((void *) arg36);
                    if (arg38 == var_s0_5) {
                        if (arg42 == 0) {
                            arg42 = 1;
                            var_s4_5 = 0;
loop_133:
                            temp_s0 = (var_s4_5 * 0x28) + temp_s3;
                            temp_a3_2 = temp_s0->unk130;
                            var_s4_5 += 1;
                            if (temp_a3_2 != 0) {
                                temp_a1_2 = temp_s0->unk134;
                                if (temp_a1_2 != -1) {
                                    if (temp_s0->unk148 == 0) {
                                        if (MgrasEramRead(temp_s1, (s64) temp_a1_2, (s64) temp_s0->unk140, (s64) temp_a3_2) >= 0) {
                                            goto block_131;
                                        }
                                        goto block_54;
                                    }
block_131:
                                    MgrasEramBufFree(temp_s1, temp_s0 + 0x130);
                                    goto block_132;
                                }
                            }
block_132:
                            if (var_s4_5 < 8) {
                                goto loop_133;
                            }
                            var_s2_3 = 0;
                            goto block_99;
                        }
                        cmn_err(4, saved_reg_gp->unk-77F0 + 0x568, temp_s3, arg40);
                        goto block_54;
                    }
                    temp_v0_12 = MgrasEramBufAlloc(temp_s1, (void *) var_s2_3);
                    arg46 = temp_v0_12;
                    if (temp_v0_12 >= 0) {
                        goto block_99;
                    }
                    goto loop_106;
                }
block_99:
                if (var_s2_3 != 0) {
                    if (var_s2_3->unk18 != 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_s2_3->unk18 = 0;
                        goto block_102;
                    }
                    if ((s64) arg0 != var_s5) {
                        if (((u32) (temp_s3->unk38 & 0x0FFFFFFF) >> 0x1B) != 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_a0_8 = 0x16;
                            var_v0_10 = 0;
                            temp_s1->unk1F0 = (s32) (temp_s1->unk1F0 | 0x08000000);
                            do {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_a0_8 -= 1;
                                temp_a5_5 = var_v0_10 + (temp_s1 + 0x234);
                                temp_a4_4 = *(var_v0_10 + (temp_s3 + 0x7C));
                                var_v0_10 += 4;
                                *temp_a5_5 = temp_a4_4;
                            } while (var_a0_8 > 0);
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_s3->unk38 = (s32) (temp_s3->unk38 & 0xF7FFFFFF);
                        }
                        if (MgrasCtxsw(temp_s1, (void *) (s64) arg0, (void *) var_s5) >= 0) {
                            var_s5 = (s64) arg0;
                            goto block_160;
                        }
                        cmn_err(4, saved_reg_gp->unk-77F0 + 0x520, saved_reg_gp->unk-77F0, var_s5);
                        goto block_54;
                    }
block_160:
                    arg52 = 1;
                    if (MgrasEramWrite(temp_s1, (s64) var_s2_3->unk10, arg46, (s64) var_s2_3->unk0) >= 0) {
block_102:
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_s2_3->unk4 = (s32) arg46;
                        ((arg48 * 4) + temp_s3)->unkD4 = (s32) arg46;
                        goto block_103;
                    }
                    goto block_54;
                }
block_103:
                temp_v0_13 = MgrasNextEramResource(temp_s3);
                var_s2_3 = temp_v0_13;
                arg66 = temp_v0_13;
                if (temp_v0_13 != 0) {
                    goto loop_104;
                }
                goto block_138;
            }
block_138:
            if (temp_s3->unk438 == 0) {
                temp_v0_14 = temp_s3->unk468;
                if (temp_v0_14 != 0) {
                    temp_a0_9 = temp_v0_14->unk8;
                    if (temp_a0_9 != 0) {
                        if (*temp_a0_9 != 0) {
                            temp_v0_15 = MgrasRestoreOverlap(temp_s1, temp_s3, (s64) arg0, var_s5);
                            arg8 = temp_v0_15 < 0;
                            if ((temp_v0_15 >= 0) && (temp_v0_15 != 0)) {
                                var_s5 = (s64) arg0;
                                arg52 = 1;
                            }
                        }
                        arg4 = arg8;
                    }
                }
            }
            if (arg4 == 0) {
                if (arg52 != 0) {
                    MgrasResetTxTbl_Kern(temp_s1->unkD0, 2);
                    arg6 = MgrasFlushHQ3(temp_s1, temp_s1->unkD0, 0U, 1) < 0;
                }
                if (arg6 == 0) {
                    temp_a0_10 = temp_s1 + 0x7B8;
                    arg36 = (s64) temp_a0_10;
                    mutex_lock(temp_a0_10);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s3->unk0->unk8 = (s64) temp_s3->unk8;
                    *temp_s3->unk8 = (s64) temp_s3->unk0;
                    temp_s3->unk8 = (s64) temp_s1->unk7D0;
                    *temp_s1->unk7D0 = temp_s3;
                    temp_s3->unk0 = (s64) (temp_s1 + 0x7C8);
                    temp_s1->unk7D0 = temp_s3;
                    mutex_unlock((void *) arg36);
                    if (temp_s3->unk438 == 0) {
                        temp_v0_16 = MgrasCtxsw(temp_s1, (void *) temp_s3, (void *) var_s5) < 0;
                        arg12 = temp_v0_16;
                        if (temp_v0_16 == 0) {
                            goto block_172;
                        }
                        goto block_54;
                    }
                    temp_v0_17 = MgrasCtxsw(temp_s1, (void *) temp_s3, (void *) var_s5);
                    arg10 = temp_v0_17 < 0;
                    if (temp_v0_17 >= 0) {
                        temp_at_7 = arg2->unk40;
                        if (((*temp_at_7)->unk8 == temp_at_7) && (temp_s1->unk650 == 0)) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_s1->unkD0->unk70080 = (s64) saved_reg_gp->unk-7790;
                            temp_s1->unkD0->unk70080 = (s64) saved_reg_gp->unk-7788;
                            temp_s1->unkD0->unk70080 = 0x111;
                            temp_s1->unkD0->unk70080 = 0x40000;
                            temp_s1->unkD0->unk70080 = (s32) temp_s1->unk684;
                            temp_s1->unkD0->unk70080 = 0;
                            temp_s1->unkD0->unk70084 = 0xF200;
                            temp_s1->unk650 = 1;
                        }
                    }
                    if (arg12 == 0) {
block_172:
                        if (arg10 == 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            *(void *)-0x3CA8 = 0;
                            var_v0 = 0;
                            temp_s1->unk7B0 = (s32) (temp_s1->unk7B0 & 0xF);
                        } else {
                            goto block_54;
                        }
                    } else {
                        goto block_54;
                    }
                } else {
                    goto block_54;
                }
            } else {
                goto block_54;
            }
        } else {
            goto block_54;
        }
    } else {
block_54:
        *(void *)-0x3CA8 = 0;
        mgras_error(temp_s1, temp_s1->unkD0);
block_1:
        var_v0 = -1;
    }
    return var_v0;
}

s32 MgrasPcxSwitch(void) {
    return 0;
}

void mgras_ctxswtimeout(void *arg0) {
    cmn_err(4, saved_reg_gp->unk-77F0 + 0x598);
    mgras_error(arg0, arg0->unkD0);
}

void mgras_sleepertimeout(void) {
    vsema();
}

s32 MgrasSuspend(void) {
    return 0;
}

s32 MgrasResume(void *arg0, s32 arg2) {
    if ((arg2 == 0) && (arg0->unk78 != 0)) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk78 = 0;
        force_resched();
    }
    return 0;
}

s32 MgrasReleaseGfxSema(void) {
    return 0;
}

s64 mgras_copyin_vc3_tables(s32 *arg0) {
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s64 var_v0;

    temp_v0 = kern_calloc((s32) arg0->unk20, 2);
    if (temp_v0 == NULL) {
        var_v0 = -0xC;
    } else if (copyin(arg0->unk18, temp_v0, (arg0->unk20 * 2) << 0) != 0) {
        kern_free(temp_v0);
        var_v0 = -0xE;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk18 = (s64) temp_v0;
        temp_v0_2 = kern_calloc((s32) arg0->unk30, 2);
        if (temp_v0_2 != NULL) {
            if (copyin(arg0->unk28, temp_v0_2, (arg0->unk30 * 2) << 0) != 0) {
                kern_free((void *) arg0->unk18);
                kern_free(temp_v0_2);
                var_v0 = -0xE;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg0->unk28 = (s64) temp_v0_2;
                temp_v0_3 = kern_calloc(3, 1);
                if (temp_v0_3 != NULL) {
                    if (copyin(arg0->unk38, temp_v0_3, 3) != 0) {
                        kern_free((void *) arg0->unk28);
                        kern_free((void *) arg0->unk18);
                        kern_free(temp_v0_3);
                        var_v0 = -0xE;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg0->unk38 = (s64) temp_v0_3;
                        var_v0 = 0;
                    }
                } else {
                    kern_free((void *) arg0->unk28);
                    kern_free((void *) arg0->unk18);
                    var_v0 = -0xC;
                }
            }
        } else {
            kern_free((void *) arg0->unk18);
            var_v0 = -0xC;
        }
    }
    return var_v0;
}

s64 mgras_copyin_vc2_tables(s64 arg0) {
    s32 *temp_v0;
    s32 *temp_v0_2;
    s64 var_v0;

    unksp8 = arg0;
    temp_v0 = kern_calloc((s32) arg0->unk18, 2);
    if (temp_v0 == NULL) {
        var_v0 = -0xC;
    } else if (copyin(unksp8->unk10, temp_v0, (unksp8->unk18 * 2) << 0) != 0) {
        kern_free(temp_v0);
        var_v0 = -0xE;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        unksp8->unk10 = (s64) temp_v0;
        temp_v0_2 = kern_calloc((s32) unksp8->unk28, 2);
        if (temp_v0_2 != NULL) {
            if (copyin(unksp8->unk20, temp_v0_2, (unksp8->unk28 * 2) << 0) != 0) {
                kern_free((void *) unksp8->unk10);
                var_v0 = -0xE;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                unksp8->unk20 = (s64) temp_v0_2;
                var_v0 = 0;
            }
        } else {
            kern_free((void *) unksp8->unk10);
            var_v0 = -0xC;
        }
    }
    return var_v0;
}

s64 MgrasPrivate(void *arg0, s64 arg1, u16 arg2, s64 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg16, s32 arg28, s32 arg38, s32 arg48, s32 arg54, s32 arg56, s32 arg60, s32 arg62, s64 arg68, s64 arg72, s64 arg76, s32 arg96, s64 arg98, s32 arg100, s32 arg101, s64 arg102, s32 arg104, s32 arg105, s32 arg106, s32 arg126, s32 arg136, s32 arg142, s32 arg144, s32 arg148, s64 arg150, s64 arg152, s64 arg154, s64 arg156, s64 arg158, s64 arg160, s64 arg162, s64 arg164, s64 arg166, s64 arg168, s64 arg170, s64 arg172, s64 arg174, s64 arg176, s64 arg178, s64 arg180, s64 arg182, s64 arg184, s64 arg186, s64 arg188, s64 arg190, s64 arg192, s64 arg194, s64 arg196, s64 arg198, s64 arg200, s64 arg202, s64 arg204, s64 arg206, s64 arg208, s64 arg210, s64 arg212, s64 arg216) {
    s16 var_a2;
    s16 var_a7;
    s32 *temp_v0;
    s32 *var_a3_2;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_t0;
    s32 temp_v0_11;
    s32 temp_v0_14;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_t1;
    s32 var_t3;
    s64 temp_a0;
    s64 temp_a0_10;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a0_6;
    s64 temp_a0_7;
    s64 temp_a0_8;
    s64 temp_a0_9;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a3_2;
    s64 temp_a7;
    s64 temp_at_2;
    s64 temp_v0_12;
    s64 temp_v0_13;
    s64 temp_v0_15;
    s64 temp_v0_16;
    s64 temp_v0_17;
    s64 temp_v0_18;
    s64 temp_v0_19;
    s64 temp_v0_20;
    s64 temp_v0_21;
    s64 temp_v0_22;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 temp_v0_7;
    s64 temp_v0_8;
    s64 temp_v0_9;
    s64 var_a2_2;
    s64 var_a2_4;
    s64 var_a3_3;
    s64 var_s0;
    s64 var_t2;
    s64 var_v0;
    s64 var_v0_2;
    void *temp_a3;
    void *temp_v0_10;

    temp_v0 = M2C_ERROR(/* Read from unset register $a4 */);
    arg194 = arg3;
    arg204 = arg1;
    arg192 = arg0->unk20;
    var_s0 = 0;
    if (arg2 >= 0x6D670013U) {
        arg206 = 0;
        arg208 = 0;
        if (arg2 > 0x6D670013U) {
            if (arg2 >= 0x6D67001EU) {
                if (arg2 > 0x6D67001EU) {
                    if (arg2 >= 0x6D670025U) {
                        if (arg2 > 0x6D670025U) {
                            if (arg2 >= 0x6D670029U) {
                                if (arg2 > 0x6D670029U) {
                                    if (arg2 == 0x6D67002A) {
                                        var_s0 = 0x16;
                                    } else {
                                        goto block_28;
                                    }
                                } else {
                                    var_s0 = MgrasDmaUpdateTMTLB(arg204, arg192);
                                }
                            } else if (arg2 == 0x6D670027) {
                                curproc_abi(0x6D670025);
                                if (copyin_xlate(arg194, &arg56, 0x10, saved_reg_gp->unk-7780) != 0) {
                                    var_s0 = 0xE;
                                } else {
                                    temp_v0_2 = MgrasSetTgvRgn((void *) arg204, (s64) &arg56);
                                    var_s0 = temp_v0_2;
                                    if (temp_v0_2 != 0) {
                                        cmn_err(5, saved_reg_gp->unk-77F0 + 0x5B0);
                                    }
                                }
                            } else {
                                goto block_28;
                            }
                        } else if (copyin(arg194, &arg148, 4) != 0) {
                            var_s0 = 0xE;
                        } else {
                            if ((arg148 >= 0xC9) || (arg148 < 0)) {
                                arg148 = 0x64;
                            }
                            temp_a0 = arg192 + 0x8E8;
                            arg190 = temp_a0;
                            mutex_lock((void *) temp_a0);
                            MgrasInitCCR((mgras_hw *) arg192->unkD0, (mgras_info_t *) arg192->unkC8);
                            mutex_unlock((void *) arg190);
                        }
                        goto block_30;
                    }
                    if (arg2 >= 0x6D670023U) {
                        arg196 = 0;
                        arg198 = 0;
                        arg200 = 0;
                        arg202 = 0;
                        if (arg2 > 0x6D670023U) {
                            if (arg2 == 0x6D670024) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                *temp_v0 = saved_reg_gp->unk0;
                                var_s0 = 0;
                            } else {
                                goto block_28;
                            }
                        } else {
                            arg178 = (s64) &arg144;
                            if (copyin(arg194, &arg144, 0xA) != 0) {
                                var_s0 = 0xE;
                            } else {
                                var_a2 = (s16) arg144;
                                if (((s16) arg144 <= 0) || ((s16) arg144 >= 0x2001)) {
                                    var_s0 = 0x16;
                                } else {
                                    var_a7 = (s16) arg144;
                                    if ((s16) arg144 >= 2) {
                                        arg172 = (s64) var_a2;
                                        arg174 = (s64) var_a7;
                                        temp_v0_3 = kern_malloc((((((s64) (s16) arg144 * 4) - (s16) arg144) * 2) + 4) << 0);
                                        arg184 = temp_v0_3;
                                        arg178 = temp_v0_3;
                                        var_a7 = (s16) arg174;
                                        var_a2 = (s16) arg172;
                                        if (temp_v0_3 == 0) {
                                            arg200 = 1;
                                            var_s0 = 0xC;
                                        } else {
                                            var_a7 = (s16) arg174;
                                            var_a2 = (s16) arg172;
                                            if (copyin(arg194, (s32 *) arg184, ((arg172 * 6) + 4) << 0, arg172) != 0) {
                                                var_s0 = 0xE;
                                                kern_free((void *) arg184);
                                                arg202 = 1;
                                                var_a7 = (s16) arg174;
                                                var_a2 = (s16) arg172;
                                            }
                                            arg198 = arg202;
                                        }
                                        arg196 = arg200;
                                    }
                                    if (arg196 == 0) {
                                        arg172 = (s64) var_a2;
                                        arg174 = (s64) var_a7;
                                        if (arg198 == 0) {
                                            temp_a0_2 = arg192 + 0x8E8;
                                            arg190 = temp_a0_2;
                                            mutex_lock((void *) temp_a0_2);
                                            var_s0 = MgrasSetColors(arg192->unkD0, arg174, arg172, arg178 + 4);
                                            mutex_unlock((void *) arg190);
                                            if (arg172 >= 2) {
                                                kern_free((void *) arg178);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        goto block_30;
                    }
                    if (arg2 >= 0x6D670020U) {
                        if (arg2 <= 0x6D670020U) {
                            if (get_current_cred(0x6D670023)->unk8 != 0) {
                                var_v0 = 0xD;
                            } else {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                *(s32 *)0xBFA00004 &= ~0x400;
                                flushbus();
                                us_delay(5);
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                *(void *)0xBFA00004 = (s32) (*(void *)0xBFA00004 | 0x400);
                                flushbus();
                                us_delay(0x7530);
                                goto block_29;
                            }
                        } else {
                            goto block_28;
                        }
                    } else {
                        arg210 = (s64) arg0;
                        if (arg2 == 0x6D67001F) {
                            curproc_abi(0x6D670023);
                            if (copyin_xlate(arg194, &arg48, 0x18, saved_reg_gp->unk-7790) != 0) {
                                var_s0 = 0xE;
                            } else {
                                var_s0 = MgrasDmaEditRelease(arg210, arg204, &arg48);
                            }
                        } else {
                            goto block_28;
                        }
                        goto block_30;
                    }
                } else {
                    arg210 = (s64) arg0;
                    if (copyin(arg194, &arg142, 8) != 0) {
                        var_s0 = 0xE;
                    } else {
                        temp_v0_4 = MgrasShare(arg210, arg204, &arg142);
                        if (temp_v0_4 < 0) {
                            var_s0 = -temp_v0_4;
                        }
                        var_s0 = (copyout((s64) &arg142, arg194, 8) != 0) ? 0xE : var_s0;
                    }
                    goto block_30;
                }
            } else {
                if (arg2 >= 0x6D670018U) {
                    if (arg2 <= 0x6D670018U) {
                        var_s0 = 0x16;
                    } else if (arg2 >= 0x6D67001BU) {
                        arg210 = (s64) arg0;
                        if (arg2 > 0x6D67001BU) {
                            if (arg2 == 0x6D67001C) {
                                temp_v0_5 = kern_malloc(0x604, 0x6D67001E);
                                arg184 = temp_v0_5;
                                if (copyin(arg194, (s32 *) temp_v0_5, 0x604) != 0) {
                                    var_s0 = 0xE;
                                    kern_free((void *) arg184);
                                } else {
                                    temp_v0_6 = mgras_mco_load_channel_gamma(arg192, arg184->unk0, arg184 + 4);
                                    if (temp_v0_6 < 0) {
                                        var_s0 = -temp_v0_6;
                                    }
                                    kern_free((void *) arg184);
                                }
                            } else {
                                goto block_28;
                            }
                        } else {
                            temp_v0_7 = kern_malloc(0xF728, 0x6D67001E);
                            if (temp_v0_7 == 0) {
                                var_s0 = 0xC;
                            } else {
                                curproc_abi();
                                if (copyin_xlate(arg194, (s32 *) temp_v0_7, 0xF728, saved_reg_gp->unk-7750) != 0) {
                                    kern_free((void *) temp_v0_7);
                                    var_s0 = 0xE;
                                } else {
                                    temp_v0_8 = mgras_copyin_vc2_tables(temp_v0_7 + 0xF6E8);
                                    arg186 = temp_v0_8;
                                    if (temp_v0_8 >= 0) {
                                        arg184 = temp_v0_7;
                                        temp_v0_9 = RRM_CheckValidFault(arg210);
                                        var_s0 = temp_v0_9;
                                        if (temp_v0_9 == 0) {
loop_201:
                                            M2C_ERROR(/* unknown instruction: ll $a2, ($a3) */);
                                            if (M2C_ERROR(/* unknown instruction: sc $a5, ($a3) */) == 0) {
                                                goto loop_201;
                                            }
                                            temp_a0_3 = arg192 + 0x8E8;
                                            arg190 = temp_a0_3;
                                            mutex_lock((void *) temp_a0_3);
                                            arg186 = mgras_mco_download(arg192, arg184);
                                            mutex_unlock((void *) arg190);
loop_205:
                                            M2C_ERROR(/* unknown instruction: ll $a6, ($at) */);
                                            if (M2C_ERROR(/* unknown instruction: sc $a5, ($at) */) == 0) {
                                                goto loop_205;
                                            }
                                            if (arg186 < 0) {
                                                var_s0 = -arg186;
                                            }
                                            arg156 = arg184 + 0x10000;
                                            kern_free((void *) arg184->unkF6F8);
                                            kern_free((void *) arg156->unk-8F8);
                                            kern_free((void *) arg184);
                                        }
                                    } else {
                                        kern_free((void *) temp_v0_7);
                                        var_s0 = -arg186;
                                    }
                                }
                            }
                        }
                    } else if (arg2 >= 0x6D67001AU) {
                        if (arg2 <= 0x6D67001AU) {
                            if (arg204 != 0) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                arg204->unk70->unk470 = (s32) arg194;
                            } else {
                                var_s0 = 0xE;
                            }
                        } else {
                            goto block_28;
                        }
                    } else if (arg2 == 0x6D670019) {
                        if (arg192->unkC8->unk35 != 0) {
                            goto block_115;
                        }
                        if (mgras_fp_reinit(arg192, 0x6D67001E) != 0) {
block_115:
                            var_s0 = 0x13;
                        }
                    } else {
                        goto block_28;
                    }
                } else if (arg2 >= 0x6D670016U) {
                    arg210 = (s64) arg0;
                    if (arg2 > 0x6D670016U) {
                        if (arg2 == 0x6D670017) {
                            var_s0 = (copyout(*((mgras_baseindex(arg192->unkD0, 0x6D67001E) * 8) + saved_reg_gp->unk-77B8) + 0x64, arg194, 0x24) == 0) ? 0 : 0xE;
                        } else {
                            goto block_28;
                        }
                    } else if (copyin(arg194, &arg126, 0x28) != 0) {
                        var_s0 = 0xE;
                    } else if (MgrasVidTextureXfer(arg210, &arg126) < 0) {
                        var_s0 = 0x16;
                    } else {
                        var_s0 = (copyout((s64) &arg126, arg194, 0x28) == 0) ? 0 : 0xE;
                    }
                } else if (arg2 >= 0x6D670015U) {
                    arg210 = (s64) arg0;
                    if (arg2 <= 0x6D670015U) {
                        if (copyin(arg194, &arg106, 0x50) != 0) {
                            var_s0 = 0xE;
                        } else {
                            var_s0 = (MgrasUserSaveTexData(arg210, &arg106) == 0) ? 0 : 0xE;
                        }
                    } else {
                        goto block_28;
                    }
                } else if (arg2 == 0x6D670014) {
                    arg188 = arg192->unkD0;
                    if (copyin(arg194, &arg104, 8) != 0) {
                        var_s0 = 0xE;
                    } else {
                        temp_a0_4 = arg192 + 0x8E8;
                        arg190 = temp_a0_4;
                        mutex_lock((void *) temp_a0_4);
                        MgrasSetGenlock(arg188, arg104, arg105);
                        mutex_unlock((void *) arg190);
                    }
                } else {
                    goto block_28;
                }
                goto block_30;
            }
        } else {
            curproc_abi(0x6D67001E);
            if (copyin_xlate(arg194, &arg100, 0x10, saved_reg_gp->unk-7770) != 0) {
                var_s0 = 0xE;
            } else {
                temp_t0 = 1 << logbase2(arg100);
                arg100 = temp_t0;
                var_a3 = arg101;
                var_a2_2 = arg204->unk70;
                if ((arg101 >= 0) && (arg101 < 8) && (temp_v0_10 = ((((s64) arg101 * 4) + arg101) * 8) + var_a2_2, (temp_v0_10->unk130 != 0))) {
                    if (arg102 != 0) {
                        arg180 = var_a2_2;
                        arg182 = (s64) var_a3;
                        temp_v0_11 = copyout(temp_v0_10->unk138, arg102, ((s64) temp_t0 * 4) << 0, var_a3);
                        var_a3 = (s32) arg182;
                        var_a2_2 = arg180;
                        if (temp_v0_11 != 0) {
                            arg208 = 1;
                            var_s0 = 0xE;
                        }
                        arg206 = arg208;
                    }
                    arg180 = var_a2_2;
                    arg182 = (s64) var_a3;
                    if (arg206 == 0) {
                        temp_a0_5 = arg192 + 0x7B8;
                        arg170 = temp_a0_5;
                        mutex_lock((void *) temp_a0_5);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a1 = (arg182 * 0x28) + arg180;
                        arg176 = temp_a1;
                        temp_a1->unk130 = 0;
                        mutex_unlock((void *) arg170);
                        if (arg176->unk134 != -1) {
                            MgrasEramBufFree((void *) arg192, arg176 + 0x130);
                        }
                        temp_a2 = (s32) arg176->unk140 >> 0xC;
                        arg166 = (s64) temp_a2;
                        temp_a1_2 = ((u64) ((arg192->unkC8->unk2B * arg100 * 4) + 0x3FFF) >> 0xE) << 0;
                        arg164 = temp_a1_2;
                        kvpfree(arg176->unk138, (s32) temp_a1_2, temp_a2, arg100);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg176->unk138 = 0;
                        mfree(arg192->unk6B0, arg164 * 4, arg166);
                        var_v0_2 = arg164;
                        var_a3_2 = arg192->unk6A0 + (arg166 * 4);
                        if (var_v0_2 != 0) {
                            do {
                                var_a2_3 = 0;
loop_141:
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_a2_3 += 1;
                                *var_a3_2 = 0;
                                var_a3_2 += 4;
                                if (var_a2_3 < 4) {
                                    goto loop_141;
                                }
                                var_v0_2 -= 1;
                            } while (var_v0_2 != 0);
                        }
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg192->unk6BC = (s32) (arg192->unk6BC + 1);
                    }
                } else {
                    var_s0 = 0x16;
                }
            }
            goto block_30;
        }
    } else {
        if (arg2 >= 0x6D670009U) {
            if (arg2 > 0x6D670009U) {
                if (arg2 >= 0x6D67000EU) {
                    if (arg2 > 0x6D67000EU) {
                        if (arg2 >= 0x6D670011U) {
                            if (arg2 > 0x6D670011U) {
                                arg210 = (s64) arg0;
                                if (arg2 == 0x6D670012) {
                                    curproc_abi(0x6D67000E);
                                    if (copyin_xlate(arg194, &arg96, 0x10, saved_reg_gp->unk-7770) != 0) {
                                        var_s0 = 0xE;
                                    } else {
                                        var_t3 = 1 << logbase2(arg96);
                                        arg96 = var_t3;
                                        var_t2 = 7;
                                        var_a2_4 = -1;
                                        var_t1 = var_t3;
                                        temp_a7 = arg204->unk70;
                                        do {
                                            temp_at = ((var_t2 * 0x28) + temp_a7)->unk130;
                                            var_a2_4 = (temp_at == 0) ? var_t2 : var_a2_4;
                                            var_t2 -= 1;
                                            var_t1 += temp_at;
                                        } while (var_t2 >= 0);
                                        if (arg192->unk694 < var_t1) {
                                            var_s0 = 6;
                                        } else {
                                            if (arg192->unk698 < var_t1) {
                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                arg158 = var_a2_4;
                                                arg192->unk704 = 1;
                                                arg160 = temp_a7;
                                                var_t3 = arg96;
                                            }
                                            arg158 = var_a2_4;
                                            arg160 = temp_a7;
                                            temp_a0_6 = ((u64) ((arg192->unkC8->unk2B * var_t3 * 4) + 0x3FFF) >> 0xE) << 0;
                                            arg154 = temp_a0_6;
                                            temp_v0_12 = kvpalloc((s32) temp_a0_6, 0x80090, 0);
                                            arg184 = temp_v0_12;
                                            arg168 = temp_v0_12;
                                            if (temp_v0_12 == 0) {
                                                var_s0 = 0xC;
                                            } else {
                                                arg97 = (s32) arg158;
                                                curproc_abi();
                                                if (xlate_copyout(&arg96, arg194, 0x10, saved_reg_gp->unk-7768) != 0) {
                                                    kvpfree(arg184, (s32) arg154);
                                                    var_s0 = 0xE;
                                                } else if (arg158 >= 0) {
                                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                    temp_a3 = (arg158 * 0x28) + arg160;
                                                    temp_a3->unk138 = arg184;
                                                    temp_a3->unk134 = -1;
                                                    arg152 = (s64) temp_a3;
                                                    temp_v0_13 = malloc(arg192->unk6B0, arg154 * 4, arg184, temp_a3);
                                                    arg186 = temp_v0_13;
                                                    arg150 = temp_v0_13;
                                                    var_a3_3 = arg154;
                                                    if (temp_v0_13 != 0) {
                                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                        arg152->unk148 = 1;
                                                        arg152->unk144 = (s32) var_a3_3;
                                                        arg152->unk140 = (s32) (arg186 << 0xC);
                                                        if (arg98 != 0) {
                                                            if (copyin(arg98, (s32 *) arg184, ((s64) arg96 * 4) << 0, var_a3_3) != 0) {
                                                                mfree(arg192->unk6B0, arg152->unk144 * 4, arg150);
                                                                kvpfree(arg152->unk138, (s32) arg154);
                                                                var_s0 = 0xE;
                                                            } else {
                                                                dki_dcache_wbinval(arg184, ((s64) arg96 * 4) << 0);
                                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                                arg152->unk148 = 0;
                                                                var_a3_3 = arg154;
                                                                goto block_249;
                                                            }
                                                        } else {
block_249:
                                                            arg162 = arg192->unk6A0 + (arg150 * 4);
                                                            if (var_a3_3 != 0) {
                                                                do {
                                                                    arg154 = var_a3_3;
                                                                    temp_v0_14 = kvtophyspnum(arg168);
                                                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                                    temp_at_2 = arg162 + 0x10;
                                                                    arg162 = temp_at_2;
                                                                    arg168 += 0x4000;
                                                                    temp_a6 = temp_v0_14 * 4;
                                                                    temp_at_2->unk-C = (s32) (temp_a6 + 1);
                                                                    temp_at_2->unk-8 = (s32) (temp_a6 + 2);
                                                                    var_a3_3 = arg154 - 1;
                                                                    temp_at_2->unk-10 = temp_a6;
                                                                    temp_at_2->unk-4 = (s32) (temp_a6 + 3);
                                                                } while (var_a3_3 != 0);
                                                            }
                                                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                            arg192->unk6BC = (s32) (arg192->unk6BC + 1);
                                                            temp_v0_15 = arg210->unk20;
                                                            arg154 = var_a3_3;
                                                            if (temp_v0_15->unk48 != arg210) {
                                                                psema(temp_v0_15 + 0x38, 0x219);
                                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                                arg210->unk20->unk48 = arg210;
                                                                if (arg210->unk20->unk68 != 0) {
                                                                    do {
                                                                        us_delay(2);
                                                                    } while (arg210->unk20->unk68 != 0);
                                                                }
                                                            }
loop_253:
                                                            M2C_ERROR(/* unknown instruction: ll $v1, ($a2) */);
                                                            if (M2C_ERROR(/* unknown instruction: sc $a4, ($a2) */) == 0) {
                                                                goto loop_253;
                                                            }
                                                            temp_a0_7 = arg192 + 0x7B8;
                                                            arg170 = temp_a0_7;
                                                            mutex_lock((void *) temp_a0_7);
                                                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                            arg152->unk130 = arg96;
                                                            if (MgrasValidateEramRes((void *) arg192, (void *) arg160, arg158, (s64) arg96) >= 0) {
                                                                mutex_unlock((void *) arg170);
loop_258:
                                                                M2C_ERROR(/* unknown instruction: ll $a5, ($a6) */);
                                                                if (M2C_ERROR(/* unknown instruction: sc $at, ($a6) */) == 0) {
                                                                    goto loop_258;
                                                                }
                                                            } else {
                                                                mutex_unlock((void *) arg170);
loop_269:
                                                                M2C_ERROR(/* unknown instruction: ll $a6, ($a7) */);
                                                                if (M2C_ERROR(/* unknown instruction: sc $t1, ($a7) */) == 0) {
                                                                    goto loop_269;
                                                                }
                                                                temp_a3_2 = arg210->unk18->unkC0;
                                                                arg186 = splhi();
                                                                if (temp_a3_2 != 0) {
                                                                    ((? (*)(s64)) temp_a3_2)(arg210);
                                                                }
                                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                                temp_a1_3 = arg210->unk20;
                                                                temp_a1_3->unk48 = 0;
                                                                vsema(arg210->unk20 + 0x38, temp_a1_3);
                                                                splx((s32) arg186);
                                                                mfree(arg192->unk6B0, arg152->unk144 * 4, arg150);
                                                                kvpfree(arg152->unk138, (s32) arg154);
                                                                mgras_error((void *) arg192, arg192->unkD0);
                                                                var_s0 = 0xE;
                                                            }
                                                        }
                                                    } else {
                                                        kvpfree(arg152->unk138, (s32) var_a3_3);
                                                        var_s0 = 0xC;
                                                    }
                                                } else {
                                                    kvpfree(arg184, (s32) arg154);
                                                    var_s0 = 7;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    goto block_28;
                                }
                            } else {
                                arg210 = (s64) arg0;
                                curproc_abi(0x6D67000E);
                                if (copyin_xlate(arg194, &arg62, 0x88, saved_reg_gp->unk-7778) != 0) {
                                    var_s0 = 0xE;
                                } else {
                                    temp_v0_16 = mgras_copyin_vc3_tables(&arg62);
                                    if (temp_v0_16 < 0) {
                                        var_s0 = -temp_v0_16;
                                    } else {
                                        temp_v0_17 = RRM_CheckValidFault(arg210);
                                        var_s0 = temp_v0_17;
                                        if (temp_v0_17 == 0) {
loop_212:
                                            M2C_ERROR(/* unknown instruction: ll $a2, ($a3) */);
                                            if (M2C_ERROR(/* unknown instruction: sc $a5, ($a3) */) == 0) {
                                                goto loop_212;
                                            }
                                            temp_a0_8 = arg192 + 0x8E8;
                                            arg190 = temp_a0_8;
                                            mutex_lock((void *) temp_a0_8);
                                            if (!(arg62 & 0x01000000)) {
                                                mgras_mco_shutdown(arg192);
                                            }
                                            temp_v0_18 = MgrasSetTiming(arg192->unkD0, arg192->unkC8, 1, &arg62);
                                            arg186 = temp_v0_18;
                                            var_s0 = temp_v0_18;
                                            mutex_unlock((void *) arg190);
loop_217:
                                            M2C_ERROR(/* unknown instruction: ll $v1, ($a5) */);
                                            if (M2C_ERROR(/* unknown instruction: sc $ra, ($a5) */) == 0) {
                                                goto loop_217;
                                            }
                                            if (arg186 == 0) {
                                                kern_free((void *) arg68);
                                                kern_free((void *) arg72);
                                                kern_free((void *) arg76);
                                                MgrasEnableRetraceInterrupts((mgras_hw *) arg192->unkD0);
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (arg2 >= 0x6D670010U) {
                            if (arg2 <= 0x6D670010U) {
                                arg210 = (s64) arg0;
                                if (arg192->unk6D0 == 0) {
                                    var_s0 = 6;
                                } else if (copyin(arg194, &arg60, 8) != 0) {
                                    var_s0 = 0xE;
                                } else {
                                    temp_v0_19 = MgrasAddTexSpace((void *) arg210, (struct mgras_rnode_s *) arg204->unk70, (mgras_texspace_args_t *) &arg60);
                                    arg186 = temp_v0_19;
                                    if (temp_v0_19 < 0) {
                                        var_s0 = -arg186;
                                    } else {
                                        var_s0 = (copyout((s64) &arg60, arg194, 8) == 0) ? 0 : 0xE;
                                    }
                                }
                            } else {
                                goto block_28;
                            }
                        } else {
                            arg210 = (s64) arg0;
                            if (arg2 == 0x6D67000F) {
                                curproc_abi(0x6D67000E);
                                if (copyin_xlate(arg194, &arg38, 0x28, saved_reg_gp->unk-7798) != 0) {
                                    var_s0 = 0xE;
                                } else {
                                    var_s0 = MgrasDmaEditAppend(arg210, arg204, &arg38);
                                }
                            } else {
                                goto block_28;
                            }
                        }
                    } else {
                        arg210 = (s64) arg0;
                        curproc_abi(0x6D67000E);
                        if (copyin_xlate(arg194, &arg28, 0x28, saved_reg_gp->unk-77A0) != 0) {
                            var_s0 = 0xE;
                        } else {
                            var_s0 = MgrasDmaEditReplace(arg210, arg204, &arg28);
                        }
                    }
                } else if (arg2 >= 0x6D67000CU) {
                    arg212 = (s64) temp_v0;
                    if (arg2 > 0x6D67000CU) {
                        arg210 = (s64) arg0;
                        if (arg2 == 0x6D67000D) {
                            curproc_abi(0x6D67000C);
                            if (copyin_xlate(arg194, &arg16, 0x30, saved_reg_gp->unk-77A8) != 0) {
                                var_s0 = 0xE;
                            } else {
                                var_s0 = MgrasDmaUtil_Multi(arg210, arg204, &arg16);
                            }
                        } else {
                            goto block_28;
                        }
                    } else {
                        curproc_abi(0x6D67000C);
                        if (copyin_xlate(arg194, &arg54, 8, saved_reg_gp->unk-7788) != 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_s0 = 0xE;
                            *arg212 = -1;
                        } else {
                            temp_v0_20 = MgrasSetShadowRgn((void *) arg204, (s64) &arg54);
                            var_s0 = temp_v0_20;
                            if (temp_v0_20 != 0) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                *arg212 = -1;
                            }
                        }
                    }
                } else if (arg2 >= 0x6D67000BU) {
                    arg210 = (s64) arg0;
                    if (arg2 <= 0x6D67000BU) {
                        curproc_abi(0x6D67000B);
                        if (copyin_xlate(arg194, &arg6, 0x28, saved_reg_gp->unk-77B0) != 0) {
                            var_s0 = 0xE;
                        } else {
                            var_s0 = MgrasDmaUtil_Single(arg210, arg204, &arg6);
                        }
                    } else {
                        goto block_28;
                    }
                } else if (arg2 == 0x6D67000A) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    *temp_v0 = 0x1000;
                } else {
                    goto block_28;
                }
            } else if (copyin(arg194, arg192 + 0x660, 0x30) != 0) {
                var_s0 = 0xE;
            } else {
                MgrasGE11EramInit(arg192);
            }
        } else if (arg2 >= 0x6D670004U) {
            if (arg2 > 0x6D670004U) {
                if (arg2 >= 0x6D670007U) {
                    if (arg2 > 0x6D670007U) {
                        if (arg2 == 0x6D670008) {

                        } else {
                            goto block_28;
                        }
                    }
                } else if (arg2 >= 0x6D670006U) {
                    arg210 = (s64) arg0;
                    if (arg2 <= 0x6D670006U) {
                        if (copyin(arg194, &arg4, 8) != 0) {
                            var_s0 = 0xE;
                        } else {
                            var_s0 = rrmWaitVideoSync(arg210, arg204, arg4, arg5);
                        }
                    } else {
                        goto block_28;
                    }
                } else {
                    arg212 = (s64) temp_v0;
                    if (arg2 == 0x6D670005) {
                        temp_a0_9 = arg192 + 0x8E8;
                        arg190 = temp_a0_9;
                        mutex_lock((void *) temp_a0_9);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        *arg212 = (s32) arg192->unk7C;
                        mutex_unlock((void *) arg190);
                    } else {
                        goto block_28;
                    }
                }
            } else {
                temp_a0_10 = arg192 + 0x8E8;
                arg190 = temp_a0_10;
                mutex_lock((void *) temp_a0_10);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg192->unk7C = (s32) arg194;
                mutex_unlock((void *) arg190);
            }
        } else if (arg2 >= 0x6D670002U) {
            if (arg2 > 0x6D670002U) {
                arg210 = (s64) arg0;
                if (arg2 != 0x6D670003) {
                    goto block_28;
                }
                temp_v0_21 = kern_malloc(0x600, 0x6D670007);
                if (temp_v0_21 == 0) {
                    var_s0 = 0xC;
                } else if (copyin(arg194, (s32 *) temp_v0_21, 0x600) != 0) {
                    arg184 = temp_v0_21;
                    var_s0 = 0xE;
                    kern_free((void *) arg184);
                } else {
                    arg184 = temp_v0_21;
                    var_s0 = MgrasSetGammaRamp(arg210->unk20, temp_v0_21, temp_v0_21 + 0x200, temp_v0_21 + 0x400);
                    kern_free((void *) arg184);
                }
            } else {
                arg210 = (s64) arg0;
                if (copyin(arg194, (s32 *) &arg2, 4) != 0) {
                    var_s0 = 0xE;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg192->unk188 = (s32) arg2;
                    arg192->unk18C = (s32) arg2;
                    MgrasPositionCursor(arg210->unk20, arg192->unk190, arg192->unk194, arg2);
                }
            }
        } else if (arg2 >= 0x6D670001U) {
            arg210 = (s64) arg0;
            if (arg2 <= 0x6D670001U) {
                if (copyin(arg194, sp, 8) != 0) {
                    var_s0 = 0xE;
                } else {
                    temp_v0_22 = MgrasSetDisplayMode(arg210, arg0, (s32) arg1);
                    if (temp_v0_22 < 0) {
                        var_s0 = -temp_v0_22;
                    }
                }
            } else {
                goto block_28;
            }
        } else if (arg2 == 0x5213) {
            if (arg192->unkC8->unk35 != 0) {
                var_s0 = 0x13;
            } else {
                curproc_abi(0x6D670007);
                if (copyin_xlate(arg194, &arg136, 0x18, saved_reg_gp->unk-7760) != 0) {
                    var_s0 = 0xE;
                } else {
                    var_s0 = mgras_fpi2c_command(arg192, &arg136);
                    curproc_abi();
                    if (xlate_copyout(&arg136, arg194, 0x18, saved_reg_gp->unk-7758) != 0) {
                        var_s0 = 0xE;
                    }
                }
            }
        } else {
block_28:
            cmn_err(5, saved_reg_gp->unk-77F0 + 0x5E8);
            var_s0 = 0x16;
block_29:
        }
block_30:
        var_v0 = var_s0;
    }
    return var_v0;
}

s64 MgrasWriteBfifo(s64 arg0, s32 *arg1, s32 arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, u64 arg12, s64 arg14, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg26, s64 arg28) {
    s32 temp_a0;
    s32 temp_a0_4;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s64 temp_a0_2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a2;
    s64 var_a6;
    s64 var_v0;
    u16 temp_a0_3;
    u32 temp_v0_4;
    u32 var_a4;

    arg10 = arg0;
    if (arg0 != 0) {
        arg22 = arg3;
        arg24 = M2C_ERROR(/* Read from unset register $a4 */);
        if (arg2 != 2) {
            temp_a0 = *arg1;
            if (temp_a0 != 0) {
                arg26 = 0;
                arg6 = (s64) arg1;
                arg12 = (u64) temp_a0;
                var_v0 = 0xE;
                if (arg2 != 1) {
                    arg4 = 0;
                    arg16 = 0;
                    temp_a0_2 = ((u64) (arg12 << 0x20) >> 0x20) * 0x10;
                    arg20 = temp_a0_2;
                    temp_v0 = kern_malloc(temp_a0_2, 2);
                    var_a2 = temp_v0;
                    arg18 = temp_v0;
                    var_a6 = 0xC;
                    if (temp_v0 == 0) {
                        goto block_5;
                    }
                    arg8 = var_a2;
                    var_a2 = arg8;
                    if (copyin(arg6->unk8, (s32 *) arg8, arg20 << 0) != 0) {
                        arg26 = 0xE;
                        if (var_a2 != 0) {
                            goto block_14;
                        }
                    } else {
                        temp_v0_2 = arg10->unk20;
                        arg0 = temp_v0_2;
                        arg14 = temp_v0_2->unkD0;
                        mutex_lock(temp_v0_2 + 0x8E8);
                        temp_v0_3 = splhi();
                        arg4 = 1;
                        arg2 = temp_v0_3;
                        var_a2 = arg8;
                        var_a4 = 0;
                        if (arg12 != 0) {
loop_24:
                            temp_v0_4 = arg18->unk0;
                            if ((temp_v0_4 >= 0x60000U) && (temp_v0_4 <= 0x6803CU)) {
                                temp_v0_5 = arg14 + temp_v0_4;
                                if (arg16 == 0) {
                                    if (arg14->unk70100 & 0x1F) {
                                        do {

                                        } while (arg14->unk70100 & 0x1F);
                                    }
                                }
                                temp_a0_3 = arg18->unk4;
                                switch (temp_a0_3) { /* irregular */
                                default:
                                    var_a6 = 0xE;
block_5:
                                    arg26 = var_a6;
                                    break;
                                case 8:
                                    if (temp_v0_5 & 7) {
                                        arg26 = 0xE;
                                    } else {
                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                        *temp_v0_5 = (s64) arg18->unk8;
block_42:
                                        var_a4 += 1;
                                        arg18 += 0x10;
                                        arg16 = (arg16 == 0xF) ? 0 : (arg16 + 1);
                                        if (var_a4 >= arg12) {

                                        } else {
                                            goto loop_24;
                                        }
                                    }
                                    break;
                                case 2:
                                    if (temp_v0_5 & 1) {
                                        arg26 = 0xE;
                                    } else {
                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                        *temp_v0_5 = (s16) arg18->unk8;
                                        goto block_42;
                                    }
                                    break;
                                case 1:
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    *temp_v0_5 = (s8) arg18->unk8;
                                    goto block_42;
                                case 4:
                                    if (temp_v0_5 & 3) {
                                        var_a6 = 0xE;
                                        goto block_5;
                                    }
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    *temp_v0_5 = (s32) arg18->unk8;
                                    goto block_42;
                                }
                            } else {
                                arg26 = 0xE;
                            }
                        }
                        if (var_a2 != 0) {
block_14:
                            kern_free((void *) var_a2);
                        }
                    }
                    if (arg4 != 0) {
                        splx(arg2);
                        mutex_unlock(arg0 + 0x8E8);
                    }
                    var_v0 = arg26;
                }
            } else {
                var_v0 = 0;
            }
        } else {
            arg6 = (s64) arg1;
            if (mgras_baseindex(arg10, 2) != -1) {
                arg10->unk70100;
                temp_a0_4 = splhi();
                if (arg24 != 4) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg6->unk0 = (s8) arg22;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg6->unk0 = (s32) arg22;
                }
                splx(temp_a0_4);
                var_v0 = 0;
            } else {
                var_v0 = 0xE;
            }
        }
    } else {
        var_v0 = 0xE;
    }
    return var_v0;
}

void mgras_error(void *arg0, s64 arg1, s64 arg6, s64 arg8, s64 arg10) {
    s32 temp_a2;

    arg6 = arg1;
loop_1:
    M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
    temp_a2 = M2C_ERROR(/* unknown instruction: sc $a2, ($v1) */);
    if (temp_a2 == 0) {
        goto loop_1;
    }
    arg8 = (s64) arg0;
    if (arg0->unkC8->unk44 == 1) {
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x608, temp_a2);
        mgras_hqlook(mgras_baseindex(arg6));
        arg4 = 0;
        arg0 = (void *)9;
        arg2 = arg8;
        gthread_scan(saved_reg_gp->unk-7748, sp, 9, arg8);
        MgrasValidateAllRetrace(arg8);
        MgrasRetraceInit((mgras_data_t *) arg8);
    }
}

void mgras_hqlook(s64 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, s32 arg10, s64 arg12, s64 arg22, s64 arg24, s64 arg26, s64 arg28, s64 arg30, s64 arg32, s64 arg34, s64 arg36, s64 arg38) {
    s64 temp_a0;
    s64 temp_a0_10;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a0_6;
    s64 temp_a0_7;
    s64 temp_a0_8;
    s64 temp_a0_9;
    s64 temp_s0;
    s64 temp_s1_2;
    s64 temp_s2;
    s64 temp_s2_2;
    void *temp_s1;

    temp_s0 = saved_reg_gp->unk-77F0;
    temp_s1 = (arg0 * 0x30) + saved_reg_gp->unk-77D0;
    temp_s2 = temp_s1->unk8;
    temp_s1_2 = temp_s1->unk0;
    printf(temp_s0 + 0x618, arg0);
    printf(temp_s0 + 0x628, temp_s2 + 0x1B8, temp_s2->unk1A8);
    temp_s2_2 = temp_s1_2 + 0x70104;
    if (badaddr_val(temp_s2_2, 4, sp) != 0) {
        printf(temp_s0 + 0x670, temp_s0 + 0x660, temp_s2_2);
    } else {
        printf(temp_s0 + 0x650, temp_s0 + 0x660, temp_s2_2, (s32) arg0);
    }
    if (!((s32) arg0 & 3)) {
        temp_a0 = temp_s1_2 + 0x70000;
        arg36 = temp_a0;
        if (badaddr_val(temp_a0, 4, &arg1) != 0) {
            printf(temp_s0 + 0x670, saved_reg_gp - 0x7740, arg36);
        } else {
            printf(temp_s0 + 0x650, saved_reg_gp - 0x7740, arg36, arg1);
        }
        temp_a0_2 = temp_s1_2 + 0x70004;
        arg22 = temp_a0_2;
        if (badaddr_val(temp_a0_2, 4, &arg2) != 0) {
            printf(temp_s0 + 0x670, temp_s0 + 0x688, arg22);
        } else {
            printf(temp_s0 + 0x650, temp_s0 + 0x688, arg22, arg2);
        }
        temp_a0_3 = temp_s1_2 + 0x70100;
        arg24 = temp_a0_3;
        if (badaddr_val(temp_a0_3, 4, &arg3) != 0) {
            printf(temp_s0 + 0x670, temp_s0 + 0x698, arg24);
        } else {
            printf(temp_s0 + 0x650, temp_s0 + 0x698, arg24, arg3);
        }
        temp_a0_4 = temp_s1_2 + 0x50000;
        if (arg3 & 0x40) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg12 = temp_a0_4;
            temp_s1_2->unk50000 = 0x7E8D;
        }
        arg12 = temp_a0_4;
        temp_a0_5 = temp_s1_2 + 0x5021C;
        arg38 = temp_a0_5;
        if (badaddr_val(temp_a0_5, 4, &arg4) != 0) {
            printf(temp_s0 + 0x670, temp_s0 + 0x6A8, arg38);
        } else {
            printf(temp_s0 + 0x650, temp_s0 + 0x6A8, arg38, arg4);
        }
        temp_a0_6 = temp_s1_2 + 0x45000;
        arg28 = temp_a0_6;
        if (badaddr_val(temp_a0_6, 4, &arg5) != 0) {
            printf(temp_s0 + 0x670, saved_reg_gp - 0x7738, arg28);
        } else {
            printf(temp_s0 + 0x650, saved_reg_gp - 0x7738, arg28, arg5);
        }
        temp_a0_7 = temp_s1_2 + 0x46000;
        arg30 = temp_a0_7;
        if (badaddr_val(temp_a0_7, 4, &arg6) != 0) {
            printf(temp_s0 + 0x670, saved_reg_gp - 0x7730, arg30);
        } else {
            printf(temp_s0 + 0x650, saved_reg_gp - 0x7730, arg30, arg6);
        }
        temp_a0_8 = temp_s1_2 + 0x70008;
        arg32 = temp_a0_8;
        if (badaddr_val(temp_a0_8, 4, &arg7) != 0) {
            printf(temp_s0 + 0x670, temp_s0 + 0x6B8, arg32);
        } else {
            printf(temp_s0 + 0x650, temp_s0 + 0x6B8, arg32, arg7);
        }
        if (badaddr_val(arg12, 4, &arg8) != 0) {
            printf(temp_s0 + 0x670, temp_s0 + 0x6C8, arg12);
        } else {
            printf(temp_s0 + 0x650, temp_s0 + 0x6C8, arg12, arg8);
        }
        temp_a0_9 = temp_s1_2 + 0x50114;
        arg26 = temp_a0_9;
        if (badaddr_val(temp_a0_9, 4, &arg9) != 0) {
            printf(temp_s0 + 0x670, temp_s0 + 0x6D8, arg26);
        } else {
            printf(temp_s0 + 0x650, temp_s0 + 0x6D8, arg26, arg9);
        }
        temp_a0_10 = temp_s1_2 + 0x7C578;
        arg34 = temp_a0_10;
        if (badaddr_val(temp_a0_10, 4, &arg10) != 0) {
            printf(temp_s0 + 0x670, temp_s0 + 0x6E8, arg34);
        } else {
            printf(temp_s0 + 0x650, temp_s0 + 0x6E8, arg34, arg10);
        }
    }
}

void mgras_fifotimeout(void *arg0) {
    mgras_error((void *) arg0->unkD0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk68 = 0;
    if (arg0->unk738 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk738 = 0;
        vsema((s64) (arg0 + 0x728));
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x6F8);
    } else {
loop_4:
        if (M2C_ERROR(/* unknown instruction: sc $a5, ($a3) */) == 0) {
            goto loop_4;
        }
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x718, M2C_ERROR(/* unknown instruction: ll $a2, ($a3) */) - 1, arg0->unk48->unk20 + 0x50);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk1A0 = 0;
}

void mgras_fifotimer(void *arg0, s32 arg1, s64 arg2) {
    s32 temp_a4;

    temp_a4 = arg0->unk1A0;
    if (arg1 != 0) {
        if (temp_a4 == 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((s64) arg0)->unk1A0 = timeout(saved_reg_gp->unk-7728, (s64) arg0, 0x5DC, arg0);
        }
    } else {
        untimeout(temp_a4, arg0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        ((s64) arg0)->unk1A0 = 0;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x68, 0x6c], gap at: 0x60. */
s32 MgrasCtxsw(void *arg0, void *arg1, void *arg2, s64 arg4, s64 arg6) {
    s32 *var_a1;
    s32 temp_a0;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_s1;
    s64 temp_s2;
    s64 temp_v1_2;
    u32 temp_v0_4;
    u32 var_a0;
    u8 temp_a3;
    void *temp_a0_2;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s4;
    void *temp_s5;
    void *temp_s7;
    void *temp_s8;
    void *temp_v1;

    temp_s1 = arg0->unkD0;
    temp_s4 = arg2;
    temp_s7 = arg0 + 0x790;
    temp_s8 = arg0 + 0x778;
    temp_s2 = arg0->unkC8;
    psema((s64) temp_s7, 0x19);
    psema((s64) temp_s8, 0x19);
    hold_nonfatalsig(sp);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk720 = timeout(saved_reg_gp->unk-7720, (s64) arg0, 0x5DC);
    if (arg0->unk654 != 0) {
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x730);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk654 = 0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0 = temp_s1->unk50000;
    temp_s4->unk20 = temp_v0;
    temp_s4->unk24 = (s32) temp_s1->unk50114;
    temp_a4 = temp_s1->unk50018;
    temp_s4->unk2C = temp_a4;
    temp_s4->unk28 = (s32) temp_s1->unk50010;
    temp_a3 = temp_s2->unk2B;
    arg4 = temp_a4 & 0xFC000000;
    if (temp_a3 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1->unk50000 = (s32) (temp_v0 & ~0x88);
    }
    if (!(temp_s1->unk70008 & 0x10000)) {
loop_6:
        temp_v0_2 = temp_s1->unk70104;
        temp_a0 = temp_v0_2 & 0x200;
        if (temp_a0 == 0) {
            if (!(temp_v0_2 & 7)) {
                if (temp_a0 != 0) {
                    goto block_9;
                }
            } else {
                goto loop_6;
            }
        } else {
block_9:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s1->unk50018 = 0x10000;
            temp_s1->unk5001C = 0xFFFEFFFF;
            psema((s64) (arg0 + 0x7A0), 0x19, 0x10000, (s64) temp_a3);
        }
    }
    temp_v1 = arg0 + 0x1B8;
    arg2 = (s64) temp_v1;
    if (temp_v1 == temp_s4) {
        temp_v1_2 = arg0->unkD0;
        if (temp_v1_2->unk70104 & 0x200) {
            do {

            } while (temp_v1_2->unk70104 & 0x200);
        }
    }
    if (arg0->unk654 != 0) {
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x770);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk654 = 0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk50018 = 0x80000;
    temp_s1->unk5001C = 0xFFF7FFFF;
    temp_s5 = arg0 + 0x630;
    temp_s1->unk50050 = 0x4FC;
    *(s32 *)-0x3CA8 = 0;
    if (psema((s64) temp_s5, 0x1A, 0x4FC, 0xFFF7FFFF) != 0) {
loop_16:
        temp_s1_2 = arg0 + 0x710;
        if (arg0->unkC8->unk44 != 0) {
            release_nonfatalsig(sp);
            vsema((s64) temp_s8);
            vsema((s64) temp_s7);
            untimeout(arg0->unk720);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk720 = 0;
            var_v0 = -1;
        } else {
            init_sema((s64) temp_s1_2, 0, 0, -1);
            timeout(saved_reg_gp->unk-7800, (s64) temp_s1_2, 1);
            psema((s64) temp_s1_2, 0x19);
            if (psema((s64) temp_s5, 0x1A) == 0) {
                goto block_21;
            }
            goto loop_16;
        }
    } else {
block_21:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *(void *)-0x3CA8 = 1;
        temp_s1->unk50018 = 0x40;
        temp_s1->unk5001C = -0x41;
        temp_s1->unk50114 = (s32) arg1->unk24;
        if (saved_reg_gp->unk-77F8 != 0) {
            temp_v0_3 = arg1->unk38;
            if (((u32) (temp_v0_3 & 0x0FFFFFFF) >> 0x1B) == 0) {
                printf(saved_reg_gp->unk-77F0 + 0x7B0, arg1->unk10, (u32) (temp_v0_3 & 0x3FFFFFFF) >> 0x1D, (u32) (temp_v0_3 & 0x07FFFFFF) >> 0x1A);
            }
        }
        var_a1 = arg1 + 0x34;
        var_a0 = 0;
        temp_v0_4 = ((u32) (temp_s1->unk70004 & 0x1FC00000) >> 0x16) - 2;
loop_25:
        var_a0 += 1;
        if (temp_v0_4 < (u32) (temp_s1->unk70004 & 0x7F)) {
            do {

            } while (temp_v0_4 < (u32) (temp_s1->unk70004 & 0x7F));
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a3_2 = *var_a1;
        var_a1 += 4;
        temp_s1->unk70084 = temp_a3_2;
        if (var_a0 < 0x3FU) {
            goto loop_25;
        }
        var_v0_2 = arg1->unk38;
        if ((s64) arg2 != arg1) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_v0_2 = var_v0_2 & ~0x04000000 & ~0x20000000 & ~0x40000000 & 0x7FFFFFFF;
            arg1->unk38 = var_v0_2;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0_2 = arg0 + 0x640;
        arg6 = (s64) temp_a0_2;
        arg1->unk38 = (s32) (var_v0_2 & ~0x08000000);
        arg0->unk654 = 1;
        *(void *)-0x3CA8 = 0;
        if (psema((s64) temp_a0_2, 0x1A) != 0) {
loop_31:
            temp_s1_3 = arg0 + 0x710;
            if (arg0->unkC8->unk44 == 0) {
                init_sema((s64) temp_s1_3, 0, 0, -1);
                timeout(saved_reg_gp->unk-7800, (s64) temp_s1_3, 1);
                psema((s64) temp_s1_3, 0x19);
                if (psema(arg6, 0x1A) == 0) {
                    goto block_33;
                }
                goto loop_31;
            }
            release_nonfatalsig(sp);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk654 = 0;
            vsema((s64) temp_s8);
            vsema((s64) temp_s7);
            untimeout(arg0->unk720);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk720 = 0;
            var_v0 = -1;
        } else {
block_33:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *(void *)-0x3CA8 = 1;
            arg0->unk654 = 0;
            untimeout(arg0->unk720);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk720 = 0;
            temp_s4->unk30 = (s32) (temp_s1->unk50008 & 0x20);
            temp_s1->unk5000C = 0xF0;
            temp_s1->unk50000 = (s32) arg1->unk20;
            temp_s1->unk5001C = -1;
            temp_s1->unk50018 = (s32) ((arg1->unk2C & 0x03FFFFFF) | arg4);
            temp_s1->unk50014 = -1;
            temp_s1->unk50010 = (s32) arg1->unk28;
            arg0->unk1B0 = (s64) temp_s4;
            arg0->unk1A8 = (s64) arg1;
            if ((s64) arg2 == arg1) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg0->unkD0->unk70084 = 0xF400;
            }
            release_nonfatalsig(sp);
            vsema((s64) temp_s8);
            vsema((s64) temp_s7);
            var_v0 = 0;
        }
    }
    return var_v0;
}

void MgrasFIFOInterrupt(s64 arg0, void *arg1, s64 arg2, s64 arg4, s64 arg6, u64 arg8, s64 arg10, u64 arg20, s64 arg22, s64 arg24) {
    s32 temp_a2;
    s32 temp_s4;
    s32 var_s2;
    s64 temp_a3;
    s64 temp_at;
    s64 temp_s0;
    s64 temp_s1;
    s64 temp_s6;
    s64 temp_v0;
    s64 var_a4;
    s64 var_a5;
    s64 var_ra;
    u64 var_a0;

    var_ra = saved_reg_ra;
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a3 = saved_reg_gp->unk-7780;
    temp_s0 = ((arg0 * 0x30) + saved_reg_gp->unk-77D0)->unk8;
    *temp_a3 = (u8) (*temp_a3 & ~1);
    temp_s1 = temp_s0->unkD0;
    arg10 = temp_s1 + 0x50000;
    temp_s4 = temp_s1->unk50018;
    var_a4 = 0;
    var_a5 = 0;
    var_s2 = temp_s4;
    if (temp_s4 & 0x44000000) {
        if (temp_s0->unk68 != 0) {
            goto block_3;
        }
        *(s32 *)-0x3CA4 = 1;
        temp_v0 = (arg1->unkF8 & 0x18) == 0x10;
        arg4 = temp_v0;
        var_a0 = 0;
        arg8 = (temp_v0 == 0) ? 0x2710U : 0x32U;
        if (temp_s4 & 0x04000000) {
            if (arg8 != 0) {
                arg6 = temp_s1 + 0x70000;
loop_22:
                if (arg6->unk0 & 8) {
                    arg0 = var_a4;
                    arg20 = var_a0;
                    arg2 = 1;
                    us_delay(1);
                    var_a0 = arg20 + 1;
                    var_a5 = arg2;
                    var_a4 = arg0;
                    if (var_a0 >= arg8) {

                    } else {
                        goto loop_22;
                    }
                } else {
                    var_a5 = 0;
                }
                var_ra = arg22;
            } else {
                arg6 = temp_s1 + 0x70000;
            }
        } else {
            arg6 = temp_s1 + 0x70000;
        }
        if ((temp_s4 & 0x40000000) && (var_a0 < arg8)) {
            arg22 = var_ra;
loop_38:
            if (arg6->unk0 & 0x80) {
                arg2 = var_a5;
                arg20 = var_a0;
                arg0 = 1;
                us_delay(1);
                var_a0 = arg20 + 1;
                var_a5 = arg2;
                var_a4 = arg0;
                if (var_a0 >= arg8) {

                } else {
                    goto loop_38;
                }
            } else {
                var_a4 = 0;
            }
            var_ra = arg22;
        }
        *(void *)-0x3CA4 = 0;
        if ((arg6->unk4 & 0x7F) != 0x7F) {
            if (var_a0 >= arg8) {
                if (arg4 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s6 = saved_reg_gp->unk0;
                    temp_s6->unk18 = (s32) (temp_s6->unk18 + 1);
                    temp_s0->unk68 = 1;
loop_47:
                    M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
                    if (M2C_ERROR(/* unknown instruction: sc $s6, ($v1) */) == 0) {
                        goto loop_47;
                    }
                    *(s8 *)-0x3FB2 = 1;
                    temp_s0->unk78 = 1;
                    if (var_a5 != 0) {
                        var_s2 = (var_s2 & ~0x04000000) | 0x08000000;
                    }
                    if (var_a4 != 0) {
                        arg22 = var_ra;
                        var_s2 = (var_s2 & ~0x40000000) | 0x80000000;
                    }
                    arg22 = var_ra;
                    mgras_fifotimer((void *) temp_s0, 1, 1, saved_reg_gp->unk-7780);
                    var_ra = arg22;
                } else {
                    if (var_a5 != 0) {
                        arg22 = var_ra;
                        arg0 = var_a4;
                        cmn_err(4, saved_reg_gp->unk-77F0 + 0x818, arg4, saved_reg_gp->unk-7780);
                        var_a4 = arg0;
                        var_ra = arg22;
                    }
                    if (var_a4 != 0) {
                        arg22 = var_ra;
                        cmn_err(4, saved_reg_gp->unk-77F0 + 0x838);
                        var_ra = arg22;
                    }
                }
                goto block_4;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_at = saved_reg_gp->unk0;
            temp_at->unk1C = (s32) (temp_at->unk1C + 1);
        } else {
            arg22 = var_ra;
            cmn_err(4, saved_reg_gp->unk-77F0 + 0x7F0, (u32) (arg6->unk4 & 0x1FC00000) >> 0x16, 0x1FC00000);
            mgras_error((void *) temp_s0, temp_s1);
        }
    } else {
block_3:
block_4:
        if (temp_s4 & 0x08000000) {
            if (temp_s1->unk70000 & 0x10) {
                var_s2 = (var_s2 & ~0x08000000) | 0x04000000;
            } else {
                arg22 = var_ra;
                cmn_err(5, saved_reg_gp->unk-77F0 + 0x858);
                var_ra = arg22;
            }
        }
        if (temp_s4 & 0x80000000) {
            temp_a2 = temp_s1->unk70000 & 0x100;
            if (temp_a2 != 0) {
                var_s2 = (var_s2 & 0x7FFFFFFF) | 0x40000000;
                if (temp_s4 != var_s2) {
                    goto block_10;
                }
            } else {
                arg22 = var_ra;
                cmn_err(5, saved_reg_gp->unk-77F0 + 0x878, temp_a2, saved_reg_gp->unk-7780);
                var_ra = arg22;
                goto block_16;
            }
        } else {
block_16:
            if (temp_s4 != var_s2) {
block_10:
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg10->unk1C = (s32) (temp_s4 ^ var_s2);
                arg10->unk18 = var_s2;
            }
        }
        if ((temp_s0->unk68 != 0) && !(var_s2 & 0x08000000)) {
            arg22 = var_ra;
            mgras_fifotimer((void *) temp_s0, 0);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s0->unk68 = 0;
            if (temp_s0->unk738 == 0) {
loop_27:
                M2C_ERROR(/* unknown instruction: ll $v1, ($a2) */);
                if (M2C_ERROR(/* unknown instruction: sc $v0, ($a2) */) == 0) {
                    goto loop_27;
                }
                if (temp_s0->unk738 != 0) {
                    goto block_31;
                }
            } else {
block_31:
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s0->unk738 = 0;
                vsema(temp_s0 + 0x728);
            }
            *(void *)-0x3FB2 = 1;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *(u8 *) saved_reg_gp->unk-7780 |= 1;
    }
}

void MgrasGeneralInterrupt(s64 arg0, s64 arg2, s64 arg4, s64 arg6, s64 arg8) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_7;
    s32 temp_s3;
    s64 temp_at;
    s64 temp_s1_2;
    s64 var_ra;
    void *temp_s1;

    var_ra = saved_reg_ra;
    temp_s1 = (arg0 * 0x30) + saved_reg_gp->unk-77D0;
    temp_at = temp_s1->unk8;
    arg2 = temp_at;
    temp_s1_2 = temp_s1->unk0;
    if (temp_at->unk654 != 0) {
        if (temp_s1_2->unk70100 & 0x40) {
            do {

            } while (temp_s1_2->unk70100 & 0x40);
        }
        if (temp_s1_2->unk70104 & 1) {
            do {

            } while (temp_s1_2->unk70104 & 1);
        }
    }
    temp_s3 = temp_s1_2->unk50008 & temp_s1_2->unk50018 & 0x7FFFFF;
    temp_a2 = 0x10000 & temp_s3;
    if (temp_a2 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s1_2->unk5001C = 0x10000;
        vsema(arg2 + 0x7A0, 0x10000, temp_a2);
    } else {
        temp_a2_2 = 0x80000 & temp_s3;
        if (temp_a2_2 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s1_2->unk5000C = 0x80000;
            temp_s1_2->unk5001C = 0x80000;
            vsema(arg2 + 0x630, 0x80000, temp_a2_2);
        } else {
            temp_a2_3 = temp_s3 & 0x40;
            if (temp_a2_3 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s1_2->unk5000C = 0x40;
                temp_s1_2->unk5001C = 0x40;
                vsema(arg2 + 0x640, 0x80000, temp_a2_3, 0x40);
            } else if (temp_s3 & 0xE200) {
                if ((temp_s1_2->unk70004 & 0x7F) == 0x7F) {
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x898, (u32) (temp_s1_2->unk70004 & 0x1FC00000) >> 0x16, 0x1FC00000);
                    var_ra = arg8;
                }
                if (temp_s3 & 0x200) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg8 = var_ra;
                    temp_s1_2->unk5001C = 0x200;
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x8B8);
                    var_ra = arg8;
                }
                temp_a2_4 = temp_s3 & 0x2000;
                if (temp_a2_4 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg8 = var_ra;
                    temp_s1_2->unk5001C = 0x2000;
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x8D0, temp_a2_4, 0x2000);
                    var_ra = arg8;
                }
                temp_a2_5 = temp_s3 & 0x4000;
                if (temp_a2_5 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg8 = var_ra;
                    temp_s1_2->unk5001C = 0x4000;
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x8F0, temp_a2_5, 0x4000);
                    var_ra = arg8;
                }
                temp_a2_6 = temp_s3 & 0x8000;
                arg8 = var_ra;
                if (temp_a2_6 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s1_2->unk5001C = 0x8000;
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x918, temp_a2_6, 0x8000);
                }
                mgras_error((void *) arg2, temp_s1_2);
            } else {
                temp_a2_7 = temp_s3 & 0x400;
                if (temp_a2_7 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s1_2->unk5001C = 0x400;
                    temp_s1_2->unk5000C = 0x401;
                    MgrasSchedSwapBufFinish(arg2, 0x80000, temp_a2_7, 0x401);
                } else if (saved_reg_gp->unk-77E8 != 0) {
                    cmn_err(5, saved_reg_gp->unk-77F0 + 0x940, temp_s1_2 + 0x50008, temp_s3);
                }
            }
        }
    }
}

s32 irix5_to_mgras_dma_util_single_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0x1CU) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x1C);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x1C;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk4 = (s32) temp_a2->unk4;
        arg1->unk8 = (s64) temp_a2->unk8;
        arg1->unk10 = (s32) temp_a2->unkC;
        arg1->unk14 = (s32) temp_a2->unk10;
        arg1->unk18 = (s64) temp_a2->unk14;
        arg1->unk20 = (s32) temp_a2->unk18;
    }
    return 0;
}

s32 irix5_to_mgras_dma_util_multi_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0x20U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x20);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x20;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk4 = (s32) temp_a2->unk4;
        arg1->unk8 = (s32) temp_a2->unk8;
        arg1->unk10 = (s64) temp_a2->unkC;
        arg1->unk18 = (s32) temp_a2->unk10;
        arg1->unk1C = (s32) temp_a2->unk14;
        arg1->unk20 = (s32) temp_a2->unk18;
        arg1->unk28 = (s64) temp_a2->unk1C;
    }
    return 0;
}

s32 irix5_to_mgras_dma_edit_replace_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0x18U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x18);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x18;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk4 = (s32) temp_a2->unk4;
        arg1->unk8 = (s32) temp_a2->unk8;
        arg1->unk10 = (s64) temp_a2->unkC;
        arg1->unk18 = (s32) temp_a2->unk10;
        arg1->unk20 = (s64) temp_a2->unk14;
    }
    return 0;
}

s32 irix5_to_mgras_dma_edit_release_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0x10U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x10);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x10;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk4 = (s32) temp_a2->unk4;
        arg1->unk8 = (s32) temp_a2->unk8;
        arg1->unk10 = (s64) temp_a2->unkC;
    }
    return 0;
}

s32 irix5_to_mgras_dma_edit_append_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0x1CU) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x1C);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x1C;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk4 = (s32) temp_a2->unk4;
        arg1->unk8 = (s32) temp_a2->unk8;
        arg1->unk10 = (s64) temp_a2->unkC;
        arg1->unk18 = (s32) temp_a2->unk10;
        arg1->unk1C = (s32) temp_a2->unk14;
        arg1->unk20 = (s64) temp_a2->unk18;
    }
    return 0;
}

s32 irix5_to_mgras_set_shadow_rgn_args_xlate(s32 arg0, s64 *arg1, void *arg3, s64 arg2) {
    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 4U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(4);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 4;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *arg1 = (s64) *arg3->unk10;
    }
    return 0;
}

s32 irix5_to_mgras_set_tgv_rgn_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 8U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(8);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 8;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s64) temp_a2->unk0;
        arg1->unk8 = (s32) temp_a2->unk4;
    }
    return 0;
}

s32 irix5_to_mgras_eram_resource_arg_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0xCU) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0xC);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0xC;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk4 = (s32) temp_a2->unk4;
        arg1->unk8 = (s64) temp_a2->unk8;
    }
    return 0;
}

s32 irix5_to_mgras_eram_resource_arg_xlateout(void *arg0, void *arg2, s64 arg4) {
    s64 temp_v0;
    s64 var_a0;

    if ((u32) arg2->unk0 >= 0xCU) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a0 = arg2->unk8;
        arg2->unk10 = var_a0;
    } else {
        temp_v0 = kern_malloc(0xC);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg2->unk10 = temp_v0;
        var_a0 = temp_v0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg2->unk4 = 0xC;
    var_a0->unk0 = (s32) arg0->unk0;
    var_a0->unk4 = (s32) arg0->unk4;
    var_a0->unk8 = (s32) arg0->unk8;
    return 0;
}

s32 irix5_to_mgras_fpi2c_cmd_arg_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0xCU) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0xC);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0xC;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk10 = (s32) temp_a2->unk8;
        arg1->unk8 = (s64) temp_a2->unk4;
    }
    return 0;
}

s32 irix5_to_mgras_fpi2c_cmd_arg_xlateout(void *arg0, void *arg2, s64 arg4) {
    s64 temp_v0;
    s64 var_a0;

    if ((u32) arg2->unk0 >= 0xCU) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a0 = arg2->unk8;
        arg2->unk10 = var_a0;
    } else {
        temp_v0 = kern_malloc(0xC);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg2->unk10 = temp_v0;
        var_a0 = temp_v0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg2->unk4 = 0xC;
    var_a0->unk0 = (s32) arg0->unk0;
    var_a0->unk8 = (s32) arg0->unk10;
    var_a0->unk4 = (s32) arg0->unk8;
    return 0;
}

s32 irix5_to_mgras_load_timing_table_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s32 temp_at;
    s64 temp_a3;
    s64 var_v0;

    if (arg0 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a3 = arg3->unk10;
        arg1->unk0 = (s32) temp_a3->unk0;
        arg1->unk4 = (s32) temp_a3->unk4;
        arg1->unk8 = (s32) temp_a3->unk8;
        arg1->unkC = (s32) temp_a3->unkC;
        arg1->unk10 = (s32) temp_a3->unk10;
        arg1->unk18 = (s64) temp_a3->unk14;
        arg1->unk20 = (s32) temp_a3->unk18;
        arg1->unk28 = (s64) temp_a3->unk1C;
        arg1->unk30 = (s32) temp_a3->unk20;
        arg1->unk38 = (s64) temp_a3->unk24;
        arg1->unk40 = (s32) temp_a3->unk28;
        arg1->unk44 = (s32) temp_a3->unk2C;
        arg1->unk48 = (s32) temp_a3->unk30;
        arg1->unk4C = (s32) temp_a3->unk34;
        arg1->unk50 = (s32) temp_a3->unk38;
        arg1->unk54 = (s32) temp_a3->unk3C;
        arg1->unk58 = (s32) temp_a3->unk40;
        arg1->unk5C = (s32) temp_a3->unk44;
        arg1->unk60 = (s32) temp_a3->unk48;
        arg1->unk64 = (s32) temp_a3->unk4C;
        arg1->unk68 = (s32) temp_a3->unk50;
        var_v0 = 0;
        arg1->unk6C = (s32) temp_a3->unk54;
        do {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_at = var_v0 * 4;
            var_v0 += 1;
            (temp_at + arg1)->unk70 = (s32) (temp_at + temp_a3)->unk58;
        } while (var_v0 < 6);
    } else {
        if ((u32) arg3->unk0 >= 0x70U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x70);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x70;
    }
    return 0;
}

s32 irix5_to_mgras_load_video_format_combination_args_xlate(s32 arg0, void *arg1, void *arg3, s64 arg4, s64 arg6, s64 arg8) {
    s32 temp_a0;
    s32 temp_a0_2;
    s64 temp_s3;
    s64 var_s1;
    s64 var_s1_2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0xF714U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0xF714);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0xF714;
    } else {
        temp_s3 = arg3->unk10;
        bcopy((void *) temp_s3, arg1, 0xF68CU);
        var_s1 = 0;
        do {
            temp_a0 = var_s1 * 0x28;
            var_s1 += 1;
            bcopy(temp_a0 + temp_s3 + 0xF68C, temp_a0 + arg1 + 0xF68C, 0x28U);
        } while (var_s1 < 2);
        var_s1_2 = 0;
        do {
            temp_a0_2 = var_s1_2 * 4;
            var_s1_2 += 1;
            bcopy(temp_a0_2 + temp_s3 + 0xF6DC, temp_a0_2 + arg1 + 0xF6DC, 4U);
        } while (var_s1_2 < 2);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg1->unkF6E8 = (s32) temp_s3->unkF6E4;
        arg1->unkF6EC = (s32) temp_s3->unkF6E8;
        arg1->unkF6F0 = (s32) temp_s3->unkF6EC;
        arg1->unkF6F8 = (s64) temp_s3->unkF6F0;
        arg1->unkF700 = (s32) temp_s3->unkF6F4;
        arg1->unkF704 = (s32) temp_s3->unkF6F8;
        arg1->unkF708 = (s64) temp_s3->unkF6FC;
        arg1->unkF710 = (s32) temp_s3->unkF700;
        arg1->unkF714 = (s32) temp_s3->unkF704;
        arg1->unkF718 = (s32) temp_s3->unkF708;
        arg1->unkF71C = (s32) temp_s3->unkF70C;
        arg1->unkF720 = (s32) temp_s3->unkF710;
    }
    return 0;
}
/* Warning: struct mgras_rnode_s is not defined (only forward-declared) */
