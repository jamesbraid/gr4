s64 RRM_Dispatch(s64, u32, s64, s64);               /* extern */
? RRM_Exit(void *);                                 /* extern */
? RRM_Init(s64);                                    /* extern */
s64 RRM_ValidFault(void *, s64);                    /* extern */
? RRM_init_panes(s64);                              /* extern */
void *allocb(u32, ?, s32);                          /* extern */
s32 bufcall(s32, ?, s64, void *);                   /* extern */
s32 canput(s64);                                    /* extern */
? cleargfxsched_thread(u64);                        /* extern */
? cn_init(?, ?);                                    /* extern */
s32 copyin(s64, u32 *, ?, s64);                     /* extern */
s32 copyin_xlate(s64, void *, ?, s64);              /* extern */
s32 curproc();                                      /* extern */
? curproc_abi(s64);                                 /* extern */
? curthreadgroup_scan(s64, s64 *);                  /* extern */
u64 curthreadhandle(void *);                        /* extern */
? ddv_destroy_handle(s64);                          /* extern */
? ddv_lock(s64);                                    /* extern */
? ddv_unlock(s64);                                  /* extern */
? delay(?);                                         /* extern */
s64 drv_priv(s64);                                  /* extern */
? flushq(?, u8, s32);                               /* extern */
? freemsg(s64, s64);                                /* extern */
? freesema(s32);                                    /* extern */
s32 getemajor(s32, s32, s64, s64);                  /* extern */
s32 getq(void *);                                   /* extern */
s32 gfxdd_lookup(s64);                              /* extern */
? init_sema(s64, ?, void *, ?);                     /* extern */
? init_sv(s32, ?, s32, ?);                          /* extern */
s64 kern_malloc(u32);                               /* extern */
? ksym_add(void *, s64, ?, s32);                    /* extern */
s32 makedevice(s32, s32);                           /* extern */
? nano_delay(void *);                               /* extern */
s64 proc_name(s32);                                 /* extern */
s32 proc_pid(s32);                                  /* extern */
s32 processors_configured();                        /* extern */
? psema(void *, ?, s64, s64);                       /* extern */
? psignal(s32, s32);                                /* extern */
? putbq(void *, s32);                               /* extern */
? putq(s64, void *, s16);                           /* extern */
? qreply(void *, void *, ?);                        /* extern */
? rrmUnMapGfx(s64);                                 /* extern */
? setgfxsched_thread(u64);                          /* extern */
? sleep(void *, ?);                                 /* extern */
? spinlock_destroy(s32);                            /* extern */
? spinlock_init(void *, void *);                    /* extern */
? streams_lock();                                   /* extern */
? streams_unlock();                                 /* extern */
? sv_destroy(s32);                                  /* extern */
? sv_signal(void *);                                /* extern */
? sv_wait(void *, ?, void *, s32);                  /* extern */
s32 threadgroup_refcnt(s64);                        /* extern */
s32 threadhandle_to_proc(s64, s64);                 /* extern */
u64 threadhandle_to_threadgrouphandle(s64);         /* extern */
s32 valusema(s32, s32, s32);                        /* extern */
? vsema(void *, s64);                               /* extern */
? wakeup(void *);                                   /* extern */
void GfxListReaderLock(s64 arg0, s64, s64);         /* static */
void GfxListReaderUnlock(s64 arg0, s64 arg4);       /* static */
s32 GfxListWriterLock(s64 arg0, s32 arg4, s64 arg6); /* static */
void GfxListWriterUnlock(s64 arg1, s32, s64, s64);  /* static */
s32 gthread_attach_group(s64 arg0, s64 arg1);       /* static */

void gfxtable_readerlock(s32 *arg0) {
    s32 temp_a0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0 = splhi();
    *arg0 += 1;
    splx(temp_a0);
}

void gfxtable_readerunlock(s32 *arg0) {
    s32 temp_a0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0 = splhi();
    *arg0 -= 1;
    splx(temp_a0);
}

void gfxtable_writerlock(s32 *arg0, u64 arg8) {
    s32 *temp_s0;
    s32 var_v0;

    temp_s0 = arg0;
    var_v0 = splhi();
    if (*temp_s0 > 0) {
        do {
            splx(var_v0);
            arg2 = 0x3E8;
            arg0 = NULL;
            nano_delay(sp);
            var_v0 = splhi();
        } while (*temp_s0 > 0);
    }
}

void gfxtable_writerunlock(s32 arg1) {
    splx(arg1);
}

void init_gfx_group_table(s64 arg0) {
    s64 temp_v0;
    s64 var_a0;

    if (saved_reg_gp->unk-77F0 == 0) {
        temp_v0 = kern_malloc(0x80U);
        var_a0 = temp_v0;
        saved_reg_gp->unk-77F0 = temp_v0;
        if (temp_v0 == 0) {
            cmn_err(0, (s8 *) saved_reg_gp->unk-77F0);
            var_a0 = saved_reg_gp->unk-77F0;
        }
        bzero((void *) var_a0, 0x80U);
        spinlock_init(saved_reg_gp - 0x77F4, saved_reg_gp - 0x77E8);
        saved_reg_gp->unk-77F8 = 0;
    }
}

s64 gfx_group_find(u64 arg6, s64 arg8) {
    s32 *temp_s8;
    s32 temp_a0;
    s32 var_s7;
    s64 var_s1;
    u64 temp_v0;

    temp_v0 = threadhandle_to_threadgrouphandle();
    temp_a0 = temp_v0 & 0xF;
    var_s7 = temp_a0;
    if (temp_a0 != 0) {

    } else {
        var_s7 = (temp_v0 >> 0xC) & 0xF;
    }
    temp_s8 = saved_reg_gp - 0x77F8;
    gfxtable_readerlock(temp_s8);
    var_s1 = *(((var_s7 << 0) * 8) + saved_reg_gp->unk-77F0);
    if ((var_s1 != 0) && (*var_s1 != temp_v0)) {
loop_4:
        var_s1 = var_s1->unk18;
        if (var_s1 != 0) {
            if (*var_s1 != temp_v0) {
                goto loop_4;
            }
        }
    }
    gfxtable_readerunlock(temp_s8);
    return var_s1;
}

