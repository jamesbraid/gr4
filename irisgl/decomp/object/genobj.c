void gl_g_genobj(void) {
    s32 temp_a0;

    if (__GLisobj(saved_reg_gp->unk-3A28) != 0) {
        do {
            temp_a0 = saved_reg_gp->unk-3A28 - 1;
            saved_reg_gp->unk-3A28 = temp_a0;
        } while (__GLisobj(temp_a0) != 0);
    }
    saved_reg_gp->unk-3A28 = (s32) (saved_reg_gp->unk-3A28 - 1);
}
