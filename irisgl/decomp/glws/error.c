? abort();                                          /* extern */
? exit(?);                                          /* extern */
? fflush(void *);                                   /* extern */
? fprintf(void *, void *, s32, s32);                /* extern */
extern ? __iob;
extern ? sub_0f020000;

void message(u32 arg0) {
    switch (arg0) {
    default:
    case 0x0:
    case 0x29:
    case 0x2B:
    case 0x64:
    case 0x65:
    case 0x66:
    case 0x6D:
    case 0x70:
    case 0x71:
        return;
    case 0x1:
        return;
    case 0x2:
        return;
    case 0x3:
        return;
    case 0x4:
        return;
    case 0x5:
        return;
    case 0x6:
        return;
    case 0x7:
        return;
    case 0x8:
        return;
    case 0x9:
        return;
    case 0xA:
        return;
    case 0xB:
        return;
    case 0xC:
        return;
    case 0xD:
        return;
    case 0xE:
        return;
    case 0xF:
        return;
    case 0x10:
        return;
    case 0x11:
        return;
    case 0x12:
        return;
    case 0x13:
        return;
    case 0x14:
        return;
    case 0x15:
        return;
    case 0x16:
        return;
    case 0x17:
        return;
    case 0x18:
        return;
    case 0x19:
        return;
    case 0x1A:
        return;
    case 0x1B:
        return;
    case 0x1C:
        return;
    case 0x1D:
        return;
    case 0x1E:
        return;
    case 0x1F:
        return;
    case 0x20:
        return;
    case 0x21:
        return;
    case 0x22:
        return;
    case 0x23:
        return;
    case 0x24:
        return;
    case 0x25:
        return;
    case 0x26:
        return;
    case 0x27:
        return;
    case 0x28:
        return;
    case 0x2A:
        return;
    case 0x2C:
        return;
    case 0x2D:
        return;
    case 0x2E:
        return;
    case 0x2F:
        return;
    case 0x30:
        return;
    case 0x31:
        return;
    case 0x32:
        return;
    case 0x33:
        return;
    case 0x34:
        return;
    case 0x35:
        return;
    case 0x36:
        return;
    case 0x37:
        return;
    case 0x38:
        return;
    case 0x39:
        return;
    case 0x3A:
        return;
    case 0x3B:
        return;
    case 0x3C:
        return;
    case 0x3D:
        return;
    case 0x3E:
        return;
    case 0x3F:
        return;
    case 0x40:
        return;
    case 0x41:
        return;
    case 0x42:
        return;
    case 0x43:
        return;
    case 0x44:
        return;
    case 0x45:
        return;
    case 0x46:
        return;
    case 0x47:
        return;
    case 0x48:
        return;
    case 0x49:
        return;
    case 0x4A:
        return;
    case 0x4B:
        return;
    case 0x4C:
        return;
    case 0x4D:
        return;
    case 0x4E:
        return;
    case 0x4F:
        return;
    case 0x50:
        return;
    case 0x51:
        return;
    case 0x52:
        return;
    case 0x53:
        return;
    case 0x54:
        return;
    case 0x55:
        return;
    case 0x56:
        return;
    case 0x57:
        return;
    case 0x58:
        return;
    case 0x59:
        return;
    case 0x5A:
        return;
    case 0x5B:
        return;
    case 0x5C:
        return;
    case 0x5D:
        return;
    case 0x5E:
        return;
    case 0x5F:
        return;
    case 0x60:
        return;
    case 0x61:
        return;
    case 0x62:
        return;
    case 0x63:
        return;
    case 0x67:
        return;
    case 0x68:
        return;
    case 0x69:
        return;
    case 0x6A:
        return;
    case 0x6B:
        return;
    case 0x6C:
        return;
    case 0x6E:
        return;
    case 0x6F:
        return;
    case 0x72:
        return;
    case 0x73:
        return;
    }
}

void gl_ErrorHandler(s32 arg0, s32 arg1, s64 arg2) {
    s64 sp0;
    ? (*temp_a3)(s32, s32, ?);
    void *temp_a0;

    temp_a3 = saved_reg_gp->unk-514C;
    if (temp_a3 != NULL) {
        temp_a3(arg0, arg1, temp_a3);
    } else {
        if (arg2 != 0) {
            sp0 = arg2;
        } else {
            sp0 = (s64) (saved_reg_gp - 0x4A98);
        }
        __iglooCloneEnables(arg0, (? (*)(s32, s32, ?)) temp_a3);
        temp_a0 = &__iob + 0x20;
        unksp10 = (s64) temp_a0;
        fprintf(temp_a0, &sub_0f020000 + 0x2E20, saved_reg_gp->unk-3AA8, arg0);
        fflush(temp_a0);
        if (arg1 != 1) {
            if (arg1 == 5) {
                abort();
            }
        } else {
            exit(1);
        }
    }
}

void gl_dummy_function(void) {

}