s64 gfx_group_create(u64 arg0, s64 arg2) {
    s32 temp_v0_4;
    s32 temp_v1;
    s64 temp_a0_2;
    s64 temp_v0;
    s64 var_v0;
    u64 temp_a0;
    u64 temp_a1;
    u64 temp_v0_2;
    u64 temp_v0_3;

    unksp18 = arg0;
    temp_v0 = kern_malloc(0x20U);
    if (temp_v0 == 0) {
        var_v0 = 0;
    } else {
        temp_v0_2 = threadhandle_to_threadgrouphandle(unksp18);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v0->unk8 = 0;
        temp_v0->unk0 = temp_v0_2;
        spinlock_init(temp_v0 + 0x10, saved_reg_gp - 0x77E0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0 = temp_v0->unk0;
        temp_v0_3 = temp_a0 & 0xF;
        temp_a1 = (temp_a0 >> 0xC) & 0xF;
        temp_v0->unkC = 0;
        if (temp_v0_3 != 0) {
            arg0 = temp_v0_3;
        } else {
            arg0 = temp_a1;
        }
        temp_a0_2 = saved_reg_gp - 0x77F8;
        arg2 = temp_a0_2;
        temp_v0_4 = gfxtable_writerlock((s32 *) temp_a0_2, temp_a1);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v1 = (arg0 << 0) * 8;
        temp_v0->unk18 = (s64) *(saved_reg_gp->unk-77F0 + temp_v1);
        *(saved_reg_gp->unk-77F0 + temp_v1) = temp_v0;
        gfxtable_writerunlock((s32) arg2, temp_v0_4);
        var_v0 = temp_v0;
    }
    return var_v0;
}

void gfx_group_destroy(u64 *arg0, s64 arg8) {
    s32 *temp_s7;
    s32 temp_a1_2;
    s64 *var_a5;
    s64 temp_a6_2;
    s64 var_a4;
    s64 var_s0;
    u64 temp_a1;
    u64 temp_a6;
    u64 var_s3;

    temp_a6 = *arg0;
    temp_a1 = temp_a6 & 0xF;
    var_s0 = 0;
    var_s3 = temp_a1;
    if (temp_a1 != 0) {

    } else {
        var_s3 = (temp_a6 >> 0xC) & 0xF;
    }
    temp_s7 = saved_reg_gp - 0x77F8;
    var_a5 = saved_reg_gp->unk-77F0 + ((var_s3 << 0) * 8);
    var_a4 = *var_a5;
    temp_a1_2 = gfxtable_writerlock(temp_s7, temp_a1);
    if ((*var_a5 != 0) && (temp_a6_2 = *(s64) arg0, (*var_a4 != temp_a6_2))) {
loop_4:
        var_a5 = var_a4 + 0x18;
        var_a4 = var_a4->unk18;
        if (var_a4 != 0) {
            if (*var_a4 == temp_a6_2) {
                goto block_6;
            }
            goto loop_4;
        }
    } else {
block_6:
        if (var_a4 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_s0 = var_a4;
            *var_a5 = var_a4->unk18;
        }
    }
    gfxtable_writerunlock((s32) temp_s7, temp_a1_2);
    if (var_s0 != 0) {
        spinlock_destroy(var_s0 + 0x10);
        kern_free((void *) var_s0);
    }
}

void init_gthread_table(s64 arg0) {
    s64 temp_v0;
    s64 var_a0;

    if (saved_reg_gp->unk-77F8 == 0) {
        temp_v0 = kern_malloc(0x80U);
        var_a0 = temp_v0;
        saved_reg_gp->unk-77F8 = temp_v0;
        if (temp_v0 == 0) {
            cmn_err(0, saved_reg_gp->unk-77F0 + 0x30);
            var_a0 = saved_reg_gp->unk-77F8;
        }
        bzero((void *) var_a0, 0x80U);
        spinlock_init(saved_reg_gp - 0x77FC, saved_reg_gp - 0x77E8);
        saved_reg_gp->unk-7800 = 0;
    }
}

s64 gthread_create(u64 arg0) {
    s32 temp_a1;
    s32 temp_v0_3;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_v0;

    unksp8 = arg0;
    temp_v0 = kern_malloc(0x28U);
    if (temp_v0 == 0) {
        var_v0 = 0;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v0->unk18 = 0;
        temp_v0->unk10 = 0;
        temp_v0->unk8 = 0;
        temp_v0->unk0 = unksp8;
        temp_v0_2 = gfx_group_find(unksp8);
        if (temp_v0_2 != 0) {
            gthread_attach_group(temp_v0, temp_v0_2);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a1 = gfxtable_writerlock(saved_reg_gp - 0x7800);
        temp_a3 = (unksp8 >> 8) & 0xFF;
        temp_a2 = temp_a3 * 0x1D;
        temp_v0_3 = ((((unksp8 >> 0x18) & 0xFF) ^ ((((unksp8 >> 0x10) & 0xFF) ^ temp_a2) * 0x1D)) & 0xF) * 8;
        temp_v0->unk20 = (s64) *(saved_reg_gp->unk-77F8 + temp_v0_3);
        *(saved_reg_gp->unk-77F8 + temp_v0_3) = temp_v0;
        gfxtable_writerunlock((s32) (saved_reg_gp - 0x7800), temp_a1, temp_a2, temp_a3);
        var_v0 = temp_v0;
    }
    return var_v0;
}

void gthread_destroy(u64 arg0) {
    s32 temp_a1;
    s64 *var_a4;
    s64 temp_a2;
    s64 var_a0;
    s64 var_s0;

    var_s0 = 0;
    temp_a2 = (arg0 >> 8) & 0xFF;
    temp_a1 = gfxtable_writerlock(saved_reg_gp - 0x7800);
    var_a4 = saved_reg_gp->unk-77F8 + (((((arg0 >> 0x18) & 0xFF) ^ ((((arg0 >> 0x10) & 0xFF) ^ (temp_a2 * 0x1D)) * 0x1D)) & 0xF) * 8);
    var_a0 = *var_a4;
    if ((*var_a4 != 0) && (*var_a0 != arg0)) {
loop_2:
        var_a4 = var_a0 + 0x20;
        var_a0 = var_a0->unk20;
        if (var_a0 != 0) {
            if (*var_a0 == arg0) {
                goto block_4;
            }
            goto loop_2;
        }
    } else {
block_4:
        if (var_a0 != 0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_s0 = var_a0;
            *var_a4 = var_a0->unk20;
        }
    }
    gfxtable_writerunlock((s32) (saved_reg_gp - 0x7800), temp_a1, temp_a2);
    if (var_s0 != 0) {
        kern_free((void *) var_s0);
    }
}

s32 gthread_attach_list(void *arg0, s32 *arg1, s64 arg4, s64 arg6) {
    s32 *var_s0;
    s32 var_v0;
    s64 temp_v0;
    void *var_a0;

    var_a0 = arg0;
    var_s0 = arg1;
    if (arg1 != NULL) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        *var_s0 += 1;
        goto block_2;
    }
    arg4 = (s64) var_a0;
    temp_v0 = kern_malloc(0x20U);
    arg0 = temp_v0;
    var_s0 = (s32 *) temp_v0;
    if (temp_v0 == 0) {
        var_v0 = 0;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        ((s64) arg0)->unk4 = 0;
        ((s64) arg0)->unk18 = 0;
        ((s64) arg0)->unk0 = 1;
        init_sv((s64) arg0 + 8, 0, saved_reg_gp - 0x77D8, -1);
        spinlock_init((s64) arg0 + 0x10, saved_reg_gp - 0x77D0);
        var_a0 = (void *) arg4;
block_2:
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a0->unk10 = (s64) var_s0;
        var_v0 = 1;
    }
    return var_v0;
}

s32 gthread_detach_list(void *arg0, s64 arg2) {
    s32 temp_at;
    s64 temp_v0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_v0 = arg0->unk10;
    arg0->unk10 = 0;
    temp_at = *temp_v0 - 1;
    arg0 = temp_v0;
    *temp_v0 = temp_at;
    if (temp_at == 0) {
        spinlock_destroy((s64) arg0 + 0x10);
        sv_destroy((s64) arg0 + 8);
        kern_free((void *) (s64) arg0);
    }
    return 1;
}

s32 gthread_attach_group(void *arg0, void *arg1) {
    s32 temp_a0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0 = splhi();
    arg1->unk8 = (s32) (arg1->unk8 + 1);
    splx(temp_a0);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk18 = (s64) arg1;
    return 1;
}

s32 gthread_detach_group(void *arg0, s64 arg2) {
    s32 temp_a0_2;
    s64 temp_v0;
    void *temp_a0;

    temp_a0 = arg0;
    temp_v0 = temp_a0->unk18;
    if (temp_v0 == 0) {
        return 0;
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0 = temp_v0;
    temp_a0->unk18 = 0;
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0_2 = splhi();
    ((s64) arg0)->unk8 = (s32) (((s64) arg0)->unk8 - 1);
    splx(temp_a0_2);
    return 1;
}

s64 gthread_find(u64 arg0) {
    s32 temp_a1;
    s64 temp_a2;
    s64 var_s5;

    gfxtable_readerlock(saved_reg_gp - 0x7800);
    temp_a2 = (arg0 >> 8) & 0xFF;
    temp_a1 = (arg0 >> 0x10) & 0xFF;
    var_s5 = *(((((((temp_a2 * 0x1D) ^ temp_a1) * 0x1D) ^ ((arg0 >> 0x18) & 0xFF)) & 0xF) * 8) + saved_reg_gp->unk-77F8);
    if ((var_s5 != 0) && (*var_s5 != arg0)) {
loop_2:
        var_s5 = var_s5->unk20;
        if (var_s5 != 0) {
            if (*var_s5 != arg0) {
                goto loop_2;
            }
        }
    }
    gfxtable_readerunlock(saved_reg_gp - 0x7800, temp_a1, temp_a2);
    return var_s5;
}

s64 gthread_find_gfxp(void) {
    s64 temp_a2;
    s64 temp_v0;
    s64 var_v0;

    temp_v0 = gthread_find();
    if ((temp_v0 != 0) && (temp_a2 = temp_v0->unk10, (temp_a2 != 0))) {
        var_v0 = temp_a2->unk18;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s64 gthread_scan(s64 arg0, s64 arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10) {
    s64 temp_v0;
    s64 var_s0;
    s64 var_s1;
    s64 var_v0;

    arg4 = arg0;
    arg6 = arg1;
    if (((s32 (*)(?, ?)) arg0)(0, 0) != 0) {
        var_v0 = 0;
    } else {
        gfxtable_readerlock(saved_reg_gp - 0x7800);
        var_s1 = 0;
loop_5:
        var_s0 = *((var_s1 * 8) + saved_reg_gp->unk-77F8);
        var_s1 += 1;
        if (var_s0 != 0) {
loop_6:
            if (var_s0->unk8 & 4) {
                goto block_7;
            }
            temp_v0 = ((s64 (*)(s64, s64, ?, s64)) arg4)(var_s0, arg6, 1, arg4);
            arg2 = temp_v0;
            if (temp_v0 == 0) {
block_7:
                var_s0 = var_s0->unk20;
                if (var_s0 == 0) {
                    goto block_4;
                }
                goto loop_6;
            }
            gfxtable_readerunlock(saved_reg_gp - 0x7800);
            var_v0 = arg2;
        } else {
block_4:
            if (var_s1 < 0x10) {
                goto loop_5;
            }
            gfxtable_readerunlock(saved_reg_gp - 0x7800);
            var_v0 = ((s64 (*)(?, s64, ?)) arg4)(0, arg6, 2);
        }
    }
    return var_v0;
}

s32 GfxRegisterBoard(s64 arg0, s64 arg1, s64 arg2, s64 arg4) {
    s32 temp_a4;
    s64 temp_a6;
    s64 temp_v0;

    arg4 = arg1;
    if (saved_reg_gp->unk-77FC >= saved_reg_gp->unk0) {
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x60);
        return -1;
    }
    temp_v0 = kern_malloc(0x48U);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    *(((s64) saved_reg_gp->unk-77FC * 8) + saved_reg_gp->unk-77C8) = temp_v0;
    bzero((void *) temp_v0, 0x48U);
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a6 = saved_reg_gp->unk-77C8;
    (*(((s64) saved_reg_gp->unk-77FC * 8) + temp_a6))->unk38 = arg0;
    (*(((s64) saved_reg_gp->unk-77FC * 8) + temp_a6))->unk40 = arg4;
    **(((s64) saved_reg_gp->unk-77FC * 8) + temp_a6) = arg2;
    temp_a4 = saved_reg_gp->unk-77FC;
    (*(((s64) temp_a4 * 8) + temp_a6))->unk18 = temp_a4;
    saved_reg_gp->unk-77FC = (s32) (saved_reg_gp->unk-77FC + 1);
    RRM_Init(arg4);
    return 0;
}

s32 gfx_disp(s64 arg6) {
    s32 temp_a1;
    s32 temp_a2;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_s1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_s7;
    s64 var_v0_2;

    temp_v0 = gthread_find();
    if ((temp_v0 != 0) && (temp_a0 = temp_v0->unk10, (temp_a0 != 0))) {
        var_v0_2 = temp_a0->unk18;
    } else {
        var_v0_2 = 0;
    }
    var_s7 = var_v0_2;
    if (var_v0_2 != 0) {
loop_11:
        temp_s1 = var_s7->unk20;
        if (temp_s1 != 0) {
            if (temp_s1->unk68 > 0) {
                temp_v0_2 = temp_s1->unk70;
                if (temp_v0_2 != 0) {
                    if (((s32 (*)(s64)) temp_v0_2)(temp_s1) == 0) {
                        goto block_6;
                    }
                    goto block_8;
                }
block_6:
                if (!(var_s7->unk30 & 3) && (temp_s1->unk48 != var_s7)) {
                    goto block_8;
                }
                goto block_16;
            }
block_8:
            temp_v0_3 = temp_v0->unk18;
            if ((temp_v0_3 == 0) || (var_s7->unk30 & 8)) {
                goto block_10;
            }
            if ((temp_s1->unk48 == var_s7) && (temp_s1->unk50 == 0) && (temp_a1 = temp_v0->unk8 & 4, (temp_a1 == 0)) && (temp_a2 = temp_s1->unk78, (temp_a2 == 0)) && (temp_v0_3->unkC != 0) && (valusema(temp_s1 + 0x38, temp_a1, temp_a2) < 0)) {
block_16:
                var_v0 = 0;
            } else {
                goto block_10;
            }
        } else {
block_10:
            var_s7 = var_s7->unk10;
            if (var_s7 != 0) {
                goto loop_11;
            }
            goto block_18;
        }
    } else {
block_18:
        var_v0 = 1;
    }
    return var_v0;
}

s32 gfx_fault(void *arg1, ? arg2, s64 arg6, s64 arg8) {
    s32 var_v0;
    s64 temp_v0;
    s64 var_v0_2;

    temp_v0 = gthread_find(curthreadhandle());
    if (temp_v0 != 0) {
        if ((temp_v0->unk18 != 0) && !(arg1->unk30 & 8)) {
            psema(arg1 + 0x50, 0x19);
        }
        if (arg1->unk30 & 1) {
            ((? (*)(void *)) arg1->unk18->unk70)(arg1);
        }
        var_v0_2 = RRM_ValidFault(arg1, unksp8);
        if ((temp_v0->unk18 != 0) && !(arg1->unk30 & 8)) {
            arg8 = var_v0_2;
            vsema(arg1 + 0x50);
            var_v0_2 = arg8;
        }
        if (var_v0_2 >= 0) {
            var_v0 = 0;
        } else {
            var_v0 = 1;
        }
    } else {
        var_v0 = 1;
    }
    return var_v0;
}

s32 gfx_exit(s64 arg0, s64 arg2, s64 arg6, s64 arg8) {
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a1;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_v0;

    temp_v0 = gthread_find(curthreadhandle());
    if (temp_v0 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a0 = temp_v0->unk10;
        temp_v0->unk8 = (s32) (temp_v0->unk8 | 4);
        if (temp_v0->unk18 != 0) {
            if (temp_a0 != 0) {
                GfxListReaderLock(temp_a0);
                temp_a0_2 = temp_v0->unk10;
                var_s1 = temp_a0_2->unk18;
                if ((var_s1 == 0) || (var_s1->unk30 & 8)) {
                    GfxListReaderUnlock(temp_a0_2);
                } else {
                    arg2 = splhi();
                    if (threadgroup_refcnt(temp_v0->unk0) == 1) {
loop_25:
                        temp_v0_2 = var_s1->unk20;
                        if ((temp_v0_2 != 0) && (temp_v0_2->unk48 == var_s1)) {
                            temp_a3 = var_s1->unk18->unkC0;
                            arg0 = splhi();
                            if (temp_a3 != 0) {
                                ((? (*)(s64)) temp_a3)(var_s1);
                            }
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_a1 = var_s1->unk20;
                            temp_a1->unk48 = 0;
                            vsema(var_s1->unk20 + 0x38, temp_a1);
                            splx((s32) arg0);
                        }
                        var_s1 = var_s1->unk10;
                        if (var_s1 != 0) {
                            goto loop_25;
                        }
                    }
                    splx((s32) arg2);
                    GfxListReaderUnlock(temp_v0->unk10);
                }
            }
        } else {
            if (temp_a0 != 0) {
                var_v0 = temp_a0->unk18;
            } else {
                var_v0 = 0;
            }
            var_s1_2 = var_v0;
            if (var_v0 != 0) {
loop_12:
                temp_v0_3 = var_s1_2->unk18;
                if (temp_v0_3 != 0) {
                    temp_a3_2 = temp_v0_3->unk38;
                    if (temp_a3_2 != 0) {
                        ((? (*)(s64)) temp_a3_2)(var_s1_2);
                    }
                }
                var_s1_2 = var_s1_2->unk10;
                if (var_s1_2 != 0) {
                    goto loop_12;
                }
            }
        }
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x28, 0x2c], gap at: 0x20. */
void gfx_shcheck(s64 arg0, s64 arg2, s64 arg12, s64 arg14, s64 arg16) {
    s32 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a1;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_s1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_a0;
    s64 var_s0;
    s64 var_s2_2;
    s64 var_v0;
    void *var_s2;
    void *var_s4;

    unksp20 = arg0;
    temp_v0 = gthread_find();
    var_s0 = temp_v0;
    if (temp_v0 != 0) {
        temp_s1 = temp_v0->unk10;
        if (temp_s1 == 0) {
            goto block_2;
        }
        arg0 = GfxListWriterLock(temp_s1);
        if (temp_s1 != 0) {
            var_s4 = (void *) temp_s1->unk18;
        } else {
block_2:
            var_s4 = NULL;
        }
        var_s2 = var_s4;
        if (var_s4 != NULL) {
            if (var_s4->unk30 & 8) {
                var_v0 = 1;
            } else {
                if (!(var_s0->unk8 & 2)) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_a2 = var_s0->unk18;
                    temp_a0 = splhi();
                    temp_a2->unkC = (s32) (temp_a2->unkC - 1);
                    splx(temp_a0);
                }
                unksp18 = var_s0->unk18->unkC == 0;
                gthread_detach_list((void *) var_s0);
                gthread_detach_group((void *) var_s0);
                cleargfxsched_thread(var_s0->unk0);
                var_v0 = unksp18;
                var_s0 = 0;
            }
        } else {
            var_v0 = 0;
        }
        if ((var_v0 != 0) && (var_s4 != NULL)) {
loop_11:
            temp_v0_2 = var_s2->unk20;
            if ((temp_v0_2 != 0) && (temp_v0_2->unk48 == var_s2) && (temp_v0_2->unk50 == 0)) {
                temp_a3 = var_s2->unk18->unkC0;
                arg2 = splhi();
                if (temp_a3 != 0) {
                    ((? (*)(void *)) temp_a3)(var_s2);
                }
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_a1 = var_s2->unk20;
                temp_a1->unk48 = 0;
                vsema(var_s2->unk20 + 0x38, temp_a1);
                splx((s32) arg2);
            }
            var_s2 = (void *) var_s2->unk10;
            if (var_s2 != NULL) {
                goto loop_11;
            }
        }
        if (temp_s1 != 0) {
            GfxListWriterUnlock(temp_s1, (s32) arg0);
        }
        if (var_s0 != 0) {
            temp_v0_3 = var_s0->unk10;
            if (temp_v0_3 != 0) {
                temp_a0_2 = temp_v0_3->unk18;
                if ((temp_a0_2 == 0) || (temp_a0_2->unk30 & 8)) {
                    if (temp_v0_3 != 0) {
                        var_a0 = temp_v0_3->unk18;
                    } else {
                        goto block_24;
                    }
                    goto block_25;
                }
            } else {
block_24:
                var_a0 = 0;
block_25:
                var_s2_2 = var_a0;
                if (var_a0 != 0) {
loop_28:
                    temp_a0_3 = var_s2_2->unk28;
                    if (temp_a0_3 != 0) {
                        ddv_destroy_handle(temp_a0_3);
                    }
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_s2_2->unk28 = 0;
                    var_s2_2 = var_s2_2->unk10;
                    if (var_s2_2 != 0) {
                        goto loop_28;
                    }
                }
                if ((void *) var_s0->unk10 != NULL) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    ((void *) var_s0->unk10)->unk18 = 0;
                }
                gthread_detach_list((void *) var_s0);
                gthread_detach_group((void *) var_s0);
                cleargfxsched_thread(var_s0->unk0);
                gthread_destroy(var_s0->unk0);
            }
        } else {
            gthread_destroy(unksp20);
        }
    }
}

void gfx_shdup(u64 arg1, s64 arg0, u64 arg2) {
    s64 temp_a5;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;

    arg2 = arg1;
    temp_v0 = gthread_find();
    if (temp_v0 != 0) {
        temp_a5 = temp_v0->unk10;
        if (temp_a5 != 0) {
            temp_v0_2 = temp_a5->unk18;
            if (temp_v0_2 != 0) {
                arg0 = temp_v0;
                if (!(temp_v0_2->unk30 & 8)) {
                    temp_v0_3 = gthread_create(arg2);
                    if (temp_v0_3 != 0) {
                        gthread_attach_list(temp_v0_3, (s32 *) arg0->unk10);
                        setgfxsched_thread(arg2);
                    }
                }
            }
        }
    }
}

s32 GfxKiller(s64 arg0, s64 arg1, s32 arg2, s64 arg3, s64 arg4) {
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a3;
    s64 var_ra;

    var_ra = saved_reg_ra;
    temp_a0 = arg0;
    var_a3 = arg3;
    arg0 = arg1;
    if ((arg2 != 0) && (arg2 != 2) && (arg2 == 1)) {
        temp_a0_2 = arg0->unk10;
        if (temp_a0_2 != 0) {
            if ((temp_a0_2 != temp_a0) || (var_a3 = temp_a0_2->unk18, (var_a3 != temp_a0->unk18))) {
                goto block_6;
            }
        } else {
block_6:
            temp_a0_3 = temp_a0->unk10;
            if (temp_a0->unk18 != 0) {
                if (temp_a0_3 != 0) {
                    GfxListReaderLock(temp_a0_3, temp_a0->unk18, var_a3);
                    var_ra = arg4;
                    goto block_9;
                }
                goto block_11;
            }
block_9:
            if ((void *) temp_a0->unk10 != NULL) {
                var_a1 = ((void *) temp_a0->unk10)->unk18;
            } else {
block_11:
                var_a1 = 0;
            }
            var_a0 = var_a1;
            if (var_a1 != 0) {
                temp_a1 = arg0->unk8;
loop_14:
                if (var_a0->unk20 != temp_a1) {
                    var_a0 = var_a0->unk10;
                    if (var_a0 != 0) {
                        goto loop_14;
                    }
                } else {
                    arg4 = var_ra;
                    psignal(threadhandle_to_proc(temp_a0->unk0, temp_a1), arg0->unk0);
                    var_ra = arg4;
                }
            }
            if (temp_a0->unk18 != 0) {
                temp_a0_4 = temp_a0->unk10;
                if (temp_a0_4 != 0) {
                    arg4 = var_ra;
                    GfxListReaderUnlock(temp_a0_4);
                }
            }
        }
    }
    return 0;
}

void gfxcleanup(void *arg0) {
    if (arg0->unk34 == 0) {
        kern_free(arg0);
    }
}

s32 GfxOpen(s64 arg0, s64 arg1, s32 arg3, s64 arg6, s64 arg8, s64 arg10, s64 arg12) {
    s32 temp_a1;
    s32 var_a0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a0_2;
    s64 var_v0;

    arg8 = arg0;
    arg10 = arg1;
    var_a0 = 0x13;
    if (arg3 == 2) {
        temp_v0 = gthread_find_gfxp(curthreadhandle((void *)0x13));
        var_a0_2 = temp_v0;
        if (temp_v0 != 0) {
            if (temp_v0->unk10 != 0) {
                var_v0 = var_a0_2->unk10;
                do {
                    var_a0_2 = var_v0;
                    var_v0 = var_v0->unk10;
                } while (var_v0 != 0);
            }
            arg6 = var_a0_2;
            if (var_a0_2->unk20 == 0) {
                var_a0 = 0x13;
            } else {
                arg0 = 9;
                arg2 = arg6->unk20;
                arg4 = gthread_find(curthreadhandle((void *) var_a0_2));
                gthread_scan(saved_reg_gp->unk-77C0, (s64) sp);
                streams_unlock();
                if (arg6->unk20->unk10 != 0) {
                    do {
                        delay(0x64);
                    } while (arg6->unk20->unk10 != 0);
                }
                streams_lock();
                temp_v0_2 = arg6->unk0;
                var_a0 = 1;
                if (temp_v0_2->unk8 != 0) {

                } else {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0_2->unk8 = arg6;
                    *arg6->unk20 = arg6;
                    RRM_init_panes(arg6);
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    arg6->unk0->unk20 = arg8;
                    arg6->unk0->unk28 = (s64) (arg8 + 0x90);
                    arg8->unkB8 = arg6;
                    arg8->unk28 = arg6;
                    temp_a1 = arg6->unk34 | 1;
                    arg6->unk34 = temp_a1;
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_a0 = 0;
                    *arg10 = makedevice(getemajor(*arg10, temp_a1, arg6, arg8), arg6->unk0->unk18);
                }
            }
        } else {
            var_a0 = 0x13;
        }
    }
    return var_a0;
}

void GfxUnmanage(void *arg0, s32 arg6) {
    s64 temp_a1;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 var_ra;
    void *temp_s0;

    var_ra = saved_reg_ra;
    temp_v0 = arg0->unk20;
    temp_s0 = arg0;
    if (temp_v0->unk48 != arg0) {
        psema(temp_v0 + 0x38, 0x219);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_s0->unk20->unk48 = (s64) temp_s0;
        var_ra = unksp30;
        if (temp_s0->unk20->unk68 != 0) {
            do {
                us_delay(2);
            } while (temp_s0->unk20->unk68 != 0);
            var_ra = unksp30;
        }
    }
    temp_v0_2 = temp_s0->unk0;
    if (temp_v0_2 != 0) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_v0_2->unk8 = 0;
        temp_s0->unk20->unk0 = 0;
        temp_s0->unk0->unk20 = 0;
        unksp30 = var_ra;
        temp_s0->unk0->unk28 = 0;
    }
    arg0 = (void *)9;
    unksp30 = var_ra;
    arg2 = temp_s0->unk20;
    arg4 = gthread_find(curthreadhandle());
    gthread_scan(saved_reg_gp->unk-77C0, (s64) sp);
    temp_v0_3 = temp_s0->unk20->unk48;
    if (temp_s0->unk0->unk18 != 0) {
        if (temp_v0_3 == temp_s0) {
            temp_a3 = temp_s0->unk18->unkC0;
            unksp28 = splhi();
            if (temp_a3 != 0) {
                ((? (*)(void *)) temp_a3)(temp_s0);
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a1 = temp_s0->unk20;
            temp_a1->unk48 = 0;
            vsema(temp_s0->unk20 + 0x38, temp_a1);
            splx((s32) unksp28);
        }
    } else {
        if (temp_v0_3 == temp_s0) {
            temp_a3_2 = temp_s0->unk18->unkC0;
            arg6 = splhi();
            if (temp_a3_2 != 0) {
                ((? (*)(void *)) temp_a3_2)(temp_s0);
            }
        }
        cn_init(0, 1);
        temp_v0_4 = temp_s0->unk20;
        if (temp_v0_4->unk48 == temp_s0) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_v0_4->unk48 = 0;
            vsema(temp_s0->unk20 + 0x38);
            splx(arg6);
        }
    }
}

s32 GfxClose(void *arg0) {
    s64 temp_a0;
    s64 temp_s0;

    temp_s0 = arg0->unk28;
    if (temp_s0->unk20 == 0) {
        temp_a0 = temp_s0->unk0;
        if ((temp_a0 != 0) && (temp_a0->unk8 == temp_s0)) {
            GfxUnmanage((void *) temp_s0);
        }
    }
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_s0->unk34 = (s32) (temp_s0->unk34 & ~1);
    gfxcleanup((void *) temp_s0);
    return 0;
}

s32 GfxProto(void *arg0, void *arg1, s64 arg2, s64 arg4) {
    s64 temp_a5;
    s64 temp_a6;
    s64 temp_a7;
    void *temp_a2;
    void *var_a1;

    var_a1 = arg1;
    temp_a7 = var_a1->unk18;
    temp_a2 = temp_a7->unk0;
    temp_a5 = arg0->unk28;
    if ((temp_a2 != (void *)0x66) && (temp_a2 != (void *)0x53484951)) {
        if (temp_a2 == (void *)0x53484D51) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a5->unk0->unk30 = (s16) temp_a7->unk4;
            temp_a5->unk0->unk32 = (s16) temp_a7->unk6;
            temp_a7->unk0 = (void *)0x514D4853;
            qreply(arg0, temp_a2, 0x53484D51);
        } else {
            arg0 = (s64) var_a1;
            cmn_err(4, saved_reg_gp->unk-77F0 + 0x80, temp_a2, 0x53484D51);
            freemsg((s64) arg0);
        }
    } else {
        temp_a6 = temp_a5->unk18;
        arg2 = (s64) arg0;
        if ((temp_a6 != 0) && (arg0 = (s64) var_a1, var_a1 = (void *) (s64) arg0, (((s32 (*)(s64, s32, s32, ?)) temp_a6->unk30)(temp_a5->unk20, (s32) temp_a7->unk4, temp_a7->unk8, 0x53484D51) != 0))) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_a1->unk28->unk1E = 0x8A;
            qreply((void *) arg2, var_a1);
        } else {
            freemsg((s64) var_a1, (s64) var_a1);
        }
    }
    return 0;
}

