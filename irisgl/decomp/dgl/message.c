? sprintf(void *, void *, s32, s32);                /* extern */
? strcat(void *, s64);                              /* extern */
? vfprintf(s32, s64, s64);                          /* extern */
extern ? __iob;
extern s32 dgl_debug;
extern s32 dgl_errors;
extern s32 errno;
extern ? sub_0f030000;
extern ? sys_errlist;
extern s32 sys_nerr;

void gl_dgl_max(s32 arg0, s64 arg1) {
    if (arg1 >= arg0) {

    }
}

void dgl_init_msgfile(void) {
    if (saved_reg_gp->unk-50FC == 0) {
        gl_dgl_max((s32) (&__iob + 0x20));
        saved_reg_gp->unk-50FC = 1;
    }
}

void dgl_force_msgfile(s32 arg0) {
    if (saved_reg_gp->unk-50F8 != 0) {
        gl_dgl_internal_error(&sub_0f030000 - 0x7060);
    } else {
        saved_reg_gp->unk-50F8 = arg0;
    }
}

void dgl_log_printf(s64 arg0, s64 arg1) {
    s64 sp10;
    s64 sp8;
    s32 temp_a2;

    sp8 = arg0;
    sp10 = arg1;
    gl_dgl_max();
    temp_a2 = saved_reg_gp->unk-50F8;
    if (temp_a2 != 0) {
        gl_dgl_doprnt(sp8, sp10, temp_a2);
    }
}

void gl_dgl_doprnt(s64 arg0, s64 arg1, s32 arg2) {
    vfprintf(arg2, arg0, arg1);
}

void __GLgl_dgl_printf(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 sp14;

    sp20 = arg2;
    sp18 = arg1;
    sp48 = M2C_ERROR(/* Read from unset register $a7 */);
    sp40 = M2C_ERROR(/* Read from unset register $a6 */);
    sp38 = M2C_ERROR(/* Read from unset register $a5 */);
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg3;
    sp14 = arg0;
    gl_dgl_max((s32) &sp18, 6);
}

void gl_dgl_info(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp1058;
    s64 sp1050;
    s64 sp1048;
    s64 sp1040;
    s64 sp1038;
    s64 sp1030;
    s32 sp102C;
    s32 sp1024;
    s64 sp1000;

    sp1058 = M2C_ERROR(/* Read from unset register $a7 */);
    sp1050 = M2C_ERROR(/* Read from unset register $a6 */);
    sp1048 = M2C_ERROR(/* Read from unset register $a5 */);
    sp1040 = M2C_ERROR(/* Read from unset register $a4 */);
    sp1038 = arg3;
    sp1030 = arg2;
    sp1000 = arg1;
    sp102C = (s32) arg1;
    sp1024 = arg0;
    if (dgl_debug < arg0) {
        return;
    }
    sprintf(sp, &sub_0f030000 - 0x7038, saved_reg_gp->unk-3990, arg0);
    strcat(sp, sp1000);
    gl_dgl_max((s32) sp, (s64) &sp1030, 6);
}

void gl_dgl_info_more(s32 arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 sp1C;
    s32 sp14;

    sp48 = M2C_ERROR(/* Read from unset register $a7 */);
    sp40 = M2C_ERROR(/* Read from unset register $a6 */);
    sp38 = M2C_ERROR(/* Read from unset register $a5 */);
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg3;
    sp20 = arg2;
    sp14 = arg0;
    sp1C = arg1;
    if (dgl_debug < arg0) {
        return;
    }
    gl_dgl_max(arg1, (s64) &sp20, 6);
}

void dgl_do_error(s32 arg0, s64 arg1, s64 arg2) {
    s64 sp1010;

    sp1010 = arg2;
    sprintf(sp, &sub_0f030000 - 0x7028, saved_reg_gp->unk-3990, arg0);
    strcat(sp, arg1);
    gl_dgl_max((s32) sp, sp1010, 3);
    dgl_errors += 1;
}

void gl_dgl_error(void *arg0, s32 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 sp1C;
    void *sp14;

    sp20 = arg2;
    sp48 = M2C_ERROR(/* Read from unset register $a7 */);
    sp40 = M2C_ERROR(/* Read from unset register $a6 */);
    sp38 = M2C_ERROR(/* Read from unset register $a5 */);
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg3;
    sp1C = arg1;
    sp14 = arg0;
    gl_dgl_info_more((s32) &sp20);
}

void gl_dgl_internal_error(s32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 sp14;

    sp20 = arg2;
    sp48 = M2C_ERROR(/* Read from unset register $a7 */);
    sp40 = M2C_ERROR(/* Read from unset register $a6 */);
    sp38 = M2C_ERROR(/* Read from unset register $a5 */);
    sp30 = M2C_ERROR(/* Read from unset register $a4 */);
    sp28 = arg3;
    sp18 = arg1;
    sp14 = arg0;
    gl_dgl_info_more((s32) (&sub_0f030000 - 0x7018), arg0, (s64) &sp18);
}

void gl_dgl_perror(void) {
    if ((errno > 0) && (errno < sys_nerr)) {
        gl_dgl_error(saved_reg_gp - 0x3988, *((errno * 4) + &sys_errlist), (s64) &sys_errlist);
    } else {
        gl_dgl_error(&sub_0f030000 - 0x7008, errno);
    }
}
