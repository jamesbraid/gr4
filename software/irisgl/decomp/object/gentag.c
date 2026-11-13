void gl_g_gentag(void) {
    s32 temp_a0;

    if (__GListag(saved_reg_gp->unk-3A24) != 0) {
        do {
            temp_a0 = saved_reg_gp->unk-3A24 + 1;
            saved_reg_gp->unk-3A24 = temp_a0;
        } while (__GListag(temp_a0) != 0);
    }
    saved_reg_gp->unk-3A24 = (s32) (saved_reg_gp->unk-3A24 + 1);
}