s32 GfxWput(void *arg1, s64 arg0, s64 arg2) {
    s32 temp_a3;
    s32 var_v0;
    u8 temp_a2;

    temp_a2 = arg1->unk28->unk1E;
    arg0 = (s64) arg1;
    switch (temp_a2) {                              /* irregular */
    default:
        cmn_err(4, saved_reg_gp->unk-77F0 + 0xB8, temp_a2, arg0);
block_4:
        freemsg(arg0);
        var_v0 = 0;
        break;
    case 0x86:
        temp_a3 = ((u64) ((s64) *arg0->unk18 << 0x20) >> 0x20) & 2;
        if (temp_a3 != 0) {
            flushq(0, temp_a2, temp_a3);
        }
        goto block_4;
    case 0x1:
    case 0x83:
        var_v0 = GfxProto((void *) arg0, (void *) temp_a2, 0x83);
        break;
    }
    return var_v0;
}

void sendMsg(void *arg0, void *arg1, s64 arg4, s64 arg6) {
    s16 var_a2;
    s32 temp_a4;
    s32 temp_at;
    s64 temp_a3;
    s64 temp_s5;
    s64 var_a0;
    void *temp_v0;

    temp_a3 = arg1->unk0->unk8;
    if ((temp_a3 != 0) && (temp_a3->unk34 & 1)) {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a4 = arg1->unkC;
        temp_s5 = arg0->unk20;
        arg0->unk20 = (s64) (((((s64) temp_a4 * 4) - temp_a4) * 4) + temp_s5);
        bzero((void *) temp_s5, arg1->unkC * 0xC);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        var_a2 = arg1->unk0->unk32;
        temp_s5->unk2 = var_a2;
        temp_s5->unk5 = (s8) arg1->unkC;
        var_a0 = arg1->unkC - 1;
        if (var_a0 != -1) {
            do {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_v0 = (var_a0 * 0xC) + temp_s5;
                temp_v0->unk0 = (s16) arg1->unk0->unk30;
                var_a2 = arg1->unk0->unk32;
                temp_v0->unk4 = (s8) var_a2;
                temp_at = var_a0 * 4;
                temp_v0->unk6 = (u8) arg1->unk8;
                var_a0 -= 1;
                temp_v0->unk8 = (s32) (temp_at + arg1)->unk10;
            } while (var_a0 != -1);
        }
        putq(arg1->unk0->unk20, arg0, var_a2);
    }
}

