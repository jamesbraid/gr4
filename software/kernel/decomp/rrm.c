? GfxIntrMessage(void *, s64);                      /* extern */
? GfxListReaderLock(s64);                           /* extern */
? GfxListReaderUnlock(s64);                         /* extern */
s64 *GfxListWriterLock(s64);                        /* extern */
? GfxListWriterUnlock(s64, s64 *);                  /* extern */
? GfxMessage(s64 *, s32, s8, s32);                  /* extern */
s32 copyin(s64, s64, u32);                          /* extern */
s32 copyin_xlate(s64, void *, u32, s64);            /* extern */
s32 copyout(s64, s64, u32);                         /* extern */
s32 cpsema(void *);                                 /* extern */
s32 curproc(s64);                                   /* extern */
? curproc_abi(?);                                   /* extern */
s32 curthreadhandle(s32);                           /* extern */
? ddv_lock(s64);                                    /* extern */
? ddv_unlock(s64);                                  /* extern */
? force_resched();                                  /* extern */
void *gthread_find(s32);                            /* extern */
? hold_nonfatalsig(void *, s64, s64);               /* extern */
? init_sema(s32, ?, void *, ?);                     /* extern */
? init_sv(s64, ?, void *, ?);                       /* extern */
s64 kern_malloc(?);                                 /* extern */
s32 proc_pid(s32);                                  /* extern */
s32 psema(s64, ?, s64);                             /* extern */
? psignal(s32, ?);                                  /* extern */
? release_nonfatalsig(void *);                      /* extern */
? spinlock_destroy(s64);                            /* extern */
? spinlock_init(s64, void *);                       /* extern */
? streams_timeout(void *, s64, ?, s64 *);           /* extern */
? sv_broadcast(void *);                             /* extern */
? sv_destroy(s64);                                  /* extern */
? sv_signal(void *, s32, u32, void *);              /* extern */
? sv_wait(void *, ?, void *, s32);                  /* extern */
s32 sv_wait_sig(void *, ?, void *, s64);            /* extern */
s32 valusema(s32);                                  /* extern */
? vsema(s64, s16, void *, void *);                  /* extern */
s32 RRM_CheckValidFault(s64 arg0);                  /* static */
s32 rrmCloseRN(s64 *arg0, s64 arg1, s64 arg3, s64 arg6); /* static */
void rrmSwapUnGroup(s64 arg0, void *arg1);          /* static */
s32 rrmWaitVideoSync(void *arg0, s32 arg1, s32 arg2, s32 arg3, s64 arg6, s64 arg8, s64 arg10, s64 arg12); /* static */

void pane_gc(void) {
    s16 var_a5;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_a1;
    s32 var_a2;

    temp_a4 = saved_reg_gp->unk-7800;
    temp_a3 = saved_reg_gp->unk-77F8;
    var_a5 = 0;
    var_a1 = temp_a3;
    if (temp_a3 < temp_a4) {
loop_3:
        if ((((((((s64) var_a1 * 4) - var_a1) * 8) - var_a1) * 8) + (s64) saved_reg_gp->unk-7800)->unk10 == 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a5 += 1;
            ((var_a5 * 2) + (s64) saved_reg_gp->unk-77F8)->unk-2 = (s16) var_a1;
            if (var_a5 != 8) {
                goto block_2;
            }
        } else {
block_2:
            var_a1 += 1;
            if (var_a1 < temp_a4) {
                goto loop_3;
            }
            goto block_7;
        }
    } else {
block_7:
        var_a1 = 0;
        if (temp_a3 > 0) {
loop_10:
            if (((((((((s64) var_a1 * 4) - var_a1) * 8) - var_a1) * 8) + (s64) saved_reg_gp->unk-7800)->unk10 != 0) || (M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */), var_a5 += 1, ((var_a5 * 2) + (s64) saved_reg_gp->unk-77F8)->unk-2 = (s16) var_a1, (var_a5 != 8))) {
                var_a1 += 1;
                if (var_a1 < temp_a3) {
                    goto loop_10;
                }
            }
        }
    }
    var_a2 = 0;
    if (var_a1 < (temp_a4 - 2)) {
        var_a2 = var_a1 + 1;
    }
    saved_reg_gp->unk-77FC = var_a5;
    saved_reg_gp->unk-77F8 = var_a2;
}

void *bind_pane(s64 arg0, s32 arg1, s64 arg2) {
    s16 *temp_a1_2;
    s16 temp_a1_3;
    s16 var_a5;
    s16 var_v0;
    s32 temp_a1;
    s32 var_a0;
    s32 var_s3;
    s64 temp_a3;
    s64 temp_s0;
    s64 temp_s1;
    s64 var_s2_2;
    s64 var_s4;
    void *var_s2;

    var_s2_2 = saved_reg_s2;
    arg2 = arg0;
    temp_s0 = saved_reg_gp->unk-77F8;
    temp_s1 = temp_s0 + 0x10;
    psema(temp_s1, 0x19);
    temp_a1 = saved_reg_gp->unk-7800;
    var_a5 = saved_reg_gp->unk-77FC;
    var_s4 = 0;
    if (temp_a1 > 0) {
loop_2:
        var_s2 = (var_s4 * 0xB8) + (s64) saved_reg_gp->unk-7800;
        var_a0 = 0;
        if ((var_s2->unk4 == arg1) && (arg2->unk20 == var_s2->unk58)) {
            var_a0 = 1;
        }
        if (var_a0 == 0) {
            var_s4 += 1;
            if (var_s4 >= temp_a1) {
                var_s2_2 = arg0;
                goto block_18;
            }
            goto loop_2;
        }
    } else {
block_18:
        if (saved_reg_gp->unk-77FC == 0) {
            pane_gc();
            arg0 = var_s2_2;
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a5 = (s16) ((s64) ((saved_reg_gp->unk-77FC - 1) << 0x30) >> 0x30);
        var_s4 = (s64) *((var_a5 * 2) + temp_s0);
        arg0 = var_s2_2;
        var_s2 = (var_s4 * 0xB8) + (s64) saved_reg_gp->unk-7800;
        var_s2->unk2 = (s16) var_s4;
        var_s2->unk0 = (s16) (var_s2->unk0 + 1);
        saved_reg_gp->unk-77FC = var_a5;
        var_s2->unk12 = 0;
        var_s2->unkC = 0;
        var_s2->unk8 = 1;
        var_s2->unk4 = arg1;
        var_s2->unk58 = (s64) arg2->unk20;
    }
    var_s3 = 0;
    if (var_a5 > 0) {
loop_12:
        temp_a1_2 = (var_s3 * 2) + temp_s0;
        if (*temp_a1_2 == var_s4) {
            temp_a3 = (s64) ((var_a5 - 1) << 0x30) >> 0x30;
            saved_reg_gp->unk-77FC = (s16) temp_a3;
            bcopy(temp_a1_2 + 2, temp_a1_2, (temp_a3 - var_s3) * 2);
            var_a5 = saved_reg_gp->unk-77FC;
        }
        var_s3 += 1;
        if (var_s3 < var_a5) {
            goto loop_12;
        }
    }
    temp_a1_3 = var_s2->unk10;
    var_v0 = var_s2->unkC;
    if (temp_a1_3 == 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_v0 = (s16) ((s64) ((var_v0 | 4) << 0x30) >> 0x30);
        var_s2->unkC = var_v0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_s2->unk10 = (s16) (temp_a1_3 + 1);
    var_s2->unkC = (s16) (var_v0 | 0x80);
    vsema(temp_s1, temp_a1_3);
    return var_s2;
}

void unbind_pane(void *arg0, s64 arg4) {
    s16 temp_a1;
    s64 temp_a0;

    temp_a0 = saved_reg_gp->unk-77F8 + 0x10;
    arg4 = temp_a0;
    psema(temp_a0, 0x19);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a1 = arg0->unk10 - 1;
    arg0->unk10 = temp_a1;
    vsema(arg4, temp_a1);
}

void *clip2pane(s32 arg0, s64 *arg1) {
    s32 temp_a4;
    s32 temp_v1;
    s64 var_v0;
    void *temp_a1;

    temp_a4 = saved_reg_gp->unk-7800;
    var_v0 = 0;
    if (temp_a4 > 0) {
loop_3:
        temp_a1 = (var_v0 * 0xB8) + (s64) saved_reg_gp->unk-7800;
        temp_v1 = temp_a1->unk4;
        var_v0 += 1;
        if ((temp_v1 == arg0) && (temp_a1->unk58 == arg1->unk20)) {
            return temp_a1;
        }
        if (var_v0 < temp_a4) {
            goto loop_3;
        }
        goto block_6;
    }
block_6:
    return NULL;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24], gap at: 0x10. */
void pane_cleanup(s64 arg1) {
    s32 temp_v0_2;
    s64 temp_a0;
    void *temp_v0;

    unksp10 = arg1;
    temp_v0 = clip2pane();
    if (temp_v0 != NULL) {
        temp_a0 = saved_reg_gp->unk-77F8 + 0x10;
        unksp8 = temp_a0;
        psema(temp_a0, 0x19);
        temp_v0_2 = splhi();
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v0->unk4 = 0;
        temp_v0->unkC = (s16) (temp_v0->unkC & ~0x4A);
        if (temp_v0->unkE != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            unksp18 = (s64) temp_v0_2;
            temp_v0->unk38 = 0;
            temp_v0->unkE = 0;
            vsema((s64) (temp_v0 + 0x28));
            sv_signal(temp_v0 + 0x40);
        }
        splx(temp_v0_2);
        if (temp_v0->unkA0 != 0) {
            rrmSwapUnGroup(unksp10, temp_v0);
        }
        vsema(unksp8);
    }
}

void pane_setnullclip(void *arg0, void *arg1) {
    ((? (*)(s32)) arg1->unk18->unk58)(arg0 + 0x60);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk8 = (s32) (arg0->unk8 + 1);
    arg0->unkC = (s16) (arg0->unkC | 0xCA);
}

s16 pane_validmask(void *arg0) {
    return arg0->unkC;
}

s16 invalidate_pane(s32 arg0, s32 arg1, s64 *arg2) {
    s16 var_s5;
    s32 temp_a0;
    s32 var_s1;
    void *temp_s7;

    var_s1 = arg0;
    temp_s7 = clip2pane(arg1, arg2);
    var_s5 = 0;
    if (var_s1 & 2) {
        var_s1 |= 0x40;
    }
    if (temp_s7 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_s5 = temp_s7->unkC;
        temp_a0 = splhi();
        temp_s7->unkC = (s16) (~var_s1 & var_s5);
        splx(temp_a0);
    }
    return var_s5;
}

s32 invalidate_pane_buffer(s32 arg0, s32 arg1, s64 *arg2) {
    s32 temp_a0;
    s32 var_s5;
    void *temp_s7;

    var_s5 = arg0;
    temp_s7 = clip2pane(arg1, arg2);
    if (var_s5 & 2) {
        var_s5 |= 0x40;
    }
    if (temp_s7 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0 = splhi();
        temp_s7->unkC = (s16) (temp_s7->unkC & ~var_s5);
        splx(temp_a0);
    }
    return 0;
}

void *validate_pane_clip(void *arg2, s64 arg0, s64 arg8) {
    s16 temp_a0_3;
    s16 temp_v0_2;
    s32 temp_a0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_v0_2;
    s64 *temp_a4;
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a1_2;
    u32 var_s2;
    void *temp_a2;
    void *temp_v0;
    void *var_v0;

    temp_v0 = clip2pane();
    if (temp_v0 != NULL) {
        if (temp_v0->unk80 == 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0->unk80 = kern_malloc(0xE0);
        }
        temp_a0 = arg2->unk20;
        if (temp_a0 != 0) {
            var_s2 = arg2->unk18 * 0x10;
            if (var_s2 >= 0xE1U) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg2->unk18 = 0xE;
                var_s2 = 0xE0;
            }
            if (copyin(temp_a0, temp_v0->unk80, var_s2) != 0) {
                cmn_err(4, saved_reg_gp->unk-77F0 + 0x230, temp_v0, var_s2);
                var_v0 = (void *)0xE;
            } else {
                goto block_8;
            }
        } else {
block_8:
            temp_a2 = temp_v0 + 0x60;
            arg0 = splhi();
            temp_a0_2 = arg2->unk38;
            var_v0_2 = 8;
            if (temp_v0->unkC & 8) {
                if (temp_v0->unk12 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a0 = temp_a0_2 | 4;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a0 = temp_a0_2 & ~4;
                }
                arg2->unk38 = var_a0;
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0->unk20 = var_a0;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0->unk20 = temp_a0_2;
                temp_v0->unk12 = (s16) ((arg2->unk38 & 4) == 4);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a0_2 = 0;
            arg2->unk20 = (s64) temp_v0->unk80;
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_v0_2 -= 1;
                temp_a4 = var_a0_2 + temp_a2;
                temp_a1 = *(var_a0_2 + arg2);
                var_a0_2 += 8;
                *temp_a4 = temp_a1;
            } while (var_v0_2 > 0);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0_2 = temp_v0->unkC;
            temp_v0->unk8 = (s32) (temp_v0->unk8 + 1);
            if (temp_v0_2 & 2) {
                splx((s32) arg0);
                var_v0 = NULL;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a0_3 = temp_v0->unkE;
                temp_v0->unkC = (s16) (temp_v0_2 | 0x42);
                if (temp_a0_3 & 2) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a1_2 = (s64) ((temp_a0_3 & ~2) << 0x30) >> 0x30;
                    temp_v0->unkE = (s16) temp_a1_2;
                    if (temp_a1_2 == 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_v0->unk38 = 0;
                        vsema((s64) (temp_v0 + 0x28), (s16) temp_a1_2, temp_a2, arg2);
                    }
                    sv_signal(temp_v0 + 0x40);
                }
                splx((s32) arg0);
                goto block_20;
            }
        }
    } else {
block_20:
        var_v0 = NULL;
    }
    return var_v0;
}

s32 validate_pane_swapbuf(s64 arg2, s64 arg0) {
    s16 temp_a0;
    s64 temp_a1;
    void *temp_v0;

    unksp10 = arg2;
    temp_v0 = clip2pane();
    if (temp_v0 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0 = temp_v0->unkE;
        arg0 = splhi();
        temp_v0->unk14 = (s32) unksp10;
        temp_v0->unkC = (s16) (temp_v0->unkC | 8);
        temp_a1 = (s64) ((temp_a0 & ~8) << 0x30) >> 0x30;
        if (temp_a0 & 8) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0->unkE = (s16) temp_a1;
            if (temp_a1 == 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0->unk38 = 0;
                vsema((s64) (temp_v0 + 0x28), (s16) temp_a1);
            }
            sv_signal(temp_v0 + 0x40);
        }
        splx((s32) arg0);
    }
    return 0;
}

