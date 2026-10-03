? atexit(void *, s32);                              /* extern */
s8 atoi(s64);                                       /* extern */
? execv(s64, ?);                                    /* extern */
? exit(?);                                          /* extern */
s64 fork();                                         /* extern */
? fprintf(void *, void *, s64, s32 *, s64, s32, s32, u32); /* extern */
s64 getenv(void *);                                 /* extern */
? kill(s32, ?);                                     /* extern */
s32 open(void *, ?);                                /* extern */
? perror(? *, s64);                                 /* extern */
? putenv(void *, s64);                              /* extern */
s32 semctl(s64, s64, ?, s64, s64, s32);             /* extern */
s64 semget(?, ?);                                   /* extern */
s32 semop(void *, ?, void *, s64);                  /* extern */
? signal(?, void *, u8);                            /* extern */
? sprintf(? *, void *, void *);                     /* extern */
s32 stat(? *, ? *);                                 /* extern */
extern ? __iob;
extern ? sub_0da90000;
extern ? sub_0dbf0000;
extern ? sub_0dc00000;

void simCatch(s32 arg0, s32 *arg2) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s64 temp_a5;
    u32 temp_a0;
    u32 temp_a1;

    if (arg0 != 0xB) {
        return;
    }
    temp_a5 = arg2->unk8;
    if (temp_a5 != 0) {
        temp_a2 = temp_a5 << 0;
        temp_a0 = *temp_a2;
        temp_a1 = temp_a0 >> 0x1A;
        temp_a3 = temp_a1 < 0x14U;
        if ((temp_a1 >= 8U) && ((temp_a3 != 0) || (temp_a1 >= 0x18U)) && (temp_a1 != 0x11)) {
            sp0 = (s64) arg2;
            __glMgrInitRGB((__GLcontext *) temp_a0, temp_a0, arg2, temp_a2, temp_a3, arg2, temp_a5);
            if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
                sp0->unk8 = (s64) (sp0->unk8 + 4);
                /* Duplicate return node #9. Try simplifying control flow for better match */
                signal(0xB, &sub_0da90000 + 0x1604);
                return;
            }
            return;
        }
        __glMgrInitRGB((__GLcontext *) temp_a0, temp_a0, arg2, temp_a2, temp_a3, arg2, temp_a5);
        if (M2C_ERROR(/* Read from unset register $v0 */) == -1) {
            return;
        }
        signal(0xB, &sub_0da90000 + 0x1604);
        return;
    }
    fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x2768, arg2->unk108, arg2, temp_a5);
}