s32 GfxDelayedMessage(void *arg0) {
    s32 temp_a2;
    s32 var_v0;
    void *temp_v0;

    temp_a2 = arg0->unkC;
    temp_v0 = allocb(temp_a2 * 0xC, 3, temp_a2);
    if (temp_v0 == NULL) {
        if (bufcall(arg0->unkC * 0xC, 3, saved_reg_gp->unk-77B8, arg0) != 0) {
            var_v0 = 1;
        } else {
            cmn_err(4, saved_reg_gp->unk-77F0 + 0xF0);
            goto block_4;
        }
    } else {
        sendMsg(temp_v0, arg0);
block_4:
        wakeup(arg0);
        kern_free(arg0);
        var_v0 = 0;
    }
    return var_v0;
}

s32 GfxSendMessage(void *arg0, s32 arg1, s64 arg4, s64 arg6, s64 arg8) {
    s32 var_s2_2;
    s32 var_v0;
    u32 var_s2;
    void *temp_v0;
    void *var_s1;

    var_v0 = 1;
    if (arg0 != NULL) {
        if (arg1 == 0) {
            streams_lock();
        }
        var_s1 = NULL;
        var_s2 = arg0->unkC * 0xC;
        temp_v0 = allocb(var_s2, 3);
        if (temp_v0 == NULL) {
            if (arg1 == 0) {
                var_s2 = (arg0->unkC * 4) + 0x34;
                var_s1 = kern_malloc(var_s2);
            }
            if (var_s1 == NULL) {
                cmn_err(4, saved_reg_gp->unk-77F0 + 0x118);
                var_s2_2 = 1;
            } else {
                bcopy(arg0, var_s1, var_s2);
                var_s2_2 = 0;
                if (bufcall(arg0->unkC * 0xC, 3, saved_reg_gp->unk-77B8, var_s1) == 0) {
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0xF0);
                    kern_free(var_s1);
                    var_s2_2 = 1;
                }
            }
        } else {
            sendMsg(temp_v0, arg0);
            var_s2_2 = 0;
        }
        if (arg1 == 0) {
            streams_unlock();
        }
        if (var_s1 != NULL) {
            sleep(var_s1, 0x19);
        }
        var_v0 = var_s2_2;
    }
    return var_v0;
}