void validate_pane_buffer(void *arg0, s64 arg4) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg4 = splhi();
    arg0->unkC = (s16) (arg0->unkC | 4);
    sv_broadcast(arg0 + 0x48);
    splx((s32) arg4);
}

s32 validate_my_pane_buffer(void *arg0, s64 arg2) {
    s32 temp_v0;
    s32 var_v0;

    temp_v0 = splhi();
    if ((arg0->unkC ^ arg2) & arg2 & 4) {
        unksp18 = (s64) temp_v0;
        hold_nonfatalsig(sp);
        if (sv_wait_sig(arg0 + 0x48, 0x21E, arg0 + 0x50, unksp18) >= 0) {
            release_nonfatalsig(sp);
            var_v0 = 0;
        } else {
            release_nonfatalsig(sp);
            var_v0 = -1;
        }
    } else {
        splx(temp_v0);
        var_v0 = 0;
    }
    return var_v0;
}

s32 validate_my_pane_resources(void *arg0, s64 arg1, s64 arg2, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg30, s64 arg32) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_v0;
    s64 temp_a4;
    s64 temp_s2;
    s64 temp_v1;
    s64 temp_v1_2;
    s8 temp_v0_3;
    void *temp_a0;

    var_v0 = 0;
    temp_s2 = arg2;
    if (arg2 & 0x8E) {
        if (validate_my_pane_buffer(arg0, arg1, temp_s2) >= 0) {
            temp_v0 = splhi();
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a4 = (s64) ((arg0->unkC | 0x80) << 0x30) >> 0x30;
            temp_v1 = (temp_a4 ^ temp_s2) & temp_s2 & 0xA;
            var_s3 = temp_v0;
            arg0->unkC = (s16) temp_a4;
            arg22 = temp_v1;
            if (temp_v1 != 0) {
                if (arg0->unk38 != arg1) {
                    if ((arg0->unk4 == 0) && (arg1->unk0->unk8 != arg1) && (temp_s2 & 2)) {
                        arg18 = (s64) temp_v0;
                        if (arg1->unk30 & 8) {
                            pane_setnullclip(arg0, (void *) arg1);
                            splx((s32) arg18);
                            var_v0 = 0;
                        } else {
                            cmn_err(4, saved_reg_gp->unk-77F0 + 0x260, proc_pid(curproc()));
                            psignal(curproc(), 9);
                            splx(var_s3);
                            var_v0 = -1;
                        }
                    } else {
                        temp_a0 = arg0 + 0x28;
                        arg20 = (s64) temp_a0;
                        if (cpsema(temp_a0) != 0) {
                            goto block_10;
                        }
                        splx(var_s3);
                        hold_nonfatalsig(sp);
                        if (psema(arg20, 0x31E) >= 0) {
                            release_nonfatalsig(sp);
                            temp_v0_2 = splhi();
                            temp_v1_2 = (arg0->unkC ^ temp_s2) & temp_s2 & 0xA;
                            var_s3 = temp_v0_2;
                            arg22 = temp_v1_2;
                            if (temp_v1_2 != 0) {
                                if ((arg0->unk4 == 0) && (arg1->unk0->unk8 != arg1) && (arg18 = (s64) temp_v0_2, ((temp_s2 & 2) != 0))) {
                                    vsema(arg20);
                                    if (arg1->unk30 & 8) {
                                        pane_setnullclip(arg0, (void *) arg1);
                                        splx((s32) arg18);
                                        var_v0 = 0;
                                    } else {
                                        cmn_err(4, saved_reg_gp->unk-77F0 + 0x2A8, proc_pid(curproc()));
                                        psignal(curproc(), 9);
                                        splx(var_s3);
                                        var_v0 = -1;
                                    }
                                } else {
block_10:
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    arg0->unk38 = arg1;
                                    arg0->unkE = (s16) arg22;
                                    splx(var_s3);
                                    if (arg1->unk0->unk8 != 0) {
                                        temp_v0_3 = !(arg22 & 8) ? 0 : 2;
                                        arg4 = temp_v0_3;
                                        if (arg22 & 2) {
                                            arg4 = temp_v0_3 | 1;
                                        }
                                        arg5 = 1;
                                        arg2 = arg1->unk0;
                                        arg6 = arg0->unk4;
                                        GfxMessage(&arg2);
                                        var_s3_2 = splhi();
                                        if ((arg0->unkE & 0xA) && (arg0->unk38 == arg1)) {
                                            arg16 = temp_s2 & 2;
loop_16:
                                            if ((arg0->unk4 == 0) && (arg1->unk0->unk8 != arg1) && (arg16 != 0)) {
                                                if (arg1->unk30 & 8) {
                                                    pane_setnullclip(arg0, (void *) arg1);
                                                    splx(var_s3_2);
                                                    var_v0 = 0;
                                                } else {
                                                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x2F0, proc_pid(curproc()));
                                                    psignal(curproc(), 9);
                                                    splx(var_s3_2);
                                                    var_v0 = -1;
                                                }
                                            } else {
                                                hold_nonfatalsig(sp);
                                                if (sv_wait_sig(arg0 + 0x40, 0x21E, arg0 + 0x50, (s64) var_s3_2) >= 0) {
                                                    release_nonfatalsig(sp);
                                                    var_s3_2 = splhi();
                                                    if (!(arg0->unkE & 0xA) || (arg0->unk38 != arg1)) {
                                                        goto block_25;
                                                    }
                                                    goto loop_16;
                                                }
                                                release_nonfatalsig(sp);
                                                var_v0 = -1;
                                            }
                                        } else {
block_25:
                                            splx(var_s3_2);
                                            var_v0 = 0;
                                        }
                                    } else {
                                        var_v0 = -2;
                                    }
                                }
                            } else {
                                arg18 = (s64) temp_v0_2;
                                vsema(arg20);
                                splx((s32) arg18);
                                var_v0 = 0;
                            }
                        } else {
                            release_nonfatalsig(sp);
                            var_v0 = -1;
                        }
                    }
                } else {
                    splx(temp_v0);
                    var_v0 = -1;
                }
            } else {
                splx(temp_v0);
                var_v0 = 0;
            }
        } else {
            var_v0 = -1;
        }
    }
    return var_v0;
}

void init_panes(s64 arg6, s64 arg8) {
    s32 temp_s0;
    s32 temp_s0_2;
    s64 temp_s5;
    s64 temp_s7;
    s64 var_s1;

    temp_s7 = saved_reg_gp->unk-77F0;
    init_sema(saved_reg_gp->unk-77F8 + 0x10, 1, temp_s7 + 0x338, -1);
    var_s1 = 0;
    if (saved_reg_gp->unk-7800 > 0) {
        temp_s5 = (s64) saved_reg_gp->unk-7800;
        do {
            temp_s0 = var_s1 * 0xB8;
            var_s1 += 1;
            temp_s0_2 = temp_s0 + temp_s5;
            init_sema(temp_s0_2 + 0x28, 1, saved_reg_gp - 0x77E8, -1);
            init_sv(temp_s0_2 + 0x40, 0, saved_reg_gp - 0x77E0, -1);
            init_sv(temp_s0_2 + 0x48, 0, temp_s7 + 0x348, -1);
            spinlock_init(temp_s0_2 + 0x50, saved_reg_gp - 0x77D8);
        } while (var_s1 < saved_reg_gp->unk-7800);
    }
}

void RRM_init_panes(void *arg0, s64 arg4, s64 arg6, s64 arg8) {
    s64 temp_a2;
    s64 temp_s5;
    s64 var_s0;
    void *temp_s1;

    var_s0 = 0;
    if (saved_reg_gp->unk-7800 > 0) {
        temp_s5 = (s64) saved_reg_gp->unk-7800;
loop_5:
        temp_s1 = (var_s0 * 0xB8) + temp_s5;
        temp_a2 = temp_s1->unk58;
        var_s0 += 1;
        if (arg0->unk20 == temp_a2) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s1->unkC = 0;
            if (temp_s1->unkE != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s1->unk38 = 0;
                temp_s1->unkE = 0;
                vsema((s64) (temp_s1 + 0x28), (s16) saved_reg_gp->unk-7800, (void *) temp_a2);
            }
            if (temp_s1->unkA0 != 0) {
                rrmSwapUnGroup((s64) arg0, temp_s1);
            }
        }
        if (var_s0 < saved_reg_gp->unk-7800) {
            goto loop_5;
        }
    }
}

void RRM_init(void) {
    s32 temp_a0;
    s64 temp_s1;
    s64 temp_s5;
    s64 temp_s7;
    s64 var_s0;
    void *temp_v0;

    var_s0 = 1;
    if (saved_reg_gp->unk0 >= 2) {
        temp_s7 = saved_reg_gp->unk-77F0;
        temp_s5 = saved_reg_gp->unk-77C8;
        temp_s1 = saved_reg_gp->unk-77D0;
        do {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a0 = (var_s0 * 0x10) + temp_s5;
            temp_v0 = (var_s0 * 0xB0) + temp_s1;
            var_s0 += 1;
            temp_v0->unk52 = 1;
            init_sema(temp_a0, 1, temp_s7 + 0x358, -1);
        } while (var_s0 < saved_reg_gp->unk0);
    }
    saved_reg_gp->unk-7800 = saved_reg_gp->unk0;
    init_panes();
}

void RRM_Init(s32 arg0) {
    spinlock_init(arg0 + 0x30, saved_reg_gp->unk-77F0 + 0x368);
    init_sema(arg0 + 0x38, 1, saved_reg_gp - 0x77C0, -1);
}

void rrmDoUnMapGfx(s64 *arg0, s64 arg2) {
    s32 temp_a2;

    temp_a2 = arg0->unk30;
    if (!(temp_a2 & 0x10)) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        ((s64) arg0)->unk30 = (s32) (temp_a2 | 0x10);
        ((? (*)(s64, s32)) ((s64) arg0)->unk18->unk68)((s64) arg0, temp_a2);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        ((s64) arg0)->unk30 = (s32) (((s64) arg0)->unk30 & ~0x10);
    }
}

