s32 atoi(s8 *);                                     /* extern */
? exit(?, ?);                                       /* extern */
? fflush(void *, ?, s32 *);                         /* extern */
s32 fork();                                         /* extern */
? gettimeofday(void *, ?);                          /* extern */
? signal(?, ?);                                     /* extern */
? sprintf(void *, void *, f64);                     /* extern */
s32 strcmp(s8 *, void *);                           /* extern */
? times(void *);                                    /* extern */
extern ? __iob;
extern s32 dgl_debug;
extern s32 gl_initialized;
extern s32 gl_putinbackground;
extern ? sub_0f030000;
extern ? sub_0f040000;

void gl_util_init(void) {
    if (dgl_debug == 0) {
        if (getenv(&sub_0f030000 - 0x53E8) != NULL) {
            dgl_debug = atoi(getenv(&sub_0f030000 - 0x53E8 + 0x10));
        }
    }
}

void gl_util_nametoi(s8 *arg0) {
    if (strcmp(&sub_0f030000 - 0x53E8 + 0x20, (void *)0xFFF0EA2C) != 0) {
        if (strcmp(arg0, &sub_0f030000 - 0x53E8 + 0x30) != 0) {
            if (strcmp(arg0, (M2C_ERROR(/* Read from unset register $t9 */) + 0xFFF0EA2C) - 0x3838) == 0) {
                return;
            }
            atoi(arg0);
        }
    }
}

void gl_util_background(void) {
    s32 temp_v0;
    s32 var_a3;

    var_a3 = 1;
    if (saved_reg_gp->unk-4D80 != 0) {
        return;
    }
    saved_reg_gp->unk-4D80 = 1;
    if (gl_initialized != 0) {
        goto block_3;
    }
    if (gl_putinbackground != 0) {

    } else {
block_3:
        var_a3 = 0;
    }
    if ((var_a3 != 0) && (__GLismex(&gl_initialized, var_a3) != 0)) {
        gl_initialized = 1;
        fflush(&__iob + 0x10, 1, &gl_initialized);
        fflush(&__iob + 0x20);
        temp_v0 = fork();
        if (temp_v0 != -1) {
            if (temp_v0 != 0) {
                exit(0, -1);
            } else {
                goto block_13;
            }
        } else {
            gl_dgl_perror(saved_reg_gp - 0x3830, -1);
            gl_comm_close(1);
            exit(1);
block_13:
            signal(2, 1);
            signal(3, 1);
            signal(0xF, 0);
            gl_util_timer(0);
        }
    }
}

void gl_util_lowcase(void) {

}

void gl_util_timer(s32 arg0) {
    f64 sp40;
    f64 sp38;
    void *temp_s3;
    void *temp_v1;

    if (arg0 != 0) {
        gettimeofday(saved_reg_gp - 0x4D70, 0);
        times(&sub_0f040000 - 0x6E08 + 0x10);
        temp_v1 = &sub_0f040000 - 0x6E08;
        temp_s3 = &sub_0f030000 - 0x53E8;
        sp40 = (f64) (f32) (second half of f64);
        sp38 = (f64) (f32) ((f64) (f32) (temp_v1->unk10 - temp_v1->unk0) / 100.0);
        __GLgl_dgl_printf(temp_s3 + 0x40, temp_v1->unk4);
        __GLgl_dgl_printf(temp_s3 + 0x58);
        sprintf(sp, temp_s3 + 0x70, (f64) (f32) ((f64) (second half of f64) + (second half of f64)));
        __GLgl_dgl_printf(sp);
        sprintf(sp, temp_s3 + 0x80, (f64) sp38);
        __GLgl_dgl_printf(sp);
        sprintf(sp, temp_s3 + 0x90, (f64) sp40);
        __GLgl_dgl_printf(sp);
        return;
    }
    gettimeofday(saved_reg_gp - 0x4D78, 0);
    times(&sub_0f040000 - 0x6E08);
}

void gl_mbnbytes(s32 arg0, void *arg1) {
    u8 temp_a2;
    u8 temp_a4;
    u8 temp_at;
    u8 temp_at_2;
    u8 temp_v1;
    u8 temp_v1_2;
    u8 var_a4;
    void *var_a1;

    var_a1 = arg1;
    if (var_a1 != NULL) {
loop_4:
        if ((arg0 != 0x11) && (arg0 != 0x101)) {
            if (arg0 == 0x10) {
                temp_v1 = var_a1->unk1;
                temp_at = var_a1->unk0;
                var_a1 += 3;
                var_a4 = var_a1->unk-1 + (temp_at + temp_v1);
                goto block_3;
            }
            switch (arg0) {                         /* irregular */
            default:
                var_a4 = 0;
                goto block_3;
            case 0x0:
                var_a4 = var_a1->unk0;
                var_a1 += 1;
                goto block_3;
            case 0x1:
            case 0x100:
                var_a1 += 2;
                if ((var_a1->unk0 + var_a1->unk1) != 0) {
                    goto loop_4;
                }
                break;
            }
        } else {
            temp_a2 = var_a1->unk1;
            temp_v1_2 = var_a1->unk3;
            temp_at_2 = var_a1->unk2;
            temp_a4 = var_a1->unk0;
            var_a1 += 4;
            var_a4 = temp_a4 + temp_a2 + (temp_at_2 + temp_v1_2);
block_3:
            if (var_a4 != 0) {
                goto loop_4;
            }
        }
    }
}