void GfxMessage(void) {
    GfxSendMessage(NULL);
}

void GfxIntrMessage(void) {
    GfxSendMessage((void *)1);
}

s32 GfxRqService(void *arg0) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s1;
    s32 var_v0;
    s64 temp_a0;

    temp_v0 = getq();
    var_s1 = temp_v0;
    if (temp_v0 != 0) {
loop_1:
        if (canput(arg0->unk18) != 0) {
            temp_a0 = arg0->unk18;
            ((? (*)(s64, s32)) **temp_a0)(temp_a0, var_s1);
            temp_v0_2 = getq(arg0);
            var_s1 = temp_v0_2;
            if (temp_v0_2 == 0) {
                goto block_3;
            }
            goto loop_1;
        }
        putbq(arg0, var_s1);
        var_v0 = 1;
    } else {
block_3:
        var_v0 = 0;
    }
    return var_v0;
}

void GfxDetach(void *arg0) {
    s64 temp_a0;
    s64 temp_a3;

    if (arg0->unk18 != 0) {
        temp_a0 = arg0->unk28;
        if ((temp_a0 != 0) && (gfxdd_lookup(temp_a0) == 0)) {
            ddv_destroy_handle(arg0->unk28);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk28 = 0;
        }
        RRM_Exit(arg0);
        if (arg0->unk28 != 0) {
            ((? (*)(void *)) arg0->unk18->unk10)(arg0);
        }
        streams_lock();
        if (arg0->unk0->unk8 == arg0) {
            GfxUnmanage(arg0);
        }
        streams_unlock();
        temp_a3 = arg0->unk0;
        if (temp_a3->unk10 == arg0) {
            bzero(temp_a3->unk0 + 0x10, 0x10U);
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg0->unk0->unk10 = 0;
        }
    }
    streams_lock();
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg0->unk18 = 0;
    arg0->unk0 = 0;
    arg0->unk20 = 0;
    streams_unlock();
}

void gfxinit(s64 arg0, s64 arg2) {
    s32 temp_a2;
    s32 temp_s0;
    s64 temp_v0;

    temp_a2 = saved_reg_gp->unk0;
    if (temp_a2 <= 0x20000) {

    } else {
        cmn_err(4, saved_reg_gp->unk-77F0 + 0x148, temp_a2, 0x20000);
        saved_reg_gp->unk0 = 0x20000;
    }
    init_sema(saved_reg_gp->unk-77B0, 1, saved_reg_gp->unk-77F0 + 0x1C0, -1);
    init_sema(saved_reg_gp->unk-77B0 + 0x10, 1, saved_reg_gp->unk-77F0 + 0x1D8, -1);
    temp_s0 = processors_configured();
    init_gfx_group_table();
    init_gthread_table();
    temp_v0 = kern_calloc(temp_s0, 0x20);
    saved_reg_gp->unk-77E8 = temp_v0;
    ksym_add(saved_reg_gp - 0x77A8, temp_v0, 0x20, temp_s0);
}

