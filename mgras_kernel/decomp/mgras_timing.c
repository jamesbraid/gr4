void MgrasCalcScreenSize(void *arg0, s16 *arg1, s16 *arg2) {
    M2C_ERROR(/* unknown instruction: cache 0x14, ($sp) */);
    *arg1 = (s16) arg0->unk4;
    *arg2 = (s16) arg0->unk8;
}