void branchdelay(void *arg1) {
    __GLcontext *temp_a0;
    s32 temp_a1;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s64 temp_a1_2;
    s64 temp_a1_3;
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_a1_6;
    s64 temp_a1_7;
    s64 temp_a1_8;
    s64 temp_a2;
    s64 temp_a2_3;
    s64 temp_a2_5;
    s64 temp_v1;
    s64 var_at;
    s8 *temp_a0_2;
    s8 *temp_a0_3;
    s8 *temp_a0_4;
    u32 temp_s5;

    temp_a2 = arg1->unk8;
    temp_s5 = *(temp_a2 << 0);
    temp_a2_2 = (temp_a2 + 4) << 0;
    temp_a0 = *temp_a2_2;
    __glMgrInitRGB(temp_a0, temp_a0, temp_a2_2, 4);
    if (M2C_ERROR(/* Read from unset register $v0 */) != -1) {
        temp_a2_3 = (s64) ((s64) (temp_s5 >> 0x1A) << 0x30) >> 0x30;
        if ((u32) temp_a2_3 < 0x18U) {
            temp_a1 = (temp_s5 >> 0x10) & 0x1F;
            switch (*((temp_a2_3 * 4) + (&sub_0dbf0000 - 0x2748))) { /* switch 1; unable to parse jump table */
            case 2:                                 /* switch 1 */
                arg1->unk8 = (s64) (((arg1->unk8 + 4) & (0xF000 << 0x10)) | ((temp_s5 & 0x03FFFFFF) * 4));
                break;
            case 3:                                 /* switch 1 */
                temp_v1 = arg1->unk8;
                arg1->unk108 = (s64) (temp_v1 + 8);
                arg1->unk8 = (s64) (((temp_v1 + 4) & (0xF000 << 0x10)) | ((temp_s5 & 0x03FFFFFF) * 4));
                break;
            case 0:                                 /* switch 1 */
                temp_a2_4 = temp_s5 & 0x3F;
                if (temp_a2_4 != 8) {
                    temp_a1_2 = arg1->unk8;
                    if (temp_a2_4 != 9) {
                        temp_a0_2 = &sub_0dbf0000 - 0x26E8;
                        printf(temp_a0_2, temp_a0_2, temp_a1_2, temp_a2_4);
                        exit(1);
                    } else {
                        arg1->unk108 = (s64) (temp_a1_2 + 8);
                        arg1->unk8 = (s64) (((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 & ((0xFFFF << 0x10) | 0xFFFC));
                    }
                } else {
                    arg1->unk8 = (s64) (((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 & ((0xFFFF << 0x10) | 0xFFFC));
                }
                break;
            case 4:                                 /* switch 1 */
            case 20:                                /* switch 1 */
                temp_a1_3 = arg1->unk8;
                if (((((s64) (((temp_s5 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 == ((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10) {
                    arg1->unk8 = (s64) ((((s64) ((s64) temp_s5 << 0x30) >> 0x30) * 4) + temp_a1_3 + 4);
                } else {
                    arg1->unk8 = (s64) (temp_a1_3 + 8);
                }
                break;
            case 5:                                 /* switch 1 */
            case 21:                                /* switch 1 */
                temp_a1_4 = arg1->unk8;
                if (((((s64) (((temp_s5 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 != ((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10) {
                    arg1->unk8 = (s64) ((((s64) ((s64) temp_s5 << 0x30) >> 0x30) * 4) + temp_a1_4 + 4);
                } else {
                    arg1->unk8 = (s64) (temp_a1_4 + 8);
                }
                break;
            case 6:                                 /* switch 1 */
            case 22:                                /* switch 1 */
                temp_a1_5 = arg1->unk8;
                if (((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 > 0) {
                    arg1->unk8 = (s64) (temp_a1_5 + 8);
                } else {
                    arg1->unk8 = (s64) ((((s64) ((s64) temp_s5 << 0x30) >> 0x30) * 4) + temp_a1_5 + 4);
                }
                break;
            case 7:                                 /* switch 1 */
            case 23:                                /* switch 1 */
                temp_a1_6 = arg1->unk8;
                if (((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 > 0) {
                    arg1->unk8 = (s64) ((((s64) ((s64) temp_s5 << 0x30) >> 0x30) * 4) + temp_a1_6 + 4);
                } else {
                    arg1->unk8 = (s64) (temp_a1_6 + 8);
                }
                break;
            case 17:                                /* switch 1 */
                if (temp_a1 != 0) {
                    var_at = (s64) temp_s5 << 0x30;
                    switch (temp_a1);               /* switch 2; irregular */
                } else {
                case 2:                             /* switch 2 */
                case 3:                             /* switch 2 */
                    var_at = (s64) temp_s5 << 0x30;
                case 1:                             /* switch 2 */
                    arg1->unk8 = (s64) (arg1->unk8 + ((var_at >> 0x30) * 4) + 4);
                }
                break;
            case 1:                                 /* switch 1 */
                temp_a2_5 = (s64) (((temp_s5 >> 0x10) & 0x1F) << 0x30) >> 0x30;
                switch (temp_a2_5) {                /* switch 3; irregular */
                default:                            /* switch 3 */
                    temp_a0_3 = &sub_0dbf0000 - 0x26C0;
                    printf(temp_a0_3, temp_a0_3, arg1->unk8, temp_a2_5);
                    exit(1);
                    break;
                case 1:                             /* switch 3 */
                case 3:                             /* switch 3 */
                    temp_a1_7 = arg1->unk8;
                    if (((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 >= 0) {
                        arg1->unk8 = (s64) ((((s64) ((s64) temp_s5 << 0x30) >> 0x30) * 4) + temp_a1_7 + 4);
                    } else {
                        arg1->unk8 = (s64) (temp_a1_7 + 8);
                    }
                    break;
                case 0:                             /* switch 3 */
                case 2:                             /* switch 3 */
                    temp_a1_8 = arg1->unk8;
                    if (((((s64) (((temp_s5 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 >= 0) {
                        arg1->unk8 = (s64) (temp_a1_8 + 8);
                    } else {
                        arg1->unk8 = (s64) ((((s64) ((s64) temp_s5 << 0x30) >> 0x30) * 4) + temp_a1_8 + 4);
                    }
                    break;
                }
                break;
            }
        } else {
        case 8:                                     /* switch 1 */
        case 9:                                     /* switch 1 */
        case 10:                                    /* switch 1 */
        case 11:                                    /* switch 1 */
        case 12:                                    /* switch 1 */
        case 13:                                    /* switch 1 */
        case 14:                                    /* switch 1 */
        case 15:                                    /* switch 1 */
        case 16:                                    /* switch 1 */
        case 18:                                    /* switch 1 */
        case 19:                                    /* switch 1 */
            temp_a0_4 = &sub_0dbf0000 - 0x2690;
            printf(temp_a0_4, temp_a0_4, arg1->unk8, temp_a2_3);
            exit(1);
        }
    }
}

void disass(u64 arg0, s32 arg1, s32 *arg2, s32 arg5, s32 arg6) {
    u32 sp8;
    u32 sp4;
    u32 sp0;                                        /* compiler-managed */
    s32 *temp_a3_2;
    s32 temp_a1;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s64 temp_a2;
    s64 temp_at;
    s64 var_a4;
    s8 *temp_a0_2;
    s8 *temp_a0_3;
    s8 *temp_a0_4;
    s8 *temp_a0_5;
    s8 *temp_a0_6;
    s8 *temp_a0_7;
    u32 temp_a3;
    u32 temp_t3;
    u8 temp_a0;
    void *temp_a7;
    void *var_a7;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_t3 = ((s64) (arg0 << 0x30) >> 0x30) + ((((s64) (((arg0 >> 0x15) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10;
    if ((temp_t3 >= 0x4000U) && (temp_t3 <= 0x214000U)) {
        var_a4 = 0x70000;
        if ((((u64) (0x4B000 << 0x20) >> 0x20) == temp_t3) || (var_a4 = 0x74008, (((u64) (0x74008 << 0x20) >> 0x20) == temp_t3)) || (((u64) (0x7400C << 0x20) >> 0x20) == temp_t3) || (var_a6 = 0x70000, (((u64) (0x74014 << 0x20) >> 0x20) == temp_t3)) || (var_a6 = 0x74080, var_a5 = 0x70000, (((u64) (0x74080 << 0x20) >> 0x20) == temp_t3)) || (var_a5 = 0x74104, (((u64) (0x74104 << 0x20) >> 0x20) == temp_t3)) || (temp_t3 >= (u64) ((u64) (0x84000 << 0x20) >> 0x20))) {
            var_a7 = &sub_0dbf0000 - 0x24E0;
            temp_a2 = (s64) ((s64) (arg0 >> 0x1A) << 0x30) >> 0x30;
            temp_a3 = temp_a2 - 0x20;
            temp_a3_2 = (temp_a3 * 4) + var_a7;
            if (temp_a3 < 0x1EU) {
                var_a7 = (void *) (arg0 >> 0x10);
                switch (*temp_a3_2) {               /* unable to parse jump table */
                case 8:
                    sp0 = ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 & 0xFF;
                    var_a3 = 0;
block_15:
                    if (temp_t3 == 0x74080) {
                        temp_a0 = __glCurrentContext->unk9274;
                        if (temp_a0 & 4) {
                            if (var_a3 != 2) {
                                __glMgrSimInit((__GLcontext *)1, 1, temp_a2, var_a3, var_a4, var_a5, var_a6, 2);
                                *(u32 *)0x290080 = sp0;
                            } else {
                                __glMgrSimInit((__GLcontext *)1, 1, temp_a2, var_a3, var_a4, var_a5, var_a6, 2);
                                *(void *)0x290080 = sp8;
                                *(void *)0x290080 = sp4;
                            }
                        } else if (temp_a0 & 2) {
                            temp_a1 = (sp0 >> 8) & 0x1FFF;
                            if (var_a3 != 2) {
                                temp_a0_2 = &sub_0dbf0000 - 0x23D0;
                                printf(temp_a0_2, temp_a0_2, temp_a1, sp0, var_a3, var_a4, var_a5, var_a6, 2);
                            } else {
                                temp_a0_3 = &sub_0dbf0000 - 0x2418;
                                printf(temp_a0_3, temp_a0_3, temp_a1, sp8, sp4, var_a4, var_a5, var_a6, 2);
                            }
                        }
                    } else {
                        temp_a0_4 = &sub_0dbf0000 - 0x2448;
                        printf(temp_a0_4, temp_a0_4, temp_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
                    }
                    return;
                case 4:
                    sp0 = 0;
                    var_a3 = 3;
                    var_a7 = (((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1;
                    var_a7->unk10 = 0;
                    goto block_15;
                case 9:
                    sp0 = ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 & 0xFFFF;
                    var_a3 = 0;
                    goto block_15;
                case 10:
                    var_a3 = 0;
                    var_a7 = (void *) ((u64) ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 >> ((u64) ((((temp_t3 & 3) * 8) << 0) << 0x20) >> 0x20));
                    sp0 = var_a7;
                    goto block_15;
                case 11:
                    var_a3 = 0;
                    sp0 = (u32) ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10;
                    goto block_15;
                case 14:
                    var_a3 = 0;
                    sp0 = (u32) (((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 << ((u64) ((((temp_t3 & 3) * 8) << 0) << 0x20) >> 0x20));
                    goto block_15;
                case 25:
                    var_a3 = 1;
                    sp0 = (u32) ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk110;
                    goto block_15;
                case 29:
                    temp_a7 = (((s64) (((s32) var_a7 & 0x1F) << 0x30) >> 0x30) * 8) + arg1;
                    temp_at = temp_a7->unk118;
                    var_a3 = 2;
                    var_a7 = (void *) temp_a7->unk110;
                    sp8 = (u32) temp_at;
                    sp4 = (u32) var_a7;
                    goto block_15;
                case 0:
                    var_a3 = 3;
                    ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 = 0;
                    goto block_15;
                case 3:
                    sp0 = 0;
                    var_a3 = 3;
                    ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk10 = 0;
                    goto block_15;
                case 17:
                    sp0 = 0;
                    var_a3 = 4;
                    ((((s64) (((arg0 >> 0x10) & 0x1F) << 0x30) >> 0x30) * 8) + arg1)->unk110 = 0;
                    goto block_15;
                }
            } else {
            case 1:
            case 2:
            case 5:
            case 6:
            case 7:
            case 12:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 26:
            case 27:
            case 28:
                fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x2468, temp_a2, temp_a3_2, var_a4, var_a5, var_a6, (u32) var_a7);
            }
        } else {
            temp_a0_5 = &sub_0dbf0000 - 0x2628;
            printf(temp_a0_5, temp_a0_5, temp_t3 << 0, 0x74014, 0x7400C, 0x74008, 0x74104, 0x74080, &sub_0dbf0000);
            temp_a0_6 = &sub_0dbf0000 - 0x25E0;
            printf(temp_a0_6, temp_a0_6, 0x4B000, 0x74008, 0x7400C, 0x74014, 0x74080, 0x74104);
            temp_a0_7 = &sub_0dbf0000 - 0x2508;
            printf(temp_a0_7, temp_a0_7, 0x84000);
        }
    } else {
        fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x2658, (s64) temp_t3, arg2);
    }
}

void simIoctl(s32 arg1, s64 arg2) {
    s64 sp18;
    s64 temp_v0;
    s8 temp_v0_2;
    void *temp_a5;
    void *temp_a6;
    void *temp_t0;

    sp18 = arg2;
    temp_v0 = getenv(&sub_0dbf0000 - 0x23A8);
    if (arg1 == 0x66) {
        temp_t0 = saved_reg_gp - 0x3CE0;
        temp_a5 = saved_reg_gp - 0x3CE8;
        temp_a6 = sp18->unk4;
        unksp8 = (s64) temp_a6;
        temp_a6->unk29 = 0;
        temp_a6->unk48 = 0x18;
        temp_a6->unk22 = 0x3FF;
        temp_a6->unk20 = 0x4FF;
        temp_a6->unk14 = (u8) temp_t0->unk4;
        temp_a6->unk10 = (s32) temp_t0->unk0;
        temp_a6->unk4 = (u16) temp_a5->unk4;
        temp_a6->unk0 = (s32) temp_a5->unk0;
        temp_a6->unk24 = 0xCC;
        temp_v0_2 = atoi(temp_v0);
        unksp8->unk22 = 0x400;
        unksp8->unk2D = 1;
        unksp8->unk2C = 1;
        unksp8->unk2B = temp_v0_2;
        unksp8->unk20 = 0x500;
    }
}

void __glMgrSimIoctl(__GLcontext *gc, s64 arg1, s64 arg2, ...) {
    s64 sp8;
    s64 sp0;
    s8 *temp_a0;
    u8 temp_a5;

    temp_a5 = __glCurrentContext->unk9274;
    if (!(temp_a5 & ~0x80) || (temp_a5 & 4)) {
        ioctl((s32) gc, (u32) arg1, gc, arg1, arg1, temp_a5);
        return;
    }
    sp0 = arg1;
    sp8 = arg2;
    temp_a0 = &sub_0dbf0000 - 0x2398;
    printf(temp_a0, temp_a0, temp_a5, arg1, temp_a5);
    __glMgrInitRGB(gc, gc, sp0, arg2);
}

void simOpenGraphics(void *arg0) {
    s64 sp58;
    s32 sp54;
    s32 sp50;
    s32 temp_v0;
    s64 temp_v0_2;
    void *temp_a2;
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x16C448;
    if (arg0->unk9274 & 0x10) {
        temp_v0 = open(&sub_0dbf0000 - 0x2368, 0x802);
        if (temp_v0 < 0) {
            sprintf(sp, &sub_0dbf0000 - 0x2358, &sub_0dbf0000 - 0x2368);
            perror(sp);
            exit(1);
        }
        sp50 = 0;
        sp54 = 0x4000;
        if (ioctl(temp_v0, 0x67U, temp_v0, 0x67, &sp50, 0x4000) == -1) {
            sprintf(sp, &sub_0dbf0000 - 0x2348, &sub_0dbf0000 - 0x2338);
            perror(sp);
            exit(1);
        }
        temp_gp->unk-3434 = 0;
        temp_gp->unk-3438 = -1;
        temp_v0_2 = ioctl(temp_v0, 0x3E8U, temp_v0, 0x3E8, temp_gp - 0x3440 + 8, -1);
        sp58 = temp_v0_2;
        if (temp_v0_2 < 0) {
            perror(&sub_0dbf0000 - 0x2328);
            exit(1);
        }
        temp_gp->unk-3430 = (s32) temp_v0_2;
        if (ioctl(temp_v0, 0x3EAU, temp_v0, 0x3EA, temp_gp - 0x3440 + 0x10) < 0) {
            perror(&sub_0dbf0000 - 0x2318);
            exit(1);
        }
        temp_a2 = &sub_0dc00000 - 0x3520;
        temp_a2->unk4 = 0x12345;
        temp_a2->unk0 = (s32) sp58;
        if (ioctl(temp_v0, 0x3EBU, temp_v0, 0x3EB, temp_a2, sp58, 0x12345) == -1) {
            perror(&sub_0dbf0000 - 0x2300);
            exit(1);
        }
    }
    *(s32 *)0x74080 = 0x500;
}

void simAllocHWContext(void) {
    *(s32 *)0x74080 = 0x600;
}

void simFreeHWContext(void) {

}

void simBindHWContextToWindow(void) {

}

void simPixmapMemory(void) {

}

void __glMgrSimInit(__GLcontext *gc, ...) {
    s64 sp10;
    u8 temp_a2;

    temp_a2 = gc->unk9274;
    if (temp_a2 & 4) {
        signal(0xB, &sub_0da90000 + 0x1604, temp_a2);
        return;
    }
    if (!(temp_a2 & 0x10)) {
        sp10 = (s64) gc;
        signal(0xB, &sub_0da90000 + 0x1604, temp_a2);
    }
    gc->imports.wscx = &sub_0da90000 + 0x2490;
    gc->imports.getDrawablePrivate = &sub_0da90000 + 0x2488;
    gc->imports.fprintf = &sub_0da90000 + 0x2470;
    gc->imports.other = &sub_0da90000 + 0x2498;
    gc->imports.fclose = &sub_0da90000 + 0x2250;
}

void setup(s64 arg1) {
    s64 sp10;
    s64 sp8;
    s64 temp_v0;

    sp10 = arg1;
    temp_v0 = semget(2, 0x3B6);
    sp8 = temp_v0;
    if (temp_v0 >= 0) {
        *sp10 = (s32) temp_v0;
        if ((semctl(temp_v0, 0, 8, (s64) *sp << 0x20, sp10, 0) >= 0) && (semctl(sp8, 1, 8, (s64) *sp << 0x20) >= 0)) {
            return;
        }
        perror(saved_reg_gp - 0x3CD0);
        return;
    }
    perror(saved_reg_gp - 0x3CD8);
}

void cleanup(s64 arg0) {
    if ((arg0 < 0) || ((semctl(arg0, 0, 0xA, 0) >= 0) && (semctl(arg0, 1, 0xA, 0) >= 0))) {
        return;
    }
    perror(saved_reg_gp - 0x3CD0);
}

void clean_IPC(void) {
    void *temp_gp;

    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x16BFEC;
    semctl((s64) temp_gp->unk-3440, 0, 0xA, 0);
    semctl((s64) temp_gp->unk-3440, 1, 0xA, 0);
    kill(temp_gp->unk-343C, 9);
}

void sem_signal(s64 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    void *temp_a1;
    void *temp_a3;

    sp0 = arg0;
    sp8 = arg1;
    temp_a3 = &sub_0dbf0000 + 0x2F18;
    temp_a1 = (arg1 * 6) + temp_a3;
    temp_a1->unk2 = 1;
    if (semop(temp_a1, 1, temp_a3, arg1) >= 0) {
        return;
    }
    perror(saved_reg_gp - 0x3CC8);
    fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x22E8, sp8, semctl(sp0, sp8, 5, 0));
}

void sem_wait(s64 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    void *temp_a1;
    void *temp_a3;

    sp0 = arg0;
    sp8 = arg1;
    temp_a3 = &sub_0dbf0000 + 0x2F18;
    temp_a1 = (arg1 * 6) + temp_a3;
    temp_a1->unk2 = -1;
    if (semop(temp_a1, 1, temp_a3, arg1) >= 0) {
        return;
    }
    perror(saved_reg_gp - 0x3CC8);
    fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x22D0, sp8, semctl(sp0, sp8, 5, 0));
}

void init_externalcontext(void) {
    s64 sp2B0;
    s64 sp2A0;
    ? sp208;
    ? sp8;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a1;
    s8 *temp_a0;

    __glMgrSimInit((__GLcontext *)0x6C433, 0x6C433, sp);
    if (M2C_ERROR(/* Read from unset register $v0 */) >= 0) {
        saved_reg_gp->unk-3440 = sp0;
        temp_v0 = fork();
        var_a1 = temp_v0;
        if (temp_v0 >= 0) {
            if (temp_v0 == 0) {
                sp2B0 = var_a1;
                putenv(&sub_0dbf0000 - 0x2250, var_a1);
                temp_v0_2 = getenv(&sub_0dbf0000 - 0x2238);
                sp2A0 = temp_v0_2;
                if (temp_v0_2 == 0) {
                    sprintf(&sp8, &sub_0dbf0000 - 0x2220, getenv(saved_reg_gp - 0x3CB8));
                    sp2A0 = (s64) &sp8;
                }
                if (stat(&sp8, &sp208) == 0) {
                    temp_a0 = &sub_0dbf0000 - 0x2200;
                    printf(temp_a0, temp_a0, sp2A0, &sp8);
                    execv(sp2A0, 0);
                    var_a1 = sp2B0;
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    saved_reg_gp->unk-343C = (s32) var_a1;
                    atexit(&sub_0da90000 + 0x26AC, (s32) var_a1);
                    return;
                }
                fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x21E8, (s64) &sp8);
                return;
            }
            saved_reg_gp->unk-343C = (s32) var_a1;
            atexit(&sub_0da90000 + 0x26AC, (s32) var_a1);
            return;
        }
        perror(saved_reg_gp - 0x3CC0, var_a1);
        __glMgrSimInit(sp0, sp0);
        fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x2288);
        return;
    }
    fprintf(&__iob + 0x20, &sub_0dbf0000 - 0x22B8);
}

void force_externalcontextswitch(s64 arg0, s32 arg2) {
    s64 sp8;
    s64 sp0;
    __GLcontext *temp_a0_2;
    __GLcontext *temp_a0_3;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a2;
    s64 var_a0;
    s64 var_ra;
    s8 *temp_a0;
    s8 temp_v0;
    s8 var_a5;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a2 = arg2;
    if (__glCurrentContext->unk9278 != 0) {
        return;
    }
    temp_v1 = saved_reg_gp->unk-3428 + 1;
    saved_reg_gp->unk-3428 = temp_v1;
    if (temp_v1 == 1) {
        sp8 = var_a0;
        __glMgrSimInit((__GLcontext *) var_a0, 1);
        temp_v0 = atoi(getenv(&sub_0dbf0000 - 0x21D8));
        var_a5 = temp_v0;
        saved_reg_gp->unk-3420 = (s32) temp_v0;
        var_ra = sp0;
        if (temp_v0 != 0) {
            temp_a0 = &sub_0dbf0000 - 0x21B8;
            printf(temp_a0, temp_a0, temp_v0);
            var_a5 = (s8) saved_reg_gp->unk-3420;
            var_a0 = sp8;
            var_ra = sp0;
        }
        var_a2 = var_a5 & 0xFF;
        saved_reg_gp->unk-3424 = var_a2;
    }
    temp_v0_2 = saved_reg_gp->unk-3424;
    if (var_a0 != 0) {
        var_a2 = saved_reg_gp->unk-3420 & 0x200;
        if (var_a2 != 0) {
            return;
        }
        if (var_a0 != 0) {
            goto block_7;
        }
        goto block_11;
    }
block_11:
    if (saved_reg_gp->unk-3420 & 0x100) {
        return;
    }
block_7:
    if ((temp_v0_2 != 0) && (M2C_TRAP_IF(temp_v0_2 == 0), (((s32) saved_reg_gp->unk-3428 % temp_v0_2) != 0))) {

    } else if (temp_v0_2 != 1) {
        sp0 = var_ra;
        temp_a0_2 = saved_reg_gp->unk-3440;
        __glMgrSimInit(temp_a0_2, temp_a0_2, 0, var_a2);
        temp_a0_3 = saved_reg_gp->unk-3440;
        __glMgrSimInit(temp_a0_3, temp_a0_3, 1);
    }
}