s32 gfx_conflict_scan(void *arg0, void *arg1, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10) {
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a1;
    s64 temp_a1_2;
    s64 var_a0;
    s64 var_s1;

    if (arg2 != 1) {
        goto block_1;
    }
    temp_a1 = arg0->unk18;
    if ((temp_a1 == 0) || (*temp_a1 != arg1->unk8)) {
block_1:
        var_v0 = 0;
    } else {
        temp_a1_2 = arg0->unk10;
        var_a0 = 0;
        arg0 = (s64) arg1->unk0;
        if (temp_a1_2 != 0) {
            var_a0 = temp_a1_2->unk18;
        }
        var_s1 = var_a0;
        if (var_a0 != 0) {
            arg2 = (s64) arg1;
loop_10:
            temp_a0 = var_s1 + 0x50;
            arg4 = temp_a0;
            psema((void *) temp_a0, 0x19);
            arg6 = ((var_s1->unk30 & 8) == 8) ? 1 : 2;
            vsema((void *) arg4);
            if (arg6 == (s64) arg0) {
                var_s1 = var_s1->unk10;
                if (var_s1 == 0) {
                    goto block_12;
                }
                goto loop_10;
            }
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            var_v0 = 1;
            *arg2 = 3;
        } else {
block_12:
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 irisgl_sproc_setup_scan(u64 arg0, s64 *arg1, s64 arg2, s64 arg4, u64 arg6, s64 arg8) {
    s32 temp_a1;
    s64 temp_v0;

    arg6 = arg0;
    arg4 = (s64) arg1;
    if (*arg1 != arg0) {
        temp_v0 = gthread_create(arg6);
        arg2 = temp_v0;
        if (temp_v0 == 0) {

        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            temp_a1 = arg2->unk8 | 2;
            arg2->unk8 = temp_a1;
            arg0 = GfxListWriterLock(arg4->unk10, temp_a1, arg2);
            gthread_attach_list(arg2, (s32 *) arg4->unk10);
            GfxListWriterUnlock(arg4->unk10, (s32) arg0);
            setgfxsched_thread(arg6);
        }
    }
    return 0;
}

s32 gfxopen(s32 *arg0, s64 arg4, s32 arg10, s64 arg12, s64 arg14, s64 arg16, s64 arg28, s64 arg30, s64 arg32, s64 arg34, s64 arg36) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_s3;
    s32 temp_v0_7;
    s32 var_v0;
    s64 temp_a2;
    s64 temp_a3_2;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 var_s0;
    s64 var_s1;
    s64 var_s4;
    s64 var_s7;
    s64 var_v0_2;
    s64 var_v0_3;
    u64 temp_s2;
    u64 temp_s6;
    u64 temp_v0;
    void *temp_s1;

    temp_v0 = curthreadhandle();
    temp_s2 = temp_v0;
    temp_s6 = temp_v0;
    temp_s1 = saved_reg_gp->unk-77B0 + 0x10;
    psema(temp_s1, 0x19);
    temp_a3 = 0x3FFFF & *arg0;
    temp_a0 = saved_reg_gp->unk0;
    if (temp_a3 < 2) {
        var_s0 = 0;
        if (temp_a0 > 0) {
loop_3:
            if (*((var_s0 * 8) + saved_reg_gp->unk-77A0) != 0) {
                var_s0 += 1;
                if (var_s0 < temp_a0) {
                    goto loop_3;
                }
            }
        }
        if (var_s0 < temp_a0) {
            temp_s3 = temp_a3 == 1;
            temp_v0_2 = gthread_find(temp_s2);
            var_s4 = temp_v0_2;
            if ((temp_v0_2 != 0) && (temp_v0_2->unk8 & 4)) {
                temp_v0_3 = temp_v0_2->unk10;
                if (temp_v0_3 != 0) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_v0_3->unk18 = 0;
                }
                gthread_detach_list((void *) temp_v0_2);
                gthread_detach_group((void *) temp_v0_2);
                gthread_destroy(temp_v0_2->unk0);
                var_s4 = 0;
            }
            if ((var_s4 != 0) || (temp_v0_4 = gthread_create(temp_s6), var_s4 = temp_v0_4, (temp_v0_4 != 0))) {
                temp_v0_5 = gfx_group_find(temp_s6);
                arg16 = (s64) temp_s1;
                arg12 = temp_v0_5;
                temp_v0_6 = gthread_find_gfxp(temp_s6);
                var_s1 = temp_v0_6;
                var_s7 = temp_v0_6;
                if (temp_v0_6 != 0) {
loop_15:
                    if ((((var_s1->unk30 & 8) == 8) ^ temp_s3) == 0) {
                        var_s1 = var_s1->unk10;
                        if (var_s1 == 0) {
                            goto block_17;
                        }
                        goto loop_15;
                    }
                    vsema((void *) arg16);
                    cmn_err(4, saved_reg_gp->unk-77F0 + 0x208);
                    var_v0 = 0x13;
                } else {
block_17:
                    if (var_s4 != 0) {
                        temp_a2 = temp_s3 != 0;
                        arg14 = temp_a2;
                        if (var_s4->unk18 == 0) {
                            goto block_19;
                        }
                        arg0 = (arg14 != 0) ? (s32 *)1 : (s32 *)2;
                        temp_a3_2 = *var_s4->unk18;
                        arg2 = temp_a3_2;
                        gthread_scan(saved_reg_gp->unk-7798, (s64) sp, temp_a2, temp_a3_2);
                        if (arg0 == (s32 *)3) {
                            vsema((void *) arg16);
                            cmn_err(4, saved_reg_gp->unk-77F0 + 0x268);
                            var_v0 = 0x13;
                        } else {
                            goto block_19;
                        }
                    } else {
                        arg14 = temp_s3 != 0;
block_19:
                        if (temp_v0_6 == 0) {
                            var_v0_2 = kern_malloc(0x68U);
                        } else {
                            var_v0_2 = kern_malloc(0x68U);
                        }
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        *((var_s0 * 8) + saved_reg_gp->unk-77A0) = var_v0_2;
                        bzero((void *) var_v0_2, 0x68U);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_2->unk8 = temp_s6;
                        var_v0_2->unk18 = 0;
                        var_v0_2->unk20 = 0;
                        var_v0_2->unk60 = (s64) var_s4->unk18;
                        if (temp_s3 != 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_v0_2->unk30 = (s32) (var_v0_2->unk30 | 8);
                            temp_a1 = *arg0;
                            *arg0 = temp_a1 - (0x3FFFF & temp_a1);
                        }
                        init_sema(var_v0_2 + 0x50, 1, saved_reg_gp - 0x7790, -1);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_2->unk38 = 1;
                        if (var_s7 == 0) {
                            if ((arg12 == 0) || (var_v0_2->unk30 & 8)) {
                                gthread_attach_list(var_s4, NULL);
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_s4->unk10->unk18 = var_v0_2;
                            } else {
                                gthread_attach_list(var_s4, NULL);
                                temp_v0_7 = GfxListWriterLock(var_s4->unk10);
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                var_s4->unk10->unk18 = var_v0_2;
                                arg12->unkC = 1;
                                GfxListWriterUnlock(var_s4->unk10, temp_v0_7, 1, arg12);
                                arg6 = arg12;
                                arg4 = var_s4->unk0;
                                arg8 = var_s4->unk10;
                                curthreadgroup_scan(saved_reg_gp->unk-7788, &arg4);
                            }
                            setgfxsched_thread(temp_s6);
                        } else {
                            if ((arg12 != 0) && !(var_v0_2->unk30 & 8)) {
                                arg10 = GfxListWriterLock(var_s4->unk10);
                            }
                            var_v0_3 = var_s7->unk10;
                            if (var_v0_3 != 0) {
                                do {
                                    var_s7 = var_v0_3;
                                    var_v0_3 = var_v0_3->unk10;
                                } while (var_v0_3 != 0);
                            }
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            var_s7->unk10 = var_v0_2;
                            if ((arg12 != 0) && !(var_v0_2->unk30 & 8)) {
                                GfxListWriterUnlock(var_s4->unk10, arg10);
                            }
                        }
                        vsema((void *) arg16);
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_v0_2->unk34 = (s32) (var_v0_2->unk34 | 2);
                        *arg0 |= ((arg14 == 0) ? 0 : 0x20000) | var_s0;
                        var_v0 = 0;
                    }
                }
            } else {
                vsema(temp_s1);
                var_v0 = 0xC;
            }
        } else {
            vsema(temp_s1);
            cmn_err(4, saved_reg_gp->unk-77F0 + 0x1E8);
            var_v0 = 0x13;
        }
    } else {
        vsema(temp_s1);
        var_v0 = 6;
    }
    return var_v0;
}

s32 irisgl_sproc_cleanup(void *arg0, s32 arg1, s64 arg2) {
    if (arg2 != 1) {

    } else if (arg0->unk18 == arg1) {
        cleargfxsched_thread(((s64) arg0)->unk0);
        gthread_detach_list((void *) (s64) arg0);
        gthread_detach_group((void *) (s64) arg0);
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        ((s64) arg0)->unk8 = (s32) (((s64) arg0)->unk8 & ~2);
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x60, 0x64, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c], gap at: 0x48. */
s32 gfxclose(s32 arg0, s64 arg2, s64 arg4, s64 arg6, s64 arg8, s64 arg10, s64 arg12, s64 arg36) {
    s32 temp_a0_3;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_v0_5;
    s32 var_v0;
    s64 temp_a0_2;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a1;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_s0;
    s64 temp_s0_2;
    s64 temp_s0_3;
    s64 temp_s0_4;
    s64 temp_v0_10;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_6;
    s64 temp_v0_7;
    s64 temp_v0_8;
    s64 temp_v0_9;
    s64 var_a1;
    s64 var_s1;
    s64 var_s3;
    s64 var_v0_2;
    u64 temp_a0;
    u64 temp_v0;

    temp_v0 = curthreadhandle();
    temp_s2 = arg0 & 0x3FFFF;
    temp_a0 = temp_v0;
    temp_s4 = 0x20000 & temp_s2;
    if (temp_s4 != 0x20000) {
        unksp50 = 0;
        unksp48 = 0;
        unksp40 = temp_a0;
        unksp58 = 0;
        psema(saved_reg_gp->unk-77B0 + 0x10, 0x19, 0);
    } else {
        unksp40 = temp_a0;
        unksp48 = 0;
        unksp50 = 0;
        unksp58 = 0;
    }
    temp_a1 = temp_s2 & 0x1FFFF;
    var_s1 = gthread_find(temp_v0);
    if (temp_a1 >= saved_reg_gp->unk0) {
        if (temp_s4 != 0x20000) {
            vsema(saved_reg_gp->unk-77B0 + 0x10, temp_a1);
        }
        var_v0 = 6;
    } else {
        temp_s0 = (temp_a1 * 8) + saved_reg_gp->unk-77A0;
        unksp68 = temp_s0;
        temp_s0_2 = *temp_s0;
        if (temp_s0_2 != 0) {
            if ((var_s1 != 0) && (temp_v0_2 = var_s1->unk10, (temp_v0_2 != 0))) {
                var_s3 = temp_v0_2->unk18;
            } else {
                var_s3 = 0;
            }
            temp_v0_3 = temp_s0_2->unk8;
            if ((temp_v0_3 == unksp40) || ((temp_s4 != 0x20000) && (var_s1->unk18 != 0))) {
                goto block_16;
            }
            unksp50 = temp_v0_3;
            arg8 = splhi();
            temp_v0_4 = gthread_find(unksp50);
            if (temp_v0_4 != 0) {
                temp_a0_2 = temp_v0_4->unk10;
                if ((temp_a0_2 != 0) && (temp_a0_2->unk18 != 0)) {
                    var_v0_2 = temp_a0_2 + 0x18;
                    var_a1 = temp_a0_2->unk18;
                    if (var_a1 != 0) {
loop_62:
                        if (var_a1 != temp_s0_2) {
                            var_v0_2 = var_a1 + 0x10;
                            var_a1 = var_a1->unk10;
                            if (var_a1 != 0) {
                                goto loop_62;
                            }
                        } else {
                            arg2 = var_v0_2;
                            if (var_a1 != 0) {
                                temp_v0_5 = GfxListWriterLock(temp_a0_2, (s32) var_a1);
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_a2 = (*arg2)->unk10;
                                *arg2 = temp_a2;
                                GfxListWriterUnlock(temp_v0_4->unk10, temp_v0_5, temp_a2, arg2);
                                unksp58 = 1;
                            }
                        }
                    }
                }
            }
            splx((s32) arg8);
            if (var_s1 != 0) {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s0_2->unk8 = unksp40;
                temp_s0_2->unk10 = (s64) var_s3->unk10;
                var_s3->unk10 = temp_s0_2;
block_16:
                if (var_s1 == 0) {
                    goto block_17;
                }
                goto block_22;
            }
block_17:
            temp_v0_6 = gthread_create(unksp40);
            var_s1 = temp_v0_6;
            if (temp_v0_6 == 0) {
                if (temp_s4 != 0x20000) {
                    vsema(saved_reg_gp->unk-77B0 + 0x10);
                }
                var_v0 = 0xC;
            } else {
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s0_2->unk10 = 0;
                temp_s0_2->unk8 = unksp40;
                temp_s0_2->unk38 = 0;
                gthread_attach_list(temp_v0_6, NULL);
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                var_s3 = temp_s0_2;
                temp_v0_6->unk10->unk18 = temp_s0_2;
                setgfxsched_thread(unksp40);
block_22:
                GfxDetach((void *) temp_s0_2);
                if (var_s1->unk18 != 0) {
                    temp_s0_3 = var_s1->unk10;
                    unksp48 = temp_s0_3;
                    if (temp_s0_3 != 0) {
                        arg0 = GfxListWriterLock(temp_s0_3);
                    }
                }
                if (temp_s0_2 == var_s3) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    var_s1->unk10->unk18 = (s64) temp_s0_2->unk10;
                } else if (var_s3 != 0) {
loop_40:
                    temp_v0_7 = var_s3->unk10;
                    if (temp_v0_7 != temp_s0_2) {
                        var_s3 = temp_v0_7;
                        if (temp_v0_7 == 0) {

                        } else {
                            goto loop_40;
                        }
                    } else {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_s3->unk10 = (s64) temp_s0_2->unk10;
                    }
                }
                temp_a2_2 = var_s1->unk18;
                if ((temp_a2_2 != 0) && !(temp_s0_2->unk30 & 8)) {
                    temp_v0_8 = var_s1->unk10;
                    if ((temp_v0_8 != 0) && (temp_v0_8->unk18 == 0)) {
                        arg6 = temp_a2_2;
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        temp_a0_3 = splhi();
                        arg6->unkC = 0;
                        splx(temp_a0_3);
                        gthread_detach_group((void *) var_s1);
                        gthread_scan(saved_reg_gp->unk-7780, arg6);
                    }
                }
                if (unksp48 != 0) {
                    GfxListWriterUnlock(unksp48, arg0);
                }
                freesema(temp_s0_2 + 0x50);
                temp_v0_9 = var_s1->unk10;
                if ((temp_v0_9 != 0) && (temp_v0_9->unk18 == 0)) {
                    cleargfxsched_thread(var_s1->unk0);
                    gthread_detach_list((void *) var_s1);
                    gthread_detach_group((void *) var_s1);
                }
                if (unksp50 != 0) {
                    arg12 = splhi();
                    temp_v0_10 = gthread_find(unksp50);
                    temp_s0_4 = temp_v0_10;
                    temp_a0_4 = temp_v0_10;
                    if (unksp58 != 0) {
                        if (temp_s0_4 != 0) {
                            arg10 = temp_a0_4;
                            if (temp_s0_4->unk8 & 4) {
                                goto block_47;
                            }
                            splx((s32) arg12);
                            arg4 = proc_name(curproc());
                            cmn_err(1, saved_reg_gp->unk-77F0 + 0x2C0, arg4, proc_pid(curproc()));
                            arg4 = proc_name(threadhandle_to_proc(*arg10));
                            cmn_err(1, saved_reg_gp->unk-77F0 + 0x310, arg4, proc_pid(threadhandle_to_proc(*arg10)));
                            psignal(threadhandle_to_proc(*arg10), 9);
                            unksp58 = 1;
                        } else {
                            goto block_52;
                        }
                    } else {
block_47:
                        if ((temp_s0_4 != 0) && (temp_s0_4->unk8 & 4)) {
                            splx((s32) arg12);
                            temp_a0_5 = temp_s0_4->unk10;
                            if (temp_a0_5 != 0) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_a0_5->unk18 = 0;
                            }
                            gthread_detach_list((void *) temp_s0_4);
                            gthread_detach_group((void *) temp_s0_4);
                            gthread_destroy(temp_s0_4->unk0);
                        } else {
block_52:
                            splx((s32) arg12);
                        }
                        unksp58 = 0;
                    }
                }
                if (var_s1->unk10 == 0) {
                    gthread_destroy(var_s1->unk0);
                }
                streams_lock();
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                temp_s0_2->unk34 = (s32) (temp_s0_2->unk34 & ~2);
                gfxcleanup((void *) temp_s0_2);
                streams_unlock();
                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                *unksp68 = 0;
                if (temp_s4 != 0x20000) {
                    vsema(saved_reg_gp->unk-77B0 + 0x10);
                }
                if (unksp58 != 0) {
                    psignal(curproc(), 6);
                }
                var_v0 = 0;
            }
        } else {
            if (temp_s4 != 0x20000) {
                vsema(saved_reg_gp->unk-77B0 + 0x10, temp_a1);
            }
            var_v0 = 0x13;
        }
    }
    return var_v0;
}