void rrmUnMapGfx(s64 *arg0, s64 arg2, s64 arg4) {
    void *temp_v0;

    if ((arg0->unk60 != 0) && !(arg0->unk30 & 8)) {
        temp_v0 = gthread_find(curthreadhandle());
        if ((temp_v0 != NULL) && (temp_v0->unk10 != 0)) {
            arg2 = splhi();
            rrmDoUnMapGfx(arg0);
            splx((s32) arg2);
        }
    } else {
        rrmDoUnMapGfx(arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
s64 rrmInvalidateRN(s64 *arg0, void *arg1, s64 arg2) {
    s32 temp_v0_2;
    s64 temp_v0;
    u16 temp_t0;

    temp_v0 = arg0->unk20;
    unksp18 = arg2;
    if (temp_v0->unk48 != arg0) {
        psema(temp_v0 + 0x38, 0x219);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk20->unk48 = (s64) arg0;
        if (arg0->unk20->unk68 != 0) {
            do {
                us_delay(2);
            } while (arg0->unk20->unk68 != 0);
        }
    }
    temp_v0_2 = splhi();
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_t0 = arg1->unk6;
    arg1->unk6 = (u16) (~unksp18 & temp_t0);
    unksp10 = ((temp_t0 & unksp18) == unksp18) ? 0 : -2;
    splx(temp_v0_2);
    return unksp10;
}

s32 RRM_InvalidateRN(s64 arg0, void *arg2, s64 arg3, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12) {
    s32 temp_a2;
    s32 temp_a7;
    s32 temp_v0_2;
    s32 var_v0;
    s64 temp_a1;
    s64 temp_a2_2;
    s64 temp_v1;
    void *temp_v0;
    void *var_a0;

    temp_a7 = arg2->unk8;
    if ((0xFF | temp_a7) != 0xFF) {
        goto block_1;
    }
    arg6 = arg0;
    arg0 = (s64) arg2;
    arg8 = arg3;
    var_v0 = 0x16;
    if (temp_a7 & ~0xCA) {

    } else {
        arg10 = invalidate_pane(temp_a7, arg0->unk4, (s64 *) arg6);
        if (arg0->unk8 & 8) {
            temp_v0 = clip2pane(arg0->unk4, (s64 *) arg6);
            var_a0 = temp_v0;
            if (temp_v0 != NULL) {
                temp_a1 = arg6->unk48;
                if (temp_a1 != 0) {
                    temp_a2 = var_a0->unk14;
                    if ((temp_a2 & 0xFF) != 0xFF) {
                        arg2 = (s64) var_a0;
                        temp_v0_2 = ((s32 (*)(s64, s64, s32)) arg6->unk18->unk90)(arg6, temp_a1, temp_a2);
                        var_a0 = (void *) (s64) arg2;
                        if (temp_v0_2 >= 0) {
                            if (temp_v0_2 > 0) {
                                if (temp_v0_2 == 2) {
                                    temp_v1 = arg6->unk48;
                                    arg4 = temp_v1;
                                    if (temp_v1 == 0) {
                                        var_v0 = 0xE;
                                    } else {
                                        var_a0 = (void *) (s64) arg2;
                                        if (rrmInvalidateRN((s64 *) arg6, (void *) arg4, 0x10) == 0) {
                                            temp_a2_2 = arg6->unk18->unk98;
                                            ((? (*)(s64, s64, s64)) temp_a2_2)(arg6->unk20, arg4, temp_a2_2);
                                            rrmUnMapGfx((s64 *) arg6);
                                            goto block_15;
                                        }
                                        goto block_16;
                                    }
                                } else {
                                    validate_pane_buffer((void *) (s64) arg2, arg6);
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    arg0->unk10 = 1;
block_15:
                                    var_a0 = (void *) (s64) arg2;
                                    goto block_16;
                                }
                            } else {
                                goto block_16;
                            }
                        } else {
                            var_v0 = -temp_v0_2;
                        }
                    } else {
block_16:
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg0->unkC = (s32) var_a0->unk20;
                        goto block_17;
                    }
                } else {
                    var_v0 = 0xE;
                }
            } else {
block_1:
                var_v0 = 0x16;
            }
        } else {
block_17:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk8 = (s32) arg10;
            if (copyout(arg0, arg8, 0x14U) != 0) {
                var_v0 = 0xE;
            } else {
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

s32 rrmUnbindProcFromRN(s64 *arg0, s64 arg6) {
    s32 temp_a1;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a0_2;
    void *temp_v0;
    void *var_s1;

    var_v0 = -1;
    var_s1 = NULL;
    if (arg0->unk48 != 0) {
        if (arg0->unk60 != 0) {
            temp_a1 = arg0->unk30 & 8;
            if (temp_a1 == 0) {
                temp_v0 = gthread_find(curthreadhandle(temp_a1));
                var_s1 = temp_v0;
                if (temp_v0 != NULL) {
                    temp_a0 = temp_v0->unk10;
                    if (temp_a0 != 0) {
                        arg0 = GfxListWriterLock(temp_a0);
                    }
                }
            }
        }
        rrmDoUnMapGfx(arg0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk48 = 0;
        if (var_s1 != NULL) {
            temp_a0_2 = var_s1->unk10;
            if (temp_a0_2 != 0) {
                GfxListWriterUnlock(temp_a0_2, arg0);
            }
        }
        var_v0 = 0;
    }
    return var_v0;
}

s32 RRM_BindProcToRN(s64 *arg0, void *arg1, s64 arg2, s64 arg8) {
    s64 *temp_s1;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_s1 = arg0;
    if (arg0->unk30 & 8) {
        temp_a0 = temp_s1->unk48;
        if (temp_a0 != 0) {
            arg2 = temp_a0;
            if (arg1 != temp_a0) {
                temp_a2 = saved_reg_gp->unk-77C8;
                temp_a0_2 = ((s64) arg2->unk2 * 0x10) + temp_a2;
                arg0 = temp_a0_2;
                psema(temp_a0_2, 0x19, temp_a2);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a2_2 = arg2->unk38;
                arg2->unk54 = 0;
                if (temp_a2_2 == 0) {
                    rrmCloseRN(temp_s1, arg2, temp_a2_2);
                } else {
                    rrmUnbindProcFromRN(temp_s1, arg2, temp_a2_2);
                }
                vsema((s64) arg0);
                var_ra = arg8;
            }
        }
        arg8 = var_ra;
        if (arg1 != NULL) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg8 = var_ra;
            arg1->unk54 = 1;
            arg1->unk40 = (s64) temp_s1;
        }
    } else {
        rrmUnbindProcFromRN(temp_s1);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s1->unk48 = (s64) arg1;
    if (valusema(temp_s1->unk20 + 0x38) != 0) {
        force_resched();
    }
    return 0;
}

s64 RRM_BindRNToReadAndClip(s64 arg0, void *arg1, void *arg2, s64 arg3, s64 arg22, s64 arg24) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_v0_3;
    s32 var_a6;
    s32 var_s4;
    s64 temp_a0;
    s64 temp_s1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a0;
    s64 var_v0;
    s64 var_v0_2;
    void *temp_s2;
    void *var_a2;

    var_a2 = arg2;
    var_a6 = var_a2->unk4;
    temp_s1 = arg0;
    temp_s2 = var_a2;
    if (var_a6 != 0) {
        temp_a0 = arg1->unk78;
        unksp48 = arg3;
        if (temp_a0 != 0) {
            validate_my_pane_buffer((void *) temp_a0, temp_s1, (s64) arg1->unk4);
            unbind_pane((void *) arg1->unk78, temp_s1);
            var_a2 = (void *) arg1->unk4;
            if ((s32) var_a2 & 0x40) {
                validate_my_pane_buffer((void *) arg1->unk80, temp_s1, (s64) var_a2);
                unbind_pane((void *) arg1->unk80, temp_s1);
                var_a2 = (void *) arg1->unk4;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk4 = (u16) ((s32) var_a2 & ~8);
            var_a6 = temp_s2->unk4;
        }
        temp_v0 = bind_pane(temp_s1, var_a6, (s64) var_a2);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg1->unk78 = temp_v0;
        arg1->unk88 = 0;
        temp_a1 = temp_s2->unk8;
        var_a0 = temp_v0;
        var_v0_2 = temp_v0;
        if (temp_s2->unk4 == temp_a1) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk8C = 0;
            arg1->unk80 = temp_v0;
            arg1->unk4 = (u16) (arg1->unk4 & ~0x40);
        } else {
            var_v0_2 = bind_pane(temp_s1, temp_a1, temp_v0);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a0 = arg1->unk78;
            arg1->unk8C = 0;
            arg1->unk80 = var_v0_2;
            arg1->unk4 = (u16) (arg1->unk4 | 0x40);
        }
        if ((var_a0->unkC & 2) && (var_v0_2->unkC & 0x40)) {
            var_s4 = 1;
        } else {
            var_s4 = 0;
        }
        if (var_s4 != 0) {
            if (temp_s1->unk20->unk8 != arg1) {
                goto block_12;
            }
            if (RRM_CheckValidFault(temp_s1) >= 0) {
                if (((s32 (*)(s64, void *, s64, s32)) temp_s1->unk18->unk50)(temp_s1, arg1, temp_s1->unk20->unk8, arg1->unk78 + 0x60) != -1) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg1->unk88 = (s32) arg1->unk78->unk8;
                    arg1->unk8C = (s32) arg1->unk80->unk8;
                    goto block_12;
                }
                var_v0 = 0xE;
            } else {
                var_v0 = 0xE;
            }
        } else {
            rrmUnMapGfx((s64 *) temp_s1);
block_12:
            temp_v0_2 = temp_s1->unk0;
            if (temp_v0_2->unk8 != 0) {
                arg0 = temp_v0_2;
                arg3 = 3;
                arg2 = !(temp_s1->unk30 & 8) ? 4 : 0x84;
                temp_a1_2 = temp_s2->unk8;
                if (temp_s2->unk4 != temp_a1_2) {
                    arg4 = temp_a1_2;
                    arg5 = temp_s2->unk0;
                    arg6 = arg1->unk18;
                    if (var_s4 == 0) {
                        GfxMessage(sp, temp_a1_2);
                    }
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk18 = temp_s2->unk8;
                arg4 = temp_s2->unk4;
                arg5 = temp_s2->unk0;
                arg6 = arg1->unk14;
                if (var_s4 == 0) {
                    GfxMessage(sp, temp_s2->unk8);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg1->unk14 = (s32) temp_s2->unk4;
                if (temp_s1->unk30 & 8) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0_3 = arg1->unk78->unk0;
                    temp_s2->unkC = temp_v0_3;
                    if (temp_s2->unk4 != temp_s2->unk8) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_s2->unk10 = (s32) arg1->unk80->unk0;
                        if (unksp48 == 0) {
                            goto block_20;
                        }
                        goto block_24;
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s2->unk10 = temp_v0_3;
                    if (unksp48 != 0) {
block_24:
                        if (copyout((s64) temp_s2, unksp48, 0x14U) != 0) {
                            var_v0 = 0xE;
                        } else {
                            goto block_20;
                        }
                    } else {
                        goto block_20;
                    }
                } else {
block_20:
                    var_v0 = 0;
                }
            } else {
                var_v0 = 0xE;
            }
        }
    } else {
        var_v0 = 0x16;
    }
    return var_v0;
}

s64 RRM_BindRNToClip(void *arg0, s64 arg2, s64 arg3, s64 arg10, s64 arg12, s64 arg14) {
    s64 temp_v0;
    s64 var_a0;
    s64 var_v0;
    void *temp_a0;

    temp_a0 = arg0;
    arg10 = arg2;
    arg0 = arg2->unk0;
    arg12 = arg3;
    arg1 = arg2->unk4;
    arg2 = arg2->unk4;
    temp_v0 = RRM_BindRNToReadAndClip((s64) sp, NULL);
    var_a0 = temp_v0;
    if (!(temp_a0->unk30 & 8) || (temp_v0 != 0)) {
        goto block_2;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg14 = var_a0;
    arg10->unk8 = (s32) arg3;
    var_a0 = arg14;
    if (copyout(arg10, arg12, 0xCU) != 0) {
        var_v0 = 0xE;
    } else {
block_2:
        var_v0 = var_a0;
    }
    return var_v0;
}

s32 RRM_UnbindRNFromClip(s32 arg0, void *arg2) {
    pane_cleanup((s64) arg2->unk4, arg0);
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x40, 0x44, 0x50, 0x54], gap at: 0x18. */
s32 RRM_OpenRN(void *arg0, void *arg2) {
    s16 *temp_t8;
    s16 temp_a1;
    s32 temp_a3;
    s32 temp_v0_2;
    s32 var_v0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a2;
    s64 temp_at;
    s64 temp_v0;
    s64 var_ra;
    s64 var_s4;
    u16 var_v0_2;
    void *temp_a0;
    void *temp_s0;
    void *temp_v0_3;

    var_ra = saved_reg_ra;
    temp_a0 = arg0;
    temp_v0 = temp_a0->unk20;
    temp_at = temp_v0->unk48;
    temp_s0 = temp_a0;
    arg0 = M2C_ERROR(/* Read from unset register $a4 */);
    if (temp_at != temp_a0) {
        psema(temp_v0 + 0x38, 0x219);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk20->unk48 = (s64) temp_s0;
        var_ra = unksp50;
        if (temp_s0->unk20->unk68 != 0) {
            do {
                us_delay(2);
            } while (temp_s0->unk20->unk68 != 0);
            var_ra = unksp50;
        }
    }
loop_2:
    M2C_ERROR(/* unknown instruction: ll $a5, ($at) */);
    if (M2C_ERROR(/* unknown instruction: sc $a3, ($at) */) == 0) {
        goto loop_2;
    }
    var_v0 = 0x16;
    if (arg2->unk0 != -1) {

    } else {
        unksp50 = var_ra;
        unksp30 = temp_s0->unk20;
        temp_a0_2 = saved_reg_gp->unk-77F8 + 0x10;
        unksp28 = temp_a0_2;
        psema(temp_a0_2, 0x19);
        temp_v0_2 = saved_reg_gp->unk0;
        temp_a3 = temp_v0_2 < 2;
        var_s4 = 1;
        if (temp_a3 == 0) {
loop_16:
            if (((var_s4 * 0xB0) + saved_reg_gp->unk-77D0)->unk52 != 1) {
                var_s4 = (s64) ((var_s4 + 1) << 0x30) >> 0x30;
                if (var_s4 < temp_v0_2) {
                    goto loop_16;
                }
            }
        }
        if (var_s4 == temp_v0_2) {
            vsema(unksp28, 1, (void *) saved_reg_gp->unk-77D0, (void *) temp_a3);
            var_v0 = 0xC;
        } else {
            temp_t8 = (var_s4 * 0xB0) + (void *) saved_reg_gp->unk-77D0;
            unksp38 = (s64) temp_t8;
            unksp20 = (s64) *temp_t8;
            bzero(temp_t8, 0xB0U);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            unksp38->unk52 = 0;
            vsema(unksp28);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            unksp38->unk38 = (s64) temp_s0;
            unksp38->unk40 = (s64) temp_s0;
            unksp38->unk0 = (s32) ((unksp20 << 0x10) | var_s4);
            unksp38->unk48 = (s64) temp_s0->unk20;
            var_v0_2 = 0x34;
            unksp38->unk6 = 0x34U;
            temp_a1 = (arg2->unk4 | 0xB5) & 0xFFFF;
            unksp38->unk4 = temp_a1;
            if ((temp_s0->unk0->unk8 == temp_s0) || !(temp_a1 & 2)) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_v0_2 = unksp38->unk6;
                unksp38->unk4 = (s16) (-5 & temp_a1 & 0xFFFF & ~0x80);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            unksp38->unk70 = 0;
            unksp38->unk8 = 0;
            unksp38->unk6 = (u16) (-5 & var_v0_2);
            unksp38->unk50 = -1;
            temp_a0_3 = unksp38 + 0x30;
            unksp10 = temp_a0_3;
            init_sv(temp_a0_3, 0, saved_reg_gp - 0x77B8, -1);
            temp_a0_4 = unksp38 + 0x68;
            unksp18 = temp_a0_4;
            spinlock_init(temp_a0_4, saved_reg_gp - 0x77B0);
            temp_a2 = temp_s0->unk18->unk40;
            if (((s32 (*)(s64, s64, s64)) temp_a2)(unksp30, unksp38, temp_a2) != 0) {
                sv_destroy(unksp10);
                spinlock_destroy(unksp18);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_v0 = 0xC;
                unksp38->unk52 = 1;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                unksp30->unk10 = (s32) (unksp30->unk10 + 1);
                if (temp_s0->unk30 & 8) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    unksp38->unk54 = 0;
                } else {
                    temp_v0_3 = kern_malloc(0x10);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0_3->unk0 = unksp38;
                    temp_v0_3->unk8 = (s64) temp_s0->unk40;
                    temp_s0->unk40 = (s64) temp_v0_3;
                    unksp38->unk54 = 1;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_v0 = 0;
                *(s64) arg0 = (s32) unksp38->unk0;
            }
        }
    }
loop_8:
    M2C_ERROR(/* unknown instruction: ll $v1, ($a3) */);
    if (M2C_ERROR(/* unknown instruction: sc $s0, ($a3) */) == 0) {
        goto loop_8;
    }
    return var_v0;
}

s32 rrmCloseRN(s64 *arg0, void *arg1, s64 arg3, s64 arg6) {
    s16 temp_v0_5;
    s32 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a5;
    s64 temp_a5_2;
    s64 temp_a6;
    s64 temp_s2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_6;
    s64 temp_v0_7;
    s64 var_a0;
    s64 var_a1;
    s64 var_a1_2;
    s64 var_a1_3;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a3;

    var_a3 = arg3;
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s2 = arg0->unk20;
    arg1->unk38 = 0;
    if (arg0->unk30 & 8) {
        if ((arg1->unk54 != 0) && (var_a3 = arg1->unk40, (var_a3 != arg0))) {

        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk40 = (s64) arg0;
            goto block_5;
        }
    } else {
block_5:
        temp_v0 = arg0->unk20;
        if (temp_v0->unk48 != arg0) {
            psema(temp_v0 + 0x38, 0x219, var_a3);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk20->unk48 = (s64) arg0;
            if (arg0->unk20->unk68 != 0) {
                do {
                    us_delay(2);
                } while (arg0->unk20->unk68 != 0);
            }
        }
loop_7:
        M2C_ERROR(/* unknown instruction: ll $a6, ($a7) */);
        if (M2C_ERROR(/* unknown instruction: sc $t1, ($a7) */) == 0) {
            goto loop_7;
        }
        ((? (*)(s64, s64 *, void *)) arg0->unk18->unk48)(temp_s2, arg0, arg1);
        if (arg0->unk48 == arg1) {
            if (rrmUnbindProcFromRN(arg0) != 0) {
                cmn_err(0, saved_reg_gp->unk-77F0 + 0x378);
            }
        }
        temp_a6 = temp_s2->unkA8;
        temp_a0 = splhi();
        var_a1 = temp_a6;
        var_a2 = temp_a6;
        if (temp_a6 != 0) {
loop_12:
            temp_a5 = var_a1->unkA8;
            if (arg1 != var_a1) {
                var_a2 = var_a1;
                var_a1 = temp_a5;
                if (temp_a5 == 0) {

                } else {
                    goto loop_12;
                }
            } else {
                if (temp_a6 == var_a1) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s2->unkA8 = temp_a5;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a2->unkA8 = temp_a5;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a1->unkA8 = 0;
            }
        }
        temp_v0_2 = temp_s2->unk88;
        var_a1_2 = temp_v0_2;
        var_a2_2 = temp_v0_2;
        if (temp_v0_2 != 0) {
loop_20:
            temp_a5_2 = var_a1_2->unkA0;
            if (arg1 != var_a1_2) {
                var_a2_2 = var_a1_2;
                var_a1_2 = temp_a5_2;
                if (temp_a5_2 == 0) {

                } else {
                    goto loop_20;
                }
            } else {
                if (temp_v0_2 == var_a1_2) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s2->unk88 = temp_a5_2;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a2_2->unkA0 = temp_a5_2;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a1_2->unkA0 = 0;
            }
        }
        splx(temp_a0);
        if (!(arg0->unk30 & 8)) {
            temp_v0_3 = arg0->unk40;
            if (temp_v0_3->unk0 == arg1) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a0 = temp_v0_3;
                arg0->unk40 = (s64) temp_v0_3->unk8;
            } else {
                var_a0 = temp_v0_3->unk8;
                var_a1_3 = temp_v0_3;
                if (var_a0 != 0) {
loop_57:
                    temp_v0_4 = var_a0->unk8;
                    if (var_a0->unk0 != arg1) {
                        var_a1_3 = var_a0;
                        var_a0 = temp_v0_4;
                        if (temp_v0_4 == 0) {

                        } else {
                            goto loop_57;
                        }
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_a1_3->unk8 = temp_v0_4;
                    }
                }
            }
            kern_free((void *) var_a0);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0_2 = arg1->unk78;
        arg1->unk0 = (s16) ((arg1->unk0 + 1) & 0x7FFF);
        if (temp_a0_2 != 0) {
            unbind_pane((void *) temp_a0_2, (s64) arg0);
            temp_a0_3 = arg1->unk80;
            if (arg1->unk78 != temp_a0_3) {
                unbind_pane((void *) temp_a0_3, (s64) arg0);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk78 = 0;
            arg1->unk80 = 0;
        }
        sv_destroy((s64) (arg1 + 0x30));
        spinlock_destroy((s64) (arg1 + 0x68));
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg1->unk52 = 1;
        if (temp_s2->unk8 == arg1) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s2->unk8 = 0;
        }
        temp_v0_5 = arg1->unk50;
        if (temp_v0_5 != -1) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *(temp_s2->unk18 + ((s64) temp_v0_5 * 8)) = 0;
            if (arg0->unk0->unk8 != arg0) {
                temp_v0_6 = arg1->unk60;
                temp_a0_4 = arg1->unk58;
                if (temp_v0_6 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0_6->unk58 = temp_a0_4;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s2->unk20 = temp_a0_4;
                }
                temp_a0_5 = arg1->unk58;
                temp_v0_7 = arg1->unk60;
                if (temp_a0_5 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a0_5->unk60 = temp_v0_7;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s2->unk28 = temp_v0_7;
                }
            }
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s2->unk10 = (s32) (temp_s2->unk10 - 1);
loop_38:
        M2C_ERROR(/* unknown instruction: ll $a3, ($a4) */);
        if (M2C_ERROR(/* unknown instruction: sc $s1, ($a4) */) == 0) {
            goto loop_38;
        }
    }
    return 0;
}

s32 RRM_CloseRN(void) {
    rrmCloseRN();
    return 0;
}

s32 RRM_Exit(s64 *arg0, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg14) {
    s64 *temp_s0;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_s1;
    s64 temp_s1_2;
    s64 temp_s1_3;
    s64 temp_s2;
    s64 temp_s2_2;
    s64 temp_s4;
    s64 temp_v0;
    s64 var_ra;
    s64 var_s1;
    s64 var_s3;
    void *temp_s5;

    var_s1 = saved_reg_s1;
    var_ra = saved_reg_ra;
    temp_s0 = arg0;
    if (arg0->unk30 & 8) {
        temp_s2 = temp_s0->unk48;
        if ((temp_s2 != 0) && (temp_s2->unk38 != temp_s0)) {
            temp_s1 = ((s64) temp_s2->unk2 * 0x10) + saved_reg_gp->unk-77C8;
            psema(temp_s1, 0x19);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_s2->unk54 = 0;
            if (temp_s2->unk38 == 0) {
                rrmCloseRN(temp_s0, temp_s2);
            } else {
                rrmUnbindProcFromRN(temp_s0);
            }
            vsema(temp_s1);
            var_s1 = arg6;
            var_ra = arg8;
        }
        var_s3 = 1;
        if (saved_reg_gp->unk0 >= 2) {
            arg8 = var_ra;
            arg6 = var_s1;
            temp_s4 = saved_reg_gp->unk-77D0;
loop_7:
            temp_s5 = (var_s3 * 0xB0) + temp_s4;
            if (temp_s5->unk38 == temp_s0) {
                temp_s1_2 = (var_s3 * 0x10) + saved_reg_gp->unk-77C8;
                psema(temp_s1_2, 0x19);
                if (rrmCloseRN(temp_s0, (s64) temp_s5) != 0) {
                    cmn_err(0, saved_reg_gp->unk-77F0 + 0x3A0);
                }
                vsema(temp_s1_2);
            }
            var_s3 = (s64) ((var_s3 + 1) << 0x30) >> 0x30;
            if (var_s3 < saved_reg_gp->unk0) {
                goto loop_7;
            }
            var_ra = arg8;
        }
    } else if (temp_s0->unk40 != 0) {
loop_20:
        temp_s2_2 = *(s64 *) temp_s0->unk40;
        temp_s1_3 = ((s64) temp_s2_2->unk2 * 0x10) + saved_reg_gp->unk-77C8;
        psema(temp_s1_3, 0x19);
        if (rrmCloseRN(temp_s0, temp_s2_2) != 0) {
            cmn_err(0, saved_reg_gp->unk-77F0 + 0x3A0);
        }
        vsema(temp_s1_3);
        if (temp_s0->unk40 != 0) {
            goto loop_20;
        }
        var_ra = arg8;
    }
    temp_v0 = temp_s0->unk20;
    if ((temp_v0 != 0) && (temp_v0->unk48 == temp_s0)) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v0->unk54 = 0;
        arg8 = var_ra;
        temp_s0->unk20->unk50 = 0;
        temp_a1 = temp_s0->unk18->unkC0;
        arg0 = splhi();
        if (temp_a1 != 0) {
            ((? (*)(s64 *, s64)) temp_a1)(temp_s0, temp_a1);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a1_2 = temp_s0->unk20;
        temp_a1_2->unk48 = 0;
        vsema(temp_s0->unk20 + 0x38, (s16) temp_a1_2);
        splx((s32) (s64) arg0);
    }
    return 0;
}

u16 rrmGetResourceMask(void *arg0) {
    return arg0->unk4;
}

void rrmSuspend(s32 arg1, s32 arg0, s64 arg2, s64 arg12, s64 arg14, s64 arg16) {
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s4_3;
    s32 temp_v0_3;
    s32 var_a1;
    s32 var_s3;
    s32 var_s5;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_a1_6;
    s64 temp_a1_7;
    s64 temp_a4;
    s64 temp_at;
    s64 temp_v0_2;
    s64 temp_v0_4;
    s64 var_s0;
    void *temp_v0;

    var_s5 = 0;
    temp_v0 = gthread_find();
    if (temp_v0 != NULL) {
        temp_a0 = temp_v0->unk10;
        if (temp_a0 != 0) {
            if (temp_v0->unk18 == 0) {
                var_s0 = temp_a0->unk18;
                goto block_4;
            }
            GfxListReaderLock(temp_a0);
            temp_a0_2 = temp_v0->unk10;
            var_s0 = temp_a0_2->unk18;
            if (var_s0 != 0) {
                if (var_s0->unk30 & 8) {
block_4:
                    var_s3 = 1;
                } else {
                    arg0 = splhi();
                    if (!(temp_v0->unk8 & 2)) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a4 = temp_v0->unk18;
                        temp_a4->unkC = (s32) (temp_a4->unkC - 1);
                    }
                    var_s5 = 1;
                    var_s3 = temp_v0->unk18->unkC == 0;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a1 = temp_v0->unk8 | 8;
                temp_s1 = arg1 & 0x100;
                temp_v0->unk8 = var_a1;
                if (var_s0 != 0) {
                    arg2 = arg1 & 0x80;
loop_14:
                    if (temp_s1 != 0) {
                        temp_a0_3 = var_s0->unk20;
                        if ((temp_a0_3 != 0) && (temp_a0_3->unk48 == var_s0)) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_a1 = temp_v0->unk8 | 1;
                            temp_v0->unk8 = temp_a1;
                            if (var_s5 != 0) {
                                if (!(temp_a1 & 4)) {
loop_20:
                                    M2C_ERROR(/* unknown instruction: ll $a4, ($at) */);
                                    if (M2C_ERROR(/* unknown instruction: sc $a3, ($at) */) == 0) {
                                        goto loop_20;
                                    }
                                }
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_at = temp_v0->unk18;
                                temp_at->unkC = (s32) (temp_at->unkC + 1);
                            }
                        }
                    }
                    if (((temp_s1 != 0) ? 0 : var_s3) != 0) {
                        temp_a0_4 = var_s0->unk20;
                        if ((temp_a0_4 == 0) || (temp_a0_4->unk48 != var_s0)) {
                            temp_v0_2 = var_s0->unk18;
                            if (temp_v0_2 != 0) {
                                ((? (*)(s64, s64, s32)) temp_v0_2->unkB0)(temp_a0_4, var_s0, temp_s1);
                            }
                        } else {
                            temp_v0_3 = ((s32 (*)(s64, s64, s32)) var_s0->unk18->unkB0)(temp_a0_4, var_s0, temp_s1);
                            temp_a0_5 = temp_a0_4->unk50;
                            if (temp_a0_5 != 0) {
                                if ((temp_a0_4->unk54 == 0) || (temp_v0_3 != 0)) {
                                    if ((temp_a0_5 != 0) && (temp_a0_4->unk68 != 0) && (arg2 != 0)) {
                                        temp_a1_2 = var_s0->unk18->unkC0;
                                        temp_s4 = splhi();
                                        if (temp_a1_2 != 0) {
                                            ((? (*)(s64, s64)) temp_a1_2)(var_s0, temp_a1_2);
                                        }
                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                        temp_a1_3 = var_s0->unk20;
                                        temp_a1_3->unk48 = 0;
                                        vsema(var_s0->unk20 + 0x38, (s16) temp_a1_3);
                                        splx(temp_s4);
                                    }
                                } else {
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    temp_a0_4->unk54 = 0;
loop_52:
                                    M2C_ERROR(/* unknown instruction: ll $v0, ($v1) */);
                                    if (M2C_ERROR(/* unknown instruction: sc $a1, ($v1) */) == 0) {
                                        goto loop_52;
                                    }
                                    temp_a1_4 = var_s0->unk18->unkC0;
                                    temp_s4_2 = splhi();
                                    if (temp_a1_4 != 0) {
                                        ((? (*)(s64, s64)) temp_a1_4)(var_s0, temp_a1_4);
                                    }
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    temp_a1_5 = var_s0->unk20;
                                    temp_a1_5->unk48 = 0;
                                    vsema(var_s0->unk20 + 0x38, (s16) temp_a1_5);
                                    splx(temp_s4_2);
                                }
                            } else if (temp_v0_3 != 0) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
loop_46:
                                M2C_ERROR(/* unknown instruction: ll $a4, ($at) */);
                                if (M2C_ERROR(/* unknown instruction: sc $a3, ($at) */) == 0) {
                                    goto loop_46;
                                }
                                temp_a0_4->unk54 = temp_v0_3;
                            } else {
                                temp_a1_6 = var_s0->unk18->unkC0;
                                temp_s4_3 = splhi();
                                if (temp_a1_6 != 0) {
                                    ((? (*)(s64, s64)) temp_a1_6)(var_s0, temp_a1_6);
                                }
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_a1_7 = var_s0->unk20;
                                temp_a1_7->unk48 = 0;
                                vsema(var_s0->unk20 + 0x38, (s16) temp_a1_7);
                                splx(temp_s4_3);
                            }
                        }
                    } else {
                        temp_v0_4 = var_s0->unk18;
                        if (temp_v0_4 != 0) {
                            ((? (*)(s64, s64, s32)) temp_v0_4->unkB0)(var_s0->unk20, var_s0, temp_s1);
                        }
                    }
                    var_s0 = var_s0->unk10;
                    if (var_s0 != 0) {
                        goto loop_14;
                    }
                    var_a1 = temp_v0->unk8;
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0->unk8 = (s32) (var_a1 & ~8);
                if (temp_v0->unk18 != 0) {
                    if (var_s5 != 0) {
                        splx(arg0);
                    }
                    GfxListReaderUnlock(temp_v0->unk10);
                }
            } else {
                GfxListReaderUnlock(temp_a0_2);
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x18. */
void rrmResume(s64 arg1, s32 arg0, s64 arg16, s64 arg18, s64 arg20, s64 arg22) {
    ? var_a3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_s3;
    s32 temp_s6;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 var_s1;
    s32 var_s5;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_at;
    s64 temp_s4;
    s64 temp_v0_5;
    s64 temp_v0_8;
    s64 var_s0;
    u16 temp_a0_3;
    u16 var_s6;
    void *temp_v0;

    unksp20 = arg1;
    var_s5 = 0;
    temp_v0 = gthread_find();
    if (temp_v0 != NULL) {
        temp_a0 = temp_v0->unk10;
        if (temp_a0 != 0) {
            if (temp_v0->unk18 == 0) {
                var_s0 = temp_a0->unk18;
                goto block_4;
            }
            GfxListReaderLock(temp_a0);
            temp_a0_2 = temp_v0->unk10;
            var_s0 = temp_a0_2->unk18;
            if (var_s0 != 0) {
                if (!(var_s0->unk30 & 8)) {
                    temp_v0_2 = temp_v0->unk8;
                    if (temp_v0_2 & 2) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_v0->unk8 = (s32) (temp_v0_2 & ~2);
                    }
                    arg0 = splhi();
                    var_s5 = 1;
                    if (!(temp_v0->unk8 & 1)) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_at = temp_v0->unk18;
                        temp_at->unkC = (s32) (temp_at->unkC + 1);
                    }
                }
block_4:
                if (var_s0 != 0) {
                    temp_s3 = unksp20 & 0x100;
loop_13:
                    var_v0 = 0;
                    var_s1 = 0;
                    if (var_s0->unk20 != 0) {
                        if (var_s0->unk30 & 8) {
                            goto block_15;
                        }
                        if ((temp_v0->unk18 != 0) && (var_s0->unk28 != 0)) {
                            temp_a1 = var_s0->unk18->unk70;
                            ((? (*)(s64, s64)) temp_a1)(var_s0, temp_a1);
                            if (temp_s3 == 0) {
                                goto block_37;
                            }
                            goto block_17;
                        }
block_15:
                        if (!(var_s0->unk38 & 1)) {
                            if (var_s0->unk28 != 0) {
                                temp_a1_2 = var_s0->unk18->unk70;
                                ((? (*)(s64, s64)) temp_a1_2)(var_s0, temp_a1_2);
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_s0->unk38 = (s32) (var_s0->unk38 | 1);
                            }
                        }
                        if (temp_s3 != 0) {
block_17:
                            temp_v0_3 = temp_v0->unk8;
                            var_a3 = -2;
                            temp_v0_4 = -2 & temp_v0_3;
                            if ((temp_v0_3 & 1) && (var_s0->unk20->unk48 == var_s0)) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_v0->unk8 = temp_v0_4;
                                if (var_s5 != 0) {
                                    var_a3 = -1;
                                    if (!(temp_v0_4 & 4)) {
loop_22:
                                        M2C_ERROR(/* unknown instruction: ll $at, ($v1) */);
                                        if (M2C_ERROR(/* unknown instruction: sc $a4, ($v1) */) == 0) {
                                            goto loop_22;
                                        }
                                    }
                                }
                            }
                            temp_v0_5 = var_s0->unk18;
                            if ((temp_v0_5 != 0) && (var_s0->unk30 & 3)) {
                                ((? (*)(s64, s64, s32, ?)) temp_v0_5->unkB8)(var_s0->unk20, var_s0, temp_s3, var_a3);
                            }
                            var_s1 = 1;
                            var_s0 = var_s0->unk10;
                        } else {
block_37:
                            temp_v0_6 = var_s0->unk30;
                            temp_a3 = temp_v0_6 & 1;
                            if (temp_a3 != 0) {
                                if (temp_v0_6 & 0x20) {
                                    if (var_s0->unk20->unk48 != var_s0) {
                                        rrmDoUnMapGfx((s64 *) var_s0);
                                    }
                                    ((? (*)(s64, s64, s32)) var_s0->unk18->unkB8)(var_s0->unk20, var_s0, temp_s3);
                                } else {
                                    temp_s4 = var_s0->unk48;
                                    if (temp_s4 != 0) {
loop_56:
                                        unksp18 = 0;
                                        temp_v0_7 = splhi();
                                        temp_a1_3 = temp_s4->unk78;
                                        var_s6 = temp_s4->unk6;
                                        temp_a0_3 = temp_s4->unk4;
                                        if (temp_a1_3 != 0) {
                                            var_s6 |= temp_a1_3->unkC;
                                            if (temp_a0_3 & 0x40) {
                                                unksp10 = (s64) temp_a0_3;
                                                var_s6 = (temp_s4->unk80->unkC & 0x40) | (var_s6 & ~0x40);
                                            }
                                        }
                                        unksp10 = (s64) temp_a0_3;
                                        splx(temp_v0_7);
                                        temp_v0_8 = var_s0->unk20;
                                        if (temp_v0_8->unk48 == var_s0) {
                                            temp_a3_2 = unksp10 & var_s6;
                                            if ((temp_v0_8->unk50 == 0) && (temp_a3_2 != unksp10)) {
                                                temp_a1_4 = var_s0->unk18->unkC0;
                                                temp_s6 = splhi();
                                                if (temp_a1_4 != 0) {
                                                    ((? (*)(s64, s64)) temp_a1_4)(var_s0, temp_a1_4);
                                                }
                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                temp_a1_5 = var_s0->unk20;
                                                temp_a1_5->unk48 = 0;
                                                vsema(var_s0->unk20 + 0x38, (s16) temp_a1_5);
                                                splx(temp_s6);
                                                rrmDoUnMapGfx((s64 *) var_s0);
                                            } else {
                                                ((? (*)(s64, s64, s32, s32)) var_s0->unk18->unkB8)(temp_v0_8, var_s0, temp_s3, temp_a3_2);
                                            }
                                            goto block_55;
                                        }
                                        if (((unksp10 & var_s6) == unksp10) && (cpsema(temp_v0_8 + 0x38) != 0)) {
                                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                            unksp18 = 1;
                                            var_s0->unk20->unk48 = var_s0;
block_55:
                                            if (unksp18 != 0) {
                                                goto loop_56;
                                            }
                                        } else {
                                            rrmDoUnMapGfx((s64 *) var_s0);
                                            if (unksp18 != 0) {
                                                goto loop_56;
                                            }
                                        }
                                    } else {
                                        ((? (*)(s64, s64, s32, s32)) var_s0->unk18->unkB8)(var_s0->unk20, var_s0, temp_s3, temp_a3);
                                    }
                                }
                            } else if (temp_v0_6 & 2) {
                                ((? (*)(s64, s64, s32, s32)) var_s0->unk18->unkB8)(var_s0->unk20, var_s0, temp_s3, temp_a3);
                            }
                        }
                        var_v0 = var_s1;
                    }
                    if (var_v0 == 0) {
                        var_s0 = var_s0->unk10;
                    }
                    if (var_s0 != 0) {
                        goto loop_13;
                    }
                }
                if (temp_v0->unk18 != 0) {
                    if (var_s5 != 0) {
                        splx(arg0);
                    }
                    GfxListReaderUnlock(temp_v0->unk10);
                }
            } else {
                GfxListReaderUnlock(temp_a0_2);
            }
        }
    }
}

void rrmSetResourceMask(s64 arg0, void *arg1, u16 arg2) {
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_v0;
    u16 temp_at;
    u16 var_s5;

    temp_v0 = splhi();
    temp_at = arg1->unk4;
    unksp20 = (s64) temp_at;
    var_s5 = arg1->unk6;
    if (temp_at & 2) {
        var_s5 |= pane_validmask((void *) arg1->unk78);
    }
    splx(temp_v0);
    temp_a3 = (unksp20 ^ arg2) & arg2;
    if ((var_s5 ^ temp_a3) & temp_a3) {
        rrmUnMapGfx((s64 *) arg0);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0 = splhi();
    arg1->unk4 = arg2;
    splx(temp_a0);
}

s32 RRM_ValidateSwapBuf(s64 arg0, s64 arg2, s64 arg4) {
    s64 temp_a2;

    temp_a2 = arg2;
    arg2 = arg0;
    arg4 = temp_a2;
    if (RRM_CheckValidFault() < 0) {
        return 0xE;
    }
    return validate_pane_swapbuf((s64) arg4->unk4, arg2, arg4->unk8);
}

void rrmValidateBuffer(void *arg0) {
    s64 temp_a2;
    s64 temp_v1;

    temp_a2 = arg0->unk48;
    if (temp_a2->unkA0 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v1 = arg0->unk78;
        temp_v1->unk1C = (s32) (temp_v1->unk18 + temp_a2->unkA4);
    }
    validate_pane_buffer((void *) arg0->unk78, arg0->unk40, temp_a2, arg0);
}

s32 RRM_ValidateMessage(void *arg1) {
    s32 var_v0;
    u16 temp_s8;

    temp_s8 = arg1->unk6;
    splx(splhi());
    var_v0 = 0x16;
    if (!(temp_s8 & 0x20)) {
        rrmValidateBuffer(arg1);
        var_v0 = 0;
    }
    return var_v0;
}

s32 RRM_SetDisplayMode(s64 *arg0, s64 arg1, s64 arg2, s64 arg14) {
    s32 temp_a3;
    s32 var_v0;
    s64 *temp_s0;
    s64 temp_v0;
    s8 temp_a2;

    unksp48 = arg1;
    arg14 = arg2;
    temp_s0 = arg0;
    if (RRM_CheckValidFault() >= 0) {
        temp_v0 = temp_s0->unk0;
        if (temp_v0->unk8 != 0) {
            arg2 = 0xB;
            arg0 = temp_v0;
            arg3 = 3;
            temp_a3 = (temp_s0->unk30 & 8) != 0;
            temp_a2 = (temp_a3 == 0) ? 0xB : 0x8B;
            arg2 = temp_a2;
            arg4 = unksp48->unk14;
            arg5 = arg14->unk8;
            arg6 = arg14->unk4;
            GfxMessage(sp, 3, temp_a2, temp_a3);
            invalidate_pane(8, unksp48->unk78->unk4, temp_s0);
            rrmUnMapGfx(temp_s0);
            var_v0 = 0;
        } else {
            var_v0 = 0xE;
        }
    } else {
        var_v0 = 0xE;
    }
    return var_v0;
}

s32 RRM_LoadDisplayMode(s64 *arg0, void *arg2) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_v0_2;
    s32 var_v0;
    s64 temp_a3;
    s64 temp_s2;
    s64 temp_v0_3;
    void *temp_v0;

    temp_v0 = clip2pane(arg2->unk4, arg0);
    if ((temp_v0 != NULL) && (var_v0 = 0x16, ((temp_v0->unkC & 8) != 0))) {

    } else {
        temp_a1 = arg2->unk8;
        var_v0 = 0x16;
        if ((temp_a1 < 0) || (temp_a1 >= arg0->unk20->unk58)) {

        } else {
            temp_a3 = arg0->unk18->unkA0;
            temp_v0_2 = ((s32 (*)(s64 *, s32, s32, s64)) temp_a3)(arg0, temp_a1, arg2->unkC, temp_a3);
            if (temp_v0_2 >= 0) {
                if (temp_v0 != NULL) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0->unk20 = (s32) arg2->unk10;
                    temp_v0->unk12 = (s16) ((arg2->unk10 & 4) == 4);
                }
                temp_v0_3 = arg0->unk20;
                temp_a1_2 = arg2->unk8;
                if (temp_a1_2 < temp_v0_3->unk58) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    *(temp_v0_3->unk60 + ((s64) temp_a1_2 * 4)) = arg2->unk10;
                }
                if (temp_v0_2 == 1) {
                    temp_s2 = arg0->unk48;
                    if (temp_s2 != 0) {
                        if (rrmInvalidateRN(arg0, (void *) temp_s2, 0x10) == 0) {
                            ((? (*)(s64, s64)) arg0->unk18->unk98)(arg0->unk20, temp_s2);
                            rrmUnMapGfx(arg0);
                        }
                        goto block_15;
                    }
                    var_v0 = 0xE;
                } else {
block_15:
                    var_v0 = 0;
                }
            } else {
                var_v0 = -temp_v0_2;
            }
        }
    }
    return var_v0;
}

s32 RRM_GetDisplayModes(void *arg0, void *arg2) {
    s32 var_v0;
    s64 temp_a5;
    u32 temp_v0;

    temp_a5 = arg0->unk20;
    temp_v0 = temp_a5->unk58 * 4;
    if ((u32) arg2->unk10 < temp_v0) {
        var_v0 = 0x16;
    } else if (copyout(temp_a5->unk60, arg2->unk8, temp_v0) != 0) {
        var_v0 = 0xE;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s32 rrmValidateMyRetrace(s64 *arg1) {
    s32 temp_v0;
    u16 temp_v1;

    temp_v0 = splhi();
    temp_v1 = arg1->unk4;
    if ((arg1->unk6 ^ temp_v1) & temp_v1 & 0x10) {
        sv_wait(arg1 + 0x30, 0x19, arg1 + 0x68, temp_v0);
    } else {
        splx(temp_v0);
    }
    return 0;
}

void rrmValidateRetrace(void *arg0, s64 arg4) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg4 = splhi();
    arg0->unk6 = (u16) (arg0->unk6 | 0x10);
    sv_signal(arg0 + 0x30);
    splx((s32) arg4);
}

s64 rrmAllocPcxid(s64 *arg0, void *arg1) {
    s16 var_t0;
    s32 temp_a6;
    s32 var_a4;
    s32 var_a6;
    s64 temp_a0;
    s64 temp_a2;
    s64 temp_a7;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a5;
    s64 var_v0;
    s64 var_v0_2;

    temp_a7 = arg0->unk20;
    temp_a6 = temp_a7->unk14;
    var_a4 = 0;
    var_v0_2 = 0;
    var_a5 = 0;
    if (temp_a6 != 1) {
        var_t0 = arg1->unk50;
        if (var_t0 != -1) {
            var_a6 = (arg0->unk0->unk8 == (s32) arg0) == 0;
            if (var_a6 != 0) {
                temp_v0 = arg1->unk60;
                if (temp_v0 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0->unk58 = (s64) arg1->unk58;
                    temp_a0 = arg1->unk58;
                    temp_v0_2 = arg1->unk60;
                    if (temp_a0 != 0) {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a0->unk60 = temp_v0_2;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a7->unk28 = temp_v0_2;
                    }
                    goto block_6;
                }
                var_v0 = 0;
            } else {
                goto block_6;
            }
        } else {
            if (temp_a6 > 0) {
loop_13:
                if (*((var_v0_2 * 8) + temp_a7->unk18) != 0) {
                    var_v0_2 += 1;
                    if (var_v0_2 >= temp_a6) {

                    } else {
                        goto loop_13;
                    }
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_t0 = (s16) ((s64) (var_v0_2 << 0x30) >> 0x30);
                    arg1->unk50 = var_t0;
                }
            }
            var_a4 = arg0->unk0->unk8 == (s32) arg0;
            var_a6 = 1;
            if (var_a4 != 0) {
                goto block_18;
            }
            if (var_t0 != -1) {
                if (temp_a7->unk20 == 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a7->unk28 = (s64) arg1;
                    temp_a7->unk20 = (s64) arg1;
                    arg1->unk58 = 0;
                    var_v0 = 0;
                    arg1->unk60 = 0;
                } else {
                    goto block_18;
                }
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_a5 = temp_a7->unk28;
                temp_a2 = var_a5->unk60;
                temp_a7->unk28 = temp_a2;
                temp_a2->unk58 = 0;
                arg1->unk50 = (s16) var_a5->unk50;
block_18:
block_6:
                if ((var_a6 != 0) && (var_a4 == 0)) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a7->unk20->unk60 = (s64) arg1;
                    arg1->unk60 = 0;
                    arg1->unk58 = (s64) temp_a7->unk20;
                    temp_a7->unk20 = (s64) arg1;
                }
                var_v0 = var_a5;
            }
        }
    } else {
        var_v0 = temp_a7->unk8;
    }
    return var_v0;
}

s64 rrmValidateMyPcx(s64 *arg0, void *arg1, s64 arg10, s64 arg12, s64 arg14, s64 arg16) {
    s16 temp_v0_2;
    s32 temp_a0;
    s32 temp_a0_4;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a6;
    s64 temp_t0;
    s64 temp_v0;
    s64 var_v0;

    arg12 = 0;
    temp_a0 = splhi();
    arg14 = (s64) arg1->unk6;
    arg16 = (s64) arg1->unk4;
    splx(temp_a0);
    if ((arg16 ^ arg14) & arg16 & 1) {
loop_2:
        M2C_ERROR(/* unknown instruction: ll $a4, ($a5) */);
        if (M2C_ERROR(/* unknown instruction: sc $v1, ($a5) */) == 0) {
            goto loop_2;
        }
        temp_a3 = arg0->unk20->unk8;
        if ((temp_a3 != 0) && (temp_a3 != arg1)) {
            rrmInvalidateRN(arg0, (void *) temp_a3, 1, temp_a3);
        }
        if (arg1->unk50 != -1) {
            rrmAllocPcxid(arg0, arg1);
            temp_a0_2 = arg0->unk20;
            arg10 = (((s32 (*)(s64, void *, s64)) arg0->unk18->unk80)(temp_a0_2, arg1, temp_a0_2->unk8) < 0) ? -1 : 0;
        } else {
            if (arg1->unk53 == 0) {
                if (arg1->unk4 & 2) {
                    invalidate_pane(2, arg1->unk78->unk4, arg0);
                    arg12 = 1;
                }
            }
            temp_v0 = rrmAllocPcxid(arg0, arg1);
            unksp8 = temp_v0;
            temp_a0_3 = arg0->unk20;
            temp_a6 = arg0->unk18->unk78;
            temp_a3_2 = temp_a0_3->unk8;
            if (temp_v0 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                arg10 = (((s32 (*)(s64, s64, void *, s64)) temp_a6)(temp_a0_3, unksp8, arg1, temp_a3_2) < 0) ? -1 : 0;
                unksp8->unk50 = -1;
            } else {
                arg10 = (((s32 (*)(s64, ?, void *, s64)) temp_a6)(temp_a0_3, 0, arg1, temp_a3_2) < 0) ? -1 : 0;
            }
            temp_v0_2 = arg1->unk50;
            if (temp_v0_2 != -1) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *(arg0->unk20->unk18 + ((s64) temp_v0_2 * 8)) = (s64) arg1;
            }
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_t0 = *saved_reg_gp;
        temp_t0->unk8 = (s32) (temp_t0->unk8 + 1);
        arg0->unk20->unk8 = (s64) arg1;
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0_4 = splhi();
        arg1->unk6 = (u16) (arg1->unk6 | 1);
        splx(temp_a0_4);
loop_10:
        M2C_ERROR(/* unknown instruction: ll $v1, ($a4) */);
        if (M2C_ERROR(/* unknown instruction: sc $ra, ($a4) */) == 0) {
            goto loop_10;
        }
        if (arg12 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk53 = 1U;
            temp_a1 = arg0->unk18->unkC0;
            unksp18 = splhi();
            if (temp_a1 != 0) {
                ((? (*)(s64 *, s64)) temp_a1)(arg0, temp_a1);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a1_2 = arg0->unk20;
            temp_a1_2->unk48 = 0;
            vsema(arg0->unk20 + 0x38, (s16) temp_a1_2);
            splx((s32) unksp18);
        }
        var_v0 = arg10;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

void *RRM_ValidateClip(void *arg0, s64 arg2) {
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_ra;
    void *var_v0;

    var_ra = saved_reg_ra;
    temp_v0 = arg0->unk20;
    unksp18 = arg2;
    arg2 = 0;
    if (temp_v0->unk48 != arg0) {
        psema(temp_v0 + 0x38, 0x219);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unk20->unk48 = (s64) arg0;
        var_ra = unksp28;
        if (arg0->unk20->unk68 != 0) {
            do {
                us_delay(2);
            } while (arg0->unk20->unk68 != 0);
            var_ra = unksp28;
        }
    }
loop_2:
    M2C_ERROR(/* unknown instruction: ll $v1, ($a3) */);
    if (M2C_ERROR(/* unknown instruction: sc $at, ($a3) */) == 0) {
        goto loop_2;
    }
    temp_v0_2 = arg0->unk20->unk8;
    if ((temp_v0_2 == 0) || (unksp18->unk4 != temp_v0_2->unk14)) {
        if (0 != 0) {
            goto block_8;
        }
        goto block_19;
    }
    unksp28 = var_ra;
    if (RRM_CheckValidFault((s64) arg0) < 0) {
        arg2 = 1;
        arg0 = (void *)0xE;
    }
    if (arg2 == 0) {
block_19:
        unksp28 = var_ra;
        var_v0 = validate_pane_clip(unksp18->unk4, (s64) arg0, unksp18);
    } else {
block_8:
        var_v0 = arg0;
    }
loop_10:
    M2C_ERROR(/* unknown instruction: ll $s0, ($at) */);
    if (M2C_ERROR(/* unknown instruction: sc $a3, ($at) */) == 0) {
        goto loop_10;
    }
    return var_v0;
}

s32 RRM_ValidFault(s64 *arg0, ? arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg14) {
    s16 var_a2_2;
    s16 var_a2_3;
    s32 temp_a3;
    s32 temp_v0_2;
    s32 var_s1;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_a3_4;
    s64 temp_v0;
    s64 var_a2;
    s64 var_ra;
    s64 var_v0_2;
    u16 temp_a2;
    u16 temp_a5;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_ra = saved_reg_ra;
    var_a2 = arg0->unk30 & 0x20;
    if (var_a2 == 0) {
        goto block_10;
    }
block_1:
    if (arg0->unk20->unk48 != arg0) {
        goto block_6;
    }
block_2:
    arg14 = var_ra;
    if (var_a2 != 0) {
        goto block_36;
    }
    temp_a0 = arg0->unk0->unk8;
    if (temp_a0 != 0) {
        goto block_15;
    }
    var_v0 = -1;
    goto block_14;
block_5:
    ddv_unlock(arg0->unk28);
block_6:
    psema(arg0->unk20 + 0x38, 0x219);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk20->unk48 = (s64) arg0;
    var_ra = arg14;
    if (arg0->unk20->unk68 == 0) {
        goto block_9;
    }
loop_7:
    us_delay(2);
    if (arg0->unk20->unk68 != 0) {
        goto loop_7;
    }
    var_ra = arg14;
block_9:
    var_a2 = arg0->unk30 & 0x20;
    goto block_2;
block_10:
    temp_v0 = arg0->unk48;
    if (temp_v0 == 0) {
        goto block_12;
    }
    arg0 = temp_v0;
    goto block_1;
block_12:
    cmn_err(4, saved_reg_gp->unk-77F0 + 0x3C0, proc_pid(curproc(var_a2)));
    psignal(curproc(), 9);
    var_v0 = -1;
block_13:
block_14:
    return var_v0;
block_15:
    if (((s64) arg0)->unk14 != 0) {
        goto block_18;
    }
    if (temp_a0 == arg0) {
        goto block_18;
    }
    arg14 = var_ra;
    arg8 = (s64) arg0;
    if (((s64) arg0)->unk4 & 2) {
        goto block_27;
    }
block_18:
    arg14 = var_ra;
    arg8 = (s64) arg0;
    arg6 = splhi();
    temp_a2 = arg8->unk4;
    temp_a5 = arg8->unk6;
    arg4 = (s64) temp_a5;
    arg2 = (s64) temp_a2;
    if (arg0->unk0->unk8 == arg0) {
        goto block_22;
    }
    arg4 = (s64) temp_a5;
    arg2 = (s64) temp_a2;
    if (!(temp_a2 & 2)) {
        goto block_22;
    }
    arg4 |= pane_validmask((void *) arg8->unk78, arg8, temp_a2);
    if (!(arg2 & 0x40)) {
        goto block_22;
    }
    arg4 = (pane_validmask((void *) arg8->unk80) & 0x40) | (arg4 & ~0x40);
block_22:
    splx((s32) arg6);
    if ((arg2 & arg4) == arg2) {
        goto block_36;
    }
    temp_a3 = arg4 & 0x10;
    if (temp_a3 == 0) {
        goto block_28;
    }
block_24:
    if (arg0->unk20->unk48 != arg0) {
        goto block_6;
    }
    if (validate_my_pane_resources((void *) arg8->unk78, (s64) arg0, arg2) >= 0) {
        goto block_29;
    }
    var_v0 = -1;
    goto block_14;
block_27:
    cmn_err(4, saved_reg_gp->unk-77F0 + 0x400, proc_pid(curproc(temp_a0)));
    psignal(curproc(), 9);
    var_v0 = -1;
    goto block_13;
block_28:
    rrmValidateMyRetrace(arg0, arg8, arg2, temp_a3);
    goto block_24;
block_29:
    temp_a3_2 = arg2 & 0x40;
    if (temp_a3_2 == 0) {
        goto block_31;
    }
    if (validate_my_pane_resources((void *) arg8->unk80, (s64) arg0, arg2, temp_a3_2) < 0) {
        goto block_41;
    }
block_31:
    var_v0_2 = arg0->unk20->unk48;
    if (var_v0_2 != arg0) {
        goto block_6;
    }
    if (arg4 & 1) {
        goto block_35;
    }
    if (rrmValidateMyPcx(arg0, (void *) arg8) < 0) {
        goto block_42;
    }
    var_v0_2 = arg0->unk20->unk48;
block_35:
    if (var_v0_2 != arg0) {
        goto block_6;
    }
block_36:
    ddv_lock(arg0->unk28);
    if (arg0->unk20->unk48 != arg0) {
        goto block_5;
    }
    temp_v0_2 = arg0->unk30;
    if (arg0->unk60 != 0) {
        goto block_43;
    }
block_38:
    if (!(temp_v0_2 & 0x20)) {
        goto block_49;
    }
    var_a2_2 = -1;
block_40:
    temp_a3_3 = arg0->unk18->unk60;
    var_s1 = ((s32 (*)(s64 *, ?, s16, s64)) temp_a3_3)(arg0, arg1, var_a2_2, temp_a3_3);
    goto block_47;
block_41:
    var_v0 = -1;
    goto block_14;
block_42:
    var_v0 = -1;
    goto block_14;
block_43:
    if (temp_v0_2 & 8) {
        goto block_38;
    }
    arg6 = splhi();
    if (arg0->unk30 & 0x20) {
        goto block_48;
    }
    var_a2_3 = ((s64) arg0)->unk50;
block_46:
    temp_a3_4 = arg0->unk18->unk60;
    var_s1 = ((s32 (*)(s64 *, ?, s16, s64)) temp_a3_4)(arg0, arg1, var_a2_3, temp_a3_4);
    splx((s32) arg6);
block_47:
    ddv_unlock(arg0->unk28);
    var_v0 = var_s1;
    goto block_13;
block_48:
    var_a2_3 = -1;
    goto block_46;
block_49:
    var_a2_2 = ((s64) arg0)->unk50;
    goto block_40;
}

s32 RRM_CheckValidFault(void *arg0) {
    s32 temp_v0;
    s32 var_v0;

    temp_v0 = arg0->unk30;
    var_v0 = 0;
    if (temp_v0 & 4) {
        goto block_1;
    }
    if (arg0->unk0->unk8 == 0) {
        var_v0 = -1;
    } else {
block_1:
        if (!(temp_v0 & 1)) {
            if (RRM_ValidFault(NULL) >= 0) {
                var_v0 = 0;
            } else {
                var_v0 = -1;
            }
        }
    }
    return var_v0;
}

s32 rrmSwapWait(void *arg0, s64 arg2) {
    s32 var_v0;
    s64 *var_a5;
    s64 temp_s1;
    s64 var_a4;
    u32 temp_a0;

    temp_s1 = arg0->unk48;
    temp_a0 = arg0->unk78->unk1C;
    var_a5 = temp_s1 + 0xA8;
    arg2 = splhi();
    if ((u32) (temp_s1->unkA4 + 1) < temp_a0) {
        var_a4 = temp_s1->unkA8;
        if (var_a4 != 0) {
loop_2:
            if ((u32) var_a4->unk78->unk1C < temp_a0) {
                var_a5 = var_a4 + 0xA8;
                var_a4 = var_a4->unkA8;
                if (var_a4 != 0) {
                    goto loop_2;
                }
            }
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg0->unkA8 = var_a4;
        *var_a5 = (s64) arg0;
        hold_nonfatalsig(sp);
        if (sv_wait_sig(arg0 + 0x30, 0x1E, temp_s1 + 0x30, arg2) >= 0) {
            release_nonfatalsig(sp);
            goto block_6;
        }
        release_nonfatalsig(sp);
        var_v0 = -1;
    } else {
        splx((s32) arg2);
block_6:
        var_v0 = 0;
    }
    return var_v0;
}

s64 RRM_SwapBuf(s64 *arg0, void *arg1, void *arg2, s64 arg10) {
    s32 temp_a0;
    s32 var_a0;
    s64 temp_a1;
    s64 temp_a2;
    s64 temp_s2;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v1;
    s64 var_v0;
    u16 temp_v0;

    temp_s2 = arg0->unk20;
    temp_v0 = rrmGetResourceMask(arg1);
    if (!(temp_v0 & 8)) {
        rrmSetResourceMask((s64) arg0, arg1, temp_v0 | 8);
    }
    if ((temp_s2->unkA0 != 0) && (temp_v0_2 = arg1->unk78, (temp_v0_2->unk18 != 0)) && ((u32) (temp_s2->unkA4 + 1) < (u32) temp_v0_2->unk1C) && (rrmSwapWait(arg1) != 0)) {
        var_v0 = 4;
    } else if (RRM_CheckValidFault((s64) arg0) >= 0) {
        temp_v0_3 = arg1->unk78;
        if (temp_v0_3->unk4 != 0) {
            goto block_10;
        }
        if (arg0->unk30 & 8) {
            var_v0 = 0;
        } else {
block_10:
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg1->unk1C = (s32) temp_v0_3->unk14;
            if (arg0->unk30 & 8) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0_3->unk12 = (s16) (temp_v0_3->unk12 ^ 1);
                temp_a0 = arg2->unk8;
                if (arg1->unk78->unk12 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a0 = temp_a0 | 4;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a0 = temp_a0 & ~4;
                }
                arg2->unk8 = var_a0;
            } else {
                var_a0 = arg2->unk8;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            ((void *) arg1->unk78)->unk20 = var_a0;
            temp_a1 = arg1->unk1C & 0xFF;
            if (temp_a1 != 0xFF) {
                goto block_15;
            }
            if (arg1->unk78->unkA0 == 0) {
                var_v0 = 0;
            } else {
block_15:
                temp_v0_4 = arg0->unk20;
                if (temp_a1 < temp_v0_4->unk58) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    *(temp_v0_4->unk60 + (temp_a1 * 4)) = arg2->unk8;
                }
loop_18:
                M2C_ERROR(/* unknown instruction: ll $a4, ($at) */);
                if (M2C_ERROR(/* unknown instruction: sc $a3, ($at) */) == 0) {
                    goto loop_18;
                }
                if (arg1->unk78->unkA0 != 0) {
                    psema(saved_reg_gp->unk-77F8 + 0x10, 0x19);
                }
                invalidate_pane(4, arg1->unk14, arg0);
                temp_v0_5 = ((s64 (*)(s64, void *, s32, s32)) arg0->unk18->unk88)(arg0->unk20, arg1, arg1->unk1C, arg2->unk4);
                arg10 = temp_v0_5;
                if (temp_v0_5 != 0) {
loop_24:
                    M2C_ERROR(/* unknown instruction: ll $v1, ($a0) */);
                    temp_a2 = M2C_ERROR(/* unknown instruction: sc $a2, ($a0) */);
                    if (temp_a2 == 0) {
                        goto loop_24;
                    }
                    validate_pane_buffer((void *) arg1->unk78, (s64) arg0, temp_a2);
                    var_v0 = arg10;
                } else {
loop_29:
                    M2C_ERROR(/* unknown instruction: ll $a4, ($at) */);
                    if (M2C_ERROR(/* unknown instruction: sc $a3, ($at) */) == 0) {
                        goto loop_29;
                    }
                    if (arg1->unk78->unkA0 != 0) {
                        vsema(saved_reg_gp->unk-77F8 + 0x10);
                    }
                    rrmUnMapGfx(arg0);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v1 = saved_reg_gp->unk0;
                    temp_v1->unk14 = (s32) (temp_v1->unk14 + 1);
                    var_v0 = 0;
                }
            }
        }
    } else {
        var_v0 = 0xE;
    }
    return var_v0;
}

void rrmSwapUnGroup(void *arg0, void *arg1) {
    s32 temp_a3;
    s32 temp_v0;
    s64 *temp_a3_2;
    s64 temp_a0;
    s64 temp_a5;
    s64 temp_a6;
    s64 var_a3;
    u64 var_a1;
    void *var_a4;

    temp_a5 = arg1->unkA0;
    temp_a3 = temp_a5->unk4;
    var_a4 = arg1;
    temp_a6 = arg0->unk20;
    if ((temp_a3 != 0) && (arg1->unkB0 == 0)) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a5->unk4 = (s32) (temp_a3 - 1);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0 = arg1->unkA8;
    arg1->unkA0 = 0;
    if (temp_a0 != arg1) {
        var_a3 = var_a4->unkA8;
        do {
            var_a4 = (void *) var_a3;
            var_a3 = var_a3->unkA8;
        } while (var_a3 != arg1);
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    var_a4->unkA8 = temp_a0;
    temp_v0 = temp_a5->unk0 - 1;
    var_a1 = 0;
    temp_a5->unk0 = temp_v0;
    if (temp_v0 == 0) {
        if (temp_a6->unkB0 != 0) {
loop_12:
            temp_a3_2 = temp_a6->unkB8 + (var_a1 * 8);
            var_a1 += 1;
            if (*temp_a3_2 == temp_a5) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *temp_a3_2 = 0;
            }
            if (var_a1 < temp_a6->unkB0) {
                goto loop_12;
            }
        }
        kern_free((void *) temp_a5);
    }
}

s32 RRM_SwapUnGroup(s64 *arg0, s32 *arg2) {
    s32 var_s0;
    s64 temp_s8;
    void *temp_v0;

    var_s0 = 0;
    temp_s8 = saved_reg_gp->unk-77F8 + 0x10;
    psema(temp_s8, 0x19);
    temp_v0 = clip2pane(*arg2, arg0);
    if (temp_v0 == NULL) {
        var_s0 = 2;
    } else if (temp_v0->unkA0 == 0) {
        var_s0 = 0xF;
    } else {
        rrmSwapUnGroup((s64) arg0, temp_v0);
    }
    vsema(temp_s8);
    return var_s0;
}

s32 RRM_SwapGroup(s64 arg0, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10) {
    s32 temp_a0;
    s32 temp_a1;
    s32 var_v0;
    s64 temp_a0_2;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 temp_v0_4;
    void *temp_v0_2;

    arg10 = arg2;
    arg6 = arg0;
    temp_v0 = clip2pane(*arg2, (s64 *) arg0);
    arg8 = temp_v0;
    if (temp_v0 != 0) {
        if (temp_v0->unkA0 != 0) {
            rrmSwapUnGroup(arg6, (void *) temp_v0);
        }
        temp_a0 = arg10->unk4;
        if (temp_a0 != 0) {
            temp_v0_2 = clip2pane(temp_a0, (s64 *) arg6);
            if (temp_v0_2 != NULL) {
                temp_v0_3 = temp_v0_2->unkA0;
                if (temp_v0_3 != 0) {
                    if (temp_v0_2->unk58 != arg8->unk58) {
                        var_v0 = 6;
                    } else {
                        arg4 = (s64) temp_v0_2;
                        arg0 = temp_v0_3;
                        goto block_8;
                    }
                } else {
                    var_v0 = 0xF;
                }
            } else {
                var_v0 = 9;
            }
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg4 = temp_v0;
            temp_v0->unkA8 = temp_v0;
            temp_v0_4 = kern_malloc(0xC);
            arg0 = temp_v0_4;
            bzero((void *) temp_v0_4, 0xCU);
block_8:
            temp_a0_2 = saved_reg_gp->unk-77F8 + 0x10;
            arg2 = temp_a0_2;
            psema(temp_a0_2, 0x19);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg8->unkA0 = arg0;
            arg8->unkB0 = 0;
            arg8->unkA8 = (s64) arg4->unkA8;
            arg4->unkA8 = arg8;
            temp_a1 = *arg0 + 1;
            *arg0 = temp_a1;
            vsema(arg2, (s16) temp_a1, (void *) arg0, (void *) arg8);
            var_v0 = 0;
        }
    } else {
        var_v0 = 2;
    }
    return var_v0;
}

s32 RRM_SwapReady(s64 *arg0, void *arg2, s64 arg4, s64 arg6, s64 arg8) {
    s32 temp_a0;
    s32 var_v0;
    s64 temp_a5;
    s64 temp_v0;
    s64 temp_v0_3;
    s64 var_a1;
    void *temp_v0_2;

    temp_v0 = arg0->unk20;
    arg4 = temp_v0;
    arg6 = (s64) arg2;
    var_v0 = 0x25;
    if ((u32) arg2->unk4 >= (u32) temp_v0->unkB0) {

    } else {
        temp_v0_2 = clip2pane(arg6->unk0, arg0);
        if (temp_v0_2 != NULL) {
            if (temp_v0_2->unk58 != arg4) {
                var_v0 = 6;
            } else {
                var_a1 = temp_v0_2->unkA0;
                if (var_a1 != 0) {
                    temp_a5 = arg0->unk20;
                    arg2 = (s64) temp_v0_2;
                    if (temp_a5->unk48 != arg0) {
                        psema(temp_a5 + 0x38, 0x219);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg0->unk20->unk48 = (s64) arg0;
                        if (arg0->unk20->unk68 != 0) {
                            do {
                                us_delay(2);
                            } while (arg0->unk20->unk68 != 0);
                        }
                        var_a1 = ((s64) arg2)->unkA0;
                    }
                    temp_v0_3 = arg4->unkB8;
                    temp_a0 = arg6->unk4;
                    if (arg6->unk8 != 0) {
                        if (*((((u64) ((s64) temp_a0 << 0x20) >> 0x20) * 8) + temp_v0_3) != 0) {
                            var_v0 = 0x10;
                            if (*((((u64) ((s64) temp_a0 << 0x20) >> 0x20) * 8) + temp_v0_3) == var_a1) {
                                var_v0 = 0x11;
                            }
                        } else {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            *((((u64) ((s64) temp_a0 << 0x20) >> 0x20) * 8) + temp_v0_3) = var_a1;
                            goto block_15;
                        }
                    } else if (*((((u64) ((s64) temp_a0 << 0x20) >> 0x20) * 8) + temp_v0_3) != var_a1) {
                        var_v0 = 9;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        *((((u64) ((s64) temp_a0 << 0x20) >> 0x20) * 8) + temp_v0_3) = 0;
block_15:
                        var_v0 = 0;
                    }
                } else {
                    var_v0 = 0xF;
                }
            }
        } else {
            var_v0 = 2;
        }
    }
    return var_v0;
}

s32 RRM_CushionBuffer(s64 *arg0, s32 *arg2, s64 arg4) {
    s32 temp_a3;
    s32 var_v0;
    s64 temp_s0;
    u8 temp_a2;
    void *temp_v0;

    arg4 = (s64) arg2;
    temp_s0 = arg0->unk20;
    temp_v0 = clip2pane(*arg2, arg0);
    if (temp_v0 != NULL) {
        if (temp_v0->unk58 != temp_s0) {
            var_v0 = 6;
        } else {
            temp_a3 = temp_s0->unkC0;
            if (temp_a3 != 0) {
                temp_a2 = temp_v0->unkB1;
                if (arg4->unk4 != 0) {
                    if (temp_a2 != 0) {
                        var_v0 = 0x10;
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_v0->unkB1 = (u8) temp_a3;
                        goto block_11;
                    }
                } else if (temp_a2 != 0) {
                    var_v0 = 2;
                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0->unkB1 = 0U;
block_11:
                    var_v0 = 0;
                }
            } else {
                var_v0 = 0x13;
            }
        }
    } else {
        var_v0 = 2;
    }
    return var_v0;
}

s32 RRM_MGR_SwapBuf(s64 *arg0, void *arg2) {
    s32 temp_a2;
    s32 temp_v0_2;
    s32 var_v0;
    s64 temp_v0;
    void *temp_v0_3;

    if (RRM_CheckValidFault() >= 0) {
        temp_v0 = arg0->unk20;
        temp_a2 = arg2->unk4;
        if (temp_a2 < temp_v0->unk58) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            *(temp_v0->unk60 + ((s64) temp_a2 * 4)) = arg2->unk10;
        }
        temp_v0_2 = ((s32 (*)(s64 *, s32, s32, s32)) arg0->unk18->unkA8)(arg0, arg2->unk8, arg2->unk4, arg2->unk10);
        if (temp_v0_2 != 0) {
            var_v0 = -temp_v0_2;
        } else {
            temp_v0_3 = clip2pane(arg2->unk8, arg0);
            if (temp_v0_3 != NULL) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0_3->unk12 = (s16) ((arg2->unk10 & 4) == 4);
            }
            var_v0 = 0;
        }
    } else {
        var_v0 = 0xE;
    }
    return var_v0;
}

void rrmValidateMGRSwapBufSTREAM(s64 *arg0, s32 arg1, s64 arg14) {
    s64 temp_a3;

    if (arg0 != NULL) {
        temp_a3 = *arg0;
        if (temp_a3 != 0) {
            arg6 = 0;
            arg5 = 0;
            arg4 = arg1;
            arg3 = 3;
            arg2 = 9;
            arg0 = temp_a3;
            GfxIntrMessage(sp, temp_a3);
        }
    }
}

void rrmValidateMGRSwapBuf(s64 *arg0, s64 arg1) {
    if ((arg0 != NULL) && (*arg0 != 0)) {
        streams_timeout(saved_reg_gp, saved_reg_gp->unk-77A8, -0x64, arg0);
    }
}

void rrmGenlockNotifySTREAM(s64 *arg0, s32 arg1, s64 arg14) {
    s64 temp_a3;

    if (arg0 != NULL) {
        temp_a3 = *arg0;
        if (temp_a3 != 0) {
            arg5 = arg1;
            arg4 = 0;
            arg3 = 2;
            arg2 = 0xC;
            arg0 = temp_a3;
            GfxIntrMessage(sp, temp_a3);
        }
    }
}

void rrmGenlockNotify(s64 *arg0, s64 arg1) {
    if ((arg0 != NULL) && (*arg0 != 0)) {
        streams_timeout(saved_reg_gp, saved_reg_gp->unk-77A0, -0x64, arg0);
    }
}

s32 RRM_WaitForRetrace(s64 *arg0, void *arg1) {
    if (RRM_CheckValidFault() < 0) {
        return 0xE;
    }
    rrmInvalidateRN(arg0, arg1, 0x10);
    ((? (*)(s64, void *)) arg0->unk18->unk98)(arg0->unk20, arg1);
    rrmUnMapGfx(arg0);
    return 0;
}

s32 RRM_SetSwapInterval(void *arg1, void *arg2) {
    s32 temp_a4;
    s32 var_v0;

    temp_a4 = arg2->unk4;
    var_v0 = 0x16;
    if (temp_a4 >= 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg1->unk20 = temp_a4;
        arg1->unk78->unk18 = (s32) arg2->unk4;
        var_v0 = 0;
    }
    return var_v0;
}

s32 RRM_Message(s64 *arg0, void *arg1, void *arg2, ? arg4, s64 arg24) {
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_s5;
    s32 temp_s7;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_v0;
    void *temp_s1;

    temp_s1 = arg2;
    temp_s5 = splhi();
    temp_s7 = arg1->unk6 | pane_validmask((void *) arg1->unk78);
    splx(temp_s5);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a2 = temp_s1->unk4 & temp_s7;
    temp_s1->unk4 = temp_a2;
    if (temp_a2 != 0) {
        rrmInvalidateRN(arg0, arg1, (s64) temp_a2);
        invalidate_pane(temp_s1->unk4, arg1->unk78->unk4, arg0);
        rrmUnMapGfx(arg0);
    }
    temp_v0 = *arg0;
    if (temp_v0->unk8 != 0) {
        arg0 = temp_v0;
        arg2 = temp_s1->unk8;
        temp_a0 = temp_s1->unkC;
        var_v0_2 = temp_a0;
        if (temp_a0 >= 0xB) {
            var_v0_2 = 0xA;
        }
        arg3 = var_v0_2;
        bcopy(temp_s1 + 0x10, &arg4, var_v0_2 * 4);
        GfxMessage(sp);
        var_v0 = 0;
    } else {
        var_v0 = 0xE;
    }
    return var_v0;
}

s32 RRM_SetVideoSync(void *arg0, void *arg2) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk20->unk80 = (s32) arg2->unk4;
    return 0;
}

s32 RRM_GetVideoSync(void *arg0, void *arg2, s64 arg3) {
    s32 var_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg2->unk4 = (s32) arg0->unk20->unk80;
    if (copyout((s64) arg2, arg3, 8U) != 0) {
        var_v0 = 0xE;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s32 RRM_WaitVideoSync(s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg6) {
    s32 temp_v0;
    s32 var_v0;
    s64 temp_a2;

    temp_a2 = arg2;
    arg2 = arg1;
    arg4 = temp_a2;
    arg6 = arg3;
    temp_v0 = rrmWaitVideoSync(temp_a2->unk4, temp_a2->unk8);
    if (temp_v0 != 0) {
        var_v0 = temp_v0;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg4->unkC = (s32) arg2->unk98;
        if (copyout(arg4, arg6, 0x10U) != 0) {
            var_v0 = 0xE;
        } else {
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 rrmWaitVideoSync(void *arg0, s64 arg1, s32 arg2, s32 arg3, s64 arg6, s64 arg8, s64 arg10, s64 arg12) {
    s32 temp_v0;
    s32 var_v0;
    s64 temp_a5;

    if ((arg2 <= 0) || (arg3 < 0) || (arg8 = arg0->unk20, arg6 = arg1, ((arg3 < arg2) == 0))) {
        var_v0 = 0x16;
    } else {
        temp_v0 = splhi();
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg6->unkA0 = 0;
        arg6->unk94 = arg3;
        arg6->unk90 = arg2;
        temp_a5 = arg8->unk88;
        arg10 = (s64) temp_v0;
        if (temp_a5 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg6->unkA0 = temp_a5;
            arg8->unk88 = arg6;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg8->unk88 = arg6;
        }
        hold_nonfatalsig(sp, arg6, arg8);
        if (sv_wait_sig(arg6 + 0x30, 0x1E, arg8 + 0x30, arg10) >= 0) {
            release_nonfatalsig(sp);
            var_v0 = 0;
        } else {
            release_nonfatalsig(sp);
            var_v0 = -1;
        }
    }
    return var_v0;
}

void rrmValidateVideoSync(void *arg0) {
    s32 temp_a1;
    s32 temp_s8;
    s64 temp_a0;
    s64 temp_a3;
    s64 temp_s5;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s5;
    u32 temp_hi;
    u32 temp_s7;
    u32 temp_v1;
    u32 var_v0;

    var_s5 = arg0->unk88;
    temp_s8 = splhi();
    var_s1 = var_s5;
    if (var_s5 != 0) {
loop_4:
        if (var_s5->unk40->unk30 & 8) {
            var_v0 = arg0->unk80;
        } else {
            var_v0 = arg0->unk7C;
        }
        temp_v1 = var_s5->unk90;
        temp_hi = var_v0 % temp_v1;
        temp_a1 = var_s5->unk94;
        temp_a0 = var_s5->unkA0;
        temp_a3 = var_s5;
        M2C_TRAP_IF(temp_v1 == 0);
        if (temp_a1 == temp_hi) {
            if (arg0->unk88 == var_s5) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_s5 = temp_a0;
                arg0->unk88 = temp_a0;
                var_s1 = temp_a0;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_s1->unkA0 = temp_a0;
                var_s5 = var_s5->unkA0;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a3->unk98 = var_v0;
            sv_signal(temp_a3 + 0x30, temp_a1, temp_hi, (void *) temp_a3);
        } else {
            var_s1 = var_s5;
            var_s5 = temp_a0;
        }
        if (var_s5 != 0) {
            goto loop_4;
        }
    }
    var_s1_2 = arg0->unkA8;
    temp_s7 = arg0->unkA4 + 1;
    if (var_s1_2 != 0) {
loop_14:
        temp_s5 = var_s1_2->unkA8;
        if (temp_s7 >= (u32) var_s1_2->unk78->unk1C) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_s1_2->unkA8 = 0;
            sv_signal(var_s1_2 + 0x30);
            var_s1_2 = temp_s5;
            if (temp_s5 != 0) {
                goto loop_14;
            }
        }
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unkA8 = var_s1_2;
    splx(temp_s8);
}

s32 RRM_MapClipToSwapbufID(s64 *arg0, void *arg2, s64 arg3) {
    s32 var_v0;
    void *temp_v0;

    temp_v0 = clip2pane(arg2->unk4, arg0);
    if (temp_v0 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg2->unk8 = (s32) temp_v0->unk14;
        if (arg3 == 0) {
            goto block_2;
        }
        goto block_5;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg2->unk8 = -1;
    if (arg3 != 0) {
block_5:
        if (copyout((s64) arg2, arg3, 0xCU) != 0) {
            var_v0 = 0xE;
        } else {
            goto block_2;
        }
    } else {
block_2:
        var_v0 = 0;
    }
    return var_v0;
}

s64 RRM_Dispatch(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg16, s64 arg18, s64 arg20, s64 arg22, s64 arg24, s64 arg26, s64 arg28, s64 arg32, s64 arg34) {
    s32 temp_a1_5;
    s32 temp_v0;
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a2_2;
    s64 temp_a5;
    s64 temp_v0_2;
    s64 var_a1;
    s64 var_a2;
    s64 var_v0;
    void *temp_a2;
    void *var_v0_2;

    if ((arg1 >= 0x3E8) && (arg1 < 0x44C) && (temp_a5 = (arg1 * 0x18) + saved_reg_gp->unk-7798, arg18 = temp_a5, (temp_a5->unk-5DC0 != 0))) {
        if (arg1 != 0x3F3) {
            arg22 = arg0;
            arg20 = arg2;
            arg28 = arg3;
            if (arg1 != 0x3F8) {
                if (copyin(arg20, (s64) sp, arg18->unk-5DB8) != 0) {
                    var_v0 = 0xE;
                } else {
                    goto block_12;
                }
            } else {
                curproc_abi(0x3F3);
                if (copyin_xlate(arg20, sp, arg18->unk-5DB8, saved_reg_gp->unk-7788) != 0) {
                    var_v0 = 0xE;
                } else {
                    goto block_12;
                }
            }
        } else {
            arg22 = arg0;
            arg20 = arg2;
            arg28 = arg3;
            curproc_abi(0x3F3);
            if (copyin_xlate(arg20, sp, arg18->unk-5DB8, saved_reg_gp->unk-7790) != 0) {
                var_v0 = 0xE;
            } else {
block_12:
                temp_v0 = arg18->unk-5DB4;
                arg26 = (s64) temp_v0;
                if ((arg22->unk0->unk8 == arg22) && (temp_v0 != 0)) {
                    temp_v0_2 = arg22->unk20;
                    if (temp_v0_2->unk48 != arg22) {
                        psema(temp_v0_2 + 0x38, 0x219);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        arg22->unk20->unk48 = arg22;
                        if (arg22->unk20->unk68 != 0) {
                            do {
                                us_delay(2);
                            } while (arg22->unk20->unk68 != 0);
                        }
                    }
                }
                temp_a0 = (s32) arg0 & 0xFFFF;
                switch (arg1) {                     /* switch 1; irregular */
                default:                            /* switch 1 */
                default:                            /* switch 2 */
                    temp_a1 = (s32) arg0 & 0xFFFF;
                    if ((temp_a1 != 0) && (temp_a1 < saved_reg_gp->unk0)) {
                        temp_a2 = (temp_a1 * 0xB0) + saved_reg_gp->unk-77D0;
                        var_v0_2 = temp_a2;
                        if ((temp_a2->unk52 != 1) && (temp_a2->unk0 == (s32) arg0)) {
                            if (arg22->unk0->unk8 != arg22) {
                                if (arg26 != 0) {
                                    var_v0 = 0xD;
                                } else if (arg22->unk30 & 8) {
                                    temp_a1_2 = temp_a2->unk38;
                                    if (temp_a1_2 != 0) {
                                        if (!(temp_a1_2->unk30 & 8) || (temp_a1_2->unk20 != arg22->unk20)) {
                                            var_v0 = 0xD;
                                        } else if ((temp_a2->unk54 != 0) && (temp_a2->unk40 != arg22)) {
                                            var_v0 = 0xD;
                                        } else {
                                            goto block_36;
                                        }
                                    } else {
                                        var_v0 = 0x16;
                                    }
                                } else {
                                    var_a1 = arg22->unk40;
                                    if (var_a1 != 0) {
loop_83:
                                        if (var_a1->unk0 != temp_a2) {
                                            var_a1 = var_a1->unk8;
                                            if (var_a1 == 0) {
                                                goto block_85;
                                            }
                                            goto loop_83;
                                        }
                                        if (var_a1 == 0) {
                                            goto block_85;
                                        }
                                        goto block_36;
                                    }
block_85:
                                    var_v0 = 0xD;
                                }
                            } else {
block_36:
                                if (arg26 != 0) {
                                    goto block_37;
                                }
                                if (var_v0_2 == NULL) {
                                    if (arg26 != 0) {
block_37:
loop_38:
                                        M2C_ERROR(/* unknown instruction: ll $a5, ($a6) */);
                                        if (M2C_ERROR(/* unknown instruction: sc $v1, ($a6) */) == 0) {
                                            goto loop_38;
                                        }
                                    }
                                    arg24 = (s64) var_v0_2;
                                    arg16 = temp_a0;
                                    goto block_42;
                                }
                                arg16 = temp_a0;
                                temp_a2_2 = saved_reg_gp->unk-77C8;
                                arg24 = (s64) var_v0_2;
                                psema((((s32) arg0 & 0xFFFF) * 0x10) + temp_a2_2, 0x19, temp_a2_2);
                                if ((arg24->unk52 == 1) || (arg24->unk0 != (s32) arg0)) {
                                    temp_a1_3 = saved_reg_gp->unk-77C8;
                                    vsema((arg16 * 0x10) + temp_a1_3, (s16) temp_a1_3);
                                    var_v0 = 0x16;
                                } else {
block_42:
                                    var_a2 = ((s64 (*)(s64, s64, void *, s64)) arg18->unk-5DC0)(arg22, arg24, sp, arg20);
                                    if (arg26 != 0) {
                                        goto block_43;
                                    }
                                    if (arg24 == 0) {
                                        if (arg26 != 0) {
block_43:
loop_44:
                                            M2C_ERROR(/* unknown instruction: ll $v1, ($a5) */);
                                            if (M2C_ERROR(/* unknown instruction: sc $at, ($a5) */) == 0) {
                                                goto loop_44;
                                            }
                                        }
                                    } else {
                                        temp_a1_4 = saved_reg_gp->unk-77C8;
                                        arg32 = var_a2;
                                        vsema((arg16 * 0x10) + temp_a1_4, (s16) temp_a1_4, (void *) var_a2);
                                        var_a2 = arg32;
                                    }
                                    var_v0 = var_a2;
                                }
                            }
                        } else {
                            var_v0 = 0x16;
                        }
                    } else {
                        var_v0 = 0x16;
                    }
                    break;
                case 0x3F2:                         /* switch 1 */
                case 0x3F3:                         /* switch 1 */
                case 0x3EC:                         /* switch 1 */
                case 0x3F4:                         /* switch 1 */
                case 0x3F9:                         /* switch 1 */
                case 0x3F5:                         /* switch 1 */
                case 0x3F6:                         /* switch 1 */
                case 0x3FB:                         /* switch 1 */
                case 0x3FA:                         /* switch 1 */
                case 0x3F2:                         /* switch 2 */
                case 0x3F3:                         /* switch 2 */
                case 0x3EC:                         /* switch 2 */
                case 0x3F4:                         /* switch 2 */
                case 0x3F9:                         /* switch 2 */
                case 0x3F5:                         /* switch 2 */
                case 0x3F6:                         /* switch 2 */
                case 0x3FB:                         /* switch 2 */
                case 0x3FA:                         /* switch 2 */
                    var_v0_2 = NULL;
block_35:
                    goto block_36;
                case 0x3E8:                         /* switch 1 */
                    if (((s32) arg0 == -1) || ((temp_a1_5 = (s32) arg0 & 0xFFFF, (temp_a1_5 != 0)) && (temp_a1_5 < saved_reg_gp->unk0))) {
                        var_v0_2 = NULL;
                        goto block_36;
                    }
                    var_v0 = 0x16;
                    break;
                case 0x3EA:                         /* switch 1 */
                    if (!((s32) arg0 & 0xFFFF)) {
                        if (arg22->unk30 & 8) {
                            var_v0_2 = NULL;
                            goto block_36;
                        }
                        var_v0 = 0x16;
                    } else {
                        switch (arg1) {             /* switch 2; irregular */
                        case 0x3FC:                 /* switch 1 */
                        case 0x3FC:                 /* switch 2 */
                            var_v0_2 = NULL;
                            goto block_35;
                        }
                    }
                    break;
                }
            }
        }
    } else {
        var_v0 = 0x16;
    }
    return var_v0;
}

s32 irix5_to_RRM_ValidateClip(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0x38U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x38);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x38;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk4 = (s32) temp_a2->unk4;
        arg1->unk8 = (s32) temp_a2->unk8;
        arg1->unkC = (s32) temp_a2->unkC;
        arg1->unk10 = (s32) temp_a2->unk10;
        arg1->unk14 = (s32) temp_a2->unk14;
        arg1->unk18 = (s32) temp_a2->unk18;
        arg1->unk20 = (s64) temp_a2->unk1C;
        arg1->unk28 = (s32) temp_a2->unk20;
        arg1->unk2C = (s32) temp_a2->unk24;
        arg1->unk30 = (s32) temp_a2->unk28;
        arg1->unk34 = (s32) temp_a2->unk2C;
        arg1->unk38 = (s32) temp_a2->unk30;
        arg1->unk3C = (s32) temp_a2->unk34;
    }
    return 0;
}

s32 irix5_to_RRM_GetDisplayModes(s32 arg0, void *arg1, void *arg3, s64 arg2) {
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
        arg1->unk8 = (s64) temp_a2->unk4;
        arg1->unk10 = (s32) temp_a2->unk8;
    }
    return 0;
}
