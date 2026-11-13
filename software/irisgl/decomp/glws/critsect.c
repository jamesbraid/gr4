? init_lock(s32);                                   /* extern */
? release_lock(s32);                                /* extern */
? spin_lock(s32);                                   /* extern */

void __iglooInitCriticalSection(void) {
    init_lock(saved_reg_gp - 0x5190);
}

void __iglooBeginCriticalSection(void) {
    spin_lock(saved_reg_gp - 0x5190);
}

void __iglooEndCriticalSection(void) {
    release_lock(saved_reg_gp - 0x5190);
}