void GfxListWriterLock(void *arg0, s64 arg4, s64 arg6) {
    s32 var_v0;

    var_v0 = splhi();
    if (arg0->unk4 > 0) {
        do {
            sv_wait(arg0 + 8, 0x19, arg0 + 0x10, var_v0);
            var_v0 = splhi();
        } while (arg0->unk4 > 0);
    }
}

void GfxListWriterUnlock(s32 arg1) {
    splx(arg1);
}

void GfxListReaderLock(void *arg0) {
    s32 temp_a0;

    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a0 = splhi();
    arg0->unk4 = (s32) (arg0->unk4 + 1);
    splx(temp_a0);
}

void GfxListReaderUnlock(void *arg0, s64 arg4) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    arg4 = splhi();
    arg0->unk4 = (s32) (arg0->unk4 - 1);
    sv_signal(arg0 + 8);
    splx((s32) arg4);
}

s32 gfxread(void) {
    return 0x36;
}

s32 gfxwrite(void) {
    return 0x36;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x40, 0x44, 0x68, 0x6c], gap at: 0x50. */
s64 gfxioctl(u32 arg0, u32 arg1, s64 arg2, s32 arg4, u32 arg10, s64 arg12, s64 arg28) {
    s32 temp_a1_2;
    s64 temp_a1;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a2_3;
    s64 temp_a2_4;
    s64 temp_a2_5;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 temp_a3_4;
    s64 temp_a7;
    s64 temp_s1;
    s64 temp_t0;
    s64 temp_t0_2;
    s64 temp_t0_3;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 var_a0;
    s64 var_v0;

    unksp58 = arg2;
    unksp50 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp48 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_v0 = gthread_find(curthreadhandle());
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    temp_a7 = saved_reg_gp->unk-77E8;
    temp_a7->unkC = (s32) (temp_a7->unkC + 1);
    temp_a1 = arg0 & 0x3FFFF & 0x1FFFF;
    var_a0 = 0;
    var_v0 = 6;
    if (temp_a1 < saved_reg_gp->unk0) {
        temp_s1 = *((temp_a1 * 8) + saved_reg_gp->unk-77A0);
        if (temp_s1 != 0) {
            if (temp_v0 != 0) {
                temp_a1_2 = temp_s1->unk30 & 8;
                temp_v0_2 = temp_v0->unk18;
                if (temp_a1_2 != 0) {
                    if (temp_v0_2 != 0) {
                        if (temp_v0->unk0 != temp_s1->unk8) {
                            var_v0 = 0xD;
                        } else {
                            goto block_7;
                        }
                    } else {
                        goto block_9;
                    }
                } else {
block_7:
                    if ((temp_v0_2 != 0) && (temp_a1_2 == 0)) {
                        unksp60 = 0;
                        psema(temp_s1 + 0x50, 0x19);
                        var_a0 = 0;
                    }
block_9:
                    switch (arg1) {                 /* switch 1; irregular */
                    default:                        /* switch 1 */
                        temp_v0_3 = temp_s1->unk18;
                        if (temp_v0_3 != 0) {
                            if (arg1 < 0x2710U) {
                                if (arg1 < 0x3E8U) {
                                    switch (arg1) { /* switch 2; irregular */
                                    default:        /* switch 2 */
                                        temp_a3 = temp_s1->unk0;
                                        if (temp_a3->unk10 != temp_s1) {
                                            var_a0 = 1;
                                        } else {
                                            switch (arg1) { /* switch 3; irregular */
                                            case 0x6D: /* switch 3 */
                                                break;
                                            default: /* switch 3 */
                                                cmn_err(4, saved_reg_gp->unk-77F0 + 0x358, arg1, temp_a3);
                                                var_a0 = 0x16;
                                                break;
                                            case 0x6F: /* switch 3 */
                                                var_a0 = (copyin(unksp58, temp_a3->unk0 + 0x10, 0x10, temp_a3) == 0) ? 0 : 0xE;
                                                break;
                                            case 0x6A: /* switch 3 */
                                                temp_a2 = temp_s1->unk20;
                                                if (temp_a2->unk48 != temp_s1) {
                                                    psema(temp_a2 + 0x38, 0x219, temp_a2, temp_a3);
                                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                    temp_s1->unk20->unk48 = temp_s1;
                                                    if (temp_s1->unk20->unk68 != 0) {
                                                        do {
                                                            us_delay(2);
                                                        } while (temp_s1->unk20->unk68 != 0);
                                                    }
                                                }
                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                unksp60 = ((s64 (*)(s64)) ((void *) temp_s1->unk18)->unk18)(temp_s1);
                                                temp_s1->unk20->unk80 = 0;
                                                temp_a1_3 = temp_s1->unk18->unkC0;
                                                arg12 = splhi();
                                                if (temp_a1_3 != 0) {
                                                    ((? (*)(s64, s64)) temp_a1_3)(temp_s1, temp_a1_3);
                                                }
                                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                temp_a1_4 = temp_s1->unk20;
                                                temp_a1_4->unk48 = 0;
                                                vsema(temp_s1->unk20 + 0x38, temp_a1_4);
                                                splx((s32) arg12);
                                                var_a0 = unksp60;
                                                if (temp_s1->unk30 & 1) {
                                                    rrmUnMapGfx(temp_s1);
                                                    var_a0 = unksp60;
                                                }
                                                break;
                                            case 0x6B: /* switch 3 */
                                                temp_a2_2 = temp_s1->unk20;
                                                if (temp_a2_2->unk48 != temp_s1) {
                                                    psema(temp_a2_2 + 0x38, 0x219, temp_a2_2, temp_a3);
                                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                                    temp_s1->unk20->unk48 = temp_s1;
                                                    if (temp_s1->unk20->unk68 != 0) {
                                                        do {
                                                            us_delay(2);
                                                        } while (temp_s1->unk20->unk68 != 0);
                                                    }
                                                }
                                                var_a0 = ((s64 (*)(s64)) ((void *) temp_s1->unk18)->unk28)(temp_s1);
                                                break;
                                            }
                                        }
                                        break;
                                    case 0x6E:      /* switch 2 */
loop_34:
                                        temp_a2_3 = temp_s1->unk20;
                                        if (temp_a2_3->unk48 != temp_s1) {
                                            psema(temp_a2_3 + 0x38, 0x219, temp_a2_3);
                                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                            temp_s1->unk20->unk48 = temp_s1;
                                            if (temp_s1->unk20->unk68 != 0) {
                                                do {
                                                    us_delay(2);
                                                } while (temp_s1->unk20->unk68 != 0);
                                            }
                                        }
                                        ddv_lock(temp_s1->unk28);
                                        if (temp_s1->unk20->unk48 != temp_s1) {
                                            ddv_unlock(temp_s1->unk28);
                                            goto loop_34;
                                        }
                                        temp_a3_2 = temp_s1->unk18->unk60;
                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                        unksp60 = ((s64 (*)(s64, ?, ?, s64)) temp_a3_2)(temp_s1, 0, -1, temp_a3_2);
                                        temp_s1->unk30 = (s32) (temp_s1->unk30 | 0x20);
                                        ddv_unlock(temp_s1->unk28);
                                        var_a0 = unksp60;
                                        break;
                                    case 0x68:      /* switch 2 */
                                        if (!(temp_s1->unk30 & 8) && (unksp60 = 0, (temp_v0->unk18 != 0)) && (var_a0 = unksp60, (threadgroup_refcnt(temp_v0->unk0) != 1))) {
                                            var_a0 = 0x10;
                                        } else {
                                            unksp60 = var_a0;
                                            GfxDetach((void *) temp_s1);
                                        }
                                        break;
                                    case 0x6C:      /* switch 2 */
                                        curproc_abi(0);
                                        if (copyin_xlate(unksp58, sp, 0x28, saved_reg_gp->unk-7768) != 0) {
                                            var_a0 = 0xE;
                                        } else {
                                            var_a0 = ((s64 (*)(s64, void *)) temp_s1->unk18->unk20)(temp_s1, sp);
                                        }
                                        break;
                                    }
                                } else {
                                    var_a0 = RRM_Dispatch(temp_s1, arg1, unksp58, unksp48);
                                }
                            } else {
                                var_a0 = ((s64 (*)(s64, s64, u32, s64)) temp_v0_3->unkC8)(temp_s1, temp_s1->unk48, arg1, unksp58);
                            }
                        } else {
                            var_a0 = 0xD;
                        }
                        break;
                    case 0x65:                      /* switch 1 */
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        *unksp48 = (u32) saved_reg_gp->unk-77FC;
                        break;
                    case 0x66:                      /* switch 1 */
                        curproc_abi(0);
                        if (copyin_xlate(unksp58, sp, 0x18, saved_reg_gp->unk-7778) != 0) {
                            var_a0 = 0xE;
                        } else if (arg0 >= (u32) saved_reg_gp->unk-77FC) {
                            var_a0 = 0x13;
                        } else {
                            temp_t0 = *((((u64) ((s64) arg0 << 0x20) >> 0x20) * 8) + saved_reg_gp->unk-77C8);
                            if (temp_t0 == 0) {
                                var_a0 = 0x13;
                            } else {
                                var_a0 = ((s64 (*)(s64, s64, s32, s64)) *temp_t0->unk38)(temp_t0->unk40, arg2, arg4, unksp48);
                            }
                        }
                        break;
                    case 0x69:                      /* switch 1 */
                        unksp60 = 0;
                        var_a0 = 0;
                        if (copyin(unksp58, &arg10, 4) != 0) {
                            var_a0 = 0xE;
                        } else if (arg10 >= (u32) saved_reg_gp->unk-77FC) {
                            var_a0 = 0x13;
                        } else {
                            temp_a1_5 = *((((u64) ((s64) arg10 << 0x20) >> 0x20) * 8) + saved_reg_gp->unk-77C8);
                            if (temp_a1_5 != 0) {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                *unksp48 = (u32) (temp_a1_5->unk8 != 0);
                            } else {
                                var_a0 = 0x13;
                            }
                        }
                        break;
                    case 0x67:                      /* switch 1 */
                        curproc_abi(0);
                        if (copyin_xlate(unksp58, sp, 0x10, saved_reg_gp->unk-7770) != 0) {
                            var_a0 = 0xE;
                        } else if (arg0 >= (u32) saved_reg_gp->unk-77FC) {
                            var_a0 = 0x13;
                        } else {
                            temp_a2_4 = saved_reg_gp->unk-77C8;
                            temp_t0_2 = *((((u64) ((s64) arg0 << 0x20) >> 0x20) * 8) + temp_a2_4);
                            if (temp_t0_2 != 0) {
                                if (temp_s1->unk18 != 0) {
                                    var_a0 = 0x10;
                                } else {
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    temp_s1->unk0 = temp_t0_2;
                                    temp_s1->unk18 = (s64) temp_t0_2->unk38;
                                    temp_s1->unk20 = (s64) temp_t0_2->unk40;
                                    temp_v0_4 = ((s64 (*)(s64, s64, s64)) (*(((s64) arg0 * 8) + temp_a2_4))->unk38->unk8)(temp_s1, arg2, temp_a2_4);
                                    var_a0 = temp_v0_4;
                                    if (temp_v0_4 != 0) {
                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                        temp_s1->unk18 = 0;
                                        temp_s1->unk20 = 0;
                                        temp_s1->unk0 = 0;
                                    } else {
                                        temp_a3_3 = temp_s1->unk0;
                                        if (temp_a3_3->unk10 == 0) {
                                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                            temp_a3_3->unk10 = temp_s1;
                                        }
                                    }
                                }
                            } else {
                                var_a0 = 0x13;
                            }
                        }
                        break;
                    case 0x70:                      /* switch 1 */
                        curproc_abi(0);
                        if (copyin_xlate(unksp58, sp, 0x10, saved_reg_gp->unk-7770) != 0) {
                            var_a0 = 0xE;
                        } else if (arg0 >= (u32) saved_reg_gp->unk-77FC) {
                            var_a0 = 0x13;
                        } else {
                            temp_a2_5 = saved_reg_gp->unk-77C8;
                            temp_t0_3 = *((((u64) ((s64) arg0 << 0x20) >> 0x20) * 8) + temp_a2_5);
                            if (temp_t0_3 == 0) {
                                var_a0 = 0x13;
                            } else {
                                M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                temp_s1->unk0 = temp_t0_3;
                                temp_s1->unk20 = (s64) temp_t0_3->unk40;
                                temp_s1->unk18 = (s64) temp_t0_3->unk38;
                                temp_v0_5 = ((s64 (*)(s64, s64, s64)) (*(((s64) arg0 * 8) + temp_a2_5))->unk38->unk8)(temp_s1, arg2, temp_a2_5);
                                var_a0 = temp_v0_5;
                                if (temp_v0_5 != 0) {
                                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                    temp_s1->unk18 = 0;
                                    temp_s1->unk20 = 0;
                                    temp_s1->unk0 = 0;
                                } else {
                                    temp_a3_4 = temp_s1->unk0;
                                    if (temp_a3_4->unk10 == 0) {
                                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                                        temp_a3_4->unk10 = temp_s1;
                                    }
                                }
                            }
                        }
                        break;
                    case 0x71:                      /* switch 1 */
                        temp_v0_6 = drv_priv(unksp50);
                        var_a0 = temp_v0_6;
                        if (temp_v0_6 == 0) {
                            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                            temp_s1->unk30 = (s32) (temp_s1->unk30 | 4);
                        }
                        break;
                    }
                    if ((temp_v0->unk18 != 0) && !(temp_s1->unk30 & 8)) {
                        unksp60 = var_a0;
                        vsema(temp_s1 + 0x50);
                    }
                    var_v0 = var_a0;
                }
            } else {
                var_v0 = 0xD;
            }
        } else {
            var_v0 = 0x13;
        }
    }
    return var_v0;
}

s32 gfxmap(void) {
    return 0x36;
}

s32 gfxunmap(void) {
    return 0x36;
}

void gfx_shalloc(s64 arg0) {
    s32 temp_v0_3;
    s64 temp_a0;
    s64 temp_s1;
    s64 temp_v0_2;
    s64 var_a4;
    u64 temp_s0;
    u64 temp_s2;
    u64 temp_v0;

    temp_v0 = curthreadhandle();
    temp_s0 = temp_v0;
    temp_s2 = temp_v0;
    arg0 = splhi();
    temp_s1 = gfx_group_create(temp_s0);
    temp_v0_2 = gthread_find(temp_s2);
    if (temp_v0_2 != 0) {
        gthread_attach_group(temp_v0_2, temp_s1);
        temp_a0 = temp_v0_2->unk10;
        if (temp_a0 != 0) {
            temp_v0_3 = GfxListWriterLock(temp_a0);
            var_a4 = temp_v0_2->unk10->unk18;
            if (var_a4 != 0) {
                if (!(var_a4->unk30 & 8)) {
                    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                    temp_s1->unkC = 1;
                }
                if (var_a4 != 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
                        var_a4->unk60 = temp_s1;
                        var_a4 = var_a4->unk10;
                    } while (var_a4 != 0);
                }
            }
            GfxListWriterUnlock(temp_v0_2->unk10, temp_v0_3);
        }
    }
    splx((s32) arg0);
}

void gfx_shfree(void) {
    gfx_group_destroy(gfx_group_find(curthreadhandle()));
}

s32 gfx_frs_valid_pipenum(s32 arg0) {
    return arg0 < saved_reg_gp->unk-77FC;
}

s32 irix5_to_gfx_getboardinfo_args(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0xCU) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0xCU);
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

s32 irix5_to_gfx_download_args(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 0x20U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(0x20U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 0x20;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk8 = (s64) temp_a2->unk4;
        arg1->unk10 = (s32) temp_a2->unk8;
        arg1->unk14 = (s32) temp_a2->unkC;
        arg1->unk18 = (s32) temp_a2->unk10;
        arg1->unk1C = (s32) temp_a2->unk14;
        arg1->unk20 = (s32) temp_a2->unk18;
        arg1->unk24 = (s32) temp_a2->unk1C;
    }
    return 0;
}

s32 irix5_to_gfx_attach_board_args(s32 arg0, void *arg1, void *arg3, s64 arg2) {
    s64 temp_a2;

    if (arg0 == 0) {
        if ((u32) arg3->unk0 >= 8U) {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = (s64) arg3->unk8;
        } else {
            M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
            arg3->unk10 = kern_malloc(8U);
        }
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        arg3->unk4 = 8;
    } else {
        M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
        temp_a2 = arg3->unk10;
        arg1->unk0 = (s32) temp_a2->unk0;
        arg1->unk8 = (s64) temp_a2->unk4;
    }
    return 0;
}
